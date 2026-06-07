inline.NumInlined: 10149
inline.NumDeleted: 2791
begin_hunk_0_@_RINvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_13TableVerifier11visit_fieldINtNtB8_10primitives15ForwardsUOffsetINtNtB8_6vector6VectorIB1g_NtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema5FieldEEEReECs14kWLkQVSKO_14deltalake_core:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  %i.bi = load ptr, ptr %1, align 8, !nonnull !3, !align !100, !noundef !3 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107), !noalias !101
  %i.bj = and i64 %i.bg, 3
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.bl = tail call i64 @llvm.uadd.sat.i64(i64 %i.bg, i64 4) ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !110, !noalias !111, !noundef !3 ; 19 uses
  %i.bo = icmp ugt i64 %i.bl, %i.bn
  br i1 %i.bo, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 40 ; 6 uses
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !110, !noalias !111, !noundef !3 ; 2 uses
  %i.br = add i64 %i.bq, 4                        ; 2 uses
  store i64 %i.br, ptr %i.bp, align 8, !alias.scope !110, !noalias !111
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !alias.scope !110, !noalias !111, !nonnull !3, !align !100, !noundef !3
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !noalias !114, !noundef !3 ; 3 uses
  %i.bw = icmp ugt i64 %i.br, %i.bv
  br i1 %i.bw, label %bb.n, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.f
  %i.bx = icmp ult i64 %i.bg, %i.bn
  br i1 %i.bx, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.by = load ptr, ptr %i.bi, align 8, !alias.scope !104, !noalias !115, !nonnull !3, !noundef !3 ; 8 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bg
  %i.ca = load i8, ptr %i.bz, align 1, !noalias !116, !noundef !3
  %i.cb = or disjoint i64 %i.bg, 1                ; 3 uses
  %i.cc = icmp ult i64 %i.cb, %i.bn
  br i1 %i.cc, label %bb.i, label %bb.j

bb.h:                                             ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.bg, i64 noundef %i.bn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #51, !noalias !116
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cb
  %i.ce = load i8, ptr %i.cd, align 1, !noalias !116, !noundef !3
  %i.cf = or disjoint i64 %i.bg, 2                ; 3 uses
  %i.cg = icmp ult i64 %i.cf, %i.bn
  br i1 %i.cg, label %bb.k, label %bb.l

bb.j:                                             ; preds = %bb.g
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.cb, i64 noundef %i.bn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #51, !noalias !116
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ch = or disjoint i64 %i.bg, 3                ; 3 uses
  %i.ci = icmp ult i64 %i.ch, %i.bn
  br i1 %i.ci, label %bb.o, label %bb.m

bb.l:                                             ; preds = %bb.i
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.cf, i64 noundef %i.bn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #51, !noalias !116
  unreachable

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.ch, i64 noundef %i.bn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #51, !noalias !116
  unreachable

bb.n:                                             ; preds = %bb.e, %bb.d, %bb.f
  %.sroa.14.0.ph = phi i64 [ undef, %bb.f ], [ ptrtoint (ptr @12 to i64), %bb.d ], [ %i.bl, %bb.e ]
  %.sroa.13.0.ph = phi i64 [ undef, %bb.f ], [ -9223372036854775808, %bb.d ], [ %i.bg, %bb.e ]
  %.sroa.066.0.ph = phi i64 [ -9223372036854775800, %bb.f ], [ -9223372036854775804, %bb.d ], [ -9223372036854775803, %bb.e ]
  store i64 %.sroa.066.0.ph, ptr %i.az, align 8, !alias.scope !101, !noalias !117
  %.sroa.211.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i32 0, ptr %.sroa.211.0..sroa_idx.i, align 8, !alias.scope !101, !noalias !117
  %.sroa.312.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i32 0, ptr %.sroa.312.0..sroa_idx.i, align 4, !noalias !117
  %.sroa.312.i.sroa.4.0..sroa.312.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.312.i.sroa.4.0..sroa.312.0..sroa_idx.i.sroa_idx, align 8, !noalias !117
  %.sroa.312.i.sroa.5.0..sroa.312.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  store i64 0, ptr %.sroa.312.i.sroa.5.0..sroa.312.0..sroa_idx.i.sroa_idx, align 8, !noalias !117
  %.sroa.312.i.sroa.6.0..sroa.312.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  store i64 %.sroa.13.0.ph, ptr %.sroa.312.i.sroa.6.0..sroa.312.0..sroa_idx.i.sroa_idx, align 8, !noalias !117
  %.sroa.312.i.sroa.7.0..sroa.312.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  store i64 %.sroa.14.0.ph, ptr %.sroa.312.i.sroa.7.0..sroa.312.0..sroa_idx.i.sroa_idx, align 8, !noalias !117
  %.sroa.312.i.sroa.8.0..sroa.312.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  store i64 3, ptr %.sroa.312.i.sroa.8.0..sroa.312.0..sroa_idx.i.sroa_idx, align 8, !noalias !117
  %.sroa.312.i.sroa.9.0..sroa.312.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 56
  store i64 %i.bg, ptr %.sroa.312.i.sroa.9.0..sroa.312.0..sroa_idx.i.sroa_idx, align 8, !noalias !117
  br label %_RNvXsk_NtCs2TwJzntlzha_11flatbuffers8verifierINtNtB7_6vector6VectorINtNtB7_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema5FieldEENtB5_10Verifiable12run_verifierCs14kWLkQVSKO_14deltalake_core.exit

bb.o:                                             ; preds = %bb.k
  %i.cj = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cf
  %i.ck = load i8, ptr %i.cj, align 1, !noalias !116, !noundef !3
  %i.cl = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.ch
  %i.cm = load i8, ptr %i.cl, align 1, !noalias !116, !noundef !3
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.co = and i64 %i.cn, 3
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %bb.p, label %bb.aa

bb.p:                                             ; preds = %bb.o
  %i.cq = tail call i64 @llvm.uadd.sat.i64(i64 %i.cn, i64 4) ; 2 uses
  %i.cr = icmp ugt i64 %i.cq, %i.bn
  br i1 %i.cr, label %bb.aa, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cs = add i64 %i.bq, 8                        ; 3 uses
  store i64 %i.cs, ptr %i.bp, align 8, !alias.scope !130, !noalias !133
  %i.ct = icmp ugt i64 %i.cs, %i.bv
  br i1 %i.ct, label %bb.aa, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.q
  %i.cu = icmp ult i64 %i.cn, %i.bn
  br i1 %i.cu, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cn
  %i.cw = load i8, ptr %i.cv, align 1, !noalias !137, !noundef !3
  %i.cx = or disjoint i64 %i.cn, 1                ; 3 uses
  %i.cy = icmp ult i64 %i.cx, %i.bn
  br i1 %i.cy, label %bb.t, label %bb.u

bb.s:                                             ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.cn, i64 noundef %i.bn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #51, !noalias !137, !inline_history !138
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.cz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cx
  %i.da = load i8, ptr %i.cz, align 1, !noalias !137, !noundef !3
  %i.db = or disjoint i64 %i.cn, 2                ; 3 uses
  %i.dc = icmp ult i64 %i.db, %i.bn
  br i1 %i.dc, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.r
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.cx, i64 noundef %i.bn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #51, !noalias !137, !inline_history !138
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.dd = or disjoint i64 %i.cn, 3                ; 3 uses
  %i.de = icmp ult i64 %i.dd, %i.bn
  br i1 %i.de, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.db, i64 noundef %i.bn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #51, !noalias !137, !inline_history !138
  unreachable

bb.x:                                             ; preds = %bb.v
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.dd, i64 noundef %i.bn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #51, !noalias !137, !inline_history !138
  unreachable

bb.y:                                             ; preds = %bb.v
  %i.df = add nuw i64 %i.cn, 4                    ; 6 uses
  %.sroa.4.0.insert.ext.i.i.i = zext i8 %i.da to i64
  %.sroa.0.0.insert.ext.i.i.i = zext i8 %i.cw to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.db
  %i.dh = load i8, ptr %i.dg, align 1, !noalias !137, !noundef !3
  %.sroa.5.0.insert.ext.i.i.i = zext i8 %i.dh to i64
  %i.di = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.dd
  %i.dj = load i8, ptr %i.di, align 1, !noalias !137, !noundef !3
  %.sroa.6.0.insert.ext.i.i.i = zext i8 %i.dj to i64
  %i.dk = shl nuw nsw i64 %.sroa.6.0.insert.ext.i.i.i, 26
  %i.dl = shl nuw nsw i64 %.sroa.5.0.insert.ext.i.i.i, 18
  %i.dm = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i.i, 10
  %i.dn = shl nuw nsw i64 %.sroa.0.0.insert.ext.i.i.i, 2
  %i.do = or disjoint i64 %i.dm, %i.dn
  %i.dp = or disjoint i64 %i.do, %i.dl
  %i.dq = or disjoint i64 %i.dp, %i.dk            ; 2 uses
  %i.dr = tail call i64 @llvm.uadd.sat.i64(i64 %i.df, i64 %i.dq) ; 6 uses
  %i.ds = icmp ugt i64 %i.dr, %i.bn
  br i1 %i.ds, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dt = add i64 %i.dq, %i.cs                    ; 2 uses
  store i64 %i.dt, ptr %i.bp, align 8, !alias.scope !139, !noalias !140
  %i.du = icmp ugt i64 %i.dt, %i.bv
  br i1 %i.du, label %bb.aa, label %_RINvNtCs2TwJzntlzha_11flatbuffers8verifier19verify_vector_rangeINtNtB4_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.aa:                                            ; preds = %bb.z, %bb.p, %bb.q, %bb.o, %bb.y
  %.sroa.069.0.ph = phi i64 [ -9223372036854775803, %bb.p ], [ -9223372036854775803, %bb.y ], [ -9223372036854775804, %bb.o ], [ -9223372036854775800, %bb.q ], [ -9223372036854775800, %bb.z ]
  %.sroa.21.0.ph = phi i64 [ %i.cn, %bb.p ], [ %i.df, %bb.y ], [ -9223372036854775808, %bb.o ], [ undef, %bb.q ], [ %i.df, %bb.z ]
  %.sroa.23.0.ph = phi i64 [ %i.cq, %bb.p ], [ %i.dr, %bb.y ], [ ptrtoint (ptr @12 to i64), %bb.o ], [ undef, %bb.q ], [ %i.dr, %bb.z ]
  store i64 %.sroa.069.0.ph, ptr %i.az, align 8, !alias.scope !119, !noalias !122
  %.sroa.217.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 0, ptr %.sroa.217.0..sroa_idx.i, align 8, !alias.scope !119, !noalias !122
  %.sroa.318.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i64 8, ptr %.sroa.318.0..sroa_idx.i, align 8, !alias.scope !119, !noalias !122
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  store i64 0, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !122
  %.sroa.419.i.sroa.4.0..sroa.419.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  store i64 %.sroa.21.0.ph, ptr %.sroa.419.i.sroa.4.0..sroa.419.0..sroa_idx.i.sroa_idx, align 8, !noalias !122
  %.sroa.419.i.sroa.5.0..sroa.419.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  store i64 %.sroa.23.0.ph, ptr %.sroa.419.i.sroa.5.0..sroa.419.0..sroa_idx.i.sroa_idx, align 8, !noalias !122
  %.sroa.419.i.sroa.6.0..sroa.419.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  store i64 3, ptr %.sroa.419.i.sroa.6.0..sroa.419.0..sroa_idx.i.sroa_idx, align 8, !noalias !122
  %.sroa.419.i.sroa.7.0..sroa.419.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 56
  store i64 %i.cn, ptr %.sroa.419.i.sroa.7.0..sroa.419.0..sroa_idx.i.sroa_idx, align 8, !noalias !122
  br label %_RNvXsk_NtCs2TwJzntlzha_11flatbuffers8verifierINtNtB7_6vector6VectorINtNtB7_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema5FieldEENtB5_10Verifiable12run_verifierCs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCs2TwJzntlzha_11flatbuffers8verifier19verify_vector_rangeINtNtB4_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.z
  %.not.i.i.i.i330.not = icmp ugt i64 %i.dr, %i.df
  br i1 %.not.i.i.i.i330.not, label %.lr.ph, label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_7step_by6StepByINtNtNtBa_3ops5range5RangejEEENtNtNtB8_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph:                                           ; preds = %_RINvNtCs2TwJzntlzha_11flatbuffers8verifier19verify_vector_rangeINtNtB4_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.06.0.i.i.i = sub nuw i64 %i.dr, %i.df
  %i.dv = lshr i64 %.sroa.06.0.i.i.i, 2
  %i.dw = and i64 %i.dr, 3
  %.not.i.i.i = icmp ne i64 %i.dw, 0
  %i.dx = zext i1 %.not.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.dv, %i.dx
  %.sroa.571.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.672.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %.sroa.274.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 8 uses
  %.sroa.375.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 40 ; 8 uses
  %.sroa.580.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.681.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.718.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %.sroa.16163.8..sroa_idx164 = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.sroa.453.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.453.sroa.4.0..sroa.453.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.453.sroa.5.0..sroa.453.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %.sroa.554.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %.sroa.655.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sroa.438.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.15157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.16163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %.sroa.16163.40..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.16163, i64 16
  %.sroa.292.i.sroa.4.0..sroa.292.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 5 uses
  %.sroa.292.i.sroa.5.0..sroa.292.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 4 uses
  %.sroa.631.i.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %.sroa.27132.24..sroa.7.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %.sroa.28.24..sroa.7.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %.sroa.31.24..sroa.7.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %.sroa.32.24..sroa.7.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.af, i64 16
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
  %i.eg = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %.sroa.5.0..sroa_idx.i149.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.eh = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.14110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.21116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.sroa.27132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ej = getelementptr inbounds nuw i8, ptr %i.z, i64 8
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
  %i.ek = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.718.0..sroa_idx.i156.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.17167.i.i.i.i, i64 16
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.16179.i.i.i.i, i64 16
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.15191.i.i.i.i, i64 16
  %i.ep = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.654.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %.sroa.357.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 40 ; 6 uses
  %.sroa.256.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 6 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.718.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.242.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %.sroa.343.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %.sroa.444.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  %.sroa.545.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 2 uses
  %.sroa.646.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 2 uses
  %.sroa.747.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %.sroa.848.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.es = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.41.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.et = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.14.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.15191.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.265.sroa.3.0..sroa.265.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 5 uses
  %.sroa.265.sroa.2.0..sroa.265.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 5 uses
  %.sroa.15191.8..sroa_idx192.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %.sroa.625.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.718.0..sroa_idx.i111.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.ew = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.41.0..sroa_idx.i115.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.5.0..sroa_idx.i116.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.ex = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.10.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.15.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.16179.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.619.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.718.0..sroa_idx.i119.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.453.0..sroa_idx.i.i.i125.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.453.sroa.4.0..sroa.453.0..sroa_idx.sroa_idx.i.i.i126.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.453.sroa.5.0..sroa.453.0..sroa_idx.sroa_idx.i.i.i127.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.554.0..sroa_idx.i.i.i128.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.655.0..sroa_idx.i.i.i129.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.fa = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.438.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.5.0..sroa_idx.i123.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.fb = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.11158.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.16.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.17167.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.613.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.fc = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.718.0..sroa_idx.i131.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.22.24..sroa.718.0..sroa_idx.i131.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.242.0..sroa_idx.i.i.i135.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.343.0..sroa_idx.i.i.i136.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.444.0..sroa_idx.i.i.i137.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %.sroa.545.0..sroa_idx.i.i.i138.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %.sroa.646.0..sroa_idx.i.i.i139.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %.sroa.747.0..sroa_idx.i.i.i140.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.848.0..sroa_idx.i.i.i141.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.fe = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.41.0..sroa_idx.i142.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.5.0..sroa_idx.i143.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ff = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.12.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.17.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.19.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.22.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.5104.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %.sroa.312.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %.sroa.312.sroa.6.0..sroa.312.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %.sroa.312.sroa.7.0..sroa.312.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.fg = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.41.0..sroa_idx.i160.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.5.0..sroa_idx.i161.i = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.fh = getelementptr inbounds nuw i8, ptr %i.v, i64 8
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
  %i.fi = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph, %bb.es
  %.sroa.9.0333 = phi i64 [ %.sroa.05.0.i.i.i, %.lr.ph ], [ %i.fl, %bb.es ]
end_hunk_0
begin_hunk_1_@_RINvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_13TableVerifier11visit_fieldINtNtB8_10primitives15ForwardsUOffsetINtNtB8_6vector6VectorIB1g_NtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema5FieldEEEReECs14kWLkQVSKO_14deltalake_core:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.16163, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.16163.0..sroa_idx, i64 48, i1 false), !noalias !177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !174
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !174
  br label %bb.bb

bb.ba:                                            ; preds = %bb.aq, %bb.ay
  %.sroa.0153.0 = phi i64 [ %i.gp, %bb.aq ], [ %i.hg, %bb.ay ]
  %.sroa.10.0 = phi i64 [ %i.gq, %bb.aq ], [ %.sroa.10.0.copyload, %bb.ay ]
  %.sroa.15157.0 = phi i64 [ %i.gr, %bb.aq ], [ %.sroa.15157.0.copyload, %bb.ay ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.631.i.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.16163, i64 16, i1 false), !noalias !164
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.375.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.16163.40..sroa_idx, i64 32, i1 false), !noalias !168
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16163)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.292.i.sroa.5.0..sroa.292.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.631.i.sroa.8, i64 16, i1 false), !noalias !168
  store i64 %.sroa.0153.0, ptr %i.aw, align 8, !alias.scope !161, !noalias !168
  store i64 %.sroa.10.0, ptr %.sroa.274.0..sroa_idx.i, align 8, !noalias !168
  store i64 %.sroa.15157.0, ptr %.sroa.292.i.sroa.4.0..sroa.292.0..sroa_idx.i.sroa_idx, align 8, !noalias !168
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18105)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !164
  br label %bb.eq

bb.bb:                                            ; preds = %bb.ar, %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.16163, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.16163.8..sroa_idx164, i64 16, i1 false), !alias.scope !195, !noalias !196
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.631.i.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.16163, i64 16, i1 false), !noalias !164
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16163)
  %i.hh = load <2 x i64>, ptr %i.ap, align 16, !alias.scope !195, !noalias !196
  store <2 x i64> %i.hh, ptr %i.ao, align 16, !noalias !164
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.631.i.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.631.i.sroa.8, i64 16, i1 false), !noalias !164
  call void @llvm.experimental.noalias.scope.decl(metadata !197), !noalias !119
  call void @llvm.experimental.noalias.scope.decl(metadata !200), !noalias !119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !202
  call void @_RNvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB5_13TableVerifier5deref(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.ag, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ao, i16 noundef 10), !noalias !203, !inline_history !167
  %i.hi = load i64, ptr %i.ag, align 8, !range !99, !noalias !202, !noundef !3 ; 2 uses
  %.not.i148.i = icmp eq i64 %i.hi, -9223372036854775798
  %i.hj = load i64, ptr %i.ec, align 8, !noalias !202 ; 2 uses
  %i.hk = load i64, ptr %i.ed, align 8, !noalias !202 ; 3 uses
  br i1 %.not.i148.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %.sroa.24.24.copyload = load i64, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !204
  %.sroa.27132.24.copyload = load ptr, ptr %.sroa.27132.24..sroa.7.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !204
  %i.hl = load <2 x i64>, ptr %.sroa.28.24..sroa.7.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !204
  %.sroa.31.24.copyload = load ptr, ptr %.sroa.31.24..sroa.7.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !204
  %.sroa.32.24.copyload = load i64, ptr %.sroa.32.24..sroa.7.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !202
  br label %bb.bu

bb.bd:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !202
  call void @_RNvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB5_13TableVerifier5deref(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.af, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ao, i16 noundef 8), !noalias !203, !inline_history !167
  %i.hm = load i64, ptr %i.af, align 8, !range !99, !noalias !202, !noundef !3 ; 2 uses
  %.not74.i.i = icmp eq i64 %i.hm, -9223372036854775798
  %i.hn = load i64, ptr %i.ee, align 8, !noalias !202 ; 2 uses
  %i.ho = load i64, ptr %i.ef, align 8, !noalias !202 ; 7 uses
  br i1 %.not74.i.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %.sroa.24.24.copyload131 = load i64, ptr %.sroa.757.0..sroa_idx.i.i, align 8, !noalias !204
  %.sroa.27132.24.copyload140 = load ptr, ptr %.sroa.27132.24..sroa.757.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !204
  %i.hp = load <2 x i64>, ptr %.sroa.28.24..sroa.757.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !204
  %.sroa.31.24.copyload149 = load ptr, ptr %.sroa.31.24..sroa.757.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !204
  %.sroa.32.24.copyload152 = load i64, ptr %.sroa.32.24..sroa.757.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !202
  br label %bb.bu

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !202
  %i.hq = trunc nuw i64 %i.hn to i1
  %i.hr = trunc nuw i64 %i.hj to i1               ; 2 uses
  br i1 %i.hq, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  br i1 %i.hr, label %bb.bi, label %bb.bu

bb.bh:                                            ; preds = %bb.bf
  br i1 %i.hr, label %bb.bu, label %_RINvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_13TableVerifier11visit_unionNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema4TypeNCNvXs3Y_B1h_NtB1h_5FieldNtB6_10Verifiable12run_verifier0ReB2U_ECs14kWLkQVSKO_14deltalake_core.exit.i

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !202
  %i.hs = load ptr, ptr %i.ao, align 16, !alias.scope !200, !noalias !205, !nonnull !3, !align !100, !noundef !3 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !206), !noalias !119
  call void @llvm.experimental.noalias.scope.decl(metadata !209), !noalias !119
  call void @llvm.experimental.noalias.scope.decl(metadata !211), !noalias !119
  call void @llvm.experimental.noalias.scope.decl(metadata !214), !noalias !119
  %i.ht = call i64 @llvm.uadd.sat.i64(i64 %i.ho, i64 1) ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.hv = load i64, ptr %i.hu, align 8, !alias.scope !216, !noalias !217, !noundef !3
  %i.hw = icmp ugt i64 %i.ht, %i.hv
  br i1 %i.hw, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hs, i64 40 ; 2 uses
  %i.hy = load i64, ptr %i.hx, align 8, !alias.scope !216, !noalias !217, !noundef !3
  %i.hz = add i64 %i.hy, 1                        ; 2 uses
  store i64 %i.hz, ptr %i.hx, align 8, !alias.scope !216, !noalias !217
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %i.ib = load ptr, ptr %i.ia, align 8, !alias.scope !216, !noalias !217, !nonnull !3, !align !100, !noundef !3
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  %i.id = load i64, ptr %i.ic, align 8, !noalias !218, !noundef !3
  %i.ie = icmp ugt i64 %i.hz, %i.id
  br i1 %i.ie, label %bb.bm, label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  store i64 -9223372036854775803, ptr %i.ad, align 8, !alias.scope !219, !noalias !220
  store i64 0, ptr %.sroa.453.0..sroa_idx.i.i.i150.i, align 8, !alias.scope !219, !noalias !220
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.453.sroa.4.0..sroa.453.0..sroa_idx.sroa_idx.i.i.i151.i, align 8, !alias.scope !219, !noalias !220
  store i64 0, ptr %.sroa.453.sroa.5.0..sroa.453.0..sroa_idx.sroa_idx.i.i.i152.i, align 8, !alias.scope !219, !noalias !220
  store i64 %i.ho, ptr %.sroa.554.0..sroa_idx.i.i.i153.i, align 8, !alias.scope !219, !noalias !220
  store i64 %i.ht, ptr %.sroa.655.0..sroa_idx.i.i.i154.i, align 8, !alias.scope !219, !noalias !220
  br label %bb.bn

bb.bl:                                            ; preds = %bb.bj
  store i64 -9223372036854775798, ptr %i.ad, align 8, !alias.scope !219, !noalias !220
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bj
  store i64 -9223372036854775800, ptr %i.ad, align 8, !alias.scope !219, !noalias !220
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl, %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !202
  store i64 -9223372036854775808, ptr %i.eg, align 8, !noalias !202
  store ptr @294, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !noalias !202
  store i64 9, ptr %.sroa.5.0..sroa_idx.i149.i, align 8, !noalias !202
  store i64 %i.ho, ptr %i.eh, align 8, !noalias !202
  store i64 1, ptr %i.aa, align 8, !noalias !202
  call fastcc void @_RINvNtCs2TwJzntlzha_11flatbuffers8verifier12append_traceuECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.ae, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.ad, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.aa), !noalias !203, !inline_history !167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !202
  %i.if = load i64, ptr %i.ae, align 8, !range !99, !noalias !202, !noundef !3 ; 2 uses
  %.not75.i.i = icmp eq i64 %i.if, -9223372036854775798
  br i1 %.not75.i.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %.sroa.14110.0.copyload = load i64, ptr %.sroa.14110.0..sroa_idx, align 8, !noalias !204
  %.sroa.21116.0.copyload = load i64, ptr %.sroa.21116.0..sroa_idx, align 8, !noalias !204
  %.sroa.24.0.copyload = load i64, ptr %.sroa.24.0..sroa_idx, align 8, !noalias !204
  %.sroa.27132.0.copyload = load ptr, ptr %.sroa.27132.0..sroa_idx, align 8, !noalias !204
  %i.ig = load <2 x i64>, ptr %.sroa.28.0..sroa_idx, align 8, !noalias !204
  %.sroa.31.0.copyload = load ptr, ptr %.sroa.31.0..sroa_idx, align 8, !noalias !204
  %.sroa.32.0.copyload = load i64, ptr %.sroa.32.0..sroa_idx, align 8, !noalias !204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !202
  br label %bb.bu

bb.bp:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !202
  %i.ih = load ptr, ptr %i.ao, align 16, !alias.scope !200, !noalias !205, !nonnull !3, !align !100, !noundef !3 ; 3 uses
  %i.ii = load ptr, ptr %i.ih, align 8, !noalias !203, !nonnull !3, !noundef !3
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.ik = load i64, ptr %i.ij, align 8, !noalias !203, !noundef !3 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !221), !noalias !119
  call void @llvm.experimental.noalias.scope.decl(metadata !224), !noalias !119
  %i.il = icmp ugt i64 %i.ho, %i.ik
  br i1 %i.il, label %bb.bq, label %bb.br, !prof !98

bb.bq:                                            ; preds = %bb.bp
  call void @_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16slice_index_fail(i64 noundef %i.ho, i64 noundef range(i64 0, -9223372036854775808) %i.ik, i64 noundef range(i64 0, -9223372036854775808) %i.ik, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #51, !noalias !227, !inline_history !167
  unreachable

bb.br:                                            ; preds = %bb.bp
  %i.im = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.ho
  %.sroa.0.0.copyload.i.i.i.i = load i8, ptr %i.im, align 1, !alias.scope !228, !noalias !203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !202
  call fastcc void @_RNCNvXs3Y_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB8_5FieldNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.ab, i8 noundef %.sroa.0.0.copyload.i.i.i.i, ptr noalias noundef align 8 dereferenceable(48) %i.ih, i64 noundef %i.hk), !noalias !203, !inline_history !167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !202
  store i64 -9223372036854775808, ptr %i.ei, align 8, !noalias !202
  store ptr @295, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !202
  store i64 5, ptr %.sroa.54.0..sroa_idx.i.i, align 8, !noalias !202
  store i64 %i.hk, ptr %i.ej, align 8, !noalias !202
  store i64 1, ptr %i.z, align 8, !noalias !202
  call fastcc void @_RINvNtCs2TwJzntlzha_11flatbuffers8verifier12append_traceuECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.ac, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.ab, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.z), !noalias !203, !inline_history !167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !202
  %i.in = load i64, ptr %i.ac, align 8, !range !99, !noalias !202, !noundef !3 ; 2 uses
  %.not77.i.i = icmp eq i64 %i.in, -9223372036854775798
  br i1 %.not77.i.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %.sroa.14110.0.copyload112 = load i64, ptr %.sroa.14110.0..sroa_idx111, align 8, !noalias !204
  %.sroa.21116.0.copyload118 = load i64, ptr %.sroa.21116.0..sroa_idx117, align 8, !noalias !204
  %.sroa.24.0.copyload125 = load i64, ptr %.sroa.24.0..sroa_idx124, align 8, !noalias !204
  %.sroa.27132.0.copyload134 = load ptr, ptr %.sroa.27132.0..sroa_idx133, align 8, !noalias !204
  %i.io = load <2 x i64>, ptr %.sroa.28.0..sroa_idx141, align 8, !noalias !204
  %.sroa.31.0.copyload148 = load ptr, ptr %.sroa.31.0..sroa_idx147, align 8, !noalias !204
  %.sroa.32.0.copyload151 = load i64, ptr %.sroa.32.0..sroa_idx150, align 8, !noalias !204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !202
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !202
  br label %_RINvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_13TableVerifier11visit_unionNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema4TypeNCNvXs3Y_B1h_NtB1h_5FieldNtB6_10Verifiable12run_verifier0ReB2U_ECs14kWLkQVSKO_14deltalake_core.exit.i

bb.bu:                                            ; preds = %bb.bg, %bb.bh, %bb.bs, %bb.bo, %bb.be, %bb.bc
  %.sroa.0108.0.ph = phi i64 [ %i.hi, %bb.bc ], [ %i.hm, %bb.be ], [ %i.in, %bb.bs ], [ %i.if, %bb.bo ], [ 0, %bb.bh ], [ 0, %bb.bg ]
  %.sroa.14110.0.ph = phi i64 [ %i.hj, %bb.bc ], [ %i.hn, %bb.be ], [ %.sroa.14110.0.copyload112, %bb.bs ], [ %.sroa.14110.0.copyload, %bb.bo ], [ 8, %bb.bh ], [ 8, %bb.bg ]
  %.sroa.21116.0.ph = phi i64 [ %i.hk, %bb.bc ], [ %i.ho, %bb.be ], [ %.sroa.21116.0.copyload118, %bb.bs ], [ %.sroa.21116.0.copyload, %bb.bo ], [ 0, %bb.bh ], [ 0, %bb.bg ]
  %.sroa.24.0.ph = phi i64 [ %.sroa.24.24.copyload, %bb.bc ], [ %.sroa.24.24.copyload131, %bb.be ], [ %.sroa.24.0.copyload125, %bb.bs ], [ %.sroa.24.0.copyload, %bb.bo ], [ -9223372036854775808, %bb.bh ], [ -9223372036854775808, %bb.bg ]
  %.sroa.27132.0.ph = phi ptr [ %.sroa.27132.24.copyload, %bb.bc ], [ %.sroa.27132.24.copyload140, %bb.be ], [ %.sroa.27132.0.copyload134, %bb.bs ], [ %.sroa.27132.0.copyload, %bb.bo ], [ @294, %bb.bh ], [ @294, %bb.bg ]
  %.sroa.31.3.ph = phi ptr [ %.sroa.31.24.copyload, %bb.bc ], [ %.sroa.31.24.copyload149, %bb.be ], [ %.sroa.31.0.copyload148, %bb.bs ], [ %.sroa.31.0.copyload, %bb.bo ], [ @295, %bb.bh ], [ @295, %bb.bg ]
  %.sroa.32.3.ph = phi i64 [ %.sroa.32.24.copyload, %bb.bc ], [ %.sroa.32.24.copyload152, %bb.be ], [ %.sroa.32.0.copyload151, %bb.bs ], [ %.sroa.32.0.copyload, %bb.bo ], [ 5, %bb.bh ], [ 5, %bb.bg ]
  %i.ip = phi <2 x i64> [ %i.hl, %bb.bc ], [ %i.hp, %bb.be ], [ %i.io, %bb.bs ], [ %i.ig, %bb.bo ], [ <i64 9, i64 -9223372036854775808>, %bb.bh ], [ <i64 9, i64 -9223372036854775808>, %bb.bg ]
  store i64 %.sroa.0108.0.ph, ptr %i.aw, align 8, !alias.scope !161, !noalias !168
  store i64 %.sroa.14110.0.ph, ptr %.sroa.274.0..sroa_idx.i, align 8, !noalias !168
  store i64 %.sroa.21116.0.ph, ptr %.sroa.292.i.sroa.4.0..sroa.292.0..sroa_idx.i.sroa_idx, align 8, !noalias !168
  store i64 %.sroa.24.0.ph, ptr %.sroa.292.i.sroa.5.0..sroa.292.0..sroa_idx.i.sroa_idx, align 8, !noalias !168
  store ptr %.sroa.27132.0.ph, ptr %.sroa.2101.i.sroa.6.0..sroa.2101.0..sroa_idx.i.sroa_idx, align 8, !noalias !168
  store <2 x i64> %i.ip, ptr %.sroa.375.0..sroa_idx.i, align 8, !noalias !168
  store ptr %.sroa.31.3.ph, ptr %.sroa.3102.i.sroa.5.0..sroa.3102.0..sroa_idx.i.sroa_idx, align 8, !noalias !168
  store i64 %.sroa.32.3.ph, ptr %.sroa.3102.i.sroa.6.0..sroa.3102.0..sroa_idx.i.sroa_idx, align 8, !noalias !168
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18105)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !164
  br label %bb.eq

_RINvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_13TableVerifier11visit_unionNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema4TypeNCNvXs3Y_B1h_NtB1h_5FieldNtB6_10Verifiable12run_verifier0ReB2U_ECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.bh, %bb.bt
  %.sroa.24.8.copyload128 = load i64, ptr %.sroa.631.i.sroa.8.0..sroa_idx, align 16, !alias.scope !229, !noalias !164
  %.sroa.27132.8.copyload137 = load ptr, ptr %.sroa.27132.8..sroa_idx136, align 8, !alias.scope !229, !noalias !164
  %i.iq = load <2 x i64>, ptr %i.ao, align 16, !alias.scope !229, !noalias !164
  store <2 x i64> %i.iq, ptr %i.an, align 16, !noalias !164
  store i64 %.sroa.24.8.copyload128, ptr %.sroa.625.i.sroa.8.0..sroa_idx, align 16, !noalias !164
  store ptr %.sroa.27132.8.copyload137, ptr %.sroa.625.i.sroa.9.0..sroa_idx, align 8, !noalias !164
  call void @llvm.experimental.noalias.scope.decl(metadata !230), !noalias !119
  call void @llvm.experimental.noalias.scope.decl(metadata !233), !noalias !119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !235
  call void @_RNvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB5_13TableVerifier5deref(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.an, i16 noundef 12), !noalias !236, !inline_history !167
  %i.ir = load i64, ptr %i.y, align 8, !range !99, !noalias !235, !noundef !3 ; 2 uses
  %.not.i155.i = icmp eq i64 %i.ir, -9223372036854775798
  %i.is = load i64, ptr %i.ek, align 8, !noalias !235 ; 2 uses
  %i.it = load i64, ptr %i.el, align 8, !noalias !235 ; 13 uses
  br i1 %.not.i155.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %_RINvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_13TableVerifier11visit_unionNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema4TypeNCNvXs3Y_B1h_NtB1h_5FieldNtB6_10Verifiable12run_verifier0ReB2U_ECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.18105, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.718.0..sroa_idx.i156.i, i64 48, i1 false), !noalias !237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !235
  br label %bb.ek

bb.bw:                                            ; preds = %_RINvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_13TableVerifier11visit_unionNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema4TypeNCNvXs3Y_B1h_NtB1h_5FieldNtB6_10Verifiable12run_verifier0ReB2U_ECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !235
  %i.iu = trunc nuw i64 %i.is to i1
  br i1 %i.iu, label %bb.bx, label %bb.el

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !235
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !235
  %i.iv = load ptr, ptr %i.an, align 16, !alias.scope !233, !noalias !238, !nonnull !3, !align !100, !noundef !3 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !239), !noalias !119
  call void @llvm.experimental.noalias.scope.decl(metadata !242), !noalias !119
  call void @llvm.experimental.noalias.scope.decl(metadata !244), !noalias !119
  call void @llvm.experimental.noalias.scope.decl(metadata !247), !noalias !119
  %i.iw = and i64 %i.it, 3
  %i.ix = icmp eq i64 %i.iw, 0
  br i1 %i.ix, label %bb.by, label %bb.ch

bb.by:                                            ; preds = %bb.bx
  %i.iy = call i64 @llvm.uadd.sat.i64(i64 %i.it, i64 4) ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.ja = load i64, ptr %i.iz, align 8, !alias.scope !250, !noalias !251, !noundef !3 ; 9 uses
  %i.jb = icmp ugt i64 %i.iy, %i.ja
  br i1 %i.jb, label %bb.ch, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iv, i64 40 ; 2 uses
  %i.jd = load i64, ptr %i.jc, align 8, !alias.scope !250, !noalias !251, !noundef !3
  %i.je = add i64 %i.jd, 4                        ; 2 uses
  store i64 %i.je, ptr %i.jc, align 8, !alias.scope !250, !noalias !251
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  %i.jg = load ptr, ptr %i.jf, align 8, !alias.scope !250, !noalias !251, !nonnull !3, !align !100, !noundef !3
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  %i.ji = load i64, ptr %i.jh, align 8, !noalias !254, !noundef !3
  %i.jj = icmp ugt i64 %i.je, %i.ji
  br i1 %i.jj, label %bb.ch, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %bb.bz
  %i.jk = icmp ult i64 %i.it, %i.ja
  br i1 %i.jk, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  %i.jl = load ptr, ptr %i.iv, align 8, !alias.scope !255, !noalias !256, !nonnull !3, !noundef !3 ; 4 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.it
  %i.jn = load i8, ptr %i.jm, align 1, !noalias !257, !noundef !3
  %i.jo = or disjoint i64 %i.it, 1                ; 3 uses
  %i.jp = icmp ult i64 %i.jo, %i.ja
  br i1 %i.jp, label %bb.cc, label %bb.cd

bb.cb:                                            ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.it, i64 noundef %i.ja, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #51, !noalias !257, !inline_history !167
  unreachable

bb.cc:                                            ; preds = %bb.ca
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.jo
  %i.jr = load i8, ptr %i.jq, align 1, !noalias !257, !noundef !3
  %i.js = or disjoint i64 %i.it, 2                ; 3 uses
  %i.jt = icmp ult i64 %i.js, %i.ja
  br i1 %i.jt, label %bb.ce, label %bb.cf

bb.cd:                                            ; preds = %bb.ca
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.jo, i64 noundef %i.ja, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #51, !noalias !257, !inline_history !167
  unreachable

bb.ce:                                            ; preds = %bb.cc
  %i.ju = or disjoint i64 %i.it, 3                ; 3 uses
  %i.jv = icmp ult i64 %i.ju, %i.ja
  br i1 %i.jv, label %bb.ci, label %bb.cg

bb.cf:                                            ; preds = %bb.cc
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.js, i64 noundef %i.ja, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #51, !noalias !257, !inline_history !167
  unreachable

bb.cg:                                            ; preds = %bb.ce
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.ju, i64 noundef %i.ja, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #51, !noalias !257, !inline_history !167
  unreachable

bb.ch:                                            ; preds = %bb.bz, %bb.by, %bb.bx
  %.sroa.13.0.ph.i.i.i = phi i64 [ undef, %bb.bz ], [ -9223372036854775808, %bb.bx ], [ %i.it, %bb.by ]
  %.sroa.14.0.ph.i.i.i = phi i64 [ undef, %bb.bz ], [ ptrtoint (ptr @12 to i64), %bb.bx ], [ %i.iy, %bb.by ]
  %.sroa.0.0.ph.i.i.i = phi i64 [ -9223372036854775800, %bb.bz ], [ -9223372036854775804, %bb.bx ], [ -9223372036854775803, %bb.by ]
  store i64 %.sroa.0.0.ph.i.i.i, ptr %i.w, align 8, !alias.scope !239, !noalias !258
  store i32 0, ptr %.sroa.256.0..sroa_idx.i.i.i.i, align 8, !alias.scope !239, !noalias !258
  store i32 0, ptr %.sroa.312.0..sroa_idx.i.i.i, align 4, !alias.scope !239, !noalias !258
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.265.sroa.2.0..sroa.265.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !239, !noalias !258
  store i64 0, ptr %.sroa.265.sroa.3.0..sroa.265.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !239, !noalias !258
  store i64 %.sroa.13.0.ph.i.i.i, ptr %.sroa.5104.0..sroa_idx.i.i.i.i, align 8, !alias.scope !239, !noalias !258
  store i64 %.sroa.14.0.ph.i.i.i, ptr %.sroa.357.0..sroa_idx.i.i.i.i, align 8, !alias.scope !239, !noalias !258
  store i64 3, ptr %.sroa.312.sroa.6.0..sroa.312.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !239, !noalias !258
  store i64 %i.it, ptr %.sroa.312.sroa.7.0..sroa.312.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !239, !noalias !258
  br label %bb.eh

bb.ci:                                            ; preds = %bb.ce
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.js
  %i.jx = load i8, ptr %i.jw, align 1, !noalias !257, !noundef !3
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.ju
  %i.jz = load i8, ptr %i.jy, align 1, !noalias !257, !noundef !3
  %.sroa.6.0.insert.ext.i.i.i.i = zext i8 %i.jz to i64
  %.sroa.6.0.insert.shift.i.i.i.i = shl nuw nsw i64 %.sroa.6.0.insert.ext.i.i.i.i, 24
  %.sroa.5.0.insert.ext.i.i.i.i = zext i8 %i.jx to i64
  %.sroa.5.0.insert.shift.i.i.i.i = shl nuw nsw i64 %.sroa.5.0.insert.ext.i.i.i.i, 16
  %.sroa.4.0.insert.ext.i.i.i.i = zext i8 %i.jr to i64
  %.sroa.4.0.insert.shift.i.i.i.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i.i.i, 8
  %.sroa.0.0.insert.ext.i.i.i.i = zext i8 %i.jn to i64
  %.sroa.5.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.4.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i
  %.sroa.4.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.5.0.insert.insert.i.i.i.i, %.sroa.5.0.insert.shift.i.i.i.i
  %.sroa.0.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.4.0.insert.insert.i.i.i.i, %.sroa.6.0.insert.shift.i.i.i.i
  %i.ka = call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.0.insert.insert.i.i.i.i, i64 %i.it)
  call void @llvm.experimental.noalias.scope.decl(metadata !259), !noalias !119
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.22.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17167.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16179.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15191.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !262
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.631.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !263
  call fastcc void @_RNvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB5_8Verifier11visit_table(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.iv, i64 noundef %i.ka) #50, !noalias !265, !inline_history !167
  %i.kb = load i64, ptr %i.u, align 8, !range !99, !noalias !263, !noundef !3 ; 2 uses
  %.not.i.i.i.i42 = icmp eq i64 %i.kb, -9223372036854775798
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.631.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ep, i64 32, i1 false), !noalias !263
  br i1 %.not.i.i.i.i42, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.357.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.654.0..sroa_idx.i.i.i.i, i64 32, i1 false), !noalias !266
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !263
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.256.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.631.i.i.i.i, i64 32, i1 false), !noalias !266
  store i64 %i.kb, ptr %i.w, align 8, !alias.scope !267, !noalias !266
  br label %bb.eg

bb.ck:                                            ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !263
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.631.i.i.i.i, i64 32, i1 false), !noalias !263
  call void @llvm.experimental.noalias.scope.decl(metadata !268), !noalias !119
  call void @llvm.experimental.noalias.scope.decl(metadata !271), !noalias !119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !273
  call void @_RNvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB5_13TableVerifier5deref(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.t, i16 noundef 4), !noalias !274, !inline_history !167
  %i.kc = load i64, ptr %i.p, align 8, !range !99, !noalias !273, !noundef !3 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.kc, -9223372036854775798
  %i.kd = load i64, ptr %i.eq, align 8, !noalias !273 ; 2 uses
  %i.ke = load i64, ptr %i.er, align 8, !noalias !273 ; 6 uses
  br i1 %.not.i.i.i.i.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.15191.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.718.0..sroa_idx.i.i.i.i.i, i64 48, i1 false), !noalias !263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !273
  br label %bb.cx

bb.cm:                                            ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !273
  %i.kf = trunc nuw i64 %i.kd to i1
  br i1 %i.kf, label %bb.cn, label %bb.cy

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !273
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !273
  %i.kg = load ptr, ptr %i.t, align 16, !alias.scope !271, !noalias !275, !nonnull !3, !align !100, !noundef !3 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !276), !noalias !119
end_hunk_1
begin_hunk_2_@_RINvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_13TableVerifier11visit_fieldINtNtB8_10primitives15ForwardsUOffsetINtNtB8_6vector6VectorIB1g_NtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema8KeyValueEEEReECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.s = load ptr, ptr %1, align 8, !nonnull !3, !align !100, !noundef !3 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !357)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !360)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !365)
  %i.t = and i64 %i.q, 3
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.v = tail call i64 @llvm.uadd.sat.i64(i64 %i.q, i64 4) ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !368, !noalias !369, !noundef !3 ; 19 uses
  %i.y = icmp ugt i64 %i.v, %i.x
  br i1 %i.y, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 40 ; 6 uses
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !368, !noalias !369, !noundef !3 ; 2 uses
  %i.ab = add i64 %i.aa, 4                        ; 2 uses
  store i64 %i.ab, ptr %i.z, align 8, !alias.scope !368, !noalias !369
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !368, !noalias !369, !nonnull !3, !align !100, !noundef !3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !noalias !372, !noundef !3 ; 3 uses
  %i.ag = icmp ugt i64 %i.ab, %i.af
  br i1 %i.ag, label %bb.n, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.f
  %i.ah = icmp ult i64 %i.q, %i.x
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.ai = load ptr, ptr %i.s, align 8, !alias.scope !373, !noalias !374, !nonnull !3, !noundef !3 ; 8 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.q
  %i.ak = load i8, ptr %i.aj, align 1, !noalias !375, !noundef !3
  %i.al = or disjoint i64 %i.q, 1                 ; 3 uses
  %i.am = icmp ult i64 %i.al, %i.x
  br i1 %i.am, label %bb.i, label %bb.j

bb.h:                                             ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.q, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #51, !noalias !375
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.al
  %i.ao = load i8, ptr %i.an, align 1, !noalias !375, !noundef !3
  %i.ap = or disjoint i64 %i.q, 2                 ; 3 uses
  %i.aq = icmp ult i64 %i.ap, %i.x
  br i1 %i.aq, label %bb.k, label %bb.l

bb.j:                                             ; preds = %bb.g
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.al, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #51, !noalias !375
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ar = or disjoint i64 %i.q, 3                 ; 3 uses
  %i.as = icmp ult i64 %i.ar, %i.x
  br i1 %i.as, label %bb.o, label %bb.m

bb.l:                                             ; preds = %bb.i
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.ap, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #51, !noalias !375
  unreachable

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.ar, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #51, !noalias !375
  unreachable

bb.n:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.13.0.ph.i = phi i64 [ undef, %bb.f ], [ -9223372036854775808, %bb.d ], [ %i.q, %bb.e ]
  %.sroa.14.0.ph.i = phi i64 [ undef, %bb.f ], [ ptrtoint (ptr @12 to i64), %bb.d ], [ %i.v, %bb.e ]
  %.sroa.0.0.ph.i = phi i64 [ -9223372036854775800, %bb.f ], [ -9223372036854775804, %bb.d ], [ -9223372036854775803, %bb.e ]
  store i64 %.sroa.0.0.ph.i, ptr %i.j, align 8, !alias.scope !357, !noalias !360
  %.sroa.211.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 0, ptr %.sroa.211.0..sroa_idx.i, align 8, !alias.scope !357, !noalias !360
  %.sroa.312.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %.sroa.312.0..sroa_idx.i, align 4, !alias.scope !357, !noalias !360
  %.sroa.312.sroa.2.0..sroa.312.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.312.sroa.2.0..sroa.312.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !357, !noalias !360
  %.sroa.312.sroa.3.0..sroa.312.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 0, ptr %.sroa.312.sroa.3.0..sroa.312.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !357, !noalias !360
  %.sroa.312.sroa.4.0..sroa.312.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i64 %.sroa.13.0.ph.i, ptr %.sroa.312.sroa.4.0..sroa.312.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !357, !noalias !360
  %.sroa.312.sroa.5.0..sroa.312.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i64 %.sroa.14.0.ph.i, ptr %.sroa.312.sroa.5.0..sroa.312.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !357, !noalias !360
  %.sroa.312.sroa.6.0..sroa.312.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store i64 3, ptr %.sroa.312.sroa.6.0..sroa.312.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !357, !noalias !360
  %.sroa.312.sroa.7.0..sroa.312.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store i64 %i.q, ptr %.sroa.312.sroa.7.0..sroa.312.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !357, !noalias !360
  br label %bb.aw

bb.o:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ap
  %i.au = load i8, ptr %i.at, align 1, !noalias !375, !noundef !3
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ar
  %i.aw = load i8, ptr %i.av, align 1, !noalias !375, !noundef !3
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !376)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !384)
  %i.ay = and i64 %i.ax, 3
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %bb.p, label %bb.aa

bb.p:                                             ; preds = %bb.o
  %i.ba = tail call i64 @llvm.uadd.sat.i64(i64 %i.ax, i64 4) ; 2 uses
  %i.bb = icmp ugt i64 %i.ba, %i.x
  br i1 %i.bb, label %bb.aa, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = add i64 %i.aa, 8                        ; 3 uses
  store i64 %i.bc, ptr %i.z, align 8, !alias.scope !387, !noalias !390
  %i.bd = icmp ugt i64 %i.bc, %i.af
  br i1 %i.bd, label %bb.aa, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %bb.q
  %i.be = icmp ult i64 %i.ax, %i.x
  br i1 %i.be, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ax
  %i.bg = load i8, ptr %i.bf, align 1, !noalias !394, !noundef !3
  %i.bh = or disjoint i64 %i.ax, 1                ; 3 uses
  %i.bi = icmp ult i64 %i.bh, %i.x
  br i1 %i.bi, label %bb.t, label %bb.u

bb.s:                                             ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.ax, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #51, !noalias !394
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bh
  %i.bk = load i8, ptr %i.bj, align 1, !noalias !394, !noundef !3
  %i.bl = or disjoint i64 %i.ax, 2                ; 3 uses
  %i.bm = icmp ult i64 %i.bl, %i.x
  br i1 %i.bm, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.r
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.bh, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #51, !noalias !394
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.bn = or disjoint i64 %i.ax, 3                ; 3 uses
  %i.bo = icmp ult i64 %i.bn, %i.x
  br i1 %i.bo, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.bl, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #51, !noalias !394
  unreachable

bb.x:                                             ; preds = %bb.v
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.bn, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #51, !noalias !394
  unreachable

bb.y:                                             ; preds = %bb.v
  %i.bp = add nuw i64 %i.ax, 4                    ; 6 uses
  %.sroa.4.0.insert.ext.i.i.i.i = zext i8 %i.bk to i64
  %.sroa.0.0.insert.ext.i.i.i.i = zext i8 %i.bg to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bl
  %i.br = load i8, ptr %i.bq, align 1, !noalias !394, !noundef !3
  %.sroa.5.0.insert.ext.i.i.i.i = zext i8 %i.br to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bn
  %i.bt = load i8, ptr %i.bs, align 1, !noalias !394, !noundef !3
  %.sroa.6.0.insert.ext.i.i.i.i = zext i8 %i.bt to i64
  %i.bu = shl nuw nsw i64 %.sroa.6.0.insert.ext.i.i.i.i, 26
  %i.bv = shl nuw nsw i64 %.sroa.5.0.insert.ext.i.i.i.i, 18
  %i.bw = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i.i.i, 10
  %i.bx = shl nuw nsw i64 %.sroa.0.0.insert.ext.i.i.i.i, 2
  %i.by = or disjoint i64 %i.bw, %i.bx
  %i.bz = or disjoint i64 %i.by, %i.bv
  %i.ca = or disjoint i64 %i.bz, %i.bu            ; 2 uses
  %i.cb = tail call i64 @llvm.uadd.sat.i64(i64 %i.bp, i64 %i.ca) ; 6 uses
  %i.cc = icmp ugt i64 %i.cb, %i.x
  br i1 %i.cc, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cd = add i64 %i.ca, %i.bc                    ; 2 uses
  store i64 %i.cd, ptr %i.z, align 8, !alias.scope !395, !noalias !396
  %i.ce = icmp ugt i64 %i.cd, %i.af
  br i1 %i.ce, label %bb.aa, label %_RINvNtCs2TwJzntlzha_11flatbuffers8verifier19verify_vector_rangeINtNtB4_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema8KeyValueEECs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.q, %bb.p, %bb.o
  %.sroa.23.0.ph.i.i = phi i64 [ %i.ba, %bb.p ], [ %i.cb, %bb.y ], [ ptrtoint (ptr @12 to i64), %bb.o ], [ undef, %bb.q ], [ %i.cb, %bb.z ]
  %.sroa.21.0.ph.i.i = phi i64 [ %i.ax, %bb.p ], [ %i.bp, %bb.y ], [ -9223372036854775808, %bb.o ], [ undef, %bb.q ], [ %i.bp, %bb.z ]
  %.sroa.0.0.ph.i14.i = phi i64 [ -9223372036854775803, %bb.p ], [ -9223372036854775803, %bb.y ], [ -9223372036854775804, %bb.o ], [ -9223372036854775800, %bb.q ], [ -9223372036854775800, %bb.z ]
  store i64 %.sroa.0.0.ph.i14.i, ptr %i.j, align 8, !alias.scope !397, !noalias !398
  %.sroa.217.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 0, ptr %.sroa.217.0..sroa_idx.i.i, align 8, !alias.scope !397, !noalias !398
  %.sroa.318.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 8, ptr %.sroa.318.0..sroa_idx.i.i, align 8, !alias.scope !397, !noalias !398
  %.sroa.419.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 0, ptr %.sroa.419.0..sroa_idx.i.i, align 8, !alias.scope !397, !noalias !398
  %.sroa.419.sroa.2.0..sroa.419.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i64 %.sroa.21.0.ph.i.i, ptr %.sroa.419.sroa.2.0..sroa.419.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !397, !noalias !398
  %.sroa.419.sroa.3.0..sroa.419.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i64 %.sroa.23.0.ph.i.i, ptr %.sroa.419.sroa.3.0..sroa.419.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !397, !noalias !398
  %.sroa.419.sroa.4.0..sroa.419.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store i64 3, ptr %.sroa.419.sroa.4.0..sroa.419.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !397, !noalias !398
  %.sroa.419.sroa.5.0..sroa.419.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store i64 %i.ax, ptr %.sroa.419.sroa.5.0..sroa.419.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !397, !noalias !398
  br label %bb.aw

_RINvNtCs2TwJzntlzha_11flatbuffers8verifier19verify_vector_rangeINtNtB4_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema8KeyValueEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.z
  %.not.i.i.i85.not.i.i = icmp ugt i64 %i.cb, %i.bp
  br i1 %.not.i.i.i85.not.i.i, label %.lr.ph.i.i, label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_7step_by6StepByINtNtNtBa_3ops5range5RangejEEENtNtNtB8_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCs2TwJzntlzha_11flatbuffers8verifier19verify_vector_rangeINtNtB4_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema8KeyValueEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %.sroa.06.0.i.i.i.i = sub nuw i64 %i.cb, %i.bp
  %i.cf = lshr i64 %.sroa.06.0.i.i.i.i, 2
  %i.cg = and i64 %i.cb, 3
  %.not.i.i.i.i = icmp ne i64 %i.cg, 0
  %i.ch = zext i1 %.not.i.i.i.i to i64
  %.sroa.05.0.i.i.i.i = add nuw nsw i64 %i.cf, %i.ch
  %i.ci = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.636.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.339.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 4 uses
  %.sroa.238.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.645.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.ck = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.660.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.862.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.963.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.366.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.sroa.467.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.568.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %.sroa.312.0..sroa_idx.i25.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %.sroa.312.sroa.6.0..sroa.312.0..sroa_idx.sroa_idx.i30.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.312.sroa.7.0..sroa.312.0..sroa_idx.sroa_idx.i31.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.cl = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %bb.ab

bb.ab:                                            ; preds = %bb.au, %.lr.ph.i.i
  %.sroa.9.089.i.i = phi i64 [ %.sroa.05.0.i.i.i.i, %.lr.ph.i.i ], [ %i.co, %bb.au ]
  %.sroa.645.087.i.i = phi i64 [ %i.bp, %.lr.ph.i.i ], [ %i.cn, %bb.au ] ; 12 uses
  %.sroa.044.086.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.cp, %bb.au ] ; 2 uses
  %i.cn = add i64 %.sroa.645.087.i.i, 4
  %i.co = add i64 %.sroa.9.089.i.i, -1            ; 2 uses
  %i.cp = add i64 %.sroa.044.086.i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !399
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !399
  call void @llvm.experimental.noalias.scope.decl(metadata !400)
  call void @llvm.experimental.noalias.scope.decl(metadata !403)
  call void @llvm.experimental.noalias.scope.decl(metadata !405)
  call void @llvm.experimental.noalias.scope.decl(metadata !408)
  %i.cq = call i64 @llvm.uadd.sat.i64(i64 %.sroa.645.087.i.i, i64 4) ; 2 uses
  %i.cr = load i64, ptr %i.w, align 8, !alias.scope !411, !noalias !412, !noundef !3 ; 9 uses
  %i.cs = icmp ugt i64 %i.cq, %i.cr
  br i1 %i.cs, label %bb.ak, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ct = load i64, ptr %i.z, align 8, !alias.scope !411, !noalias !412, !noundef !3
  %i.cu = add i64 %i.ct, 4                        ; 2 uses
  store i64 %i.cu, ptr %i.z, align 8, !alias.scope !411, !noalias !412
  %i.cv = load ptr, ptr %i.ac, align 8, !alias.scope !411, !noalias !412, !nonnull !3, !align !100, !noundef !3
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load i64, ptr %i.cw, align 8, !noalias !415, !noundef !3
  %i.cy = icmp ugt i64 %i.cu, %i.cx
  br i1 %i.cy, label %bb.ak, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i32.i.i

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i32.i.i: ; preds = %bb.ac
  %i.cz = icmp ult i64 %.sroa.645.087.i.i, %i.cr
  br i1 %i.cz, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i32.i.i
  %i.da = load ptr, ptr %i.s, align 8, !alias.scope !416, !noalias !417, !nonnull !3, !noundef !3 ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %.sroa.645.087.i.i
  %i.dc = load i8, ptr %i.db, align 1, !noalias !418, !noundef !3
  %i.dd = or disjoint i64 %.sroa.645.087.i.i, 1   ; 3 uses
  %i.de = icmp ult i64 %i.dd, %i.cr
  br i1 %i.de, label %bb.af, label %bb.ag

bb.ae:                                            ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i32.i.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %.sroa.645.087.i.i, i64 noundef %i.cr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #51, !noalias !418
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dd
  %i.dg = load i8, ptr %i.df, align 1, !noalias !418, !noundef !3
  %i.dh = or disjoint i64 %.sroa.645.087.i.i, 2   ; 3 uses
  %i.di = icmp ult i64 %i.dh, %i.cr
  br i1 %i.di, label %bb.ah, label %bb.ai

bb.ag:                                            ; preds = %bb.ad
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.dd, i64 noundef %i.cr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #51, !noalias !418
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.dj = or disjoint i64 %.sroa.645.087.i.i, 3   ; 3 uses
  %i.dk = icmp ult i64 %i.dj, %i.cr
  br i1 %i.dk, label %bb.al, label %bb.aj

bb.ai:                                            ; preds = %bb.af
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.dh, i64 noundef %i.cr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #51, !noalias !418
  unreachable

bb.aj:                                            ; preds = %bb.ah
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.dj, i64 noundef %i.cr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #51, !noalias !418
  unreachable

bb.ak:                                            ; preds = %bb.ac, %bb.ab
  %.sroa.0.0.ph.i23.i.i = phi i64 [ -9223372036854775800, %bb.ac ], [ -9223372036854775803, %bb.ab ]
  store i64 %.sroa.0.0.ph.i23.i.i, ptr %i.g, align 8, !alias.scope !400, !noalias !419
  store i32 0, ptr %.sroa.238.0..sroa_idx.i.i.i.i, align 8, !alias.scope !400, !noalias !419
  store i32 0, ptr %.sroa.312.0..sroa_idx.i25.i.i, align 4, !alias.scope !400, !noalias !419
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.366.0..sroa_idx.i.i.i.i, align 8, !alias.scope !400, !noalias !419
  store i64 0, ptr %.sroa.467.0..sroa_idx.i.i.i.i, align 8, !alias.scope !400, !noalias !419
  store i64 %.sroa.645.087.i.i, ptr %.sroa.568.0..sroa_idx.i.i.i.i, align 8, !alias.scope !400, !noalias !419
  store i64 %i.cq, ptr %.sroa.339.0..sroa_idx.i.i.i.i, align 8, !alias.scope !400, !noalias !419
  store i64 3, ptr %.sroa.312.sroa.6.0..sroa.312.0..sroa_idx.sroa_idx.i30.i.i, align 8, !alias.scope !400, !noalias !419
  store i64 %.sroa.645.087.i.i, ptr %.sroa.312.sroa.7.0..sroa.312.0..sroa_idx.sroa_idx.i31.i.i, align 8, !alias.scope !400, !noalias !419
  br label %_RNvXs6_NtCs2TwJzntlzha_11flatbuffers8verifierINtNtB7_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema8KeyValueENtB5_10Verifiable12run_verifierCs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.al:                                            ; preds = %bb.ah
  %i.dl = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dh
  %i.dm = load i8, ptr %i.dl, align 1, !noalias !418, !noundef !3
  %i.dn = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dj
  %i.do = load i8, ptr %i.dn, align 1, !noalias !418, !noundef !3
  %.sroa.6.0.insert.ext.i.i33.i.i = zext i8 %i.do to i64
  %.sroa.6.0.insert.shift.i.i.i.i = shl nuw nsw i64 %.sroa.6.0.insert.ext.i.i33.i.i, 24
  %.sroa.5.0.insert.ext.i.i34.i.i = zext i8 %i.dm to i64
  %.sroa.5.0.insert.shift.i.i.i.i = shl nuw nsw i64 %.sroa.5.0.insert.ext.i.i34.i.i, 16
  %.sroa.4.0.insert.ext.i.i35.i.i = zext i8 %i.dg to i64
  %.sroa.4.0.insert.shift.i.i.i.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i35.i.i, 8
  %.sroa.0.0.insert.ext.i.i36.i.i = zext i8 %i.dc to i64
  %.sroa.5.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.4.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i.i36.i.i
  %.sroa.4.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.5.0.insert.insert.i.i.i.i, %.sroa.5.0.insert.shift.i.i.i.i
  %.sroa.0.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.4.0.insert.insert.i.i.i.i, %.sroa.6.0.insert.shift.i.i.i.i
  %i.dp = call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.0.insert.insert.i.i.i.i, i64 %.sroa.645.087.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !420)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !423
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !423
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !424
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.613.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !424
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.619.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !424
  call fastcc void @_RNvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB5_8Verifier11visit_table(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.s, i64 noundef %i.dp) #50, !noalias !426
  %i.dq = load i64, ptr %i.c, align 8, !range !99, !noalias !424, !noundef !3 ; 2 uses
  %.not.i.i37.i.i = icmp eq i64 %i.dq, -9223372036854775798
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.619.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ci, i64 32, i1 false), !noalias !424
  br i1 %.not.i.i37.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.339.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.636.0..sroa_idx.i.i.i.i, i64 32, i1 false), !noalias !427
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.238.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.619.i.i.i.i, i64 32, i1 false), !noalias !427
  store i64 %i.dq, ptr %i.g, align 8, !alias.scope !428, !noalias !427
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !424
  br label %bb.as

bb.an:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.619.i.i.i.i, i64 32, i1 false), !noalias !424
  call fastcc void @_RINvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_13TableVerifier11visit_fieldINtNtB8_10primitives15ForwardsUOffsetReEB1Q_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.d, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @274, i64 noundef 3, i16 noundef 4) #50
  %i.dr = load i64, ptr %i.d, align 8, !range !99, !noalias !424, !noundef !3 ; 2 uses
  %.not70.i.i.i.i = icmp eq i64 %i.dr, -9223372036854775798
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.613.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.cj, i64 32, i1 false), !noalias !424
  br i1 %.not70.i.i.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.339.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.645.0..sroa_idx.i.i.i.i, i64 32, i1 false), !noalias !427
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.238.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.613.i.i.i.i, i64 32, i1 false), !noalias !427
  store i64 %i.dr, ptr %i.g, align 8, !alias.scope !428, !noalias !427
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !424
  br label %bb.as

bb.ap:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.613.i.i.i.i, i64 32, i1 false), !noalias !424
  call fastcc void @_RINvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_13TableVerifier11visit_fieldINtNtB8_10primitives15ForwardsUOffsetReEB1Q_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.e, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @275, i64 noundef 5, i16 noundef 6) #50
  %i.ds = load i64, ptr %i.e, align 8, !range !99, !noalias !424, !noundef !3 ; 2 uses
  %.not71.i.i.i.i = icmp eq i64 %i.ds, -9223372036854775798
  %.sroa.049.0.copyload.i.i.i.i = load ptr, ptr %i.ck, align 8, !noalias !424 ; 2 uses
  br i1 %.not71.i.i.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %.sroa.862.0.copyload.i.i.i.i = load i64, ptr %.sroa.862.0..sroa_idx.i.i.i.i, align 8, !noalias !424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.339.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.963.0..sroa_idx.i.i.i.i, i64 32, i1 false), !noalias !427
  %i.dt = load <2 x i64>, ptr %.sroa.660.0..sroa_idx.i.i.i.i, align 8, !noalias !424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !424
  store i64 %i.ds, ptr %i.g, align 8, !alias.scope !428, !noalias !427
  store ptr %.sroa.049.0.copyload.i.i.i.i, ptr %.sroa.238.0..sroa_idx.i.i.i.i, align 8, !alias.scope !428, !noalias !427
  store <2 x i64> %i.dt, ptr %.sroa.366.0..sroa_idx.i.i.i.i, align 8, !alias.scope !428, !noalias !427
  store i64 %.sroa.862.0.copyload.i.i.i.i, ptr %.sroa.568.0..sroa_idx.i.i.i.i, align 8, !alias.scope !428, !noalias !427
  br label %bb.as

end_hunk_2
begin_hunk_3_@_RINvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_13TableVerifier11visit_fieldINtNtB8_10primitives15ForwardsUOffsetReEB1Q_ECs14kWLkQVSKO_14deltalake_core:bb.a
  br i1 %i.k, label %bb.d, label %bb.ah

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.l = load ptr, ptr %1, align 8, !nonnull !3, !align !100, !noundef !3 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !448)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !451)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !453)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !456)
  %i.m = and i64 %i.j, 3
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.o = tail call i64 @llvm.uadd.sat.i64(i64 %i.j, i64 4) ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !459, !noalias !460, !noundef !3 ; 20 uses
  %i.r = icmp ugt i64 %i.o, %i.q
  br i1 %i.r, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 4 uses
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !459, !noalias !460, !noundef !3 ; 2 uses
  %i.u = add i64 %i.t, 4                          ; 2 uses
  store i64 %i.u, ptr %i.s, align 8, !alias.scope !459, !noalias !460
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !459, !noalias !460, !nonnull !3, !align !100, !noundef !3 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load i64, ptr %i.x, align 8, !noalias !463, !noundef !3 ; 3 uses
  %i.z = icmp ugt i64 %i.u, %i.y
  br i1 %i.z, label %bb.n, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.f
  %i.aa = icmp ult i64 %i.j, %i.q
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.ab = load ptr, ptr %i.l, align 8, !alias.scope !464, !noalias !465, !nonnull !3, !noundef !3 ; 10 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.j
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !466, !noundef !3
  %i.ae = or disjoint i64 %i.j, 1                 ; 3 uses
  %i.af = icmp ult i64 %i.ae, %i.q
  br i1 %i.af, label %bb.i, label %bb.j

bb.h:                                             ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.j, i64 noundef %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #51, !noalias !466
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae
  %i.ah = load i8, ptr %i.ag, align 1, !noalias !466, !noundef !3
  %i.ai = or disjoint i64 %i.j, 2                 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, %i.q
  br i1 %i.aj, label %bb.k, label %bb.l

bb.j:                                             ; preds = %bb.g
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.ae, i64 noundef %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #51, !noalias !466
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ak = or disjoint i64 %i.j, 3                 ; 3 uses
  %i.al = icmp ult i64 %i.ak, %i.q
  br i1 %i.al, label %bb.o, label %bb.m

bb.l:                                             ; preds = %bb.i
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.ai, i64 noundef %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #51, !noalias !466
  unreachable

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.ak, i64 noundef %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #51, !noalias !466
  unreachable

bb.n:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.13.0.ph.i = phi i64 [ undef, %bb.f ], [ -9223372036854775808, %bb.d ], [ %i.j, %bb.e ]
  %.sroa.14.0.ph.i = phi i64 [ undef, %bb.f ], [ ptrtoint (ptr @12 to i64), %bb.d ], [ %i.o, %bb.e ]
  %.sroa.0.0.ph.i = phi i64 [ -9223372036854775800, %bb.f ], [ -9223372036854775804, %bb.d ], [ -9223372036854775803, %bb.e ]
  store i64 %.sroa.0.0.ph.i, ptr %i.c, align 8, !alias.scope !448, !noalias !451
  %.sroa.211.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 0, ptr %.sroa.211.0..sroa_idx.i, align 8, !alias.scope !448, !noalias !451
  %.sroa.312.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %.sroa.312.0..sroa_idx.i, align 4, !alias.scope !448, !noalias !451
  %.sroa.312.sroa.2.0..sroa.312.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.312.sroa.2.0..sroa.312.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !448, !noalias !451
  %.sroa.312.sroa.3.0..sroa.312.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %.sroa.312.sroa.3.0..sroa.312.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !448, !noalias !451
  store i64 %.sroa.13.0.ph.i, ptr %.sink45.i.sroa.gep38, align 8, !alias.scope !448, !noalias !451
  store i64 %.sroa.14.0.ph.i, ptr %.sink.i.sroa.gep39, align 8, !alias.scope !448, !noalias !451
  store i64 3, ptr %.sink45.i.sroa.gep, align 8, !alias.scope !448, !noalias !451
  store i64 %i.j, ptr %.sink.i.sroa.gep, align 8, !alias.scope !448, !noalias !451
  br label %bb.ai

bb.o:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ai
  %i.an = load i8, ptr %i.am, align 1, !noalias !466, !noundef !3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ak
  %i.ap = load i8, ptr %i.ao, align 1, !noalias !466, !noundef !3
  %.sroa.6.0.insert.ext.i.i = zext i8 %i.ap to i64
  %.sroa.6.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.6.0.insert.ext.i.i, 24
  %.sroa.5.0.insert.ext.i.i = zext i8 %i.an to i64
  %.sroa.5.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.5.0.insert.ext.i.i, 16
  %.sroa.4.0.insert.ext.i.i = zext i8 %i.ah to i64
  %.sroa.4.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i, 8
  %.sroa.0.0.insert.ext.i.i = zext i8 %i.ad to i64
  %.sroa.5.0.insert.insert.i.i = or disjoint i64 %.sroa.4.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %.sroa.4.0.insert.insert.i.i = or disjoint i64 %.sroa.5.0.insert.insert.i.i, %.sroa.5.0.insert.shift.i.i
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.4.0.insert.insert.i.i, %.sroa.6.0.insert.shift.i.i
  %i.aq = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.0.insert.insert.i.i, i64 %i.j) ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !467)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !470)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !472)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !475)
  %i.ar = and i64 %i.aq, 3
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.p, label %bb.aa

bb.p:                                             ; preds = %bb.o
  %i.at = tail call i64 @llvm.uadd.sat.i64(i64 %i.aq, i64 4) ; 2 uses
  %i.au = icmp ugt i64 %i.at, %i.q
  br i1 %i.au, label %bb.aa, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = add i64 %i.t, 8                         ; 3 uses
  store i64 %i.av, ptr %i.s, align 8, !alias.scope !478, !noalias !481
  %i.aw = icmp ugt i64 %i.av, %i.y
  br i1 %i.aw, label %bb.aa, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %bb.q
  %i.ax = icmp ult i64 %i.aq, %i.q
  br i1 %i.ax, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aq
  %i.az = load i8, ptr %i.ay, align 1, !noalias !485, !noundef !3
  %i.ba = or disjoint i64 %i.aq, 1                ; 3 uses
  %i.bb = icmp ult i64 %i.ba, %i.q
  br i1 %i.bb, label %bb.t, label %bb.u

bb.s:                                             ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.aq, i64 noundef %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #51, !noalias !485
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ba
  %i.bd = load i8, ptr %i.bc, align 1, !noalias !485, !noundef !3
  %i.be = or disjoint i64 %i.aq, 2                ; 3 uses
  %i.bf = icmp ult i64 %i.be, %i.q
  br i1 %i.bf, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.r
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.ba, i64 noundef %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #51, !noalias !485
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.bg = or disjoint i64 %i.aq, 3                ; 3 uses
  %i.bh = icmp ult i64 %i.bg, %i.q
  br i1 %i.bh, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.be, i64 noundef %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #51, !noalias !485
  unreachable

bb.x:                                             ; preds = %bb.v
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.bg, i64 noundef %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #51, !noalias !485
  unreachable

bb.y:                                             ; preds = %bb.v
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.be
  %i.bj = load i8, ptr %i.bi, align 1, !noalias !485, !noundef !3
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.bg
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !485, !noundef !3
  %.sroa.6.0.insert.ext.i.i.i.i = zext i8 %i.bl to i64
  %.sroa.6.0.insert.shift.i.i.i.i = shl nuw nsw i64 %.sroa.6.0.insert.ext.i.i.i.i, 24
  %.sroa.5.0.insert.ext.i.i.i.i = zext i8 %i.bj to i64
  %.sroa.5.0.insert.shift.i.i.i.i = shl nuw nsw i64 %.sroa.5.0.insert.ext.i.i.i.i, 16
  %.sroa.4.0.insert.ext.i.i.i.i = zext i8 %i.bd to i64
  %.sroa.4.0.insert.shift.i.i.i.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i.i.i, 8
  %.sroa.0.0.insert.ext.i.i.i.i = zext i8 %i.az to i64
  %.sroa.5.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.4.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i
  %.sroa.4.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.5.0.insert.insert.i.i.i.i, %.sroa.5.0.insert.shift.i.i.i.i
  %.sroa.0.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.4.0.insert.insert.i.i.i.i, %.sroa.6.0.insert.shift.i.i.i.i ; 2 uses
  %i.bm = add nuw i64 %i.aq, 4                    ; 6 uses
  %i.bn = tail call i64 @llvm.uadd.sat.i64(i64 %i.bm, i64 %.sroa.0.0.insert.insert.i.i.i.i) ; 7 uses
  %i.bo = icmp ugt i64 %i.bn, %i.q
  br i1 %i.bo, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bp = add i64 %.sroa.0.0.insert.insert.i.i.i.i, %i.av ; 2 uses
  store i64 %i.bp, ptr %i.s, align 8, !alias.scope !486, !noalias !487
  %i.bq = icmp ugt i64 %i.bp, %i.y
  br i1 %i.bq, label %bb.aa, label %_RINvNtCs2TwJzntlzha_11flatbuffers8verifier19verify_vector_rangehECs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.q, %bb.p, %bb.o
  %.sroa.051.0.ph.i.i = phi i64 [ -9223372036854775803, %bb.p ], [ -9223372036854775803, %bb.y ], [ -9223372036854775804, %bb.o ], [ -9223372036854775800, %bb.q ], [ -9223372036854775800, %bb.z ]
  %.sroa.21.0.ph.i.i = phi i64 [ %i.aq, %bb.p ], [ %i.bm, %bb.y ], [ -9223372036854775808, %bb.o ], [ undef, %bb.q ], [ %i.bm, %bb.z ]
  %.sroa.23.0.ph.i.i = phi i64 [ %i.at, %bb.p ], [ %i.bn, %bb.y ], [ ptrtoint (ptr @12 to i64), %bb.o ], [ undef, %bb.q ], [ %i.bn, %bb.z ]
  store i64 %.sroa.051.0.ph.i.i, ptr %i.c, align 8, !alias.scope !488, !noalias !489
  %.sroa.230.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %.sroa.230.0..sroa_idx.i.i, align 8, !alias.scope !488, !noalias !489
  %.sroa.331.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 8, ptr %.sroa.331.0..sroa_idx.i.i, align 8, !alias.scope !488, !noalias !489
  %.sroa.432.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %.sroa.432.0..sroa_idx.i.i, align 8, !alias.scope !488, !noalias !489
  store i64 %.sroa.21.0.ph.i.i, ptr %.sink45.i.sroa.gep38, align 8, !alias.scope !488, !noalias !489
  store i64 %.sroa.23.0.ph.i.i, ptr %.sink.i.sroa.gep39, align 8, !alias.scope !488, !noalias !489
  store i64 3, ptr %.sink45.i.sroa.gep, align 8, !alias.scope !488, !noalias !489
  store i64 %i.aq, ptr %.sink.i.sroa.gep, align 8, !alias.scope !488, !noalias !489
  br label %bb.ai

_RINvNtCs2TwJzntlzha_11flatbuffers8verifier19verify_vector_rangehECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.z
  %i.br = icmp ult i64 %i.bn, %i.q
  br i1 %i.br, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_RINvNtCs2TwJzntlzha_11flatbuffers8verifier19verify_vector_rangehECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.bn
  %i.bt = load i8, ptr %i.bs, align 1, !noalias !490, !noundef !3
  %i.bu = icmp eq i8 %i.bt, 0
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_RINvNtCs2TwJzntlzha_11flatbuffers8verifier19verify_vector_rangehECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %.sroa.09.0.i.i = phi i1 [ %i.bu, %bb.ab ], [ false, %_RINvNtCs2TwJzntlzha_11flatbuffers8verifier19verify_vector_rangehECs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !490
  %i.bv = sub nuw i64 %i.bn, %i.bm
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.bm
  call void @_RNvNtNtCsbvkFyIu7lgC_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bw, i64 noundef %i.bv), !noalias !490
  %i.bx = load i64, ptr %i.a, align 8, !range !491, !noalias !490, !noundef !3
  %i.by = trunc nuw i64 %i.bx to i1
  br i1 %i.by, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sink45.i.sroa.gep38, ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i64 16, i1 false), !noalias !489
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.ca = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.cb = load i8, ptr %i.ca, align 8, !range !492, !noalias !490, !noundef !3
  %i.cc = trunc nuw i8 %i.cb to i1
  %or.cond.i.i = or i1 %.sroa.09.0.i.i, %i.cc
  br i1 %or.cond.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.sink46.i = phi i64 [ -9223372036854775806, %bb.ad ], [ -9223372036854775805, %bb.ae ]
  %.sink45.i.sroa.phi = phi ptr [ %.sink45.i.sroa.gep, %bb.ad ], [ %.sink45.i.sroa.gep38, %bb.ae ]
  %.sink.i.sroa.phi = phi ptr [ %.sink.i.sroa.gep, %bb.ad ], [ %.sink.i.sroa.gep39, %bb.ae ]
  store i64 %.sink46.i, ptr %i.c, align 8, !alias.scope !488, !noalias !489
  %.sroa.417.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %.sroa.417.0..sroa_idx.i.i, align 8, !alias.scope !488, !noalias !489
  %.sroa.417.sroa.4.0..sroa.417.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.417.sroa.4.0..sroa.417.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !488, !noalias !489
  %.sroa.417.sroa.5.0..sroa.417.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %.sroa.417.sroa.5.0..sroa.417.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !488, !noalias !489
  store i64 %i.bm, ptr %.sink45.i.sroa.phi, align 8, !alias.scope !488, !noalias !489
  store i64 %i.bn, ptr %.sink.i.sroa.phi, align 8, !alias.scope !488, !noalias !489
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !490
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  store i64 -9223372036854775798, ptr %i.c, align 8, !alias.scope !488, !noalias !489
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !490
  br label %bb.ai

bb.ah:                                            ; preds = %bb.c
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cd, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  store i64 -9223372036854775798, ptr %0, align 8
  br label %bb.al

bb.ai:                                            ; preds = %bb.ag, %bb.af, %bb.aa, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 -9223372036854775808, ptr %i.ce, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %2, ptr %.sroa.440.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %3, ptr %.sroa.5.0..sroa_idx, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.j, ptr %i.cf, align 8
  store i64 1, ptr %i.b, align 8
  call fastcc void @_RINvNtCs2TwJzntlzha_11flatbuffers8verifier12append_traceuECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.d, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cg = load i64, ptr %i.d, align 8, !range !99, !noundef !3
  %.not37 = icmp eq i64 %i.cg, -9223372036854775798
  br i1 %.not37, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.d, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ch, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  store i64 -9223372036854775798, ptr %0, align 8
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak, %bb.ah, %bb.b
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEEE14reserve_rehashNCNvXs2_B1r_INtB1r_7DashMapBY_B25_EINtNtB1r_1t3MapBY_B25_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, i1 noundef zeroext %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 10 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !493)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !493, !noalias !496, !noundef !3 ; 2 uses
  %i.g = add i64 %i.f, %1                         ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %bb.b, !prof !98

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !493, !noalias !496, !noundef !3 ; 3 uses
  %i.k = icmp ult i64 %i.j, 8
  %i.l = add i64 %i.j, 1
  %i.m = lshr i64 %i.l, 3
  %i.n = mul nuw i64 %i.m, 7
  %.sroa.03.0.i = select i1 %i.k, i64 %i.j, i64 %i.n ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.g, %i.o
  br i1 %.not.i, label %bb.d, label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.p = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !499 ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.p, 0
  %i.r = extractvalue { i64, i64 } %i.p, 1
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.b
  %i.s = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i5 = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.s, i64 range(i64 1, 0) %i.g) ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !500)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !503
  %i.t = icmp ult i64 %.sroa.0.0.i5, 8
  br i1 %i.t, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = icmp ugt i64 %.sroa.0.0.i5, 2305843009213693951
  br i1 %i.u, label %bb.l, label %bb.g, !prof !98

bb.f:                                             ; preds = %bb.d
  %i.v = and i64 %.sroa.0.0.i5, 4
  %..i.i = add nuw nsw i64 %i.v, 4
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.w = shl nuw i64 %.sroa.0.0.i5, 3
  %i.x = udiv i64 %i.w, 7
  %i.y = add nsw i64 %i.x, -1
  %i.z = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.y, i1 true)
  %i.aa = lshr i64 -1, %i.z
  %i.ab = add nuw nsw i64 %i.aa, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.i.ph.i = phi i64 [ %i.ab, %bb.g ], [ %..i.i, %bb.f ] ; 5 uses
  %i.ac = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 24, 105) %.sroa.4.0.i.ph.i, i64 104) ; 2 uses
  %i.ad = extractvalue { i64, i1 } %i.ac, 1
  br i1 %i.ad, label %bb.j, label %bb.i, !prof !98

bb.i:                                             ; preds = %bb.h
  %i.ae = extractvalue { i64, i1 } %i.ac, 0
  %i.af = add nuw i64 %i.ae, 8
  %i.ag = and i64 %i.af, -16                      ; 3 uses
  %i.ah = add nuw nsw i64 %.sroa.4.0.i.ph.i, 16   ; 2 uses
  %i.ai = add i64 %i.ag, %i.ah                    ; 4 uses
  %i.aj = icmp ult i64 %i.ai, %i.ag
  %i.ak = icmp ugt i64 %i.ai, 9223372036854775792
  %or.cond.i.i = or i1 %i.aj, %i.ak
  br i1 %or.cond.i.i, label %bb.j, label %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !75

_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.i
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !506
  %i.al = call noalias noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) 16) #52, !noalias !506 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.k, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.an = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !506
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.k:                                             ; preds = %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.ao = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.ai), !noalias !506
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.l:                                             ; preds = %bb.e
  %i.ap = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !511
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ag ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.aq, i8 -1, i64 %i.ah, i1 false), !noalias !511
end_hunk_3
begin_hunk_4_@_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB14_3vec3VecbEEEE14reserve_rehashNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0E0Cs14kWLkQVSKO_14deltalake_core:bb.a
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.711.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.k = load <2 x i64>, ptr %i.j, align 8        ; 3 uses
  %i.l = shufflevector <2 x i64> %i.k, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.m = xor <2 x i64> %i.l, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.m, ptr %i.b, align 16, !alias.scope !31371
  %i.n = shufflevector <2 x i64> %i.k, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.o = xor <2 x i64> %i.n, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.o, ptr %.sroa.59.0..sroa_idx.i.i, align 16, !alias.scope !31371
  store <2 x i64> %i.k, ptr %.sroa.711.0..sroa_idx.i.i, align 16, !alias.scope !31371
  %.sroa.913.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i.i, i8 0, i64 24, i1 false), !alias.scope !31371
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val2, i64 noundef %.val3) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31374
  store i8 -1, ptr %i.a, align 1, !noalias !31374
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1) #50, !noalias !31383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !31374
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.b, align 16, !alias.scope !31384
  %.sroa.10.0.copyload.i.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !alias.scope !31384
  %.sroa.17.0.copyload.i.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i.i, align 16, !alias.scope !31384 ; 3 uses
  %.sroa.22.0.copyload.i.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i.i, align 8, !alias.scope !31384
  %i.p = load i64, ptr %.sroa.913.0..sroa_idx.i.i, align 16, !alias.scope !31384, !noundef !3
  %i.q = shl i64 %i.p, 56
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !31384, !noundef !3
  %i.t = or i64 %i.q, %i.s                        ; 2 uses
  %i.u = xor i64 %i.t, %.sroa.22.0.copyload.i.i.i ; 3 uses
  %i.v = add i64 %.sroa.17.0.copyload.i.i.i, %.sroa.0.0.copyload.i.i.i ; 3 uses
  %i.w = add i64 %i.u, %.sroa.10.0.copyload.i.i.i ; 2 uses
  %i.x = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i.i, i64 %.sroa.17.0.copyload.i.i.i, i64 13)
  %i.y = xor i64 %i.x, %i.v                       ; 3 uses
  %i.z = tail call noundef i64 @llvm.fshl.i64(i64 %i.u, i64 %i.u, i64 16)
  %i.aa = xor i64 %i.z, %i.w                      ; 3 uses
  %i.ab = tail call noundef i64 @llvm.fshl.i64(i64 %i.v, i64 %i.v, i64 32)
  %i.ac = add i64 %i.w, %i.y                      ; 3 uses
  %i.ad = add i64 %i.aa, %i.ab                    ; 2 uses
  %i.ae = tail call noundef i64 @llvm.fshl.i64(i64 %i.y, i64 %i.y, i64 17)
  %i.af = xor i64 %i.ac, %i.ae                    ; 3 uses
  %i.ag = tail call noundef i64 @llvm.fshl.i64(i64 %i.aa, i64 %i.aa, i64 21)
  %i.ah = xor i64 %i.ag, %i.ad                    ; 3 uses
  %i.ai = tail call noundef i64 @llvm.fshl.i64(i64 %i.ac, i64 %i.ac, i64 32)
  %i.aj = xor i64 %i.ad, %i.t
  %i.ak = xor i64 %i.ai, 255
  %i.al = add i64 %i.aj, %i.af                    ; 3 uses
  %i.am = add i64 %i.ah, %i.ak                    ; 2 uses
  %i.an = tail call noundef i64 @llvm.fshl.i64(i64 %i.af, i64 %i.af, i64 13)
  %i.ao = xor i64 %i.al, %i.an                    ; 3 uses
  %i.ap = tail call noundef i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 16)
  %i.aq = xor i64 %i.ap, %i.am                    ; 3 uses
  %i.ar = tail call noundef i64 @llvm.fshl.i64(i64 %i.al, i64 %i.al, i64 32)
  %i.as = add i64 %i.ao, %i.am                    ; 3 uses
  %i.at = add i64 %i.aq, %i.ar                    ; 2 uses
  %i.au = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 17)
  %i.av = xor i64 %i.as, %i.au                    ; 3 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 21)
  %i.ax = xor i64 %i.aw, %i.at                    ; 3 uses
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 32)
  %i.az = add i64 %i.av, %i.at                    ; 3 uses
  %i.ba = add i64 %i.ax, %i.ay                    ; 2 uses
  %i.bb = tail call noundef i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 13)
  %i.bc = xor i64 %i.bb, %i.az                    ; 3 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 16)
  %i.be = xor i64 %i.bd, %i.ba                    ; 3 uses
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 32)
  %i.bg = add i64 %i.bc, %i.ba                    ; 3 uses
  %i.bh = add i64 %i.be, %i.bf                    ; 2 uses
  %i.bi = tail call noundef i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 17)
  %i.bj = xor i64 %i.bi, %i.bg                    ; 3 uses
  %i.bk = tail call noundef i64 @llvm.fshl.i64(i64 %i.be, i64 %i.be, i64 21)
  %i.bl = xor i64 %i.bk, %i.bh                    ; 3 uses
  %i.bm = tail call noundef i64 @llvm.fshl.i64(i64 %i.bg, i64 %i.bg, i64 32)
  %i.bn = add i64 %i.bj, %i.bh
  %i.bo = add i64 %i.bl, %i.bm                    ; 2 uses
  %i.bp = tail call noundef i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 13)
  %i.bq = xor i64 %i.bp, %i.bn                    ; 3 uses
  %i.br = tail call noundef i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 16)
  %i.bs = xor i64 %i.br, %i.bo                    ; 2 uses
  %i.bt = add i64 %i.bq, %i.bo                    ; 3 uses
  %i.bu = tail call noundef i64 @llvm.fshl.i64(i64 %i.bq, i64 %i.bq, i64 17)
  %i.bv = tail call noundef i64 @llvm.fshl.i64(i64 %i.bs, i64 %i.bs, i64 21)
  %i.bw = tail call noundef i64 @llvm.fshl.i64(i64 %i.bt, i64 %i.bt, i64 32)
  %i.bx = xor i64 %i.bv, %i.bu
  %i.by = xor i64 %i.bx, %i.bw
  %i.bz = xor i64 %i.by, %i.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.bz
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal noundef i64 @_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEEE14reserve_rehashNCNvXs2_B1H_INtB1H_7DashMapB10_uEINtNtB1H_1t3MapB10_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0E0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [72 x i8], align 16               ; 12 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !3, !align !100, !noundef !3
  %i.d = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.e = sub nsw i64 0, %2
  %i.f = getelementptr inbounds [24 x i8], ptr %i.d, i64 %i.e ; 2 uses
  %.val = load ptr, ptr %i.c, align 8, !nonnull !3, !align !100, !noundef !3
  %i.g = getelementptr i8, ptr %i.f, i64 -16
  %.val2 = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3
  %i.h = getelementptr i8, ptr %i.f, i64 -8
  %.val3 = load i64, ptr %i.h, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.i = load ptr, ptr %.val, align 8, !nonnull !3, !align !100, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.711.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.k = load <2 x i64>, ptr %i.j, align 8        ; 3 uses
  %i.l = shufflevector <2 x i64> %i.k, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.m = xor <2 x i64> %i.l, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.m, ptr %i.b, align 16, !alias.scope !31389
  %i.n = shufflevector <2 x i64> %i.k, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.o = xor <2 x i64> %i.n, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.o, ptr %.sroa.59.0..sroa_idx.i.i, align 16, !alias.scope !31389
  store <2 x i64> %i.k, ptr %.sroa.711.0..sroa_idx.i.i, align 16, !alias.scope !31389
  %.sroa.913.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i.i, i8 0, i64 24, i1 false), !alias.scope !31389
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val2, i64 noundef %.val3) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31392
  store i8 -1, ptr %i.a, align 1, !noalias !31392
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1) #50, !noalias !31401
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !31392
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.b, align 16, !alias.scope !31402
  %.sroa.10.0.copyload.i.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !alias.scope !31402
  %.sroa.17.0.copyload.i.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i.i, align 16, !alias.scope !31402 ; 3 uses
  %.sroa.22.0.copyload.i.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i.i, align 8, !alias.scope !31402
  %i.p = load i64, ptr %.sroa.913.0..sroa_idx.i.i, align 16, !alias.scope !31402, !noundef !3
  %i.q = shl i64 %i.p, 56
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !31402, !noundef !3
  %i.t = or i64 %i.q, %i.s                        ; 2 uses
  %i.u = xor i64 %i.t, %.sroa.22.0.copyload.i.i.i ; 3 uses
  %i.v = add i64 %.sroa.17.0.copyload.i.i.i, %.sroa.0.0.copyload.i.i.i ; 3 uses
  %i.w = add i64 %i.u, %.sroa.10.0.copyload.i.i.i ; 2 uses
  %i.x = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i.i, i64 %.sroa.17.0.copyload.i.i.i, i64 13)
  %i.y = xor i64 %i.x, %i.v                       ; 3 uses
  %i.z = tail call noundef i64 @llvm.fshl.i64(i64 %i.u, i64 %i.u, i64 16)
  %i.aa = xor i64 %i.z, %i.w                      ; 3 uses
  %i.ab = tail call noundef i64 @llvm.fshl.i64(i64 %i.v, i64 %i.v, i64 32)
  %i.ac = add i64 %i.w, %i.y                      ; 3 uses
  %i.ad = add i64 %i.aa, %i.ab                    ; 2 uses
  %i.ae = tail call noundef i64 @llvm.fshl.i64(i64 %i.y, i64 %i.y, i64 17)
  %i.af = xor i64 %i.ac, %i.ae                    ; 3 uses
  %i.ag = tail call noundef i64 @llvm.fshl.i64(i64 %i.aa, i64 %i.aa, i64 21)
  %i.ah = xor i64 %i.ag, %i.ad                    ; 3 uses
  %i.ai = tail call noundef i64 @llvm.fshl.i64(i64 %i.ac, i64 %i.ac, i64 32)
  %i.aj = xor i64 %i.ad, %i.t
  %i.ak = xor i64 %i.ai, 255
  %i.al = add i64 %i.aj, %i.af                    ; 3 uses
  %i.am = add i64 %i.ah, %i.ak                    ; 2 uses
  %i.an = tail call noundef i64 @llvm.fshl.i64(i64 %i.af, i64 %i.af, i64 13)
  %i.ao = xor i64 %i.al, %i.an                    ; 3 uses
  %i.ap = tail call noundef i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 16)
  %i.aq = xor i64 %i.ap, %i.am                    ; 3 uses
  %i.ar = tail call noundef i64 @llvm.fshl.i64(i64 %i.al, i64 %i.al, i64 32)
  %i.as = add i64 %i.ao, %i.am                    ; 3 uses
  %i.at = add i64 %i.aq, %i.ar                    ; 2 uses
  %i.au = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 17)
  %i.av = xor i64 %i.as, %i.au                    ; 3 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 21)
  %i.ax = xor i64 %i.aw, %i.at                    ; 3 uses
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 32)
  %i.az = add i64 %i.av, %i.at                    ; 3 uses
  %i.ba = add i64 %i.ax, %i.ay                    ; 2 uses
  %i.bb = tail call noundef i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 13)
  %i.bc = xor i64 %i.bb, %i.az                    ; 3 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 16)
  %i.be = xor i64 %i.bd, %i.ba                    ; 3 uses
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 32)
  %i.bg = add i64 %i.bc, %i.ba                    ; 3 uses
  %i.bh = add i64 %i.be, %i.bf                    ; 2 uses
  %i.bi = tail call noundef i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 17)
  %i.bj = xor i64 %i.bi, %i.bg                    ; 3 uses
  %i.bk = tail call noundef i64 @llvm.fshl.i64(i64 %i.be, i64 %i.be, i64 21)
  %i.bl = xor i64 %i.bk, %i.bh                    ; 3 uses
  %i.bm = tail call noundef i64 @llvm.fshl.i64(i64 %i.bg, i64 %i.bg, i64 32)
  %i.bn = add i64 %i.bj, %i.bh
  %i.bo = add i64 %i.bl, %i.bm                    ; 2 uses
  %i.bp = tail call noundef i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 13)
  %i.bq = xor i64 %i.bp, %i.bn                    ; 3 uses
  %i.br = tail call noundef i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 16)
  %i.bs = xor i64 %i.br, %i.bo                    ; 2 uses
  %i.bt = add i64 %i.bq, %i.bo                    ; 3 uses
  %i.bu = tail call noundef i64 @llvm.fshl.i64(i64 %i.bq, i64 %i.bq, i64 17)
  %i.bv = tail call noundef i64 @llvm.fshl.i64(i64 %i.bs, i64 %i.bs, i64 21)
  %i.bw = tail call noundef i64 @llvm.fshl.i64(i64 %i.bt, i64 %i.bt, i64 32)
  %i.bx = xor i64 %i.bv, %i.bu
  %i.by = xor i64 %i.bx, %i.bw
  %i.bz = xor i64 %i.by, %i.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.bz
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvXs3Y_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB8_5FieldNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier0Cs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, i8 noundef %1, ptr noalias noundef nonnull align 8 dereferenceable(48) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 11 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [72 x i8], align 8                ; 10 uses
  %i.d = alloca [72 x i8], align 8                ; 11 uses
  %i.e = alloca [40 x i8], align 8                ; 8 uses
  %i.f = alloca [72 x i8], align 8                ; 10 uses
  %i.g = alloca [72 x i8], align 8                ; 11 uses
  %i.h = alloca [40 x i8], align 8                ; 8 uses
  %i.i = alloca [72 x i8], align 8                ; 10 uses
  %i.j = alloca [72 x i8], align 8                ; 11 uses
  %i.k = alloca [40 x i8], align 8                ; 8 uses
  %i.l = alloca [72 x i8], align 8                ; 10 uses
  %i.m = alloca [72 x i8], align 8                ; 11 uses
  %i.n = alloca [40 x i8], align 8                ; 8 uses
  %i.o = alloca [72 x i8], align 8                ; 10 uses
  %i.p = alloca [72 x i8], align 8                ; 11 uses
  %i.q = alloca [40 x i8], align 8                ; 8 uses
  %i.r = alloca [72 x i8], align 8                ; 10 uses
  %i.s = alloca [72 x i8], align 8                ; 11 uses
  %i.t = alloca [40 x i8], align 8                ; 8 uses
  %i.u = alloca [72 x i8], align 8                ; 10 uses
  %i.v = alloca [72 x i8], align 8                ; 11 uses
  %i.w = alloca [40 x i8], align 8                ; 8 uses
  %i.x = alloca [72 x i8], align 8                ; 10 uses
  %i.y = alloca [40 x i8], align 8                ; 8 uses
  %i.z = alloca [72 x i8], align 8                ; 19 uses
  %i.aa = alloca [72 x i8], align 8               ; 12 uses
  %i.ab = alloca [72 x i8], align 8               ; 12 uses
  %i.ac = alloca [32 x i8], align 8               ; 9 uses
  %i.ad = alloca [72 x i8], align 8               ; 12 uses
  %i.ae = alloca [40 x i8], align 8               ; 8 uses
  %i.af = alloca [72 x i8], align 8               ; 11 uses
  %i.ag = alloca [40 x i8], align 8               ; 8 uses
  %i.ah = alloca [72 x i8], align 8               ; 11 uses
  %i.ai = alloca [72 x i8], align 8               ; 12 uses
  %i.aj = alloca [72 x i8], align 8               ; 12 uses
  %i.ak = alloca [32 x i8], align 8               ; 9 uses
  %i.al = alloca [72 x i8], align 8               ; 12 uses
  %i.am = alloca [40 x i8], align 8               ; 8 uses
  %i.an = alloca [72 x i8], align 8               ; 11 uses
  %i.ao = alloca [40 x i8], align 8               ; 8 uses
  %i.ap = alloca [72 x i8], align 8               ; 19 uses
  %i.aq = alloca [72 x i8], align 8               ; 12 uses
  %i.ar = alloca [72 x i8], align 8               ; 12 uses
  %i.as = alloca [32 x i8], align 8               ; 9 uses
  %i.at = alloca [72 x i8], align 8               ; 12 uses
  %i.au = alloca [40 x i8], align 8               ; 8 uses
  %i.av = alloca [72 x i8], align 8               ; 11 uses
  %i.aw = alloca [40 x i8], align 8               ; 8 uses
  %i.ax = alloca [72 x i8], align 8               ; 19 uses
  %i.ay = alloca [72 x i8], align 8               ; 12 uses
  %i.az = alloca [72 x i8], align 8               ; 12 uses
  %i.ba = alloca [32 x i8], align 8               ; 9 uses
  %i.bb = alloca [72 x i8], align 8               ; 12 uses
  %i.bc = alloca [40 x i8], align 8               ; 8 uses
  %i.bd = alloca [72 x i8], align 8               ; 11 uses
  %i.be = alloca [40 x i8], align 8               ; 8 uses
  %i.bf = alloca [72 x i8], align 8               ; 13 uses
  %i.bg = alloca [72 x i8], align 8               ; 10 uses
  %i.bh = alloca [72 x i8], align 8               ; 10 uses
  %i.bi = alloca [40 x i8], align 8               ; 8 uses
  %i.bj = alloca [72 x i8], align 8               ; 19 uses
  %i.bk = alloca [72 x i8], align 8               ; 10 uses
  %i.bl = alloca [72 x i8], align 8               ; 10 uses
  %i.bm = alloca [32 x i8], align 16              ; 7 uses
  %i.bn = alloca [32 x i8], align 16              ; 8 uses
  %i.bo = alloca [72 x i8], align 8               ; 10 uses
  %i.bp = alloca [40 x i8], align 8               ; 8 uses
  %i.bq = alloca [72 x i8], align 8               ; 9 uses
  %i.br = alloca [72 x i8], align 8               ; 11 uses
  %i.bs = alloca [40 x i8], align 8               ; 8 uses
  %i.bt = alloca [72 x i8], align 8               ; 10 uses
  %i.bu = alloca [72 x i8], align 8               ; 11 uses
  %i.bv = alloca [40 x i8], align 8               ; 8 uses
  %i.bw = alloca [72 x i8], align 8               ; 10 uses
  %i.bx = alloca [40 x i8], align 8               ; 8 uses
  %i.by = alloca [72 x i8], align 8               ; 19 uses
  %i.bz = alloca [72 x i8], align 8               ; 12 uses
  %i.ca = alloca [72 x i8], align 8               ; 12 uses
  %i.cb = alloca [32 x i8], align 8               ; 9 uses
  %i.cc = alloca [72 x i8], align 8               ; 12 uses
  %i.cd = alloca [40 x i8], align 8               ; 8 uses
  %i.ce = alloca [72 x i8], align 8               ; 11 uses
  %i.cf = alloca [40 x i8], align 8               ; 8 uses
  %i.cg = alloca [72 x i8], align 8               ; 19 uses
  %i.ch = alloca [72 x i8], align 8               ; 11 uses
  %i.ci = alloca [72 x i8], align 8               ; 11 uses
  %i.cj = alloca [32 x i8], align 16              ; 5 uses
  %i.ck = alloca [32 x i8], align 16              ; 9 uses
  %i.cl = alloca [72 x i8], align 8               ; 11 uses
  %i.cm = alloca [72 x i8], align 8               ; 13 uses
  %i.cn = alloca [40 x i8], align 8               ; 8 uses
  %i.co = alloca [72 x i8], align 8               ; 10 uses
  %i.cp = alloca [40 x i8], align 8               ; 8 uses
  %i.cq = alloca [72 x i8], align 8               ; 19 uses
  %i.cr = alloca [72 x i8], align 8               ; 10 uses
  %i.cs = alloca [72 x i8], align 8               ; 10 uses
  %i.ct = alloca [40 x i8], align 8               ; 8 uses
  %i.cu = alloca [72 x i8], align 8               ; 19 uses
  %i.cv = alloca [72 x i8], align 8               ; 10 uses
  %i.cw = alloca [72 x i8], align 8               ; 10 uses
  %i.cx = alloca [32 x i8], align 16              ; 7 uses
  %i.cy = alloca [32 x i8], align 16              ; 8 uses
  %i.cz = alloca [72 x i8], align 8               ; 10 uses
  %i.da = alloca [40 x i8], align 8               ; 8 uses
  %i.db = alloca [72 x i8], align 8               ; 9 uses
  %i.dc = alloca [40 x i8], align 8               ; 8 uses
  %i.dd = alloca [72 x i8], align 8               ; 19 uses
  %i.de = alloca [72 x i8], align 8               ; 12 uses
  %i.df = alloca [72 x i8], align 8               ; 12 uses
  %i.dg = alloca [32 x i8], align 8               ; 9 uses
  %i.dh = alloca [72 x i8], align 8               ; 12 uses
  %i.di = alloca [40 x i8], align 8               ; 8 uses
  %i.dj = alloca [72 x i8], align 8               ; 11 uses
  %i.dk = alloca [40 x i8], align 8               ; 8 uses
  %i.dl = alloca [72 x i8], align 8               ; 19 uses
  %i.dm = alloca [72 x i8], align 8               ; 10 uses
  %i.dn = alloca [72 x i8], align 8               ; 10 uses
  %i.do = alloca [40 x i8], align 8               ; 8 uses
  %i.dp = alloca [72 x i8], align 8               ; 19 uses
  %i.dq = alloca [72 x i8], align 8               ; 10 uses
  %i.dr = alloca [72 x i8], align 8               ; 10 uses
  %i.ds = alloca [40 x i8], align 8               ; 8 uses
  %i.dt = alloca [72 x i8], align 8               ; 19 uses
  %i.du = alloca [72 x i8], align 8               ; 10 uses
  %i.dv = alloca [72 x i8], align 8               ; 10 uses
  %i.dw = alloca [32 x i8], align 16              ; 7 uses
  %i.dx = alloca [32 x i8], align 16              ; 7 uses
  %i.dy = alloca [32 x i8], align 16              ; 8 uses
  %i.dz = alloca [72 x i8], align 8               ; 10 uses
  %i.ea = alloca [40 x i8], align 8               ; 8 uses
  %i.eb = alloca [72 x i8], align 8               ; 9 uses
  %i.ec = alloca [72 x i8], align 8               ; 11 uses
  %i.ed = alloca [40 x i8], align 8               ; 8 uses
  %i.ee = alloca [72 x i8], align 8               ; 10 uses
  %i.ef = alloca [72 x i8], align 8               ; 11 uses
  %i.eg = alloca [40 x i8], align 8               ; 8 uses
  %i.eh = alloca [72 x i8], align 8               ; 10 uses
  %i.ei = alloca [72 x i8], align 8               ; 11 uses
  %i.ej = alloca [40 x i8], align 8               ; 8 uses
  %i.ek = alloca [72 x i8], align 8               ; 10 uses
  %i.el = alloca [40 x i8], align 8               ; 8 uses
  %i.em = alloca [72 x i8], align 8               ; 19 uses
  %i.en = alloca [72 x i8], align 8               ; 12 uses
  %i.eo = alloca [72 x i8], align 8               ; 12 uses
  %i.ep = alloca [32 x i8], align 8               ; 9 uses
  %i.eq = alloca [72 x i8], align 8               ; 12 uses
  %i.er = alloca [40 x i8], align 8               ; 8 uses
  %i.es = alloca [72 x i8], align 8               ; 11 uses
  %i.et = alloca [40 x i8], align 8               ; 8 uses
  %i.eu = alloca [72 x i8], align 8               ; 4 uses
  %i.ev = alloca [72 x i8], align 8               ; 11 uses
  %i.ew = alloca [40 x i8], align 8               ; 8 uses
  %i.ex = alloca [72 x i8], align 8               ; 10 uses
  switch i8 %1, label %bb.b [
    i8 1, label %bb.c
    i8 2, label %bb.p
    i8 3, label %bb.q
    i8 4, label %bb.ar
    i8 5, label %bb.be
    i8 6, label %bb.br
    i8 7, label %bb.ce
    i8 8, label %bb.eh
    i8 9, label %bb.fi
    i8 10, label %bb.gx
    i8 11, label %bb.ia
    i8 12, label %bb.jb
    i8 13, label %bb.jo
    i8 14, label %bb.kb
    i8 15, label %bb.lv
    i8 16, label %bb.mw
    i8 17, label %bb.nx
    i8 18, label %bb.ow
    i8 19, label %bb.px
    i8 20, label %bb.qk
    i8 21, label %bb.qx
    i8 22, label %bb.rk
    i8 23, label %bb.rx
    i8 24, label %bb.sk
    i8 25, label %bb.sx
    i8 26, label %bb.tk
  ]

bb.b:                                             ; preds = %bb.a
  store i64 -9223372036854775798, ptr %0, align 8
  br label %bb.tx

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31407)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31410)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31416)
  %i.ey = and i64 %3, 3
  %i.ez = icmp eq i64 %i.ey, 0
  %i.fa = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %3, i64 0 ; 3 uses
  br i1 %i.ez, label %bb.d, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema4NullEReECs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.c
  %i.fb = tail call i64 @llvm.uadd.sat.i64(i64 %3, i64 4) ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fd = load i64, ptr %i.fc, align 8, !alias.scope !31419, !noalias !31420, !noundef !3 ; 9 uses
  %i.fe = icmp ugt i64 %i.fb, %i.fd
  br i1 %i.fe, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema4NullEReECs14kWLkQVSKO_14deltalake_core.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.fg = load i64, ptr %i.ff, align 8, !alias.scope !31419, !noalias !31420, !noundef !3
  %i.fh = add i64 %i.fg, 4                        ; 2 uses
  store i64 %i.fh, ptr %i.ff, align 8, !alias.scope !31419, !noalias !31420
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8, !alias.scope !31419, !noalias !31420, !nonnull !3, !align !100, !noundef !3
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fl = load i64, ptr %i.fk, align 8, !noalias !31425, !noundef !3
  %i.fm = icmp ugt i64 %i.fh, %i.fl
  br i1 %i.fm, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema4NullEReECs14kWLkQVSKO_14deltalake_core.exit, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.e
  %i.fn = icmp ult i64 %3, %i.fd
  br i1 %i.fn, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %i.fo = load ptr, ptr %2, align 8, !alias.scope !31426, !noalias !31427, !nonnull !3, !noundef !3 ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 %3
  %i.fq = load i8, ptr %i.fp, align 1, !noalias !31428, !noundef !3
  %i.fr = or disjoint i64 %3, 1                   ; 3 uses
  %i.fs = icmp ult i64 %i.fr, %i.fd
  br i1 %i.fs, label %bb.h, label %bb.i

bb.g:                                             ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %3, i64 noundef %i.fd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #51, !noalias !31428
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fr
  %i.fu = load i8, ptr %i.ft, align 1, !noalias !31428, !noundef !3
  %i.fv = or disjoint i64 %3, 2                   ; 3 uses
  %i.fw = icmp ult i64 %i.fv, %i.fd
  br i1 %i.fw, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.f
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.fr, i64 noundef %i.fd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #51, !noalias !31428
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.fx = or disjoint i64 %3, 3                   ; 3 uses
  %i.fy = icmp ult i64 %i.fx, %i.fd
  br i1 %i.fy, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.h
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.fv, i64 noundef %i.fd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #51, !noalias !31428
  unreachable

bb.l:                                             ; preds = %bb.j
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.fx, i64 noundef %i.fd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #51, !noalias !31428
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fv
  %i.ga = load i8, ptr %i.fz, align 1, !noalias !31428, !noundef !3
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fx
  %i.gc = load i8, ptr %i.gb, align 1, !noalias !31428, !noundef !3
  %.sroa.6.0.insert.ext.i.i.i = zext i8 %i.gc to i64
  %.sroa.6.0.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.6.0.insert.ext.i.i.i, 24
  %.sroa.5.0.insert.ext.i.i.i = zext i8 %i.ga to i64
  %.sroa.5.0.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.5.0.insert.ext.i.i.i, 16
  %.sroa.4.0.insert.ext.i.i.i = zext i8 %i.fu to i64
  %.sroa.4.0.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i.i, 8
  %.sroa.0.0.insert.ext.i.i.i = zext i8 %i.fq to i64
  %.sroa.5.0.insert.insert.i.i.i = or disjoint i64 %.sroa.4.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  %.sroa.4.0.insert.insert.i.i.i = or disjoint i64 %.sroa.5.0.insert.insert.i.i.i, %.sroa.5.0.insert.shift.i.i.i
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.4.0.insert.insert.i.i.i, %.sroa.6.0.insert.shift.i.i.i
  %i.gd = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.0.insert.insert.i.i.i, i64 %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ev), !noalias !31429
  call fastcc void @_RNvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB5_8Verifier11visit_table(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.ev, ptr noalias noundef nonnull align 8 dereferenceable(48) %2, i64 noundef %i.gd) #50, !noalias !31433
  %i.ge = load i64, ptr %i.ev, align 8, !range !99, !noalias !31429, !noundef !3 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ge, -9223372036854775798
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %.sroa.013.0.copyload.i.i.i = load ptr, ptr %i.gf, align 8, !noalias !31429 ; 2 uses
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.624.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %4 = load <2 x i64>, ptr %.sroa.624.0..sroa_idx.i.i.i, align 8, !noalias !31429
  %.sroa.826.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ev, i64 32
  %.sroa.826.0.copyload.i.i.i = load i64, ptr %.sroa.826.0..sroa_idx.i.i.i, align 8, !noalias !31429
  %.sroa.927.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ev, i64 40
  %.sroa.14.40.copyload.i = load i64, ptr %.sroa.927.0..sroa_idx.i.i.i, align 8, !noalias !31434
  %.sroa.16.40..sroa.927.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ev, i64 48
  %.sroa.16.40.copyload.i = load i64, ptr %.sroa.16.40..sroa.927.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !31434
  %.sroa.17.40..sroa.927.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ev, i64 56
  %i.gg = load <2 x i64>, ptr %.sroa.17.40..sroa.927.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !31434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ev), !noalias !31429
  br label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema4NullEReECs14kWLkQVSKO_14deltalake_core.exit

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ev), !noalias !31429
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.013.0.copyload.i.i.i, i64 24 ; 2 uses
  %i.gi = load i64, ptr %i.gh, align 8, !noalias !31433, !noundef !3
  %i.gj = add i64 %i.gi, -1
  store i64 %i.gj, ptr %i.gh, align 8, !noalias !31433
  br label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema4NullEReECs14kWLkQVSKO_14deltalake_core.exit

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema4NullEReECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.n, %bb.o
  %.sroa.5.1.i = phi ptr [ null, %bb.c ], [ null, %bb.e ], [ null, %bb.d ], [ undef, %bb.o ], [ %.sroa.013.0.copyload.i.i.i, %bb.n ]
  %.sroa.16.1.i = phi i64 [ 3, %bb.c ], [ 3, %bb.e ], [ 3, %bb.d ], [ undef, %bb.o ], [ %.sroa.16.40.copyload.i, %bb.n ]
  %.sroa.14.1.i = phi i64 [ ptrtoint (ptr @12 to i64), %bb.c ], [ undef, %bb.e ], [ %i.fb, %bb.d ], [ undef, %bb.o ], [ %.sroa.14.40.copyload.i, %bb.n ]
  %.sroa.12.1.i = phi i64 [ -9223372036854775808, %bb.c ], [ undef, %bb.e ], [ %3, %bb.d ], [ undef, %bb.o ], [ %.sroa.826.0.copyload.i.i.i, %bb.n ]
  %.sroa.0.0.i.a = phi i64 [ -9223372036854775804, %bb.c ], [ -9223372036854775800, %bb.e ], [ -9223372036854775803, %bb.d ], [ -9223372036854775798, %bb.o ], [ %i.ge, %bb.n ]
  %5 = phi <2 x i64> [ <i64 8, i64 0>, %bb.c ], [ <i64 8, i64 0>, %bb.e ], [ <i64 8, i64 0>, %bb.d ], [ undef, %bb.o ], [ %4, %bb.n ]
  %i.gk = phi <2 x i64> [ %i.fa, %bb.c ], [ %i.fa, %bb.e ], [ %i.fa, %bb.d ], [ undef, %bb.o ], [ %i.gg, %bb.n ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ex), !noalias !31435
  store i64 %.sroa.0.0.i.a, ptr %i.ex, align 8, !noalias !31435
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store ptr %.sroa.5.1.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !31435
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  store <2 x i64> %5, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !31435
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ex, i64 32
  store i64 %.sroa.12.1.i, ptr %.sroa.12.0..sroa_idx.i, align 8, !noalias !31435
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ex, i64 40
  store i64 %.sroa.14.1.i, ptr %.sroa.14.0..sroa_idx.i, align 8, !noalias !31435
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ex, i64 48
  store i64 %.sroa.16.1.i, ptr %.sroa.16.0..sroa_idx.i, align 8, !noalias !31435
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ex, i64 56
  store <2 x i64> %i.gk, ptr %.sroa.17.0..sroa_idx.i, align 8, !noalias !31435
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ew), !noalias !31435
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  store i64 -9223372036854775808, ptr %i.gl, align 8, !noalias !31435
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  store ptr @60, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !31435
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  store i64 10, ptr %.sroa.52.0..sroa_idx.i, align 8, !noalias !31435
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store i64 %3, ptr %i.gm, align 8, !noalias !31435
  store i64 2, ptr %i.ew, align 8, !noalias !31435
  call fastcc void @_RINvNtCs2TwJzntlzha_11flatbuffers8verifier12append_traceuECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.ex, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.ew)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ew), !noalias !31435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ex), !noalias !31435
  br label %bb.tx

bb.p:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eu), !noalias !31436
  call fastcc void @_RNvXs6_NtCs2TwJzntlzha_11flatbuffers8verifierINtNtB7_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema3IntENtB5_10Verifiable12run_verifierCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.eu, ptr noalias noundef nonnull align 8 dereferenceable(48) %2, i64 noundef %3), !noalias !31440
  call void @llvm.lifetime.start.p0(ptr nonnull %i.et), !noalias !31436
  %i.gn = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store i64 -9223372036854775808, ptr %i.gn, align 8, !noalias !31436
  %.sroa.4.0..sroa_idx.i1 = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  store ptr @61, ptr %.sroa.4.0..sroa_idx.i1, align 8, !noalias !31436
  %.sroa.5.0..sroa_idx.i2 = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  store i64 9, ptr %.sroa.5.0..sroa_idx.i2, align 8, !noalias !31436
  %i.go = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store i64 %3, ptr %i.go, align 8, !noalias !31436
  store i64 2, ptr %i.et, align 8, !noalias !31436
  call fastcc void @_RINvNtCs2TwJzntlzha_11flatbuffers8verifier12append_traceuECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.eu, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.et)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.et), !noalias !31436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eu), !noalias !31436
  br label %bb.tx

bb.q:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31441)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31444)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31447)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31450)
  %i.gp = and i64 %3, 3
  %i.gq = icmp eq i64 %i.gp, 0
  %i.gr = insertelement <2 x i64> <i64 3, i64 poison>, i64 %3, i64 1 ; 3 uses
  br i1 %i.gq, label %bb.r, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema13FloatingPointEReECs14kWLkQVSKO_14deltalake_core.exit

bb.r:                                             ; preds = %bb.q
  %i.gs = tail call i64 @llvm.uadd.sat.i64(i64 %3, i64 4) ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gu = load i64, ptr %i.gt, align 8, !alias.scope !31453, !noalias !31454, !noundef !3 ; 9 uses
  %i.gv = icmp ugt i64 %i.gs, %i.gu
  br i1 %i.gv, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema13FloatingPointEReECs14kWLkQVSKO_14deltalake_core.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gw = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.gx = load i64, ptr %i.gw, align 8, !alias.scope !31453, !noalias !31454, !noundef !3
  %i.gy = add i64 %i.gx, 4                        ; 2 uses
  store i64 %i.gy, ptr %i.gw, align 8, !alias.scope !31453, !noalias !31454
  %i.gz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ha = load ptr, ptr %i.gz, align 8, !alias.scope !31453, !noalias !31454, !nonnull !3, !align !100, !noundef !3
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hc = load i64, ptr %i.hb, align 8, !noalias !31459, !noundef !3
  %i.hd = icmp ugt i64 %i.gy, %i.hc
  br i1 %i.hd, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema13FloatingPointEReECs14kWLkQVSKO_14deltalake_core.exit, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i6

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i6: ; preds = %bb.s
  %i.he = icmp ult i64 %3, %i.gu
  br i1 %i.he, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i6
  %i.hf = load ptr, ptr %2, align 8, !alias.scope !31460, !noalias !31461, !nonnull !3, !noundef !3 ; 4 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 %3
  %i.hh = load i8, ptr %i.hg, align 1, !noalias !31462, !noundef !3
  %i.hi = or disjoint i64 %3, 1                   ; 3 uses
  %i.hj = icmp ult i64 %i.hi, %i.gu
  br i1 %i.hj, label %bb.v, label %bb.w

bb.u:                                             ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i6
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %3, i64 noundef %i.gu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #51, !noalias !31462
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.hi
  %i.hl = load i8, ptr %i.hk, align 1, !noalias !31462, !noundef !3
  %i.hm = or disjoint i64 %3, 2                   ; 3 uses
  %i.hn = icmp ult i64 %i.hm, %i.gu
  br i1 %i.hn, label %bb.x, label %bb.y

bb.w:                                             ; preds = %bb.t
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.hi, i64 noundef %i.gu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #51, !noalias !31462
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.ho = or disjoint i64 %3, 3                   ; 3 uses
  %i.hp = icmp ult i64 %i.ho, %i.gu
  br i1 %i.hp, label %bb.aa, label %bb.z

bb.y:                                             ; preds = %bb.v
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.hm, i64 noundef %i.gu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #51, !noalias !31462
  unreachable

bb.z:                                             ; preds = %bb.x
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.ho, i64 noundef %i.gu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #51, !noalias !31462
  unreachable

bb.aa:                                            ; preds = %bb.x
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.hm
  %i.hr = load i8, ptr %i.hq, align 1, !noalias !31462, !noundef !3
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.ho
  %i.ht = load i8, ptr %i.hs, align 1, !noalias !31462, !noundef !3
  %.sroa.6.0.insert.ext.i.i.i7 = zext i8 %i.ht to i64
  %.sroa.6.0.insert.shift.i.i.i8 = shl nuw nsw i64 %.sroa.6.0.insert.ext.i.i.i7, 24
  %.sroa.5.0.insert.ext.i.i.i9 = zext i8 %i.hr to i64
  %.sroa.5.0.insert.shift.i.i.i10 = shl nuw nsw i64 %.sroa.5.0.insert.ext.i.i.i9, 16
  %.sroa.4.0.insert.ext.i.i.i11 = zext i8 %i.hl to i64
  %.sroa.4.0.insert.shift.i.i.i12 = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i.i11, 8
  %.sroa.0.0.insert.ext.i.i.i13 = zext i8 %i.hh to i64
  %.sroa.5.0.insert.insert.i.i.i14 = or disjoint i64 %.sroa.4.0.insert.shift.i.i.i12, %.sroa.0.0.insert.ext.i.i.i13
  %.sroa.4.0.insert.insert.i.i.i15 = or disjoint i64 %.sroa.5.0.insert.insert.i.i.i14, %.sroa.5.0.insert.shift.i.i.i10
  %.sroa.0.0.insert.insert.i.i.i16 = or disjoint i64 %.sroa.4.0.insert.insert.i.i.i15, %.sroa.6.0.insert.shift.i.i.i8
  %i.hu = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.0.insert.insert.i.i.i16, i64 %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ep), !noalias !31463
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eq), !noalias !31464
  call fastcc void @_RNvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB5_8Verifier11visit_table(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.eq, ptr noalias noundef nonnull align 8 dereferenceable(48) %2, i64 noundef %i.hu) #50, !noalias !31468
  %i.hv = load i64, ptr %i.eq, align 8, !range !99, !noalias !31464, !noundef !3 ; 2 uses
  %.not.i.i.i17 = icmp eq i64 %i.hv, -9223372036854775798
  %i.hw = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %.sroa.613.i.i.sroa.0.0.copyload.i = load ptr, ptr %i.hw, align 8, !noalias !31464 ; 2 uses
  %.sroa.613.i.i.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %.sroa.613.i.i.sroa.6.0.copyload.i = load i64, ptr %.sroa.613.i.i.sroa.6.0..sroa_idx.i, align 8, !noalias !31464 ; 2 uses
  %.sroa.613.i.i.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %.sroa.613.i.i.sroa.7.0.copyload.i = load i64, ptr %.sroa.613.i.i.sroa.7.0..sroa_idx.i, align 8, !noalias !31464 ; 2 uses
  %.sroa.613.i.i.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eq, i64 32
  %.sroa.613.i.i.sroa.8.0.copyload.i = load i64, ptr %.sroa.613.i.i.sroa.8.0..sroa_idx.i, align 8, !noalias !31464 ; 2 uses
  br i1 %.not.i.i.i17, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.sroa.627.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.eq, i64 40
  %.sroa.17.40.copyload.i18 = load i64, ptr %.sroa.627.0..sroa_idx.i.i.i, align 8, !noalias !31469
  %.sroa.20.40..sroa.627.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eq, i64 48
  %i.hx = load <2 x i64>, ptr %.sroa.20.40..sroa.627.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !31469
  %.sroa.22.40..sroa.627.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eq, i64 64
  %.sroa.22.40.copyload.i = load i64, ptr %.sroa.22.40..sroa.627.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !31469
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eq), !noalias !31464
  br label %_RNvXs2e_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_13FloatingPointNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eq), !noalias !31464
  store ptr %.sroa.613.i.i.sroa.0.0.copyload.i, ptr %i.ep, align 8, !noalias !31464
  %.sroa.613.i.i.sroa.6.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store i64 %.sroa.613.i.i.sroa.6.0.copyload.i, ptr %.sroa.613.i.i.sroa.6.0..sroa_idx7.i, align 8, !noalias !31464
  %.sroa.613.i.i.sroa.7.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store i64 %.sroa.613.i.i.sroa.7.0.copyload.i, ptr %.sroa.613.i.i.sroa.7.0..sroa_idx9.i, align 8, !noalias !31464
  %.sroa.613.i.i.sroa.8.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  store i64 %.sroa.613.i.i.sroa.8.0.copyload.i, ptr %.sroa.613.i.i.sroa.8.0..sroa_idx11.i, align 8, !noalias !31464
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31470)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31473)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eo), !noalias !31475
  call void @_RNvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB5_13TableVerifier5deref(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.eo, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ep, i16 noundef 4), !noalias !31476
  %i.hy = load i64, ptr %i.eo, align 8, !range !99, !noalias !31475, !noundef !3 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.hy, -9223372036854775798
  %i.hz = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.ia = load i64, ptr %i.hz, align 8, !noalias !31475 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.ic = load i64, ptr %i.ib, align 8, !noalias !31475 ; 6 uses
  br i1 %.not.i.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.sroa.718.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %.sroa.16.24.copyload.i.i.i = load i64, ptr %.sroa.718.0..sroa_idx.i.i.i.i, align 8, !noalias !31477
  %.sroa.18.24..sroa.718.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %.sroa.18.24.copyload.i.i.i = load i64, ptr %.sroa.18.24..sroa.718.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !31477
  %.sroa.19.24..sroa.718.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  %.sroa.19.i.i.sroa.0.0.copyload.i = load i64, ptr %.sroa.19.24..sroa.718.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !31464
  %.sroa.19.i.i.sroa.5.0..sroa.19.24..sroa.718.0..sroa_idx.i.sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eo, i64 48
  %i.id = load <2 x i64>, ptr %.sroa.19.i.i.sroa.5.0..sroa.19.24..sroa.718.0..sroa_idx.i.sroa_idx.i.i.sroa_idx.i, align 8, !noalias !31464
  %.sroa.19.i.i.sroa.7.0..sroa.19.24..sroa.718.0..sroa_idx.i.sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eo, i64 64
  %.sroa.19.i.i.sroa.7.0.copyload.i = load i64, ptr %.sroa.19.i.i.sroa.7.0..sroa.19.24..sroa.718.0..sroa_idx.i.sroa_idx.i.i.sroa_idx.i, align 8, !noalias !31464
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eo), !noalias !31475
  br label %bb.ap

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eo), !noalias !31475
  %i.ie = trunc nuw i64 %i.ia to i1
  br i1 %i.ie, label %bb.af, label %bb.aq

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.en), !noalias !31475
  call void @llvm.lifetime.start.p0(ptr nonnull %i.em), !noalias !31475
  %i.if = load ptr, ptr %i.ep, align 8, !alias.scope !31473, !noalias !31478, !nonnull !3, !align !100, !noundef !3 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !31479)
  call void @llvm.experimental.noalias.scope.decl(metadata !31482)
  call void @llvm.experimental.noalias.scope.decl(metadata !31484)
  call void @llvm.experimental.noalias.scope.decl(metadata !31487)
  %i.ig = and i64 %i.ic, 1
  %i.ih = icmp eq i64 %i.ig, 0
  br i1 %i.ih, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ii = call i64 @llvm.uadd.sat.i64(i64 %i.ic, i64 2) ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.ik = load i64, ptr %i.ij, align 8, !alias.scope !31489, !noalias !31490, !noundef !3
  %i.il = icmp ugt i64 %i.ii, %i.ik
  br i1 %i.il, label %bb.aj, label %bb.ai

bb.ah:                                            ; preds = %bb.af
  store i64 -9223372036854775804, ptr %i.em, align 8, !alias.scope !31491, !noalias !31492
  %.sroa.242.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store i64 0, ptr %.sroa.242.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !31491, !noalias !31492
  %.sroa.343.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.343.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !31491, !noalias !31492
  %.sroa.444.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  store i64 0, ptr %.sroa.444.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !31491, !noalias !31492
  %.sroa.545.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.em, i64 32
  store i64 -9223372036854775808, ptr %.sroa.545.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !31491, !noalias !31492
  %.sroa.646.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  store ptr @13, ptr %.sroa.646.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !31491, !noalias !31492
  %.sroa.747.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.em, i64 48
  store i64 3, ptr %.sroa.747.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !31491, !noalias !31492
  %.sroa.848.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.em, i64 56
  store i64 %i.ic, ptr %.sroa.848.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !31491, !noalias !31492
  br label %bb.am

bb.ai:                                            ; preds = %bb.ag
  %i.im = getelementptr inbounds nuw i8, ptr %i.if, i64 40 ; 2 uses
  %i.in = load i64, ptr %i.im, align 8, !alias.scope !31489, !noalias !31490, !noundef !3
  %i.io = add i64 %i.in, 2                        ; 2 uses
  store i64 %i.io, ptr %i.im, align 8, !alias.scope !31489, !noalias !31490
  %i.ip = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %i.iq = load ptr, ptr %i.ip, align 8, !alias.scope !31489, !noalias !31490, !nonnull !3, !align !100, !noundef !3
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  %i.is = load i64, ptr %i.ir, align 8, !noalias !31493, !noundef !3
  %i.it = icmp ugt i64 %i.io, %i.is
  br i1 %i.it, label %bb.al, label %bb.ak

bb.aj:                                            ; preds = %bb.ag
  store i64 -9223372036854775803, ptr %i.em, align 8, !alias.scope !31491, !noalias !31492
  %.sroa.453.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store i64 0, ptr %.sroa.453.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !31491, !noalias !31492
  %.sroa.453.sroa.4.0..sroa.453.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.453.sroa.4.0..sroa.453.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !31491, !noalias !31492
  %.sroa.453.sroa.5.0..sroa.453.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  store i64 0, ptr %.sroa.453.sroa.5.0..sroa.453.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !31491, !noalias !31492
  %.sroa.554.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.em, i64 32
  store i64 %i.ic, ptr %.sroa.554.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !31491, !noalias !31492
  %.sroa.655.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  store i64 %i.ii, ptr %.sroa.655.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !31491, !noalias !31492
  br label %bb.am

bb.ak:                                            ; preds = %bb.ai
  store i64 -9223372036854775798, ptr %i.em, align 8, !alias.scope !31491, !noalias !31492
  br label %bb.am

bb.al:                                            ; preds = %bb.ai
  store i64 -9223372036854775800, ptr %i.em, align 8, !alias.scope !31491, !noalias !31492
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.el), !noalias !31475
  %i.iu = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store i64 -9223372036854775808, ptr %i.iu, align 8, !noalias !31475
  %.sroa.41.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  store ptr @252, ptr %.sroa.41.0..sroa_idx.i.i.i.i, align 8, !noalias !31475
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  store i64 9, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !31475
  %i.iv = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store i64 %i.ic, ptr %i.iv, align 8, !noalias !31475
  store i64 1, ptr %i.el, align 8, !noalias !31475
  call fastcc void @_RINvNtCs2TwJzntlzha_11flatbuffers8verifier12append_traceuECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.en, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.em, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.el), !noalias !31476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.el), !noalias !31475
  call void @llvm.lifetime.end.p0(ptr nonnull %i.em), !noalias !31475
  %i.iw = load i64, ptr %i.en, align 8, !range !99, !noalias !31475, !noundef !3 ; 2 uses
  %.not37.i.i.i.i = icmp eq i64 %i.iw, -9223372036854775798
  br i1 %.not37.i.i.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %.sroa.9.0.copyload.i.i.i = load i64, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8, !noalias !31477
  %.sroa.14.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %.sroa.14.0.copyload.i.i.i = load i64, ptr %.sroa.14.0..sroa_idx.i.i.i, align 8, !noalias !31477
  %.sroa.16.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %.sroa.16.0.copyload.i.i.i = load i64, ptr %.sroa.16.0..sroa_idx.i.i.i, align 8, !noalias !31477
  %.sroa.18.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.en, i64 32
  %.sroa.18.0.copyload.i.i.i = load i64, ptr %.sroa.18.0..sroa_idx.i.i.i, align 8, !noalias !31477
  %.sroa.19.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.en, i64 40
  %.sroa.19.i.i.sroa.0.0.copyload13.i = load i64, ptr %.sroa.19.0..sroa_idx.i.i.i, align 8, !noalias !31464
  %.sroa.19.i.i.sroa.5.0..sroa.19.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.en, i64 48
  %i.ix = load <2 x i64>, ptr %.sroa.19.i.i.sroa.5.0..sroa.19.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !31464
  %.sroa.19.i.i.sroa.7.0..sroa.19.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.en, i64 64
  %.sroa.19.i.i.sroa.7.0.copyload16.i = load i64, ptr %.sroa.19.i.i.sroa.7.0..sroa.19.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !31464
  call void @llvm.lifetime.end.p0(ptr nonnull %i.en), !noalias !31475
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.en), !noalias !31475
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an, %bb.ad
  %.sroa.19.i.i.sroa.0.0.i = phi i64 [ %.sroa.19.i.i.sroa.0.0.copyload13.i, %bb.an ], [ %.sroa.19.i.i.sroa.0.0.copyload.i, %bb.ad ]
  %.sroa.19.i.i.sroa.7.0.i = phi i64 [ %.sroa.19.i.i.sroa.7.0.copyload16.i, %bb.an ], [ %.sroa.19.i.i.sroa.7.0.copyload.i, %bb.ad ]
  %.sroa.18.1.i.i.i = phi i64 [ %.sroa.18.0.copyload.i.i.i, %bb.an ], [ %.sroa.18.24.copyload.i.i.i, %bb.ad ]
  %.sroa.16.1.i.i.i = phi i64 [ %.sroa.16.0.copyload.i.i.i, %bb.an ], [ %.sroa.16.24.copyload.i.i.i, %bb.ad ]
  %.sroa.14.1.i.i.i = phi i64 [ %.sroa.14.0.copyload.i.i.i, %bb.an ], [ %i.ic, %bb.ad ]
  %.sroa.9.1.i.i.i = phi i64 [ %.sroa.9.0.copyload.i.i.i, %bb.an ], [ %i.ia, %bb.ad ]
  %.sroa.0.1.i.i.i = phi i64 [ %i.iw, %bb.an ], [ %i.hy, %bb.ad ]
  %i.iy = phi <2 x i64> [ %i.ix, %bb.an ], [ %i.id, %bb.ad ]
  %i.iz = inttoptr i64 %.sroa.9.1.i.i.i to ptr
  br label %_RNvXs2e_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_13FloatingPointNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i

bb.aq:                                            ; preds = %bb.ao, %bb.ae
  %.sroa.9.1.ph.i.i.i = load i64, ptr %i.ep, align 8, !alias.scope !31494, !noalias !31464
  %i.ja = inttoptr i64 %.sroa.9.1.ph.i.i.i to ptr
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 24 ; 2 uses
  %i.jc = load i64, ptr %i.jb, align 8, !noalias !31468, !noundef !3
  %i.jd = add i64 %i.jc, -1
  store i64 %i.jd, ptr %i.jb, align 8, !noalias !31468
  br label %_RNvXs2e_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_13FloatingPointNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i

_RNvXs2e_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_13FloatingPointNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i: ; preds = %bb.aq, %bb.ap, %bb.ab
  %.sroa.7.1.i = phi ptr [ undef, %bb.aq ], [ %i.iz, %bb.ap ], [ %.sroa.613.i.i.sroa.0.0.copyload.i, %bb.ab ]
  %.sroa.22.1.i = phi i64 [ undef, %bb.aq ], [ %.sroa.19.i.i.sroa.7.0.i, %bb.ap ], [ %.sroa.22.40.copyload.i, %bb.ab ]
  %.sroa.17.1.i19 = phi i64 [ undef, %bb.aq ], [ %.sroa.19.i.i.sroa.0.0.i, %bb.ap ], [ %.sroa.17.40.copyload.i18, %bb.ab ]
  %.sroa.15.1.i = phi i64 [ undef, %bb.aq ], [ %.sroa.18.1.i.i.i, %bb.ap ], [ %.sroa.613.i.i.sroa.8.0.copyload.i, %bb.ab ]
  %.sroa.13.1.i = phi i64 [ undef, %bb.aq ], [ %.sroa.16.1.i.i.i, %bb.ap ], [ %.sroa.613.i.i.sroa.7.0.copyload.i, %bb.ab ]
  %.sroa.11.1.i = phi i64 [ undef, %bb.aq ], [ %.sroa.14.1.i.i.i, %bb.ap ], [ %.sroa.613.i.i.sroa.6.0.copyload.i, %bb.ab ]
  %.sroa.0.1.i = phi i64 [ -9223372036854775798, %bb.aq ], [ %.sroa.0.1.i.i.i, %bb.ap ], [ %i.hv, %bb.ab ]
  %i.je = phi <2 x i64> [ undef, %bb.aq ], [ %i.iy, %bb.ap ], [ %i.hx, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ep), !noalias !31463
  br label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema13FloatingPointEReECs14kWLkQVSKO_14deltalake_core.exit

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema13FloatingPointEReECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.q, %bb.r, %bb.s, %_RNvXs2e_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_13FloatingPointNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i
  %.sroa.7.2.i = phi ptr [ %.sroa.7.1.i, %_RNvXs2e_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_13FloatingPointNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ null, %bb.s ], [ null, %bb.r ], [ null, %bb.q ]
  %.sroa.22.2.i = phi i64 [ %.sroa.22.1.i, %_RNvXs2e_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_13FloatingPointNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ undef, %bb.s ], [ undef, %bb.r ], [ undef, %bb.q ]
  %.sroa.17.2.i = phi i64 [ %.sroa.17.1.i19, %_RNvXs2e_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_13FloatingPointNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ undef, %bb.s ], [ %i.gs, %bb.r ], [ ptrtoint (ptr @12 to i64), %bb.q ]
  %.sroa.15.2.i = phi i64 [ %.sroa.15.1.i, %_RNvXs2e_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_13FloatingPointNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ undef, %bb.s ], [ %3, %bb.r ], [ -9223372036854775808, %bb.q ]
  %.sroa.13.2.i = phi i64 [ %.sroa.13.1.i, %_RNvXs2e_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_13FloatingPointNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ 0, %bb.s ], [ 0, %bb.r ], [ 0, %bb.q ]
  %.sroa.11.2.i = phi i64 [ %.sroa.11.1.i, %_RNvXs2e_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_13FloatingPointNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ 8, %bb.s ], [ 8, %bb.r ], [ 8, %bb.q ]
  %.sroa.0.2.i = phi i64 [ %.sroa.0.1.i, %_RNvXs2e_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_13FloatingPointNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ -9223372036854775800, %bb.s ], [ -9223372036854775803, %bb.r ], [ -9223372036854775804, %bb.q ]
  %i.jf = phi <2 x i64> [ %i.je, %_RNvXs2e_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_13FloatingPointNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ %i.gr, %bb.s ], [ %i.gr, %bb.r ], [ %i.gr, %bb.q ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.es), !noalias !31495
  store i64 %.sroa.0.2.i, ptr %i.es, align 8, !noalias !31495
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  store ptr %.sroa.7.2.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !31495
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  store i64 %.sroa.11.2.i, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !31495
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  store i64 %.sroa.13.2.i, ptr %.sroa.13.0..sroa_idx.i, align 8, !noalias !31495
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.es, i64 32
  store i64 %.sroa.15.2.i, ptr %.sroa.15.0..sroa_idx.i, align 8, !noalias !31495
  %.sroa.17.0..sroa_idx.i3 = getelementptr inbounds nuw i8, ptr %i.es, i64 40
  store i64 %.sroa.17.2.i, ptr %.sroa.17.0..sroa_idx.i3, align 8, !noalias !31495
  %.sroa.20.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.es, i64 48
  store <2 x i64> %i.jf, ptr %.sroa.20.0..sroa_idx.i, align 8, !noalias !31495
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.es, i64 64
  store i64 %.sroa.22.2.i, ptr %.sroa.22.0..sroa_idx.i, align 8, !noalias !31495
  call void @llvm.lifetime.start.p0(ptr nonnull %i.er), !noalias !31495
  %i.jg = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  store i64 -9223372036854775808, ptr %i.jg, align 8, !noalias !31495
  %.sroa.4.0..sroa_idx.i4 = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  store ptr @62, ptr %.sroa.4.0..sroa_idx.i4, align 8, !noalias !31495
  %.sroa.5.0..sroa_idx.i5 = getelementptr inbounds nuw i8, ptr %i.er, i64 32
  store i64 19, ptr %.sroa.5.0..sroa_idx.i5, align 8, !noalias !31495
  %i.jh = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  store i64 %3, ptr %i.jh, align 8, !noalias !31495
  store i64 2, ptr %i.er, align 8, !noalias !31495
  call fastcc void @_RINvNtCs2TwJzntlzha_11flatbuffers8verifier12append_traceuECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.es, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.er)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.er), !noalias !31495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.es), !noalias !31495
  br label %bb.tx

bb.ar:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31496)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31499)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31502)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31505)
  %i.ji = and i64 %3, 3
  %i.jj = icmp eq i64 %i.ji, 0
  %i.jk = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %3, i64 0 ; 3 uses
  br i1 %i.jj, label %bb.as, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema6BinaryEReECs14kWLkQVSKO_14deltalake_core.exit

bb.as:                                            ; preds = %bb.ar
  %i.jl = tail call i64 @llvm.uadd.sat.i64(i64 %3, i64 4) ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.jn = load i64, ptr %i.jm, align 8, !alias.scope !31508, !noalias !31509, !noundef !3 ; 9 uses
  %i.jo = icmp ugt i64 %i.jl, %i.jn
  br i1 %i.jo, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema6BinaryEReECs14kWLkQVSKO_14deltalake_core.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.jp = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.jq = load i64, ptr %i.jp, align 8, !alias.scope !31508, !noalias !31509, !noundef !3
  %i.jr = add i64 %i.jq, 4                        ; 2 uses
  store i64 %i.jr, ptr %i.jp, align 8, !alias.scope !31508, !noalias !31509
  %i.js = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.jt = load ptr, ptr %i.js, align 8, !alias.scope !31508, !noalias !31509, !nonnull !3, !align !100, !noundef !3
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %i.jv = load i64, ptr %i.ju, align 8, !noalias !31514, !noundef !3
  %i.jw = icmp ugt i64 %i.jr, %i.jv
  br i1 %i.jw, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema6BinaryEReECs14kWLkQVSKO_14deltalake_core.exit, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i39

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i39: ; preds = %bb.at
  %i.jx = icmp ult i64 %3, %i.jn
  br i1 %i.jx, label %bb.au, label %bb.av

bb.au:                                            ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i39
  %i.jy = load ptr, ptr %2, align 8, !alias.scope !31515, !noalias !31516, !nonnull !3, !noundef !3 ; 4 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 %3
  %i.ka = load i8, ptr %i.jz, align 1, !noalias !31517, !noundef !3
  %i.kb = or disjoint i64 %3, 1                   ; 3 uses
  %i.kc = icmp ult i64 %i.kb, %i.jn
  br i1 %i.kc, label %bb.aw, label %bb.ax

bb.av:                                            ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i39
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %3, i64 noundef %i.jn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #51, !noalias !31517
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.kb
  %i.ke = load i8, ptr %i.kd, align 1, !noalias !31517, !noundef !3
  %i.kf = or disjoint i64 %3, 2                   ; 3 uses
  %i.kg = icmp ult i64 %i.kf, %i.jn
  br i1 %i.kg, label %bb.ay, label %bb.az

bb.ax:                                            ; preds = %bb.au
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.kb, i64 noundef %i.jn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #51, !noalias !31517
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.kh = or disjoint i64 %3, 3                   ; 3 uses
  %i.ki = icmp ult i64 %i.kh, %i.jn
  br i1 %i.ki, label %bb.bb, label %bb.ba

bb.az:                                            ; preds = %bb.aw
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.kf, i64 noundef %i.jn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #51, !noalias !31517
  unreachable

bb.ba:                                            ; preds = %bb.ay
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.kh, i64 noundef %i.jn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #51, !noalias !31517
  unreachable

bb.bb:                                            ; preds = %bb.ay
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.kf
  %i.kk = load i8, ptr %i.kj, align 1, !noalias !31517, !noundef !3
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.kh
  %i.km = load i8, ptr %i.kl, align 1, !noalias !31517, !noundef !3
  %.sroa.6.0.insert.ext.i.i.i40 = zext i8 %i.km to i64
  %.sroa.6.0.insert.shift.i.i.i41 = shl nuw nsw i64 %.sroa.6.0.insert.ext.i.i.i40, 24
  %.sroa.5.0.insert.ext.i.i.i42 = zext i8 %i.kk to i64
  %.sroa.5.0.insert.shift.i.i.i43 = shl nuw nsw i64 %.sroa.5.0.insert.ext.i.i.i42, 16
  %.sroa.4.0.insert.ext.i.i.i44 = zext i8 %i.ke to i64
  %.sroa.4.0.insert.shift.i.i.i45 = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i.i44, 8
  %.sroa.0.0.insert.ext.i.i.i46 = zext i8 %i.ka to i64
  %.sroa.5.0.insert.insert.i.i.i47 = or disjoint i64 %.sroa.4.0.insert.shift.i.i.i45, %.sroa.0.0.insert.ext.i.i.i46
  %.sroa.4.0.insert.insert.i.i.i48 = or disjoint i64 %.sroa.5.0.insert.insert.i.i.i47, %.sroa.5.0.insert.shift.i.i.i43
  %.sroa.0.0.insert.insert.i.i.i49 = or disjoint i64 %.sroa.4.0.insert.insert.i.i.i48, %.sroa.6.0.insert.shift.i.i.i41
  %i.kn = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.0.insert.insert.i.i.i49, i64 %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ei), !noalias !31518
  call fastcc void @_RNvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB5_8Verifier11visit_table(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.ei, ptr noalias noundef nonnull align 8 dereferenceable(48) %2, i64 noundef %i.kn) #50, !noalias !31522
  %i.ko = load i64, ptr %i.ei, align 8, !range !99, !noalias !31518, !noundef !3 ; 2 uses
  %.not.i.i.i50 = icmp eq i64 %i.ko, -9223372036854775798
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %.sroa.013.0.copyload.i.i.i51 = load ptr, ptr %i.kp, align 8, !noalias !31518 ; 2 uses
  br i1 %.not.i.i.i50, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %.sroa.624.0..sroa_idx.i.i.i52 = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %6 = load <2 x i64>, ptr %.sroa.624.0..sroa_idx.i.i.i52, align 8, !noalias !31518
  %.sroa.826.0..sroa_idx.i.i.i56 = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  %.sroa.826.0.copyload.i.i.i57 = load i64, ptr %.sroa.826.0..sroa_idx.i.i.i56, align 8, !noalias !31518
  %.sroa.927.0..sroa_idx.i.i.i58 = getelementptr inbounds nuw i8, ptr %i.ei, i64 40
  %.sroa.14.40.copyload.i59 = load i64, ptr %.sroa.927.0..sroa_idx.i.i.i58, align 8, !noalias !31523
  %.sroa.16.40..sroa.927.0..sroa_idx.i.i.sroa_idx.i60 = getelementptr inbounds nuw i8, ptr %i.ei, i64 48
  %.sroa.16.40.copyload.i61 = load i64, ptr %.sroa.16.40..sroa.927.0..sroa_idx.i.i.sroa_idx.i60, align 8, !noalias !31523
  %.sroa.17.40..sroa.927.0..sroa_idx.i.i.sroa_idx.i62 = getelementptr inbounds nuw i8, ptr %i.ei, i64 56
  %i.kq = load <2 x i64>, ptr %.sroa.17.40..sroa.927.0..sroa_idx.i.i.sroa_idx.i62, align 8, !noalias !31523
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei), !noalias !31518
  br label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema6BinaryEReECs14kWLkQVSKO_14deltalake_core.exit

bb.bd:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei), !noalias !31518
  %i.kr = getelementptr inbounds nuw i8, ptr %.sroa.013.0.copyload.i.i.i51, i64 24 ; 2 uses
  %i.ks = load i64, ptr %i.kr, align 8, !noalias !31522, !noundef !3
  %i.kt = add i64 %i.ks, -1
  store i64 %i.kt, ptr %i.kr, align 8, !noalias !31522
  br label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema6BinaryEReECs14kWLkQVSKO_14deltalake_core.exit

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema6BinaryEReECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ar, %bb.as, %bb.at, %bb.bc, %bb.bd
  %.sroa.5.1.i20 = phi ptr [ null, %bb.ar ], [ null, %bb.at ], [ null, %bb.as ], [ undef, %bb.bd ], [ %.sroa.013.0.copyload.i.i.i51, %bb.bc ]
  %.sroa.16.1.i23 = phi i64 [ 3, %bb.ar ], [ 3, %bb.at ], [ 3, %bb.as ], [ undef, %bb.bd ], [ %.sroa.16.40.copyload.i61, %bb.bc ]
  %.sroa.14.1.i24 = phi i64 [ ptrtoint (ptr @12 to i64), %bb.ar ], [ undef, %bb.at ], [ %i.jl, %bb.as ], [ undef, %bb.bd ], [ %.sroa.14.40.copyload.i59, %bb.bc ]
  %.sroa.12.1.i25 = phi i64 [ -9223372036854775808, %bb.ar ], [ undef, %bb.at ], [ %3, %bb.as ], [ undef, %bb.bd ], [ %.sroa.826.0.copyload.i.i.i57, %bb.bc ]
  %.sroa.0.0.i28.a = phi i64 [ -9223372036854775804, %bb.ar ], [ -9223372036854775800, %bb.at ], [ -9223372036854775803, %bb.as ], [ -9223372036854775798, %bb.bd ], [ %i.ko, %bb.bc ]
  %7 = phi <2 x i64> [ <i64 8, i64 0>, %bb.ar ], [ <i64 8, i64 0>, %bb.at ], [ <i64 8, i64 0>, %bb.as ], [ undef, %bb.bd ], [ %6, %bb.bc ]
  %i.ku = phi <2 x i64> [ %i.jk, %bb.ar ], [ %i.jk, %bb.at ], [ %i.jk, %bb.as ], [ undef, %bb.bd ], [ %i.kq, %bb.bc ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ek), !noalias !31524
  store i64 %.sroa.0.0.i28.a, ptr %i.ek, align 8, !noalias !31524
  %.sroa.5.0..sroa_idx.i29 = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store ptr %.sroa.5.1.i20, ptr %.sroa.5.0..sroa_idx.i29, align 8, !noalias !31524
  %.sroa.8.0..sroa_idx.i30 = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store <2 x i64> %7, ptr %.sroa.8.0..sroa_idx.i30, align 8, !noalias !31524
  %.sroa.12.0..sroa_idx.i32 = getelementptr inbounds nuw i8, ptr %i.ek, i64 32
  store i64 %.sroa.12.1.i25, ptr %.sroa.12.0..sroa_idx.i32, align 8, !noalias !31524
  %.sroa.14.0..sroa_idx.i33 = getelementptr inbounds nuw i8, ptr %i.ek, i64 40
  store i64 %.sroa.14.1.i24, ptr %.sroa.14.0..sroa_idx.i33, align 8, !noalias !31524
  %.sroa.16.0..sroa_idx.i34 = getelementptr inbounds nuw i8, ptr %i.ek, i64 48
  store i64 %.sroa.16.1.i23, ptr %.sroa.16.0..sroa_idx.i34, align 8, !noalias !31524
  %.sroa.17.0..sroa_idx.i35 = getelementptr inbounds nuw i8, ptr %i.ek, i64 56
  store <2 x i64> %i.ku, ptr %.sroa.17.0..sroa_idx.i35, align 8, !noalias !31524
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ej), !noalias !31524
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  store i64 -9223372036854775808, ptr %i.kv, align 8, !noalias !31524
  %.sroa.4.0..sroa_idx.i37 = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  store ptr @63, ptr %.sroa.4.0..sroa_idx.i37, align 8, !noalias !31524
  %.sroa.52.0..sroa_idx.i38 = getelementptr inbounds nuw i8, ptr %i.ej, i64 32
  store i64 12, ptr %.sroa.52.0..sroa_idx.i38, align 8, !noalias !31524
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store i64 %3, ptr %i.kw, align 8, !noalias !31524
  store i64 2, ptr %i.ej, align 8, !noalias !31524
  call fastcc void @_RINvNtCs2TwJzntlzha_11flatbuffers8verifier12append_traceuECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.ek, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.ej)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ej), !noalias !31524
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ek), !noalias !31524
  br label %bb.tx

bb.be:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31525)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31528)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31531)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31534)
  %i.kx = and i64 %3, 3
  %i.ky = icmp eq i64 %i.kx, 0
  %i.kz = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %3, i64 0 ; 3 uses
  br i1 %i.ky, label %bb.bf, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema4Utf8EReECs14kWLkQVSKO_14deltalake_core.exit

bb.bf:                                            ; preds = %bb.be
  %i.la = tail call i64 @llvm.uadd.sat.i64(i64 %3, i64 4) ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.lc = load i64, ptr %i.lb, align 8, !alias.scope !31537, !noalias !31538, !noundef !3 ; 9 uses
  %i.ld = icmp ugt i64 %i.la, %i.lc
  br i1 %i.ld, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema4Utf8EReECs14kWLkQVSKO_14deltalake_core.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.le = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.lf = load i64, ptr %i.le, align 8, !alias.scope !31537, !noalias !31538, !noundef !3
  %i.lg = add i64 %i.lf, 4                        ; 2 uses
  store i64 %i.lg, ptr %i.le, align 8, !alias.scope !31537, !noalias !31538
  %i.lh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.li = load ptr, ptr %i.lh, align 8, !alias.scope !31537, !noalias !31538, !nonnull !3, !align !100, !noundef !3
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  %i.lk = load i64, ptr %i.lj, align 8, !noalias !31543, !noundef !3
  %i.ll = icmp ugt i64 %i.lg, %i.lk
  br i1 %i.ll, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema4Utf8EReECs14kWLkQVSKO_14deltalake_core.exit, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i85

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i85: ; preds = %bb.bg
  %i.lm = icmp ult i64 %3, %i.lc
  br i1 %i.lm, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i85
  %i.ln = load ptr, ptr %2, align 8, !alias.scope !31544, !noalias !31545, !nonnull !3, !noundef !3 ; 4 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 %3
  %i.lp = load i8, ptr %i.lo, align 1, !noalias !31546, !noundef !3
  %i.lq = or disjoint i64 %3, 1                   ; 3 uses
  %i.lr = icmp ult i64 %i.lq, %i.lc
  br i1 %i.lr, label %bb.bj, label %bb.bk

bb.bi:                                            ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i85
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %3, i64 noundef %i.lc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #51, !noalias !31546
  unreachable

bb.bj:                                            ; preds = %bb.bh
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.lq
  %i.lt = load i8, ptr %i.ls, align 1, !noalias !31546, !noundef !3
  %i.lu = or disjoint i64 %3, 2                   ; 3 uses
  %i.lv = icmp ult i64 %i.lu, %i.lc
  br i1 %i.lv, label %bb.bl, label %bb.bm

bb.bk:                                            ; preds = %bb.bh
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.lq, i64 noundef %i.lc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #51, !noalias !31546
  unreachable

bb.bl:                                            ; preds = %bb.bj
  %i.lw = or disjoint i64 %3, 3                   ; 3 uses
  %i.lx = icmp ult i64 %i.lw, %i.lc
  br i1 %i.lx, label %bb.bo, label %bb.bn

bb.bm:                                            ; preds = %bb.bj
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.lu, i64 noundef %i.lc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #51, !noalias !31546
  unreachable

bb.bn:                                            ; preds = %bb.bl
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.lw, i64 noundef %i.lc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #51, !noalias !31546
  unreachable

bb.bo:                                            ; preds = %bb.bl
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.lu
  %i.lz = load i8, ptr %i.ly, align 1, !noalias !31546, !noundef !3
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.lw
  %i.mb = load i8, ptr %i.ma, align 1, !noalias !31546, !noundef !3
  %.sroa.6.0.insert.ext.i.i.i86 = zext i8 %i.mb to i64
  %.sroa.6.0.insert.shift.i.i.i87 = shl nuw nsw i64 %.sroa.6.0.insert.ext.i.i.i86, 24
  %.sroa.5.0.insert.ext.i.i.i88 = zext i8 %i.lz to i64
  %.sroa.5.0.insert.shift.i.i.i89 = shl nuw nsw i64 %.sroa.5.0.insert.ext.i.i.i88, 16
  %.sroa.4.0.insert.ext.i.i.i90 = zext i8 %i.lt to i64
  %.sroa.4.0.insert.shift.i.i.i91 = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i.i90, 8
  %.sroa.0.0.insert.ext.i.i.i92 = zext i8 %i.lp to i64
  %.sroa.5.0.insert.insert.i.i.i93 = or disjoint i64 %.sroa.4.0.insert.shift.i.i.i91, %.sroa.0.0.insert.ext.i.i.i92
  %.sroa.4.0.insert.insert.i.i.i94 = or disjoint i64 %.sroa.5.0.insert.insert.i.i.i93, %.sroa.5.0.insert.shift.i.i.i89
  %.sroa.0.0.insert.insert.i.i.i95 = or disjoint i64 %.sroa.4.0.insert.insert.i.i.i94, %.sroa.6.0.insert.shift.i.i.i87
  %i.mc = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.0.insert.insert.i.i.i95, i64 %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef), !noalias !31547
  call fastcc void @_RNvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB5_8Verifier11visit_table(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.ef, ptr noalias noundef nonnull align 8 dereferenceable(48) %2, i64 noundef %i.mc) #50, !noalias !31551
  %i.md = load i64, ptr %i.ef, align 8, !range !99, !noalias !31547, !noundef !3 ; 2 uses
  %.not.i.i.i96 = icmp eq i64 %i.md, -9223372036854775798
  %i.me = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %.sroa.013.0.copyload.i.i.i97 = load ptr, ptr %i.me, align 8, !noalias !31547 ; 2 uses
  br i1 %.not.i.i.i96, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %.sroa.624.0..sroa_idx.i.i.i98 = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %8 = load <2 x i64>, ptr %.sroa.624.0..sroa_idx.i.i.i98, align 8, !noalias !31547
  %.sroa.826.0..sroa_idx.i.i.i102 = getelementptr inbounds nuw i8, ptr %i.ef, i64 32
  %.sroa.826.0.copyload.i.i.i103 = load i64, ptr %.sroa.826.0..sroa_idx.i.i.i102, align 8, !noalias !31547
  %.sroa.927.0..sroa_idx.i.i.i104 = getelementptr inbounds nuw i8, ptr %i.ef, i64 40
  %.sroa.14.40.copyload.i105 = load i64, ptr %.sroa.927.0..sroa_idx.i.i.i104, align 8, !noalias !31552
  %.sroa.16.40..sroa.927.0..sroa_idx.i.i.sroa_idx.i106 = getelementptr inbounds nuw i8, ptr %i.ef, i64 48
  %.sroa.16.40.copyload.i107 = load i64, ptr %.sroa.16.40..sroa.927.0..sroa_idx.i.i.sroa_idx.i106, align 8, !noalias !31552
  %.sroa.17.40..sroa.927.0..sroa_idx.i.i.sroa_idx.i108 = getelementptr inbounds nuw i8, ptr %i.ef, i64 56
  %i.mf = load <2 x i64>, ptr %.sroa.17.40..sroa.927.0..sroa_idx.i.i.sroa_idx.i108, align 8, !noalias !31552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef), !noalias !31547
  br label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema4Utf8EReECs14kWLkQVSKO_14deltalake_core.exit

bb.bq:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef), !noalias !31547
  %i.mg = getelementptr inbounds nuw i8, ptr %.sroa.013.0.copyload.i.i.i97, i64 24 ; 2 uses
  %i.mh = load i64, ptr %i.mg, align 8, !noalias !31551, !noundef !3
  %i.mi = add i64 %i.mh, -1
  store i64 %i.mi, ptr %i.mg, align 8, !noalias !31551
  br label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema4Utf8EReECs14kWLkQVSKO_14deltalake_core.exit

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema4Utf8EReECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.be, %bb.bf, %bb.bg, %bb.bp, %bb.bq
  %.sroa.5.1.i66 = phi ptr [ null, %bb.be ], [ null, %bb.bg ], [ null, %bb.bf ], [ undef, %bb.bq ], [ %.sroa.013.0.copyload.i.i.i97, %bb.bp ]
  %.sroa.16.1.i69 = phi i64 [ 3, %bb.be ], [ 3, %bb.bg ], [ 3, %bb.bf ], [ undef, %bb.bq ], [ %.sroa.16.40.copyload.i107, %bb.bp ]
  %.sroa.14.1.i70 = phi i64 [ ptrtoint (ptr @12 to i64), %bb.be ], [ undef, %bb.bg ], [ %i.la, %bb.bf ], [ undef, %bb.bq ], [ %.sroa.14.40.copyload.i105, %bb.bp ]
  %.sroa.12.1.i71 = phi i64 [ -9223372036854775808, %bb.be ], [ undef, %bb.bg ], [ %3, %bb.bf ], [ undef, %bb.bq ], [ %.sroa.826.0.copyload.i.i.i103, %bb.bp ]
  %.sroa.0.0.i74.a = phi i64 [ -9223372036854775804, %bb.be ], [ -9223372036854775800, %bb.bg ], [ -9223372036854775803, %bb.bf ], [ -9223372036854775798, %bb.bq ], [ %i.md, %bb.bp ]
  %9 = phi <2 x i64> [ <i64 8, i64 0>, %bb.be ], [ <i64 8, i64 0>, %bb.bg ], [ <i64 8, i64 0>, %bb.bf ], [ undef, %bb.bq ], [ %8, %bb.bp ]
  %i.mj = phi <2 x i64> [ %i.kz, %bb.be ], [ %i.kz, %bb.bg ], [ %i.kz, %bb.bf ], [ undef, %bb.bq ], [ %i.mf, %bb.bp ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eh), !noalias !31553
  store i64 %.sroa.0.0.i74.a, ptr %i.eh, align 8, !noalias !31553
  %.sroa.5.0..sroa_idx.i75 = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store ptr %.sroa.5.1.i66, ptr %.sroa.5.0..sroa_idx.i75, align 8, !noalias !31553
  %.sroa.8.0..sroa_idx.i76 = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  store <2 x i64> %9, ptr %.sroa.8.0..sroa_idx.i76, align 8, !noalias !31553
  %.sroa.12.0..sroa_idx.i78 = getelementptr inbounds nuw i8, ptr %i.eh, i64 32
  store i64 %.sroa.12.1.i71, ptr %.sroa.12.0..sroa_idx.i78, align 8, !noalias !31553
  %.sroa.14.0..sroa_idx.i79 = getelementptr inbounds nuw i8, ptr %i.eh, i64 40
  store i64 %.sroa.14.1.i70, ptr %.sroa.14.0..sroa_idx.i79, align 8, !noalias !31553
  %.sroa.16.0..sroa_idx.i80 = getelementptr inbounds nuw i8, ptr %i.eh, i64 48
  store i64 %.sroa.16.1.i69, ptr %.sroa.16.0..sroa_idx.i80, align 8, !noalias !31553
  %.sroa.17.0..sroa_idx.i81 = getelementptr inbounds nuw i8, ptr %i.eh, i64 56
  store <2 x i64> %i.mj, ptr %.sroa.17.0..sroa_idx.i81, align 8, !noalias !31553
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eg), !noalias !31553
  %i.mk = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  store i64 -9223372036854775808, ptr %i.mk, align 8, !noalias !31553
  %.sroa.4.0..sroa_idx.i83 = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  store ptr @64, ptr %.sroa.4.0..sroa_idx.i83, align 8, !noalias !31553
  %.sroa.52.0..sroa_idx.i84 = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  store i64 10, ptr %.sroa.52.0..sroa_idx.i84, align 8, !noalias !31553
  %i.ml = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  store i64 %3, ptr %i.ml, align 8, !noalias !31553
  store i64 2, ptr %i.eg, align 8, !noalias !31553
  call fastcc void @_RINvNtCs2TwJzntlzha_11flatbuffers8verifier12append_traceuECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.eh, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.eg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg), !noalias !31553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh), !noalias !31553
  br label %bb.tx

bb.br:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31554)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31557)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31560)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31563)
  %i.mm = and i64 %3, 3
  %i.mn = icmp eq i64 %i.mm, 0
  %i.mo = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %3, i64 0 ; 3 uses
  br i1 %i.mn, label %bb.bs, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema4BoolEReECs14kWLkQVSKO_14deltalake_core.exit

bb.bs:                                            ; preds = %bb.br
  %i.mp = tail call i64 @llvm.uadd.sat.i64(i64 %3, i64 4) ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.mr = load i64, ptr %i.mq, align 8, !alias.scope !31566, !noalias !31567, !noundef !3 ; 9 uses
  %i.ms = icmp ugt i64 %i.mp, %i.mr
  br i1 %i.ms, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema4BoolEReECs14kWLkQVSKO_14deltalake_core.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.mt = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.mu = load i64, ptr %i.mt, align 8, !alias.scope !31566, !noalias !31567, !noundef !3
  %i.mv = add i64 %i.mu, 4                        ; 2 uses
  store i64 %i.mv, ptr %i.mt, align 8, !alias.scope !31566, !noalias !31567
  %i.mw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.mx = load ptr, ptr %i.mw, align 8, !alias.scope !31566, !noalias !31567, !nonnull !3, !align !100, !noundef !3
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 16
  %i.mz = load i64, ptr %i.my, align 8, !noalias !31572, !noundef !3
  %i.na = icmp ugt i64 %i.mv, %i.mz
  br i1 %i.na, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema4BoolEReECs14kWLkQVSKO_14deltalake_core.exit, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i131

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i131: ; preds = %bb.bt
  %i.nb = icmp ult i64 %3, %i.mr
  br i1 %i.nb, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i131
  %i.nc = load ptr, ptr %2, align 8, !alias.scope !31573, !noalias !31574, !nonnull !3, !noundef !3 ; 4 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 %3
  %i.ne = load i8, ptr %i.nd, align 1, !noalias !31575, !noundef !3
  %i.nf = or disjoint i64 %3, 1                   ; 3 uses
  %i.ng = icmp ult i64 %i.nf, %i.mr
  br i1 %i.ng, label %bb.bw, label %bb.bx

bb.bv:                                            ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i131
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %3, i64 noundef %i.mr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #51, !noalias !31575
  unreachable

bb.bw:                                            ; preds = %bb.bu
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nc, i64 %i.nf
  %i.ni = load i8, ptr %i.nh, align 1, !noalias !31575, !noundef !3
  %i.nj = or disjoint i64 %3, 2                   ; 3 uses
  %i.nk = icmp ult i64 %i.nj, %i.mr
  br i1 %i.nk, label %bb.by, label %bb.bz

bb.bx:                                            ; preds = %bb.bu
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.nf, i64 noundef %i.mr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #51, !noalias !31575
  unreachable

bb.by:                                            ; preds = %bb.bw
  %i.nl = or disjoint i64 %3, 3                   ; 3 uses
  %i.nm = icmp ult i64 %i.nl, %i.mr
  br i1 %i.nm, label %bb.cb, label %bb.ca

bb.bz:                                            ; preds = %bb.bw
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.nj, i64 noundef %i.mr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #51, !noalias !31575
  unreachable

bb.ca:                                            ; preds = %bb.by
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.nl, i64 noundef %i.mr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #51, !noalias !31575
  unreachable

bb.cb:                                            ; preds = %bb.by
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nc, i64 %i.nj
  %i.no = load i8, ptr %i.nn, align 1, !noalias !31575, !noundef !3
  %i.np = getelementptr inbounds nuw i8, ptr %i.nc, i64 %i.nl
  %i.nq = load i8, ptr %i.np, align 1, !noalias !31575, !noundef !3
  %.sroa.6.0.insert.ext.i.i.i132 = zext i8 %i.nq to i64
  %.sroa.6.0.insert.shift.i.i.i133 = shl nuw nsw i64 %.sroa.6.0.insert.ext.i.i.i132, 24
  %.sroa.5.0.insert.ext.i.i.i134 = zext i8 %i.no to i64
  %.sroa.5.0.insert.shift.i.i.i135 = shl nuw nsw i64 %.sroa.5.0.insert.ext.i.i.i134, 16
  %.sroa.4.0.insert.ext.i.i.i136 = zext i8 %i.ni to i64
  %.sroa.4.0.insert.shift.i.i.i137 = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i.i136, 8
  %.sroa.0.0.insert.ext.i.i.i138 = zext i8 %i.ne to i64
  %.sroa.5.0.insert.insert.i.i.i139 = or disjoint i64 %.sroa.4.0.insert.shift.i.i.i137, %.sroa.0.0.insert.ext.i.i.i138
  %.sroa.4.0.insert.insert.i.i.i140 = or disjoint i64 %.sroa.5.0.insert.insert.i.i.i139, %.sroa.5.0.insert.shift.i.i.i135
  %.sroa.0.0.insert.insert.i.i.i141 = or disjoint i64 %.sroa.4.0.insert.insert.i.i.i140, %.sroa.6.0.insert.shift.i.i.i133
  %i.nr = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.0.insert.insert.i.i.i141, i64 %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec), !noalias !31576
  call fastcc void @_RNvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB5_8Verifier11visit_table(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.ec, ptr noalias noundef nonnull align 8 dereferenceable(48) %2, i64 noundef %i.nr) #50, !noalias !31580
  %i.ns = load i64, ptr %i.ec, align 8, !range !99, !noalias !31576, !noundef !3 ; 2 uses
  %.not.i.i.i142 = icmp eq i64 %i.ns, -9223372036854775798
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %.sroa.013.0.copyload.i.i.i143 = load ptr, ptr %i.nt, align 8, !noalias !31576 ; 2 uses
  br i1 %.not.i.i.i142, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %.sroa.624.0..sroa_idx.i.i.i144 = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %10 = load <2 x i64>, ptr %.sroa.624.0..sroa_idx.i.i.i144, align 8, !noalias !31576
  %.sroa.826.0..sroa_idx.i.i.i148 = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  %.sroa.826.0.copyload.i.i.i149 = load i64, ptr %.sroa.826.0..sroa_idx.i.i.i148, align 8, !noalias !31576
  %.sroa.927.0..sroa_idx.i.i.i150 = getelementptr inbounds nuw i8, ptr %i.ec, i64 40
  %.sroa.14.40.copyload.i151 = load i64, ptr %.sroa.927.0..sroa_idx.i.i.i150, align 8, !noalias !31581
  %.sroa.16.40..sroa.927.0..sroa_idx.i.i.sroa_idx.i152 = getelementptr inbounds nuw i8, ptr %i.ec, i64 48
  %.sroa.16.40.copyload.i153 = load i64, ptr %.sroa.16.40..sroa.927.0..sroa_idx.i.i.sroa_idx.i152, align 8, !noalias !31581
  %.sroa.17.40..sroa.927.0..sroa_idx.i.i.sroa_idx.i154 = getelementptr inbounds nuw i8, ptr %i.ec, i64 56
  %i.nu = load <2 x i64>, ptr %.sroa.17.40..sroa.927.0..sroa_idx.i.i.sroa_idx.i154, align 8, !noalias !31581
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec), !noalias !31576
  br label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema4BoolEReECs14kWLkQVSKO_14deltalake_core.exit

bb.cd:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec), !noalias !31576
  %i.nv = getelementptr inbounds nuw i8, ptr %.sroa.013.0.copyload.i.i.i143, i64 24 ; 2 uses
  %i.nw = load i64, ptr %i.nv, align 8, !noalias !31580, !noundef !3
  %i.nx = add i64 %i.nw, -1
  store i64 %i.nx, ptr %i.nv, align 8, !noalias !31580
  br label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema4BoolEReECs14kWLkQVSKO_14deltalake_core.exit

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema4BoolEReECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.br, %bb.bs, %bb.bt, %bb.cc, %bb.cd
  %.sroa.5.1.i112 = phi ptr [ null, %bb.br ], [ null, %bb.bt ], [ null, %bb.bs ], [ undef, %bb.cd ], [ %.sroa.013.0.copyload.i.i.i143, %bb.cc ]
  %.sroa.16.1.i115 = phi i64 [ 3, %bb.br ], [ 3, %bb.bt ], [ 3, %bb.bs ], [ undef, %bb.cd ], [ %.sroa.16.40.copyload.i153, %bb.cc ]
  %.sroa.14.1.i116 = phi i64 [ ptrtoint (ptr @12 to i64), %bb.br ], [ undef, %bb.bt ], [ %i.mp, %bb.bs ], [ undef, %bb.cd ], [ %.sroa.14.40.copyload.i151, %bb.cc ]
  %.sroa.12.1.i117 = phi i64 [ -9223372036854775808, %bb.br ], [ undef, %bb.bt ], [ %3, %bb.bs ], [ undef, %bb.cd ], [ %.sroa.826.0.copyload.i.i.i149, %bb.cc ]
  %.sroa.0.0.i120.a = phi i64 [ -9223372036854775804, %bb.br ], [ -9223372036854775800, %bb.bt ], [ -9223372036854775803, %bb.bs ], [ -9223372036854775798, %bb.cd ], [ %i.ns, %bb.cc ]
  %11 = phi <2 x i64> [ <i64 8, i64 0>, %bb.br ], [ <i64 8, i64 0>, %bb.bt ], [ <i64 8, i64 0>, %bb.bs ], [ undef, %bb.cd ], [ %10, %bb.cc ]
  %i.ny = phi <2 x i64> [ %i.mo, %bb.br ], [ %i.mo, %bb.bt ], [ %i.mo, %bb.bs ], [ undef, %bb.cd ], [ %i.nu, %bb.cc ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee), !noalias !31582
  store i64 %.sroa.0.0.i120.a, ptr %i.ee, align 8, !noalias !31582
  %.sroa.5.0..sroa_idx.i121 = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store ptr %.sroa.5.1.i112, ptr %.sroa.5.0..sroa_idx.i121, align 8, !noalias !31582
  %.sroa.8.0..sroa_idx.i122 = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  store <2 x i64> %11, ptr %.sroa.8.0..sroa_idx.i122, align 8, !noalias !31582
  %.sroa.12.0..sroa_idx.i124 = getelementptr inbounds nuw i8, ptr %i.ee, i64 32
  store i64 %.sroa.12.1.i117, ptr %.sroa.12.0..sroa_idx.i124, align 8, !noalias !31582
  %.sroa.14.0..sroa_idx.i125 = getelementptr inbounds nuw i8, ptr %i.ee, i64 40
  store i64 %.sroa.14.1.i116, ptr %.sroa.14.0..sroa_idx.i125, align 8, !noalias !31582
  %.sroa.16.0..sroa_idx.i126 = getelementptr inbounds nuw i8, ptr %i.ee, i64 48
  store i64 %.sroa.16.1.i115, ptr %.sroa.16.0..sroa_idx.i126, align 8, !noalias !31582
  %.sroa.17.0..sroa_idx.i127 = getelementptr inbounds nuw i8, ptr %i.ee, i64 56
  store <2 x i64> %i.ny, ptr %.sroa.17.0..sroa_idx.i127, align 8, !noalias !31582
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed), !noalias !31582
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  store i64 -9223372036854775808, ptr %i.nz, align 8, !noalias !31582
  %.sroa.4.0..sroa_idx.i129 = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  store ptr @65, ptr %.sroa.4.0..sroa_idx.i129, align 8, !noalias !31582
  %.sroa.52.0..sroa_idx.i130 = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  store i64 10, ptr %.sroa.52.0..sroa_idx.i130, align 8, !noalias !31582
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store i64 %3, ptr %i.oa, align 8, !noalias !31582
  store i64 2, ptr %i.ed, align 8, !noalias !31582
  call fastcc void @_RINvNtCs2TwJzntlzha_11flatbuffers8verifier12append_traceuECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.ee, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.ed)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed), !noalias !31582
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee), !noalias !31582
  br label %bb.tx

bb.ce:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31583)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31586)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31589)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31592)
  %i.ob = and i64 %3, 3
  %i.oc = icmp eq i64 %i.ob, 0
  %i.od = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %3, i64 0 ; 3 uses
  br i1 %i.oc, label %bb.cf, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema7DecimalEReECs14kWLkQVSKO_14deltalake_core.exit

bb.cf:                                            ; preds = %bb.ce
  %i.oe = tail call i64 @llvm.uadd.sat.i64(i64 %3, i64 4) ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.og = load i64, ptr %i.of, align 8, !alias.scope !31595, !noalias !31596, !noundef !3 ; 9 uses
  %i.oh = icmp ugt i64 %i.oe, %i.og
  %i.oi = insertelement <2 x i64> <i64 0, i64 poison>, i64 %3, i64 1
  %i.oj = insertelement <2 x i64> <i64 poison, i64 3>, i64 %i.oe, i64 0
  br i1 %i.oh, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema7DecimalEReECs14kWLkQVSKO_14deltalake_core.exit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ok = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ol = load i64, ptr %i.ok, align 8, !alias.scope !31595, !noalias !31596, !noundef !3
  %i.om = add i64 %i.ol, 4                        ; 2 uses
  store i64 %i.om, ptr %i.ok, align 8, !alias.scope !31595, !noalias !31596
  %i.on = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.oo = load ptr, ptr %i.on, align 8, !alias.scope !31595, !noalias !31596, !nonnull !3, !align !100, !noundef !3
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 16
  %i.oq = load i64, ptr %i.op, align 8, !noalias !31601, !noundef !3
  %i.or = icmp ugt i64 %i.om, %i.oq
  br i1 %i.or, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema7DecimalEReECs14kWLkQVSKO_14deltalake_core.exit, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i163

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i163: ; preds = %bb.cg
  %i.os = icmp ult i64 %3, %i.og
  br i1 %i.os, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i163
  %i.ot = load ptr, ptr %2, align 8, !alias.scope !31602, !noalias !31603, !nonnull !3, !noundef !3 ; 4 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 %3
  %i.ov = load i8, ptr %i.ou, align 1, !noalias !31604, !noundef !3
  %i.ow = or disjoint i64 %3, 1                   ; 3 uses
  %i.ox = icmp ult i64 %i.ow, %i.og
  br i1 %i.ox, label %bb.cj, label %bb.ck

bb.ci:                                            ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i163
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %3, i64 noundef %i.og, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #51, !noalias !31604
  unreachable

bb.cj:                                            ; preds = %bb.ch
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ot, i64 %i.ow
  %i.oz = load i8, ptr %i.oy, align 1, !noalias !31604, !noundef !3
  %i.pa = or disjoint i64 %3, 2                   ; 3 uses
  %i.pb = icmp ult i64 %i.pa, %i.og
  br i1 %i.pb, label %bb.cl, label %bb.cm

bb.ck:                                            ; preds = %bb.ch
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.ow, i64 noundef %i.og, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #51, !noalias !31604
  unreachable

bb.cl:                                            ; preds = %bb.cj
  %i.pc = or disjoint i64 %3, 3                   ; 3 uses
  %i.pd = icmp ult i64 %i.pc, %i.og
  br i1 %i.pd, label %bb.co, label %bb.cn

bb.cm:                                            ; preds = %bb.cj
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.pa, i64 noundef %i.og, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #51, !noalias !31604
  unreachable

bb.cn:                                            ; preds = %bb.cl
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.pc, i64 noundef %i.og, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #51, !noalias !31604
  unreachable

bb.co:                                            ; preds = %bb.cl
  %i.pe = getelementptr inbounds nuw i8, ptr %i.ot, i64 %i.pa
  %i.pf = load i8, ptr %i.pe, align 1, !noalias !31604, !noundef !3
  %i.pg = getelementptr inbounds nuw i8, ptr %i.ot, i64 %i.pc
  %i.ph = load i8, ptr %i.pg, align 1, !noalias !31604, !noundef !3
  %.sroa.6.0.insert.ext.i.i.i164 = zext i8 %i.ph to i64
  %.sroa.6.0.insert.shift.i.i.i165 = shl nuw nsw i64 %.sroa.6.0.insert.ext.i.i.i164, 24
  %.sroa.5.0.insert.ext.i.i.i166 = zext i8 %i.pf to i64
  %.sroa.5.0.insert.shift.i.i.i167 = shl nuw nsw i64 %.sroa.5.0.insert.ext.i.i.i166, 16
  %.sroa.4.0.insert.ext.i.i.i168 = zext i8 %i.oz to i64
  %.sroa.4.0.insert.shift.i.i.i169 = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i.i168, 8
  %.sroa.0.0.insert.ext.i.i.i170 = zext i8 %i.ov to i64
  %.sroa.5.0.insert.insert.i.i.i171 = or disjoint i64 %.sroa.4.0.insert.shift.i.i.i169, %.sroa.0.0.insert.ext.i.i.i170
  %.sroa.4.0.insert.insert.i.i.i172 = or disjoint i64 %.sroa.5.0.insert.insert.i.i.i171, %.sroa.5.0.insert.shift.i.i.i167
  %.sroa.0.0.insert.insert.i.i.i173 = or disjoint i64 %.sroa.4.0.insert.insert.i.i.i172, %.sroa.6.0.insert.shift.i.i.i165
  %i.pi = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.0.insert.insert.i.i.i173, i64 %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dw), !noalias !31605
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx), !noalias !31605
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy), !noalias !31605
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz), !noalias !31606
  call fastcc void @_RNvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB5_8Verifier11visit_table(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.dz, ptr noalias noundef nonnull align 8 dereferenceable(48) %2, i64 noundef %i.pi) #50, !noalias !31610
  %i.pj = load i64, ptr %i.dz, align 8, !range !99, !noalias !31606, !noundef !3 ; 2 uses
  %.not.i.i.i174 = icmp eq i64 %i.pj, -9223372036854775798
  %i.pk = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %.sroa.625.i.i.sroa.0.0.copyload.i = load i64, ptr %i.pk, align 8, !noalias !31606 ; 3 uses
  %.sroa.625.i.i.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %.sroa.625.i.i.sroa.6.0.copyload.i = load i64, ptr %.sroa.625.i.i.sroa.6.0..sroa_idx.i, align 8, !noalias !31606 ; 2 uses
  %.sroa.625.i.i.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.pl = load <2 x i64>, ptr %.sroa.625.i.i.sroa.7.0..sroa_idx.i, align 8, !noalias !31606 ; 2 uses
  br i1 %.not.i.i.i174, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %.sroa.645.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 40
  %i.pm = load <2 x i64>, ptr %.sroa.645.0..sroa_idx.i.i.i, align 8, !noalias !31611
  %.sroa.31.40..sroa.645.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 56
  %i.pn = load <2 x i64>, ptr %.sroa.31.40..sroa.645.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !31611
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz), !noalias !31606
  %.sroa.9.sroa.8.0.extract.shift25.i = and i64 %.sroa.625.i.i.sroa.0.0.copyload.i, -4294967296
  br label %_RNvXs3c_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_7DecimalNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i

bb.cq:                                            ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz), !noalias !31606
  store i64 %.sroa.625.i.i.sroa.0.0.copyload.i, ptr %i.dy, align 16, !noalias !31606
  %.sroa.625.i.i.sroa.6.0..sroa_idx29.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store i64 %.sroa.625.i.i.sroa.6.0.copyload.i, ptr %.sroa.625.i.i.sroa.6.0..sroa_idx29.i, align 8, !noalias !31606
  %.sroa.625.i.i.sroa.7.0..sroa_idx31.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 16 ; 2 uses
  store <2 x i64> %i.pl, ptr %.sroa.625.i.i.sroa.7.0..sroa_idx31.i, align 16, !noalias !31606
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31612)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31615)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dv), !noalias !31617
  call void @_RNvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB5_13TableVerifier5deref(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.dv, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.dy, i16 noundef 4), !noalias !31619
  %i.po = load i64, ptr %i.dv, align 8, !range !99, !noalias !31617, !noundef !3 ; 2 uses
  %.not.i.i.i.i177 = icmp eq i64 %i.po, -9223372036854775798
  %i.pp = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.pq = load i64, ptr %i.pp, align 8, !noalias !31617 ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.ps = load i64, ptr %i.pr, align 8, !noalias !31617 ; 6 uses
  br i1 %.not.i.i.i.i177, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %.sroa.718.0..sroa_idx.i.i.i.i178 = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.pt = load <2 x i64>, ptr %.sroa.718.0..sroa_idx.i.i.i.i178, align 8, !noalias !31606
  %.sroa.15162.i.i.sroa.6.0..sroa.718.0..sroa_idx.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dv, i64 40
  %i.pu = load <2 x i64>, ptr %.sroa.15162.i.i.sroa.6.0..sroa.718.0..sroa_idx.i.i.i.sroa_idx.i, align 8, !noalias !31606
  %.sroa.15162.i.i.sroa.8.0..sroa.718.0..sroa_idx.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dv, i64 56
  %i.pv = load <2 x i64>, ptr %.sroa.15162.i.i.sroa.8.0..sroa.718.0..sroa_idx.i.i.i.sroa_idx.i, align 8, !noalias !31606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv), !noalias !31617
  br label %bb.dd

bb.cs:                                            ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv), !noalias !31617
  %i.pw = trunc nuw i64 %i.pq to i1
  br i1 %i.pw, label %bb.ct, label %bb.de

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.du), !noalias !31617
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt), !noalias !31617
  %i.px = load ptr, ptr %i.dy, align 16, !alias.scope !31615, !noalias !31620, !nonnull !3, !align !100, !noundef !3 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !31621)
  call void @llvm.experimental.noalias.scope.decl(metadata !31624)
  call void @llvm.experimental.noalias.scope.decl(metadata !31626)
  call void @llvm.experimental.noalias.scope.decl(metadata !31629)
  %i.py = and i64 %i.ps, 3
  %i.pz = icmp eq i64 %i.py, 0
  br i1 %i.pz, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.qa = call i64 @llvm.uadd.sat.i64(i64 %i.ps, i64 4) ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.px, i64 8
  %i.qc = load i64, ptr %i.qb, align 8, !alias.scope !31631, !noalias !31632, !noundef !3
  %i.qd = icmp ugt i64 %i.qa, %i.qc
  br i1 %i.qd, label %bb.cx, label %bb.cw

bb.cv:                                            ; preds = %bb.ct
  store i64 -9223372036854775804, ptr %i.dt, align 8, !alias.scope !31633, !noalias !31634
  %.sroa.242.0..sroa_idx.i.i.i.i.i.i189 = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store i64 0, ptr %.sroa.242.0..sroa_idx.i.i.i.i.i.i189, align 8, !alias.scope !31633, !noalias !31634
  %.sroa.343.0..sroa_idx.i.i.i.i.i.i190 = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.343.0..sroa_idx.i.i.i.i.i.i190, align 8, !alias.scope !31633, !noalias !31634
  %.sroa.444.0..sroa_idx.i.i.i.i.i.i191 = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  store i64 0, ptr %.sroa.444.0..sroa_idx.i.i.i.i.i.i191, align 8, !alias.scope !31633, !noalias !31634
  %.sroa.545.0..sroa_idx.i.i.i.i.i.i192 = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  store i64 -9223372036854775808, ptr %.sroa.545.0..sroa_idx.i.i.i.i.i.i192, align 8, !alias.scope !31633, !noalias !31634
  %.sroa.646.0..sroa_idx.i.i.i.i.i.i193 = getelementptr inbounds nuw i8, ptr %i.dt, i64 40
  store ptr @11, ptr %.sroa.646.0..sroa_idx.i.i.i.i.i.i193, align 8, !alias.scope !31633, !noalias !31634
  %.sroa.747.0..sroa_idx.i.i.i.i.i.i194 = getelementptr inbounds nuw i8, ptr %i.dt, i64 48
end_hunk_4
begin_hunk_5_@_RNCNvXs3Y_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB8_5FieldNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier0Cs14kWLkQVSKO_14deltalake_core:bb.a
  %.sroa.15.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %.sroa.15.0.copyload.i.i.i = load i64, ptr %.sroa.15.0..sroa_idx.i.i.i, align 8, !noalias !31665
  %.sroa.16150.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.rx = load <2 x i64>, ptr %.sroa.16150.0..sroa_idx.i.i.i, align 8, !noalias !31606
  %.sroa.16150.i.i.sroa.6.0..sroa.16150.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 40
  %i.ry = load <2 x i64>, ptr %.sroa.16150.i.i.sroa.6.0..sroa.16150.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !31606
  %.sroa.16150.i.i.sroa.8.0..sroa.16150.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 56
  %i.rz = load <2 x i64>, ptr %.sroa.16150.i.i.sroa.8.0..sroa.16150.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !31606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq), !noalias !31645
  br label %bb.dr

bb.dq:                                            ; preds = %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq), !noalias !31645
  br label %bb.ds

bb.dr:                                            ; preds = %bb.dp, %bb.df
  %.sroa.15.1.i.i.i = phi i64 [ %.sroa.15.0.copyload.i.i.i, %bb.dp ], [ %i.ra, %bb.df ]
  %.sroa.10.1.i.i.i = phi i64 [ %.sroa.10.0.copyload.i.i.i, %bb.dp ], [ %i.qy, %bb.df ] ; 2 uses
  %.sroa.0141.1.i.i.i = phi i64 [ %i.rw, %bb.dp ], [ %i.qw, %bb.df ]
  %i.sa = phi <2 x i64> [ %i.rx, %bb.dp ], [ %i.rb, %bb.df ]
  %i.sb = phi <2 x i64> [ %i.ry, %bb.dp ], [ %i.rc, %bb.df ]
  %i.sc = phi <2 x i64> [ %i.rz, %bb.dp ], [ %i.rd, %bb.df ]
  %.sroa.9.sroa.8.0.extract.shift23.i = and i64 %.sroa.10.1.i.i.i, -4294967296
  br label %_RNvXs3c_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_7DecimalNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i

bb.ds:                                            ; preds = %bb.dq, %bb.dg
  %i.sd = load <2 x i64>, ptr %i.dx, align 16, !alias.scope !31666, !noalias !31667
  store <2 x i64> %i.sd, ptr %i.dw, align 16, !noalias !31606
  %.sroa.613.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.613.sroa.8.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.619.sroa.8.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !31605
  call void @llvm.experimental.noalias.scope.decl(metadata !31668)
  call void @llvm.experimental.noalias.scope.decl(metadata !31671)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn), !noalias !31673
  call void @_RNvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB5_13TableVerifier5deref(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.dn, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.dw, i16 noundef 8), !noalias !31675
  %i.se = load i64, ptr %i.dn, align 8, !range !99, !noalias !31673, !noundef !3 ; 2 uses
  %.not.i112.i.i.i = icmp eq i64 %i.se, -9223372036854775798
  %i.sf = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.sg = load i64, ptr %i.sf, align 8, !noalias !31673 ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.si = load i64, ptr %i.sh, align 8, !noalias !31673 ; 6 uses
  br i1 %.not.i112.i.i.i, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %.sroa.718.0..sroa_idx.i113.i.i.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.sj = load <2 x i64>, ptr %.sroa.718.0..sroa_idx.i113.i.i.i, align 8, !noalias !31676
  %.sroa.21.24..sroa.718.0..sroa_idx.i113.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 40
  %i.sk = load <2 x i64>, ptr %.sroa.21.24..sroa.718.0..sroa_idx.i113.sroa_idx.i.i.i, align 8, !noalias !31606
  %.sroa.21.i.i.sroa.6.0..sroa.21.24..sroa.718.0..sroa_idx.i113.sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 56
  %i.sl = load <2 x i64>, ptr %.sroa.21.i.i.sroa.6.0..sroa.21.24..sroa.718.0..sroa_idx.i113.sroa_idx.i.i.sroa_idx.i, align 8, !noalias !31606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn), !noalias !31673
  br label %bb.ef

bb.du:                                            ; preds = %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn), !noalias !31673
  %i.sm = trunc nuw i64 %i.sg to i1
  br i1 %i.sm, label %bb.dv, label %bb.eg

bb.dv:                                            ; preds = %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm), !noalias !31673
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl), !noalias !31673
  %i.sn = load ptr, ptr %i.dw, align 16, !alias.scope !31671, !noalias !31677, !nonnull !3, !align !100, !noundef !3 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !31678)
  call void @llvm.experimental.noalias.scope.decl(metadata !31681)
  call void @llvm.experimental.noalias.scope.decl(metadata !31683)
  call void @llvm.experimental.noalias.scope.decl(metadata !31686)
  %i.so = and i64 %i.si, 3
  %i.sp = icmp eq i64 %i.so, 0
  br i1 %i.sp, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %i.sq = call i64 @llvm.uadd.sat.i64(i64 %i.si, i64 4) ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sn, i64 8
  %i.ss = load i64, ptr %i.sr, align 8, !alias.scope !31688, !noalias !31689, !noundef !3
  %i.st = icmp ugt i64 %i.sq, %i.ss
  br i1 %i.st, label %bb.dz, label %bb.dy

bb.dx:                                            ; preds = %bb.dv
  store i64 -9223372036854775804, ptr %i.dl, align 8, !alias.scope !31690, !noalias !31691
  %.sroa.242.0..sroa_idx.i.i.i117.i.i.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store i64 0, ptr %.sroa.242.0..sroa_idx.i.i.i117.i.i.i, align 8, !alias.scope !31690, !noalias !31691
  %.sroa.343.0..sroa_idx.i.i.i118.i.i.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.343.0..sroa_idx.i.i.i118.i.i.i, align 8, !alias.scope !31690, !noalias !31691
  %.sroa.444.0..sroa_idx.i.i.i119.i.i.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  store i64 0, ptr %.sroa.444.0..sroa_idx.i.i.i119.i.i.i, align 8, !alias.scope !31690, !noalias !31691
  %.sroa.545.0..sroa_idx.i.i.i120.i.i.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  store i64 -9223372036854775808, ptr %.sroa.545.0..sroa_idx.i.i.i120.i.i.i, align 8, !alias.scope !31690, !noalias !31691
  %.sroa.646.0..sroa_idx.i.i.i121.i.i.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 40
  store ptr @11, ptr %.sroa.646.0..sroa_idx.i.i.i121.i.i.i, align 8, !alias.scope !31690, !noalias !31691
  %.sroa.747.0..sroa_idx.i.i.i122.i.i.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 48
  store i64 3, ptr %.sroa.747.0..sroa_idx.i.i.i122.i.i.i, align 8, !alias.scope !31690, !noalias !31691
  %.sroa.848.0..sroa_idx.i.i.i123.i.i.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 56
  store i64 %i.si, ptr %.sroa.848.0..sroa_idx.i.i.i123.i.i.i, align 8, !alias.scope !31690, !noalias !31691
  br label %bb.ec

bb.dy:                                            ; preds = %bb.dw
  %i.su = getelementptr inbounds nuw i8, ptr %i.sn, i64 40 ; 2 uses
  %i.sv = load i64, ptr %i.su, align 8, !alias.scope !31688, !noalias !31689, !noundef !3
  %i.sw = add i64 %i.sv, 4                        ; 2 uses
  store i64 %i.sw, ptr %i.su, align 8, !alias.scope !31688, !noalias !31689
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sn, i64 16
  %i.sy = load ptr, ptr %i.sx, align 8, !alias.scope !31688, !noalias !31689, !nonnull !3, !align !100, !noundef !3
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 16
  %i.ta = load i64, ptr %i.sz, align 8, !noalias !31692, !noundef !3
  %i.tb = icmp ugt i64 %i.sw, %i.ta
  br i1 %i.tb, label %bb.eb, label %bb.ea

bb.dz:                                            ; preds = %bb.dw
  store i64 -9223372036854775803, ptr %i.dl, align 8, !alias.scope !31690, !noalias !31691
  %.sroa.453.0..sroa_idx.i.i.i127.i.i.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store i64 0, ptr %.sroa.453.0..sroa_idx.i.i.i127.i.i.i, align 8, !alias.scope !31690, !noalias !31691
  %.sroa.453.sroa.4.0..sroa.453.0..sroa_idx.sroa_idx.i.i.i128.i.i.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.453.sroa.4.0..sroa.453.0..sroa_idx.sroa_idx.i.i.i128.i.i.i, align 8, !alias.scope !31690, !noalias !31691
  %.sroa.453.sroa.5.0..sroa.453.0..sroa_idx.sroa_idx.i.i.i129.i.i.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  store i64 0, ptr %.sroa.453.sroa.5.0..sroa.453.0..sroa_idx.sroa_idx.i.i.i129.i.i.i, align 8, !alias.scope !31690, !noalias !31691
  %.sroa.554.0..sroa_idx.i.i.i130.i.i.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  store i64 %i.si, ptr %.sroa.554.0..sroa_idx.i.i.i130.i.i.i, align 8, !alias.scope !31690, !noalias !31691
  %.sroa.655.0..sroa_idx.i.i.i131.i.i.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 40
  store i64 %i.sq, ptr %.sroa.655.0..sroa_idx.i.i.i131.i.i.i, align 8, !alias.scope !31690, !noalias !31691
  br label %bb.ec

bb.ea:                                            ; preds = %bb.dy
  store i64 -9223372036854775798, ptr %i.dl, align 8, !alias.scope !31690, !noalias !31691
  br label %bb.ec

bb.eb:                                            ; preds = %bb.dy
  store i64 -9223372036854775800, ptr %i.dl, align 8, !alias.scope !31690, !noalias !31691
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea, %bb.dz, %bb.dx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk), !noalias !31673
  %i.tc = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  store i64 -9223372036854775808, ptr %i.tc, align 8, !noalias !31673
  %.sroa.438.0..sroa_idx.i124.i.i.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  store ptr @199, ptr %.sroa.438.0..sroa_idx.i124.i.i.i, align 8, !noalias !31673
  %.sroa.5.0..sroa_idx.i125.i.i.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  store i64 8, ptr %.sroa.5.0..sroa_idx.i125.i.i.i, align 8, !noalias !31673
  %i.td = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store i64 %i.si, ptr %i.td, align 8, !noalias !31673
  store i64 1, ptr %i.dk, align 8, !noalias !31673
  call fastcc void @_RINvNtCs2TwJzntlzha_11flatbuffers8verifier12append_traceuECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.dm, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.dl, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.dk), !noalias !31693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk), !noalias !31673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl), !noalias !31673
  %i.te = load i64, ptr %i.dm, align 8, !range !99, !noalias !31673, !noundef !3 ; 2 uses
  %.not37.i126.i.i.i = icmp eq i64 %i.te, -9223372036854775798
  br i1 %.not37.i126.i.i.i, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %.sroa.11133.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %.sroa.11133.0.copyload.i.i.i = load i64, ptr %.sroa.11133.0..sroa_idx.i.i.i, align 8, !noalias !31676
  %.sroa.16.0..sroa_idx.i.i.i185 = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %.sroa.16.0.copyload.i.i.i186 = load i64, ptr %.sroa.16.0..sroa_idx.i.i.i185, align 8, !noalias !31676
  %.sroa.18.0..sroa_idx.i.i.i187 = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.tf = load <2 x i64>, ptr %.sroa.18.0..sroa_idx.i.i.i187, align 8, !noalias !31676
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  %i.tg = load <2 x i64>, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8, !noalias !31606
  %.sroa.21.i.i.sroa.6.0..sroa.21.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 56
  %i.th = load <2 x i64>, ptr %.sroa.21.i.i.sroa.6.0..sroa.21.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !31606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm), !noalias !31673
  br label %bb.ef

bb.ee:                                            ; preds = %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm), !noalias !31673
  br label %bb.eg

bb.ef:                                            ; preds = %bb.ed, %bb.dt
  %.sroa.16.1.i.i.i183 = phi i64 [ %.sroa.16.0.copyload.i.i.i186, %bb.ed ], [ %i.si, %bb.dt ]
  %.sroa.11133.1.i.i.i = phi i64 [ %.sroa.11133.0.copyload.i.i.i, %bb.ed ], [ %i.sg, %bb.dt ] ; 2 uses
  %.sroa.0.1.i.i.i184 = phi i64 [ %i.te, %bb.ed ], [ %i.se, %bb.dt ]
  %i.ti = phi <2 x i64> [ %i.tf, %bb.ed ], [ %i.sj, %bb.dt ]
  %i.tj = phi <2 x i64> [ %i.tg, %bb.ed ], [ %i.sk, %bb.dt ]
  %i.tk = phi <2 x i64> [ %i.th, %bb.ed ], [ %i.sl, %bb.dt ]
  %.sroa.9.sroa.8.0.extract.shift.i = and i64 %.sroa.11133.1.i.i.i, -4294967296
  br label %_RNvXs3c_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_7DecimalNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i

bb.eg:                                            ; preds = %bb.ee, %bb.du
  %.sroa.11133.1.ph.i.i.i = load i64, ptr %i.dw, align 16, !alias.scope !31694, !noalias !31695
  %i.tl = inttoptr i64 %.sroa.11133.1.ph.i.i.i to ptr
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 24 ; 2 uses
  %i.tn = load i64, ptr %i.tm, align 8, !noalias !31610, !noundef !3
  %i.to = add i64 %i.tn, -1
  store i64 %i.to, ptr %i.tm, align 8, !noalias !31610
  br label %_RNvXs3c_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_7DecimalNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i

_RNvXs3c_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_7DecimalNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i: ; preds = %bb.eg, %bb.ef, %bb.dr, %bb.dd, %bb.cp
  %.sroa.9.sroa.8.1.i = phi i64 [ 0, %bb.eg ], [ %.sroa.9.sroa.8.0.extract.shift.i, %bb.ef ], [ %.sroa.9.sroa.8.0.extract.shift23.i, %bb.dr ], [ %.sroa.9.sroa.8.0.extract.shift21.i, %bb.dd ], [ %.sroa.9.sroa.8.0.extract.shift25.i, %bb.cp ]
  %.sroa.9.sroa.0.1.i = phi i64 [ 0, %bb.eg ], [ %.sroa.11133.1.i.i.i, %bb.ef ], [ %.sroa.10.1.i.i.i, %bb.dr ], [ %.sroa.9.1.i.i.i180, %bb.dd ], [ %.sroa.625.i.i.sroa.0.0.copyload.i, %bb.cp ]
  %.sroa.15.1.i175 = phi i64 [ undef, %bb.eg ], [ %.sroa.16.1.i.i.i183, %bb.ef ], [ %.sroa.15.1.i.i.i, %bb.dr ], [ %.sroa.14.1.i.i.i179, %bb.dd ], [ %.sroa.625.i.i.sroa.6.0.copyload.i, %bb.cp ]
  %.sroa.0.1.i176 = phi i64 [ -9223372036854775798, %bb.eg ], [ %.sroa.0.1.i.i.i184, %bb.ef ], [ %.sroa.0141.1.i.i.i, %bb.dr ], [ %.sroa.0153.1.i.i.i, %bb.dd ], [ %i.pj, %bb.cp ]
  %i.tp = phi <2 x i64> [ undef, %bb.eg ], [ %i.ti, %bb.ef ], [ %i.sa, %bb.dr ], [ %i.qs, %bb.dd ], [ %i.pl, %bb.cp ]
  %i.tq = phi <2 x i64> [ undef, %bb.eg ], [ %i.tj, %bb.ef ], [ %i.sb, %bb.dr ], [ %i.qt, %bb.dd ], [ %i.pm, %bb.cp ]
  %i.tr = phi <2 x i64> [ undef, %bb.eg ], [ %i.tk, %bb.ef ], [ %i.sc, %bb.dr ], [ %i.qu, %bb.dd ], [ %i.pn, %bb.cp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw), !noalias !31605
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx), !noalias !31605
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy), !noalias !31605
  %i.ts = and i64 %.sroa.9.sroa.0.1.i, 4294967295
  %i.tt = or disjoint i64 %i.ts, %.sroa.9.sroa.8.1.i
  br label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema7DecimalEReECs14kWLkQVSKO_14deltalake_core.exit

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema7DecimalEReECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ce, %bb.cf, %bb.cg, %_RNvXs3c_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_7DecimalNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i
  %.sroa.9.sroa.8.2.i = phi i64 [ %i.tt, %_RNvXs3c_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_7DecimalNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ 0, %bb.cg ], [ 0, %bb.cf ], [ 0, %bb.ce ]
  %.sroa.15.2.i158 = phi i64 [ %.sroa.15.1.i175, %_RNvXs3c_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_7DecimalNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ 8, %bb.cg ], [ 8, %bb.cf ], [ 8, %bb.ce ]
  %.sroa.0.2.i159 = phi i64 [ %.sroa.0.1.i176, %_RNvXs3c_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_7DecimalNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ -9223372036854775800, %bb.cg ], [ -9223372036854775803, %bb.cf ], [ -9223372036854775804, %bb.ce ]
  %i.tu = phi <2 x i64> [ %i.tp, %_RNvXs3c_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_7DecimalNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ <i64 0, i64 undef>, %bb.cg ], [ %i.oi, %bb.cf ], [ <i64 0, i64 -9223372036854775808>, %bb.ce ]
  %i.tv = phi <2 x i64> [ %i.tq, %_RNvXs3c_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_7DecimalNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ <i64 undef, i64 3>, %bb.cg ], [ %i.oj, %bb.cf ], [ <i64 ptrtoint (ptr @12 to i64), i64 3>, %bb.ce ]
  %i.tw = phi <2 x i64> [ %i.tr, %_RNvXs3c_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_7DecimalNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ %i.od, %bb.cg ], [ %i.od, %bb.cf ], [ %i.od, %bb.ce ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb), !noalias !31696
  store i64 %.sroa.0.2.i159, ptr %i.eb, align 8, !noalias !31696
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store i64 %.sroa.9.sroa.8.2.i, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !31696
  %.sroa.15.0..sroa_idx.i160 = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store i64 %.sroa.15.2.i158, ptr %.sroa.15.0..sroa_idx.i160, align 8, !noalias !31696
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  store <2 x i64> %i.tu, ptr %.sroa.19.0..sroa_idx.i, align 8, !noalias !31696
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 40
  store <2 x i64> %i.tv, ptr %.sroa.25.0..sroa_idx.i, align 8, !noalias !31696
  %.sroa.31.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 56
  store <2 x i64> %i.tw, ptr %.sroa.31.0..sroa_idx.i, align 8, !noalias !31696
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea), !noalias !31696
  %i.tx = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  store i64 -9223372036854775808, ptr %i.tx, align 8, !noalias !31696
  %.sroa.4.0..sroa_idx.i161 = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  store ptr @66, ptr %.sroa.4.0..sroa_idx.i161, align 8, !noalias !31696
  %.sroa.5.0..sroa_idx.i162 = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  store i64 13, ptr %.sroa.5.0..sroa_idx.i162, align 8, !noalias !31696
  %i.ty = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store i64 %3, ptr %i.ty, align 8, !noalias !31696
  store i64 2, ptr %i.ea, align 8, !noalias !31696
  call fastcc void @_RINvNtCs2TwJzntlzha_11flatbuffers8verifier12append_traceuECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.eb, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.ea)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea), !noalias !31696
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb), !noalias !31696
  br label %bb.tx

bb.eh:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31697)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31700)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31703)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31706)
  %i.tz = and i64 %3, 3
  %i.ua = icmp eq i64 %i.tz, 0
  %i.ub = insertelement <2 x i64> <i64 3, i64 poison>, i64 %3, i64 1 ; 3 uses
  br i1 %i.ua, label %bb.ei, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema4DateEReECs14kWLkQVSKO_14deltalake_core.exit

bb.ei:                                            ; preds = %bb.eh
  %i.uc = tail call i64 @llvm.uadd.sat.i64(i64 %3, i64 4) ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ue = load i64, ptr %i.ud, align 8, !alias.scope !31709, !noalias !31710, !noundef !3 ; 9 uses
  %i.uf = icmp ugt i64 %i.uc, %i.ue
  br i1 %i.uf, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema4DateEReECs14kWLkQVSKO_14deltalake_core.exit, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.ug = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.uh = load i64, ptr %i.ug, align 8, !alias.scope !31709, !noalias !31710, !noundef !3
  %i.ui = add i64 %i.uh, 4                        ; 2 uses
  store i64 %i.ui, ptr %i.ug, align 8, !alias.scope !31709, !noalias !31710
  %i.uj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.uk = load ptr, ptr %i.uj, align 8, !alias.scope !31709, !noalias !31710, !nonnull !3, !align !100, !noundef !3
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 16
  %i.um = load i64, ptr %i.ul, align 8, !noalias !31715, !noundef !3
  %i.un = icmp ugt i64 %i.ui, %i.um
  br i1 %i.un, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema4DateEReECs14kWLkQVSKO_14deltalake_core.exit, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i226

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i226: ; preds = %bb.ej
  %i.uo = icmp ult i64 %3, %i.ue
  br i1 %i.uo, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i226
  %i.up = load ptr, ptr %2, align 8, !alias.scope !31716, !noalias !31717, !nonnull !3, !noundef !3 ; 4 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 %3
  %i.ur = load i8, ptr %i.uq, align 1, !noalias !31718, !noundef !3
  %i.us = or disjoint i64 %3, 1                   ; 3 uses
  %i.ut = icmp ult i64 %i.us, %i.ue
  br i1 %i.ut, label %bb.em, label %bb.en

bb.el:                                            ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i226
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %3, i64 noundef %i.ue, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #51, !noalias !31718
  unreachable

bb.em:                                            ; preds = %bb.ek
  %i.uu = getelementptr inbounds nuw i8, ptr %i.up, i64 %i.us
  %i.uv = load i8, ptr %i.uu, align 1, !noalias !31718, !noundef !3
  %i.uw = or disjoint i64 %3, 2                   ; 3 uses
  %i.ux = icmp ult i64 %i.uw, %i.ue
  br i1 %i.ux, label %bb.eo, label %bb.ep

bb.en:                                            ; preds = %bb.ek
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.us, i64 noundef %i.ue, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #51, !noalias !31718
  unreachable

bb.eo:                                            ; preds = %bb.em
  %i.uy = or disjoint i64 %3, 3                   ; 3 uses
  %i.uz = icmp ult i64 %i.uy, %i.ue
  br i1 %i.uz, label %bb.er, label %bb.eq

bb.ep:                                            ; preds = %bb.em
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.uw, i64 noundef %i.ue, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #51, !noalias !31718
  unreachable

bb.eq:                                            ; preds = %bb.eo
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.uy, i64 noundef %i.ue, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #51, !noalias !31718
  unreachable

bb.er:                                            ; preds = %bb.eo
  %i.va = getelementptr inbounds nuw i8, ptr %i.up, i64 %i.uw
  %i.vb = load i8, ptr %i.va, align 1, !noalias !31718, !noundef !3
  %i.vc = getelementptr inbounds nuw i8, ptr %i.up, i64 %i.uy
  %i.vd = load i8, ptr %i.vc, align 1, !noalias !31718, !noundef !3
  %.sroa.6.0.insert.ext.i.i.i227 = zext i8 %i.vd to i64
  %.sroa.6.0.insert.shift.i.i.i228 = shl nuw nsw i64 %.sroa.6.0.insert.ext.i.i.i227, 24
  %.sroa.5.0.insert.ext.i.i.i229 = zext i8 %i.vb to i64
  %.sroa.5.0.insert.shift.i.i.i230 = shl nuw nsw i64 %.sroa.5.0.insert.ext.i.i.i229, 16
  %.sroa.4.0.insert.ext.i.i.i231 = zext i8 %i.uv to i64
  %.sroa.4.0.insert.shift.i.i.i232 = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i.i231, 8
  %.sroa.0.0.insert.ext.i.i.i233 = zext i8 %i.ur to i64
  %.sroa.5.0.insert.insert.i.i.i234 = or disjoint i64 %.sroa.4.0.insert.shift.i.i.i232, %.sroa.0.0.insert.ext.i.i.i233
  %.sroa.4.0.insert.insert.i.i.i235 = or disjoint i64 %.sroa.5.0.insert.insert.i.i.i234, %.sroa.5.0.insert.shift.i.i.i230
  %.sroa.0.0.insert.insert.i.i.i236 = or disjoint i64 %.sroa.4.0.insert.insert.i.i.i235, %.sroa.6.0.insert.shift.i.i.i228
  %i.ve = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.0.insert.insert.i.i.i236, i64 %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg), !noalias !31719
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh), !noalias !31720
  call fastcc void @_RNvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB5_8Verifier11visit_table(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.dh, ptr noalias noundef nonnull align 8 dereferenceable(48) %2, i64 noundef %i.ve) #50, !noalias !31724
  %i.vf = load i64, ptr %i.dh, align 8, !range !99, !noalias !31720, !noundef !3 ; 2 uses
  %.not.i.i.i237 = icmp eq i64 %i.vf, -9223372036854775798
  %i.vg = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %.sroa.613.i.i.sroa.0.0.copyload.i238 = load ptr, ptr %i.vg, align 8, !noalias !31720 ; 2 uses
  %.sroa.613.i.i.sroa.6.0..sroa_idx.i239 = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %.sroa.613.i.i.sroa.6.0.copyload.i240 = load i64, ptr %.sroa.613.i.i.sroa.6.0..sroa_idx.i239, align 8, !noalias !31720 ; 2 uses
  %.sroa.613.i.i.sroa.7.0..sroa_idx.i241 = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %.sroa.613.i.i.sroa.7.0.copyload.i242 = load i64, ptr %.sroa.613.i.i.sroa.7.0..sroa_idx.i241, align 8, !noalias !31720 ; 2 uses
  %.sroa.613.i.i.sroa.8.0..sroa_idx.i243 = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %.sroa.613.i.i.sroa.8.0.copyload.i244 = load i64, ptr %.sroa.613.i.i.sroa.8.0..sroa_idx.i243, align 8, !noalias !31720 ; 2 uses
  br i1 %.not.i.i.i237, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  %.sroa.627.0..sroa_idx.i.i.i245 = getelementptr inbounds nuw i8, ptr %i.dh, i64 40
  %.sroa.17.40.copyload.i246 = load i64, ptr %.sroa.627.0..sroa_idx.i.i.i245, align 8, !noalias !31725
  %.sroa.20.40..sroa.627.0..sroa_idx.i.i.sroa_idx.i247 = getelementptr inbounds nuw i8, ptr %i.dh, i64 48
  %i.vh = load <2 x i64>, ptr %.sroa.20.40..sroa.627.0..sroa_idx.i.i.sroa_idx.i247, align 8, !noalias !31725
  %.sroa.22.40..sroa.627.0..sroa_idx.i.i.sroa_idx.i251 = getelementptr inbounds nuw i8, ptr %i.dh, i64 64
  %.sroa.22.40.copyload.i252 = load i64, ptr %.sroa.22.40..sroa.627.0..sroa_idx.i.i.sroa_idx.i251, align 8, !noalias !31725
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh), !noalias !31720
  br label %_RNvXs3i_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_4DateNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i

bb.et:                                            ; preds = %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh), !noalias !31720
  store ptr %.sroa.613.i.i.sroa.0.0.copyload.i238, ptr %i.dg, align 8, !noalias !31720
  %.sroa.613.i.i.sroa.6.0..sroa_idx7.i262 = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store i64 %.sroa.613.i.i.sroa.6.0.copyload.i240, ptr %.sroa.613.i.i.sroa.6.0..sroa_idx7.i262, align 8, !noalias !31720
  %.sroa.613.i.i.sroa.7.0..sroa_idx9.i263 = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store i64 %.sroa.613.i.i.sroa.7.0.copyload.i242, ptr %.sroa.613.i.i.sroa.7.0..sroa_idx9.i263, align 8, !noalias !31720
  %.sroa.613.i.i.sroa.8.0..sroa_idx11.i264 = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  store i64 %.sroa.613.i.i.sroa.8.0.copyload.i244, ptr %.sroa.613.i.i.sroa.8.0..sroa_idx11.i264, align 8, !noalias !31720
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31726)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31729)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df), !noalias !31731
  call void @_RNvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB5_13TableVerifier5deref(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.df, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.dg, i16 noundef 4), !noalias !31732
  %i.vi = load i64, ptr %i.df, align 8, !range !99, !noalias !31731, !noundef !3 ; 2 uses
  %.not.i.i.i.i265 = icmp eq i64 %i.vi, -9223372036854775798
  %i.vj = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.vk = load i64, ptr %i.vj, align 8, !noalias !31731 ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.vm = load i64, ptr %i.vl, align 8, !noalias !31731 ; 6 uses
  br i1 %.not.i.i.i.i265, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %.sroa.718.0..sroa_idx.i.i.i.i266 = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %.sroa.16.24.copyload.i.i.i267 = load i64, ptr %.sroa.718.0..sroa_idx.i.i.i.i266, align 8, !noalias !31733
  %.sroa.18.24..sroa.718.0..sroa_idx.i.sroa_idx.i.i.i268 = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %.sroa.18.24.copyload.i.i.i269 = load i64, ptr %.sroa.18.24..sroa.718.0..sroa_idx.i.sroa_idx.i.i.i268, align 8, !noalias !31733
  %.sroa.19.24..sroa.718.0..sroa_idx.i.sroa_idx.i.i.i270 = getelementptr inbounds nuw i8, ptr %i.df, i64 40
  %.sroa.19.i.i.sroa.0.0.copyload.i271 = load i64, ptr %.sroa.19.24..sroa.718.0..sroa_idx.i.sroa_idx.i.i.i270, align 8, !noalias !31720
  %.sroa.19.i.i.sroa.5.0..sroa.19.24..sroa.718.0..sroa_idx.i.sroa_idx.i.i.sroa_idx.i272 = getelementptr inbounds nuw i8, ptr %i.df, i64 48
  %i.vn = load <2 x i64>, ptr %.sroa.19.i.i.sroa.5.0..sroa.19.24..sroa.718.0..sroa_idx.i.sroa_idx.i.i.sroa_idx.i272, align 8, !noalias !31720
  %.sroa.19.i.i.sroa.7.0..sroa.19.24..sroa.718.0..sroa_idx.i.sroa_idx.i.i.sroa_idx.i276 = getelementptr inbounds nuw i8, ptr %i.df, i64 64
  %.sroa.19.i.i.sroa.7.0.copyload.i277 = load i64, ptr %.sroa.19.i.i.sroa.7.0..sroa.19.24..sroa.718.0..sroa_idx.i.sroa_idx.i.i.sroa_idx.i276, align 8, !noalias !31720
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df), !noalias !31731
  br label %bb.fg

bb.ev:                                            ; preds = %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df), !noalias !31731
  %i.vo = trunc nuw i64 %i.vk to i1
  br i1 %i.vo, label %bb.ew, label %bb.fh

bb.ew:                                            ; preds = %bb.ev
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de), !noalias !31731
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd), !noalias !31731
  %i.vp = load ptr, ptr %i.dg, align 8, !alias.scope !31729, !noalias !31734, !nonnull !3, !align !100, !noundef !3 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !31735)
  call void @llvm.experimental.noalias.scope.decl(metadata !31738)
  call void @llvm.experimental.noalias.scope.decl(metadata !31740)
  call void @llvm.experimental.noalias.scope.decl(metadata !31743)
  %i.vq = and i64 %i.vm, 1
  %i.vr = icmp eq i64 %i.vq, 0
  br i1 %i.vr, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.vs = call i64 @llvm.uadd.sat.i64(i64 %i.vm, i64 2) ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vp, i64 8
  %i.vu = load i64, ptr %i.vt, align 8, !alias.scope !31745, !noalias !31746, !noundef !3
  %i.vv = icmp ugt i64 %i.vs, %i.vu
  br i1 %i.vv, label %bb.fa, label %bb.ez

bb.ey:                                            ; preds = %bb.ew
  store i64 -9223372036854775804, ptr %i.dd, align 8, !alias.scope !31747, !noalias !31748
  %.sroa.242.0..sroa_idx.i.i.i.i.i.i288 = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i64 0, ptr %.sroa.242.0..sroa_idx.i.i.i.i.i.i288, align 8, !alias.scope !31747, !noalias !31748
  %.sroa.343.0..sroa_idx.i.i.i.i.i.i289 = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.343.0..sroa_idx.i.i.i.i.i.i289, align 8, !alias.scope !31747, !noalias !31748
  %.sroa.444.0..sroa_idx.i.i.i.i.i.i290 = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  store i64 0, ptr %.sroa.444.0..sroa_idx.i.i.i.i.i.i290, align 8, !alias.scope !31747, !noalias !31748
  %.sroa.545.0..sroa_idx.i.i.i.i.i.i291 = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  store i64 -9223372036854775808, ptr %.sroa.545.0..sroa_idx.i.i.i.i.i.i291, align 8, !alias.scope !31747, !noalias !31748
  %.sroa.646.0..sroa_idx.i.i.i.i.i.i292 = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  store ptr @13, ptr %.sroa.646.0..sroa_idx.i.i.i.i.i.i292, align 8, !alias.scope !31747, !noalias !31748
  %.sroa.747.0..sroa_idx.i.i.i.i.i.i293 = getelementptr inbounds nuw i8, ptr %i.dd, i64 48
  store i64 3, ptr %.sroa.747.0..sroa_idx.i.i.i.i.i.i293, align 8, !alias.scope !31747, !noalias !31748
  %.sroa.848.0..sroa_idx.i.i.i.i.i.i294 = getelementptr inbounds nuw i8, ptr %i.dd, i64 56
  store i64 %i.vm, ptr %.sroa.848.0..sroa_idx.i.i.i.i.i.i294, align 8, !alias.scope !31747, !noalias !31748
  br label %bb.fd

bb.ez:                                            ; preds = %bb.ex
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vp, i64 40 ; 2 uses
  %i.vx = load i64, ptr %i.vw, align 8, !alias.scope !31745, !noalias !31746, !noundef !3
  %i.vy = add i64 %i.vx, 2                        ; 2 uses
  store i64 %i.vy, ptr %i.vw, align 8, !alias.scope !31745, !noalias !31746
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vp, i64 16
  %i.wa = load ptr, ptr %i.vz, align 8, !alias.scope !31745, !noalias !31746, !nonnull !3, !align !100, !noundef !3
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 16
  %i.wc = load i64, ptr %i.wb, align 8, !noalias !31749, !noundef !3
  %i.wd = icmp ugt i64 %i.vy, %i.wc
  br i1 %i.wd, label %bb.fc, label %bb.fb

bb.fa:                                            ; preds = %bb.ex
  store i64 -9223372036854775803, ptr %i.dd, align 8, !alias.scope !31747, !noalias !31748
  %.sroa.453.0..sroa_idx.i.i.i.i.i.i314 = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i64 0, ptr %.sroa.453.0..sroa_idx.i.i.i.i.i.i314, align 8, !alias.scope !31747, !noalias !31748
  %.sroa.453.sroa.4.0..sroa.453.0..sroa_idx.sroa_idx.i.i.i.i.i.i315 = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.453.sroa.4.0..sroa.453.0..sroa_idx.sroa_idx.i.i.i.i.i.i315, align 8, !alias.scope !31747, !noalias !31748
  %.sroa.453.sroa.5.0..sroa.453.0..sroa_idx.sroa_idx.i.i.i.i.i.i316 = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  store i64 0, ptr %.sroa.453.sroa.5.0..sroa.453.0..sroa_idx.sroa_idx.i.i.i.i.i.i316, align 8, !alias.scope !31747, !noalias !31748
  %.sroa.554.0..sroa_idx.i.i.i.i.i.i317 = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  store i64 %i.vm, ptr %.sroa.554.0..sroa_idx.i.i.i.i.i.i317, align 8, !alias.scope !31747, !noalias !31748
  %.sroa.655.0..sroa_idx.i.i.i.i.i.i318 = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  store i64 %i.vs, ptr %.sroa.655.0..sroa_idx.i.i.i.i.i.i318, align 8, !alias.scope !31747, !noalias !31748
  br label %bb.fd

bb.fb:                                            ; preds = %bb.ez
  store i64 -9223372036854775798, ptr %i.dd, align 8, !alias.scope !31747, !noalias !31748
  br label %bb.fd

bb.fc:                                            ; preds = %bb.ez
  store i64 -9223372036854775800, ptr %i.dd, align 8, !alias.scope !31747, !noalias !31748
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb, %bb.fa, %bb.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc), !noalias !31731
  %i.we = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store i64 -9223372036854775808, ptr %i.we, align 8, !noalias !31731
  %.sroa.41.0..sroa_idx.i.i.i.i295 = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  store ptr @259, ptr %.sroa.41.0..sroa_idx.i.i.i.i295, align 8, !noalias !31731
  %.sroa.5.0..sroa_idx.i.i.i.i296 = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  store i64 4, ptr %.sroa.5.0..sroa_idx.i.i.i.i296, align 8, !noalias !31731
  %i.wf = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store i64 %i.vm, ptr %i.wf, align 8, !noalias !31731
  store i64 1, ptr %i.dc, align 8, !noalias !31731
  call fastcc void @_RINvNtCs2TwJzntlzha_11flatbuffers8verifier12append_traceuECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.de, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.dd, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.dc), !noalias !31732
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc), !noalias !31731
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd), !noalias !31731
  %i.wg = load i64, ptr %i.de, align 8, !range !99, !noalias !31731, !noundef !3 ; 2 uses
  %.not37.i.i.i.i297 = icmp eq i64 %i.wg, -9223372036854775798
  br i1 %.not37.i.i.i.i297, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %.sroa.9.0..sroa_idx.i.i.i298 = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %.sroa.9.0.copyload.i.i.i299 = load i64, ptr %.sroa.9.0..sroa_idx.i.i.i298, align 8, !noalias !31733
  %.sroa.14.0..sroa_idx.i.i.i300 = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %.sroa.14.0.copyload.i.i.i301 = load i64, ptr %.sroa.14.0..sroa_idx.i.i.i300, align 8, !noalias !31733
  %.sroa.16.0..sroa_idx.i.i.i302 = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %.sroa.16.0.copyload.i.i.i303 = load i64, ptr %.sroa.16.0..sroa_idx.i.i.i302, align 8, !noalias !31733
  %.sroa.18.0..sroa_idx.i.i.i304 = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %.sroa.18.0.copyload.i.i.i305 = load i64, ptr %.sroa.18.0..sroa_idx.i.i.i304, align 8, !noalias !31733
  %.sroa.19.0..sroa_idx.i.i.i306 = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  %.sroa.19.i.i.sroa.0.0.copyload13.i307 = load i64, ptr %.sroa.19.0..sroa_idx.i.i.i306, align 8, !noalias !31720
  %.sroa.19.i.i.sroa.5.0..sroa.19.0..sroa_idx.i.i.sroa_idx.i308 = getelementptr inbounds nuw i8, ptr %i.de, i64 48
  %i.wh = load <2 x i64>, ptr %.sroa.19.i.i.sroa.5.0..sroa.19.0..sroa_idx.i.i.sroa_idx.i308, align 8, !noalias !31720
  %.sroa.19.i.i.sroa.7.0..sroa.19.0..sroa_idx.i.i.sroa_idx.i312 = getelementptr inbounds nuw i8, ptr %i.de, i64 64
  %.sroa.19.i.i.sroa.7.0.copyload16.i313 = load i64, ptr %.sroa.19.i.i.sroa.7.0..sroa.19.0..sroa_idx.i.i.sroa_idx.i312, align 8, !noalias !31720
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de), !noalias !31731
  br label %bb.fg

bb.ff:                                            ; preds = %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de), !noalias !31731
  br label %bb.fh

bb.fg:                                            ; preds = %bb.fe, %bb.eu
  %.sroa.19.i.i.sroa.0.0.i278 = phi i64 [ %.sroa.19.i.i.sroa.0.0.copyload13.i307, %bb.fe ], [ %.sroa.19.i.i.sroa.0.0.copyload.i271, %bb.eu ]
  %.sroa.19.i.i.sroa.7.0.i281 = phi i64 [ %.sroa.19.i.i.sroa.7.0.copyload16.i313, %bb.fe ], [ %.sroa.19.i.i.sroa.7.0.copyload.i277, %bb.eu ]
  %.sroa.18.1.i.i.i282 = phi i64 [ %.sroa.18.0.copyload.i.i.i305, %bb.fe ], [ %.sroa.18.24.copyload.i.i.i269, %bb.eu ]
  %.sroa.16.1.i.i.i283 = phi i64 [ %.sroa.16.0.copyload.i.i.i303, %bb.fe ], [ %.sroa.16.24.copyload.i.i.i267, %bb.eu ]
  %.sroa.14.1.i.i.i284 = phi i64 [ %.sroa.14.0.copyload.i.i.i301, %bb.fe ], [ %i.vm, %bb.eu ]
  %.sroa.9.1.i.i.i285 = phi i64 [ %.sroa.9.0.copyload.i.i.i299, %bb.fe ], [ %i.vk, %bb.eu ]
  %.sroa.0.1.i.i.i286 = phi i64 [ %i.wg, %bb.fe ], [ %i.vi, %bb.eu ]
  %i.wi = phi <2 x i64> [ %i.wh, %bb.fe ], [ %i.vn, %bb.eu ]
  %i.wj = inttoptr i64 %.sroa.9.1.i.i.i285 to ptr
  br label %_RNvXs3i_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_4DateNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i

bb.fh:                                            ; preds = %bb.ff, %bb.ev
  %.sroa.9.1.ph.i.i.i287 = load i64, ptr %i.dg, align 8, !alias.scope !31750, !noalias !31720
  %i.wk = inttoptr i64 %.sroa.9.1.ph.i.i.i287 to ptr
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 24 ; 2 uses
  %i.wm = load i64, ptr %i.wl, align 8, !noalias !31724, !noundef !3
  %i.wn = add i64 %i.wm, -1
  store i64 %i.wn, ptr %i.wl, align 8, !noalias !31724
  br label %_RNvXs3i_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_4DateNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i

_RNvXs3i_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_4DateNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i: ; preds = %bb.fh, %bb.fg, %bb.es
  %.sroa.7.1.i253 = phi ptr [ undef, %bb.fh ], [ %i.wj, %bb.fg ], [ %.sroa.613.i.i.sroa.0.0.copyload.i238, %bb.es ]
  %.sroa.22.1.i254 = phi i64 [ undef, %bb.fh ], [ %.sroa.19.i.i.sroa.7.0.i281, %bb.fg ], [ %.sroa.22.40.copyload.i252, %bb.es ]
  %.sroa.17.1.i257 = phi i64 [ undef, %bb.fh ], [ %.sroa.19.i.i.sroa.0.0.i278, %bb.fg ], [ %.sroa.17.40.copyload.i246, %bb.es ]
  %.sroa.15.1.i258 = phi i64 [ undef, %bb.fh ], [ %.sroa.18.1.i.i.i282, %bb.fg ], [ %.sroa.613.i.i.sroa.8.0.copyload.i244, %bb.es ]
  %.sroa.13.1.i259 = phi i64 [ undef, %bb.fh ], [ %.sroa.16.1.i.i.i283, %bb.fg ], [ %.sroa.613.i.i.sroa.7.0.copyload.i242, %bb.es ]
  %.sroa.11.1.i260 = phi i64 [ undef, %bb.fh ], [ %.sroa.14.1.i.i.i284, %bb.fg ], [ %.sroa.613.i.i.sroa.6.0.copyload.i240, %bb.es ]
  %.sroa.0.1.i261 = phi i64 [ -9223372036854775798, %bb.fh ], [ %.sroa.0.1.i.i.i286, %bb.fg ], [ %i.vf, %bb.es ]
  %i.wo = phi <2 x i64> [ undef, %bb.fh ], [ %i.wi, %bb.fg ], [ %i.vh, %bb.es ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg), !noalias !31719
  br label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema4DateEReECs14kWLkQVSKO_14deltalake_core.exit

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema4DateEReECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.eh, %bb.ei, %bb.ej, %_RNvXs3i_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_4DateNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i
  %.sroa.7.2.i207 = phi ptr [ %.sroa.7.1.i253, %_RNvXs3i_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_4DateNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ null, %bb.ej ], [ null, %bb.ei ], [ null, %bb.eh ]
  %.sroa.22.2.i208 = phi i64 [ %.sroa.22.1.i254, %_RNvXs3i_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_4DateNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ undef, %bb.ej ], [ undef, %bb.ei ], [ undef, %bb.eh ]
  %.sroa.17.2.i211 = phi i64 [ %.sroa.17.1.i257, %_RNvXs3i_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_4DateNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ undef, %bb.ej ], [ %i.uc, %bb.ei ], [ ptrtoint (ptr @12 to i64), %bb.eh ]
  %.sroa.15.2.i212 = phi i64 [ %.sroa.15.1.i258, %_RNvXs3i_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_4DateNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ undef, %bb.ej ], [ %3, %bb.ei ], [ -9223372036854775808, %bb.eh ]
  %.sroa.13.2.i213 = phi i64 [ %.sroa.13.1.i259, %_RNvXs3i_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_4DateNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ 0, %bb.ej ], [ 0, %bb.ei ], [ 0, %bb.eh ]
  %.sroa.11.2.i214 = phi i64 [ %.sroa.11.1.i260, %_RNvXs3i_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_4DateNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ 8, %bb.ej ], [ 8, %bb.ei ], [ 8, %bb.eh ]
  %.sroa.0.2.i215 = phi i64 [ %.sroa.0.1.i261, %_RNvXs3i_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_4DateNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ -9223372036854775800, %bb.ej ], [ -9223372036854775803, %bb.ei ], [ -9223372036854775804, %bb.eh ]
  %i.wp = phi <2 x i64> [ %i.wo, %_RNvXs3i_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_4DateNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ %i.ub, %bb.ej ], [ %i.ub, %bb.ei ], [ %i.ub, %bb.eh ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj), !noalias !31751
  store i64 %.sroa.0.2.i215, ptr %i.dj, align 8, !noalias !31751
  %.sroa.7.0..sroa_idx.i216 = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store ptr %.sroa.7.2.i207, ptr %.sroa.7.0..sroa_idx.i216, align 8, !noalias !31751
  %.sroa.11.0..sroa_idx.i217 = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store i64 %.sroa.11.2.i214, ptr %.sroa.11.0..sroa_idx.i217, align 8, !noalias !31751
  %.sroa.13.0..sroa_idx.i218 = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  store i64 %.sroa.13.2.i213, ptr %.sroa.13.0..sroa_idx.i218, align 8, !noalias !31751
  %.sroa.15.0..sroa_idx.i219 = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  store i64 %.sroa.15.2.i212, ptr %.sroa.15.0..sroa_idx.i219, align 8, !noalias !31751
  %.sroa.17.0..sroa_idx.i220 = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  store i64 %.sroa.17.2.i211, ptr %.sroa.17.0..sroa_idx.i220, align 8, !noalias !31751
  %.sroa.20.0..sroa_idx.i221 = getelementptr inbounds nuw i8, ptr %i.dj, i64 48
  store <2 x i64> %i.wp, ptr %.sroa.20.0..sroa_idx.i221, align 8, !noalias !31751
  %.sroa.22.0..sroa_idx.i223 = getelementptr inbounds nuw i8, ptr %i.dj, i64 64
  store i64 %.sroa.22.2.i208, ptr %.sroa.22.0..sroa_idx.i223, align 8, !noalias !31751
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di), !noalias !31751
  %i.wq = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store i64 -9223372036854775808, ptr %i.wq, align 8, !noalias !31751
  %.sroa.4.0..sroa_idx.i224 = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  store ptr @67, ptr %.sroa.4.0..sroa_idx.i224, align 8, !noalias !31751
  %.sroa.5.0..sroa_idx.i225 = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  store i64 10, ptr %.sroa.5.0..sroa_idx.i225, align 8, !noalias !31751
  %i.wr = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store i64 %3, ptr %i.wr, align 8, !noalias !31751
  store i64 2, ptr %i.di, align 8, !noalias !31751
  call fastcc void @_RINvNtCs2TwJzntlzha_11flatbuffers8verifier12append_traceuECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.dj, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.di)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di), !noalias !31751
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj), !noalias !31751
  br label %bb.tx

bb.fi:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31752)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31755)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31758)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31761)
  %i.ws = and i64 %3, 3
  %i.wt = icmp eq i64 %i.ws, 0
  %i.wu = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %3, i64 0 ; 3 uses
  br i1 %i.wt, label %bb.fj, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema4TimeEReECs14kWLkQVSKO_14deltalake_core.exit

bb.fj:                                            ; preds = %bb.fi
  %i.wv = tail call i64 @llvm.uadd.sat.i64(i64 %3, i64 4) ; 2 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.wx = load i64, ptr %i.ww, align 8, !alias.scope !31764, !noalias !31765, !noundef !3 ; 9 uses
  %i.wy = icmp ugt i64 %i.wv, %i.wx
  %i.wz = insertelement <2 x i64> <i64 0, i64 poison>, i64 %3, i64 1
  %i.xa = insertelement <2 x i64> <i64 poison, i64 3>, i64 %i.wv, i64 0
  br i1 %i.wy, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema4TimeEReECs14kWLkQVSKO_14deltalake_core.exit, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.xb = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.xc = load i64, ptr %i.xb, align 8, !alias.scope !31764, !noalias !31765, !noundef !3
  %i.xd = add i64 %i.xc, 4                        ; 2 uses
  store i64 %i.xd, ptr %i.xb, align 8, !alias.scope !31764, !noalias !31765
  %i.xe = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.xf = load ptr, ptr %i.xe, align 8, !alias.scope !31764, !noalias !31765, !nonnull !3, !align !100, !noundef !3
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 16
  %i.xh = load i64, ptr %i.xg, align 8, !noalias !31770, !noundef !3
  %i.xi = icmp ugt i64 %i.xd, %i.xh
  br i1 %i.xi, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema4TimeEReECs14kWLkQVSKO_14deltalake_core.exit, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i332

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i332: ; preds = %bb.fk
  %i.xj = icmp ult i64 %3, %i.wx
  br i1 %i.xj, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i332
  %i.xk = load ptr, ptr %2, align 8, !alias.scope !31771, !noalias !31772, !nonnull !3, !noundef !3 ; 4 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 %3
  %i.xm = load i8, ptr %i.xl, align 1, !noalias !31773, !noundef !3
  %i.xn = or disjoint i64 %3, 1                   ; 3 uses
  %i.xo = icmp ult i64 %i.xn, %i.wx
  br i1 %i.xo, label %bb.fn, label %bb.fo

bb.fm:                                            ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i332
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %3, i64 noundef %i.wx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #51, !noalias !31773
  unreachable

bb.fn:                                            ; preds = %bb.fl
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xk, i64 %i.xn
  %i.xq = load i8, ptr %i.xp, align 1, !noalias !31773, !noundef !3
  %i.xr = or disjoint i64 %3, 2                   ; 3 uses
  %i.xs = icmp ult i64 %i.xr, %i.wx
  br i1 %i.xs, label %bb.fp, label %bb.fq

bb.fo:                                            ; preds = %bb.fl
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.xn, i64 noundef %i.wx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #51, !noalias !31773
  unreachable

bb.fp:                                            ; preds = %bb.fn
  %i.xt = or disjoint i64 %3, 3                   ; 3 uses
  %i.xu = icmp ult i64 %i.xt, %i.wx
  br i1 %i.xu, label %bb.fs, label %bb.fr

bb.fq:                                            ; preds = %bb.fn
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.xr, i64 noundef %i.wx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #51, !noalias !31773
  unreachable

bb.fr:                                            ; preds = %bb.fp
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.xt, i64 noundef %i.wx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #51, !noalias !31773
  unreachable

bb.fs:                                            ; preds = %bb.fp
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xk, i64 %i.xr
  %i.xw = load i8, ptr %i.xv, align 1, !noalias !31773, !noundef !3
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xk, i64 %i.xt
  %i.xy = load i8, ptr %i.xx, align 1, !noalias !31773, !noundef !3
  %.sroa.6.0.insert.ext.i.i.i333 = zext i8 %i.xy to i64
  %.sroa.6.0.insert.shift.i.i.i334 = shl nuw nsw i64 %.sroa.6.0.insert.ext.i.i.i333, 24
  %.sroa.5.0.insert.ext.i.i.i335 = zext i8 %i.xw to i64
  %.sroa.5.0.insert.shift.i.i.i336 = shl nuw nsw i64 %.sroa.5.0.insert.ext.i.i.i335, 16
  %.sroa.4.0.insert.ext.i.i.i337 = zext i8 %i.xq to i64
  %.sroa.4.0.insert.shift.i.i.i338 = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i.i337, 8
  %.sroa.0.0.insert.ext.i.i.i339 = zext i8 %i.xm to i64
  %.sroa.5.0.insert.insert.i.i.i340 = or disjoint i64 %.sroa.4.0.insert.shift.i.i.i338, %.sroa.0.0.insert.ext.i.i.i339
  %.sroa.4.0.insert.insert.i.i.i341 = or disjoint i64 %.sroa.5.0.insert.insert.i.i.i340, %.sroa.5.0.insert.shift.i.i.i336
  %.sroa.0.0.insert.insert.i.i.i342 = or disjoint i64 %.sroa.4.0.insert.insert.i.i.i341, %.sroa.6.0.insert.shift.i.i.i334
  %i.xz = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.0.insert.insert.i.i.i342, i64 %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx), !noalias !31774
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy), !noalias !31774
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz), !noalias !31775
  call fastcc void @_RNvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB5_8Verifier11visit_table(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.cz, ptr noalias noundef nonnull align 8 dereferenceable(48) %2, i64 noundef %i.xz) #50, !noalias !31779
  %i.ya = load i64, ptr %i.cz, align 8, !range !99, !noalias !31775, !noundef !3 ; 2 uses
  %.not.i.i.i343 = icmp eq i64 %i.ya, -9223372036854775798
  %i.yb = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %.sroa.619.i.i.sroa.0.0.copyload.i = load i64, ptr %i.yb, align 8, !noalias !31775 ; 3 uses
  %.sroa.619.i.i.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %.sroa.619.i.i.sroa.6.0.copyload.i = load i64, ptr %.sroa.619.i.i.sroa.6.0..sroa_idx.i, align 8, !noalias !31775 ; 2 uses
  %.sroa.619.i.i.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.yc = load <2 x i64>, ptr %.sroa.619.i.i.sroa.7.0..sroa_idx.i, align 8, !noalias !31775 ; 2 uses
  br i1 %.not.i.i.i343, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %.sroa.636.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 40
  %i.yd = load <2 x i64>, ptr %.sroa.636.0..sroa_idx.i.i.i, align 8, !noalias !31780
  %.sroa.26.40..sroa.636.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 56
  %i.ye = load <2 x i64>, ptr %.sroa.26.40..sroa.636.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !31780
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz), !noalias !31775
  %.sroa.8.sroa.7.0.extract.shift13.i = and i64 %.sroa.619.i.i.sroa.0.0.copyload.i, -4294967296
  br label %_RNvXs3o_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_4TimeNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i

bb.fu:                                            ; preds = %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz), !noalias !31775
  store i64 %.sroa.619.i.i.sroa.0.0.copyload.i, ptr %i.cy, align 16, !noalias !31775
  %.sroa.619.i.i.sroa.6.0..sroa_idx17.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i64 %.sroa.619.i.i.sroa.6.0.copyload.i, ptr %.sroa.619.i.i.sroa.6.0..sroa_idx17.i, align 8, !noalias !31775
  %.sroa.619.i.i.sroa.7.0..sroa_idx19.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 2 uses
  store <2 x i64> %i.yc, ptr %.sroa.619.i.i.sroa.7.0..sroa_idx19.i, align 16, !noalias !31775
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31781)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31784)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw), !noalias !31786
  call void @_RNvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB5_13TableVerifier5deref(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.cw, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.cy, i16 noundef 4), !noalias !31787
  %i.yf = load i64, ptr %i.cw, align 8, !range !99, !noalias !31786, !noundef !3 ; 2 uses
  %.not.i.i.i.i352 = icmp eq i64 %i.yf, -9223372036854775798
  %i.yg = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.yh = load i64, ptr %i.yg, align 8, !noalias !31786 ; 2 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.yj = load i64, ptr %i.yi, align 8, !noalias !31786 ; 6 uses
  br i1 %.not.i.i.i.i352, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %.sroa.718.0..sroa_idx.i.i.i.i353 = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.yk = load <2 x i64>, ptr %.sroa.718.0..sroa_idx.i.i.i.i353, align 8, !noalias !31775
  %.sroa.15107.i.i.sroa.6.0..sroa.718.0..sroa_idx.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 40
  %i.yl = load <2 x i64>, ptr %.sroa.15107.i.i.sroa.6.0..sroa.718.0..sroa_idx.i.i.i.sroa_idx.i, align 8, !noalias !31775
  %.sroa.15107.i.i.sroa.8.0..sroa.718.0..sroa_idx.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 56
  %i.ym = load <2 x i64>, ptr %.sroa.15107.i.i.sroa.8.0..sroa.718.0..sroa_idx.i.i.i.sroa_idx.i, align 8, !noalias !31775
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !noalias !31786
  br label %bb.gh

bb.fw:                                            ; preds = %bb.fu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !noalias !31786
  %i.yn = trunc nuw i64 %i.yh to i1
  br i1 %i.yn, label %bb.fx, label %bb.gi

bb.fx:                                            ; preds = %bb.fw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv), !noalias !31786
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu), !noalias !31786
  %i.yo = load ptr, ptr %i.cy, align 16, !alias.scope !31784, !noalias !31788, !nonnull !3, !align !100, !noundef !3 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !31789)
  call void @llvm.experimental.noalias.scope.decl(metadata !31792)
  call void @llvm.experimental.noalias.scope.decl(metadata !31794)
  call void @llvm.experimental.noalias.scope.decl(metadata !31797)
  %i.yp = and i64 %i.yj, 1
  %i.yq = icmp eq i64 %i.yp, 0
  br i1 %i.yq, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %bb.fx
  %i.yr = call i64 @llvm.uadd.sat.i64(i64 %i.yj, i64 2) ; 2 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yo, i64 8
  %i.yt = load i64, ptr %i.ys, align 8, !alias.scope !31799, !noalias !31800, !noundef !3
  %i.yu = icmp ugt i64 %i.yr, %i.yt
  br i1 %i.yu, label %bb.gb, label %bb.ga

bb.fz:                                            ; preds = %bb.fx
  store i64 -9223372036854775804, ptr %i.cu, align 8, !alias.scope !31801, !noalias !31802
  %.sroa.242.0..sroa_idx.i.i.i.i.i.i368 = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i64 0, ptr %.sroa.242.0..sroa_idx.i.i.i.i.i.i368, align 8, !alias.scope !31801, !noalias !31802
end_hunk_5
begin_hunk_6_@_RNCNvXs3Y_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB8_5FieldNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier0Cs14kWLkQVSKO_14deltalake_core:bb.a
  %.sroa.9.0.copyload.i.i.i379 = load i64, ptr %.sroa.9.0..sroa_idx.i.i.i378, align 8, !noalias !31804
  %.sroa.14.0..sroa_idx.i.i.i380 = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %.sroa.14.0.copyload.i.i.i381 = load i64, ptr %.sroa.14.0..sroa_idx.i.i.i380, align 8, !noalias !31804
  %.sroa.15107.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.zg = load <2 x i64>, ptr %.sroa.15107.0..sroa_idx.i.i.i, align 8, !noalias !31775
  %.sroa.15107.i.i.sroa.6.0..sroa.15107.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  %i.zh = load <2 x i64>, ptr %.sroa.15107.i.i.sroa.6.0..sroa.15107.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !31775
  %.sroa.15107.i.i.sroa.8.0..sroa.15107.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 56
  %i.zi = load <2 x i64>, ptr %.sroa.15107.i.i.sroa.8.0..sroa.15107.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !31775
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !noalias !31786
  br label %bb.gh

bb.gg:                                            ; preds = %bb.ge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !noalias !31786
  br label %bb.gi

bb.gh:                                            ; preds = %bb.gf, %bb.fv
  %.sroa.14.1.i.i.i354 = phi i64 [ %.sroa.14.0.copyload.i.i.i381, %bb.gf ], [ %i.yj, %bb.fv ]
  %.sroa.9.1.i.i.i355 = phi i64 [ %.sroa.9.0.copyload.i.i.i379, %bb.gf ], [ %i.yh, %bb.fv ] ; 2 uses
  %.sroa.098.1.i.i.i = phi i64 [ %i.zf, %bb.gf ], [ %i.yf, %bb.fv ]
  %i.zj = phi <2 x i64> [ %i.zg, %bb.gf ], [ %i.yk, %bb.fv ]
  %i.zk = phi <2 x i64> [ %i.zh, %bb.gf ], [ %i.yl, %bb.fv ]
  %i.zl = phi <2 x i64> [ %i.zi, %bb.gf ], [ %i.ym, %bb.fv ]
  %.sroa.8.sroa.7.0.extract.shift11.i = and i64 %.sroa.9.1.i.i.i355, -4294967296
  br label %_RNvXs3o_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_4TimeNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i

bb.gi:                                            ; preds = %bb.gg, %bb.fw
  %i.zm = load <2 x i64>, ptr %i.cy, align 16, !alias.scope !31805, !noalias !31775
  store <2 x i64> %i.zm, ptr %i.cx, align 16, !noalias !31775
  %.sroa.613.sroa.8.0..sroa_idx.i.i.i357 = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.613.sroa.8.0..sroa_idx.i.i.i357, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.619.i.i.sroa.7.0..sroa_idx19.i, i64 16, i1 false), !noalias !31774
  call void @llvm.experimental.noalias.scope.decl(metadata !31806)
  call void @llvm.experimental.noalias.scope.decl(metadata !31809)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs), !noalias !31811
  call void @_RNvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB5_13TableVerifier5deref(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.cs, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.cx, i16 noundef 6), !noalias !31813
  %i.zn = load i64, ptr %i.cs, align 8, !range !99, !noalias !31811, !noundef !3 ; 2 uses
  %.not.i72.i.i.i = icmp eq i64 %i.zn, -9223372036854775798
  %i.zo = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.zp = load i64, ptr %i.zo, align 8, !noalias !31811 ; 2 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.zr = load i64, ptr %i.zq, align 8, !noalias !31811 ; 6 uses
  br i1 %.not.i72.i.i.i, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %.sroa.718.0..sroa_idx.i73.i.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.zs = load <2 x i64>, ptr %.sroa.718.0..sroa_idx.i73.i.i.i, align 8, !noalias !31814
  %.sroa.20.24..sroa.718.0..sroa_idx.i73.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  %i.zt = load <2 x i64>, ptr %.sroa.20.24..sroa.718.0..sroa_idx.i73.sroa_idx.i.i.i, align 8, !noalias !31775
  %.sroa.20.i.i.sroa.6.0..sroa.20.24..sroa.718.0..sroa_idx.i73.sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 56
  %i.zu = load <2 x i64>, ptr %.sroa.20.i.i.sroa.6.0..sroa.20.24..sroa.718.0..sroa_idx.i73.sroa_idx.i.i.sroa_idx.i, align 8, !noalias !31775
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !noalias !31811
  br label %bb.gv

bb.gk:                                            ; preds = %bb.gi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !noalias !31811
  %i.zv = trunc nuw i64 %i.zp to i1
  br i1 %i.zv, label %bb.gl, label %bb.gw

bb.gl:                                            ; preds = %bb.gk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !noalias !31811
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq), !noalias !31811
  %i.zw = load ptr, ptr %i.cx, align 16, !alias.scope !31809, !noalias !31815, !nonnull !3, !align !100, !noundef !3 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !31816)
  call void @llvm.experimental.noalias.scope.decl(metadata !31819)
  call void @llvm.experimental.noalias.scope.decl(metadata !31821)
  call void @llvm.experimental.noalias.scope.decl(metadata !31824)
  %i.zx = and i64 %i.zr, 3
  %i.zy = icmp eq i64 %i.zx, 0
  br i1 %i.zy, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %bb.gl
  %i.zz = call i64 @llvm.uadd.sat.i64(i64 %i.zr, i64 4) ; 2 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zw, i64 8
  %i.aab = load i64, ptr %i.aaa, align 8, !alias.scope !31826, !noalias !31827, !noundef !3
  %i.aac = icmp ugt i64 %i.zz, %i.aab
  br i1 %i.aac, label %bb.gp, label %bb.go

bb.gn:                                            ; preds = %bb.gl
  store i64 -9223372036854775804, ptr %i.cq, align 8, !alias.scope !31828, !noalias !31829
  %.sroa.242.0..sroa_idx.i.i.i77.i.i.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i64 0, ptr %.sroa.242.0..sroa_idx.i.i.i77.i.i.i, align 8, !alias.scope !31828, !noalias !31829
  %.sroa.343.0..sroa_idx.i.i.i78.i.i.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.343.0..sroa_idx.i.i.i78.i.i.i, align 8, !alias.scope !31828, !noalias !31829
  %.sroa.444.0..sroa_idx.i.i.i79.i.i.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  store i64 0, ptr %.sroa.444.0..sroa_idx.i.i.i79.i.i.i, align 8, !alias.scope !31828, !noalias !31829
  %.sroa.545.0..sroa_idx.i.i.i80.i.i.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  store i64 -9223372036854775808, ptr %.sroa.545.0..sroa_idx.i.i.i80.i.i.i, align 8, !alias.scope !31828, !noalias !31829
  %.sroa.646.0..sroa_idx.i.i.i81.i.i.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 40
  store ptr @11, ptr %.sroa.646.0..sroa_idx.i.i.i81.i.i.i, align 8, !alias.scope !31828, !noalias !31829
  %.sroa.747.0..sroa_idx.i.i.i82.i.i.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 48
  store i64 3, ptr %.sroa.747.0..sroa_idx.i.i.i82.i.i.i, align 8, !alias.scope !31828, !noalias !31829
  %.sroa.848.0..sroa_idx.i.i.i83.i.i.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 56
  store i64 %i.zr, ptr %.sroa.848.0..sroa_idx.i.i.i83.i.i.i, align 8, !alias.scope !31828, !noalias !31829
  br label %bb.gs

bb.go:                                            ; preds = %bb.gm
  %i.aad = getelementptr inbounds nuw i8, ptr %i.zw, i64 40 ; 2 uses
  %i.aae = load i64, ptr %i.aad, align 8, !alias.scope !31826, !noalias !31827, !noundef !3
  %i.aaf = add i64 %i.aae, 4                      ; 2 uses
  store i64 %i.aaf, ptr %i.aad, align 8, !alias.scope !31826, !noalias !31827
  %i.aag = getelementptr inbounds nuw i8, ptr %i.zw, i64 16
  %i.aah = load ptr, ptr %i.aag, align 8, !alias.scope !31826, !noalias !31827, !nonnull !3, !align !100, !noundef !3
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 16
  %i.aaj = load i64, ptr %i.aai, align 8, !noalias !31830, !noundef !3
  %i.aak = icmp ugt i64 %i.aaf, %i.aaj
  br i1 %i.aak, label %bb.gr, label %bb.gq

bb.gp:                                            ; preds = %bb.gm
  store i64 -9223372036854775803, ptr %i.cq, align 8, !alias.scope !31828, !noalias !31829
  %.sroa.453.0..sroa_idx.i.i.i86.i.i.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i64 0, ptr %.sroa.453.0..sroa_idx.i.i.i86.i.i.i, align 8, !alias.scope !31828, !noalias !31829
  %.sroa.453.sroa.4.0..sroa.453.0..sroa_idx.sroa_idx.i.i.i87.i.i.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.453.sroa.4.0..sroa.453.0..sroa_idx.sroa_idx.i.i.i87.i.i.i, align 8, !alias.scope !31828, !noalias !31829
  %.sroa.453.sroa.5.0..sroa.453.0..sroa_idx.sroa_idx.i.i.i88.i.i.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  store i64 0, ptr %.sroa.453.sroa.5.0..sroa.453.0..sroa_idx.sroa_idx.i.i.i88.i.i.i, align 8, !alias.scope !31828, !noalias !31829
  %.sroa.554.0..sroa_idx.i.i.i89.i.i.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  store i64 %i.zr, ptr %.sroa.554.0..sroa_idx.i.i.i89.i.i.i, align 8, !alias.scope !31828, !noalias !31829
  %.sroa.655.0..sroa_idx.i.i.i90.i.i.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 40
  store i64 %i.zz, ptr %.sroa.655.0..sroa_idx.i.i.i90.i.i.i, align 8, !alias.scope !31828, !noalias !31829
  br label %bb.gs

bb.gq:                                            ; preds = %bb.go
  store i64 -9223372036854775798, ptr %i.cq, align 8, !alias.scope !31828, !noalias !31829
  br label %bb.gs

bb.gr:                                            ; preds = %bb.go
  store i64 -9223372036854775800, ptr %i.cq, align 8, !alias.scope !31828, !noalias !31829
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gq, %bb.gp, %bb.gn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !noalias !31811
  %i.aal = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store i64 -9223372036854775808, ptr %i.aal, align 8, !noalias !31811
  %.sroa.438.0..sroa_idx.i.i.i.i361 = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  store ptr @199, ptr %.sroa.438.0..sroa_idx.i.i.i.i361, align 8, !noalias !31811
  %.sroa.5.0..sroa_idx.i84.i.i.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  store i64 8, ptr %.sroa.5.0..sroa_idx.i84.i.i.i, align 8, !noalias !31811
  %i.aam = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i64 %i.zr, ptr %i.aam, align 8, !noalias !31811
  store i64 1, ptr %i.cp, align 8, !noalias !31811
  call fastcc void @_RINvNtCs2TwJzntlzha_11flatbuffers8verifier12append_traceuECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.cr, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.cq, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.cp), !noalias !31831
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !31811
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq), !noalias !31811
  %i.aan = load i64, ptr %i.cr, align 8, !range !99, !noalias !31811, !noundef !3 ; 2 uses
  %.not37.i85.i.i.i = icmp eq i64 %i.aan, -9223372036854775798
  br i1 %.not37.i85.i.i.i, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %.sroa.10.0..sroa_idx.i.i.i362 = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %.sroa.10.0.copyload.i.i.i363 = load i64, ptr %.sroa.10.0..sroa_idx.i.i.i362, align 8, !noalias !31814
  %.sroa.15.0..sroa_idx.i.i.i364 = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %.sroa.15.0.copyload.i.i.i365 = load i64, ptr %.sroa.15.0..sroa_idx.i.i.i364, align 8, !noalias !31814
  %.sroa.17.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.aao = load <2 x i64>, ptr %.sroa.17.0..sroa_idx.i.i.i, align 8, !noalias !31814
  %.sroa.20.0..sroa_idx.i.i.i367 = getelementptr inbounds nuw i8, ptr %i.cr, i64 40
  %i.aap = load <2 x i64>, ptr %.sroa.20.0..sroa_idx.i.i.i367, align 8, !noalias !31775
  %.sroa.20.i.i.sroa.6.0..sroa.20.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 56
  %i.aaq = load <2 x i64>, ptr %.sroa.20.i.i.sroa.6.0..sroa.20.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !31775
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !31811
  br label %bb.gv

bb.gu:                                            ; preds = %bb.gs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !31811
  br label %bb.gw

bb.gv:                                            ; preds = %bb.gt, %bb.gj
  %.sroa.15.1.i.i.i358 = phi i64 [ %.sroa.15.0.copyload.i.i.i365, %bb.gt ], [ %i.zr, %bb.gj ]
  %.sroa.10.1.i.i.i359 = phi i64 [ %.sroa.10.0.copyload.i.i.i363, %bb.gt ], [ %i.zp, %bb.gj ] ; 2 uses
  %.sroa.0.1.i.i.i360 = phi i64 [ %i.aan, %bb.gt ], [ %i.zn, %bb.gj ]
  %i.aar = phi <2 x i64> [ %i.aao, %bb.gt ], [ %i.zs, %bb.gj ]
  %i.aas = phi <2 x i64> [ %i.aap, %bb.gt ], [ %i.zt, %bb.gj ]
  %i.aat = phi <2 x i64> [ %i.aaq, %bb.gt ], [ %i.zu, %bb.gj ]
  %.sroa.8.sroa.7.0.extract.shift.i = and i64 %.sroa.10.1.i.i.i359, -4294967296
  br label %_RNvXs3o_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_4TimeNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i

bb.gw:                                            ; preds = %bb.gu, %bb.gk
  %.sroa.10.1.ph.i.i.i = load i64, ptr %i.cx, align 16, !alias.scope !31832, !noalias !31833
  %i.aau = inttoptr i64 %.sroa.10.1.ph.i.i.i to ptr
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aau, i64 24 ; 2 uses
  %i.aaw = load i64, ptr %i.aav, align 8, !noalias !31779, !noundef !3
  %i.aax = add i64 %i.aaw, -1
  store i64 %i.aax, ptr %i.aav, align 8, !noalias !31779
  br label %_RNvXs3o_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_4TimeNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i

_RNvXs3o_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_4TimeNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i: ; preds = %bb.gw, %bb.gv, %bb.gh, %bb.ft
  %.sroa.8.sroa.7.1.i = phi i64 [ 0, %bb.gw ], [ %.sroa.8.sroa.7.0.extract.shift.i, %bb.gv ], [ %.sroa.8.sroa.7.0.extract.shift11.i, %bb.gh ], [ %.sroa.8.sroa.7.0.extract.shift13.i, %bb.ft ]
  %.sroa.8.sroa.0.1.i = phi i64 [ 0, %bb.gw ], [ %.sroa.10.1.i.i.i359, %bb.gv ], [ %.sroa.9.1.i.i.i355, %bb.gh ], [ %.sroa.619.i.i.sroa.0.0.copyload.i, %bb.ft ]
  %.sroa.13.1.i350 = phi i64 [ undef, %bb.gw ], [ %.sroa.15.1.i.i.i358, %bb.gv ], [ %.sroa.14.1.i.i.i354, %bb.gh ], [ %.sroa.619.i.i.sroa.6.0.copyload.i, %bb.ft ]
  %.sroa.0.1.i351 = phi i64 [ -9223372036854775798, %bb.gw ], [ %.sroa.0.1.i.i.i360, %bb.gv ], [ %.sroa.098.1.i.i.i, %bb.gh ], [ %i.ya, %bb.ft ]
  %i.aay = phi <2 x i64> [ undef, %bb.gw ], [ %i.aar, %bb.gv ], [ %i.zj, %bb.gh ], [ %i.yc, %bb.ft ]
  %i.aaz = phi <2 x i64> [ undef, %bb.gw ], [ %i.aas, %bb.gv ], [ %i.zk, %bb.gh ], [ %i.yd, %bb.ft ]
  %i.aba = phi <2 x i64> [ undef, %bb.gw ], [ %i.aat, %bb.gv ], [ %i.zl, %bb.gh ], [ %i.ye, %bb.ft ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !31774
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !noalias !31774
  %i.abb = and i64 %.sroa.8.sroa.0.1.i, 4294967295
  %i.abc = or disjoint i64 %i.abb, %.sroa.8.sroa.7.1.i
  br label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema4TimeEReECs14kWLkQVSKO_14deltalake_core.exit

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema4TimeEReECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.fi, %bb.fj, %bb.fk, %_RNvXs3o_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_4TimeNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i
  %.sroa.8.sroa.7.2.i = phi i64 [ %i.abc, %_RNvXs3o_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_4TimeNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ 0, %bb.fk ], [ 0, %bb.fj ], [ 0, %bb.fi ]
  %.sroa.13.2.i322 = phi i64 [ %.sroa.13.1.i350, %_RNvXs3o_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_4TimeNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ 8, %bb.fk ], [ 8, %bb.fj ], [ 8, %bb.fi ]
  %.sroa.0.2.i323 = phi i64 [ %.sroa.0.1.i351, %_RNvXs3o_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_4TimeNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ -9223372036854775800, %bb.fk ], [ -9223372036854775803, %bb.fj ], [ -9223372036854775804, %bb.fi ]
  %i.abd = phi <2 x i64> [ %i.aay, %_RNvXs3o_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_4TimeNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ <i64 0, i64 undef>, %bb.fk ], [ %i.wz, %bb.fj ], [ <i64 0, i64 -9223372036854775808>, %bb.fi ]
  %i.abe = phi <2 x i64> [ %i.aaz, %_RNvXs3o_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_4TimeNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ <i64 undef, i64 3>, %bb.fk ], [ %i.xa, %bb.fj ], [ <i64 ptrtoint (ptr @12 to i64), i64 3>, %bb.fi ]
  %i.abf = phi <2 x i64> [ %i.aba, %_RNvXs3o_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_4TimeNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ %i.wu, %bb.fk ], [ %i.wu, %bb.fj ], [ %i.wu, %bb.fi ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db), !noalias !31834
  store i64 %.sroa.0.2.i323, ptr %i.db, align 8, !noalias !31834
  %.sroa.8.0..sroa_idx.i324 = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store i64 %.sroa.8.sroa.7.2.i, ptr %.sroa.8.0..sroa_idx.i324, align 8, !noalias !31834
  %.sroa.13.0..sroa_idx.i325 = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store i64 %.sroa.13.2.i322, ptr %.sroa.13.0..sroa_idx.i325, align 8, !noalias !31834
  %.sroa.16.0..sroa_idx.i326 = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  store <2 x i64> %i.abd, ptr %.sroa.16.0..sroa_idx.i326, align 8, !noalias !31834
  %.sroa.21.0..sroa_idx.i328 = getelementptr inbounds nuw i8, ptr %i.db, i64 40
  store <2 x i64> %i.abe, ptr %.sroa.21.0..sroa_idx.i328, align 8, !noalias !31834
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.db, i64 56
  store <2 x i64> %i.abf, ptr %.sroa.26.0..sroa_idx.i, align 8, !noalias !31834
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da), !noalias !31834
  %i.abg = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store i64 -9223372036854775808, ptr %i.abg, align 8, !noalias !31834
  %.sroa.4.0..sroa_idx.i330 = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  store ptr @68, ptr %.sroa.4.0..sroa_idx.i330, align 8, !noalias !31834
  %.sroa.5.0..sroa_idx.i331 = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  store i64 10, ptr %.sroa.5.0..sroa_idx.i331, align 8, !noalias !31834
  %i.abh = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store i64 %3, ptr %i.abh, align 8, !noalias !31834
  store i64 2, ptr %i.da, align 8, !noalias !31834
  call fastcc void @_RINvNtCs2TwJzntlzha_11flatbuffers8verifier12append_traceuECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.db, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.da)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da), !noalias !31834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db), !noalias !31834
  br label %bb.tx

bb.gx:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31835)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31838)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31841)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31844)
  %i.abi = and i64 %3, 3
  %i.abj = icmp eq i64 %i.abi, 0
  %i.abk = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %3, i64 0 ; 3 uses
  br i1 %i.abj, label %bb.gy, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema9TimestampEReECs14kWLkQVSKO_14deltalake_core.exit

bb.gy:                                            ; preds = %bb.gx
  %i.abl = tail call i64 @llvm.uadd.sat.i64(i64 %3, i64 4) ; 2 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.abn = load i64, ptr %i.abm, align 8, !alias.scope !31847, !noalias !31848, !noundef !3 ; 9 uses
  %i.abo = icmp ugt i64 %i.abl, %i.abn
  %i.abp = insertelement <2 x i64> <i64 poison, i64 3>, i64 %i.abl, i64 0
  br i1 %i.abo, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema9TimestampEReECs14kWLkQVSKO_14deltalake_core.exit, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.abq = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.abr = load i64, ptr %i.abq, align 8, !alias.scope !31847, !noalias !31848, !noundef !3
  %i.abs = add i64 %i.abr, 4                      ; 2 uses
  store i64 %i.abs, ptr %i.abq, align 8, !alias.scope !31847, !noalias !31848
  %i.abt = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.abu = load ptr, ptr %i.abt, align 8, !alias.scope !31847, !noalias !31848, !nonnull !3, !align !100, !noundef !3
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abu, i64 16
  %i.abw = load i64, ptr %i.abv, align 8, !noalias !31853, !noundef !3
  %i.abx = icmp ugt i64 %i.abs, %i.abw
  br i1 %i.abx, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema9TimestampEReECs14kWLkQVSKO_14deltalake_core.exit, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i406

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i406: ; preds = %bb.gz
  %i.aby = icmp ult i64 %3, %i.abn
  br i1 %i.aby, label %bb.ha, label %bb.hb

bb.ha:                                            ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i406
  %i.abz = load ptr, ptr %2, align 8, !alias.scope !31854, !noalias !31855, !nonnull !3, !noundef !3 ; 4 uses
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abz, i64 %3
  %i.acb = load i8, ptr %i.aca, align 1, !noalias !31856, !noundef !3
  %i.acc = or disjoint i64 %3, 1                  ; 3 uses
  %i.acd = icmp ult i64 %i.acc, %i.abn
  br i1 %i.acd, label %bb.hc, label %bb.hd

bb.hb:                                            ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i406
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %3, i64 noundef %i.abn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #51, !noalias !31856
  unreachable

bb.hc:                                            ; preds = %bb.ha
  %i.ace = getelementptr inbounds nuw i8, ptr %i.abz, i64 %i.acc
  %i.acf = load i8, ptr %i.ace, align 1, !noalias !31856, !noundef !3
  %i.acg = or disjoint i64 %3, 2                  ; 3 uses
  %i.ach = icmp ult i64 %i.acg, %i.abn
  br i1 %i.ach, label %bb.he, label %bb.hf

bb.hd:                                            ; preds = %bb.ha
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.acc, i64 noundef %i.abn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #51, !noalias !31856
  unreachable

bb.he:                                            ; preds = %bb.hc
  %i.aci = or disjoint i64 %3, 3                  ; 3 uses
  %i.acj = icmp ult i64 %i.aci, %i.abn
  br i1 %i.acj, label %bb.hh, label %bb.hg

bb.hf:                                            ; preds = %bb.hc
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.acg, i64 noundef %i.abn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #51, !noalias !31856
  unreachable

bb.hg:                                            ; preds = %bb.he
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.aci, i64 noundef %i.abn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #51, !noalias !31856
  unreachable

bb.hh:                                            ; preds = %bb.he
  %i.ack = getelementptr inbounds nuw i8, ptr %i.abz, i64 %i.acg
  %i.acl = load i8, ptr %i.ack, align 1, !noalias !31856, !noundef !3
  %i.acm = getelementptr inbounds nuw i8, ptr %i.abz, i64 %i.aci
  %i.acn = load i8, ptr %i.acm, align 1, !noalias !31856, !noundef !3
  %.sroa.6.0.insert.ext.i.i.i407 = zext i8 %i.acn to i64
  %.sroa.6.0.insert.shift.i.i.i408 = shl nuw nsw i64 %.sroa.6.0.insert.ext.i.i.i407, 24
  %.sroa.5.0.insert.ext.i.i.i409 = zext i8 %i.acl to i64
  %.sroa.5.0.insert.shift.i.i.i410 = shl nuw nsw i64 %.sroa.5.0.insert.ext.i.i.i409, 16
  %.sroa.4.0.insert.ext.i.i.i411 = zext i8 %i.acf to i64
  %.sroa.4.0.insert.shift.i.i.i412 = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i.i411, 8
  %.sroa.0.0.insert.ext.i.i.i413 = zext i8 %i.acb to i64
  %.sroa.5.0.insert.insert.i.i.i414 = or disjoint i64 %.sroa.4.0.insert.shift.i.i.i412, %.sroa.0.0.insert.ext.i.i.i413
  %.sroa.4.0.insert.insert.i.i.i415 = or disjoint i64 %.sroa.5.0.insert.insert.i.i.i414, %.sroa.5.0.insert.shift.i.i.i410
  %.sroa.0.0.insert.insert.i.i.i416 = or disjoint i64 %.sroa.4.0.insert.insert.i.i.i415, %.sroa.6.0.insert.shift.i.i.i408
  %i.aco = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.0.insert.insert.i.i.i416, i64 %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj), !noalias !31857
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck), !noalias !31857
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm), !noalias !31858
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl), !noalias !31858
  call fastcc void @_RNvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB5_8Verifier11visit_table(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.cl, ptr noalias noundef nonnull align 8 dereferenceable(48) %2, i64 noundef %i.aco) #50, !noalias !31862
  %i.acp = load i64, ptr %i.cl, align 8, !range !99, !noalias !31858, !noundef !3 ; 2 uses
  %.not.i.i.i417 = icmp eq i64 %i.acp, -9223372036854775798
  %i.acq = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %.sroa.619.i.i.sroa.0.0.copyload.i418 = load i64, ptr %i.acq, align 8, !noalias !31858 ; 3 uses
  %.sroa.619.i.i.sroa.6.0..sroa_idx.i419 = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %.sroa.619.i.i.sroa.6.0.copyload.i420 = load i64, ptr %.sroa.619.i.i.sroa.6.0..sroa_idx.i419, align 8, !noalias !31858 ; 2 uses
  %.sroa.619.i.i.sroa.7.0..sroa_idx.i421 = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %.sroa.619.i.i.sroa.7.0.copyload.i422 = load i64, ptr %.sroa.619.i.i.sroa.7.0..sroa_idx.i421, align 8, !noalias !31858 ; 2 uses
  %.sroa.619.i.i.sroa.8.0..sroa_idx.i423 = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %.sroa.619.i.i.sroa.8.0.copyload.i424 = load i64, ptr %.sroa.619.i.i.sroa.8.0..sroa_idx.i423, align 8, !noalias !31858 ; 2 uses
  br i1 %.not.i.i.i417, label %bb.hj, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %.sroa.636.0..sroa_idx.i.i.i425 = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  %i.acr = load <2 x i64>, ptr %.sroa.636.0..sroa_idx.i.i.i425, align 8, !noalias !31863
  %.sroa.26.40..sroa.636.0..sroa_idx.i.i.sroa_idx.i429 = getelementptr inbounds nuw i8, ptr %i.cl, i64 56
  %i.acs = load <2 x i64>, ptr %.sroa.26.40..sroa.636.0..sroa_idx.i.i.sroa_idx.i429, align 8, !noalias !31863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !31858
  %.sroa.8.sroa.7.0.extract.shift13.i433 = and i64 %.sroa.619.i.i.sroa.0.0.copyload.i418, -4294967296
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !31858
  br label %_RNvXs3u_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_9TimestampNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i

bb.hj:                                            ; preds = %bb.hh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !31858
  store i64 %.sroa.619.i.i.sroa.0.0.copyload.i418, ptr %i.ck, align 16, !noalias !31858
  %.sroa.619.i.i.sroa.6.0..sroa_idx17.i444 = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store i64 %.sroa.619.i.i.sroa.6.0.copyload.i420, ptr %.sroa.619.i.i.sroa.6.0..sroa_idx17.i444, align 8, !noalias !31858
  %.sroa.619.i.i.sroa.7.0..sroa_idx19.i445 = getelementptr inbounds nuw i8, ptr %i.ck, i64 16 ; 2 uses
  store i64 %.sroa.619.i.i.sroa.7.0.copyload.i422, ptr %.sroa.619.i.i.sroa.7.0..sroa_idx19.i445, align 16, !noalias !31858
  %.sroa.619.i.i.sroa.8.0..sroa_idx21.i446 = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  store i64 %.sroa.619.i.i.sroa.8.0.copyload.i424, ptr %.sroa.619.i.i.sroa.8.0..sroa_idx21.i446, align 8, !noalias !31858
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31864)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31867)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci), !noalias !31869
  call void @_RNvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB5_13TableVerifier5deref(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.ci, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ck, i16 noundef 4), !noalias !31870
  %i.act = load i64, ptr %i.ci, align 8, !range !99, !noalias !31869, !noundef !3 ; 2 uses
  %.not.i.i.i.i447 = icmp eq i64 %i.act, -9223372036854775798
  %i.acu = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.acv = load i64, ptr %i.acu, align 8, !noalias !31869 ; 2 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.acx = load i64, ptr %i.acw, align 8, !noalias !31869 ; 6 uses
  br i1 %.not.i.i.i.i447, label %bb.hl, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %.sroa.718.0..sroa_idx.i.i.i.i448 = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %.sroa.15.i.i.sroa.0.0.copyload.i = load i64, ptr %.sroa.718.0..sroa_idx.i.i.i.i448, align 8, !noalias !31858
  %.sroa.15.i.i.sroa.5.0..sroa.718.0..sroa_idx.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %.sroa.15.i.i.sroa.5.0.copyload.i = load i64, ptr %.sroa.15.i.i.sroa.5.0..sroa.718.0..sroa_idx.i.i.i.sroa_idx.i, align 8, !noalias !31858
  %.sroa.15.i.i.sroa.6.0..sroa.718.0..sroa_idx.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  %i.acy = load <2 x i64>, ptr %.sroa.15.i.i.sroa.6.0..sroa.718.0..sroa_idx.i.i.i.sroa_idx.i, align 8, !noalias !31858
  %.sroa.15.i.i.sroa.8.0..sroa.718.0..sroa_idx.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 56
  %i.acz = load <2 x i64>, ptr %.sroa.15.i.i.sroa.8.0..sroa.718.0..sroa_idx.i.i.i.sroa_idx.i, align 8, !noalias !31858
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !noalias !31869
  br label %bb.hw

bb.hl:                                            ; preds = %bb.hj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !noalias !31869
  %i.ada = trunc nuw i64 %i.acv to i1
  br i1 %i.ada, label %bb.hm, label %bb.hx

bb.hm:                                            ; preds = %bb.hl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch), !noalias !31869
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg), !noalias !31869
  %i.adb = load ptr, ptr %i.ck, align 16, !alias.scope !31867, !noalias !31871, !nonnull !3, !align !100, !noundef !3 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !31872)
  call void @llvm.experimental.noalias.scope.decl(metadata !31875)
  call void @llvm.experimental.noalias.scope.decl(metadata !31877)
  call void @llvm.experimental.noalias.scope.decl(metadata !31880)
  %i.adc = and i64 %i.acx, 1
  %i.add = icmp eq i64 %i.adc, 0
  br i1 %i.add, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %bb.hm
  %i.ade = call i64 @llvm.uadd.sat.i64(i64 %i.acx, i64 2) ; 2 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %i.adb, i64 8
  %i.adg = load i64, ptr %i.adf, align 8, !alias.scope !31882, !noalias !31883, !noundef !3
  %i.adh = icmp ugt i64 %i.ade, %i.adg
  br i1 %i.adh, label %bb.hq, label %bb.hp

bb.ho:                                            ; preds = %bb.hm
  store i64 -9223372036854775804, ptr %i.cg, align 8, !alias.scope !31884, !noalias !31885
  %.sroa.242.0..sroa_idx.i.i.i.i.i.i456 = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store i64 0, ptr %.sroa.242.0..sroa_idx.i.i.i.i.i.i456, align 8, !alias.scope !31884, !noalias !31885
  %.sroa.343.0..sroa_idx.i.i.i.i.i.i457 = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.343.0..sroa_idx.i.i.i.i.i.i457, align 8, !alias.scope !31884, !noalias !31885
  %.sroa.444.0..sroa_idx.i.i.i.i.i.i458 = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  store i64 0, ptr %.sroa.444.0..sroa_idx.i.i.i.i.i.i458, align 8, !alias.scope !31884, !noalias !31885
  %.sroa.545.0..sroa_idx.i.i.i.i.i.i459 = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  store i64 -9223372036854775808, ptr %.sroa.545.0..sroa_idx.i.i.i.i.i.i459, align 8, !alias.scope !31884, !noalias !31885
  %.sroa.646.0..sroa_idx.i.i.i.i.i.i460 = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  store ptr @13, ptr %.sroa.646.0..sroa_idx.i.i.i.i.i.i460, align 8, !alias.scope !31884, !noalias !31885
  %.sroa.747.0..sroa_idx.i.i.i.i.i.i461 = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  store i64 3, ptr %.sroa.747.0..sroa_idx.i.i.i.i.i.i461, align 8, !alias.scope !31884, !noalias !31885
  %.sroa.848.0..sroa_idx.i.i.i.i.i.i462 = getelementptr inbounds nuw i8, ptr %i.cg, i64 56
  store i64 %i.acx, ptr %.sroa.848.0..sroa_idx.i.i.i.i.i.i462, align 8, !alias.scope !31884, !noalias !31885
  br label %bb.ht

bb.hp:                                            ; preds = %bb.hn
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adb, i64 40 ; 2 uses
  %i.adj = load i64, ptr %i.adi, align 8, !alias.scope !31882, !noalias !31883, !noundef !3
  %i.adk = add i64 %i.adj, 2                      ; 2 uses
  store i64 %i.adk, ptr %i.adi, align 8, !alias.scope !31882, !noalias !31883
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adb, i64 16
  %i.adm = load ptr, ptr %i.adl, align 8, !alias.scope !31882, !noalias !31883, !nonnull !3, !align !100, !noundef !3
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adm, i64 16
  %i.ado = load i64, ptr %i.adn, align 8, !noalias !31886, !noundef !3
  %i.adp = icmp ugt i64 %i.adk, %i.ado
  br i1 %i.adp, label %bb.hs, label %bb.hr

bb.hq:                                            ; preds = %bb.hn
  store i64 -9223372036854775803, ptr %i.cg, align 8, !alias.scope !31884, !noalias !31885
  %.sroa.453.0..sroa_idx.i.i.i.i.i.i471 = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store i64 0, ptr %.sroa.453.0..sroa_idx.i.i.i.i.i.i471, align 8, !alias.scope !31884, !noalias !31885
  %.sroa.453.sroa.4.0..sroa.453.0..sroa_idx.sroa_idx.i.i.i.i.i.i472 = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.453.sroa.4.0..sroa.453.0..sroa_idx.sroa_idx.i.i.i.i.i.i472, align 8, !alias.scope !31884, !noalias !31885
  %.sroa.453.sroa.5.0..sroa.453.0..sroa_idx.sroa_idx.i.i.i.i.i.i473 = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  store i64 0, ptr %.sroa.453.sroa.5.0..sroa.453.0..sroa_idx.sroa_idx.i.i.i.i.i.i473, align 8, !alias.scope !31884, !noalias !31885
  %.sroa.554.0..sroa_idx.i.i.i.i.i.i474 = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  store i64 %i.acx, ptr %.sroa.554.0..sroa_idx.i.i.i.i.i.i474, align 8, !alias.scope !31884, !noalias !31885
  %.sroa.655.0..sroa_idx.i.i.i.i.i.i475 = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  store i64 %i.ade, ptr %.sroa.655.0..sroa_idx.i.i.i.i.i.i475, align 8, !alias.scope !31884, !noalias !31885
  br label %bb.ht

bb.hr:                                            ; preds = %bb.hp
  store i64 -9223372036854775798, ptr %i.cg, align 8, !alias.scope !31884, !noalias !31885
  br label %bb.ht

bb.hs:                                            ; preds = %bb.hp
  store i64 -9223372036854775800, ptr %i.cg, align 8, !alias.scope !31884, !noalias !31885
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %bb.hr, %bb.hq, %bb.ho
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !31869
  %i.adq = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store i64 -9223372036854775808, ptr %i.adq, align 8, !noalias !31869
  %.sroa.41.0..sroa_idx.i.i.i.i463 = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  store ptr @259, ptr %.sroa.41.0..sroa_idx.i.i.i.i463, align 8, !noalias !31869
  %.sroa.5.0..sroa_idx.i.i.i.i464 = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  store i64 4, ptr %.sroa.5.0..sroa_idx.i.i.i.i464, align 8, !noalias !31869
  %i.adr = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i64 %i.acx, ptr %i.adr, align 8, !noalias !31869
  store i64 1, ptr %i.cf, align 8, !noalias !31869
  call fastcc void @_RINvNtCs2TwJzntlzha_11flatbuffers8verifier12append_traceuECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.ch, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.cg, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.cf), !noalias !31870
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !noalias !31869
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !noalias !31869
  %i.ads = load i64, ptr %i.ch, align 8, !range !99, !noalias !31869, !noundef !3 ; 2 uses
  %.not37.i.i.i.i465 = icmp eq i64 %i.ads, -9223372036854775798
  br i1 %.not37.i.i.i.i465, label %bb.hv, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %.sroa.9.0..sroa_idx.i.i.i466 = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %.sroa.9.0.copyload.i.i.i467 = load i64, ptr %.sroa.9.0..sroa_idx.i.i.i466, align 8, !noalias !31887
  %.sroa.14.0..sroa_idx.i.i.i468 = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %.sroa.14.0.copyload.i.i.i469 = load i64, ptr %.sroa.14.0..sroa_idx.i.i.i468, align 8, !noalias !31887
  %.sroa.15.0..sroa_idx.i.i.i470 = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %.sroa.15.i.i.sroa.0.0.copyload23.i = load i64, ptr %.sroa.15.0..sroa_idx.i.i.i470, align 8, !noalias !31858
  %.sroa.15.i.i.sroa.5.0..sroa.15.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  %.sroa.15.i.i.sroa.5.0.copyload24.i = load i64, ptr %.sroa.15.i.i.sroa.5.0..sroa.15.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !31858
  %.sroa.15.i.i.sroa.6.0..sroa.15.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  %i.adt = load <2 x i64>, ptr %.sroa.15.i.i.sroa.6.0..sroa.15.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !31858
  %.sroa.15.i.i.sroa.8.0..sroa.15.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 56
  %i.adu = load <2 x i64>, ptr %.sroa.15.i.i.sroa.8.0..sroa.15.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !31858
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !noalias !31869
  br label %bb.hw

bb.hv:                                            ; preds = %bb.ht
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !noalias !31869
  br label %bb.hx

bb.hw:                                            ; preds = %bb.hu, %bb.hk
  %.sroa.15.i.i.sroa.0.0.i = phi i64 [ %.sroa.15.i.i.sroa.0.0.copyload23.i, %bb.hu ], [ %.sroa.15.i.i.sroa.0.0.copyload.i, %bb.hk ]
  %.sroa.15.i.i.sroa.5.0.i = phi i64 [ %.sroa.15.i.i.sroa.5.0.copyload24.i, %bb.hu ], [ %.sroa.15.i.i.sroa.5.0.copyload.i, %bb.hk ]
  %.sroa.14.1.i.i.i449 = phi i64 [ %.sroa.14.0.copyload.i.i.i469, %bb.hu ], [ %i.acx, %bb.hk ]
  %.sroa.9.1.i.i.i450 = phi i64 [ %.sroa.9.0.copyload.i.i.i467, %bb.hu ], [ %i.acv, %bb.hk ] ; 2 uses
  %.sroa.0.1.i.i.i451 = phi i64 [ %i.ads, %bb.hu ], [ %i.act, %bb.hk ]
  %i.adv = phi <2 x i64> [ %i.adt, %bb.hu ], [ %i.acy, %bb.hk ]
  %i.adw = phi <2 x i64> [ %i.adu, %bb.hu ], [ %i.acz, %bb.hk ]
  %.sroa.8.sroa.7.0.extract.shift11.i452 = and i64 %.sroa.9.1.i.i.i450, -4294967296
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !31858
  br label %_RNvXs3u_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_9TimestampNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i

bb.hx:                                            ; preds = %bb.hv, %bb.hl
  %i.adx = load <2 x i64>, ptr %i.ck, align 16, !alias.scope !31888, !noalias !31858
  store <2 x i64> %i.adx, ptr %i.cj, align 16, !noalias !31858
  %.sroa.613.sroa.8.0..sroa_idx.i.i.i454 = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.613.sroa.8.0..sroa_idx.i.i.i454, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.619.i.i.sroa.7.0..sroa_idx19.i445, i64 16, i1 false), !noalias !31857
  call fastcc void @_RINvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_13TableVerifier11visit_fieldINtNtB8_10primitives15ForwardsUOffsetReEB1Q_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.cm, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.cj, ptr noalias noundef nonnull readonly captures(address, read_provenance) @312, i64 noundef 8, i16 noundef 6) #50
  %i.ady = load i64, ptr %i.cm, align 8, !range !99, !noalias !31858, !noundef !3 ; 2 uses
  %.not71.i.i.i = icmp eq i64 %i.ady, -9223372036854775798
  %i.adz = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %.sroa.049.0.copyload.i.i.i = load ptr, ptr %i.adz, align 8, !noalias !31858 ; 2 uses
  br i1 %.not71.i.i.i, label %bb.hz, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %.sroa.660.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %.sroa.660.0.copyload.i.i.i = load i64, ptr %.sroa.660.0..sroa_idx.i.i.i, align 8, !noalias !31858
  %.sroa.761.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %.sroa.761.0.copyload.i.i.i = load i64, ptr %.sroa.761.0..sroa_idx.i.i.i, align 8, !noalias !31858
  %.sroa.862.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %.sroa.862.0.copyload.i.i.i = load i64, ptr %.sroa.862.0..sroa_idx.i.i.i, align 8, !noalias !31858
  %.sroa.963.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.aea = load <2 x i64>, ptr %.sroa.963.0..sroa_idx.i.i.i, align 8, !noalias !31863
  %.sroa.26.40..sroa.963.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 56
  %i.aeb = load <2 x i64>, ptr %.sroa.26.40..sroa.963.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !31863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !31858
  %i.aec = ptrtoint ptr %.sroa.049.0.copyload.i.i.i to i64 ; 2 uses
  %.sroa.8.sroa.7.0.extract.shift.i455 = and i64 %i.aec, -4294967296
  br label %_RNvXs3u_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_9TimestampNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i

bb.hz:                                            ; preds = %bb.hx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !31858
  %i.aed = getelementptr inbounds nuw i8, ptr %.sroa.049.0.copyload.i.i.i, i64 24 ; 2 uses
  %i.aee = load i64, ptr %i.aed, align 8, !noalias !31862, !noundef !3
  %i.aef = add i64 %i.aee, -1
  store i64 %i.aef, ptr %i.aed, align 8, !noalias !31862
  br label %_RNvXs3u_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_9TimestampNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i

_RNvXs3u_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_9TimestampNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i: ; preds = %bb.hz, %bb.hy, %bb.hw, %bb.hi
  %.sroa.8.sroa.7.1.i434 = phi i64 [ 0, %bb.hz ], [ %.sroa.8.sroa.7.0.extract.shift.i455, %bb.hy ], [ %.sroa.8.sroa.7.0.extract.shift11.i452, %bb.hw ], [ %.sroa.8.sroa.7.0.extract.shift13.i433, %bb.hi ]
  %.sroa.8.sroa.0.1.i435 = phi i64 [ 0, %bb.hz ], [ %i.aec, %bb.hy ], [ %.sroa.9.1.i.i.i450, %bb.hw ], [ %.sroa.619.i.i.sroa.0.0.copyload.i418, %bb.hi ]
  %.sroa.19.1.i440 = phi i64 [ undef, %bb.hz ], [ %.sroa.862.0.copyload.i.i.i, %bb.hy ], [ %.sroa.15.i.i.sroa.5.0.i, %bb.hw ], [ %.sroa.619.i.i.sroa.8.0.copyload.i424, %bb.hi ]
  %.sroa.16.1.i441 = phi i64 [ undef, %bb.hz ], [ %.sroa.761.0.copyload.i.i.i, %bb.hy ], [ %.sroa.15.i.i.sroa.0.0.i, %bb.hw ], [ %.sroa.619.i.i.sroa.7.0.copyload.i422, %bb.hi ]
  %.sroa.13.1.i442 = phi i64 [ undef, %bb.hz ], [ %.sroa.660.0.copyload.i.i.i, %bb.hy ], [ %.sroa.14.1.i.i.i449, %bb.hw ], [ %.sroa.619.i.i.sroa.6.0.copyload.i420, %bb.hi ]
  %.sroa.0.1.i443 = phi i64 [ -9223372036854775798, %bb.hz ], [ %i.ady, %bb.hy ], [ %.sroa.0.1.i.i.i451, %bb.hw ], [ %i.acp, %bb.hi ]
  %i.aeg = phi <2 x i64> [ undef, %bb.hz ], [ %i.aea, %bb.hy ], [ %i.adv, %bb.hw ], [ %i.acr, %bb.hi ]
  %i.aeh = phi <2 x i64> [ undef, %bb.hz ], [ %i.aeb, %bb.hy ], [ %i.adw, %bb.hw ], [ %i.acs, %bb.hi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !noalias !31857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !noalias !31857
  %i.aei = and i64 %.sroa.8.sroa.0.1.i435, 4294967295
  %i.aej = or disjoint i64 %i.aei, %.sroa.8.sroa.7.1.i434
  br label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema9TimestampEReECs14kWLkQVSKO_14deltalake_core.exit

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema9TimestampEReECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.gx, %bb.gy, %bb.gz, %_RNvXs3u_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_9TimestampNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i
  %.sroa.8.sroa.7.2.i387 = phi i64 [ %i.aej, %_RNvXs3u_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_9TimestampNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ 0, %bb.gz ], [ 0, %bb.gy ], [ 0, %bb.gx ]
  %.sroa.19.2.i392 = phi i64 [ %.sroa.19.1.i440, %_RNvXs3u_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_9TimestampNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ undef, %bb.gz ], [ %3, %bb.gy ], [ -9223372036854775808, %bb.gx ]
  %.sroa.16.2.i393 = phi i64 [ %.sroa.16.1.i441, %_RNvXs3u_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_9TimestampNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ 0, %bb.gz ], [ 0, %bb.gy ], [ 0, %bb.gx ]
  %.sroa.13.2.i394 = phi i64 [ %.sroa.13.1.i442, %_RNvXs3u_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_9TimestampNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ 8, %bb.gz ], [ 8, %bb.gy ], [ 8, %bb.gx ]
  %.sroa.0.2.i395 = phi i64 [ %.sroa.0.1.i443, %_RNvXs3u_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_9TimestampNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ -9223372036854775800, %bb.gz ], [ -9223372036854775803, %bb.gy ], [ -9223372036854775804, %bb.gx ]
  %i.aek = phi <2 x i64> [ %i.aeg, %_RNvXs3u_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_9TimestampNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ <i64 undef, i64 3>, %bb.gz ], [ %i.abp, %bb.gy ], [ <i64 ptrtoint (ptr @12 to i64), i64 3>, %bb.gx ]
  %i.ael = phi <2 x i64> [ %i.aeh, %_RNvXs3u_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_9TimestampNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ %i.abk, %bb.gz ], [ %i.abk, %bb.gy ], [ %i.abk, %bb.gx ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co), !noalias !31889
  store i64 %.sroa.0.2.i395, ptr %i.co, align 8, !noalias !31889
  %.sroa.8.0..sroa_idx.i396 = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store i64 %.sroa.8.sroa.7.2.i387, ptr %.sroa.8.0..sroa_idx.i396, align 8, !noalias !31889
  %.sroa.13.0..sroa_idx.i397 = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store i64 %.sroa.13.2.i394, ptr %.sroa.13.0..sroa_idx.i397, align 8, !noalias !31889
  %.sroa.16.0..sroa_idx.i398 = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  store i64 %.sroa.16.2.i393, ptr %.sroa.16.0..sroa_idx.i398, align 8, !noalias !31889
  %.sroa.19.0..sroa_idx.i399 = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  store i64 %.sroa.19.2.i392, ptr %.sroa.19.0..sroa_idx.i399, align 8, !noalias !31889
  %.sroa.21.0..sroa_idx.i400 = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  store <2 x i64> %i.aek, ptr %.sroa.21.0..sroa_idx.i400, align 8, !noalias !31889
  %.sroa.26.0..sroa_idx.i402 = getelementptr inbounds nuw i8, ptr %i.co, i64 56
  store <2 x i64> %i.ael, ptr %.sroa.26.0..sroa_idx.i402, align 8, !noalias !31889
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn), !noalias !31889
  %i.aem = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store i64 -9223372036854775808, ptr %i.aem, align 8, !noalias !31889
  %.sroa.4.0..sroa_idx.i404 = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  store ptr @69, ptr %.sroa.4.0..sroa_idx.i404, align 8, !noalias !31889
  %.sroa.5.0..sroa_idx.i405 = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  store i64 15, ptr %.sroa.5.0..sroa_idx.i405, align 8, !noalias !31889
  %i.aen = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i64 %3, ptr %i.aen, align 8, !noalias !31889
  store i64 2, ptr %i.cn, align 8, !noalias !31889
  call fastcc void @_RINvNtCs2TwJzntlzha_11flatbuffers8verifier12append_traceuECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.co, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.cn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !31889
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !noalias !31889
  br label %bb.tx

bb.ia:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31890)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31893)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31896)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31899)
  %i.aeo = and i64 %3, 3
  %i.aep = icmp eq i64 %i.aeo, 0
  %i.aeq = insertelement <2 x i64> <i64 3, i64 poison>, i64 %3, i64 1 ; 3 uses
  br i1 %i.aep, label %bb.ib, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema8IntervalEReECs14kWLkQVSKO_14deltalake_core.exit

bb.ib:                                            ; preds = %bb.ia
  %i.aer = tail call i64 @llvm.uadd.sat.i64(i64 %3, i64 4) ; 2 uses
  %i.aes = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aet = load i64, ptr %i.aes, align 8, !alias.scope !31902, !noalias !31903, !noundef !3 ; 9 uses
  %i.aeu = icmp ugt i64 %i.aer, %i.aet
  br i1 %i.aeu, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema8IntervalEReECs14kWLkQVSKO_14deltalake_core.exit, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.aev = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.aew = load i64, ptr %i.aev, align 8, !alias.scope !31902, !noalias !31903, !noundef !3
  %i.aex = add i64 %i.aew, 4                      ; 2 uses
  store i64 %i.aex, ptr %i.aev, align 8, !alias.scope !31902, !noalias !31903
  %i.aey = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aez = load ptr, ptr %i.aey, align 8, !alias.scope !31902, !noalias !31903, !nonnull !3, !align !100, !noundef !3
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aez, i64 16
  %i.afb = load i64, ptr %i.afa, align 8, !noalias !31908, !noundef !3
  %i.afc = icmp ugt i64 %i.aex, %i.afb
  br i1 %i.afc, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema8IntervalEReECs14kWLkQVSKO_14deltalake_core.exit, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i495

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i495: ; preds = %bb.ic
  %i.afd = icmp ult i64 %3, %i.aet
  br i1 %i.afd, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i495
  %i.afe = load ptr, ptr %2, align 8, !alias.scope !31909, !noalias !31910, !nonnull !3, !noundef !3 ; 4 uses
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afe, i64 %3
  %i.afg = load i8, ptr %i.aff, align 1, !noalias !31911, !noundef !3
  %i.afh = or disjoint i64 %3, 1                  ; 3 uses
  %i.afi = icmp ult i64 %i.afh, %i.aet
  br i1 %i.afi, label %bb.if, label %bb.ig

bb.ie:                                            ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i495
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %3, i64 noundef %i.aet, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #51, !noalias !31911
  unreachable

bb.if:                                            ; preds = %bb.id
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afe, i64 %i.afh
  %i.afk = load i8, ptr %i.afj, align 1, !noalias !31911, !noundef !3
  %i.afl = or disjoint i64 %3, 2                  ; 3 uses
  %i.afm = icmp ult i64 %i.afl, %i.aet
  br i1 %i.afm, label %bb.ih, label %bb.ii

bb.ig:                                            ; preds = %bb.id
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.afh, i64 noundef %i.aet, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #51, !noalias !31911
  unreachable

bb.ih:                                            ; preds = %bb.if
  %i.afn = or disjoint i64 %3, 3                  ; 3 uses
  %i.afo = icmp ult i64 %i.afn, %i.aet
  br i1 %i.afo, label %bb.ik, label %bb.ij

bb.ii:                                            ; preds = %bb.if
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.afl, i64 noundef %i.aet, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #51, !noalias !31911
  unreachable

bb.ij:                                            ; preds = %bb.ih
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.afn, i64 noundef %i.aet, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #51, !noalias !31911
  unreachable

bb.ik:                                            ; preds = %bb.ih
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afe, i64 %i.afl
  %i.afq = load i8, ptr %i.afp, align 1, !noalias !31911, !noundef !3
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afe, i64 %i.afn
  %i.afs = load i8, ptr %i.afr, align 1, !noalias !31911, !noundef !3
  %.sroa.6.0.insert.ext.i.i.i496 = zext i8 %i.afs to i64
  %.sroa.6.0.insert.shift.i.i.i497 = shl nuw nsw i64 %.sroa.6.0.insert.ext.i.i.i496, 24
  %.sroa.5.0.insert.ext.i.i.i498 = zext i8 %i.afq to i64
  %.sroa.5.0.insert.shift.i.i.i499 = shl nuw nsw i64 %.sroa.5.0.insert.ext.i.i.i498, 16
  %.sroa.4.0.insert.ext.i.i.i500 = zext i8 %i.afk to i64
  %.sroa.4.0.insert.shift.i.i.i501 = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i.i500, 8
  %.sroa.0.0.insert.ext.i.i.i502 = zext i8 %i.afg to i64
  %.sroa.5.0.insert.insert.i.i.i503 = or disjoint i64 %.sroa.4.0.insert.shift.i.i.i501, %.sroa.0.0.insert.ext.i.i.i502
  %.sroa.4.0.insert.insert.i.i.i504 = or disjoint i64 %.sroa.5.0.insert.insert.i.i.i503, %.sroa.5.0.insert.shift.i.i.i499
  %.sroa.0.0.insert.insert.i.i.i505 = or disjoint i64 %.sroa.4.0.insert.insert.i.i.i504, %.sroa.6.0.insert.shift.i.i.i497
  %i.aft = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.0.insert.insert.i.i.i505, i64 %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !31912
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc), !noalias !31913
  call fastcc void @_RNvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB5_8Verifier11visit_table(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.cc, ptr noalias noundef nonnull align 8 dereferenceable(48) %2, i64 noundef %i.aft) #50, !noalias !31917
  %i.afu = load i64, ptr %i.cc, align 8, !range !99, !noalias !31913, !noundef !3 ; 2 uses
  %.not.i.i.i506 = icmp eq i64 %i.afu, -9223372036854775798
  %i.afv = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.sroa.613.i.i.sroa.0.0.copyload.i507 = load ptr, ptr %i.afv, align 8, !noalias !31913 ; 2 uses
  %.sroa.613.i.i.sroa.6.0..sroa_idx.i508 = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %.sroa.613.i.i.sroa.6.0.copyload.i509 = load i64, ptr %.sroa.613.i.i.sroa.6.0..sroa_idx.i508, align 8, !noalias !31913 ; 2 uses
  %.sroa.613.i.i.sroa.7.0..sroa_idx.i510 = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %.sroa.613.i.i.sroa.7.0.copyload.i511 = load i64, ptr %.sroa.613.i.i.sroa.7.0..sroa_idx.i510, align 8, !noalias !31913 ; 2 uses
  %.sroa.613.i.i.sroa.8.0..sroa_idx.i512 = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %.sroa.613.i.i.sroa.8.0.copyload.i513 = load i64, ptr %.sroa.613.i.i.sroa.8.0..sroa_idx.i512, align 8, !noalias !31913 ; 2 uses
  br i1 %.not.i.i.i506, label %bb.im, label %bb.il

bb.il:                                            ; preds = %bb.ik
  %.sroa.627.0..sroa_idx.i.i.i514 = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  %.sroa.17.40.copyload.i515 = load i64, ptr %.sroa.627.0..sroa_idx.i.i.i514, align 8, !noalias !31918
  %.sroa.20.40..sroa.627.0..sroa_idx.i.i.sroa_idx.i516 = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  %i.afw = load <2 x i64>, ptr %.sroa.20.40..sroa.627.0..sroa_idx.i.i.sroa_idx.i516, align 8, !noalias !31918
  %.sroa.22.40..sroa.627.0..sroa_idx.i.i.sroa_idx.i520 = getelementptr inbounds nuw i8, ptr %i.cc, i64 64
  %.sroa.22.40.copyload.i521 = load i64, ptr %.sroa.22.40..sroa.627.0..sroa_idx.i.i.sroa_idx.i520, align 8, !noalias !31918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !31913
  br label %_RNvXs3A_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_8IntervalNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i

bb.im:                                            ; preds = %bb.ik
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !31913
  store ptr %.sroa.613.i.i.sroa.0.0.copyload.i507, ptr %i.cb, align 8, !noalias !31913
  %.sroa.613.i.i.sroa.6.0..sroa_idx7.i531 = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i64 %.sroa.613.i.i.sroa.6.0.copyload.i509, ptr %.sroa.613.i.i.sroa.6.0..sroa_idx7.i531, align 8, !noalias !31913
  %.sroa.613.i.i.sroa.7.0..sroa_idx9.i532 = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store i64 %.sroa.613.i.i.sroa.7.0.copyload.i511, ptr %.sroa.613.i.i.sroa.7.0..sroa_idx9.i532, align 8, !noalias !31913
  %.sroa.613.i.i.sroa.8.0..sroa_idx11.i533 = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  store i64 %.sroa.613.i.i.sroa.8.0.copyload.i513, ptr %.sroa.613.i.i.sroa.8.0..sroa_idx11.i533, align 8, !noalias !31913
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31919)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31922)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !noalias !31924
  call void @_RNvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB5_13TableVerifier5deref(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.ca, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.cb, i16 noundef 4), !noalias !31925
  %i.afx = load i64, ptr %i.ca, align 8, !range !99, !noalias !31924, !noundef !3 ; 2 uses
  %.not.i.i.i.i534 = icmp eq i64 %i.afx, -9223372036854775798
  %i.afy = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.afz = load i64, ptr %i.afy, align 8, !noalias !31924 ; 2 uses
  %i.aga = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.agb = load i64, ptr %i.aga, align 8, !noalias !31924 ; 6 uses
  br i1 %.not.i.i.i.i534, label %bb.io, label %bb.in

bb.in:                                            ; preds = %bb.im
  %.sroa.718.0..sroa_idx.i.i.i.i535 = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %.sroa.16.24.copyload.i.i.i536 = load i64, ptr %.sroa.718.0..sroa_idx.i.i.i.i535, align 8, !noalias !31926
  %.sroa.18.24..sroa.718.0..sroa_idx.i.sroa_idx.i.i.i537 = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %.sroa.18.24.copyload.i.i.i538 = load i64, ptr %.sroa.18.24..sroa.718.0..sroa_idx.i.sroa_idx.i.i.i537, align 8, !noalias !31926
  %.sroa.19.24..sroa.718.0..sroa_idx.i.sroa_idx.i.i.i539 = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  %.sroa.19.i.i.sroa.0.0.copyload.i540 = load i64, ptr %.sroa.19.24..sroa.718.0..sroa_idx.i.sroa_idx.i.i.i539, align 8, !noalias !31913
  %.sroa.19.i.i.sroa.5.0..sroa.19.24..sroa.718.0..sroa_idx.i.sroa_idx.i.i.sroa_idx.i541 = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  %i.agc = load <2 x i64>, ptr %.sroa.19.i.i.sroa.5.0..sroa.19.24..sroa.718.0..sroa_idx.i.sroa_idx.i.i.sroa_idx.i541, align 8, !noalias !31913
  %.sroa.19.i.i.sroa.7.0..sroa.19.24..sroa.718.0..sroa_idx.i.sroa_idx.i.i.sroa_idx.i545 = getelementptr inbounds nuw i8, ptr %i.ca, i64 64
  %.sroa.19.i.i.sroa.7.0.copyload.i546 = load i64, ptr %.sroa.19.i.i.sroa.7.0..sroa.19.24..sroa.718.0..sroa_idx.i.sroa_idx.i.i.sroa_idx.i545, align 8, !noalias !31913
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !31924
  br label %bb.iz

bb.io:                                            ; preds = %bb.im
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !31924
  %i.agd = trunc nuw i64 %i.afz to i1
  br i1 %i.agd, label %bb.ip, label %bb.ja

bb.ip:                                            ; preds = %bb.io
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !noalias !31924
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !31924
  %i.age = load ptr, ptr %i.cb, align 8, !alias.scope !31922, !noalias !31927, !nonnull !3, !align !100, !noundef !3 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !31928)
  call void @llvm.experimental.noalias.scope.decl(metadata !31931)
  call void @llvm.experimental.noalias.scope.decl(metadata !31933)
  call void @llvm.experimental.noalias.scope.decl(metadata !31936)
  %i.agf = and i64 %i.agb, 1
  %i.agg = icmp eq i64 %i.agf, 0
  br i1 %i.agg, label %bb.iq, label %bb.ir

bb.iq:                                            ; preds = %bb.ip
  %i.agh = call i64 @llvm.uadd.sat.i64(i64 %i.agb, i64 2) ; 2 uses
  %i.agi = getelementptr inbounds nuw i8, ptr %i.age, i64 8
  %i.agj = load i64, ptr %i.agi, align 8, !alias.scope !31938, !noalias !31939, !noundef !3
  %i.agk = icmp ugt i64 %i.agh, %i.agj
  br i1 %i.agk, label %bb.it, label %bb.is

bb.ir:                                            ; preds = %bb.ip
  store i64 -9223372036854775804, ptr %i.by, align 8, !alias.scope !31940, !noalias !31941
  %.sroa.242.0..sroa_idx.i.i.i.i.i.i557 = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i64 0, ptr %.sroa.242.0..sroa_idx.i.i.i.i.i.i557, align 8, !alias.scope !31940, !noalias !31941
  %.sroa.343.0..sroa_idx.i.i.i.i.i.i558 = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.343.0..sroa_idx.i.i.i.i.i.i558, align 8, !alias.scope !31940, !noalias !31941
  %.sroa.444.0..sroa_idx.i.i.i.i.i.i559 = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  store i64 0, ptr %.sroa.444.0..sroa_idx.i.i.i.i.i.i559, align 8, !alias.scope !31940, !noalias !31941
  %.sroa.545.0..sroa_idx.i.i.i.i.i.i560 = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  store i64 -9223372036854775808, ptr %.sroa.545.0..sroa_idx.i.i.i.i.i.i560, align 8, !alias.scope !31940, !noalias !31941
  %.sroa.646.0..sroa_idx.i.i.i.i.i.i561 = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  store ptr @13, ptr %.sroa.646.0..sroa_idx.i.i.i.i.i.i561, align 8, !alias.scope !31940, !noalias !31941
  %.sroa.747.0..sroa_idx.i.i.i.i.i.i562 = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  store i64 3, ptr %.sroa.747.0..sroa_idx.i.i.i.i.i.i562, align 8, !alias.scope !31940, !noalias !31941
  %.sroa.848.0..sroa_idx.i.i.i.i.i.i563 = getelementptr inbounds nuw i8, ptr %i.by, i64 56
  store i64 %i.agb, ptr %.sroa.848.0..sroa_idx.i.i.i.i.i.i563, align 8, !alias.scope !31940, !noalias !31941
  br label %bb.iw

bb.is:                                            ; preds = %bb.iq
  %i.agl = getelementptr inbounds nuw i8, ptr %i.age, i64 40 ; 2 uses
  %i.agm = load i64, ptr %i.agl, align 8, !alias.scope !31938, !noalias !31939, !noundef !3
  %i.agn = add i64 %i.agm, 2                      ; 2 uses
  store i64 %i.agn, ptr %i.agl, align 8, !alias.scope !31938, !noalias !31939
  %i.ago = getelementptr inbounds nuw i8, ptr %i.age, i64 16
  %i.agp = load ptr, ptr %i.ago, align 8, !alias.scope !31938, !noalias !31939, !nonnull !3, !align !100, !noundef !3
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agp, i64 16
  %i.agr = load i64, ptr %i.agq, align 8, !noalias !31942, !noundef !3
  %i.ags = icmp ugt i64 %i.agn, %i.agr
  br i1 %i.ags, label %bb.iv, label %bb.iu

bb.it:                                            ; preds = %bb.iq
  store i64 -9223372036854775803, ptr %i.by, align 8, !alias.scope !31940, !noalias !31941
  %.sroa.453.0..sroa_idx.i.i.i.i.i.i583 = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i64 0, ptr %.sroa.453.0..sroa_idx.i.i.i.i.i.i583, align 8, !alias.scope !31940, !noalias !31941
  %.sroa.453.sroa.4.0..sroa.453.0..sroa_idx.sroa_idx.i.i.i.i.i.i584 = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.453.sroa.4.0..sroa.453.0..sroa_idx.sroa_idx.i.i.i.i.i.i584, align 8, !alias.scope !31940, !noalias !31941
  %.sroa.453.sroa.5.0..sroa.453.0..sroa_idx.sroa_idx.i.i.i.i.i.i585 = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  store i64 0, ptr %.sroa.453.sroa.5.0..sroa.453.0..sroa_idx.sroa_idx.i.i.i.i.i.i585, align 8, !alias.scope !31940, !noalias !31941
  %.sroa.554.0..sroa_idx.i.i.i.i.i.i586 = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  store i64 %i.agb, ptr %.sroa.554.0..sroa_idx.i.i.i.i.i.i586, align 8, !alias.scope !31940, !noalias !31941
  %.sroa.655.0..sroa_idx.i.i.i.i.i.i587 = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  store i64 %i.agh, ptr %.sroa.655.0..sroa_idx.i.i.i.i.i.i587, align 8, !alias.scope !31940, !noalias !31941
  br label %bb.iw

bb.iu:                                            ; preds = %bb.is
  store i64 -9223372036854775798, ptr %i.by, align 8, !alias.scope !31940, !noalias !31941
  br label %bb.iw

bb.iv:                                            ; preds = %bb.is
  store i64 -9223372036854775800, ptr %i.by, align 8, !alias.scope !31940, !noalias !31941
  br label %bb.iw

bb.iw:                                            ; preds = %bb.iv, %bb.iu, %bb.it, %bb.ir
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !noalias !31924
  %i.agt = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store i64 -9223372036854775808, ptr %i.agt, align 8, !noalias !31924
  %.sroa.41.0..sroa_idx.i.i.i.i564 = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store ptr @259, ptr %.sroa.41.0..sroa_idx.i.i.i.i564, align 8, !noalias !31924
  %.sroa.5.0..sroa_idx.i.i.i.i565 = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  store i64 4, ptr %.sroa.5.0..sroa_idx.i.i.i.i565, align 8, !noalias !31924
  %i.agu = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i64 %i.agb, ptr %i.agu, align 8, !noalias !31924
  store i64 1, ptr %i.bx, align 8, !noalias !31924
  call fastcc void @_RINvNtCs2TwJzntlzha_11flatbuffers8verifier12append_traceuECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.bz, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.by, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.bx), !noalias !31925
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !31924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !31924
  %i.agv = load i64, ptr %i.bz, align 8, !range !99, !noalias !31924, !noundef !3 ; 2 uses
  %.not37.i.i.i.i566 = icmp eq i64 %i.agv, -9223372036854775798
  br i1 %.not37.i.i.i.i566, label %bb.iy, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %.sroa.9.0..sroa_idx.i.i.i567 = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %.sroa.9.0.copyload.i.i.i568 = load i64, ptr %.sroa.9.0..sroa_idx.i.i.i567, align 8, !noalias !31926
  %.sroa.14.0..sroa_idx.i.i.i569 = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %.sroa.14.0.copyload.i.i.i570 = load i64, ptr %.sroa.14.0..sroa_idx.i.i.i569, align 8, !noalias !31926
  %.sroa.16.0..sroa_idx.i.i.i571 = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %.sroa.16.0.copyload.i.i.i572 = load i64, ptr %.sroa.16.0..sroa_idx.i.i.i571, align 8, !noalias !31926
  %.sroa.18.0..sroa_idx.i.i.i573 = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %.sroa.18.0.copyload.i.i.i574 = load i64, ptr %.sroa.18.0..sroa_idx.i.i.i573, align 8, !noalias !31926
  %.sroa.19.0..sroa_idx.i.i.i575 = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  %.sroa.19.i.i.sroa.0.0.copyload13.i576 = load i64, ptr %.sroa.19.0..sroa_idx.i.i.i575, align 8, !noalias !31913
  %.sroa.19.i.i.sroa.5.0..sroa.19.0..sroa_idx.i.i.sroa_idx.i577 = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %i.agw = load <2 x i64>, ptr %.sroa.19.i.i.sroa.5.0..sroa.19.0..sroa_idx.i.i.sroa_idx.i577, align 8, !noalias !31913
  %.sroa.19.i.i.sroa.7.0..sroa.19.0..sroa_idx.i.i.sroa_idx.i581 = getelementptr inbounds nuw i8, ptr %i.bz, i64 64
  %.sroa.19.i.i.sroa.7.0.copyload16.i582 = load i64, ptr %.sroa.19.i.i.sroa.7.0..sroa.19.0..sroa_idx.i.i.sroa_idx.i581, align 8, !noalias !31913
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !31924
  br label %bb.iz

bb.iy:                                            ; preds = %bb.iw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !31924
  br label %bb.ja

bb.iz:                                            ; preds = %bb.ix, %bb.in
  %.sroa.19.i.i.sroa.0.0.i547 = phi i64 [ %.sroa.19.i.i.sroa.0.0.copyload13.i576, %bb.ix ], [ %.sroa.19.i.i.sroa.0.0.copyload.i540, %bb.in ]
  %.sroa.19.i.i.sroa.7.0.i550 = phi i64 [ %.sroa.19.i.i.sroa.7.0.copyload16.i582, %bb.ix ], [ %.sroa.19.i.i.sroa.7.0.copyload.i546, %bb.in ]
  %.sroa.18.1.i.i.i551 = phi i64 [ %.sroa.18.0.copyload.i.i.i574, %bb.ix ], [ %.sroa.18.24.copyload.i.i.i538, %bb.in ]
  %.sroa.16.1.i.i.i552 = phi i64 [ %.sroa.16.0.copyload.i.i.i572, %bb.ix ], [ %.sroa.16.24.copyload.i.i.i536, %bb.in ]
  %.sroa.14.1.i.i.i553 = phi i64 [ %.sroa.14.0.copyload.i.i.i570, %bb.ix ], [ %i.agb, %bb.in ]
  %.sroa.9.1.i.i.i554 = phi i64 [ %.sroa.9.0.copyload.i.i.i568, %bb.ix ], [ %i.afz, %bb.in ]
  %.sroa.0.1.i.i.i555 = phi i64 [ %i.agv, %bb.ix ], [ %i.afx, %bb.in ]
  %i.agx = phi <2 x i64> [ %i.agw, %bb.ix ], [ %i.agc, %bb.in ]
  %i.agy = inttoptr i64 %.sroa.9.1.i.i.i554 to ptr
  br label %_RNvXs3A_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_8IntervalNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i

bb.ja:                                            ; preds = %bb.iy, %bb.io
  %.sroa.9.1.ph.i.i.i556 = load i64, ptr %i.cb, align 8, !alias.scope !31943, !noalias !31913
  %i.agz = inttoptr i64 %.sroa.9.1.ph.i.i.i556 to ptr
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agz, i64 24 ; 2 uses
  %i.ahb = load i64, ptr %i.aha, align 8, !noalias !31917, !noundef !3
  %i.ahc = add i64 %i.ahb, -1
  store i64 %i.ahc, ptr %i.aha, align 8, !noalias !31917
  br label %_RNvXs3A_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_8IntervalNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i

_RNvXs3A_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_8IntervalNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i: ; preds = %bb.ja, %bb.iz, %bb.il
  %.sroa.7.1.i522 = phi ptr [ undef, %bb.ja ], [ %i.agy, %bb.iz ], [ %.sroa.613.i.i.sroa.0.0.copyload.i507, %bb.il ]
  %.sroa.22.1.i523 = phi i64 [ undef, %bb.ja ], [ %.sroa.19.i.i.sroa.7.0.i550, %bb.iz ], [ %.sroa.22.40.copyload.i521, %bb.il ]
  %.sroa.17.1.i526 = phi i64 [ undef, %bb.ja ], [ %.sroa.19.i.i.sroa.0.0.i547, %bb.iz ], [ %.sroa.17.40.copyload.i515, %bb.il ]
  %.sroa.15.1.i527 = phi i64 [ undef, %bb.ja ], [ %.sroa.18.1.i.i.i551, %bb.iz ], [ %.sroa.613.i.i.sroa.8.0.copyload.i513, %bb.il ]
  %.sroa.13.1.i528 = phi i64 [ undef, %bb.ja ], [ %.sroa.16.1.i.i.i552, %bb.iz ], [ %.sroa.613.i.i.sroa.7.0.copyload.i511, %bb.il ]
  %.sroa.11.1.i529 = phi i64 [ undef, %bb.ja ], [ %.sroa.14.1.i.i.i553, %bb.iz ], [ %.sroa.613.i.i.sroa.6.0.copyload.i509, %bb.il ]
  %.sroa.0.1.i530 = phi i64 [ -9223372036854775798, %bb.ja ], [ %.sroa.0.1.i.i.i555, %bb.iz ], [ %i.afu, %bb.il ]
  %i.ahd = phi <2 x i64> [ undef, %bb.ja ], [ %i.agx, %bb.iz ], [ %i.afw, %bb.il ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !31912
  br label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema8IntervalEReECs14kWLkQVSKO_14deltalake_core.exit

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema8IntervalEReECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ia, %bb.ib, %bb.ic, %_RNvXs3A_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_8IntervalNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i
  %.sroa.7.2.i476 = phi ptr [ %.sroa.7.1.i522, %_RNvXs3A_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_8IntervalNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ null, %bb.ic ], [ null, %bb.ib ], [ null, %bb.ia ]
  %.sroa.22.2.i477 = phi i64 [ %.sroa.22.1.i523, %_RNvXs3A_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_8IntervalNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ undef, %bb.ic ], [ undef, %bb.ib ], [ undef, %bb.ia ]
  %.sroa.17.2.i480 = phi i64 [ %.sroa.17.1.i526, %_RNvXs3A_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_8IntervalNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ undef, %bb.ic ], [ %i.aer, %bb.ib ], [ ptrtoint (ptr @12 to i64), %bb.ia ]
  %.sroa.15.2.i481 = phi i64 [ %.sroa.15.1.i527, %_RNvXs3A_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_8IntervalNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ undef, %bb.ic ], [ %3, %bb.ib ], [ -9223372036854775808, %bb.ia ]
  %.sroa.13.2.i482 = phi i64 [ %.sroa.13.1.i528, %_RNvXs3A_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_8IntervalNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ 0, %bb.ic ], [ 0, %bb.ib ], [ 0, %bb.ia ]
  %.sroa.11.2.i483 = phi i64 [ %.sroa.11.1.i529, %_RNvXs3A_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_8IntervalNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ 8, %bb.ic ], [ 8, %bb.ib ], [ 8, %bb.ia ]
  %.sroa.0.2.i484 = phi i64 [ %.sroa.0.1.i530, %_RNvXs3A_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_8IntervalNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ -9223372036854775800, %bb.ic ], [ -9223372036854775803, %bb.ib ], [ -9223372036854775804, %bb.ia ]
  %i.ahe = phi <2 x i64> [ %i.ahd, %_RNvXs3A_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_8IntervalNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ %i.aeq, %bb.ic ], [ %i.aeq, %bb.ib ], [ %i.aeq, %bb.ia ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !31944
  store i64 %.sroa.0.2.i484, ptr %i.ce, align 8, !noalias !31944
  %.sroa.7.0..sroa_idx.i485 = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store ptr %.sroa.7.2.i476, ptr %.sroa.7.0..sroa_idx.i485, align 8, !noalias !31944
  %.sroa.11.0..sroa_idx.i486 = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store i64 %.sroa.11.2.i483, ptr %.sroa.11.0..sroa_idx.i486, align 8, !noalias !31944
  %.sroa.13.0..sroa_idx.i487 = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  store i64 %.sroa.13.2.i482, ptr %.sroa.13.0..sroa_idx.i487, align 8, !noalias !31944
  %.sroa.15.0..sroa_idx.i488 = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  store i64 %.sroa.15.2.i481, ptr %.sroa.15.0..sroa_idx.i488, align 8, !noalias !31944
  %.sroa.17.0..sroa_idx.i489 = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  store i64 %.sroa.17.2.i480, ptr %.sroa.17.0..sroa_idx.i489, align 8, !noalias !31944
  %.sroa.20.0..sroa_idx.i490 = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  store <2 x i64> %i.ahe, ptr %.sroa.20.0..sroa_idx.i490, align 8, !noalias !31944
  %.sroa.22.0..sroa_idx.i492 = getelementptr inbounds nuw i8, ptr %i.ce, i64 64
  store i64 %.sroa.22.2.i477, ptr %.sroa.22.0..sroa_idx.i492, align 8, !noalias !31944
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !31944
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store i64 -9223372036854775808, ptr %i.ahf, align 8, !noalias !31944
  %.sroa.4.0..sroa_idx.i493 = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  store ptr @70, ptr %.sroa.4.0..sroa_idx.i493, align 8, !noalias !31944
  %.sroa.5.0..sroa_idx.i494 = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  store i64 14, ptr %.sroa.5.0..sroa_idx.i494, align 8, !noalias !31944
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i64 %3, ptr %i.ahg, align 8, !noalias !31944
  store i64 2, ptr %i.cd, align 8, !noalias !31944
  call fastcc void @_RINvNtCs2TwJzntlzha_11flatbuffers8verifier12append_traceuECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.ce, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.cd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !noalias !31944
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !31944
  br label %bb.tx

bb.jb:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31945)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31948)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31951)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31954)
  %i.ahh = and i64 %3, 3
  %i.ahi = icmp eq i64 %i.ahh, 0
  %i.ahj = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %3, i64 0 ; 3 uses
  br i1 %i.ahi, label %bb.jc, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema4ListEReECs14kWLkQVSKO_14deltalake_core.exit

bb.jc:                                            ; preds = %bb.jb
  %i.ahk = tail call i64 @llvm.uadd.sat.i64(i64 %3, i64 4) ; 2 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ahm = load i64, ptr %i.ahl, align 8, !alias.scope !31957, !noalias !31958, !noundef !3 ; 9 uses
  %i.ahn = icmp ugt i64 %i.ahk, %i.ahm
  br i1 %i.ahn, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema4ListEReECs14kWLkQVSKO_14deltalake_core.exit, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.aho = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ahp = load i64, ptr %i.aho, align 8, !alias.scope !31957, !noalias !31958, !noundef !3
  %i.ahq = add i64 %i.ahp, 4                      ; 2 uses
  store i64 %i.ahq, ptr %i.aho, align 8, !alias.scope !31957, !noalias !31958
  %i.ahr = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ahs = load ptr, ptr %i.ahr, align 8, !alias.scope !31957, !noalias !31958, !nonnull !3, !align !100, !noundef !3
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahs, i64 16
  %i.ahu = load i64, ptr %i.aht, align 8, !noalias !31963, !noundef !3
  %i.ahv = icmp ugt i64 %i.ahq, %i.ahu
  br i1 %i.ahv, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema4ListEReECs14kWLkQVSKO_14deltalake_core.exit, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i607

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i607: ; preds = %bb.jd
  %i.ahw = icmp ult i64 %3, %i.ahm
  br i1 %i.ahw, label %bb.je, label %bb.jf

bb.je:                                            ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i607
  %i.ahx = load ptr, ptr %2, align 8, !alias.scope !31964, !noalias !31965, !nonnull !3, !noundef !3 ; 4 uses
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahx, i64 %3
  %i.ahz = load i8, ptr %i.ahy, align 1, !noalias !31966, !noundef !3
  %i.aia = or disjoint i64 %3, 1                  ; 3 uses
  %i.aib = icmp ult i64 %i.aia, %i.ahm
  br i1 %i.aib, label %bb.jg, label %bb.jh

bb.jf:                                            ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i607
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %3, i64 noundef %i.ahm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #51, !noalias !31966
  unreachable

bb.jg:                                            ; preds = %bb.je
  %i.aic = getelementptr inbounds nuw i8, ptr %i.ahx, i64 %i.aia
  %i.aid = load i8, ptr %i.aic, align 1, !noalias !31966, !noundef !3
  %i.aie = or disjoint i64 %3, 2                  ; 3 uses
  %i.aif = icmp ult i64 %i.aie, %i.ahm
  br i1 %i.aif, label %bb.ji, label %bb.jj

bb.jh:                                            ; preds = %bb.je
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.aia, i64 noundef %i.ahm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #51, !noalias !31966
  unreachable

bb.ji:                                            ; preds = %bb.jg
  %i.aig = or disjoint i64 %3, 3                  ; 3 uses
  %i.aih = icmp ult i64 %i.aig, %i.ahm
  br i1 %i.aih, label %bb.jl, label %bb.jk

bb.jj:                                            ; preds = %bb.jg
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.aie, i64 noundef %i.ahm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #51, !noalias !31966
  unreachable

bb.jk:                                            ; preds = %bb.ji
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.aig, i64 noundef %i.ahm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #51, !noalias !31966
  unreachable

bb.jl:                                            ; preds = %bb.ji
  %i.aii = getelementptr inbounds nuw i8, ptr %i.ahx, i64 %i.aie
  %i.aij = load i8, ptr %i.aii, align 1, !noalias !31966, !noundef !3
  %i.aik = getelementptr inbounds nuw i8, ptr %i.ahx, i64 %i.aig
  %i.ail = load i8, ptr %i.aik, align 1, !noalias !31966, !noundef !3
  %.sroa.6.0.insert.ext.i.i.i608 = zext i8 %i.ail to i64
  %.sroa.6.0.insert.shift.i.i.i609 = shl nuw nsw i64 %.sroa.6.0.insert.ext.i.i.i608, 24
  %.sroa.5.0.insert.ext.i.i.i610 = zext i8 %i.aij to i64
  %.sroa.5.0.insert.shift.i.i.i611 = shl nuw nsw i64 %.sroa.5.0.insert.ext.i.i.i610, 16
  %.sroa.4.0.insert.ext.i.i.i612 = zext i8 %i.aid to i64
  %.sroa.4.0.insert.shift.i.i.i613 = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i.i612, 8
  %.sroa.0.0.insert.ext.i.i.i614 = zext i8 %i.ahz to i64
  %.sroa.5.0.insert.insert.i.i.i615 = or disjoint i64 %.sroa.4.0.insert.shift.i.i.i613, %.sroa.0.0.insert.ext.i.i.i614
  %.sroa.4.0.insert.insert.i.i.i616 = or disjoint i64 %.sroa.5.0.insert.insert.i.i.i615, %.sroa.5.0.insert.shift.i.i.i611
  %.sroa.0.0.insert.insert.i.i.i617 = or disjoint i64 %.sroa.4.0.insert.insert.i.i.i616, %.sroa.6.0.insert.shift.i.i.i609
  %i.aim = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.0.insert.insert.i.i.i617, i64 %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !31967
  call fastcc void @_RNvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB5_8Verifier11visit_table(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.bu, ptr noalias noundef nonnull align 8 dereferenceable(48) %2, i64 noundef %i.aim) #50, !noalias !31971
  %i.ain = load i64, ptr %i.bu, align 8, !range !99, !noalias !31967, !noundef !3 ; 2 uses
  %.not.i.i.i618 = icmp eq i64 %i.ain, -9223372036854775798
  %i.aio = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %.sroa.013.0.copyload.i.i.i619 = load ptr, ptr %i.aio, align 8, !noalias !31967 ; 2 uses
  br i1 %.not.i.i.i618, label %bb.jn, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %.sroa.624.0..sroa_idx.i.i.i620 = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %12 = load <2 x i64>, ptr %.sroa.624.0..sroa_idx.i.i.i620, align 8, !noalias !31967
  %.sroa.826.0..sroa_idx.i.i.i624 = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %.sroa.826.0.copyload.i.i.i625 = load i64, ptr %.sroa.826.0..sroa_idx.i.i.i624, align 8, !noalias !31967
  %.sroa.927.0..sroa_idx.i.i.i626 = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  %.sroa.14.40.copyload.i627 = load i64, ptr %.sroa.927.0..sroa_idx.i.i.i626, align 8, !noalias !31972
  %.sroa.16.40..sroa.927.0..sroa_idx.i.i.sroa_idx.i628 = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %.sroa.16.40.copyload.i629 = load i64, ptr %.sroa.16.40..sroa.927.0..sroa_idx.i.i.sroa_idx.i628, align 8, !noalias !31972
  %.sroa.17.40..sroa.927.0..sroa_idx.i.i.sroa_idx.i630 = getelementptr inbounds nuw i8, ptr %i.bu, i64 56
  %i.aip = load <2 x i64>, ptr %.sroa.17.40..sroa.927.0..sroa_idx.i.i.sroa_idx.i630, align 8, !noalias !31972
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !31967
  br label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema4ListEReECs14kWLkQVSKO_14deltalake_core.exit

bb.jn:                                            ; preds = %bb.jl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !31967
  %i.aiq = getelementptr inbounds nuw i8, ptr %.sroa.013.0.copyload.i.i.i619, i64 24 ; 2 uses
  %i.air = load i64, ptr %i.aiq, align 8, !noalias !31971, !noundef !3
  %i.ais = add i64 %i.air, -1
  store i64 %i.ais, ptr %i.aiq, align 8, !noalias !31971
  br label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema4ListEReECs14kWLkQVSKO_14deltalake_core.exit

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema4ListEReECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.jb, %bb.jc, %bb.jd, %bb.jm, %bb.jn
  %.sroa.5.1.i588 = phi ptr [ null, %bb.jb ], [ null, %bb.jd ], [ null, %bb.jc ], [ undef, %bb.jn ], [ %.sroa.013.0.copyload.i.i.i619, %bb.jm ]
  %.sroa.16.1.i591 = phi i64 [ 3, %bb.jb ], [ 3, %bb.jd ], [ 3, %bb.jc ], [ undef, %bb.jn ], [ %.sroa.16.40.copyload.i629, %bb.jm ]
  %.sroa.14.1.i592 = phi i64 [ ptrtoint (ptr @12 to i64), %bb.jb ], [ undef, %bb.jd ], [ %i.ahk, %bb.jc ], [ undef, %bb.jn ], [ %.sroa.14.40.copyload.i627, %bb.jm ]
  %.sroa.12.1.i593 = phi i64 [ -9223372036854775808, %bb.jb ], [ undef, %bb.jd ], [ %3, %bb.jc ], [ undef, %bb.jn ], [ %.sroa.826.0.copyload.i.i.i625, %bb.jm ]
  %.sroa.0.0.i596.a = phi i64 [ -9223372036854775804, %bb.jb ], [ -9223372036854775800, %bb.jd ], [ -9223372036854775803, %bb.jc ], [ -9223372036854775798, %bb.jn ], [ %i.ain, %bb.jm ]
  %13 = phi <2 x i64> [ <i64 8, i64 0>, %bb.jb ], [ <i64 8, i64 0>, %bb.jd ], [ <i64 8, i64 0>, %bb.jc ], [ undef, %bb.jn ], [ %12, %bb.jm ]
  %i.ait = phi <2 x i64> [ %i.ahj, %bb.jb ], [ %i.ahj, %bb.jd ], [ %i.ahj, %bb.jc ], [ undef, %bb.jn ], [ %i.aip, %bb.jm ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !31973
  store i64 %.sroa.0.0.i596.a, ptr %i.bw, align 8, !noalias !31973
  %.sroa.5.0..sroa_idx.i597 = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %.sroa.5.1.i588, ptr %.sroa.5.0..sroa_idx.i597, align 8, !noalias !31973
  %.sroa.8.0..sroa_idx.i598 = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store <2 x i64> %13, ptr %.sroa.8.0..sroa_idx.i598, align 8, !noalias !31973
  %.sroa.12.0..sroa_idx.i600 = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  store i64 %.sroa.12.1.i593, ptr %.sroa.12.0..sroa_idx.i600, align 8, !noalias !31973
  %.sroa.14.0..sroa_idx.i601 = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  store i64 %.sroa.14.1.i592, ptr %.sroa.14.0..sroa_idx.i601, align 8, !noalias !31973
  %.sroa.16.0..sroa_idx.i602 = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  store i64 %.sroa.16.1.i591, ptr %.sroa.16.0..sroa_idx.i602, align 8, !noalias !31973
  %.sroa.17.0..sroa_idx.i603 = getelementptr inbounds nuw i8, ptr %i.bw, i64 56
  store <2 x i64> %i.ait, ptr %.sroa.17.0..sroa_idx.i603, align 8, !noalias !31973
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !31973
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store i64 -9223372036854775808, ptr %i.aiu, align 8, !noalias !31973
  %.sroa.4.0..sroa_idx.i605 = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  store ptr @71, ptr %.sroa.4.0..sroa_idx.i605, align 8, !noalias !31973
  %.sroa.52.0..sroa_idx.i606 = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  store i64 10, ptr %.sroa.52.0..sroa_idx.i606, align 8, !noalias !31973
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i64 %3, ptr %i.aiv, align 8, !noalias !31973
  store i64 2, ptr %i.bv, align 8, !noalias !31973
  call fastcc void @_RINvNtCs2TwJzntlzha_11flatbuffers8verifier12append_traceuECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.bw, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.bv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !31973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !31973
  br label %bb.tx

bb.jo:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31974)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31977)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31980)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31983)
  %i.aiw = and i64 %3, 3
  %i.aix = icmp eq i64 %i.aiw, 0
  %i.aiy = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %3, i64 0 ; 3 uses
  br i1 %i.aix, label %bb.jp, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema7Struct_EReECs14kWLkQVSKO_14deltalake_core.exit

bb.jp:                                            ; preds = %bb.jo
  %i.aiz = tail call i64 @llvm.uadd.sat.i64(i64 %3, i64 4) ; 2 uses
  %i.aja = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ajb = load i64, ptr %i.aja, align 8, !alias.scope !31986, !noalias !31987, !noundef !3 ; 9 uses
  %i.ajc = icmp ugt i64 %i.aiz, %i.ajb
  br i1 %i.ajc, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema7Struct_EReECs14kWLkQVSKO_14deltalake_core.exit, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.ajd = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.aje = load i64, ptr %i.ajd, align 8, !alias.scope !31986, !noalias !31987, !noundef !3
  %i.ajf = add i64 %i.aje, 4                      ; 2 uses
  store i64 %i.ajf, ptr %i.ajd, align 8, !alias.scope !31986, !noalias !31987
  %i.ajg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ajh = load ptr, ptr %i.ajg, align 8, !alias.scope !31986, !noalias !31987, !nonnull !3, !align !100, !noundef !3
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajh, i64 16
  %i.ajj = load i64, ptr %i.aji, align 8, !noalias !31992, !noundef !3
  %i.ajk = icmp ugt i64 %i.ajf, %i.ajj
  br i1 %i.ajk, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema7Struct_EReECs14kWLkQVSKO_14deltalake_core.exit, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i653

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i653: ; preds = %bb.jq
  %i.ajl = icmp ult i64 %3, %i.ajb
  br i1 %i.ajl, label %bb.jr, label %bb.js

bb.jr:                                            ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i653
  %i.ajm = load ptr, ptr %2, align 8, !alias.scope !31993, !noalias !31994, !nonnull !3, !noundef !3 ; 4 uses
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajm, i64 %3
  %i.ajo = load i8, ptr %i.ajn, align 1, !noalias !31995, !noundef !3
  %i.ajp = or disjoint i64 %3, 1                  ; 3 uses
  %i.ajq = icmp ult i64 %i.ajp, %i.ajb
  br i1 %i.ajq, label %bb.jt, label %bb.ju

bb.js:                                            ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i653
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %3, i64 noundef %i.ajb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #51, !noalias !31995
  unreachable

bb.jt:                                            ; preds = %bb.jr
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajm, i64 %i.ajp
  %i.ajs = load i8, ptr %i.ajr, align 1, !noalias !31995, !noundef !3
  %i.ajt = or disjoint i64 %3, 2                  ; 3 uses
  %i.aju = icmp ult i64 %i.ajt, %i.ajb
  br i1 %i.aju, label %bb.jv, label %bb.jw

bb.ju:                                            ; preds = %bb.jr
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.ajp, i64 noundef %i.ajb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #51, !noalias !31995
  unreachable

bb.jv:                                            ; preds = %bb.jt
  %i.ajv = or disjoint i64 %3, 3                  ; 3 uses
  %i.ajw = icmp ult i64 %i.ajv, %i.ajb
  br i1 %i.ajw, label %bb.jy, label %bb.jx

bb.jw:                                            ; preds = %bb.jt
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.ajt, i64 noundef %i.ajb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #51, !noalias !31995
  unreachable

bb.jx:                                            ; preds = %bb.jv
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.ajv, i64 noundef %i.ajb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #51, !noalias !31995
  unreachable

bb.jy:                                            ; preds = %bb.jv
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajm, i64 %i.ajt
  %i.ajy = load i8, ptr %i.ajx, align 1, !noalias !31995, !noundef !3
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajm, i64 %i.ajv
  %i.aka = load i8, ptr %i.ajz, align 1, !noalias !31995, !noundef !3
  %.sroa.6.0.insert.ext.i.i.i654 = zext i8 %i.aka to i64
  %.sroa.6.0.insert.shift.i.i.i655 = shl nuw nsw i64 %.sroa.6.0.insert.ext.i.i.i654, 24
  %.sroa.5.0.insert.ext.i.i.i656 = zext i8 %i.ajy to i64
  %.sroa.5.0.insert.shift.i.i.i657 = shl nuw nsw i64 %.sroa.5.0.insert.ext.i.i.i656, 16
  %.sroa.4.0.insert.ext.i.i.i658 = zext i8 %i.ajs to i64
  %.sroa.4.0.insert.shift.i.i.i659 = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i.i658, 8
  %.sroa.0.0.insert.ext.i.i.i660 = zext i8 %i.ajo to i64
  %.sroa.5.0.insert.insert.i.i.i661 = or disjoint i64 %.sroa.4.0.insert.shift.i.i.i659, %.sroa.0.0.insert.ext.i.i.i660
  %.sroa.4.0.insert.insert.i.i.i662 = or disjoint i64 %.sroa.5.0.insert.insert.i.i.i661, %.sroa.5.0.insert.shift.i.i.i657
  %.sroa.0.0.insert.insert.i.i.i663 = or disjoint i64 %.sroa.4.0.insert.insert.i.i.i662, %.sroa.6.0.insert.shift.i.i.i655
  %i.akb = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.0.insert.insert.i.i.i663, i64 %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !31996
  call fastcc void @_RNvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB5_8Verifier11visit_table(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.br, ptr noalias noundef nonnull align 8 dereferenceable(48) %2, i64 noundef %i.akb) #50, !noalias !32000
  %i.akc = load i64, ptr %i.br, align 8, !range !99, !noalias !31996, !noundef !3 ; 2 uses
  %.not.i.i.i664 = icmp eq i64 %i.akc, -9223372036854775798
  %i.akd = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.sroa.013.0.copyload.i.i.i665 = load ptr, ptr %i.akd, align 8, !noalias !31996 ; 2 uses
  br i1 %.not.i.i.i664, label %bb.ka, label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  %.sroa.624.0..sroa_idx.i.i.i666 = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %14 = load <2 x i64>, ptr %.sroa.624.0..sroa_idx.i.i.i666, align 8, !noalias !31996
  %.sroa.826.0..sroa_idx.i.i.i670 = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %.sroa.826.0.copyload.i.i.i671 = load i64, ptr %.sroa.826.0..sroa_idx.i.i.i670, align 8, !noalias !31996
  %.sroa.927.0..sroa_idx.i.i.i672 = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %.sroa.14.40.copyload.i673 = load i64, ptr %.sroa.927.0..sroa_idx.i.i.i672, align 8, !noalias !32001
  %.sroa.16.40..sroa.927.0..sroa_idx.i.i.sroa_idx.i674 = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  %.sroa.16.40.copyload.i675 = load i64, ptr %.sroa.16.40..sroa.927.0..sroa_idx.i.i.sroa_idx.i674, align 8, !noalias !32001
  %.sroa.17.40..sroa.927.0..sroa_idx.i.i.sroa_idx.i676 = getelementptr inbounds nuw i8, ptr %i.br, i64 56
  %i.ake = load <2 x i64>, ptr %.sroa.17.40..sroa.927.0..sroa_idx.i.i.sroa_idx.i676, align 8, !noalias !32001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !31996
  br label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema7Struct_EReECs14kWLkQVSKO_14deltalake_core.exit

bb.ka:                                            ; preds = %bb.jy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !31996
  %i.akf = getelementptr inbounds nuw i8, ptr %.sroa.013.0.copyload.i.i.i665, i64 24 ; 2 uses
  %i.akg = load i64, ptr %i.akf, align 8, !noalias !32000, !noundef !3
  %i.akh = add i64 %i.akg, -1
  store i64 %i.akh, ptr %i.akf, align 8, !noalias !32000
  br label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema7Struct_EReECs14kWLkQVSKO_14deltalake_core.exit

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema7Struct_EReECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.jo, %bb.jp, %bb.jq, %bb.jz, %bb.ka
  %.sroa.5.1.i634 = phi ptr [ null, %bb.jo ], [ null, %bb.jq ], [ null, %bb.jp ], [ undef, %bb.ka ], [ %.sroa.013.0.copyload.i.i.i665, %bb.jz ]
  %.sroa.16.1.i637 = phi i64 [ 3, %bb.jo ], [ 3, %bb.jq ], [ 3, %bb.jp ], [ undef, %bb.ka ], [ %.sroa.16.40.copyload.i675, %bb.jz ]
  %.sroa.14.1.i638 = phi i64 [ ptrtoint (ptr @12 to i64), %bb.jo ], [ undef, %bb.jq ], [ %i.aiz, %bb.jp ], [ undef, %bb.ka ], [ %.sroa.14.40.copyload.i673, %bb.jz ]
  %.sroa.12.1.i639 = phi i64 [ -9223372036854775808, %bb.jo ], [ undef, %bb.jq ], [ %3, %bb.jp ], [ undef, %bb.ka ], [ %.sroa.826.0.copyload.i.i.i671, %bb.jz ]
  %.sroa.0.0.i642.a = phi i64 [ -9223372036854775804, %bb.jo ], [ -9223372036854775800, %bb.jq ], [ -9223372036854775803, %bb.jp ], [ -9223372036854775798, %bb.ka ], [ %i.akc, %bb.jz ]
  %15 = phi <2 x i64> [ <i64 8, i64 0>, %bb.jo ], [ <i64 8, i64 0>, %bb.jq ], [ <i64 8, i64 0>, %bb.jp ], [ undef, %bb.ka ], [ %14, %bb.jz ]
  %i.aki = phi <2 x i64> [ %i.aiy, %bb.jo ], [ %i.aiy, %bb.jq ], [ %i.aiy, %bb.jp ], [ undef, %bb.ka ], [ %i.ake, %bb.jz ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !32002
  store i64 %.sroa.0.0.i642.a, ptr %i.bt, align 8, !noalias !32002
  %.sroa.5.0..sroa_idx.i643 = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr %.sroa.5.1.i634, ptr %.sroa.5.0..sroa_idx.i643, align 8, !noalias !32002
  %.sroa.8.0..sroa_idx.i644 = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store <2 x i64> %15, ptr %.sroa.8.0..sroa_idx.i644, align 8, !noalias !32002
  %.sroa.12.0..sroa_idx.i646 = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  store i64 %.sroa.12.1.i639, ptr %.sroa.12.0..sroa_idx.i646, align 8, !noalias !32002
  %.sroa.14.0..sroa_idx.i647 = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  store i64 %.sroa.14.1.i638, ptr %.sroa.14.0..sroa_idx.i647, align 8, !noalias !32002
  %.sroa.16.0..sroa_idx.i648 = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  store i64 %.sroa.16.1.i637, ptr %.sroa.16.0..sroa_idx.i648, align 8, !noalias !32002
  %.sroa.17.0..sroa_idx.i649 = getelementptr inbounds nuw i8, ptr %i.bt, i64 56
  store <2 x i64> %i.aki, ptr %.sroa.17.0..sroa_idx.i649, align 8, !noalias !32002
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !32002
  %i.akj = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store i64 -9223372036854775808, ptr %i.akj, align 8, !noalias !32002
  %.sroa.4.0..sroa_idx.i651 = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  store ptr @72, ptr %.sroa.4.0..sroa_idx.i651, align 8, !noalias !32002
  %.sroa.52.0..sroa_idx.i652 = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  store i64 13, ptr %.sroa.52.0..sroa_idx.i652, align 8, !noalias !32002
  %i.akk = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i64 %3, ptr %i.akk, align 8, !noalias !32002
  store i64 2, ptr %i.bs, align 8, !noalias !32002
  call fastcc void @_RINvNtCs2TwJzntlzha_11flatbuffers8verifier12append_traceuECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.bt, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !32002
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !32002
  br label %bb.tx

bb.kb:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32003)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32006)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32009)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32012)
  %i.akl = and i64 %3, 3
  %i.akm = icmp eq i64 %i.akl, 0
  %i.akn = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %3, i64 0 ; 3 uses
  br i1 %i.akm, label %bb.kc, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema5UnionEReECs14kWLkQVSKO_14deltalake_core.exit

bb.kc:                                            ; preds = %bb.kb
  %i.ako = tail call i64 @llvm.uadd.sat.i64(i64 %3, i64 4) ; 2 uses
  %i.akp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.akq = load i64, ptr %i.akp, align 8, !alias.scope !32015, !noalias !32016, !noundef !3 ; 9 uses
  %i.akr = icmp ugt i64 %i.ako, %i.akq
  %i.aks = insertelement <2 x i64> <i64 0, i64 poison>, i64 %3, i64 1
  %i.akt = insertelement <2 x i64> <i64 poison, i64 3>, i64 %i.ako, i64 0
  br i1 %i.akr, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema5UnionEReECs14kWLkQVSKO_14deltalake_core.exit, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.aku = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.akv = load i64, ptr %i.aku, align 8, !alias.scope !32015, !noalias !32016, !noundef !3
  %i.akw = add i64 %i.akv, 4                      ; 2 uses
  store i64 %i.akw, ptr %i.aku, align 8, !alias.scope !32015, !noalias !32016
  %i.akx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aky = load ptr, ptr %i.akx, align 8, !alias.scope !32015, !noalias !32016, !nonnull !3, !align !100, !noundef !3
  %i.akz = getelementptr inbounds nuw i8, ptr %i.aky, i64 16
  %i.ala = load i64, ptr %i.akz, align 8, !noalias !32021, !noundef !3
  %i.alb = icmp ugt i64 %i.akw, %i.ala
  br i1 %i.alb, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema5UnionEReECs14kWLkQVSKO_14deltalake_core.exit, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i699

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i699: ; preds = %bb.kd
  %i.alc = icmp ult i64 %3, %i.akq
  br i1 %i.alc, label %bb.ke, label %bb.kf

bb.ke:                                            ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i699
  %i.ald = load ptr, ptr %2, align 8, !alias.scope !32022, !noalias !32023, !nonnull !3, !noundef !3 ; 4 uses
  %i.ale = getelementptr inbounds nuw i8, ptr %i.ald, i64 %3
  %i.alf = load i8, ptr %i.ale, align 1, !noalias !32024, !noundef !3
  %i.alg = or disjoint i64 %3, 1                  ; 3 uses
  %i.alh = icmp ult i64 %i.alg, %i.akq
  br i1 %i.alh, label %bb.kg, label %bb.kh

bb.kf:                                            ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i699
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %3, i64 noundef %i.akq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #51, !noalias !32024
  unreachable

bb.kg:                                            ; preds = %bb.ke
  %i.ali = getelementptr inbounds nuw i8, ptr %i.ald, i64 %i.alg
  %i.alj = load i8, ptr %i.ali, align 1, !noalias !32024, !noundef !3
  %i.alk = or disjoint i64 %3, 2                  ; 3 uses
  %i.all = icmp ult i64 %i.alk, %i.akq
  br i1 %i.all, label %bb.ki, label %bb.kj

bb.kh:                                            ; preds = %bb.ke
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.alg, i64 noundef %i.akq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #51, !noalias !32024
  unreachable

bb.ki:                                            ; preds = %bb.kg
  %i.alm = or disjoint i64 %3, 3                  ; 3 uses
  %i.aln = icmp ult i64 %i.alm, %i.akq
  br i1 %i.aln, label %bb.kl, label %bb.kk

bb.kj:                                            ; preds = %bb.kg
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.alk, i64 noundef %i.akq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #51, !noalias !32024
  unreachable

bb.kk:                                            ; preds = %bb.ki
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.alm, i64 noundef %i.akq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #51, !noalias !32024
  unreachable

bb.kl:                                            ; preds = %bb.ki
  %i.alo = getelementptr inbounds nuw i8, ptr %i.ald, i64 %i.alk
  %i.alp = load i8, ptr %i.alo, align 1, !noalias !32024, !noundef !3
  %i.alq = getelementptr inbounds nuw i8, ptr %i.ald, i64 %i.alm
  %i.alr = load i8, ptr %i.alq, align 1, !noalias !32024, !noundef !3
  %.sroa.6.0.insert.ext.i.i.i700 = zext i8 %i.alr to i64
  %.sroa.6.0.insert.shift.i.i.i701 = shl nuw nsw i64 %.sroa.6.0.insert.ext.i.i.i700, 24
  %.sroa.5.0.insert.ext.i.i.i702 = zext i8 %i.alp to i64
  %.sroa.5.0.insert.shift.i.i.i703 = shl nuw nsw i64 %.sroa.5.0.insert.ext.i.i.i702, 16
  %.sroa.4.0.insert.ext.i.i.i704 = zext i8 %i.alj to i64
  %.sroa.4.0.insert.shift.i.i.i705 = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i.i704, 8
  %.sroa.0.0.insert.ext.i.i.i706 = zext i8 %i.alf to i64
  %.sroa.5.0.insert.insert.i.i.i707 = or disjoint i64 %.sroa.4.0.insert.shift.i.i.i705, %.sroa.0.0.insert.ext.i.i.i706
  %.sroa.4.0.insert.insert.i.i.i708 = or disjoint i64 %.sroa.5.0.insert.insert.i.i.i707, %.sroa.5.0.insert.shift.i.i.i703
  %.sroa.0.0.insert.insert.i.i.i709 = or disjoint i64 %.sroa.4.0.insert.insert.i.i.i708, %.sroa.6.0.insert.shift.i.i.i701
  %i.als = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.0.insert.insert.i.i.i709, i64 %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !32025
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !32025
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !32026
  call fastcc void @_RNvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB5_8Verifier11visit_table(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.bo, ptr noalias noundef nonnull align 8 dereferenceable(48) %2, i64 noundef %i.als) #50, !noalias !32030
  %i.alt = load i64, ptr %i.bo, align 8, !range !99, !noalias !32026, !noundef !3 ; 2 uses
  %.not.i.i.i710 = icmp eq i64 %i.alt, -9223372036854775798
  %i.alu = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.sroa.619.i.i.sroa.0.0.copyload.i711 = load i64, ptr %i.alu, align 8, !noalias !32026 ; 3 uses
  %.sroa.619.i.i.sroa.6.0..sroa_idx.i712 = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %.sroa.619.i.i.sroa.6.0.copyload.i713 = load i64, ptr %.sroa.619.i.i.sroa.6.0..sroa_idx.i712, align 8, !noalias !32026 ; 2 uses
  %.sroa.619.i.i.sroa.7.0..sroa_idx.i714 = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.alv = load <2 x i64>, ptr %.sroa.619.i.i.sroa.7.0..sroa_idx.i714, align 8, !noalias !32026 ; 2 uses
  br i1 %.not.i.i.i710, label %bb.kn, label %bb.km

bb.km:                                            ; preds = %bb.kl
  %.sroa.636.0..sroa_idx.i.i.i718 = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %i.alw = load <2 x i64>, ptr %.sroa.636.0..sroa_idx.i.i.i718, align 8, !noalias !32031
  %.sroa.26.40..sroa.636.0..sroa_idx.i.i.sroa_idx.i722 = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  %i.alx = load <2 x i64>, ptr %.sroa.26.40..sroa.636.0..sroa_idx.i.i.sroa_idx.i722, align 8, !noalias !32031
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !32026
  %.sroa.8.sroa.7.0.extract.shift13.i726 = and i64 %.sroa.619.i.i.sroa.0.0.copyload.i711, -4294967296
  br label %_RNvXs22_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_5UnionNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i

bb.kn:                                            ; preds = %bb.kl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !32026
  store i64 %.sroa.619.i.i.sroa.0.0.copyload.i711, ptr %i.bn, align 16, !noalias !32026
  %.sroa.619.i.i.sroa.6.0..sroa_idx17.i737 = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i64 %.sroa.619.i.i.sroa.6.0.copyload.i713, ptr %.sroa.619.i.i.sroa.6.0..sroa_idx17.i737, align 8, !noalias !32026
  %.sroa.619.i.i.sroa.7.0..sroa_idx19.i738 = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  store <2 x i64> %i.alv, ptr %.sroa.619.i.i.sroa.7.0..sroa_idx19.i738, align 16, !noalias !32026
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32032)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32035)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !32037
  call void @_RNvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB5_13TableVerifier5deref(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.bl, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bn, i16 noundef 4), !noalias !32038
  %i.aly = load i64, ptr %i.bl, align 8, !range !99, !noalias !32037, !noundef !3 ; 2 uses
  %.not.i.i.i.i740 = icmp eq i64 %i.aly, -9223372036854775798
  %i.alz = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.ama = load i64, ptr %i.alz, align 8, !noalias !32037 ; 2 uses
  %i.amb = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.amc = load i64, ptr %i.amb, align 8, !noalias !32037 ; 6 uses
  br i1 %.not.i.i.i.i740, label %bb.kp, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  %.sroa.718.0..sroa_idx.i.i.i.i741 = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.amd = load <2 x i64>, ptr %.sroa.718.0..sroa_idx.i.i.i.i741, align 8, !noalias !32026
  %.sroa.1596.i.i.sroa.6.0..sroa.718.0..sroa_idx.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  %i.ame = load <2 x i64>, ptr %.sroa.1596.i.i.sroa.6.0..sroa.718.0..sroa_idx.i.i.i.sroa_idx.i, align 8, !noalias !32026
  %.sroa.1596.i.i.sroa.8.0..sroa.718.0..sroa_idx.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  %i.amf = load <2 x i64>, ptr %.sroa.1596.i.i.sroa.8.0..sroa.718.0..sroa_idx.i.i.i.sroa_idx.i, align 8, !noalias !32026
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !32037
  br label %bb.la

bb.kp:                                            ; preds = %bb.kn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !32037
  %i.amg = trunc nuw i64 %i.ama to i1
  br i1 %i.amg, label %bb.kq, label %bb.lb

bb.kq:                                            ; preds = %bb.kp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !32037
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !32037
  %i.amh = load ptr, ptr %i.bn, align 16, !alias.scope !32035, !noalias !32039, !nonnull !3, !align !100, !noundef !3 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32040)
  call void @llvm.experimental.noalias.scope.decl(metadata !32043)
  call void @llvm.experimental.noalias.scope.decl(metadata !32045)
  call void @llvm.experimental.noalias.scope.decl(metadata !32048)
  %i.ami = and i64 %i.amc, 1
  %i.amj = icmp eq i64 %i.ami, 0
  br i1 %i.amj, label %bb.kr, label %bb.ks

bb.kr:                                            ; preds = %bb.kq
  %i.amk = call i64 @llvm.uadd.sat.i64(i64 %i.amc, i64 2) ; 2 uses
  %i.aml = getelementptr inbounds nuw i8, ptr %i.amh, i64 8
  %i.amm = load i64, ptr %i.aml, align 8, !alias.scope !32050, !noalias !32051, !noundef !3
  %i.amn = icmp ugt i64 %i.amk, %i.amm
  br i1 %i.amn, label %bb.ku, label %bb.kt

bb.ks:                                            ; preds = %bb.kq
  store i64 -9223372036854775804, ptr %i.bj, align 8, !alias.scope !32052, !noalias !32053
  %.sroa.242.0..sroa_idx.i.i.i.i.i.i787 = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i64 0, ptr %.sroa.242.0..sroa_idx.i.i.i.i.i.i787, align 8, !alias.scope !32052, !noalias !32053
  %.sroa.343.0..sroa_idx.i.i.i.i.i.i788 = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.343.0..sroa_idx.i.i.i.i.i.i788, align 8, !alias.scope !32052, !noalias !32053
  %.sroa.444.0..sroa_idx.i.i.i.i.i.i789 = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  store i64 0, ptr %.sroa.444.0..sroa_idx.i.i.i.i.i.i789, align 8, !alias.scope !32052, !noalias !32053
  %.sroa.545.0..sroa_idx.i.i.i.i.i.i790 = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  store i64 -9223372036854775808, ptr %.sroa.545.0..sroa_idx.i.i.i.i.i.i790, align 8, !alias.scope !32052, !noalias !32053
  %.sroa.646.0..sroa_idx.i.i.i.i.i.i791 = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  store ptr @13, ptr %.sroa.646.0..sroa_idx.i.i.i.i.i.i791, align 8, !alias.scope !32052, !noalias !32053
  %.sroa.747.0..sroa_idx.i.i.i.i.i.i792 = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  store i64 3, ptr %.sroa.747.0..sroa_idx.i.i.i.i.i.i792, align 8, !alias.scope !32052, !noalias !32053
end_hunk_6
begin_hunk_7_@_RNCNvXs3Y_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB8_5FieldNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier0Cs14kWLkQVSKO_14deltalake_core:bb.a

bb.lc:                                            ; preds = %bb.lb
  %.sroa.718.0..sroa_idx.i73.i.i.i748 = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.anl = load <2 x i64>, ptr %.sroa.718.0..sroa_idx.i73.i.i.i748, align 8, !noalias !32064
  %.sroa.20.24..sroa.718.0..sroa_idx.i73.sroa_idx.i.i.i752 = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.anm = load <2 x i64>, ptr %.sroa.20.24..sroa.718.0..sroa_idx.i73.sroa_idx.i.i.i752, align 8, !noalias !32026
  %.sroa.20.i.i.sroa.6.0..sroa.20.24..sroa.718.0..sroa_idx.i73.sroa_idx.i.i.sroa_idx.i756 = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  %i.ann = load <2 x i64>, ptr %.sroa.20.i.i.sroa.6.0..sroa.20.24..sroa.718.0..sroa_idx.i73.sroa_idx.i.i.sroa_idx.i756, align 8, !noalias !32026
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !32062
  br label %bb.lt

bb.ld:                                            ; preds = %bb.lb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !32062
  %i.ano = trunc nuw i64 %i.ani to i1
  br i1 %i.ano, label %bb.le, label %bb.lu

bb.le:                                            ; preds = %bb.ld
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !32062
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !32062
  %i.anp = load ptr, ptr %i.bm, align 16, !alias.scope !32060, !noalias !32065, !nonnull !3, !align !100, !noundef !3 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32066)
  call void @llvm.experimental.noalias.scope.decl(metadata !32069)
  call void @llvm.experimental.noalias.scope.decl(metadata !32071)
  call void @llvm.experimental.noalias.scope.decl(metadata !32074)
  %i.anq = and i64 %i.ank, 3
  %i.anr = icmp eq i64 %i.anq, 0
  br i1 %i.anr, label %bb.lf, label %bb.lo

bb.lf:                                            ; preds = %bb.le
  %i.ans = call i64 @llvm.uadd.sat.i64(i64 %i.ank, i64 4) ; 2 uses
  %i.ant = getelementptr inbounds nuw i8, ptr %i.anp, i64 8
  %i.anu = load i64, ptr %i.ant, align 8, !alias.scope !32077, !noalias !32078, !noundef !3 ; 9 uses
  %i.anv = icmp ugt i64 %i.ans, %i.anu
  br i1 %i.anv, label %bb.lo, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  %i.anw = getelementptr inbounds nuw i8, ptr %i.anp, i64 40 ; 2 uses
  %i.anx = load i64, ptr %i.anw, align 8, !alias.scope !32077, !noalias !32078, !noundef !3
  %i.any = add i64 %i.anx, 4                      ; 2 uses
  store i64 %i.any, ptr %i.anw, align 8, !alias.scope !32077, !noalias !32078
  %i.anz = getelementptr inbounds nuw i8, ptr %i.anp, i64 16
  %i.aoa = load ptr, ptr %i.anz, align 8, !alias.scope !32077, !noalias !32078, !nonnull !3, !align !100, !noundef !3
  %i.aob = getelementptr inbounds nuw i8, ptr %i.aoa, i64 16
  %i.aoc = load i64, ptr %i.aob, align 8, !noalias !32081, !noundef !3
  %i.aod = icmp ugt i64 %i.any, %i.aoc
  br i1 %i.aod, label %bb.lo, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i: ; preds = %bb.lg
  %i.aoe = icmp ult i64 %i.ank, %i.anu
  br i1 %i.aoe, label %bb.lh, label %bb.li

bb.lh:                                            ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i
  %i.aof = load ptr, ptr %i.anp, align 8, !alias.scope !32082, !noalias !32083, !nonnull !3, !noundef !3 ; 4 uses
  %i.aog = getelementptr inbounds nuw i8, ptr %i.aof, i64 %i.ank
  %i.aoh = load i8, ptr %i.aog, align 1, !noalias !32084, !noundef !3
  %i.aoi = or disjoint i64 %i.ank, 1              ; 3 uses
  %i.aoj = icmp ult i64 %i.aoi, %i.anu
  br i1 %i.aoj, label %bb.lj, label %bb.lk

bb.li:                                            ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.ank, i64 noundef %i.anu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #51, !noalias !32084
  unreachable

bb.lj:                                            ; preds = %bb.lh
  %i.aok = getelementptr inbounds nuw i8, ptr %i.aof, i64 %i.aoi
  %i.aol = load i8, ptr %i.aok, align 1, !noalias !32084, !noundef !3
  %i.aom = or disjoint i64 %i.ank, 2              ; 3 uses
  %i.aon = icmp ult i64 %i.aom, %i.anu
  br i1 %i.aon, label %bb.ll, label %bb.lm

bb.lk:                                            ; preds = %bb.lh
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.aoi, i64 noundef %i.anu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #51, !noalias !32084
  unreachable

bb.ll:                                            ; preds = %bb.lj
  %i.aoo = or disjoint i64 %i.ank, 3              ; 3 uses
  %i.aop = icmp ult i64 %i.aoo, %i.anu
  br i1 %i.aop, label %bb.lp, label %bb.ln

bb.lm:                                            ; preds = %bb.lj
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.aom, i64 noundef %i.anu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #51, !noalias !32084
  unreachable

bb.ln:                                            ; preds = %bb.ll
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.aoo, i64 noundef %i.anu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #51, !noalias !32084
  unreachable

bb.lo:                                            ; preds = %bb.lg, %bb.lf, %bb.le
  %.sroa.13.0.ph.i.i.i.i.i = phi i64 [ undef, %bb.lg ], [ -9223372036854775808, %bb.le ], [ %i.ank, %bb.lf ]
  %.sroa.14.0.ph.i.i.i.i.i = phi i64 [ undef, %bb.lg ], [ ptrtoint (ptr @12 to i64), %bb.le ], [ %i.ans, %bb.lf ]
  %.sroa.0.0.ph.i.i.i.i.i = phi i64 [ -9223372036854775800, %bb.lg ], [ -9223372036854775804, %bb.le ], [ -9223372036854775803, %bb.lf ]
  store i64 %.sroa.0.0.ph.i.i.i.i.i, ptr %i.bf, align 8, !alias.scope !32066, !noalias !32085
  %.sroa.211.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i32 0, ptr %.sroa.211.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !32066, !noalias !32085
  %.sroa.312.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store i32 0, ptr %.sroa.312.0..sroa_idx.i.i.i.i.i, align 4, !alias.scope !32066, !noalias !32085
  %.sroa.312.sroa.2.0..sroa.312.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.312.sroa.2.0..sroa.312.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !32066, !noalias !32085
  %.sroa.312.sroa.3.0..sroa.312.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  store i64 0, ptr %.sroa.312.sroa.3.0..sroa.312.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !32066, !noalias !32085
  %.sroa.312.sroa.4.0..sroa.312.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  store i64 %.sroa.13.0.ph.i.i.i.i.i, ptr %.sroa.312.sroa.4.0..sroa.312.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !32066, !noalias !32085
  %.sroa.312.sroa.5.0..sroa.312.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  store i64 %.sroa.14.0.ph.i.i.i.i.i, ptr %.sroa.312.sroa.5.0..sroa.312.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !32066, !noalias !32085
  %.sroa.312.sroa.6.0..sroa.312.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  store i64 3, ptr %.sroa.312.sroa.6.0..sroa.312.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !32066, !noalias !32085
  %.sroa.312.sroa.7.0..sroa.312.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 56
  store i64 %i.ank, ptr %.sroa.312.sroa.7.0..sroa.312.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !32066, !noalias !32085
  br label %bb.lq

bb.lp:                                            ; preds = %bb.ll
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aof, i64 %i.aom
  %i.aor = load i8, ptr %i.aoq, align 1, !noalias !32084, !noundef !3
  %i.aos = getelementptr inbounds nuw i8, ptr %i.aof, i64 %i.aoo
  %i.aot = load i8, ptr %i.aos, align 1, !noalias !32084, !noundef !3
  %.sroa.6.0.insert.ext.i.i.i.i.i.i = zext i8 %i.aot to i64
  %.sroa.6.0.insert.shift.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.6.0.insert.ext.i.i.i.i.i.i, 24
  %.sroa.5.0.insert.ext.i.i.i.i.i.i = zext i8 %i.aor to i64
  %.sroa.5.0.insert.shift.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.5.0.insert.ext.i.i.i.i.i.i, 16
  %.sroa.4.0.insert.ext.i.i.i.i.i.i = zext i8 %i.aol to i64
  %.sroa.4.0.insert.shift.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i.i.i.i.i, 8
  %.sroa.0.0.insert.ext.i.i.i.i.i.i = zext i8 %i.aoh to i64
  %.sroa.5.0.insert.insert.i.i.i.i.i.i = or disjoint i64 %.sroa.4.0.insert.shift.i.i.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i.i.i
  %.sroa.4.0.insert.insert.i.i.i.i.i.i = or disjoint i64 %.sroa.5.0.insert.insert.i.i.i.i.i.i, %.sroa.5.0.insert.shift.i.i.i.i.i.i
  %.sroa.0.0.insert.insert.i.i.i.i.i.i = or disjoint i64 %.sroa.4.0.insert.insert.i.i.i.i.i.i, %.sroa.6.0.insert.shift.i.i.i.i.i.i
  %i.aou = call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.0.insert.insert.i.i.i.i.i.i, i64 %i.ank)
  call void @_RNvXsi_NtCs2TwJzntlzha_11flatbuffers8verifierINtNtB7_6vector6VectorlENtB5_10Verifiable12run_verifierCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.bf, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.anp, i64 noundef %i.aou), !noalias !32063
  br label %bb.lq

bb.lq:                                            ; preds = %bb.lp, %bb.lo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !32062
  %i.aov = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 -9223372036854775808, ptr %i.aov, align 8, !noalias !32062
  %.sroa.41.0..sroa_idx.i77.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store ptr @192, ptr %.sroa.41.0..sroa_idx.i77.i.i.i, align 8, !noalias !32062
  %.sroa.5.0..sroa_idx.i78.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  store i64 7, ptr %.sroa.5.0..sroa_idx.i78.i.i.i, align 8, !noalias !32062
  %i.aow = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i64 %i.ank, ptr %i.aow, align 8, !noalias !32062
  store i64 1, ptr %i.be, align 8, !noalias !32062
  call fastcc void @_RINvNtCs2TwJzntlzha_11flatbuffers8verifier12append_traceuECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.bg, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.bf, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.be), !noalias !32063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !32062
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !32062
  %i.aox = load i64, ptr %i.bg, align 8, !range !99, !noalias !32062, !noundef !3 ; 2 uses
  %.not37.i79.i.i.i = icmp eq i64 %i.aox, -9223372036854775798
  br i1 %.not37.i79.i.i.i, label %bb.ls, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %.sroa.10.0..sroa_idx.i.i.i771 = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.10.0.copyload.i.i.i772 = load i64, ptr %.sroa.10.0..sroa_idx.i.i.i771, align 8, !noalias !32064
  %.sroa.15.0..sroa_idx.i.i.i773 = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %.sroa.15.0.copyload.i.i.i774 = load i64, ptr %.sroa.15.0..sroa_idx.i.i.i773, align 8, !noalias !32064
  %.sroa.17.0..sroa_idx.i.i.i775 = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.aoy = load <2 x i64>, ptr %.sroa.17.0..sroa_idx.i.i.i775, align 8, !noalias !32064
  %.sroa.20.0..sroa_idx.i.i.i779 = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.aoz = load <2 x i64>, ptr %.sroa.20.0..sroa_idx.i.i.i779, align 8, !noalias !32026
  %.sroa.20.i.i.sroa.6.0..sroa.20.0..sroa_idx.i.i.sroa_idx.i783 = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %i.apa = load <2 x i64>, ptr %.sroa.20.i.i.sroa.6.0..sroa.20.0..sroa_idx.i.i.sroa_idx.i783, align 8, !noalias !32026
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !32062
  br label %bb.lt

bb.ls:                                            ; preds = %bb.lq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !32062
  br label %bb.lu

bb.lt:                                            ; preds = %bb.lr, %bb.lc
  %.sroa.15.1.i.i.i766 = phi i64 [ %.sroa.15.0.copyload.i.i.i774, %bb.lr ], [ %i.ank, %bb.lc ]
  %.sroa.10.1.i.i.i767 = phi i64 [ %.sroa.10.0.copyload.i.i.i772, %bb.lr ], [ %i.ani, %bb.lc ] ; 2 uses
  %.sroa.0.1.i.i.i768 = phi i64 [ %i.aox, %bb.lr ], [ %i.ang, %bb.lc ]
  %i.apb = phi <2 x i64> [ %i.aoy, %bb.lr ], [ %i.anl, %bb.lc ]
  %i.apc = phi <2 x i64> [ %i.aoz, %bb.lr ], [ %i.anm, %bb.lc ]
  %i.apd = phi <2 x i64> [ %i.apa, %bb.lr ], [ %i.ann, %bb.lc ]
  %.sroa.8.sroa.7.0.extract.shift.i769 = and i64 %.sroa.10.1.i.i.i767, -4294967296
  br label %_RNvXs22_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_5UnionNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i

bb.lu:                                            ; preds = %bb.ls, %bb.ld
  %.sroa.10.1.ph.i.i.i770 = load i64, ptr %i.bm, align 16, !alias.scope !32086, !noalias !32026
  %i.ape = inttoptr i64 %.sroa.10.1.ph.i.i.i770 to ptr
  %i.apf = getelementptr inbounds nuw i8, ptr %i.ape, i64 24 ; 2 uses
  %i.apg = load i64, ptr %i.apf, align 8, !noalias !32030, !noundef !3
  %i.aph = add i64 %i.apg, -1
  store i64 %i.aph, ptr %i.apf, align 8, !noalias !32030
  br label %_RNvXs22_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_5UnionNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i

_RNvXs22_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_5UnionNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i: ; preds = %bb.lu, %bb.lt, %bb.la, %bb.km
  %.sroa.8.sroa.7.1.i727 = phi i64 [ 0, %bb.lu ], [ %.sroa.8.sroa.7.0.extract.shift.i769, %bb.lt ], [ %.sroa.8.sroa.7.0.extract.shift11.i744, %bb.la ], [ %.sroa.8.sroa.7.0.extract.shift13.i726, %bb.km ]
  %.sroa.8.sroa.0.1.i728 = phi i64 [ 0, %bb.lu ], [ %.sroa.10.1.i.i.i767, %bb.lt ], [ %.sroa.9.1.i.i.i743, %bb.la ], [ %.sroa.619.i.i.sroa.0.0.copyload.i711, %bb.km ]
  %.sroa.13.1.i735 = phi i64 [ undef, %bb.lu ], [ %.sroa.15.1.i.i.i766, %bb.lt ], [ %.sroa.14.1.i.i.i742, %bb.la ], [ %.sroa.619.i.i.sroa.6.0.copyload.i713, %bb.km ]
  %.sroa.0.1.i736 = phi i64 [ -9223372036854775798, %bb.lu ], [ %.sroa.0.1.i.i.i768, %bb.lt ], [ %.sroa.087.1.i.i.i, %bb.la ], [ %i.alt, %bb.km ]
  %i.api = phi <2 x i64> [ undef, %bb.lu ], [ %i.apb, %bb.lt ], [ %i.anc, %bb.la ], [ %i.alv, %bb.km ]
  %i.apj = phi <2 x i64> [ undef, %bb.lu ], [ %i.apc, %bb.lt ], [ %i.and, %bb.la ], [ %i.alw, %bb.km ]
  %i.apk = phi <2 x i64> [ undef, %bb.lu ], [ %i.apd, %bb.lt ], [ %i.ane, %bb.la ], [ %i.alx, %bb.km ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !32025
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !32025
  %i.apl = and i64 %.sroa.8.sroa.0.1.i728, 4294967295
  %i.apm = or disjoint i64 %i.apl, %.sroa.8.sroa.7.1.i727
  br label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema5UnionEReECs14kWLkQVSKO_14deltalake_core.exit

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema5UnionEReECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.kb, %bb.kc, %bb.kd, %_RNvXs22_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_5UnionNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i
  %.sroa.8.sroa.7.2.i680 = phi i64 [ %i.apm, %_RNvXs22_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_5UnionNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ 0, %bb.kd ], [ 0, %bb.kc ], [ 0, %bb.kb ]
  %.sroa.13.2.i687 = phi i64 [ %.sroa.13.1.i735, %_RNvXs22_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_5UnionNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ 8, %bb.kd ], [ 8, %bb.kc ], [ 8, %bb.kb ]
  %.sroa.0.2.i688 = phi i64 [ %.sroa.0.1.i736, %_RNvXs22_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_5UnionNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ -9223372036854775800, %bb.kd ], [ -9223372036854775803, %bb.kc ], [ -9223372036854775804, %bb.kb ]
  %i.apn = phi <2 x i64> [ %i.api, %_RNvXs22_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_5UnionNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ <i64 0, i64 undef>, %bb.kd ], [ %i.aks, %bb.kc ], [ <i64 0, i64 -9223372036854775808>, %bb.kb ]
  %i.apo = phi <2 x i64> [ %i.apj, %_RNvXs22_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_5UnionNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ <i64 undef, i64 3>, %bb.kd ], [ %i.akt, %bb.kc ], [ <i64 ptrtoint (ptr @12 to i64), i64 3>, %bb.kb ]
  %i.app = phi <2 x i64> [ %i.apk, %_RNvXs22_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_5UnionNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ %i.akn, %bb.kd ], [ %i.akn, %bb.kc ], [ %i.akn, %bb.kb ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !32087
  store i64 %.sroa.0.2.i688, ptr %i.bq, align 8, !noalias !32087
  %.sroa.8.0..sroa_idx.i689 = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i64 %.sroa.8.sroa.7.2.i680, ptr %.sroa.8.0..sroa_idx.i689, align 8, !noalias !32087
  %.sroa.13.0..sroa_idx.i690 = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store i64 %.sroa.13.2.i687, ptr %.sroa.13.0..sroa_idx.i690, align 8, !noalias !32087
  %.sroa.16.0..sroa_idx.i691 = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  store <2 x i64> %i.apn, ptr %.sroa.16.0..sroa_idx.i691, align 8, !noalias !32087
  %.sroa.21.0..sroa_idx.i693 = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  store <2 x i64> %i.apo, ptr %.sroa.21.0..sroa_idx.i693, align 8, !noalias !32087
  %.sroa.26.0..sroa_idx.i695 = getelementptr inbounds nuw i8, ptr %i.bq, i64 56
  store <2 x i64> %i.app, ptr %.sroa.26.0..sroa_idx.i695, align 8, !noalias !32087
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !32087
  %i.apq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store i64 -9223372036854775808, ptr %i.apq, align 8, !noalias !32087
  %.sroa.4.0..sroa_idx.i697 = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  store ptr @73, ptr %.sroa.4.0..sroa_idx.i697, align 8, !noalias !32087
  %.sroa.5.0..sroa_idx.i698 = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  store i64 11, ptr %.sroa.5.0..sroa_idx.i698, align 8, !noalias !32087
  %i.apr = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i64 %3, ptr %i.apr, align 8, !noalias !32087
  store i64 2, ptr %i.bp, align 8, !noalias !32087
  call fastcc void @_RINvNtCs2TwJzntlzha_11flatbuffers8verifier12append_traceuECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.bq, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.bp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !32087
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !32087
  br label %bb.tx

bb.lv:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32088)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32091)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32094)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32097)
  %i.aps = and i64 %3, 3
  %i.apt = icmp eq i64 %i.aps, 0
  %i.apu = insertelement <2 x i64> <i64 3, i64 poison>, i64 %3, i64 1 ; 3 uses
  br i1 %i.apt, label %bb.lw, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema15FixedSizeBinaryEReECs14kWLkQVSKO_14deltalake_core.exit

bb.lw:                                            ; preds = %bb.lv
  %i.apv = tail call i64 @llvm.uadd.sat.i64(i64 %3, i64 4) ; 2 uses
  %i.apw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.apx = load i64, ptr %i.apw, align 8, !alias.scope !32100, !noalias !32101, !noundef !3 ; 9 uses
  %i.apy = icmp ugt i64 %i.apv, %i.apx
  br i1 %i.apy, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema15FixedSizeBinaryEReECs14kWLkQVSKO_14deltalake_core.exit, label %bb.lx

bb.lx:                                            ; preds = %bb.lw
  %i.apz = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.aqa = load i64, ptr %i.apz, align 8, !alias.scope !32100, !noalias !32101, !noundef !3
  %i.aqb = add i64 %i.aqa, 4                      ; 2 uses
  store i64 %i.aqb, ptr %i.apz, align 8, !alias.scope !32100, !noalias !32101
  %i.aqc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aqd = load ptr, ptr %i.aqc, align 8, !alias.scope !32100, !noalias !32101, !nonnull !3, !align !100, !noundef !3
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.aqd, i64 16
  %i.aqf = load i64, ptr %i.aqe, align 8, !noalias !32106, !noundef !3
  %i.aqg = icmp ugt i64 %i.aqb, %i.aqf
  br i1 %i.aqg, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema15FixedSizeBinaryEReECs14kWLkQVSKO_14deltalake_core.exit, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i825

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i825: ; preds = %bb.lx
  %i.aqh = icmp ult i64 %3, %i.apx
  br i1 %i.aqh, label %bb.ly, label %bb.lz

bb.ly:                                            ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i825
  %i.aqi = load ptr, ptr %2, align 8, !alias.scope !32107, !noalias !32108, !nonnull !3, !noundef !3 ; 4 uses
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aqi, i64 %3
  %i.aqk = load i8, ptr %i.aqj, align 1, !noalias !32109, !noundef !3
  %i.aql = or disjoint i64 %3, 1                  ; 3 uses
  %i.aqm = icmp ult i64 %i.aql, %i.apx
  br i1 %i.aqm, label %bb.ma, label %bb.mb

bb.lz:                                            ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i825
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %3, i64 noundef %i.apx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #51, !noalias !32109
  unreachable

bb.ma:                                            ; preds = %bb.ly
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.aqi, i64 %i.aql
  %i.aqo = load i8, ptr %i.aqn, align 1, !noalias !32109, !noundef !3
  %i.aqp = or disjoint i64 %3, 2                  ; 3 uses
  %i.aqq = icmp ult i64 %i.aqp, %i.apx
  br i1 %i.aqq, label %bb.mc, label %bb.md

bb.mb:                                            ; preds = %bb.ly
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.aql, i64 noundef %i.apx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #51, !noalias !32109
  unreachable

bb.mc:                                            ; preds = %bb.ma
  %i.aqr = or disjoint i64 %3, 3                  ; 3 uses
  %i.aqs = icmp ult i64 %i.aqr, %i.apx
  br i1 %i.aqs, label %bb.mf, label %bb.me

bb.md:                                            ; preds = %bb.ma
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.aqp, i64 noundef %i.apx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #51, !noalias !32109
  unreachable

bb.me:                                            ; preds = %bb.mc
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.aqr, i64 noundef %i.apx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #51, !noalias !32109
  unreachable

bb.mf:                                            ; preds = %bb.mc
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqi, i64 %i.aqp
  %i.aqu = load i8, ptr %i.aqt, align 1, !noalias !32109, !noundef !3
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aqi, i64 %i.aqr
  %i.aqw = load i8, ptr %i.aqv, align 1, !noalias !32109, !noundef !3
  %.sroa.6.0.insert.ext.i.i.i826 = zext i8 %i.aqw to i64
  %.sroa.6.0.insert.shift.i.i.i827 = shl nuw nsw i64 %.sroa.6.0.insert.ext.i.i.i826, 24
  %.sroa.5.0.insert.ext.i.i.i828 = zext i8 %i.aqu to i64
  %.sroa.5.0.insert.shift.i.i.i829 = shl nuw nsw i64 %.sroa.5.0.insert.ext.i.i.i828, 16
  %.sroa.4.0.insert.ext.i.i.i830 = zext i8 %i.aqo to i64
  %.sroa.4.0.insert.shift.i.i.i831 = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i.i830, 8
  %.sroa.0.0.insert.ext.i.i.i832 = zext i8 %i.aqk to i64
  %.sroa.5.0.insert.insert.i.i.i833 = or disjoint i64 %.sroa.4.0.insert.shift.i.i.i831, %.sroa.0.0.insert.ext.i.i.i832
  %.sroa.4.0.insert.insert.i.i.i834 = or disjoint i64 %.sroa.5.0.insert.insert.i.i.i833, %.sroa.5.0.insert.shift.i.i.i829
  %.sroa.0.0.insert.insert.i.i.i835 = or disjoint i64 %.sroa.4.0.insert.insert.i.i.i834, %.sroa.6.0.insert.shift.i.i.i827
  %i.aqx = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.0.insert.insert.i.i.i835, i64 %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !32110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !32111
  call fastcc void @_RNvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB5_8Verifier11visit_table(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.bb, ptr noalias noundef nonnull align 8 dereferenceable(48) %2, i64 noundef %i.aqx) #50, !noalias !32115
  %i.aqy = load i64, ptr %i.bb, align 8, !range !99, !noalias !32111, !noundef !3 ; 2 uses
  %.not.i.i.i836 = icmp eq i64 %i.aqy, -9223372036854775798
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.sroa.613.i.i.sroa.0.0.copyload.i837 = load ptr, ptr %i.aqz, align 8, !noalias !32111 ; 2 uses
  %.sroa.613.i.i.sroa.6.0..sroa_idx.i838 = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %.sroa.613.i.i.sroa.6.0.copyload.i839 = load i64, ptr %.sroa.613.i.i.sroa.6.0..sroa_idx.i838, align 8, !noalias !32111 ; 2 uses
  %.sroa.613.i.i.sroa.7.0..sroa_idx.i840 = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %.sroa.613.i.i.sroa.7.0.copyload.i841 = load i64, ptr %.sroa.613.i.i.sroa.7.0..sroa_idx.i840, align 8, !noalias !32111 ; 2 uses
  %.sroa.613.i.i.sroa.8.0..sroa_idx.i842 = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %.sroa.613.i.i.sroa.8.0.copyload.i843 = load i64, ptr %.sroa.613.i.i.sroa.8.0..sroa_idx.i842, align 8, !noalias !32111 ; 2 uses
  br i1 %.not.i.i.i836, label %bb.mh, label %bb.mg

bb.mg:                                            ; preds = %bb.mf
  %.sroa.627.0..sroa_idx.i.i.i844 = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %.sroa.17.40.copyload.i845 = load i64, ptr %.sroa.627.0..sroa_idx.i.i.i844, align 8, !noalias !32116
  %.sroa.20.40..sroa.627.0..sroa_idx.i.i.sroa_idx.i846 = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %i.ara = load <2 x i64>, ptr %.sroa.20.40..sroa.627.0..sroa_idx.i.i.sroa_idx.i846, align 8, !noalias !32116
  %.sroa.22.40..sroa.627.0..sroa_idx.i.i.sroa_idx.i850 = getelementptr inbounds nuw i8, ptr %i.bb, i64 64
  %.sroa.22.40.copyload.i851 = load i64, ptr %.sroa.22.40..sroa.627.0..sroa_idx.i.i.sroa_idx.i850, align 8, !noalias !32116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !32111
  br label %_RNvXs2U_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_15FixedSizeBinaryNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i

bb.mh:                                            ; preds = %bb.mf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !32111
  store ptr %.sroa.613.i.i.sroa.0.0.copyload.i837, ptr %i.ba, align 8, !noalias !32111
  %.sroa.613.i.i.sroa.6.0..sroa_idx7.i861 = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i64 %.sroa.613.i.i.sroa.6.0.copyload.i839, ptr %.sroa.613.i.i.sroa.6.0..sroa_idx7.i861, align 8, !noalias !32111
  %.sroa.613.i.i.sroa.7.0..sroa_idx9.i862 = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i64 %.sroa.613.i.i.sroa.7.0.copyload.i841, ptr %.sroa.613.i.i.sroa.7.0..sroa_idx9.i862, align 8, !noalias !32111
  %.sroa.613.i.i.sroa.8.0..sroa_idx11.i863 = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store i64 %.sroa.613.i.i.sroa.8.0.copyload.i843, ptr %.sroa.613.i.i.sroa.8.0..sroa_idx11.i863, align 8, !noalias !32111
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32120)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !32122
  call void @_RNvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB5_13TableVerifier5deref(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.az, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ba, i16 noundef 4), !noalias !32124
  %i.arb = load i64, ptr %i.az, align 8, !range !99, !noalias !32122, !noundef !3 ; 2 uses
  %.not.i.i.i.i864 = icmp eq i64 %i.arb, -9223372036854775798
  %i.arc = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.ard = load i64, ptr %i.arc, align 8, !noalias !32122 ; 2 uses
  %i.are = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.arf = load i64, ptr %i.are, align 8, !noalias !32122 ; 6 uses
  br i1 %.not.i.i.i.i864, label %bb.mj, label %bb.mi

bb.mi:                                            ; preds = %bb.mh
  %.sroa.718.0..sroa_idx.i.i.i.i865 = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %.sroa.16.24.copyload.i.i.i866 = load i64, ptr %.sroa.718.0..sroa_idx.i.i.i.i865, align 8, !noalias !32125
  %.sroa.18.24..sroa.718.0..sroa_idx.i.sroa_idx.i.i.i867 = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %.sroa.18.24.copyload.i.i.i868 = load i64, ptr %.sroa.18.24..sroa.718.0..sroa_idx.i.sroa_idx.i.i.i867, align 8, !noalias !32125
  %.sroa.19.24..sroa.718.0..sroa_idx.i.sroa_idx.i.i.i869 = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %.sroa.19.i.i.sroa.0.0.copyload.i870 = load i64, ptr %.sroa.19.24..sroa.718.0..sroa_idx.i.sroa_idx.i.i.i869, align 8, !noalias !32111
  %.sroa.19.i.i.sroa.5.0..sroa.19.24..sroa.718.0..sroa_idx.i.sroa_idx.i.i.sroa_idx.i871 = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.arg = load <2 x i64>, ptr %.sroa.19.i.i.sroa.5.0..sroa.19.24..sroa.718.0..sroa_idx.i.sroa_idx.i.i.sroa_idx.i871, align 8, !noalias !32111
  %.sroa.19.i.i.sroa.7.0..sroa.19.24..sroa.718.0..sroa_idx.i.sroa_idx.i.i.sroa_idx.i875 = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %.sroa.19.i.i.sroa.7.0.copyload.i876 = load i64, ptr %.sroa.19.i.i.sroa.7.0..sroa.19.24..sroa.718.0..sroa_idx.i.sroa_idx.i.i.sroa_idx.i875, align 8, !noalias !32111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !32122
  br label %bb.mu

bb.mj:                                            ; preds = %bb.mh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !32122
  %i.arh = trunc nuw i64 %i.ard to i1
  br i1 %i.arh, label %bb.mk, label %bb.mv

bb.mk:                                            ; preds = %bb.mj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !32122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !32122
  %i.ari = load ptr, ptr %i.ba, align 8, !alias.scope !32120, !noalias !32126, !nonnull !3, !align !100, !noundef !3 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32127)
  call void @llvm.experimental.noalias.scope.decl(metadata !32130)
  call void @llvm.experimental.noalias.scope.decl(metadata !32132)
  call void @llvm.experimental.noalias.scope.decl(metadata !32135)
  %i.arj = and i64 %i.arf, 3
  %i.ark = icmp eq i64 %i.arj, 0
  br i1 %i.ark, label %bb.ml, label %bb.mm

bb.ml:                                            ; preds = %bb.mk
  %i.arl = call i64 @llvm.uadd.sat.i64(i64 %i.arf, i64 4) ; 2 uses
  %i.arm = getelementptr inbounds nuw i8, ptr %i.ari, i64 8
  %i.arn = load i64, ptr %i.arm, align 8, !alias.scope !32137, !noalias !32138, !noundef !3
  %i.aro = icmp ugt i64 %i.arl, %i.arn
  br i1 %i.aro, label %bb.mo, label %bb.mn

bb.mm:                                            ; preds = %bb.mk
  store i64 -9223372036854775804, ptr %i.ax, align 8, !alias.scope !32139, !noalias !32140
  %.sroa.242.0..sroa_idx.i.i.i.i.i.i887 = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 0, ptr %.sroa.242.0..sroa_idx.i.i.i.i.i.i887, align 8, !alias.scope !32139, !noalias !32140
  %.sroa.343.0..sroa_idx.i.i.i.i.i.i888 = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.343.0..sroa_idx.i.i.i.i.i.i888, align 8, !alias.scope !32139, !noalias !32140
  %.sroa.444.0..sroa_idx.i.i.i.i.i.i889 = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store i64 0, ptr %.sroa.444.0..sroa_idx.i.i.i.i.i.i889, align 8, !alias.scope !32139, !noalias !32140
  %.sroa.545.0..sroa_idx.i.i.i.i.i.i890 = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  store i64 -9223372036854775808, ptr %.sroa.545.0..sroa_idx.i.i.i.i.i.i890, align 8, !alias.scope !32139, !noalias !32140
  %.sroa.646.0..sroa_idx.i.i.i.i.i.i891 = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  store ptr @11, ptr %.sroa.646.0..sroa_idx.i.i.i.i.i.i891, align 8, !alias.scope !32139, !noalias !32140
  %.sroa.747.0..sroa_idx.i.i.i.i.i.i892 = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  store i64 3, ptr %.sroa.747.0..sroa_idx.i.i.i.i.i.i892, align 8, !alias.scope !32139, !noalias !32140
  %.sroa.848.0..sroa_idx.i.i.i.i.i.i893 = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  store i64 %i.arf, ptr %.sroa.848.0..sroa_idx.i.i.i.i.i.i893, align 8, !alias.scope !32139, !noalias !32140
  br label %bb.mr

bb.mn:                                            ; preds = %bb.ml
  %i.arp = getelementptr inbounds nuw i8, ptr %i.ari, i64 40 ; 2 uses
  %i.arq = load i64, ptr %i.arp, align 8, !alias.scope !32137, !noalias !32138, !noundef !3
  %i.arr = add i64 %i.arq, 4                      ; 2 uses
  store i64 %i.arr, ptr %i.arp, align 8, !alias.scope !32137, !noalias !32138
  %i.ars = getelementptr inbounds nuw i8, ptr %i.ari, i64 16
  %i.art = load ptr, ptr %i.ars, align 8, !alias.scope !32137, !noalias !32138, !nonnull !3, !align !100, !noundef !3
  %i.aru = getelementptr inbounds nuw i8, ptr %i.art, i64 16
  %i.arv = load i64, ptr %i.aru, align 8, !noalias !32141, !noundef !3
  %i.arw = icmp ugt i64 %i.arr, %i.arv
  br i1 %i.arw, label %bb.mq, label %bb.mp

bb.mo:                                            ; preds = %bb.ml
  store i64 -9223372036854775803, ptr %i.ax, align 8, !alias.scope !32139, !noalias !32140
  %.sroa.453.0..sroa_idx.i.i.i.i.i.i913 = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 0, ptr %.sroa.453.0..sroa_idx.i.i.i.i.i.i913, align 8, !alias.scope !32139, !noalias !32140
  %.sroa.453.sroa.4.0..sroa.453.0..sroa_idx.sroa_idx.i.i.i.i.i.i914 = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.453.sroa.4.0..sroa.453.0..sroa_idx.sroa_idx.i.i.i.i.i.i914, align 8, !alias.scope !32139, !noalias !32140
  %.sroa.453.sroa.5.0..sroa.453.0..sroa_idx.sroa_idx.i.i.i.i.i.i915 = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store i64 0, ptr %.sroa.453.sroa.5.0..sroa.453.0..sroa_idx.sroa_idx.i.i.i.i.i.i915, align 8, !alias.scope !32139, !noalias !32140
  %.sroa.554.0..sroa_idx.i.i.i.i.i.i916 = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  store i64 %i.arf, ptr %.sroa.554.0..sroa_idx.i.i.i.i.i.i916, align 8, !alias.scope !32139, !noalias !32140
  %.sroa.655.0..sroa_idx.i.i.i.i.i.i917 = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  store i64 %i.arl, ptr %.sroa.655.0..sroa_idx.i.i.i.i.i.i917, align 8, !alias.scope !32139, !noalias !32140
  br label %bb.mr

bb.mp:                                            ; preds = %bb.mn
  store i64 -9223372036854775798, ptr %i.ax, align 8, !alias.scope !32139, !noalias !32140
  br label %bb.mr

bb.mq:                                            ; preds = %bb.mn
  store i64 -9223372036854775800, ptr %i.ax, align 8, !alias.scope !32139, !noalias !32140
  br label %bb.mr

bb.mr:                                            ; preds = %bb.mq, %bb.mp, %bb.mo, %bb.mm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !32122
  %i.arx = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i64 -9223372036854775808, ptr %i.arx, align 8, !noalias !32122
  %.sroa.438.0..sroa_idx.i.i.i.i894 = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store ptr @247, ptr %.sroa.438.0..sroa_idx.i.i.i.i894, align 8, !noalias !32122
  %.sroa.5.0..sroa_idx.i.i.i.i895 = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  store i64 9, ptr %.sroa.5.0..sroa_idx.i.i.i.i895, align 8, !noalias !32122
  %i.ary = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 %i.arf, ptr %i.ary, align 8, !noalias !32122
  store i64 1, ptr %i.aw, align 8, !noalias !32122
  call fastcc void @_RINvNtCs2TwJzntlzha_11flatbuffers8verifier12append_traceuECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.ay, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.ax, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.aw), !noalias !32142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !32122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !32122
  %i.arz = load i64, ptr %i.ay, align 8, !range !99, !noalias !32122, !noundef !3 ; 2 uses
  %.not37.i.i.i.i896 = icmp eq i64 %i.arz, -9223372036854775798
  br i1 %.not37.i.i.i.i896, label %bb.mt, label %bb.ms

bb.ms:                                            ; preds = %bb.mr
  %.sroa.9.0..sroa_idx.i.i.i897 = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.9.0.copyload.i.i.i898 = load i64, ptr %.sroa.9.0..sroa_idx.i.i.i897, align 8, !noalias !32125
  %.sroa.14.0..sroa_idx.i.i.i899 = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %.sroa.14.0.copyload.i.i.i900 = load i64, ptr %.sroa.14.0..sroa_idx.i.i.i899, align 8, !noalias !32125
  %.sroa.16.0..sroa_idx.i.i.i901 = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %.sroa.16.0.copyload.i.i.i902 = load i64, ptr %.sroa.16.0..sroa_idx.i.i.i901, align 8, !noalias !32125
  %.sroa.18.0..sroa_idx.i.i.i903 = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %.sroa.18.0.copyload.i.i.i904 = load i64, ptr %.sroa.18.0..sroa_idx.i.i.i903, align 8, !noalias !32125
  %.sroa.19.0..sroa_idx.i.i.i905 = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %.sroa.19.i.i.sroa.0.0.copyload13.i906 = load i64, ptr %.sroa.19.0..sroa_idx.i.i.i905, align 8, !noalias !32111
  %.sroa.19.i.i.sroa.5.0..sroa.19.0..sroa_idx.i.i.sroa_idx.i907 = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.asa = load <2 x i64>, ptr %.sroa.19.i.i.sroa.5.0..sroa.19.0..sroa_idx.i.i.sroa_idx.i907, align 8, !noalias !32111
  %.sroa.19.i.i.sroa.7.0..sroa.19.0..sroa_idx.i.i.sroa_idx.i911 = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %.sroa.19.i.i.sroa.7.0.copyload16.i912 = load i64, ptr %.sroa.19.i.i.sroa.7.0..sroa.19.0..sroa_idx.i.i.sroa_idx.i911, align 8, !noalias !32111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !32122
  br label %bb.mu

bb.mt:                                            ; preds = %bb.mr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !32122
  br label %bb.mv

bb.mu:                                            ; preds = %bb.ms, %bb.mi
  %.sroa.19.i.i.sroa.0.0.i877 = phi i64 [ %.sroa.19.i.i.sroa.0.0.copyload13.i906, %bb.ms ], [ %.sroa.19.i.i.sroa.0.0.copyload.i870, %bb.mi ]
  %.sroa.19.i.i.sroa.7.0.i880 = phi i64 [ %.sroa.19.i.i.sroa.7.0.copyload16.i912, %bb.ms ], [ %.sroa.19.i.i.sroa.7.0.copyload.i876, %bb.mi ]
  %.sroa.18.1.i.i.i881 = phi i64 [ %.sroa.18.0.copyload.i.i.i904, %bb.ms ], [ %.sroa.18.24.copyload.i.i.i868, %bb.mi ]
  %.sroa.16.1.i.i.i882 = phi i64 [ %.sroa.16.0.copyload.i.i.i902, %bb.ms ], [ %.sroa.16.24.copyload.i.i.i866, %bb.mi ]
  %.sroa.14.1.i.i.i883 = phi i64 [ %.sroa.14.0.copyload.i.i.i900, %bb.ms ], [ %i.arf, %bb.mi ]
  %.sroa.9.1.i.i.i884 = phi i64 [ %.sroa.9.0.copyload.i.i.i898, %bb.ms ], [ %i.ard, %bb.mi ]
  %.sroa.0.1.i.i.i885 = phi i64 [ %i.arz, %bb.ms ], [ %i.arb, %bb.mi ]
  %i.asb = phi <2 x i64> [ %i.asa, %bb.ms ], [ %i.arg, %bb.mi ]
  %i.asc = inttoptr i64 %.sroa.9.1.i.i.i884 to ptr
  br label %_RNvXs2U_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_15FixedSizeBinaryNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i

bb.mv:                                            ; preds = %bb.mt, %bb.mj
  %.sroa.9.1.ph.i.i.i886 = load i64, ptr %i.ba, align 8, !alias.scope !32143, !noalias !32144
  %i.asd = inttoptr i64 %.sroa.9.1.ph.i.i.i886 to ptr
  %i.ase = getelementptr inbounds nuw i8, ptr %i.asd, i64 24 ; 2 uses
  %i.asf = load i64, ptr %i.ase, align 8, !noalias !32115, !noundef !3
  %i.asg = add i64 %i.asf, -1
  store i64 %i.asg, ptr %i.ase, align 8, !noalias !32115
  br label %_RNvXs2U_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_15FixedSizeBinaryNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i

_RNvXs2U_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_15FixedSizeBinaryNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i: ; preds = %bb.mv, %bb.mu, %bb.mg
  %.sroa.7.1.i852 = phi ptr [ undef, %bb.mv ], [ %i.asc, %bb.mu ], [ %.sroa.613.i.i.sroa.0.0.copyload.i837, %bb.mg ]
  %.sroa.22.1.i853 = phi i64 [ undef, %bb.mv ], [ %.sroa.19.i.i.sroa.7.0.i880, %bb.mu ], [ %.sroa.22.40.copyload.i851, %bb.mg ]
  %.sroa.17.1.i856 = phi i64 [ undef, %bb.mv ], [ %.sroa.19.i.i.sroa.0.0.i877, %bb.mu ], [ %.sroa.17.40.copyload.i845, %bb.mg ]
  %.sroa.15.1.i857 = phi i64 [ undef, %bb.mv ], [ %.sroa.18.1.i.i.i881, %bb.mu ], [ %.sroa.613.i.i.sroa.8.0.copyload.i843, %bb.mg ]
  %.sroa.13.1.i858 = phi i64 [ undef, %bb.mv ], [ %.sroa.16.1.i.i.i882, %bb.mu ], [ %.sroa.613.i.i.sroa.7.0.copyload.i841, %bb.mg ]
  %.sroa.11.1.i859 = phi i64 [ undef, %bb.mv ], [ %.sroa.14.1.i.i.i883, %bb.mu ], [ %.sroa.613.i.i.sroa.6.0.copyload.i839, %bb.mg ]
  %.sroa.0.1.i860 = phi i64 [ -9223372036854775798, %bb.mv ], [ %.sroa.0.1.i.i.i885, %bb.mu ], [ %i.aqy, %bb.mg ]
  %i.ash = phi <2 x i64> [ undef, %bb.mv ], [ %i.asb, %bb.mu ], [ %i.ara, %bb.mg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !32110
  br label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema15FixedSizeBinaryEReECs14kWLkQVSKO_14deltalake_core.exit

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema15FixedSizeBinaryEReECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.lv, %bb.lw, %bb.lx, %_RNvXs2U_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_15FixedSizeBinaryNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i
  %.sroa.7.2.i806 = phi ptr [ %.sroa.7.1.i852, %_RNvXs2U_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_15FixedSizeBinaryNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ null, %bb.lx ], [ null, %bb.lw ], [ null, %bb.lv ]
  %.sroa.22.2.i807 = phi i64 [ %.sroa.22.1.i853, %_RNvXs2U_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_15FixedSizeBinaryNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ undef, %bb.lx ], [ undef, %bb.lw ], [ undef, %bb.lv ]
  %.sroa.17.2.i810 = phi i64 [ %.sroa.17.1.i856, %_RNvXs2U_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_15FixedSizeBinaryNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ undef, %bb.lx ], [ %i.apv, %bb.lw ], [ ptrtoint (ptr @12 to i64), %bb.lv ]
  %.sroa.15.2.i811 = phi i64 [ %.sroa.15.1.i857, %_RNvXs2U_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_15FixedSizeBinaryNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ undef, %bb.lx ], [ %3, %bb.lw ], [ -9223372036854775808, %bb.lv ]
  %.sroa.13.2.i812 = phi i64 [ %.sroa.13.1.i858, %_RNvXs2U_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_15FixedSizeBinaryNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ 0, %bb.lx ], [ 0, %bb.lw ], [ 0, %bb.lv ]
  %.sroa.11.2.i813 = phi i64 [ %.sroa.11.1.i859, %_RNvXs2U_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_15FixedSizeBinaryNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ 8, %bb.lx ], [ 8, %bb.lw ], [ 8, %bb.lv ]
  %.sroa.0.2.i814 = phi i64 [ %.sroa.0.1.i860, %_RNvXs2U_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_15FixedSizeBinaryNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ -9223372036854775800, %bb.lx ], [ -9223372036854775803, %bb.lw ], [ -9223372036854775804, %bb.lv ]
  %i.asi = phi <2 x i64> [ %i.ash, %_RNvXs2U_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_15FixedSizeBinaryNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ %i.apu, %bb.lx ], [ %i.apu, %bb.lw ], [ %i.apu, %bb.lv ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !32145
  store i64 %.sroa.0.2.i814, ptr %i.bd, align 8, !noalias !32145
  %.sroa.7.0..sroa_idx.i815 = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %.sroa.7.2.i806, ptr %.sroa.7.0..sroa_idx.i815, align 8, !noalias !32145
  %.sroa.11.0..sroa_idx.i816 = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store i64 %.sroa.11.2.i813, ptr %.sroa.11.0..sroa_idx.i816, align 8, !noalias !32145
  %.sroa.13.0..sroa_idx.i817 = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store i64 %.sroa.13.2.i812, ptr %.sroa.13.0..sroa_idx.i817, align 8, !noalias !32145
  %.sroa.15.0..sroa_idx.i818 = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  store i64 %.sroa.15.2.i811, ptr %.sroa.15.0..sroa_idx.i818, align 8, !noalias !32145
  %.sroa.17.0..sroa_idx.i819 = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  store i64 %.sroa.17.2.i810, ptr %.sroa.17.0..sroa_idx.i819, align 8, !noalias !32145
  %.sroa.20.0..sroa_idx.i820 = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  store <2 x i64> %i.asi, ptr %.sroa.20.0..sroa_idx.i820, align 8, !noalias !32145
  %.sroa.22.0..sroa_idx.i822 = getelementptr inbounds nuw i8, ptr %i.bd, i64 64
  store i64 %.sroa.22.2.i807, ptr %.sroa.22.0..sroa_idx.i822, align 8, !noalias !32145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !32145
  %i.asj = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store i64 -9223372036854775808, ptr %i.asj, align 8, !noalias !32145
  %.sroa.4.0..sroa_idx.i823 = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  store ptr @74, ptr %.sroa.4.0..sroa_idx.i823, align 8, !noalias !32145
  %.sroa.5.0..sroa_idx.i824 = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  store i64 21, ptr %.sroa.5.0..sroa_idx.i824, align 8, !noalias !32145
  %i.ask = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i64 %3, ptr %i.ask, align 8, !noalias !32145
  store i64 2, ptr %i.bc, align 8, !noalias !32145
  call fastcc void @_RINvNtCs2TwJzntlzha_11flatbuffers8verifier12append_traceuECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.bd, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !32145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !32145
  br label %bb.tx

bb.mw:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32155)
  %i.asl = and i64 %3, 3
  %i.asm = icmp eq i64 %i.asl, 0
  %i.asn = insertelement <2 x i64> <i64 3, i64 poison>, i64 %3, i64 1 ; 3 uses
  br i1 %i.asm, label %bb.mx, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema13FixedSizeListEReECs14kWLkQVSKO_14deltalake_core.exit

bb.mx:                                            ; preds = %bb.mw
  %i.aso = tail call i64 @llvm.uadd.sat.i64(i64 %3, i64 4) ; 2 uses
  %i.asp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.asq = load i64, ptr %i.asp, align 8, !alias.scope !32158, !noalias !32159, !noundef !3 ; 9 uses
  %i.asr = icmp ugt i64 %i.aso, %i.asq
  br i1 %i.asr, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema13FixedSizeListEReECs14kWLkQVSKO_14deltalake_core.exit, label %bb.my

bb.my:                                            ; preds = %bb.mx
  %i.ass = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ast = load i64, ptr %i.ass, align 8, !alias.scope !32158, !noalias !32159, !noundef !3
  %i.asu = add i64 %i.ast, 4                      ; 2 uses
  store i64 %i.asu, ptr %i.ass, align 8, !alias.scope !32158, !noalias !32159
  %i.asv = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.asw = load ptr, ptr %i.asv, align 8, !alias.scope !32158, !noalias !32159, !nonnull !3, !align !100, !noundef !3
  %i.asx = getelementptr inbounds nuw i8, ptr %i.asw, i64 16
  %i.asy = load i64, ptr %i.asx, align 8, !noalias !32164, !noundef !3
  %i.asz = icmp ugt i64 %i.asu, %i.asy
  br i1 %i.asz, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema13FixedSizeListEReECs14kWLkQVSKO_14deltalake_core.exit, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i937

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i937: ; preds = %bb.my
  %i.ata = icmp ult i64 %3, %i.asq
  br i1 %i.ata, label %bb.mz, label %bb.na

bb.mz:                                            ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i937
  %i.atb = load ptr, ptr %2, align 8, !alias.scope !32165, !noalias !32166, !nonnull !3, !noundef !3 ; 4 uses
  %i.atc = getelementptr inbounds nuw i8, ptr %i.atb, i64 %3
  %i.atd = load i8, ptr %i.atc, align 1, !noalias !32167, !noundef !3
  %i.ate = or disjoint i64 %3, 1                  ; 3 uses
  %i.atf = icmp ult i64 %i.ate, %i.asq
  br i1 %i.atf, label %bb.nb, label %bb.nc

bb.na:                                            ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i937
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %3, i64 noundef %i.asq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #51, !noalias !32167
  unreachable

bb.nb:                                            ; preds = %bb.mz
  %i.atg = getelementptr inbounds nuw i8, ptr %i.atb, i64 %i.ate
  %i.ath = load i8, ptr %i.atg, align 1, !noalias !32167, !noundef !3
  %i.ati = or disjoint i64 %3, 2                  ; 3 uses
  %i.atj = icmp ult i64 %i.ati, %i.asq
  br i1 %i.atj, label %bb.nd, label %bb.ne

bb.nc:                                            ; preds = %bb.mz
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.ate, i64 noundef %i.asq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #51, !noalias !32167
  unreachable

bb.nd:                                            ; preds = %bb.nb
  %i.atk = or disjoint i64 %3, 3                  ; 3 uses
  %i.atl = icmp ult i64 %i.atk, %i.asq
  br i1 %i.atl, label %bb.ng, label %bb.nf

bb.ne:                                            ; preds = %bb.nb
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.ati, i64 noundef %i.asq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #51, !noalias !32167
  unreachable

bb.nf:                                            ; preds = %bb.nd
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.atk, i64 noundef %i.asq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #51, !noalias !32167
  unreachable

bb.ng:                                            ; preds = %bb.nd
  %i.atm = getelementptr inbounds nuw i8, ptr %i.atb, i64 %i.ati
  %i.atn = load i8, ptr %i.atm, align 1, !noalias !32167, !noundef !3
  %i.ato = getelementptr inbounds nuw i8, ptr %i.atb, i64 %i.atk
  %i.atp = load i8, ptr %i.ato, align 1, !noalias !32167, !noundef !3
  %.sroa.6.0.insert.ext.i.i.i938 = zext i8 %i.atp to i64
  %.sroa.6.0.insert.shift.i.i.i939 = shl nuw nsw i64 %.sroa.6.0.insert.ext.i.i.i938, 24
  %.sroa.5.0.insert.ext.i.i.i940 = zext i8 %i.atn to i64
  %.sroa.5.0.insert.shift.i.i.i941 = shl nuw nsw i64 %.sroa.5.0.insert.ext.i.i.i940, 16
  %.sroa.4.0.insert.ext.i.i.i942 = zext i8 %i.ath to i64
  %.sroa.4.0.insert.shift.i.i.i943 = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i.i942, 8
  %.sroa.0.0.insert.ext.i.i.i944 = zext i8 %i.atd to i64
  %.sroa.5.0.insert.insert.i.i.i945 = or disjoint i64 %.sroa.4.0.insert.shift.i.i.i943, %.sroa.0.0.insert.ext.i.i.i944
  %.sroa.4.0.insert.insert.i.i.i946 = or disjoint i64 %.sroa.5.0.insert.insert.i.i.i945, %.sroa.5.0.insert.shift.i.i.i941
  %.sroa.0.0.insert.insert.i.i.i947 = or disjoint i64 %.sroa.4.0.insert.insert.i.i.i946, %.sroa.6.0.insert.shift.i.i.i939
  %i.atq = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.0.insert.insert.i.i.i947, i64 %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !32168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !32169
  call fastcc void @_RNvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB5_8Verifier11visit_table(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.at, ptr noalias noundef nonnull align 8 dereferenceable(48) %2, i64 noundef %i.atq) #50, !noalias !32173
  %i.atr = load i64, ptr %i.at, align 8, !range !99, !noalias !32169, !noundef !3 ; 2 uses
  %.not.i.i.i948 = icmp eq i64 %i.atr, -9223372036854775798
  %i.ats = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.613.i.i.sroa.0.0.copyload.i949 = load ptr, ptr %i.ats, align 8, !noalias !32169 ; 2 uses
  %.sroa.613.i.i.sroa.6.0..sroa_idx.i950 = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %.sroa.613.i.i.sroa.6.0.copyload.i951 = load i64, ptr %.sroa.613.i.i.sroa.6.0..sroa_idx.i950, align 8, !noalias !32169 ; 2 uses
  %.sroa.613.i.i.sroa.7.0..sroa_idx.i952 = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %.sroa.613.i.i.sroa.7.0.copyload.i953 = load i64, ptr %.sroa.613.i.i.sroa.7.0..sroa_idx.i952, align 8, !noalias !32169 ; 2 uses
  %.sroa.613.i.i.sroa.8.0..sroa_idx.i954 = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %.sroa.613.i.i.sroa.8.0.copyload.i955 = load i64, ptr %.sroa.613.i.i.sroa.8.0..sroa_idx.i954, align 8, !noalias !32169 ; 2 uses
  br i1 %.not.i.i.i948, label %bb.ni, label %bb.nh

bb.nh:                                            ; preds = %bb.ng
  %.sroa.627.0..sroa_idx.i.i.i956 = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %.sroa.17.40.copyload.i957 = load i64, ptr %.sroa.627.0..sroa_idx.i.i.i956, align 8, !noalias !32174
  %.sroa.20.40..sroa.627.0..sroa_idx.i.i.sroa_idx.i958 = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.att = load <2 x i64>, ptr %.sroa.20.40..sroa.627.0..sroa_idx.i.i.sroa_idx.i958, align 8, !noalias !32174
  %.sroa.22.40..sroa.627.0..sroa_idx.i.i.sroa_idx.i962 = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  %.sroa.22.40.copyload.i963 = load i64, ptr %.sroa.22.40..sroa.627.0..sroa_idx.i.i.sroa_idx.i962, align 8, !noalias !32174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !32169
  br label %_RNvXs1Q_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_13FixedSizeListNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i

bb.ni:                                            ; preds = %bb.ng
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !32169
  store ptr %.sroa.613.i.i.sroa.0.0.copyload.i949, ptr %i.as, align 8, !noalias !32169
  %.sroa.613.i.i.sroa.6.0..sroa_idx7.i973 = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 %.sroa.613.i.i.sroa.6.0.copyload.i951, ptr %.sroa.613.i.i.sroa.6.0..sroa_idx7.i973, align 8, !noalias !32169
  %.sroa.613.i.i.sroa.7.0..sroa_idx9.i974 = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i64 %.sroa.613.i.i.sroa.7.0.copyload.i953, ptr %.sroa.613.i.i.sroa.7.0..sroa_idx9.i974, align 8, !noalias !32169
  %.sroa.613.i.i.sroa.8.0..sroa_idx11.i975 = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store i64 %.sroa.613.i.i.sroa.8.0.copyload.i955, ptr %.sroa.613.i.i.sroa.8.0..sroa_idx11.i975, align 8, !noalias !32169
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32178)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !32180
  call void @_RNvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB5_13TableVerifier5deref(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.ar, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.as, i16 noundef 4), !noalias !32182
  %i.atu = load i64, ptr %i.ar, align 8, !range !99, !noalias !32180, !noundef !3 ; 2 uses
  %.not.i.i.i.i976 = icmp eq i64 %i.atu, -9223372036854775798
  %i.atv = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.atw = load i64, ptr %i.atv, align 8, !noalias !32180 ; 2 uses
  %i.atx = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.aty = load i64, ptr %i.atx, align 8, !noalias !32180 ; 6 uses
  br i1 %.not.i.i.i.i976, label %bb.nk, label %bb.nj

bb.nj:                                            ; preds = %bb.ni
  %.sroa.718.0..sroa_idx.i.i.i.i977 = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %.sroa.16.24.copyload.i.i.i978 = load i64, ptr %.sroa.718.0..sroa_idx.i.i.i.i977, align 8, !noalias !32183
  %.sroa.18.24..sroa.718.0..sroa_idx.i.sroa_idx.i.i.i979 = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %.sroa.18.24.copyload.i.i.i980 = load i64, ptr %.sroa.18.24..sroa.718.0..sroa_idx.i.sroa_idx.i.i.i979, align 8, !noalias !32183
  %.sroa.19.24..sroa.718.0..sroa_idx.i.sroa_idx.i.i.i981 = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %.sroa.19.i.i.sroa.0.0.copyload.i982 = load i64, ptr %.sroa.19.24..sroa.718.0..sroa_idx.i.sroa_idx.i.i.i981, align 8, !noalias !32169
  %.sroa.19.i.i.sroa.5.0..sroa.19.24..sroa.718.0..sroa_idx.i.sroa_idx.i.i.sroa_idx.i983 = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.atz = load <2 x i64>, ptr %.sroa.19.i.i.sroa.5.0..sroa.19.24..sroa.718.0..sroa_idx.i.sroa_idx.i.i.sroa_idx.i983, align 8, !noalias !32169
  %.sroa.19.i.i.sroa.7.0..sroa.19.24..sroa.718.0..sroa_idx.i.sroa_idx.i.i.sroa_idx.i987 = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  %.sroa.19.i.i.sroa.7.0.copyload.i988 = load i64, ptr %.sroa.19.i.i.sroa.7.0..sroa.19.24..sroa.718.0..sroa_idx.i.sroa_idx.i.i.sroa_idx.i987, align 8, !noalias !32169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !32180
  br label %bb.nv

bb.nk:                                            ; preds = %bb.ni
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !32180
  %i.aua = trunc nuw i64 %i.atw to i1
  br i1 %i.aua, label %bb.nl, label %bb.nw

bb.nl:                                            ; preds = %bb.nk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !32180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !32180
  %i.aub = load ptr, ptr %i.as, align 8, !alias.scope !32178, !noalias !32184, !nonnull !3, !align !100, !noundef !3 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32185)
  call void @llvm.experimental.noalias.scope.decl(metadata !32188)
  call void @llvm.experimental.noalias.scope.decl(metadata !32190)
  call void @llvm.experimental.noalias.scope.decl(metadata !32193)
  %i.auc = and i64 %i.aty, 3
  %i.aud = icmp eq i64 %i.auc, 0
  br i1 %i.aud, label %bb.nm, label %bb.nn

bb.nm:                                            ; preds = %bb.nl
  %i.aue = call i64 @llvm.uadd.sat.i64(i64 %i.aty, i64 4) ; 2 uses
  %i.auf = getelementptr inbounds nuw i8, ptr %i.aub, i64 8
  %i.aug = load i64, ptr %i.auf, align 8, !alias.scope !32195, !noalias !32196, !noundef !3
  %i.auh = icmp ugt i64 %i.aue, %i.aug
  br i1 %i.auh, label %bb.np, label %bb.no

bb.nn:                                            ; preds = %bb.nl
  store i64 -9223372036854775804, ptr %i.ap, align 8, !alias.scope !32197, !noalias !32198
  %.sroa.242.0..sroa_idx.i.i.i.i.i.i999 = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i64 0, ptr %.sroa.242.0..sroa_idx.i.i.i.i.i.i999, align 8, !alias.scope !32197, !noalias !32198
  %.sroa.343.0..sroa_idx.i.i.i.i.i.i1000 = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.343.0..sroa_idx.i.i.i.i.i.i1000, align 8, !alias.scope !32197, !noalias !32198
  %.sroa.444.0..sroa_idx.i.i.i.i.i.i1001 = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store i64 0, ptr %.sroa.444.0..sroa_idx.i.i.i.i.i.i1001, align 8, !alias.scope !32197, !noalias !32198
  %.sroa.545.0..sroa_idx.i.i.i.i.i.i1002 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store i64 -9223372036854775808, ptr %.sroa.545.0..sroa_idx.i.i.i.i.i.i1002, align 8, !alias.scope !32197, !noalias !32198
  %.sroa.646.0..sroa_idx.i.i.i.i.i.i1003 = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  store ptr @11, ptr %.sroa.646.0..sroa_idx.i.i.i.i.i.i1003, align 8, !alias.scope !32197, !noalias !32198
  %.sroa.747.0..sroa_idx.i.i.i.i.i.i1004 = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  store i64 3, ptr %.sroa.747.0..sroa_idx.i.i.i.i.i.i1004, align 8, !alias.scope !32197, !noalias !32198
  %.sroa.848.0..sroa_idx.i.i.i.i.i.i1005 = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  store i64 %i.aty, ptr %.sroa.848.0..sroa_idx.i.i.i.i.i.i1005, align 8, !alias.scope !32197, !noalias !32198
  br label %bb.ns

bb.no:                                            ; preds = %bb.nm
  %i.aui = getelementptr inbounds nuw i8, ptr %i.aub, i64 40 ; 2 uses
  %i.auj = load i64, ptr %i.aui, align 8, !alias.scope !32195, !noalias !32196, !noundef !3
  %i.auk = add i64 %i.auj, 4                      ; 2 uses
  store i64 %i.auk, ptr %i.aui, align 8, !alias.scope !32195, !noalias !32196
  %i.aul = getelementptr inbounds nuw i8, ptr %i.aub, i64 16
  %i.aum = load ptr, ptr %i.aul, align 8, !alias.scope !32195, !noalias !32196, !nonnull !3, !align !100, !noundef !3
  %i.aun = getelementptr inbounds nuw i8, ptr %i.aum, i64 16
  %i.auo = load i64, ptr %i.aun, align 8, !noalias !32199, !noundef !3
  %i.aup = icmp ugt i64 %i.auk, %i.auo
  br i1 %i.aup, label %bb.nr, label %bb.nq

bb.np:                                            ; preds = %bb.nm
  store i64 -9223372036854775803, ptr %i.ap, align 8, !alias.scope !32197, !noalias !32198
  %.sroa.453.0..sroa_idx.i.i.i.i.i.i1025 = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i64 0, ptr %.sroa.453.0..sroa_idx.i.i.i.i.i.i1025, align 8, !alias.scope !32197, !noalias !32198
  %.sroa.453.sroa.4.0..sroa.453.0..sroa_idx.sroa_idx.i.i.i.i.i.i1026 = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.453.sroa.4.0..sroa.453.0..sroa_idx.sroa_idx.i.i.i.i.i.i1026, align 8, !alias.scope !32197, !noalias !32198
  %.sroa.453.sroa.5.0..sroa.453.0..sroa_idx.sroa_idx.i.i.i.i.i.i1027 = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store i64 0, ptr %.sroa.453.sroa.5.0..sroa.453.0..sroa_idx.sroa_idx.i.i.i.i.i.i1027, align 8, !alias.scope !32197, !noalias !32198
  %.sroa.554.0..sroa_idx.i.i.i.i.i.i1028 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store i64 %i.aty, ptr %.sroa.554.0..sroa_idx.i.i.i.i.i.i1028, align 8, !alias.scope !32197, !noalias !32198
  %.sroa.655.0..sroa_idx.i.i.i.i.i.i1029 = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  store i64 %i.aue, ptr %.sroa.655.0..sroa_idx.i.i.i.i.i.i1029, align 8, !alias.scope !32197, !noalias !32198
  br label %bb.ns

bb.nq:                                            ; preds = %bb.no
  store i64 -9223372036854775798, ptr %i.ap, align 8, !alias.scope !32197, !noalias !32198
  br label %bb.ns

bb.nr:                                            ; preds = %bb.no
  store i64 -9223372036854775800, ptr %i.ap, align 8, !alias.scope !32197, !noalias !32198
  br label %bb.ns

bb.ns:                                            ; preds = %bb.nr, %bb.nq, %bb.np, %bb.nn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !32180
  %i.auq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 -9223372036854775808, ptr %i.auq, align 8, !noalias !32180
  %.sroa.438.0..sroa_idx.i.i.i.i1006 = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store ptr @164, ptr %.sroa.438.0..sroa_idx.i.i.i.i1006, align 8, !noalias !32180
  %.sroa.5.0..sroa_idx.i.i.i.i1007 = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store i64 8, ptr %.sroa.5.0..sroa_idx.i.i.i.i1007, align 8, !noalias !32180
  %i.aur = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %i.aty, ptr %i.aur, align 8, !noalias !32180
  store i64 1, ptr %i.ao, align 8, !noalias !32180
  call fastcc void @_RINvNtCs2TwJzntlzha_11flatbuffers8verifier12append_traceuECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.aq, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.ap, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.ao), !noalias !32200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !32180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !32180
  %i.aus = load i64, ptr %i.aq, align 8, !range !99, !noalias !32180, !noundef !3 ; 2 uses
  %.not37.i.i.i.i1008 = icmp eq i64 %i.aus, -9223372036854775798
  br i1 %.not37.i.i.i.i1008, label %bb.nu, label %bb.nt

bb.nt:                                            ; preds = %bb.ns
  %.sroa.9.0..sroa_idx.i.i.i1009 = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.9.0.copyload.i.i.i1010 = load i64, ptr %.sroa.9.0..sroa_idx.i.i.i1009, align 8, !noalias !32183
  %.sroa.14.0..sroa_idx.i.i.i1011 = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %.sroa.14.0.copyload.i.i.i1012 = load i64, ptr %.sroa.14.0..sroa_idx.i.i.i1011, align 8, !noalias !32183
  %.sroa.16.0..sroa_idx.i.i.i1013 = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %.sroa.16.0.copyload.i.i.i1014 = load i64, ptr %.sroa.16.0..sroa_idx.i.i.i1013, align 8, !noalias !32183
  %.sroa.18.0..sroa_idx.i.i.i1015 = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %.sroa.18.0.copyload.i.i.i1016 = load i64, ptr %.sroa.18.0..sroa_idx.i.i.i1015, align 8, !noalias !32183
  %.sroa.19.0..sroa_idx.i.i.i1017 = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %.sroa.19.i.i.sroa.0.0.copyload13.i1018 = load i64, ptr %.sroa.19.0..sroa_idx.i.i.i1017, align 8, !noalias !32169
  %.sroa.19.i.i.sroa.5.0..sroa.19.0..sroa_idx.i.i.sroa_idx.i1019 = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.aut = load <2 x i64>, ptr %.sroa.19.i.i.sroa.5.0..sroa.19.0..sroa_idx.i.i.sroa_idx.i1019, align 8, !noalias !32169
  %.sroa.19.i.i.sroa.7.0..sroa.19.0..sroa_idx.i.i.sroa_idx.i1023 = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  %.sroa.19.i.i.sroa.7.0.copyload16.i1024 = load i64, ptr %.sroa.19.i.i.sroa.7.0..sroa.19.0..sroa_idx.i.i.sroa_idx.i1023, align 8, !noalias !32169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !32180
  br label %bb.nv

bb.nu:                                            ; preds = %bb.ns
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !32180
  br label %bb.nw

bb.nv:                                            ; preds = %bb.nt, %bb.nj
  %.sroa.19.i.i.sroa.0.0.i989 = phi i64 [ %.sroa.19.i.i.sroa.0.0.copyload13.i1018, %bb.nt ], [ %.sroa.19.i.i.sroa.0.0.copyload.i982, %bb.nj ]
  %.sroa.19.i.i.sroa.7.0.i992 = phi i64 [ %.sroa.19.i.i.sroa.7.0.copyload16.i1024, %bb.nt ], [ %.sroa.19.i.i.sroa.7.0.copyload.i988, %bb.nj ]
  %.sroa.18.1.i.i.i993 = phi i64 [ %.sroa.18.0.copyload.i.i.i1016, %bb.nt ], [ %.sroa.18.24.copyload.i.i.i980, %bb.nj ]
  %.sroa.16.1.i.i.i994 = phi i64 [ %.sroa.16.0.copyload.i.i.i1014, %bb.nt ], [ %.sroa.16.24.copyload.i.i.i978, %bb.nj ]
  %.sroa.14.1.i.i.i995 = phi i64 [ %.sroa.14.0.copyload.i.i.i1012, %bb.nt ], [ %i.aty, %bb.nj ]
  %.sroa.9.1.i.i.i996 = phi i64 [ %.sroa.9.0.copyload.i.i.i1010, %bb.nt ], [ %i.atw, %bb.nj ]
  %.sroa.0.1.i.i.i997 = phi i64 [ %i.aus, %bb.nt ], [ %i.atu, %bb.nj ]
  %i.auu = phi <2 x i64> [ %i.aut, %bb.nt ], [ %i.atz, %bb.nj ]
  %i.auv = inttoptr i64 %.sroa.9.1.i.i.i996 to ptr
  br label %_RNvXs1Q_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_13FixedSizeListNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i

bb.nw:                                            ; preds = %bb.nu, %bb.nk
  %.sroa.9.1.ph.i.i.i998 = load i64, ptr %i.as, align 8, !alias.scope !32201, !noalias !32202
  %i.auw = inttoptr i64 %.sroa.9.1.ph.i.i.i998 to ptr
  %i.aux = getelementptr inbounds nuw i8, ptr %i.auw, i64 24 ; 2 uses
  %i.auy = load i64, ptr %i.aux, align 8, !noalias !32173, !noundef !3
  %i.auz = add i64 %i.auy, -1
  store i64 %i.auz, ptr %i.aux, align 8, !noalias !32173
  br label %_RNvXs1Q_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_13FixedSizeListNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i

_RNvXs1Q_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_13FixedSizeListNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i: ; preds = %bb.nw, %bb.nv, %bb.nh
  %.sroa.7.1.i964 = phi ptr [ undef, %bb.nw ], [ %i.auv, %bb.nv ], [ %.sroa.613.i.i.sroa.0.0.copyload.i949, %bb.nh ]
  %.sroa.22.1.i965 = phi i64 [ undef, %bb.nw ], [ %.sroa.19.i.i.sroa.7.0.i992, %bb.nv ], [ %.sroa.22.40.copyload.i963, %bb.nh ]
  %.sroa.17.1.i968 = phi i64 [ undef, %bb.nw ], [ %.sroa.19.i.i.sroa.0.0.i989, %bb.nv ], [ %.sroa.17.40.copyload.i957, %bb.nh ]
  %.sroa.15.1.i969 = phi i64 [ undef, %bb.nw ], [ %.sroa.18.1.i.i.i993, %bb.nv ], [ %.sroa.613.i.i.sroa.8.0.copyload.i955, %bb.nh ]
  %.sroa.13.1.i970 = phi i64 [ undef, %bb.nw ], [ %.sroa.16.1.i.i.i994, %bb.nv ], [ %.sroa.613.i.i.sroa.7.0.copyload.i953, %bb.nh ]
  %.sroa.11.1.i971 = phi i64 [ undef, %bb.nw ], [ %.sroa.14.1.i.i.i995, %bb.nv ], [ %.sroa.613.i.i.sroa.6.0.copyload.i951, %bb.nh ]
  %.sroa.0.1.i972 = phi i64 [ -9223372036854775798, %bb.nw ], [ %.sroa.0.1.i.i.i997, %bb.nv ], [ %i.atr, %bb.nh ]
  %i.ava = phi <2 x i64> [ undef, %bb.nw ], [ %i.auu, %bb.nv ], [ %i.att, %bb.nh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !32168
  br label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema13FixedSizeListEReECs14kWLkQVSKO_14deltalake_core.exit

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema13FixedSizeListEReECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.mw, %bb.mx, %bb.my, %_RNvXs1Q_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_13FixedSizeListNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i
  %.sroa.7.2.i918 = phi ptr [ %.sroa.7.1.i964, %_RNvXs1Q_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_13FixedSizeListNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ null, %bb.my ], [ null, %bb.mx ], [ null, %bb.mw ]
  %.sroa.22.2.i919 = phi i64 [ %.sroa.22.1.i965, %_RNvXs1Q_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_13FixedSizeListNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ undef, %bb.my ], [ undef, %bb.mx ], [ undef, %bb.mw ]
  %.sroa.17.2.i922 = phi i64 [ %.sroa.17.1.i968, %_RNvXs1Q_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_13FixedSizeListNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ undef, %bb.my ], [ %i.aso, %bb.mx ], [ ptrtoint (ptr @12 to i64), %bb.mw ]
  %.sroa.15.2.i923 = phi i64 [ %.sroa.15.1.i969, %_RNvXs1Q_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_13FixedSizeListNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ undef, %bb.my ], [ %3, %bb.mx ], [ -9223372036854775808, %bb.mw ]
  %.sroa.13.2.i924 = phi i64 [ %.sroa.13.1.i970, %_RNvXs1Q_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_13FixedSizeListNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ 0, %bb.my ], [ 0, %bb.mx ], [ 0, %bb.mw ]
  %.sroa.11.2.i925 = phi i64 [ %.sroa.11.1.i971, %_RNvXs1Q_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_13FixedSizeListNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ 8, %bb.my ], [ 8, %bb.mx ], [ 8, %bb.mw ]
  %.sroa.0.2.i926 = phi i64 [ %.sroa.0.1.i972, %_RNvXs1Q_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_13FixedSizeListNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ -9223372036854775800, %bb.my ], [ -9223372036854775803, %bb.mx ], [ -9223372036854775804, %bb.mw ]
  %i.avb = phi <2 x i64> [ %i.ava, %_RNvXs1Q_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_13FixedSizeListNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ %i.asn, %bb.my ], [ %i.asn, %bb.mx ], [ %i.asn, %bb.mw ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !32203
  store i64 %.sroa.0.2.i926, ptr %i.av, align 8, !noalias !32203
  %.sroa.7.0..sroa_idx.i927 = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %.sroa.7.2.i918, ptr %.sroa.7.0..sroa_idx.i927, align 8, !noalias !32203
  %.sroa.11.0..sroa_idx.i928 = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i64 %.sroa.11.2.i925, ptr %.sroa.11.0..sroa_idx.i928, align 8, !noalias !32203
  %.sroa.13.0..sroa_idx.i929 = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store i64 %.sroa.13.2.i924, ptr %.sroa.13.0..sroa_idx.i929, align 8, !noalias !32203
  %.sroa.15.0..sroa_idx.i930 = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  store i64 %.sroa.15.2.i923, ptr %.sroa.15.0..sroa_idx.i930, align 8, !noalias !32203
  %.sroa.17.0..sroa_idx.i931 = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  store i64 %.sroa.17.2.i922, ptr %.sroa.17.0..sroa_idx.i931, align 8, !noalias !32203
  %.sroa.20.0..sroa_idx.i932 = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  store <2 x i64> %i.avb, ptr %.sroa.20.0..sroa_idx.i932, align 8, !noalias !32203
  %.sroa.22.0..sroa_idx.i934 = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  store i64 %.sroa.22.2.i919, ptr %.sroa.22.0..sroa_idx.i934, align 8, !noalias !32203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !32203
  %i.avc = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i64 -9223372036854775808, ptr %i.avc, align 8, !noalias !32203
  %.sroa.4.0..sroa_idx.i935 = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store ptr @75, ptr %.sroa.4.0..sroa_idx.i935, align 8, !noalias !32203
  %.sroa.5.0..sroa_idx.i936 = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  store i64 19, ptr %.sroa.5.0..sroa_idx.i936, align 8, !noalias !32203
  %i.avd = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 %3, ptr %i.avd, align 8, !noalias !32203
  store i64 2, ptr %i.au, align 8, !noalias !32203
  call fastcc void @_RINvNtCs2TwJzntlzha_11flatbuffers8verifier12append_traceuECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.av, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !32203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !32203
  br label %bb.tx

bb.nx:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32213)
  %i.ave = and i64 %3, 3
  %i.avf = icmp eq i64 %i.ave, 0
  %i.avg = insertelement <2 x i64> <i64 3, i64 poison>, i64 %3, i64 1 ; 3 uses
  br i1 %i.avf, label %bb.ny, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema3MapEReECs14kWLkQVSKO_14deltalake_core.exit

bb.ny:                                            ; preds = %bb.nx
  %i.avh = tail call i64 @llvm.uadd.sat.i64(i64 %3, i64 4) ; 2 uses
  %i.avi = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.avj = load i64, ptr %i.avi, align 8, !alias.scope !32216, !noalias !32217, !noundef !3 ; 9 uses
  %i.avk = icmp ugt i64 %i.avh, %i.avj
  br i1 %i.avk, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema3MapEReECs14kWLkQVSKO_14deltalake_core.exit, label %bb.nz

bb.nz:                                            ; preds = %bb.ny
  %i.avl = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.avm = load i64, ptr %i.avl, align 8, !alias.scope !32216, !noalias !32217, !noundef !3
  %i.avn = add i64 %i.avm, 4                      ; 2 uses
  store i64 %i.avn, ptr %i.avl, align 8, !alias.scope !32216, !noalias !32217
  %i.avo = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.avp = load ptr, ptr %i.avo, align 8, !alias.scope !32216, !noalias !32217, !nonnull !3, !align !100, !noundef !3
  %i.avq = getelementptr inbounds nuw i8, ptr %i.avp, i64 16
  %i.avr = load i64, ptr %i.avq, align 8, !noalias !32222, !noundef !3
  %i.avs = icmp ugt i64 %i.avn, %i.avr
  br i1 %i.avs, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema3MapEReECs14kWLkQVSKO_14deltalake_core.exit, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i1049

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i1049: ; preds = %bb.nz
  %i.avt = icmp ult i64 %3, %i.avj
  br i1 %i.avt, label %bb.oa, label %bb.ob

bb.oa:                                            ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i1049
  %i.avu = load ptr, ptr %2, align 8, !alias.scope !32223, !noalias !32224, !nonnull !3, !noundef !3 ; 4 uses
  %i.avv = getelementptr inbounds nuw i8, ptr %i.avu, i64 %3
  %i.avw = load i8, ptr %i.avv, align 1, !noalias !32225, !noundef !3
  %i.avx = or disjoint i64 %3, 1                  ; 3 uses
  %i.avy = icmp ult i64 %i.avx, %i.avj
  br i1 %i.avy, label %bb.oc, label %bb.od

bb.ob:                                            ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i1049
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %3, i64 noundef %i.avj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #51, !noalias !32225
  unreachable

bb.oc:                                            ; preds = %bb.oa
  %i.avz = getelementptr inbounds nuw i8, ptr %i.avu, i64 %i.avx
  %i.awa = load i8, ptr %i.avz, align 1, !noalias !32225, !noundef !3
  %i.awb = or disjoint i64 %3, 2                  ; 3 uses
  %i.awc = icmp ult i64 %i.awb, %i.avj
  br i1 %i.awc, label %bb.oe, label %bb.of

bb.od:                                            ; preds = %bb.oa
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.avx, i64 noundef %i.avj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #51, !noalias !32225
  unreachable

bb.oe:                                            ; preds = %bb.oc
  %i.awd = or disjoint i64 %3, 3                  ; 3 uses
  %i.awe = icmp ult i64 %i.awd, %i.avj
  br i1 %i.awe, label %bb.oh, label %bb.og

bb.of:                                            ; preds = %bb.oc
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.awb, i64 noundef %i.avj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #51, !noalias !32225
  unreachable

bb.og:                                            ; preds = %bb.oe
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.awd, i64 noundef %i.avj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #51, !noalias !32225
  unreachable

bb.oh:                                            ; preds = %bb.oe
  %i.awf = getelementptr inbounds nuw i8, ptr %i.avu, i64 %i.awb
  %i.awg = load i8, ptr %i.awf, align 1, !noalias !32225, !noundef !3
  %i.awh = getelementptr inbounds nuw i8, ptr %i.avu, i64 %i.awd
  %i.awi = load i8, ptr %i.awh, align 1, !noalias !32225, !noundef !3
  %.sroa.6.0.insert.ext.i.i.i1050 = zext i8 %i.awi to i64
  %.sroa.6.0.insert.shift.i.i.i1051 = shl nuw nsw i64 %.sroa.6.0.insert.ext.i.i.i1050, 24
  %.sroa.5.0.insert.ext.i.i.i1052 = zext i8 %i.awg to i64
  %.sroa.5.0.insert.shift.i.i.i1053 = shl nuw nsw i64 %.sroa.5.0.insert.ext.i.i.i1052, 16
  %.sroa.4.0.insert.ext.i.i.i1054 = zext i8 %i.awa to i64
  %.sroa.4.0.insert.shift.i.i.i1055 = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i.i1054, 8
  %.sroa.0.0.insert.ext.i.i.i1056 = zext i8 %i.avw to i64
  %.sroa.5.0.insert.insert.i.i.i1057 = or disjoint i64 %.sroa.4.0.insert.shift.i.i.i1055, %.sroa.0.0.insert.ext.i.i.i1056
  %.sroa.4.0.insert.insert.i.i.i1058 = or disjoint i64 %.sroa.5.0.insert.insert.i.i.i1057, %.sroa.5.0.insert.shift.i.i.i1053
  %.sroa.0.0.insert.insert.i.i.i1059 = or disjoint i64 %.sroa.4.0.insert.insert.i.i.i1058, %.sroa.6.0.insert.shift.i.i.i1051
  %i.awj = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.0.insert.insert.i.i.i1059, i64 %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !32226
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !32227
  call fastcc void @_RNvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB5_8Verifier11visit_table(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.al, ptr noalias noundef nonnull align 8 dereferenceable(48) %2, i64 noundef %i.awj) #50, !noalias !32231
  %i.awk = load i64, ptr %i.al, align 8, !range !99, !noalias !32227, !noundef !3 ; 2 uses
  %.not.i.i.i1060 = icmp eq i64 %i.awk, -9223372036854775798
  %i.awl = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.613.i.i.sroa.0.0.copyload.i1061 = load ptr, ptr %i.awl, align 8, !noalias !32227 ; 2 uses
  %.sroa.613.i.i.sroa.6.0..sroa_idx.i1062 = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.sroa.613.i.i.sroa.6.0.copyload.i1063 = load i64, ptr %.sroa.613.i.i.sroa.6.0..sroa_idx.i1062, align 8, !noalias !32227 ; 2 uses
  %.sroa.613.i.i.sroa.7.0..sroa_idx.i1064 = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %.sroa.613.i.i.sroa.7.0.copyload.i1065 = load i64, ptr %.sroa.613.i.i.sroa.7.0..sroa_idx.i1064, align 8, !noalias !32227 ; 2 uses
  %.sroa.613.i.i.sroa.8.0..sroa_idx.i1066 = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %.sroa.613.i.i.sroa.8.0.copyload.i1067 = load i64, ptr %.sroa.613.i.i.sroa.8.0..sroa_idx.i1066, align 8, !noalias !32227 ; 2 uses
  br i1 %.not.i.i.i1060, label %bb.oj, label %bb.oi

bb.oi:                                            ; preds = %bb.oh
  %.sroa.627.0..sroa_idx.i.i.i1068 = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %.sroa.17.40.copyload.i1069 = load i64, ptr %.sroa.627.0..sroa_idx.i.i.i1068, align 8, !noalias !32232
  %.sroa.20.40..sroa.627.0..sroa_idx.i.i.sroa_idx.i1070 = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.awm = load <2 x i64>, ptr %.sroa.20.40..sroa.627.0..sroa_idx.i.i.sroa_idx.i1070, align 8, !noalias !32232
  %.sroa.22.40..sroa.627.0..sroa_idx.i.i.sroa_idx.i1074 = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %.sroa.22.40.copyload.i1075 = load i64, ptr %.sroa.22.40..sroa.627.0..sroa_idx.i.i.sroa_idx.i1074, align 8, !noalias !32232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !32227
  br label %_RNvXs1W_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_3MapNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i

bb.oj:                                            ; preds = %bb.oh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !32227
  store ptr %.sroa.613.i.i.sroa.0.0.copyload.i1061, ptr %i.ak, align 8, !noalias !32227
  %.sroa.613.i.i.sroa.6.0..sroa_idx7.i1085 = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 %.sroa.613.i.i.sroa.6.0.copyload.i1063, ptr %.sroa.613.i.i.sroa.6.0..sroa_idx7.i1085, align 8, !noalias !32227
  %.sroa.613.i.i.sroa.7.0..sroa_idx9.i1086 = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 %.sroa.613.i.i.sroa.7.0.copyload.i1065, ptr %.sroa.613.i.i.sroa.7.0..sroa_idx9.i1086, align 8, !noalias !32227
  %.sroa.613.i.i.sroa.8.0..sroa_idx11.i1087 = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store i64 %.sroa.613.i.i.sroa.8.0.copyload.i1067, ptr %.sroa.613.i.i.sroa.8.0..sroa_idx11.i1087, align 8, !noalias !32227
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32236)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !32238
  call void @_RNvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB5_13TableVerifier5deref(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.aj, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ak, i16 noundef 4), !noalias !32240
  %i.awn = load i64, ptr %i.aj, align 8, !range !99, !noalias !32238, !noundef !3 ; 2 uses
  %.not.i.i.i.i1088 = icmp eq i64 %i.awn, -9223372036854775798
  %i.awo = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.awp = load i64, ptr %i.awo, align 8, !noalias !32238 ; 2 uses
  %i.awq = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.awr = load i64, ptr %i.awq, align 8, !noalias !32238 ; 4 uses
  br i1 %.not.i.i.i.i1088, label %bb.ol, label %bb.ok

bb.ok:                                            ; preds = %bb.oj
  %.sroa.718.0..sroa_idx.i.i.i.i1089 = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %.sroa.16.24.copyload.i.i.i1090 = load i64, ptr %.sroa.718.0..sroa_idx.i.i.i.i1089, align 8, !noalias !32241
  %.sroa.18.24..sroa.718.0..sroa_idx.i.sroa_idx.i.i.i1091 = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %.sroa.18.24.copyload.i.i.i1092 = load i64, ptr %.sroa.18.24..sroa.718.0..sroa_idx.i.sroa_idx.i.i.i1091, align 8, !noalias !32241
  %.sroa.19.24..sroa.718.0..sroa_idx.i.sroa_idx.i.i.i1093 = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %.sroa.19.i.i.sroa.0.0.copyload.i1094 = load i64, ptr %.sroa.19.24..sroa.718.0..sroa_idx.i.sroa_idx.i.i.i1093, align 8, !noalias !32227
  %.sroa.19.i.i.sroa.5.0..sroa.19.24..sroa.718.0..sroa_idx.i.sroa_idx.i.i.sroa_idx.i1095 = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.aws = load <2 x i64>, ptr %.sroa.19.i.i.sroa.5.0..sroa.19.24..sroa.718.0..sroa_idx.i.sroa_idx.i.i.sroa_idx.i1095, align 8, !noalias !32227
  %.sroa.19.i.i.sroa.7.0..sroa.19.24..sroa.718.0..sroa_idx.i.sroa_idx.i.i.sroa_idx.i1099 = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %.sroa.19.i.i.sroa.7.0.copyload.i1100 = load i64, ptr %.sroa.19.i.i.sroa.7.0..sroa.19.24..sroa.718.0..sroa_idx.i.sroa_idx.i.i.sroa_idx.i1099, align 8, !noalias !32227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !32238
  br label %bb.ou

bb.ol:                                            ; preds = %bb.oj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !32238
  %i.awt = trunc nuw i64 %i.awp to i1
  br i1 %i.awt, label %bb.om, label %bb.ov

bb.om:                                            ; preds = %bb.ol
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !32238
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !32238
  %i.awu = load ptr, ptr %i.ak, align 8, !alias.scope !32236, !noalias !32242, !nonnull !3, !align !100, !noundef !3 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32243)
  call void @llvm.experimental.noalias.scope.decl(metadata !32246)
  call void @llvm.experimental.noalias.scope.decl(metadata !32248)
  call void @llvm.experimental.noalias.scope.decl(metadata !32251)
  %i.awv = call i64 @llvm.uadd.sat.i64(i64 %i.awr, i64 1) ; 2 uses
  %i.aww = getelementptr inbounds nuw i8, ptr %i.awu, i64 8
  %i.awx = load i64, ptr %i.aww, align 8, !alias.scope !32253, !noalias !32254, !noundef !3
  %i.awy = icmp ugt i64 %i.awv, %i.awx
  br i1 %i.awy, label %bb.oo, label %bb.on

bb.on:                                            ; preds = %bb.om
  %i.awz = getelementptr inbounds nuw i8, ptr %i.awu, i64 40 ; 2 uses
  %i.axa = load i64, ptr %i.awz, align 8, !alias.scope !32253, !noalias !32254, !noundef !3
  %i.axb = add i64 %i.axa, 1                      ; 2 uses
  store i64 %i.axb, ptr %i.awz, align 8, !alias.scope !32253, !noalias !32254
  %i.axc = getelementptr inbounds nuw i8, ptr %i.awu, i64 16
  %i.axd = load ptr, ptr %i.axc, align 8, !alias.scope !32253, !noalias !32254, !nonnull !3, !align !100, !noundef !3
  %i.axe = getelementptr inbounds nuw i8, ptr %i.axd, i64 16
  %i.axf = load i64, ptr %i.axe, align 8, !noalias !32255, !noundef !3
  %i.axg = icmp ugt i64 %i.axb, %i.axf
  br i1 %i.axg, label %bb.oq, label %bb.op

bb.oo:                                            ; preds = %bb.om
  store i64 -9223372036854775803, ptr %i.ah, align 8, !alias.scope !32256, !noalias !32257
  %.sroa.453.0..sroa_idx.i.i.i.i.i.i1130 = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 0, ptr %.sroa.453.0..sroa_idx.i.i.i.i.i.i1130, align 8, !alias.scope !32256, !noalias !32257
  %.sroa.453.sroa.4.0..sroa.453.0..sroa_idx.sroa_idx.i.i.i.i.i.i1131 = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.453.sroa.4.0..sroa.453.0..sroa_idx.sroa_idx.i.i.i.i.i.i1131, align 8, !alias.scope !32256, !noalias !32257
  %.sroa.453.sroa.5.0..sroa.453.0..sroa_idx.sroa_idx.i.i.i.i.i.i1132 = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store i64 0, ptr %.sroa.453.sroa.5.0..sroa.453.0..sroa_idx.sroa_idx.i.i.i.i.i.i1132, align 8, !alias.scope !32256, !noalias !32257
  %.sroa.554.0..sroa_idx.i.i.i.i.i.i1133 = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store i64 %i.awr, ptr %.sroa.554.0..sroa_idx.i.i.i.i.i.i1133, align 8, !alias.scope !32256, !noalias !32257
  %.sroa.655.0..sroa_idx.i.i.i.i.i.i1134 = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  store i64 %i.awv, ptr %.sroa.655.0..sroa_idx.i.i.i.i.i.i1134, align 8, !alias.scope !32256, !noalias !32257
  br label %bb.or

bb.op:                                            ; preds = %bb.on
  store i64 -9223372036854775798, ptr %i.ah, align 8, !alias.scope !32256, !noalias !32257
  br label %bb.or

bb.oq:                                            ; preds = %bb.on
  store i64 -9223372036854775800, ptr %i.ah, align 8, !alias.scope !32256, !noalias !32257
  br label %bb.or

bb.or:                                            ; preds = %bb.oq, %bb.op, %bb.oo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !32238
  %i.axh = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 -9223372036854775808, ptr %i.axh, align 8, !noalias !32238
  %.sroa.438.0..sroa_idx.i.i.i.i1111 = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr @165, ptr %.sroa.438.0..sroa_idx.i.i.i.i1111, align 8, !noalias !32238
  %.sroa.5.0..sroa_idx.i.i.i.i1112 = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  store i64 10, ptr %.sroa.5.0..sroa_idx.i.i.i.i1112, align 8, !noalias !32238
  %i.axi = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 %i.awr, ptr %i.axi, align 8, !noalias !32238
  store i64 1, ptr %i.ag, align 8, !noalias !32238
  call fastcc void @_RINvNtCs2TwJzntlzha_11flatbuffers8verifier12append_traceuECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.ai, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.ah, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.ag), !noalias !32258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !32238
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !32238
  %i.axj = load i64, ptr %i.ai, align 8, !range !99, !noalias !32238, !noundef !3 ; 2 uses
  %.not37.i.i.i.i1113 = icmp eq i64 %i.axj, -9223372036854775798
  br i1 %.not37.i.i.i.i1113, label %bb.ot, label %bb.os

bb.os:                                            ; preds = %bb.or
  %.sroa.9.0..sroa_idx.i.i.i1114 = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.9.0.copyload.i.i.i1115 = load i64, ptr %.sroa.9.0..sroa_idx.i.i.i1114, align 8, !noalias !32241
  %.sroa.14.0..sroa_idx.i.i.i1116 = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.14.0.copyload.i.i.i1117 = load i64, ptr %.sroa.14.0..sroa_idx.i.i.i1116, align 8, !noalias !32241
  %.sroa.16.0..sroa_idx.i.i.i1118 = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %.sroa.16.0.copyload.i.i.i1119 = load i64, ptr %.sroa.16.0..sroa_idx.i.i.i1118, align 8, !noalias !32241
  %.sroa.18.0..sroa_idx.i.i.i1120 = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %.sroa.18.0.copyload.i.i.i1121 = load i64, ptr %.sroa.18.0..sroa_idx.i.i.i1120, align 8, !noalias !32241
  %.sroa.19.0..sroa_idx.i.i.i1122 = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %.sroa.19.i.i.sroa.0.0.copyload13.i1123 = load i64, ptr %.sroa.19.0..sroa_idx.i.i.i1122, align 8, !noalias !32227
  %.sroa.19.i.i.sroa.5.0..sroa.19.0..sroa_idx.i.i.sroa_idx.i1124 = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.axk = load <2 x i64>, ptr %.sroa.19.i.i.sroa.5.0..sroa.19.0..sroa_idx.i.i.sroa_idx.i1124, align 8, !noalias !32227
  %.sroa.19.i.i.sroa.7.0..sroa.19.0..sroa_idx.i.i.sroa_idx.i1128 = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  %.sroa.19.i.i.sroa.7.0.copyload16.i1129 = load i64, ptr %.sroa.19.i.i.sroa.7.0..sroa.19.0..sroa_idx.i.i.sroa_idx.i1128, align 8, !noalias !32227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !32238
  br label %bb.ou

bb.ot:                                            ; preds = %bb.or
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !32238
  br label %bb.ov

bb.ou:                                            ; preds = %bb.os, %bb.ok
  %.sroa.19.i.i.sroa.0.0.i1101 = phi i64 [ %.sroa.19.i.i.sroa.0.0.copyload13.i1123, %bb.os ], [ %.sroa.19.i.i.sroa.0.0.copyload.i1094, %bb.ok ]
  %.sroa.19.i.i.sroa.7.0.i1104 = phi i64 [ %.sroa.19.i.i.sroa.7.0.copyload16.i1129, %bb.os ], [ %.sroa.19.i.i.sroa.7.0.copyload.i1100, %bb.ok ]
  %.sroa.18.1.i.i.i1105 = phi i64 [ %.sroa.18.0.copyload.i.i.i1121, %bb.os ], [ %.sroa.18.24.copyload.i.i.i1092, %bb.ok ]
  %.sroa.16.1.i.i.i1106 = phi i64 [ %.sroa.16.0.copyload.i.i.i1119, %bb.os ], [ %.sroa.16.24.copyload.i.i.i1090, %bb.ok ]
  %.sroa.14.1.i.i.i1107 = phi i64 [ %.sroa.14.0.copyload.i.i.i1117, %bb.os ], [ %i.awr, %bb.ok ]
  %.sroa.9.1.i.i.i1108 = phi i64 [ %.sroa.9.0.copyload.i.i.i1115, %bb.os ], [ %i.awp, %bb.ok ]
  %.sroa.0.1.i.i.i1109 = phi i64 [ %i.axj, %bb.os ], [ %i.awn, %bb.ok ]
  %i.axl = phi <2 x i64> [ %i.axk, %bb.os ], [ %i.aws, %bb.ok ]
  %i.axm = inttoptr i64 %.sroa.9.1.i.i.i1108 to ptr
  br label %_RNvXs1W_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_3MapNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i

bb.ov:                                            ; preds = %bb.ot, %bb.ol
  %.sroa.9.1.ph.i.i.i1110 = load i64, ptr %i.ak, align 8, !alias.scope !32259, !noalias !32260
  %i.axn = inttoptr i64 %.sroa.9.1.ph.i.i.i1110 to ptr
  %i.axo = getelementptr inbounds nuw i8, ptr %i.axn, i64 24 ; 2 uses
  %i.axp = load i64, ptr %i.axo, align 8, !noalias !32231, !noundef !3
  %i.axq = add i64 %i.axp, -1
  store i64 %i.axq, ptr %i.axo, align 8, !noalias !32231
  br label %_RNvXs1W_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_3MapNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i

_RNvXs1W_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_3MapNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i: ; preds = %bb.ov, %bb.ou, %bb.oi
  %.sroa.7.1.i1076 = phi ptr [ undef, %bb.ov ], [ %i.axm, %bb.ou ], [ %.sroa.613.i.i.sroa.0.0.copyload.i1061, %bb.oi ]
  %.sroa.22.1.i1077 = phi i64 [ undef, %bb.ov ], [ %.sroa.19.i.i.sroa.7.0.i1104, %bb.ou ], [ %.sroa.22.40.copyload.i1075, %bb.oi ]
  %.sroa.17.1.i1080 = phi i64 [ undef, %bb.ov ], [ %.sroa.19.i.i.sroa.0.0.i1101, %bb.ou ], [ %.sroa.17.40.copyload.i1069, %bb.oi ]
  %.sroa.15.1.i1081 = phi i64 [ undef, %bb.ov ], [ %.sroa.18.1.i.i.i1105, %bb.ou ], [ %.sroa.613.i.i.sroa.8.0.copyload.i1067, %bb.oi ]
  %.sroa.13.1.i1082 = phi i64 [ undef, %bb.ov ], [ %.sroa.16.1.i.i.i1106, %bb.ou ], [ %.sroa.613.i.i.sroa.7.0.copyload.i1065, %bb.oi ]
  %.sroa.11.1.i1083 = phi i64 [ undef, %bb.ov ], [ %.sroa.14.1.i.i.i1107, %bb.ou ], [ %.sroa.613.i.i.sroa.6.0.copyload.i1063, %bb.oi ]
  %.sroa.0.1.i1084 = phi i64 [ -9223372036854775798, %bb.ov ], [ %.sroa.0.1.i.i.i1109, %bb.ou ], [ %i.awk, %bb.oi ]
  %i.axr = phi <2 x i64> [ undef, %bb.ov ], [ %i.axl, %bb.ou ], [ %i.awm, %bb.oi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !32226
  br label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema3MapEReECs14kWLkQVSKO_14deltalake_core.exit

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema3MapEReECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.nx, %bb.ny, %bb.nz, %_RNvXs1W_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_3MapNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i
  %.sroa.7.2.i1030 = phi ptr [ %.sroa.7.1.i1076, %_RNvXs1W_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_3MapNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ null, %bb.nz ], [ null, %bb.ny ], [ null, %bb.nx ]
  %.sroa.22.2.i1031 = phi i64 [ %.sroa.22.1.i1077, %_RNvXs1W_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_3MapNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ undef, %bb.nz ], [ undef, %bb.ny ], [ undef, %bb.nx ]
  %.sroa.17.2.i1034 = phi i64 [ %.sroa.17.1.i1080, %_RNvXs1W_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_3MapNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ undef, %bb.nz ], [ %i.avh, %bb.ny ], [ ptrtoint (ptr @12 to i64), %bb.nx ]
  %.sroa.15.2.i1035 = phi i64 [ %.sroa.15.1.i1081, %_RNvXs1W_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_3MapNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ undef, %bb.nz ], [ %3, %bb.ny ], [ -9223372036854775808, %bb.nx ]
  %.sroa.13.2.i1036 = phi i64 [ %.sroa.13.1.i1082, %_RNvXs1W_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_3MapNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ 0, %bb.nz ], [ 0, %bb.ny ], [ 0, %bb.nx ]
  %.sroa.11.2.i1037 = phi i64 [ %.sroa.11.1.i1083, %_RNvXs1W_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_3MapNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ 8, %bb.nz ], [ 8, %bb.ny ], [ 8, %bb.nx ]
  %.sroa.0.2.i1038 = phi i64 [ %.sroa.0.1.i1084, %_RNvXs1W_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_3MapNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ -9223372036854775800, %bb.nz ], [ -9223372036854775803, %bb.ny ], [ -9223372036854775804, %bb.nx ]
  %i.axs = phi <2 x i64> [ %i.axr, %_RNvXs1W_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_3MapNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ %i.avg, %bb.nz ], [ %i.avg, %bb.ny ], [ %i.avg, %bb.nx ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !32261
  store i64 %.sroa.0.2.i1038, ptr %i.an, align 8, !noalias !32261
  %.sroa.7.0..sroa_idx.i1039 = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %.sroa.7.2.i1030, ptr %.sroa.7.0..sroa_idx.i1039, align 8, !noalias !32261
  %.sroa.11.0..sroa_idx.i1040 = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 %.sroa.11.2.i1037, ptr %.sroa.11.0..sroa_idx.i1040, align 8, !noalias !32261
  %.sroa.13.0..sroa_idx.i1041 = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store i64 %.sroa.13.2.i1036, ptr %.sroa.13.0..sroa_idx.i1041, align 8, !noalias !32261
  %.sroa.15.0..sroa_idx.i1042 = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  store i64 %.sroa.15.2.i1035, ptr %.sroa.15.0..sroa_idx.i1042, align 8, !noalias !32261
  %.sroa.17.0..sroa_idx.i1043 = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  store i64 %.sroa.17.2.i1034, ptr %.sroa.17.0..sroa_idx.i1043, align 8, !noalias !32261
  %.sroa.20.0..sroa_idx.i1044 = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  store <2 x i64> %i.axs, ptr %.sroa.20.0..sroa_idx.i1044, align 8, !noalias !32261
  %.sroa.22.0..sroa_idx.i1046 = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  store i64 %.sroa.22.2.i1031, ptr %.sroa.22.0..sroa_idx.i1046, align 8, !noalias !32261
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !32261
  %i.axt = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 -9223372036854775808, ptr %i.axt, align 8, !noalias !32261
  %.sroa.4.0..sroa_idx.i1047 = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store ptr @76, ptr %.sroa.4.0..sroa_idx.i1047, align 8, !noalias !32261
  %.sroa.5.0..sroa_idx.i1048 = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store i64 9, ptr %.sroa.5.0..sroa_idx.i1048, align 8, !noalias !32261
  %i.axu = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 %3, ptr %i.axu, align 8, !noalias !32261
  store i64 2, ptr %i.am, align 8, !noalias !32261
  call fastcc void @_RINvNtCs2TwJzntlzha_11flatbuffers8verifier12append_traceuECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.an, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !32261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !32261
  br label %bb.tx

bb.ow:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32262)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32268)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32271)
  %i.axv = and i64 %3, 3
  %i.axw = icmp eq i64 %i.axv, 0
  %i.axx = insertelement <2 x i64> <i64 3, i64 poison>, i64 %3, i64 1 ; 3 uses
  br i1 %i.axw, label %bb.ox, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema8DurationEReECs14kWLkQVSKO_14deltalake_core.exit

bb.ox:                                            ; preds = %bb.ow
  %i.axy = tail call i64 @llvm.uadd.sat.i64(i64 %3, i64 4) ; 2 uses
  %i.axz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aya = load i64, ptr %i.axz, align 8, !alias.scope !32274, !noalias !32275, !noundef !3 ; 9 uses
  %i.ayb = icmp ugt i64 %i.axy, %i.aya
  br i1 %i.ayb, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema8DurationEReECs14kWLkQVSKO_14deltalake_core.exit, label %bb.oy

bb.oy:                                            ; preds = %bb.ox
  %i.ayc = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ayd = load i64, ptr %i.ayc, align 8, !alias.scope !32274, !noalias !32275, !noundef !3
  %i.aye = add i64 %i.ayd, 4                      ; 2 uses
  store i64 %i.aye, ptr %i.ayc, align 8, !alias.scope !32274, !noalias !32275
  %i.ayf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ayg = load ptr, ptr %i.ayf, align 8, !alias.scope !32274, !noalias !32275, !nonnull !3, !align !100, !noundef !3
  %i.ayh = getelementptr inbounds nuw i8, ptr %i.ayg, i64 16
  %i.ayi = load i64, ptr %i.ayh, align 8, !noalias !32280, !noundef !3
  %i.ayj = icmp ugt i64 %i.aye, %i.ayi
  br i1 %i.ayj, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema8DurationEReECs14kWLkQVSKO_14deltalake_core.exit, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i1154

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i1154: ; preds = %bb.oy
  %i.ayk = icmp ult i64 %3, %i.aya
  br i1 %i.ayk, label %bb.oz, label %bb.pa

bb.oz:                                            ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i1154
  %i.ayl = load ptr, ptr %2, align 8, !alias.scope !32281, !noalias !32282, !nonnull !3, !noundef !3 ; 4 uses
  %i.aym = getelementptr inbounds nuw i8, ptr %i.ayl, i64 %3
  %i.ayn = load i8, ptr %i.aym, align 1, !noalias !32283, !noundef !3
  %i.ayo = or disjoint i64 %3, 1                  ; 3 uses
  %i.ayp = icmp ult i64 %i.ayo, %i.aya
  br i1 %i.ayp, label %bb.pb, label %bb.pc

bb.pa:                                            ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i1154
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %3, i64 noundef %i.aya, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #51, !noalias !32283
  unreachable

bb.pb:                                            ; preds = %bb.oz
  %i.ayq = getelementptr inbounds nuw i8, ptr %i.ayl, i64 %i.ayo
  %i.ayr = load i8, ptr %i.ayq, align 1, !noalias !32283, !noundef !3
  %i.ays = or disjoint i64 %3, 2                  ; 3 uses
  %i.ayt = icmp ult i64 %i.ays, %i.aya
  br i1 %i.ayt, label %bb.pd, label %bb.pe

bb.pc:                                            ; preds = %bb.oz
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.ayo, i64 noundef %i.aya, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #51, !noalias !32283
  unreachable

bb.pd:                                            ; preds = %bb.pb
  %i.ayu = or disjoint i64 %3, 3                  ; 3 uses
  %i.ayv = icmp ult i64 %i.ayu, %i.aya
  br i1 %i.ayv, label %bb.pg, label %bb.pf

bb.pe:                                            ; preds = %bb.pb
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.ays, i64 noundef %i.aya, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #51, !noalias !32283
  unreachable

bb.pf:                                            ; preds = %bb.pd
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.ayu, i64 noundef %i.aya, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #51, !noalias !32283
  unreachable

bb.pg:                                            ; preds = %bb.pd
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.ayl, i64 %i.ays
  %i.ayx = load i8, ptr %i.ayw, align 1, !noalias !32283, !noundef !3
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.ayl, i64 %i.ayu
  %i.ayz = load i8, ptr %i.ayy, align 1, !noalias !32283, !noundef !3
  %.sroa.6.0.insert.ext.i.i.i1155 = zext i8 %i.ayz to i64
  %.sroa.6.0.insert.shift.i.i.i1156 = shl nuw nsw i64 %.sroa.6.0.insert.ext.i.i.i1155, 24
  %.sroa.5.0.insert.ext.i.i.i1157 = zext i8 %i.ayx to i64
  %.sroa.5.0.insert.shift.i.i.i1158 = shl nuw nsw i64 %.sroa.5.0.insert.ext.i.i.i1157, 16
  %.sroa.4.0.insert.ext.i.i.i1159 = zext i8 %i.ayr to i64
  %.sroa.4.0.insert.shift.i.i.i1160 = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i.i1159, 8
  %.sroa.0.0.insert.ext.i.i.i1161 = zext i8 %i.ayn to i64
  %.sroa.5.0.insert.insert.i.i.i1162 = or disjoint i64 %.sroa.4.0.insert.shift.i.i.i1160, %.sroa.0.0.insert.ext.i.i.i1161
  %.sroa.4.0.insert.insert.i.i.i1163 = or disjoint i64 %.sroa.5.0.insert.insert.i.i.i1162, %.sroa.5.0.insert.shift.i.i.i1158
  %.sroa.0.0.insert.insert.i.i.i1164 = or disjoint i64 %.sroa.4.0.insert.insert.i.i.i1163, %.sroa.6.0.insert.shift.i.i.i1156
  %i.aza = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.0.insert.insert.i.i.i1164, i64 %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !32284
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !32285
  call fastcc void @_RNvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB5_8Verifier11visit_table(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.ad, ptr noalias noundef nonnull align 8 dereferenceable(48) %2, i64 noundef %i.aza) #50, !noalias !32289
  %i.azb = load i64, ptr %i.ad, align 8, !range !99, !noalias !32285, !noundef !3 ; 2 uses
  %.not.i.i.i1165 = icmp eq i64 %i.azb, -9223372036854775798
  %i.azc = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.613.i.i.sroa.0.0.copyload.i1166 = load ptr, ptr %i.azc, align 8, !noalias !32285 ; 2 uses
  %.sroa.613.i.i.sroa.6.0..sroa_idx.i1167 = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.613.i.i.sroa.6.0.copyload.i1168 = load i64, ptr %.sroa.613.i.i.sroa.6.0..sroa_idx.i1167, align 8, !noalias !32285 ; 2 uses
  %.sroa.613.i.i.sroa.7.0..sroa_idx.i1169 = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.613.i.i.sroa.7.0.copyload.i1170 = load i64, ptr %.sroa.613.i.i.sroa.7.0..sroa_idx.i1169, align 8, !noalias !32285 ; 2 uses
  %.sroa.613.i.i.sroa.8.0..sroa_idx.i1171 = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %.sroa.613.i.i.sroa.8.0.copyload.i1172 = load i64, ptr %.sroa.613.i.i.sroa.8.0..sroa_idx.i1171, align 8, !noalias !32285 ; 2 uses
  br i1 %.not.i.i.i1165, label %bb.pi, label %bb.ph

bb.ph:                                            ; preds = %bb.pg
  %.sroa.627.0..sroa_idx.i.i.i1173 = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %.sroa.17.40.copyload.i1174 = load i64, ptr %.sroa.627.0..sroa_idx.i.i.i1173, align 8, !noalias !32290
  %.sroa.20.40..sroa.627.0..sroa_idx.i.i.sroa_idx.i1175 = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.azd = load <2 x i64>, ptr %.sroa.20.40..sroa.627.0..sroa_idx.i.i.sroa_idx.i1175, align 8, !noalias !32290
  %.sroa.22.40..sroa.627.0..sroa_idx.i.i.sroa_idx.i1179 = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %.sroa.22.40.copyload.i1180 = load i64, ptr %.sroa.22.40..sroa.627.0..sroa_idx.i.i.sroa_idx.i1179, align 8, !noalias !32290
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !32285
  br label %_RNvXs3G_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_8DurationNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i

bb.pi:                                            ; preds = %bb.pg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !32285
  store ptr %.sroa.613.i.i.sroa.0.0.copyload.i1166, ptr %i.ac, align 8, !noalias !32285
  %.sroa.613.i.i.sroa.6.0..sroa_idx7.i1190 = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %.sroa.613.i.i.sroa.6.0.copyload.i1168, ptr %.sroa.613.i.i.sroa.6.0..sroa_idx7.i1190, align 8, !noalias !32285
  %.sroa.613.i.i.sroa.7.0..sroa_idx9.i1191 = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 %.sroa.613.i.i.sroa.7.0.copyload.i1170, ptr %.sroa.613.i.i.sroa.7.0..sroa_idx9.i1191, align 8, !noalias !32285
  %.sroa.613.i.i.sroa.8.0..sroa_idx11.i1192 = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i64 %.sroa.613.i.i.sroa.8.0.copyload.i1172, ptr %.sroa.613.i.i.sroa.8.0..sroa_idx11.i1192, align 8, !noalias !32285
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32291)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32294)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !32296
  call void @_RNvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB5_13TableVerifier5deref(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.ab, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ac, i16 noundef 4), !noalias !32297
  %i.aze = load i64, ptr %i.ab, align 8, !range !99, !noalias !32296, !noundef !3 ; 2 uses
  %.not.i.i.i.i1193 = icmp eq i64 %i.aze, -9223372036854775798
  %i.azf = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.azg = load i64, ptr %i.azf, align 8, !noalias !32296 ; 2 uses
  %i.azh = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.azi = load i64, ptr %i.azh, align 8, !noalias !32296 ; 6 uses
  br i1 %.not.i.i.i.i1193, label %bb.pk, label %bb.pj

bb.pj:                                            ; preds = %bb.pi
  %.sroa.718.0..sroa_idx.i.i.i.i1194 = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %.sroa.16.24.copyload.i.i.i1195 = load i64, ptr %.sroa.718.0..sroa_idx.i.i.i.i1194, align 8, !noalias !32298
  %.sroa.18.24..sroa.718.0..sroa_idx.i.sroa_idx.i.i.i1196 = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %.sroa.18.24.copyload.i.i.i1197 = load i64, ptr %.sroa.18.24..sroa.718.0..sroa_idx.i.sroa_idx.i.i.i1196, align 8, !noalias !32298
  %.sroa.19.24..sroa.718.0..sroa_idx.i.sroa_idx.i.i.i1198 = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %.sroa.19.i.i.sroa.0.0.copyload.i1199 = load i64, ptr %.sroa.19.24..sroa.718.0..sroa_idx.i.sroa_idx.i.i.i1198, align 8, !noalias !32285
  %.sroa.19.i.i.sroa.5.0..sroa.19.24..sroa.718.0..sroa_idx.i.sroa_idx.i.i.sroa_idx.i1200 = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.azj = load <2 x i64>, ptr %.sroa.19.i.i.sroa.5.0..sroa.19.24..sroa.718.0..sroa_idx.i.sroa_idx.i.i.sroa_idx.i1200, align 8, !noalias !32285
  %.sroa.19.i.i.sroa.7.0..sroa.19.24..sroa.718.0..sroa_idx.i.sroa_idx.i.i.sroa_idx.i1204 = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %.sroa.19.i.i.sroa.7.0.copyload.i1205 = load i64, ptr %.sroa.19.i.i.sroa.7.0..sroa.19.24..sroa.718.0..sroa_idx.i.sroa_idx.i.i.sroa_idx.i1204, align 8, !noalias !32285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !32296
  br label %bb.pv

bb.pk:                                            ; preds = %bb.pi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !32296
  %i.azk = trunc nuw i64 %i.azg to i1
  br i1 %i.azk, label %bb.pl, label %bb.pw

bb.pl:                                            ; preds = %bb.pk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !32296
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !32296
  %i.azl = load ptr, ptr %i.ac, align 8, !alias.scope !32294, !noalias !32299, !nonnull !3, !align !100, !noundef !3 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32300)
  call void @llvm.experimental.noalias.scope.decl(metadata !32303)
  call void @llvm.experimental.noalias.scope.decl(metadata !32305)
  call void @llvm.experimental.noalias.scope.decl(metadata !32308)
  %i.azm = and i64 %i.azi, 1
  %i.azn = icmp eq i64 %i.azm, 0
  br i1 %i.azn, label %bb.pm, label %bb.pn

bb.pm:                                            ; preds = %bb.pl
  %i.azo = call i64 @llvm.uadd.sat.i64(i64 %i.azi, i64 2) ; 2 uses
  %i.azp = getelementptr inbounds nuw i8, ptr %i.azl, i64 8
  %i.azq = load i64, ptr %i.azp, align 8, !alias.scope !32310, !noalias !32311, !noundef !3
  %i.azr = icmp ugt i64 %i.azo, %i.azq
  br i1 %i.azr, label %bb.pp, label %bb.po

bb.pn:                                            ; preds = %bb.pl
  store i64 -9223372036854775804, ptr %i.z, align 8, !alias.scope !32312, !noalias !32313
  %.sroa.242.0..sroa_idx.i.i.i.i.i.i1216 = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 0, ptr %.sroa.242.0..sroa_idx.i.i.i.i.i.i1216, align 8, !alias.scope !32312, !noalias !32313
  %.sroa.343.0..sroa_idx.i.i.i.i.i.i1217 = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.343.0..sroa_idx.i.i.i.i.i.i1217, align 8, !alias.scope !32312, !noalias !32313
  %.sroa.444.0..sroa_idx.i.i.i.i.i.i1218 = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i64 0, ptr %.sroa.444.0..sroa_idx.i.i.i.i.i.i1218, align 8, !alias.scope !32312, !noalias !32313
  %.sroa.545.0..sroa_idx.i.i.i.i.i.i1219 = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store i64 -9223372036854775808, ptr %.sroa.545.0..sroa_idx.i.i.i.i.i.i1219, align 8, !alias.scope !32312, !noalias !32313
  %.sroa.646.0..sroa_idx.i.i.i.i.i.i1220 = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  store ptr @13, ptr %.sroa.646.0..sroa_idx.i.i.i.i.i.i1220, align 8, !alias.scope !32312, !noalias !32313
  %.sroa.747.0..sroa_idx.i.i.i.i.i.i1221 = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  store i64 3, ptr %.sroa.747.0..sroa_idx.i.i.i.i.i.i1221, align 8, !alias.scope !32312, !noalias !32313
  %.sroa.848.0..sroa_idx.i.i.i.i.i.i1222 = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  store i64 %i.azi, ptr %.sroa.848.0..sroa_idx.i.i.i.i.i.i1222, align 8, !alias.scope !32312, !noalias !32313
  br label %bb.ps

bb.po:                                            ; preds = %bb.pm
  %i.azs = getelementptr inbounds nuw i8, ptr %i.azl, i64 40 ; 2 uses
  %i.azt = load i64, ptr %i.azs, align 8, !alias.scope !32310, !noalias !32311, !noundef !3
  %i.azu = add i64 %i.azt, 2                      ; 2 uses
  store i64 %i.azu, ptr %i.azs, align 8, !alias.scope !32310, !noalias !32311
  %i.azv = getelementptr inbounds nuw i8, ptr %i.azl, i64 16
  %i.azw = load ptr, ptr %i.azv, align 8, !alias.scope !32310, !noalias !32311, !nonnull !3, !align !100, !noundef !3
  %i.azx = getelementptr inbounds nuw i8, ptr %i.azw, i64 16
  %i.azy = load i64, ptr %i.azx, align 8, !noalias !32314, !noundef !3
  %i.azz = icmp ugt i64 %i.azu, %i.azy
  br i1 %i.azz, label %bb.pr, label %bb.pq

bb.pp:                                            ; preds = %bb.pm
  store i64 -9223372036854775803, ptr %i.z, align 8, !alias.scope !32312, !noalias !32313
  %.sroa.453.0..sroa_idx.i.i.i.i.i.i1242 = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 0, ptr %.sroa.453.0..sroa_idx.i.i.i.i.i.i1242, align 8, !alias.scope !32312, !noalias !32313
  %.sroa.453.sroa.4.0..sroa.453.0..sroa_idx.sroa_idx.i.i.i.i.i.i1243 = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.453.sroa.4.0..sroa.453.0..sroa_idx.sroa_idx.i.i.i.i.i.i1243, align 8, !alias.scope !32312, !noalias !32313
  %.sroa.453.sroa.5.0..sroa.453.0..sroa_idx.sroa_idx.i.i.i.i.i.i1244 = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i64 0, ptr %.sroa.453.sroa.5.0..sroa.453.0..sroa_idx.sroa_idx.i.i.i.i.i.i1244, align 8, !alias.scope !32312, !noalias !32313
  %.sroa.554.0..sroa_idx.i.i.i.i.i.i1245 = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store i64 %i.azi, ptr %.sroa.554.0..sroa_idx.i.i.i.i.i.i1245, align 8, !alias.scope !32312, !noalias !32313
  %.sroa.655.0..sroa_idx.i.i.i.i.i.i1246 = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  store i64 %i.azo, ptr %.sroa.655.0..sroa_idx.i.i.i.i.i.i1246, align 8, !alias.scope !32312, !noalias !32313
  br label %bb.ps

bb.pq:                                            ; preds = %bb.po
  store i64 -9223372036854775798, ptr %i.z, align 8, !alias.scope !32312, !noalias !32313
  br label %bb.ps

bb.pr:                                            ; preds = %bb.po
  store i64 -9223372036854775800, ptr %i.z, align 8, !alias.scope !32312, !noalias !32313
  br label %bb.ps

bb.ps:                                            ; preds = %bb.pr, %bb.pq, %bb.pp, %bb.pn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !32296
  %i.baa = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 -9223372036854775808, ptr %i.baa, align 8, !noalias !32296
  %.sroa.41.0..sroa_idx.i.i.i.i1223 = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store ptr @259, ptr %.sroa.41.0..sroa_idx.i.i.i.i1223, align 8, !noalias !32296
  %.sroa.5.0..sroa_idx.i.i.i.i1224 = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store i64 4, ptr %.sroa.5.0..sroa_idx.i.i.i.i1224, align 8, !noalias !32296
  %i.bab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 %i.azi, ptr %i.bab, align 8, !noalias !32296
  store i64 1, ptr %i.y, align 8, !noalias !32296
  call fastcc void @_RINvNtCs2TwJzntlzha_11flatbuffers8verifier12append_traceuECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.aa, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.z, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.y), !noalias !32297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !32296
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !32296
  %i.bac = load i64, ptr %i.aa, align 8, !range !99, !noalias !32296, !noundef !3 ; 2 uses
  %.not37.i.i.i.i1225 = icmp eq i64 %i.bac, -9223372036854775798
  br i1 %.not37.i.i.i.i1225, label %bb.pu, label %bb.pt

bb.pt:                                            ; preds = %bb.ps
  %.sroa.9.0..sroa_idx.i.i.i1226 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.9.0.copyload.i.i.i1227 = load i64, ptr %.sroa.9.0..sroa_idx.i.i.i1226, align 8, !noalias !32298
  %.sroa.14.0..sroa_idx.i.i.i1228 = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.14.0.copyload.i.i.i1229 = load i64, ptr %.sroa.14.0..sroa_idx.i.i.i1228, align 8, !noalias !32298
  %.sroa.16.0..sroa_idx.i.i.i1230 = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %.sroa.16.0.copyload.i.i.i1231 = load i64, ptr %.sroa.16.0..sroa_idx.i.i.i1230, align 8, !noalias !32298
  %.sroa.18.0..sroa_idx.i.i.i1232 = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %.sroa.18.0.copyload.i.i.i1233 = load i64, ptr %.sroa.18.0..sroa_idx.i.i.i1232, align 8, !noalias !32298
  %.sroa.19.0..sroa_idx.i.i.i1234 = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %.sroa.19.i.i.sroa.0.0.copyload13.i1235 = load i64, ptr %.sroa.19.0..sroa_idx.i.i.i1234, align 8, !noalias !32285
  %.sroa.19.i.i.sroa.5.0..sroa.19.0..sroa_idx.i.i.sroa_idx.i1236 = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.bad = load <2 x i64>, ptr %.sroa.19.i.i.sroa.5.0..sroa.19.0..sroa_idx.i.i.sroa_idx.i1236, align 8, !noalias !32285
  %.sroa.19.i.i.sroa.7.0..sroa.19.0..sroa_idx.i.i.sroa_idx.i1240 = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %.sroa.19.i.i.sroa.7.0.copyload16.i1241 = load i64, ptr %.sroa.19.i.i.sroa.7.0..sroa.19.0..sroa_idx.i.i.sroa_idx.i1240, align 8, !noalias !32285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !32296
  br label %bb.pv

bb.pu:                                            ; preds = %bb.ps
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !32296
  br label %bb.pw

bb.pv:                                            ; preds = %bb.pt, %bb.pj
  %.sroa.19.i.i.sroa.0.0.i1206 = phi i64 [ %.sroa.19.i.i.sroa.0.0.copyload13.i1235, %bb.pt ], [ %.sroa.19.i.i.sroa.0.0.copyload.i1199, %bb.pj ]
  %.sroa.19.i.i.sroa.7.0.i1209 = phi i64 [ %.sroa.19.i.i.sroa.7.0.copyload16.i1241, %bb.pt ], [ %.sroa.19.i.i.sroa.7.0.copyload.i1205, %bb.pj ]
  %.sroa.18.1.i.i.i1210 = phi i64 [ %.sroa.18.0.copyload.i.i.i1233, %bb.pt ], [ %.sroa.18.24.copyload.i.i.i1197, %bb.pj ]
  %.sroa.16.1.i.i.i1211 = phi i64 [ %.sroa.16.0.copyload.i.i.i1231, %bb.pt ], [ %.sroa.16.24.copyload.i.i.i1195, %bb.pj ]
  %.sroa.14.1.i.i.i1212 = phi i64 [ %.sroa.14.0.copyload.i.i.i1229, %bb.pt ], [ %i.azi, %bb.pj ]
  %.sroa.9.1.i.i.i1213 = phi i64 [ %.sroa.9.0.copyload.i.i.i1227, %bb.pt ], [ %i.azg, %bb.pj ]
  %.sroa.0.1.i.i.i1214 = phi i64 [ %i.bac, %bb.pt ], [ %i.aze, %bb.pj ]
  %i.bae = phi <2 x i64> [ %i.bad, %bb.pt ], [ %i.azj, %bb.pj ]
  %i.baf = inttoptr i64 %.sroa.9.1.i.i.i1213 to ptr
  br label %_RNvXs3G_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_8DurationNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i

bb.pw:                                            ; preds = %bb.pu, %bb.pk
  %.sroa.9.1.ph.i.i.i1215 = load i64, ptr %i.ac, align 8, !alias.scope !32315, !noalias !32285
  %i.bag = inttoptr i64 %.sroa.9.1.ph.i.i.i1215 to ptr
  %i.bah = getelementptr inbounds nuw i8, ptr %i.bag, i64 24 ; 2 uses
  %i.bai = load i64, ptr %i.bah, align 8, !noalias !32289, !noundef !3
  %i.baj = add i64 %i.bai, -1
  store i64 %i.baj, ptr %i.bah, align 8, !noalias !32289
  br label %_RNvXs3G_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_8DurationNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i

_RNvXs3G_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_8DurationNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i: ; preds = %bb.pw, %bb.pv, %bb.ph
  %.sroa.7.1.i1181 = phi ptr [ undef, %bb.pw ], [ %i.baf, %bb.pv ], [ %.sroa.613.i.i.sroa.0.0.copyload.i1166, %bb.ph ]
  %.sroa.22.1.i1182 = phi i64 [ undef, %bb.pw ], [ %.sroa.19.i.i.sroa.7.0.i1209, %bb.pv ], [ %.sroa.22.40.copyload.i1180, %bb.ph ]
  %.sroa.17.1.i1185 = phi i64 [ undef, %bb.pw ], [ %.sroa.19.i.i.sroa.0.0.i1206, %bb.pv ], [ %.sroa.17.40.copyload.i1174, %bb.ph ]
  %.sroa.15.1.i1186 = phi i64 [ undef, %bb.pw ], [ %.sroa.18.1.i.i.i1210, %bb.pv ], [ %.sroa.613.i.i.sroa.8.0.copyload.i1172, %bb.ph ]
  %.sroa.13.1.i1187 = phi i64 [ undef, %bb.pw ], [ %.sroa.16.1.i.i.i1211, %bb.pv ], [ %.sroa.613.i.i.sroa.7.0.copyload.i1170, %bb.ph ]
  %.sroa.11.1.i1188 = phi i64 [ undef, %bb.pw ], [ %.sroa.14.1.i.i.i1212, %bb.pv ], [ %.sroa.613.i.i.sroa.6.0.copyload.i1168, %bb.ph ]
  %.sroa.0.1.i1189 = phi i64 [ -9223372036854775798, %bb.pw ], [ %.sroa.0.1.i.i.i1214, %bb.pv ], [ %i.azb, %bb.ph ]
  %i.bak = phi <2 x i64> [ undef, %bb.pw ], [ %i.bae, %bb.pv ], [ %i.azd, %bb.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !32284
  br label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema8DurationEReECs14kWLkQVSKO_14deltalake_core.exit

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema8DurationEReECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ow, %bb.ox, %bb.oy, %_RNvXs3G_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_8DurationNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i
  %.sroa.7.2.i1135 = phi ptr [ %.sroa.7.1.i1181, %_RNvXs3G_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_8DurationNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ null, %bb.oy ], [ null, %bb.ox ], [ null, %bb.ow ]
  %.sroa.22.2.i1136 = phi i64 [ %.sroa.22.1.i1182, %_RNvXs3G_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_8DurationNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ undef, %bb.oy ], [ undef, %bb.ox ], [ undef, %bb.ow ]
  %.sroa.17.2.i1139 = phi i64 [ %.sroa.17.1.i1185, %_RNvXs3G_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_8DurationNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ undef, %bb.oy ], [ %i.axy, %bb.ox ], [ ptrtoint (ptr @12 to i64), %bb.ow ]
  %.sroa.15.2.i1140 = phi i64 [ %.sroa.15.1.i1186, %_RNvXs3G_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_8DurationNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ undef, %bb.oy ], [ %3, %bb.ox ], [ -9223372036854775808, %bb.ow ]
  %.sroa.13.2.i1141 = phi i64 [ %.sroa.13.1.i1187, %_RNvXs3G_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_8DurationNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ 0, %bb.oy ], [ 0, %bb.ox ], [ 0, %bb.ow ]
  %.sroa.11.2.i1142 = phi i64 [ %.sroa.11.1.i1188, %_RNvXs3G_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_8DurationNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ 8, %bb.oy ], [ 8, %bb.ox ], [ 8, %bb.ow ]
  %.sroa.0.2.i1143 = phi i64 [ %.sroa.0.1.i1189, %_RNvXs3G_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_8DurationNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ -9223372036854775800, %bb.oy ], [ -9223372036854775803, %bb.ox ], [ -9223372036854775804, %bb.ow ]
  %i.bal = phi <2 x i64> [ %i.bak, %_RNvXs3G_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_8DurationNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i ], [ %i.axx, %bb.oy ], [ %i.axx, %bb.ox ], [ %i.axx, %bb.ow ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !32316
  store i64 %.sroa.0.2.i1143, ptr %i.af, align 8, !noalias !32316
  %.sroa.7.0..sroa_idx.i1144 = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %.sroa.7.2.i1135, ptr %.sroa.7.0..sroa_idx.i1144, align 8, !noalias !32316
  %.sroa.11.0..sroa_idx.i1145 = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 %.sroa.11.2.i1142, ptr %.sroa.11.0..sroa_idx.i1145, align 8, !noalias !32316
  %.sroa.13.0..sroa_idx.i1146 = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store i64 %.sroa.13.2.i1141, ptr %.sroa.13.0..sroa_idx.i1146, align 8, !noalias !32316
  %.sroa.15.0..sroa_idx.i1147 = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store i64 %.sroa.15.2.i1140, ptr %.sroa.15.0..sroa_idx.i1147, align 8, !noalias !32316
  %.sroa.17.0..sroa_idx.i1148 = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  store i64 %.sroa.17.2.i1139, ptr %.sroa.17.0..sroa_idx.i1148, align 8, !noalias !32316
  %.sroa.20.0..sroa_idx.i1149 = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  store <2 x i64> %i.bal, ptr %.sroa.20.0..sroa_idx.i1149, align 8, !noalias !32316
  %.sroa.22.0..sroa_idx.i1151 = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  store i64 %.sroa.22.2.i1136, ptr %.sroa.22.0..sroa_idx.i1151, align 8, !noalias !32316
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !32316
  %i.bam = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 -9223372036854775808, ptr %i.bam, align 8, !noalias !32316
  %.sroa.4.0..sroa_idx.i1152 = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store ptr @77, ptr %.sroa.4.0..sroa_idx.i1152, align 8, !noalias !32316
  %.sroa.5.0..sroa_idx.i1153 = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store i64 14, ptr %.sroa.5.0..sroa_idx.i1153, align 8, !noalias !32316
  %i.ban = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i64 %3, ptr %i.ban, align 8, !noalias !32316
  store i64 2, ptr %i.ae, align 8, !noalias !32316
  call fastcc void @_RINvNtCs2TwJzntlzha_11flatbuffers8verifier12append_traceuECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.af, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !32316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !32316
  br label %bb.tx

bb.px:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32320)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32323)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32326)
  %i.bao = and i64 %3, 3
  %i.bap = icmp eq i64 %i.bao, 0
  %i.baq = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %3, i64 0 ; 3 uses
  br i1 %i.bap, label %bb.py, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema11LargeBinaryEReECs14kWLkQVSKO_14deltalake_core.exit

bb.py:                                            ; preds = %bb.px
  %i.bar = tail call i64 @llvm.uadd.sat.i64(i64 %3, i64 4) ; 2 uses
  %i.bas = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bat = load i64, ptr %i.bas, align 8, !alias.scope !32329, !noalias !32330, !noundef !3 ; 9 uses
  %i.bau = icmp ugt i64 %i.bar, %i.bat
  br i1 %i.bau, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema11LargeBinaryEReECs14kWLkQVSKO_14deltalake_core.exit, label %bb.pz

bb.pz:                                            ; preds = %bb.py
  %i.bav = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.baw = load i64, ptr %i.bav, align 8, !alias.scope !32329, !noalias !32330, !noundef !3
  %i.bax = add i64 %i.baw, 4                      ; 2 uses
  store i64 %i.bax, ptr %i.bav, align 8, !alias.scope !32329, !noalias !32330
  %i.bay = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.baz = load ptr, ptr %i.bay, align 8, !alias.scope !32329, !noalias !32330, !nonnull !3, !align !100, !noundef !3
  %i.bba = getelementptr inbounds nuw i8, ptr %i.baz, i64 16
  %i.bbb = load i64, ptr %i.bba, align 8, !noalias !32335, !noundef !3
  %i.bbc = icmp ugt i64 %i.bax, %i.bbb
  br i1 %i.bbc, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema11LargeBinaryEReECs14kWLkQVSKO_14deltalake_core.exit, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i1266

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i1266: ; preds = %bb.pz
  %i.bbd = icmp ult i64 %3, %i.bat
  br i1 %i.bbd, label %bb.qa, label %bb.qb

bb.qa:                                            ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i1266
  %i.bbe = load ptr, ptr %2, align 8, !alias.scope !32336, !noalias !32337, !nonnull !3, !noundef !3 ; 4 uses
  %i.bbf = getelementptr inbounds nuw i8, ptr %i.bbe, i64 %3
  %i.bbg = load i8, ptr %i.bbf, align 1, !noalias !32338, !noundef !3
  %i.bbh = or disjoint i64 %3, 1                  ; 3 uses
  %i.bbi = icmp ult i64 %i.bbh, %i.bat
  br i1 %i.bbi, label %bb.qc, label %bb.qd

bb.qb:                                            ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i1266
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %3, i64 noundef %i.bat, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #51, !noalias !32338
  unreachable

bb.qc:                                            ; preds = %bb.qa
  %i.bbj = getelementptr inbounds nuw i8, ptr %i.bbe, i64 %i.bbh
  %i.bbk = load i8, ptr %i.bbj, align 1, !noalias !32338, !noundef !3
  %i.bbl = or disjoint i64 %3, 2                  ; 3 uses
  %i.bbm = icmp ult i64 %i.bbl, %i.bat
  br i1 %i.bbm, label %bb.qe, label %bb.qf

bb.qd:                                            ; preds = %bb.qa
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.bbh, i64 noundef %i.bat, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #51, !noalias !32338
  unreachable

bb.qe:                                            ; preds = %bb.qc
  %i.bbn = or disjoint i64 %3, 3                  ; 3 uses
  %i.bbo = icmp ult i64 %i.bbn, %i.bat
  br i1 %i.bbo, label %bb.qh, label %bb.qg

bb.qf:                                            ; preds = %bb.qc
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.bbl, i64 noundef %i.bat, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #51, !noalias !32338
  unreachable

bb.qg:                                            ; preds = %bb.qe
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.bbn, i64 noundef %i.bat, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #51, !noalias !32338
  unreachable

bb.qh:                                            ; preds = %bb.qe
  %i.bbp = getelementptr inbounds nuw i8, ptr %i.bbe, i64 %i.bbl
  %i.bbq = load i8, ptr %i.bbp, align 1, !noalias !32338, !noundef !3
  %i.bbr = getelementptr inbounds nuw i8, ptr %i.bbe, i64 %i.bbn
  %i.bbs = load i8, ptr %i.bbr, align 1, !noalias !32338, !noundef !3
  %.sroa.6.0.insert.ext.i.i.i1267 = zext i8 %i.bbs to i64
  %.sroa.6.0.insert.shift.i.i.i1268 = shl nuw nsw i64 %.sroa.6.0.insert.ext.i.i.i1267, 24
  %.sroa.5.0.insert.ext.i.i.i1269 = zext i8 %i.bbq to i64
  %.sroa.5.0.insert.shift.i.i.i1270 = shl nuw nsw i64 %.sroa.5.0.insert.ext.i.i.i1269, 16
  %.sroa.4.0.insert.ext.i.i.i1271 = zext i8 %i.bbk to i64
  %.sroa.4.0.insert.shift.i.i.i1272 = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i.i1271, 8
  %.sroa.0.0.insert.ext.i.i.i1273 = zext i8 %i.bbg to i64
  %.sroa.5.0.insert.insert.i.i.i1274 = or disjoint i64 %.sroa.4.0.insert.shift.i.i.i1272, %.sroa.0.0.insert.ext.i.i.i1273
  %.sroa.4.0.insert.insert.i.i.i1275 = or disjoint i64 %.sroa.5.0.insert.insert.i.i.i1274, %.sroa.5.0.insert.shift.i.i.i1270
  %.sroa.0.0.insert.insert.i.i.i1276 = or disjoint i64 %.sroa.4.0.insert.insert.i.i.i1275, %.sroa.6.0.insert.shift.i.i.i1268
  %i.bbt = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.0.insert.insert.i.i.i1276, i64 %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !32339
  call fastcc void @_RNvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB5_8Verifier11visit_table(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(48) %2, i64 noundef %i.bbt) #50, !noalias !32343
  %i.bbu = load i64, ptr %i.v, align 8, !range !99, !noalias !32339, !noundef !3 ; 2 uses
  %.not.i.i.i1277 = icmp eq i64 %i.bbu, -9223372036854775798
  %i.bbv = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.013.0.copyload.i.i.i1278 = load ptr, ptr %i.bbv, align 8, !noalias !32339 ; 2 uses
  br i1 %.not.i.i.i1277, label %bb.qj, label %bb.qi

bb.qi:                                            ; preds = %bb.qh
  %.sroa.624.0..sroa_idx.i.i.i1279 = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %16 = load <2 x i64>, ptr %.sroa.624.0..sroa_idx.i.i.i1279, align 8, !noalias !32339
  %.sroa.826.0..sroa_idx.i.i.i1283 = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %.sroa.826.0.copyload.i.i.i1284 = load i64, ptr %.sroa.826.0..sroa_idx.i.i.i1283, align 8, !noalias !32339
  %.sroa.927.0..sroa_idx.i.i.i1285 = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %.sroa.14.40.copyload.i1286 = load i64, ptr %.sroa.927.0..sroa_idx.i.i.i1285, align 8, !noalias !32344
  %.sroa.16.40..sroa.927.0..sroa_idx.i.i.sroa_idx.i1287 = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %.sroa.16.40.copyload.i1288 = load i64, ptr %.sroa.16.40..sroa.927.0..sroa_idx.i.i.sroa_idx.i1287, align 8, !noalias !32344
  %.sroa.17.40..sroa.927.0..sroa_idx.i.i.sroa_idx.i1289 = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.bbw = load <2 x i64>, ptr %.sroa.17.40..sroa.927.0..sroa_idx.i.i.sroa_idx.i1289, align 8, !noalias !32344
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !32339
  br label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema11LargeBinaryEReECs14kWLkQVSKO_14deltalake_core.exit

bb.qj:                                            ; preds = %bb.qh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !32339
  %i.bbx = getelementptr inbounds nuw i8, ptr %.sroa.013.0.copyload.i.i.i1278, i64 24 ; 2 uses
  %i.bby = load i64, ptr %i.bbx, align 8, !noalias !32343, !noundef !3
  %i.bbz = add i64 %i.bby, -1
  store i64 %i.bbz, ptr %i.bbx, align 8, !noalias !32343
  br label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema11LargeBinaryEReECs14kWLkQVSKO_14deltalake_core.exit

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema11LargeBinaryEReECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.px, %bb.py, %bb.pz, %bb.qi, %bb.qj
  %.sroa.5.1.i1247 = phi ptr [ null, %bb.px ], [ null, %bb.pz ], [ null, %bb.py ], [ undef, %bb.qj ], [ %.sroa.013.0.copyload.i.i.i1278, %bb.qi ]
  %.sroa.16.1.i1250 = phi i64 [ 3, %bb.px ], [ 3, %bb.pz ], [ 3, %bb.py ], [ undef, %bb.qj ], [ %.sroa.16.40.copyload.i1288, %bb.qi ]
  %.sroa.14.1.i1251 = phi i64 [ ptrtoint (ptr @12 to i64), %bb.px ], [ undef, %bb.pz ], [ %i.bar, %bb.py ], [ undef, %bb.qj ], [ %.sroa.14.40.copyload.i1286, %bb.qi ]
  %.sroa.12.1.i1252 = phi i64 [ -9223372036854775808, %bb.px ], [ undef, %bb.pz ], [ %3, %bb.py ], [ undef, %bb.qj ], [ %.sroa.826.0.copyload.i.i.i1284, %bb.qi ]
  %.sroa.0.0.i1255.a = phi i64 [ -9223372036854775804, %bb.px ], [ -9223372036854775800, %bb.pz ], [ -9223372036854775803, %bb.py ], [ -9223372036854775798, %bb.qj ], [ %i.bbu, %bb.qi ]
  %17 = phi <2 x i64> [ <i64 8, i64 0>, %bb.px ], [ <i64 8, i64 0>, %bb.pz ], [ <i64 8, i64 0>, %bb.py ], [ undef, %bb.qj ], [ %16, %bb.qi ]
  %i.bca = phi <2 x i64> [ %i.baq, %bb.px ], [ %i.baq, %bb.pz ], [ %i.baq, %bb.py ], [ undef, %bb.qj ], [ %i.bbw, %bb.qi ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !32345
  store i64 %.sroa.0.0.i1255.a, ptr %i.x, align 8, !noalias !32345
  %.sroa.5.0..sroa_idx.i1256 = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %.sroa.5.1.i1247, ptr %.sroa.5.0..sroa_idx.i1256, align 8, !noalias !32345
  %.sroa.8.0..sroa_idx.i1257 = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <2 x i64> %17, ptr %.sroa.8.0..sroa_idx.i1257, align 8, !noalias !32345
  %.sroa.12.0..sroa_idx.i1259 = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store i64 %.sroa.12.1.i1252, ptr %.sroa.12.0..sroa_idx.i1259, align 8, !noalias !32345
  %.sroa.14.0..sroa_idx.i1260 = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  store i64 %.sroa.14.1.i1251, ptr %.sroa.14.0..sroa_idx.i1260, align 8, !noalias !32345
  %.sroa.16.0..sroa_idx.i1261 = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  store i64 %.sroa.16.1.i1250, ptr %.sroa.16.0..sroa_idx.i1261, align 8, !noalias !32345
  %.sroa.17.0..sroa_idx.i1262 = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  store <2 x i64> %i.bca, ptr %.sroa.17.0..sroa_idx.i1262, align 8, !noalias !32345
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !32345
  %i.bcb = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 -9223372036854775808, ptr %i.bcb, align 8, !noalias !32345
  %.sroa.4.0..sroa_idx.i1264 = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr @78, ptr %.sroa.4.0..sroa_idx.i1264, align 8, !noalias !32345
  %.sroa.52.0..sroa_idx.i1265 = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store i64 17, ptr %.sroa.52.0..sroa_idx.i1265, align 8, !noalias !32345
  %i.bcc = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %3, ptr %i.bcc, align 8, !noalias !32345
  store i64 2, ptr %i.w, align 8, !noalias !32345
  call fastcc void @_RINvNtCs2TwJzntlzha_11flatbuffers8verifier12append_traceuECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.x, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !32345
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !32345
  br label %bb.tx

bb.qk:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32346)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32355)
  %i.bcd = and i64 %3, 3
  %i.bce = icmp eq i64 %i.bcd, 0
  %i.bcf = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %3, i64 0 ; 3 uses
  br i1 %i.bce, label %bb.ql, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema9LargeUtf8EReECs14kWLkQVSKO_14deltalake_core.exit

bb.ql:                                            ; preds = %bb.qk
  %i.bcg = tail call i64 @llvm.uadd.sat.i64(i64 %3, i64 4) ; 2 uses
  %i.bch = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bci = load i64, ptr %i.bch, align 8, !alias.scope !32358, !noalias !32359, !noundef !3 ; 9 uses
  %i.bcj = icmp ugt i64 %i.bcg, %i.bci
  br i1 %i.bcj, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema9LargeUtf8EReECs14kWLkQVSKO_14deltalake_core.exit, label %bb.qm

bb.qm:                                            ; preds = %bb.ql
  %i.bck = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.bcl = load i64, ptr %i.bck, align 8, !alias.scope !32358, !noalias !32359, !noundef !3
  %i.bcm = add i64 %i.bcl, 4                      ; 2 uses
  store i64 %i.bcm, ptr %i.bck, align 8, !alias.scope !32358, !noalias !32359
  %i.bcn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bco = load ptr, ptr %i.bcn, align 8, !alias.scope !32358, !noalias !32359, !nonnull !3, !align !100, !noundef !3
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.bco, i64 16
  %i.bcq = load i64, ptr %i.bcp, align 8, !noalias !32364, !noundef !3
  %i.bcr = icmp ugt i64 %i.bcm, %i.bcq
  br i1 %i.bcr, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema9LargeUtf8EReECs14kWLkQVSKO_14deltalake_core.exit, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i1312

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i1312: ; preds = %bb.qm
  %i.bcs = icmp ult i64 %3, %i.bci
  br i1 %i.bcs, label %bb.qn, label %bb.qo

bb.qn:                                            ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i1312
  %i.bct = load ptr, ptr %2, align 8, !alias.scope !32365, !noalias !32366, !nonnull !3, !noundef !3 ; 4 uses
  %i.bcu = getelementptr inbounds nuw i8, ptr %i.bct, i64 %3
  %i.bcv = load i8, ptr %i.bcu, align 1, !noalias !32367, !noundef !3
  %i.bcw = or disjoint i64 %3, 1                  ; 3 uses
  %i.bcx = icmp ult i64 %i.bcw, %i.bci
  br i1 %i.bcx, label %bb.qp, label %bb.qq

bb.qo:                                            ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i1312
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %3, i64 noundef %i.bci, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #51, !noalias !32367
  unreachable

bb.qp:                                            ; preds = %bb.qn
  %i.bcy = getelementptr inbounds nuw i8, ptr %i.bct, i64 %i.bcw
  %i.bcz = load i8, ptr %i.bcy, align 1, !noalias !32367, !noundef !3
  %i.bda = or disjoint i64 %3, 2                  ; 3 uses
  %i.bdb = icmp ult i64 %i.bda, %i.bci
  br i1 %i.bdb, label %bb.qr, label %bb.qs

bb.qq:                                            ; preds = %bb.qn
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.bcw, i64 noundef %i.bci, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #51, !noalias !32367
  unreachable

bb.qr:                                            ; preds = %bb.qp
  %i.bdc = or disjoint i64 %3, 3                  ; 3 uses
  %i.bdd = icmp ult i64 %i.bdc, %i.bci
  br i1 %i.bdd, label %bb.qu, label %bb.qt

bb.qs:                                            ; preds = %bb.qp
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.bda, i64 noundef %i.bci, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #51, !noalias !32367
  unreachable

bb.qt:                                            ; preds = %bb.qr
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.bdc, i64 noundef %i.bci, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #51, !noalias !32367
  unreachable

bb.qu:                                            ; preds = %bb.qr
  %i.bde = getelementptr inbounds nuw i8, ptr %i.bct, i64 %i.bda
  %i.bdf = load i8, ptr %i.bde, align 1, !noalias !32367, !noundef !3
  %i.bdg = getelementptr inbounds nuw i8, ptr %i.bct, i64 %i.bdc
  %i.bdh = load i8, ptr %i.bdg, align 1, !noalias !32367, !noundef !3
  %.sroa.6.0.insert.ext.i.i.i1313 = zext i8 %i.bdh to i64
  %.sroa.6.0.insert.shift.i.i.i1314 = shl nuw nsw i64 %.sroa.6.0.insert.ext.i.i.i1313, 24
  %.sroa.5.0.insert.ext.i.i.i1315 = zext i8 %i.bdf to i64
  %.sroa.5.0.insert.shift.i.i.i1316 = shl nuw nsw i64 %.sroa.5.0.insert.ext.i.i.i1315, 16
  %.sroa.4.0.insert.ext.i.i.i1317 = zext i8 %i.bcz to i64
  %.sroa.4.0.insert.shift.i.i.i1318 = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i.i1317, 8
  %.sroa.0.0.insert.ext.i.i.i1319 = zext i8 %i.bcv to i64
  %.sroa.5.0.insert.insert.i.i.i1320 = or disjoint i64 %.sroa.4.0.insert.shift.i.i.i1318, %.sroa.0.0.insert.ext.i.i.i1319
  %.sroa.4.0.insert.insert.i.i.i1321 = or disjoint i64 %.sroa.5.0.insert.insert.i.i.i1320, %.sroa.5.0.insert.shift.i.i.i1316
  %.sroa.0.0.insert.insert.i.i.i1322 = or disjoint i64 %.sroa.4.0.insert.insert.i.i.i1321, %.sroa.6.0.insert.shift.i.i.i1314
  %i.bdi = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.0.insert.insert.i.i.i1322, i64 %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !32368
  call fastcc void @_RNvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB5_8Verifier11visit_table(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(48) %2, i64 noundef %i.bdi) #50, !noalias !32372
  %i.bdj = load i64, ptr %i.s, align 8, !range !99, !noalias !32368, !noundef !3 ; 2 uses
  %.not.i.i.i1323 = icmp eq i64 %i.bdj, -9223372036854775798
  %i.bdk = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.013.0.copyload.i.i.i1324 = load ptr, ptr %i.bdk, align 8, !noalias !32368 ; 2 uses
  br i1 %.not.i.i.i1323, label %bb.qw, label %bb.qv

bb.qv:                                            ; preds = %bb.qu
  %.sroa.624.0..sroa_idx.i.i.i1325 = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %18 = load <2 x i64>, ptr %.sroa.624.0..sroa_idx.i.i.i1325, align 8, !noalias !32368
  %.sroa.826.0..sroa_idx.i.i.i1329 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.sroa.826.0.copyload.i.i.i1330 = load i64, ptr %.sroa.826.0..sroa_idx.i.i.i1329, align 8, !noalias !32368
  %.sroa.927.0..sroa_idx.i.i.i1331 = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %.sroa.14.40.copyload.i1332 = load i64, ptr %.sroa.927.0..sroa_idx.i.i.i1331, align 8, !noalias !32373
  %.sroa.16.40..sroa.927.0..sroa_idx.i.i.sroa_idx.i1333 = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %.sroa.16.40.copyload.i1334 = load i64, ptr %.sroa.16.40..sroa.927.0..sroa_idx.i.i.sroa_idx.i1333, align 8, !noalias !32373
  %.sroa.17.40..sroa.927.0..sroa_idx.i.i.sroa_idx.i1335 = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.bdl = load <2 x i64>, ptr %.sroa.17.40..sroa.927.0..sroa_idx.i.i.sroa_idx.i1335, align 8, !noalias !32373
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !32368
  br label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema9LargeUtf8EReECs14kWLkQVSKO_14deltalake_core.exit

bb.qw:                                            ; preds = %bb.qu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !32368
  %i.bdm = getelementptr inbounds nuw i8, ptr %.sroa.013.0.copyload.i.i.i1324, i64 24 ; 2 uses
  %i.bdn = load i64, ptr %i.bdm, align 8, !noalias !32372, !noundef !3
  %i.bdo = add i64 %i.bdn, -1
  store i64 %i.bdo, ptr %i.bdm, align 8, !noalias !32372
  br label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema9LargeUtf8EReECs14kWLkQVSKO_14deltalake_core.exit

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema9LargeUtf8EReECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.qk, %bb.ql, %bb.qm, %bb.qv, %bb.qw
  %.sroa.5.1.i1293 = phi ptr [ null, %bb.qk ], [ null, %bb.qm ], [ null, %bb.ql ], [ undef, %bb.qw ], [ %.sroa.013.0.copyload.i.i.i1324, %bb.qv ]
  %.sroa.16.1.i1296 = phi i64 [ 3, %bb.qk ], [ 3, %bb.qm ], [ 3, %bb.ql ], [ undef, %bb.qw ], [ %.sroa.16.40.copyload.i1334, %bb.qv ]
  %.sroa.14.1.i1297 = phi i64 [ ptrtoint (ptr @12 to i64), %bb.qk ], [ undef, %bb.qm ], [ %i.bcg, %bb.ql ], [ undef, %bb.qw ], [ %.sroa.14.40.copyload.i1332, %bb.qv ]
  %.sroa.12.1.i1298 = phi i64 [ -9223372036854775808, %bb.qk ], [ undef, %bb.qm ], [ %3, %bb.ql ], [ undef, %bb.qw ], [ %.sroa.826.0.copyload.i.i.i1330, %bb.qv ]
  %.sroa.0.0.i1301.a = phi i64 [ -9223372036854775804, %bb.qk ], [ -9223372036854775800, %bb.qm ], [ -9223372036854775803, %bb.ql ], [ -9223372036854775798, %bb.qw ], [ %i.bdj, %bb.qv ]
  %19 = phi <2 x i64> [ <i64 8, i64 0>, %bb.qk ], [ <i64 8, i64 0>, %bb.qm ], [ <i64 8, i64 0>, %bb.ql ], [ undef, %bb.qw ], [ %18, %bb.qv ]
  %i.bdp = phi <2 x i64> [ %i.bcf, %bb.qk ], [ %i.bcf, %bb.qm ], [ %i.bcf, %bb.ql ], [ undef, %bb.qw ], [ %i.bdl, %bb.qv ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !32374
  store i64 %.sroa.0.0.i1301.a, ptr %i.u, align 8, !noalias !32374
  %.sroa.5.0..sroa_idx.i1302 = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %.sroa.5.1.i1293, ptr %.sroa.5.0..sroa_idx.i1302, align 8, !noalias !32374
  %.sroa.8.0..sroa_idx.i1303 = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <2 x i64> %19, ptr %.sroa.8.0..sroa_idx.i1303, align 8, !noalias !32374
  %.sroa.12.0..sroa_idx.i1305 = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store i64 %.sroa.12.1.i1298, ptr %.sroa.12.0..sroa_idx.i1305, align 8, !noalias !32374
  %.sroa.14.0..sroa_idx.i1306 = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  store i64 %.sroa.14.1.i1297, ptr %.sroa.14.0..sroa_idx.i1306, align 8, !noalias !32374
  %.sroa.16.0..sroa_idx.i1307 = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  store i64 %.sroa.16.1.i1296, ptr %.sroa.16.0..sroa_idx.i1307, align 8, !noalias !32374
  %.sroa.17.0..sroa_idx.i1308 = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store <2 x i64> %i.bdp, ptr %.sroa.17.0..sroa_idx.i1308, align 8, !noalias !32374
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !32374
  %i.bdq = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 -9223372036854775808, ptr %i.bdq, align 8, !noalias !32374
  %.sroa.4.0..sroa_idx.i1310 = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr @79, ptr %.sroa.4.0..sroa_idx.i1310, align 8, !noalias !32374
  %.sroa.52.0..sroa_idx.i1311 = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store i64 15, ptr %.sroa.52.0..sroa_idx.i1311, align 8, !noalias !32374
  %i.bdr = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %3, ptr %i.bdr, align 8, !noalias !32374
  store i64 2, ptr %i.t, align 8, !noalias !32374
  call fastcc void @_RINvNtCs2TwJzntlzha_11flatbuffers8verifier12append_traceuECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.u, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !32374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !32374
  br label %bb.tx

bb.qx:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32384)
  %i.bds = and i64 %3, 3
  %i.bdt = icmp eq i64 %i.bds, 0
  %i.bdu = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %3, i64 0 ; 3 uses
  br i1 %i.bdt, label %bb.qy, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema9LargeListEReECs14kWLkQVSKO_14deltalake_core.exit

bb.qy:                                            ; preds = %bb.qx
  %i.bdv = tail call i64 @llvm.uadd.sat.i64(i64 %3, i64 4) ; 2 uses
  %i.bdw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bdx = load i64, ptr %i.bdw, align 8, !alias.scope !32387, !noalias !32388, !noundef !3 ; 9 uses
  %i.bdy = icmp ugt i64 %i.bdv, %i.bdx
  br i1 %i.bdy, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema9LargeListEReECs14kWLkQVSKO_14deltalake_core.exit, label %bb.qz

bb.qz:                                            ; preds = %bb.qy
  %i.bdz = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.bea = load i64, ptr %i.bdz, align 8, !alias.scope !32387, !noalias !32388, !noundef !3
  %i.beb = add i64 %i.bea, 4                      ; 2 uses
  store i64 %i.beb, ptr %i.bdz, align 8, !alias.scope !32387, !noalias !32388
  %i.bec = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bed = load ptr, ptr %i.bec, align 8, !alias.scope !32387, !noalias !32388, !nonnull !3, !align !100, !noundef !3
  %i.bee = getelementptr inbounds nuw i8, ptr %i.bed, i64 16
  %i.bef = load i64, ptr %i.bee, align 8, !noalias !32393, !noundef !3
  %i.beg = icmp ugt i64 %i.beb, %i.bef
  br i1 %i.beg, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema9LargeListEReECs14kWLkQVSKO_14deltalake_core.exit, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i1358

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i1358: ; preds = %bb.qz
  %i.beh = icmp ult i64 %3, %i.bdx
  br i1 %i.beh, label %bb.ra, label %bb.rb

bb.ra:                                            ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i1358
  %i.bei = load ptr, ptr %2, align 8, !alias.scope !32394, !noalias !32395, !nonnull !3, !noundef !3 ; 4 uses
  %i.bej = getelementptr inbounds nuw i8, ptr %i.bei, i64 %3
  %i.bek = load i8, ptr %i.bej, align 1, !noalias !32396, !noundef !3
  %i.bel = or disjoint i64 %3, 1                  ; 3 uses
  %i.bem = icmp ult i64 %i.bel, %i.bdx
  br i1 %i.bem, label %bb.rc, label %bb.rd

bb.rb:                                            ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i1358
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %3, i64 noundef %i.bdx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #51, !noalias !32396
  unreachable

bb.rc:                                            ; preds = %bb.ra
  %i.ben = getelementptr inbounds nuw i8, ptr %i.bei, i64 %i.bel
  %i.beo = load i8, ptr %i.ben, align 1, !noalias !32396, !noundef !3
  %i.bep = or disjoint i64 %3, 2                  ; 3 uses
  %i.beq = icmp ult i64 %i.bep, %i.bdx
  br i1 %i.beq, label %bb.re, label %bb.rf

bb.rd:                                            ; preds = %bb.ra
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.bel, i64 noundef %i.bdx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #51, !noalias !32396
  unreachable

bb.re:                                            ; preds = %bb.rc
  %i.ber = or disjoint i64 %3, 3                  ; 3 uses
  %i.bes = icmp ult i64 %i.ber, %i.bdx
  br i1 %i.bes, label %bb.rh, label %bb.rg

bb.rf:                                            ; preds = %bb.rc
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.bep, i64 noundef %i.bdx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #51, !noalias !32396
  unreachable

bb.rg:                                            ; preds = %bb.re
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.ber, i64 noundef %i.bdx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #51, !noalias !32396
  unreachable

bb.rh:                                            ; preds = %bb.re
  %i.bet = getelementptr inbounds nuw i8, ptr %i.bei, i64 %i.bep
  %i.beu = load i8, ptr %i.bet, align 1, !noalias !32396, !noundef !3
  %i.bev = getelementptr inbounds nuw i8, ptr %i.bei, i64 %i.ber
  %i.bew = load i8, ptr %i.bev, align 1, !noalias !32396, !noundef !3
  %.sroa.6.0.insert.ext.i.i.i1359 = zext i8 %i.bew to i64
  %.sroa.6.0.insert.shift.i.i.i1360 = shl nuw nsw i64 %.sroa.6.0.insert.ext.i.i.i1359, 24
  %.sroa.5.0.insert.ext.i.i.i1361 = zext i8 %i.beu to i64
  %.sroa.5.0.insert.shift.i.i.i1362 = shl nuw nsw i64 %.sroa.5.0.insert.ext.i.i.i1361, 16
  %.sroa.4.0.insert.ext.i.i.i1363 = zext i8 %i.beo to i64
  %.sroa.4.0.insert.shift.i.i.i1364 = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i.i1363, 8
  %.sroa.0.0.insert.ext.i.i.i1365 = zext i8 %i.bek to i64
  %.sroa.5.0.insert.insert.i.i.i1366 = or disjoint i64 %.sroa.4.0.insert.shift.i.i.i1364, %.sroa.0.0.insert.ext.i.i.i1365
  %.sroa.4.0.insert.insert.i.i.i1367 = or disjoint i64 %.sroa.5.0.insert.insert.i.i.i1366, %.sroa.5.0.insert.shift.i.i.i1362
  %.sroa.0.0.insert.insert.i.i.i1368 = or disjoint i64 %.sroa.4.0.insert.insert.i.i.i1367, %.sroa.6.0.insert.shift.i.i.i1360
  %i.bex = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.0.insert.insert.i.i.i1368, i64 %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !32397
  call fastcc void @_RNvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB5_8Verifier11visit_table(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(48) %2, i64 noundef %i.bex) #50, !noalias !32401
  %i.bey = load i64, ptr %i.p, align 8, !range !99, !noalias !32397, !noundef !3 ; 2 uses
  %.not.i.i.i1369 = icmp eq i64 %i.bey, -9223372036854775798
  %i.bez = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.013.0.copyload.i.i.i1370 = load ptr, ptr %i.bez, align 8, !noalias !32397 ; 2 uses
  br i1 %.not.i.i.i1369, label %bb.rj, label %bb.ri

bb.ri:                                            ; preds = %bb.rh
  %.sroa.624.0..sroa_idx.i.i.i1371 = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %20 = load <2 x i64>, ptr %.sroa.624.0..sroa_idx.i.i.i1371, align 8, !noalias !32397
  %.sroa.826.0..sroa_idx.i.i.i1375 = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.sroa.826.0.copyload.i.i.i1376 = load i64, ptr %.sroa.826.0..sroa_idx.i.i.i1375, align 8, !noalias !32397
  %.sroa.927.0..sroa_idx.i.i.i1377 = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %.sroa.14.40.copyload.i1378 = load i64, ptr %.sroa.927.0..sroa_idx.i.i.i1377, align 8, !noalias !32402
  %.sroa.16.40..sroa.927.0..sroa_idx.i.i.sroa_idx.i1379 = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %.sroa.16.40.copyload.i1380 = load i64, ptr %.sroa.16.40..sroa.927.0..sroa_idx.i.i.sroa_idx.i1379, align 8, !noalias !32402
  %.sroa.17.40..sroa.927.0..sroa_idx.i.i.sroa_idx.i1381 = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.bfa = load <2 x i64>, ptr %.sroa.17.40..sroa.927.0..sroa_idx.i.i.sroa_idx.i1381, align 8, !noalias !32402
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !32397
  br label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema9LargeListEReECs14kWLkQVSKO_14deltalake_core.exit

bb.rj:                                            ; preds = %bb.rh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !32397
  %i.bfb = getelementptr inbounds nuw i8, ptr %.sroa.013.0.copyload.i.i.i1370, i64 24 ; 2 uses
  %i.bfc = load i64, ptr %i.bfb, align 8, !noalias !32401, !noundef !3
  %i.bfd = add i64 %i.bfc, -1
  store i64 %i.bfd, ptr %i.bfb, align 8, !noalias !32401
  br label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema9LargeListEReECs14kWLkQVSKO_14deltalake_core.exit

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema9LargeListEReECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.qx, %bb.qy, %bb.qz, %bb.ri, %bb.rj
  %.sroa.5.1.i1339 = phi ptr [ null, %bb.qx ], [ null, %bb.qz ], [ null, %bb.qy ], [ undef, %bb.rj ], [ %.sroa.013.0.copyload.i.i.i1370, %bb.ri ]
  %.sroa.16.1.i1342 = phi i64 [ 3, %bb.qx ], [ 3, %bb.qz ], [ 3, %bb.qy ], [ undef, %bb.rj ], [ %.sroa.16.40.copyload.i1380, %bb.ri ]
  %.sroa.14.1.i1343 = phi i64 [ ptrtoint (ptr @12 to i64), %bb.qx ], [ undef, %bb.qz ], [ %i.bdv, %bb.qy ], [ undef, %bb.rj ], [ %.sroa.14.40.copyload.i1378, %bb.ri ]
  %.sroa.12.1.i1344 = phi i64 [ -9223372036854775808, %bb.qx ], [ undef, %bb.qz ], [ %3, %bb.qy ], [ undef, %bb.rj ], [ %.sroa.826.0.copyload.i.i.i1376, %bb.ri ]
  %.sroa.0.0.i1347.a = phi i64 [ -9223372036854775804, %bb.qx ], [ -9223372036854775800, %bb.qz ], [ -9223372036854775803, %bb.qy ], [ -9223372036854775798, %bb.rj ], [ %i.bey, %bb.ri ]
  %21 = phi <2 x i64> [ <i64 8, i64 0>, %bb.qx ], [ <i64 8, i64 0>, %bb.qz ], [ <i64 8, i64 0>, %bb.qy ], [ undef, %bb.rj ], [ %20, %bb.ri ]
  %i.bfe = phi <2 x i64> [ %i.bdu, %bb.qx ], [ %i.bdu, %bb.qz ], [ %i.bdu, %bb.qy ], [ undef, %bb.rj ], [ %i.bfa, %bb.ri ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !32403
  store i64 %.sroa.0.0.i1347.a, ptr %i.r, align 8, !noalias !32403
  %.sroa.5.0..sroa_idx.i1348 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %.sroa.5.1.i1339, ptr %.sroa.5.0..sroa_idx.i1348, align 8, !noalias !32403
  %.sroa.8.0..sroa_idx.i1349 = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <2 x i64> %21, ptr %.sroa.8.0..sroa_idx.i1349, align 8, !noalias !32403
  %.sroa.12.0..sroa_idx.i1351 = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store i64 %.sroa.12.1.i1344, ptr %.sroa.12.0..sroa_idx.i1351, align 8, !noalias !32403
  %.sroa.14.0..sroa_idx.i1352 = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store i64 %.sroa.14.1.i1343, ptr %.sroa.14.0..sroa_idx.i1352, align 8, !noalias !32403
  %.sroa.16.0..sroa_idx.i1353 = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store i64 %.sroa.16.1.i1342, ptr %.sroa.16.0..sroa_idx.i1353, align 8, !noalias !32403
  %.sroa.17.0..sroa_idx.i1354 = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  store <2 x i64> %i.bfe, ptr %.sroa.17.0..sroa_idx.i1354, align 8, !noalias !32403
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !32403
  %i.bff = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 -9223372036854775808, ptr %i.bff, align 8, !noalias !32403
  %.sroa.4.0..sroa_idx.i1356 = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr @80, ptr %.sroa.4.0..sroa_idx.i1356, align 8, !noalias !32403
  %.sroa.52.0..sroa_idx.i1357 = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store i64 15, ptr %.sroa.52.0..sroa_idx.i1357, align 8, !noalias !32403
  %i.bfg = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %3, ptr %i.bfg, align 8, !noalias !32403
  store i64 2, ptr %i.q, align 8, !noalias !32403
  call fastcc void @_RINvNtCs2TwJzntlzha_11flatbuffers8verifier12append_traceuECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.r, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !32403
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !32403
  br label %bb.tx

bb.rk:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32404)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32407)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32410)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32413)
  %i.bfh = and i64 %3, 3
  %i.bfi = icmp eq i64 %i.bfh, 0
  %i.bfj = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %3, i64 0 ; 3 uses
  br i1 %i.bfi, label %bb.rl, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema13RunEndEncodedEReECs14kWLkQVSKO_14deltalake_core.exit

bb.rl:                                            ; preds = %bb.rk
  %i.bfk = tail call i64 @llvm.uadd.sat.i64(i64 %3, i64 4) ; 2 uses
  %i.bfl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bfm = load i64, ptr %i.bfl, align 8, !alias.scope !32416, !noalias !32417, !noundef !3 ; 9 uses
  %i.bfn = icmp ugt i64 %i.bfk, %i.bfm
  br i1 %i.bfn, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema13RunEndEncodedEReECs14kWLkQVSKO_14deltalake_core.exit, label %bb.rm

bb.rm:                                            ; preds = %bb.rl
  %i.bfo = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.bfp = load i64, ptr %i.bfo, align 8, !alias.scope !32416, !noalias !32417, !noundef !3
  %i.bfq = add i64 %i.bfp, 4                      ; 2 uses
  store i64 %i.bfq, ptr %i.bfo, align 8, !alias.scope !32416, !noalias !32417
  %i.bfr = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bfs = load ptr, ptr %i.bfr, align 8, !alias.scope !32416, !noalias !32417, !nonnull !3, !align !100, !noundef !3
  %i.bft = getelementptr inbounds nuw i8, ptr %i.bfs, i64 16
  %i.bfu = load i64, ptr %i.bft, align 8, !noalias !32422, !noundef !3
  %i.bfv = icmp ugt i64 %i.bfq, %i.bfu
  br i1 %i.bfv, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema13RunEndEncodedEReECs14kWLkQVSKO_14deltalake_core.exit, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i1404

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i1404: ; preds = %bb.rm
  %i.bfw = icmp ult i64 %3, %i.bfm
  br i1 %i.bfw, label %bb.rn, label %bb.ro

bb.rn:                                            ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i1404
  %i.bfx = load ptr, ptr %2, align 8, !alias.scope !32423, !noalias !32424, !nonnull !3, !noundef !3 ; 4 uses
  %i.bfy = getelementptr inbounds nuw i8, ptr %i.bfx, i64 %3
  %i.bfz = load i8, ptr %i.bfy, align 1, !noalias !32425, !noundef !3
  %i.bga = or disjoint i64 %3, 1                  ; 3 uses
  %i.bgb = icmp ult i64 %i.bga, %i.bfm
  br i1 %i.bgb, label %bb.rp, label %bb.rq

bb.ro:                                            ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i1404
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %3, i64 noundef %i.bfm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #51, !noalias !32425
  unreachable

bb.rp:                                            ; preds = %bb.rn
  %i.bgc = getelementptr inbounds nuw i8, ptr %i.bfx, i64 %i.bga
  %i.bgd = load i8, ptr %i.bgc, align 1, !noalias !32425, !noundef !3
  %i.bge = or disjoint i64 %3, 2                  ; 3 uses
  %i.bgf = icmp ult i64 %i.bge, %i.bfm
  br i1 %i.bgf, label %bb.rr, label %bb.rs

bb.rq:                                            ; preds = %bb.rn
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.bga, i64 noundef %i.bfm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #51, !noalias !32425
  unreachable

bb.rr:                                            ; preds = %bb.rp
  %i.bgg = or disjoint i64 %3, 3                  ; 3 uses
  %i.bgh = icmp ult i64 %i.bgg, %i.bfm
  br i1 %i.bgh, label %bb.ru, label %bb.rt

bb.rs:                                            ; preds = %bb.rp
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.bge, i64 noundef %i.bfm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #51, !noalias !32425
  unreachable

bb.rt:                                            ; preds = %bb.rr
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.bgg, i64 noundef %i.bfm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #51, !noalias !32425
  unreachable

bb.ru:                                            ; preds = %bb.rr
  %i.bgi = getelementptr inbounds nuw i8, ptr %i.bfx, i64 %i.bge
  %i.bgj = load i8, ptr %i.bgi, align 1, !noalias !32425, !noundef !3
  %i.bgk = getelementptr inbounds nuw i8, ptr %i.bfx, i64 %i.bgg
  %i.bgl = load i8, ptr %i.bgk, align 1, !noalias !32425, !noundef !3
  %.sroa.6.0.insert.ext.i.i.i1405 = zext i8 %i.bgl to i64
  %.sroa.6.0.insert.shift.i.i.i1406 = shl nuw nsw i64 %.sroa.6.0.insert.ext.i.i.i1405, 24
  %.sroa.5.0.insert.ext.i.i.i1407 = zext i8 %i.bgj to i64
  %.sroa.5.0.insert.shift.i.i.i1408 = shl nuw nsw i64 %.sroa.5.0.insert.ext.i.i.i1407, 16
  %.sroa.4.0.insert.ext.i.i.i1409 = zext i8 %i.bgd to i64
  %.sroa.4.0.insert.shift.i.i.i1410 = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i.i1409, 8
  %.sroa.0.0.insert.ext.i.i.i1411 = zext i8 %i.bfz to i64
  %.sroa.5.0.insert.insert.i.i.i1412 = or disjoint i64 %.sroa.4.0.insert.shift.i.i.i1410, %.sroa.0.0.insert.ext.i.i.i1411
  %.sroa.4.0.insert.insert.i.i.i1413 = or disjoint i64 %.sroa.5.0.insert.insert.i.i.i1412, %.sroa.5.0.insert.shift.i.i.i1408
  %.sroa.0.0.insert.insert.i.i.i1414 = or disjoint i64 %.sroa.4.0.insert.insert.i.i.i1413, %.sroa.6.0.insert.shift.i.i.i1406
  %i.bgm = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.0.insert.insert.i.i.i1414, i64 %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !32426
  call fastcc void @_RNvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB5_8Verifier11visit_table(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.m, ptr noalias noundef nonnull align 8 dereferenceable(48) %2, i64 noundef %i.bgm) #50, !noalias !32430
  %i.bgn = load i64, ptr %i.m, align 8, !range !99, !noalias !32426, !noundef !3 ; 2 uses
  %.not.i.i.i1415 = icmp eq i64 %i.bgn, -9223372036854775798
  %i.bgo = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.013.0.copyload.i.i.i1416 = load ptr, ptr %i.bgo, align 8, !noalias !32426 ; 2 uses
  br i1 %.not.i.i.i1415, label %bb.rw, label %bb.rv

bb.rv:                                            ; preds = %bb.ru
  %.sroa.624.0..sroa_idx.i.i.i1417 = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %22 = load <2 x i64>, ptr %.sroa.624.0..sroa_idx.i.i.i1417, align 8, !noalias !32426
  %.sroa.826.0..sroa_idx.i.i.i1421 = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.826.0.copyload.i.i.i1422 = load i64, ptr %.sroa.826.0..sroa_idx.i.i.i1421, align 8, !noalias !32426
  %.sroa.927.0..sroa_idx.i.i.i1423 = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %.sroa.14.40.copyload.i1424 = load i64, ptr %.sroa.927.0..sroa_idx.i.i.i1423, align 8, !noalias !32431
  %.sroa.16.40..sroa.927.0..sroa_idx.i.i.sroa_idx.i1425 = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %.sroa.16.40.copyload.i1426 = load i64, ptr %.sroa.16.40..sroa.927.0..sroa_idx.i.i.sroa_idx.i1425, align 8, !noalias !32431
  %.sroa.17.40..sroa.927.0..sroa_idx.i.i.sroa_idx.i1427 = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.bgp = load <2 x i64>, ptr %.sroa.17.40..sroa.927.0..sroa_idx.i.i.sroa_idx.i1427, align 8, !noalias !32431
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !32426
  br label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema13RunEndEncodedEReECs14kWLkQVSKO_14deltalake_core.exit

bb.rw:                                            ; preds = %bb.ru
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !32426
  %i.bgq = getelementptr inbounds nuw i8, ptr %.sroa.013.0.copyload.i.i.i1416, i64 24 ; 2 uses
  %i.bgr = load i64, ptr %i.bgq, align 8, !noalias !32430, !noundef !3
  %i.bgs = add i64 %i.bgr, -1
  store i64 %i.bgs, ptr %i.bgq, align 8, !noalias !32430
  br label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema13RunEndEncodedEReECs14kWLkQVSKO_14deltalake_core.exit

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema13RunEndEncodedEReECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.rk, %bb.rl, %bb.rm, %bb.rv, %bb.rw
  %.sroa.5.1.i1385 = phi ptr [ null, %bb.rk ], [ null, %bb.rm ], [ null, %bb.rl ], [ undef, %bb.rw ], [ %.sroa.013.0.copyload.i.i.i1416, %bb.rv ]
  %.sroa.16.1.i1388 = phi i64 [ 3, %bb.rk ], [ 3, %bb.rm ], [ 3, %bb.rl ], [ undef, %bb.rw ], [ %.sroa.16.40.copyload.i1426, %bb.rv ]
  %.sroa.14.1.i1389 = phi i64 [ ptrtoint (ptr @12 to i64), %bb.rk ], [ undef, %bb.rm ], [ %i.bfk, %bb.rl ], [ undef, %bb.rw ], [ %.sroa.14.40.copyload.i1424, %bb.rv ]
  %.sroa.12.1.i1390 = phi i64 [ -9223372036854775808, %bb.rk ], [ undef, %bb.rm ], [ %3, %bb.rl ], [ undef, %bb.rw ], [ %.sroa.826.0.copyload.i.i.i1422, %bb.rv ]
  %.sroa.0.0.i1393.a = phi i64 [ -9223372036854775804, %bb.rk ], [ -9223372036854775800, %bb.rm ], [ -9223372036854775803, %bb.rl ], [ -9223372036854775798, %bb.rw ], [ %i.bgn, %bb.rv ]
  %23 = phi <2 x i64> [ <i64 8, i64 0>, %bb.rk ], [ <i64 8, i64 0>, %bb.rm ], [ <i64 8, i64 0>, %bb.rl ], [ undef, %bb.rw ], [ %22, %bb.rv ]
  %i.bgt = phi <2 x i64> [ %i.bfj, %bb.rk ], [ %i.bfj, %bb.rm ], [ %i.bfj, %bb.rl ], [ undef, %bb.rw ], [ %i.bgp, %bb.rv ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !32432
  store i64 %.sroa.0.0.i1393.a, ptr %i.o, align 8, !noalias !32432
  %.sroa.5.0..sroa_idx.i1394 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %.sroa.5.1.i1385, ptr %.sroa.5.0..sroa_idx.i1394, align 8, !noalias !32432
  %.sroa.8.0..sroa_idx.i1395 = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store <2 x i64> %23, ptr %.sroa.8.0..sroa_idx.i1395, align 8, !noalias !32432
  %.sroa.12.0..sroa_idx.i1397 = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store i64 %.sroa.12.1.i1390, ptr %.sroa.12.0..sroa_idx.i1397, align 8, !noalias !32432
  %.sroa.14.0..sroa_idx.i1398 = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store i64 %.sroa.14.1.i1389, ptr %.sroa.14.0..sroa_idx.i1398, align 8, !noalias !32432
  %.sroa.16.0..sroa_idx.i1399 = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store i64 %.sroa.16.1.i1388, ptr %.sroa.16.0..sroa_idx.i1399, align 8, !noalias !32432
  %.sroa.17.0..sroa_idx.i1400 = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  store <2 x i64> %i.bgt, ptr %.sroa.17.0..sroa_idx.i1400, align 8, !noalias !32432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !32432
  %i.bgu = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 -9223372036854775808, ptr %i.bgu, align 8, !noalias !32432
  %.sroa.4.0..sroa_idx.i1402 = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @81, ptr %.sroa.4.0..sroa_idx.i1402, align 8, !noalias !32432
  %.sroa.52.0..sroa_idx.i1403 = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store i64 19, ptr %.sroa.52.0..sroa_idx.i1403, align 8, !noalias !32432
  %i.bgv = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %3, ptr %i.bgv, align 8, !noalias !32432
  store i64 2, ptr %i.n, align 8, !noalias !32432
  call fastcc void @_RINvNtCs2TwJzntlzha_11flatbuffers8verifier12append_traceuECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.o, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !32432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !32432
  br label %bb.tx

bb.rx:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32433)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32439)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32442)
  %i.bgw = and i64 %3, 3
  %i.bgx = icmp eq i64 %i.bgw, 0
  %i.bgy = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %3, i64 0 ; 3 uses
  br i1 %i.bgx, label %bb.ry, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema10BinaryViewEReECs14kWLkQVSKO_14deltalake_core.exit

bb.ry:                                            ; preds = %bb.rx
  %i.bgz = tail call i64 @llvm.uadd.sat.i64(i64 %3, i64 4) ; 2 uses
  %i.bha = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bhb = load i64, ptr %i.bha, align 8, !alias.scope !32445, !noalias !32446, !noundef !3 ; 9 uses
  %i.bhc = icmp ugt i64 %i.bgz, %i.bhb
  br i1 %i.bhc, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema10BinaryViewEReECs14kWLkQVSKO_14deltalake_core.exit, label %bb.rz

bb.rz:                                            ; preds = %bb.ry
  %i.bhd = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.bhe = load i64, ptr %i.bhd, align 8, !alias.scope !32445, !noalias !32446, !noundef !3
  %i.bhf = add i64 %i.bhe, 4                      ; 2 uses
  store i64 %i.bhf, ptr %i.bhd, align 8, !alias.scope !32445, !noalias !32446
  %i.bhg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bhh = load ptr, ptr %i.bhg, align 8, !alias.scope !32445, !noalias !32446, !nonnull !3, !align !100, !noundef !3
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.bhh, i64 16
  %i.bhj = load i64, ptr %i.bhi, align 8, !noalias !32451, !noundef !3
  %i.bhk = icmp ugt i64 %i.bhf, %i.bhj
  br i1 %i.bhk, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema10BinaryViewEReECs14kWLkQVSKO_14deltalake_core.exit, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i1450

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i1450: ; preds = %bb.rz
  %i.bhl = icmp ult i64 %3, %i.bhb
  br i1 %i.bhl, label %bb.sa, label %bb.sb

bb.sa:                                            ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i1450
  %i.bhm = load ptr, ptr %2, align 8, !alias.scope !32452, !noalias !32453, !nonnull !3, !noundef !3 ; 4 uses
  %i.bhn = getelementptr inbounds nuw i8, ptr %i.bhm, i64 %3
  %i.bho = load i8, ptr %i.bhn, align 1, !noalias !32454, !noundef !3
  %i.bhp = or disjoint i64 %3, 1                  ; 3 uses
  %i.bhq = icmp ult i64 %i.bhp, %i.bhb
  br i1 %i.bhq, label %bb.sc, label %bb.sd

bb.sb:                                            ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i1450
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %3, i64 noundef %i.bhb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #51, !noalias !32454
  unreachable

bb.sc:                                            ; preds = %bb.sa
  %i.bhr = getelementptr inbounds nuw i8, ptr %i.bhm, i64 %i.bhp
  %i.bhs = load i8, ptr %i.bhr, align 1, !noalias !32454, !noundef !3
  %i.bht = or disjoint i64 %3, 2                  ; 3 uses
  %i.bhu = icmp ult i64 %i.bht, %i.bhb
  br i1 %i.bhu, label %bb.se, label %bb.sf

bb.sd:                                            ; preds = %bb.sa
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.bhp, i64 noundef %i.bhb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #51, !noalias !32454
  unreachable

bb.se:                                            ; preds = %bb.sc
  %i.bhv = or disjoint i64 %3, 3                  ; 3 uses
  %i.bhw = icmp ult i64 %i.bhv, %i.bhb
  br i1 %i.bhw, label %bb.sh, label %bb.sg

bb.sf:                                            ; preds = %bb.sc
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.bht, i64 noundef %i.bhb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #51, !noalias !32454
  unreachable

bb.sg:                                            ; preds = %bb.se
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.bhv, i64 noundef %i.bhb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #51, !noalias !32454
  unreachable

bb.sh:                                            ; preds = %bb.se
  %i.bhx = getelementptr inbounds nuw i8, ptr %i.bhm, i64 %i.bht
  %i.bhy = load i8, ptr %i.bhx, align 1, !noalias !32454, !noundef !3
  %i.bhz = getelementptr inbounds nuw i8, ptr %i.bhm, i64 %i.bhv
  %i.bia = load i8, ptr %i.bhz, align 1, !noalias !32454, !noundef !3
  %.sroa.6.0.insert.ext.i.i.i1451 = zext i8 %i.bia to i64
  %.sroa.6.0.insert.shift.i.i.i1452 = shl nuw nsw i64 %.sroa.6.0.insert.ext.i.i.i1451, 24
  %.sroa.5.0.insert.ext.i.i.i1453 = zext i8 %i.bhy to i64
  %.sroa.5.0.insert.shift.i.i.i1454 = shl nuw nsw i64 %.sroa.5.0.insert.ext.i.i.i1453, 16
  %.sroa.4.0.insert.ext.i.i.i1455 = zext i8 %i.bhs to i64
  %.sroa.4.0.insert.shift.i.i.i1456 = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i.i1455, 8
  %.sroa.0.0.insert.ext.i.i.i1457 = zext i8 %i.bho to i64
  %.sroa.5.0.insert.insert.i.i.i1458 = or disjoint i64 %.sroa.4.0.insert.shift.i.i.i1456, %.sroa.0.0.insert.ext.i.i.i1457
  %.sroa.4.0.insert.insert.i.i.i1459 = or disjoint i64 %.sroa.5.0.insert.insert.i.i.i1458, %.sroa.5.0.insert.shift.i.i.i1454
  %.sroa.0.0.insert.insert.i.i.i1460 = or disjoint i64 %.sroa.4.0.insert.insert.i.i.i1459, %.sroa.6.0.insert.shift.i.i.i1452
  %i.bib = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.0.insert.insert.i.i.i1460, i64 %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !32455
  call fastcc void @_RNvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB5_8Verifier11visit_table(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(48) %2, i64 noundef %i.bib) #50, !noalias !32459
  %i.bic = load i64, ptr %i.j, align 8, !range !99, !noalias !32455, !noundef !3 ; 2 uses
  %.not.i.i.i1461 = icmp eq i64 %i.bic, -9223372036854775798
  %i.bid = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.013.0.copyload.i.i.i1462 = load ptr, ptr %i.bid, align 8, !noalias !32455 ; 2 uses
  br i1 %.not.i.i.i1461, label %bb.sj, label %bb.si

bb.si:                                            ; preds = %bb.sh
  %.sroa.624.0..sroa_idx.i.i.i1463 = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %24 = load <2 x i64>, ptr %.sroa.624.0..sroa_idx.i.i.i1463, align 8, !noalias !32455
  %.sroa.826.0..sroa_idx.i.i.i1467 = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.826.0.copyload.i.i.i1468 = load i64, ptr %.sroa.826.0..sroa_idx.i.i.i1467, align 8, !noalias !32455
  %.sroa.927.0..sroa_idx.i.i.i1469 = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.sroa.14.40.copyload.i1470 = load i64, ptr %.sroa.927.0..sroa_idx.i.i.i1469, align 8, !noalias !32460
  %.sroa.16.40..sroa.927.0..sroa_idx.i.i.sroa_idx.i1471 = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %.sroa.16.40.copyload.i1472 = load i64, ptr %.sroa.16.40..sroa.927.0..sroa_idx.i.i.sroa_idx.i1471, align 8, !noalias !32460
  %.sroa.17.40..sroa.927.0..sroa_idx.i.i.sroa_idx.i1473 = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.bie = load <2 x i64>, ptr %.sroa.17.40..sroa.927.0..sroa_idx.i.i.sroa_idx.i1473, align 8, !noalias !32460
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !32455
  br label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema10BinaryViewEReECs14kWLkQVSKO_14deltalake_core.exit

bb.sj:                                            ; preds = %bb.sh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !32455
  %i.bif = getelementptr inbounds nuw i8, ptr %.sroa.013.0.copyload.i.i.i1462, i64 24 ; 2 uses
  %i.big = load i64, ptr %i.bif, align 8, !noalias !32459, !noundef !3
  %i.bih = add i64 %i.big, -1
  store i64 %i.bih, ptr %i.bif, align 8, !noalias !32459
  br label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema10BinaryViewEReECs14kWLkQVSKO_14deltalake_core.exit

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema10BinaryViewEReECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.rx, %bb.ry, %bb.rz, %bb.si, %bb.sj
  %.sroa.5.1.i1431 = phi ptr [ null, %bb.rx ], [ null, %bb.rz ], [ null, %bb.ry ], [ undef, %bb.sj ], [ %.sroa.013.0.copyload.i.i.i1462, %bb.si ]
  %.sroa.16.1.i1434 = phi i64 [ 3, %bb.rx ], [ 3, %bb.rz ], [ 3, %bb.ry ], [ undef, %bb.sj ], [ %.sroa.16.40.copyload.i1472, %bb.si ]
  %.sroa.14.1.i1435 = phi i64 [ ptrtoint (ptr @12 to i64), %bb.rx ], [ undef, %bb.rz ], [ %i.bgz, %bb.ry ], [ undef, %bb.sj ], [ %.sroa.14.40.copyload.i1470, %bb.si ]
  %.sroa.12.1.i1436 = phi i64 [ -9223372036854775808, %bb.rx ], [ undef, %bb.rz ], [ %3, %bb.ry ], [ undef, %bb.sj ], [ %.sroa.826.0.copyload.i.i.i1468, %bb.si ]
  %.sroa.0.0.i1439.a = phi i64 [ -9223372036854775804, %bb.rx ], [ -9223372036854775800, %bb.rz ], [ -9223372036854775803, %bb.ry ], [ -9223372036854775798, %bb.sj ], [ %i.bic, %bb.si ]
  %25 = phi <2 x i64> [ <i64 8, i64 0>, %bb.rx ], [ <i64 8, i64 0>, %bb.rz ], [ <i64 8, i64 0>, %bb.ry ], [ undef, %bb.sj ], [ %24, %bb.si ]
  %i.bii = phi <2 x i64> [ %i.bgy, %bb.rx ], [ %i.bgy, %bb.rz ], [ %i.bgy, %bb.ry ], [ undef, %bb.sj ], [ %i.bie, %bb.si ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !32461
  store i64 %.sroa.0.0.i1439.a, ptr %i.l, align 8, !noalias !32461
  %.sroa.5.0..sroa_idx.i1440 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %.sroa.5.1.i1431, ptr %.sroa.5.0..sroa_idx.i1440, align 8, !noalias !32461
  %.sroa.8.0..sroa_idx.i1441 = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store <2 x i64> %25, ptr %.sroa.8.0..sroa_idx.i1441, align 8, !noalias !32461
  %.sroa.12.0..sroa_idx.i1443 = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i64 %.sroa.12.1.i1436, ptr %.sroa.12.0..sroa_idx.i1443, align 8, !noalias !32461
  %.sroa.14.0..sroa_idx.i1444 = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store i64 %.sroa.14.1.i1435, ptr %.sroa.14.0..sroa_idx.i1444, align 8, !noalias !32461
  %.sroa.16.0..sroa_idx.i1445 = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store i64 %.sroa.16.1.i1434, ptr %.sroa.16.0..sroa_idx.i1445, align 8, !noalias !32461
  %.sroa.17.0..sroa_idx.i1446 = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store <2 x i64> %i.bii, ptr %.sroa.17.0..sroa_idx.i1446, align 8, !noalias !32461
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !32461
  %i.bij = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 -9223372036854775808, ptr %i.bij, align 8, !noalias !32461
  %.sroa.4.0..sroa_idx.i1448 = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @82, ptr %.sroa.4.0..sroa_idx.i1448, align 8, !noalias !32461
  %.sroa.52.0..sroa_idx.i1449 = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i64 16, ptr %.sroa.52.0..sroa_idx.i1449, align 8, !noalias !32461
  %i.bik = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %3, ptr %i.bik, align 8, !noalias !32461
  store i64 2, ptr %i.k, align 8, !noalias !32461
  call fastcc void @_RINvNtCs2TwJzntlzha_11flatbuffers8verifier12append_traceuECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.l, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !32461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !32461
  br label %bb.tx

bb.sk:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32462)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32465)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32471)
  %i.bil = and i64 %3, 3
  %i.bim = icmp eq i64 %i.bil, 0
  %i.bin = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %3, i64 0 ; 3 uses
  br i1 %i.bim, label %bb.sl, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema8Utf8ViewEReECs14kWLkQVSKO_14deltalake_core.exit

bb.sl:                                            ; preds = %bb.sk
  %i.bio = tail call i64 @llvm.uadd.sat.i64(i64 %3, i64 4) ; 2 uses
  %i.bip = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.biq = load i64, ptr %i.bip, align 8, !alias.scope !32474, !noalias !32475, !noundef !3 ; 9 uses
  %i.bir = icmp ugt i64 %i.bio, %i.biq
  br i1 %i.bir, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema8Utf8ViewEReECs14kWLkQVSKO_14deltalake_core.exit, label %bb.sm

bb.sm:                                            ; preds = %bb.sl
  %i.bis = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.bit = load i64, ptr %i.bis, align 8, !alias.scope !32474, !noalias !32475, !noundef !3
  %i.biu = add i64 %i.bit, 4                      ; 2 uses
  store i64 %i.biu, ptr %i.bis, align 8, !alias.scope !32474, !noalias !32475
  %i.biv = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.biw = load ptr, ptr %i.biv, align 8, !alias.scope !32474, !noalias !32475, !nonnull !3, !align !100, !noundef !3
  %i.bix = getelementptr inbounds nuw i8, ptr %i.biw, i64 16
  %i.biy = load i64, ptr %i.bix, align 8, !noalias !32480, !noundef !3
  %i.biz = icmp ugt i64 %i.biu, %i.biy
  br i1 %i.biz, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema8Utf8ViewEReECs14kWLkQVSKO_14deltalake_core.exit, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i1496

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i1496: ; preds = %bb.sm
  %i.bja = icmp ult i64 %3, %i.biq
  br i1 %i.bja, label %bb.sn, label %bb.so

bb.sn:                                            ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i1496
  %i.bjb = load ptr, ptr %2, align 8, !alias.scope !32481, !noalias !32482, !nonnull !3, !noundef !3 ; 4 uses
  %i.bjc = getelementptr inbounds nuw i8, ptr %i.bjb, i64 %3
  %i.bjd = load i8, ptr %i.bjc, align 1, !noalias !32483, !noundef !3
  %i.bje = or disjoint i64 %3, 1                  ; 3 uses
  %i.bjf = icmp ult i64 %i.bje, %i.biq
  br i1 %i.bjf, label %bb.sp, label %bb.sq

bb.so:                                            ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i1496
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %3, i64 noundef %i.biq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #51, !noalias !32483
  unreachable

bb.sp:                                            ; preds = %bb.sn
  %i.bjg = getelementptr inbounds nuw i8, ptr %i.bjb, i64 %i.bje
  %i.bjh = load i8, ptr %i.bjg, align 1, !noalias !32483, !noundef !3
  %i.bji = or disjoint i64 %3, 2                  ; 3 uses
  %i.bjj = icmp ult i64 %i.bji, %i.biq
  br i1 %i.bjj, label %bb.sr, label %bb.ss

bb.sq:                                            ; preds = %bb.sn
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.bje, i64 noundef %i.biq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #51, !noalias !32483
  unreachable

bb.sr:                                            ; preds = %bb.sp
  %i.bjk = or disjoint i64 %3, 3                  ; 3 uses
  %i.bjl = icmp ult i64 %i.bjk, %i.biq
  br i1 %i.bjl, label %bb.su, label %bb.st

bb.ss:                                            ; preds = %bb.sp
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.bji, i64 noundef %i.biq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #51, !noalias !32483
  unreachable

bb.st:                                            ; preds = %bb.sr
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.bjk, i64 noundef %i.biq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #51, !noalias !32483
  unreachable

bb.su:                                            ; preds = %bb.sr
  %i.bjm = getelementptr inbounds nuw i8, ptr %i.bjb, i64 %i.bji
  %i.bjn = load i8, ptr %i.bjm, align 1, !noalias !32483, !noundef !3
  %i.bjo = getelementptr inbounds nuw i8, ptr %i.bjb, i64 %i.bjk
  %i.bjp = load i8, ptr %i.bjo, align 1, !noalias !32483, !noundef !3
  %.sroa.6.0.insert.ext.i.i.i1497 = zext i8 %i.bjp to i64
  %.sroa.6.0.insert.shift.i.i.i1498 = shl nuw nsw i64 %.sroa.6.0.insert.ext.i.i.i1497, 24
  %.sroa.5.0.insert.ext.i.i.i1499 = zext i8 %i.bjn to i64
  %.sroa.5.0.insert.shift.i.i.i1500 = shl nuw nsw i64 %.sroa.5.0.insert.ext.i.i.i1499, 16
  %.sroa.4.0.insert.ext.i.i.i1501 = zext i8 %i.bjh to i64
  %.sroa.4.0.insert.shift.i.i.i1502 = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i.i1501, 8
  %.sroa.0.0.insert.ext.i.i.i1503 = zext i8 %i.bjd to i64
  %.sroa.5.0.insert.insert.i.i.i1504 = or disjoint i64 %.sroa.4.0.insert.shift.i.i.i1502, %.sroa.0.0.insert.ext.i.i.i1503
  %.sroa.4.0.insert.insert.i.i.i1505 = or disjoint i64 %.sroa.5.0.insert.insert.i.i.i1504, %.sroa.5.0.insert.shift.i.i.i1500
  %.sroa.0.0.insert.insert.i.i.i1506 = or disjoint i64 %.sroa.4.0.insert.insert.i.i.i1505, %.sroa.6.0.insert.shift.i.i.i1498
  %i.bjq = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.0.insert.insert.i.i.i1506, i64 %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !32484
  call fastcc void @_RNvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB5_8Verifier11visit_table(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(48) %2, i64 noundef %i.bjq) #50, !noalias !32488
  %i.bjr = load i64, ptr %i.g, align 8, !range !99, !noalias !32484, !noundef !3 ; 2 uses
  %.not.i.i.i1507 = icmp eq i64 %i.bjr, -9223372036854775798
  %i.bjs = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.013.0.copyload.i.i.i1508 = load ptr, ptr %i.bjs, align 8, !noalias !32484 ; 2 uses
  br i1 %.not.i.i.i1507, label %bb.sw, label %bb.sv

bb.sv:                                            ; preds = %bb.su
  %.sroa.624.0..sroa_idx.i.i.i1509 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %26 = load <2 x i64>, ptr %.sroa.624.0..sroa_idx.i.i.i1509, align 8, !noalias !32484
  %.sroa.826.0..sroa_idx.i.i.i1513 = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.826.0.copyload.i.i.i1514 = load i64, ptr %.sroa.826.0..sroa_idx.i.i.i1513, align 8, !noalias !32484
  %.sroa.927.0..sroa_idx.i.i.i1515 = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.14.40.copyload.i1516 = load i64, ptr %.sroa.927.0..sroa_idx.i.i.i1515, align 8, !noalias !32489
  %.sroa.16.40..sroa.927.0..sroa_idx.i.i.sroa_idx.i1517 = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.16.40.copyload.i1518 = load i64, ptr %.sroa.16.40..sroa.927.0..sroa_idx.i.i.sroa_idx.i1517, align 8, !noalias !32489
  %.sroa.17.40..sroa.927.0..sroa_idx.i.i.sroa_idx.i1519 = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.bjt = load <2 x i64>, ptr %.sroa.17.40..sroa.927.0..sroa_idx.i.i.sroa_idx.i1519, align 8, !noalias !32489
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !32484
  br label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema8Utf8ViewEReECs14kWLkQVSKO_14deltalake_core.exit

bb.sw:                                            ; preds = %bb.su
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !32484
  %i.bju = getelementptr inbounds nuw i8, ptr %.sroa.013.0.copyload.i.i.i1508, i64 24 ; 2 uses
  %i.bjv = load i64, ptr %i.bju, align 8, !noalias !32488, !noundef !3
  %i.bjw = add i64 %i.bjv, -1
  store i64 %i.bjw, ptr %i.bju, align 8, !noalias !32488
  br label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema8Utf8ViewEReECs14kWLkQVSKO_14deltalake_core.exit

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema8Utf8ViewEReECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.sk, %bb.sl, %bb.sm, %bb.sv, %bb.sw
  %.sroa.5.1.i1477 = phi ptr [ null, %bb.sk ], [ null, %bb.sm ], [ null, %bb.sl ], [ undef, %bb.sw ], [ %.sroa.013.0.copyload.i.i.i1508, %bb.sv ]
  %.sroa.16.1.i1480 = phi i64 [ 3, %bb.sk ], [ 3, %bb.sm ], [ 3, %bb.sl ], [ undef, %bb.sw ], [ %.sroa.16.40.copyload.i1518, %bb.sv ]
  %.sroa.14.1.i1481 = phi i64 [ ptrtoint (ptr @12 to i64), %bb.sk ], [ undef, %bb.sm ], [ %i.bio, %bb.sl ], [ undef, %bb.sw ], [ %.sroa.14.40.copyload.i1516, %bb.sv ]
  %.sroa.12.1.i1482 = phi i64 [ -9223372036854775808, %bb.sk ], [ undef, %bb.sm ], [ %3, %bb.sl ], [ undef, %bb.sw ], [ %.sroa.826.0.copyload.i.i.i1514, %bb.sv ]
  %.sroa.0.0.i1485.a = phi i64 [ -9223372036854775804, %bb.sk ], [ -9223372036854775800, %bb.sm ], [ -9223372036854775803, %bb.sl ], [ -9223372036854775798, %bb.sw ], [ %i.bjr, %bb.sv ]
  %27 = phi <2 x i64> [ <i64 8, i64 0>, %bb.sk ], [ <i64 8, i64 0>, %bb.sm ], [ <i64 8, i64 0>, %bb.sl ], [ undef, %bb.sw ], [ %26, %bb.sv ]
  %i.bjx = phi <2 x i64> [ %i.bin, %bb.sk ], [ %i.bin, %bb.sm ], [ %i.bin, %bb.sl ], [ undef, %bb.sw ], [ %i.bjt, %bb.sv ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !32490
  store i64 %.sroa.0.0.i1485.a, ptr %i.i, align 8, !noalias !32490
  %.sroa.5.0..sroa_idx.i1486 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %.sroa.5.1.i1477, ptr %.sroa.5.0..sroa_idx.i1486, align 8, !noalias !32490
  %.sroa.8.0..sroa_idx.i1487 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store <2 x i64> %27, ptr %.sroa.8.0..sroa_idx.i1487, align 8, !noalias !32490
  %.sroa.12.0..sroa_idx.i1489 = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i64 %.sroa.12.1.i1482, ptr %.sroa.12.0..sroa_idx.i1489, align 8, !noalias !32490
  %.sroa.14.0..sroa_idx.i1490 = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 %.sroa.14.1.i1481, ptr %.sroa.14.0..sroa_idx.i1490, align 8, !noalias !32490
  %.sroa.16.0..sroa_idx.i1491 = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store i64 %.sroa.16.1.i1480, ptr %.sroa.16.0..sroa_idx.i1491, align 8, !noalias !32490
  %.sroa.17.0..sroa_idx.i1492 = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store <2 x i64> %i.bjx, ptr %.sroa.17.0..sroa_idx.i1492, align 8, !noalias !32490
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !32490
  %i.bjy = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 -9223372036854775808, ptr %i.bjy, align 8, !noalias !32490
  %.sroa.4.0..sroa_idx.i1494 = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr @83, ptr %.sroa.4.0..sroa_idx.i1494, align 8, !noalias !32490
  %.sroa.52.0..sroa_idx.i1495 = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 14, ptr %.sroa.52.0..sroa_idx.i1495, align 8, !noalias !32490
  %i.bjz = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %3, ptr %i.bjz, align 8, !noalias !32490
  store i64 2, ptr %i.h, align 8, !noalias !32490
  call fastcc void @_RINvNtCs2TwJzntlzha_11flatbuffers8verifier12append_traceuECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.i, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !32490
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !32490
  br label %bb.tx

bb.sx:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32491)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32494)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32497)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32500)
  %i.bka = and i64 %3, 3
  %i.bkb = icmp eq i64 %i.bka, 0
  %i.bkc = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %3, i64 0 ; 3 uses
  br i1 %i.bkb, label %bb.sy, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema8ListViewEReECs14kWLkQVSKO_14deltalake_core.exit

bb.sy:                                            ; preds = %bb.sx
  %i.bkd = tail call i64 @llvm.uadd.sat.i64(i64 %3, i64 4) ; 2 uses
  %i.bke = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bkf = load i64, ptr %i.bke, align 8, !alias.scope !32503, !noalias !32504, !noundef !3 ; 9 uses
  %i.bkg = icmp ugt i64 %i.bkd, %i.bkf
  br i1 %i.bkg, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema8ListViewEReECs14kWLkQVSKO_14deltalake_core.exit, label %bb.sz

bb.sz:                                            ; preds = %bb.sy
  %i.bkh = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.bki = load i64, ptr %i.bkh, align 8, !alias.scope !32503, !noalias !32504, !noundef !3
  %i.bkj = add i64 %i.bki, 4                      ; 2 uses
  store i64 %i.bkj, ptr %i.bkh, align 8, !alias.scope !32503, !noalias !32504
  %i.bkk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bkl = load ptr, ptr %i.bkk, align 8, !alias.scope !32503, !noalias !32504, !nonnull !3, !align !100, !noundef !3
  %i.bkm = getelementptr inbounds nuw i8, ptr %i.bkl, i64 16
  %i.bkn = load i64, ptr %i.bkm, align 8, !noalias !32509, !noundef !3
  %i.bko = icmp ugt i64 %i.bkj, %i.bkn
  br i1 %i.bko, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema8ListViewEReECs14kWLkQVSKO_14deltalake_core.exit, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i1542

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i1542: ; preds = %bb.sz
  %i.bkp = icmp ult i64 %3, %i.bkf
  br i1 %i.bkp, label %bb.ta, label %bb.tb

bb.ta:                                            ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i1542
  %i.bkq = load ptr, ptr %2, align 8, !alias.scope !32510, !noalias !32511, !nonnull !3, !noundef !3 ; 4 uses
  %i.bkr = getelementptr inbounds nuw i8, ptr %i.bkq, i64 %3
  %i.bks = load i8, ptr %i.bkr, align 1, !noalias !32512, !noundef !3
  %i.bkt = or disjoint i64 %3, 1                  ; 3 uses
  %i.bku = icmp ult i64 %i.bkt, %i.bkf
  br i1 %i.bku, label %bb.tc, label %bb.td

bb.tb:                                            ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i1542
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %3, i64 noundef %i.bkf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #51, !noalias !32512
  unreachable

bb.tc:                                            ; preds = %bb.ta
  %i.bkv = getelementptr inbounds nuw i8, ptr %i.bkq, i64 %i.bkt
  %i.bkw = load i8, ptr %i.bkv, align 1, !noalias !32512, !noundef !3
  %i.bkx = or disjoint i64 %3, 2                  ; 3 uses
  %i.bky = icmp ult i64 %i.bkx, %i.bkf
  br i1 %i.bky, label %bb.te, label %bb.tf

bb.td:                                            ; preds = %bb.ta
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.bkt, i64 noundef %i.bkf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #51, !noalias !32512
  unreachable

bb.te:                                            ; preds = %bb.tc
  %i.bkz = or disjoint i64 %3, 3                  ; 3 uses
  %i.bla = icmp ult i64 %i.bkz, %i.bkf
  br i1 %i.bla, label %bb.th, label %bb.tg

bb.tf:                                            ; preds = %bb.tc
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.bkx, i64 noundef %i.bkf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #51, !noalias !32512
  unreachable

bb.tg:                                            ; preds = %bb.te
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.bkz, i64 noundef %i.bkf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #51, !noalias !32512
  unreachable

bb.th:                                            ; preds = %bb.te
  %i.blb = getelementptr inbounds nuw i8, ptr %i.bkq, i64 %i.bkx
  %i.blc = load i8, ptr %i.blb, align 1, !noalias !32512, !noundef !3
  %i.bld = getelementptr inbounds nuw i8, ptr %i.bkq, i64 %i.bkz
  %i.ble = load i8, ptr %i.bld, align 1, !noalias !32512, !noundef !3
  %.sroa.6.0.insert.ext.i.i.i1543 = zext i8 %i.ble to i64
  %.sroa.6.0.insert.shift.i.i.i1544 = shl nuw nsw i64 %.sroa.6.0.insert.ext.i.i.i1543, 24
  %.sroa.5.0.insert.ext.i.i.i1545 = zext i8 %i.blc to i64
  %.sroa.5.0.insert.shift.i.i.i1546 = shl nuw nsw i64 %.sroa.5.0.insert.ext.i.i.i1545, 16
  %.sroa.4.0.insert.ext.i.i.i1547 = zext i8 %i.bkw to i64
  %.sroa.4.0.insert.shift.i.i.i1548 = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i.i1547, 8
  %.sroa.0.0.insert.ext.i.i.i1549 = zext i8 %i.bks to i64
  %.sroa.5.0.insert.insert.i.i.i1550 = or disjoint i64 %.sroa.4.0.insert.shift.i.i.i1548, %.sroa.0.0.insert.ext.i.i.i1549
  %.sroa.4.0.insert.insert.i.i.i1551 = or disjoint i64 %.sroa.5.0.insert.insert.i.i.i1550, %.sroa.5.0.insert.shift.i.i.i1546
  %.sroa.0.0.insert.insert.i.i.i1552 = or disjoint i64 %.sroa.4.0.insert.insert.i.i.i1551, %.sroa.6.0.insert.shift.i.i.i1544
  %i.blf = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.0.insert.insert.i.i.i1552, i64 %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !32513
  call fastcc void @_RNvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB5_8Verifier11visit_table(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(48) %2, i64 noundef %i.blf) #50, !noalias !32517
  %i.blg = load i64, ptr %i.d, align 8, !range !99, !noalias !32513, !noundef !3 ; 2 uses
  %.not.i.i.i1553 = icmp eq i64 %i.blg, -9223372036854775798
  %i.blh = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.013.0.copyload.i.i.i1554 = load ptr, ptr %i.blh, align 8, !noalias !32513 ; 2 uses
  br i1 %.not.i.i.i1553, label %bb.tj, label %bb.ti

bb.ti:                                            ; preds = %bb.th
  %.sroa.624.0..sroa_idx.i.i.i1555 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %28 = load <2 x i64>, ptr %.sroa.624.0..sroa_idx.i.i.i1555, align 8, !noalias !32513
  %.sroa.826.0..sroa_idx.i.i.i1559 = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.826.0.copyload.i.i.i1560 = load i64, ptr %.sroa.826.0..sroa_idx.i.i.i1559, align 8, !noalias !32513
  %.sroa.927.0..sroa_idx.i.i.i1561 = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.14.40.copyload.i1562 = load i64, ptr %.sroa.927.0..sroa_idx.i.i.i1561, align 8, !noalias !32518
  %.sroa.16.40..sroa.927.0..sroa_idx.i.i.sroa_idx.i1563 = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.16.40.copyload.i1564 = load i64, ptr %.sroa.16.40..sroa.927.0..sroa_idx.i.i.sroa_idx.i1563, align 8, !noalias !32518
  %.sroa.17.40..sroa.927.0..sroa_idx.i.i.sroa_idx.i1565 = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.bli = load <2 x i64>, ptr %.sroa.17.40..sroa.927.0..sroa_idx.i.i.sroa_idx.i1565, align 8, !noalias !32518
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !32513
  br label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema8ListViewEReECs14kWLkQVSKO_14deltalake_core.exit

bb.tj:                                            ; preds = %bb.th
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !32513
  %i.blj = getelementptr inbounds nuw i8, ptr %.sroa.013.0.copyload.i.i.i1554, i64 24 ; 2 uses
  %i.blk = load i64, ptr %i.blj, align 8, !noalias !32517, !noundef !3
  %i.bll = add i64 %i.blk, -1
  store i64 %i.bll, ptr %i.blj, align 8, !noalias !32517
  br label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema8ListViewEReECs14kWLkQVSKO_14deltalake_core.exit

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema8ListViewEReECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.sx, %bb.sy, %bb.sz, %bb.ti, %bb.tj
  %.sroa.5.1.i1523 = phi ptr [ null, %bb.sx ], [ null, %bb.sz ], [ null, %bb.sy ], [ undef, %bb.tj ], [ %.sroa.013.0.copyload.i.i.i1554, %bb.ti ]
  %.sroa.16.1.i1526 = phi i64 [ 3, %bb.sx ], [ 3, %bb.sz ], [ 3, %bb.sy ], [ undef, %bb.tj ], [ %.sroa.16.40.copyload.i1564, %bb.ti ]
  %.sroa.14.1.i1527 = phi i64 [ ptrtoint (ptr @12 to i64), %bb.sx ], [ undef, %bb.sz ], [ %i.bkd, %bb.sy ], [ undef, %bb.tj ], [ %.sroa.14.40.copyload.i1562, %bb.ti ]
  %.sroa.12.1.i1528 = phi i64 [ -9223372036854775808, %bb.sx ], [ undef, %bb.sz ], [ %3, %bb.sy ], [ undef, %bb.tj ], [ %.sroa.826.0.copyload.i.i.i1560, %bb.ti ]
  %.sroa.0.0.i1531.a = phi i64 [ -9223372036854775804, %bb.sx ], [ -9223372036854775800, %bb.sz ], [ -9223372036854775803, %bb.sy ], [ -9223372036854775798, %bb.tj ], [ %i.blg, %bb.ti ]
  %29 = phi <2 x i64> [ <i64 8, i64 0>, %bb.sx ], [ <i64 8, i64 0>, %bb.sz ], [ <i64 8, i64 0>, %bb.sy ], [ undef, %bb.tj ], [ %28, %bb.ti ]
  %i.blm = phi <2 x i64> [ %i.bkc, %bb.sx ], [ %i.bkc, %bb.sz ], [ %i.bkc, %bb.sy ], [ undef, %bb.tj ], [ %i.bli, %bb.ti ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !32519
  store i64 %.sroa.0.0.i1531.a, ptr %i.f, align 8, !noalias !32519
  %.sroa.5.0..sroa_idx.i1532 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.5.1.i1523, ptr %.sroa.5.0..sroa_idx.i1532, align 8, !noalias !32519
  %.sroa.8.0..sroa_idx.i1533 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store <2 x i64> %29, ptr %.sroa.8.0..sroa_idx.i1533, align 8, !noalias !32519
  %.sroa.12.0..sroa_idx.i1535 = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i64 %.sroa.12.1.i1528, ptr %.sroa.12.0..sroa_idx.i1535, align 8, !noalias !32519
  %.sroa.14.0..sroa_idx.i1536 = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i64 %.sroa.14.1.i1527, ptr %.sroa.14.0..sroa_idx.i1536, align 8, !noalias !32519
  %.sroa.16.0..sroa_idx.i1537 = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i64 %.sroa.16.1.i1526, ptr %.sroa.16.0..sroa_idx.i1537, align 8, !noalias !32519
  %.sroa.17.0..sroa_idx.i1538 = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store <2 x i64> %i.blm, ptr %.sroa.17.0..sroa_idx.i1538, align 8, !noalias !32519
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !32519
  %i.bln = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 -9223372036854775808, ptr %i.bln, align 8, !noalias !32519
  %.sroa.4.0..sroa_idx.i1540 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @84, ptr %.sroa.4.0..sroa_idx.i1540, align 8, !noalias !32519
  %.sroa.52.0..sroa_idx.i1541 = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 14, ptr %.sroa.52.0..sroa_idx.i1541, align 8, !noalias !32519
  %i.blo = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %3, ptr %i.blo, align 8, !noalias !32519
  store i64 2, ptr %i.e, align 8, !noalias !32519
  call fastcc void @_RINvNtCs2TwJzntlzha_11flatbuffers8verifier12append_traceuECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !32519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !32519
  br label %bb.tx

bb.tk:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32520)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32523)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32526)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32529)
  %i.blp = and i64 %3, 3
  %i.blq = icmp eq i64 %i.blp, 0
  %i.blr = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %3, i64 0 ; 3 uses
  br i1 %i.blq, label %bb.tl, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema13LargeListViewEReECs14kWLkQVSKO_14deltalake_core.exit

bb.tl:                                            ; preds = %bb.tk
  %i.bls = tail call i64 @llvm.uadd.sat.i64(i64 %3, i64 4) ; 2 uses
  %i.blt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.blu = load i64, ptr %i.blt, align 8, !alias.scope !32532, !noalias !32533, !noundef !3 ; 9 uses
  %i.blv = icmp ugt i64 %i.bls, %i.blu
  br i1 %i.blv, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema13LargeListViewEReECs14kWLkQVSKO_14deltalake_core.exit, label %bb.tm

bb.tm:                                            ; preds = %bb.tl
  %i.blw = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.blx = load i64, ptr %i.blw, align 8, !alias.scope !32532, !noalias !32533, !noundef !3
  %i.bly = add i64 %i.blx, 4                      ; 2 uses
  store i64 %i.bly, ptr %i.blw, align 8, !alias.scope !32532, !noalias !32533
  %i.blz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bma = load ptr, ptr %i.blz, align 8, !alias.scope !32532, !noalias !32533, !nonnull !3, !align !100, !noundef !3
  %i.bmb = getelementptr inbounds nuw i8, ptr %i.bma, i64 16
  %i.bmc = load i64, ptr %i.bmb, align 8, !noalias !32538, !noundef !3
  %i.bmd = icmp ugt i64 %i.bly, %i.bmc
  br i1 %i.bmd, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema13LargeListViewEReECs14kWLkQVSKO_14deltalake_core.exit, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i1588

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i1588: ; preds = %bb.tm
  %i.bme = icmp ult i64 %3, %i.blu
  br i1 %i.bme, label %bb.tn, label %bb.to

bb.tn:                                            ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i1588
  %i.bmf = load ptr, ptr %2, align 8, !alias.scope !32539, !noalias !32540, !nonnull !3, !noundef !3 ; 4 uses
  %i.bmg = getelementptr inbounds nuw i8, ptr %i.bmf, i64 %3
  %i.bmh = load i8, ptr %i.bmg, align 1, !noalias !32541, !noundef !3
  %i.bmi = or disjoint i64 %3, 1                  ; 3 uses
  %i.bmj = icmp ult i64 %i.bmi, %i.blu
  br i1 %i.bmj, label %bb.tp, label %bb.tq

bb.to:                                            ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i1588
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %3, i64 noundef %i.blu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #51, !noalias !32541
  unreachable

bb.tp:                                            ; preds = %bb.tn
  %i.bmk = getelementptr inbounds nuw i8, ptr %i.bmf, i64 %i.bmi
  %i.bml = load i8, ptr %i.bmk, align 1, !noalias !32541, !noundef !3
  %i.bmm = or disjoint i64 %3, 2                  ; 3 uses
  %i.bmn = icmp ult i64 %i.bmm, %i.blu
  br i1 %i.bmn, label %bb.tr, label %bb.ts

bb.tq:                                            ; preds = %bb.tn
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.bmi, i64 noundef %i.blu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #51, !noalias !32541
  unreachable

bb.tr:                                            ; preds = %bb.tp
  %i.bmo = or disjoint i64 %3, 3                  ; 3 uses
  %i.bmp = icmp ult i64 %i.bmo, %i.blu
  br i1 %i.bmp, label %bb.tu, label %bb.tt

bb.ts:                                            ; preds = %bb.tp
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.bmm, i64 noundef %i.blu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #51, !noalias !32541
  unreachable

bb.tt:                                            ; preds = %bb.tr
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.bmo, i64 noundef %i.blu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #51, !noalias !32541
  unreachable

bb.tu:                                            ; preds = %bb.tr
  %i.bmq = getelementptr inbounds nuw i8, ptr %i.bmf, i64 %i.bmm
  %i.bmr = load i8, ptr %i.bmq, align 1, !noalias !32541, !noundef !3
  %i.bms = getelementptr inbounds nuw i8, ptr %i.bmf, i64 %i.bmo
  %i.bmt = load i8, ptr %i.bms, align 1, !noalias !32541, !noundef !3
  %.sroa.6.0.insert.ext.i.i.i1589 = zext i8 %i.bmt to i64
  %.sroa.6.0.insert.shift.i.i.i1590 = shl nuw nsw i64 %.sroa.6.0.insert.ext.i.i.i1589, 24
  %.sroa.5.0.insert.ext.i.i.i1591 = zext i8 %i.bmr to i64
  %.sroa.5.0.insert.shift.i.i.i1592 = shl nuw nsw i64 %.sroa.5.0.insert.ext.i.i.i1591, 16
  %.sroa.4.0.insert.ext.i.i.i1593 = zext i8 %i.bml to i64
  %.sroa.4.0.insert.shift.i.i.i1594 = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i.i1593, 8
  %.sroa.0.0.insert.ext.i.i.i1595 = zext i8 %i.bmh to i64
  %.sroa.5.0.insert.insert.i.i.i1596 = or disjoint i64 %.sroa.4.0.insert.shift.i.i.i1594, %.sroa.0.0.insert.ext.i.i.i1595
  %.sroa.4.0.insert.insert.i.i.i1597 = or disjoint i64 %.sroa.5.0.insert.insert.i.i.i1596, %.sroa.5.0.insert.shift.i.i.i1592
  %.sroa.0.0.insert.insert.i.i.i1598 = or disjoint i64 %.sroa.4.0.insert.insert.i.i.i1597, %.sroa.6.0.insert.shift.i.i.i1590
  %i.bmu = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.0.insert.insert.i.i.i1598, i64 %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !32542
  call fastcc void @_RNvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB5_8Verifier11visit_table(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(48) %2, i64 noundef %i.bmu) #50, !noalias !32546
  %i.bmv = load i64, ptr %i.a, align 8, !range !99, !noalias !32542, !noundef !3 ; 2 uses
  %.not.i.i.i1599 = icmp eq i64 %i.bmv, -9223372036854775798
  %i.bmw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.013.0.copyload.i.i.i1600 = load ptr, ptr %i.bmw, align 8, !noalias !32542 ; 2 uses
  br i1 %.not.i.i.i1599, label %bb.tw, label %bb.tv

bb.tv:                                            ; preds = %bb.tu
  %.sroa.624.0..sroa_idx.i.i.i1601 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %30 = load <2 x i64>, ptr %.sroa.624.0..sroa_idx.i.i.i1601, align 8, !noalias !32542
  %.sroa.826.0..sroa_idx.i.i.i1605 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.826.0.copyload.i.i.i1606 = load i64, ptr %.sroa.826.0..sroa_idx.i.i.i1605, align 8, !noalias !32542
  %.sroa.927.0..sroa_idx.i.i.i1607 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.14.40.copyload.i1608 = load i64, ptr %.sroa.927.0..sroa_idx.i.i.i1607, align 8, !noalias !32547
  %.sroa.16.40..sroa.927.0..sroa_idx.i.i.sroa_idx.i1609 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.16.40.copyload.i1610 = load i64, ptr %.sroa.16.40..sroa.927.0..sroa_idx.i.i.sroa_idx.i1609, align 8, !noalias !32547
  %.sroa.17.40..sroa.927.0..sroa_idx.i.i.sroa_idx.i1611 = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.bmx = load <2 x i64>, ptr %.sroa.17.40..sroa.927.0..sroa_idx.i.i.sroa_idx.i1611, align 8, !noalias !32547
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !32542
  br label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema13LargeListViewEReECs14kWLkQVSKO_14deltalake_core.exit

bb.tw:                                            ; preds = %bb.tu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !32542
  %i.bmy = getelementptr inbounds nuw i8, ptr %.sroa.013.0.copyload.i.i.i1600, i64 24 ; 2 uses
  %i.bmz = load i64, ptr %i.bmy, align 8, !noalias !32546, !noundef !3
  %i.bna = add i64 %i.bmz, -1
  store i64 %i.bna, ptr %i.bmy, align 8, !noalias !32546
  br label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema13LargeListViewEReECs14kWLkQVSKO_14deltalake_core.exit

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema13LargeListViewEReECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.tk, %bb.tl, %bb.tm, %bb.tv, %bb.tw
  %.sroa.5.1.i1569 = phi ptr [ null, %bb.tk ], [ null, %bb.tm ], [ null, %bb.tl ], [ undef, %bb.tw ], [ %.sroa.013.0.copyload.i.i.i1600, %bb.tv ]
  %.sroa.16.1.i1572 = phi i64 [ 3, %bb.tk ], [ 3, %bb.tm ], [ 3, %bb.tl ], [ undef, %bb.tw ], [ %.sroa.16.40.copyload.i1610, %bb.tv ]
  %.sroa.14.1.i1573 = phi i64 [ ptrtoint (ptr @12 to i64), %bb.tk ], [ undef, %bb.tm ], [ %i.bls, %bb.tl ], [ undef, %bb.tw ], [ %.sroa.14.40.copyload.i1608, %bb.tv ]
  %.sroa.12.1.i1574 = phi i64 [ -9223372036854775808, %bb.tk ], [ undef, %bb.tm ], [ %3, %bb.tl ], [ undef, %bb.tw ], [ %.sroa.826.0.copyload.i.i.i1606, %bb.tv ]
  %.sroa.0.0.i1577.a = phi i64 [ -9223372036854775804, %bb.tk ], [ -9223372036854775800, %bb.tm ], [ -9223372036854775803, %bb.tl ], [ -9223372036854775798, %bb.tw ], [ %i.bmv, %bb.tv ]
  %31 = phi <2 x i64> [ <i64 8, i64 0>, %bb.tk ], [ <i64 8, i64 0>, %bb.tm ], [ <i64 8, i64 0>, %bb.tl ], [ undef, %bb.tw ], [ %30, %bb.tv ]
  %i.bnb = phi <2 x i64> [ %i.blr, %bb.tk ], [ %i.blr, %bb.tm ], [ %i.blr, %bb.tl ], [ undef, %bb.tw ], [ %i.bmx, %bb.tv ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !32548
  store i64 %.sroa.0.0.i1577.a, ptr %i.c, align 8, !noalias !32548
  %.sroa.5.0..sroa_idx.i1578 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.5.1.i1569, ptr %.sroa.5.0..sroa_idx.i1578, align 8, !noalias !32548
  %.sroa.8.0..sroa_idx.i1579 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store <2 x i64> %31, ptr %.sroa.8.0..sroa_idx.i1579, align 8, !noalias !32548
  %.sroa.12.0..sroa_idx.i1581 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %.sroa.12.1.i1574, ptr %.sroa.12.0..sroa_idx.i1581, align 8, !noalias !32548
  %.sroa.14.0..sroa_idx.i1582 = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %.sroa.14.1.i1573, ptr %.sroa.14.0..sroa_idx.i1582, align 8, !noalias !32548
  %.sroa.16.0..sroa_idx.i1583 = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 %.sroa.16.1.i1572, ptr %.sroa.16.0..sroa_idx.i1583, align 8, !noalias !32548
  %.sroa.17.0..sroa_idx.i1584 = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store <2 x i64> %i.bnb, ptr %.sroa.17.0..sroa_idx.i1584, align 8, !noalias !32548
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !32548
  %i.bnc = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 -9223372036854775808, ptr %i.bnc, align 8, !noalias !32548
  %.sroa.4.0..sroa_idx.i1586 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @85, ptr %.sroa.4.0..sroa_idx.i1586, align 8, !noalias !32548
  %.sroa.52.0..sroa_idx.i1587 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 19, ptr %.sroa.52.0..sroa_idx.i1587, align 8, !noalias !32548
  %i.bnd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %3, ptr %i.bnd, align 8, !noalias !32548
  store i64 2, ptr %i.b, align 8, !noalias !32548
  call fastcc void @_RINvNtCs2TwJzntlzha_11flatbuffers8verifier12append_traceuECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !32548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !32548
  br label %bb.tx

bb.tx:                                            ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema13LargeListViewEReECs14kWLkQVSKO_14deltalake_core.exit, %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema8ListViewEReECs14kWLkQVSKO_14deltalake_core.exit, %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema8Utf8ViewEReECs14kWLkQVSKO_14deltalake_core.exit, %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema10BinaryViewEReECs14kWLkQVSKO_14deltalake_core.exit, %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema13RunEndEncodedEReECs14kWLkQVSKO_14deltalake_core.exit, %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema9LargeListEReECs14kWLkQVSKO_14deltalake_core.exit, %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema9LargeUtf8EReECs14kWLkQVSKO_14deltalake_core.exit, %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema11LargeBinaryEReECs14kWLkQVSKO_14deltalake_core.exit, %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema8DurationEReECs14kWLkQVSKO_14deltalake_core.exit, %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema3MapEReECs14kWLkQVSKO_14deltalake_core.exit, %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema13FixedSizeListEReECs14kWLkQVSKO_14deltalake_core.exit, %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema15FixedSizeBinaryEReECs14kWLkQVSKO_14deltalake_core.exit, %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema5UnionEReECs14kWLkQVSKO_14deltalake_core.exit, %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema7Struct_EReECs14kWLkQVSKO_14deltalake_core.exit, %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema4ListEReECs14kWLkQVSKO_14deltalake_core.exit, %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema8IntervalEReECs14kWLkQVSKO_14deltalake_core.exit, %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema9TimestampEReECs14kWLkQVSKO_14deltalake_core.exit, %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema4TimeEReECs14kWLkQVSKO_14deltalake_core.exit, %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema4DateEReECs14kWLkQVSKO_14deltalake_core.exit, %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema7DecimalEReECs14kWLkQVSKO_14deltalake_core.exit, %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema4BoolEReECs14kWLkQVSKO_14deltalake_core.exit, %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema4Utf8EReECs14kWLkQVSKO_14deltalake_core.exit, %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema6BinaryEReECs14kWLkQVSKO_14deltalake_core.exit, %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema13FloatingPointEReECs14kWLkQVSKO_14deltalake_core.exit, %bb.p, %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier20verify_union_variantINtNtB8_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema4NullEReECs14kWLkQVSKO_14deltalake_core.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 4) i8 @_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10SelectItemNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(744) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(744) %1) unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32549)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32552)
  %i.a = load i64, ptr %0, align 8, !range !988, !alias.scope !32549, !noalias !32552, !noundef !3 ; 4 uses
  %i.b = icmp ne i64 %i.a, 72
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -70
  %i.d = icmp samesign ugt i64 %i.a, 69
  %i.e = select i1 %i.d, i64 %i.c, i64 2          ; 3 uses
  %i.f = load i64, ptr %1, align 8, !range !988, !alias.scope !32552, !noalias !32549, !noundef !3 ; 4 uses
  %i.g = icmp ne i64 %i.f, 72
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nsw i64 %i.f, -70
  %i.i = icmp samesign ugt i64 %i.f, 69
  %i.j = select i1 %i.i, i64 %i.h, i64 2          ; 2 uses
  %.not.i = icmp eq i64 %i.e, %i.j
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  switch i64 %i.e, label %bb.d [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.g
    i64 3, label %bb.m
  ]

bb.c:                                             ; preds = %bb.a
  %i.k = tail call i8 @llvm.scmp.i8.i64(i64 %i.e, i64 %i.j)
  br label %_RNvXs40_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_10SelectItemNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.m) #50, !inline_history !32554
  br label %_RNvXs40_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_10SelectItemNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.f:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.p) #50, !inline_history !32554 ; 2 uses
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.n, label %_RNvXs40_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_10SelectItemNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.g:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32555)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32558)
  %i.s = icmp ne i64 %i.a, 69                     ; 2 uses
  %i.t = zext i1 %i.s to i8
  %i.u = icmp ne i64 %i.f, 69                     ; 3 uses
  %.neg.i = sext i1 %i.u to i8
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br i1 %i.u, label %bb.l, label %bb.j

bb.i:                                             ; preds = %bb.g
  br i1 %i.u, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.v = add nsw i8 %.neg.i, %i.t
  br label %_RNvXs3Q_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_31SelectItemQualifiedWildcardKindNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.k:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.w, align 8, !alias.scope !32555, !noalias !32558, !nonnull !3, !noundef !3
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load i64, ptr %i.x, align 8, !alias.scope !32555, !noalias !32558, !noundef !3
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2.i = load ptr, ptr %i.y, align 8, !alias.scope !32558, !noalias !32555, !nonnull !3, !noundef !3
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val3.i = load i64, ptr %i.z, align 8, !alias.scope !32558, !noalias !32555, !noundef !3
  %i.aa = tail call noundef range(i8 -1, 3) i8 @_RNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB5_15SlicePartialOrd15partial_compareCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val.i, i64 noundef %.val1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val2.i, i64 noundef %.val3.i), !noalias !32560, !inline_history !32561
  br label %_RNvXs3Q_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_31SelectItemQualifiedWildcardKindNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.l:                                             ; preds = %bb.h
  %i.ab = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(744) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(744) %1) #50, !inline_history !32561
  br label %_RNvXs3Q_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_31SelectItemQualifiedWildcardKindNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

_RNvXs3Q_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_31SelectItemQualifiedWildcardKindNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit: ; preds = %bb.j, %bb.k, %bb.l
  %.sroa.0.0.i5 = phi i8 [ %i.ab, %bb.l ], [ %i.v, %bb.j ], [ %i.aa, %bb.k ] ; 2 uses
  %i.ac = icmp eq i8 %.sroa.0.0.i5, 0
  br i1 %i.ac, label %bb.o, label %_RNvXs40_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_10SelectItemNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.m:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = tail call fastcc noundef i8 @_RNvXs4k_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_25WildcardAdditionalOptionsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(416) %i.ad, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(416) %i.ae) #50, !inline_history !32554
  br label %_RNvXs40_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_10SelectItemNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.n:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ai = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ah, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ag), !inline_history !32554
  br label %_RNvXs40_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_10SelectItemNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.o:                                             ; preds = %_RNvXs3Q_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_31SelectItemQualifiedWildcardKindNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.al = tail call fastcc noundef i8 @_RNvXs4k_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_25WildcardAdditionalOptionsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(416) %i.ak, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(416) %i.aj) #50, !inline_history !32554
  br label %_RNvXs40_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_10SelectItemNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

_RNvXs40_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_10SelectItemNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit: ; preds = %bb.c, %bb.e, %bb.f, %_RNvXs3Q_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_31SelectItemQualifiedWildcardKindNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit, %bb.m, %bb.n, %bb.o
  %.sroa.0.0.i = phi i8 [ %i.k, %bb.c ], [ %i.n, %bb.e ], [ %i.ai, %bb.n ], [ %i.q, %bb.f ], [ %i.al, %bb.o ], [ %.sroa.0.0.i5, %_RNvXs3Q_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_31SelectItemQualifiedWildcardKindNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit ], [ %i.af, %bb.m ] ; 2 uses
  %i.am = icmp eq i8 %.sroa.0.0.i, 0
  %. = select i1 %i.am, i8 3, i8 %.sroa.0.0.i
  ret i8 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvMNtCsbvkFyIu7lgC_4core5sliceSh11starts_withCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #12 {
bb.a:
  %.not = icmp samesign ult i64 %1, %3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i1 [ %i.a, %bb.c ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %0, i64 %3)
  %i.a = icmp eq i32 %bcmp.i, 0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvMNtCsbvkFyIu7lgC_4core5sliceSh9ends_withCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #12 {
bb.a:
  %.not = icmp samesign ult i64 %1, %3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i1 [ %i.c, %bb.c ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  %i.a = sub nuw nsw i64 %1, %3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %i.b, i64 %3)
  %i.c = icmp eq i32 %bcmp.i, 0
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap8try_growCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = icmp ugt i64 %1, 32768                   ; 2 uses
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSNtNtNtCs4j34XAPZOn0_4http6header3map3PosEECs14kWLkQVSKO_14deltalake_core.exit34, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !3 ; 7 uses
  %.idx = shl nuw nsw i64 %i.h, 2                 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx
  %i.j = icmp eq i64 %i.h, 0                      ; 3 uses
  br i1 %i.j, label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs4j34XAPZOn0_4http6header3map3PosEENtNtNtB8_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = load i16, ptr %i.k, align 8              ; 2 uses
  %i.m = zext i16 %i.l to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.h
end_hunk_7
begin_hunk_8_@_RNvNtNtCsdl0l68gAy31_9arrow_ipc3gen4File24root_as_footer_with_opts:bb.a
  %.sroa.0.1.i.i.i.i.i.i = phi i64 [ %i.eu, %bb.bb ], [ %i.gj, %bb.bq ]
  %i.gl = phi <2 x i64> [ %i.ez, %bb.bb ], [ %i.gk, %bb.bq ]
  %i.gm = inttoptr i64 %.sroa.12.1.i.i.i.i.i.i to ptr
  store i64 %.sroa.0.1.i.i.i.i.i.i, ptr %i.q, align 8, !alias.scope !33162, !noalias !33161
  %.sroa.2101.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.gm, ptr %.sroa.2101.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !33162, !noalias !33161
  %.sroa.3102.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %.sroa.17.1.i.i.i.i.i.i, ptr %.sroa.3102.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !33162, !noalias !33161
  %.sroa.4103.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store <2 x i64> %i.gl, ptr %.sroa.4103.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !33162, !noalias !33161
  %.sroa.6105.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6105.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.22.i.i.i.i.i.i, i64 32, i1 false), !noalias !33161
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br, %bb.bc
  %.sroa.12.1.ph.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !33217, !noalias !33158
  %i.gn = inttoptr i64 %.sroa.12.1.ph.i.i.i.i.i.i to ptr
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 24 ; 2 uses
  %i.gp = load i64, ptr %i.go, align 8, !noalias !33160, !noundef !3
  %i.gq = add i64 %i.gp, -1
  store i64 %i.gq, ptr %i.go, align 8, !noalias !33160
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.631.i.i.i.i.i.i)
  store i64 -9223372036854775798, ptr %i.q, align 8, !alias.scope !33162, !noalias !33161
  br label %_RNvXs44_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_6SchemaNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i.i.i.i

bb.bu:                                            ; preds = %bb.bs, %bb.az, %bb.ax, %bb.av, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.631.i.i.i.i.i.i)
  br label %_RNvXs44_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_6SchemaNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i.i.i.i

_RNvXs44_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_6SchemaNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i.i.i.i: ; preds = %bb.bu, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.22.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !33157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !33157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !33157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !33157
  br label %bb.bv

bb.bv:                                            ; preds = %_RNvXs44_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_6SchemaNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i.i.i.i, %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !33131
  %i.gr = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 -9223372036854775808, ptr %i.gr, align 8, !noalias !33131
  %.sroa.41.0..sroa_idx.i134.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr @655, ptr %.sroa.41.0..sroa_idx.i134.i.i.i, align 8, !noalias !33131
  %.sroa.5.0..sroa_idx.i135.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store i64 6, ptr %.sroa.5.0..sroa_idx.i135.i.i.i, align 8, !noalias !33131
  %i.gs = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.cg, ptr %i.gs, align 8, !noalias !33131
  store i64 1, ptr %i.p, align 8, !noalias !33131
  call fastcc void @_RINvNtCs2TwJzntlzha_11flatbuffers8verifier12append_traceuECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.r, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.q, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.p), !noalias !33132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !33131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !33131
  %i.gt = load i64, ptr %i.r, align 8, !range !99, !noalias !33131, !noundef !3 ; 2 uses
  %.not37.i136.i.i.i = icmp eq i64 %i.gt, -9223372036854775798
  br i1 %.not37.i136.i.i.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.10.0.copyload.i.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i.i, align 8, !noalias !33218
  %.sroa.15.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.15.0.copyload.i.i.i = load i64, ptr %.sroa.15.0..sroa_idx.i.i.i, align 8, !noalias !33218
  %.sroa.16.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.16.i.i.sroa.0.0.copyload115.i = load i64, ptr %.sroa.16.0..sroa_idx.i.i.i, align 8, !noalias !33095
  %.sroa.16.i.i.sroa.5.0..sroa.16.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.16.i.i.sroa.5.0.copyload116.i = load i64, ptr %.sroa.16.i.i.sroa.5.0..sroa.16.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !33095
  %.sroa.16.i.i.sroa.6.0..sroa.16.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.gu = load <2 x i64>, ptr %.sroa.16.i.i.sroa.6.0..sroa.16.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !33095
  %.sroa.16.i.i.sroa.8.0..sroa.16.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.gv = load <2 x i64>, ptr %.sroa.16.i.i.sroa.8.0..sroa.16.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !33095
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !33131
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !33131
  br label %bb.bz

bb.by:                                            ; preds = %bb.bw, %bb.t
  %.sroa.16.i.i.sroa.0.0.i = phi i64 [ %.sroa.16.i.i.sroa.0.0.copyload115.i, %bb.bw ], [ %.sroa.16.i.i.sroa.0.0.copyload.i, %bb.t ]
  %.sroa.16.i.i.sroa.5.0.i = phi i64 [ %.sroa.16.i.i.sroa.5.0.copyload116.i, %bb.bw ], [ %.sroa.16.i.i.sroa.5.0.copyload.i, %bb.t ]
  %.sroa.15.1.i.i.i = phi i64 [ %.sroa.15.0.copyload.i.i.i, %bb.bw ], [ %i.cg, %bb.t ]
  %.sroa.10.1.i.i.i = phi i64 [ %.sroa.10.0.copyload.i.i.i, %bb.bw ], [ %i.ce, %bb.t ]
  %.sroa.0.1.i.i.i = phi i64 [ %i.gt, %bb.bw ], [ %i.cc, %bb.t ]
  %i.gw = phi <2 x i64> [ %i.gu, %bb.bw ], [ %i.ch, %bb.t ]
  %i.gx = phi <2 x i64> [ %i.gv, %bb.bw ], [ %i.ci, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !33095
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !33095
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !33095
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !33095
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !33095
  br label %_RNvXs6_NtCs2TwJzntlzha_11flatbuffers8verifierINtNtB7_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File6FooterENtB5_10Verifiable12run_verifierCs14kWLkQVSKO_14deltalake_core.exit.thread143.i

bb.bz:                                            ; preds = %bb.bx, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !33095
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !33095
  %i.gy = load <2 x i64>, ptr %i.aa, align 16, !alias.scope !33219, !noalias !33095
  store <2 x i64> %i.gy, ptr %i.z, align 16, !noalias !33095
  %.sroa.625.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.625.sroa.8.0..sroa_idx.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.631.sroa.8.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !33094
  call fastcc void @_RINvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_13TableVerifier11visit_fieldINtNtB8_10primitives15ForwardsUOffsetINtNtB8_6vector6VectorNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockEEReECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.ad, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.z, ptr noalias noundef nonnull readonly captures(address, read_provenance) @656, i64 noundef 12, i16 noundef 8) #50
  %i.gz = load i64, ptr %i.ad, align 8, !range !99, !noalias !33095, !noundef !3 ; 2 uses
  %.not126.i.i.i = icmp eq i64 %i.gz, -9223372036854775798
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.619.i.i.sroa.0.0.copyload.i = load i64, ptr %i.ha, align 8, !noalias !33095 ; 2 uses
  %.sroa.619.i.i.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.619.i.i.sroa.6.0.copyload.i = load i64, ptr %.sroa.619.i.i.sroa.6.0..sroa_idx.i, align 8, !noalias !33095 ; 2 uses
  %.sroa.619.i.i.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.619.i.i.sroa.7.0.copyload.i = load i64, ptr %.sroa.619.i.i.sroa.7.0..sroa_idx.i, align 8, !noalias !33095 ; 2 uses
  %.sroa.619.i.i.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %.sroa.619.i.i.sroa.8.0.copyload.i = load i64, ptr %.sroa.619.i.i.sroa.8.0..sroa_idx.i, align 8, !noalias !33095 ; 2 uses
  br i1 %.not126.i.i.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %.sroa.690.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.hb = load <2 x i64>, ptr %.sroa.690.0..sroa_idx.i.i.i, align 8, !noalias !33100
  %.sroa.38.40..sroa.690.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.hc = load <2 x i64>, ptr %.sroa.38.40..sroa.690.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !33100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !33095
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !33095
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !33095
  br label %_RNvXs6_NtCs2TwJzntlzha_11flatbuffers8verifierINtNtB7_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File6FooterENtB5_10Verifiable12run_verifierCs14kWLkQVSKO_14deltalake_core.exit.thread143.i

bb.cb:                                            ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !33095
  store i64 %.sroa.619.i.i.sroa.0.0.copyload.i, ptr %i.y, align 8, !noalias !33095
  %.sroa.619.i.i.sroa.6.0..sroa_idx94.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 %.sroa.619.i.i.sroa.6.0.copyload.i, ptr %.sroa.619.i.i.sroa.6.0..sroa_idx94.i, align 8, !noalias !33095
  %.sroa.619.i.i.sroa.7.0..sroa_idx96.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 %.sroa.619.i.i.sroa.7.0.copyload.i, ptr %.sroa.619.i.i.sroa.7.0..sroa_idx96.i, align 8, !noalias !33095
  %.sroa.619.i.i.sroa.8.0..sroa_idx98.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i64 %.sroa.619.i.i.sroa.8.0.copyload.i, ptr %.sroa.619.i.i.sroa.8.0..sroa_idx98.i, align 8, !noalias !33095
  call fastcc void @_RINvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_13TableVerifier11visit_fieldINtNtB8_10primitives15ForwardsUOffsetINtNtB8_6vector6VectorNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockEEReECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.ae, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.y, ptr noalias noundef nonnull readonly captures(address, read_provenance) @657, i64 noundef 13, i16 noundef 10) #50
  %i.hd = load i64, ptr %i.ae, align 8, !range !99, !noalias !33095, !noundef !3 ; 2 uses
  %.not127.i.i.i = icmp eq i64 %i.hd, -9223372036854775798
  %i.he = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.613.i.i.sroa.0.0.copyload.i = load i64, ptr %i.he, align 8, !noalias !33095 ; 2 uses
  %.sroa.613.i.i.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.613.i.i.sroa.6.0.copyload.i = load i64, ptr %.sroa.613.i.i.sroa.6.0..sroa_idx.i, align 8, !noalias !33095 ; 2 uses
  %.sroa.613.i.i.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.sroa.613.i.i.sroa.7.0.copyload.i = load i64, ptr %.sroa.613.i.i.sroa.7.0..sroa_idx.i, align 8, !noalias !33095 ; 2 uses
  %.sroa.613.i.i.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %.sroa.613.i.i.sroa.8.0.copyload.i = load i64, ptr %.sroa.613.i.i.sroa.8.0..sroa_idx.i, align 8, !noalias !33095 ; 2 uses
  br i1 %.not127.i.i.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %.sroa.699.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.hf = load <2 x i64>, ptr %.sroa.699.0..sroa_idx.i.i.i, align 8, !noalias !33100
  %.sroa.38.40..sroa.699.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.hg = load <2 x i64>, ptr %.sroa.38.40..sroa.699.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !33100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !33095
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !33095
  br label %_RNvXs6_NtCs2TwJzntlzha_11flatbuffers8verifierINtNtB7_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File6FooterENtB5_10Verifiable12run_verifierCs14kWLkQVSKO_14deltalake_core.exit.thread143.i

bb.cd:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !33095
  store i64 %.sroa.613.i.i.sroa.0.0.copyload.i, ptr %i.x, align 8, !noalias !33095
  %.sroa.613.i.i.sroa.6.0..sroa_idx87.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %.sroa.613.i.i.sroa.6.0.copyload.i, ptr %.sroa.613.i.i.sroa.6.0..sroa_idx87.i, align 8, !noalias !33095
  %.sroa.613.i.i.sroa.7.0..sroa_idx89.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %.sroa.613.i.i.sroa.7.0.copyload.i, ptr %.sroa.613.i.i.sroa.7.0..sroa_idx89.i, align 8, !noalias !33095
  %.sroa.613.i.i.sroa.8.0..sroa_idx91.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i64 %.sroa.613.i.i.sroa.8.0.copyload.i, ptr %.sroa.613.i.i.sroa.8.0..sroa_idx91.i, align 8, !noalias !33095
  call fastcc void @_RINvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_13TableVerifier11visit_fieldINtNtB8_10primitives15ForwardsUOffsetINtNtB8_6vector6VectorIB1g_NtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema8KeyValueEEEReECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.af, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.x, i16 noundef 12) #50
  %i.hh = load i64, ptr %i.af, align 8, !range !99, !noalias !33095, !noundef !3 ; 2 uses
  %.not128.i.i.i = icmp eq i64 %i.hh, -9223372036854775798
  %i.hi = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.0103.0.copyload.i.i.i = load ptr, ptr %i.hi, align 8, !noalias !33095 ; 2 uses
  br i1 %.not128.i.i.i, label %_RNvXs9_NtCs2TwJzntlzha_11flatbuffers10primitivesINtB5_15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File6FooterENtNtB7_6follow6Follow6followCs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %.sroa.6114.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.6114.0.copyload.i.i.i = load i64, ptr %.sroa.6114.0..sroa_idx.i.i.i, align 8, !noalias !33095
  %.sroa.7115.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %.sroa.7115.0.copyload.i.i.i = load i64, ptr %.sroa.7115.0..sroa_idx.i.i.i, align 8, !noalias !33095
  %.sroa.8116.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %.sroa.8116.0.copyload.i.i.i = load i64, ptr %.sroa.8116.0..sroa_idx.i.i.i, align 8, !noalias !33095
  %.sroa.9117.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.hj = load <2 x i64>, ptr %.sroa.9117.0..sroa_idx.i.i.i, align 8, !noalias !33100
  %.sroa.38.40..sroa.9117.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.hk = load <2 x i64>, ptr %.sroa.38.40..sroa.9117.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !33100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !33095
  %i.hl = ptrtoint ptr %.sroa.0103.0.copyload.i.i.i to i64
  br label %_RNvXs6_NtCs2TwJzntlzha_11flatbuffers8verifierINtNtB7_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File6FooterENtB5_10Verifiable12run_verifierCs14kWLkQVSKO_14deltalake_core.exit.thread143.i

_RNvXs6_NtCs2TwJzntlzha_11flatbuffers8verifierINtNtB7_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File6FooterENtB5_10Verifiable12run_verifierCs14kWLkQVSKO_14deltalake_core.exit.thread143.i: ; preds = %bb.ce, %bb.cc, %bb.ca, %bb.by, %bb.r, %bb.d
  %.sroa.13.sroa.11.1.ph.in.in.i = phi i64 [ %.sroa.637.i.i.sroa.0.0.copyload.i, %bb.d ], [ %.sroa.9.1.i.i.i, %bb.r ], [ %.sroa.10.1.i.i.i, %bb.by ], [ %.sroa.619.i.i.sroa.0.0.copyload.i, %bb.ca ], [ %.sroa.613.i.i.sroa.0.0.copyload.i, %bb.cc ], [ %i.hl, %bb.ce ]
  %.sroa.25.1.ph.i = phi i64 [ %.sroa.637.i.i.sroa.7.0.copyload.i, %bb.d ], [ %.sroa.15156.i.i.sroa.0.0.i, %bb.r ], [ %.sroa.16.i.i.sroa.0.0.i, %bb.by ], [ %.sroa.619.i.i.sroa.7.0.copyload.i, %bb.ca ], [ %.sroa.613.i.i.sroa.7.0.copyload.i, %bb.cc ], [ %.sroa.7115.0.copyload.i.i.i, %bb.ce ]
  %.sroa.29.1.ph.i = phi i64 [ %.sroa.637.i.i.sroa.8.0.copyload.i, %bb.d ], [ %.sroa.15156.i.i.sroa.6.0.i, %bb.r ], [ %.sroa.16.i.i.sroa.5.0.i, %bb.by ], [ %.sroa.619.i.i.sroa.8.0.copyload.i, %bb.ca ], [ %.sroa.613.i.i.sroa.8.0.copyload.i, %bb.cc ], [ %.sroa.8116.0.copyload.i.i.i, %bb.ce ]
  %.sroa.21.1.ph.i = phi i64 [ %.sroa.637.i.i.sroa.6.0.copyload.i, %bb.d ], [ %.sroa.14.1.i.i.i, %bb.r ], [ %.sroa.15.1.i.i.i, %bb.by ], [ %.sroa.619.i.i.sroa.6.0.copyload.i, %bb.ca ], [ %.sroa.613.i.i.sroa.6.0.copyload.i, %bb.cc ], [ %.sroa.6114.0.copyload.i.i.i, %bb.ce ]
  %.sroa.0.1.ph.i = phi i64 [ %i.ar, %bb.d ], [ %.sroa.0147.1.i.i.i, %bb.r ], [ %.sroa.0.1.i.i.i, %bb.by ], [ %i.gz, %bb.ca ], [ %i.hd, %bb.cc ], [ %i.hh, %bb.ce ]
  %i.hm = phi <2 x i64> [ %i.at, %bb.d ], [ %i.bx, %bb.r ], [ %i.gw, %bb.by ], [ %i.hb, %bb.ca ], [ %i.hf, %bb.cc ], [ %i.hj, %bb.ce ]
  %i.hn = phi <2 x i64> [ %i.au, %bb.d ], [ %i.by, %bb.r ], [ %i.gx, %bb.by ], [ %i.hc, %bb.ca ], [ %i.hg, %bb.cc ], [ %i.hk, %bb.ce ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !33094
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !33094
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !33094
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !33094
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !33094
  br label %_RNvXs6_NtCs2TwJzntlzha_11flatbuffers8verifierINtNtB7_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File6FooterENtB5_10Verifiable12run_verifierCs14kWLkQVSKO_14deltalake_core.exit.thread.i

_RNvXs6_NtCs2TwJzntlzha_11flatbuffers8verifierINtNtB7_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File6FooterENtB5_10Verifiable12run_verifierCs14kWLkQVSKO_14deltalake_core.exit.thread.i: ; preds = %_RNvXs6_NtCs2TwJzntlzha_11flatbuffers8verifierINtNtB7_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File6FooterENtB5_10Verifiable12run_verifierCs14kWLkQVSKO_14deltalake_core.exit.thread143.i, %bb.b, %bb.a
  %.sroa.0.2141.i = phi i64 [ %.sroa.0.1.ph.i, %_RNvXs6_NtCs2TwJzntlzha_11flatbuffers8verifierINtNtB7_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File6FooterENtB5_10Verifiable12run_verifierCs14kWLkQVSKO_14deltalake_core.exit.thread143.i ], [ -9223372036854775803, %bb.a ], [ -9223372036854775800, %bb.b ]
  %.sroa.21.2140.i = phi i64 [ %.sroa.21.1.ph.i, %_RNvXs6_NtCs2TwJzntlzha_11flatbuffers8verifierINtNtB7_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File6FooterENtB5_10Verifiable12run_verifierCs14kWLkQVSKO_14deltalake_core.exit.thread143.i ], [ 8, %bb.a ], [ 8, %bb.b ]
  %.sroa.29.2135.i = phi i64 [ %.sroa.29.1.ph.i, %_RNvXs6_NtCs2TwJzntlzha_11flatbuffers8verifierINtNtB7_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File6FooterENtB5_10Verifiable12run_verifierCs14kWLkQVSKO_14deltalake_core.exit.thread143.i ], [ 0, %bb.a ], [ 0, %bb.b ]
  %.sroa.25.2134.i = phi i64 [ %.sroa.25.1.ph.i, %_RNvXs6_NtCs2TwJzntlzha_11flatbuffers8verifierINtNtB7_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File6FooterENtB5_10Verifiable12run_verifierCs14kWLkQVSKO_14deltalake_core.exit.thread143.i ], [ 0, %bb.a ], [ 0, %bb.b ]
  %.sroa.13.sroa.11.2132.i = phi i64 [ %.sroa.13.sroa.11.1.ph.in.in.i, %_RNvXs6_NtCs2TwJzntlzha_11flatbuffers8verifierINtNtB7_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File6FooterENtB5_10Verifiable12run_verifierCs14kWLkQVSKO_14deltalake_core.exit.thread143.i ], [ 0, %bb.a ], [ 0, %bb.b ]
  %i.ho = phi <2 x i64> [ %i.hm, %_RNvXs6_NtCs2TwJzntlzha_11flatbuffers8verifierINtNtB7_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File6FooterENtB5_10Verifiable12run_verifierCs14kWLkQVSKO_14deltalake_core.exit.thread143.i ], [ <i64 4, i64 3>, %bb.a ], [ <i64 4, i64 3>, %bb.b ]
  %i.hp = phi <2 x i64> [ %i.hn, %_RNvXs6_NtCs2TwJzntlzha_11flatbuffers8verifierINtNtB7_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File6FooterENtB5_10Verifiable12run_verifierCs14kWLkQVSKO_14deltalake_core.exit.thread143.i ], [ <i64 0, i64 undef>, %bb.a ], [ <i64 0, i64 undef>, %bb.b ]
  store i64 %.sroa.0.2141.i, ptr %0, align 8, !alias.scope !33070, !noalias !33220
  %.sroa.278.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.13.sroa.11.2132.i, ptr %.sroa.278.0..sroa_idx.i, align 8, !alias.scope !33070, !noalias !33220
  %.sroa.379.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.21.2140.i, ptr %.sroa.379.0..sroa_idx.i, align 8, !alias.scope !33070, !noalias !33220
  %.sroa.480.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.25.2134.i, ptr %.sroa.480.0..sroa_idx.i, align 8, !alias.scope !33070, !noalias !33220
  %.sroa.581.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.29.2135.i, ptr %.sroa.581.0..sroa_idx.i, align 8, !alias.scope !33070, !noalias !33220
  %.sroa.682.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x i64> %i.ho, ptr %.sroa.682.0..sroa_idx.i, align 8, !alias.scope !33070, !noalias !33220
  %.sroa.884.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <2 x i64> %i.hp, ptr %.sroa.884.0..sroa_idx.i, align 8, !alias.scope !33070, !noalias !33220
  br label %_RINvNtCs2TwJzntlzha_11flatbuffers8get_root14root_with_optsNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File6FooterECs14kWLkQVSKO_14deltalake_core.exit

_RNvXs9_NtCs2TwJzntlzha_11flatbuffers10primitivesINtB5_15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File6FooterENtNtB7_6follow6Follow6followCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !33095
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.0103.0.copyload.i.i.i, i64 24 ; 2 uses
  %i.hr = load i64, ptr %i.hq, align 8, !noalias !33099, !noundef !3
  %i.hs = add i64 %i.hr, -1
  store i64 %i.hs, ptr %i.hq, align 8, !noalias !33099
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !33094
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !33094
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !33094
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !33094
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !33094
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.ht, align 8, !alias.scope !33070, !noalias !33220
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !33070, !noalias !33220
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.aq, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !33070, !noalias !33220
  store i64 -9223372036854775798, ptr %0, align 8, !alias.scope !33070, !noalias !33220
  br label %_RINvNtCs2TwJzntlzha_11flatbuffers8get_root14root_with_optsNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File6FooterECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCs2TwJzntlzha_11flatbuffers8get_root14root_with_optsNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File6FooterECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvXs6_NtCs2TwJzntlzha_11flatbuffers8verifierINtNtB7_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File6FooterENtB5_10Verifiable12run_verifierCs14kWLkQVSKO_14deltalake_core.exit.thread.i, %_RNvXs9_NtCs2TwJzntlzha_11flatbuffers10primitivesINtB5_15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File6FooterENtNtB7_6follow6Follow6followCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !33077
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrownNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnINtB2_10EquivalentBq_E10equivalentCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %1) unnamed_addr #13 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_RNvXs9_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB5_6ColumnNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %1) #50
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrownNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameINtB2_10EquivalentBq_E10equivalentCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3 = load i64, ptr %i.b, align 8, !noundef !3
  %i.c = icmp eq i64 %.val1, %.val3
  br i1 %i.c, label %bb.b, label %_RNvXsc_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_namesNtB5_10ColumnNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.d, align 8, !nonnull !3, !noundef !3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.f = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %.val, ptr noundef nonnull %.val2, i64 noundef %.val1)
  br label %_RNvXsc_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_namesNtB5_10ColumnNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXsc_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_namesNtB5_10ColumnNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXNtCs3JXekYNd0JR_7dashmap3setINtB2_7DashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [64 x i8], align 8                ; 12 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !33221
  call void @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9debug_map(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !33225
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !33221
  store ptr %0, ptr %i.b, align 8, !noalias !33221
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 4 uses
  %.sroa.510.0..sroa_idx11.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx11.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 4 uses
  %.sroa.510.sroa.6.0..sroa.510.0..sroa_idx11.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %.sroa.510.sroa.7.0..sroa.510.0..sroa_idx11.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 4 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !33221
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref8multiple8RefMultiNtNtCs6Po7BT7Nknu_5alloc6string6StringuEECs14kWLkQVSKO_14deltalake_core.exit11.i, %bb.a
  %.pre92.i.i = phi i64 [ %.pre92.i.pre.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref8multiple8RefMultiNtNtCs6Po7BT7Nknu_5alloc6string6StringuEECs14kWLkQVSKO_14deltalake_core.exit11.i ], [ undef, %bb.a ] ; 2 uses
  %.pre.i.i = phi ptr [ %.pre.i.pre.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref8multiple8RefMultiNtNtCs6Po7BT7Nknu_5alloc6string6StringuEECs14kWLkQVSKO_14deltalake_core.exit11.i ], [ null, %bb.a ] ; 4 uses
  %.not.i73.i = icmp eq ptr %.pre.i.i, null
  %i.e = icmp eq i64 %.pre92.i.i, 0
  %or.cond.i74.i = select i1 %.not.i73.i, i1 true, i1 %i.e
  br i1 %or.cond.i74.i, label %.lr.ph.preheader.i, label %.._crit_edge_crit_edge.i

.._crit_edge_crit_edge.i:                         ; preds = %bb.b
  %.pre102.i = load i16, ptr %.sroa.510.sroa.7.0..sroa.510.0..sroa_idx11.sroa_idx.i.i, align 8, !alias.scope !33226, !noalias !33231
  br label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %.pre.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !33233, !noalias !33231 ; 2 uses
  %i.f = load ptr, ptr %i.b, align 8, !alias.scope !33233, !noalias !33231, !nonnull !3, !align !100, !noundef !3 ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %.val23.i.i29 = load i64, ptr %i.g, align 8, !noalias !33234, !noundef !3 ; 2 uses
  %i.h = icmp eq i64 %.pre.i, %.val23.i.i29
  br i1 %i.h, label %.lr.ph.preheader.i._crit_edge, label %.lr.ph

.lr.ph.i:                                         ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtB18_6string6StringINtNtB2v_4util11SharedValueuEEEEEINtB39_7RawIterB3U_EEEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.i = load ptr, ptr %i.b, align 8, !alias.scope !33233, !noalias !33231, !nonnull !3, !align !100, !noundef !3 ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %.val23.i.i = load i64, ptr %i.j, align 8, !noalias !33234, !noundef !3 ; 2 uses
  %i.k = icmp eq i64 %i.bg, %.val23.i.i
  br i1 %i.k, label %.lr.ph.preheader.i._crit_edge.thread, label %.lr.ph

._crit_edge.loopexit.i:                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtB18_6string6StringINtNtB2v_4util11SharedValueuEEEEEINtB39_7RawIterB3U_EEEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.l = bitcast <16 x i1> %i.aq to i16
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.._crit_edge_crit_edge.i
  %i.m = phi i16 [ %.pre102.i, %.._crit_edge_crit_edge.i ], [ %i.l, %._crit_edge.loopexit.i ] ; 2 uses
  %.lcssa20.i = phi i64 [ %.pre92.i.i, %.._crit_edge_crit_edge.i ], [ %i.at, %._crit_edge.loopexit.i ]
  %.lcssa.i = phi ptr [ %.pre.i.i, %.._crit_edge_crit_edge.i ], [ %i.au, %._crit_edge.loopexit.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33235)
  %.not9.i.i.i = icmp eq i16 %i.m, 0
  %.promoted.i.i.i = load ptr, ptr %.sroa.510.0..sroa_idx11.i.i, align 8, !alias.scope !33226, !noalias !33231 ; 2 uses
  br i1 %.not9.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge.i
  %.promoted11.i.i.i = load ptr, ptr %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx11.sroa_idx.i.i, align 8, !alias.scope !33226, !noalias !33231
  br label %bb.c

._crit_edge.i.i.i:                                ; preds = %bb.c
  store ptr %i.s, ptr %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx11.sroa_idx.i.i, align 8, !alias.scope !33226, !noalias !33231
  store ptr %i.r, ptr %.sroa.510.0..sroa_idx11.i.i, align 8, !alias.scope !33226, !noalias !33231
  br label %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.n = phi ptr [ %.promoted11.i.i.i, %.lr.ph.i.i.i ], [ %i.s, %bb.c ] ; 2 uses
  %i.o = phi ptr [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.r, %bb.c ]
  %i.p = load <16 x i8>, ptr %i.n, align 16, !noalias !33236
  %i.q = icmp sgt <16 x i8> %i.p, splat (i8 -1)
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 -384 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.q to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %bb.c, label %._crit_edge.i.i.i

_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %._crit_edge.i, %._crit_edge.i.i.i
  %i.t = phi ptr [ %i.r, %._crit_edge.i.i.i ], [ %.promoted.i.i.i, %._crit_edge.i ]
  %.lcssa.i.i.i = phi i16 [ %.cast.i.i.i, %._crit_edge.i.i.i ], [ %i.m, %._crit_edge.i ] ; 3 uses
  %i.u = add i16 %.lcssa.i.i.i, -1
  %i.v = and i16 %i.u, %.lcssa.i.i.i
  store i16 %i.v, ptr %.sroa.510.sroa.7.0..sroa.510.0..sroa_idx11.sroa_idx.i.i, align 8, !alias.scope !33226, !noalias !33231
  %i.w = add i64 %.lcssa20.i, -1
  store i64 %i.w, ptr %i.d, align 8, !alias.scope !33233, !noalias !33231
  %i.x = atomicrmw add ptr %.lcssa.i, i64 1 monotonic, align 8, !noalias !33234
  %i.y = icmp slt i64 %i.x, 0
  br i1 %i.y, label %bb.d, label %bb.n

bb.d:                                             ; preds = %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i.i
  call void @llvm.trap()
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader.i, %.lr.ph.i
  %.val23.i.i30 = phi i64 [ %.val23.i.i, %.lr.ph.i ], [ %.val23.i.i29, %.lr.ph.preheader.i ]
  %i.z = phi ptr [ %i.i, %.lr.ph.i ], [ %i.f, %.lr.ph.preheader.i ]
  %i.aa = phi i64 [ %i.bg, %.lr.ph.i ], [ %.pre.i, %.lr.ph.preheader.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33239)
  %i.ab = load ptr, ptr %i.z, align 8, !alias.scope !33239, !noalias !33234, !nonnull !3, !noundef !3
  %i.ac = icmp ult i64 %i.aa, %.val23.i.i30
  call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw [128 x i8], ptr %i.ab, i64 %i.aa ; 9 uses
  %i.ae = load atomic i64, ptr %i.ad monotonic, align 8, !noalias !33242 ; 3 uses
  %i.af = icmp ugt i64 %i.ae, -9
  br i1 %i.af, label %_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i, label %_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i, !prof !75

_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i: ; preds = %.lr.ph
  %i.ag = add nuw i64 %i.ae, 4
  %i.ah = cmpxchg weak ptr %i.ad, i64 %i.ae, i64 %i.ag acquire monotonic, align 8, !noalias !33242
  %i.ai = extractvalue { i64, i1 } %i.ah, 1
  br i1 %i.ai, label %.noexc.i, label %_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i, !prof !76

_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i: ; preds = %_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i, %.lr.ph
  invoke void @_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock16lock_shared_slow(ptr noundef nonnull align 8 %i.ad)
          to label %.noexc.i unwind label %.loopexit.i

.noexc.i:                                         ; preds = %_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i, %_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !33234, !nonnull !3, !noundef !3 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
end_hunk_8
