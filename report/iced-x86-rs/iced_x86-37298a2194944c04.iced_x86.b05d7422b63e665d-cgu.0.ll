Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iced-x86-rs/original/iced_x86-37298a2194944c04.iced_x86.b05d7422b63e665d-cgu.0?download=true
inline.NumInlined: 5815
inline.NumDeleted: 1335
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter15format_mnemonic:bb.a
_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter13format_prefix.exit177: ; preds = %bb.ba, %bb.bb
  %i.jo = phi i32 [ %i.jn, %bb.bb ], [ %.pre.i169, %bb.ba ]
  %i.jp = and i32 %.val, 33
  %or.cond.i170 = icmp eq i32 %i.jp, 0            ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jh, i64 40
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  %.sroa.0.0.in.v.i171 = select i1 %or.cond.i170, i64 8, i64 32
  %.sroa.0.0.in.i172 = getelementptr inbounds nuw i8, ptr %i.jh, i64 %.sroa.0.0.in.v.i171
  %.sroa.0.0.i173 = load ptr, ptr %.sroa.0.0.in.i172, align 8, !alias.scope !11984, !nonnull !21, !noundef !21
  %.val.i174 = load i64, ptr %i.jr, align 8, !alias.scope !11984 ; 3 uses
  %.val1.i175 = load i64, ptr %i.jq, align 8, !alias.scope !11984
  %.sroa.3.0.i176 = select i1 %or.cond.i170, i64 %.val.i174, i64 %.val1.i175
  tail call void %.val30(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i173, i64 noundef %.sroa.3.0.i176, i8 noundef 9) #45, !noalias !11987, !inline_history !11929
  %i.js = icmp sgt i64 %.val.i174, -1
  tail call void @llvm.assume(i1 %i.js)
  %i.jt = trunc i64 %.val.i174 to i32
  %i.ju = add i32 %i.jo, %i.jt
  store i32 %i.ju, ptr %5, align 4, !alias.scope !11983
  store i8 1, ptr %i.a, align 1, !alias.scope !11985
  br label %bb.bc

bb.bc:                                            ; preds = %bb.az, %bb.ar, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter13format_prefix.exit177, %bb.c, %bb.b, %bb.a
  %i.jv = and i32 %6, 2
  %i.jw = icmp eq i32 %i.jv, 0
  br i1 %i.jw, label %bb.bd, label %bb.bk

bb.bd:                                            ; preds = %bb.bc
  %i.jx = load i8, ptr %i.a, align 1, !range !27, !noundef !21
  %i.jy = trunc nuw i8 %i.jx to i1
  br i1 %i.jy, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bf, %bb.bd
  %i.jz = load ptr, ptr %4, align 8, !nonnull !21, !align !25, !noundef !21 ; 5 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.kb = load i16, ptr %i.ka, align 8, !noundef !21 ; 2 uses
  %i.kc = icmp sgt i16 %i.kb, -1
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ke = load i32, ptr %i.kd, align 8, !noundef !21 ; 3 uses
  br i1 %i.kc, label %bb.bg, label %bb.bh

bb.bf:                                            ; preds = %bb.bd
  %i.kf = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.kg = load ptr, ptr %i.kf, align 8, !invariant.load !21, !nonnull !21
  tail call void %i.kg(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0) #45
  %i.kh = load i32, ptr %5, align 4, !noundef !21
  %i.ki = add i32 %i.kh, 1
  store i32 %i.ki, ptr %5, align 4
  br label %bb.be

bb.bg:                                            ; preds = %bb.be
  %i.kj = and i32 %i.ke, 34
  %or.cond26 = icmp eq i32 %i.kj, 0               ; 2 uses
  %.sroa.313.0.in.v = select i1 %or.cond26, i64 16, i64 40
  %.sroa.313.0.in = getelementptr inbounds nuw i8, ptr %i.jz, i64 %.sroa.313.0.in.v
  %.sroa.012.0.in.v = select i1 %or.cond26, i64 8, i64 32
  %.sroa.012.0.in = getelementptr inbounds nuw i8, ptr %i.jz, i64 %.sroa.012.0.in.v
  %.sroa.012.0 = load ptr, ptr %.sroa.012.0.in, align 8, !nonnull !21, !noundef !21
  %.sroa.313.0 = load i64, ptr %.sroa.313.0.in, align 8, !noundef !21
  %i.kk = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.kl = load ptr, ptr %i.kk, align 8, !invariant.load !21, !nonnull !21
  tail call void %i.kl(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.012.0, i64 noundef %.sroa.313.0) #45
  br label %bb.bi

bb.bh:                                            ; preds = %bb.be
  %i.km = and i32 %i.ke, 40
  %or.cond27 = icmp eq i32 %i.km, 0               ; 2 uses
  %.sroa.3.0.in.v = select i1 %or.cond27, i64 16, i64 40
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %i.jz, i64 %.sroa.3.0.in.v
  %.sroa.011.0.in.v = select i1 %or.cond27, i64 8, i64 32
  %.sroa.011.0.in = getelementptr inbounds nuw i8, ptr %i.jz, i64 %.sroa.011.0.in.v
  %.sroa.011.0 = load ptr, ptr %.sroa.011.0.in, align 8, !nonnull !21, !noundef !21
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in, align 8, !noundef !21
  %i.kn = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ko = load ptr, ptr %i.kn, align 8, !invariant.load !21, !nonnull !21
  tail call void %i.ko(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.011.0, i64 noundef %.sroa.3.0, i8 noundef 1) #45
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  %i.kq = load i64, ptr %i.kp, align 8, !noundef !21 ; 2 uses
  %i.kr = icmp sgt i64 %i.kq, -1
  tail call void @llvm.assume(i1 %i.kr)
  %i.ks = trunc i64 %i.kq to i32
  %i.kt = load i32, ptr %5, align 4, !noundef !21
  %i.ku = add i32 %i.kt, %i.ks                    ; 2 uses
  store i32 %i.ku, ptr %5, align 4
  %i.kv = and i16 %i.kb, 512
  %i.kw = icmp eq i16 %i.kv, 0
  br i1 %i.kw, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.kx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ky = load ptr, ptr %i.kx, align 8, !invariant.load !21, !nonnull !21
  tail call void %i.ky(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0) #45
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.la = load ptr, ptr %i.kz, align 8, !nonnull !21, !align !25, !noundef !21 ; 3 uses
  %i.lb = and i32 %i.ke, 34
  %or.cond28 = icmp eq i32 %i.lb, 0               ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.la, i64 472
  %i.ld = getelementptr inbounds nuw i8, ptr %i.la, i64 448 ; 2 uses
  %.sroa.315.0.in = select i1 %or.cond28, ptr %i.ld, ptr %i.lc
  %.sroa.014.0.in.v = select i1 %or.cond28, i64 440, i64 464
  %.sroa.014.0.in = getelementptr inbounds nuw i8, ptr %i.la, i64 %.sroa.014.0.in.v
  %.sroa.014.0 = load ptr, ptr %.sroa.014.0.in, align 8, !nonnull !21, !noundef !21
  %.sroa.315.0 = load i64, ptr %.sroa.315.0.in, align 8, !noundef !21
  %i.le = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.lf = load ptr, ptr %i.le, align 8, !invariant.load !21, !nonnull !21
  tail call void %i.lf(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.014.0, i64 noundef %.sroa.315.0) #45
  %i.lg = load i64, ptr %i.ld, align 8, !noundef !21 ; 2 uses
  %i.lh = icmp sgt i64 %i.lg, -1
  tail call void @llvm.assume(i1 %i.lh)
  %i.li = trunc i64 %i.lg to i32
  %i.lj = add i32 %i.ku, 1
  %i.lk = add i32 %i.lj, %i.li
  store i32 %i.lk, ptr %5, align 4
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter23format_unsigned_integer(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) initializes((16, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(264) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 30 uses
  store i64 0, ptr %i.a, align 8
  %i.b = and i32 %5, 1
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12073)
  %i.d = load i64, ptr %0, align 8, !range !22, !alias.scope !12074, !noundef !21
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit, !prof !32

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1)
  br label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit

_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.b, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !12073, !nonnull !21, !noundef !21
  store i8 45, ptr %i.g, align 1, !noalias !12073
  store i64 1, ptr %i.a, align 8, !alias.scope !12073
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit
  %i.h = phi i64 [ 0, %bb.a ], [ 1, %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit ] ; 22 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 49
  %i.j = load i8, ptr %i.i, align 1, !range !40, !noundef !21
  switch i8 %i.j, label %default.unreachable109 [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.n
    i8 3, label %bb.o
  ]

default.unreachable109:                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.k = and i32 %5, 4
  %i.l = icmp ne i32 %i.k, 0
  %i.m = icmp ult i64 %3, 10
  %or.cond = and i1 %i.m, %i.l
  br i1 %or.cond, label %bb.ah, label %bb.v

bb.f:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %2, align 8, !nonnull !21, !noundef !21
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noundef !21 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12075)
  %i.q = load i64, ptr %0, align 8, !range !22, !alias.scope !12076, !noundef !21
  %i.r = sub nsw i64 %i.q, %i.h
  %i.s = icmp ugt i64 %i.p, %i.r
  br i1 %i.s, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.i, !prof !32

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i: ; preds = %bb.f
  tail call fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.h, i64 noundef %i.p, i64 noundef 1, i64 noundef 1)
  %i.t = load i64, ptr %i.a, align 8, !alias.scope !12075, !noundef !21 ; 2 uses
  %i.u = icmp sgt i64 %i.t, -1
  tail call void @llvm.assume(i1 %i.u)
  br label %bb.g

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.i: ; preds = %bb.f
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit, label %bb.g

bb.g:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i
  %i.v = phi i64 [ %i.t, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i ], [ %i.h, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !12075, !nonnull !21, !noundef !21
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull readonly align 1 %i.n, i64 %i.p, i1 false), !noalias !12075
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.i, %bb.g
  %i.z = phi i64 [ %i.v, %bb.g ], [ %i.h, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.i ]
  %i.aa = add i64 %i.z, %i.p                      ; 3 uses
  store i64 %i.aa, ptr %i.a, align 8, !alias.scope !12075
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ac = load i8, ptr %i.ab, align 8, !noundef !21 ; 3 uses
  %i.ad = zext i8 %i.ac to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !21, !noundef !21
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !21 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12077)
  %i.ai = icmp ult i64 %3, 10
  br i1 %i.ai, label %._crit_edge.thread.i, label %.lr.ph.i

._crit_edge.thread.i:                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit
  %.not32.i = icmp ne i8 %i.ac, 0
  %6 = icmp ne i64 %i.ah, 0
  %invariant.op33.i = and i1 %.not32.i, %6
  br label %.lr.ph22.i

.lr.ph.i:                                         ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit, %.lr.ph.i
  %.sroa.0.019.i = phi i32 [ %i.ak, %.lr.ph.i ], [ 1, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit ]
  %.sroa.04.018.i = phi i64 [ %i.aj, %.lr.ph.i ], [ %3, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit ] ; 2 uses
  %i.aj = udiv i64 %.sroa.04.018.i, 10
  %i.ak = add i32 %.sroa.0.019.i, 1               ; 3 uses
  %i.al = icmp ult i64 %.sroa.04.018.i, 100
  br i1 %i.al, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %.not.i8 = icmp ne i8 %i.ac, 0
  %7 = icmp ne i64 %i.ah, 0
  %invariant.op.i = and i1 %.not.i8, %7
  %.not24.i = icmp eq i32 %i.ak, 0
  br i1 %.not24.i, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter13write_decimal.exit, label %.lr.ph22.i

.lr.ph22.i:                                       ; preds = %._crit_edge.i, %._crit_edge.thread.i
  %invariant.op36.i = phi i1 [ %invariant.op33.i, %._crit_edge.thread.i ], [ %invariant.op.i, %._crit_edge.i ]
  %.sroa.0.0.lcssa35.i = phi i32 [ 1, %._crit_edge.thread.i ], [ %i.ak, %._crit_edge.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %wide.trip.count.i = zext i32 %.sroa.0.0.lcssa35.i to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.k, %.lr.ph22.i
  %i.an = phi i64 [ %i.aa, %.lr.ph22.i ], [ %i.bi, %bb.k ] ; 7 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph22.i ], [ %indvars.iv.next.i, %bb.k ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ao = trunc nuw i64 %indvars.iv.i to i32
  %i.ap = xor i32 %i.ao, -1
  %i.aq = add i32 %.sroa.0.0.lcssa35.i, %i.ap     ; 4 uses
  %i.ar = icmp ult i32 %i.aq, 20
  br i1 %i.ar, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = icmp sgt i64 %i.an, -1
  tail call void @llvm.assume(i1 %i.as)
  %i.at = load i64, ptr %0, align 8, !range !22, !alias.scope !12078, !noundef !21
  %i.au = icmp eq i64 %i.at, %i.an
  br i1 %i.au, label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit16.sink.split.i, label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit16.i, !prof !32

_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit16.sink.split.i: ; preds = %bb.j, %bb.i
  %.sink.ph.i = phi i8 [ %i.be, %bb.j ], [ 48, %bb.i ]
  tail call fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.an, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !12079
  br label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit16.i

_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit16.i: ; preds = %bb.j, %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit16.sink.split.i, %bb.i
  %.sink.i = phi i8 [ %i.be, %bb.j ], [ 48, %bb.i ], [ %.sink.ph.i, %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit16.sink.split.i ]
  %i.av = load ptr, ptr %i.am, align 8, !alias.scope !12077, !nonnull !21, !noundef !21 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.an
  store i8 %.sink.i, ptr %i.aw, align 1, !noalias !12080
  %storemerge.i = add nuw i64 %i.an, 1            ; 7 uses
  store i64 %storemerge.i, ptr %i.a, align 8, !alias.scope !12077
  %i.ax = icmp ne i32 %i.aq, 0
  %or.cond.reass.i = and i1 %invariant.op36.i, %i.ax
  br i1 %or.cond.reass.i, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ay = zext nneg i32 %i.aq to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmt4DIVS, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 8, !noalias !12080, !noundef !21
  %i.bb = udiv i64 %3, %i.ba
  %i.bc = urem i64 %i.bb, 10
  %i.bd = trunc nuw nsw i64 %i.bc to i8
  %i.be = or disjoint i8 %i.bd, 48                ; 2 uses
  %i.bf = icmp sgt i64 %i.an, -1
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = load i64, ptr %0, align 8, !range !22, !alias.scope !12081, !noundef !21
  %i.bh = icmp eq i64 %i.bg, %i.an
  br i1 %i.bh, label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit16.sink.split.i, label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit16.i, !prof !32

bb.k:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit.i, %bb.l, %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit16.i
  %i.bi = phi i64 [ %i.bu, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit.i ], [ %storemerge.i, %bb.l ], [ %storemerge.i, %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit16.i ] ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter13write_decimal.exit, label %bb.h

bb.l:                                             ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit16.i
  %i.bj = urem i32 %i.aq, %i.ad
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.m, label %bb.k

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12082)
  %i.bl = load i64, ptr %0, align 8, !range !22, !alias.scope !12083, !noundef !21
  %i.bm = sub i64 %i.bl, %storemerge.i
  %i.bn = icmp ugt i64 %i.ah, %i.bm
  br i1 %i.bn, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.i17.i, !prof !32

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i.i: ; preds = %bb.m
  tail call fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %storemerge.i, i64 noundef %i.ah, i64 noundef 1, i64 noundef 1), !noalias !12079
  %i.bo = load i64, ptr %i.a, align 8, !alias.scope !12084, !noundef !21 ; 2 uses
  %i.bp = icmp sgt i64 %i.bo, -1
  tail call void @llvm.assume(i1 %i.bp)
  %.pre.i = load ptr, ptr %i.am, align 8, !alias.scope !12084
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit.i

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.i17.i: ; preds = %bb.m
  %i.bq = icmp sgt i64 %storemerge.i, -1
  tail call void @llvm.assume(i1 %i.bq)
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit.i

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit.i: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.i17.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i.i
  %i.br = phi ptr [ %.pre.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i.i ], [ %i.av, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.i17.i ]
  %i.bs = phi i64 [ %i.bo, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i.i ], [ %storemerge.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.i17.i ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bs
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bt, ptr nonnull readonly align 1 %i.af, i64 %i.ah, i1 false), !noalias !12084
  %i.bu = add i64 %i.bs, %i.ah                    ; 2 uses
  store i64 %i.bu, ptr %i.a, align 8, !alias.scope !12084
  br label %bb.k

_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter13write_decimal.exit: ; preds = %bb.k, %._crit_edge.i
  %8 = phi i64 [ %i.aa, %._crit_edge.i ], [ %i.bi, %bb.k ]
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.aj

bb.n:                                             ; preds = %bb.d
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.by = load i8, ptr %i.bx, align 8, !noundef !21 ; 2 uses
  %i.bz = zext i8 %i.by to i32
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !nonnull !21, !noundef !21
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cd = load i64, ptr %i.cc, align 8, !noundef !21 ; 5 uses
  %i.ce = and i32 %5, 2
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %.thread, label %bb.al

.thread:                                          ; preds = %bb.n
  %i.cg = load ptr, ptr %2, align 8, !nonnull !21, !noundef !21
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !noundef !21
  br label %.preheader.i71.preheader

bb.o:                                             ; preds = %bb.d
  %i.cj = load ptr, ptr %2, align 8, !nonnull !21, !noundef !21
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !noundef !21 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12085)
  %i.cm = load i64, ptr %0, align 8, !range !22, !alias.scope !12086, !noundef !21
  %i.cn = sub nsw i64 %i.cm, %i.h
  %i.co = icmp ugt i64 %i.cl, %i.cn
  br i1 %i.co, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i11, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.i9, !prof !32

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i11: ; preds = %bb.o
  tail call fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.h, i64 noundef %i.cl, i64 noundef 1, i64 noundef 1)
  %i.cp = load i64, ptr %i.a, align 8, !alias.scope !12085, !noundef !21 ; 2 uses
  %i.cq = icmp sgt i64 %i.cp, -1
  tail call void @llvm.assume(i1 %i.cq)
  br label %bb.p

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.i9: ; preds = %bb.o
  %.not.i10 = icmp eq i64 %i.cl, 0
  br i1 %.not.i10, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit12, label %bb.p

bb.p:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.i9, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i11
  %i.cr = phi i64 [ %i.cp, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i11 ], [ %i.h, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.i9 ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !alias.scope !12085, !nonnull !21, !noundef !21
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cr
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cu, ptr nonnull readonly align 1 %i.cj, i64 %i.cl, i1 false), !noalias !12085
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit12

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit12: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.i9, %bb.p
  %i.cv = phi i64 [ %i.cr, %bb.p ], [ %i.h, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.i9 ]
  %i.cw = add i64 %i.cv, %i.cl                    ; 3 uses
  store i64 %i.cw, ptr %i.a, align 8, !alias.scope !12085
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.cy = load i8, ptr %i.cx, align 8, !noundef !21 ; 2 uses
  %i.cz = zext i8 %i.cy to i32
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.db = load ptr, ptr %i.da, align 8, !nonnull !21, !noundef !21
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.dd = load i64, ptr %i.dc, align 8, !noundef !21 ; 5 uses
  %i.de = and i32 %5, 2
  %i.df = icmp eq i32 %i.de, 0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12087)
  %i.dg = icmp eq i32 %4, 0
  %i.dh = or i1 %i.dg, %i.df
  br i1 %i.dh, label %.preheader.preheader.i, label %.lr.ph.i13

.preheader.preheader.i:                           ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit12
  %i.di = lshr i64 %3, 1
  %i.dj = tail call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %i.di, i1 false)
  %i.dk = trunc nuw nsw i64 %i.dj to i32
  %i.dl = sub nuw nsw i32 65, %i.dk
  br label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %.preheader.preheader.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit12
  %.sroa.0.1.i = phi i32 [ %4, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit12 ], [ %i.dl, %.preheader.preheader.i ] ; 3 uses
  %i.dm = icmp ne i64 %i.dd, 0
  %.not.i14 = icmp ne i8 %i.cy, 0
  %invariant.op.i15 = and i1 %.not.i14, %i.dm
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %wide.trip.count23.i = zext i32 %.sroa.0.1.i to i64 ; 2 uses
  br i1 %invariant.op.i15, label %.lr.ph.split.i, label %.lr.ph.split.us.preheader.i

.lr.ph.split.us.preheader.i:                      ; preds = %.lr.ph.i13
  %.pre26.i = load i64, ptr %0, align 8, !range !22, !alias.scope !12088
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit.us.i, %.lr.ph.split.us.preheader.i
  %i.do = phi i64 [ %.pre26.i, %.lr.ph.split.us.preheader.i ], [ %i.eb, %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit.us.i ] ; 3 uses
  %i.dp = phi i64 [ %i.cw, %.lr.ph.split.us.preheader.i ], [ %i.ef, %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit.us.i ] ; 4 uses
  %indvars.iv.i16 = phi i64 [ 0, %.lr.ph.split.us.preheader.i ], [ %indvars.iv.next.i17, %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit.us.i ] ; 2 uses
  %indvars.iv.next.i17 = add nuw nsw i64 %indvars.iv.i16, 1 ; 2 uses
  %i.dq = trunc nuw i64 %indvars.iv.i16 to i32
  %i.dr = xor i32 %i.dq, -1
  %i.ds = add i32 %.sroa.0.1.i, %i.dr             ; 2 uses
  %i.dt = icmp ugt i32 %i.ds, 63
  %i.du = zext nneg i32 %i.ds to i64
  %i.dv = lshr i64 %3, %i.du
  %i.dw = trunc i64 %i.dv to i8
  %i.dx = and i8 %i.dw, 1
  %i.dy = or disjoint i8 %i.dx, 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12089)
  %i.dz = icmp sgt i64 %i.dp, -1
  tail call void @llvm.assume(i1 %i.dz)
  %i.ea = icmp eq i64 %i.do, %i.dp
  br i1 %i.ea, label %bb.q, label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit.us.i, !prof !32

bb.q:                                             ; preds = %.lr.ph.split.us.i
  tail call fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.do, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !12090
  %.pre25.i = load i64, ptr %0, align 8, !range !22, !alias.scope !12088
  br label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit.us.i

_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit.us.i: ; preds = %bb.q, %.lr.ph.split.us.i
  %i.eb = phi i64 [ %.pre25.i, %bb.q ], [ %i.do, %.lr.ph.split.us.i ]
  %i.ec = load ptr, ptr %i.dn, align 8, !alias.scope !12091, !nonnull !21, !noundef !21
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.dp
  %i.ee = select i1 %i.dt, i8 48, i8 %i.dy
  store i8 %i.ee, ptr %i.ed, align 1, !noalias !12092
  %i.ef = add nuw i64 %i.dp, 1                    ; 3 uses
  store i64 %i.ef, ptr %i.a, align 8, !alias.scope !12091
  %exitcond.not.i18 = icmp eq i64 %indvars.iv.next.i17, %wide.trip.count23.i
  br i1 %exitcond.not.i18, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter12write_binary.exit, label %.lr.ph.split.us.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i13, %bb.s
  %i.eg = phi i64 [ %i.ew, %bb.s ], [ %i.cw, %.lr.ph.i13 ] ; 4 uses
  %indvars.iv20.i = phi i64 [ %indvars.iv.next21.i, %bb.s ], [ 0, %.lr.ph.i13 ] ; 2 uses
  %indvars.iv.next21.i = add nuw nsw i64 %indvars.iv20.i, 1 ; 2 uses
  %i.eh = trunc nuw i64 %indvars.iv20.i to i32
  %i.ei = xor i32 %i.eh, -1
  %i.ej = add i32 %.sroa.0.1.i, %i.ei             ; 4 uses
  %i.ek = icmp ugt i32 %i.ej, 63
  %i.el = zext nneg i32 %i.ej to i64
  %i.em = lshr i64 %3, %i.el
  %i.en = trunc i64 %i.em to i8
  %i.eo = and i8 %i.en, 1
  %i.ep = or disjoint i8 %i.eo, 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12089)
  %i.eq = load i64, ptr %0, align 8, !range !22, !alias.scope !12088, !noundef !21
  %i.er = icmp eq i64 %i.eq, %i.eg
  br i1 %i.er, label %bb.r, label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit.i, !prof !32

bb.r:                                             ; preds = %.lr.ph.split.i
  tail call fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.eg, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !12090
  br label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit.i

_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit.i: ; preds = %bb.r, %.lr.ph.split.i
  %i.es = load ptr, ptr %i.dn, align 8, !alias.scope !12091, !nonnull !21, !noundef !21 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.eg
  %i.eu = select i1 %i.ek, i8 48, i8 %i.ep
  store i8 %i.eu, ptr %i.et, align 1, !noalias !12092
  %i.ev = add nuw i64 %i.eg, 1                    ; 7 uses
  store i64 %i.ev, ptr %i.a, align 8, !alias.scope !12091
  %.not17.i = icmp eq i32 %i.ej, 0
  br i1 %.not17.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit.i20, %bb.t, %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit.i
  %i.ew = phi i64 [ %i.ev, %bb.t ], [ %i.fi, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit.i20 ], [ %i.ev, %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit.i ] ; 2 uses
  %exitcond24.not.i = icmp eq i64 %indvars.iv.next21.i, %wide.trip.count23.i
  br i1 %exitcond24.not.i, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter12write_binary.exit, label %.lr.ph.split.i

bb.t:                                             ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit.i
  %i.ex = urem i32 %i.ej, %i.cz
  %i.ey = icmp eq i32 %i.ex, 0
  br i1 %i.ey, label %bb.u, label %bb.s

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12093)
  %i.ez = load i64, ptr %0, align 8, !range !22, !alias.scope !12094, !noundef !21
  %i.fa = sub i64 %i.ez, %i.ev
  %i.fb = icmp ugt i64 %i.dd, %i.fa
  br i1 %i.fb, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i.i21, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.i14.i, !prof !32

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i.i21: ; preds = %bb.u
  tail call fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ev, i64 noundef %i.dd, i64 noundef 1, i64 noundef 1), !noalias !12090
  %i.fc = load i64, ptr %i.a, align 8, !alias.scope !12095, !noundef !21 ; 2 uses
  %i.fd = icmp sgt i64 %i.fc, -1
  tail call void @llvm.assume(i1 %i.fd)
  %.pre28.i = load ptr, ptr %i.dn, align 8, !alias.scope !12095
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit.i20

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.i14.i: ; preds = %bb.u
  %i.fe = icmp sgt i64 %i.ev, -1
  tail call void @llvm.assume(i1 %i.fe)
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit.i20

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit.i20: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.i14.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i.i21
  %i.ff = phi ptr [ %.pre28.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i.i21 ], [ %i.es, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.i14.i ]
  %i.fg = phi i64 [ %i.fc, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i.i21 ], [ %i.ev, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.i14.i ] ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fg
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fh, ptr nonnull readonly align 1 %i.db, i64 %i.dd, i1 false), !noalias !12095
  %i.fi = add i64 %i.fg, %i.dd                    ; 2 uses
  store i64 %i.fi, ptr %i.a, align 8, !alias.scope !12095
  br label %bb.s

_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter12write_binary.exit: ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit.us.i, %bb.s
  %i.fj = phi i64 [ %i.ew, %bb.s ], [ %i.ef, %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit.us.i ]
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 24
end_hunk_0
begin_hunk_1_@_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter23format_unsigned_integer:bb.a
  %.sroa.0.1.i26 = phi i32 [ %i.gk, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit25 ], [ %.sroa.0.0.i, %.preheader.i ] ; 4 uses
  %..i = select i1 %i.gn, i32 55, i32 87
  %i.gx = icmp samesign ult i32 %.sroa.0.1.i26, 17
  %or.cond2.i = select i1 %.sroa.06.0, i1 %i.gx, i1 false
  br i1 %or.cond2.i, label %bb.x, label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %bb.x, %.loopexit.i
  %.sroa.0.2.i = phi i32 [ %.sroa.0.1.i26, %.loopexit.i ], [ %spec.select.i, %bb.x ] ; 2 uses
  %.not.i28 = icmp ne i8 %i.gb, 0
  %i.gy = icmp ne i64 %i.gg, 0
  %invariant.op.i29 = and i1 %.not.i28, %i.gy
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %wide.trip.count.i30 = zext i32 %.sroa.0.2.i to i64
  br label %bb.y

bb.x:                                             ; preds = %.loopexit.i
  %i.ha = shl nuw nsw i32 %.sroa.0.1.i26, 2
  %i.hb = add nuw nsw i32 %i.ha, 60
  %i.hc = and i32 %i.hb, 60
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = lshr i64 %3, %i.hd
  %i.hf = and i64 %i.he, 14
  %i.hg = icmp samesign ugt i64 %i.hf, 9
  %i.hh = zext i1 %i.hg to i32
  %spec.select.i = add nuw nsw i32 %.sroa.0.1.i26, %i.hh
  br label %.lr.ph.i27

bb.y:                                             ; preds = %bb.ae, %.lr.ph.i27
  %i.hi = phi i64 [ %i.fz, %.lr.ph.i27 ], [ %i.ij, %bb.ae ] ; 9 uses
  %indvars.iv.i31 = phi i64 [ 0, %.lr.ph.i27 ], [ %indvars.iv.next.i32, %bb.ae ] ; 2 uses
  %indvars.iv.next.i32 = add nuw nsw i64 %indvars.iv.i31, 1 ; 2 uses
  %i.hj = trunc nuw nsw i64 %indvars.iv.i31 to i32
  %i.hk = xor i32 %i.hj, -1
  %i.hl = add nsw i32 %.sroa.0.2.i, %i.hk         ; 4 uses
  %i.hm = icmp ugt i32 %i.hl, 15
  %i.hn = shl nuw nsw i32 %i.hl, 2
  %i.ho = zext nneg i32 %i.hn to i64
  %i.hp = lshr i64 %3, %i.ho
  %i.hq = trunc i64 %i.hp to i32
  %i.hr = and i32 %i.hq, 15
  %.sroa.014.0.i = select i1 %i.hm, i32 0, i32 %i.hr ; 3 uses
  %i.hs = icmp samesign ugt i32 %.sroa.014.0.i, 9
  br i1 %i.hs, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12099)
  %i.ht = icmp sgt i64 %i.hi, -1
  tail call void @llvm.assume(i1 %i.ht)
  %i.hu = load i64, ptr %0, align 8, !range !22, !alias.scope !12100, !noundef !21
  %i.hv = icmp eq i64 %i.hu, %i.hi
  br i1 %i.hv, label %bb.aa, label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit.i33, !prof !32

bb.aa:                                            ; preds = %bb.z
  tail call fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.hi, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !12101
  br label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit.i33

_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit.i33: ; preds = %bb.aa, %bb.z
  %i.hw = load ptr, ptr %i.gz, align 8, !alias.scope !12102, !nonnull !21, !noundef !21 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.hi
  %i.hy = trunc nuw nsw i32 %.sroa.014.0.i to i8
  %i.hz = or disjoint i8 %i.hy, 48
  store i8 %i.hz, ptr %i.hx, align 1, !noalias !12103
  br label %bb.ad

bb.ab:                                            ; preds = %bb.y
  %i.ia = add nuw nsw i32 %.sroa.014.0.i, %..i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12104)
  %i.ib = icmp sgt i64 %i.hi, -1
  tail call void @llvm.assume(i1 %i.ib)
  %i.ic = load i64, ptr %0, align 8, !range !22, !alias.scope !12105, !noundef !21
  %i.id = icmp eq i64 %i.ic, %i.hi
  br i1 %i.id, label %bb.ac, label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit25.i, !prof !32

bb.ac:                                            ; preds = %bb.ab
  tail call fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.hi, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !12101
  br label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit25.i

_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit25.i: ; preds = %bb.ac, %bb.ab
  %i.ie = load ptr, ptr %i.gz, align 8, !alias.scope !12106, !nonnull !21, !noundef !21 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.hi
  %i.ig = trunc nuw nsw i32 %i.ia to i8
  store i8 %i.ig, ptr %i.if, align 1, !noalias !12107
  br label %bb.ad

bb.ad:                                            ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit25.i, %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit.i33
  %i.ih = phi ptr [ %i.hw, %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit.i33 ], [ %i.ie, %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit25.i ]
  %storemerge.i34 = add nuw i64 %i.hi, 1          ; 7 uses
  store i64 %storemerge.i34, ptr %i.a, align 8, !alias.scope !12098
  %i.ii = icmp ne i32 %i.hl, 0
  %or.cond.reass.i35 = and i1 %invariant.op.i29, %i.ii
  br i1 %or.cond.reass.i35, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit.i38, %bb.af, %bb.ad
  %i.ij = phi i64 [ %i.iv, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit.i38 ], [ %storemerge.i34, %bb.af ], [ %storemerge.i34, %bb.ad ] ; 2 uses
  %exitcond.not.i36 = icmp eq i64 %indvars.iv.next.i32, %wide.trip.count.i30
  br i1 %exitcond.not.i36, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter17write_hexadecimal.exit, label %bb.y

bb.af:                                            ; preds = %bb.ad
  %i.ik = urem i32 %i.hl, %i.gc
  %i.il = icmp eq i32 %i.ik, 0
  br i1 %i.il, label %bb.ag, label %bb.ae

bb.ag:                                            ; preds = %bb.af
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12108)
  %i.im = load i64, ptr %0, align 8, !range !22, !alias.scope !12109, !noundef !21
  %i.in = sub i64 %i.im, %storemerge.i34
  %i.io = icmp ugt i64 %i.gg, %i.in
  br i1 %i.io, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i.i39, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.i26.i, !prof !32

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i.i39: ; preds = %bb.ag
  tail call fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %storemerge.i34, i64 noundef %i.gg, i64 noundef 1, i64 noundef 1), !noalias !12101
  %i.ip = load i64, ptr %i.a, align 8, !alias.scope !12110, !noundef !21 ; 2 uses
  %i.iq = icmp sgt i64 %i.ip, -1
  tail call void @llvm.assume(i1 %i.iq)
  %.pre.i40 = load ptr, ptr %i.gz, align 8, !alias.scope !12110
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit.i38

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.i26.i: ; preds = %bb.ag
  %i.ir = icmp sgt i64 %storemerge.i34, -1
  tail call void @llvm.assume(i1 %i.ir)
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit.i38

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit.i38: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.i26.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i.i39
  %i.is = phi ptr [ %.pre.i40, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i.i39 ], [ %i.ih, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.i26.i ]
  %i.it = phi i64 [ %i.ip, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i.i39 ], [ %storemerge.i34, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.i26.i ] ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.it
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.iu, ptr nonnull readonly align 1 %i.ge, i64 %i.gg, i1 false), !noalias !12110
  %i.iv = add i64 %i.it, %i.gg                    ; 2 uses
  store i64 %i.iv, ptr %i.a, align 8, !alias.scope !12110
  br label %bb.ae

_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter17write_hexadecimal.exit: ; preds = %bb.ae
  %i.iw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ix = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.aj

bb.ah:                                            ; preds = %bb.e
  %.sroa.03.0.in = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.03.0 = load ptr, ptr %.sroa.03.0.in, align 8, !nonnull !21, !noundef !21
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in, align 8, !noundef !21 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12111)
  %i.iy = load i64, ptr %0, align 8, !range !22, !alias.scope !12112, !noundef !21 ; 3 uses
  %i.iz = sub nsw i64 %i.iy, %i.h
  %i.ja = icmp ugt i64 %.sroa.3.0, %i.iz
  br i1 %i.ja, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i43, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.i41, !prof !32

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i43: ; preds = %bb.ah
  tail call fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.h, i64 noundef %.sroa.3.0, i64 noundef 1, i64 noundef 1)
  %i.jb = load i64, ptr %i.a, align 8, !alias.scope !12111, !noundef !21 ; 2 uses
  %i.jc = icmp sgt i64 %i.jb, -1
  tail call void @llvm.assume(i1 %i.jc)
  %.pre.pre = load i64, ptr %0, align 8, !range !22, !alias.scope !12113
  br label %bb.ai

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.i41: ; preds = %bb.ah
  %.not.i42 = icmp eq i64 %.sroa.3.0, 0
  br i1 %.not.i42, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit44, label %bb.ai

bb.ai:                                            ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.i41, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i43
  %.pre = phi i64 [ %.pre.pre, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i43 ], [ %i.iy, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.i41 ]
  %i.jd = phi i64 [ %i.jb, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i43 ], [ %i.h, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.i41 ] ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.jf = load ptr, ptr %i.je, align 8, !alias.scope !12111, !nonnull !21, !noundef !21
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 %i.jd
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jg, ptr nonnull readonly align 1 %.sroa.03.0, i64 %.sroa.3.0, i1 false), !noalias !12111
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit44

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit44: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.i41, %bb.ai
  %i.jh = phi i64 [ %.pre, %bb.ai ], [ %i.iy, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.i41 ] ; 2 uses
  %i.ji = phi i64 [ %i.jd, %bb.ai ], [ %i.h, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.i41 ]
  %i.jj = add i64 %i.ji, %.sroa.3.0               ; 3 uses
  store i64 %i.jj, ptr %i.a, align 8, !alias.scope !12111
  %i.jk = getelementptr inbounds nuw [16 x i8], ptr @_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmt20SMALL_DECIMAL_VALUES, i64 %3
  %i.jl = load ptr, ptr %i.jk, align 8, !nonnull !21, !noundef !21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12114)
  %i.jm = icmp eq i64 %i.jh, %i.jj
  br i1 %i.jm, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i47, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit48, !prof !32

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i47: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit44
  tail call fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.jh, i64 noundef 1, i64 noundef 1, i64 noundef 1)
  %i.jn = load i64, ptr %i.a, align 8, !alias.scope !12114, !noundef !21
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit48

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit48: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit44, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i47
  %.sink119 = phi i64 [ %i.jn, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i47 ], [ %i.jj, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit44 ] ; 3 uses
  %i.jo = icmp sgt i64 %.sink119, -1
  tail call void @llvm.assume(i1 %i.jo)
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.jq = load ptr, ptr %i.jp, align 8, !alias.scope !12114, !nonnull !21, !noundef !21
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 %.sink119
  %i.js = load i8, ptr %i.jl, align 1, !noalias !12114
  store i8 %i.js, ptr %i.jr, align 1, !noalias !12114
  %i.jt = add nuw i64 %.sink119, 1                ; 2 uses
  store i64 %i.jt, ptr %i.a, align 8, !alias.scope !12114
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.jv = getelementptr inbounds nuw i8, ptr %1, i64 88
  br label %bb.aj

bb.aj:                                            ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit48, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter17write_hexadecimal.exit, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter12write_binary.exit, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter11write_octal.exit, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter13write_decimal.exit
  %i.jw = phi i64 [ %i.jt, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit48 ], [ %i.fj, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter12write_binary.exit ], [ %i.ij, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter17write_hexadecimal.exit ], [ %8, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter13write_decimal.exit ], [ %i.ns, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter11write_octal.exit ] ; 5 uses
  %.sroa.7.0.in = phi ptr [ %i.jv, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit48 ], [ %i.fl, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter12write_binary.exit ], [ %i.ix, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter17write_hexadecimal.exit ], [ %i.bw, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter13write_decimal.exit ], [ %i.nu, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter11write_octal.exit ]
  %.sroa.04.0.in = phi ptr [ %i.ju, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit48 ], [ %i.fk, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter12write_binary.exit ], [ %i.iw, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter17write_hexadecimal.exit ], [ %i.bv, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter13write_decimal.exit ], [ %i.nt, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter11write_octal.exit ]
  %.sroa.04.0 = load ptr, ptr %.sroa.04.0.in, align 8, !nonnull !21, !noundef !21
  %.sroa.7.0 = load i64, ptr %.sroa.7.0.in, align 8, !noundef !21 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12115)
  %i.jx = load i64, ptr %0, align 8, !range !22, !alias.scope !12116, !noundef !21
  %i.jy = sub i64 %i.jx, %i.jw
  %i.jz = icmp ugt i64 %.sroa.7.0, %i.jy
  br i1 %i.jz, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i51, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.i49, !prof !32

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i51: ; preds = %bb.aj
  tail call fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.jw, i64 noundef %.sroa.7.0, i64 noundef 1, i64 noundef 1)
  %i.ka = load i64, ptr %i.a, align 8, !alias.scope !12115, !noundef !21 ; 2 uses
  %i.kb = icmp sgt i64 %i.ka, -1
  tail call void @llvm.assume(i1 %i.kb)
  br label %bb.ak

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.i49: ; preds = %bb.aj
  %i.kc = icmp sgt i64 %i.jw, -1
  tail call void @llvm.assume(i1 %i.kc)
  %.not.i50 = icmp eq i64 %.sroa.7.0, 0
  br i1 %.not.i50, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.i49._RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit52_crit_edge, label %bb.ak

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.i49._RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit52_crit_edge: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.i49
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre78 = load ptr, ptr %.phi.trans.insert, align 8
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit52

bb.ak:                                            ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.i49, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i51
  %i.kd = phi i64 [ %i.ka, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i51 ], [ %i.jw, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.i49 ] ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8, !alias.scope !12115, !nonnull !21, !noundef !21 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 %i.kd
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.kg, ptr nonnull readonly align 1 %.sroa.04.0, i64 %.sroa.7.0, i1 false), !noalias !12115
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit52

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit52: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.i49._RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit52_crit_edge, %bb.ak
  %i.kh = phi ptr [ %i.kf, %bb.ak ], [ %.pre78, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.i49._RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit52_crit_edge ]
  %i.ki = phi i64 [ %i.kd, %bb.ak ], [ %i.jw, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.i49._RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit52_crit_edge ]
  %i.kj = add i64 %i.ki, %.sroa.7.0               ; 2 uses
  store i64 %i.kj, ptr %i.a, align 8, !alias.scope !12115
  %i.kk = insertvalue { ptr, i64 } poison, ptr %i.kh, 0
  %i.kl = insertvalue { ptr, i64 } %i.kk, i64 %i.kj, 1
  ret { ptr, i64 } %i.kl

bb.al:                                            ; preds = %bb.n
  %i.km = add i32 %4, 2                           ; 2 uses
  %i.kn = udiv i32 %i.km, 3
  %i.ko = load ptr, ptr %2, align 8, !nonnull !21, !noundef !21 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.kq = load i64, ptr %i.kp, align 8, !noundef !21 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12118)
  %i.kr = icmp ult i32 %i.km, 3
  br i1 %i.kr, label %.preheader.i71.preheader, label %.loopexit.i53

.preheader.i71.preheader:                         ; preds = %.thread, %bb.al
  %i.ks = phi i64 [ %i.ci, %.thread ], [ %i.kq, %bb.al ]
  %i.kt = phi ptr [ %i.cg, %.thread ], [ %i.ko, %bb.al ]
  br label %.preheader.i71

.preheader.i71:                                   ; preds = %.preheader.i71.preheader, %.preheader.i71
  %.sroa.07.0.i = phi i64 [ %i.ku, %.preheader.i71 ], [ %3, %.preheader.i71.preheader ]
  %.sroa.0.0.i72 = phi i32 [ %i.kw, %.preheader.i71 ], [ 1, %.preheader.i71.preheader ] ; 2 uses
  %i.ku = lshr i64 %.sroa.07.0.i, 3               ; 2 uses
  %i.kv = icmp eq i64 %i.ku, 0
  %i.kw = add nuw nsw i32 %.sroa.0.0.i72, 1
  br i1 %i.kv, label %.loopexit.i53, label %.preheader.i71

.loopexit.i53:                                    ; preds = %.preheader.i71, %bb.al
  %i.kx = phi i64 [ %i.kq, %bb.al ], [ %i.ks, %.preheader.i71 ] ; 5 uses
  %i.ky = phi ptr [ %i.ko, %bb.al ], [ %i.kt, %.preheader.i71 ] ; 2 uses
  %.sroa.0.1.i54 = phi i32 [ %i.kn, %bb.al ], [ %.sroa.0.0.i72, %.preheader.i71 ] ; 6 uses
  switch i64 %i.kx, label %bb.ao [
    i64 0, label %.lr.ph.i56
    i64 1, label %bb.an
  ]

.lr.ph.i56:                                       ; preds = %bb.aq, %bb.ap, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit.i55, %.loopexit.i53
  %.pre35.i = phi i64 [ %i.h, %.loopexit.i53 ], [ %i.h, %bb.aq ], [ %i.md, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit.i55 ], [ %i.h, %bb.ap ] ; 2 uses
  %.sroa.0.2.i57 = phi i32 [ %.sroa.0.1.i54, %.loopexit.i53 ], [ %spec.select.i70, %bb.aq ], [ %.sroa.0.1.i54, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit.i55 ], [ %.sroa.0.1.i54, %bb.ap ] ; 3 uses
  %i.kz = icmp ne i64 %i.cd, 0
  %.not.i58 = icmp ne i8 %i.by, 0
  %invariant.op.i59 = and i1 %.not.i58, %i.kz
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %wide.trip.count31.i = zext i32 %.sroa.0.2.i57 to i64 ; 2 uses
  br i1 %invariant.op.i59, label %.lr.ph.split.i67, label %.lr.ph.split.us.preheader.i60

.lr.ph.split.us.preheader.i60:                    ; preds = %.lr.ph.i56
  %.pre34.i = load i64, ptr %0, align 8, !range !22, !alias.scope !12119
  br label %.lr.ph.split.us.i61

.lr.ph.split.us.i61:                              ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit.us.i64, %.lr.ph.split.us.preheader.i60
  %i.lb = phi i64 [ %.pre34.i, %.lr.ph.split.us.preheader.i60 ], [ %i.lp, %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit.us.i64 ] ; 3 uses
  %i.lc = phi i64 [ %.pre35.i, %.lr.ph.split.us.preheader.i60 ], [ %i.lt, %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit.us.i64 ] ; 4 uses
  %indvars.iv.i62 = phi i64 [ 0, %.lr.ph.split.us.preheader.i60 ], [ %indvars.iv.next.i63, %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit.us.i64 ] ; 2 uses
  %indvars.iv.next.i63 = add nuw nsw i64 %indvars.iv.i62, 1 ; 2 uses
  %i.ld = trunc nuw i64 %indvars.iv.i62 to i32
  %i.le = xor i32 %i.ld, -1
  %i.lf = add i32 %.sroa.0.2.i57, %i.le           ; 2 uses
  %i.lg = icmp ugt i32 %i.lf, 21
  %i.lh = mul nuw nsw i32 %i.lf, 3
  %i.li = zext nneg i32 %i.lh to i64
  %i.lj = lshr i64 %3, %i.li
  %i.lk = trunc i64 %i.lj to i8
  %i.ll = and i8 %i.lk, 7
  %i.lm = or disjoint i8 %i.ll, 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12120)
  %i.ln = icmp sgt i64 %i.lc, -1
  tail call void @llvm.assume(i1 %i.ln)
  %i.lo = icmp eq i64 %i.lb, %i.lc
  br i1 %i.lo, label %bb.am, label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit.us.i64, !prof !32

bb.am:                                            ; preds = %.lr.ph.split.us.i61
  tail call fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.lb, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !12121
  %.pre33.i = load i64, ptr %0, align 8, !range !22, !alias.scope !12119
  br label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit.us.i64

_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit.us.i64: ; preds = %bb.am, %.lr.ph.split.us.i61
  %i.lp = phi i64 [ %.pre33.i, %bb.am ], [ %i.lb, %.lr.ph.split.us.i61 ]
  %i.lq = load ptr, ptr %i.la, align 8, !alias.scope !12122, !nonnull !21, !noundef !21
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 %i.lc
  %i.ls = select i1 %i.lg, i8 48, i8 %i.lm
  store i8 %i.ls, ptr %i.lr, align 1, !noalias !12123
  %i.lt = add nuw i64 %i.lc, 1                    ; 3 uses
  store i64 %i.lt, ptr %i.a, align 8, !alias.scope !12122
  %exitcond.not.i65 = icmp eq i64 %indvars.iv.next.i63, %wide.trip.count31.i
  br i1 %exitcond.not.i65, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter11write_octal.exit, label %.lr.ph.split.us.i61

bb.an:                                            ; preds = %.loopexit.i53
  %lhsc.i = load i8, ptr %i.ky, align 1, !alias.scope !12118
  %i.lu = icmp eq i8 %lhsc.i, 48
  br i1 %i.lu, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.loopexit.i53
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12124)
  %i.lv = load i64, ptr %0, align 8, !range !22, !alias.scope !12125, !noundef !21
  %i.lw = sub nsw i64 %i.lv, %i.h
  %i.lx = icmp ugt i64 %i.kx, %i.lw
  br i1 %i.lx, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i.i69, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit.i55, !prof !32

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i.i69: ; preds = %bb.ao
  tail call fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.h, i64 noundef %i.kx, i64 noundef 1, i64 noundef 1), !noalias !12121
  %i.ly = load i64, ptr %i.a, align 8, !alias.scope !12126, !noundef !21
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit.i55

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit.i55: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i.i69, %bb.ao
  %.sink44.i = phi i64 [ %i.ly, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i.i69 ], [ %i.h, %bb.ao ] ; 3 uses
  %i.lz = icmp sgt i64 %.sink44.i, -1
  tail call void @llvm.assume(i1 %i.lz)
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.mb = load ptr, ptr %i.ma, align 8, !alias.scope !12126, !nonnull !21, !noundef !21
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 %.sink44.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mc, ptr nonnull readonly align 1 %i.ky, i64 %i.kx, i1 false), !noalias !12127
  %i.md = add i64 %.sink44.i, %i.kx               ; 2 uses
  store i64 %i.md, ptr %i.a, align 8, !alias.scope !12126
  br label %.lr.ph.i56

bb.ap:                                            ; preds = %bb.an
  %i.me = icmp samesign ult i32 %.sroa.0.1.i54, 23
  br i1 %i.me, label %bb.aq, label %.lr.ph.i56

bb.aq:                                            ; preds = %bb.ap
  %i.mf = mul nuw nsw i32 %.sroa.0.1.i54, 3
  %i.mg = add nuw nsw i32 %i.mf, 61
  %i.mh = and i32 %i.mg, 63
  %i.mi = zext nneg i32 %i.mh to i64
  %i.mj = shl i64 7, %i.mi
  %i.mk = and i64 %i.mj, %3
  %i.ml = icmp ne i64 %i.mk, 0
  %i.mm = zext i1 %i.ml to i32
  %spec.select.i70 = add nuw nsw i32 %.sroa.0.1.i54, %i.mm
  br label %.lr.ph.i56

.lr.ph.split.i67:                                 ; preds = %.lr.ph.i56, %bb.as
  %i.mn = phi i64 [ %i.nf, %bb.as ], [ %.pre35.i, %.lr.ph.i56 ] ; 5 uses
  %indvars.iv28.i = phi i64 [ %indvars.iv.next29.i, %bb.as ], [ 0, %.lr.ph.i56 ] ; 2 uses
  %indvars.iv.next29.i = add nuw nsw i64 %indvars.iv28.i, 1 ; 2 uses
  %i.mo = trunc nuw i64 %indvars.iv28.i to i32
  %i.mp = xor i32 %i.mo, -1
  %i.mq = add i32 %.sroa.0.2.i57, %i.mp           ; 4 uses
  %i.mr = icmp ugt i32 %i.mq, 21
  %i.ms = mul nuw nsw i32 %i.mq, 3
  %i.mt = zext nneg i32 %i.ms to i64
  %i.mu = lshr i64 %3, %i.mt
  %i.mv = trunc i64 %i.mu to i8
  %i.mw = and i8 %i.mv, 7
  %i.mx = or disjoint i8 %i.mw, 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12120)
  %i.my = icmp sgt i64 %i.mn, -1
  tail call void @llvm.assume(i1 %i.my)
  %i.mz = load i64, ptr %0, align 8, !range !22, !alias.scope !12119, !noundef !21
  %i.na = icmp eq i64 %i.mz, %i.mn
  br i1 %i.na, label %bb.ar, label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit.i68, !prof !32

bb.ar:                                            ; preds = %.lr.ph.split.i67
  tail call fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.mn, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !12121
  br label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit.i68

_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit.i68: ; preds = %bb.ar, %.lr.ph.split.i67
end_hunk_1
