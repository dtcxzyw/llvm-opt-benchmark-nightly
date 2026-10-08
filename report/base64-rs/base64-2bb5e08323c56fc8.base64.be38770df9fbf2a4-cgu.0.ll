Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/base64-rs/original/base64-2bb5e08323c56fc8.base64.be38770df9fbf2a4-cgu.0?download=true
inline.NumInlined: 222
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMNtNtCsgkxsgNF9KUO_6base646engine15general_purposeNtB2_14GeneralPurpose3new:bb.a
  %i.fp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fo
  store i8 42, ptr %i.fp, align 1, !alias.scope !49, !noalias !50
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 43
  %i.fr = load i8, ptr %i.fq, align 1, !alias.scope !50, !noalias !49, !noundef !5
  %i.fs = zext i8 %i.fr to i64
  %i.ft = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fs
  store i8 43, ptr %i.ft, align 1, !alias.scope !49, !noalias !50
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.fv = load i8, ptr %i.fu, align 1, !alias.scope !50, !noalias !49, !noundef !5
  %i.fw = zext i8 %i.fv to i64
  %i.fx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fw
  store i8 44, ptr %i.fx, align 1, !alias.scope !49, !noalias !50
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 45
  %i.fz = load i8, ptr %i.fy, align 1, !alias.scope !50, !noalias !49, !noundef !5
  %i.ga = zext i8 %i.fz to i64
  %i.gb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ga
  store i8 45, ptr %i.gb, align 1, !alias.scope !49, !noalias !50
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 46
  %i.gd = load i8, ptr %i.gc, align 1, !alias.scope !50, !noalias !49, !noundef !5
  %i.ge = zext i8 %i.gd to i64
  %i.gf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ge
  store i8 46, ptr %i.gf, align 1, !alias.scope !49, !noalias !50
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 47
  %i.gh = load i8, ptr %i.gg, align 1, !alias.scope !50, !noalias !49, !noundef !5
  %i.gi = zext i8 %i.gh to i64
  %i.gj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gi
  store i8 47, ptr %i.gj, align 1, !alias.scope !49, !noalias !50
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.gl = load i8, ptr %i.gk, align 1, !alias.scope !50, !noalias !49, !noundef !5
  %i.gm = zext i8 %i.gl to i64
  %i.gn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gm
  store i8 48, ptr %i.gn, align 1, !alias.scope !49, !noalias !50
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 49
  %i.gp = load i8, ptr %i.go, align 1, !alias.scope !50, !noalias !49, !noundef !5
  %i.gq = zext i8 %i.gp to i64
  %i.gr = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gq
  store i8 49, ptr %i.gr, align 1, !alias.scope !49, !noalias !50
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 50
  %i.gt = load i8, ptr %i.gs, align 1, !alias.scope !50, !noalias !49, !noundef !5
  %i.gu = zext i8 %i.gt to i64
  %i.gv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gu
  store i8 50, ptr %i.gv, align 1, !alias.scope !49, !noalias !50
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 51
  %i.gx = load i8, ptr %i.gw, align 1, !alias.scope !50, !noalias !49, !noundef !5
  %i.gy = zext i8 %i.gx to i64
  %i.gz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gy
  store i8 51, ptr %i.gz, align 1, !alias.scope !49, !noalias !50
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.hb = load i8, ptr %i.ha, align 1, !alias.scope !50, !noalias !49, !noundef !5
  %i.hc = zext i8 %i.hb to i64
  %i.hd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.hc
  store i8 52, ptr %i.hd, align 1, !alias.scope !49, !noalias !50
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 53
  %i.hf = load i8, ptr %i.he, align 1, !alias.scope !50, !noalias !49, !noundef !5
  %i.hg = zext i8 %i.hf to i64
  %i.hh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.hg
  store i8 53, ptr %i.hh, align 1, !alias.scope !49, !noalias !50
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 54
  %i.hj = load i8, ptr %i.hi, align 1, !alias.scope !50, !noalias !49, !noundef !5
  %i.hk = zext i8 %i.hj to i64
  %i.hl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.hk
  store i8 54, ptr %i.hl, align 1, !alias.scope !49, !noalias !50
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 55
  %i.hn = load i8, ptr %i.hm, align 1, !alias.scope !50, !noalias !49, !noundef !5
  %i.ho = zext i8 %i.hn to i64
  %i.hp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ho
  store i8 55, ptr %i.hp, align 1, !alias.scope !49, !noalias !50
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.hr = load i8, ptr %i.hq, align 1, !alias.scope !50, !noalias !49, !noundef !5
  %i.hs = zext i8 %i.hr to i64
  %i.ht = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.hs
  store i8 56, ptr %i.ht, align 1, !alias.scope !49, !noalias !50
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 57
  %i.hv = load i8, ptr %i.hu, align 1, !alias.scope !50, !noalias !49, !noundef !5
  %i.hw = zext i8 %i.hv to i64
  %i.hx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.hw
  store i8 57, ptr %i.hx, align 1, !alias.scope !49, !noalias !50
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.hz = load i8, ptr %i.hy, align 1, !alias.scope !50, !noalias !49, !noundef !5
  %i.ia = zext i8 %i.hz to i64
  %i.ib = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ia
  store i8 58, ptr %i.ib, align 1, !alias.scope !49, !noalias !50
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 59
  %i.id = load i8, ptr %i.ic, align 1, !alias.scope !50, !noalias !49, !noundef !5
  %i.ie = zext i8 %i.id to i64
  %i.if = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ie
  store i8 59, ptr %i.if, align 1, !alias.scope !49, !noalias !50
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.ih = load i8, ptr %i.ig, align 1, !alias.scope !50, !noalias !49, !noundef !5
  %i.ii = zext i8 %i.ih to i64
  %i.ij = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ii
  store i8 60, ptr %i.ij, align 1, !alias.scope !49, !noalias !50
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 61
  %i.il = load i8, ptr %i.ik, align 1, !alias.scope !50, !noalias !49, !noundef !5
  %i.im = zext i8 %i.il to i64
  %i.in = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.im
  store i8 61, ptr %i.in, align 1, !alias.scope !49, !noalias !50
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 62
  %i.ip = load i8, ptr %i.io, align 1, !alias.scope !50, !noalias !49, !noundef !5
  %i.iq = zext i8 %i.ip to i64
  %i.ir = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.iq
  store i8 62, ptr %i.ir, align 1, !alias.scope !49, !noalias !50
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 63
  %i.it = load i8, ptr %i.is, align 1, !alias.scope !50, !noalias !49, !noundef !5
  %i.iu = zext i8 %i.it to i64
  %i.iv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.iu
  store i8 63, ptr %i.iv, align 1, !alias.scope !49, !noalias !50
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ix = load i8, ptr %i.iw, align 1, !noundef !5
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.iy, ptr noundef nonnull align 1 dereferenceable(64) %1, i64 64, i1 false)
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.iz, ptr noundef nonnull align 1 dereferenceable(256) %i.a, i64 256, i1 false)
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 323
  store i8 %i.ix, ptr %i.ja, align 1
  store i24 %2, ptr %0, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsgkxsgNF9KUO_6base64(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = icmp sgt i64 %1, -1
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %.0.val, 0
  br i1 %i.b, label %bb.c, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.c = icmp uge i64 %1, %.0.val
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %.0.val, i64 noundef 1, i64 noundef range(i64 0, -9223372036854775808) %1) #20
  br label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq i64 %1, 0
  br i1 %i.e, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20
  %i.f = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef 1) #20
  br label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit
  %.pn7 = phi ptr [ %i.d, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit ], [ %i.f, %bb.d ] ; 2 uses
  %i.g = icmp eq ptr %.pn7, null
  br i1 %i.g, label %bb.e, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread

bb.e:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.h, align 8
  br label %bb.f

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %.pn79 = phi ptr [ %.pn7, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit ], [ inttoptr (i64 1 to ptr), %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn79, ptr %i.i, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread
  %.sink12 = phi i64 [ 16, %bb.e ], [ 16, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread ], [ 8, %bb.a ]
  %.sink10 = phi i64 [ %1, %bb.e ], [ %1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread ], [ 1, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %.sink12
  store i64 %.sink10, ptr %i.j, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvNtNtCsgkxsgNF9KUO_6base646engine15general_purpose18encode_scalar_tail(ptr noalias nofree noundef readonly captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef nonnull writeonly captures(none) %3, i64 noundef range(i64 0, -9223372036854775808) %4, i64 noundef %5, i64 noundef %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 26) ; 2 uses
  %i.b = icmp samesign ugt i64 %2, 26
  %i.c = icmp ule i64 %5, %i.a
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.a
  %i.d = add nuw nsw i64 %5, 26                   ; 2 uses
  %.not147 = icmp ugt i64 %i.d, %2
  br i1 %.not147, label %.preheader._crit_edge, label %.lr.ph150, !prof !51

.loopexit:                                        ; preds = %bb.q, %bb.a
  %.sroa.010.0 = phi i64 [ %6, %bb.a ], [ %i.bz, %bb.q ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %5, %bb.a ], [ %i.ij, %bb.q ] ; 2 uses
  %i.e = urem i64 %2, 3                           ; 2 uses
  %i.f = sub nuw nsw i64 %2, %i.e                 ; 4 uses
  %i.g = icmp ult i64 %.sroa.0.0, %i.f
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.preheader:                                       ; preds = %bb.q
  %i.h = add nuw nsw i64 %.sroa.0.1149, 50        ; 2 uses
  %.not = icmp ugt i64 %i.h, %2
  br i1 %.not, label %.preheader._crit_edge, label %.lr.ph150, !prof !52

._crit_edge:                                      ; preds = %bb.o, %.loopexit
  %.sroa.010.2.lcssa = phi i64 [ %.sroa.010.0, %.loopexit ], [ %i.au, %bb.o ] ; 11 uses
  switch i64 %i.e, label %bb.g [
    i64 2, label %bb.b
    i64 1, label %bb.h
  ]

.lr.ph:                                           ; preds = %.loopexit, %bb.o
  %.sroa.0.270 = phi i64 [ %i.i, %bb.o ], [ %.sroa.0.0, %.loopexit ] ; 3 uses
  %.sroa.010.269 = phi i64 [ %i.au, %bb.o ], [ %.sroa.010.0, %.loopexit ] ; 4 uses
  %i.i = add nuw i64 %.sroa.0.270, 3              ; 4 uses
  %.not45 = icmp ugt i64 %i.i, %2
  br i1 %.not45, label %bb.m, label %bb.n, !prof !7

bb.b:                                             ; preds = %._crit_edge
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %i.f ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !noundef !5  ; 2 uses
  %i.l = icmp ult i64 %.sroa.010.2.lcssa, %4
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = lshr i8 %i.k, 2
  %i.n = zext nneg i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.010.2.lcssa
  store i8 %i.p, ptr %i.q, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.s = load i8, ptr %i.r, align 1, !noundef !5  ; 2 uses
  %i.t = add nuw nsw i64 %.sroa.010.2.lcssa, 1    ; 3 uses
  %i.u = icmp ult i64 %i.t, %4
  br i1 %i.u, label %bb.e, label %7

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.010.2.lcssa, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #18
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.v = tail call i8 @llvm.fshl.i8(i8 %i.k, i8 %i.s, i8 4)
  %i.w = and i8 %i.v, 63
  %i.x = zext nneg i8 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !noundef !5
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 %i.t
  store i8 %i.z, ptr %i.aa, align 1
  %i.ab = add nuw i64 %.sroa.010.2.lcssa, 2       ; 3 uses
  %i.ac = icmp ult i64 %i.ab, %4
  br i1 %i.ac, label %8, label %bb.f

7:                                                ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.t, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #18
  unreachable

8:                                                ; preds = %bb.e
  %9 = shl i8 %i.s, 2
  %10 = and i8 %9, 60
  br label %.sink.split

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ab, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #18
  unreachable

.sink.split:                                      ; preds = %8, %bb.k
  %.sink128 = phi i8 [ %i.at, %bb.k ], [ %10, %8 ]
  %.sink125 = phi i64 [ %i.aq, %bb.k ], [ %i.ab, %8 ]
  %.sink = phi i64 [ 2, %bb.k ], [ 3, %8 ]
  %i.ad = zext nneg i8 %.sink128 to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !noundef !5
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 %.sink125
  store i8 %i.af, ptr %i.ag, align 1
  %i.ah = add nuw i64 %.sroa.010.2.lcssa, %.sink
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %._crit_edge
  %.sroa.010.3 = phi i64 [ %.sroa.010.2.lcssa, %._crit_edge ], [ %i.ah, %.sink.split ]
  ret i64 %.sroa.010.3

bb.h:                                             ; preds = %._crit_edge
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %i.f
  %i.aj = load i8, ptr %i.ai, align 1, !noundef !5 ; 2 uses
  %i.ak = icmp ult i64 %.sroa.010.2.lcssa, %4
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.al = lshr i8 %i.aj, 2
  %i.am = zext nneg i8 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !noundef !5
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.010.2.lcssa
  store i8 %i.ao, ptr %i.ap, align 1
  %i.aq = add nuw nsw i64 %.sroa.010.2.lcssa, 1   ; 3 uses
  %i.ar = icmp ult i64 %i.aq, %4
  br i1 %i.ar, label %bb.k, label %bb.l

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.010.2.lcssa, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #18
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.as = shl i8 %i.aj, 4
  %i.at = and i8 %i.as, 48
  br label %.sink.split

bb.l:                                             ; preds = %bb.i
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.aq, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #18
  unreachable

bb.m:                                             ; preds = %.lr.ph
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.270, i64 noundef %i.i, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #18
  unreachable

bb.n:                                             ; preds = %.lr.ph
  %i.au = add i64 %.sroa.010.269, 4               ; 4 uses
  %i.av = icmp ugt i64 %.sroa.010.269, -5
  %.not46 = icmp ugt i64 %i.au, %4
  %or.cond48 = or i1 %i.av, %.not46
  br i1 %or.cond48, label %bb.p, label %bb.o, !prof !7

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.270 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.010.269 ; 4 uses
  %i.ay = load i8, ptr %i.aw, align 1, !noundef !5 ; 2 uses
  %i.az = lshr i8 %i.ay, 2
  %i.ba = zext nneg i8 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !noundef !5
  store i8 %i.bc, ptr %i.ax, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !noundef !5 ; 2 uses
  %i.bf = tail call i8 @llvm.fshl.i8(i8 %i.ay, i8 %i.be, i8 4)
  %i.bg = and i8 %i.bf, 63
  %i.bh = zext nneg i8 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !noundef !5
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  store i8 %i.bj, ptr %i.bk, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aw, i64 2
  %i.bm = load i8, ptr %i.bl, align 1, !noundef !5 ; 2 uses
  %i.bn = tail call i8 @llvm.fshl.i8(i8 %i.be, i8 %i.bm, i8 2)
  %i.bo = and i8 %i.bn, 63
  %i.bp = zext nneg i8 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !noundef !5
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  store i8 %i.br, ptr %i.bs, align 1
  %i.bt = and i8 %i.bm, 63
  %i.bu = zext nneg i8 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !noundef !5
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ax, i64 3
  store i8 %i.bw, ptr %i.bx, align 1
  %i.by = icmp ult i64 %i.i, %i.f
  br i1 %i.by, label %.lr.ph, label %._crit_edge

bb.p:                                             ; preds = %bb.n
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.010.269, i64 noundef %i.au, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #18
  unreachable

.preheader._crit_edge:                            ; preds = %.preheader, %.preheader.preheader
  %.sroa.0.1.lcssa = phi i64 [ %5, %.preheader.preheader ], [ %i.ij, %.preheader ]
  %.lcssa137 = phi i64 [ %i.d, %.preheader.preheader ], [ %i.h, %.preheader ]
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.1.lcssa, i64 noundef %.lcssa137, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #18
  unreachable

.lr.ph150:                                        ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.1149 = phi i64 [ %i.ij, %.preheader ], [ %5, %.preheader.preheader ] ; 3 uses
  %.sroa.010.1148 = phi i64 [ %i.bz, %.preheader ], [ %6, %.preheader.preheader ] ; 4 uses
  %i.bz = add i64 %.sroa.010.1148, 32             ; 4 uses
  %i.ca = icmp ugt i64 %.sroa.010.1148, -33
  %.not42 = icmp ugt i64 %i.bz, %4
  %or.cond49 = or i1 %i.ca, %.not42
  br i1 %or.cond49, label %bb.r, label %bb.q, !prof !7

bb.q:                                             ; preds = %.lr.ph150
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1149 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.010.1148 ; 32 uses
  %.val52 = load i64, ptr %i.cb, align 1
  %i.cd = tail call noundef i64 @llvm.bswap.i64(i64 %.val52) ; 8 uses
  %i.ce = lshr i64 %i.cd, 58
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !noundef !5
  store i8 %i.cg, ptr %i.cc, align 1
  %i.ch = lshr i64 %i.cd, 52
  %i.ci = and i64 %i.ch, 63
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !noundef !5
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cc, i64 1
  store i8 %i.ck, ptr %i.cl, align 1
  %i.cm = lshr i64 %i.cd, 46
  %i.cn = and i64 %i.cm, 63
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !noundef !5
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cc, i64 2
  store i8 %i.cp, ptr %i.cq, align 1
  %i.cr = lshr i64 %i.cd, 40
  %i.cs = and i64 %i.cr, 63
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !noundef !5
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cc, i64 3
  store i8 %i.cu, ptr %i.cv, align 1
  %i.cw = lshr i64 %i.cd, 34
  %i.cx = and i64 %i.cw, 63
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !noundef !5
  %i.da = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  store i8 %i.cz, ptr %i.da, align 1
  %i.db = lshr i64 %i.cd, 28
  %i.dc = and i64 %i.db, 63
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !noundef !5
  %i.df = getelementptr inbounds nuw i8, ptr %i.cc, i64 5
  store i8 %i.de, ptr %i.df, align 1
  %i.dg = lshr i64 %i.cd, 22
  %i.dh = and i64 %i.dg, 63
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !noundef !5
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cc, i64 6
  store i8 %i.dj, ptr %i.dk, align 1
  %i.dl = lshr i64 %i.cd, 16
  %i.dm = and i64 %i.dl, 63
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !noundef !5
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cc, i64 7
  store i8 %i.do, ptr %i.dp, align 1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cb, i64 6
  %.val51 = load i64, ptr %i.dq, align 1
  %i.dr = tail call noundef i64 @llvm.bswap.i64(i64 %.val51) ; 8 uses
  %i.ds = lshr i64 %i.dr, 58
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !noundef !5
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i8 %i.du, ptr %i.dv, align 1
  %i.dw = lshr i64 %i.dr, 52
  %i.dx = and i64 %i.dw, 63
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !noundef !5
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cc, i64 9
  store i8 %i.dz, ptr %i.ea, align 1
  %i.eb = lshr i64 %i.dr, 46
  %i.ec = and i64 %i.eb, 63
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !noundef !5
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cc, i64 10
  store i8 %i.ee, ptr %i.ef, align 1
  %i.eg = lshr i64 %i.dr, 40
  %i.eh = and i64 %i.eg, 63
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !noundef !5
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cc, i64 11
  store i8 %i.ej, ptr %i.ek, align 1
  %i.el = lshr i64 %i.dr, 34
  %i.em = and i64 %i.el, 63
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1, !noundef !5
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  store i8 %i.eo, ptr %i.ep, align 1
  %i.eq = lshr i64 %i.dr, 28
  %i.er = and i64 %i.eq, 63
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !noundef !5
  %i.eu = getelementptr inbounds nuw i8, ptr %i.cc, i64 13
  store i8 %i.et, ptr %i.eu, align 1
  %i.ev = lshr i64 %i.dr, 22
  %i.ew = and i64 %i.ev, 63
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 %i.ew
  %i.ey = load i8, ptr %i.ex, align 1, !noundef !5
  %i.ez = getelementptr inbounds nuw i8, ptr %i.cc, i64 14
  store i8 %i.ey, ptr %i.ez, align 1
  %i.fa = lshr i64 %i.dr, 16
  %i.fb = and i64 %i.fa, 63
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !noundef !5
  %i.fe = getelementptr inbounds nuw i8, ptr %i.cc, i64 15
  store i8 %i.fd, ptr %i.fe, align 1
  %i.ff = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  %.val50 = load i64, ptr %i.ff, align 1
  %i.fg = tail call noundef i64 @llvm.bswap.i64(i64 %.val50) ; 8 uses
  %i.fh = lshr i64 %i.fg, 58
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 %i.fh
  %i.fj = load i8, ptr %i.fi, align 1, !noundef !5
  %i.fk = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store i8 %i.fj, ptr %i.fk, align 1
  %i.fl = lshr i64 %i.fg, 52
  %i.fm = and i64 %i.fl, 63
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 %i.fm
  %i.fo = load i8, ptr %i.fn, align 1, !noundef !5
  %i.fp = getelementptr inbounds nuw i8, ptr %i.cc, i64 17
  store i8 %i.fo, ptr %i.fp, align 1
  %i.fq = lshr i64 %i.fg, 46
  %i.fr = and i64 %i.fq, 63
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 %i.fr
  %i.ft = load i8, ptr %i.fs, align 1, !noundef !5
  %i.fu = getelementptr inbounds nuw i8, ptr %i.cc, i64 18
  store i8 %i.ft, ptr %i.fu, align 1
  %i.fv = lshr i64 %i.fg, 40
  %i.fw = and i64 %i.fv, 63
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 %i.fw
  %i.fy = load i8, ptr %i.fx, align 1, !noundef !5
  %i.fz = getelementptr inbounds nuw i8, ptr %i.cc, i64 19
  store i8 %i.fy, ptr %i.fz, align 1
  %i.ga = lshr i64 %i.fg, 34
  %i.gb = and i64 %i.ga, 63
end_hunk_0
begin_hunk_1_@_RNvXs0_NtCsgkxsgNF9KUO_6base647displayNtB5_13FormatterSinkNtNtB7_15chunked_encoder4Sink19write_encoded_bytes:bb.a
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6expectCsgkxsgNF9KUO_6base64.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !66
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 24, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #18, !noalias !66
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6expectCsgkxsgNF9KUO_6base64.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !66, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !66, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.k = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.j)
  ret i1 %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtB8_6option6OptionhENtB6_5Debug3fmtCsgkxsgNF9KUO_6base64(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  %i.c = load i8, ptr %i.b, align 1, !range !10, !alias.scope !70, !noalias !71, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !72
  store ptr %i.e, ptr %i.a, align 8, !noalias !72
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @33)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !72
  br label %_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionhENtNtB7_3fmt5Debug3fmtCsgkxsgNF9KUO_6base64.exit

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 4), !noalias !70
  br label %_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionhENtNtB7_3fmt5Debug3fmtCsgkxsgNF9KUO_6base64.exit

_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionhENtNtB7_3fmt5Debug3fmtCsgkxsgNF9KUO_6base64.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtReNtB6_5Debug3fmtCsgkxsgNF9KUO_6base64(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5
  %i.d = tail call noundef zeroext i1 @_RNvXsh_NtCskKLDkoKarTP_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRhNtB6_5Debug3fmtCsgkxsgNF9KUO_6base64(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !76, !noalias !77, !noundef !5 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 67108864
  %.not1.i = icmp eq i32 %i.e, 0
  br i1 %.not1.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXse_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsU_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXNtNtNtCskKLDkoKarTP_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsU_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsg_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsU_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_5Debug3fmt.exit

_RNvXsU_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.c ], [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1o_NtCskKLDkoKarTP_4core3fmtRhNtB6_8LowerHex3fmtCsgkxsgNF9KUO_6base64(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXse_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtCsgkxsgNF9KUO_6base645write21encoder_string_writerNtNtCsexYYUdYSQU6_5alloc6string6StringNtB5_11StrConsumer7consume(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !83, !noundef !5 ; 5 uses
  %i.c = load i64, ptr %0, align 8, !range !4, !alias.scope !83, !noundef !5
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsgkxsgNF9KUO_6base64.exit.thread.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsgkxsgNF9KUO_6base64.exit.i, !prof !8

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsgkxsgNF9KUO_6base64.exit.thread.i: ; preds = %bb.a
  tail call fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgkxsgNF9KUO_6base64(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %2)
  %i.f = load i64, ptr %i.a, align 8, !alias.scope !82, !noundef !5 ; 2 uses
  %i.g = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.g)
  br label %bb.b

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsgkxsgNF9KUO_6base64.exit.i: ; preds = %bb.a
  %i.h = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.h)
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsgkxsgNF9KUO_6base64.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsgkxsgNF9KUO_6base64.exit.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsgkxsgNF9KUO_6base64.exit.thread.i
  %i.i = phi i64 [ %i.f, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsgkxsgNF9KUO_6base64.exit.thread.i ], [ %i.b, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsgkxsgNF9KUO_6base64.exit.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !82, !nonnull !5, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !82
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsgkxsgNF9KUO_6base64.exit

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsgkxsgNF9KUO_6base64.exit: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsgkxsgNF9KUO_6base64.exit.i, %bb.b
  %i.m = phi i64 [ %i.i, %bb.b ], [ %i.b, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsgkxsgNF9KUO_6base64.exit.i ]
  %i.n = add i64 %i.m, %2
  store i64 %i.n, ptr %i.a, align 8, !alias.scope !82
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtNtCskKLDkoKarTP_4core3str5errorNtB5_9Utf8ErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 9, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 11, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @27, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @28)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXs6_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXs8_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCsgkxsgNF9KUO_6base646engine15general_purposeNtB4_14GeneralPurposeNtB6_6Engine15internal_decode(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(324) %1, ptr noalias nofree noundef nonnull readonly captures(address) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef nonnull writeonly captures(none) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6, i64 noundef %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 67 ; 38 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.c = load i8, ptr %i.b, align 1, !range !10, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 323
  %i.f = load i8, ptr %i.e, align 1, !noundef !5  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.h = load i8, ptr %i.g, align 1, !range !143, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %i.i = icmp eq i64 %6, 1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i64 %3, -1                       ; 3 uses
  %.not.i.i = icmp eq i64 %3, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.f, %bb.d, %bb.a
  %i.k = tail call i64 @llvm.usub.sat.i64(i64 range(i64 0, -9223372036854775808) %3, i64 %6) ; 2 uses
  %i.l = icmp eq i64 %6, 0
  %i.m = tail call i64 @llvm.usub.sat.i64(i64 %i.k, i64 4)
  %i.n = select i1 %i.l, i64 %i.m, i64 %i.k       ; 6 uses
  %i.o = lshr i64 %i.n, 2
  %i.p = mul nuw nsw i64 %i.o, 3                  ; 2 uses
  %i.q = icmp samesign ult i64 %5, %i.p
  br i1 %i.q, label %bb.g, label %_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode18complete_quads_len.exit.i

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %i.j
  %i.s = load i8, ptr %i.r, align 1, !alias.scope !150, !noalias !151, !noundef !5 ; 3 uses
  %.not9.i.i = icmp eq i8 %i.s, %i.f
  br i1 %.not9.i.i, label %bb.c, label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.j, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #18, !noalias !152
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !alias.scope !153, !noalias !154, !noundef !5
  %i.w = icmp eq i8 %i.v, -1
  br i1 %i.w, label %bb.g, label %bb.c

bb.g:                                             ; preds = %bb.f, %bb.c
  %.sroa.102.0.ph.i = phi i64 [ %i.j, %bb.f ], [ undef, %bb.c ]
  %.sroa.8.0.ph.i = phi i8 [ %i.s, %bb.f ], [ undef, %bb.c ]
  %.sroa.0.0.ph.i = phi i8 [ 0, %bb.f ], [ -1, %bb.c ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.0.0.ph.i, ptr %i.x, align 8, !alias.scope !144, !noalias !155
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.8.0.ph.i, ptr %.sroa.418.0..sroa_idx.i, align 1, !alias.scope !144, !noalias !155
  %.sroa.519.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.102.0.ph.i, ptr %.sroa.519.0..sroa_idx.i, align 8, !alias.scope !144, !noalias !155
  store i64 2, ptr %0, align 8, !alias.scope !144, !noalias !155
  br label %_RINvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode13decode_helperNCNvXs_B4_NtB4_14GeneralPurposeNtB6_6Engine15internal_decode0EB8_.exit

_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode18complete_quads_len.exit.i: ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %i.y = and i64 %i.n, 9223372036854775776        ; 11 uses
  %.not.i21.i = icmp samesign ugt i64 %i.y, %3
  br i1 %.not.i21.i, label %bb.h, label %.preheader.i.i, !prof !8

.preheader.i.i:                                   ; preds = %_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode18complete_quads_len.exit.i
  %.not.i.i1028.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i1028.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.h:                                             ; preds = %_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode18complete_quads_len.exit.i
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.y, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #18, !noalias !159
  unreachable

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.bh
  %.sroa.0.01031.i.i = phi ptr [ %i.z, %bb.bh ], [ %2, %.preheader.i.i ] ; 33 uses
  %.sroa.684.01030.i.i = phi i64 [ %i.aa, %bb.bh ], [ %i.y, %.preheader.i.i ]
  %.sroa.13.01029.i.i = phi i64 [ %i.ab, %bb.bh ], [ 0, %.preheader.i.i ] ; 13 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 32
  %i.aa = add i64 %.sroa.684.01030.i.i, -32       ; 2 uses
  %i.ab = add nuw nsw i64 %.sroa.13.01029.i.i, 1
  %i.ac = mul nuw nsw i64 %.sroa.13.01029.i.i, 24 ; 3 uses
  %i.ad = add nuw i64 %i.ac, 24                   ; 2 uses
  %.not16.i.i = icmp ugt i64 %i.ad, %5
  br i1 %.not16.i.i, label %bb.t, label %bb.u, !prof !7

._crit_edge.i.i:                                  ; preds = %bb.bh, %.preheader.i.i
  %i.ae = lshr exact i64 %i.y, 2
  %.not12.i.i = icmp samesign ugt i64 %i.n, %3
  br i1 %.not12.i.i, label %bb.i, label %bb.j, !prof !8

bb.i:                                             ; preds = %._crit_edge.i.i
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.y, i64 noundef %i.n, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #18, !noalias !159
  unreachable

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.af = and i64 %i.n, 28                        ; 2 uses
  %.not.i.i791039.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.i.i791039.i.i, label %_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode21decode_complete_quads.exit.i, label %.lr.ph1044.preheader.i.i

.lr.ph1044.preheader.i.i:                         ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %i.y
  br label %.lr.ph1044.i.i

.lr.ph1044.i.i:                                   ; preds = %bb.s, %.lr.ph1044.preheader.i.i
  %.sroa.0107.01042.i.i = phi ptr [ %i.ah, %bb.s ], [ %i.ag, %.lr.ph1044.preheader.i.i ] ; 5 uses
  %.sroa.6108.01041.i.i = phi i64 [ %i.ai, %bb.s ], [ %i.af, %.lr.ph1044.preheader.i.i ]
  %.sroa.13112.01040.i.i = phi i64 [ %i.aj, %bb.s ], [ 0, %.lr.ph1044.preheader.i.i ] ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0107.01042.i.i, i64 4
  %i.ai = add i64 %.sroa.6108.01041.i.i, -4       ; 2 uses
  %i.aj = add nuw nsw i64 %.sroa.13112.01040.i.i, 1
  %i.ak = add nuw nsw i64 %.sroa.13112.01040.i.i, %i.ae
  %i.al = mul nuw i64 %i.ak, 3                    ; 3 uses
  %i.am = add nuw i64 %i.al, 3                    ; 2 uses
  %.not14.i.i = icmp ugt i64 %i.am, %5
  br i1 %.not14.i.i, label %bb.r, label %bb.k, !prof !7

bb.k:                                             ; preds = %.lr.ph1044.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 %i.al
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  %i.ao = load i8, ptr %.sroa.0107.01042.i.i, align 1, !alias.scope !162, !noalias !163, !noundef !5 ; 2 uses
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !alias.scope !164, !noalias !165, !noundef !5 ; 2 uses
  %i.as = icmp eq i8 %i.ar, -1
  br i1 %i.as, label %.loopexit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0107.01042.i.i, i64 1
  %i.au = load i8, ptr %i.at, align 1, !alias.scope !162, !noalias !163, !noundef !5 ; 2 uses
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !alias.scope !164, !noalias !165, !noundef !5 ; 2 uses
  %i.ay = icmp eq i8 %i.ax, -1
  br i1 %i.ay, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = shl i64 %.sroa.13112.01040.i.i, 2
  %i.ba = add i64 %i.az, %i.y
  %i.bb = or disjoint i64 %i.ba, 1
  br label %bb.bi

bb.n:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0107.01042.i.i, i64 2
  %i.bd = load i8, ptr %i.bc, align 1, !alias.scope !162, !noalias !163, !noundef !5 ; 2 uses
  %i.be = zext i8 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !alias.scope !164, !noalias !165, !noundef !5 ; 2 uses
  %i.bh = icmp eq i8 %i.bg, -1
  br i1 %i.bh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bi = shl i64 %.sroa.13112.01040.i.i, 2
  %i.bj = add i64 %i.bi, %i.y
  %i.bk = or disjoint i64 %i.bj, 2
  br label %bb.bi

bb.p:                                             ; preds = %bb.n
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0107.01042.i.i, i64 3
  %i.bm = load i8, ptr %i.bl, align 1, !alias.scope !162, !noalias !163, !noundef !5 ; 2 uses
  %i.bn = zext i8 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !alias.scope !164, !noalias !165, !noundef !5 ; 2 uses
  %i.bq = icmp eq i8 %i.bp, -1
  br i1 %i.bq, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.br = shl i64 %.sroa.13112.01040.i.i, 2
  %i.bs = add i64 %i.br, %i.y
  %i.bt = or disjoint i64 %i.bs, 3
  br label %bb.bi

bb.r:                                             ; preds = %.lr.ph1044.i.i
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.al, i64 noundef %i.am, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #18, !noalias !159
  unreachable

.loopexit.i.i:                                    ; preds = %bb.k
  %i.bu = shl i64 %.sroa.13112.01040.i.i, 2
  %i.bv = add i64 %i.bu, %i.y
  br label %bb.bi

bb.s:                                             ; preds = %bb.p
  %i.bw = zext i8 %i.ar to i32
  %i.bx = shl i32 %i.bw, 26
  %i.by = zext i8 %i.ax to i32
  %i.bz = shl nuw nsw i32 %i.by, 20
  %i.ca = or i32 %i.bz, %i.bx
  %i.cb = zext i8 %i.bg to i32
  %i.cc = shl nuw nsw i32 %i.cb, 14
  %i.cd = or i32 %i.ca, %i.cc
  %i.ce = zext i8 %i.bp to i32
  %i.cf = shl nuw nsw i32 %i.ce, 8
  %i.cg = or i32 %i.cd, %i.cf
  %i.ch = tail call i32 @llvm.bswap.i32(i32 %i.cg)
  %.sroa.0240.0.extract.trunc.i.i = trunc nuw i32 %i.ch to i24
  store i24 %.sroa.0240.0.extract.trunc.i.i, ptr %i.an, align 1, !alias.scope !166, !noalias !167
  %.not.i.i79.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i79.i.i, label %_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode21decode_complete_quads.exit.i, label %.lr.ph1044.i.i

bb.t:                                             ; preds = %.lr.ph.i.i
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.ac, i64 noundef %i.ad, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #18, !noalias !159
  unreachable

bb.u:                                             ; preds = %.lr.ph.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 %i.ac ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %i.cj = load i8, ptr %.sroa.0.01031.i.i, align 1, !alias.scope !170, !noalias !171, !noundef !5 ; 2 uses
  %i.ck = zext i8 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !alias.scope !172, !noalias !173, !noundef !5 ; 2 uses
  %i.cn = icmp eq i8 %i.cm, -1
  br i1 %i.cn, label %.loopexit292.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 1
  %i.cp = load i8, ptr %i.co, align 1, !alias.scope !170, !noalias !171, !noundef !5 ; 2 uses
  %i.cq = zext i8 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !alias.scope !172, !noalias !173, !noundef !5 ; 2 uses
  %i.ct = icmp eq i8 %i.cs, -1
  br i1 %i.ct, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 2
  %i.cv = load i8, ptr %i.cu, align 1, !alias.scope !170, !noalias !171, !noundef !5 ; 2 uses
  %i.cw = zext i8 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !alias.scope !172, !noalias !173, !noundef !5 ; 2 uses
end_hunk_1
