Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/index_scheduler-0c73470abd85ee5a.index_scheduler.34b94f085cb09947-cgu.0?download=true
inline.NumInlined: 57303
inline.NumDeleted: 23973
loop-unroll.NumCompletelyUnrolled: 215
loop-unroll.NumRuntimeUnrolled: 566
loop-unroll.NumUnrolled: 784
loop-unroll.NumUnrolledNotLatch: 6
begin_hunk_0_@_ZN4core5slice4sort6stable9quicksort9quicksort17hd743bed986ef9776E:bb.a
  %i.gu = icmp ult ptr %i.gt, %i.gf
  br i1 %i.gu, label %.lr.ph.i56, label %._crit_edge.i48

bb.af:                                            ; preds = %._crit_edge.i48
  %i.gv = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i49, i64 -96
  %i.gw = getelementptr inbounds nuw [96 x i8], ptr %2, i64 %.sroa.11.1.lcssa.i50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.gw, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.5.1.lcssa.i51, i64 96, i1 false), !alias.scope !135131, !noalias !135133
  %i.gx = add i64 %.sroa.11.1.lcssa.i50, 1
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i51, i64 96
  br label %bb.ae

bb.ag:                                            ; preds = %._crit_edge.i48
  %i.gz = mul i64 %.sroa.11.1.lcssa.i50, 96
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph106, ptr nonnull align 8 %2, i64 %i.gz, i1 false), !alias.scope !135131
  %i.ha = sub i64 %.sroa.15.099248, %.sroa.11.1.lcssa.i50 ; 6 uses
  %.not18.i52 = icmp eq i64 %.sroa.15.099248, %.sroa.11.1.lcssa.i50
  br i1 %.not18.i52, label %.outer._crit_edge.thread, label %.lr.ph16.i53

.lr.ph16.i53:                                     ; preds = %bb.ag
  %i.hb = getelementptr [96 x i8], ptr %.sroa.0.0.ph106, i64 %.sroa.11.1.lcssa.i50 ; 3 uses
  %.neg349 = add i64 %.sroa.11.1.lcssa.i50, 1
  %xtraiter344 = and i64 %i.ha, 1
  %i.hc = icmp eq i64 %.sroa.15.099248, %.neg349
  br i1 %i.hc, label %.epil.preheader337, label %.lr.ph16.i53.new

.lr.ph16.i53.new:                                 ; preds = %.lr.ph16.i53
  %unroll_iter347 = and i64 %i.ha, -2
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.lr.ph16.i53.new
  %.sroa.04.014.i54 = phi i64 [ 0, %.lr.ph16.i53.new ], [ %i.hg, %bb.ah ] ; 5 uses
  %niter348 = phi i64 [ 0, %.lr.ph16.i53.new ], [ %niter348.next.1, %bb.ah ]
  %i.hd = xor i64 %.sroa.04.014.i54, -1
  %i.he = getelementptr [96 x i8], ptr %i.gc, i64 %i.hd
  %i.hf = getelementptr [96 x i8], ptr %i.hb, i64 %.sroa.04.014.i54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.hf, ptr noundef nonnull align 8 dereferenceable(96) %i.he, i64 96, i1 false), !alias.scope !135131
  %i.hg = add nuw i64 %.sroa.04.014.i54, 2        ; 2 uses
  %i.hh = xor i64 %.sroa.04.014.i54, -2
  %i.hi = getelementptr [96 x i8], ptr %i.gc, i64 %i.hh
  %i.hj = getelementptr [96 x i8], ptr %i.hb, i64 %.sroa.04.014.i54
  %i.hk = getelementptr i8, ptr %i.hj, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.hk, ptr noundef nonnull align 8 dereferenceable(96) %i.hi, i64 96, i1 false), !alias.scope !135131
  %niter348.next.1 = add i64 %niter348, 2         ; 2 uses
  %niter348.ncmp.1 = icmp eq i64 %niter348.next.1, %unroll_iter347
  br i1 %niter348.ncmp.1, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h9187ff4f1f3dc4fdE.exit.unr-lcssa, label %bb.ah

_ZN4core5slice4sort6stable9quicksort16stable_partition17h9187ff4f1f3dc4fdE.exit.unr-lcssa: ; preds = %bb.ah
  %lcmp.mod345.not = icmp eq i64 %xtraiter344, 0
  br i1 %lcmp.mod345.not, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h9187ff4f1f3dc4fdE.exit, label %.epil.preheader337

.epil.preheader337:                               ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h9187ff4f1f3dc4fdE.exit.unr-lcssa, %.lr.ph16.i53
  %.sroa.04.014.i54.epil.init = phi i64 [ 0, %.lr.ph16.i53 ], [ %i.hg, %_ZN4core5slice4sort6stable9quicksort16stable_partition17h9187ff4f1f3dc4fdE.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod346 = trunc i64 %i.ha to i1
  call void @llvm.assume(i1 %lcmp.mod346)
  %i.hl = xor i64 %.sroa.04.014.i54.epil.init, -1
  %i.hm = getelementptr [96 x i8], ptr %i.gc, i64 %i.hl
  %i.hn = getelementptr [96 x i8], ptr %i.hb, i64 %.sroa.04.014.i54.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.hn, ptr noundef nonnull align 8 dereferenceable(96) %i.hm, i64 96, i1 false), !alias.scope !135131
  br label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h9187ff4f1f3dc4fdE.exit

_ZN4core5slice4sort6stable9quicksort16stable_partition17h9187ff4f1f3dc4fdE.exit: ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h9187ff4f1f3dc4fdE.exit.unr-lcssa, %.epil.preheader337
  %i.ho = icmp ugt i64 %.sroa.11.1.lcssa.i50, %.sroa.15.099248
  br i1 %i.ho, label %bb.ai, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hc7135a14ad49f0d7E.exit", !prof !169

.outer._crit_edge.thread:                         ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h2edef2c6bfe84313E.exit

bb.ai:                                            ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h9187ff4f1f3dc4fdE.exit
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.11.1.lcssa.i50, i64 noundef %.sroa.15.099248, i64 noundef %.sroa.15.099248, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2130) #78, !noalias !135134
  unreachable

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hc7135a14ad49f0d7E.exit": ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h9187ff4f1f3dc4fdE.exit
  %i.hp = getelementptr inbounds nuw [96 x i8], ptr %.sroa.0.0.ph106, i64 %.sroa.11.1.lcssa.i50 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.hq = icmp ult i64 %i.ha, 33
  br i1 %i.hq, label %.outer._crit_edge, label %.lr.ph

bb.aj:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @312, ptr %i.a, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.hr, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.hs, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ht, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.hu, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2129) #78
  unreachable

bb.ak:                                            ; preds = %bb.ab
  %i.hv = getelementptr inbounds nuw [96 x i8], ptr %.sroa.0.0.ph106, i64 %.sroa.11.1.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph106) ]
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hd743bed986ef9776E(ptr noalias noundef nonnull align 8 %i.hv, i64 noundef %i.fn, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(96) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.hw = icmp ult i64 %.sroa.11.1.lcssa.i, 33
  br i1 %i.hw, label %.outer._crit_edge, label %bb.b
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort8unstable7ipnsort17h10da8b97fa599dacE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #22 personality ptr @rust_eh_personality !guid !135142 {
bb.a:
  %i.a = icmp ult i64 %1, 2
  br i1 %i.a, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h5cb1ea9b157af99eE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val6 = load ptr, ptr %i.b, align 8, !nonnull !166, !align !170, !noundef !166
  %.val7 = load ptr, ptr %0, align 8, !nonnull !166, !align !170, !noundef !166
  %i.c = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !166 ; 4 uses
  %i.e = icmp ult i64 %i.d, 288230376151711744
  tail call void @llvm.assume(i1 %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %.val7, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !166 ; 2 uses
  %i.h = icmp ult i64 %i.g, 288230376151711744
  tail call void @llvm.assume(i1 %i.h)
  %i.i = icmp samesign ult i64 %i.g, %i.d         ; 2 uses
  %.not22 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.i, label %.preheader, label %.preheader12

.preheader12:                                     ; preds = %bb.b
  br i1 %.not22, label %_ZN4core5slice4sort6shared17find_existing_run17ha7a279a5b6383315E.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not22, label %_ZN4core5slice4sort6shared17find_existing_run17ha7a279a5b6383315E.exit, label %.lr.ph18

.lr.ph:                                           ; preds = %.preheader12, %bb.c
  %i.j = phi i64 [ %i.m, %bb.c ], [ %i.d, %.preheader12 ]
  %.sroa.01.0.i14 = phi i64 [ %i.p, %bb.c ], [ 2, %.preheader12 ] ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i14
  %.val4 = load ptr, ptr %i.k, align 8, !nonnull !166, !align !170, !noundef !166
  %i.l = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !166 ; 3 uses
  %i.n = icmp ult i64 %i.m, 288230376151711744
  tail call void @llvm.assume(i1 %i.n)
  %i.o = icmp samesign ult i64 %i.j, %i.m
  br i1 %i.o, label %_ZN4core5slice4sort6shared17find_existing_run17ha7a279a5b6383315E.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.p = add nuw i64 %.sroa.01.0.i14, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.p, %1
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17ha7a279a5b6383315E.exit.thread, label %.lr.ph

.lr.ph18:                                         ; preds = %.preheader, %bb.d
  %i.q = phi i64 [ %i.t, %bb.d ], [ %i.d, %.preheader ]
  %.sroa.01.1.i17 = phi i64 [ %i.w, %bb.d ], [ 2, %.preheader ] ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.1.i17
  %.val = load ptr, ptr %i.r, align 8, !nonnull !166, !align !170, !noundef !166
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !166 ; 3 uses
  %i.u = icmp ult i64 %i.t, 288230376151711744
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp samesign ult i64 %i.q, %i.t
  br i1 %i.v, label %bb.d, label %_ZN4core5slice4sort6shared17find_existing_run17ha7a279a5b6383315E.exit

bb.d:                                             ; preds = %.lr.ph18
  %i.w = add nuw i64 %.sroa.01.1.i17, 1           ; 2 uses
  %exitcond25.not = icmp eq i64 %i.w, %1
  br i1 %exitcond25.not, label %_ZN4core5slice4sort6shared17find_existing_run17ha7a279a5b6383315E.exit.thread, label %.lr.ph18

_ZN4core5slice4sort6shared17find_existing_run17ha7a279a5b6383315E.exit: ; preds = %.lr.ph, %.lr.ph18, %.preheader12, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader12 ], [ 2, %.preheader ], [ %.sroa.01.1.i17, %.lr.ph18 ], [ %.sroa.01.0.i14, %.lr.ph ] ; 2 uses
  %i.x = icmp ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.x)
  %i.y = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.y, label %_ZN4core5slice4sort6shared17find_existing_run17ha7a279a5b6383315E.exit.thread, label %bb.e

_ZN4core5slice4sort6shared17find_existing_run17ha7a279a5b6383315E.exit.thread: ; preds = %bb.c, %bb.d, %_ZN4core5slice4sort6shared17find_existing_run17ha7a279a5b6383315E.exit
  br i1 %i.i, label %.lr.ph.preheader.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h5cb1ea9b157af99eE.exit"

bb.e:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17ha7a279a5b6383315E.exit
  %i.z = or i64 %1, 1
  %i.aa = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.z, i1 true)
  %i.ab = trunc nuw nsw i64 %i.aa to i32
  %i.ac = shl nuw nsw i32 %i.ab, 1
  %i.ad = xor i32 %i.ac, 126
  tail call fastcc void @_ZN4core5slice4sort8unstable9quicksort9quicksort17hed0a3bf753dbbd7dE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, i32 noundef %i.ad, ptr noalias noundef align 8 dereferenceable(8) %2)
  br label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h5cb1ea9b157af99eE.exit"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h5cb1ea9b157af99eE.exit": ; preds = %.lr.ph.i.i, %middle.block, %bb.a, %_ZN4core5slice4sort6shared17find_existing_run17ha7a279a5b6383315E.exit.thread, %bb.e
  ret void

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17ha7a279a5b6383315E.exit.thread
  %i.ae = lshr i64 %1, 1                          ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135144)
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1 ; 2 uses
  %min.iters.check = icmp ult i64 %1, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %i.ae, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ag = xor i64 %index, -1
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.ai = getelementptr [8 x i8], ptr %i.af, i64 %i.ag ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %i.ah, align 8, !alias.scope !135145
  %wide.load46 = load <2 x ptr>, ptr %i.aj, align 8, !alias.scope !135145
  %i.ak = getelementptr i8, ptr %i.ai, i64 -8     ; 2 uses
  %i.al = getelementptr i8, ptr %i.ai, i64 -24    ; 2 uses
  %wide.load47 = load <2 x i64>, ptr %i.ak, align 8, !alias.scope !135146
  %wide.load48 = load <2 x i64>, ptr %i.al, align 8, !alias.scope !135146
  %reverse = shufflevector <2 x i64> %wide.load47, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse49 = shufflevector <2 x i64> %wide.load48, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse, ptr %i.ah, align 8, !alias.scope !135145
  store <2 x i64> %reverse49, ptr %i.aj, align 8, !alias.scope !135145
  %reverse50 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse51 = shufflevector <2 x ptr> %wide.load46, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse50, ptr %i.ak, align 8, !alias.scope !135146
  store <2 x ptr> %reverse51, ptr %i.al, align 8, !alias.scope !135146
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !135140

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h5cb1ea9b157af99eE.exit", label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
  %.sroa.0.014.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.014.i.i = phi i64 [ %i.as, %.lr.ph.i.i ], [ %.sroa.0.014.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.an = xor i64 %.sroa.0.014.i.i, -1
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.014.i.i ; 2 uses
  %i.ap = getelementptr [8 x i8], ptr %i.af, i64 %i.an ; 2 uses
  %i.aq = load ptr, ptr %i.ao, align 8, !alias.scope !135145, !nonnull !166, !align !170, !noundef !166
  %i.ar = load i64, ptr %i.ap, align 8, !alias.scope !135146
  store i64 %i.ar, ptr %i.ao, align 8, !alias.scope !135145
  store ptr %i.aq, ptr %i.ap, align 8, !alias.scope !135146
  %i.as = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.as, %i.ae
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h5cb1ea9b157af99eE.exit", label %.lr.ph.i.i, !llvm.loop !135141
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort8unstable7ipnsort17h6ee07d68163763bdE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #22 personality ptr @rust_eh_personality !guid !135170 {
bb.a:
  %i.a = icmp ult i64 %1, 2
  br i1 %i.a, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h13ee95e2e4853c23E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val6 = load ptr, ptr %i.b, align 8, !nonnull !166, !align !170, !noundef !166 ; 2 uses
  %.val7 = load ptr, ptr %0, align 8, !nonnull !166, !align !170, !noundef !166 ; 2 uses
  %.val.i.i = load ptr, ptr %.val6, align 8, !nonnull !166, !align !173, !noundef !166 ; 3 uses
  %i.c = getelementptr i8, ptr %.val6, i64 8
  %.val1.i.i = load i64, ptr %i.c, align 8, !noundef !166 ; 4 uses
  %.val2.i.i = load ptr, ptr %.val7, align 8, !nonnull !166, !align !173, !noundef !166
  %i.d = getelementptr i8, ptr %.val7, i64 8
  %.val3.i.i = load i64, ptr %i.d, align 8, !noundef !166 ; 2 uses
  %i.e = sub i64 %.val1.i.i, %.val3.i.i
  %..i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.i.i, i64 %.val3.i.i)
  %i.f = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i, ptr nonnull readonly align 1 %.val2.i.i, i64 %..i.i.i.i.i), !alias.scope !135171 ; 2 uses
  %i.g = sext i32 %i.f to i64
  %i.h = icmp eq i32 %i.f, 0
  %spec.store.select.i.i.i.i.i = select i1 %i.h, i64 %i.e, i64 %i.g
  %i.i = icmp slt i64 %spec.store.select.i.i.i.i.i, 0 ; 2 uses
  %.not34 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.i, label %.preheader, label %.preheader24

.preheader24:                                     ; preds = %bb.b
  br i1 %.not34, label %_ZN4core5slice4sort6shared17find_existing_run17h73543bb25a3557feE.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not34, label %_ZN4core5slice4sort6shared17find_existing_run17h73543bb25a3557feE.exit, label %.lr.ph30

.lr.ph:                                           ; preds = %.preheader24, %bb.c
  %.val3.i.i11 = phi i64 [ %.val1.i.i9, %bb.c ], [ %.val1.i.i, %.preheader24 ] ; 2 uses
  %.val2.i.i10 = phi ptr [ %.val.i.i8, %bb.c ], [ %.val.i.i, %.preheader24 ]
  %.sroa.01.0.i26 = phi i64 [ %i.q, %bb.c ], [ 2, %.preheader24 ] ; 3 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i26
  %.val4 = load ptr, ptr %i.j, align 8, !nonnull !166, !align !170, !noundef !166 ; 2 uses
  %.val.i.i8 = load ptr, ptr %.val4, align 8, !nonnull !166, !align !173, !noundef !166 ; 2 uses
  %i.k = getelementptr i8, ptr %.val4, i64 8
  %.val1.i.i9 = load i64, ptr %i.k, align 8, !noundef !166 ; 3 uses
  %i.l = sub i64 %.val1.i.i9, %.val3.i.i11
  %..i.i.i.i.i12 = tail call i64 @llvm.umin.i64(i64 %.val1.i.i9, i64 %.val3.i.i11)
  %i.m = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i8, ptr nonnull readonly align 1 %.val2.i.i10, i64 %..i.i.i.i.i12), !alias.scope !135172 ; 2 uses
  %i.n = sext i32 %i.m to i64
  %i.o = icmp eq i32 %i.m, 0
  %spec.store.select.i.i.i.i.i13 = select i1 %i.o, i64 %i.l, i64 %i.n
  %i.p = icmp slt i64 %spec.store.select.i.i.i.i.i13, 0
  br i1 %i.p, label %_ZN4core5slice4sort6shared17find_existing_run17h73543bb25a3557feE.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.q = add nuw i64 %.sroa.01.0.i26, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.q, %1
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h73543bb25a3557feE.exit.thread, label %.lr.ph

.lr.ph30:                                         ; preds = %.preheader, %bb.d
  %.val3.i.i17 = phi i64 [ %.val1.i.i15, %bb.d ], [ %.val1.i.i, %.preheader ] ; 2 uses
  %.val2.i.i16 = phi ptr [ %.val.i.i14, %bb.d ], [ %.val.i.i, %.preheader ]
  %.sroa.01.1.i29 = phi i64 [ %i.y, %bb.d ], [ 2, %.preheader ] ; 3 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.1.i29
  %.val = load ptr, ptr %i.r, align 8, !nonnull !166, !align !170, !noundef !166 ; 2 uses
  %.val.i.i14 = load ptr, ptr %.val, align 8, !nonnull !166, !align !173, !noundef !166 ; 2 uses
  %i.s = getelementptr i8, ptr %.val, i64 8
  %.val1.i.i15 = load i64, ptr %i.s, align 8, !noundef !166 ; 3 uses
  %i.t = sub i64 %.val1.i.i15, %.val3.i.i17
  %..i.i.i.i.i18 = tail call i64 @llvm.umin.i64(i64 %.val1.i.i15, i64 %.val3.i.i17)
  %i.u = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i14, ptr nonnull readonly align 1 %.val2.i.i16, i64 %..i.i.i.i.i18), !alias.scope !135173 ; 2 uses
  %i.v = sext i32 %i.u to i64
  %i.w = icmp eq i32 %i.u, 0
  %spec.store.select.i.i.i.i.i19 = select i1 %i.w, i64 %i.t, i64 %i.v
  %i.x = icmp slt i64 %spec.store.select.i.i.i.i.i19, 0
  br i1 %i.x, label %bb.d, label %_ZN4core5slice4sort6shared17find_existing_run17h73543bb25a3557feE.exit

bb.d:                                             ; preds = %.lr.ph30
  %i.y = add nuw i64 %.sroa.01.1.i29, 1           ; 2 uses
  %exitcond37.not = icmp eq i64 %i.y, %1
  br i1 %exitcond37.not, label %_ZN4core5slice4sort6shared17find_existing_run17h73543bb25a3557feE.exit.thread, label %.lr.ph30

_ZN4core5slice4sort6shared17find_existing_run17h73543bb25a3557feE.exit: ; preds = %.lr.ph, %.lr.ph30, %.preheader24, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader24 ], [ 2, %.preheader ], [ %.sroa.01.1.i29, %.lr.ph30 ], [ %.sroa.01.0.i26, %.lr.ph ] ; 2 uses
  %i.z = icmp ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.aa, label %_ZN4core5slice4sort6shared17find_existing_run17h73543bb25a3557feE.exit.thread, label %bb.e

_ZN4core5slice4sort6shared17find_existing_run17h73543bb25a3557feE.exit.thread: ; preds = %bb.c, %bb.d, %_ZN4core5slice4sort6shared17find_existing_run17h73543bb25a3557feE.exit
  br i1 %i.i, label %.lr.ph.preheader.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h13ee95e2e4853c23E.exit"

bb.e:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h73543bb25a3557feE.exit
  %i.ab = or i64 %1, 1
  %i.ac = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ab, i1 true)
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  %i.ae = shl nuw nsw i32 %i.ad, 1
  %i.af = xor i32 %i.ae, 126
  tail call fastcc void @_ZN4core5slice4sort8unstable9quicksort9quicksort17h26727edc73c6595aE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, i32 noundef %i.af, ptr noalias noundef align 8 dereferenceable(8) %2)
  br label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h13ee95e2e4853c23E.exit"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h13ee95e2e4853c23E.exit.loopexit.unr-lcssa": ; preds = %.lr.ph.i.i
  %i.ag = and i64 %1, 2
  %lcmp.mod.not = icmp eq i64 %i.ag, 0
  br i1 %lcmp.mod.not, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h13ee95e2e4853c23E.exit", label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h13ee95e2e4853c23E.exit.loopexit.unr-lcssa", %.lr.ph.preheader.i.i
  %.sroa.0.014.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.ax, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h13ee95e2e4853c23E.exit.loopexit.unr-lcssa" ] ; 2 uses
  %lcmp.mod62 = trunc i64 %i.al to i1
  tail call void @llvm.assume(i1 %lcmp.mod62)
  %i.ah = xor i64 %.sroa.0.014.i.i.epil.init, -1
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.014.i.i.epil.init ; 2 uses
  %i.aj = getelementptr [16 x i8], ptr %i.am, i64 %i.ah ; 2 uses
  %i.ak = load <2 x ptr>, ptr %i.ai, align 8, !alias.scope !135174
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false), !alias.scope !135175
  store <2 x ptr> %i.ak, ptr %i.aj, align 8, !alias.scope !135176
  br label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h13ee95e2e4853c23E.exit"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h13ee95e2e4853c23E.exit": ; preds = %.lr.ph.i.i.epil.preheader, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h13ee95e2e4853c23E.exit.loopexit.unr-lcssa", %bb.a, %_ZN4core5slice4sort6shared17find_existing_run17h73543bb25a3557feE.exit.thread, %bb.e
  ret void

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h73543bb25a3557feE.exit.thread
  %i.al = lshr i64 %1, 1                          ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135178)
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1 ; 3 uses
  %i.an = icmp eq i64 %i.al, 1
  br i1 %i.an, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %i.al, 9223372036854775806
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %.sroa.0.014.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %i.ax, %.lr.ph.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.ao = xor i64 %.sroa.0.014.i.i, -1
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.014.i.i ; 2 uses
  %i.aq = getelementptr [16 x i8], ptr %i.am, i64 %i.ao ; 2 uses
  %i.ar = load <2 x ptr>, ptr %i.ap, align 8, !alias.scope !135174
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i64 16, i1 false), !alias.scope !135175
  store <2 x ptr> %i.ar, ptr %i.aq, align 8, !alias.scope !135176
  %i.as = xor i64 %.sroa.0.014.i.i, -2
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.014.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %i.av = getelementptr [16 x i8], ptr %i.am, i64 %i.as ; 2 uses
  %i.aw = load <2 x ptr>, ptr %i.au, align 8, !alias.scope !135174
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %i.av, i64 16, i1 false), !alias.scope !135175
  store <2 x ptr> %i.aw, ptr %i.av, align 8, !alias.scope !135176
  %i.ax = add nuw nsw i64 %.sroa.0.014.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h13ee95e2e4853c23E.exit.loopexit.unr-lcssa", label %.lr.ph.i.i
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort8unstable7ipnsort17hac43852a6c5da1fdE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #22 personality ptr @rust_eh_personality !guid !135187 {
bb.a:
  %i.a = icmp ult i64 %1, 2
  br i1 %i.a, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hdbf04cc2af846663E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 40
  %.val6 = load i64, ptr %i.b, align 8, !noundef !166 ; 4 uses
  %i.c = getelementptr i8, ptr %0, i64 16
  %.val7 = load i64, ptr %i.c, align 8, !noundef !166 ; 2 uses
  %i.d = icmp ult i64 %.val6, 288230376151711744
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp ult i64 %.val7, 288230376151711744
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp samesign ult i64 %.val7, %.val6     ; 2 uses
  %.not22 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.f, label %.preheader, label %.preheader12

.preheader12:                                     ; preds = %bb.b
  br i1 %.not22, label %_ZN4core5slice4sort6shared17find_existing_run17h86e6bf4eb69d5bfeE.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
end_hunk_0
