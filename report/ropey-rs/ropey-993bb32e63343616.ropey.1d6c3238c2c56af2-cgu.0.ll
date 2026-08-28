Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ropey-rs/original/ropey-993bb32e63343616.ropey.1d6c3238c2c56af2-cgu.0?download=true
inline.NumInlined: 438
inline.NumDeleted: 74
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB3_4Node18edit_chunk_at_charNCNvMNtB7_4ropeNtB1a_4Rope15insert_internals_0EB7_:bb.a
  %i.cs = load i64, ptr %i.cr, align 8, !noundef !5
  %i.ct = sub i64 %.sroa.013.0.copyload, %.sroa.0.0.copyload
  %i.cu = add i64 %i.ct, %.sroa.028.0.copyload
  %i.cv = add i64 %i.cu, %i.cm
  %i.cw = sub i64 %.sroa.616.0.copyload, %.sroa.6.0.copyload
  %i.cx = add i64 %i.cw, %.sroa.631.0.copyload
  %i.cy = add i64 %i.cx, %i.co
  %i.cz = sub i64 %.sroa.820.0.copyload, %.sroa.8.0.copyload
  %i.da = add i64 %i.cz, %.sroa.7.0.copyload
  %i.db = add i64 %i.da, %i.cq
  %i.dc = sub i64 %.sroa.1024.0.copyload, %.sroa.10.0.copyload
  %i.dd = add i64 %i.dc, %.sroa.840.0.copyload
  %i.de = add i64 %i.dd, %i.cs
  store i64 %i.cv, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cy, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.db, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.646.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.de, ptr %.sroa.646.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %.sroa.3.0..sroa_idx, align 8
  br label %bb.ai

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren13combined_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.n)
          to label %bb.ab unwind label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.453)
  %.sroa.453.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.453, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(968) %.sroa.453.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(968) %i.f, i64 968, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.df, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i8 1, ptr %i.dg, align 8
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(975) %.sroa.453.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(975) %.sroa.453, i64 975, i1 false)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !22
  %i.dh = call noundef align 8 dereferenceable_or_null(1024) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 1024, i64 noundef 8) #18, !noalias !22 ; 3 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %bb.ac, label %bb.af, !prof !13

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1024) #17
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.ac
  %i.dj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1024) %i.b) #19
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.af:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.dh, ptr noundef nonnull align 8 dereferenceable(1024) %i.b, i64 1024, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.453)
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dl, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.dh, ptr %.sroa.451.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.ai

bb.ag:                                            ; preds = %bb.y, %bb.aa
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs_NtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB4_20NodeChildrenInternalNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ak, %bb.ag
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.ai:                                            ; preds = %bb.af, %bb.z, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.d

bb.aj:                                            ; preds = %bb.r
  %i.do = atomicrmw sub ptr %i.bk, i64 1 release, align 8, !noalias !25
  %i.dp = icmp eq i64 %i.do, 1
  br i1 %i.dp, label %bb.ak, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit

bb.ak:                                            ; preds = %bb.aj
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bj) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit unwind label %bb.ah

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit: ; preds = %bb.ag, %bb.ad, %bb.aj, %bb.ak, %bb.r
  %.pn7582 = phi { ptr, i32 } [ %i.bi, %bb.aj ], [ %i.bi, %bb.r ], [ %i.bi, %bb.ak ], [ %i.dm, %bb.ag ], [ %i.dj, %bb.ad ]
  resume { ptr, i32 } %.pn7582
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1024) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !4, !alias.scope !30, !noundef !5
  %i.c = icmp eq i8 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvXsv_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1000) %i.d)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEBH_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs_NtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB4_20NodeChildrenInternalNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.d)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEBH_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEBH_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1008) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !4, !noundef !5
  %i.b = icmp eq i8 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvXsv_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1000) %i.c)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs_NtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB4_20NodeChildrenInternalNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.c)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMNtCs2wCc12Mnjqg_5ropey4ropeNtB4_4Rope15insert_internal0B6_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(1000) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [1024 x i8], align 8              ; 8 uses
  %.sroa.413 = alloca [1007 x i8], align 1        ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [1000 x i8], align 8              ; 8 uses
  %i.f = alloca [32 x i8], align 16               ; 6 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8, !nonnull !5, !align !33, !noundef !5
  %i.i = load i64, ptr %i.h, align 8, !noundef !5
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.s, %bb.o, %bb.b, %bb.a
  %i.j = tail call { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %4) ; 2 uses
  %i.k = extractvalue { ptr, i64 } %i.j, 0        ; 6 uses
  %i.l = extractvalue { ptr, i64 } %i.j, 1        ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  %i.m = icmp samesign ult i64 %i.l, 17
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !34
  call void @_RINvMNtCskKLDkoKarTP_4core5sliceSh8align_toNtNtNtB5_9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef range(i64 0, -9223372036854775808) %i.l)
  %i.n = load ptr, ptr %i.a, align 8, !noalias !34, !nonnull !5, !noundef !5 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !34, !noundef !5 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !noalias !34, !nonnull !5, !align !37, !noundef !5 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.t = load i64, ptr %i.s, align 8, !noalias !34, !noundef !5 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !34
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p
  %i.v = icmp samesign eq i64 %i.p, 0
  br i1 %i.v, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.x = icmp samesign eq i64 %i.l, 0
  br i1 %i.x, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %.lr.ph299

.lr.ph:                                           ; preds = %bb.d, %bb.f
  %.sroa.013.0.i220 = phi i64 [ %i.ae, %bb.f ], [ 0, %bb.d ] ; 2 uses
  %.sroa.013.0.i219 = phi i64 [ %i.ab, %bb.f ], [ 0, %bb.d ]
  %.sroa.027.0.i218 = phi ptr [ %i.ad, %bb.f ], [ %i.n, %bb.d ] ; 2 uses
  %i.y = load i8, ptr %.sroa.027.0.i218, align 1, !noundef !5
  %i.z = icmp sgt i8 %i.y, -65
  %i.aa = zext i1 %i.z to i64
  %i.ab = add i64 %.sroa.013.0.i219, %i.aa        ; 3 uses
  %i.ac = icmp ugt i64 %i.ab, %2
  br i1 %i.ac, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.027.0.i218, i64 1 ; 2 uses
  %i.ae = add nuw i64 %.sroa.013.0.i220, 1
  %i.af = icmp eq ptr %i.ad, %i.u
  br i1 %i.af, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.f, %bb.d
  %.sroa.020.0.i.lcssa = phi i64 [ 0, %bb.d ], [ %i.ab, %bb.f ] ; 3 uses
  %i.ag = sub i64 %2, %.sroa.020.0.i.lcssa
  %i.ah = lshr i64 %i.ag, 4
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.ah, i64 %i.t) ; 2 uses
  %i.ai = and i64 %..i, 576460752303423484        ; 2 uses
  %.not51.i222 = icmp eq i64 %i.ai, 0
  br i1 %.not51.i222, label %._crit_edge229, label %.lr.ph228

._crit_edge229:                                   ; preds = %.lr.ph228, %._crit_edge
  %.sroa.020.1.i.lcssa = phi i64 [ %.sroa.020.0.i.lcssa, %._crit_edge ], [ %i.cf, %.lr.ph228 ] ; 2 uses
  %.sroa.013.1.i.lcssa = phi i64 [ %i.p, %._crit_edge ], [ %i.cg, %.lr.ph228 ] ; 2 uses
  %i.aj = and i64 %..i, 1152921504606846972       ; 4 uses
  %i.ak = icmp ugt i64 %i.aj, %i.t
  br i1 %i.ak, label %bb.h, label %bb.g, !prof !13

bb.g:                                             ; preds = %._crit_edge229
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.t
  %i.am = icmp samesign eq i64 %i.aj, %i.t
  br i1 %i.am, label %._crit_edge237, label %.lr.ph236.preheader

.lr.ph236.preheader:                              ; preds = %bb.g
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.aj
  br label %.lr.ph236

bb.h:                                             ; preds = %._crit_edge229
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.aj, i64 noundef %i.t, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #16
  unreachable

.lr.ph236:                                        ; preds = %.lr.ph236.preheader, %bb.i
  %.sroa.040.0.i234 = phi ptr [ %i.au, %bb.i ], [ %i.an, %.lr.ph236.preheader ] ; 2 uses
  %.sroa.013.2.i233 = phi i64 [ %i.av, %bb.i ], [ %.sroa.013.1.i.lcssa, %.lr.ph236.preheader ] ; 2 uses
  %.sroa.020.2.i232 = phi i64 [ %i.at, %bb.i ], [ %.sroa.020.1.i.lcssa, %.lr.ph236.preheader ] ; 2 uses
  %i.ao = load <16 x i8>, ptr %.sroa.040.0.i234, align 16
  %i.ap = icmp slt <16 x i8> %i.ao, splat (i8 -64)
  %i.aq = zext <16 x i1> %i.ap to <16 x i8>
  %i.ar = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.aq, <16 x i8> zeroinitializer)
  %.neg213 = add i64 %.sroa.020.2.i232, 16
  %i.as = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.ar)
  %i.at = sub i64 %.neg213, %i.as                 ; 3 uses
  %.not52.i = icmp ult i64 %i.at, %2
  br i1 %.not52.i, label %bb.i, label %._crit_edge237

bb.i:                                             ; preds = %.lr.ph236
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.040.0.i234, i64 16 ; 2 uses
  %i.av = add i64 %.sroa.013.2.i233, 16           ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.al
  br i1 %i.aw, label %._crit_edge237, label %.lr.ph236

._crit_edge237:                                   ; preds = %bb.i, %.lr.ph236, %bb.g
  %.sroa.020.2.i.lcssa = phi i64 [ %.sroa.020.1.i.lcssa, %bb.g ], [ %.sroa.020.2.i232, %.lr.ph236 ], [ %i.at, %bb.i ]
  %.sroa.013.2.i.lcssa = phi i64 [ %.sroa.013.1.i.lcssa, %bb.g ], [ %.sroa.013.2.i233, %.lr.ph236 ], [ %i.av, %bb.i ] ; 5 uses
  %i.ax = icmp ugt i64 %.sroa.013.2.i.lcssa, %i.l
  br i1 %i.ax, label %bb.k, label %bb.j, !prof !13

bb.j:                                             ; preds = %._crit_edge237
  %i.ay = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.az = icmp samesign eq i64 %.sroa.013.2.i.lcssa, %i.l
  br i1 %i.az, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %.lr.ph247.preheader

.lr.ph247.preheader:                              ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.013.2.i.lcssa
  br label %.lr.ph247

bb.k:                                             ; preds = %._crit_edge237
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.013.2.i.lcssa, i64 noundef range(i64 0, -9223372036854775808) %i.l, i64 noundef range(i64 0, -9223372036854775808) %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #16
  unreachable

.lr.ph247:                                        ; preds = %.lr.ph247.preheader, %bb.l
  %.sroa.036.0.i245 = phi ptr [ %i.bg, %bb.l ], [ %i.ba, %.lr.ph247.preheader ] ; 2 uses
  %.sroa.013.3.i244 = phi i64 [ %i.bh, %bb.l ], [ %.sroa.013.2.i.lcssa, %.lr.ph247.preheader ] ; 2 uses
  %.sroa.020.3.i243 = phi i64 [ %i.be, %bb.l ], [ %.sroa.020.2.i.lcssa, %.lr.ph247.preheader ]
  %i.bb = load i8, ptr %.sroa.036.0.i245, align 1, !alias.scope !34, !noundef !5
  %i.bc = icmp sgt i8 %i.bb, -65
  %i.bd = zext i1 %i.bc to i64
  %i.be = add i64 %.sroa.020.3.i243, %i.bd        ; 2 uses
  %i.bf = icmp ugt i64 %i.be, %2
  br i1 %i.bf, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph247
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.036.0.i245, i64 1 ; 2 uses
  %i.bh = add i64 %.sroa.013.3.i244, 1
  %i.bi = icmp eq ptr %i.bg, %i.ay
  br i1 %i.bi, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %.lr.ph247

.lr.ph228:                                        ; preds = %._crit_edge, %.lr.ph228
  %.sroa.5.0.i226 = phi i64 [ %i.cg, %.lr.ph228 ], [ %i.p, %._crit_edge ]
  %.sroa.020.1.i225 = phi i64 [ %i.cf, %.lr.ph228 ], [ %.sroa.020.0.i.lcssa, %._crit_edge ]
  %.sroa.030.0.i224 = phi ptr [ %i.bj, %.lr.ph228 ], [ %i.r, %._crit_edge ] ; 5 uses
  %.sroa.020.1.i223 = phi i64 [ %i.bk, %.lr.ph228 ], [ %i.ai, %._crit_edge ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i224, i64 64
  %i.bk = add i64 %.sroa.020.1.i223, -4           ; 2 uses
  %i.bl = load <16 x i8>, ptr %.sroa.030.0.i224, align 16
  %i.bm = icmp slt <16 x i8> %i.bl, splat (i8 -64)
  %i.bn = zext <16 x i1> %i.bm to <16 x i8>
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i224, i64 16
  %i.bp = load <16 x i8>, ptr %i.bo, align 16
  %i.bq = icmp slt <16 x i8> %i.bp, splat (i8 -64)
  %i.br = zext <16 x i1> %i.bq to <16 x i8>
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i224, i64 32
  %i.bt = load <16 x i8>, ptr %i.bs, align 16
  %i.bu = icmp slt <16 x i8> %i.bt, splat (i8 -64)
  %i.bv = zext <16 x i1> %i.bu to <16 x i8>
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i224, i64 48
  %i.bx = load <16 x i8>, ptr %i.bw, align 16
  %i.by = icmp slt <16 x i8> %i.bx, splat (i8 -64)
  %i.bz = zext <16 x i1> %i.by to <16 x i8>
  %i.ca = add nuw nsw <16 x i8> %i.br, %i.bn
  %i.cb = add nuw nsw <16 x i8> %i.ca, %i.bv
  %i.cc = add nuw nsw <16 x i8> %i.cb, %i.bz
  %i.cd = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.cc, <16 x i8> zeroinitializer)
  %.neg = add i64 %.sroa.020.1.i225, 64
  %i.ce = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.cd)
  %i.cf = sub i64 %.neg, %i.ce                    ; 2 uses
  %i.cg = add i64 %.sroa.5.0.i226, 64             ; 2 uses
  %.not51.i = icmp eq i64 %i.bk, 0
  br i1 %.not51.i, label %._crit_edge229, label %.lr.ph228

bb.m:                                             ; preds = %.lr.ph299
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.0296, i64 1 ; 2 uses
  %i.ci = add nuw nsw i64 %.sroa.8.0295, 1
  %i.cj = icmp eq ptr %i.ch, %i.w
  br i1 %i.cj, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %.lr.ph299

.lr.ph299:                                        ; preds = %bb.e, %bb.m
  %.sroa.07.0.i297 = phi i64 [ %i.cn, %bb.m ], [ 0, %bb.e ]
  %.sroa.0.0296 = phi ptr [ %i.ch, %bb.m ], [ %i.k, %bb.e ] ; 2 uses
  %.sroa.8.0295 = phi i64 [ %i.ci, %bb.m ], [ 0, %bb.e ] ; 2 uses
  %i.ck = load i8, ptr %.sroa.0.0296, align 1, !noundef !5
  %i.cl = icmp sgt i8 %i.ck, -65
  %i.cm = zext i1 %i.cl to i64
  %i.cn = add i64 %.sroa.07.0.i297, %i.cm         ; 2 uses
  %i.co = icmp ugt i64 %i.cn, %2
  br i1 %i.co, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %bb.m

_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit: ; preds = %.lr.ph, %.lr.ph247, %bb.l, %bb.m, %.lr.ph299, %bb.e, %bb.j
  %.sroa.0.0.i = phi i64 [ %i.l, %bb.j ], [ %i.l, %bb.e ], [ %i.l, %bb.l ], [ %.sroa.8.0295, %.lr.ph299 ], [ %i.l, %bb.m ], [ %.sroa.013.3.i244, %.lr.ph247 ], [ %.sroa.013.0.i220, %.lr.ph ] ; 12 uses
  %i.cp = tail call { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %4)
  %i.cq = extractvalue { ptr, i64 } %i.cp, 1
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !nonnull !5, !align !33, !noundef !5 ; 6 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 4 uses
  %i.cu = load i64, ptr %i.ct, align 8, !noundef !5 ; 3 uses
  %i.cv = add i64 %i.cu, %i.cq
  %i.cw = icmp ult i64 %i.cv, 985
  br i1 %i.cw, label %bb.w, label %bb.v

bb.n:                                             ; preds = %bb.b
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !nonnull !5, !align !33, !noundef !5 ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 4 uses
  %i.da = load i64, ptr %i.cz, align 8, !noundef !5
  %.not32 = icmp eq i64 %i.da, 0
  br i1 %.not32, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.db = load ptr, ptr %i.cy, align 8, !nonnull !5, !noundef !5
  %i.dc = load i8, ptr %i.db, align 1, !noundef !5
  %i.dd = icmp eq i8 %i.dc, 10
  br i1 %i.dd, label %bb.q, label %bb.c

bb.p:                                             ; preds = %bb.n
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #16
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !nonnull !5, !noundef !5
  store i8 1, ptr %i.df, align 1
  %i.dg = load ptr, ptr %i.cy, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.dh = load i64, ptr %i.cz, align 8, !noundef !5 ; 5 uses
  %.not.i82 = icmp ugt i64 %i.dh, 1
  br i1 %.not.i82, label %bb.r, label %.split.i

.split.i:                                         ; preds = %bb.q
  %i.di = icmp eq i64 %i.dh, 1
  br i1 %i.di, label %.thread, label %bb.t

.thread:                                          ; preds = %.split.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 1
  store ptr %i.dj, ptr %i.cy, align 8, !captures !38
  store i64 0, ptr %i.cz, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %.sroa.3.0..sroa_idx, align 8
  br label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 1 ; 2 uses
  %i.dl = load i8, ptr %i.dk, align 1, !alias.scope !39, !noundef !5
  %i.dm = icmp sgt i8 %i.dl, -65
  br i1 %i.dm, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dn = add i64 %i.dh, -1
  store ptr %i.dk, ptr %i.cy, align 8, !captures !38
  store i64 %i.dn, ptr %i.cz, align 8
  br label %bb.c

bb.t:                                             ; preds = %bb.r, %.split.i
  tail call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dg, i64 noundef %i.dh, i64 noundef 1, i64 noundef %i.dh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #16
  unreachable

bb.u:                                             ; preds = %bb.ac, %bb.ba, %.thread
  ret void

bb.v:                                             ; preds = %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.do = load ptr, ptr %i.cs, align 8, !nonnull !5, !noundef !5
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB2_8NodeText16insert_str_split(ptr noalias nofree noundef nonnull sret([1000 x i8]) align 8 captures(none) dereferenceable(1000) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(1000) %4, i64 noundef %.sroa.0.0.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.do, i64 noundef %i.cu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.dp = invoke { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %4)
          to label %bb.x unwind label %bb.aj      ; 2 uses

bb.w:                                             ; preds = %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dr = load i64, ptr %i.dq, align 8, !noundef !5
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.dt = load i64, ptr %i.ds, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.du = load ptr, ptr %i.cs, align 8, !nonnull !5, !noundef !5
  call fastcc void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9text_infoNtB2_8TextInfo8from_str(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.du, i64 noundef %i.cu) #15
  %i.dv = load <2 x i64>, ptr %3, align 8
  %i.dw = load <2 x i64>, ptr %i.f, align 16
  %i.dx = add <2 x i64> %i.dw, %i.dv
  %i.dy = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.dz = load i64, ptr %i.dy, align 16, !noundef !5
  %i.ea = add i64 %i.dz, %i.dr
  %i.eb = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ec = load i64, ptr %i.eb, align 8, !noundef !5
  %i.ed = add i64 %i.ec, %i.dt                    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.not35 = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %.not35, label %bb.al, label %bb.am

bb.x:                                             ; preds = %bb.v
  %i.ee = extractvalue { ptr, i64 } %i.dp, 0
  %i.ef = extractvalue { ptr, i64 } %i.dp, 1
  invoke fastcc void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9text_infoNtB2_8TextInfo8from_str(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ee, i64 noundef %i.ef)
          to label %bb.y unwind label %bb.aj

bb.y:                                             ; preds = %bb.x
  %i.eg = invoke { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %i.e)
          to label %bb.z unwind label %bb.aj

bb.z:                                             ; preds = %bb.y
  %i.eh = extractvalue { ptr, i64 } %i.eg, 1
  %.not34 = icmp eq i64 %i.eh, 0
  br i1 %.not34, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  %.sroa.315.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %.sroa.315.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_RNvXsv_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1000) %i.e)
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ei = invoke { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %i.e)
          to label %bb.ad unwind label %bb.aj     ; 2 uses

bb.ac:                                            ; preds = %bb.ai, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.u

bb.ad:                                            ; preds = %bb.ab
  %i.ej = extractvalue { ptr, i64 } %i.ei, 0
  %i.ek = extractvalue { ptr, i64 } %i.ei, 1
  invoke fastcc void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9text_infoNtB2_8TextInfo8from_str(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ej, i64 noundef %i.ek)
          to label %bb.ae unwind label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.413)
  %.sroa.413.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.413, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1000) %.sroa.413.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(1000) %i.e, i64 1000, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.el, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i8 0, ptr %i.em, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1007) %.sroa.413.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(1007) %.sroa.413, i64 1007, i1 false)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !42
  %i.en = call noundef align 8 dereferenceable_or_null(1024) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 1024, i64 noundef 8) #18, !noalias !42 ; 3 uses
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %bb.af, label %bb.ai, !prof !13

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1024) #17
          to label %.noexc unwind label %bb.ag

.noexc:                                           ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.ep = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1024) %i.b) #19
          to label %.body unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.eq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.ai:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.en, ptr noundef nonnull align 8 dereferenceable(1024) %i.b, i64 1024, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.413)
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.er, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.en, ptr %.sroa.411.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ac

.body:                                            ; preds = %bb.aj, %bb.ag
  %eh.lpad-body211 = phi { ptr, i32 } [ %i.ep, %bb.ag ], [ %i.es, %bb.aj ]
  resume { ptr, i32 } %eh.lpad-body211

bb.aj:                                            ; preds = %bb.v, %bb.x, %bb.y, %bb.ab, %bb.ad
  %i.es = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsv_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1000) %i.e)
          to label %.body unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable
end_hunk_0
begin_hunk_1_@_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node13fix_tree_seam:bb.a

bb.m:                                             ; preds = %bb.k
  %i.ah = call noundef zeroext i1 @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren16merge_distribute(ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.e, i64 noundef 0, i64 noundef 1)
  %i.ai = or i1 %.sroa.0.0, %i.ah
  br label %bb.e

bb.n:                                             ; preds = %bb.l
  %i.aj = icmp eq i64 %i.l, %1
  br i1 %i.aj, label %bb.o, label %bb.e

bb.o:                                             ; preds = %bb.n
  %i.ak = call { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren5nodes(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.e) ; 2 uses
  %i.al = extractvalue { ptr, i64 } %i.ak, 1      ; 2 uses
  %i.am = add i64 %i.k, -1                        ; 5 uses
  %i.an = icmp ult i64 %i.am, %i.al
  br i1 %i.an, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ao = extractvalue { ptr, i64 } %i.ak, 0
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.am
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i8, ptr %i.ar, align 8, !range !4, !noundef !5
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %.split, label %bb.r

bb.q:                                             ; preds = %bb.o
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.am, i64 noundef %i.al, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #16
  unreachable

.split:                                           ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 984
  %i.av = load i8, ptr %i.au, align 8, !noundef !5
  %i.aw = icmp ult i8 %i.av, 12
  br i1 %i.aw, label %bb.s, label %bb.e

bb.r:                                             ; preds = %bb.p
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.ay = call { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %i.ax)
  %i.az = extractvalue { ptr, i64 } %i.ay, 1
  %i.ba = icmp ult i64 %i.az, 462
  br i1 %i.ba, label %bb.s, label %bb.e

bb.s:                                             ; preds = %._crit_edge, %.split, %bb.r
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %i.am, %.split ], [ %i.am, %bb.r ]
  %i.bb = call noundef zeroext i1 @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren16merge_distribute(ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.e, i64 noundef %.pre-phi, i64 noundef %i.k)
  %i.bc = or i1 %.sroa.0.0, %i.bb
  br label %bb.e

bb.t:                                             ; preds = %bb.e
  %i.bd = call { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren9nodes_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.e) ; 2 uses
  %i.be = extractvalue { ptr, i64 } %i.bd, 1      ; 2 uses
  %i.bf = icmp ult i64 %i.p, %i.be
  br i1 %i.bf, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.e
  %i.bg = call { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4info(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.e) ; 2 uses
  %i.bh = extractvalue { ptr, i64 } %i.bg, 1      ; 2 uses
  %i.bi = add i64 %i.p, -1                        ; 6 uses
  %i.bj = icmp ult i64 %i.bi, %i.bh
  br i1 %i.bj, label %bb.x, label %bb.y

bb.v:                                             ; preds = %bb.t
  %i.bk = extractvalue { ptr, i64 } %i.bd, 0
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.p
  %i.bm = call fastcc noundef nonnull align 8 ptr @_RNvMsB_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE8make_mutBM_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.bl) #15
  %i.bn = sub i64 %1, %i.q
  %i.bo = call noundef zeroext i1 @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node13fix_tree_seam(ptr noalias nofree noundef nonnull align 8 dereferenceable(1008) %i.bm, i64 noundef %i.bn)
  br i1 %i.bo, label %.backedge, label %.loopexit

bb.w:                                             ; preds = %bb.t
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.p, i64 noundef %i.be, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #16
  unreachable

bb.x:                                             ; preds = %bb.u
  %i.bp = extractvalue { ptr, i64 } %i.bg, 0
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %i.bp, i64 %i.bi
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !noundef !5
  %i.bt = call { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren9nodes_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.e) ; 2 uses
  %i.bu = extractvalue { ptr, i64 } %i.bt, 1      ; 2 uses
  %i.bv = icmp ult i64 %i.bi, %i.bu
  br i1 %i.bv, label %bb.z, label %bb.aa

bb.y:                                             ; preds = %bb.u
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bi, i64 noundef %i.bh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #16
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.bw = extractvalue { ptr, i64 } %i.bt, 0
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bi
  %i.by = call fastcc noundef nonnull align 8 ptr @_RNvMsB_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE8make_mutBM_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.bx) #15
  %i.bz = call noundef zeroext i1 @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node13fix_tree_seam(ptr noalias nofree noundef nonnull align 8 dereferenceable(1008) %i.by, i64 noundef %i.bs)
  %i.ca = call { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren9nodes_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.e) ; 2 uses
  %i.cb = extractvalue { ptr, i64 } %i.ca, 1      ; 2 uses
  %i.cc = icmp ult i64 %i.p, %i.cb
  br i1 %i.cc, label %bb.ab, label %bb.ac

bb.aa:                                            ; preds = %bb.x
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bi, i64 noundef %i.bu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #16
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.cd = extractvalue { ptr, i64 } %i.ca, 0
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.p
  %i.cf = call fastcc noundef nonnull align 8 ptr @_RNvMsB_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE8make_mutBM_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.ce) #15
  %i.cg = call noundef zeroext i1 @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node13fix_tree_seam(ptr noalias nofree noundef nonnull align 8 dereferenceable(1008) %i.cf, i64 noundef 0)
  %brmerge = or i1 %i.bz, %i.cg
  br i1 %brmerge, label %.backedge, label %.loopexit

.backedge:                                        ; preds = %bb.ab, %bb.v
  br label %bb.c

bb.ac:                                            ; preds = %bb.z
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.p, i64 noundef %i.cb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #16
  unreachable

.loopexit:                                        ; preds = %bb.ab, %bb.v, %bb.a
  %.sroa.0.2 = phi i1 [ false, %bb.a ], [ %.sroa.0.1, %bb.v ], [ %.sroa.0.1, %bb.ab ]
  ret i1 %.sroa.0.2
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node13is_crlf_split(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1008) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %i.c = load i8, ptr %0, align 8, !range !4, !alias.scope !101, !noalias !104, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %.lr.ph.i, label %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17get_chunk_at_char.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %.sroa.0.018.i = phi ptr [ %0, %.lr.ph.i ], [ %i.p, %bb.c ]
  %.sroa.03.017.i = phi i64 [ %1, %.lr.ph.i ], [ %i.q, %bb.c ] ; 2 uses
  %.sroa.4.015.i = phi i64 [ 0, %.lr.ph.i ], [ %i.m, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !106
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren15search_char_idx(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.f, i64 noundef %.sroa.03.017.i), !noalias !104
  %i.g = load i64, ptr %i.a, align 8, !noalias !106, !noundef !5 ; 3 uses
  %i.h = load i64, ptr %i.e, align 8, !noalias !106, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !106
  %i.i = call { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren5nodes(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.f), !noalias !104 ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.i, 1        ; 2 uses
  %i.k = icmp ult i64 %i.g, %i.j
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = extractvalue { ptr, i64 } %i.i, 0
  %i.m = add i64 %i.h, %.sroa.4.015.i             ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.g
  %i.o = load ptr, ptr %i.n, align 8, !noalias !104, !nonnull !5, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  %i.q = sub i64 %.sroa.03.017.i, %i.h
  %i.r = load i8, ptr %i.p, align 8, !range !4, !noalias !104, !noundef !5
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.b, label %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17get_chunk_at_char.exit

bb.d:                                             ; preds = %bb.b
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.g, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #16, !noalias !104
  unreachable

_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17get_chunk_at_char.exit: ; preds = %bb.c, %bb.a
  %.sroa.4.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.m, %bb.c ]
  %.sroa.0.0.lcssa.i = phi ptr [ %0, %bb.a ], [ %i.p, %bb.c ]
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i, i64 8
  %i.u = call { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %i.t), !noalias !104 ; 2 uses
  %i.v = extractvalue { ptr, i64 } %i.u, 0        ; 8 uses
  %i.w = extractvalue { ptr, i64 } %i.u, 1        ; 14 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.v) ]
  %i.x = sub i64 %1, %.sroa.4.0.lcssa.i           ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %i.y = icmp samesign ult i64 %i.w, 17
  br i1 %i.y, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17get_chunk_at_char.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !107
  call void @_RINvMNtCskKLDkoKarTP_4core5sliceSh8align_toNtNtNtB5_9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef range(i64 0, -9223372036854775808) %i.w)
  %i.z = load ptr, ptr %i.b, align 8, !noalias !107, !nonnull !5, !noundef !5 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !107, !noundef !5 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !107, !nonnull !5, !align !37, !noundef !5 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !noalias !107, !noundef !5 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !107
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ab
  %i.ah = icmp samesign eq i64 %i.ab, 0
  br i1 %i.ah, label %._crit_edge, label %.lr.ph

bb.f:                                             ; preds = %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17get_chunk_at_char.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  %i.aj = icmp samesign eq i64 %i.w, 0
  br i1 %i.aj, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.thread, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2wCc12Mnjqg_5ropey.exit

.lr.ph:                                           ; preds = %bb.e, %bb.g
  %.sroa.013.0.i185 = phi i64 [ %i.aq, %bb.g ], [ 0, %bb.e ] ; 2 uses
  %.sroa.013.0.i184 = phi i64 [ %i.an, %bb.g ], [ 0, %bb.e ]
  %.sroa.027.0.i183 = phi ptr [ %i.ap, %bb.g ], [ %i.z, %bb.e ] ; 2 uses
  %i.ak = load i8, ptr %.sroa.027.0.i183, align 1, !noundef !5
  %i.al = icmp sgt i8 %i.ak, -65
  %i.am = zext i1 %i.al to i64
  %i.an = add i64 %.sroa.013.0.i184, %i.am        ; 3 uses
  %i.ao = icmp ugt i64 %i.an, %i.x
  br i1 %i.ao, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.027.0.i183, i64 1 ; 2 uses
  %i.aq = add nuw i64 %.sroa.013.0.i185, 1
  %i.ar = icmp eq ptr %i.ap, %i.ag
  br i1 %i.ar, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.g, %bb.e
  %.sroa.020.0.i.lcssa = phi i64 [ 0, %bb.e ], [ %i.an, %bb.g ] ; 3 uses
  %i.as = sub i64 %i.x, %.sroa.020.0.i.lcssa
  %i.at = lshr i64 %i.as, 4
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.at, i64 %i.af) ; 2 uses
  %i.au = and i64 %..i, 576460752303423484        ; 2 uses
  %.not51.i187 = icmp eq i64 %i.au, 0
  br i1 %.not51.i187, label %._crit_edge194, label %.lr.ph193

._crit_edge194:                                   ; preds = %.lr.ph193, %._crit_edge
  %.sroa.020.1.i.lcssa = phi i64 [ %.sroa.020.0.i.lcssa, %._crit_edge ], [ %i.cr, %.lr.ph193 ] ; 2 uses
  %.sroa.013.1.i.lcssa = phi i64 [ %i.ab, %._crit_edge ], [ %i.cs, %.lr.ph193 ] ; 2 uses
  %i.av = and i64 %..i, 1152921504606846972       ; 4 uses
  %i.aw = icmp ugt i64 %i.av, %i.af
  br i1 %i.aw, label %bb.i, label %bb.h, !prof !13

bb.h:                                             ; preds = %._crit_edge194
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.af
  %i.ay = icmp samesign eq i64 %i.av, %i.af
  br i1 %i.ay, label %._crit_edge202, label %.lr.ph201.preheader

.lr.ph201.preheader:                              ; preds = %bb.h
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.av
  br label %.lr.ph201

bb.i:                                             ; preds = %._crit_edge194
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.av, i64 noundef %i.af, i64 noundef %i.af, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #16
  unreachable

.lr.ph201:                                        ; preds = %.lr.ph201.preheader, %bb.j
  %.sroa.040.0.i199 = phi ptr [ %i.bg, %bb.j ], [ %i.az, %.lr.ph201.preheader ] ; 2 uses
  %.sroa.013.2.i198 = phi i64 [ %i.bh, %bb.j ], [ %.sroa.013.1.i.lcssa, %.lr.ph201.preheader ] ; 2 uses
  %.sroa.020.2.i197 = phi i64 [ %i.bf, %bb.j ], [ %.sroa.020.1.i.lcssa, %.lr.ph201.preheader ] ; 2 uses
  %i.ba = load <16 x i8>, ptr %.sroa.040.0.i199, align 16
  %i.bb = icmp slt <16 x i8> %i.ba, splat (i8 -64)
  %i.bc = zext <16 x i1> %i.bb to <16 x i8>
  %i.bd = call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.bc, <16 x i8> zeroinitializer)
  %.neg172 = add i64 %.sroa.020.2.i197, 16
  %i.be = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.bd)
  %i.bf = sub i64 %.neg172, %i.be                 ; 3 uses
  %.not52.i = icmp ult i64 %i.bf, %i.x
  br i1 %.not52.i, label %bb.j, label %._crit_edge202

bb.j:                                             ; preds = %.lr.ph201
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.040.0.i199, i64 16 ; 2 uses
  %i.bh = add i64 %.sroa.013.2.i198, 16           ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.ax
  br i1 %i.bi, label %._crit_edge202, label %.lr.ph201

._crit_edge202:                                   ; preds = %bb.j, %.lr.ph201, %bb.h
  %.sroa.020.2.i.lcssa = phi i64 [ %.sroa.020.1.i.lcssa, %bb.h ], [ %.sroa.020.2.i197, %.lr.ph201 ], [ %i.bf, %bb.j ]
  %.sroa.013.2.i.lcssa = phi i64 [ %.sroa.013.1.i.lcssa, %bb.h ], [ %.sroa.013.2.i198, %.lr.ph201 ], [ %i.bh, %bb.j ] ; 5 uses
  %i.bj = icmp ugt i64 %.sroa.013.2.i.lcssa, %i.w
  br i1 %i.bj, label %bb.l, label %bb.k, !prof !13

bb.k:                                             ; preds = %._crit_edge202
  %i.bk = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  %i.bl = icmp samesign eq i64 %.sroa.013.2.i.lcssa, %i.w
  br i1 %i.bl, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.thread, label %.lr.ph212.preheader

.lr.ph212.preheader:                              ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.013.2.i.lcssa
  br label %.lr.ph212

bb.l:                                             ; preds = %._crit_edge202
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.013.2.i.lcssa, i64 noundef range(i64 0, -9223372036854775808) %i.w, i64 noundef range(i64 0, -9223372036854775808) %i.w, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #16
  unreachable

.lr.ph212:                                        ; preds = %.lr.ph212.preheader, %bb.m
  %.sroa.036.0.i210 = phi ptr [ %i.bs, %bb.m ], [ %i.bm, %.lr.ph212.preheader ] ; 2 uses
  %.sroa.013.3.i209 = phi i64 [ %i.bt, %bb.m ], [ %.sroa.013.2.i.lcssa, %.lr.ph212.preheader ] ; 2 uses
  %.sroa.020.3.i208 = phi i64 [ %i.bq, %bb.m ], [ %.sroa.020.2.i.lcssa, %.lr.ph212.preheader ]
  %i.bn = load i8, ptr %.sroa.036.0.i210, align 1, !alias.scope !107, !noundef !5
  %i.bo = icmp sgt i8 %i.bn, -65
  %i.bp = zext i1 %i.bo to i64
  %i.bq = add i64 %.sroa.020.3.i208, %i.bp        ; 2 uses
  %i.br = icmp ugt i64 %i.bq, %i.x
  br i1 %i.br, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %bb.m

bb.m:                                             ; preds = %.lr.ph212
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.036.0.i210, i64 1 ; 2 uses
  %i.bt = add i64 %.sroa.013.3.i209, 1
  %i.bu = icmp eq ptr %i.bs, %i.bk
  br i1 %i.bu, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.thread, label %.lr.ph212

.lr.ph193:                                        ; preds = %._crit_edge, %.lr.ph193
  %.sroa.5.0.i191 = phi i64 [ %i.cs, %.lr.ph193 ], [ %i.ab, %._crit_edge ]
  %.sroa.020.1.i190 = phi i64 [ %i.cr, %.lr.ph193 ], [ %.sroa.020.0.i.lcssa, %._crit_edge ]
  %.sroa.030.0.i189 = phi ptr [ %i.bv, %.lr.ph193 ], [ %i.ad, %._crit_edge ] ; 5 uses
  %.sroa.020.1.i188 = phi i64 [ %i.bw, %.lr.ph193 ], [ %i.au, %._crit_edge ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i189, i64 64
  %i.bw = add i64 %.sroa.020.1.i188, -4           ; 2 uses
  %i.bx = load <16 x i8>, ptr %.sroa.030.0.i189, align 16
  %i.by = icmp slt <16 x i8> %i.bx, splat (i8 -64)
  %i.bz = zext <16 x i1> %i.by to <16 x i8>
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i189, i64 16
  %i.cb = load <16 x i8>, ptr %i.ca, align 16
  %i.cc = icmp slt <16 x i8> %i.cb, splat (i8 -64)
  %i.cd = zext <16 x i1> %i.cc to <16 x i8>
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i189, i64 32
  %i.cf = load <16 x i8>, ptr %i.ce, align 16
  %i.cg = icmp slt <16 x i8> %i.cf, splat (i8 -64)
  %i.ch = zext <16 x i1> %i.cg to <16 x i8>
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i189, i64 48
  %i.cj = load <16 x i8>, ptr %i.ci, align 16
  %i.ck = icmp slt <16 x i8> %i.cj, splat (i8 -64)
  %i.cl = zext <16 x i1> %i.ck to <16 x i8>
  %i.cm = add nuw nsw <16 x i8> %i.cd, %i.bz
  %i.cn = add nuw nsw <16 x i8> %i.cm, %i.ch
  %i.co = add nuw nsw <16 x i8> %i.cn, %i.cl
  %i.cp = call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.co, <16 x i8> zeroinitializer)
  %.neg = add i64 %.sroa.020.1.i190, 64
  %i.cq = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.cp)
  %i.cr = sub i64 %.neg, %i.cq                    ; 2 uses
  %i.cs = add i64 %.sroa.5.0.i191, 64             ; 2 uses
  %.not51.i = icmp eq i64 %i.bw, 0
  br i1 %.not51.i, label %._crit_edge194, label %.lr.ph193

bb.n:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2wCc12Mnjqg_5ropey.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.045.0282, i64 1 ; 2 uses
  %i.cu = add nuw nsw i64 %.sroa.8.0281, 1
  %i.cv = icmp eq ptr %i.ct, %i.ai
  br i1 %i.cv, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.thread, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2wCc12Mnjqg_5ropey.exit

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2wCc12Mnjqg_5ropey.exit: ; preds = %bb.f, %bb.n
  %.sroa.07.0.i283 = phi i64 [ %i.cz, %bb.n ], [ 0, %bb.f ]
  %.sroa.045.0282 = phi ptr [ %i.ct, %bb.n ], [ %i.v, %bb.f ] ; 2 uses
  %.sroa.8.0281 = phi i64 [ %i.cu, %bb.n ], [ 0, %bb.f ] ; 2 uses
  %i.cw = load i8, ptr %.sroa.045.0282, align 1, !noundef !5
  %i.cx = icmp sgt i8 %i.cw, -65
  %i.cy = zext i1 %i.cx to i64
  %i.cz = add i64 %.sroa.07.0.i283, %i.cy         ; 2 uses
  %i.da = icmp ugt i64 %i.cz, %i.x
  br i1 %i.da, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %bb.n

_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit: ; preds = %.lr.ph, %.lr.ph212, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2wCc12Mnjqg_5ropey.exit
  %.sroa.0.0.i = phi i64 [ %.sroa.013.3.i209, %.lr.ph212 ], [ %.sroa.8.0281, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2wCc12Mnjqg_5ropey.exit ], [ %.sroa.013.0.i185, %.lr.ph ] ; 6 uses
  %i.db = icmp eq i64 %.sroa.0.0.i, 0
  %i.dc = icmp eq i64 %.sroa.0.0.i, %i.w
  %or.cond = or i1 %i.db, %i.dc
  br i1 %or.cond, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.thread, label %bb.o

bb.o:                                             ; preds = %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit
  %i.dd = add i64 %.sroa.0.0.i, -1                ; 3 uses
  %i.de = icmp ult i64 %i.dd, %i.w
  br i1 %i.de, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.df = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.dd
  %i.dg = load i8, ptr %i.df, align 1, !noundef !5
  %i.dh = icmp eq i8 %i.dg, 13
  br i1 %i.dh, label %bb.r, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.thread

bb.q:                                             ; preds = %bb.o
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.dd, i64 noundef %i.w, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #16
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.di = icmp ult i64 %.sroa.0.0.i, %i.w
  br i1 %i.di, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dj = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.0.0.i
  %i.dk = load i8, ptr %i.dj, align 1, !noundef !5
  %i.dl = icmp eq i8 %i.dk, 10
  br label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.thread

bb.t:                                             ; preds = %bb.r
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.i, i64 noundef %i.w, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #16
  unreachable

_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.thread: ; preds = %bb.m, %bb.n, %bb.f, %bb.k, %bb.p, %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, %bb.s
  %.sroa.0.0 = phi i1 [ false, %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit ], [ %i.dl, %bb.s ], [ false, %bb.p ], [ false, %bb.k ], [ false, %bb.f ], [ false, %bb.n ], [ false, %bb.m ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node13leaf_text_mut(ptr noalias nofree noundef readonly align 8 captures(ret: address, provenance) dereferenceable(1008) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !4, !noundef !5
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNtCsG258MDvU3F_3std9panicking11begin_panicReEB4_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node13zip_fix_right(ptr noalias nofree noundef align 8 dereferenceable(1008) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !4, !noundef !5
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 968
  br label %bb.c

bb.c:                                             ; preds = %bb.k, %bb.b
  %.sroa.0.0 = phi i1 [ false, %bb.b ], [ %.sroa.0.1, %bb.k ] ; 4 uses
  %i.e = load i8, ptr %i.d, align 8, !noundef !5  ; 2 uses
  %i.f = zext i8 %i.e to i64                      ; 2 uses
  %i.g = add nsw i64 %i.f, -1                     ; 4 uses
  %i.h = icmp ugt i8 %i.e, 1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = tail call { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren5nodes(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.c) ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.i, 1        ; 2 uses
  %i.k = icmp ult i64 %i.g, %i.j
  br i1 %i.k, label %bb.f, label %bb.g

bb.e:                                             ; preds = %.split, %bb.c, %bb.i, %bb.h
  %.sroa.0.1 = phi i1 [ %i.ac, %bb.i ], [ %.sroa.0.0, %bb.h ], [ %.sroa.0.0, %bb.c ], [ %.sroa.0.0, %.split ] ; 2 uses
  %i.l = tail call { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren9nodes_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.c) ; 2 uses
  %i.m = extractvalue { ptr, i64 } %i.l, 1        ; 2 uses
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.j, label %bb.k, !prof !13

bb.f:                                             ; preds = %bb.d
  %i.n = extractvalue { ptr, i64 } %i.i, 0
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.g
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i8, ptr %i.q, align 8, !range !4, !noundef !5
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %.split, label %bb.h

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.g, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #16
  unreachable

.split:                                           ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 984
  %i.u = load i8, ptr %i.t, align 8, !noundef !5
  %i.v = icmp ult i8 %i.u, 12
  br i1 %i.v, label %bb.i, label %bb.e

bb.h:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.x = tail call { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %i.w)
  %i.y = extractvalue { ptr, i64 } %i.x, 1
  %i.z = icmp ult i64 %i.y, 462
  br i1 %i.z, label %bb.i, label %bb.e

bb.i:                                             ; preds = %.split, %bb.h
  %i.aa = add nsw i64 %i.f, -2
  %i.ab = tail call noundef zeroext i1 @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren16merge_distribute(ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.c, i64 noundef %i.aa, i64 noundef %i.g)
  %i.ac = or i1 %.sroa.0.0, %i.ab
  br label %bb.e

bb.j:                                             ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #16
  unreachable

bb.k:                                             ; preds = %bb.e
  %i.ad = extractvalue { ptr, i64 } %i.l, 0
  %i.ae = getelementptr [8 x i8], ptr %i.ad, i64 %i.m
  %i.af = getelementptr i8, ptr %i.ae, i64 -8     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.af) ]
  %i.ag = tail call fastcc noundef nonnull align 8 ptr @_RNvMsB_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE8make_mutBM_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.af) #15
  %i.ah = tail call noundef zeroext i1 @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node13zip_fix_right(ptr noalias nofree noundef nonnull align 8 dereferenceable(1008) %i.ag)
  br i1 %i.ah, label %bb.c, label %.loopexit

.loopexit:                                        ; preds = %bb.k, %bb.a
  %.sroa.0.2 = phi i1 [ false, %bb.a ], [ %.sroa.0.1, %bb.k ]
  ret i1 %.sroa.0.2
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node14assert_balance(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1008) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load i8, ptr %0, align 8, !range !4, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = tail call { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren5nodes(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.e) ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.f, 1
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.sroa.0.0 = phi i64 [ %i.v, %._crit_edge ], [ 1, %bb.a ]
  ret i64 %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.h = extractvalue { ptr, i64 } %i.f, 0
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = tail call noundef i64 @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node14assert_balance(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.j) ; 3 uses
  store i64 %i.k, ptr %i.b, align 8
  %i.l = tail call { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren5nodes(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.e) ; 2 uses
  %i.m = extractvalue { ptr, i64 } %i.l, 1        ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.g, label %bb.f, !prof !13

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #16
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.o = extractvalue { ptr, i64 } %i.l, 0        ; 2 uses
  %.idx = shl i64 %i.m, 3                         ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 %.idx
  %i.q = icmp eq i64 %.idx, 8
  br i1 %i.q, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %.sroa.01.04 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  br label %.lr.ph

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 1, i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #16
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %.sroa.01.05 = phi ptr [ %.sroa.01.0, %bb.i ], [ %.sroa.01.04, %.lr.ph.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.r = load ptr, ptr %.sroa.01.05, align 8, !nonnull !5, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = tail call noundef i64 @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node14assert_balance(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.s) ; 2 uses
  store i64 %i.t, ptr %i.a, align 8
  %i.u = icmp eq i64 %i.t, %i.k
  br i1 %i.u, label %bb.i, label %bb.h, !prof !58

._crit_edge:                                      ; preds = %bb.i, %bb.f
end_hunk_1
begin_hunk_2_@_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17get_chunk_at_char:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.n = call { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren5nodes(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.i) ; 2 uses
  %i.o = extractvalue { ptr, i64 } %i.n, 1        ; 2 uses
  %i.p = icmp ult i64 %i.j, %i.o
  br i1 %i.p, label %bb.c, label %bb.d

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.sroa.0.0.lcssa = phi ptr [ %1, %bb.a ], [ %i.ad, %bb.c ]
  %i.q = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.aa, %bb.c ]
  %i.r = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.z, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa, i64 8
  %i.t = call { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %i.s) ; 2 uses
  %i.u = extractvalue { ptr, i64 } %i.t, 0
  %i.v = extractvalue { ptr, i64 } %i.t, 1
  store ptr %i.u, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.v, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %i.q, ptr %i.x, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.r, ptr %.sroa.7.0..sroa_idx, align 8
  ret void

bb.c:                                             ; preds = %bb.b
  %i.y = extractvalue { ptr, i64 } %i.n, 0
  %i.z = add <2 x i64> %i.m, %i.h                 ; 2 uses
  %i.aa = add <2 x i64> %i.l, %i.g                ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.j
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !5, !noundef !5
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 3 uses
  %i.ae = sub i64 %.sroa.03.017, %i.k
  %i.af = load i8, ptr %i.ad, align 8, !range !4, !noundef !5
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.b, label %._crit_edge

bb.d:                                             ; preds = %bb.b
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.j, i64 noundef %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #16
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17remove_char_range(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(1008) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [40 x i8], align 8                ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  %i.h = alloca [32 x i8], align 16               ; 6 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 3 uses
  store i64 %2, ptr %i.j, align 8
  store i64 %3, ptr %i.i, align 8
  %i.k = icmp eq i64 %2, %3
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i8, ptr %1, align 8, !range !4, !noundef !5
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 36 uses
  br i1 %i.m, label %bb.d, label %bb.k

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 0, ptr %i.p, align 1
  br label %bb.bo

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.j, ptr %i.g, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.i, ptr %i.q, align 8
  %i.r = call { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4info(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.n), !noalias !220 ; 2 uses
  %i.s = extractvalue { ptr, i64 } %i.r, 1        ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 968 ; 7 uses
  %i.u = load i8, ptr %i.t, align 8, !alias.scope !223, !noalias !220, !noundef !5
  %i.v = zext i8 %i.u to i64                      ; 2 uses
  %i.w = add nsw i64 %i.v, -1                     ; 4 uses
  %.not.i106 = icmp ugt i64 %i.w, %i.s
  br i1 %.not.i106, label %bb.f, label %bb.e, !prof !9

bb.e:                                             ; preds = %bb.d
  %i.x = extractvalue { ptr, i64 } %i.r, 0        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.x) ]
  %.idx = shl nuw nsw i64 %i.w, 5
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx
  %i.z = icmp eq i64 %i.w, 0
  br i1 %i.z, label %._crit_edge561, label %.lr.ph560.preheader

.lr.ph560.preheader:                              ; preds = %bb.e
  %i.aa = add nuw nsw i64 %i.v, 576460752303423486
  %i.ab = and i64 %i.aa, 576460752303423487
  %i.ac = add nuw nsw i64 %i.ab, 1
  br label %.lr.ph560

bb.f:                                             ; preds = %bb.d
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.w, i64 noundef %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #16, !noalias !220
  unreachable

.lr.ph560:                                        ; preds = %.lr.ph560.preheader, %bb.g
  %.sroa.0.0.i107558 = phi i64 [ %i.af, %bb.g ], [ 0, %.lr.ph560.preheader ] ; 2 uses
  %.sroa.04.0.i557 = phi i64 [ %i.ai, %bb.g ], [ 0, %.lr.ph560.preheader ] ; 2 uses
  %.sroa.09.0.i556 = phi ptr [ %i.ah, %bb.g ], [ %i.x, %.lr.ph560.preheader ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i556, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !220, !noundef !5
  %i.af = add i64 %i.ae, %.sroa.0.0.i107558       ; 3 uses
  %i.ag = icmp ult i64 %2, %i.af
  br i1 %i.ag, label %._crit_edge561, label %bb.g

bb.g:                                             ; preds = %.lr.ph560
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i556, i64 32 ; 2 uses
  %i.ai = add nuw nsw i64 %.sroa.04.0.i557, 1
  %i.aj = icmp eq ptr %i.ah, %i.y
  br i1 %i.aj, label %._crit_edge561, label %.lr.ph560

._crit_edge561:                                   ; preds = %bb.g, %.lr.ph560, %bb.e
  %.sroa.04.0.i.lcssa = phi i64 [ 0, %bb.e ], [ %.sroa.04.0.i557, %.lr.ph560 ], [ %i.ac, %bb.g ] ; 25 uses
  %.sroa.0.0.i107.lcssa = phi i64 [ 0, %bb.e ], [ %.sroa.0.0.i107558, %.lr.ph560 ], [ %i.af, %bb.g ] ; 4 uses
  %i.ak = call { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4info(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.n), !noalias !220 ; 2 uses
  %i.al = extractvalue { ptr, i64 } %i.ak, 1      ; 2 uses
  %i.am = load i8, ptr %i.t, align 8, !alias.scope !223, !noalias !220, !noundef !5
  %i.an = zext i8 %i.am to i64
  %i.ao = add nsw i64 %i.an, -1                   ; 5 uses
  %i.ap = icmp ult i64 %i.ao, %.sroa.04.0.i.lcssa
  %.not18.i = icmp ugt i64 %i.ao, %i.al
  %or.cond.i = select i1 %i.ap, i1 true, i1 %.not18.i, !prof !9
  br i1 %or.cond.i, label %bb.i, label %bb.h, !prof !9

bb.h:                                             ; preds = %._crit_edge561
  %i.aq = extractvalue { ptr, i64 } %i.ak, 0      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aq) ]
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %i.aq, i64 %i.ao
  %i.as = icmp samesign eq i64 %.sroa.04.0.i.lcssa, %i.ao
  br i1 %i.as, label %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren21search_char_idx_range.exit, label %.lr.ph571.preheader

.lr.ph571.preheader:                              ; preds = %bb.h
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %i.aq, i64 %.sroa.04.0.i.lcssa
  br label %.lr.ph571

bb.i:                                             ; preds = %._crit_edge561
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.04.0.i.lcssa, i64 noundef %i.ao, i64 noundef %i.al, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #16, !noalias !220
  unreachable

.lr.ph571:                                        ; preds = %.lr.ph571.preheader, %bb.j
  %.sroa.0.1.i569 = phi i64 [ %i.aw, %bb.j ], [ %.sroa.0.0.i107.lcssa, %.lr.ph571.preheader ] ; 2 uses
  %.sroa.04.1.i568 = phi i64 [ %i.ay, %bb.j ], [ %.sroa.04.0.i.lcssa, %.lr.ph571.preheader ] ; 2 uses
  %.sroa.011.0.i567 = phi ptr [ %i.ax, %bb.j ], [ %i.at, %.lr.ph571.preheader ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.011.0.i567, i64 8
  %i.av = load i64, ptr %i.au, align 8, !noalias !220, !noundef !5
  %i.aw = add i64 %i.av, %.sroa.0.1.i569          ; 3 uses
  %.not19.i = icmp ugt i64 %3, %i.aw
  br i1 %.not19.i, label %bb.j, label %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren21search_char_idx_range.exit

bb.j:                                             ; preds = %.lr.ph571
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.011.0.i567, i64 32 ; 2 uses
  %i.ay = add nuw nsw i64 %.sroa.04.1.i568, 1     ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ar
  br i1 %i.az, label %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren21search_char_idx_range.exit, label %.lr.ph571

_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren21search_char_idx_range.exit: ; preds = %.lr.ph571, %bb.j, %bb.h
  %.sroa.04.1.i.lcssa = phi i64 [ %.sroa.04.0.i.lcssa, %bb.h ], [ %i.ay, %bb.j ], [ %.sroa.04.1.i568, %.lr.ph571 ] ; 5 uses
  %.sroa.0.1.i.lcssa = phi i64 [ %.sroa.0.0.i107.lcssa, %bb.h ], [ %i.aw, %bb.j ], [ %.sroa.0.1.i569, %.lr.ph571 ] ; 2 uses
  %i.ba = icmp eq i64 %.sroa.04.0.i.lcssa, %.sroa.04.1.i.lcssa
  br i1 %i.ba, label %bb.bq, label %bb.bp

bb.k:                                             ; preds = %bb.b
  %i.bb = tail call { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %i.n) ; 2 uses
  %i.bc = extractvalue { ptr, i64 } %i.bb, 0      ; 6 uses
  %i.bd = extractvalue { ptr, i64 } %i.bb, 1      ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225)
  %i.be = icmp samesign ult i64 %i.bd, 17
  br i1 %i.be, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !225
  call void @_RINvMNtCskKLDkoKarTP_4core5sliceSh8align_toNtNtNtB5_9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bc, i64 noundef range(i64 0, -9223372036854775808) %i.bd)
  %i.bf = load ptr, ptr %i.a, align 8, !noalias !225, !nonnull !5, !noundef !5 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !225, !noundef !5 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !225, !nonnull !5, !align !37, !noundef !5 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bl = load i64, ptr %i.bk, align 8, !noalias !225, !noundef !5 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !225
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bh
  %i.bn = icmp samesign eq i64 %i.bh, 0
  br i1 %i.bn, label %._crit_edge, label %.lr.ph

bb.m:                                             ; preds = %bb.k
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bc) ]
  %i.bp = icmp samesign eq i64 %i.bd, 0
  br i1 %i.bp, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit105, label %.lr.ph715

.lr.ph:                                           ; preds = %bb.l, %bb.n
  %.sroa.013.0.i77488 = phi i64 [ %i.bw, %bb.n ], [ 0, %bb.l ] ; 2 uses
  %.sroa.013.0.i76487 = phi i64 [ %i.bt, %bb.n ], [ 0, %bb.l ]
  %.sroa.027.0.i75486 = phi ptr [ %i.bv, %bb.n ], [ %i.bf, %bb.l ] ; 2 uses
  %i.bq = load i8, ptr %.sroa.027.0.i75486, align 1, !noundef !5
  %i.br = icmp sgt i8 %i.bq, -65
  %i.bs = zext i1 %i.br to i64
  %i.bt = add i64 %.sroa.013.0.i76487, %i.bs      ; 3 uses
  %i.bu = icmp ugt i64 %i.bt, %2
  br i1 %i.bu, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit105, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.027.0.i75486, i64 1 ; 2 uses
  %i.bw = add nuw i64 %.sroa.013.0.i77488, 1
  %i.bx = icmp eq ptr %i.bv, %i.bm
  br i1 %i.bx, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.n, %bb.l
  %.sroa.020.0.i75.lcssa = phi i64 [ 0, %bb.l ], [ %i.bt, %bb.n ] ; 3 uses
  %i.by = sub i64 %2, %.sroa.020.0.i75.lcssa
  %i.bz = lshr i64 %i.by, 4
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.bz, i64 %i.bl) ; 2 uses
  %i.ca = and i64 %..i, 576460752303423484        ; 2 uses
  %.not51.i89490 = icmp eq i64 %i.ca, 0
  br i1 %.not51.i89490, label %._crit_edge497, label %.lr.ph496

._crit_edge497:                                   ; preds = %.lr.ph496, %._crit_edge
  %.sroa.020.1.i85.lcssa = phi i64 [ %.sroa.020.0.i75.lcssa, %._crit_edge ], [ %i.dx, %.lr.ph496 ] ; 2 uses
  %.sroa.013.1.i86.lcssa = phi i64 [ %i.bh, %._crit_edge ], [ %i.dy, %.lr.ph496 ] ; 2 uses
  %i.cb = and i64 %..i, 1152921504606846972       ; 4 uses
  %i.cc = icmp ugt i64 %i.cb, %i.bl
  br i1 %i.cc, label %bb.p, label %bb.o, !prof !13

bb.o:                                             ; preds = %._crit_edge497
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.bl
  %i.ce = icmp samesign eq i64 %i.cb, %i.bl
  br i1 %i.ce, label %._crit_edge505, label %.lr.ph504.preheader

.lr.ph504.preheader:                              ; preds = %bb.o
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.cb
  br label %.lr.ph504

bb.p:                                             ; preds = %._crit_edge497
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.cb, i64 noundef %i.bl, i64 noundef %i.bl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #16
  unreachable

.lr.ph504:                                        ; preds = %.lr.ph504.preheader, %bb.q
  %.sroa.040.0.i96502 = phi ptr [ %i.cm, %bb.q ], [ %i.cf, %.lr.ph504.preheader ] ; 2 uses
  %.sroa.013.2.i95501 = phi i64 [ %i.cn, %bb.q ], [ %.sroa.013.1.i86.lcssa, %.lr.ph504.preheader ] ; 2 uses
  %.sroa.020.2.i94500 = phi i64 [ %i.cl, %bb.q ], [ %.sroa.020.1.i85.lcssa, %.lr.ph504.preheader ] ; 2 uses
  %i.cg = load <16 x i8>, ptr %.sroa.040.0.i96502, align 16
  %i.ch = icmp slt <16 x i8> %i.cg, splat (i8 -64)
  %i.ci = zext <16 x i1> %i.ch to <16 x i8>
  %i.cj = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.ci, <16 x i8> zeroinitializer)
  %.neg470 = add i64 %.sroa.020.2.i94500, 16
  %i.ck = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.cj)
  %i.cl = sub i64 %.neg470, %i.ck                 ; 3 uses
  %.not52.i97 = icmp ult i64 %i.cl, %2
  br i1 %.not52.i97, label %bb.q, label %._crit_edge505

bb.q:                                             ; preds = %.lr.ph504
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.040.0.i96502, i64 16 ; 2 uses
  %i.cn = add i64 %.sroa.013.2.i95501, 16         ; 2 uses
  %i.co = icmp eq ptr %i.cm, %i.cd
  br i1 %i.co, label %._crit_edge505, label %.lr.ph504

._crit_edge505:                                   ; preds = %bb.q, %.lr.ph504, %bb.o
  %.sroa.020.2.i94.lcssa = phi i64 [ %.sroa.020.1.i85.lcssa, %bb.o ], [ %.sroa.020.2.i94500, %.lr.ph504 ], [ %i.cl, %bb.q ]
  %.sroa.013.2.i95.lcssa = phi i64 [ %.sroa.013.1.i86.lcssa, %bb.o ], [ %.sroa.013.2.i95501, %.lr.ph504 ], [ %i.cn, %bb.q ] ; 5 uses
  %i.cp = icmp ugt i64 %.sroa.013.2.i95.lcssa, %i.bd
  br i1 %i.cp, label %bb.s, label %bb.r, !prof !13

bb.r:                                             ; preds = %._crit_edge505
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bd
  %i.cr = icmp samesign eq i64 %.sroa.013.2.i95.lcssa, %i.bd
  br i1 %i.cr, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit105, label %.lr.ph515.preheader

.lr.ph515.preheader:                              ; preds = %bb.r
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.sroa.013.2.i95.lcssa
  br label %.lr.ph515

bb.s:                                             ; preds = %._crit_edge505
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.013.2.i95.lcssa, i64 noundef range(i64 0, -9223372036854775808) %i.bd, i64 noundef range(i64 0, -9223372036854775808) %i.bd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #16
  unreachable

.lr.ph515:                                        ; preds = %.lr.ph515.preheader, %bb.t
  %.sroa.036.0.i100513 = phi ptr [ %i.cy, %bb.t ], [ %i.cs, %.lr.ph515.preheader ] ; 2 uses
  %.sroa.013.3.i99512 = phi i64 [ %i.cz, %bb.t ], [ %.sroa.013.2.i95.lcssa, %.lr.ph515.preheader ] ; 2 uses
  %.sroa.020.3.i98511 = phi i64 [ %i.cw, %bb.t ], [ %.sroa.020.2.i94.lcssa, %.lr.ph515.preheader ]
  %i.ct = load i8, ptr %.sroa.036.0.i100513, align 1, !alias.scope !225, !noundef !5
  %i.cu = icmp sgt i8 %i.ct, -65
  %i.cv = zext i1 %i.cu to i64
  %i.cw = add i64 %.sroa.020.3.i98511, %i.cv      ; 2 uses
  %i.cx = icmp ugt i64 %i.cw, %2
  br i1 %i.cx, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit105, label %bb.t

bb.t:                                             ; preds = %.lr.ph515
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.036.0.i100513, i64 1 ; 2 uses
  %i.cz = add i64 %.sroa.013.3.i99512, 1
  %i.da = icmp eq ptr %i.cy, %i.cq
  br i1 %i.da, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit105, label %.lr.ph515

.lr.ph496:                                        ; preds = %._crit_edge, %.lr.ph496
  %.sroa.5.0.i88494 = phi i64 [ %i.dy, %.lr.ph496 ], [ %i.bh, %._crit_edge ]
  %.sroa.020.1.i87493 = phi i64 [ %i.dx, %.lr.ph496 ], [ %.sroa.020.0.i75.lcssa, %._crit_edge ]
  %.sroa.030.0.i86492 = phi ptr [ %i.db, %.lr.ph496 ], [ %i.bj, %._crit_edge ] ; 5 uses
  %.sroa.020.1.i85491 = phi i64 [ %i.dc, %.lr.ph496 ], [ %i.ca, %._crit_edge ]
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i86492, i64 64
  %i.dc = add i64 %.sroa.020.1.i85491, -4         ; 2 uses
  %i.dd = load <16 x i8>, ptr %.sroa.030.0.i86492, align 16
  %i.de = icmp slt <16 x i8> %i.dd, splat (i8 -64)
  %i.df = zext <16 x i1> %i.de to <16 x i8>
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i86492, i64 16
  %i.dh = load <16 x i8>, ptr %i.dg, align 16
  %i.di = icmp slt <16 x i8> %i.dh, splat (i8 -64)
  %i.dj = zext <16 x i1> %i.di to <16 x i8>
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i86492, i64 32
  %i.dl = load <16 x i8>, ptr %i.dk, align 16
  %i.dm = icmp slt <16 x i8> %i.dl, splat (i8 -64)
  %i.dn = zext <16 x i1> %i.dm to <16 x i8>
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i86492, i64 48
  %i.dp = load <16 x i8>, ptr %i.do, align 16
  %i.dq = icmp slt <16 x i8> %i.dp, splat (i8 -64)
  %i.dr = zext <16 x i1> %i.dq to <16 x i8>
  %i.ds = add nuw nsw <16 x i8> %i.dj, %i.df
  %i.dt = add nuw nsw <16 x i8> %i.ds, %i.dn
  %i.du = add nuw nsw <16 x i8> %i.dt, %i.dr
  %i.dv = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.du, <16 x i8> zeroinitializer)
  %.neg = add i64 %.sroa.020.1.i87493, 64
  %i.dw = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.dv)
  %i.dx = sub i64 %.neg, %i.dw                    ; 2 uses
  %i.dy = add i64 %.sroa.5.0.i88494, 64           ; 2 uses
  %.not51.i89 = icmp eq i64 %i.dc, 0
  br i1 %.not51.i89, label %._crit_edge497, label %.lr.ph496

bb.u:                                             ; preds = %.lr.ph715
  %i.dz = add nuw nsw i64 %.sroa.8260.0712, 1
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0258.0711, i64 1 ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.bo
  br i1 %i.eb, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit105, label %.lr.ph715

.lr.ph715:                                        ; preds = %bb.m, %bb.u
  %.sroa.07.0.i103713 = phi i64 [ %i.ef, %bb.u ], [ 0, %bb.m ]
  %.sroa.8260.0712 = phi i64 [ %i.dz, %bb.u ], [ 0, %bb.m ] ; 2 uses
  %.sroa.0258.0711 = phi ptr [ %i.ea, %bb.u ], [ %i.bc, %bb.m ] ; 2 uses
  %i.ec = load i8, ptr %.sroa.0258.0711, align 1, !noundef !5
  %i.ed = icmp sgt i8 %i.ec, -65
  %i.ee = zext i1 %i.ed to i64
  %i.ef = add i64 %.sroa.07.0.i103713, %i.ee      ; 2 uses
  %i.eg = icmp ugt i64 %i.ef, %2
  br i1 %i.eg, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit105, label %bb.u

_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit105: ; preds = %.lr.ph, %.lr.ph515, %bb.t, %bb.u, %.lr.ph715, %bb.m, %bb.r
  %.sroa.0.0.i78 = phi i64 [ %i.bd, %bb.r ], [ %i.bd, %bb.m ], [ %i.bd, %bb.t ], [ %.sroa.8260.0712, %.lr.ph715 ], [ %i.bd, %bb.u ], [ %.sroa.013.3.i99512, %.lr.ph515 ], [ %.sroa.013.0.i77488, %.lr.ph ] ; 22 uses
  %i.eh = tail call { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %i.n) ; 2 uses
  %i.ei = extractvalue { ptr, i64 } %i.eh, 0      ; 7 uses
  %i.ej = extractvalue { ptr, i64 } %i.eh, 1      ; 9 uses
  %i.ek = icmp eq i64 %.sroa.0.0.i78, 0           ; 4 uses
  br i1 %i.ek, label %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit, label %bb.v

bb.v:                                             ; preds = %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit105
  %.not.i196 = icmp ult i64 %.sroa.0.0.i78, %i.ej
  br i1 %.not.i196, label %bb.w, label %.split.i

.split.i:                                         ; preds = %bb.v
  %i.el = icmp ne i64 %.sroa.0.0.i78, %i.ej
  %.not = icmp eq ptr %i.ei, null
  %or.cond = select i1 %i.el, i1 true, i1 %.not, !prof !228
  br i1 %or.cond, label %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread, label %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread672, !prof !228

bb.w:                                             ; preds = %bb.v
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 %.sroa.0.0.i78
  %i.en = load i8, ptr %i.em, align 1, !alias.scope !229, !noundef !5
  %i.eo = icmp sgt i8 %i.en, -65
  br i1 %i.eo, label %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread672, label %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread

_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit: ; preds = %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit105
  %.not.old = icmp eq ptr %i.ei, null
  br i1 %.not.old, label %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread, label %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread672, !prof !232

_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread672: ; preds = %bb.w, %.split.i, %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit
  %i.ep = sub i64 %i.ej, %.sroa.0.0.i78           ; 8 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ei, i64 %.sroa.0.0.i78 ; 3 uses
  %i.er = load i64, ptr %i.i, align 8, !noundef !5
  %i.es = load i64, ptr %i.j, align 8, !noundef !5
  %i.et = sub i64 %i.er, %i.es                    ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !233)
  %i.eu = icmp samesign ult i64 %i.ep, 17
  br i1 %i.eu, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread672
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !233
  call void @_RINvMNtCskKLDkoKarTP_4core5sliceSh8align_toNtNtNtB5_9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eq, i64 noundef range(i64 0, -9223372036854775808) %i.ep)
  %i.ev = load ptr, ptr %i.b, align 8, !noalias !233, !nonnull !5, !noundef !5 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ex = load i64, ptr %i.ew, align 8, !noalias !233, !noundef !5 ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8, !noalias !233, !nonnull !5, !align !37, !noundef !5 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.fb = load i64, ptr %i.fa, align 8, !noalias !233, !noundef !5 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !233
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.ex
  %i.fd = icmp samesign eq i64 %i.ex, 0
  br i1 %i.fd, label %._crit_edge524, label %.lr.ph523

bb.y:                                             ; preds = %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread672
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ej
  %i.ff = icmp samesign eq i64 %.sroa.0.0.i78, %i.ej
  br i1 %i.ff, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2wCc12Mnjqg_5ropey.exit201

.lr.ph523:                                        ; preds = %bb.x, %bb.z
  %.sroa.013.0.i521 = phi i64 [ %i.fm, %bb.z ], [ 0, %bb.x ] ; 2 uses
  %.sroa.013.0.i520 = phi i64 [ %i.fj, %bb.z ], [ 0, %bb.x ]
  %.sroa.027.0.i519 = phi ptr [ %i.fl, %bb.z ], [ %i.ev, %bb.x ] ; 2 uses
  %i.fg = load i8, ptr %.sroa.027.0.i519, align 1, !noundef !5
  %i.fh = icmp sgt i8 %i.fg, -65
  %i.fi = zext i1 %i.fh to i64
  %i.fj = add i64 %.sroa.013.0.i520, %i.fi        ; 3 uses
  %i.fk = icmp ugt i64 %i.fj, %i.et
  br i1 %i.fk, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %bb.z

bb.z:                                             ; preds = %.lr.ph523
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.027.0.i519, i64 1 ; 2 uses
  %i.fm = add nuw i64 %.sroa.013.0.i521, 1
  %i.fn = icmp eq ptr %i.fl, %i.fc
  br i1 %i.fn, label %._crit_edge524, label %.lr.ph523

._crit_edge524:                                   ; preds = %bb.z, %bb.x
  %.sroa.020.0.i.lcssa = phi i64 [ 0, %bb.x ], [ %i.fj, %bb.z ] ; 3 uses
  %i.fo = sub i64 %i.et, %.sroa.020.0.i.lcssa
  %i.fp = lshr i64 %i.fo, 4
  %..i198 = tail call noundef i64 @llvm.umin.i64(i64 %i.fp, i64 %i.fb) ; 2 uses
  %i.fq = and i64 %..i198, 576460752303423484     ; 2 uses
  %.not51.i527 = icmp eq i64 %i.fq, 0
  br i1 %.not51.i527, label %._crit_edge534, label %.lr.ph533

._crit_edge534:                                   ; preds = %.lr.ph533, %._crit_edge524
  %.sroa.020.1.i.lcssa = phi i64 [ %.sroa.020.0.i.lcssa, %._crit_edge524 ], [ %i.ho, %.lr.ph533 ] ; 2 uses
  %.sroa.013.1.i.lcssa = phi i64 [ %i.ex, %._crit_edge524 ], [ %i.hp, %.lr.ph533 ] ; 2 uses
  %i.fr = and i64 %..i198, 1152921504606846972    ; 4 uses
  %i.fs = icmp ugt i64 %i.fr, %i.fb
  br i1 %i.fs, label %bb.ab, label %bb.aa, !prof !13

bb.aa:                                            ; preds = %._crit_edge534
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %i.ez, i64 %i.fb
  %i.fu = icmp samesign eq i64 %i.fr, %i.fb
  br i1 %i.fu, label %._crit_edge542, label %.lr.ph541.preheader

.lr.ph541.preheader:                              ; preds = %bb.aa
  %i.fv = getelementptr inbounds nuw [16 x i8], ptr %i.ez, i64 %i.fr
  br label %.lr.ph541

bb.ab:                                            ; preds = %._crit_edge534
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.fr, i64 noundef %i.fb, i64 noundef %i.fb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #16
  unreachable

.lr.ph541:                                        ; preds = %.lr.ph541.preheader, %bb.ac
  %.sroa.040.0.i539 = phi ptr [ %i.gc, %bb.ac ], [ %i.fv, %.lr.ph541.preheader ] ; 2 uses
  %.sroa.013.2.i538 = phi i64 [ %i.gd, %bb.ac ], [ %.sroa.013.1.i.lcssa, %.lr.ph541.preheader ] ; 2 uses
  %.sroa.020.2.i537 = phi i64 [ %i.gb, %bb.ac ], [ %.sroa.020.1.i.lcssa, %.lr.ph541.preheader ] ; 2 uses
  %i.fw = load <16 x i8>, ptr %.sroa.040.0.i539, align 16
  %i.fx = icmp slt <16 x i8> %i.fw, splat (i8 -64)
  %i.fy = zext <16 x i1> %i.fx to <16 x i8>
  %i.fz = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.fy, <16 x i8> zeroinitializer)
  %.neg472 = add i64 %.sroa.020.2.i537, 16
  %i.ga = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.fz)
  %i.gb = sub i64 %.neg472, %i.ga                 ; 3 uses
  %.not52.i = icmp ult i64 %i.gb, %i.et
  br i1 %.not52.i, label %bb.ac, label %._crit_edge542

bb.ac:                                            ; preds = %.lr.ph541
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.040.0.i539, i64 16 ; 2 uses
  %i.gd = add i64 %.sroa.013.2.i538, 16           ; 2 uses
  %i.ge = icmp eq ptr %i.gc, %i.ft
  br i1 %i.ge, label %._crit_edge542, label %.lr.ph541

._crit_edge542:                                   ; preds = %bb.ac, %.lr.ph541, %bb.aa
  %.sroa.020.2.i.lcssa = phi i64 [ %.sroa.020.1.i.lcssa, %bb.aa ], [ %.sroa.020.2.i537, %.lr.ph541 ], [ %i.gb, %bb.ac ]
  %.sroa.013.2.i.lcssa = phi i64 [ %.sroa.013.1.i.lcssa, %bb.aa ], [ %.sroa.013.2.i538, %.lr.ph541 ], [ %i.gd, %bb.ac ] ; 6 uses
  %i.gf = icmp ugt i64 %.sroa.013.2.i.lcssa, %i.ep
  br i1 %i.gf, label %bb.ae, label %bb.ad, !prof !13

bb.ad:                                            ; preds = %._crit_edge542
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ej
  %i.gh = add nuw nsw i64 %.sroa.0.0.i78, %.sroa.013.2.i.lcssa
  %i.gi = icmp samesign eq i64 %i.gh, %i.ej
  br i1 %i.gi, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %.lr.ph552.preheader

.lr.ph552.preheader:                              ; preds = %bb.ad
  %i.gj = getelementptr inbounds nuw i8, ptr %i.eq, i64 %.sroa.013.2.i.lcssa
  br label %.lr.ph552

bb.ae:                                            ; preds = %._crit_edge542
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.013.2.i.lcssa, i64 noundef range(i64 0, -9223372036854775808) %i.ep, i64 noundef range(i64 0, -9223372036854775808) %i.ep, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #16
  unreachable

.lr.ph552:                                        ; preds = %.lr.ph552.preheader, %bb.af
  %.sroa.036.0.i550 = phi ptr [ %i.gp, %bb.af ], [ %i.gj, %.lr.ph552.preheader ] ; 2 uses
  %.sroa.013.3.i549 = phi i64 [ %i.gq, %bb.af ], [ %.sroa.013.2.i.lcssa, %.lr.ph552.preheader ] ; 2 uses
  %.sroa.020.3.i548 = phi i64 [ %i.gn, %bb.af ], [ %.sroa.020.2.i.lcssa, %.lr.ph552.preheader ]
  %i.gk = load i8, ptr %.sroa.036.0.i550, align 1, !alias.scope !233, !noundef !5
  %i.gl = icmp sgt i8 %i.gk, -65
  %i.gm = zext i1 %i.gl to i64
  %i.gn = add i64 %.sroa.020.3.i548, %i.gm        ; 2 uses
  %i.go = icmp ugt i64 %i.gn, %i.et
  br i1 %i.go, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %bb.af

bb.af:                                            ; preds = %.lr.ph552
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.036.0.i550, i64 1 ; 2 uses
  %i.gq = add i64 %.sroa.013.3.i549, 1
  %i.gr = icmp eq ptr %i.gp, %i.gg
  br i1 %i.gr, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %.lr.ph552

.lr.ph533:                                        ; preds = %._crit_edge524, %.lr.ph533
  %.sroa.5.0.i531 = phi i64 [ %i.hp, %.lr.ph533 ], [ %i.ex, %._crit_edge524 ]
  %.sroa.020.1.i530 = phi i64 [ %i.ho, %.lr.ph533 ], [ %.sroa.020.0.i.lcssa, %._crit_edge524 ]
  %.sroa.030.0.i529 = phi ptr [ %i.gs, %.lr.ph533 ], [ %i.ez, %._crit_edge524 ] ; 5 uses
  %.sroa.020.1.i528 = phi i64 [ %i.gt, %.lr.ph533 ], [ %i.fq, %._crit_edge524 ]
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i529, i64 64
  %i.gt = add i64 %.sroa.020.1.i528, -4           ; 2 uses
  %i.gu = load <16 x i8>, ptr %.sroa.030.0.i529, align 16
  %i.gv = icmp slt <16 x i8> %i.gu, splat (i8 -64)
  %i.gw = zext <16 x i1> %i.gv to <16 x i8>
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i529, i64 16
  %i.gy = load <16 x i8>, ptr %i.gx, align 16
  %i.gz = icmp slt <16 x i8> %i.gy, splat (i8 -64)
  %i.ha = zext <16 x i1> %i.gz to <16 x i8>
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i529, i64 32
  %i.hc = load <16 x i8>, ptr %i.hb, align 16
  %i.hd = icmp slt <16 x i8> %i.hc, splat (i8 -64)
  %i.he = zext <16 x i1> %i.hd to <16 x i8>
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i529, i64 48
  %i.hg = load <16 x i8>, ptr %i.hf, align 16
  %i.hh = icmp slt <16 x i8> %i.hg, splat (i8 -64)
  %i.hi = zext <16 x i1> %i.hh to <16 x i8>
  %i.hj = add nuw nsw <16 x i8> %i.ha, %i.gw
  %i.hk = add nuw nsw <16 x i8> %i.hj, %i.he
  %i.hl = add nuw nsw <16 x i8> %i.hk, %i.hi
  %i.hm = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.hl, <16 x i8> zeroinitializer)
  %.neg471 = add i64 %.sroa.020.1.i530, 64
  %i.hn = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.hm)
  %i.ho = sub i64 %.neg471, %i.hn                 ; 2 uses
  %i.hp = add i64 %.sroa.5.0.i531, 64             ; 2 uses
  %.not51.i = icmp eq i64 %i.gt, 0
  br i1 %.not51.i, label %._crit_edge534, label %.lr.ph533

bb.ag:                                            ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2wCc12Mnjqg_5ropey.exit201
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.0212.0719, i64 1 ; 2 uses
  %i.hr = add nuw nsw i64 %.sroa.8214.0718, 1
  %i.hs = icmp eq ptr %i.hq, %i.fe
  br i1 %i.hs, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2wCc12Mnjqg_5ropey.exit201

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2wCc12Mnjqg_5ropey.exit201: ; preds = %bb.y, %bb.ag
  %.sroa.07.0.i720 = phi i64 [ %i.hw, %bb.ag ], [ 0, %bb.y ]
  %.sroa.0212.0719 = phi ptr [ %i.hq, %bb.ag ], [ %i.eq, %bb.y ] ; 2 uses
  %.sroa.8214.0718 = phi i64 [ %i.hr, %bb.ag ], [ 0, %bb.y ] ; 2 uses
  %i.ht = load i8, ptr %.sroa.0212.0719, align 1, !noundef !5
  %i.hu = icmp sgt i8 %i.ht, -65
  %i.hv = zext i1 %i.hu to i64
  %i.hw = add i64 %.sroa.07.0.i720, %i.hv         ; 2 uses
  %i.hx = icmp ugt i64 %i.hw, %i.et
  br i1 %i.hx, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %bb.ag

_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit: ; preds = %.lr.ph523, %.lr.ph552, %bb.af, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2wCc12Mnjqg_5ropey.exit201, %bb.ag, %bb.y, %bb.ad
  %.sroa.0.0.i = phi i64 [ %.sroa.013.2.i.lcssa, %bb.ad ], [ %i.ep, %bb.ag ], [ %i.ep, %bb.af ], [ %i.ep, %bb.y ], [ %.sroa.8214.0718, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2wCc12Mnjqg_5ropey.exit201 ], [ %.sroa.013.3.i549, %.lr.ph552 ], [ %.sroa.013.0.i521, %.lr.ph523 ] ; 4 uses
  %i.hy = add i64 %.sroa.0.0.i, %.sroa.0.0.i78    ; 22 uses
  br i1 %i.ek, label %bb.ah, label %bb.ak

_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread: ; preds = %.split.i, %bb.w, %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ei, i64 noundef %i.ej, i64 noundef %.sroa.0.0.i78, i64 noundef %i.ej, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #16
  unreachable

bb.ah:                                            ; preds = %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit
  %i.hz = tail call { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %i.n)
  %i.ia = extractvalue { ptr, i64 } %i.hz, 1
  %i.ib = icmp ult i64 %i.hy, %i.ia
  br i1 %i.ib, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB2_8NodeText12remove_range(ptr noalias nofree noundef nonnull align 8 dereferenceable(1000) %i.n, i64 noundef 0, i64 noundef %i.hy)
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  store i8 1, ptr %i.ic, align 8
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 0, ptr %i.id, align 1
  br label %bb.bo

bb.aj:                                            ; preds = %bb.ah
  %i.ie = tail call { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %i.n) ; 2 uses
  %i.if = extractvalue { ptr, i64 } %i.ie, 1      ; 2 uses
  %i.ig = icmp ult i64 %i.hy, %i.if
  br i1 %i.ig, label %bb.al, label %bb.am

bb.ak:                                            ; preds = %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, %bb.al
  %i.ih = tail call { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %i.n)
  %i.ii = extractvalue { ptr, i64 } %i.ih, 1
  %i.ij = icmp eq i64 %i.hy, %i.ii
  br i1 %i.ij, label %bb.ao, label %bb.an

bb.al:                                            ; preds = %bb.aj
  %i.ik = extractvalue { ptr, i64 } %i.ie, 0
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.hy
  %i.im = load i8, ptr %i.il, align 1, !noundef !5
  %i.in = icmp eq i8 %i.im, 10
  br i1 %i.in, label %bb.an, label %bb.ak

bb.am:                                            ; preds = %bb.aj
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.hy, i64 noundef %i.if, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @85) #16
  unreachable

bb.an:                                            ; preds = %bb.ak, %bb.al, %bb.ap
  %.sroa.0.0 = phi i8 [ 1, %bb.al ], [ %i.ja, %bb.ap ], [ 0, %bb.ak ] ; 2 uses
  %i.io = tail call { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %i.n)
  %i.ip = extractvalue { ptr, i64 } %i.io, 1
  %i.iq = sub i64 %i.ip, %.sroa.0.0.i
  %i.ir = icmp ult i64 %.sroa.0.0.i, %i.iq
  br i1 %i.ir, label %bb.as, label %bb.ar

bb.ao:                                            ; preds = %bb.ak
  %i.is = tail call { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %i.n) ; 2 uses
  %i.it = extractvalue { ptr, i64 } %i.is, 1      ; 2 uses
  %i.iu = add i64 %.sroa.0.0.i78, -1              ; 3 uses
  %i.iv = icmp ult i64 %i.iu, %i.it
  br i1 %i.iv, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.iw = extractvalue { ptr, i64 } %i.is, 0
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 %i.iu
  %i.iy = load i8, ptr %i.ix, align 1, !noundef !5
  %i.iz = icmp eq i8 %i.iy, 13
  %i.ja = zext i1 %i.iz to i8
  br label %bb.an

bb.aq:                                            ; preds = %bb.ao
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.iu, i64 noundef %i.it, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #16
  unreachable

bb.ar:                                            ; preds = %bb.an
  tail call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB2_8NodeText12remove_range(ptr noalias nofree noundef nonnull align 8 dereferenceable(1000) %i.n, i64 noundef %.sroa.0.0.i78, i64 noundef %i.hy)
  %i.jb = tail call { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %i.n) ; 2 uses
  %i.jc = extractvalue { ptr, i64 } %i.jb, 0
  %i.jd = extractvalue { ptr, i64 } %i.jb, 1
  tail call fastcc void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9text_infoNtB2_8TextInfo8from_str(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jc, i64 noundef %i.jd) #15
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.0.0, ptr %i.je, align 8
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 0, ptr %i.jf, align 1
  br label %bb.bo

bb.as:                                            ; preds = %bb.an
  %i.jg = load <2 x i64>, ptr %4, align 8
  %i.jh = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ji = load i64, ptr %i.jh, align 8, !noundef !5
  %i.jj = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.jk = load i64, ptr %i.jj, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.jl = tail call { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %i.n) ; 2 uses
  %i.jm = extractvalue { ptr, i64 } %i.jl, 0      ; 4 uses
  %i.jn = extractvalue { ptr, i64 } %i.jl, 1      ; 4 uses
  %i.jo = icmp ugt i64 %.sroa.0.0.i78, %i.hy
  %i.jp = icmp ugt i64 %i.hy, %i.jn
  %or.cond.i108 = or i1 %i.jo, %i.jp
  br i1 %or.cond.i108, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread468, label %bb.at, !prof !236

bb.at:                                            ; preds = %bb.as
  %i.jq = icmp eq i64 %.sroa.0.0.i78, %i.jn
  br i1 %i.jq, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  br i1 %i.ek, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.aw, %bb.au
  %i.jr = icmp eq i64 %i.hy, %i.jn
  br i1 %i.jr, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit

bb.aw:                                            ; preds = %bb.au
  %i.js = getelementptr inbounds nuw i8, ptr %i.jm, i64 %.sroa.0.0.i78
  %i.jt = load i8, ptr %i.js, align 1, !alias.scope !237, !noundef !5
  %i.ju = icmp sgt i8 %i.jt, -65
  br i1 %i.ju, label %bb.av, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread468, !prof !240

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit: ; preds = %bb.av
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.hy
  %i.jw = load i8, ptr %i.jv, align 1, !alias.scope !237, !noundef !5
  %i.jx = icmp sgt i8 %i.jw, -65
  br i1 %i.jx, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread468, !prof !241

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread468: ; preds = %bb.aw, %bb.as, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jm, i64 noundef %i.jn, i64 noundef %.sroa.0.0.i78, i64 noundef %i.hy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @87) #16
  unreachable

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread: ; preds = %bb.av, %bb.at, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jm, i64 %.sroa.0.0.i78
  call fastcc void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9text_infoNtB2_8TextInfo8from_str(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jy, i64 noundef %.sroa.0.0.i) #15
  %i.jz = load <2 x i64>, ptr %i.h, align 16
  %i.ka = sub <2 x i64> %i.jg, %i.jz
  %i.kb = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.kc = load i64, ptr %i.kb, align 16, !noundef !5
  %i.kd = sub i64 %i.ji, %i.kc
  %i.ke = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.kf = load i64, ptr %i.ke, align 8, !noundef !5
  %i.kg = sub i64 %i.jk, %i.kf                    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.kh = tail call { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %i.n)
  %i.ki = extractvalue { ptr, i64 } %i.kh, 1
  %i.kj = icmp ult i64 %i.hy, %i.ki
  br i1 %i.kj, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread
  %i.kk = tail call { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %i.n) ; 2 uses
  %i.kl = extractvalue { ptr, i64 } %i.kk, 1      ; 2 uses
  %i.km = add i64 %i.hy, -1                       ; 3 uses
  %i.kn = icmp ult i64 %i.km, %i.kl
  br i1 %i.kn, label %bb.az, label %bb.ba

bb.ay:                                            ; preds = %bb.bc, %bb.az, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread
  %.sroa.4.0 = phi i64 [ %i.kg, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread ], [ %spec.select, %bb.bc ], [ %i.kg, %bb.az ] ; 3 uses
  br i1 %i.ek, label %bb.be, label %bb.bf

bb.az:                                            ; preds = %bb.ax
  %i.ko = extractvalue { ptr, i64 } %i.kk, 0
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 %i.km
  %i.kq = load i8, ptr %i.kp, align 1, !noundef !5
  %i.kr = icmp eq i8 %i.kq, 13
  br i1 %i.kr, label %bb.bb, label %bb.ay

bb.ba:                                            ; preds = %bb.ax
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.km, i64 noundef %i.kl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #16
  unreachable

bb.bb:                                            ; preds = %bb.az
  %i.ks = tail call { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %i.n) ; 2 uses
  %i.kt = extractvalue { ptr, i64 } %i.ks, 1      ; 2 uses
  %i.ku = icmp ult i64 %i.hy, %i.kt
  br i1 %i.ku, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.kv = extractvalue { ptr, i64 } %i.ks, 0
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.hy
  %i.kx = load i8, ptr %i.kw, align 1, !noundef !5
  %i.ky = icmp eq i8 %i.kx, 10
  %i.kz = zext i1 %i.ky to i64
  %spec.select = add i64 %i.kg, %i.kz
  br label %bb.ay

bb.bd:                                            ; preds = %bb.bb
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.hy, i64 noundef %i.kt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #16
  unreachable

bb.be:                                            ; preds = %bb.bm, %bb.bj, %bb.bg, %bb.ay
  %.sroa.4.1 = phi i64 [ %.sroa.4.0, %bb.ay ], [ %spec.select72, %bb.bm ], [ %spec.select71, %bb.bj ], [ %.sroa.4.0, %bb.bg ]
  tail call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB2_8NodeText12remove_range(ptr noalias nofree noundef nonnull align 8 dereferenceable(1000) %i.n, i64 noundef %.sroa.0.0.i78, i64 noundef %i.hy)
  store <2 x i64> %i.ka, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.kd, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.4.1, ptr %.sroa.4.0..sroa_idx, align 8
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.0.0, ptr %i.la, align 8
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 0, ptr %i.lb, align 1
  br label %bb.bo

bb.bf:                                            ; preds = %bb.ay
  %i.lc = tail call { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %i.n) ; 2 uses
end_hunk_2
begin_hunk_3_@_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node23get_chunk_at_line_break:bb.a
  %i.m = load <2 x i64>, ptr %i.e, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.n = call { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren5nodes(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.i) ; 2 uses
  %i.o = extractvalue { ptr, i64 } %i.n, 1        ; 2 uses
  %i.p = icmp ult i64 %i.j, %i.o
  br i1 %i.p, label %bb.c, label %bb.d

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.sroa.0.0.lcssa = phi ptr [ %1, %bb.a ], [ %i.ad, %bb.c ]
  %i.q = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.aa, %bb.c ]
  %i.r = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.z, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa, i64 8
  %i.t = call { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %i.s) ; 2 uses
  %i.u = extractvalue { ptr, i64 } %i.t, 0
  %i.v = extractvalue { ptr, i64 } %i.t, 1
  store ptr %i.u, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.v, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %i.q, ptr %i.x, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.r, ptr %.sroa.7.0..sroa_idx, align 8
  ret void

bb.c:                                             ; preds = %bb.b
  %i.y = extractvalue { ptr, i64 } %i.n, 0
  %i.z = add <2 x i64> %i.m, %i.h                 ; 2 uses
  %i.aa = add <2 x i64> %i.k, %i.g                ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.j
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !5, !noundef !5
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 3 uses
  %i.ae = sub i64 %.sroa.03.017, %i.l
  %i.af = load i8, ptr %i.ad, align 8, !range !4, !noundef !5
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.b, label %._crit_edge

bb.d:                                             ; preds = %bb.b
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.j, i64 noundef %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #16
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node28get_chunk_at_utf16_code_unit(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1008) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  %i.b = load i8, ptr %1, align 8, !range !4, !noundef !5
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.sroa.0.020 = phi ptr [ %1, %.lr.ph ], [ %i.ae, %bb.c ]
  %.sroa.03.019 = phi i64 [ %2, %.lr.ph ], [ %i.ag, %bb.c ] ; 2 uses
  %i.g = phi <2 x i64> [ zeroinitializer, %.lr.ph ], [ %i.ab, %bb.c ]
  %i.h = phi <2 x i64> [ zeroinitializer, %.lr.ph ], [ %i.aa, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.020, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren26search_utf16_code_unit_idx(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.i, i64 noundef %.sroa.03.019)
  %i.j = load i64, ptr %i.a, align 8, !noundef !5 ; 3 uses
  %i.k = load i64, ptr %i.e, align 8, !noundef !5
  %i.l = load <2 x i64>, ptr %i.d, align 8
  %i.m = load <2 x i64>, ptr %i.f, align 8
  %i.n = load i64, ptr %i.f, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = call { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren5nodes(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.i) ; 2 uses
  %i.p = extractvalue { ptr, i64 } %i.o, 1        ; 2 uses
  %i.q = icmp ult i64 %i.j, %i.p
  br i1 %i.q, label %bb.c, label %bb.d

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.sroa.0.0.lcssa = phi ptr [ %1, %bb.a ], [ %i.ae, %bb.c ]
  %i.r = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.ab, %bb.c ]
  %i.s = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.aa, %bb.c ]
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa, i64 8
  %i.u = call { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %i.t) ; 2 uses
  %i.v = extractvalue { ptr, i64 } %i.u, 0
  %i.w = extractvalue { ptr, i64 } %i.u, 1
  store ptr %i.v, ptr %0, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.w, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %i.r, ptr %i.y, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.s, ptr %.sroa.7.0..sroa_idx, align 8
  ret void

bb.c:                                             ; preds = %bb.b
  %i.z = extractvalue { ptr, i64 } %i.o, 0
  %i.aa = add <2 x i64> %i.m, %i.h                ; 2 uses
  %i.ab = add <2 x i64> %i.l, %i.g                ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.j
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !5, !noundef !5
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 3 uses
  %i.af = add i64 %i.k, %i.n
  %i.ag = sub i64 %.sroa.03.019, %i.af
  %i.ah = load i8, ptr %i.ae, align 8, !range !4, !noundef !5
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.b, label %._crit_edge

bb.d:                                             ; preds = %bb.b
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.j, i64 noundef %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #16
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node5depth(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1008) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !4, !noundef !5
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.06 = phi ptr [ %i.i, %bb.b ], [ %0, %bb.a ]
  %.sroa.02.05 = phi i64 [ %i.g, %bb.b ], [ 0, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.06, i64 8
  %i.d = tail call { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren5nodes(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.c) ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 1
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.sroa.02.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.g, %bb.b ]
  ret i64 %.sroa.02.0.lcssa

bb.b:                                             ; preds = %.lr.ph
  %i.f = extractvalue { ptr, i64 } %i.d, 0
  %i.g = add i64 %.sroa.02.05, 1                  ; 2 uses
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !range !4, !noundef !5
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %.lr.ph, label %._crit_edge

bb.c:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @100) #16
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node5split(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1008 x i8]) align 8 captures(none) dereferenceable(1008) %0, ptr noalias nofree noundef align 8 dereferenceable(1008) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [1024 x i8], align 8              ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [40 x i8], align 8                ; 5 uses
  %i.e = alloca [1008 x i8], align 8              ; 7 uses
  %i.f = alloca [968 x i8], align 8               ; 7 uses
  %i.g = alloca [40 x i8], align 8                ; 5 uses
  %i.h = load i8, ptr %1, align 8, !range !4, !noundef !5
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren15search_char_idx(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.j, i64 noundef %2)
  %i.k = load i64, ptr %i.g, align 8, !noundef !5 ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !5 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.n = call { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4info(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.j) ; 2 uses
  %i.o = extractvalue { ptr, i64 } %i.n, 1        ; 2 uses
  %i.p = icmp ult i64 %i.k, %i.o
  br i1 %i.p, label %bb.o, label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.q = tail call { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %i.j) ; 2 uses
  %i.r = extractvalue { ptr, i64 } %i.q, 0        ; 6 uses
  %i.s = extractvalue { ptr, i64 } %i.q, 1        ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !267)
  %i.t = icmp samesign ult i64 %i.s, 17
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !267
  call void @_RINvMNtCskKLDkoKarTP_4core5sliceSh8align_toNtNtNtB5_9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef range(i64 0, -9223372036854775808) %i.s)
  %i.u = load ptr, ptr %i.a, align 8, !noalias !267, !nonnull !5, !noundef !5 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = load i64, ptr %i.v, align 8, !noalias !267, !noundef !5 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !noalias !267, !nonnull !5, !align !37, !noundef !5 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !noalias !267, !noundef !5 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !267
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w
  %i.ac = icmp samesign eq i64 %i.w, 0
  br i1 %i.ac, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %i.ae = icmp samesign eq i64 %i.s, 0
  br i1 %i.ae, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %.lr.ph265

.lr.ph:                                           ; preds = %bb.d, %bb.f
  %.sroa.013.0.i189 = phi i64 [ %i.al, %bb.f ], [ 0, %bb.d ] ; 2 uses
  %.sroa.013.0.i188 = phi i64 [ %i.ai, %bb.f ], [ 0, %bb.d ]
  %.sroa.027.0.i187 = phi ptr [ %i.ak, %bb.f ], [ %i.u, %bb.d ] ; 2 uses
  %i.af = load i8, ptr %.sroa.027.0.i187, align 1, !noundef !5
  %i.ag = icmp sgt i8 %i.af, -65
  %i.ah = zext i1 %i.ag to i64
  %i.ai = add i64 %.sroa.013.0.i188, %i.ah        ; 3 uses
  %i.aj = icmp ugt i64 %i.ai, %2
  br i1 %i.aj, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.027.0.i187, i64 1 ; 2 uses
  %i.al = add nuw i64 %.sroa.013.0.i189, 1
  %i.am = icmp eq ptr %i.ak, %i.ab
  br i1 %i.am, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.f, %bb.d
  %.sroa.020.0.i.lcssa = phi i64 [ 0, %bb.d ], [ %i.ai, %bb.f ] ; 3 uses
  %i.an = sub i64 %2, %.sroa.020.0.i.lcssa
  %i.ao = lshr i64 %i.an, 4
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.ao, i64 %i.aa) ; 2 uses
  %i.ap = and i64 %..i, 576460752303423484        ; 2 uses
  %.not51.i191 = icmp eq i64 %i.ap, 0
  br i1 %.not51.i191, label %._crit_edge198, label %.lr.ph197

._crit_edge198:                                   ; preds = %.lr.ph197, %._crit_edge
  %.sroa.020.1.i.lcssa = phi i64 [ %.sroa.020.0.i.lcssa, %._crit_edge ], [ %i.cm, %.lr.ph197 ] ; 2 uses
  %.sroa.013.1.i.lcssa = phi i64 [ %i.w, %._crit_edge ], [ %i.cn, %.lr.ph197 ] ; 2 uses
  %i.aq = and i64 %..i, 1152921504606846972       ; 4 uses
  %i.ar = icmp ugt i64 %i.aq, %i.aa
  br i1 %i.ar, label %bb.h, label %bb.g, !prof !13

bb.g:                                             ; preds = %._crit_edge198
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.aa
  %i.at = icmp samesign eq i64 %i.aq, %i.aa
  br i1 %i.at, label %._crit_edge206, label %.lr.ph205.preheader

.lr.ph205.preheader:                              ; preds = %bb.g
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.aq
  br label %.lr.ph205

bb.h:                                             ; preds = %._crit_edge198
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.aq, i64 noundef %i.aa, i64 noundef %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #16
  unreachable

.lr.ph205:                                        ; preds = %.lr.ph205.preheader, %bb.i
  %.sroa.040.0.i203 = phi ptr [ %i.bb, %bb.i ], [ %i.au, %.lr.ph205.preheader ] ; 2 uses
  %.sroa.013.2.i202 = phi i64 [ %i.bc, %bb.i ], [ %.sroa.013.1.i.lcssa, %.lr.ph205.preheader ] ; 2 uses
  %.sroa.020.2.i201 = phi i64 [ %i.ba, %bb.i ], [ %.sroa.020.1.i.lcssa, %.lr.ph205.preheader ] ; 2 uses
  %i.av = load <16 x i8>, ptr %.sroa.040.0.i203, align 16
  %i.aw = icmp slt <16 x i8> %i.av, splat (i8 -64)
  %i.ax = zext <16 x i1> %i.aw to <16 x i8>
  %i.ay = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.ax, <16 x i8> zeroinitializer)
  %.neg182 = add i64 %.sroa.020.2.i201, 16
  %i.az = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.ay)
  %i.ba = sub i64 %.neg182, %i.az                 ; 3 uses
  %.not52.i = icmp ult i64 %i.ba, %2
  br i1 %.not52.i, label %bb.i, label %._crit_edge206

bb.i:                                             ; preds = %.lr.ph205
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.040.0.i203, i64 16 ; 2 uses
  %i.bc = add i64 %.sroa.013.2.i202, 16           ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.as
  br i1 %i.bd, label %._crit_edge206, label %.lr.ph205

._crit_edge206:                                   ; preds = %bb.i, %.lr.ph205, %bb.g
  %.sroa.020.2.i.lcssa = phi i64 [ %.sroa.020.1.i.lcssa, %bb.g ], [ %.sroa.020.2.i201, %.lr.ph205 ], [ %i.ba, %bb.i ]
  %.sroa.013.2.i.lcssa = phi i64 [ %.sroa.013.1.i.lcssa, %bb.g ], [ %.sroa.013.2.i202, %.lr.ph205 ], [ %i.bc, %bb.i ] ; 5 uses
  %i.be = icmp ugt i64 %.sroa.013.2.i.lcssa, %i.s
  br i1 %i.be, label %bb.k, label %bb.j, !prof !13

bb.j:                                             ; preds = %._crit_edge206
  %i.bf = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s
  %i.bg = icmp samesign eq i64 %.sroa.013.2.i.lcssa, %i.s
  br i1 %i.bg, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %.lr.ph216.preheader

.lr.ph216.preheader:                              ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.013.2.i.lcssa
  br label %.lr.ph216

bb.k:                                             ; preds = %._crit_edge206
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.013.2.i.lcssa, i64 noundef range(i64 0, -9223372036854775808) %i.s, i64 noundef range(i64 0, -9223372036854775808) %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #16
  unreachable

.lr.ph216:                                        ; preds = %.lr.ph216.preheader, %bb.l
  %.sroa.036.0.i214 = phi ptr [ %i.bn, %bb.l ], [ %i.bh, %.lr.ph216.preheader ] ; 2 uses
  %.sroa.013.3.i213 = phi i64 [ %i.bo, %bb.l ], [ %.sroa.013.2.i.lcssa, %.lr.ph216.preheader ] ; 2 uses
  %.sroa.020.3.i212 = phi i64 [ %i.bl, %bb.l ], [ %.sroa.020.2.i.lcssa, %.lr.ph216.preheader ]
  %i.bi = load i8, ptr %.sroa.036.0.i214, align 1, !alias.scope !267, !noundef !5
  %i.bj = icmp sgt i8 %i.bi, -65
  %i.bk = zext i1 %i.bj to i64
  %i.bl = add i64 %.sroa.020.3.i212, %i.bk        ; 2 uses
  %i.bm = icmp ugt i64 %i.bl, %2
  br i1 %i.bm, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph216
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.036.0.i214, i64 1 ; 2 uses
  %i.bo = add i64 %.sroa.013.3.i213, 1
  %i.bp = icmp eq ptr %i.bn, %i.bf
  br i1 %i.bp, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %.lr.ph216

.lr.ph197:                                        ; preds = %._crit_edge, %.lr.ph197
  %.sroa.5.0.i195 = phi i64 [ %i.cn, %.lr.ph197 ], [ %i.w, %._crit_edge ]
  %.sroa.020.1.i194 = phi i64 [ %i.cm, %.lr.ph197 ], [ %.sroa.020.0.i.lcssa, %._crit_edge ]
  %.sroa.030.0.i193 = phi ptr [ %i.bq, %.lr.ph197 ], [ %i.y, %._crit_edge ] ; 5 uses
  %.sroa.020.1.i192 = phi i64 [ %i.br, %.lr.ph197 ], [ %i.ap, %._crit_edge ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i193, i64 64
  %i.br = add i64 %.sroa.020.1.i192, -4           ; 2 uses
  %i.bs = load <16 x i8>, ptr %.sroa.030.0.i193, align 16
  %i.bt = icmp slt <16 x i8> %i.bs, splat (i8 -64)
  %i.bu = zext <16 x i1> %i.bt to <16 x i8>
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i193, i64 16
  %i.bw = load <16 x i8>, ptr %i.bv, align 16
  %i.bx = icmp slt <16 x i8> %i.bw, splat (i8 -64)
  %i.by = zext <16 x i1> %i.bx to <16 x i8>
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i193, i64 32
  %i.ca = load <16 x i8>, ptr %i.bz, align 16
  %i.cb = icmp slt <16 x i8> %i.ca, splat (i8 -64)
  %i.cc = zext <16 x i1> %i.cb to <16 x i8>
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i193, i64 48
  %i.ce = load <16 x i8>, ptr %i.cd, align 16
  %i.cf = icmp slt <16 x i8> %i.ce, splat (i8 -64)
  %i.cg = zext <16 x i1> %i.cf to <16 x i8>
  %i.ch = add nuw nsw <16 x i8> %i.by, %i.bu
  %i.ci = add nuw nsw <16 x i8> %i.ch, %i.cc
  %i.cj = add nuw nsw <16 x i8> %i.ci, %i.cg
  %i.ck = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.cj, <16 x i8> zeroinitializer)
  %.neg = add i64 %.sroa.020.1.i194, 64
  %i.cl = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.ck)
  %i.cm = sub i64 %.neg, %i.cl                    ; 2 uses
  %i.cn = add i64 %.sroa.5.0.i195, 64             ; 2 uses
  %.not51.i = icmp eq i64 %i.br, 0
  br i1 %.not51.i, label %._crit_edge198, label %.lr.ph197

bb.m:                                             ; preds = %.lr.ph265
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.0170262, i64 1 ; 2 uses
  %i.cp = add nuw nsw i64 %.sroa.8.0261, 1
  %i.cq = icmp eq ptr %i.co, %i.ad
  br i1 %i.cq, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %.lr.ph265

.lr.ph265:                                        ; preds = %bb.e, %bb.m
  %.sroa.07.0.i263 = phi i64 [ %i.cu, %bb.m ], [ 0, %bb.e ]
  %.sroa.0.0170262 = phi ptr [ %i.co, %bb.m ], [ %i.r, %bb.e ] ; 2 uses
  %.sroa.8.0261 = phi i64 [ %i.cp, %bb.m ], [ 0, %bb.e ] ; 2 uses
  %i.cr = load i8, ptr %.sroa.0.0170262, align 1, !noundef !5
  %i.cs = icmp sgt i8 %i.cr, -65
  %i.ct = zext i1 %i.cs to i64
  %i.cu = add i64 %.sroa.07.0.i263, %i.ct         ; 2 uses
  %i.cv = icmp ugt i64 %i.cu, %2
  br i1 %i.cv, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %bb.m

_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit: ; preds = %.lr.ph, %.lr.ph216, %bb.l, %bb.m, %.lr.ph265, %bb.e, %bb.j
  %.sroa.0.0.i = phi i64 [ %i.s, %bb.j ], [ %i.s, %bb.e ], [ %i.s, %bb.l ], [ %.sroa.8.0261, %.lr.ph265 ], [ %i.s, %bb.m ], [ %.sroa.013.3.i213, %.lr.ph216 ], [ %.sroa.013.0.i189, %.lr.ph ]
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB2_8NodeText9split_off(ptr noalias nofree noundef nonnull sret([1000 x i8]) align 8 captures(none) dereferenceable(1000) %i.cw, ptr noalias nofree noundef nonnull align 8 dereferenceable(1000) %i.j, i64 noundef %.sroa.0.0.i)
  store i8 0, ptr %0, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.r, %bb.aj, %bb.t, %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit
  ret void

bb.o:                                             ; preds = %bb.b
  %i.cx = icmp eq i64 %2, %i.m
  br i1 %i.cx, label %bb.r, label %bb.q

bb.p:                                             ; preds = %bb.b
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.k, i64 noundef %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @101) #16
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.cy = extractvalue { ptr, i64 } %i.n, 0
  %i.cz = getelementptr inbounds nuw [32 x i8], ptr %i.cy, i64 %i.k
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load i64, ptr %i.da, align 8, !noundef !5
  %i.dc = add i64 %i.db, %i.m
  %i.dd = icmp eq i64 %2, %i.dc
  %i.de = add nuw i64 %i.k, 1                     ; 2 uses
  br i1 %i.dd, label %bb.t, label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren9split_off(ptr noalias nofree noundef nonnull sret([968 x i8]) align 8 captures(none) dereferenceable(968) %i.df, ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.j, i64 noundef %i.k)
  store i8 1, ptr %0, align 8
  br label %bb.n

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren9split_off(ptr noalias nofree noundef nonnull sret([968 x i8]) align 8 captures(none) dereferenceable(968) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.j, i64 noundef %i.de)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.dg = invoke { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren9nodes_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.j)
          to label %bb.v unwind label %bb.u       ; 2 uses

bb.t:                                             ; preds = %bb.q
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren9split_off(ptr noalias nofree noundef nonnull sret([968 x i8]) align 8 captures(none) dereferenceable(968) %i.dh, ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.j, i64 noundef %i.de)
  store i8 1, ptr %0, align 8
  br label %bb.n

.body.thread:                                     ; preds = %bb.ae, %.body, %bb.ak, %bb.u
  %.pn = phi { ptr, i32 } [ %lpad.thr_comm, %bb.ak ], [ %lpad.thr_comm.split-lp, %.body ], [ %i.di, %bb.u ], [ %i.dz, %bb.ae ]
  invoke void @_RNvXs_NtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB4_20NodeChildrenInternalNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children12NodeChildrenEBH_.exit unwind label %bb.al

bb.u:                                             ; preds = %bb.z, %bb.x, %bb.w, %bb.s
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.v:                                             ; preds = %bb.s
  %i.dj = extractvalue { ptr, i64 } %i.dg, 1      ; 2 uses
  %i.dk = icmp ult i64 %i.k, %i.dj
  br i1 %i.dk, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dl = extractvalue { ptr, i64 } %i.dg, 0
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.k
  %i.dn = invoke fastcc noundef nonnull align 8 ptr @_RNvMsB_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE8make_mutBM_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.dm)
          to label %bb.z unwind label %bb.u

bb.x:                                             ; preds = %bb.v
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.k, i64 noundef %i.dj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #17
          to label %bb.y unwind label %bb.u

bb.y:                                             ; preds = %bb.x
  unreachable

bb.z:                                             ; preds = %bb.w
  %i.do = sub i64 %2, %i.m
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node5split(ptr noalias nofree noundef nonnull sret([1008 x i8]) align 8 captures(none) dereferenceable(1008) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(1008) %i.dn, i64 noundef %i.do)
          to label %bb.aa unwind label %bb.u

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.dp = load i8, ptr %i.e, align 8, !range !4, !alias.scope !270, !noalias !273, !noundef !5
  %i.dq = trunc nuw i8 %i.dp to i1
  %i.dr = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  br i1 %i.dq, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren13combined_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.dr)
          to label %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info.exit unwind label %bb.ak

bb.ac:                                            ; preds = %bb.aa
  %i.ds = invoke { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %i.dr)
          to label %.noexc51 unwind label %bb.ak  ; 2 uses

.noexc51:                                         ; preds = %bb.ac
  %i.dt = extractvalue { ptr, i64 } %i.ds, 0
  %i.du = extractvalue { ptr, i64 } %i.ds, 1
  invoke fastcc void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9text_infoNtB2_8TextInfo8from_str(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dt, i64 noundef %i.du) #15
          to label %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info.exit unwind label %bb.ak

.body:                                            ; preds = %bb.ag, %bb.ah, %bb.ai
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info.exit: ; preds = %bb.ab, %.noexc51
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1008) %i.dv, ptr noundef nonnull align 8 dereferenceable(1008) %i.e, i64 1008, i1 false)
  store i64 1, ptr %i.b, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.dw, align 8
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !275
  %i.dx = call noundef align 8 dereferenceable_or_null(1024) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 1024, i64 noundef 8) #18, !noalias !275 ; 3 uses
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %bb.ad, label %bb.ag, !prof !13

bb.ad:                                            ; preds = %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info.exit
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1024) #17
          to label %.noexc53 unwind label %bb.ae

.noexc53:                                         ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.ad
  %i.dz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1024) %i.b) #19
          to label %.body.thread unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.ag:                                            ; preds = %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.dx, ptr noundef nonnull align 8 dereferenceable(1024) %i.b, i64 1024, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.dx, ptr %i.eb, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren6insert(ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.f, i64 noundef 0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.d)
          to label %bb.ah unwind label %.body

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren17update_child_info(ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.j, i64 noundef %i.k)
          to label %bb.ai unwind label %.body

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren17update_child_info(ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.f, i64 noundef 0)
          to label %bb.aj unwind label %.body

bb.aj:                                            ; preds = %bb.ai
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(968) %i.ec, ptr noundef nonnull align 8 dereferenceable(968) %i.f, i64 968, i1 false)
  store i8 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.n

bb.ak:                                            ; preds = %.noexc51, %bb.ab, %bb.ac
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEBH_(ptr noalias nofree noundef align 8 dereferenceable(1008) %i.e) #19
          to label %.body.thread unwind label %bb.al

bb.al:                                            ; preds = %.body.thread, %bb.ak
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children12NodeChildrenEBH_.exit: ; preds = %.body.thread
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node8children(ptr noalias nofree noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(1008) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !4, !noundef !5
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !58

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.c

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNtCsG258MDvU3F_3std9panicking11begin_panicReEB4_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @103) #16
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9leaf_text(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1008) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !4, !noundef !5
  %i.b = trunc nuw i8 %i.a to i1
end_hunk_3
begin_hunk_4_@_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9text_infoNtB2_8TextInfo8from_str:bb.a
  %i.lq = add <16 x i8> %i.lp, %i.jr              ; 2 uses
  %.sroa.01.0.vec.extract.i = extractelement <2 x i64> %i.ju, i64 0
  %i.lr = icmp eq i64 %.sroa.01.0.vec.extract.i, 0
  %.sroa.01.8.vec.extract.i = extractelement <2 x i64> %i.ju, i64 1
  %i.ls = icmp eq i64 %.sroa.01.8.vec.extract.i, 0
  %.sroa.0.0.i18 = select i1 %i.lr, i1 %i.ls, i1 false
  br i1 %.sroa.0.0.i18, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %bb.ae

bb.ae:                                            ; preds = %.thread
  %i.lt = icmp eq <16 x i8> %i.ji, splat (i8 10)
  %.neg = sext <16 x i1> %i.lt to <16 x i8>
  %.neg533 = shufflevector <16 x i8> %.neg, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %.neg534 = select <16 x i1> %i.js, <16 x i8> %.neg533, <16 x i8> zeroinitializer
  %i.lu = add <16 x i8> %i.lq, %.neg534           ; 4 uses
  %.not535 = icmp ne i64 %.sroa.15.1.i583, 16
  %i.lv = icmp eq i8 %i.jx, 13
  %or.cond692 = select i1 %.not535, i1 %i.lv, i1 false
  br i1 %or.cond692, label %bb.af, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit

bb.af:                                            ; preds = %bb.ae
  %i.lw = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i584, i64 16
  %i.lx = load i8, ptr %i.lw, align 16, !alias.scope !314, !noalias !317, !noundef !5
  %i.ly = icmp eq i8 %i.lx, 10
  br i1 %i.ly, label %bb.ag, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit

bb.ag:                                            ; preds = %bb.af
  %.sroa.0.15.vec.extract.i = extractelement <16 x i8> %i.lu, i64 15
  %i.lz = add i8 %.sroa.0.15.vec.extract.i, -1
  %.sroa.0.15.vec.insert.i = insertelement <16 x i8> %i.lu, i8 %i.lz, i64 15
  br label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit

_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit: ; preds = %bb.ae, %bb.af, %bb.ag, %.thread
  %.sroa.0228.5.in = phi <16 x i8> [ %i.lq, %.thread ], [ %.sroa.0.15.vec.insert.i, %bb.ag ], [ %i.lu, %bb.af ], [ %i.lu, %bb.ae ]
  %i.ma = add <16 x i8> %.sroa.0228.5.in, %i.jg   ; 2 uses
  %i.mb = add i64 %.sroa.028.0.i581, 1            ; 2 uses
  %i.mc = icmp eq i64 %i.mb, 255
  br i1 %i.mc, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit
  %i.md = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.ma, <16 x i8> zeroinitializer) ; 2 uses
  %.sroa.0.0.vec.extract.i28 = extractelement <2 x i64> %i.md, i64 0
  %.sroa.0.8.vec.extract.i29 = extractelement <2 x i64> %i.md, i64 1
  %i.me = add i64 %.sroa.0.8.vec.extract.i29, %.sroa.023.1.i582
  %i.mf = add i64 %i.me, %.sroa.0.0.vec.extract.i28
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit
  %i.mg = phi <16 x i8> [ zeroinitializer, %bb.ah ], [ %i.ma, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit ] ; 2 uses
  %.sroa.028.1.i = phi i64 [ 0, %bb.ah ], [ %i.mb, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit ]
  %.sroa.023.2.i = phi i64 [ %i.mf, %bb.ah ], [ %.sroa.023.1.i582, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit ] ; 2 uses
  %i.mh = add nsw i64 %.sroa.15.1.i583, -16       ; 3 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i584, i64 16 ; 2 uses
  %i.mj = icmp ugt i64 %i.mh, 15
  br i1 %i.mj, label %.lr.ph586, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.preheader

.lr.ph594:                                        ; preds = %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.preheader, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit
  %.sroa.0.0.i8593 = phi i64 [ %i.ne, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit ], [ 0, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.preheader ] ; 5 uses
  %.sroa.012.0.i7592 = phi i64 [ %.sroa.012.1.i, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit ], [ 0, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.preheader ] ; 8 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.lcssa, i64 %.sroa.0.0.i8593 ; 2 uses
  %i.ml = load i8, ptr %i.mk, align 1, !alias.scope !319, !noundef !5 ; 3 uses
  %i.mm = add i8 %i.ml, -10
  %spec.select.i163 = icmp ult i8 %i.mm, 4
  br i1 %spec.select.i163, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph594
  switch i8 %i.ml, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit [
    i8 -62, label %bb.al
    i8 -30, label %bb.an
  ]

bb.ak:                                            ; preds = %.lr.ph594
  %i.mn = add nuw nsw i64 %.sroa.012.0.i7592, 1   ; 3 uses
  %i.mo = icmp eq i8 %i.ml, 13
  br i1 %i.mo, label %bb.aq, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit

bb.al:                                            ; preds = %bb.aj
  %i.mp = add nuw nsw i64 %.sroa.0.0.i8593, 1     ; 2 uses
  %i.mq = icmp samesign ult i64 %i.mp, %.sroa.15.1.i.lcssa
  br i1 %i.mq, label %bb.am, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit

bb.am:                                            ; preds = %bb.al
  %i.mr = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.lcssa, i64 %i.mp
  %i.ms = load i8, ptr %i.mr, align 1, !alias.scope !319, !noundef !5
  %i.mt = icmp eq i8 %i.ms, -123
  %i.mu = zext i1 %i.mt to i64
  %spec.select531 = add nuw nsw i64 %.sroa.012.0.i7592, %i.mu
  br label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit

bb.an:                                            ; preds = %bb.aj
  %i.mv = add nuw i64 %.sroa.0.0.i8593, 2         ; 2 uses
  %i.mw = icmp ult i64 %i.mv, %.sroa.15.1.i.lcssa
  br i1 %i.mw, label %bb.ao, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit

bb.ao:                                            ; preds = %bb.an
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mk, i64 1
  %i.my = load i8, ptr %i.mx, align 1, !alias.scope !319, !noundef !5
  %i.mz = icmp eq i8 %i.my, -128
  br i1 %i.mz, label %bb.ap, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit

bb.ap:                                            ; preds = %bb.ao
  %i.na = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.lcssa, i64 %i.mv
  %i.nb = load i8, ptr %i.na, align 1, !alias.scope !319, !noundef !5
  %.mask.i9 = and i8 %i.nb, -2
  %i.nc = icmp eq i8 %.mask.i9, -88
  %i.nd = zext i1 %i.nc to i64
  %spec.select.i = add nuw nsw i64 %.sroa.012.0.i7592, %i.nd
  br label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit

_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit: ; preds = %bb.am, %bb.al, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.ak, %bb.aj
  %.sroa.012.1.i = phi i64 [ %.sroa.012.0.i7592, %bb.an ], [ %spec.select22.i, %bb.ar ], [ %i.mn, %bb.aq ], [ %i.mn, %bb.ak ], [ %.sroa.012.0.i7592, %bb.al ], [ %.sroa.012.0.i7592, %bb.aj ], [ %spec.select.i, %bb.ap ], [ %.sroa.012.0.i7592, %bb.ao ], [ %spec.select531, %bb.am ] ; 3 uses
  %i.ne = add nuw nsw i64 %.sroa.0.0.i8593, 1     ; 2 uses
  %i.nf = icmp samesign ult i64 %i.ne, %.sroa.15.1.i.lcssa
  %i.ng = icmp ult i64 %.sroa.012.1.i, %.sroa.15.1.i.lcssa
  %or.cond.i = select i1 %i.nf, i1 %i.ng, i1 false
  br i1 %or.cond.i, label %.lr.ph594, label %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit

bb.aq:                                            ; preds = %bb.ak
  %i.nh = add nuw nsw i64 %.sroa.0.0.i8593, 1     ; 2 uses
  %i.ni = icmp samesign ult i64 %i.nh, %.sroa.15.1.i.lcssa
  br i1 %i.ni, label %bb.ar, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit

bb.ar:                                            ; preds = %bb.aq
  %i.nj = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.lcssa, i64 %i.nh
  %i.nk = load i8, ptr %i.nj, align 1, !alias.scope !319, !noundef !5
  %i.nl = icmp eq i8 %i.nk, 10
  %spec.select22.i = select i1 %i.nl, i64 %.sroa.012.0.i7592, i64 %i.mn
  br label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit

_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit: ; preds = %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, %bb.c, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.preheader
  %.sroa.023.1.i.lcssa674 = phi i64 [ %.sroa.023.1.i.lcssa, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.preheader ], [ 0, %bb.c ], [ %.sroa.023.1.i.lcssa, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit ]
  %.lcssa673 = phi <16 x i8> [ %.lcssa, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.preheader ], [ zeroinitializer, %bb.c ], [ %.lcssa, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit ]
  %.sroa.0.3.i640654672 = phi i64 [ %.sroa.0.3.i, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.preheader ], [ 0, %bb.c ], [ %.sroa.0.3.i, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit ]
  %.sroa.0.0.i629638655671 = phi i64 [ %.sroa.0.0.i629, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.preheader ], [ 0, %bb.c ], [ %.sroa.0.0.i629, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit ]
  %.sroa.012.0.i7.lcssa = phi i64 [ 0, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.preheader ], [ 0, %bb.c ], [ %.sroa.012.1.i, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit ]
  %i.nm = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %.lcssa673, <16 x i8> zeroinitializer) ; 2 uses
  %.sroa.0.0.vec.extract.i30 = extractelement <2 x i64> %i.nm, i64 0
  %.sroa.0.8.vec.extract.i31 = extractelement <2 x i64> %i.nm, i64 1
  %i.nn = add i64 %.sroa.012.0.i7.lcssa, %.sroa.023.1.i.lcssa674
  %i.no = add i64 %i.nn, %.sroa.0.8.vec.extract.i31
  %i.np = add i64 %i.no, %.sroa.0.0.vec.extract.i30
  store i64 %2, ptr %0, align 8
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.i629638655671, ptr %i.nq, align 8
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.3.i640654672, ptr %i.nr, align 8
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.np, ptr %i.ns, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMsB_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE8make_mutBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.e = cmpxchg ptr %i.d, i64 1, i64 0 acquire monotonic, align 8
  %i.f = extractvalue { i64, i1 } %i.e, 1
  %i.g = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 8 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load atomic i64, ptr %i.h monotonic, align 8
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.e, label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.l = tail call noundef nonnull ptr @_RNvMsk_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE17clone_from_ref_inBM_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.k) ; 3 uses
  %i.m = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !322
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit unwind label %bb.l

bb.e:                                             ; preds = %bb.b
  store atomic i64 1, ptr %i.g release, align 8
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.g, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  invoke void @_RNvMs1m_NtCsexYYUdYSQU6_5alloc4syncINtB6_15UniqueArcUninitNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeNtNtB8_5alloc6GlobalE3newB10_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.o)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.p = load i64, ptr %i.b, align 8, !range !327, !noundef !5 ; 2 uses
  %i.q = add nuw i64 %i.p, 15
  %i.r = sub i64 0, %i.p
  %i.s = and i64 %i.q, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !5, !noundef !5
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1008) %i.v, ptr noundef nonnull align 8 dereferenceable(1008) %i.o, i64 1008, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.g, ptr %i.a, align 8
  %i.w = invoke noundef nonnull ptr @_RNvMs1m_NtCsexYYUdYSQU6_5alloc4syncINtB6_15UniqueArcUninitNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeNtNtB8_5alloc6GlobalE8into_arcB10_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1g_.exit7 unwind label %bb.h ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsO_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.thread unwind label %bb.j

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1g_.exit7: ; preds = %bb.g
  store ptr %i.w, ptr %0, align 8
  call void @_RNvXsO_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1g_.exit7, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit
  %i.y = phi ptr [ %i.g, %bb.e ], [ %i.w, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1g_.exit7 ], [ %i.l, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  ret ptr %i.z

bb.j:                                             ; preds = %bb.k, %bb.h
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

.thread:                                          ; preds = %bb.k, %bb.h, %bb.l
  %.pn3 = phi { ptr, i32 } [ %i.ac, %bb.l ], [ %i.x, %bb.h ], [ %i.ab, %bb.k ]
  resume { ptr, i32 } %.pn3

bb.k:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNvMsB_NtCsexYYUdYSQU6_5alloc4syncINtB8_3ArcppE8make_mutINtB2_5GuardNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.thread unwind label %bb.j

bb.l:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup
  store ptr %i.l, ptr %0, align 8
  br label %.thread

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit: ; preds = %bb.c, %bb.d
  store ptr %i.l, ptr %0, align 8
  br label %bb.i
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren5nodes(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(968)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren13combined_info(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(968)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren14compact_leaves(ptr noalias nofree noundef align 8 dereferenceable(968)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4info(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(968)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren9nodes_mut(ptr noalias nofree noundef align 8 dereferenceable(968)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren8info_mut(ptr noalias nofree noundef align 8 dereferenceable(968)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren12insert_split(ptr dead_on_unwind noalias nofree noundef writable sret([968 x i8]) align 8 captures(address) dereferenceable(968), ptr noalias nofree noundef align 8 dereferenceable(968), i64 noundef, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren6insert(ptr noalias nofree noundef align 8 dereferenceable(968), i64 noundef, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCskKLDkoKarTP_4core5sliceSh8align_toNtNtNtB5_9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsv_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBP_(ptr noalias nofree noundef align 8 dereferenceable(1000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsO_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNvMsB_NtCsexYYUdYSQU6_5alloc4syncINtB8_3ArcppE8make_mutINtB2_5GuardNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1d_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB4_20NodeChildrenInternalNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(968)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB2_8NodeText16insert_str_split(ptr dead_on_unwind noalias nofree noundef writable sret([1000 x i8]) align 8 captures(none) dereferenceable(1000), ptr noalias nofree noundef align 8 dereferenceable(1000), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB2_8NodeText10insert_str(ptr noalias nofree noundef align 8 dereferenceable(1000), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren6remove(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(968), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren16merge_distribute(ptr noalias nofree noundef align 8 dereferenceable(968), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RINvNtCsG258MDvU3F_3std9panicking11begin_panicReEB4_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren15search_byte_idx(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(968), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren17update_child_info(ptr noalias nofree noundef align 8 dereferenceable(968), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren11get_two_mut(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(968), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtCs2wCc12Mnjqg_5ropey4tree9node_text16fix_segment_seam(ptr noalias nofree noundef align 8 dereferenceable(1000), ptr noalias nofree noundef align 8 dereferenceable(1000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren8data_mut(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(968)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren15search_char_idx(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(968), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RINvNtCskKLDkoKarTP_4core9panicking13assert_failedjjEB4_(i8 noundef range(i8 0, 3), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef, ptr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren15distribute_with(ptr noalias nofree noundef align 8 dereferenceable(968), ptr noalias nofree noundef align 8 dereferenceable(968)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4push(ptr noalias nofree noundef align 8 dereferenceable(968), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren10push_split(ptr dead_on_unwind noalias nofree noundef writable sret([968 x i8]) align 8 captures(none) dereferenceable(968), ptr noalias nofree noundef align 8 dereferenceable(968), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4iter(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(968)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RINvNtCskKLDkoKarTP_4core9panicking13assert_failedNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoBM_EBS_(i8 noundef range(i8 0, 3), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef, ptr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren3pop(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(968)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB2_8NodeText12remove_range(ptr noalias nofree noundef align 8 dereferenceable(1000), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren21search_line_break_idx(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(968), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren26search_utf16_code_unit_idx(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(968), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB2_8NodeText9split_off(ptr dead_on_unwind noalias nofree noundef writable sret([1000 x i8]) align 8 captures(none) dereferenceable(1000), ptr noalias nofree noundef align 8 dereferenceable(1000), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren9split_off(ptr dead_on_unwind noalias nofree noundef writable sret([968 x i8]) align 8 captures(none) dereferenceable(968), ptr noalias nofree noundef align 8 dereferenceable(968), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #2
end_hunk_4
