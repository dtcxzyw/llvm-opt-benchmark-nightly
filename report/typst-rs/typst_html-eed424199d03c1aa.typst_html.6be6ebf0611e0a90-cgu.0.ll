Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_html-eed424199d03c1aa.typst_html.6be6ebf0611e0a90-cgu.0?download=true
inline.NumInlined: 8939
inline.NumDeleted: 4345
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_RNvMsf_NtCs9gmjTwvRRSu_10typst_html3domNtB5_9HtmlFrame3new:bb.a
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 0, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %3, ptr %i.bu, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.p:                                             ; preds = %bb.n
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs9gmjTwvRRSu_10typst_html.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.n
  resume { ptr, i32 } %lpad.loopexit.split-lp51
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs9gmjTwvRRSu_10typst_html10introspect16HtmlIntrospectorE9drop_slowBK_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #23 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !52, !noundef !52 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9gmjTwvRRSu_10typst_html10introspect16HtmlIntrospectorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %i.b)
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCs9gmjTwvRRSu_10typst_html10introspect16HtmlIntrospectorRNtNtBG_5alloc6GlobalEEB1e_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = atomicrmw add ptr %i.e, i64 -1 release, align 8
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCs9gmjTwvRRSu_10typst_html10introspect16HtmlIntrospectorRNtNtBG_5alloc6GlobalEEB1e_.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 248, i64 noundef 8) #53
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCs9gmjTwvRRSu_10typst_html10introspect16HtmlIntrospectorRNtNtBG_5alloc6GlobalEEB1e_.exit

bb.e:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCs9gmjTwvRRSu_10typst_html10introspect16HtmlIntrospectorRNtNtBG_5alloc6GlobalEEB1e_.exit2, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = atomicrmw add ptr %i.i, i64 -1 release, align 8
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCs9gmjTwvRRSu_10typst_html10introspect16HtmlIntrospectorRNtNtBG_5alloc6GlobalEEB1e_.exit2

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 248, i64 noundef 8) #53
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCs9gmjTwvRRSu_10typst_html10introspect16HtmlIntrospectorRNtNtBG_5alloc6GlobalEEB1e_.exit2

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCs9gmjTwvRRSu_10typst_html10introspect16HtmlIntrospectorRNtNtBG_5alloc6GlobalEEB1e_.exit2: ; preds = %bb.e, %bb.f, %bb.g
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCs9gmjTwvRRSu_10typst_html10introspect16HtmlIntrospectorRNtNtBG_5alloc6GlobalEEB1e_.exit: ; preds = %bb.d, %bb.c, %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsz_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8IntoIterjNtNtB7_7set_val9SetValZSTE10dying_nextCs9gmjTwvRRSu_10typst_html(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !52 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14901)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14902)
  %.sroa.01.0.copyload.i.i = load i64, ptr %1, align 8, !alias.scope !14903
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !14903 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !14903 ; 5 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !14903 ; 5 uses
  store i64 0, ptr %1, align 8, !alias.scope !14903
  %i.d = trunc nuw i64 %.sroa.01.0.copyload.i.i to i1
  br i1 %i.d, label %bb.c, label %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingjNtNtB8_7set_val9SetValZSTE16deallocating_endNtNtBc_5alloc6GlobalECs9gmjTwvRRSu_10typst_html.exit

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
  %i.g = load ptr, ptr %i.f, align 8, !noalias !14904, !nonnull !52, !noundef !52 ; 3 uses
  %i.h = add i64 %.sroa.020.024.i.i.prol, -1      ; 2 uses
  %prol.iter53.next = add i64 %prol.iter53, 1     ; 2 uses
  %prol.iter53.cmp.not = icmp eq i64 %prol.iter53.next, %xtraiter51
  br i1 %prol.iter53.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !14873

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
  %i.k = load ptr, ptr %i.j, align 8, !noalias !14904, !nonnull !52, !noundef !52
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.m = load ptr, ptr %i.l, align 8, !noalias !14904, !nonnull !52, !noundef !52
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  %i.o = load ptr, ptr %i.n, align 8, !noalias !14904, !nonnull !52, !noundef !52
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  %i.q = load ptr, ptr %i.p, align 8, !noalias !14904, !nonnull !52, !noundef !52
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  %i.s = load ptr, ptr %i.r, align 8, !noalias !14904, !nonnull !52, !noundef !52
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 104
  %i.u = load ptr, ptr %i.t, align 8, !noalias !14904, !nonnull !52, !noundef !52
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  %i.w = load ptr, ptr %i.v, align 8, !noalias !14904, !nonnull !52, !noundef !52
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  %i.y = load ptr, ptr %i.x, align 8, !noalias !14904, !nonnull !52, !noundef !52 ; 2 uses
  %i.z = add i64 %.sroa.020.024.i.i, -8           ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.loopexit.i, label %.lr.ph.i.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d, %bb.c
  %.sroa.8.0.ph.i = phi ptr [ null, %bb.d ], [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.c ], [ null, %.lr.ph.i.i ], [ null, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.0.0.ph.i = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.d ], [ %.sroa.5.sroa.0.0.copyload.i.i, %bb.c ], [ %.lcssa41.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.y, %.lr.ph.i.i ] ; 3 uses
  %i.ab = ptrtoint ptr %.sroa.8.0.ph.i to i64     ; 2 uses
  %i.ac = load ptr, ptr %.sroa.0.0.ph.i, align 8, !noalias !14905, !noundef !52 ; 2 uses
  %.not.i.i4.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i4.i.i, label %_RINvMsj_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingjNtNtB8_7set_val9SetValZSTNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs9gmjTwvRRSu_10typst_html.exit.i, label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %.loopexit.i, %.lr.ph.i2.i
  %i.ad = phi ptr [ %i.af, %.lr.ph.i2.i ], [ %i.ac, %.loopexit.i ] ; 3 uses
  %.sroa.0.06.i.i = phi ptr [ %i.ad, %.lr.ph.i2.i ], [ %.sroa.0.0.ph.i, %.loopexit.i ]
  %.sroa.3.05.i.i = phi i64 [ %i.ae, %.lr.ph.i2.i ], [ %i.ab, %.loopexit.i ] ; 2 uses
  %i.ae = add i64 %.sroa.3.05.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sroa.3.05.i.i, 0
  %..i.i.i = select i1 %.not.i.i.i, i64 104, i64 200
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.06.i.i, i64 noundef %..i.i.i, i64 noundef 8) #53, !noalias !14906
  %i.af = load ptr, ptr %i.ad, align 8, !noalias !14905, !noundef !52 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i, label %_RINvMsj_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingjNtNtB8_7set_val9SetValZSTNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs9gmjTwvRRSu_10typst_html.exit.i, label %.lr.ph.i2.i

_RINvMsj_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingjNtNtB8_7set_val9SetValZSTNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs9gmjTwvRRSu_10typst_html.exit.i: ; preds = %.lr.ph.i2.i, %.loopexit.i
  %.sroa.3.0.lcssa.i.i = phi i64 [ %i.ab, %.loopexit.i ], [ %i.ae, %.lr.ph.i2.i ]
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.0.0.ph.i, %.loopexit.i ], [ %i.ad, %.lr.ph.i2.i ]
  %.not.i2.i.i = icmp eq i64 %.sroa.3.0.lcssa.i.i, 0
  %..i3.i.i = select i1 %.not.i2.i.i, i64 104, i64 200
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa.i.i, i64 noundef %..i3.i.i, i64 noundef 8) #53, !noalias !14906
  br label %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingjNtNtB8_7set_val9SetValZSTE16deallocating_endNtNtBc_5alloc6GlobalECs9gmjTwvRRSu_10typst_html.exit

_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingjNtNtB8_7set_val9SetValZSTE16deallocating_endNtNtBc_5alloc6GlobalECs9gmjTwvRRSu_10typst_html.exit: ; preds = %bb.b, %_RINvMsj_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingjNtNtB8_7set_val9SetValZSTNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs9gmjTwvRRSu_10typst_html.exit.i
  store ptr null, ptr %0, align 8
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  %i.ag = add i64 %i.b, -1
  store i64 %i.ag, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14907)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14908)
  %i.ah = load i64, ptr %1, align 8, !range !60, !alias.scope !14909, !noundef !52
  %i.ai = trunc nuw i64 %i.ah to i1
  br i1 %i.ai, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !14909, !noundef !52 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.ak, null
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br i1 %.not.i.i1, label %bb.g, label %._RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingjNtNtB7_7set_val9SetValZSTE10init_frontCs9gmjTwvRRSu_10typst_html.exit_crit_edge.i

._RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingjNtNtB7_7set_val9SetValZSTE10init_frontCs9gmjTwvRRSu_10typst_html.exit_crit_edge.i: ; preds = %bb.f
  %.sroa.48.0.copyload.i.pre.i = load i64, ptr %i.al, align 8, !alias.scope !14910
  %.sroa.59.0..sroa_idx.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.59.0.copyload.i.pre.i = load i64, ptr %.sroa.59.0..sroa_idx.i.phi.trans.insert.i, align 8, !alias.scope !14910
  br label %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingjNtNtB7_7set_val9SetValZSTE10init_frontCs9gmjTwvRRSu_10typst_html.exit.i

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !14909, !noundef !52 ; 5 uses
  %.sroa.013.015.i.i = load ptr, ptr %i.al, align 8, !alias.scope !14909, !nonnull !52, !noundef !52 ; 3 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingjNtNtB7_7set_val9SetValZSTE10init_frontCs9gmjTwvRRSu_10typst_html.exit.i, label %.lr.ph.i.i2.preheader

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
  %.sroa.013.0.i.i.prol = load ptr, ptr %i.ap, align 8, !noalias !14911, !nonnull !52, !noundef !52 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol, !llvm.loop !14885

.lr.ph.i.i2.prol.loopexit:                        ; preds = %.lr.ph.i.i2.prol, %.lr.ph.i.i2.preheader
  %.sroa.013.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.013.017.i.i.unr = phi ptr [ %.sroa.013.015.i.i, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.011.016.i.i.unr = phi i64 [ %i.an, %.lr.ph.i.i2.preheader ], [ %i.aq, %.lr.ph.i.i2.prol ]
  %i.ar = icmp ult i64 %i.an, 8
  br i1 %i.ar, label %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingjNtNtB7_7set_val9SetValZSTE10init_frontCs9gmjTwvRRSu_10typst_html.exit.i, label %.lr.ph.i.i2

.lr.ph.i.i2:                                      ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2
  %.sroa.013.017.i.i = phi ptr [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ], [ %.sroa.013.017.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %.sroa.011.016.i.i = phi i64 [ %i.ba, %.lr.ph.i.i2 ], [ %.sroa.011.016.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i, i64 104
  %.sroa.013.0.i.i = load ptr, ptr %i.as, align 8, !noalias !14911, !nonnull !52, !noundef !52
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i, i64 104
  %.sroa.013.0.i.i.1 = load ptr, ptr %i.at, align 8, !noalias !14911, !nonnull !52, !noundef !52
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.1, i64 104
  %.sroa.013.0.i.i.2 = load ptr, ptr %i.au, align 8, !noalias !14911, !nonnull !52, !noundef !52
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.2, i64 104
  %.sroa.013.0.i.i.3 = load ptr, ptr %i.av, align 8, !noalias !14911, !nonnull !52, !noundef !52
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.3, i64 104
  %.sroa.013.0.i.i.4 = load ptr, ptr %i.aw, align 8, !noalias !14911, !nonnull !52, !noundef !52
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.4, i64 104
  %.sroa.013.0.i.i.5 = load ptr, ptr %i.ax, align 8, !noalias !14911, !nonnull !52, !noundef !52
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.5, i64 104
  %.sroa.013.0.i.i.6 = load ptr, ptr %i.ay, align 8, !noalias !14911, !nonnull !52, !noundef !52
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.6, i64 104
  %i.ba = add i64 %.sroa.011.016.i.i, -8          ; 2 uses
  %.sroa.013.0.i.i.7 = load ptr, ptr %i.az, align 8, !noalias !14911, !nonnull !52, !noundef !52 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingjNtNtB7_7set_val9SetValZSTE10init_frontCs9gmjTwvRRSu_10typst_html.exit.i, label %.lr.ph.i.i2

_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingjNtNtB7_7set_val9SetValZSTE10init_frontCs9gmjTwvRRSu_10typst_html.exit.i: ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2, %bb.g, %._RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingjNtNtB7_7set_val9SetValZSTE10init_frontCs9gmjTwvRRSu_10typst_html.exit_crit_edge.i
  %.sroa.59.0.copyload.i.i = phi i64 [ %.sroa.59.0.copyload.i.pre.i, %._RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingjNtNtB7_7set_val9SetValZSTE10init_frontCs9gmjTwvRRSu_10typst_html.exit_crit_edge.i ], [ 0, %bb.g ], [ 0, %.lr.ph.i.i2 ], [ 0, %.lr.ph.i.i2.prol.loopexit ] ; 2 uses
  %.sroa.48.0.copyload.i.i = phi i64 [ %.sroa.48.0.copyload.i.pre.i, %._RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingjNtNtB7_7set_val9SetValZSTE10init_frontCs9gmjTwvRRSu_10typst_html.exit_crit_edge.i ], [ 0, %bb.g ], [ 0, %.lr.ph.i.i2 ], [ 0, %.lr.ph.i.i2.prol.loopexit ] ; 2 uses
  %.sroa.07.0.copyload.i.i = phi ptr [ %i.ak, %._RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingjNtNtB7_7set_val9SetValZSTE10init_frontCs9gmjTwvRRSu_10typst_html.exit_crit_edge.i ], [ %.sroa.013.015.i.i, %bb.g ], [ %.sroa.013.0.i.i.lcssa.unr, %.lr.ph.i.i2.prol.loopexit ], [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14912)
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i.i, i64 98
  %i.bd = load i16, ptr %i.bc, align 2, !noalias !14913, !noundef !52
  %i.be = zext i16 %i.bd to i64
  %i.bf = icmp ult i64 %.sroa.59.0.copyload.i.i, %i.be
  br i1 %i.bf, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingjNtNtB7_7set_val9SetValZSTE10init_frontCs9gmjTwvRRSu_10typst_html.exit.i, %bb.j
  %.sroa.0.039.i.i.i.i = phi ptr [ %i.bg, %bb.j ], [ %.sroa.07.0.copyload.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingjNtNtB7_7set_val9SetValZSTE10init_frontCs9gmjTwvRRSu_10typst_html.exit.i ] ; 4 uses
  %.sroa.5.038.i.i.i.i = phi i64 [ %i.by, %bb.j ], [ %.sroa.48.0.copyload.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingjNtNtB7_7set_val9SetValZSTE10init_frontCs9gmjTwvRRSu_10typst_html.exit.i ] ; 3 uses
  %i.bg = load ptr, ptr %.sroa.0.039.i.i.i.i, align 8, !noalias !14914, !noundef !52 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.j
  %i.bh = zext i16 %i.ca to i64
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingjNtNtB7_7set_val9SetValZSTE10init_frontCs9gmjTwvRRSu_10typst_html.exit.i
  %.sroa.8.0.lcssa.i.i.i.i = phi i64 [ %.sroa.59.0.copyload.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingjNtNtB7_7set_val9SetValZSTE10init_frontCs9gmjTwvRRSu_10typst_html.exit.i ], [ %i.bh, %._crit_edge.loopexit.i.i.i.i ] ; 4 uses
  %.sroa.5.0.lcssa.i.i.i.i = phi i64 [ %.sroa.48.0.copyload.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingjNtNtB7_7set_val9SetValZSTE10init_frontCs9gmjTwvRRSu_10typst_html.exit.i ], [ %i.by, %._crit_edge.loopexit.i.i.i.i ] ; 6 uses
  %.sroa.0.0.lcssa.i.i.i.i = phi ptr [ %.sroa.07.0.copyload.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingjNtNtB7_7set_val9SetValZSTE10init_frontCs9gmjTwvRRSu_10typst_html.exit.i ], [ %i.bg, %._crit_edge.loopexit.i.i.i.i ] ; 3 uses
  %i.bi = icmp eq i64 %.sroa.5.0.lcssa.i.i.i.i, 0
  br i1 %i.bi, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bj = add nuw nsw i64 %.sroa.8.0.lcssa.i.i.i.i, 1
  br label %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingjNtNtB8_7set_val9SetValZSTE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs9gmjTwvRRSu_10typst_html.exit

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
  %.sroa.017.0.i.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.prol, align 8, !noalias !14915, !nonnull !52, !noundef !52 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.prol, i64 104 ; 2 uses
  %prol.iter50.next = add i64 %prol.iter50, 1     ; 2 uses
  %prol.iter50.cmp.not = icmp eq i64 %prol.iter50.next, %xtraiter48
  br i1 %prol.iter50.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !14900

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.i
  %.sroa.017.0.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.i ], [ %.sroa.017.0.i.i.i.i.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.i.i.i.unr = phi ptr [ %i.bm, %bb.i ], [ %i.bn, %.prol.preheader ]
  %.sroa.019.0.in.i.i.i.i.i.unr = phi i64 [ %.sroa.5.0.lcssa.i.i.i.i, %bb.i ], [ %.sroa.019.0.i.i.i.i.i.prol, %.prol.preheader ]
  %i.bo = icmp ult i64 %.sroa.5.0.lcssa.i.i.i.i, 8
  br i1 %i.bo, label %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingjNtNtB8_7set_val9SetValZSTE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs9gmjTwvRRSu_10typst_html.exit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i.i.i.i = phi ptr [ %i.bx, %.new ], [ %.sroa.017.0.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.i.7, %.new ], [ %.sroa.019.0.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i, align 8, !noalias !14915, !nonnull !52, !noundef !52
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i, i64 104
  %.sroa.017.0.i.i.i.i.i.1 = load ptr, ptr %i.bp, align 8, !noalias !14915, !nonnull !52, !noundef !52
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.1, i64 104
  %.sroa.017.0.i.i.i.i.i.2 = load ptr, ptr %i.bq, align 8, !noalias !14915, !nonnull !52, !noundef !52
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.2, i64 104
  %.sroa.017.0.i.i.i.i.i.3 = load ptr, ptr %i.br, align 8, !noalias !14915, !nonnull !52, !noundef !52
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.3, i64 104
  %.sroa.017.0.i.i.i.i.i.4 = load ptr, ptr %i.bs, align 8, !noalias !14915, !nonnull !52, !noundef !52
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.4, i64 104
  %.sroa.017.0.i.i.i.i.i.5 = load ptr, ptr %i.bt, align 8, !noalias !14915, !nonnull !52, !noundef !52
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.5, i64 104
  %.sroa.017.0.i.i.i.i.i.6 = load ptr, ptr %i.bu, align 8, !noalias !14915, !nonnull !52, !noundef !52
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.6, i64 104
  %.sroa.019.0.i.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.7 = load ptr, ptr %i.bv, align 8, !noalias !14915, !nonnull !52, !noundef !52 ; 2 uses
  %i.bw = icmp eq i64 %.sroa.019.0.i.i.i.i.i.7, 0
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.7, i64 104
  br i1 %i.bw, label %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingjNtNtB8_7set_val9SetValZSTE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs9gmjTwvRRSu_10typst_html.exit, label %.new

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %i.by = add i64 %.sroa.5.038.i.i.i.i, 1         ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.039.i.i.i.i, i64 96
  %i.ca = load i16, ptr %i.bz, align 8, !noalias !14914 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.5.038.i.i.i.i, 0
  %..i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 104, i64 200
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.039.i.i.i.i, i64 noundef %..i.i.i.i.i, i64 noundef 8) #53, !noalias !14916
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bg, i64 98
  %i.cc = load i16, ptr %i.cb, align 2, !noalias !14913, !noundef !52
  %i.cd = icmp ult i16 %i.ca, %i.cc
  br i1 %i.cd, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.k:                                             ; preds = %.lr.ph.i.i.i.i
  %.not.i33.i.i.i.i = icmp eq i64 %.sroa.5.038.i.i.i.i, 0
  %..i34.i.i.i.i = select i1 %.not.i33.i.i.i.i, i64 104, i64 200
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.039.i.i.i.i, i64 noundef %..i34.i.i.i.i, i64 noundef 8) #53, !noalias !14916
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112) #51
          to label %.noexc.i.i unwind label %bb.l, !noalias !14917

.noexc.i.i:                                       ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

.critedge.i:                                      ; preds = %bb.e
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #51, !noalias !14918
  unreachable

_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingjNtNtB8_7set_val9SetValZSTE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs9gmjTwvRRSu_10typst_html.exit: ; preds = %.prol.loopexit, %.new, %bb.h
  %.sroa.7.0.ph.i.i.i = phi i64 [ %i.bj, %bb.h ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.0.0.ph.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i.i.i.i, %bb.h ], [ %.sroa.017.0.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.i.i.i.7, %.new ]
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %.sroa.0.0.ph.i.i.i, ptr %i.aj, align 8, !alias.scope !14910
  store i64 0, ptr %i.al, align 8, !alias.scope !14910
  store i64 %.sroa.7.0.ph.i.i.i, ptr %.sroa.59.0..sroa_idx.i.i, align 8, !alias.scope !14910
  store ptr %.sroa.0.0.lcssa.i.i.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.lcssa.i.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.0.lcssa.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.m

bb.m:                                             ; preds = %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingjNtNtB8_7set_val9SetValZSTE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs9gmjTwvRRSu_10typst_html.exit, %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingjNtNtB8_7set_val9SetValZSTE16deallocating_endNtNtBc_5alloc6GlobalECs9gmjTwvRRSu_10typst_html.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_list(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [112 x i8], align 16              ; 9 uses
  %i.e = alloca [56 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [112 x i8], align 16              ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [32 x i8], align 8                ; 8 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
  %i.n = alloca [32 x i8], align 8                ; 8 uses
  %i.o = alloca [16 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 5 uses
  %i.r = alloca [112 x i8], align 16              ; 11 uses
  %i.s = alloca [112 x i8], align 16              ; 9 uses
  %i.t = alloca [112 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  store i64 -9223372036854775409, ptr %i.u, align 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  store ptr null, ptr %i.v, align 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store i64 0, ptr %i.w, align 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 80 ; 4 uses
  store ptr null, ptr %i.x, align 16
  store i128 0, ptr %i.r, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr inttoptr (i64 16 to ptr), ptr %i.o, align 8, !noalias !14991
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  store i64 0, ptr %i.y, align 8, !noalias !14991
  invoke fastcc void @_RINvMNtNtCs9gmjTwvRRSu_10typst_html3css6encodeNtB3_10Properties4pushReEB7_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @619, i64 noundef 15, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @620, i64 noundef 4)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  %.val.i.i = load ptr, ptr %i.o, align 8, !alias.scope !14992, !noalias !14991, !nonnull !52, !noundef !52
  %.val1.i.i = load i64, ptr %i.y, align 8, !alias.scope !14992, !noalias !14991
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCs9gmjTwvRRSu_10typst_html3css6encode8PropertyEEB1g_(ptr nonnull %.val.i.i, i64 %.val1.i.i)
          to label %.body unwind label %bb.c, !noalias !14993

bb.c:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50, !noalias !14993
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.ab = load ptr, ptr %i.o, align 8, !noalias !14991, !nonnull !52, !noundef !52 ; 2 uses
  %i.ac = load i64, ptr %i.y, align 8, !noalias !14991, !noundef !52 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14994)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14995)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14996)
  %.val.i.i15 = load ptr, ptr %i.x, align 16, !alias.scope !14997, !noundef !52 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 88 ; 3 uses
  %i.ae = icmp eq ptr %.val.i.i15, null
  br i1 %i.ae, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val1.i.i16 = load i64, ptr %i.ad, align 8, !alias.scope !14997
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCs9gmjTwvRRSu_10typst_html3css6encode8PropertyEEB1g_(ptr nonnull %.val.i.i15, i64 %.val1.i.i16)
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast8CastInfoEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB2z_INtNtNtB2H_5slice4iter4IterNtNtCs4wS76oGtFbW_12typst_assets4html4TypeENCNvMs0_NtCs9gmjTwvRRSu_10typst_html5typedNtB4H_9UnionType4iter0ENCNvB4D_5input0EE9from_iterB4J_:bb.a
  %.sroa.28.sroa.27.0.extract.trunc64 = trunc i64 %.sroa.28.sroa.27.0.extract.shift63 to i8
  %.sroa.28.sroa.28.0.extract.shift107 = and i64 %i.u, -1099511627776
  br label %_RNvMNtCs9gmjTwvRRSu_10typst_html5typedNtB2_8AttrType7convert.exit

bb.aa:                                            ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !20348, !noalias !20349, !nonnull !52, !align !58, !noundef !52
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !20348, !noalias !20349, !noundef !52 ; 3 uses
  %i.z = ptrtoint ptr %i.w to i64
  %.sroa.28.sroa.0.0.extract.trunc = trunc i64 %i.y to i32
  %.sroa.28.sroa.27.0.extract.shift61 = lshr i64 %i.y, 32
  %.sroa.28.sroa.27.0.extract.trunc62 = trunc i64 %.sroa.28.sroa.27.0.extract.shift61 to i8
  %.sroa.28.sroa.28.0.extract.shift105 = and i64 %i.y, -1099511627776
  br label %_RNvMNtCs9gmjTwvRRSu_10typst_html5typedNtB2_8AttrType7convert.exit

bb.ab:                                            ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !20348, !noalias !20349, !nonnull !52, !align !58, !noundef !52
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !range !133, !alias.scope !20348, !noalias !20349, !noundef !52
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !range !64, !alias.scope !20348, !noalias !20349, !noundef !52
  %i.ag = ptrtoint ptr %i.ab to i64
  br label %_RNvMNtCs9gmjTwvRRSu_10typst_html5typedNtB2_8AttrType7convert.exit

_RNvMNtCs9gmjTwvRRSu_10typst_html5typedNtB2_8AttrType7convert.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab
  %.sroa.28.sroa.27.0 = phi i8 [ undef, %bb.d ], [ %.sroa.28.sroa.27.0.extract.trunc60, %bb.e ], [ %.sroa.28.sroa.27.0.extract.trunc58, %bb.f ], [ %.sroa.28.sroa.27.0.extract.trunc56, %bb.g ], [ %.sroa.28.sroa.27.0.extract.trunc54, %bb.h ], [ %.sroa.28.sroa.27.0.extract.trunc52, %bb.i ], [ %.sroa.28.sroa.27.0.extract.trunc50, %bb.j ], [ %.sroa.28.sroa.27.0.extract.trunc48, %bb.k ], [ %.sroa.28.sroa.27.0.extract.trunc46, %bb.l ], [ %.sroa.28.sroa.27.0.extract.trunc44, %bb.m ], [ %.sroa.28.sroa.27.0.extract.trunc42, %bb.n ], [ %.sroa.28.sroa.27.0.extract.trunc40, %bb.o ], [ %.sroa.28.sroa.27.0.extract.trunc38, %bb.p ], [ %.sroa.28.sroa.27.0.extract.trunc36, %bb.q ], [ %.sroa.28.sroa.27.0.extract.trunc34, %bb.r ], [ %.sroa.28.sroa.27.0.extract.trunc32, %bb.s ], [ %.sroa.28.sroa.27.0.extract.trunc30, %bb.t ], [ %.sroa.28.sroa.27.0.extract.trunc28, %bb.u ], [ %.sroa.28.sroa.27.0.extract.trunc26, %bb.v ], [ %.sroa.28.sroa.27.0.extract.trunc24, %bb.w ], [ %.sroa.28.sroa.27.0.extract.trunc22, %bb.x ], [ %.sroa.28.sroa.27.0.extract.trunc, %bb.y ], [ %.sroa.28.sroa.27.0.extract.trunc64, %bb.z ], [ %.sroa.28.sroa.27.0.extract.trunc62, %bb.aa ], [ %i.af, %bb.ab ]
  %.sroa.28.sroa.0.0 = phi i32 [ undef, %bb.d ], [ ptrtoint (ptr @_RNvYNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtBb_10NativeType2ofNtNtNtCsdaEETE4DqmE_13typst_library11foundations4none9NoneValueE0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtNtB17_5value5ValueEE9call_onceBd_ to i32), %bb.e ], [ ptrtoint (ptr @_RNvYNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtBb_10NativeType2ofNtBb_9NoneEmptyE0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEE9call_onceBd_ to i32), %bb.f ], [ ptrtoint (ptr @_RNvYNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtBb_10NativeType2ofNtBb_13NoneUndefinedE0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEE9call_onceBd_ to i32), %bb.g ], [ ptrtoint (ptr @_RNvYNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtBb_10NativeType2ofNtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto9AutoValueE0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtNtB17_5value5ValueEE9call_onceBd_ to i32), %bb.h ], [ ptrtoint (ptr @_RNvYNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtBb_10NativeType2ofNtBb_13TrueFalseBoolE0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEE9call_onceBd_ to i32), %bb.i ], [ ptrtoint (ptr @_RNvYNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtBb_10NativeType2ofNtBb_9YesNoBoolE0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEE9call_onceBd_ to i32), %bb.j ], [ ptrtoint (ptr @_RNvYNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtBb_10NativeType2ofNtBb_9OnOffBoolE0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEE9call_onceBd_ to i32), %bb.k ], [ ptrtoint (ptr @_RNvYNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtBb_10NativeType2ofNtBb_13HorizontalDirE0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEE9call_onceBd_ to i32), %bb.l ], [ ptrtoint (ptr @_RNvYNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtBb_10NativeType2ofNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrE0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtNtB17_5value5ValueEE9call_onceBd_ to i32), %bb.m ], [ ptrtoint (ptr @_RNvYNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtBb_10NativeType2ofcE0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEE9call_onceBd_ to i32), %bb.n ], [ ptrtoint (ptr @_RNvYNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtBb_10NativeType2ofxE0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEE9call_onceBd_ to i32), %bb.o ], [ ptrtoint (ptr @_RNvYNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtBb_10NativeType2ofyE0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEE9call_onceBd_ to i32), %bb.p ], [ ptrtoint (ptr @_RNvYNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtBb_10NativeType2ofINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZeroyEE0INtNtNtB1a_3ops8function6FnOnceTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEE9call_onceBd_ to i32), %bb.q ], [ ptrtoint (ptr @_RNvYNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtBb_10NativeType2ofdE0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEE9call_onceBd_ to i32), %bb.r ], [ ptrtoint (ptr @_RNvYNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtBb_10NativeType2ofNtNtNtCsdaEETE4DqmE_13typst_library11foundations5float11PositiveF64E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtNtB17_5value5ValueEE9call_onceBd_ to i32), %bb.s ], [ ptrtoint (ptr @_RNvYNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtBb_10NativeType2ofNtNtNtCsdaEETE4DqmE_13typst_library11foundations8datetime8DatetimeE0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtNtB17_5value5ValueEE9call_onceBd_ to i32), %bb.t ], [ ptrtoint (ptr @_RNvYNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtBb_10NativeType2ofNtNtNtCsdaEETE4DqmE_13typst_library11foundations8duration8DurationE0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtNtB17_5value5ValueEE9call_onceBd_ to i32), %bb.u ], [ ptrtoint (ptr @_RNvYNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtBb_10NativeType2ofNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorE0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtNtNtB19_11foundations5value5ValueEE9call_onceBd_ to i32), %bb.v ], [ ptrtoint (ptr @_RNvYNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtBb_10NativeType2ofNtBb_8IconSizeE0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEE9call_onceBd_ to i32), %bb.w ], [ ptrtoint (ptr @_RNvYNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtBb_10NativeType2ofNtBb_14ImageCandidateE0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEE9call_onceBd_ to i32), %bb.x ], [ ptrtoint (ptr @_RNvYNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtBb_10NativeType2ofNtBb_10SourceSizeE0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEE9call_onceBd_ to i32), %bb.y ], [ %.sroa.28.sroa.0.0.extract.trunc20, %bb.z ], [ %.sroa.28.sroa.0.0.extract.trunc, %bb.aa ], [ %i.ad, %bb.ab ]
  %.sroa.53.0 = phi ptr [ undef, %bb.d ], [ @_RNvXNtNtCsdaEETE4DqmE_13typst_library11foundations4noneNtB2_9NoneValueNtNtB4_4cast7Reflect8castable, %bb.e ], [ @_RNvXsz_NtCs9gmjTwvRRSu_10typst_html5typedNtB5_9NoneEmptyNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast7Reflect8castable, %bb.f ], [ @_RNvXsB_NtCs9gmjTwvRRSu_10typst_html5typedNtB5_13NoneUndefinedNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast7Reflect8castable, %bb.g ], [ @_RNvXs0_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoNtB5_9AutoValueNtNtB7_4cast7Reflect8castable, %bb.h ], [ @_RNvXst_NtCs9gmjTwvRRSu_10typst_html5typedNtB5_13TrueFalseBoolNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast7Reflect8castable, %bb.i ], [ @_RNvXsv_NtCs9gmjTwvRRSu_10typst_html5typedNtB5_9YesNoBoolNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast7Reflect8castable, %bb.j ], [ @_RNvXsx_NtCs9gmjTwvRRSu_10typst_html5typedNtB5_9OnOffBoolNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast7Reflect8castable, %bb.k ], [ @_RNvXsD_NtCs9gmjTwvRRSu_10typst_html5typedNtB5_13HorizontalDirNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast7Reflect8castable, %bb.l ], [ @_RNvXsZ_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtNtB7_3str3StrNtNtB7_4cast7Reflect8castable, %bb.m ], [ @_RNvXs1r_NtNtCsdaEETE4DqmE_13typst_library11foundations3strcNtNtB8_4cast7Reflect8castable, %bb.n ], [ @_RNvXsp_NtNtCsdaEETE4DqmE_13typst_library11foundations5valuexNtNtB7_4cast7Reflect8castable, %bb.o ], [ @_RNvXsn_NtNtCsdaEETE4DqmE_13typst_library11foundations3intyNtNtB7_4cast7Reflect8castable, %bb.p ], [ @_RNvXs8_NtNtCsdaEETE4DqmE_13typst_library11foundations3intINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZeroyENtNtB7_4cast7Reflect8castable, %bb.q ], [ @_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations5valuedNtNtB7_4cast7Reflect8castable, %bb.r ], [ @_RNvXse_NtNtCsdaEETE4DqmE_13typst_library11foundations5floatNtB5_11PositiveF64NtNtB7_4cast7Reflect8castable, %bb.s ], [ @_RNvXs18_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtNtB8_8datetime8DatetimeNtNtB8_4cast7Reflect8castable, %bb.t ], [ @_RNvXs1e_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtNtB8_8duration8DurationNtNtB8_4cast7Reflect8castable, %bb.u ], [ @_RNvXsK_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtNtNtB9_9visualize5color5ColorNtNtB7_4cast7Reflect8castable, %bb.v ], [ @_RNvXsF_NtCs9gmjTwvRRSu_10typst_html5typedNtB5_8IconSizeNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast7Reflect8castable, %bb.w ], [ @_RNvXsH_NtCs9gmjTwvRRSu_10typst_html5typedNtB5_14ImageCandidateNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast7Reflect8castable, %bb.x ], [ @_RNvXsJ_NtCs9gmjTwvRRSu_10typst_html5typedNtB5_10SourceSizeNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast7Reflect8castable, %bb.y ], [ undef, %bb.z ], [ undef, %bb.aa ], [ undef, %bb.ab ]
  %.sroa.419.0 = phi i64 [ undef, %bb.d ], [ ptrtoint (ptr @_RNvXNtNtCsdaEETE4DqmE_13typst_library11foundations4noneNtB2_9NoneValueNtNtB4_4cast7Reflect5input to i64), %bb.e ], [ ptrtoint (ptr @_RNvXsz_NtCs9gmjTwvRRSu_10typst_html5typedNtB5_9NoneEmptyNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast7Reflect5input to i64), %bb.f ], [ ptrtoint (ptr @_RNvXsB_NtCs9gmjTwvRRSu_10typst_html5typedNtB5_13NoneUndefinedNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast7Reflect5input to i64), %bb.g ], [ ptrtoint (ptr @_RNvXs0_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoNtB5_9AutoValueNtNtB7_4cast7Reflect5input to i64), %bb.h ], [ ptrtoint (ptr @_RNvXst_NtCs9gmjTwvRRSu_10typst_html5typedNtB5_13TrueFalseBoolNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast7Reflect5input to i64), %bb.i ], [ ptrtoint (ptr @_RNvXsv_NtCs9gmjTwvRRSu_10typst_html5typedNtB5_9YesNoBoolNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast7Reflect5input to i64), %bb.j ], [ ptrtoint (ptr @_RNvXsx_NtCs9gmjTwvRRSu_10typst_html5typedNtB5_9OnOffBoolNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast7Reflect5input to i64), %bb.k ], [ ptrtoint (ptr @_RNvXsD_NtCs9gmjTwvRRSu_10typst_html5typedNtB5_13HorizontalDirNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast7Reflect5input to i64), %bb.l ], [ ptrtoint (ptr @_RNvXsZ_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtNtB7_3str3StrNtNtB7_4cast7Reflect5input to i64), %bb.m ], [ ptrtoint (ptr @_RNvXs1r_NtNtCsdaEETE4DqmE_13typst_library11foundations3strcNtNtB8_4cast7Reflect5input to i64), %bb.n ], [ ptrtoint (ptr @_RNvXsp_NtNtCsdaEETE4DqmE_13typst_library11foundations5valuexNtNtB7_4cast7Reflect5input to i64), %bb.o ], [ ptrtoint (ptr @_RNvXsn_NtNtCsdaEETE4DqmE_13typst_library11foundations3intyNtNtB7_4cast7Reflect5input to i64), %bb.p ], [ ptrtoint (ptr @_RNvXs8_NtNtCsdaEETE4DqmE_13typst_library11foundations3intINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZeroyENtNtB7_4cast7Reflect5input to i64), %bb.q ], [ ptrtoint (ptr @_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations5valuedNtNtB7_4cast7Reflect5input to i64), %bb.r ], [ ptrtoint (ptr @_RNvXse_NtNtCsdaEETE4DqmE_13typst_library11foundations5floatNtB5_11PositiveF64NtNtB7_4cast7Reflect5input to i64), %bb.s ], [ ptrtoint (ptr @_RNvXs18_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtNtB8_8datetime8DatetimeNtNtB8_4cast7Reflect5input to i64), %bb.t ], [ ptrtoint (ptr @_RNvXs1e_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtNtB8_8duration8DurationNtNtB8_4cast7Reflect5input to i64), %bb.u ], [ ptrtoint (ptr @_RNvXsK_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtNtNtB9_9visualize5color5ColorNtNtB7_4cast7Reflect5input to i64), %bb.v ], [ ptrtoint (ptr @_RNvXsF_NtCs9gmjTwvRRSu_10typst_html5typedNtB5_8IconSizeNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast7Reflect5input to i64), %bb.w ], [ ptrtoint (ptr @_RNvXsH_NtCs9gmjTwvRRSu_10typst_html5typedNtB5_14ImageCandidateNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast7Reflect5input to i64), %bb.x ], [ ptrtoint (ptr @_RNvXsJ_NtCs9gmjTwvRRSu_10typst_html5typedNtB5_10SourceSizeNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast7Reflect5input to i64), %bb.y ], [ %i.s, %bb.z ], [ %i.z, %bb.aa ], [ %i.ag, %bb.ab ]
  %.sroa.28.sroa.28.sroa.0.0 = phi i64 [ 0, %bb.d ], [ %.sroa.28.sroa.28.0.extract.shift103, %bb.e ], [ %.sroa.28.sroa.28.0.extract.shift101, %bb.f ], [ %.sroa.28.sroa.28.0.extract.shift99, %bb.g ], [ %.sroa.28.sroa.28.0.extract.shift97, %bb.h ], [ %.sroa.28.sroa.28.0.extract.shift95, %bb.i ], [ %.sroa.28.sroa.28.0.extract.shift93, %bb.j ], [ %.sroa.28.sroa.28.0.extract.shift91, %bb.k ], [ %.sroa.28.sroa.28.0.extract.shift89, %bb.l ], [ %.sroa.28.sroa.28.0.extract.shift87, %bb.m ], [ %.sroa.28.sroa.28.0.extract.shift85, %bb.n ], [ %.sroa.28.sroa.28.0.extract.shift83, %bb.o ], [ %.sroa.28.sroa.28.0.extract.shift81, %bb.p ], [ %.sroa.28.sroa.28.0.extract.shift79, %bb.q ], [ %.sroa.28.sroa.28.0.extract.shift77, %bb.r ], [ %.sroa.28.sroa.28.0.extract.shift75, %bb.s ], [ %.sroa.28.sroa.28.0.extract.shift73, %bb.t ], [ %.sroa.28.sroa.28.0.extract.shift71, %bb.u ], [ %.sroa.28.sroa.28.0.extract.shift69, %bb.v ], [ %.sroa.28.sroa.28.0.extract.shift67, %bb.w ], [ %.sroa.28.sroa.28.0.extract.shift65, %bb.x ], [ %.sroa.28.sroa.28.0.extract.shift, %bb.y ], [ %.sroa.28.sroa.28.0.extract.shift107, %bb.z ], [ %.sroa.28.sroa.28.0.extract.shift105, %bb.aa ], [ 0, %bb.ab ]
  %.sink.i = phi i64 [ 0, %bb.d ], [ 1, %bb.e ], [ 1, %bb.f ], [ 1, %bb.g ], [ 1, %bb.h ], [ 1, %bb.i ], [ 1, %bb.j ], [ 1, %bb.k ], [ 1, %bb.l ], [ 1, %bb.m ], [ 1, %bb.n ], [ 1, %bb.o ], [ 1, %bb.p ], [ 1, %bb.q ], [ 1, %bb.r ], [ 1, %bb.s ], [ 1, %bb.t ], [ 1, %bb.u ], [ 1, %bb.v ], [ 1, %bb.w ], [ 1, %bb.x ], [ 1, %bb.y ], [ 2, %bb.z ], [ 3, %bb.aa ], [ 4, %bb.ab ]
  %.sroa.28.sroa.27.0.insert.ext = zext i8 %.sroa.28.sroa.27.0 to i64
  %.sroa.28.sroa.27.0.insert.shift = shl nuw nsw i64 %.sroa.28.sroa.27.0.insert.ext, 32
  %.sroa.28.sroa.27.0.insert.insert = or disjoint i64 %.sroa.28.sroa.28.sroa.0.0, %.sroa.28.sroa.27.0.insert.shift
  %.sroa.28.sroa.0.0.insert.ext = zext i32 %.sroa.28.sroa.0.0 to i64
  %.sroa.28.sroa.0.0.insert.insert = or disjoint i64 %.sroa.28.sroa.27.0.insert.insert, %.sroa.28.sroa.0.0.insert.ext
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20350
  store i64 %.sink.i, ptr %i.a, align 8, !noalias !20351
  store i64 %.sroa.419.0, ptr %.sroa.4110.0..sroa_idx, align 8, !noalias !20351
  store i64 %.sroa.28.sroa.0.0.insert.insert, ptr %.sroa.5111.0..sroa_idx, align 8, !noalias !20351
  store ptr %.sroa.53.0, ptr %.sroa.6112.0..sroa_idx, align 8, !noalias !20351
  invoke fastcc void @_RNvMNtCs9gmjTwvRRSu_10typst_html5typedNtB2_8AttrType5input(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a)
          to label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs4wS76oGtFbW_12typst_assets4html4TypeNtNtCs9gmjTwvRRSu_10typst_html5typed8AttrTypeuNCNvMs0_B1D_NtB1D_9UnionType4iter0NCIB2_B1B_NtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast8CastInfouNCNvB2p_5input0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB33_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5p_3VecB33_E14extend_trustedINtB4_3MapIB6m_INtNtNtBa_5slice4iter4IterBV_EB2l_EB44_EE0E0E0E0B1F_.exit.i.i unwind label %.body, !inline_history !20346

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs4wS76oGtFbW_12typst_assets4html4TypeNtNtCs9gmjTwvRRSu_10typst_html5typed8AttrTypeuNCNvMs0_B1D_NtB1D_9UnionType4iter0NCIB2_B1B_NtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast8CastInfouNCNvB2p_5input0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB33_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5p_3VecB33_E14extend_trustedINtB4_3MapIB6m_INtNtNtBa_5slice4iter4IterBV_EB2l_EB44_EE0E0E0E0B1F_.exit.i.i: ; preds = %_RNvMNtCs9gmjTwvRRSu_10typst_html5typedNtB2_8AttrType7convert.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20350
  %i.ah = getelementptr inbounds nuw [48 x i8], ptr %.sroa.10.0.i, i64 %.sroa.6.0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ah, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  %i.ai = add i64 %.sroa.6.0, 1                   ; 2 uses
  %i.aj = icmp eq i64 %i.ai, %i.g
  br i1 %i.aj, label %bb.ac, label %bb.d

bb.ac:                                            ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs4wS76oGtFbW_12typst_assets4html4TypeNtNtCs9gmjTwvRRSu_10typst_html5typed8AttrTypeuNCNvMs0_B1D_NtB1D_9UnionType4iter0NCIB2_B1B_NtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast8CastInfouNCNvB2p_5input0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB33_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5p_3VecB33_E14extend_trustedINtB4_3MapIB6m_INtNtNtBa_5slice4iter4IterBV_EB2l_EB44_EE0E0E0E0B1F_.exit.i.i
  store i64 %i.g, ptr %i.n, align 8, !noalias !20352
  br label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast8CastInfoEINtB4_10SpecExtendBT_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB2g_INtNtNtB2o_5slice4iter4IterNtNtCs4wS76oGtFbW_12typst_assets4html4TypeENCNvMs0_NtCs9gmjTwvRRSu_10typst_html5typedNtB4o_9UnionType4iter0ENCNvB4k_5input0EE11spec_extendB4q_.exit

.body:                                            ; preds = %_RNvMNtCs9gmjTwvRRSu_10typst_html5typedNtB2_8AttrType7convert.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.6.0, ptr %i.n, align 8, !noalias !20352
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast8CastInfoEECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #49
          to label %bb.ae unwind label %bb.ad

_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast8CastInfoEINtB4_10SpecExtendBT_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB2g_INtNtNtB2o_5slice4iter4IterNtNtCs4wS76oGtFbW_12typst_assets4html4TypeENCNvMs0_NtCs9gmjTwvRRSu_10typst_html5typedNtB4o_9UnionType4iter0ENCNvB4k_5input0EE11spec_extendB4q_.exit: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast8CastInfoE7reserveCs9gmjTwvRRSu_10typst_html.exit.i, %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.ad:                                            ; preds = %.body
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50
  unreachable

bb.ae:                                            ; preds = %.body
  resume { ptr, i32 } %i.ak
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef i128 @_RNvXs_NvCsdaEETE4DqmE_13typst_library1__DNtB6_5WorldEL_NtNtCsloFShupyl5J_6comemo5track5Track4call(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 10 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 10 uses
  %i.d = alloca [72 x i8], align 8                ; 14 uses
  %i.e = alloca [16 x i8], align 16               ; 4 uses
  %i.f = alloca [72 x i8], align 8                ; 10 uses
  %i.g = alloca [72 x i8], align 8                ; 11 uses
  %i.h = alloca [16 x i8], align 16               ; 4 uses
  %i.i = alloca [1 x i8], align 1                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [2 x i8], align 2                 ; 4 uses
  %i.l = alloca [72 x i8], align 8                ; 13 uses
  %i.m = alloca [72 x i8], align 8                ; 11 uses
  %i.n = alloca [2 x i8], align 2                 ; 4 uses
  %i.o = alloca [72 x i8], align 8                ; 9 uses
  %i.p = alloca [16 x i8], align 16               ; 4 uses
  %i.q = alloca [4 x i8], align 4                 ; 4 uses
  %i.r = alloca [4 x i8], align 4                 ; 4 uses
  %i.s = alloca [4 x i8], align 4                 ; 4 uses
  %i.t = alloca [4 x i8], align 4                 ; 4 uses
  %i.u = alloca [2 x i8], align 2                 ; 4 uses
  %i.v = alloca [2 x i8], align 2                 ; 4 uses
  %i.w = alloca [1 x i8], align 1                 ; 4 uses
  %i.x = alloca [1 x i8], align 1                 ; 4 uses
  %i.y = alloca [72 x i8], align 8                ; 28 uses
  %i.z = alloca [72 x i8], align 8                ; 9 uses
  %i.aa = alloca [72 x i8], align 8               ; 9 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [12 x i8], align 4               ; 5 uses
  %i.ad = alloca [8 x i8], align 8                ; 7 uses
  %i.ae = alloca [64 x i8], align 8               ; 11 uses
  %i.af = alloca [64 x i8], align 8               ; 10 uses
  %i.ag = alloca [8 x i8], align 8                ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ai = load i32, ptr %i.ah, align 4, !range !120, !noundef !52 ; 3 uses
  %i.aj = add nsw i32 %i.ai, -1
  %i.ak = icmp sgt i32 %i.ai, 0
  %narrow = select i1 %i.ak, i32 %i.aj, i32 6
  switch i32 %narrow, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.n
    i32 3, label %bb.o
    i32 4, label %bb.s
    i32 5, label %bb.w
    i32 6, label %bb.ab
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !invariant.load !52, !nonnull !52
  %i.an = tail call noundef nonnull align 16 ptr %i.am(ptr noundef nonnull %0) #52
  store ptr %i.an, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !20561
  store i64 8317987319222330741, ptr %i.aa, align 8, !noalias !20561
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 7816392313619706465, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !20561
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 7237128888997146499, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !20561
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i64 8387220255154660723, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !20561
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx.i, i8 0, i64 40, i1 false), !noalias !20561
  call fastcc void @_RINvXs3_NtNtCs3oUPovFnLWP_4core4hash5implsRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtCsdaEETE4DqmE_13typst_library7LibraryENtB8_4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ag, ptr noalias nofree noundef align 8 dereferenceable(72) %i.aa) #52
  %i.ao = call fastcc { i64, i64 } @_RNvMs7_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsE9finish128Cs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.aa) #52, !noalias !20561 ; 2 uses
  %i.ap = extractvalue { i64, i64 } %i.ao, 0
  %i.aq = extractvalue { i64, i64 } %i.ao, 1
  %i.ar = zext i64 %i.ap to i128
  %i.as = zext i64 %i.aq to i128
  %i.at = shl nuw i128 %i.as, 64
  %i.au = or disjoint i128 %i.at, %i.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !20561
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.ac

bb.d:                                             ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !invariant.load !52, !nonnull !52
  %i.ax = tail call noundef nonnull align 16 ptr %i.aw(ptr noundef nonnull %0) #52 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !20562
  store i64 8317987319222330741, ptr %i.z, align 8, !noalias !20562
  %.sroa.3.0..sroa_idx.i4 = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 7816392313619706465, ptr %.sroa.3.0..sroa_idx.i4, align 8, !noalias !20562
  %.sroa.4.0..sroa_idx.i5 = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 7237128888997146499, ptr %.sroa.4.0..sroa_idx.i5, align 8, !noalias !20562
  %.sroa.5.0..sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i64 8387220255154660723, ptr %.sroa.5.0..sroa_idx.i6, align 8, !noalias !20562
  %.sroa.6.0..sroa_idx.i7 = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx.i7, i8 0, i64 40, i1 false), !noalias !20562
  %i.ay = load atomic ptr, ptr @_RNvNvNtNtNtCsiL9kQKV5x1F_15portable_atomic3imp9atomic1286x86_6411atomic_load4FUNC monotonic, align 8, !noalias !20563, !nonnull !52, !noundef !52
  %i.az = tail call noundef i128 %i.ay(ptr noundef nonnull align 16 %i.ax), !noalias !20563, !inline_history !20362 ; 2 uses
  %i.ba = icmp eq i128 %i.az, 0
  br i1 %i.ba, label %bb.e, label %_RINvNtCsloFShupyl5J_6comemo4hash4hashRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font4book8FontBookEECs9gmjTwvRRSu_10typst_html.exit

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20564)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !20565
  store i64 8317987319222330741, ptr %i.y, align 8, !noalias !20565
  %.sroa.411.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 7816392313619706465, ptr %.sroa.411.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !20565
  %.sroa.512.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 7237128888997146499, ptr %.sroa.512.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !20565
  %.sroa.613.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i64 8387220255154660723, ptr %.sroa.613.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !20565
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20566)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20567)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx.i.i.i.i.i.i, i8 0, i64 40, i1 false), !noalias !20565
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !20568, !noalias !20563, !noundef !52 ; 3 uses
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.y, i64 noundef %i.bd), !noalias !20569
  %i.be = load ptr, ptr %i.bb, align 8, !alias.scope !20568, !noalias !20563, !noundef !52 ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.be, null
  %3 = icmp eq i64 %i.bd, 0
  %4 = or i1 %3, %.not.not.i.i.i.i.i.i.i.i
  br i1 %4, label %_RINvXs1r_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB7_8BTreeMapNtNtBd_6string6StringINtNtBd_3vec3VecjEENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i:                 ; preds = %bb.e
  %5 = ptrtoint ptr %i.be to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.bg = load i64, ptr %i.bf, align 16, !alias.scope !20568, !noalias !20563
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i
  %.sroa.5.04055.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.07.0.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i ], [ null, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.14.054.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.78.0.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i ], [ %i.bg, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 6 uses
  %.sroa.22.053.i.i.i.i.i.i.i.i = phi i64 [ %i.bh, %.loopexit.i.i.i.i.i.i.i.i ], [ %i.bd, %.lr.ph.preheader.i.i.i.i.i.i.i.i ]
  %.sroa.9.052.i.i.i.i.i.i.i.i = phi i64 [ 0, %.loopexit.i.i.i.i.i.i.i.i ], [ %5, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bh = add i64 %.sroa.22.053.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.5.04055.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.bi = inttoptr i64 %.sroa.9.052.i.i.i.i.i.i.i.i to ptr ; 3 uses
  %i.bj = icmp eq i64 %.sroa.14.054.i.i.i.i.i.i.i.i, 0
  br i1 %i.bj, label %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %bb.g
  %xtraiter = and i64 %.sroa.14.054.i.i.i.i.i.i.i.i, 7 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol
  %.sroa.013.017.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ %i.bi, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ]
  %.sroa.011.016.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.bl, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ %.sroa.14.054.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.i.i.i.i.i.i.i.i.prol, i64 544
  %i.bl = add i64 %.sroa.011.016.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %i.bk, align 8, !noalias !20570, !nonnull !52, !noundef !52 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !20373

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %.sroa.013.017.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %.sroa.011.016.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.sroa.14.054.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.bl, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.bm = icmp ult i64 %.sroa.14.054.i.i.i.i.i.i.i.i, 8
  br i1 %i.bm, label %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.sroa.013.017.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.7, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.013.017.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.011.016.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bv, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.011.016.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.i.i.i.i.i.i.i.i, i64 544
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bn, align 8, !noalias !20570, !nonnull !52, !noundef !52
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.i.i.i.i, i64 544
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.bo, align 8, !noalias !20570, !nonnull !52, !noundef !52
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.1, i64 544
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.bp, align 8, !noalias !20570, !nonnull !52, !noundef !52
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.2, i64 544
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.bq, align 8, !noalias !20570, !nonnull !52, !noundef !52
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.3, i64 544
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.br, align 8, !noalias !20570, !nonnull !52, !noundef !52
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.4, i64 544
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.bs, align 8, !noalias !20570, !nonnull !52, !noundef !52
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.5, i64 544
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.bt, align 8, !noalias !20570, !nonnull !52, !noundef !52
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.6, i64 544
  %i.bv = add i64 %.sroa.011.016.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.bu, align 8, !noalias !20570, !nonnull !52, !noundef !52 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %bb.g, %bb.f
  %.sroa.59.0.copyload.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.14.054.i.i.i.i.i.i.i.i, %bb.f ], [ 0, %bb.g ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.48.0.copyload.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.9.052.i.i.i.i.i.i.i.i, %bb.f ], [ 0, %bb.g ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.07.0.copyload.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.5.04055.i.i.i.i.i.i.i.i, %bb.f ], [ %i.bi, %bb.g ], [ %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ], [ %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.7, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 538
  %i.by = load i16, ptr %i.bx, align 2, !noalias !20571, !noundef !52
  %i.bz = zext i16 %i.by to i64
  %i.ca = icmp ult i64 %.sroa.59.0.copyload.i.i.i.i.i.i.i.i.i.i, %i.bz
  br i1 %i.ca, label %bb.j, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i, %bb.h
  %.sroa.0.022.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cb, %bb.h ], [ %.sroa.07.0.copyload.i.i.i.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.5.021.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cd, %bb.h ], [ %.sroa.48.0.copyload.i.i.i.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i ]
  %i.cb = load ptr, ptr %.sroa.0.022.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !20572, !noundef !52 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i:     ; preds = %bb.h
  %i.cc = zext i16 %i.cf to i64
  br label %bb.j

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cd = add i64 %.sroa.5.021.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i.i.i.i.i.i.i.i, i64 536
  %i.cf = load i16, ptr %i.ce, align 8, !noalias !20572 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 538
  %i.ch = load i16, ptr %i.cg, align 2, !noalias !20571, !noundef !52
  %i.ci = icmp ult i16 %i.cf, %i.ch
  br i1 %i.ci, label %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @595) #51
          to label %.noexc.i.i.i.i.i.i.i.i.i.i unwind label %bb.m, !noalias !20573

.noexc.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i
  %.sroa.10.0.ph.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cc, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.59.0.copyload.i.i.i.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %.sroa.7.0.ph.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cd, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.48.0.copyload.i.i.i.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.06.0.ph.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cb, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.07.0.copyload.i.i.i.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.cj = icmp eq i64 %.sroa.7.0.ph.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.cj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ck = add nuw nsw i64 %.sroa.10.0.ph.i.i.i.i.i.i.i.i.i.i.i, 1
  br label %.loopexit.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.cl = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i.i.i.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.cl)
  %i.cm = getelementptr i8, ptr %.sroa.06.0.ph.i.i.i.i.i.i.i.i.i.i.i, i64 552
  %i.cn = getelementptr [8 x i8], ptr %i.cm, i64 %.sroa.10.0.ph.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %xtraiter91 = and i64 %.sroa.7.0.ph.i.i.i.i.i.i.i.i.i.i.i, 7 ; 2 uses
  %lcmp.mod92.not = icmp eq i64 %xtraiter91, 0
  br i1 %lcmp.mod92.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.l, %.prol.preheader
  %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.co, %.prol.preheader ], [ %i.cn, %bb.l ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.7.0.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.l ]
  %prol.iter93 = phi i64 [ %prol.iter93.next, %.prol.preheader ], [ 0, %bb.l ]
  %.sroa.019.0.i.i.i.i.i.i.i.i.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.i.i.i.prol, align 8, !noalias !20574, !nonnull !52, !noundef !52 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.prol, i64 544 ; 2 uses
  %prol.iter93.next = add i64 %prol.iter93, 1     ; 2 uses
  %prol.iter93.cmp.not = icmp eq i64 %prol.iter93.next, %xtraiter91
  br i1 %prol.iter93.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !20387

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.l
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.l ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.cn, %bb.l ], [ %i.co, %.prol.preheader ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.sroa.7.0.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.l ], [ %.sroa.019.0.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %i.cp = icmp ult i64 %.sroa.7.0.ph.i.i.i.i.i.i.i.i.i.i.i, 8
  br i1 %i.cp, label %.loopexit.i.i.i.i.i.i.i.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cy, %.new ], [ %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.i.i.i.i.i.i.i.i.7, %.new ], [ %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !20574, !nonnull !52, !noundef !52
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i, i64 544
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.cq, align 8, !noalias !20574, !nonnull !52, !noundef !52
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.1, i64 544
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.cr, align 8, !noalias !20574, !nonnull !52, !noundef !52
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.2, i64 544
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.cs, align 8, !noalias !20574, !nonnull !52, !noundef !52
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.3, i64 544
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.ct, align 8, !noalias !20574, !nonnull !52, !noundef !52
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.4, i64 544
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.cu, align 8, !noalias !20574, !nonnull !52, !noundef !52
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.5, i64 544
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.cv, align 8, !noalias !20574, !nonnull !52, !noundef !52
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.6, i64 544
  %.sroa.019.0.i.i.i.i.i.i.i.i.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.cw, align 8, !noalias !20574, !nonnull !52, !noundef !52 ; 2 uses
  %i.cx = icmp eq i64 %.sroa.019.0.i.i.i.i.i.i.i.i.i.i.i.i.7, 0
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.7, i64 544
  br i1 %i.cx, label %.loopexit.i.i.i.i.i.i.i.i, label %.new

bb.m:                                             ; preds = %bb.i
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %.prol.loopexit, %.new, %bb.k
  %.sroa.78.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ck, %bb.k ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.06.0.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.k ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.7, %.new ]
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.06.0.ph.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.db = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i.i.i.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.db)
  %i.dc = getelementptr inbounds nuw [24 x i8], ptr %i.da, i64 %.sroa.10.0.ph.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.06.0.ph.i.i.i.i.i.i.i.i.i.i.i, i64 272
  %i.de = getelementptr inbounds nuw [24 x i8], ptr %i.dd, i64 %.sroa.10.0.ph.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.df = getelementptr i8, ptr %i.dc, i64 8
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.df, align 8, !noalias !20569, !nonnull !52, !noundef !52
  %i.dg = getelementptr i8, ptr %i.dc, i64 16
  %.val35.i.i.i.i.i.i.i.i = load i64, ptr %i.dg, align 8, !noalias !20569, !noundef !52
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i.i.i.i.i.i, i64 noundef %.val35.i.i.i.i.i.i.i.i), !noalias !20569
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !20575
  store i8 -1, ptr %i.x, align 1, !noalias !20575
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.x, i64 noundef 1), !noalias !20569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !20575
  %i.dh = getelementptr i8, ptr %i.de, i64 8
  %.val36.i.i.i.i.i.i.i.i = load ptr, ptr %i.dh, align 8, !noalias !20569, !nonnull !52, !noundef !52
  %i.di = getelementptr i8, ptr %i.de, i64 16
  %.val37.i.i.i.i.i.i.i.i = load i64, ptr %i.di, align 8, !noalias !20569, !noundef !52 ; 2 uses
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.y, i64 noundef %.val37.i.i.i.i.i.i.i.i), !noalias !20569
  %i.dj = shl nuw nsw i64 %.val37.i.i.i.i.i.i.i.i, 3
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.val36.i.i.i.i.i.i.i.i, i64 noundef %i.dj), !noalias !20569
  %i.dk = icmp eq i64 %i.bh, 0
  br i1 %i.dk, label %_RINvXs1r_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB7_8BTreeMapNtNtBd_6string6StringINtNtBd_3vec3VecjEENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i, label %bb.f

_RINvXs1r_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB7_8BTreeMapNtNtBd_6string6StringINtNtBd_3vec3VecjEENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i: ; preds = %.loopexit.i.i.i.i.i.i.i.i, %bb.e
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8, !alias.scope !20576, !noalias !20563, !nonnull !52, !noundef !52 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.do = load i64, ptr %i.dn, align 16, !alias.scope !20576, !noalias !20563, !noundef !52 ; 3 uses
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.y, i64 noundef %i.do), !noalias !20577
  call void @llvm.experimental.noalias.scope.decl(metadata !20578)
  %.idx.i.i.i.i.i.i.i.i = mul nuw nsw i64 %i.do, 88
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 %.idx.i.i.i.i.i.i.i.i
  %i.dq = icmp eq i64 %i.do, 0
  br i1 %i.dq, label %_RNCNvMs0_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB7_8LazyHashNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font4book8FontBookE20load_or_compute_hash0Cs9gmjTwvRRSu_10typst_html.exit.i.i.i.i, label %.lr.ph.i1.i.i.i.i.i.i.i

.lr.ph.i1.i.i.i.i.i.i.i:                          ; preds = %_RINvXs1r_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB7_8BTreeMapNtNtBd_6string6StringINtNtBd_3vec3VecjEENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i, %_RINvXs5_NtNtNtCsdaEETE4DqmE_13typst_library4text4font4infoNtB6_8FontInfoNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i
end_hunk_1
