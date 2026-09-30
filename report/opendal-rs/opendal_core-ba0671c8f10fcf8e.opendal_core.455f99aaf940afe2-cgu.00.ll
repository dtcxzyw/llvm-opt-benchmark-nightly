Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opendal-rs/original/opendal_core-ba0671c8f10fcf8e.opendal_core.455f99aaf940afe2-cgu.00?download=true
inline.NumInlined: 560
inline.NumDeleted: 245
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvNtNtCs76KlaVGnJsc_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECs5XgW7KoffLW_12opendal_core:bb.a
  %i.dh = load i8, ptr %i.db, align 1, !alias.scope !663, !noalias !664, !noundef !11
  %i.di = zext i8 %i.dh to i64
  %i.dj = xor i64 %i.df, %i.di
  %i.dk = mul i64 %i.dj, 1099511628211
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 5
  %i.dm = load i8, ptr %i.dg, align 1, !alias.scope !663, !noalias !664, !noundef !11
  %i.dn = zext i8 %i.dm to i64
  %i.do = xor i64 %i.dk, %i.dn
  %i.dp = mul i64 %i.do, 1099511628211
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 6
  %i.dr = load i8, ptr %i.dl, align 1, !alias.scope !663, !noalias !664, !noundef !11
  %i.ds = zext i8 %i.dr to i64
  %i.dt = xor i64 %i.dp, %i.ds
  %i.du = mul i64 %i.dt, 1099511628211
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 7
  %i.dw = load i8, ptr %i.dq, align 1, !alias.scope !663, !noalias !664, !noundef !11
  %i.dx = zext i8 %i.dw to i64
  %i.dy = xor i64 %i.du, %i.dx
  %i.dz = mul i64 %i.dy, 1099511628211
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 8 ; 2 uses
  %i.eb = load i8, ptr %i.dv, align 1, !alias.scope !663, !noalias !664, !noundef !11
  %i.ec = zext i8 %i.eb to i64
  %i.ed = xor i64 %i.dz, %i.ec
  %i.ee = mul i64 %i.ed, 1099511628211            ; 2 uses
  %i.ef = icmp eq ptr %i.ea, %i.cj
  br i1 %i.ef, label %_RINvXsz_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_10HeaderNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECs5XgW7KoffLW_12opendal_core.exit, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.eg = load i8, ptr %i.ch, align 8, !range !13, !noalias !662, !noundef !11
  %i.eh = zext nneg i8 %i.eg to i64
  %i.ei = xor i64 %i.cg, %i.eh
  %i.ej = mul i64 %i.ei, 2232315406967589409
  br label %_RINvXsz_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_10HeaderNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECs5XgW7KoffLW_12opendal_core.exit

_RINvXsz_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_10HeaderNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECs5XgW7KoffLW_12opendal_core.exit: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.g, %bb.f, %_RINvXsz_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_10HeaderNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtNtCs9k3SxhrAWiO_3std4hash6random13DefaultHasherECs5XgW7KoffLW_12opendal_core.exit
  %.sroa.0.0 = phi i64 [ %i.cb, %_RINvXsz_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_10HeaderNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtNtCs9k3SxhrAWiO_3std4hash6random13DefaultHasherECs5XgW7KoffLW_12opendal_core.exit ], [ %i.ej, %bb.g ], [ %i.cg, %bb.f ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %i.ee, %.lr.ph.i.i.i.i ]
  %i.ek = trunc i64 %.sroa.0.0 to i16
  %i.el = and i16 %i.ek, 32767
  ret i16 %i.el
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden noundef range(i16 0, -32768) i16 @_RINvNtNtCs76KlaVGnJsc_4http6header3map15hash_elem_usingNtNtB4_4name7HdrNameECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [72 x i8], align 16               ; 14 uses
  %i.e = load i64, ptr %0, align 8, !range !16, !noundef !11
  %i.f = icmp eq i64 %i.e, 2
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.h = load <2 x i64>, ptr %i.g, align 8        ; 3 uses
  %i.i = shufflevector <2 x i64> %i.h, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.j = xor <2 x i64> %i.i, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.j, ptr %i.d, align 16
  %i.k = shufflevector <2 x i64> %i.h, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.l = xor <2 x i64> %i.k, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.l, ptr %.sroa.513.0..sroa_idx, align 16
  store <2 x i64> %i.h, ptr %.sroa.7.0..sroa_idx, align 16
  %.sroa.915.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !698)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !699)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.915.0..sroa_idx, i8 0, i64 24, i1 false)
  %i.n = load i8, ptr %i.m, align 8, !range !23, !alias.scope !700, !noalias !701, !noundef !11 ; 2 uses
  %i.o = icmp ne i8 %i.n, 2                       ; 2 uses
  %i.p = zext i1 %i.o to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !702
  store i64 %i.p, ptr %i.c, align 8, !noalias !702
  call fastcc void @_RNvXs2_NtNtCs9k3SxhrAWiO_3std4hash6randomNtB5_13DefaultHasherNtNtCsgxBkk5gSRhY_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 8) #30, !noalias !700
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !702
  br i1 %i.o, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !703)
  %i.q = trunc nuw i8 %i.n to i1
  %i.r = load ptr, ptr %1, align 8, !alias.scope !704, !noalias !705, !nonnull !11, !noundef !11 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !704, !noalias !705, !noundef !11 ; 3 uses
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.t
  %i.v = icmp samesign eq i64 %i.t, 0
  br i1 %i.v, label %_RINvXsB_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_7HdrNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtNtCs9k3SxhrAWiO_3std4hash6random13DefaultHasherECs5XgW7KoffLW_12opendal_core.exit, label %.lr.ph.i.i.i

bb.e:                                             ; preds = %bb.c
  call fastcc void @_RNvXs2_NtNtCs9k3SxhrAWiO_3std4hash6randomNtB5_13DefaultHasherNtNtCsgxBkk5gSRhY_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef %i.t) #30, !noalias !704
  br label %_RINvXsB_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_7HdrNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtNtCs9k3SxhrAWiO_3std4hash6random13DefaultHasherECs5XgW7KoffLW_12opendal_core.exit

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.sroa.0.02.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.r, %bb.d ] ; 2 uses
  %i.w = load i8, ptr %.sroa.0.02.i.i.i, align 1, !noalias !706, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !706
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i.i, i64 1 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr @21, i64 %i.x
  %i.aa = load i8, ptr %i.z, align 1, !noalias !706, !noundef !11
  store i8 %i.aa, ptr %i.b, align 1, !noalias !706
  call fastcc void @_RNvXs2_NtNtCs9k3SxhrAWiO_3std4hash6randomNtB5_13DefaultHasherNtNtCsgxBkk5gSRhY_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1) #30, !noalias !704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !706
  %i.ab = icmp eq ptr %i.y, %i.u
  br i1 %i.ab, label %_RINvXsB_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_7HdrNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtNtCs9k3SxhrAWiO_3std4hash6random13DefaultHasherECs5XgW7KoffLW_12opendal_core.exit, label %.lr.ph.i.i.i

bb.f:                                             ; preds = %bb.b
  %i.ac = load i8, ptr %1, align 8, !range !13, !alias.scope !700, !noalias !701, !noundef !11
  %i.ad = zext nneg i8 %i.ac to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !707
  store i64 %i.ad, ptr %i.a, align 8, !noalias !707
  call fastcc void @_RNvXs2_NtNtCs9k3SxhrAWiO_3std4hash6randomNtB5_13DefaultHasherNtNtCsgxBkk5gSRhY_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #30, !noalias !700
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !707
  br label %_RINvXsB_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_7HdrNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtNtCs9k3SxhrAWiO_3std4hash6random13DefaultHasherECs5XgW7KoffLW_12opendal_core.exit

_RINvXsB_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_7HdrNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtNtCs9k3SxhrAWiO_3std4hash6random13DefaultHasherECs5XgW7KoffLW_12opendal_core.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %bb.e, %bb.f
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 16, !alias.scope !708
  %.sroa.10.0.copyload.i = load i64, ptr %.sroa.412.0..sroa_idx, align 8, !alias.scope !708
  %.sroa.17.0.copyload.i = load i64, ptr %.sroa.513.0..sroa_idx, align 16, !alias.scope !708 ; 3 uses
  %.sroa.22.0.copyload.i = load i64, ptr %.sroa.614.0..sroa_idx, align 8, !alias.scope !708
  %i.ae = load i64, ptr %.sroa.915.0..sroa_idx, align 16, !alias.scope !708, !noundef !11
  %i.af = shl i64 %i.ae, 56
  %i.ag = load i64, ptr %.sroa.10.0..sroa_idx, align 8, !alias.scope !708, !noundef !11
  %i.ah = or i64 %i.af, %i.ag                     ; 2 uses
  %i.ai = xor i64 %i.ah, %.sroa.22.0.copyload.i   ; 3 uses
  %i.aj = add i64 %.sroa.17.0.copyload.i, %.sroa.0.0.copyload.i ; 3 uses
  %i.ak = add i64 %i.ai, %.sroa.10.0.copyload.i   ; 2 uses
  %i.al = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i, i64 %.sroa.17.0.copyload.i, i64 13)
  %i.am = xor i64 %i.al, %i.aj                    ; 3 uses
  %i.an = tail call noundef i64 @llvm.fshl.i64(i64 %i.ai, i64 %i.ai, i64 16)
  %i.ao = xor i64 %i.an, %i.ak                    ; 3 uses
  %i.ap = tail call noundef i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 32)
  %i.aq = add i64 %i.ak, %i.am                    ; 3 uses
  %i.ar = add i64 %i.ao, %i.ap                    ; 2 uses
  %i.as = tail call noundef i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 17)
  %i.at = xor i64 %i.aq, %i.as                    ; 3 uses
  %i.au = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 21)
  %i.av = xor i64 %i.au, %i.ar                    ; 3 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 32)
  %i.ax = xor i64 %i.ar, %i.ah
  %i.ay = xor i64 %i.aw, 255
  %i.az = add i64 %i.ax, %i.at                    ; 3 uses
  %i.ba = add i64 %i.av, %i.ay                    ; 2 uses
  %i.bb = tail call noundef i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 13)
  %i.bc = xor i64 %i.az, %i.bb                    ; 3 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 16)
  %i.be = xor i64 %i.bd, %i.ba                    ; 3 uses
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 32)
  %i.bg = add i64 %i.bc, %i.ba                    ; 3 uses
  %i.bh = add i64 %i.be, %i.bf                    ; 2 uses
  %i.bi = tail call noundef i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 17)
  %i.bj = xor i64 %i.bg, %i.bi                    ; 3 uses
  %i.bk = tail call noundef i64 @llvm.fshl.i64(i64 %i.be, i64 %i.be, i64 21)
  %i.bl = xor i64 %i.bk, %i.bh                    ; 3 uses
  %i.bm = tail call noundef i64 @llvm.fshl.i64(i64 %i.bg, i64 %i.bg, i64 32)
  %i.bn = add i64 %i.bj, %i.bh                    ; 3 uses
  %i.bo = add i64 %i.bl, %i.bm                    ; 2 uses
  %i.bp = tail call noundef i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 13)
  %i.bq = xor i64 %i.bp, %i.bn                    ; 3 uses
  %i.br = tail call noundef i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 16)
  %i.bs = xor i64 %i.br, %i.bo                    ; 3 uses
  %i.bt = tail call noundef i64 @llvm.fshl.i64(i64 %i.bn, i64 %i.bn, i64 32)
  %i.bu = add i64 %i.bq, %i.bo                    ; 3 uses
  %i.bv = add i64 %i.bs, %i.bt                    ; 2 uses
  %i.bw = tail call noundef i64 @llvm.fshl.i64(i64 %i.bq, i64 %i.bq, i64 17)
  %i.bx = xor i64 %i.bw, %i.bu                    ; 3 uses
  %i.by = tail call noundef i64 @llvm.fshl.i64(i64 %i.bs, i64 %i.bs, i64 21)
  %i.bz = xor i64 %i.by, %i.bv                    ; 2 uses
  %i.ca = tail call noundef i64 @llvm.fshl.i64(i64 %i.bu, i64 %i.bu, i64 32)
  %i.cb = add i64 %i.bx, %i.bv
  %i.cc = add i64 %i.bz, %i.ca                    ; 2 uses
  %i.cd = tail call noundef i64 @llvm.fshl.i64(i64 %i.bx, i64 %i.bx, i64 13)
  %i.ce = xor i64 %i.cd, %i.cb                    ; 2 uses
  %i.cf = shl i64 %i.bz, 16
  %i.cg = xor i64 %i.cf, %i.cc
  %i.ch = add i64 %i.ce, %i.cc                    ; 2 uses
  %i.ci = lshr i64 %i.ce, 47
  %i.cj = lshr i64 %i.cg, 43
  %i.ck = lshr i64 %i.ch, 32
  %i.cl = xor i64 %i.cj, %i.ci
  %i.cm = xor i64 %i.cl, %i.ck
  %i.cn = xor i64 %i.cm, %i.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvXsB_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_7HdrNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECs5XgW7KoffLW_12opendal_core.exit

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !709)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !710)
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cp = load i8, ptr %i.co, align 8, !range !23, !alias.scope !711, !noalias !712, !noundef !11 ; 2 uses
  %i.cq = icmp ne i8 %i.cp, 2                     ; 2 uses
  %i.cr = zext i1 %i.cq to i64
  %i.cs = xor i64 %i.cr, -3750763034362895579
  %i.ct = mul i64 %i.cs, 2232315406967589409      ; 6 uses
  br i1 %i.cq, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !713)
  %i.cu = load ptr, ptr %1, align 8, !alias.scope !714, !noalias !715, !nonnull !11, !noundef !11 ; 5 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !alias.scope !714, !noalias !715, !noundef !11 ; 6 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cw ; 2 uses
  %i.cy = icmp samesign eq i64 %i.cw, 0
  br i1 %i.cy, label %_RINvXsB_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_7HdrNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECs5XgW7KoffLW_12opendal_core.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %2 = trunc nuw i8 %i.cp to i1
  br i1 %2, label %.lr.ph.i.i.i.i.preheader, label %.lr.ph.i.i.i20.preheader

.lr.ph.i.i.i20.preheader:                         ; preds = %bb.i
  %xtraiter = and i64 %i.cw, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i20.prol.loopexit, label %.lr.ph.i.i.i20.prol

.lr.ph.i.i.i20.prol:                              ; preds = %.lr.ph.i.i.i20.preheader, %.lr.ph.i.i.i20.prol
  %.sroa.0.010.i.i.i.prol = phi ptr [ %i.dg, %.lr.ph.i.i.i20.prol ], [ %i.cu, %.lr.ph.i.i.i20.preheader ] ; 2 uses
  %.lcssa789.i.i.i.prol = phi i64 [ %i.df, %.lr.ph.i.i.i20.prol ], [ %i.ct, %.lr.ph.i.i.i20.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i20.prol ], [ 0, %.lr.ph.i.i.i20.preheader ]
  %i.cz = load i8, ptr %.sroa.0.010.i.i.i.prol, align 1, !noalias !716, !noundef !11
  %i.da = zext i8 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr @21, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !noalias !716, !noundef !11
  %i.dd = zext i8 %i.dc to i64
  %i.de = xor i64 %.lcssa789.i.i.i.prol, %i.dd
  %i.df = mul i64 %i.de, 1099511628211            ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i20.prol.loopexit, label %.lr.ph.i.i.i20.prol, !llvm.loop !693

.lr.ph.i.i.i20.prol.loopexit:                     ; preds = %.lr.ph.i.i.i20.prol, %.lr.ph.i.i.i20.preheader
  %.lcssa33.unr = phi i64 [ poison, %.lr.ph.i.i.i20.preheader ], [ %i.df, %.lr.ph.i.i.i20.prol ]
  %.sroa.0.010.i.i.i.unr = phi ptr [ %i.cu, %.lr.ph.i.i.i20.preheader ], [ %i.dg, %.lr.ph.i.i.i20.prol ]
  %.lcssa789.i.i.i.unr = phi i64 [ %i.ct, %.lr.ph.i.i.i20.preheader ], [ %i.df, %.lr.ph.i.i.i20.prol ]
  %i.dh = icmp ult i64 %i.cw, 4
  br i1 %i.dh, label %_RINvXsB_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_7HdrNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECs5XgW7KoffLW_12opendal_core.exit, label %.lr.ph.i.i.i20

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.i
  %xtraiter34 = and i64 %i.cw, 7                  ; 2 uses
  %lcmp.mod35.not = icmp eq i64 %xtraiter34, 0
  br i1 %lcmp.mod35.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.prol = phi i64 [ %i.dm, %.lr.ph.i.i.i.i.prol ], [ %i.ct, %.lr.ph.i.i.i.i.preheader ]
  %.sroa.03.05.i.i.i.i.prol = phi ptr [ %i.di, %.lr.ph.i.i.i.i.prol ], [ %i.cu, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter36 = phi i64 [ %prol.iter36.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.prol, i64 1 ; 2 uses
  %i.dj = load i8, ptr %.sroa.03.05.i.i.i.i.prol, align 1, !alias.scope !717, !noalias !718, !noundef !11
  %i.dk = zext i8 %i.dj to i64
  %i.dl = xor i64 %.sroa.0.06.i.i.i.i.prol, %i.dk
  %i.dm = mul i64 %i.dl, 1099511628211            ; 3 uses
  %prol.iter36.next = add i64 %prol.iter36, 1     ; 2 uses
  %prol.iter36.cmp.not = icmp eq i64 %prol.iter36.next, %xtraiter34
  br i1 %prol.iter36.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !697

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.dm, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.06.i.i.i.i.unr = phi i64 [ %i.ct, %.lr.ph.i.i.i.i.preheader ], [ %i.dm, %.lr.ph.i.i.i.i.prol ]
  %.sroa.03.05.i.i.i.i.unr = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.preheader ], [ %i.di, %.lr.ph.i.i.i.i.prol ]
  %i.dn = icmp ult i64 %i.cw, 8
  br i1 %i.dn, label %_RINvXsB_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_7HdrNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECs5XgW7KoffLW_12opendal_core.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.sroa.0.06.i.i.i.i = phi i64 [ %i.fb, %.lr.ph.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.sroa.03.05.i.i.i.i = phi ptr [ %i.ex, %.lr.ph.i.i.i.i ], [ %.sroa.03.05.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 1
  %i.dp = load i8, ptr %.sroa.03.05.i.i.i.i, align 1, !alias.scope !717, !noalias !718, !noundef !11
  %i.dq = zext i8 %i.dp to i64
  %i.dr = xor i64 %.sroa.0.06.i.i.i.i, %i.dq
  %i.ds = mul i64 %i.dr, 1099511628211
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 2
  %i.du = load i8, ptr %i.do, align 1, !alias.scope !717, !noalias !718, !noundef !11
  %i.dv = zext i8 %i.du to i64
  %i.dw = xor i64 %i.ds, %i.dv
  %i.dx = mul i64 %i.dw, 1099511628211
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 3
  %i.dz = load i8, ptr %i.dt, align 1, !alias.scope !717, !noalias !718, !noundef !11
  %i.ea = zext i8 %i.dz to i64
  %i.eb = xor i64 %i.dx, %i.ea
  %i.ec = mul i64 %i.eb, 1099511628211
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 4
  %i.ee = load i8, ptr %i.dy, align 1, !alias.scope !717, !noalias !718, !noundef !11
  %i.ef = zext i8 %i.ee to i64
  %i.eg = xor i64 %i.ec, %i.ef
  %i.eh = mul i64 %i.eg, 1099511628211
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 5
  %i.ej = load i8, ptr %i.ed, align 1, !alias.scope !717, !noalias !718, !noundef !11
  %i.ek = zext i8 %i.ej to i64
  %i.el = xor i64 %i.eh, %i.ek
  %i.em = mul i64 %i.el, 1099511628211
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 6
  %i.eo = load i8, ptr %i.ei, align 1, !alias.scope !717, !noalias !718, !noundef !11
  %i.ep = zext i8 %i.eo to i64
  %i.eq = xor i64 %i.em, %i.ep
  %i.er = mul i64 %i.eq, 1099511628211
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 7
  %i.et = load i8, ptr %i.en, align 1, !alias.scope !717, !noalias !718, !noundef !11
  %i.eu = zext i8 %i.et to i64
  %i.ev = xor i64 %i.er, %i.eu
  %i.ew = mul i64 %i.ev, 1099511628211
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 8 ; 2 uses
  %i.ey = load i8, ptr %i.es, align 1, !alias.scope !717, !noalias !718, !noundef !11
  %i.ez = zext i8 %i.ey to i64
  %i.fa = xor i64 %i.ew, %i.ez
  %i.fb = mul i64 %i.fa, 1099511628211            ; 2 uses
  %i.fc = icmp eq ptr %i.ex, %i.cx
  br i1 %i.fc, label %_RINvXsB_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_7HdrNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECs5XgW7KoffLW_12opendal_core.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i20:                                   ; preds = %.lr.ph.i.i.i20.prol.loopexit, %.lr.ph.i.i.i20
  %.sroa.0.010.i.i.i = phi ptr [ %i.gi, %.lr.ph.i.i.i20 ], [ %.sroa.0.010.i.i.i.unr, %.lr.ph.i.i.i20.prol.loopexit ] ; 5 uses
  %.lcssa789.i.i.i = phi i64 [ %i.gh, %.lr.ph.i.i.i20 ], [ %.lcssa789.i.i.i.unr, %.lr.ph.i.i.i20.prol.loopexit ]
  %i.fd = load i8, ptr %.sroa.0.010.i.i.i, align 1, !noalias !716, !noundef !11
  %i.fe = zext i8 %i.fd to i64
  %i.ff = getelementptr inbounds nuw i8, ptr @21, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1, !noalias !716, !noundef !11
  %i.fh = zext i8 %i.fg to i64
  %i.fi = xor i64 %.lcssa789.i.i.i, %i.fh
  %i.fj = mul i64 %i.fi, 1099511628211
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i, i64 1
  %i.fl = load i8, ptr %i.fk, align 1, !noalias !716, !noundef !11
  %i.fm = zext i8 %i.fl to i64
  %i.fn = getelementptr inbounds nuw i8, ptr @21, i64 %i.fm
  %i.fo = load i8, ptr %i.fn, align 1, !noalias !716, !noundef !11
  %i.fp = zext i8 %i.fo to i64
  %i.fq = xor i64 %i.fj, %i.fp
  %i.fr = mul i64 %i.fq, 1099511628211
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i, i64 2
  %i.ft = load i8, ptr %i.fs, align 1, !noalias !716, !noundef !11
  %i.fu = zext i8 %i.ft to i64
  %i.fv = getelementptr inbounds nuw i8, ptr @21, i64 %i.fu
  %i.fw = load i8, ptr %i.fv, align 1, !noalias !716, !noundef !11
  %i.fx = zext i8 %i.fw to i64
  %i.fy = xor i64 %i.fr, %i.fx
  %i.fz = mul i64 %i.fy, 1099511628211
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i, i64 3
  %i.gb = load i8, ptr %i.ga, align 1, !noalias !716, !noundef !11
  %i.gc = zext i8 %i.gb to i64
  %i.gd = getelementptr inbounds nuw i8, ptr @21, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1, !noalias !716, !noundef !11
  %i.gf = zext i8 %i.ge to i64
  %i.gg = xor i64 %i.fz, %i.gf
  %i.gh = mul i64 %i.gg, 1099511628211            ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i, i64 4 ; 2 uses
  %i.gj = icmp eq ptr %i.gi, %i.cx
  br i1 %i.gj, label %_RINvXsB_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_7HdrNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECs5XgW7KoffLW_12opendal_core.exit, label %.lr.ph.i.i.i20

bb.j:                                             ; preds = %bb.g
  %i.gk = load i8, ptr %1, align 8, !range !13, !alias.scope !711, !noalias !712, !noundef !11
  %i.gl = zext nneg i8 %i.gk to i64
  %i.gm = xor i64 %i.ct, %i.gl
  %i.gn = mul i64 %i.gm, 2232315406967589409
  br label %_RINvXsB_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_7HdrNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECs5XgW7KoffLW_12opendal_core.exit

_RINvXsB_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_7HdrNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECs5XgW7KoffLW_12opendal_core.exit: ; preds = %.lr.ph.i.i.i20.prol.loopexit, %.lr.ph.i.i.i20, %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.h, %bb.j, %_RINvXsB_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_7HdrNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtNtCs9k3SxhrAWiO_3std4hash6random13DefaultHasherECs5XgW7KoffLW_12opendal_core.exit
  %.sroa.0.0 = phi i64 [ %i.cn, %_RINvXsB_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_7HdrNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtNtCs9k3SxhrAWiO_3std4hash6random13DefaultHasherECs5XgW7KoffLW_12opendal_core.exit ], [ %i.fb, %.lr.ph.i.i.i.i ], [ %i.gn, %bb.j ], [ %i.ct, %bb.h ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %.lcssa33.unr, %.lr.ph.i.i.i20.prol.loopexit ], [ %i.gh, %.lr.ph.i.i.i20 ]
  %i.go = trunc i64 %.sroa.0.0 to i16
  %i.gp = and i16 %i.go, 32767
  ret i16 %i.gp
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RINvYINtNtNtCsgxBkk5gSRhY_4core3str4iter5SplitNtB8_12IsWhitespaceENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB12_4find5checkReQNtB8_10IsNotEmptyE0INtNtNtBa_3ops12control_flow11ControlFlowB2d_EECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  %.promoted = load i8, ptr %i.c, align 1, !alias.scope !749
  %.promoted23 = load i64, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i = load ptr, ptr %i.d, align 8, !nonnull !11 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !11 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load i8, ptr %i.i, align 8, !range !27
  %i.k = trunc nuw i8 %i.j to i1
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre2.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.promoted26 = load ptr, ptr %i.e, align 8
  %.promoted27 = load i64, ptr %i.h, align 8
  br label %bb.b

bb.b:                                             ; preds = %select.unfold, %bb.a
  %.lcssa1630 = phi i64 [ %.lcssa1628, %select.unfold ], [ %.promoted27, %bb.a ] ; 2 uses
  %i.m = phi ptr [ %i.by, %select.unfold ], [ %.promoted26, %bb.a ] ; 3 uses
  %.pre.i.i.i25 = phi i64 [ %.pre.i.i.i24, %select.unfold ], [ %.promoted23, %bb.a ] ; 5 uses
  %i.n = phi i8 [ %i.bz, %select.unfold ], [ %.promoted, %bb.a ]
  call void @llvm.experimental.noalias.scope.decl(metadata !750)
  call void @llvm.experimental.noalias.scope.decl(metadata !751)
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %.split.loop.exit17, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !752)
  call void @llvm.experimental.noalias.scope.decl(metadata !753)
  %i.p = icmp eq ptr %i.m, %i.g
  br i1 %i.p, label %_RNvMsf_NtNtCsgxBkk5gSRhY_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE7get_endCs5XgW7KoffLW_12opendal_core.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %bb.l
  %i.q = phi i64 [ %i.bf, %bb.l ], [ %.lcssa1630, %bb.c ] ; 2 uses
  %i.r = phi ptr [ %i.bb, %bb.l ], [ %i.m, %bb.c ] ; 6 uses
  %i.s = ptrtoint ptr %i.r to i64
  call void @llvm.experimental.noalias.scope.decl(metadata !754)
  call void @llvm.experimental.noalias.scope.decl(metadata !755)
  call void @llvm.experimental.noalias.scope.decl(metadata !756)
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 4 uses
  store ptr %i.t, ptr %i.e, align 8, !alias.scope !757, !noalias !758
  %i.u = load i8, ptr %i.r, align 1, !noalias !759, !noundef !11 ; 5 uses
  %i.v = icmp sgt i8 %i.u, -1
  br i1 %i.v, label %bb.d, label %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit12.i.i.i.i.i.i.i

_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit12.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.w = and i8 %i.u, 31
  %i.x = zext nneg i8 %i.w to i32                 ; 3 uses
  %i.y = icmp ne ptr %i.t, %i.g
  call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 2 ; 4 uses
  store ptr %i.z, ptr %i.e, align 8, !alias.scope !760, !noalias !758
  %i.aa = load i8, ptr %i.t, align 1, !noalias !759, !noundef !11
  %i.ab = shl nuw nsw i32 %i.x, 6
  %i.ac = and i8 %i.aa, 63
  %i.ad = zext nneg i8 %i.ac to i32               ; 2 uses
  %i.ae = or disjoint i32 %i.ab, %i.ad
  %i.af = icmp samesign ugt i8 %i.u, -33
  br i1 %i.af, label %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit14.i.i.i.i.i.i.i, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ag = zext nneg i8 %i.u to i32
  br label %bb.e

_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit14.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit12.i.i.i.i.i.i.i
  %i.ah = icmp ne ptr %i.z, %i.g
  call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 3 ; 4 uses
  store ptr %i.ai, ptr %i.e, align 8, !alias.scope !761, !noalias !758
  %i.aj = load i8, ptr %i.z, align 1, !noalias !759, !noundef !11
  %i.ak = shl nuw nsw i32 %i.ad, 6
  %i.al = and i8 %i.aj, 63
  %i.am = zext nneg i8 %i.al to i32
  %i.an = or disjoint i32 %i.ak, %i.am            ; 2 uses
  %i.ao = shl nuw nsw i32 %i.x, 12
  %i.ap = or disjoint i32 %i.an, %i.ao
  %i.aq = icmp samesign ugt i8 %i.u, -17
  br i1 %i.aq, label %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit16.i.i.i.i.i.i.i, label %bb.e

_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit16.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit14.i.i.i.i.i.i.i
  %i.ar = icmp ne ptr %i.ai, %i.g
  call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  store ptr %i.as, ptr %i.e, align 8, !alias.scope !762, !noalias !758
  %i.at = load i8, ptr %i.ai, align 1, !noalias !759, !noundef !11
  %i.au = shl nuw nsw i32 %i.x, 18
  %i.av = and i32 %i.au, 1835008
  %i.aw = shl nuw nsw i32 %i.an, 6
  %i.ax = and i8 %i.at, 63
  %i.ay = zext nneg i8 %i.ax to i32
  %i.az = or disjoint i32 %i.aw, %i.ay
  %i.ba = or disjoint i32 %i.az, %i.av
  br label %bb.e

bb.e:                                             ; preds = %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit16.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit14.i.i.i.i.i.i.i, %bb.d, %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit12.i.i.i.i.i.i.i
  %i.bb = phi ptr [ %i.ai, %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit14.i.i.i.i.i.i.i ], [ %i.as, %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit16.i.i.i.i.i.i.i ], [ %i.z, %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit12.i.i.i.i.i.i.i ], [ %i.t, %bb.d ] ; 5 uses
  %.sroa.4.0.i.ph.i.i.i.i.i.i = phi i32 [ %i.ap, %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit14.i.i.i.i.i.i.i ], [ %i.ba, %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit16.i.i.i.i.i.i.i ], [ %i.ae, %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit12.i.i.i.i.i.i.i ], [ %i.ag, %bb.d ] ; 8 uses
  %i.bc = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, 1114112
  call void @llvm.assume(i1 %i.bc)
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bd, %i.s
  %i.bf = add i64 %i.be, %i.q                     ; 7 uses
  switch i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, label %bb.f [
    i32 32, label %bb.m
    i32 13, label %bb.m
    i32 12, label %bb.m
    i32 11, label %bb.m
    i32 10, label %bb.m
    i32 9, label %bb.m
  ]

bb.f:                                             ; preds = %bb.e
  %i.bg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, 133
  br i1 %i.bg, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bh = lshr i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, 8
  switch i32 %i.bh, label %bb.l [
    i32 0, label %bb.j
    i32 22, label %bb.h
    i32 32, label %bb.k
    i32 48, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.bi = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, 5760
  %i.bj = zext i1 %i.bi to i8
  br label %_RNvXs3_NtNtCsgxBkk5gSRhY_4core3str7patternNtB7_12IsWhitespaceNtB5_11MultiCharEq7matchesCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.bk = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, 12288
  %i.bl = zext i1 %i.bk to i8
  br label %_RNvXs3_NtNtCsgxBkk5gSRhY_4core3str7patternNtB7_12IsWhitespaceNtB5_11MultiCharEq7matchesCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.g
  %i.bm = and i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, 255
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCsgxBkk5gSRhY_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !noalias !763, !noundef !11
  br label %_RNvXs3_NtNtCsgxBkk5gSRhY_4core3str7patternNtB7_12IsWhitespaceNtB5_11MultiCharEq7matchesCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i

bb.k:                                             ; preds = %bb.g
  %i.bq = and i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, 255
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCsgxBkk5gSRhY_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !noalias !763, !noundef !11
  %i.bu = lshr i8 %i.bt, 1
  br label %_RNvXs3_NtNtCsgxBkk5gSRhY_4core3str7patternNtB7_12IsWhitespaceNtB5_11MultiCharEq7matchesCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i

_RNvXs3_NtNtCsgxBkk5gSRhY_4core3str7patternNtB7_12IsWhitespaceNtB5_11MultiCharEq7matchesCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = phi i8 [ %i.bl, %bb.i ], [ %i.bp, %bb.j ], [ %i.bj, %bb.h ], [ %i.bu, %bb.k ]
  %i.bv = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i to i1
  br i1 %i.bv, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_RNvXs3_NtNtCsgxBkk5gSRhY_4core3str7patternNtB7_12IsWhitespaceNtB5_11MultiCharEq7matchesCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i, %bb.g, %bb.f
  %i.bw = icmp eq ptr %i.bb, %i.g
  br i1 %i.bw, label %._RNvXs8_NtNtCsgxBkk5gSRhY_4core3str7patternINtB5_19MultiCharEqSearcherNtB7_12IsWhitespaceENtB5_8Searcher4nextCs5XgW7KoffLW_12opendal_core.exit.loopexit_crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._RNvXs8_NtNtCsgxBkk5gSRhY_4core3str7patternINtB5_19MultiCharEqSearcherNtB7_12IsWhitespaceENtB5_8Searcher4nextCs5XgW7KoffLW_12opendal_core.exit.loopexit_crit_edge.i.i.i.i: ; preds = %bb.l
  store i64 %i.bf, ptr %i.h, align 8, !alias.scope !764, !noalias !758
  br label %_RNvMsf_NtNtCsgxBkk5gSRhY_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE7get_endCs5XgW7KoffLW_12opendal_core.exit.i.i

bb.m:                                             ; preds = %_RNvXs3_NtNtCsgxBkk5gSRhY_4core3str7patternNtB7_12IsWhitespaceNtB5_11MultiCharEq7matchesCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  store i64 %i.bf, ptr %i.h, align 8, !alias.scope !764, !noalias !758
  store i64 %i.bf, ptr %0, align 8, !alias.scope !749
  br label %select.unfold

_RNvMsf_NtNtCsgxBkk5gSRhY_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE7get_endCs5XgW7KoffLW_12opendal_core.exit.i.i: ; preds = %._RNvXs8_NtNtCsgxBkk5gSRhY_4core3str7patternINtB5_19MultiCharEqSearcherNtB7_12IsWhitespaceENtB5_8Searcher4nextCs5XgW7KoffLW_12opendal_core.exit.loopexit_crit_edge.i.i.i.i, %bb.c
  %.lcssa1629 = phi i64 [ %i.bf, %._RNvXs8_NtNtCsgxBkk5gSRhY_4core3str7patternINtB5_19MultiCharEqSearcherNtB7_12IsWhitespaceENtB5_8Searcher4nextCs5XgW7KoffLW_12opendal_core.exit.loopexit_crit_edge.i.i.i.i ], [ %.lcssa1630, %bb.c ]
  %i.bx = phi ptr [ %i.bb, %._RNvXs8_NtNtCsgxBkk5gSRhY_4core3str7patternINtB5_19MultiCharEqSearcherNtB7_12IsWhitespaceENtB5_8Searcher4nextCs5XgW7KoffLW_12opendal_core.exit.loopexit_crit_edge.i.i.i.i ], [ %i.m, %bb.c ]
  store i8 1, ptr %i.c, align 1, !alias.scope !765
  %.not.i.i.i = icmp ne i64 %.pre2.i.i.i, %.pre.i.i.i25
  %or.cond.not.i.i.i = select i1 %i.k, i1 true, i1 %.not.i.i.i
  br i1 %or.cond.not.i.i.i, label %select.unfold, label %.split.loop.exit17

select.unfold:                                    ; preds = %_RNvMsf_NtNtCsgxBkk5gSRhY_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE7get_endCs5XgW7KoffLW_12opendal_core.exit.i.i, %bb.m
  %.lcssa1628 = phi i64 [ %i.bf, %bb.m ], [ %.lcssa1629, %_RNvMsf_NtNtCsgxBkk5gSRhY_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE7get_endCs5XgW7KoffLW_12opendal_core.exit.i.i ]
  %i.by = phi ptr [ %i.bb, %bb.m ], [ %i.bx, %_RNvMsf_NtNtCsgxBkk5gSRhY_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE7get_endCs5XgW7KoffLW_12opendal_core.exit.i.i ]
  %.pre.i.i.i24 = phi i64 [ %i.bf, %bb.m ], [ %.pre.i.i.i25, %_RNvMsf_NtNtCsgxBkk5gSRhY_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE7get_endCs5XgW7KoffLW_12opendal_core.exit.i.i ]
  %i.bz = phi i8 [ 0, %bb.m ], [ 1, %_RNvMsf_NtNtCsgxBkk5gSRhY_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE7get_endCs5XgW7KoffLW_12opendal_core.exit.i.i ]
  %.pn33 = phi i64 [ %i.q, %bb.m ], [ %.pre2.i.i.i, %_RNvMsf_NtNtCsgxBkk5gSRhY_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE7get_endCs5XgW7KoffLW_12opendal_core.exit.i.i ]
  %.sroa.4.1.i.i = sub nuw i64 %.pn33, %.pre.i.i.i25 ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.pre.i.i.i25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.1.i.i, ptr %i.a, align 8, !noalias !766
  store i64 %.sroa.4.1.i.i, ptr %i.l, align 8, !noalias !766
end_hunk_0
