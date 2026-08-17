inline.NumInlined: 32430
inline.NumDeleted: 3898
loop-unroll.NumCompletelyUnrolled: 264
loop-unroll.NumRuntimeUnrolled: 251
loop-unroll.NumUnrolled: 522
begin_hunk_0_@_ZN5boost9container4test32flat_tree_ordered_insertion_testINS0_8flat_mapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEEENS0_13flat_multimapIiiS5_S9_EEEEbv:bb.a
  %.not.i.i.i.i.i308 = icmp eq i64 %i.ky, 0
  br i1 %.not.i.i.i.i.i308, label %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEED2Ev.exit309, label %bb.cw

bb.cw:                                            ; preds = %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit307
  %i.kz = load ptr, ptr %8, align 8, !tbaa !73
  %i.la = shl i64 %i.ky, 3
  call void @_ZdlPvm(ptr noundef %i.kz, i64 noundef %i.la) #23
  br label %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEED2Ev.exit309

_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEED2Ev.exit309: ; preds = %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit307, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.lb = load ptr, ptr %i.b, align 8, !tbaa !69
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef %i.lb)
          to label %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit310 unwind label %bb.cx

bb.cx:                                            ; preds = %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEED2Ev.exit309
  %i.lc = landingpad { ptr, i32 }
          catch ptr null
  %i.ld = extractvalue { ptr, i32 } %i.lc, 0
  call void @__clang_call_terminate(ptr %i.ld) #25
  unreachable

_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit310: ; preds = %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEED2Ev.exit309
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.cy

bb.cy:                                            ; preds = %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit310, %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit305, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit301, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit231
  %.8 = phi i1 [ false, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit301 ], [ false, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit305 ], [ false, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit231 ], [ %.791, %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit ], [ false, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit310 ]
  ret i1 %.8

bb.cz:                                            ; preds = %bb.co, %bb.av
  %.pn113.pn = phi { ptr, i32 } [ %.pn113, %bb.av ], [ %.pn103, %bb.co ]
  resume { ptr, i32 } %.pn113.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9container4test28flat_tree_extract_adopt_testINS0_8flat_mapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEEENS0_13flat_multimapIiiS5_S9_EEEEbv() local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::container::vec_iterator", align 8 ; 3 uses
  %1 = alloca %"union.boost::move_detail::aligned_struct_wrapper", align 4 ; 5 uses
  %2 = alloca %"class.boost::container::vec_iterator", align 8 ; 3 uses
  %3 = alloca %"union.boost::move_detail::aligned_struct_wrapper", align 4 ; 5 uses
  %4 = alloca %"class.boost::container::vec_iterator", align 8 ; 3 uses
  %5 = alloca %"union.boost::move_detail::aligned_struct_wrapper", align 4 ; 5 uses
  %6 = alloca %"class.boost::container::vec_iterator", align 8 ; 3 uses
  %7 = alloca %"union.boost::move_detail::aligned_struct_wrapper", align 4 ; 5 uses
  %8 = alloca %"union.boost::move_detail::aligned_struct_wrapper", align 4 ; 5 uses
  %9 = alloca %"union.boost::move_detail::aligned_struct_wrapper", align 4 ; 5 uses
  %10 = alloca %"class.boost::container::vec_iterator", align 8 ; 3 uses
  %11 = alloca %"union.boost::move_detail::aligned_struct_wrapper", align 4 ; 5 uses
  %12 = alloca %"union.boost::move_detail::aligned_struct_wrapper", align 4 ; 5 uses
  %13 = alloca %"class.boost::container::flat_map", align 8 ; 16 uses
  %14 = alloca %"class.boost::container::flat_map", align 8 ; 15 uses
  %15 = alloca %"struct.std::pair.34", align 8    ; 4 uses
  %16 = alloca %"struct.std::pair.34", align 8    ; 4 uses
  %17 = alloca %"class.boost::container::vector", align 8 ; 15 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %18 = alloca %"class.boost::container::flat_map", align 8 ; 16 uses
  %19 = alloca %"class.boost::container::flat_map", align 8 ; 15 uses
  %20 = alloca %"struct.std::pair.34", align 8    ; 4 uses
  %21 = alloca %"struct.std::pair.34", align 8    ; 4 uses
  %22 = alloca %"class.boost::container::vector", align 8 ; 11 uses
  %23 = alloca %"class.boost::container::flat_multimap", align 8 ; 18 uses
  %24 = alloca %"class.boost::container::flat_multimap", align 8 ; 16 uses
  %25 = alloca %"class.boost::container::vector", align 8 ; 11 uses
  %26 = alloca %"class.boost::container::vec_iterator", align 8 ; 2 uses
  %27 = alloca %"class.boost::container::vec_iterator", align 8 ; 2 uses
  %28 = alloca %"class.boost::container::flat_multimap", align 8 ; 15 uses
  %29 = alloca %"class.boost::container::flat_multimap", align 8 ; 13 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %30 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %31 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %32 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %33 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %34 = alloca %"class.boost::container::vector", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %.065406 = phi i64 [ 0, %bb.a ], [ %i.o, %bb.d ] ; 2 uses
  %i.m = trunc i64 %.065406 to i32                ; 3 uses
  %i.n = sub nsw i32 0, %i.m                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23, !noalias !165
  store i32 %i.m, ptr %12, align 4, !tbaa !87, !noalias !165
  store i32 %i.n, ptr %i.k, align 4, !tbaa !87, !noalias !165
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_6vectorIS4_vvEEE13insert_uniqueEOS4_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.34") align 8 %15, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 4 dereferenceable(8) %12)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23, !noalias !165
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23, !noalias !170
  store i32 %i.m, ptr %11, align 4, !tbaa !87, !noalias !170
  store i32 %i.n, ptr %i.l, align 4, !tbaa !87, !noalias !170
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_6vectorIS4_vvEEE13insert_uniqueEOS4_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.34") align 8 %16, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 4 dereferenceable(8) %11)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23, !noalias !170
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  %i.o = add nuw nsw i64 %.065406, 1              ; 2 uses
  %.not = icmp eq i64 %i.o, 100
  br i1 %.not, label %_ZN5boost9container6vectorISt4pairIiiEvvED2Ev.exit, label %bb.b, !llvm.loop !175

bb.e:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %bb.x

bb.f:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %bb.x

_ZN5boost9container6vectorISt4pairIiiEvvED2Ev.exit: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  %i.r = load ptr, ptr %13, align 8, !tbaa !90, !noalias !176 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !80, !noalias !176 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !70, !noalias !176 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false), !noalias !176
  store ptr %i.r, ptr %17, align 8, !tbaa !90
  %i.w = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 4 uses
  store i64 %i.t, ptr %i.w, align 8, !tbaa !80
  %i.x = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 5 uses
  store i64 %i.v, ptr %i.x, align 8, !tbaa !70
  %i.y = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !84
  %.not.i = icmp eq i64 %i.t, %i.z
  br i1 %.not.i, label %bb.g, label %.critedgethread-pre-split

bb.g:                                             ; preds = %_ZN5boost9container6vectorISt4pairIiiEvvED2Ev.exit
  %.idx.i = shl nsw i64 %i.t, 3
  %i.aa = getelementptr inbounds i8, ptr %i.r, i64 %.idx.i
  %.not2526.i = icmp eq i64 %i.t, 0
  br i1 %.not2526.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairIiiEvvEENS0_8flat_mapIiiSt4lessIiES6_EEEEbRKT_RKT0_.exit.preheader, label %.lr.ph.preheader.i

_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairIiiEvvEENS0_8flat_mapIiiSt4lessIiES6_EEEEbRKT_RKT0_.exit.preheader: ; preds = %bb.h, %bb.g
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairIiiEvvEENS0_8flat_mapIiiSt4lessIiES6_EEEEbRKT_RKT0_.exit

.lr.ph.preheader.i:                               ; preds = %bb.g
  %i.ab = load ptr, ptr %14, align 8, !tbaa !90, !noalias !179
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.preheader.i
  %.sroa.021.028.i = phi ptr [ %i.ai, %bb.h ], [ %i.r, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.016.027.i = phi ptr [ %i.aj, %bb.h ], [ %i.ab, %.lr.ph.preheader.i ] ; 2 uses
  %i.ac = load <2 x i32>, ptr %.sroa.021.028.i, align 4
  %i.ad = load <2 x i32>, ptr %.sroa.016.027.i, align 4
  %i.ae = icmp eq <2 x i32> %i.ac, %i.ad          ; 2 uses
  %i.af = extractelement <2 x i1> %i.ae, i64 0
  %i.ag = extractelement <2 x i1> %i.ae, i64 1
  %i.ah = select i1 %i.af, i1 %i.ag, i1 false
  br i1 %i.ah, label %bb.h, label %.critedgethread-pre-splitthread-pre-split

bb.h:                                             ; preds = %.lr.ph.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.021.028.i, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.016.027.i, i64 8
  %.not25.i = icmp eq ptr %i.ai, %i.aa
  br i1 %.not25.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairIiiEvvEENS0_8flat_mapIiiSt4lessIiES6_EEEEbRKT_RKT0_.exit.preheader, label %.lr.ph.i, !llvm.loop !188

bb.i:                                             ; preds = %_ZN5boost9container4test14random_shuffleINS0_12vec_iteratorIPSt4pairIiiELb0EEEEEvT_S8_.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.j:                                             ; preds = %_ZN5boost9container6vectorISt4pairIiiEvvE12emplace_backIJiiEEERS3_DpOT_.exit
  %i.al = load ptr, ptr %17, align 8, !tbaa !90, !noalias !189 ; 2 uses
  %i.am = load i64, ptr %i.w, align 8, !tbaa !84, !noalias !192 ; 2 uses
  %i.an = icmp sgt i64 %i.am, 1
  br i1 %i.an, label %.lr.ph.i100, label %_ZN5boost9container4test14random_shuffleINS0_12vec_iteratorIPSt4pairIiiELb0EEEEEvT_S8_.exit

.lr.ph.i100:                                      ; preds = %bb.j, %bb.l
  %.0.in10.i = phi i64 [ %.011.i, %bb.l ], [ %i.am, %bb.j ] ; 3 uses
  %.011.i = add nsw i64 %.0.in10.i, -1            ; 3 uses
  %i.ao = call i32 @rand() #23
  %i.ap = sext i32 %i.ao to i64
  %i.aq = srem i64 %i.ap, %.0.in10.i              ; 2 uses
  %.not.i101 = icmp eq i64 %i.aq, %.011.i
  br i1 %.not.i101, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i100
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.al, i64 %.011.i ; 2 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.aq ; 2 uses
  %i.at = load <2 x i32>, ptr %i.ar, align 4, !tbaa !87
  %i.au = load <2 x i32>, ptr %i.as, align 4, !tbaa !87
  store <2 x i32> %i.au, ptr %i.ar, align 4, !tbaa !87
  store <2 x i32> %i.at, ptr %i.as, align 4, !tbaa !87
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i100
  %i.av = icmp samesign ugt i64 %.0.in10.i, 2
  br i1 %i.av, label %.lr.ph.i100, label %_ZN5boost9container4test14random_shuffleINS0_12vec_iteratorIPSt4pairIiiELb0EEEEEvT_S8_.exit, !llvm.loop !195

_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairIiiEvvEENS0_8flat_mapIiiSt4lessIiES6_EEEEbRKT_RKT0_.exit: ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairIiiEvvEENS0_8flat_mapIiiSt4lessIiES6_EEEEbRKT_RKT0_.exit.preheader, %_ZN5boost9container6vectorISt4pairIiiEvvE12emplace_backIJiiEEERS3_DpOT_.exit
  %.047407 = phi i64 [ %i.bh, %_ZN5boost9container6vectorISt4pairIiiEvvE12emplace_backIJiiEEERS3_DpOT_.exit ], [ 0, %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairIiiEvvEENS0_8flat_mapIiiSt4lessIiES6_EEEEbRKT_RKT0_.exit.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.aw = trunc i64 %.047407 to i32               ; 3 uses
  store i32 %i.aw, ptr %i.a, align 4, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.ax = sub nsw i32 0, %i.aw
  store i32 %i.ax, ptr %i.b, align 4, !tbaa !87
  %i.ay = load i64, ptr %i.w, align 8, !tbaa !84  ; 4 uses
  %i.az = load i64, ptr %i.x, align 8, !tbaa !70
  %.not.i102 = icmp eq i64 %i.ay, %i.az
  br i1 %.not.i102, label %bb.n, label %bb.m, !prof !196

bb.m:                                             ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairIiiEvvEENS0_8flat_mapIiiSt4lessIiES6_EEEEbRKT_RKT0_.exit
  %i.ba = load ptr, ptr %17, align 8, !tbaa !90, !nonnull !197, !noundef !197
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.ay ; 2 uses
  store i32 %i.aw, ptr %i.bb, align 4, !tbaa !87
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bd = load i32, ptr %i.b, align 4, !tbaa !87
  store i32 %i.bd, ptr %i.bc, align 4, !tbaa !87
  %i.be = add i64 %i.ay, 1
  store i64 %i.be, ptr %i.w, align 8, !tbaa !84
  br label %_ZN5boost9container6vectorISt4pairIiiEvvE12emplace_backIJiiEEERS3_DpOT_.exit

bb.n:                                             ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairIiiEvvEENS0_8flat_mapIiiSt4lessIiES6_EEEEbRKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.bf = load ptr, ptr %17, align 8, !tbaa !90
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.ay
  invoke void @_ZN5boost9container6vectorISt4pairIiiEvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS3_EEJiiEEEEENS0_12vec_iteratorIPS3_Lb0EEESC_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef %i.bg, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.b, ptr nonnull align 4 dereferenceable(4) %i.a)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %_ZN5boost9container6vectorISt4pairIiiEvvE12emplace_backIJiiEEERS3_DpOT_.exit

_ZN5boost9container6vectorISt4pairIiiEvvE12emplace_backIJiiEEERS3_DpOT_.exit: ; preds = %.noexc, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.bh = add nuw nsw i64 %.047407, 1             ; 2 uses
  %.not71 = icmp eq i64 %i.bh, 100
  br i1 %.not71, label %bb.j, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairIiiEvvEENS0_8flat_mapIiiSt4lessIiES6_EEEEbRKT_RKT0_.exit, !llvm.loop !198

bb.o:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.v

_ZN5boost9container4test14random_shuffleINS0_12vec_iteratorIPSt4pairIiiELb0EEEEEvT_S8_.exit: ; preds = %bb.l, %bb.j
  invoke void @_ZN5boost9container3dtl31flat_tree_adopt_sequence_uniqueINS0_6vectorISt4pairIiiEvvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_OSD_T0_NS_11move_detail5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %17)
          to label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEE14adopt_sequenceEOS7_.exit unwind label %bb.i

_ZN5boost9container8flat_mapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEE14adopt_sequenceEOS7_.exit: ; preds = %_ZN5boost9container4test14random_shuffleINS0_12vec_iteratorIPSt4pairIiiELb0EEEEEvT_S8_.exit
  %i.bj = load i64, ptr %i.s, align 8, !tbaa !84  ; 3 uses
  %i.bk = load i64, ptr %i.y, align 8, !tbaa !84
  %.not.i104 = icmp eq i64 %i.bj, %i.bk
  br i1 %.not.i104, label %bb.p, label %.critedgethread-pre-splitthread-pre-split

bb.p:                                             ; preds = %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEE14adopt_sequenceEOS7_.exit
  %i.bl = load ptr, ptr %13, align 8, !tbaa !90, !noalias !199 ; 3 uses
  %.idx.i106 = shl nsw i64 %i.bj, 3
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 %.idx.i106 ; 2 uses
  %.not2526.i107 = icmp eq i64 %i.bj, 0
  br i1 %.not2526.i107, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairIiiEvvEES6_EEbRKT_RKT0_.exit, label %.lr.ph.preheader.i108

.lr.ph.preheader.i108:                            ; preds = %bb.p
  %i.bn = load ptr, ptr %14, align 8, !tbaa !90, !noalias !208 ; 2 uses
  br label %.lr.ph.i109

.lr.ph.i109:                                      ; preds = %bb.q, %.lr.ph.preheader.i108
  %.sroa.021.028.i110 = phi ptr [ %i.bu, %bb.q ], [ %i.bl, %.lr.ph.preheader.i108 ] ; 2 uses
  %.sroa.016.027.i111 = phi ptr [ %i.bv, %bb.q ], [ %i.bn, %.lr.ph.preheader.i108 ] ; 2 uses
  %i.bo = load <2 x i32>, ptr %.sroa.021.028.i110, align 4
  %i.bp = load <2 x i32>, ptr %.sroa.016.027.i111, align 4
  %i.bq = icmp eq <2 x i32> %i.bo, %i.bp          ; 2 uses
  %i.br = extractelement <2 x i1> %i.bq, i64 0
  %i.bs = extractelement <2 x i1> %i.bq, i64 1
  %i.bt = select i1 %i.br, i1 %i.bs, i1 false
  br i1 %i.bt, label %bb.q, label %.critedgethread-pre-splitthread-pre-split

bb.q:                                             ; preds = %.lr.ph.i109
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.021.028.i110, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.016.027.i111, i64 8
  %.not25.i112 = icmp eq ptr %i.bu, %i.bm
  br i1 %.not25.i112, label %.lr.ph.i118, label %.lr.ph.i109, !llvm.loop !217

.lr.ph.i118:                                      ; preds = %bb.q, %.lr.ph.i118
  %.sroa.021.028.i119 = phi ptr [ %i.cc, %.lr.ph.i118 ], [ %i.bl, %bb.q ] ; 2 uses
  %.sroa.016.027.i120 = phi ptr [ %i.cd, %.lr.ph.i118 ], [ %i.bn, %bb.q ] ; 2 uses
  %i.bw = load <2 x i32>, ptr %.sroa.021.028.i119, align 4
  %i.bx = load <2 x i32>, ptr %.sroa.016.027.i120, align 4
  %i.by = icmp eq <2 x i32> %i.bw, %i.bx          ; 2 uses
  %i.bz = extractelement <2 x i1> %i.by, i64 0
  %i.ca = extractelement <2 x i1> %i.by, i64 1
  %i.cb = select i1 %i.bz, i1 %i.ca, i1 false     ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.021.028.i119, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.016.027.i120, i64 8
  %.not25.i121 = icmp ne ptr %i.cc, %i.bm
  %or.cond.not = select i1 %i.cb, i1 %.not25.i121, i1 false
  br i1 %or.cond.not, label %.lr.ph.i118, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairIiiEvvEES6_EEbRKT_RKT0_.exit, !llvm.loop !218

_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairIiiEvvEES6_EEbRKT_RKT0_.exit: ; preds = %.lr.ph.i118, %bb.p
  %.2.i114 = phi i1 [ true, %bb.p ], [ %i.cb, %.lr.ph.i118 ]
  %i.ce = load i64, ptr %i.x, align 8, !tbaa !70  ; 2 uses
  %.not.i.i122 = icmp eq i64 %i.ce, 0
  br i1 %.not.i.i122, label %_ZN5boost9container6vectorISt4pairIiiEvvED2Ev.exit123, label %bb.r

bb.r:                                             ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairIiiEvvEES6_EEbRKT_RKT0_.exit
  %i.cf = load ptr, ptr %17, align 8, !tbaa !73
  %i.cg = shl i64 %i.ce, 3
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cg) #23
  br label %_ZN5boost9container6vectorISt4pairIiiEvvED2Ev.exit123

_ZN5boost9container6vectorISt4pairIiiEvvED2Ev.exit123: ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairIiiEvvEES6_EEbRKT_RKT0_.exit, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  %i.ch = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !70 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ci, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZN5boost9container6vectorISt4pairIiiEvvED2Ev.exit123
  %i.cj = load ptr, ptr %14, align 8, !tbaa !73
  %i.ck = shl i64 %i.ci, 3
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.ck) #23
  br label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEED2Ev.exit

_ZN5boost9container8flat_mapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEED2Ev.exit: ; preds = %_ZN5boost9container6vectorISt4pairIiiEvvED2Ev.exit123, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  %i.cl = load i64, ptr %i.u, align 8, !tbaa !70  ; 2 uses
  %.not.i.i.i.i.i124 = icmp eq i64 %i.cl, 0
  br i1 %.not.i.i.i.i.i124, label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEED2Ev.exit125, label %bb.t

bb.t:                                             ; preds = %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEED2Ev.exit
  %i.cm = load ptr, ptr %13, align 8, !tbaa !73
  %i.cn = shl i64 %i.cl, 3
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cn) #23
  br label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEED2Ev.exit125

_ZN5boost9container8flat_mapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEED2Ev.exit125: ; preds = %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEED2Ev.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br i1 %.2.i114, label %bb.u, label %bb.di

bb.u:                                             ; preds = %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEED2Ev.exit125
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.cp = getelementptr inbounds nuw i8, ptr %8, i64 4
  br label %bb.aa

bb.v:                                             ; preds = %bb.o, %bb.i
  %.pn85 = phi { ptr, i32 } [ %i.bi, %bb.o ], [ %i.ak, %bb.i ]
  %i.cq = load i64, ptr %i.x, align 8, !tbaa !70  ; 2 uses
  %.not.i.i126 = icmp eq i64 %i.cq, 0
  br i1 %.not.i.i126, label %_ZN5boost9container6vectorISt4pairIiiEvvED2Ev.exit127, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cr = load ptr, ptr %17, align 8, !tbaa !73
  %i.cs = shl i64 %i.cq, 3
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cs) #23
  br label %_ZN5boost9container6vectorISt4pairIiiEvvED2Ev.exit127

_ZN5boost9container6vectorISt4pairIiiEvvED2Ev.exit127: ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br label %bb.x

bb.x:                                             ; preds = %bb.e, %bb.f, %_ZN5boost9container6vectorISt4pairIiiEvvED2Ev.exit127
  %.pn88.pn = phi { ptr, i32 } [ %.pn85, %_ZN5boost9container6vectorISt4pairIiiEvvED2Ev.exit127 ], [ %i.q, %bb.f ], [ %i.p, %bb.e ]
  %i.ct = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !70 ; 2 uses
  %.not.i.i.i.i.i128 = icmp eq i64 %i.cu, 0
  br i1 %.not.i.i.i.i.i128, label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEED2Ev.exit129, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cv = load ptr, ptr %14, align 8, !tbaa !73
  %i.cw = shl i64 %i.cu, 3
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cw) #23
  br label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEED2Ev.exit129

_ZN5boost9container8flat_mapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEED2Ev.exit129: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  %i.cx = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !70 ; 2 uses
  %.not.i.i.i.i.i130 = icmp eq i64 %i.cy, 0
  br i1 %.not.i.i.i.i.i130, label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEED2Ev.exit131, label %bb.z

bb.z:                                             ; preds = %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEED2Ev.exit129
end_hunk_0
begin_hunk_1_@_ZN5boost7movelib17op_buffered_mergeINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEENS0_7move_opENS0_10range_xbufIS6_mSF_EEEEvT_SI_SI_T0_T1_RT2_:bb.a
  %i.de = load i32, ptr %.015.i, align 4, !tbaa !87 ; 2 uses
  %i.df = icmp slt i32 %i.dd, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.041.0, i64 4
  br i1 %i.df, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.dd, ptr %.sroa.041.0, align 4, !tbaa !292
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.040.0, i64 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i32 %i.de, ptr %.sroa.041.0, align 4, !tbaa !292
  %i.di = getelementptr inbounds nuw i8, ptr %.015.i, i64 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.040.0.pn = phi ptr [ %.sroa.040.0, %bb.f ], [ %.015.i, %bb.g ]
  %.sroa.040.1 = phi ptr [ %i.dh, %bb.f ], [ %.sroa.040.0, %bb.g ]
  %.1.i8 = phi ptr [ %.015.i, %bb.f ], [ %i.di, %bb.g ] ; 2 uses
  %.sink.in = getelementptr inbounds nuw i8, ptr %.sroa.040.0.pn, i64 4
  %.sink = load i32, ptr %.sink.in, align 4, !tbaa !87
  store i32 %.sink, ptr %i.dg, align 4, !tbaa !294
  %i.dj = getelementptr i8, ptr %.sroa.041.0, i64 8
  %.not.i9 = icmp eq ptr %.1.i8, %.lcssa109
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i9, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i7, !llvm.loop !4297

.lr.ph.i13:                                       ; preds = %bb.d, %.lr.ph.i13
  %i.dk = phi ptr [ %i.dr, %.lr.ph.i13 ], [ %i.b, %bb.d ] ; 2 uses
  %.010.i14 = phi i64 [ %.1.i16, %.lr.ph.i13 ], [ %i.n, %bb.d ] ; 2 uses
  %i.dl = lshr i64 %.010.i14, 1                   ; 3 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.dl ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !87, !noalias !5036
  %i.do = icmp slt i32 %i.dn, %i.f                ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %.neg.i15 = xor i64 %i.dl, -1
  %i.dq = add i64 %.010.i14, %.neg.i15
  %i.dr = select i1 %i.do, ptr %i.dp, ptr %i.dk   ; 5 uses
  %.1.i16 = select i1 %i.do, i64 %i.dq, i64 %i.dl ; 2 uses
  %.not.i17 = icmp eq i64 %.1.i16, 0
  br i1 %.not.i17, label %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit, label %.lr.ph.i13, !llvm.loop !4249

_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit: ; preds = %.lr.ph.i13
  %i.ds = ptrtoaddr ptr %i.dr to i64              ; 2 uses
  store ptr %i.dr, ptr %2, align 8, !tbaa !390
  %i.dt = load ptr, ptr %1, align 8, !tbaa !73    ; 9 uses
  %i.du = ptrtoaddr ptr %i.dt to i64              ; 2 uses
  %i.dv = load ptr, ptr %3, align 8, !tbaa !2418  ; 10 uses
  %.not3.i.i.i18 = icmp eq ptr %i.dr, %i.dt
  br i1 %.not3.i.i.i18, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit.sink.split, label %.lr.ph.i.i.i19.preheader

.lr.ph.i.i.i19.preheader:                         ; preds = %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit
  %i.dw = add i64 %i.ds, -8
  %i.dx = sub i64 %i.dw, %i.du                    ; 2 uses
  %i.dy = lshr i64 %i.dx, 3
  %i.dz = add nuw nsw i64 %i.dy, 1                ; 2 uses
  %min.iters.check164 = icmp ult i64 %i.dx, 88
  br i1 %min.iters.check164, label %.lr.ph.i.i.i19.preheader189, label %vector.memcheck155

vector.memcheck155:                               ; preds = %.lr.ph.i.i.i19.preheader
  %reass.sub = sub i64 %i.ds, %i.du
  %i.ea = and i64 %reass.sub, -8                  ; 2 uses
  %scevgep157 = getelementptr i8, ptr %i.dv, i64 %i.ea
  %scevgep159 = getelementptr i8, ptr %i.dt, i64 %i.ea
  %bound0160 = icmp ult ptr %i.dv, %scevgep159
  %bound1161 = icmp ult ptr %i.dt, %scevgep157
  %found.conflict162 = and i1 %bound0160, %bound1161
  br i1 %found.conflict162, label %.lr.ph.i.i.i19.preheader189, label %vector.ph165

vector.ph165:                                     ; preds = %vector.memcheck155
  %n.vec166 = and i64 %i.dz, 4611686018427387900  ; 3 uses
  %i.eb = shl i64 %n.vec166, 3                    ; 2 uses
  %i.ec = getelementptr i8, ptr %i.dt, i64 %i.eb
  %i.ed = getelementptr i8, ptr %i.dv, i64 %i.eb  ; 2 uses
  br label %vector.body167

vector.body167:                                   ; preds = %vector.body167, %vector.ph165
  %index168 = phi i64 [ 0, %vector.ph165 ], [ %index.next181, %vector.body167 ] ; 2 uses
  %i.ee = shl i64 %index168, 3                    ; 3 uses
  %i.ef = or disjoint i64 %i.ee, 16               ; 2 uses
  %next.gep169 = getelementptr i8, ptr %i.dt, i64 %i.ee
  %next.gep170 = getelementptr i8, ptr %i.dt, i64 %i.ef
  %next.gep171 = getelementptr i8, ptr %i.dv, i64 %i.ee
  %next.gep172 = getelementptr i8, ptr %i.dv, i64 %i.ef
  %wide.vec173 = load <4 x i32>, ptr %next.gep169, align 4, !tbaa !87, !alias.scope !5039
  %wide.vec176 = load <4 x i32>, ptr %next.gep170, align 4, !tbaa !87, !alias.scope !5039
  store <4 x i32> %wide.vec173, ptr %next.gep171, align 4, !tbaa !87, !alias.scope !5042, !noalias !5039
  store <4 x i32> %wide.vec176, ptr %next.gep172, align 4, !tbaa !87, !alias.scope !5042, !noalias !5039
  %index.next181 = add nuw i64 %index168, 4       ; 2 uses
  %i.eg = icmp eq i64 %index.next181, %n.vec166
  br i1 %i.eg, label %middle.block182, label %vector.body167, !llvm.loop !5044

middle.block182:                                  ; preds = %vector.body167
  %cmp.n183 = icmp eq i64 %i.dz, %n.vec166
  br i1 %cmp.n183, label %_ZN5boost7movelib10range_xbufIPSt4pairIiiEmNS0_7move_opEE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit23, label %.lr.ph.i.i.i19.preheader189

.lr.ph.i.i.i19.preheader189:                      ; preds = %vector.memcheck155, %.lr.ph.i.i.i19.preheader, %middle.block182
  %.ph = phi ptr [ %i.dt, %vector.memcheck155 ], [ %i.dt, %.lr.ph.i.i.i19.preheader ], [ %i.ec, %middle.block182 ]
  %.04.i.i.i20.ph = phi ptr [ %i.dv, %vector.memcheck155 ], [ %i.dv, %.lr.ph.i.i.i19.preheader ], [ %i.ed, %middle.block182 ]
  br label %.lr.ph.i.i.i19

.lr.ph.i.i.i19:                                   ; preds = %.lr.ph.i.i.i19.preheader189, %.lr.ph.i.i.i19
  %i.eh = phi ptr [ %i.em, %.lr.ph.i.i.i19 ], [ %.ph, %.lr.ph.i.i.i19.preheader189 ] ; 3 uses
  %.04.i.i.i20 = phi ptr [ %i.en, %.lr.ph.i.i.i19 ], [ %.04.i.i.i20.ph, %.lr.ph.i.i.i19.preheader189 ] ; 3 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !87
  store i32 %i.ei, ptr %.04.i.i.i20, align 4, !tbaa !292
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !87
  %i.el = getelementptr inbounds nuw i8, ptr %.04.i.i.i20, i64 4
  store i32 %i.ek, ptr %i.el, align 4, !tbaa !294
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 8 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.04.i.i.i20, i64 8 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.em, %i.dr
  br i1 %.not.i.i.i21, label %_ZN5boost7movelib10range_xbufIPSt4pairIiiEmNS0_7move_opEE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit23, label %.lr.ph.i.i.i19, !llvm.loop !5045

_ZN5boost7movelib10range_xbufIPSt4pairIiiEmNS0_7move_opEE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit23: ; preds = %.lr.ph.i.i.i19, %middle.block182
  %.lcssa = phi ptr [ %i.ed, %middle.block182 ], [ %i.en, %.lr.ph.i.i.i19 ] ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.lcssa, ptr %i.eo, align 8, !tbaa !2420
  %i.ep = load ptr, ptr %0, align 8, !tbaa !73
  %i.eq = load ptr, ptr %1, align 8, !tbaa !73
  %i.er = load ptr, ptr %2, align 8, !tbaa !73
  br label %.lr.ph.i24

.lr.ph.i24:                                       ; preds = %_ZN5boost7movelib10range_xbufIPSt4pairIiiEmNS0_7move_opEE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit23, %bb.i
  %.sroa.032.0 = phi ptr [ %i.eq, %_ZN5boost7movelib10range_xbufIPSt4pairIiiEmNS0_7move_opEE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit23 ], [ %..sroa.032.0, %bb.i ] ; 4 uses
  %.sroa.0.0 = phi ptr [ %i.er, %_ZN5boost7movelib10range_xbufIPSt4pairIiiEmNS0_7move_opEE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit23 ], [ %i.ff, %bb.i ] ; 3 uses
  %.016.i = phi ptr [ %.lcssa, %_ZN5boost7movelib10range_xbufIPSt4pairIiiEmNS0_7move_opEE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit23 ], [ %.016.i., %bb.i ] ; 4 uses
  %i.es = icmp eq ptr %i.ep, %.sroa.032.0
  br i1 %i.es, label %.lr.ph.i.i.i27, label %bb.i

.lr.ph.i.i.i27:                                   ; preds = %.lr.ph.i24, %.lr.ph.i.i.i27
  %i.et = phi ptr [ %i.ev, %.lr.ph.i.i.i27 ], [ %.sroa.0.0, %.lr.ph.i24 ] ; 2 uses
  %.05.i.i.i28 = phi ptr [ %i.eu, %.lr.ph.i.i.i27 ], [ %.016.i, %.lr.ph.i24 ] ; 2 uses
  %i.eu = getelementptr inbounds i8, ptr %.05.i.i.i28, i64 -8 ; 3 uses
  %i.ev = getelementptr inbounds i8, ptr %i.et, i64 -8 ; 2 uses
  %i.ew = load i32, ptr %i.eu, align 4, !tbaa !87, !noalias !5046
  store i32 %i.ew, ptr %i.ev, align 4, !tbaa !292, !noalias !5046
  %i.ex = getelementptr inbounds i8, ptr %.05.i.i.i28, i64 -4
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !87, !noalias !5046
  %i.ez = getelementptr inbounds i8, ptr %i.et, i64 -4
  store i32 %i.ey, ptr %i.ez, align 4, !tbaa !294, !noalias !5046
  %.not.i.i.i29 = icmp eq ptr %i.dv, %i.eu
  br i1 %.not.i.i.i29, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i.i.i27, !llvm.loop !4322

bb.i:                                             ; preds = %.lr.ph.i24
  %i.fa = getelementptr inbounds i8, ptr %.016.i, i64 -8 ; 2 uses
  %i.fb = getelementptr inbounds i8, ptr %.sroa.032.0, i64 -8 ; 2 uses
  %i.fc = load i32, ptr %i.fa, align 4, !tbaa !87 ; 2 uses
  %i.fd = load i32, ptr %i.fb, align 4, !tbaa !87 ; 2 uses
  %i.fe = icmp slt i32 %i.fc, %i.fd               ; 3 uses
  %i.ff = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -8 ; 2 uses
  %. = tail call i32 @llvm.smax.i32(i32 %i.fc, i32 %i.fd)
  %..sroa.032.0 = select i1 %i.fe, ptr %i.fb, ptr %.sroa.032.0
  %.sroa.032.0..016.i = select i1 %i.fe, ptr %.sroa.032.0, ptr %.016.i
  %.016.i. = select i1 %i.fe, ptr %.016.i, ptr %i.fa ; 2 uses
  store i32 %., ptr %i.ff, align 4, !tbaa !292
  %.sink.in.i = getelementptr inbounds i8, ptr %.sroa.032.0..016.i, i64 -4
  %.sink.i = load i32, ptr %.sink.in.i, align 4, !tbaa !87
  %i.fg = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -4
  store i32 %.sink.i, ptr %i.fg, align 4, !tbaa !294
  %.not.i26 = icmp eq ptr %i.dv, %.016.i.
  br i1 %.not.i26, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i24, !llvm.loop !4323

_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit.sink.split: ; preds = %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit, %_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit
  %.sink99 = phi ptr [ %i.z, %_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit ], [ %i.dv, %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit ]
  %i.fh = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sink99, ptr %i.fh, align 8, !tbaa !2420
  br label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit

_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit: ; preds = %bb.h, %.lr.ph.i.i.i10.prol.loopexit, %.lr.ph.i.i.i10, %bb.i, %.lr.ph.i.i.i27, %middle.block151, %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit.sink.split, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container4test14random_shuffleINS0_12vec_iteratorIPSt4pairIiiELb0EEEEEvT_S8_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !390
  %i.b = load ptr, ptr %0, align 8, !tbaa !390
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 3                   ; 2 uses
  %i.g = icmp sgt i64 %i.f, 1
  br i1 %i.g, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.0.in10 = phi i64 [ %.011, %bb.c ], [ %i.f, %bb.a ] ; 3 uses
  %.011 = add nsw i64 %.0.in10, -1                ; 3 uses
  %i.h = tail call i32 @rand() #23
  %i.i = sext i32 %i.h to i64
  %i.j = srem i64 %i.i, %.0.in10                  ; 2 uses
  %.not = icmp eq i64 %i.j, %.011
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = load ptr, ptr %0, align 8, !tbaa !390    ; 2 uses
  %i.l = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.011 ; 2 uses
  %i.m = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.j ; 2 uses
  %i.n = load <2 x i32>, ptr %i.l, align 4, !tbaa !87
  %i.o = load <2 x i32>, ptr %i.m, align 4, !tbaa !87
  store <2 x i32> %i.o, ptr %i.l, align 4, !tbaa !87
  store <2 x i32> %i.n, ptr %i.m, align 4, !tbaa !87
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.p = icmp samesign ugt i64 %.0.in10, 2
  br i1 %i.p, label %.lr.ph, label %._crit_edge, !llvm.loop !195
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container8flat_mapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEE14adopt_sequenceENS0_22ordered_unique_range_tEOS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i.i = icmp eq ptr %1, %0
  br i1 %.not.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_6vectorIS4_vvEEE21adopt_sequence_uniqueENS0_22ordered_unique_range_tEOSA_.exit, label %bb.b, !prof !196

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.a, align 8, !tbaa !84
  %i.b = load ptr, ptr %0, align 8, !tbaa !3776   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5boost9container6vectorISt4pairIiiEvvE16priv_move_assignIvEEvONS1_IS3_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS3_S6_E4typeELj0EEENS9_12is_differentISF_NS0_13new_allocatorIS3_EEEENS9_5bool_ILb0EEESM_E4typeE.exit.i.i, label %bb.c, !prof !196

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !3777
  %i.e = shl i64 %i.d, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.e) #23
  br label %_ZN5boost9container6vectorISt4pairIiiEvvE16priv_move_assignIvEEvONS1_IS3_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS3_S6_E4typeELj0EEENS9_12is_differentISF_NS0_13new_allocatorIS3_EEEENS9_5bool_ILb0EEESM_E4typeE.exit.i.i

_ZN5boost9container6vectorISt4pairIiiEvvE16priv_move_assignIvEEvONS1_IS3_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS3_S6_E4typeELj0EEENS9_12is_differentISF_NS0_13new_allocatorIS3_EEEENS9_5bool_ILb0EEESM_E4typeE.exit.i.i: ; preds = %bb.c, %bb.b
  %i.f = load ptr, ptr %1, align 8, !tbaa !90
  store ptr %i.f, ptr %0, align 8, !tbaa !90
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load <2 x i64>, ptr %i.g, align 8, !tbaa !708
  store <2 x i64> %i.h, ptr %i.a, align 8, !tbaa !708
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_6vectorIS4_vvEEE21adopt_sequence_uniqueENS0_22ordered_unique_range_tEOSA_.exit

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_6vectorIS4_vvEEE21adopt_sequence_uniqueENS0_22ordered_unique_range_tEOSA_.exit: ; preds = %bb.a, %_ZN5boost9container6vectorISt4pairIiiEvvE16priv_move_assignIvEEvONS1_IS3_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS3_S6_E4typeELj0EEENS9_12is_differentISF_NS0_13new_allocatorIS3_EEEENS9_5bool_ILb0EEESM_E4typeE.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEE7emplaceIJiiEEENS0_12vec_iteratorIPS6_Lb0EEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %5 = alloca %"union.boost::move_detail::aligned_struct_wrapper", align 4 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5051)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !5051
  %i.a = load i32, ptr %2, align 4, !tbaa !87, !noalias !5051 ; 4 uses
  store i32 %i.a, ptr %5, align 4, !tbaa !87, !noalias !5051
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.c = load i32, ptr %3, align 4, !tbaa !87, !noalias !5051 ; 3 uses
  store i32 %i.c, ptr %i.b, align 4, !tbaa !87, !noalias !5051
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5054)
  %i.d = load ptr, ptr %1, align 8, !tbaa !90, !noalias !5057 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !84, !noalias !5064 ; 6 uses
  %.not12.i.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not12.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_6vectorIS4_vvEEE11upper_boundERKi.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %i.g = phi ptr [ %i.n, %.lr.ph.i.i.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %.013.i.i.i.i = phi i64 [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.f, %bb.a ] ; 2 uses
  %i.h = lshr i64 %.013.i.i.i.i, 1                ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !87, !noalias !5069
  %i.k = icmp slt i32 %i.a, %i.j                  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.neg.i.i.i.i = xor i64 %i.h, -1
  %i.m = add i64 %.013.i.i.i.i, %.neg.i.i.i.i
  %i.n = select i1 %i.k, ptr %i.g, ptr %i.l       ; 2 uses
  %.1.i.i.i.i = select i1 %i.k, i64 %i.h, i64 %i.m ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.1.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_6vectorIS4_vvEEE11upper_boundERKi.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !285

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_6vectorIS4_vvEEE11upper_boundERKi.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.a
  %i.o = phi ptr [ %i.d, %bb.a ], [ %i.n, %.lr.ph.i.i.i.i ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !5072
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !70, !noalias !5073
  %.not.i.i3.i.i = icmp eq i64 %i.q, %i.f
  br i1 %.not.i.i3.i.i, label %.noexc.i, label %bb.b, !prof !196

bb.b:                                             ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_6vectorIS4_vvEEE11upper_boundERKi.exit.i.i
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.f ; 5 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, %i.o
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  store i32 %i.a, ptr %i.o, align 4, !tbaa !87, !noalias !5073
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 %i.c, ptr %i.s, align 4, !tbaa !87, !noalias !5073
  %i.t = add i64 %i.f, 1
  store i64 %i.t, ptr %i.e, align 8, !tbaa !84, !noalias !5073
  br label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_6vectorIS4_vvEEE13emplace_equalIJiiEEENS0_12vec_iteratorIPS4_Lb0EEEDpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.u = ptrtoint ptr %i.o to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.v, %i.u
  %i.x = ashr exact i64 %i.w, 3                   ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.r, i64 -8 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %i.z = load <2 x i32>, ptr %i.y, align 4, !tbaa !87, !noalias !5073
  store <2 x i32> %i.z, ptr %i.r, align 4, !tbaa !87, !noalias !5073
  %i.aa = add i64 %i.f, 1
  store i64 %i.aa, ptr %i.e, align 8, !tbaa !84, !noalias !5073
  %i.ab = add nsw i64 %i.x, -1                    ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i, label %bb.e, !prof !196

bb.e:                                             ; preds = %bb.d
  %i.ac = sub nsw i64 1, %i.x                     ; 2 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.ac
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.ac
  %i.af = shl i64 %i.ab, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr nonnull align 1 %i.ae, i64 %i.af, i1 false), !noalias !5073
  br label %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i

_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i: ; preds = %bb.e, %bb.d
  store i32 %i.a, ptr %i.o, align 4, !tbaa !292, !noalias !5073
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 %i.c, ptr %i.ag, align 4, !tbaa !294, !noalias !5073
  br label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_6vectorIS4_vvEEE13emplace_equalIJiiEEENS0_12vec_iteratorIPS4_Lb0EEEDpOT_.exit

.noexc.i:                                         ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_6vectorIS4_vvEEE11upper_boundERKi.exit.i.i
  call void @_ZN5boost9container6vectorISt4pairIiiEvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS3_EEJS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESC_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.o, i64 noundef 1, ptr nonnull align 4 dereferenceable(8) %5), !noalias !5051
  %.pre.i.i = load ptr, ptr %4, align 8, !tbaa !73, !noalias !5072
  br label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_6vectorIS4_vvEEE13emplace_equalIJiiEEENS0_12vec_iteratorIPS4_Lb0EEEDpOT_.exit

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_6vectorIS4_vvEEE13emplace_equalIJiiEEENS0_12vec_iteratorIPS4_Lb0EEEDpOT_.exit: ; preds = %bb.c, %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i, %.noexc.i
  %i.ah = phi ptr [ %.pre.i.i, %.noexc.i ], [ %i.o, %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i ], [ %i.o, %bb.c ]
  store ptr %i.ah, ptr %0, align 8, !tbaa !390, !alias.scope !5072
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !5072
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !5051
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEE14adopt_sequenceEOS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::movelib::adaptive_xbuf", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.a, align 8, !tbaa !84
  %i.b = load ptr, ptr %1, align 8, !tbaa !90
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @_ZN5boost7movelib15detail_adaptive18adaptive_sort_implIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_NS0_9iter_sizeISG_E4typeET0_RT1_(ptr noundef %i.b, i64 noundef %i.d, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %.not.i.i.i = icmp eq ptr %1, %0
  br i1 %.not.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_6vectorIS4_vvEEE20adopt_sequence_equalEOSA_.exit, label %bb.b, !prof !196

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !tbaa !84
  %i.e = load ptr, ptr %0, align 8, !tbaa !3776   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container6vectorISt4pairIiiEvvE16priv_move_assignIvEEvONS1_IS3_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS3_S6_E4typeELj0EEENS9_12is_differentISF_NS0_13new_allocatorIS3_EEEENS9_5bool_ILb0EEESM_E4typeE.exit.i.i.i, label %bb.c, !prof !196

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !3777
  %i.h = shl i64 %i.g, 3
  call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.h) #23
  br label %_ZN5boost9container6vectorISt4pairIiiEvvE16priv_move_assignIvEEvONS1_IS3_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS3_S6_E4typeELj0EEENS9_12is_differentISF_NS0_13new_allocatorIS3_EEEENS9_5bool_ILb0EEESM_E4typeE.exit.i.i.i

_ZN5boost9container6vectorISt4pairIiiEvvE16priv_move_assignIvEEvONS1_IS3_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS3_S6_E4typeELj0EEENS9_12is_differentISF_NS0_13new_allocatorIS3_EEEENS9_5bool_ILb0EEESM_E4typeE.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.i = load ptr, ptr %1, align 8, !tbaa !90
  store ptr %i.i, ptr %0, align 8, !tbaa !90
  %i.j = load <2 x i64>, ptr %i.c, align 8, !tbaa !708
  store <2 x i64> %i.j, ptr %i.a, align 8, !tbaa !708
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_6vectorIS4_vvEEE20adopt_sequence_equalEOSA_.exit

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_6vectorIS4_vvEEE20adopt_sequence_equalEOSA_.exit: ; preds = %bb.a, %_ZN5boost9container6vectorISt4pairIiiEvvE16priv_move_assignIvEEvONS1_IS3_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS3_S6_E4typeELj0EEENS9_12is_differentISF_NS0_13new_allocatorIS3_EEEENS9_5bool_ILb0EEESM_E4typeE.exit.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEE14adopt_sequenceENS0_15ordered_range_tEOS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i.i = icmp eq ptr %1, %0
  br i1 %.not.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_6vectorIS4_vvEEE20adopt_sequence_equalENS0_15ordered_range_tEOSA_.exit, label %bb.b, !prof !196

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.a, align 8, !tbaa !84
  %i.b = load ptr, ptr %0, align 8, !tbaa !3776   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5boost9container6vectorISt4pairIiiEvvE16priv_move_assignIvEEvONS1_IS3_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS3_S6_E4typeELj0EEENS9_12is_differentISF_NS0_13new_allocatorIS3_EEEENS9_5bool_ILb0EEESM_E4typeE.exit.i.i, label %bb.c, !prof !196

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !3777
end_hunk_1
begin_hunk_2_@_ZN5boost9container4test28flat_tree_extract_adopt_testINS0_8flat_mapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEEENS0_13flat_multimapIiiS5_S9_EEEEbv:bb.a
  %35 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %36 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %37 = alloca %"class.boost::container::small_vector", align 8 ; 15 uses
  %38 = alloca %"class.boost::container::small_vector", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  %i.k = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 5 uses
  store ptr %i.k, ptr %13, align 8, !tbaa !5110
  %i.l = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 5 uses
  store i64 0, ptr %i.l, align 8, !tbaa !5112
  %i.m = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  store i64 7, ptr %i.m, align 8, !tbaa !5113
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  %i.n = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 4 uses
  store ptr %i.n, ptr %14, align 8, !tbaa !5110
  %i.o = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  store i64 0, ptr %i.o, align 8, !tbaa !5112
  %i.p = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  store i64 7, ptr %i.p, align 8, !tbaa !5113
  %i.q = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 4
  br label %bb.e

bb.b:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !5204)
  %i.s = getelementptr inbounds nuw i8, ptr %18, i64 24 ; 4 uses
  store ptr %i.s, ptr %18, align 8, !tbaa !5110, !alias.scope !5204
  %i.t = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 3 uses
  store i64 0, ptr %i.t, align 8, !tbaa !5112, !alias.scope !5204
  %i.u = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  store i64 7, ptr %i.u, align 8, !tbaa !5113, !alias.scope !5204
  %i.v = load ptr, ptr %13, align 8, !tbaa !5110, !noalias !5204 ; 7 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.v
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEE16extract_sequenceEv.exit

bb.c:                                             ; preds = %bb.b
  %i.w = load i64, ptr %i.l, align 8, !tbaa !5136, !noalias !5204 ; 4 uses
  %.not.i.i.i.not.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i.not.i.i.i, label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEE16extract_sequenceEv.exit.thread, label %bb.d, !prof !5207

bb.d:                                             ; preds = %bb.c
  %i.x = shl i64 %i.w, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull align 1 %i.v, i64 %i.x, i1 false)
  br label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEE16extract_sequenceEv.exit.thread

_ZN5boost9container8flat_mapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEE16extract_sequenceEv.exit.thread: ; preds = %bb.c, %bb.d
  store i64 %i.w, ptr %i.t, align 8, !tbaa !5136, !alias.scope !5204
  store i64 0, ptr %i.l, align 8, !tbaa !5136, !noalias !5204
  %i.y = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 2 uses
  store ptr %i.y, ptr %17, align 8, !tbaa !5110
  %i.z = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  store i64 0, ptr %i.z, align 8, !tbaa !5112
  %i.aa = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  store i64 7, ptr %i.aa, align 8, !tbaa !5113
  br label %bb.j

bb.e:                                             ; preds = %bb.a, %bb.g
  %.065418 = phi i64 [ 0, %bb.a ], [ %i.ad, %bb.g ] ; 2 uses
  %i.ab = trunc i64 %.065418 to i32               ; 3 uses
  %i.ac = sub nsw i32 0, %i.ab                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23, !noalias !5208
  store i32 %i.ab, ptr %12, align 4, !tbaa !87, !noalias !5208
  store i32 %i.ac, ptr %i.q, align 4, !tbaa !87, !noalias !5208
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_12small_vectorIS4_Lm7EvvEEE13insert_uniqueEOS4_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.34") align 8 %15, ptr noundef nonnull align 8 dereferenceable(80) %13, ptr noundef nonnull align 4 dereferenceable(8) %12)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23, !noalias !5208
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23, !noalias !5213
  store i32 %i.ab, ptr %11, align 4, !tbaa !87, !noalias !5213
  store i32 %i.ac, ptr %i.r, align 4, !tbaa !87, !noalias !5213
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_12small_vectorIS4_Lm7EvvEEE13insert_uniqueEOS4_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.34") align 8 %16, ptr noundef nonnull align 8 dereferenceable(80) %14, ptr noundef nonnull align 4 dereferenceable(8) %11)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23, !noalias !5213
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  %i.ad = add nuw nsw i64 %.065418, 1             ; 2 uses
  %.not = icmp eq i64 %i.ad, 100
  br i1 %.not, label %bb.b, label %bb.e, !llvm.loop !5218

bb.h:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %bb.ak

bb.i:                                             ; preds = %bb.f
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %bb.ak

_ZN5boost9container8flat_mapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEE16extract_sequenceEv.exit: ; preds = %bb.b
  store ptr %i.v, ptr %18, align 8, !tbaa !5110, !alias.scope !5204
  %i.ag = load i64, ptr %i.l, align 8, !tbaa !5112, !noalias !5204 ; 4 uses
  store i64 %i.ag, ptr %i.t, align 8, !tbaa !5112, !alias.scope !5204
  %i.ah = load i64, ptr %i.m, align 8, !tbaa !5113, !noalias !5204 ; 2 uses
  store i64 %i.ah, ptr %i.u, align 8, !tbaa !5113, !alias.scope !5204
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %13, i8 0, i64 24, i1 false), !noalias !5204
  %i.ai = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 3 uses
  store ptr %i.ai, ptr %17, align 8, !tbaa !5110
  %i.aj = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  store i64 7, ptr %i.ak, align 8, !tbaa !5113
  %.not.i.i.i = icmp eq ptr %i.s, %i.v
  br i1 %.not.i.i.i, label %bb.j, label %_ZN5boost9container12small_vectorISt4pairIiiELm7EvvEC2EOS4_.exit.thread

_ZN5boost9container12small_vectorISt4pairIiiELm7EvvEC2EOS4_.exit.thread: ; preds = %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEE16extract_sequenceEv.exit
  store ptr %i.v, ptr %17, align 8, !tbaa !5110
  store i64 %i.ag, ptr %i.aj, align 8, !tbaa !5112
  store i64 %i.ah, ptr %i.ak, align 8, !tbaa !5113
  br label %bb.l

bb.j:                                             ; preds = %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEE16extract_sequenceEv.exit.thread, %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEE16extract_sequenceEv.exit
  %i.al = phi ptr [ %i.aa, %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEE16extract_sequenceEv.exit.thread ], [ %i.ak, %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEE16extract_sequenceEv.exit ]
  %i.am = phi ptr [ %i.z, %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEE16extract_sequenceEv.exit.thread ], [ %i.aj, %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEE16extract_sequenceEv.exit ] ; 2 uses
  %i.an = phi ptr [ %i.y, %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEE16extract_sequenceEv.exit.thread ], [ %i.ai, %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEE16extract_sequenceEv.exit ] ; 3 uses
  %i.ao = phi ptr [ %i.s, %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEE16extract_sequenceEv.exit.thread ], [ %i.v, %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEE16extract_sequenceEv.exit ]
  %i.ap = phi i64 [ %i.w, %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEE16extract_sequenceEv.exit.thread ], [ %i.ag, %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEE16extract_sequenceEv.exit ] ; 4 uses
  %.not.i.i.i.not.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i.i.not.i.i, label %_ZN5boost9container12small_vectorISt4pairIiiELm7EvvEC2EOS4_.exit, label %bb.k, !prof !5207

bb.k:                                             ; preds = %bb.j
  %i.aq = shl i64 %i.ap, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.an, ptr nonnull align 1 %i.ao, i64 %i.aq, i1 false)
  br label %_ZN5boost9container12small_vectorISt4pairIiiELm7EvvEC2EOS4_.exit

_ZN5boost9container12small_vectorISt4pairIiiELm7EvvEC2EOS4_.exit: ; preds = %bb.j, %bb.k
  store i64 %i.ap, ptr %i.am, align 8, !tbaa !5136
  br label %bb.l

bb.l:                                             ; preds = %_ZN5boost9container12small_vectorISt4pairIiiELm7EvvEC2EOS4_.exit, %_ZN5boost9container12small_vectorISt4pairIiiELm7EvvEC2EOS4_.exit.thread
  %i.ar = phi ptr [ %i.ak, %_ZN5boost9container12small_vectorISt4pairIiiELm7EvvEC2EOS4_.exit.thread ], [ %i.al, %_ZN5boost9container12small_vectorISt4pairIiiELm7EvvEC2EOS4_.exit ] ; 4 uses
  %i.as = phi ptr [ %i.aj, %_ZN5boost9container12small_vectorISt4pairIiiELm7EvvEC2EOS4_.exit.thread ], [ %i.am, %_ZN5boost9container12small_vectorISt4pairIiiELm7EvvEC2EOS4_.exit ] ; 3 uses
  %i.at = phi ptr [ %i.ai, %_ZN5boost9container12small_vectorISt4pairIiiELm7EvvEC2EOS4_.exit.thread ], [ %i.an, %_ZN5boost9container12small_vectorISt4pairIiiELm7EvvEC2EOS4_.exit ] ; 3 uses
  %i.au = phi i64 [ %i.ag, %_ZN5boost9container12small_vectorISt4pairIiiELm7EvvEC2EOS4_.exit.thread ], [ %i.ap, %_ZN5boost9container12small_vectorISt4pairIiiELm7EvvEC2EOS4_.exit ] ; 3 uses
  %i.av = phi ptr [ %i.v, %_ZN5boost9container12small_vectorISt4pairIiiELm7EvvEC2EOS4_.exit.thread ], [ %i.an, %_ZN5boost9container12small_vectorISt4pairIiiELm7EvvEC2EOS4_.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  %i.aw = load i64, ptr %i.o, align 8, !tbaa !5136
  %.not.i = icmp eq i64 %i.au, %i.aw
  br i1 %.not.i, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %.idx.i = shl nsw i64 %i.au, 3
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 %.idx.i
  %.not2526.i = icmp eq i64 %i.au, 0
  br i1 %.not2526.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorISt4pairIiiELm7EvvEENS0_8flat_mapIiiSt4lessIiES6_EEEEbRKT_RKT0_.exit.preheader, label %.lr.ph.preheader.i

_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorISt4pairIiiELm7EvvEENS0_8flat_mapIiiSt4lessIiES6_EEEEbRKT_RKT0_.exit.preheader: ; preds = %bb.n, %bb.m
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorISt4pairIiiELm7EvvEENS0_8flat_mapIiiSt4lessIiES6_EEEEbRKT_RKT0_.exit

.lr.ph.preheader.i:                               ; preds = %bb.m
  %i.ay = load ptr, ptr %14, align 8, !tbaa !5110, !noalias !5219
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %.lr.ph.preheader.i
  %.sroa.021.028.i = phi ptr [ %i.bf, %bb.n ], [ %i.av, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.016.027.i = phi ptr [ %i.bg, %bb.n ], [ %i.ay, %.lr.ph.preheader.i ] ; 2 uses
  %i.az = load <2 x i32>, ptr %.sroa.021.028.i, align 4
  %i.ba = load <2 x i32>, ptr %.sroa.016.027.i, align 4
  %i.bb = icmp eq <2 x i32> %i.az, %i.ba          ; 2 uses
  %i.bc = extractelement <2 x i1> %i.bb, i64 0
  %i.bd = extractelement <2 x i1> %i.bb, i64 1
  %i.be = select i1 %i.bc, i1 %i.bd, i1 false
  br i1 %i.be, label %bb.n, label %.critedge

bb.n:                                             ; preds = %.lr.ph.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.021.028.i, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.016.027.i, i64 8
  %.not25.i = icmp eq ptr %i.bf, %i.ax
  br i1 %.not25.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorISt4pairIiiELm7EvvEENS0_8flat_mapIiiSt4lessIiES6_EEEEbRKT_RKT0_.exit.preheader, label %.lr.ph.i, !llvm.loop !5228

bb.o:                                             ; preds = %_ZN5boost9container4test14random_shuffleINS0_12vec_iteratorIPSt4pairIiiELb0EEEEEvT_S8_.exit
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.p:                                             ; preds = %_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE12emplace_backIJiiEEERS3_DpOT_.exit
  %i.bi = load ptr, ptr %17, align 8, !tbaa !5110, !noalias !5229 ; 2 uses
  %i.bj = load i64, ptr %i.as, align 8, !tbaa !5136, !noalias !5232 ; 2 uses
  %i.bk = icmp sgt i64 %i.bj, 1
  br i1 %i.bk, label %.lr.ph.i101, label %_ZN5boost9container4test14random_shuffleINS0_12vec_iteratorIPSt4pairIiiELb0EEEEEvT_S8_.exit

.lr.ph.i101:                                      ; preds = %bb.p, %bb.r
  %.0.in10.i = phi i64 [ %.011.i, %bb.r ], [ %i.bj, %bb.p ] ; 3 uses
  %.011.i = add nsw i64 %.0.in10.i, -1            ; 3 uses
  %i.bl = call i32 @rand() #23
  %i.bm = sext i32 %i.bl to i64
  %i.bn = srem i64 %i.bm, %.0.in10.i              ; 2 uses
  %.not.i102 = icmp eq i64 %i.bn, %.011.i
  br i1 %.not.i102, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i101
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %.011.i ; 2 uses
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bn ; 2 uses
  %i.bq = load <2 x i32>, ptr %i.bo, align 4, !tbaa !87
  %i.br = load <2 x i32>, ptr %i.bp, align 4, !tbaa !87
  store <2 x i32> %i.br, ptr %i.bo, align 4, !tbaa !87
  store <2 x i32> %i.bq, ptr %i.bp, align 4, !tbaa !87
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.i101
  %i.bs = icmp samesign ugt i64 %.0.in10.i, 2
  br i1 %i.bs, label %.lr.ph.i101, label %_ZN5boost9container4test14random_shuffleINS0_12vec_iteratorIPSt4pairIiiELb0EEEEEvT_S8_.exit, !llvm.loop !195

_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorISt4pairIiiELm7EvvEENS0_8flat_mapIiiSt4lessIiES6_EEEEbRKT_RKT0_.exit: ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorISt4pairIiiELm7EvvEENS0_8flat_mapIiiSt4lessIiES6_EEEEbRKT_RKT0_.exit.preheader, %_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE12emplace_backIJiiEEERS3_DpOT_.exit
  %.047419 = phi i64 [ %i.ce, %_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE12emplace_backIJiiEEERS3_DpOT_.exit ], [ 0, %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorISt4pairIiiELm7EvvEENS0_8flat_mapIiiSt4lessIiES6_EEEEbRKT_RKT0_.exit.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.bt = trunc i64 %.047419 to i32               ; 3 uses
  store i32 %i.bt, ptr %i.a, align 4, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.bu = sub nsw i32 0, %i.bt
  store i32 %i.bu, ptr %i.b, align 4, !tbaa !87
  %i.bv = load i64, ptr %i.as, align 8, !tbaa !5136 ; 4 uses
  %i.bw = load i64, ptr %i.ar, align 8, !tbaa !5113
  %.not.i103 = icmp eq i64 %i.bv, %i.bw
  br i1 %.not.i103, label %bb.t, label %bb.s, !prof !196

bb.s:                                             ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorISt4pairIiiELm7EvvEENS0_8flat_mapIiiSt4lessIiES6_EEEEbRKT_RKT0_.exit
  %i.bx = load ptr, ptr %17, align 8, !tbaa !5110, !nonnull !197, !noundef !197
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bv ; 2 uses
  store i32 %i.bt, ptr %i.by, align 4, !tbaa !87
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.ca = load i32, ptr %i.b, align 4, !tbaa !87
  store i32 %i.ca, ptr %i.bz, align 4, !tbaa !87
  %i.cb = add i64 %i.bv, 1
  store i64 %i.cb, ptr %i.as, align 8, !tbaa !5136
  br label %_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE12emplace_backIJiiEEERS3_DpOT_.exit

bb.t:                                             ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorISt4pairIiiELm7EvvEENS0_8flat_mapIiiSt4lessIiES6_EEEEbRKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.cc = load ptr, ptr %17, align 8, !tbaa !5110
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.bv
  invoke void @_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS7_JiiEEEEENS0_12vec_iteratorIPS3_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef %i.cd, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.b, ptr nonnull align 4 dereferenceable(4) %i.a)
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE12emplace_backIJiiEEERS3_DpOT_.exit

_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE12emplace_backIJiiEEERS3_DpOT_.exit: ; preds = %.noexc, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.ce = add nuw nsw i64 %.047419, 1             ; 2 uses
  %.not71 = icmp eq i64 %i.ce, 100
  br i1 %.not71, label %bb.p, label %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorISt4pairIiiELm7EvvEENS0_8flat_mapIiiSt4lessIiES6_EEEEbRKT_RKT0_.exit, !llvm.loop !5235

bb.u:                                             ; preds = %bb.t
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.ah

_ZN5boost9container4test14random_shuffleINS0_12vec_iteratorIPSt4pairIiiELb0EEEEEvT_S8_.exit: ; preds = %bb.r, %bb.p
  invoke void @_ZN5boost9container3dtl31flat_tree_adopt_sequence_uniqueINS0_12small_vectorISt4pairIiiELm7EvvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_OSD_T0_NS_11move_detail5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(80) %13, ptr noundef nonnull align 8 dereferenceable(80) %17)
          to label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEE14adopt_sequenceEOS7_.exit unwind label %bb.o

_ZN5boost9container8flat_mapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEE14adopt_sequenceEOS7_.exit: ; preds = %_ZN5boost9container4test14random_shuffleINS0_12vec_iteratorIPSt4pairIiiELb0EEEEEvT_S8_.exit
  %i.cg = load i64, ptr %i.l, align 8, !tbaa !5136 ; 3 uses
  %i.ch = load i64, ptr %i.o, align 8, !tbaa !5136
  %.not.i105 = icmp eq i64 %i.cg, %i.ch
  br i1 %.not.i105, label %bb.v, label %.critedge

bb.v:                                             ; preds = %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEE14adopt_sequenceEOS7_.exit
  %i.ci = load ptr, ptr %13, align 8, !tbaa !5110, !noalias !5236 ; 3 uses
  %.idx.i107 = shl nsw i64 %i.cg, 3
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 %.idx.i107 ; 2 uses
  %.not2526.i108 = icmp eq i64 %i.cg, 0
  br i1 %.not2526.i108, label %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorISt4pairIiiELm7EvvEES6_EEbRKT_RKT0_.exit, label %.lr.ph.preheader.i109

.lr.ph.preheader.i109:                            ; preds = %bb.v
  %i.ck = load ptr, ptr %14, align 8, !tbaa !5110, !noalias !5245 ; 2 uses
  br label %.lr.ph.i110

.lr.ph.i110:                                      ; preds = %bb.w, %.lr.ph.preheader.i109
  %.sroa.021.028.i111 = phi ptr [ %i.cr, %bb.w ], [ %i.ci, %.lr.ph.preheader.i109 ] ; 2 uses
  %.sroa.016.027.i112 = phi ptr [ %i.cs, %bb.w ], [ %i.ck, %.lr.ph.preheader.i109 ] ; 2 uses
  %i.cl = load <2 x i32>, ptr %.sroa.021.028.i111, align 4
  %i.cm = load <2 x i32>, ptr %.sroa.016.027.i112, align 4
  %i.cn = icmp eq <2 x i32> %i.cl, %i.cm          ; 2 uses
  %i.co = extractelement <2 x i1> %i.cn, i64 0
  %i.cp = extractelement <2 x i1> %i.cn, i64 1
  %i.cq = select i1 %i.co, i1 %i.cp, i1 false
  br i1 %i.cq, label %bb.w, label %.critedge

bb.w:                                             ; preds = %.lr.ph.i110
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.021.028.i111, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.016.027.i112, i64 8
  %.not25.i113 = icmp eq ptr %i.cr, %i.cj
  br i1 %.not25.i113, label %.lr.ph.i119, label %.lr.ph.i110, !llvm.loop !5254

.lr.ph.i119:                                      ; preds = %bb.w, %.lr.ph.i119
  %.sroa.021.028.i120 = phi ptr [ %i.cz, %.lr.ph.i119 ], [ %i.ci, %bb.w ] ; 2 uses
  %.sroa.016.027.i121 = phi ptr [ %i.da, %.lr.ph.i119 ], [ %i.ck, %bb.w ] ; 2 uses
  %i.ct = load <2 x i32>, ptr %.sroa.021.028.i120, align 4
  %i.cu = load <2 x i32>, ptr %.sroa.016.027.i121, align 4
  %i.cv = icmp eq <2 x i32> %i.ct, %i.cu          ; 2 uses
  %i.cw = extractelement <2 x i1> %i.cv, i64 0
  %i.cx = extractelement <2 x i1> %i.cv, i64 1
  %i.cy = select i1 %i.cw, i1 %i.cx, i1 false     ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.021.028.i120, i64 8 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.016.027.i121, i64 8
  %.not25.i122 = icmp ne ptr %i.cz, %i.cj
  %or.cond.not = select i1 %i.cy, i1 %.not25.i122, i1 false
  br i1 %or.cond.not, label %.lr.ph.i119, label %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorISt4pairIiiELm7EvvEES6_EEbRKT_RKT0_.exit, !llvm.loop !5255

_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorISt4pairIiiELm7EvvEES6_EEbRKT_RKT0_.exit: ; preds = %.lr.ph.i119, %bb.v
  %.2.i115 = phi i1 [ true, %bb.v ], [ %i.cy, %.lr.ph.i119 ]
  %i.db = load i64, ptr %i.ar, align 8, !tbaa !5113 ; 2 uses
  %.not.i.i123 = icmp eq i64 %i.db, 0
  br i1 %.not.i.i123, label %_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev.exit124, label %bb.x

bb.x:                                             ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorISt4pairIiiELm7EvvEES6_EEbRKT_RKT0_.exit
  %i.dc = load ptr, ptr %17, align 8, !tbaa !73   ; 2 uses
  %i.dd = icmp eq ptr %i.at, %i.dc
  br i1 %i.dd, label %_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev.exit124, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.de = shl i64 %i.db, 3
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.de) #23
  br label %_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev.exit124

_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev.exit124: ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorISt4pairIiiELm7EvvEES6_EEbRKT_RKT0_.exit, %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  %i.df = load i64, ptr %i.p, align 8, !tbaa !5113 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.df, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev.exit124
  %i.dg = load ptr, ptr %14, align 8, !tbaa !73   ; 2 uses
  %i.dh = icmp eq ptr %i.n, %i.dg
  br i1 %i.dh, label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.di = shl i64 %i.df, 3
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.di) #23
  br label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEED2Ev.exit

_ZN5boost9container8flat_mapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEED2Ev.exit: ; preds = %_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev.exit124, %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  %i.dj = load i64, ptr %i.m, align 8, !tbaa !5113 ; 2 uses
  %.not.i.i.i.i.i125 = icmp eq i64 %i.dj, 0
  br i1 %.not.i.i.i.i.i125, label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEED2Ev.exit126, label %bb.ab

bb.ab:                                            ; preds = %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEED2Ev.exit
  %i.dk = load ptr, ptr %13, align 8, !tbaa !73   ; 2 uses
  %i.dl = icmp eq ptr %i.k, %i.dk
  br i1 %i.dl, label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEED2Ev.exit126, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dm = shl i64 %i.dj, 3
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.dm) #23
  br label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEED2Ev.exit126

_ZN5boost9container8flat_mapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEED2Ev.exit126: ; preds = %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEED2Ev.exit, %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br i1 %.2.i115, label %bb.ad, label %bb.fn

bb.ad:                                            ; preds = %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEED2Ev.exit126
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  %i.dn = getelementptr inbounds nuw i8, ptr %19, i64 24 ; 5 uses
  store ptr %i.dn, ptr %19, align 8, !tbaa !5110
  %i.do = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 5 uses
  store i64 0, ptr %i.do, align 8, !tbaa !5112
  %i.dp = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 5 uses
  store i64 7, ptr %i.dp, align 8, !tbaa !5113
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  %i.dq = getelementptr inbounds nuw i8, ptr %20, i64 24 ; 4 uses
  store ptr %i.dq, ptr %20, align 8, !tbaa !5110
  %i.dr = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  store i64 0, ptr %i.dr, align 8, !tbaa !5112
  %i.ds = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  store i64 7, ptr %i.ds, align 8, !tbaa !5113
  %i.dt = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.du = getelementptr inbounds nuw i8, ptr %8, i64 4
  br label %bb.ap

bb.ae:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !5256)
  %i.dv = getelementptr inbounds nuw i8, ptr %24, i64 24 ; 4 uses
  store ptr %i.dv, ptr %24, align 8, !tbaa !5110, !alias.scope !5256
  %i.dw = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 3 uses
  store i64 0, ptr %i.dw, align 8, !tbaa !5112, !alias.scope !5256
  %i.dx = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  store i64 7, ptr %i.dx, align 8, !tbaa !5113, !alias.scope !5256
  %i.dy = load ptr, ptr %19, align 8, !tbaa !5110, !noalias !5256 ; 7 uses
  %.not.i.i.i.i127 = icmp eq ptr %i.dn, %i.dy
  br i1 %.not.i.i.i.i127, label %bb.af, label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEE16extract_sequenceEv.exit130

bb.af:                                            ; preds = %bb.ae
  %i.dz = load i64, ptr %i.do, align 8, !tbaa !5136, !noalias !5256 ; 4 uses
end_hunk_2
begin_hunk_3_@_ZN5boost9container4test28flat_tree_extract_adopt_testINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEENS0_13flat_multimapIiiS5_S9_EEEEbv:bb.a
  %i.ay = icmp slt i32 %i.ax, %i.n                ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.neg.i.i.i.i.i.i104 = xor i64 %i.av, -1
  %i.ba = add i64 %.013.i.i.i.i.i.i103, %.neg.i.i.i.i.i.i104
  %i.bb = select i1 %i.ay, ptr %i.az, ptr %i.au   ; 2 uses
  %.1.i.i.i.i.i.i105 = select i1 %i.ay, i64 %i.ba, i64 %i.av ; 2 uses
  %.not.i.i.i.i.i.i106 = icmp eq i64 %.1.i.i.i.i.i.i105, 0
  br i1 %.not.i.i.i.i.i.i106, label %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i.i.i107, label %.lr.ph.i.i.i.i.i.i102, !llvm.loop !7796

_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i.i.i107: ; preds = %.lr.ph.i.i.i.i.i.i102, %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEES5_INS0_12vec_iteratorIPS6_Lb0EEEbEDpOT_.exit
  %i.bc = phi ptr [ %1, %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEES5_INS0_12vec_iteratorIPS6_Lb0EEEbEDpOT_.exit ], [ %i.bb, %.lr.ph.i.i.i.i.i.i102 ] ; 8 uses
  %i.bd = icmp eq ptr %i.bc, %i.at
  br i1 %i.bd, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i.i.i115, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i.i.i108

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i.i.i108: ; preds = %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i.i.i107
  %i.be = load i32, ptr %i.bc, align 4, !tbaa !87, !noalias !7821
  %i.bf = icmp sgt i32 %i.be, %i.n
  br i1 %i.bf, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i.i.i115, label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEES5_INS0_12vec_iteratorIPS6_Lb0EEEbEDpOT_.exit117

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i.i.i115: ; preds = %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i.i.i107, %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i.i.i108
  %.not.i.i.i3.i.i.i110 = icmp eq i64 %i.as, 500
  br i1 %.not.i.i.i3.i.i.i110, label %.noexc.i.i114, label %bb.h, !prof !196

bb.h:                                             ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i.i.i115
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.as ; 5 uses
  %.not.i.i.i.i.i.i.i111 = icmp eq ptr %i.bg, %i.bc
  br i1 %.not.i.i.i.i.i.i.i111, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 %i.n, ptr %i.bc, align 4, !tbaa !87, !noalias !7822
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  store i32 %i.o, ptr %i.bh, align 4, !tbaa !87, !noalias !7822
  %i.bi = add i64 %i.as, 1
  store i64 %i.bi, ptr %i.j, align 8, !tbaa !7765, !noalias !7822
  br label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEES5_INS0_12vec_iteratorIPS6_Lb0EEEbEDpOT_.exit117

bb.j:                                             ; preds = %bb.h
  %i.bj = ptrtoint ptr %i.bc to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bk, %i.bj
  %i.bm = ashr exact i64 %i.bl, 3                 ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bg, i64 -8 ; 2 uses
  %i.bo = load <2 x i32>, ptr %i.bn, align 8, !tbaa !87, !noalias !7822
  store <2 x i32> %i.bo, ptr %i.bg, align 8, !tbaa !87, !noalias !7822
  %i.bp = add i64 %i.as, 1
  store i64 %i.bp, ptr %i.j, align 8, !tbaa !7765, !noalias !7822
  %i.bq = add nsw i64 %i.bm, -1                   ; 2 uses
  %.not.i.i.i.i.i.i.i.i112 = icmp eq i64 %i.bq, 0
  br i1 %.not.i.i.i.i.i.i.i.i112, label %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i.i.i113, label %bb.k, !prof !196

bb.k:                                             ; preds = %bb.j
  %i.br = sub nsw i64 1, %i.bm                    ; 2 uses
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.br
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.br
  %i.bu = shl i64 %i.bq, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bs, ptr nonnull align 8 %i.bt, i64 %i.bu, i1 false), !noalias !7822
  br label %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i.i.i113

_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i.i.i113: ; preds = %bb.k, %bb.j
  store i32 %i.n, ptr %i.bc, align 4, !tbaa !292, !noalias !7822
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  store i32 %i.o, ptr %i.bv, align 4, !tbaa !294, !noalias !7822
  br label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEES5_INS0_12vec_iteratorIPS6_Lb0EEEbEDpOT_.exit117

.noexc.i.i114:                                    ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i.i.i115
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorISt4pairIiiELm500ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #22
          to label %.noexc116 unwind label %bb.m

.noexc116:                                        ; preds = %.noexc.i.i114
  unreachable

_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEES5_INS0_12vec_iteratorIPS6_Lb0EEEbEDpOT_.exit117: ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i.i.i108, %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i.i.i113, %bb.i
  %i.bw = add nuw nsw i64 %.065428, 1             ; 2 uses
  %.not = icmp eq i64 %i.bw, 100
  br i1 %.not, label %bb.b, label %thread-pre-split, !llvm.loop !7829

bb.l:                                             ; preds = %.noexc.i.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.m:                                             ; preds = %.noexc.i.i114
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.n:                                             ; preds = %bb.b
  %i.bz = shl i64 %i.k, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(4008) %.sroa.0359, ptr nonnull align 8 dereferenceable(4008) %0, i64 %i.bz, i1 false)
  %.sroa.0359.4000..sroa_idx593 = getelementptr inbounds nuw i8, ptr %.sroa.0359, i64 4000
  %.sroa.0359.4000..sroa.0359.4000..sroa.0359.4000..sroa.0359.4000..pr = load i64, ptr %.sroa.0359.4000..sroa_idx593, align 8, !tbaa !7744 ; 3 uses
  store i64 0, ptr %i.i, align 8, !tbaa !7744, !noalias !7777
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 4000 ; 4 uses
  store i64 %.sroa.0359.4000..sroa.0359.4000..sroa.0359.4000..sroa.0359.4000..pr, ptr %i.ca, align 8, !tbaa !7744
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0359.4000..sroa.0359.4000..sroa.0359.4000..sroa.0359.4000..pr, 0
  br i1 %.not.i.i.i.i.i, label %bb.p, label %bb.o, !prof !7830

bb.o:                                             ; preds = %bb.n
  %i.cb = shl i64 %.sroa.0359.4000..sroa.0359.4000..sroa.0359.4000..sroa.0359.4000..pr, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(4008) %2, ptr nonnull align 8 dereferenceable(4008) %.sroa.0359, i64 %i.cb, i1 false)
  %.pr = load i64, ptr %i.ca, align 8, !tbaa !7765
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %.thread
  %.promoted = phi i64 [ %.pr, %bb.o ], [ 0, %bb.n ], [ 0, %.thread ] ; 8 uses
  %i.cc = phi ptr [ %i.ca, %bb.o ], [ %i.ca, %bb.n ], [ %i.l, %.thread ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0359)
  %i.cd = load i64, ptr %i.j, align 8, !tbaa !7765
  %.not.i = icmp eq i64 %.promoted, %i.cd
  br i1 %.not.i, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  %.idx.i = shl nsw i64 %.promoted, 3
  %i.ce = getelementptr inbounds i8, ptr %2, i64 %.idx.i
  %.not2526.i = icmp eq i64 %.promoted, 0
  br i1 %.not2526.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_13static_vectorISt4pairIiiELm500EvEENS0_8flat_mapIiiSt4lessIiES6_EEEEbRKT_RKT0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.q, %bb.r
  %.sroa.021.028.i = phi ptr [ %i.cl, %bb.r ], [ %2, %bb.q ] ; 2 uses
  %.sroa.016.027.i = phi ptr [ %i.cm, %bb.r ], [ %1, %bb.q ] ; 2 uses
  %i.cf = load <2 x i32>, ptr %.sroa.021.028.i, align 4
  %i.cg = load <2 x i32>, ptr %.sroa.016.027.i, align 4
  %i.ch = icmp eq <2 x i32> %i.cf, %i.cg          ; 2 uses
  %i.ci = extractelement <2 x i1> %i.ch, i64 0
  %i.cj = extractelement <2 x i1> %i.ch, i64 1
  %i.ck = select i1 %i.ci, i1 %i.cj, i1 false
  br i1 %i.ck, label %bb.r, label %.critedge

bb.r:                                             ; preds = %.lr.ph.i
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.021.028.i, i64 8 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.016.027.i, i64 8
  %.not25.i = icmp eq ptr %i.cl, %i.ce
  br i1 %.not25.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_13static_vectorISt4pairIiiELm500EvEENS0_8flat_mapIiiSt4lessIiES6_EEEEbRKT_RKT0_.exit, label %.lr.ph.i, !llvm.loop !7831

_ZN5boost9container4test20CheckEqualContainersINS0_13static_vectorISt4pairIiiELm500EvEENS0_8flat_mapIiiSt4lessIiES6_EEEEbRKT_RKT0_.exit: ; preds = %bb.r, %bb.q
  %i.cn = sub i64 500, %.promoted                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.cn, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

scalar.ph.preheader.loopexit:                     ; preds = %vector.body
  store i64 %i.dc, ptr %i.cc, align 8, !tbaa !7765
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %scalar.ph.preheader.loopexit, %_ZN5boost9container4test20CheckEqualContainersINS0_13static_vectorISt4pairIiiELm500EvEENS0_8flat_mapIiiSt4lessIiES6_EEEEbRKT_RKT0_.exit
  %.047429.ph = phi i64 [ 0, %_ZN5boost9container4test20CheckEqualContainersINS0_13static_vectorISt4pairIiiELm500EvEENS0_8flat_mapIiiSt4lessIiES6_EEEEbRKT_RKT0_.exit ], [ %n.vec, %scalar.ph.preheader.loopexit ]
  %.ph = phi i64 [ %.promoted, %_ZN5boost9container4test20CheckEqualContainersINS0_13static_vectorISt4pairIiiELm500EvEENS0_8flat_mapIiiSt4lessIiES6_EEEEbRKT_RKT0_.exit ], [ %i.ct, %scalar.ph.preheader.loopexit ]
  br label %scalar.ph

vector.ph:                                        ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_13static_vectorISt4pairIiiELm500EvEENS0_8flat_mapIiiSt4lessIiES6_EEEEbRKT_RKT0_.exit
  %i.co = call i64 @llvm.umin.i64(i64 %i.cn, i64 99)
  %i.cp = add nuw nsw i64 %i.co, 1                ; 2 uses
  %i.cq = and i64 %i.cp, 3                        ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 0
  %i.cs = select i1 %i.cr, i64 4, i64 %i.cq
  %n.vec = sub nsw i64 %i.cp, %i.cs               ; 3 uses
  %i.ct = add i64 %.promoted, %n.vec
  %i.cu = add i64 %.promoted, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cv = phi i64 [ %i.cu, %vector.ph ], [ %i.dd, %vector.body ] ; 2 uses
  %vec.ind565 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next568, %vector.body ] ; 5 uses
  %step.add566 = add <2 x i32> %vec.ind565, splat (i32 2)
  %i.cw = add i64 %.promoted, %index              ; 2 uses
  %i.cx = sub nsw <2 x i32> zeroinitializer, %vec.ind565
  %i.cy = sub <2 x i32> splat (i32 -2), %vec.ind565
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cw
  %i.da = getelementptr [8 x i8], ptr %2, i64 %i.cw
  %i.db = getelementptr i8, ptr %i.da, i64 16
  %interleaved.vec = shufflevector <2 x i32> %vec.ind565, <2 x i32> %i.cx, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.cz, align 8, !tbaa !87
  %interleaved.vec567 = shufflevector <2 x i32> %step.add566, <2 x i32> %i.cy, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec567, ptr %i.db, align 8, !tbaa !87
  %i.dc = add i64 %i.cv, 3
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dd = add i64 %i.cv, 4
  %vec.ind.next568 = add <2 x i32> %vec.ind565, splat (i32 4)
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %scalar.ph.preheader.loopexit, label %vector.body, !llvm.loop !7832

bb.s:                                             ; preds = %_ZN5boost9container4test14random_shuffleINS0_12vec_iteratorIPSt4pairIiiELb0EEEEEvT_S8_.exit
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.t:                                             ; preds = %bb.x
  %i.dg = icmp sgt i64 %i.du, 1
  br i1 %i.dg, label %.lr.ph.i118, label %_ZN5boost9container4test14random_shuffleINS0_12vec_iteratorIPSt4pairIiiELb0EEEEEvT_S8_.exit

.lr.ph.i118:                                      ; preds = %bb.t, %bb.v
  %.0.in10.i = phi i64 [ %.011.i, %bb.v ], [ %i.du, %bb.t ] ; 3 uses
  %.011.i = add nsw i64 %.0.in10.i, -1            ; 3 uses
  %i.dh = call i32 @rand() #23
  %i.di = sext i32 %i.dh to i64
  %i.dj = srem i64 %i.di, %.0.in10.i              ; 2 uses
  %.not.i119 = icmp eq i64 %i.dj, %.011.i
  br i1 %.not.i119, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i118
  %i.dk = getelementptr inbounds [8 x i8], ptr %2, i64 %.011.i ; 2 uses
  %i.dl = getelementptr inbounds [8 x i8], ptr %2, i64 %i.dj ; 2 uses
  %i.dm = load <2 x i32>, ptr %i.dk, align 8, !tbaa !87
  %i.dn = load <2 x i32>, ptr %i.dl, align 8, !tbaa !87
  store <2 x i32> %i.dn, ptr %i.dk, align 8, !tbaa !87
  store <2 x i32> %i.dm, ptr %i.dl, align 8, !tbaa !87
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.i118
  %i.do = icmp samesign ugt i64 %.0.in10.i, 2
  br i1 %i.do, label %.lr.ph.i118, label %_ZN5boost9container4test14random_shuffleINS0_12vec_iteratorIPSt4pairIiiELb0EEEEEvT_S8_.exit, !llvm.loop !195

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.x
  %.047429 = phi i64 [ %i.dv, %bb.x ], [ %.047429.ph, %scalar.ph.preheader ] ; 2 uses
  %i.dp = phi i64 [ %i.du, %bb.x ], [ %.ph, %scalar.ph.preheader ] ; 3 uses
  %.not.i120 = icmp eq i64 %i.dp, 500
  br i1 %.not.i120, label %bb.w, label %bb.x, !prof !196

bb.w:                                             ; preds = %scalar.ph
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorISt4pairIiiELm500ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #22
          to label %.noexc121 unwind label %bb.y

.noexc121:                                        ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %scalar.ph
  %i.dq = trunc i64 %.047429 to i32               ; 2 uses
  %i.dr = sub nsw i32 0, %i.dq
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.dp ; 2 uses
  store i32 %i.dq, ptr %i.ds, align 8, !tbaa !87
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  store i32 %i.dr, ptr %i.dt, align 4, !tbaa !87
  %i.du = add i64 %i.dp, 1                        ; 4 uses
  store i64 %i.du, ptr %i.cc, align 8, !tbaa !7765
  %i.dv = add nuw nsw i64 %.047429, 1             ; 2 uses
  %.not71 = icmp eq i64 %i.dv, 100
  br i1 %.not71, label %bb.t, label %scalar.ph, !llvm.loop !7833

bb.y:                                             ; preds = %bb.w
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

_ZN5boost9container4test14random_shuffleINS0_12vec_iteratorIPSt4pairIiiELb0EEEEEvT_S8_.exit: ; preds = %bb.v, %bb.t
  invoke void @_ZN5boost9container3dtl31flat_tree_adopt_sequence_uniqueINS0_13static_vectorISt4pairIiiELm500EvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_OSD_T0_NS_11move_detail5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(4008) %0, ptr noundef nonnull align 8 dereferenceable(4008) %2)
          to label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE14adopt_sequenceEOS7_.exit unwind label %bb.s

_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE14adopt_sequenceEOS7_.exit: ; preds = %_ZN5boost9container4test14random_shuffleINS0_12vec_iteratorIPSt4pairIiiELb0EEEEEvT_S8_.exit
  %i.dx = load i64, ptr %i.i, align 8, !tbaa !7765 ; 3 uses
  %i.dy = load i64, ptr %i.j, align 8, !tbaa !7765
  %.not.i123 = icmp eq i64 %i.dx, %i.dy
  br i1 %.not.i123, label %bb.z, label %.critedge

bb.z:                                             ; preds = %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE14adopt_sequenceEOS7_.exit
  %.idx.i125 = shl nsw i64 %i.dx, 3
  %i.dz = getelementptr inbounds i8, ptr %0, i64 %.idx.i125 ; 2 uses
  %.not2526.i126 = icmp eq i64 %i.dx, 0
  br i1 %.not2526.i126, label %.thread380, label %.lr.ph.i127

.lr.ph.i127:                                      ; preds = %bb.z, %bb.aa
  %.sroa.021.028.i128 = phi ptr [ %i.eg, %bb.aa ], [ %0, %bb.z ] ; 2 uses
  %.sroa.016.027.i129 = phi ptr [ %i.eh, %bb.aa ], [ %1, %bb.z ] ; 2 uses
  %i.ea = load <2 x i32>, ptr %.sroa.021.028.i128, align 4
  %i.eb = load <2 x i32>, ptr %.sroa.016.027.i129, align 4
  %i.ec = icmp eq <2 x i32> %i.ea, %i.eb          ; 2 uses
  %i.ed = extractelement <2 x i1> %i.ec, i64 0
  %i.ee = extractelement <2 x i1> %i.ec, i64 1
  %i.ef = select i1 %i.ed, i1 %i.ee, i1 false
  br i1 %i.ef, label %bb.aa, label %.critedge

bb.aa:                                            ; preds = %.lr.ph.i127
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.021.028.i128, i64 8 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.016.027.i129, i64 8
  %.not25.i130 = icmp eq ptr %i.eg, %i.dz
  br i1 %.not25.i130, label %.lr.ph.i135, label %.lr.ph.i127, !llvm.loop !7834

.lr.ph.i135:                                      ; preds = %bb.aa, %bb.ab
  %.sroa.021.028.i136 = phi ptr [ %i.eo, %bb.ab ], [ %0, %bb.aa ] ; 2 uses
  %.sroa.016.027.i137 = phi ptr [ %i.ep, %bb.ab ], [ %1, %bb.aa ] ; 2 uses
  %i.ei = load <2 x i32>, ptr %.sroa.021.028.i136, align 4
  %i.ej = load <2 x i32>, ptr %.sroa.016.027.i137, align 4
  %i.ek = icmp eq <2 x i32> %i.ei, %i.ej          ; 2 uses
  %i.el = extractelement <2 x i1> %i.ek, i64 0
  %i.em = extractelement <2 x i1> %i.ek, i64 1
  %i.en = select i1 %i.el, i1 %i.em, i1 false
  br i1 %i.en, label %bb.ab, label %_ZN5boost9container4test20CheckEqualContainersINS0_13static_vectorISt4pairIiiELm500EvEES6_EEbRKT_RKT0_.exit

bb.ab:                                            ; preds = %.lr.ph.i135
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.021.028.i136, i64 8 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.016.027.i137, i64 8
  %.not25.i138 = icmp eq ptr %i.eo, %i.dz
  br i1 %.not25.i138, label %.thread380, label %.lr.ph.i135, !llvm.loop !7835

_ZN5boost9container4test20CheckEqualContainersINS0_13static_vectorISt4pairIiiELm500EvEES6_EEbRKT_RKT0_.exit: ; preds = %.lr.ph.i135
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #23
  br label %bb.cx

.thread380:                                       ; preds = %bb.ab, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 4000 ; 7 uses
  store i64 0, ptr %i.eq, align 8, !tbaa !7744
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.er = getelementptr inbounds nuw i8, ptr %4, i64 4000 ; 6 uses
  store i64 0, ptr %i.er, align 8, !tbaa !7744
  br label %bb.af

bb.ac:                                            ; preds = %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEES5_INS0_12vec_iteratorIPS6_Lb0EEEbEDpOT_.exit176
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0340)
  call void @llvm.experimental.noalias.scope.decl(metadata !7836)
  %i.es = load i64, ptr %i.eq, align 8, !tbaa !7744, !noalias !7836 ; 3 uses
  %.sroa.0340.4000..sroa_idx590 = getelementptr inbounds nuw i8, ptr %.sroa.0340, i64 4000
  store i64 %i.es, ptr %.sroa.0340.4000..sroa_idx590, align 8, !tbaa !7744, !alias.scope !7836
  %.not.i.i.i.i.i.i139 = icmp eq i64 %i.es, 0
  br i1 %.not.i.i.i.i.i.i139, label %.thread384, label %bb.aq, !prof !196

.thread384:                                       ; preds = %bb.ac
  %i.et = getelementptr inbounds nuw i8, ptr %5, i64 4000
  store i64 0, ptr %i.et, align 8, !tbaa !7744
  br label %bb.as

bb.ad:                                            ; preds = %bb.s, %bb.y
  %.pn85.pn = phi { ptr, i32 } [ %i.df, %bb.s ], [ %i.dw, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.ae

bb.ae:                                            ; preds = %bb.l, %bb.m, %bb.ad
  %.pn88.pn = phi { ptr, i32 } [ %.pn85.pn, %bb.ad ], [ %i.by, %bb.m ], [ %i.bx, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #23
  br label %bb.cy

thread-pre-split535:                              ; preds = %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEES5_INS0_12vec_iteratorIPS6_Lb0EEEbEDpOT_.exit176
  %.pr536 = load i64, ptr %i.eq, align 8, !tbaa !7765, !noalias !7839
  br label %bb.af

bb.af:                                            ; preds = %thread-pre-split535, %.thread380
  %i.eu = phi i64 [ %.pr536, %thread-pre-split535 ], [ 0, %.thread380 ] ; 7 uses
  %.046430 = phi i64 [ %i.he, %thread-pre-split535 ], [ 0, %.thread380 ] ; 2 uses
  %i.ev = trunc i64 %.046430 to i32               ; 9 uses
  %i.ew = sub nsw i32 0, %i.ev                    ; 4 uses
  %.idx.i.i.i.i141 = shl nsw i64 %i.eu, 3
  %i.ex = getelementptr inbounds i8, ptr %3, i64 %.idx.i.i.i.i141
  %.not12.i.i.i.i.i.i142 = icmp eq i64 %i.eu, 0
  br i1 %.not12.i.i.i.i.i.i142, label %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i.i.i148, label %.lr.ph.i.i.i.i.i.i143

.lr.ph.i.i.i.i.i.i143:                            ; preds = %bb.af, %.lr.ph.i.i.i.i.i.i143
  %i.ey = phi ptr [ %i.ff, %.lr.ph.i.i.i.i.i.i143 ], [ %3, %bb.af ] ; 2 uses
  %.013.i.i.i.i.i.i144 = phi i64 [ %.1.i.i.i.i.i.i146, %.lr.ph.i.i.i.i.i.i143 ], [ %i.eu, %bb.af ] ; 2 uses
  %i.ez = lshr i64 %.013.i.i.i.i.i.i144, 1        ; 3 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.ez ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !87, !noalias !7852
  %i.fc = icmp slt i32 %i.fb, %i.ev               ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %.neg.i.i.i.i.i.i145 = xor i64 %i.ez, -1
  %i.fe = add i64 %.013.i.i.i.i.i.i144, %.neg.i.i.i.i.i.i145
  %i.ff = select i1 %i.fc, ptr %i.fd, ptr %i.ey   ; 2 uses
  %.1.i.i.i.i.i.i146 = select i1 %i.fc, i64 %i.fe, i64 %i.ez ; 2 uses
  %.not.i.i.i.i.i.i147 = icmp eq i64 %.1.i.i.i.i.i.i146, 0
  br i1 %.not.i.i.i.i.i.i147, label %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i.i.i148, label %.lr.ph.i.i.i.i.i.i143, !llvm.loop !7796

_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i.i.i148: ; preds = %.lr.ph.i.i.i.i.i.i143, %bb.af
  %i.fg = phi ptr [ %3, %bb.af ], [ %i.ff, %.lr.ph.i.i.i.i.i.i143 ] ; 8 uses
  %i.fh = icmp eq ptr %i.fg, %i.ex
  br i1 %i.fh, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i.i.i156, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i.i.i149

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i.i.i149: ; preds = %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i.i.i148
  %i.fi = load i32, ptr %i.fg, align 4, !tbaa !87, !noalias !7855
  %i.fj = icmp sgt i32 %i.fi, %i.ev
  br i1 %i.fj, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i.i.i156, label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEES5_INS0_12vec_iteratorIPS6_Lb0EEEbEDpOT_.exit158

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i.i.i156: ; preds = %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i.i.i148, %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i.i.i149
  %.not.i.i.i3.i.i.i151 = icmp eq i64 %i.eu, 500
  br i1 %.not.i.i.i3.i.i.i151, label %.noexc.i.i155, label %bb.ag, !prof !196

bb.ag:                                            ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i.i.i156
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.eu ; 5 uses
  %.not.i.i.i.i.i.i.i152 = icmp eq ptr %i.fk, %i.fg
  br i1 %.not.i.i.i.i.i.i.i152, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 %i.ev, ptr %i.fg, align 4, !tbaa !87, !noalias !7856
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  store i32 %i.ew, ptr %i.fl, align 4, !tbaa !87, !noalias !7856
  %i.fm = add i64 %i.eu, 1
  store i64 %i.fm, ptr %i.eq, align 8, !tbaa !7765, !noalias !7856
  br label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEES5_INS0_12vec_iteratorIPS6_Lb0EEEbEDpOT_.exit158

bb.ai:                                            ; preds = %bb.ag
  %i.fn = ptrtoint ptr %i.fg to i64
  %i.fo = ptrtoint ptr %i.fk to i64
  %i.fp = sub i64 %i.fo, %i.fn
  %i.fq = ashr exact i64 %i.fp, 3                 ; 2 uses
  %i.fr = getelementptr inbounds i8, ptr %i.fk, i64 -8 ; 2 uses
  %i.fs = load <2 x i32>, ptr %i.fr, align 8, !tbaa !87, !noalias !7856
  store <2 x i32> %i.fs, ptr %i.fk, align 8, !tbaa !87, !noalias !7856
end_hunk_3
begin_hunk_4_@_ZN5boost9container4test28flat_tree_extract_adopt_testINS0_8flat_mapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEEENS0_13flat_multimapIiiS5_S9_EEEEbv:bb.a
bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.r
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -24
  store ptr %i.t, ptr %i.v, align 8, !tbaa !9438, !noalias !9520
  br label %bb.i

bb.d:                                             ; preds = %bb.a, %bb.f
  %.065254 = phi i64 [ 0, %bb.a ], [ %i.y, %bb.f ] ; 2 uses
  %i.w = trunc i64 %.065254 to i32                ; 3 uses
  %i.x = sub nsw i32 0, %i.w                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23, !noalias !9523
  store i32 %i.w, ptr %19, align 4, !tbaa !87, !noalias !9523
  store i32 %i.x, ptr %i.k, align 4, !tbaa !87, !noalias !9523
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13stable_vectorIS4_vEEE13insert_uniqueEOS4_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.182") align 8 %22, ptr noundef nonnull align 8 dereferenceable(40) %20, ptr noundef nonnull align 4 dereferenceable(8) %19)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23, !noalias !9523
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23, !noalias !9528
  store i32 %i.w, ptr %18, align 4, !tbaa !87, !noalias !9528
  store i32 %i.x, ptr %i.l, align 4, !tbaa !87, !noalias !9528
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13stable_vectorIS4_vEEE13insert_uniqueEOS4_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.182") align 8 %23, ptr noundef nonnull align 8 dereferenceable(40) %21, ptr noundef nonnull align 4 dereferenceable(8) %18)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23, !noalias !9528
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  %i.y = add nuw nsw i64 %.065254, 1              ; 2 uses
  %.not = icmp eq i64 %i.y, 100
  br i1 %.not, label %bb.b, label %bb.d, !llvm.loop !9533

bb.g:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  br label %bb.ak

bb.h:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  br label %bb.ak

bb.i:                                             ; preds = %bb.c, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 8 uses
  store ptr null, ptr %i.ab, align 8, !tbaa !9439, !noalias !9520
  %i.ac = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 3 uses
  store ptr %i.o, ptr %i.ac, align 8, !tbaa !9428
  %i.ad = getelementptr inbounds nuw i8, ptr %24, i64 24 ; 3 uses
  store <2 x i64> %i.q, ptr %i.ad, align 8, !tbaa !708
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  store i64 %i.s, ptr %24, align 8, !tbaa !708
  store i64 0, ptr %25, align 8, !tbaa !708
  %i.ae = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 9 uses
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container13stable_vectorISt4pairIiiEvEC2EOS4_.exit, label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_13new_allocatorIvEEE17readjust_end_nodeERNS0_6vectorIPNS1_9node_baseIS3_EENS4_ISA_EEvEERS9_.exit.i.i

_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_13new_allocatorIvEEE17readjust_end_nodeERNS0_6vectorIPNS1_9node_baseIS3_EENS4_ISA_EEvEERS9_.exit.i.i: ; preds = %bb.i
  %i.af = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.r
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -24 ; 2 uses
  store ptr %i.ae, ptr %i.ag, align 8, !tbaa !9438
  br label %_ZN5boost9container13stable_vectorISt4pairIiiEvEC2EOS4_.exit

_ZN5boost9container13stable_vectorISt4pairIiiEvEC2EOS4_.exit: ; preds = %bb.i, %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_13new_allocatorIvEEE17readjust_end_nodeERNS0_6vectorIPNS1_9node_baseIS3_EENS4_ISA_EEvEERS9_.exit.i.i
  %storemerge = phi ptr [ %i.ag, %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_13new_allocatorIvEEE17readjust_end_nodeERNS0_6vectorIPNS1_9node_baseIS3_EENS4_ISA_EEvEERS9_.exit.i.i ], [ null, %bb.i ]
  store ptr %storemerge, ptr %i.ae, align 8, !tbaa !9439
  store ptr null, ptr %i.t, align 8, !tbaa !9439
  call void @_ZN5boost9container13stable_vectorISt4pairIiiEvED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %25) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  %i.ah = load i64, ptr %i.p, align 8, !tbaa !9423
  %i.ai = icmp ult i64 %i.ah, 4
  br i1 %i.ai, label %bb.j, label %.critedge

bb.j:                                             ; preds = %_ZN5boost9container13stable_vectorISt4pairIiiEvEC2EOS4_.exit
  %i.aj = load i64, ptr %i.ad, align 8, !tbaa !9423 ; 2 uses
  %i.ak = add i64 %i.aj, -3
  %.not.i.i = icmp eq i64 %i.aj, 0                ; 2 uses
  %i.al = select i1 %.not.i.i, i64 0, i64 %i.ak   ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %21, i64 24 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !9423 ; 2 uses
  %i.ao = add i64 %i.an, -3
  %.not.i.i.i.i100 = icmp eq i64 %i.an, 0         ; 2 uses
  %i.ap = select i1 %.not.i.i.i.i100, i64 0, i64 %i.ao
  %.not.i = icmp eq i64 %i.al, %i.ap
  br i1 %.not.i, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  br i1 %.not.i.i, label %_ZNK5boost9container13stable_vectorISt4pairIiiEvE5beginEv.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = load ptr, ptr %i.ac, align 8, !tbaa !9428, !noalias !9534
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !9438, !noalias !9534
  br label %_ZNK5boost9container13stable_vectorISt4pairIiiEvE5beginEv.exit.i

_ZNK5boost9container13stable_vectorISt4pairIiiEvE5beginEv.exit.i: ; preds = %bb.k, %bb.l
  %storemerge.i.i = phi ptr [ %i.ar, %bb.l ], [ %i.ae, %bb.k ] ; 3 uses
  br i1 %.not.i.i.i.i100, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNK5boost9container13stable_vectorISt4pairIiiEvE5beginEv.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %21, i64 8
  br label %_ZNK5boost9container8flat_mapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEE5beginEv.exit.i

bb.n:                                             ; preds = %_ZNK5boost9container13stable_vectorISt4pairIiiEvE5beginEv.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !9428, !noalias !9537
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !9438, !noalias !9537
  br label %_ZNK5boost9container8flat_mapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEE5beginEv.exit.i

_ZNK5boost9container8flat_mapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEE5beginEv.exit.i: ; preds = %bb.n, %bb.m
  %storemerge.i.i.i.i.i = phi ptr [ %i.av, %bb.n ], [ %i.as, %bb.m ] ; 2 uses
  %i.aw = load ptr, ptr %i.ae, align 8, !tbaa !9439
  %i.ax = load ptr, ptr %storemerge.i.i, align 8, !tbaa !9439
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 3
  %.not10.i = icmp eq i64 %i.bb, %i.al
  br i1 %.not10.i, label %bb.o, label %.critedge

bb.o:                                             ; preds = %_ZNK5boost9container8flat_mapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEE5beginEv.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 4 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !9439
  %i.be = load ptr, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !9439
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 3
  %.not11.i = icmp eq i64 %i.bi, %i.al
  br i1 %.not11.i, label %.preheader.i, label %.critedge

.preheader.i:                                     ; preds = %bb.o
  %.not2728.i = icmp eq ptr %storemerge.i.i, %i.ae
  br i1 %.not2728.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorISt4pairIiiEvEENS0_8flat_mapIiiSt4lessIiES6_EEEEbRKT_RKT0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.p
  %.sroa.023.030.i = phi ptr [ %i.bt, %bb.p ], [ %storemerge.i.i, %.preheader.i ] ; 2 uses
  %.sroa.018.029.i = phi ptr [ %i.bw, %bb.p ], [ %storemerge.i.i.i.i.i, %.preheader.i ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.023.030.i, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.018.029.i, i64 8
  %i.bl = load <2 x i32>, ptr %i.bj, align 4
  %i.bm = load <2 x i32>, ptr %i.bk, align 4
  %i.bn = icmp eq <2 x i32> %i.bl, %i.bm          ; 2 uses
  %i.bo = extractelement <2 x i1> %i.bn, i64 0
  %i.bp = extractelement <2 x i1> %i.bn, i64 1
  %i.bq = select i1 %i.bo, i1 %i.bp, i1 false
  br i1 %i.bq, label %bb.p, label %.critedge

bb.p:                                             ; preds = %.lr.ph.i
  %i.br = load ptr, ptr %.sroa.023.030.i, align 8, !tbaa !9439
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !9438 ; 2 uses
  %i.bu = load ptr, ptr %.sroa.018.029.i, align 8, !tbaa !9439
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !9438
  %.not27.i = icmp eq ptr %i.bt, %i.ae
  br i1 %.not27.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorISt4pairIiiEvEENS0_8flat_mapIiiSt4lessIiES6_EEEEbRKT_RKT0_.exit, label %.lr.ph.i, !llvm.loop !9546

_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorISt4pairIiiEvEENS0_8flat_mapIiiSt4lessIiES6_EEEEbRKT_RKT0_.exit: ; preds = %bb.p, %.preheader.i
  %i.bx = getelementptr inbounds nuw i8, ptr %14, i64 8
  br label %bb.v

bb.q:                                             ; preds = %_ZN5boost9container4test14random_shuffleINS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEEEvT_S8_.exit
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.r:                                             ; preds = %bb.w
  %i.bz = load i64, ptr %i.ad, align 8, !tbaa !9423, !noalias !9547
  %.not.i.i101 = icmp eq i64 %i.bz, 0
  br i1 %.not.i.i101, label %_ZN5boost9container13stable_vectorISt4pairIiiEvE5beginEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ca = load ptr, ptr %i.ac, align 8, !tbaa !9428, !noalias !9547
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !9438, !noalias !9547
  br label %_ZN5boost9container13stable_vectorISt4pairIiiEvE5beginEv.exit

_ZN5boost9container13stable_vectorISt4pairIiiEvE5beginEv.exit: ; preds = %bb.r, %bb.s
  %storemerge.i = phi ptr [ %i.cb, %bb.s ], [ %i.ae, %bb.r ] ; 2 uses
  %i.cc = load ptr, ptr %i.ae, align 8, !tbaa !9439
  %i.cd = load ptr, ptr %storemerge.i, align 8, !tbaa !9439
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = ashr exact i64 %i.cg, 3                 ; 2 uses
  %i.ci = icmp sgt i64 %i.ch, 1
  br i1 %i.ci, label %.lr.ph.i102, label %_ZN5boost9container4test14random_shuffleINS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEEEvT_S8_.exit

.lr.ph.i102:                                      ; preds = %_ZN5boost9container13stable_vectorISt4pairIiiEvE5beginEv.exit, %bb.u
  %.0.in10.i = phi i64 [ %.011.i, %bb.u ], [ %i.ch, %_ZN5boost9container13stable_vectorISt4pairIiiEvE5beginEv.exit ] ; 3 uses
  %.011.i = add nsw i64 %.0.in10.i, -1            ; 3 uses
  %i.cj = call i32 @rand() #23
  %i.ck = sext i32 %i.cj to i64
  %i.cl = srem i64 %i.ck, %.0.in10.i              ; 2 uses
  %.not.i103 = icmp eq i64 %i.cl, %.011.i
  br i1 %.not.i103, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i102
  %i.cm = load ptr, ptr %storemerge.i, align 8, !tbaa !9439 ; 2 uses
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %.011.i
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !9438 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 2 uses
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.cl
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !9438 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 2 uses
  %i.ct = load i32, ptr %i.cp, align 4, !tbaa !87
  %i.cu = load i32, ptr %i.cs, align 4, !tbaa !87
  store i32 %i.cu, ptr %i.cp, align 4, !tbaa !87
  store i32 %i.ct, ptr %i.cs, align 4, !tbaa !87
  %i.cv = getelementptr inbounds nuw i8, ptr %i.co, i64 12 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 12 ; 2 uses
  %i.cx = load i32, ptr %i.cv, align 4, !tbaa !87
  %i.cy = load i32, ptr %i.cw, align 4, !tbaa !87
  store i32 %i.cy, ptr %i.cv, align 4, !tbaa !87
  store i32 %i.cx, ptr %i.cw, align 4, !tbaa !87
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.i102
  %i.cz = icmp samesign ugt i64 %.0.in10.i, 2
  br i1 %i.cz, label %.lr.ph.i102, label %_ZN5boost9container4test14random_shuffleINS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEEEvT_S8_.exit, !llvm.loop !9550

bb.v:                                             ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorISt4pairIiiEvEENS0_8flat_mapIiiSt4lessIiES6_EEEEbRKT_RKT0_.exit, %bb.w
  %.047255 = phi i64 [ 0, %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorISt4pairIiiEvEENS0_8flat_mapIiiSt4lessIiES6_EEEEbRKT_RKT0_.exit ], [ %i.dc, %bb.w ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.da = trunc i64 %.047255 to i32               ; 2 uses
  store i32 %i.da, ptr %i.a, align 4, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.db = sub nsw i32 0, %i.da
  store i32 %i.db, ptr %i.b, align 4, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  store ptr %i.b, ptr %14, align 8, !tbaa !9551
  store ptr %i.a, ptr %i.bx, align 8, !tbaa !9551
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  store ptr %i.ae, ptr %16, align 8, !tbaa !9419, !alias.scope !9552
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  invoke void @_ZN5boost9container13stable_vectorISt4pairIiiEvE6insertINS0_16emplace_iteratorIS3_NS0_15emplace_functorIJiiEEEEEEENS_11move_detail13disable_if_orINS0_22stable_vector_iteratorIPS3_Lb0EEENSA_14is_convertibleIT_mEENS0_3dtl17is_input_iteratorISG_Xsr21has_iterator_categoryISG_EE5valueEEENSA_5bool_ILb0EEESM_E4typeENSC_ISD_Lb1EEESG_SG_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::stable_vector_iterator") align 8 %15, ptr noundef nonnull align 8 dereferenceable(40) %24, ptr noundef nonnull align 8 dead_on_return %16, i64 1, ptr nonnull %14, ptr noundef nonnull byval(%"class.boost::container::emplace_iterator.195") align 8 %17)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.dc = add nuw nsw i64 %.047255, 1             ; 2 uses
  %.not71 = icmp eq i64 %i.dc, 100
  br i1 %.not71, label %bb.r, label %bb.v, !llvm.loop !9557

bb.x:                                             ; preds = %bb.v
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.aj

_ZN5boost9container4test14random_shuffleINS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEEEvT_S8_.exit: ; preds = %bb.u, %_ZN5boost9container13stable_vectorISt4pairIiiEvE5beginEv.exit
  invoke void @_ZN5boost9container3dtl31flat_tree_adopt_sequence_uniqueINS0_13stable_vectorISt4pairIiiEvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_OSD_T0_NS_11move_detail5bool_ILb0EEE(ptr noundef nonnull align 8 dereferenceable(40) %20, ptr noundef nonnull align 8 dereferenceable(40) %24)
          to label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEE14adopt_sequenceEOS7_.exit unwind label %bb.q

_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEE14adopt_sequenceEOS7_.exit: ; preds = %_ZN5boost9container4test14random_shuffleINS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEEEvT_S8_.exit
  %i.de = load i64, ptr %i.p, align 8, !tbaa !9423 ; 2 uses
  %i.df = add i64 %i.de, -3
  %.not.i.i.i.i104 = icmp eq i64 %i.de, 0         ; 3 uses
  %i.dg = select i1 %.not.i.i.i.i104, i64 0, i64 %i.df ; 5 uses
  %i.dh = load i64, ptr %i.am, align 8, !tbaa !9423 ; 2 uses
  %i.di = add i64 %i.dh, -3
  %.not.i.i.i12.i = icmp eq i64 %i.dh, 0          ; 3 uses
  %i.dj = select i1 %.not.i.i.i12.i, i64 0, i64 %i.di
  %.not.i105 = icmp eq i64 %i.dg, %i.dj
  br i1 %.not.i105, label %bb.y, label %.critedge

bb.y:                                             ; preds = %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEE14adopt_sequenceEOS7_.exit
  br i1 %.not.i.i.i.i104, label %_ZNK5boost9container8flat_mapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEE5beginEv.exit.i107, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dk = load ptr, ptr %i.n, align 8, !tbaa !9428, !noalias !9558
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !9438, !noalias !9558
  br label %_ZNK5boost9container8flat_mapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEE5beginEv.exit.i107

_ZNK5boost9container8flat_mapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEE5beginEv.exit.i107: ; preds = %bb.y, %bb.z
  %storemerge.i.i.i.i.i108 = phi ptr [ %i.dl, %bb.z ], [ %i.ab, %bb.y ] ; 3 uses
  br i1 %.not.i.i.i12.i, label %_ZNK5boost9container8flat_mapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEE5beginEv.exit15.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNK5boost9container8flat_mapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEE5beginEv.exit.i107
  %i.dm = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !9428, !noalias !9567
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !9438, !noalias !9567
  br label %_ZNK5boost9container8flat_mapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEE5beginEv.exit15.i

_ZNK5boost9container8flat_mapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEE5beginEv.exit15.i: ; preds = %_ZNK5boost9container8flat_mapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEE5beginEv.exit.i107, %bb.aa
  %storemerge.i.i.i.i14.i = phi ptr [ %i.do, %bb.aa ], [ %i.bc, %_ZNK5boost9container8flat_mapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEE5beginEv.exit.i107 ] ; 2 uses
  %i.dp = load ptr, ptr %i.ab, align 8, !tbaa !9439
  %i.dq = load ptr, ptr %storemerge.i.i.i.i.i108, align 8, !tbaa !9439
  %i.dr = ptrtoint ptr %i.dp to i64               ; 2 uses
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = sub i64 %i.dr, %i.ds
  %i.du = ashr exact i64 %i.dt, 3
  %.not10.i109 = icmp eq i64 %i.du, %i.dg
  br i1 %.not10.i109, label %bb.ab, label %.critedge

bb.ab:                                            ; preds = %_ZNK5boost9container8flat_mapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEE5beginEv.exit15.i
  %i.dv = load ptr, ptr %i.bc, align 8, !tbaa !9439
  %i.dw = load ptr, ptr %storemerge.i.i.i.i14.i, align 8, !tbaa !9439
  %i.dx = ptrtoint ptr %i.dv to i64               ; 2 uses
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = sub i64 %i.dx, %i.dy
  %i.ea = ashr exact i64 %i.dz, 3
  %.not11.i110 = icmp eq i64 %i.ea, %i.dg
  br i1 %.not11.i110, label %.preheader.i111, label %.critedge

.preheader.i111:                                  ; preds = %bb.ab
  %.not3132.i = icmp eq ptr %storemerge.i.i.i.i.i108, %i.ab
  br i1 %.not3132.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_8flat_mapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEEESA_EEbRKT_RKT0_.exit.thread238, label %.lr.ph.i112

.lr.ph.i112:                                      ; preds = %.preheader.i111, %bb.ac
  %.sroa.027.034.i = phi ptr [ %i.el, %bb.ac ], [ %storemerge.i.i.i.i.i108, %.preheader.i111 ] ; 2 uses
  %.sroa.022.033.i = phi ptr [ %i.eo, %bb.ac ], [ %storemerge.i.i.i.i14.i, %.preheader.i111 ] ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.027.034.i, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.022.033.i, i64 8
  %i.ed = load <2 x i32>, ptr %i.eb, align 4
  %i.ee = load <2 x i32>, ptr %i.ec, align 4
  %i.ef = icmp eq <2 x i32> %i.ed, %i.ee          ; 2 uses
  %i.eg = extractelement <2 x i1> %i.ef, i64 0
  %i.eh = extractelement <2 x i1> %i.ef, i64 1
  %i.ei = select i1 %i.eg, i1 %i.eh, i1 false
  br i1 %i.ei, label %bb.ac, label %.critedge

bb.ac:                                            ; preds = %.lr.ph.i112
  %i.ej = load ptr, ptr %.sroa.027.034.i, align 8, !tbaa !9439
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !9438 ; 2 uses
  %i.em = load ptr, ptr %.sroa.022.033.i, align 8, !tbaa !9439
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !9438
  %.not31.i = icmp eq ptr %i.el, %i.ab
  br i1 %.not31.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_8flat_mapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEEESA_EEbRKT_RKT0_.exit.thread238, label %.lr.ph.i112, !llvm.loop !9576

_ZN5boost9container4test20CheckEqualContainersINS0_8flat_mapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEEESA_EEbRKT_RKT0_.exit.thread238: ; preds = %bb.ac, %.preheader.i111
  br i1 %.not.i.i.i.i104, label %_ZNK5boost9container13stable_vectorISt4pairIiiEvE5beginEv.exit.i116, label %bb.ad

bb.ad:                                            ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8flat_mapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEEESA_EEbRKT_RKT0_.exit.thread238
  %i.ep = load ptr, ptr %i.n, align 8, !tbaa !9428, !noalias !9577
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !9438, !noalias !9577
  br label %_ZNK5boost9container13stable_vectorISt4pairIiiEvE5beginEv.exit.i116

_ZNK5boost9container13stable_vectorISt4pairIiiEvE5beginEv.exit.i116: ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8flat_mapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEEESA_EEbRKT_RKT0_.exit.thread238, %bb.ad
  %storemerge.i.i117 = phi ptr [ %i.eq, %bb.ad ], [ %i.ab, %_ZN5boost9container4test20CheckEqualContainersINS0_8flat_mapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEEESA_EEbRKT_RKT0_.exit.thread238 ] ; 3 uses
  br i1 %.not.i.i.i12.i, label %_ZNK5boost9container13stable_vectorISt4pairIiiEvE5beginEv.exit15.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNK5boost9container13stable_vectorISt4pairIiiEvE5beginEv.exit.i116
  %i.er = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !9428, !noalias !9580
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !9438, !noalias !9580
  br label %_ZNK5boost9container13stable_vectorISt4pairIiiEvE5beginEv.exit15.i

_ZNK5boost9container13stable_vectorISt4pairIiiEvE5beginEv.exit15.i: ; preds = %_ZNK5boost9container13stable_vectorISt4pairIiiEvE5beginEv.exit.i116, %bb.ae
  %storemerge.i14.i = phi ptr [ %i.et, %bb.ae ], [ %i.bc, %_ZNK5boost9container13stable_vectorISt4pairIiiEvE5beginEv.exit.i116 ] ; 2 uses
  %i.eu = load ptr, ptr %storemerge.i.i117, align 8, !tbaa !9439
  %i.ev = ptrtoint ptr %i.eu to i64
  %i.ew = sub i64 %i.dr, %i.ev
  %i.ex = ashr exact i64 %i.ew, 3
  %.not10.i118 = icmp eq i64 %i.ex, %i.dg
  br i1 %.not10.i118, label %bb.af, label %.critedge249

bb.af:                                            ; preds = %_ZNK5boost9container13stable_vectorISt4pairIiiEvE5beginEv.exit15.i
  %i.ey = load ptr, ptr %storemerge.i14.i, align 8, !tbaa !9439
  %i.ez = ptrtoint ptr %i.ey to i64
  %i.fa = sub i64 %i.dx, %i.ez
  %i.fb = ashr exact i64 %i.fa, 3
  %.not11.i119 = icmp eq i64 %i.fb, %i.dg
  br i1 %.not11.i119, label %.preheader.i120, label %.critedge249

.preheader.i120:                                  ; preds = %bb.af
  %.not3132.i121 = icmp eq ptr %storemerge.i.i117, %i.ab
  br i1 %.not3132.i121, label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorISt4pairIiiEvEES6_EEbRKT_RKT0_.exit, label %.lr.ph.i122

.lr.ph.i122:                                      ; preds = %.preheader.i120, %bb.ag
  %.sroa.027.034.i123 = phi ptr [ %i.fm, %bb.ag ], [ %storemerge.i.i117, %.preheader.i120 ] ; 2 uses
  %.sroa.022.033.i124 = phi ptr [ %i.fp, %bb.ag ], [ %storemerge.i14.i, %.preheader.i120 ] ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.027.034.i123, i64 8
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.022.033.i124, i64 8
  %i.fe = load <2 x i32>, ptr %i.fc, align 4
  %i.ff = load <2 x i32>, ptr %i.fd, align 4
  %i.fg = icmp eq <2 x i32> %i.fe, %i.ff          ; 2 uses
  %i.fh = extractelement <2 x i1> %i.fg, i64 0
  %i.fi = extractelement <2 x i1> %i.fg, i64 1
  %i.fj = select i1 %i.fh, i1 %i.fi, i1 false
  br i1 %i.fj, label %bb.ag, label %.critedge249

bb.ag:                                            ; preds = %.lr.ph.i122
  %i.fk = load ptr, ptr %.sroa.027.034.i123, align 8, !tbaa !9439
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !9438 ; 2 uses
  %i.fn = load ptr, ptr %.sroa.022.033.i124, align 8, !tbaa !9439
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !9438
  %.not31.i125 = icmp eq ptr %i.fm, %i.ab
end_hunk_4
begin_hunk_5_@_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13stable_vectorIS4_vEEE18insert_equal_rangeISt17_Rb_tree_iteratorIS3_IKiiEEEEvNS0_15ordered_range_tET_SI_:bb.a
  br label %_ZN5boost9container3dtl21flat_tree_merge_equalINS0_13stable_vectorISt4pairIiiEvEESt17_Rb_tree_iteratorIS4_IKiiEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_T0_SJ_T1_NS_11move_detail5bool_ILb0EEE.exit

_ZN5boost9container3dtl21flat_tree_merge_equalINS0_13stable_vectorISt4pairIiiEvEESt17_Rb_tree_iteratorIS4_IKiiEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_T0_SJ_T1_NS_11move_detail5bool_ILb0EEE.exit: ; preds = %bb.a, %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_13stable_vectorISt4pairIiiEvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb0EEE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl22flat_tree_merge_uniqueINS0_13stable_vectorISt4pairIiiEvEESt17_Rb_tree_iteratorIS4_IKiiEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_T0_SJ_T1_NS_11move_detail5bool_ILb0EEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, ptr %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::movelib::adaptive_xbuf", align 8 ; 4 uses
  %4 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %5 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %6 = alloca %"class.boost::container::stable_vector_iterator.159", align 8 ; 2 uses
  %7 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %9 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %10 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %11 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %12 = alloca %"class.boost::container::stable_vector_iterator.159", align 8 ; 2 uses
  %13 = alloca %"class.boost::container::stable_vector_iterator.159", align 8 ; 2 uses
  %14 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 3 uses
  %.not = icmp eq ptr %1, %2
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9423 ; 2 uses
  %i.c = add i64 %i.b, -3
  %.not.i = icmp eq i64 %i.b, 0
  %i.d = select i1 %.not.i, i64 0, i64 %i.c       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  store ptr %i.e, ptr %6, align 8, !tbaa !9419, !alias.scope !17819
  call void @_ZN5boost9container13stable_vectorISt4pairIiiEvE6insertISt17_Rb_tree_iteratorIS2_IKiiEEEENS_11move_detail13disable_if_orINS0_22stable_vector_iteratorIPS3_Lb0EEENSA_14is_convertibleIT_mEENS0_3dtl17is_input_iteratorISG_Xsr21has_iterator_categoryISG_EE5valueEEENSA_5bool_ILb0EEESM_E4typeENSC_ISD_Lb1EEESG_SG_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::stable_vector_iterator") align 8 %5, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dead_on_return %6, ptr %1, ptr %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.f = load ptr, ptr %5, align 8, !tbaa !9636   ; 2 uses
  store ptr %i.f, ptr %8, align 8, !tbaa !9636
  store ptr %i.e, ptr %9, align 8, !tbaa !9636, !alias.scope !17824
  call void @llvm.experimental.noalias.scope.decl(metadata !17827)
  %i.g = load i64, ptr %i.a, align 8, !tbaa !9423, !noalias !17827
  %.not.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i, label %_ZN5boost9container13stable_vectorISt4pairIiiEvE5beginEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !9428, !noalias !17827
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !9438, !noalias !17827
  br label %_ZN5boost9container13stable_vectorISt4pairIiiEvE5beginEv.exit

_ZN5boost9container13stable_vectorISt4pairIiiEvE5beginEv.exit: ; preds = %bb.b, %bb.c
  %storemerge.i = phi ptr [ %i.j, %bb.c ], [ %i.e, %bb.b ]
  store ptr %storemerge.i, ptr %10, align 8, !tbaa !9636, !alias.scope !17827
  store ptr %i.f, ptr %11, align 8, !tbaa !9636
  call void @_ZN5boost7movelib29inplace_set_unique_differenceINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES7_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_T0_SG_T1_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::stable_vector_iterator") align 8 %7, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 8 dead_on_return %11)
  %i.k = load ptr, ptr %7, align 8, !tbaa !9636
  store ptr %i.k, ptr %12, align 8, !tbaa !9419
  store ptr %i.e, ptr %13, align 8, !tbaa !9419
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  call void @_ZN5boost9container13stable_vectorISt4pairIiiEvE5eraseENS0_22stable_vector_iteratorIPS3_Lb1EEES7_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::stable_vector_iterator") align 8 %14, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  %i.l = load i64, ptr %i.a, align 8, !tbaa !9423, !noalias !17830
  %.not.i.i10 = icmp eq i64 %i.l, 0               ; 2 uses
  br i1 %.not.i.i10, label %_ZN5boost9container13stable_vectorISt4pairIiiEvE5beginEv.exit12, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container13stable_vectorISt4pairIiiEvE5beginEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !9428, !noalias !17830
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !9438, !noalias !17830
  br label %_ZN5boost9container13stable_vectorISt4pairIiiEvE5beginEv.exit12

_ZN5boost9container13stable_vectorISt4pairIiiEvE5beginEv.exit12: ; preds = %_ZN5boost9container13stable_vectorISt4pairIiiEvE5beginEv.exit, %bb.d
  %storemerge.i11 = phi ptr [ %i.o, %bb.d ], [ %i.e, %_ZN5boost9container13stable_vectorISt4pairIiiEvE5beginEv.exit ] ; 2 uses
  %.not.i.i13 = icmp eq i64 %i.d, 0
  br i1 %.not.i.i13, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container13stable_vectorISt4pairIiiEvE5beginEv.exit12
  %i.p = load ptr, ptr %storemerge.i11, align 8, !tbaa !9439, !noalias !17833
  %i.q = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.d
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !9438, !noalias !17833
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit: ; preds = %_ZN5boost9container13stable_vectorISt4pairIiiEvE5beginEv.exit12, %bb.e
  %.sroa.014.0 = phi ptr [ %storemerge.i11, %_ZN5boost9container13stable_vectorISt4pairIiiEvE5beginEv.exit12 ], [ %i.r, %bb.e ] ; 6 uses
  br i1 %.not.i.i10, label %_ZN5boost9container13stable_vectorISt4pairIiiEvE5beginEv.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !9428, !noalias !17836
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !9438, !noalias !17836
  br label %_ZN5boost9container13stable_vectorISt4pairIiiEvE5beginEv.exit.i

_ZN5boost9container13stable_vectorISt4pairIiiEvE5beginEv.exit.i: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit, %bb.f
  %storemerge.i.i = phi ptr [ %i.u, %bb.f ], [ %i.e, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.v = icmp eq ptr %storemerge.i.i, %.sroa.014.0
  %i.w = icmp eq ptr %.sroa.014.0, %i.e
  %or.cond.i = select i1 %i.v, i1 true, i1 %i.w
  br i1 %or.cond.i, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_13stable_vectorISt4pairIiiEvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb0EEE.exit, label %.preheader.i.preheader.i

.preheader.i.preheader.i:                         ; preds = %_ZN5boost9container13stable_vectorISt4pairIiiEvE5beginEv.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 8
  %i.y = load i32, ptr %i.x, align 4, !tbaa !87
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.g, %.preheader.i.preheader.i
  %.sroa.06.0.i = phi ptr [ %i.ae, %bb.g ], [ %storemerge.i.i, %.preheader.i.preheader.i ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 8
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !87
  %i.ab = icmp slt i32 %i.y, %i.aa
  br i1 %i.ab, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.preheader.i.i
  %i.ac = load ptr, ptr %.sroa.06.0.i, align 8, !tbaa !9439
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !9438 ; 2 uses
  %i.af = icmp eq ptr %i.ae, %.sroa.014.0
  br i1 %i.af, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_13stable_vectorISt4pairIiiEvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb0EEE.exit, label %.preheader.i.i, !llvm.loop !11437

bb.h:                                             ; preds = %.preheader.i.i
  %i.ag = load ptr, ptr %.sroa.014.0, align 8, !tbaa !9439 ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !9438
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !87
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %i.al = phi ptr [ %i.ao, %bb.k ], [ %i.e, %bb.h ]
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !9439
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !9438 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !87
  %i.ar = icmp slt i32 %i.aq, %i.ak
  br i1 %i.ar, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.as = load ptr, ptr %i.ao, align 8, !tbaa !9439
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !9438
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  store ptr %.sroa.06.0.i, ptr %4, align 8, !tbaa !9636
  %i.av = load ptr, ptr %.sroa.06.0.i, align 8, !tbaa !9439
  %i.aw = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = ashr exact i64 %i.ay, 3
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !9439
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.aw
  %i.bd = ashr exact i64 %i.bc, 3
  call void @_ZN5boost7movelib15detail_adaptive19adaptive_merge_implINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_13adaptive_xbufIS6_S7_mEEEEvT_NS0_9iter_sizeISI_E4typeESL_T0_RT1_(ptr noundef nonnull align 8 dead_on_return %4, i64 noundef %i.az, i64 noundef %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_13stable_vectorISt4pairIiiEvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb0EEE.exit

bb.k:                                             ; preds = %bb.i
  %i.be = icmp eq ptr %i.ao, %.sroa.014.0
  br i1 %i.be, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_13stable_vectorISt4pairIiiEvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb0EEE.exit, label %bb.i, !llvm.loop !11438

_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_13stable_vectorISt4pairIiiEvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb0EEE.exit: ; preds = %bb.g, %bb.k, %_ZN5boost9container13stable_vectorISt4pairIiiEvE5beginEv.exit.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.l

bb.l:                                             ; preds = %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_13stable_vectorISt4pairIiiEvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb0EEE.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container4test14random_shuffleINS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEEEvT_S8_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !9636
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9439
  %i.c = load ptr, ptr %0, align 8, !tbaa !9636
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9439
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3                   ; 2 uses
  %i.i = icmp sgt i64 %i.h, 1
  br i1 %i.i, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.0.in10 = phi i64 [ %.011, %bb.c ], [ %i.h, %bb.a ] ; 3 uses
  %.011 = add nsw i64 %.0.in10, -1                ; 3 uses
  %i.j = tail call i32 @rand() #23
  %i.k = sext i32 %i.j to i64
  %i.l = srem i64 %i.k, %.0.in10                  ; 2 uses
  %.not = icmp eq i64 %i.l, %.011
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.m = load ptr, ptr %0, align 8, !tbaa !9636
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !9439 ; 2 uses
  %i.o = getelementptr inbounds [8 x i8], ptr %i.n, i64 %.011
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !9438 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.l
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !9438 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.u = load i32, ptr %i.q, align 4, !tbaa !87
  %i.v = load i32, ptr %i.t, align 4, !tbaa !87
  store i32 %i.v, ptr %i.q, align 4, !tbaa !87
  store i32 %i.u, ptr %i.t, align 4, !tbaa !87
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 12 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12 ; 2 uses
  %i.y = load i32, ptr %i.w, align 4, !tbaa !87
  %i.z = load i32, ptr %i.x, align 4, !tbaa !87
  store i32 %i.z, ptr %i.w, align 4, !tbaa !87
  store i32 %i.y, ptr %i.x, align 4, !tbaa !87
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.aa = icmp samesign ugt i64 %.0.in10, 2
  br i1 %i.aa, label %.lr.ph, label %._crit_edge, !llvm.loop !9550
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9container4test20CheckEqualContainersINS0_8flat_mapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEEESA_EEbRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9423 ; 2 uses
  %i.c = add i64 %i.b, -3
  %.not.i.i.i = icmp eq i64 %i.b, 0               ; 2 uses
  %i.d = select i1 %.not.i.i.i, i64 0, i64 %i.c   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !9423 ; 2 uses
  %i.g = add i64 %i.f, -3
  %.not.i.i.i12 = icmp eq i64 %i.f, 0             ; 2 uses
  %i.h = select i1 %.not.i.i.i12, i64 0, i64 %i.g
  %.not = icmp eq i64 %i.d, %i.h
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZNK5boost9container8flat_mapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEE5beginEv.exit

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !9428, !noalias !17839
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !9438, !noalias !17839
  br label %_ZNK5boost9container8flat_mapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEE5beginEv.exit

_ZNK5boost9container8flat_mapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEE5beginEv.exit: ; preds = %bb.c, %bb.d
  %storemerge.i.i.i.i = phi ptr [ %i.l, %bb.d ], [ %i.i, %bb.c ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br i1 %.not.i.i.i12, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK5boost9container8flat_mapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEE5beginEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %_ZNK5boost9container8flat_mapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEE5beginEv.exit15

bb.f:                                             ; preds = %_ZNK5boost9container8flat_mapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEE5beginEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !9428, !noalias !17848
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !9438, !noalias !17848
  br label %_ZNK5boost9container8flat_mapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEE5beginEv.exit15

_ZNK5boost9container8flat_mapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEE5beginEv.exit15: ; preds = %bb.e, %bb.f
  %storemerge.i.i.i.i14 = phi ptr [ %i.q, %bb.f ], [ %i.n, %bb.e ] ; 2 uses
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !9439
  %i.s = load ptr, ptr %storemerge.i.i.i.i, align 8, !tbaa !9439
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 3
  %.not10 = icmp eq i64 %i.w, %i.d
  br i1 %.not10, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %_ZNK5boost9container8flat_mapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEE5beginEv.exit15
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !9439
  %i.z = load ptr, ptr %storemerge.i.i.i.i14, align 8, !tbaa !9439
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 3
  %.not11 = icmp eq i64 %i.ad, %i.d
  br i1 %.not11, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.g
  %.not3132 = icmp eq ptr %storemerge.i.i.i.i, %i.m
  br i1 %.not3132, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.h
  %.sroa.027.034 = phi ptr [ %i.ao, %bb.h ], [ %storemerge.i.i.i.i, %.preheader ] ; 2 uses
  %.sroa.022.033 = phi ptr [ %i.ar, %bb.h ], [ %storemerge.i.i.i.i14, %.preheader ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.027.034, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.022.033, i64 8
  %i.ag = load <2 x i32>, ptr %i.ae, align 4
  %i.ah = load <2 x i32>, ptr %i.af, align 4
  %i.ai = icmp eq <2 x i32> %i.ag, %i.ah          ; 2 uses
  %i.aj = extractelement <2 x i1> %i.ai, i64 0
  %i.ak = extractelement <2 x i1> %i.ai, i64 1
  %i.al = select i1 %i.aj, i1 %i.ak, i1 false     ; 3 uses
  br i1 %i.al, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %.lr.ph
  %i.am = load ptr, ptr %.sroa.027.034, align 8, !tbaa !9439
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !9438 ; 2 uses
  %i.ap = load ptr, ptr %.sroa.022.033, align 8, !tbaa !9439
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !9438
  %.not31 = icmp eq ptr %i.ao, %i.m
  br i1 %.not31, label %.loopexit, label %.lr.ph, !llvm.loop !9576

.loopexit:                                        ; preds = %.lr.ph, %bb.h, %.preheader, %_ZNK5boost9container8flat_mapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEE5beginEv.exit15, %bb.g, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ false, %_ZNK5boost9container8flat_mapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEE5beginEv.exit15 ], [ false, %bb.g ], [ true, %.preheader ], [ %i.al, %bb.h ], [ %i.al, %.lr.ph ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorISt4pairIiiEvEES6_EEbRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9423 ; 2 uses
  %i.c = add i64 %i.b, -3
  %.not.i = icmp eq i64 %i.b, 0                   ; 2 uses
  %i.d = select i1 %.not.i, i64 0, i64 %i.c       ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !9423 ; 2 uses
  %i.g = add i64 %i.f, -3
  %.not.i12 = icmp eq i64 %i.f, 0                 ; 2 uses
  %i.h = select i1 %.not.i12, i64 0, i64 %i.g
  %.not = icmp eq i64 %i.d, %i.h
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZNK5boost9container13stable_vectorISt4pairIiiEvE5beginEv.exit

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !9428, !noalias !17857
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !9438, !noalias !17857
  br label %_ZNK5boost9container13stable_vectorISt4pairIiiEvE5beginEv.exit

_ZNK5boost9container13stable_vectorISt4pairIiiEvE5beginEv.exit: ; preds = %bb.c, %bb.d
  %storemerge.i = phi ptr [ %i.l, %bb.d ], [ %i.i, %bb.c ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br i1 %.not.i12, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK5boost9container13stable_vectorISt4pairIiiEvE5beginEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %_ZNK5boost9container13stable_vectorISt4pairIiiEvE5beginEv.exit15

bb.f:                                             ; preds = %_ZNK5boost9container13stable_vectorISt4pairIiiEvE5beginEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !9428, !noalias !17860
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !9438, !noalias !17860
  br label %_ZNK5boost9container13stable_vectorISt4pairIiiEvE5beginEv.exit15

_ZNK5boost9container13stable_vectorISt4pairIiiEvE5beginEv.exit15: ; preds = %bb.e, %bb.f
  %storemerge.i14 = phi ptr [ %i.q, %bb.f ], [ %i.n, %bb.e ] ; 2 uses
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !9439
  %i.s = load ptr, ptr %storemerge.i, align 8, !tbaa !9439
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 3
  %.not10 = icmp eq i64 %i.w, %i.d
  br i1 %.not10, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %_ZNK5boost9container13stable_vectorISt4pairIiiEvE5beginEv.exit15
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !9439
  %i.z = load ptr, ptr %storemerge.i14, align 8, !tbaa !9439
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 3
  %.not11 = icmp eq i64 %i.ad, %i.d
  br i1 %.not11, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.g
  %.not3132 = icmp eq ptr %storemerge.i, %i.m
  br i1 %.not3132, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.h
  %.sroa.027.034 = phi ptr [ %i.ao, %bb.h ], [ %storemerge.i, %.preheader ] ; 2 uses
  %.sroa.022.033 = phi ptr [ %i.ar, %bb.h ], [ %storemerge.i14, %.preheader ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.027.034, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.022.033, i64 8
  %i.ag = load <2 x i32>, ptr %i.ae, align 4
  %i.ah = load <2 x i32>, ptr %i.af, align 4
  %i.ai = icmp eq <2 x i32> %i.ag, %i.ah          ; 2 uses
  %i.aj = extractelement <2 x i1> %i.ai, i64 0
  %i.ak = extractelement <2 x i1> %i.ai, i64 1
end_hunk_5
begin_hunk_6_@_ZN5boost9container4test20CheckEqualContainersINS0_5dequeISt4pairIiiEvvEENS0_8flat_mapIiiSt4lessIiES6_EEEEbRKT_RKT0_:bb.a
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !73, !noalias !29751
  %i.t = and i64 %i.b, 127
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t
  br label %_ZNK5boost9container10deque_implISt4pairIiiEvLb0EvE3endEv.exit

_ZNK5boost9container10deque_implISt4pairIiiEvLb0EvE3endEv.exit: ; preds = %bb.b, %.split.i.i.i13
  %.sroa.0.0.i44 = phi ptr [ %i.p, %.split.i.i.i13 ], [ null, %bb.b ] ; 3 uses
  %.sroa.5.0.i43 = phi ptr [ %i.m, %.split.i.i.i13 ], [ null, %bb.b ] ; 3 uses
  %.sroa.5.0.i14 = phi ptr [ %i.r, %.split.i.i.i13 ], [ null, %bb.b ] ; 2 uses
  %.sroa.0.0.i15 = phi ptr [ %i.u, %.split.i.i.i13 ], [ null, %bb.b ] ; 3 uses
  %i.v = load ptr, ptr %1, align 8, !tbaa !17954, !noalias !29758 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNK5boost9container8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEE3endEv.exit, label %.split.i.i.i.i.i.i17

.split.i.i.i.i.i.i17:                             ; preds = %_ZNK5boost9container10deque_implISt4pairIiiEvLb0EvE3endEv.exit
  %i.w = lshr i64 %i.i, 7
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.w ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !73, !noalias !29758
  %i.z = and i64 %i.i, 127
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.z
  %i.ab = lshr i64 %i.g, 7
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ab ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !73, !noalias !29771
  %i.ae = and i64 %i.g, 127
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ae
  br label %_ZNK5boost9container8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEE3endEv.exit

_ZNK5boost9container8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEE3endEv.exit: ; preds = %_ZNK5boost9container10deque_implISt4pairIiiEvLb0EvE3endEv.exit, %.split.i.i.i.i.i.i17
  %.sroa.0.0.i.i.i.i48 = phi ptr [ %i.aa, %.split.i.i.i.i.i.i17 ], [ null, %_ZNK5boost9container10deque_implISt4pairIiiEvLb0EvE3endEv.exit ] ; 3 uses
  %.sroa.5.0.i.i.i.i47 = phi ptr [ %i.x, %.split.i.i.i.i.i.i17 ], [ null, %_ZNK5boost9container10deque_implISt4pairIiiEvLb0EvE3endEv.exit ] ; 3 uses
  %.sroa.5.0.i.i.i.i18 = phi ptr [ %i.ac, %.split.i.i.i.i.i.i17 ], [ null, %_ZNK5boost9container10deque_implISt4pairIiiEvLb0EvE3endEv.exit ] ; 2 uses
  %.sroa.0.0.i.i.i.i19 = phi ptr [ %i.af, %.split.i.i.i.i.i.i17 ], [ null, %_ZNK5boost9container10deque_implISt4pairIiiEvLb0EvE3endEv.exit ] ; 2 uses
  %i.ag = icmp eq ptr %.sroa.0.0.i15, %.sroa.0.0.i44 ; 2 uses
  br i1 %i.ag, label %_ZN5boost9intrusive18iterator_udistanceINS_9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEEEENS_7movelib9iter_sizeIT_E4typeESA_SA_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK5boost9container8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEE3endEv.exit
  %i.ah = ptrtoint ptr %.sroa.5.0.i14 to i64
  %i.ai = ptrtoint ptr %.sroa.5.0.i43 to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = shl nsw i64 %i.aj, 4
  %i.al = load ptr, ptr %.sroa.5.0.i14, align 8, !tbaa !73
  %i.am = ptrtoint ptr %.sroa.0.0.i15 to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = ashr exact i64 %i.ao, 3
  %i.aq = add nsw i64 %i.ap, %i.ak
  %i.ar = load ptr, ptr %.sroa.5.0.i43, align 8, !tbaa !73
  %i.as = ptrtoint ptr %.sroa.0.0.i44 to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 3
  %i.aw = sub i64 %i.aq, %i.av
  br label %_ZN5boost9intrusive18iterator_udistanceINS_9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEEEENS_7movelib9iter_sizeIT_E4typeESA_SA_.exit

_ZN5boost9intrusive18iterator_udistanceINS_9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEEEENS_7movelib9iter_sizeIT_E4typeESA_SA_.exit: ; preds = %_ZNK5boost9container8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEE3endEv.exit, %bb.c
  %.0.i.i.i = phi i64 [ %i.aw, %bb.c ], [ 0, %_ZNK5boost9container8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEE3endEv.exit ]
  %.not10 = icmp eq i64 %.0.i.i.i, %i.e
  br i1 %.not10, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceINS_9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEEEENS_7movelib9iter_sizeIT_E4typeESA_SA_.exit
  %i.ax = icmp eq ptr %.sroa.0.0.i.i.i.i19, %.sroa.0.0.i.i.i.i48
  br i1 %i.ax, label %_ZN5boost9intrusive18iterator_udistanceINS_9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEEEENS_7movelib9iter_sizeIT_E4typeESA_SA_.exit21, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ay = ptrtoint ptr %.sroa.5.0.i.i.i.i18 to i64
  %i.az = ptrtoint ptr %.sroa.5.0.i.i.i.i47 to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = shl nsw i64 %i.ba, 4
  %i.bc = load ptr, ptr %.sroa.5.0.i.i.i.i18, align 8, !tbaa !73
  %i.bd = ptrtoint ptr %.sroa.0.0.i.i.i.i19 to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = ashr exact i64 %i.bf, 3
  %i.bh = add nsw i64 %i.bg, %i.bb
  %i.bi = load ptr, ptr %.sroa.5.0.i.i.i.i47, align 8, !tbaa !73
  %i.bj = ptrtoint ptr %.sroa.0.0.i.i.i.i48 to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = ashr exact i64 %i.bl, 3
  %i.bn = sub i64 %i.bh, %i.bm
  br label %_ZN5boost9intrusive18iterator_udistanceINS_9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEEEENS_7movelib9iter_sizeIT_E4typeESA_SA_.exit21

_ZN5boost9intrusive18iterator_udistanceINS_9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEEEENS_7movelib9iter_sizeIT_E4typeESA_SA_.exit21: ; preds = %bb.d, %bb.e
  %.0.i.i.i20 = phi i64 [ %i.bn, %bb.e ], [ 0, %bb.d ]
  %.not11 = icmp ne i64 %.0.i.i.i20, %i.e         ; 2 uses
  %brmerge = or i1 %.not11, %i.ag
  %not..not11 = xor i1 %.not11, true
  br i1 %brmerge, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5boost9intrusive18iterator_udistanceINS_9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEEEENS_7movelib9iter_sizeIT_E4typeESA_SA_.exit21, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEppEv.exit22
  %.sroa.9.055 = phi ptr [ %.sroa.9.1, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEppEv.exit22 ], [ %.sroa.5.0.i43, %_ZN5boost9intrusive18iterator_udistanceINS_9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEEEENS_7movelib9iter_sizeIT_E4typeESA_SA_.exit21 ] ; 3 uses
  %.sroa.036.054 = phi ptr [ %.sroa.036.1, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEppEv.exit22 ], [ %.sroa.0.0.i44, %_ZN5boost9intrusive18iterator_udistanceINS_9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEEEENS_7movelib9iter_sizeIT_E4typeESA_SA_.exit21 ] ; 2 uses
  %.sroa.8.053 = phi ptr [ %.sroa.8.1, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEppEv.exit22 ], [ %.sroa.5.0.i.i.i.i47, %_ZN5boost9intrusive18iterator_udistanceINS_9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEEEENS_7movelib9iter_sizeIT_E4typeESA_SA_.exit21 ] ; 3 uses
  %.sroa.030.052 = phi ptr [ %.sroa.030.1, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEppEv.exit22 ], [ %.sroa.0.0.i.i.i.i48, %_ZN5boost9intrusive18iterator_udistanceINS_9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEEEENS_7movelib9iter_sizeIT_E4typeESA_SA_.exit21 ] ; 2 uses
  %i.bo = load <2 x i32>, ptr %.sroa.036.054, align 4
  %i.bp = load <2 x i32>, ptr %.sroa.030.052, align 4
  %i.bq = icmp eq <2 x i32> %i.bo, %i.bp          ; 2 uses
  %i.br = extractelement <2 x i1> %i.bq, i64 0
  %i.bs = extractelement <2 x i1> %i.bq, i64 1
  %i.bt = select i1 %i.br, i1 %i.bs, i1 false     ; 3 uses
  br i1 %i.bt, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %.lr.ph
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.036.054, i64 8 ; 2 uses
  %i.bv = load ptr, ptr %.sroa.9.055, align 8, !tbaa !73
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 1024
  %i.bx = icmp eq ptr %i.bu, %i.bw
  br i1 %i.bx, label %bb.g, label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEppEv.exit, !prof !196

bb.g:                                             ; preds = %bb.f
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.9.055, i64 8 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !73
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEppEv.exit

_ZN5boost9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEppEv.exit: ; preds = %bb.f, %bb.g
  %.sroa.036.1 = phi ptr [ %i.bz, %bb.g ], [ %i.bu, %bb.f ] ; 2 uses
  %.sroa.9.1 = phi ptr [ %i.by, %bb.g ], [ %.sroa.9.055, %bb.f ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.030.052, i64 8 ; 2 uses
  %i.cb = load ptr, ptr %.sroa.8.053, align 8, !tbaa !73
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 1024
  %i.cd = icmp eq ptr %i.ca, %i.cc
  br i1 %i.cd, label %bb.h, label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEppEv.exit22, !prof !196

bb.h:                                             ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEppEv.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.8.053, i64 8 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !73
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEppEv.exit22

_ZN5boost9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEppEv.exit22: ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEppEv.exit, %bb.h
  %.sroa.030.1 = phi ptr [ %i.cf, %bb.h ], [ %i.ca, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEppEv.exit ]
  %.sroa.8.1 = phi ptr [ %i.ce, %bb.h ], [ %.sroa.8.053, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEppEv.exit ]
  %.not49 = icmp eq ptr %.sroa.036.1, %.sroa.0.0.i15
  br i1 %.not49, label %.loopexit, label %.lr.ph, !llvm.loop !29784

.loopexit:                                        ; preds = %.lr.ph, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEppEv.exit22, %_ZN5boost9intrusive18iterator_udistanceINS_9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEEEENS_7movelib9iter_sizeIT_E4typeESA_SA_.exit21, %_ZN5boost9intrusive18iterator_udistanceINS_9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEEEENS_7movelib9iter_sizeIT_E4typeESA_SA_.exit, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ false, %_ZN5boost9intrusive18iterator_udistanceINS_9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEEEENS_7movelib9iter_sizeIT_E4typeESA_SA_.exit ], [ %not..not11, %_ZN5boost9intrusive18iterator_udistanceINS_9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEEEENS_7movelib9iter_sizeIT_E4typeESA_SA_.exit21 ], [ %i.bt, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEppEv.exit22 ], [ %i.bt, %.lr.ph ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container4test14random_shuffleINS0_14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEEEEvT_S8_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !18064  ; 2 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !18064  ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %._crit_edge, label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit

_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18076 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !18076 ; 2 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = shl nsw i64 %i.j, 4
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !73
  %i.m = ptrtoint ptr %i.a to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 3
  %i.q = add nsw i64 %i.p, %i.k
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !73
  %i.s = ptrtoint ptr %i.b to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 3
  %i.w = sub i64 %i.q, %i.v                       ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.h, %bb.a, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %.0.in14 = phi i64 [ %i.w, %.lr.ph ], [ %.015, %bb.h ] ; 3 uses
  %.015 = add nsw i64 %.0.in14, -1                ; 4 uses
  %i.z = tail call i32 @rand() #23
  %i.aa = sext i32 %i.z to i64
  %i.ab = srem i64 %i.aa, %.0.in14                ; 3 uses
  %.not = icmp eq i64 %i.ab, %.015
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = load ptr, ptr %0, align 8, !tbaa !18064 ; 3 uses
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !18076 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !73
  %i.af = ptrtoint ptr %i.ac to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 3                 ; 2 uses
  %i.aj = add nsw i64 %i.ai, %.015                ; 4 uses
  %or.cond.i = icmp ult i64 %i.aj, 128
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %.015
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEixEl.exit

bb.e:                                             ; preds = %bb.c
  %i.al = icmp sgt i64 %i.aj, 0
  %i.am = lshr i64 %i.aj, 7                       ; 2 uses
  %i.an = or disjoint i64 %i.am, -144115188075855872
  %i.ao = select i1 %i.al, i64 %i.am, i64 %i.an   ; 2 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !73
  %i.ar = shl nsw i64 %i.ao, 7
  %i.as = sub nsw i64 %i.aj, %i.ar
  %i.at = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.as
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEixEl.exit

_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEixEl.exit: ; preds = %bb.d, %bb.e
  %.0.i9 = phi ptr [ %i.ak, %bb.d ], [ %i.at, %bb.e ] ; 3 uses
  %i.au = add nsw i64 %i.ai, %i.ab                ; 4 uses
  %or.cond.i10 = icmp ult i64 %i.au, 128
  br i1 %or.cond.i10, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEixEl.exit
  %i.av = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ab
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEixEl.exit12

bb.g:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEixEl.exit
  %i.aw = icmp sgt i64 %i.au, 0
  %i.ax = lshr i64 %i.au, 7                       ; 2 uses
  %i.ay = or disjoint i64 %i.ax, -144115188075855872
  %i.az = select i1 %i.aw, i64 %i.ax, i64 %i.ay   ; 2 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !73
  %i.bc = shl nsw i64 %i.az, 7
  %i.bd = sub nsw i64 %i.au, %i.bc
  %i.be = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.bd
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEixEl.exit12

_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEixEl.exit12: ; preds = %bb.f, %bb.g
  %.0.i11 = phi ptr [ %i.av, %bb.f ], [ %i.be, %bb.g ] ; 3 uses
  %i.bf = load i32, ptr %.0.i9, align 4, !tbaa !87
  %i.bg = load i32, ptr %.0.i11, align 4, !tbaa !87
  store i32 %i.bg, ptr %.0.i9, align 4, !tbaa !87
  store i32 %i.bf, ptr %.0.i11, align 4, !tbaa !87
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i9, i64 4 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i11, i64 4 ; 2 uses
  %i.bj = load i32, ptr %i.bh, align 4, !tbaa !87
  %i.bk = load i32, ptr %i.bi, align 4, !tbaa !87
  store i32 %i.bk, ptr %i.bh, align 4, !tbaa !87
  store i32 %i.bj, ptr %i.bi, align 4, !tbaa !87
  br label %bb.h

bb.h:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEixEl.exit12, %bb.b
  %i.bl = icmp samesign ugt i64 %.0.in14, 2
  br i1 %i.bl, label %bb.b, label %._crit_edge, !llvm.loop !29785
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9container4test20CheckEqualContainersINS0_8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEEESA_EEbRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !17965 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !17963 ; 3 uses
  %i.e = sub i64 %i.b, %i.d                       ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !17965 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !17963 ; 3 uses
  %i.j = sub i64 %i.g, %i.i
  %.not = icmp eq i64 %i.e, %i.j
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %0, align 8, !tbaa !17954, !noalias !29786 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNK5boost9container8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEE3endEv.exit, label %.split.i.i.i.i.i.i13

.split.i.i.i.i.i.i13:                             ; preds = %bb.b
  %i.l = lshr i64 %i.d, 7
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !73, !noalias !29786
  %i.o = and i64 %i.d, 127
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.o
  %i.q = lshr i64 %i.b, 7
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.q ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !73, !noalias !29799
  %i.t = and i64 %i.b, 127
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t
  br label %_ZNK5boost9container8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEE3endEv.exit

_ZNK5boost9container8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEE3endEv.exit: ; preds = %bb.b, %.split.i.i.i.i.i.i13
  %.sroa.0.0.i.i.i.i50 = phi ptr [ %i.p, %.split.i.i.i.i.i.i13 ], [ null, %bb.b ] ; 3 uses
  %.sroa.5.0.i.i.i.i49 = phi ptr [ %i.m, %.split.i.i.i.i.i.i13 ], [ null, %bb.b ] ; 3 uses
  %.sroa.5.0.i.i.i.i14 = phi ptr [ %i.r, %.split.i.i.i.i.i.i13 ], [ null, %bb.b ] ; 2 uses
  %.sroa.0.0.i.i.i.i15 = phi ptr [ %i.u, %.split.i.i.i.i.i.i13 ], [ null, %bb.b ] ; 3 uses
  %i.v = load ptr, ptr %1, align 8, !tbaa !17954, !noalias !29812 ; 3 uses
  %.not.i.i.i.i.i.i16 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i16, label %_ZNK5boost9container8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEE3endEv.exit25, label %.split.i.i.i.i.i.i22

.split.i.i.i.i.i.i22:                             ; preds = %_ZNK5boost9container8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEE3endEv.exit
  %i.w = lshr i64 %i.i, 7
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.w ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !73, !noalias !29812
  %i.z = and i64 %i.i, 127
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.z
  %i.ab = lshr i64 %i.g, 7
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ab ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !73, !noalias !29825
  %i.ae = and i64 %i.g, 127
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ae
  br label %_ZNK5boost9container8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEE3endEv.exit25

_ZNK5boost9container8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEE3endEv.exit25: ; preds = %_ZNK5boost9container8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEE3endEv.exit, %.split.i.i.i.i.i.i22
  %.sroa.0.0.i.i.i.i1954 = phi ptr [ %i.aa, %.split.i.i.i.i.i.i22 ], [ null, %_ZNK5boost9container8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEE3endEv.exit ] ; 3 uses
  %.sroa.5.0.i.i.i.i1853 = phi ptr [ %i.x, %.split.i.i.i.i.i.i22 ], [ null, %_ZNK5boost9container8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEE3endEv.exit ] ; 3 uses
  %.sroa.5.0.i.i.i.i23 = phi ptr [ %i.ac, %.split.i.i.i.i.i.i22 ], [ null, %_ZNK5boost9container8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEE3endEv.exit ] ; 2 uses
  %.sroa.0.0.i.i.i.i24 = phi ptr [ %i.af, %.split.i.i.i.i.i.i22 ], [ null, %_ZNK5boost9container8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEE3endEv.exit ] ; 2 uses
  %i.ag = icmp eq ptr %.sroa.0.0.i.i.i.i15, %.sroa.0.0.i.i.i.i50 ; 2 uses
  br i1 %i.ag, label %_ZN5boost9intrusive18iterator_udistanceINS_9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEEEENS_7movelib9iter_sizeIT_E4typeESA_SA_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK5boost9container8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEE3endEv.exit25
  %i.ah = ptrtoint ptr %.sroa.5.0.i.i.i.i14 to i64
  %i.ai = ptrtoint ptr %.sroa.5.0.i.i.i.i49 to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = shl nsw i64 %i.aj, 4
  %i.al = load ptr, ptr %.sroa.5.0.i.i.i.i14, align 8, !tbaa !73
  %i.am = ptrtoint ptr %.sroa.0.0.i.i.i.i15 to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = ashr exact i64 %i.ao, 3
  %i.aq = add nsw i64 %i.ap, %i.ak
  %i.ar = load ptr, ptr %.sroa.5.0.i.i.i.i49, align 8, !tbaa !73
  %i.as = ptrtoint ptr %.sroa.0.0.i.i.i.i50 to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 3
  %i.aw = sub i64 %i.aq, %i.av
  br label %_ZN5boost9intrusive18iterator_udistanceINS_9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEEEENS_7movelib9iter_sizeIT_E4typeESA_SA_.exit

_ZN5boost9intrusive18iterator_udistanceINS_9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEEEENS_7movelib9iter_sizeIT_E4typeESA_SA_.exit: ; preds = %_ZNK5boost9container8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEE3endEv.exit25, %bb.c
  %.0.i.i.i = phi i64 [ %i.aw, %bb.c ], [ 0, %_ZNK5boost9container8flat_mapIiiSt4lessIiENS0_5dequeISt4pairIiiEvvEEE3endEv.exit25 ]
  %.not10 = icmp eq i64 %.0.i.i.i, %i.e
  br i1 %.not10, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceINS_9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEEEENS_7movelib9iter_sizeIT_E4typeESA_SA_.exit
  %i.ax = icmp eq ptr %.sroa.0.0.i.i.i.i24, %.sroa.0.0.i.i.i.i1954
  br i1 %i.ax, label %_ZN5boost9intrusive18iterator_udistanceINS_9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEEEENS_7movelib9iter_sizeIT_E4typeESA_SA_.exit27, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ay = ptrtoint ptr %.sroa.5.0.i.i.i.i23 to i64
  %i.az = ptrtoint ptr %.sroa.5.0.i.i.i.i1853 to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = shl nsw i64 %i.ba, 4
  %i.bc = load ptr, ptr %.sroa.5.0.i.i.i.i23, align 8, !tbaa !73
  %i.bd = ptrtoint ptr %.sroa.0.0.i.i.i.i24 to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = ashr exact i64 %i.bf, 3
  %i.bh = add nsw i64 %i.bg, %i.bb
  %i.bi = load ptr, ptr %.sroa.5.0.i.i.i.i1853, align 8, !tbaa !73
  %i.bj = ptrtoint ptr %.sroa.0.0.i.i.i.i1954 to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = ashr exact i64 %i.bl, 3
  %i.bn = sub i64 %i.bh, %i.bm
  br label %_ZN5boost9intrusive18iterator_udistanceINS_9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEEEENS_7movelib9iter_sizeIT_E4typeESA_SA_.exit27

_ZN5boost9intrusive18iterator_udistanceINS_9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEEEENS_7movelib9iter_sizeIT_E4typeESA_SA_.exit27: ; preds = %bb.d, %bb.e
  %.0.i.i.i26 = phi i64 [ %i.bn, %bb.e ], [ 0, %bb.d ]
  %.not11 = icmp ne i64 %.0.i.i.i26, %i.e         ; 2 uses
  %brmerge = or i1 %.not11, %i.ag
  %not..not11 = xor i1 %.not11, true
  br i1 %brmerge, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5boost9intrusive18iterator_udistanceINS_9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEEEENS_7movelib9iter_sizeIT_E4typeESA_SA_.exit27, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEppEv.exit28
  %.sroa.9.061 = phi ptr [ %.sroa.9.1, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEppEv.exit28 ], [ %.sroa.5.0.i.i.i.i49, %_ZN5boost9intrusive18iterator_udistanceINS_9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEEEENS_7movelib9iter_sizeIT_E4typeESA_SA_.exit27 ] ; 3 uses
  %.sroa.042.060 = phi ptr [ %.sroa.042.1, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEppEv.exit28 ], [ %.sroa.0.0.i.i.i.i50, %_ZN5boost9intrusive18iterator_udistanceINS_9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEEEENS_7movelib9iter_sizeIT_E4typeESA_SA_.exit27 ] ; 2 uses
  %.sroa.8.059 = phi ptr [ %.sroa.8.1, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEppEv.exit28 ], [ %.sroa.5.0.i.i.i.i1853, %_ZN5boost9intrusive18iterator_udistanceINS_9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEEEENS_7movelib9iter_sizeIT_E4typeESA_SA_.exit27 ] ; 3 uses
  %.sroa.036.058 = phi ptr [ %.sroa.036.1, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEppEv.exit28 ], [ %.sroa.0.0.i.i.i.i1954, %_ZN5boost9intrusive18iterator_udistanceINS_9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEEEENS_7movelib9iter_sizeIT_E4typeESA_SA_.exit27 ] ; 2 uses
  %i.bo = load <2 x i32>, ptr %.sroa.042.060, align 4
  %i.bp = load <2 x i32>, ptr %.sroa.036.058, align 4
  %i.bq = icmp eq <2 x i32> %i.bo, %i.bp          ; 2 uses
  %i.br = extractelement <2 x i1> %i.bq, i64 0
  %i.bs = extractelement <2 x i1> %i.bq, i64 1
  %i.bt = select i1 %i.br, i1 %i.bs, i1 false     ; 3 uses
  br i1 %i.bt, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %.lr.ph
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.042.060, i64 8 ; 2 uses
  %i.bv = load ptr, ptr %.sroa.9.061, align 8, !tbaa !73
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 1024
  %i.bx = icmp eq ptr %i.bu, %i.bw
  br i1 %i.bx, label %bb.g, label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEppEv.exit, !prof !196

bb.g:                                             ; preds = %bb.f
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.9.061, i64 8 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !73
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEppEv.exit

_ZN5boost9container14deque_iteratorIPSt4pairIiiELb1ELj0ELj0EmEppEv.exit: ; preds = %bb.f, %bb.g
  %.sroa.042.1 = phi ptr [ %i.bz, %bb.g ], [ %i.bu, %bb.f ] ; 2 uses
end_hunk_6
