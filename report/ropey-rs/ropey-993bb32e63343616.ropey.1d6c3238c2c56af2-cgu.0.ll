Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ropey-rs/original/ropey-993bb32e63343616.ropey.1d6c3238c2c56af2-cgu.0?download=true
inline.NumInlined: 438
inline.NumDeleted: 74
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB3_4Node18edit_chunk_at_charNCNvMNtB7_4ropeNtB1a_4Rope15insert_internals_0EB7_:bb.a
  %i.cj = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.bq, ptr %i.cj, align 8
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren12insert_split(ptr noalias nofree noundef nonnull sret([968 x i8]) align 8 captures(address) dereferenceable(968) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.n, i64 noundef %i.ci, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren13combined_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.f)
          to label %bb.aa unwind label %bb.ag

bb.z:                                             ; preds = %bb.w
  %i.ck = add nuw i64 %.sroa.02.0.i.lcssa, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %.sroa.028.0.copyload, ptr %i.g, align 8
  %.sroa.631.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.sroa.631.0.copyload, ptr %.sroa.631.0..sroa_idx34, align 8
  %.sroa.7.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx38, align 8
  %.sroa.840.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 %.sroa.840.0.copyload, ptr %.sroa.840.0..sroa_idx43, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.bq, ptr %i.cl, align 8
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren6insert(ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.n, i64 noundef %i.ck, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.cm = load i64, ptr %3, align 8, !noundef !5
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !noundef !5
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cq = load i64, ptr %i.cp, align 8, !noundef !5
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 24
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
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !31
  %i.dh = call noundef align 8 dereferenceable_or_null(1024) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 1024, i64 noundef 8) #18, !noalias !31 ; 3 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %bb.ac, label %bb.af, !prof !7

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
  %i.do = atomicrmw add ptr %i.bk, i64 -1 release, align 8, !noalias !32
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
  %i.b = load i8, ptr %i.a, align 8, !range !4, !alias.scope !35, !noundef !5
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
  %i.h = load ptr, ptr %1, align 8, !nonnull !5, !align !8, !noundef !5
  %i.i = load i64, ptr %i.h, align 8, !noundef !5
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.s, %bb.o, %bb.b, %bb.a
  %i.j = tail call { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %4) ; 2 uses
  %i.k = extractvalue { ptr, i64 } %i.j, 0        ; 7 uses
  %i.l = extractvalue { ptr, i64 } %i.j, 1        ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42)
  %i.m = icmp samesign ult i64 %i.l, 17
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !42
  call void @_RINvMNtCskKLDkoKarTP_4core5sliceSh8align_toNtNtNtB5_9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef range(i64 0, -9223372036854775808) %i.l)
  %i.n = load ptr, ptr %i.a, align 8, !noalias !42, !nonnull !5, !noundef !5 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !42, !noundef !5 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !noalias !42, !nonnull !5, !align !9, !noundef !5 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.t = load i64, ptr %i.s, align 8, !noalias !42, !noundef !5 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !42
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p
  %i.v = icmp samesign eq i64 %i.p, 0
  br i1 %i.v, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k), "nonnull"(ptr %i.k) ]
  %i.x = icmp samesign eq i64 %i.l, 0
  br i1 %i.x, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %.lr.ph299

.lr.ph:                                           ; preds = %bb.d, %bb.f
  %.sroa.013.0.i220 = phi i64 [ %i.ae, %bb.f ], [ 0, %bb.d ] ; 2 uses
  %.sroa.020.0.i219 = phi i64 [ %i.ab, %bb.f ], [ 0, %bb.d ]
  %.sroa.027.0.i218 = phi ptr [ %i.ad, %bb.f ], [ %i.n, %bb.d ] ; 2 uses
  %i.y = load i8, ptr %.sroa.027.0.i218, align 1, !noundef !5
  %i.z = icmp sgt i8 %i.y, -65
  %i.aa = zext i1 %i.z to i64
  %i.ab = add i64 %.sroa.020.0.i219, %i.aa        ; 3 uses
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
  br i1 %i.ak, label %bb.h, label %bb.g, !prof !7

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
  br i1 %i.ax, label %bb.k, label %bb.j, !prof !7

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
  %i.bb = load i8, ptr %.sroa.036.0.i245, align 1, !alias.scope !42, !noundef !5
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
  %.sroa.013.1.i226 = phi i64 [ %i.cg, %.lr.ph228 ], [ %i.p, %._crit_edge ]
  %.sroa.020.1.i225 = phi i64 [ %i.cf, %.lr.ph228 ], [ %.sroa.020.0.i.lcssa, %._crit_edge ]
  %.sroa.030.0.i224 = phi ptr [ %i.bj, %.lr.ph228 ], [ %i.r, %._crit_edge ] ; 5 uses
  %.sroa.5.0.i223 = phi i64 [ %i.bk, %.lr.ph228 ], [ %i.ai, %._crit_edge ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i224, i64 64
  %i.bk = add i64 %.sroa.5.0.i223, -4             ; 2 uses
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
  %i.cg = add i64 %.sroa.013.1.i226, 64           ; 2 uses
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
  %i.cs = load ptr, ptr %i.cr, align 8, !nonnull !5, !align !8, !noundef !5 ; 6 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 4 uses
  %i.cu = load i64, ptr %i.ct, align 8, !noundef !5 ; 3 uses
  %i.cv = add i64 %i.cu, %i.cq
  %i.cw = icmp ult i64 %i.cv, 985
  br i1 %i.cw, label %bb.w, label %bb.v

bb.n:                                             ; preds = %bb.b
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !nonnull !5, !align !8, !noundef !5 ; 5 uses
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
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #16
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
end_hunk_0
begin_hunk_1_@_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node15append_at_depth:bb.a
  %i.bc = tail call noundef ptr @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node15append_at_depth(ptr noalias nofree noundef nonnull align 8 dereferenceable(1008) %i.ba, ptr noundef nonnull %1, i64 noundef %i.bb) ; 12 uses
  store ptr %i.bc, ptr %i.h, align 8
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren17update_child_info(ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.aq, i64 noundef %i.au)
          to label %bb.x unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %.not54 = icmp eq ptr %i.bc, null
  br i1 %.not54, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit31, label %bb.an

bb.x:                                             ; preds = %bb.v
  %.not = icmp eq ptr %i.bc, null
  br i1 %.not, label %bb.ak, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.bc, ptr %i.g, align 8
  %i.be = load i8, ptr %i.ar, align 8, !noundef !5
  %i.bf = icmp ult i8 %i.be, 24
  br i1 %i.bf, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bh = load i8, ptr %i.bg, align 8, !range !4, !alias.scope !152, !noundef !5
  %i.bi = trunc nuw i8 %i.bh to i1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 24 ; 2 uses
  br i1 %i.bi, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren13combined_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.bj)
          to label %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info.exit unwind label %bb.al

bb.ab:                                            ; preds = %bb.z
  %i.bk = invoke { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %i.bj)
          to label %.noexc19 unwind label %bb.al  ; 2 uses

.noexc19:                                         ; preds = %bb.ab
  %i.bl = extractvalue { ptr, i64 } %i.bk, 0
  %i.bm = extractvalue { ptr, i64 } %i.bk, 1
  invoke fastcc void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9text_infoNtB2_8TextInfo8from_str(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bl, i64 noundef %i.bm) #15
          to label %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info.exit unwind label %bb.al

bb.ac:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bo = load i8, ptr %i.bn, align 8, !range !4, !alias.scope !153, !noundef !5
  %i.bp = trunc nuw i8 %i.bo to i1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bc, i64 24 ; 2 uses
  br i1 %i.bp, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren13combined_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.bq)
          to label %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info.exit24 unwind label %bb.al

bb.ae:                                            ; preds = %bb.ac
  %i.br = invoke { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %i.bq)
          to label %.noexc22 unwind label %bb.al  ; 2 uses

.noexc22:                                         ; preds = %bb.ae
  %i.bs = extractvalue { ptr, i64 } %i.br, 0
  %i.bt = extractvalue { ptr, i64 } %i.br, 1
  invoke fastcc void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9text_infoNtB2_8TextInfo8from_str(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bs, i64 noundef %i.bt) #15
          to label %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info.exit24 unwind label %bb.al

_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info.exit: ; preds = %bb.aa, %.noexc19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.bc, ptr %i.bu, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren10push_split(ptr noalias nofree noundef nonnull sret([968 x i8]) align 8 captures(none) dereferenceable(968) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.aq, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(968) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(968) %i.d, i64 968, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 1, ptr %i.bw, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(975) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(975) %.sroa.4, i64 975, i1 false)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !154
  %i.bx = call noundef align 8 dereferenceable_or_null(1024) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 1024, i64 noundef 8) #18, !noalias !154 ; 3 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.af, label %bb.ai, !prof !7

bb.af:                                            ; preds = %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info.exit
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1024) #17
          to label %.noexc25 unwind label %bb.ag

.noexc25:                                         ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1024) %i.a) #19
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit31 unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.ai:                                            ; preds = %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.bx, ptr noundef nonnull align 8 dereferenceable(1024) %i.a, i64 1024, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.aj

bb.aj:                                            ; preds = %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info.exit24, %bb.ai
  %.sroa.0.2 = phi ptr [ null, %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info.exit24 ], [ %i.bx, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ak

_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info.exit24: ; preds = %bb.ad, %.noexc22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.bc, ptr %i.cb, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.aq, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.aj

bb.ak:                                            ; preds = %bb.x, %bb.aj
  %.sroa.0.3 = phi ptr [ %.sroa.0.2, %bb.aj ], [ null, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.g

bb.al:                                            ; preds = %.noexc22, %.noexc19, %bb.aa, %bb.ab, %bb.ad, %bb.ae
  %lpad.thr_comm48 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cc = atomicrmw add ptr %i.bc, i64 -1 release, align 8, !noalias !155
  %i.cd = icmp eq i64 %i.cc, 1
  br i1 %i.cd, label %bb.am, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit31

bb.am:                                            ; preds = %bb.al
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit31 unwind label %bb.q

bb.an:                                            ; preds = %bb.w
  %i.ce = atomicrmw add ptr %i.bc, i64 -1 release, align 8, !noalias !156
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.ao, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit31

bb.ao:                                            ; preds = %bb.an
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit31 unwind label %bb.q

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit31: ; preds = %bb.al, %bb.am, %bb.ag, %bb.an, %bb.ao, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.h, %bb.w, %bb.ap, %bb.aq
  %.pn1434 = phi { ptr, i32 } [ %lpad.thr_comm, %bb.ap ], [ %lpad.thr_comm48, %bb.al ], [ %lpad.thr_comm, %bb.aq ], [ %i.bd, %bb.w ], [ %i.bd, %bb.an ], [ %lpad.loopexit.split-lp64, %bb.h ], [ %lpad.loopexit.split-lp64, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.bd, %bb.ao ], [ %i.bz, %bb.ag ], [ %lpad.thr_comm48, %bb.am ]
  resume { ptr, i32 } %.pn1434

bb.ap:                                            ; preds = %.invoke, %bb.t, %bb.u, %bb.r
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cg = atomicrmw add ptr %1, i64 -1 release, align 8, !noalias !157
  %i.ch = icmp eq i64 %i.cg, 1
  br i1 %i.ch, label %bb.aq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit31

bb.aq:                                            ; preds = %bb.ap
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit31 unwind label %bb.q
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node16assert_integrity(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1008) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %i.d = load i8, ptr %0, align 8, !range !4, !noundef !5
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoEIBX_INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtB1q_4node4NodeEEEINtB5_7ZipImplBW_B2b_E4nextB1s_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4iter(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.f)
  %.sroa.0.0.copyload = load ptr, ptr %i.c, align 8 ; 2 uses
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.45.0.copyload = load ptr, ptr %.sroa.45.0..sroa_idx, align 8 ; 2 uses
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.56.0.copyload = load i64, ptr %.sroa.56.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %i.g = icmp ult i64 %.sroa.56.0.copyload, %.sroa.7.0.copyload
  br i1 %i.g, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoEIBX_INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtB1q_4node4NodeEEEINtB5_7ZipImplBW_B2b_E4nextB1s_.exit.lr.ph, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoEIBX_INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtB1q_4node4NodeEEEINtB5_7ZipImplBW_B2b_E4nextB1s_.exit.thread

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoEIBX_INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtB1q_4node4NodeEEEINtB5_7ZipImplBW_B2b_E4nextB1s_.exit.lr.ph: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload), "nonnull"(ptr %.sroa.45.0.copyload) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoEIBX_INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtB1q_4node4NodeEEEINtB5_7ZipImplBW_B2b_E4nextB1s_.exit

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoEIBX_INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtB1q_4node4NodeEEEINtB5_7ZipImplBW_B2b_E4nextB1s_.exit.thread: ; preds = %bb.l, %bb.b, %bb.a
  ret void

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoEIBX_INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtB1q_4node4NodeEEEINtB5_7ZipImplBW_B2b_E4nextB1s_.exit: ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoEIBX_INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtB1q_4node4NodeEEEINtB5_7ZipImplBW_B2b_E4nextB1s_.exit.lr.ph, %bb.l
  %.sroa.56.011 = phi i64 [ %.sroa.56.0.copyload, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoEIBX_INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtB1q_4node4NodeEEEINtB5_7ZipImplBW_B2b_E4nextB1s_.exit.lr.ph ], [ %i.n, %bb.l ] ; 3 uses
  %i.n = add i64 %.sroa.56.011, 1                 ; 2 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.56.011 ; 8 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.sroa.45.0.copyload, i64 %.sroa.56.011 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i8, ptr %i.r, align 8, !range !4, !alias.scope !164, !noundef !5
  %i.t = trunc nuw i8 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoEIBX_INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtB1q_4node4NodeEEEINtB5_7ZipImplBW_B2b_E4nextB1s_.exit
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren13combined_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.u)
  br label %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info.exit

bb.d:                                             ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoEIBX_INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtB1q_4node4NodeEEEINtB5_7ZipImplBW_B2b_E4nextB1s_.exit
  %i.v = call { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %i.u), !noalias !165 ; 2 uses
  %i.w = extractvalue { ptr, i64 } %i.v, 0
  %i.x = extractvalue { ptr, i64 } %i.v, 1
  call fastcc void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9text_infoNtB2_8TextInfo8from_str(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef %i.x) #15
  br label %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info.exit

_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info.exit: ; preds = %bb.c, %bb.d
  %i.y = load i64, ptr %i.o, align 8, !noundef !5 ; 2 uses
  %i.z = load i64, ptr %i.b, align 8, !noundef !5
  %i.aa = icmp eq i64 %i.y, %i.z
  br i1 %i.aa, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !5
  %i.ad = load i64, ptr %i.h, align 8, !noundef !5
  %i.ae = icmp eq i64 %i.ac, %i.ad
  br i1 %i.ae, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !noundef !5
  %i.ah = load i64, ptr %i.i, align 8, !noundef !5
  %i.ai = icmp eq i64 %i.ag, %i.ah
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !5
  %i.al = load i64, ptr %i.j, align 8, !noundef !5
  %.not3 = icmp eq i64 %i.ak, %i.al
  br i1 %.not3, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.e, %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.am = load ptr, ptr %i.p, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load i8, ptr %i.an, align 8, !range !4, !alias.scope !166, !noundef !5
  %i.ap = trunc nuw i8 %i.ao to i1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 24 ; 2 uses
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren13combined_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.aq)
  br label %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info.exit4

bb.j:                                             ; preds = %bb.h
  %i.ar = call { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %i.aq), !noalias !167 ; 2 uses
  %i.as = extractvalue { ptr, i64 } %i.ar, 0
  %i.at = extractvalue { ptr, i64 } %i.ar, 1
  call fastcc void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9text_infoNtB2_8TextInfo8from_str(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.as, i64 noundef %i.at) #15
  br label %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info.exit4

_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info.exit4: ; preds = %bb.i, %bb.j
  %i.au = load i64, ptr %i.a, align 8, !noundef !5
  %i.av = icmp eq i64 %i.y, %i.au
  br i1 %i.av, label %bb.m, label %bb.p, !prof !10

bb.k:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.l

bb.l:                                             ; preds = %bb.q, %bb.k
  %i.aw = load ptr, ptr %i.p, align 8, !nonnull !5, !noundef !5
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node16assert_integrity(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.ax)
  %exitcond.not = icmp eq i64 %i.n, %.sroa.7.0.copyload
  br i1 %exitcond.not, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoEIBX_INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtB1q_4node4NodeEEEINtB5_7ZipImplBW_B2b_E4nextB1s_.exit.thread, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoEIBX_INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtB1q_4node4NodeEEEINtB5_7ZipImplBW_B2b_E4nextB1s_.exit

bb.m:                                             ; preds = %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info.exit4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !noundef !5
  %i.ba = load i64, ptr %i.k, align 8, !noundef !5
  %i.bb = icmp eq i64 %i.az, %i.ba
  br i1 %i.bb, label %bb.n, label %bb.p, !prof !10

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !5
  %i.be = load i64, ptr %i.l, align 8, !noundef !5
  %i.bf = icmp eq i64 %i.bd, %i.be
  br i1 %i.bf, label %bb.o, label %bb.p, !prof !10

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !5
  %i.bi = load i64, ptr %i.m, align 8, !noundef !5
  %i.bj = icmp eq i64 %i.bh, %i.bi
  br i1 %i.bj, label %bb.q, label %bb.p, !prof !10

bb.p:                                             ; preds = %bb.n, %bb.m, %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info.exit4, %bb.o
  call void @_RINvNtCskKLDkoKarTP_4core9panicking13assert_failedNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoBM_EBS_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #16
  unreachable

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node16assert_node_size(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1008) %0, i1 noundef zeroext %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !4, !noundef !5
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.e = load i8, ptr %i.d, align 8, !noundef !5  ; 2 uses
  br i1 %1, label %bb.g, label %bb.f

bb.c:                                             ; preds = %bb.a
  br i1 %1, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = tail call { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %i.f)
  %i.h = extractvalue { ptr, i64 } %i.g, 1
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.e, label %.loopexit, !prof !7

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #16
  unreachable

.loopexit:                                        ; preds = %.lr.ph, %bb.i, %bb.d, %bb.c
  ret void

bb.f:                                             ; preds = %bb.b
  %i.i = icmp ugt i8 %i.e, 11
  br i1 %i.i, label %bb.i, label %bb.h, !prof !10

bb.g:                                             ; preds = %bb.b
  %i.j = icmp ugt i8 %i.e, 1
  br i1 %i.j, label %bb.i, label %bb.j, !prof !10

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #16
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.k = tail call { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren5nodes(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.c) ; 2 uses
  %i.l = extractvalue { ptr, i64 } %i.k, 0        ; 3 uses
  %i.m = extractvalue { ptr, i64 } %i.k, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %.idx = shl nuw nsw i64 %i.m, 3
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx
  %i.o = icmp eq i64 %i.m, 0
  br i1 %i.o, label %.loopexit, label %.lr.ph

bb.j:                                             ; preds = %bb.g
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #16
  unreachable

.lr.ph:                                           ; preds = %bb.i, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.p, %.lr.ph ], [ %i.l, %bb.i ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 8 ; 2 uses
  %i.q = load ptr, ptr %.sroa.0.02, align 8, !nonnull !5, !noundef !5
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  tail call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node16assert_node_size(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.r, i1 noundef zeroext false)
  %i.s = icmp eq ptr %i.p, %i.n
  br i1 %i.s, label %.loopexit, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node16is_char_boundary(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1008) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
end_hunk_1
begin_hunk_2_@_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17get_chunk_at_byte:bb.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17get_chunk_at_char(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1008) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  %i.b = load i8, ptr %1, align 8, !range !4, !noundef !5
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.sroa.0.018 = phi ptr [ %1, %.lr.ph ], [ %i.ad, %bb.c ]
  %.sroa.03.017 = phi i64 [ %2, %.lr.ph ], [ %i.ae, %bb.c ] ; 2 uses
  %i.g = phi <2 x i64> [ zeroinitializer, %.lr.ph ], [ %i.aa, %bb.c ]
  %i.h = phi <2 x i64> [ zeroinitializer, %.lr.ph ], [ %i.z, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.018, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren15search_char_idx(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.i, i64 noundef %.sroa.03.017)
  %i.j = load i64, ptr %i.a, align 8, !noundef !5 ; 3 uses
  %i.k = load i64, ptr %i.e, align 8, !noundef !5
  %i.l = load <2 x i64>, ptr %i.d, align 8
  %i.m = load <2 x i64>, ptr %i.f, align 8
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
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.j, i64 noundef %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #16
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
  %i.r = call { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4info(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.n), !noalias !239 ; 2 uses
  %i.s = extractvalue { ptr, i64 } %i.r, 1        ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 968 ; 7 uses
  %i.u = load i8, ptr %i.t, align 8, !alias.scope !240, !noundef !5
  %i.v = zext i8 %i.u to i64                      ; 2 uses
  %i.w = add nsw i64 %i.v, -1                     ; 4 uses
  %.not.i106 = icmp ugt i64 %i.w, %i.s
  br i1 %.not.i106, label %bb.f, label %bb.e, !prof !6

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
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.w, i64 noundef %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #16, !noalias !239
  unreachable

.lr.ph560:                                        ; preds = %.lr.ph560.preheader, %bb.g
  %.sroa.0.0.i107558 = phi i64 [ %i.af, %bb.g ], [ 0, %.lr.ph560.preheader ] ; 2 uses
  %.sroa.04.0.i557 = phi i64 [ %i.ai, %bb.g ], [ 0, %.lr.ph560.preheader ] ; 2 uses
  %.sroa.09.0.i556 = phi ptr [ %i.ah, %bb.g ], [ %i.x, %.lr.ph560.preheader ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i556, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !239, !noundef !5
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
  %i.ak = call { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4info(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.n), !noalias !239 ; 2 uses
  %i.al = extractvalue { ptr, i64 } %i.ak, 1      ; 2 uses
  %i.am = load i8, ptr %i.t, align 8, !alias.scope !240, !noundef !5
  %i.an = zext i8 %i.am to i64
  %i.ao = add nsw i64 %i.an, -1                   ; 5 uses
  %i.ap = icmp ult i64 %i.ao, %.sroa.04.0.i.lcssa
  %.not18.i = icmp ugt i64 %i.ao, %i.al
  %or.cond.i = select i1 %i.ap, i1 true, i1 %.not18.i, !prof !6
  br i1 %or.cond.i, label %bb.i, label %bb.h, !prof !6

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
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.04.0.i.lcssa, i64 noundef %i.ao, i64 noundef %i.al, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #16, !noalias !239
  unreachable

.lr.ph571:                                        ; preds = %.lr.ph571.preheader, %bb.j
  %.sroa.0.1.i569 = phi i64 [ %i.aw, %bb.j ], [ %.sroa.0.0.i107.lcssa, %.lr.ph571.preheader ] ; 2 uses
  %.sroa.04.1.i568 = phi i64 [ %i.ay, %bb.j ], [ %.sroa.04.0.i.lcssa, %.lr.ph571.preheader ] ; 2 uses
  %.sroa.011.0.i567 = phi ptr [ %i.ax, %bb.j ], [ %i.at, %.lr.ph571.preheader ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.011.0.i567, i64 8
  %i.av = load i64, ptr %i.au, align 8, !noalias !239, !noundef !5
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
  %i.bc = extractvalue { ptr, i64 } %i.bb, 0      ; 7 uses
  %i.bd = extractvalue { ptr, i64 } %i.bb, 1      ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  %i.be = icmp samesign ult i64 %i.bd, 17
  br i1 %i.be, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !241
  call void @_RINvMNtCskKLDkoKarTP_4core5sliceSh8align_toNtNtNtB5_9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bc, i64 noundef range(i64 0, -9223372036854775808) %i.bd)
  %i.bf = load ptr, ptr %i.a, align 8, !noalias !241, !nonnull !5, !noundef !5 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !241, !noundef !5 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !241, !nonnull !5, !align !9, !noundef !5 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bl = load i64, ptr %i.bk, align 8, !noalias !241, !noundef !5 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !241
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bh
  %i.bn = icmp samesign eq i64 %i.bh, 0
  br i1 %i.bn, label %._crit_edge, label %.lr.ph

bb.m:                                             ; preds = %bb.k
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bc), "nonnull"(ptr %i.bc) ]
  %i.bp = icmp samesign eq i64 %i.bd, 0
  br i1 %i.bp, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit105, label %.lr.ph715

.lr.ph:                                           ; preds = %bb.l, %bb.n
  %.sroa.013.0.i77488 = phi i64 [ %i.bw, %bb.n ], [ 0, %bb.l ] ; 2 uses
  %.sroa.020.0.i76487 = phi i64 [ %i.bt, %bb.n ], [ 0, %bb.l ]
  %.sroa.027.0.i75486 = phi ptr [ %i.bv, %bb.n ], [ %i.bf, %bb.l ] ; 2 uses
  %i.bq = load i8, ptr %.sroa.027.0.i75486, align 1, !noundef !5
  %i.br = icmp sgt i8 %i.bq, -65
  %i.bs = zext i1 %i.br to i64
  %i.bt = add i64 %.sroa.020.0.i76487, %i.bs      ; 3 uses
  %i.bu = icmp ugt i64 %i.bt, %2
  br i1 %i.bu, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit105, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.027.0.i75486, i64 1 ; 2 uses
  %i.bw = add nuw i64 %.sroa.013.0.i77488, 1
  %i.bx = icmp eq ptr %i.bv, %i.bm
  br i1 %i.bx, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.n, %bb.l
  %.sroa.020.0.i76.lcssa = phi i64 [ 0, %bb.l ], [ %i.bt, %bb.n ] ; 3 uses
  %i.by = sub i64 %2, %.sroa.020.0.i76.lcssa
  %i.bz = lshr i64 %i.by, 4
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.bz, i64 %i.bl) ; 2 uses
  %i.ca = and i64 %..i, 576460752303423484        ; 2 uses
  %.not51.i89490 = icmp eq i64 %i.ca, 0
  br i1 %.not51.i89490, label %._crit_edge497, label %.lr.ph496

._crit_edge497:                                   ; preds = %.lr.ph496, %._crit_edge
  %.sroa.020.1.i87.lcssa = phi i64 [ %.sroa.020.0.i76.lcssa, %._crit_edge ], [ %i.dx, %.lr.ph496 ] ; 2 uses
  %.sroa.013.1.i88.lcssa = phi i64 [ %i.bh, %._crit_edge ], [ %i.dy, %.lr.ph496 ] ; 2 uses
  %i.cb = and i64 %..i, 1152921504606846972       ; 4 uses
  %i.cc = icmp ugt i64 %i.cb, %i.bl
  br i1 %i.cc, label %bb.p, label %bb.o, !prof !7

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
  %.sroa.013.2.i95501 = phi i64 [ %i.cn, %bb.q ], [ %.sroa.013.1.i88.lcssa, %.lr.ph504.preheader ] ; 2 uses
  %.sroa.020.2.i94500 = phi i64 [ %i.cl, %bb.q ], [ %.sroa.020.1.i87.lcssa, %.lr.ph504.preheader ] ; 2 uses
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
  %.sroa.020.2.i94.lcssa = phi i64 [ %.sroa.020.1.i87.lcssa, %bb.o ], [ %.sroa.020.2.i94500, %.lr.ph504 ], [ %i.cl, %bb.q ]
  %.sroa.013.2.i95.lcssa = phi i64 [ %.sroa.013.1.i88.lcssa, %bb.o ], [ %.sroa.013.2.i95501, %.lr.ph504 ], [ %i.cn, %bb.q ] ; 5 uses
  %i.cp = icmp ugt i64 %.sroa.013.2.i95.lcssa, %i.bd
  br i1 %i.cp, label %bb.s, label %bb.r, !prof !7

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
  %i.ct = load i8, ptr %.sroa.036.0.i100513, align 1, !alias.scope !241, !noundef !5
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
  %.sroa.013.1.i88494 = phi i64 [ %i.dy, %.lr.ph496 ], [ %i.bh, %._crit_edge ]
  %.sroa.020.1.i87493 = phi i64 [ %i.dx, %.lr.ph496 ], [ %.sroa.020.0.i76.lcssa, %._crit_edge ]
  %.sroa.030.0.i86492 = phi ptr [ %i.db, %.lr.ph496 ], [ %i.bj, %._crit_edge ] ; 5 uses
  %.sroa.5.0.i85491 = phi i64 [ %i.dc, %.lr.ph496 ], [ %i.ca, %._crit_edge ]
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i86492, i64 64
  %i.dc = add i64 %.sroa.5.0.i85491, -4           ; 2 uses
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
  %i.dy = add i64 %.sroa.013.1.i88494, 64         ; 2 uses
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
  %or.cond = select i1 %i.el, i1 true, i1 %.not, !prof !242
  br i1 %or.cond, label %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread, label %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread672, !prof !242

bb.w:                                             ; preds = %bb.v
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 %.sroa.0.0.i78
  %i.en = load i8, ptr %i.em, align 1, !alias.scope !243, !noundef !5
  %i.eo = icmp sgt i8 %i.en, -65
  br i1 %i.eo, label %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread672, label %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread

_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit: ; preds = %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit105
  %.not.old = icmp eq ptr %i.ei, null
  br i1 %.not.old, label %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread, label %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread672, !prof !244

_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread672: ; preds = %bb.w, %.split.i, %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit
  %i.ep = sub i64 %i.ej, %.sroa.0.0.i78           ; 8 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ei, i64 %.sroa.0.0.i78 ; 3 uses
  %i.er = load i64, ptr %i.i, align 8, !noundef !5
  %i.es = load i64, ptr %i.j, align 8, !noundef !5
  %i.et = sub i64 %i.er, %i.es                    ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !245)
  %i.eu = icmp samesign ult i64 %i.ep, 17
  br i1 %i.eu, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread672
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !245
  call void @_RINvMNtCskKLDkoKarTP_4core5sliceSh8align_toNtNtNtB5_9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eq, i64 noundef range(i64 0, -9223372036854775808) %i.ep)
  %i.ev = load ptr, ptr %i.b, align 8, !noalias !245, !nonnull !5, !noundef !5 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ex = load i64, ptr %i.ew, align 8, !noalias !245, !noundef !5 ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.b, i64 16
end_hunk_2
begin_hunk_3_@_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node21get_chunk_at_byte_mut:bb.a
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node23get_chunk_at_line_break(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1008) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  %i.b = load i8, ptr %1, align 8, !range !4, !noundef !5
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.sroa.0.018 = phi ptr [ %1, %.lr.ph ], [ %i.ad, %bb.c ]
  %.sroa.03.017 = phi i64 [ %2, %.lr.ph ], [ %i.ae, %bb.c ] ; 2 uses
  %i.g = phi <2 x i64> [ zeroinitializer, %.lr.ph ], [ %i.aa, %bb.c ]
  %i.h = phi <2 x i64> [ zeroinitializer, %.lr.ph ], [ %i.z, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.018, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren21search_line_break_idx(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.i, i64 noundef %.sroa.03.017)
  %i.j = load i64, ptr %i.a, align 8, !noundef !5 ; 3 uses
  %i.k = load <2 x i64>, ptr %i.d, align 8
  %i.l = load i64, ptr %i.f, align 8, !noundef !5
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
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.j, i64 noundef %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #16
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
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.j, i64 noundef %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #16
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
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #16
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
  %i.r = extractvalue { ptr, i64 } %i.q, 0        ; 7 uses
  %i.s = extractvalue { ptr, i64 } %i.q, 1        ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !265)
  %i.t = icmp samesign ult i64 %i.s, 17
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !265
  call void @_RINvMNtCskKLDkoKarTP_4core5sliceSh8align_toNtNtNtB5_9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef range(i64 0, -9223372036854775808) %i.s)
  %i.u = load ptr, ptr %i.a, align 8, !noalias !265, !nonnull !5, !noundef !5 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = load i64, ptr %i.v, align 8, !noalias !265, !noundef !5 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !noalias !265, !nonnull !5, !align !9, !noundef !5 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !noalias !265, !noundef !5 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !265
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w
  %i.ac = icmp samesign eq i64 %i.w, 0
  br i1 %i.ac, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r), "nonnull"(ptr %i.r) ]
  %i.ae = icmp samesign eq i64 %i.s, 0
  br i1 %i.ae, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %.lr.ph265

.lr.ph:                                           ; preds = %bb.d, %bb.f
  %.sroa.013.0.i189 = phi i64 [ %i.al, %bb.f ], [ 0, %bb.d ] ; 2 uses
  %.sroa.020.0.i188 = phi i64 [ %i.ai, %bb.f ], [ 0, %bb.d ]
  %.sroa.027.0.i187 = phi ptr [ %i.ak, %bb.f ], [ %i.u, %bb.d ] ; 2 uses
  %i.af = load i8, ptr %.sroa.027.0.i187, align 1, !noundef !5
  %i.ag = icmp sgt i8 %i.af, -65
  %i.ah = zext i1 %i.ag to i64
  %i.ai = add i64 %.sroa.020.0.i188, %i.ah        ; 3 uses
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
  br i1 %i.ar, label %bb.h, label %bb.g, !prof !7

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
  br i1 %i.be, label %bb.k, label %bb.j, !prof !7

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
  %i.bi = load i8, ptr %.sroa.036.0.i214, align 1, !alias.scope !265, !noundef !5
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
  %.sroa.013.1.i195 = phi i64 [ %i.cn, %.lr.ph197 ], [ %i.w, %._crit_edge ]
  %.sroa.020.1.i194 = phi i64 [ %i.cm, %.lr.ph197 ], [ %.sroa.020.0.i.lcssa, %._crit_edge ]
  %.sroa.030.0.i193 = phi ptr [ %i.bq, %.lr.ph197 ], [ %i.y, %._crit_edge ] ; 5 uses
  %.sroa.5.0.i192 = phi i64 [ %i.br, %.lr.ph197 ], [ %i.ap, %._crit_edge ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i193, i64 64
  %i.br = add i64 %.sroa.5.0.i192, -4             ; 2 uses
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
  %i.cn = add i64 %.sroa.013.1.i195, 64           ; 2 uses
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

bb.n:                                             ; preds = %bb.r, %bb.ai, %bb.t, %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit
  ret void

bb.o:                                             ; preds = %bb.b
  %i.cx = icmp eq i64 %2, %i.m
  br i1 %i.cx, label %bb.r, label %bb.q

bb.p:                                             ; preds = %bb.b
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.k, i64 noundef %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #16
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
          to label %bb.u unwind label %.body      ; 2 uses

bb.t:                                             ; preds = %bb.q
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren9split_off(ptr noalias nofree noundef nonnull sret([968 x i8]) align 8 captures(none) dereferenceable(968) %i.dh, ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.j, i64 noundef %i.de)
  store i8 1, ptr %0, align 8
end_hunk_3
