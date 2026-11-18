Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/convert.convert.652d47baf39f5aab-cgu.12?download=true
inline.NumInlined: 447
inline.NumDeleted: 185
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXsM_NtNtCsi68uqYEhoRA_5gimli4read4unitINtB5_14AttributeValueINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEjENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs8GyQQEoxZtT_7convert:bb.a
  store i64 %i.bt, ptr %i.bu, align 8
  br label %bb.aw

bb.x:                                             ; preds = %bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !623, !noundef !5
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bw, ptr %i.bx, align 8
  br label %bb.aw

bb.y:                                             ; preds = %bb.a
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !alias.scope !624, !noundef !5
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bz, ptr %i.ca, align 8
  br label %bb.aw

bb.z:                                             ; preds = %bb.a
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !625, !noundef !5
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cc, ptr %i.cd, align 8
  br label %bb.aw

bb.aa:                                            ; preds = %bb.a
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !626, !noundef !5
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cf, ptr %i.cg, align 8
  br label %bb.aw

bb.ab:                                            ; preds = %bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !noundef !5
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ci, ptr %i.cj, align 8
  br label %bb.aw

bb.ac:                                            ; preds = %bb.a
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !alias.scope !627, !noundef !5
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cl, ptr %i.cm, align 8
  br label %bb.aw

bb.ad:                                            ; preds = %bb.a
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !alias.scope !628, !noundef !5
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.co, ptr %i.cp, align 8
  br label %bb.aw

bb.ae:                                            ; preds = %bb.a
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cr = load i64, ptr %i.cq, align 8, !alias.scope !629, !noundef !5
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cr, ptr %i.cs, align 8
  br label %bb.aw

bb.af:                                            ; preds = %bb.a
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cu = load i64, ptr %i.ct, align 8, !alias.scope !630, !noundef !5
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cu, ptr %i.cv, align 8
  br label %bb.aw

bb.ag:                                            ; preds = %bb.a
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !alias.scope !631, !noundef !5
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cx, ptr %i.cy, align 8
  br label %bb.aw

bb.ah:                                            ; preds = %bb.a
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !alias.scope !632, !nonnull !5, !noundef !5
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dc = load i64, ptr %i.db, align 16, !alias.scope !632, !noundef !5
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i2 = load i8, ptr %i.dd, align 8, !range !610, !alias.scope !632, !noundef !5
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.da, ptr %i.de, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dc, ptr %.sroa.44.0..sroa_idx, align 16
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.val.i2, ptr %.sroa.55.0..sroa_idx, align 8
  br label %bb.aw

bb.ai:                                            ; preds = %bb.a
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dg = load i8, ptr %i.df, align 8, !noundef !5
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.dg, ptr %i.dh, align 8
  br label %bb.aw

bb.aj:                                            ; preds = %bb.a
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dj = load i8, ptr %i.di, align 8, !noundef !5
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.dj, ptr %i.dk, align 8
  br label %bb.aw

bb.ak:                                            ; preds = %bb.a
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dm = load i8, ptr %i.dl, align 8, !noundef !5
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.dm, ptr %i.dn, align 8
  br label %bb.aw

bb.al:                                            ; preds = %bb.a
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dp = load i8, ptr %i.do, align 8, !noundef !5
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.dp, ptr %i.dq, align 8
  br label %bb.aw

bb.am:                                            ; preds = %bb.a
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ds = load i8, ptr %i.dr, align 8, !noundef !5
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.ds, ptr %i.dt, align 8
  br label %bb.aw

bb.an:                                            ; preds = %bb.a
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dv = load i8, ptr %i.du, align 8, !noundef !5
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.dv, ptr %i.dw, align 8
  br label %bb.aw

bb.ao:                                            ; preds = %bb.a
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dy = load i16, ptr %i.dx, align 8, !noundef !5
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.dy, ptr %i.dz, align 8
  br label %bb.aw

bb.ap:                                            ; preds = %bb.a
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eb = load i64, ptr %i.ea, align 8, !noundef !5
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.eb, ptr %i.ec, align 8
  br label %bb.aw

bb.aq:                                            ; preds = %bb.a
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ee = load i8, ptr %i.ed, align 8, !noundef !5
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.ee, ptr %i.ef, align 8
  br label %bb.aw

bb.ar:                                            ; preds = %bb.a
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eh = load i8, ptr %i.eg, align 8, !noundef !5
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.eh, ptr %i.ei, align 8
  br label %bb.aw

bb.as:                                            ; preds = %bb.a
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ek = load i8, ptr %i.ej, align 8, !noundef !5
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.ek, ptr %i.el, align 8
  br label %bb.aw

bb.at:                                            ; preds = %bb.a
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.en = load i8, ptr %i.em, align 8, !noundef !5
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.en, ptr %i.eo, align 8
  br label %bb.aw

bb.au:                                            ; preds = %bb.a
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eq = load i64, ptr %i.ep, align 8, !noundef !5
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.eq, ptr %i.er, align 8
  br label %bb.aw

bb.av:                                            ; preds = %bb.a
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.et = load i64, ptr %i.es, align 8, !noundef !5
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.et, ptr %i.eu, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  store i64 %i.a, ptr %0, align 16
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsi68uqYEhoRA_5gimli4read4line9FileEntryINtNtBK_12endian_slice11EndianSliceNtNtBM_9endianity13RunTimeEndianEjEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs8GyQQEoxZtT_7convert(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %i.b = alloca [32 x i8], align 16               ; 4 uses
  %.sroa.037.i = alloca [32 x i8], align 16       ; 4 uses
  %.sroa.539.i = alloca [24 x i8], align 8        ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5
  %i.f = load i64, ptr %i.c, align 8, !noundef !5 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !641)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !642)
  %i.g = mul nuw nsw i64 %i.f, 112                ; 2 uses
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtNtCsi68uqYEhoRA_5gimli4read4line9FileEntryINtNtBP_12endian_slice11EndianSliceNtNtBR_9endianity13RunTimeEndianEjENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs8GyQQEoxZtT_7convert.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !643
  %i.i = tail call noundef align 16 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.g, i64 noundef range(i64 1, -9223372036854775807) 16) #26, !noalias !643 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 16, i64 %i.g) #29, !noalias !644
  unreachable

.lr.ph.i:                                         ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph.i
  %.sroa.015.054.i = phi ptr [ %i.e, %.lr.ph.i ], [ %i.l, %bb.f ] ; 6 uses
  %.sroa.7.053.i = phi i64 [ 0, %.lr.ph.i ], [ %i.m, %bb.f ] ; 2 uses
  %.sroa.10.052.i = phi i64 [ %i.f, %.lr.ph.i ], [ %2, %bb.f ]
  %2 = add nsw i64 %.sroa.10.052.i, -1            ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.015.054.i, i64 112
  %i.m = add nuw nsw i64 %.sroa.7.053.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !645)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !644
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !646
  call fastcc void @_RNvXsM_NtNtCsi68uqYEhoRA_5gimli4read4unitINtB5_14AttributeValueINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEjENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 16 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %.sroa.015.054.i) #30, !noalias !647
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.015.054.i, i64 80
  %i.o = load <2 x i64>, ptr %i.n, align 16, !alias.scope !648
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.015.054.i, i64 96
  %i.q = load i64, ptr %i.p, align 16, !alias.scope !648, !noundef !5
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.015.054.i, i64 32 ; 2 uses
  %i.s = load i64, ptr %i.r, align 16, !range !649, !alias.scope !648, !noundef !5
  %.not.i.i = icmp eq i64 %i.s, -1
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call fastcc void @_RNvXsM_NtNtCsi68uqYEhoRA_5gimli4read4unitINtB5_14AttributeValueINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEjENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 16 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(32) %i.r) #30, !noalias !647
  %.sroa.0.0.copyload1.i.i = load i64, ptr %i.a, align 16, !noalias !646
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.0.i14.i = phi i64 [ %.sroa.0.0.copyload1.i.i, %bb.e ], [ -1, %bb.d ]
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.015.054.i, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.037.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.037.i, ptr noundef nonnull align 16 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !644
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.539.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.539.i, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !644
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !646
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !644
  %i.u = getelementptr inbounds nuw [112 x i8], ptr %i.i, i64 %.sroa.7.053.i ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.u, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.037.i, i64 32, i1 false), !noalias !644
  %.sroa.438.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store i64 %.sroa.0.0.i14.i, ptr %.sroa.438.0..sroa_idx.i, align 16, !noalias !644
  %.sroa.539.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.539.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.539.i, i64 24, i1 false), !noalias !644
  %.sroa.640.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.640.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(16) %i.t, i64 16, i1 false), !noalias !641
  %.sroa.741.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  store <2 x i64> %i.o, ptr %.sroa.741.0..sroa_idx.i, align 16, !noalias !644
  %.sroa.943.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  store i64 %i.q, ptr %.sroa.943.0..sroa_idx.i, align 16, !noalias !644
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.037.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.539.i)
  %i.v = icmp eq i64 %2, 0
  br i1 %i.v, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtNtCsi68uqYEhoRA_5gimli4read4line9FileEntryINtNtBP_12endian_slice11EndianSliceNtNtBR_9endianity13RunTimeEndianEjENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs8GyQQEoxZtT_7convert.exit, label %bb.d

_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtNtCsi68uqYEhoRA_5gimli4read4line9FileEntryINtNtBP_12endian_slice11EndianSliceNtNtBR_9endianity13RunTimeEndianEjENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs8GyQQEoxZtT_7convert.exit: ; preds = %bb.f, %bb.a
  %.sroa.10.0.i62.i = phi ptr [ inttoptr (i64 16 to ptr), %bb.a ], [ %i.i, %bb.f ]
  store i64 %i.f, ptr %0, align 8, !alias.scope !641
  %.sroa.645.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i62.i, ptr %.sroa.645.0..sroa_idx.i, align 8, !alias.scope !641
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %.sroa.9.0..sroa_idx.i, align 8, !alias.scope !641
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsi68uqYEhoRA_5gimli4read4unit14AttributeValueINtNtBK_12endian_slice11EndianSliceNtNtBM_9endianity13RunTimeEndianEjEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs8GyQQEoxZtT_7convert(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %i.e = load i64, ptr %i.b, align 8, !noundef !5 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !655)
  %i.f = shl nuw nsw i64 %i.e, 5                  ; 2 uses
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtNtCsi68uqYEhoRA_5gimli4read4unit14AttributeValueINtNtBP_12endian_slice11EndianSliceNtNtBR_9endianity13RunTimeEndianEjENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs8GyQQEoxZtT_7convert.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !656
  %i.h = tail call noundef align 16 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.f, i64 noundef range(i64 1, -9223372036854775807) 16) #26, !noalias !656 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 16, i64 %i.f) #29, !noalias !657
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.d
  %.sroa.014.024.i = phi ptr [ %i.l, %bb.d ], [ %i.d, %bb.b ] ; 2 uses
  %.sroa.7.023.i = phi i64 [ %i.k, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %.sroa.10.022.i = phi i64 [ %i.j, %bb.d ], [ %i.e, %bb.b ]
  %i.j = add nsw i64 %.sroa.10.022.i, -1          ; 2 uses
  %i.k = add nuw nsw i64 %.sroa.7.023.i, 1
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.014.024.i, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !657
  call fastcc void @_RNvXsM_NtNtCsi68uqYEhoRA_5gimli4read4unitINtB5_14AttributeValueINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEjENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 16 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(32) %.sroa.014.024.i), !noalias !655
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.sroa.7.023.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.m, ptr noundef nonnull align 16 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !657
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !657
  %i.n = icmp eq i64 %i.j, 0
  br i1 %i.n, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtNtCsi68uqYEhoRA_5gimli4read4unit14AttributeValueINtNtBP_12endian_slice11EndianSliceNtNtBR_9endianity13RunTimeEndianEjENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs8GyQQEoxZtT_7convert.exit, label %bb.d

_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtNtCsi68uqYEhoRA_5gimli4read4unit14AttributeValueINtNtBP_12endian_slice11EndianSliceNtNtBR_9endianity13RunTimeEndianEjENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs8GyQQEoxZtT_7convert.exit: ; preds = %bb.d, %bb.a
  %.sroa.10.0.i32.i = phi ptr [ inttoptr (i64 16 to ptr), %bb.a ], [ %i.h, %bb.d ]
  store i64 %i.e, ptr %0, align 8, !alias.scope !655
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i32.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !655
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %.sroa.9.0..sroa_idx.i, align 8, !alias.scope !655
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsi68uqYEhoRA_5gimli4read4line15FileEntryFormatENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs8GyQQEoxZtT_7convert(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.d = load i64, ptr %i.a, align 8, !noundef !5 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !663)
  %i.e = shl nuw nsw i64 %i.d, 2                  ; 3 uses
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8GyQQEoxZtT_7convert.exit.thread.i, label %bb.b

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8GyQQEoxZtT_7convert.exit.thread.i: ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !663
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.g, align 8, !alias.scope !663
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.h, align 8, !alias.scope !663
  br label %_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCsi68uqYEhoRA_5gimli4read4line15FileEntryFormatNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs8GyQQEoxZtT_7convert.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !664
  %i.i = tail call noundef align 2 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.e, i64 noundef range(i64 1, -9223372036854775807) 2) #26, !noalias !664 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 2, i64 %i.e) #29, !noalias !665
  unreachable

bb.d:                                             ; preds = %bb.b
  store i64 %i.d, ptr %0, align 8, !alias.scope !663
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.k, align 8, !alias.scope !663
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.i, ptr nonnull readonly align 2 %i.c, i64 %i.e, i1 false), !noalias !663
  store i64 %i.d, ptr %i.l, align 8, !alias.scope !663
  br label %_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCsi68uqYEhoRA_5gimli4read4line15FileEntryFormatNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs8GyQQEoxZtT_7convert.exit

_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCsi68uqYEhoRA_5gimli4read4line15FileEntryFormatNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs8GyQQEoxZtT_7convert.exit: ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8GyQQEoxZtT_7convert.exit.thread.i, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs8GyQQEoxZtT_7convert(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.d = load i64, ptr %i.a, align 8, !noundef !5 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !671)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8GyQQEoxZtT_7convert.exit.thread.i, label %bb.b

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8GyQQEoxZtT_7convert.exit.thread.i: ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !671
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.f, align 8, !alias.scope !671
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.g, align 8, !alias.scope !671
  br label %_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs8GyQQEoxZtT_7convert.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !672
  %i.h = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.d, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !672 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %i.d) #29, !noalias !673
  unreachable

bb.d:                                             ; preds = %bb.b
  store i64 %i.d, ptr %0, align 8, !alias.scope !671
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.j, align 8, !alias.scope !671
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull readonly align 1 %i.c, i64 range(i64 0, -9223372036854775808) %i.d, i1 false), !noalias !671
  store i64 %i.d, ptr %i.k, align 8, !alias.scope !671
  br label %_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs8GyQQEoxZtT_7convert.exit

_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs8GyQQEoxZtT_7convert.exit: ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8GyQQEoxZtT_7convert.exit.thread.i, %bb.d
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtCsbbt5GHOb4oK_8indexmap6BucketIBw_hEuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !678)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtCsbbt5GHOb4oK_8indexmap6BucketINtNtCsexYYUdYSQU6_5alloc3vec3VechEuEECs8GyQQEoxZtT_7convert.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsbbt5GHOb4oK_8indexmap6BucketINtNtCsexYYUdYSQU6_5alloc3vec3VechEuEECs8GyQQEoxZtT_7convert.exit.i
  %.sroa.0.011.i = phi i64 [ %i.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsbbt5GHOb4oK_8indexmap6BucketINtNtCsexYYUdYSQU6_5alloc3vec3VechEuEECs8GyQQEoxZtT_7convert.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.011.i ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.0.011.i, 1        ; 2 uses
  %.val8.i = load i64, ptr %i.f, align 8, !alias.scope !678 ; 2 uses
  %i.h = icmp eq i64 %.val8.i, 0
  br i1 %i.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsbbt5GHOb4oK_8indexmap6BucketINtNtCsexYYUdYSQU6_5alloc3vec3VechEuEECs8GyQQEoxZtT_7convert.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.i = getelementptr i8, ptr %i.f, i64 8
  %.val9.i = load ptr, ptr %i.i, align 8, !alias.scope !678, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i, i64 noundef %.val8.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !679
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsbbt5GHOb4oK_8indexmap6BucketINtNtCsexYYUdYSQU6_5alloc3vec3VechEuEECs8GyQQEoxZtT_7convert.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsbbt5GHOb4oK_8indexmap6BucketINtNtCsexYYUdYSQU6_5alloc3vec3VechEuEECs8GyQQEoxZtT_7convert.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.j = icmp eq i64 %i.g, %i.d
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtCsbbt5GHOb4oK_8indexmap6BucketINtNtCsexYYUdYSQU6_5alloc3vec3VechEuEECs8GyQQEoxZtT_7convert.exit, label %.lr.ph.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtCsbbt5GHOb4oK_8indexmap6BucketINtNtCsexYYUdYSQU6_5alloc3vec3VechEuEECs8GyQQEoxZtT_7convert.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsbbt5GHOb4oK_8indexmap6BucketINtNtCsexYYUdYSQU6_5alloc3vec3VechEuEECs8GyQQEoxZtT_7convert.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtCsbbt5GHOb4oK_8indexmap6BucketNtNtNtCsi68uqYEhoRA_5gimli5write3loc12LocationListuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtCsbbt5GHOb4oK_8indexmap6BucketNtNtNtCsi68uqYEhoRA_5gimli5write3loc12LocationListuEECs8GyQQEoxZtT_7convert.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtCsbbt5GHOb4oK_8indexmap6BucketNtNtNtCsi68uqYEhoRA_5gimli5write3loc12LocationListuEECs8GyQQEoxZtT_7convert.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsbbt5GHOb4oK_8indexmap6BucketNtNtNtCsi68uqYEhoRA_5gimli5write3loc12LocationListuEECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef readonly align 8 dereferenceable(32) %i.g)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add nuw nsw i64 %.sroa.0.1.i2, 1         ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %._crit_edge, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsbbt5GHOb4oK_8indexmap6BucketNtNtNtCsi68uqYEhoRA_5gimli5write3loc12LocationListuEECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef readonly align 8 dereferenceable(32) %i.m) #24
          to label %bb.c unwind label %bb.e

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !682
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtCsbbt5GHOb4oK_8indexmap6BucketNtNtNtCsi68uqYEhoRA_5gimli5write3loc12LocationListuEECs8GyQQEoxZtT_7convert.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtCsbbt5GHOb4oK_8indexmap6BucketNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !687)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtCsbbt5GHOb4oK_8indexmap6BucketNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringuEECs8GyQQEoxZtT_7convert.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsbbt5GHOb4oK_8indexmap6BucketNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringuEECs8GyQQEoxZtT_7convert.exit.i
  %.sroa.0.012.i = phi i64 [ %i.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsbbt5GHOb4oK_8indexmap6BucketNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringuEECs8GyQQEoxZtT_7convert.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.012.i ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.0.012.i, 1        ; 2 uses
  %.val8.i = load i64, ptr %i.f, align 8, !range !8, !alias.scope !687, !noundef !5 ; 2 uses
  %or.cond.i.i.i = icmp slt i64 %.val8.i, 1
  br i1 %or.cond.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsbbt5GHOb4oK_8indexmap6BucketNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringuEECs8GyQQEoxZtT_7convert.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = getelementptr i8, ptr %i.f, i64 8
  %.val9.i = load ptr, ptr %i.h, align 8, !alias.scope !687, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i, i64 noundef %.val8.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !688
end_hunk_0
