Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nls-21108e55ddbceac4.nls.aaf5fb48c83e0b2-cgu.0?download=true
inline.NumInlined: 33049
inline.NumDeleted: 15304
loop-unroll.NumCompletelyUnrolled: 63
loop-unroll.NumRuntimeUnrolled: 88
loop-unroll.NumUnrolled: 158
begin_hunk_0_@"_ZN173_$LT$nls..background.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nls..background..Diagnostics$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h2c81e2cbac711094E":bb.a
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.254.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx.i.i, i64 7, i1 false)
  %.sroa.782.1..sroa.5.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.782.1.copyload = load i64, ptr %.sroa.782.1..sroa.5.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !37704
  %.sroa.11.1..sroa.5.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.1..sroa.5.0..sroa_idx.i.i.sroa_idx, i64 16, i1 false), !noalias !37704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !37701
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.722, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.456.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.722, i64 16, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.h, ptr %i.l, align 8
  %.sroa.355.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.782.1.copyload, ptr %.sroa.355.0..sroa_idx, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.o

bb.k:                                             ; preds = %.noexc
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.782.8.copyload = load i64, ptr %i.m, align 8, !noalias !37704 ; 2 uses
  %.sroa.11.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.8..sroa_idx, i64 16, i1 false), !noalias !37704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !37701
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.722, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  %.not61 = icmp eq i64 %.sroa.782.8.copyload, -9223372036854775808
  br i1 %.not61, label %bb.m, label %bb.l, !prof !49

bb.l:                                             ; preds = %bb.k
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.722, i64 16, i1 false)
  store i64 %.sroa.512.i.i.sroa.5.7.copyload, ptr %0, align 8
  %.sroa.028.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.512.i.i.sroa.8.7.copyload, ptr %.sroa.028.sroa.4.0..sroa_idx, align 8
  %.sroa.028.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.512.i.i.sroa.10.7.copyload, ptr %.sroa.028.sroa.5.0..sroa_idx, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.782.8.copyload, ptr %.sroa.429.0..sroa_idx, align 8
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h94b6534449950db4E.exit68"

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke fastcc void @_ZN10serde_core2de5Error14invalid_length17hfcb6dd7bf9107f1dE(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.c, i64 noundef 1, ptr noundef nonnull align 1 @605, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @78)
          to label %bb.n unwind label %bb.h

bb.n:                                             ; preds = %bb.m
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  store i64 -9223372036854775808, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.j
  %i.o = icmp eq i64 %.sroa.512.i.i.sroa.5.7.copyload, 0
  br i1 %i.o, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h94b6534449950db4E.exit68", label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.512.i.i.sroa.8.7.copyload) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.512.i.i.sroa.8.7.copyload, i64 noundef %.sroa.512.i.i.sroa.5.7.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !37705
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h94b6534449950db4E.exit68"

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h94b6534449950db4E.exit68": ; preds = %bb.g, %bb.o, %bb.p, %bb.l
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN173_$LT$nls..error..WarningReporter$u20$as$u20$nickel_lang_core..error..Reporter$LT$$LP$nickel_lang_core..error..warning..Warning$C$nickel_lang_parser..files..Files$RP$$GT$$GT$6report17hd33a170a37f7a2d8E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [104 x i8], align 8               ; 5 uses
  %i.c = alloca [104 x i8], align 8               ; 5 uses
  %i.d = alloca [72 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 7 uses
  %i.g = alloca [72 x i8], align 8                ; 6 uses
  %.sroa.6.i.i.i = alloca [64 x i8], align 8      ; 4 uses
  %i.h = alloca [104 x i8], align 8               ; 17 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [64 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.8.i.i = alloca [16 x i8], align 8        ; 5 uses
  %i.l = alloca [40 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %.sroa.5.i.i = alloca [60 x i8], align 4        ; 10 uses
  %.sroa.6.i.i = alloca [60 x i8], align 4        ; 6 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 7 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [40 x i8], align 8                ; 8 uses
  %i.u = alloca [16 x i8], align 8                ; 7 uses
  %i.v = alloca [72 x i8], align 8                ; 5 uses
  %i.w = alloca [64 x i8], align 8                ; 8 uses
  %i.x = alloca [64 x i8], align 8                ; 10 uses
  %i.y = alloca [64 x i8], align 8                ; 9 uses
  %i.z = alloca [72 x i8], align 8                ; 22 uses
  %i.aa = alloca [64 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %.val = load i64, ptr %0, align 8, !range !71, !noundef !44
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.ab, align 8           ; 29 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !37899
  switch i64 %.val, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.am
    i64 2, label %bb.bj
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !37899
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.y, ptr noundef nonnull readonly align 8 dereferenceable(64) %1, i64 64, i1 false), !noalias !37900
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37901)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37902)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !37899
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  store i32 1000000000, ptr %i.ac, align 8, !noalias !37903
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !37903
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.val1, i64 128 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val1, i64 400 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.t, i8 0, i64 40, i1 false), !noalias !37903
  %i.ag = load atomic i64, ptr %i.ae monotonic, align 8, !noalias !37904 ; 2 uses
  %i.ah = load i64, ptr %i.af, align 16, !noalias !37904, !noundef !44 ; 2 uses
  %i.ai = and i64 %i.ah, %i.ag
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %.lr.ph.i.lr.ph.i.i, label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$5write17h68413b747812b856E.exit.i.i"

.lr.ph.i.lr.ph.i.i:                               ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %.val1, i64 392 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val1, i64 408
  %i.am = getelementptr inbounds nuw i8, ptr %.val1, i64 416
  %i.an = getelementptr inbounds nuw i8, ptr %.val1, i64 384
  %.sroa.426.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ao = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4sync4mpmc7context7Context4with7CONTEXT29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h93069091f6f7e02cE") ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ag, %.lr.ph.i.lr.ph.i.i
  %i.aq = phi i64 [ %i.ah, %.lr.ph.i.lr.ph.i.i ], [ %i.dq, %bb.ag ]
  %i.ar = phi i64 [ %i.ag, %.lr.ph.i.lr.ph.i.i ], [ %i.dp, %bb.ag ]
  call void @llvm.experimental.noalias.scope.decl(metadata !37905)
  br label %bb.c

bb.c:                                             ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i, %.lr.ph.i.i.i
  %i.as = phi i64 [ %i.aq, %.lr.ph.i.i.i ], [ %i.by, %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i ]
  %.sroa.01.033.i.i.i = phi i64 [ %i.ar, %.lr.ph.i.i.i ], [ %i.bx, %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i ] ; 8 uses
  %.sroa.0.02832.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %.sroa.0.1.i.i.i, %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i ] ; 14 uses
  %i.at = add i64 %i.as, -1
  %i.au = and i64 %i.at, %.sroa.01.033.i.i.i      ; 3 uses
  %i.av = load i64, ptr %i.ak, align 8, !noalias !37906, !noundef !44
  %i.aw = sub i64 0, %i.av
  %i.ax = and i64 %.sroa.01.033.i.i.i, %i.aw
  %i.ay = load ptr, ptr %i.al, align 8, !noalias !37906, !nonnull !44, !align !50, !noundef !44
  %i.az = load i64, ptr %i.am, align 16, !noalias !37906, !noundef !44
  %i.ba = icmp ult i64 %i.au, %i.az
  call void @llvm.assume(i1 %i.ba)
  %i.bb = getelementptr inbounds nuw [72 x i8], ptr %i.ay, i64 %i.au ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 64
  %i.bd = load atomic i64, ptr %i.bc acquire, align 8, !noalias !37906 ; 2 uses
  %i.be = icmp eq i64 %.sroa.01.033.i.i.i, %i.bd
  br i1 %i.be, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bf = load i64, ptr %i.ak, align 8, !noalias !37906, !noundef !44
  %i.bg = add i64 %i.bf, %i.bd
  %i.bh = add i64 %.sroa.01.033.i.i.i, 1
  %i.bi = icmp eq i64 %i.bg, %i.bh
  br i1 %i.bi, label %bb.i, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.bj = add nuw i64 %i.au, 1
  %i.bk = load i64, ptr %i.an, align 128, !noalias !37906, !noundef !44
  %i.bl = icmp ult i64 %i.bj, %i.bk
  br i1 %i.bl, label %bb.l, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.bm = icmp ult i32 %.sroa.0.02832.i.i.i, 7
  br i1 %i.bm, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
          to label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i unwind label %.body.thread34.loopexit.i.i, !noalias !37903

bb.h:                                             ; preds = %bb.f
  %.not.i.i.i.i = icmp eq i32 %.sroa.0.02832.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.h
  %i.bn = mul nuw nsw i32 %.sroa.0.02832.i.i.i, %.sroa.0.02832.i.i.i ; 2 uses
  %xtraiter204 = and i32 %i.bn, 7                 ; 3 uses
  %i.bo = icmp ult i32 %.sroa.0.02832.i.i.i, 3
  br i1 %i.bo, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter208 = and i32 %i.bn, 56
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %niter209 = phi i32 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter209.next.7, %.lr.ph.i.i.i.i ]
  call void @llvm.x86.sse2.pause() #66, !noalias !37906
  call void @llvm.x86.sse2.pause() #66, !noalias !37906
  call void @llvm.x86.sse2.pause() #66, !noalias !37906
  call void @llvm.x86.sse2.pause() #66, !noalias !37906
  call void @llvm.x86.sse2.pause() #66, !noalias !37906
  call void @llvm.x86.sse2.pause() #66, !noalias !37906
  call void @llvm.x86.sse2.pause() #66, !noalias !37906
  call void @llvm.x86.sse2.pause() #66, !noalias !37906
  %niter209.next.7 = add i32 %niter209, 8         ; 2 uses
  %niter209.ncmp.7 = icmp eq i32 %niter209.next.7, %unroll_iter208
  br i1 %niter209.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod206.not = icmp eq i32 %xtraiter204, 0
  br i1 %lcmp.mod206.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %lcmp.mod207 = icmp ne i32 %xtraiter204, 0
  call void @llvm.assume(i1 %lcmp.mod207)
  br label %.lr.ph.i.i.i.i.epil

.lr.ph.i.i.i.i.epil:                              ; preds = %.lr.ph.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader
  %epil.iter205 = phi i32 [ 0, %.lr.ph.i.i.i.i.epil.preheader ], [ %epil.iter205.next, %.lr.ph.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause() #66, !noalias !37906
  %epil.iter205.next = add i32 %epil.iter205, 1   ; 2 uses
  %epil.iter205.cmp.not = icmp eq i32 %epil.iter205.next, %xtraiter204
  br i1 %epil.iter205.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i, label %.lr.ph.i.i.i.i.epil, !llvm.loop !37715

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.epil, %bb.h, %bb.g
  %i.bp = add i32 %.sroa.0.02832.i.i.i, 1
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i

bb.i:                                             ; preds = %bb.d
  fence seq_cst
  %i.bq = load atomic i64, ptr %.val1 monotonic, align 16, !noalias !37906
  %i.br = load i64, ptr %i.ak, align 8, !noalias !37906, !noundef !44
  %i.bs = add i64 %i.br, %i.bq
  %i.bt = icmp eq i64 %i.bs, %.sroa.01.033.i.i.i
  br i1 %i.bt, label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$10start_send17h9fa72d73d4bc993aE.exit.i.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.0.0.i.i.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.02832.i.i.i, i32 6) ; 2 uses
  %i.bu = mul nuw nsw i32 %.sroa.0.0.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i ; 2 uses
  %.not.i11.i.i.i = icmp eq i32 %.sroa.0.02832.i.i.i, 0
  br i1 %.not.i11.i.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i, label %.lr.ph.i12.i.i.i.preheader

.lr.ph.i12.i.i.i.preheader:                       ; preds = %bb.j
  %xtraiter210 = and i32 %i.bu, 5                 ; 3 uses
  %i.bv = icmp ult i32 %.sroa.0.02832.i.i.i, 3
  br i1 %i.bv, label %.lr.ph.i12.i.i.i.epil.preheader, label %.lr.ph.i12.i.i.i.preheader.new

.lr.ph.i12.i.i.i.preheader.new:                   ; preds = %.lr.ph.i12.i.i.i.preheader
  %unroll_iter214 = and i32 %i.bu, 56
  br label %.lr.ph.i12.i.i.i

._crit_edge.loopexit.i.i.i.i.unr-lcssa:           ; preds = %.lr.ph.i12.i.i.i
  %lcmp.mod212.not = icmp eq i32 %xtraiter210, 0
  br i1 %lcmp.mod212.not, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i12.i.i.i.epil.preheader

.lr.ph.i12.i.i.i.epil.preheader:                  ; preds = %._crit_edge.loopexit.i.i.i.i.unr-lcssa, %.lr.ph.i12.i.i.i.preheader
  %lcmp.mod213 = icmp ne i32 %xtraiter210, 0
  call void @llvm.assume(i1 %lcmp.mod213)
  br label %.lr.ph.i12.i.i.i.epil

.lr.ph.i12.i.i.i.epil:                            ; preds = %.lr.ph.i12.i.i.i.epil, %.lr.ph.i12.i.i.i.epil.preheader
  %epil.iter211 = phi i32 [ 0, %.lr.ph.i12.i.i.i.epil.preheader ], [ %epil.iter211.next, %.lr.ph.i12.i.i.i.epil ]
  call void @llvm.x86.sse2.pause() #66, !noalias !37906
  %epil.iter211.next = add i32 %epil.iter211, 1   ; 2 uses
  %epil.iter211.cmp.not = icmp eq i32 %epil.iter211.next, %xtraiter210
  br i1 %epil.iter211.cmp.not, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i12.i.i.i.epil, !llvm.loop !37716

._crit_edge.loopexit.i.i.i.i:                     ; preds = %.lr.ph.i12.i.i.i.epil, %._crit_edge.loopexit.i.i.i.i.unr-lcssa
  %i.bw = add i32 %.sroa.0.02832.i.i.i, 1
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i

.lr.ph.i12.i.i.i:                                 ; preds = %.lr.ph.i12.i.i.i, %.lr.ph.i12.i.i.i.preheader.new
  %niter215 = phi i32 [ 0, %.lr.ph.i12.i.i.i.preheader.new ], [ %niter215.next.7, %.lr.ph.i12.i.i.i ]
  call void @llvm.x86.sse2.pause() #66, !noalias !37906
  call void @llvm.x86.sse2.pause() #66, !noalias !37906
  call void @llvm.x86.sse2.pause() #66, !noalias !37906
  call void @llvm.x86.sse2.pause() #66, !noalias !37906
  call void @llvm.x86.sse2.pause() #66, !noalias !37906
  call void @llvm.x86.sse2.pause() #66, !noalias !37906
  call void @llvm.x86.sse2.pause() #66, !noalias !37906
  call void @llvm.x86.sse2.pause() #66, !noalias !37906
  %niter215.next.7 = add i32 %niter215, 8         ; 2 uses
  %niter215.ncmp.7 = icmp eq i32 %niter215.next.7, %unroll_iter214
  br i1 %niter215.ncmp.7, label %._crit_edge.loopexit.i.i.i.i.unr-lcssa, label %.lr.ph.i12.i.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i: ; preds = %._crit_edge.loopexit.i20.i.i.i, %bb.n, %._crit_edge.loopexit.i.i.i.i, %bb.j, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i
  %.sroa.0.1.i.i.i = phi i32 [ %i.bp, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i ], [ 1, %bb.n ], [ %i.ch, %._crit_edge.loopexit.i20.i.i.i ], [ %i.bw, %._crit_edge.loopexit.i.i.i.i ], [ 1, %bb.j ]
  %i.bx = load atomic i64, ptr %i.ae monotonic, align 16, !noalias !37906 ; 2 uses
  %i.by = load i64, ptr %i.af, align 16, !noalias !37906, !noundef !44 ; 2 uses
  %i.bz = and i64 %i.by, %i.bx
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %bb.c, label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$5write17h68413b747812b856E.exit.i.i"

bb.k:                                             ; preds = %bb.e
  %i.cb = load i64, ptr %i.ak, align 8, !noalias !37906, !noundef !44
  %i.cc = add i64 %i.cb, %i.ax
  br label %bb.m

bb.l:                                             ; preds = %bb.e
  %i.cd = add i64 %.sroa.01.033.i.i.i, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.010.0.i.i.i = phi i64 [ %i.cd, %bb.l ], [ %i.cc, %bb.k ]
  %i.ce = cmpxchg weak ptr %i.ae, i64 %.sroa.01.033.i.i.i, i64 %.sroa.010.0.i.i.i seq_cst monotonic, align 8, !noalias !37906
  %.sroa.18.0.in.i.i.i.i = extractvalue { i64, i1 } %i.ce, 1
  br i1 %.sroa.18.0.in.i.i.i.i, label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$5write17h68413b747812b856E.exit.thread.i.i", label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.i.i15.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.02832.i.i.i, i32 6) ; 2 uses
  %i.cf = mul nuw nsw i32 %.sroa.0.0.i.i15.i.i.i, %.sroa.0.0.i.i15.i.i.i ; 2 uses
  %.not.i16.i.i.i = icmp eq i32 %.sroa.0.02832.i.i.i, 0
  br i1 %.not.i16.i.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i, label %.lr.ph.i17.i.i.i.preheader

.lr.ph.i17.i.i.i.preheader:                       ; preds = %bb.n
  %xtraiter216 = and i32 %i.cf, 5                 ; 3 uses
  %i.cg = icmp ult i32 %.sroa.0.02832.i.i.i, 3
  br i1 %i.cg, label %.lr.ph.i17.i.i.i.epil.preheader, label %.lr.ph.i17.i.i.i.preheader.new

.lr.ph.i17.i.i.i.preheader.new:                   ; preds = %.lr.ph.i17.i.i.i.preheader
  %unroll_iter220 = and i32 %i.cf, 56
  br label %.lr.ph.i17.i.i.i

._crit_edge.loopexit.i20.i.i.i.unr-lcssa:         ; preds = %.lr.ph.i17.i.i.i
  %lcmp.mod218.not = icmp eq i32 %xtraiter216, 0
  br i1 %lcmp.mod218.not, label %._crit_edge.loopexit.i20.i.i.i, label %.lr.ph.i17.i.i.i.epil.preheader

.lr.ph.i17.i.i.i.epil.preheader:                  ; preds = %._crit_edge.loopexit.i20.i.i.i.unr-lcssa, %.lr.ph.i17.i.i.i.preheader
  %lcmp.mod219 = icmp ne i32 %xtraiter216, 0
  call void @llvm.assume(i1 %lcmp.mod219)
  br label %.lr.ph.i17.i.i.i.epil

.lr.ph.i17.i.i.i.epil:                            ; preds = %.lr.ph.i17.i.i.i.epil, %.lr.ph.i17.i.i.i.epil.preheader
  %epil.iter217 = phi i32 [ 0, %.lr.ph.i17.i.i.i.epil.preheader ], [ %epil.iter217.next, %.lr.ph.i17.i.i.i.epil ]
  call void @llvm.x86.sse2.pause() #66, !noalias !37906
  %epil.iter217.next = add i32 %epil.iter217, 1   ; 2 uses
  %epil.iter217.cmp.not = icmp eq i32 %epil.iter217.next, %xtraiter216
  br i1 %epil.iter217.cmp.not, label %._crit_edge.loopexit.i20.i.i.i, label %.lr.ph.i17.i.i.i.epil, !llvm.loop !37717

._crit_edge.loopexit.i20.i.i.i:                   ; preds = %.lr.ph.i17.i.i.i.epil, %._crit_edge.loopexit.i20.i.i.i.unr-lcssa
  %i.ch = add i32 %.sroa.0.02832.i.i.i, 1
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i

.lr.ph.i17.i.i.i:                                 ; preds = %.lr.ph.i17.i.i.i, %.lr.ph.i17.i.i.i.preheader.new
  %niter221 = phi i32 [ 0, %.lr.ph.i17.i.i.i.preheader.new ], [ %niter221.next.7, %.lr.ph.i17.i.i.i ]
  call void @llvm.x86.sse2.pause() #66, !noalias !37906
  call void @llvm.x86.sse2.pause() #66, !noalias !37906
  call void @llvm.x86.sse2.pause() #66, !noalias !37906
  call void @llvm.x86.sse2.pause() #66, !noalias !37906
  call void @llvm.x86.sse2.pause() #66, !noalias !37906
  call void @llvm.x86.sse2.pause() #66, !noalias !37906
  call void @llvm.x86.sse2.pause() #66, !noalias !37906
  call void @llvm.x86.sse2.pause() #66, !noalias !37906
  %niter221.next.7 = add i32 %niter221, 8         ; 2 uses
  %niter221.ncmp.7 = icmp eq i32 %niter221.next.7, %unroll_iter220
  br i1 %niter221.ncmp.7, label %._crit_edge.loopexit.i20.i.i.i.unr-lcssa, label %.lr.ph.i17.i.i.i

.body.thread34.loopexit.i.i:                      ; preds = %bb.g
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i

.body.thread34.loopexit.split-lp.i.i:             ; preds = %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17hb4fe0db60e1e7952E.exit.i.i.i", %bb.aa, %bb.v, %bb.q, %_ZN4core3ops8function6FnOnce9call_once17h2215d5cee012e9a4E.exit.i.i.i.i, %bb.o
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i

"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$10start_send17h9fa72d73d4bc993aE.exit.i.i": ; preds = %bb.i
  %i.ci = load i32, ptr %i.ac, align 8, !range !86, !noalias !37903, !noundef !44 ; 2 uses
  %.not.i.i = icmp eq i32 %i.ci, 1000000000
  br i1 %.not.i.i, label %bb.p, label %bb.o

"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$5write17h68413b747812b856E.exit.thread.i.i": ; preds = %bb.m
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bb, i64 64
  store ptr %i.bb, ptr %i.t, align 8, !alias.scope !37905, !noalias !37903
  %i.ck = add i64 %.sroa.01.033.i.i.i, 1          ; 2 uses
  store i64 %i.ck, ptr %i.ad, align 8, !alias.scope !37905, !noalias !37903
  %.sroa.023.0.copyload39.i.i = load i32, ptr %i.y, align 8, !alias.scope !37902, !noalias !37907
  %.sroa.5.0..sroa_idx40.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i32 %.sroa.023.0.copyload39.i.i, ptr %i.bb, align 8, !noalias !37908
  %.sroa.5.0..val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.5.0..val.sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.5.0..sroa_idx40.i.i, i64 60, i1 false), !noalias !37907
  store atomic i64 %i.ck, ptr %i.cj release, align 8, !noalias !37909
  %i.cl = getelementptr inbounds nuw i8, ptr %.val1, i64 320
  call fastcc void @_ZN3std4sync4mpmc5waker9SyncWaker6notify17hb84be3c8ed2df7a5E(ptr noundef nonnull align 8 %i.cl), !noalias !37903
  br label %bb.ai
end_hunk_0
begin_hunk_1_@"_ZN173_$LT$nls..error..WarningReporter$u20$as$u20$nickel_lang_core..error..Reporter$LT$$LP$nickel_lang_core..error..warning..Warning$C$nickel_lang_parser..files..Files$RP$$GT$$GT$6report17hd33a170a37f7a2d8E":bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !37910
  store ptr %i.t, ptr %i.o, align 8, !noalias !37910
  store ptr %.val1, ptr %.sroa.59.0..sroa_idx10.i.i.i.i.i, align 8, !noalias !37903
  store ptr %i.u, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i.i, align 8, !noalias !37903
  invoke fastcc void @"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4send28_$u7b$$u7b$closure$u7d$$u7d$17h9405abdd7bf19db9E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.o, ptr nonnull %i.cs)
          to label %bb.y unwind label %bb.ab, !noalias !37910

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !37910
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !37910
  %i.de = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i.i, align 8, !noalias !37910, !noundef !44 ; 3 uses
  store ptr %i.de, ptr %i.n, align 8, !noalias !37910
  store ptr %i.cs, ptr %.sroa.0.0.i.i.i2.i.i.i.i, align 8, !noalias !37910
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17hf68a8caf5616febfE.exit.i.i.i.i.i", label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dg = atomicrmw sub ptr %i.de, i64 1 release, align 8, !noalias !37922
  %i.dh = icmp eq i64 %i.dg, 1
  br i1 %i.dh, label %bb.aa, label %"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17hf68a8caf5616febfE.exit.i.i.i.i.i"

bb.aa:                                            ; preds = %bb.z
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17he4d92f17da45dc34E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17hf68a8caf5616febfE.exit.i.i.i.i.i" unwind label %.body.thread34.loopexit.split-lp.i.i, !noalias !37903

"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17hf68a8caf5616febfE.exit.i.i.i.i.i": ; preds = %bb.aa, %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !37910
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !37910
  br label %bb.ag

bb.ab:                                            ; preds = %bb.x
  %i.di = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dj = atomicrmw sub ptr %i.cs, i64 1 release, align 8, !noalias !37923
  %i.dk = icmp eq i64 %i.dj, 1
  br i1 %i.dk, label %bb.ac, label %.body.thread.i.i

bb.ac:                                            ; preds = %bb.ab
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17he4d92f17da45dc34E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %.body.thread.i.i unwind label %bb.w, !noalias !37910

"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17hb4fe0db60e1e7952E.exit.i.i.i": ; preds = %.noexc14.i.i
  invoke fastcc void @"_ZN3std4sync4mpmc7context7Context4with28_$u7b$$u7b$closure$u7d$$u7d$17h57f608c58cd220d9E"(ptr nonnull %i.s)
          to label %bb.ag unwind label %.body.thread34.loopexit.split-lp.i.i, !noalias !37903

bb.ad:                                            ; preds = %bb.o
  %i.dl = extractvalue { i64, i32 } %i.cn, 0      ; 2 uses
  %i.dm = icmp eq i64 %i.dl, %i.cm
  br i1 %i.dm, label %.split.i.i, label %bb.ae

.split.i.i:                                       ; preds = %bb.ad
  %i.dn = extractvalue { i64, i32 } %i.cn, 1      ; 2 uses
  %i.do = icmp ult i32 %i.dn, 1000000000
  call void @llvm.assume(i1 %i.do)
  %.not48.i.i = icmp samesign ult i32 %i.dn, %i.ci
  br i1 %.not48.i.i, label %bb.p, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %.not47.i.i = icmp slt i64 %i.dl, %i.cm
  br i1 %.not47.i.i, label %bb.p, label %bb.af

bb.af:                                            ; preds = %bb.ae, %.split.i.i
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.y, i64 64, i1 false), !alias.scope !37924, !noalias !37899
  store i64 0, ptr %i.z, align 8, !alias.scope !37901, !noalias !37925
  br label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4send17h4cb9d397f496f880E.exit.i"

bb.ag:                                            ; preds = %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17hb4fe0db60e1e7952E.exit.i.i.i", %"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17hf68a8caf5616febfE.exit.i.i.i.i.i", %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h606cb8fbcc5cc031E.exit19.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !37910
  %i.dp = load atomic i64, ptr %i.ae monotonic, align 16, !noalias !37926 ; 2 uses
  %i.dq = load i64, ptr %i.af, align 16, !noalias !37926, !noundef !44 ; 2 uses
  %i.dr = and i64 %i.dq, %i.dp
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %.lr.ph.i.i.i, label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$5write17h68413b747812b856E.exit.i.i"

"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$5write17h68413b747812b856E.exit.i.i": ; preds = %bb.ag, %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i, %bb.b
  %.sroa.023.0.copyload.i.i = load i32, ptr %i.y, align 8, !alias.scope !37902, !noalias !37907 ; 2 uses
  %.not11.i.i = icmp eq i32 %.sroa.023.0.copyload.i.i, 3
  br i1 %.not11.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$5write17h68413b747812b856E.exit.i.i"
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %.sroa.47.sroa.4.0..sroa.47.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.47.sroa.4.0..sroa.47.0..sroa_idx.sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.5.0..sroa_idx.i.i, i64 60, i1 false), !alias.scope !37924, !noalias !37899
  store i64 1, ptr %i.z, align 8, !alias.scope !37901, !noalias !37925
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i32 %.sroa.023.0.copyload.i.i, ptr %.sroa.47.0..sroa_idx.i.i, align 8, !alias.scope !37901, !noalias !37925
  br label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4send17h4cb9d397f496f880E.exit.i"

bb.ai:                                            ; preds = %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$5write17h68413b747812b856E.exit.i.i", %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$5write17h68413b747812b856E.exit.thread.i.i"
  store i64 2, ptr %i.z, align 8, !alias.scope !37901, !noalias !37925
  br label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4send17h4cb9d397f496f880E.exit.i"

common.resume.i:                                  ; preds = %bb.dt, %bb.do, %bb.dn, %.body.thread.i16.i, %.body.i.i.i, %.body.i.i, %bb.bh, %bb.bg, %.body.thread.i9.i, %bb.ak, %bb.aj, %.body.thread.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %eh.lpad-body33.i.i, %.body.thread.i.i ], [ %eh.lpad-body22.i.i, %.body.thread.i9.i ], [ %eh.lpad-body33.i.i, %bb.ak ], [ %eh.lpad-body33.i.i, %bb.aj ], [ %eh.lpad-body22.i.i, %bb.bh ], [ %eh.lpad-body22.i.i, %bb.bg ], [ %.pn.pn68.i.i, %bb.dn ], [ %.pn.pn68.i.i, %.body.thread.i16.i ], [ %.pn.pn68.i.i, %bb.do ], [ %i.iq, %.body.i.i ], [ %i.ks, %bb.dt ]
  resume { ptr, i32 } %common.resume.op.i

.body.thread.i.i:                                 ; preds = %bb.ac, %bb.ab, %bb.t, %bb.s, %.body.thread34.loopexit.split-lp.i.i, %.body.thread34.loopexit.i.i
  %eh.lpad-body33.i.i = phi { ptr, i32 } [ %i.di, %bb.ac ], [ %i.cu, %bb.s ], [ %i.di, %bb.ab ], [ %i.cu, %bb.t ], [ %lpad.loopexit.i.i, %.body.thread34.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.body.thread34.loopexit.split-lp.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !37927)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.y, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !37928)
  call void @llvm.experimental.noalias.scope.decl(metadata !37929)
  call void @llvm.experimental.noalias.scope.decl(metadata !37930)
  %i.du = load ptr, ptr %i.dt, align 8, !alias.scope !37931, !noalias !37907, !noundef !44 ; 3 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %common.resume.i, label %bb.aj

bb.aj:                                            ; preds = %.body.thread.i.i
  %i.dw = load i64, ptr %i.du, align 8, !noalias !37932, !noundef !44
  %i.dx = add i64 %i.dw, -1                       ; 2 uses
  store i64 %i.dx, ptr %i.du, align 8, !noalias !37932
  %i.dy = icmp eq i64 %i.dx, 0
  br i1 %i.dy, label %bb.ak, label %common.resume.i

bb.ak:                                            ; preds = %bb.aj
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17ha3d18f83ba1e1015E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.dt)
          to label %common.resume.i unwind label %bb.al, !noalias !37907

bb.al:                                            ; preds = %bb.ak
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !37907
  unreachable

"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4send17h4cb9d397f496f880E.exit.i": ; preds = %bb.ai, %bb.ah, %bb.af
  %i.ea = phi i64 [ 0, %bb.af ], [ 1, %bb.ah ], [ 2, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !37903
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !37899
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !37899
  br label %bb.dp

bb.am:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !37899
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(64) %1, i64 64, i1 false), !noalias !37900
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37933)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37934)
  %i.eb = getelementptr inbounds nuw i8, ptr %.val1, i64 128 ; 5 uses
  %i.ec = load atomic i64, ptr %i.eb acquire, align 8, !noalias !37935 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.val1, i64 136 ; 5 uses
  %i.ee = load atomic ptr, ptr %i.ed acquire, align 8, !noalias !37935
  %i.ef = and i64 %i.ec, 1
  %i.eg = icmp eq i64 %i.ef, 0
  br i1 %i.eg, label %.lr.ph.lr.ph.i.i.i, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h665953ef85821356E.exit.thread.i.i"

"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h665953ef85821356E.exit.thread.i.i": ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %.sroa.012.0.copyload29.i.i = load i32, ptr %i.x, align 8, !alias.scope !37934, !noalias !37936
  %.sroa.5.0..sroa_idx30.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.5.i.i, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.5.0..sroa_idx30.i.i, i64 60, i1 false), !noalias !37936
  br label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$5write17ha1bf046413d78166E.exit.i.i"

.lr.ph.lr.ph.i.i.i:                               ; preds = %bb.am
  %i.eh = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  br label %.lr.ph.i.i4.i

.lr.ph.i.i4.i:                                    ; preds = %.outer.backedge.i.i.i, %.lr.ph.lr.ph.i.i.i
  %.sroa.01.0.ph89.i.i.i = phi i64 [ %i.ec, %.lr.ph.lr.ph.i.i.i ], [ %i.fg, %.outer.backedge.i.i.i ] ; 2 uses
  %.sroa.05.0.ph88.i.i.i = phi ptr [ %i.ee, %.lr.ph.lr.ph.i.i.i ], [ %i.fh, %.outer.backedge.i.i.i ]
  %.sroa.0.0.ph87.i.i.i = phi i32 [ 0, %.lr.ph.lr.ph.i.i.i ], [ %.sroa.0.0.ph.be.i.i.i, %.outer.backedge.i.i.i ] ; 2 uses
  %.sroa.043.0.ph86.i.i.i = phi ptr [ null, %.lr.ph.lr.ph.i.i.i ], [ %.sroa.043.0.ph.be.i.i.i, %.outer.backedge.i.i.i ] ; 4 uses
  %i.ei = lshr exact i64 %.sroa.01.0.ph89.i.i.i, 1
  %i.ej = and i64 %i.ei, 31                       ; 2 uses
  %i.ek = icmp eq i64 %i.ej, 31
  br i1 %i.ek, label %.lr.ph.i.i, label %._crit_edge.i.i

bb.an:                                            ; preds = %.loopexit.i.i.i
  %i.el = add i32 %.sroa.0.082.i64.i.i, 1         ; 2 uses
  %i.em = lshr exact i64 %i.fk, 1
  %i.en = and i64 %i.em, 31                       ; 2 uses
  %i.eo = icmp eq i64 %i.en, 31
  br i1 %i.eo, label %.lr.ph.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.an, %.lr.ph.i.i4.i
  %.sroa.01.084.i.lcssa.i.i = phi i64 [ %.sroa.01.0.ph89.i.i.i, %.lr.ph.i.i4.i ], [ %i.fk, %bb.an ] ; 2 uses
  %.sroa.05.083.i.lcssa.i.i = phi ptr [ %.sroa.05.0.ph88.i.i.i, %.lr.ph.i.i4.i ], [ %i.fl, %bb.an ] ; 2 uses
  %.sroa.0.082.i.lcssa.i.i = phi i32 [ %.sroa.0.0.ph87.i.i.i, %.lr.ph.i.i4.i ], [ %i.el, %bb.an ] ; 6 uses
  %.lcssa.i.i = phi i64 [ %i.ej, %.lr.ph.i.i4.i ], [ %i.en, %bb.an ] ; 2 uses
  %.not64.i.i.i = icmp eq i64 %.lcssa.i.i, 30     ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.043.0.ph86.i.i.i, null
  %or.cond.i.i.i = select i1 %.not64.i.i.i, i1 %.not.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %bb.aq, label %"_ZN4core3ptr194drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$std..sync..mpmc..list..Block$LT$$LP$nickel_lang_core..error..warning..Warning$C$nickel_lang_parser..files..Files$RP$$GT$$GT$$GT$$GT$17h61623b32ec72a8fcE.exit.i.i.i"

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i4.i, %bb.an
  %.sroa.0.082.i64.i.i = phi i32 [ %i.el, %bb.an ], [ %.sroa.0.0.ph87.i.i.i, %.lr.ph.i.i4.i ] ; 6 uses
  %i.ep = icmp ult i32 %.sroa.0.082.i64.i.i, 7
  br i1 %i.ep, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.i.i
  invoke void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
          to label %.loopexit.i.i.i unwind label %.loopexit65.i.i.i, !noalias !37935

bb.ap:                                            ; preds = %.lr.ph.i.i
  %.not.i.i.i11.i = icmp eq i32 %.sroa.0.082.i64.i.i, 0
  br i1 %.not.i.i.i11.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.i12.i.preheader

.lr.ph.i.i.i12.i.preheader:                       ; preds = %bb.ap
  %i.eq = mul nuw nsw i32 %.sroa.0.082.i64.i.i, %.sroa.0.082.i64.i.i ; 2 uses
  %xtraiter = and i32 %i.eq, 7                    ; 3 uses
  %i.er = icmp ult i32 %.sroa.0.082.i64.i.i, 3
  br i1 %i.er, label %.lr.ph.i.i.i12.i.epil.preheader, label %.lr.ph.i.i.i12.i.preheader.new

.lr.ph.i.i.i12.i.preheader.new:                   ; preds = %.lr.ph.i.i.i12.i.preheader
  %unroll_iter = and i32 %i.eq, 56
  br label %.lr.ph.i.i.i12.i

.lr.ph.i.i.i12.i:                                 ; preds = %.lr.ph.i.i.i12.i, %.lr.ph.i.i.i12.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i12.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i12.i ]
  tail call void @llvm.x86.sse2.pause() #66, !noalias !37935
  tail call void @llvm.x86.sse2.pause() #66, !noalias !37935
  tail call void @llvm.x86.sse2.pause() #66, !noalias !37935
  tail call void @llvm.x86.sse2.pause() #66, !noalias !37935
  tail call void @llvm.x86.sse2.pause() #66, !noalias !37935
  tail call void @llvm.x86.sse2.pause() #66, !noalias !37935
  tail call void @llvm.x86.sse2.pause() #66, !noalias !37935
  tail call void @llvm.x86.sse2.pause() #66, !noalias !37935
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i12.i

"_ZN4core3ptr194drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$std..sync..mpmc..list..Block$LT$$LP$nickel_lang_core..error..warning..Warning$C$nickel_lang_parser..files..Files$RP$$GT$$GT$$GT$$GT$17h61623b32ec72a8fcE.exit.i.i.i": ; preds = %bb.aq, %._crit_edge.i.i
  %.sroa.043.1.i.i.i = phi ptr [ %.sroa.043.0.ph86.i.i.i, %._crit_edge.i.i ], [ %i.et, %bb.aq ] ; 9 uses
  %i.es = icmp eq ptr %.sroa.05.083.i.lcssa.i.i, null
  br i1 %i.es, label %bb.ar, label %bb.ax

bb.aq:                                            ; preds = %._crit_edge.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !37935
  %i.et = tail call noalias noundef align 8 dereferenceable_or_null(2240) ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef 2240, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !37935 ; 2 uses
  %i.eu = icmp eq ptr %i.et, null
  br i1 %i.eu, label %.noexc24.i.i.i, label %"_ZN4core3ptr194drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$std..sync..mpmc..list..Block$LT$$LP$nickel_lang_core..error..warning..Warning$C$nickel_lang_parser..files..Files$RP$$GT$$GT$$GT$$GT$17h61623b32ec72a8fcE.exit.i.i.i", !prof !49

.noexc24.i.i.i:                                   ; preds = %bb.aq
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 2240) #75
          to label %.noexc.i.i unwind label %.body.thread24.i.i, !noalias !37937

.noexc.i.i:                                       ; preds = %.noexc24.i.i.i
  unreachable

bb.ar:                                            ; preds = %"_ZN4core3ptr194drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$std..sync..mpmc..list..Block$LT$$LP$nickel_lang_core..error..warning..Warning$C$nickel_lang_parser..files..Files$RP$$GT$$GT$$GT$$GT$17h61623b32ec72a8fcE.exit.i.i.i"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !37935
  %i.ev = tail call noalias noundef align 8 dereferenceable_or_null(2240) ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef 2240, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !37935 ; 6 uses
  %i.ew = icmp eq ptr %i.ev, null
  br i1 %i.ew, label %bb.as, label %bb.at, !prof !49

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 2240) #75
          to label %.noexc25.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !37935

.noexc25.i.i.i:                                   ; preds = %bb.as
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.ex = cmpxchg ptr %i.ed, ptr null, ptr %i.ev release monotonic, align 8, !noalias !37935
  %i.ey = extractvalue { ptr, i1 } %i.ex, 1
  br i1 %i.ey, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store atomic ptr %i.ev, ptr %i.eh release, align 8, !noalias !37935
  br label %bb.ax

bb.av:                                            ; preds = %bb.at
  %i.ez = icmp eq ptr %.sroa.043.1.i.i.i, null
  br i1 %i.ez, label %.outer.backedge.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.043.1.i.i.i, i64 noundef 2240, i64 noundef 8) #66, !noalias !37935
  br label %.outer.backedge.i.i.i

bb.ax:                                            ; preds = %bb.au, %"_ZN4core3ptr194drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$std..sync..mpmc..list..Block$LT$$LP$nickel_lang_core..error..warning..Warning$C$nickel_lang_parser..files..Files$RP$$GT$$GT$$GT$$GT$17h61623b32ec72a8fcE.exit.i.i.i"
  %.sroa.05.1.i.i.i = phi ptr [ %.sroa.05.083.i.lcssa.i.i, %"_ZN4core3ptr194drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$std..sync..mpmc..list..Block$LT$$LP$nickel_lang_core..error..warning..Warning$C$nickel_lang_parser..files..Files$RP$$GT$$GT$$GT$$GT$17h61623b32ec72a8fcE.exit.i.i.i" ], [ %i.ev, %bb.au ] ; 3 uses
  %i.fa = add i64 %.sroa.01.084.i.lcssa.i.i, 2
  %i.fb = cmpxchg weak ptr %i.eb, i64 %.sroa.01.084.i.lcssa.i.i, i64 %i.fa seq_cst acquire, align 8, !noalias !37935
  %.sroa.18.0.in.i.i.i5.i = extractvalue { i64, i1 } %i.fb, 1
  br i1 %.sroa.18.0.in.i.i.i5.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %.sroa.0.0.i.i.i.i6.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.082.i.lcssa.i.i, i32 6) ; 2 uses
  %i.fc = mul nuw nsw i32 %.sroa.0.0.i.i.i.i6.i, %.sroa.0.0.i.i.i.i6.i ; 2 uses
  %.not.i30.i.i.i = icmp eq i32 %.sroa.0.082.i.lcssa.i.i, 0
  br i1 %.not.i30.i.i.i, label %.outer.backedge.i.i.i, label %.lr.ph.i31.i.i.i.preheader

.lr.ph.i31.i.i.i.preheader:                       ; preds = %bb.ay
  %xtraiter198 = and i32 %i.fc, 5                 ; 3 uses
  %i.fd = icmp ult i32 %.sroa.0.082.i.lcssa.i.i, 3
  br i1 %i.fd, label %.lr.ph.i31.i.i.i.epil.preheader, label %.lr.ph.i31.i.i.i.preheader.new

.lr.ph.i31.i.i.i.preheader.new:                   ; preds = %.lr.ph.i31.i.i.i.preheader
  %unroll_iter202 = and i32 %i.fc, 56
  br label %.lr.ph.i31.i.i.i

._crit_edge.loopexit.i.i.i7.i.unr-lcssa:          ; preds = %.lr.ph.i31.i.i.i
  %lcmp.mod200.not = icmp eq i32 %xtraiter198, 0
  br i1 %lcmp.mod200.not, label %._crit_edge.loopexit.i.i.i7.i, label %.lr.ph.i31.i.i.i.epil.preheader

.lr.ph.i31.i.i.i.epil.preheader:                  ; preds = %._crit_edge.loopexit.i.i.i7.i.unr-lcssa, %.lr.ph.i31.i.i.i.preheader
  %lcmp.mod201 = icmp ne i32 %xtraiter198, 0
  tail call void @llvm.assume(i1 %lcmp.mod201)
  br label %.lr.ph.i31.i.i.i.epil

.lr.ph.i31.i.i.i.epil:                            ; preds = %.lr.ph.i31.i.i.i.epil, %.lr.ph.i31.i.i.i.epil.preheader
  %epil.iter199 = phi i32 [ 0, %.lr.ph.i31.i.i.i.epil.preheader ], [ %epil.iter199.next, %.lr.ph.i31.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause() #66, !noalias !37935
  %epil.iter199.next = add i32 %epil.iter199, 1   ; 2 uses
  %epil.iter199.cmp.not = icmp eq i32 %epil.iter199.next, %xtraiter198
  br i1 %epil.iter199.cmp.not, label %._crit_edge.loopexit.i.i.i7.i, label %.lr.ph.i31.i.i.i.epil, !llvm.loop !37773

._crit_edge.loopexit.i.i.i7.i:                    ; preds = %.lr.ph.i31.i.i.i.epil, %._crit_edge.loopexit.i.i.i7.i.unr-lcssa
  %i.fe = add i32 %.sroa.0.082.i.lcssa.i.i, 1
  br label %.outer.backedge.i.i.i

.lr.ph.i31.i.i.i:                                 ; preds = %.lr.ph.i31.i.i.i, %.lr.ph.i31.i.i.i.preheader.new
  %niter203 = phi i32 [ 0, %.lr.ph.i31.i.i.i.preheader.new ], [ %niter203.next.7, %.lr.ph.i31.i.i.i ]
  tail call void @llvm.x86.sse2.pause() #66, !noalias !37935
  tail call void @llvm.x86.sse2.pause() #66, !noalias !37935
  tail call void @llvm.x86.sse2.pause() #66, !noalias !37935
  tail call void @llvm.x86.sse2.pause() #66, !noalias !37935
  tail call void @llvm.x86.sse2.pause() #66, !noalias !37935
  tail call void @llvm.x86.sse2.pause() #66, !noalias !37935
  tail call void @llvm.x86.sse2.pause() #66, !noalias !37935
  tail call void @llvm.x86.sse2.pause() #66, !noalias !37935
  %niter203.next.7 = add i32 %niter203, 8         ; 2 uses
  %niter203.ncmp.7 = icmp eq i32 %niter203.next.7, %unroll_iter202
  br i1 %niter203.ncmp.7, label %._crit_edge.loopexit.i.i.i7.i.unr-lcssa, label %.lr.ph.i31.i.i.i

bb.az:                                            ; preds = %bb.ax
  br i1 %.not64.i.i.i, label %bb.ba, label %.critedge.i.i.i

"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h665953ef85821356E.exit.thread32.i.i": ; preds = %bb.ba
  store atomic ptr %.sroa.043.1.i.i.i, ptr %i.ed release, align 8, !noalias !37935
  %i.ff = atomicrmw add ptr %i.eb, i64 2 release, align 8, !noalias !37935 ; 0 uses
  store atomic ptr %.sroa.043.1.i.i.i, ptr %.sroa.05.1.i.i.i release, align 8, !noalias !37935
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %.sroa.012.0.copyload35.i.i = load i32, ptr %i.x, align 8, !alias.scope !37934, !noalias !37936
  %.sroa.5.0..sroa_idx36.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.5.i.i, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.5.0..sroa_idx36.i.i, i64 60, i1 false), !noalias !37936
  br label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$5write17ha1bf046413d78166E.exit.thread.i.i"

bb.ba:                                            ; preds = %bb.az
  %.not16.i.i.i = icmp eq ptr %.sroa.043.1.i.i.i, null
  br i1 %.not16.i.i.i, label %bb.bb, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h665953ef85821356E.exit.thread32.i.i", !prof !49

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1188) #75
          to label %.noexc5.i.i unwind label %.body.thread24.i.i, !noalias !37937

.noexc5.i.i:                                      ; preds = %bb.bb
  unreachable

.outer.backedge.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i7.i, %bb.ay, %bb.aw, %bb.av
  %.sroa.043.0.ph.be.i.i.i = phi ptr [ %i.ev, %bb.aw ], [ %i.ev, %bb.av ], [ %.sroa.043.1.i.i.i, %bb.ay ], [ %.sroa.043.1.i.i.i, %._crit_edge.loopexit.i.i.i7.i ] ; 2 uses
  %.sroa.0.0.ph.be.i.i.i = phi i32 [ %.sroa.0.082.i.lcssa.i.i, %bb.aw ], [ %.sroa.0.082.i.lcssa.i.i, %bb.av ], [ 1, %bb.ay ], [ %i.fe, %._crit_edge.loopexit.i.i.i7.i ]
  %i.fg = load atomic i64, ptr %i.eb acquire, align 8, !noalias !37935 ; 2 uses
  %i.fh = load atomic ptr, ptr %i.ed acquire, align 8, !noalias !37935
  %i.fi = and i64 %i.fg, 1
  %i.fj = icmp eq i64 %i.fi, 0
  br i1 %i.fj, label %.lr.ph.i.i4.i, label %.critedge.i.i.i

.loopexit.i.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i.i.i12.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i.i.i, label %.lr.ph.i.i.i12.i.epil.preheader

.lr.ph.i.i.i12.i.epil.preheader:                  ; preds = %.loopexit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i12.i.preheader
  %lcmp.mod197 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod197)
  br label %.lr.ph.i.i.i12.i.epil

.lr.ph.i.i.i12.i.epil:                            ; preds = %.lr.ph.i.i.i12.i.epil, %.lr.ph.i.i.i12.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i12.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i12.i.epil ]
  tail call void @llvm.x86.sse2.pause() #66, !noalias !37935
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i.i.i, label %.lr.ph.i.i.i12.i.epil, !llvm.loop !37774

.loopexit.i.i.i:                                  ; preds = %.loopexit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i12.i.epil, %bb.ap, %bb.ao
  %i.fk = load atomic i64, ptr %i.eb acquire, align 8, !noalias !37935 ; 3 uses
  %i.fl = load atomic ptr, ptr %i.ed acquire, align 8, !noalias !37935
  %i.fm = and i64 %i.fk, 1
  %i.fn = icmp eq i64 %i.fm, 0
  br i1 %i.fn, label %bb.an, label %.critedge.i.i.i

.loopexit65.i.i.i:                                ; preds = %bb.ao
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

.loopexit.split-lp.i.i.i:                         ; preds = %bb.as
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.bc:                                            ; preds = %.loopexit.split-lp.i.i.i, %.loopexit65.i.i.i
  %.sroa.043.2.ph.i.i.i = phi ptr [ %.sroa.043.0.ph86.i.i.i, %.loopexit65.i.i.i ], [ %.sroa.043.1.i.i.i, %.loopexit.split-lp.i.i.i ] ; 2 uses
  %lpad.phi.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i, %.loopexit65.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ] ; 2 uses
  %i.fo = icmp eq ptr %.sroa.043.2.ph.i.i.i, null
  br i1 %i.fo, label %.body.thread.i9.i, label %.thread55.i.i.i

.thread55.i.i.i:                                  ; preds = %bb.bc
end_hunk_1
begin_hunk_2_@"_ZN3std4sync4mpmc4zero16Channel$LT$T$GT$4send28_$u7b$$u7b$closure$u7d$$u7d$17h366e25486e64a988E":bb.a
bb.i:                                             ; preds = %bb.c, %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !71914, !noalias !71915, !nonnull !44, !noundef !44
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.ad = add i64 %i.t, 1
  store i64 %i.ad, ptr %i.s, align 8, !alias.scope !71914, !noalias !71915
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !71913
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  invoke fastcc void @_ZN3std4sync4mpmc5waker5Waker6notify17h7f1a87358ecc50c3E(ptr noalias noundef align 8 dereferenceable(48) %i.ae)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ag = load i8, ptr %i.af, align 8, !range !45, !noundef !44
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.ai = trunc nuw i8 %i.ag to i1
  br i1 %i.ai, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.ak = and i64 %i.aj, 9223372036854775807
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.l, !prof !46

bb.l:                                             ; preds = %bb.k
  %i.am = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.l
  br i1 %i.am, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.m

bb.m:                                             ; preds = %.noexc
  store atomic i8 1, ptr %i.ah monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i: ; preds = %bb.m, %.noexc, %bb.k, %bb.j
  %i.an = atomicrmw xchg ptr %i.m, i32 0 release, align 4
  %i.ao = icmp eq i32 %i.an, 2
  br i1 %i.ao, label %bb.n, label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17h9f2bcf9a8351a74cE.exit", !prof !49

bb.n:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %i.m)
          to label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17h9f2bcf9a8351a74cE.exit" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17h9f2bcf9a8351a74cE.exit": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !44, !align !50, !noundef !44 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8            ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.at = load i32, ptr %i.as, align 8, !range !86, !noundef !44 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.at, 1000000000
  %i.av = icmp samesign ult i32 %i.at, 1000000000
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  br i1 %.not.i, label %.split9.us.i, label %.split9.i

.split9.us.i:                                     ; preds = %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17h9f2bcf9a8351a74cE.exit", %bb.o
  %i.ax = load atomic i64, ptr %i.au acquire, align 8
  switch i64 %i.ax, label %.thread29 [
    i64 0, label %bb.o
    i64 1, label %.thread
    i64 2, label %.thread32
  ]

bb.o:                                             ; preds = %.split9.us.i
  invoke void @_ZN3std6thread6Thread4park17h79c834280bb663cdE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aw)
          to label %.split9.us.i unwind label %.loopexit.split-lp.loopexit

.split9.i:                                        ; preds = %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17h9f2bcf9a8351a74cE.exit", %.noexc51
  %i.ay = load atomic i64, ptr %i.au acquire, align 8
  switch i64 %i.ay, label %.thread29 [
    i64 0, label %bb.p
    i64 1, label %.thread
    i64 2, label %.thread32
  ]

bb.p:                                             ; preds = %.split9.i
  %i.az = invoke { i64, i32 } @_ZN3std4time7Instant3now17h6afc9418486166d9E()
          to label %.noexc50 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc50:                                         ; preds = %bb.p
  %i.ba = extractvalue { i64, i32 } %i.az, 0      ; 3 uses
  %i.bb = extractvalue { i64, i32 } %i.az, 1      ; 3 uses
  %i.bc = icmp eq i64 %i.ba, %i.ar
  br i1 %i.bc, label %.split.i, label %bb.q

.split.i:                                         ; preds = %.noexc50
  %i.bd = icmp ult i32 %i.bb, 1000000000
  call void @llvm.assume(i1 %i.bd)
  call void @llvm.assume(i1 %i.av)
  %i.be = icmp samesign ult i32 %i.bb, %i.at
  br i1 %i.be, label %bb.s, label %bb.r

bb.q:                                             ; preds = %.noexc50
  %i.bf = icmp slt i64 %i.ba, %i.ar
  br i1 %i.bf, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %.split.i
  %i.bg = cmpxchg ptr %i.au, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.bg, 1
  br i1 %.sroa.18.0.in.i.i.i, label %.thread, label %bb.t

bb.s:                                             ; preds = %bb.q, %.split.i
  %i.bh = invoke { i64, i32 } @"_ZN60_$LT$std..time..Instant$u20$as$u20$core..ops..arith..Sub$GT$3sub17h9a0879e9e8ced43bE"(i64 noundef %i.ar, i32 noundef range(i32 0, 1000000001) %i.at, i64 noundef %i.ba, i32 noundef %i.bb)
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc51:                                         ; preds = %bb.s
  %i.bi = extractvalue { i64, i32 } %i.bh, 0
  %i.bj = extractvalue { i64, i32 } %i.bh, 1
  invoke void @_ZN3std6thread6Thread12park_timeout17hf06feceab431e109E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aw, i64 noundef %i.bi, i32 noundef %i.bj)
          to label %.split9.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.t:                                             ; preds = %bb.r
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.bg, 0
  switch i64 %.sroa.01.0.i.i.i, label %.thread29 [
    i64 0, label %bb.u
    i64 1, label %.thread
    i64 2, label %.thread32
  ], !prof !144

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @12, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1195) #75
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread:                                          ; preds = %.split9.i, %.split9.us.i, %bb.r, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.63)
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bl = load ptr, ptr %i.bk, align 8, !nonnull !44, !align !50, !noundef !44 ; 9 uses
  %i.bm = cmpxchg ptr %i.bl, i32 0, i32 1 acquire monotonic, align 4, !noalias !71917
  %i.bn = extractvalue { i32, i1 } %i.bm, 1
  br i1 %i.bn, label %.noexc54, label %bb.v, !prof !46

bb.v:                                             ; preds = %.thread
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 8 %i.bl)
          to label %.noexc54 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc54:                                         ; preds = %bb.v, %.thread
  %i.bo = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !71917
  %i.bp = and i64 %i.bo, 9223372036854775807
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %bb.ab, label %bb.w, !prof !46

bb.w:                                             ; preds = %.noexc54
  %i.br = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc55 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc55:                                         ; preds = %bb.w
  %i.bs = xor i1 %i.br, true
  %i.bt = zext i1 %i.bs to i8
  br label %bb.ab

.thread32:                                        ; preds = %.split9.i, %.split9.us.i, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.614)
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bv = load ptr, ptr %i.bu, align 8, !nonnull !44, !align !50, !noundef !44 ; 9 uses
  %i.bw = cmpxchg ptr %i.bv, i32 0, i32 1 acquire monotonic, align 4, !noalias !71918
  %i.bx = extractvalue { i32, i1 } %i.bw, 1
  br i1 %i.bx, label %.noexc58, label %bb.x, !prof !46

bb.x:                                             ; preds = %.thread32
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 8 %i.bv)
          to label %.noexc58 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc58:                                         ; preds = %bb.x, %.thread32
  %i.by = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !71918
  %i.bz = and i64 %i.by, 9223372036854775807
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %bb.av, label %bb.y, !prof !46

bb.y:                                             ; preds = %.noexc58
  %i.cb = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc59 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc59:                                         ; preds = %bb.y
  %i.cc = xor i1 %i.cb, true
  %i.cd = zext i1 %i.cc to i8
  br label %bb.av

.thread29:                                        ; preds = %.split9.i, %.split9.us.i, %bb.t
  %i.ce = load atomic i8, ptr %i.k acquire, align 8
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %.lr.ph.i, label %"_ZN3std4sync4mpmc4zero15Packet$LT$T$GT$10wait_ready17h6ff98c80a900d89eE.exit.loopexit"

.lr.ph.i:                                         ; preds = %.thread29, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i
  %.sroa.0.02.i = phi i32 [ %i.cj, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i ], [ 0, %.thread29 ] ; 6 uses
  %i.cg = icmp ult i32 %.sroa.0.02.i, 7
  br i1 %i.cg, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i
  invoke void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
          to label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i unwind label %.loopexit

bb.aa:                                            ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.02.i, 0
  br i1 %.not.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.aa
  %i.ch = mul nuw nsw i32 %.sroa.0.02.i, %.sroa.0.02.i ; 2 uses
  %xtraiter = and i32 %i.ch, 7                    ; 3 uses
  %i.ci = icmp ult i32 %.sroa.0.02.i, 3
  br i1 %i.ci, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.ch, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause() #66
  call void @llvm.x86.sse2.pause() #66
  call void @llvm.x86.sse2.pause() #66
  call void @llvm.x86.sse2.pause() #66
  call void @llvm.x86.sse2.pause() #66
  call void @llvm.x86.sse2.pause() #66
  call void @llvm.x86.sse2.pause() #66
  call void @llvm.x86.sse2.pause() #66
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod91 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod91)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause() #66
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !71842

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.z, %bb.aa
  %i.cj = add i32 %.sroa.0.02.i, 1
  %i.ck = load atomic i8, ptr %i.k acquire, align 8
  %i.cl = icmp eq i8 %i.ck, 0
  br i1 %i.cl, label %.lr.ph.i, label %"_ZN3std4sync4mpmc4zero15Packet$LT$T$GT$10wait_ready17h6ff98c80a900d89eE.exit.loopexit"

bb.ab:                                            ; preds = %.noexc55, %.noexc54
  %.sroa.01.0.i.i = phi i8 [ %i.bt, %.noexc55 ], [ 0, %.noexc54 ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4 ; 2 uses
  %i.cn = load atomic i8, ptr %i.cm monotonic, align 4, !noalias !71917
  %.not44 = icmp eq i8 %i.cn, 0
  br i1 %.not44, label %bb.ag, label %bb.ac, !prof !46

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !71919
  store ptr %i.bl, ptr %i.b, align 8, !noalias !71919
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %.sroa.01.0.i.i, ptr %i.co, align 8, !noalias !71919
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1333, i64 noundef 43, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1337, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1196) #75
          to label %bb.ae unwind label %bb.ad, !noalias !71920

bb.ad:                                            ; preds = %bb.ac
  %i.cp = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr131drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$$GT$17he2b78a4c6843ab2fE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #77
          to label %.body unwind label %bb.af, !noalias !71920

bb.ae:                                            ; preds = %bb.ac
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !71920
  unreachable

bb.ag:                                            ; preds = %bb.ab
  %i.cr = trunc nuw i8 %.sroa.01.0.i.i to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !71921)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !alias.scope !71921, !noalias !71922, !nonnull !44, !noundef !44 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bl, i64 24 ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !alias.scope !71921, !noalias !71922, !noundef !44 ; 7 uses
  %.idx84 = mul nuw nsw i64 %i.cv, 24
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.idx84
  %i.cx = icmp eq i64 %i.cv, 0
  br i1 %i.cx, label %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit.thread, label %.lr.ph83

bb.ah:                                            ; preds = %.lr.ph83
  %i.cy = getelementptr inbounds nuw i8, ptr %i.db, i64 24 ; 2 uses
  %i.cz = add nuw nsw i64 %i.dc, 1
  %i.da = icmp eq ptr %i.cy, %i.cw
  br i1 %i.da, label %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit.thread, label %.lr.ph83

.lr.ph83:                                         ; preds = %bb.ag, %bb.ah
  %i.db = phi ptr [ %i.cy, %bb.ah ], [ %i.ct, %bb.ag ] ; 2 uses
  %i.dc = phi i64 [ %i.cz, %bb.ah ], [ 0, %bb.ag ] ; 5 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !alias.scope !71923, !noalias !71924, !noundef !44
  %.not.i.i62 = icmp eq i64 %i.de, %i.i
  br i1 %.not.i.i62, label %bb.ai, label %bb.ah

bb.ai:                                            ; preds = %.lr.ph83
  call void @llvm.experimental.noalias.scope.decl(metadata !71925)
  %i.df = icmp ult i64 %i.cv, 384307168202282326
  call void @llvm.assume(i1 %i.df)
  %.not.i5.i = icmp samesign ult i64 %i.dc, %i.cv
  br i1 %.not.i5.i, label %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit, label %bb.aj, !prof !46

bb.aj:                                            ; preds = %bb.ai
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17headf60d52b65606fE"(i64 noundef %i.dc, i64 noundef %i.cv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1207) #75
          to label %.noexc63 unwind label %bb.ak

.noexc63:                                         ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %bb.am, %bb.aj, %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit.thread
  %i.dg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17h9f2bcf9a8351a74cE"(ptr nonnull %i.bl, i8 %.sroa.01.0.i.i) #77
          to label %.body unwind label %bb.au

_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit: ; preds = %bb.ai
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %i.ct, i64 %i.dc ; 4 uses
  %.sroa.01.0.copyload2 = load ptr, ptr %i.dh, align 8, !noalias !71921 ; 3 uses
  %.sroa.63.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.63, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.63.0..sroa_idx4, i64 16, i1 false), !noalias !71921
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = xor i64 %i.dc, -1
  %i.dk = add nsw i64 %i.cv, %i.dj
  %i.dl = mul nuw nsw i64 %i.dk, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dh, ptr nonnull align 8 %i.di, i64 %i.dl, i1 false), !noalias !71926
  %i.dm = add nsw i64 %i.cv, -1
  store i64 %i.dm, ptr %i.cu, align 8, !alias.scope !71927, !noalias !71928
  %.not24 = icmp eq ptr %.sroa.01.0.copyload2, null
  br i1 %.not24, label %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit.thread, label %bb.al, !prof !61

bb.al:                                            ; preds = %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit
  store ptr %.sroa.01.0.copyload2, ptr %i.e, align 8
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.63.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.63, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.63)
  %i.dn = atomicrmw sub ptr %.sroa.01.0.copyload2, i64 1 release, align 8, !noalias !71929
  %i.do = icmp eq i64 %i.dn, 1
  br i1 %i.do, label %bb.am, label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h17a6969522ba22adE.exit"

bb.am:                                            ; preds = %bb.al
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17he4d92f17da45dc34E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h17a6969522ba22adE.exit" unwind label %bb.ak

_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit.thread: ; preds = %bb.ah, %bb.ag, %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1197) #75
          to label %bb.h unwind label %bb.ak

"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h17a6969522ba22adE.exit": ; preds = %bb.al, %bb.am
  br i1 %i.cr, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i65, label %bb.an

bb.an:                                            ; preds = %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h17a6969522ba22adE.exit"
  %i.dp = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.dq = and i64 %i.dp, 9223372036854775807
  %i.dr = icmp eq i64 %i.dq, 0
  br i1 %i.dr, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i65, label %bb.ao, !prof !46

bb.ao:                                            ; preds = %bb.an
  %i.ds = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc66 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc66:                                         ; preds = %bb.ao
  br i1 %i.ds, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i65, label %bb.ap

bb.ap:                                            ; preds = %.noexc66
  store atomic i8 1, ptr %i.cm monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i65

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i65: ; preds = %bb.ap, %.noexc66, %bb.an, %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h17a6969522ba22adE.exit"
  %i.dt = atomicrmw xchg ptr %i.bl, i32 0 release, align 4
  %i.du = icmp eq i32 %i.dt, 2
  br i1 %i.du, label %bb.aq, label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17h9f2bcf9a8351a74cE.exit68", !prof !49

bb.aq:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i65
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %i.bl)
          to label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17h9f2bcf9a8351a74cE.exit68" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17h9f2bcf9a8351a74cE.exit68": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i65, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.0.0.copyload = load i32, ptr %i.f, align 8 ; 2 uses
  store i32 3, ptr %i.f, align 8
  %.not25 = icmp eq i32 %.sroa.0.0.copyload, 3
  br i1 %.not25, label %.invoke, label %.thread72, !prof !49

.invoke:                                          ; preds = %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17h9f2bcf9a8351a74cE.exit80", %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17h9f2bcf9a8351a74cE.exit68"
  %i.dv = phi ptr [ @1198, %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17h9f2bcf9a8351a74cE.exit68" ], [ @1201, %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17h9f2bcf9a8351a74cE.exit80" ]
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dv) #75
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

.thread72:                                        ; preds = %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17h9f2bcf9a8351a74cE.exit68", %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17h9f2bcf9a8351a74cE.exit80"
  %.sink = phi i64 [ 1, %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17h9f2bcf9a8351a74cE.exit80" ], [ 0, %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17h9f2bcf9a8351a74cE.exit68" ]
  %.sroa.08.0.copyload.sink = phi i32 [ %.sroa.08.0.copyload, %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17h9f2bcf9a8351a74cE.exit80" ], [ %.sroa.0.0.copyload, %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17h9f2bcf9a8351a74cE.exit68" ]
end_hunk_2
begin_hunk_3_@"_ZN4core3ptr138drop_in_place$LT$lalrpop_util..ParseError$LT$usize$C$nickel_lang_parser..lexer..Token$C$nickel_lang_parser..error..ParseOrLexError$GT$$GT$17he65233f8bce6ba7eE":bb.a
  br i1 %i.l, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h42cd9ce836496da3E.exit.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i.i"
  %.sroa.0.010.i.i.i = phi i64 [ %i.n, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i.i" ], [ 0, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.010.i.i.i ; 2 uses
  %i.n = add nuw i64 %.sroa.0.010.i.i.i, 1        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76669)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76670)
  %.val.i.i.i.i.i = load i64, ptr %i.m, align 8, !range !74, !alias.scope !76671, !noalias !76667, !noundef !44 ; 2 uses
  %i.o = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.o, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i.i", label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !76671, !noalias !76667, !nonnull !44, !noundef !44
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !76672
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i.i": ; preds = %bb.e, %.lr.ph.i.i.i
  %i.q = icmp eq i64 %i.n, %.val1.i
  br i1 %i.q, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h42cd9ce836496da3E.exit.i", label %.lr.ph.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h42cd9ce836496da3E.exit.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i.i", %bb.d
  %.val2.i = load i64, ptr %i.i, align 8, !range !74, !alias.scope !76667, !noundef !44 ; 2 uses
  %i.r = icmp eq i64 %.val2.i, 0
  br i1 %i.r, label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_parser..error..ParseOrLexError$GT$17h8e865ba4be1c72a3E.exit", label %bb.f

bb.f:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h42cd9ce836496da3E.exit.i"
  %i.s = mul nuw i64 %.val2.i, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !76667
  br label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_parser..error..ParseOrLexError$GT$17h8e865ba4be1c72a3E.exit"

bb.g:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..lexer..Token$GT$17h84eb68b90345272eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(80) %i.t)
  br label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_parser..error..ParseOrLexError$GT$17h8e865ba4be1c72a3E.exit"

bb.h:                                             ; preds = %bb.a
  tail call fastcc void @"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..lexer..Token$GT$17h84eb68b90345272eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(80) %0)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76673)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val.i1 = load ptr, ptr %i.v, align 8, !alias.scope !76673, !nonnull !44, !noundef !44 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val1.i2 = load i64, ptr %i.w, align 8, !alias.scope !76673, !noundef !44 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76674)
  %i.x = icmp eq i64 %.val1.i2, 0
  br i1 %i.x, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h42cd9ce836496da3E.exit.i8", label %.lr.ph.i.i.i3

.lr.ph.i.i.i3:                                    ; preds = %bb.h, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i.i7"
  %.sroa.0.010.i.i.i4 = phi i64 [ %i.z, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i.i7" ], [ 0, %bb.h ] ; 2 uses
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %.val.i1, i64 %.sroa.0.010.i.i.i4 ; 2 uses
  %i.z = add nuw i64 %.sroa.0.010.i.i.i4, 1       ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76676)
  %.val.i.i.i.i.i5 = load i64, ptr %i.y, align 8, !range !74, !alias.scope !76677, !noalias !76673, !noundef !44 ; 2 uses
  %i.aa = icmp eq i64 %.val.i.i.i.i.i5, 0
  br i1 %i.aa, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i.i7", label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i3
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.val1.i.i.i.i.i6 = load ptr, ptr %i.ab, align 8, !alias.scope !76677, !noalias !76673, !nonnull !44, !noundef !44
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i6, i64 noundef %.val.i.i.i.i.i5, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !76678
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i.i7"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i.i7": ; preds = %bb.i, %.lr.ph.i.i.i3
  %i.ac = icmp eq i64 %i.z, %.val1.i2
  br i1 %i.ac, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h42cd9ce836496da3E.exit.i8", label %.lr.ph.i.i.i3

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h42cd9ce836496da3E.exit.i8": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i.i7", %bb.h
  %.val2.i9 = load i64, ptr %i.u, align 8, !range !74, !alias.scope !76673, !noundef !44 ; 2 uses
  %i.ad = icmp eq i64 %.val2.i9, 0
  br i1 %i.ad, label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_parser..error..ParseOrLexError$GT$17h8e865ba4be1c72a3E.exit", label %bb.j

bb.j:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h42cd9ce836496da3E.exit.i8"
  %i.ae = mul nuw i64 %.val2.i9, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i1, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !76673
  br label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_parser..error..ParseOrLexError$GT$17h8e865ba4be1c72a3E.exit"
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr138drop_in_place$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..files..FileId$C$nickel_lang_parser..position..TermPos$GT$$GT$17h960fb1b044b751d2E"(ptr %.0.val, i64 %.8.val) unnamed_addr #13 {
bb.a:
  %i.a = icmp eq i64 %.8.val, 0
  br i1 %i.a, label %"_ZN4core3ptr158drop_in_place$LT$hashbrown..map..HashMap$LT$nickel_lang_parser..files..FileId$C$nickel_lang_parser..position..TermPos$C$std..hash..random..RandomState$GT$$GT$17h23a5c25676e26c48E.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i: ; preds = %bb.a
  %i.b = mul i64 %.8.val, 20
  %i.c = icmp slt i64 %.8.val, 922337203685477580
  tail call void @llvm.assume(i1 %i.c)
  %i.d = and i64 %i.b, -16                        ; 2 uses
  %i.e = add i64 %i.d, 32                         ; 2 uses
  %i.f = add nsw i64 %.8.val, 17
  %i.g = add i64 %i.f, %i.e                       ; 4 uses
  %i.h = icmp uge i64 %i.g, %i.e
  %i.i = icmp ult i64 %i.g, 9223372036854775793
  tail call void @llvm.assume(i1 %i.h)
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.j = icmp eq i64 %i.g, 0
  br i1 %i.j, label %"_ZN4core3ptr158drop_in_place$LT$hashbrown..map..HashMap$LT$nickel_lang_parser..files..FileId$C$nickel_lang_parser..position..TermPos$C$std..hash..random..RandomState$GT$$GT$17h23a5c25676e26c48E.exit", label %bb.b

bb.b:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i
  %i.k = sub i64 -32, %i.d
  %i.l = getelementptr inbounds i8, ptr %.0.val, i64 %i.k
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 16) #66
  br label %"_ZN4core3ptr158drop_in_place$LT$hashbrown..map..HashMap$LT$nickel_lang_parser..files..FileId$C$nickel_lang_parser..position..TermPos$C$std..hash..random..RandomState$GT$$GT$17h23a5c25676e26c48E.exit"

"_ZN4core3ptr158drop_in_place$LT$hashbrown..map..HashMap$LT$nickel_lang_parser..files..FileId$C$nickel_lang_parser..position..TermPos$C$std..hash..random..RandomState$GT$$GT$17h23a5c25676e26c48E.exit": ; preds = %bb.a, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr138drop_in_place$LT$std..sync..mpsc..Receiver$LT$$LP$nickel_lang_core..error..warning..Warning$C$nickel_lang_parser..files..Files$RP$$GT$$GT$17h45948aa6eb22ccf7E"(i64 %.0.val, ptr %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  switch i64 %.0.val, label %default.unreachable.i.i [
    i64 0, label %bb.b
    i64 1, label %bb.q
    i64 2, label %bb.ai
  ]

default.unreachable.i.i:                          ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.8.val, i64 520
  %i.b = atomicrmw sub ptr %i.a, i64 1 acq_rel, align 8
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.c, label %"_ZN4core3ptr138drop_in_place$LT$std..sync..mpmc..Receiver$LT$$LP$nickel_lang_core..error..warning..Warning$C$nickel_lang_parser..files..Files$RP$$GT$$GT$17h92200957f13d053aE.exit"

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.8.val, i64 400 ; 4 uses
  %i.e = load i64, ptr %i.d, align 16, !noundef !44
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 128
  %i.g = atomicrmw or ptr %i.f, i64 %i.e seq_cst, align 8 ; 2 uses
  %i.h = load i64, ptr %i.d, align 16, !noundef !44 ; 2 uses
  %i.i = and i64 %i.h, %i.g
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 256
  tail call fastcc void @_ZN3std4sync4mpmc5waker9SyncWaker10disconnect17h8d3ee9c2a2799b36E(ptr noundef nonnull align 8 %i.k)
  %.pre.i.i.i.i.i = load i64, ptr %i.d, align 16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = phi i64 [ %i.h, %bb.c ], [ %.pre.i.i.i.i.i, %bb.d ] ; 2 uses
  %i.m = load atomic i64, ptr %.8.val monotonic, align 16
  %i.n = xor i64 %i.l, -1
  %i.o = and i64 %i.g, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %.8.val, i64 392 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.8.val, i64 408
  %i.r = getelementptr inbounds nuw i8, ptr %.8.val, i64 416
  %i.s = getelementptr inbounds nuw i8, ptr %.8.val, i64 384
  br label %bb.f

bb.f:                                             ; preds = %"_ZN4core3ptr105drop_in_place$LT$$LP$nickel_lang_core..error..warning..Warning$C$nickel_lang_parser..files..Files$RP$$GT$17h9910dd18718ae896E.exit.i.i.i.i.i.i", %bb.e
  %i.t = phi i64 [ %i.l, %bb.e ], [ %.pre.i.i.i.i.i.i, %"_ZN4core3ptr105drop_in_place$LT$$LP$nickel_lang_core..error..warning..Warning$C$nickel_lang_parser..files..Files$RP$$GT$17h9910dd18718ae896E.exit.i.i.i.i.i.i" ]
  %.sroa.0.07.i.i.i.i.i.i = phi i32 [ 0, %bb.e ], [ %.sroa.0.18.i.i.i.i.i.i, %"_ZN4core3ptr105drop_in_place$LT$$LP$nickel_lang_core..error..warning..Warning$C$nickel_lang_parser..files..Files$RP$$GT$17h9910dd18718ae896E.exit.i.i.i.i.i.i" ] ; 9 uses
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ %i.m, %bb.e ], [ %.sroa.0.1.i.i.i.i.i.i, %"_ZN4core3ptr105drop_in_place$LT$$LP$nickel_lang_core..error..warning..Warning$C$nickel_lang_parser..files..Files$RP$$GT$17h9910dd18718ae896E.exit.i.i.i.i.i.i" ] ; 5 uses
  %i.u = add i64 %i.t, -1
  %i.v = and i64 %.sroa.0.0.i.i.i.i.i.i, %i.u     ; 3 uses
  %i.w = load i64, ptr %i.p, align 8, !noundef !44
  %i.x = sub i64 0, %i.w
  %i.y = and i64 %.sroa.0.0.i.i.i.i.i.i, %i.x
  %i.z = load ptr, ptr %i.q, align 8, !nonnull !44, !align !50, !noundef !44
  %i.aa = load i64, ptr %i.r, align 16, !noundef !44
  %i.ab = icmp ult i64 %i.v, %i.aa
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = getelementptr inbounds nuw [72 x i8], ptr %i.z, i64 %i.v ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.ae = load atomic i64, ptr %i.ad acquire, align 8 ; 2 uses
  %i.af = add i64 %.sroa.0.0.i.i.i.i.i.i, 1
  %i.ag = icmp eq i64 %i.af, %i.ae
  br i1 %i.ag, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = icmp eq i64 %i.o, %.sroa.0.0.i.i.i.i.i.i
  br i1 %i.ah, label %"_ZN76_$LT$std..sync..mpmc..Receiver$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17h13ab5168fded0e19E.exit.i.i.i", label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ai = add nuw i64 %i.v, 1
  %i.aj = load i64, ptr %i.s, align 128, !noundef !44
  %i.ak = icmp ult i64 %i.ai, %i.aj
  br i1 %i.ak, label %bb.m, label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.al = icmp ult i32 %.sroa.0.07.i.i.i.i.i.i, 7
  br i1 %i.al, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %.not.i.i.i.i.i.i.i = icmp eq i32 %.sroa.0.07.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.k
  %i.am = mul nuw nsw i32 %.sroa.0.07.i.i.i.i.i.i, %.sroa.0.07.i.i.i.i.i.i ; 2 uses
  %xtraiter42 = and i32 %i.am, 7                  ; 3 uses
  %i.an = icmp ult i32 %.sroa.0.07.i.i.i.i.i.i, 3
  br i1 %i.an, label %.lr.ph.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.preheader.new:               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %unroll_iter46 = and i32 %i.am, 56
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader.new
  %niter47 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader.new ], [ %niter47.next.7, %.lr.ph.i.i.i.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause() #66
  tail call void @llvm.x86.sse2.pause() #66
  tail call void @llvm.x86.sse2.pause() #66
  tail call void @llvm.x86.sse2.pause() #66
  tail call void @llvm.x86.sse2.pause() #66
  tail call void @llvm.x86.sse2.pause() #66
  tail call void @llvm.x86.sse2.pause() #66
  tail call void @llvm.x86.sse2.pause() #66
  %niter47.next.7 = add i32 %niter47, 8           ; 2 uses
  %niter47.ncmp.7 = icmp eq i32 %niter47.next.7, %unroll_iter46
  br i1 %niter47.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %lcmp.mod44.not = icmp eq i32 %xtraiter42, 0
  br i1 %lcmp.mod44.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.epil.preheader:              ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.preheader
  %lcmp.mod45 = icmp ne i32 %xtraiter42, 0
  tail call void @llvm.assume(i1 %lcmp.mod45)
  br label %.lr.ph.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.epil:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.epil.preheader
  %epil.iter43 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.epil.preheader ], [ %epil.iter43.next, %.lr.ph.i.i.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause() #66
  %epil.iter43.next = add i32 %epil.iter43, 1     ; 2 uses
  %epil.iter43.cmp.not = icmp eq i32 %epil.iter43.next, %xtraiter42
  br i1 %epil.iter43.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.epil, !llvm.loop !76679

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.epil, %bb.k, %bb.j
  %i.ao = add i32 %.sroa.0.07.i.i.i.i.i.i, 1
  br label %"_ZN4core3ptr105drop_in_place$LT$$LP$nickel_lang_core..error..warning..Warning$C$nickel_lang_parser..files..Files$RP$$GT$17h9910dd18718ae896E.exit.i.i.i.i.i.i"

"_ZN4core3ptr105drop_in_place$LT$$LP$nickel_lang_core..error..warning..Warning$C$nickel_lang_parser..files..Files$RP$$GT$17h9910dd18718ae896E.exit.i.i.i.i.i.i": ; preds = %bb.o, %bb.n, %bb.m, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i
  %.sroa.0.18.i.i.i.i.i.i = phi i32 [ %i.ao, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.i, %bb.m ], [ %.sroa.0.07.i.i.i.i.i.i, %bb.n ], [ %.sroa.0.07.i.i.i.i.i.i, %bb.o ]
  %.sroa.0.1.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i ], [ %.sroa.05.0.i.i.i.i.i.i, %bb.m ], [ %.sroa.05.0.i.i.i.i.i.i, %bb.n ], [ %.sroa.05.0.i.i.i.i.i.i, %bb.o ]
  %.pre.i.i.i.i.i.i = load i64, ptr %i.d, align 16
  br label %bb.f

bb.l:                                             ; preds = %bb.h
  %i.ap = load i64, ptr %i.p, align 8, !noundef !44
  %i.aq = add i64 %i.ap, %i.y
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.h
  %.sroa.05.0.i.i.i.i.i.i = phi i64 [ %i.aq, %bb.l ], [ %i.ae, %bb.h ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76708)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76709)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76710)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76711)
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !76712, !noundef !44 ; 3 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %"_ZN4core3ptr105drop_in_place$LT$$LP$nickel_lang_core..error..warning..Warning$C$nickel_lang_parser..files..Files$RP$$GT$17h9910dd18718ae896E.exit.i.i.i.i.i.i", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = load i64, ptr %i.as, align 8, !noalias !76713, !noundef !44
  %i.av = add i64 %i.au, -1                       ; 2 uses
  store i64 %i.av, ptr %i.as, align 8, !noalias !76713
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.o, label %"_ZN4core3ptr105drop_in_place$LT$$LP$nickel_lang_core..error..warning..Warning$C$nickel_lang_parser..files..Files$RP$$GT$17h9910dd18718ae896E.exit.i.i.i.i.i.i"

bb.o:                                             ; preds = %bb.n
  tail call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17ha3d18f83ba1e1015E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ar)
  br label %"_ZN4core3ptr105drop_in_place$LT$$LP$nickel_lang_core..error..warning..Warning$C$nickel_lang_parser..files..Files$RP$$GT$17h9910dd18718ae896E.exit.i.i.i.i.i.i"

"_ZN76_$LT$std..sync..mpmc..Receiver$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17h13ab5168fded0e19E.exit.i.i.i": ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %.8.val, i64 528
  %i.ay = atomicrmw xchg ptr %i.ax, i8 1 acq_rel, align 1
  %i.az = icmp eq i8 %i.ay, 0
  br i1 %i.az, label %"_ZN4core3ptr138drop_in_place$LT$std..sync..mpmc..Receiver$LT$$LP$nickel_lang_core..error..warning..Warning$C$nickel_lang_parser..files..Files$RP$$GT$$GT$17h92200957f13d053aE.exit", label %bb.p

bb.p:                                             ; preds = %"_ZN76_$LT$std..sync..mpmc..Receiver$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17h13ab5168fded0e19E.exit.i.i.i"
  tail call fastcc void @"_ZN4core3ptr210drop_in_place$LT$alloc..boxed..Box$LT$std..sync..mpmc..counter..Counter$LT$std..sync..mpmc..array..Channel$LT$$LP$nickel_lang_core..error..warning..Warning$C$nickel_lang_parser..files..Files$RP$$GT$$GT$$GT$$GT$17h24d5932bebb22c67E"(ptr nonnull %.8.val)
  br label %"_ZN4core3ptr138drop_in_place$LT$std..sync..mpmc..Receiver$LT$$LP$nickel_lang_core..error..warning..Warning$C$nickel_lang_parser..files..Files$RP$$GT$$GT$17h92200957f13d053aE.exit"

bb.q:                                             ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %.8.val, i64 392
  %i.bb = atomicrmw sub ptr %i.ba, i64 1 acq_rel, align 8
  %i.bc = icmp eq i64 %i.bb, 1
  br i1 %i.bc, label %bb.r, label %"_ZN4core3ptr138drop_in_place$LT$std..sync..mpmc..Receiver$LT$$LP$nickel_lang_core..error..warning..Warning$C$nickel_lang_parser..files..Files$RP$$GT$$GT$17h92200957f13d053aE.exit"

bb.r:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %.8.val, i64 128 ; 3 uses
  %i.be = atomicrmw or ptr %i.bd, i64 1 seq_cst, align 8
  %i.bf = and i64 %i.be, 1
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.s, label %"_ZN76_$LT$std..sync..mpmc..Receiver$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17h6ea9f4e42c82faf1E.exit.i.i.i"

bb.s:                                             ; preds = %bb.r
  %i.bh = load atomic i64, ptr %i.bd acquire, align 8 ; 2 uses
  %i.bi = and i64 %i.bh, 62
  %.not44.i.i.i.i.i.i = icmp eq i64 %i.bi, 62
  br i1 %.not44.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.s, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i5.i.i
  %.sroa.0.04245.i.i.i.i.i.i = phi i32 [ %i.bm, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i5.i.i ], [ 0, %bb.s ] ; 6 uses
  %i.bj = icmp ult i32 %.sroa.0.04245.i.i.i.i.i.i, 7
  br i1 %i.bj, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  tail call void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i5.i.i

bb.u:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %.not.i.i.i.i.i6.i.i = icmp eq i32 %.sroa.0.04245.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i6.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i5.i.i, label %.lr.ph.i.i.i.i.i7.i.i.preheader

.lr.ph.i.i.i.i.i7.i.i.preheader:                  ; preds = %bb.u
  %i.bk = mul nuw nsw i32 %.sroa.0.04245.i.i.i.i.i.i, %.sroa.0.04245.i.i.i.i.i.i ; 2 uses
  %xtraiter = and i32 %i.bk, 7                    ; 3 uses
  %i.bl = icmp ult i32 %.sroa.0.04245.i.i.i.i.i.i, 3
  br i1 %i.bl, label %.lr.ph.i.i.i.i.i7.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i7.i.i.preheader.new

.lr.ph.i.i.i.i.i7.i.i.preheader.new:              ; preds = %.lr.ph.i.i.i.i.i7.i.i.preheader
  %unroll_iter = and i32 %i.bk, 56
  br label %.lr.ph.i.i.i.i.i7.i.i

.lr.ph.i.i.i.i.i7.i.i:                            ; preds = %.lr.ph.i.i.i.i.i7.i.i, %.lr.ph.i.i.i.i.i7.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.i.i7.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i.i7.i.i ]
  tail call void @llvm.x86.sse2.pause() #66
  tail call void @llvm.x86.sse2.pause() #66
  tail call void @llvm.x86.sse2.pause() #66
  tail call void @llvm.x86.sse2.pause() #66
  tail call void @llvm.x86.sse2.pause() #66
  tail call void @llvm.x86.sse2.pause() #66
  tail call void @llvm.x86.sse2.pause() #66
  tail call void @llvm.x86.sse2.pause() #66
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i5.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i7.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i5.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i7.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i5.i.i, label %.lr.ph.i.i.i.i.i7.i.i.epil.preheader

.lr.ph.i.i.i.i.i7.i.i.epil.preheader:             ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i5.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i7.i.i.preheader
  %lcmp.mod23 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod23)
  br label %.lr.ph.i.i.i.i.i7.i.i.epil

.lr.ph.i.i.i.i.i7.i.i.epil:                       ; preds = %.lr.ph.i.i.i.i.i7.i.i.epil, %.lr.ph.i.i.i.i.i7.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.i.i7.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.i.i7.i.i.epil ]
  tail call void @llvm.x86.sse2.pause() #66
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i5.i.i, label %.lr.ph.i.i.i.i.i7.i.i.epil, !llvm.loop !76692

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i5.i.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i5.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i7.i.i.epil, %bb.u, %bb.t
  %i.bm = add i32 %.sroa.0.04245.i.i.i.i.i.i, 1   ; 2 uses
  %i.bn = load atomic i64, ptr %i.bd acquire, align 8 ; 2 uses
  %i.bo = and i64 %i.bn, 62
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bo, 62
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i5.i.i, %bb.s
  %.sroa.0.0.lcssa.i.i.i.i.i.i = phi i64 [ %i.bh, %bb.s ], [ %i.bn, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i5.i.i ]
  %.sroa.0.042.lcssa.i.i.i.i.i.i = phi i32 [ 0, %bb.s ], [ %i.bm, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i5.i.i ]
  %i.bp = lshr i64 %.sroa.0.0.lcssa.i.i.i.i.i.i, 1 ; 2 uses
  %i.bq = load atomic i64, ptr %.8.val acquire, align 8 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 2 uses
  %i.bs = atomicrmw xchg ptr %i.br, ptr null acq_rel, align 8 ; 2 uses
  %i.bt = lshr i64 %i.bq, 1                       ; 2 uses
  %i.bu = icmp ne i64 %i.bt, %i.bp                ; 2 uses
  %i.bv = icmp eq ptr %i.bs, null
  %or.cond.i.i.i.i.i.i = select i1 %i.bu, i1 %i.bv, i1 false
  br i1 %or.cond.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit27.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i
  %.sroa.011.0.i.i.i.i.i.i = phi ptr [ %i.bs, %._crit_edge.i.i.i.i.i.i ], [ %i.ca, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit27.i.i.i.i.i.i ] ; 2 uses
  br i1 %i.bu, label %.lr.ph51.i.i.i.i.i.i, label %._crit_edge52.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %._crit_edge.i.i.i.i.i.i, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit27.i.i.i.i.i.i
  %.sroa.0.1.i.i.i.i4.i.i = phi i32 [ %i.bz, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit27.i.i.i.i.i.i ], [ %.sroa.0.042.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 6 uses
  %i.bw = icmp ult i32 %.sroa.0.1.i.i.i.i4.i.i, 7
  br i1 %i.bw, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.preheader.i.i.i.i.i.i
  tail call void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit27.i.i.i.i.i.i

bb.w:                                             ; preds = %.preheader.i.i.i.i.i.i
  %.not.i23.i.i.i.i.i.i = icmp eq i32 %.sroa.0.1.i.i.i.i4.i.i, 0
  br i1 %.not.i23.i.i.i.i.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit27.i.i.i.i.i.i, label %.lr.ph.i24.i.i.i.i.i.i.preheader

.lr.ph.i24.i.i.i.i.i.i.preheader:                 ; preds = %bb.w
  %i.bx = mul nuw nsw i32 %.sroa.0.1.i.i.i.i4.i.i, %.sroa.0.1.i.i.i.i4.i.i ; 2 uses
  %xtraiter24 = and i32 %i.bx, 7                  ; 3 uses
  %i.by = icmp ult i32 %.sroa.0.1.i.i.i.i4.i.i, 3
  br i1 %i.by, label %.lr.ph.i24.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i24.i.i.i.i.i.i.preheader.new

.lr.ph.i24.i.i.i.i.i.i.preheader.new:             ; preds = %.lr.ph.i24.i.i.i.i.i.i.preheader
  %unroll_iter28 = and i32 %i.bx, 56
  br label %.lr.ph.i24.i.i.i.i.i.i

.lr.ph.i24.i.i.i.i.i.i:                           ; preds = %.lr.ph.i24.i.i.i.i.i.i, %.lr.ph.i24.i.i.i.i.i.i.preheader.new
  %niter29 = phi i32 [ 0, %.lr.ph.i24.i.i.i.i.i.i.preheader.new ], [ %niter29.next.7, %.lr.ph.i24.i.i.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause() #66
  tail call void @llvm.x86.sse2.pause() #66
  tail call void @llvm.x86.sse2.pause() #66
  tail call void @llvm.x86.sse2.pause() #66
  tail call void @llvm.x86.sse2.pause() #66
  tail call void @llvm.x86.sse2.pause() #66
  tail call void @llvm.x86.sse2.pause() #66
  tail call void @llvm.x86.sse2.pause() #66
  %niter29.next.7 = add i32 %niter29, 8           ; 2 uses
  %niter29.ncmp.7 = icmp eq i32 %niter29.next.7, %unroll_iter28
  br i1 %niter29.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit27.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i24.i.i.i.i.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit27.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i24.i.i.i.i.i.i
  %lcmp.mod26.not = icmp eq i32 %xtraiter24, 0
  br i1 %lcmp.mod26.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit27.i.i.i.i.i.i, label %.lr.ph.i24.i.i.i.i.i.i.epil.preheader

.lr.ph.i24.i.i.i.i.i.i.epil.preheader:            ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit27.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i24.i.i.i.i.i.i.preheader
  %lcmp.mod27 = icmp ne i32 %xtraiter24, 0
  tail call void @llvm.assume(i1 %lcmp.mod27)
  br label %.lr.ph.i24.i.i.i.i.i.i.epil

.lr.ph.i24.i.i.i.i.i.i.epil:                      ; preds = %.lr.ph.i24.i.i.i.i.i.i.epil, %.lr.ph.i24.i.i.i.i.i.i.epil.preheader
  %epil.iter25 = phi i32 [ 0, %.lr.ph.i24.i.i.i.i.i.i.epil.preheader ], [ %epil.iter25.next, %.lr.ph.i24.i.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause() #66
  %epil.iter25.next = add i32 %epil.iter25, 1     ; 2 uses
  %epil.iter25.cmp.not = icmp eq i32 %epil.iter25.next, %xtraiter24
  br i1 %epil.iter25.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit27.i.i.i.i.i.i, label %.lr.ph.i24.i.i.i.i.i.i.epil, !llvm.loop !76693

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit27.i.i.i.i.i.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit27.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i24.i.i.i.i.i.i.epil, %bb.w, %bb.v
  %i.bz = add i32 %.sroa.0.1.i.i.i.i4.i.i, 1
  %i.ca = atomicrmw xchg ptr %i.br, ptr null acq_rel, align 8 ; 2 uses
  %.old2.i.i.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.old2.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i

._crit_edge52.i.i.i.i.i.i:                        ; preds = %"_ZN4core3ptr105drop_in_place$LT$$LP$nickel_lang_core..error..warning..Warning$C$nickel_lang_parser..files..Files$RP$$GT$17h9910dd18718ae896E.exit.i.i.i.i3.i.i", %.loopexit.i.i.i.i.i.i
  %.sroa.011.1.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.011.0.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ], [ %.sroa.011.2.i.i.i.i.i.i, %"_ZN4core3ptr105drop_in_place$LT$$LP$nickel_lang_core..error..warning..Warning$C$nickel_lang_parser..files..Files$RP$$GT$17h9910dd18718ae896E.exit.i.i.i.i3.i.i" ] ; 2 uses
  %.sroa.05.0.lcssa.i.i.i.i.i.i = phi i64 [ %i.bq, %.loopexit.i.i.i.i.i.i ], [ %i.dg, %"_ZN4core3ptr105drop_in_place$LT$$LP$nickel_lang_core..error..warning..Warning$C$nickel_lang_parser..files..Files$RP$$GT$17h9910dd18718ae896E.exit.i.i.i.i3.i.i" ]
  %i.cb = icmp eq ptr %.sroa.011.1.lcssa.i.i.i.i.i.i, null
  br i1 %i.cb, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$20discard_all_messages17hf2dfda197f008ffcE.exit.i.i.i.i.i", label %bb.x

.lr.ph51.i.i.i.i.i.i:                             ; preds = %.loopexit.i.i.i.i.i.i, %"_ZN4core3ptr105drop_in_place$LT$$LP$nickel_lang_core..error..warning..Warning$C$nickel_lang_parser..files..Files$RP$$GT$17h9910dd18718ae896E.exit.i.i.i.i3.i.i"
  %i.cc = phi i64 [ %i.dh, %"_ZN4core3ptr105drop_in_place$LT$$LP$nickel_lang_core..error..warning..Warning$C$nickel_lang_parser..files..Files$RP$$GT$17h9910dd18718ae896E.exit.i.i.i.i3.i.i" ], [ %i.bt, %.loopexit.i.i.i.i.i.i ]
  %.sroa.05.049.i.i.i.i.i.i = phi i64 [ %i.dg, %"_ZN4core3ptr105drop_in_place$LT$$LP$nickel_lang_core..error..warning..Warning$C$nickel_lang_parser..files..Files$RP$$GT$17h9910dd18718ae896E.exit.i.i.i.i3.i.i" ], [ %i.bq, %.loopexit.i.i.i.i.i.i ]
  %.sroa.011.148.i.i.i.i.i.i = phi ptr [ %.sroa.011.2.i.i.i.i.i.i, %"_ZN4core3ptr105drop_in_place$LT$$LP$nickel_lang_core..error..warning..Warning$C$nickel_lang_parser..files..Files$RP$$GT$17h9910dd18718ae896E.exit.i.i.i.i3.i.i" ], [ %.sroa.011.0.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ] ; 8 uses
  %i.cd = and i64 %i.cc, 31                       ; 2 uses
  %.not21.i.i.i.i.i.i = icmp eq i64 %i.cd, 31
  br i1 %.not21.i.i.i.i.i.i, label %bb.y, label %bb.ab

bb.x:                                             ; preds = %._crit_edge52.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.1.lcssa.i.i.i.i.i.i, i64 noundef 2240, i64 noundef 8) #66
  br label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$20discard_all_messages17hf2dfda197f008ffcE.exit.i.i.i.i.i"

bb.y:                                             ; preds = %.lr.ph51.i.i.i.i.i.i
  %i.ce = load atomic ptr, ptr %.sroa.011.148.i.i.i.i.i.i acquire, align 8
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %.lr.ph.i28.i.i.i.i.i.i, label %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$9wait_next17h9b1328182533da9bE.exit.i.i.i.i.i.i"

.lr.ph.i28.i.i.i.i.i.i:                           ; preds = %bb.y, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i.i
  %.sroa.0.02.i29.i.i.i.i.i.i = phi i32 [ %i.cj, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i.i ], [ 0, %bb.y ] ; 6 uses
  %i.cg = icmp ult i32 %.sroa.0.02.i29.i.i.i.i.i.i, 7
  br i1 %i.cg, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i28.i.i.i.i.i.i
  tail call void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i.i

bb.aa:                                            ; preds = %.lr.ph.i28.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %.sroa.0.02.i29.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.aa
  %i.ch = mul nuw nsw i32 %.sroa.0.02.i29.i.i.i.i.i.i, %.sroa.0.02.i29.i.i.i.i.i.i ; 2 uses
  %xtraiter36 = and i32 %i.ch, 7                  ; 3 uses
  %i.ci = icmp ult i32 %.sroa.0.02.i29.i.i.i.i.i.i, 3
  br i1 %i.ci, label %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.preheader.new:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %unroll_iter40 = and i32 %i.ch, 56
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader.new
  %niter41 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader.new ], [ %niter41.next.7, %.lr.ph.i.i.i.i.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause() #66
  tail call void @llvm.x86.sse2.pause() #66
  tail call void @llvm.x86.sse2.pause() #66
  tail call void @llvm.x86.sse2.pause() #66
  tail call void @llvm.x86.sse2.pause() #66
  tail call void @llvm.x86.sse2.pause() #66
  tail call void @llvm.x86.sse2.pause() #66
  tail call void @llvm.x86.sse2.pause() #66
  %niter41.next.7 = add i32 %niter41, 8           ; 2 uses
  %niter41.ncmp.7 = icmp eq i32 %niter41.next.7, %unroll_iter40
  br i1 %niter41.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %lcmp.mod38.not = icmp eq i32 %xtraiter36, 0
  br i1 %lcmp.mod38.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.epil.preheader:            ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %lcmp.mod39 = icmp ne i32 %xtraiter36, 0
  tail call void @llvm.assume(i1 %lcmp.mod39)
  br label %.lr.ph.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.epil:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader
  %epil.iter37 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader ], [ %epil.iter37.next, %.lr.ph.i.i.i.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause() #66
  %epil.iter37.next = add i32 %epil.iter37, 1     ; 2 uses
  %epil.iter37.cmp.not = icmp eq i32 %epil.iter37.next, %xtraiter36
  br i1 %epil.iter37.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.epil, !llvm.loop !76694

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.epil, %bb.aa, %bb.z
  %i.cj = add i32 %.sroa.0.02.i29.i.i.i.i.i.i, 1
  %i.ck = load atomic ptr, ptr %.sroa.011.148.i.i.i.i.i.i acquire, align 8
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %.lr.ph.i28.i.i.i.i.i.i, label %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$9wait_next17h9b1328182533da9bE.exit.i.i.i.i.i.i"

"_ZN3std4sync4mpmc4list14Block$LT$T$GT$9wait_next17h9b1328182533da9bE.exit.i.i.i.i.i.i": ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i.i, %bb.y
  %i.cm = load atomic ptr, ptr %.sroa.011.148.i.i.i.i.i.i acquire, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.148.i.i.i.i.i.i, i64 noundef 2240, i64 noundef 8) #66
  br label %"_ZN4core3ptr105drop_in_place$LT$$LP$nickel_lang_core..error..warning..Warning$C$nickel_lang_parser..files..Files$RP$$GT$17h9910dd18718ae896E.exit.i.i.i.i3.i.i"

bb.ab:                                            ; preds = %.lr.ph51.i.i.i.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.011.148.i.i.i.i.i.i, i64 8
  %i.co = getelementptr inbounds nuw [72 x i8], ptr %i.cn, i64 %i.cd ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 64 ; 2 uses
  %i.cq = load atomic i64, ptr %i.cp acquire, align 8
  %i.cr = and i64 %i.cq, 1
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %.lr.ph.i30.i.i.i.i.i.i, label %"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17h3e9fc871baf75718E.exit.i.i.i.i.i.i"

.lr.ph.i30.i.i.i.i.i.i:                           ; preds = %bb.ab, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i32.i.i.i.i.i.i
  %.sroa.0.02.i31.i.i.i.i.i.i = phi i32 [ %i.cw, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i32.i.i.i.i.i.i ], [ 0, %bb.ab ] ; 6 uses
  %i.ct = icmp ult i32 %.sroa.0.02.i31.i.i.i.i.i.i, 7
  br i1 %i.ct, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i30.i.i.i.i.i.i
  tail call void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i32.i.i.i.i.i.i

bb.ad:                                            ; preds = %.lr.ph.i30.i.i.i.i.i.i
  %.not.i.i33.i.i.i.i.i.i = icmp eq i32 %.sroa.0.02.i31.i.i.i.i.i.i, 0
  br i1 %.not.i.i33.i.i.i.i.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i32.i.i.i.i.i.i, label %.lr.ph.i.i34.i.i.i.i.i.i.preheader

.lr.ph.i.i34.i.i.i.i.i.i.preheader:               ; preds = %bb.ad
  %i.cu = mul nuw nsw i32 %.sroa.0.02.i31.i.i.i.i.i.i, %.sroa.0.02.i31.i.i.i.i.i.i ; 2 uses
  %xtraiter30 = and i32 %i.cu, 7                  ; 3 uses
  %i.cv = icmp ult i32 %.sroa.0.02.i31.i.i.i.i.i.i, 3
  br i1 %i.cv, label %.lr.ph.i.i34.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i34.i.i.i.i.i.i.preheader.new

.lr.ph.i.i34.i.i.i.i.i.i.preheader.new:           ; preds = %.lr.ph.i.i34.i.i.i.i.i.i.preheader
  %unroll_iter34 = and i32 %i.cu, 56
  br label %.lr.ph.i.i34.i.i.i.i.i.i

.lr.ph.i.i34.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i34.i.i.i.i.i.i, %.lr.ph.i.i34.i.i.i.i.i.i.preheader.new
  %niter35 = phi i32 [ 0, %.lr.ph.i.i34.i.i.i.i.i.i.preheader.new ], [ %niter35.next.7, %.lr.ph.i.i34.i.i.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause() #66
  tail call void @llvm.x86.sse2.pause() #66
  tail call void @llvm.x86.sse2.pause() #66
  tail call void @llvm.x86.sse2.pause() #66
  tail call void @llvm.x86.sse2.pause() #66
  tail call void @llvm.x86.sse2.pause() #66
  tail call void @llvm.x86.sse2.pause() #66
  tail call void @llvm.x86.sse2.pause() #66
  %niter35.next.7 = add i32 %niter35, 8           ; 2 uses
  %niter35.ncmp.7 = icmp eq i32 %niter35.next.7, %unroll_iter34
  br i1 %niter35.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i32.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i34.i.i.i.i.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i32.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i34.i.i.i.i.i.i
  %lcmp.mod32.not = icmp eq i32 %xtraiter30, 0
  br i1 %lcmp.mod32.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i32.i.i.i.i.i.i, label %.lr.ph.i.i34.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i34.i.i.i.i.i.i.epil.preheader:          ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i32.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i34.i.i.i.i.i.i.preheader
  %lcmp.mod33 = icmp ne i32 %xtraiter30, 0
  tail call void @llvm.assume(i1 %lcmp.mod33)
  br label %.lr.ph.i.i34.i.i.i.i.i.i.epil

.lr.ph.i.i34.i.i.i.i.i.i.epil:                    ; preds = %.lr.ph.i.i34.i.i.i.i.i.i.epil, %.lr.ph.i.i34.i.i.i.i.i.i.epil.preheader
  %epil.iter31 = phi i32 [ 0, %.lr.ph.i.i34.i.i.i.i.i.i.epil.preheader ], [ %epil.iter31.next, %.lr.ph.i.i34.i.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause() #66
  %epil.iter31.next = add i32 %epil.iter31, 1     ; 2 uses
  %epil.iter31.cmp.not = icmp eq i32 %epil.iter31.next, %xtraiter30
  br i1 %epil.iter31.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i32.i.i.i.i.i.i, label %.lr.ph.i.i34.i.i.i.i.i.i.epil, !llvm.loop !76695

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i32.i.i.i.i.i.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i32.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i34.i.i.i.i.i.i.epil, %bb.ad, %bb.ac
  %i.cw = add i32 %.sroa.0.02.i31.i.i.i.i.i.i, 1
  %i.cx = load atomic i64, ptr %i.cp acquire, align 8
  %i.cy = and i64 %i.cx, 1
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %.lr.ph.i30.i.i.i.i.i.i, label %"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17h3e9fc871baf75718E.exit.i.i.i.i.i.i"

"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17h3e9fc871baf75718E.exit.i.i.i.i.i.i": ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i32.i.i.i.i.i.i, %bb.ab
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76714)
  %i.da = getelementptr inbounds nuw i8, ptr %i.co, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76715)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76716)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76717)
  %i.db = load ptr, ptr %i.da, align 8, !alias.scope !76718, !noundef !44 ; 3 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %"_ZN4core3ptr105drop_in_place$LT$$LP$nickel_lang_core..error..warning..Warning$C$nickel_lang_parser..files..Files$RP$$GT$17h9910dd18718ae896E.exit.i.i.i.i3.i.i", label %bb.ae

bb.ae:                                            ; preds = %"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17h3e9fc871baf75718E.exit.i.i.i.i.i.i"
  %i.dd = load i64, ptr %i.db, align 8, !noalias !76719, !noundef !44
  %i.de = add i64 %i.dd, -1                       ; 2 uses
  store i64 %i.de, ptr %i.db, align 8, !noalias !76719
  %i.df = icmp eq i64 %i.de, 0
  br i1 %i.df, label %bb.af, label %"_ZN4core3ptr105drop_in_place$LT$$LP$nickel_lang_core..error..warning..Warning$C$nickel_lang_parser..files..Files$RP$$GT$17h9910dd18718ae896E.exit.i.i.i.i3.i.i"

bb.af:                                            ; preds = %bb.ae
  tail call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17ha3d18f83ba1e1015E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.da)
  br label %"_ZN4core3ptr105drop_in_place$LT$$LP$nickel_lang_core..error..warning..Warning$C$nickel_lang_parser..files..Files$RP$$GT$17h9910dd18718ae896E.exit.i.i.i.i3.i.i"

"_ZN4core3ptr105drop_in_place$LT$$LP$nickel_lang_core..error..warning..Warning$C$nickel_lang_parser..files..Files$RP$$GT$17h9910dd18718ae896E.exit.i.i.i.i3.i.i": ; preds = %bb.af, %bb.ae, %"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17h3e9fc871baf75718E.exit.i.i.i.i.i.i", %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$9wait_next17h9b1328182533da9bE.exit.i.i.i.i.i.i"
  %.sroa.011.2.i.i.i.i.i.i = phi ptr [ %i.cm, %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$9wait_next17h9b1328182533da9bE.exit.i.i.i.i.i.i" ], [ %.sroa.011.148.i.i.i.i.i.i, %"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17h3e9fc871baf75718E.exit.i.i.i.i.i.i" ], [ %.sroa.011.148.i.i.i.i.i.i, %bb.ae ], [ %.sroa.011.148.i.i.i.i.i.i, %bb.af ] ; 2 uses
  %i.dg = add i64 %.sroa.05.049.i.i.i.i.i.i, 2    ; 3 uses
  %i.dh = lshr i64 %i.dg, 1                       ; 2 uses
  %.not20.i.i.i.i.i.i = icmp eq i64 %i.dh, %i.bp
  br i1 %.not20.i.i.i.i.i.i, label %._crit_edge52.i.i.i.i.i.i, label %.lr.ph51.i.i.i.i.i.i

"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$20discard_all_messages17hf2dfda197f008ffcE.exit.i.i.i.i.i": ; preds = %bb.x, %._crit_edge52.i.i.i.i.i.i
  %i.di = and i64 %.sroa.05.0.lcssa.i.i.i.i.i.i, -2
  store atomic i64 %i.di, ptr %.8.val release, align 8
  br label %"_ZN76_$LT$std..sync..mpmc..Receiver$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17h6ea9f4e42c82faf1E.exit.i.i.i"

"_ZN76_$LT$std..sync..mpmc..Receiver$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17h6ea9f4e42c82faf1E.exit.i.i.i": ; preds = %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$20discard_all_messages17hf2dfda197f008ffcE.exit.i.i.i.i.i", %bb.r
  %i.dj = getelementptr inbounds nuw i8, ptr %.8.val, i64 400
  %i.dk = atomicrmw xchg ptr %i.dj, i8 1 acq_rel, align 1
  %i.dl = icmp eq i8 %i.dk, 0
  br i1 %i.dl, label %"_ZN4core3ptr138drop_in_place$LT$std..sync..mpmc..Receiver$LT$$LP$nickel_lang_core..error..warning..Warning$C$nickel_lang_parser..files..Files$RP$$GT$$GT$17h92200957f13d053aE.exit", label %bb.ag

bb.ag:                                            ; preds = %"_ZN76_$LT$std..sync..mpmc..Receiver$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17h6ea9f4e42c82faf1E.exit.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  invoke fastcc void @"_ZN4core3ptr184drop_in_place$LT$std..sync..mpmc..counter..Counter$LT$std..sync..mpmc..list..Channel$LT$$LP$nickel_lang_core..error..warning..Warning$C$nickel_lang_parser..files..Files$RP$$GT$$GT$$GT$17hf170b165e0a22a01E"(ptr noalias noundef nonnull align 128 dereferenceable(512) %.8.val)
          to label %"_ZN4core3ptr209drop_in_place$LT$alloc..boxed..Box$LT$std..sync..mpmc..counter..Counter$LT$std..sync..mpmc..list..Channel$LT$$LP$nickel_lang_core..error..warning..Warning$C$nickel_lang_parser..files..Files$RP$$GT$$GT$$GT$$GT$17h431f95ea591f3809E.exit.i.i.i" unwind label %bb.ah

common.resume.i.i:                                ; preds = %bb.al, %bb.ah
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.dm, %bb.ah ], [ %i.dt, %bb.al ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.dm = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 512, i64 noundef 128) #66
  br label %common.resume.i.i

"_ZN4core3ptr209drop_in_place$LT$alloc..boxed..Box$LT$std..sync..mpmc..counter..Counter$LT$std..sync..mpmc..list..Channel$LT$$LP$nickel_lang_core..error..warning..Warning$C$nickel_lang_parser..files..Files$RP$$GT$$GT$$GT$$GT$17h431f95ea591f3809E.exit.i.i.i": ; preds = %bb.ag
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 512, i64 noundef 128) #66
  br label %"_ZN4core3ptr138drop_in_place$LT$std..sync..mpmc..Receiver$LT$$LP$nickel_lang_core..error..warning..Warning$C$nickel_lang_parser..files..Files$RP$$GT$$GT$17h92200957f13d053aE.exit"

bb.ai:                                            ; preds = %bb.a
  %i.dn = getelementptr inbounds nuw i8, ptr %.8.val, i64 120
  %i.do = atomicrmw sub ptr %i.dn, i64 1 acq_rel, align 8
  %i.dp = icmp eq i64 %i.do, 1
  br i1 %i.dp, label %bb.aj, label %"_ZN4core3ptr138drop_in_place$LT$std..sync..mpmc..Receiver$LT$$LP$nickel_lang_core..error..warning..Warning$C$nickel_lang_parser..files..Files$RP$$GT$$GT$17h92200957f13d053aE.exit"

bb.aj:                                            ; preds = %bb.ai
  tail call fastcc void @"_ZN3std4sync4mpmc4zero16Channel$LT$T$GT$10disconnect17hac0cfad0b3a0262dE"(ptr noundef nonnull align 8 %.8.val)
  %i.dq = getelementptr inbounds nuw i8, ptr %.8.val, i64 128
  %i.dr = atomicrmw xchg ptr %i.dq, i8 1 acq_rel, align 1
  %i.ds = icmp eq i8 %i.dr, 0
  br i1 %i.ds, label %"_ZN4core3ptr138drop_in_place$LT$std..sync..mpmc..Receiver$LT$$LP$nickel_lang_core..error..warning..Warning$C$nickel_lang_parser..files..Files$RP$$GT$$GT$17h92200957f13d053aE.exit", label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  invoke fastcc void @"_ZN4core3ptr88drop_in_place$LT$std..sync..poison..mutex..Mutex$LT$std..sync..mpmc..zero..Inner$GT$$GT$17h4db03a67fbec786cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(136) %.8.val)
          to label %"_ZN4core3ptr209drop_in_place$LT$alloc..boxed..Box$LT$std..sync..mpmc..counter..Counter$LT$std..sync..mpmc..zero..Channel$LT$$LP$nickel_lang_core..error..warning..Warning$C$nickel_lang_parser..files..Files$RP$$GT$$GT$$GT$$GT$17h456c21e0f2d974e2E.exit.i.i.i" unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dt = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 136, i64 noundef 8) #66
  br label %common.resume.i.i

"_ZN4core3ptr209drop_in_place$LT$alloc..boxed..Box$LT$std..sync..mpmc..counter..Counter$LT$std..sync..mpmc..zero..Channel$LT$$LP$nickel_lang_core..error..warning..Warning$C$nickel_lang_parser..files..Files$RP$$GT$$GT$$GT$$GT$17h456c21e0f2d974e2E.exit.i.i.i": ; preds = %bb.ak
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 136, i64 noundef 8) #66
  br label %"_ZN4core3ptr138drop_in_place$LT$std..sync..mpmc..Receiver$LT$$LP$nickel_lang_core..error..warning..Warning$C$nickel_lang_parser..files..Files$RP$$GT$$GT$17h92200957f13d053aE.exit"

"_ZN4core3ptr138drop_in_place$LT$std..sync..mpmc..Receiver$LT$$LP$nickel_lang_core..error..warning..Warning$C$nickel_lang_parser..files..Files$RP$$GT$$GT$17h92200957f13d053aE.exit": ; preds = %bb.b, %"_ZN76_$LT$std..sync..mpmc..Receiver$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17h13ab5168fded0e19E.exit.i.i.i", %bb.p, %bb.q, %"_ZN76_$LT$std..sync..mpmc..Receiver$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17h6ea9f4e42c82faf1E.exit.i.i.i", %"_ZN4core3ptr209drop_in_place$LT$alloc..boxed..Box$LT$std..sync..mpmc..counter..Counter$LT$std..sync..mpmc..list..Channel$LT$$LP$nickel_lang_core..error..warning..Warning$C$nickel_lang_parser..files..Files$RP$$GT$$GT$$GT$$GT$17h431f95ea591f3809E.exit.i.i.i", %bb.ai, %bb.aj, %"_ZN4core3ptr209drop_in_place$LT$alloc..boxed..Box$LT$std..sync..mpmc..counter..Counter$LT$std..sync..mpmc..zero..Channel$LT$$LP$nickel_lang_core..error..warning..Warning$C$nickel_lang_parser..files..Files$RP$$GT$$GT$$GT$$GT$17h456c21e0f2d974e2E.exit.i.i.i"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr138drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..rwlock..RwLockWriteGuard$LT$nls..contracts..LocalConfigs$GT$$GT$$GT$17hda7a5d96536dd06aE"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !44, !align !50, !noundef !44 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i8, ptr %i.a, align 8, !range !45, !noundef !44
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.c = trunc nuw i8 %.val1 to i1
  br i1 %i.c, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.e = and i64 %i.d, 9223372036854775807
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.c, !prof !46

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.g, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.b monotonic, align 8
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.h = atomicrmw sub ptr %.val, i32 1073741823 release, align 4
  %i.i = add i32 %i.h, -1073741823                ; 2 uses
  %or.cond.i.i = icmp ult i32 %i.i, 1073741824
  br i1 %or.cond.i.i, label %"_ZN4core3ptr100drop_in_place$LT$std..sync..poison..rwlock..RwLockWriteGuard$LT$nls..contracts..LocalConfigs$GT$$GT$17h0ef6c268eeed7dc6E.exit", label %bb.e, !prof !104

bb.e:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i
  tail call void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 %.val, i32 noundef %i.i)
  br label %"_ZN4core3ptr100drop_in_place$LT$std..sync..poison..rwlock..RwLockWriteGuard$LT$nls..contracts..LocalConfigs$GT$$GT$17h0ef6c268eeed7dc6E.exit"

"_ZN4core3ptr100drop_in_place$LT$std..sync..poison..rwlock..RwLockWriteGuard$LT$nls..contracts..LocalConfigs$GT$$GT$17h0ef6c268eeed7dc6E.exit": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr139drop_in_place$LT$alloc..vec..Vec$LT$$LP$nickel_lang_core..eval..value..NickelValue$C$nickel_lang_core..eval..value..NickelValue$RP$$GT$$GT$17h2ed3175943f6e618E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !44, !noundef !44 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !44 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h259a45e100415d4dE.exit", label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %.val1
  br i1 %i.d, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h259a45e100415d4dE.exit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i7 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.0.0.i.i7
  %i.f = add i64 %.sroa.0.0.i.i7, 1               ; 4 uses
  invoke fastcc void @"_ZN4core3ptr116drop_in_place$LT$$LP$nickel_lang_core..eval..value..NickelValue$C$nickel_lang_core..eval..value..NickelValue$RP$$GT$17h235b3ce030ec4557E"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.e)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph9
  %i.g = add i64 %.sroa.0.1.i.i8, 1               ; 2 uses
  %i.h = icmp eq i64 %i.g, %.val1
  br i1 %i.h, label %.body, label %.lr.ph9

bb.d:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
end_hunk_3
begin_hunk_4_@"_ZN92_$LT$$RF$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_core..typecheck..Walk$GT$4walk17hb8a73bef5480a03bE":bb.a
  %i.t = icmp ne i64 %.val.i2.i.i, 0
  tail call void @llvm.assume(i1 %i.t)
  %i.u = add i64 %.val.i2.i.i, 1                  ; 2 uses
  store i64 %i.u, ptr %.val1.i, align 8, !noalias !116032
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.g, label %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i", !prof !49

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.trap()
  unreachable

"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i": ; preds = %bb.f, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h9119bb650ae6edb9E.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val2.i = load ptr, ptr %i.w, align 8, !alias.scope !116031, !noalias !116030, !nonnull !44, !noundef !44 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val3.i = load ptr, ptr %i.x, align 8, !alias.scope !116031, !noalias !116030 ; 4 uses
  %.val.i.i4.i = load i64, ptr %.val2.i, align 8, !noalias !116032, !noundef !44 ; 2 uses
  %i.y = icmp ne i64 %.val.i.i4.i, 0
  tail call void @llvm.assume(i1 %i.y)
  %i.z = add i64 %.val.i.i4.i, 1                  ; 2 uses
  store i64 %i.z, ptr %.val2.i, align 8, !noalias !116032
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.h, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h842366df0617adc0E.exit.i.i, !prof !49

bb.h:                                             ; preds = %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i"
  tail call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h842366df0617adc0E.exit.i.i: ; preds = %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i"
  %.not.i5.i = icmp eq ptr %.val3.i, null
  br i1 %.not.i5.i, label %bb.n, label %bb.i

bb.i:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h842366df0617adc0E.exit.i.i
  %.val.i2.i6.i = load i64, ptr %.val3.i, align 8, !noalias !116032, !noundef !44 ; 2 uses
  %i.ab = icmp ne i64 %.val.i2.i6.i, 0
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = add i64 %.val.i2.i6.i, 1                ; 2 uses
  store i64 %i.ac, ptr %.val3.i, align 8, !noalias !116032
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.j, label %bb.n, !prof !49

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  %i.af = call fastcc noundef align 8 ptr @"_ZN98_$LT$$RF$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$nickel_lang_core..typecheck..Walk$GT$4walk17hba5a43c18ee4c1caE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ae, ptr noalias noundef align 8 dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.c, ptr noalias noundef align 8 dereferenceable(96) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.m

bb.l:                                             ; preds = %bb.a, %bb.a
  br label %bb.r

bb.m:                                             ; preds = %bb.v, %bb.r, %bb.k, %bb.q, %bb.p, %bb.c
  %.sroa.0.0 = phi ptr [ %i.m, %bb.c ], [ %i.am, %bb.p ], [ %i.ap, %bb.q ], [ %i.as, %bb.r ], [ %i.af, %bb.k ], [ null, %bb.v ]
  ret ptr %.sroa.0.0

bb.n:                                             ; preds = %bb.i, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h842366df0617adc0E.exit.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ah = load i16, ptr %i.ag, align 8, !range !94, !alias.scope !116031, !noalias !116030, !noundef !44
  store ptr %.val.i, ptr %i.e, align 8, !alias.scope !116030, !noalias !116031
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.val1.i, ptr %i.ai, align 8, !alias.scope !116030, !noalias !116031
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.val2.i, ptr %i.aj, align 8, !alias.scope !116030, !noalias !116031
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %.val3.i, ptr %i.ak, align 8, !alias.scope !116030, !noalias !116031
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i16 %i.ah, ptr %i.al, align 8, !alias.scope !116030, !noalias !116031
  %i.am = invoke fastcc noundef align 8 ptr @"_ZN92_$LT$$RF$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_core..typecheck..Walk$GT$4walk17hb8a73bef5480a03bE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.o, ptr noalias noundef align 8 dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.e, ptr noalias noundef align 8 dereferenceable(96) %3)
          to label %bb.o unwind label %bb.t       ; 2 uses

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.not = icmp eq ptr %i.am, null
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..Context$GT$17h16b7864ffe072dc7E"(ptr noalias noundef align 8 dereferenceable(40) %2)
  br label %bb.m

bb.q:                                             ; preds = %bb.o
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !44, !align !50, !noundef !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  %i.ap = call fastcc noundef align 8 ptr @"_ZN92_$LT$$RF$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_core..typecheck..Walk$GT$4walk17hb8a73bef5480a03bE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ao, ptr noalias noundef align 8 dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.d, ptr noalias noundef align 8 dereferenceable(96) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.m

bb.r:                                             ; preds = %bb.a, %bb.l
  %.sink = phi i64 [ 56, %bb.a ], [ 8, %bb.l ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !44, !align !50, !noundef !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  %i.as = call fastcc noundef align 8 ptr @"_ZN92_$LT$$RF$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_core..typecheck..Walk$GT$4walk17hb8a73bef5480a03bE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ar, ptr noalias noundef align 8 dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef align 8 dereferenceable(96) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.s:                                             ; preds = %bb.t
  resume { ptr, i32 } %lpad.thr_comm.split-lp

bb.t:                                             ; preds = %bb.n
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..Context$GT$17h16b7864ffe072dc7E"(ptr noalias noundef align 8 dereferenceable(40) %2) #77
          to label %bb.s unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

bb.v:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  tail call fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..Context$GT$17h16b7864ffe072dc7E"(ptr noalias noundef align 8 dereferenceable(40) %2)
  br label %bb.m
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN92_$LT$std..sync..mpsc..TryIter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hae1a05ecc9f44400E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr nofree readonly captures(none) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.738.i.i.sroa.5 = alloca [59 x i8], align 1 ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.8.i.i = alloca [16 x i8], align 8        ; 5 uses
  %.sroa.416.i.i.sroa.4 = alloca [59 x i8], align 1 ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 7 uses
  %.sroa.64.i.i.sroa.5 = alloca [59 x i8], align 1 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val = load i64, ptr %.0.val, align 8, !range !71, !noundef !44
  %i.e = getelementptr i8, ptr %.0.val, i64 8
  %.val1 = load ptr, ptr %i.e, align 8            ; 28 uses
  switch i64 %.val, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.v
    i64 2, label %bb.az
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.f = load atomic i64, ptr %.val1 monotonic, align 8, !noalias !116105
  %i.g = getelementptr inbounds nuw i8, ptr %.val1, i64 400 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val1, i64 392 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 408
  %i.j = getelementptr inbounds nuw i8, ptr %.val1, i64 416
  %i.k = getelementptr inbounds nuw i8, ptr %.val1, i64 128
  %i.l = getelementptr inbounds nuw i8, ptr %.val1, i64 384
  br label %bb.c

bb.c:                                             ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i, %bb.b
  %.sroa.0.028.i.i.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.1.i.i.i, %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i ] ; 14 uses
  %.sroa.01.0.i.i.i = phi i64 [ %i.f, %bb.b ], [ %i.as, %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i ] ; 7 uses
  %i.m = load i64, ptr %i.g, align 16, !noalias !116105, !noundef !44
  %i.n = add i64 %i.m, -1
  %i.o = and i64 %i.n, %.sroa.01.0.i.i.i          ; 3 uses
  %i.p = load i64, ptr %i.h, align 8, !noalias !116105, !noundef !44
  %i.q = sub i64 0, %i.p
  %i.r = and i64 %.sroa.01.0.i.i.i, %i.q
  %i.s = load ptr, ptr %i.i, align 8, !noalias !116105, !nonnull !44, !align !50, !noundef !44
  %i.t = load i64, ptr %i.j, align 16, !noalias !116105, !noundef !44
  %i.u = icmp ult i64 %i.o, %i.t
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw [72 x i8], ptr %i.s, i64 %i.o ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.x = load atomic i64, ptr %i.w acquire, align 8, !noalias !116105 ; 3 uses
  %i.y = add i64 %.sroa.01.0.i.i.i, 1
  %i.z = icmp eq i64 %i.y, %i.x
  br i1 %i.z, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = icmp eq i64 %i.x, %.sroa.01.0.i.i.i
  br i1 %i.aa, label %bb.i, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ab = add nuw i64 %i.o, 1
  %i.ac = load i64, ptr %i.l, align 128, !noalias !116105, !noundef !44
  %i.ad = icmp ult i64 %i.ab, %i.ac
  br i1 %i.ad, label %bb.m, label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.ae = icmp ult i32 %.sroa.0.028.i.i.i, 7
  br i1 %i.ae, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E(), !noalias !116105
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %.not.i.i.i.i = icmp eq i32 %.sroa.0.028.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.h
  %i.af = mul nuw nsw i32 %.sroa.0.028.i.i.i, %.sroa.0.028.i.i.i ; 2 uses
  %xtraiter135 = and i32 %i.af, 7                 ; 3 uses
  %i.ag = icmp ult i32 %.sroa.0.028.i.i.i, 3
  br i1 %i.ag, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter139 = and i32 %i.af, 56
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %niter140 = phi i32 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter140.next.7, %.lr.ph.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116105
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116105
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116105
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116105
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116105
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116105
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116105
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116105
  %niter140.next.7 = add i32 %niter140, 8         ; 2 uses
  %niter140.ncmp.7 = icmp eq i32 %niter140.next.7, %unroll_iter139
  br i1 %niter140.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod137.not = icmp eq i32 %xtraiter135, 0
  br i1 %lcmp.mod137.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %lcmp.mod138 = icmp ne i32 %xtraiter135, 0
  tail call void @llvm.assume(i1 %lcmp.mod138)
  br label %.lr.ph.i.i.i.i.epil

.lr.ph.i.i.i.i.epil:                              ; preds = %.lr.ph.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader
  %epil.iter136 = phi i32 [ 0, %.lr.ph.i.i.i.i.epil.preheader ], [ %epil.iter136.next, %.lr.ph.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116105
  %epil.iter136.next = add i32 %epil.iter136, 1   ; 2 uses
  %epil.iter136.cmp.not = icmp eq i32 %epil.iter136.next, %xtraiter135
  br i1 %epil.iter136.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i, label %.lr.ph.i.i.i.i.epil, !llvm.loop !116039

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.epil, %bb.h, %bb.g
  %i.ah = add i32 %.sroa.0.028.i.i.i, 1
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i

bb.i:                                             ; preds = %bb.d
  fence seq_cst
  %i.ai = load atomic i64, ptr %i.k monotonic, align 16, !noalias !116105 ; 2 uses
  %i.aj = load i64, ptr %i.g, align 16, !noalias !116105, !noundef !44 ; 2 uses
  %i.ak = xor i64 %i.aj, -1
  %i.al = and i64 %i.ai, %i.ak
  %i.am = icmp eq i64 %i.al, %.sroa.01.0.i.i.i
  br i1 %i.am, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.0.0.i.i.i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.028.i.i.i, i32 6) ; 2 uses
  %i.an = mul nuw nsw i32 %.sroa.0.0.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i ; 2 uses
  %.not.i11.i.i.i = icmp eq i32 %.sroa.0.028.i.i.i, 0
  br i1 %.not.i11.i.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i, label %.lr.ph.i12.i.i.i.preheader

.lr.ph.i12.i.i.i.preheader:                       ; preds = %bb.j
  %xtraiter141 = and i32 %i.an, 5                 ; 3 uses
  %i.ao = icmp ult i32 %.sroa.0.028.i.i.i, 3
  br i1 %i.ao, label %.lr.ph.i12.i.i.i.epil.preheader, label %.lr.ph.i12.i.i.i.preheader.new

.lr.ph.i12.i.i.i.preheader.new:                   ; preds = %.lr.ph.i12.i.i.i.preheader
  %unroll_iter145 = and i32 %i.an, 56
  br label %.lr.ph.i12.i.i.i

._crit_edge.loopexit.i.i.i.i.unr-lcssa:           ; preds = %.lr.ph.i12.i.i.i
  %lcmp.mod143.not = icmp eq i32 %xtraiter141, 0
  br i1 %lcmp.mod143.not, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i12.i.i.i.epil.preheader

.lr.ph.i12.i.i.i.epil.preheader:                  ; preds = %._crit_edge.loopexit.i.i.i.i.unr-lcssa, %.lr.ph.i12.i.i.i.preheader
  %lcmp.mod144 = icmp ne i32 %xtraiter141, 0
  tail call void @llvm.assume(i1 %lcmp.mod144)
  br label %.lr.ph.i12.i.i.i.epil

.lr.ph.i12.i.i.i.epil:                            ; preds = %.lr.ph.i12.i.i.i.epil, %.lr.ph.i12.i.i.i.epil.preheader
  %epil.iter142 = phi i32 [ 0, %.lr.ph.i12.i.i.i.epil.preheader ], [ %epil.iter142.next, %.lr.ph.i12.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116105
  %epil.iter142.next = add i32 %epil.iter142, 1   ; 2 uses
  %epil.iter142.cmp.not = icmp eq i32 %epil.iter142.next, %xtraiter141
  br i1 %epil.iter142.cmp.not, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i12.i.i.i.epil, !llvm.loop !116040

._crit_edge.loopexit.i.i.i.i:                     ; preds = %.lr.ph.i12.i.i.i.epil, %._crit_edge.loopexit.i.i.i.i.unr-lcssa
  %i.ap = add i32 %.sroa.0.028.i.i.i, 1
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i

.lr.ph.i12.i.i.i:                                 ; preds = %.lr.ph.i12.i.i.i, %.lr.ph.i12.i.i.i.preheader.new
  %niter146 = phi i32 [ 0, %.lr.ph.i12.i.i.i.preheader.new ], [ %niter146.next.7, %.lr.ph.i12.i.i.i ]
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116105
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116105
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116105
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116105
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116105
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116105
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116105
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116105
  %niter146.next.7 = add i32 %niter146, 8         ; 2 uses
  %niter146.ncmp.7 = icmp eq i32 %niter146.next.7, %unroll_iter145
  br i1 %niter146.ncmp.7, label %._crit_edge.loopexit.i.i.i.i.unr-lcssa, label %.lr.ph.i12.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.aq = and i64 %i.aj, %i.ai
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %"_ZN4core3ptr165drop_in_place$LT$core..result..Result$LT$$LP$nickel_lang_core..error..warning..Warning$C$nickel_lang_parser..files..Files$RP$$C$std..sync..mpsc..TryRecvError$GT$$GT$17hdda8a19f8a20f361E.exit", label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4read17h923d58c0622f6d0fE.exit.thread.i.i"

_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i: ; preds = %._crit_edge.loopexit.i20.i.i.i, %bb.n, %._crit_edge.loopexit.i.i.i.i, %bb.j, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i
  %.sroa.0.1.i.i.i = phi i32 [ %i.ah, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i ], [ 1, %bb.n ], [ %i.ay, %._crit_edge.loopexit.i20.i.i.i ], [ %i.ap, %._crit_edge.loopexit.i.i.i.i ], [ 1, %bb.j ]
  %i.as = load atomic i64, ptr %.val1 monotonic, align 16, !noalias !116105
  br label %bb.c

bb.l:                                             ; preds = %bb.e
  %i.at = load i64, ptr %i.h, align 8, !noalias !116105, !noundef !44
  %i.au = add i64 %i.at, %i.r
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.e
  %.sroa.09.0.i.i.i = phi i64 [ %i.au, %bb.l ], [ %i.x, %bb.e ]
  %i.av = cmpxchg weak ptr %.val1, i64 %.sroa.01.0.i.i.i, i64 %.sroa.09.0.i.i.i seq_cst monotonic, align 8, !noalias !116105
  %.sroa.18.0.in.i.i.i.i = extractvalue { i64, i1 } %i.av, 1
  br i1 %.sroa.18.0.in.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.i.i15.i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.028.i.i.i, i32 6) ; 2 uses
  %i.aw = mul nuw nsw i32 %.sroa.0.0.i.i15.i.i.i, %.sroa.0.0.i.i15.i.i.i ; 2 uses
  %.not.i16.i.i.i = icmp eq i32 %.sroa.0.028.i.i.i, 0
  br i1 %.not.i16.i.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i, label %.lr.ph.i17.i.i.i.preheader

.lr.ph.i17.i.i.i.preheader:                       ; preds = %bb.n
  %xtraiter147 = and i32 %i.aw, 5                 ; 3 uses
  %i.ax = icmp ult i32 %.sroa.0.028.i.i.i, 3
  br i1 %i.ax, label %.lr.ph.i17.i.i.i.epil.preheader, label %.lr.ph.i17.i.i.i.preheader.new

.lr.ph.i17.i.i.i.preheader.new:                   ; preds = %.lr.ph.i17.i.i.i.preheader
  %unroll_iter151 = and i32 %i.aw, 56
  br label %.lr.ph.i17.i.i.i

._crit_edge.loopexit.i20.i.i.i.unr-lcssa:         ; preds = %.lr.ph.i17.i.i.i
  %lcmp.mod149.not = icmp eq i32 %xtraiter147, 0
  br i1 %lcmp.mod149.not, label %._crit_edge.loopexit.i20.i.i.i, label %.lr.ph.i17.i.i.i.epil.preheader

.lr.ph.i17.i.i.i.epil.preheader:                  ; preds = %._crit_edge.loopexit.i20.i.i.i.unr-lcssa, %.lr.ph.i17.i.i.i.preheader
  %lcmp.mod150 = icmp ne i32 %xtraiter147, 0
  tail call void @llvm.assume(i1 %lcmp.mod150)
  br label %.lr.ph.i17.i.i.i.epil

.lr.ph.i17.i.i.i.epil:                            ; preds = %.lr.ph.i17.i.i.i.epil, %.lr.ph.i17.i.i.i.epil.preheader
  %epil.iter148 = phi i32 [ 0, %.lr.ph.i17.i.i.i.epil.preheader ], [ %epil.iter148.next, %.lr.ph.i17.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116105
  %epil.iter148.next = add i32 %epil.iter148, 1   ; 2 uses
  %epil.iter148.cmp.not = icmp eq i32 %epil.iter148.next, %xtraiter147
  br i1 %epil.iter148.cmp.not, label %._crit_edge.loopexit.i20.i.i.i, label %.lr.ph.i17.i.i.i.epil, !llvm.loop !116041

._crit_edge.loopexit.i20.i.i.i:                   ; preds = %.lr.ph.i17.i.i.i.epil, %._crit_edge.loopexit.i20.i.i.i.unr-lcssa
  %i.ay = add i32 %.sroa.0.028.i.i.i, 1
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i

.lr.ph.i17.i.i.i:                                 ; preds = %.lr.ph.i17.i.i.i, %.lr.ph.i17.i.i.i.preheader.new
  %niter152 = phi i32 [ 0, %.lr.ph.i17.i.i.i.preheader.new ], [ %niter152.next.7, %.lr.ph.i17.i.i.i ]
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116105
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116105
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116105
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116105
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116105
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116105
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116105
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116105
  %niter152.next.7 = add i32 %niter152, 8         ; 2 uses
  %niter152.ncmp.7 = icmp eq i32 %niter152.next.7, %unroll_iter151
  br i1 %niter152.ncmp.7, label %._crit_edge.loopexit.i20.i.i.i.unr-lcssa, label %.lr.ph.i17.i.i.i

"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4read17h923d58c0622f6d0fE.exit.thread.i.i": ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.64.i.i.sroa.5)
  br label %bb.u

bb.o:                                             ; preds = %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.ba = load i64, ptr %i.h, align 8, !noalias !116105, !noundef !44
  %i.bb = add i64 %i.ba, %.sroa.01.0.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.64.i.i.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !116106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.v, i64 64, i1 false), !noalias !116106
  store atomic i64 %i.bb, ptr %i.az release, align 8, !noalias !116106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false), !noalias !116106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bc = getelementptr inbounds nuw i8, ptr %.val1, i64 256
  invoke fastcc void @_ZN3std4sync4mpmc5waker9SyncWaker6notify17hb84be3c8ed2df7a5E(ptr noundef nonnull align 8 %i.bc)
          to label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4read17h923d58c0622f6d0fE.exit.i.i" unwind label %bb.p, !noalias !116106

bb.p:                                             ; preds = %bb.o
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116107)
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116109)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116110)
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !116111, !noalias !116106, !noundef !44 ; 3 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %common.resume.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bh = load i64, ptr %i.bf, align 8, !noalias !116112, !noundef !44
  %i.bi = add i64 %i.bh, -1                       ; 2 uses
  store i64 %i.bi, ptr %i.bf, align 8, !noalias !116112
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %bb.r, label %common.resume.i

bb.r:                                             ; preds = %bb.q
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17ha3d18f83ba1e1015E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.be)
          to label %common.resume.i unwind label %bb.s, !noalias !116106

bb.s:                                             ; preds = %bb.r
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !116106
  unreachable

common.resume.i:                                  ; preds = %bb.ci, %bb.bt, %bb.bs, %bb.be, %bb.r, %bb.q, %bb.p
  %common.resume.op.i = phi { ptr, i32 } [ %i.bd, %bb.p ], [ %i.bd, %bb.r ], [ %i.bd, %bb.q ], [ %i.fk, %bb.be ], [ %lpad.phi.i.i, %bb.bt ], [ %i.ij, %bb.ci ], [ %lpad.phi.i.i, %bb.bs ]
  resume { ptr, i32 } %common.resume.op.i

"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4read17h923d58c0622f6d0fE.exit.i.i": ; preds = %bb.o
  %.sroa.02.0.copyload3.i.i = load i32, ptr %i.d, align 8, !noalias !116113 ; 2 uses
  %.sroa.64.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.sroa.64.i.i.sroa.0.0.copyload = load i8, ptr %.sroa.64.0..sroa_idx5.i.i, align 4, !noalias !116113
  %.sroa.64.i.i.sroa.5.0..sroa.64.0..sroa_idx5.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(59) %.sroa.64.i.i.sroa.5, ptr noundef nonnull align 1 dereferenceable(59) %.sroa.64.i.i.sroa.5.0..sroa.64.0..sroa_idx5.i.i.sroa_idx, i64 59, i1 false), !noalias !116113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !116106
  %i.bl = icmp eq i32 %.sroa.02.0.copyload3.i.i, 3
  br i1 %i.bl, label %bb.u, label %bb.t

bb.t:                                             ; preds = %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4read17h923d58c0622f6d0fE.exit.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(59) %.sroa.738.i.i.sroa.5, ptr noundef nonnull align 1 dereferenceable(59) %.sroa.64.i.i.sroa.5, i64 59, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4read17h923d58c0622f6d0fE.exit.thread.i.i", %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4read17h923d58c0622f6d0fE.exit.i.i", %bb.t
  %.sroa.10.0 = phi i8 [ %.sroa.64.i.i.sroa.0.0.copyload, %bb.t ], [ 1, %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4read17h923d58c0622f6d0fE.exit.i.i" ], [ 1, %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4read17h923d58c0622f6d0fE.exit.thread.i.i" ]
  %.sroa.02.0.copyload3.sink.i.i = phi i32 [ %.sroa.02.0.copyload3.i.i, %bb.t ], [ 3, %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4read17h923d58c0622f6d0fE.exit.i.i" ], [ 3, %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4read17h923d58c0622f6d0fE.exit.thread.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.64.i.i.sroa.5)
  br label %"_ZN3std4sync4mpmc17Receiver$LT$T$GT$8try_recv17h1b153a0b1fd1a217E.exit"

bb.v:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.416.i.i.sroa.4)
  %i.bm = load atomic i64, ptr %.val1 acquire, align 8, !noalias !116114
  %i.bn = getelementptr inbounds nuw i8, ptr %.val1, i64 8 ; 3 uses
  %i.bo = load atomic ptr, ptr %i.bn acquire, align 8, !noalias !116114
  %i.bp = getelementptr inbounds nuw i8, ptr %.val1, i64 128
  br label %bb.w

bb.w:                                             ; preds = %.backedge.i.i.i, %bb.v
  %.sroa.0.034.i.i.i = phi i32 [ 0, %bb.v ], [ %.sroa.0.034.be.i.i.i, %.backedge.i.i.i ] ; 16 uses
  %.sroa.06.0.i.i.i = phi ptr [ %i.bo, %bb.v ], [ %i.cb, %.backedge.i.i.i ] ; 8 uses
  %.sroa.01.0.i.i1.i = phi i64 [ %i.bm, %bb.v ], [ %i.ca, %.backedge.i.i.i ] ; 5 uses
  %i.bq = lshr i64 %.sroa.01.0.i.i1.i, 1          ; 2 uses
  %i.br = and i64 %i.bq, 31                       ; 5 uses
  %i.bs = icmp eq i64 %i.br, 31
  br i1 %i.bs, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bt = add i64 %.sroa.01.0.i.i1.i, 2           ; 2 uses
  %i.bu = and i64 %.sroa.01.0.i.i1.i, 1
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %bb.ab, label %bb.ae

bb.y:                                             ; preds = %bb.w
  %i.bw = icmp ult i32 %.sroa.0.034.i.i.i, 7
  br i1 %i.bw, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E(), !noalias !116114
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i6.i

bb.aa:                                            ; preds = %bb.y
  %.not.i.i.i7.i = icmp eq i32 %.sroa.0.034.i.i.i, 0
  br i1 %.not.i.i.i7.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i6.i, label %.lr.ph.i.i.i8.i.preheader

.lr.ph.i.i.i8.i.preheader:                        ; preds = %bb.aa
  %i.bx = mul nuw nsw i32 %.sroa.0.034.i.i.i, %.sroa.0.034.i.i.i ; 2 uses
  %xtraiter117 = and i32 %i.bx, 7                 ; 3 uses
  %i.by = icmp ult i32 %.sroa.0.034.i.i.i, 3
  br i1 %i.by, label %.lr.ph.i.i.i8.i.epil.preheader, label %.lr.ph.i.i.i8.i.preheader.new

.lr.ph.i.i.i8.i.preheader.new:                    ; preds = %.lr.ph.i.i.i8.i.preheader
  %unroll_iter121 = and i32 %i.bx, 56
  br label %.lr.ph.i.i.i8.i

.lr.ph.i.i.i8.i:                                  ; preds = %.lr.ph.i.i.i8.i, %.lr.ph.i.i.i8.i.preheader.new
  %niter122 = phi i32 [ 0, %.lr.ph.i.i.i8.i.preheader.new ], [ %niter122.next.7, %.lr.ph.i.i.i8.i ]
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  %niter122.next.7 = add i32 %niter122, 8         ; 2 uses
  %niter122.ncmp.7 = icmp eq i32 %niter122.next.7, %unroll_iter121
  br i1 %niter122.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i6.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i8.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i6.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i8.i
  %lcmp.mod119.not = icmp eq i32 %xtraiter117, 0
  br i1 %lcmp.mod119.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i6.i, label %.lr.ph.i.i.i8.i.epil.preheader

.lr.ph.i.i.i8.i.epil.preheader:                   ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i6.i.loopexit.unr-lcssa, %.lr.ph.i.i.i8.i.preheader
  %lcmp.mod120 = icmp ne i32 %xtraiter117, 0
  tail call void @llvm.assume(i1 %lcmp.mod120)
  br label %.lr.ph.i.i.i8.i.epil

.lr.ph.i.i.i8.i.epil:                             ; preds = %.lr.ph.i.i.i8.i.epil, %.lr.ph.i.i.i8.i.epil.preheader
  %epil.iter118 = phi i32 [ 0, %.lr.ph.i.i.i8.i.epil.preheader ], [ %epil.iter118.next, %.lr.ph.i.i.i8.i.epil ]
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  %epil.iter118.next = add i32 %epil.iter118, 1   ; 2 uses
  %epil.iter118.cmp.not = icmp eq i32 %epil.iter118.next, %xtraiter117
  br i1 %epil.iter118.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i6.i, label %.lr.ph.i.i.i8.i.epil, !llvm.loop !116060

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i6.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i6.i.loopexit.unr-lcssa, %.lr.ph.i.i.i8.i.epil, %bb.aa, %bb.z
  %i.bz = add i32 %.sroa.0.034.i.i.i, 1
  br label %.backedge.i.i.i

.backedge.i.i.i:                                  ; preds = %._crit_edge.loopexit.i.i.i5.i, %bb.aj, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i6.i
  %.sroa.0.034.be.i.i.i = phi i32 [ %i.bz, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i6.i ], [ %i.cm, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i ], [ %i.cq, %._crit_edge.loopexit.i.i.i5.i ], [ 1, %bb.aj ]
  %i.ca = load atomic i64, ptr %.val1 acquire, align 8, !noalias !116114
  %i.cb = load atomic ptr, ptr %i.bn acquire, align 8, !noalias !116114
  br label %bb.w

bb.ab:                                            ; preds = %bb.x
  fence seq_cst
  %i.cc = load atomic i64, ptr %i.bp monotonic, align 8, !noalias !116114 ; 3 uses
  %i.cd = lshr i64 %i.cc, 1
  %i.ce = icmp eq i64 %i.bq, %i.cd
  br i1 %i.ce, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.not.unshifted.i.i.i = xor i64 %i.cc, %.sroa.01.0.i.i1.i
  %.not.i.i.i = icmp ugt i64 %.not.unshifted.i.i.i, 63
  %i.cf = zext i1 %.not.i.i.i to i64
  %spec.select.i.i.i = or disjoint i64 %i.bt, %i.cf
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.cg = and i64 %i.cc, 1
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$8try_recv17h4bd5ca792a39b2f7E.exit.i", label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4read17hd3eba0b744f5b208E.exit.thread.i.i"

bb.ae:                                            ; preds = %bb.ac, %bb.x
  %.sroa.09.0.i.i2.i = phi i64 [ %i.bt, %bb.x ], [ %spec.select.i.i.i, %bb.ac ] ; 2 uses
  %i.ci = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %i.ci, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.cj = icmp ult i32 %.sroa.0.034.i.i.i, 7
  br i1 %i.cj, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E(), !noalias !116114
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i

bb.ah:                                            ; preds = %bb.af
  %.not.i18.i.i.i = icmp eq i32 %.sroa.0.034.i.i.i, 0
  br i1 %.not.i18.i.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i, label %.lr.ph.i19.i.i.i.preheader

.lr.ph.i19.i.i.i.preheader:                       ; preds = %bb.ah
  %i.ck = mul nuw nsw i32 %.sroa.0.034.i.i.i, %.sroa.0.034.i.i.i ; 2 uses
  %xtraiter111 = and i32 %i.ck, 7                 ; 3 uses
  %i.cl = icmp ult i32 %.sroa.0.034.i.i.i, 3
  br i1 %i.cl, label %.lr.ph.i19.i.i.i.epil.preheader, label %.lr.ph.i19.i.i.i.preheader.new

.lr.ph.i19.i.i.i.preheader.new:                   ; preds = %.lr.ph.i19.i.i.i.preheader
  %unroll_iter115 = and i32 %i.ck, 56
  br label %.lr.ph.i19.i.i.i

.lr.ph.i19.i.i.i:                                 ; preds = %.lr.ph.i19.i.i.i, %.lr.ph.i19.i.i.i.preheader.new
  %niter116 = phi i32 [ 0, %.lr.ph.i19.i.i.i.preheader.new ], [ %niter116.next.7, %.lr.ph.i19.i.i.i ]
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  %niter116.next.7 = add i32 %niter116, 8         ; 2 uses
  %niter116.ncmp.7 = icmp eq i32 %niter116.next.7, %unroll_iter115
  br i1 %niter116.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i19.i.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i19.i.i.i
  %lcmp.mod113.not = icmp eq i32 %xtraiter111, 0
  br i1 %lcmp.mod113.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i, label %.lr.ph.i19.i.i.i.epil.preheader

.lr.ph.i19.i.i.i.epil.preheader:                  ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i.loopexit.unr-lcssa, %.lr.ph.i19.i.i.i.preheader
  %lcmp.mod114 = icmp ne i32 %xtraiter111, 0
  tail call void @llvm.assume(i1 %lcmp.mod114)
  br label %.lr.ph.i19.i.i.i.epil

.lr.ph.i19.i.i.i.epil:                            ; preds = %.lr.ph.i19.i.i.i.epil, %.lr.ph.i19.i.i.i.epil.preheader
  %epil.iter112 = phi i32 [ 0, %.lr.ph.i19.i.i.i.epil.preheader ], [ %epil.iter112.next, %.lr.ph.i19.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  %epil.iter112.next = add i32 %epil.iter112, 1   ; 2 uses
  %epil.iter112.cmp.not = icmp eq i32 %epil.iter112.next, %xtraiter111
  br i1 %epil.iter112.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i, label %.lr.ph.i19.i.i.i.epil, !llvm.loop !116061

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i.loopexit.unr-lcssa, %.lr.ph.i19.i.i.i.epil, %bb.ah, %bb.ag
  %i.cm = add i32 %.sroa.0.034.i.i.i, 1
  br label %.backedge.i.i.i

bb.ai:                                            ; preds = %bb.ae
  %i.cn = cmpxchg weak ptr %.val1, i64 %.sroa.01.0.i.i1.i, i64 %.sroa.09.0.i.i2.i seq_cst acquire, align 8, !noalias !116114
  %.sroa.18.0.in.i.i.i3.i = extractvalue { i64, i1 } %i.cn, 1
  br i1 %.sroa.18.0.in.i.i.i3.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.sroa.0.0.i.i.i.i4.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.034.i.i.i, i32 6) ; 2 uses
  %i.co = mul nuw nsw i32 %.sroa.0.0.i.i.i.i4.i, %.sroa.0.0.i.i.i.i4.i ; 2 uses
  %.not.i23.i.i.i = icmp eq i32 %.sroa.0.034.i.i.i, 0
  br i1 %.not.i23.i.i.i, label %.backedge.i.i.i, label %.lr.ph.i24.i.i.i.preheader

.lr.ph.i24.i.i.i.preheader:                       ; preds = %bb.aj
  %xtraiter105 = and i32 %i.co, 5                 ; 3 uses
  %i.cp = icmp ult i32 %.sroa.0.034.i.i.i, 3
  br i1 %i.cp, label %.lr.ph.i24.i.i.i.epil.preheader, label %.lr.ph.i24.i.i.i.preheader.new

.lr.ph.i24.i.i.i.preheader.new:                   ; preds = %.lr.ph.i24.i.i.i.preheader
  %unroll_iter109 = and i32 %i.co, 56
  br label %.lr.ph.i24.i.i.i

._crit_edge.loopexit.i.i.i5.i.unr-lcssa:          ; preds = %.lr.ph.i24.i.i.i
  %lcmp.mod107.not = icmp eq i32 %xtraiter105, 0
  br i1 %lcmp.mod107.not, label %._crit_edge.loopexit.i.i.i5.i, label %.lr.ph.i24.i.i.i.epil.preheader

.lr.ph.i24.i.i.i.epil.preheader:                  ; preds = %._crit_edge.loopexit.i.i.i5.i.unr-lcssa, %.lr.ph.i24.i.i.i.preheader
  %lcmp.mod108 = icmp ne i32 %xtraiter105, 0
  tail call void @llvm.assume(i1 %lcmp.mod108)
  br label %.lr.ph.i24.i.i.i.epil

.lr.ph.i24.i.i.i.epil:                            ; preds = %.lr.ph.i24.i.i.i.epil, %.lr.ph.i24.i.i.i.epil.preheader
  %epil.iter106 = phi i32 [ 0, %.lr.ph.i24.i.i.i.epil.preheader ], [ %epil.iter106.next, %.lr.ph.i24.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  %epil.iter106.next = add i32 %epil.iter106, 1   ; 2 uses
  %epil.iter106.cmp.not = icmp eq i32 %epil.iter106.next, %xtraiter105
  br i1 %epil.iter106.cmp.not, label %._crit_edge.loopexit.i.i.i5.i, label %.lr.ph.i24.i.i.i.epil, !llvm.loop !116062

._crit_edge.loopexit.i.i.i5.i:                    ; preds = %.lr.ph.i24.i.i.i.epil, %._crit_edge.loopexit.i.i.i5.i.unr-lcssa
  %i.cq = add i32 %.sroa.0.034.i.i.i, 1
  br label %.backedge.i.i.i

.lr.ph.i24.i.i.i:                                 ; preds = %.lr.ph.i24.i.i.i, %.lr.ph.i24.i.i.i.preheader.new
  %niter110 = phi i32 [ 0, %.lr.ph.i24.i.i.i.preheader.new ], [ %niter110.next.7, %.lr.ph.i24.i.i.i ]
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  %niter110.next.7 = add i32 %niter110, 8         ; 2 uses
  %niter110.ncmp.7 = icmp eq i32 %niter110.next.7, %unroll_iter109
  br i1 %niter110.ncmp.7, label %._crit_edge.loopexit.i.i.i5.i.unr-lcssa, label %.lr.ph.i24.i.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.cr = icmp eq i64 %i.br, 30
  br i1 %i.cr, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.cs = load atomic ptr, ptr %.sroa.06.0.i.i.i acquire, align 8, !noalias !116114 ; 2 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %.lr.ph.i27.i.i.i, label %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$9wait_next17h9b1328182533da9bE.exit.i.i.i"

.lr.ph.i27.i.i.i:                                 ; preds = %bb.al, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i
  %.sroa.0.02.i28.i.i.i = phi i32 [ %i.cx, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i ], [ 0, %bb.al ] ; 6 uses
  %i.cu = icmp ult i32 %.sroa.0.02.i28.i.i.i, 7
  br i1 %i.cu, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i27.i.i.i
  tail call void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E(), !noalias !116114
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i

bb.an:                                            ; preds = %.lr.ph.i27.i.i.i
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.0.02.i28.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.an
  %i.cv = mul nuw nsw i32 %.sroa.0.02.i28.i.i.i, %.sroa.0.02.i28.i.i.i ; 2 uses
  %xtraiter123 = and i32 %i.cv, 7                 ; 3 uses
  %i.cw = icmp ult i32 %.sroa.0.02.i28.i.i.i, 3
  br i1 %i.cw, label %.lr.ph.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.preheader.new:                   ; preds = %.lr.ph.i.i.i.i.i.preheader
  %unroll_iter127 = and i32 %i.cv, 56
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.new
  %niter128 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.preheader.new ], [ %niter128.next.7, %.lr.ph.i.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  %niter128.next.7 = add i32 %niter128, 8         ; 2 uses
  %niter128.ncmp.7 = icmp eq i32 %niter128.next.7, %unroll_iter127
  br i1 %niter128.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i
  %lcmp.mod125.not = icmp eq i32 %xtraiter123, 0
  br i1 %lcmp.mod125.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.epil.preheader:                  ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader
  %lcmp.mod126 = icmp ne i32 %xtraiter123, 0
  tail call void @llvm.assume(i1 %lcmp.mod126)
  br label %.lr.ph.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.epil:                            ; preds = %.lr.ph.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.epil.preheader
  %epil.iter124 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.epil.preheader ], [ %epil.iter124.next, %.lr.ph.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  %epil.iter124.next = add i32 %epil.iter124, 1   ; 2 uses
  %epil.iter124.cmp.not = icmp eq i32 %epil.iter124.next, %xtraiter123
  br i1 %epil.iter124.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.epil, !llvm.loop !116063

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.epil, %bb.an, %bb.am
  %i.cx = add i32 %.sroa.0.02.i28.i.i.i, 1
  %i.cy = load atomic ptr, ptr %.sroa.06.0.i.i.i acquire, align 8, !noalias !116114 ; 2 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %.lr.ph.i27.i.i.i, label %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$9wait_next17h9b1328182533da9bE.exit.i.i.i"

"_ZN3std4sync4mpmc4list14Block$LT$T$GT$9wait_next17h9b1328182533da9bE.exit.i.i.i": ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i, %bb.al
  %.lcssa.i.i.i.i = phi ptr [ %i.cs, %bb.al ], [ %i.cy, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i ] ; 2 uses
  %i.da = and i64 %.sroa.09.0.i.i2.i, -2
  %i.db = add i64 %i.da, 2
  %i.dc = load atomic ptr, ptr %.lcssa.i.i.i.i monotonic, align 8, !noalias !116114
  %i.dd = icmp ne ptr %i.dc, null
  %i.de = zext i1 %i.dd to i64
  %spec.select17.i.i.i = or disjoint i64 %i.db, %i.de
  store atomic ptr %.lcssa.i.i.i.i, ptr %i.bn release, align 8, !noalias !116114
  store atomic i64 %spec.select17.i.i.i, ptr %.val1 release, align 8, !noalias !116114
  br label %bb.ao

bb.ao:                                            ; preds = %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$9wait_next17h9b1328182533da9bE.exit.i.i.i", %bb.ak
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.dg = getelementptr inbounds nuw [72 x i8], ptr %i.df, i64 %i.br ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 64 ; 3 uses
  %i.di = load atomic i64, ptr %i.dh acquire, align 8, !noalias !116115
  %i.dj = and i64 %i.di, 1
  %i.dk = icmp eq i64 %i.dj, 0
  br i1 %i.dk, label %.lr.ph.i.i3.i.i, label %"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17h3e9fc871baf75718E.exit.i.i.i"

.lr.ph.i.i3.i.i:                                  ; preds = %bb.ao, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i5.i.i
  %.sroa.0.02.i.i4.i.i = phi i32 [ %i.do, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i5.i.i ], [ 0, %bb.ao ] ; 6 uses
  %i.dl = icmp ult i32 %.sroa.0.02.i.i4.i.i, 7
  br i1 %i.dl, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i.i3.i.i
  tail call void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E(), !noalias !116115
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i5.i.i

bb.aq:                                            ; preds = %.lr.ph.i.i3.i.i
  %.not.i.i.i6.i.i = icmp eq i32 %.sroa.0.02.i.i4.i.i, 0
  br i1 %.not.i.i.i6.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i5.i.i, label %.lr.ph.i.i.i7.i.i.preheader

.lr.ph.i.i.i7.i.i.preheader:                      ; preds = %bb.aq
  %i.dm = mul nuw nsw i32 %.sroa.0.02.i.i4.i.i, %.sroa.0.02.i.i4.i.i ; 2 uses
  %xtraiter129 = and i32 %i.dm, 7                 ; 3 uses
  %i.dn = icmp ult i32 %.sroa.0.02.i.i4.i.i, 3
  br i1 %i.dn, label %.lr.ph.i.i.i7.i.i.epil.preheader, label %.lr.ph.i.i.i7.i.i.preheader.new

.lr.ph.i.i.i7.i.i.preheader.new:                  ; preds = %.lr.ph.i.i.i7.i.i.preheader
  %unroll_iter133 = and i32 %i.dm, 56
  br label %.lr.ph.i.i.i7.i.i

.lr.ph.i.i.i7.i.i:                                ; preds = %.lr.ph.i.i.i7.i.i, %.lr.ph.i.i.i7.i.i.preheader.new
  %niter134 = phi i32 [ 0, %.lr.ph.i.i.i7.i.i.preheader.new ], [ %niter134.next.7, %.lr.ph.i.i.i7.i.i ]
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116115
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116115
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116115
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116115
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116115
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116115
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116115
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116115
  %niter134.next.7 = add i32 %niter134, 8         ; 2 uses
  %niter134.ncmp.7 = icmp eq i32 %niter134.next.7, %unroll_iter133
  br i1 %niter134.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i5.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i7.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i5.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i7.i.i
  %lcmp.mod131.not = icmp eq i32 %xtraiter129, 0
  br i1 %lcmp.mod131.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i5.i.i, label %.lr.ph.i.i.i7.i.i.epil.preheader

.lr.ph.i.i.i7.i.i.epil.preheader:                 ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i5.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i7.i.i.preheader
  %lcmp.mod132 = icmp ne i32 %xtraiter129, 0
  tail call void @llvm.assume(i1 %lcmp.mod132)
  br label %.lr.ph.i.i.i7.i.i.epil

.lr.ph.i.i.i7.i.i.epil:                           ; preds = %.lr.ph.i.i.i7.i.i.epil, %.lr.ph.i.i.i7.i.i.epil.preheader
  %epil.iter130 = phi i32 [ 0, %.lr.ph.i.i.i7.i.i.epil.preheader ], [ %epil.iter130.next, %.lr.ph.i.i.i7.i.i.epil ]
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116115
  %epil.iter130.next = add i32 %epil.iter130, 1   ; 2 uses
  %epil.iter130.cmp.not = icmp eq i32 %epil.iter130.next, %xtraiter129
  br i1 %epil.iter130.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i5.i.i, label %.lr.ph.i.i.i7.i.i.epil, !llvm.loop !116066

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i5.i.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i5.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i7.i.i.epil, %bb.aq, %bb.ap
  %i.do = add i32 %.sroa.0.02.i.i4.i.i, 1
  %i.dp = load atomic i64, ptr %i.dh acquire, align 8, !noalias !116115
  %i.dq = and i64 %i.dp, 1
  %i.dr = icmp eq i64 %i.dq, 0
  br i1 %i.dr, label %.lr.ph.i.i3.i.i, label %"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17h3e9fc871baf75718E.exit.i.i.i"

"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17h3e9fc871baf75718E.exit.i.i.i": ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i5.i.i, %bb.ao
  %.sroa.015.0.copyload.i.i = load i32, ptr %i.dg, align 8, !noalias !116115 ; 2 uses
  %.sroa.416.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %.sroa.416.i.i.sroa.0.0.copyload = load i8, ptr %.sroa.416.0..sroa_idx.i.i, align 4, !noalias !116116
  %.sroa.416.i.i.sroa.4.0..sroa.416.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dg, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(59) %.sroa.416.i.i.sroa.4, ptr noundef nonnull align 1 dereferenceable(59) %.sroa.416.i.i.sroa.4.0..sroa.416.0..sroa_idx.i.i.sroa_idx, i64 59, i1 false), !noalias !116116
  %i.ds = add nuw nsw i64 %i.br, 1                ; 2 uses
  %i.dt = icmp eq i64 %i.ds, 31
  br i1 %i.dt, label %.lr.ph.i2.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17h3e9fc871baf75718E.exit.i.i.i"
  %i.du = atomicrmw or ptr %i.dh, i64 2 acq_rel, align 8, !noalias !116115
  %i.dv = and i64 %i.du, 4
  %i.dw = icmp eq i64 %i.dv, 0
  br i1 %i.dw, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4read17hd3eba0b744f5b208E.exit.i.i", label %bb.av

.lr.ph.i2.i.i.i:                                  ; preds = %"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17h3e9fc871baf75718E.exit.i.i.i", %bb.au
  %.sroa.0.04.i.i.i.i = phi i64 [ %i.ef, %bb.au ], [ 0, %"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17h3e9fc871baf75718E.exit.i.i.i" ] ; 3 uses
  %i.dx = getelementptr inbounds nuw [72 x i8], ptr %.sroa.06.0.i.i.i, i64 %.sroa.0.04.i.i.i.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 72 ; 2 uses
  %i.dz = load atomic i64, ptr %i.dy acquire, align 8, !noalias !116115
  %i.ea = and i64 %i.dz, 2
  %i.eb = icmp eq i64 %i.ea, 0
  br i1 %i.eb, label %bb.as, label %.lr.ph.i2.i.i.i.1

bb.as:                                            ; preds = %.lr.ph.i2.i.i.i
  %i.ec = atomicrmw or ptr %i.dy, i64 4 acq_rel, align 8, !noalias !116115
  %i.ed = and i64 %i.ec, 2
  %i.ee = icmp eq i64 %i.ed, 0
  br i1 %i.ee, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4read17hd3eba0b744f5b208E.exit.i.i", label %.lr.ph.i2.i.i.i.1

.lr.ph.i2.i.i.i.1:                                ; preds = %bb.as, %.lr.ph.i2.i.i.i
  %i.ef = add nuw nsw i64 %.sroa.0.04.i.i.i.i, 2  ; 2 uses
  %i.eg = getelementptr inbounds nuw [72 x i8], ptr %.sroa.06.0.i.i.i, i64 %.sroa.0.04.i.i.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 144 ; 2 uses
  %i.ei = load atomic i64, ptr %i.eh acquire, align 8, !noalias !116115
  %i.ej = and i64 %i.ei, 2
  %i.ek = icmp eq i64 %i.ej, 0
  br i1 %i.ek, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.lr.ph.i2.i.i.i.1
  %i.el = atomicrmw or ptr %i.eh, i64 4 acq_rel, align 8, !noalias !116115
  %i.em = and i64 %i.el, 2
  %i.en = icmp eq i64 %i.em, 0
  br i1 %i.en, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4read17hd3eba0b744f5b208E.exit.i.i", label %bb.au

bb.au:                                            ; preds = %bb.at, %.lr.ph.i2.i.i.i.1
  %exitcond.not.i.i2.i.i.1 = icmp eq i64 %i.ef, 30
  br i1 %exitcond.not.i.i2.i.i.1, label %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$7destroy17h08e67f8b728e4b22E.exit.sink.split.i.i.i", label %.lr.ph.i2.i.i.i

bb.av:                                            ; preds = %bb.ar
  %i.eo = icmp samesign ult i64 %i.br, 29
  br i1 %i.eo, label %.lr.ph.i4.i.i.i, label %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$7destroy17h08e67f8b728e4b22E.exit.sink.split.i.i.i"

.lr.ph.i4.i.i.i:                                  ; preds = %bb.av, %bb.ax
  %.sroa.0.04.i5.i.i.i = phi i64 [ %i.ep, %bb.ax ], [ %i.ds, %bb.av ] ; 2 uses
  %i.ep = add nuw nsw i64 %.sroa.0.04.i5.i.i.i, 1 ; 2 uses
  %i.eq = getelementptr inbounds nuw [72 x i8], ptr %.sroa.06.0.i.i.i, i64 %.sroa.0.04.i5.i.i.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 72 ; 2 uses
  %i.es = load atomic i64, ptr %i.er acquire, align 8, !noalias !116115
  %i.et = and i64 %i.es, 2
  %i.eu = icmp eq i64 %i.et, 0
  br i1 %i.eu, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %.lr.ph.i4.i.i.i
  %i.ev = atomicrmw or ptr %i.er, i64 4 acq_rel, align 8, !noalias !116115
  %i.ew = and i64 %i.ev, 2
  %i.ex = icmp eq i64 %i.ew, 0
  br i1 %i.ex, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4read17hd3eba0b744f5b208E.exit.i.i", label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %.lr.ph.i4.i.i.i
  %exitcond.not.i6.i.i.i = icmp eq i64 %i.ep, 30
  br i1 %exitcond.not.i6.i.i.i, label %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$7destroy17h08e67f8b728e4b22E.exit.sink.split.i.i.i", label %.lr.ph.i4.i.i.i

"_ZN3std4sync4mpmc4list14Block$LT$T$GT$7destroy17h08e67f8b728e4b22E.exit.sink.split.i.i.i": ; preds = %bb.ax, %bb.au, %bb.av
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.06.0.i.i.i, i64 noundef 2240, i64 noundef 8) #66, !noalias !116115
  br label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4read17hd3eba0b744f5b208E.exit.i.i"

"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4read17hd3eba0b744f5b208E.exit.i.i": ; preds = %bb.aw, %bb.as, %bb.at, %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$7destroy17h08e67f8b728e4b22E.exit.sink.split.i.i.i", %bb.ar
  %i.ey = icmp eq i32 %.sroa.015.0.copyload.i.i, 3
  br i1 %i.ey, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4read17hd3eba0b744f5b208E.exit.thread.i.i", label %bb.ay

"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4read17hd3eba0b744f5b208E.exit.thread.i.i": ; preds = %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4read17hd3eba0b744f5b208E.exit.i.i", %bb.ad
  br label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$8try_recv17h4bd5ca792a39b2f7E.exit.i"

bb.ay:                                            ; preds = %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4read17hd3eba0b744f5b208E.exit.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(59) %.sroa.738.i.i.sroa.5, ptr noundef nonnull align 1 dereferenceable(59) %.sroa.416.i.i.sroa.4, i64 59, i1 false)
  br label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$8try_recv17h4bd5ca792a39b2f7E.exit.i"

"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$8try_recv17h4bd5ca792a39b2f7E.exit.i": ; preds = %bb.ad, %bb.ay, %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4read17hd3eba0b744f5b208E.exit.thread.i.i"
  %.sroa.10.1 = phi i8 [ %.sroa.416.i.i.sroa.0.0.copyload, %bb.ay ], [ 1, %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4read17hd3eba0b744f5b208E.exit.thread.i.i" ], [ 0, %bb.ad ]
  %storemerge.i.i = phi i32 [ %.sroa.015.0.copyload.i.i, %bb.ay ], [ 3, %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4read17hd3eba0b744f5b208E.exit.thread.i.i" ], [ 3, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.416.i.i.sroa.4)
  br label %"_ZN3std4sync4mpmc17Receiver$LT$T$GT$8try_recv17h1b153a0b1fd1a217E.exit"

bb.az:                                            ; preds = %bb.a
  %i.ez = cmpxchg ptr %.val1, i32 0, i32 1 acquire monotonic, align 4, !noalias !116117
  %i.fa = extractvalue { i32, i1 } %i.ez, 1
  br i1 %i.fa, label %bb.bb, label %bb.ba, !prof !46

bb.ba:                                            ; preds = %bb.az
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 8 %.val1), !noalias !116117
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.fb = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !116117
  %i.fc = and i64 %i.fb, 9223372036854775807
  %i.fd = icmp eq i64 %i.fc, 0
  br i1 %i.fd, label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h6cb3c499e3cd334fE.exit.i.i", label %bb.bc, !prof !46

bb.bc:                                            ; preds = %bb.bb
  %i.fe = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE(), !noalias !116117
  %i.ff = xor i1 %i.fe, true
  %i.fg = zext i1 %i.ff to i8
  br label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h6cb3c499e3cd334fE.exit.i.i"

"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h6cb3c499e3cd334fE.exit.i.i": ; preds = %bb.bc, %bb.bb
  %.sroa.01.0.i.i.i.i = phi i8 [ %i.fg, %bb.bc ], [ 0, %bb.bb ] ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.val1, i64 4 ; 3 uses
  %i.fi = load atomic i8, ptr %i.fh monotonic, align 1, !noalias !116117
  %.not50.i.i = icmp eq i8 %i.fi, 0
  br i1 %.not50.i.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h430117330b8c131cE.exit.i.i", label %bb.bd, !prof !46

bb.bd:                                            ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h6cb3c499e3cd334fE.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !116118
  store ptr %.val1, ptr %i.a, align 8, !noalias !116118
  %i.fj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %.sroa.01.0.i.i.i.i, ptr %i.fj, align 8, !noalias !116118
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1333, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1337, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1202) #75
          to label %bb.bf unwind label %bb.be, !noalias !116119

bb.be:                                            ; preds = %bb.bd
  %i.fk = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr131drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$$GT$17he2b78a4c6843ab2fE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #77
          to label %common.resume.i unwind label %bb.bg, !noalias !116119

bb.bf:                                            ; preds = %bb.bd
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.fl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !116119
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h430117330b8c131cE.exit.i.i": ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h6cb3c499e3cd334fE.exit.i.i"
  %i.fm = trunc nuw i8 %.sroa.01.0.i.i.i.i to i1  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116120)
  %i.fn = getelementptr inbounds nuw i8, ptr %.val1, i64 24 ; 2 uses
  %i.fo = load i64, ptr %i.fn, align 8, !alias.scope !116120, !noalias !116121, !noundef !44 ; 6 uses
  %i.fp = icmp ult i64 %i.fo, 384307168202282326
  tail call void @llvm.assume(i1 %i.fp)
  %i.fq = icmp eq i64 %i.fo, 0
  br i1 %i.fq, label %_ZN3std4sync4mpmc5waker5Waker10try_select17he211953865c6b73fE.exit.thread.i.i, label %bb.bh

bb.bh:                                            ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h430117330b8c131cE.exit.i.i"
  %i.fr = tail call noundef nonnull ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4sync4mpmc5waker17current_thread_id5DUMMY29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17hfaf518c2703b6078E")
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8, !alias.scope !116120, !noalias !116121, !nonnull !44, !noundef !44 ; 3 uses
  %.idx.i.i.i = mul nuw nsw i64 %i.fo, 24
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %.idx.i.i.i
  br label %.lr.ph.i.i.i11.i

.lr.ph.i.i.i11.i:                                 ; preds = %"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h39950d5a8c289218E.exit.i.i.i.i", %bb.bh
  %.sroa.02.015.i.i.i.i = phi i64 [ %i.go, %"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h39950d5a8c289218E.exit.i.i.i.i" ], [ 0, %bb.bh ] ; 4 uses
  %i.fw = phi ptr [ %i.fx, %"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h39950d5a8c289218E.exit.i.i.i.i" ], [ %i.fu, %bb.bh ] ; 4 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116122)
  %i.fy = load ptr, ptr %i.fw, align 8, !alias.scope !116122, !noalias !116123, !nonnull !44, !noundef !44 ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 40
  %i.ga = load i64, ptr %i.fz, align 8, !noalias !116124, !noundef !44
  %.not.i.i.i.i12.i = icmp eq i64 %i.ga, %i.fs
  br i1 %.not.i.i.i.i12.i, label %"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h39950d5a8c289218E.exit.i.i.i.i", label %bb.bi

bb.bi:                                            ; preds = %.lr.ph.i.i.i11.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.gc = load i64, ptr %i.gb, align 8, !alias.scope !116122, !noalias !116123, !noundef !44
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  %i.ge = cmpxchg ptr %i.gd, i64 0, i64 %i.gc acq_rel acquire, align 8, !noalias !116124
  %.sroa.18.0.in.i.i.i.i.i.i.i = extractvalue { i64, i1 } %i.ge, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i.i, label %bb.bj, label %"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h39950d5a8c289218E.exit.i.i.i.i"

bb.bj:                                            ; preds = %bb.bi
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.gg = load ptr, ptr %i.gf, align 8, !alias.scope !116122, !noalias !116123, !noundef !44 ; 2 uses
  %i.gh = icmp eq ptr %i.gg, null
  br i1 %i.gh, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fy, i64 32
  store atomic ptr %i.gg, ptr %i.gi release, align 8, !noalias !116124
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %.val2.i.i.i.i.i = load ptr, ptr %i.gj, align 8, !noalias !116124, !nonnull !44, !noundef !44
  %i.gk = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i, i64 40 ; 2 uses
  %i.gl = atomicrmw xchg ptr %i.gk, i32 1 release, align 4, !noalias !116124
  %i.gm = icmp eq i32 %i.gl, -1
  br i1 %i.gm, label %bb.bm, label %_ZN3std4sync4mpmc5waker5Waker10try_select17he211953865c6b73fE.exit.i.i

bb.bm:                                            ; preds = %bb.bl
  %i.gn = invoke noundef zeroext i1 @_ZN3std3sys3pal4unix5futex10futex_wake17hd1de9f1a48e701faE(ptr noundef nonnull align 4 %i.gk)
          to label %_ZN3std4sync4mpmc5waker5Waker10try_select17he211953865c6b73fE.exit.i.i unwind label %bb.ci, !noalias !116125 ; 0 uses

"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h39950d5a8c289218E.exit.i.i.i.i": ; preds = %bb.bi, %.lr.ph.i.i.i11.i
  %i.go = add nuw nsw i64 %.sroa.02.015.i.i.i.i, 1
  %i.gp = icmp eq ptr %i.fx, %i.fv
  br i1 %i.gp, label %_ZN3std4sync4mpmc5waker5Waker10try_select17he211953865c6b73fE.exit.thread.i.i, label %.lr.ph.i.i.i11.i

_ZN3std4sync4mpmc5waker5Waker10try_select17he211953865c6b73fE.exit.i.i: ; preds = %bb.bm, %bb.bl
  %i.gq = icmp samesign ult i64 %.sroa.02.015.i.i.i.i, %i.fo
  tail call void @llvm.assume(i1 %i.gq)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116126)
  %i.gr = getelementptr inbounds nuw [24 x i8], ptr %i.fu, i64 %.sroa.02.015.i.i.i.i ; 4 uses
  %.sroa.031.0.copyload32.i.i = load ptr, ptr %i.gr, align 8, !noalias !116127 ; 2 uses
  %.sroa.8.0..sroa_idx33.i.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx33.i.i, i64 16, i1 false), !noalias !116127
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 24
  %i.gt = xor i64 %.sroa.02.015.i.i.i.i, -1
  %i.gu = add nsw i64 %i.fo, %i.gt
  %i.gv = mul nuw nsw i64 %i.gu, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gr, ptr nonnull align 8 %i.gs, i64 %i.gv, i1 false), !noalias !116128
  %i.gw = add nsw i64 %i.fo, -1
  store i64 %i.gw, ptr %i.fn, align 8, !alias.scope !116129, !noalias !116130
  %.not.i.i = icmp eq ptr %.sroa.031.0.copyload32.i.i, null
  br i1 %.not.i.i, label %_ZN3std4sync4mpmc5waker5Waker10try_select17he211953865c6b73fE.exit.thread.i.i, label %bb.bn

bb.bn:                                            ; preds = %_ZN3std4sync4mpmc5waker5Waker10try_select17he211953865c6b73fE.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !116125
  store ptr %.sroa.031.0.copyload32.i.i, ptr %i.b, align 8, !noalias !116125
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i.i, i64 16, i1 false), !noalias !116125
  %i.gx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8, !noalias !116125, !noundef !44 ; 13 uses
  br i1 %i.fm, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.gz = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !116125
  %i.ha = and i64 %i.gz, 9223372036854775807
  %i.hb = icmp eq i64 %i.ha, 0
  br i1 %i.hb, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i, label %bb.bp, !prof !46

bb.bp:                                            ; preds = %bb.bo
  %i.hc = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc10.i.i unwind label %.loopexit.split-lp.i.i, !noalias !116125

.noexc10.i.i:                                     ; preds = %bb.bp
  br i1 %i.hc, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %.noexc10.i.i
  store atomic i8 1, ptr %i.fh monotonic, align 4, !noalias !116125
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i: ; preds = %bb.bq, %.noexc10.i.i, %bb.bo, %bb.bn
  %i.hd = atomicrmw xchg ptr %.val1, i32 0 release, align 4, !noalias !116125
  %i.he = icmp eq i32 %i.hd, 2
  br i1 %i.he, label %bb.br, label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17h9f2bcf9a8351a74cE.exit.i.i", !prof !49

bb.br:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 8 %.val1)
          to label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17h9f2bcf9a8351a74cE.exit.i.i" unwind label %.loopexit.split-lp.i.i, !noalias !116125

_ZN3std4sync4mpmc5waker5Waker10try_select17he211953865c6b73fE.exit.thread.i.i: ; preds = %"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h39950d5a8c289218E.exit.i.i.i.i", %_ZN3std4sync4mpmc5waker5Waker10try_select17he211953865c6b73fE.exit.i.i, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h430117330b8c131cE.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  %i.hf = getelementptr inbounds nuw i8, ptr %.val1, i64 104
  %i.hg = load i8, ptr %i.hf, align 8, !range !45, !noalias !116125, !noundef !44 ; 2 uses
  br i1 %i.fm, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i20.i.i, label %bb.cd

.loopexit.i.i:                                    ; preds = %bb.bw
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

.loopexit.split-lp.i.i:                           ; preds = %.invoke.i.i, %bb.br, %bb.bp
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.bs:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116131)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116132)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116133)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116134)
  %i.hh = load ptr, ptr %i.b, align 8, !alias.scope !116135, !noalias !116125, !nonnull !44, !noundef !44
  %i.hi = atomicrmw sub ptr %i.hh, i64 1 release, align 8, !noalias !116136
  %i.hj = icmp eq i64 %i.hi, 1
  br i1 %i.hj, label %bb.bt, label %common.resume.i

bb.bt:                                            ; preds = %bb.bs
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17he4d92f17da45dc34E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume.i unwind label %bb.ch, !noalias !116125

"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17h9f2bcf9a8351a74cE.exit.i.i": ; preds = %bb.br, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i
  %i.hk = icmp eq ptr %i.gy, null
  br i1 %i.hk, label %bb.cb, label %bb.bu

bb.bu:                                            ; preds = %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17h9f2bcf9a8351a74cE.exit.i.i"
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gy, i64 65
  %i.hm = load i8, ptr %i.hl, align 1, !range !45, !noalias !116137, !noundef !44
  %i.hn = trunc nuw i8 %i.hm to i1
  br i1 %i.hn, label %bb.by, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gy, i64 64 ; 2 uses
  %i.hp = load atomic i8, ptr %i.ho acquire, align 1, !noalias !116137
  %i.hq = icmp eq i8 %i.hp, 0
  br i1 %i.hq, label %.lr.ph.i.i13.i.i, label %"_ZN3std4sync4mpmc4zero15Packet$LT$T$GT$10wait_ready17h6ff98c80a900d89eE.exit.i.i.i"

.lr.ph.i.i13.i.i:                                 ; preds = %bb.bv, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i15.i
  %.sroa.0.02.i.i.i14.i = phi i32 [ %i.hu, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i15.i ], [ 0, %bb.bv ] ; 6 uses
  %i.hr = icmp ult i32 %.sroa.0.02.i.i.i14.i, 7
  br i1 %i.hr, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %.lr.ph.i.i13.i.i
  invoke void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
          to label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i15.i unwind label %.loopexit.i.i, !noalias !116125

bb.bx:                                            ; preds = %.lr.ph.i.i13.i.i
  %.not.i.i.i14.i.i = icmp eq i32 %.sroa.0.02.i.i.i14.i, 0
  br i1 %.not.i.i.i14.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i15.i, label %.lr.ph.i.i.i.i16.i.preheader

.lr.ph.i.i.i.i16.i.preheader:                     ; preds = %bb.bx
  %i.hs = mul nuw nsw i32 %.sroa.0.02.i.i.i14.i, %.sroa.0.02.i.i.i14.i ; 2 uses
  %xtraiter = and i32 %i.hs, 7                    ; 3 uses
  %i.ht = icmp ult i32 %.sroa.0.02.i.i.i14.i, 3
  br i1 %i.ht, label %.lr.ph.i.i.i.i16.i.epil.preheader, label %.lr.ph.i.i.i.i16.i.preheader.new

.lr.ph.i.i.i.i16.i.preheader.new:                 ; preds = %.lr.ph.i.i.i.i16.i.preheader
  %unroll_iter = and i32 %i.hs, 56
  br label %.lr.ph.i.i.i.i16.i

.lr.ph.i.i.i.i16.i:                               ; preds = %.lr.ph.i.i.i.i16.i, %.lr.ph.i.i.i.i16.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.i16.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i16.i ]
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116137
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116137
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116137
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116137
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116137
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116137
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116137
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116137
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i15.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i16.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i15.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i16.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i15.i, label %.lr.ph.i.i.i.i16.i.epil.preheader

.lr.ph.i.i.i.i16.i.epil.preheader:                ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i15.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i16.i.preheader
  %lcmp.mod104 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod104)
  br label %.lr.ph.i.i.i.i16.i.epil

.lr.ph.i.i.i.i16.i.epil:                          ; preds = %.lr.ph.i.i.i.i16.i.epil, %.lr.ph.i.i.i.i16.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.i16.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.i16.i.epil ]
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116137
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i15.i, label %.lr.ph.i.i.i.i16.i.epil, !llvm.loop !116096

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i15.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i15.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i16.i.epil, %bb.bx, %bb.bw
  %i.hu = add i32 %.sroa.0.02.i.i.i14.i, 1
  %i.hv = load atomic i8, ptr %i.ho acquire, align 1, !noalias !116137
  %i.hw = icmp eq i8 %i.hv, 0
  br i1 %i.hw, label %.lr.ph.i.i13.i.i, label %"_ZN3std4sync4mpmc4zero15Packet$LT$T$GT$10wait_ready17h6ff98c80a900d89eE.exit.i.i.i"

"_ZN3std4sync4mpmc4zero15Packet$LT$T$GT$10wait_ready17h6ff98c80a900d89eE.exit.i.i.i": ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i15.i, %bb.bv
  %.sroa.04.0.copyload.i.i.i = load i32, ptr %i.gy, align 8, !noalias !116137 ; 2 uses
  store i32 3, ptr %i.gy, align 8, !noalias !116137
  %.not.i.i13.i = icmp eq i32 %.sroa.04.0.copyload.i.i.i, 3
  br i1 %.not.i.i13.i, label %.invoke.i.i, label %bb.bz, !prof !49

bb.by:                                            ; preds = %bb.bu
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.gy, align 8, !noalias !116137 ; 2 uses
  store i32 3, ptr %i.gy, align 8, !noalias !116137
  %.not13.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i.i, 3
  br i1 %.not13.i.i.i, label %.invoke.i.i, label %bb.ca, !prof !49

.invoke.i.i:                                      ; preds = %bb.by, %"_ZN3std4sync4mpmc4zero15Packet$LT$T$GT$10wait_ready17h6ff98c80a900d89eE.exit.i.i.i"
  %i.hx = phi ptr [ @1191, %"_ZN3std4sync4mpmc4zero15Packet$LT$T$GT$10wait_ready17h6ff98c80a900d89eE.exit.i.i.i" ], [ @1192, %bb.by ]
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hx) #75
          to label %.cont.i.i unwind label %.loopexit.split-lp.i.i, !noalias !116125

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.bz:                                            ; preds = %"_ZN3std4sync4mpmc4zero15Packet$LT$T$GT$10wait_ready17h6ff98c80a900d89eE.exit.i.i.i"
  %.sroa.56.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 4
  %.sroa.738.i.i.sroa.0.0.copyload = load i8, ptr %.sroa.56.0..sroa_idx.i.i.i, align 4, !noalias !116125
  %.sroa.738.i.i.sroa.5.0..sroa.56.0..sroa_idx.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gy, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(59) %.sroa.738.i.i.sroa.5, ptr noundef nonnull align 1 dereferenceable(59) %.sroa.738.i.i.sroa.5.0..sroa.56.0..sroa_idx.i.i.i.sroa_idx, i64 59, i1 false)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gy, i64 noundef 72, i64 noundef 8) #66, !noalias !116137
  br label %bb.cb

bb.ca:                                            ; preds = %bb.by
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 4
  %.sroa.738.i.i.sroa.0.0.copyload40 = load i8, ptr %.sroa.5.0..sroa_idx.i.i.i, align 4, !noalias !116125
  %.sroa.738.i.i.sroa.5.0..sroa.5.0..sroa_idx.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gy, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(59) %.sroa.738.i.i.sroa.5, ptr noundef nonnull align 1 dereferenceable(59) %.sroa.738.i.i.sroa.5.0..sroa.5.0..sroa_idx.i.i.i.sroa_idx, i64 59, i1 false)
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gy, i64 64
  store atomic i8 1, ptr %i.hy release, align 8, !noalias !116137
  br label %bb.cb

bb.cb:                                            ; preds = %bb.bz, %bb.ca, %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17h9f2bcf9a8351a74cE.exit.i.i"
  %.sroa.10.2 = phi i8 [ 1, %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17h9f2bcf9a8351a74cE.exit.i.i" ], [ %.sroa.738.i.i.sroa.0.0.copyload40, %bb.ca ], [ %.sroa.738.i.i.sroa.0.0.copyload, %bb.bz ]
  %.sroa.0.0 = phi i32 [ 3, %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17h9f2bcf9a8351a74cE.exit.i.i" ], [ %.sroa.0.0.copyload.i.i.i, %bb.ca ], [ %.sroa.04.0.copyload.i.i.i, %bb.bz ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116141)
  %i.hz = load ptr, ptr %i.b, align 8, !alias.scope !116142, !noalias !116125, !nonnull !44, !noundef !44
  %i.ia = atomicrmw sub ptr %i.hz, i64 1 release, align 8, !noalias !116143
  %i.ib = icmp eq i64 %i.ia, 1
  br i1 %i.ib, label %bb.cc, label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h17a6969522ba22adE.exit19.i.i"

bb.cc:                                            ; preds = %bb.cb
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17he4d92f17da45dc34E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b), !noalias !116125
  br label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h17a6969522ba22adE.exit19.i.i"

"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h17a6969522ba22adE.exit19.i.i": ; preds = %bb.cc, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !116125
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  br label %"_ZN3std4sync4mpmc17Receiver$LT$T$GT$8try_recv17h1b153a0b1fd1a217E.exit"

bb.cd:                                            ; preds = %_ZN3std4sync4mpmc5waker5Waker10try_select17he211953865c6b73fE.exit.thread.i.i
  %i.ic = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !116125
  %i.id = and i64 %i.ic, 9223372036854775807
  %i.ie = icmp eq i64 %i.id, 0
  br i1 %i.ie, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i20.i.i, label %bb.ce, !prof !46

bb.ce:                                            ; preds = %bb.cd
  %i.if = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE(), !noalias !116125
  br i1 %i.if, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i20.i.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  store atomic i8 1, ptr %i.fh monotonic, align 4, !noalias !116125
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i20.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i20.i.i: ; preds = %bb.cf, %bb.ce, %bb.cd, %_ZN3std4sync4mpmc5waker5Waker10try_select17he211953865c6b73fE.exit.thread.i.i
  %i.ig = atomicrmw xchg ptr %.val1, i32 0 release, align 4, !noalias !116125
  %i.ih = icmp eq i32 %i.ig, 2
  br i1 %i.ih, label %bb.cg, label %"_ZN3std4sync4mpmc17Receiver$LT$T$GT$8try_recv17h1b153a0b1fd1a217E.exit", !prof !49

bb.cg:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i20.i.i
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 8 %.val1), !noalias !116125
  br label %"_ZN3std4sync4mpmc17Receiver$LT$T$GT$8try_recv17h1b153a0b1fd1a217E.exit"

bb.ch:                                            ; preds = %bb.ci, %bb.bt
  %i.ii = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !116125
  unreachable

bb.ci:                                            ; preds = %bb.bm
  %i.ij = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17h9f2bcf9a8351a74cE"(ptr nonnull align 8 %.val1, i8 %.sroa.01.0.i.i.i.i) #77
          to label %common.resume.i unwind label %bb.ch, !noalias !116125

"_ZN3std4sync4mpmc17Receiver$LT$T$GT$8try_recv17h1b153a0b1fd1a217E.exit": ; preds = %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h17a6969522ba22adE.exit19.i.i", %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i20.i.i, %bb.cg, %bb.u, %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$8try_recv17h4bd5ca792a39b2f7E.exit.i"
  %.sroa.10.4 = phi i8 [ %.sroa.10.0, %bb.u ], [ %.sroa.10.1, %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$8try_recv17h4bd5ca792a39b2f7E.exit.i" ], [ %i.hg, %bb.cg ], [ %i.hg, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i20.i.i ], [ %.sroa.10.2, %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h17a6969522ba22adE.exit19.i.i" ]
  %.sroa.0.2 = phi i32 [ %.sroa.02.0.copyload3.sink.i.i, %bb.u ], [ %storemerge.i.i, %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$8try_recv17h4bd5ca792a39b2f7E.exit.i" ], [ 3, %bb.cg ], [ 3, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i20.i.i ], [ %.sroa.0.0, %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h17a6969522ba22adE.exit19.i.i" ] ; 2 uses
  %i.ik = icmp eq i32 %.sroa.0.2, 3
  br i1 %i.ik, label %"_ZN4core3ptr165drop_in_place$LT$core..result..Result$LT$$LP$nickel_lang_core..error..warning..Warning$C$nickel_lang_parser..files..Files$RP$$C$std..sync..mpsc..TryRecvError$GT$$GT$17hdda8a19f8a20f361E.exit", label %bb.cj

bb.cj:                                            ; preds = %"_ZN3std4sync4mpmc17Receiver$LT$T$GT$8try_recv17h1b153a0b1fd1a217E.exit"
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(59) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(59) %.sroa.738.i.i.sroa.5, i64 59, i1 false)
  store i32 %.sroa.0.2, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %.sroa.10.4, ptr %.sroa.5.0..sroa_idx, align 4
  br label %bb.ck

"_ZN4core3ptr165drop_in_place$LT$core..result..Result$LT$$LP$nickel_lang_core..error..warning..Warning$C$nickel_lang_parser..files..Files$RP$$C$std..sync..mpsc..TryRecvError$GT$$GT$17hdda8a19f8a20f361E.exit": ; preds = %bb.k, %"_ZN3std4sync4mpmc17Receiver$LT$T$GT$8try_recv17h1b153a0b1fd1a217E.exit"
  store i32 3, ptr %0, align 8
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %"_ZN4core3ptr165drop_in_place$LT$core..result..Result$LT$$LP$nickel_lang_core..error..warning..Warning$C$nickel_lang_parser..files..Files$RP$$C$std..sync..mpsc..TryRecvError$GT$$GT$17hdda8a19f8a20f361E.exit"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN93_$LT$nls..diagnostic..SerializableDiagnostic$u20$as$u20$nls..diagnostic..DiagnosticCompat$GT$13from_codespan17h3cd31644973f5db5E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(104) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
switch.lookup:
  %i.a = alloca [128 x i8], align 8               ; 8 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = alloca [128 x i8], align 8               ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [40 x i8], align 8                ; 9 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 11 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5.i.i.i.i.i.i.i.i.i = alloca [16 x i8], align 8 ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.7.i.i.i.i.i.i.i = alloca [16 x i8], align 8 ; 5 uses
  %i.o = alloca [96 x i8], align 8                ; 13 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [16 x i8], align 4                ; 2 uses
  %i.t = alloca [96 x i8], align 8                ; 16 uses
  %i.u = alloca [32 x i8], align 8                ; 7 uses
  %i.v = alloca [24 x i8], align 8                ; 8 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 9 uses
  %i.y = alloca [24 x i8], align 8                ; 10 uses
  %i.z = alloca [24 x i8], align 8                ; 12 uses
  %i.aa = alloca [4 x i8], align 4                ; 4 uses
  store i32 %1, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ac = load i8, ptr %i.ab, align 8, !range !116, !noundef !44
  %i.ad = zext nneg i8 %i.ac to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN93_$LT$nls..diagnostic..SerializableDiagnostic$u20$as$u20$nls..diagnostic..DiagnosticCompat$GT$13from_codespan17h3cd31644973f5db5E", i64 %i.ad
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
end_hunk_4
