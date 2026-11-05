Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/salsa-c68a43423e9593bc.salsa.9940d987241daddc-cgu.06?download=true
inline.NumInlined: 161
inline.NumDeleted: 95
begin_hunk_0_@_RNvMs_NtNtCsd9Lm8bEdjjY_5salsa5table4memoNtB4_15LazyMemoEntries10initialize:bb.a

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo9MemoEntryEEB1h_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.02.0 = phi ptr [ %i.d, %bb.a ], [ %i.g, %bb.b ], [ %i.g, %bb.c ]
  %i.k = load i64, ptr %i.a, align 8, !noundef !42
  %i.l = insertvalue { ptr, i64 } poison, ptr %.sroa.02.0, 0
  %i.m = insertvalue { ptr, i64 } %i.l, i64 %i.k, 1
  ret { ptr, i64 } %i.m
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
define void @_RNvNtNtCsd9Lm8bEdjjY_5salsa5table4memo18type_assert_failed(i32 noundef %0) unnamed_addr #5 !guid !152 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %0, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsn_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_19MemoIngredientIndexNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @15, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCsd9Lm8bEdjjY_5salsa8function7execute18try_complete_query(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %3, i16 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality !guid !193 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 8 uses
  %i.f = alloca [12 x i8], align 4                ; 4 uses
  %i.g = alloca [88 x i8], align 8                ; 12 uses
  %i.h = alloca [72 x i8], align 8                ; 4 uses
  %i.i = alloca [12 x i8], align 4                ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [72 x i8], align 8                ; 6 uses
  %i.l = alloca [12 x i8], align 4                ; 7 uses
  %i.m = alloca [12 x i8], align 4                ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [48 x i8], align 8                ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 15 uses
  %i.r = alloca [12 x i8], align 4                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.r, ptr noundef nonnull align 8 dereferenceable(12) %i.s, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.t = invoke noundef i64 @_RNvMss_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB5_16ActiveQueryGuard16take_cycle_heads(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.b unwind label %.split.thread ; 2 uses

.split.thread:                                    ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

.noexc24:                                         ; preds = %bb.q, %.body
  br i1 %.sroa.07.2.lpad-body, label %bb.az, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsd9Lm8bEdjjY_5salsa11zalsa_local16ActiveQueryGuardEBF_.exit

bb.b:                                             ; preds = %bb.a
  store i64 %i.t, ptr %i.q, align 8
  %.cast = inttoptr i64 %i.t to ptr
  %i.v = load i64, ptr %.cast, align 8, !noundef !42
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.m, ptr noundef nonnull align 4 dereferenceable(12) %i.r, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !194
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store i64 0, ptr %i.x, align 8, !noalias !194
  %i.y = invoke { ptr, ptr } @_RNvXs9_NtCsd9Lm8bEdjjY_5salsa5cycleRNtB5_10CycleHeadsNtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12IntoIterator9into_iter(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !195 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.z = extractvalue { ptr, ptr } %i.y, 0
  %i.aa = extractvalue { ptr, ptr } %i.y, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !194
  store ptr %i.z, ptr %i.j, align 8, !noalias !194
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.aa, ptr %i.ab, align 8, !noalias !194
  br label %bb.e

bb.e:                                             ; preds = %bb.o, %bb.d
  %.sroa.02.0.i = phi i1 [ false, %bb.d ], [ %i.ba, %bb.o ] ; 2 uses
  %.sroa.0.0.i = phi i16 [ %4, %bb.d ], [ %..i.i, %bb.o ] ; 2 uses
  %i.ac = invoke noundef align 4 ptr @_RNvXs6_NtCsd9Lm8bEdjjY_5salsa5cycleNtB5_18CycleHeadsIteratorNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !195 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !194
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.ac, i64 12, i1 false), !noalias !195
  %i.ad = invoke fastcc { i16, i1 } @_RNvNvNtNtCsd9Lm8bEdjjY_5salsa8function7execute23collect_all_cycle_heads17collect_recursive(ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(12) %i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q, ptr noalias nofree noundef align 8 dereferenceable(72) %i.k)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !194
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.h, ptr noundef nonnull align 8 dereferenceable(72) %i.k, i64 72, i1 false), !noalias !194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !194
  invoke void @_RNvXsM_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecATNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexNtNtBN_5cycle14IterationStampEj4_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12IntoIterator9into_iterBN_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.h)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !194
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 72 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 80 ; 2 uses
  %i.ag = load i64, ptr %i.ae, align 8, !noalias !194, !noundef !42 ; 2 uses
  %i.ah = load i64, ptr %i.af, align 8, !noalias !194, !noundef !42
  %i.ai = icmp eq i64 %i.ag, %i.ah
  br i1 %i.ai, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  br label %bb.l

._crit_edge.i:                                    ; preds = %bb.m, %.noexc
  invoke void @_RNvXsG_Csjpcu9PwIgok_8smallvecINtB5_8IntoIterATNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexNtNtBN_5cycle14IterationStampEj4_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.g)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8IntoIterATNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexNtNtB1g_5cycle14IterationStampEj4_EEB1g_.exit.i unwind label %bb.i, !noalias !195

bb.i:                                             ; preds = %._crit_edge.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecATNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexNtNtBN_5cycle14IterationStampEj4_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.g)
          to label %.body unwind label %bb.j, !noalias !195

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8IntoIterATNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexNtNtB1g_5cycle14IterationStampEj4_EEB1g_.exit.i: ; preds = %._crit_edge.i
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecATNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexNtNtBN_5cycle14IterationStampEj4_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.g)
          to label %bb.r unwind label %.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #19, !noalias !195
  unreachable

bb.k:                                             ; preds = %bb.l
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8IntoIterATNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexNtNtB1g_5cycle14IterationStampEj4_EEB1g_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.g) #20
          to label %.body unwind label %bb.n, !noalias !195

bb.l:                                             ; preds = %bb.m, %.lr.ph.i
  %i.an = phi i64 [ %i.ag, %.lr.ph.i ], [ %i.au, %bb.m ] ; 2 uses
  %i.ao = add i64 %i.an, 1
  store i64 %i.ao, ptr %i.ae, align 8, !noalias !194
  %i.ap = load i64, ptr %i.aj, align 8, !alias.scope !196, !noalias !194, !noundef !42
  %i.aq = icmp ugt i64 %i.ap, 4
  %i.ar = load ptr, ptr %i.g, align 8, !alias.scope !196, !noalias !194, !nonnull !42
  %.sink11.i.i = select i1 %i.aq, ptr %i.ar, ptr %i.g
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %.sink11.i.i, i64 %i.an ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !194
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.f, ptr noundef nonnull align 4 dereferenceable(12) %i.as, i64 12, i1 false), !noalias !195
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  %.sroa.4.0.copyload.i = load i16, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !195
  %i.at = invoke noundef zeroext i1 @_RNvMs4_NtCsd9Lm8bEdjjY_5salsa5cycleNtB5_10CycleHeads6insert(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.f, i16 noundef %.sroa.4.0.copyload.i)
          to label %bb.m unwind label %bb.k, !noalias !195 ; 0 uses

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !194
  %i.au = load i64, ptr %i.ae, align 8, !noalias !194, !noundef !42 ; 2 uses
  %i.av = load i64, ptr %i.af, align 8, !noalias !194, !noundef !42
  %i.aw = icmp eq i64 %i.au, %i.av
  br i1 %i.aw, label %._crit_edge.i, label %bb.l

bb.n:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.k
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #19, !noalias !195
  unreachable

bb.o:                                             ; preds = %bb.g
  %i.ay = extractvalue { i16, i1 } %i.ad, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !194
  %..i.i = call noundef i16 @llvm.umax.i16(i16 %i.ay, i16 %.sroa.0.0.i)
  %i.az = extractvalue { i16, i1 } %i.ad, 1
  %i.ba = or i1 %.sroa.02.0.i, %i.az
  br label %bb.e

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.g, %bb.e, %bb.c
  %lpad.loopexit.split-lp222 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecATNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexNtNtBN_5cycle14IterationStampEj4_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.k)
          to label %.body unwind label %bb.n, !noalias !195

bb.p:                                             ; preds = %bb.b
  %i.bb = and i16 %4, 255
  %i.bc = icmp eq i16 %i.bb, 0
  br i1 %i.bc, label %bb.av, label %bb.ao

.loopexit:                                        ; preds = %bb.aa, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldRNtNtCsd9Lm8bEdjjY_5salsa5cycle9CycleHeaduINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs4_B18_NtB18_10CycleHeads11iter_not_eq0NCINvNvNtNtNtB8_6traits12double_ended19DoubleEndedIterator5rfind5checkB15_NCNvNtNtB1a_8function7execute11outer_cycles_0E0E0B1a_.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.am, %bb.av, %bb.h, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8IntoIterATNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexNtNtB1g_5cycle14IterationStampEj4_EEB1g_.exit.i, %bb.x, %.noexc30, %6, %bb.ar, %bb.as, %bb.at, %.noexc39, %bb.au
  %.sroa.07.2.ph = phi i1 [ true, %bb.as ], [ true, %bb.ar ], [ true, %6 ], [ true, %.noexc39 ], [ true, %.noexc30 ], [ true, %bb.x ], [ true, %bb.h ], [ true, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8IntoIterATNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexNtNtB1g_5cycle14IterationStampEj4_EEB1g_.exit.i ], [ true, %bb.at ], [ true, %bb.am ], [ true, %bb.au ], [ false, %bb.av ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i25.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ai, %bb.i, %bb.k, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.sroa.07.2.lpad-body = phi i1 [ true, %bb.i ], [ true, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ true, %bb.k ], [ true, %.loopexit.split-lp.loopexit.split-lp.i25.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ true, %bb.ai ], [ true, %.loopexit ], [ %.sroa.07.2.ph, %.loopexit.split-lp ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.ak, %bb.i ], [ %lpad.loopexit.split-lp222, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.am, %bb.k ], [ %lpad.loopexit.split-lp215, %.loopexit.split-lp.loopexit.split-lp.i25.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %eh.lpad-body.i.i.i.i.i.i.i.i, %bb.ai ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.bd = load ptr, ptr %i.q, align 8, !alias.scope !197, !nonnull !42, !noundef !42
  %i.be = icmp eq ptr %i.bd, @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER
  br i1 %i.be, label %.noexc24, label %bb.q, !prof !43

bb.q:                                             ; preds = %.body
  invoke void @_RINvNvXs6_CsbdtVtHYmo6x_8thin_vecINtB8_7ThinVecpENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop18drop_non_singletonNtNtCsd9Lm8bEdjjY_5salsa5cycle9CycleHeadEB1R_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q) #18
          to label %.noexc24 unwind label %bb.ay

bb.r:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8IntoIterATNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexNtNtB1g_5cycle14IterationStampEj4_EEB1g_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !42, !align !47, !noundef !42 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.l, ptr noundef nonnull align 4 dereferenceable(12) %i.r, i64 12, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !198)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 8 uses
  %i.bi = load i64, ptr %i.bh, align 8, !noalias !199, !noundef !42 ; 3 uses
  %i.bj = icmp ult i64 %i.bi, 9223372036854775807
  call void @llvm.assume(i1 %i.bj)
  %i.bk = add nuw nsw i64 %i.bi, 1
  store i64 %i.bk, ptr %i.bh, align 8, !noalias !199
  call void @llvm.experimental.noalias.scope.decl(metadata !200)
  call void @llvm.experimental.noalias.scope.decl(metadata !201)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !201, !noalias !202, !noundef !42 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !201, !noalias !202, !noundef !42 ; 2 uses
  %.not.i.i = icmp ugt i64 %i.bm, %i.bo
  br i1 %.not.i.i, label %bb.s, label %bb.t, !prof !203

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bm, i64 noundef %i.bo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #22
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i25.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !204

.noexc.i:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !alias.scope !201, !noalias !202, !nonnull !42, !noundef !42 ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %i.bm, 152
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !205)
  %i.bs = icmp eq i64 %i.bm, 0
  br i1 %i.bs, label %_RINvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB5_10ZalsaLocal26with_query_stack_uncheckedINtNtCshzWfHUSfYae_4core6option6OptionNtNtB7_3key16DatabaseKeyIndexENCNvNtNtB7_8function7execute11outer_cycle0EB7_.exit.thread.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.t
  %i.bt = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !alias.scope !206, !noundef !42
  %i.bv = load i32, ptr %i.l, align 4, !range !52, !alias.scope !206
  %i.bw = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.bx = load i32, ptr %i.bw, align 4, !alias.scope !206
  br label %bb.u

bb.u:                                             ; preds = %_RNCNCNvNtNtCsd9Lm8bEdjjY_5salsa8function7execute11outer_cycle00B9_.exit.thread.i.i.i, %.lr.ph.i.i.i
  %i.by = phi ptr [ %i.bq, %.lr.ph.i.i.i ], [ %i.bz, %_RNCNCNvNtNtCsd9Lm8bEdjjY_5salsa8function7execute11outer_cycle00B9_.exit.thread.i.i.i ] ; 6 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 152 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 140
  %i.cb = load i32, ptr %i.ca, align 4, !noalias !207, !noundef !42
  %i.cc = icmp eq i32 %i.cb, %i.bu
  br i1 %i.cc, label %bb.v, label %_RNCNCNvNtNtCsd9Lm8bEdjjY_5salsa8function7execute11outer_cycle00B9_.exit.i.i.i

bb.v:                                             ; preds = %bb.u
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 136
  %i.ce = load i32, ptr %i.cd, align 8, !range !52, !noalias !207, !noundef !42
  %i.cf = icmp eq i32 %i.ce, %i.bv
  br i1 %i.cf, label %bb.w, label %_RNCNCNvNtNtCsd9Lm8bEdjjY_5salsa8function7execute11outer_cycle00B9_.exit.i.i.i

bb.w:                                             ; preds = %bb.v
  %i.cg = getelementptr inbounds nuw i8, ptr %i.by, i64 144
  %i.ch = load i32, ptr %i.cg, align 8, !noalias !207, !noundef !42
  %.not.i.i.i.i = icmp eq i32 %i.ch, %i.bx
  br i1 %.not.i.i.i.i, label %_RNCNCNvNtNtCsd9Lm8bEdjjY_5salsa8function7execute11outer_cycle00B9_.exit.thread.i.i.i, label %_RNCNCNvNtNtCsd9Lm8bEdjjY_5salsa8function7execute11outer_cycle00B9_.exit.i.i.i

_RNCNCNvNtNtCsd9Lm8bEdjjY_5salsa8function7execute11outer_cycle00B9_.exit.i.i.i: ; preds = %bb.w, %bb.v, %bb.u
  %i.ci = getelementptr inbounds nuw i8, ptr %i.by, i64 136 ; 2 uses
  %i.cj = invoke noundef zeroext i1 @_RNvMs4_NtCsd9Lm8bEdjjY_5salsa5cycleNtB5_10CycleHeads8contains(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.ci)
          to label %.noexc5.i unwind label %.loopexit.split-lp.loopexit.split-lp.i25.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !204

.noexc5.i:                                        ; preds = %_RNCNCNvNtNtCsd9Lm8bEdjjY_5salsa8function7execute11outer_cycle00B9_.exit.i.i.i
  br i1 %i.cj, label %_RINvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB5_10ZalsaLocal26with_query_stack_uncheckedINtNtCshzWfHUSfYae_4core6option6OptionNtNtB7_3key16DatabaseKeyIndexENCNvNtNtB7_8function7execute11outer_cycle0EB7_.exit.i, label %_RNCNCNvNtNtCsd9Lm8bEdjjY_5salsa8function7execute11outer_cycle00B9_.exit.thread.i.i.i

_RNCNCNvNtNtCsd9Lm8bEdjjY_5salsa8function7execute11outer_cycle00B9_.exit.thread.i.i.i: ; preds = %.noexc5.i, %bb.w
  %i.ck = icmp eq ptr %i.bz, %i.br
  br i1 %i.ck, label %_RINvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB5_10ZalsaLocal26with_query_stack_uncheckedINtNtCshzWfHUSfYae_4core6option6OptionNtNtB7_3key16DatabaseKeyIndexENCNvNtNtB7_8function7execute11outer_cycle0EB7_.exit.thread.loopexit.i, label %bb.u

_RINvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB5_10ZalsaLocal26with_query_stack_uncheckedINtNtCshzWfHUSfYae_4core6option6OptionNtNtB7_3key16DatabaseKeyIndexENCNvNtNtB7_8function7execute11outer_cycle0EB7_.exit.thread.loopexit.i: ; preds = %_RNCNCNvNtNtCsd9Lm8bEdjjY_5salsa8function7execute11outer_cycle00B9_.exit.thread.i.i.i
  %.pre.i = load i64, ptr %i.bh, align 8, !noalias !202
  %i.cl = add i64 %.pre.i, -1
  br label %_RINvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB5_10ZalsaLocal26with_query_stack_uncheckedINtNtCshzWfHUSfYae_4core6option6OptionNtNtB7_3key16DatabaseKeyIndexENCNvNtNtB7_8function7execute11outer_cycle0EB7_.exit.thread.i

_RINvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB5_10ZalsaLocal26with_query_stack_uncheckedINtNtCshzWfHUSfYae_4core6option6OptionNtNtB7_3key16DatabaseKeyIndexENCNvNtNtB7_8function7execute11outer_cycle0EB7_.exit.thread.i: ; preds = %_RINvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB5_10ZalsaLocal26with_query_stack_uncheckedINtNtCshzWfHUSfYae_4core6option6OptionNtNtB7_3key16DatabaseKeyIndexENCNvNtNtB7_8function7execute11outer_cycle0EB7_.exit.thread.loopexit.i, %bb.t
  %i.cm = phi i64 [ %i.cl, %_RINvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB5_10ZalsaLocal26with_query_stack_uncheckedINtNtCshzWfHUSfYae_4core6option6OptionNtNtB7_3key16DatabaseKeyIndexENCNvNtNtB7_8function7execute11outer_cycle0EB7_.exit.thread.loopexit.i ], [ %i.bi, %bb.t ]
  store i64 %i.cm, ptr %i.bh, align 8, !noalias !202
  br label %bb.x

.loopexit.split-lp.loopexit.split-lp.i25.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNCNCNvNtNtCsd9Lm8bEdjjY_5salsa8function7execute11outer_cycle00B9_.exit.i.i.i, %bb.s
  %lpad.loopexit.split-lp215 = landingpad { ptr, i32 }
          cleanup
  %i.cn = load i64, ptr %i.bh, align 8, !noalias !202, !noundef !42
  %i.co = add i64 %i.cn, -1
  store i64 %i.co, ptr %i.bh, align 8, !noalias !202
  br label %.body

_RINvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB5_10ZalsaLocal26with_query_stack_uncheckedINtNtCshzWfHUSfYae_4core6option6OptionNtNtB7_3key16DatabaseKeyIndexENCNvNtNtB7_8function7execute11outer_cycle0EB7_.exit.i: ; preds = %.noexc5.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.by, i64 140
  %.sroa.0.0.copyload46 = load i32, ptr %i.ci, align 8, !noalias !208 ; 2 uses
  %.sroa.12.0.copyload52 = load i64, ptr %i.cp, align 4, !noalias !208 ; 2 uses
  %i.cq = load i64, ptr %i.bh, align 8, !noalias !202, !noundef !42
  %i.cr = add i64 %i.cq, -1
  store i64 %i.cr, ptr %i.bh, align 8, !noalias !202
  %.not.i26 = icmp eq i32 %.sroa.0.0.copyload46, 0
  br i1 %.not.i26, label %bb.x, label %_RNvNtNtCsd9Lm8bEdjjY_5salsa8function7execute11outer_cycle.exit

bb.x:                                             ; preds = %_RINvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB5_10ZalsaLocal26with_query_stack_uncheckedINtNtCshzWfHUSfYae_4core6option6OptionNtNtB7_3key16DatabaseKeyIndexENCNvNtNtB7_8function7execute11outer_cycle0EB7_.exit.i, %_RINvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB5_10ZalsaLocal26with_query_stack_uncheckedINtNtCshzWfHUSfYae_4core6option6OptionNtNtB7_3key16DatabaseKeyIndexENCNvNtNtB7_8function7execute11outer_cycle0EB7_.exit.thread.i
  %.sroa.12.0 = phi i64 [ undef, %_RINvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB5_10ZalsaLocal26with_query_stack_uncheckedINtNtCshzWfHUSfYae_4core6option6OptionNtNtB7_3key16DatabaseKeyIndexENCNvNtNtB7_8function7execute11outer_cycle0EB7_.exit.thread.i ], [ %.sroa.12.0.copyload52, %_RINvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB5_10ZalsaLocal26with_query_stack_uncheckedINtNtCshzWfHUSfYae_4core6option6OptionNtNtB7_3key16DatabaseKeyIndexENCNvNtNtB7_8function7execute11outer_cycle0EB7_.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !202
  invoke void @_RNvMs4_NtCsd9Lm8bEdjjY_5salsa5cycleNtB5_10CycleHeads11iter_not_eq(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.l)
          to label %.noexc30 unwind label %.loopexit.split-lp

.noexc30:                                         ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !209)
  %i.cs = invoke noundef align 4 ptr @_RNvXs8_NtCsd9Lm8bEdjjY_5salsa5cycleNtB5_18CycleHeadsIteratorNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %.noexc31 unwind label %.loopexit.split-lp ; 2 uses

.noexc31:                                         ; preds = %.noexc30
  %.not24.i.i = icmp eq ptr %i.cs, null
  br i1 %.not24.i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc31
  %i.ct = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.cv = load i32, ptr %i.cu, align 4, !alias.scope !210, !noalias !202, !noundef !42
  %i.cw = load i32, ptr %i.ct, align 8, !range !52, !alias.scope !209, !noalias !202
  %i.cx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.cy = load i32, ptr %i.cx, align 8, !alias.scope !209, !noalias !202
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.db = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  br label %bb.y

bb.y:                                             ; preds = %.noexc34, %.lr.ph.i.i
  %i.dd = phi ptr [ %i.cs, %.lr.ph.i.i ], [ %i.el, %.noexc34 ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !211)
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.df = load i32, ptr %i.de, align 4, !noalias !212, !noundef !42 ; 2 uses
  %i.dg = icmp eq i32 %i.df, %i.cv
  br i1 %i.dg, label %bb.z, label %_RNCNvMs4_NtCsd9Lm8bEdjjY_5salsa5cycleNtB7_10CycleHeads11iter_not_eq0B9_.exit.thread.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.dh = load i32, ptr %i.dd, align 4, !range !52, !noalias !212, !noundef !42
  %i.di = icmp eq i32 %i.dh, %i.cw
  br i1 %i.di, label %_RNCNvMs4_NtCsd9Lm8bEdjjY_5salsa5cycleNtB7_10CycleHeads11iter_not_eq0B9_.exit.i.i.i, label %_RNCNvMs4_NtCsd9Lm8bEdjjY_5salsa5cycleNtB7_10CycleHeads11iter_not_eq0B9_.exit.thread.i.i.i

_RNCNvMs4_NtCsd9Lm8bEdjjY_5salsa5cycleNtB7_10CycleHeads11iter_not_eq0B9_.exit.i.i.i: ; preds = %bb.z
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dk = load i32, ptr %i.dj, align 4, !noalias !212, !noundef !42
  %.not.i.i.i = icmp eq i32 %i.dk, %i.cy
  br i1 %.not.i.i.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldRNtNtCsd9Lm8bEdjjY_5salsa5cycle9CycleHeaduINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs4_B18_NtB18_10CycleHeads11iter_not_eq0NCINvNvNtNtNtB8_6traits12double_ended19DoubleEndedIterator5rfind5checkB15_NCNvNtNtB1a_8function7execute11outer_cycles_0E0E0B1a_.exit.i.i, label %_RNCNvMs4_NtCsd9Lm8bEdjjY_5salsa5cycleNtB7_10CycleHeads11iter_not_eq0B9_.exit.thread.i.i.i

_RNCNvMs4_NtCsd9Lm8bEdjjY_5salsa5cycleNtB7_10CycleHeads11iter_not_eq0B9_.exit.thread.i.i.i: ; preds = %_RNCNvMs4_NtCsd9Lm8bEdjjY_5salsa5cycleNtB7_10CycleHeads11iter_not_eq0B9_.exit.i.i.i, %bb.z, %bb.y
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dm = load i32, ptr %i.dl, align 4, !noalias !213, !noundef !42
  %i.dn = zext i32 %i.dm to i64                   ; 3 uses
  %i.do = load i64, ptr %i.cz, align 8, !noalias !214, !noundef !42 ; 2 uses
  %i.dp = icmp ugt i64 %i.do, %i.dn
  br i1 %i.dp, label %bb.aa, label %6

bb.aa:                                            ; preds = %_RNCNvMs4_NtCsd9Lm8bEdjjY_5salsa5cycleNtB7_10CycleHeads11iter_not_eq0B9_.exit.thread.i.i.i
  %i.dq = load ptr, ptr %i.da, align 8, !noalias !214, !nonnull !42, !noundef !42
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr %i.dq, i64 %i.dn ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !noalias !213, !nonnull !42, !noundef !42
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !noalias !213, !nonnull !42, !align !47, !noundef !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !214
  %i.dv = load i32, ptr %i.dd, align 4, !range !52, !noalias !213, !noundef !42
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 96
  %i.dx = load ptr, ptr %i.dw, align 8, !invariant.load !42, !noalias !213, !nonnull !42
  invoke void %i.dx(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noundef nonnull %i.ds, ptr noundef nonnull align 8 %1, i32 noundef %i.dv, i32 noundef %i.df) #23
          to label %.noexc32.a unwind label %.loopexit, !inline_history !184

.noexc32.a:                                       ; preds = %bb.aa
  %5 = load i8, ptr %i.d, align 8, !range !45, !noalias !214, !noundef !42 ; 2 uses
  %.val2.i.i.i.i.i = load ptr, ptr %i.db, align 8, !noalias !214 ; 5 uses
  %i.dy = icmp eq i8 %5, 0
  br i1 %i.dy, label %bb.ab, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtCsd9Lm8bEdjjY_5salsa5cycle9CycleHeadNCNvNtNtB1z_8function7execute11outer_cycles_0E0B1z_.exit.i.i.i

bb.ab:                                            ; preds = %.noexc32.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i.i.i.i) ]
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %.val2.i.i.i.i.i, align 8, !noalias !213, !nonnull !42, !align !47, !noundef !42 ; 2 uses
  %i.dz = getelementptr i8, ptr %.val2.i.i.i.i.i, i64 8
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.dz, align 8, !noalias !213 ; 6 uses
  %i.ea = cmpxchg ptr %.val.i.i.i.i.i.i.i.i, i8 1, i8 0 release monotonic, align 1, !noalias !213
  %i.eb = extractvalue { i8, i1 } %i.ea, 1
  br i1 %i.eb, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api5mutex10MutexGuardNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexNtNtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graph15DependencyGraphEEB2f_.exit.i.i.i.i.i.i.i.i.i, label %bb.ac, !prof !43

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvMs1_NtCsaWIbZW7RmAr_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i, i1 noundef zeroext false)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api5mutex10MutexGuardNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexNtNtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graph15DependencyGraphEEB2f_.exit.i.i.i.i.i.i.i.i.i unwind label %bb.ad, !noalias !213

bb.ad:                                            ; preds = %bb.ac
  %i.ec = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i.i.i.i.i.i) ]
  %i.ed = cmpxchg ptr %.val1.i.i.i.i.i.i.i.i, i8 1, i8 0 release monotonic, align 1, !noalias !213
  %i.ee = extractvalue { i8, i1 } %i.ed, 1
  br i1 %i.ee, label %bb.ai, label %bb.ae, !prof !43

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvMs1_NtCsaWIbZW7RmAr_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i, i1 noundef zeroext false)
          to label %bb.ai unwind label %bb.ag, !noalias !213

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api5mutex10MutexGuardNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexNtNtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graph15DependencyGraphEEB2f_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.ac, %bb.ab
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i.i.i.i.i.i) ]
  %i.ef = cmpxchg ptr %.val1.i.i.i.i.i.i.i.i, i8 1, i8 0 release monotonic, align 1, !noalias !213
  %i.eg = extractvalue { i8, i1 } %i.ef, 1
  br i1 %i.eg, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtCsd9Lm8bEdjjY_5salsa5cycle9CycleHeadNCNvNtNtB1z_8function7execute11outer_cycles_0E0B1z_.exit.i.thread.i.i, label %bb.af, !prof !43

bb.af:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api5mutex10MutexGuardNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexNtNtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graph15DependencyGraphEEB2f_.exit.i.i.i.i.i.i.i.i.i
  invoke void @_RNvMs1_NtCsaWIbZW7RmAr_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i, i1 noundef zeroext false)
          to label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtCsd9Lm8bEdjjY_5salsa5cycle9CycleHeadNCNvNtNtB1z_8function7execute11outer_cycles_0E0B1z_.exit.i.thread.i.i unwind label %bb.ah, !noalias !213

bb.ag:                                            ; preds = %bb.ae
  %i.eh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #19, !noalias !213
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ae, %bb.ad
  %eh.lpad-body.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ei, %bb.ah ], [ %i.ec, %bb.ae ], [ %i.ec, %bb.ad ]
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i.i.i, i64 noundef 48, i64 noundef 8) #21, !noalias !213
  br label %.body

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtCsd9Lm8bEdjjY_5salsa5cycle9CycleHeadNCNvNtNtB1z_8function7execute11outer_cycles_0E0B1z_.exit.i.thread.i.i: ; preds = %bb.af, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api5mutex10MutexGuardNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexNtNtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graph15DependencyGraphEEB2f_.exit.i.i.i.i.i.i.i.i.i
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i.i.i, i64 noundef 48, i64 noundef 8) #21, !noalias !213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !214
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldRNtNtCsd9Lm8bEdjjY_5salsa5cycle9CycleHeaduINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs4_B18_NtB18_10CycleHeads11iter_not_eq0NCINvNvNtNtNtB8_6traits12double_ended19DoubleEndedIterator5rfind5checkB15_NCNvNtNtB1a_8function7execute11outer_cycles_0E0E0B1a_.exit.i.i

6:                                                ; preds = %_RNCNvMs4_NtCsd9Lm8bEdjjY_5salsa5cycleNtB7_10CycleHeads11iter_not_eq0B9_.exit.thread.i.i.i
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.dn, i64 noundef %i.do, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #22
          to label %.noexc33.a unwind label %.loopexit.split-lp

.noexc33.a:                                       ; preds = %6
  unreachable

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtCsd9Lm8bEdjjY_5salsa5cycle9CycleHeadNCNvNtNtB1z_8function7execute11outer_cycles_0E0B1z_.exit.i.i.i: ; preds = %.noexc32.a
  %i.ej = load i8, ptr %i.dc, align 1, !range !215, !noalias !214
  %7 = icmp ne i8 %5, 2
  %i.ek = trunc nuw i8 %i.ej to i1
  %.sroa.0.0.i.not.i.i.i.i = select i1 %7, i1 true, i1 %i.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !214
  br i1 %.sroa.0.0.i.not.i.i.i.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldRNtNtCsd9Lm8bEdjjY_5salsa5cycle9CycleHeaduINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs4_B18_NtB18_10CycleHeads11iter_not_eq0NCINvNvNtNtNtB8_6traits12double_ended19DoubleEndedIterator5rfind5checkB15_NCNvNtNtB1a_8function7execute11outer_cycles_0E0E0B1a_.exit.i.i, label %_RINvYNtNtCsd9Lm8bEdjjY_5salsa5cycle18CycleHeadsIteratorNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNtNtBX_8adapters6filter15filter_try_foldRNtB5_9CycleHeaduINtNtNtBZ_3ops12control_flow11ControlFlowB2X_ENCNvMs4_B5_NtB5_10CycleHeads11iter_not_eq0NCINvNvBR_5rfind5checkB2X_NCNvNtNtB7_8function7execute11outer_cycles_0E0E0B3e_EB7_.exit.i

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldRNtNtCsd9Lm8bEdjjY_5salsa5cycle9CycleHeaduINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs4_B18_NtB18_10CycleHeads11iter_not_eq0NCINvNvNtNtNtB8_6traits12double_ended19DoubleEndedIterator5rfind5checkB15_NCNvNtNtB1a_8function7execute11outer_cycles_0E0E0B1a_.exit.i.i: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtCsd9Lm8bEdjjY_5salsa5cycle9CycleHeadNCNvNtNtB1z_8function7execute11outer_cycles_0E0B1z_.exit.i.i.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtCsd9Lm8bEdjjY_5salsa5cycle9CycleHeadNCNvNtNtB1z_8function7execute11outer_cycles_0E0B1z_.exit.i.thread.i.i, %_RNCNvMs4_NtCsd9Lm8bEdjjY_5salsa5cycleNtB7_10CycleHeads11iter_not_eq0B9_.exit.i.i.i
  %i.el = invoke noundef align 4 ptr @_RNvXs8_NtCsd9Lm8bEdjjY_5salsa5cycleNtB5_18CycleHeadsIteratorNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %.noexc34 unwind label %.loopexit ; 2 uses

.noexc34:                                         ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldRNtNtCsd9Lm8bEdjjY_5salsa5cycle9CycleHeaduINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs4_B18_NtB18_10CycleHeads11iter_not_eq0NCINvNvNtNtNtB8_6traits12double_ended19DoubleEndedIterator5rfind5checkB15_NCNvNtNtB1a_8function7execute11outer_cycles_0E0E0B1a_.exit.i.i
  %.not.i6.i = icmp eq ptr %i.el, null
  br i1 %.not.i6.i, label %.loopexit.i, label %bb.y

_RINvYNtNtCsd9Lm8bEdjjY_5salsa5cycle18CycleHeadsIteratorNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNtNtBX_8adapters6filter15filter_try_foldRNtB5_9CycleHeaduINtNtNtBZ_3ops12control_flow11ControlFlowB2X_ENCNvMs4_B5_NtB5_10CycleHeads11iter_not_eq0NCINvNvBR_5rfind5checkB2X_NCNvNtNtB7_8function7execute11outer_cycles_0E0E0B3e_EB7_.exit.i: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtCsd9Lm8bEdjjY_5salsa5cycle9CycleHeadNCNvNtNtB1z_8function7execute11outer_cycles_0E0B1z_.exit.i.i.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %.sroa.0.0.copyload45 = load i32, ptr %i.dd, align 4, !noalias !198
  %.sroa.12.0.copyload50 = load i64, ptr %i.em, align 4, !noalias !198
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.noexc34, %.noexc31, %_RINvYNtNtCsd9Lm8bEdjjY_5salsa5cycle18CycleHeadsIteratorNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNtNtBX_8adapters6filter15filter_try_foldRNtB5_9CycleHeaduINtNtNtBZ_3ops12control_flow11ControlFlowB2X_ENCNvMs4_B5_NtB5_10CycleHeads11iter_not_eq0NCINvNvBR_5rfind5checkB2X_NCNvNtNtB7_8function7execute11outer_cycles_0E0E0B3e_EB7_.exit.i
  %.sroa.12.1 = phi i64 [ %.sroa.12.0.copyload50, %_RINvYNtNtCsd9Lm8bEdjjY_5salsa5cycle18CycleHeadsIteratorNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNtNtBX_8adapters6filter15filter_try_foldRNtB5_9CycleHeaduINtNtNtBZ_3ops12control_flow11ControlFlowB2X_ENCNvMs4_B5_NtB5_10CycleHeads11iter_not_eq0NCINvNvBR_5rfind5checkB2X_NCNvNtNtB7_8function7execute11outer_cycles_0E0E0B3e_EB7_.exit.i ], [ %.sroa.12.0, %.noexc31 ], [ %.sroa.12.0, %.noexc34 ]
  %.sroa.0.0 = phi i32 [ %.sroa.0.0.copyload45, %_RINvYNtNtCsd9Lm8bEdjjY_5salsa5cycle18CycleHeadsIteratorNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNtNtBX_8adapters6filter15filter_try_foldRNtB5_9CycleHeaduINtNtNtBZ_3ops12control_flow11ControlFlowB2X_ENCNvMs4_B5_NtB5_10CycleHeads11iter_not_eq0NCINvNvBR_5rfind5checkB2X_NCNvNtNtB7_8function7execute11outer_cycles_0E0E0B3e_EB7_.exit.i ], [ 0, %.noexc31 ], [ 0, %.noexc34 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !202
  br label %_RNvNtNtCsd9Lm8bEdjjY_5salsa8function7execute11outer_cycle.exit

_RNvNtNtCsd9Lm8bEdjjY_5salsa8function7execute11outer_cycle.exit: ; preds = %.loopexit.i, %_RINvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB5_10ZalsaLocal26with_query_stack_uncheckedINtNtCshzWfHUSfYae_4core6option6OptionNtNtB7_3key16DatabaseKeyIndexENCNvNtNtB7_8function7execute11outer_cycle0EB7_.exit.i
  %.sroa.12.2 = phi i64 [ %.sroa.12.1, %.loopexit.i ], [ %.sroa.12.0.copyload52, %_RINvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB5_10ZalsaLocal26with_query_stack_uncheckedINtNtCshzWfHUSfYae_4core6option6OptionNtNtB7_3key16DatabaseKeyIndexENCNvNtNtB7_8function7execute11outer_cycle0EB7_.exit.i ] ; 2 uses
  %.sroa.0.154 = phi i32 [ %.sroa.0.0, %.loopexit.i ], [ %.sroa.0.0.copyload46, %_RINvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB5_10ZalsaLocal26with_query_stack_uncheckedINtNtCshzWfHUSfYae_4core6option6OptionNtNtB7_3key16DatabaseKeyIndexENCNvNtNtB7_8function7execute11outer_cycle0EB7_.exit.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %.not21 = icmp eq i32 %.sroa.0.154, 0           ; 2 uses
  br i1 %.sroa.02.0.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_RNvNtNtCsd9Lm8bEdjjY_5salsa8function7execute11outer_cycle.exit
  br i1 %.not21, label %bb.am, label %bb.al, !prof !50

bb.ak:                                            ; preds = %_RNvNtNtCsd9Lm8bEdjjY_5salsa8function7execute11outer_cycle.exit
  %spec.select = select i1 %.not21, i16 %.sroa.0.0.i, i16 %4
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.en, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %.sroa.05.0.copyload = load i64, ptr %i.q, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.05.0.copyload, ptr %i.eo, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.0.154, ptr %i.ep, align 4
  %.sroa.12.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.12.2, ptr %.sroa.12.0..sroa_idx47, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %spec.select, ptr %i.eq, align 2
  store i16 2, ptr %0, align 8
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsd9Lm8bEdjjY_5salsa5cycle10CycleHeadsEBF_.exit41

bb.al:                                            ; preds = %bb.aj
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.er, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %.sroa.03.0.copyload = load i64, ptr %i.q, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.03.0.copyload, ptr %i.es, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.0.154, ptr %i.et, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.12.2, ptr %.sroa.4.0..sroa_idx, align 8
  store i16 1, ptr %0, align 8
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsd9Lm8bEdjjY_5salsa5cycle10CycleHeadsEBF_.exit41

bb.am:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.r, ptr %i.n, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXs_NtCsd9Lm8bEdjjY_5salsa3keyNtB4_16DatabaseKeyIndexNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.414.0..sroa_idx, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.q, ptr %i.eu, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @_RNvXsz_NtCsd9Lm8bEdjjY_5salsa5cycleNtB5_10CycleHeadsNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.418.0..sroa_idx, align 8
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @17, ptr noundef nonnull %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #24
          to label %bb.an unwind label %.loopexit.split-lp

bb.an:                                            ; preds = %bb.am
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsd9Lm8bEdjjY_5salsa5cycle10CycleHeadsEBF_.exit41: ; preds = %bb.al, %bb.aw, %bb.ax, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  ret void

bb.ao:                                            ; preds = %bb.p
  %i.ev = add i16 %4, 1                           ; 2 uses
  %.sroa.09.0.extract.trunc = trunc i16 %i.ev to i8
  %i.ew = icmp ult i8 %.sroa.09.0.extract.trunc, -55
  br i1 %i.ew, label %bb.av, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !216
  store ptr %i.r, ptr %i.c, align 8, !noalias !216
  %i.ex = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !216
  %i.ey = icmp ult i64 %i.ex, 4
  br i1 %i.ey, label %bb.aq, label %.noexc39

bb.aq:                                            ; preds = %bb.ap
  %i.ez = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvNtNtCsd9Lm8bEdjjY_5salsa8function7execute18try_complete_query010___CALLSITE, i64 16) monotonic, align 8, !noalias !216 ; 3 uses
  switch i8 %i.ez, label %bb.ar [
    i8 0, label %.noexc39
    i8 1, label %bb.as
    i8 2, label %bb.as
  ]

bb.ar:                                            ; preds = %bb.aq
  %i.fa = invoke noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvNtNtCsd9Lm8bEdjjY_5salsa8function7execute18try_complete_query010___CALLSITE) #18
          to label %.noexc35 unwind label %.loopexit.split-lp ; 2 uses

.noexc35:                                         ; preds = %bb.ar
  %i.fb = icmp eq i8 %i.fa, 0
  br i1 %i.fb, label %.noexc39, label %bb.as

bb.as:                                            ; preds = %bb.aq, %.noexc35, %bb.aq
  %.sroa.05.0.i = phi i8 [ %i.fa, %.noexc35 ], [ %i.ez, %bb.aq ], [ %i.ez, %bb.aq ]
  %i.fc = load ptr, ptr @_RNvNCNvNtNtCsd9Lm8bEdjjY_5salsa8function7execute18try_complete_query010___CALLSITE, align 8, !noalias !216, !nonnull !42, !align !47, !noundef !42
  %i.fd = invoke noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fc, i8 noundef %.sroa.05.0.i)
          to label %.noexc36 unwind label %.loopexit.split-lp

.noexc36:                                         ; preds = %bb.as
  br i1 %i.fd, label %bb.at, label %.noexc39

bb.at:                                            ; preds = %.noexc36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !216
  %i.fe = load ptr, ptr @_RNvNCNvNtNtCsd9Lm8bEdjjY_5salsa8function7execute18try_complete_query010___CALLSITE, align 8, !noalias !216, !nonnull !42, !align !47, !noundef !42
  store ptr %i.fe, ptr %i.b, align 8, !noalias !216
  %i.ff = invoke noundef zeroext i1 @_RINvNtCsaMQbKjKCVRW_12tracing_core10dispatcher11get_defaultbNCNCNvNtNtCsd9Lm8bEdjjY_5salsa8function7execute18try_complete_query0s_0EB16_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %.noexc37 unwind label %.loopexit.split-lp

.noexc37:                                         ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !216
  br i1 %i.ff, label %bb.au, label %.noexc39

.noexc39:                                         ; preds = %bb.au, %.noexc37, %.noexc36, %.noexc35, %bb.aq, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !216
  store ptr %i.r, ptr %i.a, align 8, !noalias !216
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs_NtCsd9Lm8bEdjjY_5salsa3keyNtB4_16DatabaseKeyIndexNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !216
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #22
          to label %.noexc38 unwind label %.loopexit.split-lp

.noexc38:                                         ; preds = %.noexc39
  unreachable

bb.au:                                            ; preds = %.noexc37
  invoke fastcc void @_RNCNCNvNtNtCsd9Lm8bEdjjY_5salsa8function7execute18try_complete_query00B9_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c) #18
          to label %.noexc39 unwind label %.loopexit.split-lp

bb.av:                                            ; preds = %bb.ao, %bb.p
  %.sroa.0.1 = phi i16 [ 0, %bb.p ], [ %i.ev, %bb.ao ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  invoke void @_RNvMss_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB5_16ActiveQueryGuard8complete(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.p, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.o, i16 noundef %.sroa.0.1)
          to label %bb.aw unwind label %.loopexit.split-lp

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fg, ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 48, i1 false)
  store i16 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.fh = load ptr, ptr %i.q, align 8, !alias.scope !217, !nonnull !42, !noundef !42
  %i.fi = icmp eq ptr %i.fh, @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER
  br i1 %i.fi, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsd9Lm8bEdjjY_5salsa5cycle10CycleHeadsEBF_.exit41, label %bb.ax, !prof !43

bb.ax:                                            ; preds = %bb.aw
  call void @_RINvNvXs6_CsbdtVtHYmo6x_8thin_vecINtB8_7ThinVecpENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop18drop_non_singletonNtNtCsd9Lm8bEdjjY_5salsa5cycle9CycleHeadEB1R_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q) #18
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsd9Lm8bEdjjY_5salsa5cycle10CycleHeadsEBF_.exit41

bb.ay:                                            ; preds = %bb.az, %bb.q
  %i.fj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsd9Lm8bEdjjY_5salsa11zalsa_local16ActiveQueryGuardEBF_.exit: ; preds = %bb.az, %.noexc24
  %.pn55 = phi { ptr, i32 } [ %.pn56, %bb.az ], [ %eh.lpad-body, %.noexc24 ]
  resume { ptr, i32 } %.pn55

bb.az:                                            ; preds = %.split.thread, %.noexc24
  %.pn56 = phi { ptr, i32 } [ %i.u, %.split.thread ], [ %eh.lpad-body, %.noexc24 ]
  invoke void @_RNvXsu_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB5_16ActiveQueryGuardNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsd9Lm8bEdjjY_5salsa11zalsa_local16ActiveQueryGuardEBF_.exit unwind label %bb.ay
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCsd9Lm8bEdjjY_5salsa8function7execute20complete_cycle_query(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %2, i16 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !222 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 7 uses
  %i.b = alloca [88 x i8], align 8                ; 3 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [64 x i8], align 8                ; 5 uses
  %i.f = alloca [48 x i8], align 8                ; 5 uses
  %i.g = alloca [64 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [80 x i8], align 8                ; 8 uses
  %i.j = alloca [88 x i8], align 8                ; 5 uses
  %i.k = alloca [88 x i8], align 8                ; 7 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [56 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyINtNtCshzWfHUSfYae_4core4cell4CellINtNtBZ_6option6OptionTINtNtCs3gqD4ldeioo_8indexmap3set8IndexSetNtNtCsd9Lm8bEdjjY_5salsa11zalsa_local9QueryEdgeINtNtBZ_4hash18BuildHasherDefaultNtCsh04pLiDBs3j_10rustc_hash8FxHasherEEINtNtNtNtBa_11collections4hash3set7HashSetNtNtB2y_3key16DatabaseKeyIndexB3f_EEEEE4withNvMsa_BX_BU_4takeB1s_EB2y_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @19)
end_hunk_0
