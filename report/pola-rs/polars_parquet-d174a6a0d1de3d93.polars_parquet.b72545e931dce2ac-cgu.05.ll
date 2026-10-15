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
  %i.op = getelementptr inbounds nuw i8, ptr %2, i64 80, !dbg !35418
  %i.oq = invoke noundef zeroext i1 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow9datatypes5fieldNtB4_5Field21is_pl_pq_empty_struct(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %3)
          to label %bb.b unwind label %.split.thread, !dbg !35419

.thread1605:                                      ; preds = %.thread1611
  br i1 %.sroa.0649.21602, label %.thread1605.thread1721, label %.thread1605.thread, !dbg !35420

.split.thread:                                    ; preds = %bb.ov, %bb.a
  %.sroa.0644.1.ph = phi i8 [ 1, %bb.a ], [ %.sroa.0644.2, %bb.ov ]
  %lpad.thr_comm1902 = landingpad { ptr, i32 }
          cleanup
  br label %.thread1605.thread1721, !dbg !35420

.split:                                           ; preds = %bb.eh, %bb.ef
  %.sroa.0650.1.ph = phi i8 [ %.sroa.0650.14, %bb.eh ], [ 0, %bb.ef ]
  %.sroa.0639.1.ph = phi i8 [ %.sroa.0639.6, %bb.eh ], [ %.sroa.0639.5, %bb.ef ]
  %lpad.thr_comm.split-lp1903 = landingpad { ptr, i32 }
          cleanup
  br label %.thread1605.thread, !dbg !35420

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.oo), !dbg !35421
  %i.or = load i8, ptr %3, align 8, !dbg !35422, !range !1100, !noundef !1032
  %i.os = and i8 %i.or, 62, !dbg !35423
  %switch = icmp eq i8 %i.os, 34, !dbg !35423
  br i1 %switch, label %bb.d, label %bb.c, !dbg !35423

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.oo, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !35424
  br label %bb.e, !dbg !35425

bb.d:                                             ; preds = %bb.b
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !35426
  %i.ot = getelementptr inbounds nuw i8, ptr %i.oo, i64 8, !dbg !35427
  %i.ou = load <2 x i64>, ptr %.sroa.0.0.in, align 8, !dbg !35426
  store <2 x i64> %i.ou, ptr %i.ot, align 8, !dbg !35427
  store i8 33, ptr %i.oo, align 8, !dbg !35427
  br label %bb.e, !dbg !35428

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0644.2 = phi i8 [ 0, %bb.c ], [ 1, %bb.d ], !dbg !35429 ; 52 uses
  %i.ov = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB4_13ArrowDataType10to_storage(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.oo)
          to label %bb.g unwind label %.thread1620, !dbg !35430 ; 7 uses

.thread1620:                                      ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfISxE4fmY1Y_14polars_parquet.exit1528, %.thread1650, %bb.pd, %bb.ya, %bb.qy, %bb.rb, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1502, %bb.wc, %bb.vq, %bb.vo, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfISxE4fmY1Y_14polars_parquet.exit1490, %bb.qe, %bb.qj, %bb.qm, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1498, %bb.dz, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1400, %bb.fw, %bb.ft, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1406, %bb.gn, %bb.gk, %bb.dw, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1429, %bb.ki, %bb.kf, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1437, %bb.kz, %bb.kw, %bb.lq, %bb.ln, %bb.lx, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1459, %bb.nq, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfISxE4fmY1Y_14polars_parquet.exit, %bb.oe, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1468, %bb.oi, %bb.of, %bb.e
  %.sroa.0650.3.ph = phi i8 [ 1, %bb.e ], [ 1, %bb.of ], [ 0, %bb.oi ], [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1468 ], [ 1, %bb.oe ], [ 1, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfISxE4fmY1Y_14polars_parquet.exit ], [ 0, %bb.nq ], [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1459 ], [ 1, %bb.lx ], [ 1, %bb.ln ], [ 0, %bb.lq ], [ 1, %bb.kw ], [ 0, %bb.kz ], [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1437 ], [ 1, %bb.kf ], [ 0, %bb.ki ], [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1429 ], [ 1, %bb.dw ], [ 1, %bb.gk ], [ 0, %bb.gn ], [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1406 ], [ 1, %bb.ft ], [ 0, %bb.fw ], [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1400 ], [ 0, %bb.dz ], [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1498 ], [ 0, %bb.qm ], [ 1, %bb.qj ], [ 1, %bb.qe ], [ 1, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfISxE4fmY1Y_14polars_parquet.exit1490 ], [ 1, %bb.vo ], [ 1, %bb.vq ], [ 1, %bb.wc ], [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1502 ], [ 0, %bb.rb ], [ 1, %bb.qy ], [ 0, %bb.ya ], [ 1, %bb.pd ], [ 1, %.thread1650 ], [ 1, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfISxE4fmY1Y_14polars_parquet.exit1528 ]
  %.sroa.0649.3.ph = phi i1 [ true, %bb.e ], [ false, %bb.of ], [ false, %bb.oi ], [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1468 ], [ true, %bb.oe ], [ true, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfISxE4fmY1Y_14polars_parquet.exit ], [ false, %bb.nq ], [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1459 ], [ true, %bb.lx ], [ false, %bb.ln ], [ false, %bb.lq ], [ false, %bb.kw ], [ false, %bb.kz ], [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1437 ], [ false, %bb.kf ], [ false, %bb.ki ], [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1429 ], [ false, %bb.dw ], [ false, %bb.gk ], [ false, %bb.gn ], [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1406 ], [ false, %bb.ft ], [ false, %bb.fw ], [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1400 ], [ false, %bb.dz ], [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1498 ], [ false, %bb.qm ], [ false, %bb.qj ], [ true, %bb.qe ], [ true, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfISxE4fmY1Y_14polars_parquet.exit1490 ], [ true, %bb.vo ], [ true, %bb.vq ], [ true, %bb.wc ], [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1502 ], [ false, %bb.rb ], [ false, %bb.qy ], [ false, %bb.ya ], [ true, %bb.pd ], [ true, %.thread1650 ], [ true, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfISxE4fmY1Y_14polars_parquet.exit1528 ]
  %.sroa.0639.3.ph = phi i8 [ 1, %bb.e ], [ 1, %bb.of ], [ 1, %bb.oi ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1468 ], [ 1, %bb.oe ], [ 1, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfISxE4fmY1Y_14polars_parquet.exit ], [ 1, %bb.nq ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1459 ], [ 1, %bb.lx ], [ 1, %bb.ln ], [ 1, %bb.lq ], [ 1, %bb.kw ], [ 1, %bb.kz ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1437 ], [ 1, %bb.kf ], [ 1, %bb.ki ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1429 ], [ 1, %bb.dw ], [ 1, %bb.gk ], [ 1, %bb.gn ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1406 ], [ 1, %bb.ft ], [ 1, %bb.fw ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1400 ], [ 1, %bb.dz ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1498 ], [ 1, %bb.qm ], [ 1, %bb.qj ], [ 1, %bb.qe ], [ 1, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfISxE4fmY1Y_14polars_parquet.exit1490 ], [ 1, %bb.vo ], [ 1, %bb.vq ], [ 0, %bb.wc ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1502 ], [ 1, %bb.rb ], [ 1, %bb.qy ], [ 0, %bb.ya ], [ 1, %bb.pd ], [ 1, %.thread1650 ], [ 1, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfISxE4fmY1Y_14polars_parquet.exit1528 ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread1611, !dbg !35431

bb.f:                                             ; preds = %bb.r, %bb.u, %bb.ad, %bb.ag, %bb.as, %bb.bh, %bb.bv, %bb.cj, %bb.da, %bb.dl, %bb.er, %bb.ji, %bb.jr, %bb.mb, %bb.me, %bb.mu, %bb.nf, %bb.pm, %bb.pv, %bb.sb, %bb.sm, %bb.ta, %bb.to, %bb.tv, %bb.ty, %bb.uh, %bb.ut, %bb.vg, %bb.wx, %bb.xg, %bb.xp, %bb.hp, %bb.ib, %bb.ig, %bb.il, %bb.iq, %bb.iv, %bb.ja
  %.sroa.0650.3.ph1618 = phi i8 [ 0, %bb.bv ], [ 0, %bb.mu ], [ 0, %bb.da ], [ 0, %bb.ji ], [ 0, %bb.as ], [ 0, %bb.pm ], [ 0, %bb.cj ], [ 0, %bb.er ], [ 0, %bb.ig ], [ 0, %bb.vg ], [ 1, %bb.mb ], [ 0, %bb.ut ], [ 0, %bb.ag ], [ 0, %bb.uh ], [ 1, %bb.ad ], [ 1, %bb.tv ], [ 0, %bb.ty ], [ 0, %bb.me ], [ 0, %bb.to ], [ 0, %bb.u ], [ 0, %bb.ta ], [ 0, %bb.ja ], [ 0, %bb.sm ], [ 0, %bb.jr ], [ 0, %bb.sb ], [ 0, %bb.il ], [ 0, %bb.dl ], [ 0, %bb.pv ], [ 0, %bb.iq ], [ 0, %bb.xp ], [ 0, %bb.bh ], [ 0, %bb.xg ], [ 0, %bb.ib ], [ 0, %bb.wx ], [ 1, %bb.r ], [ 0, %bb.nf ], [ 0, %bb.hp ], [ 0, %bb.iv ]
  %.sroa.0639.3.ph1619 = phi i8 [ 1, %bb.bv ], [ 1, %bb.mu ], [ 1, %bb.da ], [ 1, %bb.ji ], [ 1, %bb.as ], [ 1, %bb.pm ], [ 1, %bb.cj ], [ 1, %bb.er ], [ 1, %bb.ig ], [ 1, %bb.vg ], [ 1, %bb.mb ], [ 1, %bb.ut ], [ 1, %bb.ag ], [ 1, %bb.uh ], [ 1, %bb.ad ], [ 1, %bb.tv ], [ 1, %bb.ty ], [ 1, %bb.me ], [ 1, %bb.to ], [ 1, %bb.u ], [ 1, %bb.ta ], [ 1, %bb.ja ], [ 1, %bb.sm ], [ 1, %bb.jr ], [ 1, %bb.sb ], [ 1, %bb.il ], [ 1, %bb.dl ], [ 1, %bb.pv ], [ 1, %bb.iq ], [ 0, %bb.xp ], [ 1, %bb.bh ], [ 0, %bb.xg ], [ 1, %bb.ib ], [ 0, %bb.wx ], [ 1, %bb.r ], [ 1, %bb.nf ], [ 1, %bb.hp ], [ 1, %bb.iv ]
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread1605.thread, !dbg !35431

bb.g:                                             ; preds = %bb.e
  %i.ow = load i8, ptr %i.ov, align 8, !dbg !35432, !range !1100, !noundef !1032 ; 9 uses
  switch i8 %i.ow, label %.thread-pre-split_crit_edge [
    i8 0, label %bb.h
    i8 1, label %bb.k
    i8 2, label %bb.l
    i8 3, label %bb.m
    i8 7, label %bb.n
    i8 8, label %bb.o
    i8 9, label %bb.p
    i8 30, label %bb.q
  ], !dbg !35433

.thread-pre-split_crit_edge:                      ; preds = %bb.g
  %.pr.pre = load i64, ptr %2, align 8, !dbg !35432
  br label %thread-pre-split, !dbg !35433

thread-pre-split:                                 ; preds = %.thread-pre-split_crit_edge, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  %6 = phi i64 [ %i.ph, %bb.k ], [ %i.ps, %bb.q ], [ %i.pr, %bb.p ], [ %i.pp, %bb.o ], [ %i.pn, %bb.n ], [ %i.pl, %bb.m ], [ %i.pj, %bb.l ], [ %.pr.pre, %.thread-pre-split_crit_edge ], !dbg !35432 ; 11 uses
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !35432 ; 10 uses
  %i.ox = icmp eq i64 %6, 1, !dbg !35433
  br i1 %i.ox, label %bb.ei, label %bb.ej, !dbg !35433

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6), !dbg !34602
  call void @llvm.lifetime.start.p0(ptr nonnull %i.on), !dbg !34602
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.69), !dbg !34602
  call void @llvm.lifetime.start.p0(ptr nonnull %i.om), !dbg !34602
  %i.oy = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !35434 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %3, i64 55, !dbg !35435
  %i.pa = load i8, ptr %i.oz, align 1, !dbg !35435, !range !1108, !alias.scope !34601, !noundef !1032 ; 2 uses
  %i.pb = icmp ugt i8 %i.pa, -41, !dbg !35436
  br i1 %i.pb, label %bb.j, label %bb.i, !dbg !35436

bb.i:                                             ; preds = %bb.h
  %i.pc = add i8 %i.pa, 64, !dbg !35437
  %i.pd = call i8 @llvm.umin.i8(i8 %i.pc, i8 24), !dbg !35438
  %.sroa.0.0.i.i = zext nneg i8 %i.pd to i64, !dbg !35438
  br label %bb.r, !dbg !35439

bb.j:                                             ; preds = %bb.h
  %i.pe = load ptr, ptr %i.oy, align 8, !dbg !35440, !alias.scope !34601, !noundef !1032
  %i.pf = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !35441
  %i.pg = load i64, ptr %i.pf, align 8, !dbg !35441, !alias.scope !34601, !noundef !1032
  br label %bb.r, !dbg !35442

bb.k:                                             ; preds = %bb.g
  %i.ph = load i64, ptr %2, align 8, !dbg !35432, !range !1574, !noundef !1032 ; 2 uses
  %i.pi = icmp eq i64 %i.ph, 0, !dbg !35433
  br i1 %i.pi, label %bb.aa, label %thread-pre-split, !dbg !35433

bb.l:                                             ; preds = %bb.g
  %i.pj = load i64, ptr %2, align 8, !dbg !35432, !range !1574, !noundef !1032 ; 2 uses
  %i.pk = icmp eq i64 %i.pj, 1, !dbg !35433
  br i1 %i.pk, label %bb.al, label %thread-pre-split, !dbg !35433

bb.m:                                             ; preds = %bb.g
  %i.pl = load i64, ptr %2, align 8, !dbg !35432, !range !1574, !noundef !1032 ; 2 uses
  %i.pm = icmp eq i64 %i.pl, 1, !dbg !35433
  br i1 %i.pm, label %bb.ba, label %thread-pre-split, !dbg !35433

bb.n:                                             ; preds = %bb.g
  %i.pn = load i64, ptr %2, align 8, !dbg !35432, !range !1574, !noundef !1032 ; 2 uses
  %i.po = icmp eq i64 %i.pn, 1, !dbg !35433
  br i1 %i.po, label %bb.bo, label %thread-pre-split, !dbg !35433

bb.o:                                             ; preds = %bb.g
  %i.pp = load i64, ptr %2, align 8, !dbg !35432, !range !1574, !noundef !1032 ; 2 uses
  %i.pq = icmp eq i64 %i.pp, 1, !dbg !35433
  br i1 %i.pq, label %bb.cc, label %thread-pre-split, !dbg !35433

bb.p:                                             ; preds = %bb.g
  %i.pr = load i64, ptr %2, align 8, !dbg !35432, !range !1574, !noundef !1032 ; 2 uses
  switch i64 %i.pr, label %thread-pre-split [
    i64 1, label %bb.cq
    i64 2, label %bb.ct
  ], !dbg !35433

bb.q:                                             ; preds = %bb.g
  %i.ps = load i64, ptr %2, align 8, !dbg !35432, !range !1574, !noundef !1032 ; 2 uses
  %i.pt = icmp eq i64 %i.ps, 0, !dbg !35433
  br i1 %i.pt, label %bb.ds, label %thread-pre-split, !dbg !35433

bb.r:                                             ; preds = %bb.j, %bb.i
  %.sroa.01.0.i = phi i64 [ %i.pg, %bb.j ], [ %.sroa.0.0.i.i, %bb.i ], !dbg !35443
  %.sroa.0.0.i = phi ptr [ %i.pe, %bb.j ], [ %i.oy, %bb.i ], !dbg !35444
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ol), !dbg !35445
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.ol, ptr noundef nonnull align 8 dereferenceable(232) %1, i64 232, i1 false), !dbg !35445
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ok), !dbg !35446
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ok, ptr noundef nonnull align 8 dereferenceable(32) %i.oo, i64 32, i1 false), !dbg !35446
  call void @llvm.lifetime.start.p0(ptr nonnull %i.oj), !dbg !35447
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.oj, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !dbg !35447
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderNtNtB7_4null11NullDecoderE3newBd_(ptr noalias noundef nonnull sret([368 x i8]) align 8 captures(none) dereferenceable(368) %i.om, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.01.0.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(232) %i.ol, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ok, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.oj)
          to label %bb.s unwind label %bb.f, !dbg !34602

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.oj), !dbg !35448
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ok), !dbg !35448
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ol), !dbg !35448
  %i.pu = load i64, ptr %i.om, align 8, !dbg !35449, !range !1573, !noundef !1032 ; 2 uses
  %i.pv = icmp eq i64 %i.pu, 8, !dbg !35449
  %i.pw = getelementptr inbounds nuw i8, ptr %i.om, i64 8, !dbg !35450
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.69, ptr noundef nonnull align 8 dereferenceable(32) %i.pw, i64 32, i1 false), !dbg !35450
  br i1 %i.pv, label %bb.t, label %bb.u, !dbg !35451

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.om), !dbg !35452
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !35453
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.px, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.69, i64 32, i1 false), !dbg !35452
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !35453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.on), !dbg !35454
  br label %bb.z, !dbg !35455

bb.u:                                             ; preds = %bb.s
  %.sroa.6710.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.om, i64 40, !dbg !35456
  %.sroa.811.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.oi, i64 40, !dbg !34602
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %.sroa.811.0..sroa_idx12, ptr noundef nonnull align 8 dereferenceable(328) %.sroa.6710.0..sroa_idx, i64 328, i1 false), !dbg !35456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.om), !dbg !35452
  store i64 %i.pu, ptr %i.oi, align 8, !dbg !34602
  %.sroa.69.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.oi, i64 8, !dbg !34602
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.69.0..sroa_idx10, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.69, i64 32, i1 false), !dbg !34602
  call void @llvm.lifetime.start.p0(ptr nonnull %i.oh), !dbg !35457
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.oh, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !dbg !35457
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderNtNtB7_4null11NullDecoderE13collect_boxedBd_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.on, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(368) %i.oi, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.oh)
          to label %bb.v unwind label %bb.f, !dbg !35458

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.oh), !dbg !35459
  %i.py = load i64, ptr %i.on, align 8, !dbg !35460, !range !1034, !noundef !1032 ; 2 uses
  %i.pz = icmp eq i64 %i.py, -9223372036854775808, !dbg !35460
  %i.qa = getelementptr inbounds nuw i8, ptr %i.on, i64 8, !dbg !35461
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %i.qa, i64 32, i1 false), !dbg !35461
  br i1 %i.pz, label %bb.w, label %bb.x, !dbg !35462

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.on), !dbg !35454
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !35463
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.qb, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false), !dbg !35454
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !35463
  br label %bb.z, !dbg !35454

bb.x:                                             ; preds = %bb.v
  %.sroa.6713.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.on, i64 40, !dbg !35464
  %.sroa.40.40..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.40, i64 32, !dbg !34602
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.40.40..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6713.0..sroa_idx, i64 40, i1 false), !dbg !35464
  call void @llvm.lifetime.end.p0(ptr nonnull %i.on), !dbg !35454
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.40, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false), !dbg !34602
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.69), !dbg !35454
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !35454
  br label %bb.y, !dbg !35454

bb.y:                                             ; preds = %bb.xa, %bb.xj, %bb.xs, %bb.vj, %bb.uw, %bb.uk, %bb.ub, %bb.tr, %bb.td, %bb.sp, %bb.se, %bb.py, %bb.pp, %bb.ni, %bb.mx, %bb.mh, %bb.ju, %bb.jl, %bb.eu, %bb.do, %bb.dd, %bb.cm, %bb.by, %bb.bk, %bb.av, %bb.aj, %bb.x
  %.sroa.0639.4 = phi i8 [ 0, %bb.xa ], [ 0, %bb.xj ], [ 0, %bb.xs ], [ 1, %bb.se ], [ 1, %bb.sp ], [ 1, %bb.td ], [ 1, %bb.tr ], [ 1, %bb.ub ], [ 1, %bb.uk ], [ 1, %bb.uw ], [ 1, %bb.vj ], [ 1, %bb.eu ], [ 1, %bb.jl ], [ 1, %bb.mx ], [ 1, %bb.pp ], [ 1, %bb.ju ], [ 1, %bb.mh ], [ 1, %bb.ni ], [ 1, %bb.py ], [ 1, %bb.x ], [ 1, %bb.aj ], [ 1, %bb.av ], [ 1, %bb.bk ], [ 1, %bb.by ], [ 1, %bb.cm ], [ 1, %bb.dd ], [ 1, %bb.do ], !dbg !35429
  %.sroa.0521.0 = phi i64 [ %i.awr, %bb.xa ], [ %i.axc, %bb.xj ], [ %i.axn, %bb.xs ], [ %i.apm, %bb.se ], [ %i.apw, %bb.sp ], [ %i.aqp, %bb.td ], [ %i.ari, %bb.tr ], [ %i.arr, %bb.ub ], [ %i.asb, %bb.uk ], [ %i.asv, %bb.uw ], [ %i.atp, %bb.vj ], [ %i.wr, %bb.eu ], [ %i.acx, %bb.jl ], [ %i.aih, %bb.mx ], [ %i.aly, %bb.pp ], [ %i.adg, %bb.ju ], [ %i.ahe, %bb.mh ], [ %i.air, %bb.ni ], [ %i.amh, %bb.py ], [ %i.py, %bb.x ], [ %i.qp, %bb.aj ], [ %i.rh, %bb.av ], [ %i.sb, %bb.bk ], [ %i.su, %bb.by ], [ %i.tn, %bb.cm ], [ %i.up, %bb.dd ], [ %i.uz, %bb.do ], !dbg !35465
  store i64 %.sroa.0521.0, ptr %0, align 8, !dbg !35466
  %.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !35466
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.40.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.40, i64 72, i1 false), !dbg !35466
  br label %bb.xt, !dbg !35431

bb.z:                                             ; preds = %bb.w, %bb.t
  %.sroa.0650.4 = phi i8 [ 1, %bb.t ], [ 0, %bb.w ], !dbg !35429
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.69), !dbg !35454
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !35454
  br label %bb.yu, !dbg !35455

bb.aa:                                            ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.627), !dbg !34618
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nv), !dbg !34618
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.633), !dbg !34618
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nu), !dbg !34618
  %i.qc = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !35467 ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %3, i64 55, !dbg !35468
  %i.qe = load i8, ptr %i.qd, align 1, !dbg !35468, !range !1108, !alias.scope !34617, !noundef !1032 ; 2 uses
  %i.qf = icmp ugt i8 %i.qe, -41, !dbg !35469
  br i1 %i.qf, label %bb.ac, label %bb.ab, !dbg !35469

bb.ab:                                            ; preds = %bb.aa
  %i.qg = add i8 %i.qe, 64, !dbg !35470
  %i.qh = call i8 @llvm.umin.i8(i8 %i.qg, i8 24), !dbg !35471
  %.sroa.0.0.i.i1347 = zext nneg i8 %i.qh to i64, !dbg !35471
  br label %bb.ad, !dbg !35472

bb.ac:                                            ; preds = %bb.aa
  %i.qi = load ptr, ptr %i.qc, align 8, !dbg !35473, !alias.scope !34617, !noundef !1032
  %i.qj = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !35474
  %i.qk = load i64, ptr %i.qj, align 8, !dbg !35474, !alias.scope !34617, !noundef !1032
  br label %bb.ad, !dbg !35475

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.sroa.01.0.i1348 = phi i64 [ %i.qk, %bb.ac ], [ %.sroa.0.0.i.i1347, %bb.ab ], !dbg !35476
  %.sroa.0.0.i1349 = phi ptr [ %i.qi, %bb.ac ], [ %i.qc, %bb.ab ], !dbg !35477
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nt), !dbg !35478
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.nt, ptr noundef nonnull align 8 dereferenceable(232) %1, i64 232, i1 false), !dbg !35478
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ns), !dbg !35479
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ns, ptr noundef nonnull align 8 dereferenceable(32) %i.oo, i64 32, i1 false), !dbg !35479
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nr), !dbg !35480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.nr, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !dbg !35480
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderNtNtB7_7boolean14BooleanDecoderE3newBd_(ptr noalias noundef nonnull sret([392 x i8]) align 8 captures(none) dereferenceable(392) %i.nu, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i1349, i64 noundef %.sroa.01.0.i1348, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(232) %i.nt, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ns, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.nr)
          to label %bb.ae unwind label %bb.f, !dbg !34618

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nr), !dbg !35481
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ns), !dbg !35481
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nt), !dbg !35481
  %i.ql = load i64, ptr %i.nu, align 8, !dbg !35482, !range !1573, !noundef !1032 ; 2 uses
  %i.qm = icmp eq i64 %i.ql, 8, !dbg !35482
  %i.qn = getelementptr inbounds nuw i8, ptr %i.nu, i64 8, !dbg !35483
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.633, ptr noundef nonnull align 8 dereferenceable(32) %i.qn, i64 32, i1 false), !dbg !35483
  br i1 %i.qm, label %bb.af, label %bb.ag, !dbg !35484

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nu), !dbg !35485
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !35486
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.qo, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.633, i64 32, i1 false), !dbg !35485
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !35486
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nv), !dbg !35487
  br label %bb.ak, !dbg !35455

bb.ag:                                            ; preds = %bb.ae
  %.sroa.6722.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nu, i64 40, !dbg !35488
  %.sroa.835.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %i.nq, i64 40, !dbg !34618
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %.sroa.835.0..sroa_idx36, ptr noundef nonnull align 8 dereferenceable(352) %.sroa.6722.0..sroa_idx, i64 352, i1 false), !dbg !35488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nu), !dbg !35485
  store i64 %i.ql, ptr %i.nq, align 8, !dbg !34618
  %.sroa.633.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %i.nq, i64 8, !dbg !34618
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.633.0..sroa_idx34, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.633, i64 32, i1 false), !dbg !34618
  call void @llvm.lifetime.start.p0(ptr nonnull %i.np), !dbg !35489
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.np, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !dbg !35489
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderNtNtB7_7boolean14BooleanDecoderE13collect_boxedBd_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.nv, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(392) %i.nq, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.np)
          to label %bb.ah unwind label %bb.f, !dbg !35490

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.np), !dbg !35491
  %i.qp = load i64, ptr %i.nv, align 8, !dbg !35492, !range !1034, !noundef !1032 ; 2 uses
  %i.qq = icmp eq i64 %i.qp, -9223372036854775808, !dbg !35492
  %i.qr = getelementptr inbounds nuw i8, ptr %i.nv, i64 8, !dbg !35493
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.627, ptr noundef nonnull align 8 dereferenceable(32) %i.qr, i64 32, i1 false), !dbg !35493
  br i1 %i.qq, label %bb.ai, label %bb.aj, !dbg !35494

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nv), !dbg !35487
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !35495
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.qs, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.627, i64 32, i1 false), !dbg !35487
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !35495
  br label %bb.ak, !dbg !35487

bb.aj:                                            ; preds = %bb.ah
  %.sroa.6725.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nv, i64 40, !dbg !35496
  %.sroa.40.40..sroa_idx556 = getelementptr inbounds nuw i8, ptr %.sroa.40, i64 32, !dbg !34618
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.40.40..sroa_idx556, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6725.0..sroa_idx, i64 40, i1 false), !dbg !35496
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nv), !dbg !35487
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.40, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.627, i64 32, i1 false), !dbg !34618
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.633), !dbg !35487
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.627), !dbg !35487
  br label %bb.y, !dbg !35487

bb.ak:                                            ; preds = %bb.ai, %bb.af
  %.sroa.0650.5 = phi i8 [ 1, %bb.af ], [ 0, %bb.ai ], !dbg !35429
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.633), !dbg !35487
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.627), !dbg !35487
  br label %bb.yu, !dbg !35455

bb.al:                                            ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.687), !dbg !34632
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mi), !dbg !34632
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.693), !dbg !34632
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mh), !dbg !34632
  %i.qt = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !35497 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %3, i64 55, !dbg !35498
  %i.qv = load i8, ptr %i.qu, align 1, !dbg !35498, !range !1108, !alias.scope !34631, !noundef !1032 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize6simple18page_iter_to_array:bb.a
  %i.uj = load i64, ptr %i.ui, align 8, !dbg !35638, !alias.scope !34695, !noundef !1032
  br label %bb.dh, !dbg !35639

bb.cw:                                            ; preds = %bb.cs, %bb.cr
  %.sroa.01.0.i1368 = phi i64 [ %i.ua, %bb.cs ], [ %.sroa.0.0.i.i1367, %bb.cr ], !dbg !35640
  %.sroa.0.0.i1369 = phi ptr [ %i.ty, %bb.cs ], [ %i.ts, %bb.cr ], !dbg !35641
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mw), !dbg !35642
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.mw, ptr noundef nonnull align 8 dereferenceable(232) %1, i64 232, i1 false), !dbg !35642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mv), !dbg !35643
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.mv, ptr noundef nonnull align 8 dereferenceable(32) %i.oo, i64 32, i1 false), !dbg !35643
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mu), !dbg !35644
  invoke void @_RNvMs1_NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize9primitive7integerINtB5_10IntDecoderlmINtB7_17AsDecoderFunctionlmEE7cast_asBf_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.mu)
          to label %bb.cx unwind label %bb.df, !dbg !35644

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mt), !dbg !35645
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mt, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !dbg !35645
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderINtNtNtB7_9primitive7integer10IntDecoderlmINtB1z_17AsDecoderFunctionlmEEE3newBd_(ptr noalias noundef nonnull sret([408 x i8]) align 8 captures(none) dereferenceable(408) %i.mx, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i1369, i64 noundef %.sroa.01.0.i1368, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(232) %i.mw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.mv, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.mu, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.mt)
          to label %bb.cy unwind label %.thread1638, !dbg !34696

.thread1638:                                      ; preds = %bb.cx
  %i.uk = landingpad { ptr, i32 }
          cleanup
  br label %.thread1695, !dbg !35646

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mt), !dbg !35646
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mu), !dbg !35646
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mv), !dbg !35646
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mw), !dbg !35646
  %i.ul = load i64, ptr %i.mx, align 8, !dbg !35647, !range !1573, !noundef !1032 ; 2 uses
  %i.um = icmp eq i64 %i.ul, 8, !dbg !35647
  %i.un = getelementptr inbounds nuw i8, ptr %i.mx, i64 8, !dbg !35648
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.669, ptr noundef nonnull align 8 dereferenceable(32) %i.un, i64 32, i1 false), !dbg !35648
  br i1 %i.um, label %bb.cz, label %bb.da, !dbg !35649

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mx), !dbg !35650
  %i.uo = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !35651
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.uo, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.669, i64 32, i1 false), !dbg !35650
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !35651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.my), !dbg !35652
  br label %bb.de, !dbg !35455

bb.da:                                            ; preds = %bb.cy
  %.sroa.6740.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mx, i64 40, !dbg !35653
  %.sroa.871.0..sroa_idx72 = getelementptr inbounds nuw i8, ptr %i.ms, i64 40, !dbg !34696
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %.sroa.871.0..sroa_idx72, ptr noundef nonnull align 8 dereferenceable(368) %.sroa.6740.0..sroa_idx, i64 368, i1 false), !dbg !35653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mx), !dbg !35650
  store i64 %i.ul, ptr %i.ms, align 8, !dbg !34696
  %.sroa.669.0..sroa_idx70 = getelementptr inbounds nuw i8, ptr %i.ms, i64 8, !dbg !34696
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.669.0..sroa_idx70, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.669, i64 32, i1 false), !dbg !34696
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mr), !dbg !35654
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.mr, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !dbg !35654
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderINtNtNtB7_9primitive7integer10IntDecoderlmINtB1z_17AsDecoderFunctionlmEEE13collect_boxedBd_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.my, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(408) %i.ms, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.mr)
          to label %bb.db unwind label %bb.f, !dbg !35655

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mr), !dbg !35656
  %i.up = load i64, ptr %i.my, align 8, !dbg !35657, !range !1034, !noundef !1032 ; 2 uses
  %i.uq = icmp eq i64 %i.up, -9223372036854775808, !dbg !35657
  %i.ur = getelementptr inbounds nuw i8, ptr %i.my, i64 8, !dbg !35658
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.663, ptr noundef nonnull align 8 dereferenceable(32) %i.ur, i64 32, i1 false), !dbg !35658
  br i1 %i.uq, label %bb.dc, label %bb.dd, !dbg !35659

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.my), !dbg !35652
  %i.us = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !35660
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.us, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.663, i64 32, i1 false), !dbg !35652
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !35660
  br label %bb.de, !dbg !35652

bb.dd:                                            ; preds = %bb.db
  %.sroa.6743.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.my, i64 40, !dbg !35661
  %.sroa.40.40..sroa_idx559 = getelementptr inbounds nuw i8, ptr %.sroa.40, i64 32, !dbg !34696
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.40.40..sroa_idx559, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6743.0..sroa_idx, i64 40, i1 false), !dbg !35661
  call void @llvm.lifetime.end.p0(ptr nonnull %i.my), !dbg !35652
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.40, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.663, i64 32, i1 false), !dbg !34696
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.669), !dbg !35652
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.663), !dbg !35652
  br label %bb.y, !dbg !35652

bb.de:                                            ; preds = %bb.dc, %bb.cz
  %.sroa.0650.10 = phi i8 [ 1, %bb.cz ], [ 0, %bb.dc ], !dbg !35429
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.669), !dbg !35652
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.663), !dbg !35652
  br label %bb.yu, !dbg !35455

bb.df:                                            ; preds = %bb.cw
  %i.ut = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(32) %i.mv) #39
          to label %bb.dg unwind label %bb.ay, !dbg !35646

bb.dg:                                            ; preds = %bb.df
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4read11compression17BasicDecompressorEBO_(ptr noalias noundef align 8 dereferenceable(232) %i.mw) #39
          to label %.thread1605.thread1721 unwind label %bb.ay, !dbg !35646

bb.dh:                                            ; preds = %bb.cv, %bb.cu
  %.sroa.01.0.i1372 = phi i64 [ %i.uj, %bb.cv ], [ %.sroa.0.0.i.i1371, %bb.cu ], !dbg !35662
  %.sroa.0.0.i1373 = phi ptr [ %i.uh, %bb.cv ], [ %i.ub, %bb.cu ], !dbg !35663
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mo), !dbg !35664
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.mo, ptr noundef nonnull align 8 dereferenceable(232) %1, i64 232, i1 false), !dbg !35664
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mn), !dbg !35665
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.mn, ptr noundef nonnull align 8 dereferenceable(32) %i.oo, i64 32, i1 false), !dbg !35665
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mm), !dbg !35666
  invoke void @_RNvMs1_NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize9primitive7integerINtB5_10IntDecoderxmINtB7_17AsDecoderFunctionxmEE7cast_asBf_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.mm)
          to label %bb.di unwind label %bb.dq, !dbg !35666

bb.di:                                            ; preds = %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ml), !dbg !35667
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ml, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !dbg !35667
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderINtNtNtB7_9primitive7integer10IntDecoderxmINtB1z_17AsDecoderFunctionxmEEE3newBd_(ptr noalias noundef nonnull sret([408 x i8]) align 8 captures(none) dereferenceable(408) %i.mp, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i1373, i64 noundef %.sroa.01.0.i1372, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(232) %i.mo, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.mn, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.mm, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ml)
          to label %bb.dj unwind label %.thread1641, !dbg !34702

.thread1641:                                      ; preds = %bb.di
  %i.uu = landingpad { ptr, i32 }
          cleanup
  br label %.thread1695, !dbg !35668

bb.dj:                                            ; preds = %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ml), !dbg !35668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mm), !dbg !35668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mn), !dbg !35668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mo), !dbg !35668
  %i.uv = load i64, ptr %i.mp, align 8, !dbg !35669, !range !1573, !noundef !1032 ; 2 uses
  %i.uw = icmp eq i64 %i.uv, 8, !dbg !35669
  %i.ux = getelementptr inbounds nuw i8, ptr %i.mp, i64 8, !dbg !35670
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.681, ptr noundef nonnull align 8 dereferenceable(32) %i.ux, i64 32, i1 false), !dbg !35670
  br i1 %i.uw, label %bb.dk, label %bb.dl, !dbg !35671

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mp), !dbg !35672
  %i.uy = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !35673
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.uy, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.681, i64 32, i1 false), !dbg !35672
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !35673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mq), !dbg !35674
  br label %bb.dp, !dbg !35455

bb.dl:                                            ; preds = %bb.dj
  %.sroa.6746.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mp, i64 40, !dbg !35675
  %.sroa.883.0..sroa_idx84 = getelementptr inbounds nuw i8, ptr %i.mk, i64 40, !dbg !34702
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %.sroa.883.0..sroa_idx84, ptr noundef nonnull align 8 dereferenceable(368) %.sroa.6746.0..sroa_idx, i64 368, i1 false), !dbg !35675
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mp), !dbg !35672
  store i64 %i.uv, ptr %i.mk, align 8, !dbg !34702
  %.sroa.681.0..sroa_idx82 = getelementptr inbounds nuw i8, ptr %i.mk, i64 8, !dbg !34702
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.681.0..sroa_idx82, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.681, i64 32, i1 false), !dbg !34702
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mj), !dbg !35676
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.mj, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !dbg !35676
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderINtNtNtB7_9primitive7integer10IntDecoderxmINtB1z_17AsDecoderFunctionxmEEE13collect_boxedBd_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.mq, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(408) %i.mk, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.mj)
          to label %bb.dm unwind label %bb.f, !dbg !35677

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mj), !dbg !35678
  %i.uz = load i64, ptr %i.mq, align 8, !dbg !35679, !range !1034, !noundef !1032 ; 2 uses
  %i.va = icmp eq i64 %i.uz, -9223372036854775808, !dbg !35679
  %i.vb = getelementptr inbounds nuw i8, ptr %i.mq, i64 8, !dbg !35680
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.675, ptr noundef nonnull align 8 dereferenceable(32) %i.vb, i64 32, i1 false), !dbg !35680
  br i1 %i.va, label %bb.dn, label %bb.do, !dbg !35681

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mq), !dbg !35674
  %i.vc = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !35682
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.vc, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.675, i64 32, i1 false), !dbg !35674
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !35682
  br label %bb.dp, !dbg !35674

bb.do:                                            ; preds = %bb.dm
  %.sroa.6749.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mq, i64 40, !dbg !35683
  %.sroa.40.40..sroa_idx560 = getelementptr inbounds nuw i8, ptr %.sroa.40, i64 32, !dbg !34702
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.40.40..sroa_idx560, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6749.0..sroa_idx, i64 40, i1 false), !dbg !35683
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mq), !dbg !35674
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.40, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.675, i64 32, i1 false), !dbg !34702
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.681), !dbg !35674
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.675), !dbg !35674
  br label %bb.y, !dbg !35674

bb.dp:                                            ; preds = %bb.dn, %bb.dk
  %.sroa.0650.11 = phi i8 [ 1, %bb.dk ], [ 0, %bb.dn ], !dbg !35429
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.681), !dbg !35674
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.675), !dbg !35674
  br label %bb.yu, !dbg !35455

bb.dq:                                            ; preds = %bb.dh
  %i.vd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(32) %i.mn) #39
          to label %bb.dr unwind label %bb.ay, !dbg !35668

bb.dr:                                            ; preds = %bb.dq
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4read11compression17BasicDecompressorEBO_(ptr noalias noundef align 8 dereferenceable(232) %i.mo) #39
          to label %.thread1605.thread1721 unwind label %bb.ay, !dbg !35668

bb.ds:                                            ; preds = %bb.q
  %i.ve = getelementptr inbounds nuw i8, ptr %i.ov, i64 24, !dbg !35684
  %i.vf = load i64, ptr %i.ve, align 8, !dbg !35684, !noundef !1032 ; 2 uses
  %i.vg = icmp ult i64 %i.vf, 128102389400760776, !dbg !35685
  call void @llvm.assume(i1 %i.vg), !dbg !35686
  %i.vh = icmp eq i64 %i.vf, 0, !dbg !35687
  %brmerge.not = and i1 %i.oq, %i.vh, !dbg !35687
  br i1 %brmerge.not, label %bb.dt, label %.thread1650, !dbg !35687

bb.dt:                                            ; preds = %bb.ds
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.615.sroa.8), !dbg !34718
  call void @llvm.lifetime.start.p0(ptr nonnull %i.oe), !dbg !34718
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.619), !dbg !34718
  call void @llvm.lifetime.start.p0(ptr nonnull %i.od), !dbg !34718
  %i.vi = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !35688 ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %3, i64 55, !dbg !35689
  %i.vk = load i8, ptr %i.vj, align 1, !dbg !35689, !range !1108, !alias.scope !34717, !noundef !1032 ; 2 uses
  %i.vl = icmp ugt i8 %i.vk, -41, !dbg !35690
  br i1 %i.vl, label %bb.dv, label %bb.du, !dbg !35690

bb.du:                                            ; preds = %bb.dt
  %i.vm = add i8 %i.vk, 64, !dbg !35691
  %i.vn = call i8 @llvm.umin.i8(i8 %i.vm, i8 24), !dbg !35692
  %.sroa.0.0.i.i1375 = zext nneg i8 %i.vn to i64, !dbg !35692
  br label %bb.dw, !dbg !35693

bb.dv:                                            ; preds = %bb.dt
  %i.vo = load ptr, ptr %i.vi, align 8, !dbg !35694, !alias.scope !34717, !noundef !1032
  %i.vp = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !35695
  %i.vq = load i64, ptr %i.vp, align 8, !dbg !35695, !alias.scope !34717, !noundef !1032
  br label %bb.dw, !dbg !35696

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %.sroa.01.0.i1376 = phi i64 [ %i.vq, %bb.dv ], [ %.sroa.0.0.i.i1375, %bb.du ], !dbg !35697
  %.sroa.0.0.i1377 = phi ptr [ %i.vo, %bb.dv ], [ %i.vi, %bb.du ], !dbg !35698
  call void @llvm.lifetime.start.p0(ptr nonnull %i.oc), !dbg !35699
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.oc, ptr noundef nonnull align 8 dereferenceable(232) %1, i64 232, i1 false), !dbg !35699
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ob), !dbg !35700
  store i8 1, ptr %i.ob, align 8, !dbg !35700
  call void @llvm.lifetime.start.p0(ptr nonnull %i.oa), !dbg !35701
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.oa, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !dbg !35701
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderNtNtB7_7boolean14BooleanDecoderE3newBd_(ptr noalias noundef nonnull sret([392 x i8]) align 8 captures(none) dereferenceable(392) %i.od, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i1377, i64 noundef %.sroa.01.0.i1376, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(232) %i.oc, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ob, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.oa)
          to label %bb.dx unwind label %.thread1620, !dbg !34718

bb.dx:                                            ; preds = %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.oa), !dbg !35702
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ob), !dbg !35702
  call void @llvm.lifetime.end.p0(ptr nonnull %i.oc), !dbg !35702
  %i.vr = load i64, ptr %i.od, align 8, !dbg !35703, !range !1573, !noundef !1032 ; 2 uses
  %i.vs = icmp eq i64 %i.vr, 8, !dbg !35703
  %i.vt = getelementptr inbounds nuw i8, ptr %i.od, i64 8, !dbg !35704
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.619, ptr noundef nonnull align 8 dereferenceable(32) %i.vt, i64 32, i1 false), !dbg !35704
  br i1 %i.vs, label %bb.dy, label %bb.dz, !dbg !35705

bb.dy:                                            ; preds = %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.od), !dbg !35706
  %i.vu = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !35707
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.vu, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.619, i64 32, i1 false), !dbg !35706
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !35707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.oe), !dbg !35708
  br label %bb.eg, !dbg !35709

bb.dz:                                            ; preds = %bb.dx
  %.sroa.6716.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.od, i64 40, !dbg !35710
  %.sroa.821.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.nz, i64 40, !dbg !34718
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %.sroa.821.0..sroa_idx22, ptr noundef nonnull align 8 dereferenceable(352) %.sroa.6716.0..sroa_idx, i64 352, i1 false), !dbg !35710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.od), !dbg !35706
  store i64 %i.vr, ptr %i.nz, align 8, !dbg !34718
  %.sroa.619.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.nz, i64 8, !dbg !34718
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.619.0..sroa_idx20, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.619, i64 32, i1 false), !dbg !34718
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ny), !dbg !35711
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ny, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !dbg !35711
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderNtNtB7_7boolean14BooleanDecoderE7collectBd_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.oe, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(392) %i.nz, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.ny)
          to label %bb.ea unwind label %.thread1620, !dbg !35712

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ny), !dbg !35713
  %i.vv = load i64, ptr %i.oe, align 8, !dbg !35714, !range !1034, !noundef !1032 ; 2 uses
  %i.vw = icmp eq i64 %i.vv, -9223372036854775808, !dbg !35714
  %i.vx = getelementptr inbounds nuw i8, ptr %i.oe, i64 8, !dbg !35715
  %.sroa.01059.0.copyload = load ptr, ptr %i.vx, align 8, !dbg !35715 ; 5 uses
  %.sroa.51060.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.oe, i64 16, !dbg !35715
  %.sroa.51060.0.copyload = load i64, ptr %.sroa.51060.0..sroa_idx, align 8, !dbg !35715 ; 3 uses
  %.sroa.61061.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.oe, i64 24, !dbg !35715 ; 2 uses
  br i1 %i.vw, label %bb.eb, label %bb.ec, !dbg !35716

bb.eb:                                            ; preds = %bb.ea
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.615.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.61061.0..sroa_idx, i64 16, i1 false), !dbg !35717
  call void @llvm.lifetime.end.p0(ptr nonnull %i.oe), !dbg !35708
  %.sroa.31055.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !35718
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.31055.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.615.sroa.8, i64 16, i1 false), !dbg !35708
  %i.vy = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !35718
  store ptr %.sroa.01059.0.copyload, ptr %i.vy, align 8, !dbg !35718
  %.sroa.21054.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !35718
  store i64 %.sroa.51060.0.copyload, ptr %.sroa.21054.0..sroa_idx, align 8, !dbg !35718
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !35718
  br label %bb.eg, !dbg !35719

bb.ec:                                            ; preds = %bb.ea
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.615.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.61061.0..sroa_idx, i64 24, i1 false), !dbg !35720
  %.sroa.6719.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.oe, i64 48, !dbg !35720
  call void @llvm.lifetime.start.p0(ptr nonnull %i.of), !dbg !35721
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.of, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6719.0..sroa_idx, i64 32, i1 false), !dbg !35720
  call void @llvm.lifetime.end.p0(ptr nonnull %i.oe), !dbg !35708
  call void @llvm.lifetime.start.p0(ptr nonnull %i.og), !dbg !35722
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.og, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.615.sroa.8, i64 24, i1 false), !dbg !34718
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.619), !dbg !35719
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.615.sroa.8), !dbg !35719
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01059.0.copyload) ], !dbg !35723
  %i.vz = icmp ult i64 %.sroa.51060.0.copyload, 96076792050570582, !dbg !35724
  call void @llvm.assume(i1 %i.vz), !dbg !35725
  %i.wa = getelementptr inbounds nuw [96 x i8], ptr %.sroa.01059.0.copyload, i64 %.sroa.51060.0.copyload, !dbg !35726
  store ptr %.sroa.01059.0.copyload, ptr %i.nw, align 8, !dbg !35727
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nw, i64 8, !dbg !35727
  store ptr %.sroa.01059.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !35727
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nw, i64 16, !dbg !35727
  store i64 %i.vv, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !35727
  %.sroa.624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nw, i64 24, !dbg !35727
  store ptr %i.wa, ptr %.sroa.624.0..sroa_idx, align 8, !dbg !35727
  %i.wb = getelementptr inbounds nuw i8, ptr %i.nw, i64 32, !dbg !35727
  store ptr %i.oo, ptr %i.wb, align 8, !dbg !35727
  invoke void @_RINvNtNtCsgZ49sUHp3tW_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayENCNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize6simple18page_iter_to_array0EINtNtB6_5boxed3BoxDNtB2p_5ArrayEL_EEB3y_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.nx, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.nw)
          to label %bb.ee unwind label %bb.ed, !dbg !35728

bb.ed:                                            ; preds = %bb.ec
  %i.wc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.of)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit unwind label %bb.ay, !dbg !35729

bb.ee:                                            ; preds = %bb.ec
  %.sroa.40.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.40, i64 16, !dbg !35730
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.40.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.og, i64 24, i1 false), !dbg !35731
  %.sroa.40.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.40, i64 40, !dbg !35730
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.40.48..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.of, i64 32, i1 false), !dbg !35732
  %.sroa.0521.0.copyload523 = load i64, ptr %i.nx, align 8, !dbg !35730
  %.sroa.40.0..sroa_idx535 = getelementptr inbounds nuw i8, ptr %i.nx, i64 8, !dbg !35730
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.40, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.40.0..sroa_idx535, i64 16, i1 false), !dbg !35730
  call void @llvm.lifetime.end.p0(ptr nonnull %i.of), !dbg !35733
  call void @llvm.lifetime.end.p0(ptr nonnull %i.og), !dbg !35733
  br label %bb.ef, !dbg !35734

bb.ef:                                            ; preds = %bb.yf, %bb.ri, %bb.qt, %bb.op, %bb.nx, %bb.lv, %bb.lg, %bb.kp, %bb.gu, %bb.gd, %bb.ee
  %.sroa.0639.5 = phi i8 [ 0, %bb.yf ], [ 1, %bb.gd ], [ 1, %bb.gu ], [ 1, %bb.kp ], [ 1, %bb.lg ], [ 1, %bb.lv ], [ 1, %bb.nx ], [ 1, %bb.op ], [ 1, %bb.ri ], [ 1, %bb.qt ], [ 1, %bb.ee ], !dbg !35429 ; 2 uses
  %.sroa.0521.1 = phi i64 [ %.sroa.0521.0.copyload533, %bb.yf ], [ %.sroa.0836.0.copyload, %bb.gd ], [ %.sroa.0819.0.copyload, %bb.gu ], [ %.sroa.0780.0.copyload, %bb.kp ], [ %.sroa.0796.0.copyload, %bb.lg ], [ %.sroa.0521.0.copyload528, %bb.lv ], [ %.sroa.0888.0.copyload, %bb.nx ], [ %.sroa.0871.0.copyload, %bb.op ], [ %.sroa.0917.0.copyload, %bb.ri ], [ %.sroa.0934.0.copyload, %bb.qt ], [ %.sroa.0521.0.copyload523, %bb.ee ], !dbg !35465
  store i64 %.sroa.0521.1, ptr %0, align 8, !dbg !35466
  %.sroa.40.0..sroa_idx534 = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !35466
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.40.0..sroa_idx534, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.40, i64 72, i1 false), !dbg !35466
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(32) %i.oo)
          to label %bb.xt unwind label %.split, !dbg !35431

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.ed
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize12nested_utils11NestedStateEEB1c_(ptr noalias noundef align 8 dereferenceable(24) %i.og) #39
          to label %.thread1611 unwind label %bb.ay, !dbg !35733

bb.eg:                                            ; preds = %bb.eb, %bb.dy
  %.sroa.0650.13 = phi i8 [ 1, %bb.dy ], [ 0, %bb.eb ], !dbg !35429
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.619), !dbg !35719
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.615.sroa.8), !dbg !35719
  br label %bb.eh, !dbg !35455

bb.eh:                                            ; preds = %bb.yt, %bb.rl, %bb.qw, %bb.os, %bb.oa, %bb.nz, %bb.lw, %bb.lj, %bb.li, %bb.ks, %bb.kr, %bb.gx, %bb.gw, %bb.gg, %bb.gf, %bb.eg
  %.sroa.0650.14 = phi i8 [ %.sroa.0650.47, %bb.yt ], [ %.sroa.0650.16, %bb.gg ], [ 0, %bb.gf ], [ %.sroa.0650.17, %bb.gx ], [ 0, %bb.gw ], [ %.sroa.0650.20, %bb.ks ], [ 0, %bb.kr ], [ %.sroa.0650.21, %bb.lj ], [ 0, %bb.li ], [ %.sroa.0650.22, %bb.lw ], [ %.sroa.0650.26, %bb.oa ], [ 0, %bb.nz ], [ %.sroa.0650.27, %bb.os ], [ %.sroa.0650.33, %bb.rl ], [ %.sroa.0650.31, %bb.qw ], [ %.sroa.0650.13, %bb.eg ], !dbg !35429 ; 2 uses
  %.sroa.0639.6 = phi i8 [ 0, %bb.yt ], [ 1, %bb.gg ], [ 1, %bb.gf ], [ 1, %bb.gx ], [ 1, %bb.gw ], [ 1, %bb.ks ], [ 1, %bb.kr ], [ 1, %bb.lj ], [ 1, %bb.li ], [ 1, %bb.lw ], [ 1, %bb.oa ], [ 1, %bb.nz ], [ 1, %bb.os ], [ 1, %bb.rl ], [ 1, %bb.qw ], [ 1, %bb.eg ], !dbg !35429 ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(32) %i.oo)
          to label %bb.yu unwind label %.split, !dbg !35431

bb.ei:                                            ; preds = %thread-pre-split
  switch i8 %i.ow, label %.thread1650 [
    i8 4, label %bb.ek
    i8 16, label %bb.ek
    i8 18, label %bb.ek
    i8 36, label %bb.fg
    i8 33, label %bb.fd
    i8 32, label %bb.vo
    i8 17, label %bb.fa
    i8 25, label %bb.pd
    i8 22, label %bb.pd
  ], !dbg !35433, !prof !34735

bb.ej:                                            ; preds = %thread-pre-split
  switch i8 %i.ow, label %bb.ey [
    i8 6, label %bb.fj
    i8 11, label %bb.fk
    i8 15, label %bb.ez
    i8 17, label %bb.fl
    i8 21, label %bb.fm
    i8 23, label %bb.fn
    i8 33, label %bb.fo
    i8 36, label %bb.fp
  ], !dbg !35433

bb.ek:                                            ; preds = %bb.ei, %bb.ei, %bb.ei
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6111), !dbg !34744
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ls), !dbg !34744
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6117), !dbg !34744
  call void @llvm.lifetime.start.p0(ptr nonnull %i.lr), !dbg !34744
  %i.wd = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !35735 ; 2 uses
  %i.we = getelementptr inbounds nuw i8, ptr %3, i64 55, !dbg !35736
  %i.wf = load i8, ptr %i.we, align 1, !dbg !35736, !range !1108, !alias.scope !34743, !noundef !1032 ; 2 uses
  %i.wg = icmp ugt i8 %i.wf, -41, !dbg !35737
  br i1 %i.wg, label %bb.em, label %bb.el, !dbg !35737

bb.el:                                            ; preds = %bb.ek
  %i.wh = add i8 %i.wf, 64, !dbg !35738
  %i.wi = call i8 @llvm.umin.i8(i8 %i.wh, i8 24), !dbg !35739
  %.sroa.0.0.i.i1379 = zext nneg i8 %i.wi to i64, !dbg !35739
  br label %bb.en, !dbg !35740

bb.em:                                            ; preds = %bb.ek
  %i.wj = load ptr, ptr %i.wd, align 8, !dbg !35741, !alias.scope !34743, !noundef !1032
  %i.wk = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !35742
  %i.wl = load i64, ptr %i.wk, align 8, !dbg !35742, !alias.scope !34743, !noundef !1032
  br label %bb.en, !dbg !35743

bb.en:                                            ; preds = %bb.em, %bb.el
  %.sroa.01.0.i1380 = phi i64 [ %i.wl, %bb.em ], [ %.sroa.0.0.i.i1379, %bb.el ], !dbg !35744
  %.sroa.0.0.i1381 = phi ptr [ %i.wj, %bb.em ], [ %i.wd, %bb.el ], !dbg !35745
  call void @llvm.lifetime.start.p0(ptr nonnull %i.lq), !dbg !35746
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.lq, ptr noundef nonnull align 8 dereferenceable(232) %1, i64 232, i1 false), !dbg !35746
  call void @llvm.lifetime.start.p0(ptr nonnull %i.lp), !dbg !35747
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.lp, ptr noundef nonnull align 8 dereferenceable(32) %i.oo, i64 32, i1 false), !dbg !35747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.lo), !dbg !35748
  invoke void @_RNvMs0_NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize9primitive7integerINtB5_10IntDecoderllINtB7_19UnitDecoderFunctionlEE4unitBf_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.lo)
          to label %bb.eo unwind label %bb.ew, !dbg !35748

bb.eo:                                            ; preds = %bb.en
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ln), !dbg !35749
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ln, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !dbg !35749
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderINtNtNtB7_9primitive7integer10IntDecoderllINtB1z_19UnitDecoderFunctionlEEE3newBd_(ptr noalias noundef nonnull sret([408 x i8]) align 8 captures(none) dereferenceable(408) %i.lr, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i1381, i64 noundef %.sroa.01.0.i1380, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(232) %i.lq, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.lp, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.lo, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ln)
          to label %bb.ep unwind label %.thread1644, !dbg !34744

.thread1644:                                      ; preds = %bb.eo
  %i.wm = landingpad { ptr, i32 }
          cleanup
  br label %.thread1695, !dbg !35750

bb.ep:                                            ; preds = %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ln), !dbg !35750
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lo), !dbg !35750
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lp), !dbg !35750
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lq), !dbg !35750
  %i.wn = load i64, ptr %i.lr, align 8, !dbg !35751, !range !1573, !noundef !1032 ; 2 uses
  %i.wo = icmp eq i64 %i.wn, 8, !dbg !35751
  %i.wp = getelementptr inbounds nuw i8, ptr %i.lr, i64 8, !dbg !35752
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6117, ptr noundef nonnull align 8 dereferenceable(32) %i.wp, i64 32, i1 false), !dbg !35752
  br i1 %i.wo, label %bb.eq, label %bb.er, !dbg !35753

bb.eq:                                            ; preds = %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lr), !dbg !35754
  %i.wq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !35755
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.wq, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6117, i64 32, i1 false), !dbg !35754
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !35755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ls), !dbg !35756
  br label %bb.ev, !dbg !35455

bb.er:                                            ; preds = %bb.ep
  %.sroa.6764.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lr, i64 40, !dbg !35757
  %.sroa.8119.0..sroa_idx120 = getelementptr inbounds nuw i8, ptr %i.lm, i64 40, !dbg !34744
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %.sroa.8119.0..sroa_idx120, ptr noundef nonnull align 8 dereferenceable(368) %.sroa.6764.0..sroa_idx, i64 368, i1 false), !dbg !35757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lr), !dbg !35754
  store i64 %i.wn, ptr %i.lm, align 8, !dbg !34744
  %.sroa.6117.0..sroa_idx118 = getelementptr inbounds nuw i8, ptr %i.lm, i64 8, !dbg !34744
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6117.0..sroa_idx118, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6117, i64 32, i1 false), !dbg !34744
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ll), !dbg !35758
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ll, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !dbg !35758
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderINtNtNtB7_9primitive7integer10IntDecoderllINtB1z_19UnitDecoderFunctionlEEE13collect_boxedBd_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.ls, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(408) %i.lm, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.ll)
          to label %bb.es unwind label %bb.f, !dbg !35759

bb.es:                                            ; preds = %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ll), !dbg !35760
  %i.wr = load i64, ptr %i.ls, align 8, !dbg !35761, !range !1034, !noundef !1032 ; 2 uses
  %i.ws = icmp eq i64 %i.wr, -9223372036854775808, !dbg !35761
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ls, i64 8, !dbg !35762
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6111, ptr noundef nonnull align 8 dereferenceable(32) %i.wt, i64 32, i1 false), !dbg !35762
  br i1 %i.ws, label %bb.et, label %bb.eu, !dbg !35763

bb.et:                                            ; preds = %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ls), !dbg !35756
  %i.wu = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !35764
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.wu, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6111, i64 32, i1 false), !dbg !35756
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !35764
  br label %bb.ev, !dbg !35756

bb.eu:                                            ; preds = %bb.es
  %.sroa.6767.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ls, i64 40, !dbg !35765
  %.sroa.40.40..sroa_idx563 = getelementptr inbounds nuw i8, ptr %.sroa.40, i64 32, !dbg !34744
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.40.40..sroa_idx563, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6767.0..sroa_idx, i64 40, i1 false), !dbg !35765
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ls), !dbg !35756
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.40, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6111, i64 32, i1 false), !dbg !34744
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6117), !dbg !35756
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6111), !dbg !35756
  br label %bb.y, !dbg !35756

bb.ev:                                            ; preds = %bb.et, %bb.eq
  %.sroa.0650.15 = phi i8 [ 1, %bb.eq ], [ 0, %bb.et ], !dbg !35429
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6117), !dbg !35756
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6111), !dbg !35756
  br label %bb.yu, !dbg !35455

bb.ew:                                            ; preds = %bb.en
  %i.wv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(32) %i.lp) #39
          to label %bb.ex unwind label %bb.ay, !dbg !35750

bb.ex:                                            ; preds = %bb.ew
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4read11compression17BasicDecompressorEBO_(ptr noalias noundef align 8 dereferenceable(232) %i.lq) #39
          to label %.thread1605.thread1721 unwind label %bb.ay, !dbg !35750

bb.ey:                                            ; preds = %bb.ej
  switch i64 %6, label %.thread1647 [
    i64 2, label %bb.ow
    i64 4, label %bb.ro
    i64 5, label %bb.rp
    i64 6, label %bb.rn
    i64 7, label %bb.rq
  ], !dbg !35433

bb.ez:                                            ; preds = %bb.ej
  %i.ww = and i64 %6, -2, !dbg !35433
  %switch1750 = icmp eq i64 %i.ww, 2, !dbg !35433
  br i1 %switch1750, label %bb.gy, label %.thread1650, !dbg !35433

bb.fa:                                            ; preds = %bb.ei
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6365), !dbg !34894
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fn), !dbg !34894
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6371), !dbg !34894
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fm), !dbg !34894
  %i.wx = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !35766 ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %3, i64 55, !dbg !35767
  %i.wz = load i8, ptr %i.wy, align 1, !dbg !35767, !range !1108, !alias.scope !34757, !noundef !1032 ; 2 uses
  %i.xa = icmp ugt i8 %i.wz, -41, !dbg !35768
  br i1 %i.xa, label %bb.fc, label %bb.fb, !dbg !35768

bb.fb:                                            ; preds = %bb.fa
  %i.xb = add i8 %i.wz, 64, !dbg !35769
  %i.xc = call i8 @llvm.umin.i8(i8 %i.xb, i8 24), !dbg !35770
  %.sroa.0.0.i.i1383 = zext nneg i8 %i.xc to i64, !dbg !35770
  br label %bb.jf, !dbg !35771

bb.fc:                                            ; preds = %bb.fa
  %i.xd = load ptr, ptr %i.wx, align 8, !dbg !35772, !alias.scope !34757, !noundef !1032
  %i.xe = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !35773
  %i.xf = load i64, ptr %i.xe, align 8, !dbg !35773, !alias.scope !34757, !noundef !1032
  br label %bb.jf, !dbg !35774

bb.fd:                                            ; preds = %bb.ei
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6233), !dbg !35028
  call void @llvm.lifetime.start.p0(ptr nonnull %i.iw), !dbg !35028
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6239), !dbg !35028
  call void @llvm.lifetime.start.p0(ptr nonnull %i.iv), !dbg !35028
  %i.xg = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !35775 ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %3, i64 55, !dbg !35776
  %i.xi = load i8, ptr %i.xh, align 1, !dbg !35776, !range !1108, !alias.scope !34765, !noundef !1032 ; 2 uses
  %i.xj = icmp ugt i8 %i.xi, -41, !dbg !35777
  br i1 %i.xj, label %bb.ff, label %bb.fe, !dbg !35777

bb.fe:                                            ; preds = %bb.fd
  %i.xk = add i8 %i.xi, 64, !dbg !35778
  %i.xl = call i8 @llvm.umin.i8(i8 %i.xk, i8 24), !dbg !35779
  %.sroa.0.0.i.i1387 = zext nneg i8 %i.xl to i64, !dbg !35779
  br label %bb.mq, !dbg !35780

bb.ff:                                            ; preds = %bb.fd
  %i.xm = load ptr, ptr %i.xg, align 8, !dbg !35781, !alias.scope !34765, !noundef !1032
  %i.xn = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !35782
  %i.xo = load i64, ptr %i.xn, align 8, !dbg !35782, !alias.scope !34765, !noundef !1032
  br label %bb.mq, !dbg !35783

bb.fg:                                            ; preds = %bb.ei
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6299), !dbg !35119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hf), !dbg !35119
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6305), !dbg !35119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.he), !dbg !35119
  %i.xp = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !35784 ; 2 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %3, i64 55, !dbg !35785
  %i.xr = load i8, ptr %i.xq, align 1, !dbg !35785, !range !1108, !alias.scope !34773, !noundef !1032 ; 2 uses
  %i.xs = icmp ugt i8 %i.xr, -41, !dbg !35786
  br i1 %i.xs, label %bb.fi, label %bb.fh, !dbg !35786

bb.fh:                                            ; preds = %bb.fg
  %i.xt = add i8 %i.xr, 64, !dbg !35787
  %i.xu = call i8 @llvm.umin.i8(i8 %i.xt, i8 24), !dbg !35788
  %.sroa.0.0.i.i1391 = zext nneg i8 %i.xu to i64, !dbg !35788
  br label %bb.pj, !dbg !35789

bb.fi:                                            ; preds = %bb.fg
  %i.xv = load ptr, ptr %i.xp, align 8, !dbg !35790, !alias.scope !34773, !noundef !1032
  %i.xw = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !35791
  %i.xx = load i64, ptr %i.xw, align 8, !dbg !35791, !alias.scope !34773, !noundef !1032
  br label %bb.pj, !dbg !35792

bb.fj:                                            ; preds = %bb.ej
  %cond1748.a = icmp eq i64 %6, 7, !dbg !35433
  %i.xy = load i64, ptr %7, align 8, !dbg !35433
  %i.xz = icmp eq i64 %i.xy, 16, !dbg !35433
  %or.cond = select i1 %cond1748.a, i1 %i.xz, i1 false, !dbg !35433
  br i1 %or.cond, label %bb.fq, label %.thread1650, !dbg !35433

bb.fk:                                            ; preds = %bb.ej
  %cond1747.a = icmp eq i64 %6, 7, !dbg !35433
  %i.ya = load i64, ptr %7, align 8, !dbg !35433
  %i.yb = icmp eq i64 %i.ya, 16, !dbg !35433
  %or.cond1753 = select i1 %cond1747.a, i1 %i.yb, i1 false, !dbg !35433
  br i1 %or.cond1753, label %bb.gh, label %.thread1650, !dbg !35433

bb.fl:                                            ; preds = %bb.ej
  %cond.a = icmp eq i64 %6, 2, !dbg !35433
  br i1 %cond.a, label %bb.jb, label %.thread1650, !dbg !35433

bb.fm:                                            ; preds = %bb.ej
  %cond1746 = icmp eq i64 %6, 7, !dbg !35433
  br i1 %cond1746, label %bb.jy, label %.thread1650, !dbg !35433

bb.fn:                                            ; preds = %bb.ej
  %cond1745 = icmp eq i64 %6, 7, !dbg !35433
  br i1 %cond1745, label %bb.lx, label %.thread1650, !dbg !35433

bb.fo:                                            ; preds = %bb.ej
  switch i64 %6, label %.thread1650 [
    i64 7, label %bb.mp
    i64 2, label %bb.mj
    i64 6, label %bb.mm
  ], !dbg !35433

bb.fp:                                            ; preds = %bb.ej
  switch i64 %6, label %.thread1650 [
    i64 7, label %bb.ph
    i64 2, label %bb.pe
  ], !dbg !35433

bb.fq:                                            ; preds = %bb.fj
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6212.sroa.8), !dbg !34783
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jf), !dbg !34783
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6217), !dbg !34783
  call void @llvm.lifetime.start.p0(ptr nonnull %i.je), !dbg !34783
  %i.yc = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !35793 ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %3, i64 55, !dbg !35794
  %i.ye = load i8, ptr %i.yd, align 1, !dbg !35794, !range !1108, !alias.scope !34781, !noundef !1032 ; 2 uses
  %i.yf = icmp ugt i8 %i.ye, -41, !dbg !35795
  br i1 %i.yf, label %bb.fs, label %bb.fr, !dbg !35795

bb.fr:                                            ; preds = %bb.fq
  %i.yg = add i8 %i.ye, 64, !dbg !35796
  %i.yh = call i8 @llvm.umin.i8(i8 %i.yg, i8 24), !dbg !35797
  %.sroa.0.0.i.i1395 = zext nneg i8 %i.yh to i64, !dbg !35797
  br label %bb.ft, !dbg !35798

bb.fs:                                            ; preds = %bb.fq
  %i.yi = load ptr, ptr %i.yc, align 8, !dbg !35799, !alias.scope !34781, !noundef !1032
  %i.yj = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !35800
  %i.yk = load i64, ptr %i.yj, align 8, !dbg !35800, !alias.scope !34781, !noundef !1032
  br label %bb.ft, !dbg !35801

.thread1647:                                      ; preds = %bb.ey
  switch i8 %i.ow, label %.thread1650 [
    i8 22, label %bb.pd
    i8 25, label %bb.pd
    i8 32, label %bb.vo
  ], !dbg !35433, !prof !34782

bb.ft:                                            ; preds = %bb.fs, %bb.fr
  %.sroa.01.0.i1396 = phi i64 [ %i.yk, %bb.fs ], [ %.sroa.0.0.i.i1395, %bb.fr ], !dbg !35802
  %.sroa.0.0.i1397 = phi ptr [ %i.yi, %bb.fs ], [ %i.yc, %bb.fr ], !dbg !35803
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jd), !dbg !35804
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.jd, ptr noundef nonnull align 8 dereferenceable(232) %1, i64 232, i1 false), !dbg !35804
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jc), !dbg !35805
  %i.yl = getelementptr inbounds nuw i8, ptr %i.jc, i64 8, !dbg !35805
  store i64 16, ptr %i.yl, align 8, !dbg !35805
  store i8 23, ptr %i.jc, align 8, !dbg !35805
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jb), !dbg !35806
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jb, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !dbg !35806
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderNtNtB7_17fixed_size_binary13BinaryDecoderE3newBd_(ptr noalias noundef nonnull sret([400 x i8]) align 8 captures(none) dereferenceable(400) %i.je, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i1397, i64 noundef %.sroa.01.0.i1396, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(232) %i.jd, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.jc, i64 noundef 16, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.jb)
          to label %bb.fu unwind label %.thread1620, !dbg !34783

bb.fu:                                            ; preds = %bb.ft
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jb), !dbg !35807
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jc), !dbg !35807
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jd), !dbg !35807
  %i.ym = load i64, ptr %i.je, align 8, !dbg !35808, !range !1573, !noundef !1032 ; 2 uses
  %i.yn = icmp eq i64 %i.ym, 8, !dbg !35808
  %i.yo = getelementptr inbounds nuw i8, ptr %i.je, i64 8, !dbg !35809
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6217, ptr noundef nonnull align 8 dereferenceable(32) %i.yo, i64 32, i1 false), !dbg !35809
  br i1 %i.yn, label %bb.fv, label %bb.fw, !dbg !35810

bb.fv:                                            ; preds = %bb.fu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.je), !dbg !35811
  %i.yp = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !35812
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.yp, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6217, i64 32, i1 false), !dbg !35811
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !35812
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jf), !dbg !35813
  br label %bb.gg, !dbg !35814

bb.fw:                                            ; preds = %bb.fu
  %.sroa.6832.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.je, i64 40, !dbg !35815
  %.sroa.8219.0..sroa_idx220 = getelementptr inbounds nuw i8, ptr %i.ja, i64 40, !dbg !34783
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %.sroa.8219.0..sroa_idx220, ptr noundef nonnull align 8 dereferenceable(360) %.sroa.6832.0..sroa_idx, i64 360, i1 false), !dbg !35815
  call void @llvm.lifetime.end.p0(ptr nonnull %i.je), !dbg !35811
  store i64 %i.ym, ptr %i.ja, align 8, !dbg !34783
  %.sroa.6217.0..sroa_idx218 = getelementptr inbounds nuw i8, ptr %i.ja, i64 8, !dbg !34783
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6217.0..sroa_idx218, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6217, i64 32, i1 false), !dbg !34783
  call void @llvm.lifetime.start.p0(ptr nonnull %i.iz), !dbg !35816
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.iz, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !dbg !35816
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderNtNtB7_17fixed_size_binary13BinaryDecoderE7collectBd_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.jf, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(400) %i.ja, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.iz)
          to label %bb.fx unwind label %.thread1620, !dbg !35817

bb.fx:                                            ; preds = %bb.fw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iz), !dbg !35818
  %i.yq = load i64, ptr %i.jf, align 8, !dbg !35819, !range !1034, !noundef !1032 ; 2 uses
  %i.yr = icmp eq i64 %i.yq, -9223372036854775808, !dbg !35819
  %i.ys = getelementptr inbounds nuw i8, ptr %i.jf, i64 8, !dbg !35820
  %.sroa.01164.0.copyload = load ptr, ptr %i.ys, align 8, !dbg !35820 ; 5 uses
  %.sroa.51165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jf, i64 16, !dbg !35820
  %.sroa.51165.0.copyload = load i64, ptr %.sroa.51165.0..sroa_idx, align 8, !dbg !35820 ; 3 uses
  %.sroa.61166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jf, i64 24, !dbg !35820 ; 2 uses
  br i1 %i.yr, label %bb.fy, label %bb.fz, !dbg !35821

bb.fy:                                            ; preds = %bb.fx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6212.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.61166.0..sroa_idx, i64 16, i1 false), !dbg !35822
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jf), !dbg !35813
  %.sroa.31160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !35823
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.31160.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6212.sroa.8, i64 16, i1 false), !dbg !35813
  %i.yt = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !35823
  store ptr %.sroa.01164.0.copyload, ptr %i.yt, align 8, !dbg !35823
  %.sroa.21159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !35823
  store i64 %.sroa.51165.0.copyload, ptr %.sroa.21159.0..sroa_idx, align 8, !dbg !35823
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !35823
  br label %bb.gg, !dbg !35824

bb.fz:                                            ; preds = %bb.fx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6212.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.61166.0..sroa_idx, i64 24, i1 false), !dbg !35825
  %.sroa.6835.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jf, i64 48, !dbg !35825
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jg), !dbg !35826
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jg, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6835.0..sroa_idx, i64 32, i1 false), !dbg !35825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jf), !dbg !35813
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jh), !dbg !35827
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jh, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6212.sroa.8, i64 24, i1 false), !dbg !34783
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6217), !dbg !35824
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6212.sroa.8), !dbg !35824
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6223.sroa.7), !dbg !34803
  call void @llvm.lifetime.start.p0(ptr nonnull %i.iy), !dbg !34803
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01164.0.copyload) ], !dbg !35828
  %i.yu = icmp ult i64 %.sroa.51165.0.copyload, 96076792050570582, !dbg !35829
  call void @llvm.assume(i1 %i.yu), !dbg !35830
  %i.yv = getelementptr inbounds nuw [96 x i8], ptr %.sroa.01164.0.copyload, i64 %.sroa.51165.0.copyload, !dbg !35831
  store ptr %.sroa.01164.0.copyload, ptr %i.ix, align 8, !dbg !35832
  %.sroa.4226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ix, i64 8, !dbg !35832
  store ptr %.sroa.01164.0.copyload, ptr %.sroa.4226.0..sroa_idx, align 8, !dbg !35832
  %.sroa.5227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ix, i64 16, !dbg !35832
  store i64 %i.yq, ptr %.sroa.5227.0..sroa_idx, align 8, !dbg !35832
  %.sroa.6228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ix, i64 24, !dbg !35832
  store ptr %i.yv, ptr %.sroa.6228.0..sroa_idx, align 8, !dbg !35832
  %i.yw = getelementptr inbounds nuw i8, ptr %i.ix, i64 32, !dbg !35832
  store ptr %i.oo, ptr %i.yw, align 8, !dbg !35832
  invoke void @_RINvNtNtCscgRAwXFJnXP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binary20FixedSizeBinaryArrayENCNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize6simple18page_iter_to_arrays3_0EINtNtB1d_5boxed3BoxDNtB1Y_5ArrayEL_EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtNtB3q_7parquet5error12ParquetErrorENCINvXso_B5r_IB5p_INtB1b_3VecB4O_EB6b_EINtNtNtB4_6traits7collect12FromIteratorIB5p_B4O_B6b_EE9from_iterBQ_E0B76_EB3q_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.iy, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.ix)
          to label %bb.gb unwind label %bb.ga, !dbg !35833

bb.ga:                                            ; preds = %bb.fz
  %i.yx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.jg)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1399 unwind label %bb.ay, !dbg !35834

bb.gb:                                            ; preds = %bb.fz
  %i.yy = load i64, ptr %i.iy, align 8, !dbg !35835, !range !1553, !noundef !1032 ; 2 uses
  %.not1296 = icmp eq i64 %i.yy, -9223372036854775803, !dbg !35835
  %i.yz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8, !dbg !35836
  %.sroa.0836.0.copyload = load i64, ptr %i.yz, align 8, !dbg !35836 ; 2 uses
  %.sroa.5837.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iy, i64 16, !dbg !35836
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6223.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5837.0..sroa_idx, i64 16, i1 false), !dbg !35836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iy), !dbg !35837
  br i1 %.not1296, label %bb.gd, label %bb.gc, !dbg !35838

bb.gc:                                            ; preds = %bb.gb
  %.sroa.3846.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !35839
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3846.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6223.sroa.7, i64 16, i1 false), !dbg !35837
  %i.za = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !35839
  store i64 %i.yy, ptr %i.za, align 8, !dbg !35839
  %.sroa.2845.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !35839
  store i64 %.sroa.0836.0.copyload, ptr %.sroa.2845.0..sroa_idx, align 8, !dbg !35839
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !35839
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6223.sroa.7), !dbg !35840
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.jg)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1400 unwind label %bb.ge, !dbg !35841

bb.gd:                                            ; preds = %bb.gb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.40, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6223.sroa.7, i64 16, i1 false), !dbg !34803
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6223.sroa.7), !dbg !35840
  %.sroa.40.24..sroa_idx546 = getelementptr inbounds nuw i8, ptr %.sroa.40, i64 16, !dbg !35842
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.40.24..sroa_idx546, ptr noundef nonnull align 8 dereferenceable(24) %i.jh, i64 24, i1 false), !dbg !35843
  %.sroa.40.48..sroa_idx582 = getelementptr inbounds nuw i8, ptr %.sroa.40, i64 40, !dbg !35842
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.40.48..sroa_idx582, ptr noundef nonnull align 8 dereferenceable(32) %i.jg, i64 32, i1 false), !dbg !35844
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jg), !dbg !35845
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jh), !dbg !35845
  br label %bb.ef, !dbg !35846

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1399: ; preds = %bb.ga, %bb.ge
  %.pn1297 = phi { ptr, i32 } [ %i.zb, %bb.ge ], [ %i.yx, %bb.ga ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize12nested_utils11NestedStateEEB1c_(ptr noalias noundef align 8 dereferenceable(24) %i.jh) #39
          to label %.thread1611 unwind label %bb.ay, !dbg !35845

bb.ge:                                            ; preds = %bb.gc
end_hunk_1
begin_hunk_2_@_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize6simple18page_iter_to_array:bb.a
  br label %bb.jn, !dbg !36059

bb.jd:                                            ; preds = %bb.jb
  %i.acp = load ptr, ptr %i.acj, align 8, !dbg !36060, !alias.scope !34892, !noundef !1032
  %i.acq = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !36061
  %i.acr = load i64, ptr %i.acq, align 8, !dbg !36061, !alias.scope !34892, !noundef !1032
  br label %bb.jn, !dbg !36062

bb.je:                                            ; preds = %bb.jf
  %i.acs = landingpad { ptr, i32 }
          cleanup
  br label %.thread1695, !dbg !36063

bb.jf:                                            ; preds = %bb.fb, %bb.fc
  %.sroa.01.0.i1384 = phi i64 [ %i.xf, %bb.fc ], [ %.sroa.0.0.i.i1383, %bb.fb ], !dbg !36064
  %.sroa.0.0.i1385 = phi ptr [ %i.xd, %bb.fc ], [ %i.wx, %bb.fb ], !dbg !36065
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fl), !dbg !36066
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.fl, ptr noundef nonnull align 8 dereferenceable(232) %1, i64 232, i1 false), !dbg !36066
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fk), !dbg !36067
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fk, ptr noundef nonnull align 8 dereferenceable(32) %i.oo, i64 32, i1 false), !dbg !36067
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fj), !dbg !36068
  store i64 0, ptr %i.fj, align 8, !dbg !36069, !alias.scope !34893
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fj, i64 8, !dbg !36069
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !36069, !alias.scope !34893
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fj, i64 16, !dbg !36069
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !dbg !36069, !alias.scope !34893
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fi), !dbg !36070
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fi, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !dbg !36070
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderINtNtNtB7_9primitive7integer10IntDecoderlxINtB1z_22ClosureDecoderFunctionlxNCNvNtB7_6simple18page_iter_to_arraysa_0EEE3newBd_(ptr noalias noundef nonnull sret([408 x i8]) align 8 captures(none) dereferenceable(408) %i.fm, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i1385, i64 noundef %.sroa.01.0.i1384, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(232) %i.fl, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.fk, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.fj, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.fi)
          to label %bb.jg unwind label %bb.je, !dbg !34894

bb.jg:                                            ; preds = %bb.jf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fi), !dbg !36063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fj), !dbg !36063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fk), !dbg !36063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fl), !dbg !36063
  %i.act = load i64, ptr %i.fm, align 8, !dbg !36071, !range !1573, !noundef !1032 ; 2 uses
  %i.acu = icmp eq i64 %i.act, 8, !dbg !36071
  %i.acv = getelementptr inbounds nuw i8, ptr %i.fm, i64 8, !dbg !36072
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6371, ptr noundef nonnull align 8 dereferenceable(32) %i.acv, i64 32, i1 false), !dbg !36072
  br i1 %i.acu, label %bb.jh, label %bb.ji, !dbg !36073

bb.jh:                                            ; preds = %bb.jg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm), !dbg !36074
  %i.acw = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36075
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.acw, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6371, i64 32, i1 false), !dbg !36074
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !36075
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fn), !dbg !36076
  br label %bb.jm, !dbg !35455

bb.ji:                                            ; preds = %bb.jg
  %.sroa.6953.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fm, i64 40, !dbg !36077
  %.sroa.8373.0..sroa_idx374 = getelementptr inbounds nuw i8, ptr %i.fh, i64 40, !dbg !34894
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %.sroa.8373.0..sroa_idx374, ptr noundef nonnull align 8 dereferenceable(368) %.sroa.6953.0..sroa_idx, i64 368, i1 false), !dbg !36077
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm), !dbg !36074
  store i64 %i.act, ptr %i.fh, align 8, !dbg !34894
  %.sroa.6371.0..sroa_idx372 = getelementptr inbounds nuw i8, ptr %i.fh, i64 8, !dbg !34894
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6371.0..sroa_idx372, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6371, i64 32, i1 false), !dbg !34894
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fg), !dbg !36078
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fg, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !dbg !36078
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderINtNtNtB7_9primitive7integer10IntDecoderlxINtB1z_22ClosureDecoderFunctionlxNCNvNtB7_6simple18page_iter_to_arraysa_0EEE13collect_boxedBd_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.fn, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(408) %i.fh, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.fg)
          to label %bb.jj unwind label %bb.f, !dbg !36079

bb.jj:                                            ; preds = %bb.ji
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fg), !dbg !36080
  %i.acx = load i64, ptr %i.fn, align 8, !dbg !36081, !range !1034, !noundef !1032 ; 2 uses
  %i.acy = icmp eq i64 %i.acx, -9223372036854775808, !dbg !36081
  %i.acz = getelementptr inbounds nuw i8, ptr %i.fn, i64 8, !dbg !36082
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6365, ptr noundef nonnull align 8 dereferenceable(32) %i.acz, i64 32, i1 false), !dbg !36082
  br i1 %i.acy, label %bb.jk, label %bb.jl, !dbg !36083

bb.jk:                                            ; preds = %bb.jj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fn), !dbg !36076
  %i.ada = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36084
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ada, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6365, i64 32, i1 false), !dbg !36076
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !36084
  br label %bb.jm, !dbg !36076

bb.jl:                                            ; preds = %bb.jj
  %.sroa.6956.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 40, !dbg !36085
  %.sroa.40.40..sroa_idx569 = getelementptr inbounds nuw i8, ptr %.sroa.40, i64 32, !dbg !34894
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.40.40..sroa_idx569, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6956.0..sroa_idx, i64 40, i1 false), !dbg !36085
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fn), !dbg !36076
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.40, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6365, i64 32, i1 false), !dbg !34894
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6371), !dbg !36076
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6365), !dbg !36076
  br label %bb.y, !dbg !36076

bb.jm:                                            ; preds = %bb.jk, %bb.jh
  %.sroa.0650.18 = phi i8 [ 1, %bb.jh ], [ 0, %bb.jk ], !dbg !35429
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6371), !dbg !36076
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6365), !dbg !36076
  br label %bb.yu, !dbg !35455

bb.jn:                                            ; preds = %bb.jd, %bb.jc
  %.sroa.01.0.i1419 = phi i64 [ %i.acr, %bb.jd ], [ %.sroa.0.0.i.i1418, %bb.jc ], !dbg !36086
  %.sroa.0.0.i1420 = phi ptr [ %i.acp, %bb.jd ], [ %i.acj, %bb.jc ], !dbg !36087
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fd), !dbg !36088
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.fd, ptr noundef nonnull align 8 dereferenceable(232) %1, i64 232, i1 false), !dbg !36088
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fc), !dbg !36089
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fc, ptr noundef nonnull align 8 dereferenceable(32) %i.oo, i64 32, i1 false), !dbg !36089
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fb), !dbg !36090
  invoke void @_RNvMs0_NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize9primitive7integerINtB5_10IntDecoderxxINtB7_19UnitDecoderFunctionxEE4unitBf_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.fb)
          to label %bb.jo unwind label %bb.jw, !dbg !36090

bb.jo:                                            ; preds = %bb.jn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fa), !dbg !36091
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fa, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !dbg !36091
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderINtNtNtB7_9primitive7integer10IntDecoderxxINtB1z_19UnitDecoderFunctionxEEE3newBd_(ptr noalias noundef nonnull sret([408 x i8]) align 8 captures(none) dereferenceable(408) %i.fe, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i1420, i64 noundef %.sroa.01.0.i1419, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(232) %i.fd, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.fc, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.fb, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.fa)
          to label %bb.jp unwind label %.thread1651, !dbg !34900

.thread1651:                                      ; preds = %bb.jo
  %i.adb = landingpad { ptr, i32 }
          cleanup
  br label %.thread1695, !dbg !36092

bb.jp:                                            ; preds = %bb.jo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fa), !dbg !36092
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fb), !dbg !36092
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fc), !dbg !36092
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fd), !dbg !36092
  %i.adc = load i64, ptr %i.fe, align 8, !dbg !36093, !range !1573, !noundef !1032 ; 2 uses
  %i.add = icmp eq i64 %i.adc, 8, !dbg !36093
  %i.ade = getelementptr inbounds nuw i8, ptr %i.fe, i64 8, !dbg !36094
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6383, ptr noundef nonnull align 8 dereferenceable(32) %i.ade, i64 32, i1 false), !dbg !36094
  br i1 %i.add, label %bb.jq, label %bb.jr, !dbg !36095

bb.jq:                                            ; preds = %bb.jp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fe), !dbg !36096
  %i.adf = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36097
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.adf, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6383, i64 32, i1 false), !dbg !36096
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !36097
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ff), !dbg !36098
  br label %bb.jv, !dbg !35455

bb.jr:                                            ; preds = %bb.jp
  %.sroa.6959.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fe, i64 40, !dbg !36099
  %.sroa.8385.0..sroa_idx386 = getelementptr inbounds nuw i8, ptr %i.ez, i64 40, !dbg !34900
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %.sroa.8385.0..sroa_idx386, ptr noundef nonnull align 8 dereferenceable(368) %.sroa.6959.0..sroa_idx, i64 368, i1 false), !dbg !36099
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fe), !dbg !36096
  store i64 %i.adc, ptr %i.ez, align 8, !dbg !34900
  %.sroa.6383.0..sroa_idx384 = getelementptr inbounds nuw i8, ptr %i.ez, i64 8, !dbg !34900
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6383.0..sroa_idx384, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6383, i64 32, i1 false), !dbg !34900
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ey), !dbg !36100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ey, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !dbg !36100
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderINtNtNtB7_9primitive7integer10IntDecoderxxINtB1z_19UnitDecoderFunctionxEEE13collect_boxedBd_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.ff, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(408) %i.ez, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.ey)
          to label %bb.js unwind label %bb.f, !dbg !36101

bb.js:                                            ; preds = %bb.jr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ey), !dbg !36102
  %i.adg = load i64, ptr %i.ff, align 8, !dbg !36103, !range !1034, !noundef !1032 ; 2 uses
  %i.adh = icmp eq i64 %i.adg, -9223372036854775808, !dbg !36103
  %i.adi = getelementptr inbounds nuw i8, ptr %i.ff, i64 8, !dbg !36104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6377, ptr noundef nonnull align 8 dereferenceable(32) %i.adi, i64 32, i1 false), !dbg !36104
  br i1 %i.adh, label %bb.jt, label %bb.ju, !dbg !36105

bb.jt:                                            ; preds = %bb.js
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ff), !dbg !36098
  %i.adj = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.adj, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6377, i64 32, i1 false), !dbg !36098
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !36106
  br label %bb.jv, !dbg !36098

bb.ju:                                            ; preds = %bb.js
  %.sroa.6962.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ff, i64 40, !dbg !36107
  %.sroa.40.40..sroa_idx570 = getelementptr inbounds nuw i8, ptr %.sroa.40, i64 32, !dbg !34900
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.40.40..sroa_idx570, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6962.0..sroa_idx, i64 40, i1 false), !dbg !36107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ff), !dbg !36098
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.40, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6377, i64 32, i1 false), !dbg !34900
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6383), !dbg !36098
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6377), !dbg !36098
  br label %bb.y, !dbg !36098

bb.jv:                                            ; preds = %bb.jt, %bb.jq
  %.sroa.0650.19 = phi i8 [ 1, %bb.jq ], [ 0, %bb.jt ], !dbg !35429
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6383), !dbg !36098
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6377), !dbg !36098
  br label %bb.yu, !dbg !35455

bb.jw:                                            ; preds = %bb.jn
  %i.adk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(32) %i.fc) #39
          to label %bb.jx unwind label %bb.ay, !dbg !36092

bb.jx:                                            ; preds = %bb.jw
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4read11compression17BasicDecompressorEBO_(ptr noalias noundef align 8 dereferenceable(232) %i.fd) #39
          to label %.thread1605.thread1721 unwind label %bb.ay, !dbg !36092

bb.jy:                                            ; preds = %bb.fm
  %i.adl = getelementptr inbounds nuw i8, ptr %i.ov, i64 1, !dbg !35432
  %i.adm = load i8, ptr %i.adl, align 1, !dbg !35432, !range !1576, !noundef !1032
  switch i8 %i.adm, label %default.unreachable1901 [
    i8 0, label %bb.jz
    i8 1, label %bb.ka
    i8 3, label %bb.kb
    i8 2, label %.thread1650
  ], !dbg !35433

bb.jz:                                            ; preds = %bb.jy
  %i.adn = load i64, ptr %7, align 8, !dbg !35433, !noundef !1032
  %i.ado = icmp eq i64 %i.adn, 12, !dbg !35433
  br i1 %i.ado, label %bb.kc, label %.thread1650, !dbg !35433

bb.ka:                                            ; preds = %bb.jy
  %i.adp = load i64, ptr %7, align 8, !dbg !35433, !noundef !1032
  %i.adq = icmp eq i64 %i.adp, 12, !dbg !35433
  br i1 %i.adq, label %bb.kt, label %.thread1650, !dbg !35433

bb.kb:                                            ; preds = %bb.jy
  %i.adr = load i64, ptr %7, align 8, !dbg !35433, !noundef !1032
  %i.ads = icmp eq i64 %i.adr, 12, !dbg !35433
  br i1 %i.ads, label %bb.lk, label %.thread1650, !dbg !35433

bb.kc:                                            ; preds = %bb.jz
  store i64 12, ptr %i.lb, align 8, !dbg !36108
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6135.sroa.8), !dbg !34914
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ky), !dbg !34914
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6140), !dbg !34914
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kx), !dbg !34914
  %i.adt = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !36109 ; 2 uses
  %i.adu = getelementptr inbounds nuw i8, ptr %3, i64 55, !dbg !36110
  %i.adv = load i8, ptr %i.adu, align 1, !dbg !36110, !range !1108, !alias.scope !34913, !noundef !1032 ; 2 uses
  %i.adw = icmp ugt i8 %i.adv, -41, !dbg !36111
  br i1 %i.adw, label %bb.ke, label %bb.kd, !dbg !36111

bb.kd:                                            ; preds = %bb.kc
  %i.adx = add i8 %i.adv, 64, !dbg !36112
  %i.ady = call i8 @llvm.umin.i8(i8 %i.adx, i8 24), !dbg !36113
  %.sroa.0.0.i.i1422 = zext nneg i8 %i.ady to i64, !dbg !36113
  br label %bb.kf, !dbg !36114

bb.ke:                                            ; preds = %bb.kc
  %i.adz = load ptr, ptr %i.adt, align 8, !dbg !36115, !alias.scope !34913, !noundef !1032
  %i.aea = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !36116
  %i.aeb = load i64, ptr %i.aea, align 8, !dbg !36116, !alias.scope !34913, !noundef !1032
  br label %bb.kf, !dbg !36117

bb.kf:                                            ; preds = %bb.ke, %bb.kd
  %.sroa.01.0.i1423 = phi i64 [ %i.aeb, %bb.ke ], [ %.sroa.0.0.i.i1422, %bb.kd ], !dbg !36118
  %.sroa.0.0.i1424 = phi ptr [ %i.adz, %bb.ke ], [ %i.adt, %bb.kd ], !dbg !36119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kw), !dbg !36120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.kw, ptr noundef nonnull align 8 dereferenceable(232) %1, i64 232, i1 false), !dbg !36120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kv), !dbg !36121
  %i.aec = getelementptr inbounds nuw i8, ptr %i.kv, i64 8, !dbg !36121
  store i64 12, ptr %i.aec, align 8, !dbg !36121
  store i8 23, ptr %i.kv, align 8, !dbg !36121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ku), !dbg !36122
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ku, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !dbg !36122
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderNtNtB7_17fixed_size_binary13BinaryDecoderE3newBd_(ptr noalias noundef nonnull sret([400 x i8]) align 8 captures(none) dereferenceable(400) %i.kx, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i1424, i64 noundef %.sroa.01.0.i1423, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(232) %i.kw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.kv, i64 noundef 12, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ku)
          to label %bb.kg unwind label %.thread1620, !dbg !34914

bb.kg:                                            ; preds = %bb.kf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ku), !dbg !36123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kv), !dbg !36123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kw), !dbg !36123
  %i.aed = load i64, ptr %i.kx, align 8, !dbg !36124, !range !1573, !noundef !1032 ; 2 uses
  %i.aee = icmp eq i64 %i.aed, 8, !dbg !36124
  %i.aef = getelementptr inbounds nuw i8, ptr %i.kx, i64 8, !dbg !36125
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6140, ptr noundef nonnull align 8 dereferenceable(32) %i.aef, i64 32, i1 false), !dbg !36125
  br i1 %i.aee, label %bb.kh, label %bb.ki, !dbg !36126

bb.kh:                                            ; preds = %bb.kg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kx), !dbg !36127
  %i.aeg = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aeg, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6140, i64 32, i1 false), !dbg !36127
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !36128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ky), !dbg !36129
  br label %bb.ks, !dbg !36130

bb.ki:                                            ; preds = %bb.kg
  %.sroa.6776.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kx, i64 40, !dbg !36131
  %.sroa.8142.0..sroa_idx143 = getelementptr inbounds nuw i8, ptr %i.kt, i64 40, !dbg !34914
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %.sroa.8142.0..sroa_idx143, ptr noundef nonnull align 8 dereferenceable(360) %.sroa.6776.0..sroa_idx, i64 360, i1 false), !dbg !36131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kx), !dbg !36127
  store i64 %i.aed, ptr %i.kt, align 8, !dbg !34914
  %.sroa.6140.0..sroa_idx141 = getelementptr inbounds nuw i8, ptr %i.kt, i64 8, !dbg !34914
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6140.0..sroa_idx141, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6140, i64 32, i1 false), !dbg !34914
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ks), !dbg !36132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ks, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !dbg !36132
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderNtNtB7_17fixed_size_binary13BinaryDecoderE7collectBd_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.ky, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(400) %i.kt, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.ks)
          to label %bb.kj unwind label %.thread1620, !dbg !36133

bb.kj:                                            ; preds = %bb.ki
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ks), !dbg !36134
  %i.aeh = load i64, ptr %i.ky, align 8, !dbg !36135, !range !1034, !noundef !1032 ; 2 uses
  %i.aei = icmp eq i64 %i.aeh, -9223372036854775808, !dbg !36135
  %i.aej = getelementptr inbounds nuw i8, ptr %i.ky, i64 8, !dbg !36136
  %.sroa.01080.0.copyload = load ptr, ptr %i.aej, align 8, !dbg !36136 ; 5 uses
  %.sroa.51081.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ky, i64 16, !dbg !36136
  %.sroa.51081.0.copyload = load i64, ptr %.sroa.51081.0..sroa_idx, align 8, !dbg !36136 ; 3 uses
  %.sroa.61082.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ky, i64 24, !dbg !36136 ; 2 uses
  br i1 %i.aei, label %bb.kk, label %bb.kl, !dbg !36137

bb.kk:                                            ; preds = %bb.kj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6135.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.61082.0..sroa_idx, i64 16, i1 false), !dbg !36138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ky), !dbg !36129
  %.sroa.31076.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !36139
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.31076.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6135.sroa.8, i64 16, i1 false), !dbg !36129
  %i.aek = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36139
  store ptr %.sroa.01080.0.copyload, ptr %i.aek, align 8, !dbg !36139
  %.sroa.21075.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !36139
  store i64 %.sroa.51081.0.copyload, ptr %.sroa.21075.0..sroa_idx, align 8, !dbg !36139
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !36139
  br label %bb.ks, !dbg !36140

bb.kl:                                            ; preds = %bb.kj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6135.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.61082.0..sroa_idx, i64 24, i1 false), !dbg !36141
  %.sroa.6779.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ky, i64 48, !dbg !36141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kz), !dbg !36142
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.kz, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6779.0..sroa_idx, i64 32, i1 false), !dbg !36141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ky), !dbg !36129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.la), !dbg !36143
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.la, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6135.sroa.8, i64 24, i1 false), !dbg !34914
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6140), !dbg !36140
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6135.sroa.8), !dbg !36140
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6146.sroa.7), !dbg !34934
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kr), !dbg !34934
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01080.0.copyload) ], !dbg !36144
  %i.ael = icmp ult i64 %.sroa.51081.0.copyload, 96076792050570582, !dbg !36145
  call void @llvm.assume(i1 %i.ael), !dbg !36146
  %i.aem = getelementptr inbounds nuw [96 x i8], ptr %.sroa.01080.0.copyload, i64 %.sroa.51081.0.copyload, !dbg !36147
  store ptr %.sroa.01080.0.copyload, ptr %i.kq, align 8, !dbg !36148
  %.sroa.4149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kq, i64 8, !dbg !36148
  store ptr %.sroa.01080.0.copyload, ptr %.sroa.4149.0..sroa_idx, align 8, !dbg !36148
  %.sroa.5150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kq, i64 16, !dbg !36148
  store i64 %i.aeh, ptr %.sroa.5150.0..sroa_idx, align 8, !dbg !36148
  %.sroa.6151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kq, i64 24, !dbg !36148
  store ptr %i.aem, ptr %.sroa.6151.0..sroa_idx, align 8, !dbg !36148
  %i.aen = getelementptr inbounds nuw i8, ptr %i.kq, i64 32, !dbg !36148
  store ptr %i.lb, ptr %i.aen, align 8, !dbg !36148
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.kq, i64 40, !dbg !36148
  store ptr %i.oo, ptr %i.aeo, align 8, !dbg !36148
  invoke void @_RINvNtNtCscgRAwXFJnXP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binary20FixedSizeBinaryArrayENCNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize6simple18page_iter_to_arrays_0EINtNtB1d_5boxed3BoxDNtB1Y_5ArrayEL_EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtNtB3q_7parquet5error12ParquetErrorENCINvXso_B5q_IB5o_INtB1b_3VecB4N_EB6a_EINtNtNtB4_6traits7collect12FromIteratorIB5o_B4N_B6a_EE9from_iterBQ_E0B75_EB3q_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.kr, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.kq)
          to label %bb.kn unwind label %bb.km, !dbg !36149

bb.km:                                            ; preds = %bb.kl
  %i.aep = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.kz)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1427 unwind label %bb.ay, !dbg !36150

bb.kn:                                            ; preds = %bb.kl
  %i.aeq = load i64, ptr %i.kr, align 8, !dbg !36151, !range !1553, !noundef !1032 ; 2 uses
  %.not1290 = icmp eq i64 %i.aeq, -9223372036854775803, !dbg !36151
  %i.aer = getelementptr inbounds nuw i8, ptr %i.kr, i64 8, !dbg !36152
  %.sroa.0780.0.copyload = load i64, ptr %i.aer, align 8, !dbg !36152 ; 2 uses
  %.sroa.5781.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kr, i64 16, !dbg !36152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6146.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5781.0..sroa_idx, i64 16, i1 false), !dbg !36152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kr), !dbg !36153
  br i1 %.not1290, label %bb.kp, label %bb.ko, !dbg !36154

bb.ko:                                            ; preds = %bb.kn
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !36155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6146.sroa.7, i64 16, i1 false), !dbg !36153
  %i.aes = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36155
  store i64 %i.aeq, ptr %i.aes, align 8, !dbg !36155
  %.sroa.2789.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !36155
  store i64 %.sroa.0780.0.copyload, ptr %.sroa.2789.0..sroa_idx, align 8, !dbg !36155
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !36155
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6146.sroa.7), !dbg !36156
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.kz)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1429 unwind label %bb.kq, !dbg !36157

bb.kp:                                            ; preds = %bb.kn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.40, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6146.sroa.7, i64 16, i1 false), !dbg !34934
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6146.sroa.7), !dbg !36156
  %.sroa.40.24..sroa_idx548 = getelementptr inbounds nuw i8, ptr %.sroa.40, i64 16, !dbg !36158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.40.24..sroa_idx548, ptr noundef nonnull align 8 dereferenceable(24) %i.la, i64 24, i1 false), !dbg !36159
  %.sroa.40.48..sroa_idx584 = getelementptr inbounds nuw i8, ptr %.sroa.40, i64 40, !dbg !36158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.40.48..sroa_idx584, ptr noundef nonnull align 8 dereferenceable(32) %i.kz, i64 32, i1 false), !dbg !36160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kz), !dbg !36161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.la), !dbg !36161
  br label %bb.ef, !dbg !36162

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1427: ; preds = %bb.km, %bb.kq
  %.pn1291 = phi { ptr, i32 } [ %i.aet, %bb.kq ], [ %i.aep, %bb.km ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize12nested_utils11NestedStateEEB1c_(ptr noalias noundef align 8 dereferenceable(24) %i.la) #39
          to label %.thread1611 unwind label %bb.ay, !dbg !36161

bb.kq:                                            ; preds = %bb.ko
  %i.aet = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1427

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1429: ; preds = %bb.ko
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kz), !dbg !36161
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize12nested_utils11NestedStateEEB1c_(ptr noalias noundef align 8 dereferenceable(24) %i.la)
          to label %bb.kr unwind label %.thread1620, !dbg !36161

bb.kr:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1429
  call void @llvm.lifetime.end.p0(ptr nonnull %i.la), !dbg !36161
  br label %bb.eh, !dbg !36130

bb.ks:                                            ; preds = %bb.kk, %bb.kh
  %.sroa.0650.20 = phi i8 [ 1, %bb.kh ], [ 0, %bb.kk ], !dbg !35429
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6140), !dbg !36140
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6135.sroa.8), !dbg !36140
  br label %bb.eh, !dbg !36130

bb.kt:                                            ; preds = %bb.ka
  store i64 12, ptr %i.kp, align 8, !dbg !36163
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6155.sroa.8), !dbg !34945
  call void @llvm.lifetime.start.p0(ptr nonnull %i.km), !dbg !34945
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6160), !dbg !34945
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kl), !dbg !34945
  %i.aeu = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !36164 ; 2 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %3, i64 55, !dbg !36165
  %i.aew = load i8, ptr %i.aev, align 1, !dbg !36165, !range !1108, !alias.scope !34944, !noundef !1032 ; 2 uses
  %i.aex = icmp ugt i8 %i.aew, -41, !dbg !36166
  br i1 %i.aex, label %bb.kv, label %bb.ku, !dbg !36166
end_hunk_2
begin_hunk_3_@_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize6simple18page_iter_to_array:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6176.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.61124.0..sroa_idx, i64 24, i1 false), !dbg !36249
  %.sroa.6812.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kb, i64 48, !dbg !36249
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kc), !dbg !36250
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.kc, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6812.0..sroa_idx, i64 32, i1 false), !dbg !36249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kb), !dbg !36238
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kd), !dbg !36251
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kd, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6176.sroa.8, i64 24, i1 false), !dbg !34976
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6181), !dbg !36248
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6176.sroa.8), !dbg !36248
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01122.0.copyload) ], !dbg !36252
  %i.agn = icmp ult i64 %.sroa.51123.0.copyload, 96076792050570582, !dbg !36253
  call void @llvm.assume(i1 %i.agn), !dbg !36254
  %i.ago = getelementptr inbounds nuw [96 x i8], ptr %.sroa.01122.0.copyload, i64 %.sroa.51123.0.copyload, !dbg !36255
  store ptr %.sroa.01122.0.copyload, ptr %i.jt, align 8, !dbg !36256
  %.sroa.4186.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jt, i64 8, !dbg !36256
  store ptr %.sroa.01122.0.copyload, ptr %.sroa.4186.0..sroa_idx, align 8, !dbg !36256
  %.sroa.5187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jt, i64 16, !dbg !36256
  store i64 %i.agj, ptr %.sroa.5187.0..sroa_idx, align 8, !dbg !36256
  %.sroa.6188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jt, i64 24, !dbg !36256
  store ptr %i.ago, ptr %.sroa.6188.0..sroa_idx, align 8, !dbg !36256
  invoke void @_RINvNtNtCsgZ49sUHp3tW_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binary20FixedSizeBinaryArrayENCNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize6simple18page_iter_to_arrays1_0EINtNtB6_5boxed3BoxDNtB2p_5ArrayEL_EEB3R_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ju, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.jt)
          to label %bb.lv unwind label %bb.lu, !dbg !36257

bb.lu:                                            ; preds = %bb.lt
  %i.agp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.kc)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1443 unwind label %bb.ay, !dbg !36258

bb.lv:                                            ; preds = %bb.lt
  %.sroa.40.24..sroa_idx550 = getelementptr inbounds nuw i8, ptr %.sroa.40, i64 16, !dbg !36259
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.40.24..sroa_idx550, ptr noundef nonnull align 8 dereferenceable(24) %i.kd, i64 24, i1 false), !dbg !36260
  %.sroa.40.48..sroa_idx586 = getelementptr inbounds nuw i8, ptr %.sroa.40, i64 40, !dbg !36259
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.40.48..sroa_idx586, ptr noundef nonnull align 8 dereferenceable(32) %i.kc, i64 32, i1 false), !dbg !36261
  %.sroa.0521.0.copyload528 = load i64, ptr %i.ju, align 8, !dbg !36259
  %.sroa.40.0..sroa_idx540 = getelementptr inbounds nuw i8, ptr %i.ju, i64 8, !dbg !36259
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.40, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.40.0..sroa_idx540, i64 16, i1 false), !dbg !36259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kc), !dbg !36262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kd), !dbg !36262
  br label %bb.ef, !dbg !36262

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1443: ; preds = %bb.lu
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize12nested_utils11NestedStateEEB1c_(ptr noalias noundef align 8 dereferenceable(24) %i.kd) #39
          to label %.thread1611 unwind label %bb.ay, !dbg !36262

bb.lw:                                            ; preds = %bb.ls, %bb.lp
  %.sroa.0650.22 = phi i8 [ 1, %bb.lp ], [ 0, %bb.ls ], !dbg !35429
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6181), !dbg !36248
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6176.sroa.8), !dbg !36248
  br label %bb.eh, !dbg !35455

bb.lx:                                            ; preds = %bb.fn
  %i.agq = invoke noundef i64 @_RNvMs1_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray8get_size(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.oo)
          to label %bb.ly unwind label %.thread1620, !dbg !36263

bb.ly:                                            ; preds = %bb.lx
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6123), !dbg !35004
  call void @llvm.lifetime.start.p0(ptr nonnull %i.li), !dbg !35004
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6129), !dbg !35004
  call void @llvm.lifetime.start.p0(ptr nonnull %i.lh), !dbg !35004
  %i.agr = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !36264 ; 2 uses
  %i.ags = getelementptr inbounds nuw i8, ptr %3, i64 55, !dbg !36265
  %i.agt = load i8, ptr %i.ags, align 1, !dbg !36265, !range !1108, !alias.scope !35003, !noundef !1032 ; 2 uses
  %i.agu = icmp ugt i8 %i.agt, -41, !dbg !36266
  br i1 %i.agu, label %bb.ma, label %bb.lz, !dbg !36266

bb.lz:                                            ; preds = %bb.ly
  %i.agv = add i8 %i.agt, 64, !dbg !36267
  %i.agw = call i8 @llvm.umin.i8(i8 %i.agv, i8 24), !dbg !36268
  %.sroa.0.0.i.i1444 = zext nneg i8 %i.agw to i64, !dbg !36268
  br label %bb.mb, !dbg !36269

bb.ma:                                            ; preds = %bb.ly
  %i.agx = load ptr, ptr %i.agr, align 8, !dbg !36270, !alias.scope !35003, !noundef !1032
  %i.agy = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !36271
  %i.agz = load i64, ptr %i.agy, align 8, !dbg !36271, !alias.scope !35003, !noundef !1032
  br label %bb.mb, !dbg !36272

bb.mb:                                            ; preds = %bb.ma, %bb.lz
  %.sroa.01.0.i1445 = phi i64 [ %i.agz, %bb.ma ], [ %.sroa.0.0.i.i1444, %bb.lz ], !dbg !36273
  %.sroa.0.0.i1446 = phi ptr [ %i.agx, %bb.ma ], [ %i.agr, %bb.lz ], !dbg !36274
  call void @llvm.lifetime.start.p0(ptr nonnull %i.lg), !dbg !36275
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.lg, ptr noundef nonnull align 8 dereferenceable(232) %1, i64 232, i1 false), !dbg !36275
  call void @llvm.lifetime.start.p0(ptr nonnull %i.lf), !dbg !36276
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.lf, ptr noundef nonnull align 8 dereferenceable(32) %i.oo, i64 32, i1 false), !dbg !36276
  call void @llvm.lifetime.start.p0(ptr nonnull %i.le), !dbg !36277
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.le, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !dbg !36277
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderNtNtB7_17fixed_size_binary13BinaryDecoderE3newBd_(ptr noalias noundef nonnull sret([400 x i8]) align 8 captures(none) dereferenceable(400) %i.lh, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i1446, i64 noundef %.sroa.01.0.i1445, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(232) %i.lg, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.lf, i64 noundef %i.agq, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.le)
          to label %bb.mc unwind label %bb.f, !dbg !35004

bb.mc:                                            ; preds = %bb.mb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.le), !dbg !36278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lf), !dbg !36278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lg), !dbg !36278
  %i.aha = load i64, ptr %i.lh, align 8, !dbg !36279, !range !1573, !noundef !1032 ; 2 uses
  %i.ahb = icmp eq i64 %i.aha, 8, !dbg !36279
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.lh, i64 8, !dbg !36280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6129, ptr noundef nonnull align 8 dereferenceable(32) %i.ahc, i64 32, i1 false), !dbg !36280
  br i1 %i.ahb, label %bb.md, label %bb.me, !dbg !36281

bb.md:                                            ; preds = %bb.mc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lh), !dbg !36282
  %i.ahd = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36283
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ahd, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6129, i64 32, i1 false), !dbg !36282
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !36283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.li), !dbg !36284
  br label %bb.mi, !dbg !36285

bb.me:                                            ; preds = %bb.mc
  %.sroa.6770.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lh, i64 40, !dbg !36286
  %.sroa.8131.0..sroa_idx132 = getelementptr inbounds nuw i8, ptr %i.ld, i64 40, !dbg !35004
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %.sroa.8131.0..sroa_idx132, ptr noundef nonnull align 8 dereferenceable(360) %.sroa.6770.0..sroa_idx, i64 360, i1 false), !dbg !36286
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lh), !dbg !36282
  store i64 %i.aha, ptr %i.ld, align 8, !dbg !35004
  %.sroa.6129.0..sroa_idx130 = getelementptr inbounds nuw i8, ptr %i.ld, i64 8, !dbg !35004
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6129.0..sroa_idx130, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6129, i64 32, i1 false), !dbg !35004
  call void @llvm.lifetime.start.p0(ptr nonnull %i.lc), !dbg !36287
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.lc, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !dbg !36287
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderNtNtB7_17fixed_size_binary13BinaryDecoderE13collect_boxedBd_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.li, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(400) %i.ld, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.lc)
          to label %bb.mf unwind label %bb.f, !dbg !36288

bb.mf:                                            ; preds = %bb.me
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lc), !dbg !36289
  %i.ahe = load i64, ptr %i.li, align 8, !dbg !36290, !range !1034, !noundef !1032 ; 2 uses
  %i.ahf = icmp eq i64 %i.ahe, -9223372036854775808, !dbg !36290
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.li, i64 8, !dbg !36291
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6123, ptr noundef nonnull align 8 dereferenceable(32) %i.ahg, i64 32, i1 false), !dbg !36291
  br i1 %i.ahf, label %bb.mg, label %bb.mh, !dbg !36292

bb.mg:                                            ; preds = %bb.mf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.li), !dbg !36284
  %i.ahh = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36293
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ahh, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6123, i64 32, i1 false), !dbg !36284
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !36293
  br label %bb.mi, !dbg !36284

bb.mh:                                            ; preds = %bb.mf
  %.sroa.6773.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.li, i64 40, !dbg !36294
  %.sroa.40.40..sroa_idx564 = getelementptr inbounds nuw i8, ptr %.sroa.40, i64 32, !dbg !35004
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.40.40..sroa_idx564, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6773.0..sroa_idx, i64 40, i1 false), !dbg !36294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.li), !dbg !36284
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.40, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6123, i64 32, i1 false), !dbg !35004
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6129), !dbg !36284
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6123), !dbg !36284
  br label %bb.y, !dbg !36295

bb.mi:                                            ; preds = %bb.mg, %bb.md
  %.sroa.0650.23 = phi i8 [ 1, %bb.md ], [ 0, %bb.mg ], !dbg !35429
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6129), !dbg !36284
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6123), !dbg !36284
  br label %bb.yu, !dbg !35455

bb.mj:                                            ; preds = %bb.fo
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6245), !dbg !35034
  call void @llvm.lifetime.start.p0(ptr nonnull %i.io), !dbg !35034
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6251), !dbg !35034
  call void @llvm.lifetime.start.p0(ptr nonnull %i.in), !dbg !35034
  %i.ahi = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !36296 ; 2 uses
  %i.ahj = getelementptr inbounds nuw i8, ptr %3, i64 55, !dbg !36297
  %i.ahk = load i8, ptr %i.ahj, align 1, !dbg !36297, !range !1108, !alias.scope !35019, !noundef !1032 ; 2 uses
  %i.ahl = icmp ugt i8 %i.ahk, -41, !dbg !36298
  br i1 %i.ahl, label %bb.ml, label %bb.mk, !dbg !36298

bb.mk:                                            ; preds = %bb.mj
  %i.ahm = add i8 %i.ahk, 64, !dbg !36299
  %i.ahn = call i8 @llvm.umin.i8(i8 %i.ahm, i8 24), !dbg !36300
  %.sroa.0.0.i.i1448 = zext nneg i8 %i.ahn to i64, !dbg !36300
  br label %bb.nb, !dbg !36301

bb.ml:                                            ; preds = %bb.mj
  %i.aho = load ptr, ptr %i.ahi, align 8, !dbg !36302, !alias.scope !35019, !noundef !1032
  %i.ahp = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !36303
  %i.ahq = load i64, ptr %i.ahp, align 8, !dbg !36303, !alias.scope !35019, !noundef !1032
  br label %bb.nb, !dbg !36304

bb.mm:                                            ; preds = %bb.fo
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6278.sroa.8), !dbg !35040
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ho), !dbg !35040
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6283), !dbg !35040
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hn), !dbg !35040
  %i.ahr = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !36305 ; 2 uses
  %i.ahs = getelementptr inbounds nuw i8, ptr %3, i64 55, !dbg !36306
  %i.aht = load i8, ptr %i.ahs, align 1, !dbg !36306, !range !1108, !alias.scope !35027, !noundef !1032 ; 2 uses
  %i.ahu = icmp ugt i8 %i.aht, -41, !dbg !36307
  br i1 %i.ahu, label %bb.mo, label %bb.mn, !dbg !36307

bb.mn:                                            ; preds = %bb.mm
  %i.ahv = add i8 %i.aht, 64, !dbg !36308
  %i.ahw = call i8 @llvm.umin.i8(i8 %i.ahv, i8 24), !dbg !36309
  %.sroa.0.0.i.i1452 = zext nneg i8 %i.ahw to i64, !dbg !36309
  br label %bb.nn, !dbg !36310

bb.mo:                                            ; preds = %bb.mm
  %i.ahx = load ptr, ptr %i.ahr, align 8, !dbg !36311, !alias.scope !35027, !noundef !1032
  %i.ahy = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !36312
  %i.ahz = load i64, ptr %i.ahy, align 8, !dbg !36312, !alias.scope !35027, !noundef !1032
  br label %bb.nn, !dbg !36313

bb.mp:                                            ; preds = %bb.fo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ig), !dbg !36314
  store ptr %7, ptr %i.ig, align 8, !dbg !36314
  %i.aia = load i64, ptr %7, align 8, !dbg !36315, !noundef !1032 ; 4 uses
  %i.aib = icmp ugt i64 %i.aia, 16, !dbg !36315
  br i1 %i.aib, label %bb.oe, label %bb.ob, !dbg !36315

bb.mq:                                            ; preds = %bb.ff, %bb.fe
  %.sroa.01.0.i1388 = phi i64 [ %i.xo, %bb.ff ], [ %.sroa.0.0.i.i1387, %bb.fe ], !dbg !36316
  %.sroa.0.0.i1389 = phi ptr [ %i.xm, %bb.ff ], [ %i.xg, %bb.fe ], !dbg !36317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.iu), !dbg !36318
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.iu, ptr noundef nonnull align 8 dereferenceable(232) %1, i64 232, i1 false), !dbg !36318
  call void @llvm.lifetime.start.p0(ptr nonnull %i.it), !dbg !36319
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.it, ptr noundef nonnull align 8 dereferenceable(32) %i.oo, i64 32, i1 false), !dbg !36319
  call void @llvm.lifetime.start.p0(ptr nonnull %i.is), !dbg !36320
  invoke void @_RNvMs2_NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize9primitive7integerINtB5_10IntDecoderlnINtB7_19IntoDecoderFunctionlnEE9cast_intoBf_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.is)
          to label %bb.mr unwind label %bb.mz, !dbg !36320

bb.mr:                                            ; preds = %bb.mq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ir), !dbg !36321
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ir, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !dbg !36321
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderINtNtNtB7_9primitive7integer10IntDecoderlnINtB1z_19IntoDecoderFunctionlnEEE3newBd_(ptr noalias noundef nonnull sret([408 x i8]) align 8 captures(none) dereferenceable(408) %i.iv, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i1389, i64 noundef %.sroa.01.0.i1388, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(232) %i.iu, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.it, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.is, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ir)
          to label %bb.ms unwind label %.thread1654, !dbg !35028

.thread1654:                                      ; preds = %bb.mr
  %i.aic = landingpad { ptr, i32 }
          cleanup
  br label %.thread1695, !dbg !36322

bb.ms:                                            ; preds = %bb.mr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ir), !dbg !36322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.is), !dbg !36322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.it), !dbg !36322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iu), !dbg !36322
  %i.aid = load i64, ptr %i.iv, align 8, !dbg !36323, !range !1573, !noundef !1032 ; 2 uses
  %i.aie = icmp eq i64 %i.aid, 8, !dbg !36323
  %i.aif = getelementptr inbounds nuw i8, ptr %i.iv, i64 8, !dbg !36324
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6239, ptr noundef nonnull align 8 dereferenceable(32) %i.aif, i64 32, i1 false), !dbg !36324
  br i1 %i.aie, label %bb.mt, label %bb.mu, !dbg !36325

bb.mt:                                            ; preds = %bb.ms
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iv), !dbg !36326
  %i.aig = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36327
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aig, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6239, i64 32, i1 false), !dbg !36326
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !36327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iw), !dbg !36328
  br label %bb.my, !dbg !35455

bb.mu:                                            ; preds = %bb.ms
  %.sroa.6849.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iv, i64 40, !dbg !36329
  %.sroa.8241.0..sroa_idx242 = getelementptr inbounds nuw i8, ptr %i.iq, i64 40, !dbg !35028
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %.sroa.8241.0..sroa_idx242, ptr noundef nonnull align 8 dereferenceable(368) %.sroa.6849.0..sroa_idx, i64 368, i1 false), !dbg !36329
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iv), !dbg !36326
  store i64 %i.aid, ptr %i.iq, align 8, !dbg !35028
  %.sroa.6239.0..sroa_idx240 = getelementptr inbounds nuw i8, ptr %i.iq, i64 8, !dbg !35028
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6239.0..sroa_idx240, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6239, i64 32, i1 false), !dbg !35028
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ip), !dbg !36330
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ip, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !dbg !36330
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderINtNtNtB7_9primitive7integer10IntDecoderlnINtB1z_19IntoDecoderFunctionlnEEE13collect_boxedBd_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.iw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(408) %i.iq, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.ip)
          to label %bb.mv unwind label %bb.f, !dbg !36331

bb.mv:                                            ; preds = %bb.mu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ip), !dbg !36332
  %i.aih = load i64, ptr %i.iw, align 8, !dbg !36333, !range !1034, !noundef !1032 ; 2 uses
  %i.aii = icmp eq i64 %i.aih, -9223372036854775808, !dbg !36333
  %i.aij = getelementptr inbounds nuw i8, ptr %i.iw, i64 8, !dbg !36334
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6233, ptr noundef nonnull align 8 dereferenceable(32) %i.aij, i64 32, i1 false), !dbg !36334
  br i1 %i.aii, label %bb.mw, label %bb.mx, !dbg !36335

bb.mw:                                            ; preds = %bb.mv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iw), !dbg !36328
  %i.aik = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aik, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6233, i64 32, i1 false), !dbg !36328
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !36336
  br label %bb.my, !dbg !36328

bb.mx:                                            ; preds = %bb.mv
  %.sroa.6852.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iw, i64 40, !dbg !36337
  %.sroa.40.40..sroa_idx565 = getelementptr inbounds nuw i8, ptr %.sroa.40, i64 32, !dbg !35028
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.40.40..sroa_idx565, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6852.0..sroa_idx, i64 40, i1 false), !dbg !36337
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iw), !dbg !36328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.40, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6233, i64 32, i1 false), !dbg !35028
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6239), !dbg !36328
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6233), !dbg !36328
  br label %bb.y, !dbg !36328

bb.my:                                            ; preds = %bb.mw, %bb.mt
  %.sroa.0650.24 = phi i8 [ 1, %bb.mt ], [ 0, %bb.mw ], !dbg !35429
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6239), !dbg !36328
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6233), !dbg !36328
  br label %bb.yu, !dbg !35455

bb.mz:                                            ; preds = %bb.mq
  %i.ail = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(32) %i.it) #39
          to label %bb.na unwind label %bb.ay, !dbg !36322

bb.na:                                            ; preds = %bb.mz
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4read11compression17BasicDecompressorEBO_(ptr noalias noundef align 8 dereferenceable(232) %i.iu) #39
          to label %.thread1605.thread1721 unwind label %bb.ay, !dbg !36322

bb.nb:                                            ; preds = %bb.ml, %bb.mk
  %.sroa.01.0.i1449 = phi i64 [ %i.ahq, %bb.ml ], [ %.sroa.0.0.i.i1448, %bb.mk ], !dbg !36338
  %.sroa.0.0.i1450 = phi ptr [ %i.aho, %bb.ml ], [ %i.ahi, %bb.mk ], !dbg !36339
  call void @llvm.lifetime.start.p0(ptr nonnull %i.im), !dbg !36340
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.im, ptr noundef nonnull align 8 dereferenceable(232) %1, i64 232, i1 false), !dbg !36340
  call void @llvm.lifetime.start.p0(ptr nonnull %i.il), !dbg !36341
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.il, ptr noundef nonnull align 8 dereferenceable(32) %i.oo, i64 32, i1 false), !dbg !36341
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ik), !dbg !36342
  invoke void @_RNvMs2_NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize9primitive7integerINtB5_10IntDecoderxnINtB7_19IntoDecoderFunctionxnEE9cast_intoBf_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ik)
          to label %bb.nc unwind label %bb.nk, !dbg !36342

bb.nc:                                            ; preds = %bb.nb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ij), !dbg !36343
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ij, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !dbg !36343
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderINtNtNtB7_9primitive7integer10IntDecoderxnINtB1z_19IntoDecoderFunctionxnEEE3newBd_(ptr noalias noundef nonnull sret([408 x i8]) align 8 captures(none) dereferenceable(408) %i.in, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i1450, i64 noundef %.sroa.01.0.i1449, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(232) %i.im, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.il, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ik, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ij)
          to label %bb.nd unwind label %.thread1657, !dbg !35034

.thread1657:                                      ; preds = %bb.nc
  %i.aim = landingpad { ptr, i32 }
          cleanup
  br label %.thread1695, !dbg !36344

bb.nd:                                            ; preds = %bb.nc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ij), !dbg !36344
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ik), !dbg !36344
  call void @llvm.lifetime.end.p0(ptr nonnull %i.il), !dbg !36344
  call void @llvm.lifetime.end.p0(ptr nonnull %i.im), !dbg !36344
  %i.ain = load i64, ptr %i.in, align 8, !dbg !36345, !range !1573, !noundef !1032 ; 2 uses
  %i.aio = icmp eq i64 %i.ain, 8, !dbg !36345
  %i.aip = getelementptr inbounds nuw i8, ptr %i.in, i64 8, !dbg !36346
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6251, ptr noundef nonnull align 8 dereferenceable(32) %i.aip, i64 32, i1 false), !dbg !36346
  br i1 %i.aio, label %bb.ne, label %bb.nf, !dbg !36347

bb.ne:                                            ; preds = %bb.nd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.in), !dbg !36348
  %i.aiq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36349
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aiq, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6251, i64 32, i1 false), !dbg !36348
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !36349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.io), !dbg !36350
  br label %bb.nj, !dbg !35455

bb.nf:                                            ; preds = %bb.nd
  %.sroa.6855.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.in, i64 40, !dbg !36351
  %.sroa.8253.0..sroa_idx254 = getelementptr inbounds nuw i8, ptr %i.ii, i64 40, !dbg !35034
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %.sroa.8253.0..sroa_idx254, ptr noundef nonnull align 8 dereferenceable(368) %.sroa.6855.0..sroa_idx, i64 368, i1 false), !dbg !36351
  call void @llvm.lifetime.end.p0(ptr nonnull %i.in), !dbg !36348
  store i64 %i.ain, ptr %i.ii, align 8, !dbg !35034
  %.sroa.6251.0..sroa_idx252 = getelementptr inbounds nuw i8, ptr %i.ii, i64 8, !dbg !35034
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6251.0..sroa_idx252, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6251, i64 32, i1 false), !dbg !35034
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ih), !dbg !36352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ih, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !dbg !36352
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderINtNtNtB7_9primitive7integer10IntDecoderxnINtB1z_19IntoDecoderFunctionxnEEE13collect_boxedBd_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.io, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(408) %i.ii, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.ih)
          to label %bb.ng unwind label %bb.f, !dbg !36353

bb.ng:                                            ; preds = %bb.nf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ih), !dbg !36354
  %i.air = load i64, ptr %i.io, align 8, !dbg !36355, !range !1034, !noundef !1032 ; 2 uses
  %i.ais = icmp eq i64 %i.air, -9223372036854775808, !dbg !36355
  %i.ait = getelementptr inbounds nuw i8, ptr %i.io, i64 8, !dbg !36356
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6245, ptr noundef nonnull align 8 dereferenceable(32) %i.ait, i64 32, i1 false), !dbg !36356
  br i1 %i.ais, label %bb.nh, label %bb.ni, !dbg !36357

bb.nh:                                            ; preds = %bb.ng
  call void @llvm.lifetime.end.p0(ptr nonnull %i.io), !dbg !36350
  %i.aiu = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36358
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aiu, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6245, i64 32, i1 false), !dbg !36350
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !36358
  br label %bb.nj, !dbg !36350

bb.ni:                                            ; preds = %bb.ng
  %.sroa.6858.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.io, i64 40, !dbg !36359
  %.sroa.40.40..sroa_idx566 = getelementptr inbounds nuw i8, ptr %.sroa.40, i64 32, !dbg !35034
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.40.40..sroa_idx566, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6858.0..sroa_idx, i64 40, i1 false), !dbg !36359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.io), !dbg !36350
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.40, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6245, i64 32, i1 false), !dbg !35034
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6251), !dbg !36350
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6245), !dbg !36350
  br label %bb.y, !dbg !36350

bb.nj:                                            ; preds = %bb.nh, %bb.ne
  %.sroa.0650.25 = phi i8 [ 1, %bb.ne ], [ 0, %bb.nh ], !dbg !35429
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6251), !dbg !36350
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6245), !dbg !36350
  br label %bb.yu, !dbg !35455

bb.nk:                                            ; preds = %bb.nb
  %i.aiv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(32) %i.il) #39
          to label %bb.nl unwind label %bb.ay, !dbg !36344

bb.nl:                                            ; preds = %bb.nk
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4read11compression17BasicDecompressorEBO_(ptr noalias noundef align 8 dereferenceable(232) %i.im) #39
          to label %.thread1605.thread1721 unwind label %bb.ay, !dbg !36344

bb.nm:                                            ; preds = %bb.nn
  %i.aiw = landingpad { ptr, i32 }
          cleanup
  br label %.thread1611, !dbg !36360

bb.nn:                                            ; preds = %bb.mn, %bb.mo
  %.sroa.01.0.i1453 = phi i64 [ %i.ahz, %bb.mo ], [ %.sroa.0.0.i.i1452, %bb.mn ], !dbg !36361
end_hunk_3
begin_hunk_4_@_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize6simple18page_iter_to_array:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ia), !dbg !36442
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ia, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6870.0..sroa_idx, i64 32, i1 false), !dbg !36441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hz), !dbg !36429
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ib), !dbg !36443
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ib, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6257.sroa.8, i64 24, i1 false), !dbg !35072
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6262), !dbg !36440
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6257.sroa.8), !dbg !36440
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6268.sroa.7), !dbg !35092
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hs), !dbg !35092
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01185.0.copyload) ], !dbg !36444
  %i.akf = icmp ult i64 %.sroa.51186.0.copyload, 96076792050570582, !dbg !36445
  call void @llvm.assume(i1 %i.akf), !dbg !36446
  %i.akg = getelementptr inbounds nuw [96 x i8], ptr %.sroa.01185.0.copyload, i64 %.sroa.51186.0.copyload, !dbg !36447
  store ptr %.sroa.01185.0.copyload, ptr %i.hr, align 8, !dbg !36448
  %.sroa.4271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hr, i64 8, !dbg !36448
  store ptr %.sroa.01185.0.copyload, ptr %.sroa.4271.0..sroa_idx, align 8, !dbg !36448
  %.sroa.5272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hr, i64 16, !dbg !36448
  store i64 %i.akb, ptr %.sroa.5272.0..sroa_idx, align 8, !dbg !36448
  %.sroa.6273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hr, i64 24, !dbg !36448
  store ptr %i.akg, ptr %.sroa.6273.0..sroa_idx, align 8, !dbg !36448
  %i.akh = getelementptr inbounds nuw i8, ptr %i.hr, i64 32, !dbg !36448
  store ptr %i.ic, ptr %i.akh, align 8, !dbg !36448
  %i.aki = getelementptr inbounds nuw i8, ptr %i.hr, i64 40, !dbg !36448
  store ptr %i.oo, ptr %i.aki, align 8, !dbg !36448
  invoke void @_RINvNtNtCscgRAwXFJnXP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binary20FixedSizeBinaryArrayENCNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize6simple18page_iter_to_arrays4_0EINtNtB1d_5boxed3BoxDNtB1Y_5ArrayEL_EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtNtB3q_7parquet5error12ParquetErrorENCINvXso_B5r_IB5p_INtB1b_3VecB4O_EB6b_EINtNtNtB4_6traits7collect12FromIteratorIB5p_B4O_B6b_EE9from_iterBQ_E0B76_EB3q_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.hs, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.hr)
          to label %bb.on unwind label %bb.om, !dbg !36449

bb.om:                                            ; preds = %bb.ol
  %i.akj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ia)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1466 unwind label %bb.ay, !dbg !36450

bb.on:                                            ; preds = %bb.ol
  %i.akk = load i64, ptr %i.hs, align 8, !dbg !36451, !range !1553, !noundef !1032 ; 2 uses
  %.not1281 = icmp eq i64 %i.akk, -9223372036854775803, !dbg !36451
  %i.akl = getelementptr inbounds nuw i8, ptr %i.hs, i64 8, !dbg !36452
  %.sroa.0871.0.copyload = load i64, ptr %i.akl, align 8, !dbg !36452 ; 2 uses
  %.sroa.5872.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hs, i64 16, !dbg !36452
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6268.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5872.0..sroa_idx, i64 16, i1 false), !dbg !36452
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hs), !dbg !36453
  br i1 %.not1281, label %bb.op, label %bb.oo, !dbg !36454

bb.oo:                                            ; preds = %bb.on
  %.sroa.3881.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !36455
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3881.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6268.sroa.7, i64 16, i1 false), !dbg !36453
  %i.akm = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36455
  store i64 %i.akk, ptr %i.akm, align 8, !dbg !36455
  %.sroa.2880.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !36455
  store i64 %.sroa.0871.0.copyload, ptr %.sroa.2880.0..sroa_idx, align 8, !dbg !36455
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !36455
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6268.sroa.7), !dbg !36456
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ia)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1468 unwind label %bb.oq, !dbg !36457

bb.op:                                            ; preds = %bb.on
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.40, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6268.sroa.7, i64 16, i1 false), !dbg !35092
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6268.sroa.7), !dbg !36456
  %.sroa.40.24..sroa_idx552 = getelementptr inbounds nuw i8, ptr %.sroa.40, i64 16, !dbg !36458
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.40.24..sroa_idx552, ptr noundef nonnull align 8 dereferenceable(24) %i.ib, i64 24, i1 false), !dbg !36459
  %.sroa.40.48..sroa_idx588 = getelementptr inbounds nuw i8, ptr %.sroa.40, i64 40, !dbg !36458
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.40.48..sroa_idx588, ptr noundef nonnull align 8 dereferenceable(32) %i.ia, i64 32, i1 false), !dbg !36460
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ia), !dbg !36461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ib), !dbg !36461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ic), !dbg !36462
  br label %bb.ef, !dbg !36463

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1466: ; preds = %bb.om, %bb.oq
  %.pn1282 = phi { ptr, i32 } [ %i.akn, %bb.oq ], [ %i.akj, %bb.om ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize12nested_utils11NestedStateEEB1c_(ptr noalias noundef align 8 dereferenceable(24) %i.ib) #39
          to label %.thread1611 unwind label %bb.ay, !dbg !36461

bb.oq:                                            ; preds = %bb.oo
  %i.akn = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1466

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1468: ; preds = %bb.oo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ia), !dbg !36461
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize12nested_utils11NestedStateEEB1c_(ptr noalias noundef align 8 dereferenceable(24) %i.ib)
          to label %bb.or unwind label %.thread1620, !dbg !36461

bb.or:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1468
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ib), !dbg !36461
  br label %bb.os, !dbg !36430

bb.os:                                            ; preds = %bb.ot, %bb.or
  %.sroa.0650.27 = phi i8 [ %.sroa.0650.28, %bb.ot ], [ 0, %bb.or ], !dbg !35429
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ic), !dbg !36462
  br label %bb.eh, !dbg !35455

bb.ot:                                            ; preds = %bb.ok, %bb.oh
  %.sroa.0650.28 = phi i8 [ 1, %bb.oh ], [ 0, %bb.ok ], !dbg !35429
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6262), !dbg !36440
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6257.sroa.8), !dbg !36440
  br label %bb.os, !dbg !36430

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.oe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.id), !dbg !36464
  invoke void @_RINvMNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5errorNtB3_12ParquetError13not_supportedNtNtCsgZ49sUHp3tW_5alloc6string6StringEB7_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.if, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ie)
          to label %bb.ou unwind label %.thread1620, !dbg !36415

bb.ou:                                            ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfISxE4fmY1Y_14polars_parquet.exit
  %i.ako = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36465
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ako, ptr noundef nonnull align 8 dereferenceable(32) %i.if, i64 32, i1 false), !dbg !36465
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !36465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.if), !dbg !36466
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ig), !dbg !36403
  br label %bb.ov, !dbg !35455

bb.ov:                                            ; preds = %bb.yv, %bb.qi, %bb.ou
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(32) %i.oo)
          to label %bb.yw unwind label %.split.thread, !dbg !35431

bb.ow:                                            ; preds = %bb.ey
  switch i8 %i.ow, label %.thread1650 [
    i8 5, label %bb.rr
    i8 10, label %bb.ru
    i8 19, label %bb.rr
    i8 20, label %bb.rr
    i8 22, label %bb.pd
    i8 25, label %bb.pd
    i8 32, label %bb.vo
  ], !dbg !35433, !prof !35095

bb.ox:                                            ; preds = %bb.rn
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6449), !dbg !35255
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj), !dbg !35255
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6455), !dbg !35255
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di), !dbg !35255
  %i.akp = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !36467 ; 2 uses
  %i.akq = getelementptr inbounds nuw i8, ptr %3, i64 55, !dbg !36468
  %i.akr = load i8, ptr %i.akq, align 1, !dbg !36468, !range !1108, !alias.scope !35100, !noundef !1032 ; 2 uses
  %i.aks = icmp ugt i8 %i.akr, -41, !dbg !36469
  br i1 %i.aks, label %bb.oz, label %bb.oy, !dbg !36469

bb.oy:                                            ; preds = %bb.ox
  %i.akt = add i8 %i.akr, 64, !dbg !36470
  %i.aku = call i8 @llvm.umin.i8(i8 %i.akt, i8 24), !dbg !36471
  %.sroa.0.0.i.i1469 = zext nneg i8 %i.aku to i64, !dbg !36471
  br label %bb.tv, !dbg !36472

bb.oz:                                            ; preds = %bb.ox
  %i.akv = load ptr, ptr %i.akp, align 8, !dbg !36473, !alias.scope !35100, !noundef !1032
  %i.akw = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !36474
  %i.akx = load i64, ptr %i.akw, align 8, !dbg !36474, !alias.scope !35100, !noundef !1032
  br label %bb.tv, !dbg !36475

bb.pa:                                            ; preds = %bb.rn
  %i.aky = load i8, ptr %i.oo, align 8, !dbg !36476, !range !1100, !noundef !1032
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6461), !dbg !35261
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc), !dbg !35261
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6467), !dbg !35261
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db), !dbg !35261
  %i.akz = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !36477 ; 2 uses
  %i.ala = getelementptr inbounds nuw i8, ptr %3, i64 55, !dbg !36478
  %i.alb = load i8, ptr %i.ala, align 1, !dbg !36478, !range !1108, !alias.scope !35109, !noundef !1032 ; 2 uses
  %i.alc = icmp ugt i8 %i.alb, -41, !dbg !36479
  br i1 %i.alc, label %bb.pc, label %bb.pb, !dbg !36479

bb.pb:                                            ; preds = %bb.pa
  %i.ald = add i8 %i.alb, 64, !dbg !36480
  %i.ale = call i8 @llvm.umin.i8(i8 %i.ald, i8 24), !dbg !36481
  %.sroa.0.0.i.i1473 = zext nneg i8 %i.ale to i64, !dbg !36481
  br label %bb.ue, !dbg !36482

bb.pc:                                            ; preds = %bb.pa
  %i.alf = load ptr, ptr %i.akz, align 8, !dbg !36483, !alias.scope !35109, !noundef !1032
  %i.alg = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !36484
  %i.alh = load i64, ptr %i.alg, align 8, !dbg !36484, !alias.scope !35109, !noundef !1032
  br label %bb.ue, !dbg !36485

bb.pd:                                            ; preds = %bb.ei, %bb.ei, %bb.rn, %bb.rn, %bb.rq, %bb.rq, %bb.rp, %bb.rp, %bb.ro, %bb.ro, %bb.ow, %bb.ow, %.thread1647, %.thread1647
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @140, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @141) #44
          to label %bb.vn unwind label %.thread1620, !dbg !36486

bb.pe:                                            ; preds = %bb.fp
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6311), !dbg !35126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gx), !dbg !35126
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6317), !dbg !35126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gw), !dbg !35126
  %i.ali = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !36487 ; 2 uses
  %i.alj = getelementptr inbounds nuw i8, ptr %3, i64 55, !dbg !36488
  %i.alk = load i8, ptr %i.alj, align 1, !dbg !36488, !range !1108, !alias.scope !35117, !noundef !1032 ; 2 uses
  %i.all = icmp ugt i8 %i.alk, -41, !dbg !36489
  br i1 %i.all, label %bb.pg, label %bb.pf, !dbg !36489

bb.pf:                                            ; preds = %bb.pe
  %i.alm = add i8 %i.alk, 64, !dbg !36490
  %i.aln = call i8 @llvm.umin.i8(i8 %i.alm, i8 24), !dbg !36491
  %.sroa.0.0.i.i1477 = zext nneg i8 %i.aln to i64, !dbg !36491
  br label %bb.ps, !dbg !36492

bb.pg:                                            ; preds = %bb.pe
  %i.alo = load ptr, ptr %i.ali, align 8, !dbg !36493, !alias.scope !35117, !noundef !1032
  %i.alp = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !36494
  %i.alq = load i64, ptr %i.alp, align 8, !dbg !36494, !alias.scope !35117, !noundef !1032
  br label %bb.ps, !dbg !36495

bb.ph:                                            ; preds = %bb.fp
  %i.alr = load i64, ptr %7, align 8, !dbg !36496, !noundef !1032 ; 8 uses
  %i.als = icmp ult i64 %i.alr, 17, !dbg !36496
  br i1 %i.als, label %bb.qb, label %bb.qa, !dbg !36496

bb.pi:                                            ; preds = %bb.pj
  %i.alt = landingpad { ptr, i32 }
          cleanup
  br label %.thread1695, !dbg !36497

bb.pj:                                            ; preds = %bb.fh, %bb.fi
  %.sroa.01.0.i1392 = phi i64 [ %i.xx, %bb.fi ], [ %.sroa.0.0.i.i1391, %bb.fh ], !dbg !36498
  %.sroa.0.0.i1393 = phi ptr [ %i.xv, %bb.fi ], [ %i.xp, %bb.fh ], !dbg !36499
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hd), !dbg !36500
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.hd, ptr noundef nonnull align 8 dereferenceable(232) %1, i64 232, i1 false), !dbg !36500
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hc), !dbg !36501
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hc, ptr noundef nonnull align 8 dereferenceable(32) %i.oo, i64 32, i1 false), !dbg !36501
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hb), !dbg !36502
  store i64 0, ptr %i.hb, align 8, !dbg !36503, !alias.scope !35118
  %.sroa.42.0..sroa_idx.i1481 = getelementptr inbounds nuw i8, ptr %i.hb, i64 8, !dbg !36503
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.42.0..sroa_idx.i1481, align 8, !dbg !36503, !alias.scope !35118
  %.sroa.53.0..sroa_idx.i1482 = getelementptr inbounds nuw i8, ptr %i.hb, i64 16, !dbg !36503
  store i64 0, ptr %.sroa.53.0..sroa_idx.i1482, align 8, !dbg !36503, !alias.scope !35118
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ha), !dbg !36504
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ha, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !dbg !36504
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderINtNtNtB7_9primitive7integer10IntDecoderlNtNtNtCs8774dFTUdNv_12polars_arrow5types6native4i256INtB1z_22ClosureDecoderFunctionlB29_NCNvNtB7_6simple18page_iter_to_arrays6_0EEE3newBd_(ptr noalias noundef nonnull sret([408 x i8]) align 8 captures(none) dereferenceable(408) %i.he, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i1393, i64 noundef %.sroa.01.0.i1392, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(232) %i.hd, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.hc, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.hb, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ha)
          to label %bb.pk unwind label %bb.pi, !dbg !35119

bb.pk:                                            ; preds = %bb.pj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ha), !dbg !36497
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hb), !dbg !36497
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hc), !dbg !36497
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hd), !dbg !36497
  %i.alu = load i64, ptr %i.he, align 8, !dbg !36505, !range !1573, !noundef !1032 ; 2 uses
  %i.alv = icmp eq i64 %i.alu, 8, !dbg !36505
  %i.alw = getelementptr inbounds nuw i8, ptr %i.he, i64 8, !dbg !36506
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6305, ptr noundef nonnull align 8 dereferenceable(32) %i.alw, i64 32, i1 false), !dbg !36506
  br i1 %i.alv, label %bb.pl, label %bb.pm, !dbg !36507

bb.pl:                                            ; preds = %bb.pk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.he), !dbg !36508
  %i.alx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36509
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.alx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6305, i64 32, i1 false), !dbg !36508
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !36509
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hf), !dbg !36510
  br label %bb.pq, !dbg !35455

bb.pm:                                            ; preds = %bb.pk
  %.sroa.6901.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.he, i64 40, !dbg !36511
  %.sroa.8307.0..sroa_idx308 = getelementptr inbounds nuw i8, ptr %i.gz, i64 40, !dbg !35119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %.sroa.8307.0..sroa_idx308, ptr noundef nonnull align 8 dereferenceable(368) %.sroa.6901.0..sroa_idx, i64 368, i1 false), !dbg !36511
  call void @llvm.lifetime.end.p0(ptr nonnull %i.he), !dbg !36508
  store i64 %i.alu, ptr %i.gz, align 8, !dbg !35119
  %.sroa.6305.0..sroa_idx306 = getelementptr inbounds nuw i8, ptr %i.gz, i64 8, !dbg !35119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6305.0..sroa_idx306, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6305, i64 32, i1 false), !dbg !35119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gy), !dbg !36512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.gy, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !dbg !36512
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderINtNtNtB7_9primitive7integer10IntDecoderlNtNtNtCs8774dFTUdNv_12polars_arrow5types6native4i256INtB1z_22ClosureDecoderFunctionlB29_NCNvNtB7_6simple18page_iter_to_arrays6_0EEE13collect_boxedBd_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.hf, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(408) %i.gz, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.gy)
          to label %bb.pn unwind label %bb.f, !dbg !36513

bb.pn:                                            ; preds = %bb.pm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gy), !dbg !36514
  %i.aly = load i64, ptr %i.hf, align 8, !dbg !36515, !range !1034, !noundef !1032 ; 2 uses
  %i.alz = icmp eq i64 %i.aly, -9223372036854775808, !dbg !36515
  %i.ama = getelementptr inbounds nuw i8, ptr %i.hf, i64 8, !dbg !36516
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6299, ptr noundef nonnull align 8 dereferenceable(32) %i.ama, i64 32, i1 false), !dbg !36516
  br i1 %i.alz, label %bb.po, label %bb.pp, !dbg !36517

bb.po:                                            ; preds = %bb.pn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hf), !dbg !36510
  %i.amb = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36518
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.amb, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6299, i64 32, i1 false), !dbg !36510
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !36518
  br label %bb.pq, !dbg !36510

bb.pp:                                            ; preds = %bb.pn
  %.sroa.6904.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hf, i64 40, !dbg !36519
  %.sroa.40.40..sroa_idx567 = getelementptr inbounds nuw i8, ptr %.sroa.40, i64 32, !dbg !35119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.40.40..sroa_idx567, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6904.0..sroa_idx, i64 40, i1 false), !dbg !36519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hf), !dbg !36510
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.40, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6299, i64 32, i1 false), !dbg !35119
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6305), !dbg !36510
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6299), !dbg !36510
  br label %bb.y, !dbg !36510

bb.pq:                                            ; preds = %bb.po, %bb.pl
  %.sroa.0650.29 = phi i8 [ 1, %bb.pl ], [ 0, %bb.po ], !dbg !35429
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6305), !dbg !36510
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6299), !dbg !36510
  br label %bb.yu, !dbg !35455

bb.pr:                                            ; preds = %bb.ps
  %i.amc = landingpad { ptr, i32 }
          cleanup
  br label %.thread1695, !dbg !36520

bb.ps:                                            ; preds = %bb.pf, %bb.pg
  %.sroa.01.0.i1478 = phi i64 [ %i.alq, %bb.pg ], [ %.sroa.0.0.i.i1477, %bb.pf ], !dbg !36521
  %.sroa.0.0.i1479 = phi ptr [ %i.alo, %bb.pg ], [ %i.ali, %bb.pf ], !dbg !36522
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gv), !dbg !36523
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.gv, ptr noundef nonnull align 8 dereferenceable(232) %1, i64 232, i1 false), !dbg !36523
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gu), !dbg !36524
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gu, ptr noundef nonnull align 8 dereferenceable(32) %i.oo, i64 32, i1 false), !dbg !36524
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gt), !dbg !36525
  store i64 0, ptr %i.gt, align 8, !dbg !36526, !alias.scope !35125
  %.sroa.42.0..sroa_idx.i1483 = getelementptr inbounds nuw i8, ptr %i.gt, i64 8, !dbg !36526
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i1483, align 8, !dbg !36526, !alias.scope !35125
  %.sroa.53.0..sroa_idx.i1484 = getelementptr inbounds nuw i8, ptr %i.gt, i64 16, !dbg !36526
  store i64 0, ptr %.sroa.53.0..sroa_idx.i1484, align 8, !dbg !36526, !alias.scope !35125
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gs), !dbg !36527
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gs, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !dbg !36527
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderINtNtNtB7_9primitive7integer10IntDecoderxNtNtNtCs8774dFTUdNv_12polars_arrow5types6native4i256INtB1z_22ClosureDecoderFunctionxB29_NCNvNtB7_6simple18page_iter_to_arrays7_0EEE3newBd_(ptr noalias noundef nonnull sret([408 x i8]) align 8 captures(none) dereferenceable(408) %i.gw, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i1479, i64 noundef %.sroa.01.0.i1478, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(232) %i.gv, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.gu, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.gt, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.gs)
          to label %bb.pt unwind label %bb.pr, !dbg !35126

bb.pt:                                            ; preds = %bb.ps
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gs), !dbg !36520
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gt), !dbg !36520
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gu), !dbg !36520
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gv), !dbg !36520
  %i.amd = load i64, ptr %i.gw, align 8, !dbg !36528, !range !1573, !noundef !1032 ; 2 uses
  %i.ame = icmp eq i64 %i.amd, 8, !dbg !36528
  %i.amf = getelementptr inbounds nuw i8, ptr %i.gw, i64 8, !dbg !36529
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6317, ptr noundef nonnull align 8 dereferenceable(32) %i.amf, i64 32, i1 false), !dbg !36529
  br i1 %i.ame, label %bb.pu, label %bb.pv, !dbg !36530

bb.pu:                                            ; preds = %bb.pt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gw), !dbg !36531
  %i.amg = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36532
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.amg, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6317, i64 32, i1 false), !dbg !36531
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !36532
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gx), !dbg !36533
  br label %bb.pz, !dbg !35455

bb.pv:                                            ; preds = %bb.pt
  %.sroa.6907.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gw, i64 40, !dbg !36534
  %.sroa.8319.0..sroa_idx320 = getelementptr inbounds nuw i8, ptr %i.gr, i64 40, !dbg !35126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %.sroa.8319.0..sroa_idx320, ptr noundef nonnull align 8 dereferenceable(368) %.sroa.6907.0..sroa_idx, i64 368, i1 false), !dbg !36534
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gw), !dbg !36531
  store i64 %i.amd, ptr %i.gr, align 8, !dbg !35126
  %.sroa.6317.0..sroa_idx318 = getelementptr inbounds nuw i8, ptr %i.gr, i64 8, !dbg !35126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6317.0..sroa_idx318, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6317, i64 32, i1 false), !dbg !35126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gq), !dbg !36535
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.gq, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !dbg !36535
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderINtNtNtB7_9primitive7integer10IntDecoderxNtNtNtCs8774dFTUdNv_12polars_arrow5types6native4i256INtB1z_22ClosureDecoderFunctionxB29_NCNvNtB7_6simple18page_iter_to_arrays7_0EEE13collect_boxedBd_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.gx, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(408) %i.gr, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.gq)
          to label %bb.pw unwind label %bb.f, !dbg !36536

bb.pw:                                            ; preds = %bb.pv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gq), !dbg !36537
  %i.amh = load i64, ptr %i.gx, align 8, !dbg !36538, !range !1034, !noundef !1032 ; 2 uses
  %i.ami = icmp eq i64 %i.amh, -9223372036854775808, !dbg !36538
  %i.amj = getelementptr inbounds nuw i8, ptr %i.gx, i64 8, !dbg !36539
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6311, ptr noundef nonnull align 8 dereferenceable(32) %i.amj, i64 32, i1 false), !dbg !36539
  br i1 %i.ami, label %bb.px, label %bb.py, !dbg !36540

bb.px:                                            ; preds = %bb.pw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gx), !dbg !36533
  %i.amk = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36541
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.amk, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6311, i64 32, i1 false), !dbg !36533
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !36541
  br label %bb.pz, !dbg !36533

bb.py:                                            ; preds = %bb.pw
  %.sroa.6910.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gx, i64 40, !dbg !36542
  %.sroa.40.40..sroa_idx568 = getelementptr inbounds nuw i8, ptr %.sroa.40, i64 32, !dbg !35126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.40.40..sroa_idx568, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6910.0..sroa_idx, i64 40, i1 false), !dbg !36542
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gx), !dbg !36533
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.40, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6311, i64 32, i1 false), !dbg !35126
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6317), !dbg !36533
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6311), !dbg !36533
  br label %bb.y, !dbg !36533

bb.pz:                                            ; preds = %bb.px, %bb.pu
  %.sroa.0650.30 = phi i8 [ 1, %bb.pu ], [ 0, %bb.px ], !dbg !35429
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6317), !dbg !36533
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6311), !dbg !36533
  br label %bb.yu, !dbg !35455

bb.qa:                                            ; preds = %bb.ph
  %i.aml = icmp ult i64 %i.alr, 33, !dbg !36543
  br i1 %i.aml, label %bb.qf, label %bb.qe, !dbg !36543

bb.qb:                                            ; preds = %bb.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gp), !dbg !36544
  store i64 %i.alr, ptr %i.gp, align 8, !dbg !36545
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6323.sroa.8), !dbg !35174
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gm), !dbg !35174
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6328), !dbg !35174
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gl), !dbg !35174
  %i.amm = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !36546 ; 2 uses
  %i.amn = getelementptr inbounds nuw i8, ptr %3, i64 55, !dbg !36547
  %i.amo = load i8, ptr %i.amn, align 1, !dbg !36547, !range !1108, !alias.scope !35139, !noundef !1032 ; 2 uses
  %i.amp = icmp ugt i8 %i.amo, -41, !dbg !36548
  br i1 %i.amp, label %bb.qd, label %bb.qc, !dbg !36548

bb.qc:                                            ; preds = %bb.qb
  %i.amq = add i8 %i.amo, 64, !dbg !36549
  %i.amr = call i8 @llvm.umin.i8(i8 %i.amq, i8 24), !dbg !36550
  %.sroa.0.0.i.i1485 = zext nneg i8 %i.amr to i64, !dbg !36550
  br label %bb.qy, !dbg !36551

bb.qd:                                            ; preds = %bb.qb
  %i.ams = load ptr, ptr %i.amm, align 8, !dbg !36552, !alias.scope !35139, !noundef !1032
  %i.amt = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !36553
  %i.amu = load i64, ptr %i.amt, align 8, !dbg !36553, !alias.scope !35139, !noundef !1032
  br label %bb.qy, !dbg !36554

bb.qe:                                            ; preds = %bb.qa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fr), !dbg !36555
  store ptr %7, ptr %i.fr, align 8, !dbg !36555
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fq), !dbg !36556
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fo), !dbg !36557
  store ptr %i.fr, ptr %i.fo, align 8, !dbg !36557
  %.sroa.4948.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fo, i64 8, !dbg !36557
  store ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRjNtB6_5Debug3fmtCsfISxE4fmY1Y_14polars_parquet, ptr %.sroa.4948.0..sroa_idx, align 8, !dbg !36557
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.fp, ptr noundef nonnull @139, ptr noundef nonnull %i.fo)
          to label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfISxE4fmY1Y_14polars_parquet.exit1490 unwind label %.thread1620, !dbg !36558

bb.qf:                                            ; preds = %bb.qa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gd), !dbg !36559
  store i64 %i.alr, ptr %i.gd, align 8, !dbg !36560
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6344.sroa.8), !dbg !35151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ga), !dbg !35151
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6349), !dbg !35151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fz), !dbg !35151
  %i.amv = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !36561 ; 2 uses
  %i.amw = getelementptr inbounds nuw i8, ptr %3, i64 55, !dbg !36562
  %i.amx = load i8, ptr %i.amw, align 1, !dbg !36562, !range !1108, !alias.scope !35150, !noundef !1032 ; 2 uses
  %i.amy = icmp ugt i8 %i.amx, -41, !dbg !36563
  br i1 %i.amy, label %bb.qh, label %bb.qg, !dbg !36563

bb.qg:                                            ; preds = %bb.qf
  %i.amz = add i8 %i.amx, 64, !dbg !36564
  %i.ana = call i8 @llvm.umin.i8(i8 %i.amz, i8 24), !dbg !36565
  %.sroa.0.0.i.i1491 = zext nneg i8 %i.ana to i64, !dbg !36565
  br label %bb.qj, !dbg !36566

bb.qh:                                            ; preds = %bb.qf
  %i.anb = load ptr, ptr %i.amv, align 8, !dbg !36567, !alias.scope !35150, !noundef !1032
  %i.anc = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !36568
  %i.and = load i64, ptr %i.anc, align 8, !dbg !36568, !alias.scope !35150, !noundef !1032
  br label %bb.qj, !dbg !36569

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfISxE4fmY1Y_14polars_parquet.exit1490: ; preds = %bb.qe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fo), !dbg !36570
  invoke void @_RINvMNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5errorNtB3_12ParquetError13not_supportedNtNtCsgZ49sUHp3tW_5alloc6string6StringEB7_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.fq, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.fp)
          to label %bb.qi unwind label %.thread1620, !dbg !36556

bb.qi:                                            ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfISxE4fmY1Y_14polars_parquet.exit1490
  %i.ane = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36571
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ane, ptr noundef nonnull align 8 dereferenceable(32) %i.fq, i64 32, i1 false), !dbg !36571
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !36571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fq), !dbg !36572
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fr), !dbg !36573
  br label %bb.ov, !dbg !35455

bb.qj:                                            ; preds = %bb.qh, %bb.qg
  %.sroa.01.0.i1492 = phi i64 [ %i.and, %bb.qh ], [ %.sroa.0.0.i.i1491, %bb.qg ], !dbg !36574
  %.sroa.0.0.i1493 = phi ptr [ %i.anb, %bb.qh ], [ %i.amv, %bb.qg ], !dbg !36575
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fy), !dbg !36576
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.fy, ptr noundef nonnull align 8 dereferenceable(232) %1, i64 232, i1 false), !dbg !36576
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fx), !dbg !36577
  %i.anf = getelementptr inbounds nuw i8, ptr %i.fx, i64 8, !dbg !36577
  store i64 %i.alr, ptr %i.anf, align 8, !dbg !36577
  store i8 23, ptr %i.fx, align 8, !dbg !36577
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fw), !dbg !36578
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fw, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !dbg !36578
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderNtNtB7_17fixed_size_binary13BinaryDecoderE3newBd_(ptr noalias noundef nonnull sret([400 x i8]) align 8 captures(none) dereferenceable(400) %i.fz, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i1493, i64 noundef %.sroa.01.0.i1492, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(232) %i.fy, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.fx, i64 noundef %i.alr, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.fw)
          to label %bb.qk unwind label %.thread1620, !dbg !35151

bb.qk:                                            ; preds = %bb.qj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fw), !dbg !36579
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fx), !dbg !36579
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fy), !dbg !36579
  %i.ang = load i64, ptr %i.fz, align 8, !dbg !36580, !range !1573, !noundef !1032 ; 2 uses
  %i.anh = icmp eq i64 %i.ang, 8, !dbg !36580
  %i.ani = getelementptr inbounds nuw i8, ptr %i.fz, i64 8, !dbg !36581
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6349, ptr noundef nonnull align 8 dereferenceable(32) %i.ani, i64 32, i1 false), !dbg !36581
  br i1 %i.anh, label %bb.ql, label %bb.qm, !dbg !36582

bb.ql:                                            ; preds = %bb.qk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fz), !dbg !36583
  %i.anj = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36584
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.anj, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6349, i64 32, i1 false), !dbg !36583
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !36584
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ga), !dbg !36585
  br label %bb.qx, !dbg !36586

bb.qm:                                            ; preds = %bb.qk
  %.sroa.6930.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fz, i64 40, !dbg !36587
  %.sroa.8351.0..sroa_idx352 = getelementptr inbounds nuw i8, ptr %i.fv, i64 40, !dbg !35151
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %.sroa.8351.0..sroa_idx352, ptr noundef nonnull align 8 dereferenceable(360) %.sroa.6930.0..sroa_idx, i64 360, i1 false), !dbg !36587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fz), !dbg !36583
  store i64 %i.ang, ptr %i.fv, align 8, !dbg !35151
  %.sroa.6349.0..sroa_idx350 = getelementptr inbounds nuw i8, ptr %i.fv, i64 8, !dbg !35151
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6349.0..sroa_idx350, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6349, i64 32, i1 false), !dbg !35151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fu), !dbg !36588
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fu, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !dbg !36588
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderNtNtB7_17fixed_size_binary13BinaryDecoderE7collectBd_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.ga, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(400) %i.fv, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.fu)
          to label %bb.qn unwind label %.thread1620, !dbg !36589

bb.qn:                                            ; preds = %bb.qm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fu), !dbg !36590
  %i.ank = load i64, ptr %i.ga, align 8, !dbg !36591, !range !1034, !noundef !1032 ; 2 uses
  %i.anl = icmp eq i64 %i.ank, -9223372036854775808, !dbg !36591
  %i.anm = getelementptr inbounds nuw i8, ptr %i.ga, i64 8, !dbg !36592
  %.sroa.01248.0.copyload = load ptr, ptr %i.anm, align 8, !dbg !36592 ; 5 uses
  %.sroa.51249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ga, i64 16, !dbg !36592
  %.sroa.51249.0.copyload = load i64, ptr %.sroa.51249.0..sroa_idx, align 8, !dbg !36592 ; 3 uses
  %.sroa.61250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ga, i64 24, !dbg !36592 ; 2 uses
  br i1 %i.anl, label %bb.qo, label %bb.qp, !dbg !36593

bb.qo:                                            ; preds = %bb.qn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6344.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.61250.0..sroa_idx, i64 16, i1 false), !dbg !36594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ga), !dbg !36585
  %.sroa.31244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !36595
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.31244.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6344.sroa.8, i64 16, i1 false), !dbg !36585
  %i.ann = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36595
  store ptr %.sroa.01248.0.copyload, ptr %i.ann, align 8, !dbg !36595
  %.sroa.21243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !36595
  store i64 %.sroa.51249.0.copyload, ptr %.sroa.21243.0..sroa_idx, align 8, !dbg !36595
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !36595
  br label %bb.qx, !dbg !36596

bb.qp:                                            ; preds = %bb.qn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6344.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.61250.0..sroa_idx, i64 24, i1 false), !dbg !36597
  %.sroa.6933.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ga, i64 48, !dbg !36597
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gb), !dbg !36598
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gb, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6933.0..sroa_idx, i64 32, i1 false), !dbg !36597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ga), !dbg !36585
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gc), !dbg !36599
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gc, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6344.sroa.8, i64 24, i1 false), !dbg !35151
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6349), !dbg !36596
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6344.sroa.8), !dbg !36596
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6355.sroa.7), !dbg !35171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ft), !dbg !35171
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01248.0.copyload) ], !dbg !36600
  %i.ano = icmp ult i64 %.sroa.51249.0.copyload, 96076792050570582, !dbg !36601
  call void @llvm.assume(i1 %i.ano), !dbg !36602
  %i.anp = getelementptr inbounds nuw [96 x i8], ptr %.sroa.01248.0.copyload, i64 %.sroa.51249.0.copyload, !dbg !36603
  store ptr %.sroa.01248.0.copyload, ptr %i.fs, align 8, !dbg !36604
  %.sroa.4358.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fs, i64 8, !dbg !36604
  store ptr %.sroa.01248.0.copyload, ptr %.sroa.4358.0..sroa_idx, align 8, !dbg !36604
  %.sroa.5359.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fs, i64 16, !dbg !36604
  store i64 %i.ank, ptr %.sroa.5359.0..sroa_idx, align 8, !dbg !36604
  %.sroa.6360.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fs, i64 24, !dbg !36604
  store ptr %i.anp, ptr %.sroa.6360.0..sroa_idx, align 8, !dbg !36604
  %i.anq = getelementptr inbounds nuw i8, ptr %i.fs, i64 32, !dbg !36604
  store ptr %i.gd, ptr %i.anq, align 8, !dbg !36604
  %i.anr = getelementptr inbounds nuw i8, ptr %i.fs, i64 40, !dbg !36604
  store ptr %i.oo, ptr %i.anr, align 8, !dbg !36604
  invoke void @_RINvNtNtCscgRAwXFJnXP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binary20FixedSizeBinaryArrayENCNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize6simple18page_iter_to_arrays9_0EINtNtB1d_5boxed3BoxDNtB1Y_5ArrayEL_EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtNtB3q_7parquet5error12ParquetErrorENCINvXso_B5r_IB5p_INtB1b_3VecB4O_EB6b_EINtNtNtB4_6traits7collect12FromIteratorIB5p_B4O_B6b_EE9from_iterBQ_E0B76_EB3q_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ft, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.fs)
          to label %bb.qr unwind label %bb.qq, !dbg !36605

bb.qq:                                            ; preds = %bb.qp
  %i.ans = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.gb)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1496 unwind label %bb.ay, !dbg !36606

bb.qr:                                            ; preds = %bb.qp
  %i.ant = load i64, ptr %i.ft, align 8, !dbg !36607, !range !1553, !noundef !1032 ; 2 uses
  %.not = icmp eq i64 %i.ant, -9223372036854775803, !dbg !36607
  %i.anu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8, !dbg !36608
  %.sroa.0934.0.copyload = load i64, ptr %i.anu, align 8, !dbg !36608 ; 2 uses
  %.sroa.5935.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ft, i64 16, !dbg !36608
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6355.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5935.0..sroa_idx, i64 16, i1 false), !dbg !36608
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ft), !dbg !36609
  br i1 %.not, label %bb.qt, label %bb.qs, !dbg !36610

bb.qs:                                            ; preds = %bb.qr
  %.sroa.3944.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !36611
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3944.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6355.sroa.7, i64 16, i1 false), !dbg !36609
  %i.anv = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36611
  store i64 %i.ant, ptr %i.anv, align 8, !dbg !36611
  %.sroa.2943.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !36611
  store i64 %.sroa.0934.0.copyload, ptr %.sroa.2943.0..sroa_idx, align 8, !dbg !36611
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !36611
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6355.sroa.7), !dbg !36612
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.gb)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1498 unwind label %bb.qu, !dbg !36613

bb.qt:                                            ; preds = %bb.qr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.40, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6355.sroa.7, i64 16, i1 false), !dbg !35171
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6355.sroa.7), !dbg !36612
  %.sroa.40.24..sroa_idx553 = getelementptr inbounds nuw i8, ptr %.sroa.40, i64 16, !dbg !36614
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.40.24..sroa_idx553, ptr noundef nonnull align 8 dereferenceable(24) %i.gc, i64 24, i1 false), !dbg !36615
  %.sroa.40.48..sroa_idx589 = getelementptr inbounds nuw i8, ptr %.sroa.40, i64 40, !dbg !36614
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.40.48..sroa_idx589, ptr noundef nonnull align 8 dereferenceable(32) %i.gb, i64 32, i1 false), !dbg !36616
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gb), !dbg !36617
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gc), !dbg !36617
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gd), !dbg !36618
  br label %bb.ef, !dbg !36619

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1496: ; preds = %bb.qq, %bb.qu
  %.pn = phi { ptr, i32 } [ %i.anw, %bb.qu ], [ %i.ans, %bb.qq ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize12nested_utils11NestedStateEEB1c_(ptr noalias noundef align 8 dereferenceable(24) %i.gc) #39
          to label %.thread1611 unwind label %bb.ay, !dbg !36617

bb.qu:                                            ; preds = %bb.qs
  %i.anw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1496

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1498: ; preds = %bb.qs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gb), !dbg !36617
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize12nested_utils11NestedStateEEB1c_(ptr noalias noundef align 8 dereferenceable(24) %i.gc)
          to label %bb.qv unwind label %.thread1620, !dbg !36617

bb.qv:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1498
end_hunk_4
begin_hunk_5_@_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize6simple18page_iter_to_array:bb.a
  %.sroa.6998.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 40, !dbg !36810
  %.sroa.40.40..sroa_idx576 = getelementptr inbounds nuw i8, ptr %.sroa.40, i64 32, !dbg !35255
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.40.40..sroa_idx576, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6998.0..sroa_idx, i64 40, i1 false), !dbg !36810
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj), !dbg !36801
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.40, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6449, i64 32, i1 false), !dbg !35255
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6455), !dbg !36801
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6449), !dbg !36801
  br label %bb.y, !dbg !36801

bb.uc:                                            ; preds = %bb.ua, %bb.tx
  %.sroa.0650.39 = phi i8 [ 1, %bb.tx ], [ 0, %bb.ua ], !dbg !35429
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6455), !dbg !36801
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6449), !dbg !36801
  br label %bb.yu, !dbg !35455

bb.ud:                                            ; preds = %bb.ue
  %i.arv = landingpad { ptr, i32 }
          cleanup
  br label %.thread1695, !dbg !36811

bb.ue:                                            ; preds = %bb.pb, %bb.pc
  %.sroa.01.0.i1474 = phi i64 [ %i.alh, %bb.pc ], [ %.sroa.0.0.i.i1473, %bb.pb ], !dbg !36812
  %.sroa.0.0.i1475 = phi ptr [ %i.alf, %bb.pc ], [ %i.akz, %bb.pb ], !dbg !36813
  %i.arw = icmp eq i8 %i.aky, 26, !dbg !36814
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da), !dbg !36815
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.da, ptr noundef nonnull align 8 dereferenceable(232) %1, i64 232, i1 false), !dbg !36815
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz), !dbg !36816
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cz, ptr noundef nonnull align 8 dereferenceable(32) %i.oo, i64 32, i1 false), !dbg !36816
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy), !dbg !36817
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !dbg !36817
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderNtNtB7_7binview14BinViewDecoderE3newBd_(ptr noalias noundef nonnull sret([440 x i8]) align 8 captures(none) dereferenceable(440) %i.db, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i1475, i64 noundef %.sroa.01.0.i1474, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(232) %i.da, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.cz, ptr noalias noundef align 8 null, i1 noundef zeroext %i.arw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.cy)
          to label %bb.uf unwind label %bb.ud, !dbg !35261

bb.uf:                                            ; preds = %bb.ue
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !dbg !36811
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz), !dbg !36811
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da), !dbg !36811
  %i.arx = load i64, ptr %i.db, align 8, !dbg !36818, !range !1573, !noundef !1032 ; 2 uses
  %i.ary = icmp eq i64 %i.arx, 8, !dbg !36818
  %i.arz = getelementptr inbounds nuw i8, ptr %i.db, i64 8, !dbg !36819
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6467, ptr noundef nonnull align 8 dereferenceable(32) %i.arz, i64 32, i1 false), !dbg !36819
  br i1 %i.ary, label %bb.ug, label %bb.uh, !dbg !36820

bb.ug:                                            ; preds = %bb.uf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db), !dbg !36821
  %i.asa = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36822
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.asa, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6467, i64 32, i1 false), !dbg !36821
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !36822
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc), !dbg !36823
  br label %bb.ul, !dbg !36824

bb.uh:                                            ; preds = %bb.uf
  %.sroa.61001.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.db, i64 40, !dbg !36825
  %.sroa.8469.0..sroa_idx470 = getelementptr inbounds nuw i8, ptr %i.cx, i64 40, !dbg !35261
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %.sroa.8469.0..sroa_idx470, ptr noundef nonnull align 8 dereferenceable(400) %.sroa.61001.0..sroa_idx, i64 400, i1 false), !dbg !36825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db), !dbg !36821
  store i64 %i.arx, ptr %i.cx, align 8, !dbg !35261
  %.sroa.6467.0..sroa_idx468 = getelementptr inbounds nuw i8, ptr %i.cx, i64 8, !dbg !35261
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6467.0..sroa_idx468, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6467, i64 32, i1 false), !dbg !35261
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw), !dbg !36826
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cw, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !dbg !36826
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderNtNtB7_7binview14BinViewDecoderE13collect_boxedBd_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.dc, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(440) %i.cx, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.cw)
          to label %bb.ui unwind label %bb.f, !dbg !36827

bb.ui:                                            ; preds = %bb.uh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !dbg !36828
  %i.asb = load i64, ptr %i.dc, align 8, !dbg !36829, !range !1034, !noundef !1032 ; 2 uses
  %i.asc = icmp eq i64 %i.asb, -9223372036854775808, !dbg !36829
  %i.asd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8, !dbg !36830
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6461, ptr noundef nonnull align 8 dereferenceable(32) %i.asd, i64 32, i1 false), !dbg !36830
  br i1 %i.asc, label %bb.uj, label %bb.uk, !dbg !36831

bb.uj:                                            ; preds = %bb.ui
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc), !dbg !36823
  %i.ase = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36832
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ase, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6461, i64 32, i1 false), !dbg !36823
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !36832
  br label %bb.ul, !dbg !36823

bb.uk:                                            ; preds = %bb.ui
  %.sroa.61004.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 40, !dbg !36833
  %.sroa.40.40..sroa_idx577 = getelementptr inbounds nuw i8, ptr %.sroa.40, i64 32, !dbg !35261
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.40.40..sroa_idx577, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.61004.0..sroa_idx, i64 40, i1 false), !dbg !36833
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc), !dbg !36823
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.40, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6461, i64 32, i1 false), !dbg !35261
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6467), !dbg !36823
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6461), !dbg !36823
  br label %bb.y, !dbg !36834

bb.ul:                                            ; preds = %bb.uj, %bb.ug
  %.sroa.0650.40 = phi i8 [ 1, %bb.ug ], [ 0, %bb.uj ], !dbg !35429
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6467), !dbg !36823
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6461), !dbg !36823
  br label %bb.yu, !dbg !35455

bb.um:                                            ; preds = %bb.rn, %bb.rn
  %i.asf = load i8, ptr %i.oo, align 8, !dbg !36835, !range !1100, !noundef !1032
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6473), !dbg !35278
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv), !dbg !35278
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6479), !dbg !35278
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu), !dbg !35278
  %i.asg = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !36836 ; 2 uses
  %i.ash = getelementptr inbounds nuw i8, ptr %3, i64 55, !dbg !36837
  %i.asi = load i8, ptr %i.ash, align 1, !dbg !36837, !range !1108, !alias.scope !35277, !noundef !1032 ; 2 uses
  %i.asj = icmp ugt i8 %i.asi, -41, !dbg !36838
  br i1 %i.asj, label %bb.uo, label %bb.un, !dbg !36838

bb.un:                                            ; preds = %bb.um
  %i.ask = add i8 %i.asi, 64, !dbg !36839
  %i.asl = call i8 @llvm.umin.i8(i8 %i.ask, i8 24), !dbg !36840
  %.sroa.0.0.i.i1519 = zext nneg i8 %i.asl to i64, !dbg !36840
  br label %bb.uq, !dbg !36841

bb.uo:                                            ; preds = %bb.um
  %i.asm = load ptr, ptr %i.asg, align 8, !dbg !36842, !alias.scope !35277, !noundef !1032
  %i.asn = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !36843
  %i.aso = load i64, ptr %i.asn, align 8, !dbg !36843, !alias.scope !35277, !noundef !1032
  br label %bb.uq, !dbg !36844

bb.up:                                            ; preds = %bb.uq
  %i.asp = landingpad { ptr, i32 }
          cleanup
  br label %.thread1695, !dbg !36845

bb.uq:                                            ; preds = %bb.un, %bb.uo
  %.sroa.01.0.i1520 = phi i64 [ %i.aso, %bb.uo ], [ %.sroa.0.0.i.i1519, %bb.un ], !dbg !36846
  %.sroa.0.0.i1521 = phi ptr [ %i.asm, %bb.uo ], [ %i.asg, %bb.un ], !dbg !36847
  %i.asq = icmp eq i8 %i.asf, 39, !dbg !36848
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct), !dbg !36849
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.ct, ptr noundef nonnull align 8 dereferenceable(232) %1, i64 232, i1 false), !dbg !36849
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs), !dbg !36850
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cs, ptr noundef nonnull align 8 dereferenceable(32) %i.oo, i64 32, i1 false), !dbg !36850
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !dbg !36851
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !dbg !36851
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderNtNtB7_7binview14BinViewDecoderE3newBd_(ptr noalias noundef nonnull sret([440 x i8]) align 8 captures(none) dereferenceable(440) %i.cu, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i1521, i64 noundef %.sroa.01.0.i1520, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(232) %i.ct, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.cs, ptr noalias noundef align 8 null, i1 noundef zeroext %i.asq, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.cr)
          to label %bb.ur unwind label %bb.up, !dbg !35278

bb.ur:                                            ; preds = %bb.uq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !dbg !36845
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !dbg !36845
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct), !dbg !36845
  %i.asr = load i64, ptr %i.cu, align 8, !dbg !36852, !range !1573, !noundef !1032 ; 2 uses
  %i.ass = icmp eq i64 %i.asr, 8, !dbg !36852
  %i.ast = getelementptr inbounds nuw i8, ptr %i.cu, i64 8, !dbg !36853
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6479, ptr noundef nonnull align 8 dereferenceable(32) %i.ast, i64 32, i1 false), !dbg !36853
  br i1 %i.ass, label %bb.us, label %bb.ut, !dbg !36854

bb.us:                                            ; preds = %bb.ur
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu), !dbg !36855
  %i.asu = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36856
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.asu, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6479, i64 32, i1 false), !dbg !36855
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !36856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !dbg !36857
  br label %bb.ux, !dbg !36858

bb.ut:                                            ; preds = %bb.ur
  %.sroa.61007.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 40, !dbg !36859
  %.sroa.8481.0..sroa_idx482 = getelementptr inbounds nuw i8, ptr %i.cq, i64 40, !dbg !35278
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %.sroa.8481.0..sroa_idx482, ptr noundef nonnull align 8 dereferenceable(400) %.sroa.61007.0..sroa_idx, i64 400, i1 false), !dbg !36859
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu), !dbg !36855
  store i64 %i.asr, ptr %i.cq, align 8, !dbg !35278
  %.sroa.6479.0..sroa_idx480 = getelementptr inbounds nuw i8, ptr %i.cq, i64 8, !dbg !35278
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6479.0..sroa_idx480, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6479, i64 32, i1 false), !dbg !35278
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !dbg !36860
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cp, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !dbg !36860
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderNtNtB7_7binview14BinViewDecoderE13collect_boxedBd_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.cv, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(440) %i.cq, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.cp)
          to label %bb.uu unwind label %bb.f, !dbg !36861

bb.uu:                                            ; preds = %bb.ut
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !dbg !36862
  %i.asv = load i64, ptr %i.cv, align 8, !dbg !36863, !range !1034, !noundef !1032 ; 2 uses
  %i.asw = icmp eq i64 %i.asv, -9223372036854775808, !dbg !36863
  %i.asx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8, !dbg !36864
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6473, ptr noundef nonnull align 8 dereferenceable(32) %i.asx, i64 32, i1 false), !dbg !36864
  br i1 %i.asw, label %bb.uv, label %bb.uw, !dbg !36865

bb.uv:                                            ; preds = %bb.uu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !dbg !36857
  %i.asy = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36866
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.asy, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6473, i64 32, i1 false), !dbg !36857
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !36866
  br label %bb.ux, !dbg !36857

bb.uw:                                            ; preds = %bb.uu
  %.sroa.61010.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cv, i64 40, !dbg !36867
  %.sroa.40.40..sroa_idx578 = getelementptr inbounds nuw i8, ptr %.sroa.40, i64 32, !dbg !35278
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.40.40..sroa_idx578, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.61010.0..sroa_idx, i64 40, i1 false), !dbg !36867
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !dbg !36857
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.40, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6473, i64 32, i1 false), !dbg !35278
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6479), !dbg !36857
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6473), !dbg !36857
  br label %bb.y, !dbg !36868

bb.ux:                                            ; preds = %bb.uv, %bb.us
  %.sroa.0650.41 = phi i8 [ 1, %bb.us ], [ 0, %bb.uv ], !dbg !35429
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6479), !dbg !36857
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6473), !dbg !36857
  br label %bb.yu, !dbg !35455

bb.uy:                                            ; preds = %bb.rq
  %i.asz = load i64, ptr %7, align 8, !dbg !35433, !noundef !1032
  %i.ata = icmp eq i64 %i.asz, 2, !dbg !35433
  br i1 %i.ata, label %bb.uz, label %.thread1650, !dbg !35433

bb.uz:                                            ; preds = %bb.uy
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6413), !dbg !35294
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eh), !dbg !35294
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6419), !dbg !35294
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eg), !dbg !35294
  %i.atb = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !36869 ; 2 uses
  %i.atc = getelementptr inbounds nuw i8, ptr %3, i64 55, !dbg !36870
  %i.atd = load i8, ptr %i.atc, align 1, !dbg !36870, !range !1108, !alias.scope !35293, !noundef !1032 ; 2 uses
  %i.ate = icmp ugt i8 %i.atd, -41, !dbg !36871
  br i1 %i.ate, label %bb.vb, label %bb.va, !dbg !36871

bb.va:                                            ; preds = %bb.uz
  %i.atf = add i8 %i.atd, 64, !dbg !36872
  %i.atg = call i8 @llvm.umin.i8(i8 %i.atf, i8 24), !dbg !36873
  %.sroa.0.0.i.i1523 = zext nneg i8 %i.atg to i64, !dbg !36873
  br label %bb.vc, !dbg !36874

bb.vb:                                            ; preds = %bb.uz
  %i.ath = load ptr, ptr %i.atb, align 8, !dbg !36875, !alias.scope !35293, !noundef !1032
  %i.ati = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !36876
  %i.atj = load i64, ptr %i.ati, align 8, !dbg !36876, !alias.scope !35293, !noundef !1032
  br label %bb.vc, !dbg !36877

bb.vc:                                            ; preds = %bb.vb, %bb.va
  %.sroa.01.0.i1524 = phi i64 [ %i.atj, %bb.vb ], [ %.sroa.0.0.i.i1523, %bb.va ], !dbg !36878
  %.sroa.0.0.i1525 = phi ptr [ %i.ath, %bb.vb ], [ %i.atb, %bb.va ], !dbg !36879
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef), !dbg !36880
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.ef, ptr noundef nonnull align 8 dereferenceable(232) %1, i64 232, i1 false), !dbg !36880
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee), !dbg !36881
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ee, ptr noundef nonnull align 8 dereferenceable(32) %i.oo, i64 32, i1 false), !dbg !36881
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed), !dbg !36882
  invoke void @_RNvMs0_NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize9primitive5floatINtB5_12FloatDecoderNtNtCs2mZqlW55729_12polars_utils7float164pf16B1H_INtB7_19UnitDecoderFunctionB1H_EE4unitBf_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ed)
          to label %bb.vd unwind label %bb.vl, !dbg !36882

bb.vd:                                            ; preds = %bb.vc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec), !dbg !36883
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ec, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !dbg !36883
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderINtNtNtB7_9primitive5float12FloatDecoderNtNtCs2mZqlW55729_12polars_utils7float164pf16B28_INtB1z_19UnitDecoderFunctionB28_EEE3newBd_(ptr noalias noundef nonnull sret([408 x i8]) align 8 captures(none) dereferenceable(408) %i.eg, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i1525, i64 noundef %.sroa.01.0.i1524, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(232) %i.ef, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ee, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ed, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ec)
          to label %bb.ve unwind label %.thread1676, !dbg !35294

.thread1676:                                      ; preds = %bb.vd
  %i.atk = landingpad { ptr, i32 }
          cleanup
  br label %.thread1695, !dbg !36884

bb.ve:                                            ; preds = %bb.vd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec), !dbg !36884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed), !dbg !36884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee), !dbg !36884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef), !dbg !36884
  %i.atl = load i64, ptr %i.eg, align 8, !dbg !36885, !range !1573, !noundef !1032 ; 2 uses
  %i.atm = icmp eq i64 %i.atl, 8, !dbg !36885
  %i.atn = getelementptr inbounds nuw i8, ptr %i.eg, i64 8, !dbg !36886
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6419, ptr noundef nonnull align 8 dereferenceable(32) %i.atn, i64 32, i1 false), !dbg !36886
  br i1 %i.atm, label %bb.vf, label %bb.vg, !dbg !36887

bb.vf:                                            ; preds = %bb.ve
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg), !dbg !36888
  %i.ato = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36889
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ato, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6419, i64 32, i1 false), !dbg !36888
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !36889
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh), !dbg !36890
  br label %bb.vk, !dbg !35455

bb.vg:                                            ; preds = %bb.ve
  %.sroa.6977.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eg, i64 40, !dbg !36891
  %.sroa.8421.0..sroa_idx422 = getelementptr inbounds nuw i8, ptr %i.eb, i64 40, !dbg !35294
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %.sroa.8421.0..sroa_idx422, ptr noundef nonnull align 8 dereferenceable(368) %.sroa.6977.0..sroa_idx, i64 368, i1 false), !dbg !36891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg), !dbg !36888
  store i64 %i.atl, ptr %i.eb, align 8, !dbg !35294
  %.sroa.6419.0..sroa_idx420 = getelementptr inbounds nuw i8, ptr %i.eb, i64 8, !dbg !35294
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6419.0..sroa_idx420, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6419, i64 32, i1 false), !dbg !35294
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea), !dbg !36892
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ea, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !dbg !36892
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderINtNtNtB7_9primitive5float12FloatDecoderNtNtCs2mZqlW55729_12polars_utils7float164pf16B28_INtB1z_19UnitDecoderFunctionB28_EEE13collect_boxedBd_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.eh, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(408) %i.eb, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.ea)
          to label %bb.vh unwind label %bb.f, !dbg !36893

bb.vh:                                            ; preds = %bb.vg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea), !dbg !36894
  %i.atp = load i64, ptr %i.eh, align 8, !dbg !36895, !range !1034, !noundef !1032 ; 2 uses
  %i.atq = icmp eq i64 %i.atp, -9223372036854775808, !dbg !36895
  %i.atr = getelementptr inbounds nuw i8, ptr %i.eh, i64 8, !dbg !36896
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6413, ptr noundef nonnull align 8 dereferenceable(32) %i.atr, i64 32, i1 false), !dbg !36896
  br i1 %i.atq, label %bb.vi, label %bb.vj, !dbg !36897

bb.vi:                                            ; preds = %bb.vh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh), !dbg !36890
  %i.ats = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36898
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ats, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6413, i64 32, i1 false), !dbg !36890
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !36898
  br label %bb.vk, !dbg !36890

bb.vj:                                            ; preds = %bb.vh
  %.sroa.6980.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eh, i64 40, !dbg !36899
  %.sroa.40.40..sroa_idx573 = getelementptr inbounds nuw i8, ptr %.sroa.40, i64 32, !dbg !35294
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.40.40..sroa_idx573, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6980.0..sroa_idx, i64 40, i1 false), !dbg !36899
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh), !dbg !36890
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.40, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6413, i64 32, i1 false), !dbg !35294
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6419), !dbg !36890
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6413), !dbg !36890
  br label %bb.y, !dbg !36890

bb.vk:                                            ; preds = %bb.vi, %bb.vf
  %.sroa.0650.42 = phi i8 [ 1, %bb.vf ], [ 0, %bb.vi ], !dbg !35429
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6419), !dbg !36890
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6413), !dbg !36890
  br label %bb.yu, !dbg !35455

bb.vl:                                            ; preds = %bb.vc
  %i.att = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(32) %i.ee) #39
          to label %bb.vm unwind label %bb.ay, !dbg !36884

bb.vm:                                            ; preds = %bb.vl
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4read11compression17BasicDecompressorEBO_(ptr noalias noundef align 8 dereferenceable(232) %i.ef) #39
          to label %.thread1605.thread1721 unwind label %bb.ay, !dbg !36884

.thread1650:                                      ; preds = %bb.ds, %bb.ei, %bb.ez, %bb.fj, %bb.fk, %bb.fm, %bb.fn, %bb.fl, %bb.jy, %bb.jz, %bb.ka, %bb.kb, %bb.fp, %bb.fo, %bb.uy, %bb.rn, %bb.rq, %bb.rp, %bb.ro, %bb.ow, %.thread1647
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !dbg !36900
  store ptr %2, ptr %i.be, align 8, !dbg !36900
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !dbg !36901
  store ptr %i.ov, ptr %i.bd, align 8, !dbg !36901
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !dbg !36902
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !dbg !36903
  store ptr %i.be, ptr %i.ba, align 8, !dbg !36903
  %.sroa.4707.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8, !dbg !36903
  store ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types13physical_type12PhysicalTypeNtB6_5Debug3fmtBG_, ptr %.sroa.4707.0..sroa_idx, align 8, !dbg !36903
  %i.atu = getelementptr inbounds nuw i8, ptr %i.ba, i64 16, !dbg !36903
  store ptr %i.bd, ptr %i.atu, align 8, !dbg !36903
  %.sroa.41038.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 24, !dbg !36903
  store ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeNtB6_5Debug3fmtCsfISxE4fmY1Y_14polars_parquet, ptr %.sroa.41038.0..sroa_idx, align 8, !dbg !36903
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bb, ptr noundef nonnull @145, ptr noundef nonnull %i.ba)
          to label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfISxE4fmY1Y_14polars_parquet.exit1528 unwind label %.thread1620, !dbg !36904

bb.vn:                                            ; preds = %bb.vq, %bb.pd
  unreachable

bb.vo:                                            ; preds = %bb.ei, %bb.rn, %bb.rq, %bb.rp, %bb.ro, %bb.ow, %.thread1647
  %i.atv = getelementptr inbounds nuw i8, ptr %i.ov, i64 8, !dbg !36905
  %i.atw = load ptr, ptr %i.atv, align 8, !dbg !36905, !nonnull !1032, !noundef !1032 ; 2 uses
  store ptr %i.atw, ptr %i.co, align 8, !dbg !36905
  %i.atx = invoke fastcc noundef zeroext i1 @_RNvXs5_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.atw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @142)
          to label %bb.vp unwind label %.thread1620, !dbg !36906

bb.vp:                                            ; preds = %bb.vo
  br i1 %i.atx, label %bb.vr, label %bb.vq, !dbg !35305, !prof !1184

bb.vq:                                            ; preds = %bb.vp
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeBM_EBR_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.co, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @143, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @144) #44
          to label %bb.vn unwind label %.thread1620, !dbg !36907

bb.vr:                                            ; preds = %bb.vp
  %i.aty = getelementptr inbounds nuw i8, ptr %3, i64 56, !dbg !36908
  %i.atz = load ptr, ptr %i.aty, align 8, !dbg !36908, !noundef !1032 ; 4 uses
  %.not1299 = icmp eq ptr %i.atz, null, !dbg !36909
  br i1 %.not1299, label %bb.wh, label %bb.vs, !dbg !36910

bb.vs:                                            ; preds = %bb.vr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.atz, ptr %i.a, align 8
  %i.aua = getelementptr inbounds nuw i8, ptr %i.atz, i64 16, !dbg !36911 ; 2 uses
  %i.aub = load ptr, ptr @_RNvNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field24DTYPE_ENUM_VALUES_LEGACY, align 8, !dbg !36912, !nonnull !1032, !noundef !1032
  %i.auc = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field24DTYPE_ENUM_VALUES_LEGACY, i64 8), align 8, !dbg !36912, !noundef !1032
  %i.aud = invoke noundef align 8 ptr @_RINvMsi_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB18_E3geteECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aua, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aub, i64 noundef %i.auc)
          to label %bb.vv unwind label %bb.vt, !dbg !36913

bb.vt:                                            ; preds = %bb.wa, %bb.vy, %bb.vw, %bb.vs
  %i.aue = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !35308), !dbg !36914
  call void @llvm.experimental.noalias.scope.decl(metadata !35309), !dbg !36915
  %i.auf = load ptr, ptr %i.a, align 8, !dbg !36916, !alias.scope !35310, !nonnull !1032, !noundef !1032
  %i.aug = atomicrmw sub ptr %i.auf, i64 1 release, align 8, !dbg !36917, !noalias !35310
  %i.auh = icmp eq i64 %i.aug, 1, !dbg !36918
  br i1 %i.auh, label %bb.vu, label %.thread1611, !dbg !36918

bb.vu:                                            ; preds = %bb.vt
  fence acquire, !dbg !36919
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1o_EE9drop_slowCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #40
          to label %.thread1611 unwind label %bb.we, !dbg !36920

bb.vv:                                            ; preds = %bb.vs
  %.not.i = icmp eq ptr %i.aud, null, !dbg !36921
  br i1 %.not.i, label %bb.vw, label %bb.wb, !dbg !36922

bb.vw:                                            ; preds = %bb.vv
  %i.aui = load ptr, ptr @_RNvNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field21DTYPE_ENUM_VALUES_NEW, align 8, !dbg !36923, !nonnull !1032, !noundef !1032
  %i.auj = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field21DTYPE_ENUM_VALUES_NEW, i64 8), align 8, !dbg !36923, !noundef !1032
  %i.auk = invoke noundef align 8 ptr @_RINvMsi_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB18_E3geteECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aua, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aui, i64 noundef %i.auj)
          to label %bb.vx unwind label %bb.vt, !dbg !36924

bb.vx:                                            ; preds = %bb.vw
  %.not2.i = icmp eq ptr %i.auk, null, !dbg !36925
  %.pre5.i = load ptr, ptr %i.a, align 8, !dbg !36926 ; 2 uses
  br i1 %.not2.i, label %bb.vy, label %bb.wb, !dbg !36927

bb.vy:                                            ; preds = %bb.vx
  %i.aul = getelementptr inbounds nuw i8, ptr %.pre5.i, i64 16, !dbg !36928
  %i.aum = load ptr, ptr @_RNvNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field21DTYPE_CATEGORICAL_NEW, align 8, !dbg !36929, !nonnull !1032, !noundef !1032
  %i.aun = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field21DTYPE_CATEGORICAL_NEW, i64 8), align 8, !dbg !36929, !noundef !1032
  %i.auo = invoke noundef align 8 ptr @_RINvMsi_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB18_E3geteECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aul, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aum, i64 noundef %i.aun)
          to label %bb.vz unwind label %bb.vt, !dbg !36930

bb.vz:                                            ; preds = %bb.vy
  %.not3.i = icmp eq ptr %i.auo, null, !dbg !36931
  %.pre6.i = load ptr, ptr %i.a, align 8, !dbg !36926 ; 2 uses
  br i1 %.not3.i, label %bb.wa, label %bb.wb, !dbg !36932

bb.wa:                                            ; preds = %bb.vz
  %i.aup = getelementptr inbounds nuw i8, ptr %.pre6.i, i64 16, !dbg !36933
  %i.auq = load ptr, ptr @_RNvNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field24DTYPE_CATEGORICAL_LEGACY, align 8, !dbg !36934, !nonnull !1032, !noundef !1032
  %i.aur = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field24DTYPE_CATEGORICAL_LEGACY, i64 8), align 8, !dbg !36934, !noundef !1032
  %i.aus = invoke noundef align 8 ptr @_RINvMsi_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB18_E3geteECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aup, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.auq, i64 noundef %i.aur)
          to label %bb.wd unwind label %bb.vt, !dbg !36935

bb.wb:                                            ; preds = %bb.wd, %bb.vz, %bb.vx, %bb.vv
  %i.aut = phi ptr [ %.pre.i, %bb.wd ], [ %.pre6.i, %bb.vz ], [ %.pre5.i, %bb.vx ], [ %i.atz, %bb.vv ], !dbg !36926
  %.sroa.0.0.i1529 = phi i1 [ %i.auw, %bb.wd ], [ true, %bb.vz ], [ true, %bb.vx ], [ true, %bb.vv ], !dbg !36936
  call void @llvm.experimental.noalias.scope.decl(metadata !35316), !dbg !36914
  call void @llvm.experimental.noalias.scope.decl(metadata !35317), !dbg !36937
  %i.auu = atomicrmw sub ptr %i.aut, i64 1 release, align 8, !dbg !36938, !noalias !35318
  %i.auv = icmp eq i64 %i.auu, 1, !dbg !36939
  br i1 %i.auv, label %bb.wc, label %bb.wf, !dbg !36939

bb.wc:                                            ; preds = %bb.wb
  fence acquire, !dbg !36940
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1o_EE9drop_slowCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #40
          to label %bb.wf unwind label %.thread1620, !dbg !36941

bb.wd:                                            ; preds = %bb.wa
  %i.auw = icmp ne ptr %i.aus, null, !dbg !36942
  %.pre.i = load ptr, ptr %i.a, align 8, !dbg !36926, !alias.scope !35318
  br label %bb.wb, !dbg !36922

bb.we:                                            ; preds = %bb.vu
  %i.aux = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !36943
  unreachable, !dbg !36943

bb.wf:                                            ; preds = %bb.wb, %bb.wc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !36944
  br i1 %.sroa.0.0.i1529, label %bb.wg, label %bb.wh, !dbg !36908

bb.wg:                                            ; preds = %bb.wf
  %i.auy = getelementptr inbounds nuw i8, ptr %i.ov, i64 1, !dbg !36945
  %i.auz = load i8, ptr %i.auy, align 1, !dbg !36945, !range !1569, !noundef !1032
  switch i8 %i.auz, label %bb.wh [
    i8 5, label %bb.wk
    i8 6, label %bb.wn
    i8 7, label %bb.wq
  ], !dbg !36946, !prof !35322

bb.wh:                                            ; preds = %bb.wf, %bb.vr, %bb.wg
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6625.sroa.8), !dbg !35379
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !dbg !35379
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6630), !dbg !35379
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !dbg !35379
  %i.ava = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !36947 ; 2 uses
  %i.avb = getelementptr inbounds nuw i8, ptr %3, i64 55, !dbg !36948
  %i.avc = load i8, ptr %i.avb, align 1, !dbg !36948, !range !1108, !alias.scope !35330, !noundef !1032 ; 2 uses
  %i.avd = icmp ugt i8 %i.avc, -41, !dbg !36949
  br i1 %i.avd, label %bb.wj, label %bb.wi, !dbg !36949

bb.wi:                                            ; preds = %bb.wh
  %i.ave = add i8 %i.avc, 64, !dbg !36950
  %i.avf = call i8 @llvm.umin.i8(i8 %i.ave, i8 24), !dbg !36951
  %.sroa.0.0.i.i1537 = zext nneg i8 %i.avf to i64, !dbg !36951
  br label %bb.xx, !dbg !36952

bb.wj:                                            ; preds = %bb.wh
  %i.avg = load ptr, ptr %i.ava, align 8, !dbg !36953, !alias.scope !35330, !noundef !1032
  %i.avh = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !36954
  %i.avi = load i64, ptr %i.avh, align 8, !dbg !36954, !alias.scope !35330, !noundef !1032
  br label %bb.xx, !dbg !36955

bb.wk:                                            ; preds = %bb.wg
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6487), !dbg !35356
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn), !dbg !35356
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6493), !dbg !35356
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm), !dbg !35356
  %i.avj = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !36956 ; 2 uses
  %i.avk = getelementptr inbounds nuw i8, ptr %3, i64 55, !dbg !36957
  %i.avl = load i8, ptr %i.avk, align 1, !dbg !36957, !range !1108, !alias.scope !35338, !noundef !1032 ; 2 uses
  %i.avm = icmp ugt i8 %i.avl, -41, !dbg !36958
  br i1 %i.avm, label %bb.wm, label %bb.wl, !dbg !36958

bb.wl:                                            ; preds = %bb.wk
  %i.avn = add i8 %i.avl, 64, !dbg !36959
  %i.avo = call i8 @llvm.umin.i8(i8 %i.avn, i8 24), !dbg !36960
  %.sroa.0.0.i.i1541 = zext nneg i8 %i.avo to i64, !dbg !36960
  br label %bb.wu, !dbg !36961

bb.wm:                                            ; preds = %bb.wk
  %i.avp = load ptr, ptr %i.avj, align 8, !dbg !36962, !alias.scope !35338, !noundef !1032
  %i.avq = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !36963
  %i.avr = load i64, ptr %i.avq, align 8, !dbg !36963, !alias.scope !35338, !noundef !1032
  br label %bb.wu, !dbg !36964

bb.wn:                                            ; preds = %bb.wg
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6499), !dbg !35365
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !dbg !35365
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6505), !dbg !35365
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !dbg !35365
  %i.avs = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !36965 ; 2 uses
  %i.avt = getelementptr inbounds nuw i8, ptr %3, i64 55, !dbg !36966
  %i.avu = load i8, ptr %i.avt, align 1, !dbg !36966, !range !1108, !alias.scope !35346, !noundef !1032 ; 2 uses
  %i.avv = icmp ugt i8 %i.avu, -41, !dbg !36967
  br i1 %i.avv, label %bb.wp, label %bb.wo, !dbg !36967

bb.wo:                                            ; preds = %bb.wn
  %i.avw = add i8 %i.avu, 64, !dbg !36968
  %i.avx = call i8 @llvm.umin.i8(i8 %i.avw, i8 24), !dbg !36969
  %.sroa.0.0.i.i1545 = zext nneg i8 %i.avx to i64, !dbg !36969
  br label %bb.xd, !dbg !36970

bb.wp:                                            ; preds = %bb.wn
  %i.avy = load ptr, ptr %i.avs, align 8, !dbg !36971, !alias.scope !35346, !noundef !1032
end_hunk_5
begin_hunk_6_@llvm.vector.reduce.or.v2i64
!34535 = distinct !DILocation(line: 810, column: 1, scope: !19, inlinedAt: !34532)
!34536 = distinct !DILocation(line: 810, column: 1, scope: !20, inlinedAt: !34535)
!34537 = distinct !DILocation(line: 2814, column: 17, scope: !23, inlinedAt: !34536)
!34538 = distinct !DILocation(line: 2110, column: 27, scope: !22, inlinedAt: !34537)
!34539 = distinct !DILocation(line: 2814, column: 32, scope: !23, inlinedAt: !34536)
!34540 = distinct !DILocation(line: 3193, column: 26, scope: !25, inlinedAt: !34539)
!34541 = distinct !DILocation(line: 64, column: 9, scope: !23, inlinedAt: !34536)
!34542 = distinct !DILocation(line: 810, column: 1, scope: !18, inlinedAt: !34527)
!34543 = distinct !DILocation(line: 810, column: 1, scope: !28, inlinedAt: !34542)
!34544 = distinct !DILocation(line: 643, column: 1, scope: !33485)
!34545 = distinct !DILocation(line: 810, column: 1, scope: !91, inlinedAt: !34544)
!34546 = distinct !DILocation(line: 810, column: 1, scope: !90, inlinedAt: !34545)
!34547 = distinct !DILocation(line: 810, column: 1, scope: !89, inlinedAt: !34546)
!34548 = distinct !DILocation(line: 779, column: 17, scope: !88, inlinedAt: !34547)
!34549 = distinct !DILocation(line: 447, column: 30, scope: !93, inlinedAt: !34548)
!34550 = distinct !{!34550, i1 false, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfISxE4fmY1Y_14polars_parquet"}
!34551 = distinct !{!34551, !34550, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfISxE4fmY1Y_14polars_parquet: argument 0"}
!34552 = distinct !{!34552, i1 false, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs7VARH73bmU_11compact_str13CompactStringECsfISxE4fmY1Y_14polars_parquet"}
!34553 = distinct !{!34553, !34552, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs7VARH73bmU_11compact_str13CompactStringECsfISxE4fmY1Y_14polars_parquet: argument 0"}
!34554 = distinct !{!34554, i1 false, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7VARH73bmU_11compact_str4repr4ReprECsfISxE4fmY1Y_14polars_parquet"}
!34555 = distinct !{!34555, !34554, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7VARH73bmU_11compact_str4repr4ReprECsfISxE4fmY1Y_14polars_parquet: argument 0"}
!34556 = distinct !{!34556, i1 false, !"_RNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB5_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop"}
!34557 = distinct !{!34557, !34556, !"_RNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB5_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop: argument 0"}
!34558 = distinct !{!34558, i1 false, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECsfISxE4fmY1Y_14polars_parquet"}
!34559 = distinct !{!34559, !34558, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECsfISxE4fmY1Y_14polars_parquet: argument 0"}
!34560 = distinct !DILocation(line: 643, column: 1, scope: !33485)
!34561 = distinct !{!34561, i1 false, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1W_EEECsfISxE4fmY1Y_14polars_parquet"}
!34562 = distinct !{!34562, !34561, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1W_EEECsfISxE4fmY1Y_14polars_parquet: argument 0"}
!34563 = distinct !{!34563, i1 false, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1o_EENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet"}
!34564 = distinct !{!34564, !34563, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1o_EENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet: argument 0"}
!34565 = distinct !DILocation(line: 810, column: 1, scope: !98, inlinedAt: !34560)
!34566 = distinct !DILocation(line: 810, column: 1, scope: !102, inlinedAt: !34565)
!34567 = distinct !DILocation(line: 2814, column: 32, scope: !101, inlinedAt: !34566)
!34568 = distinct !DILocation(line: 3193, column: 26, scope: !100, inlinedAt: !34567)
!34569 = distinct !DILocation(line: 64, column: 9, scope: !101, inlinedAt: !34566)
!34570 = distinct !{!34570, i1 false, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECsfISxE4fmY1Y_14polars_parquet"}
!34571 = distinct !{!34571, !34570, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECsfISxE4fmY1Y_14polars_parquet: argument 0"}
!34572 = distinct !DILocation(line: 643, column: 1, scope: !33485)
!34573 = distinct !{!34573, i1 false, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1W_EEECsfISxE4fmY1Y_14polars_parquet"}
!34574 = distinct !{!34574, !34573, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1W_EEECsfISxE4fmY1Y_14polars_parquet: argument 0"}
!34575 = distinct !{!34575, i1 false, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1o_EENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet"}
!34576 = distinct !{!34576, !34575, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1o_EENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet: argument 0"}
!34577 = distinct !DILocation(line: 810, column: 1, scope: !98, inlinedAt: !34572)
!34578 = distinct !DILocation(line: 810, column: 1, scope: !102, inlinedAt: !34577)
!34579 = distinct !DILocation(line: 2814, column: 32, scope: !101, inlinedAt: !34578)
!34580 = distinct !DILocation(line: 3193, column: 26, scope: !100, inlinedAt: !34579)
!34581 = distinct !DILocation(line: 64, column: 9, scope: !101, inlinedAt: !34578)
!34582 = distinct !{!34582, i1 false, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECsfISxE4fmY1Y_14polars_parquet"}
!34583 = distinct !{!34583, !34582, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECsfISxE4fmY1Y_14polars_parquet: argument 0"}
!34584 = distinct !DILocation(line: 643, column: 1, scope: !33485)
!34585 = distinct !{!34585, i1 false, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1W_EEECsfISxE4fmY1Y_14polars_parquet"}
!34586 = distinct !{!34586, !34585, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1W_EEECsfISxE4fmY1Y_14polars_parquet: argument 0"}
!34587 = distinct !{!34587, i1 false, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1o_EENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet"}
!34588 = distinct !{!34588, !34587, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1o_EENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet: argument 0"}
!34589 = distinct !DILocation(line: 810, column: 1, scope: !98, inlinedAt: !34584)
!34590 = distinct !DILocation(line: 810, column: 1, scope: !102, inlinedAt: !34589)
!34591 = distinct !DILocation(line: 2814, column: 32, scope: !101, inlinedAt: !34590)
!34592 = distinct !DILocation(line: 3193, column: 26, scope: !100, inlinedAt: !34591)
!34593 = distinct !DILocation(line: 64, column: 9, scope: !101, inlinedAt: !34590)
!34594 = !DILexicalBlockFile(scope: !33493, file: !1207, discriminator: 54)
!34595 = !DILexicalBlockFile(scope: !33492, file: !1207, discriminator: 54)
!34596 = !DILocation(line: 49, column: 39, scope: !33490)
!34597 = !DILocation(line: 108, column: 14, scope: !34595, inlinedAt: !34596)
!34598 = !DILocation(line: 67, column: 16, scope: !34594, inlinedAt: !34597)
!34599 = !DILexicalBlockFile(scope: !33491, file: !1351, discriminator: 54)
!34600 = !DILocation(line: 558, column: 16, scope: !34599, inlinedAt: !34598)
!34601 = !{!33498}
!34602 = !DILocation(line: 49, column: 22, scope: !33490)
!34603 = !DILexicalBlockFile(scope: !33506, file: !1434, discriminator: 2)
!34604 = !DILocation(line: 49, column: 22, scope: !34603)
!34605 = !DILexicalBlockFile(scope: !33490, file: !1260, discriminator: 0)
!34606 = !DILexicalBlockFile(scope: !33490, file: !1434, discriminator: 4)
!34607 = !DILocation(line: 49, column: 22, scope: !34606)
!34608 = !DILexicalBlockFile(scope: !33510, file: !1434, discriminator: 6)
!34609 = !DILocation(line: 49, column: 22, scope: !34608)
!34610 = !DILexicalBlockFile(scope: !33493, file: !1207, discriminator: 52)
!34611 = !DILexicalBlockFile(scope: !33492, file: !1207, discriminator: 52)
!34612 = !DILocation(line: 79, column: 13, scope: !33490)
!34613 = !DILocation(line: 108, column: 14, scope: !34611, inlinedAt: !34612)
!34614 = !DILocation(line: 67, column: 16, scope: !34610, inlinedAt: !34613)
!34615 = !DILexicalBlockFile(scope: !33491, file: !1351, discriminator: 52)
!34616 = !DILocation(line: 558, column: 16, scope: !34615, inlinedAt: !34614)
!34617 = !{!33514}
!34618 = !DILocation(line: 78, column: 45, scope: !33490)
!34619 = !DILexicalBlockFile(scope: !33521, file: !1434, discriminator: 2)
!34620 = !DILocation(line: 78, column: 45, scope: !34619)
!34621 = !DILocation(line: 78, column: 45, scope: !34606)
!34622 = !DILexicalBlockFile(scope: !33524, file: !1434, discriminator: 6)
!34623 = !DILocation(line: 78, column: 45, scope: !34622)
!34624 = !DILexicalBlockFile(scope: !33493, file: !1207, discriminator: 42)
!34625 = !DILexicalBlockFile(scope: !33492, file: !1207, discriminator: 42)
!34626 = !DILocation(line: 119, column: 13, scope: !33490)
!34627 = !DILocation(line: 108, column: 14, scope: !34625, inlinedAt: !34626)
!34628 = !DILocation(line: 67, column: 16, scope: !34624, inlinedAt: !34627)
!34629 = !DILexicalBlockFile(scope: !33491, file: !1351, discriminator: 42)
!34630 = !DILocation(line: 558, column: 16, scope: !34629, inlinedAt: !34628)
!34631 = !{!33528}
!34632 = !DILocation(line: 118, column: 40, scope: !33490)
!34633 = !DILexicalBlockFile(scope: !33535, file: !1434, discriminator: 2)
!34634 = !DILocation(line: 118, column: 40, scope: !34633)
!34635 = !DILocation(line: 118, column: 40, scope: !34606)
!34636 = !DILexicalBlockFile(scope: !33538, file: !1434, discriminator: 6)
!34637 = !DILocation(line: 118, column: 40, scope: !34636)
!34638 = !DILexicalBlockFile(scope: !33493, file: !1207, discriminator: 40)
!34639 = !DILexicalBlockFile(scope: !33492, file: !1207, discriminator: 40)
!34640 = !DILocation(line: 127, column: 13, scope: !33490)
!34641 = !DILocation(line: 108, column: 14, scope: !34639, inlinedAt: !34640)
!34642 = !DILocation(line: 67, column: 16, scope: !34638, inlinedAt: !34641)
!34643 = !DILexicalBlockFile(scope: !33491, file: !1351, discriminator: 40)
!34644 = !DILocation(line: 558, column: 16, scope: !34643, inlinedAt: !34642)
!34645 = !{!33542}
!34646 = !DILocation(line: 126, column: 41, scope: !33490)
!34647 = !DILexicalBlockFile(scope: !33549, file: !1434, discriminator: 2)
!34648 = !DILocation(line: 126, column: 41, scope: !34647)
!34649 = !DILocation(line: 126, column: 41, scope: !34606)
!34650 = !DILexicalBlockFile(scope: !33552, file: !1434, discriminator: 6)
!34651 = !DILocation(line: 126, column: 41, scope: !34650)
!34652 = !DILexicalBlockFile(scope: !33493, file: !1207, discriminator: 50)
!34653 = !DILexicalBlockFile(scope: !33492, file: !1207, discriminator: 50)
!34654 = !DILocation(line: 87, column: 13, scope: !33490)
!34655 = !DILocation(line: 108, column: 14, scope: !34653, inlinedAt: !34654)
!34656 = !DILocation(line: 67, column: 16, scope: !34652, inlinedAt: !34655)
!34657 = !DILexicalBlockFile(scope: !33491, file: !1351, discriminator: 50)
!34658 = !DILocation(line: 558, column: 16, scope: !34657, inlinedAt: !34656)
!34659 = !{!33556}
!34660 = !DILocation(line: 86, column: 41, scope: !33490)
!34661 = !DILexicalBlockFile(scope: !33563, file: !1434, discriminator: 2)
!34662 = !DILocation(line: 86, column: 41, scope: !34661)
!34663 = !DILocation(line: 86, column: 41, scope: !34606)
!34664 = !DILexicalBlockFile(scope: !33566, file: !1434, discriminator: 6)
!34665 = !DILocation(line: 86, column: 41, scope: !34664)
!34666 = !DILexicalBlockFile(scope: !33493, file: !1207, discriminator: 48)
!34667 = !DILexicalBlockFile(scope: !33492, file: !1207, discriminator: 48)
!34668 = !DILocation(line: 95, column: 13, scope: !33490)
!34669 = !DILocation(line: 108, column: 14, scope: !34667, inlinedAt: !34668)
!34670 = !DILocation(line: 67, column: 16, scope: !34666, inlinedAt: !34669)
!34671 = !DILexicalBlockFile(scope: !33491, file: !1351, discriminator: 48)
!34672 = !DILocation(line: 558, column: 16, scope: !34671, inlinedAt: !34670)
!34673 = !{!33570}
!34674 = !DILocation(line: 94, column: 42, scope: !33490)
!34675 = !DILexicalBlockFile(scope: !33577, file: !1434, discriminator: 2)
!34676 = !DILocation(line: 94, column: 42, scope: !34675)
!34677 = !DILocation(line: 94, column: 42, scope: !34606)
!34678 = !DILexicalBlockFile(scope: !33580, file: !1434, discriminator: 6)
!34679 = !DILocation(line: 94, column: 42, scope: !34678)
!34680 = !DILexicalBlockFile(scope: !33493, file: !1207, discriminator: 46)
!34681 = !DILexicalBlockFile(scope: !33492, file: !1207, discriminator: 46)
!34682 = !DILocation(line: 103, column: 13, scope: !33490)
!34683 = !DILocation(line: 108, column: 14, scope: !34681, inlinedAt: !34682)
!34684 = !DILocation(line: 67, column: 16, scope: !34680, inlinedAt: !34683)
!34685 = !DILexicalBlockFile(scope: !33491, file: !1351, discriminator: 46)
!34686 = !DILocation(line: 558, column: 16, scope: !34685, inlinedAt: !34684)
!34687 = !{!33584}
!34688 = !DILexicalBlockFile(scope: !33493, file: !1207, discriminator: 44)
!34689 = !DILexicalBlockFile(scope: !33492, file: !1207, discriminator: 44)
!34690 = !DILocation(line: 111, column: 13, scope: !33490)
!34691 = !DILocation(line: 108, column: 14, scope: !34689, inlinedAt: !34690)
!34692 = !DILocation(line: 67, column: 16, scope: !34688, inlinedAt: !34691)
!34693 = !DILexicalBlockFile(scope: !33491, file: !1351, discriminator: 44)
!34694 = !DILocation(line: 558, column: 16, scope: !34693, inlinedAt: !34692)
!34695 = !{!33591}
!34696 = !DILocation(line: 102, column: 42, scope: !33490)
!34697 = !DILexicalBlockFile(scope: !33598, file: !1434, discriminator: 2)
!34698 = !DILocation(line: 102, column: 42, scope: !34697)
!34699 = !DILocation(line: 102, column: 42, scope: !34606)
!34700 = !DILexicalBlockFile(scope: !33601, file: !1434, discriminator: 6)
!34701 = !DILocation(line: 102, column: 42, scope: !34700)
!34702 = !DILocation(line: 110, column: 42, scope: !33490)
!34703 = !DILexicalBlockFile(scope: !33605, file: !1434, discriminator: 2)
!34704 = !DILocation(line: 110, column: 42, scope: !34703)
!34705 = !DILocation(line: 110, column: 42, scope: !34606)
!34706 = !DILexicalBlockFile(scope: !33608, file: !1434, discriminator: 6)
!34707 = !DILocation(line: 110, column: 42, scope: !34706)
!34708 = !DILocation(line: 53, column: 51, scope: !33490)
!34709 = !DILocation(line: 3049, column: 14, scope: !33610, inlinedAt: !34708)
!34710 = !DILexicalBlockFile(scope: !33493, file: !1207, discriminator: 56)
!34711 = !DILexicalBlockFile(scope: !33492, file: !1207, discriminator: 56)
!34712 = !DILocation(line: 55, column: 17, scope: !33612)
!34713 = !DILocation(line: 108, column: 14, scope: !34711, inlinedAt: !34712)
!34714 = !DILocation(line: 67, column: 16, scope: !34710, inlinedAt: !34713)
!34715 = !DILexicalBlockFile(scope: !33491, file: !1351, discriminator: 56)
!34716 = !DILocation(line: 558, column: 16, scope: !34715, inlinedAt: !34714)
!34717 = !{!33616}
!34718 = !DILocation(line: 54, column: 40, scope: !33612)
!34719 = !DILexicalBlockFile(scope: !33622, file: !1434, discriminator: 2)
!34720 = !DILocation(line: 54, column: 40, scope: !34719)
!34721 = !DILexicalBlockFile(scope: !33612, file: !1260, discriminator: 0)
!34722 = !DILexicalBlockFile(scope: !33612, file: !1434, discriminator: 4)
!34723 = !DILocation(line: 54, column: 40, scope: !34722)
!34724 = !DILexicalBlockFile(scope: !33626, file: !1434, discriminator: 6)
!34725 = !DILocation(line: 54, column: 40, scope: !34724)
!34726 = !DILocation(line: 64, column: 18, scope: !33628)
!34727 = !DILocation(line: 3923, column: 29, scope: !33632, inlinedAt: !34726)
!34728 = !DILocation(line: 3927, column: 30, scope: !33635, inlinedAt: !34726)
!34729 = !DILocation(line: 3927, column: 23, scope: !33635, inlinedAt: !34726)
!34730 = !DILocation(line: 65, column: 18, scope: !33628)
!34731 = !DILocation(line: 836, column: 9, scope: !33638, inlinedAt: !34730)
!34732 = !DILocation(line: 74, column: 18, scope: !33628)
!34733 = !DILocation(line: 2104, column: 9, scope: !33641, inlinedAt: !34732)
!34734 = !DILocation(line: 3892, column: 9, scope: !33642, inlinedAt: !34733)
!34735 = !{!"branch_weights", i32 -1610612736, i32 536870912, i32 536870912, i32 536870912, i32 536870912, i32 536870912, i32 535799313, i32 536870912, i32 535799, i32 535799}
!34736 = !DILexicalBlockFile(scope: !33493, file: !1207, discriminator: 38)
!34737 = !DILexicalBlockFile(scope: !33492, file: !1207, discriminator: 38)
!34738 = !DILocation(line: 135, column: 13, scope: !33490)
!34739 = !DILocation(line: 108, column: 14, scope: !34737, inlinedAt: !34738)
!34740 = !DILocation(line: 67, column: 16, scope: !34736, inlinedAt: !34739)
!34741 = !DILexicalBlockFile(scope: !33491, file: !1351, discriminator: 38)
!34742 = !DILocation(line: 558, column: 16, scope: !34741, inlinedAt: !34740)
!34743 = !{!33649}
!34744 = !DILocation(line: 134, column: 62, scope: !33490)
!34745 = !DILexicalBlockFile(scope: !33656, file: !1434, discriminator: 2)
!34746 = !DILocation(line: 134, column: 62, scope: !34745)
!34747 = !DILocation(line: 134, column: 62, scope: !34606)
!34748 = !DILexicalBlockFile(scope: !33659, file: !1434, discriminator: 6)
!34749 = !DILocation(line: 134, column: 62, scope: !34748)
!34750 = !DILexicalBlockFile(scope: !33493, file: !1207, discriminator: 14)
!34751 = !DILexicalBlockFile(scope: !33492, file: !1207, discriminator: 14)
!34752 = !DILocation(line: 480, column: 13, scope: !33490)
!34753 = !DILocation(line: 108, column: 14, scope: !34751, inlinedAt: !34752)
!34754 = !DILocation(line: 67, column: 16, scope: !34750, inlinedAt: !34753)
!34755 = !DILexicalBlockFile(scope: !33491, file: !1351, discriminator: 14)
!34756 = !DILocation(line: 558, column: 16, scope: !34755, inlinedAt: !34754)
!34757 = !{!33663}
!34758 = !DILexicalBlockFile(scope: !33493, file: !1207, discriminator: 24)
!34759 = !DILexicalBlockFile(scope: !33492, file: !1207, discriminator: 24)
!34760 = !DILocation(line: 304, column: 13, scope: !33490)
!34761 = !DILocation(line: 108, column: 14, scope: !34759, inlinedAt: !34760)
!34762 = !DILocation(line: 67, column: 16, scope: !34758, inlinedAt: !34761)
!34763 = !DILexicalBlockFile(scope: !33491, file: !1351, discriminator: 24)
!34764 = !DILocation(line: 558, column: 16, scope: !34763, inlinedAt: !34762)
!34765 = !{!33670}
!34766 = !DILexicalBlockFile(scope: !33493, file: !1207, discriminator: 18)
!34767 = !DILexicalBlockFile(scope: !33492, file: !1207, discriminator: 18)
!34768 = !DILocation(line: 395, column: 13, scope: !33490)
!34769 = !DILocation(line: 108, column: 14, scope: !34767, inlinedAt: !34768)
!34770 = !DILocation(line: 67, column: 16, scope: !34766, inlinedAt: !34769)
!34771 = !DILexicalBlockFile(scope: !33491, file: !1351, discriminator: 18)
!34772 = !DILocation(line: 558, column: 16, scope: !34771, inlinedAt: !34770)
!34773 = !{!33677}
!34774 = !DILexicalBlockFile(scope: !33493, file: !1207, discriminator: 26)
!34775 = !DILexicalBlockFile(scope: !33492, file: !1207, discriminator: 26)
!34776 = !DILocation(line: 279, column: 17, scope: !33681)
!34777 = !DILocation(line: 108, column: 14, scope: !34775, inlinedAt: !34776)
!34778 = !DILocation(line: 67, column: 16, scope: !34774, inlinedAt: !34777)
!34779 = !DILexicalBlockFile(scope: !33491, file: !1351, discriminator: 26)
!34780 = !DILocation(line: 558, column: 16, scope: !34779, inlinedAt: !34778)
!34781 = !{!33685}
!34782 = !{!"branch_weights", i32 0, i32 2143197, i32 2143197, i32 2143197255}
!34783 = !DILocation(line: 278, column: 40, scope: !33681)
!34784 = !DILexicalBlockFile(scope: !33692, file: !1434, discriminator: 2)
!34785 = !DILocation(line: 278, column: 40, scope: !34784)
!34786 = !DILexicalBlockFile(scope: !33681, file: !1260, discriminator: 0)
!34787 = !DILexicalBlockFile(scope: !33681, file: !1434, discriminator: 4)
!34788 = !DILocation(line: 278, column: 40, scope: !34787)
!34789 = !DILexicalBlockFile(scope: !33696, file: !1434, discriminator: 6)
!34790 = !DILocation(line: 278, column: 40, scope: !34789)
!34791 = !DILexicalBlockFile(scope: !33702, file: !1272, discriminator: 10)
!34792 = !DILocation(line: 288, column: 18, scope: !33697)
!34793 = !DILocation(line: 3923, column: 29, scope: !34791, inlinedAt: !34792)
!34794 = !DILexicalBlockFile(scope: !33705, file: !1272, discriminator: 10)
!34795 = !DILocation(line: 3927, column: 30, scope: !34794, inlinedAt: !34792)
!34796 = !DILocation(line: 3927, column: 23, scope: !34794, inlinedAt: !34792)
!34797 = !DILexicalBlockFile(scope: !33708, file: !1146, discriminator: 10)
!34798 = !DILocation(line: 289, column: 18, scope: !33697)
!34799 = !DILocation(line: 836, column: 9, scope: !34797, inlinedAt: !34798)
!34800 = !DILexicalBlockFile(scope: !33710, file: !1146, discriminator: 10)
!34801 = !DILocation(line: 299, column: 18, scope: !33697)
!34802 = !DILocation(line: 2104, column: 9, scope: !34800, inlinedAt: !34801)
!34803 = !DILocation(line: 287, column: 25, scope: !33697)
!34804 = !DILexicalBlockFile(scope: !33716, file: !1434, discriminator: 2)
!34805 = !DILocation(line: 287, column: 25, scope: !34804)
!34806 = !DILexicalBlockFile(scope: !33493, file: !1207, discriminator: 28)
!34807 = !DILexicalBlockFile(scope: !33492, file: !1207, discriminator: 28)
!34808 = !DILocation(line: 252, column: 17, scope: !33720)
!34809 = !DILocation(line: 108, column: 14, scope: !34807, inlinedAt: !34808)
!34810 = !DILocation(line: 67, column: 16, scope: !34806, inlinedAt: !34809)
!34811 = !DILexicalBlockFile(scope: !33491, file: !1351, discriminator: 28)
!34812 = !DILocation(line: 558, column: 16, scope: !34811, inlinedAt: !34810)
!34813 = !{!33724}
!34814 = !DILocation(line: 251, column: 40, scope: !33720)
!34815 = !DILexicalBlockFile(scope: !33730, file: !1434, discriminator: 2)
!34816 = !DILocation(line: 251, column: 40, scope: !34815)
!34817 = !DILexicalBlockFile(scope: !33720, file: !1260, discriminator: 0)
!34818 = !DILexicalBlockFile(scope: !33720, file: !1434, discriminator: 4)
!34819 = !DILocation(line: 251, column: 40, scope: !34818)
!34820 = !DILexicalBlockFile(scope: !33733, file: !1434, discriminator: 6)
!34821 = !DILocation(line: 251, column: 40, scope: !34820)
!34822 = !DILexicalBlockFile(scope: !33737, file: !1272, discriminator: 8)
!34823 = !DILocation(line: 261, column: 18, scope: !33734)
!34824 = !DILocation(line: 3923, column: 29, scope: !34822, inlinedAt: !34823)
!34825 = !DILexicalBlockFile(scope: !33739, file: !1272, discriminator: 8)
!34826 = !DILocation(line: 3927, column: 30, scope: !34825, inlinedAt: !34823)
!34827 = !DILocation(line: 3927, column: 23, scope: !34825, inlinedAt: !34823)
!34828 = !DILexicalBlockFile(scope: !33741, file: !1146, discriminator: 8)
!34829 = !DILocation(line: 262, column: 18, scope: !33734)
!34830 = !DILocation(line: 836, column: 9, scope: !34828, inlinedAt: !34829)
!34831 = !DILexicalBlockFile(scope: !33743, file: !1146, discriminator: 8)
!34832 = !DILocation(line: 272, column: 18, scope: !33734)
!34833 = !DILocation(line: 2104, column: 9, scope: !34831, inlinedAt: !34832)
!34834 = !DILocation(line: 260, column: 25, scope: !33734)
!34835 = !DILexicalBlockFile(scope: !33748, file: !1434, discriminator: 2)
!34836 = !DILocation(line: 260, column: 25, scope: !34835)
!34837 = !DILexicalBlockFile(scope: !33493, file: !1207, discriminator: 36)
!34838 = !DILexicalBlockFile(scope: !33492, file: !1207, discriminator: 36)
!34839 = !DILocation(line: 145, column: 17, scope: !33753)
!34840 = !DILocation(line: 108, column: 14, scope: !34838, inlinedAt: !34839)
!34841 = !DILocation(line: 67, column: 16, scope: !34837, inlinedAt: !34840)
!34842 = !DILexicalBlockFile(scope: !33491, file: !1351, discriminator: 36)
!34843 = !DILocation(line: 558, column: 16, scope: !34842, inlinedAt: !34841)
!34844 = !{!33757}
!34845 = !{!33762}
!34846 = !{!33763}
!34847 = !DINamespace(name: "{impl#7}", scope: !1370)
!34848 = !{!33762, !33779, !33778, !33777, !33763, !33776}
!34849 = !{!33762, !33779, !33778, !33777, !33763}
!34850 = !{!33762, !33778, !33777, !33763, !33776}
!34851 = !DILexicalBlockFile(scope: !33785, file: !1434, discriminator: 2)
!34852 = !{!33779, !33778, !33777, !33763, !33776}
!34853 = !DILexicalBlockFile(scope: !33775, file: !1260, discriminator: 0)
!34854 = !{!33762, !33779, !33778, !33777, !33776}
!34855 = !{!33788}
!34856 = !{!33788, !33763}
!34857 = !{!33791}
!34858 = !{!33794}
!34859 = !{!33796}
!34860 = !{!33799}
!34861 = !{!33799, !33796, !33794, !33791, !33788, !33763}
!34862 = !{!33799, !33796, !33794, !33791, !33788, !33762, !33778, !33777, !33763}
!34863 = !{!33762, !33778, !33777}
!34864 = !{!33811}
!34865 = !{!33812, !33762, !33779, !33778, !33777, !33763, !33776}
!34866 = !DIFile(filename: "crates/polars-parquet/src/arrow/read/deserialize/primitive/integer.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "cb3dcc14365f60ff1cbf5fab34dba4f1")
!34867 = !DINamespace(name: "integer", scope: !1439)
!34868 = !DINamespace(name: "IntDecoder", scope: !34867)
!34869 = !DILexicalBlockFile(scope: !33821, file: !1434, discriminator: 2)
!34870 = !{!33825}
!34871 = !{!33826, !33762, !33779, !33778, !33777, !33763, !33776}
!34872 = !DILexicalBlockFile(scope: !33835, file: !1434, discriminator: 2)
!34873 = !{!33838}
!34874 = !DIFile(filename: "crates/polars-parquet/src/arrow/read/deserialize/primitive/float.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "f94bbcf27c9ca256d710e51445f965c6")
!34875 = !DINamespace(name: "float", scope: !1439)
!34876 = !DINamespace(name: "FloatDecoder", scope: !34875)
!34877 = !DILexicalBlockFile(scope: !33847, file: !1434, discriminator: 2)
!34878 = !DILexicalBlockFile(scope: !33768, file: !1260, discriminator: 0)
!34879 = !{!33850}
!34880 = !DILexicalBlockFile(scope: !33859, file: !1434, discriminator: 2)
!34881 = !{!33862}
!34882 = !DILexicalBlockFile(scope: !33871, file: !1434, discriminator: 2)
!34883 = !{!33874}
!34884 = !DILexicalBlockFile(scope: !33883, file: !1434, discriminator: 2)
!34885 = !DILexicalBlockFile(scope: !33493, file: !1207, discriminator: 12)
!34886 = !DILexicalBlockFile(scope: !33492, file: !1207, discriminator: 12)
!34887 = !DILocation(line: 488, column: 13, scope: !33490)
!34888 = !DILocation(line: 108, column: 14, scope: !34886, inlinedAt: !34887)
!34889 = !DILocation(line: 67, column: 16, scope: !34885, inlinedAt: !34888)
!34890 = !DILexicalBlockFile(scope: !33491, file: !1351, discriminator: 12)
!34891 = !DILocation(line: 558, column: 16, scope: !34890, inlinedAt: !34889)
!34892 = !{!33888}
!34893 = !{!33893}
!34894 = !DILocation(line: 479, column: 42, scope: !33490)
!34895 = !DILexicalBlockFile(scope: !33901, file: !1434, discriminator: 2)
!34896 = !DILocation(line: 479, column: 42, scope: !34895)
!34897 = !DILocation(line: 479, column: 42, scope: !34606)
!34898 = !DILexicalBlockFile(scope: !33904, file: !1434, discriminator: 6)
!34899 = !DILocation(line: 479, column: 42, scope: !34898)
!34900 = !DILocation(line: 487, column: 42, scope: !33490)
!34901 = !DILexicalBlockFile(scope: !33908, file: !1434, discriminator: 2)
!34902 = !DILocation(line: 487, column: 42, scope: !34901)
!34903 = !DILocation(line: 487, column: 42, scope: !34606)
!34904 = !DILexicalBlockFile(scope: !33911, file: !1434, discriminator: 6)
!34905 = !DILocation(line: 487, column: 42, scope: !34904)
!34906 = !DILexicalBlockFile(scope: !33493, file: !1207, discriminator: 34)
!34907 = !DILexicalBlockFile(scope: !33492, file: !1207, discriminator: 34)
!34908 = !DILocation(line: 172, column: 17, scope: !33912)
!34909 = !DILocation(line: 108, column: 14, scope: !34907, inlinedAt: !34908)
!34910 = !DILocation(line: 67, column: 16, scope: !34906, inlinedAt: !34909)
!34911 = !DILexicalBlockFile(scope: !33491, file: !1351, discriminator: 34)
!34912 = !DILocation(line: 558, column: 16, scope: !34911, inlinedAt: !34910)
!34913 = !{!33916}
!34914 = !DILocation(line: 171, column: 40, scope: !33912)
!34915 = !DILexicalBlockFile(scope: !33922, file: !1434, discriminator: 2)
!34916 = !DILocation(line: 171, column: 40, scope: !34915)
!34917 = !DILexicalBlockFile(scope: !33912, file: !1260, discriminator: 0)
!34918 = !DILexicalBlockFile(scope: !33912, file: !1434, discriminator: 4)
!34919 = !DILocation(line: 171, column: 40, scope: !34918)
!34920 = !DILexicalBlockFile(scope: !33925, file: !1434, discriminator: 6)
!34921 = !DILocation(line: 171, column: 40, scope: !34920)
!34922 = !DILexicalBlockFile(scope: !33929, file: !1272, discriminator: 2)
!34923 = !DILocation(line: 181, column: 18, scope: !33926)
!34924 = !DILocation(line: 3923, column: 29, scope: !34922, inlinedAt: !34923)
!34925 = !DILexicalBlockFile(scope: !33931, file: !1272, discriminator: 2)
!34926 = !DILocation(line: 3927, column: 30, scope: !34925, inlinedAt: !34923)
!34927 = !DILocation(line: 3927, column: 23, scope: !34925, inlinedAt: !34923)
!34928 = !DILexicalBlockFile(scope: !33933, file: !1146, discriminator: 2)
!34929 = !DILocation(line: 182, column: 18, scope: !33926)
!34930 = !DILocation(line: 836, column: 9, scope: !34928, inlinedAt: !34929)
!34931 = !DILexicalBlockFile(scope: !33935, file: !1146, discriminator: 2)
!34932 = !DILocation(line: 194, column: 18, scope: !33926)
!34933 = !DILocation(line: 2104, column: 9, scope: !34931, inlinedAt: !34932)
!34934 = !DILocation(line: 180, column: 25, scope: !33926)
!34935 = !DILexicalBlockFile(scope: !33940, file: !1434, discriminator: 2)
!34936 = !DILocation(line: 180, column: 25, scope: !34935)
!34937 = !DILexicalBlockFile(scope: !33493, file: !1207, discriminator: 32)
!34938 = !DILexicalBlockFile(scope: !33492, file: !1207, discriminator: 32)
!34939 = !DILocation(line: 203, column: 17, scope: !33944)
!34940 = !DILocation(line: 108, column: 14, scope: !34938, inlinedAt: !34939)
!34941 = !DILocation(line: 67, column: 16, scope: !34937, inlinedAt: !34940)
!34942 = !DILexicalBlockFile(scope: !33491, file: !1351, discriminator: 32)
!34943 = !DILocation(line: 558, column: 16, scope: !34942, inlinedAt: !34941)
!34944 = !{!33948}
!34945 = !DILocation(line: 202, column: 40, scope: !33944)
!34946 = !DILexicalBlockFile(scope: !33954, file: !1434, discriminator: 2)
!34947 = !DILocation(line: 202, column: 40, scope: !34946)
!34948 = !DILexicalBlockFile(scope: !33944, file: !1260, discriminator: 0)
!34949 = !DILexicalBlockFile(scope: !33944, file: !1434, discriminator: 4)
!34950 = !DILocation(line: 202, column: 40, scope: !34949)
!34951 = !DILexicalBlockFile(scope: !33957, file: !1434, discriminator: 6)
!34952 = !DILocation(line: 202, column: 40, scope: !34951)
!34953 = !DILexicalBlockFile(scope: !33961, file: !1272, discriminator: 4)
!34954 = !DILocation(line: 212, column: 18, scope: !33958)
!34955 = !DILocation(line: 3923, column: 29, scope: !34953, inlinedAt: !34954)
!34956 = !DILexicalBlockFile(scope: !33963, file: !1272, discriminator: 4)
!34957 = !DILocation(line: 3927, column: 30, scope: !34956, inlinedAt: !34954)
!34958 = !DILocation(line: 3927, column: 23, scope: !34956, inlinedAt: !34954)
!34959 = !DILexicalBlockFile(scope: !33965, file: !1146, discriminator: 4)
!34960 = !DILocation(line: 213, column: 18, scope: !33958)
!34961 = !DILocation(line: 836, column: 9, scope: !34959, inlinedAt: !34960)
!34962 = !DILexicalBlockFile(scope: !33967, file: !1146, discriminator: 4)
!34963 = !DILocation(line: 225, column: 18, scope: !33958)
!34964 = !DILocation(line: 2104, column: 9, scope: !34962, inlinedAt: !34963)
!34965 = !DILocation(line: 211, column: 25, scope: !33958)
!34966 = !DILexicalBlockFile(scope: !33972, file: !1434, discriminator: 2)
!34967 = !DILocation(line: 211, column: 25, scope: !34966)
!34968 = !DILexicalBlockFile(scope: !33493, file: !1207, discriminator: 30)
!34969 = !DILexicalBlockFile(scope: !33492, file: !1207, discriminator: 30)
!34970 = !DILocation(line: 234, column: 17, scope: !33490)
!34971 = !DILocation(line: 108, column: 14, scope: !34969, inlinedAt: !34970)
!34972 = !DILocation(line: 67, column: 16, scope: !34968, inlinedAt: !34971)
!34973 = !DILexicalBlockFile(scope: !33491, file: !1351, discriminator: 30)
!34974 = !DILocation(line: 558, column: 16, scope: !34973, inlinedAt: !34972)
!34975 = !{!33979}
!34976 = !DILocation(line: 233, column: 40, scope: !33490)
!34977 = !DILexicalBlockFile(scope: !33985, file: !1434, discriminator: 2)
!34978 = !DILocation(line: 233, column: 40, scope: !34977)
!34979 = !DILocation(line: 233, column: 40, scope: !34606)
!34980 = !DILexicalBlockFile(scope: !33988, file: !1434, discriminator: 6)
!34981 = !DILocation(line: 233, column: 40, scope: !34980)
!34982 = !DILexicalBlockFile(scope: !33992, file: !1272, discriminator: 6)
end_hunk_6
begin_hunk_7_@llvm.vector.reduce.or.v2i64
!34997 = !DILexicalBlockFile(scope: !33492, file: !1207, discriminator: 58)
!34998 = !DILocation(line: 159, column: 17, scope: !34004)
!34999 = !DILocation(line: 108, column: 14, scope: !34997, inlinedAt: !34998)
!35000 = !DILocation(line: 67, column: 16, scope: !34996, inlinedAt: !34999)
!35001 = !DILexicalBlockFile(scope: !33491, file: !1351, discriminator: 58)
!35002 = !DILocation(line: 558, column: 16, scope: !35001, inlinedAt: !35000)
!35003 = !{!34008}
!35004 = !DILocation(line: 158, column: 13, scope: !34004)
!35005 = !DILexicalBlockFile(scope: !34014, file: !1434, discriminator: 2)
!35006 = !DILocation(line: 158, column: 13, scope: !35005)
!35007 = !DILexicalBlockFile(scope: !34004, file: !1260, discriminator: 0)
!35008 = !DILexicalBlockFile(scope: !34004, file: !1434, discriminator: 4)
!35009 = !DILocation(line: 158, column: 13, scope: !35008)
!35010 = !DILexicalBlockFile(scope: !34017, file: !1434, discriminator: 6)
!35011 = !DILocation(line: 158, column: 13, scope: !35010)
!35012 = !DILexicalBlockFile(scope: !33493, file: !1207, discriminator: 22)
!35013 = !DILexicalBlockFile(scope: !33492, file: !1207, discriminator: 22)
!35014 = !DILocation(line: 312, column: 13, scope: !33490)
!35015 = !DILocation(line: 108, column: 14, scope: !35013, inlinedAt: !35014)
!35016 = !DILocation(line: 67, column: 16, scope: !35012, inlinedAt: !35015)
!35017 = !DILexicalBlockFile(scope: !33491, file: !1351, discriminator: 22)
!35018 = !DILocation(line: 558, column: 16, scope: !35017, inlinedAt: !35016)
!35019 = !{!34021}
!35020 = !DILexicalBlockFile(scope: !33493, file: !1207, discriminator: 20)
!35021 = !DILexicalBlockFile(scope: !33492, file: !1207, discriminator: 20)
!35022 = !DILocation(line: 360, column: 17, scope: !33490)
!35023 = !DILocation(line: 108, column: 14, scope: !35021, inlinedAt: !35022)
!35024 = !DILocation(line: 67, column: 16, scope: !35020, inlinedAt: !35023)
!35025 = !DILexicalBlockFile(scope: !33491, file: !1351, discriminator: 20)
!35026 = !DILocation(line: 558, column: 16, scope: !35025, inlinedAt: !35024)
!35027 = !{!34028}
!35028 = !DILocation(line: 303, column: 49, scope: !33490)
!35029 = !DILexicalBlockFile(scope: !34035, file: !1434, discriminator: 2)
!35030 = !DILocation(line: 303, column: 49, scope: !35029)
!35031 = !DILocation(line: 303, column: 49, scope: !34606)
!35032 = !DILexicalBlockFile(scope: !34038, file: !1434, discriminator: 6)
!35033 = !DILocation(line: 303, column: 49, scope: !35032)
!35034 = !DILocation(line: 311, column: 49, scope: !33490)
!35035 = !DILexicalBlockFile(scope: !34042, file: !1434, discriminator: 2)
!35036 = !DILocation(line: 311, column: 49, scope: !35035)
!35037 = !DILocation(line: 311, column: 49, scope: !34606)
!35038 = !DILexicalBlockFile(scope: !34045, file: !1434, discriminator: 6)
!35039 = !DILocation(line: 311, column: 49, scope: !35038)
!35040 = !DILocation(line: 359, column: 40, scope: !33490)
!35041 = !DILexicalBlockFile(scope: !34049, file: !1434, discriminator: 2)
!35042 = !DILocation(line: 359, column: 40, scope: !35041)
!35043 = !DILocation(line: 359, column: 40, scope: !34606)
!35044 = !DILexicalBlockFile(scope: !34052, file: !1434, discriminator: 6)
!35045 = !DILocation(line: 359, column: 40, scope: !35044)
!35046 = !DILexicalBlockFile(scope: !34058, file: !1272, discriminator: 14)
!35047 = !DILocation(line: 369, column: 18, scope: !34053)
!35048 = !DILocation(line: 3923, column: 29, scope: !35046, inlinedAt: !35047)
!35049 = !DILexicalBlockFile(scope: !34061, file: !1272, discriminator: 14)
!35050 = !DILocation(line: 3927, column: 30, scope: !35049, inlinedAt: !35047)
!35051 = !DILocation(line: 3927, column: 23, scope: !35049, inlinedAt: !35047)
!35052 = !DILexicalBlockFile(scope: !34064, file: !1146, discriminator: 14)
!35053 = !DILocation(line: 370, column: 18, scope: !34053)
!35054 = !DILocation(line: 836, column: 9, scope: !35052, inlinedAt: !35053)
!35055 = !DILexicalBlockFile(scope: !34066, file: !1146, discriminator: 14)
!35056 = !DILocation(line: 390, column: 18, scope: !34053)
!35057 = !DILocation(line: 2104, column: 9, scope: !35055, inlinedAt: !35056)
!35058 = !DILocation(line: 368, column: 25, scope: !34053)
!35059 = !DILexicalBlockFile(scope: !34071, file: !1434, discriminator: 2)
!35060 = !DILocation(line: 368, column: 25, scope: !35059)
!35061 = !DILexicalBlockFile(scope: !33493, file: !1207, discriminator: 60)
!35062 = !DILexicalBlockFile(scope: !33492, file: !1207, discriminator: 60)
!35063 = !DILocation(line: 330, column: 17, scope: !34076)
!35064 = !DILocation(line: 108, column: 14, scope: !35062, inlinedAt: !35063)
!35065 = !DILocation(line: 67, column: 16, scope: !35061, inlinedAt: !35064)
!35066 = !DILexicalBlockFile(scope: !33491, file: !1351, discriminator: 60)
!35067 = !DILocation(line: 558, column: 16, scope: !35066, inlinedAt: !35065)
!35068 = !{!34080}
!35069 = !DILexicalBlockFile(scope: !34085, file: !1434, discriminator: 0)
!35070 = !DILexicalBlockFile(scope: !34084, file: !1434, discriminator: 4)
!35071 = !DILocation(line: 320, column: 52, scope: !35070)
!35072 = !DILocation(line: 329, column: 40, scope: !34076)
!35073 = !DILexicalBlockFile(scope: !34091, file: !1434, discriminator: 2)
!35074 = !DILocation(line: 329, column: 40, scope: !35073)
!35075 = !DILexicalBlockFile(scope: !34076, file: !1260, discriminator: 0)
!35076 = !DILexicalBlockFile(scope: !34076, file: !1434, discriminator: 4)
!35077 = !DILocation(line: 329, column: 40, scope: !35076)
!35078 = !DILexicalBlockFile(scope: !34094, file: !1434, discriminator: 6)
!35079 = !DILocation(line: 329, column: 40, scope: !35078)
!35080 = !DILexicalBlockFile(scope: !34098, file: !1272, discriminator: 12)
!35081 = !DILocation(line: 339, column: 18, scope: !34095)
!35082 = !DILocation(line: 3923, column: 29, scope: !35080, inlinedAt: !35081)
!35083 = !DILexicalBlockFile(scope: !34100, file: !1272, discriminator: 12)
!35084 = !DILocation(line: 3927, column: 30, scope: !35083, inlinedAt: !35081)
!35085 = !DILocation(line: 3927, column: 23, scope: !35083, inlinedAt: !35081)
!35086 = !DILexicalBlockFile(scope: !34102, file: !1146, discriminator: 12)
!35087 = !DILocation(line: 340, column: 18, scope: !34095)
!35088 = !DILocation(line: 836, column: 9, scope: !35086, inlinedAt: !35087)
!35089 = !DILexicalBlockFile(scope: !34104, file: !1146, discriminator: 12)
!35090 = !DILocation(line: 352, column: 18, scope: !34095)
!35091 = !DILocation(line: 2104, column: 9, scope: !35089, inlinedAt: !35090)
!35092 = !DILocation(line: 338, column: 25, scope: !34095)
!35093 = !DILexicalBlockFile(scope: !34109, file: !1434, discriminator: 2)
!35094 = !DILocation(line: 338, column: 25, scope: !35093)
!35095 = !{!"branch_weights", i32 0, i32 477165623, i32 477165623, i32 477165623, i32 477165623, i32 238344, i32 238344, i32 238344467}
!35096 = !DILocation(line: 539, column: 13, scope: !33490)
!35097 = !DILocation(line: 108, column: 14, scope: !33492, inlinedAt: !35096)
!35098 = !DILocation(line: 67, column: 16, scope: !33493, inlinedAt: !35097)
!35099 = !DILocation(line: 558, column: 16, scope: !33491, inlinedAt: !35098)
!35100 = !{!34116}
!35101 = !DILexicalBlockFile(scope: !34120, file: !1434, discriminator: 0)
!35102 = !DILexicalBlockFile(scope: !33493, file: !1207, discriminator: 194)
!35103 = !DILexicalBlockFile(scope: !33492, file: !1207, discriminator: 194)
!35104 = !DILocation(line: 550, column: 17, scope: !34121)
!35105 = !DILocation(line: 108, column: 14, scope: !35103, inlinedAt: !35104)
!35106 = !DILocation(line: 67, column: 16, scope: !35102, inlinedAt: !35105)
!35107 = !DILexicalBlockFile(scope: !33491, file: !1351, discriminator: 194)
!35108 = !DILocation(line: 558, column: 16, scope: !35107, inlinedAt: !35106)
!35109 = !{!34125}
!35110 = !DILexicalBlockFile(scope: !33493, file: !1207, discriminator: 16)
!35111 = !DILexicalBlockFile(scope: !33492, file: !1207, discriminator: 16)
!35112 = !DILocation(line: 403, column: 13, scope: !33490)
!35113 = !DILocation(line: 108, column: 14, scope: !35111, inlinedAt: !35112)
!35114 = !DILocation(line: 67, column: 16, scope: !35110, inlinedAt: !35113)
!35115 = !DILexicalBlockFile(scope: !33491, file: !1351, discriminator: 16)
!35116 = !DILocation(line: 558, column: 16, scope: !35115, inlinedAt: !35114)
!35117 = !{!34132}
!35118 = !{!34137}
!35119 = !DILocation(line: 394, column: 52, scope: !33490)
!35120 = !DILexicalBlockFile(scope: !34145, file: !1434, discriminator: 2)
!35121 = !DILocation(line: 394, column: 52, scope: !35120)
!35122 = !DILocation(line: 394, column: 52, scope: !34606)
!35123 = !DILexicalBlockFile(scope: !34148, file: !1434, discriminator: 6)
!35124 = !DILocation(line: 394, column: 52, scope: !35123)
!35125 = !{!34150}
!35126 = !DILocation(line: 402, column: 52, scope: !33490)
!35127 = !DILexicalBlockFile(scope: !34158, file: !1434, discriminator: 2)
!35128 = !DILocation(line: 402, column: 52, scope: !35127)
!35129 = !DILocation(line: 402, column: 52, scope: !34606)
!35130 = !DILexicalBlockFile(scope: !34161, file: !1434, discriminator: 6)
!35131 = !DILocation(line: 402, column: 52, scope: !35130)
!35132 = !DILexicalBlockFile(scope: !33493, file: !1207, discriminator: 62)
!35133 = !DILexicalBlockFile(scope: !33492, file: !1207, discriminator: 62)
!35134 = !DILocation(line: 416, column: 17, scope: !34163)
!35135 = !DILocation(line: 108, column: 14, scope: !35133, inlinedAt: !35134)
!35136 = !DILocation(line: 67, column: 16, scope: !35132, inlinedAt: !35135)
!35137 = !DILexicalBlockFile(scope: !33491, file: !1351, discriminator: 62)
!35138 = !DILocation(line: 558, column: 16, scope: !35137, inlinedAt: !35136)
!35139 = !{!34167}
!35140 = !DILexicalBlockFile(scope: !34172, file: !1434, discriminator: 0)
!35141 = !DILexicalBlockFile(scope: !34171, file: !1434, discriminator: 4)
!35142 = !DILocation(line: 475, column: 52, scope: !35141)
!35143 = !DILexicalBlockFile(scope: !33493, file: !1207, discriminator: 192)
!35144 = !DILexicalBlockFile(scope: !33492, file: !1207, discriminator: 192)
!35145 = !DILocation(line: 448, column: 17, scope: !34176)
!35146 = !DILocation(line: 108, column: 14, scope: !35144, inlinedAt: !35145)
!35147 = !DILocation(line: 67, column: 16, scope: !35143, inlinedAt: !35146)
!35148 = !DILexicalBlockFile(scope: !33491, file: !1351, discriminator: 192)
!35149 = !DILocation(line: 558, column: 16, scope: !35148, inlinedAt: !35147)
!35150 = !{!34180}
!35151 = !DILocation(line: 447, column: 40, scope: !34176)
!35152 = !DILexicalBlockFile(scope: !34186, file: !1434, discriminator: 2)
!35153 = !DILocation(line: 447, column: 40, scope: !35152)
!35154 = !DILexicalBlockFile(scope: !34176, file: !1260, discriminator: 0)
!35155 = !DILexicalBlockFile(scope: !34176, file: !1434, discriminator: 4)
!35156 = !DILocation(line: 447, column: 40, scope: !35155)
!35157 = !DILexicalBlockFile(scope: !34189, file: !1434, discriminator: 6)
!35158 = !DILocation(line: 447, column: 40, scope: !35157)
!35159 = !DILexicalBlockFile(scope: !34193, file: !1272, discriminator: 18)
!35160 = !DILocation(line: 457, column: 18, scope: !34190)
!35161 = !DILocation(line: 3923, column: 29, scope: !35159, inlinedAt: !35160)
!35162 = !DILexicalBlockFile(scope: !34195, file: !1272, discriminator: 18)
!35163 = !DILocation(line: 3927, column: 30, scope: !35162, inlinedAt: !35160)
!35164 = !DILocation(line: 3927, column: 23, scope: !35162, inlinedAt: !35160)
!35165 = !DILexicalBlockFile(scope: !34197, file: !1146, discriminator: 18)
!35166 = !DILocation(line: 458, column: 18, scope: !34190)
!35167 = !DILocation(line: 836, column: 9, scope: !35165, inlinedAt: !35166)
!35168 = !DILexicalBlockFile(scope: !34199, file: !1146, discriminator: 18)
!35169 = !DILocation(line: 470, column: 18, scope: !34190)
!35170 = !DILocation(line: 2104, column: 9, scope: !35168, inlinedAt: !35169)
!35171 = !DILocation(line: 456, column: 25, scope: !34190)
!35172 = !DILexicalBlockFile(scope: !34204, file: !1434, discriminator: 2)
!35173 = !DILocation(line: 456, column: 25, scope: !35172)
!35174 = !DILocation(line: 415, column: 40, scope: !34163)
!35175 = !DILexicalBlockFile(scope: !34210, file: !1434, discriminator: 2)
!35176 = !DILocation(line: 415, column: 40, scope: !35175)
!35177 = !DILexicalBlockFile(scope: !34163, file: !1260, discriminator: 0)
!35178 = !DILexicalBlockFile(scope: !34163, file: !1434, discriminator: 4)
!35179 = !DILocation(line: 415, column: 40, scope: !35178)
!35180 = !DILexicalBlockFile(scope: !34213, file: !1434, discriminator: 6)
!35181 = !DILocation(line: 415, column: 40, scope: !35180)
!35182 = !DILexicalBlockFile(scope: !34217, file: !1272, discriminator: 16)
!35183 = !DILocation(line: 425, column: 18, scope: !34214)
!35184 = !DILocation(line: 3923, column: 29, scope: !35182, inlinedAt: !35183)
!35185 = !DILexicalBlockFile(scope: !34219, file: !1272, discriminator: 16)
!35186 = !DILocation(line: 3927, column: 30, scope: !35185, inlinedAt: !35183)
!35187 = !DILocation(line: 3927, column: 23, scope: !35185, inlinedAt: !35183)
!35188 = !DILexicalBlockFile(scope: !34221, file: !1146, discriminator: 16)
!35189 = !DILocation(line: 426, column: 18, scope: !34214)
!35190 = !DILocation(line: 836, column: 9, scope: !35188, inlinedAt: !35189)
!35191 = !DILexicalBlockFile(scope: !34223, file: !1146, discriminator: 16)
!35192 = !DILocation(line: 438, column: 18, scope: !34214)
!35193 = !DILocation(line: 2104, column: 9, scope: !35191, inlinedAt: !35192)
!35194 = !DILocation(line: 424, column: 25, scope: !34214)
!35195 = !DILexicalBlockFile(scope: !34228, file: !1434, discriminator: 2)
!35196 = !DILocation(line: 424, column: 25, scope: !35195)
!35197 = !{!"branch_weights", i32 0, i32 757890869, i32 757890869, i32 378566, i32 378566, i32 252377911, i32 252377911, i32 126188956}
!35198 = !{!"branch_weights", i32 2000, i32 4004, i32 2, i32 2, i32 2000}
!35199 = !DILexicalBlockFile(scope: !33493, file: !1207, discriminator: 10)
!35200 = !DILexicalBlockFile(scope: !33492, file: !1207, discriminator: 10)
!35201 = !DILocation(line: 496, column: 13, scope: !33490)
!35202 = !DILocation(line: 108, column: 14, scope: !35200, inlinedAt: !35201)
!35203 = !DILocation(line: 67, column: 16, scope: !35199, inlinedAt: !35202)
!35204 = !DILexicalBlockFile(scope: !33491, file: !1351, discriminator: 10)
!35205 = !DILocation(line: 558, column: 16, scope: !35204, inlinedAt: !35203)
!35206 = !{!34235}
!35207 = !DILexicalBlockFile(scope: !33493, file: !1207, discriminator: 8)
!35208 = !DILexicalBlockFile(scope: !33492, file: !1207, discriminator: 8)
!35209 = !DILocation(line: 505, column: 13, scope: !33490)
!35210 = !DILocation(line: 108, column: 14, scope: !35208, inlinedAt: !35209)
!35211 = !DILocation(line: 67, column: 16, scope: !35207, inlinedAt: !35210)
!35212 = !DILexicalBlockFile(scope: !33491, file: !1351, discriminator: 8)
!35213 = !DILocation(line: 558, column: 16, scope: !35212, inlinedAt: !35211)
!35214 = !{!34242}
!35215 = !DILocation(line: 504, column: 42, scope: !33490)
!35216 = !DILexicalBlockFile(scope: !34249, file: !1434, discriminator: 2)
!35217 = !DILocation(line: 504, column: 42, scope: !35216)
!35218 = !DILocation(line: 504, column: 42, scope: !34606)
!35219 = !DILexicalBlockFile(scope: !34252, file: !1434, discriminator: 6)
!35220 = !DILocation(line: 504, column: 42, scope: !35219)
!35221 = !DILocation(line: 495, column: 67, scope: !33490)
!35222 = !DILexicalBlockFile(scope: !34255, file: !1434, discriminator: 2)
!35223 = !DILocation(line: 495, column: 67, scope: !35222)
!35224 = !DILocation(line: 495, column: 67, scope: !34606)
!35225 = !DILexicalBlockFile(scope: !34258, file: !1434, discriminator: 6)
!35226 = !DILocation(line: 495, column: 67, scope: !35225)
!35227 = !DILexicalBlockFile(scope: !33493, file: !1207, discriminator: 4)
!35228 = !DILexicalBlockFile(scope: !33492, file: !1207, discriminator: 4)
!35229 = !DILocation(line: 522, column: 13, scope: !33490)
!35230 = !DILocation(line: 108, column: 14, scope: !35228, inlinedAt: !35229)
!35231 = !DILocation(line: 67, column: 16, scope: !35227, inlinedAt: !35230)
!35232 = !DILexicalBlockFile(scope: !33491, file: !1351, discriminator: 4)
!35233 = !DILocation(line: 558, column: 16, scope: !35232, inlinedAt: !35231)
!35234 = !{!34262}
!35235 = !DILocation(line: 521, column: 43, scope: !33490)
!35236 = !DILexicalBlockFile(scope: !34269, file: !1434, discriminator: 2)
!35237 = !DILocation(line: 521, column: 43, scope: !35236)
!35238 = !DILocation(line: 521, column: 43, scope: !34606)
!35239 = !DILexicalBlockFile(scope: !34272, file: !1434, discriminator: 6)
!35240 = !DILocation(line: 521, column: 43, scope: !35239)
!35241 = !DILexicalBlockFile(scope: !33493, file: !1207, discriminator: 2)
!35242 = !DILexicalBlockFile(scope: !33492, file: !1207, discriminator: 2)
!35243 = !DILocation(line: 530, column: 13, scope: !33490)
!35244 = !DILocation(line: 108, column: 14, scope: !35242, inlinedAt: !35243)
!35245 = !DILocation(line: 67, column: 16, scope: !35241, inlinedAt: !35244)
!35246 = !DILexicalBlockFile(scope: !33491, file: !1351, discriminator: 2)
!35247 = !DILocation(line: 558, column: 16, scope: !35246, inlinedAt: !35245)
!35248 = !{!34276}
!35249 = !DILocation(line: 529, column: 44, scope: !33490)
!35250 = !DILexicalBlockFile(scope: !34283, file: !1434, discriminator: 2)
!35251 = !DILocation(line: 529, column: 44, scope: !35250)
!35252 = !DILocation(line: 529, column: 44, scope: !34606)
!35253 = !DILexicalBlockFile(scope: !34286, file: !1434, discriminator: 6)
!35254 = !DILocation(line: 529, column: 44, scope: !35253)
!35255 = !DILocation(line: 538, column: 51, scope: !33490)
!35256 = !DILexicalBlockFile(scope: !34290, file: !1434, discriminator: 2)
!35257 = !DILocation(line: 538, column: 51, scope: !35256)
!35258 = !DILocation(line: 538, column: 51, scope: !34606)
!35259 = !DILexicalBlockFile(scope: !34293, file: !1434, discriminator: 6)
!35260 = !DILocation(line: 538, column: 51, scope: !35259)
!35261 = !DILocation(line: 549, column: 13, scope: !34121)
!35262 = !DILexicalBlockFile(scope: !34296, file: !1434, discriminator: 2)
!35263 = !DILocation(line: 549, column: 13, scope: !35262)
!35264 = !DILexicalBlockFile(scope: !34121, file: !1260, discriminator: 0)
!35265 = !DILexicalBlockFile(scope: !34121, file: !1434, discriminator: 4)
!35266 = !DILocation(line: 549, column: 13, scope: !35265)
!35267 = !DILexicalBlockFile(scope: !34299, file: !1434, discriminator: 6)
!35268 = !DILocation(line: 549, column: 13, scope: !35267)
!35269 = !DILexicalBlockFile(scope: !34300, file: !1434, discriminator: 0)
!35270 = !DILexicalBlockFile(scope: !33493, file: !1207, discriminator: 196)
!35271 = !DILexicalBlockFile(scope: !33492, file: !1207, discriminator: 196)
!35272 = !DILocation(line: 562, column: 17, scope: !34301)
!35273 = !DILocation(line: 108, column: 14, scope: !35271, inlinedAt: !35272)
!35274 = !DILocation(line: 67, column: 16, scope: !35270, inlinedAt: !35273)
!35275 = !DILexicalBlockFile(scope: !33491, file: !1351, discriminator: 196)
!35276 = !DILocation(line: 558, column: 16, scope: !35275, inlinedAt: !35274)
!35277 = !{!34305}
!35278 = !DILocation(line: 561, column: 13, scope: !34301)
!35279 = !DILexicalBlockFile(scope: !34311, file: !1434, discriminator: 2)
!35280 = !DILocation(line: 561, column: 13, scope: !35279)
!35281 = !DILexicalBlockFile(scope: !34301, file: !1260, discriminator: 0)
!35282 = !DILexicalBlockFile(scope: !34301, file: !1434, discriminator: 4)
!35283 = !DILocation(line: 561, column: 13, scope: !35282)
!35284 = !DILexicalBlockFile(scope: !34314, file: !1434, discriminator: 6)
!35285 = !DILocation(line: 561, column: 13, scope: !35284)
!35286 = !DILexicalBlockFile(scope: !33493, file: !1207, discriminator: 6)
!35287 = !DILexicalBlockFile(scope: !33492, file: !1207, discriminator: 6)
!35288 = !DILocation(line: 514, column: 13, scope: !33490)
!35289 = !DILocation(line: 108, column: 14, scope: !35287, inlinedAt: !35288)
!35290 = !DILocation(line: 67, column: 16, scope: !35286, inlinedAt: !35289)
!35291 = !DILexicalBlockFile(scope: !33491, file: !1351, discriminator: 6)
!35292 = !DILocation(line: 558, column: 16, scope: !35291, inlinedAt: !35290)
!35293 = !{!34318}
!35294 = !DILocation(line: 513, column: 58, scope: !33490)
!35295 = !DILexicalBlockFile(scope: !34325, file: !1434, discriminator: 2)
!35296 = !DILocation(line: 513, column: 58, scope: !35295)
!35297 = !DILocation(line: 513, column: 58, scope: !34606)
!35298 = !DILexicalBlockFile(scope: !34328, file: !1434, discriminator: 6)
!35299 = !DILocation(line: 513, column: 58, scope: !35298)
!35300 = !DILexicalBlockFile(scope: !34330, file: !1434, discriminator: 0)
!35301 = !DILexicalBlockFile(scope: !34329, file: !1434, discriminator: 6)
!35302 = !DILocation(line: 638, column: 52, scope: !35301)
!35303 = !DILocation(line: 574, column: 35, scope: !34334)
!35304 = !DILexicalBlockFile(scope: !34336, file: !1434, discriminator: 0)
!35305 = !DILocation(line: 574, column: 13, scope: !35304)
!35306 = !DILexicalBlockFile(scope: !34337, file: !1434, discriminator: 0)
!35307 = !DILocation(line: 576, column: 31, scope: !34334)
!35308 = !{!34347}
!35309 = !{!34349}
!35310 = !{!34349, !34347}
!35311 = !DILexicalBlockFile(scope: !34360, file: !1123, discriminator: 0)
!35312 = !DILexicalBlockFile(scope: !34363, file: !1123, discriminator: 0)
!35313 = !DILexicalBlockFile(scope: !34344, file: !1210, discriminator: 2)
!35314 = !DILexicalBlockFile(scope: !34371, file: !1123, discriminator: 0)
!35315 = !DILexicalBlockFile(scope: !34344, file: !1210, discriminator: 4)
!35316 = !{!34376}
!35317 = !{!34378}
!35318 = !{!34378, !34376}
!35319 = !DILexicalBlockFile(scope: !34382, file: !1123, discriminator: 0)
!35320 = !DILexicalBlockFile(scope: !34344, file: !1210, discriminator: 6)
!35321 = !DILexicalBlockFile(scope: !34384, file: !1434, discriminator: 0)
!35322 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 1}
!35323 = !DILexicalBlockFile(scope: !33493, file: !1207, discriminator: 204)
!35324 = !DILexicalBlockFile(scope: !33492, file: !1207, discriminator: 204)
!35325 = !DILocation(line: 614, column: 21, scope: !34334)
!35326 = !DILocation(line: 108, column: 14, scope: !35324, inlinedAt: !35325)
!35327 = !DILocation(line: 67, column: 16, scope: !35323, inlinedAt: !35326)
!35328 = !DILexicalBlockFile(scope: !33491, file: !1351, discriminator: 204)
!35329 = !DILocation(line: 558, column: 16, scope: !35328, inlinedAt: !35327)
!35330 = !{!34388}
!35331 = !DILexicalBlockFile(scope: !33493, file: !1207, discriminator: 202)
!35332 = !DILexicalBlockFile(scope: !33492, file: !1207, discriminator: 202)
!35333 = !DILocation(line: 587, column: 25, scope: !34334)
!35334 = !DILocation(line: 108, column: 14, scope: !35332, inlinedAt: !35333)
!35335 = !DILocation(line: 67, column: 16, scope: !35331, inlinedAt: !35334)
!35336 = !DILexicalBlockFile(scope: !33491, file: !1351, discriminator: 202)
!35337 = !DILocation(line: 558, column: 16, scope: !35336, inlinedAt: !35335)
!35338 = !{!34395}
!35339 = !DILexicalBlockFile(scope: !33493, file: !1207, discriminator: 200)
!35340 = !DILexicalBlockFile(scope: !33492, file: !1207, discriminator: 200)
!35341 = !DILocation(line: 595, column: 25, scope: !34334)
!35342 = !DILocation(line: 108, column: 14, scope: !35340, inlinedAt: !35341)
!35343 = !DILocation(line: 67, column: 16, scope: !35339, inlinedAt: !35342)
!35344 = !DILexicalBlockFile(scope: !33491, file: !1351, discriminator: 200)
!35345 = !DILocation(line: 558, column: 16, scope: !35344, inlinedAt: !35343)
!35346 = !{!34402}
!35347 = !DILexicalBlockFile(scope: !33493, file: !1207, discriminator: 198)
!35348 = !DILexicalBlockFile(scope: !33492, file: !1207, discriminator: 198)
!35349 = !DILocation(line: 603, column: 25, scope: !34334)
!35350 = !DILocation(line: 108, column: 14, scope: !35348, inlinedAt: !35349)
!35351 = !DILocation(line: 67, column: 16, scope: !35347, inlinedAt: !35350)
!35352 = !DILexicalBlockFile(scope: !33491, file: !1351, discriminator: 198)
!35353 = !DILocation(line: 558, column: 16, scope: !35352, inlinedAt: !35351)
!35354 = !{!34409}
!35355 = !{!34414}
!35356 = !DILocation(line: 586, column: 43, scope: !34334)
!35357 = !DILexicalBlockFile(scope: !34419, file: !1434, discriminator: 2)
!35358 = !DILocation(line: 586, column: 43, scope: !35357)
!35359 = !DILexicalBlockFile(scope: !34334, file: !1260, discriminator: 0)
!35360 = !DILexicalBlockFile(scope: !34334, file: !1434, discriminator: 4)
!35361 = !DILocation(line: 586, column: 43, scope: !35360)
!35362 = !DILexicalBlockFile(scope: !34422, file: !1434, discriminator: 6)
!35363 = !DILocation(line: 586, column: 43, scope: !35362)
!35364 = !{!34424}
!35365 = !DILocation(line: 594, column: 44, scope: !34334)
!35366 = !DILexicalBlockFile(scope: !34429, file: !1434, discriminator: 2)
!35367 = !DILocation(line: 594, column: 44, scope: !35366)
!35368 = !DILocation(line: 594, column: 44, scope: !35360)
!35369 = !DILexicalBlockFile(scope: !34432, file: !1434, discriminator: 6)
!35370 = !DILocation(line: 594, column: 44, scope: !35369)
!35371 = !{!34434}
!35372 = !DILocation(line: 602, column: 44, scope: !34334)
!35373 = !DILexicalBlockFile(scope: !34439, file: !1434, discriminator: 2)
!35374 = !DILocation(line: 602, column: 44, scope: !35373)
!35375 = !DILocation(line: 602, column: 44, scope: !35360)
!35376 = !DILexicalBlockFile(scope: !34442, file: !1434, discriminator: 6)
!35377 = !DILocation(line: 602, column: 44, scope: !35376)
!35378 = !{!34456, !34454, !34452, !34450}
!35379 = !DILocation(line: 613, column: 44, scope: !34334)
!35380 = !DILexicalBlockFile(scope: !34459, file: !1434, discriminator: 2)
!35381 = !DILocation(line: 613, column: 44, scope: !35380)
!35382 = !DILocation(line: 613, column: 44, scope: !35360)
!35383 = !DILexicalBlockFile(scope: !34462, file: !1434, discriminator: 6)
!35384 = !DILocation(line: 613, column: 44, scope: !35383)
!35385 = !DILexicalBlockFile(scope: !34466, file: !1272, discriminator: 20)
!35386 = !DILocation(line: 623, column: 22, scope: !34463)
!35387 = !DILocation(line: 3923, column: 29, scope: !35385, inlinedAt: !35386)
!35388 = !DILexicalBlockFile(scope: !34468, file: !1272, discriminator: 20)
!35389 = !DILocation(line: 3927, column: 30, scope: !35388, inlinedAt: !35386)
!35390 = !DILocation(line: 3927, column: 23, scope: !35388, inlinedAt: !35386)
!35391 = !DILexicalBlockFile(scope: !34470, file: !1146, discriminator: 20)
!35392 = !DILocation(line: 624, column: 22, scope: !34463)
!35393 = !DILocation(line: 836, column: 9, scope: !35391, inlinedAt: !35392)
!35394 = !DILexicalBlockFile(scope: !34474, file: !1272, discriminator: 4)
!35395 = !DILexicalBlockFile(scope: !34473, file: !1146, discriminator: 20)
!35396 = !DILocation(line: 632, column: 22, scope: !34463)
!35397 = !DILocation(line: 2104, column: 9, scope: !35395, inlinedAt: !35396)
end_hunk_7
