Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel-0bf7be8da7660119.nickel.eb3b3307132f046e-cgu.0?download=true
inline.NumInlined: 19446
inline.NumDeleted: 8632
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 85
loop-unroll.NumUnrolled: 133
begin_hunk_0_@"_ZN108_$LT$nickel_lang_vector..vector..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he31fad0083f1bcecE":bb.a
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ds ; 2 uses
  %i.du = load i64, ptr %i.y, align 8, !alias.scope !3696, !noundef !34 ; 2 uses
  %i.dv = sub i64 %i.du, %i.ds                    ; 3 uses
  %i.dw = icmp eq i64 %i.du, %i.ds
  br i1 %i.dw, label %"_ZN4core3ptr224drop_in_place$LT$core..option..Option$LT$imbl_sized_chunks..sized_chunk..iter..Iter$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$32_usize$GT$$GT$$GT$17h0ba417f6b14861c0E.exit", label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ap, %"_ZN4core3ptr135drop_in_place$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h446dccb7318fcc4eE.exit.i.i.i.i.i"
  %.sroa.0.09.i.i.i.i.i = phi i64 [ %i.dy, %"_ZN4core3ptr135drop_in_place$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h446dccb7318fcc4eE.exit.i.i.i.i.i" ], [ 0, %bb.ap ] ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %.sroa.0.09.i.i.i.i.i ; 2 uses
  %i.dy = add nuw i64 %.sroa.0.09.i.i.i.i.i, 1    ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3697)
  call void @llvm.experimental.noalias.scope.decl(metadata !3698)
  %i.dz = load ptr, ptr %i.dx, align 8, !alias.scope !3699, !nonnull !34, !noundef !34 ; 2 uses
  %i.ea = load i64, ptr %i.dz, align 8, !noalias !3700, !noundef !34
  %i.eb = add i64 %i.ea, -1                       ; 2 uses
  store i64 %i.eb, ptr %i.dz, align 8, !noalias !3700
  %i.ec = icmp eq i64 %i.eb, 0
  br i1 %i.ec, label %bb.aq, label %"_ZN4core3ptr135drop_in_place$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h446dccb7318fcc4eE.exit.i.i.i.i.i"

bb.aq:                                            ; preds = %.lr.ph.i.i.i.i.i
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h0a6c46dc2ab971ccE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dx)
          to label %"_ZN4core3ptr135drop_in_place$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h446dccb7318fcc4eE.exit.i.i.i.i.i" unwind label %bb.ar

"_ZN4core3ptr135drop_in_place$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h446dccb7318fcc4eE.exit.i.i.i.i.i": ; preds = %bb.aq, %.lr.ph.i.i.i.i.i
  %i.ed = icmp eq i64 %i.dy, %i.dv
  br i1 %i.ed, label %"_ZN4core3ptr224drop_in_place$LT$core..option..Option$LT$imbl_sized_chunks..sized_chunk..iter..Iter$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$32_usize$GT$$GT$$GT$17h0ba417f6b14861c0E.exit.loopexit", label %.lr.ph.i.i.i.i.i

bb.ar:                                            ; preds = %bb.aq
  %i.ee = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ef = icmp eq i64 %i.dy, %i.dv
  br i1 %i.ef, label %common.resume, label %.lr.ph12.i.i.i.i.i

.lr.ph12.i.i.i.i.i:                               ; preds = %bb.ar, %"_ZN4core3ptr135drop_in_place$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h446dccb7318fcc4eE.exit8.i.i.i.i.i"
  %.sroa.0.110.i.i.i.i.i = phi i64 [ %i.eh, %"_ZN4core3ptr135drop_in_place$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h446dccb7318fcc4eE.exit8.i.i.i.i.i" ], [ %i.dy, %bb.ar ] ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %.sroa.0.110.i.i.i.i.i ; 2 uses
  %i.eh = add i64 %.sroa.0.110.i.i.i.i.i, 1       ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3701)
  call void @llvm.experimental.noalias.scope.decl(metadata !3702)
  %i.ei = load ptr, ptr %i.eg, align 8, !alias.scope !3703, !nonnull !34, !noundef !34 ; 2 uses
  %i.ej = load i64, ptr %i.ei, align 8, !noalias !3704, !noundef !34
  %i.ek = add i64 %i.ej, -1                       ; 2 uses
  store i64 %i.ek, ptr %i.ei, align 8, !noalias !3704
  %i.el = icmp eq i64 %i.ek, 0
  br i1 %i.el, label %bb.as, label %"_ZN4core3ptr135drop_in_place$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h446dccb7318fcc4eE.exit8.i.i.i.i.i"

bb.as:                                            ; preds = %.lr.ph12.i.i.i.i.i
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h0a6c46dc2ab971ccE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.eg)
          to label %"_ZN4core3ptr135drop_in_place$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h446dccb7318fcc4eE.exit8.i.i.i.i.i" unwind label %bb.at

"_ZN4core3ptr135drop_in_place$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h446dccb7318fcc4eE.exit8.i.i.i.i.i": ; preds = %bb.as, %.lr.ph12.i.i.i.i.i
  %i.em = icmp eq i64 %i.eh, %i.dv
  br i1 %i.em, label %common.resume, label %.lr.ph12.i.i.i.i.i

bb.at:                                            ; preds = %bb.as
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

"_ZN4core3ptr224drop_in_place$LT$core..option..Option$LT$imbl_sized_chunks..sized_chunk..iter..Iter$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$32_usize$GT$$GT$$GT$17h0ba417f6b14861c0E.exit.loopexit": ; preds = %"_ZN4core3ptr135drop_in_place$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h446dccb7318fcc4eE.exit.i.i.i.i.i"
  %.pr.pre = load i64, ptr %i.s, align 8
  br label %"_ZN4core3ptr224drop_in_place$LT$core..option..Option$LT$imbl_sized_chunks..sized_chunk..iter..Iter$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$32_usize$GT$$GT$$GT$17h0ba417f6b14861c0E.exit"

"_ZN4core3ptr224drop_in_place$LT$core..option..Option$LT$imbl_sized_chunks..sized_chunk..iter..Iter$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$32_usize$GT$$GT$$GT$17h0ba417f6b14861c0E.exit": ; preds = %"_ZN4core3ptr224drop_in_place$LT$core..option..Option$LT$imbl_sized_chunks..sized_chunk..iter..Iter$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$32_usize$GT$$GT$$GT$17h0ba417f6b14861c0E.exit.loopexit", %bb.ap
  %.pr = phi i64 [ %.pr.pre, %"_ZN4core3ptr224drop_in_place$LT$core..option..Option$LT$imbl_sized_chunks..sized_chunk..iter..Iter$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$32_usize$GT$$GT$$GT$17h0ba417f6b14861c0E.exit.loopexit" ], [ %i.dn, %bb.ap ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.not = icmp eq i64 %.pr, 0
  br i1 %.not, label %._crit_edge, label %bb.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN109_$LT$nickel..global..CliReporter$u20$as$u20$nickel_lang_core..error..Reporter$LT$nickel..error..Error$GT$$GT$6report17hc6a69f48ad502e56E"(i64 %.0.val, ptr %.8.val, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(136) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [176 x i8], align 8               ; 5 uses
  %i.c = alloca [176 x i8], align 8               ; 5 uses
  %i.d = alloca [144 x i8], align 8               ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 7 uses
  %i.g = alloca [144 x i8], align 8               ; 6 uses
  %.sroa.6.i.i.i = alloca [136 x i8], align 8     ; 4 uses
  %i.h = alloca [176 x i8], align 8               ; 18 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [136 x i8], align 8               ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.8.i.i = alloca [16 x i8], align 8        ; 5 uses
  %i.l = alloca [40 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %.sroa.5.i.i = alloca [128 x i8], align 8       ; 10 uses
  %.sroa.6.i.i = alloca [128 x i8], align 8       ; 6 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 7 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [40 x i8], align 8                ; 8 uses
  %i.u = alloca [16 x i8], align 8                ; 7 uses
  %i.v = alloca [144 x i8], align 8               ; 5 uses
  %i.w = alloca [136 x i8], align 8               ; 8 uses
  %i.x = alloca [136 x i8], align 8               ; 10 uses
  %i.y = alloca [136 x i8], align 8               ; 9 uses
  %i.z = alloca [144 x i8], align 8               ; 22 uses
  %i.aa = alloca [136 x i8], align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !3854
  switch i64 %.0.val, label %default.unreachable.i [
    i64 0, label %bb.b
    i64 1, label %bb.ak
    i64 2, label %bb.bf
  ]

default.unreachable.i:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !3854
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.y, ptr noundef nonnull readonly align 8 dereferenceable(136) %0, i64 136, i1 false), !noalias !3855
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3856)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3857)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !3854
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  store i32 1000000000, ptr %i.ab, align 8, !noalias !3858
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !3858
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.8.val, i64 128 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.8.val, i64 400 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.t, i8 0, i64 40, i1 false), !noalias !3858
  %i.af = load atomic i64, ptr %i.ad monotonic, align 8, !noalias !3859 ; 2 uses
  %i.ag = load i64, ptr %i.ae, align 16, !noalias !3859, !noundef !34 ; 2 uses
  %i.ah = and i64 %i.ag, %i.af
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %.lr.ph.i.lr.ph.i.i, label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$5write17hc952838bb411324cE.exit.i.i"

.lr.ph.i.lr.ph.i.i:                               ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %.8.val, i64 392 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.8.val, i64 408
  %i.al = getelementptr inbounds nuw i8, ptr %.8.val, i64 416
  %i.am = getelementptr inbounds nuw i8, ptr %.8.val, i64 384
  %.sroa.426.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.an = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4sync4mpmc7context7Context4with7CONTEXT29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h93069091f6f7e02cE") ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ag, %.lr.ph.i.lr.ph.i.i
  %i.ap = phi i64 [ %i.ag, %.lr.ph.i.lr.ph.i.i ], [ %i.do, %bb.ag ]
  %i.aq = phi i64 [ %i.af, %.lr.ph.i.lr.ph.i.i ], [ %i.dn, %bb.ag ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3860)
  br label %bb.c

bb.c:                                             ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i, %.lr.ph.i.i.i
  %i.ar = phi i64 [ %i.ap, %.lr.ph.i.i.i ], [ %i.bw, %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i ]
  %.sroa.01.033.i.i.i = phi i64 [ %i.aq, %.lr.ph.i.i.i ], [ %i.bv, %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i ] ; 8 uses
  %.sroa.0.02832.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %.sroa.0.1.i.i.i, %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i ] ; 14 uses
  %i.as = add i64 %i.ar, -1
  %i.at = and i64 %i.as, %.sroa.01.033.i.i.i      ; 3 uses
  %i.au = load i64, ptr %i.aj, align 8, !noalias !3861, !noundef !34
  %i.av = sub i64 0, %i.au
  %i.aw = and i64 %.sroa.01.033.i.i.i, %i.av
  %i.ax = load ptr, ptr %i.ak, align 8, !noalias !3861, !nonnull !34, !align !41, !noundef !34
  %i.ay = load i64, ptr %i.al, align 16, !noalias !3861, !noundef !34
  %i.az = icmp ult i64 %i.at, %i.ay
  call void @llvm.assume(i1 %i.az)
  %i.ba = getelementptr inbounds nuw [144 x i8], ptr %i.ax, i64 %i.at ; 5 uses
  %i.bb = load atomic i64, ptr %i.ba acquire, align 8, !noalias !3861 ; 2 uses
  %i.bc = icmp eq i64 %.sroa.01.033.i.i.i, %i.bb
  br i1 %i.bc, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bd = load i64, ptr %i.aj, align 8, !noalias !3861, !noundef !34
  %i.be = add i64 %i.bd, %i.bb
  %i.bf = add i64 %.sroa.01.033.i.i.i, 1
  %i.bg = icmp eq i64 %i.be, %i.bf
  br i1 %i.bg, label %bb.i, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.bh = add nuw i64 %i.at, 1
  %i.bi = load i64, ptr %i.am, align 128, !noalias !3861, !noundef !34
  %i.bj = icmp ult i64 %i.bh, %i.bi
  br i1 %i.bj, label %bb.l, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.bk = icmp ult i32 %.sroa.0.02832.i.i.i, 7
  br i1 %i.bk, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
          to label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i unwind label %.body.thread34.loopexit.i.i, !noalias !3858

bb.h:                                             ; preds = %bb.f
  %.not.i.i.i.i = icmp eq i32 %.sroa.0.02832.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.h
  %i.bl = mul nuw nsw i32 %.sroa.0.02832.i.i.i, %.sroa.0.02832.i.i.i ; 2 uses
  %xtraiter189 = and i32 %i.bl, 7                 ; 3 uses
  %i.bm = icmp ult i32 %.sroa.0.02832.i.i.i, 3
  br i1 %i.bm, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter193 = and i32 %i.bl, 56
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %niter194 = phi i32 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter194.next.7, %.lr.ph.i.i.i.i ]
  call void @llvm.x86.sse2.pause() #53, !noalias !3861
  call void @llvm.x86.sse2.pause() #53, !noalias !3861
  call void @llvm.x86.sse2.pause() #53, !noalias !3861
  call void @llvm.x86.sse2.pause() #53, !noalias !3861
  call void @llvm.x86.sse2.pause() #53, !noalias !3861
  call void @llvm.x86.sse2.pause() #53, !noalias !3861
  call void @llvm.x86.sse2.pause() #53, !noalias !3861
  call void @llvm.x86.sse2.pause() #53, !noalias !3861
  %niter194.next.7 = add i32 %niter194, 8         ; 2 uses
  %niter194.ncmp.7 = icmp eq i32 %niter194.next.7, %unroll_iter193
  br i1 %niter194.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod191.not = icmp eq i32 %xtraiter189, 0
  br i1 %lcmp.mod191.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %lcmp.mod192 = icmp ne i32 %xtraiter189, 0
  call void @llvm.assume(i1 %lcmp.mod192)
  br label %.lr.ph.i.i.i.i.epil

.lr.ph.i.i.i.i.epil:                              ; preds = %.lr.ph.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader
  %epil.iter190 = phi i32 [ 0, %.lr.ph.i.i.i.i.epil.preheader ], [ %epil.iter190.next, %.lr.ph.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause() #53, !noalias !3861
  %epil.iter190.next = add i32 %epil.iter190, 1   ; 2 uses
  %epil.iter190.cmp.not = icmp eq i32 %epil.iter190.next, %xtraiter189
  br i1 %epil.iter190.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i, label %.lr.ph.i.i.i.i.epil, !llvm.loop !3714

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.epil, %bb.h, %bb.g
  %i.bn = add i32 %.sroa.0.02832.i.i.i, 1
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i

bb.i:                                             ; preds = %bb.d
  fence seq_cst
  %i.bo = load atomic i64, ptr %.8.val monotonic, align 16, !noalias !3861
  %i.bp = load i64, ptr %i.aj, align 8, !noalias !3861, !noundef !34
  %i.bq = add i64 %i.bp, %i.bo
  %i.br = icmp eq i64 %i.bq, %.sroa.01.033.i.i.i
  br i1 %i.br, label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$10start_send17ha0122755b1ffbf28E.exit.i.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.0.0.i.i.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.02832.i.i.i, i32 6) ; 2 uses
  %i.bs = mul nuw nsw i32 %.sroa.0.0.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i ; 2 uses
  %.not.i11.i.i.i = icmp eq i32 %.sroa.0.02832.i.i.i, 0
  br i1 %.not.i11.i.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i, label %.lr.ph.i12.i.i.i.preheader

.lr.ph.i12.i.i.i.preheader:                       ; preds = %bb.j
  %xtraiter195 = and i32 %i.bs, 5                 ; 3 uses
  %i.bt = icmp ult i32 %.sroa.0.02832.i.i.i, 3
  br i1 %i.bt, label %.lr.ph.i12.i.i.i.epil.preheader, label %.lr.ph.i12.i.i.i.preheader.new

.lr.ph.i12.i.i.i.preheader.new:                   ; preds = %.lr.ph.i12.i.i.i.preheader
  %unroll_iter199 = and i32 %i.bs, 56
  br label %.lr.ph.i12.i.i.i

._crit_edge.loopexit.i.i.i.i.unr-lcssa:           ; preds = %.lr.ph.i12.i.i.i
  %lcmp.mod197.not = icmp eq i32 %xtraiter195, 0
  br i1 %lcmp.mod197.not, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i12.i.i.i.epil.preheader

.lr.ph.i12.i.i.i.epil.preheader:                  ; preds = %._crit_edge.loopexit.i.i.i.i.unr-lcssa, %.lr.ph.i12.i.i.i.preheader
  %lcmp.mod198 = icmp ne i32 %xtraiter195, 0
  call void @llvm.assume(i1 %lcmp.mod198)
  br label %.lr.ph.i12.i.i.i.epil

.lr.ph.i12.i.i.i.epil:                            ; preds = %.lr.ph.i12.i.i.i.epil, %.lr.ph.i12.i.i.i.epil.preheader
  %epil.iter196 = phi i32 [ 0, %.lr.ph.i12.i.i.i.epil.preheader ], [ %epil.iter196.next, %.lr.ph.i12.i.i.i.epil ]
  call void @llvm.x86.sse2.pause() #53, !noalias !3861
  %epil.iter196.next = add i32 %epil.iter196, 1   ; 2 uses
  %epil.iter196.cmp.not = icmp eq i32 %epil.iter196.next, %xtraiter195
  br i1 %epil.iter196.cmp.not, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i12.i.i.i.epil, !llvm.loop !3715

._crit_edge.loopexit.i.i.i.i:                     ; preds = %.lr.ph.i12.i.i.i.epil, %._crit_edge.loopexit.i.i.i.i.unr-lcssa
  %i.bu = add i32 %.sroa.0.02832.i.i.i, 1
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i

.lr.ph.i12.i.i.i:                                 ; preds = %.lr.ph.i12.i.i.i, %.lr.ph.i12.i.i.i.preheader.new
  %niter200 = phi i32 [ 0, %.lr.ph.i12.i.i.i.preheader.new ], [ %niter200.next.7, %.lr.ph.i12.i.i.i ]
  call void @llvm.x86.sse2.pause() #53, !noalias !3861
  call void @llvm.x86.sse2.pause() #53, !noalias !3861
  call void @llvm.x86.sse2.pause() #53, !noalias !3861
  call void @llvm.x86.sse2.pause() #53, !noalias !3861
  call void @llvm.x86.sse2.pause() #53, !noalias !3861
  call void @llvm.x86.sse2.pause() #53, !noalias !3861
  call void @llvm.x86.sse2.pause() #53, !noalias !3861
  call void @llvm.x86.sse2.pause() #53, !noalias !3861
  %niter200.next.7 = add i32 %niter200, 8         ; 2 uses
  %niter200.ncmp.7 = icmp eq i32 %niter200.next.7, %unroll_iter199
  br i1 %niter200.ncmp.7, label %._crit_edge.loopexit.i.i.i.i.unr-lcssa, label %.lr.ph.i12.i.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i: ; preds = %._crit_edge.loopexit.i20.i.i.i, %bb.n, %._crit_edge.loopexit.i.i.i.i, %bb.j, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i
  %.sroa.0.1.i.i.i = phi i32 [ %i.bn, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i ], [ 1, %bb.n ], [ %i.cf, %._crit_edge.loopexit.i20.i.i.i ], [ %i.bu, %._crit_edge.loopexit.i.i.i.i ], [ 1, %bb.j ]
  %i.bv = load atomic i64, ptr %i.ad monotonic, align 16, !noalias !3861 ; 2 uses
  %i.bw = load i64, ptr %i.ae, align 16, !noalias !3861, !noundef !34 ; 2 uses
  %i.bx = and i64 %i.bw, %i.bv
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %bb.c, label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$5write17hc952838bb411324cE.exit.i.i"

bb.k:                                             ; preds = %bb.e
  %i.bz = load i64, ptr %i.aj, align 8, !noalias !3861, !noundef !34
  %i.ca = add i64 %i.bz, %i.aw
  br label %bb.m

bb.l:                                             ; preds = %bb.e
  %i.cb = add i64 %.sroa.01.033.i.i.i, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.010.0.i.i.i = phi i64 [ %i.cb, %bb.l ], [ %i.ca, %bb.k ]
  %i.cc = cmpxchg weak ptr %i.ad, i64 %.sroa.01.033.i.i.i, i64 %.sroa.010.0.i.i.i seq_cst monotonic, align 8, !noalias !3861
  %.sroa.18.0.in.i.i.i.i = extractvalue { i64, i1 } %i.cc, 1
  br i1 %.sroa.18.0.in.i.i.i.i, label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$5write17hc952838bb411324cE.exit.thread.i.i", label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.i.i15.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.02832.i.i.i, i32 6) ; 2 uses
  %i.cd = mul nuw nsw i32 %.sroa.0.0.i.i15.i.i.i, %.sroa.0.0.i.i15.i.i.i ; 2 uses
  %.not.i16.i.i.i = icmp eq i32 %.sroa.0.02832.i.i.i, 0
  br i1 %.not.i16.i.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i, label %.lr.ph.i17.i.i.i.preheader

.lr.ph.i17.i.i.i.preheader:                       ; preds = %bb.n
  %xtraiter201 = and i32 %i.cd, 5                 ; 3 uses
  %i.ce = icmp ult i32 %.sroa.0.02832.i.i.i, 3
  br i1 %i.ce, label %.lr.ph.i17.i.i.i.epil.preheader, label %.lr.ph.i17.i.i.i.preheader.new

.lr.ph.i17.i.i.i.preheader.new:                   ; preds = %.lr.ph.i17.i.i.i.preheader
  %unroll_iter205 = and i32 %i.cd, 56
  br label %.lr.ph.i17.i.i.i

._crit_edge.loopexit.i20.i.i.i.unr-lcssa:         ; preds = %.lr.ph.i17.i.i.i
  %lcmp.mod203.not = icmp eq i32 %xtraiter201, 0
  br i1 %lcmp.mod203.not, label %._crit_edge.loopexit.i20.i.i.i, label %.lr.ph.i17.i.i.i.epil.preheader

.lr.ph.i17.i.i.i.epil.preheader:                  ; preds = %._crit_edge.loopexit.i20.i.i.i.unr-lcssa, %.lr.ph.i17.i.i.i.preheader
  %lcmp.mod204 = icmp ne i32 %xtraiter201, 0
  call void @llvm.assume(i1 %lcmp.mod204)
  br label %.lr.ph.i17.i.i.i.epil

.lr.ph.i17.i.i.i.epil:                            ; preds = %.lr.ph.i17.i.i.i.epil, %.lr.ph.i17.i.i.i.epil.preheader
  %epil.iter202 = phi i32 [ 0, %.lr.ph.i17.i.i.i.epil.preheader ], [ %epil.iter202.next, %.lr.ph.i17.i.i.i.epil ]
  call void @llvm.x86.sse2.pause() #53, !noalias !3861
  %epil.iter202.next = add i32 %epil.iter202, 1   ; 2 uses
  %epil.iter202.cmp.not = icmp eq i32 %epil.iter202.next, %xtraiter201
  br i1 %epil.iter202.cmp.not, label %._crit_edge.loopexit.i20.i.i.i, label %.lr.ph.i17.i.i.i.epil, !llvm.loop !3716

._crit_edge.loopexit.i20.i.i.i:                   ; preds = %.lr.ph.i17.i.i.i.epil, %._crit_edge.loopexit.i20.i.i.i.unr-lcssa
  %i.cf = add i32 %.sroa.0.02832.i.i.i, 1
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i

.lr.ph.i17.i.i.i:                                 ; preds = %.lr.ph.i17.i.i.i, %.lr.ph.i17.i.i.i.preheader.new
  %niter206 = phi i32 [ 0, %.lr.ph.i17.i.i.i.preheader.new ], [ %niter206.next.7, %.lr.ph.i17.i.i.i ]
  call void @llvm.x86.sse2.pause() #53, !noalias !3861
  call void @llvm.x86.sse2.pause() #53, !noalias !3861
  call void @llvm.x86.sse2.pause() #53, !noalias !3861
  call void @llvm.x86.sse2.pause() #53, !noalias !3861
  call void @llvm.x86.sse2.pause() #53, !noalias !3861
  call void @llvm.x86.sse2.pause() #53, !noalias !3861
  call void @llvm.x86.sse2.pause() #53, !noalias !3861
  call void @llvm.x86.sse2.pause() #53, !noalias !3861
  %niter206.next.7 = add i32 %niter206, 8         ; 2 uses
  %niter206.ncmp.7 = icmp eq i32 %niter206.next.7, %unroll_iter205
  br i1 %niter206.ncmp.7, label %._crit_edge.loopexit.i20.i.i.i.unr-lcssa, label %.lr.ph.i17.i.i.i

.body.thread34.loopexit.i.i:                      ; preds = %bb.g
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i

.body.thread34.loopexit.split-lp.i.i:             ; preds = %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17hc98c1b810094c2c1E.exit.i.i.i", %bb.aa, %bb.v, %bb.q, %_ZN4core3ops8function6FnOnce9call_once17h88fdf9ad0ef47649E.exit.i.i.i.i, %bb.o
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i

"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$10start_send17ha0122755b1ffbf28E.exit.i.i": ; preds = %bb.i
  %i.cg = load i32, ptr %i.ab, align 8, !range !73, !noalias !3858, !noundef !34 ; 2 uses
  %.not.i.i = icmp eq i32 %i.cg, 1000000000
  br i1 %.not.i.i, label %bb.p, label %bb.o

"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$5write17hc952838bb411324cE.exit.thread.i.i": ; preds = %bb.m
  store ptr %i.ba, ptr %i.t, align 8, !alias.scope !3860, !noalias !3858
  %i.ch = add i64 %.sroa.01.033.i.i.i, 1          ; 2 uses
  store i64 %i.ch, ptr %i.ac, align 8, !alias.scope !3860, !noalias !3858
  %.sroa.022.0.copyload39.i.i = load i64, ptr %i.y, align 8, !alias.scope !3857, !noalias !3862
  %.sroa.5.0..sroa_idx40.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i64 %.sroa.022.0.copyload39.i.i, ptr %i.ci, align 8, !noalias !3863
  %.sroa.5.0..sroa_idx24.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.5.0..sroa_idx24.i.i, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.5.0..sroa_idx40.i.i, i64 128, i1 false), !noalias !3862
  store atomic i64 %i.ch, ptr %i.ba release, align 8, !noalias !3864
  %i.cj = getelementptr inbounds nuw i8, ptr %.8.val, i64 320
  call fastcc void @_ZN3std4sync4mpmc5waker9SyncWaker6notify17hb84be3c8ed2df7a5E(ptr noundef nonnull align 8 %i.cj), !noalias !3858
  br label %bb.ai
end_hunk_0
begin_hunk_1_@"_ZN109_$LT$nickel..global..CliReporter$u20$as$u20$nickel_lang_core..error..Reporter$LT$nickel..error..Error$GT$$GT$6report17hc6a69f48ad502e56E":bb.a
"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h7f4ce827eda62fa6E.exit19.i.i.i.i.i": ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !3865
  br label %bb.ag

bb.w:                                             ; preds = %bb.ac, %bb.t
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !3865
  unreachable

bb.x:                                             ; preds = %_ZN4core3ops8function6FnOnce9call_once17h88fdf9ad0ef47649E.exit.thread.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !3865
  store ptr %i.cq, ptr %i.q, align 8, !noalias !3865
  %i.da = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  store atomic i64 0, ptr %i.da release, align 8, !noalias !3865
  %i.db = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  store atomic ptr null, ptr %i.db release, align 8, !noalias !3865
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !3865
  store ptr %i.t, ptr %i.o, align 8, !noalias !3865
  store ptr %.8.val, ptr %.sroa.59.0..sroa_idx10.i.i.i.i.i, align 8, !noalias !3858
  store ptr %i.u, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i.i, align 8, !noalias !3858
  invoke fastcc void @"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4send28_$u7b$$u7b$closure$u7d$$u7d$17h105d06c0167b48aeE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.o, ptr nonnull %i.cq)
          to label %bb.y unwind label %bb.ab, !noalias !3865

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3865
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !3865
  %i.dc = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i.i, align 8, !noalias !3865, !noundef !34 ; 3 uses
  store ptr %i.dc, ptr %i.n, align 8, !noalias !3865
  store ptr %i.cq, ptr %.sroa.0.0.i.i.i2.i.i.i.i, align 8, !noalias !3865
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h28504ab5b7a5d52bE.exit.i.i.i.i.i", label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.de = atomicrmw sub ptr %i.dc, i64 1 release, align 8, !noalias !3877
  %i.df = icmp eq i64 %i.de, 1
  br i1 %i.df, label %bb.aa, label %"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h28504ab5b7a5d52bE.exit.i.i.i.i.i"

bb.aa:                                            ; preds = %bb.z
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17he4d92f17da45dc34E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h28504ab5b7a5d52bE.exit.i.i.i.i.i" unwind label %.body.thread34.loopexit.split-lp.i.i, !noalias !3858

"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h28504ab5b7a5d52bE.exit.i.i.i.i.i": ; preds = %bb.aa, %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3865
  br label %bb.ag

bb.ab:                                            ; preds = %bb.x
  %i.dg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dh = atomicrmw sub ptr %i.cq, i64 1 release, align 8, !noalias !3878
  %i.di = icmp eq i64 %i.dh, 1
  br i1 %i.di, label %bb.ac, label %.body.thread.i.i

bb.ac:                                            ; preds = %bb.ab
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17he4d92f17da45dc34E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %.body.thread.i.i unwind label %bb.w, !noalias !3865

"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17hc98c1b810094c2c1E.exit.i.i.i": ; preds = %.noexc14.i.i
  invoke fastcc void @"_ZN3std4sync4mpmc7context7Context4with28_$u7b$$u7b$closure$u7d$$u7d$17h262a251d67435aa7E"(ptr nonnull %i.s)
          to label %bb.ag unwind label %.body.thread34.loopexit.split-lp.i.i, !noalias !3858

bb.ad:                                            ; preds = %bb.o
  %i.dj = extractvalue { i64, i32 } %i.cl, 0      ; 2 uses
  %i.dk = icmp eq i64 %i.dj, %i.ck
  br i1 %i.dk, label %.split.i.i, label %bb.ae

.split.i.i:                                       ; preds = %bb.ad
  %i.dl = extractvalue { i64, i32 } %i.cl, 1      ; 2 uses
  %i.dm = icmp ult i32 %i.dl, 1000000000
  call void @llvm.assume(i1 %i.dm)
  %.not48.i.i = icmp samesign ult i32 %i.dl, %i.cg
  br i1 %.not48.i.i, label %bb.p, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %.not47.i.i = icmp slt i64 %i.dj, %i.ck
  br i1 %.not47.i.i, label %bb.p, label %bb.af

bb.af:                                            ; preds = %bb.ae, %.split.i.i
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(136) %i.y, i64 136, i1 false), !alias.scope !3879, !noalias !3854
  store i64 0, ptr %i.z, align 8, !alias.scope !3856, !noalias !3880
  br label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4send17hcdacc4e0acbe7183E.exit.i"

bb.ag:                                            ; preds = %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17hc98c1b810094c2c1E.exit.i.i.i", %"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h28504ab5b7a5d52bE.exit.i.i.i.i.i", %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h7f4ce827eda62fa6E.exit19.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !3865
  %i.dn = load atomic i64, ptr %i.ad monotonic, align 16, !noalias !3881 ; 2 uses
  %i.do = load i64, ptr %i.ae, align 16, !noalias !3881, !noundef !34 ; 2 uses
  %i.dp = and i64 %i.do, %i.dn
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %.lr.ph.i.i.i, label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$5write17hc952838bb411324cE.exit.i.i"

"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$5write17hc952838bb411324cE.exit.i.i": ; preds = %bb.ag, %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i, %bb.b
  %.sroa.022.0.copyload.i.i = load i64, ptr %i.y, align 8, !alias.scope !3857, !noalias !3862 ; 2 uses
  %.not11.i.i = icmp eq i64 %.sroa.022.0.copyload.i.i, -9223372036854775796
  br i1 %.not11.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$5write17hc952838bb411324cE.exit.i.i"
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.47.sroa.4.0..sroa.47.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.47.sroa.4.0..sroa.47.0..sroa_idx.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.5.0..sroa_idx.i.i, i64 128, i1 false), !alias.scope !3879, !noalias !3854
  store i64 1, ptr %i.z, align 8, !alias.scope !3856, !noalias !3880
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %.sroa.022.0.copyload.i.i, ptr %.sroa.47.0..sroa_idx.i.i, align 8, !alias.scope !3856, !noalias !3880
  br label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4send17hcdacc4e0acbe7183E.exit.i"

bb.ai:                                            ; preds = %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$5write17hc952838bb411324cE.exit.i.i", %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$5write17hc952838bb411324cE.exit.thread.i.i"
  store i64 2, ptr %i.z, align 8, !alias.scope !3856, !noalias !3880
  br label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4send17hcdacc4e0acbe7183E.exit.i"

common.resume.i:                                  ; preds = %bb.dv, %.body.thread72.i.i, %bb.de, %.body.i.i.i, %.body.i.i, %.body.thread.i9.i, %.body.thread.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.jt, %bb.de ], [ %eh.lpad-body33.i.i, %.body.thread.i.i ], [ %eh.lpad-body21.i.i, %.body.thread.i9.i ], [ %i.ic, %.body.i.i ], [ %.pn.pn75.i.i, %.body.thread72.i.i ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.kn, %bb.dv ]
  resume { ptr, i32 } %common.resume.op.i

.body.thread.i.i:                                 ; preds = %bb.ac, %bb.ab, %bb.t, %bb.s, %.body.thread34.loopexit.split-lp.i.i, %.body.thread34.loopexit.i.i
  %eh.lpad-body33.i.i = phi { ptr, i32 } [ %i.dg, %bb.ac ], [ %i.cs, %bb.s ], [ %i.dg, %bb.ab ], [ %i.cs, %bb.t ], [ %lpad.loopexit.i.i, %.body.thread34.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.body.thread34.loopexit.split-lp.i.i ]
  invoke fastcc void @"_ZN4core3ptr41drop_in_place$LT$nickel..error..Error$GT$17h4d7b9695d28c5d06E"(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.y) #61
          to label %common.resume.i unwind label %bb.aj, !noalias !3862

bb.aj:                                            ; preds = %.body.thread.i.i
  %i.dr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !3862
  unreachable

"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4send17hcdacc4e0acbe7183E.exit.i": ; preds = %bb.ai, %bb.ah, %bb.af
  %i.ds = phi i64 [ 0, %bb.af ], [ 1, %bb.ah ], [ 2, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !3858
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !3854
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !3854
  br label %bb.dr

bb.ak:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !3854
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(136) %0, i64 136, i1 false), !noalias !3855
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3882)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3883)
  %i.dt = getelementptr inbounds nuw i8, ptr %.8.val, i64 128 ; 5 uses
  %i.du = load atomic i64, ptr %i.dt acquire, align 8, !noalias !3884 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.8.val, i64 136 ; 5 uses
  %i.dw = load atomic ptr, ptr %i.dv acquire, align 8, !noalias !3884
  %i.dx = and i64 %i.du, 1
  %i.dy = icmp eq i64 %i.dx, 0
  br i1 %i.dy, label %.lr.ph.lr.ph.i.i.i, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17hf74e793055ca1600E.exit.thread.i.i"

"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17hf74e793055ca1600E.exit.thread.i.i": ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %.sroa.011.0.copyload28.i.i = load i64, ptr %i.x, align 8, !alias.scope !3883, !noalias !3885
  %.sroa.5.0..sroa_idx29.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.5.0..sroa_idx29.i.i, i64 128, i1 false), !noalias !3885
  br label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$5write17ha2d78e09f97ee791E.exit.i.i"

.lr.ph.lr.ph.i.i.i:                               ; preds = %bb.ak
  %i.dz = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  br label %.lr.ph.i.i4.i

.lr.ph.i.i4.i:                                    ; preds = %.outer.backedge.i.i.i, %.lr.ph.lr.ph.i.i.i
  %.sroa.01.0.ph89.i.i.i = phi i64 [ %i.du, %.lr.ph.lr.ph.i.i.i ], [ %i.ez, %.outer.backedge.i.i.i ] ; 2 uses
  %.sroa.05.0.ph88.i.i.i = phi ptr [ %i.dw, %.lr.ph.lr.ph.i.i.i ], [ %i.fa, %.outer.backedge.i.i.i ]
  %.sroa.0.0.ph87.i.i.i = phi i32 [ 0, %.lr.ph.lr.ph.i.i.i ], [ %.sroa.0.0.ph.be.i.i.i, %.outer.backedge.i.i.i ] ; 2 uses
  %.sroa.043.0.ph86.i.i.i = phi ptr [ null, %.lr.ph.lr.ph.i.i.i ], [ %.sroa.043.0.ph.be.i.i.i, %.outer.backedge.i.i.i ] ; 4 uses
  %i.ea = lshr exact i64 %.sroa.01.0.ph89.i.i.i, 1
  %i.eb = and i64 %i.ea, 31                       ; 2 uses
  %i.ec = icmp eq i64 %i.eb, 31
  br i1 %i.ec, label %.lr.ph.i.i, label %._crit_edge.i.i

bb.al:                                            ; preds = %.loopexit.i.i.i
  %i.ed = add i32 %.sroa.0.082.i63.i.i, 1         ; 2 uses
  %i.ee = lshr exact i64 %i.fd, 1
  %i.ef = and i64 %i.ee, 31                       ; 2 uses
  %i.eg = icmp eq i64 %i.ef, 31
  br i1 %i.eg, label %.lr.ph.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.al, %.lr.ph.i.i4.i
  %.sroa.01.084.i.lcssa.i.i = phi i64 [ %.sroa.01.0.ph89.i.i.i, %.lr.ph.i.i4.i ], [ %i.fd, %bb.al ] ; 2 uses
  %.sroa.05.083.i.lcssa.i.i = phi ptr [ %.sroa.05.0.ph88.i.i.i, %.lr.ph.i.i4.i ], [ %i.fe, %bb.al ] ; 2 uses
  %.sroa.0.082.i.lcssa.i.i = phi i32 [ %.sroa.0.0.ph87.i.i.i, %.lr.ph.i.i4.i ], [ %i.ed, %bb.al ] ; 6 uses
  %.lcssa.i.i = phi i64 [ %i.eb, %.lr.ph.i.i4.i ], [ %i.ef, %bb.al ] ; 2 uses
  %.not64.i.i.i = icmp eq i64 %.lcssa.i.i, 30     ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.043.0.ph86.i.i.i, null
  %or.cond.i.i.i = select i1 %.not64.i.i.i, i1 %.not.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %bb.ao, label %"_ZN4core3ptr130drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$std..sync..mpmc..list..Block$LT$nickel..error..Error$GT$$GT$$GT$$GT$17h94e6e1699ae26327E.exit.i.i.i"

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i4.i, %bb.al
  %.sroa.0.082.i63.i.i = phi i32 [ %i.ed, %bb.al ], [ %.sroa.0.0.ph87.i.i.i, %.lr.ph.i.i4.i ] ; 6 uses
  %i.eh = icmp ult i32 %.sroa.0.082.i63.i.i, 7
  br i1 %i.eh, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i.i
  invoke void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
          to label %.loopexit.i.i.i unwind label %.loopexit65.i.i.i, !noalias !3884

bb.an:                                            ; preds = %.lr.ph.i.i
  %.not.i.i.i10.i = icmp eq i32 %.sroa.0.082.i63.i.i, 0
  br i1 %.not.i.i.i10.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.i11.i.preheader

.lr.ph.i.i.i11.i.preheader:                       ; preds = %bb.an
  %i.ei = mul nuw nsw i32 %.sroa.0.082.i63.i.i, %.sroa.0.082.i63.i.i ; 2 uses
  %xtraiter = and i32 %i.ei, 7                    ; 3 uses
  %i.ej = icmp ult i32 %.sroa.0.082.i63.i.i, 3
  br i1 %i.ej, label %.lr.ph.i.i.i11.i.epil.preheader, label %.lr.ph.i.i.i11.i.preheader.new

.lr.ph.i.i.i11.i.preheader.new:                   ; preds = %.lr.ph.i.i.i11.i.preheader
  %unroll_iter = and i32 %i.ei, 56
  br label %.lr.ph.i.i.i11.i

.lr.ph.i.i.i11.i:                                 ; preds = %.lr.ph.i.i.i11.i, %.lr.ph.i.i.i11.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i11.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i11.i ]
  tail call void @llvm.x86.sse2.pause() #53, !noalias !3884
  tail call void @llvm.x86.sse2.pause() #53, !noalias !3884
  tail call void @llvm.x86.sse2.pause() #53, !noalias !3884
  tail call void @llvm.x86.sse2.pause() #53, !noalias !3884
  tail call void @llvm.x86.sse2.pause() #53, !noalias !3884
  tail call void @llvm.x86.sse2.pause() #53, !noalias !3884
  tail call void @llvm.x86.sse2.pause() #53, !noalias !3884
  tail call void @llvm.x86.sse2.pause() #53, !noalias !3884
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i11.i

"_ZN4core3ptr130drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$std..sync..mpmc..list..Block$LT$nickel..error..Error$GT$$GT$$GT$$GT$17h94e6e1699ae26327E.exit.i.i.i": ; preds = %bb.ao, %._crit_edge.i.i
  %.sroa.043.1.i.i.i = phi ptr [ %.sroa.043.0.ph86.i.i.i, %._crit_edge.i.i ], [ %i.el, %bb.ao ] ; 9 uses
  %i.ek = icmp eq ptr %.sroa.05.083.i.lcssa.i.i, null
  br i1 %i.ek, label %bb.ap, label %bb.av

bb.ao:                                            ; preds = %._crit_edge.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !3884
  %i.el = tail call noalias noundef align 8 dereferenceable_or_null(4472) ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef 4472, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !3884 ; 2 uses
  %i.em = icmp eq ptr %i.el, null
  br i1 %i.em, label %.noexc24.i.i.i, label %"_ZN4core3ptr130drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$std..sync..mpmc..list..Block$LT$nickel..error..Error$GT$$GT$$GT$$GT$17h94e6e1699ae26327E.exit.i.i.i", !prof !37

.noexc24.i.i.i:                                   ; preds = %bb.ao
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 4472) #59
          to label %.noexc.i.i unwind label %.body.thread23.i.i, !noalias !3886

.noexc.i.i:                                       ; preds = %.noexc24.i.i.i
  unreachable

bb.ap:                                            ; preds = %"_ZN4core3ptr130drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$std..sync..mpmc..list..Block$LT$nickel..error..Error$GT$$GT$$GT$$GT$17h94e6e1699ae26327E.exit.i.i.i"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !3884
  %i.en = tail call noalias noundef align 8 dereferenceable_or_null(4472) ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef 4472, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !3884 ; 6 uses
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %bb.aq, label %bb.ar, !prof !37

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 4472) #59
          to label %.noexc25.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !3884

.noexc25.i.i.i:                                   ; preds = %bb.aq
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.ep = cmpxchg ptr %i.dv, ptr null, ptr %i.en release monotonic, align 8, !noalias !3884
  %i.eq = extractvalue { ptr, i1 } %i.ep, 1
  br i1 %i.eq, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store atomic ptr %i.en, ptr %i.dz release, align 8, !noalias !3884
  br label %bb.av

bb.at:                                            ; preds = %bb.ar
  %i.er = icmp eq ptr %.sroa.043.1.i.i.i, null
  br i1 %i.er, label %.outer.backedge.i.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.043.1.i.i.i, i64 noundef 4472, i64 noundef 8) #53, !noalias !3884
  br label %.outer.backedge.i.i.i

bb.av:                                            ; preds = %bb.as, %"_ZN4core3ptr130drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$std..sync..mpmc..list..Block$LT$nickel..error..Error$GT$$GT$$GT$$GT$17h94e6e1699ae26327E.exit.i.i.i"
  %.sroa.05.1.i.i.i = phi ptr [ %.sroa.05.083.i.lcssa.i.i, %"_ZN4core3ptr130drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$std..sync..mpmc..list..Block$LT$nickel..error..Error$GT$$GT$$GT$$GT$17h94e6e1699ae26327E.exit.i.i.i" ], [ %i.en, %bb.as ] ; 3 uses
  %i.es = add i64 %.sroa.01.084.i.lcssa.i.i, 2
  %i.et = cmpxchg weak ptr %i.dt, i64 %.sroa.01.084.i.lcssa.i.i, i64 %i.es seq_cst acquire, align 8, !noalias !3884
  %.sroa.18.0.in.i.i.i5.i = extractvalue { i64, i1 } %i.et, 1
  br i1 %.sroa.18.0.in.i.i.i5.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %.sroa.0.0.i.i.i.i6.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.082.i.lcssa.i.i, i32 6) ; 2 uses
  %i.eu = mul nuw nsw i32 %.sroa.0.0.i.i.i.i6.i, %.sroa.0.0.i.i.i.i6.i ; 2 uses
  %.not.i30.i.i.i = icmp eq i32 %.sroa.0.082.i.lcssa.i.i, 0
  br i1 %.not.i30.i.i.i, label %.outer.backedge.i.i.i, label %.lr.ph.i31.i.i.i.preheader

.lr.ph.i31.i.i.i.preheader:                       ; preds = %bb.aw
  %xtraiter183 = and i32 %i.eu, 5                 ; 3 uses
  %i.ev = icmp ult i32 %.sroa.0.082.i.lcssa.i.i, 3
  br i1 %i.ev, label %.lr.ph.i31.i.i.i.epil.preheader, label %.lr.ph.i31.i.i.i.preheader.new

.lr.ph.i31.i.i.i.preheader.new:                   ; preds = %.lr.ph.i31.i.i.i.preheader
  %unroll_iter187 = and i32 %i.eu, 56
  br label %.lr.ph.i31.i.i.i

._crit_edge.loopexit.i.i.i7.i.unr-lcssa:          ; preds = %.lr.ph.i31.i.i.i
  %lcmp.mod185.not = icmp eq i32 %xtraiter183, 0
  br i1 %lcmp.mod185.not, label %._crit_edge.loopexit.i.i.i7.i, label %.lr.ph.i31.i.i.i.epil.preheader

.lr.ph.i31.i.i.i.epil.preheader:                  ; preds = %._crit_edge.loopexit.i.i.i7.i.unr-lcssa, %.lr.ph.i31.i.i.i.preheader
  %lcmp.mod186 = icmp ne i32 %xtraiter183, 0
  tail call void @llvm.assume(i1 %lcmp.mod186)
  br label %.lr.ph.i31.i.i.i.epil

.lr.ph.i31.i.i.i.epil:                            ; preds = %.lr.ph.i31.i.i.i.epil, %.lr.ph.i31.i.i.i.epil.preheader
  %epil.iter184 = phi i32 [ 0, %.lr.ph.i31.i.i.i.epil.preheader ], [ %epil.iter184.next, %.lr.ph.i31.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause() #53, !noalias !3884
  %epil.iter184.next = add i32 %epil.iter184, 1   ; 2 uses
  %epil.iter184.cmp.not = icmp eq i32 %epil.iter184.next, %xtraiter183
  br i1 %epil.iter184.cmp.not, label %._crit_edge.loopexit.i.i.i7.i, label %.lr.ph.i31.i.i.i.epil, !llvm.loop !3760

._crit_edge.loopexit.i.i.i7.i:                    ; preds = %.lr.ph.i31.i.i.i.epil, %._crit_edge.loopexit.i.i.i7.i.unr-lcssa
  %i.ew = add i32 %.sroa.0.082.i.lcssa.i.i, 1
  br label %.outer.backedge.i.i.i

.lr.ph.i31.i.i.i:                                 ; preds = %.lr.ph.i31.i.i.i, %.lr.ph.i31.i.i.i.preheader.new
  %niter188 = phi i32 [ 0, %.lr.ph.i31.i.i.i.preheader.new ], [ %niter188.next.7, %.lr.ph.i31.i.i.i ]
  tail call void @llvm.x86.sse2.pause() #53, !noalias !3884
  tail call void @llvm.x86.sse2.pause() #53, !noalias !3884
  tail call void @llvm.x86.sse2.pause() #53, !noalias !3884
  tail call void @llvm.x86.sse2.pause() #53, !noalias !3884
  tail call void @llvm.x86.sse2.pause() #53, !noalias !3884
  tail call void @llvm.x86.sse2.pause() #53, !noalias !3884
  tail call void @llvm.x86.sse2.pause() #53, !noalias !3884
  tail call void @llvm.x86.sse2.pause() #53, !noalias !3884
  %niter188.next.7 = add i32 %niter188, 8         ; 2 uses
  %niter188.ncmp.7 = icmp eq i32 %niter188.next.7, %unroll_iter187
  br i1 %niter188.ncmp.7, label %._crit_edge.loopexit.i.i.i7.i.unr-lcssa, label %.lr.ph.i31.i.i.i

bb.ax:                                            ; preds = %bb.av
  br i1 %.not64.i.i.i, label %bb.ay, label %.critedge.i.i.i

"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17hf74e793055ca1600E.exit.thread31.i.i": ; preds = %bb.ay
  store atomic ptr %.sroa.043.1.i.i.i, ptr %i.dv release, align 8, !noalias !3884
  %i.ex = atomicrmw add ptr %i.dt, i64 2 release, align 8, !noalias !3884 ; 0 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.05.1.i.i.i, i64 4464
  store atomic ptr %.sroa.043.1.i.i.i, ptr %i.ey release, align 8, !noalias !3884
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %.sroa.011.0.copyload34.i.i = load i64, ptr %i.x, align 8, !alias.scope !3883, !noalias !3885
  %.sroa.5.0..sroa_idx35.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.5.0..sroa_idx35.i.i, i64 128, i1 false), !noalias !3885
  br label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$5write17ha2d78e09f97ee791E.exit.thread.i.i"

bb.ay:                                            ; preds = %bb.ax
  %.not16.i.i.i = icmp eq ptr %.sroa.043.1.i.i.i, null
  br i1 %.not16.i.i.i, label %bb.az, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17hf74e793055ca1600E.exit.thread31.i.i", !prof !37

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @709) #59
          to label %.noexc5.i.i unwind label %.body.thread23.i.i, !noalias !3886

.noexc5.i.i:                                      ; preds = %bb.az
  unreachable

.outer.backedge.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i7.i, %bb.aw, %bb.au, %bb.at
  %.sroa.043.0.ph.be.i.i.i = phi ptr [ %i.en, %bb.au ], [ %i.en, %bb.at ], [ %.sroa.043.1.i.i.i, %bb.aw ], [ %.sroa.043.1.i.i.i, %._crit_edge.loopexit.i.i.i7.i ] ; 2 uses
  %.sroa.0.0.ph.be.i.i.i = phi i32 [ %.sroa.0.082.i.lcssa.i.i, %bb.au ], [ %.sroa.0.082.i.lcssa.i.i, %bb.at ], [ 1, %bb.aw ], [ %i.ew, %._crit_edge.loopexit.i.i.i7.i ]
  %i.ez = load atomic i64, ptr %i.dt acquire, align 8, !noalias !3884 ; 2 uses
  %i.fa = load atomic ptr, ptr %i.dv acquire, align 8, !noalias !3884
  %i.fb = and i64 %i.ez, 1
  %i.fc = icmp eq i64 %i.fb, 0
  br i1 %i.fc, label %.lr.ph.i.i4.i, label %.critedge.i.i.i

.loopexit.i.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i.i.i11.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i.i.i, label %.lr.ph.i.i.i11.i.epil.preheader

.lr.ph.i.i.i11.i.epil.preheader:                  ; preds = %.loopexit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i11.i.preheader
  %lcmp.mod182 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod182)
  br label %.lr.ph.i.i.i11.i.epil

.lr.ph.i.i.i11.i.epil:                            ; preds = %.lr.ph.i.i.i11.i.epil, %.lr.ph.i.i.i11.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i11.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i11.i.epil ]
  tail call void @llvm.x86.sse2.pause() #53, !noalias !3884
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i.i.i, label %.lr.ph.i.i.i11.i.epil, !llvm.loop !3761

.loopexit.i.i.i:                                  ; preds = %.loopexit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i11.i.epil, %bb.an, %bb.am
  %i.fd = load atomic i64, ptr %i.dt acquire, align 8, !noalias !3884 ; 3 uses
  %i.fe = load atomic ptr, ptr %i.dv acquire, align 8, !noalias !3884
  %i.ff = and i64 %i.fd, 1
  %i.fg = icmp eq i64 %i.ff, 0
  br i1 %i.fg, label %bb.al, label %.critedge.i.i.i

.loopexit65.i.i.i:                                ; preds = %bb.am
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

.loopexit.split-lp.i.i.i:                         ; preds = %bb.aq
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.ba:                                            ; preds = %.loopexit.split-lp.i.i.i, %.loopexit65.i.i.i
  %.sroa.043.2.ph.i.i.i = phi ptr [ %.sroa.043.0.ph86.i.i.i, %.loopexit65.i.i.i ], [ %.sroa.043.1.i.i.i, %.loopexit.split-lp.i.i.i ] ; 2 uses
  %lpad.phi.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i, %.loopexit65.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ] ; 2 uses
  %i.fh = icmp eq ptr %.sroa.043.2.ph.i.i.i, null
  br i1 %i.fh, label %.body.thread.i9.i, label %.thread55.i.i.i

end_hunk_1
begin_hunk_2_@"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17ha8e6707db65c5813E":bb.a
bb.i:                                             ; preds = %bb.h
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17he4d92f17da45dc34E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %"_ZN4core3ptr106drop_in_place$LT$core..cell..Cell$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$$GT$17h33c586e4296a8115E.exit"

bb.j:                                             ; preds = %bb.e
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @17, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @705) #59
  unreachable

"_ZN4core3ptr106drop_in_place$LT$core..cell..Cell$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$$GT$17h33c586e4296a8115E.exit": ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.c, %"_ZN4core3ptr106drop_in_place$LT$core..cell..Cell$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$$GT$17h33c586e4296a8115E.exit"
  %.sroa.02.0 = phi ptr [ %0, %"_ZN4core3ptr106drop_in_place$LT$core..cell..Cell$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$$GT$17h33c586e4296a8115E.exit" ], [ null, %bb.c ], [ %0, %bb.a ]
  ret ptr %.sroa.02.0
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_ZN3std3sys12thread_local6native4lazy7destroy17heff018eb2041e51eE(ptr noundef %0) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !range !68, !noundef !34
  store i8 2, ptr %i.a, align 1
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.b, label %_ZN3std3sys12thread_local20abort_on_dtor_unwind17hc7852fbda467cf83E.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33477)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33479)
  %i.d = load ptr, ptr %0, align 8, !alias.scope !33480, !noundef !34 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZN3std3sys12thread_local20abort_on_dtor_unwind17hc7852fbda467cf83E.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !33481
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %_ZN3std3sys12thread_local20abort_on_dtor_unwind17hc7852fbda467cf83E.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17he4d92f17da45dc34E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %0)
          to label %_ZN3std3sys12thread_local20abort_on_dtor_unwind17hc7852fbda467cf83E.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke fastcc void @"_ZN103_$LT$std..sys..thread_local..abort_on_dtor_unwind..DtorUnwindGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0c3f4de280ab1089E"()
          to label %.noexc1.i unwind label %bb.f

.noexc1.i:                                        ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

_ZN3std3sys12thread_local20abort_on_dtor_unwind17hc7852fbda467cf83E.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc noundef i8 @_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h60c3dca1b54f167fE(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #20 {
bb.a:
  %i.a = tail call noundef i8 %0(), !inline_history !33482
  tail call void asm sideeffect "", "~{memory}"() #53, !srcloc !33483
  ret i8 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN3std4sync4mpmc15Sender$LT$T$GT$4send17h50986545a01d8936E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, i64 %.0.val, ptr %.8.val, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [104 x i8], align 8               ; 5 uses
  %i.c = alloca [104 x i8], align 8               ; 5 uses
  %i.d = alloca [72 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 7 uses
  %i.g = alloca [72 x i8], align 8                ; 6 uses
  %.sroa.6.i.i = alloca [64 x i8], align 8        ; 4 uses
  %i.h = alloca [104 x i8], align 8               ; 17 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [64 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.8.i = alloca [16 x i8], align 8          ; 5 uses
  %i.l = alloca [40 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %.sroa.5.i = alloca [60 x i8], align 4          ; 10 uses
  %.sroa.6.i = alloca [60 x i8], align 4          ; 6 uses
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
  %i.z = alloca [72 x i8], align 8                ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  switch i64 %.0.val, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.ak
    i64 2, label %bb.bf
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.y, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33622)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33623)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  store i32 1000000000, ptr %i.aa, align 8, !noalias !33624
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !33624
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.8.val, i64 128 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.8.val, i64 400 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.t, i8 0, i64 40, i1 false), !noalias !33624
  %i.ae = load atomic i64, ptr %i.ac monotonic, align 8, !noalias !33625 ; 2 uses
  %i.af = load i64, ptr %i.ad, align 16, !noalias !33625, !noundef !34 ; 2 uses
  %i.ag = and i64 %i.af, %i.ae
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %.lr.ph.i.lr.ph.i, label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$5write17h9d8688c71474d9e4E.exit.i"

.lr.ph.i.lr.ph.i:                                 ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %.8.val, i64 392 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.8.val, i64 408
  %i.ak = getelementptr inbounds nuw i8, ptr %.8.val, i64 416
  %i.al = getelementptr inbounds nuw i8, ptr %.8.val, i64 384
  %.sroa.425.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.am = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4sync4mpmc7context7Context4with7CONTEXT29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h93069091f6f7e02cE") ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ag, %.lr.ph.i.lr.ph.i
  %i.ao = phi i64 [ %i.af, %.lr.ph.i.lr.ph.i ], [ %i.do, %bb.ag ]
  %i.ap = phi i64 [ %i.ae, %.lr.ph.i.lr.ph.i ], [ %i.dn, %bb.ag ]
  call void @llvm.experimental.noalias.scope.decl(metadata !33626)
  br label %bb.c

bb.c:                                             ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i, %.lr.ph.i.i
  %i.aq = phi i64 [ %i.ao, %.lr.ph.i.i ], [ %i.bw, %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i ]
  %.sroa.01.033.i.i = phi i64 [ %i.ap, %.lr.ph.i.i ], [ %i.bv, %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i ] ; 8 uses
  %.sroa.0.02832.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.sroa.0.1.i.i, %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i ] ; 14 uses
  %i.ar = add i64 %i.aq, -1
  %i.as = and i64 %i.ar, %.sroa.01.033.i.i        ; 3 uses
  %i.at = load i64, ptr %i.ai, align 8, !noalias !33627, !noundef !34
  %i.au = sub i64 0, %i.at
  %i.av = and i64 %.sroa.01.033.i.i, %i.au
  %i.aw = load ptr, ptr %i.aj, align 8, !noalias !33627, !nonnull !34, !align !41, !noundef !34
  %i.ax = load i64, ptr %i.ak, align 16, !noalias !33627, !noundef !34
  %i.ay = icmp ult i64 %i.as, %i.ax
  call void @llvm.assume(i1 %i.ay)
  %i.az = getelementptr inbounds nuw [72 x i8], ptr %i.aw, i64 %i.as ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bb = load atomic i64, ptr %i.ba acquire, align 8, !noalias !33627 ; 2 uses
  %i.bc = icmp eq i64 %.sroa.01.033.i.i, %i.bb
  br i1 %i.bc, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bd = load i64, ptr %i.ai, align 8, !noalias !33627, !noundef !34
  %i.be = add i64 %i.bd, %i.bb
  %i.bf = add i64 %.sroa.01.033.i.i, 1
  %i.bg = icmp eq i64 %i.be, %i.bf
  br i1 %i.bg, label %bb.i, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.bh = add nuw i64 %i.as, 1
  %i.bi = load i64, ptr %i.al, align 128, !noalias !33627, !noundef !34
  %i.bj = icmp ult i64 %i.bh, %i.bi
  br i1 %i.bj, label %bb.l, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.bk = icmp ult i32 %.sroa.0.02832.i.i, 7
  br i1 %i.bk, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
          to label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i unwind label %.body.thread33.loopexit.i, !noalias !33624

bb.h:                                             ; preds = %bb.f
  %.not.i.i.i = icmp eq i32 %.sroa.0.02832.i.i, 0
  br i1 %.not.i.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.h
  %i.bl = mul nuw nsw i32 %.sroa.0.02832.i.i, %.sroa.0.02832.i.i ; 2 uses
  %xtraiter201 = and i32 %i.bl, 7                 ; 3 uses
  %i.bm = icmp ult i32 %.sroa.0.02832.i.i, 3
  br i1 %i.bm, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter205 = and i32 %i.bl, 56
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter206 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter206.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause() #53, !noalias !33627
  call void @llvm.x86.sse2.pause() #53, !noalias !33627
  call void @llvm.x86.sse2.pause() #53, !noalias !33627
  call void @llvm.x86.sse2.pause() #53, !noalias !33627
  call void @llvm.x86.sse2.pause() #53, !noalias !33627
  call void @llvm.x86.sse2.pause() #53, !noalias !33627
  call void @llvm.x86.sse2.pause() #53, !noalias !33627
  call void @llvm.x86.sse2.pause() #53, !noalias !33627
  %niter206.next.7 = add i32 %niter206, 8         ; 2 uses
  %niter206.ncmp.7 = icmp eq i32 %niter206.next.7, %unroll_iter205
  br i1 %niter206.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod203.not = icmp eq i32 %xtraiter201, 0
  br i1 %lcmp.mod203.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod204 = icmp ne i32 %xtraiter201, 0
  call void @llvm.assume(i1 %lcmp.mod204)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter202 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter202.next, %.lr.ph.i.i.i.epil ]
  call void @llvm.x86.sse2.pause() #53, !noalias !33627
  %epil.iter202.next = add i32 %epil.iter202, 1   ; 2 uses
  %epil.iter202.cmp.not = icmp eq i32 %epil.iter202.next, %xtraiter201
  br i1 %epil.iter202.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !33490

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.h, %bb.g
  %i.bn = add i32 %.sroa.0.02832.i.i, 1
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i

bb.i:                                             ; preds = %bb.d
  fence seq_cst
  %i.bo = load atomic i64, ptr %.8.val monotonic, align 16, !noalias !33627
  %i.bp = load i64, ptr %i.ai, align 8, !noalias !33627, !noundef !34
  %i.bq = add i64 %i.bp, %i.bo
  %i.br = icmp eq i64 %i.bq, %.sroa.01.033.i.i
  br i1 %i.br, label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$10start_send17h3c33ca42c7563b2dE.exit.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.0.0.i.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.02832.i.i, i32 6) ; 2 uses
  %i.bs = mul nuw nsw i32 %.sroa.0.0.i.i.i.i, %.sroa.0.0.i.i.i.i ; 2 uses
  %.not.i11.i.i = icmp eq i32 %.sroa.0.02832.i.i, 0
  br i1 %.not.i11.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i, label %.lr.ph.i12.i.i.preheader

.lr.ph.i12.i.i.preheader:                         ; preds = %bb.j
  %xtraiter207 = and i32 %i.bs, 5                 ; 3 uses
  %i.bt = icmp ult i32 %.sroa.0.02832.i.i, 3
  br i1 %i.bt, label %.lr.ph.i12.i.i.epil.preheader, label %.lr.ph.i12.i.i.preheader.new

.lr.ph.i12.i.i.preheader.new:                     ; preds = %.lr.ph.i12.i.i.preheader
  %unroll_iter211 = and i32 %i.bs, 56
  br label %.lr.ph.i12.i.i

._crit_edge.loopexit.i.i.i.unr-lcssa:             ; preds = %.lr.ph.i12.i.i
  %lcmp.mod209.not = icmp eq i32 %xtraiter207, 0
  br i1 %lcmp.mod209.not, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i12.i.i.epil.preheader

.lr.ph.i12.i.i.epil.preheader:                    ; preds = %._crit_edge.loopexit.i.i.i.unr-lcssa, %.lr.ph.i12.i.i.preheader
  %lcmp.mod210 = icmp ne i32 %xtraiter207, 0
  call void @llvm.assume(i1 %lcmp.mod210)
  br label %.lr.ph.i12.i.i.epil

.lr.ph.i12.i.i.epil:                              ; preds = %.lr.ph.i12.i.i.epil, %.lr.ph.i12.i.i.epil.preheader
  %epil.iter208 = phi i32 [ 0, %.lr.ph.i12.i.i.epil.preheader ], [ %epil.iter208.next, %.lr.ph.i12.i.i.epil ]
  call void @llvm.x86.sse2.pause() #53, !noalias !33627
  %epil.iter208.next = add i32 %epil.iter208, 1   ; 2 uses
  %epil.iter208.cmp.not = icmp eq i32 %epil.iter208.next, %xtraiter207
  br i1 %epil.iter208.cmp.not, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i12.i.i.epil, !llvm.loop !33491

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i12.i.i.epil, %._crit_edge.loopexit.i.i.i.unr-lcssa
  %i.bu = add i32 %.sroa.0.02832.i.i, 1
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i

.lr.ph.i12.i.i:                                   ; preds = %.lr.ph.i12.i.i, %.lr.ph.i12.i.i.preheader.new
  %niter212 = phi i32 [ 0, %.lr.ph.i12.i.i.preheader.new ], [ %niter212.next.7, %.lr.ph.i12.i.i ]
  call void @llvm.x86.sse2.pause() #53, !noalias !33627
  call void @llvm.x86.sse2.pause() #53, !noalias !33627
  call void @llvm.x86.sse2.pause() #53, !noalias !33627
  call void @llvm.x86.sse2.pause() #53, !noalias !33627
  call void @llvm.x86.sse2.pause() #53, !noalias !33627
  call void @llvm.x86.sse2.pause() #53, !noalias !33627
  call void @llvm.x86.sse2.pause() #53, !noalias !33627
  call void @llvm.x86.sse2.pause() #53, !noalias !33627
  %niter212.next.7 = add i32 %niter212, 8         ; 2 uses
  %niter212.ncmp.7 = icmp eq i32 %niter212.next.7, %unroll_iter211
  br i1 %niter212.ncmp.7, label %._crit_edge.loopexit.i.i.i.unr-lcssa, label %.lr.ph.i12.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i: ; preds = %._crit_edge.loopexit.i20.i.i, %bb.n, %._crit_edge.loopexit.i.i.i, %bb.j, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i
  %.sroa.0.1.i.i = phi i32 [ %i.bn, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i ], [ 1, %bb.n ], [ %i.cf, %._crit_edge.loopexit.i20.i.i ], [ %i.bu, %._crit_edge.loopexit.i.i.i ], [ 1, %bb.j ]
  %i.bv = load atomic i64, ptr %i.ac monotonic, align 16, !noalias !33627 ; 2 uses
  %i.bw = load i64, ptr %i.ad, align 16, !noalias !33627, !noundef !34 ; 2 uses
  %i.bx = and i64 %i.bw, %i.bv
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %bb.c, label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$5write17h9d8688c71474d9e4E.exit.i"

bb.k:                                             ; preds = %bb.e
  %i.bz = load i64, ptr %i.ai, align 8, !noalias !33627, !noundef !34
  %i.ca = add i64 %i.bz, %i.av
  br label %bb.m

bb.l:                                             ; preds = %bb.e
  %i.cb = add i64 %.sroa.01.033.i.i, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.010.0.i.i = phi i64 [ %i.cb, %bb.l ], [ %i.ca, %bb.k ]
  %i.cc = cmpxchg weak ptr %i.ac, i64 %.sroa.01.033.i.i, i64 %.sroa.010.0.i.i seq_cst monotonic, align 8, !noalias !33627
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.cc, 1
  br i1 %.sroa.18.0.in.i.i.i, label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$5write17h9d8688c71474d9e4E.exit.thread.i", label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.i.i15.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.02832.i.i, i32 6) ; 2 uses
  %i.cd = mul nuw nsw i32 %.sroa.0.0.i.i15.i.i, %.sroa.0.0.i.i15.i.i ; 2 uses
  %.not.i16.i.i = icmp eq i32 %.sroa.0.02832.i.i, 0
  br i1 %.not.i16.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i, label %.lr.ph.i17.i.i.preheader

.lr.ph.i17.i.i.preheader:                         ; preds = %bb.n
  %xtraiter213 = and i32 %i.cd, 5                 ; 3 uses
  %i.ce = icmp ult i32 %.sroa.0.02832.i.i, 3
  br i1 %i.ce, label %.lr.ph.i17.i.i.epil.preheader, label %.lr.ph.i17.i.i.preheader.new

.lr.ph.i17.i.i.preheader.new:                     ; preds = %.lr.ph.i17.i.i.preheader
  %unroll_iter217 = and i32 %i.cd, 56
  br label %.lr.ph.i17.i.i

._crit_edge.loopexit.i20.i.i.unr-lcssa:           ; preds = %.lr.ph.i17.i.i
  %lcmp.mod215.not = icmp eq i32 %xtraiter213, 0
  br i1 %lcmp.mod215.not, label %._crit_edge.loopexit.i20.i.i, label %.lr.ph.i17.i.i.epil.preheader

.lr.ph.i17.i.i.epil.preheader:                    ; preds = %._crit_edge.loopexit.i20.i.i.unr-lcssa, %.lr.ph.i17.i.i.preheader
  %lcmp.mod216 = icmp ne i32 %xtraiter213, 0
  call void @llvm.assume(i1 %lcmp.mod216)
  br label %.lr.ph.i17.i.i.epil

.lr.ph.i17.i.i.epil:                              ; preds = %.lr.ph.i17.i.i.epil, %.lr.ph.i17.i.i.epil.preheader
  %epil.iter214 = phi i32 [ 0, %.lr.ph.i17.i.i.epil.preheader ], [ %epil.iter214.next, %.lr.ph.i17.i.i.epil ]
  call void @llvm.x86.sse2.pause() #53, !noalias !33627
  %epil.iter214.next = add i32 %epil.iter214, 1   ; 2 uses
  %epil.iter214.cmp.not = icmp eq i32 %epil.iter214.next, %xtraiter213
  br i1 %epil.iter214.cmp.not, label %._crit_edge.loopexit.i20.i.i, label %.lr.ph.i17.i.i.epil, !llvm.loop !33492

._crit_edge.loopexit.i20.i.i:                     ; preds = %.lr.ph.i17.i.i.epil, %._crit_edge.loopexit.i20.i.i.unr-lcssa
  %i.cf = add i32 %.sroa.0.02832.i.i, 1
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i

.lr.ph.i17.i.i:                                   ; preds = %.lr.ph.i17.i.i, %.lr.ph.i17.i.i.preheader.new
  %niter218 = phi i32 [ 0, %.lr.ph.i17.i.i.preheader.new ], [ %niter218.next.7, %.lr.ph.i17.i.i ]
  call void @llvm.x86.sse2.pause() #53, !noalias !33627
  call void @llvm.x86.sse2.pause() #53, !noalias !33627
  call void @llvm.x86.sse2.pause() #53, !noalias !33627
  call void @llvm.x86.sse2.pause() #53, !noalias !33627
  call void @llvm.x86.sse2.pause() #53, !noalias !33627
  call void @llvm.x86.sse2.pause() #53, !noalias !33627
  call void @llvm.x86.sse2.pause() #53, !noalias !33627
  call void @llvm.x86.sse2.pause() #53, !noalias !33627
  %niter218.next.7 = add i32 %niter218, 8         ; 2 uses
  %niter218.ncmp.7 = icmp eq i32 %niter218.next.7, %unroll_iter217
  br i1 %niter218.ncmp.7, label %._crit_edge.loopexit.i20.i.i.unr-lcssa, label %.lr.ph.i17.i.i

.body.thread33.loopexit.i:                        ; preds = %bb.g
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

.body.thread33.loopexit.split-lp.i:               ; preds = %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17hbc0dc9c2d9d22fb5E.exit.i.i", %bb.aa, %bb.v, %bb.q, %_ZN4core3ops8function6FnOnce9call_once17h88fdf9ad0ef47649E.exit.i.i.i, %bb.o
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$10start_send17h3c33ca42c7563b2dE.exit.i": ; preds = %bb.i
  %i.cg = load i32, ptr %i.aa, align 8, !range !73, !noalias !33624, !noundef !34 ; 2 uses
  %.not.i = icmp eq i32 %i.cg, 1000000000
  br i1 %.not.i, label %bb.p, label %bb.o

"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$5write17h9d8688c71474d9e4E.exit.thread.i": ; preds = %bb.m
  %i.ch = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  store ptr %i.az, ptr %i.t, align 8, !alias.scope !33626, !noalias !33624
  %i.ci = add i64 %.sroa.01.033.i.i, 1            ; 2 uses
  store i64 %i.ci, ptr %i.ab, align 8, !alias.scope !33626, !noalias !33624
  %.sroa.022.0.copyload38.i = load i32, ptr %i.y, align 8, !alias.scope !33623, !noalias !33622
  %.sroa.5.0..sroa_idx39.i = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i32 %.sroa.022.0.copyload38.i, ptr %i.az, align 8, !noalias !33628
  %.sroa.5.0..val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.5.0..val.sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.5.0..sroa_idx39.i, i64 60, i1 false), !noalias !33622
  store atomic i64 %i.ci, ptr %i.ch release, align 8, !noalias !33629
  %i.cj = getelementptr inbounds nuw i8, ptr %.8.val, i64 320
  call fastcc void @_ZN3std4sync4mpmc5waker9SyncWaker6notify17hb84be3c8ed2df7a5E(ptr noundef nonnull align 8 %i.cj), !noalias !33624
  br label %bb.ai
end_hunk_2
begin_hunk_3_@"_ZN3std4sync4mpmc15Sender$LT$T$GT$4send17h50986545a01d8936E":bb.a
"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h7f4ce827eda62fa6E.exit19.i.i.i.i": ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !33630
  br label %bb.ag

bb.w:                                             ; preds = %bb.ac, %bb.t
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !33630
  unreachable

bb.x:                                             ; preds = %_ZN4core3ops8function6FnOnce9call_once17h88fdf9ad0ef47649E.exit.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !33630
  store ptr %i.cq, ptr %i.q, align 8, !noalias !33630
  %i.da = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  store atomic i64 0, ptr %i.da release, align 8, !noalias !33630
  %i.db = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  store atomic ptr null, ptr %i.db release, align 8, !noalias !33630
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !33630
  store ptr %i.t, ptr %i.o, align 8, !noalias !33630
  store ptr %.8.val, ptr %.sroa.59.0..sroa_idx10.i.i.i.i, align 8, !noalias !33624
  store ptr %i.u, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i, align 8, !noalias !33624
  invoke fastcc void @"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4send28_$u7b$$u7b$closure$u7d$$u7d$17hc413ea277fbd2bcbE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.o, ptr nonnull %i.cq)
          to label %bb.y unwind label %bb.ab, !noalias !33630

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !33630
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !33630
  %i.dc = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !33630, !noundef !34 ; 3 uses
  store ptr %i.dc, ptr %i.n, align 8, !noalias !33630
  store ptr %i.cq, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !33630
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h28504ab5b7a5d52bE.exit.i.i.i.i", label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.de = atomicrmw sub ptr %i.dc, i64 1 release, align 8, !noalias !33642
  %i.df = icmp eq i64 %i.de, 1
  br i1 %i.df, label %bb.aa, label %"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h28504ab5b7a5d52bE.exit.i.i.i.i"

bb.aa:                                            ; preds = %bb.z
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17he4d92f17da45dc34E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h28504ab5b7a5d52bE.exit.i.i.i.i" unwind label %.body.thread33.loopexit.split-lp.i, !noalias !33624

"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h28504ab5b7a5d52bE.exit.i.i.i.i": ; preds = %bb.aa, %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !33630
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !33630
  br label %bb.ag

bb.ab:                                            ; preds = %bb.x
  %i.dg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dh = atomicrmw sub ptr %i.cq, i64 1 release, align 8, !noalias !33643
  %i.di = icmp eq i64 %i.dh, 1
  br i1 %i.di, label %bb.ac, label %.body.thread.i

bb.ac:                                            ; preds = %bb.ab
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17he4d92f17da45dc34E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %.body.thread.i unwind label %bb.w, !noalias !33630

"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17hbc0dc9c2d9d22fb5E.exit.i.i": ; preds = %.noexc14.i
  invoke fastcc void @"_ZN3std4sync4mpmc7context7Context4with28_$u7b$$u7b$closure$u7d$$u7d$17h4d743bc08c06206cE"(ptr nonnull %i.s)
          to label %bb.ag unwind label %.body.thread33.loopexit.split-lp.i, !noalias !33624

bb.ad:                                            ; preds = %bb.o
  %i.dj = extractvalue { i64, i32 } %i.cl, 0      ; 2 uses
  %i.dk = icmp eq i64 %i.dj, %i.ck
  br i1 %i.dk, label %.split.i, label %bb.ae

.split.i:                                         ; preds = %bb.ad
  %i.dl = extractvalue { i64, i32 } %i.cl, 1      ; 2 uses
  %i.dm = icmp ult i32 %i.dl, 1000000000
  call void @llvm.assume(i1 %i.dm)
  %.not47.i = icmp samesign ult i32 %i.dl, %i.cg
  br i1 %.not47.i, label %bb.p, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %.not46.i = icmp slt i64 %i.dj, %i.ck
  br i1 %.not46.i, label %bb.p, label %bb.af

bb.af:                                            ; preds = %bb.ae, %.split.i
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(64) %i.y, i64 64, i1 false), !alias.scope !33624
  store i64 0, ptr %i.z, align 8, !alias.scope !33622, !noalias !33623
  br label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4send17hd138cf573092341eE.exit"

bb.ag:                                            ; preds = %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17hbc0dc9c2d9d22fb5E.exit.i.i", %"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h28504ab5b7a5d52bE.exit.i.i.i.i", %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h7f4ce827eda62fa6E.exit19.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !33630
  %i.dn = load atomic i64, ptr %i.ac monotonic, align 16, !noalias !33644 ; 2 uses
  %i.do = load i64, ptr %i.ad, align 16, !noalias !33644, !noundef !34 ; 2 uses
  %i.dp = and i64 %i.do, %i.dn
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %.lr.ph.i.i, label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$5write17h9d8688c71474d9e4E.exit.i"

"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$5write17h9d8688c71474d9e4E.exit.i": ; preds = %bb.ag, %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i, %bb.b
  %.sroa.022.0.copyload.i = load i32, ptr %i.y, align 8, !alias.scope !33623, !noalias !33622 ; 2 uses
  %.not11.i = icmp eq i32 %.sroa.022.0.copyload.i, 4
  br i1 %.not11.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$5write17h9d8688c71474d9e4E.exit.i"
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %.sroa.47.sroa.4.0..sroa.47.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.47.sroa.4.0..sroa.47.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.5.0..sroa_idx.i, i64 60, i1 false), !alias.scope !33624
  store i64 1, ptr %i.z, align 8, !alias.scope !33622, !noalias !33623
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i32 %.sroa.022.0.copyload.i, ptr %.sroa.47.0..sroa_idx.i, align 8, !alias.scope !33622, !noalias !33623
  br label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4send17hd138cf573092341eE.exit"

bb.ai:                                            ; preds = %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$5write17h9d8688c71474d9e4E.exit.i", %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$5write17h9d8688c71474d9e4E.exit.thread.i"
  store i64 2, ptr %i.z, align 8, !alias.scope !33622, !noalias !33623
  br label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4send17hd138cf573092341eE.exit"

common.resume:                                    ; preds = %bb.dn, %.body.i, %.body.i.i, %.body.thread.i15, %.body.thread.i9, %.body.thread.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %eh.lpad-body32.i, %.body.thread.i ], [ %eh.lpad-body21.i, %.body.thread.i9 ], [ %.pn.pn67.i, %.body.thread.i15 ], [ %i.ic, %.body.i ], [ %i.jy, %bb.dn ]
  resume { ptr, i32 } %common.resume.op

.body.thread.i:                                   ; preds = %bb.ac, %bb.ab, %bb.t, %bb.s, %.body.thread33.loopexit.split-lp.i, %.body.thread33.loopexit.i
  %eh.lpad-body32.i = phi { ptr, i32 } [ %i.dg, %bb.ac ], [ %i.cs, %bb.s ], [ %i.dg, %bb.ab ], [ %i.cs, %bb.t ], [ %lpad.loopexit.i, %.body.thread33.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.body.thread33.loopexit.split-lp.i ]
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$nickel..error..Warning$GT$17h07748e5d61f3aeb4E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.y) #61
          to label %common.resume unwind label %bb.aj, !noalias !33622

bb.aj:                                            ; preds = %.body.thread.i
  %i.dr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !33622
  unreachable

"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4send17hd138cf573092341eE.exit": ; preds = %bb.af, %bb.ah, %bb.ai
  %i.ds = phi i64 [ 0, %bb.af ], [ 1, %bb.ah ], [ 2, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !33624
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.dj

bb.ak:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.x, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33645)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33646)
  %i.dt = getelementptr inbounds nuw i8, ptr %.8.val, i64 128 ; 5 uses
  %i.du = load atomic i64, ptr %i.dt acquire, align 8, !noalias !33647 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.8.val, i64 136 ; 5 uses
  %i.dw = load atomic ptr, ptr %i.dv acquire, align 8, !noalias !33647
  %i.dx = and i64 %i.du, 1
  %i.dy = icmp eq i64 %i.dx, 0
  br i1 %i.dy, label %.lr.ph.lr.ph.i.i, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h640693ed3f88a97fE.exit.thread.i"

"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h640693ed3f88a97fE.exit.thread.i": ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %.sroa.011.0.copyload28.i = load i32, ptr %i.x, align 8, !alias.scope !33646, !noalias !33645
  %.sroa.5.0..sroa_idx29.i = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.5.i, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.5.0..sroa_idx29.i, i64 60, i1 false), !noalias !33645
  br label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$5write17h9d3cfb2740a60750E.exit.i"

.lr.ph.lr.ph.i.i:                                 ; preds = %bb.ak
  %i.dz = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  br label %.lr.ph.i.i4

.lr.ph.i.i4:                                      ; preds = %.outer.backedge.i.i, %.lr.ph.lr.ph.i.i
  %.sroa.01.0.ph89.i.i = phi i64 [ %i.du, %.lr.ph.lr.ph.i.i ], [ %i.ey, %.outer.backedge.i.i ] ; 2 uses
  %.sroa.05.0.ph88.i.i = phi ptr [ %i.dw, %.lr.ph.lr.ph.i.i ], [ %i.ez, %.outer.backedge.i.i ]
  %.sroa.0.0.ph87.i.i = phi i32 [ 0, %.lr.ph.lr.ph.i.i ], [ %.sroa.0.0.ph.be.i.i, %.outer.backedge.i.i ] ; 2 uses
  %.sroa.043.0.ph86.i.i = phi ptr [ null, %.lr.ph.lr.ph.i.i ], [ %.sroa.043.0.ph.be.i.i, %.outer.backedge.i.i ] ; 4 uses
  %i.ea = lshr exact i64 %.sroa.01.0.ph89.i.i, 1
  %i.eb = and i64 %i.ea, 31                       ; 2 uses
  %i.ec = icmp eq i64 %i.eb, 31
  br i1 %i.ec, label %.lr.ph.i, label %._crit_edge.i

bb.al:                                            ; preds = %.loopexit.i.i
  %i.ed = add i32 %.sroa.0.082.i63.i, 1           ; 2 uses
  %i.ee = lshr exact i64 %i.fc, 1
  %i.ef = and i64 %i.ee, 31                       ; 2 uses
  %i.eg = icmp eq i64 %i.ef, 31
  br i1 %i.eg, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.al, %.lr.ph.i.i4
  %.sroa.01.084.i.lcssa.i = phi i64 [ %.sroa.01.0.ph89.i.i, %.lr.ph.i.i4 ], [ %i.fc, %bb.al ] ; 2 uses
  %.sroa.05.083.i.lcssa.i = phi ptr [ %.sroa.05.0.ph88.i.i, %.lr.ph.i.i4 ], [ %i.fd, %bb.al ] ; 2 uses
  %.sroa.0.082.i.lcssa.i = phi i32 [ %.sroa.0.0.ph87.i.i, %.lr.ph.i.i4 ], [ %i.ed, %bb.al ] ; 6 uses
  %.lcssa.i = phi i64 [ %i.eb, %.lr.ph.i.i4 ], [ %i.ef, %bb.al ] ; 2 uses
  %.not64.i.i = icmp eq i64 %.lcssa.i, 30         ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.043.0.ph86.i.i, null
  %or.cond.i.i = select i1 %.not64.i.i, i1 %.not.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.ao, label %"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$std..sync..mpmc..list..Block$LT$nickel..error..Warning$GT$$GT$$GT$$GT$17h0e69b2f3cf4e975dE.exit.i.i"

.lr.ph.i:                                         ; preds = %.lr.ph.i.i4, %bb.al
  %.sroa.0.082.i63.i = phi i32 [ %i.ed, %bb.al ], [ %.sroa.0.0.ph87.i.i, %.lr.ph.i.i4 ] ; 6 uses
  %i.eh = icmp ult i32 %.sroa.0.082.i63.i, 7
  br i1 %i.eh, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i
  invoke void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
          to label %.loopexit.i.i unwind label %.loopexit65.i.i, !noalias !33647

bb.an:                                            ; preds = %.lr.ph.i
  %.not.i.i.i10 = icmp eq i32 %.sroa.0.082.i63.i, 0
  br i1 %.not.i.i.i10, label %.loopexit.i.i, label %.lr.ph.i.i.i11.preheader

.lr.ph.i.i.i11.preheader:                         ; preds = %bb.an
  %i.ei = mul nuw nsw i32 %.sroa.0.082.i63.i, %.sroa.0.082.i63.i ; 2 uses
  %xtraiter = and i32 %i.ei, 7                    ; 3 uses
  %i.ej = icmp ult i32 %.sroa.0.082.i63.i, 3
  br i1 %i.ej, label %.lr.ph.i.i.i11.epil.preheader, label %.lr.ph.i.i.i11.preheader.new

.lr.ph.i.i.i11.preheader.new:                     ; preds = %.lr.ph.i.i.i11.preheader
  %unroll_iter = and i32 %i.ei, 56
  br label %.lr.ph.i.i.i11

.lr.ph.i.i.i11:                                   ; preds = %.lr.ph.i.i.i11, %.lr.ph.i.i.i11.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i11.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i11 ]
  tail call void @llvm.x86.sse2.pause() #53, !noalias !33647
  tail call void @llvm.x86.sse2.pause() #53, !noalias !33647
  tail call void @llvm.x86.sse2.pause() #53, !noalias !33647
  tail call void @llvm.x86.sse2.pause() #53, !noalias !33647
  tail call void @llvm.x86.sse2.pause() #53, !noalias !33647
  tail call void @llvm.x86.sse2.pause() #53, !noalias !33647
  tail call void @llvm.x86.sse2.pause() #53, !noalias !33647
  tail call void @llvm.x86.sse2.pause() #53, !noalias !33647
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i11

"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$std..sync..mpmc..list..Block$LT$nickel..error..Warning$GT$$GT$$GT$$GT$17h0e69b2f3cf4e975dE.exit.i.i": ; preds = %bb.ao, %._crit_edge.i
  %.sroa.043.1.i.i = phi ptr [ %.sroa.043.0.ph86.i.i, %._crit_edge.i ], [ %i.el, %bb.ao ] ; 9 uses
  %i.ek = icmp eq ptr %.sroa.05.083.i.lcssa.i, null
  br i1 %i.ek, label %bb.ap, label %bb.av

bb.ao:                                            ; preds = %._crit_edge.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !33647
  %i.el = tail call noalias noundef align 8 dereferenceable_or_null(2240) ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef 2240, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !33647 ; 2 uses
  %i.em = icmp eq ptr %i.el, null
  br i1 %i.em, label %.noexc24.i.i, label %"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$std..sync..mpmc..list..Block$LT$nickel..error..Warning$GT$$GT$$GT$$GT$17h0e69b2f3cf4e975dE.exit.i.i", !prof !37

.noexc24.i.i:                                     ; preds = %bb.ao
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 2240) #59
          to label %.noexc.i unwind label %.body.thread23.i, !noalias !33648

.noexc.i:                                         ; preds = %.noexc24.i.i
  unreachable

bb.ap:                                            ; preds = %"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$std..sync..mpmc..list..Block$LT$nickel..error..Warning$GT$$GT$$GT$$GT$17h0e69b2f3cf4e975dE.exit.i.i"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !33647
  %i.en = tail call noalias noundef align 8 dereferenceable_or_null(2240) ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef 2240, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !33647 ; 6 uses
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %bb.aq, label %bb.ar, !prof !37

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 2240) #59
          to label %.noexc25.i.i unwind label %.loopexit.split-lp.i.i, !noalias !33647

.noexc25.i.i:                                     ; preds = %bb.aq
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.ep = cmpxchg ptr %i.dv, ptr null, ptr %i.en release monotonic, align 8, !noalias !33647
  %i.eq = extractvalue { ptr, i1 } %i.ep, 1
  br i1 %i.eq, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store atomic ptr %i.en, ptr %i.dz release, align 8, !noalias !33647
  br label %bb.av

bb.at:                                            ; preds = %bb.ar
  %i.er = icmp eq ptr %.sroa.043.1.i.i, null
  br i1 %i.er, label %.outer.backedge.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.043.1.i.i, i64 noundef 2240, i64 noundef 8) #53, !noalias !33647
  br label %.outer.backedge.i.i

bb.av:                                            ; preds = %bb.as, %"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$std..sync..mpmc..list..Block$LT$nickel..error..Warning$GT$$GT$$GT$$GT$17h0e69b2f3cf4e975dE.exit.i.i"
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.083.i.lcssa.i, %"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$std..sync..mpmc..list..Block$LT$nickel..error..Warning$GT$$GT$$GT$$GT$17h0e69b2f3cf4e975dE.exit.i.i" ], [ %i.en, %bb.as ] ; 3 uses
  %i.es = add i64 %.sroa.01.084.i.lcssa.i, 2
  %i.et = cmpxchg weak ptr %i.dt, i64 %.sroa.01.084.i.lcssa.i, i64 %i.es seq_cst acquire, align 8, !noalias !33647
  %.sroa.18.0.in.i.i.i5 = extractvalue { i64, i1 } %i.et, 1
  br i1 %.sroa.18.0.in.i.i.i5, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %.sroa.0.0.i.i.i.i6 = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.082.i.lcssa.i, i32 6) ; 2 uses
  %i.eu = mul nuw nsw i32 %.sroa.0.0.i.i.i.i6, %.sroa.0.0.i.i.i.i6 ; 2 uses
  %.not.i30.i.i = icmp eq i32 %.sroa.0.082.i.lcssa.i, 0
  br i1 %.not.i30.i.i, label %.outer.backedge.i.i, label %.lr.ph.i31.i.i.preheader

.lr.ph.i31.i.i.preheader:                         ; preds = %bb.aw
  %xtraiter195 = and i32 %i.eu, 5                 ; 3 uses
  %i.ev = icmp ult i32 %.sroa.0.082.i.lcssa.i, 3
  br i1 %i.ev, label %.lr.ph.i31.i.i.epil.preheader, label %.lr.ph.i31.i.i.preheader.new

.lr.ph.i31.i.i.preheader.new:                     ; preds = %.lr.ph.i31.i.i.preheader
  %unroll_iter199 = and i32 %i.eu, 56
  br label %.lr.ph.i31.i.i

._crit_edge.loopexit.i.i.i7.unr-lcssa:            ; preds = %.lr.ph.i31.i.i
  %lcmp.mod197.not = icmp eq i32 %xtraiter195, 0
  br i1 %lcmp.mod197.not, label %._crit_edge.loopexit.i.i.i7, label %.lr.ph.i31.i.i.epil.preheader

.lr.ph.i31.i.i.epil.preheader:                    ; preds = %._crit_edge.loopexit.i.i.i7.unr-lcssa, %.lr.ph.i31.i.i.preheader
  %lcmp.mod198 = icmp ne i32 %xtraiter195, 0
  tail call void @llvm.assume(i1 %lcmp.mod198)
  br label %.lr.ph.i31.i.i.epil

.lr.ph.i31.i.i.epil:                              ; preds = %.lr.ph.i31.i.i.epil, %.lr.ph.i31.i.i.epil.preheader
  %epil.iter196 = phi i32 [ 0, %.lr.ph.i31.i.i.epil.preheader ], [ %epil.iter196.next, %.lr.ph.i31.i.i.epil ]
  tail call void @llvm.x86.sse2.pause() #53, !noalias !33647
  %epil.iter196.next = add i32 %epil.iter196, 1   ; 2 uses
  %epil.iter196.cmp.not = icmp eq i32 %epil.iter196.next, %xtraiter195
  br i1 %epil.iter196.cmp.not, label %._crit_edge.loopexit.i.i.i7, label %.lr.ph.i31.i.i.epil, !llvm.loop !33536

._crit_edge.loopexit.i.i.i7:                      ; preds = %.lr.ph.i31.i.i.epil, %._crit_edge.loopexit.i.i.i7.unr-lcssa
  %i.ew = add i32 %.sroa.0.082.i.lcssa.i, 1
  br label %.outer.backedge.i.i

.lr.ph.i31.i.i:                                   ; preds = %.lr.ph.i31.i.i, %.lr.ph.i31.i.i.preheader.new
  %niter200 = phi i32 [ 0, %.lr.ph.i31.i.i.preheader.new ], [ %niter200.next.7, %.lr.ph.i31.i.i ]
  tail call void @llvm.x86.sse2.pause() #53, !noalias !33647
  tail call void @llvm.x86.sse2.pause() #53, !noalias !33647
  tail call void @llvm.x86.sse2.pause() #53, !noalias !33647
  tail call void @llvm.x86.sse2.pause() #53, !noalias !33647
  tail call void @llvm.x86.sse2.pause() #53, !noalias !33647
  tail call void @llvm.x86.sse2.pause() #53, !noalias !33647
  tail call void @llvm.x86.sse2.pause() #53, !noalias !33647
  tail call void @llvm.x86.sse2.pause() #53, !noalias !33647
  %niter200.next.7 = add i32 %niter200, 8         ; 2 uses
  %niter200.ncmp.7 = icmp eq i32 %niter200.next.7, %unroll_iter199
  br i1 %niter200.ncmp.7, label %._crit_edge.loopexit.i.i.i7.unr-lcssa, label %.lr.ph.i31.i.i

bb.ax:                                            ; preds = %bb.av
  br i1 %.not64.i.i, label %bb.ay, label %.critedge.i.i

"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h640693ed3f88a97fE.exit.thread31.i": ; preds = %bb.ay
  store atomic ptr %.sroa.043.1.i.i, ptr %i.dv release, align 8, !noalias !33647
  %i.ex = atomicrmw add ptr %i.dt, i64 2 release, align 8, !noalias !33647 ; 0 uses
  store atomic ptr %.sroa.043.1.i.i, ptr %.sroa.05.1.i.i release, align 8, !noalias !33647
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %.sroa.011.0.copyload34.i = load i32, ptr %i.x, align 8, !alias.scope !33646, !noalias !33645
  %.sroa.5.0..sroa_idx35.i = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.5.i, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.5.0..sroa_idx35.i, i64 60, i1 false), !noalias !33645
  br label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$5write17h9d3cfb2740a60750E.exit.thread.i"

bb.ay:                                            ; preds = %bb.ax
  %.not16.i.i = icmp eq ptr %.sroa.043.1.i.i, null
  br i1 %.not16.i.i, label %bb.az, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h640693ed3f88a97fE.exit.thread31.i", !prof !37

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @709) #59
          to label %.noexc5.i unwind label %.body.thread23.i, !noalias !33648

.noexc5.i:                                        ; preds = %bb.az
  unreachable

.outer.backedge.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i7, %bb.aw, %bb.au, %bb.at
  %.sroa.043.0.ph.be.i.i = phi ptr [ %i.en, %bb.au ], [ %i.en, %bb.at ], [ %.sroa.043.1.i.i, %bb.aw ], [ %.sroa.043.1.i.i, %._crit_edge.loopexit.i.i.i7 ] ; 2 uses
  %.sroa.0.0.ph.be.i.i = phi i32 [ %.sroa.0.082.i.lcssa.i, %bb.au ], [ %.sroa.0.082.i.lcssa.i, %bb.at ], [ 1, %bb.aw ], [ %i.ew, %._crit_edge.loopexit.i.i.i7 ]
  %i.ey = load atomic i64, ptr %i.dt acquire, align 8, !noalias !33647 ; 2 uses
  %i.ez = load atomic ptr, ptr %i.dv acquire, align 8, !noalias !33647
  %i.fa = and i64 %i.ey, 1
  %i.fb = icmp eq i64 %i.fa, 0
  br i1 %i.fb, label %.lr.ph.i.i4, label %.critedge.i.i

.loopexit.i.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i.i.i11
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i.i, label %.lr.ph.i.i.i11.epil.preheader

.lr.ph.i.i.i11.epil.preheader:                    ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i11.preheader
  %lcmp.mod194 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod194)
  br label %.lr.ph.i.i.i11.epil

.lr.ph.i.i.i11.epil:                              ; preds = %.lr.ph.i.i.i11.epil, %.lr.ph.i.i.i11.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i11.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i11.epil ]
  tail call void @llvm.x86.sse2.pause() #53, !noalias !33647
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i.i, label %.lr.ph.i.i.i11.epil, !llvm.loop !33537

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i11.epil, %bb.an, %bb.am
  %i.fc = load atomic i64, ptr %i.dt acquire, align 8, !noalias !33647 ; 3 uses
  %i.fd = load atomic ptr, ptr %i.dv acquire, align 8, !noalias !33647
  %i.fe = and i64 %i.fc, 1
  %i.ff = icmp eq i64 %i.fe, 0
  br i1 %i.ff, label %bb.al, label %.critedge.i.i

.loopexit65.i.i:                                  ; preds = %bb.am
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

.loopexit.split-lp.i.i:                           ; preds = %bb.aq
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.ba:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit65.i.i
  %.sroa.043.2.ph.i.i = phi ptr [ %.sroa.043.0.ph86.i.i, %.loopexit65.i.i ], [ %.sroa.043.1.i.i, %.loopexit.split-lp.i.i ] ; 2 uses
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit65.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ] ; 2 uses
  %i.fg = icmp eq ptr %.sroa.043.2.ph.i.i, null
  br i1 %i.fg, label %.body.thread.i9, label %.thread55.i.i

.thread55.i.i:                                    ; preds = %bb.ba
end_hunk_3
begin_hunk_4_@"_ZN3std4sync4mpmc4zero16Channel$LT$T$GT$4send28_$u7b$$u7b$closure$u7d$$u7d$17h9aab0fa819f37ed1E":bb.a
bb.j:                                             ; preds = %bb.c, %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !33817, !noalias !33818, !nonnull !34, !noundef !34
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.af = add i64 %i.t, 1
  store i64 %i.af, ptr %i.s, align 8, !alias.scope !33817, !noalias !33818
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !33816
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  invoke fastcc void @_ZN3std4sync4mpmc5waker5Waker6notify17h7f1a87358ecc50c3E(ptr noalias noundef align 8 dereferenceable(48) %i.ag)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ai = load i8, ptr %i.ah, align 8, !range !44, !noundef !34
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.ak = trunc nuw i8 %i.ai to i1
  br i1 %i.ak, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.am = and i64 %i.al, 9223372036854775807
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.m, !prof !40

bb.m:                                             ; preds = %bb.l
  %i.ao = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc48 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc48:                                         ; preds = %bb.m
  br i1 %i.ao, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc48
  store atomic i8 1, ptr %i.aj monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i: ; preds = %bb.n, %.noexc48, %bb.l, %bb.k
  %i.ap = atomicrmw xchg ptr %i.m, i32 0 release, align 4
  %i.aq = icmp eq i32 %i.ap, 2
  br i1 %i.aq, label %bb.o, label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hfb5b838b0f962537E.exit", !prof !37

bb.o:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %i.m)
          to label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hfb5b838b0f962537E.exit" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hfb5b838b0f962537E.exit": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, %bb.o
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !34, !align !41, !noundef !34 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8            ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.av = load i32, ptr %i.au, align 8, !range !73, !noundef !34 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.av, 1000000000
  %i.ax = icmp samesign ult i32 %i.av, 1000000000
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  br i1 %.not.i, label %.split9.us.i, label %.split9.i

.split9.us.i:                                     ; preds = %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hfb5b838b0f962537E.exit", %bb.p
  %i.az = load atomic i64, ptr %i.aw acquire, align 8
  switch i64 %i.az, label %.thread29 [
    i64 0, label %bb.p
    i64 1, label %.thread
    i64 2, label %.thread32
  ]

bb.p:                                             ; preds = %.split9.us.i
  invoke void @_ZN3std6thread6Thread4park17h79c834280bb663cdE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ay)
          to label %.split9.us.i unwind label %.loopexit.split-lp.loopexit

.split9.i:                                        ; preds = %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hfb5b838b0f962537E.exit", %.noexc52
  %i.ba = load atomic i64, ptr %i.aw acquire, align 8
  switch i64 %i.ba, label %.thread29 [
    i64 0, label %bb.q
    i64 1, label %.thread
    i64 2, label %.thread32
  ]

bb.q:                                             ; preds = %.split9.i
  %i.bb = invoke { i64, i32 } @_ZN3std4time7Instant3now17h6afc9418486166d9E()
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc51:                                         ; preds = %bb.q
  %i.bc = extractvalue { i64, i32 } %i.bb, 0      ; 3 uses
  %i.bd = extractvalue { i64, i32 } %i.bb, 1      ; 3 uses
  %i.be = icmp eq i64 %i.bc, %i.at
  br i1 %i.be, label %.split.i, label %bb.r

.split.i:                                         ; preds = %.noexc51
  %i.bf = icmp ult i32 %i.bd, 1000000000
  call void @llvm.assume(i1 %i.bf)
  call void @llvm.assume(i1 %i.ax)
  %i.bg = icmp samesign ult i32 %i.bd, %i.av
  br i1 %i.bg, label %bb.t, label %bb.s

bb.r:                                             ; preds = %.noexc51
  %i.bh = icmp slt i64 %i.bc, %i.at
  br i1 %i.bh, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %.split.i
  %i.bi = cmpxchg ptr %i.aw, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.bi, 1
  br i1 %.sroa.18.0.in.i.i.i, label %.thread, label %bb.u

bb.t:                                             ; preds = %bb.r, %.split.i
  %i.bj = invoke { i64, i32 } @"_ZN60_$LT$std..time..Instant$u20$as$u20$core..ops..arith..Sub$GT$3sub17h9a0879e9e8ced43bE"(i64 noundef %i.at, i32 noundef range(i32 0, 1000000001) %i.av, i64 noundef %i.bc, i32 noundef %i.bd)
          to label %.noexc52 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc52:                                         ; preds = %bb.t
  %i.bk = extractvalue { i64, i32 } %i.bj, 0
  %i.bl = extractvalue { i64, i32 } %i.bj, 1
  invoke void @_ZN3std6thread6Thread12park_timeout17hf06feceab431e109E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ay, i64 noundef %i.bk, i32 noundef %i.bl)
          to label %.split9.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.u:                                             ; preds = %bb.s
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.bi, 0
  switch i64 %.sroa.01.0.i.i.i, label %.thread29 [
    i64 0, label %bb.v
    i64 1, label %.thread
    i64 2, label %.thread32
  ], !prof !119

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @17, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @714) #59
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread:                                          ; preds = %.split9.i, %.split9.us.i, %bb.s, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.63)
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.bn = load ptr, ptr %i.bm, align 8, !nonnull !34, !align !41, !noundef !34 ; 9 uses
  %i.bo = cmpxchg ptr %i.bn, i32 0, i32 1 acquire monotonic, align 4, !noalias !33821
  %i.bp = extractvalue { i32, i1 } %i.bo, 1
  br i1 %i.bp, label %.noexc55, label %bb.w, !prof !40

bb.w:                                             ; preds = %.thread
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 8 %i.bn)
          to label %.noexc55 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc55:                                         ; preds = %bb.w, %.thread
  %i.bq = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !33821
  %i.br = and i64 %i.bq, 9223372036854775807
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %bb.ac, label %bb.x, !prof !40

bb.x:                                             ; preds = %.noexc55
  %i.bt = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc56 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc56:                                         ; preds = %bb.x
  %i.bu = xor i1 %i.bt, true
  %i.bv = zext i1 %i.bu to i8
  br label %bb.ac

.thread32:                                        ; preds = %.split9.i, %.split9.us.i, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.614)
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.bx = load ptr, ptr %i.bw, align 8, !nonnull !34, !align !41, !noundef !34 ; 9 uses
  %i.by = cmpxchg ptr %i.bx, i32 0, i32 1 acquire monotonic, align 4, !noalias !33822
  %i.bz = extractvalue { i32, i1 } %i.by, 1
  br i1 %i.bz, label %.noexc59, label %bb.y, !prof !40

bb.y:                                             ; preds = %.thread32
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 8 %i.bx)
          to label %.noexc59 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc59:                                         ; preds = %bb.y, %.thread32
  %i.ca = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !33822
  %i.cb = and i64 %i.ca, 9223372036854775807
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %bb.av, label %bb.z, !prof !40

bb.z:                                             ; preds = %.noexc59
  %i.cd = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc60 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc60:                                         ; preds = %bb.z
  %i.ce = xor i1 %i.cd, true
  %i.cf = zext i1 %i.ce to i8
  br label %bb.av

.thread29:                                        ; preds = %.split9.i, %.split9.us.i, %bb.u
  %i.cg = load atomic i8, ptr %i.k acquire, align 8
  %i.ch = icmp eq i8 %i.cg, 0
  br i1 %i.ch, label %.lr.ph.i, label %"_ZN3std4sync4mpmc4zero15Packet$LT$T$GT$10wait_ready17hf9d4a1b51968c042E.exit.loopexit"

.lr.ph.i:                                         ; preds = %.thread29, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i
  %.sroa.0.02.i = phi i32 [ %i.cl, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i ], [ 0, %.thread29 ] ; 6 uses
  %i.ci = icmp ult i32 %.sroa.0.02.i, 7
  br i1 %i.ci, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i
  invoke void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
          to label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i unwind label %.loopexit

bb.ab:                                            ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.02.i, 0
  br i1 %.not.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.ab
  %i.cj = mul nuw nsw i32 %.sroa.0.02.i, %.sroa.0.02.i ; 2 uses
  %xtraiter = and i32 %i.cj, 7                    ; 3 uses
  %i.ck = icmp ult i32 %.sroa.0.02.i, 3
  br i1 %i.ck, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.cj, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause() #53
  call void @llvm.x86.sse2.pause() #53
  call void @llvm.x86.sse2.pause() #53
  call void @llvm.x86.sse2.pause() #53
  call void @llvm.x86.sse2.pause() #53
  call void @llvm.x86.sse2.pause() #53
  call void @llvm.x86.sse2.pause() #53
  call void @llvm.x86.sse2.pause() #53
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod89 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod89)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause() #53
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !33757

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.aa, %bb.ab
  %i.cl = add i32 %.sroa.0.02.i, 1
  %i.cm = load atomic i8, ptr %i.k acquire, align 8
  %i.cn = icmp eq i8 %i.cm, 0
  br i1 %i.cn, label %.lr.ph.i, label %"_ZN3std4sync4mpmc4zero15Packet$LT$T$GT$10wait_ready17hf9d4a1b51968c042E.exit.loopexit"

bb.ac:                                            ; preds = %.noexc56, %.noexc55
  %.sroa.01.0.i.i = phi i8 [ %i.bv, %.noexc56 ], [ 0, %.noexc55 ] ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.bn, i64 4 ; 2 uses
  %i.cp = load atomic i8, ptr %i.co monotonic, align 4, !noalias !33821
  %.not43 = icmp eq i8 %i.cp, 0
  br i1 %.not43, label %bb.ah, label %bb.ad, !prof !40

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !33823
  store ptr %i.bn, ptr %i.b, align 8, !noalias !33823
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %.sroa.01.0.i.i, ptr %i.cq, align 8, !noalias !33823
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @767, i64 noundef 43, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @769, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @715) #59
          to label %bb.af unwind label %bb.ae, !noalias !33824

bb.ae:                                            ; preds = %bb.ad
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr131drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$$GT$17hf9fff2c559d7bf72E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #61
          to label %.body unwind label %bb.ag, !noalias !33824

bb.af:                                            ; preds = %bb.ad
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !33824
  unreachable

bb.ah:                                            ; preds = %bb.ac
  %i.ct = trunc nuw i8 %.sroa.01.0.i.i to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !33825)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !alias.scope !33825, !noalias !33826, !nonnull !34, !noundef !34 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bn, i64 24 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !alias.scope !33825, !noalias !33826, !noundef !34 ; 7 uses
  %.idx82 = mul nuw nsw i64 %i.cx, 24
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 %.idx82
  %i.cz = icmp eq i64 %i.cx, 0
  br i1 %i.cz, label %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit.thread, label %.lr.ph81

bb.ai:                                            ; preds = %.lr.ph81
  %i.da = getelementptr inbounds nuw i8, ptr %i.dd, i64 24 ; 2 uses
  %i.db = add nuw nsw i64 %i.de, 1
  %i.dc = icmp eq ptr %i.da, %i.cy
  br i1 %i.dc, label %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit.thread, label %.lr.ph81

.lr.ph81:                                         ; preds = %bb.ah, %bb.ai
  %i.dd = phi ptr [ %i.da, %bb.ai ], [ %i.cv, %bb.ah ] ; 2 uses
  %i.de = phi i64 [ %i.db, %bb.ai ], [ 0, %bb.ah ] ; 5 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dg = load i64, ptr %i.df, align 8, !alias.scope !33827, !noalias !33828, !noundef !34
  %.not.i.i63 = icmp eq i64 %i.dg, %i.i
  br i1 %.not.i.i63, label %bb.aj, label %bb.ai

bb.aj:                                            ; preds = %.lr.ph81
  call void @llvm.experimental.noalias.scope.decl(metadata !33829)
  %i.dh = icmp ult i64 %i.cx, 384307168202282326
  call void @llvm.assume(i1 %i.dh)
  %.not.i5.i = icmp samesign ult i64 %i.de, %i.cx
  br i1 %.not.i5.i, label %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit, label %bb.ak, !prof !40

bb.ak:                                            ; preds = %bb.aj
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17headf60d52b65606fE"(i64 noundef %i.de, i64 noundef %i.cx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @725) #59
          to label %.noexc64 unwind label %bb.al

.noexc64:                                         ; preds = %bb.ak
  unreachable

bb.al:                                            ; preds = %bb.an, %bb.ak, %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit.thread
  %i.di = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hfb5b838b0f962537E"(ptr nonnull %i.bn, i8 %.sroa.01.0.i.i) #61
          to label %.body unwind label %bb.au

_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit: ; preds = %bb.aj
  %i.dj = getelementptr inbounds nuw [24 x i8], ptr %i.cv, i64 %i.de ; 4 uses
  %.sroa.01.0.copyload2 = load ptr, ptr %i.dj, align 8, !noalias !33825 ; 3 uses
  %.sroa.63.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.63, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.63.0..sroa_idx4, i64 16, i1 false), !noalias !33825
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dl = xor i64 %i.de, -1
  %i.dm = add nsw i64 %i.cx, %i.dl
  %i.dn = mul nuw nsw i64 %i.dm, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dj, ptr nonnull align 8 %i.dk, i64 %i.dn, i1 false), !noalias !33830
  %i.do = add nsw i64 %i.cx, -1
  store i64 %i.do, ptr %i.cw, align 8, !alias.scope !33831, !noalias !33832
  %.not24 = icmp eq ptr %.sroa.01.0.copyload2, null
  br i1 %.not24, label %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit.thread, label %bb.am, !prof !56

bb.am:                                            ; preds = %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit
  store ptr %.sroa.01.0.copyload2, ptr %i.e, align 8
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.63.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.63, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.63)
  %i.dp = atomicrmw sub ptr %.sroa.01.0.copyload2, i64 1 release, align 8, !noalias !33833
  %i.dq = icmp eq i64 %i.dp, 1
  br i1 %i.dq, label %bb.an, label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17hd4d12dcf6fa449b3E.exit"

bb.an:                                            ; preds = %bb.am
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17he4d92f17da45dc34E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17hd4d12dcf6fa449b3E.exit" unwind label %bb.al

_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit.thread: ; preds = %bb.ai, %bb.ah, %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @716) #59
          to label %bb.h unwind label %bb.al

"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17hd4d12dcf6fa449b3E.exit": ; preds = %bb.am, %bb.an
  br i1 %i.ct, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i66, label %bb.ao

bb.ao:                                            ; preds = %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17hd4d12dcf6fa449b3E.exit"
  %i.dr = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.ds = and i64 %i.dr, 9223372036854775807
  %i.dt = icmp eq i64 %i.ds, 0
  br i1 %i.dt, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i66, label %bb.ap, !prof !40

bb.ap:                                            ; preds = %bb.ao
  %i.du = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc67 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc67:                                         ; preds = %bb.ap
  br i1 %i.du, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i66, label %bb.aq

bb.aq:                                            ; preds = %.noexc67
  store atomic i8 1, ptr %i.co monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i66

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i66: ; preds = %bb.aq, %.noexc67, %bb.ao, %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17hd4d12dcf6fa449b3E.exit"
  %i.dv = atomicrmw xchg ptr %i.bn, i32 0 release, align 4
  %i.dw = icmp eq i32 %i.dv, 2
  br i1 %i.dw, label %bb.ar, label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hfb5b838b0f962537E.exit69", !prof !37

bb.ar:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i66
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %i.bn)
          to label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hfb5b838b0f962537E.exit69" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hfb5b838b0f962537E.exit69": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i66, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.0.0.copyload = load i64, ptr %i.f, align 8 ; 2 uses
  store i64 -9223372036854775796, ptr %i.f, align 8
  %.not25 = icmp eq i64 %.sroa.0.0.copyload, -9223372036854775796
  br i1 %.not25, label %.invoke, label %bb.as, !prof !37

bb.as:                                            ; preds = %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hfb5b838b0f962537E.exit69"
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.57.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.5.0..sroa_idx, i64 128, i1 false)
  store i64 0, ptr %0, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.copyload, ptr %.sroa.46.0..sroa_idx, align 8
  br label %"_ZN4core3ptr78drop_in_place$LT$std..sync..mpmc..zero..Packet$LT$nickel..error..Error$GT$$GT$17h76b6637afbdee0e5E.exit71"

.invoke:                                          ; preds = %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hfb5b838b0f962537E.exit82", %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hfb5b838b0f962537E.exit69"
  %i.dx = phi ptr [ @717, %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hfb5b838b0f962537E.exit69" ], [ @720, %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hfb5b838b0f962537E.exit82" ]
end_hunk_4
begin_hunk_5_@"_ZN3std4sync4mpmc4zero16Channel$LT$T$GT$4send28_$u7b$$u7b$closure$u7d$$u7d$17hc86dcb6b311eb041E":bb.a
bb.i:                                             ; preds = %bb.c, %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !33935, !noalias !33936, !nonnull !34, !noundef !34
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.ad = add i64 %i.t, 1
  store i64 %i.ad, ptr %i.s, align 8, !alias.scope !33935, !noalias !33936
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !33934
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  invoke fastcc void @_ZN3std4sync4mpmc5waker5Waker6notify17h7f1a87358ecc50c3E(ptr noalias noundef align 8 dereferenceable(48) %i.ae)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ag = load i8, ptr %i.af, align 8, !range !44, !noundef !34
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.ai = trunc nuw i8 %i.ag to i1
  br i1 %i.ai, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.ak = and i64 %i.aj, 9223372036854775807
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.l, !prof !40

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
  br i1 %i.ao, label %bb.n, label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hfb5b838b0f962537E.exit", !prof !37

bb.n:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %i.m)
          to label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hfb5b838b0f962537E.exit" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hfb5b838b0f962537E.exit": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !34, !align !41, !noundef !34 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8            ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.at = load i32, ptr %i.as, align 8, !range !73, !noundef !34 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.at, 1000000000
  %i.av = icmp samesign ult i32 %i.at, 1000000000
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  br i1 %.not.i, label %.split9.us.i, label %.split9.i

.split9.us.i:                                     ; preds = %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hfb5b838b0f962537E.exit", %bb.o
  %i.ax = load atomic i64, ptr %i.au acquire, align 8
  switch i64 %i.ax, label %.thread29 [
    i64 0, label %bb.o
    i64 1, label %.thread
    i64 2, label %.thread32
  ]

bb.o:                                             ; preds = %.split9.us.i
  invoke void @_ZN3std6thread6Thread4park17h79c834280bb663cdE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aw)
          to label %.split9.us.i unwind label %.loopexit.split-lp.loopexit

.split9.i:                                        ; preds = %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hfb5b838b0f962537E.exit", %.noexc51
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
  ], !prof !119

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @17, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @714) #59
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread:                                          ; preds = %.split9.i, %.split9.us.i, %bb.r, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.63)
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bl = load ptr, ptr %i.bk, align 8, !nonnull !34, !align !41, !noundef !34 ; 9 uses
  %i.bm = cmpxchg ptr %i.bl, i32 0, i32 1 acquire monotonic, align 4, !noalias !33938
  %i.bn = extractvalue { i32, i1 } %i.bm, 1
  br i1 %i.bn, label %.noexc54, label %bb.v, !prof !40

bb.v:                                             ; preds = %.thread
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 8 %i.bl)
          to label %.noexc54 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc54:                                         ; preds = %bb.v, %.thread
  %i.bo = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !33938
  %i.bp = and i64 %i.bo, 9223372036854775807
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %bb.ab, label %bb.w, !prof !40

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
  %i.bv = load ptr, ptr %i.bu, align 8, !nonnull !34, !align !41, !noundef !34 ; 9 uses
  %i.bw = cmpxchg ptr %i.bv, i32 0, i32 1 acquire monotonic, align 4, !noalias !33939
  %i.bx = extractvalue { i32, i1 } %i.bw, 1
  br i1 %i.bx, label %.noexc58, label %bb.x, !prof !40

bb.x:                                             ; preds = %.thread32
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 8 %i.bv)
          to label %.noexc58 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc58:                                         ; preds = %bb.x, %.thread32
  %i.by = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !33939
  %i.bz = and i64 %i.by, 9223372036854775807
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %bb.aw, label %bb.y, !prof !40

bb.y:                                             ; preds = %.noexc58
  %i.cb = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc59 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc59:                                         ; preds = %bb.y
  %i.cc = xor i1 %i.cb, true
  %i.cd = zext i1 %i.cc to i8
  br label %bb.aw

.thread29:                                        ; preds = %.split9.i, %.split9.us.i, %bb.t
  %i.ce = load atomic i8, ptr %i.k acquire, align 8
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %.lr.ph.i, label %"_ZN3std4sync4mpmc4zero15Packet$LT$T$GT$10wait_ready17h74a070d0575db787E.exit.loopexit"

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
  call void @llvm.x86.sse2.pause() #53
  call void @llvm.x86.sse2.pause() #53
  call void @llvm.x86.sse2.pause() #53
  call void @llvm.x86.sse2.pause() #53
  call void @llvm.x86.sse2.pause() #53
  call void @llvm.x86.sse2.pause() #53
  call void @llvm.x86.sse2.pause() #53
  call void @llvm.x86.sse2.pause() #53
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod92 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod92)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause() #53
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !33863

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.z, %bb.aa
  %i.cj = add i32 %.sroa.0.02.i, 1
  %i.ck = load atomic i8, ptr %i.k acquire, align 8
  %i.cl = icmp eq i8 %i.ck, 0
  br i1 %i.cl, label %.lr.ph.i, label %"_ZN3std4sync4mpmc4zero15Packet$LT$T$GT$10wait_ready17h74a070d0575db787E.exit.loopexit"

bb.ab:                                            ; preds = %.noexc55, %.noexc54
  %.sroa.01.0.i.i = phi i8 [ %i.bt, %.noexc55 ], [ 0, %.noexc54 ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4 ; 2 uses
  %i.cn = load atomic i8, ptr %i.cm monotonic, align 4, !noalias !33938
  %.not44 = icmp eq i8 %i.cn, 0
  br i1 %.not44, label %bb.ag, label %bb.ac, !prof !40

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !33940
  store ptr %i.bl, ptr %i.b, align 8, !noalias !33940
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %.sroa.01.0.i.i, ptr %i.co, align 8, !noalias !33940
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @767, i64 noundef 43, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @769, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @715) #59
          to label %bb.ae unwind label %bb.ad, !noalias !33941

bb.ad:                                            ; preds = %bb.ac
  %i.cp = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr131drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$$GT$17hf9fff2c559d7bf72E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #61
          to label %.body unwind label %bb.af, !noalias !33941

bb.ae:                                            ; preds = %bb.ac
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !33941
  unreachable

bb.ag:                                            ; preds = %bb.ab
  %i.cr = trunc nuw i8 %.sroa.01.0.i.i to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !33942)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !alias.scope !33942, !noalias !33943, !nonnull !34, !noundef !34 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bl, i64 24 ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !alias.scope !33942, !noalias !33943, !noundef !34 ; 7 uses
  %.idx85 = mul nuw nsw i64 %i.cv, 24
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.idx85
  %i.cx = icmp eq i64 %i.cv, 0
  br i1 %i.cx, label %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit.thread, label %.lr.ph84

bb.ah:                                            ; preds = %.lr.ph84
  %i.cy = getelementptr inbounds nuw i8, ptr %i.db, i64 24 ; 2 uses
  %i.cz = add nuw nsw i64 %i.dc, 1
  %i.da = icmp eq ptr %i.cy, %i.cw
  br i1 %i.da, label %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit.thread, label %.lr.ph84

.lr.ph84:                                         ; preds = %bb.ag, %bb.ah
  %i.db = phi ptr [ %i.cy, %bb.ah ], [ %i.ct, %bb.ag ] ; 2 uses
  %i.dc = phi i64 [ %i.cz, %bb.ah ], [ 0, %bb.ag ] ; 5 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !alias.scope !33944, !noalias !33945, !noundef !34
  %.not.i.i62 = icmp eq i64 %i.de, %i.i
  br i1 %.not.i.i62, label %bb.ai, label %bb.ah

bb.ai:                                            ; preds = %.lr.ph84
  call void @llvm.experimental.noalias.scope.decl(metadata !33946)
  %i.df = icmp ult i64 %i.cv, 384307168202282326
  call void @llvm.assume(i1 %i.df)
  %.not.i5.i = icmp samesign ult i64 %i.dc, %i.cv
  br i1 %.not.i5.i, label %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit, label %bb.aj, !prof !40

bb.aj:                                            ; preds = %bb.ai
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17headf60d52b65606fE"(i64 noundef %i.dc, i64 noundef %i.cv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @725) #59
          to label %.noexc63 unwind label %bb.ak

.noexc63:                                         ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %bb.am, %bb.aj, %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit.thread
  %i.dg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hfb5b838b0f962537E"(ptr nonnull %i.bl, i8 %.sroa.01.0.i.i) #61
          to label %.body unwind label %bb.av

_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit: ; preds = %bb.ai
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %i.ct, i64 %i.dc ; 4 uses
  %.sroa.01.0.copyload2 = load ptr, ptr %i.dh, align 8, !noalias !33942 ; 3 uses
  %.sroa.63.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.63, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.63.0..sroa_idx4, i64 16, i1 false), !noalias !33942
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = xor i64 %i.dc, -1
  %i.dk = add nsw i64 %i.cv, %i.dj
  %i.dl = mul nuw nsw i64 %i.dk, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dh, ptr nonnull align 8 %i.di, i64 %i.dl, i1 false), !noalias !33947
  %i.dm = add nsw i64 %i.cv, -1
  store i64 %i.dm, ptr %i.cu, align 8, !alias.scope !33948, !noalias !33949
  %.not24 = icmp eq ptr %.sroa.01.0.copyload2, null
  br i1 %.not24, label %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit.thread, label %bb.al, !prof !56

bb.al:                                            ; preds = %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit
  store ptr %.sroa.01.0.copyload2, ptr %i.e, align 8
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.63.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.63, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.63)
  %i.dn = atomicrmw sub ptr %.sroa.01.0.copyload2, i64 1 release, align 8, !noalias !33950
  %i.do = icmp eq i64 %i.dn, 1
  br i1 %i.do, label %bb.am, label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17hd4d12dcf6fa449b3E.exit"

bb.am:                                            ; preds = %bb.al
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17he4d92f17da45dc34E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17hd4d12dcf6fa449b3E.exit" unwind label %bb.ak

_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit.thread: ; preds = %bb.ah, %bb.ag, %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @716) #59
          to label %bb.h unwind label %bb.ak

"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17hd4d12dcf6fa449b3E.exit": ; preds = %bb.al, %bb.am
  br i1 %i.cr, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i65, label %bb.an

bb.an:                                            ; preds = %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17hd4d12dcf6fa449b3E.exit"
  %i.dp = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.dq = and i64 %i.dp, 9223372036854775807
  %i.dr = icmp eq i64 %i.dq, 0
  br i1 %i.dr, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i65, label %bb.ao, !prof !40

bb.ao:                                            ; preds = %bb.an
  %i.ds = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc66 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc66:                                         ; preds = %bb.ao
  br i1 %i.ds, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i65, label %bb.ap

bb.ap:                                            ; preds = %.noexc66
  store atomic i8 1, ptr %i.cm monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i65

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i65: ; preds = %bb.ap, %.noexc66, %bb.an, %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17hd4d12dcf6fa449b3E.exit"
  %i.dt = atomicrmw xchg ptr %i.bl, i32 0 release, align 4
  %i.du = icmp eq i32 %i.dt, 2
  br i1 %i.du, label %bb.aq, label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hfb5b838b0f962537E.exit68", !prof !37

bb.aq:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i65
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %i.bl)
          to label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hfb5b838b0f962537E.exit68" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hfb5b838b0f962537E.exit68": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i65, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.0.0.copyload = load i32, ptr %i.f, align 8 ; 2 uses
  store i32 4, ptr %i.f, align 8
  %.not25 = icmp eq i32 %.sroa.0.0.copyload, 4
  br i1 %.not25, label %.invoke, label %.thread73, !prof !37

.invoke:                                          ; preds = %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hfb5b838b0f962537E.exit80", %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hfb5b838b0f962537E.exit68"
  %i.dv = phi ptr [ @717, %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hfb5b838b0f962537E.exit68" ], [ @720, %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hfb5b838b0f962537E.exit80" ]
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dv) #59
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

.thread73:                                        ; preds = %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hfb5b838b0f962537E.exit68", %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hfb5b838b0f962537E.exit80"
  %.sink = phi i64 [ 1, %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hfb5b838b0f962537E.exit80" ], [ 0, %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hfb5b838b0f962537E.exit68" ]
  %.sroa.08.0.copyload.sink = phi i32 [ %.sroa.08.0.copyload, %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hfb5b838b0f962537E.exit80" ], [ %.sroa.0.0.copyload, %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hfb5b838b0f962537E.exit68" ]
end_hunk_5
begin_hunk_6_@"_ZN4core3ptr74drop_in_place$LT$core..iter..sources..once..Once$LT$pretty..BoxDoc$GT$$GT$17h9131300094d2e24bE":bb.a
"_ZN4core3ptr35drop_in_place$LT$pretty..BoxDoc$GT$17had777544ae75c631E.exit.i.i.i": ; preds = %bb.b
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 24, i64 noundef 8) #53, !noalias !42259, !inline_history !136
  br label %"_ZN4core3ptr65drop_in_place$LT$core..option..IntoIter$LT$pretty..BoxDoc$GT$$GT$17hf4cc55413dbb4c38E.exit"

"_ZN4core3ptr65drop_in_place$LT$core..option..IntoIter$LT$pretty..BoxDoc$GT$$GT$17hf4cc55413dbb4c38E.exit": ; preds = %bb.a, %"_ZN4core3ptr35drop_in_place$LT$pretty..BoxDoc$GT$17had777544ae75c631E.exit.i.i.i"
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr74drop_in_place$LT$nickel_lang_core..error..IllegalPolymorphicTailAction$GT$17h85f1d6cd32cccd8aE"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !133, !noundef !34
  switch i64 %i.a, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit" [
    i64 0, label %bb.b
    i64 3, label %bb.c
  ]

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit.sink.split": ; preds = %bb.c, %bb.b
  %.val.i.i1.sink = phi i64 [ %.val.i.i, %bb.b ], [ %.val.i.i1, %bb.c ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i2 = load ptr, ptr %i.b, align 8, !nonnull !34, !noundef !34
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i2, i64 noundef %.val.i.i1.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !34
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit.sink.split", %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i = load i64, ptr %i.c, align 8, !range !42, !alias.scope !42268, !noundef !34 ; 2 uses
  %i.d = icmp eq i64 %.val.i.i, 0
  br i1 %i.d, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit.sink.split"

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i1 = load i64, ptr %i.e, align 8, !range !42, !alias.scope !42269, !noundef !34 ; 2 uses
  %i.f = icmp eq i64 %.val.i.i1, 0
  br i1 %i.f, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit.sink.split"
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr74drop_in_place$LT$nickel_lang_core..repl..query_print..MarkdownRenderer$GT$17h01fbc075ecbf0f1cE"(ptr %.728.val, i64 %.736.val) unnamed_addr #10 {
bb.a:
  %i.a = icmp eq i64 %.736.val, 0
  br i1 %i.a, label %"_ZN4core3ptr44drop_in_place$LT$termimad..skin..MadSkin$GT$17hbb91b692d87cc0d9E.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i: ; preds = %bb.a
  %i.b = shl i64 %.736.val, 6                     ; 2 uses
  %i.c = add i64 %i.b, 64                         ; 2 uses
  %i.d = add i64 %.736.val, 17
  %i.e = add i64 %i.d, %i.c                       ; 4 uses
  %i.f = icmp uge i64 %i.e, %i.c
  %i.g = icmp ult i64 %i.e, 9223372036854775793
  tail call void @llvm.assume(i1 %i.f)
  tail call void @llvm.assume(i1 %i.g)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.728.val) ]
  %i.h = icmp eq i64 %i.e, 0
  br i1 %i.h, label %"_ZN4core3ptr44drop_in_place$LT$termimad..skin..MadSkin$GT$17hbb91b692d87cc0d9E.exit", label %bb.b

bb.b:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i
  %i.i = sub nuw nsw i64 -64, %i.b
  %i.j = getelementptr inbounds i8, ptr %.728.val, i64 %i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 16) #53
  br label %"_ZN4core3ptr44drop_in_place$LT$termimad..skin..MadSkin$GT$17hbb91b692d87cc0d9E.exit"

"_ZN4core3ptr44drop_in_place$LT$termimad..skin..MadSkin$GT$17hbb91b692d87cc0d9E.exit": ; preds = %bb.a, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr74drop_in_place$LT$pretty..render..Best$LT$pretty..BoxDoc$C$$LP$$RP$$GT$$GT$17haf82c18282f2bc2aE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %.val5 = load i64, ptr %0, align 8              ; 2 uses
  %i.a = icmp eq i64 %.val5, 0
  br i1 %i.a, label %"_ZN4core3ptr120drop_in_place$LT$alloc..vec..Vec$LT$$LP$usize$C$pretty..render..Mode$C$$RF$pretty..Doc$LT$pretty..BoxDoc$GT$$RP$$GT$$GT$17hd99d72226b78d423E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val6 = load ptr, ptr %i.b, align 8, !nonnull !34, !noundef !34
  %i.c = mul nuw i64 %.val5, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #53
  br label %"_ZN4core3ptr120drop_in_place$LT$alloc..vec..Vec$LT$$LP$usize$C$pretty..render..Mode$C$$RF$pretty..Doc$LT$pretty..BoxDoc$GT$$RP$$GT$$GT$17hd99d72226b78d423E.exit"

"_ZN4core3ptr120drop_in_place$LT$alloc..vec..Vec$LT$$LP$usize$C$pretty..render..Mode$C$$RF$pretty..Doc$LT$pretty..BoxDoc$GT$$RP$$GT$$GT$17hd99d72226b78d423E.exit": ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val7 = load i64, ptr %i.d, align 8            ; 2 uses
  %i.e = icmp eq i64 %.val7, 0
  br i1 %i.e, label %"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$$RF$pretty..Doc$LT$pretty..BoxDoc$GT$$GT$$GT$17h63665304d2664fa1E.exit11", label %bb.c

bb.c:                                             ; preds = %"_ZN4core3ptr120drop_in_place$LT$alloc..vec..Vec$LT$$LP$usize$C$pretty..render..Mode$C$$RF$pretty..Doc$LT$pretty..BoxDoc$GT$$RP$$GT$$GT$17hd99d72226b78d423E.exit"
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val8 = load ptr, ptr %i.f, align 8, !nonnull !34, !noundef !34
  %i.g = shl nuw i64 %.val7, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #53
  br label %"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$$RF$pretty..Doc$LT$pretty..BoxDoc$GT$$GT$$GT$17h63665304d2664fa1E.exit11"

"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$$RF$pretty..Doc$LT$pretty..BoxDoc$GT$$GT$$GT$17h63665304d2664fa1E.exit11": ; preds = %bb.c, %"_ZN4core3ptr120drop_in_place$LT$alloc..vec..Vec$LT$$LP$usize$C$pretty..render..Mode$C$$RF$pretty..Doc$LT$pretty..BoxDoc$GT$$RP$$GT$$GT$17hd99d72226b78d423E.exit"
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val = load i64, ptr %i.h, align 8             ; 2 uses
  %i.i = icmp eq i64 %.val, 0
  br i1 %i.i, label %"_ZN4core3ptr49drop_in_place$LT$alloc..vec..Vec$LT$usize$GT$$GT$17haacf3ede930c3f81E.exit12", label %bb.d

bb.d:                                             ; preds = %"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$$RF$pretty..Doc$LT$pretty..BoxDoc$GT$$GT$$GT$17h63665304d2664fa1E.exit11"
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val2 = load ptr, ptr %i.j, align 8, !nonnull !34, !noundef !34
  %i.k = shl nuw i64 %.val, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 8) #53
  br label %"_ZN4core3ptr49drop_in_place$LT$alloc..vec..Vec$LT$usize$GT$$GT$17haacf3ede930c3f81E.exit12"

"_ZN4core3ptr49drop_in_place$LT$alloc..vec..Vec$LT$usize$GT$$GT$17haacf3ede930c3f81E.exit12": ; preds = %"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$$RF$pretty..Doc$LT$pretty..BoxDoc$GT$$GT$$GT$17h63665304d2664fa1E.exit11", %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr74drop_in_place$LT$std..sync..mpsc..Receiver$LT$nickel..error..Error$GT$$GT$17he60c0bce262212f9E"(i64 %.0.val, ptr %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  switch i64 %.0.val, label %default.unreachable.i.i [
    i64 0, label %bb.b
    i64 1, label %bb.p
    i64 2, label %bb.ag
  ]

default.unreachable.i.i:                          ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.8.val, i64 520
  %i.b = atomicrmw sub ptr %i.a, i64 1 acq_rel, align 8
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.c, label %"_ZN4core3ptr74drop_in_place$LT$std..sync..mpmc..Receiver$LT$nickel..error..Error$GT$$GT$17h1ab517b5cd984899E.exit"

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.8.val, i64 400 ; 4 uses
  %i.e = load i64, ptr %i.d, align 16, !noundef !34
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 128
  %i.g = atomicrmw or ptr %i.f, i64 %i.e seq_cst, align 8 ; 2 uses
  %i.h = load i64, ptr %i.d, align 16, !noundef !34 ; 2 uses
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

bb.f:                                             ; preds = %bb.l, %bb.e
  %i.t = phi i64 [ %i.l, %bb.e ], [ %.pre.i.i.i.i.i.i, %bb.l ]
  %.sroa.0.07.i.i.i.i.i.i = phi i32 [ 0, %bb.e ], [ %.sroa.0.18.i.i.i.i.i.i, %bb.l ] ; 7 uses
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ %i.m, %bb.e ], [ %.sroa.0.1.i.i.i.i.i.i, %bb.l ] ; 5 uses
  %i.u = add i64 %i.t, -1
  %i.v = and i64 %.sroa.0.0.i.i.i.i.i.i, %i.u     ; 3 uses
  %i.w = load i64, ptr %i.p, align 8, !noundef !34
  %i.x = sub i64 0, %i.w
  %i.y = and i64 %.sroa.0.0.i.i.i.i.i.i, %i.x
  %i.z = load ptr, ptr %i.q, align 8, !nonnull !34, !align !41, !noundef !34
  %i.aa = load i64, ptr %i.r, align 16, !noundef !34
  %i.ab = icmp ult i64 %i.v, %i.aa
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = getelementptr inbounds nuw [144 x i8], ptr %i.z, i64 %i.v ; 2 uses
  %i.ad = load atomic i64, ptr %i.ac acquire, align 8 ; 2 uses
  %i.ae = add i64 %.sroa.0.0.i.i.i.i.i.i, 1
  %i.af = icmp eq i64 %i.ae, %i.ad
  br i1 %i.af, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = icmp eq i64 %i.o, %.sroa.0.0.i.i.i.i.i.i
  br i1 %i.ag, label %"_ZN76_$LT$std..sync..mpmc..Receiver$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17h404c08005e9a9e17E.exit.i.i.i", label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ah = add nuw i64 %i.v, 1
  %i.ai = load i64, ptr %i.s, align 128, !noundef !34
  %i.aj = icmp ult i64 %i.ah, %i.ai
  br i1 %i.aj, label %bb.n, label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.ak = icmp ult i32 %.sroa.0.07.i.i.i.i.i.i, 7
  br i1 %i.ak, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %.not.i.i.i.i.i.i.i = icmp eq i32 %.sroa.0.07.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.k
  %i.al = mul nuw nsw i32 %.sroa.0.07.i.i.i.i.i.i, %.sroa.0.07.i.i.i.i.i.i ; 2 uses
  %xtraiter40 = and i32 %i.al, 7                  ; 3 uses
  %i.am = icmp ult i32 %.sroa.0.07.i.i.i.i.i.i, 3
  br i1 %i.am, label %.lr.ph.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.preheader.new:               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %unroll_iter44 = and i32 %i.al, 56
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader.new
  %niter45 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader.new ], [ %niter45.next.7, %.lr.ph.i.i.i.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  %niter45.next.7 = add i32 %niter45, 8           ; 2 uses
  %niter45.ncmp.7 = icmp eq i32 %niter45.next.7, %unroll_iter44
  br i1 %niter45.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %lcmp.mod42.not = icmp eq i32 %xtraiter40, 0
  br i1 %lcmp.mod42.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.epil.preheader:              ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.preheader
  %lcmp.mod43 = icmp ne i32 %xtraiter40, 0
  tail call void @llvm.assume(i1 %lcmp.mod43)
  br label %.lr.ph.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.epil:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.epil.preheader
  %epil.iter41 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.epil.preheader ], [ %epil.iter41.next, %.lr.ph.i.i.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause() #53
  %epil.iter41.next = add i32 %epil.iter41, 1     ; 2 uses
  %epil.iter41.cmp.not = icmp eq i32 %epil.iter41.next, %xtraiter40
  br i1 %epil.iter41.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.epil, !llvm.loop !42270

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.epil, %bb.k, %bb.j
  %i.an = add i32 %.sroa.0.07.i.i.i.i.i.i, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.n, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i
  %.sroa.0.18.i.i.i.i.i.i = phi i32 [ %.sroa.0.07.i.i.i.i.i.i, %bb.n ], [ %i.an, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i.i = phi i64 [ %.sroa.05.0.i.i.i.i.i.i, %bb.n ], [ %.sroa.0.0.i.i.i.i.i.i, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i ]
  %.pre.i.i.i.i.i.i = load i64, ptr %i.d, align 16
  br label %bb.f

bb.m:                                             ; preds = %bb.h
  %i.ao = load i64, ptr %i.p, align 8, !noundef !34
  %i.ap = add i64 %i.ao, %i.y
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.h
  %.sroa.05.0.i.i.i.i.i.i = phi i64 [ %i.ap, %bb.m ], [ %i.ad, %bb.h ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  tail call fastcc void @"_ZN4core3ptr41drop_in_place$LT$nickel..error..Error$GT$17h4d7b9695d28c5d06E"(ptr noalias noundef align 8 dereferenceable(136) %i.aq)
  br label %bb.l

"_ZN76_$LT$std..sync..mpmc..Receiver$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17h404c08005e9a9e17E.exit.i.i.i": ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %.8.val, i64 528
  %i.as = atomicrmw xchg ptr %i.ar, i8 1 acq_rel, align 1
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %"_ZN4core3ptr74drop_in_place$LT$std..sync..mpmc..Receiver$LT$nickel..error..Error$GT$$GT$17h1ab517b5cd984899E.exit", label %bb.o

bb.o:                                             ; preds = %"_ZN76_$LT$std..sync..mpmc..Receiver$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17h404c08005e9a9e17E.exit.i.i.i"
  tail call fastcc void @"_ZN4core3ptr146drop_in_place$LT$alloc..boxed..Box$LT$std..sync..mpmc..counter..Counter$LT$std..sync..mpmc..array..Channel$LT$nickel..error..Error$GT$$GT$$GT$$GT$17ha7f6b83d5408a060E"(ptr nonnull %.8.val)
  br label %"_ZN4core3ptr74drop_in_place$LT$std..sync..mpmc..Receiver$LT$nickel..error..Error$GT$$GT$17h1ab517b5cd984899E.exit"

bb.p:                                             ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %.8.val, i64 392
  %i.av = atomicrmw sub ptr %i.au, i64 1 acq_rel, align 8
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %bb.q, label %"_ZN4core3ptr74drop_in_place$LT$std..sync..mpmc..Receiver$LT$nickel..error..Error$GT$$GT$17h1ab517b5cd984899E.exit"

bb.q:                                             ; preds = %bb.p
  %i.ax = getelementptr inbounds nuw i8, ptr %.8.val, i64 128 ; 3 uses
  %i.ay = atomicrmw or ptr %i.ax, i64 1 seq_cst, align 8
  %i.az = and i64 %i.ay, 1
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %bb.r, label %"_ZN76_$LT$std..sync..mpmc..Receiver$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17h3927f0708d213c92E.exit.i.i.i"

bb.r:                                             ; preds = %bb.q
  %i.bb = load atomic i64, ptr %i.ax acquire, align 8 ; 2 uses
  %i.bc = and i64 %i.bb, 62
  %.not44.i.i.i.i.i.i = icmp eq i64 %i.bc, 62
  br i1 %.not44.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.r, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i4.i.i
  %.sroa.0.04245.i.i.i.i.i.i = phi i32 [ %i.bg, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i4.i.i ], [ 0, %bb.r ] ; 6 uses
  %i.bd = icmp ult i32 %.sroa.0.04245.i.i.i.i.i.i, 7
  br i1 %i.bd, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  tail call void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i4.i.i

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %.not.i.i.i.i.i5.i.i = icmp eq i32 %.sroa.0.04245.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i5.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i4.i.i, label %.lr.ph.i.i.i.i.i6.i.i.preheader

.lr.ph.i.i.i.i.i6.i.i.preheader:                  ; preds = %bb.t
  %i.be = mul nuw nsw i32 %.sroa.0.04245.i.i.i.i.i.i, %.sroa.0.04245.i.i.i.i.i.i ; 2 uses
  %xtraiter = and i32 %i.be, 7                    ; 3 uses
  %i.bf = icmp ult i32 %.sroa.0.04245.i.i.i.i.i.i, 3
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i6.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i6.i.i.preheader.new

.lr.ph.i.i.i.i.i6.i.i.preheader.new:              ; preds = %.lr.ph.i.i.i.i.i6.i.i.preheader
  %unroll_iter = and i32 %i.be, 56
  br label %.lr.ph.i.i.i.i.i6.i.i

.lr.ph.i.i.i.i.i6.i.i:                            ; preds = %.lr.ph.i.i.i.i.i6.i.i, %.lr.ph.i.i.i.i.i6.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.i.i6.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i.i6.i.i ]
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i4.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i6.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i4.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i6.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i4.i.i, label %.lr.ph.i.i.i.i.i6.i.i.epil.preheader

.lr.ph.i.i.i.i.i6.i.i.epil.preheader:             ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i4.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i6.i.i.preheader
  %lcmp.mod21 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod21)
  br label %.lr.ph.i.i.i.i.i6.i.i.epil

.lr.ph.i.i.i.i.i6.i.i.epil:                       ; preds = %.lr.ph.i.i.i.i.i6.i.i.epil, %.lr.ph.i.i.i.i.i6.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.i.i6.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.i.i6.i.i.epil ]
  tail call void @llvm.x86.sse2.pause() #53
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i4.i.i, label %.lr.ph.i.i.i.i.i6.i.i.epil, !llvm.loop !42271

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i4.i.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i4.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i6.i.i.epil, %bb.t, %bb.s
  %i.bg = add i32 %.sroa.0.04245.i.i.i.i.i.i, 1   ; 2 uses
  %i.bh = load atomic i64, ptr %i.ax acquire, align 8 ; 2 uses
  %i.bi = and i64 %i.bh, 62
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bi, 62
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i4.i.i, %bb.r
  %.sroa.0.0.lcssa.i.i.i.i.i.i = phi i64 [ %i.bb, %bb.r ], [ %i.bh, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i4.i.i ]
  %.sroa.0.042.lcssa.i.i.i.i.i.i = phi i32 [ 0, %bb.r ], [ %i.bg, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i4.i.i ]
  %i.bj = lshr i64 %.sroa.0.0.lcssa.i.i.i.i.i.i, 1 ; 2 uses
  %i.bk = load atomic i64, ptr %.8.val acquire, align 8 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 2 uses
  %i.bm = atomicrmw xchg ptr %i.bl, ptr null acq_rel, align 8 ; 2 uses
  %i.bn = lshr i64 %i.bk, 1                       ; 2 uses
  %i.bo = icmp ne i64 %i.bn, %i.bj                ; 2 uses
  %i.bp = icmp eq ptr %i.bm, null
  %or.cond.i.i.i.i.i.i = select i1 %i.bo, i1 %i.bp, i1 false
  br i1 %or.cond.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit27.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i
  %.sroa.011.0.i.i.i.i.i.i = phi ptr [ %i.bm, %._crit_edge.i.i.i.i.i.i ], [ %i.bu, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit27.i.i.i.i.i.i ] ; 2 uses
  br i1 %i.bo, label %.lr.ph51.i.i.i.i.i.i, label %._crit_edge52.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %._crit_edge.i.i.i.i.i.i, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit27.i.i.i.i.i.i
  %.sroa.0.1.i.i.i.i3.i.i = phi i32 [ %i.bt, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit27.i.i.i.i.i.i ], [ %.sroa.0.042.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 6 uses
  %i.bq = icmp ult i32 %.sroa.0.1.i.i.i.i3.i.i, 7
  br i1 %i.bq, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.preheader.i.i.i.i.i.i
  tail call void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit27.i.i.i.i.i.i

bb.v:                                             ; preds = %.preheader.i.i.i.i.i.i
  %.not.i23.i.i.i.i.i.i = icmp eq i32 %.sroa.0.1.i.i.i.i3.i.i, 0
  br i1 %.not.i23.i.i.i.i.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit27.i.i.i.i.i.i, label %.lr.ph.i24.i.i.i.i.i.i.preheader

.lr.ph.i24.i.i.i.i.i.i.preheader:                 ; preds = %bb.v
  %i.br = mul nuw nsw i32 %.sroa.0.1.i.i.i.i3.i.i, %.sroa.0.1.i.i.i.i3.i.i ; 2 uses
  %xtraiter22 = and i32 %i.br, 7                  ; 3 uses
  %i.bs = icmp ult i32 %.sroa.0.1.i.i.i.i3.i.i, 3
  br i1 %i.bs, label %.lr.ph.i24.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i24.i.i.i.i.i.i.preheader.new

.lr.ph.i24.i.i.i.i.i.i.preheader.new:             ; preds = %.lr.ph.i24.i.i.i.i.i.i.preheader
  %unroll_iter26 = and i32 %i.br, 56
  br label %.lr.ph.i24.i.i.i.i.i.i

.lr.ph.i24.i.i.i.i.i.i:                           ; preds = %.lr.ph.i24.i.i.i.i.i.i, %.lr.ph.i24.i.i.i.i.i.i.preheader.new
  %niter27 = phi i32 [ 0, %.lr.ph.i24.i.i.i.i.i.i.preheader.new ], [ %niter27.next.7, %.lr.ph.i24.i.i.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  %niter27.next.7 = add i32 %niter27, 8           ; 2 uses
  %niter27.ncmp.7 = icmp eq i32 %niter27.next.7, %unroll_iter26
  br i1 %niter27.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit27.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i24.i.i.i.i.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit27.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i24.i.i.i.i.i.i
  %lcmp.mod24.not = icmp eq i32 %xtraiter22, 0
  br i1 %lcmp.mod24.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit27.i.i.i.i.i.i, label %.lr.ph.i24.i.i.i.i.i.i.epil.preheader

.lr.ph.i24.i.i.i.i.i.i.epil.preheader:            ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit27.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i24.i.i.i.i.i.i.preheader
  %lcmp.mod25 = icmp ne i32 %xtraiter22, 0
  tail call void @llvm.assume(i1 %lcmp.mod25)
  br label %.lr.ph.i24.i.i.i.i.i.i.epil

.lr.ph.i24.i.i.i.i.i.i.epil:                      ; preds = %.lr.ph.i24.i.i.i.i.i.i.epil, %.lr.ph.i24.i.i.i.i.i.i.epil.preheader
  %epil.iter23 = phi i32 [ 0, %.lr.ph.i24.i.i.i.i.i.i.epil.preheader ], [ %epil.iter23.next, %.lr.ph.i24.i.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause() #53
  %epil.iter23.next = add i32 %epil.iter23, 1     ; 2 uses
  %epil.iter23.cmp.not = icmp eq i32 %epil.iter23.next, %xtraiter22
  br i1 %epil.iter23.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit27.i.i.i.i.i.i, label %.lr.ph.i24.i.i.i.i.i.i.epil, !llvm.loop !42272

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit27.i.i.i.i.i.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit27.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i24.i.i.i.i.i.i.epil, %bb.v, %bb.u
  %i.bt = add i32 %.sroa.0.1.i.i.i.i3.i.i, 1
  %i.bu = atomicrmw xchg ptr %i.bl, ptr null acq_rel, align 8 ; 2 uses
  %.old2.i.i.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.old2.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i

._crit_edge52.i.i.i.i.i.i:                        ; preds = %bb.ad, %.loopexit.i.i.i.i.i.i
  %.sroa.011.1.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.011.0.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ], [ %.sroa.011.2.i.i.i.i.i.i, %bb.ad ] ; 2 uses
  %.sroa.05.0.lcssa.i.i.i.i.i.i = phi i64 [ %i.bk, %.loopexit.i.i.i.i.i.i ], [ %i.cu, %bb.ad ]
  %i.bv = icmp eq ptr %.sroa.011.1.lcssa.i.i.i.i.i.i, null
  br i1 %i.bv, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$20discard_all_messages17hc3d4404c31ceb40dE.exit.i.i.i.i.i", label %bb.w

.lr.ph51.i.i.i.i.i.i:                             ; preds = %.loopexit.i.i.i.i.i.i, %bb.ad
  %i.bw = phi i64 [ %i.cv, %bb.ad ], [ %i.bn, %.loopexit.i.i.i.i.i.i ]
  %.sroa.05.049.i.i.i.i.i.i = phi i64 [ %i.cu, %bb.ad ], [ %i.bk, %.loopexit.i.i.i.i.i.i ]
  %.sroa.011.148.i.i.i.i.i.i = phi ptr [ %.sroa.011.2.i.i.i.i.i.i, %bb.ad ], [ %.sroa.011.0.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ] ; 5 uses
  %i.bx = and i64 %i.bw, 31                       ; 2 uses
  %.not21.i.i.i.i.i.i = icmp eq i64 %i.bx, 31
  br i1 %.not21.i.i.i.i.i.i, label %bb.x, label %bb.aa

bb.w:                                             ; preds = %._crit_edge52.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.1.lcssa.i.i.i.i.i.i, i64 noundef 4472, i64 noundef 8) #53
  br label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$20discard_all_messages17hc3d4404c31ceb40dE.exit.i.i.i.i.i"

bb.x:                                             ; preds = %.lr.ph51.i.i.i.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.011.148.i.i.i.i.i.i, i64 4464 ; 3 uses
  %i.bz = load atomic ptr, ptr %i.by acquire, align 8
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %.lr.ph.i28.i.i.i.i.i.i, label %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$9wait_next17haa3469604f35d676E.exit.i.i.i.i.i.i"

.lr.ph.i28.i.i.i.i.i.i:                           ; preds = %bb.x, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i.i
  %.sroa.0.02.i29.i.i.i.i.i.i = phi i32 [ %i.ce, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i.i ], [ 0, %bb.x ] ; 6 uses
  %i.cb = icmp ult i32 %.sroa.0.02.i29.i.i.i.i.i.i, 7
  br i1 %i.cb, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i28.i.i.i.i.i.i
  tail call void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i.i

bb.z:                                             ; preds = %.lr.ph.i28.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %.sroa.0.02.i29.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.z
  %i.cc = mul nuw nsw i32 %.sroa.0.02.i29.i.i.i.i.i.i, %.sroa.0.02.i29.i.i.i.i.i.i ; 2 uses
  %xtraiter34 = and i32 %i.cc, 7                  ; 3 uses
  %i.cd = icmp ult i32 %.sroa.0.02.i29.i.i.i.i.i.i, 3
  br i1 %i.cd, label %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.preheader.new:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %unroll_iter38 = and i32 %i.cc, 56
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader.new
  %niter39 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader.new ], [ %niter39.next.7, %.lr.ph.i.i.i.i.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  %niter39.next.7 = add i32 %niter39, 8           ; 2 uses
  %niter39.ncmp.7 = icmp eq i32 %niter39.next.7, %unroll_iter38
  br i1 %niter39.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %lcmp.mod36.not = icmp eq i32 %xtraiter34, 0
  br i1 %lcmp.mod36.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.epil.preheader:            ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %lcmp.mod37 = icmp ne i32 %xtraiter34, 0
  tail call void @llvm.assume(i1 %lcmp.mod37)
  br label %.lr.ph.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.epil:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader
  %epil.iter35 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader ], [ %epil.iter35.next, %.lr.ph.i.i.i.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause() #53
  %epil.iter35.next = add i32 %epil.iter35, 1     ; 2 uses
  %epil.iter35.cmp.not = icmp eq i32 %epil.iter35.next, %xtraiter34
  br i1 %epil.iter35.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.epil, !llvm.loop !42273

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.epil, %bb.z, %bb.y
  %i.ce = add i32 %.sroa.0.02.i29.i.i.i.i.i.i, 1
  %i.cf = load atomic ptr, ptr %i.by acquire, align 8
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %.lr.ph.i28.i.i.i.i.i.i, label %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$9wait_next17haa3469604f35d676E.exit.i.i.i.i.i.i"

"_ZN3std4sync4mpmc4list14Block$LT$T$GT$9wait_next17haa3469604f35d676E.exit.i.i.i.i.i.i": ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i.i, %bb.x
  %i.ch = load atomic ptr, ptr %i.by acquire, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.148.i.i.i.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.148.i.i.i.i.i.i, i64 noundef 4472, i64 noundef 8) #53
  br label %bb.ad

bb.aa:                                            ; preds = %.lr.ph51.i.i.i.i.i.i
  %i.ci = getelementptr inbounds nuw [144 x i8], ptr %.sroa.011.148.i.i.i.i.i.i, i64 %i.bx ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 136 ; 2 uses
  %i.ck = load atomic i64, ptr %i.cj acquire, align 8
  %i.cl = and i64 %i.ck, 1
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %.lr.ph.i30.i.i.i.i.i.i, label %"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17h21efa4b359f832b5E.exit.i.i.i.i.i.i"

.lr.ph.i30.i.i.i.i.i.i:                           ; preds = %bb.aa, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i32.i.i.i.i.i.i
  %.sroa.0.02.i31.i.i.i.i.i.i = phi i32 [ %i.cq, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i32.i.i.i.i.i.i ], [ 0, %bb.aa ] ; 6 uses
  %i.cn = icmp ult i32 %.sroa.0.02.i31.i.i.i.i.i.i, 7
  br i1 %i.cn, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i30.i.i.i.i.i.i
  tail call void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i32.i.i.i.i.i.i

bb.ac:                                            ; preds = %.lr.ph.i30.i.i.i.i.i.i
  %.not.i.i33.i.i.i.i.i.i = icmp eq i32 %.sroa.0.02.i31.i.i.i.i.i.i, 0
  br i1 %.not.i.i33.i.i.i.i.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i32.i.i.i.i.i.i, label %.lr.ph.i.i34.i.i.i.i.i.i.preheader

.lr.ph.i.i34.i.i.i.i.i.i.preheader:               ; preds = %bb.ac
  %i.co = mul nuw nsw i32 %.sroa.0.02.i31.i.i.i.i.i.i, %.sroa.0.02.i31.i.i.i.i.i.i ; 2 uses
  %xtraiter28 = and i32 %i.co, 7                  ; 3 uses
  %i.cp = icmp ult i32 %.sroa.0.02.i31.i.i.i.i.i.i, 3
  br i1 %i.cp, label %.lr.ph.i.i34.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i34.i.i.i.i.i.i.preheader.new

.lr.ph.i.i34.i.i.i.i.i.i.preheader.new:           ; preds = %.lr.ph.i.i34.i.i.i.i.i.i.preheader
  %unroll_iter32 = and i32 %i.co, 56
  br label %.lr.ph.i.i34.i.i.i.i.i.i

.lr.ph.i.i34.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i34.i.i.i.i.i.i, %.lr.ph.i.i34.i.i.i.i.i.i.preheader.new
  %niter33 = phi i32 [ 0, %.lr.ph.i.i34.i.i.i.i.i.i.preheader.new ], [ %niter33.next.7, %.lr.ph.i.i34.i.i.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  %niter33.next.7 = add i32 %niter33, 8           ; 2 uses
  %niter33.ncmp.7 = icmp eq i32 %niter33.next.7, %unroll_iter32
  br i1 %niter33.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i32.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i34.i.i.i.i.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i32.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i34.i.i.i.i.i.i
  %lcmp.mod30.not = icmp eq i32 %xtraiter28, 0
  br i1 %lcmp.mod30.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i32.i.i.i.i.i.i, label %.lr.ph.i.i34.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i34.i.i.i.i.i.i.epil.preheader:          ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i32.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i34.i.i.i.i.i.i.preheader
  %lcmp.mod31 = icmp ne i32 %xtraiter28, 0
  tail call void @llvm.assume(i1 %lcmp.mod31)
  br label %.lr.ph.i.i34.i.i.i.i.i.i.epil

.lr.ph.i.i34.i.i.i.i.i.i.epil:                    ; preds = %.lr.ph.i.i34.i.i.i.i.i.i.epil, %.lr.ph.i.i34.i.i.i.i.i.i.epil.preheader
  %epil.iter29 = phi i32 [ 0, %.lr.ph.i.i34.i.i.i.i.i.i.epil.preheader ], [ %epil.iter29.next, %.lr.ph.i.i34.i.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause() #53
  %epil.iter29.next = add i32 %epil.iter29, 1     ; 2 uses
  %epil.iter29.cmp.not = icmp eq i32 %epil.iter29.next, %xtraiter28
  br i1 %epil.iter29.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i32.i.i.i.i.i.i, label %.lr.ph.i.i34.i.i.i.i.i.i.epil, !llvm.loop !42274

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i32.i.i.i.i.i.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i32.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i34.i.i.i.i.i.i.epil, %bb.ac, %bb.ab
  %i.cq = add i32 %.sroa.0.02.i31.i.i.i.i.i.i, 1
  %i.cr = load atomic i64, ptr %i.cj acquire, align 8
  %i.cs = and i64 %i.cr, 1
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %.lr.ph.i30.i.i.i.i.i.i, label %"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17h21efa4b359f832b5E.exit.i.i.i.i.i.i"

"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17h21efa4b359f832b5E.exit.i.i.i.i.i.i": ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i32.i.i.i.i.i.i, %bb.aa
  tail call fastcc void @"_ZN4core3ptr41drop_in_place$LT$nickel..error..Error$GT$17h4d7b9695d28c5d06E"(ptr noalias noundef align 8 dereferenceable(136) %i.ci)
  br label %bb.ad

bb.ad:                                            ; preds = %"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17h21efa4b359f832b5E.exit.i.i.i.i.i.i", %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$9wait_next17haa3469604f35d676E.exit.i.i.i.i.i.i"
  %.sroa.011.2.i.i.i.i.i.i = phi ptr [ %.sroa.011.148.i.i.i.i.i.i, %"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17h21efa4b359f832b5E.exit.i.i.i.i.i.i" ], [ %i.ch, %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$9wait_next17haa3469604f35d676E.exit.i.i.i.i.i.i" ] ; 2 uses
  %i.cu = add i64 %.sroa.05.049.i.i.i.i.i.i, 2    ; 3 uses
  %i.cv = lshr i64 %i.cu, 1                       ; 2 uses
  %.not20.i.i.i.i.i.i = icmp eq i64 %i.cv, %i.bj
  br i1 %.not20.i.i.i.i.i.i, label %._crit_edge52.i.i.i.i.i.i, label %.lr.ph51.i.i.i.i.i.i

"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$20discard_all_messages17hc3d4404c31ceb40dE.exit.i.i.i.i.i": ; preds = %bb.w, %._crit_edge52.i.i.i.i.i.i
  %i.cw = and i64 %.sroa.05.0.lcssa.i.i.i.i.i.i, -2
  store atomic i64 %i.cw, ptr %.8.val release, align 8
  br label %"_ZN76_$LT$std..sync..mpmc..Receiver$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17h3927f0708d213c92E.exit.i.i.i"

"_ZN76_$LT$std..sync..mpmc..Receiver$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17h3927f0708d213c92E.exit.i.i.i": ; preds = %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$20discard_all_messages17hc3d4404c31ceb40dE.exit.i.i.i.i.i", %bb.q
  %i.cx = getelementptr inbounds nuw i8, ptr %.8.val, i64 400
  %i.cy = atomicrmw xchg ptr %i.cx, i8 1 acq_rel, align 1
  %i.cz = icmp eq i8 %i.cy, 0
  br i1 %i.cz, label %"_ZN4core3ptr74drop_in_place$LT$std..sync..mpmc..Receiver$LT$nickel..error..Error$GT$$GT$17h1ab517b5cd984899E.exit", label %bb.ae

bb.ae:                                            ; preds = %"_ZN76_$LT$std..sync..mpmc..Receiver$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17h3927f0708d213c92E.exit.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  invoke fastcc void @"_ZN4core3ptr120drop_in_place$LT$std..sync..mpmc..counter..Counter$LT$std..sync..mpmc..list..Channel$LT$nickel..error..Error$GT$$GT$$GT$17haa780d0d145981b8E"(ptr noalias noundef nonnull align 128 dereferenceable(512) %.8.val)
          to label %"_ZN4core3ptr145drop_in_place$LT$alloc..boxed..Box$LT$std..sync..mpmc..counter..Counter$LT$std..sync..mpmc..list..Channel$LT$nickel..error..Error$GT$$GT$$GT$$GT$17h908a393105d1e538E.exit.i.i.i" unwind label %bb.af

common.resume.i.i:                                ; preds = %bb.aj, %bb.af
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.da, %bb.af ], [ %i.dh, %bb.aj ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.af:                                            ; preds = %bb.ae
  %i.da = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 512, i64 noundef 128) #53
  br label %common.resume.i.i

"_ZN4core3ptr145drop_in_place$LT$alloc..boxed..Box$LT$std..sync..mpmc..counter..Counter$LT$std..sync..mpmc..list..Channel$LT$nickel..error..Error$GT$$GT$$GT$$GT$17h908a393105d1e538E.exit.i.i.i": ; preds = %bb.ae
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 512, i64 noundef 128) #53
  br label %"_ZN4core3ptr74drop_in_place$LT$std..sync..mpmc..Receiver$LT$nickel..error..Error$GT$$GT$17h1ab517b5cd984899E.exit"

bb.ag:                                            ; preds = %bb.a
  %i.db = getelementptr inbounds nuw i8, ptr %.8.val, i64 120
  %i.dc = atomicrmw sub ptr %i.db, i64 1 acq_rel, align 8
  %i.dd = icmp eq i64 %i.dc, 1
  br i1 %i.dd, label %bb.ah, label %"_ZN4core3ptr74drop_in_place$LT$std..sync..mpmc..Receiver$LT$nickel..error..Error$GT$$GT$17h1ab517b5cd984899E.exit"

bb.ah:                                            ; preds = %bb.ag
  tail call fastcc void @"_ZN3std4sync4mpmc4zero16Channel$LT$T$GT$10disconnect17h8af1b1e3287380f4E"(ptr noundef nonnull align 8 %.8.val)
  %i.de = getelementptr inbounds nuw i8, ptr %.8.val, i64 128
  %i.df = atomicrmw xchg ptr %i.de, i8 1 acq_rel, align 1
  %i.dg = icmp eq i8 %i.df, 0
  br i1 %i.dg, label %"_ZN4core3ptr74drop_in_place$LT$std..sync..mpmc..Receiver$LT$nickel..error..Error$GT$$GT$17h1ab517b5cd984899E.exit", label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  invoke fastcc void @"_ZN4core3ptr88drop_in_place$LT$std..sync..poison..mutex..Mutex$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hb101da4fccf2cb49E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(136) %.8.val)
          to label %"_ZN4core3ptr145drop_in_place$LT$alloc..boxed..Box$LT$std..sync..mpmc..counter..Counter$LT$std..sync..mpmc..zero..Channel$LT$nickel..error..Error$GT$$GT$$GT$$GT$17hf78c5a33daedff17E.exit.i.i.i" unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dh = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 136, i64 noundef 8) #53
  br label %common.resume.i.i

"_ZN4core3ptr145drop_in_place$LT$alloc..boxed..Box$LT$std..sync..mpmc..counter..Counter$LT$std..sync..mpmc..zero..Channel$LT$nickel..error..Error$GT$$GT$$GT$$GT$17hf78c5a33daedff17E.exit.i.i.i": ; preds = %bb.ai
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 136, i64 noundef 8) #53
  br label %"_ZN4core3ptr74drop_in_place$LT$std..sync..mpmc..Receiver$LT$nickel..error..Error$GT$$GT$17h1ab517b5cd984899E.exit"

"_ZN4core3ptr74drop_in_place$LT$std..sync..mpmc..Receiver$LT$nickel..error..Error$GT$$GT$17h1ab517b5cd984899E.exit": ; preds = %bb.b, %"_ZN76_$LT$std..sync..mpmc..Receiver$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17h404c08005e9a9e17E.exit.i.i.i", %bb.o, %bb.p, %"_ZN76_$LT$std..sync..mpmc..Receiver$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17h3927f0708d213c92E.exit.i.i.i", %"_ZN4core3ptr145drop_in_place$LT$alloc..boxed..Box$LT$std..sync..mpmc..counter..Counter$LT$std..sync..mpmc..list..Channel$LT$nickel..error..Error$GT$$GT$$GT$$GT$17h908a393105d1e538E.exit.i.i.i", %bb.ag, %bb.ah, %"_ZN4core3ptr145drop_in_place$LT$alloc..boxed..Box$LT$std..sync..mpmc..counter..Counter$LT$std..sync..mpmc..zero..Channel$LT$nickel..error..Error$GT$$GT$$GT$$GT$17hf78c5a33daedff17E.exit.i.i.i"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr74drop_in_place$LT$std..sync..mpsc..Sender$LT$nickel..error..Warning$GT$$GT$17hca648a9aebc43156E"(i64 %.0.val, ptr %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  switch i64 %.0.val, label %default.unreachable.i.i [
    i64 0, label %bb.b
    i64 1, label %bb.f
    i64 2, label %bb.k
  ]

default.unreachable.i.i:                          ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.8.val, i64 512
  %i.b = atomicrmw sub ptr %i.a, i64 1 acq_rel, align 8
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.c, label %"_ZN4core3ptr74drop_in_place$LT$std..sync..mpmc..Sender$LT$nickel..error..Warning$GT$$GT$17h2bee29a9265984e7E.exit"

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.8.val, i64 400 ; 2 uses
  %i.e = load i64, ptr %i.d, align 16, !noundef !34
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 128
  %i.g = atomicrmw or ptr %i.f, i64 %i.e seq_cst, align 8
  %i.h = load i64, ptr %i.d, align 16, !noundef !34
  %i.i = and i64 %i.h, %i.g
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %"_ZN74_$LT$std..sync..mpmc..Sender$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17hec650747055e0a12E.exit.i.i.i"

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 320
  tail call fastcc void @_ZN3std4sync4mpmc5waker9SyncWaker10disconnect17h8d3ee9c2a2799b36E(ptr noundef nonnull align 8 %i.k)
  br label %"_ZN74_$LT$std..sync..mpmc..Sender$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17hec650747055e0a12E.exit.i.i.i"

"_ZN74_$LT$std..sync..mpmc..Sender$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17hec650747055e0a12E.exit.i.i.i": ; preds = %bb.d, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 528
  %i.m = atomicrmw xchg ptr %i.l, i8 1 acq_rel, align 1
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %"_ZN4core3ptr74drop_in_place$LT$std..sync..mpmc..Sender$LT$nickel..error..Warning$GT$$GT$17h2bee29a9265984e7E.exit", label %bb.e

bb.e:                                             ; preds = %"_ZN74_$LT$std..sync..mpmc..Sender$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17hec650747055e0a12E.exit.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call fastcc void @"_ZN4core3ptr148drop_in_place$LT$alloc..boxed..Box$LT$std..sync..mpmc..counter..Counter$LT$std..sync..mpmc..array..Channel$LT$nickel..error..Warning$GT$$GT$$GT$$GT$17h9abd1751dcfdd728E"(ptr nonnull %.8.val)
  br label %"_ZN4core3ptr74drop_in_place$LT$std..sync..mpmc..Sender$LT$nickel..error..Warning$GT$$GT$17h2bee29a9265984e7E.exit"

bb.f:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %.8.val, i64 384
  %i.p = atomicrmw sub ptr %i.o, i64 1 acq_rel, align 8
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.g, label %"_ZN4core3ptr74drop_in_place$LT$std..sync..mpmc..Sender$LT$nickel..error..Warning$GT$$GT$17h2bee29a9265984e7E.exit"

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %.8.val, i64 128
  %i.s = atomicrmw or ptr %i.r, i64 1 seq_cst, align 8
  %i.t = and i64 %i.s, 1
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.h, label %"_ZN74_$LT$std..sync..mpmc..Sender$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17hc24a1516db2d688fE.exit.i.i.i"

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %.8.val, i64 256
  tail call fastcc void @_ZN3std4sync4mpmc5waker9SyncWaker10disconnect17h8d3ee9c2a2799b36E(ptr noundef nonnull align 8 %i.v)
  br label %"_ZN74_$LT$std..sync..mpmc..Sender$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17hc24a1516db2d688fE.exit.i.i.i"

"_ZN74_$LT$std..sync..mpmc..Sender$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17hc24a1516db2d688fE.exit.i.i.i": ; preds = %bb.h, %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %.8.val, i64 400
  %i.x = atomicrmw xchg ptr %i.w, i8 1 acq_rel, align 1
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %"_ZN4core3ptr74drop_in_place$LT$std..sync..mpmc..Sender$LT$nickel..error..Warning$GT$$GT$17h2bee29a9265984e7E.exit", label %bb.i

bb.i:                                             ; preds = %"_ZN74_$LT$std..sync..mpmc..Sender$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17hc24a1516db2d688fE.exit.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  invoke fastcc void @"_ZN4core3ptr122drop_in_place$LT$std..sync..mpmc..counter..Counter$LT$std..sync..mpmc..list..Channel$LT$nickel..error..Warning$GT$$GT$$GT$17h248b8e65619800caE"(ptr noalias noundef nonnull align 128 dereferenceable(512) %.8.val)
          to label %"_ZN4core3ptr147drop_in_place$LT$alloc..boxed..Box$LT$std..sync..mpmc..counter..Counter$LT$std..sync..mpmc..list..Channel$LT$nickel..error..Warning$GT$$GT$$GT$$GT$17h865fcc7fca846546E.exit.i.i.i" unwind label %bb.j

common.resume.i.i:                                ; preds = %bb.n, %bb.j
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.z, %bb.j ], [ %i.ag, %bb.n ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 512, i64 noundef 128) #53
  br label %common.resume.i.i

end_hunk_6
begin_hunk_7_@"_ZN4core3ptr75drop_in_place$LT$clap_builder..parser..matches..matched_arg..MatchedArg$GT$17h1f88ac4319ba7801E":bb.a
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call fastcc void @"_ZN4core3ptr93drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$std..ffi..os_str..OsString$GT$$GT$$GT$17hadff562fd60d5b8eE"(ptr noalias noundef align 8 dereferenceable(24) %i.g) #61
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %"_ZN4core3ptr49drop_in_place$LT$alloc..vec..Vec$LT$usize$GT$$GT$17haacf3ede930c3f81E.exit"
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42368)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val.i = load ptr, ptr %i.i, align 8, !alias.scope !42368, !nonnull !34, !noundef !34 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val1.i = load i64, ptr %i.j, align 8, !alias.scope !42368, !noundef !34 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42369)
  %i.k = icmp eq i64 %.val1.i, 0
  br i1 %i.k, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h03c413766cb9eae5E.exit.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$std..ffi..os_str..OsString$GT$$GT$17h419df27931423f20E.exit.i.i.i"
  %.sroa.0.07.i.i.i = phi i64 [ %i.m, %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$std..ffi..os_str..OsString$GT$$GT$17h419df27931423f20E.exit.i.i.i" ], [ 0, %bb.d ] ; 2 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.07.i.i.i ; 3 uses
  %i.m = add nuw i64 %.sroa.0.07.i.i.i, 1         ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42370)
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.val4.i.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !42371, !noalias !42368, !nonnull !34, !noundef !34 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.val5.i.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !42371, !noalias !42368, !noundef !34 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42372)
  %i.p = icmp eq i64 %.val5.i.i.i.i, 0
  br i1 %i.p, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h720d58ecd9c7c5ecE.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i, %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17ha5fd00ddbc8f0e95E.exit.i.i.i.i.i.i"
  %.sroa.0.011.i.i.i.i.i.i = phi i64 [ %i.r, %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17ha5fd00ddbc8f0e95E.exit.i.i.i.i.i.i" ], [ 0, %.lr.ph.i.i.i ] ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %.val4.i.i.i.i, i64 %.sroa.0.011.i.i.i.i.i.i ; 2 uses
  %i.r = add nuw i64 %.sroa.0.011.i.i.i.i.i.i, 1  ; 2 uses
  %.val8.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !range !42, !alias.scope !42373, !noalias !42374, !noundef !34 ; 2 uses
  %i.s = icmp eq i64 %.val8.i.i.i.i.i.i, 0
  br i1 %i.s, label %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17ha5fd00ddbc8f0e95E.exit.i.i.i.i.i.i", label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.t = getelementptr i8, ptr %i.q, i64 8
  %.val9.i.i.i.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !42372, !noalias !42374, !nonnull !34, !noundef !34
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !42375
  br label %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17ha5fd00ddbc8f0e95E.exit.i.i.i.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17ha5fd00ddbc8f0e95E.exit.i.i.i.i.i.i": ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i
  %i.u = icmp eq i64 %i.r, %.val5.i.i.i.i
  br i1 %i.u, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h720d58ecd9c7c5ecE.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h720d58ecd9c7c5ecE.exit.i.i.i.i": ; preds = %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17ha5fd00ddbc8f0e95E.exit.i.i.i.i.i.i", %.lr.ph.i.i.i
  %.val.i.i.i.i = load i64, ptr %i.l, align 8, !range !42, !alias.scope !42371, !noalias !42368, !noundef !34 ; 2 uses
  %i.v = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.v, label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$std..ffi..os_str..OsString$GT$$GT$17h419df27931423f20E.exit.i.i.i", label %bb.f

bb.f:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h720d58ecd9c7c5ecE.exit.i.i.i.i"
  %i.w = mul nuw i64 %.val.i.i.i.i, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i.i, i64 noundef %i.w, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !42374
  br label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$std..ffi..os_str..OsString$GT$$GT$17h419df27931423f20E.exit.i.i.i"

"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$std..ffi..os_str..OsString$GT$$GT$17h419df27931423f20E.exit.i.i.i": ; preds = %bb.f, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h720d58ecd9c7c5ecE.exit.i.i.i.i"
  %i.x = icmp eq i64 %i.m, %.val1.i
  br i1 %i.x, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h03c413766cb9eae5E.exit.i", label %.lr.ph.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h03c413766cb9eae5E.exit.i": ; preds = %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$std..ffi..os_str..OsString$GT$$GT$17h419df27931423f20E.exit.i.i.i", %bb.d
  %.val2.i = load i64, ptr %i.h, align 8, !range !42, !alias.scope !42368, !noundef !34 ; 2 uses
  %i.y = icmp eq i64 %.val2.i, 0
  br i1 %i.y, label %"_ZN4core3ptr93drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$std..ffi..os_str..OsString$GT$$GT$$GT$17hadff562fd60d5b8eE.exit", label %bb.g

bb.g:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h03c413766cb9eae5E.exit.i"
  %i.z = mul nuw i64 %.val2.i, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.z, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !42368
  br label %"_ZN4core3ptr93drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$std..ffi..os_str..OsString$GT$$GT$$GT$17hadff562fd60d5b8eE.exit"

"_ZN4core3ptr93drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$std..ffi..os_str..OsString$GT$$GT$$GT$17hadff562fd60d5b8eE.exit": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h03c413766cb9eae5E.exit.i", %bb.g
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr76drop_in_place$LT$regex_automata..meta..wrappers..BoundedBacktrackerCache$GT$17h83fc7394c6898b43E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42380)
  %i.a = load i64, ptr %0, align 8, !range !57, !alias.scope !42380, !noundef !34 ; 3 uses
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %"_ZN4core3ptr96drop_in_place$LT$core..option..Option$LT$regex_automata..nfa..thompson..backtrack..Cache$GT$$GT$17h6e14de8064ccac5aE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42381)
  %i.c = icmp eq i64 %i.a, 0
  br i1 %i.c, label %"_ZN4core3ptr91drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..backtrack..Frame$GT$$GT$17ha3869e429e2b6b39E.exit.i.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load ptr, ptr %i.d, align 8, !alias.scope !42382, !nonnull !34, !noundef !34
  %i.e = shl nuw i64 %i.a, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !42382
  br label %"_ZN4core3ptr91drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..backtrack..Frame$GT$$GT$17ha3869e429e2b6b39E.exit.i.i"

"_ZN4core3ptr91drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..backtrack..Frame$GT$$GT$17ha3869e429e2b6b39E.exit.i.i": ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i.i = load i64, ptr %i.f, align 8, !alias.scope !42382 ; 2 uses
  %i.g = icmp eq i64 %.val2.i.i, 0
  br i1 %i.g, label %"_ZN4core3ptr96drop_in_place$LT$core..option..Option$LT$regex_automata..nfa..thompson..backtrack..Cache$GT$$GT$17h6e14de8064ccac5aE.exit", label %bb.d

bb.d:                                             ; preds = %"_ZN4core3ptr91drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..backtrack..Frame$GT$$GT$17ha3869e429e2b6b39E.exit.i.i"
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i.i = load ptr, ptr %i.h, align 8, !alias.scope !42382, !nonnull !34, !noundef !34
  %i.i = shl nuw i64 %.val2.i.i, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !42382
  br label %"_ZN4core3ptr96drop_in_place$LT$core..option..Option$LT$regex_automata..nfa..thompson..backtrack..Cache$GT$$GT$17h6e14de8064ccac5aE.exit"

"_ZN4core3ptr96drop_in_place$LT$core..option..Option$LT$regex_automata..nfa..thompson..backtrack..Cache$GT$$GT$17h6e14de8064ccac5aE.exit": ; preds = %bb.a, %"_ZN4core3ptr91drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..backtrack..Frame$GT$$GT$17ha3869e429e2b6b39E.exit.i.i", %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr76drop_in_place$LT$std..sync..mpsc..Receiver$LT$nickel..error..Warning$GT$$GT$17h7049d4376ef67da0E"(i64 %.0.val, ptr %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  switch i64 %.0.val, label %default.unreachable.i.i [
    i64 0, label %bb.b
    i64 1, label %bb.r
    i64 2, label %bb.ak
  ]

default.unreachable.i.i:                          ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.8.val, i64 520
  %i.b = atomicrmw sub ptr %i.a, i64 1 acq_rel, align 8
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.c, label %"_ZN4core3ptr76drop_in_place$LT$std..sync..mpmc..Receiver$LT$nickel..error..Warning$GT$$GT$17hfcbc0699a23a7ee4E.exit"

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.8.val, i64 400 ; 4 uses
  %i.e = load i64, ptr %i.d, align 16, !noundef !34
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 128
  %i.g = atomicrmw or ptr %i.f, i64 %i.e seq_cst, align 8 ; 2 uses
  %i.h = load i64, ptr %i.d, align 16, !noundef !34 ; 2 uses
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

bb.f:                                             ; preds = %"_ZN4core3ptr43drop_in_place$LT$nickel..error..Warning$GT$17h07748e5d61f3aeb4E.exit.i.i.i.i.i.i", %bb.e
  %i.t = phi i64 [ %i.l, %bb.e ], [ %.pre.i.i.i.i.i.i, %"_ZN4core3ptr43drop_in_place$LT$nickel..error..Warning$GT$17h07748e5d61f3aeb4E.exit.i.i.i.i.i.i" ]
  %.sroa.0.07.i.i.i.i.i.i = phi i32 [ 0, %bb.e ], [ %.sroa.0.18.i.i.i.i.i.i, %"_ZN4core3ptr43drop_in_place$LT$nickel..error..Warning$GT$17h07748e5d61f3aeb4E.exit.i.i.i.i.i.i" ] ; 10 uses
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ %i.m, %bb.e ], [ %.sroa.0.1.i.i.i.i.i.i, %"_ZN4core3ptr43drop_in_place$LT$nickel..error..Warning$GT$17h07748e5d61f3aeb4E.exit.i.i.i.i.i.i" ] ; 5 uses
  %i.u = add i64 %i.t, -1
  %i.v = and i64 %.sroa.0.0.i.i.i.i.i.i, %i.u     ; 3 uses
  %i.w = load i64, ptr %i.p, align 8, !noundef !34
  %i.x = sub i64 0, %i.w
  %i.y = and i64 %.sroa.0.0.i.i.i.i.i.i, %i.x
  %i.z = load ptr, ptr %i.q, align 8, !nonnull !34, !align !41, !noundef !34
  %i.aa = load i64, ptr %i.r, align 16, !noundef !34
  %i.ab = icmp ult i64 %i.v, %i.aa
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = getelementptr inbounds nuw [72 x i8], ptr %i.z, i64 %i.v ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.ae = load atomic i64, ptr %i.ad acquire, align 8 ; 2 uses
  %i.af = add i64 %.sroa.0.0.i.i.i.i.i.i, 1
  %i.ag = icmp eq i64 %i.af, %i.ae
  br i1 %i.ag, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = icmp eq i64 %i.o, %.sroa.0.0.i.i.i.i.i.i
  br i1 %i.ah, label %"_ZN76_$LT$std..sync..mpmc..Receiver$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17h319bad2d002349ebE.exit.i.i.i", label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ai = add nuw i64 %i.v, 1
  %i.aj = load i64, ptr %i.s, align 128, !noundef !34
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
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
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
  tail call void @llvm.x86.sse2.pause() #53
  %epil.iter43.next = add i32 %epil.iter43, 1     ; 2 uses
  %epil.iter43.cmp.not = icmp eq i32 %epil.iter43.next, %xtraiter42
  br i1 %epil.iter43.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.epil, !llvm.loop !42383

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.epil, %bb.k, %bb.j
  %i.ao = add i32 %.sroa.0.07.i.i.i.i.i.i, 1
  br label %"_ZN4core3ptr43drop_in_place$LT$nickel..error..Warning$GT$17h07748e5d61f3aeb4E.exit.i.i.i.i.i.i"

"_ZN4core3ptr43drop_in_place$LT$nickel..error..Warning$GT$17h07748e5d61f3aeb4E.exit.i.i.i.i.i.i": ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i
  %.sroa.0.18.i.i.i.i.i.i = phi i32 [ %i.ao, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.i, %bb.m ], [ %.sroa.0.07.i.i.i.i.i.i, %bb.n ], [ %.sroa.0.07.i.i.i.i.i.i, %bb.o ], [ %.sroa.0.07.i.i.i.i.i.i, %bb.p ]
  %.sroa.0.1.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i ], [ %.sroa.05.0.i.i.i.i.i.i, %bb.m ], [ %.sroa.05.0.i.i.i.i.i.i, %bb.n ], [ %.sroa.05.0.i.i.i.i.i.i, %bb.o ], [ %.sroa.05.0.i.i.i.i.i.i, %bb.p ]
  %.pre.i.i.i.i.i.i = load i64, ptr %i.d, align 16
  br label %bb.f

bb.l:                                             ; preds = %bb.h
  %i.ap = load i64, ptr %i.p, align 8, !noundef !34
  %i.aq = add i64 %i.ap, %i.y
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.h
  %.sroa.05.0.i.i.i.i.i.i = phi i64 [ %i.aq, %bb.l ], [ %i.ae, %bb.h ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42412)
  %i.ar = load i32, ptr %i.ac, align 8, !range !95, !alias.scope !42412, !noundef !34
  %i.as = icmp eq i32 %i.ar, 3
  br i1 %i.as, label %"_ZN4core3ptr43drop_in_place$LT$nickel..error..Warning$GT$17h07748e5d61f3aeb4E.exit.i.i.i.i.i.i", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %i.ac, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42414)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42415)
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !42416, !noundef !34 ; 3 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %"_ZN4core3ptr43drop_in_place$LT$nickel..error..Warning$GT$17h07748e5d61f3aeb4E.exit.i.i.i.i.i.i", label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = load i64, ptr %i.au, align 8, !noalias !42417, !noundef !34
  %i.ax = add i64 %i.aw, -1                       ; 2 uses
  store i64 %i.ax, ptr %i.au, align 8, !noalias !42417
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.p, label %"_ZN4core3ptr43drop_in_place$LT$nickel..error..Warning$GT$17h07748e5d61f3aeb4E.exit.i.i.i.i.i.i"

bb.p:                                             ; preds = %bb.o
  tail call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17ha3d18f83ba1e1015E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.at)
  br label %"_ZN4core3ptr43drop_in_place$LT$nickel..error..Warning$GT$17h07748e5d61f3aeb4E.exit.i.i.i.i.i.i"

"_ZN76_$LT$std..sync..mpmc..Receiver$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17h319bad2d002349ebE.exit.i.i.i": ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %.8.val, i64 528
  %i.ba = atomicrmw xchg ptr %i.az, i8 1 acq_rel, align 1
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %"_ZN4core3ptr76drop_in_place$LT$std..sync..mpmc..Receiver$LT$nickel..error..Warning$GT$$GT$17hfcbc0699a23a7ee4E.exit", label %bb.q

bb.q:                                             ; preds = %"_ZN76_$LT$std..sync..mpmc..Receiver$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17h319bad2d002349ebE.exit.i.i.i"
  tail call fastcc void @"_ZN4core3ptr148drop_in_place$LT$alloc..boxed..Box$LT$std..sync..mpmc..counter..Counter$LT$std..sync..mpmc..array..Channel$LT$nickel..error..Warning$GT$$GT$$GT$$GT$17h9abd1751dcfdd728E"(ptr nonnull %.8.val)
  br label %"_ZN4core3ptr76drop_in_place$LT$std..sync..mpmc..Receiver$LT$nickel..error..Warning$GT$$GT$17hfcbc0699a23a7ee4E.exit"

bb.r:                                             ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %.8.val, i64 392
  %i.bd = atomicrmw sub ptr %i.bc, i64 1 acq_rel, align 8
  %i.be = icmp eq i64 %i.bd, 1
  br i1 %i.be, label %bb.s, label %"_ZN4core3ptr76drop_in_place$LT$std..sync..mpmc..Receiver$LT$nickel..error..Warning$GT$$GT$17hfcbc0699a23a7ee4E.exit"

bb.s:                                             ; preds = %bb.r
  %i.bf = getelementptr inbounds nuw i8, ptr %.8.val, i64 128 ; 3 uses
  %i.bg = atomicrmw or ptr %i.bf, i64 1 seq_cst, align 8
  %i.bh = and i64 %i.bg, 1
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %bb.t, label %"_ZN76_$LT$std..sync..mpmc..Receiver$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17h0577141b61497a87E.exit.i.i.i"

bb.t:                                             ; preds = %bb.s
  %i.bj = load atomic i64, ptr %i.bf acquire, align 8 ; 2 uses
  %i.bk = and i64 %i.bj, 62
  %.not44.i.i.i.i.i.i = icmp eq i64 %i.bk, 62
  br i1 %.not44.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.t, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i5.i.i
  %.sroa.0.04245.i.i.i.i.i.i = phi i32 [ %i.bo, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i5.i.i ], [ 0, %bb.t ] ; 6 uses
  %i.bl = icmp ult i32 %.sroa.0.04245.i.i.i.i.i.i, 7
  br i1 %i.bl, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  tail call void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i5.i.i

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %.not.i.i.i.i.i6.i.i = icmp eq i32 %.sroa.0.04245.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i6.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i5.i.i, label %.lr.ph.i.i.i.i.i7.i.i.preheader

.lr.ph.i.i.i.i.i7.i.i.preheader:                  ; preds = %bb.v
  %i.bm = mul nuw nsw i32 %.sroa.0.04245.i.i.i.i.i.i, %.sroa.0.04245.i.i.i.i.i.i ; 2 uses
  %xtraiter = and i32 %i.bm, 7                    ; 3 uses
  %i.bn = icmp ult i32 %.sroa.0.04245.i.i.i.i.i.i, 3
  br i1 %i.bn, label %.lr.ph.i.i.i.i.i7.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i7.i.i.preheader.new

.lr.ph.i.i.i.i.i7.i.i.preheader.new:              ; preds = %.lr.ph.i.i.i.i.i7.i.i.preheader
  %unroll_iter = and i32 %i.bm, 56
  br label %.lr.ph.i.i.i.i.i7.i.i

.lr.ph.i.i.i.i.i7.i.i:                            ; preds = %.lr.ph.i.i.i.i.i7.i.i, %.lr.ph.i.i.i.i.i7.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.i.i7.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i.i7.i.i ]
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
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
  tail call void @llvm.x86.sse2.pause() #53
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i5.i.i, label %.lr.ph.i.i.i.i.i7.i.i.epil, !llvm.loop !42396

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i5.i.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i5.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i7.i.i.epil, %bb.v, %bb.u
  %i.bo = add i32 %.sroa.0.04245.i.i.i.i.i.i, 1   ; 2 uses
  %i.bp = load atomic i64, ptr %i.bf acquire, align 8 ; 2 uses
  %i.bq = and i64 %i.bp, 62
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bq, 62
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i5.i.i, %bb.t
  %.sroa.0.0.lcssa.i.i.i.i.i.i = phi i64 [ %i.bj, %bb.t ], [ %i.bp, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i5.i.i ]
  %.sroa.0.042.lcssa.i.i.i.i.i.i = phi i32 [ 0, %bb.t ], [ %i.bo, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i5.i.i ]
  %i.br = lshr i64 %.sroa.0.0.lcssa.i.i.i.i.i.i, 1 ; 2 uses
  %i.bs = load atomic i64, ptr %.8.val acquire, align 8 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 2 uses
  %i.bu = atomicrmw xchg ptr %i.bt, ptr null acq_rel, align 8 ; 2 uses
  %i.bv = lshr i64 %i.bs, 1                       ; 2 uses
  %i.bw = icmp ne i64 %i.bv, %i.br                ; 2 uses
  %i.bx = icmp eq ptr %i.bu, null
  %or.cond.i.i.i.i.i.i = select i1 %i.bw, i1 %i.bx, i1 false
  br i1 %or.cond.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit27.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i
  %.sroa.011.0.i.i.i.i.i.i = phi ptr [ %i.bu, %._crit_edge.i.i.i.i.i.i ], [ %i.cc, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit27.i.i.i.i.i.i ] ; 2 uses
  br i1 %i.bw, label %.lr.ph51.i.i.i.i.i.i, label %._crit_edge52.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %._crit_edge.i.i.i.i.i.i, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit27.i.i.i.i.i.i
  %.sroa.0.1.i.i.i.i4.i.i = phi i32 [ %i.cb, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit27.i.i.i.i.i.i ], [ %.sroa.0.042.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 6 uses
  %i.by = icmp ult i32 %.sroa.0.1.i.i.i.i4.i.i, 7
  br i1 %i.by, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.preheader.i.i.i.i.i.i
  tail call void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit27.i.i.i.i.i.i

bb.x:                                             ; preds = %.preheader.i.i.i.i.i.i
  %.not.i23.i.i.i.i.i.i = icmp eq i32 %.sroa.0.1.i.i.i.i4.i.i, 0
  br i1 %.not.i23.i.i.i.i.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit27.i.i.i.i.i.i, label %.lr.ph.i24.i.i.i.i.i.i.preheader

.lr.ph.i24.i.i.i.i.i.i.preheader:                 ; preds = %bb.x
  %i.bz = mul nuw nsw i32 %.sroa.0.1.i.i.i.i4.i.i, %.sroa.0.1.i.i.i.i4.i.i ; 2 uses
  %xtraiter24 = and i32 %i.bz, 7                  ; 3 uses
  %i.ca = icmp ult i32 %.sroa.0.1.i.i.i.i4.i.i, 3
  br i1 %i.ca, label %.lr.ph.i24.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i24.i.i.i.i.i.i.preheader.new

.lr.ph.i24.i.i.i.i.i.i.preheader.new:             ; preds = %.lr.ph.i24.i.i.i.i.i.i.preheader
  %unroll_iter28 = and i32 %i.bz, 56
  br label %.lr.ph.i24.i.i.i.i.i.i

.lr.ph.i24.i.i.i.i.i.i:                           ; preds = %.lr.ph.i24.i.i.i.i.i.i, %.lr.ph.i24.i.i.i.i.i.i.preheader.new
  %niter29 = phi i32 [ 0, %.lr.ph.i24.i.i.i.i.i.i.preheader.new ], [ %niter29.next.7, %.lr.ph.i24.i.i.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
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
  tail call void @llvm.x86.sse2.pause() #53
  %epil.iter25.next = add i32 %epil.iter25, 1     ; 2 uses
  %epil.iter25.cmp.not = icmp eq i32 %epil.iter25.next, %xtraiter24
  br i1 %epil.iter25.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit27.i.i.i.i.i.i, label %.lr.ph.i24.i.i.i.i.i.i.epil, !llvm.loop !42397

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit27.i.i.i.i.i.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit27.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i24.i.i.i.i.i.i.epil, %bb.x, %bb.w
  %i.cb = add i32 %.sroa.0.1.i.i.i.i4.i.i, 1
  %i.cc = atomicrmw xchg ptr %i.bt, ptr null acq_rel, align 8 ; 2 uses
  %.old2.i.i.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.old2.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i

._crit_edge52.i.i.i.i.i.i:                        ; preds = %"_ZN4core3ptr43drop_in_place$LT$nickel..error..Warning$GT$17h07748e5d61f3aeb4E.exit.i.i.i.i3.i.i", %.loopexit.i.i.i.i.i.i
  %.sroa.011.1.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.011.0.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ], [ %.sroa.011.2.i.i.i.i.i.i, %"_ZN4core3ptr43drop_in_place$LT$nickel..error..Warning$GT$17h07748e5d61f3aeb4E.exit.i.i.i.i3.i.i" ] ; 2 uses
  %.sroa.05.0.lcssa.i.i.i.i.i.i = phi i64 [ %i.bs, %.loopexit.i.i.i.i.i.i ], [ %i.dk, %"_ZN4core3ptr43drop_in_place$LT$nickel..error..Warning$GT$17h07748e5d61f3aeb4E.exit.i.i.i.i3.i.i" ]
  %i.cd = icmp eq ptr %.sroa.011.1.lcssa.i.i.i.i.i.i, null
  br i1 %i.cd, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$20discard_all_messages17hf465f88e42609854E.exit.i.i.i.i.i", label %bb.y

.lr.ph51.i.i.i.i.i.i:                             ; preds = %.loopexit.i.i.i.i.i.i, %"_ZN4core3ptr43drop_in_place$LT$nickel..error..Warning$GT$17h07748e5d61f3aeb4E.exit.i.i.i.i3.i.i"
  %i.ce = phi i64 [ %i.dl, %"_ZN4core3ptr43drop_in_place$LT$nickel..error..Warning$GT$17h07748e5d61f3aeb4E.exit.i.i.i.i3.i.i" ], [ %i.bv, %.loopexit.i.i.i.i.i.i ]
  %.sroa.05.049.i.i.i.i.i.i = phi i64 [ %i.dk, %"_ZN4core3ptr43drop_in_place$LT$nickel..error..Warning$GT$17h07748e5d61f3aeb4E.exit.i.i.i.i3.i.i" ], [ %i.bs, %.loopexit.i.i.i.i.i.i ]
  %.sroa.011.148.i.i.i.i.i.i = phi ptr [ %.sroa.011.2.i.i.i.i.i.i, %"_ZN4core3ptr43drop_in_place$LT$nickel..error..Warning$GT$17h07748e5d61f3aeb4E.exit.i.i.i.i3.i.i" ], [ %.sroa.011.0.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ] ; 9 uses
  %i.cf = and i64 %i.ce, 31                       ; 2 uses
  %.not21.i.i.i.i.i.i = icmp eq i64 %i.cf, 31
  br i1 %.not21.i.i.i.i.i.i, label %bb.z, label %bb.ac

bb.y:                                             ; preds = %._crit_edge52.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.1.lcssa.i.i.i.i.i.i, i64 noundef 2240, i64 noundef 8) #53
  br label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$20discard_all_messages17hf465f88e42609854E.exit.i.i.i.i.i"

bb.z:                                             ; preds = %.lr.ph51.i.i.i.i.i.i
  %i.cg = load atomic ptr, ptr %.sroa.011.148.i.i.i.i.i.i acquire, align 8
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %.lr.ph.i28.i.i.i.i.i.i, label %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$9wait_next17h97386e3a2881b5abE.exit.i.i.i.i.i.i"

.lr.ph.i28.i.i.i.i.i.i:                           ; preds = %bb.z, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i.i
  %.sroa.0.02.i29.i.i.i.i.i.i = phi i32 [ %i.cl, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i.i ], [ 0, %bb.z ] ; 6 uses
  %i.ci = icmp ult i32 %.sroa.0.02.i29.i.i.i.i.i.i, 7
  br i1 %i.ci, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i28.i.i.i.i.i.i
  tail call void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i.i

bb.ab:                                            ; preds = %.lr.ph.i28.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %.sroa.0.02.i29.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.ab
  %i.cj = mul nuw nsw i32 %.sroa.0.02.i29.i.i.i.i.i.i, %.sroa.0.02.i29.i.i.i.i.i.i ; 2 uses
  %xtraiter36 = and i32 %i.cj, 7                  ; 3 uses
  %i.ck = icmp ult i32 %.sroa.0.02.i29.i.i.i.i.i.i, 3
  br i1 %i.ck, label %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.preheader.new:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %unroll_iter40 = and i32 %i.cj, 56
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader.new
  %niter41 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader.new ], [ %niter41.next.7, %.lr.ph.i.i.i.i.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
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
  tail call void @llvm.x86.sse2.pause() #53
  %epil.iter37.next = add i32 %epil.iter37, 1     ; 2 uses
  %epil.iter37.cmp.not = icmp eq i32 %epil.iter37.next, %xtraiter36
  br i1 %epil.iter37.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.epil, !llvm.loop !42398

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.epil, %bb.ab, %bb.aa
  %i.cl = add i32 %.sroa.0.02.i29.i.i.i.i.i.i, 1
  %i.cm = load atomic ptr, ptr %.sroa.011.148.i.i.i.i.i.i acquire, align 8
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %.lr.ph.i28.i.i.i.i.i.i, label %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$9wait_next17h97386e3a2881b5abE.exit.i.i.i.i.i.i"

"_ZN3std4sync4mpmc4list14Block$LT$T$GT$9wait_next17h97386e3a2881b5abE.exit.i.i.i.i.i.i": ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i.i, %bb.z
  %i.co = load atomic ptr, ptr %.sroa.011.148.i.i.i.i.i.i acquire, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.148.i.i.i.i.i.i, i64 noundef 2240, i64 noundef 8) #53
  br label %"_ZN4core3ptr43drop_in_place$LT$nickel..error..Warning$GT$17h07748e5d61f3aeb4E.exit.i.i.i.i3.i.i"

bb.ac:                                            ; preds = %.lr.ph51.i.i.i.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.011.148.i.i.i.i.i.i, i64 8
  %i.cq = getelementptr inbounds nuw [72 x i8], ptr %i.cp, i64 %i.cf ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 64 ; 2 uses
  %i.cs = load atomic i64, ptr %i.cr acquire, align 8
  %i.ct = and i64 %i.cs, 1
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %.lr.ph.i30.i.i.i.i.i.i, label %"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17hdcd5234e14962d87E.exit.i.i.i.i.i.i"

.lr.ph.i30.i.i.i.i.i.i:                           ; preds = %bb.ac, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i32.i.i.i.i.i.i
  %.sroa.0.02.i31.i.i.i.i.i.i = phi i32 [ %i.cy, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i32.i.i.i.i.i.i ], [ 0, %bb.ac ] ; 6 uses
  %i.cv = icmp ult i32 %.sroa.0.02.i31.i.i.i.i.i.i, 7
  br i1 %i.cv, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i30.i.i.i.i.i.i
  tail call void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i32.i.i.i.i.i.i

bb.ae:                                            ; preds = %.lr.ph.i30.i.i.i.i.i.i
  %.not.i.i33.i.i.i.i.i.i = icmp eq i32 %.sroa.0.02.i31.i.i.i.i.i.i, 0
  br i1 %.not.i.i33.i.i.i.i.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i32.i.i.i.i.i.i, label %.lr.ph.i.i34.i.i.i.i.i.i.preheader

.lr.ph.i.i34.i.i.i.i.i.i.preheader:               ; preds = %bb.ae
  %i.cw = mul nuw nsw i32 %.sroa.0.02.i31.i.i.i.i.i.i, %.sroa.0.02.i31.i.i.i.i.i.i ; 2 uses
  %xtraiter30 = and i32 %i.cw, 7                  ; 3 uses
  %i.cx = icmp ult i32 %.sroa.0.02.i31.i.i.i.i.i.i, 3
  br i1 %i.cx, label %.lr.ph.i.i34.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i34.i.i.i.i.i.i.preheader.new

.lr.ph.i.i34.i.i.i.i.i.i.preheader.new:           ; preds = %.lr.ph.i.i34.i.i.i.i.i.i.preheader
  %unroll_iter34 = and i32 %i.cw, 56
  br label %.lr.ph.i.i34.i.i.i.i.i.i

.lr.ph.i.i34.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i34.i.i.i.i.i.i, %.lr.ph.i.i34.i.i.i.i.i.i.preheader.new
  %niter35 = phi i32 [ 0, %.lr.ph.i.i34.i.i.i.i.i.i.preheader.new ], [ %niter35.next.7, %.lr.ph.i.i34.i.i.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
  tail call void @llvm.x86.sse2.pause() #53
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
  tail call void @llvm.x86.sse2.pause() #53
  %epil.iter31.next = add i32 %epil.iter31, 1     ; 2 uses
  %epil.iter31.cmp.not = icmp eq i32 %epil.iter31.next, %xtraiter30
  br i1 %epil.iter31.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i32.i.i.i.i.i.i, label %.lr.ph.i.i34.i.i.i.i.i.i.epil, !llvm.loop !42399

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i32.i.i.i.i.i.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i32.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i34.i.i.i.i.i.i.epil, %bb.ae, %bb.ad
  %i.cy = add i32 %.sroa.0.02.i31.i.i.i.i.i.i, 1
  %i.cz = load atomic i64, ptr %i.cr acquire, align 8
  %i.da = and i64 %i.cz, 1
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %.lr.ph.i30.i.i.i.i.i.i, label %"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17hdcd5234e14962d87E.exit.i.i.i.i.i.i"

"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17hdcd5234e14962d87E.exit.i.i.i.i.i.i": ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i32.i.i.i.i.i.i, %bb.ac
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42418)
  %i.dc = load i32, ptr %i.cq, align 8, !range !95, !alias.scope !42418, !noundef !34
  %i.dd = icmp eq i32 %i.dc, 3
  br i1 %i.dd, label %"_ZN4core3ptr43drop_in_place$LT$nickel..error..Warning$GT$17h07748e5d61f3aeb4E.exit.i.i.i.i3.i.i", label %bb.af

bb.af:                                            ; preds = %"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17hdcd5234e14962d87E.exit.i.i.i.i.i.i"
  %i.de = getelementptr inbounds nuw i8, ptr %i.cq, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42419)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42420)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42421)
  %i.df = load ptr, ptr %i.de, align 8, !alias.scope !42422, !noundef !34 ; 3 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %"_ZN4core3ptr43drop_in_place$LT$nickel..error..Warning$GT$17h07748e5d61f3aeb4E.exit.i.i.i.i3.i.i", label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dh = load i64, ptr %i.df, align 8, !noalias !42423, !noundef !34
  %i.di = add i64 %i.dh, -1                       ; 2 uses
  store i64 %i.di, ptr %i.df, align 8, !noalias !42423
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %bb.ah, label %"_ZN4core3ptr43drop_in_place$LT$nickel..error..Warning$GT$17h07748e5d61f3aeb4E.exit.i.i.i.i3.i.i"

bb.ah:                                            ; preds = %bb.ag
  tail call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17ha3d18f83ba1e1015E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.de)
  br label %"_ZN4core3ptr43drop_in_place$LT$nickel..error..Warning$GT$17h07748e5d61f3aeb4E.exit.i.i.i.i3.i.i"

"_ZN4core3ptr43drop_in_place$LT$nickel..error..Warning$GT$17h07748e5d61f3aeb4E.exit.i.i.i.i3.i.i": ; preds = %bb.ah, %bb.ag, %bb.af, %"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17hdcd5234e14962d87E.exit.i.i.i.i.i.i", %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$9wait_next17h97386e3a2881b5abE.exit.i.i.i.i.i.i"
  %.sroa.011.2.i.i.i.i.i.i = phi ptr [ %i.co, %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$9wait_next17h97386e3a2881b5abE.exit.i.i.i.i.i.i" ], [ %.sroa.011.148.i.i.i.i.i.i, %"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17hdcd5234e14962d87E.exit.i.i.i.i.i.i" ], [ %.sroa.011.148.i.i.i.i.i.i, %bb.af ], [ %.sroa.011.148.i.i.i.i.i.i, %bb.ag ], [ %.sroa.011.148.i.i.i.i.i.i, %bb.ah ] ; 2 uses
  %i.dk = add i64 %.sroa.05.049.i.i.i.i.i.i, 2    ; 3 uses
  %i.dl = lshr i64 %i.dk, 1                       ; 2 uses
  %.not20.i.i.i.i.i.i = icmp eq i64 %i.dl, %i.br
  br i1 %.not20.i.i.i.i.i.i, label %._crit_edge52.i.i.i.i.i.i, label %.lr.ph51.i.i.i.i.i.i

"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$20discard_all_messages17hf465f88e42609854E.exit.i.i.i.i.i": ; preds = %bb.y, %._crit_edge52.i.i.i.i.i.i
  %i.dm = and i64 %.sroa.05.0.lcssa.i.i.i.i.i.i, -2
  store atomic i64 %i.dm, ptr %.8.val release, align 8
  br label %"_ZN76_$LT$std..sync..mpmc..Receiver$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17h0577141b61497a87E.exit.i.i.i"

"_ZN76_$LT$std..sync..mpmc..Receiver$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17h0577141b61497a87E.exit.i.i.i": ; preds = %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$20discard_all_messages17hf465f88e42609854E.exit.i.i.i.i.i", %bb.s
  %i.dn = getelementptr inbounds nuw i8, ptr %.8.val, i64 400
  %i.do = atomicrmw xchg ptr %i.dn, i8 1 acq_rel, align 1
  %i.dp = icmp eq i8 %i.do, 0
  br i1 %i.dp, label %"_ZN4core3ptr76drop_in_place$LT$std..sync..mpmc..Receiver$LT$nickel..error..Warning$GT$$GT$17hfcbc0699a23a7ee4E.exit", label %bb.ai

bb.ai:                                            ; preds = %"_ZN76_$LT$std..sync..mpmc..Receiver$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17h0577141b61497a87E.exit.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  invoke fastcc void @"_ZN4core3ptr122drop_in_place$LT$std..sync..mpmc..counter..Counter$LT$std..sync..mpmc..list..Channel$LT$nickel..error..Warning$GT$$GT$$GT$17h248b8e65619800caE"(ptr noalias noundef nonnull align 128 dereferenceable(512) %.8.val)
          to label %"_ZN4core3ptr147drop_in_place$LT$alloc..boxed..Box$LT$std..sync..mpmc..counter..Counter$LT$std..sync..mpmc..list..Channel$LT$nickel..error..Warning$GT$$GT$$GT$$GT$17h865fcc7fca846546E.exit.i.i.i" unwind label %bb.aj

common.resume.i.i:                                ; preds = %bb.an, %bb.aj
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.dq, %bb.aj ], [ %i.dx, %bb.an ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.dq = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 512, i64 noundef 128) #53
  br label %common.resume.i.i

"_ZN4core3ptr147drop_in_place$LT$alloc..boxed..Box$LT$std..sync..mpmc..counter..Counter$LT$std..sync..mpmc..list..Channel$LT$nickel..error..Warning$GT$$GT$$GT$$GT$17h865fcc7fca846546E.exit.i.i.i": ; preds = %bb.ai
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 512, i64 noundef 128) #53
  br label %"_ZN4core3ptr76drop_in_place$LT$std..sync..mpmc..Receiver$LT$nickel..error..Warning$GT$$GT$17hfcbc0699a23a7ee4E.exit"

bb.ak:                                            ; preds = %bb.a
  %i.dr = getelementptr inbounds nuw i8, ptr %.8.val, i64 120
  %i.ds = atomicrmw sub ptr %i.dr, i64 1 acq_rel, align 8
  %i.dt = icmp eq i64 %i.ds, 1
  br i1 %i.dt, label %bb.al, label %"_ZN4core3ptr76drop_in_place$LT$std..sync..mpmc..Receiver$LT$nickel..error..Warning$GT$$GT$17hfcbc0699a23a7ee4E.exit"

bb.al:                                            ; preds = %bb.ak
  tail call fastcc void @"_ZN3std4sync4mpmc4zero16Channel$LT$T$GT$10disconnect17ha316c06be04ecd46E"(ptr noundef nonnull align 8 %.8.val)
  %i.du = getelementptr inbounds nuw i8, ptr %.8.val, i64 128
  %i.dv = atomicrmw xchg ptr %i.du, i8 1 acq_rel, align 1
  %i.dw = icmp eq i8 %i.dv, 0
  br i1 %i.dw, label %"_ZN4core3ptr76drop_in_place$LT$std..sync..mpmc..Receiver$LT$nickel..error..Warning$GT$$GT$17hfcbc0699a23a7ee4E.exit", label %bb.am

bb.am:                                            ; preds = %bb.al
  invoke fastcc void @"_ZN4core3ptr88drop_in_place$LT$std..sync..poison..mutex..Mutex$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hb101da4fccf2cb49E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(136) %.8.val)
          to label %"_ZN4core3ptr147drop_in_place$LT$alloc..boxed..Box$LT$std..sync..mpmc..counter..Counter$LT$std..sync..mpmc..zero..Channel$LT$nickel..error..Warning$GT$$GT$$GT$$GT$17hcf84705d0959d5c7E.exit.i.i.i" unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dx = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 136, i64 noundef 8) #53
  br label %common.resume.i.i

"_ZN4core3ptr147drop_in_place$LT$alloc..boxed..Box$LT$std..sync..mpmc..counter..Counter$LT$std..sync..mpmc..zero..Channel$LT$nickel..error..Warning$GT$$GT$$GT$$GT$17hcf84705d0959d5c7E.exit.i.i.i": ; preds = %bb.am
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 136, i64 noundef 8) #53
  br label %"_ZN4core3ptr76drop_in_place$LT$std..sync..mpmc..Receiver$LT$nickel..error..Warning$GT$$GT$17hfcbc0699a23a7ee4E.exit"

"_ZN4core3ptr76drop_in_place$LT$std..sync..mpmc..Receiver$LT$nickel..error..Warning$GT$$GT$17hfcbc0699a23a7ee4E.exit": ; preds = %bb.b, %"_ZN76_$LT$std..sync..mpmc..Receiver$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17h319bad2d002349ebE.exit.i.i.i", %bb.q, %bb.r, %"_ZN76_$LT$std..sync..mpmc..Receiver$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17h0577141b61497a87E.exit.i.i.i", %"_ZN4core3ptr147drop_in_place$LT$alloc..boxed..Box$LT$std..sync..mpmc..counter..Counter$LT$std..sync..mpmc..list..Channel$LT$nickel..error..Warning$GT$$GT$$GT$$GT$17h865fcc7fca846546E.exit.i.i.i", %bb.ak, %bb.al, %"_ZN4core3ptr147drop_in_place$LT$alloc..boxed..Box$LT$std..sync..mpmc..counter..Counter$LT$std..sync..mpmc..zero..Channel$LT$nickel..error..Warning$GT$$GT$$GT$$GT$17hcf84705d0959d5c7E.exit.i.i.i"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr77drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..typ..EnumRows$GT$$GT$17hd95a0f4d2044c7a3E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !34, !noundef !34 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i32, ptr %i.b, align 8, !range !50, !alias.scope !42437, !noundef !34 ; 2 uses
  %i.d = icmp ne i32 %i.c, 4
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp samesign ult i32 %i.c, 3
  br i1 %i.e, label %bb.b, label %"_ZN4core3ptr52drop_in_place$LT$nickel_lang_core..typ..EnumRows$GT$17hdbef4ab894391775E.exit"

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8, !alias.scope !42438, !align !41, !noundef !34 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %"_ZN4core3ptr114drop_in_place$LT$nickel_lang_parser..typ..EnumRowF$LT$alloc..boxed..Box$LT$nickel_lang_core..typ..Type$GT$$GT$$GT$17h885ce4607fabb139E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @"_ZN4core3ptr226drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typ..Type$GT$$C$nickel_lang_core..typ..RecordRows$C$nickel_lang_core..typ..EnumRows$C$nickel_lang_core..eval..value..NickelValue$GT$$GT$17hbdcea2f241fad709E"(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.f)
          to label %.noexc2 unwind label %.body3, !noalias !42439, !inline_history !42434

.body3:                                           ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 104, i64 noundef 8) #53, !noalias !42439, !inline_history !42435
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  invoke fastcc void @"_ZN4core3ptr77drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..typ..EnumRows$GT$$GT$17hd95a0f4d2044c7a3E"(ptr noalias noundef align 8 dereferenceable(8) %i.i) #61
          to label %bb.f unwind label %bb.d, !inline_history !42436

.noexc2:                                          ; preds = %bb.c
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 104, i64 noundef 8) #53, !noalias !42439, !inline_history !42435
  br label %"_ZN4core3ptr114drop_in_place$LT$nickel_lang_parser..typ..EnumRowF$LT$alloc..boxed..Box$LT$nickel_lang_core..typ..Type$GT$$GT$$GT$17h885ce4607fabb139E.exit"

"_ZN4core3ptr114drop_in_place$LT$nickel_lang_parser..typ..EnumRowF$LT$alloc..boxed..Box$LT$nickel_lang_core..typ..Type$GT$$GT$$GT$17h885ce4607fabb139E.exit": ; preds = %.noexc2, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  invoke fastcc void @"_ZN4core3ptr77drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..typ..EnumRows$GT$$GT$17hd95a0f4d2044c7a3E"(ptr noalias noundef align 8 dereferenceable(8) %i.j)
          to label %"_ZN4core3ptr52drop_in_place$LT$nickel_lang_core..typ..EnumRows$GT$17hdbef4ab894391775E.exit" unwind label %bb.e, !inline_history !42440

bb.d:                                             ; preds = %.body3
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !inline_history !42436
  unreachable

bb.e:                                             ; preds = %"_ZN4core3ptr114drop_in_place$LT$nickel_lang_parser..typ..EnumRowF$LT$alloc..boxed..Box$LT$nickel_lang_core..typ..Type$GT$$GT$$GT$17h885ce4607fabb139E.exit"
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

"_ZN4core3ptr52drop_in_place$LT$nickel_lang_core..typ..EnumRows$GT$17hdbef4ab894391775E.exit": ; preds = %bb.a, %"_ZN4core3ptr114drop_in_place$LT$nickel_lang_parser..typ..EnumRowF$LT$alloc..boxed..Box$LT$nickel_lang_core..typ..Type$GT$$GT$$GT$17h885ce4607fabb139E.exit"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 40, i64 noundef 8) #53
  ret void

bb.f:                                             ; preds = %bb.e, %.body3
  %eh.lpad-body = phi { ptr, i32 } [ %i.l, %bb.e ], [ %i.h, %.body3 ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 40, i64 noundef 8) #53
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr77drop_in_place$LT$std..io..default_write_fmt..Adapter$LT$std..fs..File$GT$$GT$17h1768e70188e73c9aE"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
end_hunk_7
begin_hunk_8_@_ZN6nickel4main17h45e4db5cdd260b38E:bb.a

bb.bgz:                                           ; preds = %.noexc1.i655, %_ZN12clap_builder7builder7command7Command12set_bin_name17hdacf5f014ddedb39E.exit.i.i, %bb.bhb, %.noexc658
  %i.esz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$clap_builder..builder..command..Command$GT$17haf02079346ba3f3cE"(ptr noalias noundef align 8 dereferenceable(776) %i.cl) #61
          to label %.body42 unwind label %bb.bhe

bb.bha:                                           ; preds = %.noexc658
  store ptr %i.esy, ptr %i.ck, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !55170)
  call void @llvm.experimental.noalias.scope.decl(metadata !55171)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !55172
  %i.eta = call noundef dereferenceable_or_null(6) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef range(i64 6, 28) 6, i64 noundef range(i64 1, 9) 1) #53, !noalias !55172 ; 3 uses
  %i.etb = icmp eq ptr %i.eta, null
  br i1 %i.etb, label %bb.bhb, label %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h1e571c84f3725fd2E.exit.i.i.i"

bb.bhb:                                           ; preds = %bb.bha
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 range(i64 6, 28) 6, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1401) #59
          to label %.noexc.i657 unwind label %bb.bgz

.noexc.i657:                                      ; preds = %bb.bhb
  unreachable

"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h1e571c84f3725fd2E.exit.i.i.i": ; preds = %bb.bha
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.eta, ptr noundef nonnull readonly align 1 dereferenceable(6) @533, i64 range(i64 6, 28) 6, i1 false), !noalias !55173
  %i.etc = getelementptr inbounds nuw i8, ptr %i.cl, i64 488 ; 2 uses
  %.val.i.i.i653 = load i64, ptr %i.etc, align 8, !range !57, !alias.scope !55174, !noundef !34 ; 2 uses
  %i.etd = getelementptr inbounds nuw i8, ptr %i.cl, i64 496 ; 2 uses
  %switch.i.i.i654 = icmp sgt i64 %.val.i.i.i653, 0
  br i1 %switch.i.i.i654, label %bb.bhc, label %_ZN12clap_builder7builder7command7Command12set_bin_name17hdacf5f014ddedb39E.exit.i.i

bb.bhc:                                           ; preds = %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h1e571c84f3725fd2E.exit.i.i.i"
  %.val1.i.i.i656 = load ptr, ptr %i.etd, align 8, !alias.scope !55174, !nonnull !34, !noundef !34
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i656, i64 noundef %.val.i.i.i653, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !55175
  br label %_ZN12clap_builder7builder7command7Command12set_bin_name17hdacf5f014ddedb39E.exit.i.i

_ZN12clap_builder7builder7command7Command12set_bin_name17hdacf5f014ddedb39E.exit.i.i: ; preds = %bb.bhc, %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h1e571c84f3725fd2E.exit.i.i.i"
  store i64 6, ptr %i.etc, align 8, !alias.scope !55174
  store ptr %i.eta, ptr %i.etd, align 8, !alias.scope !55174
  %.sroa.6.0..sroa_idx6.i.i.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 504
  store i64 6, ptr %.sroa.6.0..sroa_idx6.i.i.i, align 8, !alias.scope !55174
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj), !noalias !55170
  store i8 %i.azz, ptr %i.cj, align 1, !noalias !55176
  invoke void @_ZN12clap_builder7builder7command7Command5build17h630411c903cadea3E(ptr noalias noundef nonnull align 8 dereferenceable(776) %i.cl)
          to label %.noexc1.i655 unwind label %bb.bgz

.noexc1.i655:                                     ; preds = %_ZN12clap_builder7builder7command7Command12set_bin_name17hdacf5f014ddedb39E.exit.i.i
  invoke void @"_ZN101_$LT$clap_complete..aot..shells..shell..Shell$u20$as$u20$clap_complete..aot..generator..Generator$GT$8generate17he0cf7d2c40938c35E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.cj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(776) %i.cl, ptr noundef nonnull align 1 %i.ck, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @50)
          to label %bb.bhd unwind label %bb.bgz

bb.bhd:                                           ; preds = %.noexc1.i655
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !noalias !55170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$clap_builder..builder..command..Command$GT$17haf02079346ba3f3cE"(ptr noalias noundef align 8 dereferenceable(776) %i.cl)
          to label %_ZN6nickel11completions21GenCompletionsCommand3run17h0df8513918105cacE.exit unwind label %.loopexit.split-lp1142

bb.bhe:                                           ; preds = %bb.bgz
  %i.ete = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

_ZN6nickel11completions21GenCompletionsCommand3run17h0df8513918105cacE.exit: ; preds = %bb.bhd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  br label %bb.bhf

.body42:                                          ; preds = %.loopexit1141, %.loopexit.split-lp1142, %bb.bjh, %bb.pn, %.body.i116, %bb.aew, %bb.ant, %bb.ans, %bb.ans, %bb.anq, %bb.azl, %bb.bgz, %.loopexit.split-lp.i, %.body.i374, %"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17h83d0618a930f24aeE.exit.i.i", %bb.afl, %.body.i167, %bb.se, %.body814
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body814 ], [ %eh.lpad-body.i, %bb.pn ], [ %eh.lpad-body.i47, %bb.se ], [ %eh.lpad-body.i117, %.body.i116 ], [ %eh.lpad-body.i168, %.body.i167 ], [ %eh.lpad-body.i240, %bb.aew ], [ %.pn356.i3.i, %"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17h83d0618a930f24aeE.exit.i.i" ], [ %.pn356.i3.i, %bb.afl ], [ %lpad.thr_comm.i, %bb.ans ], [ %i.dhz, %bb.anq ], [ %lpad.thr_comm.i, %bb.ant ], [ %lpad.thr_comm.i, %bb.ans ], [ %eh.lpad-body.i375, %.body.i374 ], [ %eh.lpad-body.i467, %bb.azl ], [ %eh.lpad-body.i570, %.loopexit.split-lp.i ], [ %i.esz, %bb.bgz ], [ %.pn.i679, %bb.bjh ], [ %lpad.loopexit1143, %.loopexit1141 ], [ %lpad.loopexit.split-lp1144, %.loopexit.split-lp1142 ]
  %.sroa.012.2 = phi i1 [ %.sroa.012.4, %.body814 ], [ true, %bb.pn ], [ true, %bb.se ], [ true, %.body.i116 ], [ true, %.body.i167 ], [ true, %bb.aew ], [ true, %"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17h83d0618a930f24aeE.exit.i.i" ], [ true, %bb.afl ], [ true, %bb.ans ], [ true, %bb.anq ], [ true, %bb.ant ], [ true, %bb.ans ], [ true, %.body.i374 ], [ true, %bb.azl ], [ false, %.loopexit.split-lp.i ], [ true, %bb.bgz ], [ %.sroa.012.4, %bb.bjh ], [ %.sroa.012.4, %.loopexit1141 ], [ %.sroa.012.3.ph, %.loopexit.split-lp1142 ]
  %.sroa.011.2 = phi i1 [ %.sroa.011.4, %.body814 ], [ true, %bb.pn ], [ true, %bb.se ], [ true, %.body.i116 ], [ true, %.body.i167 ], [ true, %bb.aew ], [ true, %"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17h83d0618a930f24aeE.exit.i.i" ], [ true, %bb.afl ], [ true, %bb.ans ], [ true, %bb.anq ], [ true, %bb.ant ], [ true, %bb.ans ], [ true, %.body.i374 ], [ false, %bb.azl ], [ true, %.loopexit.split-lp.i ], [ true, %bb.bgz ], [ %.sroa.011.4, %bb.bjh ], [ %.sroa.011.4, %.loopexit1141 ], [ %.sroa.011.3.ph, %.loopexit.split-lp1142 ]
  %.sroa.010.2 = phi i1 [ %.sroa.010.4, %.body814 ], [ true, %bb.pn ], [ true, %bb.se ], [ true, %.body.i116 ], [ true, %.body.i167 ], [ true, %bb.aew ], [ true, %"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17h83d0618a930f24aeE.exit.i.i" ], [ true, %bb.afl ], [ true, %bb.ans ], [ true, %bb.anq ], [ true, %bb.ant ], [ true, %bb.ans ], [ false, %.body.i374 ], [ true, %bb.azl ], [ true, %.loopexit.split-lp.i ], [ true, %bb.bgz ], [ %.sroa.010.4, %bb.bjh ], [ %.sroa.010.4, %.loopexit1141 ], [ %.sroa.010.3.ph, %.loopexit.split-lp1142 ]
  %.sroa.09.2 = phi i1 [ %.sroa.09.4, %.body814 ], [ true, %bb.pn ], [ true, %bb.se ], [ true, %.body.i116 ], [ true, %.body.i167 ], [ true, %bb.aew ], [ true, %"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17h83d0618a930f24aeE.exit.i.i" ], [ true, %bb.afl ], [ false, %bb.ans ], [ false, %bb.anq ], [ false, %bb.ant ], [ false, %bb.ans ], [ true, %.body.i374 ], [ true, %bb.azl ], [ true, %.loopexit.split-lp.i ], [ true, %bb.bgz ], [ %.sroa.09.4, %bb.bjh ], [ %.sroa.09.4, %.loopexit1141 ], [ %.sroa.09.3.ph, %.loopexit.split-lp1142 ]
  %.sroa.08.2 = phi i1 [ %.sroa.08.4, %.body814 ], [ true, %bb.pn ], [ true, %bb.se ], [ true, %.body.i116 ], [ true, %.body.i167 ], [ true, %bb.aew ], [ false, %"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17h83d0618a930f24aeE.exit.i.i" ], [ false, %bb.afl ], [ true, %bb.ans ], [ true, %bb.anq ], [ true, %bb.ant ], [ true, %bb.ans ], [ true, %.body.i374 ], [ true, %bb.azl ], [ true, %.loopexit.split-lp.i ], [ true, %bb.bgz ], [ %.sroa.08.4, %bb.bjh ], [ %.sroa.08.4, %.loopexit1141 ], [ %.sroa.08.3.ph, %.loopexit.split-lp1142 ]
  %.sroa.07.2 = phi i1 [ %.sroa.07.4, %.body814 ], [ true, %bb.pn ], [ true, %bb.se ], [ true, %.body.i116 ], [ true, %.body.i167 ], [ false, %bb.aew ], [ true, %"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17h83d0618a930f24aeE.exit.i.i" ], [ true, %bb.afl ], [ true, %bb.ans ], [ true, %bb.anq ], [ true, %bb.ant ], [ true, %bb.ans ], [ true, %.body.i374 ], [ true, %bb.azl ], [ true, %.loopexit.split-lp.i ], [ true, %bb.bgz ], [ %.sroa.07.4, %bb.bjh ], [ %.sroa.07.4, %.loopexit1141 ], [ %.sroa.07.3.ph, %.loopexit.split-lp1142 ]
  %.sroa.06.2 = phi i1 [ %.sroa.06.4, %.body814 ], [ true, %bb.pn ], [ true, %bb.se ], [ true, %.body.i116 ], [ false, %.body.i167 ], [ true, %bb.aew ], [ true, %"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17h83d0618a930f24aeE.exit.i.i" ], [ true, %bb.afl ], [ true, %bb.ans ], [ true, %bb.anq ], [ true, %bb.ant ], [ true, %bb.ans ], [ true, %.body.i374 ], [ true, %bb.azl ], [ true, %.loopexit.split-lp.i ], [ true, %bb.bgz ], [ %.sroa.06.4, %bb.bjh ], [ %.sroa.06.4, %.loopexit1141 ], [ %.sroa.06.3.ph, %.loopexit.split-lp1142 ]
  %.sroa.05.2 = phi i1 [ %.sroa.05.4, %.body814 ], [ true, %bb.pn ], [ true, %bb.se ], [ false, %.body.i116 ], [ true, %.body.i167 ], [ true, %bb.aew ], [ true, %"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17h83d0618a930f24aeE.exit.i.i" ], [ true, %bb.afl ], [ true, %bb.ans ], [ true, %bb.anq ], [ true, %bb.ant ], [ true, %bb.ans ], [ true, %.body.i374 ], [ true, %bb.azl ], [ true, %.loopexit.split-lp.i ], [ true, %bb.bgz ], [ %.sroa.05.4, %bb.bjh ], [ %.sroa.05.4, %.loopexit1141 ], [ %.sroa.05.3.ph, %.loopexit.split-lp1142 ]
  %.sroa.04.2 = phi i1 [ %.sroa.04.4, %.body814 ], [ true, %bb.pn ], [ false, %bb.se ], [ true, %.body.i116 ], [ true, %.body.i167 ], [ true, %bb.aew ], [ true, %"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17h83d0618a930f24aeE.exit.i.i" ], [ true, %bb.afl ], [ true, %bb.ans ], [ true, %bb.anq ], [ true, %bb.ant ], [ true, %bb.ans ], [ true, %.body.i374 ], [ true, %bb.azl ], [ true, %.loopexit.split-lp.i ], [ true, %bb.bgz ], [ %.sroa.04.4, %bb.bjh ], [ %.sroa.04.4, %.loopexit1141 ], [ %.sroa.04.3.ph, %.loopexit.split-lp1142 ]
  %.sroa.03.2 = phi i1 [ %.sroa.03.4, %.body814 ], [ false, %bb.pn ], [ true, %bb.se ], [ true, %.body.i116 ], [ true, %.body.i167 ], [ true, %bb.aew ], [ true, %"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17h83d0618a930f24aeE.exit.i.i" ], [ true, %bb.afl ], [ true, %bb.ans ], [ true, %bb.anq ], [ true, %bb.ant ], [ true, %bb.ans ], [ true, %.body.i374 ], [ true, %bb.azl ], [ true, %.loopexit.split-lp.i ], [ true, %bb.bgz ], [ %.sroa.03.4, %bb.bjh ], [ %.sroa.03.4, %.loopexit1141 ], [ %.sroa.03.3.ph, %.loopexit.split-lp1142 ]
  invoke fastcc void @"_ZN4core3ptr50drop_in_place$LT$nickel..global..GlobalContext$GT$17ha4627b26c1a2078eE"(ptr noalias noundef align 8 dereferenceable(72) %i.xn) #61
          to label %.body unwind label %bb.boe

.loopexit1141:                                    ; preds = %bb.bin
  %lpad.loopexit1143 = landingpad { ptr, i32 }
          cleanup
  br label %.body42

.loopexit.split-lp1142:                           ; preds = %"_ZN3std4sync4mpmc17Receiver$LT$T$GT$8try_recv17ha13e1fee9ae91deeE.exit.i.thread", %_ZN6nickel7convert14ConvertCommand7convert17he9530af67b36bde1E.exit.thread12.i, %.noexc.i.i355, %switch.lookup, %.noexc.i354, %bb.bgy, %bb.bhd, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i.i.i.i"
  %.sroa.012.3.ph = phi i1 [ true, %bb.bgy ], [ true, %.noexc.i354 ], [ true, %switch.lookup ], [ true, %.noexc.i.i355 ], [ true, %_ZN6nickel7convert14ConvertCommand7convert17he9530af67b36bde1E.exit.thread12.i ], [ true, %bb.bhd ], [ %.sroa.012.4, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i.i.i.i" ], [ %.sroa.012.4, %"_ZN3std4sync4mpmc17Receiver$LT$T$GT$8try_recv17ha13e1fee9ae91deeE.exit.i.thread" ]
  %.sroa.011.3.ph = phi i1 [ true, %bb.bgy ], [ true, %.noexc.i354 ], [ true, %switch.lookup ], [ true, %.noexc.i.i355 ], [ true, %_ZN6nickel7convert14ConvertCommand7convert17he9530af67b36bde1E.exit.thread12.i ], [ true, %bb.bhd ], [ %.sroa.011.4, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i.i.i.i" ], [ %.sroa.011.4, %"_ZN3std4sync4mpmc17Receiver$LT$T$GT$8try_recv17ha13e1fee9ae91deeE.exit.i.thread" ]
  %.sroa.010.3.ph = phi i1 [ true, %bb.bgy ], [ true, %.noexc.i354 ], [ true, %switch.lookup ], [ true, %.noexc.i.i355 ], [ true, %_ZN6nickel7convert14ConvertCommand7convert17he9530af67b36bde1E.exit.thread12.i ], [ true, %bb.bhd ], [ %.sroa.010.4, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i.i.i.i" ], [ %.sroa.010.4, %"_ZN3std4sync4mpmc17Receiver$LT$T$GT$8try_recv17ha13e1fee9ae91deeE.exit.i.thread" ]
  %.sroa.09.3.ph = phi i1 [ true, %bb.bgy ], [ false, %.noexc.i354 ], [ false, %switch.lookup ], [ false, %.noexc.i.i355 ], [ true, %_ZN6nickel7convert14ConvertCommand7convert17he9530af67b36bde1E.exit.thread12.i ], [ true, %bb.bhd ], [ %.sroa.09.4, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i.i.i.i" ], [ %.sroa.09.4, %"_ZN3std4sync4mpmc17Receiver$LT$T$GT$8try_recv17ha13e1fee9ae91deeE.exit.i.thread" ]
  %.sroa.08.3.ph = phi i1 [ true, %bb.bgy ], [ true, %.noexc.i354 ], [ true, %switch.lookup ], [ true, %.noexc.i.i355 ], [ false, %_ZN6nickel7convert14ConvertCommand7convert17he9530af67b36bde1E.exit.thread12.i ], [ true, %bb.bhd ], [ %.sroa.08.4, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i.i.i.i" ], [ %.sroa.08.4, %"_ZN3std4sync4mpmc17Receiver$LT$T$GT$8try_recv17ha13e1fee9ae91deeE.exit.i.thread" ]
  %.sroa.07.3.ph = phi i1 [ true, %bb.bgy ], [ true, %.noexc.i354 ], [ true, %switch.lookup ], [ true, %.noexc.i.i355 ], [ true, %_ZN6nickel7convert14ConvertCommand7convert17he9530af67b36bde1E.exit.thread12.i ], [ true, %bb.bhd ], [ %.sroa.07.4, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i.i.i.i" ], [ %.sroa.07.4, %"_ZN3std4sync4mpmc17Receiver$LT$T$GT$8try_recv17ha13e1fee9ae91deeE.exit.i.thread" ]
  %.sroa.06.3.ph = phi i1 [ true, %bb.bgy ], [ true, %.noexc.i354 ], [ true, %switch.lookup ], [ true, %.noexc.i.i355 ], [ true, %_ZN6nickel7convert14ConvertCommand7convert17he9530af67b36bde1E.exit.thread12.i ], [ true, %bb.bhd ], [ %.sroa.06.4, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i.i.i.i" ], [ %.sroa.06.4, %"_ZN3std4sync4mpmc17Receiver$LT$T$GT$8try_recv17ha13e1fee9ae91deeE.exit.i.thread" ]
  %.sroa.05.3.ph = phi i1 [ true, %bb.bgy ], [ true, %.noexc.i354 ], [ true, %switch.lookup ], [ true, %.noexc.i.i355 ], [ true, %_ZN6nickel7convert14ConvertCommand7convert17he9530af67b36bde1E.exit.thread12.i ], [ true, %bb.bhd ], [ %.sroa.05.4, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i.i.i.i" ], [ %.sroa.05.4, %"_ZN3std4sync4mpmc17Receiver$LT$T$GT$8try_recv17ha13e1fee9ae91deeE.exit.i.thread" ]
  %.sroa.04.3.ph = phi i1 [ true, %bb.bgy ], [ true, %.noexc.i354 ], [ true, %switch.lookup ], [ true, %.noexc.i.i355 ], [ true, %_ZN6nickel7convert14ConvertCommand7convert17he9530af67b36bde1E.exit.thread12.i ], [ true, %bb.bhd ], [ %.sroa.04.4, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i.i.i.i" ], [ %.sroa.04.4, %"_ZN3std4sync4mpmc17Receiver$LT$T$GT$8try_recv17ha13e1fee9ae91deeE.exit.i.thread" ]
  %.sroa.03.3.ph = phi i1 [ true, %bb.bgy ], [ true, %.noexc.i354 ], [ true, %switch.lookup ], [ true, %.noexc.i.i355 ], [ true, %_ZN6nickel7convert14ConvertCommand7convert17he9530af67b36bde1E.exit.thread12.i ], [ true, %bb.bhd ], [ %.sroa.03.4, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i.i.i.i" ], [ %.sroa.03.4, %"_ZN3std4sync4mpmc17Receiver$LT$T$GT$8try_recv17ha13e1fee9ae91deeE.exit.i.thread" ]
  %lpad.loopexit.split-lp1144 = landingpad { ptr, i32 }
          cleanup
  br label %.body42

bb.bhf:                                           ; preds = %_ZN6nickel11completions21GenCompletionsCommand3run17h0df8513918105cacE.exit, %_ZN6nickel6format13FormatCommand3run17h75e4733bcedee376E.exit, %_ZN6nickel7doctest11TestCommand3run17ha8dcd3ab0a4a7ecdE.exit, %_ZN6nickel3doc10DocCommand3run17h652386ce2e848f1eE.exit, %_ZN6nickel4repl11ReplCommand3run17h64832ccac2444588E.exit, %_ZN6nickel7convert14ConvertCommand3run17hda899de3b377d980E.exit, %_ZN6nickel9typecheck16TypecheckCommand3run17hc1bb18b7eff703e1E.exit, %_ZN6nickel5query12QueryCommand3run17hc2b953ee951c48f9E.exit, %_ZN6nickel6export13ExportCommand3run17h44b6a48c90192172E.exit, %_ZN6nickel10pprint_ast16PprintAstCommand3run17h261caa9019dc270eE.exit, %_ZN6nickel4eval11EvalCommand3run17h8512486e0e143bb2E.exit
  %.sroa.012.4 = phi i1 [ true, %_ZN6nickel4eval11EvalCommand3run17h8512486e0e143bb2E.exit ], [ true, %_ZN6nickel10pprint_ast16PprintAstCommand3run17h261caa9019dc270eE.exit ], [ true, %_ZN6nickel6export13ExportCommand3run17h44b6a48c90192172E.exit ], [ true, %_ZN6nickel5query12QueryCommand3run17hc2b953ee951c48f9E.exit ], [ true, %_ZN6nickel9typecheck16TypecheckCommand3run17hc1bb18b7eff703e1E.exit ], [ true, %_ZN6nickel7convert14ConvertCommand3run17hda899de3b377d980E.exit ], [ true, %_ZN6nickel4repl11ReplCommand3run17h64832ccac2444588E.exit ], [ true, %_ZN6nickel3doc10DocCommand3run17h652386ce2e848f1eE.exit ], [ true, %_ZN6nickel7doctest11TestCommand3run17ha8dcd3ab0a4a7ecdE.exit ], [ false, %_ZN6nickel6format13FormatCommand3run17h75e4733bcedee376E.exit ], [ true, %_ZN6nickel11completions21GenCompletionsCommand3run17h0df8513918105cacE.exit ] ; 6 uses
  %.sroa.011.4 = phi i1 [ true, %_ZN6nickel4eval11EvalCommand3run17h8512486e0e143bb2E.exit ], [ true, %_ZN6nickel10pprint_ast16PprintAstCommand3run17h261caa9019dc270eE.exit ], [ true, %_ZN6nickel6export13ExportCommand3run17h44b6a48c90192172E.exit ], [ true, %_ZN6nickel5query12QueryCommand3run17hc2b953ee951c48f9E.exit ], [ true, %_ZN6nickel9typecheck16TypecheckCommand3run17hc1bb18b7eff703e1E.exit ], [ true, %_ZN6nickel7convert14ConvertCommand3run17hda899de3b377d980E.exit ], [ true, %_ZN6nickel4repl11ReplCommand3run17h64832ccac2444588E.exit ], [ true, %_ZN6nickel3doc10DocCommand3run17h652386ce2e848f1eE.exit ], [ false, %_ZN6nickel7doctest11TestCommand3run17ha8dcd3ab0a4a7ecdE.exit ], [ true, %_ZN6nickel6format13FormatCommand3run17h75e4733bcedee376E.exit ], [ true, %_ZN6nickel11completions21GenCompletionsCommand3run17h0df8513918105cacE.exit ] ; 6 uses
  %.sroa.010.4 = phi i1 [ true, %_ZN6nickel4eval11EvalCommand3run17h8512486e0e143bb2E.exit ], [ true, %_ZN6nickel10pprint_ast16PprintAstCommand3run17h261caa9019dc270eE.exit ], [ true, %_ZN6nickel6export13ExportCommand3run17h44b6a48c90192172E.exit ], [ true, %_ZN6nickel5query12QueryCommand3run17hc2b953ee951c48f9E.exit ], [ true, %_ZN6nickel9typecheck16TypecheckCommand3run17hc1bb18b7eff703e1E.exit ], [ true, %_ZN6nickel7convert14ConvertCommand3run17hda899de3b377d980E.exit ], [ true, %_ZN6nickel4repl11ReplCommand3run17h64832ccac2444588E.exit ], [ false, %_ZN6nickel3doc10DocCommand3run17h652386ce2e848f1eE.exit ], [ true, %_ZN6nickel7doctest11TestCommand3run17ha8dcd3ab0a4a7ecdE.exit ], [ true, %_ZN6nickel6format13FormatCommand3run17h75e4733bcedee376E.exit ], [ true, %_ZN6nickel11completions21GenCompletionsCommand3run17h0df8513918105cacE.exit ] ; 6 uses
  %.sroa.09.4 = phi i1 [ true, %_ZN6nickel4eval11EvalCommand3run17h8512486e0e143bb2E.exit ], [ true, %_ZN6nickel10pprint_ast16PprintAstCommand3run17h261caa9019dc270eE.exit ], [ true, %_ZN6nickel6export13ExportCommand3run17h44b6a48c90192172E.exit ], [ true, %_ZN6nickel5query12QueryCommand3run17hc2b953ee951c48f9E.exit ], [ true, %_ZN6nickel9typecheck16TypecheckCommand3run17hc1bb18b7eff703e1E.exit ], [ true, %_ZN6nickel7convert14ConvertCommand3run17hda899de3b377d980E.exit ], [ false, %_ZN6nickel4repl11ReplCommand3run17h64832ccac2444588E.exit ], [ true, %_ZN6nickel3doc10DocCommand3run17h652386ce2e848f1eE.exit ], [ true, %_ZN6nickel7doctest11TestCommand3run17ha8dcd3ab0a4a7ecdE.exit ], [ true, %_ZN6nickel6format13FormatCommand3run17h75e4733bcedee376E.exit ], [ true, %_ZN6nickel11completions21GenCompletionsCommand3run17h0df8513918105cacE.exit ] ; 6 uses
  %.sroa.08.4 = phi i1 [ true, %_ZN6nickel4eval11EvalCommand3run17h8512486e0e143bb2E.exit ], [ true, %_ZN6nickel10pprint_ast16PprintAstCommand3run17h261caa9019dc270eE.exit ], [ true, %_ZN6nickel6export13ExportCommand3run17h44b6a48c90192172E.exit ], [ true, %_ZN6nickel5query12QueryCommand3run17hc2b953ee951c48f9E.exit ], [ true, %_ZN6nickel9typecheck16TypecheckCommand3run17hc1bb18b7eff703e1E.exit ], [ false, %_ZN6nickel7convert14ConvertCommand3run17hda899de3b377d980E.exit ], [ true, %_ZN6nickel4repl11ReplCommand3run17h64832ccac2444588E.exit ], [ true, %_ZN6nickel3doc10DocCommand3run17h652386ce2e848f1eE.exit ], [ true, %_ZN6nickel7doctest11TestCommand3run17ha8dcd3ab0a4a7ecdE.exit ], [ true, %_ZN6nickel6format13FormatCommand3run17h75e4733bcedee376E.exit ], [ true, %_ZN6nickel11completions21GenCompletionsCommand3run17h0df8513918105cacE.exit ] ; 6 uses
  %.sroa.07.4 = phi i1 [ true, %_ZN6nickel4eval11EvalCommand3run17h8512486e0e143bb2E.exit ], [ true, %_ZN6nickel10pprint_ast16PprintAstCommand3run17h261caa9019dc270eE.exit ], [ true, %_ZN6nickel6export13ExportCommand3run17h44b6a48c90192172E.exit ], [ true, %_ZN6nickel5query12QueryCommand3run17hc2b953ee951c48f9E.exit ], [ false, %_ZN6nickel9typecheck16TypecheckCommand3run17hc1bb18b7eff703e1E.exit ], [ true, %_ZN6nickel7convert14ConvertCommand3run17hda899de3b377d980E.exit ], [ true, %_ZN6nickel4repl11ReplCommand3run17h64832ccac2444588E.exit ], [ true, %_ZN6nickel3doc10DocCommand3run17h652386ce2e848f1eE.exit ], [ true, %_ZN6nickel7doctest11TestCommand3run17ha8dcd3ab0a4a7ecdE.exit ], [ true, %_ZN6nickel6format13FormatCommand3run17h75e4733bcedee376E.exit ], [ true, %_ZN6nickel11completions21GenCompletionsCommand3run17h0df8513918105cacE.exit ] ; 6 uses
  %.sroa.06.4 = phi i1 [ true, %_ZN6nickel4eval11EvalCommand3run17h8512486e0e143bb2E.exit ], [ true, %_ZN6nickel10pprint_ast16PprintAstCommand3run17h261caa9019dc270eE.exit ], [ true, %_ZN6nickel6export13ExportCommand3run17h44b6a48c90192172E.exit ], [ false, %_ZN6nickel5query12QueryCommand3run17hc2b953ee951c48f9E.exit ], [ true, %_ZN6nickel9typecheck16TypecheckCommand3run17hc1bb18b7eff703e1E.exit ], [ true, %_ZN6nickel7convert14ConvertCommand3run17hda899de3b377d980E.exit ], [ true, %_ZN6nickel4repl11ReplCommand3run17h64832ccac2444588E.exit ], [ true, %_ZN6nickel3doc10DocCommand3run17h652386ce2e848f1eE.exit ], [ true, %_ZN6nickel7doctest11TestCommand3run17ha8dcd3ab0a4a7ecdE.exit ], [ true, %_ZN6nickel6format13FormatCommand3run17h75e4733bcedee376E.exit ], [ true, %_ZN6nickel11completions21GenCompletionsCommand3run17h0df8513918105cacE.exit ] ; 6 uses
  %.sroa.05.4 = phi i1 [ true, %_ZN6nickel4eval11EvalCommand3run17h8512486e0e143bb2E.exit ], [ true, %_ZN6nickel10pprint_ast16PprintAstCommand3run17h261caa9019dc270eE.exit ], [ false, %_ZN6nickel6export13ExportCommand3run17h44b6a48c90192172E.exit ], [ true, %_ZN6nickel5query12QueryCommand3run17hc2b953ee951c48f9E.exit ], [ true, %_ZN6nickel9typecheck16TypecheckCommand3run17hc1bb18b7eff703e1E.exit ], [ true, %_ZN6nickel7convert14ConvertCommand3run17hda899de3b377d980E.exit ], [ true, %_ZN6nickel4repl11ReplCommand3run17h64832ccac2444588E.exit ], [ true, %_ZN6nickel3doc10DocCommand3run17h652386ce2e848f1eE.exit ], [ true, %_ZN6nickel7doctest11TestCommand3run17ha8dcd3ab0a4a7ecdE.exit ], [ true, %_ZN6nickel6format13FormatCommand3run17h75e4733bcedee376E.exit ], [ true, %_ZN6nickel11completions21GenCompletionsCommand3run17h0df8513918105cacE.exit ] ; 6 uses
  %.sroa.04.4 = phi i1 [ true, %_ZN6nickel4eval11EvalCommand3run17h8512486e0e143bb2E.exit ], [ false, %_ZN6nickel10pprint_ast16PprintAstCommand3run17h261caa9019dc270eE.exit ], [ true, %_ZN6nickel6export13ExportCommand3run17h44b6a48c90192172E.exit ], [ true, %_ZN6nickel5query12QueryCommand3run17hc2b953ee951c48f9E.exit ], [ true, %_ZN6nickel9typecheck16TypecheckCommand3run17hc1bb18b7eff703e1E.exit ], [ true, %_ZN6nickel7convert14ConvertCommand3run17hda899de3b377d980E.exit ], [ true, %_ZN6nickel4repl11ReplCommand3run17h64832ccac2444588E.exit ], [ true, %_ZN6nickel3doc10DocCommand3run17h652386ce2e848f1eE.exit ], [ true, %_ZN6nickel7doctest11TestCommand3run17ha8dcd3ab0a4a7ecdE.exit ], [ true, %_ZN6nickel6format13FormatCommand3run17h75e4733bcedee376E.exit ], [ true, %_ZN6nickel11completions21GenCompletionsCommand3run17h0df8513918105cacE.exit ] ; 6 uses
  %.sroa.03.4 = phi i1 [ false, %_ZN6nickel4eval11EvalCommand3run17h8512486e0e143bb2E.exit ], [ true, %_ZN6nickel10pprint_ast16PprintAstCommand3run17h261caa9019dc270eE.exit ], [ true, %_ZN6nickel6export13ExportCommand3run17h44b6a48c90192172E.exit ], [ true, %_ZN6nickel5query12QueryCommand3run17hc2b953ee951c48f9E.exit ], [ true, %_ZN6nickel9typecheck16TypecheckCommand3run17hc1bb18b7eff703e1E.exit ], [ true, %_ZN6nickel7convert14ConvertCommand3run17hda899de3b377d980E.exit ], [ true, %_ZN6nickel4repl11ReplCommand3run17h64832ccac2444588E.exit ], [ true, %_ZN6nickel3doc10DocCommand3run17h652386ce2e848f1eE.exit ], [ true, %_ZN6nickel7doctest11TestCommand3run17ha8dcd3ab0a4a7ecdE.exit ], [ true, %_ZN6nickel6format13FormatCommand3run17h75e4733bcedee376E.exit ], [ true, %_ZN6nickel11completions21GenCompletionsCommand3run17h0df8513918105cacE.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.xe)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci), !noalias !55177
  %i.etf = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.etg = getelementptr inbounds nuw i8, ptr %i.etf, i64 16 ; 2 uses
  %i.eth = load i8, ptr %i.etg, align 8, !range !44, !noalias !55178, !noundef !34
  %i.eti = trunc nuw i8 %i.eth to i1
  br i1 %i.eti, label %._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i.i.i.i", !prof !40

._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i.i.i: ; preds = %bb.bhf
  %.pre.i.i.i.i.i713 = load i64, ptr %i.etf, align 8, !noalias !55179
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.etf, i64 8
  %.pre1.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !noalias !55179
  br label %"_ZN87_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..default..Default$GT$7default17h9ac83d69a9872773E.exit.i"

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i.i.i.i": ; preds = %bb.bhf
  %i.etj = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc714 unwind label %.loopexit.split-lp1142 ; 2 uses

.noexc714:                                        ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i.i.i.i"
  %i.etk = extractvalue { i64, i64 } %i.etj, 0
  %i.etl = extractvalue { i64, i64 } %i.etj, 1    ; 2 uses
  %i.etm = getelementptr inbounds nuw i8, ptr %i.etf, i64 8
  store i64 %i.etl, ptr %i.etm, align 8, !noalias !55180
  store i8 1, ptr %i.etg, align 8, !noalias !55180
  br label %"_ZN87_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..default..Default$GT$7default17h9ac83d69a9872773E.exit.i"

"_ZN87_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..default..Default$GT$7default17h9ac83d69a9872773E.exit.i": ; preds = %.noexc714, %._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i.i.i
  %.pre-phi.i.i = phi i64 [ %.pre1.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i.i.i ], [ %i.etl, %.noexc714 ]
  %i.etn = phi i64 [ %.pre.i.i.i.i.i713, %._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i.i.i ], [ %i.etk, %.noexc714 ] ; 2 uses
  %i.eto = add i64 %i.etn, 1
  store i64 %i.eto, ptr %i.etf, align 8, !noalias !55179
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ci, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false), !noalias !55177
  %.sroa.438.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  store i64 %i.etn, ptr %.sroa.438.0..sroa_idx.i, align 8, !noalias !55177
  %.sroa.539.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  store i64 %.pre-phi.i.i, ptr %.sroa.539.0..sroa_idx.i, align 8, !noalias !55177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch), !noalias !55177
  store i64 0, ptr %i.ch, align 8, !noalias !55177
  %i.etp = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.etp, align 8, !noalias !55177
  %i.etq = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 3 uses
  store i64 0, ptr %i.etq, align 8, !noalias !55177
  %.sroa.7.0..sroa_idx.i673 = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %.sroa.8.0..sroa_idx.i674 = getelementptr inbounds nuw i8, ptr %i.cg, i64 5
  %i.etr = getelementptr inbounds nuw i8, ptr %i.cg, i64 32 ; 4 uses
  %i.ets = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  %i.ett = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  %i.etu = getelementptr inbounds nuw i8, ptr %i.cg, i64 56
  %i.etv = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %.sroa.04.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  %.sroa.04.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  %.sroa.4.0..sroa_idx.i675 = getelementptr inbounds nuw i8, ptr %i.cf, i64 56
  %i.etw = getelementptr inbounds nuw i8, ptr %i.baf, i64 8 ; 2 uses
  %i.etx = getelementptr inbounds nuw i8, ptr %i.baf, i64 128
  br label %bb.bhg

bb.bhg:                                           ; preds = %"_ZN87_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..default..Default$GT$7default17h9ac83d69a9872773E.exit.i", %"_ZN4core3ptr43drop_in_place$LT$nickel..error..Warning$GT$17h07748e5d61f3aeb4E.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.416.i.i.sroa.4.i.i)
  br label %.backedge.i.i.i.i.i

.backedge.i.i.i.i.i:                              ; preds = %.backedge.i.i.i.i.i.backedge, %bb.bhg
  %.sroa.0.034.i.i.i.i.i = phi i32 [ 0, %bb.bhg ], [ %.sroa.0.034.i.i.i.i.i.be, %.backedge.i.i.i.i.i.backedge ] ; 16 uses
  %i.ety = load atomic i64, ptr %i.baf acquire, align 128, !noalias !55181 ; 5 uses
  %i.etz = load atomic ptr, ptr %i.etw acquire, align 8, !noalias !55181 ; 8 uses
  %i.eua = lshr i64 %i.ety, 1                     ; 2 uses
  %i.eub = and i64 %i.eua, 31                     ; 5 uses
  %i.euc = icmp eq i64 %i.eub, 31
  br i1 %i.euc, label %bb.bhi, label %bb.bhh

bb.bhh:                                           ; preds = %.backedge.i.i.i.i.i
  %i.eud = add i64 %i.ety, 2                      ; 2 uses
  %i.eue = and i64 %i.ety, 1
  %i.euf = icmp eq i64 %i.eue, 0
  br i1 %i.euf, label %bb.bhl, label %bb.bhn

bb.bhi:                                           ; preds = %.backedge.i.i.i.i.i
  %i.eug = icmp ult i32 %.sroa.0.034.i.i.i.i.i, 7
  br i1 %i.eug, label %bb.bhk, label %bb.bhj

bb.bhj:                                           ; preds = %bb.bhi
  invoke void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
          to label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i6.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !55177

bb.bhk:                                           ; preds = %bb.bhi
  %.not.i.i.i7.i.i.i = icmp eq i32 %.sroa.0.034.i.i.i.i.i, 0
  br i1 %.not.i.i.i7.i.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i6.i.i.i, label %.lr.ph.i.i.i8.i.i.i.preheader

.lr.ph.i.i.i8.i.i.i.preheader:                    ; preds = %bb.bhk
  %i.euh = mul nuw nsw i32 %.sroa.0.034.i.i.i.i.i, %.sroa.0.034.i.i.i.i.i ; 2 uses
  %xtraiter3663 = and i32 %i.euh, 7               ; 3 uses
  %i.eui = icmp ult i32 %.sroa.0.034.i.i.i.i.i, 3
  br i1 %i.eui, label %.lr.ph.i.i.i8.i.i.i.epil.preheader, label %.lr.ph.i.i.i8.i.i.i.preheader.new

.lr.ph.i.i.i8.i.i.i.preheader.new:                ; preds = %.lr.ph.i.i.i8.i.i.i.preheader
  %unroll_iter3667 = and i32 %i.euh, 56
  br label %.lr.ph.i.i.i8.i.i.i

.lr.ph.i.i.i8.i.i.i:                              ; preds = %.lr.ph.i.i.i8.i.i.i, %.lr.ph.i.i.i8.i.i.i.preheader.new
  %niter3668 = phi i32 [ 0, %.lr.ph.i.i.i8.i.i.i.preheader.new ], [ %niter3668.next.7, %.lr.ph.i.i.i8.i.i.i ]
  call void @llvm.x86.sse2.pause() #53, !noalias !55181
  call void @llvm.x86.sse2.pause() #53, !noalias !55181
  call void @llvm.x86.sse2.pause() #53, !noalias !55181
  call void @llvm.x86.sse2.pause() #53, !noalias !55181
  call void @llvm.x86.sse2.pause() #53, !noalias !55181
  call void @llvm.x86.sse2.pause() #53, !noalias !55181
  call void @llvm.x86.sse2.pause() #53, !noalias !55181
  call void @llvm.x86.sse2.pause() #53, !noalias !55181
  %niter3668.next.7 = add i32 %niter3668, 8       ; 2 uses
  %niter3668.ncmp.7 = icmp eq i32 %niter3668.next.7, %unroll_iter3667
  br i1 %niter3668.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i6.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i8.i.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i6.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i8.i.i.i
  %lcmp.mod3665.not = icmp eq i32 %xtraiter3663, 0
  br i1 %lcmp.mod3665.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i6.i.i.i, label %.lr.ph.i.i.i8.i.i.i.epil.preheader

.lr.ph.i.i.i8.i.i.i.epil.preheader:               ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i6.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i8.i.i.i.preheader
  %lcmp.mod3666 = icmp ne i32 %xtraiter3663, 0
  call void @llvm.assume(i1 %lcmp.mod3666)
  br label %.lr.ph.i.i.i8.i.i.i.epil

.lr.ph.i.i.i8.i.i.i.epil:                         ; preds = %.lr.ph.i.i.i8.i.i.i.epil, %.lr.ph.i.i.i8.i.i.i.epil.preheader
  %epil.iter3664 = phi i32 [ 0, %.lr.ph.i.i.i8.i.i.i.epil.preheader ], [ %epil.iter3664.next, %.lr.ph.i.i.i8.i.i.i.epil ]
  call void @llvm.x86.sse2.pause() #53, !noalias !55181
  %epil.iter3664.next = add i32 %epil.iter3664, 1 ; 2 uses
  %epil.iter3664.cmp.not = icmp eq i32 %epil.iter3664.next, %xtraiter3663
  br i1 %epil.iter3664.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i6.i.i.i, label %.lr.ph.i.i.i8.i.i.i.epil, !llvm.loop !53406

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i6.i.i.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i6.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i8.i.i.i.epil, %bb.bhk, %bb.bhj
  %i.euj = add i32 %.sroa.0.034.i.i.i.i.i, 1
  br label %.backedge.i.i.i.i.i.backedge

bb.bhl:                                           ; preds = %bb.bhh
  fence seq_cst
  %i.euk = load atomic i64, ptr %i.etx monotonic, align 128, !noalias !55181 ; 2 uses
  %i.eul = lshr i64 %i.euk, 1
  %i.eum = icmp eq i64 %i.eua, %i.eul
  br i1 %i.eum, label %"_ZN3std4sync4mpmc17Receiver$LT$T$GT$8try_recv17hf5ab45d0c641c52dE.exit.i.thread.i", label %bb.bhm

bb.bhm:                                           ; preds = %bb.bhl
  %.not.unshifted.i.i.i.i.i = xor i64 %i.euk, %i.ety
  %.not.i.i.i.i.i704 = icmp ugt i64 %.not.unshifted.i.i.i.i.i, 63
  %i.eun = zext i1 %.not.i.i.i.i.i704 to i64
  %spec.select.i.i.i.i.i705 = or disjoint i64 %i.eud, %i.eun
  br label %bb.bhn

bb.bhn:                                           ; preds = %bb.bhm, %bb.bhh
  %.sroa.09.0.i.i2.i.i.i = phi i64 [ %i.eud, %bb.bhh ], [ %spec.select.i.i.i.i.i705, %bb.bhm ] ; 2 uses
  %i.euo = icmp eq ptr %i.etz, null
  br i1 %i.euo, label %bb.bho, label %bb.bhr

bb.bho:                                           ; preds = %bb.bhn
  %i.eup = icmp ult i32 %.sroa.0.034.i.i.i.i.i, 7
  br i1 %i.eup, label %bb.bhq, label %bb.bhp

bb.bhp:                                           ; preds = %bb.bho
  invoke void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
          to label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !55177

bb.bhq:                                           ; preds = %bb.bho
  %.not.i18.i.i.i.i.i = icmp eq i32 %.sroa.0.034.i.i.i.i.i, 0
  br i1 %.not.i18.i.i.i.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i.i.i, label %.lr.ph.i19.i.i.i.i.i.preheader

.lr.ph.i19.i.i.i.i.i.preheader:                   ; preds = %bb.bhq
  %i.euq = mul nuw nsw i32 %.sroa.0.034.i.i.i.i.i, %.sroa.0.034.i.i.i.i.i ; 2 uses
  %xtraiter3657 = and i32 %i.euq, 7               ; 3 uses
  %i.eur = icmp ult i32 %.sroa.0.034.i.i.i.i.i, 3
  br i1 %i.eur, label %.lr.ph.i19.i.i.i.i.i.epil.preheader, label %.lr.ph.i19.i.i.i.i.i.preheader.new

.lr.ph.i19.i.i.i.i.i.preheader.new:               ; preds = %.lr.ph.i19.i.i.i.i.i.preheader
  %unroll_iter3661 = and i32 %i.euq, 56
  br label %.lr.ph.i19.i.i.i.i.i

.lr.ph.i19.i.i.i.i.i:                             ; preds = %.lr.ph.i19.i.i.i.i.i, %.lr.ph.i19.i.i.i.i.i.preheader.new
  %niter3662 = phi i32 [ 0, %.lr.ph.i19.i.i.i.i.i.preheader.new ], [ %niter3662.next.7, %.lr.ph.i19.i.i.i.i.i ]
  call void @llvm.x86.sse2.pause() #53, !noalias !55181
  call void @llvm.x86.sse2.pause() #53, !noalias !55181
  call void @llvm.x86.sse2.pause() #53, !noalias !55181
  call void @llvm.x86.sse2.pause() #53, !noalias !55181
  call void @llvm.x86.sse2.pause() #53, !noalias !55181
  call void @llvm.x86.sse2.pause() #53, !noalias !55181
  call void @llvm.x86.sse2.pause() #53, !noalias !55181
  call void @llvm.x86.sse2.pause() #53, !noalias !55181
  %niter3662.next.7 = add i32 %niter3662, 8       ; 2 uses
  %niter3662.ncmp.7 = icmp eq i32 %niter3662.next.7, %unroll_iter3661
  br i1 %niter3662.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i19.i.i.i.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i19.i.i.i.i.i
  %lcmp.mod3659.not = icmp eq i32 %xtraiter3657, 0
  br i1 %lcmp.mod3659.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i.i.i, label %.lr.ph.i19.i.i.i.i.i.epil.preheader

.lr.ph.i19.i.i.i.i.i.epil.preheader:              ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i19.i.i.i.i.i.preheader
  %lcmp.mod3660 = icmp ne i32 %xtraiter3657, 0
  call void @llvm.assume(i1 %lcmp.mod3660)
  br label %.lr.ph.i19.i.i.i.i.i.epil

.lr.ph.i19.i.i.i.i.i.epil:                        ; preds = %.lr.ph.i19.i.i.i.i.i.epil, %.lr.ph.i19.i.i.i.i.i.epil.preheader
  %epil.iter3658 = phi i32 [ 0, %.lr.ph.i19.i.i.i.i.i.epil.preheader ], [ %epil.iter3658.next, %.lr.ph.i19.i.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause() #53, !noalias !55181
  %epil.iter3658.next = add i32 %epil.iter3658, 1 ; 2 uses
  %epil.iter3658.cmp.not = icmp eq i32 %epil.iter3658.next, %xtraiter3657
  br i1 %epil.iter3658.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i.i.i, label %.lr.ph.i19.i.i.i.i.i.epil, !llvm.loop !53407

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i.i.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i19.i.i.i.i.i.epil, %bb.bhq, %bb.bhp
  %i.eus = add i32 %.sroa.0.034.i.i.i.i.i, 1
  br label %.backedge.i.i.i.i.i.backedge

bb.bhr:                                           ; preds = %bb.bhn
  %i.eut = cmpxchg weak ptr %i.baf, i64 %i.ety, i64 %.sroa.09.0.i.i2.i.i.i seq_cst acquire, align 8, !noalias !55181
  %.sroa.18.0.in.i.i.i3.i.i.i = extractvalue { i64, i1 } %i.eut, 1
  br i1 %.sroa.18.0.in.i.i.i3.i.i.i, label %bb.bht, label %bb.bhs

bb.bhs:                                           ; preds = %bb.bhr
  %.sroa.0.0.i.i.i.i4.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.034.i.i.i.i.i, i32 6) ; 2 uses
  %i.euu = mul nuw nsw i32 %.sroa.0.0.i.i.i.i4.i.i.i, %.sroa.0.0.i.i.i.i4.i.i.i ; 2 uses
  %.not.i23.i.i.i.i.i = icmp eq i32 %.sroa.0.034.i.i.i.i.i, 0
  br i1 %.not.i23.i.i.i.i.i, label %.backedge.i.i.i.i.i.backedge, label %.lr.ph.i24.i.i.i.i.i.preheader

.lr.ph.i24.i.i.i.i.i.preheader:                   ; preds = %bb.bhs
  %xtraiter3651 = and i32 %i.euu, 5               ; 3 uses
  %i.euv = icmp ult i32 %.sroa.0.034.i.i.i.i.i, 3
  br i1 %i.euv, label %.lr.ph.i24.i.i.i.i.i.epil.preheader, label %.lr.ph.i24.i.i.i.i.i.preheader.new

.lr.ph.i24.i.i.i.i.i.preheader.new:               ; preds = %.lr.ph.i24.i.i.i.i.i.preheader
  %unroll_iter3655 = and i32 %i.euu, 56
  br label %.lr.ph.i24.i.i.i.i.i

._crit_edge.loopexit.i.i.i5.i.i.i.unr-lcssa:      ; preds = %.lr.ph.i24.i.i.i.i.i
  %lcmp.mod3653.not = icmp eq i32 %xtraiter3651, 0
  br i1 %lcmp.mod3653.not, label %._crit_edge.loopexit.i.i.i5.i.i.i, label %.lr.ph.i24.i.i.i.i.i.epil.preheader

.lr.ph.i24.i.i.i.i.i.epil.preheader:              ; preds = %._crit_edge.loopexit.i.i.i5.i.i.i.unr-lcssa, %.lr.ph.i24.i.i.i.i.i.preheader
  %lcmp.mod3654 = icmp ne i32 %xtraiter3651, 0
  call void @llvm.assume(i1 %lcmp.mod3654)
  br label %.lr.ph.i24.i.i.i.i.i.epil

.lr.ph.i24.i.i.i.i.i.epil:                        ; preds = %.lr.ph.i24.i.i.i.i.i.epil, %.lr.ph.i24.i.i.i.i.i.epil.preheader
  %epil.iter3652 = phi i32 [ 0, %.lr.ph.i24.i.i.i.i.i.epil.preheader ], [ %epil.iter3652.next, %.lr.ph.i24.i.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause() #53, !noalias !55181
  %epil.iter3652.next = add i32 %epil.iter3652, 1 ; 2 uses
  %epil.iter3652.cmp.not = icmp eq i32 %epil.iter3652.next, %xtraiter3651
  br i1 %epil.iter3652.cmp.not, label %._crit_edge.loopexit.i.i.i5.i.i.i, label %.lr.ph.i24.i.i.i.i.i.epil, !llvm.loop !53408

._crit_edge.loopexit.i.i.i5.i.i.i:                ; preds = %.lr.ph.i24.i.i.i.i.i.epil, %._crit_edge.loopexit.i.i.i5.i.i.i.unr-lcssa
  %i.euw = add i32 %.sroa.0.034.i.i.i.i.i, 1
  br label %.backedge.i.i.i.i.i.backedge

.backedge.i.i.i.i.i.backedge:                     ; preds = %._crit_edge.loopexit.i.i.i5.i.i.i, %bb.bhs, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i.i.i, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i6.i.i.i
  %.sroa.0.034.i.i.i.i.i.be = phi i32 [ %i.euj, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i6.i.i.i ], [ %i.eus, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i.i.i ], [ %i.euw, %._crit_edge.loopexit.i.i.i5.i.i.i ], [ 1, %bb.bhs ]
  br label %.backedge.i.i.i.i.i

.lr.ph.i24.i.i.i.i.i:                             ; preds = %.lr.ph.i24.i.i.i.i.i, %.lr.ph.i24.i.i.i.i.i.preheader.new
  %niter3656 = phi i32 [ 0, %.lr.ph.i24.i.i.i.i.i.preheader.new ], [ %niter3656.next.7, %.lr.ph.i24.i.i.i.i.i ]
  call void @llvm.x86.sse2.pause() #53, !noalias !55181
  call void @llvm.x86.sse2.pause() #53, !noalias !55181
  call void @llvm.x86.sse2.pause() #53, !noalias !55181
  call void @llvm.x86.sse2.pause() #53, !noalias !55181
  call void @llvm.x86.sse2.pause() #53, !noalias !55181
  call void @llvm.x86.sse2.pause() #53, !noalias !55181
  call void @llvm.x86.sse2.pause() #53, !noalias !55181
  call void @llvm.x86.sse2.pause() #53, !noalias !55181
  %niter3656.next.7 = add i32 %niter3656, 8       ; 2 uses
  %niter3656.ncmp.7 = icmp eq i32 %niter3656.next.7, %unroll_iter3655
  br i1 %niter3656.ncmp.7, label %._crit_edge.loopexit.i.i.i5.i.i.i.unr-lcssa, label %.lr.ph.i24.i.i.i.i.i

bb.bht:                                           ; preds = %bb.bhr
  %i.eux = icmp eq i64 %i.eub, 30
  br i1 %i.eux, label %bb.bhu, label %bb.bhx

bb.bhu:                                           ; preds = %bb.bht
  %i.euy = load atomic ptr, ptr %i.etz acquire, align 8, !noalias !55181 ; 2 uses
  %i.euz = icmp eq ptr %i.euy, null
  br i1 %i.euz, label %.lr.ph.i27.i.i.i.i.i, label %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$9wait_next17h97386e3a2881b5abE.exit.i.i.i.i.i"

.lr.ph.i27.i.i.i.i.i:                             ; preds = %bb.bhu, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i
  %.sroa.0.02.i28.i.i.i.i.i = phi i32 [ %i.evd, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i ], [ 0, %bb.bhu ] ; 6 uses
  %i.eva = icmp ult i32 %.sroa.0.02.i28.i.i.i.i.i, 7
  br i1 %i.eva, label %bb.bhw, label %bb.bhv

bb.bhv:                                           ; preds = %.lr.ph.i27.i.i.i.i.i
  invoke void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
          to label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !55177

bb.bhw:                                           ; preds = %.lr.ph.i27.i.i.i.i.i
  %.not.i.i.i.i.i.i.i702 = icmp eq i32 %.sroa.0.02.i28.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i702, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i703.preheader

.lr.ph.i.i.i.i.i.i.i703.preheader:                ; preds = %bb.bhw
  %i.evb = mul nuw nsw i32 %.sroa.0.02.i28.i.i.i.i.i, %.sroa.0.02.i28.i.i.i.i.i ; 2 uses
  %xtraiter3669 = and i32 %i.evb, 7               ; 3 uses
  %i.evc = icmp ult i32 %.sroa.0.02.i28.i.i.i.i.i, 3
  br i1 %i.evc, label %.lr.ph.i.i.i.i.i.i.i703.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i703.preheader.new

.lr.ph.i.i.i.i.i.i.i703.preheader.new:            ; preds = %.lr.ph.i.i.i.i.i.i.i703.preheader
  %unroll_iter3673 = and i32 %i.evb, 56
  br label %.lr.ph.i.i.i.i.i.i.i703

.lr.ph.i.i.i.i.i.i.i703:                          ; preds = %.lr.ph.i.i.i.i.i.i.i703, %.lr.ph.i.i.i.i.i.i.i703.preheader.new
  %niter3674 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i703.preheader.new ], [ %niter3674.next.7, %.lr.ph.i.i.i.i.i.i.i703 ]
  call void @llvm.x86.sse2.pause() #53, !noalias !55181
  call void @llvm.x86.sse2.pause() #53, !noalias !55181
  call void @llvm.x86.sse2.pause() #53, !noalias !55181
  call void @llvm.x86.sse2.pause() #53, !noalias !55181
  call void @llvm.x86.sse2.pause() #53, !noalias !55181
  call void @llvm.x86.sse2.pause() #53, !noalias !55181
  call void @llvm.x86.sse2.pause() #53, !noalias !55181
  call void @llvm.x86.sse2.pause() #53, !noalias !55181
  %niter3674.next.7 = add i32 %niter3674, 8       ; 2 uses
  %niter3674.ncmp.7 = icmp eq i32 %niter3674.next.7, %unroll_iter3673
  br i1 %niter3674.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i703

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i703
  %lcmp.mod3671.not = icmp eq i32 %xtraiter3669, 0
  br i1 %lcmp.mod3671.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i703.epil.preheader

.lr.ph.i.i.i.i.i.i.i703.epil.preheader:           ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i703.preheader
  %lcmp.mod3672 = icmp ne i32 %xtraiter3669, 0
  call void @llvm.assume(i1 %lcmp.mod3672)
  br label %.lr.ph.i.i.i.i.i.i.i703.epil

.lr.ph.i.i.i.i.i.i.i703.epil:                     ; preds = %.lr.ph.i.i.i.i.i.i.i703.epil, %.lr.ph.i.i.i.i.i.i.i703.epil.preheader
  %epil.iter3670 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i703.epil.preheader ], [ %epil.iter3670.next, %.lr.ph.i.i.i.i.i.i.i703.epil ]
  call void @llvm.x86.sse2.pause() #53, !noalias !55181
  %epil.iter3670.next = add i32 %epil.iter3670, 1 ; 2 uses
  %epil.iter3670.cmp.not = icmp eq i32 %epil.iter3670.next, %xtraiter3669
  br i1 %epil.iter3670.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i703.epil, !llvm.loop !53409

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i703.epil, %bb.bhw, %bb.bhv
  %i.evd = add i32 %.sroa.0.02.i28.i.i.i.i.i, 1
  %i.eve = load atomic ptr, ptr %i.etz acquire, align 8, !noalias !55181 ; 2 uses
  %i.evf = icmp eq ptr %i.eve, null
  br i1 %i.evf, label %.lr.ph.i27.i.i.i.i.i, label %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$9wait_next17h97386e3a2881b5abE.exit.i.i.i.i.i"

"_ZN3std4sync4mpmc4list14Block$LT$T$GT$9wait_next17h97386e3a2881b5abE.exit.i.i.i.i.i": ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i, %bb.bhu
  %.lcssa.i.i.i.i.i.i = phi ptr [ %i.euy, %bb.bhu ], [ %i.eve, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.i ] ; 2 uses
  %i.evg = and i64 %.sroa.09.0.i.i2.i.i.i, -2
  %i.evh = add i64 %i.evg, 2
  %i.evi = load atomic ptr, ptr %.lcssa.i.i.i.i.i.i monotonic, align 8, !noalias !55181
  %i.evj = icmp ne ptr %i.evi, null
  %i.evk = zext i1 %i.evj to i64
  %spec.select17.i.i.i.i.i = or disjoint i64 %i.evh, %i.evk
  store atomic ptr %.lcssa.i.i.i.i.i.i, ptr %i.etw release, align 8, !noalias !55181
  store atomic i64 %spec.select17.i.i.i.i.i, ptr %i.baf release, align 128, !noalias !55181
  br label %bb.bhx

bb.bhx:                                           ; preds = %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$9wait_next17h97386e3a2881b5abE.exit.i.i.i.i.i", %bb.bht
  %i.evl = getelementptr inbounds nuw i8, ptr %i.etz, i64 8
  %i.evm = getelementptr inbounds nuw [72 x i8], ptr %i.evl, i64 %i.eub ; 4 uses
  %i.evn = getelementptr inbounds nuw i8, ptr %i.evm, i64 64 ; 3 uses
  %i.evo = load atomic i64, ptr %i.evn acquire, align 8, !noalias !55182
  %i.evp = and i64 %i.evo, 1
  %i.evq = icmp eq i64 %i.evp, 0
  br i1 %i.evq, label %.lr.ph.i.i3.i.i.i.i, label %"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17hdcd5234e14962d87E.exit.i.i.i.i.i"

.lr.ph.i.i3.i.i.i.i:                              ; preds = %bb.bhx, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i5.i.i.i.i
  %.sroa.0.02.i.i4.i.i.i.i = phi i32 [ %i.evu, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i5.i.i.i.i ], [ 0, %bb.bhx ] ; 6 uses
  %i.evr = icmp ult i32 %.sroa.0.02.i.i4.i.i.i.i, 7
  br i1 %i.evr, label %bb.bhz, label %bb.bhy

bb.bhy:                                           ; preds = %.lr.ph.i.i3.i.i.i.i
  invoke void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
          to label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i5.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i701, !noalias !55177

bb.bhz:                                           ; preds = %.lr.ph.i.i3.i.i.i.i
  %.not.i.i.i6.i.i.i.i = icmp eq i32 %.sroa.0.02.i.i4.i.i.i.i, 0
  br i1 %.not.i.i.i6.i.i.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i5.i.i.i.i, label %.lr.ph.i.i.i7.i.i.i.i.preheader

.lr.ph.i.i.i7.i.i.i.i.preheader:                  ; preds = %bb.bhz
  %i.evs = mul nuw nsw i32 %.sroa.0.02.i.i4.i.i.i.i, %.sroa.0.02.i.i4.i.i.i.i ; 2 uses
  %xtraiter3675 = and i32 %i.evs, 7               ; 3 uses
  %i.evt = icmp ult i32 %.sroa.0.02.i.i4.i.i.i.i, 3
  br i1 %i.evt, label %.lr.ph.i.i.i7.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i7.i.i.i.i.preheader.new

.lr.ph.i.i.i7.i.i.i.i.preheader.new:              ; preds = %.lr.ph.i.i.i7.i.i.i.i.preheader
  %unroll_iter3679 = and i32 %i.evs, 56
  br label %.lr.ph.i.i.i7.i.i.i.i

.lr.ph.i.i.i7.i.i.i.i:                            ; preds = %.lr.ph.i.i.i7.i.i.i.i, %.lr.ph.i.i.i7.i.i.i.i.preheader.new
  %niter3680 = phi i32 [ 0, %.lr.ph.i.i.i7.i.i.i.i.preheader.new ], [ %niter3680.next.7, %.lr.ph.i.i.i7.i.i.i.i ]
  call void @llvm.x86.sse2.pause() #53, !noalias !55182
  call void @llvm.x86.sse2.pause() #53, !noalias !55182
  call void @llvm.x86.sse2.pause() #53, !noalias !55182
  call void @llvm.x86.sse2.pause() #53, !noalias !55182
  call void @llvm.x86.sse2.pause() #53, !noalias !55182
  call void @llvm.x86.sse2.pause() #53, !noalias !55182
  call void @llvm.x86.sse2.pause() #53, !noalias !55182
  call void @llvm.x86.sse2.pause() #53, !noalias !55182
  %niter3680.next.7 = add i32 %niter3680, 8       ; 2 uses
  %niter3680.ncmp.7 = icmp eq i32 %niter3680.next.7, %unroll_iter3679
  br i1 %niter3680.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i5.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i7.i.i.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i5.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i7.i.i.i.i
  %lcmp.mod3677.not = icmp eq i32 %xtraiter3675, 0
  br i1 %lcmp.mod3677.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i5.i.i.i.i, label %.lr.ph.i.i.i7.i.i.i.i.epil.preheader

.lr.ph.i.i.i7.i.i.i.i.epil.preheader:             ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i5.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i7.i.i.i.i.preheader
  %lcmp.mod3678 = icmp ne i32 %xtraiter3675, 0
  call void @llvm.assume(i1 %lcmp.mod3678)
  br label %.lr.ph.i.i.i7.i.i.i.i.epil

.lr.ph.i.i.i7.i.i.i.i.epil:                       ; preds = %.lr.ph.i.i.i7.i.i.i.i.epil, %.lr.ph.i.i.i7.i.i.i.i.epil.preheader
  %epil.iter3676 = phi i32 [ 0, %.lr.ph.i.i.i7.i.i.i.i.epil.preheader ], [ %epil.iter3676.next, %.lr.ph.i.i.i7.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause() #53, !noalias !55182
  %epil.iter3676.next = add i32 %epil.iter3676, 1 ; 2 uses
  %epil.iter3676.cmp.not = icmp eq i32 %epil.iter3676.next, %xtraiter3675
  br i1 %epil.iter3676.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i5.i.i.i.i, label %.lr.ph.i.i.i7.i.i.i.i.epil, !llvm.loop !53412

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i5.i.i.i.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i5.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i7.i.i.i.i.epil, %bb.bhz, %bb.bhy
  %i.evu = add i32 %.sroa.0.02.i.i4.i.i.i.i, 1
  %i.evv = load atomic i64, ptr %i.evn acquire, align 8, !noalias !55182
  %i.evw = and i64 %i.evv, 1
  %i.evx = icmp eq i64 %i.evw, 0
  br i1 %i.evx, label %.lr.ph.i.i3.i.i.i.i, label %"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17hdcd5234e14962d87E.exit.i.i.i.i.i"

"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17hdcd5234e14962d87E.exit.i.i.i.i.i": ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i5.i.i.i.i, %bb.bhx
  %.sroa.015.0.copyload.i.i.i.i = load i32, ptr %i.evm, align 8, !noalias !55182 ; 3 uses
  %.sroa.416.0..sroa_idx.i.i.i.i699 = getelementptr inbounds nuw i8, ptr %i.evm, i64 4
  %.sroa.416.i.i.sroa.0.0.copyload.i.i = load i8, ptr %.sroa.416.0..sroa_idx.i.i.i.i699, align 4, !noalias !55183
  %.sroa.416.i.i.sroa.4.0..sroa.416.0..sroa_idx.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.evm, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(59) %.sroa.416.i.i.sroa.4.i.i, ptr noundef nonnull align 1 dereferenceable(59) %.sroa.416.i.i.sroa.4.0..sroa.416.0..sroa_idx.i.i.sroa_idx.i.i, i64 59, i1 false), !noalias !55183
  %i.evy = add nuw nsw i64 %i.eub, 1              ; 2 uses
  %i.evz = icmp eq i64 %i.evy, 31
  br i1 %i.evz, label %.lr.ph.i2.i.i.i.i.i, label %bb.bia

bb.bia:                                           ; preds = %"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17hdcd5234e14962d87E.exit.i.i.i.i.i"
  %i.ewa = atomicrmw or ptr %i.evn, i64 2 acq_rel, align 8, !noalias !55182
  %i.ewb = and i64 %i.ewa, 4
  %i.ewc = icmp eq i64 %i.ewb, 0
  br i1 %i.ewc, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4read17h3a3073895be2b96aE.exit.i.i.i.i", label %bb.bie

.lr.ph.i2.i.i.i.i.i:                              ; preds = %"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17hdcd5234e14962d87E.exit.i.i.i.i.i", %bb.bid
  %.sroa.0.04.i.i.i.i.i.i = phi i64 [ %i.ewl, %bb.bid ], [ 0, %"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17hdcd5234e14962d87E.exit.i.i.i.i.i" ] ; 3 uses
  %i.ewd = getelementptr inbounds nuw [72 x i8], ptr %i.etz, i64 %.sroa.0.04.i.i.i.i.i.i
  %i.ewe = getelementptr inbounds nuw i8, ptr %i.ewd, i64 72 ; 2 uses
  %i.ewf = load atomic i64, ptr %i.ewe acquire, align 8, !noalias !55182
  %i.ewg = and i64 %i.ewf, 2
  %i.ewh = icmp eq i64 %i.ewg, 0
  br i1 %i.ewh, label %bb.bib, label %.lr.ph.i2.i.i.i.i.i.1

bb.bib:                                           ; preds = %.lr.ph.i2.i.i.i.i.i
  %i.ewi = atomicrmw or ptr %i.ewe, i64 4 acq_rel, align 8, !noalias !55182
  %i.ewj = and i64 %i.ewi, 2
  %i.ewk = icmp eq i64 %i.ewj, 0
  br i1 %i.ewk, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4read17h3a3073895be2b96aE.exit.i.i.i.i", label %.lr.ph.i2.i.i.i.i.i.1

.lr.ph.i2.i.i.i.i.i.1:                            ; preds = %bb.bib, %.lr.ph.i2.i.i.i.i.i
  %i.ewl = add nuw nsw i64 %.sroa.0.04.i.i.i.i.i.i, 2 ; 2 uses
  %i.ewm = getelementptr inbounds nuw [72 x i8], ptr %i.etz, i64 %.sroa.0.04.i.i.i.i.i.i
  %i.ewn = getelementptr inbounds nuw i8, ptr %i.ewm, i64 144 ; 2 uses
  %i.ewo = load atomic i64, ptr %i.ewn acquire, align 8, !noalias !55182
  %i.ewp = and i64 %i.ewo, 2
  %i.ewq = icmp eq i64 %i.ewp, 0
  br i1 %i.ewq, label %bb.bic, label %bb.bid

bb.bic:                                           ; preds = %.lr.ph.i2.i.i.i.i.i.1
  %i.ewr = atomicrmw or ptr %i.ewn, i64 4 acq_rel, align 8, !noalias !55182
  %i.ews = and i64 %i.ewr, 2
  %i.ewt = icmp eq i64 %i.ews, 0
  br i1 %i.ewt, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4read17h3a3073895be2b96aE.exit.i.i.i.i", label %bb.bid

bb.bid:                                           ; preds = %bb.bic, %.lr.ph.i2.i.i.i.i.i.1
  %exitcond.not.i.i2.i.i.i.i.1 = icmp eq i64 %i.ewl, 30
  br i1 %exitcond.not.i.i2.i.i.i.i.1, label %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$7destroy17h71a9fe9caf104e7bE.exit.sink.split.i.i.i.i.i", label %.lr.ph.i2.i.i.i.i.i

bb.bie:                                           ; preds = %bb.bia
  %i.ewu = icmp samesign ult i64 %i.eub, 29
  br i1 %i.ewu, label %.lr.ph.i4.i.i.i.i.i, label %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$7destroy17h71a9fe9caf104e7bE.exit.sink.split.i.i.i.i.i"

.lr.ph.i4.i.i.i.i.i:                              ; preds = %bb.bie, %bb.big
  %.sroa.0.04.i5.i.i.i.i.i = phi i64 [ %i.ewv, %bb.big ], [ %i.evy, %bb.bie ] ; 2 uses
  %i.ewv = add nuw nsw i64 %.sroa.0.04.i5.i.i.i.i.i, 1 ; 2 uses
  %i.eww = getelementptr inbounds nuw [72 x i8], ptr %i.etz, i64 %.sroa.0.04.i5.i.i.i.i.i
  %i.ewx = getelementptr inbounds nuw i8, ptr %i.eww, i64 72 ; 2 uses
  %i.ewy = load atomic i64, ptr %i.ewx acquire, align 8, !noalias !55182
  %i.ewz = and i64 %i.ewy, 2
  %i.exa = icmp eq i64 %i.ewz, 0
  br i1 %i.exa, label %bb.bif, label %bb.big

bb.bif:                                           ; preds = %.lr.ph.i4.i.i.i.i.i
  %i.exb = atomicrmw or ptr %i.ewx, i64 4 acq_rel, align 8, !noalias !55182
  %i.exc = and i64 %i.exb, 2
  %i.exd = icmp eq i64 %i.exc, 0
  br i1 %i.exd, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4read17h3a3073895be2b96aE.exit.i.i.i.i", label %bb.big

bb.big:                                           ; preds = %bb.bif, %.lr.ph.i4.i.i.i.i.i
  %exitcond.not.i6.i.i.i.i.i = icmp eq i64 %i.ewv, 30
  br i1 %exitcond.not.i6.i.i.i.i.i, label %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$7destroy17h71a9fe9caf104e7bE.exit.sink.split.i.i.i.i.i", label %.lr.ph.i4.i.i.i.i.i

"_ZN3std4sync4mpmc4list14Block$LT$T$GT$7destroy17h71a9fe9caf104e7bE.exit.sink.split.i.i.i.i.i": ; preds = %bb.big, %bb.bid, %bb.bie
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.etz, i64 noundef 2240, i64 noundef 8) #53, !noalias !55182
  br label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4read17h3a3073895be2b96aE.exit.i.i.i.i"

"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4read17h3a3073895be2b96aE.exit.i.i.i.i": ; preds = %bb.bif, %bb.bib, %bb.bic, %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$7destroy17h71a9fe9caf104e7bE.exit.sink.split.i.i.i.i.i", %bb.bia
  %i.exe = icmp eq i32 %.sroa.015.0.copyload.i.i.i.i, 4
  br i1 %i.exe, label %"_ZN3std4sync4mpmc17Receiver$LT$T$GT$8try_recv17hf5ab45d0c641c52dE.exit.i.thread.i", label %bb.bih

.body.i678:                                       ; preds = %bb.bjf, %bb.biu, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i701
  %.pn.i679 = phi { ptr, i32 } [ %i.ezu, %bb.bjf ], [ %lpad.loopexit55.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %i.eza, %bb.biu ], [ %lpad.loopexit58.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit50.i, %.loopexit.split-lp.loopexit.i701 ], [ %lpad.loopexit53.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ]
  invoke fastcc void @"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$nickel..error..Warning$GT$$GT$17he77c92a61df2f3a5E"(ptr noalias noundef align 8 dereferenceable(24) %i.ch) #61
          to label %bb.bjh unwind label %bb.bjg, !noalias !55177

.loopexit.split-lp.loopexit.i701:                 ; preds = %bb.bhy
  %lpad.loopexit50.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i678

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %bb.bhv
  %lpad.loopexit53.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i678

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %bb.bhp, %bb.bhj
  %lpad.loopexit55.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i678

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %bb.biz
  %lpad.loopexit58.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i678

bb.bih:                                           ; preds = %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4read17h3a3073895be2b96aE.exit.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg), !noalias !55177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(59) %.sroa.8.0..sroa_idx.i674, ptr noundef nonnull align 1 dereferenceable(59) %.sroa.416.i.i.sroa.4.i.i, i64 59, i1 false), !noalias !55177
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.416.i.i.sroa.4.i.i)
  store i32 %.sroa.015.0.copyload.i.i.i.i, ptr %i.cg, align 8, !noalias !55177
  store i8 %.sroa.416.i.i.sroa.0.0.copyload.i.i, ptr %.sroa.7.0..sroa_idx.i673, align 4, !noalias !55177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !55177
  %.not18.i = icmp eq i32 %.sroa.015.0.copyload.i.i.i.i, 3
  br i1 %.not18.i, label %bb.biq, label %bb.bip

"_ZN3std4sync4mpmc17Receiver$LT$T$GT$8try_recv17hf5ab45d0c641c52dE.exit.i.thread.i": ; preds = %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4read17h3a3073895be2b96aE.exit.i.i.i.i", %bb.bhl
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.416.i.i.sroa.4.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.xe, ptr noundef nonnull align 8 dereferenceable(24) %i.ch, i64 24, i1 false), !noalias !55184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !noalias !55177
  call void @llvm.experimental.noalias.scope.decl(metadata !55185)
  call void @llvm.experimental.noalias.scope.decl(metadata !55186)
  call void @llvm.experimental.noalias.scope.decl(metadata !55187)
  call void @llvm.experimental.noalias.scope.decl(metadata !55188)
  call void @llvm.experimental.noalias.scope.decl(metadata !55189)
  call void @llvm.experimental.noalias.scope.decl(metadata !55190)
  %i.exf = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.exg = load i64, ptr %i.exf, align 8, !alias.scope !55191, !noalias !55177, !noundef !34 ; 3 uses
  %i.exh = icmp eq i64 %i.exg, 0
  br i1 %i.exh, label %bb.bji, label %bb.bii

bb.bii:                                           ; preds = %"_ZN3std4sync4mpmc17Receiver$LT$T$GT$8try_recv17hf5ab45d0c641c52dE.exit.i.thread.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !55192)
  %i.exi = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.exj = load i64, ptr %i.exi, align 8, !alias.scope !55193, !noalias !55177, !noundef !34 ; 2 uses
  %i.exk = icmp eq i64 %i.exj, 0
  br i1 %i.exk, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17h1a07ba121a327df4E.exit.i.i.i.i.i.i.i, label %bb.bij

bb.bij:                                           ; preds = %bb.bii
  %i.exl = load ptr, ptr %i.ci, align 8, !alias.scope !55193, !noalias !55177, !nonnull !34, !noundef !34 ; 3 uses
  %.val3.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.exl, align 16, !noalias !55194
  %i.exm = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.exn = getelementptr inbounds nuw i8, ptr %i.exl, i64 16
  %i.exo = bitcast <16 x i1> %i.exm to i16
  br label %bb.bik

bb.bik:                                           ; preds = %"_ZN4core3ptr62drop_in_place$LT$$LP$nickel..error..Warning$C$$LP$$RP$$RP$$GT$17hf9daec5f6947104aE.exit.i.i.i.i.i.i.i.i", %bb.bij
  %.sroa.06.017.i.i.i.i.i.i.i.i = phi ptr [ %i.exl, %bb.bij ], [ %.sroa.06.1.i.i.i.i.i.i.i.i, %"_ZN4core3ptr62drop_in_place$LT$$LP$nickel..error..Warning$C$$LP$$RP$$RP$$GT$17hf9daec5f6947104aE.exit.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.6.016.i.i.i.i.i.i.i.i = phi ptr [ %i.exn, %bb.bij ], [ %.sroa.6.1.i.i.i.i.i.i.i.i, %"_ZN4core3ptr62drop_in_place$LT$$LP$nickel..error..Warning$C$$LP$$RP$$RP$$GT$17hf9daec5f6947104aE.exit.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.87.015.i.i.i.i.i.i.i.i = phi i16 [ %i.exo, %bb.bij ], [ %i.exx, %"_ZN4core3ptr62drop_in_place$LT$$LP$nickel..error..Warning$C$$LP$$RP$$RP$$GT$17hf9daec5f6947104aE.exit.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.108.014.i.i.i.i.i.i.i.i = phi i64 [ %i.exj, %bb.bij ], [ %i.eya, %"_ZN4core3ptr62drop_in_place$LT$$LP$nickel..error..Warning$C$$LP$$RP$$RP$$GT$17hf9daec5f6947104aE.exit.i.i.i.i.i.i.i.i" ]
  %.not13.i.i.i.i.i.i.i.i.i = icmp eq i16 %.sroa.87.015.i.i.i.i.i.i.i.i, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i684, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17heb0e9d819ed47fb7E.exit.i.i.i.i.i.i.i.i"

end_hunk_8
begin_hunk_9_@_ZN6nickel4main17h45e4db5cdd260b38E:bb.a
  %i.fjk = icmp ult i64 %i.fjj, 384307168202282326
  call void @llvm.assume(i1 %i.fjk)
  %i.fjl = load ptr, ptr %i.fbb, align 8, !alias.scope !55367, !noalias !55366, !nonnull !34, !noundef !34
  %i.fjm = getelementptr inbounds nuw [24 x i8], ptr %i.fjl, i64 %i.fjj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.fjm, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.fis, i64 72, i1 false), !noalias !55368
  %i.fjn = add nuw nsw i64 %i.fjj, 3
  store i64 %i.fjn, ptr %i.fba, align 8, !alias.scope !55367, !noalias !55366
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.cc, ptr noundef nonnull align 8 dereferenceable(104) %i.cb, i64 104, i1 false), !alias.scope !55369, !noalias !55370
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fis, i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !55371
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !55217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !55217
  invoke fastcc void @_ZN16nickel_lang_core5error6report6report17h2c0b692736b9aa59E(ptr noalias noundef align 8 dereferenceable(32) %i.cd, ptr noalias noundef align 8 captures(address) dereferenceable(104) %i.cc, i8 noundef range(i8 0, 4) %.sroa.769.093.i.i.i, i8 noundef range(i8 0, 4) %.sroa.0.02278)
          to label %bb.bnq unwind label %bb.bnb, !noalias !55217

bb.bnq:                                           ; preds = %bb.bnp
  call void @llvm.experimental.noalias.scope.decl(metadata !55372)
  call void @llvm.experimental.noalias.scope.decl(metadata !55373)
  call void @llvm.experimental.noalias.scope.decl(metadata !55374)
  %i.fjo = load ptr, ptr %i.cd, align 8, !alias.scope !55375, !noalias !55217, !noundef !34 ; 3 uses
  %i.fjp = icmp eq ptr %i.fjo, null
  br i1 %i.fjp, label %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..files..Files$GT$17he8038726aa0e51c6E.exit47.i", label %bb.bnr

bb.bnr:                                           ; preds = %bb.bnq
  %i.fjq = load i64, ptr %i.fjo, align 8, !noalias !55376, !noundef !34
  %i.fjr = add i64 %i.fjq, -1                     ; 2 uses
  store i64 %i.fjr, ptr %i.fjo, align 8, !noalias !55376
  %i.fjs = icmp eq i64 %i.fjr, 0
  br i1 %i.fjs, label %bb.bns, label %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..files..Files$GT$17he8038726aa0e51c6E.exit47.i"

bb.bns:                                           ; preds = %bb.bnr
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17ha3d18f83ba1e1015E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.cd)
          to label %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..files..Files$GT$17he8038726aa0e51c6E.exit47.i" unwind label %bb.boc

"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..files..Files$GT$17he8038726aa0e51c6E.exit47.i": ; preds = %bb.bns, %bb.bnr, %bb.bnq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !noalias !55217
  br label %bb.bod

bb.bnt:                                           ; preds = %bb.bny, %bb.bna
  %i.fjt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !55217
  unreachable

bb.bnu:                                           ; preds = %bb.bne
  unreachable

bb.bnv:                                           ; preds = %.thread.i777, %.thread79.i
  %.pn2378.i = phi { ptr, i32 } [ %.pn.pn.i, %.thread.i777 ], [ %i.fir, %.thread79.i ]
  call fastcc void @"_ZN4core3ptr104drop_in_place$LT$codespan_reporting..diagnostic..Diagnostic$LT$nickel_lang_parser..files..FileId$GT$$GT$17hedd0219c088fc0e2E"(ptr noalias noundef align 8 dereferenceable(104) %i.cb) #61, !noalias !55217
  br label %bb.bmy

bb.bnw:                                           ; preds = %"_ZN4core3ptr50drop_in_place$LT$termcolor..StandardStreamLock$GT$17he2c24746cb63d6ebE.exit.i.i", %bb.bjq
  %i.fju = landingpad { ptr, i32 }
          cleanup
  br label %.body.i733

.body.i733:                                       ; preds = %bb.bnw, %bb.bjr
  %eh.lpad-body.i734 = phi { ptr, i32 } [ %i.fju, %bb.bnw ], [ %.pn.i.i736, %bb.bjr ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !55377)
  call void @llvm.experimental.noalias.scope.decl(metadata !55378)
  call void @llvm.experimental.noalias.scope.decl(metadata !55379)
  %i.fjv = load ptr, ptr %i.by, align 8, !alias.scope !55380, !noalias !55217, !noundef !34 ; 3 uses
  %i.fjw = icmp eq ptr %i.fjv, null
  br i1 %i.fjw, label %.body780, label %bb.bnx

bb.bnx:                                           ; preds = %.body.i733
  %i.fjx = load i64, ptr %i.fjv, align 8, !noalias !55381, !noundef !34
  %i.fjy = add i64 %i.fjx, -1                     ; 2 uses
  store i64 %i.fjy, ptr %i.fjv, align 8, !noalias !55381
  %i.fjz = icmp eq i64 %i.fjy, 0
  br i1 %i.fjz, label %bb.bny, label %.body780

bb.bny:                                           ; preds = %bb.bnx
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17ha3d18f83ba1e1015E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.by)
          to label %.body780 unwind label %bb.bnt, !noalias !55217

bb.bnz:                                           ; preds = %"_ZN4core3ptr50drop_in_place$LT$termcolor..StandardStreamLock$GT$17he2c24746cb63d6ebE.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !55218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !55218
  call void @llvm.experimental.noalias.scope.decl(metadata !55382)
  call void @llvm.experimental.noalias.scope.decl(metadata !55383)
  call void @llvm.experimental.noalias.scope.decl(metadata !55384)
  %i.fka = load ptr, ptr %i.by, align 8, !alias.scope !55385, !noalias !55217, !noundef !34 ; 3 uses
  %i.fkb = icmp eq ptr %i.fka, null
  br i1 %i.fkb, label %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..files..Files$GT$17he8038726aa0e51c6E.exit50.i", label %bb.boa

bb.boa:                                           ; preds = %bb.bnz
  %i.fkc = load i64, ptr %i.fka, align 8, !noalias !55386, !noundef !34
  %i.fkd = add i64 %i.fkc, -1                     ; 2 uses
  store i64 %i.fkd, ptr %i.fka, align 8, !noalias !55386
  %i.fke = icmp eq i64 %i.fkd, 0
  br i1 %i.fke, label %bb.bob, label %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..files..Files$GT$17he8038726aa0e51c6E.exit50.i"

bb.bob:                                           ; preds = %bb.boa
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17ha3d18f83ba1e1015E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.by)
          to label %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..files..Files$GT$17he8038726aa0e51c6E.exit50.i" unwind label %bb.boc

"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..files..Files$GT$17he8038726aa0e51c6E.exit50.i": ; preds = %bb.bob, %bb.boa, %bb.bnz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !55217
  br label %bb.bod

bb.boc:                                           ; preds = %bb.bob, %bb.bns
  %i.fkf = landingpad { ptr, i32 }
          cleanup
  br label %.body780

.body780:                                         ; preds = %bb.bmy, %bb.bmz, %bb.bna, %.body.i733, %bb.bnx, %bb.bny, %bb.boc
  %eh.lpad-body781 = phi { ptr, i32 } [ %i.fkf, %bb.boc ], [ %.pn23.pn.i, %bb.bmz ], [ %.pn23.pn.i, %bb.bna ], [ %.pn23.pn.i, %bb.bmy ], [ %eh.lpad-body.i734, %bb.bny ], [ %eh.lpad-body.i734, %.body.i733 ], [ %eh.lpad-body.i734, %bb.bnx ]
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$alloc..vec..drain..Drain$LT$nickel..error..Warning$GT$$GT$17heb1b2ce3454b17c3E"(ptr noalias noundef align 8 dereferenceable(40) %i.xd) #61
          to label %.body814 unwind label %bb.boe

bb.bod:                                           ; preds = %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..files..Files$GT$17he8038726aa0e51c6E.exit50.i", %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..files..Files$GT$17he8038726aa0e51c6E.exit47.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  %i.fkg = icmp eq ptr %i.fbd, %i.fac
  br i1 %i.fkg, label %._crit_edge, label %bb.bjj

bb.boe:                                           ; preds = %.body780, %.body814, %.body42
  %i.fkh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

bb.bof:                                           ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.xd)
  %i.fki = load i64, ptr %i.ezw, align 8, !noundef !34 ; 3 uses
  %i.fkj = icmp ult i64 %i.fki, 144115188075855872
  call void @llvm.assume(i1 %i.fkj)
  %i.fkk = icmp eq i64 %i.fki, 0
  br i1 %i.fkk, label %bb.boh, label %bb.bog

bb.bog:                                           ; preds = %bb.bof
  call void @llvm.lifetime.start.p0(ptr nonnull %i.xc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.xb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.xa)
  store i64 %i.fki, ptr %i.xa, align 8
  store ptr %i.xa, ptr %i.xb, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xb, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.416.0..sroa_idx, align 8
  store ptr @904, ptr %i.xc, align 8
  %i.fkl = getelementptr inbounds nuw i8, ptr %i.xc, i64 8
  store i64 2, ptr %i.fkl, align 8
  %i.fkm = getelementptr inbounds nuw i8, ptr %i.xc, i64 32
  store ptr null, ptr %i.fkm, align 8
  %i.fkn = getelementptr inbounds nuw i8, ptr %i.xc, i64 16
  store ptr %i.xb, ptr %i.fkn, align 8
  %i.fko = getelementptr inbounds nuw i8, ptr %i.xc, i64 24
  store i64 1, ptr %i.fko, align 8
  invoke void @_ZN3std2io5stdio7_eprint17h4ba3eb92d5d637abE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.xc)
          to label %bb.boi unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.boh:                                           ; preds = %bb.bof, %bb.boi
  %i.fkp = getelementptr inbounds nuw i8, ptr %i.azx, i64 8 ; 2 uses
  %i.fkq = getelementptr inbounds nuw i8, ptr %i.azx, i64 128
  %.sroa.71035.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wz, i64 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wz, i64 9
  %switch.cast3211 = zext i8 %.sroa.7.080.i.i.i to i24
  %switch.shiftamt3212 = shl nuw nsw i24 %switch.cast3211, 3
  %switch.downshift3213 = lshr i24 197120, %switch.shiftamt3212
  %switch.masked3214 = trunc i24 %switch.downshift3213 to i8
  br label %bb.boj

bb.boi:                                           ; preds = %bb.bog
  call void @llvm.lifetime.end.p0(ptr nonnull %i.xc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.xa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.xb)
  br label %bb.boh

bb.boj:                                           ; preds = %switch.lookup3210, %bb.boh
  %.sroa.01.0 = phi i8 [ 0, %bb.boh ], [ 1, %switch.lookup3210 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.416.i.i.sroa.4.i)
  br label %.backedge.i.i.i.i

.backedge.i.i.i.i:                                ; preds = %.backedge.i.i.i.i.backedge, %bb.boj
  %.sroa.0.034.i.i.i.i = phi i32 [ 0, %bb.boj ], [ %.sroa.0.034.i.i.i.i.be, %.backedge.i.i.i.i.backedge ] ; 16 uses
  %i.fkr = load atomic i64, ptr %i.azx acquire, align 128, !noalias !55387 ; 5 uses
  %i.fks = load atomic ptr, ptr %i.fkp acquire, align 8, !noalias !55387 ; 7 uses
  %i.fkt = lshr i64 %i.fkr, 1                     ; 2 uses
  %i.fku = and i64 %i.fkt, 31                     ; 5 uses
  %i.fkv = icmp eq i64 %i.fku, 31
  br i1 %i.fkv, label %bb.bol, label %bb.bok

bb.bok:                                           ; preds = %.backedge.i.i.i.i
  %i.fkw = add i64 %i.fkr, 2                      ; 2 uses
  %i.fkx = and i64 %i.fkr, 1
  %i.fky = icmp eq i64 %i.fkx, 0
  br i1 %i.fky, label %bb.boo, label %bb.boq

bb.bol:                                           ; preds = %.backedge.i.i.i.i
  %i.fkz = icmp ult i32 %.sroa.0.034.i.i.i.i, 7
  br i1 %i.fkz, label %bb.bon, label %bb.bom

bb.bom:                                           ; preds = %bb.bol
  invoke void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
          to label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i6.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.bon:                                           ; preds = %bb.bol
  %.not.i.i.i7.i.i = icmp eq i32 %.sroa.0.034.i.i.i.i, 0
  br i1 %.not.i.i.i7.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i6.i.i, label %.lr.ph.i.i.i8.i.i.preheader

.lr.ph.i.i.i8.i.i.preheader:                      ; preds = %bb.bon
  %i.fla = mul nuw nsw i32 %.sroa.0.034.i.i.i.i, %.sroa.0.034.i.i.i.i ; 2 uses
  %xtraiter3693 = and i32 %i.fla, 7               ; 3 uses
  %i.flb = icmp ult i32 %.sroa.0.034.i.i.i.i, 3
  br i1 %i.flb, label %.lr.ph.i.i.i8.i.i.epil.preheader, label %.lr.ph.i.i.i8.i.i.preheader.new

.lr.ph.i.i.i8.i.i.preheader.new:                  ; preds = %.lr.ph.i.i.i8.i.i.preheader
  %unroll_iter3697 = and i32 %i.fla, 56
  br label %.lr.ph.i.i.i8.i.i

.lr.ph.i.i.i8.i.i:                                ; preds = %.lr.ph.i.i.i8.i.i, %.lr.ph.i.i.i8.i.i.preheader.new
  %niter3698 = phi i32 [ 0, %.lr.ph.i.i.i8.i.i.preheader.new ], [ %niter3698.next.7, %.lr.ph.i.i.i8.i.i ]
  call void @llvm.x86.sse2.pause() #53, !noalias !55387
  call void @llvm.x86.sse2.pause() #53, !noalias !55387
  call void @llvm.x86.sse2.pause() #53, !noalias !55387
  call void @llvm.x86.sse2.pause() #53, !noalias !55387
  call void @llvm.x86.sse2.pause() #53, !noalias !55387
  call void @llvm.x86.sse2.pause() #53, !noalias !55387
  call void @llvm.x86.sse2.pause() #53, !noalias !55387
  call void @llvm.x86.sse2.pause() #53, !noalias !55387
  %niter3698.next.7 = add i32 %niter3698, 8       ; 2 uses
  %niter3698.ncmp.7 = icmp eq i32 %niter3698.next.7, %unroll_iter3697
  br i1 %niter3698.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i6.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i8.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i6.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i8.i.i
  %lcmp.mod3695.not = icmp eq i32 %xtraiter3693, 0
  br i1 %lcmp.mod3695.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i6.i.i, label %.lr.ph.i.i.i8.i.i.epil.preheader

.lr.ph.i.i.i8.i.i.epil.preheader:                 ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i6.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i8.i.i.preheader
  %lcmp.mod3696 = icmp ne i32 %xtraiter3693, 0
  call void @llvm.assume(i1 %lcmp.mod3696)
  br label %.lr.ph.i.i.i8.i.i.epil

.lr.ph.i.i.i8.i.i.epil:                           ; preds = %.lr.ph.i.i.i8.i.i.epil, %.lr.ph.i.i.i8.i.i.epil.preheader
  %epil.iter3694 = phi i32 [ 0, %.lr.ph.i.i.i8.i.i.epil.preheader ], [ %epil.iter3694.next, %.lr.ph.i.i.i8.i.i.epil ]
  call void @llvm.x86.sse2.pause() #53, !noalias !55387
  %epil.iter3694.next = add i32 %epil.iter3694, 1 ; 2 uses
  %epil.iter3694.cmp.not = icmp eq i32 %epil.iter3694.next, %xtraiter3693
  br i1 %epil.iter3694.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i6.i.i, label %.lr.ph.i.i.i8.i.i.epil, !llvm.loop !53755

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i6.i.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i6.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i8.i.i.epil, %bb.bom, %bb.bon
  %i.flc = add i32 %.sroa.0.034.i.i.i.i, 1
  br label %.backedge.i.i.i.i.backedge

bb.boo:                                           ; preds = %bb.bok
  fence seq_cst
  %i.fld = load atomic i64, ptr %i.fkq monotonic, align 128, !noalias !55387 ; 2 uses
  %i.fle = lshr i64 %i.fld, 1
  %i.flf = icmp eq i64 %i.fkt, %i.fle
  br i1 %i.flf, label %"_ZN3std4sync4mpmc17Receiver$LT$T$GT$8try_recv17ha13e1fee9ae91deeE.exit.i.thread", label %bb.bop

bb.bop:                                           ; preds = %bb.boo
  %.not.unshifted.i.i.i.i = xor i64 %i.fld, %i.fkr
  %.not.i.i.i.i806 = icmp ugt i64 %.not.unshifted.i.i.i.i, 63
  %i.flg = zext i1 %.not.i.i.i.i806 to i64
  %spec.select.i.i.i.i = or disjoint i64 %i.fkw, %i.flg
  br label %bb.boq

bb.boq:                                           ; preds = %bb.bop, %bb.bok
  %.sroa.09.0.i.i2.i.i = phi i64 [ %i.fkw, %bb.bok ], [ %spec.select.i.i.i.i, %bb.bop ] ; 2 uses
  %i.flh = icmp eq ptr %i.fks, null
  br i1 %i.flh, label %bb.bor, label %bb.bou

bb.bor:                                           ; preds = %bb.boq
  %i.fli = icmp ult i32 %.sroa.0.034.i.i.i.i, 7
  br i1 %i.fli, label %bb.bot, label %bb.bos

bb.bos:                                           ; preds = %bb.bor
  invoke void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
          to label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.bot:                                           ; preds = %bb.bor
  %.not.i18.i.i.i.i = icmp eq i32 %.sroa.0.034.i.i.i.i, 0
  br i1 %.not.i18.i.i.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i.i, label %.lr.ph.i19.i.i.i.i.preheader

.lr.ph.i19.i.i.i.i.preheader:                     ; preds = %bb.bot
  %i.flj = mul nuw nsw i32 %.sroa.0.034.i.i.i.i, %.sroa.0.034.i.i.i.i ; 2 uses
  %xtraiter3687 = and i32 %i.flj, 7               ; 3 uses
  %i.flk = icmp ult i32 %.sroa.0.034.i.i.i.i, 3
  br i1 %i.flk, label %.lr.ph.i19.i.i.i.i.epil.preheader, label %.lr.ph.i19.i.i.i.i.preheader.new

.lr.ph.i19.i.i.i.i.preheader.new:                 ; preds = %.lr.ph.i19.i.i.i.i.preheader
  %unroll_iter3691 = and i32 %i.flj, 56
  br label %.lr.ph.i19.i.i.i.i

.lr.ph.i19.i.i.i.i:                               ; preds = %.lr.ph.i19.i.i.i.i, %.lr.ph.i19.i.i.i.i.preheader.new
  %niter3692 = phi i32 [ 0, %.lr.ph.i19.i.i.i.i.preheader.new ], [ %niter3692.next.7, %.lr.ph.i19.i.i.i.i ]
  call void @llvm.x86.sse2.pause() #53, !noalias !55387
  call void @llvm.x86.sse2.pause() #53, !noalias !55387
  call void @llvm.x86.sse2.pause() #53, !noalias !55387
  call void @llvm.x86.sse2.pause() #53, !noalias !55387
  call void @llvm.x86.sse2.pause() #53, !noalias !55387
  call void @llvm.x86.sse2.pause() #53, !noalias !55387
  call void @llvm.x86.sse2.pause() #53, !noalias !55387
  call void @llvm.x86.sse2.pause() #53, !noalias !55387
  %niter3692.next.7 = add i32 %niter3692, 8       ; 2 uses
  %niter3692.ncmp.7 = icmp eq i32 %niter3692.next.7, %unroll_iter3691
  br i1 %niter3692.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i19.i.i.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i19.i.i.i.i
  %lcmp.mod3689.not = icmp eq i32 %xtraiter3687, 0
  br i1 %lcmp.mod3689.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i.i, label %.lr.ph.i19.i.i.i.i.epil.preheader

.lr.ph.i19.i.i.i.i.epil.preheader:                ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i19.i.i.i.i.preheader
  %lcmp.mod3690 = icmp ne i32 %xtraiter3687, 0
  call void @llvm.assume(i1 %lcmp.mod3690)
  br label %.lr.ph.i19.i.i.i.i.epil

.lr.ph.i19.i.i.i.i.epil:                          ; preds = %.lr.ph.i19.i.i.i.i.epil, %.lr.ph.i19.i.i.i.i.epil.preheader
  %epil.iter3688 = phi i32 [ 0, %.lr.ph.i19.i.i.i.i.epil.preheader ], [ %epil.iter3688.next, %.lr.ph.i19.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause() #53, !noalias !55387
  %epil.iter3688.next = add i32 %epil.iter3688, 1 ; 2 uses
  %epil.iter3688.cmp.not = icmp eq i32 %epil.iter3688.next, %xtraiter3687
  br i1 %epil.iter3688.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i.i, label %.lr.ph.i19.i.i.i.i.epil, !llvm.loop !53756

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i19.i.i.i.i.epil, %bb.bos, %bb.bot
  %i.fll = add i32 %.sroa.0.034.i.i.i.i, 1
  br label %.backedge.i.i.i.i.backedge

bb.bou:                                           ; preds = %bb.boq
  %i.flm = cmpxchg weak ptr %i.azx, i64 %i.fkr, i64 %.sroa.09.0.i.i2.i.i seq_cst acquire, align 8, !noalias !55387
  %.sroa.18.0.in.i.i.i3.i.i = extractvalue { i64, i1 } %i.flm, 1
  br i1 %.sroa.18.0.in.i.i.i3.i.i, label %bb.bow, label %bb.bov

bb.bov:                                           ; preds = %bb.bou
  %.sroa.0.0.i.i.i.i4.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.034.i.i.i.i, i32 6) ; 2 uses
  %i.fln = mul nuw nsw i32 %.sroa.0.0.i.i.i.i4.i.i, %.sroa.0.0.i.i.i.i4.i.i ; 2 uses
  %.not.i23.i.i.i.i800 = icmp eq i32 %.sroa.0.034.i.i.i.i, 0
  br i1 %.not.i23.i.i.i.i800, label %.backedge.i.i.i.i.backedge, label %.lr.ph.i24.i.i.i.i.preheader

.lr.ph.i24.i.i.i.i.preheader:                     ; preds = %bb.bov
  %xtraiter3681 = and i32 %i.fln, 5               ; 3 uses
  %i.flo = icmp ult i32 %.sroa.0.034.i.i.i.i, 3
  br i1 %i.flo, label %.lr.ph.i24.i.i.i.i.epil.preheader, label %.lr.ph.i24.i.i.i.i.preheader.new

.lr.ph.i24.i.i.i.i.preheader.new:                 ; preds = %.lr.ph.i24.i.i.i.i.preheader
  %unroll_iter3685 = and i32 %i.fln, 56
  br label %.lr.ph.i24.i.i.i.i

._crit_edge.loopexit.i.i.i5.i.i.unr-lcssa:        ; preds = %.lr.ph.i24.i.i.i.i
  %lcmp.mod3683.not = icmp eq i32 %xtraiter3681, 0
  br i1 %lcmp.mod3683.not, label %._crit_edge.loopexit.i.i.i5.i.i, label %.lr.ph.i24.i.i.i.i.epil.preheader

.lr.ph.i24.i.i.i.i.epil.preheader:                ; preds = %._crit_edge.loopexit.i.i.i5.i.i.unr-lcssa, %.lr.ph.i24.i.i.i.i.preheader
  %lcmp.mod3684 = icmp ne i32 %xtraiter3681, 0
  call void @llvm.assume(i1 %lcmp.mod3684)
  br label %.lr.ph.i24.i.i.i.i.epil

.lr.ph.i24.i.i.i.i.epil:                          ; preds = %.lr.ph.i24.i.i.i.i.epil, %.lr.ph.i24.i.i.i.i.epil.preheader
  %epil.iter3682 = phi i32 [ 0, %.lr.ph.i24.i.i.i.i.epil.preheader ], [ %epil.iter3682.next, %.lr.ph.i24.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause() #53, !noalias !55387
  %epil.iter3682.next = add i32 %epil.iter3682, 1 ; 2 uses
  %epil.iter3682.cmp.not = icmp eq i32 %epil.iter3682.next, %xtraiter3681
  br i1 %epil.iter3682.cmp.not, label %._crit_edge.loopexit.i.i.i5.i.i, label %.lr.ph.i24.i.i.i.i.epil, !llvm.loop !53757

._crit_edge.loopexit.i.i.i5.i.i:                  ; preds = %.lr.ph.i24.i.i.i.i.epil, %._crit_edge.loopexit.i.i.i5.i.i.unr-lcssa
  %i.flp = add i32 %.sroa.0.034.i.i.i.i, 1
  br label %.backedge.i.i.i.i.backedge

.backedge.i.i.i.i.backedge:                       ; preds = %._crit_edge.loopexit.i.i.i5.i.i, %bb.bov, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i.i, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i6.i.i
  %.sroa.0.034.i.i.i.i.be = phi i32 [ %i.flc, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i6.i.i ], [ %i.fll, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i.i ], [ %i.flp, %._crit_edge.loopexit.i.i.i5.i.i ], [ 1, %bb.bov ]
  br label %.backedge.i.i.i.i

.lr.ph.i24.i.i.i.i:                               ; preds = %.lr.ph.i24.i.i.i.i, %.lr.ph.i24.i.i.i.i.preheader.new
  %niter3686 = phi i32 [ 0, %.lr.ph.i24.i.i.i.i.preheader.new ], [ %niter3686.next.7, %.lr.ph.i24.i.i.i.i ]
  call void @llvm.x86.sse2.pause() #53, !noalias !55387
  call void @llvm.x86.sse2.pause() #53, !noalias !55387
  call void @llvm.x86.sse2.pause() #53, !noalias !55387
  call void @llvm.x86.sse2.pause() #53, !noalias !55387
  call void @llvm.x86.sse2.pause() #53, !noalias !55387
  call void @llvm.x86.sse2.pause() #53, !noalias !55387
  call void @llvm.x86.sse2.pause() #53, !noalias !55387
  call void @llvm.x86.sse2.pause() #53, !noalias !55387
  %niter3686.next.7 = add i32 %niter3686, 8       ; 2 uses
  %niter3686.ncmp.7 = icmp eq i32 %niter3686.next.7, %unroll_iter3685
  br i1 %niter3686.ncmp.7, label %._crit_edge.loopexit.i.i.i5.i.i.unr-lcssa, label %.lr.ph.i24.i.i.i.i

bb.bow:                                           ; preds = %bb.bou
  %i.flq = icmp eq i64 %i.fku, 30
  br i1 %i.flq, label %bb.box, label %bb.bpa

bb.box:                                           ; preds = %bb.bow
  %i.flr = getelementptr inbounds nuw i8, ptr %i.fks, i64 4464 ; 2 uses
  %i.fls = load atomic ptr, ptr %i.flr acquire, align 8, !noalias !55387 ; 2 uses
  %i.flt = icmp eq ptr %i.fls, null
  br i1 %i.flt, label %.lr.ph.i27.i.i.i.i, label %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$9wait_next17haa3469604f35d676E.exit.i.i.i.i"

.lr.ph.i27.i.i.i.i:                               ; preds = %bb.box, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i801
  %.sroa.0.02.i28.i.i.i.i = phi i32 [ %i.flx, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i801 ], [ 0, %bb.box ] ; 6 uses
  %i.flu = icmp ult i32 %.sroa.0.02.i28.i.i.i.i, 7
  br i1 %i.flu, label %bb.boz, label %bb.boy

bb.boy:                                           ; preds = %.lr.ph.i27.i.i.i.i
  invoke void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
          to label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i801 unwind label %.loopexit.split-lp.loopexit

bb.boz:                                           ; preds = %.lr.ph.i27.i.i.i.i
  %.not.i.i.i.i.i.i802 = icmp eq i32 %.sroa.0.02.i28.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i802, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i801, label %.lr.ph.i.i.i.i.i.i803.preheader

.lr.ph.i.i.i.i.i.i803.preheader:                  ; preds = %bb.boz
  %i.flv = mul nuw nsw i32 %.sroa.0.02.i28.i.i.i.i, %.sroa.0.02.i28.i.i.i.i ; 2 uses
  %xtraiter3699 = and i32 %i.flv, 7               ; 3 uses
  %i.flw = icmp ult i32 %.sroa.0.02.i28.i.i.i.i, 3
  br i1 %i.flw, label %.lr.ph.i.i.i.i.i.i803.epil.preheader, label %.lr.ph.i.i.i.i.i.i803.preheader.new

.lr.ph.i.i.i.i.i.i803.preheader.new:              ; preds = %.lr.ph.i.i.i.i.i.i803.preheader
  %unroll_iter3703 = and i32 %i.flv, 56
  br label %.lr.ph.i.i.i.i.i.i803

.lr.ph.i.i.i.i.i.i803:                            ; preds = %.lr.ph.i.i.i.i.i.i803, %.lr.ph.i.i.i.i.i.i803.preheader.new
  %niter3704 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i803.preheader.new ], [ %niter3704.next.7, %.lr.ph.i.i.i.i.i.i803 ]
  call void @llvm.x86.sse2.pause() #53, !noalias !55387
  call void @llvm.x86.sse2.pause() #53, !noalias !55387
  call void @llvm.x86.sse2.pause() #53, !noalias !55387
  call void @llvm.x86.sse2.pause() #53, !noalias !55387
  call void @llvm.x86.sse2.pause() #53, !noalias !55387
  call void @llvm.x86.sse2.pause() #53, !noalias !55387
  call void @llvm.x86.sse2.pause() #53, !noalias !55387
  call void @llvm.x86.sse2.pause() #53, !noalias !55387
  %niter3704.next.7 = add i32 %niter3704, 8       ; 2 uses
  %niter3704.ncmp.7 = icmp eq i32 %niter3704.next.7, %unroll_iter3703
  br i1 %niter3704.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i801.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i803

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i801.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i803
  %lcmp.mod3701.not = icmp eq i32 %xtraiter3699, 0
  br i1 %lcmp.mod3701.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i801, label %.lr.ph.i.i.i.i.i.i803.epil.preheader

.lr.ph.i.i.i.i.i.i803.epil.preheader:             ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i801.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i803.preheader
  %lcmp.mod3702 = icmp ne i32 %xtraiter3699, 0
  call void @llvm.assume(i1 %lcmp.mod3702)
  br label %.lr.ph.i.i.i.i.i.i803.epil

.lr.ph.i.i.i.i.i.i803.epil:                       ; preds = %.lr.ph.i.i.i.i.i.i803.epil, %.lr.ph.i.i.i.i.i.i803.epil.preheader
  %epil.iter3700 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i803.epil.preheader ], [ %epil.iter3700.next, %.lr.ph.i.i.i.i.i.i803.epil ]
  call void @llvm.x86.sse2.pause() #53, !noalias !55387
  %epil.iter3700.next = add i32 %epil.iter3700, 1 ; 2 uses
  %epil.iter3700.cmp.not = icmp eq i32 %epil.iter3700.next, %xtraiter3699
  br i1 %epil.iter3700.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i801, label %.lr.ph.i.i.i.i.i.i803.epil, !llvm.loop !53758

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i801: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i801.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i803.epil, %bb.boy, %bb.boz
  %i.flx = add i32 %.sroa.0.02.i28.i.i.i.i, 1
  %i.fly = load atomic ptr, ptr %i.flr acquire, align 8, !noalias !55387 ; 2 uses
  %i.flz = icmp eq ptr %i.fly, null
  br i1 %i.flz, label %.lr.ph.i27.i.i.i.i, label %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$9wait_next17haa3469604f35d676E.exit.i.i.i.i"

"_ZN3std4sync4mpmc4list14Block$LT$T$GT$9wait_next17haa3469604f35d676E.exit.i.i.i.i": ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i801, %bb.box
  %.lcssa.i.i.i.i.i = phi ptr [ %i.fls, %bb.box ], [ %i.fly, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i801 ] ; 2 uses
  %i.fma = and i64 %.sroa.09.0.i.i2.i.i, -2
  %i.fmb = add i64 %i.fma, 2
  %i.fmc = getelementptr inbounds nuw i8, ptr %.lcssa.i.i.i.i.i, i64 4464
  %i.fmd = load atomic ptr, ptr %i.fmc monotonic, align 8, !noalias !55387
  %i.fme = icmp ne ptr %i.fmd, null
  %i.fmf = zext i1 %i.fme to i64
  %spec.select17.i.i.i.i = or disjoint i64 %i.fmb, %i.fmf
  store atomic ptr %.lcssa.i.i.i.i.i, ptr %i.fkp release, align 8, !noalias !55387
  store atomic i64 %spec.select17.i.i.i.i, ptr %i.azx release, align 128, !noalias !55387
  br label %bb.bpa

bb.bpa:                                           ; preds = %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$9wait_next17haa3469604f35d676E.exit.i.i.i.i", %bb.bow
  %i.fmg = getelementptr inbounds nuw [144 x i8], ptr %i.fks, i64 %i.fku ; 4 uses
  %i.fmh = getelementptr inbounds nuw i8, ptr %i.fmg, i64 136 ; 3 uses
  %i.fmi = load atomic i64, ptr %i.fmh acquire, align 8, !noalias !55388
  %i.fmj = and i64 %i.fmi, 1
  %i.fmk = icmp eq i64 %i.fmj, 0
  br i1 %i.fmk, label %.lr.ph.i.i3.i.i.i, label %"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17h21efa4b359f832b5E.exit.i.i.i.i"

.lr.ph.i.i3.i.i.i:                                ; preds = %bb.bpa, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i5.i.i.i
  %.sroa.0.02.i.i4.i.i.i = phi i32 [ %i.fmo, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i5.i.i.i ], [ 0, %bb.bpa ] ; 6 uses
  %i.fml = icmp ult i32 %.sroa.0.02.i.i4.i.i.i, 7
  br i1 %i.fml, label %bb.bpc, label %bb.bpb

bb.bpb:                                           ; preds = %.lr.ph.i.i3.i.i.i
  invoke void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
          to label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i5.i.i.i unwind label %.loopexit

bb.bpc:                                           ; preds = %.lr.ph.i.i3.i.i.i
  %.not.i.i.i6.i.i.i = icmp eq i32 %.sroa.0.02.i.i4.i.i.i, 0
  br i1 %.not.i.i.i6.i.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i5.i.i.i, label %.lr.ph.i.i.i7.i.i.i.preheader

.lr.ph.i.i.i7.i.i.i.preheader:                    ; preds = %bb.bpc
  %i.fmm = mul nuw nsw i32 %.sroa.0.02.i.i4.i.i.i, %.sroa.0.02.i.i4.i.i.i ; 2 uses
  %xtraiter3705 = and i32 %i.fmm, 7               ; 3 uses
  %i.fmn = icmp ult i32 %.sroa.0.02.i.i4.i.i.i, 3
  br i1 %i.fmn, label %.lr.ph.i.i.i7.i.i.i.epil.preheader, label %.lr.ph.i.i.i7.i.i.i.preheader.new

.lr.ph.i.i.i7.i.i.i.preheader.new:                ; preds = %.lr.ph.i.i.i7.i.i.i.preheader
  %unroll_iter3709 = and i32 %i.fmm, 56
  br label %.lr.ph.i.i.i7.i.i.i

.lr.ph.i.i.i7.i.i.i:                              ; preds = %.lr.ph.i.i.i7.i.i.i, %.lr.ph.i.i.i7.i.i.i.preheader.new
  %niter3710 = phi i32 [ 0, %.lr.ph.i.i.i7.i.i.i.preheader.new ], [ %niter3710.next.7, %.lr.ph.i.i.i7.i.i.i ]
  call void @llvm.x86.sse2.pause() #53, !noalias !55388
  call void @llvm.x86.sse2.pause() #53, !noalias !55388
  call void @llvm.x86.sse2.pause() #53, !noalias !55388
  call void @llvm.x86.sse2.pause() #53, !noalias !55388
  call void @llvm.x86.sse2.pause() #53, !noalias !55388
  call void @llvm.x86.sse2.pause() #53, !noalias !55388
  call void @llvm.x86.sse2.pause() #53, !noalias !55388
  call void @llvm.x86.sse2.pause() #53, !noalias !55388
  %niter3710.next.7 = add i32 %niter3710, 8       ; 2 uses
  %niter3710.ncmp.7 = icmp eq i32 %niter3710.next.7, %unroll_iter3709
  br i1 %niter3710.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i5.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i7.i.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i5.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i7.i.i.i
  %lcmp.mod3707.not = icmp eq i32 %xtraiter3705, 0
  br i1 %lcmp.mod3707.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i5.i.i.i, label %.lr.ph.i.i.i7.i.i.i.epil.preheader

.lr.ph.i.i.i7.i.i.i.epil.preheader:               ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i5.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i7.i.i.i.preheader
  %lcmp.mod3708 = icmp ne i32 %xtraiter3705, 0
  call void @llvm.assume(i1 %lcmp.mod3708)
  br label %.lr.ph.i.i.i7.i.i.i.epil

.lr.ph.i.i.i7.i.i.i.epil:                         ; preds = %.lr.ph.i.i.i7.i.i.i.epil, %.lr.ph.i.i.i7.i.i.i.epil.preheader
  %epil.iter3706 = phi i32 [ 0, %.lr.ph.i.i.i7.i.i.i.epil.preheader ], [ %epil.iter3706.next, %.lr.ph.i.i.i7.i.i.i.epil ]
  call void @llvm.x86.sse2.pause() #53, !noalias !55388
  %epil.iter3706.next = add i32 %epil.iter3706, 1 ; 2 uses
  %epil.iter3706.cmp.not = icmp eq i32 %epil.iter3706.next, %xtraiter3705
  br i1 %epil.iter3706.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i5.i.i.i, label %.lr.ph.i.i.i7.i.i.i.epil, !llvm.loop !53761

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i5.i.i.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i5.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i7.i.i.i.epil, %bb.bpb, %bb.bpc
  %i.fmo = add i32 %.sroa.0.02.i.i4.i.i.i, 1
  %i.fmp = load atomic i64, ptr %i.fmh acquire, align 8, !noalias !55388
  %i.fmq = and i64 %i.fmp, 1
  %i.fmr = icmp eq i64 %i.fmq, 0
  br i1 %i.fmr, label %.lr.ph.i.i3.i.i.i, label %"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17h21efa4b359f832b5E.exit.i.i.i.i"

"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17h21efa4b359f832b5E.exit.i.i.i.i": ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i5.i.i.i, %bb.bpa
  %.sroa.015.0.copyload.i.i.i = load i64, ptr %i.fmg, align 8, !noalias !55388 ; 2 uses
  %.sroa.416.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.fmg, i64 8
  %.sroa.416.i.i.sroa.0.0.copyload.i = load i8, ptr %.sroa.416.0..sroa_idx.i.i.i, align 8, !noalias !55389
  %.sroa.416.i.i.sroa.4.0..sroa.416.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fmg, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(127) %.sroa.416.i.i.sroa.4.i, ptr noundef nonnull align 1 dereferenceable(127) %.sroa.416.i.i.sroa.4.0..sroa.416.0..sroa_idx.i.i.sroa_idx.i, i64 127, i1 false), !noalias !55389
  %i.fms = add nuw nsw i64 %i.fku, 1              ; 2 uses
  %i.fmt = icmp eq i64 %i.fms, 31
  br i1 %i.fmt, label %.lr.ph.i2.i.i.i.i, label %bb.bpd

bb.bpd:                                           ; preds = %"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17h21efa4b359f832b5E.exit.i.i.i.i"
  %i.fmu = atomicrmw or ptr %i.fmh, i64 2 acq_rel, align 8, !noalias !55388
  %i.fmv = and i64 %i.fmu, 4
  %i.fmw = icmp eq i64 %i.fmv, 0
  br i1 %i.fmw, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4read17h06c509f76efcb8d0E.exit.i.i.i", label %bb.bph

.lr.ph.i2.i.i.i.i:                                ; preds = %"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17h21efa4b359f832b5E.exit.i.i.i.i", %bb.bpg
  %.sroa.0.04.i.i.i.i.i = phi i64 [ %i.fnf, %bb.bpg ], [ 0, %"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17h21efa4b359f832b5E.exit.i.i.i.i" ] ; 3 uses
  %i.fmx = getelementptr inbounds nuw [144 x i8], ptr %i.fks, i64 %.sroa.0.04.i.i.i.i.i
  %i.fmy = getelementptr inbounds nuw i8, ptr %i.fmx, i64 136 ; 2 uses
  %i.fmz = load atomic i64, ptr %i.fmy acquire, align 8, !noalias !55388
  %i.fna = and i64 %i.fmz, 2
  %i.fnb = icmp eq i64 %i.fna, 0
  br i1 %i.fnb, label %bb.bpe, label %.lr.ph.i2.i.i.i.i.1

bb.bpe:                                           ; preds = %.lr.ph.i2.i.i.i.i
  %i.fnc = atomicrmw or ptr %i.fmy, i64 4 acq_rel, align 8, !noalias !55388
  %i.fnd = and i64 %i.fnc, 2
  %i.fne = icmp eq i64 %i.fnd, 0
  br i1 %i.fne, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4read17h06c509f76efcb8d0E.exit.i.i.i", label %.lr.ph.i2.i.i.i.i.1

.lr.ph.i2.i.i.i.i.1:                              ; preds = %bb.bpe, %.lr.ph.i2.i.i.i.i
  %i.fnf = add nuw nsw i64 %.sroa.0.04.i.i.i.i.i, 2 ; 2 uses
  %i.fng = getelementptr inbounds nuw [144 x i8], ptr %i.fks, i64 %.sroa.0.04.i.i.i.i.i
  %i.fnh = getelementptr inbounds nuw i8, ptr %i.fng, i64 280 ; 2 uses
  %i.fni = load atomic i64, ptr %i.fnh acquire, align 8, !noalias !55388
  %i.fnj = and i64 %i.fni, 2
  %i.fnk = icmp eq i64 %i.fnj, 0
  br i1 %i.fnk, label %bb.bpf, label %bb.bpg

bb.bpf:                                           ; preds = %.lr.ph.i2.i.i.i.i.1
  %i.fnl = atomicrmw or ptr %i.fnh, i64 4 acq_rel, align 8, !noalias !55388
  %i.fnm = and i64 %i.fnl, 2
  %i.fnn = icmp eq i64 %i.fnm, 0
  br i1 %i.fnn, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4read17h06c509f76efcb8d0E.exit.i.i.i", label %bb.bpg

bb.bpg:                                           ; preds = %bb.bpf, %.lr.ph.i2.i.i.i.i.1
  %exitcond.not.i.i2.i.i.i.1 = icmp eq i64 %i.fnf, 30
  br i1 %exitcond.not.i.i2.i.i.i.1, label %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$7destroy17h45f23f2132134e59E.exit.sink.split.i.i.i.i", label %.lr.ph.i2.i.i.i.i

bb.bph:                                           ; preds = %bb.bpd
  %i.fno = icmp samesign ult i64 %i.fku, 29
  br i1 %i.fno, label %.lr.ph.i4.i.i.i.i, label %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$7destroy17h45f23f2132134e59E.exit.sink.split.i.i.i.i"

.lr.ph.i4.i.i.i.i:                                ; preds = %bb.bph, %bb.bpj
  %.sroa.0.04.i5.i.i.i.i = phi i64 [ %i.fnp, %bb.bpj ], [ %i.fms, %bb.bph ] ; 2 uses
  %i.fnp = add nuw nsw i64 %.sroa.0.04.i5.i.i.i.i, 1 ; 2 uses
  %i.fnq = getelementptr inbounds nuw [144 x i8], ptr %i.fks, i64 %.sroa.0.04.i5.i.i.i.i
  %i.fnr = getelementptr inbounds nuw i8, ptr %i.fnq, i64 136 ; 2 uses
  %i.fns = load atomic i64, ptr %i.fnr acquire, align 8, !noalias !55388
  %i.fnt = and i64 %i.fns, 2
  %i.fnu = icmp eq i64 %i.fnt, 0
  br i1 %i.fnu, label %bb.bpi, label %bb.bpj

bb.bpi:                                           ; preds = %.lr.ph.i4.i.i.i.i
  %i.fnv = atomicrmw or ptr %i.fnr, i64 4 acq_rel, align 8, !noalias !55388
  %i.fnw = and i64 %i.fnv, 2
  %i.fnx = icmp eq i64 %i.fnw, 0
  br i1 %i.fnx, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4read17h06c509f76efcb8d0E.exit.i.i.i", label %bb.bpj

bb.bpj:                                           ; preds = %bb.bpi, %.lr.ph.i4.i.i.i.i
  %exitcond.not.i6.i.i.i.i = icmp eq i64 %i.fnp, 30
  br i1 %exitcond.not.i6.i.i.i.i, label %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$7destroy17h45f23f2132134e59E.exit.sink.split.i.i.i.i", label %.lr.ph.i4.i.i.i.i

"_ZN3std4sync4mpmc4list14Block$LT$T$GT$7destroy17h45f23f2132134e59E.exit.sink.split.i.i.i.i": ; preds = %bb.bpj, %bb.bpg, %bb.bph
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fks, i64 noundef 4472, i64 noundef 8) #53, !noalias !55388
  br label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4read17h06c509f76efcb8d0E.exit.i.i.i"

"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4read17h06c509f76efcb8d0E.exit.i.i.i": ; preds = %bb.bpi, %bb.bpe, %bb.bpf, %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$7destroy17h45f23f2132134e59E.exit.sink.split.i.i.i.i", %bb.bpd
  %i.fny = icmp eq i64 %.sroa.015.0.copyload.i.i.i, -9223372036854775796
  br i1 %i.fny, label %"_ZN3std4sync4mpmc17Receiver$LT$T$GT$8try_recv17ha13e1fee9ae91deeE.exit.i.thread", label %switch.lookup3210

switch.lookup3210:                                ; preds = %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4read17h06c509f76efcb8d0E.exit.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(127) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(127) %.sroa.416.i.i.sroa.4.i, i64 127, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.416.i.i.sroa.4.i)
  store i64 %.sroa.015.0.copyload.i.i.i, ptr %i.wz, align 8
  store i8 %.sroa.416.i.i.sroa.0.0.copyload.i, ptr %.sroa.71035.0..sroa_idx, align 8
  invoke fastcc void @_ZN6nickel5error5Error6report17hd38b20d7008e00bfE(ptr noalias noundef readonly align 8 captures(address) dereferenceable(136) %i.wz, i8 noundef %.sroa.769.093.i.i.i, i8 noundef %switch.masked3214)
          to label %bb.boj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

"_ZN3std4sync4mpmc17Receiver$LT$T$GT$8try_recv17ha13e1fee9ae91deeE.exit.i.thread": ; preds = %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4read17h06c509f76efcb8d0E.exit.i.i.i", %bb.boo
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.416.i.i.sroa.4.i)
  invoke fastcc void @"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$nickel..error..Warning$GT$$GT$17he77c92a61df2f3a5E"(ptr noalias noundef align 8 dereferenceable(24) %i.xe)
          to label %bb.bpk unwind label %.loopexit.split-lp1142

bb.bpk:                                           ; preds = %"_ZN3std4sync4mpmc17Receiver$LT$T$GT$8try_recv17ha13e1fee9ae91deeE.exit.i.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.xe)
  invoke fastcc void @"_ZN4core3ptr50drop_in_place$LT$nickel..global..GlobalContext$GT$17ha4627b26c1a2078eE"(ptr noalias noundef align 8 dereferenceable(72) %i.xn)
          to label %bb.bpl unwind label %bb.nz

bb.bpl:                                           ; preds = %bb.bpk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.xn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.xo)
  ret i8 %.sroa.01.0

bb.bpm:                                           ; preds = %.body
  br i1 %.sroa.03.0, label %bb.bpw, label %common.resume

bb.bpn:                                           ; preds = %.body
  br i1 %.sroa.04.0, label %bb.bpx, label %common.resume

bb.bpo:                                           ; preds = %.body
  br i1 %.sroa.05.0, label %bb.bpy, label %common.resume

bb.bpp:                                           ; preds = %.body
  br i1 %.sroa.06.0, label %bb.bpz, label %common.resume

bb.bpq:                                           ; preds = %.body
  br i1 %.sroa.07.0, label %bb.bqa, label %common.resume

bb.bpr:                                           ; preds = %.body
  br i1 %.sroa.08.0, label %bb.bqb, label %common.resume

bb.bps:                                           ; preds = %.body
  br i1 %.sroa.09.0, label %bb.bqc, label %common.resume

bb.bpt:                                           ; preds = %.body
  br i1 %.sroa.010.0, label %bb.bqe, label %common.resume

bb.bpu:                                           ; preds = %.body
  br i1 %.sroa.011.0, label %bb.bqf, label %common.resume

bb.bpv:                                           ; preds = %.body
  br i1 %.sroa.012.0, label %bb.bqg, label %common.resume

bb.bpw:                                           ; preds = %bb.bpm
  call fastcc void @"_ZN4core3ptr117drop_in_place$LT$nickel..input..InputOptions$LT$nickel..customize..CustomizeMode$C$nickel..input..StdinFormat$GT$$GT$17h8a4d4fd7f61c1ae8E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(176) %.sroa.6.0..sroa_idx2.i)
  br label %common.resume

bb.bpx:                                           ; preds = %bb.bpn
  call fastcc void @"_ZN4core3ptr118drop_in_place$LT$nickel..input..InputOptions$LT$nickel..customize..NoCustomizeMode$C$nickel..input..NickelOnly$GT$$GT$17hed0cd2aa86cbb978E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(128) %.sroa.6.0..sroa_idx2.i)
  br label %common.resume

bb.bpy:                                           ; preds = %bb.bpo
  call fastcc void @"_ZN4core3ptr50drop_in_place$LT$nickel..export..ExportCommand$GT$17h855c55b6233aaa17E"(ptr noalias noundef align 8 dereferenceable(208) %i.xo) #61
  br label %common.resume

bb.bpz:                                           ; preds = %bb.bpp
  call fastcc void @"_ZN4core3ptr48drop_in_place$LT$nickel..query..QueryCommand$GT$17h3ed77bf23e807b22E"(ptr noalias noundef align 8 dereferenceable(184) %.sroa.6.0..sroa_idx2.i) #61
  br label %common.resume

bb.bqa:                                           ; preds = %bb.bpq
  call fastcc void @"_ZN4core3ptr118drop_in_place$LT$nickel..input..InputOptions$LT$nickel..customize..NoCustomizeMode$C$nickel..input..NickelOnly$GT$$GT$17hed0cd2aa86cbb978E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(128) %.sroa.6.0..sroa_idx2.i)
  br label %common.resume

end_hunk_9
