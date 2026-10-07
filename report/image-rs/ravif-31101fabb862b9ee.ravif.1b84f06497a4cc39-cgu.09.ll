Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/ravif-31101fabb862b9ee.ravif.1b84f06497a4cc39-cgu.09?download=true
inline.NumInlined: 917
inline.NumDeleted: 544
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_RINvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solvetECs2mu2Cb9JdUH_5ravif:bb.a
  %i.uz = add i64 %.sroa.0.058.i, %.val.i61       ; 2 uses
  %i.va = add i64 %i.uz, %i.tp                    ; 2 uses
  %i.vb = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i.i, i64 %i.va
  %i.vc = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i.i, i64 %i.va
  %i.vd = add i64 %i.uz, %i.tq                    ; 2 uses
  %i.ve = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i1.i.i, i64 %i.vd
  %i.vf = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i2.i.i, i64 %i.vd
  %i.vg = load i16, ptr %i.vb, align 2, !noalias !611, !noundef !4
  %i.vh = load i16, ptr %i.vc, align 2, !noalias !611, !noundef !4
  %i.vi = load i32, ptr %i.ve, align 4, !noalias !611, !noundef !4
  %i.vj = load i32, ptr %i.vf, align 4, !noalias !611, !noundef !4
  %i.vk = zext i16 %i.vg to i32                   ; 2 uses
  %i.vl = zext i16 %i.vh to i32
  %i.vm = shl nuw nsw i32 %i.vk, 4                ; 2 uses
  %i.vn = sub nsw i32 %i.vl, %i.vk
  %i.vo = shl nsw i32 %i.vn, 4
  %i.vp = sext i32 %i.vo to i64                   ; 2 uses
  %i.vq = sub i32 %i.vi, %i.vm
  %i.vr = sub i32 %i.vj, %i.vm
  %i.vs = sext i32 %i.vr to i64                   ; 4 uses
  %i.vt = sext i32 %i.vq to i64                   ; 4 uses
  %i.vu = mul nsw i64 %i.vt, %i.vt
  %i.vv = add i64 %i.vu, %.sroa.010.053.i         ; 2 uses
  %i.vw = mul nsw i64 %i.vs, %i.vs
  %i.vx = add i64 %i.vw, %.sroa.823.055.i         ; 2 uses
  %i.vy = mul nsw i64 %i.vs, %i.vt
  %i.vz = add i64 %i.vy, %.sroa.613.054.i         ; 2 uses
  %i.wa = mul nsw i64 %i.vp, %i.vt
  %i.wb = add i64 %i.wa, %.sroa.9.056.i           ; 2 uses
  %i.wc = mul nsw i64 %i.vs, %i.vp
  %i.wd = add i64 %i.wc, %.sroa.10.057.i          ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.uy, %i.to
  br i1 %exitcond.not.i, label %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4ItertEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRtB3J_ETRmB3R_EETxxxEB2g_NCIB2i_tE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit.loopexit, label %scalar.ph, !llvm.loop !558

_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4ItertEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRtB3J_ETRmB3R_EETxxxEB2g_NCIB2i_tE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit.loopexit: ; preds = %scalar.ph, %middle.block
  %.lcssa749 = phi i64 [ %i.ux, %middle.block ], [ %i.vv, %scalar.ph ]
  %.lcssa748 = phi i64 [ %i.uv, %middle.block ], [ %i.vx, %scalar.ph ]
  %.lcssa747 = phi i64 [ %i.uw, %middle.block ], [ %i.vz, %scalar.ph ]
  %.lcssa746 = phi i64 [ %i.uu, %middle.block ], [ %i.wb, %scalar.ph ]
  %.lcssa745 = phi i64 [ %i.ut, %middle.block ], [ %i.wd, %scalar.ph ]
  %i.we = sitofp i64 %.lcssa749 to double
  %i.wf = sitofp i64 %.lcssa748 to double
  %i.wg = sitofp i64 %.lcssa747 to double
  %i.wh = sitofp i64 %.lcssa746 to double
  %i.wi = sitofp i64 %.lcssa745 to double
  %i.wj = insertelement <4 x double> poison, double %i.wi, i64 0
  %i.wk = insertelement <4 x double> %i.wj, double %i.wh, i64 1
  %i.wl = insertelement <4 x double> %i.wk, double %i.wf, i64 2
  %i.wm = insertelement <4 x double> %i.wl, double %i.wg, i64 3
  br label %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4ItertEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRtB3J_ETRmB3R_EETxxxEB2g_NCIB2i_tE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit

_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4ItertEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRtB3J_ETRmB3R_EETxxxEB2g_NCIB2i_tE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit: ; preds = %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4ItertEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRtB3J_ETRmB3R_EETxxxEB2g_NCIB2i_tE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit.loopexit, %_RINvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_linetECs2mu2Cb9JdUH_5ravif.exit
  %.sroa.010.0.lcssa.i = phi double [ 0.000000e+00, %_RINvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_linetECs2mu2Cb9JdUH_5ravif.exit ], [ %i.we, %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4ItertEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRtB3J_ETRmB3R_EETxxxEB2g_NCIB2i_tE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit.loopexit ]
  %i.wn = phi <4 x double> [ zeroinitializer, %_RINvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_linetECs2mu2Cb9JdUH_5ravif.exit ], [ %i.wm, %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4ItertEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRtB3J_ETRmB3R_EETxxxEB2g_NCIB2i_tE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit.loopexit ]
  %i.wo = fadd double %.sroa.0.1478, %.sroa.010.0.lcssa.i ; 2 uses
  %i.wp = fadd <4 x double> %i.lt, %i.wn          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %exitcond593.not = icmp eq i64 %i.lu, %umax
  br i1 %exitcond593.not, label %._crit_edge, label %.lr.ph480
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsdEEMmLUVy6d_5rav1e3lrf20setup_integral_imagehECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [112 x i8], align 8               ; 11 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.g, align 8, !noundef !4 ; 3 uses
  %i.j = load i64, ptr %i.h, align 8, !noundef !4
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %bb.c, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failediiECs2mu2Cb9JdUH_5ravif(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq i64 %i.i, 0                      ; 2 uses
  %. = select i1 %i.l, i64 0, i64 4               ; 2 uses
  %i.m = sub i64 %2, %4
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.m, i64 3)
  %i.n = add i64 %..i, %4
  %i.o = add i64 %i.n, %.                         ; 10 uses
  %storemerge = select i1 %i.l, i64 -4, i64 0     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.p = load ptr, ptr %6, align 8, !nonnull !4, !align !15, !noundef !4 ; 3 uses
  %i.q = sub i64 %i.i, %.                         ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.s = load i64, ptr %i.r, align 8, !noundef !4 ; 9 uses
  store ptr %i.p, ptr %i.f, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.q, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 %i.s, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.v = load ptr, ptr %7, align 8, !nonnull !4, !align !15, !noundef !4 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.x = load i64, ptr %i.w, align 8, !noundef !4 ; 2 uses
  store ptr %i.v, ptr %i.e, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.q, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 %i.x, ptr %i.z, align 8
  %i.aa = icmp eq i64 %i.s, %i.x
  br i1 %i.aa, label %_RNvMs0_NtCsdEEMmLUVy6d_5rav1e3lrfINtB5_14VertPaddedIterhE3newCs2mu2Cb9JdUH_5ravif.exit, label %bb.d, !prof !19

bb.d:                                             ; preds = %bb.c
  call void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failediiECs2mu2Cb9JdUH_5ravif(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.z, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #28, !noalias !662
  unreachable

_RNvMs0_NtCsdEEMmLUVy6d_5rav1e3lrfINtB5_14VertPaddedIterhE3newCs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.c
  %i.ab = and i64 %5, 1
  %i.ac = add i64 %i.ab, %5                       ; 2 uses
  %i.ad = add i64 %i.s, %i.ac                     ; 3 uses
  %i.ae = add i64 %i.s, -4                        ; 3 uses
  %i.af = add i64 %i.ac, 6
  %i.ag = add i64 %i.af, %i.ae                    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ah = icmp sgt i64 %i.ag, %i.ae
  br i1 %i.ah, label %bb.e, label %bb.i

bb.e:                                             ; preds = %_RNvMs0_NtCsdEEMmLUVy6d_5rav1e3lrfINtB5_14VertPaddedIterhE3newCs2mu2Cb9JdUH_5ravif.exit
  %i.ai = add i64 %i.s, %3
  %i.aj = add i64 %i.ai, -1                       ; 2 uses
  %i.ak = tail call noundef i64 @_RINvNtCsko5zPvjVG7R_7v_frame4math5clampiECs2mu2Cb9JdUH_5ravif(i64 noundef %i.ae, i64 noundef 0, i64 noundef %i.aj), !noalias !663
  %i.al = add i64 %i.s, -2                        ; 2 uses
  %i.am = add i64 %i.ad, 1                        ; 2 uses
  %i.an = tail call noundef i64 @_RINvNtCsko5zPvjVG7R_7v_frame4math5clampiECs2mu2Cb9JdUH_5ravif(i64 noundef %i.ak, i64 noundef %i.al, i64 noundef %i.am), !noalias !663 ; 3 uses
  %i.ao = icmp sge i64 %i.an, %i.s
  %i.ap = icmp slt i64 %i.an, %i.ad
  %or.cond.i37 = and i1 %i.ao, %i.ap
  %.sroa.03.0.i39.sroa.speculated = select i1 %or.cond.i37, ptr %i.p, ptr %i.v ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i39.sroa.speculated, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i39.sroa.speculated, i64 88
  %i.as = load i64, ptr %i.ar, align 8, !noalias !663, !noundef !4
  %i.at = add i64 %i.as, %i.an
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i39.sroa.speculated, i64 80
  %i.av = load i64, ptr %i.au, align 8, !noalias !663, !noundef !4
  %i.aw = add i64 %i.av, %i.q                     ; 2 uses
  %i.ax = load i64, ptr %i.aq, align 8, !noalias !663, !noundef !4 ; 3 uses
  %i.ay = mul i64 %i.ax, %i.at                    ; 2 uses
  %i.az = add i64 %i.ay, %i.aw                    ; 3 uses
  %i.ba = sub i64 %i.ax, %i.aw                    ; 2 uses
  %i.bb = add i64 %i.ay, %i.ax                    ; 3 uses
  %i.bc = add i64 %i.s, -3                        ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i39.sroa.speculated, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !noalias !663, !noundef !4 ; 2 uses
  %i.bf = icmp ult i64 %i.bb, %i.az
  %.not.i40 = icmp ugt i64 %i.bb, %i.be
  %or.cond7.i41 = or i1 %i.bf, %.not.i40
  br i1 %or.cond7.i41, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.az, i64 noundef %i.bb, i64 noundef %i.be, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #28, !noalias !663
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.bg = load ptr, ptr %.sroa.03.0.i39.sroa.speculated, align 8, !noalias !663, !nonnull !4, !noundef !4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.az
  %.not.i43 = icmp ugt i64 %i.o, %i.ba
  br i1 %.not.i43, label %bb.h, label %_RNCINvNtCsdEEMmLUVy6d_5rav1e3lrf20setup_integral_imagehE0Cs2mu2Cb9JdUH_5ravif.exit, !prof !11

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.o, i64 noundef range(i64 0, -9223372036854775808) %i.ba, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #28, !noalias !664
  unreachable

_RNCINvNtCsdEEMmLUVy6d_5rav1e3lrf20setup_integral_imagehE0Cs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.g
  %i.bi = add i64 %4, 7
  %i.bj = add i64 %i.bi, %storemerge              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !4 ; 3 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bs = load i64, ptr %i.br, align 8, !noundef !4 ; 3 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.bs
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEBW_EINtB5_7ZipImplBW_BW_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bo, ptr noundef nonnull %i.bq, ptr noundef nonnull %i.bt)
  %.sroa.590.32.copyload = load ptr, ptr %i.d, align 8, !alias.scope !665, !noalias !666 ; 2 uses
  %.sroa.892.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.892.32.copyload = load ptr, ptr %.sroa.892.32..sroa_idx, align 8, !alias.scope !665, !noalias !666 ; 2 uses
  %.sroa.1094.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.1094.32.copyload = load i64, ptr %.sroa.1094.32..sroa_idx, align 8, !alias.scope !665, !noalias !666 ; 2 uses
  %.sroa.1195.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.1195.32.copyload = load i64, ptr %.sroa.1195.32..sroa_idx, align 8, !alias.scope !665, !noalias !666
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bu = icmp slt i64 %storemerge, %i.bj         ; 2 uses
  br i1 %i.bu, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_RNCINvNtCsdEEMmLUVy6d_5rav1e3lrf20setup_integral_imagehE0Cs2mu2Cb9JdUH_5ravif.exit
  %i.bv = add i64 %i.o, -1
  %umax = tail call i64 @llvm.umax.i64(i64 %.sroa.1195.32.copyload, i64 %.sroa.1094.32.copyload)
  br label %bb.j

bb.i:                                             ; preds = %_RNvMs0_NtCsdEEMmLUVy6d_5rav1e3lrfINtB5_14VertPaddedIterhE3newCs2mu2Cb9JdUH_5ravif.exit
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #28
  unreachable

bb.j:                                             ; preds = %.lr.ph, %bb.m
  %.sroa.04.0253 = phi i32 [ 0, %.lr.ph ], [ %i.cf, %bb.m ]
  %.sroa.06.0252 = phi i32 [ 0, %.lr.ph ], [ %i.ch, %bb.m ]
  %.sroa.580.0251 = phi i64 [ %storemerge, %.lr.ph ], [ %i.bx, %bb.m ] ; 2 uses
  %.sroa.1085.0250 = phi i64 [ %.sroa.1094.32.copyload, %.lr.ph ], [ %i.ca, %bb.m ] ; 4 uses
  %i.bw = tail call noundef i64 @_RINvNtCsko5zPvjVG7R_7v_frame4math5clampiECs2mu2Cb9JdUH_5ravif(i64 noundef %.sroa.580.0251, i64 noundef 0, i64 noundef %i.bv), !noalias !667 ; 3 uses
  %i.bx = add i64 %.sroa.580.0251, 1              ; 2 uses
  %i.by = icmp ult i64 %i.bw, %i.o
  br i1 %i.by, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.bw, i64 noundef %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #28, !noalias !667
  unreachable

bb.l:                                             ; preds = %bb.j
  %exitcond.not = icmp eq i64 %.sroa.1085.0250, %umax
  br i1 %exitcond.not, label %._crit_edge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bw
  %i.ca = add i64 %.sroa.1085.0250, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.590.32.copyload) ]
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.590.32.copyload, i64 %.sroa.1085.0250
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.892.32.copyload) ]
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.892.32.copyload, i64 %.sroa.1085.0250
  %i.cd = load i8, ptr %i.bz, align 1, !noundef !4
  %i.ce = zext i8 %i.cd to i32                    ; 3 uses
  %i.cf = add i32 %.sroa.04.0253, %i.ce           ; 2 uses
  store i32 %i.cf, ptr %i.cb, align 4
  %i.cg = mul nuw nsw i32 %i.ce, %i.ce
  %i.ch = add i32 %i.cg, %.sroa.06.0252           ; 2 uses
  store i32 %i.ch, ptr %i.cc, align 4
  %exitcond296.not = icmp eq i64 %i.bx, %i.bj
  br i1 %exitcond296.not, label %._crit_edge, label %bb.j

._crit_edge:                                      ; preds = %bb.l, %bb.m, %_RNCINvNtCsdEEMmLUVy6d_5rav1e3lrf20setup_integral_imagehE0Cs2mu2Cb9JdUH_5ravif.exit
  %i.ci = icmp sgt i64 %i.ag, %i.bc
  br i1 %i.ci, label %.lr.ph268, label %._crit_edge269

.lr.ph268:                                        ; preds = %._crit_edge
  %.sroa.8164.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.10166.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.12168.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.14170.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %.sroa.16171.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %.sroa.18173.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %.sroa.19.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.cj = add i64 %i.o, -1
  %i.ck = shl i64 %i.bs, 2
  %scevgep = getelementptr i8, ptr %i.bq, i64 %i.ck
  %i.cl = shl i64 %i.bn, 2
  %scevgep300 = getelementptr i8, ptr %i.bl, i64 %i.cl
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph268, %._crit_edge260
  %.sroa.521.0266 = phi i64 [ %i.bs, %.lr.ph268 ], [ %i.dl, %._crit_edge260 ] ; 2 uses
  %.sroa.012.0265 = phi ptr [ %i.bl, %.lr.ph268 ], [ %i.di, %._crit_edge260 ] ; 2 uses
  %.sroa.515.0264 = phi i64 [ %i.bn, %.lr.ph268 ], [ %i.dj, %._crit_edge260 ] ; 2 uses
  %.sroa.018.0263 = phi ptr [ %i.bq, %.lr.ph268 ], [ %i.dk, %._crit_edge260 ] ; 2 uses
  %.sroa.8124.0262 = phi i64 [ %i.bc, %.lr.ph268 ], [ %i.db, %._crit_edge260 ] ; 2 uses
  %i.cm = call noundef i64 @_RINvNtCsko5zPvjVG7R_7v_frame4math5clampiECs2mu2Cb9JdUH_5ravif(i64 noundef %.sroa.8124.0262, i64 noundef 0, i64 noundef %i.aj), !noalias !668
  %i.cn = call noundef i64 @_RINvNtCsko5zPvjVG7R_7v_frame4math5clampiECs2mu2Cb9JdUH_5ravif(i64 noundef %i.cm, i64 noundef %i.al, i64 noundef %i.am), !noalias !668 ; 3 uses
  %i.co = icmp sge i64 %i.cn, %i.s
  %i.cp = icmp slt i64 %i.cn, %i.ad
  %or.cond.i = and i1 %i.co, %i.cp
  %.sroa.03.0.i.sroa.speculated = select i1 %or.cond.i, ptr %i.p, ptr %i.v ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.sroa.speculated, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.sroa.speculated, i64 88
  %i.cs = load i64, ptr %i.cr, align 8, !noalias !668, !noundef !4
  %i.ct = add i64 %i.cs, %i.cn
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.sroa.speculated, i64 80
  %i.cv = load i64, ptr %i.cu, align 8, !noalias !668, !noundef !4
  %i.cw = add i64 %i.cv, %i.q                     ; 2 uses
  %i.cx = load i64, ptr %i.cq, align 8, !noalias !668, !noundef !4 ; 3 uses
  %i.cy = mul i64 %i.cx, %i.ct                    ; 2 uses
  %i.cz = add i64 %i.cy, %i.cw                    ; 3 uses
  %i.da = add i64 %i.cy, %i.cx                    ; 3 uses
  %i.db = add i64 %.sroa.8124.0262, 1             ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.sroa.speculated, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !noalias !668, !noundef !4 ; 2 uses
  %i.de = icmp ult i64 %i.da, %i.cz
  %.not.i = icmp ugt i64 %i.da, %i.dd
  %or.cond7.i = or i1 %i.de, %.not.i
  br i1 %or.cond7.i, label %bb.o, label %bb.p, !prof !11

bb.o:                                             ; preds = %bb.n
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.cz, i64 noundef %i.da, i64 noundef %i.dd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #28, !noalias !668
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.df = sub i64 %i.cx, %i.cw                    ; 2 uses
  %i.dg = load ptr, ptr %.sroa.03.0.i.sroa.speculated, align 8, !noalias !668, !nonnull !4, !noundef !4
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.cz
  %.not.i44 = icmp ugt i64 %i.o, %i.df
  br i1 %.not.i44, label %bb.q, label %_RNCINvNtCsdEEMmLUVy6d_5rav1e3lrf20setup_integral_imagehE0Cs2mu2Cb9JdUH_5ravif.exit45, !prof !11

bb.q:                                             ; preds = %bb.p
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.o, i64 noundef range(i64 0, -9223372036854775808) %i.df, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #28, !noalias !669
  unreachable

_RNCINvNtCsdEEMmLUVy6d_5rav1e3lrf20setup_integral_imagehE0Cs2mu2Cb9JdUH_5ravif.exit45: ; preds = %bb.p
  %.not.i46 = icmp ugt i64 %1, %.sroa.515.0264
  br i1 %.not.i46, label %bb.r, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSm12split_at_mutCs2mu2Cb9JdUH_5ravif.exit, !prof !8

bb.r:                                             ; preds = %_RNCINvNtCsdEEMmLUVy6d_5rav1e3lrf20setup_integral_imagehE0Cs2mu2Cb9JdUH_5ravif.exit45
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @65, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #28, !noalias !670
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core5sliceSm12split_at_mutCs2mu2Cb9JdUH_5ravif.exit: ; preds = %_RNCINvNtCsdEEMmLUVy6d_5rav1e3lrf20setup_integral_imagehE0Cs2mu2Cb9JdUH_5ravif.exit45
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %.sroa.012.0265, i64 %1 ; 3 uses
  %i.dj = sub nuw nsw i64 %.sroa.515.0264, %1
  %.not.i47 = icmp ugt i64 %1, %.sroa.521.0266
  br i1 %.not.i47, label %bb.s, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSm12split_at_mutCs2mu2Cb9JdUH_5ravif.exit51, !prof !8

bb.s:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSm12split_at_mutCs2mu2Cb9JdUH_5ravif.exit
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @65, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #28, !noalias !671
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core5sliceSm12split_at_mutCs2mu2Cb9JdUH_5ravif.exit51: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSm12split_at_mutCs2mu2Cb9JdUH_5ravif.exit
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.018.0263, i64 %1 ; 3 uses
  %i.dl = sub nuw nsw i64 %.sroa.521.0266, %1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !672
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEBW_EINtB5_7ZipImplBW_BW_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull %.sroa.012.0265, ptr noundef nonnull %i.di, ptr noundef nonnull %.sroa.018.0263, ptr noundef nonnull %i.dk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !672
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEBW_EINtB5_7ZipImplBW_BW_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.di, ptr noundef nonnull %scevgep300, ptr noundef nonnull %i.dk, ptr noundef nonnull %scevgep)
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4ItermEB10_EIBN_INtB13_7IterMutmEB1B_EEINtB5_7ZipImplBW_B1x_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !672
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !672
  %.sroa.5162.32.copyload = load ptr, ptr %i.c, align 8, !alias.scope !674, !noalias !675 ; 2 uses
  %.sroa.8164.32.copyload = load ptr, ptr %.sroa.8164.32..sroa_idx, align 8, !alias.scope !674, !noalias !675 ; 2 uses
  %.sroa.10166.32.copyload = load i64, ptr %.sroa.10166.32..sroa_idx, align 8, !alias.scope !674, !noalias !675
  %.sroa.12168.32.copyload = load ptr, ptr %.sroa.12168.32..sroa_idx, align 8, !alias.scope !674, !noalias !675 ; 2 uses
  %.sroa.14170.32.copyload = load ptr, ptr %.sroa.14170.32..sroa_idx, align 8, !alias.scope !674, !noalias !675 ; 2 uses
  %.sroa.16171.32.copyload = load i64, ptr %.sroa.16171.32..sroa_idx, align 8, !alias.scope !674, !noalias !675
  %.sroa.18173.32.copyload = load i64, ptr %.sroa.18173.32..sroa_idx, align 8, !alias.scope !674, !noalias !675 ; 2 uses
  %.sroa.19.32.copyload = load i64, ptr %.sroa.19.32..sroa_idx, align 8, !alias.scope !674, !noalias !675
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.bu, label %.lr.ph259.preheader, label %._crit_edge260

.lr.ph259.preheader:                              ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSm12split_at_mutCs2mu2Cb9JdUH_5ravif.exit51
  %umax297 = call i64 @llvm.umax.i64(i64 %.sroa.19.32.copyload, i64 %.sroa.18173.32.copyload)
  br label %.lr.ph259

._crit_edge269:                                   ; preds = %._crit_edge260, %._crit_edge
  ret void

.lr.ph259:                                        ; preds = %.lr.ph259.preheader, %bb.v
  %.sroa.08.0258 = phi i32 [ %i.dz, %bb.v ], [ 0, %.lr.ph259.preheader ]
  %.sroa.010.0257 = phi i32 [ %i.ed, %bb.v ], [ 0, %.lr.ph259.preheader ]
  %.sroa.14156.0256 = phi i64 [ %i.dq, %bb.v ], [ %.sroa.18173.32.copyload, %.lr.ph259.preheader ] ; 4 uses
  %.sroa.5142.0255 = phi i64 [ %i.dn, %bb.v ], [ %storemerge, %.lr.ph259.preheader ] ; 2 uses
  %i.dm = call noundef i64 @_RINvNtCsko5zPvjVG7R_7v_frame4math5clampiECs2mu2Cb9JdUH_5ravif(i64 noundef %.sroa.5142.0255, i64 noundef 0, i64 noundef %i.cj), !noalias !676 ; 3 uses
  %i.dn = add i64 %.sroa.5142.0255, 1             ; 2 uses
  %i.do = icmp ult i64 %i.dm, %i.o
  br i1 %i.do, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph259
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.dm, i64 noundef %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #28, !noalias !676
  unreachable

bb.u:                                             ; preds = %.lr.ph259
  %exitcond298.not = icmp eq i64 %.sroa.14156.0256, %umax297
  br i1 %exitcond298.not, label %._crit_edge260, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dm
  %i.dq = add i64 %.sroa.14156.0256, 1
  %i.dr = add i64 %.sroa.14156.0256, %.sroa.10166.32.copyload ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5162.32.copyload) ]
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %.sroa.5162.32.copyload, i64 %i.dr
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8164.32.copyload) ]
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8164.32.copyload, i64 %i.dr
  %i.du = add i64 %.sroa.14156.0256, %.sroa.16171.32.copyload ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12168.32.copyload) ]
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.12168.32.copyload, i64 %i.du
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14170.32.copyload) ]
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.14170.32.copyload, i64 %i.du
  %i.dx = load i8, ptr %i.dp, align 1, !noundef !4
  %i.dy = zext i8 %i.dx to i32                    ; 3 uses
  %i.dz = add i32 %.sroa.08.0258, %i.dy           ; 2 uses
  %i.ea = load i32, ptr %i.ds, align 4, !noundef !4
  %i.eb = add i32 %i.dz, %i.ea
  store i32 %i.eb, ptr %i.dv, align 4
  %i.ec = mul nuw nsw i32 %i.dy, %i.dy
  %i.ed = add i32 %i.ec, %.sroa.010.0257          ; 2 uses
  %i.ee = load i32, ptr %i.dt, align 4, !noundef !4
  %i.ef = add i32 %i.ed, %i.ee
  store i32 %i.ef, ptr %i.dw, align 4
  %exitcond299.not = icmp eq i64 %i.dn, %i.bj
  br i1 %exitcond299.not, label %._crit_edge260, label %.lr.ph259

._crit_edge260:                                   ; preds = %bb.u, %bb.v, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSm12split_at_mutCs2mu2Cb9JdUH_5ravif.exit51
  %exitcond301.not = icmp eq i64 %i.db, %i.ag
  br i1 %exitcond301.not, label %._crit_edge269, label %bb.n
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsdEEMmLUVy6d_5rav1e3lrf20setup_integral_imagetECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [112 x i8], align 8               ; 11 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.g, align 8, !noundef !4 ; 3 uses
  %i.j = load i64, ptr %i.h, align 8, !noundef !4
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %bb.c, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failediiECs2mu2Cb9JdUH_5ravif(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq i64 %i.i, 0                      ; 2 uses
  %. = select i1 %i.l, i64 0, i64 4               ; 2 uses
  %i.m = sub i64 %2, %4
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.m, i64 3)
  %i.n = add i64 %..i, %4
  %i.o = add i64 %i.n, %.                         ; 10 uses
  %storemerge = select i1 %i.l, i64 -4, i64 0     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.p = load ptr, ptr %6, align 8, !nonnull !4, !align !15, !noundef !4 ; 3 uses
  %i.q = sub i64 %i.i, %.                         ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.s = load i64, ptr %i.r, align 8, !noundef !4 ; 9 uses
  store ptr %i.p, ptr %i.f, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.q, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 %i.s, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.v = load ptr, ptr %7, align 8, !nonnull !4, !align !15, !noundef !4 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.x = load i64, ptr %i.w, align 8, !noundef !4 ; 2 uses
  store ptr %i.v, ptr %i.e, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.q, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 %i.x, ptr %i.z, align 8
  %i.aa = icmp eq i64 %i.s, %i.x
  br i1 %i.aa, label %_RNvMs0_NtCsdEEMmLUVy6d_5rav1e3lrfINtB5_14VertPaddedItertE3newCs2mu2Cb9JdUH_5ravif.exit, label %bb.d, !prof !19

bb.d:                                             ; preds = %bb.c
  call void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failediiECs2mu2Cb9JdUH_5ravif(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.z, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #28, !noalias !727
  unreachable

_RNvMs0_NtCsdEEMmLUVy6d_5rav1e3lrfINtB5_14VertPaddedItertE3newCs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.c
  %i.ab = and i64 %5, 1
  %i.ac = add i64 %i.ab, %5                       ; 2 uses
  %i.ad = add i64 %i.s, %i.ac                     ; 3 uses
  %i.ae = add i64 %i.s, -4                        ; 3 uses
  %i.af = add i64 %i.ac, 6
  %i.ag = add i64 %i.af, %i.ae                    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ah = icmp sgt i64 %i.ag, %i.ae
  br i1 %i.ah, label %bb.e, label %bb.i

bb.e:                                             ; preds = %_RNvMs0_NtCsdEEMmLUVy6d_5rav1e3lrfINtB5_14VertPaddedItertE3newCs2mu2Cb9JdUH_5ravif.exit
  %i.ai = add i64 %i.s, %3
  %i.aj = add i64 %i.ai, -1                       ; 2 uses
  %i.ak = tail call noundef i64 @_RINvNtCsko5zPvjVG7R_7v_frame4math5clampiECs2mu2Cb9JdUH_5ravif(i64 noundef %i.ae, i64 noundef 0, i64 noundef %i.aj), !noalias !728
  %i.al = add i64 %i.s, -2                        ; 2 uses
  %i.am = add i64 %i.ad, 1                        ; 2 uses
  %i.an = tail call noundef i64 @_RINvNtCsko5zPvjVG7R_7v_frame4math5clampiECs2mu2Cb9JdUH_5ravif(i64 noundef %i.ak, i64 noundef %i.al, i64 noundef %i.am), !noalias !728 ; 3 uses
  %i.ao = icmp sge i64 %i.an, %i.s
  %i.ap = icmp slt i64 %i.an, %i.ad
  %or.cond.i37 = and i1 %i.ao, %i.ap
  %.sroa.03.0.i39.sroa.speculated = select i1 %or.cond.i37, ptr %i.p, ptr %i.v ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i39.sroa.speculated, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i39.sroa.speculated, i64 88
  %i.as = load i64, ptr %i.ar, align 8, !noalias !728, !noundef !4
  %i.at = add i64 %i.as, %i.an
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i39.sroa.speculated, i64 80
  %i.av = load i64, ptr %i.au, align 8, !noalias !728, !noundef !4
  %i.aw = add i64 %i.av, %i.q                     ; 2 uses
  %i.ax = load i64, ptr %i.aq, align 8, !noalias !728, !noundef !4 ; 3 uses
  %i.ay = mul i64 %i.ax, %i.at                    ; 2 uses
  %i.az = add i64 %i.ay, %i.aw                    ; 3 uses
  %i.ba = sub i64 %i.ax, %i.aw                    ; 2 uses
  %i.bb = add i64 %i.ay, %i.ax                    ; 3 uses
  %i.bc = add i64 %i.s, -3                        ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i39.sroa.speculated, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !noalias !728, !noundef !4 ; 2 uses
  %i.bf = icmp ult i64 %i.bb, %i.az
  %.not.i40 = icmp ugt i64 %i.bb, %i.be
  %or.cond7.i41 = or i1 %i.bf, %.not.i40
  br i1 %or.cond7.i41, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.az, i64 noundef %i.bb, i64 noundef %i.be, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #28, !noalias !728
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.bg = load ptr, ptr %.sroa.03.0.i39.sroa.speculated, align 8, !noalias !728, !nonnull !4, !noundef !4
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %i.az
  %.not.i43 = icmp ugt i64 %i.o, %i.ba
  br i1 %.not.i43, label %bb.h, label %_RNCINvNtCsdEEMmLUVy6d_5rav1e3lrf20setup_integral_imagetE0Cs2mu2Cb9JdUH_5ravif.exit, !prof !11

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.o, i64 noundef range(i64 0, 4611686018427387904) %i.ba, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #28, !noalias !729
  unreachable

_RNCINvNtCsdEEMmLUVy6d_5rav1e3lrf20setup_integral_imagetE0Cs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.g
  %i.bi = add i64 %4, 7
  %i.bj = add i64 %i.bi, %storemerge              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !4 ; 3 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bs = load i64, ptr %i.br, align 8, !noundef !4 ; 3 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.bs
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEBW_EINtB5_7ZipImplBW_BW_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bo, ptr noundef nonnull %i.bq, ptr noundef nonnull %i.bt)
  %.sroa.590.32.copyload = load ptr, ptr %i.d, align 8, !alias.scope !730, !noalias !731 ; 2 uses
  %.sroa.892.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.892.32.copyload = load ptr, ptr %.sroa.892.32..sroa_idx, align 8, !alias.scope !730, !noalias !731 ; 2 uses
  %.sroa.1094.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.1094.32.copyload = load i64, ptr %.sroa.1094.32..sroa_idx, align 8, !alias.scope !730, !noalias !731 ; 2 uses
  %.sroa.1195.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.1195.32.copyload = load i64, ptr %.sroa.1195.32..sroa_idx, align 8, !alias.scope !730, !noalias !731
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bu = icmp slt i64 %storemerge, %i.bj         ; 2 uses
  br i1 %i.bu, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_RNCINvNtCsdEEMmLUVy6d_5rav1e3lrf20setup_integral_imagetE0Cs2mu2Cb9JdUH_5ravif.exit
  %i.bv = add i64 %i.o, -1
  %umax = tail call i64 @llvm.umax.i64(i64 %.sroa.1195.32.copyload, i64 %.sroa.1094.32.copyload)
  br label %bb.j

bb.i:                                             ; preds = %_RNvMs0_NtCsdEEMmLUVy6d_5rav1e3lrfINtB5_14VertPaddedItertE3newCs2mu2Cb9JdUH_5ravif.exit
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #28
  unreachable

bb.j:                                             ; preds = %.lr.ph, %bb.m
  %.sroa.04.0253 = phi i32 [ 0, %.lr.ph ], [ %i.cf, %bb.m ]
  %.sroa.06.0252 = phi i32 [ 0, %.lr.ph ], [ %i.ch, %bb.m ]
  %.sroa.580.0251 = phi i64 [ %storemerge, %.lr.ph ], [ %i.bx, %bb.m ] ; 2 uses
  %.sroa.1085.0250 = phi i64 [ %.sroa.1094.32.copyload, %.lr.ph ], [ %i.ca, %bb.m ] ; 4 uses
  %i.bw = tail call noundef i64 @_RINvNtCsko5zPvjVG7R_7v_frame4math5clampiECs2mu2Cb9JdUH_5ravif(i64 noundef %.sroa.580.0251, i64 noundef 0, i64 noundef %i.bv), !noalias !732 ; 3 uses
  %i.bx = add i64 %.sroa.580.0251, 1              ; 2 uses
  %i.by = icmp ult i64 %i.bw, %i.o
  br i1 %i.by, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.bw, i64 noundef %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #28, !noalias !732
  unreachable

bb.l:                                             ; preds = %bb.j
  %exitcond.not = icmp eq i64 %.sroa.1085.0250, %umax
  br i1 %exitcond.not, label %._crit_edge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %i.bw
  %i.ca = add i64 %.sroa.1085.0250, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.590.32.copyload) ]
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.590.32.copyload, i64 %.sroa.1085.0250
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.892.32.copyload) ]
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.892.32.copyload, i64 %.sroa.1085.0250
  %i.cd = load i16, ptr %i.bz, align 2, !noundef !4
  %i.ce = zext i16 %i.cd to i32                   ; 3 uses
  %i.cf = add i32 %.sroa.04.0253, %i.ce           ; 2 uses
  store i32 %i.cf, ptr %i.cb, align 4
  %i.cg = mul nuw i32 %i.ce, %i.ce
  %i.ch = add i32 %i.cg, %.sroa.06.0252           ; 2 uses
  store i32 %i.ch, ptr %i.cc, align 4
  %exitcond296.not = icmp eq i64 %i.bx, %i.bj
  br i1 %exitcond296.not, label %._crit_edge, label %bb.j

._crit_edge:                                      ; preds = %bb.l, %bb.m, %_RNCINvNtCsdEEMmLUVy6d_5rav1e3lrf20setup_integral_imagetE0Cs2mu2Cb9JdUH_5ravif.exit
  %i.ci = icmp sgt i64 %i.ag, %i.bc
  br i1 %i.ci, label %.lr.ph268, label %._crit_edge269

.lr.ph268:                                        ; preds = %._crit_edge
  %.sroa.8164.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.10166.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.12168.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.14170.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %.sroa.16171.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %.sroa.18173.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %.sroa.19.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.cj = add i64 %i.o, -1
  %i.ck = shl i64 %i.bs, 2
  %scevgep = getelementptr i8, ptr %i.bq, i64 %i.ck
  %i.cl = shl i64 %i.bn, 2
  %scevgep300 = getelementptr i8, ptr %i.bl, i64 %i.cl
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph268, %._crit_edge260
  %.sroa.521.0266 = phi i64 [ %i.bs, %.lr.ph268 ], [ %i.dl, %._crit_edge260 ] ; 2 uses
  %.sroa.012.0265 = phi ptr [ %i.bl, %.lr.ph268 ], [ %i.di, %._crit_edge260 ] ; 2 uses
  %.sroa.515.0264 = phi i64 [ %i.bn, %.lr.ph268 ], [ %i.dj, %._crit_edge260 ] ; 2 uses
  %.sroa.018.0263 = phi ptr [ %i.bq, %.lr.ph268 ], [ %i.dk, %._crit_edge260 ] ; 2 uses
  %.sroa.8124.0262 = phi i64 [ %i.bc, %.lr.ph268 ], [ %i.db, %._crit_edge260 ] ; 2 uses
  %i.cm = call noundef i64 @_RINvNtCsko5zPvjVG7R_7v_frame4math5clampiECs2mu2Cb9JdUH_5ravif(i64 noundef %.sroa.8124.0262, i64 noundef 0, i64 noundef %i.aj), !noalias !733
  %i.cn = call noundef i64 @_RINvNtCsko5zPvjVG7R_7v_frame4math5clampiECs2mu2Cb9JdUH_5ravif(i64 noundef %i.cm, i64 noundef %i.al, i64 noundef %i.am), !noalias !733 ; 3 uses
  %i.co = icmp sge i64 %i.cn, %i.s
  %i.cp = icmp slt i64 %i.cn, %i.ad
  %or.cond.i = and i1 %i.co, %i.cp
  %.sroa.03.0.i.sroa.speculated = select i1 %or.cond.i, ptr %i.p, ptr %i.v ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.sroa.speculated, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.sroa.speculated, i64 88
  %i.cs = load i64, ptr %i.cr, align 8, !noalias !733, !noundef !4
  %i.ct = add i64 %i.cs, %i.cn
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.sroa.speculated, i64 80
  %i.cv = load i64, ptr %i.cu, align 8, !noalias !733, !noundef !4
  %i.cw = add i64 %i.cv, %i.q                     ; 2 uses
  %i.cx = load i64, ptr %i.cq, align 8, !noalias !733, !noundef !4 ; 3 uses
  %i.cy = mul i64 %i.cx, %i.ct                    ; 2 uses
  %i.cz = add i64 %i.cy, %i.cw                    ; 3 uses
  %i.da = add i64 %i.cy, %i.cx                    ; 3 uses
  %i.db = add i64 %.sroa.8124.0262, 1             ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.sroa.speculated, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !noalias !733, !noundef !4 ; 2 uses
  %i.de = icmp ult i64 %i.da, %i.cz
  %.not.i = icmp ugt i64 %i.da, %i.dd
  %or.cond7.i = or i1 %i.de, %.not.i
  br i1 %or.cond7.i, label %bb.o, label %bb.p, !prof !11

bb.o:                                             ; preds = %bb.n
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.cz, i64 noundef %i.da, i64 noundef %i.dd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #28, !noalias !733
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.df = sub i64 %i.cx, %i.cw                    ; 2 uses
  %i.dg = load ptr, ptr %.sroa.03.0.i.sroa.speculated, align 8, !noalias !733, !nonnull !4, !noundef !4
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.dg, i64 %i.cz
  %.not.i44 = icmp ugt i64 %i.o, %i.df
  br i1 %.not.i44, label %bb.q, label %_RNCINvNtCsdEEMmLUVy6d_5rav1e3lrf20setup_integral_imagetE0Cs2mu2Cb9JdUH_5ravif.exit45, !prof !11

bb.q:                                             ; preds = %bb.p
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.o, i64 noundef range(i64 0, 4611686018427387904) %i.df, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #28, !noalias !734
  unreachable

_RNCINvNtCsdEEMmLUVy6d_5rav1e3lrf20setup_integral_imagetE0Cs2mu2Cb9JdUH_5ravif.exit45: ; preds = %bb.p
  %.not.i46 = icmp ugt i64 %1, %.sroa.515.0264
  br i1 %.not.i46, label %bb.r, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSm12split_at_mutCs2mu2Cb9JdUH_5ravif.exit, !prof !8

bb.r:                                             ; preds = %_RNCINvNtCsdEEMmLUVy6d_5rav1e3lrf20setup_integral_imagetE0Cs2mu2Cb9JdUH_5ravif.exit45
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @65, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #28, !noalias !735
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core5sliceSm12split_at_mutCs2mu2Cb9JdUH_5ravif.exit: ; preds = %_RNCINvNtCsdEEMmLUVy6d_5rav1e3lrf20setup_integral_imagetE0Cs2mu2Cb9JdUH_5ravif.exit45
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %.sroa.012.0265, i64 %1 ; 3 uses
  %i.dj = sub nuw nsw i64 %.sroa.515.0264, %1
  %.not.i47 = icmp ugt i64 %1, %.sroa.521.0266
  br i1 %.not.i47, label %bb.s, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSm12split_at_mutCs2mu2Cb9JdUH_5ravif.exit51, !prof !8

bb.s:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSm12split_at_mutCs2mu2Cb9JdUH_5ravif.exit
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @65, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #28, !noalias !736
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core5sliceSm12split_at_mutCs2mu2Cb9JdUH_5ravif.exit51: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSm12split_at_mutCs2mu2Cb9JdUH_5ravif.exit
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.018.0263, i64 %1 ; 3 uses
  %i.dl = sub nuw nsw i64 %.sroa.521.0266, %1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !737
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEBW_EINtB5_7ZipImplBW_BW_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull %.sroa.012.0265, ptr noundef nonnull %i.di, ptr noundef nonnull %.sroa.018.0263, ptr noundef nonnull %i.dk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !737
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEBW_EINtB5_7ZipImplBW_BW_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.di, ptr noundef nonnull %scevgep300, ptr noundef nonnull %i.dk, ptr noundef nonnull %scevgep)
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4ItermEB10_EIBN_INtB13_7IterMutmEB1B_EEINtB5_7ZipImplBW_B1x_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !738
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !737
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !737
  %.sroa.5162.32.copyload = load ptr, ptr %i.c, align 8, !alias.scope !739, !noalias !740 ; 2 uses
  %.sroa.8164.32.copyload = load ptr, ptr %.sroa.8164.32..sroa_idx, align 8, !alias.scope !739, !noalias !740 ; 2 uses
  %.sroa.10166.32.copyload = load i64, ptr %.sroa.10166.32..sroa_idx, align 8, !alias.scope !739, !noalias !740
  %.sroa.12168.32.copyload = load ptr, ptr %.sroa.12168.32..sroa_idx, align 8, !alias.scope !739, !noalias !740 ; 2 uses
  %.sroa.14170.32.copyload = load ptr, ptr %.sroa.14170.32..sroa_idx, align 8, !alias.scope !739, !noalias !740 ; 2 uses
  %.sroa.16171.32.copyload = load i64, ptr %.sroa.16171.32..sroa_idx, align 8, !alias.scope !739, !noalias !740
  %.sroa.18173.32.copyload = load i64, ptr %.sroa.18173.32..sroa_idx, align 8, !alias.scope !739, !noalias !740 ; 2 uses
  %.sroa.19.32.copyload = load i64, ptr %.sroa.19.32..sroa_idx, align 8, !alias.scope !739, !noalias !740
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.bu, label %.lr.ph259.preheader, label %._crit_edge260

.lr.ph259.preheader:                              ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSm12split_at_mutCs2mu2Cb9JdUH_5ravif.exit51
  %umax297 = call i64 @llvm.umax.i64(i64 %.sroa.19.32.copyload, i64 %.sroa.18173.32.copyload)
  br label %.lr.ph259

._crit_edge269:                                   ; preds = %._crit_edge260, %._crit_edge
  ret void

.lr.ph259:                                        ; preds = %.lr.ph259.preheader, %bb.v
  %.sroa.08.0258 = phi i32 [ %i.dz, %bb.v ], [ 0, %.lr.ph259.preheader ]
  %.sroa.010.0257 = phi i32 [ %i.ed, %bb.v ], [ 0, %.lr.ph259.preheader ]
  %.sroa.14156.0256 = phi i64 [ %i.dq, %bb.v ], [ %.sroa.18173.32.copyload, %.lr.ph259.preheader ] ; 4 uses
  %.sroa.5142.0255 = phi i64 [ %i.dn, %bb.v ], [ %storemerge, %.lr.ph259.preheader ] ; 2 uses
  %i.dm = call noundef i64 @_RINvNtCsko5zPvjVG7R_7v_frame4math5clampiECs2mu2Cb9JdUH_5ravif(i64 noundef %.sroa.5142.0255, i64 noundef 0, i64 noundef %i.cj), !noalias !741 ; 3 uses
  %i.dn = add i64 %.sroa.5142.0255, 1             ; 2 uses
  %i.do = icmp ult i64 %i.dm, %i.o
  br i1 %i.do, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph259
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.dm, i64 noundef %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #28, !noalias !741
  unreachable

bb.u:                                             ; preds = %.lr.ph259
  %exitcond298.not = icmp eq i64 %.sroa.14156.0256, %umax297
  br i1 %exitcond298.not, label %._crit_edge260, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %i.dm
  %i.dq = add i64 %.sroa.14156.0256, 1
  %i.dr = add i64 %.sroa.14156.0256, %.sroa.10166.32.copyload ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5162.32.copyload) ]
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %.sroa.5162.32.copyload, i64 %i.dr
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8164.32.copyload) ]
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8164.32.copyload, i64 %i.dr
  %i.du = add i64 %.sroa.14156.0256, %.sroa.16171.32.copyload ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12168.32.copyload) ]
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.12168.32.copyload, i64 %i.du
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14170.32.copyload) ]
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.14170.32.copyload, i64 %i.du
  %i.dx = load i16, ptr %i.dp, align 2, !noundef !4
  %i.dy = zext i16 %i.dx to i32                   ; 3 uses
  %i.dz = add i32 %.sroa.08.0258, %i.dy           ; 2 uses
  %i.ea = load i32, ptr %i.ds, align 4, !noundef !4
  %i.eb = add i32 %i.dz, %i.ea
  store i32 %i.eb, ptr %i.dv, align 4
  %i.ec = mul nuw i32 %i.dy, %i.dy
  %i.ed = add i32 %i.ec, %.sroa.010.0257          ; 2 uses
  %i.ee = load i32, ptr %i.dt, align 4, !noundef !4
  %i.ef = add i32 %i.ed, %i.ee
  store i32 %i.ef, ptr %i.dw, align 4
  %exitcond299.not = icmp eq i64 %i.dn, %i.bj
  br i1 %exitcond299.not, label %._crit_edge260, label %.lr.ph259

._crit_edge260:                                   ; preds = %bb.u, %bb.v, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSm12split_at_mutCs2mu2Cb9JdUH_5ravif.exit51
  %exitcond301.not = icmp eq i64 %i.db, %i.ag
  br i1 %exitcond301.not, label %._crit_edge269, label %bb.n
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsdEEMmLUVy6d_5rav1e3lrf21sgrproj_stripe_filterhhECs2mu2Cb9JdUH_5ravif(i8 noundef %0, i16 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(816) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %3, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %.sroa.4.0.extract.shift = lshr i16 %1, 8
  %.sroa.4.0.extract.trunc = zext nneg i16 %.sroa.4.0.extract.shift to i32
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
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %.thread, %bb.e
  %.sroa.02.0121 = phi ptr [ @_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust17sgrproj_box_ab_r1Kjc_ECs2mu2Cb9JdUH_5ravif, %bb.e ], [ @_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust17sgrproj_box_ab_r1Kj8_ECs2mu2Cb9JdUH_5ravif, %.thread ], [ @_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust17sgrproj_box_ab_r1Kja_ECs2mu2Cb9JdUH_5ravif, %bb.b ] ; 3 uses
  %.sroa.05.0 = phi ptr [ @_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust17sgrproj_box_ab_r2Kjc_ECs2mu2Cb9JdUH_5ravif, %bb.e ], [ @_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust17sgrproj_box_ab_r2Kj8_ECs2mu2Cb9JdUH_5ravif, %.thread ], [ @_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust17sgrproj_box_ab_r2Kja_ECs2mu2Cb9JdUH_5ravif, %bb.b ] ; 2 uses
  %i.as = add nsw i8 %0, -10
  %.not = icmp ult i8 %i.as, 4                    ; 2 uses
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.at = and i8 %0, 14
  %.not42 = icmp eq i8 %i.at, 14                  ; 2 uses
  br i1 %.not42, label %.split267, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !4, !noundef !4
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !4
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !nonnull !4, !noundef !4
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bb = load i64, ptr %i.ba, align 8, !noundef !4
  call void %.sroa.05.0(ptr noalias nofree noundef nonnull align 4 %i.aa, i64 noundef 386, ptr noalias nofree noundef nonnull align 4 %i.z, i64 noundef 386, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.av, i64 noundef %i.ax, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.az, i64 noundef %i.bb, i64 noundef %4, i64 noundef 0, i64 noundef %i.ac, i32 noundef %i.al), !callees !17
  br label %bb.g

.split267:                                        ; preds = %bb.m, %bb.g
  %i.bc = lshr i64 %i.ae, 1
  %.sroa.05.0.i.i = sub nuw i64 %i.ae, %i.bc      ; 2 uses
  %.not43268 = icmp eq i64 %.sroa.05.0.i.i, 0
  br i1 %.not43268, label %._crit_edge272, label %.lr.ph271

.lr.ph271:                                        ; preds = %.split267
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !nonnull !4 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bg = load i64, ptr %i.bf, align 8            ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !nonnull !4 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bk = load i64, ptr %i.bj, align 8            ; 5 uses
  %i.bl = add i64 %i.ac, 3                        ; 6 uses
  %.not.i48 = icmp ugt i64 %i.bl, 386
  %.sroa.487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.588.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.591.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.496.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.597.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.bm = icmp ult i64 %i.ac, 385                 ; 4 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ac ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ac
  %i.bp = getelementptr inbounds nuw i8, ptr %i.n, i64 256 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.n, i64 264 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %i.bs = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.n, i64 16
end_hunk_0
