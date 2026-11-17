Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_catalog-609147b93d62c723.influxdb3_catalog.5df24ce7f3fe82b7-cgu.14?download=true
inline.NumInlined: 672
inline.NumDeleted: 323
loop-unroll.NumCompletelyUnrolled: 47
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 60
begin_hunk_0_@_RINvNtCs87O7Q65ve1k_7bitcode4pack15pack_arithmeticKj6_ECs844E4pPEVZX_17influxdb3_catalog:bb.a
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 1
  %i.my = load i8, ptr %i.mx, align 1, !noundef !21
  %i.mz = mul i8 %i.my, 6
  %i.na = add i8 %i.mz, %i.mv
  %i.nb = add nuw nsw i64 %i.mt, 2                ; 2 uses
  %i.nc = icmp samesign ult i64 %i.nb, %1
  tail call void @llvm.assume(i1 %i.nc)
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 %i.nb
  %i.ne = load i8, ptr %i.nd, align 1, !noundef !21
  %i.nf = mul i8 %i.ne, 36
  %i.ng = add i8 %i.nf, %i.na
  %i.nh = add nuw nsw i64 %.sroa.019.033, 1       ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.019.033
  store i8 %i.ng, ptr %i.ni, align 1
  %exitcond.not = icmp eq i64 %i.nh, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %_RNvMs4_NtCs4NRVxsYgnAr_4core3numh3pow.exit.2, !llvm.loop !73
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtCs87O7Q65ve1k_7bitcode4pack16unpack_histogramKj10_Kj100_ECs844E4pPEVZX_17influxdb3_catalog(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(2048) %1) unnamed_addr #2 personality ptr @rust_eh_personality !guid !82 {
.lr.ph.i:
  %i.a = alloca [128 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !84
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 640
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 768
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 896
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1152
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1280
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1408
  br label %vector.ph49

vector.ph49:                                      ; preds = %.lr.ph.i, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.loopexit.i.i.i.i.3
  %storemerge19.i.i = phi i64 [ 0, %.lr.ph.i ], [ %i.cf, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.loopexit.i.i.i.i.3 ] ; 23 uses
  %i.m = getelementptr [8 x i8], ptr %1, i64 %storemerge19.i.i
  %i.n = getelementptr [8 x i8], ptr %i.b, i64 %storemerge19.i.i
  %i.o = getelementptr [8 x i8], ptr %i.c, i64 %storemerge19.i.i
  %i.p = getelementptr [8 x i8], ptr %i.d, i64 %storemerge19.i.i
  %i.q = load i64, ptr %i.m, align 8, !alias.scope !87
  %i.r = load i64, ptr %i.n, align 8, !alias.scope !87
  %i.s = insertelement <2 x i64> poison, i64 %i.q, i64 0
  %i.t = insertelement <2 x i64> %i.s, i64 %i.r, i64 1
  %i.u = load i64, ptr %i.o, align 8, !alias.scope !87
  %i.v = load i64, ptr %i.p, align 8, !alias.scope !87
  %i.w = insertelement <2 x i64> poison, i64 %i.u, i64 0
  %i.x = insertelement <2 x i64> %i.w, i64 %i.v, i64 1
  %i.y = getelementptr [8 x i8], ptr %i.e, i64 %storemerge19.i.i
  %i.z = getelementptr [8 x i8], ptr %i.f, i64 %storemerge19.i.i
  %i.aa = getelementptr [8 x i8], ptr %i.g, i64 %storemerge19.i.i
  %i.ab = getelementptr [8 x i8], ptr %i.h, i64 %storemerge19.i.i
  %i.ac = load i64, ptr %i.y, align 8, !alias.scope !87
  %i.ad = load i64, ptr %i.z, align 8, !alias.scope !87
  %i.ae = insertelement <2 x i64> poison, i64 %i.ac, i64 0
  %i.af = insertelement <2 x i64> %i.ae, i64 %i.ad, i64 1
  %i.ag = load i64, ptr %i.aa, align 8, !alias.scope !87
  %i.ah = load i64, ptr %i.ab, align 8, !alias.scope !87
  %i.ai = insertelement <2 x i64> poison, i64 %i.ag, i64 0
  %i.aj = insertelement <2 x i64> %i.ai, i64 %i.ah, i64 1
  %i.ak = add <2 x i64> %i.af, %i.t
  %i.al = add <2 x i64> %i.aj, %i.x
  %i.am = getelementptr [8 x i8], ptr %i.i, i64 %storemerge19.i.i
  %i.an = getelementptr [8 x i8], ptr %i.j, i64 %storemerge19.i.i
  %i.ao = getelementptr [8 x i8], ptr %i.k, i64 %storemerge19.i.i
  %i.ap = getelementptr [8 x i8], ptr %i.l, i64 %storemerge19.i.i
  %i.aq = load i64, ptr %i.am, align 8, !alias.scope !87
  %i.ar = load i64, ptr %i.an, align 8, !alias.scope !87
  %i.as = insertelement <2 x i64> poison, i64 %i.aq, i64 0
  %i.at = insertelement <2 x i64> %i.as, i64 %i.ar, i64 1
  %i.au = load i64, ptr %i.ao, align 8, !alias.scope !87
  %i.av = load i64, ptr %i.ap, align 8, !alias.scope !87
  %i.aw = insertelement <2 x i64> poison, i64 %i.au, i64 0
  %i.ax = insertelement <2 x i64> %i.aw, i64 %i.av, i64 1
  %i.ay = add <2 x i64> %i.at, %i.ak
  %i.az = add <2 x i64> %i.ax, %i.al
  %bin.rdx56 = add <2 x i64> %i.az, %i.ay
  %i.ba = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx56)
  %i.bb = add nuw nsw i64 %storemerge19.i.i, 192  ; 2 uses
  %or.cond.i.i.i.i = icmp samesign ult i64 %storemerge19.i.i, 64
  br i1 %or.cond.i.i.i.i, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.loopexit.i.i.i.i, label %.split.us.i.i.i.i, !prof !31

.split.us.i.i.i.i:                                ; preds = %vector.ph49, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.loopexit.i.i.i.i, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.loopexit.i.i.i.i.1, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.loopexit.i.i.i.i.2
  %.lcssa62 = phi i64 [ %i.bb, %vector.ph49 ], [ %i.bd, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.loopexit.i.i.i.i ], [ %i.be, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.loopexit.i.i.i.i.1 ], [ %i.bf, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.loopexit.i.i.i.i.2 ] ; 2 uses
  %i.bc = add i64 %.lcssa62, 1
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.lcssa62, i64 noundef %i.bc, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #19, !noalias !88
  unreachable

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.loopexit.i.i.i.i: ; preds = %vector.ph49
  %i.bd = add nuw nsw i64 %storemerge19.i.i, 208  ; 2 uses
  %or.cond.i.i.i.i.169 = icmp samesign ult i64 %storemerge19.i.i, 48
  br i1 %or.cond.i.i.i.i.169, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.loopexit.i.i.i.i.1, label %.split.us.i.i.i.i, !prof !31

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.loopexit.i.i.i.i.1: ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.loopexit.i.i.i.i
  %i.be = add nuw nsw i64 %storemerge19.i.i, 224  ; 2 uses
  %or.cond.i.i.i.i.2 = icmp samesign ult i64 %storemerge19.i.i, 32
  br i1 %or.cond.i.i.i.i.2, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.loopexit.i.i.i.i.2, label %.split.us.i.i.i.i, !prof !31

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.loopexit.i.i.i.i.2: ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.loopexit.i.i.i.i.1
  %i.bf = add nuw nsw i64 %storemerge19.i.i, 240  ; 2 uses
  %or.cond.i.i.i.i.3 = icmp samesign ult i64 %storemerge19.i.i, 16
  br i1 %or.cond.i.i.i.i.3, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.loopexit.i.i.i.i.3, label %.split.us.i.i.i.i, !prof !31

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.loopexit.i.i.i.i.3: ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.loopexit.i.i.i.i.2
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.be
  %.val.i.i.i.i.i.2 = load i64, ptr %i.bg, align 8, !alias.scope !87, !noundef !21
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bd
  %.val.i.i.i.i.i.1 = load i64, ptr %i.bh, align 8, !alias.scope !87, !noundef !21
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bb
  %.val.i.i.i.i.i = load i64, ptr %i.bi, align 8, !alias.scope !87, !noundef !21
  %i.bj = add i64 %.val.i.i.i.i.i, %i.ba
  %i.bk = add i64 %.val.i.i.i.i.i.1, %i.bj
  %i.bl = add i64 %.val.i.i.i.i.i.2, %i.bk
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bf
  %.val.i.i.i.i.i.3 = load i64, ptr %i.bm, align 8, !alias.scope !87, !noundef !21
  %i.bn = add i64 %.val.i.i.i.i.i.3, %i.bl
  %.idx = shl nuw nsw i64 %storemerge19.i.i, 7
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 8 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %wide.load = load <2 x i64>, ptr %i.bo, align 8, !alias.scope !87
  %wide.load48 = load <2 x i64>, ptr %i.bp, align 8, !alias.scope !87
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %wide.load.1 = load <2 x i64>, ptr %i.bq, align 8, !alias.scope !87
  %wide.load48.1 = load <2 x i64>, ptr %i.br, align 8, !alias.scope !87
  %i.bs = add <2 x i64> %wide.load.1, %wide.load
  %i.bt = add <2 x i64> %wide.load48.1, %wide.load48
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 80
  %wide.load.2 = load <2 x i64>, ptr %i.bu, align 8, !alias.scope !87
  %wide.load48.2 = load <2 x i64>, ptr %i.bv, align 8, !alias.scope !87
  %i.bw = add <2 x i64> %wide.load.2, %i.bs
  %i.bx = add <2 x i64> %wide.load48.2, %i.bt
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 96
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bo, i64 112
  %wide.load.3 = load <2 x i64>, ptr %i.by, align 8, !alias.scope !87
  %wide.load48.3 = load <2 x i64>, ptr %i.bz, align 8, !alias.scope !87
  %i.ca = add <2 x i64> %wide.load.3, %i.bw
  %i.cb = add <2 x i64> %wide.load48.3, %i.bx
  %bin.rdx = add <2 x i64> %i.cb, %i.ca
  %i.cc = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  %i.cd = add i64 %i.cc, %i.bn
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %storemerge19.i.i
  store i64 %i.cd, ptr %i.ce, align 8, !alias.scope !85, !noalias !84
  %i.cf = add nuw nsw i64 %storemerge19.i.i, 1    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cf, 16
  br i1 %exitcond.not.i.i, label %_RINvNtCs4NRVxsYgnAr_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitjEKj10_NCINvMBJ_BG_10wrap_mut_1jNCINvNtCs87O7Q65ve1k_7bitcode4pack16unpack_histogramKB1q_Kj100_E0E0ECs844E4pPEVZX_17influxdb3_catalog.exit, label %vector.ph49

_RINvNtCs4NRVxsYgnAr_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitjEKj10_NCINvMBJ_BG_10wrap_mut_1jNCINvNtCs87O7Q65ve1k_7bitcode4pack16unpack_histogramKB1q_Kj100_E0E0ECs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.loopexit.i.i.i.i.3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %i.a, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !84
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtCs87O7Q65ve1k_7bitcode4pack16unpack_histogramKj2_Kj100_ECs844E4pPEVZX_17influxdb3_catalog(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(2048) %1) unnamed_addr #2 personality ptr @rust_eh_personality !guid !100 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  br label %.lr.ph16.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.us.i.i.i.i.3, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.loopexit.i.i.i.i, %bb.d
  %.sroa.0.1.lcssa.i.i.i.i = phi i64 [ %.sroa.0.015.i.i.i.i, %bb.d ], [ %i.ak, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.loopexit.i.i.i.i ], [ %.sroa.0.015.i.i.i.i, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.us.i.i.i.i.3 ] ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.a, 8
  br i1 %exitcond.not.i.i.i.i, label %.lr.ph16.i.i.1.i.i, label %.lr.ph16.i.i.i.i

.lr.ph16.i.i.i.i:                                 ; preds = %bb.a, %.loopexit.i.i.i.i
  %.sroa.0.015.i.i.i.i = phi i64 [ %.sroa.0.1.lcssa.i.i.i.i, %.loopexit.i.i.i.i ], [ 0, %bb.a ] ; 3 uses
  %.sroa.05.014.i.i.i.i = phi i64 [ %i.a, %.loopexit.i.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.a = add nuw nsw i64 %.sroa.05.014.i.i.i.i, 1 ; 2 uses
  %i.b = trunc i64 %.sroa.05.014.i.i.i.i to i32   ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.split.preheader.i.i.i.i, label %.preheader21.i.i.i.i.i

.preheader21.i.i.i.i.i:                           ; preds = %.lr.ph16.i.i.i.i, %bb.c
  %.sroa.015.1.i.i.i.i.i = phi i64 [ %.sroa.015.2.i.i.i.i.i, %bb.c ], [ 1, %.lr.ph16.i.i.i.i ] ; 2 uses
  %.sroa.07.0.i.i.i.i.i = phi i32 [ %i.g, %bb.c ], [ %i.b, %.lr.ph16.i.i.i.i ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i = phi i64 [ %i.h, %bb.c ], [ 2, %.lr.ph16.i.i.i.i ] ; 3 uses
  %i.d = and i32 %.sroa.07.0.i.i.i.i.i, 1
  %.not.i.i.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader21.i.i.i.i.i
  %i.e = mul i64 %.sroa.0.0.i.i.i.i.i, %.sroa.015.1.i.i.i.i.i
  %.sroa.015.0.i2.fr.i.i.i.i = freeze i64 %i.e    ; 4 uses
  %i.f = icmp eq i32 %.sroa.07.0.i.i.i.i.i, 1
  br i1 %i.f, label %_RNvMs9_NtCs4NRVxsYgnAr_4core3numj3pow.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader21.i.i.i.i.i
  %.sroa.015.2.i.i.i.i.i = phi i64 [ %.sroa.015.0.i2.fr.i.i.i.i, %bb.b ], [ %.sroa.015.1.i.i.i.i.i, %.preheader21.i.i.i.i.i ]
  %i.g = lshr i32 %.sroa.07.0.i.i.i.i.i, 1
  %i.h = mul i64 %.sroa.0.0.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i
  br label %.preheader21.i.i.i.i.i

_RNvMs9_NtCs4NRVxsYgnAr_4core3numj3pow.exit.i.i.i.i: ; preds = %bb.b
  %i.i = shl i64 %.sroa.015.0.i2.fr.i.i.i.i, 1    ; 6 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %.noexc.i.i, label %bb.d

bb.d:                                             ; preds = %_RNvMs9_NtCs4NRVxsYgnAr_4core3numj3pow.exit.i.i.i.i
  %i.k = udiv i64 256, %i.i                       ; 2 uses
  %.not18.i.i.i.i = icmp ugt i64 %i.i, 256
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d
  %i.l = icmp eq i64 %.sroa.015.0.i2.fr.i.i.i.i, 0
  br i1 %i.l, label %.lr.ph.split.us.i.i.i.i, label %.lr.ph.split.preheader.i.i.i.i

.lr.ph.split.preheader.i.i.i.i:                   ; preds = %.lr.ph16.i.i.i.i, %.lr.ph.i.i.i.i
  %i.m = phi i64 [ %i.i, %.lr.ph.i.i.i.i ], [ 2, %.lr.ph16.i.i.i.i ]
  %.sroa.015.0.i2.fr4143.i.i.i.i = phi i64 [ %.sroa.015.0.i2.fr.i.i.i.i, %.lr.ph.i.i.i.i ], [ 1, %.lr.ph16.i.i.i.i ] ; 5 uses
  %i.n = phi i64 [ %i.k, %.lr.ph.i.i.i.i ], [ 128, %.lr.ph16.i.i.i.i ]
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %min.iters.check = icmp ult i64 %.sroa.015.0.i2.fr4143.i.i.i.i, 4
  %n.vec = and i64 %.sroa.015.0.i2.fr4143.i.i.i.i, -4 ; 3 uses
  %cmp.n = icmp eq i64 %.sroa.015.0.i2.fr4143.i.i.i.i, %n.vec
  br label %.lr.ph.split.i.i.i.i

.lr.ph.split.us.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.us.i.i.i.i.3
  %.sroa.07.010.us.i.i.i.i = phi i64 [ %i.t, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.us.i.i.i.i.3 ], [ 0, %.lr.ph.i.i.i.i ] ; 3 uses
  %2 = or disjoint i64 %.sroa.07.010.us.i.i.i.i, 1
  %i.o = mul nuw i64 %2, %i.i                     ; 3 uses
  %i.p = icmp ult i64 %i.o, 257
  br i1 %i.p, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.us.i.i.i.i.2, label %.split.us.i.i.i.i, !prof !31

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.us.i.i.i.i.2: ; preds = %.lr.ph.split.us.i.i.i.i
  %i.q = or disjoint i64 %.sroa.07.010.us.i.i.i.i, 3
  %i.r = mul nuw i64 %i.q, %i.i                   ; 3 uses
  %i.s = icmp ult i64 %i.r, 257
  br i1 %i.s, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.us.i.i.i.i.3, label %.split.us.i.i.i.i, !prof !31

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.us.i.i.i.i.3: ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.us.i.i.i.i.2
  %i.t = add nuw nsw i64 %.sroa.07.010.us.i.i.i.i, 4 ; 2 uses
  %3 = icmp samesign ult i64 %i.t, %i.k
  br i1 %3, label %.lr.ph.split.us.i.i.i.i, label %.loopexit.i.i.i.i

.noexc.i.i:                                       ; preds = %_RNvMs9_NtCs4NRVxsYgnAr_4core3numj3pow.exit.i.i.i.i, %_RNvMs9_NtCs4NRVxsYgnAr_4core3numj3pow.exit.i.i.1.i.i
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #19, !noalias !103
  unreachable

.lr.ph.split.i.i.i.i:                             ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.loopexit.i.i.i.i, %.lr.ph.split.preheader.i.i.i.i
  %.sroa.0.111.i.i.i.i = phi i64 [ %i.ak, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.loopexit.i.i.i.i ], [ %.sroa.0.015.i.i.i.i, %.lr.ph.split.preheader.i.i.i.i ]
  %.sroa.07.010.i.i.i.i = phi i64 [ %i.u, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.loopexit.i.i.i.i ], [ 0, %.lr.ph.split.preheader.i.i.i.i ] ; 2 uses
  %i.u = add nuw nsw i64 %.sroa.07.010.i.i.i.i, 1 ; 2 uses
  %i.v = mul i64 %.sroa.07.010.i.i.i.i, %i.m      ; 4 uses
  %i.w = add i64 %i.v, %.sroa.015.0.i2.fr4143.i.i.i.i ; 3 uses
  %i.x = icmp uge i64 %i.w, %i.v
  %i.y = icmp ult i64 %i.w, 257
  %or.cond.i.i.i.i = and i1 %i.x, %i.y
  br i1 %or.cond.i.i.i.i, label %.preheader.i.i.i.i, label %.split.us.i.i.i.i, !prof !31

.split.us.i.i.i.i:                                ; preds = %.lr.ph.split.us.i.i.i.i, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.us.i.i.i.i.2, %.lr.ph.split.i.i.i.i, %.lr.ph.split.us.i.i.1.i.i, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.us.i.i.1.i.i.2, %.lr.ph.split.i.i.1.i.i
  %.us-phi.i.i.i.i = phi i64 [ %i.ax, %.lr.ph.split.us.i.i.1.i.i ], [ %i.v, %.lr.ph.split.i.i.i.i ], [ %i.bh, %.lr.ph.split.i.i.1.i.i ], [ %i.ba, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.us.i.i.1.i.i.2 ], [ %i.r, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.us.i.i.i.i.2 ], [ %i.o, %.lr.ph.split.us.i.i.i.i ]
  %.us-phi12.i.i.i.i = phi i64 [ %i.ax, %.lr.ph.split.us.i.i.1.i.i ], [ %i.w, %.lr.ph.split.i.i.i.i ], [ %i.bi, %.lr.ph.split.i.i.1.i.i ], [ %i.ba, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.us.i.i.1.i.i.2 ], [ %i.r, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.us.i.i.i.i.2 ], [ %i.o, %.lr.ph.split.us.i.i.i.i ]
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.us-phi.i.i.i.i, i64 noundef %.us-phi12.i.i.i.i, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #19, !noalias !103
  unreachable

.preheader.i.i.i.i:                               ; preds = %.lr.ph.split.i.i.i.i
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.v ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.i.i.i.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i.i.i.i ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.ac, %vector.body ], [ zeroinitializer, %.preheader.i.i.i.i ]
  %vec.phi115 = phi <2 x i64> [ %i.ad, %vector.body ], [ zeroinitializer, %.preheader.i.i.i.i ]
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load = load <2 x i64>, ptr %i.aa, align 8, !alias.scope !104
  %wide.load116 = load <2 x i64>, ptr %i.ab, align 8, !alias.scope !104
  %i.ac = add <2 x i64> %wide.load, %vec.phi      ; 2 uses
  %i.ad = add <2 x i64> %wide.load116, %vec.phi115 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !96

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ad, %i.ac
  %i.af = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.loopexit.i.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i.i.i.i, %middle.block
  %.sroa.04.0.i.i.i.i.i.ph = phi i64 [ 0, %.preheader.i.i.i.i ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.i.i.i.i.ph = phi i64 [ 0, %.preheader.i.i.i.i ], [ %i.af, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.04.0.i.i.i.i.i = phi i64 [ %i.ai, %scalar.ph ], [ %.sroa.04.0.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.02.0.i.i.i.i.i = phi i64 [ %i.ah, %scalar.ph ], [ %.sroa.02.0.i.i.i.i.i.ph, %scalar.ph.preheader ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.sroa.04.0.i.i.i.i.i
  %.val.i.i.i.i.i = load i64, ptr %i.ag, align 8, !alias.scope !104, !noundef !21
  %i.ah = add i64 %.val.i.i.i.i.i, %.sroa.02.0.i.i.i.i.i ; 2 uses
  %i.ai = add nuw i64 %.sroa.04.0.i.i.i.i.i, 1    ; 2 uses
  %i.aj = icmp eq i64 %i.ai, %.sroa.015.0.i2.fr4143.i.i.i.i
  br i1 %i.aj, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.loopexit.i.i.i.i, label %scalar.ph, !llvm.loop !97

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.loopexit.i.i.i.i: ; preds = %scalar.ph, %middle.block
  %.lcssa109 = phi i64 [ %i.af, %middle.block ], [ %i.ah, %scalar.ph ]
  %i.ak = add i64 %.lcssa109, %.sroa.0.111.i.i.i.i ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.u, %umax.i.i.i
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.split.i.i.i.i

.lr.ph16.i.i.1.i.i:                               ; preds = %.loopexit.i.i.i.i, %.loopexit.i.i.1.i.i
  %.sroa.0.015.i.i.1.i.i = phi i64 [ %.sroa.0.1.lcssa.i.i.1.i.i, %.loopexit.i.i.1.i.i ], [ 0, %.loopexit.i.i.i.i ] ; 3 uses
  %.sroa.05.014.i.i.1.i.i = phi i64 [ %i.al, %.loopexit.i.i.1.i.i ], [ 0, %.loopexit.i.i.i.i ] ; 2 uses
  %i.al = add nuw nsw i64 %.sroa.05.014.i.i.1.i.i, 1 ; 2 uses
  %i.am = trunc i64 %.sroa.05.014.i.i.1.i.i to i32 ; 2 uses
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %.lr.ph.split.preheader.i.i.1.i.i, label %.preheader21.i.i.i.1.i.i

.preheader21.i.i.i.1.i.i:                         ; preds = %.lr.ph16.i.i.1.i.i, %bb.f
  %.sroa.015.1.i.i.i.1.i.i = phi i64 [ %.sroa.015.2.i.i.i.1.i.i, %bb.f ], [ 1, %.lr.ph16.i.i.1.i.i ] ; 2 uses
  %.sroa.07.0.i.i.i.1.i.i = phi i32 [ %i.ar, %bb.f ], [ %i.am, %.lr.ph16.i.i.1.i.i ] ; 3 uses
  %.sroa.0.0.i.i.i.1.i.i = phi i64 [ %i.as, %bb.f ], [ 2, %.lr.ph16.i.i.1.i.i ] ; 3 uses
  %i.ao = and i32 %.sroa.07.0.i.i.i.1.i.i, 1
  %.not.i.i.i.1.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i.i.1.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.preheader21.i.i.i.1.i.i
  %i.ap = mul i64 %.sroa.0.0.i.i.i.1.i.i, %.sroa.015.1.i.i.i.1.i.i
  %.sroa.015.0.i2.fr.i.i.1.i.i = freeze i64 %i.ap ; 4 uses
  %i.aq = icmp eq i32 %.sroa.07.0.i.i.i.1.i.i, 1
  br i1 %i.aq, label %_RNvMs9_NtCs4NRVxsYgnAr_4core3numj3pow.exit.i.i.1.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %.preheader21.i.i.i.1.i.i
  %.sroa.015.2.i.i.i.1.i.i = phi i64 [ %.sroa.015.0.i2.fr.i.i.1.i.i, %bb.e ], [ %.sroa.015.1.i.i.i.1.i.i, %.preheader21.i.i.i.1.i.i ]
  %i.ar = lshr i32 %.sroa.07.0.i.i.i.1.i.i, 1
  %i.as = mul i64 %.sroa.0.0.i.i.i.1.i.i, %.sroa.0.0.i.i.i.1.i.i
  br label %.preheader21.i.i.i.1.i.i

_RNvMs9_NtCs4NRVxsYgnAr_4core3numj3pow.exit.i.i.1.i.i: ; preds = %bb.e
  %i.at = shl i64 %.sroa.015.0.i2.fr.i.i.1.i.i, 1 ; 6 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %.noexc.i.i, label %bb.g

bb.g:                                             ; preds = %_RNvMs9_NtCs4NRVxsYgnAr_4core3numj3pow.exit.i.i.1.i.i
  %i.av = udiv i64 256, %i.at                     ; 2 uses
  %.not18.i.i.1.i.i = icmp ugt i64 %i.at, 256
  br i1 %.not18.i.i.1.i.i, label %.loopexit.i.i.1.i.i, label %.lr.ph.i.i.1.i.i

.lr.ph.i.i.1.i.i:                                 ; preds = %bb.g
  %i.aw = icmp eq i64 %.sroa.015.0.i2.fr.i.i.1.i.i, 0
  br i1 %i.aw, label %.lr.ph.split.us.i.i.1.i.i, label %.lr.ph.split.preheader.i.i.1.i.i

.lr.ph.split.us.i.i.1.i.i:                        ; preds = %.lr.ph.i.i.1.i.i, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.us.i.i.1.i.i.3
  %.sroa.07.010.us.i.i.1.i.i = phi i64 [ %i.bc, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.us.i.i.1.i.i.3 ], [ 0, %.lr.ph.i.i.1.i.i ] ; 3 uses
  %4 = or disjoint i64 %.sroa.07.010.us.i.i.1.i.i, 1
  %i.ax = mul nuw i64 %4, %i.at                   ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 257
  br i1 %i.ay, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.us.i.i.1.i.i.2, label %.split.us.i.i.i.i, !prof !31

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.us.i.i.1.i.i.2: ; preds = %.lr.ph.split.us.i.i.1.i.i
  %i.az = or disjoint i64 %.sroa.07.010.us.i.i.1.i.i, 3
  %i.ba = mul nuw i64 %i.az, %i.at                ; 3 uses
  %i.bb = icmp ult i64 %i.ba, 257
  br i1 %i.bb, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.us.i.i.1.i.i.3, label %.split.us.i.i.i.i, !prof !31

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.us.i.i.1.i.i.3: ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.us.i.i.1.i.i.2
  %i.bc = add nuw nsw i64 %.sroa.07.010.us.i.i.1.i.i, 4 ; 2 uses
  %5 = icmp samesign ult i64 %i.bc, %i.av
  br i1 %5, label %.lr.ph.split.us.i.i.1.i.i, label %.loopexit.i.i.1.i.i

.lr.ph.split.preheader.i.i.1.i.i:                 ; preds = %.lr.ph16.i.i.1.i.i, %.lr.ph.i.i.1.i.i
  %i.bd = phi i64 [ %i.at, %.lr.ph.i.i.1.i.i ], [ 2, %.lr.ph16.i.i.1.i.i ]
  %.sroa.015.0.i2.fr4143.i.i.1.i.i = phi i64 [ %.sroa.015.0.i2.fr.i.i.1.i.i, %.lr.ph.i.i.1.i.i ], [ 1, %.lr.ph16.i.i.1.i.i ] ; 6 uses
  %i.be = phi i64 [ %i.av, %.lr.ph.i.i.1.i.i ], [ 128, %.lr.ph16.i.i.1.i.i ]
  %umax.i.1.i.i = tail call i64 @llvm.umax.i64(i64 %i.be, i64 1)
  %min.iters.check118 = icmp ult i64 %.sroa.015.0.i2.fr4143.i.i.1.i.i, 4
  %n.vec120 = and i64 %.sroa.015.0.i2.fr4143.i.i.1.i.i, -4 ; 3 uses
  %cmp.n130 = icmp eq i64 %.sroa.015.0.i2.fr4143.i.i.1.i.i, %n.vec120
  br label %.lr.ph.split.i.i.1.i.i

.lr.ph.split.i.i.1.i.i:                           ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.loopexit.i.i.1.i.i, %.lr.ph.split.preheader.i.i.1.i.i
  %.sroa.0.111.i.i.1.i.i = phi i64 [ %i.bw, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.loopexit.i.i.1.i.i ], [ %.sroa.0.015.i.i.1.i.i, %.lr.ph.split.preheader.i.i.1.i.i ]
  %.sroa.07.010.i.i.1.i.i = phi i64 [ %i.bf, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.loopexit.i.i.1.i.i ], [ 0, %.lr.ph.split.preheader.i.i.1.i.i ] ; 2 uses
  %i.bf = add nuw nsw i64 %.sroa.07.010.i.i.1.i.i, 1 ; 2 uses
  %i.bg = mul i64 %.sroa.07.010.i.i.1.i.i, %i.bd
  %i.bh = add i64 %i.bg, %.sroa.015.0.i2.fr4143.i.i.1.i.i ; 4 uses
  %i.bi = add i64 %i.bh, %.sroa.015.0.i2.fr4143.i.i.1.i.i ; 3 uses
  %i.bj = icmp uge i64 %i.bi, %i.bh
  %i.bk = icmp ult i64 %i.bi, 257
  %or.cond.i.i.1.i.i = and i1 %i.bj, %i.bk
  br i1 %or.cond.i.i.1.i.i, label %.preheader.i.i.1.i.i, label %.split.us.i.i.i.i, !prof !31

.preheader.i.i.1.i.i:                             ; preds = %.lr.ph.split.i.i.1.i.i
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bh ; 2 uses
  br i1 %min.iters.check118, label %scalar.ph117.preheader, label %vector.body121

vector.body121:                                   ; preds = %.preheader.i.i.1.i.i, %vector.body121
  %index122 = phi i64 [ %index.next127, %vector.body121 ], [ 0, %.preheader.i.i.1.i.i ] ; 2 uses
  %vec.phi123 = phi <2 x i64> [ %i.bo, %vector.body121 ], [ zeroinitializer, %.preheader.i.i.1.i.i ]
  %vec.phi124 = phi <2 x i64> [ %i.bp, %vector.body121 ], [ zeroinitializer, %.preheader.i.i.1.i.i ]
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %index122 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %wide.load125 = load <2 x i64>, ptr %i.bm, align 8, !alias.scope !104
  %wide.load126 = load <2 x i64>, ptr %i.bn, align 8, !alias.scope !104
  %i.bo = add <2 x i64> %wide.load125, %vec.phi123 ; 2 uses
  %i.bp = add <2 x i64> %wide.load126, %vec.phi124 ; 2 uses
  %index.next127 = add nuw i64 %index122, 4       ; 2 uses
  %i.bq = icmp eq i64 %index.next127, %n.vec120
  br i1 %i.bq, label %middle.block128, label %vector.body121, !llvm.loop !98

middle.block128:                                  ; preds = %vector.body121
  %bin.rdx129 = add <2 x i64> %i.bp, %i.bo
  %i.br = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx129) ; 2 uses
  br i1 %cmp.n130, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.loopexit.i.i.1.i.i, label %scalar.ph117.preheader

scalar.ph117.preheader:                           ; preds = %.preheader.i.i.1.i.i, %middle.block128
  %.sroa.04.0.i.i.i.1.i.i.ph = phi i64 [ 0, %.preheader.i.i.1.i.i ], [ %n.vec120, %middle.block128 ]
  %.sroa.02.0.i.i.i.1.i.i.ph = phi i64 [ 0, %.preheader.i.i.1.i.i ], [ %i.br, %middle.block128 ]
  br label %scalar.ph117

scalar.ph117:                                     ; preds = %scalar.ph117.preheader, %scalar.ph117
  %.sroa.04.0.i.i.i.1.i.i = phi i64 [ %i.bu, %scalar.ph117 ], [ %.sroa.04.0.i.i.i.1.i.i.ph, %scalar.ph117.preheader ] ; 2 uses
  %.sroa.02.0.i.i.i.1.i.i = phi i64 [ %i.bt, %scalar.ph117 ], [ %.sroa.02.0.i.i.i.1.i.i.ph, %scalar.ph117.preheader ]
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.sroa.04.0.i.i.i.1.i.i
  %.val.i.i.i.1.i.i = load i64, ptr %i.bs, align 8, !alias.scope !104, !noundef !21
  %i.bt = add i64 %.val.i.i.i.1.i.i, %.sroa.02.0.i.i.i.1.i.i ; 2 uses
  %i.bu = add nuw i64 %.sroa.04.0.i.i.i.1.i.i, 1  ; 2 uses
  %i.bv = icmp eq i64 %i.bu, %.sroa.015.0.i2.fr4143.i.i.1.i.i
  br i1 %i.bv, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.loopexit.i.i.1.i.i, label %scalar.ph117, !llvm.loop !99

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.loopexit.i.i.1.i.i: ; preds = %scalar.ph117, %middle.block128
  %.lcssa100 = phi i64 [ %i.br, %middle.block128 ], [ %i.bt, %scalar.ph117 ]
  %i.bw = add i64 %.lcssa100, %.sroa.0.111.i.i.1.i.i ; 2 uses
  %exitcond.not.i.1.i.i = icmp eq i64 %i.bf, %umax.i.1.i.i
  br i1 %exitcond.not.i.1.i.i, label %.loopexit.i.i.1.i.i, label %.lr.ph.split.i.i.1.i.i

.loopexit.i.i.1.i.i:                              ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.us.i.i.1.i.i.3, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.loopexit.i.i.1.i.i, %bb.g
  %.sroa.0.1.lcssa.i.i.1.i.i = phi i64 [ %.sroa.0.015.i.i.1.i.i, %bb.g ], [ %i.bw, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.loopexit.i.i.1.i.i ], [ %.sroa.0.015.i.i.1.i.i, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.us.i.i.1.i.i.3 ] ; 2 uses
  %exitcond.not.i.i.1.i.i = icmp eq i64 %i.al, 8
  br i1 %exitcond.not.i.i.1.i.i, label %_RINvNtCs4NRVxsYgnAr_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitjEKj2_NCINvMBJ_BG_10wrap_mut_1jNCINvNtCs87O7Q65ve1k_7bitcode4pack16unpack_histogramKB1q_Kj100_E0E0ECs844E4pPEVZX_17influxdb3_catalog.exit, label %.lr.ph16.i.i.1.i.i

_RINvNtCs4NRVxsYgnAr_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitjEKj2_NCINvMBJ_BG_10wrap_mut_1jNCINvNtCs87O7Q65ve1k_7bitcode4pack16unpack_histogramKB1q_Kj100_E0E0ECs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %.loopexit.i.i.1.i.i
  store i64 %.sroa.0.1.lcssa.i.i.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.1.lcssa.i.i.1.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtCs87O7Q65ve1k_7bitcode4pack16unpack_histogramKj3_Kjf3_ECs844E4pPEVZX_17influxdb3_catalog(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(1944) %1) unnamed_addr #2 personality ptr @rust_eh_personality !guid !118 {
.lr.ph14.i.i.i.i:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  br label %bb.p

.preheader21.i.i.i.i.i.1:                         ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i, %bb.a
  %.sroa.07.0.i.i.i.i.i.1 = phi i32 [ 0, %bb.a ], [ 1, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i ]
  %.sroa.0.0.i.i.i.i.i.1 = phi i64 [ %i.d, %bb.a ], [ 3, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i ] ; 9 uses
  %.not.i.i.i.i.i.1 = icmp eq i32 %.sroa.07.0.i.i.i.i.i.1, 0
  br i1 %.not.i.i.i.i.i.1, label %bb.a, label %_RNvMs9_NtCs4NRVxsYgnAr_4core3numj3pow.exit.i.i.i.i.1

_RNvMs9_NtCs4NRVxsYgnAr_4core3numj3pow.exit.i.i.i.i.1: ; preds = %.preheader21.i.i.i.i.i.1
  %i.a = icmp eq i64 %.sroa.0.0.i.i.i.i.i.1, 0
  br i1 %i.a, label %.noexc.i.i, label %_RNvMs9_NtCs4NRVxsYgnAr_4core3numj3pow.exit.thread.i.i.i.i.1

_RNvMs9_NtCs4NRVxsYgnAr_4core3numj3pow.exit.thread.i.i.i.i.1: ; preds = %_RNvMs9_NtCs4NRVxsYgnAr_4core3numj3pow.exit.i.i.i.i.1
  %i.b = mul i64 %.sroa.0.0.i.i.i.i.i.1, 3        ; 3 uses
  %i.c = udiv i64 243, %i.b
  %.not16.i.i.i.i.1 = icmp ugt i64 %i.b, 243
  br i1 %.not16.i.i.i.i.1, label %.preheader21.i.i.i.i.i.preheader.2, label %.lr.ph.i.i.i.i.1

bb.a:                                             ; preds = %.preheader21.i.i.i.i.i.1
  %i.d = mul i64 %.sroa.0.0.i.i.i.i.i.1, %.sroa.0.0.i.i.i.i.i.1
  br label %.preheader21.i.i.i.i.i.1

.lr.ph.i.i.i.i.1:                                 ; preds = %_RNvMs9_NtCs4NRVxsYgnAr_4core3numj3pow.exit.thread.i.i.i.i.1
  %umax.i.i.i.1 = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1)
  %min.iters.check.1 = icmp ult i64 %.sroa.0.0.i.i.i.i.i.1, 4
  %n.vec.1 = and i64 %.sroa.0.0.i.i.i.i.i.1, -4   ; 3 uses
  %cmp.n.1 = icmp eq i64 %.sroa.0.0.i.i.i.i.i.1, %n.vec.1
  br label %bb.b

bb.b:                                             ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.1, %.lr.ph.i.i.i.i.1
  %.sroa.0.111.i.i.i.i.1 = phi i64 [ %i.dc, %.lr.ph.i.i.i.i.1 ], [ %i.u, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.1 ]
  %.sroa.07.010.i.i.i.i.1 = phi i64 [ 0, %.lr.ph.i.i.i.i.1 ], [ %i.e, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.1 ] ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.07.010.i.i.i.i.1, 1 ; 2 uses
  %i.f = mul i64 %.sroa.07.010.i.i.i.i.1, %i.b    ; 4 uses
  %i.g = add i64 %i.f, %.sroa.0.0.i.i.i.i.i.1     ; 3 uses
  %i.h = icmp uge i64 %i.g, %i.f
  %i.i = icmp ult i64 %i.g, 244
  %or.cond.i.i.i.i.1 = and i1 %i.h, %i.i
  br i1 %or.cond.i.i.i.i.1, label %bb.c, label %.noexc5.i.i, !prof !31

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.f ; 2 uses
  br i1 %min.iters.check.1, label %scalar.ph.preheader.1, label %vector.body.1

vector.body.1:                                    ; preds = %bb.c, %vector.body.1
  %index.1 = phi i64 [ %index.next.1, %vector.body.1 ], [ 0, %bb.c ] ; 2 uses
  %vec.phi.1 = phi <2 x i64> [ %i.m, %vector.body.1 ], [ zeroinitializer, %bb.c ]
  %vec.phi123.1 = phi <2 x i64> [ %i.n, %vector.body.1 ], [ zeroinitializer, %bb.c ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %index.1 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load.1 = load <2 x i64>, ptr %i.k, align 8, !alias.scope !121
  %wide.load124.1 = load <2 x i64>, ptr %i.l, align 8, !alias.scope !121
  %i.m = add <2 x i64> %wide.load.1, %vec.phi.1   ; 2 uses
  %i.n = add <2 x i64> %wide.load124.1, %vec.phi123.1 ; 2 uses
  %index.next.1 = add nuw i64 %index.1, 4         ; 2 uses
  %i.o = icmp eq i64 %index.next.1, %n.vec.1
  br i1 %i.o, label %middle.block.1, label %vector.body.1, !llvm.loop !109

middle.block.1:                                   ; preds = %vector.body.1
  %bin.rdx.1 = add <2 x i64> %i.n, %i.m
  %i.p = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx.1) ; 2 uses
  br i1 %cmp.n.1, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.1, label %scalar.ph.preheader.1

scalar.ph.preheader.1:                            ; preds = %middle.block.1, %bb.c
  %.sroa.04.0.i.i.i.i.i.ph.1 = phi i64 [ 0, %bb.c ], [ %n.vec.1, %middle.block.1 ]
  %.sroa.02.0.i.i.i.i.i.ph.1 = phi i64 [ 0, %bb.c ], [ %i.p, %middle.block.1 ]
  br label %scalar.ph.1

scalar.ph.1:                                      ; preds = %scalar.ph.1, %scalar.ph.preheader.1
  %.sroa.04.0.i.i.i.i.i.1 = phi i64 [ %i.s, %scalar.ph.1 ], [ %.sroa.04.0.i.i.i.i.i.ph.1, %scalar.ph.preheader.1 ] ; 2 uses
  %.sroa.02.0.i.i.i.i.i.1 = phi i64 [ %i.r, %scalar.ph.1 ], [ %.sroa.02.0.i.i.i.i.i.ph.1, %scalar.ph.preheader.1 ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.04.0.i.i.i.i.i.1
  %.val.i.i.i.i.i.1 = load i64, ptr %i.q, align 8, !alias.scope !121, !noundef !21
  %i.r = add i64 %.val.i.i.i.i.i.1, %.sroa.02.0.i.i.i.i.i.1 ; 2 uses
  %i.s = add nuw i64 %.sroa.04.0.i.i.i.i.i.1, 1   ; 2 uses
  %i.t = icmp eq i64 %i.s, %.sroa.0.0.i.i.i.i.i.1
  br i1 %i.t, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.1, label %scalar.ph.1, !llvm.loop !110

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.1: ; preds = %scalar.ph.1, %middle.block.1
  %.lcssa117.1 = phi i64 [ %i.p, %middle.block.1 ], [ %i.r, %scalar.ph.1 ]
  %i.u = add i64 %.lcssa117.1, %.sroa.0.111.i.i.i.i.1 ; 2 uses
  %exitcond.not.i.i.i.1 = icmp eq i64 %i.e, %umax.i.i.i.1
  br i1 %exitcond.not.i.i.i.1, label %.preheader21.i.i.i.i.i.preheader.2, label %bb.b

.preheader21.i.i.i.i.i.preheader.2:               ; preds = %_RNvMs9_NtCs4NRVxsYgnAr_4core3numj3pow.exit.thread.i.i.i.i.1, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.1
  %.sroa.0.1.lcssa.i.i.i.i.1 = phi i64 [ %i.dc, %_RNvMs9_NtCs4NRVxsYgnAr_4core3numj3pow.exit.thread.i.i.i.i.1 ], [ %i.u, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldjjNCINvXsK_NtBW_5accumjNtB2q_3Sum3sumINtB1I_6CopiedBF_EE0E0ECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.1 ] ; 2 uses
  br label %.preheader21.i.i.i.i.i.2

.preheader21.i.i.i.i.i.2:                         ; preds = %bb.e, %.preheader21.i.i.i.i.i.preheader.2
  %.sroa.015.1.i.i.i.i.i.2 = phi i64 [ %.sroa.015.2.i.i.i.i.i.2, %bb.e ], [ 1, %.preheader21.i.i.i.i.i.preheader.2 ] ; 2 uses
  %.sroa.07.0.i.i.i.i.i.2 = phi i32 [ %i.ab, %bb.e ], [ 2, %.preheader21.i.i.i.i.i.preheader.2 ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i.2 = phi i64 [ %i.ac, %bb.e ], [ 3, %.preheader21.i.i.i.i.i.preheader.2 ] ; 3 uses
  %i.v = and i32 %.sroa.07.0.i.i.i.i.i.2, 1
  %.not.i.i.i.i.i.2 = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.i.i.i.2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader21.i.i.i.i.i.2
  %i.w = mul i64 %.sroa.0.0.i.i.i.i.i.2, %.sroa.015.1.i.i.i.i.i.2 ; 8 uses
  %i.x = icmp eq i32 %.sroa.07.0.i.i.i.i.i.2, 1
  br i1 %i.x, label %_RNvMs9_NtCs4NRVxsYgnAr_4core3numj3pow.exit.i.i.i.i.2, label %bb.e

_RNvMs9_NtCs4NRVxsYgnAr_4core3numj3pow.exit.i.i.i.i.2: ; preds = %bb.d
  %i.y = icmp eq i64 %i.w, 0
  br i1 %i.y, label %.noexc.i.i, label %_RNvMs9_NtCs4NRVxsYgnAr_4core3numj3pow.exit.thread.i.i.i.i.2

_RNvMs9_NtCs4NRVxsYgnAr_4core3numj3pow.exit.thread.i.i.i.i.2: ; preds = %_RNvMs9_NtCs4NRVxsYgnAr_4core3numj3pow.exit.i.i.i.i.2
  %i.z = mul i64 %i.w, 3                          ; 3 uses
  %i.aa = udiv i64 243, %i.z
  %.not16.i.i.i.i.2 = icmp ugt i64 %i.z, 243
  br i1 %.not16.i.i.i.i.2, label %.preheader21.i.i.i.i.i.preheader.3, label %.lr.ph.i.i.i.i.2

bb.e:                                             ; preds = %bb.d, %.preheader21.i.i.i.i.i.2
  %.sroa.015.2.i.i.i.i.i.2 = phi i64 [ %i.w, %bb.d ], [ %.sroa.015.1.i.i.i.i.i.2, %.preheader21.i.i.i.i.i.2 ]
  %i.ab = lshr i32 %.sroa.07.0.i.i.i.i.i.2, 1
  %i.ac = mul i64 %.sroa.0.0.i.i.i.i.i.2, %.sroa.0.0.i.i.i.i.i.2
  br label %.preheader21.i.i.i.i.i.2
end_hunk_0
