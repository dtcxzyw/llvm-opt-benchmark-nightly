Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_layout-dbf6d821f089d5d9.typst_layout.57215e5c6dfa9aa8-cgu.0?download=true
inline.NumInlined: 19602
inline.NumDeleted: 9840
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 54
loop-unroll.NumUnrolled: 105
begin_hunk_0_@_RINvNtCsazW1U07H1KN_15crossbeam_epoch7default11with_handleNCNvB2_3pin0NtNtB4_5guard5GuardECs7tN9tvpkfrg_12typst_layout:bb.a
bb.c:                                             ; preds = %_RNvYNCNKNvNtCsazW1U07H1KN_15crossbeam_epoch7default6HANDLE00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtNtBa_9collector11LocalHandleEEEE9call_onceCs7tN9tvpkfrg_12typst_layout.exit.thread.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @397) #56
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsazW1U07H1KN_15crossbeam_epoch5guard5GuardECs7tN9tvpkfrg_12typst_layout(ptr nonnull align 128 %.val.i) #53
          to label %common.resume unwind label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !41, !noundef !41
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 384
  %i.r = load atomic i64, ptr %i.q monotonic, align 8
  %i.s = or i64 %i.r, 1
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i, i64 2176
  %i.u = cmpxchg ptr %i.t, i64 0, i64 %i.s seq_cst seq_cst, align 8 ; 0 uses
  fence syncscope("singlethread") seq_cst
  %i.v = getelementptr inbounds nuw i8, ptr %.val.i, i64 2088 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !noundef !41 ; 2 uses
  %i.x = add i64 %i.w, 1
  store i64 %i.x, ptr %i.v, align 8
  %i.y = and i64 %i.w, 127
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.f, label %bb.u, !prof !44

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.o, align 8, !nonnull !41, !noundef !41
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 128
  invoke void @_RNvMs5_NtCsazW1U07H1KN_15crossbeam_epoch8internalNtB5_6Global7collect(ptr noundef nonnull align 128 %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %bb.u unwind label %bb.d

bb.g:                                             ; preds = %bb.c
  unreachable

bb.h:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #54
  unreachable

common.resume:                                    ; preds = %.body.i, %bb.q, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.d ], [ %i.ak, %bb.q ], [ %i.ak, %.body.i ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %_RNvYNCNKNvNtCsazW1U07H1KN_15crossbeam_epoch7default6HANDLE00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtNtBa_9collector11LocalHandleEEEE9call_onceCs7tN9tvpkfrg_12typst_layout.exit.i
  %i.ad = tail call noundef nonnull align 8 ptr @_RNvNtCsazW1U07H1KN_15crossbeam_epoch7default9collector()
  %i.ae = tail call noundef ptr @_RNvMs1_NtCsazW1U07H1KN_15crossbeam_epoch9collectorNtB5_9Collector8register(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ad) ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ae, ptr %i.a, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 2072 ; 4 uses
  %i.ag = load i64, ptr %i.af, align 8, !noundef !41 ; 3 uses
  %i.ah = icmp eq i64 %i.ag, -1
  br i1 %i.ah, label %bb.k, label %bb.j, !prof !44

bb.j:                                             ; preds = %bb.i
  %i.ai = add nuw i64 %i.ag, 1
  store i64 %i.ai, ptr %i.af, align 8
  %i.aj = icmp eq i64 %i.ag, 0
  br i1 %i.aj, label %bb.m, label %bb.r

bb.k:                                             ; preds = %bb.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @397) #56
          to label %bb.o unwind label %bb.l

bb.l:                                             ; preds = %bb.n, %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsazW1U07H1KN_15crossbeam_epoch5guard5GuardECs7tN9tvpkfrg_12typst_layout(ptr nonnull align 128 %i.ae) #53
          to label %.body.i unwind label %bb.p

bb.m:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !41, !noundef !41
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 384
  %i.ao = load atomic i64, ptr %i.an monotonic, align 8
  %i.ap = or i64 %i.ao, 1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 2176
  %i.ar = cmpxchg ptr %i.aq, i64 0, i64 %i.ap seq_cst seq_cst, align 8 ; 0 uses
  fence syncscope("singlethread") seq_cst
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 2088 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !noundef !41 ; 2 uses
  %i.au = add i64 %i.at, 1
  store i64 %i.au, ptr %i.as, align 8
  %i.av = and i64 %i.at, 127
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.n, label %bb.r, !prof !44

bb.n:                                             ; preds = %bb.m
  %i.ax = load ptr, ptr %i.al, align 8, !nonnull !41, !noundef !41
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 128
  invoke void @_RNvMs5_NtCsazW1U07H1KN_15crossbeam_epoch8internalNtB5_6Global7collect(ptr noundef nonnull align 128 %i.ay, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.r unwind label %bb.l

bb.o:                                             ; preds = %bb.k
  unreachable

bb.p:                                             ; preds = %bb.l
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #54
  unreachable

.body.i:                                          ; preds = %bb.l
  %i.ba = load i64, ptr %i.af, align 8, !noundef !41
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ae, i64 2080 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !41 ; 2 uses
  %i.bd = add i64 %i.bc, -1
  store i64 %i.bd, ptr %i.bb, align 8
  %i.be = icmp eq i64 %i.ba, 0
  %i.bf = icmp eq i64 %i.bc, 1
  %or.cond.i.i.i.i = and i1 %i.be, %i.bf
  br i1 %or.cond.i.i.i.i, label %bb.q, label %common.resume, !prof !50

bb.q:                                             ; preds = %.body.i
  invoke void @_RNvMs6_NtCsazW1U07H1KN_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %i.ae)
          to label %common.resume unwind label %bb.t

bb.r:                                             ; preds = %bb.n, %bb.m, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bg = load i64, ptr %i.af, align 8, !noundef !41
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ae, i64 2080 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !41 ; 2 uses
  %i.bj = add i64 %i.bi, -1
  store i64 %i.bj, ptr %i.bh, align 8
  %i.bk = icmp eq i64 %i.bg, 0
  %i.bl = icmp eq i64 %i.bi, 1
  %or.cond.i.i.i3.i = and i1 %i.bk, %i.bl
  br i1 %or.cond.i.i.i3.i, label %bb.s, label %_RNCINvNtCsazW1U07H1KN_15crossbeam_epoch7default11with_handleNCNvB4_3pin0NtNtB6_5guard5GuardEs_0Cs7tN9tvpkfrg_12typst_layout.exit, !prof !50

bb.s:                                             ; preds = %bb.r
  call void @_RNvMs6_NtCsazW1U07H1KN_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %i.ae)
  br label %_RNCINvNtCsazW1U07H1KN_15crossbeam_epoch7default11with_handleNCNvB4_3pin0NtNtB6_5guard5GuardEs_0Cs7tN9tvpkfrg_12typst_layout.exit

bb.t:                                             ; preds = %bb.q
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #54
  unreachable

bb.u:                                             ; preds = %bb.f, %bb.e, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNCINvNtCsazW1U07H1KN_15crossbeam_epoch7default11with_handleNCNvB4_3pin0NtNtB6_5guard5GuardEs_0Cs7tN9tvpkfrg_12typst_layout.exit

_RNCINvNtCsazW1U07H1KN_15crossbeam_epoch7default11with_handleNCNvB4_3pin0NtNtB6_5guard5GuardEs_0Cs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.s, %bb.r, %bb.u
  %.sroa.0.0 = phi ptr [ %.val.i, %bb.u ], [ %i.ae, %bb.r ], [ %i.ae, %bb.s ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef i128 @_RINvNtCsloFShupyl5J_6comemo4hash4hashRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font4book8FontBookEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [2 x i8], align 2                 ; 4 uses
  %i.g = alloca [2 x i8], align 2                 ; 4 uses
  %i.h = alloca [1 x i8], align 1                 ; 4 uses
  %i.i = alloca [1 x i8], align 1                 ; 4 uses
  %i.j = alloca [72 x i8], align 8                ; 28 uses
  %i.k = alloca [72 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 8317987319222330741, ptr %i.k, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 7816392313619706465, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 7237128888997146499, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 8387220255154660723, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9544)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx, i8 0, i64 40, i1 false)
  %i.l = load ptr, ptr %0, align 8, !alias.scope !9544, !nonnull !41, !align !59, !noundef !41 ; 7 uses
  %i.m = load atomic ptr, ptr @_RNvNvNtNtNtCsiL9kQKV5x1F_15portable_atomic3imp9atomic1286x86_6411atomic_load4FUNC monotonic, align 8, !noalias !9545, !nonnull !41, !noundef !41
  %i.n = tail call noundef i128 %i.m(ptr noundef nonnull align 16 %i.l), !noalias !9545, !inline_history !9477 ; 2 uses
  %i.o = icmp eq i128 %i.n, 0
  br i1 %i.o, label %bb.b, label %_RINvXs3_NtNtCs3oUPovFnLWP_4core4hash5implsRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font4book8FontBookENtB8_4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs7tN9tvpkfrg_12typst_layout.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9546)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !9547
  store i64 8317987319222330741, ptr %i.j, align 8, !noalias !9547
  %.sroa.411.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 7816392313619706465, ptr %.sroa.411.0..sroa_idx.i.i.i.i.i, align 8, !noalias !9547
  %.sroa.512.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 7237128888997146499, ptr %.sroa.512.0..sroa_idx.i.i.i.i.i, align 8, !noalias !9547
  %.sroa.613.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 8387220255154660723, ptr %.sroa.613.0..sroa_idx.i.i.i.i.i, align 8, !noalias !9547
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9548)
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9549)
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx.i.i.i.i.i, i8 0, i64 40, i1 false), !noalias !9547
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !9550, !noalias !9545, !noundef !41 ; 3 uses
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.j, i64 noundef %i.r), !noalias !9551
  %i.s = load ptr, ptr %i.p, align 8, !alias.scope !9550, !noalias !9545, !noundef !41 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp ne ptr %i.s, null
  %1 = icmp ne i64 %i.r, 0
  %.not63.i.i.i.i.i.i.i = and i1 %1, %.not.i.i.i.i.i.i.i
  br i1 %.not63.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i, label %_RINvXs1r_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB7_8BTreeMapNtNtBd_6string6StringINtNtBd_3vec3VecjEENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.u = load i64, ptr %i.t, align 16, !alias.scope !9550, !noalias !9545
  %2 = ptrtoint ptr %i.s to i64
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i
  %.sroa.5.04055.i.i.i.i.i.i.i = phi ptr [ %.sroa.07.0.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i ], [ null, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.14.054.i.i.i.i.i.i.i = phi i64 [ %.sroa.78.0.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i ], [ %i.u, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 6 uses
  %.sroa.22.053.i.i.i.i.i.i.i = phi i64 [ %i.v, %.loopexit.i.i.i.i.i.i.i ], [ %i.r, %.lr.ph.preheader.i.i.i.i.i.i.i ]
  %.sroa.9.052.i.i.i.i.i.i.i = phi i64 [ 0, %.loopexit.i.i.i.i.i.i.i ], [ %2, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %i.v = add i64 %.sroa.22.053.i.i.i.i.i.i.i, -1  ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.5.04055.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.d, label %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.w = inttoptr i64 %.sroa.9.052.i.i.i.i.i.i.i to ptr ; 3 uses
  %i.x = icmp eq i64 %.sroa.14.054.i.i.i.i.i.i.i, 0
  br i1 %i.x, label %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %bb.d
  %xtraiter = and i64 %.sroa.14.054.i.i.i.i.i.i.i, 7 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.sroa.013.017.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %.sroa.013.0.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ]
  %.sroa.011.016.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.z, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %.sroa.14.054.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.i.i.i.i.i.i.i.prol, i64 544
  %i.z = add i64 %.sroa.011.016.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %i.y, align 8, !noalias !9552, !nonnull !41, !noundef !41 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !9488

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.013.0.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %.sroa.013.017.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.013.0.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %.sroa.011.016.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.sroa.14.054.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.z, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.aa = icmp ult i64 %.sroa.14.054.i.i.i.i.i.i.i, 8
  br i1 %i.aa, label %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.sroa.013.017.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.013.0.i.i.i.i.i.i.i.i.i.7, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.013.017.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.011.016.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aj, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.011.016.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.i.i.i.i.i.i.i, i64 544
  %.sroa.013.0.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !noalias !9552, !nonnull !41, !noundef !41
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.i.i.i, i64 544
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.ac, align 8, !noalias !9552, !nonnull !41, !noundef !41
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.i.i.i.1, i64 544
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.ad, align 8, !noalias !9552, !nonnull !41, !noundef !41
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.i.i.i.2, i64 544
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.ae, align 8, !noalias !9552, !nonnull !41, !noundef !41
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.i.i.i.3, i64 544
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.af, align 8, !noalias !9552, !nonnull !41, !noundef !41
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.i.i.i.4, i64 544
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.ag, align 8, !noalias !9552, !nonnull !41, !noundef !41
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.i.i.i.5, i64 544
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.ah, align 8, !noalias !9552, !nonnull !41, !noundef !41
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.i.i.i.6, i64 544
  %i.aj = add i64 %.sroa.011.016.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.ai, align 8, !noalias !9552, !nonnull !41, !noundef !41 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.d, %bb.c
  %.sroa.59.0.copyload.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.14.054.i.i.i.i.i.i.i, %bb.c ], [ 0, %bb.d ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.48.0.copyload.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.9.052.i.i.i.i.i.i.i, %bb.c ], [ 0, %bb.d ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.07.0.copyload.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.5.04055.i.i.i.i.i.i.i, %bb.c ], [ %i.w, %bb.d ], [ %.sroa.013.0.i.i.i.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ], [ %.sroa.013.0.i.i.i.i.i.i.i.i.i.7, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i.i.i.i.i.i.i.i.i, i64 538
  %i.am = load i16, ptr %i.al, align 2, !noalias !9553, !noundef !41
  %i.an = zext i16 %i.am to i64
  %i.ao = icmp ult i64 %.sroa.59.0.copyload.i.i.i.i.i.i.i.i.i, %i.an
  br i1 %i.ao, label %bb.g, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i, %bb.e
  %.sroa.0.022.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ap, %bb.e ], [ %.sroa.07.0.copyload.i.i.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.5.021.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ar, %bb.e ], [ %.sroa.48.0.copyload.i.i.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i ]
  %i.ap = load ptr, ptr %.sroa.0.022.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !9554, !noundef !41 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %bb.e
  %i.aq = zext i16 %i.at to i64
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.ar = add i64 %.sroa.5.021.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i.i.i.i.i.i.i, i64 536
  %i.at = load i16, ptr %i.as, align 8, !noalias !9554 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 538
  %i.av = load i16, ptr %i.au, align 2, !noalias !9553, !noundef !41
  %i.aw = icmp ult i16 %i.at, %i.av
  br i1 %i.aw, label %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @240) #52
          to label %.noexc.i.i.i.i.i.i.i.i.i unwind label %bb.j, !noalias !9555

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i
  %.sroa.10.0.ph.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aq, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.59.0.copyload.i.i.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i ] ; 6 uses
  %.sroa.7.0.ph.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ar, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.48.0.copyload.i.i.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.06.0.ph.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ap, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.07.0.copyload.i.i.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.ax = icmp eq i64 %.sroa.7.0.ph.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ax, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ay = add nuw nsw i64 %.sroa.10.0.ph.i.i.i.i.i.i.i.i.i.i, 1
  br label %.loopexit.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.az = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i.i.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.az)
  %i.ba = getelementptr i8, ptr %.sroa.06.0.ph.i.i.i.i.i.i.i.i.i.i, i64 552
  %i.bb = getelementptr [8 x i8], ptr %i.ba, i64 %.sroa.10.0.ph.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %xtraiter34 = and i64 %.sroa.7.0.ph.i.i.i.i.i.i.i.i.i.i, 7 ; 2 uses
  %lcmp.mod35.not = icmp eq i64 %xtraiter34, 0
  br i1 %lcmp.mod35.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.i, %.prol.preheader
  %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.bc, %.prol.preheader ], [ %i.bb, %bb.i ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.7.0.ph.i.i.i.i.i.i.i.i.i.i, %bb.i ]
  %prol.iter36 = phi i64 [ %prol.iter36.next, %.prol.preheader ], [ 0, %bb.i ]
  %.sroa.019.0.i.i.i.i.i.i.i.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.i.i.prol, align 8, !noalias !9556, !nonnull !41, !noundef !41 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.prol, i64 544 ; 2 uses
  %prol.iter36.next = add i64 %prol.iter36, 1     ; 2 uses
  %prol.iter36.cmp.not = icmp eq i64 %prol.iter36.next, %xtraiter34
  br i1 %prol.iter36.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !9502

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.i
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.i ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.bb, %bb.i ], [ %i.bc, %.prol.preheader ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.sroa.7.0.ph.i.i.i.i.i.i.i.i.i.i, %bb.i ], [ %.sroa.019.0.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %i.bd = icmp ult i64 %.sroa.7.0.ph.i.i.i.i.i.i.i.i.i.i, 8
  br i1 %i.bd, label %.loopexit.i.i.i.i.i.i.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bm, %.new ], [ %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.i.i.i.i.i.i.i.7, %.new ], [ %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !9556, !nonnull !41, !noundef !41
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i, i64 544
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.be, align 8, !noalias !9556, !nonnull !41, !noundef !41
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.1, i64 544
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.bf, align 8, !noalias !9556, !nonnull !41, !noundef !41
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.2, i64 544
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.bg, align 8, !noalias !9556, !nonnull !41, !noundef !41
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.3, i64 544
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.bh, align 8, !noalias !9556, !nonnull !41, !noundef !41
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.4, i64 544
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.bi, align 8, !noalias !9556, !nonnull !41, !noundef !41
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.5, i64 544
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.bj, align 8, !noalias !9556, !nonnull !41, !noundef !41
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.6, i64 544
  %.sroa.019.0.i.i.i.i.i.i.i.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.bk, align 8, !noalias !9556, !nonnull !41, !noundef !41 ; 2 uses
  %i.bl = icmp eq i64 %.sroa.019.0.i.i.i.i.i.i.i.i.i.i.i.7, 0
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.7, i64 544
  br i1 %i.bl, label %.loopexit.i.i.i.i.i.i.i, label %.new

bb.j:                                             ; preds = %bb.f
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

.loopexit.i.i.i.i.i.i.i:                          ; preds = %.prol.loopexit, %.new, %bb.h
  %.sroa.78.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ay, %bb.h ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.06.0.ph.i.i.i.i.i.i.i.i.i.i, %bb.h ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.7, %.new ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.06.0.ph.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.bp = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i.i.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.bp)
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.bo, i64 %.sroa.10.0.ph.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.06.0.ph.i.i.i.i.i.i.i.i.i.i, i64 272
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.br, i64 %.sroa.10.0.ph.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bq, i64 8
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.bt, align 8, !noalias !9551, !nonnull !41, !noundef !41
  %i.bu = getelementptr i8, ptr %i.bq, i64 16
  %.val35.i.i.i.i.i.i.i = load i64, ptr %i.bu, align 8, !noalias !9551, !noundef !41
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i.i.i.i.i, i64 noundef %.val35.i.i.i.i.i.i.i), !noalias !9551
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !9557
  store i8 -1, ptr %i.i, align 1, !noalias !9557
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef 1), !noalias !9551
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !9557
  %i.bv = getelementptr i8, ptr %i.bs, i64 8
  %.val36.i.i.i.i.i.i.i = load ptr, ptr %i.bv, align 8, !noalias !9551, !nonnull !41, !noundef !41
  %i.bw = getelementptr i8, ptr %i.bs, i64 16
  %.val37.i.i.i.i.i.i.i = load i64, ptr %i.bw, align 8, !noalias !9551, !noundef !41 ; 2 uses
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.j, i64 noundef %.val37.i.i.i.i.i.i.i), !noalias !9551
  %i.bx = shl nuw nsw i64 %.val37.i.i.i.i.i.i.i, 3
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.val36.i.i.i.i.i.i.i, i64 noundef %i.bx), !noalias !9551
  %i.by = icmp eq i64 %i.v, 0
  br i1 %i.by, label %_RINvXs1r_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB7_8BTreeMapNtNtBd_6string6StringINtNtBd_3vec3VecjEENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i, label %bb.c

_RINvXs1r_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB7_8BTreeMapNtNtBd_6string6StringINtNtBd_3vec3VecjEENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i: ; preds = %.loopexit.i.i.i.i.i.i.i, %bb.b
  %i.bz = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !alias.scope !9558, !noalias !9545, !nonnull !41, !noundef !41 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.cc = load i64, ptr %i.cb, align 16, !alias.scope !9558, !noalias !9545, !noundef !41 ; 3 uses
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.j, i64 noundef %i.cc), !noalias !9559
  call void @llvm.experimental.noalias.scope.decl(metadata !9560)
  %.idx.i.i.i.i.i.i.i = mul nuw nsw i64 %i.cc, 88
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.idx.i.i.i.i.i.i.i
  %i.ce = icmp eq i64 %i.cc, 0
  br i1 %i.ce, label %_RNCNvMs0_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB7_8LazyHashNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font4book8FontBookE20load_or_compute_hash0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i, label %.lr.ph.i1.i.i.i.i.i.i

.lr.ph.i1.i.i.i.i.i.i:                            ; preds = %_RINvXs1r_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB7_8BTreeMapNtNtBd_6string6StringINtNtBd_3vec3VecjEENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i, %_RINvXs5_NtNtNtCsdaEETE4DqmE_13typst_library4text4font4infoNtB6_8FontInfoNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i
end_hunk_0
begin_hunk_1_@_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs7tN9tvpkfrg_12typst_layout10introspect17PagedIntrospectorE9drop_slowBK_:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = atomicrmw add ptr %i.i, i64 -1 release, align 8
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCs7tN9tvpkfrg_12typst_layout10introspect17PagedIntrospectorRNtNtBG_5alloc6GlobalEEB1e_.exit2

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 272, i64 noundef 8) #55
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCs7tN9tvpkfrg_12typst_layout10introspect17PagedIntrospectorRNtNtBG_5alloc6GlobalEEB1e_.exit2

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCs7tN9tvpkfrg_12typst_layout10introspect17PagedIntrospectorRNtNtBG_5alloc6GlobalEEB1e_.exit2: ; preds = %bb.e, %bb.f, %bb.g
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCs7tN9tvpkfrg_12typst_layout10introspect17PagedIntrospectorRNtNtBG_5alloc6GlobalEEB1e_.exit: ; preds = %bb.d, %bb.c, %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tE9drop_slowCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !41, !noundef !41 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(240) %i.b)
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tRNtNtBG_5alloc6GlobalEECs7tN9tvpkfrg_12typst_layout.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = atomicrmw add ptr %i.e, i64 -1 release, align 8
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tRNtNtBG_5alloc6GlobalEECs7tN9tvpkfrg_12typst_layout.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 256, i64 noundef 8) #55
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tRNtNtBG_5alloc6GlobalEECs7tN9tvpkfrg_12typst_layout.exit

bb.e:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tRNtNtBG_5alloc6GlobalEECs7tN9tvpkfrg_12typst_layout.exit2, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = atomicrmw add ptr %i.i, i64 -1 release, align 8
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tRNtNtBG_5alloc6GlobalEECs7tN9tvpkfrg_12typst_layout.exit2

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 256, i64 noundef 8) #55
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tRNtNtBG_5alloc6GlobalEECs7tN9tvpkfrg_12typst_layout.exit2

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tRNtNtBG_5alloc6GlobalEECs7tN9tvpkfrg_12typst_layout.exit2: ; preds = %bb.e, %bb.f, %bb.g
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tRNtNtBG_5alloc6GlobalEECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.d, %bb.c, %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsz_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8IntoIterjNtNtB7_7set_val9SetValZSTE10dying_nextCs7tN9tvpkfrg_12typst_layout(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !41 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30465)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30466)
  %.sroa.01.0.copyload.i.i = load i64, ptr %1, align 8, !alias.scope !30467
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !30467 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !30467 ; 5 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !30467 ; 5 uses
  store i64 0, ptr %1, align 8, !alias.scope !30467
  %i.d = trunc nuw i64 %.sroa.01.0.copyload.i.i to i1
  br i1 %i.d, label %bb.c, label %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingjNtNtB8_7set_val9SetValZSTE16deallocating_endNtNtBc_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %.sroa.5.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.d, label %.loopexit.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload.i.i) ]
  %i.e = icmp eq i64 %.sroa.5.sroa.6.0.copyload.i.i, 0
  br i1 %i.e, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %xtraiter51 = and i64 %.sroa.5.sroa.6.0.copyload.i.i, 7 ; 2 uses
  %lcmp.mod52.not = icmp eq i64 %xtraiter51, 0
  br i1 %lcmp.mod52.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.022.025.i.i.prol = phi ptr [ %i.g, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %.sroa.020.024.i.i.prol = phi i64 [ %i.h, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %prol.iter53 = phi i64 [ %prol.iter53.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.022.025.i.i.prol, i64 104
  %i.g = load ptr, ptr %i.f, align 8, !noalias !30468, !nonnull !41, !noundef !41 ; 3 uses
  %i.h = add i64 %.sroa.020.024.i.i.prol, -1      ; 2 uses
  %prol.iter53.next = add i64 %prol.iter53, 1     ; 2 uses
  %prol.iter53.cmp.not = icmp eq i64 %prol.iter53.next, %xtraiter51
  br i1 %prol.iter53.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !30437

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa41.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.g, %.lr.ph.i.i.prol ]
  %.sroa.022.025.i.i.unr = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.g, %.lr.ph.i.i.prol ]
  %.sroa.020.024.i.i.unr = phi i64 [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.h, %.lr.ph.i.i.prol ]
  %i.i = icmp ult i64 %.sroa.5.sroa.6.0.copyload.i.i, 8
  br i1 %i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.022.025.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %.sroa.022.025.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.020.024.i.i = phi i64 [ %i.z, %.lr.ph.i.i ], [ %.sroa.020.024.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.025.i.i, i64 104
  %i.k = load ptr, ptr %i.j, align 8, !noalias !30468, !nonnull !41, !noundef !41
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.m = load ptr, ptr %i.l, align 8, !noalias !30468, !nonnull !41, !noundef !41
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  %i.o = load ptr, ptr %i.n, align 8, !noalias !30468, !nonnull !41, !noundef !41
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  %i.q = load ptr, ptr %i.p, align 8, !noalias !30468, !nonnull !41, !noundef !41
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  %i.s = load ptr, ptr %i.r, align 8, !noalias !30468, !nonnull !41, !noundef !41
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 104
  %i.u = load ptr, ptr %i.t, align 8, !noalias !30468, !nonnull !41, !noundef !41
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  %i.w = load ptr, ptr %i.v, align 8, !noalias !30468, !nonnull !41, !noundef !41
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  %i.y = load ptr, ptr %i.x, align 8, !noalias !30468, !nonnull !41, !noundef !41 ; 2 uses
  %i.z = add i64 %.sroa.020.024.i.i, -8           ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.loopexit.i, label %.lr.ph.i.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d, %bb.c
  %.sroa.8.0.ph.i = phi ptr [ null, %bb.d ], [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.c ], [ null, %.lr.ph.i.i ], [ null, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.0.0.ph.i = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.d ], [ %.sroa.5.sroa.0.0.copyload.i.i, %bb.c ], [ %.lcssa41.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.y, %.lr.ph.i.i ] ; 3 uses
  %i.ab = ptrtoint ptr %.sroa.8.0.ph.i to i64     ; 2 uses
  %i.ac = load ptr, ptr %.sroa.0.0.ph.i, align 8, !noalias !30469, !noundef !41 ; 2 uses
  %.not.i.i4.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i4.i.i, label %_RINvMsj_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingjNtNtB8_7set_val9SetValZSTNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout.exit.i, label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %.loopexit.i, %.lr.ph.i2.i
  %i.ad = phi ptr [ %i.af, %.lr.ph.i2.i ], [ %i.ac, %.loopexit.i ] ; 3 uses
  %.sroa.0.06.i.i = phi ptr [ %i.ad, %.lr.ph.i2.i ], [ %.sroa.0.0.ph.i, %.loopexit.i ]
  %.sroa.3.05.i.i = phi i64 [ %i.ae, %.lr.ph.i2.i ], [ %i.ab, %.loopexit.i ] ; 2 uses
  %i.ae = add i64 %.sroa.3.05.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sroa.3.05.i.i, 0
  %..i.i.i = select i1 %.not.i.i.i, i64 104, i64 200
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.06.i.i, i64 noundef %..i.i.i, i64 noundef 8) #55, !noalias !30470
  %i.af = load ptr, ptr %i.ad, align 8, !noalias !30469, !noundef !41 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i, label %_RINvMsj_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingjNtNtB8_7set_val9SetValZSTNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout.exit.i, label %.lr.ph.i2.i

_RINvMsj_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingjNtNtB8_7set_val9SetValZSTNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %.lr.ph.i2.i, %.loopexit.i
  %.sroa.3.0.lcssa.i.i = phi i64 [ %i.ab, %.loopexit.i ], [ %i.ae, %.lr.ph.i2.i ]
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.0.0.ph.i, %.loopexit.i ], [ %i.ad, %.lr.ph.i2.i ]
  %.not.i2.i.i = icmp eq i64 %.sroa.3.0.lcssa.i.i, 0
  %..i3.i.i = select i1 %.not.i2.i.i, i64 104, i64 200
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa.i.i, i64 noundef %..i3.i.i, i64 noundef 8) #55, !noalias !30470
  br label %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingjNtNtB8_7set_val9SetValZSTE16deallocating_endNtNtBc_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout.exit

_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingjNtNtB8_7set_val9SetValZSTE16deallocating_endNtNtBc_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.b, %_RINvMsj_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingjNtNtB8_7set_val9SetValZSTNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout.exit.i
  store ptr null, ptr %0, align 8
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  %i.ag = add i64 %i.b, -1
  store i64 %i.ag, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30471)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30472)
  %i.ah = load i64, ptr %1, align 8, !range !49, !alias.scope !30473, !noundef !41
  %i.ai = trunc nuw i64 %i.ah to i1
  br i1 %i.ai, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !30473, !noundef !41 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.ak, null
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br i1 %.not.i.i1, label %bb.g, label %._RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingjNtNtB7_7set_val9SetValZSTE10init_frontCs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i

._RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingjNtNtB7_7set_val9SetValZSTE10init_frontCs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i: ; preds = %bb.f
  %.sroa.48.0.copyload.i.pre.i = load i64, ptr %i.al, align 8, !alias.scope !30474
  %.sroa.59.0..sroa_idx.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.59.0.copyload.i.pre.i = load i64, ptr %.sroa.59.0..sroa_idx.i.phi.trans.insert.i, align 8, !alias.scope !30474
  br label %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingjNtNtB7_7set_val9SetValZSTE10init_frontCs7tN9tvpkfrg_12typst_layout.exit.i

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !30473, !noundef !41 ; 5 uses
  %.sroa.013.015.i.i = load ptr, ptr %i.al, align 8, !alias.scope !30473, !nonnull !41, !noundef !41 ; 3 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %._crit_edge.i.i, label %.lr.ph.i.i2.preheader

.lr.ph.i.i2.preheader:                            ; preds = %bb.g
  %xtraiter = and i64 %i.an, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol

.lr.ph.i.i2.prol:                                 ; preds = %.lr.ph.i.i2.preheader, %.lr.ph.i.i2.prol
  %.sroa.013.017.i.i.prol = phi ptr [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ], [ %.sroa.013.015.i.i, %.lr.ph.i.i2.preheader ]
  %.sroa.011.016.i.i.prol = phi i64 [ %i.aq, %.lr.ph.i.i2.prol ], [ %i.an, %.lr.ph.i.i2.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i2.prol ], [ 0, %.lr.ph.i.i2.preheader ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.prol, i64 104
  %i.aq = add i64 %.sroa.011.016.i.i.prol, -1     ; 2 uses
  %.sroa.013.0.i.i.prol = load ptr, ptr %i.ap, align 8, !noalias !30475, !nonnull !41, !noundef !41 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol, !llvm.loop !30449

.lr.ph.i.i2.prol.loopexit:                        ; preds = %.lr.ph.i.i2.prol, %.lr.ph.i.i2.preheader
  %.sroa.013.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.013.017.i.i.unr = phi ptr [ %.sroa.013.015.i.i, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.011.016.i.i.unr = phi i64 [ %i.an, %.lr.ph.i.i2.preheader ], [ %i.aq, %.lr.ph.i.i2.prol ]
  %i.ar = icmp ult i64 %i.an, 8
  br i1 %i.ar, label %._crit_edge.i.i, label %.lr.ph.i.i2

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2, %bb.g
  %.sroa.013.0.lcssa.i.i = phi ptr [ %.sroa.013.015.i.i, %bb.g ], [ %.sroa.013.0.i.i.lcssa.unr, %.lr.ph.i.i2.prol.loopexit ], [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ]
  store i64 1, ptr %1, align 8, !alias.scope !30473
  br label %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingjNtNtB7_7set_val9SetValZSTE10init_frontCs7tN9tvpkfrg_12typst_layout.exit.i

.lr.ph.i.i2:                                      ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2
  %.sroa.013.017.i.i = phi ptr [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ], [ %.sroa.013.017.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %.sroa.011.016.i.i = phi i64 [ %i.ba, %.lr.ph.i.i2 ], [ %.sroa.011.016.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i, i64 104
  %.sroa.013.0.i.i = load ptr, ptr %i.as, align 8, !noalias !30475, !nonnull !41, !noundef !41
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i, i64 104
  %.sroa.013.0.i.i.1 = load ptr, ptr %i.at, align 8, !noalias !30475, !nonnull !41, !noundef !41
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.1, i64 104
  %.sroa.013.0.i.i.2 = load ptr, ptr %i.au, align 8, !noalias !30475, !nonnull !41, !noundef !41
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.2, i64 104
  %.sroa.013.0.i.i.3 = load ptr, ptr %i.av, align 8, !noalias !30475, !nonnull !41, !noundef !41
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.3, i64 104
  %.sroa.013.0.i.i.4 = load ptr, ptr %i.aw, align 8, !noalias !30475, !nonnull !41, !noundef !41
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.4, i64 104
  %.sroa.013.0.i.i.5 = load ptr, ptr %i.ax, align 8, !noalias !30475, !nonnull !41, !noundef !41
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.5, i64 104
  %.sroa.013.0.i.i.6 = load ptr, ptr %i.ay, align 8, !noalias !30475, !nonnull !41, !noundef !41
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.6, i64 104
  %i.ba = add i64 %.sroa.011.016.i.i, -8          ; 2 uses
  %.sroa.013.0.i.i.7 = load ptr, ptr %i.az, align 8, !noalias !30475, !nonnull !41, !noundef !41 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %._crit_edge.i.i, label %.lr.ph.i.i2

_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingjNtNtB7_7set_val9SetValZSTE10init_frontCs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %._crit_edge.i.i, %._RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingjNtNtB7_7set_val9SetValZSTE10init_frontCs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i
  %.sroa.59.0.copyload.i.i = phi i64 [ %.sroa.59.0.copyload.i.pre.i, %._RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingjNtNtB7_7set_val9SetValZSTE10init_frontCs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i ], [ 0, %._crit_edge.i.i ] ; 2 uses
  %.sroa.48.0.copyload.i.i = phi i64 [ %.sroa.48.0.copyload.i.pre.i, %._RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingjNtNtB7_7set_val9SetValZSTE10init_frontCs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i ], [ 0, %._crit_edge.i.i ] ; 2 uses
  %.sroa.07.0.copyload.i.i = phi ptr [ %i.ak, %._RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingjNtNtB7_7set_val9SetValZSTE10init_frontCs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i ], [ %.sroa.013.0.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30476)
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i.i, i64 98
  %i.bd = load i16, ptr %i.bc, align 2, !noalias !30477, !noundef !41
  %i.be = zext i16 %i.bd to i64
  %i.bf = icmp ult i64 %.sroa.59.0.copyload.i.i, %i.be
  br i1 %i.bf, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingjNtNtB7_7set_val9SetValZSTE10init_frontCs7tN9tvpkfrg_12typst_layout.exit.i, %bb.j
  %.sroa.0.039.i.i.i.i = phi ptr [ %i.bg, %bb.j ], [ %.sroa.07.0.copyload.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingjNtNtB7_7set_val9SetValZSTE10init_frontCs7tN9tvpkfrg_12typst_layout.exit.i ] ; 4 uses
  %.sroa.5.038.i.i.i.i = phi i64 [ %i.by, %bb.j ], [ %.sroa.48.0.copyload.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingjNtNtB7_7set_val9SetValZSTE10init_frontCs7tN9tvpkfrg_12typst_layout.exit.i ] ; 3 uses
  %i.bg = load ptr, ptr %.sroa.0.039.i.i.i.i, align 8, !noalias !30478, !noundef !41 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.j
  %i.bh = zext i16 %i.ca to i64
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingjNtNtB7_7set_val9SetValZSTE10init_frontCs7tN9tvpkfrg_12typst_layout.exit.i
  %.sroa.8.0.lcssa.i.i.i.i = phi i64 [ %.sroa.59.0.copyload.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingjNtNtB7_7set_val9SetValZSTE10init_frontCs7tN9tvpkfrg_12typst_layout.exit.i ], [ %i.bh, %._crit_edge.loopexit.i.i.i.i ] ; 4 uses
  %.sroa.5.0.lcssa.i.i.i.i = phi i64 [ %.sroa.48.0.copyload.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingjNtNtB7_7set_val9SetValZSTE10init_frontCs7tN9tvpkfrg_12typst_layout.exit.i ], [ %i.by, %._crit_edge.loopexit.i.i.i.i ] ; 6 uses
  %.sroa.0.0.lcssa.i.i.i.i = phi ptr [ %.sroa.07.0.copyload.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingjNtNtB7_7set_val9SetValZSTE10init_frontCs7tN9tvpkfrg_12typst_layout.exit.i ], [ %i.bg, %._crit_edge.loopexit.i.i.i.i ] ; 3 uses
  %i.bi = icmp eq i64 %.sroa.5.0.lcssa.i.i.i.i, 0
  br i1 %i.bi, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bj = add nuw nsw i64 %.sroa.8.0.lcssa.i.i.i.i, 1
  br label %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingjNtNtB8_7set_val9SetValZSTE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bk = icmp samesign ult i64 %.sroa.8.0.lcssa.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = getelementptr i8, ptr %.sroa.0.0.lcssa.i.i.i.i, i64 112
  %i.bm = getelementptr [8 x i8], ptr %i.bl, i64 %.sroa.8.0.lcssa.i.i.i.i ; 2 uses
  %xtraiter48 = and i64 %.sroa.5.0.lcssa.i.i.i.i, 7 ; 2 uses
  %lcmp.mod49.not = icmp eq i64 %xtraiter48, 0
  br i1 %lcmp.mod49.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.i, %.prol.preheader
  %.sroa.017.0.in.i.i.i.i.i.prol = phi ptr [ %i.bn, %.prol.preheader ], [ %i.bm, %bb.i ]
  %.sroa.019.0.in.i.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.5.0.lcssa.i.i.i.i, %bb.i ]
  %prol.iter50 = phi i64 [ %prol.iter50.next, %.prol.preheader ], [ 0, %bb.i ]
  %.sroa.019.0.i.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.prol, align 8, !noalias !30479, !nonnull !41, !noundef !41 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.prol, i64 104 ; 2 uses
  %prol.iter50.next = add i64 %prol.iter50, 1     ; 2 uses
  %prol.iter50.cmp.not = icmp eq i64 %prol.iter50.next, %xtraiter48
  br i1 %prol.iter50.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !30464

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.i
  %.sroa.017.0.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.i ], [ %.sroa.017.0.i.i.i.i.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.i.i.i.unr = phi ptr [ %i.bm, %bb.i ], [ %i.bn, %.prol.preheader ]
  %.sroa.019.0.in.i.i.i.i.i.unr = phi i64 [ %.sroa.5.0.lcssa.i.i.i.i, %bb.i ], [ %.sroa.019.0.i.i.i.i.i.prol, %.prol.preheader ]
  %i.bo = icmp ult i64 %.sroa.5.0.lcssa.i.i.i.i, 8
  br i1 %i.bo, label %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingjNtNtB8_7set_val9SetValZSTE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout.exit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i.i.i.i = phi ptr [ %i.bx, %.new ], [ %.sroa.017.0.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.i.7, %.new ], [ %.sroa.019.0.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i, align 8, !noalias !30479, !nonnull !41, !noundef !41
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i, i64 104
  %.sroa.017.0.i.i.i.i.i.1 = load ptr, ptr %i.bp, align 8, !noalias !30479, !nonnull !41, !noundef !41
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.1, i64 104
  %.sroa.017.0.i.i.i.i.i.2 = load ptr, ptr %i.bq, align 8, !noalias !30479, !nonnull !41, !noundef !41
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.2, i64 104
  %.sroa.017.0.i.i.i.i.i.3 = load ptr, ptr %i.br, align 8, !noalias !30479, !nonnull !41, !noundef !41
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.3, i64 104
  %.sroa.017.0.i.i.i.i.i.4 = load ptr, ptr %i.bs, align 8, !noalias !30479, !nonnull !41, !noundef !41
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.4, i64 104
  %.sroa.017.0.i.i.i.i.i.5 = load ptr, ptr %i.bt, align 8, !noalias !30479, !nonnull !41, !noundef !41
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.5, i64 104
  %.sroa.017.0.i.i.i.i.i.6 = load ptr, ptr %i.bu, align 8, !noalias !30479, !nonnull !41, !noundef !41
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.6, i64 104
  %.sroa.019.0.i.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.7 = load ptr, ptr %i.bv, align 8, !noalias !30479, !nonnull !41, !noundef !41 ; 2 uses
  %i.bw = icmp eq i64 %.sroa.019.0.i.i.i.i.i.7, 0
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.7, i64 104
  br i1 %i.bw, label %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingjNtNtB8_7set_val9SetValZSTE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout.exit, label %.new

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %i.by = add i64 %.sroa.5.038.i.i.i.i, 1         ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.039.i.i.i.i, i64 96
  %i.ca = load i16, ptr %i.bz, align 8, !noalias !30478 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.5.038.i.i.i.i, 0
  %..i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 104, i64 200
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.039.i.i.i.i, i64 noundef %..i.i.i.i.i, i64 noundef 8) #55, !noalias !30480
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bg, i64 98
  %i.cc = load i16, ptr %i.cb, align 2, !noalias !30477, !noundef !41
  %i.cd = icmp ult i16 %i.ca, %i.cc
  br i1 %i.cd, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.k:                                             ; preds = %.lr.ph.i.i.i.i
  %.not.i33.i.i.i.i = icmp eq i64 %.sroa.5.038.i.i.i.i, 0
  %..i34.i.i.i.i = select i1 %.not.i33.i.i.i.i, i64 104, i64 200
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.039.i.i.i.i, i64 noundef %..i34.i.i.i.i, i64 noundef 8) #55, !noalias !30480
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @214) #52
          to label %.noexc.i.i unwind label %bb.l, !noalias !30481

.noexc.i.i:                                       ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

.critedge.i:                                      ; preds = %bb.e
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #52, !noalias !30482
  unreachable

_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingjNtNtB8_7set_val9SetValZSTE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %.prol.loopexit, %.new, %bb.h
  %.sroa.7.0.ph.i.i.i = phi i64 [ %i.bj, %bb.h ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.0.0.ph.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i.i.i.i, %bb.h ], [ %.sroa.017.0.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.i.i.i.7, %.new ]
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %.sroa.0.0.ph.i.i.i, ptr %i.aj, align 8, !alias.scope !30474
  store i64 0, ptr %i.al, align 8, !alias.scope !30474
  store i64 %.sroa.7.0.ph.i.i.i, ptr %.sroa.59.0..sroa_idx.i.i, align 8, !alias.scope !30474
  store ptr %.sroa.0.0.lcssa.i.i.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.lcssa.i.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.0.lcssa.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.m

bb.m:                                             ; preds = %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingjNtNtB8_7set_val9SetValZSTE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout.exit, %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingjNtNtB8_7set_val9SetValZSTE16deallocating_endNtNtBc_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout.exit
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, i64 noundef range(i64 16, 209) %2) unnamed_addr #12 {
bb.a:
  %i.a = lshr i64 %2, 3                           ; 4 uses
  %min.iters.check = icmp samesign ult i64 %2, 64
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.b = and i64 %2, 248                          ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 %i.b
  %i.d = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %0, %i.d
  %bound1 = icmp ult ptr %1, %i.c
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, 28                       ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30517)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30518)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %0, align 1, !alias.scope !30519, !noalias !30520
  %wide.load7 = load <2 x i64>, ptr %i.e, align 1, !alias.scope !30519, !noalias !30520
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %wide.load8 = load <2 x i64>, ptr %1, align 1, !alias.scope !30521
  %wide.load9 = load <2 x i64>, ptr %i.f, align 1, !alias.scope !30521
  store <2 x i64> %wide.load8, ptr %0, align 1, !alias.scope !30519, !noalias !30520
  store <2 x i64> %wide.load9, ptr %i.e, align 1, !alias.scope !30519, !noalias !30520
  store <2 x i64> %wide.load, ptr %1, align 1, !alias.scope !30521
  store <2 x i64> %wide.load7, ptr %i.f, align 1, !alias.scope !30521
  %i.g = icmp eq i64 %n.vec, 4
  br i1 %i.g, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30523)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %wide.load.1 = load <2 x i64>, ptr %i.h, align 1, !alias.scope !30524, !noalias !30520
  %wide.load7.1 = load <2 x i64>, ptr %i.j, align 1, !alias.scope !30524, !noalias !30520
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %wide.load8.1 = load <2 x i64>, ptr %i.i, align 1, !alias.scope !30525
  %wide.load9.1 = load <2 x i64>, ptr %i.k, align 1, !alias.scope !30525
  store <2 x i64> %wide.load8.1, ptr %i.h, align 1, !alias.scope !30524, !noalias !30520
  store <2 x i64> %wide.load9.1, ptr %i.j, align 1, !alias.scope !30524, !noalias !30520
  store <2 x i64> %wide.load.1, ptr %i.i, align 1, !alias.scope !30525
  store <2 x i64> %wide.load7.1, ptr %i.k, align 1, !alias.scope !30525
  %i.l = icmp eq i64 %n.vec, 8
  br i1 %i.l, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30526)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30527)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %wide.load.2 = load <2 x i64>, ptr %i.m, align 1, !alias.scope !30528, !noalias !30520
  %wide.load7.2 = load <2 x i64>, ptr %i.o, align 1, !alias.scope !30528, !noalias !30520
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %wide.load8.2 = load <2 x i64>, ptr %i.n, align 1, !alias.scope !30529
  %wide.load9.2 = load <2 x i64>, ptr %i.p, align 1, !alias.scope !30529
  store <2 x i64> %wide.load8.2, ptr %i.m, align 1, !alias.scope !30528, !noalias !30520
  store <2 x i64> %wide.load9.2, ptr %i.o, align 1, !alias.scope !30528, !noalias !30520
  store <2 x i64> %wide.load.2, ptr %i.n, align 1, !alias.scope !30529
  store <2 x i64> %wide.load7.2, ptr %i.p, align 1, !alias.scope !30529
  %i.q = icmp eq i64 %n.vec, 12
  br i1 %i.q, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
end_hunk_1
