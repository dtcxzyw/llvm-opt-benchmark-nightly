Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/ravif-31101fabb862b9ee.ravif.1b84f06497a4cc39-cgu.09?download=true
inline.NumInlined: 917
inline.NumDeleted: 544
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_RINvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solvehECs2mu2Cb9JdUH_5ravif:bb.a
  store i32 %i.lq, ptr %i.is, align 4, !noalias !373
  %i.lr = load i64, ptr %i.bl, align 8, !alias.scope !380, !noalias !373, !noundef !4 ; 2 uses
  %i.ls = load i64, ptr %i.bm, align 8, !alias.scope !380, !noalias !373, !noundef !4
  %i.lt = icmp ult i64 %i.lr, %i.ls
  br i1 %i.lt, label %.lr.ph, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r2_internalhECs2mu2Cb9JdUH_5ravif.exit

bb.az:                                            ; preds = %bb.aw
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef %i.jo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #28, !noalias !373
  unreachable

_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r2_internalhECs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.ay, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %.split

._crit_edge:                                      ; preds = %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4IterhEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRhB3J_ETRmB3R_EETxxxEB2g_NCIB2i_hE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit, %.split
  %.sroa.0.1.lcssa = phi double [ %.sroa.0.0491, %.split ], [ %i.ut, %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4IterhEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRhB3J_ETRmB3R_EETxxxEB2g_NCIB2i_hE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit ] ; 2 uses
  %i.lu = phi <4 x double> [ %i.ef, %.split ], [ %i.uu, %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4IterhEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRhB3J_ETRmB3R_EETxxxEB2g_NCIB2i_hE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %.not49 = icmp eq i64 %i.ei, 0
  %indvars.iv.next = add i64 %indvars.iv, -2
  br i1 %.not49, label %._crit_edge495, label %bb.n

.lr.ph480:                                        ; preds = %.split, %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4IterhEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRhB3J_ETRmB3R_EETxxxEB2g_NCIB2i_hE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit
  %.sroa.021.0479 = phi i64 [ %i.lw, %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4IterhEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRhB3J_ETRmB3R_EETxxxEB2g_NCIB2i_hE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit ], [ 0, %.split ] ; 3 uses
  %.sroa.0.1478 = phi double [ %i.ut, %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4IterhEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRhB3J_ETRmB3R_EETxxxEB2g_NCIB2i_hE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit ], [ %.sroa.0.0491, %.split ]
  %i.lv = phi <4 x double> [ %i.uu, %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4IterhEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRhB3J_ETRmB3R_EETxxxEB2g_NCIB2i_hE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit ], [ %i.ef, %.split ]
  %i.lw = add nuw nsw i64 %.sroa.021.0479, 1      ; 2 uses
  %i.lx = add nuw nsw i64 %.sroa.021.0479, %.sroa.018.0492 ; 8 uses
  br i1 %.not48, label %bb.ba, label %bb.bf

bb.ba:                                            ; preds = %.lr.ph480
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.ly = call { ptr, i64 } @_RNvMsc_NtCsko5zPvjVG7R_7v_frame5planeINtB5_10PlaneSlicehE3rowCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.lx), !noalias !389 ; 2 uses
  %i.lz = extractvalue { ptr, i64 } %i.ly, 0      ; 3 uses
  br i1 %i.bi, label %bb.bc, label %bb.bb, !prof !19

bb.bb:                                            ; preds = %bb.ba
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %5, i64 noundef 384, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #28, !noalias !389
  unreachable

bb.bc:                                            ; preds = %bb.ba
  %i.ma = extractvalue { ptr, i64 } %i.ly, 1      ; 2 uses
  %.not.i = icmp ugt i64 %5, %i.ma
  br i1 %.not.i, label %bb.bd, label %bb.be, !prof !8

bb.bd:                                            ; preds = %bb.bc
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %5, i64 noundef %i.ma, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #28, !noalias !389
  unreachable

bb.be:                                            ; preds = %bb.bc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lz) ]
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lz, i64 %5
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.s, ptr noundef nonnull align 4 %i.u, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.lz, ptr noundef nonnull %i.mb)
  %.sroa.097.0.copyload = load ptr, ptr %i.s, align 8, !noalias !390 ; 9 uses
  %.sroa.499.0.copyload = load ptr, ptr %.sroa.499.0..sroa_idx, align 8, !noalias !390 ; 9 uses
  %.sroa.5100.0.copyload = load i64, ptr %.sroa.5100.0..sroa_idx, align 8, !noalias !390 ; 8 uses
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !390 ; 7 uses
  %i.mc = icmp ult i64 %.sroa.5100.0.copyload, %.sroa.7.0.copyload
  br i1 %i.mc, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.lr.ph, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internalhECs2mu2Cb9JdUH_5ravif.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.lr.ph: ; preds = %bb.be
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.097.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.499.0.copyload) ]
  %i.md = sub nuw i64 %.sroa.7.0.copyload, %.sroa.5100.0.copyload ; 3 uses
  %min.iters.check = icmp ult i64 %i.md, 8
  br i1 %min.iters.check, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.lr.ph
  %i.me = shl i64 %.sroa.5100.0.copyload, 2
  %scevgep = getelementptr i8, ptr %.sroa.097.0.copyload, i64 %i.me
  %i.mf = shl i64 %.sroa.7.0.copyload, 2
  %scevgep792 = getelementptr i8, ptr %.sroa.097.0.copyload, i64 %i.mf
  %scevgep793 = getelementptr i8, ptr %.sroa.499.0.copyload, i64 %.sroa.5100.0.copyload
  %scevgep794 = getelementptr i8, ptr %.sroa.499.0.copyload, i64 %.sroa.7.0.copyload
  %bound0 = icmp ult ptr %scevgep, %scevgep794
  %bound1 = icmp ult ptr %scevgep793, %scevgep792
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.md, -8                      ; 3 uses
  %i.mg = add i64 %.sroa.5100.0.copyload, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.mh = add nuw i64 %.sroa.5100.0.copyload, %index ; 2 uses
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.097.0.copyload, i64 %i.mh ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %.sroa.499.0.copyload, i64 %i.mh ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 4
  %wide.load = load <4 x i8>, ptr %i.mj, align 1, !alias.scope !391
  %wide.load795 = load <4 x i8>, ptr %i.mk, align 1, !alias.scope !391
  %i.ml = zext <4 x i8> %wide.load to <4 x i32>
  %i.mm = zext <4 x i8> %wide.load795 to <4 x i32>
  %i.mn = shl nuw nsw <4 x i32> %i.ml, splat (i32 4)
  %i.mo = shl nuw nsw <4 x i32> %i.mm, splat (i32 4)
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mi, i64 16
  store <4 x i32> %i.mn, ptr %i.mi, align 4, !alias.scope !392, !noalias !391
  store <4 x i32> %i.mo, ptr %i.mp, align 4, !alias.scope !392, !noalias !391
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.mq = icmp eq i64 %index.next, %n.vec
  br i1 %i.mq, label %middle.block, label %vector.body, !llvm.loop !315

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.md, %n.vec
  br i1 %cmp.n, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internalhECs2mu2Cb9JdUH_5ravif.exit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.preheader: ; preds = %vector.memcheck, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.lr.ph, %middle.block
  %.sroa.5100.0473.ph = phi i64 [ %.sroa.5100.0.copyload, %vector.memcheck ], [ %.sroa.5100.0.copyload, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.lr.ph ], [ %i.mg, %middle.block ] ; 4 uses
  %i.mr = sub i64 %.sroa.7.0.copyload, %.sroa.5100.0473.ph
  %xtraiter928 = and i64 %i.mr, 3                 ; 2 uses
  %lcmp.mod929.not = icmp eq i64 %xtraiter928, 0
  br i1 %lcmp.mod929.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.prol
  %.sroa.5100.0473.prol = phi i64 [ %i.mu, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.prol ], [ %.sroa.5100.0473.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.preheader ] ; 3 uses
  %prol.iter930 = phi i64 [ %prol.iter930.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.preheader ]
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %.sroa.097.0.copyload, i64 %.sroa.5100.0473.prol
  %i.mt = getelementptr inbounds nuw i8, ptr %.sroa.499.0.copyload, i64 %.sroa.5100.0473.prol
  %i.mu = add nuw i64 %.sroa.5100.0473.prol, 1    ; 2 uses
  %i.mv = load i8, ptr %i.mt, align 1, !noundef !4
  %i.mw = zext i8 %i.mv to i32
  %i.mx = shl nuw nsw i32 %i.mw, 4
  store i32 %i.mx, ptr %i.ms, align 4
  %prol.iter930.next = add i64 %prol.iter930, 1   ; 2 uses
  %prol.iter930.cmp.not = icmp eq i64 %prol.iter930.next, %xtraiter928
  br i1 %prol.iter930.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.prol, !llvm.loop !316

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.preheader
  %.sroa.5100.0473.unr = phi i64 [ %.sroa.5100.0473.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.preheader ], [ %i.mu, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.prol ]
  %i.my = sub i64 %.sroa.5100.0473.ph, %.sroa.7.0.copyload
  %i.mz = icmp ugt i64 %i.my, -4
  br i1 %i.mz, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internalhECs2mu2Cb9JdUH_5ravif.exit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60
  %.sroa.5100.0473 = phi i64 [ %i.nu, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60 ], [ %.sroa.5100.0473.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.prol.loopexit ] ; 6 uses
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %.sroa.097.0.copyload, i64 %.sroa.5100.0473
  %i.nb = getelementptr inbounds nuw i8, ptr %.sroa.499.0.copyload, i64 %.sroa.5100.0473
  %i.nc = add nuw i64 %.sroa.5100.0473, 1         ; 2 uses
  %i.nd = load i8, ptr %i.nb, align 1, !noundef !4
  %i.ne = zext i8 %i.nd to i32
  %i.nf = shl nuw nsw i32 %i.ne, 4
  store i32 %i.nf, ptr %i.na, align 4
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %.sroa.097.0.copyload, i64 %i.nc
  %i.nh = getelementptr inbounds nuw i8, ptr %.sroa.499.0.copyload, i64 %i.nc
  %i.ni = add nuw i64 %.sroa.5100.0473, 2         ; 2 uses
  %i.nj = load i8, ptr %i.nh, align 1, !noundef !4
  %i.nk = zext i8 %i.nj to i32
  %i.nl = shl nuw nsw i32 %i.nk, 4
  store i32 %i.nl, ptr %i.ng, align 4
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.097.0.copyload, i64 %i.ni
  %i.nn = getelementptr inbounds nuw i8, ptr %.sroa.499.0.copyload, i64 %i.ni
  %i.no = add nuw i64 %.sroa.5100.0473, 3         ; 2 uses
  %i.np = load i8, ptr %i.nn, align 1, !noundef !4
  %i.nq = zext i8 %i.np to i32
  %i.nr = shl nuw nsw i32 %i.nq, 4
  store i32 %i.nr, ptr %i.nm, align 4
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %.sroa.097.0.copyload, i64 %i.no
  %i.nt = getelementptr inbounds nuw i8, ptr %.sroa.499.0.copyload, i64 %i.no
  %i.nu = add nuw i64 %.sroa.5100.0473, 4         ; 2 uses
  %i.nv = load i8, ptr %i.nt, align 1, !noundef !4
  %i.nw = zext i8 %i.nv to i32
  %i.nx = shl nuw nsw i32 %i.nw, 4
  store i32 %i.nx, ptr %i.ns, align 4
  %exitcond592.not.3 = icmp eq i64 %i.nu, %.sroa.7.0.copyload
  br i1 %exitcond592.not.3, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internalhECs2mu2Cb9JdUH_5ravif.exit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60, !llvm.loop !317

_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internalhECs2mu2Cb9JdUH_5ravif.exit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60, %middle.block, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r1_internalhECs2mu2Cb9JdUH_5ravif.exit

bb.bf:                                            ; preds = %.lr.ph480
  %i.ny = add i64 %i.lx, 2                        ; 2 uses
  %i.nz = urem i64 %i.ny, 3                       ; 2 uses
  %i.oa = getelementptr inbounds nuw [1544 x i8], ptr %i.w, i64 %i.nz ; 7 uses
  %i.ob = getelementptr inbounds nuw [1544 x i8], ptr %i.v, i64 %i.nz ; 7 uses
  br i1 %i.cd, label %bb.bh, label %bb.bg, !prof !8

_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r1_internalhECs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.bm, %bb.bi, %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internalhECs2mu2Cb9JdUH_5ravif.exit
  %i.oc = call { ptr, i64 } @_RNvXsd_NtCsko5zPvjVG7R_7v_frame5planeINtB5_10PlaneSlicehEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.lx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) ; 2 uses
  %i.od = extractvalue { ptr, i64 } %i.oc, 0      ; 2 uses
  %i.oe = icmp ult i64 %i.lx, %i.cl
  br i1 %i.oe, label %bb.bp, label %bb.bo, !prof !19

bb.bg:                                            ; preds = %bb.bf
  br i1 %i.ce, label %bb.bn, label %bb.bi, !prof !8

bb.bh:                                            ; preds = %bb.bf
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 265, i64 noundef %i.bc, i64 noundef %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #28
  unreachable

bb.bi:                                            ; preds = %bb.bg
  call void %.sroa.07.0140(ptr noalias nofree noundef nonnull align 4 %i.oa, i64 noundef 386, ptr noalias nofree noundef nonnull align 4 %i.ob, i64 noundef 386, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.cf, i64 noundef %i.cg, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ci, i64 noundef %i.ch, i64 noundef 264, i64 noundef %i.ny, i64 noundef %5, i32 noundef %i.aj), !callees !18
  %i.of = urem i64 %i.lx, 3                       ; 2 uses
  %i.og = getelementptr inbounds nuw [1544 x i8], ptr %i.w, i64 %i.of ; 6 uses
  %i.oh = add i64 %i.lx, 1
  %i.oi = urem i64 %i.oh, 3                       ; 2 uses
  %i.oj = getelementptr inbounds nuw [1544 x i8], ptr %i.w, i64 %i.oi ; 5 uses
  %i.ok = getelementptr inbounds nuw [1544 x i8], ptr %i.v, i64 %i.of ; 6 uses
  %i.ol = getelementptr inbounds nuw [1544 x i8], ptr %i.v, i64 %i.oi ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !393)
  %i.om = call { ptr, i64 } @_RNvMsc_NtCsko5zPvjVG7R_7v_frame5planeINtB5_10PlaneSlicehE3rowCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.lx), !noalias !394 ; 2 uses
  %i.on = extractvalue { ptr, i64 } %i.om, 0      ; 2 uses
  %i.oo = extractvalue { ptr, i64 } %i.om, 1      ; 4 uses
  br i1 %.not501, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r1_internalhECs2mu2Cb9JdUH_5ravif.exit, label %.lr.ph472.preheader

.lr.ph472.preheader:                              ; preds = %bb.bi
  %i.op = call i64 @llvm.umin.i64(i64 %i.oo, i64 %i.cy) ; 2 uses
  %min.iters.check797 = icmp ult i64 %i.op, 4
  br i1 %min.iters.check797, label %.lr.ph472.preheader845, label %vector.ph798

vector.ph798:                                     ; preds = %.lr.ph472.preheader
  %i.oq = call i64 @llvm.umin.i64(i64 %i.op, i64 384)
  %i.or = add nuw nsw i64 %i.oq, 1                ; 2 uses
  %i.os = and i64 %i.or, 3                        ; 2 uses
  %i.ot = icmp eq i64 %i.os, 0
  %i.ou = select i1 %i.ot, i64 4, i64 %i.os
  %n.vec799 = sub nsw i64 %i.or, %i.ou            ; 2 uses
  br label %vector.body800

vector.body800:                                   ; preds = %vector.body800, %vector.ph798
  %index801 = phi i64 [ 0, %vector.ph798 ], [ %index.next821, %vector.body800 ] ; 11 uses
  %i.ov = or disjoint i64 %index801, 1            ; 6 uses
  %i.ow = or disjoint i64 %index801, 2            ; 6 uses
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.ok, i64 %index801
  %wide.load802 = load <4 x i32>, ptr %i.ox, align 4, !noalias !394
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.ob, i64 %index801
  %wide.load803 = load <4 x i32>, ptr %i.oy, align 4, !noalias !394
  %i.oz = add <4 x i32> %wide.load803, %wide.load802
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.ok, i64 %i.ow
  %wide.load804 = load <4 x i32>, ptr %i.pa, align 4, !noalias !394
  %i.pb = add <4 x i32> %i.oz, %wide.load804
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.ob, i64 %i.ow
  %wide.load805 = load <4 x i32>, ptr %i.pc, align 4, !noalias !394
  %i.pd = add <4 x i32> %i.pb, %wide.load805
  %i.pe = mul <4 x i32> %i.pd, splat (i32 3)
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %index801
  %wide.load806 = load <4 x i32>, ptr %i.pf, align 4, !noalias !394
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.oa, i64 %index801
  %wide.load807 = load <4 x i32>, ptr %i.pg, align 4, !noalias !394
  %i.ph = add <4 x i32> %wide.load807, %wide.load806
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %i.ow
  %wide.load808 = load <4 x i32>, ptr %i.pi, align 4, !noalias !394
  %i.pj = add <4 x i32> %i.ph, %wide.load808
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.oa, i64 %i.ow
  %wide.load809 = load <4 x i32>, ptr %i.pk, align 4, !noalias !394
  %i.pl = add <4 x i32> %i.pj, %wide.load809
  %i.pm = mul <4 x i32> %i.pl, splat (i32 3)
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %index801
  %wide.load810 = load <4 x i32>, ptr %i.pn, align 4, !noalias !394
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %i.ov
  %wide.load811 = load <4 x i32>, ptr %i.po, align 4, !noalias !394
  %i.pp = add <4 x i32> %wide.load811, %wide.load810
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %i.ov
  %wide.load812 = load <4 x i32>, ptr %i.pq, align 4, !noalias !394
  %i.pr = add <4 x i32> %i.pp, %wide.load812
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.oa, i64 %i.ov
  %wide.load813 = load <4 x i32>, ptr %i.ps, align 4, !noalias !394
  %i.pt = add <4 x i32> %i.pr, %wide.load813
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %i.ow
  %wide.load814 = load <4 x i32>, ptr %i.pu, align 4, !noalias !394
  %i.pv = add <4 x i32> %i.pt, %wide.load814
  %i.pw = shl <4 x i32> %i.pv, splat (i32 2)
  %i.px = add <4 x i32> %i.pw, %i.pm
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.ol, i64 %index801
  %wide.load815 = load <4 x i32>, ptr %i.py, align 4, !noalias !394
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.ok, i64 %i.ov
  %wide.load816 = load <4 x i32>, ptr %i.pz, align 4, !noalias !394
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %i.ol, i64 %i.ov
  %wide.load817 = load <4 x i32>, ptr %i.qa, align 4, !noalias !394
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.ob, i64 %i.ov
  %wide.load818 = load <4 x i32>, ptr %i.qb, align 4, !noalias !394
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.ol, i64 %i.ow
  %wide.load819 = load <4 x i32>, ptr %i.qc, align 4, !noalias !394
  %i.qd = getelementptr inbounds nuw i8, ptr %i.on, i64 %index801
  %wide.load820 = load <4 x i8>, ptr %i.qd, align 1, !noalias !394
  %i.qe = zext <4 x i8> %wide.load820 to <4 x i32>
  %i.qf = mul <4 x i32> %i.px, %i.qe
  %i.qg = add <4 x i32> %wide.load816, %wide.load815
  %i.qh = add <4 x i32> %i.qg, %wide.load817
  %i.qi = add <4 x i32> %i.qh, %wide.load818
  %i.qj = add <4 x i32> %i.qi, %wide.load819
  %i.qk = shl <4 x i32> %i.qj, splat (i32 2)
  %i.ql = add <4 x i32> %i.pe, splat (i32 256)
  %i.qm = add <4 x i32> %i.ql, %i.qk
  %i.qn = add <4 x i32> %i.qm, %i.qf
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index801
  %i.qp = lshr <4 x i32> %i.qn, splat (i32 9)
  store <4 x i32> %i.qp, ptr %i.qo, align 4, !alias.scope !393
  %index.next821 = add nuw i64 %index801, 4       ; 2 uses
  %i.qq = icmp eq i64 %index.next821, %n.vec799
  br i1 %i.qq, label %.lr.ph472.preheader845, label %vector.body800, !llvm.loop !322

.lr.ph472.preheader845:                           ; preds = %vector.body800, %.lr.ph472.preheader
  %.sroa.0.0.i471.ph = phi i64 [ 0, %.lr.ph472.preheader ], [ %n.vec799, %vector.body800 ]
  br label %.lr.ph472

.lr.ph472:                                        ; preds = %.lr.ph472.preheader845, %bb.bm
  %.sroa.0.0.i471 = phi i64 [ %i.qr, %bb.bm ], [ %.sroa.0.0.i471.ph, %.lr.ph472.preheader845 ] ; 12 uses
  %i.qr = add nuw nsw i64 %.sroa.0.0.i471, 1      ; 6 uses
  %i.qs = add nuw nsw i64 %.sroa.0.0.i471, 2      ; 7 uses
  %exitcond589.not = icmp eq i64 %.sroa.0.0.i471, 384
  br i1 %exitcond589.not, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %.lr.ph472
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.qs, i64 noundef 386, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #28, !noalias !394
  unreachable

bb.bk:                                            ; preds = %.lr.ph472
  %exitcond590.not = icmp eq i64 %.sroa.0.0.i471, %i.oo
  br i1 %exitcond590.not, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.oo, i64 noundef %i.oo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #28, !noalias !394
  unreachable

bb.bm:                                            ; preds = %bb.bk
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %i.ok, i64 %.sroa.0.0.i471
  %i.qu = load i32, ptr %i.qt, align 4, !noalias !394, !noundef !4
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.ob, i64 %.sroa.0.0.i471
  %i.qw = load i32, ptr %i.qv, align 4, !noalias !394, !noundef !4
  %i.qx = add i32 %i.qw, %i.qu
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.ok, i64 %i.qs
  %i.qz = load i32, ptr %i.qy, align 4, !noalias !394, !noundef !4
  %i.ra = add i32 %i.qx, %i.qz
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %i.ob, i64 %i.qs
  %i.rc = load i32, ptr %i.rb, align 4, !noalias !394, !noundef !4
  %i.rd = add i32 %i.ra, %i.rc
  %i.re = mul i32 %i.rd, 3
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %.sroa.0.0.i471
  %i.rg = load i32, ptr %i.rf, align 4, !noalias !394, !noundef !4
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %i.oa, i64 %.sroa.0.0.i471
  %i.ri = load i32, ptr %i.rh, align 4, !noalias !394, !noundef !4
  %i.rj = add i32 %i.ri, %i.rg
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %i.qs
  %i.rl = load i32, ptr %i.rk, align 4, !noalias !394, !noundef !4
  %i.rm = add i32 %i.rj, %i.rl
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %i.oa, i64 %i.qs
  %i.ro = load i32, ptr %i.rn, align 4, !noalias !394, !noundef !4
  %i.rp = add i32 %i.rm, %i.ro
  %i.rq = mul i32 %i.rp, 3
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %.sroa.0.0.i471
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %i.qr
  %i.rt = load i32, ptr %i.rs, align 4, !noalias !394, !noundef !4
  %7 = load <2 x i32>, ptr %i.rr, align 4, !noalias !394
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %i.oa, i64 %i.qr
  %i.rv = load i32, ptr %i.ru, align 4, !noalias !394, !noundef !4
  %8 = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %i.qs
  %9 = load i32, ptr %8, align 4, !noalias !394, !noundef !4
  %10 = insertelement <4 x i32> poison, i32 %9, i64 2
  %11 = insertelement <4 x i32> %10, i32 %i.rv, i64 3
  %12 = shufflevector <2 x i32> %7, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %13 = shufflevector <4 x i32> %12, <4 x i32> %11, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %14 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %13)
  %op.rdx844 = add i32 %14, %i.rt
  %i.rw = shl i32 %op.rdx844, 2
  %i.rx = add i32 %i.rw, %i.rq
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %i.ol, i64 %.sroa.0.0.i471
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.ok, i64 %i.qr
  %i.sa = load i32, ptr %i.rz, align 4, !noalias !394, !noundef !4
  %15 = load <2 x i32>, ptr %i.ry, align 4, !noalias !394
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.ob, i64 %i.qr
  %i.sc = load i32, ptr %i.sb, align 4, !noalias !394, !noundef !4
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.ol, i64 %i.qs
  %i.se = load i32, ptr %i.sd, align 4, !noalias !394, !noundef !4
  %i.sf = getelementptr inbounds nuw i8, ptr %i.on, i64 %.sroa.0.0.i471
  %i.sg = load i8, ptr %i.sf, align 1, !noalias !394, !noundef !4
  %i.sh = zext i8 %i.sg to i32
  %i.si = mul i32 %i.rx, %i.sh
  %16 = insertelement <4 x i32> poison, i32 %i.se, i64 2
  %17 = insertelement <4 x i32> %16, i32 %i.sc, i64 3
  %18 = shufflevector <2 x i32> %15, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %19 = shufflevector <4 x i32> %18, <4 x i32> %17, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %20 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %19)
  %op.rdx = add i32 %20, %i.sa
  %i.sj = shl i32 %op.rdx, 2
  %i.sk = add i32 %i.re, 256
  %i.sl = add i32 %i.sk, %i.sj
  %i.sm = add i32 %i.sl, %i.si
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.sroa.0.0.i471
  %i.so = lshr i32 %i.sm, 9
  store i32 %i.so, ptr %i.sn, align 4, !alias.scope !393
  %exitcond591.not = icmp eq i64 %i.qr, %5
  br i1 %exitcond591.not, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r1_internalhECs2mu2Cb9JdUH_5ravif.exit, label %.lr.ph472, !llvm.loop !323

bb.bn:                                            ; preds = %bb.bg
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 265, i64 noundef %i.bg, i64 noundef %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #28
  unreachable

bb.bo:                                            ; preds = %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r1_internalhECs2mu2Cb9JdUH_5ravif.exit
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #28
  unreachable

bb.bp:                                            ; preds = %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r1_internalhECs2mu2Cb9JdUH_5ravif.exit
  %i.sp = extractvalue { ptr, i64 } %i.oc, 1      ; 2 uses
  %i.sq = load i64, ptr %i.cq, align 8, !noundef !4
  %i.sr = mul i64 %i.sq, %i.lx
  %i.ss = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.sr ; 2 uses
  %i.st = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %.sroa.021.0479 ; 2 uses
  %i.su = load ptr, ptr %i.st, align 8, !nonnull !4, !align !21, !noundef !4 ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.st, i64 8
  %i.sw = load i64, ptr %i.sv, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %.not.i54 = icmp ugt i64 %5, %i.sp
  br i1 %.not.i54, label %bb.bq, label %bb.br, !prof !11

bb.bq:                                            ; preds = %bb.bp
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %5, i64 noundef range(i64 0, -9223372036854775808) %i.sp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #28, !noalias !395
  unreachable

bb.br:                                            ; preds = %bb.bp
  %i.sx = getelementptr inbounds nuw i8, ptr %i.od, i64 %5
  br i1 %.not7.i, label %bb.bs, label %bb.bt, !prof !8

bb.bs:                                            ; preds = %bb.br
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %5, i64 noundef range(i64 0, -9223372036854775808) %i.cn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #28, !noalias !395
  unreachable

bb.bt:                                            ; preds = %bb.br
  %i.sy = getelementptr inbounds nuw i8, ptr %i.ss, i64 %5
  %.not8.i = icmp ugt i64 %5, %i.sw
  br i1 %.not8.i, label %bb.bu, label %bb.bv, !prof !8

bb.bu:                                            ; preds = %bb.bt
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %5, i64 noundef range(i64 0, 2305843009213693952) %i.sw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #28, !noalias !395
  unreachable

bb.bv:                                            ; preds = %bb.bt
  br i1 %i.bi, label %_RINvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_linehECs2mu2Cb9JdUH_5ravif.exit, label %bb.bw, !prof !19

bb.bw:                                            ; preds = %bb.bv
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %5, i64 noundef 384, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #28, !noalias !395
  unreachable

_RINvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_linehECs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.bv
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.su, i64 %5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !396
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull readonly %i.od, ptr noundef nonnull readonly %i.sx, ptr noundef nonnull readonly %i.ss, ptr noundef nonnull readonly %i.sy), !noalias !397
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !396
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEBW_EINtB5_7ZipImplBW_BW_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly align 4 %i.su, ptr noundef nonnull readonly %i.sz, ptr noundef nonnull readonly align 4 %i.u, ptr noundef nonnull readonly %i.cj), !noalias !397
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4IterhEB10_EIBN_IB11_mEB1B_EEINtB5_7ZipImplBW_B1x_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !398
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !396
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !396
  call void @llvm.experimental.noalias.scope.decl(metadata !399)
  %.val.i61 = load i64, ptr %i.cr, align 8, !alias.scope !399, !noalias !397, !noundef !4 ; 3 uses
  %.val6.i = load i64, ptr %i.cs, align 8, !alias.scope !399, !noalias !397, !noundef !4 ; 2 uses
  %i.ta = sub i64 %.val6.i, %.val.i61
  %.not.i62 = icmp eq i64 %.val6.i, %.val.i61
  br i1 %.not.i62, label %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4IterhEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRhB3J_ETRmB3R_EETxxxEB2g_NCIB2i_hE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RINvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_linehECs2mu2Cb9JdUH_5ravif.exit
  %i.tb = load i64, ptr %i.ct, align 8, !alias.scope !400, !noalias !397, !noundef !4
  %.val1.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !400, !noalias !397, !nonnull !4, !noundef !4
  %.val.i.i.i.i = load ptr, ptr %i.cu, align 8, !alias.scope !400, !noalias !397, !nonnull !4, !noundef !4
  %i.tc = load i64, ptr %i.cw, align 8, !alias.scope !401, !noalias !397, !noundef !4
  %.val1.i.i1.i.i = load ptr, ptr %i.cv, align 8, !alias.scope !401, !noalias !397, !nonnull !4, !noundef !4
  %.val.i.i2.i.i = load ptr, ptr %i.cx, align 8, !alias.scope !401, !noalias !397, !nonnull !4, !noundef !4
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bx, %.lr.ph.i
  %.sroa.0.058.i = phi i64 [ 0, %.lr.ph.i ], [ %i.td, %bb.bx ] ; 2 uses
  %.sroa.10.057.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ui, %bb.bx ]
  %.sroa.9.056.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ug, %bb.bx ]
  %.sroa.823.055.i = phi i64 [ 0, %.lr.ph.i ], [ %i.uc, %bb.bx ]
  %.sroa.613.054.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ue, %bb.bx ]
  %.sroa.010.053.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ua, %bb.bx ]
  %i.td = add nuw i64 %.sroa.0.058.i, 1           ; 2 uses
  %i.te = add i64 %.sroa.0.058.i, %.val.i61       ; 2 uses
  %i.tf = add i64 %i.te, %i.tb                    ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 %i.tf
  %i.th = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.tf
  %i.ti = add i64 %i.te, %i.tc                    ; 2 uses
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i1.i.i, i64 %i.ti
  %i.tk = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i2.i.i, i64 %i.ti
  %i.tl = load i8, ptr %i.tg, align 1, !noalias !402, !noundef !4
  %i.tm = load i8, ptr %i.th, align 1, !noalias !402, !noundef !4
  %i.tn = load i32, ptr %i.tj, align 4, !noalias !402, !noundef !4
  %i.to = load i32, ptr %i.tk, align 4, !noalias !402, !noundef !4
  %i.tp = zext i8 %i.tm to i32
  %i.tq = zext i8 %i.tl to i32                    ; 2 uses
  %i.tr = shl nuw nsw i32 %i.tq, 4                ; 2 uses
  %i.ts = sub nsw i32 %i.tp, %i.tq
  %i.tt = shl nsw i32 %i.ts, 4
  %i.tu = sext i32 %i.tt to i64                   ; 2 uses
  %i.tv = sub i32 %i.tn, %i.tr
  %i.tw = sub i32 %i.to, %i.tr
  %i.tx = sext i32 %i.tw to i64                   ; 4 uses
  %i.ty = sext i32 %i.tv to i64                   ; 4 uses
  %i.tz = mul nsw i64 %i.ty, %i.ty
  %i.ua = add i64 %i.tz, %.sroa.010.053.i         ; 2 uses
  %i.ub = mul nsw i64 %i.tx, %i.tx
  %i.uc = add i64 %i.ub, %.sroa.823.055.i         ; 2 uses
  %i.ud = mul nsw i64 %i.tx, %i.ty
  %i.ue = add i64 %i.ud, %.sroa.613.054.i         ; 2 uses
  %i.uf = mul nsw i64 %i.tu, %i.ty
  %i.ug = add i64 %i.uf, %.sroa.9.056.i           ; 2 uses
  %i.uh = mul nsw i64 %i.tx, %i.tu
  %i.ui = add i64 %i.uh, %.sroa.10.057.i          ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.td, %i.ta
  br i1 %exitcond.not.i, label %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4IterhEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRhB3J_ETRmB3R_EETxxxEB2g_NCIB2i_hE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit.loopexit, label %bb.bx

_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4IterhEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRhB3J_ETRmB3R_EETxxxEB2g_NCIB2i_hE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit.loopexit: ; preds = %bb.bx
  %i.uj = sitofp i64 %i.ua to double
  %i.uk = sitofp i64 %i.uc to double
  %i.ul = sitofp i64 %i.ue to double
  %i.um = sitofp i64 %i.ug to double
  %i.un = sitofp i64 %i.ui to double
  %i.uo = insertelement <4 x double> poison, double %i.un, i64 0
  %i.up = insertelement <4 x double> %i.uo, double %i.um, i64 1
  %i.uq = insertelement <4 x double> %i.up, double %i.uk, i64 2
  %i.ur = insertelement <4 x double> %i.uq, double %i.ul, i64 3
  br label %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4IterhEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRhB3J_ETRmB3R_EETxxxEB2g_NCIB2i_hE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit

_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4IterhEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRhB3J_ETRmB3R_EETxxxEB2g_NCIB2i_hE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit: ; preds = %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4IterhEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRhB3J_ETRmB3R_EETxxxEB2g_NCIB2i_hE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit.loopexit, %_RINvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_linehECs2mu2Cb9JdUH_5ravif.exit
  %.sroa.010.0.lcssa.i = phi double [ 0.000000e+00, %_RINvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_linehECs2mu2Cb9JdUH_5ravif.exit ], [ %i.uj, %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4IterhEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRhB3J_ETRmB3R_EETxxxEB2g_NCIB2i_hE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit.loopexit ]
  %i.us = phi <4 x double> [ zeroinitializer, %_RINvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_linehECs2mu2Cb9JdUH_5ravif.exit ], [ %i.ur, %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4IterhEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRhB3J_ETRmB3R_EETxxxEB2g_NCIB2i_hE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit.loopexit ]
  %i.ut = fadd double %.sroa.0.1478, %.sroa.010.0.lcssa.i ; 2 uses
  %i.uu = fadd <4 x double> %i.lv, %i.us          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %exitcond593.not = icmp eq i64 %i.lw, %umax
  br i1 %exitcond593.not, label %._crit_edge, label %.lr.ph480
}

; Function Attrs: nonlazybind uwtable
define hidden { i8, i8 } @_RINvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solvetECs2mu2Cb9JdUH_5ravif(i8 noundef %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(816) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [144 x i8], align 8               ; 4 uses
  %i.d = alloca [112 x i8], align 8               ; 4 uses
  %i.e = alloca [64 x i8], align 8                ; 4 uses
  %i.f = alloca [64 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [112 x i8], align 8               ; 11 uses
  %i.n = alloca [272 x i8], align 8               ; 19 uses
  %i.o = alloca [272 x i8], align 8               ; 4 uses
  %i.p = alloca [64 x i8], align 8                ; 4 uses
  %i.q = alloca [64 x i8], align 8                ; 4 uses
  %i.r = alloca [48 x i8], align 8                ; 7 uses
  %i.s = alloca [48 x i8], align 8                ; 7 uses
  %i.t = alloca [32 x i8], align 8                ; 7 uses
  %i.u = alloca [1536 x i8], align 4              ; 8 uses
  %i.v = alloca [4632 x i8], align 4              ; 9 uses
  %i.w = alloca [4632 x i8], align 4              ; 8 uses
  %i.x = alloca [1536 x i8], align 4              ; 6 uses
  %i.y = alloca [1536 x i8], align 4              ; 8 uses
  %i.z = alloca [3088 x i8], align 4              ; 6 uses
  %i.aa = alloca [3088 x i8], align 4             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 3088
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1544) %i.ab, i8 0, i64 1544, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(3088) %i.aa, i8 0, i64 3088, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(3088) %i.z, i8 0, i64 3088, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1536) %i.y, i8 0, i64 1536, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1536) %i.x, i8 0, i64 1536, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 1544
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4632) %i.w, i8 0, i64 4632, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 1544
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(3088) %i.v, i8 0, i64 3088, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1536) %i.u, i8 0, i64 1536, i1 false)
  %i.ae = zext i8 %0 to i64                       ; 2 uses
  %i.af = icmp ult i8 %0, 16
  br i1 %i.af, label %bb.b, label %bb.c

end_hunk_0
begin_hunk_1_@_RINvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solvetECs2mu2Cb9JdUH_5ravif:bb.a
  %i.lq = load i64, ptr %i.bm, align 8, !alias.scope !553, !noalias !546, !noundef !4
  %i.lr = icmp ult i64 %i.lp, %i.lq
  br i1 %i.lr, label %.lr.ph, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r2_internaltECs2mu2Cb9JdUH_5ravif.exit

bb.az:                                            ; preds = %bb.aw
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef %i.jm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #28, !noalias !546
  unreachable

_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r2_internaltECs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.ay, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !534
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !534
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !534
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %.split

._crit_edge:                                      ; preds = %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4ItertEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRtB3J_ETRmB3R_EETxxxEB2g_NCIB2i_tE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit, %.split
  %.sroa.0.1.lcssa = phi double [ %.sroa.0.0491, %.split ], [ %i.wa, %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4ItertEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRtB3J_ETRmB3R_EETxxxEB2g_NCIB2i_tE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit ] ; 2 uses
  %i.ls = phi <4 x double> [ %i.eb, %.split ], [ %i.wb, %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4ItertEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRtB3J_ETRmB3R_EETxxxEB2g_NCIB2i_tE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %.not49 = icmp eq i64 %i.ee, 0
  %indvars.iv.next = add i64 %indvars.iv, -2
  br i1 %.not49, label %._crit_edge495, label %bb.n

.lr.ph480:                                        ; preds = %.split, %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4ItertEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRtB3J_ETRmB3R_EETxxxEB2g_NCIB2i_tE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit
  %.sroa.021.0479 = phi i64 [ %i.lu, %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4ItertEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRtB3J_ETRmB3R_EETxxxEB2g_NCIB2i_tE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit ], [ 0, %.split ] ; 3 uses
  %.sroa.0.1478 = phi double [ %i.wa, %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4ItertEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRtB3J_ETRmB3R_EETxxxEB2g_NCIB2i_tE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit ], [ %.sroa.0.0491, %.split ]
  %i.lt = phi <4 x double> [ %i.wb, %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4ItertEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRtB3J_ETRmB3R_EETxxxEB2g_NCIB2i_tE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit ], [ %i.eb, %.split ]
  %i.lu = add nuw nsw i64 %.sroa.021.0479, 1      ; 2 uses
  %i.lv = add nuw nsw i64 %.sroa.021.0479, %.sroa.018.0492 ; 8 uses
  br i1 %.not48, label %bb.ba, label %bb.bf

bb.ba:                                            ; preds = %.lr.ph480
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.lw = call { ptr, i64 } @_RNvMsc_NtCsko5zPvjVG7R_7v_frame5planeINtB5_10PlaneSlicetE3rowCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.lv), !noalias !562 ; 2 uses
  %i.lx = extractvalue { ptr, i64 } %i.lw, 0      ; 3 uses
  br i1 %i.bi, label %bb.bc, label %bb.bb, !prof !19

bb.bb:                                            ; preds = %bb.ba
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %5, i64 noundef 384, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #28, !noalias !562
  unreachable

bb.bc:                                            ; preds = %bb.ba
  %i.ly = extractvalue { ptr, i64 } %i.lw, 1      ; 2 uses
  %.not.i = icmp ugt i64 %5, %i.ly
  br i1 %.not.i, label %bb.bd, label %bb.be, !prof !8

bb.bd:                                            ; preds = %bb.bc
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %5, i64 noundef %i.ly, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #28, !noalias !562
  unreachable

bb.be:                                            ; preds = %bb.bc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lx) ]
  %i.lz = getelementptr inbounds nuw [2 x i8], ptr %i.lx, i64 %5
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.s, ptr noundef nonnull align 4 %i.u, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.lx, ptr noundef nonnull %i.lz)
  %.sroa.097.0.copyload = load ptr, ptr %i.s, align 8, !noalias !563 ; 9 uses
  %.sroa.499.0.copyload = load ptr, ptr %.sroa.499.0..sroa_idx, align 8, !noalias !563 ; 9 uses
  %.sroa.5100.0.copyload = load i64, ptr %.sroa.5100.0..sroa_idx, align 8, !noalias !563 ; 8 uses
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !563 ; 7 uses
  %i.ma = icmp ult i64 %.sroa.5100.0.copyload, %.sroa.7.0.copyload
  br i1 %i.ma, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.lr.ph, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internaltECs2mu2Cb9JdUH_5ravif.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.lr.ph: ; preds = %bb.be
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.097.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.499.0.copyload) ]
  %i.mb = sub nuw i64 %.sroa.7.0.copyload, %.sroa.5100.0.copyload ; 3 uses
  %min.iters.check807 = icmp ult i64 %i.mb, 8
  br i1 %min.iters.check807, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.lr.ph
  %i.mc = shl i64 %.sroa.5100.0.copyload, 2
  %scevgep = getelementptr i8, ptr %.sroa.097.0.copyload, i64 %i.mc
  %i.md = shl i64 %.sroa.7.0.copyload, 2
  %scevgep803 = getelementptr i8, ptr %.sroa.097.0.copyload, i64 %i.md
  %i.me = shl i64 %.sroa.5100.0.copyload, 1
  %scevgep804 = getelementptr i8, ptr %.sroa.499.0.copyload, i64 %i.me
  %i.mf = shl i64 %.sroa.7.0.copyload, 1
  %scevgep805 = getelementptr i8, ptr %.sroa.499.0.copyload, i64 %i.mf
  %bound0 = icmp ult ptr %scevgep, %scevgep805
  %bound1 = icmp ult ptr %scevgep804, %scevgep803
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.preheader, label %vector.ph808

vector.ph808:                                     ; preds = %vector.memcheck
  %n.vec809 = and i64 %i.mb, -8                   ; 3 uses
  %i.mg = add i64 %.sroa.5100.0.copyload, %n.vec809
  br label %vector.body810

vector.body810:                                   ; preds = %vector.body810, %vector.ph808
  %index811 = phi i64 [ 0, %vector.ph808 ], [ %index.next814, %vector.body810 ] ; 2 uses
  %i.mh = add nuw i64 %.sroa.5100.0.copyload, %index811 ; 2 uses
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.097.0.copyload, i64 %i.mh ; 2 uses
  %i.mj = getelementptr inbounds nuw [2 x i8], ptr %.sroa.499.0.copyload, i64 %i.mh ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  %wide.load812 = load <4 x i16>, ptr %i.mj, align 2, !alias.scope !564
  %wide.load813 = load <4 x i16>, ptr %i.mk, align 2, !alias.scope !564
  %i.ml = zext <4 x i16> %wide.load812 to <4 x i32>
  %i.mm = zext <4 x i16> %wide.load813 to <4 x i32>
  %i.mn = shl nuw nsw <4 x i32> %i.ml, splat (i32 4)
  %i.mo = shl nuw nsw <4 x i32> %i.mm, splat (i32 4)
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mi, i64 16
  store <4 x i32> %i.mn, ptr %i.mi, align 4, !alias.scope !565, !noalias !564
  store <4 x i32> %i.mo, ptr %i.mp, align 4, !alias.scope !565, !noalias !564
  %index.next814 = add nuw i64 %index811, 8       ; 2 uses
  %i.mq = icmp eq i64 %index.next814, %n.vec809
  br i1 %i.mq, label %middle.block815, label %vector.body810, !llvm.loop !486

middle.block815:                                  ; preds = %vector.body810
  %cmp.n816 = icmp eq i64 %i.mb, %n.vec809
  br i1 %cmp.n816, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internaltECs2mu2Cb9JdUH_5ravif.exit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.preheader: ; preds = %vector.memcheck, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.lr.ph, %middle.block815
  %.sroa.5100.0473.ph = phi i64 [ %.sroa.5100.0.copyload, %vector.memcheck ], [ %.sroa.5100.0.copyload, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.lr.ph ], [ %i.mg, %middle.block815 ] ; 4 uses
  %i.mr = sub i64 %.sroa.7.0.copyload, %.sroa.5100.0473.ph
  %xtraiter955 = and i64 %i.mr, 3                 ; 2 uses
  %lcmp.mod956.not = icmp eq i64 %xtraiter955, 0
  br i1 %lcmp.mod956.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.prol
  %.sroa.5100.0473.prol = phi i64 [ %i.mu, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.prol ], [ %.sroa.5100.0473.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.preheader ] ; 3 uses
  %prol.iter957 = phi i64 [ %prol.iter957.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.preheader ]
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %.sroa.097.0.copyload, i64 %.sroa.5100.0473.prol
  %i.mt = getelementptr inbounds nuw [2 x i8], ptr %.sroa.499.0.copyload, i64 %.sroa.5100.0473.prol
  %i.mu = add nuw i64 %.sroa.5100.0473.prol, 1    ; 2 uses
  %i.mv = load i16, ptr %i.mt, align 2, !noundef !4
  %i.mw = zext i16 %i.mv to i32
  %i.mx = shl nuw nsw i32 %i.mw, 4
  store i32 %i.mx, ptr %i.ms, align 4
  %prol.iter957.next = add i64 %prol.iter957, 1   ; 2 uses
  %prol.iter957.cmp.not = icmp eq i64 %prol.iter957.next, %xtraiter955
  br i1 %prol.iter957.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.prol, !llvm.loop !487

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.preheader
  %.sroa.5100.0473.unr = phi i64 [ %.sroa.5100.0473.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.preheader ], [ %i.mu, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.prol ]
  %i.my = sub i64 %.sroa.5100.0473.ph, %.sroa.7.0.copyload
  %i.mz = icmp ugt i64 %i.my, -4
  br i1 %i.mz, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internaltECs2mu2Cb9JdUH_5ravif.exit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60
  %.sroa.5100.0473 = phi i64 [ %i.nu, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60 ], [ %.sroa.5100.0473.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.prol.loopexit ] ; 6 uses
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %.sroa.097.0.copyload, i64 %.sroa.5100.0473
  %i.nb = getelementptr inbounds nuw [2 x i8], ptr %.sroa.499.0.copyload, i64 %.sroa.5100.0473
  %i.nc = add nuw i64 %.sroa.5100.0473, 1         ; 2 uses
  %i.nd = load i16, ptr %i.nb, align 2, !noundef !4
  %i.ne = zext i16 %i.nd to i32
  %i.nf = shl nuw nsw i32 %i.ne, 4
  store i32 %i.nf, ptr %i.na, align 4
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %.sroa.097.0.copyload, i64 %i.nc
  %i.nh = getelementptr inbounds nuw [2 x i8], ptr %.sroa.499.0.copyload, i64 %i.nc
  %i.ni = add nuw i64 %.sroa.5100.0473, 2         ; 2 uses
  %i.nj = load i16, ptr %i.nh, align 2, !noundef !4
  %i.nk = zext i16 %i.nj to i32
  %i.nl = shl nuw nsw i32 %i.nk, 4
  store i32 %i.nl, ptr %i.ng, align 4
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.097.0.copyload, i64 %i.ni
  %i.nn = getelementptr inbounds nuw [2 x i8], ptr %.sroa.499.0.copyload, i64 %i.ni
  %i.no = add nuw i64 %.sroa.5100.0473, 3         ; 2 uses
  %i.np = load i16, ptr %i.nn, align 2, !noundef !4
  %i.nq = zext i16 %i.np to i32
  %i.nr = shl nuw nsw i32 %i.nq, 4
  store i32 %i.nr, ptr %i.nm, align 4
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %.sroa.097.0.copyload, i64 %i.no
  %i.nt = getelementptr inbounds nuw [2 x i8], ptr %.sroa.499.0.copyload, i64 %i.no
  %i.nu = add nuw i64 %.sroa.5100.0473, 4         ; 2 uses
  %i.nv = load i16, ptr %i.nt, align 2, !noundef !4
  %i.nw = zext i16 %i.nv to i32
  %i.nx = shl nuw nsw i32 %i.nw, 4
  store i32 %i.nx, ptr %i.ns, align 4
  %exitcond592.not.3 = icmp eq i64 %i.nu, %.sroa.7.0.copyload
  br i1 %exitcond592.not.3, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internaltECs2mu2Cb9JdUH_5ravif.exit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60, !llvm.loop !488

_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internaltECs2mu2Cb9JdUH_5ravif.exit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60, %middle.block815, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r1_internaltECs2mu2Cb9JdUH_5ravif.exit

bb.bf:                                            ; preds = %.lr.ph480
  %i.ny = add i64 %i.lv, 2                        ; 2 uses
  %i.nz = urem i64 %i.ny, 3                       ; 2 uses
  %i.oa = getelementptr inbounds nuw [1544 x i8], ptr %i.w, i64 %i.nz ; 7 uses
  %i.ob = getelementptr inbounds nuw [1544 x i8], ptr %i.v, i64 %i.nz ; 7 uses
  br i1 %i.cd, label %bb.bh, label %bb.bg, !prof !8

_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r1_internaltECs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.bm, %bb.bi, %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internaltECs2mu2Cb9JdUH_5ravif.exit
  %i.oc = call { ptr, i64 } @_RNvXsd_NtCsko5zPvjVG7R_7v_frame5planeINtB5_10PlaneSlicetEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.lv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) ; 2 uses
  %i.od = extractvalue { ptr, i64 } %i.oc, 0      ; 2 uses
  %i.oe = icmp ult i64 %i.lv, %i.cl
  br i1 %i.oe, label %bb.bp, label %bb.bo, !prof !19

bb.bg:                                            ; preds = %bb.bf
  br i1 %i.ce, label %bb.bn, label %bb.bi, !prof !8

bb.bh:                                            ; preds = %bb.bf
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 265, i64 noundef %i.bc, i64 noundef %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #28
  unreachable

bb.bi:                                            ; preds = %bb.bg
  call void %.sroa.07.0140(ptr noalias nofree noundef nonnull align 4 %i.oa, i64 noundef 386, ptr noalias nofree noundef nonnull align 4 %i.ob, i64 noundef 386, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.cf, i64 noundef %i.cg, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ci, i64 noundef %i.ch, i64 noundef 264, i64 noundef %i.ny, i64 noundef %5, i32 noundef %i.aj), !callees !18
  %i.of = urem i64 %i.lv, 3                       ; 2 uses
  %i.og = getelementptr inbounds nuw [1544 x i8], ptr %i.w, i64 %i.of ; 6 uses
  %i.oh = add i64 %i.lv, 1
  %i.oi = urem i64 %i.oh, 3                       ; 2 uses
  %i.oj = getelementptr inbounds nuw [1544 x i8], ptr %i.w, i64 %i.oi ; 5 uses
  %i.ok = getelementptr inbounds nuw [1544 x i8], ptr %i.v, i64 %i.of ; 6 uses
  %i.ol = getelementptr inbounds nuw [1544 x i8], ptr %i.v, i64 %i.oi ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !566)
  %i.om = call { ptr, i64 } @_RNvMsc_NtCsko5zPvjVG7R_7v_frame5planeINtB5_10PlaneSlicetE3rowCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.lv), !noalias !567 ; 2 uses
  %i.on = extractvalue { ptr, i64 } %i.om, 0      ; 2 uses
  %i.oo = extractvalue { ptr, i64 } %i.om, 1      ; 4 uses
  br i1 %.not501, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r1_internaltECs2mu2Cb9JdUH_5ravif.exit, label %.lr.ph472.preheader

.lr.ph472.preheader:                              ; preds = %bb.bi
  %i.op = call i64 @llvm.umin.i64(i64 %i.oo, i64 %i.cy) ; 2 uses
  %min.iters.check819 = icmp ult i64 %i.op, 4
  br i1 %min.iters.check819, label %.lr.ph472.preheader867, label %vector.ph820

vector.ph820:                                     ; preds = %.lr.ph472.preheader
  %i.oq = call i64 @llvm.umin.i64(i64 %i.op, i64 384)
  %i.or = add nuw nsw i64 %i.oq, 1                ; 2 uses
  %i.os = and i64 %i.or, 3                        ; 2 uses
  %i.ot = icmp eq i64 %i.os, 0
  %i.ou = select i1 %i.ot, i64 4, i64 %i.os
  %n.vec821 = sub nsw i64 %i.or, %i.ou            ; 2 uses
  br label %vector.body822

vector.body822:                                   ; preds = %vector.body822, %vector.ph820
  %index823 = phi i64 [ 0, %vector.ph820 ], [ %index.next843, %vector.body822 ] ; 11 uses
  %i.ov = or disjoint i64 %index823, 1            ; 6 uses
  %i.ow = or disjoint i64 %index823, 2            ; 6 uses
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.ok, i64 %index823
  %wide.load824 = load <4 x i32>, ptr %i.ox, align 4, !noalias !567
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.ob, i64 %index823
  %wide.load825 = load <4 x i32>, ptr %i.oy, align 4, !noalias !567
  %i.oz = add <4 x i32> %wide.load825, %wide.load824
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.ok, i64 %i.ow
  %wide.load826 = load <4 x i32>, ptr %i.pa, align 4, !noalias !567
  %i.pb = add <4 x i32> %i.oz, %wide.load826
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.ob, i64 %i.ow
  %wide.load827 = load <4 x i32>, ptr %i.pc, align 4, !noalias !567
  %i.pd = add <4 x i32> %i.pb, %wide.load827
  %i.pe = mul <4 x i32> %i.pd, splat (i32 3)
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %index823
  %wide.load828 = load <4 x i32>, ptr %i.pf, align 4, !noalias !567
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.oa, i64 %index823
  %wide.load829 = load <4 x i32>, ptr %i.pg, align 4, !noalias !567
  %i.ph = add <4 x i32> %wide.load829, %wide.load828
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %i.ow
  %wide.load830 = load <4 x i32>, ptr %i.pi, align 4, !noalias !567
  %i.pj = add <4 x i32> %i.ph, %wide.load830
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.oa, i64 %i.ow
  %wide.load831 = load <4 x i32>, ptr %i.pk, align 4, !noalias !567
  %i.pl = add <4 x i32> %i.pj, %wide.load831
  %i.pm = mul <4 x i32> %i.pl, splat (i32 3)
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %index823
  %wide.load832 = load <4 x i32>, ptr %i.pn, align 4, !noalias !567
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %i.ov
  %wide.load833 = load <4 x i32>, ptr %i.po, align 4, !noalias !567
  %i.pp = add <4 x i32> %wide.load833, %wide.load832
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %i.ov
  %wide.load834 = load <4 x i32>, ptr %i.pq, align 4, !noalias !567
  %i.pr = add <4 x i32> %i.pp, %wide.load834
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.oa, i64 %i.ov
  %wide.load835 = load <4 x i32>, ptr %i.ps, align 4, !noalias !567
  %i.pt = add <4 x i32> %i.pr, %wide.load835
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %i.ow
  %wide.load836 = load <4 x i32>, ptr %i.pu, align 4, !noalias !567
  %i.pv = add <4 x i32> %i.pt, %wide.load836
  %i.pw = shl <4 x i32> %i.pv, splat (i32 2)
  %i.px = add <4 x i32> %i.pw, %i.pm
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.ol, i64 %index823
  %wide.load837 = load <4 x i32>, ptr %i.py, align 4, !noalias !567
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.ok, i64 %i.ov
  %wide.load838 = load <4 x i32>, ptr %i.pz, align 4, !noalias !567
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %i.ol, i64 %i.ov
  %wide.load839 = load <4 x i32>, ptr %i.qa, align 4, !noalias !567
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.ob, i64 %i.ov
  %wide.load840 = load <4 x i32>, ptr %i.qb, align 4, !noalias !567
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.ol, i64 %i.ow
  %wide.load841 = load <4 x i32>, ptr %i.qc, align 4, !noalias !567
  %i.qd = getelementptr inbounds nuw [2 x i8], ptr %i.on, i64 %index823
  %wide.load842 = load <4 x i16>, ptr %i.qd, align 2, !noalias !567
  %i.qe = zext <4 x i16> %wide.load842 to <4 x i32>
  %i.qf = mul <4 x i32> %i.px, %i.qe
  %i.qg = add <4 x i32> %wide.load838, %wide.load837
  %i.qh = add <4 x i32> %i.qg, %wide.load839
  %i.qi = add <4 x i32> %i.qh, %wide.load840
  %i.qj = add <4 x i32> %i.qi, %wide.load841
  %i.qk = shl <4 x i32> %i.qj, splat (i32 2)
  %i.ql = add <4 x i32> %i.pe, splat (i32 256)
  %i.qm = add <4 x i32> %i.ql, %i.qk
  %i.qn = add <4 x i32> %i.qm, %i.qf
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index823
  %i.qp = lshr <4 x i32> %i.qn, splat (i32 9)
  store <4 x i32> %i.qp, ptr %i.qo, align 4, !alias.scope !566
  %index.next843 = add nuw i64 %index823, 4       ; 2 uses
  %i.qq = icmp eq i64 %index.next843, %n.vec821
  br i1 %i.qq, label %.lr.ph472.preheader867, label %vector.body822, !llvm.loop !493

.lr.ph472.preheader867:                           ; preds = %vector.body822, %.lr.ph472.preheader
  %.sroa.0.0.i471.ph = phi i64 [ 0, %.lr.ph472.preheader ], [ %n.vec821, %vector.body822 ]
  br label %.lr.ph472

.lr.ph472:                                        ; preds = %.lr.ph472.preheader867, %bb.bm
  %.sroa.0.0.i471 = phi i64 [ %i.qr, %bb.bm ], [ %.sroa.0.0.i471.ph, %.lr.ph472.preheader867 ] ; 12 uses
  %i.qr = add nuw nsw i64 %.sroa.0.0.i471, 1      ; 6 uses
  %i.qs = add nuw nsw i64 %.sroa.0.0.i471, 2      ; 7 uses
  %exitcond589.not = icmp eq i64 %.sroa.0.0.i471, 384
  br i1 %exitcond589.not, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %.lr.ph472
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.qs, i64 noundef 386, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #28, !noalias !567
  unreachable

bb.bk:                                            ; preds = %.lr.ph472
  %exitcond590.not = icmp eq i64 %.sroa.0.0.i471, %i.oo
  br i1 %exitcond590.not, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.oo, i64 noundef %i.oo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #28, !noalias !567
  unreachable

bb.bm:                                            ; preds = %bb.bk
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %i.ok, i64 %.sroa.0.0.i471
  %i.qu = load i32, ptr %i.qt, align 4, !noalias !567, !noundef !4
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.ob, i64 %.sroa.0.0.i471
  %i.qw = load i32, ptr %i.qv, align 4, !noalias !567, !noundef !4
  %i.qx = add i32 %i.qw, %i.qu
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.ok, i64 %i.qs
  %i.qz = load i32, ptr %i.qy, align 4, !noalias !567, !noundef !4
  %i.ra = add i32 %i.qx, %i.qz
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %i.ob, i64 %i.qs
  %i.rc = load i32, ptr %i.rb, align 4, !noalias !567, !noundef !4
  %i.rd = add i32 %i.ra, %i.rc
  %i.re = mul i32 %i.rd, 3
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %.sroa.0.0.i471
  %i.rg = load i32, ptr %i.rf, align 4, !noalias !567, !noundef !4
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %i.oa, i64 %.sroa.0.0.i471
  %i.ri = load i32, ptr %i.rh, align 4, !noalias !567, !noundef !4
  %i.rj = add i32 %i.ri, %i.rg
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %i.qs
  %i.rl = load i32, ptr %i.rk, align 4, !noalias !567, !noundef !4
  %i.rm = add i32 %i.rj, %i.rl
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %i.oa, i64 %i.qs
  %i.ro = load i32, ptr %i.rn, align 4, !noalias !567, !noundef !4
  %i.rp = add i32 %i.rm, %i.ro
  %i.rq = mul i32 %i.rp, 3
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %.sroa.0.0.i471
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %i.qr
  %i.rt = load i32, ptr %i.rs, align 4, !noalias !567, !noundef !4
  %7 = load <2 x i32>, ptr %i.rr, align 4, !noalias !567
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %i.oa, i64 %i.qr
  %i.rv = load i32, ptr %i.ru, align 4, !noalias !567, !noundef !4
  %8 = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %i.qs
  %9 = load i32, ptr %8, align 4, !noalias !567, !noundef !4
  %10 = insertelement <4 x i32> poison, i32 %9, i64 2
  %11 = insertelement <4 x i32> %10, i32 %i.rv, i64 3
  %12 = shufflevector <2 x i32> %7, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %13 = shufflevector <4 x i32> %12, <4 x i32> %11, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %14 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %13)
  %op.rdx866 = add i32 %14, %i.rt
  %i.rw = shl i32 %op.rdx866, 2
  %i.rx = add i32 %i.rw, %i.rq
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %i.ol, i64 %.sroa.0.0.i471
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.ok, i64 %i.qr
  %i.sa = load i32, ptr %i.rz, align 4, !noalias !567, !noundef !4
  %15 = load <2 x i32>, ptr %i.ry, align 4, !noalias !567
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.ob, i64 %i.qr
  %i.sc = load i32, ptr %i.sb, align 4, !noalias !567, !noundef !4
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.ol, i64 %i.qs
  %i.se = load i32, ptr %i.sd, align 4, !noalias !567, !noundef !4
  %i.sf = getelementptr inbounds nuw [2 x i8], ptr %i.on, i64 %.sroa.0.0.i471
  %i.sg = load i16, ptr %i.sf, align 2, !noalias !567, !noundef !4
  %i.sh = zext i16 %i.sg to i32
  %i.si = mul i32 %i.rx, %i.sh
  %16 = insertelement <4 x i32> poison, i32 %i.se, i64 2
  %17 = insertelement <4 x i32> %16, i32 %i.sc, i64 3
  %18 = shufflevector <2 x i32> %15, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %19 = shufflevector <4 x i32> %18, <4 x i32> %17, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %20 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %19)
  %op.rdx = add i32 %20, %i.sa
  %i.sj = shl i32 %op.rdx, 2
  %i.sk = add i32 %i.re, 256
  %i.sl = add i32 %i.sk, %i.sj
  %i.sm = add i32 %i.sl, %i.si
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.sroa.0.0.i471
  %i.so = lshr i32 %i.sm, 9
  store i32 %i.so, ptr %i.sn, align 4, !alias.scope !566
  %exitcond591.not = icmp eq i64 %i.qr, %5
  br i1 %exitcond591.not, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r1_internaltECs2mu2Cb9JdUH_5ravif.exit, label %.lr.ph472, !llvm.loop !494

bb.bn:                                            ; preds = %bb.bg
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 265, i64 noundef %i.bg, i64 noundef %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #28
  unreachable

bb.bo:                                            ; preds = %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r1_internaltECs2mu2Cb9JdUH_5ravif.exit
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #28
  unreachable

bb.bp:                                            ; preds = %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r1_internaltECs2mu2Cb9JdUH_5ravif.exit
  %i.sp = extractvalue { ptr, i64 } %i.oc, 1      ; 2 uses
  %i.sq = load i64, ptr %i.cq, align 8, !noundef !4
  %i.sr = mul i64 %i.sq, %i.lv
  %i.ss = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %i.sr ; 2 uses
  %i.st = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %.sroa.021.0479 ; 2 uses
  %i.su = load ptr, ptr %i.st, align 8, !nonnull !4, !align !21, !noundef !4 ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.st, i64 8
  %i.sw = load i64, ptr %i.sv, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %.not.i54 = icmp ugt i64 %5, %i.sp
  br i1 %.not.i54, label %bb.bq, label %bb.br, !prof !11

bb.bq:                                            ; preds = %bb.bp
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %5, i64 noundef range(i64 0, 4611686018427387904) %i.sp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #28, !noalias !568
  unreachable

bb.br:                                            ; preds = %bb.bp
  %i.sx = getelementptr inbounds nuw [2 x i8], ptr %i.od, i64 %5
  br i1 %.not7.i, label %bb.bs, label %bb.bt, !prof !8

bb.bs:                                            ; preds = %bb.br
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %5, i64 noundef range(i64 0, 4611686018427387904) %i.cn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #28, !noalias !568
  unreachable

bb.bt:                                            ; preds = %bb.br
  %i.sy = getelementptr inbounds nuw [2 x i8], ptr %i.ss, i64 %5
  %.not8.i = icmp ugt i64 %5, %i.sw
  br i1 %.not8.i, label %bb.bu, label %bb.bv, !prof !8

bb.bu:                                            ; preds = %bb.bt
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %5, i64 noundef range(i64 0, 2305843009213693952) %i.sw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #28, !noalias !568
  unreachable

bb.bv:                                            ; preds = %bb.bt
  br i1 %i.bi, label %_RINvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_linetECs2mu2Cb9JdUH_5ravif.exit, label %bb.bw, !prof !19

bb.bw:                                            ; preds = %bb.bv
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %5, i64 noundef 384, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #28, !noalias !568
  unreachable

_RINvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_linetECs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.bv
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.su, i64 %5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !569
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEBW_EINtB5_7ZipImplBW_BW_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull readonly align 2 %i.od, ptr noundef nonnull readonly %i.sx, ptr noundef nonnull readonly align 2 %i.ss, ptr noundef nonnull readonly %i.sy), !noalias !570
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !569
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEBW_EINtB5_7ZipImplBW_BW_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly align 4 %i.su, ptr noundef nonnull readonly %i.sz, ptr noundef nonnull readonly align 4 %i.u, ptr noundef nonnull readonly %i.cj), !noalias !570
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4ItertEB10_EIBN_IB11_mEB1B_EEINtB5_7ZipImplBW_B1x_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !569
  call void @llvm.experimental.noalias.scope.decl(metadata !572)
  %.val.i61 = load i64, ptr %i.cr, align 8, !alias.scope !572, !noalias !570, !noundef !4 ; 4 uses
  %.val6.i = load i64, ptr %i.cs, align 8, !alias.scope !572, !noalias !570, !noundef !4 ; 2 uses
  %i.ta = sub i64 %.val6.i, %.val.i61             ; 4 uses
  %.not.i62 = icmp eq i64 %.val6.i, %.val.i61
  br i1 %.not.i62, label %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4ItertEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRtB3J_ETRmB3R_EETxxxEB2g_NCIB2i_tE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RINvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_linetECs2mu2Cb9JdUH_5ravif.exit
  %i.tb = load i64, ptr %i.ct, align 8, !alias.scope !573, !noalias !570, !noundef !4 ; 2 uses
  %.val1.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !573, !noalias !570, !nonnull !4, !noundef !4 ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %i.cu, align 8, !alias.scope !573, !noalias !570, !nonnull !4, !noundef !4 ; 2 uses
  %i.tc = load i64, ptr %i.cw, align 8, !alias.scope !574, !noalias !570, !noundef !4 ; 2 uses
  %.val1.i.i1.i.i = load ptr, ptr %i.cv, align 8, !alias.scope !574, !noalias !570, !nonnull !4, !noundef !4 ; 2 uses
  %.val.i.i2.i.i = load ptr, ptr %i.cx, align 8, !alias.scope !574, !noalias !570, !nonnull !4, !noundef !4 ; 2 uses
  %min.iters.check = icmp ult i64 %i.ta, 2
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.ta, -2                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ud, %vector.body ]
  %vec.phi792 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ub, %vector.body ]
  %vec.phi793 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.tx, %vector.body ]
  %vec.phi794 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.tz, %vector.body ]
  %vec.phi795 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.tv, %vector.body ]
  %i.td = add i64 %index, %.val.i61               ; 2 uses
  %i.te = add i64 %i.td, %i.tb                    ; 2 uses
  %i.tf = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i.i, i64 %i.te
  %i.tg = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i.i, i64 %i.te
  %i.th = add i64 %i.td, %i.tc                    ; 2 uses
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i1.i.i, i64 %i.th
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i2.i.i, i64 %i.th
  %wide.load = load <2 x i16>, ptr %i.tf, align 2, !noalias !575
  %wide.load796 = load <2 x i16>, ptr %i.tg, align 2, !noalias !575
  %wide.load797 = load <2 x i32>, ptr %i.ti, align 4, !noalias !575
  %wide.load798 = load <2 x i32>, ptr %i.tj, align 4, !noalias !575
  %i.tk = zext <2 x i16> %wide.load to <2 x i32>  ; 2 uses
  %i.tl = shl nuw nsw <2 x i32> %i.tk, splat (i32 4) ; 2 uses
  %i.tm = zext <2 x i16> %wide.load796 to <2 x i32>
  %i.tn = sub nsw <2 x i32> %i.tm, %i.tk
  %i.to = shl nsw <2 x i32> %i.tn, splat (i32 4)
  %i.tp = sub <2 x i32> %wide.load797, %i.tl
  %i.tq = sub <2 x i32> %wide.load798, %i.tl
  %i.tr = sext <2 x i32> %i.to to <2 x i64>       ; 2 uses
  %i.ts = sext <2 x i32> %i.tq to <2 x i64>       ; 4 uses
  %i.tt = sext <2 x i32> %i.tp to <2 x i64>       ; 4 uses
  %i.tu = mul nsw <2 x i64> %i.tt, %i.tt
  %i.tv = add <2 x i64> %i.tu, %vec.phi795        ; 2 uses
  %i.tw = mul nsw <2 x i64> %i.ts, %i.ts
  %i.tx = add <2 x i64> %i.tw, %vec.phi793        ; 2 uses
  %i.ty = mul nsw <2 x i64> %i.ts, %i.tt
  %i.tz = add <2 x i64> %i.ty, %vec.phi794        ; 2 uses
  %i.ua = mul nsw <2 x i64> %i.tr, %i.tt
  %i.ub = add <2 x i64> %i.ua, %vec.phi792        ; 2 uses
  %i.uc = mul nsw <2 x i64> %i.ts, %i.tr
  %i.ud = add <2 x i64> %i.uc, %vec.phi           ; 2 uses
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ue = icmp eq i64 %index.next, %n.vec
  br i1 %i.ue, label %middle.block, label %vector.body, !llvm.loop !527

middle.block:                                     ; preds = %vector.body
  %i.uf = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.ud) ; 2 uses
  %i.ug = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.ub) ; 2 uses
  %i.uh = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.tx) ; 2 uses
  %i.ui = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.tz) ; 2 uses
  %i.uj = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.tv) ; 2 uses
  %cmp.n = icmp eq i64 %i.ta, %n.vec
  br i1 %cmp.n, label %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4ItertEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRtB3J_ETRmB3R_EETxxxEB2g_NCIB2i_tE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.sroa.0.058.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  %.sroa.10.057.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %i.uf, %middle.block ]
  %.sroa.9.056.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %i.ug, %middle.block ]
  %.sroa.823.055.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %i.uh, %middle.block ]
  %.sroa.613.054.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %i.ui, %middle.block ]
  %.sroa.010.053.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %i.uj, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.0.058.i = phi i64 [ %i.uk, %scalar.ph ], [ %.sroa.0.058.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.10.057.i = phi i64 [ %i.vp, %scalar.ph ], [ %.sroa.10.057.i.ph, %scalar.ph.preheader ]
  %.sroa.9.056.i = phi i64 [ %i.vn, %scalar.ph ], [ %.sroa.9.056.i.ph, %scalar.ph.preheader ]
  %.sroa.823.055.i = phi i64 [ %i.vj, %scalar.ph ], [ %.sroa.823.055.i.ph, %scalar.ph.preheader ]
  %.sroa.613.054.i = phi i64 [ %i.vl, %scalar.ph ], [ %.sroa.613.054.i.ph, %scalar.ph.preheader ]
  %.sroa.010.053.i = phi i64 [ %i.vh, %scalar.ph ], [ %.sroa.010.053.i.ph, %scalar.ph.preheader ]
  %i.uk = add nuw i64 %.sroa.0.058.i, 1           ; 2 uses
  %i.ul = add i64 %.sroa.0.058.i, %.val.i61       ; 2 uses
  %i.um = add i64 %i.ul, %i.tb                    ; 2 uses
  %i.un = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i.i, i64 %i.um
  %i.uo = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i.i, i64 %i.um
  %i.up = add i64 %i.ul, %i.tc                    ; 2 uses
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i1.i.i, i64 %i.up
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i2.i.i, i64 %i.up
  %i.us = load i16, ptr %i.un, align 2, !noalias !575, !noundef !4
  %i.ut = load i16, ptr %i.uo, align 2, !noalias !575, !noundef !4
  %i.uu = load i32, ptr %i.uq, align 4, !noalias !575, !noundef !4
  %i.uv = load i32, ptr %i.ur, align 4, !noalias !575, !noundef !4
  %i.uw = zext i16 %i.ut to i32
  %i.ux = zext i16 %i.us to i32                   ; 2 uses
  %i.uy = shl nuw nsw i32 %i.ux, 4                ; 2 uses
  %i.uz = sub nsw i32 %i.uw, %i.ux
  %i.va = shl nsw i32 %i.uz, 4
  %i.vb = sext i32 %i.va to i64                   ; 2 uses
  %i.vc = sub i32 %i.uu, %i.uy
  %i.vd = sub i32 %i.uv, %i.uy
  %i.ve = sext i32 %i.vd to i64                   ; 4 uses
  %i.vf = sext i32 %i.vc to i64                   ; 4 uses
  %i.vg = mul nsw i64 %i.vf, %i.vf
  %i.vh = add i64 %i.vg, %.sroa.010.053.i         ; 2 uses
  %i.vi = mul nsw i64 %i.ve, %i.ve
  %i.vj = add i64 %i.vi, %.sroa.823.055.i         ; 2 uses
  %i.vk = mul nsw i64 %i.ve, %i.vf
  %i.vl = add i64 %i.vk, %.sroa.613.054.i         ; 2 uses
  %i.vm = mul nsw i64 %i.vb, %i.vf
  %i.vn = add i64 %i.vm, %.sroa.9.056.i           ; 2 uses
  %i.vo = mul nsw i64 %i.ve, %i.vb
  %i.vp = add i64 %i.vo, %.sroa.10.057.i          ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.uk, %i.ta
  br i1 %exitcond.not.i, label %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4ItertEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRtB3J_ETRmB3R_EETxxxEB2g_NCIB2i_tE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit.loopexit, label %scalar.ph, !llvm.loop !528

_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4ItertEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRtB3J_ETRmB3R_EETxxxEB2g_NCIB2i_tE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit.loopexit: ; preds = %scalar.ph, %middle.block
  %.lcssa749 = phi i64 [ %i.uj, %middle.block ], [ %i.vh, %scalar.ph ]
  %.lcssa748 = phi i64 [ %i.uh, %middle.block ], [ %i.vj, %scalar.ph ]
  %.lcssa747 = phi i64 [ %i.ui, %middle.block ], [ %i.vl, %scalar.ph ]
  %.lcssa746 = phi i64 [ %i.ug, %middle.block ], [ %i.vn, %scalar.ph ]
  %.lcssa745 = phi i64 [ %i.uf, %middle.block ], [ %i.vp, %scalar.ph ]
  %i.vq = sitofp i64 %.lcssa749 to double
  %i.vr = sitofp i64 %.lcssa748 to double
  %i.vs = sitofp i64 %.lcssa747 to double
end_hunk_1
begin_hunk_2_@_RINvNtCsdEEMmLUVy6d_5rav1e3lrf21sgrproj_stripe_filterhhECs2mu2Cb9JdUH_5ravif:bb.a
  %i.jm = mul i32 %i.is, %i.jl
  %i.jn = add i32 %i.jm, 128
  %i.jo = add i32 %i.jn, %i.jc
  %i.jp = lshr i32 %i.jo, 8
  store i32 %i.jp, ptr %i.gr, align 4, !noalias !812
  %i.jq = load i64, ptr %i.bp, align 8, !alias.scope !819, !noalias !812, !noundef !4 ; 2 uses
  %i.jr = load i64, ptr %i.bq, align 8, !alias.scope !819, !noalias !812, !noundef !4
  %i.js = icmp ult i64 %i.jq, %i.jr
  br i1 %i.js, label %.lr.ph, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r2_internalhECs2mu2Cb9JdUH_5ravif.exit

bb.ar:                                            ; preds = %bb.ao
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef %i.hn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #28, !noalias !812
  unreachable

_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r2_internalhECs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.aq, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %.split

._crit_edge:                                      ; preds = %_RINvNvNtCsdEEMmLUVy6d_5rav1e3lrf21sgrproj_stripe_filter12apply_filterhECs2mu2Cb9JdUH_5ravif.exit, %.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %.not43 = icmp eq i64 %i.dq, 0
  %indvars.iv.next = add i64 %indvars.iv, -2
  br i1 %.not43, label %._crit_edge271, label %bb.n

.lr.ph265:                                        ; preds = %.split, %_RINvNvNtCsdEEMmLUVy6d_5rav1e3lrf21sgrproj_stripe_filter12apply_filterhECs2mu2Cb9JdUH_5ravif.exit
  %.sroa.014.0264 = phi i64 [ %i.jt, %_RINvNvNtCsdEEMmLUVy6d_5rav1e3lrf21sgrproj_stripe_filter12apply_filterhECs2mu2Cb9JdUH_5ravif.exit ], [ 0, %.split ] ; 3 uses
  %i.jt = add nuw nsw i64 %.sroa.014.0264, 1      ; 2 uses
  %i.ju = add nuw nsw i64 %.sroa.014.0264, %.sroa.011.0268 ; 8 uses
  br i1 %.not42, label %bb.as, label %bb.ax

bb.as:                                            ; preds = %.lr.ph265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.jv = call { ptr, i64 } @_RNvMsc_NtCsko5zPvjVG7R_7v_frame5planeINtB5_10PlaneSlicehE3rowCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5, i64 noundef %i.ju), !noalias !828 ; 2 uses
  %i.jw = extractvalue { ptr, i64 } %i.jv, 0      ; 3 uses
  br i1 %i.bm, label %bb.au, label %bb.at, !prof !19

bb.at:                                            ; preds = %bb.as
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ac, i64 noundef 384, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #28, !noalias !828
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.jx = extractvalue { ptr, i64 } %i.jv, 1      ; 2 uses
  %.not.i = icmp ugt i64 %i.ac, %i.jx
  br i1 %.not.i, label %bb.av, label %bb.aw, !prof !8

bb.av:                                            ; preds = %bb.au
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ac, i64 noundef %i.jx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #28, !noalias !828
  unreachable

bb.aw:                                            ; preds = %bb.au
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jw) ]
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jw, i64 %i.ac
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.s, ptr noundef nonnull align 4 %i.u, ptr noundef nonnull %i.co, ptr noundef nonnull %i.jw, ptr noundef nonnull %i.jy)
  %.sroa.075.0.copyload = load ptr, ptr %i.s, align 8, !noalias !829 ; 9 uses
  %.sroa.477.0.copyload = load ptr, ptr %.sroa.477.0..sroa_idx, align 8, !noalias !829 ; 9 uses
  %.sroa.578.0.copyload = load i64, ptr %.sroa.578.0..sroa_idx, align 8, !noalias !829 ; 8 uses
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !829 ; 7 uses
  %i.jz = icmp ult i64 %.sroa.578.0.copyload, %.sroa.7.0.copyload
  br i1 %i.jz, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.lr.ph, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internalhECs2mu2Cb9JdUH_5ravif.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.lr.ph: ; preds = %bb.aw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.075.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.477.0.copyload) ]
  %i.ka = sub nuw i64 %.sroa.7.0.copyload, %.sroa.578.0.copyload ; 3 uses
  %min.iters.check = icmp ult i64 %i.ka, 8
  br i1 %min.iters.check, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.lr.ph
  %i.kb = shl i64 %.sroa.578.0.copyload, 2
  %scevgep = getelementptr i8, ptr %.sroa.075.0.copyload, i64 %i.kb
  %i.kc = shl i64 %.sroa.7.0.copyload, 2
  %scevgep528 = getelementptr i8, ptr %.sroa.075.0.copyload, i64 %i.kc
  %scevgep529 = getelementptr i8, ptr %.sroa.477.0.copyload, i64 %.sroa.578.0.copyload
  %scevgep530 = getelementptr i8, ptr %.sroa.477.0.copyload, i64 %.sroa.7.0.copyload
  %bound0 = icmp ult ptr %scevgep, %scevgep530
  %bound1 = icmp ult ptr %scevgep529, %scevgep528
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ka, -8                      ; 3 uses
  %i.kd = add i64 %.sroa.578.0.copyload, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ke = add nuw i64 %.sroa.578.0.copyload, %index ; 2 uses
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.075.0.copyload, i64 %i.ke ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.477.0.copyload, i64 %i.ke ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 4
  %wide.load = load <4 x i8>, ptr %i.kg, align 1, !alias.scope !830
  %wide.load531 = load <4 x i8>, ptr %i.kh, align 1, !alias.scope !830
  %i.ki = zext <4 x i8> %wide.load to <4 x i32>
  %i.kj = zext <4 x i8> %wide.load531 to <4 x i32>
  %i.kk = shl nuw nsw <4 x i32> %i.ki, splat (i32 4)
  %i.kl = shl nuw nsw <4 x i32> %i.kj, splat (i32 4)
  %i.km = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  store <4 x i32> %i.kk, ptr %i.kf, align 4, !alias.scope !831, !noalias !830
  store <4 x i32> %i.kl, ptr %i.km, align 4, !alias.scope !831, !noalias !830
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.kn = icmp eq i64 %index.next, %n.vec
  br i1 %i.kn, label %middle.block, label %vector.body, !llvm.loop !777

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ka, %n.vec
  br i1 %cmp.n, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internalhECs2mu2Cb9JdUH_5ravif.exit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.preheader: ; preds = %vector.memcheck, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.lr.ph, %middle.block
  %.sroa.578.0262.ph = phi i64 [ %.sroa.578.0.copyload, %vector.memcheck ], [ %.sroa.578.0.copyload, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.lr.ph ], [ %i.kd, %middle.block ] ; 4 uses
  %i.ko = sub i64 %.sroa.7.0.copyload, %.sroa.578.0262.ph
  %xtraiter654 = and i64 %i.ko, 3                 ; 2 uses
  %lcmp.mod655.not = icmp eq i64 %xtraiter654, 0
  br i1 %lcmp.mod655.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.prol
  %.sroa.578.0262.prol = phi i64 [ %i.kr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.prol ], [ %.sroa.578.0262.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.preheader ] ; 3 uses
  %prol.iter656 = phi i64 [ %prol.iter656.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.preheader ]
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.075.0.copyload, i64 %.sroa.578.0262.prol
  %i.kq = getelementptr inbounds nuw i8, ptr %.sroa.477.0.copyload, i64 %.sroa.578.0262.prol
  %i.kr = add nuw i64 %.sroa.578.0262.prol, 1     ; 2 uses
  %i.ks = load i8, ptr %i.kq, align 1, !noundef !4
  %i.kt = zext i8 %i.ks to i32
  %i.ku = shl nuw nsw i32 %i.kt, 4
  store i32 %i.ku, ptr %i.kp, align 4
  %prol.iter656.next = add i64 %prol.iter656, 1   ; 2 uses
  %prol.iter656.cmp.not = icmp eq i64 %prol.iter656.next, %xtraiter654
  br i1 %prol.iter656.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.prol, !llvm.loop !778

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.preheader
  %.sroa.578.0262.unr = phi i64 [ %.sroa.578.0262.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.preheader ], [ %i.kr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.prol ]
  %i.kv = sub i64 %.sroa.578.0262.ph, %.sroa.7.0.copyload
  %i.kw = icmp ugt i64 %i.kv, -4
  br i1 %i.kw, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internalhECs2mu2Cb9JdUH_5ravif.exit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55
  %.sroa.578.0262 = phi i64 [ %i.lr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55 ], [ %.sroa.578.0262.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.prol.loopexit ] ; 6 uses
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.075.0.copyload, i64 %.sroa.578.0262
  %i.ky = getelementptr inbounds nuw i8, ptr %.sroa.477.0.copyload, i64 %.sroa.578.0262
  %i.kz = add nuw i64 %.sroa.578.0262, 1          ; 2 uses
  %i.la = load i8, ptr %i.ky, align 1, !noundef !4
  %i.lb = zext i8 %i.la to i32
  %i.lc = shl nuw nsw i32 %i.lb, 4
  store i32 %i.lc, ptr %i.kx, align 4
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %.sroa.075.0.copyload, i64 %i.kz
  %i.le = getelementptr inbounds nuw i8, ptr %.sroa.477.0.copyload, i64 %i.kz
  %i.lf = add nuw i64 %.sroa.578.0262, 2          ; 2 uses
  %i.lg = load i8, ptr %i.le, align 1, !noundef !4
  %i.lh = zext i8 %i.lg to i32
  %i.li = shl nuw nsw i32 %i.lh, 4
  store i32 %i.li, ptr %i.ld, align 4
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.075.0.copyload, i64 %i.lf
  %i.lk = getelementptr inbounds nuw i8, ptr %.sroa.477.0.copyload, i64 %i.lf
  %i.ll = add nuw i64 %.sroa.578.0262, 3          ; 2 uses
  %i.lm = load i8, ptr %i.lk, align 1, !noundef !4
  %i.ln = zext i8 %i.lm to i32
  %i.lo = shl nuw nsw i32 %i.ln, 4
  store i32 %i.lo, ptr %i.lj, align 4
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.075.0.copyload, i64 %i.ll
  %i.lq = getelementptr inbounds nuw i8, ptr %.sroa.477.0.copyload, i64 %i.ll
  %i.lr = add nuw i64 %.sroa.578.0262, 4          ; 2 uses
  %i.ls = load i8, ptr %i.lq, align 1, !noundef !4
  %i.lt = zext i8 %i.ls to i32
  %i.lu = shl nuw nsw i32 %i.lt, 4
  store i32 %i.lu, ptr %i.lp, align 4
  %exitcond351.not.3 = icmp eq i64 %i.lr, %.sroa.7.0.copyload
  br i1 %exitcond351.not.3, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internalhECs2mu2Cb9JdUH_5ravif.exit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55, !llvm.loop !779

_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internalhECs2mu2Cb9JdUH_5ravif.exit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55, %middle.block, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r1_internalhECs2mu2Cb9JdUH_5ravif.exit

bb.ax:                                            ; preds = %.lr.ph265
  %i.lv = add i64 %i.ju, 2                        ; 2 uses
  %i.lw = urem i64 %i.lv, 3                       ; 2 uses
  %i.lx = getelementptr inbounds nuw [1544 x i8], ptr %i.w, i64 %i.lw ; 7 uses
  %i.ly = getelementptr inbounds nuw [1544 x i8], ptr %i.v, i64 %i.lw ; 7 uses
  br i1 %i.ci, label %bb.az, label %bb.ay, !prof !8

_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r1_internalhECs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.be, %bb.ba, %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internalhECs2mu2Cb9JdUH_5ravif.exit
  %i.lz = call { ptr, i64 } @_RNvXsd_NtCsko5zPvjVG7R_7v_frame5planeINtB5_10PlaneSlicehEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5, i64 noundef %i.ju, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) ; 2 uses
  %i.ma = extractvalue { ptr, i64 } %i.lz, 0      ; 2 uses
  %i.mb = icmp ult i64 %i.ju, %i.ae
  br i1 %i.mb, label %bb.bh, label %bb.bg, !prof !19

bb.ay:                                            ; preds = %bb.ax
  br i1 %i.cj, label %bb.bf, label %bb.ba, !prof !8

bb.az:                                            ; preds = %bb.ax
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ch, i64 noundef %i.bg, i64 noundef %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #28
  unreachable

bb.ba:                                            ; preds = %bb.ay
  call void %.sroa.02.0120(ptr noalias nofree noundef nonnull align 4 %i.lx, i64 noundef 386, ptr noalias nofree noundef nonnull align 4 %i.ly, i64 noundef 386, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ck, i64 noundef %i.cl, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.cn, i64 noundef %i.cm, i64 noundef %4, i64 noundef %i.lv, i64 noundef %i.ac, i32 noundef %i.an), !callees !18
  %i.mc = urem i64 %i.ju, 3                       ; 2 uses
  %i.md = getelementptr inbounds nuw [1544 x i8], ptr %i.w, i64 %i.mc ; 6 uses
  %i.me = add i64 %i.ju, 1
  %i.mf = urem i64 %i.me, 3                       ; 2 uses
  %i.mg = getelementptr inbounds nuw [1544 x i8], ptr %i.w, i64 %i.mf ; 5 uses
  %i.mh = getelementptr inbounds nuw [1544 x i8], ptr %i.v, i64 %i.mc ; 6 uses
  %i.mi = getelementptr inbounds nuw [1544 x i8], ptr %i.v, i64 %i.mf ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !832)
  %i.mj = call { ptr, i64 } @_RNvMsc_NtCsko5zPvjVG7R_7v_frame5planeINtB5_10PlaneSlicehE3rowCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5, i64 noundef %i.ju), !noalias !833 ; 2 uses
  %i.mk = extractvalue { ptr, i64 } %i.mj, 0      ; 2 uses
  %i.ml = extractvalue { ptr, i64 } %i.mj, 1      ; 4 uses
  br i1 %.not272, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r1_internalhECs2mu2Cb9JdUH_5ravif.exit, label %.lr.ph261.preheader

.lr.ph261.preheader:                              ; preds = %bb.ba
  %i.mm = call i64 @llvm.umin.i64(i64 %i.ml, i64 %i.cy) ; 2 uses
  %min.iters.check533 = icmp ult i64 %i.mm, 4
  br i1 %min.iters.check533, label %.lr.ph261.preheader581, label %vector.ph534

vector.ph534:                                     ; preds = %.lr.ph261.preheader
  %i.mn = call i64 @llvm.umin.i64(i64 %i.mm, i64 384)
  %i.mo = add nuw nsw i64 %i.mn, 1                ; 2 uses
  %i.mp = and i64 %i.mo, 3                        ; 2 uses
  %i.mq = icmp eq i64 %i.mp, 0
  %i.mr = select i1 %i.mq, i64 4, i64 %i.mp
  %n.vec535 = sub nsw i64 %i.mo, %i.mr            ; 2 uses
  br label %vector.body536

vector.body536:                                   ; preds = %vector.body536, %vector.ph534
  %index537 = phi i64 [ 0, %vector.ph534 ], [ %index.next557, %vector.body536 ] ; 11 uses
  %i.ms = or disjoint i64 %index537, 1            ; 6 uses
  %i.mt = or disjoint i64 %index537, 2            ; 6 uses
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %index537
  %wide.load538 = load <4 x i32>, ptr %i.mu, align 4, !noalias !833
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %index537
  %wide.load539 = load <4 x i32>, ptr %i.mv, align 4, !noalias !833
  %i.mw = add <4 x i32> %wide.load539, %wide.load538
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %i.mt
  %wide.load540 = load <4 x i32>, ptr %i.mx, align 4, !noalias !833
  %i.my = add <4 x i32> %i.mw, %wide.load540
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %i.mt
  %wide.load541 = load <4 x i32>, ptr %i.mz, align 4, !noalias !833
  %i.na = add <4 x i32> %i.my, %wide.load541
  %i.nb = mul <4 x i32> %i.na, splat (i32 3)
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %index537
  %wide.load542 = load <4 x i32>, ptr %i.nc, align 4, !noalias !833
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %index537
  %wide.load543 = load <4 x i32>, ptr %i.nd, align 4, !noalias !833
  %i.ne = add <4 x i32> %wide.load543, %wide.load542
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.mt
  %wide.load544 = load <4 x i32>, ptr %i.nf, align 4, !noalias !833
  %i.ng = add <4 x i32> %i.ne, %wide.load544
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %i.mt
  %wide.load545 = load <4 x i32>, ptr %i.nh, align 4, !noalias !833
  %i.ni = add <4 x i32> %i.ng, %wide.load545
  %i.nj = mul <4 x i32> %i.ni, splat (i32 3)
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %index537
  %wide.load546 = load <4 x i32>, ptr %i.nk, align 4, !noalias !833
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.ms
  %wide.load547 = load <4 x i32>, ptr %i.nl, align 4, !noalias !833
  %i.nm = add <4 x i32> %wide.load547, %wide.load546
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %i.ms
  %wide.load548 = load <4 x i32>, ptr %i.nn, align 4, !noalias !833
  %i.no = add <4 x i32> %i.nm, %wide.load548
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %i.ms
  %wide.load549 = load <4 x i32>, ptr %i.np, align 4, !noalias !833
  %i.nq = add <4 x i32> %i.no, %wide.load549
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %i.mt
  %wide.load550 = load <4 x i32>, ptr %i.nr, align 4, !noalias !833
  %i.ns = add <4 x i32> %i.nq, %wide.load550
  %i.nt = shl <4 x i32> %i.ns, splat (i32 2)
  %i.nu = add <4 x i32> %i.nt, %i.nj
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %index537
  %wide.load551 = load <4 x i32>, ptr %i.nv, align 4, !noalias !833
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %i.ms
  %wide.load552 = load <4 x i32>, ptr %i.nw, align 4, !noalias !833
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %i.ms
  %wide.load553 = load <4 x i32>, ptr %i.nx, align 4, !noalias !833
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %i.ms
  %wide.load554 = load <4 x i32>, ptr %i.ny, align 4, !noalias !833
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %i.mt
  %wide.load555 = load <4 x i32>, ptr %i.nz, align 4, !noalias !833
  %i.oa = getelementptr inbounds nuw i8, ptr %i.mk, i64 %index537
  %wide.load556 = load <4 x i8>, ptr %i.oa, align 1, !noalias !833
  %i.ob = zext <4 x i8> %wide.load556 to <4 x i32>
  %i.oc = mul <4 x i32> %i.nu, %i.ob
  %i.od = add <4 x i32> %wide.load552, %wide.load551
  %i.oe = add <4 x i32> %i.od, %wide.load553
  %i.of = add <4 x i32> %i.oe, %wide.load554
  %i.og = add <4 x i32> %i.of, %wide.load555
  %i.oh = shl <4 x i32> %i.og, splat (i32 2)
  %i.oi = add <4 x i32> %i.nb, splat (i32 256)
  %i.oj = add <4 x i32> %i.oi, %i.oh
  %i.ok = add <4 x i32> %i.oj, %i.oc
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index537
  %i.om = lshr <4 x i32> %i.ok, splat (i32 9)
  store <4 x i32> %i.om, ptr %i.ol, align 4, !alias.scope !832
  %index.next557 = add nuw i64 %index537, 4       ; 2 uses
  %i.on = icmp eq i64 %index.next557, %n.vec535
  br i1 %i.on, label %.lr.ph261.preheader581, label %vector.body536, !llvm.loop !784

.lr.ph261.preheader581:                           ; preds = %vector.body536, %.lr.ph261.preheader
  %.sroa.0.0.i260.ph = phi i64 [ 0, %.lr.ph261.preheader ], [ %n.vec535, %vector.body536 ]
  br label %.lr.ph261

.lr.ph261:                                        ; preds = %.lr.ph261.preheader581, %bb.be
  %.sroa.0.0.i260 = phi i64 [ %i.oo, %bb.be ], [ %.sroa.0.0.i260.ph, %.lr.ph261.preheader581 ] ; 12 uses
  %i.oo = add nuw nsw i64 %.sroa.0.0.i260, 1      ; 6 uses
  %i.op = add nuw nsw i64 %.sroa.0.0.i260, 2      ; 7 uses
  %exitcond348.not = icmp eq i64 %.sroa.0.0.i260, 384
  br i1 %exitcond348.not, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.lr.ph261
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.op, i64 noundef 386, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #28, !noalias !833
  unreachable

bb.bc:                                            ; preds = %.lr.ph261
  %exitcond349.not = icmp eq i64 %.sroa.0.0.i260, %i.ml
  br i1 %exitcond349.not, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ml, i64 noundef %i.ml, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #28, !noalias !833
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %.sroa.0.0.i260
  %i.or = load i32, ptr %i.oq, align 4, !noalias !833, !noundef !4
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %.sroa.0.0.i260
  %i.ot = load i32, ptr %i.os, align 4, !noalias !833, !noundef !4
  %i.ou = add i32 %i.ot, %i.or
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %i.op
  %i.ow = load i32, ptr %i.ov, align 4, !noalias !833, !noundef !4
  %i.ox = add i32 %i.ou, %i.ow
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %i.op
  %i.oz = load i32, ptr %i.oy, align 4, !noalias !833, !noundef !4
  %i.pa = add i32 %i.ox, %i.oz
  %i.pb = mul i32 %i.pa, 3
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %.sroa.0.0.i260
  %i.pd = load i32, ptr %i.pc, align 4, !noalias !833, !noundef !4
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %.sroa.0.0.i260
  %i.pf = load i32, ptr %i.pe, align 4, !noalias !833, !noundef !4
  %i.pg = add i32 %i.pf, %i.pd
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.op
  %i.pi = load i32, ptr %i.ph, align 4, !noalias !833, !noundef !4
  %i.pj = add i32 %i.pg, %i.pi
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %i.op
  %i.pl = load i32, ptr %i.pk, align 4, !noalias !833, !noundef !4
  %i.pm = add i32 %i.pj, %i.pl
  %i.pn = mul i32 %i.pm, 3
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %.sroa.0.0.i260
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.oo
  %i.pq = load i32, ptr %i.pp, align 4, !noalias !833, !noundef !4
  %7 = load <2 x i32>, ptr %i.po, align 4, !noalias !833
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %i.oo
  %i.ps = load i32, ptr %i.pr, align 4, !noalias !833, !noundef !4
  %8 = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %i.op
  %9 = load i32, ptr %8, align 4, !noalias !833, !noundef !4
  %10 = insertelement <4 x i32> poison, i32 %9, i64 2
  %11 = insertelement <4 x i32> %10, i32 %i.ps, i64 3
  %12 = shufflevector <2 x i32> %7, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %13 = shufflevector <4 x i32> %12, <4 x i32> %11, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %14 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %13)
  %op.rdx580 = add i32 %14, %i.pq
  %i.pt = shl i32 %op.rdx580, 2
  %i.pu = add i32 %i.pt, %i.pn
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %.sroa.0.0.i260
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %i.oo
  %i.px = load i32, ptr %i.pw, align 4, !noalias !833, !noundef !4
  %15 = load <2 x i32>, ptr %i.pv, align 4, !noalias !833
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %i.oo
  %i.pz = load i32, ptr %i.py, align 4, !noalias !833, !noundef !4
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %i.op
  %i.qb = load i32, ptr %i.qa, align 4, !noalias !833, !noundef !4
  %i.qc = getelementptr inbounds nuw i8, ptr %i.mk, i64 %.sroa.0.0.i260
  %i.qd = load i8, ptr %i.qc, align 1, !noalias !833, !noundef !4
  %i.qe = zext i8 %i.qd to i32
  %i.qf = mul i32 %i.pu, %i.qe
  %16 = insertelement <4 x i32> poison, i32 %i.qb, i64 2
  %17 = insertelement <4 x i32> %16, i32 %i.pz, i64 3
  %18 = shufflevector <2 x i32> %15, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %19 = shufflevector <4 x i32> %18, <4 x i32> %17, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %20 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %19)
  %op.rdx = add i32 %20, %i.px
  %i.qg = shl i32 %op.rdx, 2
  %i.qh = add i32 %i.pb, 256
  %i.qi = add i32 %i.qh, %i.qg
  %i.qj = add i32 %i.qi, %i.qf
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.sroa.0.0.i260
  %i.ql = lshr i32 %i.qj, 9
  store i32 %i.ql, ptr %i.qk, align 4, !alias.scope !832
  %exitcond350.not = icmp eq i64 %i.oo, %i.ac
  br i1 %exitcond350.not, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r1_internalhECs2mu2Cb9JdUH_5ravif.exit, label %.lr.ph261, !llvm.loop !785

bb.bf:                                            ; preds = %bb.ay
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ch, i64 noundef %i.bk, i64 noundef %i.bk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #28
  unreachable

bb.bg:                                            ; preds = %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r1_internalhECs2mu2Cb9JdUH_5ravif.exit
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #28
  unreachable

bb.bh:                                            ; preds = %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r1_internalhECs2mu2Cb9JdUH_5ravif.exit
  %i.qm = extractvalue { ptr, i64 } %i.lz, 1      ; 2 uses
  %i.qn = load i64, ptr %i.cw, align 8, !noundef !4
  %i.qo = mul i64 %i.qn, %i.ju
  %i.qp = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.qo ; 2 uses
  %i.qq = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %.sroa.014.0264 ; 2 uses
  %i.qr = load ptr, ptr %i.qq, align 8, !nonnull !4, !align !21, !noundef !4 ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qq, i64 8
  %i.qt = load i64, ptr %i.qs, align 8, !noundef !4 ; 2 uses
  %i.qu = load i64, ptr %i.aq, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %.not.i48 = icmp ugt i64 %i.ac, %i.qm
  br i1 %.not.i48, label %bb.bi, label %bb.bj, !prof !11

bb.bi:                                            ; preds = %bb.bh
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ac, i64 noundef range(i64 0, -9223372036854775808) %i.qm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #28, !noalias !834
  unreachable

bb.bj:                                            ; preds = %bb.bh
  %i.qv = getelementptr inbounds nuw i8, ptr %i.ma, i64 %i.ac
  %.not6.i49 = icmp ugt i64 %i.ac, %i.qt
  br i1 %.not6.i49, label %bb.bk, label %bb.bl, !prof !8

bb.bk:                                            ; preds = %bb.bj
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ac, i64 noundef range(i64 0, 2305843009213693952) %i.qt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #28, !noalias !834
  unreachable

bb.bl:                                            ; preds = %bb.bj
  br i1 %i.bm, label %bb.bn, label %bb.bm, !prof !19

bb.bm:                                            ; preds = %bb.bl
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ac, i64 noundef 384, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #28, !noalias !834
  unreachable

bb.bn:                                            ; preds = %bb.bl
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.qr, i64 %i.ac
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qp, i64 %i.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !835
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull %i.qp, ptr noundef nonnull %i.qx, ptr noundef nonnull readonly %i.ma, ptr noundef nonnull readonly %i.qv), !noalias !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !835
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEBW_EINtB5_7ZipImplBW_BW_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly align 4 %i.qr, ptr noundef nonnull readonly %i.qw, ptr noundef nonnull readonly align 4 %i.u, ptr noundef nonnull readonly %i.co)
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuthEINtB13_4IterhEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !835
  %.sroa.0101.0.copyload = load ptr, ptr %i.m, align 8, !noalias !834 ; 2 uses
  %.sroa.4103.0.copyload = load ptr, ptr %.sroa.4103.0..sroa_idx, align 8, !noalias !834 ; 2 uses
  %.sroa.5105.0.copyload = load i64, ptr %.sroa.5105.0..sroa_idx, align 8, !noalias !834
  %.sroa.6107.0.copyload = load ptr, ptr %.sroa.6107.0..sroa_idx, align 8, !noalias !834 ; 2 uses
  %.sroa.7109.0.copyload = load ptr, ptr %.sroa.7109.0..sroa_idx, align 8, !noalias !834 ; 2 uses
  %.sroa.8111.0.copyload = load i64, ptr %.sroa.8111.0..sroa_idx, align 8, !noalias !834
  %.sroa.9113.0.copyload = load i64, ptr %.sroa.9113.0..sroa_idx, align 8, !noalias !834 ; 2 uses
  %.sroa.11114.0.copyload = load i64, ptr %.sroa.11114.0..sroa_idx, align 8, !noalias !834 ; 2 uses
  %i.qy = icmp ult i64 %.sroa.9113.0.copyload, %.sroa.11114.0.copyload
  br i1 %i.qy, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuthEINtB13_4IterhEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph, label %_RINvNvNtCsdEEMmLUVy6d_5rav1e3lrf21sgrproj_stripe_filter12apply_filterhECs2mu2Cb9JdUH_5ravif.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuthEINtB13_4IterhEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph: ; preds = %bb.bn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0101.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4103.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6107.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7109.0.copyload) ]
  %i.qz = trunc i64 %i.qu to i32
  %i.ra = and i32 %i.qz, 31
  %notmask.i = shl nsw i32 -1, %i.ra
  %i.rb = xor i32 %notmask.i, -1
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuthEINtB13_4IterhEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E4nextCs2mu2Cb9JdUH_5ravif.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuthEINtB13_4IterhEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E4nextCs2mu2Cb9JdUH_5ravif.exit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuthEINtB13_4IterhEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuthEINtB13_4IterhEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E4nextCs2mu2Cb9JdUH_5ravif.exit
  %.sroa.9113.0263 = phi i64 [ %.sroa.9113.0.copyload, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuthEINtB13_4IterhEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph ], [ %i.ri, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuthEINtB13_4IterhEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E4nextCs2mu2Cb9JdUH_5ravif.exit ] ; 3 uses
  %i.rc = add i64 %.sroa.9113.0263, %.sroa.5105.0.copyload ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %.sroa.0101.0.copyload, i64 %i.rc
  %i.re = add i64 %.sroa.9113.0263, %.sroa.8111.0.copyload ; 2 uses
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7109.0.copyload, i64 %i.re
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6107.0.copyload, i64 %i.re
  %i.rh = getelementptr inbounds nuw i8, ptr %.sroa.4103.0.copyload, i64 %i.rc
  %i.ri = add i64 %.sroa.9113.0263, 1             ; 2 uses
  %i.rj = load i8, ptr %i.rh, align 1, !noundef !4
  %i.rk = load i32, ptr %i.rg, align 4, !noundef !4
  %i.rl = load i32, ptr %i.rf, align 4, !noundef !4
  %i.rm = zext i8 %i.rj to i32
  %i.rn = mul i32 %i.rk, %i.cp
  %i.ro = mul nsw i32 %i.cx, %i.rm
  %i.rp = mul i32 %i.rl, %i.ct
  %i.rq = add i32 %i.rn, 1024
  %i.rr = add i32 %i.rq, %i.ro
  %i.rs = add i32 %i.rr, %i.rp
  %i.rt = ashr i32 %i.rs, 11
  %i.ru = call noundef i32 @_RINvNtCsko5zPvjVG7R_7v_frame4math5clamplECs2mu2Cb9JdUH_5ravif(i32 noundef %i.rt, i32 noundef 0, i32 noundef %i.rb)
  %i.rv = trunc i32 %i.ru to i8
  store i8 %i.rv, ptr %i.rd, align 1
  %exitcond352.not = icmp eq i64 %i.ri, %.sroa.11114.0.copyload
  br i1 %exitcond352.not, label %_RINvNvNtCsdEEMmLUVy6d_5rav1e3lrf21sgrproj_stripe_filter12apply_filterhECs2mu2Cb9JdUH_5ravif.exit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuthEINtB13_4IterhEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E4nextCs2mu2Cb9JdUH_5ravif.exit

_RINvNvNtCsdEEMmLUVy6d_5rav1e3lrf21sgrproj_stripe_filter12apply_filterhECs2mu2Cb9JdUH_5ravif.exit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuthEINtB13_4IterhEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E4nextCs2mu2Cb9JdUH_5ravif.exit, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %exitcond353.not = icmp eq i64 %i.jt, %umax
  br i1 %exitcond353.not, label %._crit_edge, label %.lr.ph265
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsdEEMmLUVy6d_5rav1e3lrf21sgrproj_stripe_filterttECs2mu2Cb9JdUH_5ravif(i8 noundef %0, i16 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(816) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %3, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [144 x i8], align 8               ; 4 uses
  %i.d = alloca [112 x i8], align 8               ; 4 uses
  %i.e = alloca [64 x i8], align 8                ; 4 uses
  %i.f = alloca [64 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [112 x i8], align 8               ; 11 uses
  %i.n = alloca [272 x i8], align 8               ; 19 uses
  %i.o = alloca [272 x i8], align 8               ; 4 uses
  %i.p = alloca [64 x i8], align 8                ; 4 uses
  %i.q = alloca [64 x i8], align 8                ; 4 uses
  %i.r = alloca [48 x i8], align 8                ; 7 uses
  %i.s = alloca [48 x i8], align 8                ; 7 uses
  %i.t = alloca [32 x i8], align 8                ; 7 uses
  %i.u = alloca [1536 x i8], align 4              ; 8 uses
  %i.v = alloca [4632 x i8], align 4              ; 9 uses
  %i.w = alloca [4632 x i8], align 4              ; 8 uses
  %i.x = alloca [1536 x i8], align 4              ; 6 uses
  %i.y = alloca [1536 x i8], align 4              ; 8 uses
  %i.z = alloca [3088 x i8], align 4              ; 6 uses
  %i.aa = alloca [3088 x i8], align 4             ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !4 ; 36 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 3088
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1544) %i.af, i8 0, i64 1544, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(3088) %i.aa, i8 0, i64 3088, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(3088) %i.z, i8 0, i64 3088, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1536) %i.y, i8 0, i64 1536, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1536) %i.x, i8 0, i64 1536, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 1544
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4632) %i.w, i8 0, i64 4632, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 1544
  %.sroa.01.0.extract.trunc = zext i16 %1 to i32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(3088) %i.v, i8 0, i64 3088, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1536) %i.u, i8 0, i64 1536, i1 false)
  %i.ai = zext i8 %0 to i64                       ; 2 uses
  %i.aj = icmp ult i8 %0, 16
  br i1 %i.aj, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr @3, i64 %i.ai ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !noundef !4 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.an = load i32, ptr %i.am, align 4, !noundef !4 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 688
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !4, !noundef !4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 496 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !4
  switch i64 %i.ar, label %bb.d [
    i64 8, label %.thread
    i64 10, label %bb.f
    i64 12, label %bb.e
  ], !prof !16

.thread:                                          ; preds = %bb.b
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ai, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #28
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 15, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #28
  unreachable

bb.e:                                             ; preds = %bb.b
end_hunk_2
begin_hunk_3_@_RINvNtCsdEEMmLUVy6d_5rav1e3lrf21sgrproj_stripe_filterttECs2mu2Cb9JdUH_5ravif:bb.a
  %i.jq = add i32 %i.jp, %i.je
  %i.jr = lshr i32 %i.jq, 8
  store i32 %i.jr, ptr %i.gt, align 4, !noalias !955
  %i.js = load i64, ptr %i.bp, align 8, !alias.scope !962, !noalias !955, !noundef !4 ; 2 uses
  %i.jt = load i64, ptr %i.bq, align 8, !alias.scope !962, !noalias !955, !noundef !4
  %i.ju = icmp ult i64 %i.js, %i.jt
  br i1 %i.ju, label %.lr.ph, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r2_internaltECs2mu2Cb9JdUH_5ravif.exit

bb.ar:                                            ; preds = %bb.ao
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef %i.hp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #28, !noalias !955
  unreachable

_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r2_internaltECs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.aq, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !943
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !943
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !943
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %.split

._crit_edge:                                      ; preds = %_RINvNvNtCsdEEMmLUVy6d_5rav1e3lrf21sgrproj_stripe_filter12apply_filtertECs2mu2Cb9JdUH_5ravif.exit, %.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %.not43 = icmp eq i64 %i.dq, 0
  %indvars.iv.next = add i64 %indvars.iv, -2
  br i1 %.not43, label %._crit_edge271, label %bb.n

.lr.ph265:                                        ; preds = %.split, %_RINvNvNtCsdEEMmLUVy6d_5rav1e3lrf21sgrproj_stripe_filter12apply_filtertECs2mu2Cb9JdUH_5ravif.exit
  %.sroa.014.0264 = phi i64 [ %i.jv, %_RINvNvNtCsdEEMmLUVy6d_5rav1e3lrf21sgrproj_stripe_filter12apply_filtertECs2mu2Cb9JdUH_5ravif.exit ], [ 0, %.split ] ; 3 uses
  %i.jv = add nuw nsw i64 %.sroa.014.0264, 1      ; 2 uses
  %i.jw = add nuw nsw i64 %.sroa.014.0264, %.sroa.011.0268 ; 8 uses
  br i1 %.not42, label %bb.as, label %bb.ax

bb.as:                                            ; preds = %.lr.ph265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.jx = call { ptr, i64 } @_RNvMsc_NtCsko5zPvjVG7R_7v_frame5planeINtB5_10PlaneSlicetE3rowCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5, i64 noundef %i.jw), !noalias !971 ; 2 uses
  %i.jy = extractvalue { ptr, i64 } %i.jx, 0      ; 3 uses
  br i1 %i.bm, label %bb.au, label %bb.at, !prof !19

bb.at:                                            ; preds = %bb.as
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ac, i64 noundef 384, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #28, !noalias !971
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.jz = extractvalue { ptr, i64 } %i.jx, 1      ; 2 uses
  %.not.i = icmp ugt i64 %i.ac, %i.jz
  br i1 %.not.i, label %bb.av, label %bb.aw, !prof !8

bb.av:                                            ; preds = %bb.au
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ac, i64 noundef %i.jz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #28, !noalias !971
  unreachable

bb.aw:                                            ; preds = %bb.au
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jy) ]
  %i.ka = getelementptr inbounds nuw [2 x i8], ptr %i.jy, i64 %i.ac
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.s, ptr noundef nonnull align 4 %i.u, ptr noundef nonnull %i.co, ptr noundef nonnull %i.jy, ptr noundef nonnull %i.ka)
  %.sroa.075.0.copyload = load ptr, ptr %i.s, align 8, !noalias !972 ; 9 uses
  %.sroa.477.0.copyload = load ptr, ptr %.sroa.477.0..sroa_idx, align 8, !noalias !972 ; 9 uses
  %.sroa.578.0.copyload = load i64, ptr %.sroa.578.0..sroa_idx, align 8, !noalias !972 ; 8 uses
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !972 ; 7 uses
  %i.kb = icmp ult i64 %.sroa.578.0.copyload, %.sroa.7.0.copyload
  br i1 %i.kb, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.lr.ph, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internaltECs2mu2Cb9JdUH_5ravif.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.lr.ph: ; preds = %bb.aw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.075.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.477.0.copyload) ]
  %i.kc = sub nuw i64 %.sroa.7.0.copyload, %.sroa.578.0.copyload ; 3 uses
  %min.iters.check = icmp ult i64 %i.kc, 8
  br i1 %min.iters.check, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.lr.ph
  %i.kd = shl i64 %.sroa.578.0.copyload, 2
  %scevgep = getelementptr i8, ptr %.sroa.075.0.copyload, i64 %i.kd
  %i.ke = shl i64 %.sroa.7.0.copyload, 2
  %scevgep528 = getelementptr i8, ptr %.sroa.075.0.copyload, i64 %i.ke
  %i.kf = shl i64 %.sroa.578.0.copyload, 1
  %scevgep529 = getelementptr i8, ptr %.sroa.477.0.copyload, i64 %i.kf
  %i.kg = shl i64 %.sroa.7.0.copyload, 1
  %scevgep530 = getelementptr i8, ptr %.sroa.477.0.copyload, i64 %i.kg
  %bound0 = icmp ult ptr %scevgep, %scevgep530
  %bound1 = icmp ult ptr %scevgep529, %scevgep528
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.kc, -8                      ; 3 uses
  %i.kh = add i64 %.sroa.578.0.copyload, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ki = add nuw i64 %.sroa.578.0.copyload, %index ; 2 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.075.0.copyload, i64 %i.ki ; 2 uses
  %i.kk = getelementptr inbounds nuw [2 x i8], ptr %.sroa.477.0.copyload, i64 %i.ki ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %wide.load = load <4 x i16>, ptr %i.kk, align 2, !alias.scope !973
  %wide.load531 = load <4 x i16>, ptr %i.kl, align 2, !alias.scope !973
  %i.km = zext <4 x i16> %wide.load to <4 x i32>
  %i.kn = zext <4 x i16> %wide.load531 to <4 x i32>
  %i.ko = shl nuw nsw <4 x i32> %i.km, splat (i32 4)
  %i.kp = shl nuw nsw <4 x i32> %i.kn, splat (i32 4)
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  store <4 x i32> %i.ko, ptr %i.kj, align 4, !alias.scope !974, !noalias !973
  store <4 x i32> %i.kp, ptr %i.kq, align 4, !alias.scope !974, !noalias !973
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.kr = icmp eq i64 %index.next, %n.vec
  br i1 %i.kr, label %middle.block, label %vector.body, !llvm.loop !920

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.kc, %n.vec
  br i1 %cmp.n, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internaltECs2mu2Cb9JdUH_5ravif.exit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.preheader: ; preds = %vector.memcheck, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.lr.ph, %middle.block
  %.sroa.578.0262.ph = phi i64 [ %.sroa.578.0.copyload, %vector.memcheck ], [ %.sroa.578.0.copyload, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.lr.ph ], [ %i.kh, %middle.block ] ; 4 uses
  %i.ks = sub i64 %.sroa.7.0.copyload, %.sroa.578.0262.ph
  %xtraiter654 = and i64 %i.ks, 3                 ; 2 uses
  %lcmp.mod655.not = icmp eq i64 %xtraiter654, 0
  br i1 %lcmp.mod655.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.prol
  %.sroa.578.0262.prol = phi i64 [ %i.kv, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.prol ], [ %.sroa.578.0262.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.preheader ] ; 3 uses
  %prol.iter656 = phi i64 [ %prol.iter656.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.preheader ]
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.075.0.copyload, i64 %.sroa.578.0262.prol
  %i.ku = getelementptr inbounds nuw [2 x i8], ptr %.sroa.477.0.copyload, i64 %.sroa.578.0262.prol
  %i.kv = add nuw i64 %.sroa.578.0262.prol, 1     ; 2 uses
  %i.kw = load i16, ptr %i.ku, align 2, !noundef !4
  %i.kx = zext i16 %i.kw to i32
  %i.ky = shl nuw nsw i32 %i.kx, 4
  store i32 %i.ky, ptr %i.kt, align 4
  %prol.iter656.next = add i64 %prol.iter656, 1   ; 2 uses
  %prol.iter656.cmp.not = icmp eq i64 %prol.iter656.next, %xtraiter654
  br i1 %prol.iter656.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.prol, !llvm.loop !921

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.preheader
  %.sroa.578.0262.unr = phi i64 [ %.sroa.578.0262.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.preheader ], [ %i.kv, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.prol ]
  %i.kz = sub i64 %.sroa.578.0262.ph, %.sroa.7.0.copyload
  %i.la = icmp ugt i64 %i.kz, -4
  br i1 %i.la, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internaltECs2mu2Cb9JdUH_5ravif.exit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55
  %.sroa.578.0262 = phi i64 [ %i.lv, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55 ], [ %.sroa.578.0262.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.prol.loopexit ] ; 6 uses
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.075.0.copyload, i64 %.sroa.578.0262
  %i.lc = getelementptr inbounds nuw [2 x i8], ptr %.sroa.477.0.copyload, i64 %.sroa.578.0262
  %i.ld = add nuw i64 %.sroa.578.0262, 1          ; 2 uses
  %i.le = load i16, ptr %i.lc, align 2, !noundef !4
  %i.lf = zext i16 %i.le to i32
  %i.lg = shl nuw nsw i32 %i.lf, 4
  store i32 %i.lg, ptr %i.lb, align 4
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.075.0.copyload, i64 %i.ld
  %i.li = getelementptr inbounds nuw [2 x i8], ptr %.sroa.477.0.copyload, i64 %i.ld
  %i.lj = add nuw i64 %.sroa.578.0262, 2          ; 2 uses
  %i.lk = load i16, ptr %i.li, align 2, !noundef !4
  %i.ll = zext i16 %i.lk to i32
  %i.lm = shl nuw nsw i32 %i.ll, 4
  store i32 %i.lm, ptr %i.lh, align 4
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %.sroa.075.0.copyload, i64 %i.lj
  %i.lo = getelementptr inbounds nuw [2 x i8], ptr %.sroa.477.0.copyload, i64 %i.lj
  %i.lp = add nuw i64 %.sroa.578.0262, 3          ; 2 uses
  %i.lq = load i16, ptr %i.lo, align 2, !noundef !4
  %i.lr = zext i16 %i.lq to i32
  %i.ls = shl nuw nsw i32 %i.lr, 4
  store i32 %i.ls, ptr %i.ln, align 4
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.075.0.copyload, i64 %i.lp
  %i.lu = getelementptr inbounds nuw [2 x i8], ptr %.sroa.477.0.copyload, i64 %i.lp
  %i.lv = add nuw i64 %.sroa.578.0262, 4          ; 2 uses
  %i.lw = load i16, ptr %i.lu, align 2, !noundef !4
  %i.lx = zext i16 %i.lw to i32
  %i.ly = shl nuw nsw i32 %i.lx, 4
  store i32 %i.ly, ptr %i.lt, align 4
  %exitcond351.not.3 = icmp eq i64 %i.lv, %.sroa.7.0.copyload
  br i1 %exitcond351.not.3, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internaltECs2mu2Cb9JdUH_5ravif.exit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55, !llvm.loop !922

_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internaltECs2mu2Cb9JdUH_5ravif.exit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55, %middle.block, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r1_internaltECs2mu2Cb9JdUH_5ravif.exit

bb.ax:                                            ; preds = %.lr.ph265
  %i.lz = add i64 %i.jw, 2                        ; 2 uses
  %i.ma = urem i64 %i.lz, 3                       ; 2 uses
  %i.mb = getelementptr inbounds nuw [1544 x i8], ptr %i.w, i64 %i.ma ; 7 uses
  %i.mc = getelementptr inbounds nuw [1544 x i8], ptr %i.v, i64 %i.ma ; 7 uses
  br i1 %i.ci, label %bb.az, label %bb.ay, !prof !8

_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r1_internaltECs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.be, %bb.ba, %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internaltECs2mu2Cb9JdUH_5ravif.exit
  %i.md = call { ptr, i64 } @_RNvXsd_NtCsko5zPvjVG7R_7v_frame5planeINtB5_10PlaneSlicetEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5, i64 noundef %i.jw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) ; 2 uses
  %i.me = extractvalue { ptr, i64 } %i.md, 0      ; 2 uses
  %i.mf = icmp ult i64 %i.jw, %i.ae
  br i1 %i.mf, label %bb.bh, label %bb.bg, !prof !19

bb.ay:                                            ; preds = %bb.ax
  br i1 %i.cj, label %bb.bf, label %bb.ba, !prof !8

bb.az:                                            ; preds = %bb.ax
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ch, i64 noundef %i.bg, i64 noundef %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #28
  unreachable

bb.ba:                                            ; preds = %bb.ay
  call void %.sroa.02.0120(ptr noalias nofree noundef nonnull align 4 %i.mb, i64 noundef 386, ptr noalias nofree noundef nonnull align 4 %i.mc, i64 noundef 386, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ck, i64 noundef %i.cl, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.cn, i64 noundef %i.cm, i64 noundef %4, i64 noundef %i.lz, i64 noundef %i.ac, i32 noundef %i.an), !callees !18
  %i.mg = urem i64 %i.jw, 3                       ; 2 uses
  %i.mh = getelementptr inbounds nuw [1544 x i8], ptr %i.w, i64 %i.mg ; 6 uses
  %i.mi = add i64 %i.jw, 1
  %i.mj = urem i64 %i.mi, 3                       ; 2 uses
  %i.mk = getelementptr inbounds nuw [1544 x i8], ptr %i.w, i64 %i.mj ; 5 uses
  %i.ml = getelementptr inbounds nuw [1544 x i8], ptr %i.v, i64 %i.mg ; 6 uses
  %i.mm = getelementptr inbounds nuw [1544 x i8], ptr %i.v, i64 %i.mj ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !975)
  %i.mn = call { ptr, i64 } @_RNvMsc_NtCsko5zPvjVG7R_7v_frame5planeINtB5_10PlaneSlicetE3rowCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5, i64 noundef %i.jw), !noalias !976 ; 2 uses
  %i.mo = extractvalue { ptr, i64 } %i.mn, 0      ; 2 uses
  %i.mp = extractvalue { ptr, i64 } %i.mn, 1      ; 4 uses
  br i1 %.not272, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r1_internaltECs2mu2Cb9JdUH_5ravif.exit, label %.lr.ph261.preheader

.lr.ph261.preheader:                              ; preds = %bb.ba
  %i.mq = call i64 @llvm.umin.i64(i64 %i.mp, i64 %i.cy) ; 2 uses
  %min.iters.check533 = icmp ult i64 %i.mq, 4
  br i1 %min.iters.check533, label %.lr.ph261.preheader581, label %vector.ph534

vector.ph534:                                     ; preds = %.lr.ph261.preheader
  %i.mr = call i64 @llvm.umin.i64(i64 %i.mq, i64 384)
  %i.ms = add nuw nsw i64 %i.mr, 1                ; 2 uses
  %i.mt = and i64 %i.ms, 3                        ; 2 uses
  %i.mu = icmp eq i64 %i.mt, 0
  %i.mv = select i1 %i.mu, i64 4, i64 %i.mt
  %n.vec535 = sub nsw i64 %i.ms, %i.mv            ; 2 uses
  br label %vector.body536

vector.body536:                                   ; preds = %vector.body536, %vector.ph534
  %index537 = phi i64 [ 0, %vector.ph534 ], [ %index.next557, %vector.body536 ] ; 11 uses
  %i.mw = or disjoint i64 %index537, 1            ; 6 uses
  %i.mx = or disjoint i64 %index537, 2            ; 6 uses
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.ml, i64 %index537
  %wide.load538 = load <4 x i32>, ptr %i.my, align 4, !noalias !976
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %index537
  %wide.load539 = load <4 x i32>, ptr %i.mz, align 4, !noalias !976
  %i.na = add <4 x i32> %wide.load539, %wide.load538
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.ml, i64 %i.mx
  %wide.load540 = load <4 x i32>, ptr %i.nb, align 4, !noalias !976
  %i.nc = add <4 x i32> %i.na, %wide.load540
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %i.mx
  %wide.load541 = load <4 x i32>, ptr %i.nd, align 4, !noalias !976
  %i.ne = add <4 x i32> %i.nc, %wide.load541
  %i.nf = mul <4 x i32> %i.ne, splat (i32 3)
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %index537
  %wide.load542 = load <4 x i32>, ptr %i.ng, align 4, !noalias !976
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.mb, i64 %index537
  %wide.load543 = load <4 x i32>, ptr %i.nh, align 4, !noalias !976
  %i.ni = add <4 x i32> %wide.load543, %wide.load542
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %i.mx
  %wide.load544 = load <4 x i32>, ptr %i.nj, align 4, !noalias !976
  %i.nk = add <4 x i32> %i.ni, %wide.load544
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.mb, i64 %i.mx
  %wide.load545 = load <4 x i32>, ptr %i.nl, align 4, !noalias !976
  %i.nm = add <4 x i32> %i.nk, %wide.load545
  %i.nn = mul <4 x i32> %i.nm, splat (i32 3)
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %index537
  %wide.load546 = load <4 x i32>, ptr %i.no, align 4, !noalias !976
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %i.mw
  %wide.load547 = load <4 x i32>, ptr %i.np, align 4, !noalias !976
  %i.nq = add <4 x i32> %wide.load547, %wide.load546
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %i.mw
  %wide.load548 = load <4 x i32>, ptr %i.nr, align 4, !noalias !976
  %i.ns = add <4 x i32> %i.nq, %wide.load548
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.mb, i64 %i.mw
  %wide.load549 = load <4 x i32>, ptr %i.nt, align 4, !noalias !976
  %i.nu = add <4 x i32> %i.ns, %wide.load549
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %i.mx
  %wide.load550 = load <4 x i32>, ptr %i.nv, align 4, !noalias !976
  %i.nw = add <4 x i32> %i.nu, %wide.load550
  %i.nx = shl <4 x i32> %i.nw, splat (i32 2)
  %i.ny = add <4 x i32> %i.nx, %i.nn
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.mm, i64 %index537
  %wide.load551 = load <4 x i32>, ptr %i.nz, align 4, !noalias !976
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.ml, i64 %i.mw
  %wide.load552 = load <4 x i32>, ptr %i.oa, align 4, !noalias !976
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.mm, i64 %i.mw
  %wide.load553 = load <4 x i32>, ptr %i.ob, align 4, !noalias !976
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %i.mw
  %wide.load554 = load <4 x i32>, ptr %i.oc, align 4, !noalias !976
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.mm, i64 %i.mx
  %wide.load555 = load <4 x i32>, ptr %i.od, align 4, !noalias !976
  %i.oe = getelementptr inbounds nuw [2 x i8], ptr %i.mo, i64 %index537
  %wide.load556 = load <4 x i16>, ptr %i.oe, align 2, !noalias !976
  %i.of = zext <4 x i16> %wide.load556 to <4 x i32>
  %i.og = mul <4 x i32> %i.ny, %i.of
  %i.oh = add <4 x i32> %wide.load552, %wide.load551
  %i.oi = add <4 x i32> %i.oh, %wide.load553
  %i.oj = add <4 x i32> %i.oi, %wide.load554
  %i.ok = add <4 x i32> %i.oj, %wide.load555
  %i.ol = shl <4 x i32> %i.ok, splat (i32 2)
  %i.om = add <4 x i32> %i.nf, splat (i32 256)
  %i.on = add <4 x i32> %i.om, %i.ol
  %i.oo = add <4 x i32> %i.on, %i.og
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index537
  %i.oq = lshr <4 x i32> %i.oo, splat (i32 9)
  store <4 x i32> %i.oq, ptr %i.op, align 4, !alias.scope !975
  %index.next557 = add nuw i64 %index537, 4       ; 2 uses
  %i.or = icmp eq i64 %index.next557, %n.vec535
  br i1 %i.or, label %.lr.ph261.preheader581, label %vector.body536, !llvm.loop !927

.lr.ph261.preheader581:                           ; preds = %vector.body536, %.lr.ph261.preheader
  %.sroa.0.0.i260.ph = phi i64 [ 0, %.lr.ph261.preheader ], [ %n.vec535, %vector.body536 ]
  br label %.lr.ph261

.lr.ph261:                                        ; preds = %.lr.ph261.preheader581, %bb.be
  %.sroa.0.0.i260 = phi i64 [ %i.os, %bb.be ], [ %.sroa.0.0.i260.ph, %.lr.ph261.preheader581 ] ; 12 uses
  %i.os = add nuw nsw i64 %.sroa.0.0.i260, 1      ; 6 uses
  %i.ot = add nuw nsw i64 %.sroa.0.0.i260, 2      ; 7 uses
  %exitcond348.not = icmp eq i64 %.sroa.0.0.i260, 384
  br i1 %exitcond348.not, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.lr.ph261
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ot, i64 noundef 386, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #28, !noalias !976
  unreachable

bb.bc:                                            ; preds = %.lr.ph261
  %exitcond349.not = icmp eq i64 %.sroa.0.0.i260, %i.mp
  br i1 %exitcond349.not, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.mp, i64 noundef %i.mp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #28, !noalias !976
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.ml, i64 %.sroa.0.0.i260
  %i.ov = load i32, ptr %i.ou, align 4, !noalias !976, !noundef !4
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %.sroa.0.0.i260
  %i.ox = load i32, ptr %i.ow, align 4, !noalias !976, !noundef !4
  %i.oy = add i32 %i.ox, %i.ov
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.ml, i64 %i.ot
  %i.pa = load i32, ptr %i.oz, align 4, !noalias !976, !noundef !4
  %i.pb = add i32 %i.oy, %i.pa
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %i.ot
  %i.pd = load i32, ptr %i.pc, align 4, !noalias !976, !noundef !4
  %i.pe = add i32 %i.pb, %i.pd
  %i.pf = mul i32 %i.pe, 3
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %.sroa.0.0.i260
  %i.ph = load i32, ptr %i.pg, align 4, !noalias !976, !noundef !4
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.mb, i64 %.sroa.0.0.i260
  %i.pj = load i32, ptr %i.pi, align 4, !noalias !976, !noundef !4
  %i.pk = add i32 %i.pj, %i.ph
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %i.ot
  %i.pm = load i32, ptr %i.pl, align 4, !noalias !976, !noundef !4
  %i.pn = add i32 %i.pk, %i.pm
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.mb, i64 %i.ot
  %i.pp = load i32, ptr %i.po, align 4, !noalias !976, !noundef !4
  %i.pq = add i32 %i.pn, %i.pp
  %i.pr = mul i32 %i.pq, 3
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %.sroa.0.0.i260
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %i.os
  %i.pu = load i32, ptr %i.pt, align 4, !noalias !976, !noundef !4
  %7 = load <2 x i32>, ptr %i.ps, align 4, !noalias !976
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %i.mb, i64 %i.os
  %i.pw = load i32, ptr %i.pv, align 4, !noalias !976, !noundef !4
  %8 = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %i.ot
  %9 = load i32, ptr %8, align 4, !noalias !976, !noundef !4
  %10 = insertelement <4 x i32> poison, i32 %9, i64 2
  %11 = insertelement <4 x i32> %10, i32 %i.pw, i64 3
  %12 = shufflevector <2 x i32> %7, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %13 = shufflevector <4 x i32> %12, <4 x i32> %11, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %14 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %13)
  %op.rdx580 = add i32 %14, %i.pu
  %i.px = shl i32 %op.rdx580, 2
  %i.py = add i32 %i.px, %i.pr
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.mm, i64 %.sroa.0.0.i260
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %i.ml, i64 %i.os
  %i.qb = load i32, ptr %i.qa, align 4, !noalias !976, !noundef !4
  %15 = load <2 x i32>, ptr %i.pz, align 4, !noalias !976
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %i.os
  %i.qd = load i32, ptr %i.qc, align 4, !noalias !976, !noundef !4
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.mm, i64 %i.ot
  %i.qf = load i32, ptr %i.qe, align 4, !noalias !976, !noundef !4
  %i.qg = getelementptr inbounds nuw [2 x i8], ptr %i.mo, i64 %.sroa.0.0.i260
  %i.qh = load i16, ptr %i.qg, align 2, !noalias !976, !noundef !4
  %i.qi = zext i16 %i.qh to i32
  %i.qj = mul i32 %i.py, %i.qi
  %16 = insertelement <4 x i32> poison, i32 %i.qf, i64 2
  %17 = insertelement <4 x i32> %16, i32 %i.qd, i64 3
  %18 = shufflevector <2 x i32> %15, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %19 = shufflevector <4 x i32> %18, <4 x i32> %17, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %20 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %19)
  %op.rdx = add i32 %20, %i.qb
  %i.qk = shl i32 %op.rdx, 2
  %i.ql = add i32 %i.pf, 256
  %i.qm = add i32 %i.ql, %i.qk
  %i.qn = add i32 %i.qm, %i.qj
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.sroa.0.0.i260
  %i.qp = lshr i32 %i.qn, 9
  store i32 %i.qp, ptr %i.qo, align 4, !alias.scope !975
  %exitcond350.not = icmp eq i64 %i.os, %i.ac
  br i1 %exitcond350.not, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r1_internaltECs2mu2Cb9JdUH_5ravif.exit, label %.lr.ph261, !llvm.loop !928

bb.bf:                                            ; preds = %bb.ay
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ch, i64 noundef %i.bk, i64 noundef %i.bk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #28
  unreachable

bb.bg:                                            ; preds = %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r1_internaltECs2mu2Cb9JdUH_5ravif.exit
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #28
  unreachable

bb.bh:                                            ; preds = %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r1_internaltECs2mu2Cb9JdUH_5ravif.exit
  %i.qq = extractvalue { ptr, i64 } %i.md, 1      ; 2 uses
  %i.qr = load i64, ptr %i.cw, align 8, !noundef !4
  %i.qs = mul i64 %i.qr, %i.jw
  %i.qt = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %i.qs ; 2 uses
  %i.qu = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %.sroa.014.0264 ; 2 uses
  %i.qv = load ptr, ptr %i.qu, align 8, !nonnull !4, !align !21, !noundef !4 ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qu, i64 8
  %i.qx = load i64, ptr %i.qw, align 8, !noundef !4 ; 2 uses
  %i.qy = load i64, ptr %i.aq, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %.not.i48 = icmp ugt i64 %i.ac, %i.qq
  br i1 %.not.i48, label %bb.bi, label %bb.bj, !prof !11

bb.bi:                                            ; preds = %bb.bh
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ac, i64 noundef range(i64 0, 4611686018427387904) %i.qq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #28, !noalias !977
  unreachable

bb.bj:                                            ; preds = %bb.bh
  %i.qz = getelementptr inbounds nuw [2 x i8], ptr %i.me, i64 %i.ac
  %.not6.i49 = icmp ugt i64 %i.ac, %i.qx
  br i1 %.not6.i49, label %bb.bk, label %bb.bl, !prof !8

bb.bk:                                            ; preds = %bb.bj
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ac, i64 noundef range(i64 0, 2305843009213693952) %i.qx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #28, !noalias !977
  unreachable

bb.bl:                                            ; preds = %bb.bj
  br i1 %i.bm, label %bb.bn, label %bb.bm, !prof !19

bb.bm:                                            ; preds = %bb.bl
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ac, i64 noundef 384, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #28, !noalias !977
  unreachable

bb.bn:                                            ; preds = %bb.bl
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.qv, i64 %i.ac
  %i.rb = getelementptr inbounds nuw [2 x i8], ptr %i.qt, i64 %i.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !978
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull align 2 %i.qt, ptr noundef nonnull %i.rb, ptr noundef nonnull readonly align 2 %i.me, ptr noundef nonnull readonly %i.qz), !noalias !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !978
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEBW_EINtB5_7ZipImplBW_BW_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly align 4 %i.qv, ptr noundef nonnull readonly %i.ra, ptr noundef nonnull readonly align 4 %i.u, ptr noundef nonnull readonly %i.co)
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuttEINtB13_4ItertEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !979
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !978
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !978
  %.sroa.0101.0.copyload = load ptr, ptr %i.m, align 8, !noalias !977 ; 2 uses
  %.sroa.4103.0.copyload = load ptr, ptr %.sroa.4103.0..sroa_idx, align 8, !noalias !977 ; 2 uses
  %.sroa.5105.0.copyload = load i64, ptr %.sroa.5105.0..sroa_idx, align 8, !noalias !977
  %.sroa.6107.0.copyload = load ptr, ptr %.sroa.6107.0..sroa_idx, align 8, !noalias !977 ; 2 uses
  %.sroa.7109.0.copyload = load ptr, ptr %.sroa.7109.0..sroa_idx, align 8, !noalias !977 ; 2 uses
  %.sroa.8111.0.copyload = load i64, ptr %.sroa.8111.0..sroa_idx, align 8, !noalias !977
  %.sroa.9113.0.copyload = load i64, ptr %.sroa.9113.0..sroa_idx, align 8, !noalias !977 ; 2 uses
  %.sroa.11114.0.copyload = load i64, ptr %.sroa.11114.0..sroa_idx, align 8, !noalias !977 ; 2 uses
  %i.rc = icmp ult i64 %.sroa.9113.0.copyload, %.sroa.11114.0.copyload
  br i1 %i.rc, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuttEINtB13_4ItertEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph, label %_RINvNvNtCsdEEMmLUVy6d_5rav1e3lrf21sgrproj_stripe_filter12apply_filtertECs2mu2Cb9JdUH_5ravif.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuttEINtB13_4ItertEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph: ; preds = %bb.bn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0101.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4103.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6107.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7109.0.copyload) ]
  %i.rd = trunc i64 %i.qy to i32
  %i.re = and i32 %i.rd, 31
  %notmask.i = shl nsw i32 -1, %i.re
  %i.rf = xor i32 %notmask.i, -1
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuttEINtB13_4ItertEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E4nextCs2mu2Cb9JdUH_5ravif.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuttEINtB13_4ItertEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E4nextCs2mu2Cb9JdUH_5ravif.exit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuttEINtB13_4ItertEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuttEINtB13_4ItertEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E4nextCs2mu2Cb9JdUH_5ravif.exit
  %.sroa.9113.0263 = phi i64 [ %.sroa.9113.0.copyload, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuttEINtB13_4ItertEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph ], [ %i.rm, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuttEINtB13_4ItertEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E4nextCs2mu2Cb9JdUH_5ravif.exit ] ; 3 uses
  %i.rg = add i64 %.sroa.9113.0263, %.sroa.5105.0.copyload ; 2 uses
  %i.rh = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0101.0.copyload, i64 %i.rg
  %i.ri = add i64 %.sroa.9113.0263, %.sroa.8111.0.copyload ; 2 uses
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7109.0.copyload, i64 %i.ri
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6107.0.copyload, i64 %i.ri
  %i.rl = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4103.0.copyload, i64 %i.rg
  %i.rm = add i64 %.sroa.9113.0263, 1             ; 2 uses
  %i.rn = load i16, ptr %i.rl, align 2, !noundef !4
  %i.ro = load i32, ptr %i.rk, align 4, !noundef !4
  %i.rp = load i32, ptr %i.rj, align 4, !noundef !4
  %i.rq = zext i16 %i.rn to i32
  %i.rr = mul i32 %i.ro, %i.cp
  %i.rs = mul nsw i32 %i.cx, %i.rq
  %i.rt = mul i32 %i.rp, %i.ct
  %i.ru = add i32 %i.rr, 1024
  %i.rv = add i32 %i.ru, %i.rs
  %i.rw = add i32 %i.rv, %i.rt
  %i.rx = ashr i32 %i.rw, 11
  %i.ry = call noundef i32 @_RINvNtCsko5zPvjVG7R_7v_frame4math5clamplECs2mu2Cb9JdUH_5ravif(i32 noundef %i.rx, i32 noundef 0, i32 noundef %i.rf)
  %i.rz = trunc i32 %i.ry to i16
  store i16 %i.rz, ptr %i.rh, align 2
  %exitcond352.not = icmp eq i64 %i.rm, %.sroa.11114.0.copyload
  br i1 %exitcond352.not, label %_RINvNvNtCsdEEMmLUVy6d_5rav1e3lrf21sgrproj_stripe_filter12apply_filtertECs2mu2Cb9JdUH_5ravif.exit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuttEINtB13_4ItertEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E4nextCs2mu2Cb9JdUH_5ravif.exit

_RINvNvNtCsdEEMmLUVy6d_5rav1e3lrf21sgrproj_stripe_filter12apply_filtertECs2mu2Cb9JdUH_5ravif.exit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuttEINtB13_4ItertEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E4nextCs2mu2Cb9JdUH_5ravif.exit, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %exitcond353.not = icmp eq i64 %i.jv, %umax
  br i1 %exitcond353.not, label %._crit_edge, label %.lr.ph265
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_5array5GuardINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEEECs2mu2Cb9JdUH_5ravif(ptr nofree readonly captures(none) %.0.val, i64 %.16.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %.16.val, 0
  br i1 %i.a, label %_RNvXso_NtCsj6eKBz9Db1c_4core5arrayINtB5_5GuardINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEENtNtNtB7_3ops4drop4Drop4dropCs2mu2Cb9JdUH_5ravif.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !986)
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEECs2mu2Cb9JdUH_5ravif.exit.i.i, %bb.b
  %.sroa.0.012.i.i = phi i64 [ 0, %bb.b ], [ %i.c, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEECs2mu2Cb9JdUH_5ravif.exit.i.i ] ; 2 uses
  %i.b = getelementptr inbounds nuw [96 x i8], ptr %.0.val, i64 %.sroa.0.012.i.i ; 2 uses
  %i.c = add nuw nsw i64 %.sroa.0.012.i.i, 1      ; 2 uses
  %i.d = getelementptr i8, ptr %i.b, i64 8
  %.val9.i.i = load i64, ptr %i.d, align 8, !alias.scope !986, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %.val9.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEECs2mu2Cb9JdUH_5ravif.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val8.i.i = load ptr, ptr %i.b, align 8, !alias.scope !986, !nonnull !4, !noundef !4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i, i64 noundef %.val9.i.i, i64 noundef 64) #27, !noalias !987
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEECs2mu2Cb9JdUH_5ravif.exit.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEECs2mu2Cb9JdUH_5ravif.exit.i.i: ; preds = %bb.d, %bb.c
  %i.e = icmp eq i64 %i.c, %.16.val
  br i1 %i.e, label %_RNvXso_NtCsj6eKBz9Db1c_4core5arrayINtB5_5GuardINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEENtNtNtB7_3ops4drop4Drop4dropCs2mu2Cb9JdUH_5ravif.exit, label %bb.c

_RNvXso_NtCsj6eKBz9Db1c_4core5arrayINtB5_5GuardINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEENtNtNtB7_3ops4drop4Drop4dropCs2mu2Cb9JdUH_5ravif.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEECs2mu2Cb9JdUH_5ravif.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_5array5GuardINtNtCsko5zPvjVG7R_7v_frame5plane5PlanetEEECs2mu2Cb9JdUH_5ravif(ptr nofree readonly captures(none) %.0.val, i64 %.16.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %.16.val, 0
  br i1 %i.a, label %_RNvXso_NtCsj6eKBz9Db1c_4core5arrayINtB5_5GuardINtNtCsko5zPvjVG7R_7v_frame5plane5PlanetEENtNtNtB7_3ops4drop4Drop4dropCs2mu2Cb9JdUH_5ravif.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !994)
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanetEECs2mu2Cb9JdUH_5ravif.exit.i.i, %bb.b
  %.sroa.0.012.i.i = phi i64 [ 0, %bb.b ], [ %i.c, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanetEECs2mu2Cb9JdUH_5ravif.exit.i.i ] ; 2 uses
  %i.b = getelementptr inbounds nuw [96 x i8], ptr %.0.val, i64 %.sroa.0.012.i.i ; 2 uses
  %i.c = add nuw nsw i64 %.sroa.0.012.i.i, 1      ; 2 uses
  %i.d = getelementptr i8, ptr %i.b, i64 8
  %.val9.i.i = load i64, ptr %i.d, align 8, !alias.scope !994, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %.val9.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanetEECs2mu2Cb9JdUH_5ravif.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val8.i.i = load ptr, ptr %i.b, align 8, !alias.scope !994, !nonnull !4, !noundef !4
  %i.e = shl nuw nsw i64 %.val9.i.i, 1
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i, i64 noundef %i.e, i64 noundef 64) #27, !noalias !995
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanetEECs2mu2Cb9JdUH_5ravif.exit.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanetEECs2mu2Cb9JdUH_5ravif.exit.i.i: ; preds = %bb.d, %bb.c
  %i.f = icmp eq i64 %i.c, %.16.val
  br i1 %i.f, label %_RNvXso_NtCsj6eKBz9Db1c_4core5arrayINtB5_5GuardINtNtCsko5zPvjVG7R_7v_frame5plane5PlanetEENtNtNtB7_3ops4drop4Drop4dropCs2mu2Cb9JdUH_5ravif.exit, label %bb.c

_RNvXso_NtCsj6eKBz9Db1c_4core5arrayINtB5_5GuardINtNtCsko5zPvjVG7R_7v_frame5plane5PlanetEENtNtNtB7_3ops4drop4Drop4dropCs2mu2Cb9JdUH_5ravif.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanetEECs2mu2Cb9JdUH_5ravif.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsdEEMmLUVy6d_5rav1e6tiling17tile_motion_stats14TileMEStatsMutEECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsdEEMmLUVy6d_5rav1e6tiling17tile_motion_stats14TileMEStatsMutENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdEEMmLUVy6d_5rav1e6tiling17tile_motion_stats14TileMEStatsMutENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCsdEEMmLUVy6d_5rav1e6tiling17tile_motion_stats14TileMEStatsMutEECs2mu2Cb9JdUH_5ravif.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdEEMmLUVy6d_5rav1e6tiling17tile_motion_stats14TileMEStatsMutENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
end_hunk_3
