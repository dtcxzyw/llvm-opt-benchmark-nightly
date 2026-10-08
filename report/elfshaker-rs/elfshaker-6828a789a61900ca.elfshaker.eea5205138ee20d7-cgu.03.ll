Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/elfshaker-rs/original/elfshaker-6828a789a61900ca.elfshaker.eea5205138ee20d7-cgu.03?download=true
inline.NumInlined: 562
inline.NumDeleted: 235
begin_hunk_0_@_RNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB5_10Repository18copy_loose_entries:bb.a
  store ptr %i.ak, ptr %.sroa.647.0..sroa_idx, align 8
  %i.al = icmp eq i64 %3, 0
  br i1 %i.al, label %bb.m, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %bb.o
  %i.am = phi ptr [ %i.ao, %bb.o ], [ %2, %bb.k ] ; 2 uses
  %i.an = phi ptr [ %i.ar, %bb.o ], [ %i.ai, %bb.k ] ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 64 ; 4 uses
  %i.ap = icmp eq ptr %i.an, %i.ak
  br i1 %i.ap, label %.sink.split, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 40 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 20 ; 2 uses
  store ptr %i.ar, ptr %.sroa.445.0..sroa_idx, align 8, !alias.scope !454, !noalias !455
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.a, ptr noundef nonnull align 1 dereferenceable(20) %i.an, i64 20, i1 false)
  %i.as = load i128, ptr %i.aq, align 1
  %i.at = load i128, ptr %i.a, align 8
  %i.au = xor i128 %i.as, %i.at
  %i.av = getelementptr i8, ptr %i.aq, i64 16
  %i.aw = getelementptr i8, ptr %i.a, i64 16
  %i.ax = load i32, ptr %i.av, align 1
  %i.ay = load i32, ptr %i.aw, align 8
  %i.az = zext i32 %i.ax to i128
  %i.ba = zext i32 %i.ay to i128
  %i.bb = xor i128 %i.az, %i.ba
  %i.bc = or i128 %i.au, %i.bb
  %i.bd = icmp ne i128 %i.bc, 0
  %i.be = zext i1 %i.bd to i32
  %.not36 = icmp eq i32 %i.be, 0
  br i1 %.not36, label %bb.o, label %bb.p

.sink.split:                                      ; preds = %.lr.ph, %bb.o
  %.lcssa.sink = phi ptr [ %i.l, %bb.o ], [ %i.ao, %.lr.ph ]
  store ptr %.lcssa.sink, ptr %i.b, align 8, !alias.scope !456, !noalias !457
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.k
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterAhj14_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.3.0..sroa_idx)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtBG_3map3MapINtNtNtB4_5slice4iter4IterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENCNvMs0_NtNtB1T_4repo10repositoryNtB2I_10Repository18copy_loose_entriess_0EINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterAhj14_EEEB1T_.exit38 unwind label %bb.h

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtBG_3map3MapINtNtNtB4_5slice4iter4IterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENCNvMs0_NtNtB1T_4repo10repositoryNtB2I_10Repository18copy_loose_entriess_0EINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterAhj14_EEEB1T_.exit38: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.n:                                             ; preds = %bb.b, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std4path7PathBufEECskuiImRAV2ip_9elfshaker.exit41, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std4path7PathBufEECskuiImRAV2ip_9elfshaker.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.o:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bf = icmp eq ptr %i.ao, %i.l
  br i1 %i.bf, label %.sink.split, label %.lr.ph

bb.p:                                             ; preds = %bb.l
  store ptr %i.ao, ptr %i.b, align 8, !alias.scope !456, !noalias !457
  %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(20) %i.aq, i64 20, i1 false)
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(20) %i.an, i64 20, i1 false)
  store i64 -9223372036854775805, ptr %0, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775803, ptr %.sroa.414.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterAhj14_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.3.0..sroa_idx)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtBG_3map3MapINtNtNtB4_5slice4iter4IterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENCNvMs0_NtNtB1T_4repo10repositoryNtB2I_10Repository18copy_loose_entriess_0EINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterAhj14_EEEB1T_.exit39 unwind label %bb.h

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtBG_3map3MapINtNtNtB4_5slice4iter4IterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENCNvMs0_NtNtB1T_4repo10repositoryNtB2I_10Repository18copy_loose_entriess_0EINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterAhj14_EEEB1T_.exit39: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.q

bb.q:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtBG_3map3MapINtNtNtB4_5slice4iter4IterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENCNvMs0_NtNtB1T_4repo10repositoryNtB2I_10Repository18copy_loose_entriess_0EINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterAhj14_EEEB1T_.exit39, %bb.j
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std4path7PathBufEECskuiImRAV2ip_9elfshaker.exit41 unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std4path7PathBufEECskuiImRAV2ip_9elfshaker.exit41: ; preds = %bb.q
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
  br label %bb.n

bb.t:                                             ; preds = %bb.h
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB5_10Repository18update_remote_pack(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [40 x i8], align 8                ; 8 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [96 x i8], align 8                ; 11 uses
  %.sroa.8153 = alloca [88 x i8], align 8         ; 7 uses
  %i.m = alloca [32 x i8], align 8                ; 10 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 9 uses
  %i.q = alloca [16 x i8], align 8                ; 7 uses
  %i.r = alloca [256 x i8], align 8               ; 4 uses
  %i.s = alloca [16 x i8], align 8                ; 11 uses
  %i.t = alloca [24 x i8], align 8                ; 8 uses
  %i.u = alloca [24 x i8], align 8                ; 8 uses
  %i.v = alloca [24 x i8], align 8                ; 10 uses
  %i.w = alloca [16 x i8], align 8                ; 9 uses
  %i.x = alloca [56 x i8], align 8                ; 7 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 6 uses
  %i.y = alloca [24 x i8], align 8                ; 8 uses
  %i.z = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.aa = getelementptr i8, ptr %1, i64 32        ; 2 uses
  %.val75 = load ptr, ptr %i.aa, align 8, !nonnull !5, !noundef !5
  %i.ab = getelementptr i8, ptr %1, i64 40        ; 2 uses
  %.val76 = load i64, ptr %i.ab, align 8, !noundef !5
  call void @_RINvMs16_NtCsaL1QbXo9JQH_3std4pathNtB7_4Path4joinReECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val75, i64 noundef %.val76, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !5, !noundef !5
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !noundef !5
  invoke void @_RNvNtNtCskuiImRAV2ip_9elfshaker4repo6remote12load_remotes(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef %i.af)
          to label %bb.c unwind label %bb.b

.body.thread166:                                  ; preds = %bb.cl, %bb.ck, %.body102, %bb.av, %.body, %.body.thread, %.body102.thread182, %bb.b
  %.pn71.pn = phi { ptr, i32 } [ %.pn71163, %.body.thread ], [ %.pn71, %.body102.thread182 ], [ %i.ag, %bb.b ], [ %lpad.thr_comm.split-lp, %.body ], [ %i.eo, %bb.av ], [ %i.go, %bb.cl ], [ %i.go, %bb.ck ], [ %lpad.thr_comm.split-lp187, %.body102 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.z) #20
          to label %common.resume unwind label %bb.cr

bb.b:                                             ; preds = %bb.a
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread166

bb.c:                                             ; preds = %bb.a
  %i.ah = load i64, ptr %i.x, align 8, !range !7, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.ah, -2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.525.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.522.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.424.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  store i64 %i.ah, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.co

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.am = load i64, ptr %i.al, align 8, !noundef !5 ; 5 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.h
  %.not.i.i = icmp ugt i64 %i.ar, %i.am
  br i1 %.not.i.i, label %.loopexit226, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.an = phi i64 [ %i.am, %bb.e ], [ %i.ar, %bb.f ] ; 2 uses
  %i.ao = invoke { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr15memrchr_aligned(i8 noundef 47, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ak, i64 noundef %i.an)
          to label %.noexc unwind label %.body.thread170.loopexit ; 2 uses

.noexc:                                           ; preds = %bb.g
  %i.ap = extractvalue { i64, i64 } %i.ao, 0
  %i.aq = trunc nuw i64 %i.ap to i1
  br i1 %i.aq, label %bb.h, label %.loopexit226

bb.h:                                             ; preds = %.noexc
  %i.ar = extractvalue { i64, i64 } %i.ao, 1      ; 6 uses
  %i.as = icmp ult i64 %i.ar, %i.an
  call void @llvm.assume(i1 %i.as)
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ar
  %lhsc.i = load i8, ptr %i.at, align 1, !alias.scope !505, !noalias !506
  %i.au = icmp eq i8 %lhsc.i, 47
  br i1 %i.au, label %bb.i, label %bb.f

.body102.thread182:                               ; preds = %.body102.thread, %bb.u
  %.pn71 = phi { ptr, i32 } [ %.pn67, %bb.u ], [ %.pn69177, %.body102.thread ] ; 2 uses
  %.sroa.016.0 = phi i1 [ %.sroa.016.4, %bb.u ], [ %.sroa.016.2178, %.body102.thread ]
  br i1 %.sroa.016.0, label %.body.thread, label %.body.thread166

.body.thread170.loopexit:                         ; preds = %bb.g
  %lpad.loopexit201 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread170.loopexit.split-lp:                ; preds = %.loopexit226, %bb.k
  %lpad.loopexit.split-lp202 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker.exit.i105
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread166

.loopexit226:                                     ; preds = %bb.f, %.noexc, %bb.i
  %.sink225 = phi ptr [ %i.ax, %bb.i ], [ %i.ak, %.noexc ], [ %i.ak, %bb.f ] ; 2 uses
  %.sink = phi i64 [ %4, %bb.i ], [ %i.am, %.noexc ], [ %i.am, %bb.f ] ; 6 uses
  store ptr %.sink225, ptr %i.w, align 8, !captures !507
  %i.av = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %.sink, ptr %i.av, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.sink, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.j unwind label %.body.thread170.loopexit.split-lp

bb.i:                                             ; preds = %bb.h
  %3 = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ar
  %.neg.le.i = xor i64 %i.ar, -1
  %4 = add i64 %i.am, %.neg.le.i
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 1
  br label %.loopexit226

bb.j:                                             ; preds = %.loopexit226
  %i.ay = load i64, ptr %i.b, align 8, !range !12, !noundef !5
  %i.az = trunc nuw i64 %i.ay to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !range !21, !noundef !5 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.az, label %bb.k, label %bb.l, !prof !11

bb.k:                                             ; preds = %bb.j
  %i.bd = load i64, ptr %i.bc, align 8
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.bb, i64 %i.bd) #24
          to label %bb.az unwind label %.body.thread170.loopexit.split-lp

bb.l:                                             ; preds = %bb.j
  %i.be = load ptr, ptr %i.bc, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.bf = icmp ule i64 %.sink, %i.bb
  call void @llvm.assume(i1 %i.bf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not52 = icmp eq i64 %.sink, 0
  br i1 %.not52, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.p, %bb.l
  store i64 %i.bb, ptr %i.t, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  store ptr %i.be, ptr %.sroa.427.0..sroa_idx, align 8
  %.sroa.628.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 4 uses
  store i64 %.sink, ptr %.sroa.628.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !508)
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t, i64 noundef 1)
          to label %bb.q unwind label %bb.n, !noalias !509

bb.n:                                             ; preds = %bb.m
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t) #20
          to label %.body.thread unwind label %bb.o, !noalias !509

bb.o:                                             ; preds = %bb.n
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !509
  unreachable

bb.p:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.be, ptr nonnull align 1 %.sink225, i64 %.sink, i1 false)
  br label %bb.m

bb.q:                                             ; preds = %bb.m
  %i.bi = load i64, ptr %.sroa.628.0..sroa_idx, align 8, !alias.scope !510, !noalias !509, !noundef !5 ; 2 uses
  %i.bj = icmp sgt i64 %i.bi, -1
  call void @llvm.assume(i1 %i.bj)
  %i.bk = load ptr, ptr %.sroa.427.0..sroa_idx, align 8, !alias.scope !510, !noalias !509, !nonnull !5, !noundef !5
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bi
  store i8 46, ptr %i.bl, align 1, !noalias !508
  %.pre.i.i = load i64, ptr %.sroa.628.0..sroa_idx, align 8, !alias.scope !510, !noalias !509
  %i.bm = add i64 %.pre.i.i, 1
  store i64 %i.bm, ptr %.sroa.628.0..sroa_idx, align 8, !alias.scope !510, !noalias !509
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !alias.scope !511, !noalias !512
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.experimental.noalias.scope.decl(metadata !513)
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u, i64 noundef 4)
          to label %bb.t unwind label %bb.r, !noalias !514

bb.r:                                             ; preds = %bb.q
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u) #20
          to label %.body.thread unwind label %bb.s, !noalias !514

bb.s:                                             ; preds = %bb.r
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !514
  unreachable

bb.t:                                             ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !515, !noalias !514, !noundef !5 ; 2 uses
  %i.br = icmp sgt i64 %i.bq, -1
  call void @llvm.assume(i1 %i.br)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !alias.scope !515, !noalias !514, !nonnull !5, !noundef !5
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bq
  store i32 1801675120, ptr %i.bu, align 1, !noalias !513
  %.pre.i.i87 = load i64, ptr %i.bp, align 8, !alias.scope !515, !noalias !514
  %i.bv = add i64 %.pre.i.i87, 4
  store i64 %i.bv, ptr %i.bp, align 8, !alias.scope !515, !noalias !514
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !alias.scope !516, !noalias !517
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  invoke void @_RNvMs1_NtCsk6GKf1Xiy0l_4ureq5agentNtB5_12AgentBuilder3new(ptr noalias nofree noundef nonnull sret([256 x i8]) align 8 captures(none) dereferenceable(256) %i.r)
          to label %bb.v unwind label %.body102.thread188

bb.u:                                             ; preds = %.body99
  br i1 %.sroa.015.2, label %.body102.thread, label %.body102.thread182

.body102.thread188:                               ; preds = %bb.at, %bb.v, %bb.t
  %.sroa.016.3.ph = phi i1 [ true, %bb.t ], [ true, %bb.v ], [ false, %bb.at ]
  %lpad.thr_comm186 = landingpad { ptr, i32 }
          cleanup
  br label %.body102.thread

.body102:                                         ; preds = %bb.cm
  %lpad.thr_comm.split-lp187 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread166

bb.v:                                             ; preds = %bb.t
  %i.bw = invoke { ptr, ptr } @_RNvMs1_NtCsk6GKf1Xiy0l_4ureq5agentNtB5_12AgentBuilder5build(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(256) %i.r)
          to label %bb.w unwind label %.body102.thread188 ; 2 uses

bb.w:                                             ; preds = %bb.v
  %i.bx = extractvalue { ptr, ptr } %i.bw, 0
  %i.by = extractvalue { ptr, ptr } %i.bw, 1
  store ptr %i.bx, ptr %i.s, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 9 uses
  store ptr %i.by, ptr %i.bz, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.v, ptr %i.n, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXsq_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.432.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull @67, ptr noundef nonnull %i.n)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskuiImRAV2ip_9elfshaker.exit unwind label %bb.x

.body99:                                          ; preds = %bb.ch, %bb.ci, %bb.an, %bb.ao, %bb.x, %.body93, %bb.y
  %.pn67 = phi { ptr, i32 } [ %i.cm, %bb.y ], [ %.pn65, %.body93 ], [ %i.dx, %bb.an ], [ %i.ca, %bb.x ], [ %i.dx, %bb.ao ], [ %i.gf, %bb.ci ], [ %i.gf, %bb.ch ] ; 2 uses
  %.sroa.016.4 = phi i1 [ true, %bb.y ], [ %.sroa.016.6, %.body93 ], [ false, %bb.an ], [ true, %bb.x ], [ false, %bb.ao ], [ false, %bb.ci ], [ false, %bb.ch ] ; 2 uses
  %.sroa.015.2 = phi i1 [ true, %bb.y ], [ %.sroa.015.4, %.body93 ], [ true, %bb.an ], [ true, %bb.x ], [ true, %bb.ao ], [ false, %bb.ci ], [ false, %bb.ch ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsk6GKf1Xiy0l_4ureq5agent5AgentECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(16) %i.s) #20
          to label %bb.u unwind label %bb.cr

bb.x:                                             ; preds = %bb.w
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.body99

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !nonnull !5, !noundef !5
  %i.cd = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ce = load i64, ptr %i.cd, align 8, !noundef !5
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cg = load ptr, ptr %i.cf, align 8, !nonnull !5, !noundef !5
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !5, !align !8, !noundef !5
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  %i.ck = load ptr, ptr %i.cj, align 8, !invariant.load !5, !nonnull !5
  %i.cl = invoke { ptr, ptr } %i.ck(ptr noundef nonnull %i.cg, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cc, i64 noundef %i.ce)
          to label %bb.z unwind label %bb.y       ; 2 uses

bb.y:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskuiImRAV2ip_9elfshaker.exit
  %i.cm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p) #20
          to label %.body99 unwind label %bb.cr

bb.z:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskuiImRAV2ip_9elfshaker.exit
  %i.cn = extractvalue { ptr, ptr } %i.cl, 0      ; 10 uses
  %i.co = extractvalue { ptr, ptr } %i.cl, 1      ; 14 uses
  store ptr %i.cn, ptr %i.q, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.co, ptr %i.cp, align 8
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker.exit.i unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.body93 unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker.exit.i: ; preds = %bb.z
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit unwind label %bb.ac

.body93:                                          ; preds = %bb.ad, %bb.ac, %bb.aa
  %.pn65 = phi { ptr, i32 } [ %i.cq, %bb.aa ], [ %i.cs, %bb.ac ], [ %.pn63, %bb.ad ]
  %.sroa.016.6 = phi i1 [ true, %bb.aa ], [ %.sroa.016.7, %bb.ac ], [ false, %bb.ad ]
  %.sroa.015.4 = phi i1 [ true, %bb.aa ], [ %.sroa.015.5, %bb.ac ], [ %.sroa.015.6, %bb.ad ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskuiImRAV2ip_9elfshaker8progress16ProgressReporterEBF_(ptr %i.cn, ptr %i.co) #20
          to label %.body99 unwind label %bb.cr

bb.ac:                                            ; preds = %bb.cc, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo6remote11RemoteIndexENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker.exit.i, %bb.ag, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo6remote11RemoteIndexEEB1v_.exit98
  %.sroa.016.7 = phi i1 [ false, %bb.cc ], [ false, %bb.ag ], [ false, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo6remote11RemoteIndexEEB1v_.exit98 ], [ false, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo6remote11RemoteIndexENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread ], [ true, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker.exit.i ]
end_hunk_0
