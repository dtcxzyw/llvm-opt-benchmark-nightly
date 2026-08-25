Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_ptx-f695fb62d915b013.uu_ptx.c0c590d8fc0ebb31-cgu.0?download=true
inline.NumInlined: 1812
inline.NumDeleted: 1075
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx:bb.a
  br label %_RNvNtNtCs6JMX4GRUq9U_4core4hash3sip9u8to64_le.exit

_RNvNtNtCs6JMX4GRUq9U_4core4hash3sip9u8to64_le.exit: ; preds = %bb.f, %bb.g
  %.sroa.0.2.i = phi i64 [ %i.x, %bb.g ], [ %.sroa.0.1.i, %bb.f ]
  %i.y = shl i64 %i.e, 3
  %i.z = and i64 %i.y, 56
  %i.aa = shl i64 %.sroa.0.2.i, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !4
  %i.ad = or i64 %i.ac, %i.aa                     ; 3 uses
  store i64 %i.ad, ptr %i.ab, align 8
  %i.ae = icmp ult i64 %2, %i.g
  br i1 %i.ae, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.a, %bb.i
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.g, %bb.i ] ; 4 uses
  %i.af = sub nsw i64 %2, %.sroa.0.0              ; 2 uses
  %i.ag = and i64 %i.af, 7                        ; 4 uses
  %i.ah = and i64 %i.af, -8                       ; 2 uses
  %i.ai = icmp ult i64 %.sroa.0.0, %i.ah
  br i1 %i.ai, label %.lr.ph, label %bb.k

.lr.ph:                                           ; preds = %bb.h
  %.promoted = load i64, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted19 = load i64, ptr %i.aj, align 8
  %.promoted20 = load i64, ptr %i.ak, align 8, !alias.scope !4283
  %.promoted22 = load i64, ptr %i.al, align 8, !alias.scope !4283
  br label %bb.q

bb.i:                                             ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core4hash3sip9u8to64_le.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !noundef !4
  %i.ao = xor i64 %i.an, %i.ad                    ; 3 uses
  %i.ap = load i64, ptr %0, align 8, !alias.scope !4286, !noundef !4
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !4286, !noundef !4 ; 3 uses
  %i.as = add i64 %i.ar, %i.ap                    ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !4286, !noundef !4
  %i.av = add i64 %i.au, %i.ao                    ; 2 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 13)
  %i.ax = xor i64 %i.aw, %i.as                    ; 3 uses
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 16)
  %i.az = xor i64 %i.av, %i.ay                    ; 3 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 32)
  %i.bb = add i64 %i.av, %i.ax                    ; 3 uses
  %i.bc = add i64 %i.az, %i.ba                    ; 2 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 17)
  %i.be = xor i64 %i.bb, %i.bd
  store i64 %i.be, ptr %i.aq, align 8, !alias.scope !4286
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 21)
  %i.bg = xor i64 %i.bf, %i.bc
  store i64 %i.bg, ptr %i.am, align 8, !alias.scope !4286
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 32)
  store i64 %i.bh, ptr %i.at, align 8, !alias.scope !4286
  %i.bi = xor i64 %i.bc, %i.ad
  store i64 %i.bi, ptr %0, align 8
  br label %bb.h

bb.j:                                             ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core4hash3sip9u8to64_le.exit
  %i.bj = add i64 %i.e, %2
  br label %bb.r

._crit_edge:                                      ; preds = %bb.q
  store i64 %i.cy, ptr %i.aj, align 8
  store i64 %i.cw, ptr %i.ak, align 8, !alias.scope !4283
  store i64 %i.cz, ptr %i.al, align 8, !alias.scope !4283
  store i64 %i.da, ptr %0, align 8
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.h
  %.sroa.0.1.lcssa = phi i64 [ %i.db, %._crit_edge ], [ %.sroa.0.0, %bb.h ] ; 3 uses
  %i.bk = icmp samesign ugt i64 %i.ag, 3
  br i1 %i.bk, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1.lcssa
  %.sroa.014.0.copyload.i16 = load i32, ptr %i.bl, align 1, !alias.scope !4289
  %i.bm = zext i32 %.sroa.014.0.copyload.i16 to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.03.0.i10 = phi i64 [ 4, %bb.l ], [ 0, %bb.k ] ; 5 uses
  %.sroa.0.0.i11 = phi i64 [ %i.bm, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %i.bn = or disjoint i64 %.sroa.03.0.i10, 1
  %i.bo = icmp samesign ult i64 %i.bn, %i.ag
  br i1 %i.bo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bp = getelementptr i8, ptr %1, i64 %.sroa.0.1.lcssa
  %i.bq = getelementptr i8, ptr %i.bp, i64 %.sroa.03.0.i10
  %.sroa.015.0.copyload.i15 = load i16, ptr %i.bq, align 1, !alias.scope !4289
  %i.br = zext i16 %.sroa.015.0.copyload.i15 to i64
  %i.bs = shl nuw nsw i64 %.sroa.03.0.i10, 3
  %i.bt = shl nuw nsw i64 %i.br, %i.bs
  %i.bu = or i64 %i.bt, %.sroa.0.0.i11
  %i.bv = or disjoint i64 %.sroa.03.0.i10, 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.03.1.i12 = phi i64 [ %i.bv, %bb.n ], [ %.sroa.03.0.i10, %bb.m ] ; 3 uses
  %.sroa.0.1.i13 = phi i64 [ %i.bu, %bb.n ], [ %.sroa.0.0.i11, %bb.m ] ; 2 uses
  %i.bw = icmp samesign ult i64 %.sroa.03.1.i12, %i.ag
  br i1 %i.bw, label %bb.p, label %_RNvNtNtCs6JMX4GRUq9U_4core4hash3sip9u8to64_le.exit17

bb.p:                                             ; preds = %bb.o
  %i.bx = add i64 %.sroa.03.1.i12, %.sroa.0.1.lcssa ; 2 uses
  %i.by = icmp ult i64 %i.bx, %2
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %i.bx
  %i.ca = load i8, ptr %i.bz, align 1, !alias.scope !4289, !noundef !4
  %i.cb = zext i8 %i.ca to i64
  %i.cc = shl nuw nsw i64 %.sroa.03.1.i12, 3
  %i.cd = shl nuw nsw i64 %i.cb, %i.cc
  %i.ce = or i64 %i.cd, %.sroa.0.1.i13
  br label %_RNvNtNtCs6JMX4GRUq9U_4core4hash3sip9u8to64_le.exit17

_RNvNtNtCs6JMX4GRUq9U_4core4hash3sip9u8to64_le.exit17: ; preds = %bb.o, %bb.p
  %.sroa.0.2.i14 = phi i64 [ %i.ce, %bb.p ], [ %.sroa.0.1.i13, %bb.o ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.0.2.i14, ptr %i.cf, align 8
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph, %bb.q
  %i.cg = phi i64 [ %.promoted22, %.lr.ph ], [ %i.cz, %bb.q ]
  %i.ch = phi i64 [ %.promoted20, %.lr.ph ], [ %i.cw, %bb.q ] ; 3 uses
  %i.ci = phi i64 [ %.promoted19, %.lr.ph ], [ %i.cy, %bb.q ]
  %.sroa.0.118 = phi i64 [ %.sroa.0.0, %.lr.ph ], [ %i.db, %bb.q ] ; 2 uses
  %i.cj = phi i64 [ %.promoted, %.lr.ph ], [ %i.da, %bb.q ]
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.118
  %.sroa.07.0.copyload = load i64, ptr %i.ck, align 1 ; 2 uses
  %i.cl = xor i64 %i.ci, %.sroa.07.0.copyload     ; 3 uses
  %i.cm = add i64 %i.ch, %i.cj                    ; 3 uses
  %i.cn = add i64 %i.cg, %i.cl                    ; 2 uses
  %i.co = tail call noundef i64 @llvm.fshl.i64(i64 %i.ch, i64 %i.ch, i64 13)
  %i.cp = xor i64 %i.co, %i.cm                    ; 3 uses
  %i.cq = tail call noundef i64 @llvm.fshl.i64(i64 %i.cl, i64 %i.cl, i64 16)
  %i.cr = xor i64 %i.cn, %i.cq                    ; 3 uses
  %i.cs = tail call noundef i64 @llvm.fshl.i64(i64 %i.cm, i64 %i.cm, i64 32)
  %i.ct = add i64 %i.cn, %i.cp                    ; 3 uses
  %i.cu = add i64 %i.cr, %i.cs                    ; 2 uses
  %i.cv = tail call noundef i64 @llvm.fshl.i64(i64 %i.cp, i64 %i.cp, i64 17)
  %i.cw = xor i64 %i.ct, %i.cv                    ; 2 uses
  %i.cx = tail call noundef i64 @llvm.fshl.i64(i64 %i.cr, i64 %i.cr, i64 21)
  %i.cy = xor i64 %i.cx, %i.cu                    ; 2 uses
  %i.cz = tail call noundef i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.ct, i64 32) ; 2 uses
  %i.da = xor i64 %i.cu, %.sroa.07.0.copyload     ; 2 uses
  %i.db = add nuw i64 %.sroa.0.118, 8             ; 3 uses
  %i.dc = icmp ult i64 %i.db, %i.ah
  br i1 %i.dc, label %bb.q, label %._crit_edge

bb.r:                                             ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core4hash3sip9u8to64_le.exit17, %bb.j
  %storemerge = phi i64 [ %i.bj, %bb.j ], [ %i.ag, %_RNvNtNtCs6JMX4GRUq9U_4core4hash3sip9u8to64_le.exit17 ]
  store i64 %storemerge, ptr %i.d, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef ptr @_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB1q_10read_exactCsgy7pbN39oAf_6uu_ptx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4292)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !4292, !noalias !4295, !noundef !4 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !4292, !noalias !4295, !noundef !4 ; 2 uses
  %i.g = sub nuw i64 %i.f, %i.d
  %.not.i.not = icmp ugt i64 %2, %i.g
  br i1 %.not.i.not, label %.lr.ph.i, label %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB28_10read_exact0ECsgy7pbN39oAf_6uu_ptx.exit.thread

_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB28_10read_exact0ECsgy7pbN39oAf_6uu_ptx.exit.thread: ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !alias.scope !4292, !noalias !4295, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull readonly align 1 %i.i, i64 range(i64 0, -9223372036854775808) %2, i1 false), !alias.scope !4297, !noalias !4301
  %i.j = add i64 %i.d, %2
  store i64 %i.j, ptr %i.c, align 8, !alias.scope !4292, !noalias !4295
  br label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read18default_read_exactINtNtNtB4_8buffered9bufreader9BufReaderINtNtB6_5boxed3BoxDNtB2_4ReadEL_EEECsgy7pbN39oAf_6uu_ptx.exit

.lr.ph.i:                                         ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4306)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !4308, !noalias !4311 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val.i.i = load ptr, ptr %i.m, align 8, !alias.scope !4303, !noalias !4306, !nonnull !4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val8.i.i = load ptr, ptr %i.n, align 8, !alias.scope !4303, !noalias !4306, !nonnull !4, !align !24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val8.i.i, i64 24
  %.pre.i.i.i = load ptr, ptr %0, align 8, !alias.scope !4303, !noalias !4306 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val8.i.i, i64 72
  %i.u = icmp eq ptr %.pre.i.i.i, null
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.promoted.i = load i8, ptr %i.s, align 8, !alias.scope !4303, !noalias !4306
  br label %bb.b

bb.b:                                             ; preds = %bb.q, %.lr.ph.i
  %i.w = phi i64 [ %i.f, %.lr.ph.i ], [ %i.at, %bb.q ] ; 3 uses
  %i.x = phi i64 [ %i.d, %.lr.ph.i ], [ %i.au, %bb.q ] ; 3 uses
  %3 = phi i8 [ %.promoted.i, %.lr.ph.i ], [ %6, %bb.q ] ; 3 uses
  %.sroa.0.026.i = phi ptr [ %1, %.lr.ph.i ], [ %.sroa.0.118.i, %bb.q ] ; 5 uses
  %.sroa.7.025.i = phi i64 [ %2, %.lr.ph.i ], [ %.sroa.7.116.i, %bb.q ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4313)
  call void @llvm.experimental.noalias.scope.decl(metadata !4314)
  %i.y = icmp ne i64 %i.x, %i.w
  %.not.i.i = icmp ult i64 %.sroa.7.025.i, %i.l
  %or.cond.i.i = select i1 %i.y, i1 true, i1 %.not.i.i
  br i1 %or.cond.i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !4315)
  %.not.i.i.i = icmp ult i64 %i.x, %i.w
  br i1 %.not.i.i.i, label %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4318
  store ptr %.pre.i.i.i, ptr %i.b, align 8, !noalias !4318
  store i64 %i.l, ptr %i.p, align 8, !noalias !4318
  store i64 0, ptr %i.q, align 8, !noalias !4318
  store i8 %3, ptr %i.r, align 8, !noalias !4318
  %i.z = load ptr, ptr %i.t, align 8, !invariant.load !4, !noalias !4321, !nonnull !4
  %i.aa = call noundef ptr %i.z(ptr noundef nonnull %.val.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #29, !noalias !4326, !inline_history !4327 ; 2 uses
  store i64 0, ptr %i.c, align 8, !alias.scope !4328, !noalias !4329
  %i.ab = load i64, ptr %i.q, align 8, !noalias !4318, !noundef !4 ; 3 uses
  store i64 %i.ab, ptr %i.e, align 8, !alias.scope !4328, !noalias !4329
  %i.ac = load i8, ptr %i.r, align 8, !range !181, !noalias !4318, !noundef !4 ; 3 uses
  store i8 %i.ac, ptr %i.s, align 8, !alias.scope !4328, !noalias !4329
  %.not3.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not3.i.i.i, label %bb.e, label %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx.exit.thread.i.i

_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx.exit.thread.i.i: ; preds = %bb.d
  %i.ad = ptrtoint ptr %i.aa to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4318
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4318
  br label %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx.exit.i.i

_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx.exit.i.i: ; preds = %bb.e, %bb.c
  %i.ae = phi i64 [ %i.w, %bb.c ], [ %i.ab, %bb.e ] ; 4 uses
  %i.af = phi i64 [ %i.x, %bb.c ], [ 0, %bb.e ]   ; 4 uses
  %4 = phi i8 [ %3, %bb.c ], [ %i.ac, %bb.e ]     ; 2 uses
  %i.ag = sub nuw i64 %i.ae, %i.af                ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 %i.af ; 2 uses
  br i1 %i.u, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false), !alias.scope !4308, !noalias !4311
  %i.ai = load ptr, ptr %i.o, align 8, !invariant.load !4, !noalias !4330, !nonnull !4
  %i.aj = call { i64, ptr } %i.ai(ptr noundef nonnull %.val.i.i, ptr noalias nofree noundef nonnull %.sroa.0.026.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.7.025.i) #29, !noalias !4308, !inline_history !4333
  br label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB1q_4readCsgy7pbN39oAf_6uu_ptx.exit.i

bb.g:                                             ; preds = %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx.exit.i.i, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx.exit.thread.i.i
  %i.ak = phi i64 [ %i.ab, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx.exit.thread.i.i ], [ %i.ae, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx.exit.i.i ]
  %i.al = phi i64 [ 0, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx.exit.thread.i.i ], [ %i.af, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx.exit.i.i ]
  %5 = phi i8 [ %i.ac, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx.exit.thread.i.i ], [ %4, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx.exit.i.i ]
  %.sroa.610.013.i.i = phi i64 [ %i.ad, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx.exit.thread.i.i ], [ %i.ag, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx.exit.i.i ]
  %i.am = inttoptr i64 %.sroa.610.013.i.i to ptr
  %i.an = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.am, 1
  br label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB1q_4readCsgy7pbN39oAf_6uu_ptx.exit.i

bb.h:                                             ; preds = %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !4334)
  %..i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ag, i64 range(i64 0, -9223372036854775808) %.sroa.7.025.i) ; 4 uses
  %i.ao = icmp eq i64 %..i.i.i.i, 1
  br i1 %i.ao, label %bb.i, label %_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implhECsgy7pbN39oAf_6uu_ptx.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ap = load i8, ptr %i.ah, align 1, !noalias !4337, !noundef !4
  store i8 %i.ap, ptr %.sroa.0.026.i, align 1, !alias.scope !4339, !noalias !4340
  br label %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implhECsgy7pbN39oAf_6uu_ptx.exit.i.i.i: ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.026.i, ptr nonnull readonly align 1 %i.ah, i64 range(i64 0, -9223372036854775808) %..i.i.i.i, i1 false), !alias.scope !4341, !noalias !4345
  br label %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i.i

_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implhECsgy7pbN39oAf_6uu_ptx.exit.i.i.i, %bb.i
  %i.aq = inttoptr i64 %..i.i.i.i to ptr
  %i.ar = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.aq, 1
  %i.as = add i64 %..i.i.i.i, %i.af
  %..i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ae, i64 %i.as) ; 2 uses
  store i64 %..i.i.i, ptr %i.c, align 8, !alias.scope !4308, !noalias !4311
  br label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB1q_4readCsgy7pbN39oAf_6uu_ptx.exit.i

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB1q_4readCsgy7pbN39oAf_6uu_ptx.exit.i: ; preds = %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i.i, %bb.g, %bb.f
  %i.at = phi i64 [ 0, %bb.f ], [ %i.ak, %bb.g ], [ %i.ae, %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i.i ]
  %i.au = phi i64 [ 0, %bb.f ], [ %i.al, %bb.g ], [ %..i.i.i, %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i.i ]
  %6 = phi i8 [ %3, %bb.f ], [ %5, %bb.g ], [ %4, %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i.i ]
  %.merged.i.i = phi { i64, ptr } [ %i.aj, %bb.f ], [ %i.an, %bb.g ], [ %i.ar, %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i.i ] ; 2 uses
  %i.av = extractvalue { i64, ptr } %.merged.i.i, 0
  %i.aw = extractvalue { i64, ptr } %.merged.i.i, 1 ; 11 uses
  %i.ax = ptrtoint ptr %i.aw to i64               ; 8 uses
  %i.ay = trunc nuw i64 %i.av to i1
  br i1 %i.ay, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB1q_4readCsgy7pbN39oAf_6uu_ptx.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aw) ]
  %i.az = and i64 %i.ax, 3
  switch i64 %i.az, label %default.unreachable [
    i64 2, label %.split.i
    i64 3, label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i
    i64 0, label %.split13.i
    i64 1, label %.split12.i
  ], !prof !182

default.unreachable:                              ; preds = %bb.j
  unreachable

.split.i:                                         ; preds = %bb.j
  %i.ba = lshr i64 %i.ax, 32
  %i.bb = trunc nuw i64 %i.ba to i32
  %i.bc = call noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() #28, !noalias !4303
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !4303, !nonnull !4, !noundef !4
  %i.bf = call noundef zeroext i1 %i.be(i32 noundef %i.bb) #28, !noalias !4303, !inline_history !4347
  br i1 %i.bf, label %.thread.i, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read18default_read_exactINtNtNtB4_8buffered9bufreader9BufReaderINtNtB6_5boxed3BoxDNtB2_4ReadEL_EEECsgy7pbN39oAf_6uu_ptx.exit

.split13.i:                                       ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bh = load i8, ptr %i.bg, align 8, !range !466, !noalias !4303, !noundef !4
  %i.bi = icmp eq i8 %i.bh, 35
  br i1 %i.bi, label %.thread.i, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read18default_read_exactINtNtNtB4_8buffered9bufreader9BufReaderINtNtB6_5boxed3BoxDNtB2_4ReadEL_EEECsgy7pbN39oAf_6uu_ptx.exit

.split12.i:                                       ; preds = %bb.j
  %i.bj = getelementptr i8, ptr %i.aw, i64 31
  %i.bk = load i8, ptr %i.bj, align 8, !range !466, !noalias !4303, !noundef !4
  %i.bl = icmp eq i8 %i.bk, 35
  br i1 %i.bl, label %bb.p, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read18default_read_exactINtNtNtB4_8buffered9bufreader9BufReaderINtNtB6_5boxed3BoxDNtB2_4ReadEL_EEECsgy7pbN39oAf_6uu_ptx.exit

_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i: ; preds = %bb.j
  %i.bm = lshr i64 %i.ax, 32
  %i.bn = icmp ult ptr %i.aw, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i.i = trunc i64 %i.bm to i8
  %spec.select.i.i.i.i = select i1 %i.bn, i8 %switch.idx.cast.i.i.i.i, i8 -1 ; 2 uses
  %i.bo = icmp ne i8 %spec.select.i.i.i.i, -1
  call void @llvm.assume(i1 %i.bo)
  %i.bp = icmp eq i8 %spec.select.i.i.i.i, 35
  br i1 %i.bp, label %bb.o, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read18default_read_exactINtNtNtB4_8buffered9bufreader9BufReaderINtNtB6_5boxed3BoxDNtB2_4ReadEL_EEECsgy7pbN39oAf_6uu_ptx.exit

bb.k:                                             ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB1q_4readCsgy7pbN39oAf_6uu_ptx.exit.i
  %i.bq = icmp eq ptr %i.aw, null
  br i1 %i.bq, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read18default_read_exactINtNtNtB4_8buffered9bufreader9BufReaderINtNtB6_5boxed3BoxDNtB2_4ReadEL_EEECsgy7pbN39oAf_6uu_ptx.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.br = icmp ult i64 %.sroa.7.025.i, %i.ax
  br i1 %i.br, label %bb.m, label %bb.n, !prof !52

bb.m:                                             ; preds = %bb.l
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %i.ax, i64 noundef %.sroa.7.025.i, i64 noundef %.sroa.7.025.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #27, !noalias !4303
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.bs = sub nuw nsw i64 %.sroa.7.025.i, %i.ax
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.026.i, i64 %i.ax
  br label %bb.q

.thread.i:                                        ; preds = %.split13.i, %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4348
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgy7pbN39oAf_6uu_ptx.exit.i

bb.o:                                             ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4348
  %i.bu = and i64 %i.ax, 1095216660480
  %i.bv = icmp ne i64 %i.bu, 1095216660480
  call void @llvm.assume(i1 %i.bn)
  call void @llvm.assume(i1 %i.bv)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgy7pbN39oAf_6uu_ptx.exit.i

bb.p:                                             ; preds = %.split12.i
  %i.bw = getelementptr i8, ptr %i.aw, i64 -1     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4348
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bw) ]
  store ptr %i.bw, ptr %i.v, align 8, !alias.scope !4349, !noalias !4348
  store i8 3, ptr %i.a, align 8, !alias.scope !4349, !noalias !4348
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.v) #28, !noalias !4303
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgy7pbN39oAf_6uu_ptx.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgy7pbN39oAf_6uu_ptx.exit.i: ; preds = %bb.p, %bb.o, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4348
  br label %bb.q

bb.q:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgy7pbN39oAf_6uu_ptx.exit.i, %bb.n
  %.sroa.0.118.i = phi ptr [ %.sroa.0.026.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgy7pbN39oAf_6uu_ptx.exit.i ], [ %i.bt, %bb.n ]
  %.sroa.7.116.i = phi i64 [ %.sroa.7.025.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgy7pbN39oAf_6uu_ptx.exit.i ], [ %i.bs, %bb.n ] ; 2 uses
  %i.bx = icmp eq i64 %.sroa.7.116.i, 0
  br i1 %i.bx, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read18default_read_exactINtNtNtB4_8buffered9bufreader9BufReaderINtNtB6_5boxed3BoxDNtB2_4ReadEL_EEECsgy7pbN39oAf_6uu_ptx.exit, label %bb.b

_RINvNtNtCs7tKScEop1B6_5alloc2io4read18default_read_exactINtNtNtB4_8buffered9bufreader9BufReaderINtNtB6_5boxed3BoxDNtB2_4ReadEL_EEECsgy7pbN39oAf_6uu_ptx.exit: ; preds = %bb.q, %bb.k, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i, %.split12.i, %.split13.i, %.split.i, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB28_10read_exact0ECsgy7pbN39oAf_6uu_ptx.exit.thread
  %.sroa.0.0 = phi ptr [ null, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB28_10read_exact0ECsgy7pbN39oAf_6uu_ptx.exit.thread ], [ null, %bb.q ], [ %i.aw, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i ], [ %i.aw, %.split.i ], [ %i.aw, %.split12.i ], [ @44, %bb.k ], [ %i.aw, %.split13.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { i64, ptr } @_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB1q_11read_to_endCsgy7pbN39oAf_6uu_ptx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %i.g = sub nuw i64 %i.f, %i.d                   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !noundef !4 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4352)
  %i.j = load i64, ptr %1, align 8, !range !131, !alias.scope !4352, !noundef !4 ; 3 uses
  %i.k = sub i64 %i.j, %i.i
  %i.l = icmp ugt i64 %i.g, %i.k
  br i1 %i.l, label %bb.b, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgy7pbN39oAf_6uu_ptx.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4355)
  %i.m = add i64 %i.g, %i.i                       ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.i
  br i1 %i.n, label %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsgy7pbN39oAf_6uu_ptx.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = shl nuw i64 %i.j, 1
  %..i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.m, i64 %i.o)
  %..i14.i.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i.i, i64 8) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4358
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val13.i.i = load ptr, ptr %i.p, align 8, !alias.scope !4358
  call fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsgy7pbN39oAf_6uu_ptx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.j, ptr %.val13.i.i, i64 noundef %..i14.i.i, i64 noundef 1, i64 noundef 1) #28, !noalias !4358
  %i.q = load i64, ptr %i.a, align 8, !range !489, !noalias !4358, !noundef !4
  %i.r = trunc nuw i64 %i.q to i1
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4358
  br label %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsgy7pbN39oAf_6uu_ptx.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !noalias !4358, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4358
  store ptr %i.t, ptr %i.p, align 8, !alias.scope !4358
  %i.u = icmp sgt i64 %..i14.i.i, -1
  tail call void @llvm.assume(i1 %i.u)
  store i64 %..i14.i.i, ptr %1, align 8, !alias.scope !4358
  %.pre.i = sub i64 %..i14.i.i, %i.i
  %i.v = icmp ule i64 %i.g, %.pre.i
  tail call void @llvm.assume(i1 %i.v)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4359)
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgy7pbN39oAf_6uu_ptx.exit.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgy7pbN39oAf_6uu_ptx.exit.i: ; preds = %bb.a, %bb.e
  %i.w = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.w)
  %.not.i = icmp eq i64 %i.f, %i.d
  br i1 %.not.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgy7pbN39oAf_6uu_ptx.exit, label %bb.f

bb.f:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgy7pbN39oAf_6uu_ptx.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !4359, !nonnull !4, !noundef !4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr nonnull readonly align 1 %i.x, i64 %i.g, i1 false), !noalias !4359
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgy7pbN39oAf_6uu_ptx.exit

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgy7pbN39oAf_6uu_ptx.exit: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgy7pbN39oAf_6uu_ptx.exit.i, %bb.f
  %i.ab = add i64 %i.i, %i.g
  store i64 %i.ab, ptr %i.h, align 8, !alias.scope !4359
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %.val = load ptr, ptr %i.ac, align 8, !nonnull !4, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val11 = load ptr, ptr %i.ad, align 8, !nonnull !4, !align !24, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %.val11, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !invariant.load !4, !noalias !4362, !nonnull !4
  %i.ag = tail call { i64, ptr } %i.af(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #29, !inline_history !4365 ; 2 uses
  %i.ah = extractvalue { i64, ptr } %i.ag, 0      ; 2 uses
  %i.ai = extractvalue { i64, ptr } %i.ag, 1
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = trunc nuw i64 %i.ah to i1
  %i.al = select i1 %i.ak, i64 0, i64 %i.g
  %spec.select = add i64 %i.al, %i.aj
  br label %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsgy7pbN39oAf_6uu_ptx.exit.thread

_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsgy7pbN39oAf_6uu_ptx.exit.thread: ; preds = %bb.d, %bb.b, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgy7pbN39oAf_6uu_ptx.exit
  %.sroa.4.0 = phi i64 [ %spec.select, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgy7pbN39oAf_6uu_ptx.exit ], [ 163208757251, %bb.b ], [ 163208757251, %bb.d ]
  %.sroa.0.0 = phi i64 [ %i.ah, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgy7pbN39oAf_6uu_ptx.exit ], [ 1, %bb.b ], [ 1, %bb.d ]
  %i.am = inttoptr i64 %.sroa.4.0 to ptr
  %i.an = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.ao = insertvalue { i64, ptr } %i.an, ptr %i.am, 1
  ret { i64, ptr } %i.ao
}

end_hunk_0
begin_hunk_1_@llvm.vector.reduce.add.v2i64
!4121 = distinct !{!4121, !4119, !"_RINvXNtNtCs6JMX4GRUq9U_4core4iter8adaptersINtB3_12GenericShuntINtNtNtCs7tKScEop1B6_5alloc2io4util5LinesQDNtNtB13_8buf_read7BufReadEL_EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtNtB7_2io5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB3l_12try_for_each4callNtNtB15_6string6StringINtNtNtB7_3ops12control_flow11ControlFlowB4x_ENcNtB4T_5Break0E0B4T_ECsgy7pbN39oAf_6uu_ptx: argument 0"}
!4122 = !{!4123}
!4123 = distinct !{!4123, !4124, !"_RINvYINtNtNtCs7tKScEop1B6_5alloc2io4util5LinesQDNtNtB8_8buf_read7BufReadEL_ENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator8try_folduNCINvXNtB1i_8adaptersINtB2n_12GenericShuntB3_INtNtB1k_6result6ResultNtNtB1k_7convert10InfallibleNtNtNtB1k_2io5error5ErrorEEB1c_8try_folduNCINvNvB1c_12try_for_each4callNtNtBa_6string6StringINtNtNtB1k_3ops12control_flow11ControlFlowB4Y_ENcNtB5j_5Break0E0B5j_E0IB5k_B5j_EECsgy7pbN39oAf_6uu_ptx: argument 1"}
!4124 = distinct !{!4124, !"_RINvYINtNtNtCs7tKScEop1B6_5alloc2io4util5LinesQDNtNtB8_8buf_read7BufReadEL_ENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator8try_folduNCINvXNtB1i_8adaptersINtB2n_12GenericShuntB3_INtNtB1k_6result6ResultNtNtB1k_7convert10InfallibleNtNtNtB1k_2io5error5ErrorEEB1c_8try_folduNCINvNvB1c_12try_for_each4callNtNtBa_6string6StringINtNtNtB1k_3ops12control_flow11ControlFlowB4Y_ENcNtB5j_5Break0E0B5j_E0IB5k_B5j_EECsgy7pbN39oAf_6uu_ptx"}
!4125 = !{!4126, !4128, !4123, !4121, !4118}
!4126 = distinct !{!4126, !4127, !"_RNvXs8_NtNtCs7tKScEop1B6_5alloc2io4utilINtB5_5LinesQDNtNtB7_8buf_read7BufReadEL_ENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx: argument 0"}
!4127 = distinct !{!4127, !"_RNvXs8_NtNtCs7tKScEop1B6_5alloc2io4utilINtB5_5LinesQDNtNtB7_8buf_read7BufReadEL_ENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx"}
!4128 = distinct !{!4128, !4124, !"_RINvYINtNtNtCs7tKScEop1B6_5alloc2io4util5LinesQDNtNtB8_8buf_read7BufReadEL_ENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator8try_folduNCINvXNtB1i_8adaptersINtB2n_12GenericShuntB3_INtNtB1k_6result6ResultNtNtB1k_7convert10InfallibleNtNtNtB1k_2io5error5ErrorEEB1c_8try_folduNCINvNvB1c_12try_for_each4callNtNtBa_6string6StringINtNtNtB1k_3ops12control_flow11ControlFlowB4Y_ENcNtB5j_5Break0E0B5j_E0IB5k_B5j_EECsgy7pbN39oAf_6uu_ptx: argument 0"}
!4129 = !{!4130, !4126, !4128, !4123, !4121, !4118}
!4130 = distinct !{!4130, !4131, !"_RNvXs_NtNtCs7tKScEop1B6_5alloc2io5implsQDNtNtB6_8buf_read7BufReadEL_BD_9read_lineCsgy7pbN39oAf_6uu_ptx: argument 0"}
!4131 = distinct !{!4131, !"_RNvXs_NtNtCs7tKScEop1B6_5alloc2io5implsQDNtNtB6_8buf_read7BufReadEL_BD_9read_lineCsgy7pbN39oAf_6uu_ptx"}
!4132 = distinct !{null, null, null, null}
!4133 = !{!4134}
!4134 = distinct !{!4134, !4135, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx: argument 0"}
!4135 = distinct !{!4135, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx"}
!4136 = !{!4134, !4126, !4128, !4123, !4121, !4118}
!4137 = !{!4138}
!4138 = distinct !{!4138, !4139, !"_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String3pop: argument 0"}
!4139 = distinct !{!4139, !"_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String3pop"}
!4140 = !{!4128, !4123, !4121, !4118}
!4141 = !{!4142, !4144, !4128, !4121, !4118}
!4142 = distinct !{!4142, !4143, !"_RNCINvXNtNtCs6JMX4GRUq9U_4core4iter8adaptersINtB5_12GenericShuntINtNtNtCs7tKScEop1B6_5alloc2io4util5LinesQDNtNtB15_8buf_read7BufReadEL_EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtNtB9_2io5error5ErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB3n_12try_for_each4callNtNtB17_6string6StringINtNtNtB9_3ops12control_flow11ControlFlowB4z_ENcNtB4V_5Break0E0B4V_E0Csgy7pbN39oAf_6uu_ptx: argument 0"}
!4143 = distinct !{!4143, !"_RNCINvXNtNtCs6JMX4GRUq9U_4core4iter8adaptersINtB5_12GenericShuntINtNtNtCs7tKScEop1B6_5alloc2io4util5LinesQDNtNtB15_8buf_read7BufReadEL_EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtNtB9_2io5error5ErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB3n_12try_for_each4callNtNtB17_6string6StringINtNtNtB9_3ops12control_flow11ControlFlowB4z_ENcNtB4V_5Break0E0B4V_E0Csgy7pbN39oAf_6uu_ptx"}
!4144 = distinct !{!4144, !4143, !"_RNCINvXNtNtCs6JMX4GRUq9U_4core4iter8adaptersINtB5_12GenericShuntINtNtNtCs7tKScEop1B6_5alloc2io4util5LinesQDNtNtB15_8buf_read7BufReadEL_EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtNtB9_2io5error5ErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB3n_12try_for_each4callNtNtB17_6string6StringINtNtNtB9_3ops12control_flow11ControlFlowB4z_ENcNtB4V_5Break0E0B4V_E0Csgy7pbN39oAf_6uu_ptx: argument 1"}
!4145 = !{!4142, !4144, !4128, !4123, !4121, !4118}
!4146 = !{!4147}
!4147 = distinct !{!4147, !4148, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsgy7pbN39oAf_6uu_ptx: argument 0"}
!4148 = distinct !{!4148, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsgy7pbN39oAf_6uu_ptx"}
!4149 = !{!4150}
!4150 = distinct !{!4150, !4151, !"_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterINtNtBb_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EEB1q_9write_allCsgy7pbN39oAf_6uu_ptx: argument 0"}
!4151 = distinct !{!4151, !"_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterINtNtBb_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EEB1q_9write_allCsgy7pbN39oAf_6uu_ptx"}
!4152 = !{!4153}
!4153 = distinct !{!4153, !4151, !"_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterINtNtBb_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EEB1q_9write_allCsgy7pbN39oAf_6uu_ptx: argument 1"}
!4154 = !{!4155}
!4155 = distinct !{!4155, !4156, !"_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterINtNtBa_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EE25write_to_buffer_uncheckedCsgy7pbN39oAf_6uu_ptx: argument 0"}
!4156 = distinct !{!4156, !"_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterINtNtBa_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EE25write_to_buffer_uncheckedCsgy7pbN39oAf_6uu_ptx"}
!4157 = !{!4155, !4150}
!4158 = !{!4159, !4153}
!4159 = distinct !{!4159, !4156, !"_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterINtNtBa_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EE25write_to_buffer_uncheckedCsgy7pbN39oAf_6uu_ptx: argument 1"}
!4160 = !{!4161}
!4161 = distinct !{!4161, !4162, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsgy7pbN39oAf_6uu_ptx: argument 0"}
!4162 = distinct !{!4162, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsgy7pbN39oAf_6uu_ptx"}
!4163 = !{i64 4}
!4164 = !{!4165}
!4165 = distinct !{!4165, !4166, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsgy7pbN39oAf_6uu_ptx: argument 0"}
!4166 = distinct !{!4166, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsgy7pbN39oAf_6uu_ptx"}
!4167 = !{!4168}
!4168 = distinct !{!4168, !4169, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next: argument 0"}
!4169 = distinct !{!4169, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next"}
!4170 = !{!4171}
!4171 = distinct !{!4171, !4172, !"_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsgy7pbN39oAf_6uu_ptx: argument 0"}
!4172 = distinct !{!4172, !"_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsgy7pbN39oAf_6uu_ptx"}
!4173 = !{!4174, !4171, !4168}
!4174 = distinct !{!4174, !4175, !"_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx: argument 0"}
!4175 = distinct !{!4175, !"_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx"}
!4176 = !{!4171, !4168}
!4177 = !{!4178, !4171, !4168}
!4178 = distinct !{!4178, !4179, !"_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx: argument 0"}
!4179 = distinct !{!4179, !"_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx"}
!4180 = !{!4181, !4171, !4168}
!4181 = distinct !{!4181, !4182, !"_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx: argument 0"}
!4182 = distinct !{!4182, !"_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx"}
!4183 = !{!4184, !4171, !4168}
!4184 = distinct !{!4184, !4185, !"_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx: argument 0"}
!4185 = distinct !{!4185, !"_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx"}
!4186 = !{!4187}
!4187 = distinct !{!4187, !4188, !"_RNvYNvCsgy7pbN39oAf_6uu_ptx10tex_mapperINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTcEE8call_mutB4_: argument 0"}
!4188 = distinct !{!4188, !"_RNvYNvCsgy7pbN39oAf_6uu_ptx10tex_mapperINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTcEE8call_mutB4_"}
!4189 = !{!4190}
!4190 = distinct !{!4190, !4191, !"_RNvCsgy7pbN39oAf_6uu_ptx10tex_mapper: argument 0"}
!4191 = distinct !{!4191, !"_RNvCsgy7pbN39oAf_6uu_ptx10tex_mapper"}
!4192 = !{!4190, !4187}
!4193 = !{!4194}
!4194 = distinct !{!4194, !4195, !"_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw: argument 0"}
!4195 = distinct !{!4195, !"_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw"}
!4196 = !{!4197, !4190, !4187}
!4197 = distinct !{!4197, !4198, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgy7pbN39oAf_6uu_ptx: argument 0"}
!4198 = distinct !{!4198, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgy7pbN39oAf_6uu_ptx"}
!4199 = !{!4200, !4190, !4187}
!4200 = distinct !{!4200, !4201, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgy7pbN39oAf_6uu_ptx: argument 0"}
!4201 = distinct !{!4201, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgy7pbN39oAf_6uu_ptx"}
!4202 = !{!4203}
!4203 = distinct !{!4203, !4204, !"_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapNtNtNtCsipSpXIjCLRi_5regex5regex6string5SplitNCNvCsgy7pbN39oAf_6uu_ptx10read_lines0ENtNtNtBa_6traits8iterator8Iterator4findQNCB1C_s_0EB1E_: argument 0"}
!4204 = distinct !{!4204, !"_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapNtNtNtCsipSpXIjCLRi_5regex5regex6string5SplitNCNvCsgy7pbN39oAf_6uu_ptx10read_lines0ENtNtNtBa_6traits8iterator8Iterator4findQNCB1C_s_0EB1E_"}
!4205 = !{!4206}
!4206 = distinct !{!4206, !4204, !"_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapNtNtNtCsipSpXIjCLRi_5regex5regex6string5SplitNCNvCsgy7pbN39oAf_6uu_ptx10read_lines0ENtNtNtBa_6traits8iterator8Iterator4findQNCB1C_s_0EB1E_: argument 1"}
!4207 = !{!4208}
!4208 = distinct !{!4208, !4209, !"_RINvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB6_3MapNtNtNtCsipSpXIjCLRi_5regex5regex6string5SplitNCNvCsgy7pbN39oAf_6uu_ptx10read_lines0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2j_4find5checkNtNtCs7tKScEop1B6_5alloc6string6StringQNCB1I_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB3n_EEB1K_: argument 1"}
!4209 = distinct !{!4209, !"_RINvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB6_3MapNtNtNtCsipSpXIjCLRi_5regex5regex6string5SplitNCNvCsgy7pbN39oAf_6uu_ptx10read_lines0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2j_4find5checkNtNtCs7tKScEop1B6_5alloc6string6StringQNCB1I_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB3n_EEB1K_"}
!4210 = !{!4211}
!4211 = distinct !{!4211, !4212, !"_RINvYNtNtNtCsipSpXIjCLRi_5regex5regex6string5SplitNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtBS_8adapters3map12map_try_foldReNtNtCs7tKScEop1B6_5alloc6string6StringuINtNtNtBU_3ops12control_flow11ControlFlowB2w_ENCNvCsgy7pbN39oAf_6uu_ptx10read_lines0NCINvNvBM_4find5checkB2w_QNCB3V_s_0E0E0B39_EB3X_: argument 1"}
!4212 = distinct !{!4212, !"_RINvYNtNtNtCsipSpXIjCLRi_5regex5regex6string5SplitNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtBS_8adapters3map12map_try_foldReNtNtCs7tKScEop1B6_5alloc6string6StringuINtNtNtBU_3ops12control_flow11ControlFlowB2w_ENCNvCsgy7pbN39oAf_6uu_ptx10read_lines0NCINvNvBM_4find5checkB2w_QNCB3V_s_0E0E0B39_EB3X_"}
!4213 = !{!4214}
!4214 = distinct !{!4214, !4215, !"_RNvXsj_NtNtCsipSpXIjCLRi_5regex5regex6stringNtB5_5SplitNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4next: argument 0"}
!4215 = distinct !{!4215, !"_RNvXsj_NtNtCsipSpXIjCLRi_5regex5regex6stringNtB5_5SplitNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4next"}
!4216 = !{!4214, !4217, !4211, !4218, !4208, !4203, !4206}
!4217 = distinct !{!4217, !4212, !"_RINvYNtNtNtCsipSpXIjCLRi_5regex5regex6string5SplitNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtBS_8adapters3map12map_try_foldReNtNtCs7tKScEop1B6_5alloc6string6StringuINtNtNtBU_3ops12control_flow11ControlFlowB2w_ENCNvCsgy7pbN39oAf_6uu_ptx10read_lines0NCINvNvBM_4find5checkB2w_QNCB3V_s_0E0E0B39_EB3X_: argument 0"}
!4218 = distinct !{!4218, !4209, !"_RINvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB6_3MapNtNtNtCsipSpXIjCLRi_5regex5regex6string5SplitNCNvCsgy7pbN39oAf_6uu_ptx10read_lines0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2j_4find5checkNtNtCs7tKScEop1B6_5alloc6string6StringQNCB1I_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB3n_EEB1K_: argument 0"}
!4219 = !{!4217, !4218, !4203}
!4220 = !{!4214, !4211, !4208, !4206}
!4221 = !{!4222, !4224}
!4222 = distinct !{!4222, !4223, !"_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range: argument 0"}
!4223 = distinct !{!4223, !"_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range"}
!4224 = distinct !{!4224, !4225, !"_RNvXs5_NtNtCs5skpMncfVhl_14regex_automata4util6searcheINtNtNtCs6JMX4GRUq9U_4core3ops5index5IndexNtB5_4SpanE5index: argument 0"}
!4225 = distinct !{!4225, !"_RNvXs5_NtNtCs5skpMncfVhl_14regex_automata4util6searcheINtNtNtCs6JMX4GRUq9U_4core3ops5index5IndexNtB5_4SpanE5index"}
!4226 = !{!4227}
!4227 = distinct !{!4227, !4228, !"_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map12map_try_foldReNtNtCs7tKScEop1B6_5alloc6string6StringuINtNtNtBa_3ops12control_flow11ControlFlowB11_ENCNvCsgy7pbN39oAf_6uu_ptx10read_lines0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB11_QNCB2q_s_0E0E0B2s_: argument 1"}
!4228 = distinct !{!4228, !"_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map12map_try_foldReNtNtCs7tKScEop1B6_5alloc6string6StringuINtNtNtBa_3ops12control_flow11ControlFlowB11_ENCNvCsgy7pbN39oAf_6uu_ptx10read_lines0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB11_QNCB2q_s_0E0E0B2s_"}
!4229 = !{!4230}
!4230 = distinct !{!4230, !4231, !"_RNCNvCsgy7pbN39oAf_6uu_ptx10read_lines0B3_: argument 1"}
!4231 = distinct !{!4231, !"_RNCNvCsgy7pbN39oAf_6uu_ptx10read_lines0B3_"}
!4232 = !{!4233}
!4233 = distinct !{!4233, !4234, !"_RINvMs3_NtCs7tKScEop1B6_5alloc3stre7replacecECsgy7pbN39oAf_6uu_ptx: argument 1"}
!4234 = distinct !{!4234, !"_RINvMs3_NtCs7tKScEop1B6_5alloc3stre7replacecECsgy7pbN39oAf_6uu_ptx"}
!4235 = !{!4236, !4238, !4240, !4241, !4233, !4242, !4243, !4230, !4244, !4227, !4217, !4218, !4203}
!4236 = distinct !{!4236, !4237, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgy7pbN39oAf_6uu_ptx: argument 0"}
!4237 = distinct !{!4237, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgy7pbN39oAf_6uu_ptx"}
!4238 = distinct !{!4238, !4239, !"_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE9from_iterCsgy7pbN39oAf_6uu_ptx: argument 0"}
!4239 = distinct !{!4239, !"_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE9from_iterCsgy7pbN39oAf_6uu_ptx"}
!4240 = distinct !{!4240, !4239, !"_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE9from_iterCsgy7pbN39oAf_6uu_ptx: argument 1"}
!4241 = distinct !{!4241, !4234, !"_RINvMs3_NtCs7tKScEop1B6_5alloc3stre7replacecECsgy7pbN39oAf_6uu_ptx: argument 0"}
!4242 = distinct !{!4242, !4234, !"_RINvMs3_NtCs7tKScEop1B6_5alloc3stre7replacecECsgy7pbN39oAf_6uu_ptx: argument 2"}
!4243 = distinct !{!4243, !4231, !"_RNCNvCsgy7pbN39oAf_6uu_ptx10read_lines0B3_: argument 0"}
!4244 = distinct !{!4244, !4228, !"_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map12map_try_foldReNtNtCs7tKScEop1B6_5alloc6string6StringuINtNtNtBa_3ops12control_flow11ControlFlowB11_ENCNvCsgy7pbN39oAf_6uu_ptx10read_lines0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB11_QNCB2q_s_0E0E0B2s_: argument 0"}
!4245 = !{!4233, !4230, !4227}
!4246 = !{!4247, !4249, !4251, !4252, !4254, !4255, !4257, !4258, !4260, !4238, !4240, !4241, !4242, !4243, !4244, !4217, !4218, !4203}
!4247 = distinct !{!4247, !4248, !"_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs7tKScEop1B6_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsgy7pbN39oAf_6uu_ptx: argument 0"}
!4248 = distinct !{!4248, !"_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs7tKScEop1B6_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsgy7pbN39oAf_6uu_ptx"}
!4249 = distinct !{!4249, !4250, !"_RINvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNvNtCs7tKScEop1B6_5alloc3str13replace_ascii0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2a_8for_each4callhNCINvMsk_NtB1v_3vecINtB3n_3VechE14extend_trustedBN_E0E0ECsgy7pbN39oAf_6uu_ptx: argument 0"}
!4250 = distinct !{!4250, !"_RINvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNvNtCs7tKScEop1B6_5alloc3str13replace_ascii0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2a_8for_each4callhNCINvMsk_NtB1v_3vecINtB3n_3VechE14extend_trustedBN_E0E0ECsgy7pbN39oAf_6uu_ptx"}
!4251 = distinct !{!4251, !4250, !"_RINvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNvNtCs7tKScEop1B6_5alloc3str13replace_ascii0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2a_8for_each4callhNCINvMsk_NtB1v_3vecINtB3n_3VechE14extend_trustedBN_E0E0ECsgy7pbN39oAf_6uu_ptx: argument 1"}
!4252 = distinct !{!4252, !4253, !"_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterhENCNvNtCs7tKScEop1B6_5alloc3str13replace_ascii0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtB1p_3vecINtB2U_3VechE14extend_trustedB3_E0ECsgy7pbN39oAf_6uu_ptx: argument 0"}
!4253 = distinct !{!4253, !"_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterhENCNvNtCs7tKScEop1B6_5alloc3str13replace_ascii0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtB1p_3vecINtB2U_3VechE14extend_trustedB3_E0ECsgy7pbN39oAf_6uu_ptx"}
!4254 = distinct !{!4254, !4253, !"_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterhENCNvNtCs7tKScEop1B6_5alloc3str13replace_ascii0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtB1p_3vecINtB2U_3VechE14extend_trustedB3_E0ECsgy7pbN39oAf_6uu_ptx: argument 1"}
!4255 = distinct !{!4255, !4256, !"_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EECsgy7pbN39oAf_6uu_ptx: argument 0"}
!4256 = distinct !{!4256, !"_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EECsgy7pbN39oAf_6uu_ptx"}
!4257 = distinct !{!4257, !4256, !"_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EECsgy7pbN39oAf_6uu_ptx: argument 1"}
!4258 = distinct !{!4258, !4259, !"_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB6_3VechEINtB4_10SpecExtendhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1n_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE11spec_extendCsgy7pbN39oAf_6uu_ptx: argument 0"}
!4259 = distinct !{!4259, !"_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB6_3VechEINtB4_10SpecExtendhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1n_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE11spec_extendCsgy7pbN39oAf_6uu_ptx"}
!4260 = distinct !{!4260, !4259, !"_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB6_3VechEINtB4_10SpecExtendhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1n_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE11spec_extendCsgy7pbN39oAf_6uu_ptx: argument 1"}
!4261 = !{!4262, !4264, !4266, !4247, !4249, !4251, !4252, !4254, !4255, !4257, !4258, !4260, !4238, !4240, !4241, !4233, !4242, !4243, !4230, !4244, !4227, !4217, !4218, !4203}
!4262 = distinct !{!4262, !4263, !"_RNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB8_3VechE14extend_trustedINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB19_5slice4iter4IterhENCNvNtBa_3str13replace_ascii0EE0Csgy7pbN39oAf_6uu_ptx: argument 0"}
!4263 = distinct !{!4263, !"_RNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB8_3VechE14extend_trustedINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB19_5slice4iter4IterhENCNvNtBa_3str13replace_ascii0EE0Csgy7pbN39oAf_6uu_ptx"}
!4264 = distinct !{!4264, !4265, !"_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator8for_each4callhNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB1p_3VechE14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterhENCNvNtB1r_3str13replace_ascii0EE0E0Csgy7pbN39oAf_6uu_ptx: argument 0"}
!4265 = distinct !{!4265, !"_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator8for_each4callhNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB1p_3VechE14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterhENCNvNtB1r_3str13replace_ascii0EE0E0Csgy7pbN39oAf_6uu_ptx"}
!4266 = distinct !{!4266, !4267, !"_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRhhuNCNvNtCs7tKScEop1B6_5alloc3str13replace_ascii0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callhNCINvMsk_NtB14_3vecINtB2L_3VechE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterhEBY_EE0E0E0Csgy7pbN39oAf_6uu_ptx: argument 0"}
!4267 = distinct !{!4267, !"_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRhhuNCNvNtCs7tKScEop1B6_5alloc3str13replace_ascii0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callhNCINvMsk_NtB14_3vecINtB2L_3VechE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterhEBY_EE0E0E0Csgy7pbN39oAf_6uu_ptx"}
!4268 = distinct !{!4268, !4269, !4270}
!4269 = !{!"llvm.loop.isvectorized", i32 1}
!4270 = !{!"llvm.loop.unroll.runtime.disable"}
!4271 = !{!"branch_weights", i32 8, i32 24}
!4272 = distinct !{!4272, !4269, !4270}
!4273 = !{!4238, !4240, !4241, !4233, !4242, !4243, !4230, !4244, !4227, !4217, !4218, !4203}
!4274 = distinct !{!4274, !4270, !4269}
!4275 = !{i8 0, i8 6}
!4276 = !{!4277, !4279}
!4277 = distinct !{!4277, !4278, !"_RNvXsd_NtNtCs6JMX4GRUq9U_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt5Debug3fmt: argument 0"}
!4278 = distinct !{!4278, !"_RNvXsd_NtNtCs6JMX4GRUq9U_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt5Debug3fmt"}
!4279 = distinct !{!4279, !4278, !"_RNvXsd_NtNtCs6JMX4GRUq9U_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt5Debug3fmt: argument 1"}
!4280 = !{!4281}
!4281 = distinct !{!4281, !4282, !"_RNvNtNtCs6JMX4GRUq9U_4core4hash3sip9u8to64_le: argument 0"}
!4282 = distinct !{!4282, !"_RNvNtNtCs6JMX4GRUq9U_4core4hash3sip9u8to64_le"}
!4283 = !{!4284}
!4284 = distinct !{!4284, !4285, !"_RNvXs6_NtNtCs6JMX4GRUq9U_4core4hash3sipNtB5_11Sip13RoundsNtB5_3Sip8c_rounds: argument 0"}
!4285 = distinct !{!4285, !"_RNvXs6_NtNtCs6JMX4GRUq9U_4core4hash3sipNtB5_11Sip13RoundsNtB5_3Sip8c_rounds"}
!4286 = !{!4287}
!4287 = distinct !{!4287, !4288, !"_RNvXs6_NtNtCs6JMX4GRUq9U_4core4hash3sipNtB5_11Sip13RoundsNtB5_3Sip8c_rounds: argument 0"}
!4288 = distinct !{!4288, !"_RNvXs6_NtNtCs6JMX4GRUq9U_4core4hash3sipNtB5_11Sip13RoundsNtB5_3Sip8c_rounds"}
!4289 = !{!4290}
!4290 = distinct !{!4290, !4291, !"_RNvNtNtCs6JMX4GRUq9U_4core4hash3sip9u8to64_le: argument 0"}
!4291 = distinct !{!4291, !"_RNvNtNtCs6JMX4GRUq9U_4core4hash3sip9u8to64_le"}
!4292 = !{!4293}
!4293 = distinct !{!4293, !4294, !"_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB28_10read_exact0ECsgy7pbN39oAf_6uu_ptx: argument 0"}
!4294 = distinct !{!4294, !"_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB28_10read_exact0ECsgy7pbN39oAf_6uu_ptx"}
!4295 = !{!4296}
!4296 = distinct !{!4296, !4294, !"_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB28_10read_exact0ECsgy7pbN39oAf_6uu_ptx: argument 1"}
!4297 = !{!4298, !4300}
!4298 = distinct !{!4298, !4299, !"_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implhECsgy7pbN39oAf_6uu_ptx: argument 0"}
!4299 = distinct !{!4299, !"_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implhECsgy7pbN39oAf_6uu_ptx"}
!4300 = distinct !{!4300, !4299, !"_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implhECsgy7pbN39oAf_6uu_ptx: argument 1"}
!4301 = !{!4302, !4293}
!4302 = distinct !{!4302, !4299, !"_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implhECsgy7pbN39oAf_6uu_ptx: argument 2"}
!4303 = !{!4304}
!4304 = distinct !{!4304, !4305, !"_RINvNtNtCs7tKScEop1B6_5alloc2io4read18default_read_exactINtNtNtB4_8buffered9bufreader9BufReaderINtNtB6_5boxed3BoxDNtB2_4ReadEL_EEECsgy7pbN39oAf_6uu_ptx: argument 0"}
!4305 = distinct !{!4305, !"_RINvNtNtCs7tKScEop1B6_5alloc2io4read18default_read_exactINtNtNtB4_8buffered9bufreader9BufReaderINtNtB6_5boxed3BoxDNtB2_4ReadEL_EEECsgy7pbN39oAf_6uu_ptx"}
!4306 = !{!4307}
!4307 = distinct !{!4307, !4305, !"_RINvNtNtCs7tKScEop1B6_5alloc2io4read18default_read_exactINtNtNtB4_8buffered9bufreader9BufReaderINtNtB6_5boxed3BoxDNtB2_4ReadEL_EEECsgy7pbN39oAf_6uu_ptx: argument 1"}
!4308 = !{!4309, !4304}
!4309 = distinct !{!4309, !4310, !"_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB1q_4readCsgy7pbN39oAf_6uu_ptx: argument 0"}
!4310 = distinct !{!4310, !"_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB1q_4readCsgy7pbN39oAf_6uu_ptx"}
!4311 = !{!4312, !4307}
!4312 = distinct !{!4312, !4310, !"_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB1q_4readCsgy7pbN39oAf_6uu_ptx: argument 1"}
!4313 = !{!4309}
!4314 = !{!4312}
!4315 = !{!4316}
!4316 = distinct !{!4316, !4317, !"_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx: argument 1"}
!4317 = distinct !{!4317, !"_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx"}
!4318 = !{!4319, !4316, !4320, !4309, !4312, !4304, !4307}
!4319 = distinct !{!4319, !4317, !"_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx: argument 0"}
!4320 = distinct !{!4320, !4317, !"_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx: argument 2"}
!4321 = !{!4322, !4324, !4319, !4316, !4320, !4309, !4312, !4304}
!4322 = distinct !{!4322, !4323, !"_RNvXs0_NtNtCs7tKScEop1B6_5alloc2io5implsINtNtB9_5boxed3BoxDNtNtB7_4read4ReadEL_EBV_8read_bufCsgy7pbN39oAf_6uu_ptx: argument 0"}
!4323 = distinct !{!4323, !"_RNvXs0_NtNtCs7tKScEop1B6_5alloc2io5implsINtNtB9_5boxed3BoxDNtNtB7_4read4ReadEL_EBV_8read_bufCsgy7pbN39oAf_6uu_ptx"}
!4324 = distinct !{!4324, !4325, !"_RNvXNtNtCs7tKScEop1B6_5alloc2io5implsQINtNtB6_5boxed3BoxDNtNtB4_4read4ReadEL_EBT_8read_bufCsgy7pbN39oAf_6uu_ptx: argument 0"}
!4325 = distinct !{!4325, !"_RNvXNtNtCs7tKScEop1B6_5alloc2io5implsQINtNtB6_5boxed3BoxDNtNtB4_4read4ReadEL_EBT_8read_bufCsgy7pbN39oAf_6uu_ptx"}
!4326 = !{!4319, !4316, !4320, !4309, !4312, !4304}
!4327 = distinct !{null, ptr @_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB1q_4readCsgy7pbN39oAf_6uu_ptx, null, null, null}
!4328 = !{!4316, !4309, !4304}
!4329 = !{!4319, !4320, !4312, !4307}
!4330 = !{!4331, !4309, !4312, !4304}
!4331 = distinct !{!4331, !4332, !"_RNvXs0_NtNtCs7tKScEop1B6_5alloc2io5implsINtNtB9_5boxed3BoxDNtNtB7_4read4ReadEL_EBV_4readCsgy7pbN39oAf_6uu_ptx: argument 0"}
!4332 = distinct !{!4332, !"_RNvXs0_NtNtCs7tKScEop1B6_5alloc2io5implsINtNtB9_5boxed3BoxDNtNtB7_4read4ReadEL_EBV_4readCsgy7pbN39oAf_6uu_ptx"}
!4333 = distinct !{null, ptr @_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB1q_4readCsgy7pbN39oAf_6uu_ptx, null}
!4334 = !{!4335}
!4335 = distinct !{!4335, !4336, !"_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read: argument 1"}
!4336 = distinct !{!4336, !"_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read"}
!4337 = !{!4338, !4335, !4309, !4312, !4304}
!4338 = distinct !{!4338, !4336, !"_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read: argument 0"}
!4339 = !{!4335, !4312, !4307}
!4340 = !{!4338, !4309, !4304}
!4341 = !{!4342, !4344}
!4342 = distinct !{!4342, !4343, !"_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implhECsgy7pbN39oAf_6uu_ptx: argument 0"}
!4343 = distinct !{!4343, !"_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implhECsgy7pbN39oAf_6uu_ptx"}
!4344 = distinct !{!4344, !4343, !"_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implhECsgy7pbN39oAf_6uu_ptx: argument 1"}
!4345 = !{!4346, !4338, !4309, !4304}
!4346 = distinct !{!4346, !4343, !"_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implhECsgy7pbN39oAf_6uu_ptx: argument 2"}
!4347 = distinct !{null, null}
!4348 = !{!4304, !4307}
!4349 = !{!4350}
!4350 = distinct !{!4350, !4351, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsgy7pbN39oAf_6uu_ptx: argument 0"}
!4351 = distinct !{!4351, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsgy7pbN39oAf_6uu_ptx"}
!4352 = !{!4353}
!4353 = distinct !{!4353, !4354, !"_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsgy7pbN39oAf_6uu_ptx: argument 0"}
!4354 = distinct !{!4354, !"_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsgy7pbN39oAf_6uu_ptx"}
!4355 = !{!4356}
!4356 = distinct !{!4356, !4357, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsgy7pbN39oAf_6uu_ptx: argument 0"}
!4357 = distinct !{!4357, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsgy7pbN39oAf_6uu_ptx"}
!4358 = !{!4356, !4353}
!4359 = !{!4360}
!4360 = distinct !{!4360, !4361, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgy7pbN39oAf_6uu_ptx: argument 0"}
!4361 = distinct !{!4361, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgy7pbN39oAf_6uu_ptx"}
!4362 = !{!4363}
!4363 = distinct !{!4363, !4364, !"_RNvXs0_NtNtCs7tKScEop1B6_5alloc2io5implsINtNtB9_5boxed3BoxDNtNtB7_4read4ReadEL_EBV_11read_to_endCsgy7pbN39oAf_6uu_ptx: argument 0"}
!4364 = distinct !{!4364, !"_RNvXs0_NtNtCs7tKScEop1B6_5alloc2io5implsINtNtB9_5boxed3BoxDNtNtB7_4read4ReadEL_EBV_11read_to_endCsgy7pbN39oAf_6uu_ptx"}
!4365 = distinct !{null}
!4366 = distinct !{!4366, !4269, !4270}
!4367 = distinct !{!4367, !4270, !4269}
!4368 = !{!4369}
!4369 = distinct !{!4369, !4370, !"_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx: argument 1"}
!4370 = distinct !{!4370, !"_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx"}
!4371 = !{!4372}
!4372 = distinct !{!4372, !4370, !"_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx: argument 2"}
!4373 = !{!4374, !4372}
!4374 = distinct !{!4374, !4370, !"_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx: argument 0"}
!4375 = !{!4374, !4369, !4372}
!4376 = !{!4377, !4374, !4369}
!4377 = distinct !{!4377, !4378, !"_RNvXNtNtCs7tKScEop1B6_5alloc2io5implsQINtNtB6_5boxed3BoxDNtNtB4_4read4ReadEL_EBT_8read_bufCsgy7pbN39oAf_6uu_ptx: argument 0"}
!4378 = distinct !{!4378, !"_RNvXNtNtCs7tKScEop1B6_5alloc2io5implsQINtNtB6_5boxed3BoxDNtNtB4_4read4ReadEL_EBT_8read_bufCsgy7pbN39oAf_6uu_ptx"}
!4379 = !{!4380, !4377, !4374, !4369, !4372}
!4380 = distinct !{!4380, !4381, !"_RNvXs0_NtNtCs7tKScEop1B6_5alloc2io5implsINtNtB9_5boxed3BoxDNtNtB7_4read4ReadEL_EBV_8read_bufCsgy7pbN39oAf_6uu_ptx: argument 0"}
!4381 = distinct !{!4381, !"_RNvXs0_NtNtCs7tKScEop1B6_5alloc2io5implsINtNtB9_5boxed3BoxDNtNtB7_4read4ReadEL_EBV_8read_bufCsgy7pbN39oAf_6uu_ptx"}
!4382 = distinct !{null, null, null}
!4383 = !{!4384}
!4384 = distinct !{!4384, !4385, !"_RNvXs0_NtNtCs7tKScEop1B6_5alloc2io5implsINtNtB9_5boxed3BoxDNtNtB7_4read4ReadEL_EBV_13read_vectoredCsgy7pbN39oAf_6uu_ptx: argument 0"}
!4385 = distinct !{!4385, !"_RNvXs0_NtNtCs7tKScEop1B6_5alloc2io5implsINtNtB9_5boxed3BoxDNtNtB7_4read4ReadEL_EBV_13read_vectoredCsgy7pbN39oAf_6uu_ptx"}
!4386 = distinct !{null}
!4387 = !{!4388}
!4388 = distinct !{!4388, !4389, !"_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read13read_vectored: argument 1"}
!4389 = distinct !{!4389, !"_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read13read_vectored"}
!4390 = !{!4391}
!4391 = distinct !{!4391, !4389, !"_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read13read_vectored: argument 0"}
!4392 = !{!4393}
!4393 = distinct !{!4393, !4394, !"_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read: argument 1"}
!4394 = distinct !{!4394, !"_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read"}
!4395 = !{!4396, !4393, !4391, !4388}
!4396 = distinct !{!4396, !4394, !"_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read: argument 0"}
!4397 = !{!4396, !4391, !4388}
!4398 = !{!4399, !4401}
!4399 = distinct !{!4399, !4400, !"_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implhECsgy7pbN39oAf_6uu_ptx: argument 0"}
!4400 = distinct !{!4400, !"_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implhECsgy7pbN39oAf_6uu_ptx"}
!4401 = distinct !{!4401, !4400, !"_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implhECsgy7pbN39oAf_6uu_ptx: argument 1"}
!4402 = !{!4403, !4396, !4391, !4388}
!4403 = distinct !{!4403, !4400, !"_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implhECsgy7pbN39oAf_6uu_ptx: argument 2"}
!4404 = !{!4405}
!4405 = distinct !{!4405, !4406, !"_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB28_14read_buf_exact0ECsgy7pbN39oAf_6uu_ptx: argument 0"}
!4406 = distinct !{!4406, !"_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB28_14read_buf_exact0ECsgy7pbN39oAf_6uu_ptx"}
!4407 = !{!4408}
!4408 = distinct !{!4408, !4406, !"_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB28_14read_buf_exact0ECsgy7pbN39oAf_6uu_ptx: argument 1"}
!4409 = !{!4410, !4412, !4405, !4408}
!4410 = distinct !{!4410, !4411, !"_RNvMs5_NtNtCs6JMX4GRUq9U_4core2io12borrowed_bufINtB5_14BorrowedCursorhE6appendCsgy7pbN39oAf_6uu_ptx: argument 0"}
!4411 = distinct !{!4411, !"_RNvMs5_NtNtCs6JMX4GRUq9U_4core2io12borrowed_bufINtB5_14BorrowedCursorhE6appendCsgy7pbN39oAf_6uu_ptx"}
!4412 = distinct !{!4412, !4413, !"_RNCNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB7_9BufReaderINtNtBd_5boxed3BoxDNtNtBb_4read4ReadEL_EEB1s_14read_buf_exact0Csgy7pbN39oAf_6uu_ptx: argument 0"}
!4413 = distinct !{!4413, !"_RNCNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB7_9BufReaderINtNtBd_5boxed3BoxDNtNtBb_4read4ReadEL_EEB1s_14read_buf_exact0Csgy7pbN39oAf_6uu_ptx"}
!4414 = !{!4415, !4417}
!4415 = distinct !{!4415, !4416, !"_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsgy7pbN39oAf_6uu_ptx: argument 0"}
!4416 = distinct !{!4416, !"_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsgy7pbN39oAf_6uu_ptx"}
!4417 = distinct !{!4417, !4416, !"_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsgy7pbN39oAf_6uu_ptx: argument 1"}
!4418 = !{!4419, !4405, !4408}
!4419 = distinct !{!4419, !4416, !"_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsgy7pbN39oAf_6uu_ptx: argument 2"}
!4420 = !{!4421}
!4421 = distinct !{!4421, !4422, !"_RINvNtNtCs7tKScEop1B6_5alloc2io4read22default_read_buf_exactINtNtNtB4_8buffered9bufreader9BufReaderINtNtB6_5boxed3BoxDNtB2_4ReadEL_EEECsgy7pbN39oAf_6uu_ptx: argument 0"}
!4422 = distinct !{!4422, !"_RINvNtNtCs7tKScEop1B6_5alloc2io4read22default_read_buf_exactINtNtNtB4_8buffered9bufreader9BufReaderINtNtB6_5boxed3BoxDNtB2_4ReadEL_EEECsgy7pbN39oAf_6uu_ptx"}
!4423 = !{!4424}
!4424 = distinct !{!4424, !4422, !"_RINvNtNtCs7tKScEop1B6_5alloc2io4read22default_read_buf_exactINtNtNtB4_8buffered9bufreader9BufReaderINtNtB6_5boxed3BoxDNtB2_4ReadEL_EEECsgy7pbN39oAf_6uu_ptx: argument 1"}
!4425 = !{!4426}
!4426 = distinct !{!4426, !4427, !"_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB1q_8read_bufCsgy7pbN39oAf_6uu_ptx: argument 0"}
!4427 = distinct !{!4427, !"_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB1q_8read_bufCsgy7pbN39oAf_6uu_ptx"}
!4428 = !{!4429}
!4429 = distinct !{!4429, !4427, !"_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB1q_8read_bufCsgy7pbN39oAf_6uu_ptx: argument 1"}
!4430 = !{!4431}
!4431 = distinct !{!4431, !4432, !"_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx: argument 1"}
!4432 = distinct !{!4432, !"_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx"}
!4433 = !{!4434, !4431, !4435, !4426, !4429, !4421, !4424}
!4434 = distinct !{!4434, !4432, !"_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx: argument 0"}
!4435 = distinct !{!4435, !4432, !"_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx: argument 2"}
!4436 = !{!4437, !4439, !4434, !4431, !4435, !4426, !4429, !4421}
!4437 = distinct !{!4437, !4438, !"_RNvXs0_NtNtCs7tKScEop1B6_5alloc2io5implsINtNtB9_5boxed3BoxDNtNtB7_4read4ReadEL_EBV_8read_bufCsgy7pbN39oAf_6uu_ptx: argument 0"}
!4438 = distinct !{!4438, !"_RNvXs0_NtNtCs7tKScEop1B6_5alloc2io5implsINtNtB9_5boxed3BoxDNtNtB7_4read4ReadEL_EBV_8read_bufCsgy7pbN39oAf_6uu_ptx"}
!4439 = distinct !{!4439, !4440, !"_RNvXNtNtCs7tKScEop1B6_5alloc2io5implsQINtNtB6_5boxed3BoxDNtNtB4_4read4ReadEL_EBT_8read_bufCsgy7pbN39oAf_6uu_ptx: argument 0"}
!4440 = distinct !{!4440, !"_RNvXNtNtCs7tKScEop1B6_5alloc2io5implsQINtNtB6_5boxed3BoxDNtNtB4_4read4ReadEL_EBT_8read_bufCsgy7pbN39oAf_6uu_ptx"}
!4441 = !{!4434, !4431, !4435, !4426, !4429, !4421}
!4442 = distinct !{null, ptr @_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB1q_8read_bufCsgy7pbN39oAf_6uu_ptx, null, null, null}
!4443 = !{!4431, !4426, !4421}
!4444 = !{!4434, !4435, !4429, !4424}
!4445 = !{!4426, !4421}
!4446 = !{!4429, !4424}
!4447 = !{!4448, !4426, !4429, !4421}
!4448 = distinct !{!4448, !4449, !"_RNvXs0_NtNtCs7tKScEop1B6_5alloc2io5implsINtNtB9_5boxed3BoxDNtNtB7_4read4ReadEL_EBV_8read_bufCsgy7pbN39oAf_6uu_ptx: argument 0"}
!4449 = distinct !{!4449, !"_RNvXs0_NtNtCs7tKScEop1B6_5alloc2io5implsINtNtB9_5boxed3BoxDNtNtB7_4read4ReadEL_EBV_8read_bufCsgy7pbN39oAf_6uu_ptx"}
!4450 = distinct !{null, ptr @_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB1q_8read_bufCsgy7pbN39oAf_6uu_ptx, null}
!4451 = !{!4452}
!4452 = distinct !{!4452, !4453, !"_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read8read_buf: argument 1"}
!4453 = distinct !{!4453, !"_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read8read_buf"}
!4454 = !{!4452, !4429, !4424}
!4455 = !{!4456, !4458, !4426, !4421}
!4456 = distinct !{!4456, !4457, !"_RNvMs5_NtNtCs6JMX4GRUq9U_4core2io12borrowed_bufINtB5_14BorrowedCursorhE6appendCsgy7pbN39oAf_6uu_ptx: argument 0"}
!4457 = distinct !{!4457, !"_RNvMs5_NtNtCs6JMX4GRUq9U_4core2io12borrowed_bufINtB5_14BorrowedCursorhE6appendCsgy7pbN39oAf_6uu_ptx"}
!4458 = distinct !{!4458, !4453, !"_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read8read_buf: argument 0"}
!4459 = !{!4460, !4462}
!4460 = distinct !{!4460, !4461, !"_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsgy7pbN39oAf_6uu_ptx: argument 0"}
!4461 = distinct !{!4461, !"_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsgy7pbN39oAf_6uu_ptx"}
!4462 = distinct !{!4462, !4461, !"_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsgy7pbN39oAf_6uu_ptx: argument 1"}
!4463 = !{!4464, !4458, !4452, !4426, !4429, !4421}
!4464 = distinct !{!4464, !4461, !"_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsgy7pbN39oAf_6uu_ptx: argument 2"}
!4465 = distinct !{null, null}
!4466 = !{!4421, !4424}
!4467 = !{!4468}
!4468 = distinct !{!4468, !4469, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsgy7pbN39oAf_6uu_ptx: argument 0"}
!4469 = distinct !{!4469, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsgy7pbN39oAf_6uu_ptx"}
!4470 = !{!4471}
!4471 = distinct !{!4471, !4472, !"_RINvNtNtCs7tKScEop1B6_5alloc2io4read16append_to_stringNCNvXs4_NtNtB4_8buffered9bufreaderINtBY_9BufReaderINtNtB6_5boxed3BoxDNtB2_4ReadEL_EEB1X_14read_to_string0ECsgy7pbN39oAf_6uu_ptx: argument 0"}
!4472 = distinct !{!4472, !"_RINvNtNtCs7tKScEop1B6_5alloc2io4read16append_to_stringNCNvXs4_NtNtB4_8buffered9bufreaderINtBY_9BufReaderINtNtB6_5boxed3BoxDNtB2_4ReadEL_EEB1X_14read_to_string0ECsgy7pbN39oAf_6uu_ptx"}
!4473 = !{!4474}
!4474 = distinct !{!4474, !4472, !"_RINvNtNtCs7tKScEop1B6_5alloc2io4read16append_to_stringNCNvXs4_NtNtB4_8buffered9bufreaderINtBY_9BufReaderINtNtB6_5boxed3BoxDNtB2_4ReadEL_EEB1X_14read_to_string0ECsgy7pbN39oAf_6uu_ptx: argument 1"}
!4475 = !{!4471, !4474}
!4476 = !{!4477, !4471}
!4477 = distinct !{!4477, !4478, !"_RNCINvNtNtCs7tKScEop1B6_5alloc2io4read16append_to_stringNCNvXs4_NtNtB6_8buffered9bufreaderINtB10_9BufReaderINtNtB8_5boxed3BoxDNtB4_4ReadEL_EEB20_14read_to_string0E0Csgy7pbN39oAf_6uu_ptx: argument 0"}
!4478 = distinct !{!4478, !"_RNCINvNtNtCs7tKScEop1B6_5alloc2io4read16append_to_stringNCNvXs4_NtNtB6_8buffered9bufreaderINtB10_9BufReaderINtNtB8_5boxed3BoxDNtB4_4ReadEL_EEB20_14read_to_string0E0Csgy7pbN39oAf_6uu_ptx"}
!4479 = !{!4480}
!4480 = distinct !{!4480, !4481, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgy7pbN39oAf_6uu_ptx: argument 0"}
!4481 = distinct !{!4481, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgy7pbN39oAf_6uu_ptx"}
!4482 = !{!4483, !4480}
!4483 = distinct !{!4483, !4484, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgy7pbN39oAf_6uu_ptx: argument 0"}
!4484 = distinct !{!4484, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgy7pbN39oAf_6uu_ptx"}
!4485 = distinct !{null}
!4486 = !{!4487}
!4487 = distinct !{!4487, !4488, !"_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx: argument 1"}
!4488 = distinct !{!4488, !"_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx"}
!4489 = !{!4490}
!4490 = distinct !{!4490, !4488, !"_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx: argument 2"}
!4491 = !{!4492, !4490}
!4492 = distinct !{!4492, !4488, !"_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx: argument 0"}
!4493 = !{!4492, !4487, !4490}
!4494 = !{!4495, !4492, !4487}
!4495 = distinct !{!4495, !4496, !"_RNvXNtNtCs7tKScEop1B6_5alloc2io5implsQINtNtB6_5boxed3BoxDNtNtB4_4read4ReadEL_EBT_8read_bufCsgy7pbN39oAf_6uu_ptx: argument 0"}
!4496 = distinct !{!4496, !"_RNvXNtNtCs7tKScEop1B6_5alloc2io5implsQINtNtB6_5boxed3BoxDNtNtB4_4read4ReadEL_EBT_8read_bufCsgy7pbN39oAf_6uu_ptx"}
!4497 = !{!4498, !4495, !4492, !4487, !4490}
!4498 = distinct !{!4498, !4499, !"_RNvXs0_NtNtCs7tKScEop1B6_5alloc2io5implsINtNtB9_5boxed3BoxDNtNtB7_4read4ReadEL_EBV_8read_bufCsgy7pbN39oAf_6uu_ptx: argument 0"}
!4499 = distinct !{!4499, !"_RNvXs0_NtNtCs7tKScEop1B6_5alloc2io5implsINtNtB9_5boxed3BoxDNtNtB7_4read4ReadEL_EBV_8read_bufCsgy7pbN39oAf_6uu_ptx"}
!4500 = !{!4501}
!4501 = distinct !{!4501, !4502, !"_RNvXs0_NtNtCs7tKScEop1B6_5alloc2io5implsINtNtB9_5boxed3BoxDNtNtB7_4read4ReadEL_EBV_4readCsgy7pbN39oAf_6uu_ptx: argument 0"}
!4502 = distinct !{!4502, !"_RNvXs0_NtNtCs7tKScEop1B6_5alloc2io5implsINtNtB9_5boxed3BoxDNtNtB7_4read4ReadEL_EBV_4readCsgy7pbN39oAf_6uu_ptx"}
!4503 = distinct !{null}
!4504 = !{!4505}
!4505 = distinct !{!4505, !4506, !"_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read: argument 1"}
!4506 = distinct !{!4506, !"_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read"}
!4507 = !{!4508, !4505}
!4508 = distinct !{!4508, !4506, !"_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read: argument 0"}
!4509 = !{!4508}
!4510 = !{!4511, !4513}
!4511 = distinct !{!4511, !4512, !"_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implhECsgy7pbN39oAf_6uu_ptx: argument 0"}
!4512 = distinct !{!4512, !"_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implhECsgy7pbN39oAf_6uu_ptx"}
!4513 = distinct !{!4513, !4512, !"_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implhECsgy7pbN39oAf_6uu_ptx: argument 1"}
!4514 = !{!4515, !4508}
!4515 = distinct !{!4515, !4512, !"_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implhECsgy7pbN39oAf_6uu_ptx: argument 2"}
!4516 = !{!4517}
!4517 = distinct !{!4517, !4518, !"_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx: argument 1"}
!4518 = distinct !{!4518, !"_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx"}
!4519 = !{!4520}
!4520 = distinct !{!4520, !4518, !"_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx: argument 2"}
!4521 = !{!4522, !4520}
!4522 = distinct !{!4522, !4518, !"_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx: argument 0"}
!4523 = !{!4522, !4517, !4520}
!4524 = !{!4525, !4522, !4517}
!4525 = distinct !{!4525, !4526, !"_RNvXNtNtCs7tKScEop1B6_5alloc2io5implsQINtNtB6_5boxed3BoxDNtNtB4_4read4ReadEL_EBT_8read_bufCsgy7pbN39oAf_6uu_ptx: argument 0"}
!4526 = distinct !{!4526, !"_RNvXNtNtCs7tKScEop1B6_5alloc2io5implsQINtNtB6_5boxed3BoxDNtNtB4_4read4ReadEL_EBT_8read_bufCsgy7pbN39oAf_6uu_ptx"}
!4527 = !{!4528, !4525, !4522, !4517, !4520}
!4528 = distinct !{!4528, !4529, !"_RNvXs0_NtNtCs7tKScEop1B6_5alloc2io5implsINtNtB9_5boxed3BoxDNtNtB7_4read4ReadEL_EBV_8read_bufCsgy7pbN39oAf_6uu_ptx: argument 0"}
!4529 = distinct !{!4529, !"_RNvXs0_NtNtCs7tKScEop1B6_5alloc2io5implsINtNtB9_5boxed3BoxDNtNtB7_4read4ReadEL_EBV_8read_bufCsgy7pbN39oAf_6uu_ptx"}
end_hunk_1
