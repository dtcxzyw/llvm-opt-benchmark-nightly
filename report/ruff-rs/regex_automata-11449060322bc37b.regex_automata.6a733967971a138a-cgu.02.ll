Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/regex_automata-11449060322bc37b.regex_automata.6a733967971a138a-cgu.02?download=true
inline.NumInlined: 419
inline.NumDeleted: 201
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMs6_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_3DFARSmE20from_bytes_unchecked:bb.a
  store i64 2, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5118.sroa.7)
  br label %bb.ba

bb.aq:                                            ; preds = %bb.an
  %.sroa.4242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.4242.0.copyload = load i64, ptr %.sroa.4242.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.3, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.5118.sroa.7, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5118.sroa.7)
  %i.dc = add i64 %.sroa.4242.0.copyload, %i.cu   ; 5 uses
  %i.dd = and i64 %.sroa.5232.sroa.4.0.copyload, 63 ; 2 uses
  %i.de = lshr i64 %.sroa.0378.0.copyload, %i.dd
  %i.df = zext i32 %.sroa.0391.0.copyload to i64
  %i.dg = lshr i64 %i.df, %i.dd
  %.not.i = icmp samesign ult i64 %i.dg, %i.de
  br i1 %.not.i, label %bb.ar, label %_RNvMNtNtCs98D8VPWzHuM_14regex_automata3dfa7specialNtB2_7Special18validate_state_len.exit

_RNvMNtNtCs98D8VPWzHuM_14regex_automata3dfa7specialNtB2_7Special18validate_state_len.exit: ; preds = %bb.aq
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.dh, align 8
  %.sroa.5365.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @21, ptr %.sroa.5365.0..sroa_idx, align 16
  %.sroa.6366.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 55, ptr %.sroa.6366.0..sroa_idx, align 8
  store i64 2, ptr %0, align 16
  br label %bb.ba

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.di = icmp ugt i64 %i.dc, %2
  br i1 %i.di, label %bb.at, label %bb.as, !prof !389

bb.as:                                            ; preds = %bb.ar
  %i.dj = sub nuw nsw i64 %2, %i.dc
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 %i.dc
  call void @_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata3dfa5accelINtB4_6AccelsRSmE20from_bytes_unchecked(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dk, i64 noundef %i.dj)
  %i.dl = load i32, ptr %i.b, align 8, !range !361, !noundef !7 ; 2 uses
  %.not303 = icmp eq i32 %i.dl, -1
  br i1 %.not303, label %bb.av, label %bb.au

bb.at:                                            ; preds = %bb.ar
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.dc, i64 noundef %2, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #18
  unreachable

bb.au:                                            ; preds = %bb.as
  %.sroa.4252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.4252.0.copyload = load i32, ptr %.sroa.4252.0..sroa_idx, align 4
  %.sroa.5253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5253.0.copyload = load ptr, ptr %.sroa.5253.0..sroa_idx, align 8
  %.sroa.6254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.5258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.6259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dn = load <2 x i64>, ptr %.sroa.6254.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i32 %i.dl, ptr %i.dm, align 8
  store i32 %.sroa.4252.0.copyload, ptr %.sroa.4257.0..sroa_idx, align 4
  store ptr %.sroa.5253.0.copyload, ptr %.sroa.5258.0..sroa_idx, align 16
  store <2 x i64> %i.dn, ptr %.sroa.6259.0..sroa_idx, align 8
  store i64 2, ptr %0, align 16
  br label %bb.ba

bb.av:                                            ; preds = %bb.as
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.0243.0.copyload = load ptr, ptr %i.do, align 8, !nonnull !7, !noundef !7
  %.sroa.4244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4244.0.copyload = load i64, ptr %.sroa.4244.0..sroa_idx, align 8
  %.sroa.5245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.5245.0.copyload = load i64, ptr %.sroa.5245.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.dp = add i64 %.sroa.5245.0.copyload, %i.dc   ; 5 uses
  %i.dq = icmp ugt i64 %i.dp, %2
  br i1 %i.dq, label %bb.ax, label %bb.aw, !prof !389

bb.aw:                                            ; preds = %bb.av
  %i.dr = sub nuw nsw i64 %2, %i.dp
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 %i.dp
  call void @_RNvMs9_NtNtCs98D8VPWzHuM_14regex_automata4util8alphabetNtB5_7ByteSet10from_bytes(ptr noalias noundef nonnull sret([64 x i8]) align 16 captures(none) dereferenceable(64) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ds, i64 noundef %i.dr)
  %i.dt = load i64, ptr %i.a, align 16, !range !445, !noundef !7
  %i.du = trunc nuw i64 %i.dt to i1
  br i1 %i.du, label %bb.ay, label %bb.az

bb.ax:                                            ; preds = %bb.av
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.dp, i64 noundef %2, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #18
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.dv = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dw, ptr noundef nonnull align 8 dereferenceable(32) %i.dv, i64 32, i1 false)
  store i64 2, ptr %0, align 16
  br label %bb.ba

bb.az:                                            ; preds = %bb.aw
  %i.dx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.4262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.4262.0.copyload = load i64, ptr %.sroa.4262.0..sroa_idx, align 16
  %.sroa.0146.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.0146.sroa.9.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(32) %i.dx, i64 32, i1 false)
  %i.dy = add i64 %.sroa.4262.0.copyload, %i.dp
  %.sroa.0146.sroa.10.sroa.4.sroa.4.0..sroa.0146.sroa.10.sroa.4.0..sroa.0146.sroa.10.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.0146.sroa.10.sroa.4.sroa.4.0..sroa.0146.sroa.10.sroa.4.0..sroa.0146.sroa.10.0..sroa_idx.sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3267.sroa.3, i64 24, i1 false)
  %.sroa.0146.sroa.10.sroa.5.0..sroa.0146.sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %.sroa.0146.sroa.10.sroa.5.0..sroa.0146.sroa.10.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(232) %.sroa.4268, i64 232, i1 false)
  %.sroa.0146.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0146.sroa.0.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2, i64 32, i1 false)
  %.sroa.0146.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.0146.sroa.0.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.3272, i64 280, i1 false)
  %.sroa.0146.sroa.11.sroa.4.0..sroa.0146.sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 720
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.0146.sroa.11.sroa.4.0..sroa.0146.sroa.11.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2274, i64 32, i1 false)
  %.sroa.0146.sroa.8.sroa.4.0..sroa.0146.sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 372
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.0146.sroa.8.sroa.4.0..sroa.0146.sroa.8.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.3, i64 28, i1 false)
  store i64 %i.ci, ptr %0, align 16
  %.sroa.0146.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i8 2, ptr %.sroa.0146.sroa.4.0..sroa_idx, align 8
  %.sroa.0146.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 352
  store ptr %.sroa.0243.0.copyload, ptr %.sroa.0146.sroa.6.0..sroa_idx, align 16
  %.sroa.0146.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i64 %.sroa.4244.0.copyload, ptr %.sroa.0146.sroa.7.0..sroa_idx, align 8
  %.sroa.0146.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i32 %.sroa.0391.0.copyload, ptr %.sroa.0146.sroa.8.0..sroa_idx, align 16
  %.sroa.0146.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 432
  store ptr %i.ca, ptr %.sroa.0146.sroa.10.0..sroa_idx, align 16
  %.sroa.0146.sroa.10.sroa.4.0..sroa.0146.sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 440
  store i64 %.sroa.0378.0.copyload, ptr %.sroa.0146.sroa.10.sroa.4.0..sroa.0146.sroa.10.0..sroa_idx.sroa_idx, align 8
  %.sroa.0146.sroa.10.sroa.6.0..sroa.0146.sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 704
  store i64 %.sroa.5232.sroa.4.0.copyload, ptr %.sroa.0146.sroa.10.sroa.6.0..sroa.0146.sroa.10.0..sroa_idx.sroa_idx, align 16
  %.sroa.0146.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 712
  store ptr %i.cq, ptr %.sroa.0146.sroa.11.0..sroa_idx, align 8
  %.sroa.0146.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 752
  store i24 %.sroa.686.sroa.5.4.extract.trunc, ptr %.sroa.0146.sroa.12.0..sroa_idx, align 16
  %.sroa.4147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 768
  store i64 %i.dy, ptr %.sroa.4147.0..sroa_idx, align 16
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ah, %bb.ap, %bb.al, %bb.ay, %bb.au, %_RNvMNtNtCs98D8VPWzHuM_14regex_automata3dfa7specialNtB2_7Special18validate_state_len.exit, %_RINvNtNtCs98D8VPWzHuM_14regex_automata4util4wire15check_alignmentNtNtB4_10primitives7StateIDEB6_.exit, %bb.j, %bb.n, %bb.r, %bb.ad, %bb.z, %bb.v, %bb.az
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEE11swap_states(ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(800) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !446)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %1, ptr %i.d, align 4, !noalias !446
  store i32 %2, ptr %i.c, align 4, !noalias !446
  %i.e = zext i32 %1 to i64                       ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val1.i.i = load i64, ptr %i.f, align 16, !alias.scope !449, !noundef !7 ; 6 uses
  %i.g = icmp ugt i64 %.val1.i.i, %i.e
  br i1 %i.g, label %_RNvMse_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_15TransitionTableINtNtCscdodAO9FK5_5alloc3vec3VecmEE8is_validB9_.exit.i, label %_RNvMse_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_15TransitionTableINtNtCscdodAO9FK5_5alloc3vec3VecmEE8is_validB9_.exit.thread.i, !prof !418

_RNvMse_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_15TransitionTableINtNtCscdodAO9FK5_5alloc3vec3VecmEE8is_validB9_.exit.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !449, !noundef !7
  %i.j = and i64 %i.i, 63
  %notmask.i.i = shl nsw i64 -1, %i.j
  %i.k = xor i64 %notmask.i.i, -1                 ; 2 uses
  %i.l = and i64 %i.k, %i.e
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.b, label %_RNvMse_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_15TransitionTableINtNtCscdodAO9FK5_5alloc3vec3VecmEE8is_validB9_.exit.thread.i, !prof !419

_RNvMse_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_15TransitionTableINtNtCscdodAO9FK5_5alloc3vec3VecmEE8is_validB9_.exit.thread.i: ; preds = %_RNvMse_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_15TransitionTableINtNtCscdodAO9FK5_5alloc3vec3VecmEE8is_validB9_.exit.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !446
  store ptr %i.d, ptr %i.b, align 8, !noalias !446
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1s_NtNtCs98D8VPWzHuM_14regex_automata4util10primitivesNtB6_7StateIDNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !446
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @82, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #18, !noalias !446
  unreachable

bb.b:                                             ; preds = %_RNvMse_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_15TransitionTableINtNtCscdodAO9FK5_5alloc3vec3VecmEE8is_validB9_.exit.i
  %i.n = zext i32 %2 to i64                       ; 6 uses
  %i.o = icmp ugt i64 %.val1.i.i, %i.n
  %i.p = and i64 %i.k, %i.n
  %i.q = icmp eq i64 %i.p, 0
  %or.cond.i = and i1 %i.o, %i.q
  br i1 %or.cond.i, label %bb.c, label %_RNvMse_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_15TransitionTableINtNtCscdodAO9FK5_5alloc3vec3VecmEE8is_validB9_.exit19.thread.i, !prof !388

_RNvMse_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_15TransitionTableINtNtCscdodAO9FK5_5alloc3vec3VecmEE8is_validB9_.exit19.thread.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !446
  store ptr %i.c, ptr %i.a, align 8, !noalias !446
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1s_NtNtCs98D8VPWzHuM_14regex_automata4util10primitivesNtB6_7StateIDNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !446
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @84, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @85) #18, !noalias !446
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 375
  %i.s = load i8, ptr %i.r, align 1, !alias.scope !446, !noundef !7
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !446, !nonnull !7, !noundef !7 ; 8 uses
  %i.w = add nuw nsw i64 %i.t, 1                  ; 3 uses
  %3 = tail call i64 @llvm.usub.sat.i64(i64 %.val1.i.i, i64 %i.e) ; 3 uses
  %i.x = sub nuw i64 %.val1.i.i, %i.n             ; 3 uses
  %i.y = tail call i64 @llvm.umin.i64(i64 %3, i64 %i.x)
  %i.z = tail call i64 @llvm.umin.i64(i64 %i.y, i64 %i.w) ; 2 uses
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.z, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.c
  %i.ab = shl nuw nsw i64 %i.e, 2                 ; 2 uses
  %scevgep = getelementptr i8, ptr %i.v, i64 %i.ab
  %umin = tail call i64 @llvm.umin.i64(i64 %3, i64 %i.x)
  %umin24 = tail call i64 @llvm.umin.i64(i64 %umin, i64 %i.w)
  %i.ac = shl nuw nsw i64 %umin24, 2              ; 2 uses
  %i.ad = getelementptr i8, ptr %i.v, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 %i.ab
  %scevgep25.a = getelementptr i8, ptr %i.ae, i64 4
  %i.af = shl nuw nsw i64 %i.n, 2                 ; 2 uses
  %scevgep26.a = getelementptr i8, ptr %i.v, i64 %i.af
  %i.ag = getelementptr i8, ptr %i.v, i64 %i.ac
  %i.ah = getelementptr i8, ptr %i.ag, i64 %i.af
  %scevgep27 = getelementptr i8, ptr %i.ah, i64 4
  %bound0 = icmp ult ptr %scevgep, %scevgep27
  %bound1 = icmp ult ptr %scevgep26.a, %scevgep25.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ai = and i64 %i.aa, 3                        ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  %i.ak = select i1 %i.aj, i64 4, i64 %i.ai
  %n.vec = sub nsw i64 %i.aa, %i.ak               ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.v, i64 %i.e
  %invariant.gep39 = getelementptr [4 x i8], ptr %i.v, i64 %i.n
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %gep40 = getelementptr [4 x i8], ptr %invariant.gep39, i64 %index ; 2 uses
  %wide.load = load <4 x i32>, ptr %gep, align 4, !alias.scope !452, !noalias !455
  %wide.load28 = load <4 x i32>, ptr %gep40, align 4, !alias.scope !457, !noalias !446
  store <4 x i32> %wide.load28, ptr %gep, align 4, !alias.scope !452, !noalias !455
  store <4 x i32> %wide.load, ptr %gep40, align 4, !alias.scope !457, !noalias !446
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %scalar.ph.preheader, label %vector.body, !llvm.loop !458

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %bb.c
  %.sroa.09.025.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.c ], [ %n.vec, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.f
  %.sroa.09.025.i = phi i64 [ %i.am, %bb.f ], [ %.sroa.09.025.i.ph, %scalar.ph.preheader ] ; 6 uses
  %i.am = add nuw nsw i64 %.sroa.09.025.i, 1
  %i.an = add nuw nsw i64 %.sroa.09.025.i, %i.e   ; 2 uses
  %i.ao = add nuw nsw i64 %.sroa.09.025.i, %i.n   ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.09.025.i, %3
  br i1 %exitcond.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %scalar.ph
  %exitcond12.not = icmp eq i64 %.sroa.09.025.i, %i.x
  br i1 %exitcond12.not, label %bb.g, label %bb.f

bb.e:                                             ; preds = %scalar.ph
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.an, i64 noundef %.val1.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #18, !noalias !446
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.an ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.ao ; 2 uses
  %.sroa.011.0.copyload.i = load i32, ptr %i.ap, align 4, !noalias !446
  %i.ar = load i32, ptr %i.aq, align 4, !noalias !446
  store i32 %i.ar, ptr %i.ap, align 4, !noalias !446
  store i32 %.sroa.011.0.copyload.i, ptr %i.aq, align 4, !noalias !446
  %exitcond.not.i = icmp eq i64 %.sroa.09.025.i, %i.w
  br i1 %exitcond.not.i, label %_RNvMsd_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_15TransitionTableINtNtCscdodAO9FK5_5alloc3vec3VecmEE4swap.exit, label %scalar.ph, !llvm.loop !461

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ao, i64 noundef %.val1.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #18, !noalias !446
  unreachable

_RNvMsd_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_15TransitionTableINtNtCscdodAO9FK5_5alloc3vec3VecmEE4swap.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEE14set_transition(ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(800) %0, i32 noundef %1, i32 %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !462)
  %i.a = zext i32 %1 to i64                       ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val1.i.i = load i64, ptr %i.b, align 16, !alias.scope !465, !noundef !7 ; 4 uses
  %i.c = icmp ugt i64 %.val1.i.i, %i.a
  br i1 %i.c, label %_RNvMse_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_15TransitionTableINtNtCscdodAO9FK5_5alloc3vec3VecmEE8is_validB9_.exit.i, label %_RNvMse_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_15TransitionTableINtNtCscdodAO9FK5_5alloc3vec3VecmEE8is_validB9_.exit.thread.i, !prof !418

_RNvMse_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_15TransitionTableINtNtCscdodAO9FK5_5alloc3vec3VecmEE8is_validB9_.exit.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !465, !noundef !7
  %i.f = and i64 %i.e, 63
  %notmask.i.i = shl nsw i64 -1, %i.f
  %i.g = xor i64 %notmask.i.i, -1                 ; 2 uses
  %i.h = and i64 %i.g, %i.a
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %_RNvMse_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_15TransitionTableINtNtCscdodAO9FK5_5alloc3vec3VecmEE8is_validB9_.exit.thread.i, !prof !419

_RNvMse_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_15TransitionTableINtNtCscdodAO9FK5_5alloc3vec3VecmEE8is_validB9_.exit.thread.i: ; preds = %_RNvMse_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_15TransitionTableINtNtCscdodAO9FK5_5alloc3vec3VecmEE8is_validB9_.exit.i, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @77, ptr noundef nonnull inttoptr (i64 41 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #18, !noalias !462
  unreachable

bb.b:                                             ; preds = %_RNvMse_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_15TransitionTableINtNtCscdodAO9FK5_5alloc3vec3VecmEE8is_validB9_.exit.i
  %i.j = zext i32 %3 to i64                       ; 2 uses
  %i.k = icmp ugt i64 %.val1.i.i, %i.j
  %i.l = and i64 %i.g, %i.j
  %i.m = icmp eq i64 %i.l, 0
  %or.cond.i = and i1 %i.k, %i.m
  br i1 %or.cond.i, label %bb.c, label %_RNvMse_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_15TransitionTableINtNtCscdodAO9FK5_5alloc3vec3VecmEE8is_validB9_.exit9.thread.i, !prof !388

_RNvMse_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_15TransitionTableINtNtCscdodAO9FK5_5alloc3vec3VecmEE8is_validB9_.exit9.thread.i: ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @79, ptr noundef nonnull inttoptr (i64 37 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #18, !noalias !462
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.n = trunc i32 %2 to i1
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.5.0.extract.shift.i = lshr i32 %2, 16
  %.sroa.5.0.extract.trunc.i = zext nneg i32 %.sroa.5.0.extract.shift.i to i64
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.4.0.extract.shift.i = lshr i32 %2, 8
  %i.o = and i32 %.sroa.4.0.extract.shift.i, 255
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  %i.s = load i8, ptr %i.r, align 1, !alias.scope !462, !noundef !7
  %i.t = zext i8 %i.s to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.03.0.i = phi i64 [ %.sroa.5.0.extract.trunc.i, %bb.d ], [ %i.t, %bb.e ]
  %i.u = add nuw nsw i64 %.sroa.03.0.i, %i.a      ; 3 uses
  %i.v = icmp ult i64 %i.u, %.val1.i.i
  br i1 %i.v, label %_RNvMsd_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_15TransitionTableINtNtCscdodAO9FK5_5alloc3vec3VecmEE3set.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.u, i64 noundef %.val1.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #18, !noalias !462
  unreachable

_RNvMsd_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_15TransitionTableINtNtCscdodAO9FK5_5alloc3vec3VecmEE3set.exit: ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !462, !nonnull !7, !noundef !7
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.u
  store i32 %3, ptr %i.y, align 4, !noalias !462
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEE15add_empty_state(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) initializes((0, 8)) %0, ptr noalias noundef align 16 dereferenceable(800) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !471)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load i64, ptr %i.a, align 16, !alias.scope !471, !noalias !468, !noundef !7 ; 3 uses
  %i.c = icmp ult i64 %i.b, 2305843009213693952
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ugt i64 %i.b, 2147483646
  br i1 %i.d, label %_RNvMsd_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_15TransitionTableINtNtCscdodAO9FK5_5alloc3vec3VecmEE15add_empty_state.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.f = trunc nuw nsw i64 %i.b to i32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !471, !noalias !468, !noundef !7
  %i.i = and i64 %i.h, 63
  %i.j = shl nuw i64 1, %i.i
  tail call void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecmE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtNtB14_7sources6repeat6RepeatmEEECs98D8VPWzHuM_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(288) %i.e, i64 noundef %i.j, i32 noundef 0), !noalias !468
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.f, ptr %i.k, align 8, !alias.scope !468, !noalias !471
  br label %_RNvMsd_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_15TransitionTableINtNtCscdodAO9FK5_5alloc3vec3VecmEE15add_empty_state.exit

_RNvMsd_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_15TransitionTableINtNtCscdodAO9FK5_5alloc3vec3VecmEE15add_empty_state.exit: ; preds = %bb.a, %bb.b
  %storemerge.i = phi i64 [ -2, %bb.b ], [ -9223372036854775800, %bb.a ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !468, !noalias !471
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEE15set_pattern_map(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias noundef align 16 dereferenceable(800) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [72 x i8], align 8                ; 13 uses
  %i.c = alloca [56 x i8], align 8                ; 17 uses
  %i.d = alloca [56 x i8], align 8                ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 432
  %.val = load i64, ptr %i.f, align 16, !noundef !7 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !473)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !476)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !479
  tail call void @llvm.experimental.noalias.scope.decl(metadata !482)
  %i.g = icmp ult i64 %.val, 2147483648
  br i1 %i.g, label %_RNvMsm_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_11MatchStatesINtNtCscdodAO9FK5_5alloc3vec3VecmEE5empty.exit.i.i, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @139, i64 noundef 49, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @140) #18, !noalias !485
  unreachable

end_hunk_0
