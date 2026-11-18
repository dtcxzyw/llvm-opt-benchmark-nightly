Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_syntax-4c380be9ffe8a404.typst_syntax.43f15894b109c63c-cgu.0?download=true
inline.NumInlined: 3813
inline.NumDeleted: 1552
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RNvMsB_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs5PEMdK7bMAG_12typst_syntax4node9ErrorNodeE8make_mutBK_:bb.a
bb.s:                                             ; preds = %bb.r
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowTNtNtB4_6string9EcoStringINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEEB1Q_(ptr noundef nonnull %.val46.i.i.i.i, i64 noundef %.val47.i.i.i.i) #58
          to label %.noexc51.i.i.i.i unwind label %bb.t, !noalias !5213

.noexc51.i.i.i.i:                                 ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #59
          to label %bb.o unwind label %bb.u, !noalias !5213

bb.u:                                             ; preds = %bb.t, %bb.o
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61, !noalias !5213
  unreachable

common.resume:                                    ; preds = %bb.ag, %bb.af, %.body.thread.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body7.i, %.body.thread.i ], [ %i.bl, %bb.ag ], [ %i.bk, %bb.af ]
  resume { ptr, i32 } %common.resume.op

.body.thread.i:                                   ; preds = %bb.o, %.body.thread8.i
  %eh.lpad-body7.i = phi { ptr, i32 } [ %i.ac, %.body.thread8.i ], [ %.pn.i.i.i.i, %bb.o ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync15UniqueArcUninitNtNtCs5PEMdK7bMAG_12typst_syntax4node9ErrorNodeNtNtBG_5alloc6GlobalEEB1q_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c) #59
          to label %common.resume unwind label %bb.v, !noalias !5207

bb.v:                                             ; preds = %.body.thread.i
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61, !noalias !5207
  unreachable

_RNvMsk_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs5PEMdK7bMAG_12typst_syntax4node9ErrorNodeE17clone_from_ref_inBK_.exit: ; preds = %bb.q, %bb.r
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 16
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !noalias !5215
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !noalias !5215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5213
  store ptr %.val46.i.i.i.i, ptr %i.as, align 8, !noalias !5215
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 24
  store i64 %.val47.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !5215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5207
  %i.at = atomicrmw add ptr %i.d, i64 -1 release, align 8, !noalias !5216
  %i.au = icmp eq i64 %i.at, 1
  br i1 %i.au, label %bb.w, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs5PEMdK7bMAG_12typst_syntax4node9ErrorNodeEEB1d_.exit

bb.w:                                             ; preds = %_RNvMsk_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs5PEMdK7bMAG_12typst_syntax4node9ErrorNodeE17clone_from_ref_inBK_.exit
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs5PEMdK7bMAG_12typst_syntax4node9ErrorNodeE9drop_slowBK_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %0) #57
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs5PEMdK7bMAG_12typst_syntax4node9ErrorNodeEEB1d_.exit unwind label %bb.ag

bb.x:                                             ; preds = %bb.b
  store atomic i64 1, ptr %i.d release, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCs5PEMdK7bMAG_12typst_syntax4node9ErrorNodeEEB1e_.exit12

bb.y:                                             ; preds = %bb.b
  %i.av = invoke { i64, i64 } @_RNvNtCs1xwejQucwHj_5alloc4sync32arcinner_layout_for_value_layout(i64 noundef 8, i64 noundef 48)
          to label %.noexc9 unwind label %bb.af   ; 2 uses

.noexc9:                                          ; preds = %bb.y
  %i.aw = extractvalue { i64, i64 } %i.av, 0      ; 3 uses
  %i.ax = extractvalue { i64, i64 } %i.av, 1      ; 3 uses
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.noexc9
  %i.az = inttoptr i64 %i.aw to ptr
  br label %_RNCNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB8_15UniqueArcUninitNtNtCs5PEMdK7bMAG_12typst_syntax4node9ErrorNodeNtNtBa_5alloc6GlobalE3new0B10_.exit.i.i

bb.aa:                                            ; preds = %.noexc9
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #60, !noalias !5217
  %i.ba = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.ax, i64 noundef range(i64 1, -9223372036854775807) %i.aw) #60, !noalias !5217
  br label %_RNCNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB8_15UniqueArcUninitNtNtCs5PEMdK7bMAG_12typst_syntax4node9ErrorNodeNtNtBa_5alloc6GlobalE3new0B10_.exit.i.i

_RNCNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB8_15UniqueArcUninitNtNtCs5PEMdK7bMAG_12typst_syntax4node9ErrorNodeNtNtBa_5alloc6GlobalE3new0B10_.exit.i.i: ; preds = %bb.aa, %bb.z
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.az, %bb.z ], [ %i.ba, %bb.aa ] ; 8 uses
  %i.bb = icmp eq ptr %.sroa.0.0.i.i.i.i.i, null
  br i1 %i.bb, label %bb.ab, label %bb.ac, !prof !23

bb.ab:                                            ; preds = %_RNCNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB8_15UniqueArcUninitNtNtCs5PEMdK7bMAG_12typst_syntax4node9ErrorNodeNtNtBa_5alloc6GlobalE3new0B10_.exit.i.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef %i.aw, i64 noundef %i.ax) #58
          to label %.noexc10 unwind label %bb.af

.noexc10:                                         ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %_RNCNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB8_15UniqueArcUninitNtNtCs5PEMdK7bMAG_12typst_syntax4node9ErrorNodeNtNtBa_5alloc6GlobalE3new0B10_.exit.i.i
  store i64 1, ptr %.sroa.0.0.i.i.i.i.i, align 8, !noalias !5217
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 8
  store i64 1, ptr %i.bc, align 8, !noalias !5217
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.be, ptr noundef nonnull align 8 dereferenceable(48) %i.bd, i64 48, i1 false)
  store ptr %.sroa.0.0.i.i.i.i.i, ptr %0, align 8
  %i.bf = icmp eq ptr %i.d, inttoptr (i64 -1 to ptr)
  br i1 %i.bf, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCs5PEMdK7bMAG_12typst_syntax4node9ErrorNodeEEB1e_.exit12, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bg = atomicrmw add ptr %i.g, i64 -1 release, align 8
  %i.bh = icmp eq i64 %i.bg, 1
  br i1 %i.bh, label %bb.ae, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCs5PEMdK7bMAG_12typst_syntax4node9ErrorNodeEEB1e_.exit12

bb.ae:                                            ; preds = %bb.ad
  fence acquire
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 64, i64 noundef 8) #60
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCs5PEMdK7bMAG_12typst_syntax4node9ErrorNodeEEB1e_.exit12

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCs5PEMdK7bMAG_12typst_syntax4node9ErrorNodeEEB1e_.exit12: ; preds = %bb.ac, %bb.ad, %bb.ae, %bb.x, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs5PEMdK7bMAG_12typst_syntax4node9ErrorNodeEEB1d_.exit
  %i.bi = phi ptr [ %.sroa.0.0.i.i.i.i.i, %bb.ac ], [ %.sroa.0.0.i.i.i.i.i, %bb.ad ], [ %.sroa.0.0.i.i.i.i.i, %bb.ae ], [ %i.d, %bb.x ], [ %.sroa.0.0.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs5PEMdK7bMAG_12typst_syntax4node9ErrorNodeEEB1d_.exit ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  ret ptr %i.bj

bb.af:                                            ; preds = %bb.ab, %bb.y
  %i.bk = landingpad { ptr, i32 }
          cleanup
  store atomic i64 1, ptr %i.d release, align 8, !noalias !5218
  br label %common.resume

bb.ag:                                            ; preds = %bb.w
  %i.bl = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.0.0.i.i.i.i.i.i, ptr %0, align 8
  br label %common.resume

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs5PEMdK7bMAG_12typst_syntax4node9ErrorNodeEEB1d_.exit: ; preds = %_RNvMsk_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs5PEMdK7bMAG_12typst_syntax4node9ErrorNodeE17clone_from_ref_inBK_.exit, %bb.w
  store ptr %.sroa.0.0.i.i.i.i.i.i, ptr %0, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCs5PEMdK7bMAG_12typst_syntax4node9ErrorNodeEEB1e_.exit12
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMsB_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs5PEMdK7bMAG_12typst_syntax4node9InnerNodeE8make_mutBK_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !19, !noundef !19 ; 15 uses
  %i.d = cmpxchg ptr %i.c, i64 1, i64 0 acquire monotonic, align 8
  %i.e = extractvalue { i64, i1 } %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.g = load atomic i64, ptr %i.f monotonic, align 8
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.x, label %bb.y

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5254)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5254
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5255)
  %i.i = tail call { i64, i64 } @_RNvNtCs1xwejQucwHj_5alloc4sync32arcinner_layout_for_value_layout(i64 noundef 8, i64 noundef 56), !noalias !5256 ; 2 uses
  %i.j = extractvalue { i64, i64 } %i.i, 0        ; 3 uses
  %i.k = extractvalue { i64, i64 } %i.i, 1        ; 3 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = inttoptr i64 %i.j to ptr
  br label %_RNCNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB8_15UniqueArcUninitNtNtCs5PEMdK7bMAG_12typst_syntax4node9InnerNodeNtNtBa_5alloc6GlobalE3new0B10_.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #60, !noalias !5256
  %i.n = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) %i.j) #60, !noalias !5256
  br label %_RNCNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB8_15UniqueArcUninitNtNtCs5PEMdK7bMAG_12typst_syntax4node9InnerNodeNtNtBa_5alloc6GlobalE3new0B10_.exit.i.i.i

_RNCNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB8_15UniqueArcUninitNtNtCs5PEMdK7bMAG_12typst_syntax4node9InnerNodeNtNtBa_5alloc6GlobalE3new0B10_.exit.i.i.i: ; preds = %bb.e, %bb.d
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.m, %bb.d ], [ %i.n, %bb.e ] ; 12 uses
  %i.o = icmp eq ptr %.sroa.0.0.i.i.i.i.i.i, null
  br i1 %i.o, label %bb.f, label %_RNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB6_15UniqueArcUninitNtNtCs5PEMdK7bMAG_12typst_syntax4node9InnerNodeNtNtB8_5alloc6GlobalE3newBY_.exit.i, !prof !23

bb.f:                                             ; preds = %_RNCNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB8_15UniqueArcUninitNtNtCs5PEMdK7bMAG_12typst_syntax4node9InnerNodeNtNtBa_5alloc6GlobalE3new0B10_.exit.i.i.i
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef %i.j, i64 noundef %i.k) #58, !noalias !5256
  unreachable

_RNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB6_15UniqueArcUninitNtNtCs5PEMdK7bMAG_12typst_syntax4node9InnerNodeNtNtB8_5alloc6GlobalE3newBY_.exit.i: ; preds = %_RNCNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB8_15UniqueArcUninitNtNtCs5PEMdK7bMAG_12typst_syntax4node9InnerNodeNtNtBa_5alloc6GlobalE3new0B10_.exit.i.i.i
  store i64 1, ptr %.sroa.0.0.i.i.i.i.i.i, align 8, !noalias !5256
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8
  store i64 1, ptr %i.p, align 8, !noalias !5256
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.0.0.i.i.i.i.i.i, ptr %i.q, align 8, !alias.scope !5255, !noalias !5254
  store i64 8, ptr %i.b, align 8, !alias.scope !5255, !noalias !5254
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 56, ptr %i.r, align 8, !alias.scope !5255, !noalias !5254
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i8 1, ptr %i.s, align 8, !alias.scope !5255, !noalias !5254
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5257)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5258)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5259)
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.u = load <2 x i64>, ptr %i.t, align 8, !alias.scope !5260
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.w = load i8, ptr %i.v, align 8, !range !20, !alias.scope !5260, !noundef !19
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 65
  %i.y = load i8, ptr %i.x, align 1, !range !20, !alias.scope !5260, !noundef !19
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !5260, !noundef !19
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.val.i.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !5260, !nonnull !19, !noundef !19 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.val1.i.i.i.i = load i64, ptr %i.ac, align 8, !alias.scope !5260, !noundef !19 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5261)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5262
  %i.ad = shl nuw nsw i64 %.val1.i.i.i.i, 5       ; 2 uses
  %i.ae = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.ae, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5PEMdK7bMAG_12typst_syntax.exit.thread.i.i.i.i.i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5PEMdK7bMAG_12typst_syntax.exit.thread.i.i.i.i.i.i: ; preds = %_RNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB6_15UniqueArcUninitNtNtCs5PEMdK7bMAG_12typst_syntax4node9InnerNodeNtNtB8_5alloc6GlobalE3newBY_.exit.i
  store i64 0, ptr %i.a, align 8, !noalias !5262
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.af, align 8, !noalias !5262
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %_RNvMsk_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs5PEMdK7bMAG_12typst_syntax4node9InnerNodeE17clone_from_ref_inBK_.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i: ; preds = %_RNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB6_15UniqueArcUninitNtNtCs5PEMdK7bMAG_12typst_syntax4node9InnerNodeNtNtB8_5alloc6GlobalE3newBY_.exit.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #60, !noalias !5263
  %i.ah = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.ad, i64 noundef range(i64 1, 9) 8) #60, !noalias !5263 ; 3 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.g, label %.lr.ph.preheader.i.i.i.i.i.i

bb.g:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ad) #58
          to label %.noexc.i unwind label %.body.thread8.i, !noalias !5254

.body.thread8.i:                                  ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

.noexc.i:                                         ; preds = %bb.g
  unreachable

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i
  store i64 %.val1.i.i.i.i, ptr %i.a, align 8, !noalias !5262
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ah, ptr %i.ak, align 8, !noalias !5262
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %1 = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i.i.i, i64 %.val1.i.i.i.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.s, %.lr.ph.preheader.i.i.i.i.i.i
  %.sroa.013.050.i.i.i.i.i.i = phi ptr [ %i.am, %bb.s ], [ %.val.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 8 uses
  %.sroa.7.049.i.i.i.i.i.i = phi i64 [ %i.an, %bb.s ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i ] ; 3 uses
  %.sroa.10.048.i.i.i.i.i.i = phi i64 [ %2, %bb.s ], [ %.val1.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i ]
  %2 = add nsw i64 %.sroa.10.048.i.i.i.i.i.i, -1  ; 2 uses
  %3 = icmp eq ptr %.sroa.013.050.i.i.i.i.i.i, %1
  br i1 %3, label %_RNvMsk_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs5PEMdK7bMAG_12typst_syntax4node9InnerNodeE17clone_from_ref_inBK_.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.013.050.i.i.i.i.i.i, i64 32
  %i.an = add nuw nsw i64 %.sroa.7.049.i.i.i.i.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5265)
  %i.ao = load i8, ptr %.sroa.013.050.i.i.i.i.i.i, align 8, !range !30, !alias.scope !5266, !noalias !5267, !noundef !19 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.013.050.i.i.i.i.i.i, i64 8 ; 4 uses
  switch i8 %i.ao, label %default.unreachable [
    i8 0, label %bb.i
    i8 1, label %bb.j
    i8 2, label %bb.k
    i8 3, label %bb.l
  ]

default.unreachable:                              ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.013.050.i.i.i.i.i.i, i64 23
  %i.ar = load i8, ptr %i.aq, align 1, !alias.scope !5266, !noalias !5267, !noundef !19
  %.not.i.i12.i.i.i.i.i.i = icmp sgt i8 %i.ar, -1
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.013.050.i.i.i.i.i.i, i64 16
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !5266, !noalias !5267 ; 5 uses
  %.val21.i.i.i.i.i.i.i.i = load i64, ptr %i.as, align 8, !alias.scope !5266, !noalias !5267 ; 3 uses
  br i1 %.not.i.i12.i.i.i.i.i.i, label %bb.m, label %bb.s

bb.j:                                             ; preds = %bb.h
  %i.at = load ptr, ptr %i.ap, align 8, !alias.scope !5266, !noalias !5267, !nonnull !19, !noundef !19 ; 2 uses
  %i.au = atomicrmw add ptr %i.at, i64 1 monotonic, align 8, !noalias !5268
  %i.av = icmp slt i64 %i.au, 0
  br i1 %i.av, label %bb.p, label %bb.s

bb.k:                                             ; preds = %bb.h
  %i.aw = load ptr, ptr %i.ap, align 8, !alias.scope !5266, !noalias !5267, !nonnull !19, !noundef !19 ; 2 uses
  %i.ax = atomicrmw add ptr %i.aw, i64 1 monotonic, align 8, !noalias !5268
  %i.ay = icmp slt i64 %i.ax, 0
  br i1 %i.ay, label %bb.q, label %bb.s

bb.l:                                             ; preds = %bb.h
  %i.az = load ptr, ptr %i.ap, align 8, !alias.scope !5266, !noalias !5267, !nonnull !19, !noundef !19 ; 2 uses
  %i.ba = atomicrmw add ptr %i.az, i64 1 monotonic, align 8, !noalias !5268
  %i.bb = icmp slt i64 %i.ba, 0
  br i1 %i.bb, label %bb.r, label %bb.s

bb.m:                                             ; preds = %bb.i
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds i8, ptr %.val.i.i.i.i.i.i.i.i, i64 -16
  %i.bd = atomicrmw add ptr %i.bc, i64 1 monotonic, align 8, !noalias !5268
  %i.be = icmp slt i64 %i.bd, 0
  br i1 %i.be, label %bb.o, label %bb.s, !prof !23

bb.o:                                             ; preds = %bb.n
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs5PEMdK7bMAG_12typst_syntax(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i) #58
          to label %.noexc.i.i.i.i.i.i unwind label %bb.u

.noexc.i.i.i.i.i.i:                               ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.j
  tail call void @llvm.trap()
  unreachable

bb.q:                                             ; preds = %bb.k
  tail call void @llvm.trap()
  unreachable

bb.r:                                             ; preds = %bb.l
  tail call void @llvm.trap()
  unreachable

bb.s:                                             ; preds = %bb.i, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  %.sroa.9.0.i.i.i.i.i.i.i = phi i64 [ undef, %bb.k ], [ %.val21.i.i.i.i.i.i.i.i, %bb.n ], [ undef, %bb.j ], [ undef, %bb.l ], [ %.val21.i.i.i.i.i.i.i.i, %bb.m ], [ %.val21.i.i.i.i.i.i.i.i, %bb.i ]
  %.sroa.51.0.i.i.i.i.i.i.i = phi ptr [ %i.aw, %bb.k ], [ %.val.i.i.i.i.i.i.i.i, %bb.n ], [ %i.at, %bb.j ], [ %i.az, %bb.l ], [ inttoptr (i64 16 to ptr), %bb.m ], [ %.val.i.i.i.i.i.i.i.i, %bb.i ]
  %.sink23.i.in.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.050.i.i.i.i.i.i, i64 1
  %.sink23.i.i.i.i.i.i.i.i = load i8, ptr %.sink23.i.in.i.i.i.i.i.i.i, align 1, !range !21, !alias.scope !5266, !noalias !5267, !noundef !19
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.013.050.i.i.i.i.i.i, i64 24
  %i.bg = load i64, ptr %i.bf, align 8, !range !31, !alias.scope !5269, !noalias !5267, !noundef !19
  %i.bh = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %.sroa.7.049.i.i.i.i.i.i ; 5 uses
  store i8 %i.ao, ptr %i.bh, align 8, !noalias !5262
  %.sroa.431.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  store i8 %.sink23.i.i.i.i.i.i.i.i, ptr %.sroa.431.0..sroa_idx.i.i.i.i.i.i, align 1, !noalias !5262
  %.sroa.633.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %.sroa.51.0.i.i.i.i.i.i.i, ptr %.sroa.633.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5262
  %.sroa.734.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i64 %.sroa.9.0.i.i.i.i.i.i.i, ptr %.sroa.734.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5262
  %.sroa.835.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  store i64 %i.bg, ptr %.sroa.835.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5262
  %i.bi = icmp eq i64 %2, 0
  br i1 %i.bi, label %_RNvMsk_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs5PEMdK7bMAG_12typst_syntax4node9InnerNodeE17clone_from_ref_inBK_.exit, label %.lr.ph.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.u
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61, !noalias !5262
  unreachable

bb.u:                                             ; preds = %bb.o
  %i.bk = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.049.i.i.i.i.i.i, ptr %i.al, align 8, !noalias !5262
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #59
          to label %.body.thread.i unwind label %bb.t, !noalias !5262

common.resume:                                    ; preds = %bb.ag, %bb.af, %.body.thread.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body7.i, %.body.thread.i ], [ %i.cf, %bb.ag ], [ %i.ce, %bb.af ]
  resume { ptr, i32 } %common.resume.op

.body.thread.i:                                   ; preds = %bb.u, %.body.thread8.i
  %eh.lpad-body7.i = phi { ptr, i32 } [ %i.aj, %.body.thread8.i ], [ %i.bk, %bb.u ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync15UniqueArcUninitNtNtCs5PEMdK7bMAG_12typst_syntax4node9InnerNodeNtNtBG_5alloc6GlobalEEB1q_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.b) #59
          to label %common.resume unwind label %bb.v, !noalias !5254

bb.v:                                             ; preds = %.body.thread.i
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61, !noalias !5254
  unreachable

_RNvMsk_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs5PEMdK7bMAG_12typst_syntax4node9InnerNodeE17clone_from_ref_inBK_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.s, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5PEMdK7bMAG_12typst_syntax.exit.thread.i.i.i.i.i.i
  %4 = phi ptr [ %i.ag, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5PEMdK7bMAG_12typst_syntax.exit.thread.i.i.i.i.i.i ], [ %i.al, %bb.s ], [ %i.al, %.lr.ph.i.i.i.i.i.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 16
  store i64 %.val1.i.i.i.i, ptr %4, align 8, !noalias !5262
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !5270
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5262
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 40
  store <2 x i64> %i.u, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !5270
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 56
  store i64 %i.aa, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !5270
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 64
  store i8 %i.w, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !5270
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 65
  store i8 %i.y, ptr %.sroa.8.0..sroa_idx.i.i.i, align 1, !noalias !5270
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5254
  %i.bn = atomicrmw add ptr %i.c, i64 -1 release, align 8, !noalias !5271
  %i.bo = icmp eq i64 %i.bn, 1
  br i1 %i.bo, label %bb.w, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs5PEMdK7bMAG_12typst_syntax4node9InnerNodeEEB1d_.exit

bb.w:                                             ; preds = %_RNvMsk_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs5PEMdK7bMAG_12typst_syntax4node9InnerNodeE17clone_from_ref_inBK_.exit
  fence acquire, !noalias !5272
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs5PEMdK7bMAG_12typst_syntax4node9InnerNodeE9drop_slowBK_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %0) #57
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs5PEMdK7bMAG_12typst_syntax4node9InnerNodeEEB1d_.exit unwind label %bb.ag, !inline_history !5247

bb.x:                                             ; preds = %bb.b
  store atomic i64 1, ptr %i.c release, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCs5PEMdK7bMAG_12typst_syntax4node9InnerNodeEEB1e_.exit12

bb.y:                                             ; preds = %bb.b
  %i.bp = invoke { i64, i64 } @_RNvNtCs1xwejQucwHj_5alloc4sync32arcinner_layout_for_value_layout(i64 noundef 8, i64 noundef 56)
          to label %.noexc9 unwind label %bb.af   ; 2 uses

.noexc9:                                          ; preds = %bb.y
  %i.bq = extractvalue { i64, i64 } %i.bp, 0      ; 3 uses
  %i.br = extractvalue { i64, i64 } %i.bp, 1      ; 3 uses
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.noexc9
  %i.bt = inttoptr i64 %i.bq to ptr
  br label %_RNCNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB8_15UniqueArcUninitNtNtCs5PEMdK7bMAG_12typst_syntax4node9InnerNodeNtNtBa_5alloc6GlobalE3new0B10_.exit.i.i

bb.aa:                                            ; preds = %.noexc9
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #60, !noalias !5273
  %i.bu = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.br, i64 noundef range(i64 1, -9223372036854775807) %i.bq) #60, !noalias !5273
  br label %_RNCNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB8_15UniqueArcUninitNtNtCs5PEMdK7bMAG_12typst_syntax4node9InnerNodeNtNtBa_5alloc6GlobalE3new0B10_.exit.i.i

_RNCNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB8_15UniqueArcUninitNtNtCs5PEMdK7bMAG_12typst_syntax4node9InnerNodeNtNtBa_5alloc6GlobalE3new0B10_.exit.i.i: ; preds = %bb.aa, %bb.z
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.bt, %bb.z ], [ %i.bu, %bb.aa ] ; 8 uses
  %i.bv = icmp eq ptr %.sroa.0.0.i.i.i.i.i, null
  br i1 %i.bv, label %bb.ab, label %bb.ac, !prof !23

bb.ab:                                            ; preds = %_RNCNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB8_15UniqueArcUninitNtNtCs5PEMdK7bMAG_12typst_syntax4node9InnerNodeNtNtBa_5alloc6GlobalE3new0B10_.exit.i.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef %i.bq, i64 noundef %i.br) #58
          to label %.noexc10 unwind label %bb.af

.noexc10:                                         ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %_RNCNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB8_15UniqueArcUninitNtNtCs5PEMdK7bMAG_12typst_syntax4node9InnerNodeNtNtBa_5alloc6GlobalE3new0B10_.exit.i.i
  store i64 1, ptr %.sroa.0.0.i.i.i.i.i, align 8, !noalias !5273
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 8
  store i64 1, ptr %i.bw, align 8, !noalias !5273
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.by, ptr noundef nonnull align 8 dereferenceable(56) %i.bx, i64 56, i1 false)
  store ptr %.sroa.0.0.i.i.i.i.i, ptr %0, align 8
  %i.bz = icmp eq ptr %i.c, inttoptr (i64 -1 to ptr)
  br i1 %i.bz, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCs5PEMdK7bMAG_12typst_syntax4node9InnerNodeEEB1e_.exit12, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ca = atomicrmw add ptr %i.f, i64 -1 release, align 8
  %i.cb = icmp eq i64 %i.ca, 1
  br i1 %i.cb, label %bb.ae, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCs5PEMdK7bMAG_12typst_syntax4node9InnerNodeEEB1e_.exit12

bb.ae:                                            ; preds = %bb.ad
  fence acquire
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef 72, i64 noundef 8) #60
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCs5PEMdK7bMAG_12typst_syntax4node9InnerNodeEEB1e_.exit12

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCs5PEMdK7bMAG_12typst_syntax4node9InnerNodeEEB1e_.exit12: ; preds = %bb.ac, %bb.ad, %bb.ae, %bb.x, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs5PEMdK7bMAG_12typst_syntax4node9InnerNodeEEB1d_.exit
  %i.cc = phi ptr [ %.sroa.0.0.i.i.i.i.i, %bb.ac ], [ %.sroa.0.0.i.i.i.i.i, %bb.ad ], [ %.sroa.0.0.i.i.i.i.i, %bb.ae ], [ %i.c, %bb.x ], [ %.sroa.0.0.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs5PEMdK7bMAG_12typst_syntax4node9InnerNodeEEB1d_.exit ]
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  ret ptr %i.cd

bb.af:                                            ; preds = %bb.ab, %bb.y
  %i.ce = landingpad { ptr, i32 }
          cleanup
  store atomic i64 1, ptr %i.c release, align 8, !noalias !5274
  br label %common.resume

bb.ag:                                            ; preds = %bb.w
  %i.cf = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.0.0.i.i.i.i.i.i, ptr %0, align 8
  br label %common.resume

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs5PEMdK7bMAG_12typst_syntax4node9InnerNodeEEB1d_.exit: ; preds = %_RNvMsk_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs5PEMdK7bMAG_12typst_syntax4node9InnerNodeE17clone_from_ref_inBK_.exit, %bb.w
  store ptr %.sroa.0.0.i.i.i.i.i.i, ptr %0, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCs5PEMdK7bMAG_12typst_syntax4node9InnerNodeEEB1e_.exit12
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_RNvMsB_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_4Bool3get(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #19 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.04.0 = phi ptr [ %0, %bb.a ], [ %i.h, %bb.e ] ; 4 uses
  %i.a = load i8, ptr %.sroa.04.0, align 8, !range !30, !noundef !19
  switch i8 %i.a, label %default.unreachable14 [
    i8 0, label %bb.c
    i8 1, label %.loopexit
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable14:                            ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 8
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !19, !noundef !19
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !19, !noundef !19
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  br label %bb.b

.loopexit:                                        ; preds = %bb.b, %bb.d, %bb.c
  %.sroa.01.0 = phi ptr [ %i.b, %bb.c ], [ %i.e, %bb.d ], [ @_RNvNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB6_10SyntaxNode9leaf_text5EMPTY, %bb.b ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 15
  %i.j = load i8, ptr %i.i, align 1, !alias.scope !5277, !noundef !19 ; 2 uses
  %.not.i = icmp sgt i8 %i.j, -1                  ; 2 uses
  %i.k = and i8 %i.j, 127
  %i.l = zext nneg i8 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !5277
  %.sroa.3.0.i = select i1 %.not.i, i64 %i.n, i64 %i.l
  %i.o = icmp eq i64 %.sroa.3.0.i, 4
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.loopexit
  %i.p = load ptr, ptr %.sroa.01.0, align 8, !alias.scope !5277, !nonnull !19
  %.sroa.0.0.i = select i1 %.not.i, ptr %i.p, ptr %.sroa.01.0
  %i.q = load i32, ptr %.sroa.0.0.i, align 1
  %i.r = icmp ne i32 %i.q, 1702195828
  %i.s = zext i1 %i.r to i32
  %i.t = icmp eq i32 %i.s, 0
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %bb.f
  %.sroa.0.0 = phi i1 [ %i.t, %bb.f ], [ false, %.loopexit ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_RNvMsC_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_3Int3get(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #30 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.011.0 = phi ptr [ %0, %bb.a ], [ %i.i, %bb.e ] ; 4 uses
  %i.b = load i8, ptr %.sroa.011.0, align 8, !range !30, !noundef !19
  switch i8 %i.b, label %default.unreachable45 [
    i8 0, label %bb.c
    i8 1, label %.loopexit
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable45:                            ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.011.0, i64 8
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.011.0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !19, !noundef !19
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.011.0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !19, !noundef !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  br label %bb.b

.loopexit:                                        ; preds = %bb.b, %bb.d, %bb.c
  %.sroa.0.0 = phi ptr [ %i.c, %bb.c ], [ %i.f, %bb.d ], [ @_RNvNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB6_10SyntaxNode9leaf_text5EMPTY, %bb.b ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 15
  %i.k = load i8, ptr %i.j, align 1, !alias.scope !5280, !noundef !19 ; 2 uses
  %.not.i = icmp sgt i8 %i.k, -1                  ; 2 uses
end_hunk_0
