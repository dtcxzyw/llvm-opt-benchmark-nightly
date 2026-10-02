Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iced-x86-rs/original/iced_x86-37298a2194944c04.iced_x86.b05d7422b63e665d-cgu.0?download=true
inline.NumInlined: 5815
inline.NumDeleted: 1335
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter3gasNtB4_12GasFormatter12with_options:bb.a

bb.o:                                             ; preds = %.noexc9, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.t, ptr noundef nonnull align 8 dereferenceable(264) %i.s, i64 264, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 264
  store ptr %i.x, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 272
  store ptr %i.aa, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.t, i64 280
  store ptr %i.ad, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 288
  store ptr %i.ag, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 296
  store ptr @_RNvNvNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10fmt_constsNtB6_19FORMATTER_CONSTANTSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref11___stability4LAZY, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.t, i64 304
  store ptr @_RNvNvNvXs0_NtNtCsf8MNnN4IDbl_8iced_x869formatter10fmt_constsNtB9_12ARRAY_CONSTSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref11___stability4LAZY, ptr %i.aq, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !10699
  %i.ar = call noundef dereferenceable_or_null(81) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 81, i64 noundef range(i64 1, 9) 1) #41, !noalias !10699 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.p, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter3new.exit

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 81) #46
          to label %.noexc11 unwind label %bb.q

.noexc11:                                         ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter3new.exit: ; preds = %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.au, ptr noundef nonnull align 8 dereferenceable(312) %i.t, i64 312, i1 false)
  store i64 81, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 336
  store ptr %1, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr %2, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 352
  store ptr %3, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 360
  store ptr %4, ptr %i.ay, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  ret void

bb.r:                                             ; preds = %bb.s, %bb.b
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.s:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres14SymbolResolverEL_EEEB1D_(ptr %1, ptr %2) #42
          to label %bb.t unwind label %bb.r

bb.t:                                             ; preds = %bb.s
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter3gasNtB4_12GasFormatter13format_memory(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(368) %0, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, i32 noundef range(i32 0, 255) %4, i32 noundef range(i32 0, 2) %5, i32 %6, i8 noundef range(i8 71, 77) %7, i8 noundef %8, i8 noundef %9, i32 noundef range(i32 0, 4) %10, i32 noundef range(i32 0, 9) %11, i64 noundef %12, i32 noundef range(i32 1, 256) %13) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [56 x i8], align 8                ; 22 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 285
  %i.f = load i8, ptr %i.e, align 1, !range !40, !noundef !21
  %i.g = zext nneg i8 %i.f to i32
  %i.h = shl nuw i32 %i.g, 30
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !noundef !21 ; 15 uses
  %i.k = and i32 %i.j, 4194304                    ; 2 uses
  %.not = icmp eq i32 %i.k, 0                     ; 4 uses
  %i.l = lshr exact i32 %i.k, 21
  %storemerge = or disjoint i32 %i.l, %i.h
  store i32 %storemerge, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10722)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10723)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.n = load i8, ptr %i.m, align 4, !range !40, !alias.scope !10723, !noalias !10722, !noundef !21 ; 3 uses
  %i.o = shl nuw nsw i8 %i.n, 2
  %narrow.i = add nuw nsw i8 %i.o, -40
  %switch.offset.i = zext i8 %narrow.i to i64
  %narrow22.i = mul nuw i8 %i.n, 48               ; 2 uses
  %i.p = or disjoint i8 %narrow22.i, 8
  %switch.offset12.i = zext i8 %i.p to i64
  %switch.idx.mult14.i = zext i8 %narrow22.i to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 %switch.offset.i
  %.sroa.01.4.in.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %switch.offset12.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 %switch.idx.mult14.i ; 3 uses
  %.sroa.9.4.in.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %.sroa.0.0.i = load i32, ptr %i.q, align 4, !alias.scope !10723, !noalias !10722, !noundef !21
  %.sroa.01.1.i = load ptr, ptr %.sroa.01.4.in.i, align 8, !alias.scope !10723, !noalias !10722, !nonnull !21, !noundef !21
  %.sroa.9.1.i = load i64, ptr %.sroa.9.4.in.i, align 8, !alias.scope !10723, !noalias !10722, !noundef !21
  %.sroa.02.0.i = load ptr, ptr %i.s, align 8, !alias.scope !10723, !noalias !10722, !nonnull !21, !noundef !21
  %.sroa.93.0.i = load i64, ptr %i.t, align 8, !alias.scope !10723, !noalias !10722, !noundef !21
  %.sroa.04.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.sroa.04.0.i = load ptr, ptr %.sroa.04.0.in.i, align 8, !alias.scope !10723, !noalias !10722, !nonnull !21, !noundef !21
  %.sroa.3.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.sroa.3.0.i = load i64, ptr %.sroa.3.0.in.i, align 8, !alias.scope !10723, !noalias !10722, !noundef !21
  %..i.i = tail call noundef i32 @llvm.umin.i32(i32 %.sroa.0.0.i, i32 255)
  %i.u = trunc nuw i32 %..i.i to i8
  store ptr %.sroa.01.1.i, ptr %i.b, align 8, !alias.scope !10722, !noalias !10723
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.9.1.i, ptr %i.v, align 8, !alias.scope !10722, !noalias !10723
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.02.0.i, ptr %i.w, align 8, !alias.scope !10722, !noalias !10723
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.93.0.i, ptr %i.x, align 8, !alias.scope !10722, !noalias !10723
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %.sroa.04.0.i, ptr %i.y, align 8, !alias.scope !10722, !noalias !10723
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.sroa.3.0.i, ptr %i.z, align 8, !alias.scope !10722, !noalias !10723
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i8 %i.u, ptr %i.aa, align 8, !alias.scope !10722, !noalias !10723
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 49
  store i8 %i.n, ptr %i.ab, align 1, !alias.scope !10722, !noalias !10723
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 50
  %i.ad = lshr i32 %i.j, 15
  %i.ae = trunc i32 %i.ad to i8
  %i.af = and i8 %i.ae, 1
  store i8 %i.af, ptr %i.ac, align 2, !alias.scope !10722, !noalias !10723
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 51 ; 4 uses
  %i.ah = lshr i32 %i.j, 16
  %i.ai = trunc i32 %i.ah to i8
  %i.aj = and i8 %i.ai, 1
  store i8 %i.aj, ptr %i.ag, align 1, !alias.scope !10722, !noalias !10723
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.al = lshr i32 %i.j, 17
  %i.am = trunc i32 %i.al to i8
  %i.an = and i8 %i.am, 1
  store i8 %i.an, ptr %i.ak, align 4, !alias.scope !10722, !noalias !10723
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 53
  %i.ap = lshr i32 %i.j, 14
  %i.aq = trunc i32 %i.ap to i8
  %i.ar = and i8 %i.aq, 1
  store i8 %i.ar, ptr %i.ao, align 1, !alias.scope !10722, !noalias !10723
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 54 ; 2 uses
  %i.at = lshr i32 %i.j, 20
  %i.au = trunc i32 %i.at to i8
  %i.av = and i8 %i.au, 1
  store i8 %i.av, ptr %i.as, align 2, !alias.scope !10722, !noalias !10723
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 55 ; 7 uses
  %i.ax = lshr i32 %i.j, 21
  %i.ay = trunc i32 %i.ax to i8
  %i.az = and i8 %i.ay, 1
  store i8 %i.az, ptr %i.aw, align 1, !alias.scope !10722, !noalias !10723
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.bb = load ptr, ptr %i.ba, align 8, !noundef !21 ; 2 uses
  %.not119 = icmp eq ptr %i.bb, null
  br i1 %.not119, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.bd = load ptr, ptr %i.bc, align 8, !nonnull !21, !align !25, !noundef !21
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !invariant.load !21, !nonnull !21
  call void %i.bf(ptr noundef nonnull %i.bb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, i32 noundef %4, i32 noundef %5, i32 %6, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.b) #45
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  switch i8 %8, label %bb.f [
    i8 70, label %bb.d
    i8 69, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.bg = load i64, ptr %3, align 8
  %i.bh = select i1 %.not, i64 0, i64 %i.bg
  %.sroa.043.2 = sub i64 %12, %i.bh
  %.sroa.0.2 = select i1 %.not, i8 0, i8 70
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.bi = and i64 %12, 4294967295
  %i.bj = load i64, ptr %3, align 8
  %i.bk = sub i64 %12, %i.bj
  %sext = shl i64 %i.bk, 32
  %i.bl = ashr exact i64 %sext, 32
  %.sroa.043.0 = select i1 %.not, i64 %12, i64 %i.bl
  %.sroa.0.0 = select i1 %.not, i8 0, i8 69
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d
  %.sroa.063.0 = phi i64 [ %12, %bb.d ], [ %i.bi, %bb.e ], [ %12, %bb.c ] ; 2 uses
  %.sroa.043.1 = phi i64 [ %.sroa.043.2, %bb.d ], [ %.sroa.043.0, %bb.e ], [ %12, %bb.c ] ; 12 uses
  %.sroa.038.0 = phi i32 [ 8, %bb.d ], [ 4, %bb.e ], [ %11, %bb.c ] ; 5 uses
  %.sroa.0.1 = phi i8 [ %.sroa.0.2, %bb.d ], [ %.sroa.0.0, %bb.e ], [ %8, %bb.c ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.bn = load ptr, ptr %i.bm, align 8, !noundef !21 ; 2 uses
  %.not122 = icmp eq ptr %i.bn, null
  br i1 %.not122, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !21, !align !25, !noundef !21
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !invariant.load !21, !nonnull !21
  call void %i.br(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noundef nonnull %i.bn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, i32 noundef %4, i32 noundef %5, i32 %6, i64 noundef %.sroa.063.0, i32 noundef %13) #45
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  store i64 -3, ptr %i.a, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bs = icmp eq i32 %13, 2
  br i1 %i.bs, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.bu = load i32, ptr %i.bt, align 4, !noundef !21
  %i.bv = and i32 %i.bu, 4
  %.not123 = icmp eq i32 %i.bv, 0
  br i1 %.not123, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bx = load i16, ptr %i.bw, align 8, !range !28, !noundef !21
  switch i16 %i.bx, label %bb.m [
    i16 1037, label %bb.l
    i16 1044, label %bb.l
  ]

bb.l:                                             ; preds = %bb.m, %bb.i, %bb.k, %bb.k, %bb.n
  %.sroa.065.0 = phi i1 [ false, %bb.i ], [ %i.cl, %bb.n ], [ false, %bb.k ], [ false, %bb.k ], [ true, %bb.m ] ; 2 uses
  %i.by = icmp eq i8 %.sroa.0.1, 0                ; 2 uses
  %i.bz = icmp ne i8 %9, 0                        ; 2 uses
  %14 = or i8 %.sroa.0.1, %9
  %.sroa.067.0.not = icmp eq i8 %14, 0            ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.cb = load i32, ptr %i.ca, align 4, !noundef !21 ; 3 uses
  %i.cc = lshr i32 %i.cb, 18
  %i.cd = and i32 %i.cc, 3                        ; 2 uses
  %i.ce = lshr i32 %i.cb, 5
  %i.cf = and i32 %i.ce, 7                        ; 3 uses
  %i.cg = add nsw i32 %i.cf, -1
  %i.ch = icmp ult i32 %i.cg, 6                   ; 2 uses
  %i.ci = icmp eq i32 %i.cf, 4
  br i1 %i.ci, label %bb.o, label %bb.q

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.cj = icmp eq i32 %10, 0
  br i1 %i.cj, label %bb.n, label %bb.l

bb.n:                                             ; preds = %bb.m
  %i.ck = and i32 %i.j, 2048
  %i.cl = icmp ne i32 %i.ck, 0
  br label %bb.l

bb.o:                                             ; preds = %bb.l
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cn = load i16, ptr %i.cm, align 8, !range !28, !noundef !21 ; 2 uses
  switch i16 %i.cn, label %bb.q [
    i16 765, label %bb.p
    i16 764, label %bb.p
    i16 763, label %bb.p
    i16 759, label %bb.p
    i16 758, label %bb.p
    i16 757, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o
  %.off = add nsw i32 %i.cd, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.r, label %bb.s

bb.q:                                             ; preds = %bb.r, %bb.r, %bb.o, %bb.l
  %.sroa.070.1 = phi i1 [ true, %bb.o ], [ %i.ch, %bb.l ], [ true, %bb.r ], [ true, %bb.r ]
  %i.co = and i32 %i.j, 4096
  %.not126 = icmp eq i32 %i.co, 0
  br i1 %.not126, label %bb.z, label %bb.ac

bb.r:                                             ; preds = %bb.p
  switch i8 %.sroa.0.1, label %bb.t [
    i8 42, label %bb.q
    i8 26, label %bb.q
  ]

bb.s:                                             ; preds = %bb.p
  %i.cp = and i32 %i.j, 4096
  %.not127 = icmp eq i32 %i.cp, 0
  br i1 %.not127, label %bb.v, label %bb.ac

bb.t:                                             ; preds = %bb.r
  %i.cq = and i32 %i.j, 4096
  %.not125 = icmp eq i32 %i.cq, 0
  br i1 %.not125, label %bb.u, label %bb.ac

bb.u:                                             ; preds = %bb.t
  %.not124 = icmp eq i8 %.sroa.0.1, 41
  br i1 %.not124, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.split210, %.split, %bb.s, %bb.ad, %_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter9fmt_utils19show_segment_prefix.exit, %bb.z, %bb.u
  %i.cr = load i64, ptr %i.a, align 8, !range !59, !noundef !21 ; 3 uses
  %.not128 = icmp eq i64 %i.cr, -3
  br i1 %.not128, label %bb.af, label %bb.ae

bb.w:                                             ; preds = %._crit_edge, %bb.u
  %i.cs = phi i16 [ %.pre, %._crit_edge ], [ %i.cn, %bb.u ]
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 260
  %.val148 = load i32, ptr %i.ct, align 4, !noundef !21
  %i.cu = and i32 %.val148, 4
  %i.cv = icmp ne i32 %i.cu, 0                    ; 3 uses
  switch i16 %i.cs, label %bb.x [
    i16 290, label %_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter9fmt_utils19show_segment_prefix.exit
    i16 291, label %_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter9fmt_utils19show_segment_prefix.exit
    i16 292, label %_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter9fmt_utils19show_segment_prefix.exit
    i16 1040, label %_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter9fmt_utils19show_segment_prefix.exit
    i16 1041, label %_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter9fmt_utils19show_segment_prefix.exit
    i16 1042, label %_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter9fmt_utils19show_segment_prefix.exit
    i16 1043, label %_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter9fmt_utils19show_segment_prefix.exit
    i16 1047, label %_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter9fmt_utils19show_segment_prefix.exit
    i16 1048, label %_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter9fmt_utils19show_segment_prefix.exit
    i16 1049, label %_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter9fmt_utils19show_segment_prefix.exit
    i16 1050, label %_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter9fmt_utils19show_segment_prefix.exit
  ]

bb.x:                                             ; preds = %bb.w
  %narrow.i.i = add nuw nsw i32 %i.cf, 70
  %narrow9.i.i = select i1 %i.ch, i32 %narrow.i.i, i32 0 ; 2 uses
  %.off.i.i = add nsw i32 %i.cd, -1
  %switch.i.i = icmp ult i32 %.off.i.i, 2
  br i1 %switch.i.i, label %bb.y, label %.split

.split:                                           ; preds = %bb.x
  %i.cw = add nsw i32 %narrow9.i.i, -75
  %or.cond.i.i = icmp ult i32 %i.cw, 2
  %..i.i160 = or i1 %or.cond.i.i, %i.cv
  br i1 %..i.i160, label %bb.ac, label %bb.v

bb.y:                                             ; preds = %bb.x
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 35
  %i.cy = load i8, ptr %i.cx, align 1, !alias.scope !10724, !noundef !21
  %switch.tableidx = add i8 %i.cy, -26            ; 2 uses
  %i.cz = icmp ult i8 %switch.tableidx, 33
  br i1 %i.cz, label %switch.lookup, label %.split210

switch.lookup:                                    ; preds = %bb.y
  %i.da = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsp_NtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4infoNtB5_20SimpleInstrInfo_XLATNtB5_9InstrInfo7op_info, i64 %i.da
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %.split210

.split210:                                        ; preds = %bb.y, %switch.lookup
  %.sroa.0.0.i.i = phi i32 [ %switch.ext, %switch.lookup ], [ 74, %bb.y ]
  %.not.i.i = icmp ne i32 %narrow9.i.i, %.sroa.0.0.i.i
  %.8.i.i = or i1 %i.cv, %.not.i.i
  br i1 %.8.i.i, label %bb.ac, label %bb.v

bb.z:                                             ; preds = %bb.q
  br i1 %.sroa.070.1, label %._crit_edge, label %bb.v

._crit_edge:                                      ; preds = %bb.z
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.pre = load i16, ptr %.phi.trans.insert, align 8, !range !28, !alias.scope !10724
  br label %bb.w

bb.aa:                                            ; preds = %.noexc205, %.noexc, %bb.bw, %bb.ae, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bp, %bb.bn, %bb.bm, %bb.bj, %bb.bi, %bb.bg, %bb.be, %_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit.thread, %bb.aw, %bb.bb, %bb.ay, %bb.az, %bb.ba, %bb.at, %bb.aq, %bb.al, %bb.ad, %bb.ac
  %i.db = landingpad { ptr, i32 }
          cleanup
  %.val151 = load i64, ptr %i.a, align 8, !range !59, !noundef !21 ; 2 uses
  %i.dc = icmp sgt i64 %.val151, 0
  br i1 %i.dc, label %bb.ab, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit

bb.ab:                                            ; preds = %bb.aa
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val152 = load ptr, ptr %i.dd, align 8, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val152, i64 noundef %.val151, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !10725
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit

_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter9fmt_utils19show_segment_prefix.exit: ; preds = %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w
  br i1 %i.cv, label %bb.ac, label %bb.v

bb.ac:                                            ; preds = %bb.q, %bb.s, %bb.t, %_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter9fmt_utils19show_segment_prefix.exit, %.split, %.split210
  call void @llvm.experimental.noalias.scope.decl(metadata !10726)
  %i.de = and i32 %i.j, 67108864
  %.not.i = icmp eq i32 %i.de, 0
  %.sroa.05.0.in.v.i = select i1 %.not.i, i64 264, i64 272
  %.sroa.05.0.in.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.05.0.in.v.i
  %i.df = zext nneg i8 %7 to i64
  %.sroa.05.0.i = load ptr, ptr %.sroa.05.0.in.i, align 8, !alias.scope !10726, !nonnull !21, !align !25, !noundef !21
  %i.dg = getelementptr inbounds nuw [48 x i8], ptr %.sroa.05.0.i, i64 %i.df ; 2 uses
  %i.dh = and i32 %i.j, 36
  %or.cond8.i = icmp eq i32 %i.dh, 0              ; 2 uses
  %.sroa.3.0.in.v.i = select i1 %or.cond8.i, i64 16, i64 40
  %.sroa.3.0.in.i156 = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.sroa.3.0.in.v.i
  %.sroa.04.0.in.v.i = select i1 %or.cond8.i, i64 8, i64 32
  %.sroa.04.0.in.i157 = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.sroa.04.0.in.v.i
  %.sroa.04.0.i158 = load ptr, ptr %.sroa.04.0.in.i157, align 8, !noalias !10726, !nonnull !21, !noundef !21
  %.sroa.3.0.i159 = load i64, ptr %.sroa.3.0.in.i156, align 8, !noalias !10726, !noundef !21
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.dj = load ptr, ptr %i.di, align 8, !invariant.load !21, !nonnull !21
  invoke void %i.dj(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, i32 noundef %4, i32 noundef %5, i32 %6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.04.0.i158, i64 noundef %.sroa.3.0.i159, i8 noundef %7)
          to label %bb.ad unwind label %bb.aa

bb.ad:                                            ; preds = %bb.ac
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8, !invariant.load !21, !nonnull !21
  invoke void %i.dl(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @400, i64 noundef 1, i8 noundef 6)
          to label %bb.v unwind label %bb.aa

bb.ae:                                            ; preds = %bb.v
  %i.dm = and i32 %i.j, 33554432
  %i.dn = icmp ne i32 %i.dm, 0
  invoke fastcc void @_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write2(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, i32 noundef range(i32 0, 255) %4, i32 noundef range(i32 0, 2) %5, i32 %6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.b, i64 noundef %.sroa.063.0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.a, i1 noundef zeroext %i.dn, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit unwind label %bb.aa

bb.af:                                            ; preds = %bb.v
  br i1 %.sroa.067.0.not, label %.critedge, label %bb.ag

_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit: ; preds = %bb.ae, %bb.bb
  br i1 %.sroa.067.0.not, label %bb.bv, label %_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit.thread

bb.ag:                                            ; preds = %bb.af
  %i.do = icmp eq i32 %.sroa.038.0, 0
  br i1 %i.do, label %_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dp = and i32 %i.j, 8192
  %i.dq = icmp eq i32 %i.dp, 0
  %i.dr = icmp eq i64 %.sroa.043.1, 0
  %or.cond12 = select i1 %i.dq, i1 %i.dr, i1 false
  br i1 %or.cond12, label %_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ds = load i8, ptr %i.as, align 2, !range !27, !noundef !21 ; 4 uses
  %i.dt = trunc nuw i8 %i.ds to i1                ; 3 uses
  %trunc = trunc nuw i32 %13 to i8
  switch i8 %trunc, label %bb.ao [
    i8 8, label %bb.aj
    i8 4, label %bb.an
  ]

.critedge:                                        ; preds = %bb.as, %bb.ap, %bb.ak, %bb.af
  %.sroa.083.0 = phi i8 [ 0, %bb.af ], [ %i.ds, %bb.ap ], [ %i.ds, %bb.ak ], [ %i.ds, %bb.as ]
  %.sroa.043.3 = phi i64 [ %.sroa.043.1, %bb.af ], [ %.sroa.043.5, %bb.ap ], [ %.sroa.043.4, %bb.ak ], [ %.sroa.043.6, %bb.as ] ; 7 uses
  %.sroa.038.1 = phi i32 [ %.sroa.038.0, %bb.af ], [ %spec.select138, %bb.ap ], [ %spec.select, %bb.ak ], [ %spec.select139, %bb.as ] ; 3 uses
  %i.du = icmp samesign ult i32 %.sroa.038.1, 2
  %i.dv = icmp ult i64 %.sroa.043.3, 256
  %or.cond22 = select i1 %i.du, i1 %i.dv, i1 false
  br i1 %or.cond22, label %bb.aw, label %bb.av

bb.aj:                                            ; preds = %bb.ai
  %i.dw = icmp slt i64 %.sroa.043.1, 0
  %or.cond14 = select i1 %i.dt, i1 %i.dw, i1 false
  br i1 %or.cond14, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.am, %bb.aj
  %.sroa.043.4 = phi i64 [ %i.eb, %bb.am ], [ %.sroa.043.1, %bb.aj ]
  %i.dx = load i8, ptr %i.aw, align 1, !range !27, !noundef !21
  %i.dy = trunc nuw i8 %i.dx to i1
  %spec.select = select i1 %i.dy, i32 4, i32 %.sroa.038.0
  br label %.critedge

bb.al:                                            ; preds = %bb.aj
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8, !invariant.load !21, !nonnull !21
  invoke void %i.ea(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @370, i64 noundef 1, i8 noundef 5)
          to label %bb.am unwind label %bb.aa

bb.am:                                            ; preds = %bb.al
  %i.eb = sub i64 0, %.sroa.043.1
  br label %bb.ak

bb.an:                                            ; preds = %bb.ai
  %i.ec = and i64 %.sroa.043.1, 2147483648
  %i.ed = icmp ne i64 %i.ec, 0
  %or.cond17 = select i1 %i.dt, i1 %i.ed, i1 false
  br i1 %or.cond17, label %bb.aq, label %bb.ap

bb.ao:                                            ; preds = %bb.ai
  %i.ee = and i64 %.sroa.043.1, 32768
  %i.ef = icmp ne i64 %i.ee, 0
  %or.cond20 = select i1 %i.dt, i1 %i.ef, i1 false
  br i1 %or.cond20, label %bb.at, label %bb.as

bb.ap:                                            ; preds = %bb.ar, %bb.an
  %.sroa.043.5 = phi i64 [ %i.el, %bb.ar ], [ %.sroa.043.1, %bb.an ]
  %i.eg = load i8, ptr %i.aw, align 1, !range !27, !noundef !21
  %i.eh = trunc nuw i8 %i.eg to i1
  %spec.select138 = select i1 %i.eh, i32 4, i32 %.sroa.038.0
  br label %.critedge

bb.aq:                                            ; preds = %bb.an
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8, !invariant.load !21, !nonnull !21
  invoke void %i.ej(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @370, i64 noundef 1, i8 noundef 5)
          to label %bb.ar unwind label %bb.aa

bb.ar:                                            ; preds = %bb.aq
  %i.ek = sub nsw i64 0, %.sroa.043.1
  %i.el = and i64 %i.ek, 4294967295
  br label %bb.ap

bb.as:                                            ; preds = %bb.au, %bb.ao
  %.sroa.043.6 = phi i64 [ %i.er, %bb.au ], [ %.sroa.043.1, %bb.ao ]
  %i.em = load i8, ptr %i.aw, align 1, !range !27, !noundef !21
  %i.en = trunc nuw i8 %i.em to i1
  %spec.select139 = select i1 %i.en, i32 2, i32 %.sroa.038.0
  br label %.critedge

bb.at:                                            ; preds = %bb.ao
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8, !invariant.load !21, !nonnull !21
  invoke void %i.ep(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @370, i64 noundef 1, i8 noundef 5)
          to label %bb.au unwind label %bb.aa

bb.au:                                            ; preds = %bb.at
  %i.eq = sub nsw i64 0, %.sroa.043.1
  %i.er = and i64 %i.eq, 65535
  br label %bb.as

bb.av:                                            ; preds = %.critedge
  %i.es = icmp samesign ult i32 %.sroa.038.1, 3
  %i.et = icmp ult i64 %.sroa.043.3, 65536
  %or.cond24 = select i1 %i.es, i1 %i.et, i1 false
  br i1 %or.cond24, label %bb.ay, label %bb.ax

bb.aw:                                            ; preds = %.critedge
  %i.eu = load i8, ptr %i.aw, align 1, !range !27, !noundef !21
  %i.ev = load i8, ptr %i.ag, align 1, !range !27, !noundef !21
  %i.ew = shl nuw nsw i8 %i.eu, 1
  %i.ex = shl nuw nsw i8 %i.ev, 2
  %.sroa.0101.1214 = or disjoint i8 %i.ex, %i.ew
  %.sroa.0101.1 = zext nneg i8 %.sroa.0101.1214 to i32
  %i.ey = invoke { ptr, i64 } @_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter23format_unsigned_integer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.b, i64 noundef %.sroa.043.3, i32 noundef 8, i32 noundef %.sroa.0101.1)
          to label %bb.bb unwind label %bb.aa

bb.ax:                                            ; preds = %bb.av
  %i.ez = icmp samesign ult i32 %.sroa.038.1, 5
  %i.fa = icmp ult i64 %.sroa.043.3, 4294967296
  %or.cond26 = select i1 %i.ez, i1 %i.fa, i1 false
  %i.fb = load i8, ptr %i.aw, align 1, !range !27, !noundef !21
  %i.fc = load i8, ptr %i.ag, align 1, !range !27, !noundef !21
  %i.fd = shl nuw nsw i8 %i.fb, 1
  %i.fe = shl nuw nsw i8 %i.fc, 2
  %.sroa.0107.1212 = or disjoint i8 %i.fe, %i.fd
  %.sroa.0107.1 = zext nneg i8 %.sroa.0107.1212 to i32 ; 2 uses
  br i1 %or.cond26, label %bb.az, label %bb.ba

bb.ay:                                            ; preds = %bb.av
  %i.ff = load i8, ptr %i.aw, align 1, !range !27, !noundef !21
  %i.fg = load i8, ptr %i.ag, align 1, !range !27, !noundef !21
  %i.fh = shl nuw nsw i8 %i.ff, 1
  %i.fi = shl nuw nsw i8 %i.fg, 2
  %.sroa.0104.1213 = or disjoint i8 %i.fi, %i.fh
  %.sroa.0104.1 = zext nneg i8 %.sroa.0104.1213 to i32
  %i.fj = invoke { ptr, i64 } @_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter23format_unsigned_integer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.b, i64 noundef %.sroa.043.3, i32 noundef 16, i32 noundef %.sroa.0104.1)
          to label %bb.bb unwind label %bb.aa

bb.az:                                            ; preds = %bb.ax
  %i.fk = invoke { ptr, i64 } @_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter23format_unsigned_integer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.b, i64 noundef %.sroa.043.3, i32 noundef 32, i32 noundef %.sroa.0107.1)
          to label %bb.bb unwind label %bb.aa

bb.ba:                                            ; preds = %bb.ax
  %i.fl = invoke { ptr, i64 } @_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter23format_unsigned_integer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.b, i64 noundef %.sroa.043.3, i32 noundef 64, i32 noundef %.sroa.0107.1)
          to label %bb.bb unwind label %bb.aa

bb.bb:                                            ; preds = %bb.ay, %bb.az, %bb.ba, %bb.aw
  %.sink = phi i8 [ 1, %bb.aw ], [ 5, %bb.az ], [ 7, %bb.ba ], [ 3, %bb.ay ]
  %.pn = phi { ptr, i64 } [ %i.ey, %bb.aw ], [ %i.fk, %bb.az ], [ %i.fl, %bb.ba ], [ %i.fj, %bb.ay ] ; 2 uses
  %not.215 = xor i8 %.sroa.083.0, %.sink
  %.sroa.087.0 = extractvalue { ptr, i64 } %.pn, 0
  %.sroa.5.0 = extractvalue { ptr, i64 } %.pn, 1
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.fn = load ptr, ptr %i.fm, align 8, !invariant.load !21, !nonnull !21
  invoke void %i.fn(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, i32 noundef %4, i32 noundef %5, i32 %6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.087.0, i64 noundef %.sroa.5.0, i64 noundef %.sroa.043.1, i8 noundef %not.215, i8 noundef 7)
          to label %_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit unwind label %bb.aa

_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit.thread: ; preds = %bb.ag, %bb.ah, %_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fp = load ptr, ptr %i.fo, align 8, !invariant.load !21, !nonnull !21 ; 8 uses
  invoke void %i.fp(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @373, i64 noundef 1, i8 noundef 6)
          to label %bb.bc unwind label %bb.aa

bb.bc:                                            ; preds = %_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write1.exit.thread
  %i.fq = load i32, ptr %i.i, align 8, !noundef !21 ; 8 uses
  %i.fr = and i32 %i.fq, 128
  %.not130 = icmp eq i32 %i.fr, 0                 ; 2 uses
  br i1 %.not130, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.be, %bb.bc
  %or.cond6.not133 = or i1 %i.bz, %i.by
  %or.cond8 = or i1 %or.cond6.not133, %.sroa.065.0
  br i1 %or.cond8, label %bb.bf, label %bb.bg

bb.be:                                            ; preds = %bb.bc
  invoke void %i.fp(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0)
          to label %bb.bd unwind label %bb.aa

bb.bf:                                            ; preds = %bb.bd
  br i1 %i.by, label %bb.bi, label %bb.bj

bb.bg:                                            ; preds = %bb.bd
  call void @llvm.experimental.noalias.scope.decl(metadata !10727)
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.ft = load i32, ptr %i.fs, align 4, !alias.scope !10727, !noundef !21
  %i.fu = and i32 %i.ft, 2
  %i.fv = icmp ne i32 %i.fu, 0
  %i.fw = icmp eq i8 %.sroa.0.1, -7
  %or.cond.i = and i1 %i.fw, %i.fv
  %i.fx = and i32 %i.fq, 67108864
  %.not.i163 = icmp eq i32 %i.fx, 0
  %.sroa.05.0.in.v.i164 = select i1 %.not.i163, i64 264, i64 272
  %.sroa.05.0.in.i165 = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.05.0.in.v.i164
  %i.fy = zext i8 %.sroa.0.1 to i64
  %i.fz = select i1 %or.cond.i, i64 217, i64 %i.fy
  %.sroa.05.0.i166 = load ptr, ptr %.sroa.05.0.in.i165, align 8, !alias.scope !10727, !nonnull !21, !align !25, !noundef !21
  %i.ga = getelementptr inbounds nuw [48 x i8], ptr %.sroa.05.0.i166, i64 %i.fz ; 2 uses
  %i.gb = and i32 %i.fq, 36
  %or.cond8.i167 = icmp eq i32 %i.gb, 0           ; 2 uses
  %.sroa.3.0.in.v.i168 = select i1 %or.cond8.i167, i64 16, i64 40
end_hunk_0
