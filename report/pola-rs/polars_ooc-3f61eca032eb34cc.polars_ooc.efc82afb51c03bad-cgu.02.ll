Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_ooc-3f61eca032eb34cc.polars_ooc.efc82afb51c03bad-cgu.02?download=true
inline.NumInlined: 811
inline.NumDeleted: 338
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE20disconnect_receiversB10_:bb.a
.lr.ph.i.i.preheader:                             ; preds = %bb.i
  %i.aj = mul nuw i32 %.sroa.0.07.i, %.sroa.0.07.i, !dbg !10331 ; 2 uses
  %xtraiter = and i32 %i.aj, 7, !dbg !10330       ; 3 uses
  %i.ak = icmp ult i32 %.sroa.0.07.i, 3, !dbg !10330
  br i1 %i.ak, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new, !dbg !10330

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.aj, 56, !dbg !10330
  br label %.lr.ph.i.i, !dbg !10330

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !dbg !10333
  tail call void @llvm.x86.sse2.pause(), !dbg !10333
  tail call void @llvm.x86.sse2.pause(), !dbg !10333
  tail call void @llvm.x86.sse2.pause(), !dbg !10333
  tail call void @llvm.x86.sse2.pause(), !dbg !10333
  tail call void @llvm.x86.sse2.pause(), !dbg !10333
  tail call void @llvm.x86.sse2.pause(), !dbg !10333
  tail call void @llvm.x86.sse2.pause(), !dbg !10333
  %niter.next.7 = add i32 %niter, 8, !dbg !10330  ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter, !dbg !10330
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !dbg !10330

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !10330
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader, !dbg !10330

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod2 = icmp ne i32 %xtraiter, 0, !dbg !10330
  tail call void @llvm.assume(i1 %lcmp.mod2), !dbg !10330
  br label %.lr.ph.i.i.epil, !dbg !10330

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !dbg !10333
  %epil.iter.next = add i32 %epil.iter, 1, !dbg !10330 ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter, !dbg !10330
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !dbg !10330, !llvm.loop !10336

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.i, %bb.h
  %i.al = add i32 %.sroa.0.07.i, 1, !dbg !10337
  br label %bb.j, !dbg !10338

bb.j:                                             ; preds = %bb.l, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.18.i = phi i32 [ %.sroa.0.07.i, %bb.l ], [ %i.al, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], !dbg !10339
  %.sroa.0.1.i = phi i64 [ %.sroa.05.0.i, %bb.l ], [ %.sroa.0.0.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], !dbg !10291
  %.pre.i = load i64, ptr %i.a, align 16, !dbg !10287
  br label %bb.d, !dbg !10284

bb.k:                                             ; preds = %bb.f
  %i.am = load i64, ptr %i.m, align 8, !dbg !10340, !noundef !13
  %i.an = add i64 %i.am, %i.v, !dbg !10341
  br label %bb.l, !dbg !10344

bb.l:                                             ; preds = %bb.k, %bb.f
  %.sroa.05.0.i = phi i64 [ %i.an, %bb.k ], [ %i.ab, %bb.f ], !dbg !10345
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestEBK_(ptr noalias noundef align 8 dereferenceable(32) %i.z), !dbg !10346
  br label %bb.j, !dbg !10338

_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE20discard_all_messagesB10_.exit: ; preds = %bb.e
  ret i1 %i.g, !dbg !10349
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4recvB10_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 128 %1, i64 %2, i32 noundef range(i32 0, 1000000001) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !10350 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.4 = alloca [24 x i8], align 8            ; 2 uses
  %i.i = alloca [40 x i8], align 8                ; 8 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  store i64 %2, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store i32 %3, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !10351
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !10352
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 384
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.s = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, i8 0, i64 40, i1 false), !dbg !10352
  br label %bb.b, !dbg !10354

bb.b:                                             ; preds = %_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4recvs_0uEB1C_.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !10356), !dbg !10359
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, !dbg !10360

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, %bb.b
  %.sroa.0.028.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.028.i.be, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge ], !dbg !10365 ; 14 uses
  %i.u = load atomic i64, ptr %1 monotonic, align 128, !dbg !10366, !noalias !10356 ; 7 uses
  %i.v = load i64, ptr %i.m, align 16, !dbg !10370, !noalias !10356, !noundef !13
  %i.w = add i64 %i.v, -1, !dbg !10371
  %i.x = and i64 %i.w, %i.u, !dbg !10372          ; 3 uses
  %i.y = load i64, ptr %i.n, align 8, !dbg !10373, !noalias !10356, !noundef !13
  %i.z = sub i64 0, %i.y, !dbg !10375
  %i.aa = and i64 %i.u, %i.z, !dbg !10376
  %i.ab = load ptr, ptr %i.o, align 8, !dbg !10377, !noalias !10356, !nonnull !13, !noundef !13
  %i.ac = load i64, ptr %i.p, align 32, !dbg !10377, !noalias !10356, !noundef !13
  %i.ad = icmp ult i64 %i.x, %i.ac, !dbg !10379
  call void @llvm.assume(i1 %i.ad), !dbg !10384
  %i.ae = getelementptr inbounds nuw [40 x i8], ptr %i.ab, i64 %i.x, !dbg !10385 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32, !dbg !10386
  %i.ag = load atomic i64, ptr %i.af acquire, align 8, !dbg !10395, !noalias !10356 ; 3 uses
  %i.ah = add i64 %i.u, 1, !dbg !10397
  %i.ai = icmp eq i64 %i.ah, %i.ag, !dbg !10397
  br i1 %i.ai, label %bb.d, label %bb.c, !dbg !10397

bb.c:                                             ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i
  %i.aj = icmp eq i64 %i.ag, %i.u, !dbg !10399
  br i1 %i.aj, label %bb.h, label %bb.e, !dbg !10399

bb.d:                                             ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i
  %i.ak = add nuw i64 %i.x, 1, !dbg !10400
  %i.al = load i64, ptr %i.r, align 128, !dbg !10401, !noalias !10356, !noundef !13
  %i.am = icmp ult i64 %i.ak, %i.al, !dbg !10400
  br i1 %i.am, label %bb.l, label %bb.k, !dbg !10400

bb.e:                                             ; preds = %bb.c
  %i.an = icmp ult i32 %.sroa.0.028.i, 7, !dbg !10402
  br i1 %i.an, label %bb.g, label %bb.f, !dbg !10402

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now(), !dbg !10404, !noalias !10356
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, !dbg !10404

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.sroa.0.028.i, 0, !dbg !10405
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader, !dbg !10409

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.ao = mul nuw i32 %.sroa.0.028.i, %.sroa.0.028.i, !dbg !10410 ; 2 uses
  %xtraiter = and i32 %i.ao, 7, !dbg !10409       ; 3 uses
  %i.ap = icmp ult i32 %.sroa.0.028.i, 3, !dbg !10409
  br i1 %i.ap, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new, !dbg !10409

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.ao, 56, !dbg !10409
  br label %.lr.ph.i.i, !dbg !10409

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !dbg !10412, !noalias !10356
  call void @llvm.x86.sse2.pause(), !dbg !10412, !noalias !10356
  call void @llvm.x86.sse2.pause(), !dbg !10412, !noalias !10356
  call void @llvm.x86.sse2.pause(), !dbg !10412, !noalias !10356
  call void @llvm.x86.sse2.pause(), !dbg !10412, !noalias !10356
  call void @llvm.x86.sse2.pause(), !dbg !10412, !noalias !10356
  call void @llvm.x86.sse2.pause(), !dbg !10412, !noalias !10356
  call void @llvm.x86.sse2.pause(), !dbg !10412, !noalias !10356
  %niter.next.7 = add i32 %niter, 8, !dbg !10409  ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter, !dbg !10409
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !dbg !10409

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !10409
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader, !dbg !10409

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod70 = icmp ne i32 %xtraiter, 0, !dbg !10409
  call void @llvm.assume(i1 %lcmp.mod70), !dbg !10409
  br label %.lr.ph.i.i.epil, !dbg !10409

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !10412, !noalias !10356
  %epil.iter.next = add i32 %epil.iter, 1, !dbg !10409 ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter, !dbg !10409
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !dbg !10409, !llvm.loop !10415

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.g, %bb.f
  %i.aq = add i32 %.sroa.0.028.i, 1, !dbg !10416
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, !dbg !10417

bb.h:                                             ; preds = %bb.c
  fence seq_cst, !dbg !10418
  %i.ar = load atomic i64, ptr %i.q monotonic, align 128, !dbg !10420, !noalias !10356 ; 2 uses
  %i.as = load i64, ptr %i.m, align 16, !dbg !10423, !noalias !10356, !noundef !13 ; 2 uses
  %i.at = xor i64 %i.as, -1, !dbg !10425
  %i.au = and i64 %i.ar, %i.at, !dbg !10426
  %i.av = icmp eq i64 %i.au, %i.u, !dbg !10426
  br i1 %i.av, label %bb.j, label %bb.i, !dbg !10426

bb.i:                                             ; preds = %bb.h
  %.sroa.0.0.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.028.i, i32 6), !dbg !10427 ; 2 uses
  %4 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i, !dbg !10431 ; 2 uses
  %.not.i11.i = icmp eq i32 %.sroa.0.028.i, 0, !dbg !10434
  br i1 %.not.i11.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, label %.lr.ph.i12.i.preheader, !dbg !10443

.lr.ph.i12.i.preheader:                           ; preds = %bb.i
  %xtraiter71 = and i32 %4, 5, !dbg !10443        ; 3 uses
  %i.aw = icmp ult i32 %.sroa.0.028.i, 3, !dbg !10443
  br i1 %i.aw, label %.lr.ph.i12.i.epil.preheader, label %.lr.ph.i12.i.preheader.new, !dbg !10443

.lr.ph.i12.i.preheader.new:                       ; preds = %.lr.ph.i12.i.preheader
  %unroll_iter75 = and i32 %4, 56, !dbg !10443
  br label %.lr.ph.i12.i, !dbg !10443

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i12.i
  %lcmp.mod73.not = icmp eq i32 %xtraiter71, 0, !dbg !10443
  br i1 %lcmp.mod73.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil.preheader, !dbg !10443

.lr.ph.i12.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i12.i.preheader
  %lcmp.mod74 = icmp ne i32 %xtraiter71, 0, !dbg !10443
  call void @llvm.assume(i1 %lcmp.mod74), !dbg !10443
  br label %.lr.ph.i12.i.epil, !dbg !10443

.lr.ph.i12.i.epil:                                ; preds = %.lr.ph.i12.i.epil, %.lr.ph.i12.i.epil.preheader
  %epil.iter72 = phi i32 [ 0, %.lr.ph.i12.i.epil.preheader ], [ %epil.iter72.next, %.lr.ph.i12.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !10444, !noalias !10356
  %epil.iter72.next = add i32 %epil.iter72, 1, !dbg !10443 ; 2 uses
  %epil.iter72.cmp.not = icmp eq i32 %epil.iter72.next, %xtraiter71, !dbg !10443
  br i1 %epil.iter72.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil, !dbg !10443, !llvm.loop !10449

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i12.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ax = add i32 %.sroa.0.028.i, 1, !dbg !10450
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, !dbg !10451

.lr.ph.i12.i:                                     ; preds = %.lr.ph.i12.i, %.lr.ph.i12.i.preheader.new
  %niter76 = phi i32 [ 0, %.lr.ph.i12.i.preheader.new ], [ %niter76.next.7, %.lr.ph.i12.i ]
  call void @llvm.x86.sse2.pause(), !dbg !10444, !noalias !10356
  call void @llvm.x86.sse2.pause(), !dbg !10444, !noalias !10356
  call void @llvm.x86.sse2.pause(), !dbg !10444, !noalias !10356
  call void @llvm.x86.sse2.pause(), !dbg !10444, !noalias !10356
  call void @llvm.x86.sse2.pause(), !dbg !10444, !noalias !10356
  call void @llvm.x86.sse2.pause(), !dbg !10444, !noalias !10356
  call void @llvm.x86.sse2.pause(), !dbg !10444, !noalias !10356
  call void @llvm.x86.sse2.pause(), !dbg !10444, !noalias !10356
  %niter76.next.7 = add i32 %niter76, 8, !dbg !10443 ; 2 uses
  %niter76.ncmp.7 = icmp eq i32 %niter76.next.7, %unroll_iter75, !dbg !10443
  br i1 %niter76.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i12.i, !dbg !10443

bb.j:                                             ; preds = %bb.h
  %i.ay = and i64 %i.as, %i.ar, !dbg !10454
  %i.az = icmp eq i64 %i.ay, 0, !dbg !10454
  br i1 %i.az, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_recvB10_.exit, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4readB10_.exit.thread, !dbg !10454

bb.k:                                             ; preds = %bb.d
  %i.ba = load i64, ptr %i.n, align 8, !dbg !10455, !noalias !10356, !noundef !13
  %i.bb = add i64 %i.ba, %i.aa, !dbg !10456
  br label %bb.l, !dbg !10459

bb.l:                                             ; preds = %bb.k, %bb.d
  %.sroa.01.0.i = phi i64 [ %i.bb, %bb.k ], [ %i.ag, %bb.d ], !dbg !10460
  %i.bc = cmpxchg weak ptr %1, i64 %i.u, i64 %.sroa.01.0.i seq_cst monotonic, align 8, !dbg !10461, !noalias !10356
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.bc, 1, !dbg !10466
  br i1 %.sroa.18.0.in.i.i, label %bb.n, label %bb.m, !dbg !10467

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.i.i15.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.028.i, i32 6), !dbg !10468 ; 2 uses
  %5 = mul nuw nsw i32 %.sroa.0.0.i.i15.i, %.sroa.0.0.i.i15.i, !dbg !10471 ; 2 uses
  %.not.i16.i = icmp eq i32 %.sroa.0.028.i, 0, !dbg !10473
  br i1 %.not.i16.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, label %.lr.ph.i17.i.preheader, !dbg !10477

.lr.ph.i17.i.preheader:                           ; preds = %bb.m
  %xtraiter77 = and i32 %5, 5, !dbg !10477        ; 3 uses
  %i.bd = icmp ult i32 %.sroa.0.028.i, 3, !dbg !10477
  br i1 %i.bd, label %.lr.ph.i17.i.epil.preheader, label %.lr.ph.i17.i.preheader.new, !dbg !10477

.lr.ph.i17.i.preheader.new:                       ; preds = %.lr.ph.i17.i.preheader
  %unroll_iter81 = and i32 %5, 56, !dbg !10477
  br label %.lr.ph.i17.i, !dbg !10477

._crit_edge.loopexit.i20.i.unr-lcssa:             ; preds = %.lr.ph.i17.i
  %lcmp.mod79.not = icmp eq i32 %xtraiter77, 0, !dbg !10477
  br i1 %lcmp.mod79.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil.preheader, !dbg !10477

.lr.ph.i17.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i20.i.unr-lcssa, %.lr.ph.i17.i.preheader
  %lcmp.mod80 = icmp ne i32 %xtraiter77, 0, !dbg !10477
  call void @llvm.assume(i1 %lcmp.mod80), !dbg !10477
  br label %.lr.ph.i17.i.epil, !dbg !10477

.lr.ph.i17.i.epil:                                ; preds = %.lr.ph.i17.i.epil, %.lr.ph.i17.i.epil.preheader
  %epil.iter78 = phi i32 [ 0, %.lr.ph.i17.i.epil.preheader ], [ %epil.iter78.next, %.lr.ph.i17.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !10478, !noalias !10356
  %epil.iter78.next = add i32 %epil.iter78, 1, !dbg !10477 ; 2 uses
  %epil.iter78.cmp.not = icmp eq i32 %epil.iter78.next, %xtraiter77, !dbg !10477
  br i1 %epil.iter78.cmp.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil, !dbg !10477, !llvm.loop !10481

._crit_edge.loopexit.i20.i:                       ; preds = %.lr.ph.i17.i.epil, %._crit_edge.loopexit.i20.i.unr-lcssa
  %i.be = add i32 %.sroa.0.028.i, 1, !dbg !10482
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, !dbg !10483

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge: ; preds = %._crit_edge.loopexit.i20.i, %bb.m, %._crit_edge.loopexit.i.i, %bb.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.028.i.be = phi i32 [ %i.aq, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 1, %bb.m ], [ %i.be, %._crit_edge.loopexit.i20.i ], [ %i.ax, %._crit_edge.loopexit.i.i ], [ 1, %bb.i ]
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, !dbg !10366

.lr.ph.i17.i:                                     ; preds = %.lr.ph.i17.i, %.lr.ph.i17.i.preheader.new
  %niter82 = phi i32 [ 0, %.lr.ph.i17.i.preheader.new ], [ %niter82.next.7, %.lr.ph.i17.i ]
  call void @llvm.x86.sse2.pause(), !dbg !10478, !noalias !10356
  call void @llvm.x86.sse2.pause(), !dbg !10478, !noalias !10356
  call void @llvm.x86.sse2.pause(), !dbg !10478, !noalias !10356
  call void @llvm.x86.sse2.pause(), !dbg !10478, !noalias !10356
  call void @llvm.x86.sse2.pause(), !dbg !10478, !noalias !10356
  call void @llvm.x86.sse2.pause(), !dbg !10478, !noalias !10356
  call void @llvm.x86.sse2.pause(), !dbg !10478, !noalias !10356
  call void @llvm.x86.sse2.pause(), !dbg !10478, !noalias !10356
  %niter82.next.7 = add i32 %niter82, 8, !dbg !10477 ; 2 uses
  %niter82.ncmp.7 = icmp eq i32 %niter82.next.7, %unroll_iter81, !dbg !10477
  br i1 %niter82.ncmp.7, label %._crit_edge.loopexit.i20.i.unr-lcssa, label %.lr.ph.i17.i, !dbg !10477

_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_recvB10_.exit: ; preds = %bb.j
  %i.bf = load i32, ptr %i.k, align 8, !dbg !10485, !range !3629, !noundef !13 ; 2 uses
  %.not = icmp eq i32 %i.bf, 1000000000, !dbg !10485
  br i1 %.not, label %bb.r, label %bb.q, !dbg !10487

bb.n:                                             ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store ptr %i.ae, ptr %i.i, align 8, !dbg !10488, !alias.scope !10356
  %i.bh = load i64, ptr %i.n, align 8, !dbg !10489, !noalias !10356, !noundef !13
  %i.bi = add i64 %i.bh, %i.u, !dbg !10490        ; 2 uses
  store i64 %i.bi, ptr %i.l, align 8, !dbg !10492, !alias.scope !10356
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !10493, !noalias !10496
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !10499
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 32, i1 false), !dbg !10501, !noalias !10496
  store atomic i64 %i.bi, ptr %i.bg release, align 8, !dbg !10506, !noalias !10496
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !dbg !10511, !noalias !10496
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !10512
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 256, !dbg !10513
  invoke fastcc void @_RNvMs0_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bj)
          to label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4readB10_.exit unwind label %bb.o, !dbg !10515, !noalias !10496

bb.o:                                             ; preds = %bb.n
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestEBK_(ptr noalias noundef align 8 dereferenceable(32) %i.h) #27
          to label %common.resume unwind label %bb.p, !dbg !10516, !noalias !10496

bb.p:                                             ; preds = %bb.o
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #25, !dbg !10517, !noalias !10496
  unreachable, !dbg !10517

common.resume:                                    ; preds = %bb.t, %bb.u, %bb.ac, %bb.ad, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.bk, %bb.o ], [ %i.bx, %bb.t ], [ %i.cj, %bb.ac ], [ %i.bx, %bb.u ], [ %i.cj, %bb.ad ]
  resume { ptr, i32 } %common.resume.op, !dbg !10518

_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4readB10_.exit: ; preds = %bb.n
  %.sroa.0.0.copyload2 = load i64, ptr %i.h, align 8, !dbg !10519 ; 2 uses
  %.sroa.4.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !10519
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx3, i64 24, i1 false), !dbg !10519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !10516, !noalias !10496
  %i.bm = icmp eq i64 %.sroa.0.0.copyload2, -9223372036854775806, !dbg !10520
  br i1 %i.bm, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4readB10_.exit.thread, label %bb.ah, !dbg !10524

bb.q:                                             ; preds = %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_recvB10_.exit
  %i.bn = load i64, ptr %i.j, align 8, !dbg !10525, !noundef !13 ; 2 uses
  %i.bo = call { i64, i32 } @_RNvMNtCsh8eZTKRCwoO_3std4timeNtB2_7Instant3now(), !dbg !10526 ; 2 uses
  %i.bp = extractvalue { i64, i32 } %i.bo, 0, !dbg !10526 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, %i.bn, !dbg !10527
  br i1 %i.bq, label %.split, label %bb.ae, !dbg !10527

bb.r:                                             ; preds = %.split, %bb.ae, %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_recvB10_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !10535, !noalias !10538
  store ptr %i.i, ptr %i.f, align 8, !dbg !10541
  store ptr %1, ptr %.sroa.45.0..sroa_idx, align 8, !dbg !10541
  store ptr %i.j, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !10541
  %i.br = load i8, ptr %i.t, align 8, !dbg !10542, !range !8219, !noalias !10551, !noundef !13
  %i.bs = icmp eq i8 %i.br, 1, !dbg !10558
  br i1 %i.bs, label %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCskAlUH1kY1DR_10polars_ooc.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCskAlUH1kY1DR_10polars_ooc.exit.i.i, !dbg !10558, !prof !465

_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCskAlUH1kY1DR_10polars_ooc.exit.i.i: ; preds = %bb.r
  %i.bt = call noundef ptr @_RINvMs0_NtNtNtNtCsh8eZTKRCwoO_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscgRAwXFJnXP_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECskAlUH1kY1DR_10polars_ooc(ptr noundef nonnull align 8 %i.s, ptr noalias noundef align 8 dereferenceable_or_null(16) null), !dbg !10559, !noalias !10538 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null, !dbg !10560
  br i1 %i.bu, label %_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4recvs_0uEs_0uEB3w_.exit.i, label %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCskAlUH1kY1DR_10polars_ooc.exit.thread.i.i, !dbg !10560

_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCskAlUH1kY1DR_10polars_ooc.exit.thread.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCskAlUH1kY1DR_10polars_ooc.exit.i.i, %bb.r
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.bt, %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCskAlUH1kY1DR_10polars_ooc.exit.i.i ], [ %i.s, %bb.r ] ; 4 uses
  %i.bv = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !dbg !10563, !noalias !10538, !noundef !13 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !dbg !10573, !noalias !10538
  %.not.i.i.i = icmp eq ptr %i.bv, null, !dbg !10575
  br i1 %.not.i.i.i, label %bb.s, label %bb.y, !dbg !10576, !prof !77

bb.s:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCskAlUH1kY1DR_10polars_ooc.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !10577, !noalias !10538
  %i.bw = call noundef nonnull ptr @_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB2_7Context3new(), !dbg !10577, !noalias !10538 ; 4 uses
  store ptr %i.bw, ptr %i.e, align 8, !dbg !10577, !noalias !10538
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !10578, !noalias !10538
  store ptr %i.i, ptr %i.c, align 8, !dbg !10579, !noalias !10538
  store ptr %1, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8, !dbg !10579
  store ptr %i.j, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx, align 8, !dbg !10579
  invoke fastcc void @_RNCNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB6_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4recvs_0B12_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.bw)
          to label %bb.v unwind label %bb.t, !dbg !10584, !noalias !10538

bb.t:                                             ; preds = %bb.s
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.by = atomicrmw sub ptr %i.bw, i64 1 release, align 8, !dbg !10586, !noalias !10592
  %i.bz = icmp eq i64 %i.by, 1, !dbg !10599
  br i1 %i.bz, label %bb.u, label %common.resume, !dbg !10599

bb.u:                                             ; preds = %bb.t
  fence acquire, !dbg !10600
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerE9drop_slowCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.e) #26
          to label %common.resume unwind label %bb.x, !dbg !10602, !noalias !10538

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !10578, !noalias !10538
  %i.ca = atomicrmw sub ptr %i.bw, i64 1 release, align 8, !dbg !10603, !noalias !10609
  %i.cb = icmp eq i64 %i.ca, 1, !dbg !10616
  br i1 %i.cb, label %bb.w, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc.exit19.i.i.i, !dbg !10616

bb.w:                                             ; preds = %bb.v
  fence acquire, !dbg !10617
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerE9drop_slowCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.e) #26, !dbg !10619, !noalias !10538
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc.exit19.i.i.i, !dbg !10619

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc.exit19.i.i.i: ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !10620, !noalias !10538
  br label %_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4recvs_0uEB1C_.exit, !dbg !10620

bb.x:                                             ; preds = %bb.ad, %bb.u
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #25, !dbg !10621, !noalias !10538
  unreachable, !dbg !10621

bb.y:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCskAlUH1kY1DR_10polars_ooc.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !10622, !noalias !10538
  store ptr %i.bv, ptr %i.d, align 8, !dbg !10622, !noalias !10538
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bv, i64 24, !dbg !10623
  store atomic i64 0, ptr %i.cd release, align 8, !dbg !10633, !noalias !10538
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bv, i64 32, !dbg !10635
  store atomic ptr null, ptr %i.ce release, align 8, !dbg !10642, !noalias !10538
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !10644, !noalias !10538
  store ptr %i.i, ptr %i.b, align 8, !dbg !10645, !noalias !10538
  store ptr %1, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8, !dbg !10645
  store ptr %i.j, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8, !dbg !10645
  invoke fastcc void @_RNCNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB6_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4recvs_0B12_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.bv)
          to label %bb.z unwind label %bb.ac, !dbg !10649, !noalias !10538

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10644, !noalias !10538
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10651, !noalias !10538
  %i.cf = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !dbg !10655, !noalias !10538, !noundef !13 ; 3 uses
  store ptr %i.cf, ptr %i.a, align 8, !dbg !10655, !noalias !10538
  store ptr %i.bv, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !dbg !10659, !noalias !10538
  %i.cg = icmp eq ptr %i.cf, null, !dbg !10661
  br i1 %i.cg, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECskAlUH1kY1DR_10polars_ooc.exit.i.i.i, label %bb.aa, !dbg !10661

bb.aa:                                            ; preds = %bb.z
  %i.ch = atomicrmw sub ptr %i.cf, i64 1 release, align 8, !dbg !10663, !noalias !10669
  %i.ci = icmp eq i64 %i.ch, 1, !dbg !10678
  br i1 %i.ci, label %bb.ab, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECskAlUH1kY1DR_10polars_ooc.exit.i.i.i, !dbg !10678

bb.ab:                                            ; preds = %bb.aa
  fence acquire, !dbg !10679
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerE9drop_slowCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a) #26, !dbg !10681, !noalias !10538
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECskAlUH1kY1DR_10polars_ooc.exit.i.i.i, !dbg !10681

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECskAlUH1kY1DR_10polars_ooc.exit.i.i.i: ; preds = %bb.ab, %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10682, !noalias !10538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !10683, !noalias !10538
  br label %_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4recvs_0uEB1C_.exit, !dbg !10684

bb.ac:                                            ; preds = %bb.y
  %i.cj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ck = atomicrmw sub ptr %i.bv, i64 1 release, align 8, !dbg !10685, !noalias !10691
  %i.cl = icmp eq i64 %i.ck, 1, !dbg !10698
  br i1 %i.cl, label %bb.ad, label %common.resume, !dbg !10698

bb.ad:                                            ; preds = %bb.ac
  fence acquire, !dbg !10699
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerE9drop_slowCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.d) #26
          to label %common.resume unwind label %bb.x, !dbg !10701, !noalias !10538

_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4recvs_0uEs_0uEB3w_.exit.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCskAlUH1kY1DR_10polars_ooc.exit.i.i
  call fastcc void @_RNCINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4recvs_0uEs0_0B1E_(ptr nonnull %i.f), !dbg !10702, !noalias !10538
  br label %_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4recvs_0uEB1C_.exit, !dbg !10702

_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4recvs_0uEB1C_.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc.exit19.i.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECskAlUH1kY1DR_10polars_ooc.exit.i.i.i, %_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4recvs_0uEs_0uEB3w_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !10706, !noalias !10538
  br label %bb.b, !dbg !10354

.split:                                           ; preds = %bb.q
  %i.cm = extractvalue { i64, i32 } %i.bo, 1, !dbg !10526 ; 2 uses
  %i.cn = icmp ult i32 %i.cm, 1000000000, !dbg !10707
  call void @llvm.assume(i1 %i.cn), !dbg !10707
  %.not18 = icmp samesign ult i32 %i.cm, %i.bf, !dbg !10720
  br i1 %.not18, label %bb.r, label %bb.af, !dbg !10526

bb.ae:                                            ; preds = %bb.q
  %.not17 = icmp slt i64 %i.bp, %i.bn, !dbg !10720
  br i1 %.not17, label %bb.r, label %bb.af, !dbg !10526

bb.af:                                            ; preds = %.split, %bb.ae
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10728
  store i8 0, ptr %i.co, align 8, !dbg !10728
  br label %bb.ag, !dbg !10729

bb.ag:                                            ; preds = %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4readB10_.exit.thread, %bb.ah, %bb.af
  %storemerge = phi i64 [ -9223372036854775806, %bb.af ], [ %.sroa.0.0.copyload2, %bb.ah ], [ -9223372036854775806, %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4readB10_.exit.thread ], !dbg !10518
  store i64 %storemerge, ptr %0, align 8, !dbg !10518
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !10731
  ret void, !dbg !10732

_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4readB10_.exit.thread: ; preds = %bb.j, %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4readB10_.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10733
  store i8 1, ptr %i.cp, align 8, !dbg !10733
  br label %bb.ag, !dbg !10735

bb.ah:                                            ; preds = %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4readB10_.exit
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10736
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.49.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4, i64 24, i1 false), !dbg !10738
  br label %bb.ag, !dbg !10739
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4sendB10_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 128 %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %2, i64 %3, i32 noundef range(i32 0, 1000000001) %4) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !10740 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  store i64 %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i32 %4, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !10741
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !10742
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false), !dbg !10742
  %i.m = load atomic i64, ptr %i.k monotonic, align 128, !dbg !10744, !noalias !10752 ; 2 uses
  %i.n = load i64, ptr %i.l, align 16, !dbg !10755, !noalias !10752, !noundef !13 ; 2 uses
  %i.o = and i64 %i.n, %i.m, !dbg !10757
  %i.p = icmp eq i64 %i.o, 0, !dbg !10757
  br i1 %i.p, label %.lr.ph.i.lr.ph, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE5writeB10_.exit, !dbg !10757

.lr.ph.i.lr.ph:                                   ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 384
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.u = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %.lr.ph.i, !dbg !10757

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %bb.ag
  %i.w = phi i64 [ %i.n, %.lr.ph.i.lr.ph ], [ %i.cs, %bb.ag ]
  %i.x = phi i64 [ %i.m, %.lr.ph.i.lr.ph ], [ %i.cr, %bb.ag ]
  call void @llvm.experimental.noalias.scope.decl(metadata !10758), !dbg !10760
  br label %bb.b, !dbg !10757

bb.b:                                             ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, %.lr.ph.i
  %i.y = phi i64 [ %i.w, %.lr.ph.i ], [ %i.bd, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ]
  %.sroa.02.033.i = phi i64 [ %i.x, %.lr.ph.i ], [ %i.bc, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ] ; 8 uses
  %.sroa.0.02832.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.0.1.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ] ; 14 uses
  %i.z = add i64 %i.y, -1, !dbg !10761
  %i.aa = and i64 %i.z, %.sroa.02.033.i, !dbg !10762 ; 3 uses
  %i.ab = load i64, ptr %i.q, align 8, !dbg !10763, !noalias !10758, !noundef !13
  %i.ac = sub i64 0, %i.ab, !dbg !10765
  %i.ad = and i64 %.sroa.02.033.i, %i.ac, !dbg !10766
  %i.ae = load ptr, ptr %i.r, align 8, !dbg !10767, !noalias !10758, !nonnull !13, !noundef !13
  %i.af = load i64, ptr %i.s, align 32, !dbg !10767, !noalias !10758, !noundef !13
  %i.ag = icmp ult i64 %i.aa, %i.af, !dbg !10769
  call void @llvm.assume(i1 %i.ag), !dbg !10774
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %i.ae, i64 %i.aa, !dbg !10775 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32, !dbg !10776
  %i.aj = load atomic i64, ptr %i.ai acquire, align 8, !dbg !10785, !noalias !10758 ; 2 uses
  %i.ak = icmp eq i64 %.sroa.02.033.i, %i.aj, !dbg !10787
  br i1 %i.ak, label %bb.d, label %bb.c, !dbg !10787

bb.c:                                             ; preds = %bb.b
  %i.al = load i64, ptr %i.q, align 8, !dbg !10789, !noalias !10758, !noundef !13
  %i.am = add i64 %i.al, %i.aj, !dbg !10790
  %i.an = add i64 %.sroa.02.033.i, 1, !dbg !10793
  %i.ao = icmp eq i64 %i.am, %i.an, !dbg !10794
  br i1 %i.ao, label %bb.h, label %bb.e, !dbg !10794

bb.d:                                             ; preds = %bb.b
  %i.ap = add nuw i64 %i.aa, 1, !dbg !10795
  %i.aq = load i64, ptr %i.t, align 128, !dbg !10796, !noalias !10758, !noundef !13
  %i.ar = icmp ult i64 %i.ap, %i.aq, !dbg !10795
  br i1 %i.ar, label %bb.k, label %bb.j, !dbg !10795

bb.e:                                             ; preds = %bb.c
  %i.as = icmp ult i32 %.sroa.0.02832.i, 7, !dbg !10797
  br i1 %i.as, label %bb.g, label %bb.f, !dbg !10797

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i unwind label %.body.thread29.loopexit, !dbg !10799

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.sroa.0.02832.i, 0, !dbg !10800
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader, !dbg !10804

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.at = mul nuw i32 %.sroa.0.02832.i, %.sroa.0.02832.i, !dbg !10805 ; 2 uses
  %xtraiter = and i32 %i.at, 7, !dbg !10804       ; 3 uses
  %i.au = icmp ult i32 %.sroa.0.02832.i, 3, !dbg !10804
  br i1 %i.au, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new, !dbg !10804

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.at, 56, !dbg !10804
  br label %.lr.ph.i.i, !dbg !10804

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !dbg !10807, !noalias !10758
  call void @llvm.x86.sse2.pause(), !dbg !10807, !noalias !10758
  call void @llvm.x86.sse2.pause(), !dbg !10807, !noalias !10758
  call void @llvm.x86.sse2.pause(), !dbg !10807, !noalias !10758
  call void @llvm.x86.sse2.pause(), !dbg !10807, !noalias !10758
  call void @llvm.x86.sse2.pause(), !dbg !10807, !noalias !10758
  call void @llvm.x86.sse2.pause(), !dbg !10807, !noalias !10758
  call void @llvm.x86.sse2.pause(), !dbg !10807, !noalias !10758
  %niter.next.7 = add i32 %niter, 8, !dbg !10804  ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter, !dbg !10804
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !dbg !10804

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !10804
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader, !dbg !10804

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod100 = icmp ne i32 %xtraiter, 0, !dbg !10804
  call void @llvm.assume(i1 %lcmp.mod100), !dbg !10804
  br label %.lr.ph.i.i.epil, !dbg !10804

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !10807, !noalias !10758
  %epil.iter.next = add i32 %epil.iter, 1, !dbg !10804 ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter, !dbg !10804
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !dbg !10804, !llvm.loop !10810

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.f, %bb.g
  %i.av = add i32 %.sroa.0.02832.i, 1, !dbg !10811
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, !dbg !10812

bb.h:                                             ; preds = %bb.c
  fence seq_cst, !dbg !10813
  %i.aw = load atomic i64, ptr %1 monotonic, align 128, !dbg !10815, !noalias !10758
  %i.ax = load i64, ptr %i.q, align 8, !dbg !10818, !noalias !10758, !noundef !13
  %i.ay = add i64 %i.ax, %i.aw, !dbg !10820
  %i.az = icmp eq i64 %i.ay, %.sroa.02.033.i, !dbg !10822
  br i1 %i.az, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_sendB10_.exit, label %bb.i, !dbg !10822

bb.i:                                             ; preds = %bb.h
  %.sroa.0.0.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.02832.i, i32 6), !dbg !10823 ; 2 uses
  %5 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i, !dbg !10826 ; 2 uses
  %.not.i11.i = icmp eq i32 %.sroa.0.02832.i, 0, !dbg !10828
  br i1 %.not.i11.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, label %.lr.ph.i12.i.preheader, !dbg !10832

.lr.ph.i12.i.preheader:                           ; preds = %bb.i
  %xtraiter101 = and i32 %5, 5, !dbg !10832       ; 3 uses
  %i.ba = icmp ult i32 %.sroa.0.02832.i, 3, !dbg !10832
  br i1 %i.ba, label %.lr.ph.i12.i.epil.preheader, label %.lr.ph.i12.i.preheader.new, !dbg !10832

.lr.ph.i12.i.preheader.new:                       ; preds = %.lr.ph.i12.i.preheader
  %unroll_iter105 = and i32 %5, 56, !dbg !10832
  br label %.lr.ph.i12.i, !dbg !10832

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i12.i
  %lcmp.mod103.not = icmp eq i32 %xtraiter101, 0, !dbg !10832
  br i1 %lcmp.mod103.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil.preheader, !dbg !10832

.lr.ph.i12.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i12.i.preheader
  %lcmp.mod104 = icmp ne i32 %xtraiter101, 0, !dbg !10832
  call void @llvm.assume(i1 %lcmp.mod104), !dbg !10832
  br label %.lr.ph.i12.i.epil, !dbg !10832

.lr.ph.i12.i.epil:                                ; preds = %.lr.ph.i12.i.epil, %.lr.ph.i12.i.epil.preheader
  %epil.iter102 = phi i32 [ 0, %.lr.ph.i12.i.epil.preheader ], [ %epil.iter102.next, %.lr.ph.i12.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !10833, !noalias !10758
  %epil.iter102.next = add i32 %epil.iter102, 1, !dbg !10832 ; 2 uses
  %epil.iter102.cmp.not = icmp eq i32 %epil.iter102.next, %xtraiter101, !dbg !10832
  br i1 %epil.iter102.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil, !dbg !10832, !llvm.loop !10836

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i12.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.bb = add i32 %.sroa.0.02832.i, 1, !dbg !10837
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, !dbg !10838

.lr.ph.i12.i:                                     ; preds = %.lr.ph.i12.i, %.lr.ph.i12.i.preheader.new
  %niter106 = phi i32 [ 0, %.lr.ph.i12.i.preheader.new ], [ %niter106.next.7, %.lr.ph.i12.i ]
  call void @llvm.x86.sse2.pause(), !dbg !10833, !noalias !10758
  call void @llvm.x86.sse2.pause(), !dbg !10833, !noalias !10758
  call void @llvm.x86.sse2.pause(), !dbg !10833, !noalias !10758
  call void @llvm.x86.sse2.pause(), !dbg !10833, !noalias !10758
  call void @llvm.x86.sse2.pause(), !dbg !10833, !noalias !10758
  call void @llvm.x86.sse2.pause(), !dbg !10833, !noalias !10758
  call void @llvm.x86.sse2.pause(), !dbg !10833, !noalias !10758
  call void @llvm.x86.sse2.pause(), !dbg !10833, !noalias !10758
  %niter106.next.7 = add i32 %niter106, 8, !dbg !10832 ; 2 uses
  %niter106.ncmp.7 = icmp eq i32 %niter106.next.7, %unroll_iter105, !dbg !10832
  br i1 %niter106.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i12.i, !dbg !10832

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i: ; preds = %._crit_edge.loopexit.i20.i, %bb.m, %._crit_edge.loopexit.i.i, %bb.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.1.i = phi i32 [ %i.av, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 1, %bb.m ], [ %i.bl, %._crit_edge.loopexit.i20.i ], [ %i.bb, %._crit_edge.loopexit.i.i ], [ 1, %bb.i ], !dbg !10840
  %i.bc = load atomic i64, ptr %i.k monotonic, align 128, !dbg !10841, !noalias !10758 ; 2 uses
  %i.bd = load i64, ptr %i.l, align 16, !dbg !10755, !noalias !10758, !noundef !13 ; 2 uses
  %i.be = and i64 %i.bd, %i.bc, !dbg !10757
  %i.bf = icmp eq i64 %i.be, 0, !dbg !10757
  br i1 %i.bf, label %bb.b, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE5writeB10_.exit, !dbg !10757

bb.j:                                             ; preds = %bb.d
  %i.bg = load i64, ptr %i.q, align 8, !dbg !10844, !noalias !10758, !noundef !13
  %i.bh = add i64 %i.bg, %i.ad, !dbg !10845
  br label %bb.l, !dbg !10847

bb.k:                                             ; preds = %bb.d
  %i.bi = add i64 %.sroa.02.033.i, 1, !dbg !10848
  br label %bb.l, !dbg !10847

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.01.0.i = phi i64 [ %i.bi, %bb.k ], [ %i.bh, %bb.j ], !dbg !10840
  %i.bj = cmpxchg weak ptr %i.k, i64 %.sroa.02.033.i, i64 %.sroa.01.0.i seq_cst monotonic, align 8, !dbg !10849, !noalias !10758
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.bj, 1, !dbg !10854
  br i1 %.sroa.18.0.in.i.i, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE5writeB10_.exit.thread, label %bb.m, !dbg !10855

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.i.i15.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.02832.i, i32 6), !dbg !10856 ; 2 uses
  %6 = mul nuw nsw i32 %.sroa.0.0.i.i15.i, %.sroa.0.0.i.i15.i, !dbg !10859 ; 2 uses
  %.not.i16.i = icmp eq i32 %.sroa.0.02832.i, 0, !dbg !10861
  br i1 %.not.i16.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, label %.lr.ph.i17.i.preheader, !dbg !10865

.lr.ph.i17.i.preheader:                           ; preds = %bb.m
  %xtraiter107 = and i32 %6, 5, !dbg !10865       ; 3 uses
  %i.bk = icmp ult i32 %.sroa.0.02832.i, 3, !dbg !10865
  br i1 %i.bk, label %.lr.ph.i17.i.epil.preheader, label %.lr.ph.i17.i.preheader.new, !dbg !10865

.lr.ph.i17.i.preheader.new:                       ; preds = %.lr.ph.i17.i.preheader
  %unroll_iter111 = and i32 %6, 56, !dbg !10865
  br label %.lr.ph.i17.i, !dbg !10865

._crit_edge.loopexit.i20.i.unr-lcssa:             ; preds = %.lr.ph.i17.i
  %lcmp.mod109.not = icmp eq i32 %xtraiter107, 0, !dbg !10865
  br i1 %lcmp.mod109.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil.preheader, !dbg !10865

.lr.ph.i17.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i20.i.unr-lcssa, %.lr.ph.i17.i.preheader
  %lcmp.mod110 = icmp ne i32 %xtraiter107, 0, !dbg !10865
  call void @llvm.assume(i1 %lcmp.mod110), !dbg !10865
  br label %.lr.ph.i17.i.epil, !dbg !10865

.lr.ph.i17.i.epil:                                ; preds = %.lr.ph.i17.i.epil, %.lr.ph.i17.i.epil.preheader
  %epil.iter108 = phi i32 [ 0, %.lr.ph.i17.i.epil.preheader ], [ %epil.iter108.next, %.lr.ph.i17.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !10866, !noalias !10758
  %epil.iter108.next = add i32 %epil.iter108, 1, !dbg !10865 ; 2 uses
  %epil.iter108.cmp.not = icmp eq i32 %epil.iter108.next, %xtraiter107, !dbg !10865
  br i1 %epil.iter108.cmp.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil, !dbg !10865, !llvm.loop !10869

._crit_edge.loopexit.i20.i:                       ; preds = %.lr.ph.i17.i.epil, %._crit_edge.loopexit.i20.i.unr-lcssa
  %i.bl = add i32 %.sroa.0.02832.i, 1, !dbg !10870
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, !dbg !10871

.lr.ph.i17.i:                                     ; preds = %.lr.ph.i17.i, %.lr.ph.i17.i.preheader.new
  %niter112 = phi i32 [ 0, %.lr.ph.i17.i.preheader.new ], [ %niter112.next.7, %.lr.ph.i17.i ]
  call void @llvm.x86.sse2.pause(), !dbg !10866, !noalias !10758
  call void @llvm.x86.sse2.pause(), !dbg !10866, !noalias !10758
  call void @llvm.x86.sse2.pause(), !dbg !10866, !noalias !10758
  call void @llvm.x86.sse2.pause(), !dbg !10866, !noalias !10758
  call void @llvm.x86.sse2.pause(), !dbg !10866, !noalias !10758
  call void @llvm.x86.sse2.pause(), !dbg !10866, !noalias !10758
  call void @llvm.x86.sse2.pause(), !dbg !10866, !noalias !10758
  call void @llvm.x86.sse2.pause(), !dbg !10866, !noalias !10758
  %niter112.next.7 = add i32 %niter112, 8, !dbg !10865 ; 2 uses
  %niter112.ncmp.7 = icmp eq i32 %niter112.next.7, %unroll_iter111, !dbg !10865
  br i1 %niter112.ncmp.7, label %._crit_edge.loopexit.i20.i.unr-lcssa, label %.lr.ph.i17.i, !dbg !10865

.body.thread29.loopexit:                          ; preds = %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread29.loopexit.split-lp:                 ; preds = %bb.z, %bb.u, %bb.p, %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCskAlUH1kY1DR_10polars_ooc.exit.i.i, %bb.n, %_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4send0uEs_0uEB3w_.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_sendB10_.exit: ; preds = %bb.h
  %i.bm = load i32, ptr %i.i, align 8, !dbg !10873, !range !3629, !noundef !13 ; 2 uses
  %.not = icmp eq i32 %i.bm, 1000000000, !dbg !10873
  br i1 %.not, label %bb.o, label %bb.n, !dbg !10875

_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE5writeB10_.exit.thread: ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store ptr %i.ah, ptr %i.g, align 8, !dbg !10876, !alias.scope !10758
  %i.bo = add i64 %.sroa.02.033.i, 1, !dbg !10877 ; 2 uses
  store i64 %i.bo, ptr %i.j, align 8, !dbg !10877, !alias.scope !10758
  %.sroa.018.0.copyload34 = load i64, ptr %2, align 8, !dbg !10878
  %.sroa.5.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !10878
  store i64 %.sroa.018.0.copyload34, ptr %i.ah, align 8, !dbg !10879, !noalias !10887
  %.sroa.5.0..val.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8, !dbg !10879
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..val.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx35, i64 24, i1 false), !dbg !10879
  store atomic i64 %i.bo, ptr %i.bn release, align 8, !dbg !10890, !noalias !10894
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 320, !dbg !10896
  call fastcc void @_RNvMs0_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bp) #29, !dbg !10897
  br label %bb.ai, !dbg !10898

bb.n:                                             ; preds = %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_sendB10_.exit
  %i.bq = load i64, ptr %i.h, align 8, !dbg !10902, !noundef !13 ; 2 uses
  %i.br = invoke { i64, i32 } @_RNvMNtCsh8eZTKRCwoO_3std4timeNtB2_7Instant3now()
          to label %bb.ac unwind label %.body.thread29.loopexit.split-lp, !dbg !10903 ; 2 uses

bb.o:                                             ; preds = %.split, %bb.ad, %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_sendB10_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !10904, !noalias !10907
  store ptr %i.g, ptr %i.f, align 8, !dbg !10910
  store ptr %1, ptr %.sroa.421.0..sroa_idx, align 8, !dbg !10910
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !10910
  %i.bs = load i8, ptr %i.v, align 8, !dbg !10911, !range !8219, !noalias !10920, !noundef !13
  %i.bt = icmp eq i8 %i.bs, 1, !dbg !10927
  br i1 %i.bt, label %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCskAlUH1kY1DR_10polars_ooc.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCskAlUH1kY1DR_10polars_ooc.exit.i.i, !dbg !10927, !prof !465

_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCskAlUH1kY1DR_10polars_ooc.exit.i.i: ; preds = %bb.o
  %i.bu = invoke noundef ptr @_RINvMs0_NtNtNtNtCsh8eZTKRCwoO_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscgRAwXFJnXP_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECskAlUH1kY1DR_10polars_ooc(ptr noundef nonnull align 8 %i.u, ptr noalias noundef align 8 dereferenceable_or_null(16) null)
          to label %.noexc10 unwind label %.body.thread29.loopexit.split-lp, !dbg !10928 ; 2 uses

.noexc10:                                         ; preds = %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCskAlUH1kY1DR_10polars_ooc.exit.i.i
  %i.bv = icmp eq ptr %i.bu, null, !dbg !10929
  br i1 %i.bv, label %_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4send0uEs_0uEB3w_.exit.i, label %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCskAlUH1kY1DR_10polars_ooc.exit.thread.i.i, !dbg !10929

_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCskAlUH1kY1DR_10polars_ooc.exit.thread.i.i: ; preds = %.noexc10, %bb.o
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.bu, %.noexc10 ], [ %i.u, %bb.o ] ; 4 uses
  %i.bw = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !dbg !10932, !noalias !10907, !noundef !13 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !dbg !10942, !noalias !10907
  %.not.i.i.i = icmp eq ptr %i.bw, null, !dbg !10944
  br i1 %.not.i.i.i, label %bb.p, label %bb.w, !dbg !10945, !prof !77

bb.p:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCskAlUH1kY1DR_10polars_ooc.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !10946, !noalias !10907
  %i.bx = invoke noundef nonnull ptr @_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB2_7Context3new()
          to label %bb.q unwind label %.body.thread29.loopexit.split-lp, !dbg !10946 ; 4 uses

bb.q:                                             ; preds = %bb.p
  store ptr %i.bx, ptr %i.e, align 8, !dbg !10946, !noalias !10907
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !10947, !noalias !10907
  store ptr %i.g, ptr %i.c, align 8, !dbg !10948, !noalias !10907
  store ptr %1, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8, !dbg !10948
  store ptr %i.h, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx, align 8, !dbg !10948
  invoke fastcc void @_RNCNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB6_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4send0B12_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.bx)
          to label %bb.t unwind label %bb.r, !dbg !10953, !noalias !10907

bb.r:                                             ; preds = %bb.q
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bz = atomicrmw sub ptr %i.bx, i64 1 release, align 8, !dbg !10955, !noalias !10961
  %i.ca = icmp eq i64 %i.bz, 1, !dbg !10968
  br i1 %i.ca, label %bb.s, label %.body.thread, !dbg !10968

bb.s:                                             ; preds = %bb.r
  fence acquire, !dbg !10969
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerE9drop_slowCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.e) #26
          to label %.body.thread unwind label %bb.v, !dbg !10971, !noalias !10907

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !10947, !noalias !10907
  %i.cb = atomicrmw sub ptr %i.bx, i64 1 release, align 8, !dbg !10972, !noalias !10978
  %i.cc = icmp eq i64 %i.cb, 1, !dbg !10985
  br i1 %i.cc, label %bb.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc.exit19.i.i.i, !dbg !10985

bb.u:                                             ; preds = %bb.t
  fence acquire, !dbg !10986
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerE9drop_slowCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.e) #26
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc.exit19.i.i.i unwind label %.body.thread29.loopexit.split-lp, !dbg !10988

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc.exit19.i.i.i: ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !10989, !noalias !10907
  br label %bb.ag, !dbg !10989

bb.v:                                             ; preds = %bb.ab, %bb.s
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #25, !dbg !10990, !noalias !10907
  unreachable, !dbg !10990

bb.w:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCskAlUH1kY1DR_10polars_ooc.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !10991, !noalias !10907
  store ptr %i.bw, ptr %i.d, align 8, !dbg !10991, !noalias !10907
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bw, i64 24, !dbg !10992
  store atomic i64 0, ptr %i.ce release, align 8, !dbg !11002, !noalias !10907
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bw, i64 32, !dbg !11004
  store atomic ptr null, ptr %i.cf release, align 8, !dbg !11011, !noalias !10907
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !11013, !noalias !10907
  store ptr %i.g, ptr %i.b, align 8, !dbg !11014, !noalias !10907
  store ptr %1, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8, !dbg !11014
  store ptr %i.h, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8, !dbg !11014
  invoke fastcc void @_RNCNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB6_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4send0B12_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.bw)
          to label %bb.x unwind label %bb.aa, !dbg !11018, !noalias !10907

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11013, !noalias !10907
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11020, !noalias !10907
  %i.cg = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !dbg !11024, !noalias !10907, !noundef !13 ; 3 uses
  store ptr %i.cg, ptr %i.a, align 8, !dbg !11024, !noalias !10907
  store ptr %i.bw, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !dbg !11028, !noalias !10907
  %i.ch = icmp eq ptr %i.cg, null, !dbg !11030
  br i1 %i.ch, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECskAlUH1kY1DR_10polars_ooc.exit.i.i.i, label %bb.y, !dbg !11030

bb.y:                                             ; preds = %bb.x
  %i.ci = atomicrmw sub ptr %i.cg, i64 1 release, align 8, !dbg !11032, !noalias !11038
  %i.cj = icmp eq i64 %i.ci, 1, !dbg !11047
  br i1 %i.cj, label %bb.z, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECskAlUH1kY1DR_10polars_ooc.exit.i.i.i, !dbg !11047

bb.z:                                             ; preds = %bb.y
  fence acquire, !dbg !11048
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerE9drop_slowCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a) #26
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECskAlUH1kY1DR_10polars_ooc.exit.i.i.i unwind label %.body.thread29.loopexit.split-lp, !dbg !11050

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECskAlUH1kY1DR_10polars_ooc.exit.i.i.i: ; preds = %bb.z, %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11051, !noalias !10907
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !11052, !noalias !10907
  br label %bb.ag, !dbg !11053

bb.aa:                                            ; preds = %bb.w
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cl = atomicrmw sub ptr %i.bw, i64 1 release, align 8, !dbg !11054, !noalias !11060
  %i.cm = icmp eq i64 %i.cl, 1, !dbg !11067
  br i1 %i.cm, label %bb.ab, label %.body.thread, !dbg !11067

bb.ab:                                            ; preds = %bb.aa
  fence acquire, !dbg !11068
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerE9drop_slowCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.d) #26
          to label %.body.thread unwind label %bb.v, !dbg !11070, !noalias !10907

_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4send0uEs_0uEB3w_.exit.i: ; preds = %.noexc10
  invoke fastcc void @_RNCINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4send0uEs0_0B1E_(ptr nonnull %i.f)
          to label %bb.ag unwind label %.body.thread29.loopexit.split-lp, !dbg !11071

bb.ac:                                            ; preds = %bb.n
  %i.cn = extractvalue { i64, i32 } %i.br, 0, !dbg !10903 ; 2 uses
  %i.co = icmp eq i64 %i.cn, %i.bq, !dbg !11075
  br i1 %i.co, label %.split, label %bb.ad, !dbg !11075

.split:                                           ; preds = %bb.ac
  %i.cp = extractvalue { i64, i32 } %i.br, 1, !dbg !10903 ; 2 uses
  %i.cq = icmp ult i32 %i.cp, 1000000000, !dbg !11083
  call void @llvm.assume(i1 %i.cq), !dbg !11083
  %.not43 = icmp samesign ult i32 %i.cp, %i.bm, !dbg !11091
  br i1 %.not43, label %bb.o, label %bb.ae, !dbg !10903

bb.ad:                                            ; preds = %bb.ac
  %.not42 = icmp slt i64 %i.cn, %i.bq, !dbg !11091
  br i1 %.not42, label %bb.o, label %bb.ae, !dbg !10903

bb.ae:                                            ; preds = %.split, %bb.ad
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !dbg !11101
  store i64 0, ptr %0, align 8, !dbg !11100
  br label %bb.af, !dbg !11102

bb.af:                                            ; preds = %bb.ah, %bb.ai, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !11104
  ret void, !dbg !11105

bb.ag:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECskAlUH1kY1DR_10polars_ooc.exit.i.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc.exit19.i.i.i, %_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4send0uEs_0uEB3w_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !11106, !noalias !10907
  %i.cr = load atomic i64, ptr %i.k monotonic, align 128, !dbg !10744, !noalias !11107 ; 2 uses
  %i.cs = load i64, ptr %i.l, align 16, !dbg !10755, !noalias !11107, !noundef !13 ; 2 uses
  %i.ct = and i64 %i.cs, %i.cr, !dbg !10757
  %i.cu = icmp eq i64 %i.ct, 0, !dbg !10757
  br i1 %i.cu, label %.lr.ph.i, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE5writeB10_.exit, !dbg !10757

_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE5writeB10_.exit: ; preds = %bb.ag, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, %bb.a
  %.sroa.018.0.copyload = load i64, ptr %2, align 8, !dbg !10878 ; 2 uses
  %.not7 = icmp eq i64 %.sroa.018.0.copyload, -9223372036854775806, !dbg !11109
  br i1 %.not7, label %bb.ai, label %bb.ah, !dbg !10898

end_hunk_0
begin_hunk_1_@_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChanneluE20disconnect_receiversCskAlUH1kY1DR_10polars_ooc:bb.a

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now(), !dbg !11200
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, !dbg !11200

bb.i:                                             ; preds = %bb.g
  %.not.i.i = icmp eq i32 %.sroa.0.07.i, 0, !dbg !11201
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader, !dbg !11205

.lr.ph.i.i.preheader:                             ; preds = %bb.i
  %i.ai = mul nuw i32 %.sroa.0.07.i, %.sroa.0.07.i, !dbg !11206 ; 2 uses
  %xtraiter = and i32 %i.ai, 7, !dbg !11205       ; 3 uses
  %i.aj = icmp ult i32 %.sroa.0.07.i, 3, !dbg !11205
  br i1 %i.aj, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new, !dbg !11205

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.ai, 56, !dbg !11205
  br label %.lr.ph.i.i, !dbg !11205

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !dbg !11208
  tail call void @llvm.x86.sse2.pause(), !dbg !11208
  tail call void @llvm.x86.sse2.pause(), !dbg !11208
  tail call void @llvm.x86.sse2.pause(), !dbg !11208
  tail call void @llvm.x86.sse2.pause(), !dbg !11208
  tail call void @llvm.x86.sse2.pause(), !dbg !11208
  tail call void @llvm.x86.sse2.pause(), !dbg !11208
  tail call void @llvm.x86.sse2.pause(), !dbg !11208
  %niter.next.7 = add i32 %niter, 8, !dbg !11205  ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter, !dbg !11205
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !dbg !11205

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !11205
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader, !dbg !11205

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod2 = icmp ne i32 %xtraiter, 0, !dbg !11205
  tail call void @llvm.assume(i1 %lcmp.mod2), !dbg !11205
  br label %.lr.ph.i.i.epil, !dbg !11205

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !dbg !11208
  %epil.iter.next = add i32 %epil.iter, 1, !dbg !11205 ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter, !dbg !11205
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !dbg !11205, !llvm.loop !11211

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.i, %bb.h
  %i.ak = add i32 %.sroa.0.07.i, 1, !dbg !11212
  br label %bb.j, !dbg !11213

bb.j:                                             ; preds = %bb.k, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, %bb.f
  %.sroa.0.18.i = phi i32 [ %.sroa.0.07.i, %bb.f ], [ %.sroa.0.07.i, %bb.k ], [ %i.ak, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], !dbg !11214
  %.sroa.0.1.i = phi i64 [ %i.aa, %bb.f ], [ %i.am, %bb.k ], [ %.sroa.0.0.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], !dbg !11173
  %.pre.i = load i64, ptr %i.a, align 16, !dbg !11169
  br label %bb.d, !dbg !11166

bb.k:                                             ; preds = %bb.f
  %i.al = load i64, ptr %i.m, align 8, !dbg !11215, !noundef !13
  %i.am = add i64 %i.al, %i.v, !dbg !11216
  br label %bb.j, !dbg !11219

_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChanneluE20discard_all_messagesCskAlUH1kY1DR_10polars_ooc.exit: ; preds = %bb.e
  ret i1 %i.g, !dbg !11220
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 3) i8 @_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChanneluE4recvCskAlUH1kY1DR_10polars_ooc(ptr noundef nonnull align 128 %0, i64 %1, i32 noundef range(i32 0, 1000000001) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !11221 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  store i64 %1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i32 %2, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !11222
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !11223
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 384
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.q = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false), !dbg !11223
  br label %bb.b, !dbg !11225

bb.b:                                             ; preds = %_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChanneluE4recvs_0uECskAlUH1kY1DR_10polars_ooc.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !11227), !dbg !11230
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, !dbg !11231

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, %bb.b
  %.sroa.0.028.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.028.i.be, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge ], !dbg !11236 ; 14 uses
  %i.s = load atomic i64, ptr %0 monotonic, align 128, !dbg !11237, !noalias !11227 ; 7 uses
  %i.t = load i64, ptr %i.k, align 16, !dbg !11241, !noalias !11227, !noundef !13
  %i.u = add i64 %i.t, -1, !dbg !11242
  %i.v = and i64 %i.u, %i.s, !dbg !11243          ; 4 uses
  %i.w = load i64, ptr %i.l, align 8, !dbg !11244, !noalias !11227, !noundef !13
  %i.x = sub i64 0, %i.w, !dbg !11246
  %i.y = and i64 %i.s, %i.x, !dbg !11247
  %i.z = load ptr, ptr %i.m, align 8, !dbg !11248, !noalias !11227, !nonnull !13, !noundef !13 ; 2 uses
  %i.aa = load i64, ptr %i.n, align 32, !dbg !11248, !noalias !11227, !noundef !13
  %i.ab = icmp ult i64 %i.v, %i.aa, !dbg !11250
  call void @llvm.assume(i1 %i.ab), !dbg !11255
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.v, !dbg !11256
  %i.ad = load atomic i64, ptr %i.ac acquire, align 8, !dbg !11257, !noalias !11227 ; 3 uses
  %i.ae = add i64 %i.s, 1, !dbg !11261
  %i.af = icmp eq i64 %i.ae, %i.ad, !dbg !11261
  br i1 %i.af, label %bb.d, label %bb.c, !dbg !11261

bb.c:                                             ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i
  %i.ag = icmp eq i64 %i.ad, %i.s, !dbg !11263
  br i1 %i.ag, label %bb.h, label %bb.e, !dbg !11263

bb.d:                                             ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i
  %i.ah = add nuw i64 %i.v, 1, !dbg !11264
  %i.ai = load i64, ptr %i.p, align 128, !dbg !11265, !noalias !11227, !noundef !13
  %i.aj = icmp ult i64 %i.ah, %i.ai, !dbg !11264
  br i1 %i.aj, label %bb.l, label %bb.k, !dbg !11264

bb.e:                                             ; preds = %bb.c
  %i.ak = icmp ult i32 %.sroa.0.028.i, 7, !dbg !11266
  br i1 %i.ak, label %bb.g, label %bb.f, !dbg !11266

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now(), !dbg !11268, !noalias !11227
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, !dbg !11268

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.sroa.0.028.i, 0, !dbg !11269
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader, !dbg !11273

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.al = mul nuw i32 %.sroa.0.028.i, %.sroa.0.028.i, !dbg !11274 ; 2 uses
  %xtraiter = and i32 %i.al, 7, !dbg !11273       ; 3 uses
  %i.am = icmp ult i32 %.sroa.0.028.i, 3, !dbg !11273
  br i1 %i.am, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new, !dbg !11273

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.al, 56, !dbg !11273
  br label %.lr.ph.i.i, !dbg !11273

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !dbg !11276, !noalias !11227
  call void @llvm.x86.sse2.pause(), !dbg !11276, !noalias !11227
  call void @llvm.x86.sse2.pause(), !dbg !11276, !noalias !11227
  call void @llvm.x86.sse2.pause(), !dbg !11276, !noalias !11227
  call void @llvm.x86.sse2.pause(), !dbg !11276, !noalias !11227
  call void @llvm.x86.sse2.pause(), !dbg !11276, !noalias !11227
  call void @llvm.x86.sse2.pause(), !dbg !11276, !noalias !11227
  call void @llvm.x86.sse2.pause(), !dbg !11276, !noalias !11227
  %niter.next.7 = add i32 %niter, 8, !dbg !11273  ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter, !dbg !11273
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !dbg !11273

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !11273
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader, !dbg !11273

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod71 = icmp ne i32 %xtraiter, 0, !dbg !11273
  call void @llvm.assume(i1 %lcmp.mod71), !dbg !11273
  br label %.lr.ph.i.i.epil, !dbg !11273

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !11276, !noalias !11227
  %epil.iter.next = add i32 %epil.iter, 1, !dbg !11273 ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter, !dbg !11273
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !dbg !11273, !llvm.loop !11279

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.g, %bb.f
  %i.an = add i32 %.sroa.0.028.i, 1, !dbg !11280
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, !dbg !11281

bb.h:                                             ; preds = %bb.c
  fence seq_cst, !dbg !11282
  %i.ao = load atomic i64, ptr %i.o monotonic, align 128, !dbg !11284, !noalias !11227 ; 2 uses
  %i.ap = load i64, ptr %i.k, align 16, !dbg !11287, !noalias !11227, !noundef !13 ; 2 uses
  %i.aq = xor i64 %i.ap, -1, !dbg !11289
  %i.ar = and i64 %i.ao, %i.aq, !dbg !11290
  %i.as = icmp eq i64 %i.ar, %i.s, !dbg !11290
  br i1 %i.as, label %bb.j, label %bb.i, !dbg !11290

bb.i:                                             ; preds = %bb.h
  %.sroa.0.0.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.028.i, i32 6), !dbg !11291 ; 2 uses
  %3 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i, !dbg !11294 ; 2 uses
  %.not.i11.i = icmp eq i32 %.sroa.0.028.i, 0, !dbg !11296
  br i1 %.not.i11.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, label %.lr.ph.i12.i.preheader, !dbg !11300

.lr.ph.i12.i.preheader:                           ; preds = %bb.i
  %xtraiter72 = and i32 %3, 5, !dbg !11300        ; 3 uses
  %i.at = icmp ult i32 %.sroa.0.028.i, 3, !dbg !11300
  br i1 %i.at, label %.lr.ph.i12.i.epil.preheader, label %.lr.ph.i12.i.preheader.new, !dbg !11300

.lr.ph.i12.i.preheader.new:                       ; preds = %.lr.ph.i12.i.preheader
  %unroll_iter76 = and i32 %3, 56, !dbg !11300
  br label %.lr.ph.i12.i, !dbg !11300

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i12.i
  %lcmp.mod74.not = icmp eq i32 %xtraiter72, 0, !dbg !11300
  br i1 %lcmp.mod74.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil.preheader, !dbg !11300

.lr.ph.i12.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i12.i.preheader
  %lcmp.mod75 = icmp ne i32 %xtraiter72, 0, !dbg !11300
  call void @llvm.assume(i1 %lcmp.mod75), !dbg !11300
  br label %.lr.ph.i12.i.epil, !dbg !11300

.lr.ph.i12.i.epil:                                ; preds = %.lr.ph.i12.i.epil, %.lr.ph.i12.i.epil.preheader
  %epil.iter73 = phi i32 [ 0, %.lr.ph.i12.i.epil.preheader ], [ %epil.iter73.next, %.lr.ph.i12.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !11301, !noalias !11227
  %epil.iter73.next = add i32 %epil.iter73, 1, !dbg !11300 ; 2 uses
  %epil.iter73.cmp.not = icmp eq i32 %epil.iter73.next, %xtraiter72, !dbg !11300
  br i1 %epil.iter73.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil, !dbg !11300, !llvm.loop !11304

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i12.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.au = add i32 %.sroa.0.028.i, 1, !dbg !11305
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, !dbg !11306

.lr.ph.i12.i:                                     ; preds = %.lr.ph.i12.i, %.lr.ph.i12.i.preheader.new
  %niter77 = phi i32 [ 0, %.lr.ph.i12.i.preheader.new ], [ %niter77.next.7, %.lr.ph.i12.i ]
  call void @llvm.x86.sse2.pause(), !dbg !11301, !noalias !11227
  call void @llvm.x86.sse2.pause(), !dbg !11301, !noalias !11227
  call void @llvm.x86.sse2.pause(), !dbg !11301, !noalias !11227
  call void @llvm.x86.sse2.pause(), !dbg !11301, !noalias !11227
  call void @llvm.x86.sse2.pause(), !dbg !11301, !noalias !11227
  call void @llvm.x86.sse2.pause(), !dbg !11301, !noalias !11227
  call void @llvm.x86.sse2.pause(), !dbg !11301, !noalias !11227
  call void @llvm.x86.sse2.pause(), !dbg !11301, !noalias !11227
  %niter77.next.7 = add i32 %niter77, 8, !dbg !11300 ; 2 uses
  %niter77.ncmp.7 = icmp eq i32 %niter77.next.7, %unroll_iter76, !dbg !11300
  br i1 %niter77.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i12.i, !dbg !11300

bb.j:                                             ; preds = %bb.h
  %i.av = and i64 %i.ap, %i.ao, !dbg !11308
  %i.aw = icmp eq i64 %i.av, 0, !dbg !11308
  br i1 %i.aw, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChanneluE10start_recvCskAlUH1kY1DR_10polars_ooc.exit, label %.loopexit, !dbg !11308

bb.k:                                             ; preds = %bb.d
  %i.ax = load i64, ptr %i.l, align 8, !dbg !11309, !noalias !11227, !noundef !13
  %i.ay = add i64 %i.ax, %i.y, !dbg !11310
  br label %bb.l, !dbg !11313

bb.l:                                             ; preds = %bb.k, %bb.d
  %.sroa.01.0.i = phi i64 [ %i.ay, %bb.k ], [ %i.ad, %bb.d ], !dbg !11314
  %i.az = cmpxchg weak ptr %0, i64 %i.s, i64 %.sroa.01.0.i seq_cst monotonic, align 8, !dbg !11315, !noalias !11227
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.az, 1, !dbg !11320
  br i1 %.sroa.18.0.in.i.i, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChanneluE4readCskAlUH1kY1DR_10polars_ooc.exit, label %bb.m, !dbg !11321

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.i.i15.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.028.i, i32 6), !dbg !11322 ; 2 uses
  %4 = mul nuw nsw i32 %.sroa.0.0.i.i15.i, %.sroa.0.0.i.i15.i, !dbg !11325 ; 2 uses
  %.not.i16.i = icmp eq i32 %.sroa.0.028.i, 0, !dbg !11327
  br i1 %.not.i16.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, label %.lr.ph.i17.i.preheader, !dbg !11331

.lr.ph.i17.i.preheader:                           ; preds = %bb.m
  %xtraiter78 = and i32 %4, 5, !dbg !11331        ; 3 uses
  %i.ba = icmp ult i32 %.sroa.0.028.i, 3, !dbg !11331
  br i1 %i.ba, label %.lr.ph.i17.i.epil.preheader, label %.lr.ph.i17.i.preheader.new, !dbg !11331

.lr.ph.i17.i.preheader.new:                       ; preds = %.lr.ph.i17.i.preheader
  %unroll_iter82 = and i32 %4, 56, !dbg !11331
  br label %.lr.ph.i17.i, !dbg !11331

._crit_edge.loopexit.i20.i.unr-lcssa:             ; preds = %.lr.ph.i17.i
  %lcmp.mod80.not = icmp eq i32 %xtraiter78, 0, !dbg !11331
  br i1 %lcmp.mod80.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil.preheader, !dbg !11331

.lr.ph.i17.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i20.i.unr-lcssa, %.lr.ph.i17.i.preheader
  %lcmp.mod81 = icmp ne i32 %xtraiter78, 0, !dbg !11331
  call void @llvm.assume(i1 %lcmp.mod81), !dbg !11331
  br label %.lr.ph.i17.i.epil, !dbg !11331

.lr.ph.i17.i.epil:                                ; preds = %.lr.ph.i17.i.epil, %.lr.ph.i17.i.epil.preheader
  %epil.iter79 = phi i32 [ 0, %.lr.ph.i17.i.epil.preheader ], [ %epil.iter79.next, %.lr.ph.i17.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !11332, !noalias !11227
  %epil.iter79.next = add i32 %epil.iter79, 1, !dbg !11331 ; 2 uses
  %epil.iter79.cmp.not = icmp eq i32 %epil.iter79.next, %xtraiter78, !dbg !11331
  br i1 %epil.iter79.cmp.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil, !dbg !11331, !llvm.loop !11335

._crit_edge.loopexit.i20.i:                       ; preds = %.lr.ph.i17.i.epil, %._crit_edge.loopexit.i20.i.unr-lcssa
  %i.bb = add i32 %.sroa.0.028.i, 1, !dbg !11336
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, !dbg !11337

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge: ; preds = %._crit_edge.loopexit.i20.i, %bb.m, %._crit_edge.loopexit.i.i, %bb.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.028.i.be = phi i32 [ %i.an, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 1, %bb.m ], [ %i.bb, %._crit_edge.loopexit.i20.i ], [ %i.au, %._crit_edge.loopexit.i.i ], [ 1, %bb.i ]
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, !dbg !11237

.lr.ph.i17.i:                                     ; preds = %.lr.ph.i17.i, %.lr.ph.i17.i.preheader.new
  %niter83 = phi i32 [ 0, %.lr.ph.i17.i.preheader.new ], [ %niter83.next.7, %.lr.ph.i17.i ]
  call void @llvm.x86.sse2.pause(), !dbg !11332, !noalias !11227
  call void @llvm.x86.sse2.pause(), !dbg !11332, !noalias !11227
  call void @llvm.x86.sse2.pause(), !dbg !11332, !noalias !11227
  call void @llvm.x86.sse2.pause(), !dbg !11332, !noalias !11227
  call void @llvm.x86.sse2.pause(), !dbg !11332, !noalias !11227
  call void @llvm.x86.sse2.pause(), !dbg !11332, !noalias !11227
  call void @llvm.x86.sse2.pause(), !dbg !11332, !noalias !11227
  call void @llvm.x86.sse2.pause(), !dbg !11332, !noalias !11227
  %niter83.next.7 = add i32 %niter83, 8, !dbg !11331 ; 2 uses
  %niter83.ncmp.7 = icmp eq i32 %niter83.next.7, %unroll_iter82, !dbg !11331
  br i1 %niter83.ncmp.7, label %._crit_edge.loopexit.i20.i.unr-lcssa, label %.lr.ph.i17.i, !dbg !11331

_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChanneluE10start_recvCskAlUH1kY1DR_10polars_ooc.exit: ; preds = %bb.j
  %i.bc = load i32, ptr %i.i, align 8, !dbg !11339, !range !3629, !noundef !13 ; 2 uses
  %.not = icmp eq i32 %i.bc, 1000000000, !dbg !11339
  br i1 %.not, label %bb.o, label %bb.n, !dbg !11341

_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChanneluE4readCskAlUH1kY1DR_10polars_ooc.exit: ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.v ; 2 uses
  store ptr %i.bd, ptr %i.g, align 8, !dbg !11342, !alias.scope !11227
  %i.be = load i64, ptr %i.l, align 8, !dbg !11343, !noalias !11227, !noundef !13
  %i.bf = add i64 %i.be, %i.s, !dbg !11344        ; 2 uses
  store i64 %i.bf, ptr %i.j, align 8, !dbg !11346, !alias.scope !11227
  store atomic i64 %i.bf, ptr %i.bd release, align 8, !dbg !11347
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 256, !dbg !11355
  call fastcc void @_RNvMs0_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bg), !dbg !11357
  br label %.loopexit, !dbg !11358

bb.n:                                             ; preds = %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChanneluE10start_recvCskAlUH1kY1DR_10polars_ooc.exit
  %i.bh = load i64, ptr %i.h, align 8, !dbg !11362, !noundef !13 ; 2 uses
  %i.bi = call { i64, i32 } @_RNvMNtCsh8eZTKRCwoO_3std4timeNtB2_7Instant3now(), !dbg !11363 ; 2 uses
  %i.bj = extractvalue { i64, i32 } %i.bi, 0, !dbg !11363 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, %i.bh, !dbg !11364
  br i1 %i.bk, label %.split, label %bb.ab, !dbg !11364

bb.o:                                             ; preds = %.split, %bb.ab, %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChanneluE10start_recvCskAlUH1kY1DR_10polars_ooc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !11372, !noalias !11375
  store ptr %i.g, ptr %i.f, align 8, !dbg !11378
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !11378
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !11378
  %i.bl = load i8, ptr %i.r, align 8, !dbg !11379, !range !8219, !noalias !11388, !noundef !13
  %i.bm = icmp eq i8 %i.bl, 1, !dbg !11395
  br i1 %i.bm, label %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCskAlUH1kY1DR_10polars_ooc.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCskAlUH1kY1DR_10polars_ooc.exit.i.i, !dbg !11395, !prof !465

_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCskAlUH1kY1DR_10polars_ooc.exit.i.i: ; preds = %bb.o
  %i.bn = call noundef ptr @_RINvMs0_NtNtNtNtCsh8eZTKRCwoO_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscgRAwXFJnXP_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECskAlUH1kY1DR_10polars_ooc(ptr noundef nonnull align 8 %i.q, ptr noalias noundef align 8 dereferenceable_or_null(16) null), !dbg !11396, !noalias !11375 ; 2 uses
  %i.bo = icmp eq ptr %i.bn, null, !dbg !11397
  br i1 %i.bo, label %_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChanneluE4recvs_0uEs_0uECskAlUH1kY1DR_10polars_ooc.exit.i, label %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCskAlUH1kY1DR_10polars_ooc.exit.thread.i.i, !dbg !11397

_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCskAlUH1kY1DR_10polars_ooc.exit.thread.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCskAlUH1kY1DR_10polars_ooc.exit.i.i, %bb.o
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.bn, %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCskAlUH1kY1DR_10polars_ooc.exit.i.i ], [ %i.q, %bb.o ] ; 4 uses
  %i.bp = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !dbg !11400, !noalias !11375, !noundef !13 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !dbg !11410, !noalias !11375
  %.not.i.i.i = icmp eq ptr %i.bp, null, !dbg !11412
  br i1 %.not.i.i.i, label %bb.p, label %bb.v, !dbg !11413, !prof !77

bb.p:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCskAlUH1kY1DR_10polars_ooc.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !11414, !noalias !11375
  %i.bq = call noundef nonnull ptr @_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB2_7Context3new(), !dbg !11414, !noalias !11375 ; 4 uses
  store ptr %i.bq, ptr %i.e, align 8, !dbg !11414, !noalias !11375
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !11415, !noalias !11375
  store ptr %i.g, ptr %i.c, align 8, !dbg !11416, !noalias !11375
  store ptr %0, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8, !dbg !11416
  store ptr %i.h, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx, align 8, !dbg !11416
  invoke fastcc void @_RNCNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB6_7ChanneluE4recvs_0CskAlUH1kY1DR_10polars_ooc(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.bq)
          to label %bb.s unwind label %bb.q, !dbg !11421, !noalias !11375

bb.q:                                             ; preds = %bb.p
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bs = atomicrmw sub ptr %i.bq, i64 1 release, align 8, !dbg !11423, !noalias !11429
  %i.bt = icmp eq i64 %i.bs, 1, !dbg !11436
  br i1 %i.bt, label %bb.r, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc.exit.i.i.i, !dbg !11436

bb.r:                                             ; preds = %bb.q
  fence acquire, !dbg !11437
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerE9drop_slowCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.e) #26
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc.exit.i.i.i unwind label %bb.u, !dbg !11439, !noalias !11375

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !11415, !noalias !11375
  %i.bu = atomicrmw sub ptr %i.bq, i64 1 release, align 8, !dbg !11440, !noalias !11446
  %i.bv = icmp eq i64 %i.bu, 1, !dbg !11453
  br i1 %i.bv, label %bb.t, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc.exit19.i.i.i, !dbg !11453

bb.t:                                             ; preds = %bb.s
  fence acquire, !dbg !11454
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerE9drop_slowCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.e) #26, !dbg !11456, !noalias !11375
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc.exit19.i.i.i, !dbg !11456

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc.exit19.i.i.i: ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !11457, !noalias !11375
  br label %_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChanneluE4recvs_0uECskAlUH1kY1DR_10polars_ooc.exit, !dbg !11457

bb.u:                                             ; preds = %bb.aa, %bb.r
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #25, !dbg !11458, !noalias !11375
  unreachable, !dbg !11458

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc.exit.i.i.i: ; preds = %bb.aa, %bb.z, %bb.r, %bb.q
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %i.br, %bb.q ], [ %i.cd, %bb.z ], [ %i.br, %bb.r ], [ %i.cd, %bb.aa ]
  resume { ptr, i32 } %.pn.pn.i.i.i, !dbg !11458

bb.v:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCskAlUH1kY1DR_10polars_ooc.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !11459, !noalias !11375
  store ptr %i.bp, ptr %i.d, align 8, !dbg !11459, !noalias !11375
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 24, !dbg !11460
  store atomic i64 0, ptr %i.bx release, align 8, !dbg !11470, !noalias !11375
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 32, !dbg !11472
  store atomic ptr null, ptr %i.by release, align 8, !dbg !11479, !noalias !11375
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !11481, !noalias !11375
  store ptr %i.g, ptr %i.b, align 8, !dbg !11482, !noalias !11375
  store ptr %0, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8, !dbg !11482
  store ptr %i.h, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8, !dbg !11482
  invoke fastcc void @_RNCNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB6_7ChanneluE4recvs_0CskAlUH1kY1DR_10polars_ooc(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.bp)
          to label %bb.w unwind label %bb.z, !dbg !11486, !noalias !11375

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11481, !noalias !11375
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11488, !noalias !11375
  %i.bz = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !dbg !11492, !noalias !11375, !noundef !13 ; 3 uses
  store ptr %i.bz, ptr %i.a, align 8, !dbg !11492, !noalias !11375
  store ptr %i.bp, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !dbg !11496, !noalias !11375
  %i.ca = icmp eq ptr %i.bz, null, !dbg !11498
  br i1 %i.ca, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECskAlUH1kY1DR_10polars_ooc.exit.i.i.i, label %bb.x, !dbg !11498

bb.x:                                             ; preds = %bb.w
  %i.cb = atomicrmw sub ptr %i.bz, i64 1 release, align 8, !dbg !11500, !noalias !11506
  %i.cc = icmp eq i64 %i.cb, 1, !dbg !11515
  br i1 %i.cc, label %bb.y, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECskAlUH1kY1DR_10polars_ooc.exit.i.i.i, !dbg !11515

bb.y:                                             ; preds = %bb.x
  fence acquire, !dbg !11516
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerE9drop_slowCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a) #26, !dbg !11518, !noalias !11375
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECskAlUH1kY1DR_10polars_ooc.exit.i.i.i, !dbg !11518

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECskAlUH1kY1DR_10polars_ooc.exit.i.i.i: ; preds = %bb.y, %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11519, !noalias !11375
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !11520, !noalias !11375
  br label %_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChanneluE4recvs_0uECskAlUH1kY1DR_10polars_ooc.exit, !dbg !11521

bb.z:                                             ; preds = %bb.v
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = atomicrmw sub ptr %i.bp, i64 1 release, align 8, !dbg !11522, !noalias !11528
  %i.cf = icmp eq i64 %i.ce, 1, !dbg !11535
  br i1 %i.cf, label %bb.aa, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc.exit.i.i.i, !dbg !11535

bb.aa:                                            ; preds = %bb.z
  fence acquire, !dbg !11536
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerE9drop_slowCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.d) #26
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc.exit.i.i.i unwind label %bb.u, !dbg !11538, !noalias !11375

_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChanneluE4recvs_0uEs_0uECskAlUH1kY1DR_10polars_ooc.exit.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCskAlUH1kY1DR_10polars_ooc.exit.i.i
  call fastcc void @_RNCINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChanneluE4recvs_0uEs0_0CskAlUH1kY1DR_10polars_ooc(ptr nonnull %i.f), !dbg !11539, !noalias !11375
  br label %_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChanneluE4recvs_0uECskAlUH1kY1DR_10polars_ooc.exit, !dbg !11539

_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChanneluE4recvs_0uECskAlUH1kY1DR_10polars_ooc.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc.exit19.i.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECskAlUH1kY1DR_10polars_ooc.exit.i.i.i, %_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChanneluE4recvs_0uEs_0uECskAlUH1kY1DR_10polars_ooc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !11543, !noalias !11375
  br label %bb.b, !dbg !11225

.split:                                           ; preds = %bb.n
  %i.cg = extractvalue { i64, i32 } %i.bi, 1, !dbg !11363 ; 2 uses
  %i.ch = icmp ult i32 %i.cg, 1000000000, !dbg !11544
  call void @llvm.assume(i1 %i.ch), !dbg !11544
  %.not12 = icmp samesign ult i32 %i.cg, %i.bc, !dbg !11552
  br i1 %.not12, label %bb.o, label %.loopexit, !dbg !11363

bb.ab:                                            ; preds = %bb.n
  %.not11 = icmp slt i64 %i.bj, %i.bh, !dbg !11552
  br i1 %.not11, label %bb.o, label %.loopexit, !dbg !11363

.loopexit:                                        ; preds = %.split, %bb.ab, %bb.j, %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChanneluE4readCskAlUH1kY1DR_10polars_ooc.exit
  %.sroa.0.0 = phi i8 [ 2, %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChanneluE4readCskAlUH1kY1DR_10polars_ooc.exit ], [ 1, %bb.j ], [ 0, %bb.ab ], [ 0, %.split ], !dbg !11560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !11561
  ret i8 %.sroa.0.0, !dbg !11562
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 3) i8 @_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChanneluE4sendCskAlUH1kY1DR_10polars_ooc(ptr noundef nonnull align 128 %0, i64 %1, i32 noundef range(i32 0, 1000000001) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !11563 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  store i64 %1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i32 %2, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !11564
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !11565
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false), !dbg !11565
  %i.m = load atomic i64, ptr %i.k monotonic, align 128, !dbg !11567, !noalias !11575 ; 2 uses
  %i.n = load i64, ptr %i.l, align 16, !dbg !11578, !noalias !11575, !noundef !13 ; 2 uses
  %i.o = and i64 %i.n, %i.m, !dbg !11580
  %i.p = icmp eq i64 %i.o, 0, !dbg !11580
  br i1 %i.p, label %.lr.ph.i.lr.ph, label %.loopexit16, !dbg !11580

.lr.ph.i.lr.ph:                                   ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 384
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.u = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %.lr.ph.i, !dbg !11580

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChanneluE4send0uECskAlUH1kY1DR_10polars_ooc.exit
  %i.w = phi i64 [ %i.n, %.lr.ph.i.lr.ph ], [ %i.cp, %_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChanneluE4send0uECskAlUH1kY1DR_10polars_ooc.exit ]
  %i.x = phi i64 [ %i.m, %.lr.ph.i.lr.ph ], [ %i.co, %_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChanneluE4send0uECskAlUH1kY1DR_10polars_ooc.exit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !11581), !dbg !11583
  br label %bb.b, !dbg !11580

bb.b:                                             ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, %.lr.ph.i
  %i.y = phi i64 [ %i.w, %.lr.ph.i ], [ %i.bc, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ]
  %.sroa.02.034.i = phi i64 [ %i.x, %.lr.ph.i ], [ %i.bb, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ] ; 8 uses
  %.sroa.0.02833.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.0.1.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ] ; 14 uses
  %i.z = add i64 %i.y, -1, !dbg !11584
  %i.aa = and i64 %i.z, %.sroa.02.034.i, !dbg !11585 ; 4 uses
  %i.ab = load i64, ptr %i.q, align 8, !dbg !11586, !noalias !11581, !noundef !13
  %i.ac = sub i64 0, %i.ab, !dbg !11588
  %i.ad = and i64 %.sroa.02.034.i, %i.ac, !dbg !11589
  %i.ae = load ptr, ptr %i.r, align 8, !dbg !11590, !noalias !11581, !nonnull !13, !noundef !13 ; 2 uses
  %i.af = load i64, ptr %i.s, align 32, !dbg !11590, !noalias !11581, !noundef !13
  %i.ag = icmp ult i64 %i.aa, %i.af, !dbg !11592
  call void @llvm.assume(i1 %i.ag), !dbg !11597
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.aa, !dbg !11598
  %i.ai = load atomic i64, ptr %i.ah acquire, align 8, !dbg !11599, !noalias !11581 ; 2 uses
  %i.aj = icmp eq i64 %.sroa.02.034.i, %i.ai, !dbg !11603
  br i1 %i.aj, label %bb.d, label %bb.c, !dbg !11603

bb.c:                                             ; preds = %bb.b
  %i.ak = load i64, ptr %i.q, align 8, !dbg !11605, !noalias !11581, !noundef !13
  %i.al = add i64 %i.ak, %i.ai, !dbg !11606
  %i.am = add i64 %.sroa.02.034.i, 1, !dbg !11609
  %i.an = icmp eq i64 %i.al, %i.am, !dbg !11610
  br i1 %i.an, label %bb.h, label %bb.e, !dbg !11610

bb.d:                                             ; preds = %bb.b
  %i.ao = add nuw i64 %i.aa, 1, !dbg !11611
  %i.ap = load i64, ptr %i.t, align 128, !dbg !11612, !noalias !11581, !noundef !13
  %i.aq = icmp ult i64 %i.ao, %i.ap, !dbg !11611
  br i1 %i.aq, label %bb.k, label %bb.j, !dbg !11611

bb.e:                                             ; preds = %bb.c
  %i.ar = icmp ult i32 %.sroa.0.02833.i, 7, !dbg !11613
  br i1 %i.ar, label %bb.g, label %bb.f, !dbg !11613

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now(), !dbg !11615, !noalias !11581
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, !dbg !11615

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.sroa.0.02833.i, 0, !dbg !11616
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader, !dbg !11620

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.as = mul nuw i32 %.sroa.0.02833.i, %.sroa.0.02833.i, !dbg !11621 ; 2 uses
  %xtraiter = and i32 %i.as, 7, !dbg !11620       ; 3 uses
  %i.at = icmp ult i32 %.sroa.0.02833.i, 3, !dbg !11620
  br i1 %i.at, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new, !dbg !11620

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.as, 56, !dbg !11620
  br label %.lr.ph.i.i, !dbg !11620

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !dbg !11623, !noalias !11581
  call void @llvm.x86.sse2.pause(), !dbg !11623, !noalias !11581
  call void @llvm.x86.sse2.pause(), !dbg !11623, !noalias !11581
  call void @llvm.x86.sse2.pause(), !dbg !11623, !noalias !11581
  call void @llvm.x86.sse2.pause(), !dbg !11623, !noalias !11581
  call void @llvm.x86.sse2.pause(), !dbg !11623, !noalias !11581
  call void @llvm.x86.sse2.pause(), !dbg !11623, !noalias !11581
  call void @llvm.x86.sse2.pause(), !dbg !11623, !noalias !11581
  %niter.next.7 = add i32 %niter, 8, !dbg !11620  ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter, !dbg !11620
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !dbg !11620

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !11620
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader, !dbg !11620

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod70 = icmp ne i32 %xtraiter, 0, !dbg !11620
  call void @llvm.assume(i1 %lcmp.mod70), !dbg !11620
  br label %.lr.ph.i.i.epil, !dbg !11620

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !11623, !noalias !11581
  %epil.iter.next = add i32 %epil.iter, 1, !dbg !11620 ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter, !dbg !11620
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !dbg !11620, !llvm.loop !11626

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.g, %bb.f
  %i.au = add i32 %.sroa.0.02833.i, 1, !dbg !11627
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, !dbg !11628

bb.h:                                             ; preds = %bb.c
  fence seq_cst, !dbg !11629
  %i.av = load atomic i64, ptr %0 monotonic, align 128, !dbg !11631, !noalias !11581
  %i.aw = load i64, ptr %i.q, align 8, !dbg !11634, !noalias !11581, !noundef !13
  %i.ax = add i64 %i.aw, %i.av, !dbg !11636
  %i.ay = icmp eq i64 %i.ax, %.sroa.02.034.i, !dbg !11638
  br i1 %i.ay, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChanneluE10start_sendCskAlUH1kY1DR_10polars_ooc.exit, label %bb.i, !dbg !11638

bb.i:                                             ; preds = %bb.h
  %.sroa.0.0.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.02833.i, i32 6), !dbg !11639 ; 2 uses
  %3 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i, !dbg !11642 ; 2 uses
  %.not.i11.i = icmp eq i32 %.sroa.0.02833.i, 0, !dbg !11644
  br i1 %.not.i11.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, label %.lr.ph.i12.i.preheader, !dbg !11648

.lr.ph.i12.i.preheader:                           ; preds = %bb.i
  %xtraiter71 = and i32 %3, 5, !dbg !11648        ; 3 uses
  %i.az = icmp ult i32 %.sroa.0.02833.i, 3, !dbg !11648
  br i1 %i.az, label %.lr.ph.i12.i.epil.preheader, label %.lr.ph.i12.i.preheader.new, !dbg !11648

.lr.ph.i12.i.preheader.new:                       ; preds = %.lr.ph.i12.i.preheader
  %unroll_iter75 = and i32 %3, 56, !dbg !11648
  br label %.lr.ph.i12.i, !dbg !11648

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i12.i
  %lcmp.mod73.not = icmp eq i32 %xtraiter71, 0, !dbg !11648
  br i1 %lcmp.mod73.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil.preheader, !dbg !11648

.lr.ph.i12.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i12.i.preheader
  %lcmp.mod74 = icmp ne i32 %xtraiter71, 0, !dbg !11648
  call void @llvm.assume(i1 %lcmp.mod74), !dbg !11648
  br label %.lr.ph.i12.i.epil, !dbg !11648

.lr.ph.i12.i.epil:                                ; preds = %.lr.ph.i12.i.epil, %.lr.ph.i12.i.epil.preheader
  %epil.iter72 = phi i32 [ 0, %.lr.ph.i12.i.epil.preheader ], [ %epil.iter72.next, %.lr.ph.i12.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !11649, !noalias !11581
  %epil.iter72.next = add i32 %epil.iter72, 1, !dbg !11648 ; 2 uses
  %epil.iter72.cmp.not = icmp eq i32 %epil.iter72.next, %xtraiter71, !dbg !11648
  br i1 %epil.iter72.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil, !dbg !11648, !llvm.loop !11652

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i12.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ba = add i32 %.sroa.0.02833.i, 1, !dbg !11653
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, !dbg !11654

.lr.ph.i12.i:                                     ; preds = %.lr.ph.i12.i, %.lr.ph.i12.i.preheader.new
  %niter76 = phi i32 [ 0, %.lr.ph.i12.i.preheader.new ], [ %niter76.next.7, %.lr.ph.i12.i ]
  call void @llvm.x86.sse2.pause(), !dbg !11649, !noalias !11581
  call void @llvm.x86.sse2.pause(), !dbg !11649, !noalias !11581
  call void @llvm.x86.sse2.pause(), !dbg !11649, !noalias !11581
  call void @llvm.x86.sse2.pause(), !dbg !11649, !noalias !11581
  call void @llvm.x86.sse2.pause(), !dbg !11649, !noalias !11581
  call void @llvm.x86.sse2.pause(), !dbg !11649, !noalias !11581
  call void @llvm.x86.sse2.pause(), !dbg !11649, !noalias !11581
  call void @llvm.x86.sse2.pause(), !dbg !11649, !noalias !11581
  %niter76.next.7 = add i32 %niter76, 8, !dbg !11648 ; 2 uses
  %niter76.ncmp.7 = icmp eq i32 %niter76.next.7, %unroll_iter75, !dbg !11648
  br i1 %niter76.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i12.i, !dbg !11648

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i: ; preds = %._crit_edge.loopexit.i20.i, %bb.m, %._crit_edge.loopexit.i.i, %bb.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.1.i = phi i32 [ %i.au, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 1, %bb.m ], [ %i.bk, %._crit_edge.loopexit.i20.i ], [ %i.ba, %._crit_edge.loopexit.i.i ], [ 1, %bb.i ], !dbg !11656
  %i.bb = load atomic i64, ptr %i.k monotonic, align 128, !dbg !11657, !noalias !11581 ; 2 uses
  %i.bc = load i64, ptr %i.l, align 16, !dbg !11578, !noalias !11581, !noundef !13 ; 2 uses
  %i.bd = and i64 %i.bc, %i.bb, !dbg !11580
  %i.be = icmp eq i64 %i.bd, 0, !dbg !11580
  br i1 %i.be, label %bb.b, label %.loopexit16, !dbg !11580

bb.j:                                             ; preds = %bb.d
  %i.bf = load i64, ptr %i.q, align 8, !dbg !11660, !noalias !11581, !noundef !13
  %i.bg = add i64 %i.bf, %i.ad, !dbg !11661
  br label %bb.l, !dbg !11663

bb.k:                                             ; preds = %bb.d
  %i.bh = add i64 %.sroa.02.034.i, 1, !dbg !11664
  br label %bb.l, !dbg !11663

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.01.0.i = phi i64 [ %i.bh, %bb.k ], [ %i.bg, %bb.j ], !dbg !11656
  %i.bi = cmpxchg weak ptr %i.k, i64 %.sroa.02.034.i, i64 %.sroa.01.0.i seq_cst monotonic, align 8, !dbg !11665, !noalias !11581
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.bi, 1, !dbg !11670
  br i1 %.sroa.18.0.in.i.i, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChanneluE5writeCskAlUH1kY1DR_10polars_ooc.exit, label %bb.m, !dbg !11671

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.i.i15.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.02833.i, i32 6), !dbg !11672 ; 2 uses
  %4 = mul nuw nsw i32 %.sroa.0.0.i.i15.i, %.sroa.0.0.i.i15.i, !dbg !11675 ; 2 uses
  %.not.i16.i = icmp eq i32 %.sroa.0.02833.i, 0, !dbg !11677
  br i1 %.not.i16.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, label %.lr.ph.i17.i.preheader, !dbg !11681

.lr.ph.i17.i.preheader:                           ; preds = %bb.m
  %xtraiter77 = and i32 %4, 5, !dbg !11681        ; 3 uses
  %i.bj = icmp ult i32 %.sroa.0.02833.i, 3, !dbg !11681
  br i1 %i.bj, label %.lr.ph.i17.i.epil.preheader, label %.lr.ph.i17.i.preheader.new, !dbg !11681

.lr.ph.i17.i.preheader.new:                       ; preds = %.lr.ph.i17.i.preheader
  %unroll_iter81 = and i32 %4, 56, !dbg !11681
  br label %.lr.ph.i17.i, !dbg !11681

._crit_edge.loopexit.i20.i.unr-lcssa:             ; preds = %.lr.ph.i17.i
  %lcmp.mod79.not = icmp eq i32 %xtraiter77, 0, !dbg !11681
  br i1 %lcmp.mod79.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil.preheader, !dbg !11681

.lr.ph.i17.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i20.i.unr-lcssa, %.lr.ph.i17.i.preheader
  %lcmp.mod80 = icmp ne i32 %xtraiter77, 0, !dbg !11681
  call void @llvm.assume(i1 %lcmp.mod80), !dbg !11681
  br label %.lr.ph.i17.i.epil, !dbg !11681

.lr.ph.i17.i.epil:                                ; preds = %.lr.ph.i17.i.epil, %.lr.ph.i17.i.epil.preheader
  %epil.iter78 = phi i32 [ 0, %.lr.ph.i17.i.epil.preheader ], [ %epil.iter78.next, %.lr.ph.i17.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !11682, !noalias !11581
  %epil.iter78.next = add i32 %epil.iter78, 1, !dbg !11681 ; 2 uses
  %epil.iter78.cmp.not = icmp eq i32 %epil.iter78.next, %xtraiter77, !dbg !11681
  br i1 %epil.iter78.cmp.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil, !dbg !11681, !llvm.loop !11685

._crit_edge.loopexit.i20.i:                       ; preds = %.lr.ph.i17.i.epil, %._crit_edge.loopexit.i20.i.unr-lcssa
  %i.bk = add i32 %.sroa.0.02833.i, 1, !dbg !11686
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, !dbg !11687

.lr.ph.i17.i:                                     ; preds = %.lr.ph.i17.i, %.lr.ph.i17.i.preheader.new
  %niter82 = phi i32 [ 0, %.lr.ph.i17.i.preheader.new ], [ %niter82.next.7, %.lr.ph.i17.i ]
  call void @llvm.x86.sse2.pause(), !dbg !11682, !noalias !11581
  call void @llvm.x86.sse2.pause(), !dbg !11682, !noalias !11581
  call void @llvm.x86.sse2.pause(), !dbg !11682, !noalias !11581
  call void @llvm.x86.sse2.pause(), !dbg !11682, !noalias !11581
  call void @llvm.x86.sse2.pause(), !dbg !11682, !noalias !11581
  call void @llvm.x86.sse2.pause(), !dbg !11682, !noalias !11581
  call void @llvm.x86.sse2.pause(), !dbg !11682, !noalias !11581
  call void @llvm.x86.sse2.pause(), !dbg !11682, !noalias !11581
  %niter82.next.7 = add i32 %niter82, 8, !dbg !11681 ; 2 uses
  %niter82.ncmp.7 = icmp eq i32 %niter82.next.7, %unroll_iter81, !dbg !11681
  br i1 %niter82.ncmp.7, label %._crit_edge.loopexit.i20.i.unr-lcssa, label %.lr.ph.i17.i, !dbg !11681

_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChanneluE10start_sendCskAlUH1kY1DR_10polars_ooc.exit: ; preds = %bb.h
  %i.bl = load i32, ptr %i.i, align 8, !dbg !11689, !range !3629, !noundef !13 ; 2 uses
  %.not = icmp eq i32 %i.bl, 1000000000, !dbg !11689
  br i1 %.not, label %bb.o, label %bb.n, !dbg !11691

_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChanneluE5writeCskAlUH1kY1DR_10polars_ooc.exit: ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.aa ; 2 uses
  store ptr %i.bm, ptr %i.g, align 8, !dbg !11692, !alias.scope !11581
  %i.bn = add i64 %.sroa.02.034.i, 1, !dbg !11693 ; 2 uses
  store i64 %i.bn, ptr %i.j, align 8, !dbg !11693, !alias.scope !11581
  store atomic i64 %i.bn, ptr %i.bm release, align 8, !dbg !11694
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 320, !dbg !11701
  call fastcc void @_RNvMs0_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bo) #29, !dbg !11702
  br label %.loopexit16, !dbg !11703

bb.n:                                             ; preds = %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChanneluE10start_sendCskAlUH1kY1DR_10polars_ooc.exit
  %i.bp = load i64, ptr %i.h, align 8, !dbg !11707, !noundef !13 ; 2 uses
  %i.bq = call { i64, i32 } @_RNvMNtCsh8eZTKRCwoO_3std4timeNtB2_7Instant3now(), !dbg !11708 ; 2 uses
  %i.br = extractvalue { i64, i32 } %i.bq, 0, !dbg !11708 ; 2 uses
  %i.bs = icmp eq i64 %i.br, %i.bp, !dbg !11709
  br i1 %i.bs, label %.split, label %bb.ab, !dbg !11709

bb.o:                                             ; preds = %.split, %bb.ab, %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChanneluE10start_sendCskAlUH1kY1DR_10polars_ooc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !11717, !noalias !11720
  store ptr %i.g, ptr %i.f, align 8, !dbg !11723
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !11723
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !11723
  %i.bt = load i8, ptr %i.v, align 8, !dbg !11724, !range !8219, !noalias !11733, !noundef !13
  %i.bu = icmp eq i8 %i.bt, 1, !dbg !11740
  br i1 %i.bu, label %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCskAlUH1kY1DR_10polars_ooc.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCskAlUH1kY1DR_10polars_ooc.exit.i.i, !dbg !11740, !prof !465

_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCskAlUH1kY1DR_10polars_ooc.exit.i.i: ; preds = %bb.o
  %i.bv = call noundef ptr @_RINvMs0_NtNtNtNtCsh8eZTKRCwoO_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscgRAwXFJnXP_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECskAlUH1kY1DR_10polars_ooc(ptr noundef nonnull align 8 %i.u, ptr noalias noundef align 8 dereferenceable_or_null(16) null), !dbg !11741, !noalias !11720 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, null, !dbg !11742
  br i1 %i.bw, label %_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChanneluE4send0uEs_0uECskAlUH1kY1DR_10polars_ooc.exit.i, label %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCskAlUH1kY1DR_10polars_ooc.exit.thread.i.i, !dbg !11742

_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCskAlUH1kY1DR_10polars_ooc.exit.thread.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCskAlUH1kY1DR_10polars_ooc.exit.i.i, %bb.o
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.bv, %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCskAlUH1kY1DR_10polars_ooc.exit.i.i ], [ %i.u, %bb.o ] ; 4 uses
  %i.bx = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !dbg !11745, !noalias !11720, !noundef !13 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !dbg !11755, !noalias !11720
  %.not.i.i.i = icmp eq ptr %i.bx, null, !dbg !11757
  br i1 %.not.i.i.i, label %bb.p, label %bb.v, !dbg !11758, !prof !77

bb.p:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCskAlUH1kY1DR_10polars_ooc.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !11759, !noalias !11720
  %i.by = call noundef nonnull ptr @_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB2_7Context3new(), !dbg !11759, !noalias !11720 ; 4 uses
  store ptr %i.by, ptr %i.e, align 8, !dbg !11759, !noalias !11720
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !11760, !noalias !11720
  store ptr %i.g, ptr %i.c, align 8, !dbg !11761, !noalias !11720
  store ptr %0, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8, !dbg !11761
  store ptr %i.h, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx, align 8, !dbg !11761
  invoke fastcc void @_RNCNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB6_7ChanneluE4send0CskAlUH1kY1DR_10polars_ooc(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.by)
          to label %bb.s unwind label %bb.q, !dbg !11766, !noalias !11720

bb.q:                                             ; preds = %bb.p
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ca = atomicrmw sub ptr %i.by, i64 1 release, align 8, !dbg !11768, !noalias !11774
  %i.cb = icmp eq i64 %i.ca, 1, !dbg !11781
  br i1 %i.cb, label %bb.r, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc.exit.i.i.i, !dbg !11781

bb.r:                                             ; preds = %bb.q
  fence acquire, !dbg !11782
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerE9drop_slowCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.e) #26
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc.exit.i.i.i unwind label %bb.u, !dbg !11784, !noalias !11720

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !11760, !noalias !11720
  %i.cc = atomicrmw sub ptr %i.by, i64 1 release, align 8, !dbg !11785, !noalias !11791
  %i.cd = icmp eq i64 %i.cc, 1, !dbg !11798
  br i1 %i.cd, label %bb.t, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc.exit19.i.i.i, !dbg !11798

bb.t:                                             ; preds = %bb.s
  fence acquire, !dbg !11799
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerE9drop_slowCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.e) #26, !dbg !11801, !noalias !11720
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc.exit19.i.i.i, !dbg !11801

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc.exit19.i.i.i: ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !11802, !noalias !11720
  br label %_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChanneluE4send0uECskAlUH1kY1DR_10polars_ooc.exit, !dbg !11802

bb.u:                                             ; preds = %bb.aa, %bb.r
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #25, !dbg !11803, !noalias !11720
  unreachable, !dbg !11803

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc.exit.i.i.i: ; preds = %bb.aa, %bb.z, %bb.r, %bb.q
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %i.bz, %bb.q ], [ %i.cl, %bb.z ], [ %i.bz, %bb.r ], [ %i.cl, %bb.aa ]
  resume { ptr, i32 } %.pn.pn.i.i.i, !dbg !11803

bb.v:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCskAlUH1kY1DR_10polars_ooc.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !11804, !noalias !11720
  store ptr %i.bx, ptr %i.d, align 8, !dbg !11804, !noalias !11720
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bx, i64 24, !dbg !11805
  store atomic i64 0, ptr %i.cf release, align 8, !dbg !11815, !noalias !11720
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bx, i64 32, !dbg !11817
  store atomic ptr null, ptr %i.cg release, align 8, !dbg !11824, !noalias !11720
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !11826, !noalias !11720
  store ptr %i.g, ptr %i.b, align 8, !dbg !11827, !noalias !11720
  store ptr %0, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8, !dbg !11827
  store ptr %i.h, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8, !dbg !11827
  invoke fastcc void @_RNCNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB6_7ChanneluE4send0CskAlUH1kY1DR_10polars_ooc(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.bx)
          to label %bb.w unwind label %bb.z, !dbg !11831, !noalias !11720

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11826, !noalias !11720
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11833, !noalias !11720
  %i.ch = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !dbg !11837, !noalias !11720, !noundef !13 ; 3 uses
  store ptr %i.ch, ptr %i.a, align 8, !dbg !11837, !noalias !11720
  store ptr %i.bx, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !dbg !11841, !noalias !11720
  %i.ci = icmp eq ptr %i.ch, null, !dbg !11843
  br i1 %i.ci, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECskAlUH1kY1DR_10polars_ooc.exit.i.i.i, label %bb.x, !dbg !11843

bb.x:                                             ; preds = %bb.w
  %i.cj = atomicrmw sub ptr %i.ch, i64 1 release, align 8, !dbg !11845, !noalias !11851
  %i.ck = icmp eq i64 %i.cj, 1, !dbg !11860
  br i1 %i.ck, label %bb.y, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECskAlUH1kY1DR_10polars_ooc.exit.i.i.i, !dbg !11860

bb.y:                                             ; preds = %bb.x
  fence acquire, !dbg !11861
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerE9drop_slowCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a) #26, !dbg !11863, !noalias !11720
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECskAlUH1kY1DR_10polars_ooc.exit.i.i.i, !dbg !11863

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECskAlUH1kY1DR_10polars_ooc.exit.i.i.i: ; preds = %bb.y, %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11864, !noalias !11720
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !11865, !noalias !11720
  br label %_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChanneluE4send0uECskAlUH1kY1DR_10polars_ooc.exit, !dbg !11866

bb.z:                                             ; preds = %bb.v
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cm = atomicrmw sub ptr %i.bx, i64 1 release, align 8, !dbg !11867, !noalias !11873
  %i.cn = icmp eq i64 %i.cm, 1, !dbg !11880
  br i1 %i.cn, label %bb.aa, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc.exit.i.i.i, !dbg !11880

bb.aa:                                            ; preds = %bb.z
  fence acquire, !dbg !11881
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerE9drop_slowCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.d) #26
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc.exit.i.i.i unwind label %bb.u, !dbg !11883, !noalias !11720

_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChanneluE4send0uEs_0uECskAlUH1kY1DR_10polars_ooc.exit.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCskAlUH1kY1DR_10polars_ooc.exit.i.i
  call fastcc void @_RNCINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChanneluE4send0uEs0_0CskAlUH1kY1DR_10polars_ooc(ptr nonnull %i.f), !dbg !11884, !noalias !11720
  br label %_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChanneluE4send0uECskAlUH1kY1DR_10polars_ooc.exit, !dbg !11884

_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChanneluE4send0uECskAlUH1kY1DR_10polars_ooc.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc.exit19.i.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECskAlUH1kY1DR_10polars_ooc.exit.i.i.i, %_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChanneluE4send0uEs_0uECskAlUH1kY1DR_10polars_ooc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !11888, !noalias !11720
  %i.co = load atomic i64, ptr %i.k monotonic, align 128, !dbg !11567, !noalias !11889 ; 2 uses
  %i.cp = load i64, ptr %i.l, align 16, !dbg !11578, !noalias !11889, !noundef !13 ; 2 uses
  %i.cq = and i64 %i.cp, %i.co, !dbg !11580
  %i.cr = icmp eq i64 %i.cq, 0, !dbg !11580
  br i1 %i.cr, label %.lr.ph.i, label %.loopexit16, !dbg !11580

.split:                                           ; preds = %bb.n
  %i.cs = extractvalue { i64, i32 } %i.bq, 1, !dbg !11708 ; 2 uses
  %i.ct = icmp ult i32 %i.cs, 1000000000, !dbg !11891
  call void @llvm.assume(i1 %i.ct), !dbg !11891
  %.not14 = icmp samesign ult i32 %i.cs, %i.bl, !dbg !11899
  br i1 %.not14, label %bb.o, label %.loopexit16, !dbg !11708

bb.ab:                                            ; preds = %bb.n
  %.not13 = icmp slt i64 %i.br, %i.bp, !dbg !11899
  br i1 %.not13, label %bb.o, label %.loopexit16, !dbg !11708

.loopexit16:                                      ; preds = %.split, %bb.ab, %_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChanneluE4send0uECskAlUH1kY1DR_10polars_ooc.exit, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, %bb.a, %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChanneluE5writeCskAlUH1kY1DR_10polars_ooc.exit
  %.sroa.0.0 = phi i8 [ 2, %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChanneluE5writeCskAlUH1kY1DR_10polars_ooc.exit ], [ 1, %bb.a ], [ 1, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ], [ 0, %.split ], [ 0, %bb.ab ], [ 1, %_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChanneluE4send0uECskAlUH1kY1DR_10polars_ooc.exit ], !dbg !11908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !11909
  ret i8 %.sroa.0.0, !dbg !11910
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task7DynTaskuNtBM_12TaskMetadataEEL_E9drop_slowCskAlUH1kY1DR_10polars_ooc(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 personality ptr @rust_eh_personality !dbg !11911 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !11912, !nonnull !13, !noundef !13 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11912
  %i.c = load ptr, ptr %i.b, align 8, !dbg !11912, !nonnull !13, !align !498, !noundef !13 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !11913
  %i.e = load i64, ptr %i.d, align 8, !dbg !11913, !range !732, !invariant.load !13 ; 2 uses
  %.val = load ptr, ptr %i.c, align 8, !dbg !11915 ; 2 uses
  %.not.i = icmp eq ptr %.val, null, !dbg !11916
  br i1 %.not.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeDINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task7DynTaskuNtBM_12TaskMetadataEEL_ECskAlUH1kY1DR_10polars_ooc.exit, label %bb.b, !dbg !11916

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.e, -1, !dbg !11913
  %i.g = and i64 %i.f, -16, !dbg !11913
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g, !dbg !11913
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !11913
  invoke void %.val(ptr noundef nonnull %i.i) #29
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeDINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task7DynTaskuNtBM_12TaskMetadataEEL_ECskAlUH1kY1DR_10polars_ooc.exit unwind label %bb.c, !dbg !11916, !inline_history !11919

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync4WeakDINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task7DynTaskuNtB1l_12TaskMetadataEEL_RNtNtBL_5alloc6GlobalEECskAlUH1kY1DR_10polars_ooc(ptr nonnull %i.a, ptr nonnull %i.c) #27, !dbg !11920
  resume { ptr, i32 } %i.j, !dbg !11921

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeDINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task7DynTaskuNtBM_12TaskMetadataEEL_ECskAlUH1kY1DR_10polars_ooc.exit: ; preds = %bb.a, %bb.b
  %i.k = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr), !dbg !11922
  br i1 %i.k, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync4WeakDINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task7DynTaskuNtB1l_12TaskMetadataEEL_RNtNtBL_5alloc6GlobalEECskAlUH1kY1DR_10polars_ooc.exit, label %bb.d, !dbg !11922
end_hunk_1
begin_hunk_2_@llvm.umin.i64
!10227 = distinct !DILocation(line: 3130, column: 21, scope: !10228, inlinedAt: !10229)
!10228 = distinct !DISubprogram(name: "compare_exchange_weak", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE21compare_exchange_weak", scope: !450, file: !445, line: 3123, type: !30, scopeLine: 3123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10229 = distinct !DILocation(line: 3413, column: 32, scope: !10216, inlinedAt: !10204)
!10230 = !DILocation(line: 0, scope: !7047, inlinedAt: !10227)
!10231 = !DILocation(line: 3413, column: 21, scope: !10216, inlinedAt: !10204)
!10232 = !DILocation(line: 0, scope: !10193)
!10233 = !DILocation(line: 3282, column: 6, scope: !10193)
!10234 = !DILocation(line: 3278, column: 46, scope: !10193)
!10235 = !DILocation(line: 3276, column: 9, scope: !10193)
!10236 = distinct !DISubprogram(name: "disconnect_senders<polars_ooc::spill_file::CleanRequest>", linkageName: "_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE18disconnect_sendersB10_", scope: !5464, file: !5447, line: 451, type: !30, scopeLine: 451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10237 = !DILocation(line: 452, column: 39, scope: !10236)
!10238 = !DILocation(line: 2447, column: 9, scope: !10239, inlinedAt: !10240)
!10239 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<usize>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8jEE3getCskAlUH1kY1DR_10polars_ooc", scope: !3596, file: !3595, line: 2443, type: !30, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10240 = !DILocation(line: 3615, column: 24, scope: !10241, inlinedAt: !10242)
!10241 = distinct !DISubprogram(name: "as_ptr", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE6as_ptr", scope: !450, file: !445, line: 3614, type: !30, scopeLine: 3614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10242 = !DILocation(line: 3295, column: 41, scope: !10243, inlinedAt: !10244)
!10243 = distinct !DISubprogram(name: "fetch_or", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE8fetch_or", scope: !450, file: !445, line: 3293, type: !30, scopeLine: 3293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10244 = !DILocation(line: 452, column: 30, scope: !10236)
!10245 = !DILocation(line: 4135, column: 23, scope: !10246, inlinedAt: !10247)
!10246 = distinct !DISubprogram(name: "atomic_or<usize, usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic9atomic_orjjECskAlUH1kY1DR_10polars_ooc", scope: !446, file: !445, line: 4131, type: !30, scopeLine: 4131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10247 = !DILocation(line: 3295, column: 26, scope: !10243, inlinedAt: !10244)
!10248 = !DILocation(line: 454, column: 19, scope: !10249)
!10249 = distinct !DILexicalBlock(scope: !10236, file: !5447, line: 452, column: 9)
!10250 = !DILocation(line: 454, column: 12, scope: !10249)
!10251 = !DILocation(line: 455, column: 13, scope: !10249)
!10252 = !DILocation(line: 455, column: 28, scope: !10249)
!10253 = !DILocation(line: 454, column: 9, scope: !10249)
!10254 = !DILocation(line: 460, column: 6, scope: !10236)
!10255 = distinct !DISubprogram(name: "disconnect_receivers<polars_ooc::spill_file::CleanRequest>", linkageName: "_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE20disconnect_receiversB10_", scope: !5464, file: !5447, line: 470, type: !30, scopeLine: 470, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10256 = !DILocation(line: 471, column: 39, scope: !10255)
!10257 = !DILocation(line: 2447, column: 9, scope: !10258, inlinedAt: !10259)
!10258 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<usize>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8jEE3getCskAlUH1kY1DR_10polars_ooc", scope: !3596, file: !3595, line: 2443, type: !30, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10259 = !DILocation(line: 3615, column: 24, scope: !10260, inlinedAt: !10261)
!10260 = distinct !DISubprogram(name: "as_ptr", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE6as_ptr", scope: !450, file: !445, line: 3614, type: !30, scopeLine: 3614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10261 = !DILocation(line: 3295, column: 41, scope: !10262, inlinedAt: !10263)
!10262 = distinct !DISubprogram(name: "fetch_or", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE8fetch_or", scope: !450, file: !445, line: 3293, type: !30, scopeLine: 3293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10263 = !DILocation(line: 471, column: 30, scope: !10255)
!10264 = !DILocation(line: 4135, column: 23, scope: !10265, inlinedAt: !10266)
!10265 = distinct !DISubprogram(name: "atomic_or<usize, usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic9atomic_orjjECskAlUH1kY1DR_10polars_ooc", scope: !446, file: !445, line: 4131, type: !30, scopeLine: 4131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10266 = !DILocation(line: 3295, column: 26, scope: !10262, inlinedAt: !10263)
!10267 = !DILocation(line: 472, column: 38, scope: !10268)
!10268 = distinct !DILexicalBlock(scope: !10255, file: !5447, line: 471, column: 9)
!10269 = !DILocation(line: 472, column: 31, scope: !10268)
!10270 = !DILocation(line: 473, column: 13, scope: !10268)
!10271 = !DILocation(line: 473, column: 26, scope: !10268)
!10272 = !DILocation(line: 502, column: 28, scope: !10273, inlinedAt: !10275)
!10273 = distinct !DILexicalBlock(scope: !10274, file: !5447, line: 501, column: 9)
!10274 = distinct !DISubprogram(name: "discard_all_messages<polars_ooc::spill_file::CleanRequest>", linkageName: "_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE20discard_all_messagesB10_", scope: !5464, file: !5447, line: 495, type: !30, scopeLine: 495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10275 = distinct !DILocation(line: 479, column: 23, scope: !10276)
!10276 = distinct !DILexicalBlock(scope: !10268, file: !5447, line: 472, column: 9)
!10277 = !DILocation(line: 472, column: 28, scope: !10268)
!10278 = !DILocation(line: 3904, column: 24, scope: !444, inlinedAt: !10279)
!10279 = distinct !DILocation(line: 2870, column: 26, scope: !10280, inlinedAt: !10281)
!10280 = distinct !DISubprogram(name: "load", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE4load", scope: !450, file: !445, line: 2868, type: !30, scopeLine: 2868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10281 = distinct !DILocation(line: 501, column: 34, scope: !10274, inlinedAt: !10275)
!10282 = !DILocation(line: 502, column: 27, scope: !10273, inlinedAt: !10275)
!10283 = !DILocation(line: 502, column: 20, scope: !10273, inlinedAt: !10275)
!10284 = !DILocation(line: 505, column: 9, scope: !10285, inlinedAt: !10275)
!10285 = distinct !DILexicalBlock(scope: !10286, file: !5447, line: 504, column: 9)
!10286 = distinct !DILexicalBlock(scope: !10273, file: !5447, line: 502, column: 9)
!10287 = !DILocation(line: 507, column: 33, scope: !10285, inlinedAt: !10275)
!10288 = !DILocation(line: 105, column: 9, scope: !10289, inlinedAt: !10290)
!10289 = distinct !DISubprogram(name: "new", linkageName: "_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff3new", scope: !3715, file: !3714, line: 104, type: !30, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10290 = distinct !DILocation(line: 504, column: 23, scope: !10286, inlinedAt: !10275)
!10291 = !DILocation(line: 0, scope: !10274, inlinedAt: !10275)
!10292 = !DILocation(line: 507, column: 32, scope: !10285, inlinedAt: !10275)
!10293 = !DILocation(line: 507, column: 25, scope: !10285, inlinedAt: !10275)
!10294 = !DILocation(line: 508, column: 32, scope: !10295, inlinedAt: !10275)
!10295 = distinct !DILexicalBlock(scope: !10285, file: !5447, line: 507, column: 13)
!10296 = !DILocation(line: 508, column: 30, scope: !10295, inlinedAt: !10275)
!10297 = !DILocation(line: 508, column: 23, scope: !10295, inlinedAt: !10275)
!10298 = !DILocation(line: 512, column: 33, scope: !10299, inlinedAt: !10275)
!10299 = distinct !DILexicalBlock(scope: !10295, file: !5447, line: 508, column: 13)
!10300 = !DILocation(line: 252, column: 39, scope: !10301, inlinedAt: !10302)
!10301 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::array::Slot<polars_ooc::spill_file::CleanRequest>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5array4SlotNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestEE13get_uncheckedB1O_", scope: !1708, file: !1707, line: 239, type: !30, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10302 = distinct !DILocation(line: 646, column: 26, scope: !10303, inlinedAt: !10304)
!10303 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::array::Slot<polars_ooc::spill_file::CleanRequest>, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5array4SlotNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE13get_uncheckedjEB1l_", scope: !2193, file: !2192, line: 639, type: !30, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10304 = distinct !DILocation(line: 512, column: 45, scope: !10299, inlinedAt: !10275)
!10305 = !DILocation(line: 252, column: 13, scope: !10301, inlinedAt: !10302)
!10306 = !DILocation(line: 253, column: 13, scope: !10301, inlinedAt: !10302)
!10307 = !DILocation(line: 2447, column: 9, scope: !10308, inlinedAt: !10309)
!10308 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<usize>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8jEE3getCskAlUH1kY1DR_10polars_ooc", scope: !3596, file: !3595, line: 2443, type: !30, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10309 = distinct !DILocation(line: 3615, column: 24, scope: !10310, inlinedAt: !10312)
!10310 = !DILexicalBlockFile(scope: !10311, file: !445, discriminator: 4)
!10311 = distinct !DISubprogram(name: "as_ptr", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE6as_ptr", scope: !450, file: !445, line: 3614, type: !30, scopeLine: 3614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10312 = distinct !DILocation(line: 2870, column: 43, scope: !10313, inlinedAt: !10314)
!10313 = !DILexicalBlockFile(scope: !10280, file: !445, discriminator: 4)
!10314 = distinct !DILocation(line: 513, column: 36, scope: !10315, inlinedAt: !10275)
!10315 = distinct !DILexicalBlock(scope: !10299, file: !5447, line: 512, column: 13)
!10316 = !DILocation(line: 3905, column: 24, scope: !444, inlinedAt: !10317)
!10317 = distinct !DILocation(line: 2870, column: 26, scope: !10280, inlinedAt: !10314)
!10318 = !DILocation(line: 516, column: 16, scope: !10319, inlinedAt: !10275)
!10319 = distinct !DILexicalBlock(scope: !10315, file: !5447, line: 513, column: 13)
!10320 = !DILocation(line: 531, column: 23, scope: !10319, inlinedAt: !10275)
!10321 = !DILocation(line: 517, column: 27, scope: !10319, inlinedAt: !10275)
!10322 = !DILocation(line: 517, column: 39, scope: !10319, inlinedAt: !10275)
!10323 = !DILocation(line: 127, column: 12, scope: !3713, inlinedAt: !10324)
!10324 = distinct !DILocation(line: 536, column: 25, scope: !10319, inlinedAt: !10275)
!10325 = !DILocation(line: 132, column: 13, scope: !3713, inlinedAt: !10324)
!10326 = !DILocation(line: 1917, column: 50, scope: !3720, inlinedAt: !10327)
!10327 = distinct !DILocation(line: 781, column: 12, scope: !3724, inlinedAt: !10328)
!10328 = distinct !DILocation(line: 866, column: 14, scope: !3729, inlinedAt: !10329)
!10329 = distinct !DILocation(line: 128, column: 22, scope: !3732, inlinedAt: !10324)
!10330 = !DILocation(line: 781, column: 12, scope: !3724, inlinedAt: !10328)
!10331 = !DILocation(line: 3558, column: 28, scope: !3736, inlinedAt: !10332)
!10332 = distinct !DILocation(line: 128, column: 41, scope: !3713, inlinedAt: !10324)
!10333 = !DILocation(line: 25, column: 14, scope: !3744, inlinedAt: !10334)
!10334 = distinct !DILocation(line: 287, column: 13, scope: !3750, inlinedAt: !10335)
!10335 = distinct !DILocation(line: 129, column: 17, scope: !3733, inlinedAt: !10324)
!10336 = distinct !{!10336, !3753}
!10337 = !DILocation(line: 135, column: 23, scope: !3713, inlinedAt: !10324)
!10338 = !DILocation(line: 516, column: 13, scope: !10319, inlinedAt: !10275)
!10339 = !DILocation(line: 0, scope: !10286, inlinedAt: !10275)
!10340 = !DILocation(line: 524, column: 38, scope: !10319, inlinedAt: !10275)
!10341 = !DILocation(line: 2511, column: 13, scope: !10342, inlinedAt: !10343)
!10342 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj12wrapping_add", scope: !5607, file: !3737, line: 2510, type: !30, scopeLine: 2510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10343 = distinct !DILocation(line: 524, column: 25, scope: !10319, inlinedAt: !10275)
!10344 = !DILocation(line: 517, column: 24, scope: !10319, inlinedAt: !10275)
!10345 = !DILocation(line: 0, scope: !10319, inlinedAt: !10275)
!10346 = !DILocation(line: 832, column: 18, scope: !10347, inlinedAt: !10348)
!10347 = distinct !DISubprogram(name: "assume_init_drop<polars_ooc::spill_file::CleanRequest>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3mem12maybe_uninitINtB5_11MaybeUninitNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE16assume_init_dropB17_", scope: !932, file: !931, line: 825, type: !30, scopeLine: 825, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10348 = distinct !DILocation(line: 528, column: 39, scope: !10319, inlinedAt: !10275)
!10349 = !DILocation(line: 481, column: 6, scope: !10255)
!10350 = distinct !DISubprogram(name: "recv<polars_ooc::spill_file::CleanRequest>", linkageName: "_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4recvB10_", scope: !5464, file: !5447, line: 375, type: !30, scopeLine: 375, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10351 = !DILocation(line: 376, column: 26, scope: !10350)
!10352 = !DILocation(line: 5, column: 17, scope: !10353, inlinedAt: !10351)
!10353 = distinct !DISubprogram(name: "default", linkageName: "_RNvXs2_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc6selectNtB5_5TokenNtNtCscgRAwXFJnXP_4core7default7Default7default", scope: !7885, file: !3483, line: 5, type: !30, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10354 = !DILocation(line: 377, column: 9, scope: !10355)
!10355 = distinct !DILexicalBlock(scope: !10350, file: !5447, line: 376, column: 9)
!10356 = !{!10357}
!10357 = distinct !{!10357, !10358, !"_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_recvB10_: argument 0"}
!10358 = distinct !{!10358, !"_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_recvB10_"}
!10359 = !DILocation(line: 379, column: 21, scope: !10355)
!10360 = !DILocation(line: 219, column: 9, scope: !10361, inlinedAt: !10364)
!10361 = distinct !DILexicalBlock(scope: !10362, file: !5447, line: 217, column: 9)
!10362 = distinct !DILexicalBlock(scope: !10363, file: !5447, line: 216, column: 9)
!10363 = distinct !DISubprogram(name: "start_recv<polars_ooc::spill_file::CleanRequest>", linkageName: "_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_recvB10_", scope: !5464, file: !5447, line: 215, type: !30, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10364 = distinct !DILocation(line: 379, column: 21, scope: !10355)
!10365 = !DILocation(line: 0, scope: !10363, inlinedAt: !10364)
!10366 = !DILocation(line: 3904, column: 24, scope: !444, inlinedAt: !10367)
!10367 = !DILocation(line: 2870, column: 26, scope: !10368, inlinedAt: !10369)
!10368 = distinct !DISubprogram(name: "load", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE4load", scope: !450, file: !445, line: 2868, type: !30, scopeLine: 2868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10369 = !DILocation(line: 0, scope: !10362, inlinedAt: !10364)
!10370 = !DILocation(line: 221, column: 33, scope: !10361, inlinedAt: !10364)
!10371 = !DILocation(line: 221, column: 32, scope: !10361, inlinedAt: !10364)
!10372 = !DILocation(line: 221, column: 25, scope: !10361, inlinedAt: !10364)
!10373 = !DILocation(line: 222, column: 32, scope: !10374, inlinedAt: !10364)
!10374 = distinct !DILexicalBlock(scope: !10361, file: !5447, line: 221, column: 13)
!10375 = !DILocation(line: 222, column: 30, scope: !10374, inlinedAt: !10364)
!10376 = !DILocation(line: 222, column: 23, scope: !10374, inlinedAt: !10364)
!10377 = !DILocation(line: 226, column: 33, scope: !10378, inlinedAt: !10364)
!10378 = distinct !DILexicalBlock(scope: !10374, file: !5447, line: 222, column: 13)
!10379 = !DILocation(line: 252, column: 39, scope: !10380, inlinedAt: !10381)
!10380 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::array::Slot<polars_ooc::spill_file::CleanRequest>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5array4SlotNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestEE13get_uncheckedB1O_", scope: !1708, file: !1707, line: 239, type: !30, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10381 = distinct !DILocation(line: 646, column: 26, scope: !10382, inlinedAt: !10383)
!10382 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::array::Slot<polars_ooc::spill_file::CleanRequest>, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5array4SlotNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE13get_uncheckedjEB1l_", scope: !2193, file: !2192, line: 639, type: !30, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10383 = distinct !DILocation(line: 226, column: 45, scope: !10378, inlinedAt: !10364)
!10384 = !DILocation(line: 252, column: 13, scope: !10380, inlinedAt: !10381)
!10385 = !DILocation(line: 253, column: 13, scope: !10380, inlinedAt: !10381)
!10386 = !DILocation(line: 2447, column: 9, scope: !10387, inlinedAt: !10388)
!10387 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<usize>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8jEE3getCskAlUH1kY1DR_10polars_ooc", scope: !3596, file: !3595, line: 2443, type: !30, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10388 = distinct !DILocation(line: 3615, column: 24, scope: !10389, inlinedAt: !10391)
!10389 = !DILexicalBlockFile(scope: !10390, file: !445, discriminator: 2)
!10390 = distinct !DISubprogram(name: "as_ptr", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE6as_ptr", scope: !450, file: !445, line: 3614, type: !30, scopeLine: 3614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10391 = distinct !DILocation(line: 2870, column: 43, scope: !10392, inlinedAt: !10393)
!10392 = !DILexicalBlockFile(scope: !10368, file: !445, discriminator: 2)
!10393 = distinct !DILocation(line: 227, column: 36, scope: !10394, inlinedAt: !10364)
!10394 = distinct !DILexicalBlock(scope: !10378, file: !5447, line: 226, column: 13)
!10395 = !DILocation(line: 3905, column: 24, scope: !444, inlinedAt: !10396)
!10396 = distinct !DILocation(line: 2870, column: 26, scope: !10368, inlinedAt: !10393)
!10397 = !DILocation(line: 230, column: 16, scope: !10398, inlinedAt: !10364)
!10398 = distinct !DILexicalBlock(scope: !10394, file: !5447, line: 227, column: 13)
!10399 = !DILocation(line: 259, column: 23, scope: !10398, inlinedAt: !10364)
!10400 = !DILocation(line: 231, column: 30, scope: !10398, inlinedAt: !10364)
!10401 = !DILocation(line: 231, column: 42, scope: !10398, inlinedAt: !10364)
!10402 = !DILocation(line: 127, column: 12, scope: !3713, inlinedAt: !10403)
!10403 = distinct !DILocation(line: 281, column: 25, scope: !10398, inlinedAt: !10364)
!10404 = !DILocation(line: 132, column: 13, scope: !3713, inlinedAt: !10403)
!10405 = !DILocation(line: 1917, column: 50, scope: !3720, inlinedAt: !10406)
!10406 = distinct !DILocation(line: 781, column: 12, scope: !3724, inlinedAt: !10407)
!10407 = distinct !DILocation(line: 866, column: 14, scope: !3729, inlinedAt: !10408)
!10408 = distinct !DILocation(line: 128, column: 22, scope: !3732, inlinedAt: !10403)
!10409 = !DILocation(line: 781, column: 12, scope: !3724, inlinedAt: !10407)
!10410 = !DILocation(line: 3558, column: 28, scope: !3736, inlinedAt: !10411)
!10411 = distinct !DILocation(line: 128, column: 41, scope: !3713, inlinedAt: !10403)
!10412 = !DILocation(line: 25, column: 14, scope: !3744, inlinedAt: !10413)
!10413 = distinct !DILocation(line: 287, column: 13, scope: !3750, inlinedAt: !10414)
!10414 = distinct !DILocation(line: 129, column: 17, scope: !3733, inlinedAt: !10403)
!10415 = distinct !{!10415, !3753}
!10416 = !DILocation(line: 135, column: 23, scope: !3713, inlinedAt: !10403)
!10417 = !DILocation(line: 259, column: 20, scope: !10398, inlinedAt: !10364)
!10418 = !DILocation(line: 4390, column: 23, scope: !609, inlinedAt: !10419)
!10419 = distinct !DILocation(line: 260, column: 17, scope: !10398, inlinedAt: !10364)
!10420 = !DILocation(line: 3904, column: 24, scope: !444, inlinedAt: !10421)
!10421 = distinct !DILocation(line: 2870, column: 26, scope: !10368, inlinedAt: !10422)
!10422 = distinct !DILocation(line: 261, column: 38, scope: !10398, inlinedAt: !10364)
!10423 = !DILocation(line: 264, column: 29, scope: !10424, inlinedAt: !10364)
!10424 = distinct !DILexicalBlock(scope: !10398, file: !5447, line: 261, column: 17)
!10425 = !DILocation(line: 264, column: 28, scope: !10424, inlinedAt: !10364)
!10426 = !DILocation(line: 264, column: 20, scope: !10424, inlinedAt: !10364)
!10427 = !DILocation(line: 1077, column: 12, scope: !7078, inlinedAt: !10428)
!10428 = distinct !DILocation(line: 114, column: 36, scope: !10429, inlinedAt: !10430)
!10429 = distinct !DISubprogram(name: "spin_light", linkageName: "_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light", scope: !3715, file: !3714, line: 113, type: !30, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10430 = distinct !DILocation(line: 277, column: 25, scope: !10424, inlinedAt: !10364)
!10431 = !DILocation(line: 3558, column: 28, scope: !3736, inlinedAt: !10432)
!10432 = distinct !DILocation(line: 115, column: 26, scope: !10433, inlinedAt: !10430)
!10433 = distinct !DILexicalBlock(scope: !10429, file: !3714, line: 114, column: 9)
!10434 = !DILocation(line: 1917, column: 50, scope: !10435, inlinedAt: !10436)
!10435 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXs10_NtNtCscgRAwXFJnXP_4core3cmp5implsmNtB8_10PartialOrd2lt", scope: !3721, file: !3665, line: 1917, type: !30, scopeLine: 1917, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10436 = distinct !DILocation(line: 781, column: 12, scope: !10437, inlinedAt: !10438)
!10437 = distinct !DISubprogram(name: "spec_next<u32>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangemENtB5_17RangeIteratorImpl9spec_nextCskAlUH1kY1DR_10polars_ooc", scope: !3726, file: !3725, line: 780, type: !30, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10438 = distinct !DILocation(line: 866, column: 14, scope: !10439, inlinedAt: !10440)
!10439 = distinct !DISubprogram(name: "next<u32>", linkageName: "_RNvXs4_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangemENtNtNtB7_6traits8iterator8Iterator4nextCskAlUH1kY1DR_10polars_ooc", scope: !3730, file: !3725, line: 865, type: !30, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10440 = distinct !DILocation(line: 115, column: 18, scope: !10441, inlinedAt: !10430)
!10441 = !DILexicalBlockFile(scope: !10442, file: !3714, discriminator: 2)
!10442 = distinct !DILexicalBlock(scope: !10433, file: !3714, line: 115, column: 9)
!10443 = !DILocation(line: 781, column: 12, scope: !10437, inlinedAt: !10438)
!10444 = !DILocation(line: 25, column: 14, scope: !10445, inlinedAt: !10446)
!10445 = distinct !DISubprogram(name: "_mm_pause", linkageName: "_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864sse29__mm_pause", scope: !3746, file: !3745, line: 22, type: !30, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10446 = distinct !DILocation(line: 287, column: 13, scope: !10447, inlinedAt: !10448)
!10447 = distinct !DISubprogram(name: "spin_loop", linkageName: "_RNvNtCscgRAwXFJnXP_4core4hint9spin_loop", scope: !89, file: !88, line: 270, type: !30, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10448 = distinct !DILocation(line: 116, column: 13, scope: !10442, inlinedAt: !10430)
!10449 = distinct !{!10449, !3753}
!10450 = !DILocation(line: 119, column: 23, scope: !10433, inlinedAt: !10430)
!10451 = !DILocation(line: 555, column: 18, scope: !10452, inlinedAt: !10453)
!10452 = distinct !DISubprogram(name: "get<u32>", linkageName: "_RNvMs8_NtCscgRAwXFJnXP_4core4cellINtB5_4CellmE3getCskAlUH1kY1DR_10polars_ooc", scope: !7237, file: !3595, line: 552, type: !30, scopeLine: 552, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10453 = distinct !DILocation(line: 119, column: 33, scope: !10433, inlinedAt: !10430)
!10454 = !DILocation(line: 266, column: 24, scope: !10424, inlinedAt: !10364)
!10455 = !DILocation(line: 238, column: 38, scope: !10398, inlinedAt: !10364)
!10456 = !DILocation(line: 2511, column: 13, scope: !10457, inlinedAt: !10458)
!10457 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj12wrapping_add", scope: !5607, file: !3737, line: 2510, type: !30, scopeLine: 2510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10458 = distinct !DILocation(line: 238, column: 25, scope: !10398, inlinedAt: !10364)
!10459 = !DILocation(line: 231, column: 27, scope: !10398, inlinedAt: !10364)
!10460 = !DILocation(line: 0, scope: !10398, inlinedAt: !10364)
!10461 = !DILocation(line: 4081, column: 17, scope: !7047, inlinedAt: !10462)
!10462 = distinct !DILocation(line: 3130, column: 21, scope: !10463, inlinedAt: !10464)
!10463 = distinct !DISubprogram(name: "compare_exchange_weak", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE21compare_exchange_weak", scope: !450, file: !445, line: 3123, type: !30, scopeLine: 3123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10464 = distinct !DILocation(line: 242, column: 33, scope: !10465, inlinedAt: !10364)
!10465 = distinct !DILexicalBlock(scope: !10398, file: !5447, line: 231, column: 17)
!10466 = !DILocation(line: 0, scope: !7047, inlinedAt: !10462)
!10467 = !DILocation(line: 242, column: 17, scope: !10465, inlinedAt: !10364)
!10468 = !DILocation(line: 1077, column: 12, scope: !7078, inlinedAt: !10469)
!10469 = distinct !DILocation(line: 114, column: 36, scope: !10429, inlinedAt: !10470)
!10470 = distinct !DILocation(line: 255, column: 33, scope: !10465, inlinedAt: !10364)
!10471 = !DILocation(line: 3558, column: 28, scope: !3736, inlinedAt: !10472)
!10472 = distinct !DILocation(line: 115, column: 26, scope: !10433, inlinedAt: !10470)
!10473 = !DILocation(line: 1917, column: 50, scope: !10435, inlinedAt: !10474)
!10474 = distinct !DILocation(line: 781, column: 12, scope: !10437, inlinedAt: !10475)
!10475 = distinct !DILocation(line: 866, column: 14, scope: !10439, inlinedAt: !10476)
!10476 = distinct !DILocation(line: 115, column: 18, scope: !10441, inlinedAt: !10470)
!10477 = !DILocation(line: 781, column: 12, scope: !10437, inlinedAt: !10475)
!10478 = !DILocation(line: 25, column: 14, scope: !10445, inlinedAt: !10479)
!10479 = distinct !DILocation(line: 287, column: 13, scope: !10447, inlinedAt: !10480)
!10480 = distinct !DILocation(line: 116, column: 13, scope: !10442, inlinedAt: !10470)
!10481 = distinct !{!10481, !3753}
!10482 = !DILocation(line: 119, column: 23, scope: !10433, inlinedAt: !10470)
!10483 = !DILocation(line: 555, column: 18, scope: !10452, inlinedAt: !10484)
!10484 = distinct !DILocation(line: 119, column: 33, scope: !10433, inlinedAt: !10470)
!10485 = !DILocation(line: 384, column: 30, scope: !10486)
!10486 = distinct !DILexicalBlock(scope: !10355, file: !5447, line: 384, column: 39)
!10487 = !DILocation(line: 384, column: 20, scope: !10486)
!10488 = !DILocation(line: 250, column: 25, scope: !10465, inlinedAt: !10364)
!10489 = !DILocation(line: 251, column: 63, scope: !10465, inlinedAt: !10364)
!10490 = !DILocation(line: 2511, column: 13, scope: !10457, inlinedAt: !10491)
!10491 = distinct !DILocation(line: 251, column: 50, scope: !10465, inlinedAt: !10364)
!10492 = !DILocation(line: 251, column: 25, scope: !10465, inlinedAt: !10364)
!10493 = !DILocation(line: 295, column: 13, scope: !10494, inlinedAt: !10495)
!10494 = distinct !DISubprogram(name: "read<polars_ooc::spill_file::CleanRequest>", linkageName: "_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4readB10_", scope: !5464, file: !5447, line: 288, type: !12, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10495 = distinct !DILocation(line: 380, column: 41, scope: !10355)
!10496 = !{!10497}
!10497 = distinct !{!10497, !10498, !"_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4readB10_: argument 0"}
!10498 = distinct !{!10498, !"_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4readB10_"}
!10499 = !DILocation(line: 298, column: 17, scope: !10500, inlinedAt: !10495)
!10500 = distinct !DILexicalBlock(scope: !10494, file: !5447, line: 296, column: 13)
!10501 = !DILocation(line: 1721, column: 9, scope: !10502, inlinedAt: !10503)
!10502 = distinct !DISubprogram(name: "read<core::mem::maybe_uninit::MaybeUninit<polars_ooc::spill_file::CleanRequest>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr4readINtNtNtB4_3mem12maybe_uninit11MaybeUninitNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestEEB1f_", scope: !97, file: !96, line: 1682, type: !30, scopeLine: 1682, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10503 = distinct !DILocation(line: 1263, column: 18, scope: !10504, inlinedAt: !10505)
!10504 = distinct !DISubprogram(name: "read<core::mem::maybe_uninit::MaybeUninit<polars_ooc::spill_file::CleanRequest>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOINtNtNtB6_3mem12maybe_uninit11MaybeUninitNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4readB1l_", scope: !155, file: !154, line: 1258, type: !30, scopeLine: 1258, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10505 = distinct !DILocation(line: 298, column: 38, scope: !10500, inlinedAt: !10495)
!10506 = !DILocation(line: 3890, column: 24, scope: !8316, inlinedAt: !10507)
!10507 = distinct !DILocation(line: 2898, column: 26, scope: !10508, inlinedAt: !10509)
!10508 = distinct !DISubprogram(name: "store", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE5store", scope: !450, file: !445, line: 2896, type: !30, scopeLine: 2896, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10509 = distinct !DILocation(line: 299, column: 24, scope: !10510, inlinedAt: !10495)
!10510 = distinct !DILexicalBlock(scope: !10500, file: !5447, line: 298, column: 13)
!10511 = !DILocation(line: 300, column: 13, scope: !10510, inlinedAt: !10495)
!10512 = !DILocation(line: 301, column: 9, scope: !10500, inlinedAt: !10495)
!10513 = !DILocation(line: 304, column: 9, scope: !10514, inlinedAt: !10495)
!10514 = distinct !DILexicalBlock(scope: !10494, file: !5447, line: 295, column: 9)
!10515 = !DILocation(line: 304, column: 22, scope: !10514, inlinedAt: !10495)
!10516 = !DILocation(line: 306, column: 5, scope: !10494, inlinedAt: !10495)
!10517 = !DILocation(line: 288, column: 5, scope: !10494, inlinedAt: !10495)
!10518 = !DILocation(line: 0, scope: !10355)
!10519 = !DILocation(line: 305, column: 12, scope: !10514, inlinedAt: !10495)
!10520 = !DILocation(line: 966, column: 15, scope: !10521, inlinedAt: !10522)
!10521 = distinct !DISubprogram(name: "map_err<polars_ooc::spill_file::CleanRequest, (), std::sync::mpsc::RecvTimeoutError, std::sync::mpmc::array::{impl#1}::recv::{closure_env#0}<polars_ooc::spill_file::CleanRequest>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestuE7map_errNtNtNtCsh8eZTKRCwoO_3std4sync4mpsc16RecvTimeoutErrorNCNvMs_NtNtB1Q_4mpmc5arrayINtB2J_7ChannelBI_E4recv0EBM_", scope: !1749, file: !1747, line: 962, type: !30, scopeLine: 962, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10522 = !DILocation(line: 381, column: 28, scope: !10523)
!10523 = distinct !DILexicalBlock(scope: !10355, file: !5447, line: 380, column: 17)
!10524 = !DILocation(line: 966, column: 9, scope: !10521, inlinedAt: !10522)
!10525 = !DILocation(line: 384, column: 25, scope: !10486)
!10526 = !DILocation(line: 385, column: 20, scope: !10486)
!10527 = !DILocation(line: 25, column: 38, scope: !10528, inlinedAt: !10529)
!10528 = distinct !DISubprogram(name: "partial_cmp", linkageName: "_RNvXs5_NtNtNtNtCsh8eZTKRCwoO_3std3sys3pal4unix4timeNtB5_8TimespecNtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp", scope: !3648, file: !3647, line: 25, type: !30, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10529 = !DILocation(line: 49, column: 38, scope: !10530, inlinedAt: !10531)
!10530 = distinct !DISubprogram(name: "partial_cmp", linkageName: "_RNvXsi_NtNtNtCsh8eZTKRCwoO_3std3sys4time4unixNtB5_7InstantNtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp", scope: !3655, file: !3654, line: 49, type: !30, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10531 = !DILocation(line: 154, column: 38, scope: !10532, inlinedAt: !10533)
!10532 = distinct !DISubprogram(name: "partial_cmp", linkageName: "_RNvXsm_NtCsh8eZTKRCwoO_3std4timeNtB5_7InstantNtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp", scope: !3661, file: !3660, line: 154, type: !30, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10533 = !DILocation(line: 1466, column: 14, scope: !10534, inlinedAt: !10526)
!10534 = distinct !DISubprogram(name: "ge<std::time::Instant, std::time::Instant>", linkageName: "_RNvYNtNtCsh8eZTKRCwoO_3std4time7InstantNtNtCscgRAwXFJnXP_4core3cmp10PartialOrd2geCskAlUH1kY1DR_10polars_ooc", scope: !3666, file: !3665, line: 1465, type: !30, scopeLine: 1465, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10535 = !DILocation(line: 46, column: 13, scope: !10536, inlinedAt: !10537)
!10536 = distinct !DISubprogram(name: "with<std::sync::mpmc::array::{impl#1}::recv::{closure_env#1}<polars_ooc::spill_file::CleanRequest>, ()>", linkageName: "_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4recvs_0uEB1C_", scope: !3635, file: !2992, line: 37, type: !30, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10537 = distinct !DILocation(line: 390, column: 13, scope: !10355)
!10538 = !{!10539}
!10539 = distinct !{!10539, !10540, !"_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4recvs_0uEB1C_: argument 0"}
!10540 = distinct !{!10540, !"_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4recvs_0uEB1C_"}
!10541 = !DILocation(line: 46, column: 21, scope: !10536, inlinedAt: !10537)
!10542 = !DILocation(line: 555, column: 18, scope: !8213, inlinedAt: !10543)
!10543 = distinct !DILocation(line: 59, column: 42, scope: !8215, inlinedAt: !10544)
!10544 = distinct !DILocation(line: 97, column: 49, scope: !8202, inlinedAt: !10545)
!10545 = distinct !DILocation(line: 250, column: 5, scope: !8206, inlinedAt: !10546)
!10546 = distinct !DILocation(line: 461, column: 37, scope: !10547, inlinedAt: !10548)
!10547 = distinct !DISubprogram(name: "try_with<core::cell::Cell<core::option::Option<std::sync::mpmc::context::Context>>, std::sync::mpmc::context::{impl#0}::with::{closure_env#1}<std::sync::mpmc::array::{impl#1}::recv::{closure_env#1}<polars_ooc::spill_file::CleanRequest>, ()>, ()>", linkageName: "_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4recvs_0uEs_0uEB3w_", scope: !7228, file: !7227, line: 457, type: !12, scopeLine: 457, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10548 = distinct !DILocation(line: 53, column: 14, scope: !10549, inlinedAt: !10537)
!10549 = distinct !DILexicalBlock(scope: !10550, file: !2992, line: 47, column: 9)
!10550 = distinct !DILexicalBlock(scope: !10536, file: !2992, line: 46, column: 9)
!10551 = !{!10552, !10554, !10556, !10539}
!10552 = distinct !{!10552, !10553, !"_RINvMs0_NtNtNtNtCsh8eZTKRCwoO_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscgRAwXFJnXP_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE11get_or_initNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECskAlUH1kY1DR_10polars_ooc: argument 0"}
!10553 = distinct !{!10553, !"_RINvMs0_NtNtNtNtCsh8eZTKRCwoO_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscgRAwXFJnXP_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE11get_or_initNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECskAlUH1kY1DR_10polars_ooc"}
!10554 = distinct !{!10554, !10555, !"_RNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB8_7Context4with7CONTEXT00CskAlUH1kY1DR_10polars_ooc: argument 0"}
!10555 = distinct !{!10555, !"_RNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB8_7Context4with7CONTEXT00CskAlUH1kY1DR_10polars_ooc"}
!10556 = distinct !{!10556, !10557, !"_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCskAlUH1kY1DR_10polars_ooc: argument 0"}
!10557 = distinct !{!10557, !"_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCskAlUH1kY1DR_10polars_ooc"}
!10558 = !DILocation(line: 59, column: 16, scope: !8215, inlinedAt: !10544)
!10559 = !DILocation(line: 62, column: 27, scope: !8216, inlinedAt: !10544)
!10560 = !DILocation(line: 269, column: 12, scope: !10561, inlinedAt: !10562)
!10561 = distinct !DISubprogram(name: "as_ref<core::cell::Cell<core::option::Option<std::sync::mpmc::context::Context>>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPINtNtB6_4cell4CellINtNtB6_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEE6as_refCskAlUH1kY1DR_10polars_ooc", scope: !101, file: !100, line: 266, type: !30, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10562 = distinct !DILocation(line: 461, column: 56, scope: !10547, inlinedAt: !10548)
!10563 = !DILocation(line: 929, column: 22, scope: !10564, inlinedAt: !10565)
!10564 = distinct !DISubprogram(name: "replace<core::option::Option<std::sync::mpmc::context::Context>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem7replaceINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECskAlUH1kY1DR_10polars_ooc", scope: !148, file: !723, line: 915, type: !30, scopeLine: 915, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10565 = distinct !DILocation(line: 513, column: 9, scope: !10566, inlinedAt: !10567)
!10566 = distinct !DISubprogram(name: "replace<core::option::Option<std::sync::mpmc::context::Context>>", linkageName: "_RNvMs7_NtCscgRAwXFJnXP_4core4cellINtB5_4CellINtNtB7_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEE7replaceCskAlUH1kY1DR_10polars_ooc", scope: !7237, file: !3595, line: 510, type: !30, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10567 = distinct !DILocation(line: 675, column: 14, scope: !10568, inlinedAt: !10569)
!10568 = distinct !DISubprogram(name: "take<core::option::Option<std::sync::mpmc::context::Context>>", linkageName: "_RNvMsa_NtCscgRAwXFJnXP_4core4cellINtB5_4CellINtNtB7_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEE4takeCskAlUH1kY1DR_10polars_ooc", scope: !7237, file: !3595, line: 671, type: !30, scopeLine: 671, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10569 = distinct !DILocation(line: 53, column: 41, scope: !10570, inlinedAt: !10571)
!10570 = distinct !DISubprogram(name: "{closure#1}<std::sync::mpmc::array::{impl#1}::recv::{closure_env#1}<polars_ooc::spill_file::CleanRequest>, ()>", linkageName: "_RNCINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4recvs_0uEs_0B1E_", scope: !2993, file: !2992, line: 53, type: !12, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10571 = distinct !DILocation(line: 462, column: 12, scope: !10572, inlinedAt: !10548)
!10572 = distinct !DILexicalBlock(scope: !10547, file: !7227, line: 461, column: 9)
!10573 = !DILocation(line: 930, column: 49, scope: !10574, inlinedAt: !10565)
!10574 = distinct !DILexicalBlock(scope: !10564, file: !723, line: 929, column: 9)
!10575 = !DILocation(line: 53, column: 36, scope: !10570, inlinedAt: !10571)
!10576 = !DILocation(line: 53, column: 30, scope: !10570, inlinedAt: !10571)
!10577 = !DILocation(line: 54, column: 28, scope: !10570, inlinedAt: !10571)
!10578 = !DILocation(line: 54, column: 25, scope: !10570, inlinedAt: !10571)
!10579 = !DILocation(line: 1015, column: 18, scope: !10580, inlinedAt: !10581)
!10580 = distinct !DISubprogram(name: "unwrap<std::sync::mpmc::array::{impl#1}::recv::{closure_env#1}<polars_ooc::spill_file::CleanRequest>>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionNCNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtBO_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4recvs_0E6unwrapB1K_", scope: !9, file: !8, line: 1013, type: !30, scopeLine: 1013, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10581 = distinct !DILocation(line: 48, column: 30, scope: !10582, inlinedAt: !10583)
!10582 = distinct !DISubprogram(name: "{closure#0}<std::sync::mpmc::array::{impl#1}::recv::{closure_env#1}<polars_ooc::spill_file::CleanRequest>, ()>", linkageName: "_RNCINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4recvs_0uE0B1E_", scope: !2993, file: !2992, line: 47, type: !30, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10583 = distinct !DILocation(line: 54, column: 25, scope: !10570, inlinedAt: !10571)
!10584 = !DILocation(line: 49, column: 13, scope: !10585, inlinedAt: !10583)
!10585 = distinct !DILexicalBlock(scope: !10582, file: !2992, line: 48, column: 13)
!10586 = !DILocation(line: 3956, column: 24, scope: !3016, inlinedAt: !10587)
!10587 = distinct !DILocation(line: 3193, column: 26, scope: !3018, inlinedAt: !10588)
!10588 = distinct !DILocation(line: 2814, column: 32, scope: !3020, inlinedAt: !10589)
!10589 = distinct !DILocation(line: 810, column: 1, scope: !3022, inlinedAt: !10590)
!10590 = distinct !DILocation(line: 810, column: 1, scope: !3024, inlinedAt: !10591)
!10591 = distinct !DILocation(line: 54, column: 42, scope: !10570, inlinedAt: !10571)
!10592 = !{!10593, !10595, !10597, !10539}
!10593 = distinct !{!10593, !10594, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc: argument 0"}
!10594 = distinct !{!10594, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc"}
!10595 = distinct !{!10595, !10596, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECskAlUH1kY1DR_10polars_ooc: argument 0"}
!10596 = distinct !{!10596, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECskAlUH1kY1DR_10polars_ooc"}
!10597 = distinct !{!10597, !10598, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc: argument 0"}
!10598 = distinct !{!10598, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc"}
!10599 = !DILocation(line: 2814, column: 12, scope: !3020, inlinedAt: !10589)
!10600 = !DILocation(line: 4387, column: 24, scope: !609, inlinedAt: !10601)
!10601 = distinct !DILocation(line: 64, column: 9, scope: !3020, inlinedAt: !10589)
!10602 = !DILocation(line: 2857, column: 18, scope: !3020, inlinedAt: !10589)
!10603 = !DILocation(line: 3956, column: 24, scope: !3016, inlinedAt: !10604)
!10604 = distinct !DILocation(line: 3193, column: 26, scope: !3018, inlinedAt: !10605)
!10605 = distinct !DILocation(line: 2814, column: 32, scope: !3020, inlinedAt: !10606)
!10606 = distinct !DILocation(line: 810, column: 1, scope: !3022, inlinedAt: !10607)
!10607 = distinct !DILocation(line: 810, column: 1, scope: !3024, inlinedAt: !10608)
!10608 = distinct !DILocation(line: 54, column: 42, scope: !10570, inlinedAt: !10571)
!10609 = !{!10610, !10612, !10614, !10539}
!10610 = distinct !{!10610, !10611, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc: argument 0"}
!10611 = distinct !{!10611, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc"}
!10612 = distinct !{!10612, !10613, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECskAlUH1kY1DR_10polars_ooc: argument 0"}
!10613 = distinct !{!10613, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECskAlUH1kY1DR_10polars_ooc"}
!10614 = distinct !{!10614, !10615, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc: argument 0"}
!10615 = distinct !{!10615, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc"}
!10616 = !DILocation(line: 2814, column: 12, scope: !3020, inlinedAt: !10606)
!10617 = !DILocation(line: 4387, column: 24, scope: !609, inlinedAt: !10618)
!10618 = distinct !DILocation(line: 64, column: 9, scope: !3020, inlinedAt: !10606)
!10619 = !DILocation(line: 2857, column: 18, scope: !3020, inlinedAt: !10606)
!10620 = !DILocation(line: 54, column: 42, scope: !10570, inlinedAt: !10571)
!10621 = !DILocation(line: 53, column: 23, scope: !10570, inlinedAt: !10571)
!10622 = !DILocation(line: 55, column: 22, scope: !10570, inlinedAt: !10571)
!10623 = !DILocation(line: 2447, column: 9, scope: !10624, inlinedAt: !10625)
!10624 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<usize>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8jEE3getCskAlUH1kY1DR_10polars_ooc", scope: !3596, file: !3595, line: 2443, type: !30, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10625 = distinct !DILocation(line: 3615, column: 24, scope: !10626, inlinedAt: !10627)
!10626 = distinct !DISubprogram(name: "as_ptr", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE6as_ptr", scope: !450, file: !445, line: 3614, type: !30, scopeLine: 3614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10627 = distinct !DILocation(line: 2898, column: 44, scope: !10628, inlinedAt: !10629)
!10628 = distinct !DISubprogram(name: "store", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE5store", scope: !450, file: !445, line: 2896, type: !30, scopeLine: 2896, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10629 = distinct !DILocation(line: 81, column: 27, scope: !10630, inlinedAt: !10631)
!10630 = distinct !DISubprogram(name: "reset", linkageName: "_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB2_7Context5reset", scope: !3635, file: !2992, line: 80, type: !30, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10631 = distinct !DILocation(line: 56, column: 24, scope: !10632, inlinedAt: !10571)
!10632 = distinct !DILexicalBlock(scope: !10570, file: !2992, line: 55, column: 17)
!10633 = !DILocation(line: 3890, column: 24, scope: !8316, inlinedAt: !10634)
!10634 = distinct !DILocation(line: 2898, column: 26, scope: !10628, inlinedAt: !10629)
!10635 = !DILocation(line: 2447, column: 9, scope: !10636, inlinedAt: !10637)
!10636 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<*mut ()>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8OuEE3getCskAlUH1kY1DR_10polars_ooc", scope: !3596, file: !3595, line: 2443, type: !30, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10637 = distinct !DILocation(line: 2500, column: 16, scope: !10638, inlinedAt: !10639)
!10638 = distinct !DISubprogram(name: "as_ptr<()>", linkageName: "_RNvMs3_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicOuE6as_ptrCskAlUH1kY1DR_10polars_ooc", scope: !450, file: !445, line: 2499, type: !30, scopeLine: 2499, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10639 = distinct !DILocation(line: 1763, column: 31, scope: !10640, inlinedAt: !10641)
!10640 = distinct !DISubprogram(name: "store<()>", linkageName: "_RNvMs3_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicOuE5storeCskAlUH1kY1DR_10polars_ooc", scope: !450, file: !445, line: 1760, type: !30, scopeLine: 1760, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10641 = distinct !DILocation(line: 82, column: 27, scope: !10630, inlinedAt: !10631)
!10642 = !DILocation(line: 3890, column: 24, scope: !6636, inlinedAt: !10643)
!10643 = distinct !DILocation(line: 1763, column: 13, scope: !10640, inlinedAt: !10641)
!10644 = !DILocation(line: 57, column: 31, scope: !10632, inlinedAt: !10571)
!10645 = !DILocation(line: 1015, column: 18, scope: !10580, inlinedAt: !10646)
!10646 = distinct !DILocation(line: 48, column: 30, scope: !10647, inlinedAt: !10648)
!10647 = !DILexicalBlockFile(scope: !10582, file: !2992, discriminator: 2)
!10648 = distinct !DILocation(line: 57, column: 31, scope: !10632, inlinedAt: !10571)
!10649 = !DILocation(line: 49, column: 13, scope: !10650, inlinedAt: !10648)
!10650 = distinct !DILexicalBlock(scope: !10582, file: !2992, line: 48, column: 13)
!10651 = !DILocation(line: 437, column: 9, scope: !10652, inlinedAt: !10653)
!10652 = distinct !DISubprogram(name: "set<core::option::Option<std::sync::mpmc::context::Context>>", linkageName: "_RNvMs7_NtCscgRAwXFJnXP_4core4cellINtB5_4CellINtNtB7_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEE3setCskAlUH1kY1DR_10polars_ooc", scope: !7237, file: !3595, line: 433, type: !30, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10653 = distinct !DILocation(line: 58, column: 26, scope: !10654, inlinedAt: !10571)
!10654 = distinct !DILexicalBlock(scope: !10632, file: !2992, line: 57, column: 21)
!10655 = !DILocation(line: 929, column: 22, scope: !10564, inlinedAt: !10656)
!10656 = distinct !DILocation(line: 513, column: 9, scope: !10657, inlinedAt: !10658)
!10657 = !DILexicalBlockFile(scope: !10566, file: !3595, discriminator: 2)
!10658 = distinct !DILocation(line: 437, column: 14, scope: !10652, inlinedAt: !10653)
!10659 = !DILocation(line: 930, column: 49, scope: !10660, inlinedAt: !10656)
!10660 = distinct !DILexicalBlock(scope: !10564, file: !723, line: 929, column: 9)
!10661 = !DILocation(line: 810, column: 1, scope: !8351, inlinedAt: !10662)
!10662 = distinct !DILocation(line: 437, column: 26, scope: !10652, inlinedAt: !10653)
!10663 = !DILocation(line: 3956, column: 24, scope: !3016, inlinedAt: !10664)
!10664 = distinct !DILocation(line: 3193, column: 26, scope: !3018, inlinedAt: !10665)
!10665 = distinct !DILocation(line: 2814, column: 32, scope: !3020, inlinedAt: !10666)
!10666 = distinct !DILocation(line: 810, column: 1, scope: !3022, inlinedAt: !10667)
!10667 = distinct !DILocation(line: 810, column: 1, scope: !3024, inlinedAt: !10668)
!10668 = distinct !DILocation(line: 810, column: 1, scope: !8351, inlinedAt: !10662)
!10669 = !{!10670, !10672, !10674, !10676, !10539}
!10670 = distinct !{!10670, !10671, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc: argument 0"}
!10671 = distinct !{!10671, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc"}
!10672 = distinct !{!10672, !10673, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECskAlUH1kY1DR_10polars_ooc: argument 0"}
!10673 = distinct !{!10673, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECskAlUH1kY1DR_10polars_ooc"}
!10674 = distinct !{!10674, !10675, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc: argument 0"}
!10675 = distinct !{!10675, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc"}
!10676 = distinct !{!10676, !10677, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECskAlUH1kY1DR_10polars_ooc: argument 0"}
!10677 = distinct !{!10677, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECskAlUH1kY1DR_10polars_ooc"}
!10678 = !DILocation(line: 2814, column: 12, scope: !3020, inlinedAt: !10666)
!10679 = !DILocation(line: 4387, column: 24, scope: !609, inlinedAt: !10680)
!10680 = distinct !DILocation(line: 64, column: 9, scope: !3020, inlinedAt: !10666)
!10681 = !DILocation(line: 2857, column: 18, scope: !3020, inlinedAt: !10666)
!10682 = !DILocation(line: 437, column: 26, scope: !10652, inlinedAt: !10653)
!10683 = !DILocation(line: 60, column: 17, scope: !10570, inlinedAt: !10571)
!10684 = !DILocation(line: 61, column: 13, scope: !10570, inlinedAt: !10571)
!10685 = !DILocation(line: 3956, column: 24, scope: !3016, inlinedAt: !10686)
!10686 = distinct !DILocation(line: 3193, column: 26, scope: !3018, inlinedAt: !10687)
!10687 = distinct !DILocation(line: 2814, column: 32, scope: !3020, inlinedAt: !10688)
!10688 = distinct !DILocation(line: 810, column: 1, scope: !3022, inlinedAt: !10689)
!10689 = distinct !DILocation(line: 810, column: 1, scope: !3024, inlinedAt: !10690)
!10690 = distinct !DILocation(line: 60, column: 17, scope: !10570, inlinedAt: !10571)
!10691 = !{!10692, !10694, !10696, !10539}
!10692 = distinct !{!10692, !10693, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc: argument 0"}
!10693 = distinct !{!10693, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc"}
!10694 = distinct !{!10694, !10695, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECskAlUH1kY1DR_10polars_ooc: argument 0"}
!10695 = distinct !{!10695, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECskAlUH1kY1DR_10polars_ooc"}
!10696 = distinct !{!10696, !10697, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc: argument 0"}
!10697 = distinct !{!10697, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc"}
!10698 = !DILocation(line: 2814, column: 12, scope: !3020, inlinedAt: !10688)
!10699 = !DILocation(line: 4387, column: 24, scope: !609, inlinedAt: !10700)
!10700 = distinct !DILocation(line: 64, column: 9, scope: !3020, inlinedAt: !10688)
!10701 = !DILocation(line: 2857, column: 18, scope: !3020, inlinedAt: !10688)
!10702 = !DILocation(line: 1622, column: 23, scope: !10703, inlinedAt: !10705)
!10703 = distinct !DILexicalBlock(scope: !10704, file: !1747, line: 1622, column: 13)
!10704 = distinct !DISubprogram(name: "unwrap_or_else<(), std::thread::local::AccessError, std::sync::mpmc::context::{impl#0}::with::{closure_env#2}<std::sync::mpmc::array::{impl#1}::recv::{closure_env#1}<polars_ooc::spill_file::CleanRequest>, ()>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultuNtNtNtCsh8eZTKRCwoO_3std6thread5local11AccessErrorE14unwrap_or_elseNCINvMNtNtNtBP_4sync4mpmc7contextNtB1U_7Context4withNCNvMs_NtB1W_5arrayINtB2L_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4recvs_0uEs0_0EB3g_", scope: !1749, file: !1747, line: 1616, type: !30, scopeLine: 1616, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10705 = distinct !DILocation(line: 62, column: 14, scope: !10549, inlinedAt: !10537)
!10706 = !DILocation(line: 63, column: 5, scope: !10536, inlinedAt: !10537)
!10707 = !DILocation(line: 49, column: 26, scope: !10708, inlinedAt: !10712)
!10708 = distinct !DISubprogram(name: "as_inner", linkageName: "_RNvMs6_NtNtCscgRAwXFJnXP_4core3num11niche_typesNtB5_11Nanoseconds8as_inner", scope: !10710, file: !10709, line: 46, type: !30, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10709 = !DIFile(filename: "library/core/src/num/niche_types.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "b3871eb21e61251a8509e6d07911f9fb")
!10710 = !DINamespace(name: "Nanoseconds", scope: !10711)
!10711 = !DINamespace(name: "niche_types", scope: !3741)
!10712 = !DILocation(line: 70, column: 32, scope: !10713, inlinedAt: !10715)
!10713 = distinct !DISubprogram(name: "cmp", linkageName: "_RNvXsa_NtNtCscgRAwXFJnXP_4core3num11niche_typesNtB5_11NanosecondsNtNtB9_3cmp3Ord3cmp", scope: !10714, file: !10709, line: 69, type: !30, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10714 = !DINamespace(name: "{impl#12}", scope: !10711)
!10715 = !DILocation(line: 77, column: 22, scope: !10716, inlinedAt: !10718)
!10716 = distinct !DISubprogram(name: "partial_cmp", linkageName: "_RNvXsb_NtNtCscgRAwXFJnXP_4core3num11niche_typesNtB5_11NanosecondsNtNtB9_3cmp10PartialOrd11partial_cmp", scope: !10717, file: !10709, line: 76, type: !30, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10717 = !DINamespace(name: "{impl#13}", scope: !10711)
!10718 = !DILocation(line: 25, column: 38, scope: !10719, inlinedAt: !10529)
!10719 = !DILexicalBlockFile(scope: !10528, file: !3647, discriminator: 2)
!10720 = !DILocation(line: 539, column: 9, scope: !10721, inlinedAt: !10722)
!10721 = distinct !DISubprogram(name: "is_ge", linkageName: "_RNvMNtCscgRAwXFJnXP_4core3cmpNtB2_8Ordering5is_ge", scope: !3672, file: !3665, line: 538, type: !30, scopeLine: 538, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10722 = !DILocation(line: 250, column: 5, scope: !10723, inlinedAt: !10724)
!10723 = distinct !DISubprogram(name: "call_once<fn(core::cmp::Ordering) -> bool, (core::cmp::Ordering)>", linkageName: "_RNvYNvMNtCscgRAwXFJnXP_4core3cmpNtB5_8Ordering5is_geINtNtNtB7_3ops8function6FnOnceTBu_EE9call_onceCskAlUH1kY1DR_10polars_ooc", scope: !27, file: !26, line: 250, type: !30, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10724 = !DILocation(line: 664, column: 24, scope: !10725, inlinedAt: !10727)
!10725 = distinct !DILexicalBlock(scope: !10726, file: !8, line: 664, column: 13)
!10726 = distinct !DISubprogram(name: "is_some_and<core::cmp::Ordering, fn(core::cmp::Ordering) -> bool>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionNtNtB5_3cmp8OrderingE11is_some_andNvMBK_BI_5is_geECskAlUH1kY1DR_10polars_ooc", scope: !9, file: !8, line: 661, type: !30, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10727 = !DILocation(line: 1466, column: 33, scope: !10534, inlinedAt: !10526)
!10728 = !DILocation(line: 386, column: 28, scope: !10486)
!10729 = !DILocation(line: 0, scope: !10730)
!10730 = !DILexicalBlockFile(scope: !10355, file: !1621, discriminator: 0)
!10731 = !DILocation(line: 415, column: 5, scope: !10350)
!10732 = !DILocation(line: 415, column: 6, scope: !10350)
!10733 = !DILocation(line: 968, column: 23, scope: !10734, inlinedAt: !10522)
!10734 = distinct !DILexicalBlock(scope: !10521, file: !1747, line: 968, column: 13)
!10735 = !DILocation(line: 968, column: 32, scope: !10521, inlinedAt: !10522)
!10736 = !DILocation(line: 967, column: 22, scope: !10737, inlinedAt: !10522)
!10737 = distinct !DILexicalBlock(scope: !10521, file: !1747, line: 967, column: 13)
!10738 = !DILocation(line: 967, column: 16, scope: !10521, inlinedAt: !10522)
!10739 = !DILocation(line: 970, column: 5, scope: !10521, inlinedAt: !10522)
!10740 = distinct !DISubprogram(name: "send<polars_ooc::spill_file::CleanRequest>", linkageName: "_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4sendB10_", scope: !5464, file: !5447, line: 319, type: !30, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10741 = !DILocation(line: 324, column: 26, scope: !10740)
!10742 = !DILocation(line: 5, column: 17, scope: !10743, inlinedAt: !10741)
!10743 = distinct !DISubprogram(name: "default", linkageName: "_RNvXs2_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc6selectNtB5_5TokenNtNtCscgRAwXFJnXP_4core7default7Default7default", scope: !7885, file: !3483, line: 5, type: !30, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10744 = !DILocation(line: 3904, column: 24, scope: !444, inlinedAt: !10745)
!10745 = distinct !DILocation(line: 2870, column: 26, scope: !10746, inlinedAt: !10747)
!10746 = distinct !DISubprogram(name: "load", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE4load", scope: !450, file: !445, line: 2868, type: !30, scopeLine: 2868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10747 = distinct !DILocation(line: 126, column: 34, scope: !10748, inlinedAt: !10750)
!10748 = distinct !DILexicalBlock(scope: !10749, file: !5447, line: 125, column: 9)
!10749 = distinct !DISubprogram(name: "start_send<polars_ooc::spill_file::CleanRequest>", linkageName: "_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_sendB10_", scope: !5464, file: !5447, line: 124, type: !30, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10750 = distinct !DILocation(line: 327, column: 21, scope: !10751)
!10751 = distinct !DILexicalBlock(scope: !10740, file: !5447, line: 324, column: 9)
!10752 = !{!10753}
!10753 = distinct !{!10753, !10754, !"_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_sendB10_: argument 0:pre.rot"}
!10754 = distinct !{!10754, !"_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_sendB10_"}
!10755 = !DILocation(line: 130, column: 23, scope: !10756, inlinedAt: !10750)
!10756 = distinct !DILexicalBlock(scope: !10748, file: !5447, line: 126, column: 9)
!10757 = !DILocation(line: 130, column: 16, scope: !10756, inlinedAt: !10750)
!10758 = !{!10759}
!10759 = distinct !{!10759, !10754, !"_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_sendB10_: argument 0"}
!10760 = !DILocation(line: 327, column: 21, scope: !10751)
!10761 = !DILocation(line: 137, column: 32, scope: !10756, inlinedAt: !10750)
!10762 = !DILocation(line: 137, column: 25, scope: !10756, inlinedAt: !10750)
!10763 = !DILocation(line: 138, column: 32, scope: !10764, inlinedAt: !10750)
!10764 = distinct !DILexicalBlock(scope: !10756, file: !5447, line: 137, column: 13)
!10765 = !DILocation(line: 138, column: 30, scope: !10764, inlinedAt: !10750)
!10766 = !DILocation(line: 138, column: 23, scope: !10764, inlinedAt: !10750)
!10767 = !DILocation(line: 142, column: 33, scope: !10768, inlinedAt: !10750)
!10768 = distinct !DILexicalBlock(scope: !10764, file: !5447, line: 138, column: 13)
!10769 = !DILocation(line: 252, column: 39, scope: !10770, inlinedAt: !10771)
!10770 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::array::Slot<polars_ooc::spill_file::CleanRequest>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5array4SlotNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestEE13get_uncheckedB1O_", scope: !1708, file: !1707, line: 239, type: !30, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10771 = distinct !DILocation(line: 646, column: 26, scope: !10772, inlinedAt: !10773)
!10772 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::array::Slot<polars_ooc::spill_file::CleanRequest>, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5array4SlotNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE13get_uncheckedjEB1l_", scope: !2193, file: !2192, line: 639, type: !30, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10773 = distinct !DILocation(line: 142, column: 45, scope: !10768, inlinedAt: !10750)
!10774 = !DILocation(line: 252, column: 13, scope: !10770, inlinedAt: !10771)
!10775 = !DILocation(line: 253, column: 13, scope: !10770, inlinedAt: !10771)
!10776 = !DILocation(line: 2447, column: 9, scope: !10777, inlinedAt: !10778)
!10777 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<usize>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8jEE3getCskAlUH1kY1DR_10polars_ooc", scope: !3596, file: !3595, line: 2443, type: !30, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10778 = distinct !DILocation(line: 3615, column: 24, scope: !10779, inlinedAt: !10781)
!10779 = !DILexicalBlockFile(scope: !10780, file: !445, discriminator: 2)
!10780 = distinct !DISubprogram(name: "as_ptr", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE6as_ptr", scope: !450, file: !445, line: 3614, type: !30, scopeLine: 3614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10781 = distinct !DILocation(line: 2870, column: 43, scope: !10782, inlinedAt: !10783)
!10782 = !DILexicalBlockFile(scope: !10746, file: !445, discriminator: 2)
!10783 = distinct !DILocation(line: 143, column: 36, scope: !10784, inlinedAt: !10750)
!10784 = distinct !DILexicalBlock(scope: !10768, file: !5447, line: 142, column: 13)
!10785 = !DILocation(line: 3905, column: 24, scope: !444, inlinedAt: !10786)
!10786 = distinct !DILocation(line: 2870, column: 26, scope: !10746, inlinedAt: !10783)
!10787 = !DILocation(line: 146, column: 16, scope: !10788, inlinedAt: !10750)
!10788 = distinct !DILexicalBlock(scope: !10784, file: !5447, line: 143, column: 13)
!10789 = !DILocation(line: 175, column: 42, scope: !10788, inlinedAt: !10750)
!10790 = !DILocation(line: 2511, column: 13, scope: !10791, inlinedAt: !10792)
!10791 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj12wrapping_add", scope: !5607, file: !3737, line: 2510, type: !30, scopeLine: 2510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10792 = distinct !DILocation(line: 175, column: 29, scope: !10788, inlinedAt: !10750)
!10793 = !DILocation(line: 175, column: 59, scope: !10788, inlinedAt: !10750)
!10794 = !DILocation(line: 175, column: 23, scope: !10788, inlinedAt: !10750)
!10795 = !DILocation(line: 147, column: 35, scope: !10788, inlinedAt: !10750)
!10796 = !DILocation(line: 147, column: 47, scope: !10788, inlinedAt: !10750)
!10797 = !DILocation(line: 127, column: 12, scope: !3713, inlinedAt: !10798)
!10798 = distinct !DILocation(line: 189, column: 25, scope: !10788, inlinedAt: !10750)
!10799 = !DILocation(line: 132, column: 13, scope: !3713, inlinedAt: !10798)
!10800 = !DILocation(line: 1917, column: 50, scope: !3720, inlinedAt: !10801)
!10801 = distinct !DILocation(line: 781, column: 12, scope: !3724, inlinedAt: !10802)
!10802 = distinct !DILocation(line: 866, column: 14, scope: !3729, inlinedAt: !10803)
!10803 = distinct !DILocation(line: 128, column: 22, scope: !3732, inlinedAt: !10798)
!10804 = !DILocation(line: 781, column: 12, scope: !3724, inlinedAt: !10802)
!10805 = !DILocation(line: 3558, column: 28, scope: !3736, inlinedAt: !10806)
!10806 = distinct !DILocation(line: 128, column: 41, scope: !3713, inlinedAt: !10798)
!10807 = !DILocation(line: 25, column: 14, scope: !3744, inlinedAt: !10808)
!10808 = distinct !DILocation(line: 287, column: 13, scope: !3750, inlinedAt: !10809)
!10809 = distinct !DILocation(line: 129, column: 17, scope: !3733, inlinedAt: !10798)
!10810 = distinct !{!10810, !3753}
!10811 = !DILocation(line: 135, column: 23, scope: !3713, inlinedAt: !10798)
!10812 = !DILocation(line: 175, column: 20, scope: !10788, inlinedAt: !10750)
!10813 = !DILocation(line: 4390, column: 23, scope: !609, inlinedAt: !10814)
!10814 = distinct !DILocation(line: 176, column: 17, scope: !10788, inlinedAt: !10750)
!10815 = !DILocation(line: 3904, column: 24, scope: !444, inlinedAt: !10816)
!10816 = distinct !DILocation(line: 2870, column: 26, scope: !10746, inlinedAt: !10817)
!10817 = distinct !DILocation(line: 177, column: 38, scope: !10788, inlinedAt: !10750)
!10818 = !DILocation(line: 180, column: 38, scope: !10819, inlinedAt: !10750)
!10819 = distinct !DILexicalBlock(scope: !10788, file: !5447, line: 177, column: 17)
!10820 = !DILocation(line: 2511, column: 13, scope: !10791, inlinedAt: !10821)
!10821 = distinct !DILocation(line: 180, column: 25, scope: !10819, inlinedAt: !10750)
!10822 = !DILocation(line: 180, column: 20, scope: !10819, inlinedAt: !10750)
!10823 = !DILocation(line: 1077, column: 12, scope: !7078, inlinedAt: !10824)
!10824 = distinct !DILocation(line: 114, column: 36, scope: !10429, inlinedAt: !10825)
!10825 = distinct !DILocation(line: 185, column: 25, scope: !10819, inlinedAt: !10750)
!10826 = !DILocation(line: 3558, column: 28, scope: !3736, inlinedAt: !10827)
!10827 = distinct !DILocation(line: 115, column: 26, scope: !10433, inlinedAt: !10825)
!10828 = !DILocation(line: 1917, column: 50, scope: !10435, inlinedAt: !10829)
!10829 = distinct !DILocation(line: 781, column: 12, scope: !10437, inlinedAt: !10830)
!10830 = distinct !DILocation(line: 866, column: 14, scope: !10439, inlinedAt: !10831)
!10831 = distinct !DILocation(line: 115, column: 18, scope: !10441, inlinedAt: !10825)
!10832 = !DILocation(line: 781, column: 12, scope: !10437, inlinedAt: !10830)
!10833 = !DILocation(line: 25, column: 14, scope: !10445, inlinedAt: !10834)
!10834 = distinct !DILocation(line: 287, column: 13, scope: !10447, inlinedAt: !10835)
!10835 = distinct !DILocation(line: 116, column: 13, scope: !10442, inlinedAt: !10825)
!10836 = distinct !{!10836, !3753}
!10837 = !DILocation(line: 119, column: 23, scope: !10433, inlinedAt: !10825)
!10838 = !DILocation(line: 555, column: 18, scope: !10452, inlinedAt: !10839)
!10839 = distinct !DILocation(line: 119, column: 33, scope: !10433, inlinedAt: !10825)
!10840 = !DILocation(line: 0, scope: !10788, inlinedAt: !10750)
!10841 = !DILocation(line: 3904, column: 24, scope: !444, inlinedAt: !10842)
!10842 = distinct !DILocation(line: 2870, column: 26, scope: !10746, inlinedAt: !10843)
!10843 = distinct !DILocation(line: 0, scope: !10788, inlinedAt: !10750)
!10844 = !DILocation(line: 154, column: 38, scope: !10788, inlinedAt: !10750)
!10845 = !DILocation(line: 2511, column: 13, scope: !10791, inlinedAt: !10846)
!10846 = distinct !DILocation(line: 154, column: 25, scope: !10788, inlinedAt: !10750)
!10847 = !DILocation(line: 147, column: 32, scope: !10788, inlinedAt: !10750)
!10848 = !DILocation(line: 150, column: 21, scope: !10788, inlinedAt: !10750)
!10849 = !DILocation(line: 4081, column: 17, scope: !7047, inlinedAt: !10850)
!10850 = distinct !DILocation(line: 3130, column: 21, scope: !10851, inlinedAt: !10852)
!10851 = distinct !DISubprogram(name: "compare_exchange_weak", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE21compare_exchange_weak", scope: !450, file: !445, line: 3123, type: !30, scopeLine: 3123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10852 = distinct !DILocation(line: 158, column: 33, scope: !10853, inlinedAt: !10750)
!10853 = distinct !DILexicalBlock(scope: !10788, file: !5447, line: 147, column: 17)
!10854 = !DILocation(line: 0, scope: !7047, inlinedAt: !10850)
!10855 = !DILocation(line: 158, column: 17, scope: !10853, inlinedAt: !10750)
!10856 = !DILocation(line: 1077, column: 12, scope: !7078, inlinedAt: !10857)
!10857 = distinct !DILocation(line: 114, column: 36, scope: !10429, inlinedAt: !10858)
!10858 = distinct !DILocation(line: 171, column: 33, scope: !10853, inlinedAt: !10750)
!10859 = !DILocation(line: 3558, column: 28, scope: !3736, inlinedAt: !10860)
!10860 = distinct !DILocation(line: 115, column: 26, scope: !10433, inlinedAt: !10858)
!10861 = !DILocation(line: 1917, column: 50, scope: !10435, inlinedAt: !10862)
!10862 = distinct !DILocation(line: 781, column: 12, scope: !10437, inlinedAt: !10863)
!10863 = distinct !DILocation(line: 866, column: 14, scope: !10439, inlinedAt: !10864)
!10864 = distinct !DILocation(line: 115, column: 18, scope: !10441, inlinedAt: !10858)
!10865 = !DILocation(line: 781, column: 12, scope: !10437, inlinedAt: !10863)
!10866 = !DILocation(line: 25, column: 14, scope: !10445, inlinedAt: !10867)
!10867 = distinct !DILocation(line: 287, column: 13, scope: !10447, inlinedAt: !10868)
!10868 = distinct !DILocation(line: 116, column: 13, scope: !10442, inlinedAt: !10858)
!10869 = distinct !{!10869, !3753}
!10870 = !DILocation(line: 119, column: 23, scope: !10433, inlinedAt: !10858)
!10871 = !DILocation(line: 555, column: 18, scope: !10452, inlinedAt: !10872)
!10872 = distinct !DILocation(line: 119, column: 33, scope: !10433, inlinedAt: !10858)
!10873 = !DILocation(line: 332, column: 30, scope: !10874)
!10874 = distinct !DILexicalBlock(scope: !10751, file: !5447, line: 332, column: 39)
!10875 = !DILocation(line: 332, column: 20, scope: !10874)
!10876 = !DILocation(line: 166, column: 25, scope: !10853, inlinedAt: !10750)
!10877 = !DILocation(line: 167, column: 25, scope: !10853, inlinedAt: !10750)
!10878 = !DILocation(line: 328, column: 54, scope: !10751)
!10879 = !DILocation(line: 1921, column: 41, scope: !10880, inlinedAt: !10881)
!10880 = distinct !DISubprogram(name: "write<core::mem::maybe_uninit::MaybeUninit<polars_ooc::spill_file::CleanRequest>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr5writeINtNtNtB4_3mem12maybe_uninit11MaybeUninitNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestEEB1g_", scope: !97, file: !96, line: 1898, type: !30, scopeLine: 1898, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10881 = distinct !DILocation(line: 1418, column: 18, scope: !10882, inlinedAt: !10883)
!10882 = distinct !DISubprogram(name: "write<core::mem::maybe_uninit::MaybeUninit<polars_ooc::spill_file::CleanRequest>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOINtNtNtB6_3mem12maybe_uninit11MaybeUninitNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE5writeB1l_", scope: !155, file: !154, line: 1413, type: !30, scopeLine: 1413, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10883 = distinct !DILocation(line: 205, column: 28, scope: !10884, inlinedAt: !10886)
!10884 = distinct !DILexicalBlock(scope: !10885, file: !5447, line: 204, column: 13)
!10885 = distinct !DISubprogram(name: "write<polars_ooc::spill_file::CleanRequest>", linkageName: "_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE5writeB10_", scope: !5464, file: !5447, line: 196, type: !12, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10886 = distinct !DILocation(line: 328, column: 41, scope: !10751)
!10887 = !{!10888}
!10888 = distinct !{!10888, !10889, !"_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE5writeB10_: argument 0"}
!10889 = distinct !{!10889, !"_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE5writeB10_"}
!10890 = !DILocation(line: 3890, column: 24, scope: !8316, inlinedAt: !10891)
!10891 = distinct !DILocation(line: 2898, column: 26, scope: !10892, inlinedAt: !10893)
!10892 = distinct !DISubprogram(name: "store", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE5store", scope: !450, file: !445, line: 2896, type: !30, scopeLine: 2896, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10893 = distinct !DILocation(line: 206, column: 24, scope: !10884, inlinedAt: !10886)
!10894 = !{!10888, !10895}
!10895 = distinct !{!10895, !10889, !"_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE5writeB10_: argument 1"}
!10896 = !DILocation(line: 210, column: 9, scope: !10885, inlinedAt: !10886)
!10897 = !DILocation(line: 210, column: 24, scope: !10885, inlinedAt: !10886)
!10898 = !DILocation(line: 966, column: 9, scope: !10899, inlinedAt: !10900)
!10899 = distinct !DISubprogram(name: "map_err<(), polars_ooc::spill_file::CleanRequest, std::sync::mpmc::error::SendTimeoutError<polars_ooc::spill_file::CleanRequest>, fn(polars_ooc::spill_file::CleanRequest) -> std::sync::mpmc::error::SendTimeoutError<polars_ooc::spill_file::CleanRequest>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultuNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE7map_errINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5error16SendTimeoutErrorBJ_ENcNtB1M_12Disconnected0EBN_", scope: !1749, file: !1747, line: 962, type: !30, scopeLine: 962, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10900 = !DILocation(line: 329, column: 28, scope: !10901)
!10901 = distinct !DILexicalBlock(scope: !10751, file: !5447, line: 328, column: 17)
!10902 = !DILocation(line: 332, column: 25, scope: !10874)
!10903 = !DILocation(line: 333, column: 20, scope: !10874)
!10904 = !DILocation(line: 46, column: 13, scope: !10905, inlinedAt: !10906)
!10905 = distinct !DISubprogram(name: "with<std::sync::mpmc::array::{impl#1}::send::{closure_env#0}<polars_ooc::spill_file::CleanRequest>, ()>", linkageName: "_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4send0uEB1C_", scope: !3635, file: !2992, line: 37, type: !30, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10906 = distinct !DILocation(line: 338, column: 13, scope: !10751)
!10907 = !{!10908}
!10908 = distinct !{!10908, !10909, !"_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4send0uEB1C_: argument 0"}
!10909 = distinct !{!10909, !"_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4send0uEB1C_"}
!10910 = !DILocation(line: 46, column: 21, scope: !10905, inlinedAt: !10906)
!10911 = !DILocation(line: 555, column: 18, scope: !8213, inlinedAt: !10912)
!10912 = distinct !DILocation(line: 59, column: 42, scope: !8215, inlinedAt: !10913)
!10913 = distinct !DILocation(line: 97, column: 49, scope: !8202, inlinedAt: !10914)
!10914 = distinct !DILocation(line: 250, column: 5, scope: !8206, inlinedAt: !10915)
!10915 = distinct !DILocation(line: 461, column: 37, scope: !10916, inlinedAt: !10917)
!10916 = distinct !DISubprogram(name: "try_with<core::cell::Cell<core::option::Option<std::sync::mpmc::context::Context>>, std::sync::mpmc::context::{impl#0}::with::{closure_env#1}<std::sync::mpmc::array::{impl#1}::send::{closure_env#0}<polars_ooc::spill_file::CleanRequest>, ()>, ()>", linkageName: "_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4send0uEs_0uEB3w_", scope: !7228, file: !7227, line: 457, type: !12, scopeLine: 457, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10917 = distinct !DILocation(line: 53, column: 14, scope: !10918, inlinedAt: !10906)
!10918 = distinct !DILexicalBlock(scope: !10919, file: !2992, line: 47, column: 9)
!10919 = distinct !DILexicalBlock(scope: !10905, file: !2992, line: 46, column: 9)
!10920 = !{!10921, !10923, !10925, !10908}
!10921 = distinct !{!10921, !10922, !"_RINvMs0_NtNtNtNtCsh8eZTKRCwoO_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscgRAwXFJnXP_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE11get_or_initNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECskAlUH1kY1DR_10polars_ooc: argument 0"}
!10922 = distinct !{!10922, !"_RINvMs0_NtNtNtNtCsh8eZTKRCwoO_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscgRAwXFJnXP_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE11get_or_initNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECskAlUH1kY1DR_10polars_ooc"}
!10923 = distinct !{!10923, !10924, !"_RNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB8_7Context4with7CONTEXT00CskAlUH1kY1DR_10polars_ooc: argument 0"}
!10924 = distinct !{!10924, !"_RNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB8_7Context4with7CONTEXT00CskAlUH1kY1DR_10polars_ooc"}
!10925 = distinct !{!10925, !10926, !"_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCskAlUH1kY1DR_10polars_ooc: argument 0"}
!10926 = distinct !{!10926, !"_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCskAlUH1kY1DR_10polars_ooc"}
!10927 = !DILocation(line: 59, column: 16, scope: !8215, inlinedAt: !10913)
!10928 = !DILocation(line: 62, column: 27, scope: !8216, inlinedAt: !10913)
!10929 = !DILocation(line: 269, column: 12, scope: !10930, inlinedAt: !10931)
!10930 = distinct !DISubprogram(name: "as_ref<core::cell::Cell<core::option::Option<std::sync::mpmc::context::Context>>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPINtNtB6_4cell4CellINtNtB6_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEE6as_refCskAlUH1kY1DR_10polars_ooc", scope: !101, file: !100, line: 266, type: !30, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10931 = distinct !DILocation(line: 461, column: 56, scope: !10916, inlinedAt: !10917)
!10932 = !DILocation(line: 929, column: 22, scope: !10933, inlinedAt: !10934)
!10933 = distinct !DISubprogram(name: "replace<core::option::Option<std::sync::mpmc::context::Context>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem7replaceINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECskAlUH1kY1DR_10polars_ooc", scope: !148, file: !723, line: 915, type: !30, scopeLine: 915, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10934 = distinct !DILocation(line: 513, column: 9, scope: !10935, inlinedAt: !10936)
!10935 = distinct !DISubprogram(name: "replace<core::option::Option<std::sync::mpmc::context::Context>>", linkageName: "_RNvMs7_NtCscgRAwXFJnXP_4core4cellINtB5_4CellINtNtB7_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEE7replaceCskAlUH1kY1DR_10polars_ooc", scope: !7237, file: !3595, line: 510, type: !30, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10936 = distinct !DILocation(line: 675, column: 14, scope: !10937, inlinedAt: !10938)
!10937 = distinct !DISubprogram(name: "take<core::option::Option<std::sync::mpmc::context::Context>>", linkageName: "_RNvMsa_NtCscgRAwXFJnXP_4core4cellINtB5_4CellINtNtB7_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEE4takeCskAlUH1kY1DR_10polars_ooc", scope: !7237, file: !3595, line: 671, type: !30, scopeLine: 671, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10938 = distinct !DILocation(line: 53, column: 41, scope: !10939, inlinedAt: !10940)
!10939 = distinct !DISubprogram(name: "{closure#1}<std::sync::mpmc::array::{impl#1}::send::{closure_env#0}<polars_ooc::spill_file::CleanRequest>, ()>", linkageName: "_RNCINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4send0uEs_0B1E_", scope: !2993, file: !2992, line: 53, type: !12, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10940 = distinct !DILocation(line: 462, column: 12, scope: !10941, inlinedAt: !10917)
!10941 = distinct !DILexicalBlock(scope: !10916, file: !7227, line: 461, column: 9)
!10942 = !DILocation(line: 930, column: 49, scope: !10943, inlinedAt: !10934)
!10943 = distinct !DILexicalBlock(scope: !10933, file: !723, line: 929, column: 9)
!10944 = !DILocation(line: 53, column: 36, scope: !10939, inlinedAt: !10940)
!10945 = !DILocation(line: 53, column: 30, scope: !10939, inlinedAt: !10940)
!10946 = !DILocation(line: 54, column: 28, scope: !10939, inlinedAt: !10940)
!10947 = !DILocation(line: 54, column: 25, scope: !10939, inlinedAt: !10940)
!10948 = !DILocation(line: 1015, column: 18, scope: !10949, inlinedAt: !10950)
!10949 = distinct !DISubprogram(name: "unwrap<std::sync::mpmc::array::{impl#1}::send::{closure_env#0}<polars_ooc::spill_file::CleanRequest>>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionNCNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtBO_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4send0E6unwrapB1K_", scope: !9, file: !8, line: 1013, type: !30, scopeLine: 1013, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10950 = distinct !DILocation(line: 48, column: 30, scope: !10951, inlinedAt: !10952)
!10951 = distinct !DISubprogram(name: "{closure#0}<std::sync::mpmc::array::{impl#1}::send::{closure_env#0}<polars_ooc::spill_file::CleanRequest>, ()>", linkageName: "_RNCINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4send0uE0B1E_", scope: !2993, file: !2992, line: 47, type: !30, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10952 = distinct !DILocation(line: 54, column: 25, scope: !10939, inlinedAt: !10940)
!10953 = !DILocation(line: 49, column: 13, scope: !10954, inlinedAt: !10952)
!10954 = distinct !DILexicalBlock(scope: !10951, file: !2992, line: 48, column: 13)
!10955 = !DILocation(line: 3956, column: 24, scope: !3016, inlinedAt: !10956)
!10956 = distinct !DILocation(line: 3193, column: 26, scope: !3018, inlinedAt: !10957)
!10957 = distinct !DILocation(line: 2814, column: 32, scope: !3020, inlinedAt: !10958)
!10958 = distinct !DILocation(line: 810, column: 1, scope: !3022, inlinedAt: !10959)
!10959 = distinct !DILocation(line: 810, column: 1, scope: !3024, inlinedAt: !10960)
!10960 = distinct !DILocation(line: 54, column: 42, scope: !10939, inlinedAt: !10940)
!10961 = !{!10962, !10964, !10966, !10908}
!10962 = distinct !{!10962, !10963, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc: argument 0"}
!10963 = distinct !{!10963, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc"}
!10964 = distinct !{!10964, !10965, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECskAlUH1kY1DR_10polars_ooc: argument 0"}
!10965 = distinct !{!10965, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECskAlUH1kY1DR_10polars_ooc"}
!10966 = distinct !{!10966, !10967, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc: argument 0"}
!10967 = distinct !{!10967, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc"}
!10968 = !DILocation(line: 2814, column: 12, scope: !3020, inlinedAt: !10958)
!10969 = !DILocation(line: 4387, column: 24, scope: !609, inlinedAt: !10970)
!10970 = distinct !DILocation(line: 64, column: 9, scope: !3020, inlinedAt: !10958)
!10971 = !DILocation(line: 2857, column: 18, scope: !3020, inlinedAt: !10958)
!10972 = !DILocation(line: 3956, column: 24, scope: !3016, inlinedAt: !10973)
!10973 = distinct !DILocation(line: 3193, column: 26, scope: !3018, inlinedAt: !10974)
!10974 = distinct !DILocation(line: 2814, column: 32, scope: !3020, inlinedAt: !10975)
!10975 = distinct !DILocation(line: 810, column: 1, scope: !3022, inlinedAt: !10976)
!10976 = distinct !DILocation(line: 810, column: 1, scope: !3024, inlinedAt: !10977)
!10977 = distinct !DILocation(line: 54, column: 42, scope: !10939, inlinedAt: !10940)
!10978 = !{!10979, !10981, !10983, !10908}
!10979 = distinct !{!10979, !10980, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc: argument 0"}
!10980 = distinct !{!10980, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc"}
!10981 = distinct !{!10981, !10982, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECskAlUH1kY1DR_10polars_ooc: argument 0"}
!10982 = distinct !{!10982, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECskAlUH1kY1DR_10polars_ooc"}
!10983 = distinct !{!10983, !10984, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc: argument 0"}
!10984 = distinct !{!10984, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc"}
!10985 = !DILocation(line: 2814, column: 12, scope: !3020, inlinedAt: !10975)
!10986 = !DILocation(line: 4387, column: 24, scope: !609, inlinedAt: !10987)
!10987 = distinct !DILocation(line: 64, column: 9, scope: !3020, inlinedAt: !10975)
!10988 = !DILocation(line: 2857, column: 18, scope: !3020, inlinedAt: !10975)
!10989 = !DILocation(line: 54, column: 42, scope: !10939, inlinedAt: !10940)
!10990 = !DILocation(line: 53, column: 23, scope: !10939, inlinedAt: !10940)
!10991 = !DILocation(line: 55, column: 22, scope: !10939, inlinedAt: !10940)
!10992 = !DILocation(line: 2447, column: 9, scope: !10993, inlinedAt: !10994)
!10993 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<usize>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8jEE3getCskAlUH1kY1DR_10polars_ooc", scope: !3596, file: !3595, line: 2443, type: !30, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10994 = distinct !DILocation(line: 3615, column: 24, scope: !10995, inlinedAt: !10996)
!10995 = distinct !DISubprogram(name: "as_ptr", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE6as_ptr", scope: !450, file: !445, line: 3614, type: !30, scopeLine: 3614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10996 = distinct !DILocation(line: 2898, column: 44, scope: !10997, inlinedAt: !10998)
!10997 = distinct !DISubprogram(name: "store", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE5store", scope: !450, file: !445, line: 2896, type: !30, scopeLine: 2896, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!10998 = distinct !DILocation(line: 81, column: 27, scope: !10999, inlinedAt: !11000)
!10999 = distinct !DISubprogram(name: "reset", linkageName: "_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB2_7Context5reset", scope: !3635, file: !2992, line: 80, type: !30, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11000 = distinct !DILocation(line: 56, column: 24, scope: !11001, inlinedAt: !10940)
!11001 = distinct !DILexicalBlock(scope: !10939, file: !2992, line: 55, column: 17)
!11002 = !DILocation(line: 3890, column: 24, scope: !8316, inlinedAt: !11003)
!11003 = distinct !DILocation(line: 2898, column: 26, scope: !10997, inlinedAt: !10998)
!11004 = !DILocation(line: 2447, column: 9, scope: !11005, inlinedAt: !11006)
!11005 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<*mut ()>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8OuEE3getCskAlUH1kY1DR_10polars_ooc", scope: !3596, file: !3595, line: 2443, type: !30, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11006 = distinct !DILocation(line: 2500, column: 16, scope: !11007, inlinedAt: !11008)
!11007 = distinct !DISubprogram(name: "as_ptr<()>", linkageName: "_RNvMs3_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicOuE6as_ptrCskAlUH1kY1DR_10polars_ooc", scope: !450, file: !445, line: 2499, type: !30, scopeLine: 2499, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11008 = distinct !DILocation(line: 1763, column: 31, scope: !11009, inlinedAt: !11010)
!11009 = distinct !DISubprogram(name: "store<()>", linkageName: "_RNvMs3_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicOuE5storeCskAlUH1kY1DR_10polars_ooc", scope: !450, file: !445, line: 1760, type: !30, scopeLine: 1760, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11010 = distinct !DILocation(line: 82, column: 27, scope: !10999, inlinedAt: !11000)
!11011 = !DILocation(line: 3890, column: 24, scope: !6636, inlinedAt: !11012)
!11012 = distinct !DILocation(line: 1763, column: 13, scope: !11009, inlinedAt: !11010)
!11013 = !DILocation(line: 57, column: 31, scope: !11001, inlinedAt: !10940)
!11014 = !DILocation(line: 1015, column: 18, scope: !10949, inlinedAt: !11015)
!11015 = distinct !DILocation(line: 48, column: 30, scope: !11016, inlinedAt: !11017)
!11016 = !DILexicalBlockFile(scope: !10951, file: !2992, discriminator: 2)
!11017 = distinct !DILocation(line: 57, column: 31, scope: !11001, inlinedAt: !10940)
!11018 = !DILocation(line: 49, column: 13, scope: !11019, inlinedAt: !11017)
!11019 = distinct !DILexicalBlock(scope: !10951, file: !2992, line: 48, column: 13)
!11020 = !DILocation(line: 437, column: 9, scope: !11021, inlinedAt: !11022)
!11021 = distinct !DISubprogram(name: "set<core::option::Option<std::sync::mpmc::context::Context>>", linkageName: "_RNvMs7_NtCscgRAwXFJnXP_4core4cellINtB5_4CellINtNtB7_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEE3setCskAlUH1kY1DR_10polars_ooc", scope: !7237, file: !3595, line: 433, type: !30, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11022 = distinct !DILocation(line: 58, column: 26, scope: !11023, inlinedAt: !10940)
!11023 = distinct !DILexicalBlock(scope: !11001, file: !2992, line: 57, column: 21)
!11024 = !DILocation(line: 929, column: 22, scope: !10933, inlinedAt: !11025)
!11025 = distinct !DILocation(line: 513, column: 9, scope: !11026, inlinedAt: !11027)
!11026 = !DILexicalBlockFile(scope: !10935, file: !3595, discriminator: 2)
!11027 = distinct !DILocation(line: 437, column: 14, scope: !11021, inlinedAt: !11022)
!11028 = !DILocation(line: 930, column: 49, scope: !11029, inlinedAt: !11025)
!11029 = distinct !DILexicalBlock(scope: !10933, file: !723, line: 929, column: 9)
!11030 = !DILocation(line: 810, column: 1, scope: !8351, inlinedAt: !11031)
!11031 = distinct !DILocation(line: 437, column: 26, scope: !11021, inlinedAt: !11022)
!11032 = !DILocation(line: 3956, column: 24, scope: !3016, inlinedAt: !11033)
!11033 = distinct !DILocation(line: 3193, column: 26, scope: !3018, inlinedAt: !11034)
!11034 = distinct !DILocation(line: 2814, column: 32, scope: !3020, inlinedAt: !11035)
!11035 = distinct !DILocation(line: 810, column: 1, scope: !3022, inlinedAt: !11036)
!11036 = distinct !DILocation(line: 810, column: 1, scope: !3024, inlinedAt: !11037)
!11037 = distinct !DILocation(line: 810, column: 1, scope: !8351, inlinedAt: !11031)
!11038 = !{!11039, !11041, !11043, !11045, !10908}
!11039 = distinct !{!11039, !11040, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc: argument 0"}
!11040 = distinct !{!11040, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc"}
!11041 = distinct !{!11041, !11042, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECskAlUH1kY1DR_10polars_ooc: argument 0"}
!11042 = distinct !{!11042, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECskAlUH1kY1DR_10polars_ooc"}
!11043 = distinct !{!11043, !11044, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc: argument 0"}
!11044 = distinct !{!11044, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc"}
!11045 = distinct !{!11045, !11046, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECskAlUH1kY1DR_10polars_ooc: argument 0"}
!11046 = distinct !{!11046, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECskAlUH1kY1DR_10polars_ooc"}
!11047 = !DILocation(line: 2814, column: 12, scope: !3020, inlinedAt: !11035)
!11048 = !DILocation(line: 4387, column: 24, scope: !609, inlinedAt: !11049)
!11049 = distinct !DILocation(line: 64, column: 9, scope: !3020, inlinedAt: !11035)
!11050 = !DILocation(line: 2857, column: 18, scope: !3020, inlinedAt: !11035)
!11051 = !DILocation(line: 437, column: 26, scope: !11021, inlinedAt: !11022)
!11052 = !DILocation(line: 60, column: 17, scope: !10939, inlinedAt: !10940)
!11053 = !DILocation(line: 61, column: 13, scope: !10939, inlinedAt: !10940)
!11054 = !DILocation(line: 3956, column: 24, scope: !3016, inlinedAt: !11055)
!11055 = distinct !DILocation(line: 3193, column: 26, scope: !3018, inlinedAt: !11056)
!11056 = distinct !DILocation(line: 2814, column: 32, scope: !3020, inlinedAt: !11057)
!11057 = distinct !DILocation(line: 810, column: 1, scope: !3022, inlinedAt: !11058)
!11058 = distinct !DILocation(line: 810, column: 1, scope: !3024, inlinedAt: !11059)
!11059 = distinct !DILocation(line: 60, column: 17, scope: !10939, inlinedAt: !10940)
!11060 = !{!11061, !11063, !11065, !10908}
!11061 = distinct !{!11061, !11062, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc: argument 0"}
!11062 = distinct !{!11062, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc"}
!11063 = distinct !{!11063, !11064, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECskAlUH1kY1DR_10polars_ooc: argument 0"}
!11064 = distinct !{!11064, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECskAlUH1kY1DR_10polars_ooc"}
!11065 = distinct !{!11065, !11066, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc: argument 0"}
!11066 = distinct !{!11066, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc"}
!11067 = !DILocation(line: 2814, column: 12, scope: !3020, inlinedAt: !11057)
!11068 = !DILocation(line: 4387, column: 24, scope: !609, inlinedAt: !11069)
!11069 = distinct !DILocation(line: 64, column: 9, scope: !3020, inlinedAt: !11057)
!11070 = !DILocation(line: 2857, column: 18, scope: !3020, inlinedAt: !11057)
!11071 = !DILocation(line: 1622, column: 23, scope: !11072, inlinedAt: !11074)
!11072 = distinct !DILexicalBlock(scope: !11073, file: !1747, line: 1622, column: 13)
end_hunk_2
begin_hunk_3_@llvm.umin.i64
!11091 = !DILocation(line: 539, column: 9, scope: !11092, inlinedAt: !11093)
!11092 = distinct !DISubprogram(name: "is_ge", linkageName: "_RNvMNtCscgRAwXFJnXP_4core3cmpNtB2_8Ordering5is_ge", scope: !3672, file: !3665, line: 538, type: !30, scopeLine: 538, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11093 = !DILocation(line: 250, column: 5, scope: !11094, inlinedAt: !11096)
!11094 = !DILexicalBlockFile(scope: !11095, file: !26, discriminator: 2)
!11095 = distinct !DISubprogram(name: "call_once<fn(core::cmp::Ordering) -> bool, (core::cmp::Ordering)>", linkageName: "_RNvYNvMNtCscgRAwXFJnXP_4core3cmpNtB5_8Ordering5is_geINtNtNtB7_3ops8function6FnOnceTBu_EE9call_onceCskAlUH1kY1DR_10polars_ooc", scope: !27, file: !26, line: 250, type: !30, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11096 = !DILocation(line: 664, column: 24, scope: !11097, inlinedAt: !11099)
!11097 = distinct !DILexicalBlock(scope: !11098, file: !8, line: 664, column: 13)
!11098 = distinct !DISubprogram(name: "is_some_and<core::cmp::Ordering, fn(core::cmp::Ordering) -> bool>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionNtNtB5_3cmp8OrderingE11is_some_andNvMBK_BI_5is_geECskAlUH1kY1DR_10polars_ooc", scope: !9, file: !8, line: 661, type: !30, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11099 = !DILocation(line: 1466, column: 33, scope: !11082, inlinedAt: !10903)
!11100 = !DILocation(line: 334, column: 28, scope: !10874)
!11101 = !DILocation(line: 334, column: 58, scope: !10874)
!11102 = !DILocation(line: 0, scope: !11103)
!11103 = !DILexicalBlockFile(scope: !10751, file: !1621, discriminator: 0)
!11104 = !DILocation(line: 361, column: 5, scope: !10740)
!11105 = !DILocation(line: 361, column: 6, scope: !10740)
!11106 = !DILocation(line: 63, column: 5, scope: !10905, inlinedAt: !10906)
!11107 = !{!11108}
!11108 = distinct !{!11108, !10754, !"_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_sendB10_: argument 0:h.rot"}
!11109 = !DILocation(line: 966, column: 15, scope: !10899, inlinedAt: !10900)
!11110 = !DILocation(line: 968, column: 23, scope: !11111, inlinedAt: !10900)
!11111 = distinct !DILexicalBlock(scope: !10899, file: !1747, line: 968, column: 13)
!11112 = !DILocation(line: 968, column: 17, scope: !10899, inlinedAt: !10900)
!11113 = !DILocation(line: 968, column: 32, scope: !10899, inlinedAt: !10900)
!11114 = !DILocation(line: 967, column: 22, scope: !11115, inlinedAt: !10900)
!11115 = distinct !DILexicalBlock(scope: !10899, file: !1747, line: 967, column: 13)
!11116 = !DILocation(line: 970, column: 5, scope: !10899, inlinedAt: !10900)
!11117 = !DILocation(line: 319, column: 5, scope: !10740)
!11118 = distinct !DISubprogram(name: "disconnect_senders<()>", linkageName: "_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChanneluE18disconnect_sendersCskAlUH1kY1DR_10polars_ooc", scope: !5464, file: !5447, line: 451, type: !30, scopeLine: 451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11119 = !DILocation(line: 452, column: 39, scope: !11118)
!11120 = !DILocation(line: 2447, column: 9, scope: !11121, inlinedAt: !11122)
!11121 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<usize>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8jEE3getCskAlUH1kY1DR_10polars_ooc", scope: !3596, file: !3595, line: 2443, type: !30, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11122 = !DILocation(line: 3615, column: 24, scope: !11123, inlinedAt: !11124)
!11123 = distinct !DISubprogram(name: "as_ptr", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE6as_ptr", scope: !450, file: !445, line: 3614, type: !30, scopeLine: 3614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11124 = !DILocation(line: 3295, column: 41, scope: !11125, inlinedAt: !11126)
!11125 = distinct !DISubprogram(name: "fetch_or", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE8fetch_or", scope: !450, file: !445, line: 3293, type: !30, scopeLine: 3293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11126 = !DILocation(line: 452, column: 30, scope: !11118)
!11127 = !DILocation(line: 4135, column: 23, scope: !11128, inlinedAt: !11129)
!11128 = distinct !DISubprogram(name: "atomic_or<usize, usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic9atomic_orjjECskAlUH1kY1DR_10polars_ooc", scope: !446, file: !445, line: 4131, type: !30, scopeLine: 4131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11129 = !DILocation(line: 3295, column: 26, scope: !11125, inlinedAt: !11126)
!11130 = !DILocation(line: 454, column: 19, scope: !11131)
!11131 = distinct !DILexicalBlock(scope: !11118, file: !5447, line: 452, column: 9)
!11132 = !DILocation(line: 454, column: 12, scope: !11131)
!11133 = !DILocation(line: 455, column: 13, scope: !11131)
!11134 = !DILocation(line: 455, column: 28, scope: !11131)
!11135 = !DILocation(line: 454, column: 9, scope: !11131)
!11136 = !DILocation(line: 460, column: 6, scope: !11118)
!11137 = distinct !DISubprogram(name: "disconnect_receivers<()>", linkageName: "_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChanneluE20disconnect_receiversCskAlUH1kY1DR_10polars_ooc", scope: !5464, file: !5447, line: 470, type: !30, scopeLine: 470, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11138 = !DILocation(line: 471, column: 39, scope: !11137)
!11139 = !DILocation(line: 2447, column: 9, scope: !11140, inlinedAt: !11141)
!11140 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<usize>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8jEE3getCskAlUH1kY1DR_10polars_ooc", scope: !3596, file: !3595, line: 2443, type: !30, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11141 = !DILocation(line: 3615, column: 24, scope: !11142, inlinedAt: !11143)
!11142 = distinct !DISubprogram(name: "as_ptr", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE6as_ptr", scope: !450, file: !445, line: 3614, type: !30, scopeLine: 3614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11143 = !DILocation(line: 3295, column: 41, scope: !11144, inlinedAt: !11145)
!11144 = distinct !DISubprogram(name: "fetch_or", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE8fetch_or", scope: !450, file: !445, line: 3293, type: !30, scopeLine: 3293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11145 = !DILocation(line: 471, column: 30, scope: !11137)
!11146 = !DILocation(line: 4135, column: 23, scope: !11147, inlinedAt: !11148)
!11147 = distinct !DISubprogram(name: "atomic_or<usize, usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic9atomic_orjjECskAlUH1kY1DR_10polars_ooc", scope: !446, file: !445, line: 4131, type: !30, scopeLine: 4131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11148 = !DILocation(line: 3295, column: 26, scope: !11144, inlinedAt: !11145)
!11149 = !DILocation(line: 472, column: 38, scope: !11150)
!11150 = distinct !DILexicalBlock(scope: !11137, file: !5447, line: 471, column: 9)
!11151 = !DILocation(line: 472, column: 31, scope: !11150)
!11152 = !DILocation(line: 473, column: 13, scope: !11150)
!11153 = !DILocation(line: 473, column: 26, scope: !11150)
!11154 = !DILocation(line: 502, column: 28, scope: !11155, inlinedAt: !11157)
!11155 = distinct !DILexicalBlock(scope: !11156, file: !5447, line: 501, column: 9)
!11156 = distinct !DISubprogram(name: "discard_all_messages<()>", linkageName: "_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChanneluE20discard_all_messagesCskAlUH1kY1DR_10polars_ooc", scope: !5464, file: !5447, line: 495, type: !30, scopeLine: 495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11157 = distinct !DILocation(line: 479, column: 23, scope: !11158)
!11158 = distinct !DILexicalBlock(scope: !11150, file: !5447, line: 472, column: 9)
!11159 = !DILocation(line: 472, column: 28, scope: !11150)
!11160 = !DILocation(line: 3904, column: 24, scope: !444, inlinedAt: !11161)
!11161 = distinct !DILocation(line: 2870, column: 26, scope: !11162, inlinedAt: !11163)
!11162 = distinct !DISubprogram(name: "load", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE4load", scope: !450, file: !445, line: 2868, type: !30, scopeLine: 2868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11163 = distinct !DILocation(line: 501, column: 34, scope: !11156, inlinedAt: !11157)
!11164 = !DILocation(line: 502, column: 27, scope: !11155, inlinedAt: !11157)
!11165 = !DILocation(line: 502, column: 20, scope: !11155, inlinedAt: !11157)
!11166 = !DILocation(line: 505, column: 9, scope: !11167, inlinedAt: !11157)
!11167 = distinct !DILexicalBlock(scope: !11168, file: !5447, line: 504, column: 9)
!11168 = distinct !DILexicalBlock(scope: !11155, file: !5447, line: 502, column: 9)
!11169 = !DILocation(line: 507, column: 33, scope: !11167, inlinedAt: !11157)
!11170 = !DILocation(line: 105, column: 9, scope: !11171, inlinedAt: !11172)
!11171 = distinct !DISubprogram(name: "new", linkageName: "_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff3new", scope: !3715, file: !3714, line: 104, type: !30, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11172 = distinct !DILocation(line: 504, column: 23, scope: !11168, inlinedAt: !11157)
!11173 = !DILocation(line: 0, scope: !11156, inlinedAt: !11157)
!11174 = !DILocation(line: 507, column: 32, scope: !11167, inlinedAt: !11157)
!11175 = !DILocation(line: 507, column: 25, scope: !11167, inlinedAt: !11157)
!11176 = !DILocation(line: 508, column: 32, scope: !11177, inlinedAt: !11157)
!11177 = distinct !DILexicalBlock(scope: !11167, file: !5447, line: 507, column: 13)
!11178 = !DILocation(line: 508, column: 30, scope: !11177, inlinedAt: !11157)
!11179 = !DILocation(line: 508, column: 23, scope: !11177, inlinedAt: !11157)
!11180 = !DILocation(line: 512, column: 33, scope: !11181, inlinedAt: !11157)
!11181 = distinct !DILexicalBlock(scope: !11177, file: !5447, line: 508, column: 13)
!11182 = !DILocation(line: 252, column: 39, scope: !11183, inlinedAt: !11184)
!11183 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::array::Slot<()>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5array4SlotuEE13get_uncheckedCskAlUH1kY1DR_10polars_ooc", scope: !1708, file: !1707, line: 239, type: !30, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11184 = distinct !DILocation(line: 646, column: 26, scope: !11185, inlinedAt: !11186)
!11185 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::array::Slot<()>, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5array4SlotuE13get_uncheckedjECskAlUH1kY1DR_10polars_ooc", scope: !2193, file: !2192, line: 639, type: !30, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11186 = distinct !DILocation(line: 512, column: 45, scope: !11181, inlinedAt: !11157)
!11187 = !DILocation(line: 252, column: 13, scope: !11183, inlinedAt: !11184)
!11188 = !DILocation(line: 253, column: 13, scope: !11183, inlinedAt: !11184)
!11189 = !DILocation(line: 3905, column: 24, scope: !444, inlinedAt: !11190)
!11190 = distinct !DILocation(line: 2870, column: 26, scope: !11162, inlinedAt: !11191)
!11191 = distinct !DILocation(line: 513, column: 36, scope: !11192, inlinedAt: !11157)
!11192 = distinct !DILexicalBlock(scope: !11181, file: !5447, line: 512, column: 13)
!11193 = !DILocation(line: 516, column: 16, scope: !11194, inlinedAt: !11157)
!11194 = distinct !DILexicalBlock(scope: !11192, file: !5447, line: 513, column: 13)
!11195 = !DILocation(line: 531, column: 23, scope: !11194, inlinedAt: !11157)
!11196 = !DILocation(line: 517, column: 27, scope: !11194, inlinedAt: !11157)
!11197 = !DILocation(line: 517, column: 39, scope: !11194, inlinedAt: !11157)
!11198 = !DILocation(line: 127, column: 12, scope: !3713, inlinedAt: !11199)
!11199 = distinct !DILocation(line: 536, column: 25, scope: !11194, inlinedAt: !11157)
!11200 = !DILocation(line: 132, column: 13, scope: !3713, inlinedAt: !11199)
!11201 = !DILocation(line: 1917, column: 50, scope: !3720, inlinedAt: !11202)
!11202 = distinct !DILocation(line: 781, column: 12, scope: !3724, inlinedAt: !11203)
!11203 = distinct !DILocation(line: 866, column: 14, scope: !3729, inlinedAt: !11204)
!11204 = distinct !DILocation(line: 128, column: 22, scope: !3732, inlinedAt: !11199)
!11205 = !DILocation(line: 781, column: 12, scope: !3724, inlinedAt: !11203)
!11206 = !DILocation(line: 3558, column: 28, scope: !3736, inlinedAt: !11207)
!11207 = distinct !DILocation(line: 128, column: 41, scope: !3713, inlinedAt: !11199)
!11208 = !DILocation(line: 25, column: 14, scope: !3744, inlinedAt: !11209)
!11209 = distinct !DILocation(line: 287, column: 13, scope: !3750, inlinedAt: !11210)
!11210 = distinct !DILocation(line: 129, column: 17, scope: !3733, inlinedAt: !11199)
!11211 = distinct !{!11211, !3753}
!11212 = !DILocation(line: 135, column: 23, scope: !3713, inlinedAt: !11199)
!11213 = !DILocation(line: 516, column: 13, scope: !11194, inlinedAt: !11157)
!11214 = !DILocation(line: 0, scope: !11168, inlinedAt: !11157)
!11215 = !DILocation(line: 524, column: 38, scope: !11194, inlinedAt: !11157)
!11216 = !DILocation(line: 2511, column: 13, scope: !11217, inlinedAt: !11218)
!11217 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj12wrapping_add", scope: !5607, file: !3737, line: 2510, type: !30, scopeLine: 2510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11218 = distinct !DILocation(line: 524, column: 25, scope: !11194, inlinedAt: !11157)
!11219 = !DILocation(line: 517, column: 24, scope: !11194, inlinedAt: !11157)
!11220 = !DILocation(line: 481, column: 6, scope: !11137)
!11221 = distinct !DISubprogram(name: "recv<()>", linkageName: "_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChanneluE4recvCskAlUH1kY1DR_10polars_ooc", scope: !5464, file: !5447, line: 375, type: !30, scopeLine: 375, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11222 = !DILocation(line: 376, column: 26, scope: !11221)
!11223 = !DILocation(line: 5, column: 17, scope: !11224, inlinedAt: !11222)
!11224 = distinct !DISubprogram(name: "default", linkageName: "_RNvXs2_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc6selectNtB5_5TokenNtNtCscgRAwXFJnXP_4core7default7Default7default", scope: !7885, file: !3483, line: 5, type: !30, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11225 = !DILocation(line: 377, column: 9, scope: !11226)
!11226 = distinct !DILexicalBlock(scope: !11221, file: !5447, line: 376, column: 9)
!11227 = !{!11228}
!11228 = distinct !{!11228, !11229, !"_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChanneluE10start_recvCskAlUH1kY1DR_10polars_ooc: argument 0"}
!11229 = distinct !{!11229, !"_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChanneluE10start_recvCskAlUH1kY1DR_10polars_ooc"}
!11230 = !DILocation(line: 379, column: 21, scope: !11226)
!11231 = !DILocation(line: 219, column: 9, scope: !11232, inlinedAt: !11235)
!11232 = distinct !DILexicalBlock(scope: !11233, file: !5447, line: 217, column: 9)
!11233 = distinct !DILexicalBlock(scope: !11234, file: !5447, line: 216, column: 9)
!11234 = distinct !DISubprogram(name: "start_recv<()>", linkageName: "_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChanneluE10start_recvCskAlUH1kY1DR_10polars_ooc", scope: !5464, file: !5447, line: 215, type: !30, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11235 = distinct !DILocation(line: 379, column: 21, scope: !11226)
!11236 = !DILocation(line: 0, scope: !11234, inlinedAt: !11235)
!11237 = !DILocation(line: 3904, column: 24, scope: !444, inlinedAt: !11238)
!11238 = !DILocation(line: 2870, column: 26, scope: !11239, inlinedAt: !11240)
!11239 = distinct !DISubprogram(name: "load", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE4load", scope: !450, file: !445, line: 2868, type: !30, scopeLine: 2868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11240 = !DILocation(line: 0, scope: !11233, inlinedAt: !11235)
!11241 = !DILocation(line: 221, column: 33, scope: !11232, inlinedAt: !11235)
!11242 = !DILocation(line: 221, column: 32, scope: !11232, inlinedAt: !11235)
!11243 = !DILocation(line: 221, column: 25, scope: !11232, inlinedAt: !11235)
!11244 = !DILocation(line: 222, column: 32, scope: !11245, inlinedAt: !11235)
!11245 = distinct !DILexicalBlock(scope: !11232, file: !5447, line: 221, column: 13)
!11246 = !DILocation(line: 222, column: 30, scope: !11245, inlinedAt: !11235)
!11247 = !DILocation(line: 222, column: 23, scope: !11245, inlinedAt: !11235)
!11248 = !DILocation(line: 226, column: 33, scope: !11249, inlinedAt: !11235)
!11249 = distinct !DILexicalBlock(scope: !11245, file: !5447, line: 222, column: 13)
!11250 = !DILocation(line: 252, column: 39, scope: !11251, inlinedAt: !11252)
!11251 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::array::Slot<()>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5array4SlotuEE13get_uncheckedCskAlUH1kY1DR_10polars_ooc", scope: !1708, file: !1707, line: 239, type: !30, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11252 = distinct !DILocation(line: 646, column: 26, scope: !11253, inlinedAt: !11254)
!11253 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::array::Slot<()>, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5array4SlotuE13get_uncheckedjECskAlUH1kY1DR_10polars_ooc", scope: !2193, file: !2192, line: 639, type: !30, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11254 = distinct !DILocation(line: 226, column: 45, scope: !11249, inlinedAt: !11235)
!11255 = !DILocation(line: 252, column: 13, scope: !11251, inlinedAt: !11252)
!11256 = !DILocation(line: 253, column: 13, scope: !11251, inlinedAt: !11252)
!11257 = !DILocation(line: 3905, column: 24, scope: !444, inlinedAt: !11258)
!11258 = distinct !DILocation(line: 2870, column: 26, scope: !11239, inlinedAt: !11259)
!11259 = distinct !DILocation(line: 227, column: 36, scope: !11260, inlinedAt: !11235)
!11260 = distinct !DILexicalBlock(scope: !11249, file: !5447, line: 226, column: 13)
!11261 = !DILocation(line: 230, column: 16, scope: !11262, inlinedAt: !11235)
!11262 = distinct !DILexicalBlock(scope: !11260, file: !5447, line: 227, column: 13)
!11263 = !DILocation(line: 259, column: 23, scope: !11262, inlinedAt: !11235)
!11264 = !DILocation(line: 231, column: 30, scope: !11262, inlinedAt: !11235)
!11265 = !DILocation(line: 231, column: 42, scope: !11262, inlinedAt: !11235)
!11266 = !DILocation(line: 127, column: 12, scope: !3713, inlinedAt: !11267)
!11267 = distinct !DILocation(line: 281, column: 25, scope: !11262, inlinedAt: !11235)
!11268 = !DILocation(line: 132, column: 13, scope: !3713, inlinedAt: !11267)
!11269 = !DILocation(line: 1917, column: 50, scope: !3720, inlinedAt: !11270)
!11270 = distinct !DILocation(line: 781, column: 12, scope: !3724, inlinedAt: !11271)
!11271 = distinct !DILocation(line: 866, column: 14, scope: !3729, inlinedAt: !11272)
!11272 = distinct !DILocation(line: 128, column: 22, scope: !3732, inlinedAt: !11267)
!11273 = !DILocation(line: 781, column: 12, scope: !3724, inlinedAt: !11271)
!11274 = !DILocation(line: 3558, column: 28, scope: !3736, inlinedAt: !11275)
!11275 = distinct !DILocation(line: 128, column: 41, scope: !3713, inlinedAt: !11267)
!11276 = !DILocation(line: 25, column: 14, scope: !3744, inlinedAt: !11277)
!11277 = distinct !DILocation(line: 287, column: 13, scope: !3750, inlinedAt: !11278)
!11278 = distinct !DILocation(line: 129, column: 17, scope: !3733, inlinedAt: !11267)
!11279 = distinct !{!11279, !3753}
!11280 = !DILocation(line: 135, column: 23, scope: !3713, inlinedAt: !11267)
!11281 = !DILocation(line: 259, column: 20, scope: !11262, inlinedAt: !11235)
!11282 = !DILocation(line: 4390, column: 23, scope: !609, inlinedAt: !11283)
!11283 = distinct !DILocation(line: 260, column: 17, scope: !11262, inlinedAt: !11235)
!11284 = !DILocation(line: 3904, column: 24, scope: !444, inlinedAt: !11285)
!11285 = distinct !DILocation(line: 2870, column: 26, scope: !11239, inlinedAt: !11286)
!11286 = distinct !DILocation(line: 261, column: 38, scope: !11262, inlinedAt: !11235)
!11287 = !DILocation(line: 264, column: 29, scope: !11288, inlinedAt: !11235)
!11288 = distinct !DILexicalBlock(scope: !11262, file: !5447, line: 261, column: 17)
!11289 = !DILocation(line: 264, column: 28, scope: !11288, inlinedAt: !11235)
!11290 = !DILocation(line: 264, column: 20, scope: !11288, inlinedAt: !11235)
!11291 = !DILocation(line: 1077, column: 12, scope: !7078, inlinedAt: !11292)
!11292 = distinct !DILocation(line: 114, column: 36, scope: !10429, inlinedAt: !11293)
!11293 = distinct !DILocation(line: 277, column: 25, scope: !11288, inlinedAt: !11235)
!11294 = !DILocation(line: 3558, column: 28, scope: !3736, inlinedAt: !11295)
!11295 = distinct !DILocation(line: 115, column: 26, scope: !10433, inlinedAt: !11293)
!11296 = !DILocation(line: 1917, column: 50, scope: !10435, inlinedAt: !11297)
!11297 = distinct !DILocation(line: 781, column: 12, scope: !10437, inlinedAt: !11298)
!11298 = distinct !DILocation(line: 866, column: 14, scope: !10439, inlinedAt: !11299)
!11299 = distinct !DILocation(line: 115, column: 18, scope: !10441, inlinedAt: !11293)
!11300 = !DILocation(line: 781, column: 12, scope: !10437, inlinedAt: !11298)
!11301 = !DILocation(line: 25, column: 14, scope: !10445, inlinedAt: !11302)
!11302 = distinct !DILocation(line: 287, column: 13, scope: !10447, inlinedAt: !11303)
!11303 = distinct !DILocation(line: 116, column: 13, scope: !10442, inlinedAt: !11293)
!11304 = distinct !{!11304, !3753}
!11305 = !DILocation(line: 119, column: 23, scope: !10433, inlinedAt: !11293)
!11306 = !DILocation(line: 555, column: 18, scope: !10452, inlinedAt: !11307)
!11307 = distinct !DILocation(line: 119, column: 33, scope: !10433, inlinedAt: !11293)
!11308 = !DILocation(line: 266, column: 24, scope: !11288, inlinedAt: !11235)
!11309 = !DILocation(line: 238, column: 38, scope: !11262, inlinedAt: !11235)
!11310 = !DILocation(line: 2511, column: 13, scope: !11311, inlinedAt: !11312)
!11311 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj12wrapping_add", scope: !5607, file: !3737, line: 2510, type: !30, scopeLine: 2510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11312 = distinct !DILocation(line: 238, column: 25, scope: !11262, inlinedAt: !11235)
!11313 = !DILocation(line: 231, column: 27, scope: !11262, inlinedAt: !11235)
!11314 = !DILocation(line: 0, scope: !11262, inlinedAt: !11235)
!11315 = !DILocation(line: 4081, column: 17, scope: !7047, inlinedAt: !11316)
!11316 = distinct !DILocation(line: 3130, column: 21, scope: !11317, inlinedAt: !11318)
!11317 = distinct !DISubprogram(name: "compare_exchange_weak", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE21compare_exchange_weak", scope: !450, file: !445, line: 3123, type: !30, scopeLine: 3123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11318 = distinct !DILocation(line: 242, column: 33, scope: !11319, inlinedAt: !11235)
!11319 = distinct !DILexicalBlock(scope: !11262, file: !5447, line: 231, column: 17)
!11320 = !DILocation(line: 0, scope: !7047, inlinedAt: !11316)
!11321 = !DILocation(line: 242, column: 17, scope: !11319, inlinedAt: !11235)
!11322 = !DILocation(line: 1077, column: 12, scope: !7078, inlinedAt: !11323)
!11323 = distinct !DILocation(line: 114, column: 36, scope: !10429, inlinedAt: !11324)
!11324 = distinct !DILocation(line: 255, column: 33, scope: !11319, inlinedAt: !11235)
!11325 = !DILocation(line: 3558, column: 28, scope: !3736, inlinedAt: !11326)
!11326 = distinct !DILocation(line: 115, column: 26, scope: !10433, inlinedAt: !11324)
!11327 = !DILocation(line: 1917, column: 50, scope: !10435, inlinedAt: !11328)
!11328 = distinct !DILocation(line: 781, column: 12, scope: !10437, inlinedAt: !11329)
!11329 = distinct !DILocation(line: 866, column: 14, scope: !10439, inlinedAt: !11330)
!11330 = distinct !DILocation(line: 115, column: 18, scope: !10441, inlinedAt: !11324)
!11331 = !DILocation(line: 781, column: 12, scope: !10437, inlinedAt: !11329)
!11332 = !DILocation(line: 25, column: 14, scope: !10445, inlinedAt: !11333)
!11333 = distinct !DILocation(line: 287, column: 13, scope: !10447, inlinedAt: !11334)
!11334 = distinct !DILocation(line: 116, column: 13, scope: !10442, inlinedAt: !11324)
!11335 = distinct !{!11335, !3753}
!11336 = !DILocation(line: 119, column: 23, scope: !10433, inlinedAt: !11324)
!11337 = !DILocation(line: 555, column: 18, scope: !10452, inlinedAt: !11338)
!11338 = distinct !DILocation(line: 119, column: 33, scope: !10433, inlinedAt: !11324)
!11339 = !DILocation(line: 384, column: 30, scope: !11340)
!11340 = distinct !DILexicalBlock(scope: !11226, file: !5447, line: 384, column: 39)
!11341 = !DILocation(line: 384, column: 20, scope: !11340)
!11342 = !DILocation(line: 250, column: 25, scope: !11319, inlinedAt: !11235)
!11343 = !DILocation(line: 251, column: 63, scope: !11319, inlinedAt: !11235)
!11344 = !DILocation(line: 2511, column: 13, scope: !11311, inlinedAt: !11345)
!11345 = distinct !DILocation(line: 251, column: 50, scope: !11319, inlinedAt: !11235)
!11346 = !DILocation(line: 251, column: 25, scope: !11319, inlinedAt: !11235)
!11347 = !DILocation(line: 3890, column: 24, scope: !8316, inlinedAt: !11348)
!11348 = distinct !DILocation(line: 2898, column: 26, scope: !11349, inlinedAt: !11350)
!11349 = distinct !DISubprogram(name: "store", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE5store", scope: !450, file: !445, line: 2896, type: !30, scopeLine: 2896, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11350 = distinct !DILocation(line: 299, column: 24, scope: !11351, inlinedAt: !11354)
!11351 = distinct !DILexicalBlock(scope: !11352, file: !5447, line: 298, column: 13)
!11352 = distinct !DILexicalBlock(scope: !11353, file: !5447, line: 296, column: 13)
!11353 = distinct !DISubprogram(name: "read<()>", linkageName: "_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChanneluE4readCskAlUH1kY1DR_10polars_ooc", scope: !5464, file: !5447, line: 288, type: !12, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11354 = distinct !DILocation(line: 380, column: 41, scope: !11226)
!11355 = !DILocation(line: 304, column: 9, scope: !11356, inlinedAt: !11354)
!11356 = distinct !DILexicalBlock(scope: !11353, file: !5447, line: 295, column: 9)
!11357 = !DILocation(line: 304, column: 22, scope: !11356, inlinedAt: !11354)
!11358 = !DILocation(line: 0, scope: !11359, inlinedAt: !11360)
!11359 = distinct !DISubprogram(name: "map_err<(), (), std::sync::mpsc::RecvTimeoutError, std::sync::mpmc::array::{impl#1}::recv::{closure_env#0}<()>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultuuE7map_errNtNtNtCsh8eZTKRCwoO_3std4sync4mpsc16RecvTimeoutErrorNCNvMs_NtNtBX_4mpmc5arrayINtB1Q_7ChanneluE4recv0ECskAlUH1kY1DR_10polars_ooc", scope: !1749, file: !1747, line: 962, type: !30, scopeLine: 962, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11360 = !DILocation(line: 381, column: 28, scope: !11361)
!11361 = distinct !DILexicalBlock(scope: !11226, file: !5447, line: 380, column: 17)
!11362 = !DILocation(line: 384, column: 25, scope: !11340)
!11363 = !DILocation(line: 385, column: 20, scope: !11340)
!11364 = !DILocation(line: 25, column: 38, scope: !11365, inlinedAt: !11366)
!11365 = distinct !DISubprogram(name: "partial_cmp", linkageName: "_RNvXs5_NtNtNtNtCsh8eZTKRCwoO_3std3sys3pal4unix4timeNtB5_8TimespecNtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp", scope: !3648, file: !3647, line: 25, type: !30, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11366 = !DILocation(line: 49, column: 38, scope: !11367, inlinedAt: !11368)
!11367 = distinct !DISubprogram(name: "partial_cmp", linkageName: "_RNvXsi_NtNtNtCsh8eZTKRCwoO_3std3sys4time4unixNtB5_7InstantNtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp", scope: !3655, file: !3654, line: 49, type: !30, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11368 = !DILocation(line: 154, column: 38, scope: !11369, inlinedAt: !11370)
!11369 = distinct !DISubprogram(name: "partial_cmp", linkageName: "_RNvXsm_NtCsh8eZTKRCwoO_3std4timeNtB5_7InstantNtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp", scope: !3661, file: !3660, line: 154, type: !30, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11370 = !DILocation(line: 1466, column: 14, scope: !11371, inlinedAt: !11363)
!11371 = distinct !DISubprogram(name: "ge<std::time::Instant, std::time::Instant>", linkageName: "_RNvYNtNtCsh8eZTKRCwoO_3std4time7InstantNtNtCscgRAwXFJnXP_4core3cmp10PartialOrd2geCskAlUH1kY1DR_10polars_ooc", scope: !3666, file: !3665, line: 1465, type: !30, scopeLine: 1465, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11372 = !DILocation(line: 46, column: 13, scope: !11373, inlinedAt: !11374)
!11373 = distinct !DISubprogram(name: "with<std::sync::mpmc::array::{impl#1}::recv::{closure_env#1}<()>, ()>", linkageName: "_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChanneluE4recvs_0uECskAlUH1kY1DR_10polars_ooc", scope: !3635, file: !2992, line: 37, type: !30, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11374 = distinct !DILocation(line: 390, column: 13, scope: !11226)
!11375 = !{!11376}
!11376 = distinct !{!11376, !11377, !"_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChanneluE4recvs_0uECskAlUH1kY1DR_10polars_ooc: argument 0"}
!11377 = distinct !{!11377, !"_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChanneluE4recvs_0uECskAlUH1kY1DR_10polars_ooc"}
!11378 = !DILocation(line: 46, column: 21, scope: !11373, inlinedAt: !11374)
!11379 = !DILocation(line: 555, column: 18, scope: !8213, inlinedAt: !11380)
!11380 = distinct !DILocation(line: 59, column: 42, scope: !8215, inlinedAt: !11381)
!11381 = distinct !DILocation(line: 97, column: 49, scope: !8202, inlinedAt: !11382)
!11382 = distinct !DILocation(line: 250, column: 5, scope: !8206, inlinedAt: !11383)
!11383 = distinct !DILocation(line: 461, column: 37, scope: !11384, inlinedAt: !11385)
!11384 = distinct !DISubprogram(name: "try_with<core::cell::Cell<core::option::Option<std::sync::mpmc::context::Context>>, std::sync::mpmc::context::{impl#0}::with::{closure_env#1}<std::sync::mpmc::array::{impl#1}::recv::{closure_env#1}<()>, ()>, ()>", linkageName: "_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChanneluE4recvs_0uEs_0uECskAlUH1kY1DR_10polars_ooc", scope: !7228, file: !7227, line: 457, type: !12, scopeLine: 457, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11385 = distinct !DILocation(line: 53, column: 14, scope: !11386, inlinedAt: !11374)
!11386 = distinct !DILexicalBlock(scope: !11387, file: !2992, line: 47, column: 9)
!11387 = distinct !DILexicalBlock(scope: !11373, file: !2992, line: 46, column: 9)
!11388 = !{!11389, !11391, !11393, !11376}
!11389 = distinct !{!11389, !11390, !"_RINvMs0_NtNtNtNtCsh8eZTKRCwoO_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscgRAwXFJnXP_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE11get_or_initNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECskAlUH1kY1DR_10polars_ooc: argument 0"}
!11390 = distinct !{!11390, !"_RINvMs0_NtNtNtNtCsh8eZTKRCwoO_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscgRAwXFJnXP_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE11get_or_initNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECskAlUH1kY1DR_10polars_ooc"}
!11391 = distinct !{!11391, !11392, !"_RNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB8_7Context4with7CONTEXT00CskAlUH1kY1DR_10polars_ooc: argument 0"}
!11392 = distinct !{!11392, !"_RNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB8_7Context4with7CONTEXT00CskAlUH1kY1DR_10polars_ooc"}
!11393 = distinct !{!11393, !11394, !"_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCskAlUH1kY1DR_10polars_ooc: argument 0"}
!11394 = distinct !{!11394, !"_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCskAlUH1kY1DR_10polars_ooc"}
!11395 = !DILocation(line: 59, column: 16, scope: !8215, inlinedAt: !11381)
!11396 = !DILocation(line: 62, column: 27, scope: !8216, inlinedAt: !11381)
!11397 = !DILocation(line: 269, column: 12, scope: !11398, inlinedAt: !11399)
!11398 = distinct !DISubprogram(name: "as_ref<core::cell::Cell<core::option::Option<std::sync::mpmc::context::Context>>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPINtNtB6_4cell4CellINtNtB6_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEE6as_refCskAlUH1kY1DR_10polars_ooc", scope: !101, file: !100, line: 266, type: !30, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11399 = distinct !DILocation(line: 461, column: 56, scope: !11384, inlinedAt: !11385)
!11400 = !DILocation(line: 929, column: 22, scope: !11401, inlinedAt: !11402)
!11401 = distinct !DISubprogram(name: "replace<core::option::Option<std::sync::mpmc::context::Context>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem7replaceINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECskAlUH1kY1DR_10polars_ooc", scope: !148, file: !723, line: 915, type: !30, scopeLine: 915, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11402 = distinct !DILocation(line: 513, column: 9, scope: !11403, inlinedAt: !11404)
!11403 = distinct !DISubprogram(name: "replace<core::option::Option<std::sync::mpmc::context::Context>>", linkageName: "_RNvMs7_NtCscgRAwXFJnXP_4core4cellINtB5_4CellINtNtB7_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEE7replaceCskAlUH1kY1DR_10polars_ooc", scope: !7237, file: !3595, line: 510, type: !30, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11404 = distinct !DILocation(line: 675, column: 14, scope: !11405, inlinedAt: !11406)
!11405 = distinct !DISubprogram(name: "take<core::option::Option<std::sync::mpmc::context::Context>>", linkageName: "_RNvMsa_NtCscgRAwXFJnXP_4core4cellINtB5_4CellINtNtB7_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEE4takeCskAlUH1kY1DR_10polars_ooc", scope: !7237, file: !3595, line: 671, type: !30, scopeLine: 671, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11406 = distinct !DILocation(line: 53, column: 41, scope: !11407, inlinedAt: !11408)
!11407 = distinct !DISubprogram(name: "{closure#1}<std::sync::mpmc::array::{impl#1}::recv::{closure_env#1}<()>, ()>", linkageName: "_RNCINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChanneluE4recvs_0uEs_0CskAlUH1kY1DR_10polars_ooc", scope: !2993, file: !2992, line: 53, type: !12, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11408 = distinct !DILocation(line: 462, column: 12, scope: !11409, inlinedAt: !11385)
!11409 = distinct !DILexicalBlock(scope: !11384, file: !7227, line: 461, column: 9)
!11410 = !DILocation(line: 930, column: 49, scope: !11411, inlinedAt: !11402)
!11411 = distinct !DILexicalBlock(scope: !11401, file: !723, line: 929, column: 9)
!11412 = !DILocation(line: 53, column: 36, scope: !11407, inlinedAt: !11408)
!11413 = !DILocation(line: 53, column: 30, scope: !11407, inlinedAt: !11408)
!11414 = !DILocation(line: 54, column: 28, scope: !11407, inlinedAt: !11408)
!11415 = !DILocation(line: 54, column: 25, scope: !11407, inlinedAt: !11408)
!11416 = !DILocation(line: 1015, column: 18, scope: !11417, inlinedAt: !11418)
!11417 = distinct !DISubprogram(name: "unwrap<std::sync::mpmc::array::{impl#1}::recv::{closure_env#1}<()>>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionNCNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtBO_7ChanneluE4recvs_0E6unwrapCskAlUH1kY1DR_10polars_ooc", scope: !9, file: !8, line: 1013, type: !30, scopeLine: 1013, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11418 = distinct !DILocation(line: 48, column: 30, scope: !11419, inlinedAt: !11420)
!11419 = distinct !DISubprogram(name: "{closure#0}<std::sync::mpmc::array::{impl#1}::recv::{closure_env#1}<()>, ()>", linkageName: "_RNCINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChanneluE4recvs_0uE0CskAlUH1kY1DR_10polars_ooc", scope: !2993, file: !2992, line: 47, type: !30, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11420 = distinct !DILocation(line: 54, column: 25, scope: !11407, inlinedAt: !11408)
!11421 = !DILocation(line: 49, column: 13, scope: !11422, inlinedAt: !11420)
!11422 = distinct !DILexicalBlock(scope: !11419, file: !2992, line: 48, column: 13)
!11423 = !DILocation(line: 3956, column: 24, scope: !3016, inlinedAt: !11424)
!11424 = distinct !DILocation(line: 3193, column: 26, scope: !3018, inlinedAt: !11425)
!11425 = distinct !DILocation(line: 2814, column: 32, scope: !3020, inlinedAt: !11426)
!11426 = distinct !DILocation(line: 810, column: 1, scope: !3022, inlinedAt: !11427)
!11427 = distinct !DILocation(line: 810, column: 1, scope: !3024, inlinedAt: !11428)
!11428 = distinct !DILocation(line: 54, column: 42, scope: !11407, inlinedAt: !11408)
!11429 = !{!11430, !11432, !11434, !11376}
!11430 = distinct !{!11430, !11431, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc: argument 0"}
!11431 = distinct !{!11431, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc"}
!11432 = distinct !{!11432, !11433, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECskAlUH1kY1DR_10polars_ooc: argument 0"}
!11433 = distinct !{!11433, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECskAlUH1kY1DR_10polars_ooc"}
!11434 = distinct !{!11434, !11435, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc: argument 0"}
!11435 = distinct !{!11435, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc"}
!11436 = !DILocation(line: 2814, column: 12, scope: !3020, inlinedAt: !11426)
!11437 = !DILocation(line: 4387, column: 24, scope: !609, inlinedAt: !11438)
!11438 = distinct !DILocation(line: 64, column: 9, scope: !3020, inlinedAt: !11426)
!11439 = !DILocation(line: 2857, column: 18, scope: !3020, inlinedAt: !11426)
!11440 = !DILocation(line: 3956, column: 24, scope: !3016, inlinedAt: !11441)
!11441 = distinct !DILocation(line: 3193, column: 26, scope: !3018, inlinedAt: !11442)
!11442 = distinct !DILocation(line: 2814, column: 32, scope: !3020, inlinedAt: !11443)
!11443 = distinct !DILocation(line: 810, column: 1, scope: !3022, inlinedAt: !11444)
!11444 = distinct !DILocation(line: 810, column: 1, scope: !3024, inlinedAt: !11445)
!11445 = distinct !DILocation(line: 54, column: 42, scope: !11407, inlinedAt: !11408)
!11446 = !{!11447, !11449, !11451, !11376}
!11447 = distinct !{!11447, !11448, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc: argument 0"}
!11448 = distinct !{!11448, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc"}
!11449 = distinct !{!11449, !11450, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECskAlUH1kY1DR_10polars_ooc: argument 0"}
!11450 = distinct !{!11450, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECskAlUH1kY1DR_10polars_ooc"}
!11451 = distinct !{!11451, !11452, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc: argument 0"}
!11452 = distinct !{!11452, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc"}
!11453 = !DILocation(line: 2814, column: 12, scope: !3020, inlinedAt: !11443)
!11454 = !DILocation(line: 4387, column: 24, scope: !609, inlinedAt: !11455)
!11455 = distinct !DILocation(line: 64, column: 9, scope: !3020, inlinedAt: !11443)
!11456 = !DILocation(line: 2857, column: 18, scope: !3020, inlinedAt: !11443)
!11457 = !DILocation(line: 54, column: 42, scope: !11407, inlinedAt: !11408)
!11458 = !DILocation(line: 53, column: 23, scope: !11407, inlinedAt: !11408)
!11459 = !DILocation(line: 55, column: 22, scope: !11407, inlinedAt: !11408)
!11460 = !DILocation(line: 2447, column: 9, scope: !11461, inlinedAt: !11462)
!11461 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<usize>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8jEE3getCskAlUH1kY1DR_10polars_ooc", scope: !3596, file: !3595, line: 2443, type: !30, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11462 = distinct !DILocation(line: 3615, column: 24, scope: !11463, inlinedAt: !11464)
!11463 = distinct !DISubprogram(name: "as_ptr", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE6as_ptr", scope: !450, file: !445, line: 3614, type: !30, scopeLine: 3614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11464 = distinct !DILocation(line: 2898, column: 44, scope: !11465, inlinedAt: !11466)
!11465 = distinct !DISubprogram(name: "store", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE5store", scope: !450, file: !445, line: 2896, type: !30, scopeLine: 2896, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11466 = distinct !DILocation(line: 81, column: 27, scope: !11467, inlinedAt: !11468)
!11467 = distinct !DISubprogram(name: "reset", linkageName: "_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB2_7Context5reset", scope: !3635, file: !2992, line: 80, type: !30, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11468 = distinct !DILocation(line: 56, column: 24, scope: !11469, inlinedAt: !11408)
!11469 = distinct !DILexicalBlock(scope: !11407, file: !2992, line: 55, column: 17)
!11470 = !DILocation(line: 3890, column: 24, scope: !8316, inlinedAt: !11471)
!11471 = distinct !DILocation(line: 2898, column: 26, scope: !11465, inlinedAt: !11466)
!11472 = !DILocation(line: 2447, column: 9, scope: !11473, inlinedAt: !11474)
!11473 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<*mut ()>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8OuEE3getCskAlUH1kY1DR_10polars_ooc", scope: !3596, file: !3595, line: 2443, type: !30, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11474 = distinct !DILocation(line: 2500, column: 16, scope: !11475, inlinedAt: !11476)
!11475 = distinct !DISubprogram(name: "as_ptr<()>", linkageName: "_RNvMs3_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicOuE6as_ptrCskAlUH1kY1DR_10polars_ooc", scope: !450, file: !445, line: 2499, type: !30, scopeLine: 2499, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11476 = distinct !DILocation(line: 1763, column: 31, scope: !11477, inlinedAt: !11478)
!11477 = distinct !DISubprogram(name: "store<()>", linkageName: "_RNvMs3_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicOuE5storeCskAlUH1kY1DR_10polars_ooc", scope: !450, file: !445, line: 1760, type: !30, scopeLine: 1760, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11478 = distinct !DILocation(line: 82, column: 27, scope: !11467, inlinedAt: !11468)
!11479 = !DILocation(line: 3890, column: 24, scope: !6636, inlinedAt: !11480)
!11480 = distinct !DILocation(line: 1763, column: 13, scope: !11477, inlinedAt: !11478)
!11481 = !DILocation(line: 57, column: 31, scope: !11469, inlinedAt: !11408)
!11482 = !DILocation(line: 1015, column: 18, scope: !11417, inlinedAt: !11483)
!11483 = distinct !DILocation(line: 48, column: 30, scope: !11484, inlinedAt: !11485)
!11484 = !DILexicalBlockFile(scope: !11419, file: !2992, discriminator: 2)
!11485 = distinct !DILocation(line: 57, column: 31, scope: !11469, inlinedAt: !11408)
!11486 = !DILocation(line: 49, column: 13, scope: !11487, inlinedAt: !11485)
!11487 = distinct !DILexicalBlock(scope: !11419, file: !2992, line: 48, column: 13)
!11488 = !DILocation(line: 437, column: 9, scope: !11489, inlinedAt: !11490)
!11489 = distinct !DISubprogram(name: "set<core::option::Option<std::sync::mpmc::context::Context>>", linkageName: "_RNvMs7_NtCscgRAwXFJnXP_4core4cellINtB5_4CellINtNtB7_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEE3setCskAlUH1kY1DR_10polars_ooc", scope: !7237, file: !3595, line: 433, type: !30, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11490 = distinct !DILocation(line: 58, column: 26, scope: !11491, inlinedAt: !11408)
!11491 = distinct !DILexicalBlock(scope: !11469, file: !2992, line: 57, column: 21)
!11492 = !DILocation(line: 929, column: 22, scope: !11401, inlinedAt: !11493)
!11493 = distinct !DILocation(line: 513, column: 9, scope: !11494, inlinedAt: !11495)
!11494 = !DILexicalBlockFile(scope: !11403, file: !3595, discriminator: 2)
!11495 = distinct !DILocation(line: 437, column: 14, scope: !11489, inlinedAt: !11490)
!11496 = !DILocation(line: 930, column: 49, scope: !11497, inlinedAt: !11493)
!11497 = distinct !DILexicalBlock(scope: !11401, file: !723, line: 929, column: 9)
!11498 = !DILocation(line: 810, column: 1, scope: !8351, inlinedAt: !11499)
!11499 = distinct !DILocation(line: 437, column: 26, scope: !11489, inlinedAt: !11490)
!11500 = !DILocation(line: 3956, column: 24, scope: !3016, inlinedAt: !11501)
!11501 = distinct !DILocation(line: 3193, column: 26, scope: !3018, inlinedAt: !11502)
!11502 = distinct !DILocation(line: 2814, column: 32, scope: !3020, inlinedAt: !11503)
!11503 = distinct !DILocation(line: 810, column: 1, scope: !3022, inlinedAt: !11504)
!11504 = distinct !DILocation(line: 810, column: 1, scope: !3024, inlinedAt: !11505)
!11505 = distinct !DILocation(line: 810, column: 1, scope: !8351, inlinedAt: !11499)
!11506 = !{!11507, !11509, !11511, !11513, !11376}
!11507 = distinct !{!11507, !11508, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc: argument 0"}
!11508 = distinct !{!11508, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc"}
!11509 = distinct !{!11509, !11510, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECskAlUH1kY1DR_10polars_ooc: argument 0"}
!11510 = distinct !{!11510, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECskAlUH1kY1DR_10polars_ooc"}
!11511 = distinct !{!11511, !11512, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc: argument 0"}
!11512 = distinct !{!11512, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc"}
!11513 = distinct !{!11513, !11514, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECskAlUH1kY1DR_10polars_ooc: argument 0"}
!11514 = distinct !{!11514, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECskAlUH1kY1DR_10polars_ooc"}
!11515 = !DILocation(line: 2814, column: 12, scope: !3020, inlinedAt: !11503)
!11516 = !DILocation(line: 4387, column: 24, scope: !609, inlinedAt: !11517)
!11517 = distinct !DILocation(line: 64, column: 9, scope: !3020, inlinedAt: !11503)
!11518 = !DILocation(line: 2857, column: 18, scope: !3020, inlinedAt: !11503)
!11519 = !DILocation(line: 437, column: 26, scope: !11489, inlinedAt: !11490)
!11520 = !DILocation(line: 60, column: 17, scope: !11407, inlinedAt: !11408)
!11521 = !DILocation(line: 61, column: 13, scope: !11407, inlinedAt: !11408)
!11522 = !DILocation(line: 3956, column: 24, scope: !3016, inlinedAt: !11523)
!11523 = distinct !DILocation(line: 3193, column: 26, scope: !3018, inlinedAt: !11524)
!11524 = distinct !DILocation(line: 2814, column: 32, scope: !3020, inlinedAt: !11525)
!11525 = distinct !DILocation(line: 810, column: 1, scope: !3022, inlinedAt: !11526)
!11526 = distinct !DILocation(line: 810, column: 1, scope: !3024, inlinedAt: !11527)
!11527 = distinct !DILocation(line: 60, column: 17, scope: !11407, inlinedAt: !11408)
!11528 = !{!11529, !11531, !11533, !11376}
!11529 = distinct !{!11529, !11530, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc: argument 0"}
!11530 = distinct !{!11530, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc"}
!11531 = distinct !{!11531, !11532, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECskAlUH1kY1DR_10polars_ooc: argument 0"}
!11532 = distinct !{!11532, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECskAlUH1kY1DR_10polars_ooc"}
!11533 = distinct !{!11533, !11534, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc: argument 0"}
!11534 = distinct !{!11534, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc"}
!11535 = !DILocation(line: 2814, column: 12, scope: !3020, inlinedAt: !11525)
!11536 = !DILocation(line: 4387, column: 24, scope: !609, inlinedAt: !11537)
!11537 = distinct !DILocation(line: 64, column: 9, scope: !3020, inlinedAt: !11525)
!11538 = !DILocation(line: 2857, column: 18, scope: !3020, inlinedAt: !11525)
!11539 = !DILocation(line: 1622, column: 23, scope: !11540, inlinedAt: !11542)
!11540 = distinct !DILexicalBlock(scope: !11541, file: !1747, line: 1622, column: 13)
!11541 = distinct !DISubprogram(name: "unwrap_or_else<(), std::thread::local::AccessError, std::sync::mpmc::context::{impl#0}::with::{closure_env#2}<std::sync::mpmc::array::{impl#1}::recv::{closure_env#1}<()>, ()>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultuNtNtNtCsh8eZTKRCwoO_3std6thread5local11AccessErrorE14unwrap_or_elseNCINvMNtNtNtBP_4sync4mpmc7contextNtB1U_7Context4withNCNvMs_NtB1W_5arrayINtB2L_7ChanneluE4recvs_0uEs0_0ECskAlUH1kY1DR_10polars_ooc", scope: !1749, file: !1747, line: 1616, type: !30, scopeLine: 1616, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11542 = distinct !DILocation(line: 62, column: 14, scope: !11386, inlinedAt: !11374)
!11543 = !DILocation(line: 63, column: 5, scope: !11373, inlinedAt: !11374)
!11544 = !DILocation(line: 49, column: 26, scope: !11545, inlinedAt: !11546)
!11545 = distinct !DISubprogram(name: "as_inner", linkageName: "_RNvMs6_NtNtCscgRAwXFJnXP_4core3num11niche_typesNtB5_11Nanoseconds8as_inner", scope: !10710, file: !10709, line: 46, type: !30, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11546 = !DILocation(line: 70, column: 32, scope: !11547, inlinedAt: !11548)
!11547 = distinct !DISubprogram(name: "cmp", linkageName: "_RNvXsa_NtNtCscgRAwXFJnXP_4core3num11niche_typesNtB5_11NanosecondsNtNtB9_3cmp3Ord3cmp", scope: !10714, file: !10709, line: 69, type: !30, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11548 = !DILocation(line: 77, column: 22, scope: !11549, inlinedAt: !11550)
!11549 = distinct !DISubprogram(name: "partial_cmp", linkageName: "_RNvXsb_NtNtCscgRAwXFJnXP_4core3num11niche_typesNtB5_11NanosecondsNtNtB9_3cmp10PartialOrd11partial_cmp", scope: !10717, file: !10709, line: 76, type: !30, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11550 = !DILocation(line: 25, column: 38, scope: !11551, inlinedAt: !11366)
!11551 = !DILexicalBlockFile(scope: !11365, file: !3647, discriminator: 2)
!11552 = !DILocation(line: 539, column: 9, scope: !11553, inlinedAt: !11554)
!11553 = distinct !DISubprogram(name: "is_ge", linkageName: "_RNvMNtCscgRAwXFJnXP_4core3cmpNtB2_8Ordering5is_ge", scope: !3672, file: !3665, line: 538, type: !30, scopeLine: 538, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11554 = !DILocation(line: 250, column: 5, scope: !11555, inlinedAt: !11556)
!11555 = distinct !DISubprogram(name: "call_once<fn(core::cmp::Ordering) -> bool, (core::cmp::Ordering)>", linkageName: "_RNvYNvMNtCscgRAwXFJnXP_4core3cmpNtB5_8Ordering5is_geINtNtNtB7_3ops8function6FnOnceTBu_EE9call_onceCskAlUH1kY1DR_10polars_ooc", scope: !27, file: !26, line: 250, type: !30, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11556 = !DILocation(line: 664, column: 24, scope: !11557, inlinedAt: !11559)
!11557 = distinct !DILexicalBlock(scope: !11558, file: !8, line: 664, column: 13)
!11558 = distinct !DISubprogram(name: "is_some_and<core::cmp::Ordering, fn(core::cmp::Ordering) -> bool>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionNtNtB5_3cmp8OrderingE11is_some_andNvMBK_BI_5is_geECskAlUH1kY1DR_10polars_ooc", scope: !9, file: !8, line: 661, type: !30, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11559 = !DILocation(line: 1466, column: 33, scope: !11371, inlinedAt: !11363)
!11560 = !DILocation(line: 0, scope: !11226)
!11561 = !DILocation(line: 415, column: 5, scope: !11221)
!11562 = !DILocation(line: 415, column: 6, scope: !11221)
!11563 = distinct !DISubprogram(name: "send<()>", linkageName: "_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChanneluE4sendCskAlUH1kY1DR_10polars_ooc", scope: !5464, file: !5447, line: 319, type: !30, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11564 = !DILocation(line: 324, column: 26, scope: !11563)
!11565 = !DILocation(line: 5, column: 17, scope: !11566, inlinedAt: !11564)
!11566 = distinct !DISubprogram(name: "default", linkageName: "_RNvXs2_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc6selectNtB5_5TokenNtNtCscgRAwXFJnXP_4core7default7Default7default", scope: !7885, file: !3483, line: 5, type: !30, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11567 = !DILocation(line: 3904, column: 24, scope: !444, inlinedAt: !11568)
!11568 = distinct !DILocation(line: 2870, column: 26, scope: !11569, inlinedAt: !11570)
!11569 = distinct !DISubprogram(name: "load", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE4load", scope: !450, file: !445, line: 2868, type: !30, scopeLine: 2868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11570 = distinct !DILocation(line: 126, column: 34, scope: !11571, inlinedAt: !11573)
!11571 = distinct !DILexicalBlock(scope: !11572, file: !5447, line: 125, column: 9)
!11572 = distinct !DISubprogram(name: "start_send<()>", linkageName: "_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChanneluE10start_sendCskAlUH1kY1DR_10polars_ooc", scope: !5464, file: !5447, line: 124, type: !30, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11573 = distinct !DILocation(line: 327, column: 21, scope: !11574)
!11574 = distinct !DILexicalBlock(scope: !11563, file: !5447, line: 324, column: 9)
!11575 = !{!11576}
!11576 = distinct !{!11576, !11577, !"_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChanneluE10start_sendCskAlUH1kY1DR_10polars_ooc: argument 0:pre.rot"}
!11577 = distinct !{!11577, !"_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChanneluE10start_sendCskAlUH1kY1DR_10polars_ooc"}
!11578 = !DILocation(line: 130, column: 23, scope: !11579, inlinedAt: !11573)
!11579 = distinct !DILexicalBlock(scope: !11571, file: !5447, line: 126, column: 9)
!11580 = !DILocation(line: 130, column: 16, scope: !11579, inlinedAt: !11573)
!11581 = !{!11582}
!11582 = distinct !{!11582, !11577, !"_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChanneluE10start_sendCskAlUH1kY1DR_10polars_ooc: argument 0"}
!11583 = !DILocation(line: 327, column: 21, scope: !11574)
!11584 = !DILocation(line: 137, column: 32, scope: !11579, inlinedAt: !11573)
!11585 = !DILocation(line: 137, column: 25, scope: !11579, inlinedAt: !11573)
!11586 = !DILocation(line: 138, column: 32, scope: !11587, inlinedAt: !11573)
!11587 = distinct !DILexicalBlock(scope: !11579, file: !5447, line: 137, column: 13)
!11588 = !DILocation(line: 138, column: 30, scope: !11587, inlinedAt: !11573)
!11589 = !DILocation(line: 138, column: 23, scope: !11587, inlinedAt: !11573)
!11590 = !DILocation(line: 142, column: 33, scope: !11591, inlinedAt: !11573)
!11591 = distinct !DILexicalBlock(scope: !11587, file: !5447, line: 138, column: 13)
!11592 = !DILocation(line: 252, column: 39, scope: !11593, inlinedAt: !11594)
!11593 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::array::Slot<()>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5array4SlotuEE13get_uncheckedCskAlUH1kY1DR_10polars_ooc", scope: !1708, file: !1707, line: 239, type: !30, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11594 = distinct !DILocation(line: 646, column: 26, scope: !11595, inlinedAt: !11596)
!11595 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::array::Slot<()>, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5array4SlotuE13get_uncheckedjECskAlUH1kY1DR_10polars_ooc", scope: !2193, file: !2192, line: 639, type: !30, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11596 = distinct !DILocation(line: 142, column: 45, scope: !11591, inlinedAt: !11573)
!11597 = !DILocation(line: 252, column: 13, scope: !11593, inlinedAt: !11594)
!11598 = !DILocation(line: 253, column: 13, scope: !11593, inlinedAt: !11594)
!11599 = !DILocation(line: 3905, column: 24, scope: !444, inlinedAt: !11600)
!11600 = distinct !DILocation(line: 2870, column: 26, scope: !11569, inlinedAt: !11601)
!11601 = distinct !DILocation(line: 143, column: 36, scope: !11602, inlinedAt: !11573)
!11602 = distinct !DILexicalBlock(scope: !11591, file: !5447, line: 142, column: 13)
!11603 = !DILocation(line: 146, column: 16, scope: !11604, inlinedAt: !11573)
!11604 = distinct !DILexicalBlock(scope: !11602, file: !5447, line: 143, column: 13)
!11605 = !DILocation(line: 175, column: 42, scope: !11604, inlinedAt: !11573)
!11606 = !DILocation(line: 2511, column: 13, scope: !11607, inlinedAt: !11608)
!11607 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj12wrapping_add", scope: !5607, file: !3737, line: 2510, type: !30, scopeLine: 2510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11608 = distinct !DILocation(line: 175, column: 29, scope: !11604, inlinedAt: !11573)
!11609 = !DILocation(line: 175, column: 59, scope: !11604, inlinedAt: !11573)
!11610 = !DILocation(line: 175, column: 23, scope: !11604, inlinedAt: !11573)
!11611 = !DILocation(line: 147, column: 35, scope: !11604, inlinedAt: !11573)
!11612 = !DILocation(line: 147, column: 47, scope: !11604, inlinedAt: !11573)
!11613 = !DILocation(line: 127, column: 12, scope: !3713, inlinedAt: !11614)
!11614 = distinct !DILocation(line: 189, column: 25, scope: !11604, inlinedAt: !11573)
!11615 = !DILocation(line: 132, column: 13, scope: !3713, inlinedAt: !11614)
!11616 = !DILocation(line: 1917, column: 50, scope: !3720, inlinedAt: !11617)
!11617 = distinct !DILocation(line: 781, column: 12, scope: !3724, inlinedAt: !11618)
!11618 = distinct !DILocation(line: 866, column: 14, scope: !3729, inlinedAt: !11619)
!11619 = distinct !DILocation(line: 128, column: 22, scope: !3732, inlinedAt: !11614)
!11620 = !DILocation(line: 781, column: 12, scope: !3724, inlinedAt: !11618)
!11621 = !DILocation(line: 3558, column: 28, scope: !3736, inlinedAt: !11622)
!11622 = distinct !DILocation(line: 128, column: 41, scope: !3713, inlinedAt: !11614)
!11623 = !DILocation(line: 25, column: 14, scope: !3744, inlinedAt: !11624)
!11624 = distinct !DILocation(line: 287, column: 13, scope: !3750, inlinedAt: !11625)
!11625 = distinct !DILocation(line: 129, column: 17, scope: !3733, inlinedAt: !11614)
!11626 = distinct !{!11626, !3753}
!11627 = !DILocation(line: 135, column: 23, scope: !3713, inlinedAt: !11614)
!11628 = !DILocation(line: 175, column: 20, scope: !11604, inlinedAt: !11573)
!11629 = !DILocation(line: 4390, column: 23, scope: !609, inlinedAt: !11630)
!11630 = distinct !DILocation(line: 176, column: 17, scope: !11604, inlinedAt: !11573)
!11631 = !DILocation(line: 3904, column: 24, scope: !444, inlinedAt: !11632)
!11632 = distinct !DILocation(line: 2870, column: 26, scope: !11569, inlinedAt: !11633)
!11633 = distinct !DILocation(line: 177, column: 38, scope: !11604, inlinedAt: !11573)
!11634 = !DILocation(line: 180, column: 38, scope: !11635, inlinedAt: !11573)
!11635 = distinct !DILexicalBlock(scope: !11604, file: !5447, line: 177, column: 17)
!11636 = !DILocation(line: 2511, column: 13, scope: !11607, inlinedAt: !11637)
!11637 = distinct !DILocation(line: 180, column: 25, scope: !11635, inlinedAt: !11573)
!11638 = !DILocation(line: 180, column: 20, scope: !11635, inlinedAt: !11573)
!11639 = !DILocation(line: 1077, column: 12, scope: !7078, inlinedAt: !11640)
!11640 = distinct !DILocation(line: 114, column: 36, scope: !10429, inlinedAt: !11641)
!11641 = distinct !DILocation(line: 185, column: 25, scope: !11635, inlinedAt: !11573)
!11642 = !DILocation(line: 3558, column: 28, scope: !3736, inlinedAt: !11643)
!11643 = distinct !DILocation(line: 115, column: 26, scope: !10433, inlinedAt: !11641)
!11644 = !DILocation(line: 1917, column: 50, scope: !10435, inlinedAt: !11645)
!11645 = distinct !DILocation(line: 781, column: 12, scope: !10437, inlinedAt: !11646)
!11646 = distinct !DILocation(line: 866, column: 14, scope: !10439, inlinedAt: !11647)
!11647 = distinct !DILocation(line: 115, column: 18, scope: !10441, inlinedAt: !11641)
!11648 = !DILocation(line: 781, column: 12, scope: !10437, inlinedAt: !11646)
!11649 = !DILocation(line: 25, column: 14, scope: !10445, inlinedAt: !11650)
!11650 = distinct !DILocation(line: 287, column: 13, scope: !10447, inlinedAt: !11651)
!11651 = distinct !DILocation(line: 116, column: 13, scope: !10442, inlinedAt: !11641)
!11652 = distinct !{!11652, !3753}
!11653 = !DILocation(line: 119, column: 23, scope: !10433, inlinedAt: !11641)
!11654 = !DILocation(line: 555, column: 18, scope: !10452, inlinedAt: !11655)
!11655 = distinct !DILocation(line: 119, column: 33, scope: !10433, inlinedAt: !11641)
!11656 = !DILocation(line: 0, scope: !11604, inlinedAt: !11573)
!11657 = !DILocation(line: 3904, column: 24, scope: !444, inlinedAt: !11658)
!11658 = distinct !DILocation(line: 2870, column: 26, scope: !11569, inlinedAt: !11659)
!11659 = distinct !DILocation(line: 0, scope: !11604, inlinedAt: !11573)
!11660 = !DILocation(line: 154, column: 38, scope: !11604, inlinedAt: !11573)
!11661 = !DILocation(line: 2511, column: 13, scope: !11607, inlinedAt: !11662)
!11662 = distinct !DILocation(line: 154, column: 25, scope: !11604, inlinedAt: !11573)
!11663 = !DILocation(line: 147, column: 32, scope: !11604, inlinedAt: !11573)
!11664 = !DILocation(line: 150, column: 21, scope: !11604, inlinedAt: !11573)
!11665 = !DILocation(line: 4081, column: 17, scope: !7047, inlinedAt: !11666)
!11666 = distinct !DILocation(line: 3130, column: 21, scope: !11667, inlinedAt: !11668)
!11667 = distinct !DISubprogram(name: "compare_exchange_weak", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE21compare_exchange_weak", scope: !450, file: !445, line: 3123, type: !30, scopeLine: 3123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11668 = distinct !DILocation(line: 158, column: 33, scope: !11669, inlinedAt: !11573)
!11669 = distinct !DILexicalBlock(scope: !11604, file: !5447, line: 147, column: 17)
!11670 = !DILocation(line: 0, scope: !7047, inlinedAt: !11666)
!11671 = !DILocation(line: 158, column: 17, scope: !11669, inlinedAt: !11573)
!11672 = !DILocation(line: 1077, column: 12, scope: !7078, inlinedAt: !11673)
!11673 = distinct !DILocation(line: 114, column: 36, scope: !10429, inlinedAt: !11674)
!11674 = distinct !DILocation(line: 171, column: 33, scope: !11669, inlinedAt: !11573)
!11675 = !DILocation(line: 3558, column: 28, scope: !3736, inlinedAt: !11676)
!11676 = distinct !DILocation(line: 115, column: 26, scope: !10433, inlinedAt: !11674)
!11677 = !DILocation(line: 1917, column: 50, scope: !10435, inlinedAt: !11678)
!11678 = distinct !DILocation(line: 781, column: 12, scope: !10437, inlinedAt: !11679)
!11679 = distinct !DILocation(line: 866, column: 14, scope: !10439, inlinedAt: !11680)
!11680 = distinct !DILocation(line: 115, column: 18, scope: !10441, inlinedAt: !11674)
!11681 = !DILocation(line: 781, column: 12, scope: !10437, inlinedAt: !11679)
!11682 = !DILocation(line: 25, column: 14, scope: !10445, inlinedAt: !11683)
!11683 = distinct !DILocation(line: 287, column: 13, scope: !10447, inlinedAt: !11684)
!11684 = distinct !DILocation(line: 116, column: 13, scope: !10442, inlinedAt: !11674)
!11685 = distinct !{!11685, !3753}
!11686 = !DILocation(line: 119, column: 23, scope: !10433, inlinedAt: !11674)
!11687 = !DILocation(line: 555, column: 18, scope: !10452, inlinedAt: !11688)
!11688 = distinct !DILocation(line: 119, column: 33, scope: !10433, inlinedAt: !11674)
!11689 = !DILocation(line: 332, column: 30, scope: !11690)
!11690 = distinct !DILexicalBlock(scope: !11574, file: !5447, line: 332, column: 39)
!11691 = !DILocation(line: 332, column: 20, scope: !11690)
!11692 = !DILocation(line: 166, column: 25, scope: !11669, inlinedAt: !11573)
!11693 = !DILocation(line: 167, column: 25, scope: !11669, inlinedAt: !11573)
!11694 = !DILocation(line: 3890, column: 24, scope: !8316, inlinedAt: !11695)
!11695 = distinct !DILocation(line: 2898, column: 26, scope: !11696, inlinedAt: !11697)
!11696 = distinct !DISubprogram(name: "store", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE5store", scope: !450, file: !445, line: 2896, type: !30, scopeLine: 2896, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11697 = distinct !DILocation(line: 206, column: 24, scope: !11698, inlinedAt: !11700)
!11698 = distinct !DILexicalBlock(scope: !11699, file: !5447, line: 204, column: 13)
!11699 = distinct !DISubprogram(name: "write<()>", linkageName: "_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChanneluE5writeCskAlUH1kY1DR_10polars_ooc", scope: !5464, file: !5447, line: 196, type: !12, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11700 = distinct !DILocation(line: 328, column: 41, scope: !11574)
!11701 = !DILocation(line: 210, column: 9, scope: !11699, inlinedAt: !11700)
!11702 = !DILocation(line: 210, column: 24, scope: !11699, inlinedAt: !11700)
!11703 = !DILocation(line: 966, column: 9, scope: !11704, inlinedAt: !11705)
!11704 = distinct !DISubprogram(name: "map_err<(), (), std::sync::mpmc::error::SendTimeoutError<()>, fn(()) -> std::sync::mpmc::error::SendTimeoutError<()>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultuuE7map_errINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5error16SendTimeoutErroruENcNtBT_12Disconnected0ECskAlUH1kY1DR_10polars_ooc", scope: !1749, file: !1747, line: 962, type: !30, scopeLine: 962, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11705 = !DILocation(line: 329, column: 28, scope: !11706)
!11706 = distinct !DILexicalBlock(scope: !11574, file: !5447, line: 328, column: 17)
!11707 = !DILocation(line: 332, column: 25, scope: !11690)
!11708 = !DILocation(line: 333, column: 20, scope: !11690)
!11709 = !DILocation(line: 25, column: 38, scope: !11710, inlinedAt: !11711)
!11710 = distinct !DISubprogram(name: "partial_cmp", linkageName: "_RNvXs5_NtNtNtNtCsh8eZTKRCwoO_3std3sys3pal4unix4timeNtB5_8TimespecNtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp", scope: !3648, file: !3647, line: 25, type: !30, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11711 = !DILocation(line: 49, column: 38, scope: !11712, inlinedAt: !11713)
!11712 = distinct !DISubprogram(name: "partial_cmp", linkageName: "_RNvXsi_NtNtNtCsh8eZTKRCwoO_3std3sys4time4unixNtB5_7InstantNtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp", scope: !3655, file: !3654, line: 49, type: !30, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11713 = !DILocation(line: 154, column: 38, scope: !11714, inlinedAt: !11715)
!11714 = distinct !DISubprogram(name: "partial_cmp", linkageName: "_RNvXsm_NtCsh8eZTKRCwoO_3std4timeNtB5_7InstantNtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp", scope: !3661, file: !3660, line: 154, type: !30, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11715 = !DILocation(line: 1466, column: 14, scope: !11716, inlinedAt: !11708)
!11716 = distinct !DISubprogram(name: "ge<std::time::Instant, std::time::Instant>", linkageName: "_RNvYNtNtCsh8eZTKRCwoO_3std4time7InstantNtNtCscgRAwXFJnXP_4core3cmp10PartialOrd2geCskAlUH1kY1DR_10polars_ooc", scope: !3666, file: !3665, line: 1465, type: !30, scopeLine: 1465, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11717 = !DILocation(line: 46, column: 13, scope: !11718, inlinedAt: !11719)
!11718 = distinct !DISubprogram(name: "with<std::sync::mpmc::array::{impl#1}::send::{closure_env#0}<()>, ()>", linkageName: "_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChanneluE4send0uECskAlUH1kY1DR_10polars_ooc", scope: !3635, file: !2992, line: 37, type: !30, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11719 = distinct !DILocation(line: 338, column: 13, scope: !11574)
!11720 = !{!11721}
!11721 = distinct !{!11721, !11722, !"_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChanneluE4send0uECskAlUH1kY1DR_10polars_ooc: argument 0"}
!11722 = distinct !{!11722, !"_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChanneluE4send0uECskAlUH1kY1DR_10polars_ooc"}
!11723 = !DILocation(line: 46, column: 21, scope: !11718, inlinedAt: !11719)
!11724 = !DILocation(line: 555, column: 18, scope: !8213, inlinedAt: !11725)
!11725 = distinct !DILocation(line: 59, column: 42, scope: !8215, inlinedAt: !11726)
!11726 = distinct !DILocation(line: 97, column: 49, scope: !8202, inlinedAt: !11727)
!11727 = distinct !DILocation(line: 250, column: 5, scope: !8206, inlinedAt: !11728)
!11728 = distinct !DILocation(line: 461, column: 37, scope: !11729, inlinedAt: !11730)
!11729 = distinct !DISubprogram(name: "try_with<core::cell::Cell<core::option::Option<std::sync::mpmc::context::Context>>, std::sync::mpmc::context::{impl#0}::with::{closure_env#1}<std::sync::mpmc::array::{impl#1}::send::{closure_env#0}<()>, ()>, ()>", linkageName: "_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChanneluE4send0uEs_0uECskAlUH1kY1DR_10polars_ooc", scope: !7228, file: !7227, line: 457, type: !12, scopeLine: 457, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11730 = distinct !DILocation(line: 53, column: 14, scope: !11731, inlinedAt: !11719)
!11731 = distinct !DILexicalBlock(scope: !11732, file: !2992, line: 47, column: 9)
!11732 = distinct !DILexicalBlock(scope: !11718, file: !2992, line: 46, column: 9)
!11733 = !{!11734, !11736, !11738, !11721}
!11734 = distinct !{!11734, !11735, !"_RINvMs0_NtNtNtNtCsh8eZTKRCwoO_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscgRAwXFJnXP_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE11get_or_initNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECskAlUH1kY1DR_10polars_ooc: argument 0"}
!11735 = distinct !{!11735, !"_RINvMs0_NtNtNtNtCsh8eZTKRCwoO_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscgRAwXFJnXP_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE11get_or_initNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECskAlUH1kY1DR_10polars_ooc"}
!11736 = distinct !{!11736, !11737, !"_RNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB8_7Context4with7CONTEXT00CskAlUH1kY1DR_10polars_ooc: argument 0"}
!11737 = distinct !{!11737, !"_RNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB8_7Context4with7CONTEXT00CskAlUH1kY1DR_10polars_ooc"}
!11738 = distinct !{!11738, !11739, !"_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCskAlUH1kY1DR_10polars_ooc: argument 0"}
!11739 = distinct !{!11739, !"_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCskAlUH1kY1DR_10polars_ooc"}
!11740 = !DILocation(line: 59, column: 16, scope: !8215, inlinedAt: !11726)
!11741 = !DILocation(line: 62, column: 27, scope: !8216, inlinedAt: !11726)
!11742 = !DILocation(line: 269, column: 12, scope: !11743, inlinedAt: !11744)
!11743 = distinct !DISubprogram(name: "as_ref<core::cell::Cell<core::option::Option<std::sync::mpmc::context::Context>>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPINtNtB6_4cell4CellINtNtB6_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEE6as_refCskAlUH1kY1DR_10polars_ooc", scope: !101, file: !100, line: 266, type: !30, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11744 = distinct !DILocation(line: 461, column: 56, scope: !11729, inlinedAt: !11730)
!11745 = !DILocation(line: 929, column: 22, scope: !11746, inlinedAt: !11747)
!11746 = distinct !DISubprogram(name: "replace<core::option::Option<std::sync::mpmc::context::Context>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem7replaceINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECskAlUH1kY1DR_10polars_ooc", scope: !148, file: !723, line: 915, type: !30, scopeLine: 915, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11747 = distinct !DILocation(line: 513, column: 9, scope: !11748, inlinedAt: !11749)
!11748 = distinct !DISubprogram(name: "replace<core::option::Option<std::sync::mpmc::context::Context>>", linkageName: "_RNvMs7_NtCscgRAwXFJnXP_4core4cellINtB5_4CellINtNtB7_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEE7replaceCskAlUH1kY1DR_10polars_ooc", scope: !7237, file: !3595, line: 510, type: !30, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11749 = distinct !DILocation(line: 675, column: 14, scope: !11750, inlinedAt: !11751)
!11750 = distinct !DISubprogram(name: "take<core::option::Option<std::sync::mpmc::context::Context>>", linkageName: "_RNvMsa_NtCscgRAwXFJnXP_4core4cellINtB5_4CellINtNtB7_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEE4takeCskAlUH1kY1DR_10polars_ooc", scope: !7237, file: !3595, line: 671, type: !30, scopeLine: 671, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11751 = distinct !DILocation(line: 53, column: 41, scope: !11752, inlinedAt: !11753)
!11752 = distinct !DISubprogram(name: "{closure#1}<std::sync::mpmc::array::{impl#1}::send::{closure_env#0}<()>, ()>", linkageName: "_RNCINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChanneluE4send0uEs_0CskAlUH1kY1DR_10polars_ooc", scope: !2993, file: !2992, line: 53, type: !12, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11753 = distinct !DILocation(line: 462, column: 12, scope: !11754, inlinedAt: !11730)
!11754 = distinct !DILexicalBlock(scope: !11729, file: !7227, line: 461, column: 9)
!11755 = !DILocation(line: 930, column: 49, scope: !11756, inlinedAt: !11747)
!11756 = distinct !DILexicalBlock(scope: !11746, file: !723, line: 929, column: 9)
!11757 = !DILocation(line: 53, column: 36, scope: !11752, inlinedAt: !11753)
!11758 = !DILocation(line: 53, column: 30, scope: !11752, inlinedAt: !11753)
!11759 = !DILocation(line: 54, column: 28, scope: !11752, inlinedAt: !11753)
!11760 = !DILocation(line: 54, column: 25, scope: !11752, inlinedAt: !11753)
!11761 = !DILocation(line: 1015, column: 18, scope: !11762, inlinedAt: !11763)
!11762 = distinct !DISubprogram(name: "unwrap<std::sync::mpmc::array::{impl#1}::send::{closure_env#0}<()>>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionNCNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtBO_7ChanneluE4send0E6unwrapCskAlUH1kY1DR_10polars_ooc", scope: !9, file: !8, line: 1013, type: !30, scopeLine: 1013, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11763 = distinct !DILocation(line: 48, column: 30, scope: !11764, inlinedAt: !11765)
!11764 = distinct !DISubprogram(name: "{closure#0}<std::sync::mpmc::array::{impl#1}::send::{closure_env#0}<()>, ()>", linkageName: "_RNCINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChanneluE4send0uE0CskAlUH1kY1DR_10polars_ooc", scope: !2993, file: !2992, line: 47, type: !30, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11765 = distinct !DILocation(line: 54, column: 25, scope: !11752, inlinedAt: !11753)
!11766 = !DILocation(line: 49, column: 13, scope: !11767, inlinedAt: !11765)
!11767 = distinct !DILexicalBlock(scope: !11764, file: !2992, line: 48, column: 13)
!11768 = !DILocation(line: 3956, column: 24, scope: !3016, inlinedAt: !11769)
!11769 = distinct !DILocation(line: 3193, column: 26, scope: !3018, inlinedAt: !11770)
!11770 = distinct !DILocation(line: 2814, column: 32, scope: !3020, inlinedAt: !11771)
!11771 = distinct !DILocation(line: 810, column: 1, scope: !3022, inlinedAt: !11772)
!11772 = distinct !DILocation(line: 810, column: 1, scope: !3024, inlinedAt: !11773)
!11773 = distinct !DILocation(line: 54, column: 42, scope: !11752, inlinedAt: !11753)
!11774 = !{!11775, !11777, !11779, !11721}
!11775 = distinct !{!11775, !11776, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc: argument 0"}
!11776 = distinct !{!11776, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc"}
!11777 = distinct !{!11777, !11778, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECskAlUH1kY1DR_10polars_ooc: argument 0"}
!11778 = distinct !{!11778, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECskAlUH1kY1DR_10polars_ooc"}
!11779 = distinct !{!11779, !11780, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc: argument 0"}
!11780 = distinct !{!11780, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc"}
!11781 = !DILocation(line: 2814, column: 12, scope: !3020, inlinedAt: !11771)
!11782 = !DILocation(line: 4387, column: 24, scope: !609, inlinedAt: !11783)
!11783 = distinct !DILocation(line: 64, column: 9, scope: !3020, inlinedAt: !11771)
!11784 = !DILocation(line: 2857, column: 18, scope: !3020, inlinedAt: !11771)
!11785 = !DILocation(line: 3956, column: 24, scope: !3016, inlinedAt: !11786)
!11786 = distinct !DILocation(line: 3193, column: 26, scope: !3018, inlinedAt: !11787)
!11787 = distinct !DILocation(line: 2814, column: 32, scope: !3020, inlinedAt: !11788)
!11788 = distinct !DILocation(line: 810, column: 1, scope: !3022, inlinedAt: !11789)
!11789 = distinct !DILocation(line: 810, column: 1, scope: !3024, inlinedAt: !11790)
!11790 = distinct !DILocation(line: 54, column: 42, scope: !11752, inlinedAt: !11753)
!11791 = !{!11792, !11794, !11796, !11721}
!11792 = distinct !{!11792, !11793, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc: argument 0"}
!11793 = distinct !{!11793, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc"}
!11794 = distinct !{!11794, !11795, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECskAlUH1kY1DR_10polars_ooc: argument 0"}
!11795 = distinct !{!11795, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECskAlUH1kY1DR_10polars_ooc"}
!11796 = distinct !{!11796, !11797, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc: argument 0"}
!11797 = distinct !{!11797, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc"}
!11798 = !DILocation(line: 2814, column: 12, scope: !3020, inlinedAt: !11788)
!11799 = !DILocation(line: 4387, column: 24, scope: !609, inlinedAt: !11800)
!11800 = distinct !DILocation(line: 64, column: 9, scope: !3020, inlinedAt: !11788)
!11801 = !DILocation(line: 2857, column: 18, scope: !3020, inlinedAt: !11788)
!11802 = !DILocation(line: 54, column: 42, scope: !11752, inlinedAt: !11753)
!11803 = !DILocation(line: 53, column: 23, scope: !11752, inlinedAt: !11753)
!11804 = !DILocation(line: 55, column: 22, scope: !11752, inlinedAt: !11753)
!11805 = !DILocation(line: 2447, column: 9, scope: !11806, inlinedAt: !11807)
!11806 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<usize>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8jEE3getCskAlUH1kY1DR_10polars_ooc", scope: !3596, file: !3595, line: 2443, type: !30, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11807 = distinct !DILocation(line: 3615, column: 24, scope: !11808, inlinedAt: !11809)
!11808 = distinct !DISubprogram(name: "as_ptr", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE6as_ptr", scope: !450, file: !445, line: 3614, type: !30, scopeLine: 3614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11809 = distinct !DILocation(line: 2898, column: 44, scope: !11810, inlinedAt: !11811)
!11810 = distinct !DISubprogram(name: "store", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE5store", scope: !450, file: !445, line: 2896, type: !30, scopeLine: 2896, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11811 = distinct !DILocation(line: 81, column: 27, scope: !11812, inlinedAt: !11813)
!11812 = distinct !DISubprogram(name: "reset", linkageName: "_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB2_7Context5reset", scope: !3635, file: !2992, line: 80, type: !30, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11813 = distinct !DILocation(line: 56, column: 24, scope: !11814, inlinedAt: !11753)
!11814 = distinct !DILexicalBlock(scope: !11752, file: !2992, line: 55, column: 17)
!11815 = !DILocation(line: 3890, column: 24, scope: !8316, inlinedAt: !11816)
!11816 = distinct !DILocation(line: 2898, column: 26, scope: !11810, inlinedAt: !11811)
!11817 = !DILocation(line: 2447, column: 9, scope: !11818, inlinedAt: !11819)
!11818 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<*mut ()>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8OuEE3getCskAlUH1kY1DR_10polars_ooc", scope: !3596, file: !3595, line: 2443, type: !30, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11819 = distinct !DILocation(line: 2500, column: 16, scope: !11820, inlinedAt: !11821)
!11820 = distinct !DISubprogram(name: "as_ptr<()>", linkageName: "_RNvMs3_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicOuE6as_ptrCskAlUH1kY1DR_10polars_ooc", scope: !450, file: !445, line: 2499, type: !30, scopeLine: 2499, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11821 = distinct !DILocation(line: 1763, column: 31, scope: !11822, inlinedAt: !11823)
!11822 = distinct !DISubprogram(name: "store<()>", linkageName: "_RNvMs3_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicOuE5storeCskAlUH1kY1DR_10polars_ooc", scope: !450, file: !445, line: 1760, type: !30, scopeLine: 1760, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11823 = distinct !DILocation(line: 82, column: 27, scope: !11812, inlinedAt: !11813)
!11824 = !DILocation(line: 3890, column: 24, scope: !6636, inlinedAt: !11825)
!11825 = distinct !DILocation(line: 1763, column: 13, scope: !11822, inlinedAt: !11823)
!11826 = !DILocation(line: 57, column: 31, scope: !11814, inlinedAt: !11753)
!11827 = !DILocation(line: 1015, column: 18, scope: !11762, inlinedAt: !11828)
!11828 = distinct !DILocation(line: 48, column: 30, scope: !11829, inlinedAt: !11830)
!11829 = !DILexicalBlockFile(scope: !11764, file: !2992, discriminator: 2)
!11830 = distinct !DILocation(line: 57, column: 31, scope: !11814, inlinedAt: !11753)
!11831 = !DILocation(line: 49, column: 13, scope: !11832, inlinedAt: !11830)
!11832 = distinct !DILexicalBlock(scope: !11764, file: !2992, line: 48, column: 13)
!11833 = !DILocation(line: 437, column: 9, scope: !11834, inlinedAt: !11835)
!11834 = distinct !DISubprogram(name: "set<core::option::Option<std::sync::mpmc::context::Context>>", linkageName: "_RNvMs7_NtCscgRAwXFJnXP_4core4cellINtB5_4CellINtNtB7_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEE3setCskAlUH1kY1DR_10polars_ooc", scope: !7237, file: !3595, line: 433, type: !30, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11835 = distinct !DILocation(line: 58, column: 26, scope: !11836, inlinedAt: !11753)
!11836 = distinct !DILexicalBlock(scope: !11814, file: !2992, line: 57, column: 21)
!11837 = !DILocation(line: 929, column: 22, scope: !11746, inlinedAt: !11838)
!11838 = distinct !DILocation(line: 513, column: 9, scope: !11839, inlinedAt: !11840)
!11839 = !DILexicalBlockFile(scope: !11748, file: !3595, discriminator: 2)
!11840 = distinct !DILocation(line: 437, column: 14, scope: !11834, inlinedAt: !11835)
!11841 = !DILocation(line: 930, column: 49, scope: !11842, inlinedAt: !11838)
!11842 = distinct !DILexicalBlock(scope: !11746, file: !723, line: 929, column: 9)
!11843 = !DILocation(line: 810, column: 1, scope: !8351, inlinedAt: !11844)
!11844 = distinct !DILocation(line: 437, column: 26, scope: !11834, inlinedAt: !11835)
!11845 = !DILocation(line: 3956, column: 24, scope: !3016, inlinedAt: !11846)
!11846 = distinct !DILocation(line: 3193, column: 26, scope: !3018, inlinedAt: !11847)
!11847 = distinct !DILocation(line: 2814, column: 32, scope: !3020, inlinedAt: !11848)
!11848 = distinct !DILocation(line: 810, column: 1, scope: !3022, inlinedAt: !11849)
!11849 = distinct !DILocation(line: 810, column: 1, scope: !3024, inlinedAt: !11850)
!11850 = distinct !DILocation(line: 810, column: 1, scope: !8351, inlinedAt: !11844)
!11851 = !{!11852, !11854, !11856, !11858, !11721}
!11852 = distinct !{!11852, !11853, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc: argument 0"}
!11853 = distinct !{!11853, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc"}
!11854 = distinct !{!11854, !11855, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECskAlUH1kY1DR_10polars_ooc: argument 0"}
!11855 = distinct !{!11855, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECskAlUH1kY1DR_10polars_ooc"}
!11856 = distinct !{!11856, !11857, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc: argument 0"}
!11857 = distinct !{!11857, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc"}
!11858 = distinct !{!11858, !11859, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECskAlUH1kY1DR_10polars_ooc: argument 0"}
!11859 = distinct !{!11859, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECskAlUH1kY1DR_10polars_ooc"}
!11860 = !DILocation(line: 2814, column: 12, scope: !3020, inlinedAt: !11848)
!11861 = !DILocation(line: 4387, column: 24, scope: !609, inlinedAt: !11862)
!11862 = distinct !DILocation(line: 64, column: 9, scope: !3020, inlinedAt: !11848)
!11863 = !DILocation(line: 2857, column: 18, scope: !3020, inlinedAt: !11848)
!11864 = !DILocation(line: 437, column: 26, scope: !11834, inlinedAt: !11835)
!11865 = !DILocation(line: 60, column: 17, scope: !11752, inlinedAt: !11753)
!11866 = !DILocation(line: 61, column: 13, scope: !11752, inlinedAt: !11753)
!11867 = !DILocation(line: 3956, column: 24, scope: !3016, inlinedAt: !11868)
!11868 = distinct !DILocation(line: 3193, column: 26, scope: !3018, inlinedAt: !11869)
!11869 = distinct !DILocation(line: 2814, column: 32, scope: !3020, inlinedAt: !11870)
!11870 = distinct !DILocation(line: 810, column: 1, scope: !3022, inlinedAt: !11871)
!11871 = distinct !DILocation(line: 810, column: 1, scope: !3024, inlinedAt: !11872)
!11872 = distinct !DILocation(line: 60, column: 17, scope: !11752, inlinedAt: !11753)
!11873 = !{!11874, !11876, !11878, !11721}
!11874 = distinct !{!11874, !11875, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc: argument 0"}
!11875 = distinct !{!11875, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc"}
!11876 = distinct !{!11876, !11877, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECskAlUH1kY1DR_10polars_ooc: argument 0"}
!11877 = distinct !{!11877, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECskAlUH1kY1DR_10polars_ooc"}
!11878 = distinct !{!11878, !11879, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc: argument 0"}
!11879 = distinct !{!11879, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc"}
!11880 = !DILocation(line: 2814, column: 12, scope: !3020, inlinedAt: !11870)
!11881 = !DILocation(line: 4387, column: 24, scope: !609, inlinedAt: !11882)
!11882 = distinct !DILocation(line: 64, column: 9, scope: !3020, inlinedAt: !11870)
!11883 = !DILocation(line: 2857, column: 18, scope: !3020, inlinedAt: !11870)
!11884 = !DILocation(line: 1622, column: 23, scope: !11885, inlinedAt: !11887)
!11885 = distinct !DILexicalBlock(scope: !11886, file: !1747, line: 1622, column: 13)
!11886 = distinct !DISubprogram(name: "unwrap_or_else<(), std::thread::local::AccessError, std::sync::mpmc::context::{impl#0}::with::{closure_env#2}<std::sync::mpmc::array::{impl#1}::send::{closure_env#0}<()>, ()>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultuNtNtNtCsh8eZTKRCwoO_3std6thread5local11AccessErrorE14unwrap_or_elseNCINvMNtNtNtBP_4sync4mpmc7contextNtB1U_7Context4withNCNvMs_NtB1W_5arrayINtB2L_7ChanneluE4send0uEs0_0ECskAlUH1kY1DR_10polars_ooc", scope: !1749, file: !1747, line: 1616, type: !30, scopeLine: 1616, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!11887 = distinct !DILocation(line: 62, column: 14, scope: !11731, inlinedAt: !11719)
!11888 = !DILocation(line: 63, column: 5, scope: !11718, inlinedAt: !11719)
end_hunk_3
