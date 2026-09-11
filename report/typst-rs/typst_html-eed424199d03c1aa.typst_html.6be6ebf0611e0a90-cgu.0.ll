Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_html-eed424199d03c1aa.typst_html.6be6ebf0611e0a90-cgu.0?download=true
inline.NumInlined: 8941
inline.NumDeleted: 4345
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_RNvMsz_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8IntoIterjNtNtB7_7set_val9SetValZSTE10dying_nextCs9gmjTwvRRSu_10typst_html:bb.a
  %.sroa.019.0.i.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.prol, align 8, !noalias !15661, !nonnull !57, !noundef !57 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.prol, i64 104 ; 2 uses
  %prol.iter50.next = add i64 %prol.iter50, 1     ; 2 uses
  %prol.iter50.cmp.not = icmp eq i64 %prol.iter50.next, %xtraiter48
  br i1 %prol.iter50.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !15643

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.i
  %.sroa.017.0.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.i ], [ %.sroa.017.0.i.i.i.i.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.i.i.i.unr = phi ptr [ %i.bm, %bb.i ], [ %i.bn, %.prol.preheader ]
  %.sroa.019.0.in.i.i.i.i.i.unr = phi i64 [ %.sroa.5.0.lcssa.i.i.i.i, %bb.i ], [ %.sroa.019.0.i.i.i.i.i.prol, %.prol.preheader ]
  %i.bo = icmp ult i64 %.sroa.5.0.lcssa.i.i.i.i, 8
  br i1 %i.bo, label %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingjNtNtB8_7set_val9SetValZSTE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs9gmjTwvRRSu_10typst_html.exit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i.i.i.i = phi ptr [ %i.bx, %.new ], [ %.sroa.017.0.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.i.7, %.new ], [ %.sroa.019.0.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i, align 8, !noalias !15661, !nonnull !57, !noundef !57
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i, i64 104
  %.sroa.017.0.i.i.i.i.i.1 = load ptr, ptr %i.bp, align 8, !noalias !15661, !nonnull !57, !noundef !57
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.1, i64 104
  %.sroa.017.0.i.i.i.i.i.2 = load ptr, ptr %i.bq, align 8, !noalias !15661, !nonnull !57, !noundef !57
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.2, i64 104
  %.sroa.017.0.i.i.i.i.i.3 = load ptr, ptr %i.br, align 8, !noalias !15661, !nonnull !57, !noundef !57
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.3, i64 104
  %.sroa.017.0.i.i.i.i.i.4 = load ptr, ptr %i.bs, align 8, !noalias !15661, !nonnull !57, !noundef !57
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.4, i64 104
  %.sroa.017.0.i.i.i.i.i.5 = load ptr, ptr %i.bt, align 8, !noalias !15661, !nonnull !57, !noundef !57
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.5, i64 104
  %.sroa.017.0.i.i.i.i.i.6 = load ptr, ptr %i.bu, align 8, !noalias !15661, !nonnull !57, !noundef !57
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.6, i64 104
  %.sroa.019.0.i.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.7 = load ptr, ptr %i.bv, align 8, !noalias !15661, !nonnull !57, !noundef !57 ; 2 uses
  %i.bw = icmp eq i64 %.sroa.019.0.i.i.i.i.i.7, 0
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.7, i64 104
  br i1 %i.bw, label %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingjNtNtB8_7set_val9SetValZSTE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs9gmjTwvRRSu_10typst_html.exit, label %.new

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %i.by = add i64 %.sroa.5.038.i.i.i.i, 1         ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.039.i.i.i.i, i64 96
  %i.ca = load i16, ptr %i.bz, align 8, !noalias !15660 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.5.038.i.i.i.i, 0
  %..i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 104, i64 200
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.039.i.i.i.i, i64 noundef %..i.i.i.i.i, i64 noundef 8) #53, !noalias !15662
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bg, i64 98
  %i.cc = load i16, ptr %i.cb, align 2, !noalias !15659, !noundef !57
  %i.cd = icmp ult i16 %i.ca, %i.cc
  br i1 %i.cd, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.k:                                             ; preds = %.lr.ph.i.i.i.i
  %.not.i33.i.i.i.i = icmp eq i64 %.sroa.5.038.i.i.i.i, 0
  %..i34.i.i.i.i = select i1 %.not.i33.i.i.i.i, i64 104, i64 200
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.039.i.i.i.i, i64 noundef %..i34.i.i.i.i, i64 noundef 8) #53, !noalias !15662
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112) #51
          to label %.noexc.i.i unwind label %bb.l, !noalias !15663

.noexc.i.i:                                       ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

.critedge.i:                                      ; preds = %bb.e
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #51, !noalias !15664
  unreachable

_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingjNtNtB8_7set_val9SetValZSTE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs9gmjTwvRRSu_10typst_html.exit: ; preds = %.prol.loopexit, %.new, %bb.h
  %.sroa.7.0.ph.i.i.i = phi i64 [ %i.bj, %bb.h ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.0.0.ph.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i.i.i.i, %bb.h ], [ %.sroa.017.0.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.i.i.i.7, %.new ]
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %.sroa.0.0.ph.i.i.i, ptr %i.aj, align 8, !alias.scope !15655, !noalias !15656
  store i64 0, ptr %i.al, align 8, !alias.scope !15655, !noalias !15656
  store i64 %.sroa.7.0.ph.i.i.i, ptr %.sroa.59.0..sroa_idx.i.i, align 8, !alias.scope !15655, !noalias !15656
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
  store ptr inttoptr (i64 16 to ptr), ptr %i.o, align 8, !noalias !15740
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  store i64 0, ptr %i.y, align 8, !noalias !15740
  invoke fastcc void @_RINvMNtNtCs9gmjTwvRRSu_10typst_html3css6encodeNtB3_10Properties4pushReEB7_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @619, i64 noundef 15, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @620, i64 noundef 4)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  %.val.i.i = load ptr, ptr %i.o, align 8, !alias.scope !15741, !noalias !15740, !nonnull !57, !noundef !57
  %.val1.i.i = load i64, ptr %i.y, align 8, !alias.scope !15741, !noalias !15740
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCs9gmjTwvRRSu_10typst_html3css6encode8PropertyEEB1g_(ptr nonnull %.val.i.i, i64 %.val1.i.i)
          to label %.body unwind label %bb.c, !noalias !15742

bb.c:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50, !noalias !15742
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.ab = load ptr, ptr %i.o, align 8, !noalias !15740, !nonnull !57, !noundef !57 ; 2 uses
  %i.ac = load i64, ptr %i.y, align 8, !noalias !15740, !noundef !57 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15743)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15744)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15745)
  %.val.i.i15 = load ptr, ptr %i.x, align 16, !alias.scope !15746, !noalias !15743, !noundef !57 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 88 ; 3 uses
  %i.ae = icmp eq ptr %.val.i.i15, null
  br i1 %i.ae, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val1.i.i16 = load i64, ptr %i.ad, align 8, !alias.scope !15746, !noalias !15743
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCs9gmjTwvRRSu_10typst_html3css6encode8PropertyEEB1g_(ptr nonnull %.val.i.i15, i64 %.val1.i.i16)
          to label %bb.g unwind label %.body.i, !noalias !15747

.body.i:                                          ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ab, ptr %i.x, align 16, !alias.scope !15746, !noalias !15743
  store i64 %i.ac, ptr %i.ad, align 8, !alias.scope !15746, !noalias !15743
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs9gmjTwvRRSu_10typst_html8HtmlElemEBD_(ptr noalias nofree noundef align 16 dereferenceable(112) %i.r) #49
          to label %.body20 unwind label %bb.f, !noalias !15743

bb.f:                                             ; preds = %.body.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50, !noalias !15743
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  store ptr %i.ab, ptr %i.x, align 16, !alias.scope !15746, !noalias !15743
  store i64 %i.ac, ptr %i.ad, align 8, !alias.scope !15746, !noalias !15743
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.s, ptr noundef nonnull align 16 dereferenceable(112) %i.r, i64 112, i1 false), !alias.scope !15748
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %.sroa.01.0.copyload = load i64, ptr %1, align 8 ; 5 uses
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.42.0.copyload = load ptr, ptr %.sroa.42.0..sroa_idx, align 8, !nonnull !57, !noundef !57 ; 13 uses
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.53.0.copyload = load i64, ptr %.sroa.53.0..sroa_idx, align 8 ; 3 uses
  %i.ah = icmp ult i64 %.sroa.53.0.copyload, 164703072086692426
  tail call void @llvm.assume(i1 %i.ah)
  %.idx = mul nuw nsw i64 %.sroa.53.0.copyload, 56
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.42.0.copyload, i64 %.idx ; 4 uses
  %i.aj = icmp sgt i64 %.sroa.01.0.copyload, -1
  tail call void @llvm.assume(i1 %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !15749
  store ptr %.sroa.42.0.copyload, ptr %i.k, align 8, !alias.scope !15750, !noalias !15751
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 5 uses
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  store i64 %.sroa.01.0.copyload, ptr %.sroa.546.0..sroa_idx, align 8, !alias.scope !15750, !noalias !15751
  %.sroa.647.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  store ptr %i.ai, ptr %.sroa.647.0..sroa_idx, align 8, !alias.scope !15750, !noalias !15751
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15752)
  %i.ak = mul i64 %.sroa.01.0.copyload, 56        ; 8 uses
  %i.al = udiv i64 %i.ak, 24                      ; 3 uses
  %.not.i34116 = icmp eq i64 %.sroa.53.0.copyload, 0
  br i1 %.not.i34116, label %_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec16in_place_collectINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB7_9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeENvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_nodeEINtB5_18SpecInPlaceCollectNtNtNtB2a_11foundations7content7ContentBP_E16collect_in_placeB3d_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.4142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %.sroa.8143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %.sroa.9144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %.sroa.6148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.4147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.7149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.sroa.8151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %.sroa.9153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %_RNvYNvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_nodeINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutTNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeEE8call_mutBa_.exit.i
  %.sroa.654.0118 = phi ptr [ %.sroa.42.0.copyload, %.lr.ph ], [ %i.bd, %_RNvYNvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_nodeINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutTNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeEE8call_mutBa_.exit.i ] ; 3 uses
  %.val.i.i3065117 = phi ptr [ %.sroa.42.0.copyload, %.lr.ph ], [ %i.ao, %_RNvYNvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_nodeINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutTNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeEE8call_mutBa_.exit.i ] ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %.val.i.i3065117, i64 56, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.i.i3065117, i64 56 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15753
  %i.ap = load i64, ptr %i.am, align 8, !noundef !57 ; 2 uses
  %i.aq = icmp ult i64 %i.ap, 164703072086692426
  call void @llvm.assume(i1 %i.aq), !noalias !15754
  %i.ar = icmp eq i64 %i.ap, 0                    ; 3 uses
  br i1 %i.ar, label %bb.i, label %_RNvMNvCs9gmjTwvRRSu_10typst_html1__NtB4_8HtmlElem9with_body.exit18.i

_RNvMNvCs9gmjTwvRRSu_10typst_html1__NtB4_8HtmlElem9with_body.exit18.i: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !15755
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !15755
  %i.as = getelementptr inbounds nuw i8, ptr %.val.i.i3065117, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false)
  store i128 0, ptr %i.g, align 16, !alias.scope !15756, !noalias !15757
  store i64 1, ptr %.sroa.4142.0..sroa_idx, align 16, !alias.scope !15756, !noalias !15757
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 16, !alias.scope !15756, !noalias !15757
  store ptr null, ptr %.sroa.8143.0..sroa_idx, align 16, !alias.scope !15756, !noalias !15757
  store i64 -9223372036854752988, ptr %.sroa.9144.0..sroa_idx, align 16, !alias.scope !15756, !noalias !15757
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15755
  invoke fastcc void @_RINvMNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB3_10RawContent3newNtCs9gmjTwvRRSu_10typst_html8HtmlElemEB1o_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(112) %i.g)
          to label %bb.j unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9gmjTwvRRSu_10typst_html.exit.i.thread72, !noalias !15758, !inline_history !15703

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9gmjTwvRRSu_10typst_html.exit.i.thread72: ; preds = %_RNvMNvCs9gmjTwvRRSu_10typst_html1__NtB4_8HtmlElem9with_body.exit18.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ao, ptr %.sroa.445.0..sroa_idx, align 8
  br label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %.val.i.i3065117, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 24, i1 false)
  br label %_RNvMNvCs9gmjTwvRRSu_10typst_html1__NtB4_8HtmlElem9with_body.exit.i

bb.j:                                             ; preds = %_RNvMNvCs9gmjTwvRRSu_10typst_html1__NtB4_8HtmlElem9with_body.exit18.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !15755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !15755
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !15755
  invoke fastcc void @_RNvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_list(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.l unwind label %bb.n

bb.k:                                             ; preds = %bb.l
  %i.av = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ao, ptr %.sroa.445.0..sroa_idx, align 8
  br label %.body.i36

bb.l:                                             ; preds = %bb.j
  invoke void @_RNvXs4_NtNtCsdaEETE4DqmE_13typst_library11foundations7contentNtB5_7ContentNtNtNtCs3oUPovFnLWP_4core3ops5arith3Add3add(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.m unwind label %bb.k, !noalias !15758, !inline_history !15703

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !15755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !15755
  br label %_RNvMNvCs9gmjTwvRRSu_10typst_html1__NtB4_8HtmlElem9with_body.exit.i

_RNvMNvCs9gmjTwvRRSu_10typst_html1__NtB4_8HtmlElem9with_body.exit.i: ; preds = %bb.i, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !15755
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6148.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !15755
  store i128 0, ptr %i.d, align 16, !alias.scope !15759, !noalias !15760
  store i64 1, ptr %.sroa.4147.0..sroa_idx, align 16, !alias.scope !15759, !noalias !15760
  store ptr null, ptr %.sroa.7149.0..sroa_idx, align 16, !alias.scope !15759, !noalias !15760
  store ptr null, ptr %.sroa.8151.0..sroa_idx, align 16, !alias.scope !15759, !noalias !15760
  store i64 -9223372036854775508, ptr %.sroa.9153.0..sroa_idx, align 16, !alias.scope !15759, !noalias !15760
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15755
  invoke fastcc void @_RINvMNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB3_10RawContent3newNtCs9gmjTwvRRSu_10typst_html8HtmlElemEB1o_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(112) %i.d)
          to label %bb.p unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9gmjTwvRRSu_10typst_html.exit.i, !noalias !15758, !inline_history !15703

bb.n:                                             ; preds = %bb.j
  %i.aw = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ao, ptr %.sroa.445.0..sroa_idx, align 8
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body.i36 unwind label %bb.o, !noalias !15761, !inline_history !15708

bb.o:                                             ; preds = %bb.r, %bb.n
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50, !noalias !15758, !inline_history !15703
  unreachable

bb.p:                                             ; preds = %_RNvMNvCs9gmjTwvRRSu_10typst_html1__NtB4_8HtmlElem9with_body.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !15762
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !15755
  br i1 %i.ar, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9gmjTwvRRSu_10typst_html.exit.i.i, label %_RNvYNvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_nodeINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutTNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeEE8call_mutBa_.exit.i

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9gmjTwvRRSu_10typst_html.exit.i.i: ; preds = %bb.p
  %.val.i7.i = load i64, ptr %i.e, align 8, !range !72, !noundef !57 ; 2 uses
  %i.ay = icmp eq i64 %.val.i7.i, 0
  br i1 %i.ay, label %_RNvYNvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_nodeINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutTNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeEE8call_mutBa_.exit.i, label %bb.q

bb.q:                                             ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9gmjTwvRRSu_10typst_html.exit.i.i
  %i.az = load ptr, ptr %i.an, align 8, !nonnull !57, !noundef !57
  %i.ba = mul nuw i64 %.val.i7.i, 56
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.az, i64 noundef %i.ba, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !15763, !inline_history !15711
  br label %_RNvYNvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_nodeINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutTNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeEE8call_mutBa_.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9gmjTwvRRSu_10typst_html.exit.i: ; preds = %_RNvMNvCs9gmjTwvRRSu_10typst_html1__NtB4_8HtmlElem9with_body.exit.i
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr %i.ao, ptr %.sroa.445.0..sroa_idx, align 8
  br i1 %i.ar, label %bb.r, label %.body.i36

bb.r:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9gmjTwvRRSu_10typst_html.exit.i.thread72, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9gmjTwvRRSu_10typst_html.exit.i
  %i.bc = phi { ptr, i32 } [ %i.at, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9gmjTwvRRSu_10typst_html.exit.i.thread72 ], [ %i.bb, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9gmjTwvRRSu_10typst_html.exit.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeEECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.e) #49
          to label %.body.i36 unwind label %bb.o, !inline_history !15703

_RNvYNvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_nodeINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutTNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeEE8call_mutBa_.exit.i: ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9gmjTwvRRSu_10typst_html.exit.i.i, %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15753
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.654.0118, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !15764
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.654.0118, i64 24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.not.i34 = icmp eq ptr %i.ao, %i.ai
  br i1 %.not.i34, label %_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec16in_place_collectINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB7_9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeENvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_nodeEINtB5_18SpecInPlaceCollectNtNtNtB2a_11foundations7content7ContentBP_E16collect_in_placeB3d_.exit.i, label %bb.h

.body.i36:                                        ; preds = %bb.n, %bb.k, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9gmjTwvRRSu_10typst_html.exit.i, %bb.r
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.av, %bb.k ], [ %i.aw, %bb.n ], [ %i.bb, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9gmjTwvRRSu_10typst_html.exit.i ], [ %i.bc, %bb.r ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECs9gmjTwvRRSu_10typst_html(ptr nonnull %.sroa.42.0.copyload, ptr nonnull %.sroa.654.0118) #49
          to label %.body39 unwind label %bb.s, !noalias !15764, !inline_history !15712

bb.s:                                             ; preds = %.body.i36
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50, !noalias !15764, !inline_history !15712
  unreachable

.body39:                                          ; preds = %.body.i36, %bb.t
  %.pn.i.i = phi { ptr, i32 } [ %i.br, %bb.t ], [ %eh.lpad-body.i, %.body.i36 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeENvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_nodeEEB36_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k) #49
          to label %.thread unwind label %bb.y, !noalias !15765, !inline_history !15715

_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec16in_place_collectINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB7_9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeENvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_nodeEINtB5_18SpecInPlaceCollectNtNtNtB2a_11foundations7content7ContentBP_E16collect_in_placeB3d_.exit.i: ; preds = %_RNvYNvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_nodeINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutTNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeEE8call_mutBa_.exit.i, %bb.g
  %.lcssa110 = phi ptr [ %.sroa.42.0.copyload, %bb.g ], [ %i.ai, %_RNvYNvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_nodeINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutTNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeEE8call_mutBa_.exit.i ] ; 2 uses
  %.sroa.654.0.lcssa = phi ptr [ %.sroa.42.0.copyload, %bb.g ], [ %i.bd, %_RNvYNvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_nodeINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutTNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeEE8call_mutBa_.exit.i ] ; 2 uses
  %i.bf = ptrtoint ptr %.sroa.654.0.lcssa to i64
  %i.bg = ptrtoint ptr %.sroa.42.0.copyload to i64
  %i.bh = sub nuw i64 %i.bf, %i.bg                ; 3 uses
  %i.bi = udiv exact i64 %i.bh, 24                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !15766
  store ptr %.sroa.42.0.copyload, ptr %i.j, align 8, !noalias !15766
  %i.bj = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.bi, ptr %i.bj, align 8, !noalias !15766
  %i.bk = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.01.0.copyload, ptr %i.bk, align 8, !noalias !15766
  %i.bl = ptrtoint ptr %i.ai to i64
  %i.bm = ptrtoint ptr %.lcssa110 to i64
  %i.bn = sub nuw i64 %i.bl, %i.bm
  %i.bo = udiv exact i64 %i.bn, 56
  store i64 0, ptr %.sroa.546.0..sroa_idx, align 8, !alias.scope !15767, !noalias !15765
  store ptr inttoptr (i64 8 to ptr), ptr %i.k, align 8, !alias.scope !15767, !noalias !15765
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.445.0..sroa_idx, align 8, !alias.scope !15767, !noalias !15765
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.647.0..sroa_idx, align 8, !alias.scope !15767, !noalias !15765
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull align 8 %.lcssa110, i64 noundef %i.bo)
          to label %_RNvMs0_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeE32forget_allocation_drop_remainingCs9gmjTwvRRSu_10typst_html.exit.i unwind label %bb.t, !noalias !15768, !inline_history !15719

_RNvMs0_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeE32forget_allocation_drop_remainingCs9gmjTwvRRSu_10typst_html.exit.i: ; preds = %_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec16in_place_collectINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB7_9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeENvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_nodeEINtB5_18SpecInPlaceCollectNtNtNtB2a_11foundations7content7ContentBP_E16collect_in_placeB3d_.exit.i
  %.not.i.i = icmp ne i64 %.sroa.01.0.copyload, 0
  %i.bp = mul nuw i64 %i.al, 24                   ; 5 uses
  %i.bq = icmp ne i64 %i.ak, %i.bp
  %or.cond = select i1 %.not.i.i, i1 %i.bq, i1 false
  br i1 %or.cond, label %bb.u, label %.noexc

bb.t:                                             ; preds = %bb.w, %_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec16in_place_collectINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB7_9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeENvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_nodeEINtB5_18SpecInPlaceCollectNtNtNtB2a_11foundations7content7ContentBP_E16collect_in_placeB3d_.exit.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeNtNtNtB1R_11foundations7content7ContentEECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #49
          to label %.body39 unwind label %bb.y, !noalias !15765, !inline_history !15715

bb.u:                                             ; preds = %_RNvMs0_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeE32forget_allocation_drop_remainingCs9gmjTwvRRSu_10typst_html.exit.i
  %i.bs = icmp ult i64 %i.ak, 24
  br i1 %i.bs, label %2, label %_RNvMs0_NtCs1xwejQucwHj_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i

2:                                                ; preds = %bb.u
  %3 = icmp eq i64 %i.ak, 0
  br i1 %3, label %.noexc, label %bb.v

bb.v:                                             ; preds = %2
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.42.0.copyload, i64 noundef %i.ak, i64 noundef 8) #53, !noalias !15765, !inline_history !15719
  br label %.noexc

_RNvMs0_NtCs1xwejQucwHj_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i: ; preds = %bb.u
  %i.bt = icmp ule i64 %i.bp, %i.ak
  call void @llvm.assume(i1 %i.bt), !noalias !15769
  %i.bu = call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.42.0.copyload, i64 noundef %i.ak, i64 noundef 8, i64 noundef range(i64 0, -15) %i.bp) #53, !noalias !15765, !inline_history !15719 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.w, label %.noexc, !prof !145

bb.w:                                             ; preds = %_RNvMs0_NtCs1xwejQucwHj_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.bp) #54
          to label %bb.x unwind label %bb.t, !noalias !15765, !inline_history !15715

bb.x:                                             ; preds = %bb.w
  unreachable

bb.y:                                             ; preds = %bb.t, %.body39
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50, !noalias !15765, !inline_history !15715
  unreachable

.noexc:                                           ; preds = %_RNvMs0_NtCs1xwejQucwHj_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i, %_RNvMs0_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeE32forget_allocation_drop_remainingCs9gmjTwvRRSu_10typst_html.exit.i, %2, %bb.v
  %.sroa.03.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.v ], [ %i.bu, %_RNvMs0_NtCs1xwejQucwHj_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i ], [ %.sroa.42.0.copyload, %_RNvMs0_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeE32forget_allocation_drop_remainingCs9gmjTwvRRSu_10typst_html.exit.i ], [ inttoptr (i64 8 to ptr), %2 ] ; 8 uses
  store i64 %i.al, ptr %i.m, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.sroa.03.0.i.i, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %i.bi, ptr %i.by, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !15766
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !15749
  %i.bz = icmp ult i64 %i.bh, -9223372036854775792
  call void @llvm.assume(i1 %i.bz)
  switch i64 %i.bi, label %bb.ab [
    i64 0, label %bb.z
    i64 1, label %bb.aa
  ]

bb.z:                                             ; preds = %.noexc
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library11foundations7contentNtB2_7Content5empty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p)
          to label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9gmjTwvRRSu_10typst_html.exit.i unwind label %bb.aj, !noalias !15770, !inline_history !15722

bb.aa:                                            ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !15771
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i, i64 %i.bh
  store ptr %.sroa.03.0.i.i, ptr %i.n, align 8, !noalias !15771
  %i.cb = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %i.al, ptr %i.cb, align 8, !noalias !15771
  %i.cc = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  store ptr %.sroa.03.0.i.i, ptr %i.cc, align 8, !noalias !15771
  %i.cd = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.ca, ptr %i.cd, align 8, !noalias !15771
  call void @llvm.experimental.noalias.scope.decl(metadata !15772)
  %i.ce = icmp eq ptr %.sroa.654.0.lcssa, %.sroa.42.0.copyload
  br i1 %i.ce, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.thread, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit

bb.ab:                                            ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !15771
  invoke fastcc void @_RINvMNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB3_10RawContent3newNtB5_12SequenceElemECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.m)
          to label %bb.ah unwind label %.thread81

bb.ac:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.thread
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 dereferenceable(32) %i.n) #49
          to label %.thread unwind label %bb.ag, !noalias !15771, !inline_history !15722

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit: ; preds = %bb.aa
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i, i64 24
  store ptr %i.cg, ptr %i.cc, align 8, !alias.scope !15772, !noalias !15773
  %.sroa.048.0.copyload49 = load ptr, ptr %.sroa.03.0.i.i, align 8, !noalias !15774 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.048.0.copyload49, null
  br i1 %.not.i, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.thread, label %bb.ad, !prof !68

bb.ad:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit
  %.sroa.650.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i, i64 8
  store ptr %.sroa.048.0.copyload49, ptr %i.p, align 8, !noalias !15770
  %.sroa.650.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.650.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.650.0..sroa_idx51, i64 16, i1 false)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 dereferenceable(32) %i.n)
          to label %bb.af unwind label %.thread81, !noalias !15771, !inline_history !15722

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.thread: ; preds = %bb.aa, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #54
          to label %bb.ae unwind label %bb.ac, !noalias !15771, !inline_history !15722

bb.ae:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.thread
  unreachable

.thread81:                                        ; preds = %bb.ab, %bb.ad
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !15771
  br label %bb.ak

bb.ag:                                            ; preds = %bb.aj, %bb.ac
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50, !noalias !15771, !inline_history !15722
  unreachable

bb.ah:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !15770
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !15771
  br label %bb.ak

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9gmjTwvRRSu_10typst_html.exit.i: ; preds = %bb.z
  %i.ci = icmp ult i64 %i.ak, 24
  br i1 %i.ci, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9gmjTwvRRSu_10typst_html.exit.i
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.03.0.i.i, i64 noundef %i.bp, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !15775
  br label %bb.ak

bb.aj:                                            ; preds = %bb.z
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #49
          to label %.thread unwind label %bb.ag, !inline_history !15722

bb.ak:                                            ; preds = %bb.ah, %bb.af, %bb.ai, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9gmjTwvRRSu_10typst_html.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !15776)
  call void @llvm.experimental.noalias.scope.decl(metadata !15777)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15778)
  %i.ck = load i64, ptr %i.cj, align 16, !range !65, !alias.scope !15779, !noalias !15780, !noundef !57
  %i.cl = icmp eq i64 %i.ck, 0
  br i1 %i.cl, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cm = getelementptr inbounds nuw i8, ptr %i.s, i64 40 ; 3 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !alias.scope !15781, !noalias !15780, !noundef !57
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cm)
          to label %bb.ao unwind label %.body.i22, !noalias !15780

.body.i22:                                        ; preds = %bb.am
  %i.cp = landingpad { ptr, i32 }
          cleanup
  store i64 1, ptr %i.cj, align 16, !alias.scope !15782, !noalias !15780
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cm, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.q, i64 24, i1 false), !alias.scope !15783, !noalias !15776
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs9gmjTwvRRSu_10typst_html8HtmlElemEBD_(ptr noalias nofree noundef align 16 dereferenceable(112) %i.s) #49
          to label %.body20.thread87 unwind label %bb.an, !noalias !15784

bb.an:                                            ; preds = %.body.i22
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50, !noalias !15784
  unreachable

bb.ao:                                            ; preds = %bb.am, %bb.al, %bb.ak
  store i64 1, ptr %i.cj, align 16, !alias.scope !15782, !noalias !15780
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.q, i64 24, i1 false), !alias.scope !15783, !noalias !15776
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.t, ptr noundef nonnull align 16 dereferenceable(112) %i.s, i64 112, i1 false), !alias.scope !15785, !noalias !15777
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call fastcc void @_RINvMNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB3_10RawContent3newNtCs9gmjTwvRRSu_10typst_html8HtmlElemEB1o_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(112) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  ret void

.thread:                                          ; preds = %bb.ac, %bb.aj, %.thread81, %.body39
  %eh.lpad-body21.ph = phi { ptr, i32 } [ %.pn.i.i, %.body39 ], [ %lpad.thr_comm, %.thread81 ], [ %i.cf, %bb.ac ], [ %lpad.thr_comm.split-lp, %bb.aj ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs9gmjTwvRRSu_10typst_html8HtmlElemEBD_(ptr noalias nofree noundef align 16 dereferenceable(112) %i.s) #49
          to label %.body20.thread87 unwind label %bb.ap

bb.ap:                                            ; preds = %.body20, %.body, %.thread
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50
  unreachable

.body:                                            ; preds = %bb.b
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs9gmjTwvRRSu_10typst_html8HtmlElemEBD_(ptr noalias nofree noundef align 16 dereferenceable(112) %i.r) #49
          to label %.body20 unwind label %bb.ap

.body20.thread87:                                 ; preds = %.body.i22, %.thread, %.body20
  %.pn90 = phi { ptr, i32 } [ %.pn, %.body20 ], [ %i.cp, %.body.i22 ], [ %eh.lpad-body21.ph, %.thread ]
  resume { ptr, i32 } %.pn90

.body20:                                          ; preds = %.body.i, %.body
  %.pn = phi { ptr, i32 } [ %i.z, %.body ], [ %i.af, %.body.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeEECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #49
          to label %.body20.thread87 unwind label %bb.ap
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit(i64 noundef range(i64 1, 17) %0, i64 noundef range(i64 1, 249) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53
  %i.a = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %0) #53 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !60

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef %0, i64 noundef %1) #54
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, i64 noundef range(i64 32, 49) %2) unnamed_addr #9 {
bb.a:
  %i.a = lshr i64 %2, 3                           ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15808)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15809)
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 1, !alias.scope !15808, !noalias !15809
  %.sroa.02.0.copyload.i.i = load i64, ptr %1, align 1, !alias.scope !15809, !noalias !15808
  store i64 %.sroa.02.0.copyload.i.i, ptr %0, align 1, !alias.scope !15808, !noalias !15809
  store i64 %.sroa.0.0.copyload.i.i, ptr %1, align 1, !alias.scope !15809, !noalias !15808
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15810)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15811)
end_hunk_0
