Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.03?download=true
inline.NumInlined: 10149
inline.NumDeleted: 2791
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_13TableVerifier11visit_fieldINtNtB8_10primitives15ForwardsUOffsetINtNtB8_6vector6VectorIB1g_NtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema5FieldEEEReECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.ax = alloca [72 x i8], align 8               ; 6 uses
  %i.ay = alloca [40 x i8], align 8               ; 8 uses
  %i.az = alloca [72 x i8], align 8               ; 22 uses
  %i.ba = alloca [72 x i8], align 8               ; 6 uses
  %i.bb = alloca [72 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @_RNvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB5_13TableVerifier5deref(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.bb, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i16 noundef %4)
  %i.bc = load i64, ptr %i.bb, align 8, !range !57, !noundef !53 ; 2 uses
  %.not = icmp eq i64 %i.bc, -9223372036854775798
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.be = load i64, ptr %i.bd, align 8            ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bg = load i64, ptr %i.bf, align 8            ; 13 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.718.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.422.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.718.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  store i64 %i.bc, ptr %0, align 8
  %.sroa.220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.be, ptr %.sroa.220.0..sroa_idx, align 8
  %.sroa.321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bg, ptr %.sroa.321.0..sroa_idx, align 8
  br label %bb.ew

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  %i.bh = trunc nuw i64 %i.be to i1
  br i1 %i.bh, label %bb.d, label %bb.et

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  %i.bi = load ptr, ptr %1, align 8, !nonnull !53, !align !58, !noundef !53 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352), !noalias !350
  %i.bj = and i64 %i.bg, 3
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.bl = tail call i64 @llvm.uadd.sat.i64(i64 %i.bg, i64 4) ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !353, !noalias !354, !noundef !53 ; 19 uses
  %i.bo = icmp ugt i64 %i.bl, %i.bn
  br i1 %i.bo, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 40 ; 6 uses
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !353, !noalias !354, !noundef !53 ; 2 uses
  %i.br = add i64 %i.bq, 4                        ; 2 uses
  store i64 %i.br, ptr %i.bp, align 8, !alias.scope !353, !noalias !354
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !alias.scope !353, !noalias !354, !nonnull !53, !align !58, !noundef !53
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !noalias !355, !noundef !53 ; 3 uses
  %i.bw = icmp ugt i64 %i.br, %i.bv
  br i1 %i.bw, label %bb.n, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.f
  %i.bx = icmp ult i64 %i.bg, %i.bn
  br i1 %i.bx, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.by = load ptr, ptr %i.bi, align 8, !alias.scope !351, !noalias !356, !nonnull !53, !noundef !53 ; 8 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bg
  %i.ca = load i8, ptr %i.bz, align 1, !noalias !357, !noundef !53
  %i.cb = or disjoint i64 %i.bg, 1                ; 3 uses
  %i.cc = icmp ult i64 %i.cb, %i.bn
  br i1 %i.cc, label %bb.i, label %bb.j

bb.h:                                             ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.bg, i64 noundef %i.bn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @95) #51, !noalias !357
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cb
  %i.ce = load i8, ptr %i.cd, align 1, !noalias !357, !noundef !53
  %i.cf = or disjoint i64 %i.bg, 2                ; 3 uses
  %i.cg = icmp ult i64 %i.cf, %i.bn
  br i1 %i.cg, label %bb.k, label %bb.l

bb.j:                                             ; preds = %bb.g
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.cb, i64 noundef %i.bn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #51, !noalias !357
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ch = or disjoint i64 %i.bg, 3                ; 3 uses
  %i.ci = icmp ult i64 %i.ch, %i.bn
  br i1 %i.ci, label %bb.o, label %bb.m

bb.l:                                             ; preds = %bb.i
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.cf, i64 noundef %i.bn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #51, !noalias !357
  unreachable

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.ch, i64 noundef %i.bn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #51, !noalias !357
  unreachable

bb.n:                                             ; preds = %bb.e, %bb.d, %bb.f
  %.sroa.14.0.ph = phi i64 [ undef, %bb.f ], [ ptrtoint (ptr @12 to i64), %bb.d ], [ %i.bl, %bb.e ]
  %.sroa.13.0.ph = phi i64 [ undef, %bb.f ], [ -9223372036854775808, %bb.d ], [ %i.bg, %bb.e ]
  %.sroa.066.0.ph = phi i64 [ -9223372036854775800, %bb.f ], [ -9223372036854775804, %bb.d ], [ -9223372036854775803, %bb.e ]
  store i64 %.sroa.066.0.ph, ptr %i.az, align 8, !alias.scope !350, !noalias !358
  %.sroa.211.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i32 0, ptr %.sroa.211.0..sroa_idx.i, align 8, !alias.scope !350, !noalias !358
  %.sroa.312.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i32 0, ptr %.sroa.312.0..sroa_idx.i, align 4, !noalias !358
  %.sroa.312.i.sroa.4.0..sroa.312.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.312.i.sroa.4.0..sroa.312.0..sroa_idx.i.sroa_idx, align 8, !noalias !358
  %.sroa.312.i.sroa.5.0..sroa.312.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  store i64 0, ptr %.sroa.312.i.sroa.5.0..sroa.312.0..sroa_idx.i.sroa_idx, align 8, !noalias !358
  %.sroa.312.i.sroa.6.0..sroa.312.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  store i64 %.sroa.13.0.ph, ptr %.sroa.312.i.sroa.6.0..sroa.312.0..sroa_idx.i.sroa_idx, align 8, !noalias !358
  %.sroa.312.i.sroa.7.0..sroa.312.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  store i64 %.sroa.14.0.ph, ptr %.sroa.312.i.sroa.7.0..sroa.312.0..sroa_idx.i.sroa_idx, align 8, !noalias !358
  %.sroa.312.i.sroa.8.0..sroa.312.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  store i64 3, ptr %.sroa.312.i.sroa.8.0..sroa.312.0..sroa_idx.i.sroa_idx, align 8, !noalias !358
  %.sroa.312.i.sroa.9.0..sroa.312.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 56
  store i64 %i.bg, ptr %.sroa.312.i.sroa.9.0..sroa.312.0..sroa_idx.i.sroa_idx, align 8, !noalias !358
  br label %_RNvXsk_NtCs2TwJzntlzha_11flatbuffers8verifierINtNtB7_6vector6VectorINtNtB7_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema5FieldEENtB5_10Verifiable12run_verifierCs14kWLkQVSKO_14deltalake_core.exit

bb.o:                                             ; preds = %bb.k
  %i.cj = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cf
  %i.ck = load i8, ptr %i.cj, align 1, !noalias !357, !noundef !53
  %i.cl = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.ch
  %i.cm = load i8, ptr %i.cl, align 1, !noalias !357, !noundef !53
  %.sroa.6.0.insert.ext.i = zext i8 %i.cm to i64
  %.sroa.6.0.insert.shift.i = shl nuw nsw i64 %.sroa.6.0.insert.ext.i, 24
  %.sroa.5.0.insert.ext.i = zext i8 %i.ck to i64
  %.sroa.5.0.insert.shift.i = shl nuw nsw i64 %.sroa.5.0.insert.ext.i, 16
  %.sroa.4.0.insert.ext.i = zext i8 %i.ce to i64
  %.sroa.4.0.insert.shift.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i, 8
  %.sroa.0.0.insert.ext.i = zext i8 %i.ca to i64
  %.sroa.5.0.insert.insert.i = or disjoint i64 %.sroa.4.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %.sroa.4.0.insert.insert.i = or disjoint i64 %.sroa.5.0.insert.insert.i, %.sroa.5.0.insert.shift.i
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.4.0.insert.insert.i, %.sroa.6.0.insert.shift.i
  %i.cn = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.0.insert.insert.i, i64 %i.bg) ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !359)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !360)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  %i.co = and i64 %i.cn, 3
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %bb.p, label %bb.aa

bb.p:                                             ; preds = %bb.o
  %i.cq = tail call i64 @llvm.uadd.sat.i64(i64 %i.cn, i64 4) ; 2 uses
  %i.cr = icmp ugt i64 %i.cq, %i.bn
  br i1 %i.cr, label %bb.aa, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cs = add i64 %i.bq, 8                        ; 3 uses
  store i64 %i.cs, ptr %i.bp, align 8, !alias.scope !363, !noalias !364
  %i.ct = icmp ugt i64 %i.cs, %i.bv
  br i1 %i.ct, label %bb.aa, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.q
  %i.cu = icmp ult i64 %i.cn, %i.bn
  br i1 %i.cu, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cn
  %i.cw = load i8, ptr %i.cv, align 1, !noalias !365, !noundef !53
  %i.cx = or disjoint i64 %i.cn, 1                ; 3 uses
  %i.cy = icmp ult i64 %i.cx, %i.bn
  br i1 %i.cy, label %bb.t, label %bb.u

bb.s:                                             ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.cn, i64 noundef %i.bn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @95) #51, !noalias !365, !inline_history !267
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.cz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cx
  %i.da = load i8, ptr %i.cz, align 1, !noalias !365, !noundef !53
  %i.db = or disjoint i64 %i.cn, 2                ; 3 uses
  %i.dc = icmp ult i64 %i.db, %i.bn
  br i1 %i.dc, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.r
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.cx, i64 noundef %i.bn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #51, !noalias !365, !inline_history !267
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.dd = or disjoint i64 %i.cn, 3                ; 3 uses
  %i.de = icmp ult i64 %i.dd, %i.bn
  br i1 %i.de, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.db, i64 noundef %i.bn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #51, !noalias !365, !inline_history !267
  unreachable

bb.x:                                             ; preds = %bb.v
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.dd, i64 noundef %i.bn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #51, !noalias !365, !inline_history !267
  unreachable

bb.y:                                             ; preds = %bb.v
  %i.df = add nuw i64 %i.cn, 4                    ; 5 uses
  %.sroa.4.0.insert.ext.i.i.i = zext i8 %i.da to i64
  %.sroa.0.0.insert.ext.i.i.i = zext i8 %i.cw to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.db
  %i.dh = load i8, ptr %i.dg, align 1, !noalias !365, !noundef !53
  %.sroa.5.0.insert.ext.i.i.i = zext i8 %i.dh to i64
  %i.di = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.dd
  %i.dj = load i8, ptr %i.di, align 1, !noalias !365, !noundef !53
  %.sroa.6.0.insert.ext.i.i.i = zext i8 %i.dj to i64
  %i.dk = shl nuw nsw i64 %.sroa.6.0.insert.ext.i.i.i, 26
  %i.dl = shl nuw nsw i64 %.sroa.5.0.insert.ext.i.i.i, 18
  %i.dm = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i.i, 10
  %i.dn = shl nuw nsw i64 %.sroa.0.0.insert.ext.i.i.i, 2
  %i.do = or disjoint i64 %i.dm, %i.dn
  %i.dp = or disjoint i64 %i.do, %i.dl
  %i.dq = or disjoint i64 %i.dp, %i.dk            ; 2 uses
  %i.dr = tail call i64 @llvm.uadd.sat.i64(i64 %i.df, i64 %i.dq) ; 5 uses
  %i.ds = icmp ugt i64 %i.dr, %i.bn
  br i1 %i.ds, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dt = add i64 %i.dq, %i.cs                    ; 2 uses
  store i64 %i.dt, ptr %i.bp, align 8, !alias.scope !366, !noalias !367
  %i.du = icmp ugt i64 %i.dt, %i.bv
  br i1 %i.du, label %bb.aa, label %_RINvNtCs2TwJzntlzha_11flatbuffers8verifier19verify_vector_rangeINtNtB4_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.aa:                                            ; preds = %bb.z, %bb.p, %bb.q, %bb.o, %bb.y
  %.sroa.23.0.ph = phi i64 [ %i.cq, %bb.p ], [ %i.dr, %bb.y ], [ ptrtoint (ptr @12 to i64), %bb.o ], [ undef, %bb.q ], [ %i.dr, %bb.z ]
  %.sroa.21.0.ph = phi i64 [ %i.cn, %bb.p ], [ %i.df, %bb.y ], [ -9223372036854775808, %bb.o ], [ undef, %bb.q ], [ %i.df, %bb.z ]
  %.sroa.069.0.ph = phi i64 [ -9223372036854775803, %bb.p ], [ -9223372036854775803, %bb.y ], [ -9223372036854775804, %bb.o ], [ -9223372036854775800, %bb.q ], [ -9223372036854775800, %bb.z ]
  store i64 %.sroa.069.0.ph, ptr %i.az, align 8, !alias.scope !359, !noalias !360
  %.sroa.217.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 0, ptr %.sroa.217.0..sroa_idx.i, align 8, !alias.scope !359, !noalias !360
  %.sroa.318.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i64 8, ptr %.sroa.318.0..sroa_idx.i, align 8, !alias.scope !359, !noalias !360
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  store i64 0, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !360
  %.sroa.419.i.sroa.4.0..sroa.419.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  store i64 %.sroa.21.0.ph, ptr %.sroa.419.i.sroa.4.0..sroa.419.0..sroa_idx.i.sroa_idx, align 8, !noalias !360
  %.sroa.419.i.sroa.5.0..sroa.419.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  store i64 %.sroa.23.0.ph, ptr %.sroa.419.i.sroa.5.0..sroa.419.0..sroa_idx.i.sroa_idx, align 8, !noalias !360
  %.sroa.419.i.sroa.6.0..sroa.419.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  store i64 3, ptr %.sroa.419.i.sroa.6.0..sroa.419.0..sroa_idx.i.sroa_idx, align 8, !noalias !360
  %.sroa.419.i.sroa.7.0..sroa.419.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 56
  store i64 %i.cn, ptr %.sroa.419.i.sroa.7.0..sroa.419.0..sroa_idx.i.sroa_idx, align 8, !noalias !360
  br label %_RNvXsk_NtCs2TwJzntlzha_11flatbuffers8verifierINtNtB7_6vector6VectorINtNtB7_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema5FieldEENtB5_10Verifiable12run_verifierCs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCs2TwJzntlzha_11flatbuffers8verifier19verify_vector_rangeINtNtB4_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.z
  %.sroa.06.0.i.i.i267 = sub nuw i64 %i.dr, %i.df
  %5 = lshr i64 %.sroa.06.0.i.i.i267, 2
  %6 = and i64 %i.dr, 3
  %.not.i.i.i = icmp ne i64 %6, 0
  %7 = zext i1 %.not.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %5, %7      ; 2 uses
  %.not.i.i.i.i328 = icmp eq i64 %.sroa.05.0.i.i.i, 0
  br i1 %.not.i.i.i.i328, label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_7step_by6StepByINtNtNtBa_3ops5range5RangejEEENtNtNtB8_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCs2TwJzntlzha_11flatbuffers8verifier19verify_vector_rangeINtNtB4_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.571.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.672.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %.sroa.274.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 8 uses
  %.sroa.375.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 40 ; 8 uses
  %.sroa.580.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.681.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.718.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %.sroa.16163.8..sroa_idx164 = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.sroa.453.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.453.sroa.4.0..sroa.453.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.453.sroa.5.0..sroa.453.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %.sroa.554.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %.sroa.655.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sroa.438.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.15157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.16163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %.sroa.16163.40..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.16163, i64 16
  %.sroa.292.i.sroa.4.0..sroa.292.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 5 uses
  %.sroa.292.i.sroa.5.0..sroa.292.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 4 uses
  %.sroa.631.i.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %.sroa.27132.24..sroa.7.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %.sroa.28.24..sroa.7.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %.sroa.31.24..sroa.7.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %.sroa.32.24..sroa.7.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.757.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %.sroa.27132.24..sroa.757.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %.sroa.28.24..sroa.757.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %.sroa.31.24..sroa.757.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %.sroa.32.24..sroa.757.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %.sroa.27132.8..sroa_idx136 = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %.sroa.453.0..sroa_idx.i.i.i150.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.453.sroa.4.0..sroa.453.0..sroa_idx.sroa_idx.i.i.i151.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.453.sroa.5.0..sroa.453.0..sroa_idx.sroa_idx.i.i.i152.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.554.0..sroa_idx.i.i.i153.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %.sroa.655.0..sroa_idx.i.i.i154.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.ed = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %.sroa.5.0..sroa_idx.i149.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ee = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.14110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.21116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.sroa.27132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.ef = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.eg = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.14110.0..sroa_idx111 = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.21116.0..sroa_idx117 = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.24.0..sroa_idx124 = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.sroa.27132.0..sroa_idx133 = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %.sroa.28.0..sroa_idx141 = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %.sroa.31.0..sroa_idx147 = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %.sroa.32.0..sroa_idx150 = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %.sroa.2101.i.sroa.6.0..sroa.2101.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 32 ; 3 uses
  %.sroa.3102.i.sroa.4.0..sroa.3102.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %.sroa.3102.i.sroa.5.0..sroa.3102.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 56 ; 2 uses
  %.sroa.3102.i.sroa.6.0..sroa.3102.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %.sroa.625.i.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %.sroa.625.i.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.eh = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.718.0..sroa_idx.i156.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.17167.i.i.i.i, i64 16
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.16179.i.i.i.i, i64 16
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.15191.i.i.i.i, i64 16
  %i.em = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.654.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %.sroa.357.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 40 ; 6 uses
  %.sroa.256.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 6 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.718.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.242.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %.sroa.343.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %.sroa.444.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  %.sroa.545.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 2 uses
  %.sroa.646.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 2 uses
  %.sroa.747.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %.sroa.848.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.ep = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.41.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.eq = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.14.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.15191.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.265.sroa.3.0..sroa.265.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 5 uses
  %.sroa.265.sroa.2.0..sroa.265.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 5 uses
  %.sroa.15191.8..sroa_idx192.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %.sroa.625.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.718.0..sroa_idx.i111.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.et = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.41.0..sroa_idx.i115.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.5.0..sroa_idx.i116.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.eu = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.10.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.15.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.16179.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.619.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.718.0..sroa_idx.i119.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.453.0..sroa_idx.i.i.i125.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.453.sroa.4.0..sroa.453.0..sroa_idx.sroa_idx.i.i.i126.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.453.sroa.5.0..sroa.453.0..sroa_idx.sroa_idx.i.i.i127.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.554.0..sroa_idx.i.i.i128.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.655.0..sroa_idx.i.i.i129.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.ex = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.438.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.5.0..sroa_idx.i123.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ey = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.11158.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.16.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.17167.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.613.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ez = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.718.0..sroa_idx.i131.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.22.24..sroa.718.0..sroa_idx.i131.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.242.0..sroa_idx.i.i.i135.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.343.0..sroa_idx.i.i.i136.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.444.0..sroa_idx.i.i.i137.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %.sroa.545.0..sroa_idx.i.i.i138.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %.sroa.646.0..sroa_idx.i.i.i139.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %.sroa.747.0..sroa_idx.i.i.i140.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.848.0..sroa_idx.i.i.i141.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.fb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.41.0..sroa_idx.i142.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.5.0..sroa_idx.i143.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.fc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.12.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.17.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.19.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.22.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.5104.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %.sroa.312.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %.sroa.312.sroa.6.0..sroa.312.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %.sroa.312.sroa.7.0..sroa.312.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.fd = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.41.0..sroa_idx.i160.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.5.0..sroa_idx.i161.i = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.fe = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.1295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.1799.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.18105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.18105.40..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.18105, i64 16
  %.sroa.619.i.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.sroa.5116.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.6117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %.sroa.5131.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.6132.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.sroa.8134.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %.sroa.9135.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %.sroa.312.0..sroa_idx.i22.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  %i.ff = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph, %bb.es
  %.sroa.078.0330 = phi i64 [ 0, %.lr.ph ], [ %i.fj, %bb.es ] ; 2 uses
  %.sroa.679.0329 = phi i64 [ %i.df, %.lr.ph ], [ %i.fh, %bb.es ] ; 12 uses
  %.sroa.9.0328 = phi i64 [ %.sroa.05.0.i.i.i, %.lr.ph ], [ %i.fi, %bb.es ]
  %i.fh = add i64 %.sroa.679.0329, 4
  %i.fi = add nsw i64 %.sroa.9.0328, -1           ; 2 uses
  %i.fj = add nuw nsw i64 %.sroa.078.0330, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !368
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !368
  call void @llvm.experimental.noalias.scope.decl(metadata !369)
  call void @llvm.experimental.noalias.scope.decl(metadata !370)
  call void @llvm.experimental.noalias.scope.decl(metadata !371), !noalias !372
  %i.fk = call i64 @llvm.uadd.sat.i64(i64 %.sroa.679.0329, i64 4) ; 2 uses
  %i.fl = load i64, ptr %i.bm, align 8, !alias.scope !373, !noalias !374, !noundef !53 ; 9 uses
  %i.fm = icmp ugt i64 %i.fk, %i.fl
  br i1 %i.fm, label %bb.ak, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fn = load i64, ptr %i.bp, align 8, !alias.scope !373, !noalias !374, !noundef !53
  %i.fo = add i64 %i.fn, 4                        ; 2 uses
  store i64 %i.fo, ptr %i.bp, align 8, !alias.scope !373, !noalias !374
  %i.fp = load ptr, ptr %i.bs, align 8, !alias.scope !373, !noalias !374, !nonnull !53, !align !58, !noundef !53
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fr = load i64, ptr %i.fq, align 8, !noalias !375, !noundef !53
  %i.fs = icmp ugt i64 %i.fo, %i.fr
  br i1 %i.fs, label %bb.ak, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i53

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i53: ; preds = %bb.ac
  %i.ft = icmp ult i64 %.sroa.679.0329, %i.fl
  br i1 %i.ft, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i53
  %i.fu = load ptr, ptr %i.bi, align 8, !alias.scope !370, !noalias !376, !nonnull !53, !noundef !53 ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %.sroa.679.0329
  %i.fw = load i8, ptr %i.fv, align 1, !noalias !377, !noundef !53
  %i.fx = or disjoint i64 %.sroa.679.0329, 1      ; 3 uses
  %i.fy = icmp ult i64 %i.fx, %i.fl
  br i1 %i.fy, label %bb.af, label %bb.ag

bb.ae:                                            ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i53
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %.sroa.679.0329, i64 noundef %i.fl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @95) #51, !noalias !377
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fx
  %i.ga = load i8, ptr %i.fz, align 1, !noalias !377, !noundef !53
  %i.gb = or disjoint i64 %.sroa.679.0329, 2      ; 3 uses
  %i.gc = icmp ult i64 %i.gb, %i.fl
  br i1 %i.gc, label %bb.ah, label %bb.ai

bb.ag:                                            ; preds = %bb.ad
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.fx, i64 noundef %i.fl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #51, !noalias !377
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.gd = or disjoint i64 %.sroa.679.0329, 3      ; 3 uses
  %i.ge = icmp ult i64 %i.gd, %i.fl
  br i1 %i.ge, label %bb.al, label %bb.aj

bb.ai:                                            ; preds = %bb.af
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.gb, i64 noundef %i.fl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #51, !noalias !377
  unreachable

bb.aj:                                            ; preds = %bb.ah
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.gd, i64 noundef %i.fl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #51, !noalias !377
  unreachable

bb.ak:                                            ; preds = %bb.ab, %bb.ac
  %.sroa.085.0.ph = phi i64 [ -9223372036854775800, %bb.ac ], [ -9223372036854775803, %bb.ab ]
  store i64 %.sroa.085.0.ph, ptr %i.aw, align 8, !alias.scope !369, !noalias !378
  store i32 0, ptr %.sroa.274.0..sroa_idx.i, align 8, !alias.scope !369, !noalias !378
  store i32 0, ptr %.sroa.312.0..sroa_idx.i22.i, align 4, !noalias !378
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.292.i.sroa.4.0..sroa.292.0..sroa_idx.i.sroa_idx, align 8, !noalias !378
  store i64 0, ptr %.sroa.292.i.sroa.5.0..sroa.292.0..sroa_idx.i.sroa_idx, align 8, !noalias !378
  store i64 %.sroa.679.0329, ptr %.sroa.2101.i.sroa.6.0..sroa.2101.0..sroa_idx.i.sroa_idx, align 8, !noalias !378
  store i64 %i.fk, ptr %.sroa.375.0..sroa_idx.i, align 8, !noalias !378
  store i64 3, ptr %.sroa.3102.i.sroa.4.0..sroa.3102.0..sroa_idx.i.sroa_idx, align 8, !noalias !378
  store i64 %.sroa.679.0329, ptr %.sroa.3102.i.sroa.5.0..sroa.3102.0..sroa_idx.i.sroa_idx, align 8, !noalias !378
  br label %_RNvXs6_NtCs2TwJzntlzha_11flatbuffers8verifierINtNtB7_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema5FieldENtB5_10Verifiable12run_verifierCs14kWLkQVSKO_14deltalake_core.exit.i

bb.al:                                            ; preds = %bb.ah
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.gb
  %i.gg = load i8, ptr %i.gf, align 1, !noalias !377, !noundef !53
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.gd
  %i.gi = load i8, ptr %i.gh, align 1, !noalias !377, !noundef !53
  %.sroa.6.0.insert.ext.i54 = zext i8 %i.gi to i64
  %.sroa.6.0.insert.shift.i55 = shl nuw nsw i64 %.sroa.6.0.insert.ext.i54, 24
  %.sroa.5.0.insert.ext.i56 = zext i8 %i.gg to i64
  %.sroa.5.0.insert.shift.i57 = shl nuw nsw i64 %.sroa.5.0.insert.ext.i56, 16
  %.sroa.4.0.insert.ext.i58 = zext i8 %i.ga to i64
  %.sroa.4.0.insert.shift.i59 = shl nuw nsw i64 %.sroa.4.0.insert.ext.i58, 8
  %.sroa.0.0.insert.ext.i60 = zext i8 %i.fw to i64
  %.sroa.5.0.insert.insert.i61 = or disjoint i64 %.sroa.4.0.insert.shift.i59, %.sroa.0.0.insert.ext.i60
  %.sroa.4.0.insert.insert.i62 = or disjoint i64 %.sroa.5.0.insert.insert.i61, %.sroa.5.0.insert.shift.i57
  %.sroa.0.0.insert.insert.i63 = or disjoint i64 %.sroa.4.0.insert.insert.i62, %.sroa.6.0.insert.shift.i55
  %i.gj = call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.0.insert.insert.i63, i64 %.sroa.679.0329)
  call void @llvm.experimental.noalias.scope.decl(metadata !379)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !380
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.613.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !380
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.619.i.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18105)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.631.i.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16163)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.637.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !380
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.643.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !380
  call fastcc void @_RNvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB5_8Verifier11visit_table(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.ar, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bi, i64 noundef %i.gj) #50, !noalias !381, !inline_history !280
  %i.gk = load i64, ptr %i.ar, align 8, !range !57, !noalias !380, !noundef !53 ; 2 uses
  %.not.i40 = icmp eq i64 %i.gk, -9223372036854775798
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.643.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.571.0..sroa_idx.i, i64 32, i1 false), !noalias !380
  br i1 %.not.i40, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.375.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.672.0..sroa_idx.i, i64 32, i1 false), !noalias !382
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !380
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.274.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.643.i, i64 32, i1 false), !noalias !382
  store i64 %i.gk, ptr %i.aw, align 8, !alias.scope !379, !noalias !382
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !380
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16163)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18105)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !380
  br label %bb.eq

bb.an:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !380
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aq, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.643.i, i64 32, i1 false), !noalias !380
  call fastcc void @_RINvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_13TableVerifier11visit_fieldINtNtB8_10primitives15ForwardsUOffsetReEB1Q_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.as, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.aq, ptr noalias noundef nonnull readonly captures(address, read_provenance) @291, i64 noundef 4, i16 noundef 4) #50
  %i.gl = load i64, ptr %i.as, align 8, !range !57, !noalias !380, !noundef !53 ; 2 uses
  %.not142.i = icmp eq i64 %i.gl, -9223372036854775798
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.637.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.580.0..sroa_idx.i, i64 32, i1 false), !noalias !380
  br i1 %.not142.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.375.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.681.0..sroa_idx.i, i64 32, i1 false), !noalias !382
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !380
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.274.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.637.i, i64 32, i1 false), !noalias !382
  store i64 %i.gl, ptr %i.aw, align 8, !alias.scope !379, !noalias !382
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16163)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18105)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !380
  br label %bb.eq

bb.ap:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !380
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.637.i, i64 32, i1 false), !noalias !380
  call void @llvm.experimental.noalias.scope.decl(metadata !383), !noalias !359
  call void @llvm.experimental.noalias.scope.decl(metadata !384), !noalias !359
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !385
  call void @_RNvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB5_13TableVerifier5deref(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.ak, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ap, i16 noundef 6), !noalias !386, !inline_history !280
  %i.gm = load i64, ptr %i.ak, align 8, !range !57, !noalias !385, !noundef !53 ; 2 uses
  %.not.i.i41 = icmp eq i64 %i.gm, -9223372036854775798
  %i.gn = load i64, ptr %i.dv, align 8, !noalias !385 ; 2 uses
  %i.go = load i64, ptr %i.dw, align 8, !noalias !385 ; 4 uses
  br i1 %.not.i.i41, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.16163, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.718.0..sroa_idx.i.i, i64 48, i1 false), !noalias !387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !385
  br label %bb.ba

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !385
  %i.gp = trunc nuw i64 %i.gn to i1
  br i1 %i.gp, label %bb.as, label %bb.bb

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !385
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !385
  %i.gq = load ptr, ptr %i.ap, align 16, !alias.scope !384, !noalias !388, !nonnull !53, !align !58, !noundef !53 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !389), !noalias !359
  call void @llvm.experimental.noalias.scope.decl(metadata !390), !noalias !359
  call void @llvm.experimental.noalias.scope.decl(metadata !391), !noalias !359
  call void @llvm.experimental.noalias.scope.decl(metadata !392), !noalias !359
  %i.gr = call i64 @llvm.uadd.sat.i64(i64 %i.go, i64 1) ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gt = load i64, ptr %i.gs, align 8, !alias.scope !393, !noalias !394, !noundef !53
  %i.gu = icmp ugt i64 %i.gr, %i.gt
  br i1 %i.gu, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gq, i64 40 ; 2 uses
  %i.gw = load i64, ptr %i.gv, align 8, !alias.scope !393, !noalias !394, !noundef !53
  %i.gx = add i64 %i.gw, 1                        ; 2 uses
  store i64 %i.gx, ptr %i.gv, align 8, !alias.scope !393, !noalias !394
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  %i.gz = load ptr, ptr %i.gy, align 8, !alias.scope !393, !noalias !394, !nonnull !53, !align !58, !noundef !53
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.hb = load i64, ptr %i.ha, align 8, !noalias !395, !noundef !53
  %i.hc = icmp ugt i64 %i.gx, %i.hb
  br i1 %i.hc, label %bb.aw, label %bb.av

bb.au:                                            ; preds = %bb.as
  store i64 -9223372036854775803, ptr %i.ai, align 8, !alias.scope !396, !noalias !397
  store i64 0, ptr %.sroa.453.0..sroa_idx.i.i.i.i, align 8, !alias.scope !396, !noalias !397
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.453.sroa.4.0..sroa.453.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !396, !noalias !397
  store i64 0, ptr %.sroa.453.sroa.5.0..sroa.453.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !396, !noalias !397
  store i64 %i.go, ptr %.sroa.554.0..sroa_idx.i.i.i.i, align 8, !alias.scope !396, !noalias !397
end_hunk_0
begin_hunk_1_@_RINvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_13TableVerifier11visit_fieldINtNtB8_10primitives15ForwardsUOffsetINtNtB8_6vector6VectorIB1g_NtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema8KeyValueEEEReECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.i = alloca [40 x i8], align 8                ; 8 uses
  %i.j = alloca [72 x i8], align 8                ; 22 uses
  %i.k = alloca [72 x i8], align 8                ; 6 uses
  %i.l = alloca [72 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RNvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB5_13TableVerifier5deref(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i16 noundef %2)
  %i.m = load i64, ptr %i.l, align 8, !range !57, !noundef !53 ; 2 uses
  %.not = icmp eq i64 %i.m, -9223372036854775798
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.q = load i64, ptr %i.p, align 8              ; 13 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.718.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.422.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.718.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i64 %i.m, ptr %0, align 8
  %.sroa.220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %.sroa.220.0..sroa_idx, align 8
  %.sroa.321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.q, ptr %.sroa.321.0..sroa_idx, align 8
  br label %bb.az

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.r = trunc nuw i64 %i.o to i1
  br i1 %i.r, label %bb.d, label %bb.av

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.s = load ptr, ptr %1, align 8, !nonnull !53, !align !58, !noundef !53 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !535)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !536)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !537)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !538)
  %i.t = and i64 %i.q, 3
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.v = tail call i64 @llvm.uadd.sat.i64(i64 %i.q, i64 4) ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !539, !noalias !540, !noundef !53 ; 19 uses
  %i.y = icmp ugt i64 %i.v, %i.x
  br i1 %i.y, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 40 ; 6 uses
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !539, !noalias !540, !noundef !53 ; 2 uses
  %i.ab = add i64 %i.aa, 4                        ; 2 uses
  store i64 %i.ab, ptr %i.z, align 8, !alias.scope !539, !noalias !540
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !539, !noalias !540, !nonnull !53, !align !58, !noundef !53
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !noalias !541, !noundef !53 ; 3 uses
  %i.ag = icmp ugt i64 %i.ab, %i.af
  br i1 %i.ag, label %bb.n, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.f
  %i.ah = icmp ult i64 %i.q, %i.x
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.ai = load ptr, ptr %i.s, align 8, !alias.scope !542, !noalias !543, !nonnull !53, !noundef !53 ; 8 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.q
  %i.ak = load i8, ptr %i.aj, align 1, !noalias !544, !noundef !53
  %i.al = or disjoint i64 %i.q, 1                 ; 3 uses
  %i.am = icmp ult i64 %i.al, %i.x
  br i1 %i.am, label %bb.i, label %bb.j

bb.h:                                             ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.q, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @95) #51, !noalias !544
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.al
  %i.ao = load i8, ptr %i.an, align 1, !noalias !544, !noundef !53
  %i.ap = or disjoint i64 %i.q, 2                 ; 3 uses
  %i.aq = icmp ult i64 %i.ap, %i.x
  br i1 %i.aq, label %bb.k, label %bb.l

bb.j:                                             ; preds = %bb.g
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.al, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #51, !noalias !544
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ar = or disjoint i64 %i.q, 3                 ; 3 uses
  %i.as = icmp ult i64 %i.ar, %i.x
  br i1 %i.as, label %bb.o, label %bb.m

bb.l:                                             ; preds = %bb.i
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.ap, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #51, !noalias !544
  unreachable

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.ar, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #51, !noalias !544
  unreachable

bb.n:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.14.0.ph.i = phi i64 [ undef, %bb.f ], [ ptrtoint (ptr @12 to i64), %bb.d ], [ %i.v, %bb.e ]
  %.sroa.13.0.ph.i = phi i64 [ undef, %bb.f ], [ -9223372036854775808, %bb.d ], [ %i.q, %bb.e ]
  %.sroa.0.0.ph.i = phi i64 [ -9223372036854775800, %bb.f ], [ -9223372036854775804, %bb.d ], [ -9223372036854775803, %bb.e ]
  store i64 %.sroa.0.0.ph.i, ptr %i.j, align 8, !alias.scope !535, !noalias !536
  %.sroa.211.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 0, ptr %.sroa.211.0..sroa_idx.i, align 8, !alias.scope !535, !noalias !536
  %.sroa.312.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %.sroa.312.0..sroa_idx.i, align 4, !alias.scope !535, !noalias !536
  %.sroa.312.sroa.2.0..sroa.312.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.312.sroa.2.0..sroa.312.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !535, !noalias !536
  %.sroa.312.sroa.3.0..sroa.312.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 0, ptr %.sroa.312.sroa.3.0..sroa.312.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !535, !noalias !536
  %.sroa.312.sroa.4.0..sroa.312.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i64 %.sroa.13.0.ph.i, ptr %.sroa.312.sroa.4.0..sroa.312.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !535, !noalias !536
  %.sroa.312.sroa.5.0..sroa.312.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i64 %.sroa.14.0.ph.i, ptr %.sroa.312.sroa.5.0..sroa.312.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !535, !noalias !536
  %.sroa.312.sroa.6.0..sroa.312.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store i64 3, ptr %.sroa.312.sroa.6.0..sroa.312.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !535, !noalias !536
  %.sroa.312.sroa.7.0..sroa.312.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store i64 %i.q, ptr %.sroa.312.sroa.7.0..sroa.312.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !535, !noalias !536
  br label %bb.aw

bb.o:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ap
  %i.au = load i8, ptr %i.at, align 1, !noalias !544, !noundef !53
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ar
  %i.aw = load i8, ptr %i.av, align 1, !noalias !544, !noundef !53
  %.sroa.6.0.insert.ext.i.i = zext i8 %i.aw to i64
  %.sroa.6.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.6.0.insert.ext.i.i, 24
  %.sroa.5.0.insert.ext.i.i = zext i8 %i.au to i64
  %.sroa.5.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.5.0.insert.ext.i.i, 16
  %.sroa.4.0.insert.ext.i.i = zext i8 %i.ao to i64
  %.sroa.4.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i, 8
  %.sroa.0.0.insert.ext.i.i = zext i8 %i.ak to i64
  %.sroa.5.0.insert.insert.i.i = or disjoint i64 %.sroa.4.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %.sroa.4.0.insert.insert.i.i = or disjoint i64 %.sroa.5.0.insert.insert.i.i, %.sroa.5.0.insert.shift.i.i
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.4.0.insert.insert.i.i, %.sroa.6.0.insert.shift.i.i
  %i.ax = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.0.insert.insert.i.i, i64 %i.q) ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !545)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !546)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !547)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !548)
  %i.ay = and i64 %i.ax, 3
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %bb.p, label %bb.aa

bb.p:                                             ; preds = %bb.o
  %i.ba = tail call i64 @llvm.uadd.sat.i64(i64 %i.ax, i64 4) ; 2 uses
  %i.bb = icmp ugt i64 %i.ba, %i.x
  br i1 %i.bb, label %bb.aa, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = add i64 %i.aa, 8                        ; 3 uses
  store i64 %i.bc, ptr %i.z, align 8, !alias.scope !549, !noalias !550
  %i.bd = icmp ugt i64 %i.bc, %i.af
  br i1 %i.bd, label %bb.aa, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %bb.q
  %i.be = icmp ult i64 %i.ax, %i.x
  br i1 %i.be, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ax
  %i.bg = load i8, ptr %i.bf, align 1, !noalias !551, !noundef !53
  %i.bh = or disjoint i64 %i.ax, 1                ; 3 uses
  %i.bi = icmp ult i64 %i.bh, %i.x
  br i1 %i.bi, label %bb.t, label %bb.u

bb.s:                                             ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.ax, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @95) #51, !noalias !551
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bh
  %i.bk = load i8, ptr %i.bj, align 1, !noalias !551, !noundef !53
  %i.bl = or disjoint i64 %i.ax, 2                ; 3 uses
  %i.bm = icmp ult i64 %i.bl, %i.x
  br i1 %i.bm, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.r
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.bh, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #51, !noalias !551
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.bn = or disjoint i64 %i.ax, 3                ; 3 uses
  %i.bo = icmp ult i64 %i.bn, %i.x
  br i1 %i.bo, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.bl, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #51, !noalias !551
  unreachable

bb.x:                                             ; preds = %bb.v
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.bn, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #51, !noalias !551
  unreachable

bb.y:                                             ; preds = %bb.v
  %i.bp = add nuw i64 %i.ax, 4                    ; 5 uses
  %.sroa.4.0.insert.ext.i.i.i.i = zext i8 %i.bk to i64
  %.sroa.0.0.insert.ext.i.i.i.i = zext i8 %i.bg to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bl
  %i.br = load i8, ptr %i.bq, align 1, !noalias !551, !noundef !53
  %.sroa.5.0.insert.ext.i.i.i.i = zext i8 %i.br to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bn
  %i.bt = load i8, ptr %i.bs, align 1, !noalias !551, !noundef !53
  %.sroa.6.0.insert.ext.i.i.i.i = zext i8 %i.bt to i64
  %i.bu = shl nuw nsw i64 %.sroa.6.0.insert.ext.i.i.i.i, 26
  %i.bv = shl nuw nsw i64 %.sroa.5.0.insert.ext.i.i.i.i, 18
  %i.bw = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i.i.i, 10
  %i.bx = shl nuw nsw i64 %.sroa.0.0.insert.ext.i.i.i.i, 2
  %i.by = or disjoint i64 %i.bw, %i.bx
  %i.bz = or disjoint i64 %i.by, %i.bv
  %i.ca = or disjoint i64 %i.bz, %i.bu            ; 2 uses
  %i.cb = tail call i64 @llvm.uadd.sat.i64(i64 %i.bp, i64 %i.ca) ; 5 uses
  %i.cc = icmp ugt i64 %i.cb, %i.x
  br i1 %i.cc, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cd = add i64 %i.ca, %i.bc                    ; 2 uses
  store i64 %i.cd, ptr %i.z, align 8, !alias.scope !552, !noalias !553
  %i.ce = icmp ugt i64 %i.cd, %i.af
  br i1 %i.ce, label %bb.aa, label %_RINvNtCs2TwJzntlzha_11flatbuffers8verifier19verify_vector_rangeINtNtB4_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema8KeyValueEECs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.q, %bb.p, %bb.o
  %.sroa.23.0.ph.i.i = phi i64 [ %i.ba, %bb.p ], [ %i.cb, %bb.y ], [ ptrtoint (ptr @12 to i64), %bb.o ], [ undef, %bb.q ], [ %i.cb, %bb.z ]
  %.sroa.21.0.ph.i.i = phi i64 [ %i.ax, %bb.p ], [ %i.bp, %bb.y ], [ -9223372036854775808, %bb.o ], [ undef, %bb.q ], [ %i.bp, %bb.z ]
  %.sroa.0.0.ph.i14.i = phi i64 [ -9223372036854775803, %bb.p ], [ -9223372036854775803, %bb.y ], [ -9223372036854775804, %bb.o ], [ -9223372036854775800, %bb.q ], [ -9223372036854775800, %bb.z ]
  store i64 %.sroa.0.0.ph.i14.i, ptr %i.j, align 8, !alias.scope !554, !noalias !555
  %.sroa.217.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 0, ptr %.sroa.217.0..sroa_idx.i.i, align 8, !alias.scope !554, !noalias !555
  %.sroa.318.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 8, ptr %.sroa.318.0..sroa_idx.i.i, align 8, !alias.scope !554, !noalias !555
  %.sroa.419.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 0, ptr %.sroa.419.0..sroa_idx.i.i, align 8, !alias.scope !554, !noalias !555
  %.sroa.419.sroa.2.0..sroa.419.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i64 %.sroa.21.0.ph.i.i, ptr %.sroa.419.sroa.2.0..sroa.419.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !554, !noalias !555
  %.sroa.419.sroa.3.0..sroa.419.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i64 %.sroa.23.0.ph.i.i, ptr %.sroa.419.sroa.3.0..sroa.419.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !554, !noalias !555
  %.sroa.419.sroa.4.0..sroa.419.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store i64 3, ptr %.sroa.419.sroa.4.0..sroa.419.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !554, !noalias !555
  %.sroa.419.sroa.5.0..sroa.419.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store i64 %i.ax, ptr %.sroa.419.sroa.5.0..sroa.419.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !554, !noalias !555
  br label %bb.aw

_RINvNtCs2TwJzntlzha_11flatbuffers8verifier19verify_vector_rangeINtNtB4_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema8KeyValueEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.z
  %.sroa.06.0.i.i70.i.i = sub nuw i64 %i.cb, %i.bp
  %3 = lshr i64 %.sroa.06.0.i.i70.i.i, 2
  %4 = and i64 %i.cb, 3
  %.not.i.i.i.i = icmp ne i64 %4, 0
  %5 = zext i1 %.not.i.i.i.i to i64
  %.sroa.05.0.i.i.i.i = add nuw nsw i64 %3, %5    ; 2 uses
  %.not.i.i.i86.i.i = icmp eq i64 %.sroa.05.0.i.i.i.i, 0
  br i1 %.not.i.i.i86.i.i, label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_7step_by6StepByINtNtNtBa_3ops5range5RangejEEENtNtNtB8_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCs2TwJzntlzha_11flatbuffers8verifier19verify_vector_rangeINtNtB4_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema8KeyValueEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.636.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.339.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 4 uses
  %.sroa.238.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.645.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.660.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.862.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.963.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.366.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.sroa.467.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.568.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %.sroa.312.0..sroa_idx.i25.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %.sroa.312.sroa.6.0..sroa.312.0..sroa_idx.sroa_idx.i30.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.312.sroa.7.0..sroa.312.0..sroa_idx.sroa_idx.i31.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.ci = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %bb.ab

bb.ab:                                            ; preds = %bb.au, %.lr.ph.i.i
  %.sroa.044.089.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.cm, %bb.au ] ; 2 uses
  %.sroa.645.087.i.i = phi i64 [ %i.bp, %.lr.ph.i.i ], [ %i.ck, %bb.au ] ; 12 uses
  %.sroa.9.086.i.i = phi i64 [ %.sroa.05.0.i.i.i.i, %.lr.ph.i.i ], [ %i.cl, %bb.au ]
  %i.ck = add i64 %.sroa.645.087.i.i, 4
  %i.cl = add nsw i64 %.sroa.9.086.i.i, -1        ; 2 uses
  %i.cm = add nuw nsw i64 %.sroa.044.089.i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !556
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !556
  call void @llvm.experimental.noalias.scope.decl(metadata !557)
  call void @llvm.experimental.noalias.scope.decl(metadata !558)
  call void @llvm.experimental.noalias.scope.decl(metadata !559)
  call void @llvm.experimental.noalias.scope.decl(metadata !560)
  %i.cn = call i64 @llvm.uadd.sat.i64(i64 %.sroa.645.087.i.i, i64 4) ; 2 uses
  %i.co = load i64, ptr %i.w, align 8, !alias.scope !561, !noalias !562, !noundef !53 ; 9 uses
  %i.cp = icmp ugt i64 %i.cn, %i.co
  br i1 %i.cp, label %bb.ak, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cq = load i64, ptr %i.z, align 8, !alias.scope !561, !noalias !562, !noundef !53
  %i.cr = add i64 %i.cq, 4                        ; 2 uses
  store i64 %i.cr, ptr %i.z, align 8, !alias.scope !561, !noalias !562
  %i.cs = load ptr, ptr %i.ac, align 8, !alias.scope !561, !noalias !562, !nonnull !53, !align !58, !noundef !53
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !noalias !563, !noundef !53
  %i.cv = icmp ugt i64 %i.cr, %i.cu
  br i1 %i.cv, label %bb.ak, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i32.i.i

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i32.i.i: ; preds = %bb.ac
  %i.cw = icmp ult i64 %.sroa.645.087.i.i, %i.co
  br i1 %i.cw, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i32.i.i
  %i.cx = load ptr, ptr %i.s, align 8, !alias.scope !564, !noalias !565, !nonnull !53, !noundef !53 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.sroa.645.087.i.i
  %i.cz = load i8, ptr %i.cy, align 1, !noalias !566, !noundef !53
  %i.da = or disjoint i64 %.sroa.645.087.i.i, 1   ; 3 uses
  %i.db = icmp ult i64 %i.da, %i.co
  br i1 %i.db, label %bb.af, label %bb.ag

bb.ae:                                            ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i32.i.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %.sroa.645.087.i.i, i64 noundef %i.co, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @95) #51, !noalias !566
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.da
  %i.dd = load i8, ptr %i.dc, align 1, !noalias !566, !noundef !53
  %i.de = or disjoint i64 %.sroa.645.087.i.i, 2   ; 3 uses
  %i.df = icmp ult i64 %i.de, %i.co
  br i1 %i.df, label %bb.ah, label %bb.ai

bb.ag:                                            ; preds = %bb.ad
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.da, i64 noundef %i.co, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #51, !noalias !566
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.dg = or disjoint i64 %.sroa.645.087.i.i, 3   ; 3 uses
  %i.dh = icmp ult i64 %i.dg, %i.co
  br i1 %i.dh, label %bb.al, label %bb.aj

bb.ai:                                            ; preds = %bb.af
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.de, i64 noundef %i.co, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #51, !noalias !566
  unreachable

bb.aj:                                            ; preds = %bb.ah
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.dg, i64 noundef %i.co, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #51, !noalias !566
  unreachable

bb.ak:                                            ; preds = %bb.ac, %bb.ab
  %.sroa.0.0.ph.i23.i.i = phi i64 [ -9223372036854775800, %bb.ac ], [ -9223372036854775803, %bb.ab ]
  store i64 %.sroa.0.0.ph.i23.i.i, ptr %i.g, align 8, !alias.scope !557, !noalias !567
  store i32 0, ptr %.sroa.238.0..sroa_idx.i.i.i.i, align 8, !alias.scope !557, !noalias !567
  store i32 0, ptr %.sroa.312.0..sroa_idx.i25.i.i, align 4, !alias.scope !557, !noalias !567
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.366.0..sroa_idx.i.i.i.i, align 8, !alias.scope !557, !noalias !567
  store i64 0, ptr %.sroa.467.0..sroa_idx.i.i.i.i, align 8, !alias.scope !557, !noalias !567
  store i64 %.sroa.645.087.i.i, ptr %.sroa.568.0..sroa_idx.i.i.i.i, align 8, !alias.scope !557, !noalias !567
  store i64 %i.cn, ptr %.sroa.339.0..sroa_idx.i.i.i.i, align 8, !alias.scope !557, !noalias !567
  store i64 3, ptr %.sroa.312.sroa.6.0..sroa.312.0..sroa_idx.sroa_idx.i30.i.i, align 8, !alias.scope !557, !noalias !567
  store i64 %.sroa.645.087.i.i, ptr %.sroa.312.sroa.7.0..sroa.312.0..sroa_idx.sroa_idx.i31.i.i, align 8, !alias.scope !557, !noalias !567
  br label %_RNvXs6_NtCs2TwJzntlzha_11flatbuffers8verifierINtNtB7_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema8KeyValueENtB5_10Verifiable12run_verifierCs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.al:                                            ; preds = %bb.ah
  %i.di = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.de
  %i.dj = load i8, ptr %i.di, align 1, !noalias !566, !noundef !53
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.dg
  %i.dl = load i8, ptr %i.dk, align 1, !noalias !566, !noundef !53
  %.sroa.6.0.insert.ext.i.i33.i.i = zext i8 %i.dl to i64
  %.sroa.6.0.insert.shift.i.i.i.i = shl nuw nsw i64 %.sroa.6.0.insert.ext.i.i33.i.i, 24
  %.sroa.5.0.insert.ext.i.i34.i.i = zext i8 %i.dj to i64
  %.sroa.5.0.insert.shift.i.i.i.i = shl nuw nsw i64 %.sroa.5.0.insert.ext.i.i34.i.i, 16
  %.sroa.4.0.insert.ext.i.i35.i.i = zext i8 %i.dd to i64
  %.sroa.4.0.insert.shift.i.i.i.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i35.i.i, 8
  %.sroa.0.0.insert.ext.i.i36.i.i = zext i8 %i.cz to i64
  %.sroa.5.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.4.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i.i36.i.i
  %.sroa.4.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.5.0.insert.insert.i.i.i.i, %.sroa.5.0.insert.shift.i.i.i.i
  %.sroa.0.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.4.0.insert.insert.i.i.i.i, %.sroa.6.0.insert.shift.i.i.i.i
  %i.dm = call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.0.insert.insert.i.i.i.i, i64 %.sroa.645.087.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !568)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !569
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !569
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !570
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.613.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !570
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.619.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !570
  call fastcc void @_RNvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB5_8Verifier11visit_table(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.s, i64 noundef %i.dm) #50, !noalias !571
  %i.dn = load i64, ptr %i.c, align 8, !range !57, !noalias !570, !noundef !53 ; 2 uses
  %.not.i.i37.i.i = icmp eq i64 %i.dn, -9223372036854775798
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.619.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.cf, i64 32, i1 false), !noalias !570
  br i1 %.not.i.i37.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.339.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.636.0..sroa_idx.i.i.i.i, i64 32, i1 false), !noalias !572
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !570
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.238.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.619.i.i.i.i, i64 32, i1 false), !noalias !572
  store i64 %i.dn, ptr %i.g, align 8, !alias.scope !573, !noalias !572
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !570
  br label %bb.as

bb.an:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !570
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.619.i.i.i.i, i64 32, i1 false), !noalias !570
  call fastcc void @_RINvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_13TableVerifier11visit_fieldINtNtB8_10primitives15ForwardsUOffsetReEB1Q_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.d, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @273, i64 noundef 3, i16 noundef 4) #50
  %i.do = load i64, ptr %i.d, align 8, !range !57, !noalias !570, !noundef !53 ; 2 uses
  %.not70.i.i.i.i = icmp eq i64 %i.do, -9223372036854775798
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.613.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.cg, i64 32, i1 false), !noalias !570
  br i1 %.not70.i.i.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.339.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.645.0..sroa_idx.i.i.i.i, i64 32, i1 false), !noalias !572
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !570
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.238.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.613.i.i.i.i, i64 32, i1 false), !noalias !572
  store i64 %i.do, ptr %i.g, align 8, !alias.scope !573, !noalias !572
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !570
  br label %bb.as

bb.ap:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !570
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.613.i.i.i.i, i64 32, i1 false), !noalias !570
  call fastcc void @_RINvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_13TableVerifier11visit_fieldINtNtB8_10primitives15ForwardsUOffsetReEB1Q_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.e, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @274, i64 noundef 5, i16 noundef 6) #50
  %i.dp = load i64, ptr %i.e, align 8, !range !57, !noalias !570, !noundef !53 ; 2 uses
  %.not71.i.i.i.i = icmp eq i64 %i.dp, -9223372036854775798
  %.sroa.049.0.copyload.i.i.i.i = load ptr, ptr %i.ch, align 8, !noalias !570 ; 2 uses
  br i1 %.not71.i.i.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %.sroa.862.0.copyload.i.i.i.i = load i64, ptr %.sroa.862.0..sroa_idx.i.i.i.i, align 8, !noalias !570
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.339.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.963.0..sroa_idx.i.i.i.i, i64 32, i1 false), !noalias !572
  %i.dq = load <2 x i64>, ptr %.sroa.660.0..sroa_idx.i.i.i.i, align 8, !noalias !570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !570
  store i64 %i.dp, ptr %i.g, align 8, !alias.scope !573, !noalias !572
  store ptr %.sroa.049.0.copyload.i.i.i.i, ptr %.sroa.238.0..sroa_idx.i.i.i.i, align 8, !alias.scope !573, !noalias !572
  store <2 x i64> %i.dq, ptr %.sroa.366.0..sroa_idx.i.i.i.i, align 8, !alias.scope !573, !noalias !572
  store i64 %.sroa.862.0.copyload.i.i.i.i, ptr %.sroa.568.0..sroa_idx.i.i.i.i, align 8, !alias.scope !573, !noalias !572
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !570
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.049.0.copyload.i.i.i.i, i64 24 ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8, !noalias !571, !noundef !53
  %i.dt = add i64 %i.ds, -1
  store i64 %i.dt, ptr %i.dr, align 8, !noalias !571
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.619.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.613.i.i.i.i)
  store i64 -9223372036854775798, ptr %i.g, align 8, !alias.scope !573, !noalias !572
  br label %_RNvXs3M_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_8KeyValueNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i.i

bb.as:                                            ; preds = %bb.aq, %bb.ao, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.619.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.613.i.i.i.i)
  br label %_RNvXs3M_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_8KeyValueNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i.i

_RNvXs3M_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_8KeyValueNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i.i: ; preds = %bb.as, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !569
  br label %_RNvXs6_NtCs2TwJzntlzha_11flatbuffers8verifierINtNtB7_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema8KeyValueENtB5_10Verifiable12run_verifierCs14kWLkQVSKO_14deltalake_core.exit.i.i

_RNvXs6_NtCs2TwJzntlzha_11flatbuffers8verifierINtNtB7_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema8KeyValueENtB5_10Verifiable12run_verifierCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %_RNvXs3M_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_8KeyValueNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i.i, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !556
  store i64 %.sroa.044.089.i.i, ptr %i.ci, align 8, !noalias !556
  store i64 %.sroa.645.087.i.i, ptr %i.cj, align 8, !noalias !556
  store i64 0, ptr %i.f, align 8, !noalias !556
  call fastcc void @_RINvNtCs2TwJzntlzha_11flatbuffers8verifier12append_traceuECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.h, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.g, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.f), !noalias !554
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !556
  %i.du = load i64, ptr %i.h, align 8, !range !57, !noalias !556, !noundef !53
  %.not20.i.i = icmp eq i64 %i.du, -9223372036854775798
  br i1 %.not20.i.i, label %bb.au, label %bb.at

_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_7step_by6StepByINtNtNtBa_3ops5range5RangejEEENtNtNtB8_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.au, %_RINvNtCs2TwJzntlzha_11flatbuffers8verifier19verify_vector_rangeINtNtB4_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema8KeyValueEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  store i64 -9223372036854775798, ptr %i.j, align 8, !alias.scope !554, !noalias !555
  br label %bb.aw

bb.at:                                            ; preds = %_RNvXs6_NtCs2TwJzntlzha_11flatbuffers8verifierINtNtB7_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema8KeyValueENtB5_10Verifiable12run_verifierCs14kWLkQVSKO_14deltalake_core.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull align 8 dereferenceable(72) %i.h, i64 72, i1 false), !noalias !555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !556
  br label %bb.aw

bb.au:                                            ; preds = %_RNvXs6_NtCs2TwJzntlzha_11flatbuffers8verifierINtNtB7_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema8KeyValueENtB5_10Verifiable12run_verifierCs14kWLkQVSKO_14deltalake_core.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !556
  %.not.i.i.i.i.i = icmp eq i64 %i.cl, 0
  br i1 %.not.i.i.i.i.i, label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_7step_by6StepByINtNtNtBa_3ops5range5RangejEEENtNtNtB8_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.ab

bb.av:                                            ; preds = %bb.c
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dv, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
end_hunk_1
