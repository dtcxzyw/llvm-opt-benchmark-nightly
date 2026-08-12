inline.NumInlined: 568
inline.NumDeleted: 200
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_anyNtNtBZ_11ignored_any10IgnoredAnyECs7NzLGBMhIGf_9criterion:bb.a
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [40 x i8], align 8                ; 8 uses
  %.sroa.17.i = alloca [24 x i8], align 8         ; 3 uses
  %i.f = alloca [24 x i8], align 8                ; 10 uses
  %i.g = alloca [24 x i8], align 8                ; 21 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 10 uses
  %i.j = alloca [24 x i8], align 8                ; 10 uses
  %i.k = alloca [24 x i8], align 8                ; 19 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [10 x i8], align 1                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [40 x i8], align 8                ; 9 uses
  %i.q = alloca [24 x i8], align 8                ; 12 uses
  %i.r = alloca [24 x i8], align 8                ; 7 uses
  %i.s = alloca [24 x i8], align 8                ; 13 uses
  %i.t = alloca [10 x i8], align 1                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [40 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 10 uses
  %i.y = alloca [24 x i8], align 8                ; 9 uses
  %i.z = alloca [24 x i8], align 8                ; 13 uses
  %i.aa = alloca [24 x i8], align 8               ; 6 uses
  %i.ab = alloca [24 x i8], align 8               ; 4 uses
  %i.ac = alloca [48 x i8], align 16              ; 10 uses
  %i.ad = alloca [24 x i8], align 8               ; 6 uses
  %i.ae = alloca [24 x i8], align 8               ; 4 uses
  %i.af = alloca [48 x i8], align 16              ; 10 uses
  %i.ag = alloca [40 x i8], align 8               ; 4 uses
  %i.ah = alloca [24 x i8], align 8               ; 8 uses
  %i.ai = alloca [10 x i8], align 1               ; 4 uses
  %i.aj = alloca [24 x i8], align 8               ; 6 uses
  %i.ak = alloca [40 x i8], align 8               ; 4 uses
  %i.al = alloca [32 x i8], align 8               ; 5 uses
  %i.am = alloca [24 x i8], align 8               ; 10 uses
  %i.an = alloca [24 x i8], align 8               ; 9 uses
  %i.ao = alloca [24 x i8], align 8               ; 13 uses
  %i.ap = alloca [24 x i8], align 8               ; 6 uses
  %i.aq = alloca [16 x i8], align 8               ; 5 uses
  %i.ar = alloca [24 x i8], align 8               ; 20 uses
  %i.as = alloca [16 x i8], align 8               ; 5 uses
  %i.at = alloca [24 x i8], align 8               ; 8 uses
  %i.au = alloca [24 x i8], align 8               ; 6 uses
  %i.av = alloca [24 x i8], align 8               ; 6 uses
  %i.aw = alloca [24 x i8], align 8               ; 4 uses
  %i.ax = alloca [48 x i8], align 16              ; 11 uses
  %i.ay = alloca [24 x i8], align 8               ; 7 uses
  %i.az = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.5119 = alloca [15 x i8], align 1         ; 4 uses
  %i.ba = alloca [32 x i8], align 8               ; 7 uses
  %i.bb = alloca [10 x i8], align 1               ; 5 uses
  %i.bc = alloca [10 x i8], align 1               ; 5 uses
  %i.bd = alloca [40 x i8], align 8               ; 4 uses
  %i.be = alloca [40 x i8], align 8               ; 4 uses
  %i.bf = alloca [40 x i8], align 8               ; 4 uses
  %i.bg = alloca [24 x i8], align 8               ; 4 uses
  %i.bh = alloca [48 x i8], align 16              ; 11 uses
  %i.bi = alloca [24 x i8], align 8               ; 10 uses
  %i.bj = alloca [24 x i8], align 8               ; 7 uses
  %i.bk = alloca [24 x i8], align 8               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 27 uses
  call fastcc void @_RNvMs1_NtCs4PBppUgsNbv_11ciborium_ll3decINtB5_7DecoderRShE4pullCs7NzLGBMhIGf_9criterion(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.bk, ptr noalias noundef align 8 dereferenceable(40) %i.bl)
  %i.bm = load i8, ptr %i.bk, align 8, !range !37, !noundef !4 ; 3 uses
  %i.bn = icmp eq i8 %i.bm, -1
  br i1 %i.bn, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !range !38, !noundef !4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  %i.bs = ptrtoint ptr %i.br to i64
  %. = or disjoint i64 %i.bp, 2
  store i64 %., ptr %0, align 8
  %.sroa.585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bs, ptr %.sroa.585.0..sroa_idx, align 8
  br label %_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_u64NtNtBZ_11ignored_any10IgnoredAnyECs7NzLGBMhIGf_9criterion.exit

bb.c:                                             ; preds = %bb.a
  %.sroa.478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.az, i64 1 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx2, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.478.0..sroa_idx, i64 7, i1 false)
  %.sroa.579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.sroa.579.0.copyload = load i64, ptr %.sroa.579.0..sroa_idx, align 8 ; 6 uses
  %.sroa.680.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %.sroa.680.0.copyload = load ptr, ptr %.sroa.680.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  store i8 %i.bm, ptr %i.az, align 8
  %.sroa.63.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 %.sroa.579.0.copyload, ptr %.sroa.63.0..sroa_idx4, align 8
  %.sroa.8.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store ptr %.sroa.680.0.copyload, ptr %.sroa.8.0..sroa_idx6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  call void @_RNvXs_NtCs4PBppUgsNbv_11ciborium_ll3hdrNtB6_5TitleINtNtCs4NRVxsYgnAr_4core7convert4FromNtB4_6HeaderE4from(ptr noalias noundef nonnull sret([10 x i8]) align 1 captures(none) dereferenceable(10) %i.bc, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.az)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42)
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 10 uses
  %i.bu = load i8, ptr %i.bt, align 8, !range !44, !alias.scope !39, !noalias !42, !noundef !4
  %.not.i = icmp eq i8 %i.bu, -1
  %i.bv = ptrtoint ptr %.sroa.680.0.copyload to i64 ; 2 uses
  br i1 %.not.i, label %switch.lookup, label %bb.d, !prof !45

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #16, !noalias !46
  unreachable

switch.lookup:                                    ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.bt, ptr noundef nonnull readonly align 1 dereferenceable(10) %i.bc, i64 10, i1 false), !alias.scope !46
  %i.bw = load i8, ptr %i.bc, align 1, !range !47, !alias.scope !42, !noalias !39, !noundef !4
  %i.bx = zext nneg i8 %i.bw to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvMs_NtCsdCGSpSJmIcn_8ciborium2deINtB4_12DeserializerRShE7integerCs7NzLGBMhIGf_9criterion, i64 %i.bx
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 18 uses
  %i.bz = load i64, ptr %i.by, align 8, !alias.scope !39, !noalias !42, !noundef !4
  %i.ca = add i64 %i.bz, %switch.load
  store i64 %i.ca, ptr %i.by, align 8, !alias.scope !39, !noalias !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  switch i8 %i.bm, label %default.unreachable [
    i8 0, label %bb.e
    i8 1, label %bb.n
    i8 2, label %bb.o
    i8 3, label %bb.ag
    i8 4, label %bb.ah
    i8 5, label %_RNvXNtCsdCGSpSJmIcn_8ciborium2deNtNtCs4PBppUgsNbv_11ciborium_ll3hdr6HeaderINtB2_8ExpectedINtNtB2_5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEE8expectedCs7NzLGBMhIGf_9criterion.exit
    i8 6, label %bb.ai
    i8 7, label %bb.aj
    i8 8, label %bb.ak
    i8 9, label %bb.bf
  ]

default.unreachable:                              ; preds = %switch.lookup
  unreachable

bb.e:                                             ; preds = %switch.lookup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !51
  store i8 -1, ptr %i.aw, align 8, !noalias !51
  call fastcc void @_RNvMs_NtCsdCGSpSJmIcn_8ciborium2deINtB4_12DeserializerRShE7integerCs7NzLGBMhIGf_9criterion(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.ax, ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.aw), !noalias !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !51
  %i.cb = load i64, ptr %i.ax, align 16, !range !38, !noalias !51, !noundef !4
  %i.cc = trunc nuw i64 %i.cb to i1
  br i1 %i.cc, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.018.0.copyload.i = load i64, ptr %i.cd, align 8, !noalias !51
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %.sroa.419.0.copyload.i = load i8, ptr %.sroa.419.0..sroa_idx.i, align 16, !noalias !51
  %.sroa.520.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 17
  %.sroa.524.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.524.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.520.0..sroa_idx.i, i64 15, i1 false), !noalias !53
  %.sroa.621.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %.sroa.621.0.copyload.i = load i128, ptr %.sroa.621.0..sroa_idx.i, align 16, !noalias !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !51
  store i64 %.sroa.018.0.copyload.i, ptr %0, align 8, !alias.scope !48, !noalias !53
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.419.0.copyload.i, ptr %.sroa.423.0..sroa_idx.i, align 8, !alias.scope !48, !noalias !53
  %.sroa.625.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i128 %.sroa.621.0.copyload.i, ptr %.sroa.625.0..sroa_idx.i, align 8, !alias.scope !48, !noalias !53
  br label %_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_u64NtNtBZ_11ignored_any10IgnoredAnyECs7NzLGBMhIGf_9criterion.exit

bb.g:                                             ; preds = %bb.e
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.cf = load i8, ptr %i.ce, align 16, !range !36, !noalias !51, !noundef !4
  %i.cg = trunc nuw i8 %i.cf to i1
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.ci = load i128, ptr %i.ch, align 16, !noalias !51, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !51
  br i1 %i.cg, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cj = icmp ugt i128 %i.ci, 18446744073709551615
  br i1 %i.cj, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !54
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.av, i64 noundef range(i64 0, -9223372036854775808) 27, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !54
  %i.ck = load i64, ptr %i.av, align 8, !range !38, !noalias !54, !noundef !4
  %i.cl = trunc nuw i64 %i.ck to i1
  %i.cm = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !range !65, !noalias !54, !noundef !4 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  br i1 %i.cl, label %bb.j, label %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit.i, !prof !8

bb.j:                                             ; preds = %bb.i
  %i.cp = load i64, ptr %i.co, align 8, !noalias !54
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.cn, i64 %i.cp) #16, !noalias !54
  unreachable

_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit.i: ; preds = %bb.i
  %i.cq = load ptr, ptr %i.co, align 8, !noalias !54, !nonnull !4, !noundef !4 ; 2 uses
  %i.cr = icmp samesign ugt i64 %i.cn, 26
  tail call void @llvm.assume(i1 %i.cr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !54
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.cq, ptr noundef nonnull readonly align 1 dereferenceable(27) @14, i64 range(i64 0, -9223372036854775808) 27, i1 false), !noalias !66
  store i64 0, ptr %0, align 8, !alias.scope !48, !noalias !53
  %.sroa.432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cn, ptr %.sroa.432.0..sroa_idx.i, align 8, !alias.scope !48, !noalias !53
  %.sroa.533.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.cq, ptr %.sroa.533.0..sroa_idx.i, align 8, !alias.scope !48, !noalias !53
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 27, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !48, !noalias !53
  br label %_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_u64NtNtBZ_11ignored_any10IgnoredAnyECs7NzLGBMhIGf_9criterion.exit

bb.k:                                             ; preds = %bb.h
  store i64 -1, ptr %0, align 8, !alias.scope !67, !noalias !53
  br label %_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_u64NtNtBZ_11ignored_any10IgnoredAnyECs7NzLGBMhIGf_9criterion.exit

bb.l:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !70
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.au, i64 noundef range(i64 0, -9223372036854775808) 17, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !70
  %i.cs = load i64, ptr %i.au, align 8, !range !38, !noalias !70, !noundef !4
  %i.ct = trunc nuw i64 %i.cs to i1
  %i.cu = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !range !65, !noalias !70, !noundef !4 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 2 uses
  br i1 %i.ct, label %bb.m, label %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit31.i, !prof !8

bb.m:                                             ; preds = %bb.l
  %i.cx = load i64, ptr %i.cw, align 8, !noalias !70
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.cv, i64 %i.cx) #16, !noalias !70
  unreachable

_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit31.i: ; preds = %bb.l
  %i.cy = load ptr, ptr %i.cw, align 8, !noalias !70, !nonnull !4, !noundef !4 ; 2 uses
  %i.cz = icmp samesign ugt i64 %i.cv, 16
  tail call void @llvm.assume(i1 %i.cz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !70
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.cy, ptr noundef nonnull readonly align 1 dereferenceable(17) @7, i64 range(i64 0, -9223372036854775808) 17, i1 false), !noalias !81
  store i64 0, ptr %0, align 8, !alias.scope !48, !noalias !53
  %.sroa.436.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cv, ptr %.sroa.436.0..sroa_idx.i, align 8, !alias.scope !48, !noalias !53
  %.sroa.537.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.cy, ptr %.sroa.537.0..sroa_idx.i, align 8, !alias.scope !48, !noalias !53
  %.sroa.638.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 17, ptr %.sroa.638.0..sroa_idx.i, align 8, !alias.scope !48, !noalias !53
  br label %_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_u64NtNtBZ_11ignored_any10IgnoredAnyECs7NzLGBMhIGf_9criterion.exit

bb.n:                                             ; preds = %switch.lookup
  %i.da = icmp slt i64 %.sroa.579.0.copyload, 0
  br i1 %i.da, label %bb.cr, label %bb.cl

bb.o:                                             ; preds = %switch.lookup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !85
  call fastcc void @_RNvMs1_NtCs4PBppUgsNbv_11ciborium_ll3decINtB5_7DecoderRShE4pullCs7NzLGBMhIGf_9criterion(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.at, ptr noalias noundef align 8 dereferenceable(40) %i.bl), !noalias !82
  %i.db = load i8, ptr %i.at, align 8, !range !37, !noalias !85, !noundef !4 ; 3 uses
  %i.dc = icmp eq i8 %i.db, -1
  br i1 %i.dc, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dd = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !range !38, !noalias !85, !noundef !4
  %i.de = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !noalias !85, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !85
  %i.dg = ptrtoint ptr %i.df to i64
  %..i = or disjoint i64 %i.dd, 2
  store i64 %..i, ptr %0, align 8, !alias.scope !82, !noalias !87
  %.sroa.514.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dg, ptr %.sroa.514.0..sroa_idx.i, align 8, !alias.scope !82, !noalias !87
  br label %_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_u64NtNtBZ_11ignored_any10IgnoredAnyECs7NzLGBMhIGf_9criterion.exit

bb.r:                                             ; preds = %bb.p
  %.sroa.4.sroa.0.0.copyload.i = load i8, ptr %.sroa.4.0..sroa_idx.i, align 1, !noalias !85
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !85 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !85
  switch i8 %i.db, label %bb.s [
    i8 2, label %bb.af
    i8 4, label %bb.p
  ]

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !85
  store ptr @9, ptr %i.as, align 8, !noalias !88
  %i.dh = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 5, ptr %i.dh, align 8, !noalias !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !88
  switch i8 %i.db, label %default.unreachable1.i.i [
    i8 0, label %bb.t
    i8 1, label %bb.u
    i8 8, label %_RNvXNtCsdCGSpSJmIcn_8ciborium2deNtNtCs4PBppUgsNbv_11ciborium_ll3hdr6HeaderINtB2_8ExpectedINtNtB2_5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEE8expectedCs7NzLGBMhIGf_9criterion.exit.i
    i8 3, label %bb.v
    i8 9, label %bb.z
    i8 5, label %bb.w
    i8 6, label %bb.x
    i8 7, label %bb.y
  ]

default.unreachable1.i.i:                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.di = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %.sroa.5.0.copyload.i, ptr %i.di, align 8, !noalias !88
  br label %_RNvXNtCsdCGSpSJmIcn_8ciborium2deNtNtCs4PBppUgsNbv_11ciborium_ll3hdr6HeaderINtB2_8ExpectedINtNtB2_5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEE8expectedCs7NzLGBMhIGf_9criterion.exit.i

bb.u:                                             ; preds = %bb.s
  %i.dj = xor i64 %.sroa.5.0.copyload.i, -1
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %i.dj, ptr %i.dk, align 8, !noalias !88
  br label %_RNvXNtCsdCGSpSJmIcn_8ciborium2deNtNtCs4PBppUgsNbv_11ciborium_ll3hdr6HeaderINtB2_8ExpectedINtNtB2_5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEE8expectedCs7NzLGBMhIGf_9criterion.exit.i

bb.v:                                             ; preds = %bb.s
  switch i8 %.sroa.4.sroa.0.0.copyload.i, label %bb.aa [
    i8 20, label %bb.ab
    i8 21, label %bb.ac
    i8 22, label %bb.ad
    i8 23, label %bb.ae
  ]

bb.w:                                             ; preds = %bb.s
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr @47, ptr %i.dl, align 8, !noalias !88
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i64 5, ptr %i.dm, align 8, !noalias !88
  br label %_RNvXNtCsdCGSpSJmIcn_8ciborium2deNtNtCs4PBppUgsNbv_11ciborium_ll3hdr6HeaderINtB2_8ExpectedINtNtB2_5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEE8expectedCs7NzLGBMhIGf_9criterion.exit.i

bb.x:                                             ; preds = %bb.s
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr @4, ptr %i.dn, align 8, !noalias !88
  %i.do = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i64 5, ptr %i.do, align 8, !noalias !88
  br label %_RNvXNtCsdCGSpSJmIcn_8ciborium2deNtNtCs4PBppUgsNbv_11ciborium_ll3hdr6HeaderINtB2_8ExpectedINtNtB2_5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEE8expectedCs7NzLGBMhIGf_9criterion.exit.i

bb.y:                                             ; preds = %bb.s
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr @16, ptr %i.dp, align 8, !noalias !88
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i64 6, ptr %i.dq, align 8, !noalias !88
  br label %_RNvXNtCsdCGSpSJmIcn_8ciborium2deNtNtCs4PBppUgsNbv_11ciborium_ll3hdr6HeaderINtB2_8ExpectedINtNtB2_5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEE8expectedCs7NzLGBMhIGf_9criterion.exit.i

bb.z:                                             ; preds = %bb.s
  br label %_RNvXNtCsdCGSpSJmIcn_8ciborium2deNtNtCs4PBppUgsNbv_11ciborium_ll3hdr6HeaderINtB2_8ExpectedINtNtB2_5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEE8expectedCs7NzLGBMhIGf_9criterion.exit.i

bb.aa:                                            ; preds = %bb.v
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr @45, ptr %i.dr, align 8, !noalias !88
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i64 6, ptr %i.ds, align 8, !noalias !88
  br label %_RNvXNtCsdCGSpSJmIcn_8ciborium2deNtNtCs4PBppUgsNbv_11ciborium_ll3hdr6HeaderINtB2_8ExpectedINtNtB2_5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEE8expectedCs7NzLGBMhIGf_9criterion.exit.i

bb.ab:                                            ; preds = %bb.v
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  store i8 0, ptr %i.dt, align 1, !noalias !88
  br label %_RNvXNtCsdCGSpSJmIcn_8ciborium2deNtNtCs4PBppUgsNbv_11ciborium_ll3hdr6HeaderINtB2_8ExpectedINtNtB2_5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEE8expectedCs7NzLGBMhIGf_9criterion.exit.i

bb.ac:                                            ; preds = %bb.v
  %i.du = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  store i8 1, ptr %i.du, align 1, !noalias !88
  br label %_RNvXNtCsdCGSpSJmIcn_8ciborium2deNtNtCs4PBppUgsNbv_11ciborium_ll3hdr6HeaderINtB2_8ExpectedINtNtB2_5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEE8expectedCs7NzLGBMhIGf_9criterion.exit.i

bb.ad:                                            ; preds = %bb.v
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr @43, ptr %i.dv, align 8, !noalias !88
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i64 4, ptr %i.dw, align 8, !noalias !88
  br label %_RNvXNtCsdCGSpSJmIcn_8ciborium2deNtNtCs4PBppUgsNbv_11ciborium_ll3hdr6HeaderINtB2_8ExpectedINtNtB2_5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEE8expectedCs7NzLGBMhIGf_9criterion.exit.i

bb.ae:                                            ; preds = %bb.v
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr @44, ptr %i.dx, align 8, !noalias !88
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i64 9, ptr %i.dy, align 8, !noalias !88
  br label %_RNvXNtCsdCGSpSJmIcn_8ciborium2deNtNtCs4PBppUgsNbv_11ciborium_ll3hdr6HeaderINtB2_8ExpectedINtNtB2_5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEE8expectedCs7NzLGBMhIGf_9criterion.exit.i

_RNvXNtCsdCGSpSJmIcn_8ciborium2deNtNtCs4PBppUgsNbv_11ciborium_ll3hdr6HeaderINtB2_8ExpectedINtNtB2_5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEE8expectedCs7NzLGBMhIGf_9criterion.exit.i: ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.u, %bb.t, %bb.s
  %.sink.i.i = phi i8 [ 17, %bb.ae ], [ 17, %bb.ad ], [ 0, %bb.ac ], [ 0, %bb.ab ], [ 17, %bb.aa ], [ 11, %bb.z ], [ 1, %bb.t ], [ 17, %bb.y ], [ 17, %bb.x ], [ 17, %bb.w ], [ 2, %bb.u ], [ 10, %bb.s ]
  store i8 %.sink.i.i, ptr %i.ar, align 8, !noalias !88
  call void @_RNvYINtNtNtCsdCGSpSJmIcn_8ciborium2de5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error12invalid_typeCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.ar, ptr noundef nonnull %i.as, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21), !noalias !87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !85
  br label %_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_u64NtNtBZ_11ignored_any10IgnoredAnyECs7NzLGBMhIGf_9criterion.exit

bb.af:                                            ; preds = %bb.r
  store i64 -1, ptr %0, align 8, !alias.scope !93, !noalias !87
  br label %_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_u64NtNtBZ_11ignored_any10IgnoredAnyECs7NzLGBMhIGf_9criterion.exit

bb.ag:                                            ; preds = %switch.lookup
  %i.dz = load i8, ptr %.sroa.6.0..sroa_idx2, align 1, !noundef !4
  switch i8 %i.dz, label %bb.cx [
    i8 20, label %bb.cy
    i8 21, label %bb.cz
    i8 22, label %bb.da
    i8 23, label %bb.db
  ]

bb.ah:                                            ; preds = %switch.lookup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  call fastcc void @_RNvMs1_NtCs4PBppUgsNbv_11ciborium_ll3decINtB5_7DecoderRShE4pullCs7NzLGBMhIGf_9criterion(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.bj, ptr noalias noundef align 8 dereferenceable(40) %i.bl)
  %i.ea = load i8, ptr %i.bj, align 8, !range !37, !noundef !4
  %i.eb = icmp eq i8 %i.ea, -1
  br i1 %i.eb, label %bb.dc, label %bb.dd

_RNvXNtCsdCGSpSJmIcn_8ciborium2deNtNtCs4PBppUgsNbv_11ciborium_ll3hdr6HeaderINtB2_8ExpectedINtNtB2_5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEE8expectedCs7NzLGBMhIGf_9criterion.exit: ; preds = %switch.lookup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  store ptr @8, ptr %i.aq, align 8, !noalias !96
  %i.ec = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i64 9, ptr %i.ec, align 8, !noalias !96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !96
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr @47, ptr %i.ed, align 8, !noalias !96
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 5, ptr %i.ee, align 8, !noalias !96
  store i8 17, ptr %i.ap, align 8, !noalias !96
  call void @_RNvYINtNtNtCsdCGSpSJmIcn_8ciborium2de5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error12invalid_typeCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.bd, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.ap, ptr noundef nonnull %i.aq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21), !noalias !101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !96
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.bd, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  br label %_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_u64NtNtBZ_11ignored_any10IgnoredAnyECs7NzLGBMhIGf_9criterion.exit

bb.ai:                                            ; preds = %switch.lookup
  %i.ef = trunc nuw i64 %.sroa.579.0.copyload to i1
  br i1 %i.ef, label %bb.du, label %bb.dv

bb.aj:                                            ; preds = %switch.lookup
  %i.eg = trunc nuw i64 %.sroa.579.0.copyload to i1
  br i1 %i.eg, label %bb.er, label %bb.es

bb.ak:                                            ; preds = %switch.lookup
end_hunk_0
begin_hunk_1_@_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_anyNtNtBZ_11ignored_any10IgnoredAnyECs7NzLGBMhIGf_9criterion:bb.a
  %.sroa.63.0..sroa_idx4.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.8.0..sroa_idx6.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.527.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.bz

bb.bz:                                            ; preds = %bb.ck, %bb.by
  %i.hw = phi i64 [ %i.hu, %bb.by ], [ %i.il, %bb.ck ] ; 3 uses
  %i.hx = phi i64 [ %.sroa.5.0.copyload.i138, %bb.by ], [ %i.im, %bb.ck ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !160
  %i.hy = trunc nuw i64 %i.hx to i1
  br i1 %i.hy, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.hz = icmp eq i64 %i.hw, 0
  br i1 %i.hz, label %.loopexit.i751, label %bb.cg

bb.cb:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !165
  call fastcc void @_RNvMs1_NtCs4PBppUgsNbv_11ciborium_ll3decINtB5_7DecoderRShE4pullCs7NzLGBMhIGf_9criterion(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef align 8 dereferenceable(40) %i.bl), !noalias !165, !inline_history !169
  %i.ia = load i8, ptr %i.d, align 8, !range !37, !noalias !165, !noundef !4 ; 3 uses
  %i.ib = icmp eq i8 %i.ia, -1
  br i1 %i.ib, label %_RINvXs2_NtCsdCGSpSJmIcn_8ciborium2deINtB6_6AccessRShENtNtCs6nZeqdiIoCH_10serde_core2de9MapAccess13next_key_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtBR_11ignored_any10IgnoredAnyEECs7NzLGBMhIGf_9criterion.exit.i.i.thread776, label %bb.cc

_RINvXs2_NtCsdCGSpSJmIcn_8ciborium2deINtB6_6AccessRShENtNtCs6nZeqdiIoCH_10serde_core2de9MapAccess13next_key_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtBR_11ignored_any10IgnoredAnyEECs7NzLGBMhIGf_9criterion.exit.i.i.thread776: ; preds = %bb.cb
  %i.ic = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !range !38, !noalias !165, !noundef !4
  %i.id = load ptr, ptr %.sroa.610.0..sroa_idx.i.i.i, align 8, !noalias !165, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !165
  %i.ie = ptrtoint ptr %i.id to i64
  %..i.i.i = or disjoint i64 %i.ic, 2
  br label %bb.ch

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx2.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.0..sroa_idx.i.i.i, i64 7, i1 false), !noalias !165
  %.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !165
  %.sroa.610.0.copyload.i.i.i = load ptr, ptr %.sroa.610.0..sroa_idx.i.i.i, align 8, !noalias !165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !165
  store i8 %i.ia, ptr %i.c, align 8, !noalias !165
  store i64 %.sroa.5.0.copyload.i.i.i, ptr %.sroa.63.0..sroa_idx4.i.i.i, align 8, !noalias !165
  store ptr %.sroa.610.0.copyload.i.i.i, ptr %.sroa.8.0..sroa_idx6.i.i.i, align 8, !noalias !165
  %i.if = icmp eq i8 %i.ia, 5
  br i1 %i.if, label %.loopexit.i751, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !165
  call void @_RNvXs_NtCs4PBppUgsNbv_11ciborium_ll3hdrNtB6_5TitleINtNtCs4NRVxsYgnAr_4core7convert4FromNtB4_6HeaderE4from(ptr noalias noundef nonnull sret([10 x i8]) align 1 captures(none) dereferenceable(10) %i.a, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c), !noalias !165, !inline_history !169
  call void @llvm.experimental.noalias.scope.decl(metadata !170)
  call void @llvm.experimental.noalias.scope.decl(metadata !173)
  %i.ig = load i8, ptr %i.bt, align 8, !range !44, !alias.scope !170, !noalias !175, !noundef !4
  %.not.i1.i = icmp eq i8 %i.ig, -1
  br i1 %.not.i1.i, label %switch.lookup1220, label %bb.ce, !prof !45

bb.ce:                                            ; preds = %bb.cd
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #16, !noalias !176, !inline_history !177
  unreachable

switch.lookup1220:                                ; preds = %bb.cd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.bt, ptr noundef nonnull readonly align 1 dereferenceable(10) %i.a, i64 10, i1 false), !alias.scope !178, !noalias !165
  %i.ih = load i8, ptr %i.a, align 1, !range !47, !alias.scope !173, !noalias !179, !noundef !4
  %i.ii = zext nneg i8 %i.ih to i64
  %switch.gep1221 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvMs_NtCsdCGSpSJmIcn_8ciborium2deINtB4_12DeserializerRShE7integerCs7NzLGBMhIGf_9criterion, i64 %i.ii
  %switch.load1222 = load i64, ptr %switch.gep1221, align 8
  %i.ij = load i64, ptr %i.by, align 8, !alias.scope !170, !noalias !175, !noundef !4
  %i.ik = add i64 %i.ij, %switch.load1222
  store i64 %i.ik, ptr %i.by, align 8, !alias.scope !170, !noalias !175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !165
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cg, %switch.lookup1220
  %i.il = phi i64 [ %i.io, %bb.cg ], [ %i.hw, %switch.lookup1220 ]
  %i.im = phi i64 [ 1, %bb.cg ], [ 0, %switch.lookup1220 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !165
  call fastcc void @_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_anyNtNtBZ_11ignored_any10IgnoredAnyECs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !165, !inline_history !180
  %i.in = load i64, ptr %i.b, align 8, !range !31, !noalias !165, !noundef !4 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.in, -1
  br i1 %.not.i.i.i, label %bb.ci, label %_RINvXs2_NtCsdCGSpSJmIcn_8ciborium2deINtB6_6AccessRShENtNtCs6nZeqdiIoCH_10serde_core2de9MapAccess13next_key_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtBR_11ignored_any10IgnoredAnyEECs7NzLGBMhIGf_9criterion.exit.i.i

bb.cg:                                            ; preds = %bb.ca
  %i.io = add i64 %i.hw, -1
  br label %bb.cf

_RINvXs2_NtCsdCGSpSJmIcn_8ciborium2deINtB6_6AccessRShENtNtCs6nZeqdiIoCH_10serde_core2de9MapAccess13next_key_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtBR_11ignored_any10IgnoredAnyEECs7NzLGBMhIGf_9criterion.exit.i.i: ; preds = %bb.cf
  %.sroa.426.0.copyload.i = load i64, ptr %.sroa.426.0..sroa_idx.i, align 8, !noalias !165
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.17.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.527.0..sroa_idx.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !165
  br label %bb.ch

bb.ch:                                            ; preds = %_RINvXs2_NtCsdCGSpSJmIcn_8ciborium2deINtB6_6AccessRShENtNtCs6nZeqdiIoCH_10serde_core2de9MapAccess13next_key_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtBR_11ignored_any10IgnoredAnyEECs7NzLGBMhIGf_9criterion.exit.i.i, %_RINvXs2_NtCsdCGSpSJmIcn_8ciborium2deINtB6_6AccessRShENtNtCs6nZeqdiIoCH_10serde_core2de9MapAccess13next_key_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtBR_11ignored_any10IgnoredAnyEECs7NzLGBMhIGf_9criterion.exit.i.i.thread776
  %.sroa.12.sroa.12.sroa.0.2.i783.in.in = phi i64 [ %i.ie, %_RINvXs2_NtCsdCGSpSJmIcn_8ciborium2deINtB6_6AccessRShENtNtCs6nZeqdiIoCH_10serde_core2de9MapAccess13next_key_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtBR_11ignored_any10IgnoredAnyEECs7NzLGBMhIGf_9criterion.exit.i.i.thread776 ], [ %.sroa.426.0.copyload.i, %_RINvXs2_NtCsdCGSpSJmIcn_8ciborium2deINtB6_6AccessRShENtNtCs6nZeqdiIoCH_10serde_core2de9MapAccess13next_key_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtBR_11ignored_any10IgnoredAnyEECs7NzLGBMhIGf_9criterion.exit.i.i ] ; 2 uses
  %.sroa.011.1.i782 = phi i64 [ %..i.i.i, %_RINvXs2_NtCsdCGSpSJmIcn_8ciborium2deINtB6_6AccessRShENtNtCs6nZeqdiIoCH_10serde_core2de9MapAccess13next_key_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtBR_11ignored_any10IgnoredAnyEECs7NzLGBMhIGf_9criterion.exit.i.i.thread776 ], [ %i.in, %_RINvXs2_NtCsdCGSpSJmIcn_8ciborium2deINtB6_6AccessRShENtNtCs6nZeqdiIoCH_10serde_core2de9MapAccess13next_key_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtBR_11ignored_any10IgnoredAnyEECs7NzLGBMhIGf_9criterion.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !160
  %.sroa.12.sroa.0.1.i781 = trunc i64 %.sroa.12.sroa.12.sroa.0.2.i783.in.in to i8
  %.sroa.12.sroa.12.sroa.0.2.i783.in = lshr i64 %.sroa.12.sroa.12.sroa.0.2.i783.in.in, 8
  %.sroa.12.sroa.12.sroa.0.2.i783 = trunc nuw i64 %.sroa.12.sroa.12.sroa.0.2.i783.in to i56
  br label %_RINvYINtNtCsdCGSpSJmIcn_8ciborium2de6AccessRShENtNtCs6nZeqdiIoCH_10serde_core2de9MapAccess15next_entry_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtBL_11ignored_any10IgnoredAnyEB1H_ECs7NzLGBMhIGf_9criterion.exit.i

bb.ci:                                            ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !160
  call fastcc void @_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_anyNtNtBZ_11ignored_any10IgnoredAnyECs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !181, !inline_history !184
  %i.ip = load i64, ptr %i.e, align 8, !range !31, !noalias !160, !noundef !4 ; 2 uses
  %.not4.i.i = icmp eq i64 %i.ip, -1
  br i1 %.not4.i.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %.sroa.423.0..sroa_idx.i752 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.423.0.copyload.i753 = load i8, ptr %.sroa.423.0..sroa_idx.i752, align 8, !noalias !160
  %.sroa.5.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  %.sroa.5.0.copyload.i754 = load i56, ptr %.sroa.5.0..sroa_idx24.i, align 1, !noalias !160
  %.sroa.6.0..sroa_idx.i755 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.17.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i755, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !160
  br label %_RINvYINtNtCsdCGSpSJmIcn_8ciborium2de6AccessRShENtNtCs6nZeqdiIoCH_10serde_core2de9MapAccess15next_entry_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtBL_11ignored_any10IgnoredAnyEB1H_ECs7NzLGBMhIGf_9criterion.exit.i

_RINvYINtNtCsdCGSpSJmIcn_8ciborium2de6AccessRShENtNtCs6nZeqdiIoCH_10serde_core2de9MapAccess15next_entry_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtBL_11ignored_any10IgnoredAnyEB1H_ECs7NzLGBMhIGf_9criterion.exit.i: ; preds = %bb.cj, %bb.ch
  %.sroa.13.sroa.0.1.i = phi i56 [ %.sroa.12.sroa.12.sroa.0.2.i783, %bb.ch ], [ %.sroa.5.0.copyload.i754, %bb.cj ]
  %.sroa.10.0.i = phi i8 [ %.sroa.12.sroa.0.1.i781, %bb.ch ], [ %.sroa.423.0.copyload.i753, %bb.cj ]
  %.sroa.0.0.i = phi i64 [ %.sroa.011.1.i782, %bb.ch ], [ %i.ip, %bb.cj ]
  store i64 %.sroa.0.0.i, ptr %0, align 8, !alias.scope !157, !noalias !185
  %.sroa.4.0..sroa_idx.i749 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.10.0.i, ptr %.sroa.4.0..sroa_idx.i749, align 8, !alias.scope !157, !noalias !185
  %.sroa.5.0..sroa_idx.i750 = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i56 %.sroa.13.sroa.0.1.i, ptr %.sroa.5.0..sroa_idx.i750, align 1, !alias.scope !157, !noalias !185
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.17.i, i64 24, i1 false)
  br label %_RINvXNtNtCs6nZeqdiIoCH_10serde_core2de11ignored_anyNtB3_10IgnoredAnyNtB5_7Visitor9visit_mapINtNtCsdCGSpSJmIcn_8ciborium2de6AccessRShEECs7NzLGBMhIGf_9criterion.exit

bb.ck:                                            ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !160
  br label %bb.bz

.loopexit.i751:                                   ; preds = %bb.cc, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !160
  store i64 -1, ptr %0, align 8, !alias.scope !157, !noalias !185
  br label %_RINvXNtNtCs6nZeqdiIoCH_10serde_core2de11ignored_anyNtB3_10IgnoredAnyNtB5_7Visitor9visit_mapINtNtCsdCGSpSJmIcn_8ciborium2de6AccessRShEECs7NzLGBMhIGf_9criterion.exit

_RINvXNtNtCs6nZeqdiIoCH_10serde_core2de11ignored_anyNtB3_10IgnoredAnyNtB5_7Visitor9visit_mapINtNtCsdCGSpSJmIcn_8ciborium2de6AccessRShEECs7NzLGBMhIGf_9criterion.exit: ; preds = %_RINvYINtNtCsdCGSpSJmIcn_8ciborium2de6AccessRShENtNtCs6nZeqdiIoCH_10serde_core2de9MapAccess15next_entry_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtBL_11ignored_any10IgnoredAnyEB1H_ECs7NzLGBMhIGf_9criterion.exit.i, %.loopexit.i751
  %i.iq = load i64, ptr %i.hr, align 8, !alias.scope !147, !noalias !144, !noundef !4
  %i.ir = add i64 %i.iq, 1
  store i64 %i.ir, ptr %i.hr, align 8, !alias.scope !147, !noalias !144
  br label %_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_u64NtNtBZ_11ignored_any10IgnoredAnyECs7NzLGBMhIGf_9criterion.exit

bb.cl:                                            ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !189
  store i8 -1, ptr %i.ae, align 8, !noalias !189
  call fastcc void @_RNvMs_NtCsdCGSpSJmIcn_8ciborium2deINtB4_12DeserializerRShE7integerCs7NzLGBMhIGf_9criterion(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.af, ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.ae), !noalias !186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !189
  %i.is = load i64, ptr %i.af, align 16, !range !38, !noalias !189, !noundef !4
  %i.it = trunc nuw i64 %i.is to i1
  br i1 %i.it, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.iu = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.022.0.copyload.i = load i64, ptr %i.iu, align 8, !noalias !189
  %.sroa.423.0..sroa_idx.i146 = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.423.0.copyload.i = load i8, ptr %.sroa.423.0..sroa_idx.i146, align 16, !noalias !189
  %.sroa.524.0..sroa_idx.i147 = getelementptr inbounds nuw i8, ptr %i.af, i64 17
  %.sroa.528.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.528.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.524.0..sroa_idx.i147, i64 15, i1 false), !noalias !191
  %.sroa.625.0..sroa_idx.i148 = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %.sroa.625.0.copyload.i = load i128, ptr %.sroa.625.0..sroa_idx.i148, align 16, !noalias !189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !189
  store i64 %.sroa.022.0.copyload.i, ptr %0, align 8, !alias.scope !186, !noalias !191
  %.sroa.427.0..sroa_idx.i149 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.423.0.copyload.i, ptr %.sroa.427.0..sroa_idx.i149, align 8, !alias.scope !186, !noalias !191
  %.sroa.629.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i128 %.sroa.625.0.copyload.i, ptr %.sroa.629.0..sroa_idx.i, align 8, !alias.scope !186, !noalias !191
  br label %_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_u64NtNtBZ_11ignored_any10IgnoredAnyECs7NzLGBMhIGf_9criterion.exit

bb.cn:                                            ; preds = %bb.cl
  %i.iv = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.iw = load i128, ptr %i.iv, align 16, !noalias !189, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !189
  %i.ix = icmp ugt i128 %i.iw, 9223372036854775807
  br i1 %i.ix, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  store i64 -1, ptr %0, align 8, !alias.scope !192, !noalias !191
  br label %_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_u64NtNtBZ_11ignored_any10IgnoredAnyECs7NzLGBMhIGf_9criterion.exit

bb.cp:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !195
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ad, i64 noundef range(i64 0, -9223372036854775808) 17, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !195
  %i.iy = load i64, ptr %i.ad, align 8, !range !38, !noalias !195, !noundef !4
  %i.iz = trunc nuw i64 %i.iy to i1
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.jb = load i64, ptr %i.ja, align 8, !range !65, !noalias !195, !noundef !4 ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  br i1 %i.iz, label %bb.cq, label %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit.i144, !prof !8

bb.cq:                                            ; preds = %bb.cp
  %i.jd = load i64, ptr %i.jc, align 8, !noalias !195
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.jb, i64 %i.jd) #16, !noalias !195
  unreachable

_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit.i144: ; preds = %bb.cp
  %i.je = load ptr, ptr %i.jc, align 8, !noalias !195, !nonnull !4, !noundef !4 ; 2 uses
  %i.jf = icmp samesign ugt i64 %i.jb, 16
  tail call void @llvm.assume(i1 %i.jf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !195
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.je, ptr noundef nonnull readonly align 1 dereferenceable(17) @7, i64 range(i64 0, -9223372036854775808) 17, i1 false), !noalias !206
  store i64 0, ptr %0, align 8, !alias.scope !186, !noalias !191
  %.sroa.433.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.jb, ptr %.sroa.433.0..sroa_idx.i, align 8, !alias.scope !186, !noalias !191
  %.sroa.534.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.je, ptr %.sroa.534.0..sroa_idx.i, align 8, !alias.scope !186, !noalias !191
  %.sroa.6.0..sroa_idx.i145 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 17, ptr %.sroa.6.0..sroa_idx.i145, align 8, !alias.scope !186, !noalias !191
  br label %_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_u64NtNtBZ_11ignored_any10IgnoredAnyECs7NzLGBMhIGf_9criterion.exit

bb.cr:                                            ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !210
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !210
  store i8 -1, ptr %i.ab, align 8, !noalias !210
  call fastcc void @_RNvMs_NtCsdCGSpSJmIcn_8ciborium2deINtB4_12DeserializerRShE7integerCs7NzLGBMhIGf_9criterion(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.ac, ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.ab), !noalias !207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !210
  %i.jg = load i64, ptr %i.ac, align 16, !range !38, !noalias !210, !noundef !4
  %i.jh = trunc nuw i64 %i.jg to i1
  br i1 %i.jh, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.022.0.copyload.i154 = load i64, ptr %i.ji, align 8, !noalias !210
  %.sroa.423.0..sroa_idx.i155 = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.423.0.copyload.i156 = load i8, ptr %.sroa.423.0..sroa_idx.i155, align 16, !noalias !210
  %.sroa.524.0..sroa_idx.i157 = getelementptr inbounds nuw i8, ptr %i.ac, i64 17
  %.sroa.528.0..sroa_idx.i158 = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.528.0..sroa_idx.i158, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.524.0..sroa_idx.i157, i64 15, i1 false), !noalias !212
  %.sroa.625.0..sroa_idx.i159 = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %.sroa.625.0.copyload.i160 = load i128, ptr %.sroa.625.0..sroa_idx.i159, align 16, !noalias !210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !210
  store i64 %.sroa.022.0.copyload.i154, ptr %0, align 8, !alias.scope !207, !noalias !212
  %.sroa.427.0..sroa_idx.i161 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.423.0.copyload.i156, ptr %.sroa.427.0..sroa_idx.i161, align 8, !alias.scope !207, !noalias !212
  %.sroa.629.0..sroa_idx.i162 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i128 %.sroa.625.0.copyload.i160, ptr %.sroa.629.0..sroa_idx.i162, align 8, !alias.scope !207, !noalias !212
  br label %_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_u64NtNtBZ_11ignored_any10IgnoredAnyECs7NzLGBMhIGf_9criterion.exit

bb.ct:                                            ; preds = %bb.cr
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.jk = load i128, ptr %i.jj, align 16, !noalias !210, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !210
  %i.jl = icmp slt i128 %i.jk, 0
  br i1 %i.jl, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  store i64 -1, ptr %0, align 8, !alias.scope !213, !noalias !212
  br label %_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_u64NtNtBZ_11ignored_any10IgnoredAnyECs7NzLGBMhIGf_9criterion.exit

bb.cv:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !216
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aa, i64 noundef range(i64 0, -9223372036854775808) 17, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !216
  %i.jm = load i64, ptr %i.aa, align 8, !range !38, !noalias !216, !noundef !4
  %i.jn = trunc nuw i64 %i.jm to i1
  %i.jo = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.jp = load i64, ptr %i.jo, align 8, !range !65, !noalias !216, !noundef !4 ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  br i1 %i.jn, label %bb.cw, label %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit.i150, !prof !8

bb.cw:                                            ; preds = %bb.cv
  %i.jr = load i64, ptr %i.jq, align 8, !noalias !216
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.jp, i64 %i.jr) #16, !noalias !216
  unreachable

_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit.i150: ; preds = %bb.cv
  %i.js = load ptr, ptr %i.jq, align 8, !noalias !216, !nonnull !4, !noundef !4 ; 2 uses
  %i.jt = icmp samesign ugt i64 %i.jp, 16
  tail call void @llvm.assume(i1 %i.jt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !216
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.js, ptr noundef nonnull readonly align 1 dereferenceable(17) @7, i64 range(i64 0, -9223372036854775808) 17, i1 false), !noalias !227
  store i64 0, ptr %0, align 8, !alias.scope !207, !noalias !212
  %.sroa.433.0..sroa_idx.i151 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.jp, ptr %.sroa.433.0..sroa_idx.i151, align 8, !alias.scope !207, !noalias !212
  %.sroa.534.0..sroa_idx.i152 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.js, ptr %.sroa.534.0..sroa_idx.i152, align 8, !alias.scope !207, !noalias !212
  %.sroa.6.0..sroa_idx.i153 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 17, ptr %.sroa.6.0..sroa_idx.i153, align 8, !alias.scope !207, !noalias !212
  br label %_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_u64NtNtBZ_11ignored_any10IgnoredAnyECs7NzLGBMhIGf_9criterion.exit

bb.cx:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call fastcc void @_RNvXNtCsdCGSpSJmIcn_8ciborium2deNtNtCs4PBppUgsNbv_11ciborium_ll3hdr6HeaderINtB2_8ExpectedINtNtB2_5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEE8expectedCs7NzLGBMhIGf_9criterion(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.be, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %i.az, ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 18)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.be, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  br label %_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_u64NtNtBZ_11ignored_any10IgnoredAnyECs7NzLGBMhIGf_9criterion.exit

bb.cy:                                            ; preds = %bb.ag
  tail call fastcc void @_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer16deserialize_boolNtNtBZ_11ignored_any10IgnoredAnyECs7NzLGBMhIGf_9criterion(ptr noalias noundef align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(64) %1)
  br label %_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_u64NtNtBZ_11ignored_any10IgnoredAnyECs7NzLGBMhIGf_9criterion.exit

bb.cz:                                            ; preds = %bb.ag
  tail call fastcc void @_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer16deserialize_boolNtNtBZ_11ignored_any10IgnoredAnyECs7NzLGBMhIGf_9criterion(ptr noalias noundef align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(64) %1)
  br label %_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_u64NtNtBZ_11ignored_any10IgnoredAnyECs7NzLGBMhIGf_9criterion.exit

bb.da:                                            ; preds = %bb.ag
  tail call fastcc void @_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_optionNtNtBZ_11ignored_any10IgnoredAnyECs7NzLGBMhIGf_9criterion(ptr noalias noundef align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(64) %1)
  br label %_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_u64NtNtBZ_11ignored_any10IgnoredAnyECs7NzLGBMhIGf_9criterion.exit

bb.db:                                            ; preds = %bb.ag
  tail call fastcc void @_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_optionNtNtBZ_11ignored_any10IgnoredAnyECs7NzLGBMhIGf_9criterion(ptr noalias noundef align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(64) %1)
  br label %_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_u64NtNtBZ_11ignored_any10IgnoredAnyECs7NzLGBMhIGf_9criterion.exit

bb.dc:                                            ; preds = %bb.ah
  %i.ju = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.jv = load i64, ptr %i.ju, align 8, !range !38, !noundef !4
  %i.jw = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.jx = load ptr, ptr %i.jw, align 8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  %i.jy = ptrtoint ptr %i.jx to i64
  %.127 = or disjoint i64 %i.jv, 2
  store i64 %.127, ptr %0, align 8
  %.sroa.595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.jy, ptr %.sroa.595.0..sroa_idx, align 8
  br label %_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_u64NtNtBZ_11ignored_any10IgnoredAnyECs7NzLGBMhIGf_9criterion.exit

bb.dd:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  call fastcc void @_RNvMs1_NtCs4PBppUgsNbv_11ciborium_ll3decINtB5_7DecoderRShE4pullCs7NzLGBMhIGf_9criterion(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.bi, ptr noalias noundef align 8 dereferenceable(40) %i.bl)
  %i.jz = load i8, ptr %i.bi, align 8, !range !37, !noundef !4 ; 3 uses
  %i.ka = icmp eq i8 %i.jz, -1
  br i1 %i.ka, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.kb = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.kc = load i64, ptr %i.kb, align 8, !range !38, !noundef !4
  %i.kd = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.ke = load ptr, ptr %i.kd, align 8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  %i.kf = ptrtoint ptr %i.ke to i64
  %.128 = or disjoint i64 %i.kc, 2
  store i64 %.128, ptr %0, align 8
  %.sroa.5105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.kf, ptr %.sroa.5105.0..sroa_idx, align 8
  br label %_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_u64NtNtBZ_11ignored_any10IgnoredAnyECs7NzLGBMhIGf_9criterion.exit

bb.df:                                            ; preds = %bb.dd
  %.sroa.498.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  %.sroa.340.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.340.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.498.0..sroa_idx, i64 7, i1 false)
  %.sroa.599.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.599.0.copyload = load i64, ptr %.sroa.599.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %.sroa.6100.0.copyload = load ptr, ptr %.sroa.6100.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  %i.kg = ptrtoint ptr %.sroa.6100.0.copyload to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  store i8 %i.jz, ptr %i.ay, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i64 %.sroa.599.0.copyload, ptr %.sroa.441.0..sroa_idx, align 8
  %.sroa.642.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i64 %i.kg, ptr %.sroa.642.0..sroa_idx, align 8
  call void @_RNvXs_NtCs4PBppUgsNbv_11ciborium_ll3hdrNtB6_5TitleINtNtCs4NRVxsYgnAr_4core7convert4FromNtB4_6HeaderE4from(ptr noalias noundef nonnull sret([10 x i8]) align 1 captures(none) dereferenceable(10) %i.bb, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231)
  %i.kh = load i8, ptr %i.bt, align 8, !range !44, !alias.scope !228, !noalias !231, !noundef !4
  %.not.i163 = icmp eq i8 %i.kh, -1
  br i1 %.not.i163, label %switch.lookup1223, label %bb.dg, !prof !45

bb.dg:                                            ; preds = %bb.df
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #16, !noalias !233
  unreachable

switch.lookup1223:                                ; preds = %bb.df
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.bt, ptr noundef nonnull readonly align 1 dereferenceable(10) %i.bb, i64 10, i1 false), !alias.scope !233
  %i.ki = load i8, ptr %i.bb, align 1, !range !47, !alias.scope !231, !noalias !228, !noundef !4
  %i.kj = zext nneg i8 %i.ki to i64
  %switch.gep1224 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvMs_NtCsdCGSpSJmIcn_8ciborium2deINtB4_12DeserializerRShE7integerCs7NzLGBMhIGf_9criterion, i64 %i.kj
  %switch.load1225 = load i64, ptr %switch.gep1224, align 8
  %i.kk = load i64, ptr %i.by, align 8, !alias.scope !228, !noalias !231, !noundef !4
  %i.kl = add i64 %i.kk, %switch.load1225
  store i64 %i.kl, ptr %i.by, align 8, !alias.scope !228, !noalias !231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  %i.km = icmp eq i8 %i.jz, 6
  br i1 %i.km, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %switch.lookup1223
  switch i64 %.sroa.579.0.copyload, label %bb.di [
    i64 2, label %bb.dj
    i64 3, label %bb.dk
  ]

bb.di:                                            ; preds = %switch.lookup1223, %bb.dk, %bb.dj, %bb.dh
  %i.kn = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ko = load i64, ptr %i.kn, align 8, !noundef !4 ; 2 uses
  %i.kp = icmp eq i64 %i.ko, 0
  br i1 %i.kp, label %bb.ds, label %bb.dt

bb.dj:                                            ; preds = %bb.dh
  %i.kq = trunc nuw i64 %.sroa.599.0.copyload to i1
  %i.kr = icmp ult ptr %.sroa.6100.0.copyload, inttoptr (i64 17 to ptr)
  %or.cond = select i1 %i.kq, i1 %i.kr, i1 false
  br i1 %or.cond, label %bb.dl, label %bb.di

bb.dk:                                            ; preds = %bb.dh
  %i.ks = trunc nuw i64 %.sroa.599.0.copyload to i1
  %i.kt = icmp ult ptr %.sroa.6100.0.copyload, inttoptr (i64 17 to ptr)
  %or.cond129 = select i1 %i.ks, i1 %i.kt, i1 false
  br i1 %or.cond129, label %bb.dl, label %bb.di

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false)
  call fastcc void @_RNvMs_NtCsdCGSpSJmIcn_8ciborium2deINtB4_12DeserializerRShE7integerCs7NzLGBMhIGf_9criterion(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.bh, ptr noalias noundef align 8 dereferenceable(64) %1, ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.bg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  %i.ku = load i64, ptr %i.bh, align 16, !range !38, !noundef !4
  %i.kv = trunc nuw i64 %i.ku to i1
  br i1 %i.kv, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.kw = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.sroa.0113.0.copyload = load i64, ptr %i.kw, align 8
  %.sroa.4114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %.sroa.4114.0.copyload = load i8, ptr %.sroa.4114.0..sroa_idx, align 16
  %.sroa.5115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 17
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5119)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.5119, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.5115.0..sroa_idx, i64 15, i1 false)
  %.sroa.6116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %.sroa.6116.0.copyload = load i128, ptr %.sroa.6116.0..sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  store i64 %.sroa.0113.0.copyload, ptr %0, align 8
  %.sroa.4118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.4114.0.copyload, ptr %.sroa.4118.0..sroa_idx, align 8
  %.sroa.5119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.5119.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.5119, i64 15, i1 false)
  %.sroa.6120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i128 %.sroa.6116.0.copyload, ptr %.sroa.6120.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5119)
  br label %_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_u64NtNtBZ_11ignored_any10IgnoredAnyECs7NzLGBMhIGf_9criterion.exit

bb.dn:                                            ; preds = %bb.dl
  %i.kx = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.ky = load i8, ptr %i.kx, align 16, !range !36, !noundef !4
  %i.kz = trunc nuw i8 %i.ky to i1
  %i.la = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.lb = load i128, ptr %i.la, align 16, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  br i1 %i.kz, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  store i64 -1, ptr %0, align 8, !alias.scope !234
  br label %_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_u64NtNtBZ_11ignored_any10IgnoredAnyECs7NzLGBMhIGf_9criterion.exit

bb.dp:                                            ; preds = %bb.dn
  %i.lc = icmp slt i128 %i.lb, 0
  br i1 %i.lc, label %bb.dr, label %bb.dq

_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_u64NtNtBZ_11ignored_any10IgnoredAnyECs7NzLGBMhIGf_9criterion.exit: ; preds = %_RINvXNtNtCs6nZeqdiIoCH_10serde_core2de11ignored_anyNtB3_10IgnoredAnyNtB5_7Visitor9visit_mapINtNtCsdCGSpSJmIcn_8ciborium2de6AccessRShEECs7NzLGBMhIGf_9criterion.exit, %bb.bx, %_RNvXNtCsdCGSpSJmIcn_8ciborium2deNtNtCs4PBppUgsNbv_11ciborium_ll3hdr6HeaderINtB2_8ExpectedINtNtB2_5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEE8expectedCs7NzLGBMhIGf_9criterion.exit221, %bb.bh, %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit.i150, %bb.cu, %bb.cs, %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit.i144, %bb.co, %bb.cm, %bb.af, %_RNvXNtCsdCGSpSJmIcn_8ciborium2deNtNtCs4PBppUgsNbv_11ciborium_ll3hdr6HeaderINtB2_8ExpectedINtNtB2_5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEE8expectedCs7NzLGBMhIGf_9criterion.exit.i, %bb.q, %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit31.i, %bb.k, %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit.i, %bb.f, %bb.gb, %_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_stringNtNtBZ_11ignored_any10IgnoredAnyECs7NzLGBMhIGf_9criterion.exit, %bb.eq, %_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer20deserialize_byte_bufNtNtBZ_11ignored_any10IgnoredAnyECs7NzLGBMhIGf_9criterion.exit, %bb.dm, %bb.de, %bb.dc, %bb.dq, %bb.dt, %bb.ds, %_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_seqNtNtBZ_11ignored_any10IgnoredAnyECs7NzLGBMhIGf_9criterion.exit, %bb.cy, %bb.cz, %bb.da, %bb.db, %bb.b, %bb.cx, %bb.dr, %_RNvXNtCsdCGSpSJmIcn_8ciborium2deNtNtCs4PBppUgsNbv_11ciborium_ll3hdr6HeaderINtB2_8ExpectedINtNtB2_5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEE8expectedCs7NzLGBMhIGf_9criterion.exit, %bb.do
  ret void

bb.dq:                                            ; preds = %bb.dp
  store i64 -1, ptr %0, align 8, !alias.scope !237
  br label %_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_u64NtNtBZ_11ignored_any10IgnoredAnyECs7NzLGBMhIGf_9criterion.exit

bb.dr:                                            ; preds = %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  call fastcc void @_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion(ptr noalias noundef align 8 captures(none) dereferenceable(40) %i.bf, ptr noalias noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 17)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.bf, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  br label %_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_u64NtNtBZ_11ignored_any10IgnoredAnyECs7NzLGBMhIGf_9criterion.exit

bb.ds:                                            ; preds = %bb.di
  store i64 5, ptr %0, align 8
  br label %_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_u64NtNtBZ_11ignored_any10IgnoredAnyECs7NzLGBMhIGf_9criterion.exit
end_hunk_1
begin_hunk_2_@_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_anyNtNtBZ_11ignored_any10IgnoredAnyECs7NzLGBMhIGf_9criterion:bb.a
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n), !noalias !317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !287
  br label %_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_stringNtNtBZ_11ignored_any10IgnoredAnyECs7NzLGBMhIGf_9criterion.exit

bb.fq:                                            ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs7NzLGBMhIGf_9criterion.exit.i, %bb.fn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !287
  %i.qd = load ptr, ptr %1, align 8, !alias.scope !285, !noalias !282, !nonnull !4, !noundef !4
  %i.qe = load i64, ptr %i.pg, align 8, !alias.scope !285, !noalias !282, !noundef !4
  invoke fastcc void @_RNvMs0_NtCs4PBppUgsNbv_11ciborium_ll3segINtB5_7SegmentRShNtB5_4TextE4pullCs7NzLGBMhIGf_9criterion(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.o, ptr noalias noundef align 8 dereferenceable(40) %i.p, ptr noalias noundef nonnull %i.qd, i64 noundef %i.qe)
          to label %bb.fr unwind label %.loopexit.i, !noalias !282

bb.fr:                                            ; preds = %bb.fq
  %i.qf = load i64, ptr %i.o, align 8, !range !38, !noalias !287, !noundef !4
  %i.qg = trunc nuw i64 %i.qf to i1
  br i1 %i.qg, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  %i.qh = load i64, ptr %i.ph, align 8, !range !38, !noalias !287, !noundef !4
  %i.qi = load ptr, ptr %i.pi, align 8, !noalias !287, !noundef !4
  %i.qj = ptrtoint ptr %i.qi to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !287
  %.57.i = or disjoint i64 %i.qh, 2
  store i64 %.57.i, ptr %0, align 8, !alias.scope !282, !noalias !285
  %.sroa.548.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.qj, ptr %.sroa.548.0..sroa_idx.i, align 8, !alias.scope !282, !noalias !285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !287
  br label %bb.fx

bb.ft:                                            ; preds = %bb.fr
  %i.qk = load ptr, ptr %i.ph, align 8, !noalias !287, !noundef !4 ; 2 uses
  %i.ql = load i64, ptr %i.pi, align 8, !noalias !287 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !287
  %.not54.i = icmp eq ptr %i.qk, null
  br i1 %.not54.i, label %bb.fw, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef %i.ql)
          to label %.noexc65.i unwind label %.loopexit.i, !noalias !282

.noexc65.i:                                       ; preds = %bb.fu
  %i.qm = load i64, ptr %.sroa.534.0..sroa_idx.i202, align 8, !alias.scope !318, !noalias !287, !noundef !4 ; 3 uses
  %i.qn = icmp sgt i64 %i.qm, -1
  call void @llvm.assume(i1 %i.qn)
  %.not.i64.i = icmp eq i64 %i.ql, 0
  br i1 %.not.i64.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs7NzLGBMhIGf_9criterion.exit.i, label %bb.fv

bb.fv:                                            ; preds = %.noexc65.i
  %i.qo = load ptr, ptr %.sroa.433.0..sroa_idx.i201, align 8, !alias.scope !318, !noalias !287, !nonnull !4, !noundef !4
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 %i.qm
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.qp, ptr nonnull readonly align 1 %i.qk, i64 %i.ql, i1 false), !noalias !282
  %.pre.i.i = load i64, ptr %.sroa.534.0..sroa_idx.i202, align 8, !alias.scope !318, !noalias !287
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs7NzLGBMhIGf_9criterion.exit.i

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs7NzLGBMhIGf_9criterion.exit.i: ; preds = %bb.fv, %.noexc65.i
  %i.qq = phi i64 [ %.pre.i.i, %bb.fv ], [ %i.qm, %.noexc65.i ]
  %i.qr = add i64 %i.qq, %i.ql
  store i64 %i.qr, ptr %.sroa.534.0..sroa_idx.i202, align 8, !alias.scope !318, !noalias !287
  br label %bb.fq

bb.fw:                                            ; preds = %bb.ft
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !287
  br i1 %i.pz, label %.loopexit164.i, label %.lr.ph.i.i

bb.fx:                                            ; preds = %bb.fs, %.split48.i.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion.exit.i unwind label %bb.fy, !noalias !282

bb.fy:                                            ; preds = %bb.fx
  %i.qs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %common.resume unwind label %bb.fz, !noalias !282

bb.fz:                                            ; preds = %bb.fy
  %i.qt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15, !noalias !282
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion.exit.i: ; preds = %bb.fx
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q), !noalias !282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !287
  br label %_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_stringNtNtBZ_11ignored_any10IgnoredAnyECs7NzLGBMhIGf_9criterion.exit

.loopexit.i:                                      ; preds = %bb.fu, %bb.fq
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.fm
  %lpad.loopexit89.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %.split44.i.i, %.lr.ph.i.i
  %lpad.loopexit92.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %bb.fk, %bb.fi
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit89.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit92.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion(ptr noalias noundef align 8 dereferenceable(24) %i.q) #17
          to label %common.resume unwind label %bb.ga, !noalias !282

bb.ga:                                            ; preds = %.loopexit.split-lp.i
  %i.qu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15, !noalias !282
  unreachable

_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_stringNtNtBZ_11ignored_any10IgnoredAnyECs7NzLGBMhIGf_9criterion.exit: ; preds = %._crit_edge.i, %_RNvXNtCsdCGSpSJmIcn_8ciborium2deNtNtCs4PBppUgsNbv_11ciborium_ll3hdr6HeaderINtB2_8ExpectedINtNtB2_5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEE8expectedCs7NzLGBMhIGf_9criterion.exit.i206, %_RINvYNtNtNtCs6nZeqdiIoCH_10serde_core2de11ignored_any10IgnoredAnyNtB7_7Visitor12visit_stringINtNtNtCsdCGSpSJmIcn_8ciborium2de5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs7NzLGBMhIGf_9criterion.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_u64NtNtBZ_11ignored_any10IgnoredAnyECs7NzLGBMhIGf_9criterion.exit

bb.gb:                                            ; preds = %bb.er
  tail call fastcc void @_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_strNtNtBZ_11ignored_any10IgnoredAnyECs7NzLGBMhIGf_9criterion(ptr noalias noundef align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(64) %1)
  br label %_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_u64NtNtBZ_11ignored_any10IgnoredAnyECs7NzLGBMhIGf_9criterion.exit
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_i64NtNvXs0_NvXNvCs7NzLGBMhIGf_9criterions_1__NtB2c_10ThroughputNtBZ_11Deserialize11deserializeNtB27_9___VisitorNtBZ_7Visitor10visit_enum9___VisitorEB2c_(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 -1, ptr %i.b, align 8
  call fastcc void @_RNvMs_NtCsdCGSpSJmIcn_8ciborium2deINtB4_12DeserializerRShE7integerCs7NzLGBMhIGf_9criterion(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.c, ptr noalias noundef align 8 dereferenceable(64) %1, ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.d = load i64, ptr %i.c, align 16, !range !38, !noundef !4
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.022.0.copyload = load i64, ptr %i.f, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.423.0.copyload = load i8, ptr %.sroa.423.0..sroa_idx, align 16
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.528.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.524.0..sroa_idx, i64 15, i1 false)
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.625.0.copyload = load i128, ptr %.sroa.625.0..sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %.sroa.022.0.copyload, ptr %0, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.423.0.copyload, ptr %.sroa.427.0..sroa_idx, align 8
  %.sroa.629.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i128 %.sroa.625.0.copyload, ptr %.sroa.629.0..sroa_idx, align 8
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = load i8, ptr %i.g, align 16, !range !36, !noundef !4
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.k = load i128, ptr %i.j, align 16, !noundef !4 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.l = icmp ugt i128 %i.k, 9223372036854775807  ; 2 uses
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.l, label %bb.h, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.l, label %bb.h, label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.m = trunc nuw nsw i128 %i.k to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %bb.f
  %.sroa.101.0 = phi i64 [ %i.w, %bb.j ], [ %i.m, %bb.f ]
  tail call void @_RINvYNtNvXs0_NvXNvCs7NzLGBMhIGf_9criterions_1__NtBg_10ThroughputNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB12_7Visitor10visit_enum9___VisitorB2d_9visit_i64INtNtNtCsdCGSpSJmIcn_8ciborium2de5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEEBg_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, i64 noundef %.sroa.101.0)
  br label %bb.k

bb.h:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !321
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) 17, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !321
  %i.n = load i64, ptr %i.a, align 8, !range !38, !noalias !321, !noundef !4
  %i.o = trunc nuw i64 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !65, !noalias !321, !noundef !4 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.o, label %bb.i, label %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit, !prof !8

bb.i:                                             ; preds = %bb.h
  %i.s = load i64, ptr %i.r, align 8, !noalias !321
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.q, i64 %i.s) #16, !noalias !321
  unreachable

_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit: ; preds = %bb.h
  %i.t = load ptr, ptr %i.r, align 8, !noalias !321, !nonnull !4, !noundef !4 ; 2 uses
  %i.u = icmp samesign ugt i64 %i.q, 16
  tail call void @llvm.assume(i1 %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !321
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.t, ptr noundef nonnull readonly align 1 dereferenceable(17) @7, i64 range(i64 0, -9223372036854775808) 17, i1 false), !noalias !332
  store i64 0, ptr %0, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.q, ptr %.sroa.433.0..sroa_idx, align 8
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.t, ptr %.sroa.534.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 17, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.v = trunc nuw nsw i128 %i.k to i64
  %i.w = xor i64 %i.v, -1
  br label %bb.g

bb.k:                                             ; preds = %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit, %bb.g, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_i64NtNvXs0_NvXNvNtCs7NzLGBMhIGf_9criterion10connection1__NtB2c_15IncomingMessageNtBZ_11Deserialize11deserializeNtB27_9___VisitorNtBZ_7Visitor10visit_enum9___VisitorEB2e_(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 -1, ptr %i.b, align 8
  call fastcc void @_RNvMs_NtCsdCGSpSJmIcn_8ciborium2deINtB4_12DeserializerRShE7integerCs7NzLGBMhIGf_9criterion(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.c, ptr noalias noundef align 8 dereferenceable(64) %1, ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.d = load i64, ptr %i.c, align 16, !range !38, !noundef !4
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.022.0.copyload = load i64, ptr %i.f, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.423.0.copyload = load i8, ptr %.sroa.423.0..sroa_idx, align 16
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.528.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.524.0..sroa_idx, i64 15, i1 false)
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.625.0.copyload = load i128, ptr %.sroa.625.0..sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.022.0.copyload, ptr %i.g, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.423.0.copyload, ptr %.sroa.427.0..sroa_idx, align 8
  %.sroa.629.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i128 %.sroa.625.0.copyload, ptr %.sroa.629.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = load i8, ptr %i.h, align 16, !range !36, !noundef !4
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.l = load i128, ptr %i.k, align 16, !noundef !4 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.m = icmp ugt i128 %i.l, 9223372036854775807  ; 2 uses
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.m, label %bb.h, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.m, label %bb.h, label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.n = trunc nuw nsw i128 %i.l to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %bb.f
  %.sroa.101.0 = phi i64 [ %i.y, %bb.j ], [ %i.n, %bb.f ]
  tail call void @_RINvYNtNvXs0_NvXNvNtCs7NzLGBMhIGf_9criterion10connection1__NtBg_15IncomingMessageNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1j_7Visitor10visit_enum9___VisitorB2u_9visit_i64INtNtNtCsdCGSpSJmIcn_8ciborium2de5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEEBi_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, i64 noundef %.sroa.101.0)
  br label %bb.k

bb.h:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !333
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) 17, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !333
  %i.o = load i64, ptr %i.a, align 8, !range !38, !noalias !333, !noundef !4
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !65, !noalias !333, !noundef !4 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.p, label %bb.i, label %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit, !prof !8

bb.i:                                             ; preds = %bb.h
  %i.t = load i64, ptr %i.s, align 8, !noalias !333
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.r, i64 %i.t) #16, !noalias !333
  unreachable

_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit: ; preds = %bb.h
  %i.u = load ptr, ptr %i.s, align 8, !noalias !333, !nonnull !4, !noundef !4 ; 2 uses
  %i.v = icmp samesign ugt i64 %i.r, 16
  tail call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !333
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.u, ptr noundef nonnull readonly align 1 dereferenceable(17) @7, i64 range(i64 0, -9223372036854775808) 17, i1 false), !noalias !344
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.w, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.r, ptr %.sroa.433.0..sroa_idx, align 8
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.u, ptr %.sroa.534.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 17, ptr %.sroa.6.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.x = trunc nuw nsw i128 %i.l to i64
  %i.y = xor i64 %i.x, -1
  br label %bb.g

bb.k:                                             ; preds = %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit, %bb.g, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_i64NtNvXs0_NvXNvNtCs7NzLGBMhIGf_9criterion10connection1__NtB2c_15IncomingMessageNtBZ_11Deserialize11deserializeNtB27_9___VisitorNtBZ_7Visitor10visit_enums0_9___VisitorEB2e_(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 -1, ptr %i.b, align 8
  call fastcc void @_RNvMs_NtCsdCGSpSJmIcn_8ciborium2deINtB4_12DeserializerRShE7integerCs7NzLGBMhIGf_9criterion(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.c, ptr noalias noundef align 8 dereferenceable(64) %1, ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.d = load i64, ptr %i.c, align 16, !range !38, !noundef !4
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.022.0.copyload = load i64, ptr %i.f, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.423.0.copyload = load i8, ptr %.sroa.423.0..sroa_idx, align 16
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.528.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.524.0..sroa_idx, i64 15, i1 false)
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.625.0.copyload = load i128, ptr %.sroa.625.0..sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.022.0.copyload, ptr %i.g, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.423.0.copyload, ptr %.sroa.427.0..sroa_idx, align 8
  %.sroa.629.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i128 %.sroa.625.0.copyload, ptr %.sroa.629.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = load i8, ptr %i.h, align 16, !range !36, !noundef !4
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.l = load i128, ptr %i.k, align 16, !noundef !4 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.m = icmp ugt i128 %i.l, 9223372036854775807  ; 2 uses
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.m, label %bb.h, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.m, label %bb.h, label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.n = trunc nuw nsw i128 %i.l to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %bb.f
  %.sroa.101.0 = phi i64 [ %i.y, %bb.j ], [ %i.n, %bb.f ]
  tail call void @_RINvYNtNvXs0_NvXNvNtCs7NzLGBMhIGf_9criterion10connection1__NtBg_15IncomingMessageNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1j_7Visitor10visit_enums0_9___VisitorB2u_9visit_i64INtNtNtCsdCGSpSJmIcn_8ciborium2de5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEEBi_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, i64 noundef %.sroa.101.0)
  br label %bb.k

bb.h:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !345
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) 17, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !345
  %i.o = load i64, ptr %i.a, align 8, !range !38, !noalias !345, !noundef !4
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !65, !noalias !345, !noundef !4 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.p, label %bb.i, label %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit, !prof !8

bb.i:                                             ; preds = %bb.h
  %i.t = load i64, ptr %i.s, align 8, !noalias !345
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.r, i64 %i.t) #16, !noalias !345
  unreachable

_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit: ; preds = %bb.h
  %i.u = load ptr, ptr %i.s, align 8, !noalias !345, !nonnull !4, !noundef !4 ; 2 uses
  %i.v = icmp samesign ugt i64 %i.r, 16
  tail call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !345
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.u, ptr noundef nonnull readonly align 1 dereferenceable(17) @7, i64 range(i64 0, -9223372036854775808) 17, i1 false), !noalias !356
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.w, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.r, ptr %.sroa.433.0..sroa_idx, align 8
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.u, ptr %.sroa.534.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 17, ptr %.sroa.6.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.x = trunc nuw nsw i128 %i.l to i64
  %i.y = xor i64 %i.x, -1
  br label %bb.g

bb.k:                                             ; preds = %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit, %bb.g, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_i64NtNvXs0_NvXNvNtCs7NzLGBMhIGf_9criterion10connection1__NtB2c_15IncomingMessageNtBZ_11Deserialize11deserializeNtB27_9___VisitorNtBZ_7Visitor10visit_enums1_9___VisitorEB2e_(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 -1, ptr %i.b, align 8
  call fastcc void @_RNvMs_NtCsdCGSpSJmIcn_8ciborium2deINtB4_12DeserializerRShE7integerCs7NzLGBMhIGf_9criterion(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.c, ptr noalias noundef align 8 dereferenceable(64) %1, ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.d = load i64, ptr %i.c, align 16, !range !38, !noundef !4
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.022.0.copyload = load i64, ptr %i.f, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.423.0.copyload = load i8, ptr %.sroa.423.0..sroa_idx, align 16
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.528.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.524.0..sroa_idx, i64 15, i1 false)
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.625.0.copyload = load i128, ptr %.sroa.625.0..sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.022.0.copyload, ptr %i.g, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.423.0.copyload, ptr %.sroa.427.0..sroa_idx, align 8
  %.sroa.629.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i128 %.sroa.625.0.copyload, ptr %.sroa.629.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = load i8, ptr %i.h, align 16, !range !36, !noundef !4
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.l = load i128, ptr %i.k, align 16, !noundef !4 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.m = icmp ugt i128 %i.l, 9223372036854775807  ; 2 uses
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.m, label %bb.h, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.m, label %bb.h, label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.n = trunc nuw nsw i128 %i.l to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %bb.f
  %.sroa.101.0 = phi i64 [ %i.y, %bb.j ], [ %i.n, %bb.f ]
  tail call void @_RINvYNtNvXs0_NvXNvNtCs7NzLGBMhIGf_9criterion10connection1__NtBg_15IncomingMessageNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1j_7Visitor10visit_enums1_9___VisitorB2u_9visit_i64INtNtNtCsdCGSpSJmIcn_8ciborium2de5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEEBi_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, i64 noundef %.sroa.101.0)
  br label %bb.k

bb.h:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !357
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) 17, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !357
  %i.o = load i64, ptr %i.a, align 8, !range !38, !noalias !357, !noundef !4
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !65, !noalias !357, !noundef !4 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.p, label %bb.i, label %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit, !prof !8

bb.i:                                             ; preds = %bb.h
  %i.t = load i64, ptr %i.s, align 8, !noalias !357
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.r, i64 %i.t) #16, !noalias !357
  unreachable

_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit: ; preds = %bb.h
  %i.u = load ptr, ptr %i.s, align 8, !noalias !357, !nonnull !4, !noundef !4 ; 2 uses
  %i.v = icmp samesign ugt i64 %i.r, 16
  tail call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !357
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.u, ptr noundef nonnull readonly align 1 dereferenceable(17) @7, i64 range(i64 0, -9223372036854775808) 17, i1 false), !noalias !368
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.w, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.r, ptr %.sroa.433.0..sroa_idx, align 8
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.u, ptr %.sroa.534.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 17, ptr %.sroa.6.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.x = trunc nuw nsw i128 %i.l to i64
  %i.y = xor i64 %i.x, -1
  br label %bb.g

bb.k:                                             ; preds = %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit, %bb.g, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_i64NtNvXs0_NvXNvNtCs7NzLGBMhIGf_9criterion10connection1__NtB2c_15IncomingMessageNtBZ_11Deserialize11deserializeNtB27_9___VisitorNtBZ_7Visitor10visit_enums2_9___VisitorEB2e_(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 -1, ptr %i.b, align 8
  call fastcc void @_RNvMs_NtCsdCGSpSJmIcn_8ciborium2deINtB4_12DeserializerRShE7integerCs7NzLGBMhIGf_9criterion(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.c, ptr noalias noundef align 8 dereferenceable(64) %1, ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.d = load i64, ptr %i.c, align 16, !range !38, !noundef !4
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.022.0.copyload = load i64, ptr %i.f, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.423.0.copyload = load i8, ptr %.sroa.423.0..sroa_idx, align 16
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.528.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.524.0..sroa_idx, i64 15, i1 false)
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.625.0.copyload = load i128, ptr %.sroa.625.0..sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.022.0.copyload, ptr %i.g, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.423.0.copyload, ptr %.sroa.427.0..sroa_idx, align 8
  %.sroa.629.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i128 %.sroa.625.0.copyload, ptr %.sroa.629.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = load i8, ptr %i.h, align 16, !range !36, !noundef !4
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.l = load i128, ptr %i.k, align 16, !noundef !4 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.m = icmp ugt i128 %i.l, 9223372036854775807  ; 2 uses
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.m, label %bb.h, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.m, label %bb.h, label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.n = trunc nuw nsw i128 %i.l to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %bb.f
  %.sroa.101.0 = phi i64 [ %i.y, %bb.j ], [ %i.n, %bb.f ]
  tail call void @_RINvYNtNvXs0_NvXNvNtCs7NzLGBMhIGf_9criterion10connection1__NtBg_15IncomingMessageNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1j_7Visitor10visit_enums2_9___VisitorB2u_9visit_i64INtNtNtCsdCGSpSJmIcn_8ciborium2de5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEEBi_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, i64 noundef %.sroa.101.0)
  br label %bb.k

bb.h:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !369
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) 17, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !369
  %i.o = load i64, ptr %i.a, align 8, !range !38, !noalias !369, !noundef !4
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !65, !noalias !369, !noundef !4 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.p, label %bb.i, label %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit, !prof !8

bb.i:                                             ; preds = %bb.h
  %i.t = load i64, ptr %i.s, align 8, !noalias !369
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.r, i64 %i.t) #16, !noalias !369
  unreachable

_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit: ; preds = %bb.h
  %i.u = load ptr, ptr %i.s, align 8, !noalias !369, !nonnull !4, !noundef !4 ; 2 uses
  %i.v = icmp samesign ugt i64 %i.r, 16
  tail call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !369
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.u, ptr noundef nonnull readonly align 1 dereferenceable(17) @7, i64 range(i64 0, -9223372036854775808) 17, i1 false), !noalias !380
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.w, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.r, ptr %.sroa.433.0..sroa_idx, align 8
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.u, ptr %.sroa.534.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 17, ptr %.sroa.6.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.x = trunc nuw nsw i128 %i.l to i64
  %i.y = xor i64 %i.x, -1
  br label %bb.g

bb.k:                                             ; preds = %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit, %bb.g, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_i64NtNvXs0_NvXNvNtCs7NzLGBMhIGf_9criterion10connection1__NtB2c_15IncomingMessageNtBZ_11Deserialize11deserializeNtB27_9___VisitorNtBZ_7Visitor10visit_enums_9___VisitorEB2e_(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 -1, ptr %i.b, align 8
  call fastcc void @_RNvMs_NtCsdCGSpSJmIcn_8ciborium2deINtB4_12DeserializerRShE7integerCs7NzLGBMhIGf_9criterion(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.c, ptr noalias noundef align 8 dereferenceable(64) %1, ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.d = load i64, ptr %i.c, align 16, !range !38, !noundef !4
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.022.0.copyload = load i64, ptr %i.f, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.423.0.copyload = load i8, ptr %.sroa.423.0..sroa_idx, align 16
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.528.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.524.0..sroa_idx, i64 15, i1 false)
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.625.0.copyload = load i128, ptr %.sroa.625.0..sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.022.0.copyload, ptr %i.g, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.423.0.copyload, ptr %.sroa.427.0..sroa_idx, align 8
  %.sroa.629.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i128 %.sroa.625.0.copyload, ptr %.sroa.629.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = load i8, ptr %i.h, align 16, !range !36, !noundef !4
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.l = load i128, ptr %i.k, align 16, !noundef !4 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.m = icmp ugt i128 %i.l, 9223372036854775807  ; 2 uses
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.m, label %bb.h, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.m, label %bb.h, label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.n = trunc nuw nsw i128 %i.l to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %bb.f
  %.sroa.101.0 = phi i64 [ %i.y, %bb.j ], [ %i.n, %bb.f ]
  tail call void @_RINvYNtNvXs0_NvXNvNtCs7NzLGBMhIGf_9criterion10connection1__NtBg_15IncomingMessageNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1j_7Visitor10visit_enums_9___VisitorB2u_9visit_i64INtNtNtCsdCGSpSJmIcn_8ciborium2de5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEEBi_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, i64 noundef %.sroa.101.0)
  br label %bb.k

bb.h:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !381
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) 17, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !381
  %i.o = load i64, ptr %i.a, align 8, !range !38, !noalias !381, !noundef !4
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !65, !noalias !381, !noundef !4 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.p, label %bb.i, label %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit, !prof !8

bb.i:                                             ; preds = %bb.h
  %i.t = load i64, ptr %i.s, align 8, !noalias !381
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.r, i64 %i.t) #16, !noalias !381
  unreachable

_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit: ; preds = %bb.h
  %i.u = load ptr, ptr %i.s, align 8, !noalias !381, !nonnull !4, !noundef !4 ; 2 uses
  %i.v = icmp samesign ugt i64 %i.r, 16
  tail call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !381
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.u, ptr noundef nonnull readonly align 1 dereferenceable(17) @7, i64 range(i64 0, -9223372036854775808) 17, i1 false), !noalias !392
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.w, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.r, ptr %.sroa.433.0..sroa_idx, align 8
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.u, ptr %.sroa.534.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 17, ptr %.sroa.6.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.x = trunc nuw nsw i128 %i.l to i64
  %i.y = xor i64 %i.x, -1
  br label %bb.g

bb.k:                                             ; preds = %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit, %bb.g, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_mapNtNvXs0_NvXNvCs7NzLGBMhIGf_9criterions_1__NtB2c_10ThroughputNtBZ_11Deserialize11deserializeNtB27_9___VisitorNtBZ_7Visitor10visit_enum9___VisitorEB2c_(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [9 x i8], align 1                 ; 13 uses
  %.sroa.11.i.i = alloca [6 x i8], align 2        ; 10 uses
  %i.b = alloca [10 x i8], align 1                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 12 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [16 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [10 x i8], align 1                ; 5 uses
  %i.h = alloca [40 x i8], align 8                ; 10 uses
  %i.i = alloca [24 x i8], align 8                ; 12 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.17.i = alloca [24 x i8], align 8         ; 4 uses
  %i.k = alloca [40 x i8], align 8                ; 7 uses
  %i.l = alloca [40 x i8], align 8                ; 7 uses
  %i.m = alloca [40 x i8], align 8                ; 6 uses
  %i.n = alloca [40 x i8], align 8                ; 7 uses
  %i.o = alloca [40 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 21 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 16 uses
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call fastcc void @_RNvMs1_NtCs4PBppUgsNbv_11ciborium_ll3decINtB5_7DecoderRShE4pullCs7NzLGBMhIGf_9criterion(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.r, ptr noalias noundef align 8 dereferenceable(40) %i.s)
  %i.t = load i8, ptr %i.r, align 8, !range !37, !noundef !4 ; 3 uses
  %i.u = icmp eq i8 %i.t, -1
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !range !38, !noundef !4
  %i.w = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.x = ptrtoint ptr %i.w to i64
  %. = or disjoint i64 %i.v, 2
  store i64 %., ptr %0, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.x, ptr %.sroa.516.0..sroa_idx, align 8
  br label %bb.do

bb.d:                                             ; preds = %bb.b
  %.sroa.411.sroa.0.0.copyload = load i8, ptr %.sroa.411.0..sroa_idx, align 1
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 4 uses
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  switch i8 %i.t, label %bb.e [
    i8 4, label %bb.b
    i8 9, label %bb.r
  ]

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr @10, ptr %i.q, align 8, !noalias !393
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 3, ptr %i.y, align 8, !noalias !393
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !393
  switch i8 %i.t, label %default.unreachable1.i [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
    i8 8, label %_RNvXNtCsdCGSpSJmIcn_8ciborium2deNtNtCs4PBppUgsNbv_11ciborium_ll3hdr6HeaderINtB2_8ExpectedINtNtB2_5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEE8expectedCs7NzLGBMhIGf_9criterion.exit
    i8 5, label %bb.j
    i8 6, label %bb.k
    i8 7, label %bb.l
  ]

default.unreachable1.i:                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %.sroa.5.0.copyload, ptr %i.z, align 8, !noalias !393
  br label %_RNvXNtCsdCGSpSJmIcn_8ciborium2deNtNtCs4PBppUgsNbv_11ciborium_ll3hdr6HeaderINtB2_8ExpectedINtNtB2_5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEE8expectedCs7NzLGBMhIGf_9criterion.exit

bb.g:                                             ; preds = %bb.e
  %i.aa = xor i64 %.sroa.5.0.copyload, -1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !noalias !393
  br label %_RNvXNtCsdCGSpSJmIcn_8ciborium2deNtNtCs4PBppUgsNbv_11ciborium_ll3hdr6HeaderINtB2_8ExpectedINtNtB2_5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEE8expectedCs7NzLGBMhIGf_9criterion.exit

bb.h:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %.sroa.5.0.copyload, ptr %i.ac, align 8, !noalias !393
  br label %_RNvXNtCsdCGSpSJmIcn_8ciborium2deNtNtCs4PBppUgsNbv_11ciborium_ll3hdr6HeaderINtB2_8ExpectedINtNtB2_5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEE8expectedCs7NzLGBMhIGf_9criterion.exit

bb.i:                                             ; preds = %bb.e
  switch i8 %.sroa.411.sroa.0.0.copyload, label %bb.m [
    i8 20, label %bb.n
    i8 21, label %bb.o
    i8 22, label %bb.p
    i8 23, label %bb.q
  ]

bb.j:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @47, ptr %i.ad, align 8, !noalias !393
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 5, ptr %i.ae, align 8, !noalias !393
  br label %_RNvXNtCsdCGSpSJmIcn_8ciborium2deNtNtCs4PBppUgsNbv_11ciborium_ll3hdr6HeaderINtB2_8ExpectedINtNtB2_5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEE8expectedCs7NzLGBMhIGf_9criterion.exit

bb.k:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @4, ptr %i.af, align 8, !noalias !393
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 5, ptr %i.ag, align 8, !noalias !393
  br label %_RNvXNtCsdCGSpSJmIcn_8ciborium2deNtNtCs4PBppUgsNbv_11ciborium_ll3hdr6HeaderINtB2_8ExpectedINtNtB2_5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEE8expectedCs7NzLGBMhIGf_9criterion.exit

bb.l:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @16, ptr %i.ah, align 8, !noalias !393
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 6, ptr %i.ai, align 8, !noalias !393
  br label %_RNvXNtCsdCGSpSJmIcn_8ciborium2deNtNtCs4PBppUgsNbv_11ciborium_ll3hdr6HeaderINtB2_8ExpectedINtNtB2_5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEE8expectedCs7NzLGBMhIGf_9criterion.exit

bb.m:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @45, ptr %i.aj, align 8, !noalias !393
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 6, ptr %i.ak, align 8, !noalias !393
  br label %_RNvXNtCsdCGSpSJmIcn_8ciborium2deNtNtCs4PBppUgsNbv_11ciborium_ll3hdr6HeaderINtB2_8ExpectedINtNtB2_5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEE8expectedCs7NzLGBMhIGf_9criterion.exit

bb.n:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store i8 0, ptr %i.al, align 1, !noalias !393
  br label %_RNvXNtCsdCGSpSJmIcn_8ciborium2deNtNtCs4PBppUgsNbv_11ciborium_ll3hdr6HeaderINtB2_8ExpectedINtNtB2_5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEE8expectedCs7NzLGBMhIGf_9criterion.exit

bb.o:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store i8 1, ptr %i.am, align 1, !noalias !393
  br label %_RNvXNtCsdCGSpSJmIcn_8ciborium2deNtNtCs4PBppUgsNbv_11ciborium_ll3hdr6HeaderINtB2_8ExpectedINtNtB2_5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEE8expectedCs7NzLGBMhIGf_9criterion.exit

bb.p:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @43, ptr %i.an, align 8, !noalias !393
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 4, ptr %i.ao, align 8, !noalias !393
  br label %_RNvXNtCsdCGSpSJmIcn_8ciborium2deNtNtCs4PBppUgsNbv_11ciborium_ll3hdr6HeaderINtB2_8ExpectedINtNtB2_5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEE8expectedCs7NzLGBMhIGf_9criterion.exit

bb.q:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @44, ptr %i.ap, align 8, !noalias !393
  %i.aq = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 9, ptr %i.aq, align 8, !noalias !393
  br label %_RNvXNtCsdCGSpSJmIcn_8ciborium2deNtNtCs4PBppUgsNbv_11ciborium_ll3hdr6HeaderINtB2_8ExpectedINtNtB2_5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEE8expectedCs7NzLGBMhIGf_9criterion.exit

_RNvXNtCsdCGSpSJmIcn_8ciborium2deNtNtCs4PBppUgsNbv_11ciborium_ll3hdr6HeaderINtB2_8ExpectedINtNtB2_5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEE8expectedCs7NzLGBMhIGf_9criterion.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q
  %.sink.i = phi i8 [ 17, %bb.q ], [ 17, %bb.p ], [ 0, %bb.o ], [ 0, %bb.n ], [ 17, %bb.m ], [ 10, %bb.e ], [ 1, %bb.f ], [ 17, %bb.l ], [ 17, %bb.k ], [ 17, %bb.j ], [ 2, %bb.g ], [ 3, %bb.h ]
  store i8 %.sink.i, ptr %i.p, align 8, !noalias !393
  call void @_RNvYINtNtNtCsdCGSpSJmIcn_8ciborium2de5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error12invalid_typeCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.p, ptr noundef nonnull %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !393
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.do

bb.r:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.as = load i64, ptr %i.ar, align 8, !noundef !4 ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i64 5, ptr %0, align 8
  br label %bb.do

bb.t:                                             ; preds = %bb.r
  %i.au = ptrtoint ptr %.sroa.6.0.copyload to i64
  %i.av = add i64 %i.as, -1
  store i64 %i.av, ptr %i.ar, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !398)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17.i)
end_hunk_2
begin_hunk_3_@_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_strNtNvXs0_NvXNvNtCs7NzLGBMhIGf_9criterion10connection1__NtB2c_15IncomingMessageNtBZ_11Deserialize11deserializeNtB27_9___VisitorNtBZ_7Visitor10visit_enums_9___VisitorEB2e_:bb.a
  br label %_RNvXNtCsdCGSpSJmIcn_8ciborium2deNtNtCs4PBppUgsNbv_11ciborium_ll3hdr6HeaderINtB2_8ExpectedINtNtB2_5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEE8expectedCs7NzLGBMhIGf_9criterion.exit

bb.m:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @45, ptr %i.z, align 8, !noalias !2218
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 6, ptr %i.aa, align 8, !noalias !2218
  br label %_RNvXNtCsdCGSpSJmIcn_8ciborium2deNtNtCs4PBppUgsNbv_11ciborium_ll3hdr6HeaderINtB2_8ExpectedINtNtB2_5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEE8expectedCs7NzLGBMhIGf_9criterion.exit

bb.n:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 0, ptr %i.ab, align 1, !noalias !2218
  br label %_RNvXNtCsdCGSpSJmIcn_8ciborium2deNtNtCs4PBppUgsNbv_11ciborium_ll3hdr6HeaderINtB2_8ExpectedINtNtB2_5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEE8expectedCs7NzLGBMhIGf_9criterion.exit

bb.o:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 1, ptr %i.ac, align 1, !noalias !2218
  br label %_RNvXNtCsdCGSpSJmIcn_8ciborium2deNtNtCs4PBppUgsNbv_11ciborium_ll3hdr6HeaderINtB2_8ExpectedINtNtB2_5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEE8expectedCs7NzLGBMhIGf_9criterion.exit

bb.p:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @43, ptr %i.ad, align 8, !noalias !2218
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 4, ptr %i.ae, align 8, !noalias !2218
  br label %_RNvXNtCsdCGSpSJmIcn_8ciborium2deNtNtCs4PBppUgsNbv_11ciborium_ll3hdr6HeaderINtB2_8ExpectedINtNtB2_5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEE8expectedCs7NzLGBMhIGf_9criterion.exit

bb.q:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @44, ptr %i.af, align 8, !noalias !2218
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 9, ptr %i.ag, align 8, !noalias !2218
  br label %_RNvXNtCsdCGSpSJmIcn_8ciborium2deNtNtCs4PBppUgsNbv_11ciborium_ll3hdr6HeaderINtB2_8ExpectedINtNtB2_5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEE8expectedCs7NzLGBMhIGf_9criterion.exit

_RNvXNtCsdCGSpSJmIcn_8ciborium2deNtNtCs4PBppUgsNbv_11ciborium_ll3hdr6HeaderINtB2_8ExpectedINtNtB2_5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEE8expectedCs7NzLGBMhIGf_9criterion.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.j, %bb.k, %.thread, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q
  %.sink.i = phi i8 [ 17, %bb.q ], [ 17, %bb.p ], [ 0, %bb.o ], [ 0, %bb.n ], [ 17, %bb.m ], [ 11, %bb.l ], [ 1, %bb.f ], [ 17, %.thread ], [ 17, %bb.k ], [ 17, %bb.j ], [ 10, %bb.e ], [ 3, %bb.h ], [ 2, %bb.g ]
  store i8 %.sink.i, ptr %i.a, align 8, !noalias !2218
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvYINtNtNtCsdCGSpSJmIcn_8ciborium2de5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error12invalid_typeCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ah, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -1, ptr %0, align 8
  br label %bb.ab

bb.r:                                             ; preds = %bb.d
  %i.ai = ptrtoint ptr %.sroa.6.0.copyload to i64 ; 8 uses
  %i.aj = trunc nuw i64 %.sroa.515.0.copyload to i1
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load i64, ptr %i.ak, align 8
  %.not = icmp uge i64 %i.al, %i.ai
  %or.cond.not = select i1 %i.aj, i1 %.not, i1 false
  br i1 %or.cond.not, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  %i.am = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2222)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2225)
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ao = load i8, ptr %i.an, align 8, !range !44, !alias.scope !2222, !noalias !2225, !noundef !4
  %.not.i = icmp eq i8 %i.ao, -1
  br i1 %.not.i, label %bb.u, label %bb.t, !prof !45

bb.t:                                             ; preds = %bb.s
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #16, !noalias !2227
  unreachable

bb.u:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2228)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2236)
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !2238, !noalias !2239, !noundef !4 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, %i.ai
  %i.as = load ptr, ptr %i.e, align 8, !alias.scope !2238, !noalias !2239, !nonnull !4, !noundef !4 ; 4 uses
  br i1 %i.ar, label %bb.x, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs7NzLGBMhIGf_9criterion.exit.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs7NzLGBMhIGf_9criterion.exit.i.i.i: ; preds = %bb.u
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ai
  %i.au = sub nuw nsw i64 %i.aq, %i.ai
  %i.av = icmp eq ptr %.sroa.6.0.copyload, inttoptr (i64 1 to ptr)
  br i1 %i.av, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs7NzLGBMhIGf_9criterion.exit.i.i.i
  tail call void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implhECs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull %i.am, i64 noundef range(i64 0, -9223372036854775808) %i.ai, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.as, i64 noundef range(i64 0, -9223372036854775808) %i.ai, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50), !noalias !2238
  br label %bb.y

bb.w:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs7NzLGBMhIGf_9criterion.exit.i.i.i
  %i.aw = load i8, ptr %i.as, align 1, !noalias !2240, !noundef !4
  store i8 %i.aw, ptr %i.am, align 1, !alias.scope !2239, !noalias !2238
  br label %bb.y

bb.x:                                             ; preds = %bb.u
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aq
  store ptr %i.ax, ptr %i.e, align 8, !alias.scope !2238, !noalias !2239
  store i64 0, ptr %i.ap, align 8, !alias.scope !2238, !noalias !2239
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.ay, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @52, ptr %.sroa.423.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ab

bb.y:                                             ; preds = %bb.w, %bb.v
  store ptr %i.at, ptr %i.e, align 8, !alias.scope !2238, !noalias !2239
  store i64 %i.au, ptr %i.ap, align 8, !alias.scope !2238, !noalias !2239
  %i.az = load i64, ptr %i.f, align 8, !alias.scope !2222, !noalias !2225, !noundef !4
  %i.ba = add i64 %i.az, %i.ai
  store i64 %i.ba, ptr %i.f, align 8, !alias.scope !2222, !noalias !2225
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.am, i64 noundef %i.ai)
  %i.bb = load i64, ptr %i.c, align 8, !range !38, !noundef !4
  %i.bc = trunc nuw i64 %i.bb to i1
  br i1 %i.bc, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 3, ptr %i.bd, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !4, !noundef !4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !4
  tail call void @_RINvYNtNvXs0_NvXNvNtCs7NzLGBMhIGf_9criterion10connection1__NtBg_15IncomingMessageNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1j_7Visitor10visit_enums_9___VisitorB2u_9visit_strINtNtNtCsdCGSpSJmIcn_8ciborium2de5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEEBi_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bf, i64 noundef %i.bh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.x, %bb.z, %_RNvXNtCsdCGSpSJmIcn_8ciborium2deNtNtCs4PBppUgsNbv_11ciborium_ll3hdr6HeaderINtB2_8ExpectedINtNtB2_5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEE8expectedCs7NzLGBMhIGf_9criterion.exit, %bb.c, %bb.aa
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_u64NtNvXs0_NvXNvCs7NzLGBMhIGf_9criterions_1__NtB2c_10ThroughputNtBZ_11Deserialize11deserializeNtB27_9___VisitorNtBZ_7Visitor10visit_enum9___VisitorEB2c_(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 -1, ptr %i.c, align 8
  call fastcc void @_RNvMs_NtCsdCGSpSJmIcn_8ciborium2deINtB4_12DeserializerRShE7integerCs7NzLGBMhIGf_9criterion(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.d, ptr noalias noundef align 8 dereferenceable(64) %1, ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.e = load i64, ptr %i.d, align 16, !range !38, !noundef !4
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.018.0.copyload = load i64, ptr %i.g, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.419.0.copyload = load i8, ptr %.sroa.419.0..sroa_idx, align 16
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 17
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.524.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.520.0..sroa_idx, i64 15, i1 false)
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.621.0.copyload = load i128, ptr %.sroa.621.0..sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %.sroa.018.0.copyload, ptr %0, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.419.0.copyload, ptr %.sroa.423.0..sroa_idx, align 8
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i128 %.sroa.621.0.copyload, ptr %.sroa.625.0..sroa_idx, align 8
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load i8, ptr %i.h, align 16, !range !36, !noundef !4
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.l = load i128, ptr %i.k, align 16, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = icmp ugt i128 %i.l, 18446744073709551615
  br i1 %i.m, label %bb.h, label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2241
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, -9223372036854775808) 27, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !2241
  %i.n = load i64, ptr %i.b, align 8, !range !38, !noalias !2241, !noundef !4
  %i.o = trunc nuw i64 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !65, !noalias !2241, !noundef !4 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.o, label %bb.f, label %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit, !prof !8

bb.f:                                             ; preds = %bb.e
  %i.s = load i64, ptr %i.r, align 8, !noalias !2241
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.q, i64 %i.s) #16, !noalias !2241
  unreachable

_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit: ; preds = %bb.e
  %i.t = load ptr, ptr %i.r, align 8, !noalias !2241, !nonnull !4, !noundef !4 ; 2 uses
  %i.u = icmp samesign ugt i64 %i.q, 26
  tail call void @llvm.assume(i1 %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2241
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.t, ptr noundef nonnull readonly align 1 dereferenceable(27) @14, i64 range(i64 0, -9223372036854775808) 27, i1 false), !noalias !2252
  store i64 0, ptr %0, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.q, ptr %.sroa.432.0..sroa_idx, align 8
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.t, ptr %.sroa.533.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 27, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.j

bb.g:                                             ; preds = %bb.d
  %i.v = trunc nuw i128 %i.l to i64
  tail call void @_RINvYNtNvXs0_NvXNvCs7NzLGBMhIGf_9criterions_1__NtBg_10ThroughputNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB12_7Visitor10visit_enum9___VisitorB2d_9visit_u64INtNtNtCsdCGSpSJmIcn_8ciborium2de5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEEBg_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, i64 noundef %i.v)
  br label %bb.j

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2253
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) 17, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !2253
  %i.w = load i64, ptr %i.a, align 8, !range !38, !noalias !2253, !noundef !4
  %i.x = trunc nuw i64 %i.w to i1
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.z = load i64, ptr %i.y, align 8, !range !65, !noalias !2253, !noundef !4 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.x, label %bb.i, label %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit31, !prof !8

bb.i:                                             ; preds = %bb.h
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !2253
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.z, i64 %i.ab) #16, !noalias !2253
  unreachable

_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit31: ; preds = %bb.h
  %i.ac = load ptr, ptr %i.aa, align 8, !noalias !2253, !nonnull !4, !noundef !4 ; 2 uses
  %i.ad = icmp samesign ugt i64 %i.z, 16
  tail call void @llvm.assume(i1 %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2253
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.ac, ptr noundef nonnull readonly align 1 dereferenceable(17) @7, i64 range(i64 0, -9223372036854775808) 17, i1 false), !noalias !2264
  store i64 0, ptr %0, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.z, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ac, ptr %.sroa.537.0..sroa_idx, align 8
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 17, ptr %.sroa.638.0..sroa_idx, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit, %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit31, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_u64NtNvXs0_NvXNvNtCs7NzLGBMhIGf_9criterion10connection1__NtB2c_15IncomingMessageNtBZ_11Deserialize11deserializeNtB27_9___VisitorNtBZ_7Visitor10visit_enum9___VisitorEB2e_(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 -1, ptr %i.c, align 8
  call fastcc void @_RNvMs_NtCsdCGSpSJmIcn_8ciborium2deINtB4_12DeserializerRShE7integerCs7NzLGBMhIGf_9criterion(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.d, ptr noalias noundef align 8 dereferenceable(64) %1, ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.e = load i64, ptr %i.d, align 16, !range !38, !noundef !4
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.018.0.copyload = load i64, ptr %i.g, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.419.0.copyload = load i8, ptr %.sroa.419.0..sroa_idx, align 16
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 17
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.524.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.520.0..sroa_idx, i64 15, i1 false)
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.621.0.copyload = load i128, ptr %.sroa.621.0..sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.018.0.copyload, ptr %i.h, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.419.0.copyload, ptr %.sroa.423.0..sroa_idx, align 8
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i128 %.sroa.621.0.copyload, ptr %.sroa.625.0..sroa_idx, align 8
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = load i8, ptr %i.i, align 16, !range !36, !noundef !4
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.m = load i128, ptr %i.l, align 16, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = icmp ugt i128 %i.m, 18446744073709551615
  br i1 %i.n, label %bb.h, label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2265
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, -9223372036854775808) 27, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !2265
  %i.o = load i64, ptr %i.b, align 8, !range !38, !noalias !2265, !noundef !4
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !65, !noalias !2265, !noundef !4 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.p, label %bb.f, label %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit, !prof !8

bb.f:                                             ; preds = %bb.e
  %i.t = load i64, ptr %i.s, align 8, !noalias !2265
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.r, i64 %i.t) #16, !noalias !2265
  unreachable

_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit: ; preds = %bb.e
  %i.u = load ptr, ptr %i.s, align 8, !noalias !2265, !nonnull !4, !noundef !4 ; 2 uses
  %i.v = icmp samesign ugt i64 %i.r, 26
  tail call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2265
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.u, ptr noundef nonnull readonly align 1 dereferenceable(27) @14, i64 range(i64 0, -9223372036854775808) 27, i1 false), !noalias !2276
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.w, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.r, ptr %.sroa.432.0..sroa_idx, align 8
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.u, ptr %.sroa.533.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 27, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.k

bb.g:                                             ; preds = %bb.d
  %i.x = trunc nuw i128 %i.m to i64
  tail call void @_RINvYNtNvXs0_NvXNvNtCs7NzLGBMhIGf_9criterion10connection1__NtBg_15IncomingMessageNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1j_7Visitor10visit_enum9___VisitorB2u_9visit_u64INtNtNtCsdCGSpSJmIcn_8ciborium2de5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEEBi_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, i64 noundef %i.x)
  br label %bb.j

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2277
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) 17, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !2277
  %i.y = load i64, ptr %i.a, align 8, !range !38, !noalias !2277, !noundef !4
  %i.z = trunc nuw i64 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !range !65, !noalias !2277, !noundef !4 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.z, label %bb.i, label %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit31, !prof !8

bb.i:                                             ; preds = %bb.h
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !2277
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ab, i64 %i.ad) #16, !noalias !2277
  unreachable

_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit31: ; preds = %bb.h
  %i.ae = load ptr, ptr %i.ac, align 8, !noalias !2277, !nonnull !4, !noundef !4 ; 2 uses
  %i.af = icmp samesign ugt i64 %i.ab, 16
  tail call void @llvm.assume(i1 %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2277
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.ae, ptr noundef nonnull readonly align 1 dereferenceable(17) @7, i64 range(i64 0, -9223372036854775808) 17, i1 false), !noalias !2288
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ag, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ab, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ae, ptr %.sroa.537.0..sroa_idx, align 8
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 17, ptr %.sroa.638.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit31, %bb.g
  ret void

bb.k:                                             ; preds = %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit, %bb.b
  store i64 -1, ptr %0, align 8
  br label %bb.j
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_u64NtNvXs0_NvXNvNtCs7NzLGBMhIGf_9criterion10connection1__NtB2c_15IncomingMessageNtBZ_11Deserialize11deserializeNtB27_9___VisitorNtBZ_7Visitor10visit_enums0_9___VisitorEB2e_(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 -1, ptr %i.c, align 8
  call fastcc void @_RNvMs_NtCsdCGSpSJmIcn_8ciborium2deINtB4_12DeserializerRShE7integerCs7NzLGBMhIGf_9criterion(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.d, ptr noalias noundef align 8 dereferenceable(64) %1, ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.e = load i64, ptr %i.d, align 16, !range !38, !noundef !4
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.018.0.copyload = load i64, ptr %i.g, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.419.0.copyload = load i8, ptr %.sroa.419.0..sroa_idx, align 16
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 17
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.524.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.520.0..sroa_idx, i64 15, i1 false)
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.621.0.copyload = load i128, ptr %.sroa.621.0..sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.018.0.copyload, ptr %i.h, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.419.0.copyload, ptr %.sroa.423.0..sroa_idx, align 8
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i128 %.sroa.621.0.copyload, ptr %.sroa.625.0..sroa_idx, align 8
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = load i8, ptr %i.i, align 16, !range !36, !noundef !4
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.m = load i128, ptr %i.l, align 16, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = icmp ugt i128 %i.m, 18446744073709551615
  br i1 %i.n, label %bb.h, label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2289
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, -9223372036854775808) 27, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !2289
  %i.o = load i64, ptr %i.b, align 8, !range !38, !noalias !2289, !noundef !4
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !65, !noalias !2289, !noundef !4 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.p, label %bb.f, label %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit, !prof !8

bb.f:                                             ; preds = %bb.e
  %i.t = load i64, ptr %i.s, align 8, !noalias !2289
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.r, i64 %i.t) #16, !noalias !2289
  unreachable

_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit: ; preds = %bb.e
  %i.u = load ptr, ptr %i.s, align 8, !noalias !2289, !nonnull !4, !noundef !4 ; 2 uses
  %i.v = icmp samesign ugt i64 %i.r, 26
  tail call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2289
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.u, ptr noundef nonnull readonly align 1 dereferenceable(27) @14, i64 range(i64 0, -9223372036854775808) 27, i1 false), !noalias !2300
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.w, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.r, ptr %.sroa.432.0..sroa_idx, align 8
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.u, ptr %.sroa.533.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 27, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.k

bb.g:                                             ; preds = %bb.d
  %i.x = trunc nuw i128 %i.m to i64
  tail call void @_RINvYNtNvXs0_NvXNvNtCs7NzLGBMhIGf_9criterion10connection1__NtBg_15IncomingMessageNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1j_7Visitor10visit_enums0_9___VisitorB2u_9visit_u64INtNtNtCsdCGSpSJmIcn_8ciborium2de5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEEBi_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, i64 noundef %i.x)
  br label %bb.j

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2301
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) 17, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !2301
  %i.y = load i64, ptr %i.a, align 8, !range !38, !noalias !2301, !noundef !4
  %i.z = trunc nuw i64 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !range !65, !noalias !2301, !noundef !4 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.z, label %bb.i, label %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit31, !prof !8

bb.i:                                             ; preds = %bb.h
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !2301
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ab, i64 %i.ad) #16, !noalias !2301
  unreachable

_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit31: ; preds = %bb.h
  %i.ae = load ptr, ptr %i.ac, align 8, !noalias !2301, !nonnull !4, !noundef !4 ; 2 uses
  %i.af = icmp samesign ugt i64 %i.ab, 16
  tail call void @llvm.assume(i1 %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2301
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.ae, ptr noundef nonnull readonly align 1 dereferenceable(17) @7, i64 range(i64 0, -9223372036854775808) 17, i1 false), !noalias !2312
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ag, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ab, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ae, ptr %.sroa.537.0..sroa_idx, align 8
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 17, ptr %.sroa.638.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit31, %bb.g
  ret void

bb.k:                                             ; preds = %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit, %bb.b
  store i64 -1, ptr %0, align 8
  br label %bb.j
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_u64NtNvXs0_NvXNvNtCs7NzLGBMhIGf_9criterion10connection1__NtB2c_15IncomingMessageNtBZ_11Deserialize11deserializeNtB27_9___VisitorNtBZ_7Visitor10visit_enums1_9___VisitorEB2e_(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 -1, ptr %i.c, align 8
  call fastcc void @_RNvMs_NtCsdCGSpSJmIcn_8ciborium2deINtB4_12DeserializerRShE7integerCs7NzLGBMhIGf_9criterion(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.d, ptr noalias noundef align 8 dereferenceable(64) %1, ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.e = load i64, ptr %i.d, align 16, !range !38, !noundef !4
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.018.0.copyload = load i64, ptr %i.g, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.419.0.copyload = load i8, ptr %.sroa.419.0..sroa_idx, align 16
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 17
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.524.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.520.0..sroa_idx, i64 15, i1 false)
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.621.0.copyload = load i128, ptr %.sroa.621.0..sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.018.0.copyload, ptr %i.h, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.419.0.copyload, ptr %.sroa.423.0..sroa_idx, align 8
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i128 %.sroa.621.0.copyload, ptr %.sroa.625.0..sroa_idx, align 8
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = load i8, ptr %i.i, align 16, !range !36, !noundef !4
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.m = load i128, ptr %i.l, align 16, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = icmp ugt i128 %i.m, 18446744073709551615
  br i1 %i.n, label %bb.h, label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2313
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, -9223372036854775808) 27, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !2313
  %i.o = load i64, ptr %i.b, align 8, !range !38, !noalias !2313, !noundef !4
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !65, !noalias !2313, !noundef !4 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.p, label %bb.f, label %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit, !prof !8

bb.f:                                             ; preds = %bb.e
  %i.t = load i64, ptr %i.s, align 8, !noalias !2313
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.r, i64 %i.t) #16, !noalias !2313
  unreachable

_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit: ; preds = %bb.e
  %i.u = load ptr, ptr %i.s, align 8, !noalias !2313, !nonnull !4, !noundef !4 ; 2 uses
  %i.v = icmp samesign ugt i64 %i.r, 26
  tail call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2313
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.u, ptr noundef nonnull readonly align 1 dereferenceable(27) @14, i64 range(i64 0, -9223372036854775808) 27, i1 false), !noalias !2324
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.w, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.r, ptr %.sroa.432.0..sroa_idx, align 8
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.u, ptr %.sroa.533.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 27, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.k

bb.g:                                             ; preds = %bb.d
  %i.x = trunc nuw i128 %i.m to i64
  tail call void @_RINvYNtNvXs0_NvXNvNtCs7NzLGBMhIGf_9criterion10connection1__NtBg_15IncomingMessageNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1j_7Visitor10visit_enums1_9___VisitorB2u_9visit_u64INtNtNtCsdCGSpSJmIcn_8ciborium2de5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEEBi_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, i64 noundef %i.x)
  br label %bb.j

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2325
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) 17, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !2325
  %i.y = load i64, ptr %i.a, align 8, !range !38, !noalias !2325, !noundef !4
  %i.z = trunc nuw i64 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !range !65, !noalias !2325, !noundef !4 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.z, label %bb.i, label %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit31, !prof !8

bb.i:                                             ; preds = %bb.h
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !2325
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ab, i64 %i.ad) #16, !noalias !2325
  unreachable

_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit31: ; preds = %bb.h
  %i.ae = load ptr, ptr %i.ac, align 8, !noalias !2325, !nonnull !4, !noundef !4 ; 2 uses
  %i.af = icmp samesign ugt i64 %i.ab, 16
  tail call void @llvm.assume(i1 %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2325
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.ae, ptr noundef nonnull readonly align 1 dereferenceable(17) @7, i64 range(i64 0, -9223372036854775808) 17, i1 false), !noalias !2336
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ag, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ab, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ae, ptr %.sroa.537.0..sroa_idx, align 8
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 17, ptr %.sroa.638.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit31, %bb.g
  ret void

bb.k:                                             ; preds = %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit, %bb.b
  store i64 -1, ptr %0, align 8
  br label %bb.j
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_u64NtNvXs0_NvXNvNtCs7NzLGBMhIGf_9criterion10connection1__NtB2c_15IncomingMessageNtBZ_11Deserialize11deserializeNtB27_9___VisitorNtBZ_7Visitor10visit_enums2_9___VisitorEB2e_(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 -1, ptr %i.c, align 8
  call fastcc void @_RNvMs_NtCsdCGSpSJmIcn_8ciborium2deINtB4_12DeserializerRShE7integerCs7NzLGBMhIGf_9criterion(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.d, ptr noalias noundef align 8 dereferenceable(64) %1, ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.e = load i64, ptr %i.d, align 16, !range !38, !noundef !4
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.018.0.copyload = load i64, ptr %i.g, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.419.0.copyload = load i8, ptr %.sroa.419.0..sroa_idx, align 16
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 17
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.524.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.520.0..sroa_idx, i64 15, i1 false)
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.621.0.copyload = load i128, ptr %.sroa.621.0..sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.018.0.copyload, ptr %i.h, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.419.0.copyload, ptr %.sroa.423.0..sroa_idx, align 8
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i128 %.sroa.621.0.copyload, ptr %.sroa.625.0..sroa_idx, align 8
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = load i8, ptr %i.i, align 16, !range !36, !noundef !4
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.m = load i128, ptr %i.l, align 16, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = icmp ugt i128 %i.m, 18446744073709551615
  br i1 %i.n, label %bb.h, label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2337
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, -9223372036854775808) 27, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !2337
  %i.o = load i64, ptr %i.b, align 8, !range !38, !noalias !2337, !noundef !4
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !65, !noalias !2337, !noundef !4 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.p, label %bb.f, label %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit, !prof !8

bb.f:                                             ; preds = %bb.e
  %i.t = load i64, ptr %i.s, align 8, !noalias !2337
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.r, i64 %i.t) #16, !noalias !2337
  unreachable

_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit: ; preds = %bb.e
  %i.u = load ptr, ptr %i.s, align 8, !noalias !2337, !nonnull !4, !noundef !4 ; 2 uses
  %i.v = icmp samesign ugt i64 %i.r, 26
  tail call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2337
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.u, ptr noundef nonnull readonly align 1 dereferenceable(27) @14, i64 range(i64 0, -9223372036854775808) 27, i1 false), !noalias !2348
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.w, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.r, ptr %.sroa.432.0..sroa_idx, align 8
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.u, ptr %.sroa.533.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 27, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.k

bb.g:                                             ; preds = %bb.d
  %i.x = trunc nuw i128 %i.m to i64
  tail call void @_RINvYNtNvXs0_NvXNvNtCs7NzLGBMhIGf_9criterion10connection1__NtBg_15IncomingMessageNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1j_7Visitor10visit_enums2_9___VisitorB2u_9visit_u64INtNtNtCsdCGSpSJmIcn_8ciborium2de5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEEBi_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, i64 noundef %i.x)
  br label %bb.j

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2349
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) 17, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !2349
  %i.y = load i64, ptr %i.a, align 8, !range !38, !noalias !2349, !noundef !4
  %i.z = trunc nuw i64 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !range !65, !noalias !2349, !noundef !4 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.z, label %bb.i, label %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit31, !prof !8

bb.i:                                             ; preds = %bb.h
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !2349
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ab, i64 %i.ad) #16, !noalias !2349
  unreachable

_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit31: ; preds = %bb.h
  %i.ae = load ptr, ptr %i.ac, align 8, !noalias !2349, !nonnull !4, !noundef !4 ; 2 uses
  %i.af = icmp samesign ugt i64 %i.ab, 16
  tail call void @llvm.assume(i1 %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2349
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.ae, ptr noundef nonnull readonly align 1 dereferenceable(17) @7, i64 range(i64 0, -9223372036854775808) 17, i1 false), !noalias !2360
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ag, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ab, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ae, ptr %.sroa.537.0..sroa_idx, align 8
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 17, ptr %.sroa.638.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit31, %bb.g
  ret void

bb.k:                                             ; preds = %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit, %bb.b
  store i64 -1, ptr %0, align 8
  br label %bb.j
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_u64NtNvXs0_NvXNvNtCs7NzLGBMhIGf_9criterion10connection1__NtB2c_15IncomingMessageNtBZ_11Deserialize11deserializeNtB27_9___VisitorNtBZ_7Visitor10visit_enums_9___VisitorEB2e_(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 -1, ptr %i.c, align 8
  call fastcc void @_RNvMs_NtCsdCGSpSJmIcn_8ciborium2deINtB4_12DeserializerRShE7integerCs7NzLGBMhIGf_9criterion(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.d, ptr noalias noundef align 8 dereferenceable(64) %1, ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.e = load i64, ptr %i.d, align 16, !range !38, !noundef !4
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.018.0.copyload = load i64, ptr %i.g, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.419.0.copyload = load i8, ptr %.sroa.419.0..sroa_idx, align 16
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 17
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.524.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.520.0..sroa_idx, i64 15, i1 false)
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.621.0.copyload = load i128, ptr %.sroa.621.0..sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.018.0.copyload, ptr %i.h, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.419.0.copyload, ptr %.sroa.423.0..sroa_idx, align 8
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i128 %.sroa.621.0.copyload, ptr %.sroa.625.0..sroa_idx, align 8
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = load i8, ptr %i.i, align 16, !range !36, !noundef !4
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.m = load i128, ptr %i.l, align 16, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = icmp ugt i128 %i.m, 18446744073709551615
  br i1 %i.n, label %bb.h, label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2361
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, -9223372036854775808) 27, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !2361
  %i.o = load i64, ptr %i.b, align 8, !range !38, !noalias !2361, !noundef !4
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !65, !noalias !2361, !noundef !4 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.p, label %bb.f, label %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit, !prof !8

bb.f:                                             ; preds = %bb.e
  %i.t = load i64, ptr %i.s, align 8, !noalias !2361
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.r, i64 %i.t) #16, !noalias !2361
  unreachable

_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit: ; preds = %bb.e
  %i.u = load ptr, ptr %i.s, align 8, !noalias !2361, !nonnull !4, !noundef !4 ; 2 uses
  %i.v = icmp samesign ugt i64 %i.r, 26
  tail call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2361
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.u, ptr noundef nonnull readonly align 1 dereferenceable(27) @14, i64 range(i64 0, -9223372036854775808) 27, i1 false), !noalias !2372
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.w, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.r, ptr %.sroa.432.0..sroa_idx, align 8
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.u, ptr %.sroa.533.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 27, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.k

bb.g:                                             ; preds = %bb.d
  %i.x = trunc nuw i128 %i.m to i64
  tail call void @_RINvYNtNvXs0_NvXNvNtCs7NzLGBMhIGf_9criterion10connection1__NtBg_15IncomingMessageNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1j_7Visitor10visit_enums_9___VisitorB2u_9visit_u64INtNtNtCsdCGSpSJmIcn_8ciborium2de5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEEBi_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, i64 noundef %i.x)
  br label %bb.j

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2373
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) 17, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !2373
  %i.y = load i64, ptr %i.a, align 8, !range !38, !noalias !2373, !noundef !4
  %i.z = trunc nuw i64 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !range !65, !noalias !2373, !noundef !4 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.z, label %bb.i, label %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit31, !prof !8

bb.i:                                             ; preds = %bb.h
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !2373
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ab, i64 %i.ad) #16, !noalias !2373
  unreachable

_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit31: ; preds = %bb.h
  %i.ae = load ptr, ptr %i.ac, align 8, !noalias !2373, !nonnull !4, !noundef !4 ; 2 uses
  %i.af = icmp samesign ugt i64 %i.ab, 16
  tail call void @llvm.assume(i1 %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2373
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.ae, ptr noundef nonnull readonly align 1 dereferenceable(17) @7, i64 range(i64 0, -9223372036854775808) 17, i1 false), !noalias !2384
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ag, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ab, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ae, ptr %.sroa.537.0..sroa_idx, align 8
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 17, ptr %.sroa.638.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit31, %bb.g
  ret void

bb.k:                                             ; preds = %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit, %bb.b
  store i64 -1, ptr %0, align 8
  br label %bb.j
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_u64NtNvXs19_NtBZ_5implsyNtBZ_11Deserialize11deserialize16PrimitiveVisitorECs7NzLGBMhIGf_9criterion(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 -1, ptr %i.c, align 8
  call fastcc void @_RNvMs_NtCsdCGSpSJmIcn_8ciborium2deINtB4_12DeserializerRShE7integerCs7NzLGBMhIGf_9criterion(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.d, ptr noalias noundef align 8 dereferenceable(64) %1, ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.e = load i64, ptr %i.d, align 16, !range !38, !noundef !4
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.018.0.copyload = load i64, ptr %i.g, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.419.0.copyload = load i8, ptr %.sroa.419.0..sroa_idx, align 16
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 17
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.524.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.520.0..sroa_idx, i64 15, i1 false)
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.621.0.copyload = load i128, ptr %.sroa.621.0..sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %.sroa.018.0.copyload, ptr %0, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.419.0.copyload, ptr %.sroa.423.0..sroa_idx, align 8
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i128 %.sroa.621.0.copyload, ptr %.sroa.625.0..sroa_idx, align 8
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load i8, ptr %i.h, align 16, !range !36, !noundef !4
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.l = load i128, ptr %i.k, align 16, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = icmp ugt i128 %i.l, 18446744073709551615
  br i1 %i.m, label %bb.h, label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2385
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, -9223372036854775808) 27, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !2385
  %i.n = load i64, ptr %i.b, align 8, !range !38, !noalias !2385, !noundef !4
  %i.o = trunc nuw i64 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !65, !noalias !2385, !noundef !4 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.o, label %bb.f, label %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit, !prof !8

bb.f:                                             ; preds = %bb.e
  %i.s = load i64, ptr %i.r, align 8, !noalias !2385
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.q, i64 %i.s) #16, !noalias !2385
  unreachable

_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit: ; preds = %bb.e
  %i.t = load ptr, ptr %i.r, align 8, !noalias !2385, !nonnull !4, !noundef !4 ; 2 uses
  %i.u = icmp samesign ugt i64 %i.q, 26
  tail call void @llvm.assume(i1 %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2385
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.t, ptr noundef nonnull readonly align 1 dereferenceable(27) @14, i64 range(i64 0, -9223372036854775808) 27, i1 false), !noalias !2396
  store i64 0, ptr %0, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.q, ptr %.sroa.432.0..sroa_idx, align 8
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.t, ptr %.sroa.533.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 27, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.j

bb.g:                                             ; preds = %bb.d
  %i.v = trunc nuw i128 %i.l to i64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.v, ptr %i.w, align 8, !alias.scope !2397
  store i64 -1, ptr %0, align 8, !alias.scope !2397
  br label %bb.j

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2400
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) 17, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !2400
  %i.x = load i64, ptr %i.a, align 8, !range !38, !noalias !2400, !noundef !4
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !65, !noalias !2400, !noundef !4 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.y, label %bb.i, label %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit31, !prof !8

bb.i:                                             ; preds = %bb.h
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !2400
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.aa, i64 %i.ac) #16, !noalias !2400
  unreachable

_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit31: ; preds = %bb.h
  %i.ad = load ptr, ptr %i.ab, align 8, !noalias !2400, !nonnull !4, !noundef !4 ; 2 uses
  %i.ae = icmp samesign ugt i64 %i.aa, 16
  tail call void @llvm.assume(i1 %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2400
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.ad, ptr noundef nonnull readonly align 1 dereferenceable(17) @7, i64 range(i64 0, -9223372036854775808) 17, i1 false), !noalias !2411
  store i64 0, ptr %0, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.aa, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ad, ptr %.sroa.537.0..sroa_idx, align 8
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 17, ptr %.sroa.638.0..sroa_idx, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit, %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit31, %bb.g
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer16deserialize_boolNtNtBZ_11ignored_any10IgnoredAnyECs7NzLGBMhIGf_9criterion(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RNvMs1_NtCs4PBppUgsNbv_11ciborium_ll3decINtB5_7DecoderRShE4pullCs7NzLGBMhIGf_9criterion(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef align 8 dereferenceable(40) %i.c)
  %i.f = load i8, ptr %i.b, align 8, !range !37, !noundef !4 ; 2 uses
  %i.g = icmp eq i8 %i.f, -1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !38, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.l = ptrtoint ptr %i.k to i64
  %. = or disjoint i64 %i.i, 2
  store i64 %., ptr %0, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %.sroa.517.0..sroa_idx, align 8
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  switch i8 %i.f, label %.loopexit [
    i8 3, label %bb.f
    i8 4, label %bb.b
  ]

.loopexit:                                        ; preds = %bb.d, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2412
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) 13, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !2412
  %i.m = load i64, ptr %i.a, align 8, !range !38, !noalias !2412, !noundef !4
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !65, !noalias !2412, !noundef !4 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.n, label %bb.e, label %_RINvMNtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB3_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorE8semanticjReECs7NzLGBMhIGf_9criterion.exit, !prof !8

bb.e:                                             ; preds = %.loopexit
  %i.r = load i64, ptr %i.q, align 8, !noalias !2412
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.p, i64 %i.r) #16, !noalias !2412
  unreachable

_RINvMNtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB3_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorE8semanticjReECs7NzLGBMhIGf_9criterion.exit: ; preds = %.loopexit
  %i.s = load ptr, ptr %i.q, align 8, !noalias !2412, !nonnull !4, !noundef !4 ; 2 uses
  %i.t = icmp samesign ugt i64 %i.p, 12
  tail call void @llvm.assume(i1 %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2412
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.s, ptr noundef nonnull align 1 dereferenceable(13) @15, i64 13, i1 false), !noalias !2422
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx22, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.p, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.s, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 13, ptr %.sroa.7.0..sroa_idx, align 8
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  switch i8 %.sroa.4.0.copyload, label %.loopexit [
    i8 20, label %bb.g
    i8 21, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  store i64 -1, ptr %0, align 8, !alias.scope !2423
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  store i64 -1, ptr %0, align 8, !alias.scope !2426
  br label %bb.i

bb.i:                                             ; preds = %_RINvMNtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB3_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorE8semanticjReECs7NzLGBMhIGf_9criterion.exit, %bb.c, %bb.h, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer16deserialize_i128NtNvXs0_NvXNvCs7NzLGBMhIGf_9criterions_1__NtB2d_10ThroughputNtBZ_11Deserialize11deserializeNtB28_9___VisitorNtBZ_7Visitor10visit_enum9___VisitorEB2d_(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 -1, ptr %i.b, align 8
  call fastcc void @_RNvMs_NtCsdCGSpSJmIcn_8ciborium2deINtB4_12DeserializerRShE7integerCs7NzLGBMhIGf_9criterion(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.c, ptr noalias noundef align 8 dereferenceable(64) %1, ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.d = load i64, ptr %i.c, align 16, !range !38, !noundef !4
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.022.0.copyload = load i64, ptr %i.f, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.423.0.copyload = load i8, ptr %.sroa.423.0..sroa_idx, align 16
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.528.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.524.0..sroa_idx, i64 15, i1 false)
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.625.0.copyload = load i128, ptr %.sroa.625.0..sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %.sroa.022.0.copyload, ptr %0, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.423.0.copyload, ptr %.sroa.427.0..sroa_idx, align 8
  %.sroa.629.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i128 %.sroa.625.0.copyload, ptr %.sroa.629.0..sroa_idx, align 8
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = load i8, ptr %i.g, align 16, !range !36, !noundef !4
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.k = load i128, ptr %i.j, align 16, !noundef !4 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.l = icmp slt i128 %i.k, 0                    ; 2 uses
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.l, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.l, label %bb.g, label %bb.i

bb.f:                                             ; preds = %bb.d, %bb.i
  %.sroa.101.0 = phi i128 [ %i.u, %bb.i ], [ %i.k, %bb.d ]
  tail call void @_RINvYNtNvXs0_NvXNvCs7NzLGBMhIGf_9criterions_1__NtBg_10ThroughputNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB12_7Visitor10visit_enum9___VisitorB2d_10visit_i128INtNtNtCsdCGSpSJmIcn_8ciborium2de5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEEBg_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, i128 noundef %.sroa.101.0)
  br label %bb.j

bb.g:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2429
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) 17, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !2429
  %i.m = load i64, ptr %i.a, align 8, !range !38, !noalias !2429, !noundef !4
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !65, !noalias !2429, !noundef !4 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.n, label %bb.h, label %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit, !prof !8

bb.h:                                             ; preds = %bb.g
  %i.r = load i64, ptr %i.q, align 8, !noalias !2429
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.p, i64 %i.r) #16, !noalias !2429
  unreachable

_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit: ; preds = %bb.g
  %i.s = load ptr, ptr %i.q, align 8, !noalias !2429, !nonnull !4, !noundef !4 ; 2 uses
  %i.t = icmp samesign ugt i64 %i.p, 16
  tail call void @llvm.assume(i1 %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2429
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.s, ptr noundef nonnull readonly align 1 dereferenceable(17) @7, i64 range(i64 0, -9223372036854775808) 17, i1 false), !noalias !2440
  store i64 0, ptr %0, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.p, ptr %.sroa.433.0..sroa_idx, align 8
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.s, ptr %.sroa.534.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 17, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.u = xor i128 %i.k, -1
  br label %bb.f

bb.j:                                             ; preds = %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit, %bb.f, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer16deserialize_i128NtNvXs0_NvXNvNtCs7NzLGBMhIGf_9criterion10connection1__NtB2d_15IncomingMessageNtBZ_11Deserialize11deserializeNtB28_9___VisitorNtBZ_7Visitor10visit_enum9___VisitorEB2f_(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 -1, ptr %i.b, align 8
  call fastcc void @_RNvMs_NtCsdCGSpSJmIcn_8ciborium2deINtB4_12DeserializerRShE7integerCs7NzLGBMhIGf_9criterion(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.c, ptr noalias noundef align 8 dereferenceable(64) %1, ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.d = load i64, ptr %i.c, align 16, !range !38, !noundef !4
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.022.0.copyload = load i64, ptr %i.f, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.423.0.copyload = load i8, ptr %.sroa.423.0..sroa_idx, align 16
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.528.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.524.0..sroa_idx, i64 15, i1 false)
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.625.0.copyload = load i128, ptr %.sroa.625.0..sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.022.0.copyload, ptr %i.g, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.423.0.copyload, ptr %.sroa.427.0..sroa_idx, align 8
  %.sroa.629.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i128 %.sroa.625.0.copyload, ptr %.sroa.629.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = load i8, ptr %i.h, align 16, !range !36, !noundef !4
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.l = load i128, ptr %i.k, align 16, !noundef !4 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.m = icmp slt i128 %i.l, 0                    ; 2 uses
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.m, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.m, label %bb.g, label %bb.i

bb.f:                                             ; preds = %bb.d, %bb.i
  %.sroa.101.0 = phi i128 [ %i.w, %bb.i ], [ %i.l, %bb.d ]
  tail call void @_RINvYNtNvXs0_NvXNvNtCs7NzLGBMhIGf_9criterion10connection1__NtBg_15IncomingMessageNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1j_7Visitor10visit_enum9___VisitorB2u_10visit_i128INtNtNtCsdCGSpSJmIcn_8ciborium2de5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEEBi_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, i128 noundef %.sroa.101.0)
  br label %bb.j

bb.g:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2441
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) 17, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !2441
  %i.n = load i64, ptr %i.a, align 8, !range !38, !noalias !2441, !noundef !4
  %i.o = trunc nuw i64 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !65, !noalias !2441, !noundef !4 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.o, label %bb.h, label %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit, !prof !8

bb.h:                                             ; preds = %bb.g
  %i.s = load i64, ptr %i.r, align 8, !noalias !2441
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.q, i64 %i.s) #16, !noalias !2441
  unreachable

_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit: ; preds = %bb.g
  %i.t = load ptr, ptr %i.r, align 8, !noalias !2441, !nonnull !4, !noundef !4 ; 2 uses
  %i.u = icmp samesign ugt i64 %i.q, 16
  tail call void @llvm.assume(i1 %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2441
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.t, ptr noundef nonnull readonly align 1 dereferenceable(17) @7, i64 range(i64 0, -9223372036854775808) 17, i1 false), !noalias !2452
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.v, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.q, ptr %.sroa.433.0..sroa_idx, align 8
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.t, ptr %.sroa.534.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 17, ptr %.sroa.6.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.w = xor i128 %i.l, -1
  br label %bb.f

bb.j:                                             ; preds = %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit, %bb.f, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer16deserialize_i128NtNvXs0_NvXNvNtCs7NzLGBMhIGf_9criterion10connection1__NtB2d_15IncomingMessageNtBZ_11Deserialize11deserializeNtB28_9___VisitorNtBZ_7Visitor10visit_enums0_9___VisitorEB2f_(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 -1, ptr %i.b, align 8
  call fastcc void @_RNvMs_NtCsdCGSpSJmIcn_8ciborium2deINtB4_12DeserializerRShE7integerCs7NzLGBMhIGf_9criterion(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.c, ptr noalias noundef align 8 dereferenceable(64) %1, ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.d = load i64, ptr %i.c, align 16, !range !38, !noundef !4
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.022.0.copyload = load i64, ptr %i.f, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.423.0.copyload = load i8, ptr %.sroa.423.0..sroa_idx, align 16
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.528.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.524.0..sroa_idx, i64 15, i1 false)
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.625.0.copyload = load i128, ptr %.sroa.625.0..sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.022.0.copyload, ptr %i.g, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.423.0.copyload, ptr %.sroa.427.0..sroa_idx, align 8
  %.sroa.629.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i128 %.sroa.625.0.copyload, ptr %.sroa.629.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = load i8, ptr %i.h, align 16, !range !36, !noundef !4
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.l = load i128, ptr %i.k, align 16, !noundef !4 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.m = icmp slt i128 %i.l, 0                    ; 2 uses
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.m, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.m, label %bb.g, label %bb.i

bb.f:                                             ; preds = %bb.d, %bb.i
  %.sroa.101.0 = phi i128 [ %i.w, %bb.i ], [ %i.l, %bb.d ]
  tail call void @_RINvYNtNvXs0_NvXNvNtCs7NzLGBMhIGf_9criterion10connection1__NtBg_15IncomingMessageNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1j_7Visitor10visit_enums0_9___VisitorB2u_10visit_i128INtNtNtCsdCGSpSJmIcn_8ciborium2de5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEEBi_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, i128 noundef %.sroa.101.0)
  br label %bb.j

bb.g:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2453
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) 17, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !2453
  %i.n = load i64, ptr %i.a, align 8, !range !38, !noalias !2453, !noundef !4
  %i.o = trunc nuw i64 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !65, !noalias !2453, !noundef !4 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.o, label %bb.h, label %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit, !prof !8

bb.h:                                             ; preds = %bb.g
  %i.s = load i64, ptr %i.r, align 8, !noalias !2453
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.q, i64 %i.s) #16, !noalias !2453
  unreachable

_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit: ; preds = %bb.g
  %i.t = load ptr, ptr %i.r, align 8, !noalias !2453, !nonnull !4, !noundef !4 ; 2 uses
  %i.u = icmp samesign ugt i64 %i.q, 16
  tail call void @llvm.assume(i1 %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2453
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.t, ptr noundef nonnull readonly align 1 dereferenceable(17) @7, i64 range(i64 0, -9223372036854775808) 17, i1 false), !noalias !2464
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.v, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.q, ptr %.sroa.433.0..sroa_idx, align 8
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.t, ptr %.sroa.534.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 17, ptr %.sroa.6.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.w = xor i128 %i.l, -1
  br label %bb.f

bb.j:                                             ; preds = %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit, %bb.f, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer16deserialize_i128NtNvXs0_NvXNvNtCs7NzLGBMhIGf_9criterion10connection1__NtB2d_15IncomingMessageNtBZ_11Deserialize11deserializeNtB28_9___VisitorNtBZ_7Visitor10visit_enums1_9___VisitorEB2f_(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 -1, ptr %i.b, align 8
  call fastcc void @_RNvMs_NtCsdCGSpSJmIcn_8ciborium2deINtB4_12DeserializerRShE7integerCs7NzLGBMhIGf_9criterion(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.c, ptr noalias noundef align 8 dereferenceable(64) %1, ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.d = load i64, ptr %i.c, align 16, !range !38, !noundef !4
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.022.0.copyload = load i64, ptr %i.f, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.423.0.copyload = load i8, ptr %.sroa.423.0..sroa_idx, align 16
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.528.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.524.0..sroa_idx, i64 15, i1 false)
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.625.0.copyload = load i128, ptr %.sroa.625.0..sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.022.0.copyload, ptr %i.g, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.423.0.copyload, ptr %.sroa.427.0..sroa_idx, align 8
  %.sroa.629.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i128 %.sroa.625.0.copyload, ptr %.sroa.629.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = load i8, ptr %i.h, align 16, !range !36, !noundef !4
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.l = load i128, ptr %i.k, align 16, !noundef !4 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.m = icmp slt i128 %i.l, 0                    ; 2 uses
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.m, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.m, label %bb.g, label %bb.i

bb.f:                                             ; preds = %bb.d, %bb.i
  %.sroa.101.0 = phi i128 [ %i.w, %bb.i ], [ %i.l, %bb.d ]
  tail call void @_RINvYNtNvXs0_NvXNvNtCs7NzLGBMhIGf_9criterion10connection1__NtBg_15IncomingMessageNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1j_7Visitor10visit_enums1_9___VisitorB2u_10visit_i128INtNtNtCsdCGSpSJmIcn_8ciborium2de5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEEBi_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, i128 noundef %.sroa.101.0)
  br label %bb.j

bb.g:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2465
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) 17, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !2465
  %i.n = load i64, ptr %i.a, align 8, !range !38, !noalias !2465, !noundef !4
  %i.o = trunc nuw i64 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !65, !noalias !2465, !noundef !4 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.o, label %bb.h, label %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit, !prof !8

bb.h:                                             ; preds = %bb.g
  %i.s = load i64, ptr %i.r, align 8, !noalias !2465
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.q, i64 %i.s) #16, !noalias !2465
  unreachable

_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit: ; preds = %bb.g
  %i.t = load ptr, ptr %i.r, align 8, !noalias !2465, !nonnull !4, !noundef !4 ; 2 uses
  %i.u = icmp samesign ugt i64 %i.q, 16
  tail call void @llvm.assume(i1 %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2465
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.t, ptr noundef nonnull readonly align 1 dereferenceable(17) @7, i64 range(i64 0, -9223372036854775808) 17, i1 false), !noalias !2476
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.v, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.q, ptr %.sroa.433.0..sroa_idx, align 8
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.t, ptr %.sroa.534.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 17, ptr %.sroa.6.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.w = xor i128 %i.l, -1
  br label %bb.f

bb.j:                                             ; preds = %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit, %bb.f, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer16deserialize_i128NtNvXs0_NvXNvNtCs7NzLGBMhIGf_9criterion10connection1__NtB2d_15IncomingMessageNtBZ_11Deserialize11deserializeNtB28_9___VisitorNtBZ_7Visitor10visit_enums2_9___VisitorEB2f_(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 -1, ptr %i.b, align 8
  call fastcc void @_RNvMs_NtCsdCGSpSJmIcn_8ciborium2deINtB4_12DeserializerRShE7integerCs7NzLGBMhIGf_9criterion(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.c, ptr noalias noundef align 8 dereferenceable(64) %1, ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.d = load i64, ptr %i.c, align 16, !range !38, !noundef !4
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.022.0.copyload = load i64, ptr %i.f, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.423.0.copyload = load i8, ptr %.sroa.423.0..sroa_idx, align 16
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.528.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.524.0..sroa_idx, i64 15, i1 false)
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.625.0.copyload = load i128, ptr %.sroa.625.0..sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.022.0.copyload, ptr %i.g, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.423.0.copyload, ptr %.sroa.427.0..sroa_idx, align 8
  %.sroa.629.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i128 %.sroa.625.0.copyload, ptr %.sroa.629.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = load i8, ptr %i.h, align 16, !range !36, !noundef !4
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.l = load i128, ptr %i.k, align 16, !noundef !4 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.m = icmp slt i128 %i.l, 0                    ; 2 uses
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.m, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.m, label %bb.g, label %bb.i

bb.f:                                             ; preds = %bb.d, %bb.i
  %.sroa.101.0 = phi i128 [ %i.w, %bb.i ], [ %i.l, %bb.d ]
  tail call void @_RINvYNtNvXs0_NvXNvNtCs7NzLGBMhIGf_9criterion10connection1__NtBg_15IncomingMessageNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1j_7Visitor10visit_enums2_9___VisitorB2u_10visit_i128INtNtNtCsdCGSpSJmIcn_8ciborium2de5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEEBi_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, i128 noundef %.sroa.101.0)
  br label %bb.j

bb.g:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2477
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) 17, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !2477
  %i.n = load i64, ptr %i.a, align 8, !range !38, !noalias !2477, !noundef !4
  %i.o = trunc nuw i64 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !65, !noalias !2477, !noundef !4 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.o, label %bb.h, label %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit, !prof !8

bb.h:                                             ; preds = %bb.g
  %i.s = load i64, ptr %i.r, align 8, !noalias !2477
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.q, i64 %i.s) #16, !noalias !2477
  unreachable

_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit: ; preds = %bb.g
  %i.t = load ptr, ptr %i.r, align 8, !noalias !2477, !nonnull !4, !noundef !4 ; 2 uses
  %i.u = icmp samesign ugt i64 %i.q, 16
  tail call void @llvm.assume(i1 %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2477
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.t, ptr noundef nonnull readonly align 1 dereferenceable(17) @7, i64 range(i64 0, -9223372036854775808) 17, i1 false), !noalias !2488
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.v, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.q, ptr %.sroa.433.0..sroa_idx, align 8
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.t, ptr %.sroa.534.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 17, ptr %.sroa.6.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.w = xor i128 %i.l, -1
  br label %bb.f

bb.j:                                             ; preds = %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit, %bb.f, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer16deserialize_i128NtNvXs0_NvXNvNtCs7NzLGBMhIGf_9criterion10connection1__NtB2d_15IncomingMessageNtBZ_11Deserialize11deserializeNtB28_9___VisitorNtBZ_7Visitor10visit_enums_9___VisitorEB2f_(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 -1, ptr %i.b, align 8
  call fastcc void @_RNvMs_NtCsdCGSpSJmIcn_8ciborium2deINtB4_12DeserializerRShE7integerCs7NzLGBMhIGf_9criterion(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.c, ptr noalias noundef align 8 dereferenceable(64) %1, ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.d = load i64, ptr %i.c, align 16, !range !38, !noundef !4
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.022.0.copyload = load i64, ptr %i.f, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.423.0.copyload = load i8, ptr %.sroa.423.0..sroa_idx, align 16
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.528.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.524.0..sroa_idx, i64 15, i1 false)
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.625.0.copyload = load i128, ptr %.sroa.625.0..sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.022.0.copyload, ptr %i.g, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.423.0.copyload, ptr %.sroa.427.0..sroa_idx, align 8
  %.sroa.629.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i128 %.sroa.625.0.copyload, ptr %.sroa.629.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = load i8, ptr %i.h, align 16, !range !36, !noundef !4
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.l = load i128, ptr %i.k, align 16, !noundef !4 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.m = icmp slt i128 %i.l, 0                    ; 2 uses
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.m, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.m, label %bb.g, label %bb.i

bb.f:                                             ; preds = %bb.d, %bb.i
  %.sroa.101.0 = phi i128 [ %i.w, %bb.i ], [ %i.l, %bb.d ]
  tail call void @_RINvYNtNvXs0_NvXNvNtCs7NzLGBMhIGf_9criterion10connection1__NtBg_15IncomingMessageNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1j_7Visitor10visit_enums_9___VisitorB2u_10visit_i128INtNtNtCsdCGSpSJmIcn_8ciborium2de5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEEBi_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, i128 noundef %.sroa.101.0)
  br label %bb.j

bb.g:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2489
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) 17, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !2489
  %i.n = load i64, ptr %i.a, align 8, !range !38, !noalias !2489, !noundef !4
  %i.o = trunc nuw i64 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !65, !noalias !2489, !noundef !4 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.o, label %bb.h, label %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit, !prof !8

bb.h:                                             ; preds = %bb.g
  %i.s = load i64, ptr %i.r, align 8, !noalias !2489
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.q, i64 %i.s) #16, !noalias !2489
  unreachable

_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit: ; preds = %bb.g
  %i.t = load ptr, ptr %i.r, align 8, !noalias !2489, !nonnull !4, !noundef !4 ; 2 uses
  %i.u = icmp samesign ugt i64 %i.q, 16
  tail call void @llvm.assume(i1 %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2489
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.t, ptr noundef nonnull readonly align 1 dereferenceable(17) @7, i64 range(i64 0, -9223372036854775808) 17, i1 false), !noalias !2500
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.v, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.q, ptr %.sroa.433.0..sroa_idx, align 8
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.t, ptr %.sroa.534.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 17, ptr %.sroa.6.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.w = xor i128 %i.l, -1
  br label %bb.f

bb.j:                                             ; preds = %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit, %bb.f, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvXs0_NtCsdCGSpSJmIcn_8ciborium2deQINtB6_12DeserializerRShENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer17deserialize_bytesNtNtBZ_11ignored_any10IgnoredAnyECs7NzLGBMhIGf_9criterion(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 22 uses
  %i.c = alloca [16 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call fastcc void @_RNvMs1_NtCs4PBppUgsNbv_11ciborium_ll3decINtB5_7DecoderRShE4pullCs7NzLGBMhIGf_9criterion(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef align 8 dereferenceable(40) %i.f)
  %i.g = load i8, ptr %i.e, align 8, !range !37, !noundef !4 ; 3 uses
  %i.h = icmp eq i8 %i.g, -1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !range !38, !noundef !4
  %i.j = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.k = ptrtoint ptr %i.j to i64
  %. = or disjoint i64 %i.i, 2
  store i64 %., ptr %0, align 8
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %.sroa.520.0..sroa_idx, align 8
  br label %bb.af

bb.d:                                             ; preds = %bb.b
  %.sroa.415.sroa.0.0.copyload = load i8, ptr %.sroa.415.0..sroa_idx, align 1
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 5 uses
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  switch i8 %i.g, label %bb.e [
    i8 4, label %bb.b
    i8 6, label %bb.q
    i8 8, label %bb.r
  ]

.thread:                                          ; preds = %bb.s, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @4, ptr %i.c, align 8, !noalias !2501
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 5, ptr %i.l, align 8, !noalias !2501
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2501
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @4, ptr %i.m, align 8, !noalias !2506
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 5, ptr %i.n, align 8, !noalias !2506
  br label %_RNvXNtCsdCGSpSJmIcn_8ciborium2deNtNtCs4PBppUgsNbv_11ciborium_ll3hdr6HeaderINtB2_8ExpectedINtNtB2_5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEE8expectedCs7NzLGBMhIGf_9criterion.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @4, ptr %i.c, align 8, !noalias !2506
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 5, ptr %i.o, align 8, !noalias !2506
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2506
  switch i8 %i.g, label %default.unreachable1.i [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
    i8 7, label %bb.k
    i8 5, label %bb.j
    i8 9, label %_RNvXNtCsdCGSpSJmIcn_8ciborium2deNtNtCs4PBppUgsNbv_11ciborium_ll3hdr6HeaderINtB2_8ExpectedINtNtB2_5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEE8expectedCs7NzLGBMhIGf_9criterion.exit
  ]

default.unreachable1.i:                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0.copyload, ptr %i.p, align 8, !noalias !2506
  br label %_RNvXNtCsdCGSpSJmIcn_8ciborium2deNtNtCs4PBppUgsNbv_11ciborium_ll3hdr6HeaderINtB2_8ExpectedINtNtB2_5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEE8expectedCs7NzLGBMhIGf_9criterion.exit

bb.g:                                             ; preds = %bb.e
  %i.q = xor i64 %.sroa.5.0.copyload, -1
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.q, ptr %i.r, align 8, !noalias !2506
  br label %_RNvXNtCsdCGSpSJmIcn_8ciborium2deNtNtCs4PBppUgsNbv_11ciborium_ll3hdr6HeaderINtB2_8ExpectedINtNtB2_5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEE8expectedCs7NzLGBMhIGf_9criterion.exit

bb.h:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0.copyload, ptr %i.s, align 8, !noalias !2506
  br label %_RNvXNtCsdCGSpSJmIcn_8ciborium2deNtNtCs4PBppUgsNbv_11ciborium_ll3hdr6HeaderINtB2_8ExpectedINtNtB2_5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEE8expectedCs7NzLGBMhIGf_9criterion.exit

bb.i:                                             ; preds = %bb.e
  switch i8 %.sroa.415.sroa.0.0.copyload, label %bb.l [
    i8 20, label %bb.m
    i8 21, label %bb.n
    i8 22, label %bb.o
    i8 23, label %bb.p
  ]

bb.j:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @47, ptr %i.t, align 8, !noalias !2506
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 5, ptr %i.u, align 8, !noalias !2506
  br label %_RNvXNtCsdCGSpSJmIcn_8ciborium2deNtNtCs4PBppUgsNbv_11ciborium_ll3hdr6HeaderINtB2_8ExpectedINtNtB2_5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEE8expectedCs7NzLGBMhIGf_9criterion.exit

bb.k:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @16, ptr %i.v, align 8, !noalias !2506
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 6, ptr %i.w, align 8, !noalias !2506
  br label %_RNvXNtCsdCGSpSJmIcn_8ciborium2deNtNtCs4PBppUgsNbv_11ciborium_ll3hdr6HeaderINtB2_8ExpectedINtNtB2_5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEE8expectedCs7NzLGBMhIGf_9criterion.exit

bb.l:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @45, ptr %i.x, align 8, !noalias !2506
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 6, ptr %i.y, align 8, !noalias !2506
  br label %_RNvXNtCsdCGSpSJmIcn_8ciborium2deNtNtCs4PBppUgsNbv_11ciborium_ll3hdr6HeaderINtB2_8ExpectedINtNtB2_5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEE8expectedCs7NzLGBMhIGf_9criterion.exit

bb.m:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 0, ptr %i.z, align 1, !noalias !2506
  br label %_RNvXNtCsdCGSpSJmIcn_8ciborium2deNtNtCs4PBppUgsNbv_11ciborium_ll3hdr6HeaderINtB2_8ExpectedINtNtB2_5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEE8expectedCs7NzLGBMhIGf_9criterion.exit

bb.n:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 1, ptr %i.aa, align 1, !noalias !2506
  br label %_RNvXNtCsdCGSpSJmIcn_8ciborium2deNtNtCs4PBppUgsNbv_11ciborium_ll3hdr6HeaderINtB2_8ExpectedINtNtB2_5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEE8expectedCs7NzLGBMhIGf_9criterion.exit

bb.o:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @43, ptr %i.ab, align 8, !noalias !2506
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 4, ptr %i.ac, align 8, !noalias !2506
  br label %_RNvXNtCsdCGSpSJmIcn_8ciborium2deNtNtCs4PBppUgsNbv_11ciborium_ll3hdr6HeaderINtB2_8ExpectedINtNtB2_5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEE8expectedCs7NzLGBMhIGf_9criterion.exit

bb.p:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @44, ptr %i.ad, align 8, !noalias !2506
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 9, ptr %i.ae, align 8, !noalias !2506
  br label %_RNvXNtCsdCGSpSJmIcn_8ciborium2deNtNtCs4PBppUgsNbv_11ciborium_ll3hdr6HeaderINtB2_8ExpectedINtNtB2_5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEE8expectedCs7NzLGBMhIGf_9criterion.exit

_RNvXNtCsdCGSpSJmIcn_8ciborium2deNtNtCs4PBppUgsNbv_11ciborium_ll3hdr6HeaderINtB2_8ExpectedINtNtB2_5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEE8expectedCs7NzLGBMhIGf_9criterion.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.j, %.thread, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p
  %.sink.i = phi i8 [ 17, %bb.p ], [ 17, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ 17, %bb.l ], [ 3, %bb.h ], [ 1, %bb.f ], [ 17, %bb.k ], [ 17, %.thread ], [ 17, %bb.j ], [ 2, %bb.g ], [ 11, %bb.e ]
  store i8 %.sink.i, ptr %i.b, align 8, !noalias !2506
  call void @_RNvYINtNtNtCsdCGSpSJmIcn_8ciborium2de5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error12invalid_typeCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2506
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.af

bb.q:                                             ; preds = %bb.d
  %i.af = ptrtoint ptr %.sroa.6.0.copyload to i64 ; 7 uses
  %i.ag = trunc nuw i64 %.sroa.5.0.copyload to i1
  br i1 %i.ag, label %bb.s, label %.thread

bb.r:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !4 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.q
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !noundef !4
  %.not = icmp ult i64 %i.al, %i.af
  br i1 %.not, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.am = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2510)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2513)
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ao = load i8, ptr %i.an, align 8, !range !44, !alias.scope !2510, !noalias !2513, !noundef !4
  %.not.i = icmp eq i8 %i.ao, -1
  br i1 %.not.i, label %bb.v, label %bb.u, !prof !45

bb.u:                                             ; preds = %bb.t
end_hunk_3
begin_hunk_4_@_RNvMs_NtCsdCGSpSJmIcn_8ciborium2deINtB4_12DeserializerRShE7integerCs7NzLGBMhIGf_9criterion:.peel.begin
  %.sroa.014.1.lcssa = phi i64 [ %.sroa.014.0236, %bb.an ], [ %.sroa.014.2.be.us, %.loopexit.us ] ; 2 uses
  br i1 %i.cx, label %.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %switch.lookup, %.loopexit151
  %.sroa.014.0236 = phi i64 [ 0, %switch.lookup ], [ %.sroa.014.1.lcssa, %.loopexit151 ] ; 3 uses
  %.sroa.7.0235 = phi i64 [ 0, %switch.lookup ], [ %.sroa.7.1, %.loopexit151 ]
  %i.cf = load i64, ptr %i.bg, align 8, !noalias !3506, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3506
  call fastcc void @_RNvMs1_NtCs4PBppUgsNbv_11ciborium_ll3decINtB5_7DecoderRShE4pullCs7NzLGBMhIGf_9criterion(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef align 8 dereferenceable(40) %i.m), !noalias !3506
  %i.cg = load i8, ptr %i.b, align 8, !range !37, !noalias !3506, !noundef !4 ; 2 uses
  %i.ch = icmp eq i8 %i.cg, -1
  br i1 %i.ch, label %.split.i, label %.lr.ph48.i

.split.i:                                         ; preds = %.lr.ph.i, %bb.am
  %i.ci = load i64, ptr %.sroa.523.0..sroa_idx.i, align 8, !range !38, !noalias !3506, !noundef !4
  %i.cj = load ptr, ptr %.sroa.624.0..sroa_idx.i, align 8, !noalias !3506, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3506
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = or disjoint i64 %i.ci, 2
  br label %.split46.i

.lr.ph48.i:                                       ; preds = %.lr.ph.i, %bb.am
  %.sroa.7.1 = phi i64 [ %i.cq, %bb.am ], [ %.sroa.7.0235, %.lr.ph.i ] ; 4 uses
  %i.cm = phi i8 [ %i.cs, %bb.am ], [ %i.cg, %.lr.ph.i ] ; 2 uses
  %i.cn = phi i64 [ %i.cr, %bb.am ], [ %i.cf, %.lr.ph.i ] ; 2 uses
  %.sroa.523.0.copyload.i = load i64, ptr %.sroa.523.0..sroa_idx.i, align 8, !noalias !3506
  %.sroa.624.0.copyload.i = load ptr, ptr %.sroa.624.0..sroa_idx.i, align 8, !noalias !3506
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3506
  %i.co = icmp eq i8 %i.cm, 5
  br i1 %i.co, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.lr.ph48.i
  switch i64 %.sroa.7.1, label %bb.am [
    i64 1, label %.thread
    i64 0, label %.split46.i
  ]

bb.al:                                            ; preds = %.lr.ph48.i
  %i.cp = icmp eq i8 %i.cm, 6                     ; 2 uses
  %.sroa.0.0.i.i = select i1 %i.cp, i64 %.sroa.523.0.copyload.i, i64 2
  switch i64 %.sroa.0.0.i.i, label %bb.an [
    i64 2, label %.split46.i
    i64 0, label %bb.am
  ]

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.sink.i96 = phi i64 [ 1, %bb.al ], [ -1, %bb.ak ]
  %i.cq = add i64 %.sink.i96, %.sroa.7.1
  %i.cr = load i64, ptr %i.bg, align 8, !noalias !3506, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3506
  call fastcc void @_RNvMs1_NtCs4PBppUgsNbv_11ciborium_ll3decINtB5_7DecoderRShE4pullCs7NzLGBMhIGf_9criterion(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef align 8 dereferenceable(40) %i.m), !noalias !3506
  %i.cs = load i8, ptr %i.b, align 8, !range !37, !noalias !3506, !noundef !4 ; 2 uses
  %i.ct = icmp eq i8 %i.cs, -1
  br i1 %i.ct, label %.split.i, label %.lr.ph48.i

.split46.i:                                       ; preds = %bb.ak, %bb.al, %.split.i
  %.sroa.8.2 = phi i64 [ %i.cl, %.split.i ], [ 3, %bb.al ], [ 3, %bb.ak ]
  %.sroa.13110.3 = phi i64 [ %i.ck, %.split.i ], [ %i.cn, %bb.al ], [ %i.cn, %bb.ak ]
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.8.2, ptr %i.cu, align 8
  %.sroa.579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.13110.3, ptr %.sroa.579.0..sroa_idx, align 16
  br label %bb.aw

.thread:                                          ; preds = %.loopexit151, %bb.ak
  %.sroa.014.0186 = phi i64 [ %.sroa.014.0236, %bb.ak ], [ %.sroa.014.1.lcssa, %.loopexit151 ] ; 4 uses
  %i.cv = icmp ult i64 %.sroa.014.0186, 17
  br i1 %i.cv, label %bb.av, label %bb.au, !prof !3510

bb.an:                                            ; preds = %bb.al
  %i.cw = ptrtoint ptr %.sroa.624.0.copyload.i to i64
  %.sroa.3.0.i.i.le = select i1 %i.cp, i64 %i.cw, i64 undef ; 2 uses
  %i.cx = icmp eq i64 %.sroa.7.1, 0
  %i.cy = icmp eq i64 %.sroa.3.0.i.i.le, 0
  br i1 %i.cy, label %.loopexit151, label %.lr.ph219

.lr.ph219:                                        ; preds = %bb.an
  %i.cz = load i8, ptr %i.bc, align 8, !range !44, !alias.scope !3511, !noalias !3514, !noundef !4
  %.not.i.i = icmp eq i8 %i.cz, -1
  br i1 %.not.i.i, label %.lr.ph219.split.us, label %.lr.ph219.split, !prof !45

.lr.ph219.split.us:                               ; preds = %.lr.ph219
  %.promoted233 = load i64, ptr %i.bj, align 8, !alias.scope !3520, !noalias !3525
  %.promoted234 = load ptr, ptr %i.m, align 8, !alias.scope !3520, !noalias !3525
  %.promoted377 = load i64, ptr %i.bg, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit.us, %.lr.ph219.split.us
  %i.da = phi i64 [ %.promoted377, %.lr.ph219.split.us ], [ %i.di, %.loopexit.us ]
  %i.db = phi ptr [ %.promoted234, %.lr.ph219.split.us ], [ %i.de, %.loopexit.us ] ; 4 uses
  %i.dc = phi i64 [ %.promoted233, %.lr.ph219.split.us ], [ %i.df, %.loopexit.us ] ; 3 uses
  %.sroa.014.1218.us = phi i64 [ %.sroa.014.0236, %.lr.ph219.split.us ], [ %.sroa.014.2.be.us, %.loopexit.us ]
  %.sroa.5112.0217.us = phi i64 [ %.sroa.3.0.i.i.le, %.lr.ph219.split.us ], [ %i.dj, %.loopexit.us ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3528)
  %.sroa.0.0.i.i.us = call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 %.sroa.5112.0217.us, i64 range(i64 0, -9223372036854775808) 16) ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3511)
  call void @llvm.experimental.noalias.scope.decl(metadata !3529)
  call void @llvm.experimental.noalias.scope.decl(metadata !3530)
  call void @llvm.experimental.noalias.scope.decl(metadata !3531)
  call void @llvm.experimental.noalias.scope.decl(metadata !3532)
  call void @llvm.experimental.noalias.scope.decl(metadata !3533)
  %i.dd = icmp ugt i64 %.sroa.0.0.i.i.us, %i.dc
  br i1 %i.dd, label %.split.us, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs7NzLGBMhIGf_9criterion.exit.i.i.i.i.us

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs7NzLGBMhIGf_9criterion.exit.i.i.i.i.us: ; preds = %bb.ao
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 %.sroa.0.0.i.i.us ; 2 uses
  %i.df = sub nuw nsw i64 %i.dc, %.sroa.0.0.i.i.us ; 2 uses
  %i.dg = icmp eq i64 %.sroa.5112.0217.us, 1
  br i1 %i.dg, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs7NzLGBMhIGf_9criterion.exit.i.i.i.i.us
  call void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implhECs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull %i.k, i64 noundef range(i64 0, -9223372036854775808) %.sroa.0.0.i.i.us, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.db, i64 noundef range(i64 0, -9223372036854775808) %.sroa.0.0.i.i.us, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50), !noalias !3534
  br label %.lr.ph.us.preheader

bb.aq:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs7NzLGBMhIGf_9criterion.exit.i.i.i.i.us
  %i.dh = load i8, ptr %i.db, align 1, !noalias !3535, !noundef !4
  store i8 %i.dh, ptr %i.k, align 1, !alias.scope !3536, !noalias !3534
  br label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %bb.ap, %bb.aq
  store ptr %i.de, ptr %i.m, align 8, !alias.scope !3520, !noalias !3525
  store i64 %i.df, ptr %i.bj, align 8, !alias.scope !3520, !noalias !3525
  %i.di = add i64 %i.da, %.sroa.0.0.i.i.us        ; 2 uses
  store i64 %i.di, ptr %i.bg, align 8, !alias.scope !3511, !noalias !3537
  %i.dj = sub i64 %.sroa.5112.0217.us, %.sroa.0.0.i.i.us ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.0.0.i.i.us
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %.backedge.us
  %.sroa.014.2216.us = phi i64 [ %.sroa.014.2.be.us, %.backedge.us ], [ %.sroa.014.1218.us, %.lr.ph.us.preheader ] ; 5 uses
  %.sroa.046.0215.us = phi ptr [ %i.dl, %.backedge.us ], [ %i.k, %.lr.ph.us.preheader ] ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.046.0215.us, i64 1 ; 2 uses
  switch i64 %.sroa.014.2216.us, label %bb.as [
    i64 16, label %.split224.us
    i64 0, label %bb.ar
  ]

bb.ar:                                            ; preds = %.lr.ph.us
  %i.dm = load i8, ptr %.sroa.046.0215.us, align 1, !noundef !4 ; 2 uses
  %i.dn = icmp eq i8 %i.dm, 0
  br i1 %i.dn, label %.backedge.us, label %.thread150.us

bb.as:                                            ; preds = %.lr.ph.us
  %i.do = icmp ult i64 %.sroa.014.2216.us, 16
  br i1 %i.do, label %..thread150.us_crit_edge, label %.split226.us

..thread150.us_crit_edge:                         ; preds = %bb.as
  %.pre = load i8, ptr %.sroa.046.0215.us, align 1
  br label %.thread150.us

.thread150.us:                                    ; preds = %..thread150.us_crit_edge, %bb.ar
  %i.dp = phi i8 [ %.pre, %..thread150.us_crit_edge ], [ %i.dm, %bb.ar ]
  %i.dq = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.014.2216.us
  store i8 %i.dp, ptr %i.dq, align 1
  %i.dr = add nuw nsw i64 %.sroa.014.2216.us, 1
  br label %.backedge.us

.loopexit.us:                                     ; preds = %.backedge.us
  %i.ds = icmp eq i64 %i.dj, 0
  br i1 %i.ds, label %.loopexit151, label %bb.ao

.backedge.us:                                     ; preds = %.thread150.us, %bb.ar
  %.sroa.014.2.be.us = phi i64 [ %i.dr, %.thread150.us ], [ 0, %bb.ar ] ; 3 uses
  %i.dt = icmp eq ptr %i.dl, %i.dk
  br i1 %i.dt, label %.loopexit.us, label %.lr.ph.us

.lr.ph219.split:                                  ; preds = %.lr.ph219
  call void @llvm.experimental.noalias.scope.decl(metadata !3528)
  call void @llvm.experimental.noalias.scope.decl(metadata !3511)
  call void @llvm.experimental.noalias.scope.decl(metadata !3529)
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #16, !noalias !3538
  unreachable

.split.us:                                        ; preds = %bb.ao
  %i.du = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dc
  store ptr %i.du, ptr %i.m, align 8, !alias.scope !3520, !noalias !3539
  store i64 0, ptr %i.bj, align 8, !alias.scope !3520, !noalias !3539
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.dv, align 8
  %.sroa.585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 ptrtoint (ptr @52 to i64), ptr %.sroa.585.0..sroa_idx, align 16
  br label %bb.aw

.split224.us:                                     ; preds = %.lr.ph.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3540
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) 16, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !3540
  %i.dw = load i64, ptr %i.a, align 8, !range !38, !noalias !3540, !noundef !4
  %i.dx = trunc nuw i64 %i.dw to i1
  %i.dy = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dz = load i64, ptr %i.dy, align 8, !range !65, !noalias !3540, !noundef !4 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.dx, label %bb.at, label %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit, !prof !8

bb.at:                                            ; preds = %.split224.us
  %i.eb = load i64, ptr %i.ea, align 8, !noalias !3540
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.dz, i64 %i.eb) #16, !noalias !3540
  unreachable

_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit: ; preds = %.split224.us
  %i.ec = load ptr, ptr %i.ea, align 8, !noalias !3540, !nonnull !4, !noundef !4 ; 2 uses
  %i.ed = icmp samesign ugt i64 %i.dz, 15
  call void @llvm.assume(i1 %i.ed)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3540
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ec, ptr noundef nonnull readonly align 1 dereferenceable(16) @39, i64 range(i64 0, -9223372036854775808) 16, i1 false), !noalias !3551
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ee, align 8
  %.sroa.4117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.dz, ptr %.sroa.4117.0..sroa_idx, align 8
  %.sroa.5118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ec, ptr %.sroa.5118.0..sroa_idx, align 16
  %.sroa.6.0..sroa_idx119 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 16, ptr %.sroa.6.0..sroa_idx119, align 8
  br label %bb.aw

.split226.us:                                     ; preds = %bb.as
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.sroa.014.2216.us, i64 noundef 16, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #16
  unreachable

bb.au:                                            ; preds = %.thread
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.014.0186, i64 noundef 16, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #16
  unreachable

bb.av:                                            ; preds = %.thread
  %i.ef = lshr i64 %.sroa.014.0186, 1             ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.014.0186
  %i.eh = sub nsw i64 0, %i.ef
  %i.ei = getelementptr inbounds i8, ptr %i.eg, i64 %i.eh
  call fastcc void @_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswaphECs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull %i.j, i64 noundef %i.ef, ptr noalias noundef nonnull %i.ei, i64 noundef %i.ef, i64 noundef %i.ef)
  %.sroa.049.0.copyload = load i128, ptr %i.j, align 16
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.013.0, ptr %i.ej, align 16
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i128 %.sroa.049.0.copyload, ptr %i.ek, align 16
  br label %bb.aw

bb.aw:                                            ; preds = %.split46.i, %.split.us, %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit, %bb.s, %bb.av, %_RNvXNtCsdCGSpSJmIcn_8ciborium2deNtNtCs4PBppUgsNbv_11ciborium_ll3hdr6HeaderINtB2_8ExpectedINtNtB2_5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEE8expectedCs7NzLGBMhIGf_9criterion.exit95
  %.sink = phi i64 [ 1, %.split46.i ], [ 1, %.split.us ], [ 1, %_RINvXs3_NtNtCsdCGSpSJmIcn_8ciborium2de5errorINtB6_5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECs7NzLGBMhIGf_9criterion.exit ], [ 1, %bb.s ], [ 0, %bb.av ], [ 1, %_RNvXNtCsdCGSpSJmIcn_8ciborium2deNtNtCs4PBppUgsNbv_11ciborium_ll3hdr6HeaderINtB2_8ExpectedINtNtB2_5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEE8expectedCs7NzLGBMhIGf_9criterion.exit95 ]
  store i64 %.sink, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXNtCsdCGSpSJmIcn_8ciborium2deNtNtCs4PBppUgsNbv_11ciborium_ll3hdr6HeaderINtB2_8ExpectedINtNtB2_5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEE8expectedCs7NzLGBMhIGf_9criterion(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 3, 19) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 23 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %3, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = load i8, ptr %1, align 8, !range !3552, !noundef !4
  switch i8 %i.d, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.k
    i8 9, label %bb.j
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.f, ptr %i.g, align 8
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noundef !4
  %i.j = xor i64 %i.i, -1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.j, ptr %i.k, align 8
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load double, ptr %i.l, align 8, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store double %i.m, ptr %i.n, align 8
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.p = load i8, ptr %i.o, align 1, !noundef !4
  switch i8 %i.p, label %bb.l [
    i8 20, label %bb.m
    i8 21, label %bb.n
    i8 22, label %bb.o
    i8 23, label %bb.p
  ]

bb.f:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @46, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 3, ptr %i.r, align 8
  br label %bb.k

bb.g:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @47, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 5, ptr %i.t, align 8
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @4, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 5, ptr %i.v, align 8
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @16, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 6, ptr %i.x, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.d, %bb.c, %bb.b
  %.sink = phi i8 [ 17, %bb.p ], [ 17, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ 17, %bb.l ], [ 11, %bb.j ], [ 1, %bb.b ], [ 17, %bb.i ], [ 17, %bb.h ], [ 17, %bb.g ], [ 17, %bb.f ], [ 3, %bb.d ], [ 2, %bb.c ], [ 10, %bb.a ]
  store i8 %.sink, ptr %i.a, align 8
  call void @_RNvYINtNtNtCsdCGSpSJmIcn_8ciborium2de5error5ErrorNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de5Error12invalid_typeCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.l:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @45, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 6, ptr %i.z, align 8
  br label %bb.k

bb.m:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 0, ptr %i.aa, align 1
  br label %bb.k

bb.n:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 1, ptr %i.ab, align 1
  br label %bb.k

bb.o:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @43, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 4, ptr %i.ad, align 8
  br label %bb.k

bb.p:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @44, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 9, ptr %i.af, align 8
  br label %bb.k
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

end_hunk_4
