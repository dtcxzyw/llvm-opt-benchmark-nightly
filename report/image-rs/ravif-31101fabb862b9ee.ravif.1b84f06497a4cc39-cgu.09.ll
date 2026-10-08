Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/ravif-31101fabb862b9ee.ravif.1b84f06497a4cc39-cgu.09?download=true
inline.NumInlined: 917
inline.NumDeleted: 544
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_RINvNtCsdEEMmLUVy6d_5rav1e3lrf20setup_integral_imagetECs2mu2Cb9JdUH_5ravif:bb.a
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
  %umax297 = call i64 @llvm.umax.i64(i64 %.sroa.18173.32.copyload, i64 %.sroa.19.32.copyload)
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
  %.not.i48.a = icmp ugt i64 %i.bl, 386
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
  %i.bu = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.bv = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.bw = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  %i.by = getelementptr inbounds nuw i8, ptr %i.n, i64 240
  %i.bz = getelementptr inbounds nuw i8, ptr %i.n, i64 160
  %i.ca = getelementptr inbounds nuw i8, ptr %i.n, i64 136
  %i.cb = getelementptr inbounds nuw i8, ptr %i.n, i64 176
  %i.cc = getelementptr inbounds nuw i8, ptr %i.n, i64 224
  %i.cd = getelementptr inbounds nuw i8, ptr %i.n, i64 200
  %i.ce = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.785.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.ch = add i64 %4, 1                           ; 8 uses
  %i.ci = icmp ugt i64 %i.ch, %i.bg
  %i.cj = icmp ugt i64 %i.ch, %i.bk
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.ch
  %i.cl = sub nuw i64 %i.bg, %i.ch
  %i.cm = sub nuw i64 %i.bk, %i.ch
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.ch
  %.not273.a = icmp eq i64 %i.ac, 0
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ac ; 2 uses
  %.sroa.478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %sext = shl i32 %.sroa.01.0.extract.trunc, 24
  %i.cp = ashr exact i32 %sext, 24                ; 2 uses
  %sext44 = shl nuw i32 %.sroa.4.0.extract.trunc, 24 ; 2 uses
  %7 = ashr exact i32 %sext44, 24
  %i.cq = add nsw i32 %i.cp, %7
  %i.cr = sub nsw i32 128, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = load ptr, ptr %6, align 8, !nonnull !4, !align !15
  %.sroa.4104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.5106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.6108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %.sroa.7110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %.sroa.8112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %.sroa.9114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %.sroa.11115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  %8 = ashr exact i32 %sext44, 20
  %i.cv = add i64 %i.ac, -1
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.cw = add i64 %4, 1                           ; 8 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cz = load i64, ptr %i.cy, align 8, !noundef !4 ; 4 uses
  %i.da = icmp ugt i64 %i.cw, %i.cz
  br i1 %i.da, label %bb.k, label %bb.j, !prof !8

bb.j:                                             ; preds = %bb.i
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.dc = load i64, ptr %i.db, align 8, !noundef !4 ; 4 uses
  %i.dd = icmp ugt i64 %i.cw, %i.dc
  br i1 %i.dd, label %bb.l, label %bb.m, !prof !8

bb.k:                                             ; preds = %bb.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.cw, i64 noundef %i.cz, i64 noundef %i.cz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #28
  unreachable

bb.l:                                             ; preds = %bb.j
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.cw, i64 noundef %i.dc, i64 noundef %i.dc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #28
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.df = load ptr, ptr %i.de, align 8, !nonnull !4, !noundef !4
  %i.dg = load ptr, ptr %i.cx, align 8, !nonnull !4, !noundef !4
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.cw ; 2 uses
  %i.di = sub nuw i64 %i.cz, %i.cw                ; 2 uses
  %i.dj = sub nuw i64 %i.dc, %i.cw                ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.cw ; 2 uses
  call void %.sroa.02.0121(ptr noalias nofree noundef nonnull align 4 %i.w, i64 noundef 386, ptr noalias nofree noundef nonnull align 4 %i.v, i64 noundef 386, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.dh, i64 noundef %i.di, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.dk, i64 noundef %i.dj, i64 noundef %4, i64 noundef 0, i64 noundef %i.ac, i32 noundef %i.an), !callees !18
  call void %.sroa.02.0121(ptr noalias nofree noundef nonnull align 4 %i.ag, i64 noundef 386, ptr noalias nofree noundef nonnull align 4 %i.ah, i64 noundef 386, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.dh, i64 noundef %i.di, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.dk, i64 noundef %i.dj, i64 noundef %4, i64 noundef 1, i64 noundef %i.ac, i32 noundef %i.an), !callees !18
  br label %.split267

._crit_edge272:                                   ; preds = %._crit_edge, %.split267
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  ret void

bb.n:                                             ; preds = %.lr.ph271, %._crit_edge
  %indvars.iv = phi i64 [ %i.ae, %.lr.ph271 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.sroa.016.0270 = phi i64 [ %.sroa.05.0.i.i, %.lr.ph271 ], [ %i.dn, %._crit_edge ]
  %.sroa.011.0269 = phi i64 [ 0, %.lr.ph271 ], [ %i.dm, %._crit_edge ] ; 7 uses
  %i.dl = icmp ult i64 %indvars.iv, 2
  %umax = select i1 %i.dl, i64 1, i64 2
  %i.dm = add i64 %.sroa.011.0269, 2              ; 2 uses
  %i.dn = add i64 %.sroa.016.0270, -1             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  br i1 %.not, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.do = call { ptr, i64 } @_RNvMsc_NtCsko5zPvjVG7R_7v_frame5planeINtB5_10PlaneSlicehE3rowCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5, i64 noundef %.sroa.011.0269), !noalias !846 ; 2 uses
  %i.dp = extractvalue { ptr, i64 } %i.do, 0      ; 3 uses
  br i1 %i.bm, label %bb.q, label %bb.p, !prof !19

bb.p:                                             ; preds = %bb.o
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ac, i64 noundef 384, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #28, !noalias !846
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.dq = extractvalue { ptr, i64 } %i.do, 1      ; 2 uses
  %.not.i45 = icmp ugt i64 %i.ac, %i.dq
  br i1 %.not.i45, label %bb.r, label %bb.s, !prof !8

bb.r:                                             ; preds = %bb.q
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ac, i64 noundef %i.dq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #28, !noalias !846
  unreachable

bb.s:                                             ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dp) ]
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.ac
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.r, ptr noundef nonnull align 4 %i.y, ptr noundef nonnull %i.bn, ptr noundef nonnull %i.dp, ptr noundef nonnull %i.dr)
  %.sroa.080.0.copyload = load ptr, ptr %i.r, align 8, !noalias !847 ; 9 uses
  %.sroa.482.0.copyload = load ptr, ptr %.sroa.482.0..sroa_idx, align 8, !noalias !847 ; 9 uses
  %.sroa.584.0.copyload = load i64, ptr %.sroa.584.0..sroa_idx, align 8, !noalias !847 ; 8 uses
  %.sroa.785.0.copyload = load i64, ptr %.sroa.785.0..sroa_idx, align 8, !noalias !847 ; 7 uses
  %i.ds = icmp ult i64 %.sroa.584.0.copyload, %.sroa.785.0.copyload
  br i1 %i.ds, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internalhECs2mu2Cb9JdUH_5ravif.exit47

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph: ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.080.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.482.0.copyload) ]
  %i.dt = sub nuw i64 %.sroa.785.0.copyload, %.sroa.584.0.copyload ; 3 uses
  %min.iters.check570 = icmp ult i64 %i.dt, 8
  br i1 %min.iters.check570, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.preheader, label %vector.memcheck561

vector.memcheck561:                               ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph
  %i.du = shl i64 %.sroa.584.0.copyload, 2
  %scevgep562.a = getelementptr i8, ptr %.sroa.080.0.copyload, i64 %i.du
  %i.dv = shl i64 %.sroa.785.0.copyload, 2
  %scevgep563.a = getelementptr i8, ptr %.sroa.080.0.copyload, i64 %i.dv
  %scevgep564.a = getelementptr i8, ptr %.sroa.482.0.copyload, i64 %.sroa.584.0.copyload
  %scevgep565 = getelementptr i8, ptr %.sroa.482.0.copyload, i64 %.sroa.785.0.copyload
  %bound0566 = icmp ult ptr %scevgep562.a, %scevgep565
  %bound1567 = icmp ult ptr %scevgep564.a, %scevgep563.a
  %found.conflict568 = and i1 %bound0566, %bound1567
  br i1 %found.conflict568, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.preheader, label %vector.ph571

vector.ph571:                                     ; preds = %vector.memcheck561
  %n.vec572 = and i64 %i.dt, -8                   ; 3 uses
  %i.dw = add i64 %.sroa.584.0.copyload, %n.vec572
  br label %vector.body573

vector.body573:                                   ; preds = %vector.body573, %vector.ph571
  %index574 = phi i64 [ 0, %vector.ph571 ], [ %index.next577, %vector.body573 ] ; 2 uses
  %i.dx = add nuw i64 %.sroa.584.0.copyload, %index574 ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.080.0.copyload, i64 %i.dx ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.482.0.copyload, i64 %i.dx ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %wide.load575.a = load <4 x i8>, ptr %i.dz, align 1, !alias.scope !848
  %wide.load576 = load <4 x i8>, ptr %i.ea, align 1, !alias.scope !848
  %i.eb = zext <4 x i8> %wide.load575.a to <4 x i32>
  %i.ec = zext <4 x i8> %wide.load576 to <4 x i32>
  %i.ed = shl nuw nsw <4 x i32> %i.eb, splat (i32 4)
  %i.ee = shl nuw nsw <4 x i32> %i.ec, splat (i32 4)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  store <4 x i32> %i.ed, ptr %i.dy, align 4, !alias.scope !849, !noalias !848
  store <4 x i32> %i.ee, ptr %i.ef, align 4, !alias.scope !849, !noalias !848
  %index.next577 = add nuw i64 %index574, 8       ; 2 uses
  %i.eg = icmp eq i64 %index.next577, %n.vec572
  br i1 %i.eg, label %middle.block578, label %vector.body573, !llvm.loop !748

middle.block578:                                  ; preds = %vector.body573
  %cmp.n579 = icmp eq i64 %i.dt, %n.vec572
  br i1 %cmp.n579, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internalhECs2mu2Cb9JdUH_5ravif.exit47, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.preheader: ; preds = %vector.memcheck561, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph, %middle.block578
  %.sroa.584.0260.ph = phi i64 [ %.sroa.584.0.copyload, %vector.memcheck561 ], [ %.sroa.584.0.copyload, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph ], [ %i.dw, %middle.block578 ] ; 4 uses
  %i.eh = sub i64 %.sroa.785.0.copyload, %.sroa.584.0260.ph
  %xtraiter = and i64 %i.eh, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol
  %.sroa.584.0260.prol = phi i64 [ %i.ek, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol ], [ %.sroa.584.0260.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.preheader ]
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.sroa.080.0.copyload, i64 %.sroa.584.0260.prol
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.482.0.copyload, i64 %.sroa.584.0260.prol
  %i.ek = add nuw i64 %.sroa.584.0260.prol, 1     ; 2 uses
  %i.el = load i8, ptr %i.ej, align 1, !noundef !4
  %i.em = zext i8 %i.el to i32
  %i.en = shl nuw nsw i32 %i.em, 4
  store i32 %i.en, ptr %i.ei, align 4
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol, !llvm.loop !749

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.preheader
  %.sroa.584.0260.unr = phi i64 [ %.sroa.584.0260.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.preheader ], [ %i.ek, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol ]
  %i.eo = sub i64 %.sroa.584.0260.ph, %.sroa.785.0.copyload
  %i.ep = icmp ugt i64 %i.eo, -4
  br i1 %i.ep, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internalhECs2mu2Cb9JdUH_5ravif.exit47, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit
  %.sroa.584.0260 = phi i64 [ %i.fk, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit ], [ %.sroa.584.0260.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit ] ; 6 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.080.0.copyload, i64 %.sroa.584.0260
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.482.0.copyload, i64 %.sroa.584.0260
  %i.es = add nuw i64 %.sroa.584.0260, 1          ; 2 uses
  %i.et = load i8, ptr %i.er, align 1, !noundef !4
  %i.eu = zext i8 %i.et to i32
  %i.ev = shl nuw nsw i32 %i.eu, 4
  store i32 %i.ev, ptr %i.eq, align 4
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %.sroa.080.0.copyload, i64 %i.es
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.482.0.copyload, i64 %i.es
  %i.ey = add nuw i64 %.sroa.584.0260, 2          ; 2 uses
  %i.ez = load i8, ptr %i.ex, align 1, !noundef !4
  %i.fa = zext i8 %i.ez to i32
  %i.fb = shl nuw nsw i32 %i.fa, 4
  store i32 %i.fb, ptr %i.ew, align 4
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.080.0.copyload, i64 %i.ey
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.482.0.copyload, i64 %i.ey
  %i.fe = add nuw i64 %.sroa.584.0260, 3          ; 2 uses
  %i.ff = load i8, ptr %i.fd, align 1, !noundef !4
  %i.fg = zext i8 %i.ff to i32
  %i.fh = shl nuw nsw i32 %i.fg, 4
  store i32 %i.fh, ptr %i.fc, align 4
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.080.0.copyload, i64 %i.fe
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.482.0.copyload, i64 %i.fe
  %i.fk = add nuw i64 %.sroa.584.0260, 4          ; 2 uses
  %i.fl = load i8, ptr %i.fj, align 1, !noundef !4
  %i.fm = zext i8 %i.fl to i32
  %i.fn = shl nuw nsw i32 %i.fm, 4
  store i32 %i.fn, ptr %i.fi, align 4
  %exitcond.not.3 = icmp eq i64 %i.fk, %.sroa.785.0.copyload
  br i1 %exitcond.not.3, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internalhECs2mu2Cb9JdUH_5ravif.exit47, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit, !llvm.loop !750

_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internalhECs2mu2Cb9JdUH_5ravif.exit47: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit, %middle.block578, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %.split

.split:                                           ; preds = %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r2_internalhECs2mu2Cb9JdUH_5ravif.exit, %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internalhECs2mu2Cb9JdUH_5ravif.exit47
end_hunk_0
begin_hunk_1_@_RINvNtCsdEEMmLUVy6d_5rav1e3lrf21sgrproj_stripe_filterhhECs2mu2Cb9JdUH_5ravif:bb.a
  %wide.load556.a = load <4 x i32>, ptr %i.nw, align 4, !noalias !887
  %i.nx = getelementptr inbounds nuw i8, ptr %i.mh, i64 %index538
  %wide.load557 = load <4 x i8>, ptr %i.nx, align 1, !noalias !887
  %i.ny = zext <4 x i8> %wide.load557 to <4 x i32>
  %i.nz = mul <4 x i32> %i.nr, %i.ny
  %i.oa = add <4 x i32> %wide.load553.a, %wide.load552.a
  %i.ob = add <4 x i32> %i.oa, %wide.load554.a
  %i.oc = add <4 x i32> %i.ob, %wide.load555.a
  %i.od = add <4 x i32> %i.oc, %wide.load556.a
  %i.oe = shl <4 x i32> %i.od, splat (i32 2)
  %i.of = add <4 x i32> %i.my, splat (i32 256)
  %i.og = add <4 x i32> %i.of, %i.oe
  %i.oh = add <4 x i32> %i.og, %i.nz
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index538
  %i.oj = lshr <4 x i32> %i.oh, splat (i32 9)
  store <4 x i32> %i.oj, ptr %i.oi, align 4, !alias.scope !886, !noalias !888
  %index.next558 = add nuw i64 %index538, 4       ; 2 uses
  %i.ok = icmp eq i64 %index.next558, %n.vec536
  br i1 %i.ok, label %.lr.ph262.preheader582, label %vector.body537, !llvm.loop !835

.lr.ph262.preheader582:                           ; preds = %vector.body537, %.lr.ph262.preheader
  %.sroa.0.0.i261.ph = phi i64 [ 0, %.lr.ph262.preheader ], [ %n.vec536, %vector.body537 ]
  br label %.lr.ph262

.lr.ph262:                                        ; preds = %.lr.ph262.preheader582, %bb.be
  %.sroa.0.0.i261 = phi i64 [ %i.ol, %bb.be ], [ %.sroa.0.0.i261.ph, %.lr.ph262.preheader582 ] ; 12 uses
  %i.ol = add nuw nsw i64 %.sroa.0.0.i261, 1      ; 6 uses
  %i.om = add nuw nsw i64 %.sroa.0.0.i261, 2      ; 7 uses
  %exitcond349.not.a = icmp eq i64 %.sroa.0.0.i261, 384
  br i1 %exitcond349.not.a, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.lr.ph262
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.om, i64 noundef 386, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #28, !noalias !887
  unreachable

bb.bc:                                            ; preds = %.lr.ph262
  %exitcond350.not.a = icmp eq i64 %.sroa.0.0.i261, %i.mi
  br i1 %exitcond350.not.a, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.mi, i64 noundef %i.mi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #28, !noalias !887
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %.sroa.0.0.i261
  %i.oo = load i32, ptr %i.on, align 4, !noalias !887, !noundef !4
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.lv, i64 %.sroa.0.0.i261
  %i.oq = load i32, ptr %i.op, align 4, !noalias !887, !noundef !4
  %i.or = add i32 %i.oq, %i.oo
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %i.om
  %i.ot = load i32, ptr %i.os, align 4, !noalias !887, !noundef !4
  %i.ou = add i32 %i.or, %i.ot
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.lv, i64 %i.om
  %i.ow = load i32, ptr %i.ov, align 4, !noalias !887, !noundef !4
  %i.ox = add i32 %i.ou, %i.ow
  %i.oy = mul i32 %i.ox, 3
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %.sroa.0.0.i261
  %i.pa = load i32, ptr %i.oz, align 4, !noalias !887, !noundef !4
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.lu, i64 %.sroa.0.0.i261
  %i.pc = load i32, ptr %i.pb, align 4, !noalias !887, !noundef !4
  %i.pd = add i32 %i.pc, %i.pa
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %i.om
  %i.pf = load i32, ptr %i.pe, align 4, !noalias !887, !noundef !4
  %i.pg = add i32 %i.pd, %i.pf
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.lu, i64 %i.om
  %i.pi = load i32, ptr %i.ph, align 4, !noalias !887, !noundef !4
  %i.pj = add i32 %i.pg, %i.pi
  %i.pk = mul i32 %i.pj, 3
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %.sroa.0.0.i261
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %i.ol
  %i.pn = load i32, ptr %i.pm, align 4, !noalias !887, !noundef !4
  %i.po = load <2 x i32>, ptr %i.pl, align 4, !noalias !887
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %i.lu, i64 %i.ol
  %i.pq = load i32, ptr %i.pp, align 4, !noalias !887, !noundef !4
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.om
  %i.ps = load i32, ptr %i.pr, align 4, !noalias !887, !noundef !4
  %i.pt = insertelement <4 x i32> poison, i32 %i.ps, i64 2
  %i.pu = insertelement <4 x i32> %i.pt, i32 %i.pq, i64 3
  %i.pv = shufflevector <2 x i32> %i.po, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.pw = shufflevector <4 x i32> %i.pv, <4 x i32> %i.pu, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.px = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.pw)
  %op.rdx581 = add i32 %i.px, %i.pn
  %i.py = shl i32 %op.rdx581, 2
  %i.pz = add i32 %i.py, %i.pk
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %.sroa.0.0.i261
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %i.ol
  %i.qc = load i32, ptr %i.qb, align 4, !noalias !887, !noundef !4
  %i.qd = load <2 x i32>, ptr %i.qa, align 4, !noalias !887
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.lv, i64 %i.ol
  %i.qf = load i32, ptr %i.qe, align 4, !noalias !887, !noundef !4
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %i.om
  %i.qh = load i32, ptr %i.qg, align 4, !noalias !887, !noundef !4
  %i.qi = getelementptr inbounds nuw i8, ptr %i.mh, i64 %.sroa.0.0.i261
  %i.qj = load i8, ptr %i.qi, align 1, !noalias !887, !noundef !4
  %i.qk = zext i8 %i.qj to i32
  %i.ql = mul i32 %i.pz, %i.qk
  %i.qm = insertelement <4 x i32> poison, i32 %i.qh, i64 2
  %i.qn = insertelement <4 x i32> %i.qm, i32 %i.qf, i64 3
  %i.qo = shufflevector <2 x i32> %i.qd, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qp = shufflevector <4 x i32> %i.qo, <4 x i32> %i.qn, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.qq = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.qp)
  %op.rdx = add i32 %i.qq, %i.qc
  %i.qr = shl i32 %op.rdx, 2
  %i.qs = add i32 %i.oy, 256
  %i.qt = add i32 %i.qs, %i.qr
  %i.qu = add i32 %i.qt, %i.ql
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.sroa.0.0.i261
  %i.qw = lshr i32 %i.qu, 9
  store i32 %i.qw, ptr %i.qv, align 4, !alias.scope !886, !noalias !888
  %exitcond351.not = icmp eq i64 %i.ol, %i.ac
  br i1 %exitcond351.not, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r1_internalhECs2mu2Cb9JdUH_5ravif.exit, label %.lr.ph262, !llvm.loop !836

bb.bf:                                            ; preds = %bb.ay
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ch, i64 noundef %i.bk, i64 noundef %i.bk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #28
  unreachable

bb.bg:                                            ; preds = %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r1_internalhECs2mu2Cb9JdUH_5ravif.exit
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #28
  unreachable

bb.bh:                                            ; preds = %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r1_internalhECs2mu2Cb9JdUH_5ravif.exit
  %i.qx = extractvalue { ptr, i64 } %i.lw, 1      ; 2 uses
  %i.qy = load i64, ptr %i.cu, align 8, !noundef !4
  %i.qz = mul i64 %i.qy, %i.jr
  %i.ra = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.qz ; 2 uses
  %i.rb = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %.sroa.014.0265 ; 2 uses
  %i.rc = load ptr, ptr %i.rb, align 8, !nonnull !4, !align !21, !noundef !4 ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rb, i64 8
  %i.re = load i64, ptr %i.rd, align 8, !noundef !4 ; 2 uses
  %i.rf = load i64, ptr %i.aq, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %.not.i49 = icmp ugt i64 %i.ac, %i.qx
  br i1 %.not.i49, label %bb.bi, label %bb.bj, !prof !11

bb.bi:                                            ; preds = %bb.bh
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ac, i64 noundef range(i64 0, -9223372036854775808) %i.qx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #28, !noalias !889
  unreachable

bb.bj:                                            ; preds = %bb.bh
  %i.rg = getelementptr inbounds nuw i8, ptr %i.lx, i64 %i.ac
  %.not6.i50 = icmp ugt i64 %i.ac, %i.re
  br i1 %.not6.i50, label %bb.bk, label %bb.bl, !prof !8

bb.bk:                                            ; preds = %bb.bj
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ac, i64 noundef range(i64 0, 2305843009213693952) %i.re, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #28, !noalias !889
  unreachable

bb.bl:                                            ; preds = %bb.bj
  br i1 %i.bm, label %bb.bn, label %bb.bm, !prof !19

bb.bm:                                            ; preds = %bb.bl
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ac, i64 noundef 384, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #28, !noalias !889
  unreachable

bb.bn:                                            ; preds = %bb.bl
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %i.rc, i64 %i.ac
  %i.ri = getelementptr inbounds nuw i8, ptr %i.ra, i64 %i.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !890
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull %i.ra, ptr noundef nonnull %i.ri, ptr noundef nonnull readonly %i.lx, ptr noundef nonnull readonly %i.rg), !noalias !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !890
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEBW_EINtB5_7ZipImplBW_BW_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly align 4 %i.rc, ptr noundef nonnull readonly %i.rh, ptr noundef nonnull readonly align 4 %i.u, ptr noundef nonnull readonly %i.co)
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuthEINtB13_4IterhEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !890
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !890
  %.sroa.0102.0.copyload = load ptr, ptr %i.m, align 8, !noalias !889 ; 2 uses
  %.sroa.4104.0.copyload = load ptr, ptr %.sroa.4104.0..sroa_idx, align 8, !noalias !889 ; 2 uses
  %.sroa.5106.0.copyload = load i64, ptr %.sroa.5106.0..sroa_idx, align 8, !noalias !889
  %.sroa.6108.0.copyload = load ptr, ptr %.sroa.6108.0..sroa_idx, align 8, !noalias !889 ; 2 uses
  %.sroa.7110.0.copyload = load ptr, ptr %.sroa.7110.0..sroa_idx, align 8, !noalias !889 ; 2 uses
  %.sroa.8112.0.copyload = load i64, ptr %.sroa.8112.0..sroa_idx, align 8, !noalias !889
  %.sroa.9114.0.copyload = load i64, ptr %.sroa.9114.0..sroa_idx, align 8, !noalias !889 ; 2 uses
  %.sroa.11115.0.copyload = load i64, ptr %.sroa.11115.0..sroa_idx, align 8, !noalias !889 ; 2 uses
  %i.rj = icmp ult i64 %.sroa.9114.0.copyload, %.sroa.11115.0.copyload
  br i1 %i.rj, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuthEINtB13_4IterhEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph, label %_RINvNvNtCsdEEMmLUVy6d_5rav1e3lrf21sgrproj_stripe_filter12apply_filterhECs2mu2Cb9JdUH_5ravif.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuthEINtB13_4IterhEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph: ; preds = %bb.bn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0102.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4104.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6108.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7110.0.copyload) ]
  %i.rk = trunc i64 %i.rf to i32
  %i.rl = and i32 %i.rk, 31
  %notmask.i = shl nsw i32 -1, %i.rl
  %i.rm = xor i32 %notmask.i, -1
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuthEINtB13_4IterhEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E4nextCs2mu2Cb9JdUH_5ravif.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuthEINtB13_4IterhEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E4nextCs2mu2Cb9JdUH_5ravif.exit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuthEINtB13_4IterhEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuthEINtB13_4IterhEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E4nextCs2mu2Cb9JdUH_5ravif.exit
  %.sroa.9114.0264 = phi i64 [ %.sroa.9114.0.copyload, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuthEINtB13_4IterhEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph ], [ %i.rt, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuthEINtB13_4IterhEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E4nextCs2mu2Cb9JdUH_5ravif.exit ] ; 3 uses
  %i.rn = add i64 %.sroa.9114.0264, %.sroa.5106.0.copyload ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %.sroa.0102.0.copyload, i64 %i.rn
  %i.rp = add i64 %.sroa.9114.0264, %.sroa.8112.0.copyload ; 2 uses
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7110.0.copyload, i64 %i.rp
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6108.0.copyload, i64 %i.rp
  %i.rs = getelementptr inbounds nuw i8, ptr %.sroa.4104.0.copyload, i64 %i.rn
  %i.rt = add i64 %.sroa.9114.0264, 1             ; 2 uses
  %i.ru = load i8, ptr %i.rs, align 1, !noundef !4
  %i.rv = load i32, ptr %i.rr, align 4, !noundef !4
  %i.rw = load i32, ptr %i.rq, align 4, !noundef !4
  %i.rx = zext i8 %i.ru to i32
  %i.ry = mul i32 %i.rv, %i.cp
  %i.rz = mul nsw i32 %8, %i.rx
  %i.sa = mul i32 %i.rw, %i.cr
  %i.sb = add i32 %i.ry, 1024
  %i.sc = add i32 %i.sb, %i.rz
  %i.sd = add i32 %i.sc, %i.sa
  %i.se = ashr i32 %i.sd, 11
  %i.sf = call noundef i32 @_RINvNtCsko5zPvjVG7R_7v_frame4math5clamplECs2mu2Cb9JdUH_5ravif(i32 noundef %i.se, i32 noundef 0, i32 noundef %i.rm)
  %i.sg = trunc i32 %i.sf to i8
  store i8 %i.sg, ptr %i.ro, align 1
  %exitcond353.not.a = icmp eq i64 %i.rt, %.sroa.11115.0.copyload
  br i1 %exitcond353.not.a, label %_RINvNvNtCsdEEMmLUVy6d_5rav1e3lrf21sgrproj_stripe_filter12apply_filterhECs2mu2Cb9JdUH_5ravif.exit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuthEINtB13_4IterhEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E4nextCs2mu2Cb9JdUH_5ravif.exit

_RINvNvNtCsdEEMmLUVy6d_5rav1e3lrf21sgrproj_stripe_filter12apply_filterhECs2mu2Cb9JdUH_5ravif.exit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuthEINtB13_4IterhEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E4nextCs2mu2Cb9JdUH_5ravif.exit, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %exitcond354.not = icmp eq i64 %i.jq, %umax
  br i1 %exitcond354.not, label %._crit_edge, label %.lr.ph266
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
  %.not.i48.a = icmp ugt i64 %i.bl, 386
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
  %i.bu = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.bv = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.bw = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  %i.by = getelementptr inbounds nuw i8, ptr %i.n, i64 240
  %i.bz = getelementptr inbounds nuw i8, ptr %i.n, i64 160
  %i.ca = getelementptr inbounds nuw i8, ptr %i.n, i64 136
  %i.cb = getelementptr inbounds nuw i8, ptr %i.n, i64 176
  %i.cc = getelementptr inbounds nuw i8, ptr %i.n, i64 224
  %i.cd = getelementptr inbounds nuw i8, ptr %i.n, i64 200
  %i.ce = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.785.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.ch = add i64 %4, 1                           ; 8 uses
  %i.ci = icmp ugt i64 %i.ch, %i.bg
  %i.cj = icmp ugt i64 %i.ch, %i.bk
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.ch
  %i.cl = sub nuw i64 %i.bg, %i.ch
  %i.cm = sub nuw i64 %i.bk, %i.ch
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.ch
  %.not273.a = icmp eq i64 %i.ac, 0
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ac ; 2 uses
  %.sroa.478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %sext = shl i32 %.sroa.01.0.extract.trunc, 24
  %i.cp = ashr exact i32 %sext, 24                ; 2 uses
  %sext44 = shl nuw i32 %.sroa.4.0.extract.trunc, 24 ; 2 uses
  %7 = ashr exact i32 %sext44, 24
  %i.cq = add nsw i32 %i.cp, %7
  %i.cr = sub nsw i32 128, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = load ptr, ptr %6, align 8, !nonnull !4, !align !15
  %.sroa.4104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.5106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.6108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %.sroa.7110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %.sroa.8112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %.sroa.9114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %.sroa.11115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  %8 = ashr exact i32 %sext44, 20
  %i.cv = add i64 %i.ac, -1
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.cw = add i64 %4, 1                           ; 8 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cz = load i64, ptr %i.cy, align 8, !noundef !4 ; 4 uses
  %i.da = icmp ugt i64 %i.cw, %i.cz
  br i1 %i.da, label %bb.k, label %bb.j, !prof !8

bb.j:                                             ; preds = %bb.i
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.dc = load i64, ptr %i.db, align 8, !noundef !4 ; 4 uses
  %i.dd = icmp ugt i64 %i.cw, %i.dc
  br i1 %i.dd, label %bb.l, label %bb.m, !prof !8

bb.k:                                             ; preds = %bb.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.cw, i64 noundef %i.cz, i64 noundef %i.cz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #28
  unreachable

bb.l:                                             ; preds = %bb.j
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.cw, i64 noundef %i.dc, i64 noundef %i.dc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #28
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.df = load ptr, ptr %i.de, align 8, !nonnull !4, !noundef !4
  %i.dg = load ptr, ptr %i.cx, align 8, !nonnull !4, !noundef !4
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.cw ; 2 uses
  %i.di = sub nuw i64 %i.cz, %i.cw                ; 2 uses
  %i.dj = sub nuw i64 %i.dc, %i.cw                ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.cw ; 2 uses
  call void %.sroa.02.0121(ptr noalias nofree noundef nonnull align 4 %i.w, i64 noundef 386, ptr noalias nofree noundef nonnull align 4 %i.v, i64 noundef 386, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.dh, i64 noundef %i.di, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.dk, i64 noundef %i.dj, i64 noundef %4, i64 noundef 0, i64 noundef %i.ac, i32 noundef %i.an), !callees !18
  call void %.sroa.02.0121(ptr noalias nofree noundef nonnull align 4 %i.ag, i64 noundef 386, ptr noalias nofree noundef nonnull align 4 %i.ah, i64 noundef 386, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.dh, i64 noundef %i.di, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.dk, i64 noundef %i.dj, i64 noundef %4, i64 noundef 1, i64 noundef %i.ac, i32 noundef %i.an), !callees !18
  br label %.split267

._crit_edge272:                                   ; preds = %._crit_edge, %.split267
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  ret void

bb.n:                                             ; preds = %.lr.ph271, %._crit_edge
  %indvars.iv = phi i64 [ %i.ae, %.lr.ph271 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.sroa.016.0270 = phi i64 [ %.sroa.05.0.i.i, %.lr.ph271 ], [ %i.dn, %._crit_edge ]
  %.sroa.011.0269 = phi i64 [ 0, %.lr.ph271 ], [ %i.dm, %._crit_edge ] ; 7 uses
  %i.dl = icmp ult i64 %indvars.iv, 2
  %umax = select i1 %i.dl, i64 1, i64 2
  %i.dm = add i64 %.sroa.011.0269, 2              ; 2 uses
  %i.dn = add i64 %.sroa.016.0270, -1             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  br i1 %.not, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.do = call { ptr, i64 } @_RNvMsc_NtCsko5zPvjVG7R_7v_frame5planeINtB5_10PlaneSlicetE3rowCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5, i64 noundef %.sroa.011.0269), !noalias !996 ; 2 uses
  %i.dp = extractvalue { ptr, i64 } %i.do, 0      ; 3 uses
  br i1 %i.bm, label %bb.q, label %bb.p, !prof !19

bb.p:                                             ; preds = %bb.o
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ac, i64 noundef 384, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #28, !noalias !996
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.dq = extractvalue { ptr, i64 } %i.do, 1      ; 2 uses
  %.not.i45 = icmp ugt i64 %i.ac, %i.dq
  br i1 %.not.i45, label %bb.r, label %bb.s, !prof !8

bb.r:                                             ; preds = %bb.q
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ac, i64 noundef %i.dq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #28, !noalias !996
  unreachable

bb.s:                                             ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dp) ]
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.dp, i64 %i.ac
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.r, ptr noundef nonnull align 4 %i.y, ptr noundef nonnull %i.bn, ptr noundef nonnull %i.dp, ptr noundef nonnull %i.dr)
  %.sroa.080.0.copyload = load ptr, ptr %i.r, align 8, !noalias !997 ; 9 uses
  %.sroa.482.0.copyload = load ptr, ptr %.sroa.482.0..sroa_idx, align 8, !noalias !997 ; 9 uses
  %.sroa.584.0.copyload = load i64, ptr %.sroa.584.0..sroa_idx, align 8, !noalias !997 ; 8 uses
  %.sroa.785.0.copyload = load i64, ptr %.sroa.785.0..sroa_idx, align 8, !noalias !997 ; 7 uses
  %i.ds = icmp ult i64 %.sroa.584.0.copyload, %.sroa.785.0.copyload
  br i1 %i.ds, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internaltECs2mu2Cb9JdUH_5ravif.exit47

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph: ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.080.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.482.0.copyload) ]
  %i.dt = sub nuw i64 %.sroa.785.0.copyload, %.sroa.584.0.copyload ; 3 uses
  %min.iters.check570 = icmp ult i64 %i.dt, 8
  br i1 %min.iters.check570, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.preheader, label %vector.memcheck561

vector.memcheck561:                               ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph
  %i.du = shl i64 %.sroa.584.0.copyload, 2
  %scevgep562.a = getelementptr i8, ptr %.sroa.080.0.copyload, i64 %i.du
  %i.dv = shl i64 %.sroa.785.0.copyload, 2
  %scevgep563.a = getelementptr i8, ptr %.sroa.080.0.copyload, i64 %i.dv
  %i.dw = shl i64 %.sroa.584.0.copyload, 1
  %scevgep564.a = getelementptr i8, ptr %.sroa.482.0.copyload, i64 %i.dw
  %i.dx = shl i64 %.sroa.785.0.copyload, 1
  %scevgep565 = getelementptr i8, ptr %.sroa.482.0.copyload, i64 %i.dx
  %bound0566 = icmp ult ptr %scevgep562.a, %scevgep565
  %bound1567 = icmp ult ptr %scevgep564.a, %scevgep563.a
  %found.conflict568 = and i1 %bound0566, %bound1567
  br i1 %found.conflict568, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.preheader, label %vector.ph571

vector.ph571:                                     ; preds = %vector.memcheck561
  %n.vec572 = and i64 %i.dt, -8                   ; 3 uses
  %i.dy = add i64 %.sroa.584.0.copyload, %n.vec572
  br label %vector.body573

vector.body573:                                   ; preds = %vector.body573, %vector.ph571
  %index574 = phi i64 [ 0, %vector.ph571 ], [ %index.next577, %vector.body573 ] ; 2 uses
  %i.dz = add nuw i64 %.sroa.584.0.copyload, %index574 ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %.sroa.080.0.copyload, i64 %i.dz ; 2 uses
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %.sroa.482.0.copyload, i64 %i.dz ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %wide.load575.a = load <4 x i16>, ptr %i.eb, align 2, !alias.scope !998
  %wide.load576 = load <4 x i16>, ptr %i.ec, align 2, !alias.scope !998
  %i.ed = zext <4 x i16> %wide.load575.a to <4 x i32>
  %i.ee = zext <4 x i16> %wide.load576 to <4 x i32>
  %i.ef = shl nuw nsw <4 x i32> %i.ed, splat (i32 4)
  %i.eg = shl nuw nsw <4 x i32> %i.ee, splat (i32 4)
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  store <4 x i32> %i.ef, ptr %i.ea, align 4, !alias.scope !999, !noalias !998
  store <4 x i32> %i.eg, ptr %i.eh, align 4, !alias.scope !999, !noalias !998
  %index.next577 = add nuw i64 %index574, 8       ; 2 uses
  %i.ei = icmp eq i64 %index.next577, %n.vec572
  br i1 %i.ei, label %middle.block578, label %vector.body573, !llvm.loop !898

middle.block578:                                  ; preds = %vector.body573
  %cmp.n579 = icmp eq i64 %i.dt, %n.vec572
  br i1 %cmp.n579, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internaltECs2mu2Cb9JdUH_5ravif.exit47, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.preheader: ; preds = %vector.memcheck561, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph, %middle.block578
  %.sroa.584.0260.ph = phi i64 [ %.sroa.584.0.copyload, %vector.memcheck561 ], [ %.sroa.584.0.copyload, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph ], [ %i.dy, %middle.block578 ] ; 4 uses
  %i.ej = sub i64 %.sroa.785.0.copyload, %.sroa.584.0260.ph
  %xtraiter = and i64 %i.ej, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol
  %.sroa.584.0260.prol = phi i64 [ %i.em, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol ], [ %.sroa.584.0260.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.preheader ]
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %.sroa.080.0.copyload, i64 %.sroa.584.0260.prol
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %.sroa.482.0.copyload, i64 %.sroa.584.0260.prol
  %i.em = add nuw i64 %.sroa.584.0260.prol, 1     ; 2 uses
  %i.en = load i16, ptr %i.el, align 2, !noundef !4
  %i.eo = zext i16 %i.en to i32
  %i.ep = shl nuw nsw i32 %i.eo, 4
  store i32 %i.ep, ptr %i.ek, align 4
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol, !llvm.loop !899

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.preheader
  %.sroa.584.0260.unr = phi i64 [ %.sroa.584.0260.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.preheader ], [ %i.em, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol ]
  %i.eq = sub i64 %.sroa.584.0260.ph, %.sroa.785.0.copyload
  %i.er = icmp ugt i64 %i.eq, -4
  br i1 %i.er, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internaltECs2mu2Cb9JdUH_5ravif.exit47, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit
  %.sroa.584.0260 = phi i64 [ %i.fm, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit ], [ %.sroa.584.0260.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit ] ; 6 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %.sroa.080.0.copyload, i64 %.sroa.584.0260
  %i.et = getelementptr inbounds nuw [2 x i8], ptr %.sroa.482.0.copyload, i64 %.sroa.584.0260
  %i.eu = add nuw i64 %.sroa.584.0260, 1          ; 2 uses
  %i.ev = load i16, ptr %i.et, align 2, !noundef !4
  %i.ew = zext i16 %i.ev to i32
  %i.ex = shl nuw nsw i32 %i.ew, 4
  store i32 %i.ex, ptr %i.es, align 4
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.sroa.080.0.copyload, i64 %i.eu
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %.sroa.482.0.copyload, i64 %i.eu
  %i.fa = add nuw i64 %.sroa.584.0260, 2          ; 2 uses
  %i.fb = load i16, ptr %i.ez, align 2, !noundef !4
  %i.fc = zext i16 %i.fb to i32
  %i.fd = shl nuw nsw i32 %i.fc, 4
  store i32 %i.fd, ptr %i.ey, align 4
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %.sroa.080.0.copyload, i64 %i.fa
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %.sroa.482.0.copyload, i64 %i.fa
  %i.fg = add nuw i64 %.sroa.584.0260, 3          ; 2 uses
  %i.fh = load i16, ptr %i.ff, align 2, !noundef !4
  %i.fi = zext i16 %i.fh to i32
  %i.fj = shl nuw nsw i32 %i.fi, 4
  store i32 %i.fj, ptr %i.fe, align 4
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.080.0.copyload, i64 %i.fg
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %.sroa.482.0.copyload, i64 %i.fg
  %i.fm = add nuw i64 %.sroa.584.0260, 4          ; 2 uses
  %i.fn = load i16, ptr %i.fl, align 2, !noundef !4
  %i.fo = zext i16 %i.fn to i32
  %i.fp = shl nuw nsw i32 %i.fo, 4
  store i32 %i.fp, ptr %i.fk, align 4
  %exitcond.not.3 = icmp eq i64 %i.fm, %.sroa.785.0.copyload
  br i1 %exitcond.not.3, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internaltECs2mu2Cb9JdUH_5ravif.exit47, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit, !llvm.loop !900

_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internaltECs2mu2Cb9JdUH_5ravif.exit47: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit, %middle.block578, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %.split
end_hunk_1
begin_hunk_2_@_RINvNtCsdEEMmLUVy6d_5rav1e3lrf21sgrproj_stripe_filterttECs2mu2Cb9JdUH_5ravif:bb.a
  %wide.load556.a = load <4 x i32>, ptr %i.oa, align 4, !noalias !1037
  %i.ob = getelementptr inbounds nuw [2 x i8], ptr %i.ml, i64 %index538
  %wide.load557 = load <4 x i16>, ptr %i.ob, align 2, !noalias !1037
  %i.oc = zext <4 x i16> %wide.load557 to <4 x i32>
  %i.od = mul <4 x i32> %i.nv, %i.oc
  %i.oe = add <4 x i32> %wide.load553.a, %wide.load552.a
  %i.of = add <4 x i32> %i.oe, %wide.load554.a
  %i.og = add <4 x i32> %i.of, %wide.load555.a
  %i.oh = add <4 x i32> %i.og, %wide.load556.a
  %i.oi = shl <4 x i32> %i.oh, splat (i32 2)
  %i.oj = add <4 x i32> %i.nc, splat (i32 256)
  %i.ok = add <4 x i32> %i.oj, %i.oi
  %i.ol = add <4 x i32> %i.ok, %i.od
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index538
  %i.on = lshr <4 x i32> %i.ol, splat (i32 9)
  store <4 x i32> %i.on, ptr %i.om, align 4, !alias.scope !1036, !noalias !1038
  %index.next558 = add nuw i64 %index538, 4       ; 2 uses
  %i.oo = icmp eq i64 %index.next558, %n.vec536
  br i1 %i.oo, label %.lr.ph262.preheader582, label %vector.body537, !llvm.loop !985

.lr.ph262.preheader582:                           ; preds = %vector.body537, %.lr.ph262.preheader
  %.sroa.0.0.i261.ph = phi i64 [ 0, %.lr.ph262.preheader ], [ %n.vec536, %vector.body537 ]
  br label %.lr.ph262

.lr.ph262:                                        ; preds = %.lr.ph262.preheader582, %bb.be
  %.sroa.0.0.i261 = phi i64 [ %i.op, %bb.be ], [ %.sroa.0.0.i261.ph, %.lr.ph262.preheader582 ] ; 12 uses
  %i.op = add nuw nsw i64 %.sroa.0.0.i261, 1      ; 6 uses
  %i.oq = add nuw nsw i64 %.sroa.0.0.i261, 2      ; 7 uses
  %exitcond349.not.a = icmp eq i64 %.sroa.0.0.i261, 384
  br i1 %exitcond349.not.a, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.lr.ph262
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.oq, i64 noundef 386, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #28, !noalias !1037
  unreachable

bb.bc:                                            ; preds = %.lr.ph262
  %exitcond350.not.a = icmp eq i64 %.sroa.0.0.i261, %i.mm
  br i1 %exitcond350.not.a, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.mm, i64 noundef %i.mm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #28, !noalias !1037
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %.sroa.0.0.i261
  %i.os = load i32, ptr %i.or, align 4, !noalias !1037, !noundef !4
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %.sroa.0.0.i261
  %i.ou = load i32, ptr %i.ot, align 4, !noalias !1037, !noundef !4
  %i.ov = add i32 %i.ou, %i.os
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %i.oq
  %i.ox = load i32, ptr %i.ow, align 4, !noalias !1037, !noundef !4
  %i.oy = add i32 %i.ov, %i.ox
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %i.oq
  %i.pa = load i32, ptr %i.oz, align 4, !noalias !1037, !noundef !4
  %i.pb = add i32 %i.oy, %i.pa
  %i.pc = mul i32 %i.pb, 3
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %.sroa.0.0.i261
  %i.pe = load i32, ptr %i.pd, align 4, !noalias !1037, !noundef !4
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %.sroa.0.0.i261
  %i.pg = load i32, ptr %i.pf, align 4, !noalias !1037, !noundef !4
  %i.ph = add i32 %i.pg, %i.pe
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %i.oq
  %i.pj = load i32, ptr %i.pi, align 4, !noalias !1037, !noundef !4
  %i.pk = add i32 %i.ph, %i.pj
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %i.oq
  %i.pm = load i32, ptr %i.pl, align 4, !noalias !1037, !noundef !4
  %i.pn = add i32 %i.pk, %i.pm
  %i.po = mul i32 %i.pn, 3
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %.sroa.0.0.i261
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %i.op
  %i.pr = load i32, ptr %i.pq, align 4, !noalias !1037, !noundef !4
  %i.ps = load <2 x i32>, ptr %i.pp, align 4, !noalias !1037
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %i.op
  %i.pu = load i32, ptr %i.pt, align 4, !noalias !1037, !noundef !4
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %i.oq
  %i.pw = load i32, ptr %i.pv, align 4, !noalias !1037, !noundef !4
  %i.px = insertelement <4 x i32> poison, i32 %i.pw, i64 2
  %i.py = insertelement <4 x i32> %i.px, i32 %i.pu, i64 3
  %i.pz = shufflevector <2 x i32> %i.ps, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qa = shufflevector <4 x i32> %i.pz, <4 x i32> %i.py, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.qb = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.qa)
  %op.rdx581 = add i32 %i.qb, %i.pr
  %i.qc = shl i32 %op.rdx581, 2
  %i.qd = add i32 %i.qc, %i.po
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %.sroa.0.0.i261
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %i.op
  %i.qg = load i32, ptr %i.qf, align 4, !noalias !1037, !noundef !4
  %i.qh = load <2 x i32>, ptr %i.qe, align 4, !noalias !1037
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %i.op
  %i.qj = load i32, ptr %i.qi, align 4, !noalias !1037, !noundef !4
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %i.oq
  %i.ql = load i32, ptr %i.qk, align 4, !noalias !1037, !noundef !4
  %i.qm = getelementptr inbounds nuw [2 x i8], ptr %i.ml, i64 %.sroa.0.0.i261
  %i.qn = load i16, ptr %i.qm, align 2, !noalias !1037, !noundef !4
  %i.qo = zext i16 %i.qn to i32
  %i.qp = mul i32 %i.qd, %i.qo
  %i.qq = insertelement <4 x i32> poison, i32 %i.ql, i64 2
  %i.qr = insertelement <4 x i32> %i.qq, i32 %i.qj, i64 3
  %i.qs = shufflevector <2 x i32> %i.qh, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qt = shufflevector <4 x i32> %i.qs, <4 x i32> %i.qr, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.qu = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.qt)
  %op.rdx = add i32 %i.qu, %i.qg
  %i.qv = shl i32 %op.rdx, 2
  %i.qw = add i32 %i.pc, 256
  %i.qx = add i32 %i.qw, %i.qv
  %i.qy = add i32 %i.qx, %i.qp
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.sroa.0.0.i261
  %i.ra = lshr i32 %i.qy, 9
  store i32 %i.ra, ptr %i.qz, align 4, !alias.scope !1036, !noalias !1038
  %exitcond351.not = icmp eq i64 %i.op, %i.ac
  br i1 %exitcond351.not, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r1_internaltECs2mu2Cb9JdUH_5ravif.exit, label %.lr.ph262, !llvm.loop !986

bb.bf:                                            ; preds = %bb.ay
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ch, i64 noundef %i.bk, i64 noundef %i.bk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #28
  unreachable

bb.bg:                                            ; preds = %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r1_internaltECs2mu2Cb9JdUH_5ravif.exit
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #28
  unreachable

bb.bh:                                            ; preds = %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r1_internaltECs2mu2Cb9JdUH_5ravif.exit
  %i.rb = extractvalue { ptr, i64 } %i.ma, 1      ; 2 uses
  %i.rc = load i64, ptr %i.cu, align 8, !noundef !4
  %i.rd = mul i64 %i.rc, %i.jt
  %i.re = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %i.rd ; 2 uses
  %i.rf = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %.sroa.014.0265 ; 2 uses
  %i.rg = load ptr, ptr %i.rf, align 8, !nonnull !4, !align !21, !noundef !4 ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rf, i64 8
  %i.ri = load i64, ptr %i.rh, align 8, !noundef !4 ; 2 uses
  %i.rj = load i64, ptr %i.aq, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %.not.i49 = icmp ugt i64 %i.ac, %i.rb
  br i1 %.not.i49, label %bb.bi, label %bb.bj, !prof !11

bb.bi:                                            ; preds = %bb.bh
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ac, i64 noundef range(i64 0, 4611686018427387904) %i.rb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #28, !noalias !1039
  unreachable

bb.bj:                                            ; preds = %bb.bh
  %i.rk = getelementptr inbounds nuw [2 x i8], ptr %i.mb, i64 %i.ac
  %.not6.i50 = icmp ugt i64 %i.ac, %i.ri
  br i1 %.not6.i50, label %bb.bk, label %bb.bl, !prof !8

bb.bk:                                            ; preds = %bb.bj
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ac, i64 noundef range(i64 0, 2305843009213693952) %i.ri, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #28, !noalias !1039
  unreachable

bb.bl:                                            ; preds = %bb.bj
  br i1 %i.bm, label %bb.bn, label %bb.bm, !prof !19

bb.bm:                                            ; preds = %bb.bl
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ac, i64 noundef 384, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #28, !noalias !1039
  unreachable

bb.bn:                                            ; preds = %bb.bl
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %i.rg, i64 %i.ac
  %i.rm = getelementptr inbounds nuw [2 x i8], ptr %i.re, i64 %i.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1040
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull align 2 %i.re, ptr noundef nonnull %i.rm, ptr noundef nonnull readonly align 2 %i.mb, ptr noundef nonnull readonly %i.rk), !noalias !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1040
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEBW_EINtB5_7ZipImplBW_BW_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly align 4 %i.rg, ptr noundef nonnull readonly %i.rl, ptr noundef nonnull readonly align 4 %i.u, ptr noundef nonnull readonly %i.co)
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuttEINtB13_4ItertEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !1041
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1040
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1040
  %.sroa.0102.0.copyload = load ptr, ptr %i.m, align 8, !noalias !1039 ; 2 uses
  %.sroa.4104.0.copyload = load ptr, ptr %.sroa.4104.0..sroa_idx, align 8, !noalias !1039 ; 2 uses
  %.sroa.5106.0.copyload = load i64, ptr %.sroa.5106.0..sroa_idx, align 8, !noalias !1039
  %.sroa.6108.0.copyload = load ptr, ptr %.sroa.6108.0..sroa_idx, align 8, !noalias !1039 ; 2 uses
  %.sroa.7110.0.copyload = load ptr, ptr %.sroa.7110.0..sroa_idx, align 8, !noalias !1039 ; 2 uses
  %.sroa.8112.0.copyload = load i64, ptr %.sroa.8112.0..sroa_idx, align 8, !noalias !1039
  %.sroa.9114.0.copyload = load i64, ptr %.sroa.9114.0..sroa_idx, align 8, !noalias !1039 ; 2 uses
  %.sroa.11115.0.copyload = load i64, ptr %.sroa.11115.0..sroa_idx, align 8, !noalias !1039 ; 2 uses
  %i.rn = icmp ult i64 %.sroa.9114.0.copyload, %.sroa.11115.0.copyload
  br i1 %i.rn, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuttEINtB13_4ItertEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph, label %_RINvNvNtCsdEEMmLUVy6d_5rav1e3lrf21sgrproj_stripe_filter12apply_filtertECs2mu2Cb9JdUH_5ravif.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuttEINtB13_4ItertEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph: ; preds = %bb.bn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0102.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4104.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6108.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7110.0.copyload) ]
  %i.ro = trunc i64 %i.rj to i32
  %i.rp = and i32 %i.ro, 31
  %notmask.i = shl nsw i32 -1, %i.rp
  %i.rq = xor i32 %notmask.i, -1
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuttEINtB13_4ItertEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E4nextCs2mu2Cb9JdUH_5ravif.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuttEINtB13_4ItertEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E4nextCs2mu2Cb9JdUH_5ravif.exit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuttEINtB13_4ItertEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuttEINtB13_4ItertEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E4nextCs2mu2Cb9JdUH_5ravif.exit
  %.sroa.9114.0264 = phi i64 [ %.sroa.9114.0.copyload, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuttEINtB13_4ItertEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph ], [ %i.rx, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuttEINtB13_4ItertEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E4nextCs2mu2Cb9JdUH_5ravif.exit ] ; 3 uses
  %i.rr = add i64 %.sroa.9114.0264, %.sroa.5106.0.copyload ; 2 uses
  %i.rs = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0102.0.copyload, i64 %i.rr
  %i.rt = add i64 %.sroa.9114.0264, %.sroa.8112.0.copyload ; 2 uses
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7110.0.copyload, i64 %i.rt
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6108.0.copyload, i64 %i.rt
  %i.rw = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4104.0.copyload, i64 %i.rr
  %i.rx = add i64 %.sroa.9114.0264, 1             ; 2 uses
  %i.ry = load i16, ptr %i.rw, align 2, !noundef !4
  %i.rz = load i32, ptr %i.rv, align 4, !noundef !4
  %i.sa = load i32, ptr %i.ru, align 4, !noundef !4
  %i.sb = zext i16 %i.ry to i32
  %i.sc = mul i32 %i.rz, %i.cp
  %i.sd = mul nsw i32 %8, %i.sb
  %i.se = mul i32 %i.sa, %i.cr
  %i.sf = add i32 %i.sc, 1024
  %i.sg = add i32 %i.sf, %i.sd
  %i.sh = add i32 %i.sg, %i.se
  %i.si = ashr i32 %i.sh, 11
  %i.sj = call noundef i32 @_RINvNtCsko5zPvjVG7R_7v_frame4math5clamplECs2mu2Cb9JdUH_5ravif(i32 noundef %i.si, i32 noundef 0, i32 noundef %i.rq)
  %i.sk = trunc i32 %i.sj to i16
  store i16 %i.sk, ptr %i.rs, align 2
  %exitcond353.not.a = icmp eq i64 %i.rx, %.sroa.11115.0.copyload
  br i1 %exitcond353.not.a, label %_RINvNvNtCsdEEMmLUVy6d_5rav1e3lrf21sgrproj_stripe_filter12apply_filtertECs2mu2Cb9JdUH_5ravif.exit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuttEINtB13_4ItertEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E4nextCs2mu2Cb9JdUH_5ravif.exit

_RINvNvNtCsdEEMmLUVy6d_5rav1e3lrf21sgrproj_stripe_filter12apply_filtertECs2mu2Cb9JdUH_5ravif.exit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuttEINtB13_4ItertEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E4nextCs2mu2Cb9JdUH_5ravif.exit, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %exitcond354.not = icmp eq i64 %i.js, %umax
  br i1 %exitcond354.not, label %._crit_edge, label %.lr.ph266
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_5array5GuardINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEEECs2mu2Cb9JdUH_5ravif(ptr nofree readonly captures(none) %.0.val, i64 %.16.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %.16.val, 0
  br i1 %i.a, label %_RNvXso_NtCsj6eKBz9Db1c_4core5arrayINtB5_5GuardINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEENtNtNtB7_3ops4drop4Drop4dropCs2mu2Cb9JdUH_5ravif.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1048)
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEECs2mu2Cb9JdUH_5ravif.exit.i.i, %bb.b
  %.sroa.0.012.i.i = phi i64 [ 0, %bb.b ], [ %i.c, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEECs2mu2Cb9JdUH_5ravif.exit.i.i ] ; 2 uses
  %i.b = getelementptr inbounds nuw [96 x i8], ptr %.0.val, i64 %.sroa.0.012.i.i ; 2 uses
  %i.c = add nuw nsw i64 %.sroa.0.012.i.i, 1      ; 2 uses
  %i.d = getelementptr i8, ptr %i.b, i64 8
  %.val9.i.i = load i64, ptr %i.d, align 8, !alias.scope !1048, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %.val9.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEECs2mu2Cb9JdUH_5ravif.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val8.i.i = load ptr, ptr %i.b, align 8, !alias.scope !1048, !nonnull !4, !noundef !4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i, i64 noundef %.val9.i.i, i64 noundef 64) #27, !noalias !1049
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1056)
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanetEECs2mu2Cb9JdUH_5ravif.exit.i.i, %bb.b
  %.sroa.0.012.i.i = phi i64 [ 0, %bb.b ], [ %i.c, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanetEECs2mu2Cb9JdUH_5ravif.exit.i.i ] ; 2 uses
  %i.b = getelementptr inbounds nuw [96 x i8], ptr %.0.val, i64 %.sroa.0.012.i.i ; 2 uses
  %i.c = add nuw nsw i64 %.sroa.0.012.i.i, 1      ; 2 uses
  %i.d = getelementptr i8, ptr %i.b, i64 8
  %.val9.i.i = load i64, ptr %i.d, align 8, !alias.scope !1056, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %.val9.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanetEECs2mu2Cb9JdUH_5ravif.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val8.i.i = load ptr, ptr %i.b, align 8, !alias.scope !1056, !nonnull !4, !noundef !4
  %i.e = shl nuw nsw i64 %.val9.i.i, 1
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i, i64 noundef %i.e, i64 noundef 64) #27, !noalias !1057
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
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCsdEEMmLUVy6d_5rav1e6tiling17tile_motion_stats14TileMEStatsMutEECs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecmEECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecmENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecmENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecmEECs2mu2Cb9JdUH_5ravif.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecmENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecmEECs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsdEEMmLUVy6d_5rav1e6tiling5tiler14TileContextMuthEECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(832) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsdEEMmLUVy6d_5rav1e6tiling17tile_motion_stats14TileMEStatsMutENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(776) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdEEMmLUVy6d_5rav1e6tiling17tile_motion_stats14TileMEStatsMutENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(776) %0)
          to label %.body.i unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdEEMmLUVy6d_5rav1e6tiling17tile_motion_stats14TileMEStatsMutENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(776) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsdEEMmLUVy6d_5rav1e6tiling17tile_motion_stats14TileMEStatsMutEECs2mu2Cb9JdUH_5ravif.exit.i unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdEEMmLUVy6d_5rav1e6tiling10tile_state11MiTileStateECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef align 8 dereferenceable(40) %i.d) #24
          to label %.body7.i unwind label %bb.n

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsdEEMmLUVy6d_5rav1e6tiling17tile_motion_stats14TileMEStatsMutEECs2mu2Cb9JdUH_5ravif.exit.i: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsdEEMmLUVy6d_5rav1e6tiling10tile_state14CodedBlockInfoENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsdEEMmLUVy6d_5rav1e6tiling10tile_state14CodedBlockInfoEECs2mu2Cb9JdUH_5ravif.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsdEEMmLUVy6d_5rav1e6tiling17tile_motion_stats14TileMEStatsMutEECs2mu2Cb9JdUH_5ravif.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdEEMmLUVy6d_5rav1e6tiling10tile_state14CodedBlockInfoENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %.body7.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsdEEMmLUVy6d_5rav1e6tiling10tile_state14CodedBlockInfoEECs2mu2Cb9JdUH_5ravif.exit.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsdEEMmLUVy6d_5rav1e6tiling17tile_motion_stats14TileMEStatsMutEECs2mu2Cb9JdUH_5ravif.exit.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdEEMmLUVy6d_5rav1e6tiling10tile_state14CodedBlockInfoENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdEEMmLUVy6d_5rav1e6tiling10tile_state11MiTileStateECs2mu2Cb9JdUH_5ravif.exit.i unwind label %bb.h

.body7.i:                                         ; preds = %bb.h, %bb.f, %.body.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.i, %bb.h ], [ %i.f, %bb.f ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsdEEMmLUVy6d_5rav1e3lrf19IntegralImageBufferECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef align 8 dereferenceable(48) %i.h) #24
          to label %bb.i unwind label %bb.n

bb.h:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsdEEMmLUVy6d_5rav1e6tiling10tile_state14CodedBlockInfoEECs2mu2Cb9JdUH_5ravif.exit.i.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body7.i
end_hunk_2
