Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_expand-f280addaac0e5f6d.hir_expand.23a55d86e4a77d82-cgu.06?download=true
inline.NumInlined: 757
inline.NumDeleted: 381
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RNvNtNtCs33K2ylI4knu_10hir_expand7builtin8fn_macro12panic_expand:bb.a
  store ptr %i.ao, ptr %i.ap, align 8
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  store i8 0, ptr %.sroa.520.0..sroa_idx, align 4
  store i32 2, ptr %i.i, align 8
  invoke void @_RNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB5_17TopSubtreeBuilder4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.i)
          to label %.lr.ph.i.i84.preheader unwind label %.body.thread122

.lr.ph.i.i84.preheader:                           ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1143)
  call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1149
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.362.0..sroa_idx, i64 40, i1 false), !noalias !1154
  invoke void @_RNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB5_17TopSubtreeBuilder4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.a)
          to label %.noexc.i86 unwind label %bb.l, !noalias !1143

.noexc.i86:                                       ; preds = %.lr.ph.i.i84.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1149
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1149
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.aq, i64 40, i1 false), !noalias !1154
  invoke void @_RNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB5_17TopSubtreeBuilder4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.a)
          to label %.noexc.i86.1 unwind label %bb.l, !noalias !1143

.noexc.i86.1:                                     ; preds = %.noexc.i86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1149
  store i64 2, ptr %i.f, align 8, !alias.scope !1155, !noalias !1156
  invoke void @_RNvXs_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtCs4dcH4YgJDq_2tt4LeafEj2_NtB4_11PartialDrop12partial_dropCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %.sroa.362.0..sroa_idx, i64 noundef 2, i64 noundef 2)
          to label %_RINvXs3_NtNtCshzWfHUSfYae_4core5array4iterINtB6_8IntoIterNtCs4dcH4YgJDq_2tt4LeafKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvB1l_8for_each4callBT_NCINvMsc_NtBV_7storageNtB2H_17TopSubtreeBuilder6extendABT_B1h_E0E0ECs33K2ylI4knu_10hir_expand.exit97 unwind label %.body.thread122

bb.l:                                             ; preds = %.noexc.i86, %.lr.ph.i.i84.preheader
  %.lcssa = phi i64 [ 1, %.lr.ph.i.i84.preheader ], [ 2, %.noexc.i86 ] ; 2 uses
  %i.ar = landingpad { ptr, i32 }
          cleanup
  store i64 %.lcssa, ptr %i.f, align 8, !alias.scope !1155, !noalias !1156
  invoke void @_RNvXs_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtCs4dcH4YgJDq_2tt4LeafEj2_NtB4_11PartialDrop12partial_dropCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %.sroa.362.0..sroa_idx, i64 noundef %.lcssa, i64 noundef 2)
          to label %.body.thread unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvXs3_NtNtCshzWfHUSfYae_4core5array4iterINtB6_8IntoIterNtCs4dcH4YgJDq_2tt4LeafKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvB1l_8for_each4callBT_NCINvMsc_NtBV_7storageNtB2H_17TopSubtreeBuilder6extendABT_B1h_E0E0ECs33K2ylI4knu_10hir_expand.exit97: ; preds = %.noexc.i86.1
  invoke void @_RNvXsf_NtNtCs33K2ylI4knu_10hir_expand7builtin5quoteNtNtCs39E2wp1vf7X_6intern6symbol6SymbolNtB5_11ToTokenTree9to_tokens(ptr noundef nonnull %i.w, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.k)
          to label %bb.n unwind label %.body.thread122

bb.n:                                             ; preds = %_RINvXs3_NtNtCshzWfHUSfYae_4core5array4iterINtB6_8IntoIterNtCs4dcH4YgJDq_2tt4LeafKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvB1l_8for_each4callBT_NCINvMsc_NtBV_7storageNtB2H_17TopSubtreeBuilder6extendABT_B1h_E0E0ECs33K2ylI4knu_10hir_expand.exit97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.423.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %i.d, i64 20, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 33, ptr %i.at, align 4
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  store i8 0, ptr %.sroa.524.0..sroa_idx, align 4
  store i32 1, ptr %i.h, align 8
  invoke void @_RNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB5_17TopSubtreeBuilder4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.h)
          to label %bb.o unwind label %.body.thread122

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke void @_RNvXNtNtCs33K2ylI4knu_10hir_expand7builtin5quoteNtB2_13WithDelimiterNtB2_11ToTokenTree9to_tokens(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %i.m, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(20) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.k)
          to label %bb.p unwind label %.body.thread122

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.g, ptr noundef nonnull align 8 dereferenceable(168) %i.k, i64 168, i1 false)
  call void @_RNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB5_17TopSubtreeBuilder22build_skip_top_subtree(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.au, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  ret void

.body.thread:                                     ; preds = %bb.l, %bb.i, %.body.thread122
  %eh.lpad-body120 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread122 ], [ %i.al, %bb.i ], [ %i.ar, %bb.l ] ; 2 uses
  %.sroa.027.2.lpad-body119 = phi i1 [ %.sroa.027.2.ph, %.body.thread122 ], [ true, %bb.i ], [ true, %bb.l ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt7storage17TopSubtreeBuilderECs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef align 8 dereferenceable(168) %i.k) #30
          to label %bb.e unwind label %bb.q

bb.q:                                             ; preds = %bb.s, %bb.r, %.body.thread
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.r:                                             ; preds = %.thread110, %bb.e
  %.pn115 = phi { ptr, i32 } [ %i.x, %.thread110 ], [ %eh.lpad-body120, %bb.e ] ; 2 uses
  %.sroa.028.1114 = phi i1 [ true, %.thread110 ], [ false, %bb.e ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #30
          to label %bb.b unwind label %bb.q

.thread126:                                       ; preds = %bb.e, %bb.s, %bb.b
  %.pn.pn106 = phi { ptr, i32 } [ %.pn.pn107, %bb.s ], [ %.pn115, %bb.b ], [ %eh.lpad-body120, %bb.e ]
  resume { ptr, i32 } %.pn.pn106

bb.s:                                             ; preds = %.thread, %bb.b
  %.pn.pn107 = phi { ptr, i32 } [ %i.o, %.thread ], [ %.pn115, %bb.b ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECs33K2ylI4knu_10hir_expand(ptr nonnull @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols12dollar_crate10SYMBOL_STR) #30
          to label %.thread126 unwind label %bb.q
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCs33K2ylI4knu_10hir_expand7builtin8fn_macro12parse_string(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [20 x i8], align 4                ; 4 uses
  %i.f = alloca [20 x i8], align 4                ; 4 uses
  %i.g = alloca [20 x i8], align 4                ; 4 uses
  %i.h = alloca [20 x i8], align 4                ; 4 uses
  %i.i = alloca [40 x i8], align 8                ; 6 uses
  %i.j = alloca [20 x i8], align 4                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 10 uses
  %i.l = alloca [20 x i8], align 4                ; 4 uses
  %.sroa.6.i = alloca [20 x i8], align 8          ; 8 uses
  %.sroa.4.i = alloca [60 x i8], align 4          ; 6 uses
  %i.m = alloca [184 x i8], align 8               ; 13 uses
  %.sroa.613.i = alloca [20 x i8], align 8        ; 7 uses
  %.sroa.9 = alloca [20 x i8], align 8            ; 7 uses
  %i.n = alloca [88 x i8], align 8                ; 32 uses
  %i.o = alloca [40 x i8], align 8                ; 4 uses
  %i.p = alloca [88 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  call void @_RNvMsb_NtCs4dcH4YgJDq_2tt7storageNtB5_10TopSubtree11top_subtree(ptr noalias nofree noundef nonnull sret([48 x i8]) align 4 captures(address) dereferenceable(48) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RNvMsb_NtCs4dcH4YgJDq_2tt7storageNtB5_10TopSubtree4iter(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr noundef nonnull align 8 dereferenceable(40) %i.o, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.n, ptr noundef nonnull align 8 dereferenceable(88) %i.p, i64 88, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1157)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  %i.r = load i64, ptr %i.n, align 8, !range !323, !alias.scope !1157, !noalias !1160, !noundef !13
  %.not110.not.i = icmp eq i64 %i.r, -1
  br i1 %.not110.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 84
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %.sroa.535.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 36
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx20.i = getelementptr inbounds nuw i8, ptr %i.n, i64 28 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs33K2ylI4knu_10hir_expand.exit.i, %.lr.ph.i
  %i.w = load i8, ptr %i.s, align 4, !range !418, !alias.scope !1157, !noalias !1160, !noundef !13
  %.off.i = add nsw i8 %i.w, -1
  %switch.i = icmp ult i8 %.off.i, 2
  br i1 %switch.i, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.613.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1162
  invoke void @_RNvYQNtNtCs4dcH4YgJDq_2tt4iter6TtIterNtCscFGNKo4Sl5v_9itertools9Itertools11exactly_oneCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.n)
          to label %bb.d unwind label %.loopexit.i, !noalias !1160

.body.i:                                          ; preds = %bb.al, %.body72.i, %bb.n, %.lr.ph.split.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i, %bb.f, %.loopexit.split-lp.i, %.loopexit.i
  %.pn44.i = phi { ptr, i32 } [ %i.am, %bb.n ], [ %.pn.i, %.body72.i ], [ %i.da, %bb.al ], [ %i.ac, %bb.f ], [ %i.ae, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ae, %.lr.ph.split.i.i.i.i.i.i.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %.sroa.031.1.i = phi i1 [ true, %bb.n ], [ false, %.body72.i ], [ false, %bb.al ], [ true, %bb.f ], [ true, %.lr.ph.i.i.i.i.i.i.i ], [ true, %.lr.ph.split.i.i.i.i.i.i.i ], [ true, %.loopexit.i ], [ %.not105.i, %.loopexit.split-lp.i ]
  %.sroa.029.1.i = phi i1 [ true, %bb.n ], [ true, %.body72.i ], [ true, %bb.al ], [ true, %bb.f ], [ true, %.lr.ph.i.i.i.i.i.i.i ], [ true, %.lr.ph.split.i.i.i.i.i.i.i ], [ true, %.loopexit.i ], [ %.sroa.029.2.ph.i, %.loopexit.split-lp.i ]
  %i.x = load i64, ptr %i.n, align 8, !range !323, !alias.scope !1157, !noalias !1160, !noundef !13
  %i.y = icmp eq i64 %i.x, -1
  %or.cond7.i = and i1 %.sroa.029.1.i, %i.y
  br i1 %or.cond7.i, label %bb.at, label %bb.as

.loopexit.i:                                      ; preds = %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %.noexc81.i, %bb.ao, %bb.an, %.noexc77.i, %bb.ai, %bb.ah, %bb.r, %bb.p, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueANtNtCs4dcH4YgJDq_2tt4iter9TtElementj2_ECs33K2ylI4knu_10hir_expand.exit.sink.split.i.i.i.i.i
  %.not105.i = phi i1 [ false, %bb.an ], [ false, %bb.ai ], [ false, %bb.ah ], [ false, %bb.ao ], [ true, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueANtNtCs4dcH4YgJDq_2tt4iter9TtElementj2_ECs33K2ylI4knu_10hir_expand.exit.sink.split.i.i.i.i.i ], [ false, %.noexc81.i ], [ false, %.noexc77.i ], [ false, %bb.r ], [ true, %bb.p ]
  %.sroa.029.2.ph.i = phi i1 [ true, %bb.an ], [ true, %bb.ai ], [ true, %bb.ah ], [ true, %bb.ao ], [ true, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueANtNtCs4dcH4YgJDq_2tt4iter9TtElementj2_ECs33K2ylI4knu_10hir_expand.exit.sink.split.i.i.i.i.i ], [ true, %.noexc81.i ], [ true, %.noexc77.i ], [ false, %bb.r ], [ true, %bb.p ]
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.d:                                             ; preds = %bb.c
  %i.z = load i64, ptr %i.m, align 8, !range !1163, !noalias !1162, !noundef !13 ; 2 uses
  %.not40.i = icmp eq i64 %i.z, 3
  br i1 %.not40.i, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 44
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %.sroa.44.0.copyload = load i64, ptr %i.t, align 8, !noalias !1162 ; 2 uses
  %.sroa.44.sroa.0.0.extract.trunc = trunc i64 %.sroa.44.0.copyload to i32
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.434.0..sroa_idx.i, align 8, !noalias !1162 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !1162
  %.sroa.96.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  %.sroa.96.0.copyload = load i64, ptr %.sroa.96.0..sroa_idx, align 8, !noalias !1162 ; 2 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %.sroa.11.0.copyload = load i32, ptr %.sroa.11.0..sroa_idx, align 8, !noalias !1162 ; 2 uses
  %.sroa.138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  %.sroa.138.0.copyload = load i64, ptr %.sroa.138.0..sroa_idx, align 8, !noalias !1162 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1162
  invoke void @_RNvMCsdovh4xi6v3I_4spanNtB2_4Span5cover(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(none) dereferenceable(20) %i.g, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %i.aa, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %i.ab)
          to label %bb.g unwind label %bb.f, !noalias !1164

bb.f:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCscFGNKo4Sl5v_9itertools15exactly_one_err15ExactlyOneErrorQNtNtCs4dcH4YgJDq_2tt4iter6TtIterEECs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(184) %i.m) #30
          to label %.body.i unwind label %bb.k, !noalias !1160

bb.g:                                             ; preds = %bb.e
  switch i64 %i.z, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs33K2ylI4knu_10hir_expand.exit.i.i.i.i.i.i.i [
    i64 -3, label %_RNCNCNvNtNtCs33K2ylI4knu_10hir_expand7builtin8fn_macro12parse_string00B9_.exit.i
    i64 -2, label %bb.j
    i64 -1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECs33K2ylI4knu_10hir_expand(i32 %.sroa.44.sroa.0.0.extract.trunc, ptr %.sroa.6.0.copyload)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs33K2ylI4knu_10hir_expand.exit.i.i.i.i.i.i.i unwind label %.lr.ph.i.i.i.i.i.i.i, !noalias !1167

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs33K2ylI4knu_10hir_expand.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.h
  %i.ad = icmp eq i64 %.sroa.96.0.copyload, -1
  br i1 %i.ad, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueANtNtCs4dcH4YgJDq_2tt4iter9TtElementj2_ECs33K2ylI4knu_10hir_expand.exit.sink.split.i.i.i.i.i, label %_RNCNCNvNtNtCs33K2ylI4knu_10hir_expand7builtin8fn_macro12parse_string00B9_.exit.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = icmp eq i64 %.sroa.96.0.copyload, -1
  br i1 %i.af, label %.lr.ph.split.i.i.i.i.i.i.i, label %.body.i

.lr.ph.split.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i
  %2 = inttoptr i64 %.sroa.138.0.copyload to ptr
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECs33K2ylI4knu_10hir_expand(i32 %.sroa.11.0.copyload, ptr %2)
          to label %.body.i unwind label %bb.i, !noalias !1167

bb.i:                                             ; preds = %.lr.ph.split.i.i.i.i.i.i.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27, !noalias !1167
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.ah = icmp eq i64 %.sroa.44.0.copyload, -1
  %i.ai = ptrtoint ptr %.sroa.6.0.copyload to i64
  %.sroa.6.0.extract.trunc = trunc i64 %i.ai to i32
  br i1 %i.ah, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueANtNtCs4dcH4YgJDq_2tt4iter9TtElementj2_ECs33K2ylI4knu_10hir_expand.exit.sink.split.i.i.i.i.i, label %_RNCNCNvNtNtCs33K2ylI4knu_10hir_expand7builtin8fn_macro12parse_string00B9_.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueANtNtCs4dcH4YgJDq_2tt4iter9TtElementj2_ECs33K2ylI4knu_10hir_expand.exit.sink.split.i.i.i.i.i: ; preds = %bb.j, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs33K2ylI4knu_10hir_expand.exit.i.i.i.i.i.i.i
  %.sink2.i.i.i.i.sroa.phi.i.sroa.speculated = phi i32 [ %.sroa.11.0.copyload, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs33K2ylI4knu_10hir_expand.exit.i.i.i.i.i.i.i ], [ %.sroa.6.0.extract.trunc, %bb.j ]
  %.sink1.i.i.i.i.sroa.phi.i.sroa.speculated.in = phi i64 [ %.sroa.138.0.copyload, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs33K2ylI4knu_10hir_expand.exit.i.i.i.i.i.i.i ], [ %.sroa.8.0.copyload, %bb.j ]
  %.sink1.i.i.i.i.sroa.phi.i.sroa.speculated = inttoptr i64 %.sink1.i.i.i.i.sroa.phi.i.sroa.speculated.in to ptr
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECs33K2ylI4knu_10hir_expand(i32 %.sink2.i.i.i.i.sroa.phi.i.sroa.speculated, ptr %.sink1.i.i.i.i.sroa.phi.i.sroa.speculated)
          to label %_RNCNCNvNtNtCs33K2ylI4knu_10hir_expand7builtin8fn_macro12parse_string00B9_.exit.i unwind label %.loopexit.split-lp.i, !noalias !1160

bb.k:                                             ; preds = %bb.f
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27, !noalias !1181
  unreachable

bb.l:                                             ; preds = %bb.d
  %.sroa.033.0.copyload.i = load i64, ptr %i.t, align 8, !noalias !1162 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.613.i, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.434.0..sroa_idx.i, i64 20, i1 false), !noalias !1162
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.4.i, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.535.0..sroa_idx.i, i64 60, i1 false), !noalias !1162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1162
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.613.i, i64 20, i1 false), !noalias !1162
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.613.i)
  %i.ak = load i64, ptr %i.n, align 8, !range !323, !alias.scope !1182, !noalias !1160, !noundef !13
  %i.al = icmp eq i64 %i.ak, -1
  br i1 %i.al, label %bb.m, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs33K2ylI4knu_10hir_expand.exit.i

bb.m:                                             ; preds = %bb.l
  %.val.i.i = load i32, ptr %i.u, align 8, !range !107, !alias.scope !1182, !noalias !1160, !noundef !13
  %.val1.i.i = load ptr, ptr %i.v, align 8, !alias.scope !1182, !noalias !1160
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECs33K2ylI4knu_10hir_expand(i32 %.val.i.i, ptr %.val1.i.i)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs33K2ylI4knu_10hir_expand.exit.i unwind label %bb.n, !noalias !1160

bb.n:                                             ; preds = %bb.m
  %i.am = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.033.0.copyload.i, ptr %i.n, align 8, !alias.scope !1157, !noalias !1160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.u, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.6.i, i64 20, i1 false), !noalias !1160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.4.0..sroa_idx20.i, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.4.i, i64 60, i1 false), !noalias !1160
  br label %.body.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs33K2ylI4knu_10hir_expand.exit.i: ; preds = %bb.m, %bb.l
  store i64 %.sroa.033.0.copyload.i, ptr %i.n, align 8, !alias.scope !1157, !noalias !1160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.u, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.6.i, i64 20, i1 false), !noalias !1160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.4.0..sroa_idx20.i, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.4.i, i64 60, i1 false), !noalias !1160
  %.not.not.i = icmp eq i64 %.sroa.033.0.copyload.i, -1
  br i1 %.not.not.i, label %._crit_edge.i, label %bb.b

_RNCNCNvNtNtCs33K2ylI4knu_10hir_expand7builtin8fn_macro12parse_string00B9_.exit.i: ; preds = %bb.g, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueANtNtCs4dcH4YgJDq_2tt4iter9TtElementj2_ECs33K2ylI4knu_10hir_expand.exit.sink.split.i.i.i.i.i, %bb.j, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs33K2ylI4knu_10hir_expand.exit.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.613.i, ptr noundef nonnull align 4 dereferenceable(20) %i.g, i64 20, i1 false), !noalias !1162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1162
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.613.i, i64 20, i1 false), !noalias !1162
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.613.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.6.i, i64 20, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1185)
  call void @llvm.experimental.noalias.scope.decl(metadata !1188)
  %i.an = load i64, ptr %i.n, align 8, !range !323, !alias.scope !1191, !noalias !1160, !noundef !13
  %i.ao = icmp eq i64 %i.an, -1
  br i1 %i.ao, label %bb.o, label %_RNCNvNtNtCs33K2ylI4knu_10hir_expand7builtin8fn_macro12parse_string0B7_.exit.thread

bb.o:                                             ; preds = %_RNCNCNvNtNtCs33K2ylI4knu_10hir_expand7builtin8fn_macro12parse_string00B9_.exit.i
  %.val.i.i.i = load i32, ptr %i.u, align 8, !range !107, !alias.scope !1191, !noalias !1160, !noundef !13
  %.val1.i.i.i = load ptr, ptr %i.v, align 8, !alias.scope !1191, !noalias !1160
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECs33K2ylI4knu_10hir_expand(i32 %.val.i.i.i, ptr %.val1.i.i.i), !noalias !1192
  br label %_RNCNvNtNtCs33K2ylI4knu_10hir_expand7builtin8fn_macro12parse_string0B7_.exit.thread

bb.p:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1162
  %i.ap = getelementptr inbounds nuw i8, ptr %i.n, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.f, ptr noundef nonnull align 4 dereferenceable(20) %i.ap, i64 20, i1 false), !noalias !1160
  %i.aq = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.e, ptr noundef nonnull align 8 dereferenceable(20) %i.aq, i64 20, i1 false), !noalias !1160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1162
  invoke void @_RNvMCsdovh4xi6v3I_4spanNtB2_4Span5cover(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(none) dereferenceable(20) %i.h, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %i.f, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %i.e)
          to label %bb.aq unwind label %.loopexit.split-lp.i, !noalias !1160

._crit_edge.i:                                    ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs33K2ylI4knu_10hir_expand.exit.i, %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !range !107, !alias.scope !1157, !noalias !1160, !noundef !13
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.n, i64 45
  %i.aw = load i8, ptr %i.av, align 1, !range !716, !alias.scope !1157, !noalias !1160, !noundef !13
  switch i8 %i.aw, label %bb.r [
    i8 4, label %bb.s
    i8 5, label %bb.w
  ]

bb.r:                                             ; preds = %bb.q, %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1162
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.ar, i64 40, i1 false), !noalias !1160
  %i.ax = load i32, ptr %i.i, align 8, !range !107, !noalias !1162, !noundef !13 ; 2 uses
  %i.ay = icmp eq i32 %i.ax, 1
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %.sroa.gep2 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %..i.sroa.sel = select i1 %i.ay, ptr %.sroa.gep, ptr %.sroa.gep2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(20) %..i.sroa.sel, i64 20, i1 false)
  %.val55.i = load ptr, ptr %.sroa.gep, align 8, !noalias !1162
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECs33K2ylI4knu_10hir_expand(i32 %i.ax, ptr %.val55.i)
          to label %bb.ap unwind label %.loopexit.split-lp.i, !noalias !1160

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.az = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.l, ptr noundef nonnull align 8 dereferenceable(20) %i.az, i64 20, i1 false), !noalias !1160
  %.sroa.0.0.copyload.i = load ptr, ptr %i.au, align 8, !alias.scope !1157, !noalias !1160, !nonnull !13, !noundef !13 ; 4 uses
  %.sroa.685.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 44
  %.sroa.685.0.copyload.i = load i8, ptr %.sroa.685.0..sroa_idx.i, align 4, !alias.scope !1157, !noalias !1160 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1162
  %i.ba = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %i.bb = and i64 %i.ba, 1                        ; 2 uses
  %i.bc = sub nsw i64 0, %i.bb
  %i.bd = getelementptr i8, ptr %.sroa.0.0.copyload.i, i64 %i.bc ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bd) ]
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !1193, !nonnull !13, !noundef !13 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !noalias !1193, !noundef !13 ; 4 uses
  %i.bh = zext i8 %.sroa.685.0.copyload.i to i64  ; 2 uses
  %i.bi = sub i64 %i.bg, %i.bh                    ; 4 uses
  %i.bj = icmp eq i64 %i.bg, %i.bh
  br i1 %i.bj, label %_RNvMsb_Cs4dcH4YgJDq_2ttNtB5_7Literal15text_and_suffix.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not.i.i.i = icmp ult i64 %i.bi, %i.bg
  br i1 %.not.i.i.i, label %bb.u, label %.split3.i.i.i

.split3.i.i.i:                                    ; preds = %bb.t
  %i.bk = icmp eq i8 %.sroa.685.0.copyload.i, 0
  br i1 %i.bk, label %_RNvMsb_Cs4dcH4YgJDq_2ttNtB5_7Literal15text_and_suffix.exit.i, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bi
  %i.bm = load i8, ptr %i.bl, align 1, !alias.scope !1196, !noalias !1199, !noundef !13
  %i.bn = icmp sgt i8 %i.bm, -65
  br i1 %i.bn, label %_RNvMsb_Cs4dcH4YgJDq_2ttNtB5_7Literal15text_and_suffix.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u, %.split3.i.i.i
  invoke void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.be, i64 noundef %i.bg, i64 noundef 0, i64 noundef %i.bi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #32
          to label %.noexc61.i unwind label %bb.aa, !noalias !1160

.noexc61.i:                                       ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.j, ptr noundef nonnull align 8 dereferenceable(20) %i.bo, i64 20, i1 false), !noalias !1160
  %.sroa.086.0.copyload.i = load ptr, ptr %i.au, align 8, !alias.scope !1157, !noalias !1160, !nonnull !13, !noundef !13 ; 4 uses
  %.sroa.688.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 44
  %.sroa.688.0.copyload.i = load i8, ptr %.sroa.688.0..sroa_idx.i, align 4, !alias.scope !1157, !noalias !1160 ; 2 uses
  %i.bp = ptrtoint ptr %.sroa.086.0.copyload.i to i64
  %i.bq = and i64 %i.bp, 1                        ; 2 uses
  %i.br = sub nsw i64 0, %i.bq
  %i.bs = getelementptr i8, ptr %.sroa.086.0.copyload.i, i64 %i.br ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bs) ]
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !1201, !nonnull !13, !noundef !13 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !noalias !1201, !noundef !13 ; 4 uses
  %i.bw = zext i8 %.sroa.688.0.copyload.i to i64  ; 2 uses
  %i.bx = sub i64 %i.bv, %i.bw                    ; 4 uses
  %i.by = icmp eq i64 %i.bv, %i.bw
  br i1 %i.by, label %_RNvMsb_Cs4dcH4YgJDq_2ttNtB5_7Literal15text_and_suffix.exit71.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.not.i.i62.i = icmp ult i64 %i.bx, %i.bv
  br i1 %.not.i.i62.i, label %bb.y, label %.split3.i.i63.i

.split3.i.i63.i:                                  ; preds = %bb.x
  %i.bz = icmp eq i8 %.sroa.688.0.copyload.i, 0
  br i1 %i.bz, label %_RNvMsb_Cs4dcH4YgJDq_2ttNtB5_7Literal15text_and_suffix.exit71.i, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bx
  %i.cb = load i8, ptr %i.ca, align 1, !alias.scope !1204, !noalias !1207, !noundef !13
  %i.cc = icmp sgt i8 %i.cb, -65
  br i1 %i.cc, label %_RNvMsb_Cs4dcH4YgJDq_2ttNtB5_7Literal15text_and_suffix.exit71.i, label %bb.z

bb.z:                                             ; preds = %bb.y, %.split3.i.i63.i
  invoke void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bt, i64 noundef %i.bv, i64 noundef 0, i64 noundef %i.bx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #32
          to label %.noexc70.i unwind label %bb.al, !noalias !1160

.noexc70.i:                                       ; preds = %bb.z
  unreachable

.body72.i:                                        ; preds = %bb.af, %bb.ac, %bb.aa
  %.pn.i = phi { ptr, i32 } [ %i.cj, %bb.ac ], [ %i.cd, %bb.aa ], [ %i.cm, %bb.af ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt7LiteralECs33K2ylI4knu_10hir_expand(ptr nonnull %.sroa.0.0.copyload.i) #30
          to label %.body.i unwind label %bb.ak, !noalias !1160

bb.aa:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs33K2ylI4knu_10hir_expand.exit.i.i, %_RNvMsb_Cs4dcH4YgJDq_2ttNtB5_7Literal15text_and_suffix.exit.i, %bb.v
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %.body72.i

_RNvMsb_Cs4dcH4YgJDq_2ttNtB5_7Literal15text_and_suffix.exit.i: ; preds = %bb.u, %.split3.i.i.i, %bb.s
  invoke fastcc void @_RNvNtNtCs33K2ylI4knu_10hir_expand7builtin8fn_macro12unescape_str(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.be, i64 noundef %i.bi)
          to label %bb.ab unwind label %bb.aa, !noalias !1160

bb.ab:                                            ; preds = %_RNvMsb_Cs4dcH4YgJDq_2ttNtB5_7Literal15text_and_suffix.exit.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !1162, !nonnull !13
  %i.cg = getelementptr inbounds nuw i8, ptr %i.k, i64 16
end_hunk_0
