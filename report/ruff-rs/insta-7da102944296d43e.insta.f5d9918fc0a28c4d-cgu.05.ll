Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/insta-7da102944296d43e.insta.f5d9918fc0a28c4d-cgu.05?download=true
inline.NumInlined: 198
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupmEBS_INtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsl6EuCK7xub1_5insta:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !128, !noalias !129, !noundef !3 ; 3 uses
  %i.k = load i64, ptr %i.h, align 8, !range !7, !alias.scope !128, !noalias !129, !noundef !3
  %i.l = icmp eq i64 %i.j, %i.k
  br i1 %i.l, label %bb.d, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h), !noalias !129
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit: ; preds = %bb.c, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !128, !noalias !129, !nonnull !3, !noundef !3
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %i.j ; 4 uses
  store i64 0, ptr %i.o, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %2, ptr %.sroa.449.0..sroa_idx, align 8
  %.sroa.550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %5, ptr %.sroa.550.0..sroa_idx, align 8
  %.sroa.651.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 %i.b, ptr %.sroa.651.0..sroa_idx, align 8
  %i.p = add i64 %i.j, 1
  store i64 %i.p, ptr %i.i, align 8, !alias.scope !128, !noalias !129
  br label %bb.b

bb.e:                                             ; preds = %bb.b
  br i1 %.not17, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.b, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit31, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit34, %bb.o
  %.not19 = icmp eq i64 %i.e, 0
  br i1 %.not19, label %bb.t, label %bb.r

bb.g:                                             ; preds = %bb.e
  br i1 %.not16, label %bb.j, label %bb.p

bb.h:                                             ; preds = %bb.e
  %.sroa.0.0 = tail call i64 @llvm.usub.sat.i64(i64 %i.f, i64 %i.c)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !130, !noalias !131, !noundef !3 ; 3 uses
  %i.t = load i64, ptr %i.q, align 8, !range !7, !alias.scope !130, !noalias !131, !noundef !3
  %i.u = icmp eq i64 %i.s, %i.t
  br i1 %i.u, label %bb.i, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit31

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q), !noalias !131
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit31

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit31: ; preds = %bb.h, %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !130, !noalias !131, !nonnull !3, !noundef !3
  %i.x = getelementptr inbounds nuw [40 x i8], ptr %i.w, i64 %i.s ; 4 uses
  store i64 1, ptr %i.x, align 8
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %i.c, ptr %.sroa.454.0..sroa_idx, align 8
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %.sroa.0.0, ptr %.sroa.555.0..sroa_idx, align 8
  %.sroa.656.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i64 %i.d, ptr %.sroa.656.0..sroa_idx, align 8
  %i.y = add i64 %i.s, 1
  store i64 %i.y, ptr %i.r, align 8, !alias.scope !130, !noalias !131
  br label %bb.f

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers17find_middle_snakeINtNtB4_5utils12OffsetLookupmEB13_ECsl6EuCK7xub1_5insta(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.c, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.d, i64 noundef %i.g, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  %i.z = load i64, ptr %i.a, align 8, !range !8, !noundef !3
  %i.aa = trunc nuw i64 %i.z to i1
  br i1 %i.aa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !3 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !3 ; 2 uses
  tail call fastcc void @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupmEBS_INtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsl6EuCK7xub1_5insta(ptr noalias noundef align 8 dereferenceable(160) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.c, i64 noundef %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.d, i64 noundef %i.ae, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  tail call fastcc void @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupmEBS_INtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsl6EuCK7xub1_5insta(ptr noalias noundef align 8 dereferenceable(160) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.ac, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.ae, i64 noundef %i.g, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.af = sub nuw i64 %i.f, %i.c
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !132, !noalias !133, !noundef !3 ; 4 uses
  %i.aj = load i64, ptr %i.ag, align 8, !range !7, !alias.scope !132, !noalias !133, !noundef !3
  %i.ak = icmp eq i64 %i.ai, %i.aj
  br i1 %i.ak, label %bb.m, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit32

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag), !noalias !133
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit32

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit32: ; preds = %bb.l, %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !132, !noalias !133, !nonnull !3, !noundef !3
  %i.an = getelementptr inbounds nuw [40 x i8], ptr %i.am, i64 %i.ai ; 4 uses
  store i64 1, ptr %i.an, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 %i.c, ptr %.sroa.459.0..sroa_idx, align 8
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 %i.af, ptr %.sroa.560.0..sroa_idx, align 8
  %.sroa.661.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store i64 %i.d, ptr %.sroa.661.0..sroa_idx, align 8
  %i.ao = add i64 %i.ai, 1                        ; 3 uses
  store i64 %i.ao, ptr %i.ah, align 8, !alias.scope !132, !noalias !133
  %i.ap = sub nuw i64 %i.g, %i.d
  %i.aq = load i64, ptr %i.ag, align 8, !range !7, !alias.scope !134, !noalias !135, !noundef !3
  %i.ar = icmp eq i64 %i.ao, %i.aq
  br i1 %i.ar, label %bb.n, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit33

bb.n:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit32
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag), !noalias !135
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit33

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit33: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit32, %bb.n
  %i.as = load ptr, ptr %i.al, align 8, !alias.scope !134, !noalias !135, !nonnull !3, !noundef !3
  %i.at = getelementptr inbounds nuw [40 x i8], ptr %i.as, i64 %i.ao ; 4 uses
  store i64 2, ptr %i.at, align 8
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 %i.c, ptr %.sroa.469.0..sroa_idx, align 8
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i64 %i.d, ptr %.sroa.570.0..sroa_idx, align 8
  %.sroa.671.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store i64 %i.ap, ptr %.sroa.671.0..sroa_idx, align 8
  %i.au = add i64 %i.ai, 2
  store i64 %i.au, ptr %i.ah, align 8, !alias.scope !134, !noalias !135
  br label %bb.o

bb.o:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit33, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.p:                                             ; preds = %bb.g
  %i.av = sub nuw i64 %i.g, %i.d
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !136, !noalias !137, !noundef !3 ; 3 uses
  %i.az = load i64, ptr %i.aw, align 8, !range !7, !alias.scope !136, !noalias !137, !noundef !3
  %i.ba = icmp eq i64 %i.ay, %i.az
  br i1 %i.ba, label %bb.q, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit34

bb.q:                                             ; preds = %bb.p
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aw), !noalias !137
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit34

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit34: ; preds = %bb.p, %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !136, !noalias !137, !nonnull !3, !noundef !3
  %i.bd = getelementptr inbounds nuw [40 x i8], ptr %i.bc, i64 %i.ay ; 4 uses
  store i64 2, ptr %i.bd, align 8
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i64 %i.c, ptr %.sroa.464.0..sroa_idx, align 8
  %.sroa.565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store i64 %i.d, ptr %.sroa.565.0..sroa_idx, align 8
  %.sroa.666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store i64 %i.av, ptr %.sroa.666.0..sroa_idx, align 8
  %i.be = add i64 %i.ay, 1
  store i64 %i.be, ptr %i.ax, align 8, !alias.scope !136, !noalias !137
  br label %bb.f

bb.r:                                             ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !138, !noalias !139, !noundef !3 ; 3 uses
  %i.bi = load i64, ptr %i.bf, align 8, !range !7, !alias.scope !138, !noalias !139, !noundef !3
  %i.bj = icmp eq i64 %i.bh, %i.bi
  br i1 %i.bj, label %bb.s, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit35

bb.s:                                             ; preds = %bb.r
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf), !noalias !139
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit35

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit35: ; preds = %bb.r, %bb.s
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !138, !noalias !139, !nonnull !3, !noundef !3
  %i.bm = getelementptr inbounds nuw [40 x i8], ptr %i.bl, i64 %i.bh ; 4 uses
  store i64 0, ptr %i.bm, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store i64 %i.f, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store i64 %i.g, ptr %.sroa.547.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store i64 %i.e, ptr %.sroa.6.0..sroa_idx, align 8
  %i.bn = add i64 %i.bh, 1
  store i64 %i.bn, ptr %i.bg, align 8, !alias.scope !138, !noalias !139
  br label %bb.t

bb.t:                                             ; preds = %bb.f, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit35
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers7conquerINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1r_12OffsetLookupmEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1O_B1O_INtNtB4_7compact7CompactB1O_B1O_IB2h_NtNtB4_7capture7CaptureEEEEECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(200) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6) ; 4 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.b = add i64 %i.a, %2                         ; 14 uses
  %i.c = add i64 %i.a, %5                         ; 16 uses
  %i.d = tail call noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_suffix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %6) ; 4 uses
  %i.e = sub i64 %3, %i.d                         ; 10 uses
  %i.f = sub i64 %6, %i.d                         ; 8 uses
  %.not16 = icmp ult i64 %i.b, %i.e               ; 2 uses
  %.not17 = icmp ult i64 %i.c, %i.f               ; 2 uses
  %or.cond = or i1 %.not16, %.not17
  br i1 %or.cond, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook5equalCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(200) %0, i64 noundef %2, i64 noundef %5, i64 noundef %i.a)
  br label %bb.b

bb.d:                                             ; preds = %bb.b
  br i1 %.not17, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.bx, %_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers17find_middle_snakeINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1C_12OffsetLookupmEEEB13_ECsl6EuCK7xub1_5insta.exit, %bb.b, %bb.g, %bb.by
  %.not19 = icmp eq i64 %i.d, 0
  br i1 %.not19, label %bb.ca, label %bb.bz

bb.f:                                             ; preds = %bb.d
  br i1 %.not16, label %bb.h, label %bb.by

bb.g:                                             ; preds = %bb.d
  %.sroa.0.0 = tail call i64 @llvm.usub.sat.i64(i64 %i.e, i64 %i.b)
  tail call void @_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(200) %0, i64 noundef %i.b, i64 noundef %.sroa.0.0, i64 noundef %i.c)
  br label %bb.e

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %i.g = sub nuw i64 %i.e, %i.b                   ; 11 uses
  %i.h = sub nuw i64 %i.f, %i.c                   ; 3 uses
  %.sroa.037.0.i = tail call i64 @llvm.usub.sat.i64(i64 %i.f, i64 %i.c) ; 5 uses
  %i.i = sub i64 %i.g, %.sroa.037.0.i             ; 5 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0                   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !148, !noalias !150, !noundef !3 ; 8 uses
  %i.m = add i64 %i.l, 1                          ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !148, !noalias !150, !noundef !3 ; 19 uses
  %i.p = icmp ult i64 %i.m, %i.o
  br i1 %i.p, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !148, !noalias !150, !nonnull !3, !noundef !3 ; 10 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.m ; 2 uses
  store i64 0, ptr %i.s, align 8, !noalias !151
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !149, !noalias !152, !noundef !3 ; 8 uses
  %i.v = add i64 %i.u, 1                          ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !149, !noalias !152, !noundef !3 ; 19 uses
  %i.y = icmp ult i64 %i.v, %i.x
  br i1 %i.y, label %bb.k, label %bb.l

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.m, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #16, !noalias !151
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !149, !noalias !152, !nonnull !3, !noundef !3 ; 10 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.v ; 2 uses
  store i64 0, ptr %i.ab, align 8, !noalias !151
  %i.ac = add i64 %i.g, 1
  %i.ad = add i64 %i.ac, %.sroa.037.0.i
  %i.ae = lshr i64 %i.ad, 1                       ; 3 uses
  %i.af = icmp ult i64 %i.o, 1152921504606846976
  tail call void @llvm.assume(i1 %i.af)
  %.not126.not.i = icmp samesign ugt i64 %i.o, %i.ae
  br i1 %.not126.not.i, label %bb.n, label %bb.m, !prof !4

bb.l:                                             ; preds = %bb.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.v, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #16, !noalias !151
  unreachable

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #16, !noalias !151
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.ag = icmp ult i64 %i.x, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ag)
  %.not127.not.i = icmp samesign ugt i64 %i.x, %i.ae
  br i1 %.not127.not.i, label %.lr.ph220.i, label %bb.o, !prof !4

.lr.ph220.i:                                      ; preds = %bb.n
  %i.ah = add i64 %i.l, -1                        ; 2 uses
  %i.ai = add i64 %i.u, -1                        ; 2 uses
  %11 = add i64 %.sroa.037.0.i, %i.c              ; 3 uses
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #16, !noalias !151
  unreachable

bb.p:                                             ; preds = %._crit_edge216.i, %.lr.ph220.i
  %.sroa.047.0219.i = phi i64 [ 0, %.lr.ph220.i ], [ %i.aj, %._crit_edge216.i ] ; 23 uses
  %i.aj = add nuw nsw i64 %.sroa.047.0219.i, 1
  %i.ak = tail call noundef zeroext i1 @_RNvNtCshFZddwsEKsN_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !151
  br i1 %i.ak, label %_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers17find_middle_snakeINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1C_12OffsetLookupmEEEB13_ECsl6EuCK7xub1_5insta.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.al = sub nsw i64 0, %.sroa.047.0219.i        ; 9 uses
  %i.am = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %.sroa.047.0219.i, i64 %i.al) ; 2 uses
  switch i8 %i.am, label %.loopexit.i [
    i8 -1, label %._crit_edge216.i
    i8 0, label %bb.s
    i8 1, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %i.an = add nsw i64 %.sroa.047.0219.i, -1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sroa.11.1.peel.i = phi i1 [ true, %bb.q ], [ false, %bb.r ]
  %.sroa.7.1.peel.i = phi i64 [ %.sroa.047.0219.i, %bb.q ], [ %i.an, %bb.r ] ; 2 uses
  %i.ao = icmp eq i64 %.sroa.047.0219.i, 0        ; 2 uses
  br i1 %i.ao, label %._crit_edge307.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.pre324.i = add i64 %.sroa.047.0219.i, %i.ah   ; 3 uses
  %i.ap = icmp ult i64 %.pre324.i, %i.o
  br i1 %i.ap, label %bb.u, label %.loopexit254.i

bb.u:                                             ; preds = %bb.t
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.pre324.i
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !151, !noundef !3
  %i.as = add i64 %i.ar, 1
  br label %bb.v

._crit_edge307.i:                                 ; preds = %bb.s
  %i.at = load i64, ptr %i.s, align 8, !noalias !151, !noundef !3
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge307.i, %bb.u
  %.sroa.04.0.peel.i = phi i64 [ %i.at, %._crit_edge307.i ], [ %i.as, %bb.u ] ; 6 uses
  %i.au = sub i64 %.sroa.04.0.peel.i, %.sroa.047.0219.i ; 3 uses
  %i.av = icmp ult i64 %.sroa.04.0.peel.i, %i.g
  %i.aw = icmp ult i64 %i.au, %i.h
  %or.cond175.peel.i = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %or.cond175.peel.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ax = add i64 %.sroa.04.0.peel.i, %i.b
  %i.ay = add i64 %i.au, %i.c
  %i.az = tail call noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.ax, i64 noundef %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.ay, i64 noundef %i.f), !noalias !151
  %i.ba = add i64 %i.az, %.sroa.04.0.peel.i
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sroa.04.1.peel.i = phi i64 [ %i.ba, %bb.w ], [ %.sroa.04.0.peel.i, %bb.v ] ; 2 uses
  %i.bb = add i64 %.sroa.047.0219.i, %i.l         ; 3 uses
  %i.bc = icmp ult i64 %i.bb, %i.o
  br i1 %i.bc, label %bb.y, label %.loopexit256.i

bb.y:                                             ; preds = %bb.x
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.bb
  store i64 %.sroa.04.1.peel.i, ptr %i.bd, align 8, !noalias !151
  br i1 %.not.i, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.be = sub i64 %.sroa.047.0219.i, %i.i         ; 2 uses
  %.sroa.010.0.peel.i = tail call i64 @llvm.abs.i64(i64 %i.be, i1 false)
  %.not132.not.peel.i = icmp slt i64 %.sroa.010.0.peel.i, %.sroa.047.0219.i
  br i1 %.not132.not.peel.i, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.bf = sub i64 %i.u, %i.be                     ; 3 uses
  %i.bg = icmp ult i64 %i.bf, %i.x
  br i1 %i.bg, label %bb.ab, label %.loopexit257.i

bb.ab:                                            ; preds = %bb.aa
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.bf
  %i.bi = load i64, ptr %i.bh, align 8, !noalias !151, !noundef !3
  %i.bj = add i64 %i.bi, %.sroa.04.1.peel.i
  %.not133.peel.i = icmp ult i64 %i.bj, %i.g
  br i1 %.not133.peel.i, label %bb.ac, label %.loopexit258.i

bb.ac:                                            ; preds = %bb.ab, %bb.z, %bb.y
  %.not.i.peel.i = icmp slt i64 %.sroa.7.1.peel.i, %i.al
  %or.cond176.peel.i = select i1 %.sroa.11.1.peel.i, i1 true, i1 %.not.i.peel.i
  br i1 %or.cond176.peel.i, label %.lr.ph215.preheader.i, label %.lr.ph.peel.next.i

.lr.ph.peel.next.i:                               ; preds = %bb.ac, %bb.bt
  %.sroa.7.0208.i = phi i64 [ %.sroa.7.1.i, %bb.bt ], [ %.sroa.7.1.peel.i, %bb.ac ] ; 4 uses
  %i.bk = add nsw i64 %.sroa.7.0208.i, -1         ; 8 uses
  %i.bl = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.bk, i64 %i.al)
  switch i8 %i.bl, label %.loopexit.i [
    i8 -1, label %.lr.ph215.preheader.i
    i8 0, label %bb.ae
    i8 1, label %bb.ad
  ]

.loopexit.i:                                      ; preds = %bb.q, %.lr.ph.peel.next.i
  unreachable

bb.ad:                                            ; preds = %.lr.ph.peel.next.i
  %i.bm = add i64 %.sroa.7.0208.i, -2
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.lr.ph.peel.next.i
  %.sroa.11.1.i = phi i1 [ true, %.lr.ph.peel.next.i ], [ false, %bb.ad ]
  %.sroa.7.1.i = phi i64 [ %i.bk, %.lr.ph.peel.next.i ], [ %i.bm, %bb.ad ] ; 2 uses
  %i.bn = icmp eq i64 %i.bk, %i.al
  br i1 %i.bn, label %._crit_edge306.i, label %bb.bi

._crit_edge306.i:                                 ; preds = %bb.ae
  %.pre320.i = add i64 %.sroa.7.0208.i, %i.l
  br label %bb.bj

.lr.ph215.preheader.i:                            ; preds = %bb.bt, %.lr.ph.peel.next.i, %bb.ac
  switch i8 %i.am, label %.loopexit276.i [
    i8 -1, label %._crit_edge216.i
    i8 0, label %bb.ag
    i8 1, label %bb.af
  ]

bb.af:                                            ; preds = %.lr.ph215.preheader.i
  %i.bo = add nsw i64 %.sroa.047.0219.i, -1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.lr.ph215.preheader.i
  %.sroa.7160.1.peel.i = phi i64 [ %.sroa.047.0219.i, %.lr.ph215.preheader.i ], [ %i.bo, %bb.af ] ; 2 uses
  %.sroa.12.1.peel.i = phi i1 [ true, %.lr.ph215.preheader.i ], [ false, %bb.af ]
  br i1 %i.ao, label %._crit_edge311.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.pre316.i = add i64 %.sroa.047.0219.i, %i.ai   ; 3 uses
  %i.bp = icmp ult i64 %.pre316.i, %i.x
  br i1 %i.bp, label %bb.ai, label %.loopexit279.i

bb.ai:                                            ; preds = %bb.ah
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.pre316.i
  %i.br = load i64, ptr %i.bq, align 8, !noalias !151, !noundef !3
  %i.bs = add i64 %i.br, 1
  br label %bb.aj

._crit_edge311.i:                                 ; preds = %bb.ag
  %i.bt = load i64, ptr %i.ab, align 8, !noalias !151, !noundef !3
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge311.i, %bb.ai
  %.sroa.014.0.peel.i = phi i64 [ %i.bt, %._crit_edge311.i ], [ %i.bs, %bb.ai ] ; 5 uses
  %i.bu = sub i64 %.sroa.014.0.peel.i, %.sroa.047.0219.i ; 4 uses
  %i.bv = icmp ult i64 %.sroa.014.0.peel.i, %i.g
  %i.bw = icmp ult i64 %i.bu, %.sroa.037.0.i
  %or.cond.peel.i = and i1 %i.bv, %i.bw
  br i1 %or.cond.peel.i, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.bx = sub nuw i64 %i.e, %.sroa.014.0.peel.i
  %i.by = sub i64 %11, %i.bu
  %i.bz = tail call noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_suffix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.bx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %i.by), !noalias !151 ; 2 uses
  %i.ca = add i64 %i.bz, %.sroa.014.0.peel.i
  %i.cb = add i64 %i.bz, %i.bu
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.sroa.020.0.peel.i = phi i64 [ %i.cb, %bb.ak ], [ %i.bu, %bb.aj ]
  %.sroa.014.1.peel.i = phi i64 [ %i.ca, %bb.ak ], [ %.sroa.014.0.peel.i, %bb.aj ] ; 3 uses
  %i.cc = add i64 %.sroa.047.0219.i, %i.u         ; 3 uses
  %i.cd = icmp ult i64 %i.cc, %i.x
  br i1 %i.cd, label %bb.am, label %.loopexit281.i

bb.am:                                            ; preds = %bb.al
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.cc
  store i64 %.sroa.014.1.peel.i, ptr %i.ce, align 8, !noalias !151
  br i1 %.not.i, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.cf = sub i64 %.sroa.047.0219.i, %i.i         ; 2 uses
  %.sroa.024.0.peel.i = tail call i64 @llvm.abs.i64(i64 %i.cf, i1 false)
  %.not129.peel.i = icmp sgt i64 %.sroa.024.0.peel.i, %.sroa.047.0219.i
  br i1 %.not129.peel.i, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cg = sub i64 %i.l, %i.cf                     ; 3 uses
  %i.ch = icmp ult i64 %i.cg, %i.o
  br i1 %i.ch, label %bb.ap, label %.loopexit282.i

bb.ap:                                            ; preds = %bb.ao
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.cg
  %i.cj = load i64, ptr %i.ci, align 8, !noalias !151, !noundef !3
  %i.ck = add i64 %i.cj, %.sroa.014.1.peel.i
  %.not130.peel.i = icmp ult i64 %i.ck, %i.g
  br i1 %.not130.peel.i, label %bb.aq, label %.loopexit283.i

bb.aq:                                            ; preds = %bb.ap, %bb.an, %bb.am
  %.not.i134.peel.i = icmp slt i64 %.sroa.7160.1.peel.i, %i.al
  %or.cond177.peel.i = select i1 %.sroa.12.1.peel.i, i1 true, i1 %.not.i134.peel.i
  br i1 %or.cond177.peel.i, label %._crit_edge216.i, label %.lr.ph215.peel.next.i

.lr.ph215.peel.next.i:                            ; preds = %bb.aq, %bb.bf
  %.sroa.7160.0212.i = phi i64 [ %.sroa.7160.1.i, %bb.bf ], [ %.sroa.7160.1.peel.i, %bb.aq ] ; 4 uses
  %i.cl = add nsw i64 %.sroa.7160.0212.i, -1      ; 8 uses
  %i.cm = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.cl, i64 %i.al)
  switch i8 %i.cm, label %.loopexit276.i [
    i8 -1, label %._crit_edge216.i
    i8 0, label %bb.as
    i8 1, label %bb.ar
  ]

.loopexit276.i:                                   ; preds = %.lr.ph215.preheader.i, %.lr.ph215.peel.next.i
  unreachable

bb.ar:                                            ; preds = %.lr.ph215.peel.next.i
  %i.cn = add i64 %.sroa.7160.0212.i, -2
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.lr.ph215.peel.next.i
  %.sroa.7160.1.i = phi i64 [ %i.cl, %.lr.ph215.peel.next.i ], [ %i.cn, %bb.ar ] ; 2 uses
  %.sroa.12.1.i = phi i1 [ true, %.lr.ph215.peel.next.i ], [ false, %bb.ar ]
  %i.co = icmp eq i64 %i.cl, %i.al
  br i1 %i.co, label %._crit_edge310.i, label %bb.at

._crit_edge310.i:                                 ; preds = %bb.as
  %.pre312.i = add i64 %.sroa.7160.0212.i, %i.u
  br label %bb.au

._crit_edge216.i:                                 ; preds = %bb.bf, %.lr.ph215.peel.next.i, %bb.q, %bb.aq, %.lr.ph215.preheader.i
  %exitcond.not.i = icmp eq i64 %.sroa.047.0219.i, %i.ae
  br i1 %exitcond.not.i, label %_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers17find_middle_snakeINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1C_12OffsetLookupmEEEB13_ECsl6EuCK7xub1_5insta.exit, label %bb.p

bb.at:                                            ; preds = %bb.as
  %.not128.i = icmp eq i64 %i.cl, %.sroa.047.0219.i
  %.pre314.i = add i64 %i.cl, %i.ai               ; 6 uses
  br i1 %.not128.i, label %._crit_edge309.i, label %bb.av

bb.au:                                            ; preds = %bb.ax, %._crit_edge310.i
  %.pre-phi313.i = phi i64 [ %.pre312.i, %._crit_edge310.i ], [ %i.cs, %bb.ax ] ; 3 uses
  %i.cp = icmp ult i64 %.pre-phi313.i, %i.x
  br i1 %i.cp, label %bb.ba, label %.loopexit280.i

._crit_edge309.i:                                 ; preds = %bb.ax, %bb.at
  %i.cq = icmp ult i64 %.pre314.i, %i.x
  br i1 %i.cq, label %bb.ay, label %.loopexit279.i

bb.av:                                            ; preds = %bb.at
  %i.cr = icmp ult i64 %.pre314.i, %i.x
  br i1 %i.cr, label %bb.aw, label %.loopexit277.i

bb.aw:                                            ; preds = %bb.av
  %i.cs = add i64 %.sroa.7160.0212.i, %i.u        ; 4 uses
  %i.ct = icmp ult i64 %i.cs, %i.x
  br i1 %i.ct, label %bb.ax, label %.loopexit278.i

.loopexit277.i:                                   ; preds = %bb.av
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre314.i, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #16, !noalias !151
  unreachable

bb.ax:                                            ; preds = %bb.aw
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.pre314.i
  %i.cv = load i64, ptr %i.cu, align 8, !noalias !151, !noundef !3
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.cs
  %i.cx = load i64, ptr %i.cw, align 8, !noalias !151, !noundef !3
  %i.cy = icmp ult i64 %i.cv, %i.cx
  br i1 %i.cy, label %bb.au, label %._crit_edge309.i

.loopexit278.i:                                   ; preds = %bb.aw
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.cs, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #16, !noalias !151
  unreachable

bb.ay:                                            ; preds = %._crit_edge309.i
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.pre314.i
  %i.da = load i64, ptr %i.cz, align 8, !noalias !151, !noundef !3
  %i.db = add i64 %i.da, 1
  br label %bb.az

.loopexit279.i:                                   ; preds = %bb.ah, %._crit_edge309.i
  %.lcssa240.i = phi i64 [ %.pre314.i, %._crit_edge309.i ], [ %.pre316.i, %bb.ah ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa240.i, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #16, !noalias !151
  unreachable

bb.az:                                            ; preds = %bb.ba, %bb.ay
  %.sroa.014.0.i = phi i64 [ %i.dg, %bb.ba ], [ %i.db, %bb.ay ] ; 5 uses
  %i.dc = sub i64 %.sroa.014.0.i, %i.cl           ; 4 uses
  %i.dd = icmp ult i64 %.sroa.014.0.i, %i.g
  %i.de = icmp ult i64 %i.dc, %.sroa.037.0.i
  %or.cond.i = and i1 %i.dd, %i.de
  br i1 %or.cond.i, label %bb.bc, label %bb.bb

bb.ba:                                            ; preds = %bb.au
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.pre-phi313.i
  %i.dg = load i64, ptr %i.df, align 8, !noalias !151, !noundef !3
  br label %bb.az

.loopexit280.i:                                   ; preds = %bb.au
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi313.i, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #16, !noalias !151
  unreachable

bb.bb:                                            ; preds = %bb.bc, %bb.az
  %.sroa.020.0.i = phi i64 [ %i.dn, %bb.bc ], [ %i.dc, %bb.az ]
  %.sroa.014.1.i = phi i64 [ %i.dm, %bb.bc ], [ %.sroa.014.0.i, %bb.az ] ; 3 uses
  %i.dh = add i64 %i.cl, %i.u                     ; 3 uses
  %i.di = icmp ult i64 %i.dh, %i.x
  br i1 %i.di, label %bb.bd, label %.loopexit281.i

bb.bc:                                            ; preds = %bb.az
  %i.dj = sub nuw i64 %i.e, %.sroa.014.0.i
  %i.dk = sub i64 %11, %i.dc
  %i.dl = tail call noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_suffix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.dj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %i.dk), !noalias !151 ; 2 uses
  %i.dm = add i64 %i.dl, %.sroa.014.0.i
  %i.dn = add i64 %i.dl, %i.dc
  br label %bb.bb

bb.bd:                                            ; preds = %bb.bb
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.dh
  store i64 %.sroa.014.1.i, ptr %i.do, align 8, !noalias !151
  br i1 %.not.i, label %bb.be, label %bb.bf

.loopexit281.i:                                   ; preds = %bb.al, %bb.bb
  %.lcssa242.i = phi i64 [ %i.dh, %bb.bb ], [ %i.cc, %bb.al ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa242.i, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #16, !noalias !151
  unreachable

bb.be:                                            ; preds = %bb.bd
  %i.dp = sub i64 %i.cl, %i.i                     ; 2 uses
  %.sroa.024.0.i = tail call i64 @llvm.abs.i64(i64 %i.dp, i1 false)
  %.not129.i = icmp sgt i64 %.sroa.024.0.i, %.sroa.047.0219.i
  br i1 %.not129.i, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.bh, %bb.be, %bb.bd
  %.not.i134.i = icmp slt i64 %.sroa.7160.1.i, %i.al
  %or.cond177.i = or i1 %.sroa.12.1.i, %.not.i134.i
  br i1 %or.cond177.i, label %._crit_edge216.i, label %.lr.ph215.peel.next.i, !llvm.loop !146

bb.bg:                                            ; preds = %bb.be
  %i.dq = sub i64 %i.l, %i.dp                     ; 3 uses
  %i.dr = icmp ult i64 %i.dq, %i.o
  br i1 %i.dr, label %bb.bh, label %.loopexit282.i

bb.bh:                                            ; preds = %bb.bg
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.dq
  %i.dt = load i64, ptr %i.ds, align 8, !noalias !151, !noundef !3
  %i.du = add i64 %i.dt, %.sroa.014.1.i
  %.not130.i = icmp ult i64 %i.du, %i.g
  br i1 %.not130.i, label %bb.bf, label %.loopexit283.i

.loopexit282.i:                                   ; preds = %bb.ao, %bb.bg
  %.lcssa249.i = phi i64 [ %i.dq, %bb.bg ], [ %i.cg, %bb.ao ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa249.i, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #16, !noalias !151
  unreachable

.loopexit283.i:                                   ; preds = %bb.ap, %bb.bh
  %.sroa.020.0.lcssa248.i = phi i64 [ %.sroa.020.0.i, %bb.bh ], [ %.sroa.020.0.peel.i, %bb.ap ]
  %.sroa.014.1.lcssa246.i = phi i64 [ %.sroa.014.1.i, %bb.bh ], [ %.sroa.014.1.peel.i, %bb.ap ]
  %i.dv = sub i64 %i.e, %.sroa.014.1.lcssa246.i
  %i.dw = sub i64 %11, %.sroa.020.0.lcssa248.i
  br label %bb.bx

bb.bi:                                            ; preds = %bb.ae
  %.not131.i = icmp eq i64 %i.bk, %.sroa.047.0219.i
  %.pre322.i = add i64 %i.bk, %i.ah               ; 6 uses
  br i1 %.not131.i, label %._crit_edge305.i, label %bb.bk

bb.bj:                                            ; preds = %bb.bm, %._crit_edge306.i
  %.pre-phi321.i = phi i64 [ %.pre320.i, %._crit_edge306.i ], [ %i.ea, %bb.bm ] ; 3 uses
  %i.dx = icmp ult i64 %.pre-phi321.i, %i.o
  br i1 %i.dx, label %bb.bp, label %.loopexit255.i

._crit_edge305.i:                                 ; preds = %bb.bm, %bb.bi
  %i.dy = icmp ult i64 %.pre322.i, %i.o
  br i1 %i.dy, label %bb.bn, label %.loopexit254.i

bb.bk:                                            ; preds = %bb.bi
  %i.dz = icmp ult i64 %.pre322.i, %i.o
  br i1 %i.dz, label %bb.bl, label %.loopexit252.i

bb.bl:                                            ; preds = %bb.bk
  %i.ea = add i64 %.sroa.7.0208.i, %i.l           ; 4 uses
  %i.eb = icmp ult i64 %i.ea, %i.o
  br i1 %i.eb, label %bb.bm, label %.loopexit253.i

.loopexit252.i:                                   ; preds = %bb.bk
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre322.i, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #16, !noalias !151
  unreachable

bb.bm:                                            ; preds = %bb.bl
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.pre322.i
  %i.ed = load i64, ptr %i.ec, align 8, !noalias !151, !noundef !3
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ea
  %i.ef = load i64, ptr %i.ee, align 8, !noalias !151, !noundef !3
  %i.eg = icmp ult i64 %i.ed, %i.ef
  br i1 %i.eg, label %bb.bj, label %._crit_edge305.i

.loopexit253.i:                                   ; preds = %bb.bl
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ea, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #16, !noalias !151
  unreachable

bb.bn:                                            ; preds = %._crit_edge305.i
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.pre322.i
  %i.ei = load i64, ptr %i.eh, align 8, !noalias !151, !noundef !3
  %i.ej = add i64 %i.ei, 1
  br label %bb.bo

.loopexit254.i:                                   ; preds = %bb.t, %._crit_edge305.i
  %.lcssa225.i = phi i64 [ %.pre322.i, %._crit_edge305.i ], [ %.pre324.i, %bb.t ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa225.i, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #16, !noalias !151
  unreachable

bb.bo:                                            ; preds = %bb.bp, %bb.bn
  %.sroa.04.0.i = phi i64 [ %i.eo, %bb.bp ], [ %i.ej, %bb.bn ] ; 6 uses
  %i.ek = sub i64 %.sroa.04.0.i, %i.bk            ; 3 uses
  %i.el = icmp ult i64 %.sroa.04.0.i, %i.g
  %i.em = icmp ult i64 %i.ek, %i.h
  %or.cond175.i = and i1 %i.el, %i.em
  br i1 %or.cond175.i, label %bb.br, label %bb.bq

bb.bp:                                            ; preds = %bb.bj
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.pre-phi321.i
  %i.eo = load i64, ptr %i.en, align 8, !noalias !151, !noundef !3
  br label %bb.bo

.loopexit255.i:                                   ; preds = %bb.bj
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi321.i, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #16, !noalias !151
  unreachable

bb.bq:                                            ; preds = %bb.br, %bb.bo
  %.sroa.04.1.i = phi i64 [ %i.eu, %bb.br ], [ %.sroa.04.0.i, %bb.bo ] ; 2 uses
  %i.ep = add i64 %i.bk, %i.l                     ; 3 uses
  %i.eq = icmp ult i64 %i.ep, %i.o
  br i1 %i.eq, label %bb.bs, label %.loopexit256.i

bb.br:                                            ; preds = %bb.bo
  %i.er = add i64 %.sroa.04.0.i, %i.b
  %i.es = add i64 %i.ek, %i.c
  %i.et = tail call noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.er, i64 noundef %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.es, i64 noundef %i.f), !noalias !151
  %i.eu = add i64 %i.et, %.sroa.04.0.i
  br label %bb.bq

bb.bs:                                            ; preds = %bb.bq
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ep
  store i64 %.sroa.04.1.i, ptr %i.ev, align 8, !noalias !151
  br i1 %.not.i, label %bb.bt, label %bb.bu

.loopexit256.i:                                   ; preds = %bb.x, %bb.bq
  %.lcssa232.i = phi i64 [ %i.ep, %bb.bq ], [ %i.bb, %bb.x ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa232.i, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #16, !noalias !151
  unreachable

bb.bt:                                            ; preds = %bb.bw, %bb.bu, %bb.bs
  %.not.i.i = icmp slt i64 %.sroa.7.1.i, %i.al
  %or.cond176.i = or i1 %.sroa.11.1.i, %.not.i.i
  br i1 %or.cond176.i, label %.lr.ph215.preheader.i, label %.lr.ph.peel.next.i, !llvm.loop !147

bb.bu:                                            ; preds = %bb.bs
  %i.ew = sub i64 %i.bk, %i.i                     ; 2 uses
  %.sroa.010.0.i = tail call i64 @llvm.abs.i64(i64 %i.ew, i1 false)
  %.not132.not.i = icmp slt i64 %.sroa.010.0.i, %.sroa.047.0219.i
  br i1 %.not132.not.i, label %bb.bv, label %bb.bt

bb.bv:                                            ; preds = %bb.bu
  %i.ex = sub i64 %i.u, %i.ew                     ; 3 uses
  %i.ey = icmp ult i64 %i.ex, %i.x
  br i1 %i.ey, label %bb.bw, label %.loopexit257.i

bb.bw:                                            ; preds = %bb.bv
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ex
  %i.fa = load i64, ptr %i.ez, align 8, !noalias !151, !noundef !3
  %i.fb = add i64 %i.fa, %.sroa.04.1.i
  %.not133.i = icmp ult i64 %i.fb, %i.g
  br i1 %.not133.i, label %bb.bt, label %.loopexit258.i

.loopexit257.i:                                   ; preds = %bb.aa, %bb.bv
  %.lcssa235.i = phi i64 [ %i.ex, %bb.bv ], [ %i.bf, %bb.aa ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa235.i, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #16, !noalias !151
  unreachable

.loopexit258.i:                                   ; preds = %bb.ab, %bb.bw
  %.sroa.04.0.lcssa231.i = phi i64 [ %.sroa.04.0.i, %bb.bw ], [ %.sroa.04.0.peel.i, %bb.ab ]
  %.lcssa229.i = phi i64 [ %i.ek, %bb.bw ], [ %i.au, %bb.ab ]
  %i.fc = add i64 %.sroa.04.0.lcssa231.i, %i.b
  %i.fd = add i64 %.lcssa229.i, %i.c
  br label %bb.bx

bb.bx:                                            ; preds = %.loopexit258.i, %.loopexit283.i
  %.sroa.6.0.ph = phi i64 [ %i.fd, %.loopexit258.i ], [ %i.dw, %.loopexit283.i ] ; 2 uses
  %.sroa.4.0.ph = phi i64 [ %i.fc, %.loopexit258.i ], [ %i.dv, %.loopexit283.i ] ; 2 uses
  tail call fastcc void @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers7conquerINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1r_12OffsetLookupmEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1O_B1O_INtNtB4_7compact7CompactB1O_B1O_IB2h_NtNtB4_7capture7CaptureEEEEECsl6EuCK7xub1_5insta(ptr noalias noundef align 8 dereferenceable(200) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %.sroa.4.0.ph, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %.sroa.6.0.ph, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  tail call fastcc void @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers7conquerINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1r_12OffsetLookupmEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1O_B1O_INtNtB4_7compact7CompactB1O_B1O_IB2h_NtNtB4_7capture7CaptureEEEEECsl6EuCK7xub1_5insta(ptr noalias noundef align 8 dereferenceable(200) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %.sroa.4.0.ph, i64 noundef %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %.sroa.6.0.ph, i64 noundef %i.f, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  br label %bb.e

_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers17find_middle_snakeINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1C_12OffsetLookupmEEEB13_ECsl6EuCK7xub1_5insta.exit: ; preds = %._crit_edge216.i, %bb.p
  tail call void @_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(200) %0, i64 noundef %i.b, i64 noundef %i.g, i64 noundef %i.c)
  tail call void @_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6insertCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(200) %0, i64 noundef %i.b, i64 noundef %i.c, i64 noundef %i.h)
  br label %bb.e

bb.by:                                            ; preds = %bb.f
  %i.fe = sub nuw i64 %i.f, %i.c
  tail call void @_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6insertCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(200) %0, i64 noundef %i.b, i64 noundef %i.c, i64 noundef %i.fe)
  br label %bb.e

bb.bz:                                            ; preds = %bb.e
  tail call void @_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook5equalCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(200) %0, i64 noundef %i.e, i64 noundef %i.f, i64 noundef %i.d)
  br label %bb.ca

bb.ca:                                            ; preds = %bb.e, %bb.bz
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers7conquerINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtNtB6_4text6inline11MultiLookupeEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1O_B1O_INtNtB4_7compact7CompactB1O_B1O_IB2v_NtNtB4_7capture7CaptureEEEEECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(200) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtNtB6_4text6inline11MultiLookupeEEEB13_ECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6) ; 4 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.b = add i64 %i.a, %2                         ; 14 uses
  %i.c = add i64 %i.a, %5                         ; 16 uses
  %i.d = tail call noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_suffix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtNtB6_4text6inline11MultiLookupeEEEB13_ECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %6) ; 4 uses
  %i.e = sub i64 %3, %i.d                         ; 10 uses
  %i.f = sub i64 %6, %i.d                         ; 8 uses
  %.not16 = icmp ult i64 %i.b, %i.e               ; 2 uses
  %.not17 = icmp ult i64 %i.c, %i.f               ; 2 uses
  %or.cond = or i1 %.not16, %.not17
  br i1 %or.cond, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtNtB9_4text6inline11MultiLookupeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook5equalCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(200) %0, i64 noundef %2, i64 noundef %5, i64 noundef %i.a)
  br label %bb.b

bb.d:                                             ; preds = %bb.b
  br i1 %.not17, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.bx, %_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers17find_middle_snakeINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtNtB6_4text6inline11MultiLookupeEEEB13_ECsl6EuCK7xub1_5insta.exit, %bb.b, %bb.g, %bb.by
  %.not19 = icmp eq i64 %i.d, 0
  br i1 %.not19, label %bb.ca, label %bb.bz

bb.f:                                             ; preds = %bb.d
  br i1 %.not16, label %bb.h, label %bb.by

bb.g:                                             ; preds = %bb.d
  %.sroa.0.0 = tail call i64 @llvm.usub.sat.i64(i64 %i.e, i64 %i.b)
  tail call void @_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtNtB9_4text6inline11MultiLookupeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(200) %0, i64 noundef %i.b, i64 noundef %.sroa.0.0, i64 noundef %i.c)
  br label %bb.e

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !162)
  %i.g = sub nuw i64 %i.e, %i.b                   ; 11 uses
  %i.h = sub nuw i64 %i.f, %i.c                   ; 3 uses
  %.sroa.037.0.i = tail call i64 @llvm.usub.sat.i64(i64 %i.f, i64 %i.c) ; 5 uses
  %i.i = sub i64 %i.g, %.sroa.037.0.i             ; 5 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0                   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !161, !noalias !163, !noundef !3 ; 8 uses
  %i.m = add i64 %i.l, 1                          ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !161, !noalias !163, !noundef !3 ; 19 uses
  %i.p = icmp ult i64 %i.m, %i.o
  br i1 %i.p, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !161, !noalias !163, !nonnull !3, !noundef !3 ; 10 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.m ; 2 uses
  store i64 0, ptr %i.s, align 8, !noalias !164
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !162, !noalias !165, !noundef !3 ; 8 uses
  %i.v = add i64 %i.u, 1                          ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !162, !noalias !165, !noundef !3 ; 19 uses
  %i.y = icmp ult i64 %i.v, %i.x
  br i1 %i.y, label %bb.k, label %bb.l

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.m, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #16, !noalias !164
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !162, !noalias !165, !nonnull !3, !noundef !3 ; 10 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.v ; 2 uses
  store i64 0, ptr %i.ab, align 8, !noalias !164
  %i.ac = add i64 %i.g, 1
  %i.ad = add i64 %i.ac, %.sroa.037.0.i
  %i.ae = lshr i64 %i.ad, 1                       ; 3 uses
  %i.af = icmp ult i64 %i.o, 1152921504606846976
  tail call void @llvm.assume(i1 %i.af)
  %.not126.not.i = icmp samesign ugt i64 %i.o, %i.ae
  br i1 %.not126.not.i, label %bb.n, label %bb.m, !prof !4

bb.l:                                             ; preds = %bb.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.v, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #16, !noalias !164
  unreachable

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #16, !noalias !164
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.ag = icmp ult i64 %i.x, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ag)
  %.not127.not.i = icmp samesign ugt i64 %i.x, %i.ae
  br i1 %.not127.not.i, label %.lr.ph220.i, label %bb.o, !prof !4

.lr.ph220.i:                                      ; preds = %bb.n
  %i.ah = add i64 %i.l, -1                        ; 2 uses
  %i.ai = add i64 %i.u, -1                        ; 2 uses
  %11 = add i64 %.sroa.037.0.i, %i.c              ; 3 uses
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #16, !noalias !164
  unreachable

bb.p:                                             ; preds = %._crit_edge216.i, %.lr.ph220.i
  %.sroa.047.0219.i = phi i64 [ 0, %.lr.ph220.i ], [ %i.aj, %._crit_edge216.i ] ; 23 uses
  %i.aj = add nuw nsw i64 %.sroa.047.0219.i, 1
  %i.ak = tail call noundef zeroext i1 @_RNvNtCshFZddwsEKsN_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !164
  br i1 %i.ak, label %_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers17find_middle_snakeINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtNtB6_4text6inline11MultiLookupeEEEB13_ECsl6EuCK7xub1_5insta.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.al = sub nsw i64 0, %.sroa.047.0219.i        ; 9 uses
  %i.am = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %.sroa.047.0219.i, i64 %i.al) ; 2 uses
  switch i8 %i.am, label %.loopexit.i [
    i8 -1, label %._crit_edge216.i
    i8 0, label %bb.s
    i8 1, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %i.an = add nsw i64 %.sroa.047.0219.i, -1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sroa.11.1.peel.i = phi i1 [ true, %bb.q ], [ false, %bb.r ]
  %.sroa.7.1.peel.i = phi i64 [ %.sroa.047.0219.i, %bb.q ], [ %i.an, %bb.r ] ; 2 uses
  %i.ao = icmp eq i64 %.sroa.047.0219.i, 0        ; 2 uses
  br i1 %i.ao, label %._crit_edge307.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.pre324.i = add i64 %.sroa.047.0219.i, %i.ah   ; 3 uses
  %i.ap = icmp ult i64 %.pre324.i, %i.o
  br i1 %i.ap, label %bb.u, label %.loopexit254.i

bb.u:                                             ; preds = %bb.t
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.pre324.i
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !164, !noundef !3
  %i.as = add i64 %i.ar, 1
  br label %bb.v

._crit_edge307.i:                                 ; preds = %bb.s
  %i.at = load i64, ptr %i.s, align 8, !noalias !164, !noundef !3
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge307.i, %bb.u
  %.sroa.04.0.peel.i = phi i64 [ %i.at, %._crit_edge307.i ], [ %i.as, %bb.u ] ; 6 uses
  %i.au = sub i64 %.sroa.04.0.peel.i, %.sroa.047.0219.i ; 3 uses
  %i.av = icmp ult i64 %.sroa.04.0.peel.i, %i.g
  %i.aw = icmp ult i64 %i.au, %i.h
  %or.cond175.peel.i = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %or.cond175.peel.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ax = add i64 %.sroa.04.0.peel.i, %i.b
  %i.ay = add i64 %i.au, %i.c
  %i.az = tail call noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtNtB6_4text6inline11MultiLookupeEEEB13_ECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.ax, i64 noundef %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.ay, i64 noundef %i.f), !noalias !164
  %i.ba = add i64 %i.az, %.sroa.04.0.peel.i
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sroa.04.1.peel.i = phi i64 [ %i.ba, %bb.w ], [ %.sroa.04.0.peel.i, %bb.v ] ; 2 uses
  %i.bb = add i64 %.sroa.047.0219.i, %i.l         ; 3 uses
  %i.bc = icmp ult i64 %i.bb, %i.o
  br i1 %i.bc, label %bb.y, label %.loopexit256.i

bb.y:                                             ; preds = %bb.x
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.bb
  store i64 %.sroa.04.1.peel.i, ptr %i.bd, align 8, !noalias !164
  br i1 %.not.i, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.be = sub i64 %.sroa.047.0219.i, %i.i         ; 2 uses
  %.sroa.010.0.peel.i = tail call i64 @llvm.abs.i64(i64 %i.be, i1 false)
  %.not132.not.peel.i = icmp slt i64 %.sroa.010.0.peel.i, %.sroa.047.0219.i
  br i1 %.not132.not.peel.i, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.bf = sub i64 %i.u, %i.be                     ; 3 uses
  %i.bg = icmp ult i64 %i.bf, %i.x
  br i1 %i.bg, label %bb.ab, label %.loopexit257.i

bb.ab:                                            ; preds = %bb.aa
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.bf
  %i.bi = load i64, ptr %i.bh, align 8, !noalias !164, !noundef !3
  %i.bj = add i64 %i.bi, %.sroa.04.1.peel.i
  %.not133.peel.i = icmp ult i64 %i.bj, %i.g
  br i1 %.not133.peel.i, label %bb.ac, label %.loopexit258.i

bb.ac:                                            ; preds = %bb.ab, %bb.z, %bb.y
  %.not.i.peel.i = icmp slt i64 %.sroa.7.1.peel.i, %i.al
  %or.cond176.peel.i = select i1 %.sroa.11.1.peel.i, i1 true, i1 %.not.i.peel.i
  br i1 %or.cond176.peel.i, label %.lr.ph215.preheader.i, label %.lr.ph.peel.next.i

.lr.ph.peel.next.i:                               ; preds = %bb.ac, %bb.bt
  %.sroa.7.0208.i = phi i64 [ %.sroa.7.1.i, %bb.bt ], [ %.sroa.7.1.peel.i, %bb.ac ] ; 4 uses
  %i.bk = add nsw i64 %.sroa.7.0208.i, -1         ; 8 uses
  %i.bl = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.bk, i64 %i.al)
  switch i8 %i.bl, label %.loopexit.i [
    i8 -1, label %.lr.ph215.preheader.i
    i8 0, label %bb.ae
    i8 1, label %bb.ad
  ]

.loopexit.i:                                      ; preds = %bb.q, %.lr.ph.peel.next.i
  unreachable

bb.ad:                                            ; preds = %.lr.ph.peel.next.i
  %i.bm = add i64 %.sroa.7.0208.i, -2
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.lr.ph.peel.next.i
  %.sroa.11.1.i = phi i1 [ true, %.lr.ph.peel.next.i ], [ false, %bb.ad ]
  %.sroa.7.1.i = phi i64 [ %i.bk, %.lr.ph.peel.next.i ], [ %i.bm, %bb.ad ] ; 2 uses
  %i.bn = icmp eq i64 %i.bk, %i.al
  br i1 %i.bn, label %._crit_edge306.i, label %bb.bi

._crit_edge306.i:                                 ; preds = %bb.ae
  %.pre320.i = add i64 %.sroa.7.0208.i, %i.l
  br label %bb.bj

.lr.ph215.preheader.i:                            ; preds = %bb.bt, %.lr.ph.peel.next.i, %bb.ac
  switch i8 %i.am, label %.loopexit276.i [
    i8 -1, label %._crit_edge216.i
    i8 0, label %bb.ag
    i8 1, label %bb.af
  ]

bb.af:                                            ; preds = %.lr.ph215.preheader.i
  %i.bo = add nsw i64 %.sroa.047.0219.i, -1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.lr.ph215.preheader.i
  %.sroa.7160.1.peel.i = phi i64 [ %.sroa.047.0219.i, %.lr.ph215.preheader.i ], [ %i.bo, %bb.af ] ; 2 uses
  %.sroa.12.1.peel.i = phi i1 [ true, %.lr.ph215.preheader.i ], [ false, %bb.af ]
  br i1 %i.ao, label %._crit_edge311.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.pre316.i = add i64 %.sroa.047.0219.i, %i.ai   ; 3 uses
  %i.bp = icmp ult i64 %.pre316.i, %i.x
  br i1 %i.bp, label %bb.ai, label %.loopexit279.i

bb.ai:                                            ; preds = %bb.ah
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.pre316.i
  %i.br = load i64, ptr %i.bq, align 8, !noalias !164, !noundef !3
  %i.bs = add i64 %i.br, 1
  br label %bb.aj

._crit_edge311.i:                                 ; preds = %bb.ag
  %i.bt = load i64, ptr %i.ab, align 8, !noalias !164, !noundef !3
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge311.i, %bb.ai
  %.sroa.014.0.peel.i = phi i64 [ %i.bt, %._crit_edge311.i ], [ %i.bs, %bb.ai ] ; 5 uses
  %i.bu = sub i64 %.sroa.014.0.peel.i, %.sroa.047.0219.i ; 4 uses
  %i.bv = icmp ult i64 %.sroa.014.0.peel.i, %i.g
  %i.bw = icmp ult i64 %i.bu, %.sroa.037.0.i
  %or.cond.peel.i = and i1 %i.bv, %i.bw
  br i1 %or.cond.peel.i, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.bx = sub nuw i64 %i.e, %.sroa.014.0.peel.i
  %i.by = sub i64 %11, %i.bu
  %i.bz = tail call noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_suffix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtNtB6_4text6inline11MultiLookupeEEEB13_ECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.bx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %i.by), !noalias !164 ; 2 uses
  %i.ca = add i64 %i.bz, %.sroa.014.0.peel.i
  %i.cb = add i64 %i.bz, %i.bu
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.sroa.020.0.peel.i = phi i64 [ %i.cb, %bb.ak ], [ %i.bu, %bb.aj ]
  %.sroa.014.1.peel.i = phi i64 [ %i.ca, %bb.ak ], [ %.sroa.014.0.peel.i, %bb.aj ] ; 3 uses
  %i.cc = add i64 %.sroa.047.0219.i, %i.u         ; 3 uses
  %i.cd = icmp ult i64 %i.cc, %i.x
  br i1 %i.cd, label %bb.am, label %.loopexit281.i

bb.am:                                            ; preds = %bb.al
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.cc
  store i64 %.sroa.014.1.peel.i, ptr %i.ce, align 8, !noalias !164
  br i1 %.not.i, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.cf = sub i64 %.sroa.047.0219.i, %i.i         ; 2 uses
  %.sroa.024.0.peel.i = tail call i64 @llvm.abs.i64(i64 %i.cf, i1 false)
  %.not129.peel.i = icmp sgt i64 %.sroa.024.0.peel.i, %.sroa.047.0219.i
  br i1 %.not129.peel.i, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cg = sub i64 %i.l, %i.cf                     ; 3 uses
  %i.ch = icmp ult i64 %i.cg, %i.o
  br i1 %i.ch, label %bb.ap, label %.loopexit282.i

bb.ap:                                            ; preds = %bb.ao
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.cg
  %i.cj = load i64, ptr %i.ci, align 8, !noalias !164, !noundef !3
  %i.ck = add i64 %i.cj, %.sroa.014.1.peel.i
  %.not130.peel.i = icmp ult i64 %i.ck, %i.g
  br i1 %.not130.peel.i, label %bb.aq, label %.loopexit283.i

bb.aq:                                            ; preds = %bb.ap, %bb.an, %bb.am
  %.not.i134.peel.i = icmp slt i64 %.sroa.7160.1.peel.i, %i.al
  %or.cond177.peel.i = select i1 %.sroa.12.1.peel.i, i1 true, i1 %.not.i134.peel.i
  br i1 %or.cond177.peel.i, label %._crit_edge216.i, label %.lr.ph215.peel.next.i

.lr.ph215.peel.next.i:                            ; preds = %bb.aq, %bb.bf
  %.sroa.7160.0212.i = phi i64 [ %.sroa.7160.1.i, %bb.bf ], [ %.sroa.7160.1.peel.i, %bb.aq ] ; 4 uses
  %i.cl = add nsw i64 %.sroa.7160.0212.i, -1      ; 8 uses
  %i.cm = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.cl, i64 %i.al)
  switch i8 %i.cm, label %.loopexit276.i [
    i8 -1, label %._crit_edge216.i
    i8 0, label %bb.as
    i8 1, label %bb.ar
  ]

.loopexit276.i:                                   ; preds = %.lr.ph215.preheader.i, %.lr.ph215.peel.next.i
  unreachable

bb.ar:                                            ; preds = %.lr.ph215.peel.next.i
  %i.cn = add i64 %.sroa.7160.0212.i, -2
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.lr.ph215.peel.next.i
  %.sroa.7160.1.i = phi i64 [ %i.cl, %.lr.ph215.peel.next.i ], [ %i.cn, %bb.ar ] ; 2 uses
  %.sroa.12.1.i = phi i1 [ true, %.lr.ph215.peel.next.i ], [ false, %bb.ar ]
  %i.co = icmp eq i64 %i.cl, %i.al
  br i1 %i.co, label %._crit_edge310.i, label %bb.at

._crit_edge310.i:                                 ; preds = %bb.as
  %.pre312.i = add i64 %.sroa.7160.0212.i, %i.u
  br label %bb.au

._crit_edge216.i:                                 ; preds = %bb.bf, %.lr.ph215.peel.next.i, %bb.q, %bb.aq, %.lr.ph215.preheader.i
  %exitcond.not.i = icmp eq i64 %.sroa.047.0219.i, %i.ae
  br i1 %exitcond.not.i, label %_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers17find_middle_snakeINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtNtB6_4text6inline11MultiLookupeEEEB13_ECsl6EuCK7xub1_5insta.exit, label %bb.p

bb.at:                                            ; preds = %bb.as
  %.not128.i = icmp eq i64 %i.cl, %.sroa.047.0219.i
  %.pre314.i = add i64 %i.cl, %i.ai               ; 6 uses
  br i1 %.not128.i, label %._crit_edge309.i, label %bb.av

bb.au:                                            ; preds = %bb.ax, %._crit_edge310.i
  %.pre-phi313.i = phi i64 [ %.pre312.i, %._crit_edge310.i ], [ %i.cs, %bb.ax ] ; 3 uses
  %i.cp = icmp ult i64 %.pre-phi313.i, %i.x
  br i1 %i.cp, label %bb.ba, label %.loopexit280.i

._crit_edge309.i:                                 ; preds = %bb.ax, %bb.at
  %i.cq = icmp ult i64 %.pre314.i, %i.x
  br i1 %i.cq, label %bb.ay, label %.loopexit279.i

bb.av:                                            ; preds = %bb.at
  %i.cr = icmp ult i64 %.pre314.i, %i.x
  br i1 %i.cr, label %bb.aw, label %.loopexit277.i

bb.aw:                                            ; preds = %bb.av
  %i.cs = add i64 %.sroa.7160.0212.i, %i.u        ; 4 uses
  %i.ct = icmp ult i64 %i.cs, %i.x
  br i1 %i.ct, label %bb.ax, label %.loopexit278.i

.loopexit277.i:                                   ; preds = %bb.av
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre314.i, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #16, !noalias !164
  unreachable

bb.ax:                                            ; preds = %bb.aw
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.pre314.i
  %i.cv = load i64, ptr %i.cu, align 8, !noalias !164, !noundef !3
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.cs
  %i.cx = load i64, ptr %i.cw, align 8, !noalias !164, !noundef !3
  %i.cy = icmp ult i64 %i.cv, %i.cx
  br i1 %i.cy, label %bb.au, label %._crit_edge309.i

.loopexit278.i:                                   ; preds = %bb.aw
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.cs, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #16, !noalias !164
  unreachable

bb.ay:                                            ; preds = %._crit_edge309.i
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.pre314.i
  %i.da = load i64, ptr %i.cz, align 8, !noalias !164, !noundef !3
  %i.db = add i64 %i.da, 1
  br label %bb.az

.loopexit279.i:                                   ; preds = %bb.ah, %._crit_edge309.i
  %.lcssa240.i = phi i64 [ %.pre314.i, %._crit_edge309.i ], [ %.pre316.i, %bb.ah ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa240.i, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #16, !noalias !164
  unreachable

bb.az:                                            ; preds = %bb.ba, %bb.ay
  %.sroa.014.0.i = phi i64 [ %i.dg, %bb.ba ], [ %i.db, %bb.ay ] ; 5 uses
  %i.dc = sub i64 %.sroa.014.0.i, %i.cl           ; 4 uses
  %i.dd = icmp ult i64 %.sroa.014.0.i, %i.g
  %i.de = icmp ult i64 %i.dc, %.sroa.037.0.i
  %or.cond.i = and i1 %i.dd, %i.de
  br i1 %or.cond.i, label %bb.bc, label %bb.bb

bb.ba:                                            ; preds = %bb.au
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.pre-phi313.i
  %i.dg = load i64, ptr %i.df, align 8, !noalias !164, !noundef !3
  br label %bb.az

.loopexit280.i:                                   ; preds = %bb.au
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi313.i, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #16, !noalias !164
  unreachable

bb.bb:                                            ; preds = %bb.bc, %bb.az
  %.sroa.020.0.i = phi i64 [ %i.dn, %bb.bc ], [ %i.dc, %bb.az ]
  %.sroa.014.1.i = phi i64 [ %i.dm, %bb.bc ], [ %.sroa.014.0.i, %bb.az ] ; 3 uses
  %i.dh = add i64 %i.cl, %i.u                     ; 3 uses
  %i.di = icmp ult i64 %i.dh, %i.x
  br i1 %i.di, label %bb.bd, label %.loopexit281.i

bb.bc:                                            ; preds = %bb.az
  %i.dj = sub nuw i64 %i.e, %.sroa.014.0.i
  %i.dk = sub i64 %11, %i.dc
  %i.dl = tail call noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_suffix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtNtB6_4text6inline11MultiLookupeEEEB13_ECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.dj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %i.dk), !noalias !164 ; 2 uses
  %i.dm = add i64 %i.dl, %.sroa.014.0.i
  %i.dn = add i64 %i.dl, %i.dc
  br label %bb.bb

bb.bd:                                            ; preds = %bb.bb
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.dh
  store i64 %.sroa.014.1.i, ptr %i.do, align 8, !noalias !164
  br i1 %.not.i, label %bb.be, label %bb.bf

.loopexit281.i:                                   ; preds = %bb.al, %bb.bb
  %.lcssa242.i = phi i64 [ %i.dh, %bb.bb ], [ %i.cc, %bb.al ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa242.i, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #16, !noalias !164
  unreachable

bb.be:                                            ; preds = %bb.bd
  %i.dp = sub i64 %i.cl, %i.i                     ; 2 uses
  %.sroa.024.0.i = tail call i64 @llvm.abs.i64(i64 %i.dp, i1 false)
  %.not129.i = icmp sgt i64 %.sroa.024.0.i, %.sroa.047.0219.i
  br i1 %.not129.i, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.bh, %bb.be, %bb.bd
  %.not.i134.i = icmp slt i64 %.sroa.7160.1.i, %i.al
  %or.cond177.i = or i1 %.sroa.12.1.i, %.not.i134.i
  br i1 %or.cond177.i, label %._crit_edge216.i, label %.lr.ph215.peel.next.i, !llvm.loop !159

bb.bg:                                            ; preds = %bb.be
  %i.dq = sub i64 %i.l, %i.dp                     ; 3 uses
  %i.dr = icmp ult i64 %i.dq, %i.o
  br i1 %i.dr, label %bb.bh, label %.loopexit282.i

bb.bh:                                            ; preds = %bb.bg
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.dq
  %i.dt = load i64, ptr %i.ds, align 8, !noalias !164, !noundef !3
  %i.du = add i64 %i.dt, %.sroa.014.1.i
  %.not130.i = icmp ult i64 %i.du, %i.g
  br i1 %.not130.i, label %bb.bf, label %.loopexit283.i

.loopexit282.i:                                   ; preds = %bb.ao, %bb.bg
  %.lcssa249.i = phi i64 [ %i.dq, %bb.bg ], [ %i.cg, %bb.ao ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa249.i, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #16, !noalias !164
  unreachable

.loopexit283.i:                                   ; preds = %bb.ap, %bb.bh
  %.sroa.020.0.lcssa248.i = phi i64 [ %.sroa.020.0.i, %bb.bh ], [ %.sroa.020.0.peel.i, %bb.ap ]
  %.sroa.014.1.lcssa246.i = phi i64 [ %.sroa.014.1.i, %bb.bh ], [ %.sroa.014.1.peel.i, %bb.ap ]
  %i.dv = sub i64 %i.e, %.sroa.014.1.lcssa246.i
  %i.dw = sub i64 %11, %.sroa.020.0.lcssa248.i
  br label %bb.bx

bb.bi:                                            ; preds = %bb.ae
  %.not131.i = icmp eq i64 %i.bk, %.sroa.047.0219.i
  %.pre322.i = add i64 %i.bk, %i.ah               ; 6 uses
  br i1 %.not131.i, label %._crit_edge305.i, label %bb.bk

bb.bj:                                            ; preds = %bb.bm, %._crit_edge306.i
  %.pre-phi321.i = phi i64 [ %.pre320.i, %._crit_edge306.i ], [ %i.ea, %bb.bm ] ; 3 uses
  %i.dx = icmp ult i64 %.pre-phi321.i, %i.o
  br i1 %i.dx, label %bb.bp, label %.loopexit255.i

._crit_edge305.i:                                 ; preds = %bb.bm, %bb.bi
  %i.dy = icmp ult i64 %.pre322.i, %i.o
  br i1 %i.dy, label %bb.bn, label %.loopexit254.i

bb.bk:                                            ; preds = %bb.bi
  %i.dz = icmp ult i64 %.pre322.i, %i.o
  br i1 %i.dz, label %bb.bl, label %.loopexit252.i

bb.bl:                                            ; preds = %bb.bk
  %i.ea = add i64 %.sroa.7.0208.i, %i.l           ; 4 uses
  %i.eb = icmp ult i64 %i.ea, %i.o
  br i1 %i.eb, label %bb.bm, label %.loopexit253.i

.loopexit252.i:                                   ; preds = %bb.bk
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre322.i, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #16, !noalias !164
  unreachable

bb.bm:                                            ; preds = %bb.bl
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.pre322.i
  %i.ed = load i64, ptr %i.ec, align 8, !noalias !164, !noundef !3
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ea
  %i.ef = load i64, ptr %i.ee, align 8, !noalias !164, !noundef !3
  %i.eg = icmp ult i64 %i.ed, %i.ef
  br i1 %i.eg, label %bb.bj, label %._crit_edge305.i

.loopexit253.i:                                   ; preds = %bb.bl
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ea, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #16, !noalias !164
  unreachable

bb.bn:                                            ; preds = %._crit_edge305.i
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.pre322.i
  %i.ei = load i64, ptr %i.eh, align 8, !noalias !164, !noundef !3
  %i.ej = add i64 %i.ei, 1
  br label %bb.bo

.loopexit254.i:                                   ; preds = %bb.t, %._crit_edge305.i
  %.lcssa225.i = phi i64 [ %.pre322.i, %._crit_edge305.i ], [ %.pre324.i, %bb.t ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa225.i, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #16, !noalias !164
  unreachable

bb.bo:                                            ; preds = %bb.bp, %bb.bn
  %.sroa.04.0.i = phi i64 [ %i.eo, %bb.bp ], [ %i.ej, %bb.bn ] ; 6 uses
  %i.ek = sub i64 %.sroa.04.0.i, %i.bk            ; 3 uses
  %i.el = icmp ult i64 %.sroa.04.0.i, %i.g
  %i.em = icmp ult i64 %i.ek, %i.h
  %or.cond175.i = and i1 %i.el, %i.em
  br i1 %or.cond175.i, label %bb.br, label %bb.bq

bb.bp:                                            ; preds = %bb.bj
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.pre-phi321.i
  %i.eo = load i64, ptr %i.en, align 8, !noalias !164, !noundef !3
  br label %bb.bo

.loopexit255.i:                                   ; preds = %bb.bj
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi321.i, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #16, !noalias !164
  unreachable

bb.bq:                                            ; preds = %bb.br, %bb.bo
  %.sroa.04.1.i = phi i64 [ %i.eu, %bb.br ], [ %.sroa.04.0.i, %bb.bo ] ; 2 uses
  %i.ep = add i64 %i.bk, %i.l                     ; 3 uses
  %i.eq = icmp ult i64 %i.ep, %i.o
  br i1 %i.eq, label %bb.bs, label %.loopexit256.i

bb.br:                                            ; preds = %bb.bo
  %i.er = add i64 %.sroa.04.0.i, %i.b
  %i.es = add i64 %i.ek, %i.c
  %i.et = tail call noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtNtB6_4text6inline11MultiLookupeEEEB13_ECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.er, i64 noundef %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.es, i64 noundef %i.f), !noalias !164
  %i.eu = add i64 %i.et, %.sroa.04.0.i
  br label %bb.bq

bb.bs:                                            ; preds = %bb.bq
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ep
  store i64 %.sroa.04.1.i, ptr %i.ev, align 8, !noalias !164
  br i1 %.not.i, label %bb.bt, label %bb.bu

.loopexit256.i:                                   ; preds = %bb.x, %bb.bq
  %.lcssa232.i = phi i64 [ %i.ep, %bb.bq ], [ %i.bb, %bb.x ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa232.i, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #16, !noalias !164
  unreachable

bb.bt:                                            ; preds = %bb.bw, %bb.bu, %bb.bs
  %.not.i.i = icmp slt i64 %.sroa.7.1.i, %i.al
  %or.cond176.i = or i1 %.sroa.11.1.i, %.not.i.i
  br i1 %or.cond176.i, label %.lr.ph215.preheader.i, label %.lr.ph.peel.next.i, !llvm.loop !160

bb.bu:                                            ; preds = %bb.bs
  %i.ew = sub i64 %i.bk, %i.i                     ; 2 uses
  %.sroa.010.0.i = tail call i64 @llvm.abs.i64(i64 %i.ew, i1 false)
  %.not132.not.i = icmp slt i64 %.sroa.010.0.i, %.sroa.047.0219.i
  br i1 %.not132.not.i, label %bb.bv, label %bb.bt

bb.bv:                                            ; preds = %bb.bu
  %i.ex = sub i64 %i.u, %i.ew                     ; 3 uses
  %i.ey = icmp ult i64 %i.ex, %i.x
  br i1 %i.ey, label %bb.bw, label %.loopexit257.i

bb.bw:                                            ; preds = %bb.bv
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ex
  %i.fa = load i64, ptr %i.ez, align 8, !noalias !164, !noundef !3
  %i.fb = add i64 %i.fa, %.sroa.04.1.i
  %.not133.i = icmp ult i64 %i.fb, %i.g
  br i1 %.not133.i, label %bb.bt, label %.loopexit258.i

.loopexit257.i:                                   ; preds = %bb.aa, %bb.bv
  %.lcssa235.i = phi i64 [ %i.ex, %bb.bv ], [ %i.bf, %bb.aa ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa235.i, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #16, !noalias !164
  unreachable

.loopexit258.i:                                   ; preds = %bb.ab, %bb.bw
  %.sroa.04.0.lcssa231.i = phi i64 [ %.sroa.04.0.i, %bb.bw ], [ %.sroa.04.0.peel.i, %bb.ab ]
  %.lcssa229.i = phi i64 [ %i.ek, %bb.bw ], [ %i.au, %bb.ab ]
  %i.fc = add i64 %.sroa.04.0.lcssa231.i, %i.b
  %i.fd = add i64 %.lcssa229.i, %i.c
  br label %bb.bx

bb.bx:                                            ; preds = %.loopexit258.i, %.loopexit283.i
  %.sroa.6.0.ph = phi i64 [ %i.fd, %.loopexit258.i ], [ %i.dw, %.loopexit283.i ] ; 2 uses
  %.sroa.4.0.ph = phi i64 [ %i.fc, %.loopexit258.i ], [ %i.dv, %.loopexit283.i ] ; 2 uses
  tail call fastcc void @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers7conquerINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtNtB6_4text6inline11MultiLookupeEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1O_B1O_INtNtB4_7compact7CompactB1O_B1O_IB2v_NtNtB4_7capture7CaptureEEEEECsl6EuCK7xub1_5insta(ptr noalias noundef align 8 dereferenceable(200) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %.sroa.4.0.ph, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %.sroa.6.0.ph, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  tail call fastcc void @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers7conquerINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtNtB6_4text6inline11MultiLookupeEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1O_B1O_INtNtB4_7compact7CompactB1O_B1O_IB2v_NtNtB4_7capture7CaptureEEEEECsl6EuCK7xub1_5insta(ptr noalias noundef align 8 dereferenceable(200) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %.sroa.4.0.ph, i64 noundef %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %.sroa.6.0.ph, i64 noundef %i.f, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  br label %bb.e

_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers17find_middle_snakeINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtNtB6_4text6inline11MultiLookupeEEEB13_ECsl6EuCK7xub1_5insta.exit: ; preds = %._crit_edge216.i, %bb.p
  tail call void @_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtNtB9_4text6inline11MultiLookupeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(200) %0, i64 noundef %i.b, i64 noundef %i.g, i64 noundef %i.c)
  tail call void @_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtNtB9_4text6inline11MultiLookupeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6insertCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(200) %0, i64 noundef %i.b, i64 noundef %i.c, i64 noundef %i.h)
  br label %bb.e

bb.by:                                            ; preds = %bb.f
  %i.fe = sub nuw i64 %i.f, %i.c
  tail call void @_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtNtB9_4text6inline11MultiLookupeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6insertCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(200) %0, i64 noundef %i.b, i64 noundef %i.c, i64 noundef %i.fe)
  br label %bb.e

bb.bz:                                            ; preds = %bb.e
  tail call void @_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtNtB9_4text6inline11MultiLookupeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook5equalCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(200) %0, i64 noundef %i.e, i64 noundef %i.f, i64 noundef %i.d)
  br label %bb.ca

bb.ca:                                            ; preds = %bb.e, %bb.bz
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers7conquerINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemSReEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1O_B1O_INtNtB4_7compact7CompactB1O_B1O_IB1X_NtNtB4_7capture7CaptureEEEEECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(216) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemSReEEB13_ECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6) ; 4 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.b = add i64 %i.a, %2                         ; 14 uses
  %i.c = add i64 %i.a, %5                         ; 16 uses
  %i.d = tail call noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_suffix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemSReEEB13_ECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %6) ; 4 uses
  %i.e = sub i64 %3, %i.d                         ; 10 uses
  %i.f = sub i64 %6, %i.d                         ; 8 uses
  %.not16 = icmp ult i64 %i.b, %i.e               ; 2 uses
  %.not17 = icmp ult i64 %i.c, %i.f               ; 2 uses
  %or.cond = or i1 %.not16, %.not17
  br i1 %or.cond, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceSReB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook5equalCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(216) %0, i64 noundef %2, i64 noundef %5, i64 noundef %i.a)
  br label %bb.b

bb.d:                                             ; preds = %bb.b
  br i1 %.not17, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.bx, %_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers17find_middle_snakeINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemSReEEB13_ECsl6EuCK7xub1_5insta.exit, %bb.b, %bb.g, %bb.by
  %.not19 = icmp eq i64 %i.d, 0
  br i1 %.not19, label %bb.ca, label %bb.bz

bb.f:                                             ; preds = %bb.d
  br i1 %.not16, label %bb.h, label %bb.by

bb.g:                                             ; preds = %bb.d
  %.sroa.0.0 = tail call i64 @llvm.usub.sat.i64(i64 %i.e, i64 %i.b)
  tail call void @_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceSReB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(216) %0, i64 noundef %i.b, i64 noundef %.sroa.0.0, i64 noundef %i.c)
  br label %bb.e

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  %i.g = sub nuw i64 %i.e, %i.b                   ; 11 uses
  %i.h = sub nuw i64 %i.f, %i.c                   ; 3 uses
  %.sroa.037.0.i = tail call i64 @llvm.usub.sat.i64(i64 %i.f, i64 %i.c) ; 5 uses
  %i.i = sub i64 %i.g, %.sroa.037.0.i             ; 5 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0                   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !174, !noalias !176, !noundef !3 ; 8 uses
  %i.m = add i64 %i.l, 1                          ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !174, !noalias !176, !noundef !3 ; 19 uses
  %i.p = icmp ult i64 %i.m, %i.o
  br i1 %i.p, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !174, !noalias !176, !nonnull !3, !noundef !3 ; 10 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.m ; 2 uses
  store i64 0, ptr %i.s, align 8, !noalias !177
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !175, !noalias !178, !noundef !3 ; 8 uses
  %i.v = add i64 %i.u, 1                          ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !175, !noalias !178, !noundef !3 ; 19 uses
  %i.y = icmp ult i64 %i.v, %i.x
  br i1 %i.y, label %bb.k, label %bb.l

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.m, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #16, !noalias !177
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !175, !noalias !178, !nonnull !3, !noundef !3 ; 10 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.v ; 2 uses
  store i64 0, ptr %i.ab, align 8, !noalias !177
  %i.ac = add i64 %i.g, 1
  %i.ad = add i64 %i.ac, %.sroa.037.0.i
  %i.ae = lshr i64 %i.ad, 1                       ; 3 uses
  %i.af = icmp ult i64 %i.o, 1152921504606846976
  tail call void @llvm.assume(i1 %i.af)
  %.not126.not.i = icmp samesign ugt i64 %i.o, %i.ae
  br i1 %.not126.not.i, label %bb.n, label %bb.m, !prof !4

bb.l:                                             ; preds = %bb.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.v, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #16, !noalias !177
  unreachable

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #16, !noalias !177
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.ag = icmp ult i64 %i.x, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ag)
  %.not127.not.i = icmp samesign ugt i64 %i.x, %i.ae
  br i1 %.not127.not.i, label %.lr.ph220.i, label %bb.o, !prof !4

.lr.ph220.i:                                      ; preds = %bb.n
  %i.ah = add i64 %i.l, -1                        ; 2 uses
  %i.ai = add i64 %i.u, -1                        ; 2 uses
  %11 = add i64 %.sroa.037.0.i, %i.c              ; 3 uses
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #16, !noalias !177
  unreachable

bb.p:                                             ; preds = %._crit_edge216.i, %.lr.ph220.i
  %.sroa.047.0219.i = phi i64 [ 0, %.lr.ph220.i ], [ %i.aj, %._crit_edge216.i ] ; 23 uses
  %i.aj = add nuw nsw i64 %.sroa.047.0219.i, 1
  %i.ak = tail call noundef zeroext i1 @_RNvNtCshFZddwsEKsN_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !177
  br i1 %i.ak, label %_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers17find_middle_snakeINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemSReEEB13_ECsl6EuCK7xub1_5insta.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.al = sub nsw i64 0, %.sroa.047.0219.i        ; 9 uses
  %i.am = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %.sroa.047.0219.i, i64 %i.al) ; 2 uses
  switch i8 %i.am, label %.loopexit.i [
    i8 -1, label %._crit_edge216.i
    i8 0, label %bb.s
    i8 1, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %i.an = add nsw i64 %.sroa.047.0219.i, -1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sroa.11.1.peel.i = phi i1 [ true, %bb.q ], [ false, %bb.r ]
  %.sroa.7.1.peel.i = phi i64 [ %.sroa.047.0219.i, %bb.q ], [ %i.an, %bb.r ] ; 2 uses
  %i.ao = icmp eq i64 %.sroa.047.0219.i, 0        ; 2 uses
  br i1 %i.ao, label %._crit_edge307.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.pre324.i = add i64 %.sroa.047.0219.i, %i.ah   ; 3 uses
  %i.ap = icmp ult i64 %.pre324.i, %i.o
  br i1 %i.ap, label %bb.u, label %.loopexit254.i

bb.u:                                             ; preds = %bb.t
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.pre324.i
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !177, !noundef !3
  %i.as = add i64 %i.ar, 1
  br label %bb.v

._crit_edge307.i:                                 ; preds = %bb.s
  %i.at = load i64, ptr %i.s, align 8, !noalias !177, !noundef !3
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge307.i, %bb.u
  %.sroa.04.0.peel.i = phi i64 [ %i.at, %._crit_edge307.i ], [ %i.as, %bb.u ] ; 6 uses
  %i.au = sub i64 %.sroa.04.0.peel.i, %.sroa.047.0219.i ; 3 uses
  %i.av = icmp ult i64 %.sroa.04.0.peel.i, %i.g
  %i.aw = icmp ult i64 %i.au, %i.h
  %or.cond175.peel.i = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %or.cond175.peel.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ax = add i64 %.sroa.04.0.peel.i, %i.b
  %i.ay = add i64 %i.au, %i.c
  %i.az = tail call noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemSReEEB13_ECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.ax, i64 noundef %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.ay, i64 noundef %i.f), !noalias !177
  %i.ba = add i64 %i.az, %.sroa.04.0.peel.i
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sroa.04.1.peel.i = phi i64 [ %i.ba, %bb.w ], [ %.sroa.04.0.peel.i, %bb.v ] ; 2 uses
  %i.bb = add i64 %.sroa.047.0219.i, %i.l         ; 3 uses
  %i.bc = icmp ult i64 %i.bb, %i.o
  br i1 %i.bc, label %bb.y, label %.loopexit256.i

bb.y:                                             ; preds = %bb.x
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.bb
  store i64 %.sroa.04.1.peel.i, ptr %i.bd, align 8, !noalias !177
  br i1 %.not.i, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.be = sub i64 %.sroa.047.0219.i, %i.i         ; 2 uses
  %.sroa.010.0.peel.i = tail call i64 @llvm.abs.i64(i64 %i.be, i1 false)
  %.not132.not.peel.i = icmp slt i64 %.sroa.010.0.peel.i, %.sroa.047.0219.i
  br i1 %.not132.not.peel.i, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.bf = sub i64 %i.u, %i.be                     ; 3 uses
  %i.bg = icmp ult i64 %i.bf, %i.x
  br i1 %i.bg, label %bb.ab, label %.loopexit257.i

bb.ab:                                            ; preds = %bb.aa
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.bf
  %i.bi = load i64, ptr %i.bh, align 8, !noalias !177, !noundef !3
  %i.bj = add i64 %i.bi, %.sroa.04.1.peel.i
  %.not133.peel.i = icmp ult i64 %i.bj, %i.g
  br i1 %.not133.peel.i, label %bb.ac, label %.loopexit258.i

bb.ac:                                            ; preds = %bb.ab, %bb.z, %bb.y
  %.not.i.peel.i = icmp slt i64 %.sroa.7.1.peel.i, %i.al
  %or.cond176.peel.i = select i1 %.sroa.11.1.peel.i, i1 true, i1 %.not.i.peel.i
  br i1 %or.cond176.peel.i, label %.lr.ph215.preheader.i, label %.lr.ph.peel.next.i

.lr.ph.peel.next.i:                               ; preds = %bb.ac, %bb.bt
  %.sroa.7.0208.i = phi i64 [ %.sroa.7.1.i, %bb.bt ], [ %.sroa.7.1.peel.i, %bb.ac ] ; 4 uses
  %i.bk = add nsw i64 %.sroa.7.0208.i, -1         ; 8 uses
  %i.bl = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.bk, i64 %i.al)
  switch i8 %i.bl, label %.loopexit.i [
    i8 -1, label %.lr.ph215.preheader.i
    i8 0, label %bb.ae
    i8 1, label %bb.ad
  ]

.loopexit.i:                                      ; preds = %bb.q, %.lr.ph.peel.next.i
  unreachable

bb.ad:                                            ; preds = %.lr.ph.peel.next.i
  %i.bm = add i64 %.sroa.7.0208.i, -2
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.lr.ph.peel.next.i
  %.sroa.11.1.i = phi i1 [ true, %.lr.ph.peel.next.i ], [ false, %bb.ad ]
  %.sroa.7.1.i = phi i64 [ %i.bk, %.lr.ph.peel.next.i ], [ %i.bm, %bb.ad ] ; 2 uses
  %i.bn = icmp eq i64 %i.bk, %i.al
  br i1 %i.bn, label %._crit_edge306.i, label %bb.bi

._crit_edge306.i:                                 ; preds = %bb.ae
  %.pre320.i = add i64 %.sroa.7.0208.i, %i.l
  br label %bb.bj

.lr.ph215.preheader.i:                            ; preds = %bb.bt, %.lr.ph.peel.next.i, %bb.ac
  switch i8 %i.am, label %.loopexit276.i [
    i8 -1, label %._crit_edge216.i
    i8 0, label %bb.ag
    i8 1, label %bb.af
  ]

bb.af:                                            ; preds = %.lr.ph215.preheader.i
  %i.bo = add nsw i64 %.sroa.047.0219.i, -1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.lr.ph215.preheader.i
  %.sroa.7160.1.peel.i = phi i64 [ %.sroa.047.0219.i, %.lr.ph215.preheader.i ], [ %i.bo, %bb.af ] ; 2 uses
  %.sroa.12.1.peel.i = phi i1 [ true, %.lr.ph215.preheader.i ], [ false, %bb.af ]
  br i1 %i.ao, label %._crit_edge311.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.pre316.i = add i64 %.sroa.047.0219.i, %i.ai   ; 3 uses
  %i.bp = icmp ult i64 %.pre316.i, %i.x
  br i1 %i.bp, label %bb.ai, label %.loopexit279.i

bb.ai:                                            ; preds = %bb.ah
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.pre316.i
  %i.br = load i64, ptr %i.bq, align 8, !noalias !177, !noundef !3
  %i.bs = add i64 %i.br, 1
  br label %bb.aj

._crit_edge311.i:                                 ; preds = %bb.ag
  %i.bt = load i64, ptr %i.ab, align 8, !noalias !177, !noundef !3
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge311.i, %bb.ai
  %.sroa.014.0.peel.i = phi i64 [ %i.bt, %._crit_edge311.i ], [ %i.bs, %bb.ai ] ; 5 uses
  %i.bu = sub i64 %.sroa.014.0.peel.i, %.sroa.047.0219.i ; 4 uses
  %i.bv = icmp ult i64 %.sroa.014.0.peel.i, %i.g
  %i.bw = icmp ult i64 %i.bu, %.sroa.037.0.i
  %or.cond.peel.i = and i1 %i.bv, %i.bw
  br i1 %or.cond.peel.i, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.bx = sub nuw i64 %i.e, %.sroa.014.0.peel.i
  %i.by = sub i64 %11, %i.bu
  %i.bz = tail call noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_suffix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemSReEEB13_ECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.bx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %i.by), !noalias !177 ; 2 uses
  %i.ca = add i64 %i.bz, %.sroa.014.0.peel.i
  %i.cb = add i64 %i.bz, %i.bu
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.sroa.020.0.peel.i = phi i64 [ %i.cb, %bb.ak ], [ %i.bu, %bb.aj ]
  %.sroa.014.1.peel.i = phi i64 [ %i.ca, %bb.ak ], [ %.sroa.014.0.peel.i, %bb.aj ] ; 3 uses
  %i.cc = add i64 %.sroa.047.0219.i, %i.u         ; 3 uses
  %i.cd = icmp ult i64 %i.cc, %i.x
  br i1 %i.cd, label %bb.am, label %.loopexit281.i

bb.am:                                            ; preds = %bb.al
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.cc
  store i64 %.sroa.014.1.peel.i, ptr %i.ce, align 8, !noalias !177
  br i1 %.not.i, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.cf = sub i64 %.sroa.047.0219.i, %i.i         ; 2 uses
  %.sroa.024.0.peel.i = tail call i64 @llvm.abs.i64(i64 %i.cf, i1 false)
  %.not129.peel.i = icmp sgt i64 %.sroa.024.0.peel.i, %.sroa.047.0219.i
  br i1 %.not129.peel.i, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cg = sub i64 %i.l, %i.cf                     ; 3 uses
  %i.ch = icmp ult i64 %i.cg, %i.o
  br i1 %i.ch, label %bb.ap, label %.loopexit282.i

bb.ap:                                            ; preds = %bb.ao
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.cg
  %i.cj = load i64, ptr %i.ci, align 8, !noalias !177, !noundef !3
  %i.ck = add i64 %i.cj, %.sroa.014.1.peel.i
  %.not130.peel.i = icmp ult i64 %i.ck, %i.g
  br i1 %.not130.peel.i, label %bb.aq, label %.loopexit283.i

bb.aq:                                            ; preds = %bb.ap, %bb.an, %bb.am
  %.not.i134.peel.i = icmp slt i64 %.sroa.7160.1.peel.i, %i.al
  %or.cond177.peel.i = select i1 %.sroa.12.1.peel.i, i1 true, i1 %.not.i134.peel.i
  br i1 %or.cond177.peel.i, label %._crit_edge216.i, label %.lr.ph215.peel.next.i

.lr.ph215.peel.next.i:                            ; preds = %bb.aq, %bb.bf
  %.sroa.7160.0212.i = phi i64 [ %.sroa.7160.1.i, %bb.bf ], [ %.sroa.7160.1.peel.i, %bb.aq ] ; 4 uses
  %i.cl = add nsw i64 %.sroa.7160.0212.i, -1      ; 8 uses
  %i.cm = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.cl, i64 %i.al)
  switch i8 %i.cm, label %.loopexit276.i [
    i8 -1, label %._crit_edge216.i
    i8 0, label %bb.as
    i8 1, label %bb.ar
  ]

.loopexit276.i:                                   ; preds = %.lr.ph215.preheader.i, %.lr.ph215.peel.next.i
  unreachable

bb.ar:                                            ; preds = %.lr.ph215.peel.next.i
  %i.cn = add i64 %.sroa.7160.0212.i, -2
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.lr.ph215.peel.next.i
  %.sroa.7160.1.i = phi i64 [ %i.cl, %.lr.ph215.peel.next.i ], [ %i.cn, %bb.ar ] ; 2 uses
  %.sroa.12.1.i = phi i1 [ true, %.lr.ph215.peel.next.i ], [ false, %bb.ar ]
  %i.co = icmp eq i64 %i.cl, %i.al
  br i1 %i.co, label %._crit_edge310.i, label %bb.at

._crit_edge310.i:                                 ; preds = %bb.as
  %.pre312.i = add i64 %.sroa.7160.0212.i, %i.u
  br label %bb.au

._crit_edge216.i:                                 ; preds = %bb.bf, %.lr.ph215.peel.next.i, %bb.q, %bb.aq, %.lr.ph215.preheader.i
  %exitcond.not.i = icmp eq i64 %.sroa.047.0219.i, %i.ae
  br i1 %exitcond.not.i, label %_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers17find_middle_snakeINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemSReEEB13_ECsl6EuCK7xub1_5insta.exit, label %bb.p

bb.at:                                            ; preds = %bb.as
  %.not128.i = icmp eq i64 %i.cl, %.sroa.047.0219.i
  %.pre314.i = add i64 %i.cl, %i.ai               ; 6 uses
  br i1 %.not128.i, label %._crit_edge309.i, label %bb.av

bb.au:                                            ; preds = %bb.ax, %._crit_edge310.i
  %.pre-phi313.i = phi i64 [ %.pre312.i, %._crit_edge310.i ], [ %i.cs, %bb.ax ] ; 3 uses
  %i.cp = icmp ult i64 %.pre-phi313.i, %i.x
  br i1 %i.cp, label %bb.ba, label %.loopexit280.i

._crit_edge309.i:                                 ; preds = %bb.ax, %bb.at
  %i.cq = icmp ult i64 %.pre314.i, %i.x
  br i1 %i.cq, label %bb.ay, label %.loopexit279.i

bb.av:                                            ; preds = %bb.at
  %i.cr = icmp ult i64 %.pre314.i, %i.x
  br i1 %i.cr, label %bb.aw, label %.loopexit277.i

bb.aw:                                            ; preds = %bb.av
  %i.cs = add i64 %.sroa.7160.0212.i, %i.u        ; 4 uses
  %i.ct = icmp ult i64 %i.cs, %i.x
  br i1 %i.ct, label %bb.ax, label %.loopexit278.i

.loopexit277.i:                                   ; preds = %bb.av
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre314.i, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #16, !noalias !177
  unreachable

bb.ax:                                            ; preds = %bb.aw
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.pre314.i
  %i.cv = load i64, ptr %i.cu, align 8, !noalias !177, !noundef !3
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.cs
  %i.cx = load i64, ptr %i.cw, align 8, !noalias !177, !noundef !3
  %i.cy = icmp ult i64 %i.cv, %i.cx
  br i1 %i.cy, label %bb.au, label %._crit_edge309.i

.loopexit278.i:                                   ; preds = %bb.aw
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.cs, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #16, !noalias !177
  unreachable

bb.ay:                                            ; preds = %._crit_edge309.i
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.pre314.i
  %i.da = load i64, ptr %i.cz, align 8, !noalias !177, !noundef !3
  %i.db = add i64 %i.da, 1
  br label %bb.az

.loopexit279.i:                                   ; preds = %bb.ah, %._crit_edge309.i
  %.lcssa240.i = phi i64 [ %.pre314.i, %._crit_edge309.i ], [ %.pre316.i, %bb.ah ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa240.i, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #16, !noalias !177
  unreachable

bb.az:                                            ; preds = %bb.ba, %bb.ay
  %.sroa.014.0.i = phi i64 [ %i.dg, %bb.ba ], [ %i.db, %bb.ay ] ; 5 uses
  %i.dc = sub i64 %.sroa.014.0.i, %i.cl           ; 4 uses
  %i.dd = icmp ult i64 %.sroa.014.0.i, %i.g
  %i.de = icmp ult i64 %i.dc, %.sroa.037.0.i
  %or.cond.i = and i1 %i.dd, %i.de
  br i1 %or.cond.i, label %bb.bc, label %bb.bb

bb.ba:                                            ; preds = %bb.au
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.pre-phi313.i
  %i.dg = load i64, ptr %i.df, align 8, !noalias !177, !noundef !3
  br label %bb.az

.loopexit280.i:                                   ; preds = %bb.au
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi313.i, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #16, !noalias !177
  unreachable

bb.bb:                                            ; preds = %bb.bc, %bb.az
  %.sroa.020.0.i = phi i64 [ %i.dn, %bb.bc ], [ %i.dc, %bb.az ]
  %.sroa.014.1.i = phi i64 [ %i.dm, %bb.bc ], [ %.sroa.014.0.i, %bb.az ] ; 3 uses
  %i.dh = add i64 %i.cl, %i.u                     ; 3 uses
  %i.di = icmp ult i64 %i.dh, %i.x
  br i1 %i.di, label %bb.bd, label %.loopexit281.i

bb.bc:                                            ; preds = %bb.az
  %i.dj = sub nuw i64 %i.e, %.sroa.014.0.i
  %i.dk = sub i64 %11, %i.dc
  %i.dl = tail call noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_suffix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemSReEEB13_ECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.dj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %i.dk), !noalias !177 ; 2 uses
  %i.dm = add i64 %i.dl, %.sroa.014.0.i
  %i.dn = add i64 %i.dl, %i.dc
  br label %bb.bb

bb.bd:                                            ; preds = %bb.bb
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.dh
  store i64 %.sroa.014.1.i, ptr %i.do, align 8, !noalias !177
  br i1 %.not.i, label %bb.be, label %bb.bf

.loopexit281.i:                                   ; preds = %bb.al, %bb.bb
  %.lcssa242.i = phi i64 [ %i.dh, %bb.bb ], [ %i.cc, %bb.al ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa242.i, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #16, !noalias !177
  unreachable

bb.be:                                            ; preds = %bb.bd
  %i.dp = sub i64 %i.cl, %i.i                     ; 2 uses
  %.sroa.024.0.i = tail call i64 @llvm.abs.i64(i64 %i.dp, i1 false)
  %.not129.i = icmp sgt i64 %.sroa.024.0.i, %.sroa.047.0219.i
  br i1 %.not129.i, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.bh, %bb.be, %bb.bd
  %.not.i134.i = icmp slt i64 %.sroa.7160.1.i, %i.al
  %or.cond177.i = or i1 %.sroa.12.1.i, %.not.i134.i
  br i1 %or.cond177.i, label %._crit_edge216.i, label %.lr.ph215.peel.next.i, !llvm.loop !172

bb.bg:                                            ; preds = %bb.be
  %i.dq = sub i64 %i.l, %i.dp                     ; 3 uses
  %i.dr = icmp ult i64 %i.dq, %i.o
  br i1 %i.dr, label %bb.bh, label %.loopexit282.i

bb.bh:                                            ; preds = %bb.bg
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.dq
  %i.dt = load i64, ptr %i.ds, align 8, !noalias !177, !noundef !3
  %i.du = add i64 %i.dt, %.sroa.014.1.i
  %.not130.i = icmp ult i64 %i.du, %i.g
  br i1 %.not130.i, label %bb.bf, label %.loopexit283.i

.loopexit282.i:                                   ; preds = %bb.ao, %bb.bg
  %.lcssa249.i = phi i64 [ %i.dq, %bb.bg ], [ %i.cg, %bb.ao ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa249.i, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #16, !noalias !177
  unreachable

.loopexit283.i:                                   ; preds = %bb.ap, %bb.bh
  %.sroa.020.0.lcssa248.i = phi i64 [ %.sroa.020.0.i, %bb.bh ], [ %.sroa.020.0.peel.i, %bb.ap ]
  %.sroa.014.1.lcssa246.i = phi i64 [ %.sroa.014.1.i, %bb.bh ], [ %.sroa.014.1.peel.i, %bb.ap ]
  %i.dv = sub i64 %i.e, %.sroa.014.1.lcssa246.i
  %i.dw = sub i64 %11, %.sroa.020.0.lcssa248.i
  br label %bb.bx

bb.bi:                                            ; preds = %bb.ae
  %.not131.i = icmp eq i64 %i.bk, %.sroa.047.0219.i
  %.pre322.i = add i64 %i.bk, %i.ah               ; 6 uses
  br i1 %.not131.i, label %._crit_edge305.i, label %bb.bk

bb.bj:                                            ; preds = %bb.bm, %._crit_edge306.i
  %.pre-phi321.i = phi i64 [ %.pre320.i, %._crit_edge306.i ], [ %i.ea, %bb.bm ] ; 3 uses
  %i.dx = icmp ult i64 %.pre-phi321.i, %i.o
  br i1 %i.dx, label %bb.bp, label %.loopexit255.i

._crit_edge305.i:                                 ; preds = %bb.bm, %bb.bi
  %i.dy = icmp ult i64 %.pre322.i, %i.o
  br i1 %i.dy, label %bb.bn, label %.loopexit254.i

bb.bk:                                            ; preds = %bb.bi
  %i.dz = icmp ult i64 %.pre322.i, %i.o
  br i1 %i.dz, label %bb.bl, label %.loopexit252.i

bb.bl:                                            ; preds = %bb.bk
  %i.ea = add i64 %.sroa.7.0208.i, %i.l           ; 4 uses
  %i.eb = icmp ult i64 %i.ea, %i.o
  br i1 %i.eb, label %bb.bm, label %.loopexit253.i

.loopexit252.i:                                   ; preds = %bb.bk
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre322.i, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #16, !noalias !177
  unreachable

bb.bm:                                            ; preds = %bb.bl
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.pre322.i
  %i.ed = load i64, ptr %i.ec, align 8, !noalias !177, !noundef !3
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ea
  %i.ef = load i64, ptr %i.ee, align 8, !noalias !177, !noundef !3
  %i.eg = icmp ult i64 %i.ed, %i.ef
  br i1 %i.eg, label %bb.bj, label %._crit_edge305.i

.loopexit253.i:                                   ; preds = %bb.bl
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ea, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #16, !noalias !177
  unreachable

bb.bn:                                            ; preds = %._crit_edge305.i
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.pre322.i
  %i.ei = load i64, ptr %i.eh, align 8, !noalias !177, !noundef !3
  %i.ej = add i64 %i.ei, 1
  br label %bb.bo

.loopexit254.i:                                   ; preds = %bb.t, %._crit_edge305.i
  %.lcssa225.i = phi i64 [ %.pre322.i, %._crit_edge305.i ], [ %.pre324.i, %bb.t ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa225.i, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #16, !noalias !177
  unreachable

bb.bo:                                            ; preds = %bb.bp, %bb.bn
  %.sroa.04.0.i = phi i64 [ %i.eo, %bb.bp ], [ %i.ej, %bb.bn ] ; 6 uses
  %i.ek = sub i64 %.sroa.04.0.i, %i.bk            ; 3 uses
  %i.el = icmp ult i64 %.sroa.04.0.i, %i.g
  %i.em = icmp ult i64 %i.ek, %i.h
  %or.cond175.i = and i1 %i.el, %i.em
  br i1 %or.cond175.i, label %bb.br, label %bb.bq

bb.bp:                                            ; preds = %bb.bj
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.pre-phi321.i
  %i.eo = load i64, ptr %i.en, align 8, !noalias !177, !noundef !3
  br label %bb.bo

.loopexit255.i:                                   ; preds = %bb.bj
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi321.i, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #16, !noalias !177
  unreachable

bb.bq:                                            ; preds = %bb.br, %bb.bo
  %.sroa.04.1.i = phi i64 [ %i.eu, %bb.br ], [ %.sroa.04.0.i, %bb.bo ] ; 2 uses
  %i.ep = add i64 %i.bk, %i.l                     ; 3 uses
  %i.eq = icmp ult i64 %i.ep, %i.o
  br i1 %i.eq, label %bb.bs, label %.loopexit256.i

bb.br:                                            ; preds = %bb.bo
  %i.er = add i64 %.sroa.04.0.i, %i.b
  %i.es = add i64 %i.ek, %i.c
  %i.et = tail call noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemSReEEB13_ECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.er, i64 noundef %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.es, i64 noundef %i.f), !noalias !177
  %i.eu = add i64 %i.et, %.sroa.04.0.i
  br label %bb.bq

bb.bs:                                            ; preds = %bb.bq
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ep
  store i64 %.sroa.04.1.i, ptr %i.ev, align 8, !noalias !177
  br i1 %.not.i, label %bb.bt, label %bb.bu

.loopexit256.i:                                   ; preds = %bb.x, %bb.bq
  %.lcssa232.i = phi i64 [ %i.ep, %bb.bq ], [ %i.bb, %bb.x ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa232.i, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #16, !noalias !177
  unreachable

bb.bt:                                            ; preds = %bb.bw, %bb.bu, %bb.bs
  %.not.i.i = icmp slt i64 %.sroa.7.1.i, %i.al
  %or.cond176.i = or i1 %.sroa.11.1.i, %.not.i.i
  br i1 %or.cond176.i, label %.lr.ph215.preheader.i, label %.lr.ph.peel.next.i, !llvm.loop !173

bb.bu:                                            ; preds = %bb.bs
  %i.ew = sub i64 %i.bk, %i.i                     ; 2 uses
  %.sroa.010.0.i = tail call i64 @llvm.abs.i64(i64 %i.ew, i1 false)
  %.not132.not.i = icmp slt i64 %.sroa.010.0.i, %.sroa.047.0219.i
  br i1 %.not132.not.i, label %bb.bv, label %bb.bt

bb.bv:                                            ; preds = %bb.bu
  %i.ex = sub i64 %i.u, %i.ew                     ; 3 uses
  %i.ey = icmp ult i64 %i.ex, %i.x
  br i1 %i.ey, label %bb.bw, label %.loopexit257.i

bb.bw:                                            ; preds = %bb.bv
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ex
  %i.fa = load i64, ptr %i.ez, align 8, !noalias !177, !noundef !3
  %i.fb = add i64 %i.fa, %.sroa.04.1.i
  %.not133.i = icmp ult i64 %i.fb, %i.g
  br i1 %.not133.i, label %bb.bt, label %.loopexit258.i

.loopexit257.i:                                   ; preds = %bb.aa, %bb.bv
  %.lcssa235.i = phi i64 [ %i.ex, %bb.bv ], [ %i.bf, %bb.aa ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa235.i, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #16, !noalias !177
  unreachable

.loopexit258.i:                                   ; preds = %bb.ab, %bb.bw
  %.sroa.04.0.lcssa231.i = phi i64 [ %.sroa.04.0.i, %bb.bw ], [ %.sroa.04.0.peel.i, %bb.ab ]
  %.lcssa229.i = phi i64 [ %i.ek, %bb.bw ], [ %i.au, %bb.ab ]
  %i.fc = add i64 %.sroa.04.0.lcssa231.i, %i.b
  %i.fd = add i64 %.lcssa229.i, %i.c
  br label %bb.bx

bb.bx:                                            ; preds = %.loopexit258.i, %.loopexit283.i
  %.sroa.6.0.ph = phi i64 [ %i.fd, %.loopexit258.i ], [ %i.dw, %.loopexit283.i ] ; 2 uses
  %.sroa.4.0.ph = phi i64 [ %i.fc, %.loopexit258.i ], [ %i.dv, %.loopexit283.i ] ; 2 uses
  tail call fastcc void @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers7conquerINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemSReEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1O_B1O_INtNtB4_7compact7CompactB1O_B1O_IB1X_NtNtB4_7capture7CaptureEEEEECsl6EuCK7xub1_5insta(ptr noalias noundef align 8 dereferenceable(216) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %.sroa.4.0.ph, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %.sroa.6.0.ph, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  tail call fastcc void @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers7conquerINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemSReEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1O_B1O_INtNtB4_7compact7CompactB1O_B1O_IB1X_NtNtB4_7capture7CaptureEEEEECsl6EuCK7xub1_5insta(ptr noalias noundef align 8 dereferenceable(216) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %.sroa.4.0.ph, i64 noundef %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %.sroa.6.0.ph, i64 noundef %i.f, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  br label %bb.e

_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers17find_middle_snakeINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemSReEEB13_ECsl6EuCK7xub1_5insta.exit: ; preds = %._crit_edge216.i, %bb.p
  tail call void @_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceSReB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(216) %0, i64 noundef %i.b, i64 noundef %i.g, i64 noundef %i.c)
  tail call void @_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceSReB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6insertCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(216) %0, i64 noundef %i.b, i64 noundef %i.c, i64 noundef %i.h)
  br label %bb.e

bb.by:                                            ; preds = %bb.f
  %i.fe = sub nuw i64 %i.f, %i.c
  tail call void @_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceSReB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6insertCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(216) %0, i64 noundef %i.b, i64 noundef %i.c, i64 noundef %i.fe)
  br label %bb.e

bb.bz:                                            ; preds = %bb.e
  tail call void @_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceSReB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook5equalCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(216) %0, i64 noundef %i.e, i64 noundef %i.f, i64 noundef %i.d)
  br label %bb.ca

bb.ca:                                            ; preds = %bb.e, %bb.bz
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers7conquerINtNtNtB6_4text6inline11MultiLookupeEBS_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = tail call noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_prefix_lenINtNtNtB6_4text6inline11MultiLookupeEB13_ECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %4, i64 noundef %5, i64 noundef %6) ; 4 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit, %bb.a
  %i.c = add i64 %i.b, %2                         ; 10 uses
  %i.d = add i64 %i.b, %5                         ; 10 uses
  %i.e = tail call noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_suffix_lenINtNtNtB6_4text6inline11MultiLookupeEB13_ECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i64 noundef %i.c, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %4, i64 noundef %i.d, i64 noundef %6) ; 4 uses
  %i.f = sub i64 %3, %i.e                         ; 6 uses
  %i.g = sub i64 %6, %i.e                         ; 6 uses
  %.not16 = icmp ult i64 %i.c, %i.f               ; 2 uses
  %.not17 = icmp ult i64 %i.d, %i.g               ; 2 uses
  %or.cond = or i1 %.not16, %.not17
  br i1 %or.cond, label %bb.e, label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !234)
  %i.h = load ptr, ptr %0, align 8, !alias.scope !235, !nonnull !3, !align !6, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !236, !noalias !235, !nonnull !3, !align !6, !noundef !3 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 120 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 136 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !237, !noalias !238, !noundef !3 ; 3 uses
  %i.m = load i64, ptr %i.j, align 8, !range !7, !alias.scope !237, !noalias !238, !noundef !3
  %i.n = icmp eq i64 %i.l, %i.m
  br i1 %i.n, label %bb.d, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j), !noalias !238
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit: ; preds = %bb.c, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !237, !noalias !238, !nonnull !3, !noundef !3
  %i.q = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.l ; 4 uses
  store i64 0, ptr %i.q, align 8, !noalias !239
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !239
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %5, ptr %.sroa.547.0..sroa_idx, align 8, !noalias !239
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 %i.b, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !239
  %i.r = add i64 %i.l, 1
end_hunk_0
