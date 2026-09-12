Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.13?download=true
inline.NumInlined: 2010
inline.NumDeleted: 1053
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_RNCNvMs_NtNtCs8frGy5WneL6_4fish9highlight9highlightNtB6_22HighlightColorResolver21resolve_spec_uncached0Ba_:switch.lookup
bb.d:                                             ; preds = %bb.c
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #47
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit: ; preds = %switch.lookup43, %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.w = icmp eq ptr %i.l, %i.i
  br i1 %i.w, label %._crit_edge, label %switch.lookup43

bb.e:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !1509)
  %i.y = load ptr, ptr %i.a, align 8, !alias.scope !1509, !noundef !12 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit57, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = atomicrmw sub ptr %i.y, i64 1 release, align 8, !noalias !1510
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit57

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #47
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit57 unwind label %bb.m

bb.h:                                             ; preds = %bb.a
  %i.ac = load i8, ptr %i.b, align 1, !range !29, !noundef !12
  %.not54 = icmp eq i8 %i.ac, 2
  br i1 %.not54, label %bb.b, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %0, ptr noundef nonnull align 1 dereferenceable(18) %i.b, i64 18, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1511)
  %i.ad = load ptr, ptr %i.a, align 8, !alias.scope !1511, !noundef !12 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit58, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !noalias !1512
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit58

bb.k:                                             ; preds = %bb.j
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #47
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit58

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit58: ; preds = %bb.i, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.l

bb.l:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit58, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.m:                                             ; preds = %bb.g
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit57: ; preds = %bb.f, %bb.e, %bb.g
  resume { ptr, i32 } %i.x
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_containss0_0Cs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i16 noundef range(i16 1, 0) %2, i1 noundef zeroext %3) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 11 uses
  br i1 %3, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  %i.c = getelementptr i8, ptr %i.b, i64 %1       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !12 ; 4 uses
  %i.g = load ptr, ptr %i.d, align 8, !nonnull !12, !noundef !12 ; 3 uses
  %i.h = icmp samesign ult i64 %i.f, 4
  %i.i = getelementptr i8, ptr %i.g, i64 %i.f     ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -4
  %.sroa.518.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.619.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br i1 %i.h, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us
  %.sroa.0.08.us = phi i16 [ %i.w, %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us ], [ %2, %.preheader ] ; 2 uses
  %i.k = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.08.us, i1 true) ; 2 uses
  %i.l = zext nneg i16 %i.k to i64
  %i.m = getelementptr i8, ptr %i.c, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 1        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1516)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1517)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = getelementptr i8, ptr %i.n, i64 %i.f
  call void @_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly %i.n, ptr noundef nonnull readonly %i.o, ptr noundef nonnull readonly %i.g, ptr noundef nonnull readonly %i.i)
  %.sroa.0.0.copyload.i.us = load ptr, ptr %i.a, align 8, !noalias !1518 ; 2 uses
  %.sroa.518.0.copyload.i.us = load ptr, ptr %.sroa.518.0..sroa_idx.i, align 8, !noalias !1518 ; 2 uses
  %.sroa.619.0.copyload.i.us = load i64, ptr %.sroa.619.0..sroa_idx.i, align 8, !noalias !1518 ; 3 uses
  %.sroa.8.0.copyload.i.us = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !1518 ; 2 uses
  %umax.i.us = tail call i64 @llvm.umax.i64(i64 %.sroa.619.0.copyload.i.us, i64 %.sroa.8.0.copyload.i.us)
  %exitcond.not.i.us17.not = icmp ult i64 %.sroa.619.0.copyload.i.us, %.sroa.8.0.copyload.i.us
  br i1 %exitcond.not.i.us17.not, label %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs8frGy5WneL6_4fish.exit.i.us.preheader, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread5

_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs8frGy5WneL6_4fish.exit.i.us.preheader: ; preds = %.preheader.split.us
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.us) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.518.0.copyload.i.us) ]
  br label %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs8frGy5WneL6_4fish.exit.i.us

bb.b:                                             ; preds = %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs8frGy5WneL6_4fish.exit.i.us
  %i.p = add i64 %.sroa.619.0.i.us18, 1           ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.p, %umax.i.us
  br i1 %exitcond.not.i.us, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread5, label %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs8frGy5WneL6_4fish.exit.i.us

_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs8frGy5WneL6_4fish.exit.i.us: ; preds = %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs8frGy5WneL6_4fish.exit.i.us.preheader, %bb.b
  %.sroa.619.0.i.us18 = phi i64 [ %i.p, %bb.b ], [ %.sroa.619.0.copyload.i.us, %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs8frGy5WneL6_4fish.exit.i.us.preheader ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.us, i64 %.sroa.619.0.i.us18
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.518.0.copyload.i.us, i64 %.sroa.619.0.i.us18
  %i.s = load i8, ptr %i.q, align 1, !noundef !12
  %i.t = load i8, ptr %i.r, align 1, !noundef !12
  %.not17.i.us = icmp eq i8 %i.s, %i.t
  br i1 %.not17.i.us, label %bb.b, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us

_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us: ; preds = %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs8frGy5WneL6_4fish.exit.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.u = shl nuw i16 1, %i.k
  %i.v = xor i16 %i.u, -1
  %i.w = and i16 %.sroa.0.08.us, %i.v             ; 2 uses
  %i.x = icmp eq i16 %i.w, 0
  br i1 %i.x, label %.loopexit, label %.preheader.split.us

.preheader.split:                                 ; preds = %.preheader, %bb.d
  %.sroa.0.08 = phi i16 [ %i.al, %bb.d ], [ %2, %.preheader ] ; 2 uses
  %i.y = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.08, i1 true) ; 2 uses
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = getelementptr i8, ptr %i.c, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 1      ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1516)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1517)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.f
  %i.ad = getelementptr i8, ptr %i.ac, i64 -4     ; 3 uses
  %i.ae = icmp ult ptr %i.ab, %i.ad
  br i1 %i.ae, label %.lr.ph.i, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit

.lr.ph.i:                                         ; preds = %.preheader.split, %bb.c
  %.sroa.04.026.i = phi ptr [ %i.af, %bb.c ], [ %i.ab, %.preheader.split ] ; 2 uses
  %.sroa.08.025.i = phi ptr [ %i.ag, %bb.c ], [ %i.g, %.preheader.split ] ; 2 uses
  %.sroa.011.0.copyload.i = load i32, ptr %.sroa.04.026.i, align 1, !alias.scope !1516, !noalias !1517
  %.sroa.012.0.copyload.i = load i32, ptr %.sroa.08.025.i, align 1, !alias.scope !1517, !noalias !1516
  %.not.i = icmp eq i32 %.sroa.011.0.copyload.i, %.sroa.012.0.copyload.i
  br i1 %.not.i, label %bb.c, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread.loopexit7

bb.c:                                             ; preds = %.lr.ph.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.026.i, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.08.025.i, i64 4
  %i.ah = icmp ult ptr %i.af, %i.ad
  br i1 %i.ah, label %.lr.ph.i, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit

_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread5: ; preds = %.preheader.split.us, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread.loopexit7: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit: ; preds = %bb.c, %.preheader.split
  %.sroa.013.0.copyload.i = load i32, ptr %i.ad, align 1, !alias.scope !1516, !noalias !1517
  %.sroa.014.0.copyload.i = load i32, ptr %i.j, align 1, !alias.scope !1517, !noalias !1516
  %i.ai = icmp eq i32 %.sroa.013.0.copyload.i, %.sroa.014.0.copyload.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.ai, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %bb.d, %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit, %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us, %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread5, %bb.a
  %.sroa.03.0 = phi i1 [ true, %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread5 ], [ false, %bb.a ], [ false, %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us ], [ true, %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit ], [ false, %bb.d ]
  ret i1 %.sroa.03.0

bb.d:                                             ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread.loopexit7, %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit
  %i.aj = shl nuw i16 1, %i.y
  %i.ak = xor i16 %i.aj, -1
  %i.al = and i16 %.sroa.0.08, %i.ak              ; 2 uses
  %i.am = icmp eq i16 %i.al, 0
  br i1 %i.am, label %.loopexit, label %.preheader.split
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvYNtNtNtCs8frGy5WneL6_4fish5input5input15InputEventQueueNtNtB8_6decode19InputEventQueuerExt9parse_csis0_0Ba_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 4 captures(none) dereferenceable(20) initializes((0, 17)) %0, ptr nofree readonly captures(none) %.0.val, i32 noundef range(i32 0, 1114112) %1, i32 noundef range(i32 -1, 1114112) %2, i32 noundef range(i32 -1, 1114112) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.d = load i32, ptr %i.c, align 4, !noundef !12 ; 2 uses
  %i.e = tail call i32 @llvm.usub.sat.i32(i32 %i.d, i32 1) ; 5 uses
  %i.f = trunc i32 %i.e to i8
  %i.g = and i8 %i.f, 1                           ; 2 uses
  %i.h = and i32 %i.e, 79
  %or.cond22 = icmp eq i32 %i.h, 65
  br i1 %or.cond22, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0 = phi i8 [ %i.g, %bb.a ], [ %.23, %bb.c ]
  %.not = icmp eq i32 %2, -1
  %. = select i1 %.not, i32 0, i32 %2
  %.not21 = icmp eq i32 %3, -1
  %.sroa.018.0 = select i1 %.not21, i32 0, i32 %3
  %4 = lshr i32 %i.e, 3
  %5 = trunc i32 %4 to i8
  %i.i = and i8 %5, 1
  %6 = lshr i32 %i.e, 1
  %7 = trunc i32 %6 to i8
  %i.j = and i8 %7, 1
  %8 = lshr i32 %i.e, 2
  %9 = trunc i32 %8 to i8
  %i.k = and i8 %9, 1
  %i.l = icmp ne i32 %i.d, 0
  store i32 %1, ptr %0, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.k, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.j, ptr %.sroa.516.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %.sroa.5.0, ptr %.sroa.6.0..sroa_idx, align 2
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.i, ptr %.sroa.7.0..sroa_idx, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = zext i1 %i.l to i8
  store i8 %i.n, ptr %i.m, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %., ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.018.0, ptr %i.p, align 4
  ret void

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11conversions8to_upper(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.a, i32 noundef %1)
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = load i32, ptr %i.q, align 8, !range !33, !noundef !12
  %i.s = icmp eq i32 %i.r, 0
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.u = load i32, ptr %i.t, align 4, !range !33
  %i.v = icmp eq i32 %i.u, 0
  %spec.select.i = select i1 %i.v, i64 1, i64 2
  %.sroa.4.0.i = select i1 %i.s, i64 %spec.select.i, i64 3
  store i64 0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.4.0.i, ptr %.sroa.4.0..sroa_idx1, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %i.a, i64 12, i1 false)
  %i.w = call noundef zeroext i1 @_RINvYNtNtCs3oUPovFnLWP_4core4char11ToUppercaseNtNtNtNtB7_4iter6traits8iterator8Iterator5eq_byINtNtB7_6option6OptioncENCINvYB3_BI_2eqB1t_E0ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.b, i32 noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.23 = select i1 %i.w, i8 %i.g, i8 0
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNCNvYNtNtNtCs8frGy5WneL6_4fish5input5input15InputEventQueueNtNtB8_6decode19InputEventQueuerExt9parse_csis2_0Ba_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  %i.b = load i8, ptr %i.a, align 1, !range !14, !noundef !12
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !12, !align !13, !noundef !12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !12, !align !13, !noundef !12
  %i.h = load ptr, ptr %i.e, align 8, !nonnull !12, !align !13, !noundef !12
  %i.i = tail call fastcc { i1, i8 } @_RNvYNtNtNtCs8frGy5WneL6_4fish5input5input15InputEventQueueNtB4_16InputEventQueuer18read_sequence_byteB8_(ptr noalias nofree noundef align 8 dereferenceable(176) %i.g, ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) ; 2 uses
  %i.j = extractvalue { i1, i8 } %i.i, 0
  %i.k = extractvalue { i1, i8 } %i.i, 1
  %i.l = zext i8 %i.k to i32
  %.sroa.04.0 = select i1 %i.j, i32 %i.l, i32 255 ; 2 uses
  %i.m = icmp samesign ult i32 %.sroa.04.0, 32
  br i1 %i.m, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = add nsw i32 %.sroa.04.0, -32
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %.sroa.5.0 = phi i32 [ %i.n, %bb.c ], [ %1, %bb.a ] ; 2 uses
  %i.o = icmp eq i32 %.sroa.5.0, 0
  br i1 %i.o, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add i32 %.sroa.5.0, -1
  %i.q = zext i32 %i.p to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %.sroa.3.0 = phi i64 [ %i.q, %bb.e ], [ undef, %bb.d ], [ undef, %bb.b ]
  %.sroa.0.0 = phi i64 [ 1, %bb.e ], [ 0, %bb.d ], [ 0, %bb.b ]
  %i.r = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.s = insertvalue { i64, i64 } %i.r, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.s
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBd_4Once15call_once_forceNCNvMNtBf_9lazy_lockINtB1f_8LazyLockINtNtNtBf_6poison5mutex5MutexNtNtNtCse7JGOylGlDZ_3nix3sys7termios7TermiosEE5force0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableCs8frGy5WneL6_4fish(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [136 x i8], align 8               ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !12, !align !13, !noundef !12 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1524)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1524, !noalias !1525, !align !13, !noundef !12 ; 3 uses
  store ptr null, ptr %i.b, align 8, !alias.scope !1524, !noalias !1525
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %.val.i.i = load i8, ptr %i.d, align 4, !range !14, !noalias !1526, !noundef !12
  %i.e = trunc nuw i8 %.val.i.i to i1
  br i1 %i.e, label %bb.c, label %_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockINtNtNtBd_6poison5mutex5MutexNtNtNtCse7JGOylGlDZ_3nix3sys7termios7TermiosEE5force0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs8frGy5WneL6_4fish.exit, !prof !16

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std4sync9lazy_lock14panic_poisoned() #54, !noalias !1526
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #54, !noalias !1526
  unreachable

_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockINtNtNtBd_6poison5mutex5MutexNtNtNtCse7JGOylGlDZ_3nix3sys7termios7TermiosEE5force0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs8frGy5WneL6_4fish.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !noalias !1526, !nonnull !12, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1526
  call void %i.f(ptr noalias nofree noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.a), !noalias !1526, !inline_history !1523
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.c, ptr noundef nonnull align 8 dereferenceable(136) %i.a, i64 136, i1 false), !noalias !1526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1526
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBd_4Once15call_once_forceNCNvMNtBf_9lazy_lockINtB1f_8LazyLockINtNtNtBf_6poison5mutex5MutexNtNtNtCsfFbyYyxlmiH_4rand4rngs5small8SmallRngEE5force0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableCs8frGy5WneL6_4fish(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !12, !align !13, !noundef !12 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1532)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1532, !noalias !1533, !align !13, !noundef !12 ; 3 uses
  store ptr null, ptr %i.b, align 8, !alias.scope !1532, !noalias !1533
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %.val.i.i = load i8, ptr %i.d, align 4, !range !14, !noalias !1534, !noundef !12
  %i.e = trunc nuw i8 %.val.i.i to i1
  br i1 %i.e, label %bb.c, label %_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockINtNtNtBd_6poison5mutex5MutexNtNtNtCsfFbyYyxlmiH_4rand4rngs5small8SmallRngEE5force0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs8frGy5WneL6_4fish.exit, !prof !16

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std4sync9lazy_lock14panic_poisoned() #54, !noalias !1534
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #54, !noalias !1534
  unreachable

_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockINtNtNtBd_6poison5mutex5MutexNtNtNtCsfFbyYyxlmiH_4rand4rngs5small8SmallRngEE5force0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs8frGy5WneL6_4fish.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !noalias !1534, !nonnull !12, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1534
  call void %i.f(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a), !noalias !1534, !inline_history !1531
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !noalias !1534
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1534
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNSNvYNCINvMs2_NtCsbHflKoyRIVo_9once_cell3impINtBd_8OnceCellNtNtCs8frGy5WneL6_4fish12env_dispatch16VarDispatchTableE10initializeNCINvMs4_NtBf_4syncINtB2b_8OnceCellBW_E11get_or_initNCNvMs9_B2b_INtB2b_4LazyBW_E5force0E0NtNvMs4_B2b_IB2m_pE11get_or_init4VoidE0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_once6vtableB10_(ptr nofree noundef readonly captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %.val = load ptr, ptr %0, align 8, !alias.scope !1546, !nonnull !12, !align !13, !noundef !12 ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = load ptr, ptr %.val, align 8, !noalias !1547, !nonnull !12, !align !13, !noundef !12
  store ptr null, ptr %.val, align 8, !noalias !1547
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !1548, !noundef !12 ; 2 uses
  store ptr null, ptr %i.d, align 8, !noalias !1548
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %bb.b, label %_RNCINvMs4_NtCsbHflKoyRIVo_9once_cell4syncINtB8_8OnceCellNtNtCs8frGy5WneL6_4fish12env_dispatch16VarDispatchTableE11get_or_initNCNvMs9_B8_INtB8_4LazyBS_E5force0E0BW_.exit.i.i, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @36, ptr noundef nonnull inttoptr (i64 85 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #54, !noalias !1548
  unreachable

_RNCINvMs4_NtCsbHflKoyRIVo_9once_cell4syncINtB8_8OnceCellNtNtCs8frGy5WneL6_4fish12env_dispatch16VarDispatchTableE11get_or_initNCNvMs9_B8_INtB8_4LazyBS_E5force0E0BW_.exit.i.i: ; preds = %bb.a
  call void %i.e(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a), !noalias !1547, !inline_history !1543
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.f = load ptr, ptr %.val1, align 8, !noalias !1547, !noundef !12 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !1549, !noalias !1547, !noundef !12
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_RNvYNCINvMs2_NtCsbHflKoyRIVo_9once_cell3impINtBb_8OnceCellNtNtCs8frGy5WneL6_4fish12env_dispatch16VarDispatchTableE10initializeNCINvMs4_NtBd_4syncINtB29_8OnceCellBU_E11get_or_initNCNvMs9_B29_INtB29_4LazyBU_E5force0E0NtNvMs4_B29_IB2k_pE11get_or_init4VoidE0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceBY_.exit, label %bb.c

bb.c:                                             ; preds = %_RNCINvMs4_NtCsbHflKoyRIVo_9once_cell4syncINtB8_8OnceCellNtNtCs8frGy5WneL6_4fish12env_dispatch16VarDispatchTableE11get_or_initNCNvMs9_B8_INtB8_4LazyBS_E5force0E0BW_.exit.i.i
  invoke void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtCs8frGy5WneL6_4fish12env_dispatch11EnvCallbackEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1E_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %._RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish12env_dispatch16VarDispatchTableEEB11_.exit_crit_edge.i.i unwind label %bb.d, !noalias !1547

._RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish12env_dispatch16VarDispatchTableEEB11_.exit_crit_edge.i.i: ; preds = %bb.c
  %.pre.i.i = load ptr, ptr %.val1, align 8, !noalias !1547
  br label %_RNvYNCINvMs2_NtCsbHflKoyRIVo_9once_cell3impINtBb_8OnceCellNtNtCs8frGy5WneL6_4fish12env_dispatch16VarDispatchTableE10initializeNCINvMs4_NtBd_4syncINtB29_8OnceCellBU_E11get_or_initNCNvMs9_B29_INtB29_4LazyBU_E5force0E0NtNvMs4_B29_IB2k_pE11get_or_init4VoidE0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceBY_.exit

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %.val1, align 8, !noalias !1547, !noundef !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !1547
  resume { ptr, i32 } %i.i

_RNvYNCINvMs2_NtCsbHflKoyRIVo_9once_cell3impINtBb_8OnceCellNtNtCs8frGy5WneL6_4fish12env_dispatch16VarDispatchTableE10initializeNCINvMs4_NtBd_4syncINtB29_8OnceCellBU_E11get_or_initNCNvMs9_B29_INtB29_4LazyBU_E5force0E0NtNvMs4_B29_IB2k_pE11get_or_init4VoidE0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceBY_.exit: ; preds = %_RNCINvMs4_NtCsbHflKoyRIVo_9once_cell4syncINtB8_8OnceCellNtNtCs8frGy5WneL6_4fish12env_dispatch16VarDispatchTableE11get_or_initNCNvMs9_B8_INtB8_4LazyBS_E5force0E0BW_.exit.i.i, %._RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish12env_dispatch16VarDispatchTableEEB11_.exit_crit_edge.i.i
  %i.k = phi ptr [ %.pre.i.i, %._RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish12env_dispatch16VarDispatchTableEEB11_.exit_crit_edge.i.i ], [ %i.f, %_RNCINvMs4_NtCsbHflKoyRIVo_9once_cell4syncINtB8_8OnceCellNtNtCs8frGy5WneL6_4fish12env_dispatch16VarDispatchTableE11get_or_initNCNvMs9_B8_INtB8_4LazyBS_E5force0E0BW_.exit.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !1547
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
end_hunk_0
begin_hunk_1_@_RNvYNtNtNtCs8frGy5WneL6_4fish5input5input15InputEventQueueNtNtB6_6decode19InputEventQueuerExt13enqueue_eventB8_:bb.a
  %i.fo = icmp eq i64 %i.fm, %i.fn
  br i1 %i.fo, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p) #47
          to label %bb.bl unwind label %bb.aw

bb.bl:                                            ; preds = %bb.bj, %bb.bk
  %i.fp = load ptr, ptr %i.di, align 8, !alias.scope !3394, !nonnull !12, !noundef !12
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.fm
  store i8 10, ptr %i.fq, align 1
  %i.fr = add i64 %i.fm, 1                        ; 2 uses
  store i64 %i.fr, ptr %i.dj, align 8, !alias.scope !3394
  %i.fs = load ptr, ptr %i.di, align 8, !nonnull !12, !noundef !12
  invoke void @_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fs, i64 noundef %i.fr)
          to label %bb.bm unwind label %bb.aw

bb.bm:                                            ; preds = %bb.bl
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.bo unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ft = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.thread unwind label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit48 unwind label %.thread62

bb.bp:                                            ; preds = %bb.bn
  %i.fu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit48: ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.au

bb.bq:                                            ; preds = %bb.c, %bb.l, %bb.au
  ret void

bb.br:                                            ; preds = %.thread, %bb.aw, %bb.y
  %i.fv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.bs:                                            ; preds = %.thread
  resume { ptr, i32 } %.pn54

.thread:                                          ; preds = %bb.bn, %bb.al, %bb.aw, %bb.y, %.thread62
  %.pn54 = phi { ptr, i32 } [ %i.dc, %bb.al ], [ %lpad.thr_comm, %.thread62 ], [ %i.bl, %bb.y ], [ %i.dm, %bb.aw ], [ %i.ft, %bb.bn ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %1) #48
          to label %bb.bs unwind label %bb.br
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvYNtNtNtCs8frGy5WneL6_4fish5input5input15InputEventQueueNtNtB6_6decode19InputEventQueuerExt21parse_escape_sequenceB8_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 15 uses
  %i.r = alloca [32 x i8], align 8                ; 7 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 7 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %i.x = alloca [24 x i8], align 8                ; 15 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [24 x i8], align 8                ; 8 uses
  %i.aa = alloca [24 x i8], align 8               ; 11 uses
  %i.ab = alloca [24 x i8], align 8               ; 6 uses
  %i.ac = alloca [24 x i8], align 8               ; 13 uses
  %i.ad = alloca [16 x i8], align 8               ; 5 uses
  %i.ae = alloca [24 x i8], align 8               ; 6 uses
  %i.af = alloca [24 x i8], align 8               ; 8 uses
  %i.ag = alloca [24 x i8], align 8               ; 7 uses
  %i.ah = alloca [24 x i8], align 8               ; 5 uses
  %i.ai = alloca [24 x i8], align 8               ; 8 uses
  %i.aj = alloca [24 x i8], align 8               ; 6 uses
  %i.ak = alloca [24 x i8], align 8               ; 17 uses
  %i.al = alloca [20 x i8], align 4               ; 6 uses
  %i.am = alloca [8 x i8], align 8                ; 4 uses
  %i.an = alloca [32 x i8], align 8               ; 7 uses
  %i.ao = alloca [24 x i8], align 8               ; 7 uses
  %i.ap = alloca [32 x i8], align 8               ; 7 uses
  %i.aq = alloca [16 x i8], align 8               ; 5 uses
  %i.ar = alloca [24 x i8], align 8               ; 4 uses
  %i.as = alloca [24 x i8], align 8               ; 9 uses
  %i.at = alloca [24 x i8], align 8               ; 6 uses
  %i.au = alloca [24 x i8], align 8               ; 17 uses
  %i.av = alloca [10 x i8], align 2               ; 6 uses
  %i.aw = alloca [8 x i8], align 8                ; 5 uses
  %i.ax = alloca [8 x i8], align 8                ; 4 uses
  %i.ay = alloca [8 x i8], align 8                ; 4 uses
  %i.az = alloca [20 x i8], align 4               ; 9 uses
  %i.ba = alloca [20 x i8], align 4               ; 6 uses
  %i.bb = alloca [4 x i8], align 4                ; 4 uses
  %.sroa.5 = alloca [40 x i8], align 8            ; 4 uses
  %i.bc = alloca [20 x i8], align 4               ; 5 uses
  %i.bd = alloca [56 x i8], align 8               ; 9 uses
  %i.be = alloca [16 x i8], align 8               ; 5 uses
  %i.bf = alloca [48 x i8], align 8               ; 27 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 14 uses
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !12
  %i.bj = icmp eq i64 %i.bi, 1
  br i1 %i.bj, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.bk = load ptr, ptr %i.bg, align 8, !nonnull !12, !noundef !12
  %i.bl = load i8, ptr %i.bk, align 1, !noundef !12
  %i.bm = icmp eq i8 %i.bl, 27
  br i1 %i.bm, label %bb.d, label %bb.c, !prof !15

bb.c:                                             ; preds = %bb.a, %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @901, i64 noundef 46, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @902) #54
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.bn = tail call fastcc { i1, i8 } @_RNvYNtNtNtCs8frGy5WneL6_4fish5input5input15InputEventQueueNtB4_16InputEventQueuer18read_sequence_byteB8_(ptr noalias nofree noundef align 8 dereferenceable(176) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) ; 2 uses
  %i.bo = extractvalue { i1, i8 } %i.bn, 0
  br i1 %i.bo, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bp = extractvalue { i1, i8 } %i.bn, 1
  switch i8 %i.bp, label %bb.g [
    i8 27, label %bb.h
    i8 91, label %bb.i
    i8 79, label %bb.j
    i8 93, label %bb.av
    i8 80, label %bb.cj
  ]

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  store i32 62722, ptr %i.bc, align 4
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.44.0..sroa_idx, i8 0, i64 13, i1 false)
  call void @_RNvNtNtCs8frGy5WneL6_4fish5input6decode10char_event(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.bf, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  br label %bb.ik

bb.g:                                             ; preds = %bb.h, %bb.e
  store i64 -9223372036854775804, ptr %0, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 1, ptr %i.bq, align 8
  br label %bb.im

bb.h:                                             ; preds = %bb.e
  br i1 %3, label %bb.g, label %bb.hu

bb.i:                                             ; preds = %bb.e
  call fastcc void @_RNvYNtNtNtCs8frGy5WneL6_4fish5input5input15InputEventQueueNtNtB6_6decode19InputEventQueuerExt9parse_csiB8_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.bf, ptr noalias nofree noundef align 8 dereferenceable(176) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2)
  br label %bb.ik

bb.j:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3474)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  %i.br = tail call fastcc { i1, i8 } @_RNvYNtNtNtCs8frGy5WneL6_4fish5input5input15InputEventQueueNtB4_16InputEventQueuer18read_sequence_byteB8_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(176) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2), !noalias !3474 ; 2 uses
  %i.bs = extractvalue { i1, i8 } %i.br, 0
  br i1 %i.bs, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bt = extractvalue { i1, i8 } %i.br, 1        ; 2 uses
  %i.bu = add i8 %i.bt, -48                       ; 2 uses
  %or.cond372.i = icmp ult i8 %i.bu, 10
  br i1 %or.cond372.i, label %.lr.ph.i, label %._crit_edge.i

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !3475
  store i32 79, ptr %i.ba, align 4, !noalias !3475
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  store i32 256, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !3475
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.bv, i8 0, i64 9, i1 false), !noalias !3475
  call void @_RNvNtNtCs8frGy5WneL6_4fish5input6decode10char_event(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.bf, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %i.ba), !noalias !3476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !3475
  br label %_RNvYNtNtNtCs8frGy5WneL6_4fish5input5input15InputEventQueueNtNtB6_6decode19InputEventQueuerExt9parse_ss3B8_.exit

._crit_edge.loopexit.i:                           ; preds = %bb.at
  %i.bw = tail call i32 @llvm.usub.sat.i32(i32 %i.cl, i32 1)
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.k
  %.sroa.06.0.lcssa.i = phi i8 [ %i.bt, %bb.k ], [ %.sroa.06.1.i, %._crit_edge.loopexit.i ]
  %.sroa.0.0.lcssa.i = phi i32 [ 0, %bb.k ], [ %i.bw, %._crit_edge.loopexit.i ] ; 4 uses
  %4 = trunc i32 %.sroa.0.0.lcssa.i to i8
  %5 = lshr i32 %.sroa.0.0.lcssa.i, 2
  %6 = trunc i32 %5 to i8
  %i.bx = and i8 %6, 1
  %7 = lshr i32 %.sroa.0.0.lcssa.i, 1
  %8 = trunc i32 %7 to i8
  %i.by = and i8 %8, 1
  %i.bz = and i8 %4, 1
  %9 = lshr i32 %.sroa.0.0.lcssa.i, 3
  %10 = trunc i32 %9 to i8
  %i.ca = and i8 %10, 1
  switch i8 %.sroa.06.0.lcssa.i, label %bb.m [
    i8 32, label %bb.aq
    i8 65, label %bb.n
    i8 66, label %bb.o
    i8 67, label %bb.p
    i8 68, label %bb.q
    i8 70, label %bb.r
    i8 72, label %bb.s
    i8 73, label %bb.t
    i8 77, label %bb.u
    i8 80, label %bb.v
    i8 81, label %bb.w
    i8 82, label %bb.x
    i8 83, label %bb.y
    i8 88, label %bb.z
    i8 106, label %bb.aa
    i8 107, label %bb.ab
    i8 108, label %bb.ac
    i8 109, label %bb.ad
    i8 110, label %bb.ae
    i8 111, label %bb.af
    i8 112, label %bb.ag
    i8 113, label %bb.ah
    i8 114, label %bb.ai
    i8 115, label %bb.aj
    i8 116, label %bb.ak
    i8 117, label %bb.al
    i8 118, label %bb.am
    i8 119, label %bb.an
    i8 120, label %bb.ao
    i8 121, label %bb.ap
  ]

.lr.ph.i:                                         ; preds = %bb.k, %bb.at
  %i.cb = phi i8 [ %i.cq, %bb.at ], [ %i.bu, %bb.k ]
  %.sroa.0.0373.i = phi i32 [ %i.cl, %bb.at ], [ 0, %bb.k ]
  %i.cc = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.0.0373.i, i32 10) ; 2 uses
  %i.cd = extractvalue { i32, i1 } %i.cc, 1
  br i1 %i.cd, label %bb.ar, label %bb.as

bb.m:                                             ; preds = %._crit_edge.i
  store i64 -1, ptr %i.bf, align 8, !alias.scope !3474, !noalias !3477
  br label %_RNvYNtNtNtCs8frGy5WneL6_4fish5input5input15InputEventQueueNtNtB6_6decode19InputEventQueuerExt9parse_ss3B8_.exit

bb.n:                                             ; preds = %._crit_edge.i
  br label %bb.aq

bb.o:                                             ; preds = %._crit_edge.i
  br label %bb.aq

bb.p:                                             ; preds = %._crit_edge.i
  br label %bb.aq

bb.q:                                             ; preds = %._crit_edge.i
  br label %bb.aq

bb.r:                                             ; preds = %._crit_edge.i
  br label %bb.aq

bb.s:                                             ; preds = %._crit_edge.i
  br label %bb.aq

bb.t:                                             ; preds = %._crit_edge.i
  br label %bb.aq

bb.u:                                             ; preds = %._crit_edge.i
  br label %bb.aq

bb.v:                                             ; preds = %._crit_edge.i
  %i.ce = tail call noundef range(i32 0, 1114112) i32 @_RNvCskr4qsHYS30i_15fish_widestring11char_offset(i32 noundef 62720, i32 noundef 243), !noalias !3478
  br label %bb.aq

bb.w:                                             ; preds = %._crit_edge.i
  %i.cf = tail call noundef range(i32 0, 1114112) i32 @_RNvCskr4qsHYS30i_15fish_widestring11char_offset(i32 noundef 62720, i32 noundef 244), !noalias !3478
  br label %bb.aq

bb.x:                                             ; preds = %._crit_edge.i
  %i.cg = tail call noundef range(i32 0, 1114112) i32 @_RNvCskr4qsHYS30i_15fish_widestring11char_offset(i32 noundef 62720, i32 noundef 245), !noalias !3478
  br label %bb.aq

bb.y:                                             ; preds = %._crit_edge.i
  %i.ch = tail call noundef range(i32 0, 1114112) i32 @_RNvCskr4qsHYS30i_15fish_widestring11char_offset(i32 noundef 62720, i32 noundef 246), !noalias !3478
  br label %bb.aq

bb.z:                                             ; preds = %._crit_edge.i
  br label %bb.aq

bb.aa:                                            ; preds = %._crit_edge.i
  br label %bb.aq

bb.ab:                                            ; preds = %._crit_edge.i
  br label %bb.aq

bb.ac:                                            ; preds = %._crit_edge.i
  br label %bb.aq

bb.ad:                                            ; preds = %._crit_edge.i
  br label %bb.aq

bb.ae:                                            ; preds = %._crit_edge.i
  br label %bb.aq

bb.af:                                            ; preds = %._crit_edge.i
  br label %bb.aq

bb.ag:                                            ; preds = %._crit_edge.i
  br label %bb.aq

bb.ah:                                            ; preds = %._crit_edge.i
  br label %bb.aq

bb.ai:                                            ; preds = %._crit_edge.i
  br label %bb.aq

bb.aj:                                            ; preds = %._crit_edge.i
  br label %bb.aq

bb.ak:                                            ; preds = %._crit_edge.i
  br label %bb.aq

bb.al:                                            ; preds = %._crit_edge.i
  br label %bb.aq

bb.am:                                            ; preds = %._crit_edge.i
  br label %bb.aq

bb.an:                                            ; preds = %._crit_edge.i
  br label %bb.aq

bb.ao:                                            ; preds = %._crit_edge.i
  br label %bb.aq

bb.ap:                                            ; preds = %._crit_edge.i
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %._crit_edge.i
  %.sink.i = phi i32 [ 57, %bb.ap ], [ 56, %bb.ao ], [ 55, %bb.an ], [ 54, %bb.am ], [ 53, %bb.al ], [ 52, %bb.ak ], [ 51, %bb.aj ], [ 50, %bb.ai ], [ 49, %bb.ah ], [ 48, %bb.ag ], [ 47, %bb.af ], [ 46, %bb.ae ], [ 45, %bb.ad ], [ 44, %bb.ac ], [ 43, %bb.ab ], [ 42, %bb.aa ], [ 61, %bb.z ], [ %i.ch, %bb.y ], [ %i.cg, %bb.x ], [ %i.cf, %bb.w ], [ %i.ce, %bb.v ], [ 62723, %bb.u ], [ 62733, %bb.t ], [ 62730, %bb.s ], [ 62731, %bb.r ], [ 62726, %bb.q ], [ 62727, %bb.p ], [ 62725, %bb.o ], [ 62724, %bb.n ], [ 62734, %._crit_edge.i ]
  store i32 %.sink.i, ptr %i.az, align 4, !noalias !3475
  %.sroa.4221.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  store i8 %i.bx, ptr %.sroa.4221.0..sroa_idx.i, align 4, !noalias !3475
  %.sroa.5222.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 5
  store i8 %i.by, ptr %.sroa.5222.0..sroa_idx.i, align 1, !noalias !3475
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 6
  store i8 %i.bz, ptr %.sroa.6.0..sroa_idx.i, align 2, !noalias !3475
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 7
  store i8 %i.ca, ptr %.sroa.7.0..sroa_idx.i, align 1, !noalias !3475
  %i.ci = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.ci, i8 0, i64 9, i1 false), !noalias !3475
  call void @_RNvNtNtCs8frGy5WneL6_4fish5input6decode10char_event(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.bf, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %i.az), !noalias !3476
  br label %_RNvYNtNtNtCs8frGy5WneL6_4fish5input5input15InputEventQueueNtNtB6_6decode19InputEventQueuerExt9parse_ss3B8_.exit

bb.ar:                                            ; preds = %.lr.ph.i
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_mul_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @927) #54, !noalias !3478
  unreachable

bb.as:                                            ; preds = %.lr.ph.i
  %i.cj = extractvalue { i32, i1 } %i.cc, 0       ; 2 uses
  %i.ck = zext nneg i8 %i.cb to i32
  %i.cl = add i32 %i.cj, %i.ck                    ; 3 uses
  %i.cm = icmp ult i32 %i.cl, %i.cj
  br i1 %i.cm, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cn = tail call fastcc { i1, i8 } @_RNvYNtNtNtCs8frGy5WneL6_4fish5input5input15InputEventQueueNtB4_16InputEventQueuer18read_sequence_byteB8_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(176) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2), !noalias !3474 ; 2 uses
  %i.co = extractvalue { i1, i8 } %i.cn, 0
  %i.cp = extractvalue { i1, i8 } %i.cn, 1
  %.sroa.06.1.i = select i1 %i.co, i8 %i.cp, i8 -1 ; 2 uses
  %i.cq = add i8 %.sroa.06.1.i, -48               ; 2 uses
  %or.cond.i = icmp ult i8 %i.cq, 10
  br i1 %or.cond.i, label %.lr.ph.i, label %._crit_edge.loopexit.i

bb.au:                                            ; preds = %bb.as
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @927) #54, !noalias !3478
  unreachable

_RNvYNtNtNtCs8frGy5WneL6_4fish5input5input15InputEventQueueNtNtB6_6decode19InputEventQueuerExt9parse_ss3B8_.exit: ; preds = %bb.l, %bb.m, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  br label %bb.ik

bb.av:                                            ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3479)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3480)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  store ptr %2, ptr %i.ay, align 8, !noalias !3481
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !3481
  store ptr @922, ptr %i.ax, align 8, !noalias !3481, !captures !35
  %i.cr = load i64, ptr %i.bh, align 8, !alias.scope !3480, !noalias !3482, !noundef !12
  %i.cs = icmp eq i64 %i.cr, 2
  br i1 %i.cs, label %bb.aw, label %bb.ax, !prof !15

bb.aw:                                            ; preds = %bb.av
  %i.ct = load ptr, ptr %i.bg, align 8, !alias.scope !3480, !noalias !3482, !nonnull !12, !noundef !12
  %i.cu = load i16, ptr %i.ct, align 1
  %i.cv = icmp ne i16 %i.cu, 23835
  %i.cw = zext i1 %i.cv to i32
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %bb.ay, label %bb.ax, !prof !15

bb.ax:                                            ; preds = %bb.aw, %bb.av
  call void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedQINtNtCs1xwejQucwHj_5alloc3vec3VechERAhj2_ECs8frGy5WneL6_4fish(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ay, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ax, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @926) #54, !noalias !3482
end_hunk_1
