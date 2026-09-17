Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iced-x86-rs/original/iced_x86-37298a2194944c04.iced_x86.b05d7422b63e665d-cgu.0?download=true
inline.NumInlined: 5815
inline.NumDeleted: 1335
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter12with_options:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.q, ptr noundef nonnull align 8 dereferenceable(264) %i.p, i64 264, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 264
  store ptr %i.u, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 272
  store ptr %i.x, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 280
  store ptr %i.aa, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 288
  store ptr @_RNvNvNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10fmt_constsNtB6_19FORMATTER_CONSTANTSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref11___stability4LAZY, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 296
  store ptr @_RNvNvNvXs0_NtNtCsf8MNnN4IDbl_8iced_x869formatter10fmt_constsNtB9_12ARRAY_CONSTSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref11___stability4LAZY, ptr %i.aj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !11088
  %i.ak = call noundef dereferenceable_or_null(81) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 81, i64 noundef range(i64 1, 9) 1) #41, !noalias !11088 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.n, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter3new.exit

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 81) #46
          to label %.noexc10 unwind label %bb.o

.noexc10:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter3new.exit: ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.an, ptr noundef nonnull align 8 dereferenceable(304) %i.q, i64 304, i1 false)
  store i64 81, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ak, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr %1, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 336
  store ptr %2, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr %3, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 352
  store ptr %4, ptr %i.ar, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  ret void

bb.p:                                             ; preds = %bb.q, %bb.b
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.q:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres14SymbolResolverEL_EEEB1D_(ptr %1, ptr %2) #42
          to label %bb.r unwind label %bb.p

bb.r:                                             ; preds = %bb.q
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter13format_memory(ptr noalias nofree noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, i32 noundef range(i32 0, 255) %4, i32 noundef range(i32 0, 2) %5, i32 %6, i8 noundef range(i8 71, 77) %7, i8 noundef %8, i8 noundef %9, i32 noundef range(i32 0, 4) %10, i32 noundef range(i32 0, 9) %11, i64 noundef %12, i32 noundef range(i32 1, 256) %13, i32 noundef range(i32 0, 65536) %14) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 10 uses
  %i.b = alloca [56 x i8], align 8                ; 19 uses
  %i.c = alloca [4 x i8], align 4                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 285
  %i.f = load i8, ptr %i.e, align 1, !range !40, !noundef !21
  %i.g = zext nneg i8 %i.f to i32
  %i.h = shl nuw i32 %i.g, 30
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 19 uses
  %i.j = load i32, ptr %i.i, align 8, !noundef !21 ; 6 uses
  %i.k = lshr i32 %i.j, 21                        ; 2 uses
  %i.l = and i32 %i.k, 2
  %storemerge = or disjoint i32 %i.l, %i.h
  store i32 %storemerge, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11126)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.n = load i8, ptr %i.m, align 4, !range !40, !alias.scope !11126, !noalias !11125, !noundef !21 ; 3 uses
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
  %.sroa.0.0.i = load i32, ptr %i.q, align 4, !alias.scope !11126, !noalias !11125, !noundef !21
  %.sroa.01.1.i = load ptr, ptr %.sroa.01.4.in.i, align 8, !alias.scope !11126, !noalias !11125, !nonnull !21, !noundef !21
  %.sroa.9.1.i = load i64, ptr %.sroa.9.4.in.i, align 8, !alias.scope !11126, !noalias !11125, !noundef !21
  %.sroa.02.0.i = load ptr, ptr %i.s, align 8, !alias.scope !11126, !noalias !11125, !nonnull !21, !noundef !21
  %.sroa.93.0.i = load i64, ptr %i.t, align 8, !alias.scope !11126, !noalias !11125, !noundef !21
  %.sroa.04.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.sroa.04.0.i = load ptr, ptr %.sroa.04.0.in.i, align 8, !alias.scope !11126, !noalias !11125, !nonnull !21, !noundef !21
  %.sroa.3.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.sroa.3.0.i = load i64, ptr %.sroa.3.0.in.i, align 8, !alias.scope !11126, !noalias !11125, !noundef !21
  %..i.i = tail call noundef i32 @llvm.umin.i32(i32 %.sroa.0.0.i, i32 255)
  %i.u = trunc nuw i32 %..i.i to i8
  store ptr %.sroa.01.1.i, ptr %i.b, align 8, !alias.scope !11125, !noalias !11126
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.9.1.i, ptr %i.v, align 8, !alias.scope !11125, !noalias !11126
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.02.0.i, ptr %i.w, align 8, !alias.scope !11125, !noalias !11126
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.93.0.i, ptr %i.x, align 8, !alias.scope !11125, !noalias !11126
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %.sroa.04.0.i, ptr %i.y, align 8, !alias.scope !11125, !noalias !11126
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.sroa.3.0.i, ptr %i.z, align 8, !alias.scope !11125, !noalias !11126
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i8 %i.u, ptr %i.aa, align 8, !alias.scope !11125, !noalias !11126
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 49
  store i8 %i.n, ptr %i.ab, align 1, !alias.scope !11125, !noalias !11126
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 50
  %i.ad = lshr i32 %i.j, 15
  %i.ae = trunc i32 %i.ad to i8
  %i.af = and i8 %i.ae, 1
  store i8 %i.af, ptr %i.ac, align 2, !alias.scope !11125, !noalias !11126
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 51
  %i.ah = lshr i32 %i.j, 16
  %i.ai = trunc i32 %i.ah to i8
  %i.aj = and i8 %i.ai, 1
  store i8 %i.aj, ptr %i.ag, align 1, !alias.scope !11125, !noalias !11126
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.al = lshr i32 %i.j, 17
  %i.am = trunc i32 %i.al to i8
  %i.an = and i8 %i.am, 1
  store i8 %i.an, ptr %i.ak, align 4, !alias.scope !11125, !noalias !11126
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 53
  %i.ap = lshr i32 %i.j, 14
  %i.aq = trunc i32 %i.ap to i8
  %i.ar = and i8 %i.aq, 1
  store i8 %i.ar, ptr %i.ao, align 1, !alias.scope !11125, !noalias !11126
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 54
  %i.at = lshr i32 %i.j, 20
  %i.au = trunc i32 %i.at to i8
  %i.av = and i8 %i.au, 1
  store i8 %i.av, ptr %i.as, align 2, !alias.scope !11125, !noalias !11126
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 55
  %i.ax = trunc i32 %i.k to i8
  %i.ay = and i8 %i.ax, 1
  store i8 %i.ay, ptr %i.aw, align 1, !alias.scope !11125, !noalias !11126
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ba = load ptr, ptr %i.az, align 8, !noundef !21 ; 2 uses
  %.not100 = icmp eq ptr %i.ba, null
  br i1 %.not100, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !21, !align !25, !noundef !21
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !invariant.load !21, !nonnull !21
  call void %i.be(ptr noundef nonnull %i.ba, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, i32 noundef %4, i32 noundef %5, i32 %6, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.b) #45
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  switch i8 %8, label %bb.f [
    i8 70, label %bb.d
    i8 69, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.bf = load i32, ptr %i.i, align 8, !noundef !21
  %i.bg = and i32 %i.bf, 4194304
  %.not102 = icmp eq i32 %i.bg, 0                 ; 2 uses
  %i.bh = load i64, ptr %3, align 8
  %i.bi = select i1 %.not102, i64 0, i64 %i.bh
  %.sroa.033.2 = sub i64 %12, %i.bi
  %.sroa.0.2 = select i1 %.not102, i8 0, i8 70
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.bj = and i64 %12, 4294967295
  %i.bk = load i32, ptr %i.i, align 8, !noundef !21
  %i.bl = and i32 %i.bk, 4194304
  %.not101 = icmp eq i32 %i.bl, 0                 ; 2 uses
  %i.bm = load i64, ptr %3, align 8
  %i.bn = sub i64 %12, %i.bm
  %sext = shl i64 %i.bn, 32
  %i.bo = ashr exact i64 %sext, 32
  %.sroa.033.0 = select i1 %.not101, i64 %12, i64 %i.bo
  %.sroa.0.0 = select i1 %.not101, i8 0, i8 69
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d
  %.sroa.040.0 = phi i64 [ %12, %bb.d ], [ %i.bj, %bb.e ], [ %12, %bb.c ] ; 3 uses
  %.sroa.033.1 = phi i64 [ %.sroa.033.2, %bb.d ], [ %.sroa.033.0, %bb.e ], [ %12, %bb.c ] ; 2 uses
  %.sroa.031.0 = phi i32 [ 8, %bb.d ], [ 4, %bb.e ], [ %11, %bb.c ] ; 2 uses
  %.sroa.0.1 = phi i8 [ %.sroa.0.2, %bb.d ], [ %.sroa.0.0, %bb.e ], [ %8, %bb.c ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.bq = load ptr, ptr %i.bp, align 8, !noundef !21 ; 2 uses
  %.not103 = icmp eq ptr %i.bq, null
  br i1 %.not103, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !21, !align !25, !noundef !21
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !invariant.load !21, !nonnull !21
  call void %i.bu(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noundef nonnull %i.bq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, i32 noundef %4, i32 noundef %5, i32 %6, i64 noundef %.sroa.040.0, i32 noundef %13) #45
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  store i64 -3, ptr %i.a, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bv = icmp eq i32 %10, 0
  %i.bw = load i32, ptr %i.i, align 8             ; 5 uses
  %i.bx = lshr i32 %i.bw, 11
  %i.by = trunc i32 %i.bx to i8
  %15 = and i8 %i.by, 1
  %.sroa.043.0 = select i1 %i.bv, i8 %15, i8 1    ; 2 uses
  %.not105.not = icmp eq i8 %.sroa.0.1, 0
  %16 = or i8 %.sroa.043.0, %.sroa.0.1
  %or.cond19.not.not = icmp eq i8 %16, 0
  %spec.store.select = select i1 %or.cond19.not.not, i8 1, i8 %.sroa.043.0 ; 2 uses
  %i.bz = icmp eq i32 %13, 2
  br i1 %i.bz, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.l, %bb.l, %bb.i
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.cb = load i32, ptr %i.ca, align 4, !noundef !21
  %i.cc = and i32 %i.cb, 4
  %.not105 = icmp eq i32 %i.cc, 0
  br i1 %.not105, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ce = load i16, ptr %i.cd, align 8, !range !28, !noundef !21
  switch i16 %i.ce, label %bb.m [
    i16 1037, label %bb.j
    i16 1044, label %bb.j
  ]

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.j
  %.sroa.043.1 = phi i8 [ 0, %bb.j ], [ %spec.store.select, %bb.k ], [ %spec.store.select, %bb.l ]
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.cg = load i32, ptr %i.cf, align 4, !noundef !21 ; 3 uses
  %i.ch = lshr i32 %i.cg, 18
  %i.ci = and i32 %i.ch, 3
  %i.cj = add nsw i32 %i.ci, -1
  %.sroa.045.0 = icmp ult i32 %i.cj, 2            ; 6 uses
  %i.ck = or i8 %.sroa.0.1, %9
  %.sroa.048.0 = icmp ne i8 %i.ck, 0              ; 5 uses
  %i.cl = lshr i32 %i.cg, 5
  %i.cm = and i32 %i.cl, 7                        ; 4 uses
  %i.cn = add nsw i32 %i.cm, -7
  %i.co = icmp ult i32 %i.cn, -6                  ; 2 uses
  %narrow = add nuw nsw i32 %i.cm, 70
  %or.cond = or i1 %.sroa.048.0, %.sroa.045.0
  %or.cond.not = xor i1 %or.cond, true
  %i.cp = load i64, ptr %i.a, align 8             ; 5 uses
  %.not106 = icmp eq i64 %i.cp, -3                ; 6 uses
  %or.cond128 = select i1 %or.cond.not, i1 %.not106, i1 false
  br i1 %or.cond128, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.048.0.not = xor i1 %.sroa.048.0, true
  %or.cond3.not = and i1 %.sroa.045.0, %.sroa.048.0.not
  %or.cond129 = select i1 %or.cond3.not, i1 %.not106, i1 false
  br i1 %or.cond129, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %.not106, label %.thread, label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.cq = and i32 %i.bw, 536870912
  %i.cr = icmp eq i32 %i.cq, 0
  %or.cond6 = select i1 %i.cr, i1 %i.co, i1 false
  br i1 %or.cond6, label %bb.t, label %.thread

.thread:                                          ; preds = %bb.p, %bb.o
  %i.cs = icmp slt i32 %i.bw, 0
  br label %bb.t

bb.q:                                             ; preds = %bb.o
  %i.ct = and i32 %i.bw, 1073741824
  %i.cu = icmp ne i32 %i.ct, 0
  br label %bb.t

.loopexit:                                        ; preds = %bb.av, %.noexc145
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit.split-lp:                               ; preds = %.invoke218, %.invoke, %bb.bi, %bb.bj, %bb.bk, %bb.bn, %bb.bp, %bb.bt, %bb.bw, %bb.bx, %bb.bz, %bb.cc, %bb.ce, %bb.cf, %bb.ch, %bb.ci, %bb.cj, %bb.cl, %bb.cm, %bb.co, %bb.cq, %bb.cu, %bb.cv
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.0.val.off.i = add i64 %i.cp, -1
  %switch.i = icmp ult i64 %.0.val.off.i, -4
  br i1 %switch.i, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit

bb.s:                                             ; preds = %bb.r
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val136 = load ptr, ptr %i.cv, align 8, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val136, i64 noundef %i.cp, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !11127
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit

bb.t:                                             ; preds = %bb.q, %.thread, %bb.m, %bb.p
  %.sroa.058.0 = phi i1 [ %i.cu, %bb.q ], [ %i.cs, %.thread ], [ true, %bb.m ], [ true, %bb.p ] ; 3 uses
  %spec.select = select i1 %.sroa.048.0, i1 true, i1 %.sroa.058.0 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val131 = load i16, ptr %i.cw, align 8, !range !28, !noundef !21 ; 3 uses
  %i.cx = and i32 %i.cg, 67108864
  %.not.i = icmp eq i32 %i.cx, 0
  %i.cy = zext nneg i16 %.val131 to i64
  %.sroa.0.0.in.v.i = select i1 %.not.i, ptr @_RNvNtCsf8MNnN4IDbl_8iced_x8624instruction_memory_sizes12SIZES_NORMAL, ptr @_RNvNtCsf8MNnN4IDbl_8iced_x8624instruction_memory_sizes10SIZES_BCST
  %.sroa.0.0.in.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.in.v.i, i64 %i.cy
  %.sroa.0.0.i141 = load i8, ptr %.sroa.0.0.in.i, align 1, !range !39, !noundef !21
  %i.cz = load i32, ptr %i.c, align 4, !noundef !21
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val137 = load ptr, ptr %i.da, align 8         ; 16 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %.val140 = load i8, ptr %i.db, align 4          ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11128)
  %i.dc = lshr i32 %i.cz, 30                      ; 2 uses
  %i.dd = icmp eq i32 %i.dc, 3
  br i1 %i.dd, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter18format_memory_size.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.de = and i32 %14, 7                          ; 5 uses
  %i.df = icmp eq i32 %i.de, 3
  br i1 %i.df, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter18format_memory_size.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dg = zext i8 %.sroa.0.0.i141 to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.di = load ptr, ptr %i.dh, align 8, !alias.scope !11128, !nonnull !21, !align !25, !noundef !21 ; 3 uses
  %i.dj = getelementptr inbounds nuw [24 x i8], ptr %i.di, i64 %i.dg ; 7 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !noalias !11128, !nonnull !21, !align !25, !noundef !21 ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dm = load i64, ptr %i.dl, align 8, !noalias !11128, !noundef !21 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.do = load i32, ptr %i.dn, align 8, !noalias !11128, !noundef !21
  switch i32 %i.do, label %bb.w [
    i32 0, label %bb.x
    i32 8, label %bb.y
    i32 16, label %bb.z
  ]

bb.w:                                             ; preds = %bb.v
  %i.dp = icmp eq i32 %i.de, 4
  br i1 %i.dp, label %bb.af, label %.thread.i

bb.x:                                             ; preds = %bb.v
  switch i32 %i.de, label %.thread.i [
    i32 5, label %bb.aa
    i32 4, label %bb.af
  ]

bb.y:                                             ; preds = %bb.v
  switch i32 %i.de, label %.thread.i [
    i32 1, label %bb.ad
    i32 4, label %bb.af
  ]

bb.z:                                             ; preds = %bb.v
  switch i32 %i.de, label %.thread.i [
    i32 2, label %bb.ae
    i32 4, label %bb.af
  ]

bb.aa:                                            ; preds = %bb.x
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.dr = load ptr, ptr %i.dq, align 8, !alias.scope !11128, !nonnull !21, !align !25, !noundef !21 ; 2 uses
  br i1 %.sroa.045.0, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 272
  br label %.thread.i

bb.ac:                                            ; preds = %bb.aa
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 432
  br label %.thread.i

bb.ad:                                            ; preds = %bb.y
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.dv = load ptr, ptr %i.du, align 8, !alias.scope !11128, !nonnull !21, !align !25, !noundef !21
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 384
  br label %.thread.i

bb.ae:                                            ; preds = %bb.z
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.dy = load ptr, ptr %i.dx, align 8, !alias.scope !11128, !nonnull !21, !align !25, !noundef !21
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 400
  br label %.thread.i

bb.af:                                            ; preds = %bb.z, %bb.y, %bb.x, %bb.w
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.eb = load ptr, ptr %i.ea, align 8, !alias.scope !11128, !nonnull !21, !align !25, !noundef !21
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 496
  br label %.thread.i

.thread.i:                                        ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.z, %bb.y, %bb.x, %bb.w
  %.sroa.10.1.i = phi i64 [ 2, %bb.af ], [ %i.dm, %bb.w ], [ %i.dm, %bb.x ], [ %i.dm, %bb.y ], [ %i.dm, %bb.z ], [ 2, %bb.ae ], [ 2, %bb.ad ], [ 2, %bb.ab ], [ 2, %bb.ac ] ; 8 uses
  %.sroa.0.1.i = phi ptr [ %i.ec, %bb.af ], [ %i.dk, %bb.w ], [ %i.dk, %bb.x ], [ %i.dk, %bb.y ], [ %i.dk, %bb.z ], [ %i.dz, %bb.ae ], [ %i.dw, %bb.ad ], [ %i.ds, %bb.ab ], [ %i.dt, %bb.ac ] ; 4 uses
  switch i32 %i.dc, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter16is_same_mem_size.exit.thread.i [
    i32 0, label %bb.ag
    i32 2, label %bb.ao
  ]

bb.ag:                                            ; preds = %.thread.i
  %.not18.i = icmp eq i8 %.val140, -1
  %or.cond.i = select i1 %.not106, i1 true, i1 %.not18.i
  br i1 %or.cond.i, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.ed = and i32 %14, 8
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %bb.ai, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter16is_same_mem_size.exit.thread.i

bb.ai:                                            ; preds = %bb.ah
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dj, i64 20
  %i.eg = load i8, ptr %i.ef, align 4, !range !27, !noalias !11128, !noundef !21
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter16is_same_mem_size.exit.thread.i, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter18format_memory_size.exit

bb.aj:                                            ; preds = %bb.ag
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dj, i64 20
  %i.ej = load i8, ptr %i.ei, align 4, !range !27, !noalias !11128, !noundef !21
  %i.ek = trunc nuw i8 %i.ej to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !11129)
  br i1 %i.ek, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter16is_same_mem_size.exit.thread.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.sroa.01.0.i.i = zext i8 %.val140 to i64       ; 2 uses
  %i.el = icmp ult i8 %.val140, -94
  br i1 %i.el, label %bb.al, label %.invoke218

bb.al:                                            ; preds = %bb.ak
  %i.em = getelementptr inbounds nuw [24 x i8], ptr %i.di, i64 %.sroa.01.0.i.i ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 20
  %i.eo = load i8, ptr %i.en, align 4, !range !27, !noalias !11130, !noundef !21
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter16is_same_mem_size.exit.thread.i, label %bb.am

.invoke218:                                       ; preds = %bb.aq, %bb.ak
  %i.eq = phi i64 [ %.sroa.01.0.i.i, %bb.ak ], [ %.sroa.01.0.i29.i, %bb.aq ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.eq, i64 noundef 162, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @417) #47
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke218
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.er = load ptr, ptr %i.em, align 8, !noalias !11130, !nonnull !21, !align !25, !noundef !21
  %i.es = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.et = load i64, ptr %i.es, align 8, !noalias !11130, !noundef !21
  call void @llvm.experimental.noalias.scope.decl(metadata !11131)
  call void @llvm.experimental.noalias.scope.decl(metadata !11132)
  %.not.i.i.i = icmp eq i64 %.sroa.10.1.i, %i.et
  br i1 %.not.i.i.i, label %.preheader.split.i.i.i.preheader, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter16is_same_mem_size.exit.thread.i

.preheader.split.i.i.i.preheader:                 ; preds = %bb.am
  %exitcond.not.i.i.i228 = icmp eq i64 %.sroa.10.1.i, 0
  br i1 %exitcond.not.i.i.i228, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter18format_memory_size.exit, label %.lr.ph230

.preheader.split.i.i.i:                           ; preds = %bb.an
  %i.eu = add nuw nsw i64 %.sroa.02.0.i.i.i229, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.eu, %.sroa.10.1.i
  br i1 %exitcond.not.i.i.i, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter18format_memory_size.exit, label %.lr.ph230

.lr.ph230:                                        ; preds = %.preheader.split.i.i.i.preheader, %.preheader.split.i.i.i
  %.sroa.02.0.i.i.i229 = phi i64 [ %i.eu, %.preheader.split.i.i.i ], [ 0, %.preheader.split.i.i.i.preheader ] ; 3 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.1.i, i64 %.sroa.02.0.i.i.i229
  %i.ew = load ptr, ptr %i.ev, align 8, !alias.scope !11133, !noalias !11134, !nonnull !21, !align !25, !noundef !21 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.ey = load i64, ptr %i.ex, align 8, !noalias !11135, !noundef !21 ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %.sroa.02.0.i.i.i229
  %i.fa = load ptr, ptr %i.ez, align 8, !alias.scope !11132, !noalias !11136, !nonnull !21, !align !25, !noundef !21 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fc = load i64, ptr %i.fb, align 8, !noalias !11135, !noundef !21
  %i.fd = icmp eq i64 %i.ey, %i.fc
  br i1 %i.fd, label %bb.an, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter16is_same_mem_size.exit.thread.i

bb.an:                                            ; preds = %.lr.ph230
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !noalias !11135, !nonnull !21, !noundef !21
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8, !noalias !11135, !nonnull !21, !noundef !21
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull %i.ff, ptr nonnull %i.fh, i64 %i.ey), !noalias !11135
  %.not6.i.i.i = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %.not6.i.i.i, label %.preheader.split.i.i.i, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter16is_same_mem_size.exit.thread.i

_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter16is_same_mem_size.exit.thread.i: ; preds = %bb.an, %.lr.ph230, %bb.au, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter16is_same_mem_size.exit37.thread.i, %bb.am, %bb.al, %bb.aj, %bb.ai, %bb.ah, %.thread.i
  %.idx.i = shl nuw nsw i64 %.sroa.10.1.i, 3
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i, i64 %.idx.i
  %i.fj = icmp eq i64 %.sroa.10.1.i, 0
  br i1 %i.fj, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter18format_memory_size.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter16is_same_mem_size.exit.thread.i
  %i.fk = and i32 %i.bw, 40
  %or.cond.i.i = icmp eq i32 %i.fk, 0             ; 2 uses
  %.sroa.3.0.in.v.i.i = select i1 %or.cond.i.i, i64 16, i64 40
  %.sroa.0.0.in.v.i.i = select i1 %or.cond.i.i, i64 8, i64 32
  br label %bb.av

bb.ao:                                            ; preds = %.thread.i
  %.not16.i = icmp eq i8 %.val140, -1
  %or.cond21.i = select i1 %.not106, i1 true, i1 %.not16.i
  br i1 %or.cond21.i, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter16is_same_mem_size.exit37.thread.i, label %bb.ap
end_hunk_0
begin_hunk_1_@_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter13format_memory:bb.a

.preheader.split.i.i32.i.preheader:               ; preds = %bb.as
  %exitcond.not.i.i34.i226 = icmp eq i64 %.sroa.10.1.i, 0
  br i1 %exitcond.not.i.i34.i226, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter18format_memory_size.exit, label %.lr.ph

.preheader.split.i.i32.i:                         ; preds = %bb.at
  %i.fy = add nuw nsw i64 %.sroa.02.0.i.i33.i227, 1 ; 2 uses
  %exitcond.not.i.i34.i = icmp eq i64 %i.fy, %.sroa.10.1.i
  br i1 %exitcond.not.i.i34.i, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter18format_memory_size.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.split.i.i32.i.preheader, %.preheader.split.i.i32.i
  %.sroa.02.0.i.i33.i227 = phi i64 [ %i.fy, %.preheader.split.i.i32.i ], [ 0, %.preheader.split.i.i32.i.preheader ] ; 3 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.1.i, i64 %.sroa.02.0.i.i33.i227
  %i.ga = load ptr, ptr %i.fz, align 8, !alias.scope !11141, !noalias !11142, !nonnull !21, !align !25, !noundef !21 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.gc = load i64, ptr %i.gb, align 8, !noalias !11143, !noundef !21 ; 2 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %.sroa.02.0.i.i33.i227
  %i.ge = load ptr, ptr %i.gd, align 8, !alias.scope !11140, !noalias !11144, !nonnull !21, !align !25, !noundef !21 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gg = load i64, ptr %i.gf, align 8, !noalias !11143, !noundef !21
  %i.gh = icmp eq i64 %i.gc, %i.gg
  br i1 %i.gh, label %bb.at, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter16is_same_mem_size.exit37.thread.i

bb.at:                                            ; preds = %.lr.ph
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8, !noalias !11143, !nonnull !21, !noundef !21
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !noalias !11143, !nonnull !21, !noundef !21
  %bcmp.i.i35.i = call i32 @bcmp(ptr nonnull %i.gj, ptr nonnull %i.gl, i64 %i.gc), !noalias !11143
  %.not6.i.i36.i = icmp eq i32 %bcmp.i.i35.i, 0
  br i1 %.not6.i.i36.i, label %.preheader.split.i.i32.i, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter16is_same_mem_size.exit37.thread.i

bb.au:                                            ; preds = %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter16is_same_mem_size.exit37.thread.i
  %i.gm = getelementptr inbounds nuw i8, ptr %i.dj, i64 20
  %i.gn = load i8, ptr %i.gm, align 4, !range !27, !noalias !11128, !noundef !21
  %i.go = trunc nuw i8 %i.gn to i1
  br i1 %i.go, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter16is_same_mem_size.exit.thread.i, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter18format_memory_size.exit

bb.av:                                            ; preds = %.noexc146, %.lr.ph.i
  %.sroa.011.07.i = phi ptr [ %.sroa.0.1.i, %.lr.ph.i ], [ %i.gp, %.noexc146 ] ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.011.07.i, i64 8 ; 2 uses
  %i.gq = load ptr, ptr %.sroa.011.07.i, align 8, !noalias !11128, !nonnull !21, !align !25, !noundef !21 ; 2 uses
  %.sroa.3.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.gq, i64 %.sroa.3.0.in.v.i.i
  %.sroa.0.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.gq, i64 %.sroa.0.0.in.v.i.i
  %.sroa.0.0.i38.i = load ptr, ptr %.sroa.0.0.in.i.i, align 8, !alias.scope !11145, !noalias !11128, !nonnull !21, !noundef !21
  %.sroa.3.0.i.i = load i64, ptr %.sroa.3.0.in.i.i, align 8, !alias.scope !11145, !noalias !11128, !noundef !21
  invoke void %.val137(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i38.i, i64 noundef %.sroa.3.0.i.i, i8 noundef 4) #45
          to label %.noexc145 unwind label %.loopexit, !inline_history !11108

.noexc145:                                        ; preds = %bb.av
  invoke void %.val137(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0) #45
          to label %.noexc146 unwind label %.loopexit, !inline_history !11108

.noexc146:                                        ; preds = %.noexc145
  %i.gr = icmp eq ptr %i.gp, %i.fi
  br i1 %i.gr, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter18format_memory_size.exit, label %bb.av

_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter18format_memory_size.exit: ; preds = %.preheader.split.i.i32.i, %.preheader.split.i.i.i, %.noexc146, %.preheader.split.i.i32.i.preheader, %.preheader.split.i.i.i.preheader, %bb.au, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter16is_same_mem_size.exit.thread.i, %bb.ai, %bb.u, %bb.t
  %.not200.not = icmp eq i32 %i.cm, 4
  br i1 %.not200.not, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter18format_memory_size.exit
  switch i16 %.val131, label %bb.ay [
    i16 765, label %bb.ax
    i16 764, label %bb.ax
    i16 763, label %bb.ax
    i16 759, label %bb.ax
    i16 758, label %bb.ax
    i16 757, label %bb.ax
  ]

bb.ax:                                            ; preds = %bb.aw, %bb.aw, %bb.aw, %bb.aw, %bb.aw, %bb.aw
  br i1 %.sroa.045.0, label %bb.az, label %bb.ba

bb.ay:                                            ; preds = %bb.az, %bb.az, %bb.aw, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter18format_memory_size.exit
  %i.gs = load i32, ptr %i.i, align 8, !noundef !21 ; 4 uses
  %i.gt = and i32 %i.gs, 4096
  %.not112.a = icmp eq i32 %i.gt, 0
  br i1 %.not112.a, label %bb.bh, label %bb.bi

bb.az:                                            ; preds = %bb.ax
  switch i8 %.sroa.0.1, label %bb.bb [
    i8 42, label %bb.ay
    i8 26, label %bb.ay
  ]

bb.ba:                                            ; preds = %bb.ax
  %i.gu = load i32, ptr %i.i, align 8, !noundef !21 ; 2 uses
  %i.gv = and i32 %i.gu, 4096
  %.not114 = icmp eq i32 %i.gv, 0
  br i1 %.not114, label %.thread212, label %bb.bi

bb.bb:                                            ; preds = %bb.az
  %i.gw = load i32, ptr %i.i, align 8, !noundef !21 ; 4 uses
  %i.gx = and i32 %i.gw, 4096
  %.not111.a = icmp eq i32 %i.gx, 0
  br i1 %.not111.a, label %bb.bc, label %bb.bi

bb.bc:                                            ; preds = %bb.bb
  %.not110 = icmp eq i8 %.sroa.0.1, 41
  br i1 %.not110, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %.split189, %_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter9fmt_utils19show_segment_prefix.exit, %bb.bh, %bb.bc
  %i.gy = phi i32 [ %i.ha, %.split189 ], [ %i.gs, %bb.bh ], [ %i.gw, %bb.bc ], [ %i.ha, %_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter9fmt_utils19show_segment_prefix.exit ] ; 2 uses
  %.sroa.048.0.not201 = xor i1 %.sroa.048.0, true
  %or.cond15.not = and i1 %.sroa.045.0, %.sroa.048.0.not201
  %or.cond130 = select i1 %or.cond15.not, i1 %.not106, i1 false
  %i.gz = and i32 %i.gy, 536870912
  %.not116 = icmp ne i32 %i.gz, 0
  %or.cond219.not = and i1 %.not116, %or.cond130
  br i1 %or.cond219.not, label %bb.bi, label %.thread212

bb.be:                                            ; preds = %bb.bh, %bb.bc
  %i.ha = phi i32 [ %i.gs, %bb.bh ], [ %i.gw, %bb.bc ] ; 5 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 260
  %.val132 = load i32, ptr %i.hb, align 4, !noundef !21
  %i.hc = and i32 %.val132, 4
  %i.hd = icmp ne i32 %i.hc, 0                    ; 3 uses
  switch i16 %.val131, label %bb.bf [
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

bb.bf:                                            ; preds = %bb.be
  br i1 %.sroa.045.0, label %bb.bg, label %.split

.split:                                           ; preds = %bb.bf
  %i.he = add nsw i32 %i.cm, -5
  %or.cond.i.i152 = icmp ult i32 %i.he, 2
  %..i.i153 = or i1 %or.cond.i.i152, %i.hd
  br i1 %..i.i153, label %bb.bi, label %.thread212

bb.bg:                                            ; preds = %bb.bf
  %i.hf = getelementptr inbounds nuw i8, ptr %3, i64 35
  %i.hg = load i8, ptr %i.hf, align 1, !alias.scope !11146, !noundef !21
  %switch.tableidx = add i8 %i.hg, -26            ; 2 uses
  %i.hh = icmp ult i8 %switch.tableidx, 33
  br i1 %i.hh, label %switch.lookup, label %.split189

switch.lookup:                                    ; preds = %bb.bg
  %i.hi = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsp_NtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4infoNtB5_20SimpleInstrInfo_XLATNtB5_9InstrInfo7op_info, i64 %i.hi
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %.split189

.split189:                                        ; preds = %bb.bg, %switch.lookup
  %.sroa.0.0.i.i = phi i32 [ %switch.ext, %switch.lookup ], [ 74, %bb.bg ]
  %.not.i.i = icmp ne i32 %narrow, %.sroa.0.0.i.i
  %.8.i.i = or i1 %i.hd, %.not.i.i
  br i1 %.8.i.i, label %bb.bi, label %bb.bd

bb.bh:                                            ; preds = %bb.ay
  br i1 %i.co, label %bb.bd, label %bb.be

_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter9fmt_utils19show_segment_prefix.exit: ; preds = %bb.be, %bb.be, %bb.be, %bb.be, %bb.be, %bb.be, %bb.be, %bb.be, %bb.be, %bb.be, %bb.be
  br i1 %i.hd, label %bb.bi, label %bb.bd

.thread212:                                       ; preds = %bb.ba, %.split, %bb.bj, %bb.bd
  br i1 %.sroa.058.0, label %bb.bl, label %bb.bk

bb.bi:                                            ; preds = %bb.bd, %bb.ay, %bb.ba, %bb.bb, %_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter9fmt_utils19show_segment_prefix.exit, %.split, %.split189
  %i.hj = phi i32 [ %i.gs, %bb.ay ], [ %i.gu, %bb.ba ], [ %i.gw, %bb.bb ], [ %i.gy, %bb.bd ], [ %i.ha, %_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter9fmt_utils19show_segment_prefix.exit ], [ %i.ha, %.split ], [ %i.ha, %.split189 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !11147)
  %i.hk = zext nneg i8 %7 to i64
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.hm = load ptr, ptr %i.hl, align 8, !alias.scope !11147, !nonnull !21, !align !25, !noundef !21
  %i.hn = getelementptr inbounds nuw [48 x i8], ptr %i.hm, i64 %i.hk ; 2 uses
  %i.ho = and i32 %i.hj, 36
  %or.cond6.i = icmp eq i32 %i.ho, 0              ; 2 uses
  %.sroa.04.0.in.v.i = select i1 %or.cond6.i, i64 8, i64 32
  %.sroa.04.0.in.i148 = getelementptr inbounds nuw i8, ptr %i.hn, i64 %.sroa.04.0.in.v.i
  %.sroa.3.0.in.v.i = select i1 %or.cond6.i, i64 16, i64 40
  %.sroa.3.0.in.i149 = getelementptr inbounds nuw i8, ptr %i.hn, i64 %.sroa.3.0.in.v.i
  %.sroa.3.0.i150 = load i64, ptr %.sroa.3.0.in.i149, align 8, !noalias !11147, !noundef !21
  %.sroa.04.0.i151 = load ptr, ptr %.sroa.04.0.in.i148, align 8, !noalias !11147, !nonnull !21, !noundef !21
  %i.hp = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.hq = load ptr, ptr %i.hp, align 8, !invariant.load !21, !nonnull !21
  invoke void %i.hq(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, i32 noundef %4, i32 noundef %5, i32 %6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.04.0.i151, i64 noundef %.sroa.3.0.i150, i8 noundef %7)
          to label %bb.bj unwind label %.loopexit.split-lp

bb.bj:                                            ; preds = %bb.bi
  invoke void %.val137(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @400, i64 noundef 1, i8 noundef 6)
          to label %.thread212 unwind label %.loopexit.split-lp

bb.bk:                                            ; preds = %.thread212
  %i.hr = xor i1 %.sroa.048.0, true
  invoke fastcc void @_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter19format_memory_displ(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(304) %i.d, ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %i.b, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, i32 noundef %4, i32 noundef %5, i32 %6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.a, i64 noundef %.sroa.040.0, i64 noundef %.sroa.033.1, i32 noundef %.sroa.031.0, i32 noundef %13, i1 noundef zeroext false, i1 noundef zeroext %i.hr)
          to label %bb.bl unwind label %.loopexit.split-lp

bb.bl:                                            ; preds = %bb.bk, %.thread212
  br i1 %spec.select, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bp, %bb.bo, %bb.bl
  br i1 %.not105.not, label %bb.bq, label %bb.bt

bb.bn:                                            ; preds = %bb.bl
  invoke void %.val137(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @414, i64 noundef 1, i8 noundef 6)
          to label %bb.bo unwind label %.loopexit.split-lp

bb.bo:                                            ; preds = %bb.bn
  %i.hs = load i32, ptr %i.i, align 8, !noundef !21
  %i.ht = and i32 %i.hs, 128
  %.not117 = icmp eq i32 %i.ht, 0
  br i1 %.not117, label %bb.bm, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  invoke void %.val137(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0)
          to label %bb.bm unwind label %.loopexit.split-lp

bb.bq:                                            ; preds = %bb.bm
  %.not118 = icmp eq i8 %9, 0
  br i1 %.not118, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %.invoke, %bb.ci, %bb.bu, %bb.bq
  %.sroa.072.0 = phi i1 [ false, %bb.bq ], [ true, %bb.ci ], [ true, %.invoke ], [ true, %bb.bu ] ; 2 uses
  br i1 %.sroa.058.0, label %bb.cq, label %17

bb.bs:                                            ; preds = %bb.bz, %bb.by, %bb.bq
  %i.hu = trunc nuw i8 %.sroa.043.1 to i1
  br i1 %i.hu, label %bb.ca, label %bb.cb

bb.bt:                                            ; preds = %bb.bm
  call void @llvm.experimental.noalias.scope.decl(metadata !11148)
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.hw = load i32, ptr %i.hv, align 4, !alias.scope !11148, !noundef !21
  %i.hx = and i32 %i.hw, 2
  %i.hy = icmp ne i32 %i.hx, 0
  %i.hz = icmp eq i8 %.sroa.0.1, -7
  %or.cond.i154 = and i1 %i.hz, %i.hy
  %i.ia = zext i8 %.sroa.0.1 to i64
  %i.ib = select i1 %or.cond.i154, i64 217, i64 %i.ia
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.id = load ptr, ptr %i.ic, align 8, !alias.scope !11148, !nonnull !21, !align !25, !noundef !21
  %i.ie = getelementptr inbounds nuw [48 x i8], ptr %i.id, i64 %i.ib ; 2 uses
  %i.if = load i32, ptr %i.i, align 8, !alias.scope !11148, !noundef !21
  %i.ig = and i32 %i.if, 36
  %or.cond6.i155 = icmp eq i32 %i.ig, 0           ; 2 uses
  %.sroa.04.0.in.v.i156 = select i1 %or.cond6.i155, i64 8, i64 32
  %.sroa.04.0.in.i157 = getelementptr inbounds nuw i8, ptr %i.ie, i64 %.sroa.04.0.in.v.i156
  %.sroa.3.0.in.v.i158 = select i1 %or.cond6.i155, i64 16, i64 40
  %.sroa.3.0.in.i159 = getelementptr inbounds nuw i8, ptr %i.ie, i64 %.sroa.3.0.in.v.i158
  %.sroa.3.0.i160 = load i64, ptr %.sroa.3.0.in.i159, align 8, !noalias !11148, !noundef !21
  %.sroa.04.0.i161 = load ptr, ptr %.sroa.04.0.in.i157, align 8, !noalias !11148, !nonnull !21, !noundef !21
  %i.ih = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ii = load ptr, ptr %i.ih, align 8, !invariant.load !21, !nonnull !21
  invoke void %i.ii(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, i32 noundef %4, i32 noundef %5, i32 %6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.04.0.i161, i64 noundef %.sroa.3.0.i160, i8 noundef %.sroa.0.1)
          to label %bb.bu unwind label %.loopexit.split-lp

bb.bu:                                            ; preds = %bb.bt
  %.not119 = icmp eq i8 %9, 0
  br i1 %.not119, label %bb.br, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ij = load i32, ptr %i.i, align 8, !noundef !21
  %i.ik = and i32 %i.ij, 256
  %.not120 = icmp eq i32 %i.ik, 0
  br i1 %.not120, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bx, %bb.bv
  invoke void %.val137(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @372, i64 noundef 1, i8 noundef 5)
          to label %bb.by unwind label %.loopexit.split-lp

bb.bx:                                            ; preds = %bb.bv
  invoke void %.val137(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0)
          to label %bb.bw unwind label %.loopexit.split-lp

bb.by:                                            ; preds = %bb.bw
  %i.il = load i32, ptr %i.i, align 8, !noundef !21
  %i.im = and i32 %i.il, 256
  %.not121 = icmp eq i32 %i.im, 0
  br i1 %.not121, label %bb.bs, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  invoke void %.val137(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0)
          to label %bb.bs unwind label %.loopexit.split-lp

bb.ca:                                            ; preds = %bb.bs
  %i.in = load i32, ptr %i.i, align 8, !noundef !21 ; 2 uses
  %i.io = and i32 %i.in, 1024
  %.not122 = icmp eq i32 %i.io, 0
  br i1 %.not122, label %bb.cc, label %bb.cj

bb.cb:                                            ; preds = %bb.bs
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.iq = load i32, ptr %i.ip, align 4, !alias.scope !11149, !noundef !21
  %i.ir = and i32 %i.iq, 2
  %i.is = icmp ne i32 %i.ir, 0
  %i.it = icmp eq i8 %9, -7
  %or.cond.i162 = and i1 %i.it, %i.is
  %i.iu = zext i8 %9 to i64
  %i.iv = select i1 %or.cond.i162, i64 217, i64 %i.iu
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ix = load ptr, ptr %i.iw, align 8, !alias.scope !11149, !nonnull !21, !align !25, !noundef !21
  %i.iy = getelementptr inbounds nuw [48 x i8], ptr %i.ix, i64 %i.iv
  %i.iz = load i32, ptr %i.i, align 8, !alias.scope !11149, !noundef !21
  br label %.invoke

.invoke:                                          ; preds = %bb.cp, %bb.cb
  %.sink223 = phi i32 [ %i.kk, %bb.cp ], [ %i.iz, %bb.cb ]
  %.sink220 = phi ptr [ %i.ku, %bb.cp ], [ %i.iy, %bb.cb ] ; 2 uses
  %i.ja = and i32 %.sink223, 36
  %or.cond6.i179 = icmp eq i32 %i.ja, 0           ; 2 uses
  %.sroa.04.0.in.v.i180 = select i1 %or.cond6.i179, i64 8, i64 32
  %.sroa.04.0.in.i181 = getelementptr inbounds nuw i8, ptr %.sink220, i64 %.sroa.04.0.in.v.i180
  %.sroa.3.0.in.v.i182 = select i1 %or.cond6.i179, i64 16, i64 40
  %.sroa.3.0.in.i183 = getelementptr inbounds nuw i8, ptr %.sink220, i64 %.sroa.3.0.in.v.i182
  %.sroa.3.0.i184 = load i64, ptr %.sroa.3.0.in.i183, align 8, !noalias !21, !noundef !21
  %.sroa.04.0.i185 = load ptr, ptr %.sroa.04.0.in.i181, align 8, !noalias !21, !nonnull !21, !noundef !21
  %i.jb = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.jc = load ptr, ptr %i.jb, align 8, !invariant.load !21, !nonnull !21
  invoke void %i.jc(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, i32 noundef %4, i32 noundef %5, i32 %6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.04.0.i185, i64 noundef %.sroa.3.0.i184, i8 noundef %9)
          to label %bb.br unwind label %.loopexit.split-lp

bb.cc:                                            ; preds = %bb.ca
  call void @llvm.experimental.noalias.scope.decl(metadata !11150)
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.je = load i32, ptr %i.jd, align 4, !alias.scope !11150, !noundef !21
  %i.jf = and i32 %i.je, 2
  %i.jg = icmp ne i32 %i.jf, 0
  %i.jh = icmp eq i8 %9, -7
  %or.cond.i170 = and i1 %i.jh, %i.jg
  %i.ji = zext i8 %9 to i64
  %i.jj = select i1 %or.cond.i170, i64 217, i64 %i.ji
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.jl = load ptr, ptr %i.jk, align 8, !alias.scope !11150, !nonnull !21, !align !25, !noundef !21
  %i.jm = getelementptr inbounds nuw [48 x i8], ptr %i.jl, i64 %i.jj ; 2 uses
  %i.jn = and i32 %i.in, 36
  %or.cond6.i171 = icmp eq i32 %i.jn, 0           ; 2 uses
  %.sroa.04.0.in.v.i172 = select i1 %or.cond6.i171, i64 8, i64 32
  %.sroa.04.0.in.i173 = getelementptr inbounds nuw i8, ptr %i.jm, i64 %.sroa.04.0.in.v.i172
  %.sroa.3.0.in.v.i174 = select i1 %or.cond6.i171, i64 16, i64 40
  %.sroa.3.0.in.i175 = getelementptr inbounds nuw i8, ptr %i.jm, i64 %.sroa.3.0.in.v.i174
  %.sroa.3.0.i176 = load i64, ptr %.sroa.3.0.in.i175, align 8, !noalias !11150, !noundef !21
  %.sroa.04.0.i177 = load ptr, ptr %.sroa.04.0.in.i173, align 8, !noalias !11150, !nonnull !21, !noundef !21
  %i.jo = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.jp = load ptr, ptr %i.jo, align 8, !invariant.load !21, !nonnull !21
  invoke void %i.jp(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, i32 noundef %4, i32 noundef %5, i32 %6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.04.0.i177, i64 noundef %.sroa.3.0.i176, i8 noundef %9)
          to label %bb.cd unwind label %.loopexit.split-lp

bb.cd:                                            ; preds = %bb.cc
  %i.jq = load i32, ptr %i.i, align 8, !noundef !21
  %i.jr = and i32 %i.jq, 512
  %.not123 = icmp eq i32 %i.jr, 0
  br i1 %.not123, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cf, %bb.cd
  invoke void %.val137(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @402, i64 noundef 1, i8 noundef 5)
          to label %bb.cg unwind label %.loopexit.split-lp

bb.cf:                                            ; preds = %bb.cd
  invoke void %.val137(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0)
          to label %bb.ce unwind label %.loopexit.split-lp

bb.cg:                                            ; preds = %bb.ce
  %i.js = load i32, ptr %i.i, align 8, !noundef !21
  %i.jt = and i32 %i.js, 512
  %.not124 = icmp eq i32 %i.jt, 0
  br i1 %.not124, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  invoke void %.val137(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0)
          to label %bb.ci unwind label %.loopexit.split-lp

bb.ci:                                            ; preds = %bb.cg, %bb.ch
  %i.ju = zext nneg i32 %10 to i64                ; 2 uses
  %i.jv = getelementptr inbounds nuw [16 x i8], ptr @_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter10fmt_consts13SCALE_NUMBERS, i64 %i.ju
  %i.jw = load ptr, ptr %i.jv, align 8, !nonnull !21, !noundef !21
  %i.jx = shl nuw nsw i64 1, %i.ju
  %i.jy = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.jz = load ptr, ptr %i.jy, align 8, !invariant.load !21, !nonnull !21
  invoke void %i.jz(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, i32 noundef %4, i32 noundef %5, i32 %6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jw, i64 noundef 1, i64 noundef %i.jx, i8 noundef 4, i8 noundef 7)
          to label %bb.br unwind label %.loopexit.split-lp

bb.cj:                                            ; preds = %bb.ca
  %i.ka = zext nneg i32 %10 to i64                ; 2 uses
  %i.kb = getelementptr inbounds nuw [16 x i8], ptr @_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter10fmt_consts13SCALE_NUMBERS, i64 %i.ka
  %i.kc = load ptr, ptr %i.kb, align 8, !nonnull !21, !noundef !21
  %i.kd = shl nuw nsw i64 1, %i.ka
  %i.ke = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.kf = load ptr, ptr %i.ke, align 8, !invariant.load !21, !nonnull !21
  invoke void %i.kf(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, i32 noundef %4, i32 noundef %5, i32 %6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.kc, i64 noundef 1, i64 noundef %i.kd, i8 noundef 4, i8 noundef 7)
          to label %bb.ck unwind label %.loopexit.split-lp

bb.ck:                                            ; preds = %bb.cj
  %i.kg = load i32, ptr %i.i, align 8, !noundef !21
  %i.kh = and i32 %i.kg, 512
  %.not125 = icmp eq i32 %i.kh, 0
  br i1 %.not125, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.cm, %bb.ck
  invoke void %.val137(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @402, i64 noundef 1, i8 noundef 5)
          to label %bb.cn unwind label %.loopexit.split-lp

bb.cm:                                            ; preds = %bb.ck
  invoke void %.val137(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0)
          to label %bb.cl unwind label %.loopexit.split-lp

bb.cn:                                            ; preds = %bb.cl
  %i.ki = load i32, ptr %i.i, align 8, !noundef !21 ; 2 uses
  %i.kj = and i32 %i.ki, 512
  %.not126 = icmp eq i32 %i.kj, 0
  br i1 %.not126, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  invoke void %.val137(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0)
          to label %._crit_edge unwind label %.loopexit.split-lp

._crit_edge:                                      ; preds = %bb.co
  %.pre = load i32, ptr %i.i, align 8, !alias.scope !11151
  br label %bb.cp

bb.cp:                                            ; preds = %._crit_edge, %bb.cn
  %i.kk = phi i32 [ %.pre, %._crit_edge ], [ %i.ki, %bb.cn ]
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.km = load i32, ptr %i.kl, align 4, !alias.scope !11151, !noundef !21
  %i.kn = and i32 %i.km, 2
  %i.ko = icmp ne i32 %i.kn, 0
  %i.kp = icmp eq i8 %9, -7
  %or.cond.i178 = and i1 %i.kp, %i.ko
  %i.kq = zext i8 %9 to i64
  %i.kr = select i1 %or.cond.i178, i64 217, i64 %i.kq
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.kt = load ptr, ptr %i.ks, align 8, !alias.scope !11151, !nonnull !21, !align !25, !noundef !21
  %i.ku = getelementptr inbounds nuw [48 x i8], ptr %i.kt, i64 %i.kr
  br label %.invoke

17:                                               ; preds = %bb.cq, %bb.br
  br i1 %spec.select, label %bb.ct, label %bb.cr

bb.cq:                                            ; preds = %bb.br
  %i.kv = xor i1 %.sroa.072.0, true
  invoke fastcc void @_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter19format_memory_displ(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(304) %i.d, ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %i.b, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, i32 noundef %4, i32 noundef %5, i32 %6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.a, i64 noundef %.sroa.040.0, i64 noundef %.sroa.033.1, i32 noundef %.sroa.031.0, i32 noundef %13, i1 noundef zeroext %.sroa.072.0, i1 noundef zeroext %i.kv)
          to label %17 unwind label %.loopexit.split-lp

bb.cr:                                            ; preds = %bb.cu, %17
  %.0.val.off.i186 = add i64 %i.cp, -1
  %switch.i187 = icmp ult i64 %.0.val.off.i186, -4
  br i1 %switch.i187, label %bb.cs, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit188

bb.cs:                                            ; preds = %bb.cr
  %i.kw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val134 = load ptr, ptr %i.kw, align 8, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val134, i64 noundef %i.cp, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !11152
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit188

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit188: ; preds = %bb.cr, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.ct:                                            ; preds = %17
  %i.kx = load i32, ptr %i.i, align 8, !noundef !21
  %i.ky = and i32 %i.kx, 128
  %.not127 = icmp eq i32 %i.ky, 0
  br i1 %.not127, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.cv, %bb.ct
  invoke void %.val137(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @415, i64 noundef 1, i8 noundef 6)
          to label %bb.cr unwind label %.loopexit.split-lp

bb.cv:                                            ; preds = %bb.ct
  invoke void %.val137(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0)
          to label %bb.cu unwind label %.loopexit.split-lp

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit: ; preds = %bb.s, %bb.r
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter13format_prefix(i32 %.232.val, ptr noundef nonnull %0, ptr nofree readonly captures(none) %.24.val, ptr nofree readonly captures(none) %.32.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %3, i8 noundef range(i8 0, 18) %4, ptr noalias nofree noundef nonnull captures(none) dereferenceable(1) %5) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %5, align 1, !range !27, !noundef !21
  %i.b = trunc nuw i8 %i.a to i1
  %.pre = load i32, ptr %2, align 4               ; 2 uses
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.c = phi i32 [ %i.j, %bb.c ], [ %.pre, %bb.a ]
  %i.d = and i32 %.232.val, 33
  %or.cond = icmp eq i32 %i.d, 0                  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.0.0.in.v = select i1 %or.cond, i64 8, i64 32
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.0.0.in.v
  %.sroa.0.0 = load ptr, ptr %.sroa.0.0.in, align 8, !nonnull !21, !noundef !21
  %.val = load i64, ptr %i.f, align 8             ; 3 uses
  %.val1 = load i64, ptr %i.e, align 8
  %.sroa.3.0 = select i1 %or.cond, i64 %.val, i64 %.val1
  tail call void %.32.val(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.3.0, i8 noundef %4) #45
  %i.g = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.g)
  %i.h = trunc i64 %.val to i32
  %i.i = add i32 %i.c, %i.h
  store i32 %i.i, ptr %2, align 4
  store i8 1, ptr %5, align 1
  ret void

bb.c:                                             ; preds = %bb.a
  %i.j = add i32 %.pre, 1                         ; 2 uses
  store i32 %i.j, ptr %2, align 4
  tail call void %.24.val(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0) #45
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter14format_operand(ptr noalias nofree noundef nonnull align 8 dereferenceable(360) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, i32 noundef range(i32 0, 255) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 18 uses
  %i.b = alloca [56 x i8], align 8                ; 18 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = alloca [56 x i8], align 8                ; 18 uses
  %i.e = alloca [56 x i8], align 8                ; 18 uses
  %i.f = alloca [48 x i8], align 8                ; 9 uses
  %i.g = alloca [56 x i8], align 8                ; 18 uses
  %i.h = alloca [56 x i8], align 8                ; 18 uses
  %i.i = alloca [48 x i8], align 8                ; 9 uses
  %i.j = alloca [56 x i8], align 8                ; 18 uses
  %i.k = alloca [56 x i8], align 8                ; 18 uses
  %i.l = alloca [48 x i8], align 8                ; 9 uses
  %i.m = alloca [56 x i8], align 8                ; 19 uses
  %i.n = alloca [48 x i8], align 8                ; 8 uses
  %i.o = alloca [56 x i8], align 8                ; 20 uses
  %i.p = alloca [48 x i8], align 8                ; 4 uses
  %i.q = alloca [48 x i8], align 8                ; 10 uses
  %i.r = alloca [24 x i8], align 8                ; 9 uses
  %i.s = alloca [56 x i8], align 8                ; 18 uses
  %i.t = alloca [56 x i8], align 8                ; 18 uses
  %i.u = alloca [48 x i8], align 8                ; 8 uses
  %i.v = alloca [4 x i8], align 4                 ; 25 uses
  %i.w = zext nneg i32 %5 to i64                  ; 4 uses
  %i.x = icmp samesign ult i32 %5, 5              ; 2 uses
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 21
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  %i.aa = load i8, ptr %i.z, align 1, !noundef !21 ; 2 uses
  %i.ab = icmp sgt i8 %i.aa, -1                   ; 2 uses
  %i.ac = zext nneg i8 %i.aa to i32
  %.sroa.53.2 = select i1 %i.ab, i32 %i.ac, i32 undef
  %.sroa.0.2 = zext i1 %i.ab to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.w
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 10
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.0105.0.in = phi ptr [ %i.ae, %bb.b ], [ %i.af, %bb.c ]
  %.sroa.53.1 = phi i32 [ %.sroa.53.2, %bb.b ], [ undef, %bb.c ] ; 49 uses
  %.sroa.0.1 = phi i32 [ %.sroa.0.2, %bb.b ], [ 0, %bb.c ] ; 49 uses
  %.sroa.0105.0 = load i8, ptr %.sroa.0105.0.in, align 1, !range !61, !noundef !21 ; 5 uses
  switch i8 %.sroa.0105.0, label %default.unreachable898 [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.f
    i8 3, label %bb.f
    i8 4, label %bb.g
    i8 5, label %bb.g
    i8 27, label %bb.du
    i8 26, label %bb.cm
    i8 28, label %bb.eu
    i8 7, label %bb.dd
    i8 11, label %bb.ed
    i8 12, label %bb.ez
    i8 8, label %bb.dt
    i8 9, label %bb.et
    i8 6, label %bb.cl
    i8 15, label %bb.h
    i8 16, label %bb.k
    i8 17, label %bb.n
    i8 18, label %bb.q
    i8 19, label %bb.t
    i8 20, label %bb.w
    i8 21, label %bb.z
    i8 22, label %bb.aa
    i8 23, label %bb.ab
    i8 24, label %bb.ac
    i8 25, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtCsf8MNnN4IDbl_8iced_x8610iced_error9IcedErrorEEB12_.exit
    i8 14, label %bb.fp
    i8 13, label %bb.fq
    i8 10, label %bb.fu
    i8 29, label %bb.fr
  ]

default.unreachable898:                           ; preds = %bb.af, %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  br i1 %i.x, label %bb.ak, label %bb.al

bb.f:                                             ; preds = %bb.d, %bb.d, %bb.d
  %i.ag = icmp eq i8 %.sroa.0105.0, 3             ; 3 uses
  br i1 %i.ag, label %bb.ao, label %bb.an

bb.g:                                             ; preds = %bb.d, %bb.d
  %i.ah = icmp eq i8 %.sroa.0105.0, 5             ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aj = load i32, ptr %i.ai, align 8            ; 3 uses
  %i.ak = and i32 %i.aj, 65535                    ; 2 uses
  %.sroa.0153.1.in = select i1 %i.ah, i32 %i.aj, i32 %i.ak
  %.sroa.099.1 = select i1 %i.ah, i8 5, i8 3
  %.sroa.0153.1 = zext i32 %.sroa.0153.1.in to i64 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 11 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 7 uses
  %i.an = load i32, ptr %i.am, align 8, !noundef !21
  %i.ao = lshr i32 %i.an, 23
  %.lobit = and i32 %i.ao, 1
  %.sroa.0125.0 = xor i32 %.lobit, 1
  store i32 %.sroa.0125.0, ptr %i.v, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i64 0, ptr %i.r, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  store i64 0, ptr %i.aq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !noundef !21 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %.not249 = icmp eq ptr %i.as, null
  br i1 %.not249, label %.thread766, label %bb.be

bb.h:                                             ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.val302 = load i32, ptr %i.au, align 4, !noundef !21
  %i.av = lshr i32 %.val302, 5
  %i.aw = and i32 %i.av, 7                        ; 2 uses
  %i.ax = add nsw i32 %i.aw, -1
  %i.ay = icmp ult i32 %i.ax, 6
  br i1 %i.ay, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.az = trunc nuw nsw i32 %i.aw to i8
  %i.ba = add nuw nsw i8 %i.az, 70
  br label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction14memory_segment.exit

bb.j:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 35
  %.val303 = load i8, ptr %i.bb, align 1
  %switch.tableidx = add i8 %.val303, -26         ; 2 uses
  %i.bc = icmp ult i8 %switch.tableidx, 33
  br i1 %i.bc, label %switch.lookup, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction14memory_segment.exit

switch.lookup:                                    ; preds = %bb.j
  %i.bd = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsp_NtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4infoNtB5_20SimpleInstrInfo_XLATNtB5_9InstrInfo7op_info, i64 %i.bd
end_hunk_1
begin_hunk_2_@_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter12with_options:bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 296
  store ptr @_RNvNvNvXs0_NtNtCsf8MNnN4IDbl_8iced_x869formatter10fmt_constsNtB9_12ARRAY_CONSTSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref11___stability4LAZY, ptr %i.aj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !11503
  %i.ak = call noundef dereferenceable_or_null(81) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 81, i64 noundef range(i64 1, 9) 1) #41, !noalias !11503 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.n, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter3new.exit

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 81) #46
          to label %.noexc10 unwind label %bb.o

.noexc10:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter3new.exit: ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.an, ptr noundef nonnull align 8 dereferenceable(304) %i.q, i64 304, i1 false)
  store i64 81, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ak, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr %1, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 336
  store ptr %2, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr %3, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 352
  store ptr %4, ptr %i.ar, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  ret void

bb.p:                                             ; preds = %bb.q, %bb.b
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.q:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres14SymbolResolverEL_EEEB1D_(ptr %1, ptr %2) #42
          to label %bb.r unwind label %bb.p

bb.r:                                             ; preds = %bb.q
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter13format_memory(ptr noalias nofree noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, i32 noundef range(i32 0, 255) %4, i32 noundef range(i32 0, 2) %5, i32 %6, i8 noundef range(i8 0, -94) %7, i8 noundef range(i8 71, 77) %8, i8 noundef %9, i8 noundef %10, i32 noundef range(i32 0, 4) %11, i32 noundef range(i32 0, 9) %12, i64 noundef %13, i32 noundef range(i32 1, 256) %14, i32 noundef %15) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 11 uses
  %i.b = alloca [56 x i8], align 8                ; 22 uses
  %i.c = alloca [4 x i8], align 4                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 285
  %i.f = load i8, ptr %i.e, align 1, !range !40, !noundef !21
  %i.g = zext nneg i8 %i.f to i32
  %i.h = shl nuw i32 %i.g, 30
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 26 uses
  %i.j = load i32, ptr %i.i, align 8, !noundef !21 ; 6 uses
  %i.k = lshr i32 %i.j, 21                        ; 2 uses
  %i.l = and i32 %i.k, 2
  %storemerge = or disjoint i32 %i.l, %i.h
  store i32 %storemerge, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11529)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11530)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.n = load i8, ptr %i.m, align 4, !range !40, !alias.scope !11530, !noalias !11529, !noundef !21 ; 3 uses
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
  %.sroa.0.0.i = load i32, ptr %i.q, align 4, !alias.scope !11530, !noalias !11529, !noundef !21
  %.sroa.01.1.i = load ptr, ptr %.sroa.01.4.in.i, align 8, !alias.scope !11530, !noalias !11529, !nonnull !21, !noundef !21
  %.sroa.9.1.i = load i64, ptr %.sroa.9.4.in.i, align 8, !alias.scope !11530, !noalias !11529, !noundef !21
  %.sroa.02.0.i = load ptr, ptr %i.s, align 8, !alias.scope !11530, !noalias !11529, !nonnull !21, !noundef !21
  %.sroa.93.0.i = load i64, ptr %i.t, align 8, !alias.scope !11530, !noalias !11529, !noundef !21
  %.sroa.04.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.sroa.04.0.i = load ptr, ptr %.sroa.04.0.in.i, align 8, !alias.scope !11530, !noalias !11529, !nonnull !21, !noundef !21
  %.sroa.3.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.sroa.3.0.i = load i64, ptr %.sroa.3.0.in.i, align 8, !alias.scope !11530, !noalias !11529, !noundef !21
  %..i.i = tail call noundef i32 @llvm.umin.i32(i32 %.sroa.0.0.i, i32 255)
  %i.u = trunc nuw i32 %..i.i to i8
  store ptr %.sroa.01.1.i, ptr %i.b, align 8, !alias.scope !11529, !noalias !11530
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.9.1.i, ptr %i.v, align 8, !alias.scope !11529, !noalias !11530
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.02.0.i, ptr %i.w, align 8, !alias.scope !11529, !noalias !11530
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.93.0.i, ptr %i.x, align 8, !alias.scope !11529, !noalias !11530
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %.sroa.04.0.i, ptr %i.y, align 8, !alias.scope !11529, !noalias !11530
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.sroa.3.0.i, ptr %i.z, align 8, !alias.scope !11529, !noalias !11530
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i8 %i.u, ptr %i.aa, align 8, !alias.scope !11529, !noalias !11530
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 49
  store i8 %i.n, ptr %i.ab, align 1, !alias.scope !11529, !noalias !11530
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 50
  %i.ad = lshr i32 %i.j, 15
  %i.ae = trunc i32 %i.ad to i8
  %i.af = and i8 %i.ae, 1
  store i8 %i.af, ptr %i.ac, align 2, !alias.scope !11529, !noalias !11530
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 51 ; 4 uses
  %i.ah = lshr i32 %i.j, 16
  %i.ai = trunc i32 %i.ah to i8
  %i.aj = and i8 %i.ai, 1
  store i8 %i.aj, ptr %i.ag, align 1, !alias.scope !11529, !noalias !11530
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.al = lshr i32 %i.j, 17
  %i.am = trunc i32 %i.al to i8
  %i.an = and i8 %i.am, 1
  store i8 %i.an, ptr %i.ak, align 4, !alias.scope !11529, !noalias !11530
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 53
  %i.ap = lshr i32 %i.j, 14
  %i.aq = trunc i32 %i.ap to i8
  %i.ar = and i8 %i.aq, 1
  store i8 %i.ar, ptr %i.ao, align 1, !alias.scope !11529, !noalias !11530
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 54 ; 3 uses
  %i.at = lshr i32 %i.j, 20
  %i.au = trunc i32 %i.at to i8
  %i.av = and i8 %i.au, 1
  store i8 %i.av, ptr %i.as, align 2, !alias.scope !11529, !noalias !11530
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 55 ; 5 uses
  %i.ax = trunc i32 %i.k to i8
  %i.ay = and i8 %i.ax, 1
  store i8 %i.ay, ptr %i.aw, align 1, !alias.scope !11529, !noalias !11530
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ba = load ptr, ptr %i.az, align 8, !noundef !21 ; 2 uses
  %.not116 = icmp eq ptr %i.ba, null
  br i1 %.not116, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !21, !align !25, !noundef !21
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !invariant.load !21, !nonnull !21
  call void %i.be(ptr noundef nonnull %i.ba, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, i32 noundef %4, i32 noundef %5, i32 %6, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.b) #45
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  switch i8 %9, label %bb.h [
    i8 70, label %bb.d
    i8 69, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.bf = load i32, ptr %i.i, align 8, !noundef !21
  %i.bg = and i32 %i.bf, 4194304
  %.not118 = icmp eq i32 %i.bg, 0                 ; 4 uses
  %i.bh = load i64, ptr %3, align 8
  %i.bi = and i32 %15, -24577
  %.sroa.052.2 = select i1 %.not118, i32 %i.bi, i32 %15
  %i.bj = select i1 %.not118, i64 0, i64 %i.bh
  %.sroa.032.2 = sub i64 %13, %i.bj
  %.sroa.0.2 = select i1 %.not118, i8 0, i8 70
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.bk = and i64 %13, 4294967295                 ; 2 uses
  %i.bl = load i32, ptr %i.i, align 8, !noundef !21
  %i.bm = and i32 %i.bl, 4194304
  %.not117 = icmp eq i32 %i.bm, 0
  br i1 %.not117, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bn = and i32 %15, -24577
  %i.bo = or disjoint i32 %i.bn, 16384
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.bp = load i64, ptr %3, align 8, !noundef !21
  %i.bq = sub i64 %13, %i.bp
  %sext = shl i64 %i.bq, 32
  %i.br = ashr exact i64 %sext, 32
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.c, %bb.d
  %.sroa.058.1 = phi i1 [ %.not118, %bb.d ], [ false, %bb.c ], [ false, %bb.g ], [ true, %bb.f ]
  %.sroa.056.0 = phi i64 [ %13, %bb.d ], [ %13, %bb.c ], [ %i.bk, %bb.g ], [ %i.bk, %bb.f ] ; 2 uses
  %.sroa.052.1 = phi i32 [ %.sroa.052.2, %bb.d ], [ %15, %bb.c ], [ %15, %bb.g ], [ %i.bo, %bb.f ] ; 5 uses
  %.sroa.032.1 = phi i64 [ %.sroa.032.2, %bb.d ], [ %13, %bb.c ], [ %i.br, %bb.g ], [ %13, %bb.f ] ; 11 uses
  %.sroa.027.0 = phi i32 [ 8, %bb.d ], [ %12, %bb.c ], [ 4, %bb.g ], [ 4, %bb.f ] ; 3 uses
  %.sroa.0.1 = phi i8 [ %.sroa.0.2, %bb.d ], [ %9, %bb.c ], [ 69, %bb.g ], [ 0, %bb.f ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.bt = load ptr, ptr %i.bs, align 8, !noundef !21 ; 2 uses
  %.not119 = icmp eq ptr %i.bt, null
  br i1 %.not119, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.bv = load ptr, ptr %i.bu, align 8, !nonnull !21, !align !25, !noundef !21
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !invariant.load !21, !nonnull !21
  call void %i.bx(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noundef nonnull %i.bt, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, i32 noundef %4, i32 noundef %5, i32 %6, i64 noundef %.sroa.056.0, i32 noundef %14) #45
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  store i64 -3, ptr %i.a, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.by = icmp eq i32 %11, 0
  %i.bz = load i32, ptr %i.i, align 8             ; 2 uses
  %i.ca = lshr i32 %i.bz, 11
  %i.cb = trunc i32 %i.ca to i8
  %16 = and i8 %i.cb, 1
  %.sroa.059.0 = select i1 %i.by, i8 %16, i8 1    ; 2 uses
  %.not121 = icmp eq i8 %.sroa.0.1, 0
  %17 = or i8 %.sroa.059.0, %.sroa.0.1
  %or.cond8.not.not = icmp eq i8 %17, 0
  %spec.store.select = select i1 %or.cond8.not.not, i8 1, i8 %.sroa.059.0 ; 2 uses
  %i.cc = icmp eq i32 %14, 2
  br i1 %i.cc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.n, %bb.n, %bb.k
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.ce = load i32, ptr %i.cd, align 4, !noundef !21
  %i.cf = and i32 %i.ce, 4
  %.not121.a = icmp eq i32 %i.cf, 0
  br i1 %.not121.a, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ch = load i16, ptr %i.cg, align 8, !range !28, !noundef !21
  switch i16 %i.ch, label %bb.o [
    i16 1037, label %bb.l
    i16 1044, label %bb.l
  ]

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.l
  %.sroa.059.1 = phi i8 [ 0, %bb.l ], [ %spec.store.select, %bb.m ], [ %spec.store.select, %bb.n ]
  %i.ci = load i32, ptr %i.c, align 4, !noundef !21
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val162 = load ptr, ptr %i.cj, align 8         ; 34 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11531)
  %i.ck = lshr i32 %i.ci, 30                      ; 2 uses
  %i.cl = icmp ne i32 %i.ck, 3
  %i.cm = and i32 %.sroa.052.1, 1
  %i.cn = icmp eq i32 %i.cm, 0
  %or.cond.i = and i1 %i.cn, %i.cl
  br i1 %or.cond.i, label %bb.p, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter18format_memory_size.exit

bb.p:                                             ; preds = %bb.o
  %i.co = zext i8 %7 to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.cq = load ptr, ptr %i.cp, align 8, !alias.scope !11531, !nonnull !21, !align !25, !noundef !21
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %i.co ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !noalias !11531, !nonnull !21, !align !25, !noundef !21 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !noalias !11531, !noundef !21 ; 2 uses
  %i.cv = icmp sgt i64 %i.cu, -1
  call void @llvm.assume(i1 %i.cv)
  %i.cw = icmp eq i64 %i.cu, 0
  br i1 %i.cw, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter18format_memory_size.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  switch i32 %i.ck, label %bb.t [
    i32 0, label %bb.r
    i32 2, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.cx = and i32 %.sroa.052.1, 2
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter18format_memory_size.exit, label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.cz = and i32 %.sroa.052.1, 4
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter18format_memory_size.exit, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.db = lshr i32 %.sroa.052.1, 15
  %i.dc = and i32 %i.db, 3
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.df = load ptr, ptr %i.de, align 8, !alias.scope !11531, !nonnull !21, !align !25, !noundef !21
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 928
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.dd
  %i.di = load ptr, ptr %i.dh, align 8, !noalias !11531, !nonnull !21, !align !25, !noundef !21 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load i64, ptr %i.dj, align 8, !noalias !11531, !noundef !21 ; 2 uses
  %i.dl = icmp sgt i64 %i.dk, -1
  call void @llvm.assume(i1 %i.dl)
  %i.dm = icmp eq i64 %i.dk, 0
  %.pre2.i = and i32 %i.bz, 40                    ; 2 uses
  br i1 %i.dm, label %._crit_edge.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %or.cond.i.i = icmp eq i32 %.pre2.i, 0          ; 2 uses
  %.sroa.3.0.in.v.i.i = select i1 %or.cond.i.i, i64 16, i64 40
  %.sroa.3.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.di, i64 %.sroa.3.0.in.v.i.i
  %.sroa.0.0.in.v.i.i = select i1 %or.cond.i.i, i64 8, i64 32
  %.sroa.0.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.di, i64 %.sroa.0.0.in.v.i.i
  %.sroa.0.0.i.i = load ptr, ptr %.sroa.0.0.in.i.i, align 8, !alias.scope !11532, !noalias !11531, !nonnull !21, !noundef !21
  %.sroa.3.0.i.i = load i64, ptr %.sroa.3.0.in.i.i, align 8, !alias.scope !11532, !noalias !11531, !noundef !21
  invoke void %.val162(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i, i64 noundef %.sroa.3.0.i.i, i8 noundef 4) #45
          to label %.noexc unwind label %bb.v, !inline_history !11511

.noexc:                                           ; preds = %bb.u
  invoke void %.val162(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0) #45
          to label %.noexc176 unwind label %bb.v, !inline_history !11511

.noexc176:                                        ; preds = %.noexc
  %.pre.i = load ptr, ptr %i.cr, align 8, !noalias !11531
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.t, %.noexc176
  %i.dn = phi ptr [ %.pre.i, %.noexc176 ], [ %i.cs, %bb.t ] ; 2 uses
  %or.cond.i5.i = icmp eq i32 %.pre2.i, 0         ; 2 uses
  %.sroa.3.0.in.v.i6.i = select i1 %or.cond.i5.i, i64 16, i64 40
  %.sroa.3.0.in.i7.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.sroa.3.0.in.v.i6.i
  %.sroa.0.0.in.v.i8.i = select i1 %or.cond.i5.i, i64 8, i64 32
  %.sroa.0.0.in.i9.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.sroa.0.0.in.v.i8.i
  %.sroa.0.0.i10.i = load ptr, ptr %.sroa.0.0.in.i9.i, align 8, !alias.scope !11533, !noalias !11531, !nonnull !21, !noundef !21
  %.sroa.3.0.i11.i = load i64, ptr %.sroa.3.0.in.i7.i, align 8, !alias.scope !11533, !noalias !11531, !noundef !21
  invoke void %.val162(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i10.i, i64 noundef %.sroa.3.0.i11.i, i8 noundef 4) #45
          to label %.noexc177 unwind label %bb.v, !inline_history !11511

.noexc177:                                        ; preds = %._crit_edge.i
  invoke void %.val162(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0) #45
          to label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter18format_memory_size.exit unwind label %bb.v, !inline_history !11511

bb.v:                                             ; preds = %.invoke257.invoke, %.invoke260, %.invoke259, %.invoke258, %.invoke, %.noexc239, %.noexc238, %bb.cv, %bb.ad, %bb.aa, %.noexc177, %._crit_edge.i, %.noexc, %bb.u, %bb.ct, %bb.cs, %bb.cm, %bb.cr, %bb.co, %bb.cp, %bb.cq, %bb.ck, %bb.cj, %bb.ci, %bb.ce, %bb.cc, %bb.bv, %bb.bu, %bb.bp, %bb.bn, %bb.bm, %bb.bk, %bb.bj, %bb.bi, %bb.bg, %bb.bf, %bb.bd, %bb.bb, %bb.az, %bb.ay, %bb.at, %bb.ar, %bb.aq, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter14format_keyword.exit192, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter14format_keyword.exit, %bb.y, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter18format_memory_size.exit
  %i.do = landingpad { ptr, i32 }
          cleanup
  %.val156.a = load i64, ptr %i.a, align 8, !range !59, !noundef !21 ; 2 uses
  %i.dp = icmp sgt i64 %.val156.a, 0
  br i1 %i.dp, label %bb.w, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit

bb.w:                                             ; preds = %bb.v
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val157 = load ptr, ptr %i.dq, align 8, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val157, i64 noundef %.val156.a, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !11534
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit

_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter18format_memory_size.exit: ; preds = %bb.s, %bb.r, %bb.p, %bb.o, %.noexc177
  invoke void %.val162(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @414, i64 noundef 1, i8 noundef 6)
          to label %bb.x unwind label %bb.v

bb.x:                                             ; preds = %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter18format_memory_size.exit
  %i.dr = load i32, ptr %i.i, align 8, !noundef !21
  %i.ds = and i32 %i.dr, 128
  %.not122 = icmp eq i32 %i.ds, 0
  br i1 %.not122, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  invoke void %.val162(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0)
          to label %bb.z unwind label %bb.v

bb.z:                                             ; preds = %bb.x, %bb.y
  %i.dt = lshr i32 %.sroa.052.1, 13
  %i.du = and i32 %i.dt, 3
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.dx = load ptr, ptr %i.dw, align 8, !nonnull !21, !align !25, !noundef !21
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 896
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.dv
  %i.ea = load ptr, ptr %i.dz, align 8, !nonnull !21, !align !25, !noundef !21 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = load i64, ptr %i.eb, align 8, !noundef !21 ; 2 uses
  %i.ed = icmp sgt i64 %i.ec, -1
  call void @llvm.assume(i1 %i.ed)
  %i.ee = icmp eq i64 %i.ec, 0
  br i1 %i.ee, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.val160 = load i32, ptr %i.i, align 8, !noundef !21
  %i.ef = and i32 %.val160, 40
  %or.cond.i179 = icmp eq i32 %i.ef, 0            ; 2 uses
  %.sroa.3.0.in.v.i = select i1 %or.cond.i179, i64 16, i64 40
  %.sroa.3.0.in.i180 = getelementptr inbounds nuw i8, ptr %i.ea, i64 %.sroa.3.0.in.v.i
  %.sroa.0.0.in.v.i = select i1 %or.cond.i179, i64 8, i64 32
  %.sroa.0.0.in.i = getelementptr inbounds nuw i8, ptr %i.ea, i64 %.sroa.0.0.in.v.i
  %.sroa.0.0.i181 = load ptr, ptr %.sroa.0.0.in.i, align 8, !alias.scope !11535, !nonnull !21, !noundef !21
  %.sroa.3.0.i182 = load i64, ptr %.sroa.3.0.in.i180, align 8, !alias.scope !11535, !noundef !21
  invoke void %.val162(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i181, i64 noundef %.sroa.3.0.i182, i8 noundef 4) #45
          to label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter14format_keyword.exit unwind label %bb.v, !inline_history !6

bb.ab:                                            ; preds = %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter14format_keyword.exit, %bb.z
  br i1 %.sroa.058.1, label %bb.ad, label %bb.ac

_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter14format_keyword.exit: ; preds = %bb.aa
  invoke void %.val162(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0)
          to label %bb.ab unwind label %bb.v

bb.ac:                                            ; preds = %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter14format_keyword.exit192, %bb.ab
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.eh = load i32, ptr %i.eg, align 4, !noundef !21 ; 2 uses
  %i.ei = lshr i32 %i.eh, 18
  %i.ej = and i32 %i.ei, 3                        ; 2 uses
  %i.ek = lshr i32 %i.eh, 5
  %i.el = and i32 %i.ek, 7                        ; 3 uses
  %i.em = add nsw i32 %i.el, -1
  %i.en = icmp ult i32 %i.em, 6                   ; 2 uses
  %i.eo = icmp eq i32 %i.el, 4
  br i1 %i.eo, label %bb.ae, label %bb.ag

bb.ad:                                            ; preds = %bb.ab
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.eq = load ptr, ptr %i.ep, align 8, !nonnull !21, !align !25, !noundef !21
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 1920 ; 2 uses
  %.val158 = load i32, ptr %i.i, align 8, !noundef !21
  %i.es = and i32 %.val158, 40
  %or.cond.i184 = icmp eq i32 %i.es, 0            ; 2 uses
  %.sroa.3.0.in.v.i185 = select i1 %or.cond.i184, i64 16, i64 40
  %.sroa.3.0.in.i186 = getelementptr inbounds nuw i8, ptr %i.er, i64 %.sroa.3.0.in.v.i185
  %.sroa.0.0.in.v.i187 = select i1 %or.cond.i184, i64 8, i64 32
  %.sroa.0.0.in.i188 = getelementptr inbounds nuw i8, ptr %i.er, i64 %.sroa.0.0.in.v.i187
  %.sroa.0.0.i189 = load ptr, ptr %.sroa.0.0.in.i188, align 8, !alias.scope !11536, !nonnull !21, !noundef !21
  %.sroa.3.0.i190 = load i64, ptr %.sroa.3.0.in.i186, align 8, !alias.scope !11536, !noundef !21
  invoke void %.val162(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i189, i64 noundef %.sroa.3.0.i190, i8 noundef 4) #45
          to label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter14format_keyword.exit192 unwind label %bb.v, !inline_history !6

_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter14format_keyword.exit192: ; preds = %bb.ad
  invoke void %.val162(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0)
          to label %bb.ac unwind label %bb.v

bb.ae:                                            ; preds = %bb.ac
  %i.et = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.eu = load i16, ptr %i.et, align 8, !range !28, !noundef !21 ; 2 uses
  switch i16 %i.eu, label %bb.ag [
    i16 765, label %bb.af
    i16 764, label %bb.af
    i16 763, label %bb.af
    i16 759, label %bb.af
    i16 758, label %bb.af
    i16 757, label %bb.af
  ]

bb.af:                                            ; preds = %bb.ae, %bb.ae, %bb.ae, %bb.ae, %bb.ae, %bb.ae
  %.off = add nsw i32 %i.ej, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.ah, label %bb.ai

bb.ag:                                            ; preds = %bb.ah, %bb.ah, %bb.ae, %bb.ac
  %.sroa.061.1 = phi i1 [ true, %bb.ae ], [ %i.en, %bb.ac ], [ true, %bb.ah ], [ true, %bb.ah ]
  %i.ev = load i32, ptr %i.i, align 8, !noundef !21 ; 3 uses
  %i.ew = and i32 %i.ev, 4096
  %.not125.a = icmp eq i32 %i.ew, 0
  br i1 %.not125.a, label %bb.ap, label %bb.aq

bb.ah:                                            ; preds = %bb.af
  switch i8 %.sroa.0.1, label %bb.aj [
    i8 42, label %bb.ag
    i8 26, label %bb.ag
  ]

bb.ai:                                            ; preds = %bb.af
  %i.ex = load i32, ptr %i.i, align 8, !noundef !21 ; 2 uses
  %i.ey = and i32 %i.ex, 4096
  %.not126 = icmp eq i32 %i.ey, 0
  br i1 %.not126, label %bb.ak, label %bb.aq

bb.aj:                                            ; preds = %bb.ah
  %i.ez = load i32, ptr %i.i, align 8, !noundef !21 ; 4 uses
  %i.fa = and i32 %i.ez, 4096
  %.not124 = icmp eq i32 %i.fa, 0
  br i1 %.not124, label %18, label %bb.aq

18:                                               ; preds = %bb.aj
  switch i8 %.sroa.0.1, label %bb.at [
    i8 41, label %bb.am
    i8 0, label %bb.as
  ]

bb.ak:                                            ; preds = %.split244, %.split, %bb.ai, %bb.ar, %_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter9fmt_utils19show_segment_prefix.exit, %bb.ap
  br i1 %.not121, label %bb.as, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.val170.pre = load i32, ptr %i.i, align 8
  br label %bb.at

bb.am:                                            ; preds = %._crit_edge, %18
  %.val171250 = phi i32 [ %i.ev, %._crit_edge ], [ %i.ez, %18 ] ; 3 uses
  %i.fb = phi i16 [ %.pre, %._crit_edge ], [ %i.eu, %18 ]
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 260
  %.val = load i32, ptr %i.fc, align 4, !noundef !21
  %i.fd = and i32 %.val, 4
  %i.fe = icmp ne i32 %i.fd, 0                    ; 3 uses
  switch i16 %i.fb, label %bb.an [
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

bb.an:                                            ; preds = %bb.am
  %narrow.i.i = add nuw nsw i32 %i.el, 70
  %narrow9.i.i = select i1 %i.en, i32 %narrow.i.i, i32 0 ; 2 uses
  %.off.i.i = add nsw i32 %i.ej, -1
  %switch.i.i = icmp ult i32 %.off.i.i, 2
  br i1 %switch.i.i, label %bb.ao, label %.split

.split:                                           ; preds = %bb.an
  %i.ff = add nsw i32 %narrow9.i.i, -75
  %or.cond.i.i200 = icmp ult i32 %i.ff, 2
  %..i.i201 = or i1 %or.cond.i.i200, %i.fe
  br i1 %..i.i201, label %bb.aq, label %bb.ak

bb.ao:                                            ; preds = %bb.an
  %i.fg = getelementptr inbounds nuw i8, ptr %3, i64 35
  %i.fh = load i8, ptr %i.fg, align 1, !alias.scope !11537, !noundef !21
  %switch.tableidx = add i8 %i.fh, -26            ; 2 uses
  %i.fi = icmp ult i8 %switch.tableidx, 33
  br i1 %i.fi, label %switch.lookup, label %.split244

switch.lookup:                                    ; preds = %bb.ao
  %i.fj = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsp_NtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4infoNtB5_20SimpleInstrInfo_XLATNtB5_9InstrInfo7op_info, i64 %i.fj
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %.split244

.split244:                                        ; preds = %bb.ao, %switch.lookup
  %.sroa.0.0.i.i202 = phi i32 [ %switch.ext, %switch.lookup ], [ 74, %bb.ao ]
  %.not.i.i = icmp ne i32 %narrow9.i.i, %.sroa.0.0.i.i202
  %.8.i.i = or i1 %i.fe, %.not.i.i
  br i1 %.8.i.i, label %bb.aq, label %bb.ak

bb.ap:                                            ; preds = %bb.ag
  br i1 %.sroa.061.1, label %._crit_edge, label %bb.ak

._crit_edge:                                      ; preds = %bb.ap
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.pre = load i16, ptr %.phi.trans.insert, align 8, !range !28, !alias.scope !11537
  br label %bb.am

_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter9fmt_utils19show_segment_prefix.exit: ; preds = %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am
  br i1 %i.fe, label %bb.aq, label %bb.ak

bb.aq:                                            ; preds = %bb.ag, %bb.ai, %bb.aj, %_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter9fmt_utils19show_segment_prefix.exit, %.split, %.split244
  %.val171.a = phi i32 [ %i.ev, %bb.ag ], [ %i.ex, %bb.ai ], [ %i.ez, %bb.aj ], [ %.val171250, %_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter9fmt_utils19show_segment_prefix.exit ], [ %.val171250, %.split ], [ %.val171250, %.split244 ]
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 288
  %.val172 = load ptr, ptr %i.fk, align 8, !nonnull !21, !align !25, !noundef !21
  %i.fl = zext nneg i8 %8 to i64
  %i.fm = getelementptr inbounds nuw [48 x i8], ptr %.val172, i64 %i.fl ; 2 uses
  %i.fn = and i32 %.val171.a, 36
  %or.cond.i193 = icmp eq i32 %i.fn, 0            ; 2 uses
  %.sroa.3.0.in.v.i194 = select i1 %or.cond.i193, i64 16, i64 40
  %.sroa.3.0.in.i195 = getelementptr inbounds nuw i8, ptr %i.fm, i64 %.sroa.3.0.in.v.i194
  %.sroa.0.0.in.v.i196 = select i1 %or.cond.i193, i64 8, i64 32
  %.sroa.0.0.in.i197 = getelementptr inbounds nuw i8, ptr %i.fm, i64 %.sroa.0.0.in.v.i196
  %.sroa.0.0.i198 = load ptr, ptr %.sroa.0.0.in.i197, align 8, !nonnull !21, !noundef !21
  %.sroa.3.0.i199 = load i64, ptr %.sroa.3.0.in.i195, align 8, !noundef !21
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.fp = load ptr, ptr %i.fo, align 8, !invariant.load !21, !nonnull !21
  invoke void %i.fp(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, i32 noundef %4, i32 noundef %5, i32 %6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i198, i64 noundef %.sroa.3.0.i199, i8 noundef %8)
          to label %bb.ar unwind label %bb.v

bb.ar:                                            ; preds = %bb.aq
  invoke void %.val162(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @400, i64 noundef 1, i8 noundef 6)
          to label %bb.ak unwind label %bb.v

bb.as:                                            ; preds = %bb.at, %bb.ak, %18
  %.sroa.074.0 = phi i8 [ 0, %bb.ak ], [ %.sroa.0.1, %18 ], [ 1, %bb.at ] ; 2 uses
  %.not127 = icmp eq i8 %10, 0
  br i1 %.not127, label %bb.au, label %bb.av

bb.at:                                            ; preds = %bb.al, %18
  %.val170 = phi i32 [ %.val170.pre, %bb.al ], [ %i.ez, %18 ]
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 288
  %.val170.a = load ptr, ptr %i.fq, align 8, !nonnull !21, !align !25, !noundef !21
  %i.fr = zext i8 %.sroa.0.1 to i64
  %i.fs = getelementptr inbounds nuw [48 x i8], ptr %.val170.a, i64 %i.fr ; 2 uses
  %i.ft = and i32 %.val170, 36
  %or.cond.i203 = icmp eq i32 %i.ft, 0            ; 2 uses
  %.sroa.3.0.in.v.i204 = select i1 %or.cond.i203, i64 16, i64 40
  %.sroa.3.0.in.i205 = getelementptr inbounds nuw i8, ptr %i.fs, i64 %.sroa.3.0.in.v.i204
  %.sroa.0.0.in.v.i206 = select i1 %or.cond.i203, i64 8, i64 32
  %.sroa.0.0.in.i207 = getelementptr inbounds nuw i8, ptr %i.fs, i64 %.sroa.0.0.in.v.i206
  %.sroa.0.0.i208 = load ptr, ptr %.sroa.0.0.in.i207, align 8, !nonnull !21, !noundef !21
  %.sroa.3.0.i209 = load i64, ptr %.sroa.3.0.in.i205, align 8, !noundef !21
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.fv = load ptr, ptr %i.fu, align 8, !invariant.load !21, !nonnull !21
  invoke void %i.fv(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, i32 noundef %4, i32 noundef %5, i32 %6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i208, i64 noundef %.sroa.3.0.i209, i8 noundef %.sroa.0.1)
          to label %bb.as unwind label %bb.v

bb.au:                                            ; preds = %.invoke260, %bb.bj, %bb.as
  %.sroa.074.1 = phi i8 [ 1, %.invoke260 ], [ 1, %bb.bj ], [ %.sroa.074.0, %bb.as ]
  %i.fw = load i64, ptr %i.a, align 8, !range !59, !noundef !21 ; 3 uses
  %.not135.a = icmp eq i64 %i.fw, -3
  %i.fx = trunc nuw i8 %.sroa.074.1 to i1         ; 2 uses
  br i1 %.not135.a, label %bb.br, label %bb.bq

bb.av:                                            ; preds = %bb.as
  %i.fy = trunc nuw i8 %.sroa.074.0 to i1
  br i1 %i.fy, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.bb, %bb.ba, %bb.av
  %i.fz = trunc nuw i8 %.sroa.059.1 to i1
  %i.ga = load i32, ptr %i.i, align 8, !noundef !21 ; 3 uses
  br i1 %i.fz, label %bb.bc, label %.invoke260

bb.ax:                                            ; preds = %bb.av
  %i.gb = load i32, ptr %i.i, align 8, !noundef !21
  %i.gc = and i32 %i.gb, 256
  %.not128 = icmp eq i32 %i.gc, 0
  br i1 %.not128, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.az, %bb.ax
  invoke void %.val162(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @372, i64 noundef 1, i8 noundef 5)
          to label %bb.ba unwind label %bb.v

bb.az:                                            ; preds = %bb.ax
  invoke void %.val162(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0)
          to label %bb.ay unwind label %bb.v

bb.ba:                                            ; preds = %bb.ay
  %i.gd = load i32, ptr %i.i, align 8, !noundef !21
  %i.ge = and i32 %i.gd, 256
  %.not129 = icmp eq i32 %i.ge, 0
  br i1 %.not129, label %bb.aw, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  invoke void %.val162(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0)
          to label %bb.aw unwind label %bb.v

bb.bc:                                            ; preds = %bb.aw
  %i.gf = and i32 %i.ga, 1024
  %.not130 = icmp eq i32 %i.gf, 0
  br i1 %.not130, label %bb.bd, label %bb.bk

bb.bd:                                            ; preds = %bb.bc
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 288
  %.val166 = load ptr, ptr %i.gg, align 8, !nonnull !21, !align !25, !noundef !21
  %i.gh = zext i8 %10 to i64
  %i.gi = getelementptr inbounds nuw [48 x i8], ptr %.val166, i64 %i.gh ; 2 uses
  %i.gj = and i32 %i.ga, 36
  %or.cond.i217 = icmp eq i32 %i.gj, 0            ; 2 uses
  %.sroa.3.0.in.v.i218 = select i1 %or.cond.i217, i64 16, i64 40
  %.sroa.3.0.in.i219 = getelementptr inbounds nuw i8, ptr %i.gi, i64 %.sroa.3.0.in.v.i218
  %.sroa.0.0.in.v.i220 = select i1 %or.cond.i217, i64 8, i64 32
  %.sroa.0.0.in.i221 = getelementptr inbounds nuw i8, ptr %i.gi, i64 %.sroa.0.0.in.v.i220
  %.sroa.0.0.i222 = load ptr, ptr %.sroa.0.0.in.i221, align 8, !nonnull !21, !noundef !21
  %.sroa.3.0.i223 = load i64, ptr %.sroa.3.0.in.i219, align 8, !noundef !21
  %i.gk = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.gl = load ptr, ptr %i.gk, align 8, !invariant.load !21, !nonnull !21
  invoke void %i.gl(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, i32 noundef %4, i32 noundef %5, i32 %6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i222, i64 noundef %.sroa.3.0.i223, i8 noundef %10)
          to label %bb.be unwind label %bb.v

bb.be:                                            ; preds = %bb.bd
  %i.gm = load i32, ptr %i.i, align 8, !noundef !21
  %i.gn = and i32 %i.gm, 512
  %.not131 = icmp eq i32 %i.gn, 0
  br i1 %.not131, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.bg, %bb.be
  invoke void %.val162(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @402, i64 noundef 1, i8 noundef 5)
          to label %bb.bh unwind label %bb.v

bb.bg:                                            ; preds = %bb.be
  invoke void %.val162(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0)
          to label %bb.bf unwind label %bb.v

bb.bh:                                            ; preds = %bb.bf
  %i.go = load i32, ptr %i.i, align 8, !noundef !21
  %i.gp = and i32 %i.go, 512
  %.not132 = icmp eq i32 %i.gp, 0
  br i1 %.not132, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  invoke void %.val162(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0)
          to label %bb.bj unwind label %bb.v

bb.bj:                                            ; preds = %bb.bh, %bb.bi
  %i.gq = zext nneg i32 %11 to i64                ; 2 uses
  %i.gr = getelementptr inbounds nuw [16 x i8], ptr @_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter10fmt_consts13SCALE_NUMBERS, i64 %i.gq
  %i.gs = load ptr, ptr %i.gr, align 8, !nonnull !21, !noundef !21
  %i.gt = shl nuw nsw i64 1, %i.gq
  %i.gu = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.gv = load ptr, ptr %i.gu, align 8, !invariant.load !21, !nonnull !21
  invoke void %i.gv(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, i32 noundef %4, i32 noundef %5, i32 %6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gs, i64 noundef 1, i64 noundef %i.gt, i8 noundef 4, i8 noundef 7)
          to label %bb.au unwind label %bb.v

bb.bk:                                            ; preds = %bb.bc
  %i.gw = zext nneg i32 %11 to i64                ; 2 uses
  %i.gx = getelementptr inbounds nuw [16 x i8], ptr @_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter10fmt_consts13SCALE_NUMBERS, i64 %i.gw
  %i.gy = load ptr, ptr %i.gx, align 8, !nonnull !21, !noundef !21
  %i.gz = shl nuw nsw i64 1, %i.gw
  %i.ha = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.hb = load ptr, ptr %i.ha, align 8, !invariant.load !21, !nonnull !21
  invoke void %i.hb(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, i32 noundef %4, i32 noundef %5, i32 %6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gy, i64 noundef 1, i64 noundef %i.gz, i8 noundef 4, i8 noundef 7)
          to label %bb.bl unwind label %bb.v

bb.bl:                                            ; preds = %bb.bk
  %i.hc = load i32, ptr %i.i, align 8, !noundef !21
  %i.hd = and i32 %i.hc, 512
  %.not133 = icmp eq i32 %i.hd, 0
  br i1 %.not133, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bn, %bb.bl
  invoke void %.val162(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @402, i64 noundef 1, i8 noundef 5)
          to label %bb.bo unwind label %bb.v

bb.bn:                                            ; preds = %bb.bl
  invoke void %.val162(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0)
          to label %bb.bm unwind label %bb.v

bb.bo:                                            ; preds = %bb.bm
  %i.he = load i32, ptr %i.i, align 8, !noundef !21 ; 2 uses
  %i.hf = and i32 %i.he, 512
  %.not134 = icmp eq i32 %i.hf, 0
  br i1 %.not134, label %.invoke260, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  invoke void %.val162(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0)
          to label %._crit_edge251 unwind label %bb.v

._crit_edge251:                                   ; preds = %bb.bp
  %.val163.pre = load i32, ptr %i.i, align 8
  br label %.invoke260

.invoke260:                                       ; preds = %bb.bo, %._crit_edge251, %bb.aw
  %.sink264 = phi i32 [ %i.ga, %bb.aw ], [ %.val163.pre, %._crit_edge251 ], [ %i.he, %bb.bo ]
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 288
  %.val168 = load ptr, ptr %i.hg, align 8, !nonnull !21, !align !25, !noundef !21
  %i.hh = zext i8 %10 to i64
  %i.hi = getelementptr inbounds nuw [48 x i8], ptr %.val168, i64 %i.hh ; 2 uses
  %i.hj = and i32 %.sink264, 36
  %or.cond.i210 = icmp eq i32 %i.hj, 0            ; 2 uses
  %.sroa.3.0.in.v.i211 = select i1 %or.cond.i210, i64 16, i64 40
  %.sroa.3.0.in.i212 = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.sroa.3.0.in.v.i211
  %.sroa.0.0.in.v.i213 = select i1 %or.cond.i210, i64 8, i64 32
  %.sroa.0.0.in.i214 = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.sroa.0.0.in.v.i213
  %.sroa.0.0.i215 = load ptr, ptr %.sroa.0.0.in.i214, align 8, !nonnull !21, !noundef !21
  %.sroa.3.0.i216 = load i64, ptr %.sroa.3.0.in.i212, align 8, !noundef !21
  %i.hk = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.hl = load ptr, ptr %i.hk, align 8, !invariant.load !21, !nonnull !21
  invoke void %i.hl(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, i32 noundef %4, i32 noundef %5, i32 %6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i215, i64 noundef %.sroa.3.0.i216, i8 noundef %10)
          to label %bb.au unwind label %bb.v

bb.bq:                                            ; preds = %bb.au
  br i1 %i.fx, label %bb.bt, label %bb.bs

bb.br:                                            ; preds = %bb.au
  br i1 %i.fx, label %bb.by, label %.critedge

bb.bs:                                            ; preds = %bb.bq
  %i.hm = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.hn = load i32, ptr %i.hm, align 8, !noundef !21
  %i.ho = and i32 %i.hn, 2
  %i.hp = icmp eq i32 %i.ho, 0
  br i1 %i.hp, label %bb.bu, label %.invoke258

bb.bt:                                            ; preds = %bb.bq
  %i.hq = load i32, ptr %i.i, align 8, !noundef !21
  %i.hr = and i32 %i.hq, 256
  %.not141 = icmp eq i32 %i.hr, 0
  br i1 %.not141, label %.invoke259, label %bb.bv

bb.bu:                                            ; preds = %.invoke258, %bb.bw, %bb.bs
  %i.hs = load i32, ptr %i.i, align 8, !noundef !21 ; 2 uses
  %i.ht = and i32 %i.hs, 33554432
  %i.hu = icmp ne i32 %i.ht, 0
  %i.hv = and i32 %i.hs, 256
  %i.hw = icmp ne i32 %i.hv, 0
  invoke fastcc void @_RNvMs_NtCsf8MNnN4IDbl_8iced_x869formatterNtB4_22FormatterOutputMethods6write2(ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, i32 noundef %4, i32 noundef %5, i32 %6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.d, ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.b, i64 noundef %.sroa.056.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.a, i1 noundef zeroext %i.hu, i1 noundef zeroext false, i1 noundef zeroext %i.hw)
          to label %bb.bx unwind label %bb.v

.invoke259:                                       ; preds = %bb.bv, %bb.bt
  %i.hx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.hy = load i32, ptr %i.hx, align 8, !noundef !21
  %i.hz = and i32 %i.hy, 2
  %i.ia = icmp eq i32 %i.hz, 0
  %.266 = select i1 %i.ia, ptr @372, ptr @370
  invoke void %.val162(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.266, i64 noundef 1, i8 noundef 5)
          to label %bb.bw unwind label %bb.v

bb.bv:                                            ; preds = %bb.bt
  invoke void %.val162(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0)
          to label %.invoke259 unwind label %bb.v

bb.bw:                                            ; preds = %.invoke259
  %i.ib = load i32, ptr %i.i, align 8, !noundef !21
  %i.ic = and i32 %i.ib, 256
  %.not142 = icmp eq i32 %i.ic, 0
  br i1 %.not142, label %bb.bu, label %.invoke258

.invoke258:                                       ; preds = %bb.bw, %bb.bs
  %i.id = phi ptr [ @370, %bb.bs ], [ @371, %bb.bw ]
  %i.ie = phi i8 [ 5, %bb.bs ], [ 0, %bb.bw ]
  invoke void %.val162(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.id, i64 noundef 1, i8 noundef %i.ie)
          to label %bb.bu unwind label %bb.v

bb.bx:                                            ; preds = %bb.bz, %bb.cr, %bb.by, %bb.bu
  %i.if = load i32, ptr %i.i, align 8, !noundef !21
  %i.ig = and i32 %i.if, 128
  %.not143 = icmp eq i32 %i.ig, 0
  br i1 %.not143, label %bb.cs, label %bb.ct

end_hunk_2
begin_hunk_3_@_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter12with_options:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.q, ptr noundef nonnull align 8 dereferenceable(264) %i.p, i64 264, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 264
  store ptr %i.u, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 272
  store ptr %i.x, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 280
  store ptr %i.aa, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 288
  store ptr @_RNvNvNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10fmt_constsNtB6_19FORMATTER_CONSTANTSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref11___stability4LAZY, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 296
  store ptr @_RNvNvNvXs0_NtNtCsf8MNnN4IDbl_8iced_x869formatter10fmt_constsNtB9_12ARRAY_CONSTSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref11___stability4LAZY, ptr %i.aj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !11924
  %i.ak = call noundef dereferenceable_or_null(81) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 81, i64 noundef range(i64 1, 9) 1) #41, !noalias !11924 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.n, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter3new.exit

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 81) #46
          to label %.noexc10 unwind label %bb.o

.noexc10:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter7num_fmtNtB4_15NumberFormatter3new.exit: ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.an, ptr noundef nonnull align 8 dereferenceable(304) %i.q, i64 304, i1 false)
  store i64 81, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ak, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr %1, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 336
  store ptr %2, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr %3, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 352
  store ptr %4, ptr %i.ar, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  ret void

bb.p:                                             ; preds = %bb.q, %bb.b
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.q:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres14SymbolResolverEL_EEEB1D_(ptr %1, ptr %2) #42
          to label %bb.r unwind label %bb.p

bb.r:                                             ; preds = %bb.q
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter13format_memory(ptr noalias nofree noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, i32 noundef range(i32 0, 255) %4, i32 noundef range(i32 0, 2) %5, i32 %6, i8 noundef range(i8 71, 77) %7, i8 noundef %8, i8 noundef %9, i32 noundef range(i32 0, 4) %10, i32 noundef range(i32 0, 9) %11, i64 noundef %12, i32 noundef range(i32 1, 256) %13, i32 noundef range(i32 0, 65536) %14) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 11 uses
  %i.b = alloca [56 x i8], align 8                ; 22 uses
  %i.c = alloca [4 x i8], align 4                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 285
  %i.f = load i8, ptr %i.e, align 1, !range !40, !noundef !21
  %i.g = zext nneg i8 %i.f to i32
  %i.h = shl nuw i32 %i.g, 30
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 25 uses
  %i.j = load i32, ptr %i.i, align 8, !noundef !21 ; 6 uses
  %i.k = lshr i32 %i.j, 21                        ; 2 uses
  %i.l = and i32 %i.k, 2
  %storemerge = or disjoint i32 %i.l, %i.h
  store i32 %storemerge, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11962)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11963)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.n = load i8, ptr %i.m, align 4, !range !40, !alias.scope !11963, !noalias !11962, !noundef !21 ; 3 uses
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
  %.sroa.0.0.i = load i32, ptr %i.q, align 4, !alias.scope !11963, !noalias !11962, !noundef !21
  %.sroa.01.1.i = load ptr, ptr %.sroa.01.4.in.i, align 8, !alias.scope !11963, !noalias !11962, !nonnull !21, !noundef !21
  %.sroa.9.1.i = load i64, ptr %.sroa.9.4.in.i, align 8, !alias.scope !11963, !noalias !11962, !noundef !21
  %.sroa.02.0.i = load ptr, ptr %i.s, align 8, !alias.scope !11963, !noalias !11962, !nonnull !21, !noundef !21
  %.sroa.93.0.i = load i64, ptr %i.t, align 8, !alias.scope !11963, !noalias !11962, !noundef !21
  %.sroa.04.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.sroa.04.0.i = load ptr, ptr %.sroa.04.0.in.i, align 8, !alias.scope !11963, !noalias !11962, !nonnull !21, !noundef !21
  %.sroa.3.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.sroa.3.0.i = load i64, ptr %.sroa.3.0.in.i, align 8, !alias.scope !11963, !noalias !11962, !noundef !21
  %..i.i = tail call noundef i32 @llvm.umin.i32(i32 %.sroa.0.0.i, i32 255)
  %i.u = trunc nuw i32 %..i.i to i8
  store ptr %.sroa.01.1.i, ptr %i.b, align 8, !alias.scope !11962, !noalias !11963
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.9.1.i, ptr %i.v, align 8, !alias.scope !11962, !noalias !11963
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.02.0.i, ptr %i.w, align 8, !alias.scope !11962, !noalias !11963
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.93.0.i, ptr %i.x, align 8, !alias.scope !11962, !noalias !11963
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %.sroa.04.0.i, ptr %i.y, align 8, !alias.scope !11962, !noalias !11963
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.sroa.3.0.i, ptr %i.z, align 8, !alias.scope !11962, !noalias !11963
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i8 %i.u, ptr %i.aa, align 8, !alias.scope !11962, !noalias !11963
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 49
  store i8 %i.n, ptr %i.ab, align 1, !alias.scope !11962, !noalias !11963
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 50
  %i.ad = lshr i32 %i.j, 15
  %i.ae = trunc i32 %i.ad to i8
  %i.af = and i8 %i.ae, 1
  store i8 %i.af, ptr %i.ac, align 2, !alias.scope !11962, !noalias !11963
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 51 ; 4 uses
  %i.ah = lshr i32 %i.j, 16
  %i.ai = trunc i32 %i.ah to i8
  %i.aj = and i8 %i.ai, 1
  store i8 %i.aj, ptr %i.ag, align 1, !alias.scope !11962, !noalias !11963
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.al = lshr i32 %i.j, 17
  %i.am = trunc i32 %i.al to i8
  %i.an = and i8 %i.am, 1
  store i8 %i.an, ptr %i.ak, align 4, !alias.scope !11962, !noalias !11963
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 53
  %i.ap = lshr i32 %i.j, 14
  %i.aq = trunc i32 %i.ap to i8
  %i.ar = and i8 %i.aq, 1
  store i8 %i.ar, ptr %i.ao, align 1, !alias.scope !11962, !noalias !11963
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 54 ; 3 uses
  %i.at = lshr i32 %i.j, 20
  %i.au = trunc i32 %i.at to i8
  %i.av = and i8 %i.au, 1
  store i8 %i.av, ptr %i.as, align 2, !alias.scope !11962, !noalias !11963
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 55 ; 5 uses
  %i.ax = trunc i32 %i.k to i8
  %i.ay = and i8 %i.ax, 1
  store i8 %i.ay, ptr %i.aw, align 1, !alias.scope !11962, !noalias !11963
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ba = load ptr, ptr %i.az, align 8, !noundef !21 ; 2 uses
  %.not111 = icmp eq ptr %i.ba, null
  br i1 %.not111, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !21, !align !25, !noundef !21
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !invariant.load !21, !nonnull !21
  call void %i.be(ptr noundef nonnull %i.ba, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, i32 noundef %4, i32 noundef %5, i32 %6, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.b) #45
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  switch i8 %8, label %bb.f [
    i8 70, label %bb.d
    i8 69, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.bf = load i32, ptr %i.i, align 8, !noundef !21
  %i.bg = and i32 %i.bf, 4194304
  %.not113 = icmp eq i32 %i.bg, 0                 ; 2 uses
  %i.bh = load i64, ptr %3, align 8
  %i.bi = select i1 %.not113, i64 0, i64 %i.bh
  %.sroa.032.2 = sub i64 %12, %i.bi
  %.sroa.0.2 = select i1 %.not113, i8 0, i8 70
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.bj = and i64 %12, 4294967295
  %i.bk = load i32, ptr %i.i, align 8, !noundef !21
  %i.bl = and i32 %i.bk, 4194304
  %.not112 = icmp eq i32 %i.bl, 0                 ; 2 uses
  %i.bm = load i64, ptr %3, align 8
  %i.bn = sub i64 %12, %i.bm
  %sext = shl i64 %i.bn, 32
  %i.bo = ashr exact i64 %sext, 32
  %.sroa.032.0 = select i1 %.not112, i64 %12, i64 %i.bo
  %.sroa.0.0 = select i1 %.not112, i8 0, i8 69
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d
  %.sroa.052.0 = phi i64 [ %12, %bb.d ], [ %i.bj, %bb.e ], [ %12, %bb.c ] ; 2 uses
  %.sroa.032.1 = phi i64 [ %.sroa.032.2, %bb.d ], [ %.sroa.032.0, %bb.e ], [ %12, %bb.c ] ; 12 uses
  %.sroa.027.0 = phi i32 [ 8, %bb.d ], [ 4, %bb.e ], [ %11, %bb.c ] ; 3 uses
  %.sroa.0.1 = phi i8 [ %.sroa.0.2, %bb.d ], [ %.sroa.0.0, %bb.e ], [ %8, %bb.c ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.bq = load ptr, ptr %i.bp, align 8, !noundef !21 ; 2 uses
  %.not114 = icmp eq ptr %i.bq, null
  br i1 %.not114, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !21, !align !25, !noundef !21
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !invariant.load !21, !nonnull !21
  call void %i.bu(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noundef nonnull %i.bq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, i32 noundef %4, i32 noundef %5, i32 %6, i64 noundef %.sroa.052.0, i32 noundef %13) #45
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  store i64 -3, ptr %i.a, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bv = icmp eq i32 %10, 0
  %i.bw = load i32, ptr %i.i, align 8             ; 2 uses
  %i.bx = lshr i32 %i.bw, 11
  %i.by = trunc i32 %i.bx to i8
  %15 = and i8 %i.by, 1
  %.sroa.054.0 = select i1 %i.bv, i8 %15, i8 1    ; 2 uses
  %.not116 = icmp eq i8 %.sroa.0.1, 0
  %16 = or i8 %.sroa.054.0, %.sroa.0.1
  %or.cond8.not.not = icmp eq i8 %16, 0
  %spec.store.select = select i1 %or.cond8.not.not, i8 1, i8 %.sroa.054.0 ; 2 uses
  %i.bz = icmp eq i32 %13, 2
  br i1 %i.bz, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.l, %bb.l, %bb.i
  br label %bb.o

bb.k:                                             ; preds = %bb.i
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.cb = load i32, ptr %i.ca, align 4, !noundef !21
  %i.cc = and i32 %i.cb, 4
  %.not116.a = icmp eq i32 %i.cc, 0
  br i1 %.not116.a, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ce = load i16, ptr %i.cd, align 8, !range !28, !noundef !21
  switch i16 %i.ce, label %bb.o [
    i16 1037, label %bb.j
    i16 1044, label %bb.j
  ]

.loopexit:                                        ; preds = %bb.aa, %.noexc168
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp:                               ; preds = %.invoke253.a, %.invoke252, %.invoke251, %.invoke, %bb.ai, %bb.an, %bb.ao, %bb.ar, %bb.at, %bb.ay, %bb.az, %bb.bb, %bb.be, %bb.bg, %bb.bh, %bb.bj, %bb.bk, %bb.bl, %bb.bn, %bb.bo, %bb.bq, %bb.bw, %bb.bx, %bb.cr, %bb.cs, %bb.cu, %.noexc221, %.noexc222
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.0.val.off.i = add i64 %.val160, -1
  %switch.i = icmp ult i64 %.0.val.off.i, -4
  br i1 %switch.i, label %bb.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit

bb.n:                                             ; preds = %bb.m
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val156 = load ptr, ptr %i.cf, align 8, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val156, i64 noundef %.val160, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !11964
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf8MNnN4IDbl_8iced_x869formatter6symres12SymbolResultEEB13_.exit

bb.o:                                             ; preds = %bb.j, %bb.l, %bb.k
  %.sroa.054.1 = phi i8 [ 0, %bb.j ], [ %spec.store.select, %bb.k ], [ %spec.store.select, %bb.l ]
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 20
  %.val150 = load i32, ptr %i.cg, align 4, !noundef !21 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val151 = load i16, ptr %i.ch, align 8, !range !28, !noundef !21 ; 3 uses
  %i.ci = and i32 %.val150, 67108864
  %.not.i = icmp eq i32 %i.ci, 0
  %i.cj = zext nneg i16 %.val151 to i64
  %.sroa.0.0.in.v.i = select i1 %.not.i, ptr @_RNvNtCsf8MNnN4IDbl_8iced_x8624instruction_memory_sizes12SIZES_NORMAL, ptr @_RNvNtCsf8MNnN4IDbl_8iced_x8624instruction_memory_sizes10SIZES_BCST
  %.sroa.0.0.in.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.in.v.i, i64 %i.cj
  %.sroa.0.0.i165 = load i8, ptr %.sroa.0.0.in.i, align 1, !range !39, !noundef !21 ; 2 uses
  %i.ck = load i32, ptr %i.c, align 4, !noundef !21
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %.val158 = load ptr, ptr %i.cl, align 8         ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val159 = load ptr, ptr %i.cm, align 8         ; 24 uses
  %.val160 = load i64, ptr %i.a, align 8          ; 7 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %.val161 = load i8, ptr %i.cn, align 4          ; 6 uses
  %i.co = lshr i32 %i.ck, 30                      ; 2 uses
  %i.cp = icmp ne i32 %i.co, 3
  %i.cq = and i32 %14, 1
  %i.cr = icmp eq i32 %i.cq, 0
  %or.cond.i = and i1 %i.cr, %i.cp
  br i1 %or.cond.i, label %bb.p, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter18format_memory_size.exit

bb.p:                                             ; preds = %bb.o
  %i.cs = zext i8 %.sroa.0.0.i165 to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val158) ]
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %.val158, i64 %i.cs ; 6 uses
  switch i32 %i.co, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter16is_same_mem_size.exit.thread.i [
    i32 0, label %bb.q
    i32 2, label %bb.v
  ]

bb.q:                                             ; preds = %bb.p
  %.not12.i = icmp eq i64 %.val160, -3
  %.not13.i = icmp eq i8 %.val161, -1
  %or.cond16.i = select i1 %.not12.i, i1 true, i1 %.not13.i
  br i1 %or.cond16.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cu = and i32 %14, 2
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter18format_memory_size.exit, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter16is_same_mem_size.exit.thread.i

bb.s:                                             ; preds = %bb.q
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cx = load i64, ptr %i.cw, align 8, !noundef !21 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !nonnull !21, !align !25, !noundef !21
  call void @llvm.experimental.noalias.scope.decl(metadata !11965)
  %.sroa.0.0.i.i = zext i8 %.val161 to i64        ; 2 uses
  %i.da = icmp ult i8 %.val161, -94
  br i1 %i.da, label %bb.t, label %.invoke253.a

bb.t:                                             ; preds = %bb.s
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %.val158, i64 %.sroa.0.0.i.i ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !noalias !11965, !nonnull !21, !align !25, !noundef !21
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.df = load i64, ptr %i.de, align 8, !noalias !11965, !noundef !21
  call void @llvm.experimental.noalias.scope.decl(metadata !11966)
  call void @llvm.experimental.noalias.scope.decl(metadata !11967)
  %.not.i.i.i = icmp eq i64 %i.cx, %i.df
  br i1 %.not.i.i.i, label %.preheader.split.i.i.i.preheader, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter16is_same_mem_size.exit.thread.i

.preheader.split.i.i.i.preheader:                 ; preds = %bb.t
  %exitcond.not.i.i.i273 = icmp eq i64 %i.cx, 0
  br i1 %exitcond.not.i.i.i273, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter18format_memory_size.exit, label %.lr.ph275

.preheader.split.i.i.i:                           ; preds = %bb.u
  %i.dg = add nuw nsw i64 %.sroa.02.0.i.i.i274, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.dg, %i.cx
  br i1 %exitcond.not.i.i.i, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter18format_memory_size.exit, label %.lr.ph275

.lr.ph275:                                        ; preds = %.preheader.split.i.i.i.preheader, %.preheader.split.i.i.i
  %.sroa.02.0.i.i.i274 = phi i64 [ %i.dg, %.preheader.split.i.i.i ], [ 0, %.preheader.split.i.i.i.preheader ] ; 3 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %.sroa.02.0.i.i.i274
  %i.di = load ptr, ptr %i.dh, align 8, !alias.scope !11968, !noalias !11967, !nonnull !21, !align !25, !noundef !21 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load i64, ptr %i.dj, align 8, !noalias !11969, !noundef !21 ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %.sroa.02.0.i.i.i274
  %i.dm = load ptr, ptr %i.dl, align 8, !alias.scope !11967, !noalias !11968, !nonnull !21, !align !25, !noundef !21 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load i64, ptr %i.dn, align 8, !noalias !11969, !noundef !21
  %i.dp = icmp eq i64 %i.dk, %i.do
  br i1 %i.dp, label %bb.u, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter16is_same_mem_size.exit.thread.i

bb.u:                                             ; preds = %.lr.ph275
  %i.dq = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !noalias !11969, !nonnull !21, !noundef !21
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !noalias !11969, !nonnull !21, !noundef !21
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull %i.dr, ptr nonnull %i.dt, i64 %i.dk), !noalias !11969
  %.not6.i.i.i = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %.not6.i.i.i, label %.preheader.split.i.i.i, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter16is_same_mem_size.exit.thread.i

.invoke253.a:                                     ; preds = %bb.x, %bb.s
  %i.du = phi i64 [ %.sroa.0.0.i.i, %bb.s ], [ %.sroa.0.0.i27.i, %bb.x ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.du, i64 noundef 162, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @421) #47
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke253.a
  unreachable

_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter16is_same_mem_size.exit.thread.i: ; preds = %bb.u, %.lr.ph275, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter16is_same_mem_size.exit35.i, %bb.w, %bb.t, %bb.r, %bb.p
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !nonnull !21, !align !25, !noundef !21 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.dy = load i64, ptr %i.dx, align 8, !noundef !21 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.dy, 3
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.idx.i
  %i.ea = icmp eq i64 %i.dy, 0
  br i1 %i.ea, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter18format_memory_size.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter16is_same_mem_size.exit.thread.i
  %i.eb = and i32 %i.bw, 40
  %or.cond.i.i = icmp eq i32 %i.eb, 0             ; 2 uses
  %.sroa.3.0.in.v.i.i = select i1 %or.cond.i.i, i64 16, i64 40
  %.sroa.0.0.in.v.i.i = select i1 %or.cond.i.i, i64 8, i64 32
  br label %bb.aa

bb.v:                                             ; preds = %bb.p
  %.not.i166 = icmp eq i64 %.val160, -3
  %.not11.i = icmp eq i8 %.val161, -1
  %or.cond19.i = select i1 %.not.i166, i1 true, i1 %.not11.i
  br i1 %or.cond19.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %.old.i = and i32 %14, 4
  %.old2.i = icmp eq i32 %.old.i, 0
  br i1 %.old2.i, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter18format_memory_size.exit, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter16is_same_mem_size.exit.thread.i

bb.x:                                             ; preds = %bb.v
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.ed = load i64, ptr %i.ec, align 8, !noundef !21 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !nonnull !21, !align !25, !noundef !21
  call void @llvm.experimental.noalias.scope.decl(metadata !11970)
  %.sroa.0.0.i27.i = zext i8 %.val161 to i64      ; 2 uses
  %i.eg = icmp ult i8 %.val161, -94
  br i1 %i.eg, label %bb.y, label %.invoke253.a

bb.y:                                             ; preds = %bb.x
  %i.eh = getelementptr inbounds nuw [24 x i8], ptr %.val158, i64 %.sroa.0.0.i27.i ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !noalias !11970, !nonnull !21, !align !25, !noundef !21
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.el = load i64, ptr %i.ek, align 8, !noalias !11970, !noundef !21
  call void @llvm.experimental.noalias.scope.decl(metadata !11971)
  call void @llvm.experimental.noalias.scope.decl(metadata !11972)
  %.not.i.i28.i = icmp eq i64 %i.ed, %i.el
  br i1 %.not.i.i28.i, label %.preheader.split.i.i30.i.preheader, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter16is_same_mem_size.exit35.i

.preheader.split.i.i30.i.preheader:               ; preds = %bb.y
end_hunk_3
begin_hunk_4_@_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter13format_memory:bb.a

.preheader.split.i.i30.i:                         ; preds = %bb.z
  %i.em = add nuw nsw i64 %.sroa.02.0.i.i31.i272, 1 ; 2 uses
  %exitcond.not.i.i32.i = icmp eq i64 %i.em, %i.ed
  br i1 %exitcond.not.i.i32.i, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter18format_memory_size.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.split.i.i30.i.preheader, %.preheader.split.i.i30.i
  %.sroa.02.0.i.i31.i272 = phi i64 [ %i.em, %.preheader.split.i.i30.i ], [ 0, %.preheader.split.i.i30.i.preheader ] ; 3 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %.sroa.02.0.i.i31.i272
  %i.eo = load ptr, ptr %i.en, align 8, !alias.scope !11973, !noalias !11972, !nonnull !21, !align !25, !noundef !21 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.eq = load i64, ptr %i.ep, align 8, !noalias !11974, !noundef !21 ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %.sroa.02.0.i.i31.i272
  %i.es = load ptr, ptr %i.er, align 8, !alias.scope !11972, !noalias !11973, !nonnull !21, !align !25, !noundef !21 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.eu = load i64, ptr %i.et, align 8, !noalias !11974, !noundef !21
  %i.ev = icmp eq i64 %i.eq, %i.eu
  br i1 %i.ev, label %bb.z, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter16is_same_mem_size.exit35.i

bb.z:                                             ; preds = %.lr.ph
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !noalias !11974, !nonnull !21, !noundef !21
  %i.ey = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8, !noalias !11974, !nonnull !21, !noundef !21
  %bcmp.i.i33.i = call i32 @bcmp(ptr nonnull %i.ex, ptr nonnull %i.ez, i64 %i.eq), !noalias !11974
  %.not6.i.i34.i = icmp eq i32 %bcmp.i.i33.i, 0
  br i1 %.not6.i.i34.i, label %.preheader.split.i.i30.i, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter16is_same_mem_size.exit35.i

_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter16is_same_mem_size.exit35.i: ; preds = %bb.z, %.lr.ph, %bb.y
  %i.fa = and i32 %14, 4
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter18format_memory_size.exit, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter16is_same_mem_size.exit.thread.i

bb.aa:                                            ; preds = %.noexc169, %.lr.ph.i
  %.sroa.07.06.i = phi ptr [ %i.dw, %.lr.ph.i ], [ %i.fc, %.noexc169 ] ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.07.06.i, i64 8 ; 2 uses
  %i.fd = load ptr, ptr %.sroa.07.06.i, align 8, !nonnull !21, !align !25, !noundef !21 ; 2 uses
  %.sroa.3.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.fd, i64 %.sroa.3.0.in.v.i.i
  %.sroa.0.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.fd, i64 %.sroa.0.0.in.v.i.i
  %.sroa.0.0.i36.i = load ptr, ptr %.sroa.0.0.in.i.i, align 8, !alias.scope !11975, !nonnull !21, !noundef !21
  %.sroa.3.0.i.i = load i64, ptr %.sroa.3.0.in.i.i, align 8, !alias.scope !11975, !noundef !21
  invoke void %.val159(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i36.i, i64 noundef %.sroa.3.0.i.i, i8 noundef 4) #45
          to label %.noexc168 unwind label %.loopexit, !inline_history !11942

.noexc168:                                        ; preds = %bb.aa
  invoke void %.val159(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0) #45
          to label %.noexc169 unwind label %.loopexit, !inline_history !11942

.noexc169:                                        ; preds = %.noexc168
  %i.fe = icmp eq ptr %i.fc, %i.dz
  br i1 %i.fe, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter18format_memory_size.exit, label %bb.aa

_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter18format_memory_size.exit: ; preds = %.preheader.split.i.i30.i, %.preheader.split.i.i.i, %.noexc169, %.preheader.split.i.i30.i.preheader, %.preheader.split.i.i.i.preheader, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter16is_same_mem_size.exit35.i, %bb.w, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter16is_same_mem_size.exit.thread.i, %bb.r, %bb.o
  %i.ff = lshr i32 %.val150, 18
  %i.fg = and i32 %i.ff, 3                        ; 2 uses
  %i.fh = lshr i32 %.val150, 5
  %i.fi = and i32 %i.fh, 7                        ; 3 uses
  %i.fj = add nsw i32 %i.fi, -1
  %i.fk = icmp ult i32 %i.fj, 6                   ; 2 uses
  %i.fl = icmp eq i32 %i.fi, 4
  br i1 %i.fl, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter18format_memory_size.exit
  switch i16 %.val151, label %bb.ad [
    i16 765, label %bb.ac
    i16 764, label %bb.ac
    i16 763, label %bb.ac
    i16 759, label %bb.ac
    i16 758, label %bb.ac
    i16 757, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab, %bb.ab, %bb.ab, %bb.ab, %bb.ab, %bb.ab
  %.off = add nsw i32 %i.fg, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.ae, label %bb.af

bb.ad:                                            ; preds = %bb.ae, %bb.ae, %bb.ab, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter18format_memory_size.exit
  %.sroa.056.1 = phi i1 [ true, %bb.ab ], [ %i.fk, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter18format_memory_size.exit ], [ true, %bb.ae ], [ true, %bb.ae ]
  %i.fm = load i32, ptr %i.i, align 8, !noundef !21 ; 3 uses
  %i.fn = and i32 %i.fm, 4096
  %.not119.a = icmp eq i32 %i.fn, 0
  br i1 %.not119.a, label %bb.am, label %bb.an

bb.ae:                                            ; preds = %bb.ac
  switch i8 %.sroa.0.1, label %bb.ag [
    i8 42, label %bb.ad
    i8 26, label %bb.ad
  ]

bb.af:                                            ; preds = %bb.ac
  %i.fo = load i32, ptr %i.i, align 8, !noundef !21 ; 2 uses
  %i.fp = and i32 %i.fo, 4096
  %.not120 = icmp eq i32 %i.fp, 0
  br i1 %.not120, label %bb.ai, label %bb.an

bb.ag:                                            ; preds = %bb.ae
  %i.fq = load i32, ptr %i.i, align 8, !noundef !21 ; 3 uses
  %i.fr = and i32 %i.fq, 4096
  %.not118.a = icmp eq i32 %i.fr, 0
  br i1 %.not118.a, label %bb.ah, label %bb.an

bb.ah:                                            ; preds = %bb.ag
  %.not117 = icmp eq i8 %.sroa.0.1, 41
  br i1 %.not117, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.split232, %.split, %bb.af, %bb.ao, %_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter9fmt_utils19show_segment_prefix.exit, %bb.am, %bb.ah
  invoke void %.val159(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @414, i64 noundef 1, i8 noundef 6)
          to label %bb.ap unwind label %.loopexit.split-lp

bb.aj:                                            ; preds = %bb.am, %bb.ah
  %i.fs = phi i32 [ %i.fm, %bb.am ], [ %i.fq, %bb.ah ] ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 260
  %.val152 = load i32, ptr %i.ft, align 4, !noundef !21
  %i.fu = and i32 %.val152, 4
  %i.fv = icmp ne i32 %i.fu, 0                    ; 3 uses
  switch i16 %.val151, label %bb.ak [
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

bb.ak:                                            ; preds = %bb.aj
  %narrow.i.i = add nuw nsw i32 %i.fi, 70
  %narrow9.i.i = select i1 %i.fk, i32 %narrow.i.i, i32 0 ; 2 uses
  %.off.i.i = add nsw i32 %i.fg, -1
  %switch.i.i = icmp ult i32 %.off.i.i, 2
  br i1 %switch.i.i, label %bb.al, label %.split

.split:                                           ; preds = %bb.ak
  %i.fw = add nsw i32 %narrow9.i.i, -75
  %or.cond.i.i175 = icmp ult i32 %i.fw, 2
  %..i.i176 = or i1 %or.cond.i.i175, %i.fv
  br i1 %..i.i176, label %bb.an, label %bb.ai

bb.al:                                            ; preds = %bb.ak
  %i.fx = getelementptr inbounds nuw i8, ptr %3, i64 35
  %i.fy = load i8, ptr %i.fx, align 1, !alias.scope !11976, !noundef !21
  %switch.tableidx = add i8 %i.fy, -26            ; 2 uses
  %i.fz = icmp ult i8 %switch.tableidx, 33
  br i1 %i.fz, label %switch.lookup, label %.split232

switch.lookup:                                    ; preds = %bb.al
  %i.ga = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsp_NtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4infoNtB5_20SimpleInstrInfo_XLATNtB5_9InstrInfo7op_info, i64 %i.ga
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %.split232

.split232:                                        ; preds = %bb.al, %switch.lookup
  %.sroa.0.0.i.i177 = phi i32 [ %switch.ext, %switch.lookup ], [ 74, %bb.al ]
  %.not.i.i = icmp ne i32 %narrow9.i.i, %.sroa.0.0.i.i177
  %.8.i.i = or i1 %i.fv, %.not.i.i
  br i1 %.8.i.i, label %bb.an, label %bb.ai

bb.am:                                            ; preds = %bb.ad
  br i1 %.sroa.056.1, label %bb.aj, label %bb.ai

_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter9fmt_utils19show_segment_prefix.exit: ; preds = %bb.aj, %bb.aj, %bb.aj, %bb.aj, %bb.aj, %bb.aj, %bb.aj, %bb.aj, %bb.aj, %bb.aj, %bb.aj
  br i1 %i.fv, label %bb.an, label %bb.ai

bb.an:                                            ; preds = %bb.ad, %bb.af, %bb.ag, %_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter9fmt_utils19show_segment_prefix.exit, %.split, %.split232
  %i.gb = phi i32 [ %i.fm, %bb.ad ], [ %i.fo, %bb.af ], [ %i.fq, %bb.ag ], [ %i.fs, %_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter9fmt_utils19show_segment_prefix.exit ], [ %i.fs, %.split ], [ %i.fs, %.split232 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !11977)
  %i.gc = zext nneg i8 %7 to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ge = load ptr, ptr %i.gd, align 8, !alias.scope !11977, !nonnull !21, !align !25, !noundef !21
  %i.gf = getelementptr inbounds nuw [48 x i8], ptr %i.ge, i64 %i.gc ; 2 uses
  %i.gg = and i32 %i.gb, 36
  %or.cond6.i = icmp eq i32 %i.gg, 0              ; 2 uses
  %.sroa.04.0.in.v.i = select i1 %or.cond6.i, i64 8, i64 32
  %.sroa.04.0.in.i171 = getelementptr inbounds nuw i8, ptr %i.gf, i64 %.sroa.04.0.in.v.i
  %.sroa.3.0.in.v.i = select i1 %or.cond6.i, i64 16, i64 40
  %.sroa.3.0.in.i172 = getelementptr inbounds nuw i8, ptr %i.gf, i64 %.sroa.3.0.in.v.i
  %.sroa.3.0.i173 = load i64, ptr %.sroa.3.0.in.i172, align 8, !noalias !11977, !noundef !21
  %.sroa.04.0.i174 = load ptr, ptr %.sroa.04.0.in.i171, align 8, !noalias !11977, !nonnull !21, !noundef !21
  %i.gh = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.gi = load ptr, ptr %i.gh, align 8, !invariant.load !21, !nonnull !21
  invoke void %i.gi(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, i32 noundef %4, i32 noundef %5, i32 %6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.04.0.i174, i64 noundef %.sroa.3.0.i173, i8 noundef %7)
          to label %bb.ao unwind label %.loopexit.split-lp

bb.ao:                                            ; preds = %bb.an
  invoke void %.val159(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @400, i64 noundef 1, i8 noundef 6)
          to label %bb.ai unwind label %.loopexit.split-lp

bb.ap:                                            ; preds = %bb.ai
  %i.gj = load i32, ptr %i.i, align 8, !noundef !21
  %i.gk = and i32 %i.gj, 128
  %.not121 = icmp eq i32 %i.gk, 0
  br i1 %.not121, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ar, %bb.ap
  br i1 %.not116, label %bb.as, label %bb.at

bb.ar:                                            ; preds = %bb.ap
  invoke void %.val159(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0)
          to label %bb.aq unwind label %.loopexit.split-lp

bb.as:                                            ; preds = %bb.at, %bb.aq
  %.sroa.069.0 = phi i8 [ 0, %bb.aq ], [ 1, %bb.at ] ; 2 uses
  %.not122 = icmp eq i8 %9, 0
  br i1 %.not122, label %bb.au, label %bb.av

bb.at:                                            ; preds = %bb.aq
  call void @llvm.experimental.noalias.scope.decl(metadata !11978)
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.gm = load i32, ptr %i.gl, align 4, !alias.scope !11978, !noundef !21
  %i.gn = and i32 %i.gm, 2
  %i.go = icmp ne i32 %i.gn, 0
  %i.gp = icmp eq i8 %.sroa.0.1, -7
  %or.cond.i178 = and i1 %i.gp, %i.go
  %i.gq = zext i8 %.sroa.0.1 to i64
  %i.gr = select i1 %or.cond.i178, i64 217, i64 %i.gq
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.gt = load ptr, ptr %i.gs, align 8, !alias.scope !11978, !nonnull !21, !align !25, !noundef !21
  %i.gu = getelementptr inbounds nuw [48 x i8], ptr %i.gt, i64 %i.gr ; 2 uses
  %i.gv = load i32, ptr %i.i, align 8, !alias.scope !11978, !noundef !21
  %i.gw = and i32 %i.gv, 36
  %or.cond6.i179 = icmp eq i32 %i.gw, 0           ; 2 uses
  %.sroa.04.0.in.v.i180 = select i1 %or.cond6.i179, i64 8, i64 32
  %.sroa.04.0.in.i181 = getelementptr inbounds nuw i8, ptr %i.gu, i64 %.sroa.04.0.in.v.i180
  %.sroa.3.0.in.v.i182 = select i1 %or.cond6.i179, i64 16, i64 40
  %.sroa.3.0.in.i183 = getelementptr inbounds nuw i8, ptr %i.gu, i64 %.sroa.3.0.in.v.i182
  %.sroa.3.0.i184 = load i64, ptr %.sroa.3.0.in.i183, align 8, !noalias !11978, !noundef !21
  %.sroa.04.0.i185 = load ptr, ptr %.sroa.04.0.in.i181, align 8, !noalias !11978, !nonnull !21, !noundef !21
  %i.gx = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.gy = load ptr, ptr %i.gx, align 8, !invariant.load !21, !nonnull !21
  invoke void %i.gy(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, i32 noundef %4, i32 noundef %5, i32 %6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.04.0.i185, i64 noundef %.sroa.3.0.i184, i8 noundef %.sroa.0.1)
          to label %bb.as unwind label %.loopexit.split-lp

bb.au:                                            ; preds = %.invoke, %bb.bk, %bb.as
  %.sroa.069.1 = phi i8 [ %.sroa.069.0, %bb.as ], [ 1, %bb.bk ], [ 1, %.invoke ]
  %.not130.a = icmp eq i64 %.val160, -3
  %i.gz = trunc nuw i8 %.sroa.069.1 to i1         ; 2 uses
  br i1 %.not130.a, label %bb.bt, label %bb.bs

bb.av:                                            ; preds = %bb.as
  %i.ha = trunc nuw i8 %.sroa.069.0 to i1
  br i1 %i.ha, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.bb, %bb.ba, %bb.av
  %i.hb = trunc nuw i8 %.sroa.054.1 to i1
  br i1 %i.hb, label %bb.bc, label %bb.bd

bb.ax:                                            ; preds = %bb.av
  %i.hc = load i32, ptr %i.i, align 8, !noundef !21
  %i.hd = and i32 %i.hc, 256
  %.not123 = icmp eq i32 %i.hd, 0
  br i1 %.not123, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.az, %bb.ax
  invoke void %.val159(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @372, i64 noundef 1, i8 noundef 5)
          to label %bb.ba unwind label %.loopexit.split-lp

bb.az:                                            ; preds = %bb.ax
  invoke void %.val159(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0)
          to label %bb.ay unwind label %.loopexit.split-lp

bb.ba:                                            ; preds = %bb.ay
  %i.he = load i32, ptr %i.i, align 8, !noundef !21
  %i.hf = and i32 %i.he, 256
  %.not124 = icmp eq i32 %i.hf, 0
  br i1 %.not124, label %bb.aw, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  invoke void %.val159(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0)
          to label %bb.aw unwind label %.loopexit.split-lp

bb.bc:                                            ; preds = %bb.aw
  %i.hg = load i32, ptr %i.i, align 8, !noundef !21 ; 2 uses
  %i.hh = and i32 %i.hg, 1024
  %.not125 = icmp eq i32 %i.hh, 0
  br i1 %.not125, label %bb.be, label %bb.bl

bb.bd:                                            ; preds = %bb.aw
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.hj = load i32, ptr %i.hi, align 4, !alias.scope !11979, !noundef !21
  %i.hk = and i32 %i.hj, 2
  %i.hl = icmp ne i32 %i.hk, 0
  %i.hm = icmp eq i8 %9, -7
  %or.cond.i186 = and i1 %i.hm, %i.hl
  %i.hn = zext i8 %9 to i64
  %i.ho = select i1 %or.cond.i186, i64 217, i64 %i.hn
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.hq = load ptr, ptr %i.hp, align 8, !alias.scope !11979, !nonnull !21, !align !25, !noundef !21
  %i.hr = getelementptr inbounds nuw [48 x i8], ptr %i.hq, i64 %i.ho
  %i.hs = load i32, ptr %i.i, align 8, !alias.scope !11979, !noundef !21
  br label %.invoke

.invoke:                                          ; preds = %bb.br, %bb.bd
  %.sink257 = phi i32 [ %i.jd, %bb.br ], [ %i.hs, %bb.bd ]
  %.sink254 = phi ptr [ %i.jn, %bb.br ], [ %i.hr, %bb.bd ] ; 2 uses
  %i.ht = and i32 %.sink257, 36
  %or.cond6.i203 = icmp eq i32 %i.ht, 0           ; 2 uses
  %.sroa.04.0.in.v.i204 = select i1 %or.cond6.i203, i64 8, i64 32
  %.sroa.04.0.in.i205 = getelementptr inbounds nuw i8, ptr %.sink254, i64 %.sroa.04.0.in.v.i204
  %.sroa.3.0.in.v.i206 = select i1 %or.cond6.i203, i64 16, i64 40
  %.sroa.3.0.in.i207 = getelementptr inbounds nuw i8, ptr %.sink254, i64 %.sroa.3.0.in.v.i206
  %.sroa.3.0.i208 = load i64, ptr %.sroa.3.0.in.i207, align 8, !noalias !21, !noundef !21
  %.sroa.04.0.i209 = load ptr, ptr %.sroa.04.0.in.i205, align 8, !noalias !21, !nonnull !21, !noundef !21
  %i.hu = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.hv = load ptr, ptr %i.hu, align 8, !invariant.load !21, !nonnull !21
  invoke void %i.hv(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, i32 noundef %4, i32 noundef %5, i32 %6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.04.0.i209, i64 noundef %.sroa.3.0.i208, i8 noundef %9)
          to label %bb.au unwind label %.loopexit.split-lp

bb.be:                                            ; preds = %bb.bc
  call void @llvm.experimental.noalias.scope.decl(metadata !11980)
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.hx = load i32, ptr %i.hw, align 4, !alias.scope !11980, !noundef !21
  %i.hy = and i32 %i.hx, 2
  %i.hz = icmp ne i32 %i.hy, 0
  %i.ia = icmp eq i8 %9, -7
  %or.cond.i194 = and i1 %i.ia, %i.hz
  %i.ib = zext i8 %9 to i64
  %i.ic = select i1 %or.cond.i194, i64 217, i64 %i.ib
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ie = load ptr, ptr %i.id, align 8, !alias.scope !11980, !nonnull !21, !align !25, !noundef !21
  %i.if = getelementptr inbounds nuw [48 x i8], ptr %i.ie, i64 %i.ic ; 2 uses
  %i.ig = and i32 %i.hg, 36
  %or.cond6.i195 = icmp eq i32 %i.ig, 0           ; 2 uses
  %.sroa.04.0.in.v.i196 = select i1 %or.cond6.i195, i64 8, i64 32
  %.sroa.04.0.in.i197 = getelementptr inbounds nuw i8, ptr %i.if, i64 %.sroa.04.0.in.v.i196
  %.sroa.3.0.in.v.i198 = select i1 %or.cond6.i195, i64 16, i64 40
  %.sroa.3.0.in.i199 = getelementptr inbounds nuw i8, ptr %i.if, i64 %.sroa.3.0.in.v.i198
  %.sroa.3.0.i200 = load i64, ptr %.sroa.3.0.in.i199, align 8, !noalias !11980, !noundef !21
  %.sroa.04.0.i201 = load ptr, ptr %.sroa.04.0.in.i197, align 8, !noalias !11980, !nonnull !21, !noundef !21
  %i.ih = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ii = load ptr, ptr %i.ih, align 8, !invariant.load !21, !nonnull !21
  invoke void %i.ii(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, i32 noundef %4, i32 noundef %5, i32 %6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.04.0.i201, i64 noundef %.sroa.3.0.i200, i8 noundef %9)
          to label %bb.bf unwind label %.loopexit.split-lp

bb.bf:                                            ; preds = %bb.be
  %i.ij = load i32, ptr %i.i, align 8, !noundef !21
  %i.ik = and i32 %i.ij, 512
  %.not126 = icmp eq i32 %i.ik, 0
  br i1 %.not126, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bh, %bb.bf
  invoke void %.val159(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @402, i64 noundef 1, i8 noundef 5)
          to label %bb.bi unwind label %.loopexit.split-lp

bb.bh:                                            ; preds = %bb.bf
  invoke void %.val159(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0)
          to label %bb.bg unwind label %.loopexit.split-lp

bb.bi:                                            ; preds = %bb.bg
  %i.il = load i32, ptr %i.i, align 8, !noundef !21
  %i.im = and i32 %i.il, 512
  %.not127 = icmp eq i32 %i.im, 0
  br i1 %.not127, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  invoke void %.val159(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0)
          to label %bb.bk unwind label %.loopexit.split-lp

bb.bk:                                            ; preds = %bb.bi, %bb.bj
  %i.in = zext nneg i32 %10 to i64                ; 2 uses
  %i.io = getelementptr inbounds nuw [16 x i8], ptr @_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter10fmt_consts13SCALE_NUMBERS, i64 %i.in
  %i.ip = load ptr, ptr %i.io, align 8, !nonnull !21, !noundef !21
  %i.iq = shl nuw nsw i64 1, %i.in
  %i.ir = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.is = load ptr, ptr %i.ir, align 8, !invariant.load !21, !nonnull !21
  invoke void %i.is(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, i32 noundef %4, i32 noundef %5, i32 %6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ip, i64 noundef 1, i64 noundef %i.iq, i8 noundef 4, i8 noundef 7)
          to label %bb.au unwind label %.loopexit.split-lp

bb.bl:                                            ; preds = %bb.bc
  %i.it = zext nneg i32 %10 to i64                ; 2 uses
  %i.iu = getelementptr inbounds nuw [16 x i8], ptr @_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter10fmt_consts13SCALE_NUMBERS, i64 %i.it
  %i.iv = load ptr, ptr %i.iu, align 8, !nonnull !21, !noundef !21
  %i.iw = shl nuw nsw i64 1, %i.it
  %i.ix = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.iy = load ptr, ptr %i.ix, align 8, !invariant.load !21, !nonnull !21
  invoke void %i.iy(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, i32 noundef %4, i32 noundef %5, i32 %6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.iv, i64 noundef 1, i64 noundef %i.iw, i8 noundef 4, i8 noundef 7)
          to label %bb.bm unwind label %.loopexit.split-lp

bb.bm:                                            ; preds = %bb.bl
  %i.iz = load i32, ptr %i.i, align 8, !noundef !21
  %i.ja = and i32 %i.iz, 512
  %.not128 = icmp eq i32 %i.ja, 0
  br i1 %.not128, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bo, %bb.bm
  invoke void %.val159(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @402, i64 noundef 1, i8 noundef 5)
          to label %bb.bp unwind label %.loopexit.split-lp

bb.bo:                                            ; preds = %bb.bm
  invoke void %.val159(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0)
          to label %bb.bn unwind label %.loopexit.split-lp

bb.bp:                                            ; preds = %bb.bn
  %i.jb = load i32, ptr %i.i, align 8, !noundef !21 ; 2 uses
  %i.jc = and i32 %i.jb, 512
  %.not129 = icmp eq i32 %i.jc, 0
  br i1 %.not129, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  invoke void %.val159(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0)
          to label %._crit_edge unwind label %.loopexit.split-lp

._crit_edge:                                      ; preds = %bb.bq
  %.pre = load i32, ptr %i.i, align 8, !alias.scope !11981
  br label %bb.br

bb.br:                                            ; preds = %._crit_edge, %bb.bp
  %i.jd = phi i32 [ %.pre, %._crit_edge ], [ %i.jb, %bb.bp ]
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.jf = load i32, ptr %i.je, align 4, !alias.scope !11981, !noundef !21
  %i.jg = and i32 %i.jf, 2
  %i.jh = icmp ne i32 %i.jg, 0
  %i.ji = icmp eq i8 %9, -7
  %or.cond.i202 = and i1 %i.ji, %i.jh
  %i.jj = zext i8 %9 to i64
  %i.jk = select i1 %or.cond.i202, i64 217, i64 %i.jj
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.jm = load ptr, ptr %i.jl, align 8, !alias.scope !11981, !nonnull !21, !align !25, !noundef !21
  %i.jn = getelementptr inbounds nuw [48 x i8], ptr %i.jm, i64 %i.jk
  br label %.invoke

bb.bs:                                            ; preds = %bb.au
  br i1 %i.gz, label %bb.bv, label %bb.bu

bb.bt:                                            ; preds = %bb.au
  br i1 %i.gz, label %bb.ca, label %.critedge

bb.bu:                                            ; preds = %bb.bs
  %i.jo = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.jp = load i32, ptr %i.jo, align 8, !noundef !21
  %i.jq = and i32 %i.jp, 2
  %i.jr = icmp eq i32 %i.jq, 0
  br i1 %i.jr, label %bb.bw, label %.invoke251

bb.bv:                                            ; preds = %bb.bs
  %i.js = load i32, ptr %i.i, align 8, !noundef !21
  %i.jt = and i32 %i.js, 256
  %.not136 = icmp eq i32 %i.jt, 0
  br i1 %.not136, label %.invoke252, label %bb.bx

.invoke251:                                       ; preds = %bb.by, %bb.bu
  %i.ju = phi ptr [ @370, %bb.bu ], [ @371, %bb.by ]
  %i.jv = phi i8 [ 5, %bb.bu ], [ 0, %bb.by ]
  invoke void %.val159(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ju, i64 noundef 1, i8 noundef %i.jv)
          to label %bb.bw unwind label %.loopexit.split-lp
end_hunk_4
