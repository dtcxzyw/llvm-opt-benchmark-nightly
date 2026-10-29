Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide-9d1e44b117047edd.ide.fd86062d077aef10-cgu.11?download=true
inline.NumInlined: 1863
inline.NumDeleted: 1063
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvXsq_NtCslLuZgPVt6hg_3ide17navigation_targetNtCs8Xq8PKFYOms_3hir5LabelNtB5_8TryToNav10try_to_nav:bb.a
  store ptr %i.bs, ptr %i.b, align 8
  %i.bt = load atomic i64, ptr %i.bs acquire, align 8
  %i.bu = icmp eq i64 %i.bt, 2
  br i1 %i.bu, label %bb.ad, label %.noexc18, !prof !15

bb.ad:                                            ; preds = %.noexc17
  invoke void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %.noexc18 unwind label %bb.g

.noexc18:                                         ; preds = %bb.ad, %.noexc17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.bs, ptr %i.a, align 8
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc19 unwind label %bb.g

.noexc19:                                         ; preds = %.noexc18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECslLuZgPVt6hg_3ide.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECslLuZgPVt6hg_3ide.exit: ; preds = %.noexc19, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bv = load i32, ptr %i.ah, align 4, !noundef !10
  %i.bw = add i32 %i.bv, -1                       ; 2 uses
  store i32 %i.bw, ptr %i.ah, align 4
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.ae, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5LabelECslLuZgPVt6hg_3ide.exit20

bb.ae:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECslLuZgPVt6hg_3ide.exit
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.01.0.copyload) #45
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5LabelECslLuZgPVt6hg_3ide.exit20

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5LabelECslLuZgPVt6hg_3ide.exit20: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECslLuZgPVt6hg_3ide.exit, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.d

bb.af:                                            ; preds = %bb.f, %bb.i, %.body
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5LabelECslLuZgPVt6hg_3ide.exit: ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCshzWfHUSfYae_4core3fmtShNtB5_5Debug3fmtCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRhINtNtNtBa_5slice4iter4IterhEECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsr_NtCslLuZgPVt6hg_3ide17navigation_targetNtCs8Xq8PKFYOms_3hir9TypeParamNtB5_8TryToNav10try_to_nav(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 8 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [12 x i8], align 8                ; 2 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [48 x i8], align 4                ; 4 uses
  %i.j = alloca [160 x i8], align 8               ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 6 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 5 uses
  %i.p = alloca [16 x i8], align 4                ; 4 uses
  %i.q = alloca [32 x i8], align 8                ; 7 uses
  %i.r = load ptr, ptr %2, align 8, !nonnull !10, !align !20, !noundef !10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.p, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false)
  call void @_RNvXsd_NtCs8Xq8PKFYOms_3hir10has_sourceNtB7_16TypeOrConstParamNtB5_9HasSource6source(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.q, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.p, ptr noundef nonnull %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @62)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.s = load i64, ptr %i.q, align 8, !range !22, !noundef !10 ; 6 uses
  %.not = icmp eq i64 %i.s, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx68 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx68, align 8 ; 16 uses
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.g, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.569.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.t = invoke noundef nonnull ptr @_RNvMs1f_Cs8Xq8PKFYOms_3hirNtB6_9TypeParam4name(ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr noundef nonnull %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @62)
          to label %bb.f unwind label %bb.e       ; 4 uses

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  store i64 -2, ptr %0, align 8
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext16TypeOrConstParamECslLuZgPVt6hg_3ide.exit55

bb.d:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs83ee1IJTiSq_6either6EitherNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamNtB18_5TraitEECslLuZgPVt6hg_3ide.exit, %bb.e
  %.pn20 = phi { ptr, i32 } [ %i.u, %bb.e ], [ %.pn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs83ee1IJTiSq_6either6EitherNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamNtB18_5TraitEECslLuZgPVt6hg_3ide.exit ] ; 5 uses
  %.sroa.012.0 = phi i1 [ %.sroa.012.1, %bb.e ], [ %.sroa.012.2, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs83ee1IJTiSq_6either6EitherNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamNtB18_5TraitEECslLuZgPVt6hg_3ide.exit ]
  %.sroa.011.0 = phi i1 [ %.sroa.011.1, %bb.e ], [ %.sroa.011.2, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs83ee1IJTiSq_6either6EitherNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamNtB18_5TraitEECslLuZgPVt6hg_3ide.exit ]
  switch i64 %i.s, label %bb.aj [
    i64 2, label %bb.ah
    i64 0, label %bb.ai
  ]

.thread:                                          ; preds = %bb.g
  switch i64 %i.s, label %bb.aj [
    i64 2, label %.thread80
    i64 0, label %.thread90
  ]

bb.e:                                             ; preds = %.noexc51, %bb.ae, %bb.ad, %.noexc42, %bb.v, %bb.u, %bb.b
  %.sroa.012.1 = phi i1 [ %i.ag, %.noexc51 ], [ true, %.noexc42 ], [ true, %bb.b ], [ true, %bb.u ], [ true, %bb.v ], [ %i.ag, %bb.ad ], [ %i.ag, %bb.ae ]
  %.sroa.011.1 = phi i1 [ %.sroa.011.4, %.noexc51 ], [ true, %.noexc42 ], [ true, %bb.b ], [ true, %bb.u ], [ true, %bb.v ], [ %.sroa.011.4, %bb.ad ], [ %.sroa.011.4, %bb.ae ]
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  store ptr %i.t, ptr %i.n, align 8
  %i.v = invoke noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n)
          to label %bb.h unwind label %bb.g       ; 6 uses

bb.g:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECslLuZgPVt6hg_3ide(ptr nonnull %i.t) #42
          to label %.thread unwind label %bb.ag

bb.h:                                             ; preds = %bb.f
  store ptr %i.v, ptr %i.o, align 8
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = and i64 %i.x, 1
  %.not.i.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECslLuZgPVt6hg_3ide.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr i8, ptr %i.t, i64 -1       ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.z) ]
  %i.aa = invoke noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCslLuZgPVt6hg_3ide(ptr noundef nonnull %i.z)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.i
  %i.ab = sub nsw i64 0, %i.aa
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 %i.ab ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.ac, ptr %i.f, align 8
  %i.ad = load atomic i64, ptr %i.ac acquire, align 8
  %i.ae = icmp eq i64 %i.ad, 2
  br i1 %i.ae, label %bb.j, label %.noexc39, !prof !15

bb.j:                                             ; preds = %.noexc
  invoke void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f)
          to label %.noexc39 unwind label %bb.k

.noexc39:                                         ; preds = %bb.j, %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.ac, ptr %i.e, align 8
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.noexc40 unwind label %bb.k

.noexc40:                                         ; preds = %.noexc39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECslLuZgPVt6hg_3ide.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs83ee1IJTiSq_6either6EitherNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamNtB18_5TraitEECslLuZgPVt6hg_3ide.exit: ; preds = %bb.z, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i44, %bb.k
  %.pn = phi { ptr, i32 } [ %i.af, %bb.k ], [ %i.bi, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i44 ], [ %i.bi, %bb.z ]
  %.sroa.012.2 = phi i1 [ %.sroa.012.3, %bb.k ], [ %i.ag, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i44 ], [ %i.ag, %bb.z ]
  %.sroa.011.2 = phi i1 [ %.sroa.011.3, %bb.k ], [ %.sroa.011.4, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i44 ], [ %.sroa.011.4, %bb.z ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECslLuZgPVt6hg_3ide(ptr nonnull %i.v) #42
          to label %bb.d unwind label %bb.ag

bb.k:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i46, %.noexc39, %bb.j, %bb.i, %bb.w, %bb.q, %bb.p
  %.sroa.012.3 = phi i1 [ %i.ag, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i46 ], [ true, %bb.w ], [ true, %bb.q ], [ true, %bb.p ], [ true, %bb.i ], [ true, %bb.j ], [ true, %.noexc39 ]
  %.sroa.011.3 = phi i1 [ %.sroa.011.4, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i46 ], [ true, %bb.w ], [ true, %bb.q ], [ true, %bb.p ], [ true, %bb.i ], [ true, %bb.j ], [ true, %.noexc39 ]
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs83ee1IJTiSq_6either6EitherNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamNtB18_5TraitEECslLuZgPVt6hg_3ide.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECslLuZgPVt6hg_3ide.exit: ; preds = %.noexc40, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ag = icmp ne i64 %i.s, 2                     ; 8 uses
  br i1 %i.ag, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECslLuZgPVt6hg_3ide.exit
  %i.ah = trunc nuw i64 %i.s to i1
  br i1 %i.ah, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECslLuZgPVt6hg_3ide.exit
  %storemerge = phi i64 [ 1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECslLuZgPVt6hg_3ide.exit ], [ 0, %bb.l ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.sroa.4.0.copyload, ptr %i.ai, align 8
  %.sroa.011.4 = xor i1 %i.ag, true               ; 7 uses
  store i64 %storemerge, ptr %i.m, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %.sroa.010.0 = zext i1 %.sroa.011.4 to i64
  %i.ak = invoke noundef ptr @_RINvMs_Cs83ee1IJTiSq_6eitherINtB5_6EitherRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamRNtBG_5TraitE6eitherNCNvXsr_NtCslLuZgPVt6hg_3ide17navigation_targetNtCs8Xq8PKFYOms_3hir9TypeParamNtB23_8TryToNav10try_to_nav0NCB1X_s_0INtNtCshzWfHUSfYae_4core6option6OptionNtBG_4NameEEB25_(i64 noundef %.sroa.010.0, ptr noundef nonnull %i.aj)
          to label %bb.aa unwind label %bb.z

bb.n:                                             ; preds = %bb.l
  %i.al = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.am = icmp ult i64 %i.al, 5
  br i1 %i.am, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.an = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXsr_NtCslLuZgPVt6hg_3ide17navigation_targetNtCs8Xq8PKFYOms_3hir9TypeParamNtB7_8TryToNav10try_to_nav10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.an, label %bb.p [
    i8 0, label %bb.t
    i8 1, label %bb.q
    i8 2, label %bb.q
  ], !prof !23

bb.p:                                             ; preds = %bb.o
  %i.ao = invoke noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvXsr_NtCslLuZgPVt6hg_3ide17navigation_targetNtCs8Xq8PKFYOms_3hir9TypeParamNtB7_8TryToNav10try_to_nav10___CALLSITE)
          to label %bb.r unwind label %bb.k       ; 2 uses

bb.q:                                             ; preds = %bb.o, %bb.o, %bb.r
  %.sroa.06.0 = phi i8 [ %i.ao, %bb.r ], [ %i.an, %bb.o ], [ %i.an, %bb.o ]
  %i.ap = load ptr, ptr @_RNvNvXsr_NtCslLuZgPVt6hg_3ide17navigation_targetNtCs8Xq8PKFYOms_3hir9TypeParamNtB7_8TryToNav10try_to_nav10___CALLSITE, align 8, !nonnull !10, !align !20, !noundef !10
  %i.aq = invoke noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ap, i8 noundef %.sroa.06.0)
          to label %bb.s unwind label %bb.k

bb.r:                                             ; preds = %bb.p
  %i.ar = icmp eq i8 %i.ao, 0
  br i1 %i.ar, label %bb.t, label %bb.q

bb.s:                                             ; preds = %bb.q
  br i1 %i.aq, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.o, %bb.n, %bb.x, %bb.s
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.as = ptrtoint ptr %i.v to i64
  %i.at = and i64 %i.as, 1
  %.not.i.i.i = icmp eq i64 %i.at, 0
  br i1 %.not.i.i.i, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.au = getelementptr i8, ptr %i.v, i64 -1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.au) ]
  %i.av = invoke noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCslLuZgPVt6hg_3ide(ptr noundef nonnull %i.au)
          to label %.noexc41 unwind label %bb.e

.noexc41:                                         ; preds = %bb.u
  %i.aw = sub nsw i64 0, %i.av
  %i.ax = getelementptr inbounds i8, ptr %i.au, i64 %i.aw ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.ax, ptr %i.d, align 8
  %i.ay = load atomic i64, ptr %i.ax acquire, align 8
  %i.az = icmp eq i64 %i.ay, 2
  br i1 %i.az, label %bb.v, label %.noexc42, !prof !15

bb.v:                                             ; preds = %.noexc41
  invoke void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d)
          to label %.noexc42 unwind label %bb.e

.noexc42:                                         ; preds = %bb.v, %.noexc41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.ax, ptr %i.c, align 8
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc43 unwind label %bb.e

.noexc43:                                         ; preds = %.noexc42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.y

bb.w:                                             ; preds = %bb.s
  %i.ba = load ptr, ptr @_RNvNvXsr_NtCslLuZgPVt6hg_3ide17navigation_targetNtCs8Xq8PKFYOms_3hir9TypeParamNtB7_8TryToNav10try_to_nav10___CALLSITE, align 8, !nonnull !10, !align !20, !noundef !10 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr @39, ptr %i.k, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr inttoptr (i64 85 to ptr), ptr %i.bc, align 8
  store ptr %i.k, ptr %i.l, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @40, ptr %i.bd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 1, ptr %i.h, align 8
  %.sroa.08.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.l, ptr %.sroa.08.sroa.4.0..sroa_idx, align 8
  %.sroa.08.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 1, ptr %.sroa.08.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.bb, ptr %.sroa.4.0..sroa_idx, align 8
  invoke void @_RNvMNtCsaMQbKjKCVRW_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ba, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h)
          to label %bb.x unwind label %bb.k

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.t

bb.y:                                             ; preds = %bb.t, %.noexc43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 48 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !noundef !10
  %i.bg = add i32 %i.bf, -1                       ; 2 uses
  store i32 %i.bg, ptr %i.be, align 4
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext16TypeOrConstParamECslLuZgPVt6hg_3ide.exit55

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i: ; preds = %bb.y
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.4.0.copyload) #45
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext16TypeOrConstParamECslLuZgPVt6hg_3ide.exit55

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext16TypeOrConstParamECslLuZgPVt6hg_3ide.exit55: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i54, %bb.af, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECslLuZgPVt6hg_3ide.exit53, %bb.y, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i, %bb.c
  ret void

bb.z:                                             ; preds = %bb.ab, %bb.aa, %bb.m
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val38 = load ptr, ptr %i.aj, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.val38, i64 48 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !noundef !10
  %i.bl = add i32 %i.bk, -1                       ; 2 uses
  store i32 %i.bl, ptr %i.bj, align 4
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i44, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs83ee1IJTiSq_6either6EitherNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamNtB18_5TraitEECslLuZgPVt6hg_3ide.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i44: ; preds = %bb.z
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val38) #45
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs83ee1IJTiSq_6either6EitherNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamNtB18_5TraitEECslLuZgPVt6hg_3ide.exit unwind label %bb.ag

bb.aa:                                            ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RINvNtCslLuZgPVt6hg_3ide17navigation_target21orig_range_with_focusNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameEB4_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 4 captures(address) dereferenceable(48) %i.i, ptr noundef nonnull align 8 %i.r, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(12) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aj, ptr noundef %i.ak)
          to label %bb.ab unwind label %bb.z

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RINvMsz_NtCslLuZgPVt6hg_3ide17navigation_targetINtB6_15UpmappingResultTINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtCs4sl5YdnrCxp_3vfs6FileIdEINtNtCshzWfHUSfYae_4core6option6OptionNtNtCsuAhG64lL82_9text_size5range9TextRangeEEE3mapNtB6_16NavigationTargetNCNvXsr_B6_NtCs8Xq8PKFYOms_3hir9TypeParamNtB6_8TryToNav10try_to_navs0_0EB8_(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.j, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(48) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o)
          to label %bb.ac unwind label %bb.z

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %i.j, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.val36 = load ptr, ptr %i.aj, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.val36, i64 48 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !noundef !10
  %i.bp = add i32 %i.bo, -1                       ; 2 uses
  store i32 %i.bp, ptr %i.bn, align 4
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i46, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs83ee1IJTiSq_6either6EitherNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamNtB18_5TraitEECslLuZgPVt6hg_3ide.exit48

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i46: ; preds = %bb.ac
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val36) #45
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs83ee1IJTiSq_6either6EitherNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamNtB18_5TraitEECslLuZgPVt6hg_3ide.exit48 unwind label %bb.k

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs83ee1IJTiSq_6either6EitherNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamNtB18_5TraitEECslLuZgPVt6hg_3ide.exit48: ; preds = %bb.ac, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.br = ptrtoint ptr %i.v to i64
  %i.bs = and i64 %i.br, 1
  %.not.i.i.i49 = icmp eq i64 %i.bs, 0
  br i1 %.not.i.i.i49, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECslLuZgPVt6hg_3ide.exit53, label %bb.ad

bb.ad:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs83ee1IJTiSq_6either6EitherNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamNtB18_5TraitEECslLuZgPVt6hg_3ide.exit48
  %i.bt = getelementptr i8, ptr %i.v, i64 -1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bt) ]
  %i.bu = invoke noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCslLuZgPVt6hg_3ide(ptr noundef nonnull %i.bt)
          to label %.noexc50 unwind label %bb.e

.noexc50:                                         ; preds = %bb.ad
  %i.bv = sub nsw i64 0, %i.bu
  %i.bw = getelementptr inbounds i8, ptr %i.bt, i64 %i.bv ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.bw, ptr %i.b, align 8
  %i.bx = load atomic i64, ptr %i.bw acquire, align 8
  %i.by = icmp eq i64 %i.bx, 2
  br i1 %i.by, label %bb.ae, label %.noexc51, !prof !15

bb.ae:                                            ; preds = %.noexc50
  invoke void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %.noexc51 unwind label %bb.e

.noexc51:                                         ; preds = %bb.ae, %.noexc50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.bw, ptr %i.a, align 8
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc52 unwind label %bb.e

.noexc52:                                         ; preds = %.noexc51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECslLuZgPVt6hg_3ide.exit53

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECslLuZgPVt6hg_3ide.exit53: ; preds = %.noexc52, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs83ee1IJTiSq_6either6EitherNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamNtB18_5TraitEECslLuZgPVt6hg_3ide.exit48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.bz = icmp eq i64 %i.s, 1
  br i1 %i.bz, label %bb.af, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext16TypeOrConstParamECslLuZgPVt6hg_3ide.exit55

bb.af:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECslLuZgPVt6hg_3ide.exit53
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 48 ; 2 uses
end_hunk_0
