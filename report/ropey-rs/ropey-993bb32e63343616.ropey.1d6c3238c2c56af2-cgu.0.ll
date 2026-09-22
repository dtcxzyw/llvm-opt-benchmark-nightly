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
  %i.do = atomicrmw sub ptr %i.bk, i64 1 release, align 8, !noalias !32
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
  %i.k = extractvalue { ptr, i64 } %i.j, 0        ; 6 uses
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
  %5 = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.w = icmp samesign eq i64 %i.l, 0
  br i1 %i.w, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %.lr.ph299

.lr.ph:                                           ; preds = %bb.d, %bb.f
  %.sroa.013.0.i220 = phi i64 [ %i.ad, %bb.f ], [ 0, %bb.d ] ; 2 uses
  %.sroa.020.0.i219 = phi i64 [ %i.aa, %bb.f ], [ 0, %bb.d ]
  %.sroa.027.0.i218 = phi ptr [ %i.ac, %bb.f ], [ %i.n, %bb.d ] ; 2 uses
  %i.x = load i8, ptr %.sroa.027.0.i218, align 1, !noundef !5
  %i.y = icmp sgt i8 %i.x, -65
  %i.z = zext i1 %i.y to i64
  %i.aa = add i64 %.sroa.020.0.i219, %i.z         ; 3 uses
  %i.ab = icmp ugt i64 %i.aa, %2
  br i1 %i.ab, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.027.0.i218, i64 1 ; 2 uses
  %i.ad = add nuw i64 %.sroa.013.0.i220, 1
  %i.ae = icmp eq ptr %i.ac, %i.u
  br i1 %i.ae, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.f, %bb.d
  %.sroa.020.0.i.lcssa = phi i64 [ 0, %bb.d ], [ %i.aa, %bb.f ] ; 3 uses
  %i.af = sub i64 %2, %.sroa.020.0.i.lcssa
  %i.ag = lshr i64 %i.af, 4
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.ag, i64 %i.t) ; 2 uses
  %i.ah = and i64 %..i, 576460752303423484        ; 2 uses
  %.not51.i222 = icmp eq i64 %i.ah, 0
  br i1 %.not51.i222, label %._crit_edge229, label %.lr.ph228

._crit_edge229:                                   ; preds = %.lr.ph228, %._crit_edge
  %.sroa.020.1.i.lcssa = phi i64 [ %.sroa.020.0.i.lcssa, %._crit_edge ], [ %i.ce, %.lr.ph228 ] ; 2 uses
  %.sroa.013.1.i.lcssa = phi i64 [ %i.p, %._crit_edge ], [ %i.cf, %.lr.ph228 ] ; 2 uses
  %i.ai = and i64 %..i, 1152921504606846972       ; 4 uses
  %i.aj = icmp ugt i64 %i.ai, %i.t
  br i1 %i.aj, label %bb.h, label %bb.g, !prof !7

bb.g:                                             ; preds = %._crit_edge229
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.t
  %i.al = icmp samesign eq i64 %i.ai, %i.t
  br i1 %i.al, label %._crit_edge237, label %.lr.ph236.preheader

.lr.ph236.preheader:                              ; preds = %bb.g
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.ai
  br label %.lr.ph236

bb.h:                                             ; preds = %._crit_edge229
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.ai, i64 noundef %i.t, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #16
  unreachable

.lr.ph236:                                        ; preds = %.lr.ph236.preheader, %bb.i
  %.sroa.040.0.i234 = phi ptr [ %i.at, %bb.i ], [ %i.am, %.lr.ph236.preheader ] ; 2 uses
  %.sroa.013.2.i233 = phi i64 [ %i.au, %bb.i ], [ %.sroa.013.1.i.lcssa, %.lr.ph236.preheader ] ; 2 uses
  %.sroa.020.2.i232 = phi i64 [ %i.as, %bb.i ], [ %.sroa.020.1.i.lcssa, %.lr.ph236.preheader ] ; 2 uses
  %i.an = load <16 x i8>, ptr %.sroa.040.0.i234, align 16
  %i.ao = icmp slt <16 x i8> %i.an, splat (i8 -64)
  %i.ap = zext <16 x i1> %i.ao to <16 x i8>
  %i.aq = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.ap, <16 x i8> zeroinitializer)
  %.neg213 = add i64 %.sroa.020.2.i232, 16
  %i.ar = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.aq)
  %i.as = sub i64 %.neg213, %i.ar                 ; 3 uses
  %.not52.i = icmp ult i64 %i.as, %2
  br i1 %.not52.i, label %bb.i, label %._crit_edge237

bb.i:                                             ; preds = %.lr.ph236
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.040.0.i234, i64 16 ; 2 uses
  %i.au = add i64 %.sroa.013.2.i233, 16           ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.ak
  br i1 %i.av, label %._crit_edge237, label %.lr.ph236

._crit_edge237:                                   ; preds = %bb.i, %.lr.ph236, %bb.g
  %.sroa.020.2.i.lcssa = phi i64 [ %.sroa.020.1.i.lcssa, %bb.g ], [ %.sroa.020.2.i232, %.lr.ph236 ], [ %i.as, %bb.i ]
  %.sroa.013.2.i.lcssa = phi i64 [ %.sroa.013.1.i.lcssa, %bb.g ], [ %.sroa.013.2.i233, %.lr.ph236 ], [ %i.au, %bb.i ] ; 5 uses
  %i.aw = icmp ugt i64 %.sroa.013.2.i.lcssa, %i.l
  br i1 %i.aw, label %bb.k, label %bb.j, !prof !7

bb.j:                                             ; preds = %._crit_edge237
  %i.ax = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.ay = icmp samesign eq i64 %.sroa.013.2.i.lcssa, %i.l
  br i1 %i.ay, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %.lr.ph247.preheader

.lr.ph247.preheader:                              ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.013.2.i.lcssa
  br label %.lr.ph247

bb.k:                                             ; preds = %._crit_edge237
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.013.2.i.lcssa, i64 noundef range(i64 0, -9223372036854775808) %i.l, i64 noundef range(i64 0, -9223372036854775808) %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #16
  unreachable

.lr.ph247:                                        ; preds = %.lr.ph247.preheader, %bb.l
  %.sroa.036.0.i245 = phi ptr [ %i.bf, %bb.l ], [ %i.az, %.lr.ph247.preheader ] ; 2 uses
  %.sroa.013.3.i244 = phi i64 [ %i.bg, %bb.l ], [ %.sroa.013.2.i.lcssa, %.lr.ph247.preheader ] ; 2 uses
  %.sroa.020.3.i243 = phi i64 [ %i.bd, %bb.l ], [ %.sroa.020.2.i.lcssa, %.lr.ph247.preheader ]
  %i.ba = load i8, ptr %.sroa.036.0.i245, align 1, !alias.scope !42, !noundef !5
  %i.bb = icmp sgt i8 %i.ba, -65
  %i.bc = zext i1 %i.bb to i64
  %i.bd = add i64 %.sroa.020.3.i243, %i.bc        ; 2 uses
  %i.be = icmp ugt i64 %i.bd, %2
  br i1 %i.be, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph247
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.036.0.i245, i64 1 ; 2 uses
  %i.bg = add i64 %.sroa.013.3.i244, 1
  %i.bh = icmp eq ptr %i.bf, %i.ax
  br i1 %i.bh, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %.lr.ph247

.lr.ph228:                                        ; preds = %._crit_edge, %.lr.ph228
  %.sroa.013.1.i226 = phi i64 [ %i.cf, %.lr.ph228 ], [ %i.p, %._crit_edge ]
  %.sroa.020.1.i225 = phi i64 [ %i.ce, %.lr.ph228 ], [ %.sroa.020.0.i.lcssa, %._crit_edge ]
  %.sroa.030.0.i224 = phi ptr [ %i.bi, %.lr.ph228 ], [ %i.r, %._crit_edge ] ; 5 uses
  %.sroa.5.0.i223 = phi i64 [ %i.bj, %.lr.ph228 ], [ %i.ah, %._crit_edge ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i224, i64 64
  %i.bj = add i64 %.sroa.5.0.i223, -4             ; 2 uses
  %i.bk = load <16 x i8>, ptr %.sroa.030.0.i224, align 16
  %i.bl = icmp slt <16 x i8> %i.bk, splat (i8 -64)
  %i.bm = zext <16 x i1> %i.bl to <16 x i8>
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i224, i64 16
  %i.bo = load <16 x i8>, ptr %i.bn, align 16
  %i.bp = icmp slt <16 x i8> %i.bo, splat (i8 -64)
  %i.bq = zext <16 x i1> %i.bp to <16 x i8>
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i224, i64 32
  %i.bs = load <16 x i8>, ptr %i.br, align 16
  %i.bt = icmp slt <16 x i8> %i.bs, splat (i8 -64)
  %i.bu = zext <16 x i1> %i.bt to <16 x i8>
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i224, i64 48
  %i.bw = load <16 x i8>, ptr %i.bv, align 16
  %i.bx = icmp slt <16 x i8> %i.bw, splat (i8 -64)
  %i.by = zext <16 x i1> %i.bx to <16 x i8>
  %i.bz = add nuw nsw <16 x i8> %i.bq, %i.bm
  %i.ca = add nuw nsw <16 x i8> %i.bz, %i.bu
  %i.cb = add nuw nsw <16 x i8> %i.ca, %i.by
  %i.cc = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.cb, <16 x i8> zeroinitializer)
  %.neg = add i64 %.sroa.020.1.i225, 64
  %i.cd = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.cc)
  %i.ce = sub i64 %.neg, %i.cd                    ; 2 uses
  %i.cf = add i64 %.sroa.013.1.i226, 64           ; 2 uses
  %.not51.i = icmp eq i64 %i.bj, 0
  br i1 %.not51.i, label %._crit_edge229, label %.lr.ph228

bb.m:                                             ; preds = %.lr.ph299
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.0296, i64 1 ; 2 uses
  %i.ch = add nuw nsw i64 %.sroa.8.0295, 1
  %i.ci = icmp eq ptr %i.cg, %5
  br i1 %i.ci, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %.lr.ph299

.lr.ph299:                                        ; preds = %bb.e, %bb.m
  %.sroa.07.0.i297 = phi i64 [ %i.cm, %bb.m ], [ 0, %bb.e ]
  %.sroa.0.0296 = phi ptr [ %i.cg, %bb.m ], [ %i.k, %bb.e ] ; 2 uses
  %.sroa.8.0295 = phi i64 [ %i.ch, %bb.m ], [ 0, %bb.e ] ; 2 uses
  %i.cj = load i8, ptr %.sroa.0.0296, align 1, !noundef !5
  %i.ck = icmp sgt i8 %i.cj, -65
  %i.cl = zext i1 %i.ck to i64
  %i.cm = add i64 %.sroa.07.0.i297, %i.cl         ; 2 uses
  %i.cn = icmp ugt i64 %i.cm, %2
  br i1 %i.cn, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %bb.m

_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit: ; preds = %.lr.ph, %.lr.ph247, %bb.l, %bb.m, %.lr.ph299, %bb.e, %bb.j
  %.sroa.0.0.i = phi i64 [ %i.l, %bb.j ], [ %i.l, %bb.e ], [ %i.l, %bb.l ], [ %.sroa.8.0295, %.lr.ph299 ], [ %i.l, %bb.m ], [ %.sroa.013.3.i244, %.lr.ph247 ], [ %.sroa.013.0.i220, %.lr.ph ] ; 12 uses
  %i.co = tail call { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %4)
  %i.cp = extractvalue { ptr, i64 } %i.co, 1
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !5, !align !8, !noundef !5 ; 6 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 4 uses
  %i.ct = load i64, ptr %i.cs, align 8, !noundef !5 ; 3 uses
  %i.cu = add i64 %i.ct, %i.cp
  %i.cv = icmp ult i64 %i.cu, 985
  br i1 %i.cv, label %bb.w, label %bb.v

bb.n:                                             ; preds = %bb.b
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !nonnull !5, !align !8, !noundef !5 ; 5 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 4 uses
  %i.cz = load i64, ptr %i.cy, align 8, !noundef !5
  %.not32 = icmp eq i64 %i.cz, 0
  br i1 %.not32, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.da = load ptr, ptr %i.cx, align 8, !nonnull !5, !noundef !5
  %i.db = load i8, ptr %i.da, align 1, !noundef !5
  %i.dc = icmp eq i8 %i.db, 10
  br i1 %i.dc, label %bb.q, label %bb.c

bb.p:                                             ; preds = %bb.n
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #16
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !nonnull !5, !noundef !5
  store i8 1, ptr %i.de, align 1
  %i.df = load ptr, ptr %i.cx, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.dg = load i64, ptr %i.cy, align 8, !noundef !5 ; 5 uses
  %.not.i82 = icmp ugt i64 %i.dg, 1
  br i1 %.not.i82, label %bb.r, label %.split.i

.split.i:                                         ; preds = %bb.q
  %i.dh = icmp eq i64 %i.dg, 1
  br i1 %i.dh, label %.thread, label %bb.t

.thread:                                          ; preds = %.split.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 1
end_hunk_0
begin_hunk_1_@_RNCNvMNtCs2wCc12Mnjqg_5ropey4ropeNtB4_4Rope15insert_internal0B6_:bb.a
  %i.em = call noundef align 8 dereferenceable_or_null(1024) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 1024, i64 noundef 8) #18, !noalias !45 ; 3 uses
  %i.en = icmp eq ptr %i.em, null
  br i1 %i.en, label %bb.af, label %bb.ai, !prof !7

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1024) #17
          to label %.noexc unwind label %bb.ag

.noexc:                                           ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.eo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1024) %i.b) #19
          to label %.body unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ep = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.ai:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.em, ptr noundef nonnull align 8 dereferenceable(1024) %i.b, i64 1024, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.413)
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eq, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.em, ptr %.sroa.411.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ac

.body:                                            ; preds = %bb.aj, %bb.ag
  %eh.lpad-body211 = phi { ptr, i32 } [ %i.eo, %bb.ag ], [ %i.er, %bb.aj ]
  resume { ptr, i32 } %eh.lpad-body211

bb.aj:                                            ; preds = %bb.v, %bb.x, %bb.y, %bb.ab, %bb.ad
  %i.er = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsv_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1000) %i.e)
          to label %.body unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.es = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.al:                                            ; preds = %bb.ax, %bb.au, %bb.as, %bb.w
  %.sroa.4.0 = phi i64 [ %i.ec, %bb.w ], [ %spec.select38, %bb.ax ], [ %.sroa.4.1, %bb.au ], [ %.sroa.4.1, %bb.as ] ; 3 uses
  %i.et = tail call { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %4)
  %i.eu = extractvalue { ptr, i64 } %i.et, 1
  %i.ev = icmp ult i64 %.sroa.0.0.i, %i.eu
  %.pre259 = load i64, ptr %i.cs, align 8         ; 4 uses
  br i1 %i.ev, label %bb.az, label %bb.ba

bb.am:                                            ; preds = %bb.w
  %i.ew = tail call { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %4) ; 2 uses
  %i.ex = extractvalue { ptr, i64 } %i.ew, 1      ; 2 uses
  %i.ey = add i64 %.sroa.0.0.i, -1                ; 6 uses
  %i.ez = icmp ult i64 %i.ey, %i.ex
  br i1 %i.ez, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fa = extractvalue { ptr, i64 } %i.ew, 0
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.ey
  %i.fc = load i8, ptr %i.fb, align 1, !noundef !5
  %i.fd = icmp eq i8 %i.fc, 13
  br i1 %i.fd, label %bb.ap, label %bb.as

bb.ao:                                            ; preds = %bb.am
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ey, i64 noundef %i.ex, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #16
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.fe = load i64, ptr %i.cs, align 8, !noundef !5
  %.not36 = icmp eq i64 %i.fe, 0
  br i1 %.not36, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ff = load ptr, ptr %i.cr, align 8, !nonnull !5, !noundef !5
  %i.fg = load i8, ptr %i.ff, align 1, !noundef !5
  %i.fh = icmp eq i8 %i.fg, 10
  %i.fi = sext i1 %i.fh to i64
  %spec.select = add i64 %i.ec, %i.fi
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #16
  unreachable

bb.as:                                            ; preds = %bb.aq, %bb.an
  %.sroa.4.1 = phi i64 [ %i.ec, %bb.an ], [ %spec.select, %bb.aq ] ; 3 uses
  %i.fj = tail call { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %4)
  %i.fk = extractvalue { ptr, i64 } %i.fj, 1
  %i.fl = icmp ult i64 %.sroa.0.0.i, %i.fk
  br i1 %i.fl, label %bb.at, label %bb.al

bb.at:                                            ; preds = %bb.as
  %i.fm = tail call { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %4) ; 2 uses
  %i.fn = extractvalue { ptr, i64 } %i.fm, 1      ; 2 uses
  %i.fo = icmp ult i64 %i.ey, %i.fn
  br i1 %i.fo, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.fp = extractvalue { ptr, i64 } %i.fm, 0
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.ey
  %i.fr = load i8, ptr %i.fq, align 1, !noundef !5
  %i.fs = icmp eq i8 %i.fr, 13
  br i1 %i.fs, label %bb.aw, label %bb.al

bb.av:                                            ; preds = %bb.at
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ey, i64 noundef %i.fn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #16
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.ft = tail call { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %4) ; 2 uses
  %i.fu = extractvalue { ptr, i64 } %i.ft, 1      ; 2 uses
  %i.fv = icmp ult i64 %.sroa.0.0.i, %i.fu
  br i1 %i.fv, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.fw = extractvalue { ptr, i64 } %i.ft, 0
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %.sroa.0.0.i
  %i.fy = load i8, ptr %i.fx, align 1, !noundef !5
  %i.fz = icmp eq i8 %i.fy, 10
  %i.ga = zext i1 %i.fz to i64
  %spec.select38 = add i64 %.sroa.4.1, %i.ga
  br label %bb.al

bb.ay:                                            ; preds = %bb.aw
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.i, i64 noundef %i.fu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #16
  unreachable

bb.az:                                            ; preds = %bb.al
  %.not37 = icmp eq i64 %.pre259, 0
  br i1 %.not37, label %bb.bb, label %bb.bc, !prof !7

bb.ba:                                            ; preds = %bb.be, %bb.bc, %bb.al
  %i.gb = phi i64 [ %.pre259, %bb.al ], [ %.pre, %bb.be ], [ %.pre259, %bb.bc ]
  %.sroa.4.2 = phi i64 [ %.sroa.4.0, %bb.al ], [ %spec.select39, %bb.be ], [ %.sroa.4.0, %bb.bc ]
  %i.gc = load ptr, ptr %i.cr, align 8, !nonnull !5, !noundef !5
  tail call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB2_8NodeText10insert_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(1000) %4, i64 noundef %.sroa.0.0.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gc, i64 noundef %i.gb)
  store <2 x i64> %i.dw, ptr %0, align 8
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dz, ptr %.sroa.32.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.4.2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %.sroa.37.0..sroa_idx, align 8
  br label %bb.u

bb.bb:                                            ; preds = %bb.az
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #16
  unreachable

bb.bc:                                            ; preds = %bb.az
  %i.gd = load ptr, ptr %i.cr, align 8, !nonnull !5, !noundef !5
  %i.ge = getelementptr i8, ptr %i.gd, i64 %.pre259
  %i.gf = getelementptr i8, ptr %i.ge, i64 -1
  %i.gg = load i8, ptr %i.gf, align 1, !noundef !5
  %i.gh = icmp eq i8 %i.gg, 13
  br i1 %i.gh, label %bb.bd, label %bb.ba

bb.bd:                                            ; preds = %bb.bc
  %i.gi = tail call { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %4) ; 2 uses
  %i.gj = extractvalue { ptr, i64 } %i.gi, 1      ; 2 uses
  %i.gk = icmp ult i64 %.sroa.0.0.i, %i.gj
  br i1 %i.gk, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.gl = extractvalue { ptr, i64 } %i.gi, 0
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 %.sroa.0.0.i
  %i.gn = load i8, ptr %i.gm, align 1, !noundef !5
  %i.go = icmp eq i8 %i.gn, 10
  %i.gp = sext i1 %i.go to i64
  %spec.select39 = add i64 %.sroa.4.0, %i.gp
  %.pre = load i64, ptr %i.cs, align 8
  br label %bb.ba

bb.bf:                                            ; preds = %bb.bd
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.i, i64 noundef %i.gj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #16
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMNtCs2wCc12Mnjqg_5ropey4ropeNtB4_4Rope15insert_internals_0B6_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr nofree readonly captures(none) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(1000) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1024 x i8], align 8              ; 8 uses
  %.sroa.46 = alloca [1007 x i8], align 1         ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [1000 x i8], align 8              ; 8 uses
  %i.e = tail call { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %2)
  %i.f = extractvalue { ptr, i64 } %i.e, 1        ; 2 uses
  %i.g = tail call { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %2)
  %3 = extractvalue { ptr, i64 } %i.g, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noundef !5
  %i.j = add i64 %i.i, %3
  %i.k = icmp ult i64 %i.j, 985
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB2_8NodeText16insert_str_split(ptr noalias nofree noundef nonnull sret([1000 x i8]) align 8 captures(none) dereferenceable(1000) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(1000) %2, i64 noundef %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.l = invoke { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %2)
          to label %bb.d unwind label %bb.q       ; 2 uses

bb.c:                                             ; preds = %bb.a
  %i.m = load <2 x i64>, ptr %1, align 8
  %i.n = add <2 x i64> %i.m, splat (i64 1)
  store <2 x i64> %i.n, ptr %1, align 8
  %i.o = tail call { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %2) ; 2 uses
  %i.p = extractvalue { ptr, i64 } %i.o, 1        ; 2 uses
  %.not14 = icmp eq i64 %i.p, 0
  br i1 %.not14, label %bb.s, label %bb.t, !prof !7

bb.d:                                             ; preds = %bb.b
  %i.q = extractvalue { ptr, i64 } %i.l, 0
  %i.r = extractvalue { ptr, i64 } %i.l, 1
  invoke fastcc void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9text_infoNtB2_8TextInfo8from_str(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef %i.r)
          to label %bb.e unwind label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.s = invoke { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %i.d)
          to label %bb.f unwind label %bb.q

bb.f:                                             ; preds = %bb.e
  %i.t = extractvalue { ptr, i64 } %i.s, 1
  %.not = icmp eq i64 %i.t, 0
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  %.sroa.38.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %.sroa.38.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RNvXsv_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1000) %i.d)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.u = invoke { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %i.d)
          to label %bb.j unwind label %bb.q       ; 2 uses

bb.i:                                             ; preds = %bb.o, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.p

bb.j:                                             ; preds = %bb.h
  %i.v = extractvalue { ptr, i64 } %i.u, 0
  %i.w = extractvalue { ptr, i64 } %i.u, 1
  invoke fastcc void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9text_infoNtB2_8TextInfo8from_str(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef %i.w)
          to label %bb.k unwind label %bb.q

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.46)
  %.sroa.46.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.46, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1000) %.sroa.46.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(1000) %i.d, i64 1000, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 0, ptr %i.y, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1007) %.sroa.46.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(1007) %.sroa.46, i64 1007, i1 false)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !48
  %i.z = call noundef align 8 dereferenceable_or_null(1024) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 1024, i64 noundef 8) #18, !noalias !48 ; 3 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.l, label %bb.o, !prof !7

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1024) #17
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1024) %i.a) #19
          to label %.body unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.o:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.z, ptr noundef nonnull align 8 dereferenceable(1024) %i.a, i64 1024, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.46)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.z, ptr %.sroa.44.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.i

bb.p:                                             ; preds = %bb.v, %bb.i
  ret void

.body:                                            ; preds = %bb.q, %bb.m
  %eh.lpad-body3 = phi { ptr, i32 } [ %i.ab, %bb.m ], [ %i.ae, %bb.q ]
  resume { ptr, i32 } %eh.lpad-body3

bb.q:                                             ; preds = %bb.b, %bb.d, %bb.e, %bb.h, %bb.j
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsv_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1000) %i.d)
          to label %.body unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.s:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #16
  unreachable

bb.t:                                             ; preds = %bb.c
  %i.ag = extractvalue { ptr, i64 } %i.o, 0
  %i.ah = getelementptr i8, ptr %i.ag, i64 %i.p
  %i.ai = getelementptr i8, ptr %i.ah, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ai) ]
  %i.aj = load i8, ptr %i.ai, align 1, !noundef !5
  %i.ak = icmp eq i8 %i.aj, 13
  br i1 %i.ak, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !noundef !5
  %i.an = add i64 %i.am, 1
  store i64 %i.an, ptr %i.al, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  tail call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB2_8NodeText10insert_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(1000) %2, i64 noundef %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 1)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %.sroa.3.0..sroa_idx, align 8
  br label %bb.p
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB4_4Node17remove_char_range0B8_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %2, i64 noundef %3, i64 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = tail call { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4info(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %2) ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 1        ; 2 uses
  %i.g = icmp ult i64 %3, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = extractvalue { ptr, i64 } %i.e, 0
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  %i.j = tail call { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4info(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %2) ; 2 uses
  %i.k = extractvalue { ptr, i64 } %i.j, 1        ; 2 uses
  %i.l = icmp ult i64 %3, %i.k
  br i1 %i.l, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %3, i64 noundef %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #16
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.m = extractvalue { ptr, i64 } %i.j, 0
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %3
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noundef !5
  %i.q = tail call { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren9nodes_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %2) ; 2 uses
  %i.r = extractvalue { ptr, i64 } %i.q, 1        ; 2 uses
  %i.s = icmp ult i64 %3, %i.r
  br i1 %i.s, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %3, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #16
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.t = extractvalue { ptr, i64 } %i.q, 0
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %3
  %i.v = tail call fastcc noundef nonnull align 8 ptr @_RNvMsB_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE8make_mutBM_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.u) #15
end_hunk_1
begin_hunk_2_@_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node13fix_tree_seam:bb.a

bb.h:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 984
  %i.aa = load i8, ptr %i.z, align 8, !noundef !5
  %i.ab = icmp ult i8 %i.aa, 12
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.ad = call { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %i.ac)
  %i.ae = extractvalue { ptr, i64 } %i.ad, 1
  %i.af = icmp ult i64 %i.ae, 462
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.03.0.in = phi i1 [ %i.ab, %bb.h ], [ %i.af, %bb.i ] ; 2 uses
  %i.ag = icmp eq i64 %i.k, 0
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  br i1 %.sroa.03.0.in, label %bb.m, label %bb.e

bb.l:                                             ; preds = %bb.j
  br i1 %.sroa.03.0.in, label %._crit_edge, label %bb.n

._crit_edge:                                      ; preds = %bb.l
  %.pre = add i64 %i.k, -1
  br label %bb.s

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %i.c = load i8, ptr %0, align 8, !range !4, !alias.scope !106, !noalias !107, !noundef !5
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !108
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren15search_char_idx(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.f, i64 noundef %.sroa.03.017.i), !noalias !107
  %i.g = load i64, ptr %i.a, align 8, !noalias !108, !noundef !5 ; 3 uses
  %i.h = load i64, ptr %i.e, align 8, !noalias !108, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !108
  %i.i = call { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren5nodes(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.f), !noalias !107 ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.i, 1        ; 2 uses
  %i.k = icmp ult i64 %i.g, %i.j
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = extractvalue { ptr, i64 } %i.i, 0
  %i.m = add i64 %i.h, %.sroa.4.015.i             ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.g
  %i.o = load ptr, ptr %i.n, align 8, !noalias !107, !nonnull !5, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  %i.q = sub i64 %.sroa.03.017.i, %i.h
  %i.r = load i8, ptr %i.p, align 8, !range !4, !noalias !107, !noundef !5
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.b, label %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17get_chunk_at_char.exit

bb.d:                                             ; preds = %bb.b
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.g, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #16, !noalias !107
  unreachable

_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17get_chunk_at_char.exit: ; preds = %bb.c, %bb.a
  %.sroa.4.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.m, %bb.c ]
  %.sroa.0.0.lcssa.i = phi ptr [ %0, %bb.a ], [ %i.p, %bb.c ]
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i, i64 8
  %i.u = call { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %i.t), !noalias !107 ; 2 uses
  %i.v = extractvalue { ptr, i64 } %i.u, 0        ; 8 uses
  %2 = extractvalue { ptr, i64 } %i.u, 1          ; 14 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.v) ]
  %i.w = sub i64 %1, %.sroa.4.0.lcssa.i           ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %i.x = icmp samesign ult i64 %2, 17
  br i1 %i.x, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17get_chunk_at_char.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !109
  call void @_RINvMNtCskKLDkoKarTP_4core5sliceSh8align_toNtNtNtB5_9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef range(i64 0, -9223372036854775808) %2)
  %i.y = load ptr, ptr %i.b, align 8, !noalias !109, !nonnull !5, !noundef !5 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !noalias !109, !noundef !5 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !109, !nonnull !5, !align !9, !noundef !5 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !109, !noundef !5 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !109
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa
  %i.ag = icmp samesign eq i64 %i.aa, 0
  br i1 %i.ag, label %._crit_edge, label %.lr.ph

bb.f:                                             ; preds = %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17get_chunk_at_char.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 %2
  %i.ai = icmp samesign eq i64 %2, 0
  br i1 %i.ai, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.thread, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2wCc12Mnjqg_5ropey.exit

.lr.ph:                                           ; preds = %bb.e, %bb.g
  %.sroa.013.0.i185 = phi i64 [ %i.ap, %bb.g ], [ 0, %bb.e ] ; 2 uses
  %.sroa.020.0.i184 = phi i64 [ %i.am, %bb.g ], [ 0, %bb.e ]
  %.sroa.027.0.i183 = phi ptr [ %i.ao, %bb.g ], [ %i.y, %bb.e ] ; 2 uses
  %i.aj = load i8, ptr %.sroa.027.0.i183, align 1, !noundef !5
  %i.ak = icmp sgt i8 %i.aj, -65
  %i.al = zext i1 %i.ak to i64
  %i.am = add i64 %.sroa.020.0.i184, %i.al        ; 3 uses
  %i.an = icmp ugt i64 %i.am, %i.w
  br i1 %i.an, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.027.0.i183, i64 1 ; 2 uses
  %i.ap = add nuw i64 %.sroa.013.0.i185, 1
  %i.aq = icmp eq ptr %i.ao, %i.af
  br i1 %i.aq, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.g, %bb.e
  %.sroa.020.0.i.lcssa = phi i64 [ 0, %bb.e ], [ %i.am, %bb.g ] ; 3 uses
  %i.ar = sub i64 %i.w, %.sroa.020.0.i.lcssa
  %i.as = lshr i64 %i.ar, 4
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.as, i64 %i.ae) ; 2 uses
  %i.at = and i64 %..i, 576460752303423484        ; 2 uses
  %.not51.i187 = icmp eq i64 %i.at, 0
  br i1 %.not51.i187, label %._crit_edge194, label %.lr.ph193

._crit_edge194:                                   ; preds = %.lr.ph193, %._crit_edge
  %.sroa.020.1.i.lcssa = phi i64 [ %.sroa.020.0.i.lcssa, %._crit_edge ], [ %i.cq, %.lr.ph193 ] ; 2 uses
  %.sroa.013.1.i.lcssa = phi i64 [ %i.aa, %._crit_edge ], [ %i.cr, %.lr.ph193 ] ; 2 uses
  %i.au = and i64 %..i, 1152921504606846972       ; 4 uses
  %i.av = icmp ugt i64 %i.au, %i.ae
  br i1 %i.av, label %bb.i, label %bb.h, !prof !7

bb.h:                                             ; preds = %._crit_edge194
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.ae
  %i.ax = icmp samesign eq i64 %i.au, %i.ae
  br i1 %i.ax, label %._crit_edge202, label %.lr.ph201.preheader

.lr.ph201.preheader:                              ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.au
  br label %.lr.ph201

bb.i:                                             ; preds = %._crit_edge194
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.au, i64 noundef %i.ae, i64 noundef %i.ae, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #16
  unreachable

.lr.ph201:                                        ; preds = %.lr.ph201.preheader, %bb.j
  %.sroa.040.0.i199 = phi ptr [ %i.bf, %bb.j ], [ %i.ay, %.lr.ph201.preheader ] ; 2 uses
  %.sroa.013.2.i198 = phi i64 [ %i.bg, %bb.j ], [ %.sroa.013.1.i.lcssa, %.lr.ph201.preheader ] ; 2 uses
  %.sroa.020.2.i197 = phi i64 [ %i.be, %bb.j ], [ %.sroa.020.1.i.lcssa, %.lr.ph201.preheader ] ; 2 uses
  %i.az = load <16 x i8>, ptr %.sroa.040.0.i199, align 16
  %i.ba = icmp slt <16 x i8> %i.az, splat (i8 -64)
  %i.bb = zext <16 x i1> %i.ba to <16 x i8>
  %i.bc = call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.bb, <16 x i8> zeroinitializer)
  %.neg172 = add i64 %.sroa.020.2.i197, 16
  %i.bd = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.bc)
  %i.be = sub i64 %.neg172, %i.bd                 ; 3 uses
  %.not52.i = icmp ult i64 %i.be, %i.w
  br i1 %.not52.i, label %bb.j, label %._crit_edge202

bb.j:                                             ; preds = %.lr.ph201
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.040.0.i199, i64 16 ; 2 uses
  %i.bg = add i64 %.sroa.013.2.i198, 16           ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.aw
  br i1 %i.bh, label %._crit_edge202, label %.lr.ph201

._crit_edge202:                                   ; preds = %bb.j, %.lr.ph201, %bb.h
  %.sroa.020.2.i.lcssa = phi i64 [ %.sroa.020.1.i.lcssa, %bb.h ], [ %.sroa.020.2.i197, %.lr.ph201 ], [ %i.be, %bb.j ]
  %.sroa.013.2.i.lcssa = phi i64 [ %.sroa.013.1.i.lcssa, %bb.h ], [ %.sroa.013.2.i198, %.lr.ph201 ], [ %i.bg, %bb.j ] ; 5 uses
  %i.bi = icmp ugt i64 %.sroa.013.2.i.lcssa, %2
  br i1 %i.bi, label %bb.l, label %bb.k, !prof !7

bb.k:                                             ; preds = %._crit_edge202
  %i.bj = getelementptr inbounds nuw i8, ptr %i.v, i64 %2
  %i.bk = icmp samesign eq i64 %.sroa.013.2.i.lcssa, %2
  br i1 %i.bk, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.thread, label %.lr.ph212.preheader

.lr.ph212.preheader:                              ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.013.2.i.lcssa
  br label %.lr.ph212

bb.l:                                             ; preds = %._crit_edge202
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.013.2.i.lcssa, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #16
  unreachable

.lr.ph212:                                        ; preds = %.lr.ph212.preheader, %bb.m
  %.sroa.036.0.i210 = phi ptr [ %i.br, %bb.m ], [ %i.bl, %.lr.ph212.preheader ] ; 2 uses
  %.sroa.013.3.i209 = phi i64 [ %i.bs, %bb.m ], [ %.sroa.013.2.i.lcssa, %.lr.ph212.preheader ] ; 2 uses
  %.sroa.020.3.i208 = phi i64 [ %i.bp, %bb.m ], [ %.sroa.020.2.i.lcssa, %.lr.ph212.preheader ]
  %i.bm = load i8, ptr %.sroa.036.0.i210, align 1, !alias.scope !109, !noundef !5
  %i.bn = icmp sgt i8 %i.bm, -65
  %i.bo = zext i1 %i.bn to i64
  %i.bp = add i64 %.sroa.020.3.i208, %i.bo        ; 2 uses
  %i.bq = icmp ugt i64 %i.bp, %i.w
  br i1 %i.bq, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %bb.m

bb.m:                                             ; preds = %.lr.ph212
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.036.0.i210, i64 1 ; 2 uses
  %i.bs = add i64 %.sroa.013.3.i209, 1
  %i.bt = icmp eq ptr %i.br, %i.bj
  br i1 %i.bt, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.thread, label %.lr.ph212

.lr.ph193:                                        ; preds = %._crit_edge, %.lr.ph193
  %.sroa.013.1.i191 = phi i64 [ %i.cr, %.lr.ph193 ], [ %i.aa, %._crit_edge ]
  %.sroa.020.1.i190 = phi i64 [ %i.cq, %.lr.ph193 ], [ %.sroa.020.0.i.lcssa, %._crit_edge ]
  %.sroa.030.0.i189 = phi ptr [ %i.bu, %.lr.ph193 ], [ %i.ac, %._crit_edge ] ; 5 uses
  %.sroa.5.0.i188 = phi i64 [ %i.bv, %.lr.ph193 ], [ %i.at, %._crit_edge ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i189, i64 64
  %i.bv = add i64 %.sroa.5.0.i188, -4             ; 2 uses
  %i.bw = load <16 x i8>, ptr %.sroa.030.0.i189, align 16
  %i.bx = icmp slt <16 x i8> %i.bw, splat (i8 -64)
  %i.by = zext <16 x i1> %i.bx to <16 x i8>
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i189, i64 16
  %i.ca = load <16 x i8>, ptr %i.bz, align 16
  %i.cb = icmp slt <16 x i8> %i.ca, splat (i8 -64)
  %i.cc = zext <16 x i1> %i.cb to <16 x i8>
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i189, i64 32
  %i.ce = load <16 x i8>, ptr %i.cd, align 16
  %i.cf = icmp slt <16 x i8> %i.ce, splat (i8 -64)
  %i.cg = zext <16 x i1> %i.cf to <16 x i8>
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i189, i64 48
  %i.ci = load <16 x i8>, ptr %i.ch, align 16
  %i.cj = icmp slt <16 x i8> %i.ci, splat (i8 -64)
  %i.ck = zext <16 x i1> %i.cj to <16 x i8>
  %i.cl = add nuw nsw <16 x i8> %i.cc, %i.by
  %i.cm = add nuw nsw <16 x i8> %i.cl, %i.cg
  %i.cn = add nuw nsw <16 x i8> %i.cm, %i.ck
  %i.co = call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.cn, <16 x i8> zeroinitializer)
  %.neg = add i64 %.sroa.020.1.i190, 64
  %i.cp = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.co)
  %i.cq = sub i64 %.neg, %i.cp                    ; 2 uses
  %i.cr = add i64 %.sroa.013.1.i191, 64           ; 2 uses
  %.not51.i = icmp eq i64 %i.bv, 0
  br i1 %.not51.i, label %._crit_edge194, label %.lr.ph193

bb.n:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2wCc12Mnjqg_5ropey.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.045.0282, i64 1 ; 2 uses
  %i.ct = add nuw nsw i64 %.sroa.8.0281, 1
  %i.cu = icmp eq ptr %i.cs, %i.ah
  br i1 %i.cu, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.thread, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2wCc12Mnjqg_5ropey.exit

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2wCc12Mnjqg_5ropey.exit: ; preds = %bb.f, %bb.n
  %.sroa.07.0.i283 = phi i64 [ %i.cy, %bb.n ], [ 0, %bb.f ]
  %.sroa.045.0282 = phi ptr [ %i.cs, %bb.n ], [ %i.v, %bb.f ] ; 2 uses
  %.sroa.8.0281 = phi i64 [ %i.ct, %bb.n ], [ 0, %bb.f ] ; 2 uses
  %i.cv = load i8, ptr %.sroa.045.0282, align 1, !noundef !5
  %i.cw = icmp sgt i8 %i.cv, -65
  %i.cx = zext i1 %i.cw to i64
  %i.cy = add i64 %.sroa.07.0.i283, %i.cx         ; 2 uses
  %i.cz = icmp ugt i64 %i.cy, %i.w
  br i1 %i.cz, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %bb.n

_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit: ; preds = %.lr.ph, %.lr.ph212, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2wCc12Mnjqg_5ropey.exit
  %.sroa.0.0.i = phi i64 [ %.sroa.013.3.i209, %.lr.ph212 ], [ %.sroa.8.0281, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2wCc12Mnjqg_5ropey.exit ], [ %.sroa.013.0.i185, %.lr.ph ] ; 6 uses
  %i.da = icmp eq i64 %.sroa.0.0.i, 0
  %i.db = icmp eq i64 %.sroa.0.0.i, %2
  %or.cond = or i1 %i.da, %i.db
  br i1 %or.cond, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.thread, label %bb.o

bb.o:                                             ; preds = %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit
  %i.dc = add i64 %.sroa.0.0.i, -1                ; 3 uses
  %i.dd = icmp ult i64 %i.dc, %2
  br i1 %i.dd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.de = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.dc
  %i.df = load i8, ptr %i.de, align 1, !noundef !5
  %i.dg = icmp eq i8 %i.df, 13
  br i1 %i.dg, label %bb.r, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.thread

bb.q:                                             ; preds = %bb.o
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.dc, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #16
  unreachable

bb.r:                                             ; preds = %bb.p
end_hunk_2
begin_hunk_3_@_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node15append_at_depth:bb.a
  %i.bc = tail call noundef ptr @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node15append_at_depth(ptr noalias nofree noundef nonnull align 8 dereferenceable(1008) %i.ba, ptr noundef nonnull %1, i64 noundef %i.bb) ; 12 uses
  store ptr %i.bc, ptr %i.h, align 8
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren17update_child_info(ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.aq, i64 noundef %i.au)
          to label %bb.y unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %.not54 = icmp eq ptr %i.bc, null
  br i1 %.not54, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit31, label %bb.ao

bb.y:                                             ; preds = %bb.w
  %.not = icmp eq ptr %i.bc, null
  br i1 %.not, label %bb.al, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.bc, ptr %i.g, align 8
  %i.be = load i8, ptr %i.ar, align 8, !noundef !5
  %i.bf = icmp ult i8 %i.be, 24
  br i1 %i.bf, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bh = load i8, ptr %i.bg, align 8, !range !4, !alias.scope !154, !noalias !155, !noundef !5
  %i.bi = trunc nuw i8 %i.bh to i1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 24 ; 2 uses
  br i1 %i.bi, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren13combined_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.bj)
          to label %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info.exit unwind label %bb.am

bb.ac:                                            ; preds = %bb.aa
  %i.bk = invoke { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %i.bj)
          to label %.noexc19 unwind label %bb.am  ; 2 uses

.noexc19:                                         ; preds = %bb.ac
  %i.bl = extractvalue { ptr, i64 } %i.bk, 0
  %i.bm = extractvalue { ptr, i64 } %i.bk, 1
  invoke fastcc void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9text_infoNtB2_8TextInfo8from_str(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bl, i64 noundef %i.bm) #15
          to label %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info.exit unwind label %bb.am

bb.ad:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bo = load i8, ptr %i.bn, align 8, !range !4, !alias.scope !156, !noalias !157, !noundef !5
  %i.bp = trunc nuw i8 %i.bo to i1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bc, i64 24 ; 2 uses
  br i1 %i.bp, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren13combined_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.bq)
          to label %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info.exit24 unwind label %bb.am

bb.af:                                            ; preds = %bb.ad
  %i.br = invoke { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %i.bq)
          to label %.noexc22 unwind label %bb.am  ; 2 uses

.noexc22:                                         ; preds = %bb.af
  %i.bs = extractvalue { ptr, i64 } %i.br, 0
  %i.bt = extractvalue { ptr, i64 } %i.br, 1
  invoke fastcc void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9text_infoNtB2_8TextInfo8from_str(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bs, i64 noundef %i.bt) #15
          to label %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info.exit24 unwind label %bb.am

_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info.exit: ; preds = %bb.ab, %.noexc19
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
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !158
  %i.bx = call noundef align 8 dereferenceable_or_null(1024) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 1024, i64 noundef 8) #18, !noalias !158 ; 3 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.ag, label %bb.aj, !prof !7

bb.ag:                                            ; preds = %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info.exit
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1024) #17
          to label %.noexc25 unwind label %bb.ah

.noexc25:                                         ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.ag
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1024) %i.a) #19
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit31 unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.aj:                                            ; preds = %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.bx, ptr noundef nonnull align 8 dereferenceable(1024) %i.a, i64 1024, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ak

bb.ak:                                            ; preds = %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info.exit24, %bb.aj
  %.sroa.0.2 = phi ptr [ null, %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info.exit24 ], [ %i.bx, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.al

_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info.exit24: ; preds = %bb.ae, %.noexc22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.bc, ptr %i.cb, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.aq, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.ak

bb.al:                                            ; preds = %bb.y, %bb.ak
  %.sroa.0.3 = phi ptr [ %.sroa.0.2, %bb.ak ], [ null, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.g

bb.am:                                            ; preds = %.noexc22, %.noexc19, %bb.ab, %bb.ac, %bb.ae, %bb.af
  %lpad.thr_comm48 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cc = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !noalias !159
  %i.cd = icmp eq i64 %i.cc, 1
  br i1 %i.cd, label %bb.an, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit31

bb.an:                                            ; preds = %bb.am
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit31 unwind label %bb.r

bb.ao:                                            ; preds = %bb.x
  %i.ce = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !noalias !160
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.ap, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit31

bb.ap:                                            ; preds = %bb.ao
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit31 unwind label %bb.r

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit31: ; preds = %bb.am, %bb.an, %bb.ah, %bb.ao, %bb.ap, %bb.h, %bb.i, %bb.x, %bb.aq, %bb.ar
  %.pn1434 = phi { ptr, i32 } [ %lpad.thr_comm, %bb.aq ], [ %lpad.thr_comm48, %bb.am ], [ %lpad.thr_comm, %bb.ar ], [ %i.bd, %bb.x ], [ %i.bd, %bb.ao ], [ %lpad.phi, %bb.i ], [ %lpad.phi, %bb.h ], [ %i.bd, %bb.ap ], [ %i.bz, %bb.ah ], [ %lpad.thr_comm48, %bb.an ]
  resume { ptr, i32 } %.pn1434

bb.aq:                                            ; preds = %.invoke, %bb.u, %bb.v, %bb.s
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cg = atomicrmw sub ptr %1, i64 1 release, align 8, !noalias !161
  %i.ch = icmp eq i64 %i.cg, 1
  br i1 %i.ch, label %bb.ar, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit31

bb.ar:                                            ; preds = %bb.aq
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit31 unwind label %bb.r
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
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.45.0.copyload) ]
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
  %i.s = load i8, ptr %i.r, align 8, !range !4, !alias.scope !168, !noalias !169, !noundef !5
  %i.t = trunc nuw i8 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoEIBX_INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtB1q_4node4NodeEEEINtB5_7ZipImplBW_B2b_E4nextB1s_.exit
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren13combined_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.u)
  br label %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info.exit

bb.d:                                             ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoEIBX_INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtB1q_4node4NodeEEEINtB5_7ZipImplBW_B2b_E4nextB1s_.exit
  %i.v = call { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %i.u), !noalias !169 ; 2 uses
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
  %i.ao = load i8, ptr %i.an, align 8, !range !4, !alias.scope !170, !noalias !171, !noundef !5
  %i.ap = trunc nuw i8 %i.ao to i1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 24 ; 2 uses
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren13combined_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.aq)
  br label %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info.exit4

bb.j:                                             ; preds = %bb.h
  %i.ar = call { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %i.aq), !noalias !171 ; 2 uses
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
  call void @_RINvNtCskKLDkoKarTP_4core9panicking13assert_failedNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoBM_EBS_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #16
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
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #16
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
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #16
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.k = tail call { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren5nodes(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.c) ; 2 uses
  %i.l = extractvalue { ptr, i64 } %i.k, 0        ; 3 uses
  %2 = extractvalue { ptr, i64 } %i.k, 1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %.idx = shl nuw nsw i64 %2, 3
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx
  %i.n = icmp eq i64 %2, 0
  br i1 %i.n, label %.loopexit, label %.lr.ph

bb.j:                                             ; preds = %bb.g
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @76, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77) #16
  unreachable

.lr.ph:                                           ; preds = %bb.i, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.o, %.lr.ph ], [ %i.l, %bb.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 8 ; 2 uses
  %i.p = load ptr, ptr %.sroa.0.02, align 8, !nonnull !5, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  tail call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node16assert_node_size(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.q, i1 noundef zeroext false)
  %i.r = icmp eq ptr %i.o, %i.m
  br i1 %i.r, label %.loopexit, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node16is_char_boundary(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1008) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  %i.b = load i8, ptr %0, align 8, !range !4, !alias.scope !175, !noalias !176, !noundef !5
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.lr.ph.i, label %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17get_chunk_at_byte.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %.sroa.0.018.i = phi ptr [ %0, %.lr.ph.i ], [ %i.o, %bb.c ]
  %.sroa.03.017.i = phi i64 [ %1, %.lr.ph.i ], [ %i.p, %bb.c ] ; 2 uses
  %.sroa.05.016.i = phi i64 [ 0, %.lr.ph.i ], [ %i.l, %bb.c ]
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !177
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren15search_byte_idx(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.e, i64 noundef %.sroa.03.017.i), !noalias !176
  %i.f = load i64, ptr %i.a, align 8, !noalias !177, !noundef !5 ; 3 uses
  %i.g = load i64, ptr %i.d, align 8, !noalias !177, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !177
  %i.h = call { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren5nodes(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.e), !noalias !176 ; 2 uses
  %i.i = extractvalue { ptr, i64 } %i.h, 1        ; 2 uses
  %i.j = icmp ult i64 %i.f, %i.i
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = extractvalue { ptr, i64 } %i.h, 0
  %i.l = add i64 %i.g, %.sroa.05.016.i            ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.f
  %i.n = load ptr, ptr %i.m, align 8, !noalias !176, !nonnull !5, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  %i.p = sub i64 %.sroa.03.017.i, %i.g
  %i.q = load i8, ptr %i.o, align 8, !range !4, !noalias !176, !noundef !5
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.b, label %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17get_chunk_at_byte.exit

bb.d:                                             ; preds = %bb.b
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.f, i64 noundef %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #16, !noalias !176
  unreachable

_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17get_chunk_at_byte.exit: ; preds = %bb.c, %bb.a
  %.sroa.05.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.l, %bb.c ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi ptr [ %0, %bb.a ], [ %i.o, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i, i64 8
  %i.t = call { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %i.s), !noalias !176 ; 2 uses
  %i.u = extractvalue { ptr, i64 } %i.t, 0        ; 2 uses
  %2 = extractvalue { ptr, i64 } %i.t, 1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %i.v = sub i64 %1, %.sroa.05.0.lcssa.i          ; 3 uses
  %i.w = icmp eq i64 %1, %.sroa.05.0.lcssa.i
  br i1 %i.w, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17get_chunk_at_byte.exit
  %.not = icmp ult i64 %i.v, %2
  br i1 %.not, label %bb.h, label %bb.g

bb.f:                                             ; preds = %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17get_chunk_at_byte.exit, %bb.g, %bb.h
  %.sroa.0.0.shrunk = phi i1 [ %i.aa, %bb.h ], [ %i.x, %bb.g ], [ true, %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17get_chunk_at_byte.exit ]
  ret i1 %.sroa.0.0.shrunk

bb.g:                                             ; preds = %bb.e
  %i.x = icmp eq i64 %i.v, %2
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.v
  %i.z = load i8, ptr %i.y, align 1, !noundef !5
  %i.aa = icmp sgt i8 %i.z, -65
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node16prepend_at_depth(ptr noalias nofree noundef align 8 dereferenceable(1008) %0, ptr noundef nonnull %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1024 x i8], align 8              ; 8 uses
  %.sroa.4 = alloca [975 x i8], align 1           ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %i.d = alloca [968 x i8], align 8               ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [40 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [40 x i8], align 8                ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 9 uses
  %i.k = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.k, align 8
  %i.l = icmp eq i64 %2, 0
  %i.m = load i8, ptr %0, align 8, !range !4, !noundef !5
  %i.n = trunc nuw i8 %i.m to i1                  ; 2 uses
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.n, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  br i1 %i.n, label %bb.s, label %.invoke, !prof !10

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %1, ptr %i.j, align 8
  %i.p = invoke fastcc noundef nonnull align 8 ptr @_RNvMsB_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE8make_mutBM_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.j)
          to label %bb.j unwind label %.loopexit.split-lp ; 3 uses

bb.e:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load i8, ptr %i.q, align 8, !range !4, !noundef !5
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.g, label %.invoke, !prof !10

.invoke:                                          ; preds = %bb.c, %bb.e
  %i.t = phi ptr [ @65, %bb.e ], [ @69, %bb.c ]
  %i.u = phi i64 [ 42, %bb.e ], [ 44, %bb.c ]
  %i.v = phi ptr [ @78, %bb.e ], [ @81, %bb.c ]
  invoke void @_RINvNtCsG258MDvU3F_3std9panicking11begin_panicReEB4_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v) #17
          to label %.cont unwind label %bb.ar

.cont:                                            ; preds = %.invoke
  unreachable

bb.f:                                             ; preds = %bb.v, %bb.l
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.am, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit17
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit17 ], [ %.sroa.0.3, %bb.am ], [ %1, %bb.e ]
  ret ptr %.sroa.0.0

.loopexit:                                        ; preds = %.lr.ph, %bb.p
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp:                               ; preds = %bb.d, %bb.l, %bb.m
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !206)
  call void @llvm.experimental.noalias.scope.decl(metadata !207)
  %i.w = load ptr, ptr %i.j, align 8, !alias.scope !208, !nonnull !5, !noundef !5
  %i.x = atomicrmw sub ptr %i.w, i64 1 release, align 8, !noalias !208
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit31

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit31 unwind label %bb.r

bb.j:                                             ; preds = %bb.d
  %i.z = load i8, ptr %i.p, align 8, !range !4, !noundef !5
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.k, label %bb.l, !prof !10

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 968
  %i.ad = load i8, ptr %i.ac, align 8, !noundef !5 ; 2 uses
  %i.ae = zext i8 %i.ad to i64                    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.ag = load i8, ptr %i.af, align 8, !noundef !5
  %i.ah = zext i8 %i.ag to i64
  %i.ai = add nuw nsw i64 %i.ah, %i.ae
  %i.aj = icmp samesign ult i64 %i.ai, 25
  br i1 %i.aj, label %.preheader, label %bb.m

.preheader:                                       ; preds = %bb.k
  %.not56 = icmp eq i8 %i.ad, 0
  br i1 %.not56, label %._crit_edge, label %.lr.ph

bb.l:                                             ; preds = %bb.j
  invoke void @_RINvNtCsG258MDvU3F_3std9panicking11begin_panicReEB4_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #17
          to label %bb.f unwind label %.loopexit.split-lp

bb.m:                                             ; preds = %bb.k
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren15distribute_with(ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.ab, ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.o)
          to label %bb.n unwind label %.loopexit.split-lp

bb.n:                                             ; preds = %bb.m
  %i.ak = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit17

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit17: ; preds = %bb.o, %._crit_edge, %bb.n
  %.sroa.0.1 = phi ptr [ %i.ak, %bb.n ], [ null, %bb.o ], [ null, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.g

._crit_edge:                                      ; preds = %bb.q, %.preheader
  call void @llvm.experimental.noalias.scope.decl(metadata !209)
  call void @llvm.experimental.noalias.scope.decl(metadata !210)
  %i.al = load ptr, ptr %i.j, align 8, !alias.scope !211, !nonnull !5, !noundef !5
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !211
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit17

bb.o:                                             ; preds = %._crit_edge
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit17

.lr.ph:                                           ; preds = %.preheader, %bb.q
  %.sroa.08.055 = phi i64 [ %i.ao, %bb.q ], [ 0, %.preheader ]
  %i.ao = add nuw nsw i64 %.sroa.08.055, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren3pop(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.ab)
          to label %bb.p unwind label %.loopexit

bb.p:                                             ; preds = %.lr.ph
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren6insert(ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.o, i64 noundef 0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.i)
          to label %bb.q unwind label %.loopexit

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %exitcond.not = icmp eq i64 %i.ao, %i.ae
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.r:                                             ; preds = %bb.as, %bb.aq, %bb.ao, %bb.i
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.s:                                             ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ar = invoke { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren9nodes_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.aq)
          to label %bb.t unwind label %bb.ar      ; 2 uses

bb.t:                                             ; preds = %bb.s
  %i.as = extractvalue { ptr, i64 } %i.ar, 1
  %.not = icmp eq i64 %i.as, 0
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.at = extractvalue { ptr, i64 } %i.ar, 0
  %i.au = invoke fastcc noundef nonnull align 8 ptr @_RNvMsB_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE8make_mutBM_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.at)
          to label %bb.w unwind label %bb.ar

bb.v:                                             ; preds = %bb.t
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #17
          to label %bb.f unwind label %bb.ar

bb.w:                                             ; preds = %bb.u
  %i.av = add i64 %2, -1
  %i.aw = tail call noundef ptr @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node16prepend_at_depth(ptr noalias nofree noundef nonnull align 8 dereferenceable(1008) %i.au, ptr noundef nonnull %1, i64 noundef %i.av) ; 12 uses
end_hunk_3
begin_hunk_4_@_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17get_chunk_at_byte:bb.a
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
  %i.r = call { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4info(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.n), !noalias !247 ; 2 uses
  %i.s = extractvalue { ptr, i64 } %i.r, 1        ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 968 ; 7 uses
  %i.u = load i8, ptr %i.t, align 8, !alias.scope !248, !noalias !247, !noundef !5
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
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.w, i64 noundef %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #16, !noalias !247
  unreachable

.lr.ph560:                                        ; preds = %.lr.ph560.preheader, %bb.g
  %.sroa.0.0.i107558 = phi i64 [ %i.af, %bb.g ], [ 0, %.lr.ph560.preheader ] ; 2 uses
  %.sroa.04.0.i557 = phi i64 [ %i.ai, %bb.g ], [ 0, %.lr.ph560.preheader ] ; 2 uses
  %.sroa.09.0.i556 = phi ptr [ %i.ah, %bb.g ], [ %i.x, %.lr.ph560.preheader ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i556, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !247, !noundef !5
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
  %i.ak = call { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4info(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.n), !noalias !247 ; 2 uses
  %i.al = extractvalue { ptr, i64 } %i.ak, 1      ; 2 uses
  %i.am = load i8, ptr %i.t, align 8, !alias.scope !248, !noalias !247, !noundef !5
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
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.04.0.i.lcssa, i64 noundef %i.ao, i64 noundef %i.al, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #16, !noalias !247
  unreachable

.lr.ph571:                                        ; preds = %.lr.ph571.preheader, %bb.j
  %.sroa.0.1.i569 = phi i64 [ %i.aw, %bb.j ], [ %.sroa.0.0.i107.lcssa, %.lr.ph571.preheader ] ; 2 uses
  %.sroa.04.1.i568 = phi i64 [ %i.ay, %bb.j ], [ %.sroa.04.0.i.lcssa, %.lr.ph571.preheader ] ; 2 uses
  %.sroa.011.0.i567 = phi ptr [ %i.ax, %bb.j ], [ %i.at, %.lr.ph571.preheader ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.011.0.i567, i64 8
  %i.av = load i64, ptr %i.au, align 8, !noalias !247, !noundef !5
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  %i.be = icmp samesign ult i64 %i.bd, 17
  br i1 %i.be, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !249
  call void @_RINvMNtCskKLDkoKarTP_4core5sliceSh8align_toNtNtNtB5_9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bc, i64 noundef range(i64 0, -9223372036854775808) %i.bd)
  %i.bf = load ptr, ptr %i.a, align 8, !noalias !249, !nonnull !5, !noundef !5 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !249, !noundef !5 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !249, !nonnull !5, !align !9, !noundef !5 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bl = load i64, ptr %i.bk, align 8, !noalias !249, !noundef !5 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !249
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bh
  %i.bn = icmp samesign eq i64 %i.bh, 0
  br i1 %i.bn, label %._crit_edge, label %.lr.ph

bb.m:                                             ; preds = %bb.k
  %5 = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bc) ]
  %i.bo = icmp samesign eq i64 %i.bd, 0
  br i1 %i.bo, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit105, label %.lr.ph715

.lr.ph:                                           ; preds = %bb.l, %bb.n
  %.sroa.013.0.i77488 = phi i64 [ %i.bv, %bb.n ], [ 0, %bb.l ] ; 2 uses
  %.sroa.020.0.i76487 = phi i64 [ %i.bs, %bb.n ], [ 0, %bb.l ]
  %.sroa.027.0.i75486 = phi ptr [ %i.bu, %bb.n ], [ %i.bf, %bb.l ] ; 2 uses
  %i.bp = load i8, ptr %.sroa.027.0.i75486, align 1, !noundef !5
  %i.bq = icmp sgt i8 %i.bp, -65
  %i.br = zext i1 %i.bq to i64
  %i.bs = add i64 %.sroa.020.0.i76487, %i.br      ; 3 uses
  %i.bt = icmp ugt i64 %i.bs, %2
  br i1 %i.bt, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit105, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.027.0.i75486, i64 1 ; 2 uses
  %i.bv = add nuw i64 %.sroa.013.0.i77488, 1
  %i.bw = icmp eq ptr %i.bu, %i.bm
  br i1 %i.bw, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.n, %bb.l
  %.sroa.020.0.i76.lcssa = phi i64 [ 0, %bb.l ], [ %i.bs, %bb.n ] ; 3 uses
  %i.bx = sub i64 %2, %.sroa.020.0.i76.lcssa
  %i.by = lshr i64 %i.bx, 4
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.by, i64 %i.bl) ; 2 uses
  %i.bz = and i64 %..i, 576460752303423484        ; 2 uses
  %.not51.i89490 = icmp eq i64 %i.bz, 0
  br i1 %.not51.i89490, label %._crit_edge497, label %.lr.ph496

._crit_edge497:                                   ; preds = %.lr.ph496, %._crit_edge
  %.sroa.020.1.i87.lcssa = phi i64 [ %.sroa.020.0.i76.lcssa, %._crit_edge ], [ %i.dw, %.lr.ph496 ] ; 2 uses
  %.sroa.013.1.i88.lcssa = phi i64 [ %i.bh, %._crit_edge ], [ %i.dx, %.lr.ph496 ] ; 2 uses
  %i.ca = and i64 %..i, 1152921504606846972       ; 4 uses
  %i.cb = icmp ugt i64 %i.ca, %i.bl
  br i1 %i.cb, label %bb.p, label %bb.o, !prof !7

bb.o:                                             ; preds = %._crit_edge497
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.bl
  %i.cd = icmp samesign eq i64 %i.ca, %i.bl
  br i1 %i.cd, label %._crit_edge505, label %.lr.ph504.preheader

.lr.ph504.preheader:                              ; preds = %bb.o
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.ca
  br label %.lr.ph504

bb.p:                                             ; preds = %._crit_edge497
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.ca, i64 noundef %i.bl, i64 noundef %i.bl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #16
  unreachable

.lr.ph504:                                        ; preds = %.lr.ph504.preheader, %bb.q
  %.sroa.040.0.i96502 = phi ptr [ %i.cl, %bb.q ], [ %i.ce, %.lr.ph504.preheader ] ; 2 uses
  %.sroa.013.2.i95501 = phi i64 [ %i.cm, %bb.q ], [ %.sroa.013.1.i88.lcssa, %.lr.ph504.preheader ] ; 2 uses
  %.sroa.020.2.i94500 = phi i64 [ %i.ck, %bb.q ], [ %.sroa.020.1.i87.lcssa, %.lr.ph504.preheader ] ; 2 uses
  %i.cf = load <16 x i8>, ptr %.sroa.040.0.i96502, align 16
  %i.cg = icmp slt <16 x i8> %i.cf, splat (i8 -64)
  %i.ch = zext <16 x i1> %i.cg to <16 x i8>
  %i.ci = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.ch, <16 x i8> zeroinitializer)
  %.neg470 = add i64 %.sroa.020.2.i94500, 16
  %i.cj = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.ci)
  %i.ck = sub i64 %.neg470, %i.cj                 ; 3 uses
  %.not52.i97 = icmp ult i64 %i.ck, %2
  br i1 %.not52.i97, label %bb.q, label %._crit_edge505

bb.q:                                             ; preds = %.lr.ph504
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.040.0.i96502, i64 16 ; 2 uses
  %i.cm = add i64 %.sroa.013.2.i95501, 16         ; 2 uses
  %i.cn = icmp eq ptr %i.cl, %i.cc
  br i1 %i.cn, label %._crit_edge505, label %.lr.ph504

._crit_edge505:                                   ; preds = %bb.q, %.lr.ph504, %bb.o
  %.sroa.020.2.i94.lcssa = phi i64 [ %.sroa.020.1.i87.lcssa, %bb.o ], [ %.sroa.020.2.i94500, %.lr.ph504 ], [ %i.ck, %bb.q ]
  %.sroa.013.2.i95.lcssa = phi i64 [ %.sroa.013.1.i88.lcssa, %bb.o ], [ %.sroa.013.2.i95501, %.lr.ph504 ], [ %i.cm, %bb.q ] ; 5 uses
  %i.co = icmp ugt i64 %.sroa.013.2.i95.lcssa, %i.bd
  br i1 %i.co, label %bb.s, label %bb.r, !prof !7

bb.r:                                             ; preds = %._crit_edge505
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bd
  %i.cq = icmp samesign eq i64 %.sroa.013.2.i95.lcssa, %i.bd
  br i1 %i.cq, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit105, label %.lr.ph515.preheader

.lr.ph515.preheader:                              ; preds = %bb.r
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.sroa.013.2.i95.lcssa
  br label %.lr.ph515

bb.s:                                             ; preds = %._crit_edge505
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.013.2.i95.lcssa, i64 noundef range(i64 0, -9223372036854775808) %i.bd, i64 noundef range(i64 0, -9223372036854775808) %i.bd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #16
  unreachable

.lr.ph515:                                        ; preds = %.lr.ph515.preheader, %bb.t
  %.sroa.036.0.i100513 = phi ptr [ %i.cx, %bb.t ], [ %i.cr, %.lr.ph515.preheader ] ; 2 uses
  %.sroa.013.3.i99512 = phi i64 [ %i.cy, %bb.t ], [ %.sroa.013.2.i95.lcssa, %.lr.ph515.preheader ] ; 2 uses
  %.sroa.020.3.i98511 = phi i64 [ %i.cv, %bb.t ], [ %.sroa.020.2.i94.lcssa, %.lr.ph515.preheader ]
  %i.cs = load i8, ptr %.sroa.036.0.i100513, align 1, !alias.scope !249, !noundef !5
  %i.ct = icmp sgt i8 %i.cs, -65
  %i.cu = zext i1 %i.ct to i64
  %i.cv = add i64 %.sroa.020.3.i98511, %i.cu      ; 2 uses
  %i.cw = icmp ugt i64 %i.cv, %2
  br i1 %i.cw, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit105, label %bb.t

bb.t:                                             ; preds = %.lr.ph515
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.036.0.i100513, i64 1 ; 2 uses
  %i.cy = add i64 %.sroa.013.3.i99512, 1
  %i.cz = icmp eq ptr %i.cx, %i.cp
  br i1 %i.cz, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit105, label %.lr.ph515

.lr.ph496:                                        ; preds = %._crit_edge, %.lr.ph496
  %.sroa.013.1.i88494 = phi i64 [ %i.dx, %.lr.ph496 ], [ %i.bh, %._crit_edge ]
  %.sroa.020.1.i87493 = phi i64 [ %i.dw, %.lr.ph496 ], [ %.sroa.020.0.i76.lcssa, %._crit_edge ]
  %.sroa.030.0.i86492 = phi ptr [ %i.da, %.lr.ph496 ], [ %i.bj, %._crit_edge ] ; 5 uses
  %.sroa.5.0.i85491 = phi i64 [ %i.db, %.lr.ph496 ], [ %i.bz, %._crit_edge ]
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i86492, i64 64
  %i.db = add i64 %.sroa.5.0.i85491, -4           ; 2 uses
  %i.dc = load <16 x i8>, ptr %.sroa.030.0.i86492, align 16
  %i.dd = icmp slt <16 x i8> %i.dc, splat (i8 -64)
  %i.de = zext <16 x i1> %i.dd to <16 x i8>
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i86492, i64 16
  %i.dg = load <16 x i8>, ptr %i.df, align 16
  %i.dh = icmp slt <16 x i8> %i.dg, splat (i8 -64)
  %i.di = zext <16 x i1> %i.dh to <16 x i8>
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i86492, i64 32
  %i.dk = load <16 x i8>, ptr %i.dj, align 16
  %i.dl = icmp slt <16 x i8> %i.dk, splat (i8 -64)
  %i.dm = zext <16 x i1> %i.dl to <16 x i8>
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i86492, i64 48
  %i.do = load <16 x i8>, ptr %i.dn, align 16
  %i.dp = icmp slt <16 x i8> %i.do, splat (i8 -64)
  %i.dq = zext <16 x i1> %i.dp to <16 x i8>
  %i.dr = add nuw nsw <16 x i8> %i.di, %i.de
  %i.ds = add nuw nsw <16 x i8> %i.dr, %i.dm
  %i.dt = add nuw nsw <16 x i8> %i.ds, %i.dq
  %i.du = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.dt, <16 x i8> zeroinitializer)
  %.neg = add i64 %.sroa.020.1.i87493, 64
  %i.dv = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.du)
  %i.dw = sub i64 %.neg, %i.dv                    ; 2 uses
  %i.dx = add i64 %.sroa.013.1.i88494, 64         ; 2 uses
  %.not51.i89 = icmp eq i64 %i.db, 0
  br i1 %.not51.i89, label %._crit_edge497, label %.lr.ph496

bb.u:                                             ; preds = %.lr.ph715
  %i.dy = add nuw nsw i64 %.sroa.8260.0712, 1
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0258.0711, i64 1 ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %5
  br i1 %i.ea, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit105, label %.lr.ph715

.lr.ph715:                                        ; preds = %bb.m, %bb.u
  %.sroa.07.0.i103713 = phi i64 [ %i.ee, %bb.u ], [ 0, %bb.m ]
  %.sroa.8260.0712 = phi i64 [ %i.dy, %bb.u ], [ 0, %bb.m ] ; 2 uses
  %.sroa.0258.0711 = phi ptr [ %i.dz, %bb.u ], [ %i.bc, %bb.m ] ; 2 uses
  %i.eb = load i8, ptr %.sroa.0258.0711, align 1, !noundef !5
  %i.ec = icmp sgt i8 %i.eb, -65
  %i.ed = zext i1 %i.ec to i64
  %i.ee = add i64 %.sroa.07.0.i103713, %i.ed      ; 2 uses
  %i.ef = icmp ugt i64 %i.ee, %2
  br i1 %i.ef, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit105, label %bb.u

_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit105: ; preds = %.lr.ph, %.lr.ph515, %bb.t, %bb.u, %.lr.ph715, %bb.m, %bb.r
  %.sroa.0.0.i78 = phi i64 [ %i.bd, %bb.r ], [ %i.bd, %bb.m ], [ %i.bd, %bb.t ], [ %.sroa.8260.0712, %.lr.ph715 ], [ %i.bd, %bb.u ], [ %.sroa.013.3.i99512, %.lr.ph515 ], [ %.sroa.013.0.i77488, %.lr.ph ] ; 22 uses
  %i.eg = tail call { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %i.n) ; 2 uses
  %i.eh = extractvalue { ptr, i64 } %i.eg, 0      ; 7 uses
  %i.ei = extractvalue { ptr, i64 } %i.eg, 1      ; 9 uses
  %i.ej = icmp eq i64 %.sroa.0.0.i78, 0           ; 4 uses
  br i1 %i.ej, label %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit, label %bb.v

bb.v:                                             ; preds = %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit105
  %.not.i196 = icmp ult i64 %.sroa.0.0.i78, %i.ei
  br i1 %.not.i196, label %bb.w, label %.split.i

.split.i:                                         ; preds = %bb.v
  %i.ek = icmp ne i64 %.sroa.0.0.i78, %i.ei
  %.not = icmp eq ptr %i.eh, null
  %or.cond = select i1 %i.ek, i1 true, i1 %.not, !prof !250
  br i1 %or.cond, label %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread, label %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread672, !prof !250

bb.w:                                             ; preds = %bb.v
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.sroa.0.0.i78
  %i.em = load i8, ptr %i.el, align 1, !alias.scope !251, !noundef !5
  %i.en = icmp sgt i8 %i.em, -65
  br i1 %i.en, label %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread672, label %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread

_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit: ; preds = %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit105
  %.not.old = icmp eq ptr %i.eh, null
  br i1 %.not.old, label %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread, label %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread672, !prof !252

_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread672: ; preds = %bb.w, %.split.i, %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit
  %i.eo = sub i64 %i.ei, %.sroa.0.0.i78           ; 8 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.sroa.0.0.i78 ; 3 uses
  %i.eq = load i64, ptr %i.i, align 8, !noundef !5
  %i.er = load i64, ptr %i.j, align 8, !noundef !5
  %i.es = sub i64 %i.eq, %i.er                    ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253)
  %i.et = icmp samesign ult i64 %i.eo, 17
  br i1 %i.et, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread672
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !253
  call void @_RINvMNtCskKLDkoKarTP_4core5sliceSh8align_toNtNtNtB5_9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ep, i64 noundef range(i64 0, -9223372036854775808) %i.eo)
  %i.eu = load ptr, ptr %i.b, align 8, !noalias !253, !nonnull !5, !noundef !5 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ew = load i64, ptr %i.ev, align 8, !noalias !253, !noundef !5 ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.b, i64 16
end_hunk_4
begin_hunk_5_@_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node21get_chunk_at_byte_mut:bb.a
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !274)
  %i.t = icmp samesign ult i64 %i.s, 17
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !274
  call void @_RINvMNtCskKLDkoKarTP_4core5sliceSh8align_toNtNtNtB5_9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef range(i64 0, -9223372036854775808) %i.s)
  %i.u = load ptr, ptr %i.a, align 8, !noalias !274, !nonnull !5, !noundef !5 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = load i64, ptr %i.v, align 8, !noalias !274, !noundef !5 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !noalias !274, !nonnull !5, !align !9, !noundef !5 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !noalias !274, !noundef !5 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !274
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w
  %i.ac = icmp samesign eq i64 %i.w, 0
  br i1 %i.ac, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.c
  %3 = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %i.ad = icmp samesign eq i64 %i.s, 0
  br i1 %i.ad, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %.lr.ph265

.lr.ph:                                           ; preds = %bb.d, %bb.f
  %.sroa.013.0.i189 = phi i64 [ %i.ak, %bb.f ], [ 0, %bb.d ] ; 2 uses
  %.sroa.020.0.i188 = phi i64 [ %i.ah, %bb.f ], [ 0, %bb.d ]
  %.sroa.027.0.i187 = phi ptr [ %i.aj, %bb.f ], [ %i.u, %bb.d ] ; 2 uses
  %i.ae = load i8, ptr %.sroa.027.0.i187, align 1, !noundef !5
  %i.af = icmp sgt i8 %i.ae, -65
  %i.ag = zext i1 %i.af to i64
  %i.ah = add i64 %.sroa.020.0.i188, %i.ag        ; 3 uses
  %i.ai = icmp ugt i64 %i.ah, %2
  br i1 %i.ai, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.027.0.i187, i64 1 ; 2 uses
  %i.ak = add nuw i64 %.sroa.013.0.i189, 1
  %i.al = icmp eq ptr %i.aj, %i.ab
  br i1 %i.al, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.f, %bb.d
  %.sroa.020.0.i.lcssa = phi i64 [ 0, %bb.d ], [ %i.ah, %bb.f ] ; 3 uses
  %i.am = sub i64 %2, %.sroa.020.0.i.lcssa
  %i.an = lshr i64 %i.am, 4
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.an, i64 %i.aa) ; 2 uses
  %i.ao = and i64 %..i, 576460752303423484        ; 2 uses
  %.not51.i191 = icmp eq i64 %i.ao, 0
  br i1 %.not51.i191, label %._crit_edge198, label %.lr.ph197

._crit_edge198:                                   ; preds = %.lr.ph197, %._crit_edge
  %.sroa.020.1.i.lcssa = phi i64 [ %.sroa.020.0.i.lcssa, %._crit_edge ], [ %i.cl, %.lr.ph197 ] ; 2 uses
  %.sroa.013.1.i.lcssa = phi i64 [ %i.w, %._crit_edge ], [ %i.cm, %.lr.ph197 ] ; 2 uses
  %i.ap = and i64 %..i, 1152921504606846972       ; 4 uses
  %i.aq = icmp ugt i64 %i.ap, %i.aa
  br i1 %i.aq, label %bb.h, label %bb.g, !prof !7

bb.g:                                             ; preds = %._crit_edge198
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.aa
  %i.as = icmp samesign eq i64 %i.ap, %i.aa
  br i1 %i.as, label %._crit_edge206, label %.lr.ph205.preheader

.lr.ph205.preheader:                              ; preds = %bb.g
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.ap
  br label %.lr.ph205

bb.h:                                             ; preds = %._crit_edge198
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.ap, i64 noundef %i.aa, i64 noundef %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #16
  unreachable

.lr.ph205:                                        ; preds = %.lr.ph205.preheader, %bb.i
  %.sroa.040.0.i203 = phi ptr [ %i.ba, %bb.i ], [ %i.at, %.lr.ph205.preheader ] ; 2 uses
  %.sroa.013.2.i202 = phi i64 [ %i.bb, %bb.i ], [ %.sroa.013.1.i.lcssa, %.lr.ph205.preheader ] ; 2 uses
  %.sroa.020.2.i201 = phi i64 [ %i.az, %bb.i ], [ %.sroa.020.1.i.lcssa, %.lr.ph205.preheader ] ; 2 uses
  %i.au = load <16 x i8>, ptr %.sroa.040.0.i203, align 16
  %i.av = icmp slt <16 x i8> %i.au, splat (i8 -64)
  %i.aw = zext <16 x i1> %i.av to <16 x i8>
  %i.ax = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.aw, <16 x i8> zeroinitializer)
  %.neg182 = add i64 %.sroa.020.2.i201, 16
  %i.ay = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.ax)
  %i.az = sub i64 %.neg182, %i.ay                 ; 3 uses
  %.not52.i = icmp ult i64 %i.az, %2
  br i1 %.not52.i, label %bb.i, label %._crit_edge206

bb.i:                                             ; preds = %.lr.ph205
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.040.0.i203, i64 16 ; 2 uses
  %i.bb = add i64 %.sroa.013.2.i202, 16           ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.ar
  br i1 %i.bc, label %._crit_edge206, label %.lr.ph205

._crit_edge206:                                   ; preds = %bb.i, %.lr.ph205, %bb.g
  %.sroa.020.2.i.lcssa = phi i64 [ %.sroa.020.1.i.lcssa, %bb.g ], [ %.sroa.020.2.i201, %.lr.ph205 ], [ %i.az, %bb.i ]
  %.sroa.013.2.i.lcssa = phi i64 [ %.sroa.013.1.i.lcssa, %bb.g ], [ %.sroa.013.2.i202, %.lr.ph205 ], [ %i.bb, %bb.i ] ; 5 uses
  %i.bd = icmp ugt i64 %.sroa.013.2.i.lcssa, %i.s
  br i1 %i.bd, label %bb.k, label %bb.j, !prof !7

bb.j:                                             ; preds = %._crit_edge206
  %i.be = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s
  %i.bf = icmp samesign eq i64 %.sroa.013.2.i.lcssa, %i.s
  br i1 %i.bf, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %.lr.ph216.preheader

.lr.ph216.preheader:                              ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.013.2.i.lcssa
  br label %.lr.ph216

bb.k:                                             ; preds = %._crit_edge206
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.013.2.i.lcssa, i64 noundef range(i64 0, -9223372036854775808) %i.s, i64 noundef range(i64 0, -9223372036854775808) %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #16
  unreachable

.lr.ph216:                                        ; preds = %.lr.ph216.preheader, %bb.l
  %.sroa.036.0.i214 = phi ptr [ %i.bm, %bb.l ], [ %i.bg, %.lr.ph216.preheader ] ; 2 uses
  %.sroa.013.3.i213 = phi i64 [ %i.bn, %bb.l ], [ %.sroa.013.2.i.lcssa, %.lr.ph216.preheader ] ; 2 uses
  %.sroa.020.3.i212 = phi i64 [ %i.bk, %bb.l ], [ %.sroa.020.2.i.lcssa, %.lr.ph216.preheader ]
  %i.bh = load i8, ptr %.sroa.036.0.i214, align 1, !alias.scope !274, !noundef !5
  %i.bi = icmp sgt i8 %i.bh, -65
  %i.bj = zext i1 %i.bi to i64
  %i.bk = add i64 %.sroa.020.3.i212, %i.bj        ; 2 uses
  %i.bl = icmp ugt i64 %i.bk, %2
  br i1 %i.bl, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph216
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.036.0.i214, i64 1 ; 2 uses
  %i.bn = add i64 %.sroa.013.3.i213, 1
  %i.bo = icmp eq ptr %i.bm, %i.be
  br i1 %i.bo, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %.lr.ph216

.lr.ph197:                                        ; preds = %._crit_edge, %.lr.ph197
  %.sroa.013.1.i195 = phi i64 [ %i.cm, %.lr.ph197 ], [ %i.w, %._crit_edge ]
  %.sroa.020.1.i194 = phi i64 [ %i.cl, %.lr.ph197 ], [ %.sroa.020.0.i.lcssa, %._crit_edge ]
  %.sroa.030.0.i193 = phi ptr [ %i.bp, %.lr.ph197 ], [ %i.y, %._crit_edge ] ; 5 uses
  %.sroa.5.0.i192 = phi i64 [ %i.bq, %.lr.ph197 ], [ %i.ao, %._crit_edge ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i193, i64 64
  %i.bq = add i64 %.sroa.5.0.i192, -4             ; 2 uses
  %i.br = load <16 x i8>, ptr %.sroa.030.0.i193, align 16
  %i.bs = icmp slt <16 x i8> %i.br, splat (i8 -64)
  %i.bt = zext <16 x i1> %i.bs to <16 x i8>
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i193, i64 16
  %i.bv = load <16 x i8>, ptr %i.bu, align 16
  %i.bw = icmp slt <16 x i8> %i.bv, splat (i8 -64)
  %i.bx = zext <16 x i1> %i.bw to <16 x i8>
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i193, i64 32
  %i.bz = load <16 x i8>, ptr %i.by, align 16
  %i.ca = icmp slt <16 x i8> %i.bz, splat (i8 -64)
  %i.cb = zext <16 x i1> %i.ca to <16 x i8>
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i193, i64 48
  %i.cd = load <16 x i8>, ptr %i.cc, align 16
  %i.ce = icmp slt <16 x i8> %i.cd, splat (i8 -64)
  %i.cf = zext <16 x i1> %i.ce to <16 x i8>
  %i.cg = add nuw nsw <16 x i8> %i.bx, %i.bt
  %i.ch = add nuw nsw <16 x i8> %i.cg, %i.cb
  %i.ci = add nuw nsw <16 x i8> %i.ch, %i.cf
  %i.cj = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.ci, <16 x i8> zeroinitializer)
  %.neg = add i64 %.sroa.020.1.i194, 64
  %i.ck = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.cj)
  %i.cl = sub i64 %.neg, %i.ck                    ; 2 uses
  %i.cm = add i64 %.sroa.013.1.i195, 64           ; 2 uses
  %.not51.i = icmp eq i64 %i.bq, 0
  br i1 %.not51.i, label %._crit_edge198, label %.lr.ph197

bb.m:                                             ; preds = %.lr.ph265
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.0170262, i64 1 ; 2 uses
  %i.co = add nuw nsw i64 %.sroa.8.0261, 1
  %i.cp = icmp eq ptr %i.cn, %3
  br i1 %i.cp, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %.lr.ph265

.lr.ph265:                                        ; preds = %bb.e, %bb.m
  %.sroa.07.0.i263 = phi i64 [ %i.ct, %bb.m ], [ 0, %bb.e ]
  %.sroa.0.0170262 = phi ptr [ %i.cn, %bb.m ], [ %i.r, %bb.e ] ; 2 uses
  %.sroa.8.0261 = phi i64 [ %i.co, %bb.m ], [ 0, %bb.e ] ; 2 uses
  %i.cq = load i8, ptr %.sroa.0.0170262, align 1, !noundef !5
  %i.cr = icmp sgt i8 %i.cq, -65
  %i.cs = zext i1 %i.cr to i64
  %i.ct = add i64 %.sroa.07.0.i263, %i.cs         ; 2 uses
  %i.cu = icmp ugt i64 %i.ct, %2
  br i1 %i.cu, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %bb.m

_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit: ; preds = %.lr.ph, %.lr.ph216, %bb.l, %bb.m, %.lr.ph265, %bb.e, %bb.j
  %.sroa.0.0.i = phi i64 [ %i.s, %bb.j ], [ %i.s, %bb.e ], [ %i.s, %bb.l ], [ %.sroa.8.0261, %.lr.ph265 ], [ %i.s, %bb.m ], [ %.sroa.013.3.i213, %.lr.ph216 ], [ %.sroa.013.0.i189, %.lr.ph ]
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB2_8NodeText9split_off(ptr noalias nofree noundef nonnull sret([1000 x i8]) align 8 captures(none) dereferenceable(1000) %i.cv, ptr noalias nofree noundef nonnull align 8 dereferenceable(1000) %i.j, i64 noundef %.sroa.0.0.i)
  store i8 0, ptr %0, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.r, %bb.aj, %bb.t, %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit
  ret void

bb.o:                                             ; preds = %bb.b
  %i.cw = icmp eq i64 %2, %i.m
  br i1 %i.cw, label %bb.r, label %bb.q

bb.p:                                             ; preds = %bb.b
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.k, i64 noundef %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @101) #16
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.cx = extractvalue { ptr, i64 } %i.n, 0
  %i.cy = getelementptr inbounds nuw [32 x i8], ptr %i.cx, i64 %i.k
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load i64, ptr %i.cz, align 8, !noundef !5
  %i.db = add i64 %i.da, %i.m
  %i.dc = icmp eq i64 %2, %i.db
  %i.dd = add nuw i64 %i.k, 1                     ; 2 uses
  br i1 %i.dc, label %bb.t, label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren9split_off(ptr noalias nofree noundef nonnull sret([968 x i8]) align 8 captures(none) dereferenceable(968) %i.de, ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.j, i64 noundef %i.k)
  store i8 1, ptr %0, align 8
  br label %bb.n

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren9split_off(ptr noalias nofree noundef nonnull sret([968 x i8]) align 8 captures(none) dereferenceable(968) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.j, i64 noundef %i.dd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.df = invoke { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren9nodes_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.j)
          to label %bb.v unwind label %bb.u       ; 2 uses

bb.t:                                             ; preds = %bb.q
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren9split_off(ptr noalias nofree noundef nonnull sret([968 x i8]) align 8 captures(none) dereferenceable(968) %i.dg, ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.j, i64 noundef %i.dd)
  store i8 1, ptr %0, align 8
end_hunk_5
