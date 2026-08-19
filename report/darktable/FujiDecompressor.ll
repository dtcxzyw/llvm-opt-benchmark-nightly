inline.NumInlined: 1167
inline.NumDeleted: 517
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZNK8rawspeed16FujiDecompressor10decompressEv:bb.a
  store i16 %i.bsf, ptr %i.bsk, align 2, !tbaa !97
  %i.bsl = getelementptr [2 x i8], ptr %i.bsd, i64 %i.bjc
  %i.bsm = getelementptr i8, ptr %i.bsl, i64 -4
  %i.bsn = load i16, ptr %i.bsm, align 2, !tbaa !97
  %i.bso = getelementptr [2 x i8], ptr %i.bsk, i64 %i.bjc
  %i.bsp = getelementptr i8, ptr %i.bso, i64 -2
  store i16 %i.bsn, ptr %i.bsp, align 2, !tbaa !97
  %i.bsq = shl nuw nsw i64 %i.bjf, 3              ; 2 uses
  %i.bsr = add nuw nsw i64 %i.bsq, %i.bjg
  %i.bss = icmp samesign ule i64 %i.bsr, %i.bje
  call void @llvm.assume(i1 %i.bss)
  %i.bst = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.bsq ; 2 uses
  %i.bsu = getelementptr inbounds nuw i8, ptr %i.bst, i64 2
  %i.bsv = load i16, ptr %i.bsu, align 2, !tbaa !97
  %i.bsw = icmp samesign ugt i32 %i.aup, 9
  call void @llvm.assume(i1 %i.bsw)
  %i.bsx = mul nuw nsw i64 %i.bjd, 9              ; 2 uses
  %i.bsy = add nuw nsw i64 %i.bsx, %i.bjc
  %i.bsz = icmp samesign ule i64 %i.bsy, %i.bje
  call void @llvm.assume(i1 %i.bsz)
  %i.bta = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.bsx ; 2 uses
  store i16 %i.bsv, ptr %i.bta, align 2, !tbaa !97
  %i.btb = getelementptr [2 x i8], ptr %i.bst, i64 %i.bjc
  %i.btc = getelementptr i8, ptr %i.btb, i64 -4
  %i.btd = load i16, ptr %i.btc, align 2, !tbaa !97
  %i.bte = getelementptr [2 x i8], ptr %i.bta, i64 %i.bjc
  %i.btf = getelementptr i8, ptr %i.bte, i64 -2
  store i16 %i.btd, ptr %i.btf, align 2, !tbaa !97
  %i.btg = mul nuw nsw i64 %i.bjf, 9              ; 2 uses
  %i.bth = add nuw nsw i64 %i.btg, %i.bjg
  %i.bti = icmp samesign ule i64 %i.bth, %i.bje
  call void @llvm.assume(i1 %i.bti)
  %i.btj = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.btg ; 2 uses
  %i.btk = getelementptr inbounds nuw i8, ptr %i.btj, i64 2
  %i.btl = load i16, ptr %i.btk, align 2, !tbaa !97
  %i.btm = icmp samesign ugt i32 %i.aup, 10
  call void @llvm.assume(i1 %i.btm)
  %i.btn = mul nuw nsw i64 %i.bjd, 10             ; 2 uses
  %i.bto = add nuw nsw i64 %i.btn, %i.bjc
  %i.btp = icmp samesign ule i64 %i.bto, %i.bje
  call void @llvm.assume(i1 %i.btp)
  %i.btq = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.btn ; 2 uses
  store i16 %i.btl, ptr %i.btq, align 2, !tbaa !97
  %i.btr = getelementptr [2 x i8], ptr %i.btj, i64 %i.bjc
  %i.bts = getelementptr i8, ptr %i.btr, i64 -4
  %i.btt = load i16, ptr %i.bts, align 2, !tbaa !97
  %i.btu = getelementptr [2 x i8], ptr %i.btq, i64 %i.bjc
  %i.btv = getelementptr i8, ptr %i.btu, i64 -2
  store i16 %i.btt, ptr %i.btv, align 2, !tbaa !97
  %i.btw = mul nuw nsw i64 %i.bjf, 10             ; 2 uses
  %i.btx = add nuw nsw i64 %i.btw, %i.bjg
  %i.bty = icmp samesign ule i64 %i.btx, %i.bje
  call void @llvm.assume(i1 %i.bty)
  %i.btz = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.btw ; 2 uses
  %i.bua = getelementptr inbounds nuw i8, ptr %i.btz, i64 2
  %i.bub = load i16, ptr %i.bua, align 2, !tbaa !97
  %i.buc = icmp samesign ugt i32 %i.aup, 11
  call void @llvm.assume(i1 %i.buc)
  %i.bud = mul nuw nsw i64 %i.bjd, 11             ; 2 uses
  %i.bue = add nuw nsw i64 %i.bud, %i.bjc
  %i.buf = icmp samesign ule i64 %i.bue, %i.bje
  call void @llvm.assume(i1 %i.buf)
  %i.bug = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.bud ; 2 uses
  store i16 %i.bub, ptr %i.bug, align 2, !tbaa !97
  %i.buh = getelementptr [2 x i8], ptr %i.btz, i64 %i.bjc
  %i.bui = getelementptr i8, ptr %i.buh, i64 -4
  %i.buj = load i16, ptr %i.bui, align 2, !tbaa !97
  %i.buk = getelementptr [2 x i8], ptr %i.bug, i64 %i.bjc
  %i.bul = getelementptr i8, ptr %i.buk, i64 -2
  store i16 %i.buj, ptr %i.bul, align 2, !tbaa !97
  %i.bum = mul nuw nsw i64 %i.bjf, 11             ; 2 uses
  %i.bun = add nuw nsw i64 %i.bum, %i.bjg
  %i.buo = icmp samesign ule i64 %i.bun, %i.bje
  call void @llvm.assume(i1 %i.buo)
  %i.bup = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.bum ; 2 uses
  %i.buq = getelementptr inbounds nuw i8, ptr %i.bup, i64 2
  %i.bur = icmp samesign ugt i32 %i.aup, 12
  call void @llvm.assume(i1 %i.bur)
  %i.bus = mul nuw nsw i64 %i.bjd, 12
  br label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i61.i.i.i

bb.eg:                                            ; preds = %bb.ed
  %i.but = add nuw nsw i64 %i.bjf, %i.bjg
  %i.buu = icmp samesign ule i64 %i.but, %i.bje
  call void @llvm.assume(i1 %i.buu)
  %i.buv = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.bjf ; 2 uses
  %i.buw = getelementptr inbounds nuw i8, ptr %i.buv, i64 2
  %i.bux = load i16, ptr %i.buw, align 2, !tbaa !97
  %i.buy = icmp samesign ugt i32 %i.aup, 2
  call void @llvm.assume(i1 %i.buy)
  %i.buz = shl nuw nsw i64 %i.bjd, 1              ; 2 uses
  %i.bva = add nuw nsw i64 %i.buz, %i.bjc
  %i.bvb = icmp samesign ule i64 %i.bva, %i.bje
  call void @llvm.assume(i1 %i.bvb)
  %i.bvc = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.buz ; 2 uses
  store i16 %i.bux, ptr %i.bvc, align 2, !tbaa !97
  %i.bvd = getelementptr [2 x i8], ptr %i.buv, i64 %i.bjc
  %i.bve = getelementptr i8, ptr %i.bvd, i64 -4
  %i.bvf = load i16, ptr %i.bve, align 2, !tbaa !97
  %i.bvg = getelementptr [2 x i8], ptr %i.bvc, i64 %i.bjc
  %i.bvh = getelementptr i8, ptr %i.bvg, i64 -2
  store i16 %i.bvf, ptr %i.bvh, align 2, !tbaa !97
  %i.bvi = shl nuw nsw i64 %i.bjf, 1              ; 2 uses
  %i.bvj = add nuw nsw i64 %i.bvi, %i.bjg
  %i.bvk = icmp samesign ule i64 %i.bvj, %i.bje
  call void @llvm.assume(i1 %i.bvk)
  %i.bvl = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.bvi ; 2 uses
  %i.bvm = getelementptr inbounds nuw i8, ptr %i.bvl, i64 2
  %i.bvn = load i16, ptr %i.bvm, align 2, !tbaa !97
  %i.bvo = icmp samesign ugt i32 %i.aup, 3
  call void @llvm.assume(i1 %i.bvo)
  %i.bvp = mul nuw nsw i64 %i.bjd, 3              ; 2 uses
  %i.bvq = add nuw nsw i64 %i.bvp, %i.bjc
  %i.bvr = icmp samesign ule i64 %i.bvq, %i.bje
  call void @llvm.assume(i1 %i.bvr)
  %i.bvs = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.bvp ; 2 uses
  store i16 %i.bvn, ptr %i.bvs, align 2, !tbaa !97
  %i.bvt = getelementptr [2 x i8], ptr %i.bvl, i64 %i.bjc
  %i.bvu = getelementptr i8, ptr %i.bvt, i64 -4
  %i.bvv = load i16, ptr %i.bvu, align 2, !tbaa !97
  %i.bvw = getelementptr [2 x i8], ptr %i.bvs, i64 %i.bjc
  %i.bvx = getelementptr i8, ptr %i.bvw, i64 -2
  store i16 %i.bvv, ptr %i.bvx, align 2, !tbaa !97
  %i.bvy = mul nuw nsw i64 %i.bjf, 3              ; 2 uses
  %i.bvz = add nuw nsw i64 %i.bvy, %i.bjg
  %i.bwa = icmp samesign ule i64 %i.bvz, %i.bje
  call void @llvm.assume(i1 %i.bwa)
  %i.bwb = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.bvy ; 2 uses
  %i.bwc = getelementptr inbounds nuw i8, ptr %i.bwb, i64 2
  %i.bwd = icmp samesign ugt i32 %i.aup, 4
  call void @llvm.assume(i1 %i.bwd)
  %i.bwe = shl nuw nsw i64 %i.bjd, 2
  br label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i61.i.i.i

_ZSt4fillIPiiEvT_S1_RKT0_.exit.i61.i.i.i:         ; preds = %bb.eg, %bb.ef, %bb.ee
  %.sink163.i62.i.i.i = phi i64 [ %i.bwe, %bb.eg ], [ %i.bus, %bb.ef ], [ %i.brj, %bb.ee ] ; 2 uses
  %.sink158.in.i63.i.i.i = phi ptr [ %i.bwc, %bb.eg ], [ %i.buq, %bb.ef ], [ %i.brh, %bb.ee ]
  %.sink157.i64.i.i.i = phi ptr [ %i.bwb, %bb.eg ], [ %i.bup, %bb.ef ], [ %i.brg, %bb.ee ]
  %.sink158.i65.i.i.i = load i16, ptr %.sink158.in.i63.i.i.i, align 2, !tbaa !97
  %i.bwf = add nuw nsw i64 %.sink163.i62.i.i.i, %i.bjc
  %i.bwg = icmp samesign ule i64 %i.bwf, %i.bje
  call void @llvm.assume(i1 %i.bwg)
  %i.bwh = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %.sink163.i62.i.i.i ; 2 uses
  store i16 %.sink158.i65.i.i.i, ptr %i.bwh, align 2, !tbaa !97
  %i.bwi = getelementptr [2 x i8], ptr %.sink157.i64.i.i.i, i64 %i.bjc
  %i.bwj = getelementptr i8, ptr %i.bwi, i64 -4
  %i.bwk = load i16, ptr %i.bwj, align 2, !tbaa !97
  %i.bwl = getelementptr [2 x i8], ptr %i.bwh, i64 %i.bjc
  %i.bwm = getelementptr i8, ptr %i.bwl, i64 -2
  store i16 %i.bwk, ptr %i.bwm, align 2, !tbaa !97
  %i.bwn = add nuw nsw i32 %.017.i97.i49.i.i.i, 1 ; 2 uses
  %.not.i.i66.i.i.i = icmp eq i32 %i.bwn, 6
  br i1 %.not.i.i66.i.i.i, label %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block23fuji_bayer_decode_blockEi.exit.i.i.i, label %switch.lookup233, !llvm.loop !255

_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block23fuji_bayer_decode_blockEi.exit.i.i.i: ; preds = %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i61.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.eh

bb.eh:                                            ; preds = %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block23fuji_bayer_decode_blockEi.exit.i.i.i, %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block19xtrans_decode_blockEi.exit.i.i.i
  %i.bwo = load ptr, ptr %i.dp, align 8, !tbaa !240, !nonnull !233, !align !241
  %i.bwp = getelementptr inbounds nuw i8, ptr %i.bwo, i64 3
  %i.bwq = load i8, ptr %i.bwp, align 1, !tbaa !142
  %i.bwr = icmp eq i8 %i.bwq, 16
  %i.bws = load i8, ptr %i.et, align 2, !tbaa !139
  %i.bwt = zext i8 %i.bws to i64
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.nu, %i.bwt ; 2 uses
  %i.bwu = load i16, ptr %i.nw, align 4, !tbaa !138
  %i.bwv = zext i16 %i.bwu to i32                 ; 6 uses
  br i1 %i.bwr, label %bb.ei, label %bb.el

bb.ei:                                            ; preds = %bb.eh
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ej, label %_ZNK8rawspeed12_GLOBAL__N_19FujiStrip7numMCUsENS_8iPoint2DE.exit.i.i.i.i.i

bb.ej:                                            ; preds = %bb.ei
  %i.bww = mul nuw nsw i32 %i.nv, %i.bwv
  %i.bwx = load i16, ptr %i.nx, align 2, !tbaa !136
  %i.bwy = zext i16 %i.bwx to i32                 ; 2 uses
  %i.bwz = icmp samesign uge i32 %i.bww, %i.bwy
  call void @llvm.assume(i1 %i.bwz)
  %i.bxa = mul nuw nsw i32 %i.bwv, %indvars110.i.i
  %i.bxb = sub nsw i32 %i.bwy, %i.bxa
  br label %_ZNK8rawspeed12_GLOBAL__N_19FujiStrip7numMCUsENS_8iPoint2DE.exit.i.i.i.i.i

_ZNK8rawspeed12_GLOBAL__N_19FujiStrip7numMCUsENS_8iPoint2DE.exit.i.i.i.i.i: ; preds = %bb.ej, %bb.ei
  %.0.i.i.i.i141.i.i.i = phi i32 [ %i.bxb, %bb.ej ], [ %i.bwv, %bb.ei ] ; 2 uses
  %.0.i.i.off.i.i.i.i.i = add nsw i32 %.0.i.i.i.i141.i.i.i, 5
  %.not70.i.i.i.i.i = icmp ult i32 %.0.i.i.off.i.i.i.i.i, 11
  br i1 %.not70.i.i.i.i.i, label %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block19copy_line_to_xtransERKNS0_9FujiStripEi.exit.i.i.i, label %.preheader66.lr.ph.i.i.i.i.i

.preheader66.lr.ph.i.i.i.i.i:                     ; preds = %_ZNK8rawspeed12_GLOBAL__N_19FujiStrip7numMCUsENS_8iPoint2DE.exit.i.i.i.i.i
  %i.bxc = sdiv i32 %.0.i.i.i.i141.i.i.i, 6
  %.sroa.060.0.copyload.i.i.i.i.i = load ptr, ptr %7, align 8, !tbaa !200 ; 6 uses
  %.sroa.462.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.659.0..sroa_idx.i.i, align 8, !tbaa !100 ; 3 uses
  %.sroa.563.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.760.0..sroa_idx.i.i, align 4, !tbaa !100 ; 3 uses
  %.sroa.664.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.861.0..sroa_idx.i.i, align 8, !tbaa !100
  %i.bxd = icmp ne i32 %.sroa.462.0.copyload.i.i.i.i.i, 0
  call void @llvm.assume(i1 %i.bxd)
  %i.bxe = icmp sge i32 %.sroa.462.0.copyload.i.i.i.i.i, %.sroa.563.0.copyload.i.i.i.i.i
  call void @llvm.assume(i1 %i.bxe)
  %i.bxf = zext nneg i32 %.sroa.563.0.copyload.i.i.i.i.i to i64 ; 4 uses
  %i.bxg = zext nneg i32 %.sroa.664.0.copyload.i.i.i.i.i to i64 ; 4 uses
  %i.bxh = zext nneg i32 %.sroa.462.0.copyload.i.i.i.i.i to i64 ; 6 uses
  %i.bxi = mul nuw nsw i64 %indvars.iv.i20.i.i, 6 ; 7 uses
  %i.bxj = zext i32 %i.bxc to i64
  %i.bxk = icmp samesign ult i64 %i.bxi, %i.bxg
  %i.bxl = mul nuw nsw i64 %i.bxi, %i.bxh
  %i.bxm = getelementptr inbounds nuw [2 x i8], ptr %.sroa.060.0.copyload.i.i.i.i.i, i64 %i.bxl ; 6 uses
  %i.bxn = load i32, ptr %i.eh, align 4, !tbaa !213 ; 7 uses
  %i.bxo = load i32, ptr %i.eg, align 8, !tbaa !210 ; 13 uses
  %i.bxp = icmp sge i32 %i.bxo, %i.bxn
  call void @llvm.assume(i1 %i.bxp)
  %i.bxq = mul nuw nsw i32 %i.bxo, 7
  %.sroa.0.0.copyload.i.i33.i.i.i.i.i = load ptr, ptr %i.ec, align 8, !tbaa !200, !noalias !256 ; 12 uses
  %i.bxr = zext nneg i32 %i.bxq to i64
  %i.bxs = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i33.i.i.i.i.i, i64 %i.bxr ; 4 uses
  call void @llvm.assume(i1 %i.bxk)
  %i.bxt = shl nuw nsw i32 %i.bxo, 1
  %i.bxu = zext nneg i32 %i.bxt to i64
  %i.bxv = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i33.i.i.i.i.i, i64 %i.bxu ; 2 uses
  %i.bxw = mul nuw nsw i32 %i.bxo, 15
  %i.bxx = zext nneg i32 %i.bxw to i64
  %i.bxy = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i33.i.i.i.i.i, i64 %i.bxx ; 2 uses
  %i.bxz = or disjoint i64 %i.bxi, 1
  %i.bya = mul nuw nsw i64 %i.bxz, %i.bxh
  %i.byb = getelementptr inbounds nuw [2 x i8], ptr %.sroa.060.0.copyload.i.i.i.i.i, i64 %i.bya ; 6 uses
  %i.byc = shl nuw nsw i32 %i.bxo, 3
  %i.byd = zext nneg i32 %i.byc to i64
  %i.bye = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i33.i.i.i.i.i, i64 %i.byd ; 4 uses
  %i.byf = add nuw nsw i64 %i.bxi, 2              ; 2 uses
  %i.byg = icmp samesign ult i64 %i.byf, %i.bxg
  %i.byh = mul nuw nsw i64 %i.byf, %i.bxh
  %i.byi = getelementptr inbounds nuw [2 x i8], ptr %.sroa.060.0.copyload.i.i.i.i.i, i64 %i.byh ; 6 uses
  %i.byj = shl nuw nsw i32 %i.bxo, 4
  %i.byk = zext nneg i32 %i.byj to i64
  %i.byl = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i33.i.i.i.i.i, i64 %i.byk ; 3 uses
  call void @llvm.assume(i1 %i.byg)
  %i.bym = mul nuw nsw i32 %i.bxo, 3
  %i.byn = zext nneg i32 %i.bym to i64
  %i.byo = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i33.i.i.i.i.i, i64 %i.byn ; 3 uses
  %i.byp = mul nuw nsw i32 %i.bxo, 9
  %i.byq = zext nneg i32 %i.byp to i64
  %i.byr = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i33.i.i.i.i.i, i64 %i.byq ; 2 uses
  %i.bys = add nuw nsw i64 %i.bxi, 3
  %i.byt = mul nuw nsw i64 %i.bys, %i.bxh
  %i.byu = getelementptr inbounds nuw [2 x i8], ptr %.sroa.060.0.copyload.i.i.i.i.i, i64 %i.byt ; 6 uses
  %i.byv = mul nuw nsw i32 %i.bxo, 10
  %i.byw = zext nneg i32 %i.byv to i64
  %i.byx = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i33.i.i.i.i.i, i64 %i.byw ; 4 uses
  %i.byy = add nuw nsw i64 %i.bxi, 4              ; 2 uses
  %i.byz = icmp samesign ult i64 %i.byy, %i.bxg
  %i.bza = mul nuw nsw i64 %i.byy, %i.bxh
  %i.bzb = getelementptr inbounds nuw [2 x i8], ptr %.sroa.060.0.copyload.i.i.i.i.i, i64 %i.bza ; 6 uses
  %i.bzc = mul nuw nsw i32 %i.bxo, 11
  %i.bzd = zext nneg i32 %i.bzc to i64
  %i.bze = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i33.i.i.i.i.i, i64 %i.bzd ; 4 uses
  call void @llvm.assume(i1 %i.byz)
  %i.bzf = shl nuw nsw i32 %i.bxo, 2
  %i.bzg = zext nneg i32 %i.bzf to i64
  %i.bzh = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i33.i.i.i.i.i, i64 %i.bzg ; 3 uses
  %i.bzi = mul nuw nsw i32 %i.bxo, 17
  %i.bzj = zext nneg i32 %i.bzi to i64
  %i.bzk = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i33.i.i.i.i.i, i64 %i.bzj ; 3 uses
  %i.bzl = add nuw nsw i64 %i.bxi, 5              ; 2 uses
  %i.bzm = icmp samesign ult i64 %i.bzl, %i.bxg
  %i.bzn = mul nuw nsw i64 %i.bzl, %i.bxh
  %i.bzo = getelementptr inbounds nuw [2 x i8], ptr %.sroa.060.0.copyload.i.i.i.i.i, i64 %i.bzn ; 6 uses
  call void @llvm.assume(i1 %i.bzm)
  %i.bzp = mul nuw nsw i32 %i.bxo, 12
  %i.bzq = zext nneg i32 %i.bzp to i64
  %i.bzr = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i33.i.i.i.i.i, i64 %i.bzq ; 2 uses
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ek, %.preheader66.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ 0, %.preheader66.lr.ph.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i, %bb.ek ] ; 2 uses
  %.val.val.i.i.i.i.i = load i16, ptr %i.nw, align 4, !tbaa !138
  %i.bzs = zext i16 %.val.val.i.i.i.i.i to i32
  %i.bzt = mul nuw nsw i32 %i.bzs, %indvars110.i.i
  %i.bzu = trunc i64 %indvars.iv.i.i.i.i.i to i32 ; 2 uses
  %12 = mul i32 %i.bzu, 6
  %13 = add nsw i32 %i.bzt, %12                   ; 3 uses
  %.val32.val.i.i.i.i.i = load i16, ptr %i.nt, align 4, !tbaa !140
  %i.bzv = zext i16 %.val32.val.i.i.i.i.i to i64
  %i.bzw = icmp samesign ult i64 %indvars.iv.i20.i.i, %i.bzv
  call void @llvm.assume(i1 %i.bzw)
  %i.bzx = icmp sgt i32 %13, -1
  %i.bzy = zext nneg i32 %13 to i64               ; 11 uses
  %i.bzz = getelementptr inbounds nuw [2 x i8], ptr %i.bxm, i64 %i.bzy
  %i.caa = add nuw nsw i64 %i.bzy, 1              ; 6 uses
  %i.cab = icmp samesign ult i32 %13, %.sroa.563.0.copyload.i.i.i.i.i
  %i.cac = getelementptr inbounds nuw [2 x i8], ptr %i.bxm, i64 %i.caa
  %14 = add nuw nsw i64 %i.bzy, 2                 ; 7 uses
  %15 = icmp samesign ule i64 %14, %i.bxf
  %16 = getelementptr inbounds nuw [2 x i8], ptr %i.bxm, i64 %14
  %i.cad = add nuw nsw i64 %i.bzy, 3              ; 7 uses
  %i.cae = icmp samesign ule i64 %i.cad, %i.bxf
  %i.caf = getelementptr inbounds nuw [2 x i8], ptr %i.bxm, i64 %i.cad
  %17 = mul i32 %i.bzu, 12
  %18 = insertelement <2 x i32> poison, i32 %17, i64 0 ; 2 uses
  %19 = shufflevector <2 x i32> %18, <2 x i32> poison, <2 x i32> zeroinitializer
  %20 = shufflevector <2 x i32> %18, <2 x i32> poison, <4 x i32> zeroinitializer
  %21 = or disjoint <4 x i32> %20, <i32 0, i32 2, i32 0, i32 0>
  %22 = add <4 x i32> %21, <i32 0, i32 0, i32 6, i32 8>
  %23 = udiv <4 x i32> %22, splat (i32 3)
  %24 = and <4 x i32> %23, splat (i32 1073741822)
  %25 = add nuw nsw <4 x i32> %24, <i32 1, i32 2, i32 1, i32 2> ; 4 uses
  %26 = extractelement <4 x i32> %25, i64 0       ; 2 uses
  %27 = icmp samesign ult i32 %26, %i.bxn
  call void @llvm.assume(i1 %27)
  %i.cag = zext nneg i32 %26 to i64               ; 6 uses
  %i.cah = getelementptr inbounds nuw [2 x i8], ptr %i.bxs, i64 %i.cag
  %28 = load i16, ptr %i.cah, align 2, !tbaa !97
  call void @llvm.assume(i1 %i.bzx)
  store i16 %28, ptr %i.bzz, align 2, !tbaa !97
  %i.cai = extractelement <4 x i32> %25, i64 1    ; 2 uses
  %29 = icmp samesign ult i32 %i.cai, %i.bxn
  call void @llvm.assume(i1 %29)
  %30 = zext nneg i32 %i.cai to i64               ; 6 uses
  %i.caj = getelementptr inbounds nuw [2 x i8], ptr %i.bxs, i64 %30
  %31 = load i16, ptr %i.caj, align 2, !tbaa !97
  call void @llvm.assume(i1 %i.cab)
  store i16 %31, ptr %i.cac, align 2, !tbaa !97
  %i.cak = extractelement <4 x i32> %25, i64 2    ; 2 uses
  %i.cal = icmp samesign ult i32 %i.cak, %i.bxn
  %i.cam = zext nneg i32 %i.cak to i64            ; 6 uses
  %i.can = getelementptr inbounds nuw [2 x i8], ptr %i.bxs, i64 %i.cam
  %i.cao = extractelement <4 x i32> %25, i64 3    ; 2 uses
  %i.cap = icmp samesign ult i32 %i.cao, %i.bxn
  %i.caq = zext nneg i32 %i.cao to i64            ; 6 uses
  %i.car = getelementptr inbounds nuw [2 x i8], ptr %i.bxs, i64 %i.caq
  %32 = add nuw nsw i64 %i.bzy, 4                 ; 7 uses
  %33 = icmp samesign ule i64 %32, %i.bxf
  %34 = getelementptr inbounds nuw [2 x i8], ptr %i.bxm, i64 %32
  %35 = add <2 x i32> %19, <i32 4, i32 10>
  %36 = udiv <2 x i32> %35, splat (i32 3)
  %37 = and <2 x i32> %36, splat (i32 1073741822)
  %38 = add nuw nsw <2 x i32> %37, splat (i32 2)  ; 2 uses
  %i.cas = extractelement <2 x i32> %38, i64 0    ; 2 uses
  %i.cat = icmp samesign ult i32 %i.cas, %i.bxn
  call void @llvm.assume(i1 %i.cat)
  %i.cau = zext nneg i32 %i.cas to i64            ; 6 uses
  %i.cav = getelementptr inbounds nuw [2 x i8], ptr %i.bxv, i64 %i.cau
  %i.caw = load i16, ptr %i.cav, align 2, !tbaa !97
  call void @llvm.assume(i1 %15)
  store i16 %i.caw, ptr %16, align 2, !tbaa !97
  call void @llvm.assume(i1 %i.cal)
  %39 = load i16, ptr %i.can, align 2, !tbaa !97
  call void @llvm.assume(i1 %i.cae)
  store i16 %39, ptr %i.caf, align 2, !tbaa !97
  call void @llvm.assume(i1 %i.cap)
  %i.cax = load i16, ptr %i.car, align 2, !tbaa !97
  call void @llvm.assume(i1 %33)
  store i16 %i.cax, ptr %34, align 2, !tbaa !97
  %i.cay = extractelement <2 x i32> %38, i64 1    ; 2 uses
  %i.caz = icmp samesign ult i32 %i.cay, %i.bxn
  call void @llvm.assume(i1 %i.caz)
  %i.cba = zext nneg i32 %i.cay to i64            ; 6 uses
  %i.cbb = getelementptr inbounds nuw [2 x i8], ptr %i.bxy, i64 %i.cba
  %i.cbc = load i16, ptr %i.cbb, align 2, !tbaa !97
  %i.cbd = add nuw nsw i64 %i.bzy, 5              ; 7 uses
  %i.cbe = icmp samesign ule i64 %i.cbd, %i.bxf
  call void @llvm.assume(i1 %i.cbe)
  %i.cbf = getelementptr inbounds nuw [2 x i8], ptr %i.bxm, i64 %i.cbd
  store i16 %i.cbc, ptr %i.cbf, align 2, !tbaa !97
  %i.cbg = getelementptr inbounds nuw [2 x i8], ptr %i.bye, i64 %i.cag
  %i.cbh = load i16, ptr %i.cbg, align 2, !tbaa !97
  %i.cbi = getelementptr inbounds nuw [2 x i8], ptr %i.byb, i64 %i.bzy
  store i16 %i.cbh, ptr %i.cbi, align 2, !tbaa !97
  %i.cbj = getelementptr inbounds nuw [2 x i8], ptr %i.bye, i64 %30
  %i.cbk = load i16, ptr %i.cbj, align 2, !tbaa !97
  %i.cbl = getelementptr inbounds nuw [2 x i8], ptr %i.byb, i64 %i.caa
  store i16 %i.cbk, ptr %i.cbl, align 2, !tbaa !97
  %i.cbm = getelementptr inbounds nuw [2 x i8], ptr %i.bxy, i64 %i.cau
  %i.cbn = load i16, ptr %i.cbm, align 2, !tbaa !97
  %i.cbo = getelementptr inbounds nuw [2 x i8], ptr %i.byb, i64 %14
  store i16 %i.cbn, ptr %i.cbo, align 2, !tbaa !97
  %i.cbp = getelementptr inbounds nuw [2 x i8], ptr %i.bye, i64 %i.cam
  %i.cbq = load i16, ptr %i.cbp, align 2, !tbaa !97
  %i.cbr = getelementptr inbounds nuw [2 x i8], ptr %i.byb, i64 %i.cad
  store i16 %i.cbq, ptr %i.cbr, align 2, !tbaa !97
  %i.cbs = getelementptr inbounds nuw [2 x i8], ptr %i.bye, i64 %i.caq
  %i.cbt = load i16, ptr %i.cbs, align 2, !tbaa !97
  %i.cbu = getelementptr inbounds nuw [2 x i8], ptr %i.byb, i64 %32
  store i16 %i.cbt, ptr %i.cbu, align 2, !tbaa !97
  %i.cbv = getelementptr inbounds nuw [2 x i8], ptr %i.bxv, i64 %i.cba
  %i.cbw = load i16, ptr %i.cbv, align 2, !tbaa !97
  %i.cbx = getelementptr inbounds nuw [2 x i8], ptr %i.byb, i64 %i.cbd
  store i16 %i.cbw, ptr %i.cbx, align 2, !tbaa !97
  %i.cby = getelementptr inbounds nuw [2 x i8], ptr %i.byl, i64 %i.cag
  %i.cbz = load i16, ptr %i.cby, align 2, !tbaa !97
  %i.cca = getelementptr inbounds nuw [2 x i8], ptr %i.byi, i64 %i.bzy
  store i16 %i.cbz, ptr %i.cca, align 2, !tbaa !97
  %i.ccb = getelementptr inbounds nuw [2 x i8], ptr %i.byo, i64 %30
  %i.ccc = load i16, ptr %i.ccb, align 2, !tbaa !97
  %i.ccd = getelementptr inbounds nuw [2 x i8], ptr %i.byi, i64 %i.caa
  store i16 %i.ccc, ptr %i.ccd, align 2, !tbaa !97
  %i.cce = getelementptr inbounds nuw [2 x i8], ptr %i.byr, i64 %i.cau
  %i.ccf = load i16, ptr %i.cce, align 2, !tbaa !97
  %i.ccg = getelementptr inbounds nuw [2 x i8], ptr %i.byi, i64 %14
  store i16 %i.ccf, ptr %i.ccg, align 2, !tbaa !97
  %i.cch = getelementptr inbounds nuw [2 x i8], ptr %i.byo, i64 %i.cam
  %i.cci = load i16, ptr %i.cch, align 2, !tbaa !97
  %i.ccj = getelementptr inbounds nuw [2 x i8], ptr %i.byi, i64 %i.cad
  store i16 %i.cci, ptr %i.ccj, align 2, !tbaa !97
  %i.cck = getelementptr inbounds nuw [2 x i8], ptr %i.byl, i64 %i.caq
  %i.ccl = load i16, ptr %i.cck, align 2, !tbaa !97
  %i.ccm = getelementptr inbounds nuw [2 x i8], ptr %i.byi, i64 %32
  store i16 %i.ccl, ptr %i.ccm, align 2, !tbaa !97
  %i.ccn = getelementptr inbounds nuw [2 x i8], ptr %i.byr, i64 %i.cba
  %i.cco = load i16, ptr %i.ccn, align 2, !tbaa !97
  %i.ccp = getelementptr inbounds nuw [2 x i8], ptr %i.byi, i64 %i.cbd
  store i16 %i.cco, ptr %i.ccp, align 2, !tbaa !97
  %i.ccq = getelementptr inbounds nuw [2 x i8], ptr %i.byx, i64 %i.cag
  %i.ccr = load i16, ptr %i.ccq, align 2, !tbaa !97
  %i.ccs = getelementptr inbounds nuw [2 x i8], ptr %i.byu, i64 %i.bzy
  store i16 %i.ccr, ptr %i.ccs, align 2, !tbaa !97
  %i.cct = getelementptr inbounds nuw [2 x i8], ptr %i.byx, i64 %30
  %i.ccu = load i16, ptr %i.cct, align 2, !tbaa !97
  %i.ccv = getelementptr inbounds nuw [2 x i8], ptr %i.byu, i64 %i.caa
  store i16 %i.ccu, ptr %i.ccv, align 2, !tbaa !97
  %i.ccw = getelementptr inbounds nuw [2 x i8], ptr %i.byl, i64 %i.cau
  %i.ccx = load i16, ptr %i.ccw, align 2, !tbaa !97
  %i.ccy = getelementptr inbounds nuw [2 x i8], ptr %i.byu, i64 %14
  store i16 %i.ccx, ptr %i.ccy, align 2, !tbaa !97
  %i.ccz = getelementptr inbounds nuw [2 x i8], ptr %i.byx, i64 %i.cam
  %i.cda = load i16, ptr %i.ccz, align 2, !tbaa !97
  %i.cdb = getelementptr inbounds nuw [2 x i8], ptr %i.byu, i64 %i.cad
  store i16 %i.cda, ptr %i.cdb, align 2, !tbaa !97
  %i.cdc = getelementptr inbounds nuw [2 x i8], ptr %i.byx, i64 %i.caq
  %i.cdd = load i16, ptr %i.cdc, align 2, !tbaa !97
  %i.cde = getelementptr inbounds nuw [2 x i8], ptr %i.byu, i64 %32
  store i16 %i.cdd, ptr %i.cde, align 2, !tbaa !97
  %i.cdf = getelementptr inbounds nuw [2 x i8], ptr %i.byo, i64 %i.cba
  %i.cdg = load i16, ptr %i.cdf, align 2, !tbaa !97
  %i.cdh = getelementptr inbounds nuw [2 x i8], ptr %i.byu, i64 %i.cbd
  store i16 %i.cdg, ptr %i.cdh, align 2, !tbaa !97
  %i.cdi = getelementptr inbounds nuw [2 x i8], ptr %i.bze, i64 %i.cag
  %i.cdj = load i16, ptr %i.cdi, align 2, !tbaa !97
  %i.cdk = getelementptr inbounds nuw [2 x i8], ptr %i.bzb, i64 %i.bzy
  store i16 %i.cdj, ptr %i.cdk, align 2, !tbaa !97
  %i.cdl = getelementptr inbounds nuw [2 x i8], ptr %i.bze, i64 %30
  %i.cdm = load i16, ptr %i.cdl, align 2, !tbaa !97
  %i.cdn = getelementptr inbounds nuw [2 x i8], ptr %i.bzb, i64 %i.caa
  store i16 %i.cdm, ptr %i.cdn, align 2, !tbaa !97
  %i.cdo = getelementptr inbounds nuw [2 x i8], ptr %i.bzh, i64 %i.cau
  %i.cdp = load i16, ptr %i.cdo, align 2, !tbaa !97
  %i.cdq = getelementptr inbounds nuw [2 x i8], ptr %i.bzb, i64 %14
  store i16 %i.cdp, ptr %i.cdq, align 2, !tbaa !97
  %i.cdr = getelementptr inbounds nuw [2 x i8], ptr %i.bze, i64 %i.cam
  %i.cds = load i16, ptr %i.cdr, align 2, !tbaa !97
  %i.cdt = getelementptr inbounds nuw [2 x i8], ptr %i.bzb, i64 %i.cad
  store i16 %i.cds, ptr %i.cdt, align 2, !tbaa !97
  %i.cdu = getelementptr inbounds nuw [2 x i8], ptr %i.bze, i64 %i.caq
  %i.cdv = load i16, ptr %i.cdu, align 2, !tbaa !97
  %i.cdw = getelementptr inbounds nuw [2 x i8], ptr %i.bzb, i64 %32
  store i16 %i.cdv, ptr %i.cdw, align 2, !tbaa !97
  %i.cdx = getelementptr inbounds nuw [2 x i8], ptr %i.bzk, i64 %i.cba
  %i.cdy = load i16, ptr %i.cdx, align 2, !tbaa !97
  %i.cdz = getelementptr inbounds nuw [2 x i8], ptr %i.bzb, i64 %i.cbd
  store i16 %i.cdy, ptr %i.cdz, align 2, !tbaa !97
  %i.cea = getelementptr inbounds nuw [2 x i8], ptr %i.bzh, i64 %i.cag
  %i.ceb = load i16, ptr %i.cea, align 2, !tbaa !97
  %i.cec = getelementptr inbounds nuw [2 x i8], ptr %i.bzo, i64 %i.bzy
  store i16 %i.ceb, ptr %i.cec, align 2, !tbaa !97
  %i.ced = getelementptr inbounds nuw [2 x i8], ptr %i.bzk, i64 %30
  %i.cee = load i16, ptr %i.ced, align 2, !tbaa !97
  %i.cef = getelementptr inbounds nuw [2 x i8], ptr %i.bzo, i64 %i.caa
  store i16 %i.cee, ptr %i.cef, align 2, !tbaa !97
  %i.ceg = getelementptr inbounds nuw [2 x i8], ptr %i.bzr, i64 %i.cau
  %i.ceh = load i16, ptr %i.ceg, align 2, !tbaa !97
  %i.cei = getelementptr inbounds nuw [2 x i8], ptr %i.bzo, i64 %14
  store i16 %i.ceh, ptr %i.cei, align 2, !tbaa !97
  %i.cej = getelementptr inbounds nuw [2 x i8], ptr %i.bzk, i64 %i.cam
  %i.cek = load i16, ptr %i.cej, align 2, !tbaa !97
  %i.cel = getelementptr inbounds nuw [2 x i8], ptr %i.bzo, i64 %i.cad
  store i16 %i.cek, ptr %i.cel, align 2, !tbaa !97
  %i.cem = getelementptr inbounds nuw [2 x i8], ptr %i.bzh, i64 %i.caq
  %i.cen = load i16, ptr %i.cem, align 2, !tbaa !97
  %i.ceo = getelementptr inbounds nuw [2 x i8], ptr %i.bzo, i64 %32
  store i16 %i.cen, ptr %i.ceo, align 2, !tbaa !97
  %i.cep = getelementptr inbounds nuw [2 x i8], ptr %i.bzr, i64 %i.cba
  %i.ceq = load i16, ptr %i.cep, align 2, !tbaa !97
  %i.cer = getelementptr inbounds nuw [2 x i8], ptr %i.bzo, i64 %i.cbd
  store i16 %i.ceq, ptr %i.cer, align 2, !tbaa !97
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %.not.i.i142.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, %i.bxj
  br i1 %.not.i.i142.i.i.i, label %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block19copy_line_to_xtransERKNS0_9FujiStripEi.exit.i.i.i, label %bb.ek, !llvm.loop !259

bb.el:                                            ; preds = %bb.eh
  br i1 %.not.i.i.i.i.i.i.i, label %bb.em, label %_ZNK8rawspeed12_GLOBAL__N_19FujiStrip7numMCUsENS_8iPoint2DE.exit.i.i144.i.i.i

bb.em:                                            ; preds = %bb.el
  %i.ces = mul nuw nsw i32 %i.nv, %i.bwv
  %i.cet = load i16, ptr %i.nx, align 2, !tbaa !136
  %i.ceu = zext i16 %i.cet to i32                 ; 2 uses
  %i.cev = icmp samesign uge i32 %i.ces, %i.ceu
  call void @llvm.assume(i1 %i.cev)
  %i.cew = mul nuw nsw i32 %i.bwv, %indvars110.i.i
  %i.cex = sub nsw i32 %i.ceu, %i.cew
  br label %_ZNK8rawspeed12_GLOBAL__N_19FujiStrip7numMCUsENS_8iPoint2DE.exit.i.i144.i.i.i

_ZNK8rawspeed12_GLOBAL__N_19FujiStrip7numMCUsENS_8iPoint2DE.exit.i.i144.i.i.i: ; preds = %bb.em, %bb.el
  %.0.i.i.i.i145.i.i.i = phi i32 [ %i.cex, %bb.em ], [ %i.bwv, %bb.el ] ; 3 uses
  %i.cey = and i32 %.0.i.i.i.i145.i.i.i, 1
  %i.cez = icmp eq i32 %i.cey, 0
  call void @llvm.assume(i1 %i.cez)
  %.not58.i.i.i.i.i = icmp eq i32 %.0.i.i.i.i145.i.i.i, 0
  br i1 %.not58.i.i.i.i.i, label %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block19copy_line_to_xtransERKNS0_9FujiStripEi.exit.i.i.i, label %.preheader54.lr.ph.i.i.i.i.i

.preheader54.lr.ph.i.i.i.i.i:                     ; preds = %_ZNK8rawspeed12_GLOBAL__N_19FujiStrip7numMCUsENS_8iPoint2DE.exit.i.i144.i.i.i
  %i.cfa = ashr exact i32 %.0.i.i.i.i145.i.i.i, 1
  %.sroa.049.0.copyload.i.i.i.i.i = load ptr, ptr %7, align 8, !tbaa !200 ; 6 uses
  %.sroa.450.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.659.0..sroa_idx.i.i, align 8, !tbaa !100 ; 3 uses
  %.sroa.551.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.760.0..sroa_idx.i.i, align 4, !tbaa !100 ; 4 uses
  %.sroa.652.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.861.0..sroa_idx.i.i, align 8, !tbaa !100
  %i.cfb = mul nuw nsw i64 %indvars.iv.i20.i.i, 6 ; 5 uses
  %i.cfc = icmp ne i32 %.sroa.450.0.copyload.i.i.i.i.i, 0
  call void @llvm.assume(i1 %i.cfc)
  %i.cfd = icmp sge i32 %.sroa.450.0.copyload.i.i.i.i.i, %.sroa.551.0.copyload.i.i.i.i.i
  call void @llvm.assume(i1 %i.cfd)
  %i.cfe = zext nneg i32 %.sroa.450.0.copyload.i.i.i.i.i to i64 ; 6 uses
  %i.cff = zext nneg i32 %.sroa.652.0.copyload.i.i.i.i.i to i64 ; 8 uses
  %i.cfg = zext i32 %i.cfa to i64
  %i.cfh = add nuw nsw i64 %i.cfb, 2              ; 4 uses
  %i.cfi = icmp samesign ule i64 %i.cfh, %i.cff
  call void @llvm.assume(i1 %i.cfi)
  %i.cfj = icmp samesign ult i64 %i.cfb, %i.cff
  %i.cfk = mul nuw nsw i64 %i.cfb, %i.cfe
  %i.cfl = getelementptr inbounds nuw [2 x i8], ptr %.sroa.049.0.copyload.i.i.i.i.i, i64 %i.cfk ; 2 uses
  %i.cfm = load i32, ptr %i.eh, align 4, !tbaa !213 ; 2 uses
  %i.cfn = load i32, ptr %i.eg, align 8, !tbaa !210 ; 13 uses
  %i.cfo = icmp sge i32 %i.cfn, %i.cfm
  call void @llvm.assume(i1 %i.cfo)
  %i.cfp = zext nneg i32 %i.cfm to i64
  %i.cfq = shl nuw nsw i32 %i.cfn, 1
  %.sroa.0.0.copyload.i.i34.i.i.i.i.i = load ptr, ptr %i.ec, align 8, !tbaa !200, !noalias !260 ; 12 uses
  %i.cfr = zext nneg i32 %i.cfq to i64
  %i.cfs = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i34.i.i.i.i.i, i64 %i.cfr
  call void @llvm.assume(i1 %i.cfj)
  %i.cft = mul nuw nsw i32 %i.cfn, 7
  %i.cfu = zext nneg i32 %i.cft to i64
  %i.cfv = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i34.i.i.i.i.i, i64 %i.cfu
  %i.cfw = or disjoint i64 %i.cfb, 1              ; 2 uses
  %i.cfx = icmp samesign ult i64 %i.cfw, %i.cff
  %i.cfy = mul nuw nsw i64 %i.cfw, %i.cfe
  %i.cfz = getelementptr inbounds nuw [2 x i8], ptr %.sroa.049.0.copyload.i.i.i.i.i, i64 %i.cfy ; 2 uses
  %i.cga = shl nuw nsw i32 %i.cfn, 3
  %i.cgb = zext nneg i32 %i.cga to i64
  %i.cgc = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i34.i.i.i.i.i, i64 %i.cgb
  call void @llvm.assume(i1 %i.cfx)
  %i.cgd = mul nuw nsw i32 %i.cfn, 15
  %i.cge = zext nneg i32 %i.cgd to i64
  %i.cgf = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i34.i.i.i.i.i, i64 %i.cge
  %i.cgg = add nuw nsw i64 %i.cfb, 4              ; 4 uses
  %i.cgh = icmp samesign ule i64 %i.cgg, %i.cff
  call void @llvm.assume(i1 %i.cgh)
  %i.cgi = icmp samesign ult i64 %i.cfh, %i.cff
  %i.cgj = mul nuw nsw i64 %i.cfh, %i.cfe
  %i.cgk = getelementptr inbounds nuw [2 x i8], ptr %.sroa.049.0.copyload.i.i.i.i.i, i64 %i.cgj ; 2 uses
  %i.cgl = mul nuw nsw i32 %i.cfn, 3
  %i.cgm = zext nneg i32 %i.cgl to i64
  %i.cgn = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i34.i.i.i.i.i, i64 %i.cgm
  call void @llvm.assume(i1 %i.cgi)
  %i.cgo = mul nuw nsw i32 %i.cfn, 9
  %i.cgp = zext nneg i32 %i.cgo to i64
  %i.cgq = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i34.i.i.i.i.i, i64 %i.cgp
  %i.cgr = or disjoint i64 %i.cfh, 1              ; 2 uses
  %i.cgs = icmp samesign ult i64 %i.cgr, %i.cff
  %i.cgt = mul nuw nsw i64 %i.cgr, %i.cfe
  %i.cgu = getelementptr inbounds nuw [2 x i8], ptr %.sroa.049.0.copyload.i.i.i.i.i, i64 %i.cgt ; 2 uses
  %i.cgv = mul nuw nsw i32 %i.cfn, 10
  %i.cgw = zext nneg i32 %i.cgv to i64
  %i.cgx = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i34.i.i.i.i.i, i64 %i.cgw
  call void @llvm.assume(i1 %i.cgs)
  %i.cgy = shl nuw nsw i32 %i.cfn, 4
  %i.cgz = zext nneg i32 %i.cgy to i64
  %i.cha = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i34.i.i.i.i.i, i64 %i.cgz
  %i.chb = icmp samesign ult i64 %i.cgg, %i.cff
  %i.chc = mul nuw nsw i64 %i.cgg, %i.cfe
  %i.chd = getelementptr inbounds nuw [2 x i8], ptr %.sroa.049.0.copyload.i.i.i.i.i, i64 %i.chc ; 2 uses
  %i.che = shl nuw nsw i32 %i.cfn, 2
  %i.chf = zext nneg i32 %i.che to i64
  %i.chg = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i34.i.i.i.i.i, i64 %i.chf
  call void @llvm.assume(i1 %i.chb)
  %i.chh = mul nuw nsw i32 %i.cfn, 11
  %i.chi = zext nneg i32 %i.chh to i64
  %i.chj = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i34.i.i.i.i.i, i64 %i.chi
  %i.chk = or disjoint i64 %i.cgg, 1              ; 2 uses
  %i.chl = icmp samesign ult i64 %i.chk, %i.cff
  %i.chm = mul nuw nsw i64 %i.chk, %i.cfe
  %i.chn = getelementptr inbounds nuw [2 x i8], ptr %.sroa.049.0.copyload.i.i.i.i.i, i64 %i.chm ; 2 uses
  %i.cho = mul nuw nsw i32 %i.cfn, 12
  %i.chp = zext nneg i32 %i.cho to i64
  %i.chq = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i34.i.i.i.i.i, i64 %i.chp
  call void @llvm.assume(i1 %i.chl)
  %i.chr = mul nuw nsw i32 %i.cfn, 17
  %i.chs = zext nneg i32 %i.chr to i64
  %i.cht = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i34.i.i.i.i.i, i64 %i.chs
  br label %bb.en

bb.en:                                            ; preds = %bb.en, %.preheader54.lr.ph.i.i.i.i.i
  %indvars.iv.i.i146.i.i.i = phi i64 [ 0, %.preheader54.lr.ph.i.i.i.i.i ], [ %indvars.iv.next.i.i147.i.i.i, %bb.en ] ; 2 uses
  %indvars.iv.next.i.i147.i.i.i = add nuw nsw i64 %indvars.iv.i.i146.i.i.i, 1 ; 15 uses
  %.val.val.i.i148.i.i.i = load i16, ptr %i.nw, align 4, !tbaa !138
  %i.chu = zext i16 %.val.val.i.i148.i.i.i to i32
  %i.chv = mul nuw nsw i32 %i.chu, %indvars110.i.i
  %indvars.iv.tr.i.i.i.i.i = trunc i64 %indvars.iv.i.i146.i.i.i to i32
  %i.chw = shl i32 %indvars.iv.tr.i.i.i.i.i, 1    ; 3 uses
  %i.chx = add nsw i32 %i.chv, %i.chw             ; 2 uses
  %.val33.val.i.i.i.i.i = load i16, ptr %i.nt, align 4, !tbaa !140
  %i.chy = zext i16 %.val33.val.i.i.i.i.i to i64
  %i.chz = icmp samesign ult i64 %indvars.iv.i20.i.i, %i.chy
  call void @llvm.assume(i1 %i.chz)
  %i.cia = zext i32 %i.chx to i64                 ; 3 uses
  %i.cib = icmp samesign ult i64 %indvars.iv.next.i.i147.i.i.i, %i.cfp
  call void @llvm.assume(i1 %i.cib)
  %i.cic = getelementptr inbounds nuw [2 x i8], ptr %i.cfs, i64 %indvars.iv.next.i.i147.i.i.i
  %i.cid = load i16, ptr %i.cic, align 2, !tbaa !97
  %i.cie = getelementptr inbounds nuw [2 x i8], ptr %i.cfl, i64 %i.cia
  store i16 %i.cid, ptr %i.cie, align 2, !tbaa !97
  %i.cif = getelementptr inbounds nuw [2 x i8], ptr %i.cfv, i64 %indvars.iv.next.i.i147.i.i.i
  %i.cig = load i16, ptr %i.cif, align 2, !tbaa !97
  %i.cih = add nuw nsw i64 %i.cia, 1              ; 2 uses
  %i.cii = icmp samesign ult i32 %i.chx, %.sroa.551.0.copyload.i.i.i.i.i
  call void @llvm.assume(i1 %i.cii)
  %i.cij = getelementptr inbounds nuw [2 x i8], ptr %i.cfl, i64 %i.cih
  store i16 %i.cig, ptr %i.cij, align 2, !tbaa !97
  %i.cik = getelementptr inbounds nuw [2 x i8], ptr %i.cgc, i64 %indvars.iv.next.i.i147.i.i.i
  %i.cil = load i16, ptr %i.cik, align 2, !tbaa !97
  %i.cim = getelementptr inbounds nuw [2 x i8], ptr %i.cfz, i64 %i.cia
  store i16 %i.cil, ptr %i.cim, align 2, !tbaa !97
  %i.cin = getelementptr inbounds nuw [2 x i8], ptr %i.cgf, i64 %indvars.iv.next.i.i147.i.i.i
  %i.cio = load i16, ptr %i.cin, align 2, !tbaa !97
  %i.cip = getelementptr inbounds nuw [2 x i8], ptr %i.cfz, i64 %i.cih
  store i16 %i.cio, ptr %i.cip, align 2, !tbaa !97
  %.val.val.1.i.i.i.i.i = load i16, ptr %i.nw, align 4, !tbaa !138
  %i.ciq = zext i16 %.val.val.1.i.i.i.i.i to i32
  %i.cir = mul nuw nsw i32 %i.ciq, %indvars110.i.i
  %i.cis = add nsw i32 %i.cir, %i.chw             ; 2 uses
  %.val33.val.1.i.i.i.i.i = load i16, ptr %i.nt, align 4, !tbaa !140
  %i.cit = zext i16 %.val33.val.1.i.i.i.i.i to i64
  %i.ciu = icmp samesign ult i64 %indvars.iv.i20.i.i, %i.cit
  call void @llvm.assume(i1 %i.ciu)
  %i.civ = zext nneg i32 %i.cis to i64            ; 3 uses
  %i.ciw = getelementptr inbounds nuw [2 x i8], ptr %i.cgn, i64 %indvars.iv.next.i.i147.i.i.i
  %i.cix = load i16, ptr %i.ciw, align 2, !tbaa !97
  %i.ciy = getelementptr inbounds nuw [2 x i8], ptr %i.cgk, i64 %i.civ
  store i16 %i.cix, ptr %i.ciy, align 2, !tbaa !97
  %i.ciz = getelementptr inbounds nuw [2 x i8], ptr %i.cgq, i64 %indvars.iv.next.i.i147.i.i.i
  %i.cja = load i16, ptr %i.ciz, align 2, !tbaa !97
  %i.cjb = add nuw nsw i64 %i.civ, 1              ; 2 uses
  %i.cjc = icmp samesign ult i32 %i.cis, %.sroa.551.0.copyload.i.i.i.i.i
  call void @llvm.assume(i1 %i.cjc)
  %i.cjd = getelementptr inbounds nuw [2 x i8], ptr %i.cgk, i64 %i.cjb
  store i16 %i.cja, ptr %i.cjd, align 2, !tbaa !97
  %i.cje = getelementptr inbounds nuw [2 x i8], ptr %i.cgx, i64 %indvars.iv.next.i.i147.i.i.i
  %i.cjf = load i16, ptr %i.cje, align 2, !tbaa !97
  %i.cjg = getelementptr inbounds nuw [2 x i8], ptr %i.cgu, i64 %i.civ
  store i16 %i.cjf, ptr %i.cjg, align 2, !tbaa !97
  %i.cjh = getelementptr inbounds nuw [2 x i8], ptr %i.cha, i64 %indvars.iv.next.i.i147.i.i.i
  %i.cji = load i16, ptr %i.cjh, align 2, !tbaa !97
  %i.cjj = getelementptr inbounds nuw [2 x i8], ptr %i.cgu, i64 %i.cjb
  store i16 %i.cji, ptr %i.cjj, align 2, !tbaa !97
  %.val.val.2.i.i.i.i.i = load i16, ptr %i.nw, align 4, !tbaa !138
  %i.cjk = zext i16 %.val.val.2.i.i.i.i.i to i32
  %i.cjl = mul nuw nsw i32 %i.cjk, %indvars110.i.i
  %i.cjm = add nsw i32 %i.cjl, %i.chw             ; 2 uses
  %.val33.val.2.i.i.i.i.i = load i16, ptr %i.nt, align 4, !tbaa !140
  %i.cjn = zext i16 %.val33.val.2.i.i.i.i.i to i64
  %i.cjo = icmp samesign ult i64 %indvars.iv.i20.i.i, %i.cjn
  call void @llvm.assume(i1 %i.cjo)
  %i.cjp = zext nneg i32 %i.cjm to i64            ; 3 uses
  %i.cjq = getelementptr inbounds nuw [2 x i8], ptr %i.chg, i64 %indvars.iv.next.i.i147.i.i.i
  %i.cjr = load i16, ptr %i.cjq, align 2, !tbaa !97
  %i.cjs = getelementptr inbounds nuw [2 x i8], ptr %i.chd, i64 %i.cjp
  store i16 %i.cjr, ptr %i.cjs, align 2, !tbaa !97
  %i.cjt = getelementptr inbounds nuw [2 x i8], ptr %i.chj, i64 %indvars.iv.next.i.i147.i.i.i
  %i.cju = load i16, ptr %i.cjt, align 2, !tbaa !97
  %i.cjv = add nuw nsw i64 %i.cjp, 1              ; 2 uses
end_hunk_0
