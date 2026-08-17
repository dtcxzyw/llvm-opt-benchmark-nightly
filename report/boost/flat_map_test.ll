inline.NumInlined: 38938
inline.NumDeleted: 5992
loop-unroll.NumCompletelyUnrolled: 303
loop-unroll.NumRuntimeUnrolled: 399
loop-unroll.NumUnrolled: 717
begin_hunk_0_@_ZN5boost9container4test32flat_tree_ordered_insertion_testINS0_8flat_mapIiiSt4lessIiEvEENS0_13flat_multimapIiiS5_vEEEEbv:bb.a
  %.not.i.i.i.i.i308 = icmp eq i64 %i.ky, 0
  br i1 %.not.i.i.i.i.i308, label %_ZN5boost9container13flat_multimapIiiSt4lessIiEvED2Ev.exit309, label %bb.cw

bb.cw:                                            ; preds = %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit307
  %i.kz = load ptr, ptr %8, align 8, !tbaa !44
  %i.la = shl i64 %i.ky, 3
  call void @_ZdlPvm(ptr noundef %i.kz, i64 noundef %i.la) #24
  br label %_ZN5boost9container13flat_multimapIiiSt4lessIiEvED2Ev.exit309

_ZN5boost9container13flat_multimapIiiSt4lessIiEvED2Ev.exit309: ; preds = %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit307, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.lb = load ptr, ptr %i.b, align 8, !tbaa !16
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef %i.lb)
          to label %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit310 unwind label %bb.cx

bb.cx:                                            ; preds = %_ZN5boost9container13flat_multimapIiiSt4lessIiEvED2Ev.exit309
  %i.lc = landingpad { ptr, i32 }
          catch ptr null
  %i.ld = extractvalue { ptr, i32 } %i.lc, 0
  call void @__clang_call_terminate(ptr %i.ld) #28
  unreachable

_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit310: ; preds = %_ZN5boost9container13flat_multimapIiiSt4lessIiEvED2Ev.exit309
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.cy

bb.cy:                                            ; preds = %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit310, %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit305, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit301, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit231
  %.8 = phi i1 [ false, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit301 ], [ false, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit305 ], [ false, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit231 ], [ %.791, %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit ], [ false, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit310 ]
  ret i1 %.8

bb.cz:                                            ; preds = %bb.co, %bb.av
  %.pn113.pn = phi { ptr, i32 } [ %.pn113, %bb.av ], [ %.pn103, %bb.co ]
  resume { ptr, i32 } %.pn113.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9container4test28flat_tree_extract_adopt_testINS0_8flat_mapIiiSt4lessIiEvEENS0_13flat_multimapIiiS5_vEEEEbv() local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 3 uses
  %1 = alloca %"union.boost::move_detail::aligned_struct_wrapper.88", align 4 ; 5 uses
  %2 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 3 uses
  %3 = alloca %"union.boost::move_detail::aligned_struct_wrapper.88", align 4 ; 5 uses
  %4 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 3 uses
  %5 = alloca %"union.boost::move_detail::aligned_struct_wrapper.88", align 4 ; 5 uses
  %6 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 3 uses
  %7 = alloca %"union.boost::move_detail::aligned_struct_wrapper.88", align 4 ; 5 uses
  %8 = alloca %"union.boost::move_detail::aligned_struct_wrapper.88", align 4 ; 5 uses
  %9 = alloca %"union.boost::move_detail::aligned_struct_wrapper.88", align 4 ; 5 uses
  %10 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 3 uses
  %11 = alloca %"union.boost::move_detail::aligned_struct_wrapper.88", align 4 ; 5 uses
  %12 = alloca %"union.boost::move_detail::aligned_struct_wrapper.88", align 4 ; 5 uses
  %13 = alloca %"class.boost::container::flat_map", align 8 ; 16 uses
  %14 = alloca %"class.boost::container::flat_map", align 8 ; 15 uses
  %15 = alloca %"struct.std::pair.25", align 8    ; 4 uses
  %16 = alloca %"struct.std::pair.25", align 8    ; 4 uses
  %17 = alloca %"class.boost::container::vector", align 8 ; 15 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %18 = alloca %"class.boost::container::flat_map", align 8 ; 16 uses
  %19 = alloca %"class.boost::container::flat_map", align 8 ; 15 uses
  %20 = alloca %"struct.std::pair.25", align 8    ; 4 uses
  %21 = alloca %"struct.std::pair.25", align 8    ; 4 uses
  %22 = alloca %"class.boost::container::vector", align 8 ; 11 uses
  %23 = alloca %"class.boost::container::flat_multimap", align 8 ; 18 uses
  %24 = alloca %"class.boost::container::flat_multimap", align 8 ; 16 uses
  %25 = alloca %"class.boost::container::vector", align 8 ; 11 uses
  %26 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 2 uses
  %27 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 2 uses
  %28 = alloca %"class.boost::container::flat_multimap", align 8 ; 15 uses
  %29 = alloca %"class.boost::container::flat_multimap", align 8 ; 13 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %30 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 4 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %31 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 4 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %32 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 4 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %33 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 4 uses
  %34 = alloca %"class.boost::container::vector", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %.065406 = phi i64 [ 0, %bb.a ], [ %i.o, %bb.d ] ; 2 uses
  %i.m = trunc i64 %.065406 to i32                ; 3 uses
  %i.n = sub nsw i32 0, %i.m                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24, !noalias !3697
  store i32 %i.m, ptr %12, align 4, !tbaa !21, !noalias !3697
  store i32 %i.n, ptr %i.k, align 4, !tbaa !21, !noalias !3697
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiEvE13insert_uniqueEOS4_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.25") align 8 %15, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 4 dereferenceable(8) %12)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24, !noalias !3697
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24, !noalias !3702
  store i32 %i.m, ptr %11, align 4, !tbaa !21, !noalias !3702
  store i32 %i.n, ptr %i.l, align 4, !tbaa !21, !noalias !3702
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiEvE13insert_uniqueEOS4_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.25") align 8 %16, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 4 dereferenceable(8) %11)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24, !noalias !3702
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  %i.o = add nuw nsw i64 %.065406, 1              ; 2 uses
  %.not = icmp eq i64 %i.o, 100
  br i1 %.not, label %_ZN5boost9container6vectorISt4pairIiiEvvED2Ev.exit, label %bb.b, !llvm.loop !3707

bb.e:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %bb.x

bb.f:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %bb.x

_ZN5boost9container6vectorISt4pairIiiEvvED2Ev.exit: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  %i.r = load ptr, ptr %13, align 8, !tbaa !32, !noalias !3708 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !160, !noalias !3708 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !25, !noalias !3708 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false), !noalias !3708
  store ptr %i.r, ptr %17, align 8, !tbaa !32
  %i.w = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 4 uses
  store i64 %i.t, ptr %i.w, align 8, !tbaa !160
  %i.x = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 5 uses
  store i64 %i.v, ptr %i.x, align 8, !tbaa !25
  %i.y = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !30
  %.not.i = icmp eq i64 %i.t, %i.z
  br i1 %.not.i, label %bb.g, label %.critedgethread-pre-split

bb.g:                                             ; preds = %_ZN5boost9container6vectorISt4pairIiiEvvED2Ev.exit
  %.idx.i = shl nsw i64 %i.t, 3
  %i.aa = getelementptr inbounds i8, ptr %i.r, i64 %.idx.i
  %.not2526.i = icmp eq i64 %i.t, 0
  br i1 %.not2526.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairIiiEvvEENS0_8flat_mapIiiSt4lessIiEvEEEEbRKT_RKT0_.exit.preheader, label %.lr.ph.preheader.i

_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairIiiEvvEENS0_8flat_mapIiiSt4lessIiEvEEEEbRKT_RKT0_.exit.preheader: ; preds = %bb.h, %bb.g
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairIiiEvvEENS0_8flat_mapIiiSt4lessIiEvEEEEbRKT_RKT0_.exit

.lr.ph.preheader.i:                               ; preds = %bb.g
  %i.ab = load ptr, ptr %14, align 8, !tbaa !32, !noalias !3711
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
  br i1 %.not25.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairIiiEvvEENS0_8flat_mapIiiSt4lessIiEvEEEEbRKT_RKT0_.exit.preheader, label %.lr.ph.i, !llvm.loop !3720

bb.i:                                             ; preds = %_ZN5boost9container4test14random_shuffleINS0_12vec_iteratorIPSt4pairIiiELb0EEEEEvT_S8_.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.j:                                             ; preds = %_ZN5boost9container6vectorISt4pairIiiEvvE12emplace_backIJiiEEERS3_DpOT_.exit
  %i.al = load ptr, ptr %17, align 8, !tbaa !32, !noalias !3721 ; 2 uses
  %i.am = load i64, ptr %i.w, align 8, !tbaa !30, !noalias !3724 ; 2 uses
  %i.an = icmp sgt i64 %i.am, 1
  br i1 %i.an, label %.lr.ph.i100, label %_ZN5boost9container4test14random_shuffleINS0_12vec_iteratorIPSt4pairIiiELb0EEEEEvT_S8_.exit

.lr.ph.i100:                                      ; preds = %bb.j, %bb.l
  %.0.in10.i = phi i64 [ %.011.i, %bb.l ], [ %i.am, %bb.j ] ; 3 uses
  %.011.i = add nsw i64 %.0.in10.i, -1            ; 3 uses
  %i.ao = call i32 @rand() #24
  %i.ap = sext i32 %i.ao to i64
  %i.aq = srem i64 %i.ap, %.0.in10.i              ; 2 uses
  %.not.i101 = icmp eq i64 %i.aq, %.011.i
  br i1 %.not.i101, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i100
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.al, i64 %.011.i ; 2 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.aq ; 2 uses
  %i.at = load <2 x i32>, ptr %i.ar, align 4, !tbaa !21
  %i.au = load <2 x i32>, ptr %i.as, align 4, !tbaa !21
  store <2 x i32> %i.au, ptr %i.ar, align 4, !tbaa !21
  store <2 x i32> %i.at, ptr %i.as, align 4, !tbaa !21
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i100
  %i.av = icmp samesign ugt i64 %.0.in10.i, 2
  br i1 %i.av, label %.lr.ph.i100, label %_ZN5boost9container4test14random_shuffleINS0_12vec_iteratorIPSt4pairIiiELb0EEEEEvT_S8_.exit, !llvm.loop !3727

_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairIiiEvvEENS0_8flat_mapIiiSt4lessIiEvEEEEbRKT_RKT0_.exit: ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairIiiEvvEENS0_8flat_mapIiiSt4lessIiEvEEEEbRKT_RKT0_.exit.preheader, %_ZN5boost9container6vectorISt4pairIiiEvvE12emplace_backIJiiEEERS3_DpOT_.exit
  %.047407 = phi i64 [ %i.bh, %_ZN5boost9container6vectorISt4pairIiiEvvE12emplace_backIJiiEEERS3_DpOT_.exit ], [ 0, %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairIiiEvvEENS0_8flat_mapIiiSt4lessIiEvEEEEbRKT_RKT0_.exit.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.aw = trunc i64 %.047407 to i32               ; 3 uses
  store i32 %i.aw, ptr %i.a, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.ax = sub nsw i32 0, %i.aw
  store i32 %i.ax, ptr %i.b, align 4, !tbaa !21
  %i.ay = load i64, ptr %i.w, align 8, !tbaa !30  ; 4 uses
  %i.az = load i64, ptr %i.x, align 8, !tbaa !25
  %.not.i102 = icmp eq i64 %i.ay, %i.az
  br i1 %.not.i102, label %bb.n, label %bb.m, !prof !306

bb.m:                                             ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairIiiEvvEENS0_8flat_mapIiiSt4lessIiEvEEEEbRKT_RKT0_.exit
  %i.ba = load ptr, ptr %17, align 8, !tbaa !32, !nonnull !400, !noundef !400
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.ay ; 2 uses
  store i32 %i.aw, ptr %i.bb, align 4, !tbaa !21
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bd = load i32, ptr %i.b, align 4, !tbaa !21
  store i32 %i.bd, ptr %i.bc, align 4, !tbaa !21
  %i.be = add i64 %i.ay, 1
  store i64 %i.be, ptr %i.w, align 8, !tbaa !30
  br label %_ZN5boost9container6vectorISt4pairIiiEvvE12emplace_backIJiiEEERS3_DpOT_.exit

bb.n:                                             ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairIiiEvvEENS0_8flat_mapIiiSt4lessIiEvEEEEbRKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.bf = load ptr, ptr %17, align 8, !tbaa !32
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.ay
  invoke void @_ZN5boost9container6vectorISt4pairIiiEvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS3_EEJiiEEEEENS0_12vec_iteratorIPS3_Lb0EEESC_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.27") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef %i.bg, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.b, ptr nonnull align 4 dereferenceable(4) %i.a)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %_ZN5boost9container6vectorISt4pairIiiEvvE12emplace_backIJiiEEERS3_DpOT_.exit

_ZN5boost9container6vectorISt4pairIiiEvvE12emplace_backIJiiEEERS3_DpOT_.exit: ; preds = %.noexc, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.bh = add nuw nsw i64 %.047407, 1             ; 2 uses
  %.not71 = icmp eq i64 %i.bh, 100
  br i1 %.not71, label %bb.j, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairIiiEvvEENS0_8flat_mapIiiSt4lessIiEvEEEEbRKT_RKT0_.exit, !llvm.loop !3728

bb.o:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.v

_ZN5boost9container4test14random_shuffleINS0_12vec_iteratorIPSt4pairIiiELb0EEEEEvT_S8_.exit: ; preds = %bb.l, %bb.j
  invoke void @_ZN5boost9container3dtl31flat_tree_adopt_sequence_uniqueINS0_6vectorISt4pairIiiEvvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_OSD_T0_NS_11move_detail5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %17)
          to label %_ZN5boost9container8flat_mapIiiSt4lessIiEvE14adopt_sequenceEONS0_6vectorISt4pairIiiEvvEE.exit unwind label %bb.i

_ZN5boost9container8flat_mapIiiSt4lessIiEvE14adopt_sequenceEONS0_6vectorISt4pairIiiEvvEE.exit: ; preds = %_ZN5boost9container4test14random_shuffleINS0_12vec_iteratorIPSt4pairIiiELb0EEEEEvT_S8_.exit
  %i.bj = load i64, ptr %i.s, align 8, !tbaa !30  ; 3 uses
  %i.bk = load i64, ptr %i.y, align 8, !tbaa !30
  %.not.i104 = icmp eq i64 %i.bj, %i.bk
  br i1 %.not.i104, label %bb.p, label %.critedgethread-pre-splitthread-pre-split

bb.p:                                             ; preds = %_ZN5boost9container8flat_mapIiiSt4lessIiEvE14adopt_sequenceEONS0_6vectorISt4pairIiiEvvEE.exit
  %i.bl = load ptr, ptr %13, align 8, !tbaa !32, !noalias !3729 ; 3 uses
  %.idx.i106 = shl nsw i64 %i.bj, 3
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 %.idx.i106 ; 2 uses
  %.not2526.i107 = icmp eq i64 %i.bj, 0
  br i1 %.not2526.i107, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairIiiEvvEES6_EEbRKT_RKT0_.exit, label %.lr.ph.preheader.i108

.lr.ph.preheader.i108:                            ; preds = %bb.p
  %i.bn = load ptr, ptr %14, align 8, !tbaa !32, !noalias !3738 ; 2 uses
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
  br i1 %.not25.i112, label %.lr.ph.i118, label %.lr.ph.i109, !llvm.loop !3747

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
  br i1 %or.cond.not, label %.lr.ph.i118, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairIiiEvvEES6_EEbRKT_RKT0_.exit, !llvm.loop !3748

_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairIiiEvvEES6_EEbRKT_RKT0_.exit: ; preds = %.lr.ph.i118, %bb.p
  %.2.i114 = phi i1 [ true, %bb.p ], [ %i.cb, %.lr.ph.i118 ]
  %i.ce = load i64, ptr %i.x, align 8, !tbaa !25  ; 2 uses
  %.not.i.i122 = icmp eq i64 %i.ce, 0
  br i1 %.not.i.i122, label %_ZN5boost9container6vectorISt4pairIiiEvvED2Ev.exit123, label %bb.r

bb.r:                                             ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairIiiEvvEES6_EEbRKT_RKT0_.exit
  %i.cf = load ptr, ptr %17, align 8, !tbaa !44
  %i.cg = shl i64 %i.ce, 3
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cg) #24
  br label %_ZN5boost9container6vectorISt4pairIiiEvvED2Ev.exit123

_ZN5boost9container6vectorISt4pairIiiEvvED2Ev.exit123: ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairIiiEvvEES6_EEbRKT_RKT0_.exit, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  %i.ch = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !25 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ci, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container8flat_mapIiiSt4lessIiEvED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZN5boost9container6vectorISt4pairIiiEvvED2Ev.exit123
  %i.cj = load ptr, ptr %14, align 8, !tbaa !44
  %i.ck = shl i64 %i.ci, 3
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.ck) #24
  br label %_ZN5boost9container8flat_mapIiiSt4lessIiEvED2Ev.exit

_ZN5boost9container8flat_mapIiiSt4lessIiEvED2Ev.exit: ; preds = %_ZN5boost9container6vectorISt4pairIiiEvvED2Ev.exit123, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  %i.cl = load i64, ptr %i.u, align 8, !tbaa !25  ; 2 uses
  %.not.i.i.i.i.i124 = icmp eq i64 %i.cl, 0
  br i1 %.not.i.i.i.i.i124, label %_ZN5boost9container8flat_mapIiiSt4lessIiEvED2Ev.exit125, label %bb.t

bb.t:                                             ; preds = %_ZN5boost9container8flat_mapIiiSt4lessIiEvED2Ev.exit
  %i.cm = load ptr, ptr %13, align 8, !tbaa !44
  %i.cn = shl i64 %i.cl, 3
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cn) #24
  br label %_ZN5boost9container8flat_mapIiiSt4lessIiEvED2Ev.exit125

_ZN5boost9container8flat_mapIiiSt4lessIiEvED2Ev.exit125: ; preds = %_ZN5boost9container8flat_mapIiiSt4lessIiEvED2Ev.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br i1 %.2.i114, label %bb.u, label %bb.di

bb.u:                                             ; preds = %_ZN5boost9container8flat_mapIiiSt4lessIiEvED2Ev.exit125
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.cp = getelementptr inbounds nuw i8, ptr %8, i64 4
  br label %bb.aa

bb.v:                                             ; preds = %bb.o, %bb.i
  %.pn85 = phi { ptr, i32 } [ %i.bi, %bb.o ], [ %i.ak, %bb.i ]
  %i.cq = load i64, ptr %i.x, align 8, !tbaa !25  ; 2 uses
  %.not.i.i126 = icmp eq i64 %i.cq, 0
  br i1 %.not.i.i126, label %_ZN5boost9container6vectorISt4pairIiiEvvED2Ev.exit127, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cr = load ptr, ptr %17, align 8, !tbaa !44
  %i.cs = shl i64 %i.cq, 3
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cs) #24
  br label %_ZN5boost9container6vectorISt4pairIiiEvvED2Ev.exit127

_ZN5boost9container6vectorISt4pairIiiEvvED2Ev.exit127: ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  br label %bb.x

bb.x:                                             ; preds = %bb.e, %bb.f, %_ZN5boost9container6vectorISt4pairIiiEvvED2Ev.exit127
  %.pn88.pn = phi { ptr, i32 } [ %.pn85, %_ZN5boost9container6vectorISt4pairIiiEvvED2Ev.exit127 ], [ %i.q, %bb.f ], [ %i.p, %bb.e ]
  %i.ct = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !25 ; 2 uses
  %.not.i.i.i.i.i128 = icmp eq i64 %i.cu, 0
  br i1 %.not.i.i.i.i.i128, label %_ZN5boost9container8flat_mapIiiSt4lessIiEvED2Ev.exit129, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cv = load ptr, ptr %14, align 8, !tbaa !44
  %i.cw = shl i64 %i.cu, 3
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cw) #24
  br label %_ZN5boost9container8flat_mapIiiSt4lessIiEvED2Ev.exit129

_ZN5boost9container8flat_mapIiiSt4lessIiEvED2Ev.exit129: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  %i.cx = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !25 ; 2 uses
  %.not.i.i.i.i.i130 = icmp eq i64 %i.cy, 0
  br i1 %.not.i.i.i.i.i130, label %_ZN5boost9container8flat_mapIiiSt4lessIiEvED2Ev.exit131, label %bb.z

bb.z:                                             ; preds = %_ZN5boost9container8flat_mapIiiSt4lessIiEvED2Ev.exit129
end_hunk_0
begin_hunk_1_@_ZN5boost7movelib17op_buffered_mergeINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEENS0_7move_opENS0_10range_xbufIS6_mSF_EEEEvT_SI_SI_T0_T1_RT2_:bb.a
  %i.de = load i32, ptr %.015.i, align 4, !tbaa !21 ; 2 uses
  %i.df = icmp slt i32 %i.dd, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.041.0, i64 4
  br i1 %i.df, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.dd, ptr %.sroa.041.0, align 4, !tbaa !274
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.040.0, i64 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i32 %i.de, ptr %.sroa.041.0, align 4, !tbaa !274
  %i.di = getelementptr inbounds nuw i8, ptr %.015.i, i64 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.040.0.pn = phi ptr [ %.sroa.040.0, %bb.f ], [ %.015.i, %bb.g ]
  %.sroa.040.1 = phi ptr [ %i.dh, %bb.f ], [ %.sroa.040.0, %bb.g ]
  %.1.i8 = phi ptr [ %.015.i, %bb.f ], [ %i.di, %bb.g ] ; 2 uses
  %.sink.in = getelementptr inbounds nuw i8, ptr %.sroa.040.0.pn, i64 4
  %.sink = load i32, ptr %.sink.in, align 4, !tbaa !21
  store i32 %.sink, ptr %i.dg, align 4, !tbaa !276
  %i.dj = getelementptr i8, ptr %.sroa.041.0, i64 8
  %.not.i9 = icmp eq ptr %.1.i8, %.lcssa109
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i9, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i7, !llvm.loop !6234

.lr.ph.i13:                                       ; preds = %bb.d, %.lr.ph.i13
  %i.dk = phi ptr [ %i.dr, %.lr.ph.i13 ], [ %i.b, %bb.d ] ; 2 uses
  %.010.i14 = phi i64 [ %.1.i16, %.lr.ph.i13 ], [ %i.n, %bb.d ] ; 2 uses
  %i.dl = lshr i64 %.010.i14, 1                   ; 3 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.dl ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !21, !noalias !6973
  %i.do = icmp slt i32 %i.dn, %i.f                ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %.neg.i15 = xor i64 %i.dl, -1
  %i.dq = add i64 %.010.i14, %.neg.i15
  %i.dr = select i1 %i.do, ptr %i.dp, ptr %i.dk   ; 5 uses
  %.1.i16 = select i1 %i.do, i64 %i.dq, i64 %i.dl ; 2 uses
  %.not.i17 = icmp eq i64 %.1.i16, 0
  br i1 %.not.i17, label %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit, label %.lr.ph.i13, !llvm.loop !6186

_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit: ; preds = %.lr.ph.i13
  %i.ds = ptrtoaddr ptr %i.dr to i64              ; 2 uses
  store ptr %i.dr, ptr %2, align 8, !tbaa !391
  %i.dt = load ptr, ptr %1, align 8, !tbaa !44    ; 9 uses
  %i.du = ptrtoaddr ptr %i.dt to i64              ; 2 uses
  %i.dv = load ptr, ptr %3, align 8, !tbaa !2039  ; 10 uses
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
  %wide.vec173 = load <4 x i32>, ptr %next.gep169, align 4, !tbaa !21, !alias.scope !6976
  %wide.vec176 = load <4 x i32>, ptr %next.gep170, align 4, !tbaa !21, !alias.scope !6976
  store <4 x i32> %wide.vec173, ptr %next.gep171, align 4, !tbaa !21, !alias.scope !6979, !noalias !6976
  store <4 x i32> %wide.vec176, ptr %next.gep172, align 4, !tbaa !21, !alias.scope !6979, !noalias !6976
  %index.next181 = add nuw i64 %index168, 4       ; 2 uses
  %i.eg = icmp eq i64 %index.next181, %n.vec166
  br i1 %i.eg, label %middle.block182, label %vector.body167, !llvm.loop !6981

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
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !21
  store i32 %i.ei, ptr %.04.i.i.i20, align 4, !tbaa !274
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !21
  %i.el = getelementptr inbounds nuw i8, ptr %.04.i.i.i20, i64 4
  store i32 %i.ek, ptr %i.el, align 4, !tbaa !276
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 8 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.04.i.i.i20, i64 8 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.em, %i.dr
  br i1 %.not.i.i.i21, label %_ZN5boost7movelib10range_xbufIPSt4pairIiiEmNS0_7move_opEE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit23, label %.lr.ph.i.i.i19, !llvm.loop !6982

_ZN5boost7movelib10range_xbufIPSt4pairIiiEmNS0_7move_opEE11move_assignINS_9container12vec_iteratorIS4_Lb0EEEEEvT_m.exit23: ; preds = %.lr.ph.i.i.i19, %middle.block182
  %.lcssa = phi ptr [ %i.ed, %middle.block182 ], [ %i.en, %.lr.ph.i.i.i19 ] ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.lcssa, ptr %i.eo, align 8, !tbaa !2041
  %i.ep = load ptr, ptr %0, align 8, !tbaa !44
  %i.eq = load ptr, ptr %1, align 8, !tbaa !44
  %i.er = load ptr, ptr %2, align 8, !tbaa !44
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
  %i.ew = load i32, ptr %i.eu, align 4, !tbaa !21, !noalias !6983
  store i32 %i.ew, ptr %i.ev, align 4, !tbaa !274, !noalias !6983
  %i.ex = getelementptr inbounds i8, ptr %.05.i.i.i28, i64 -4
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !21, !noalias !6983
  %i.ez = getelementptr inbounds i8, ptr %i.et, i64 -4
  store i32 %i.ey, ptr %i.ez, align 4, !tbaa !276, !noalias !6983
  %.not.i.i.i29 = icmp eq ptr %i.dv, %i.eu
  br i1 %.not.i.i.i29, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i.i.i27, !llvm.loop !6259

bb.i:                                             ; preds = %.lr.ph.i24
  %i.fa = getelementptr inbounds i8, ptr %.016.i, i64 -8 ; 2 uses
  %i.fb = getelementptr inbounds i8, ptr %.sroa.032.0, i64 -8 ; 2 uses
  %i.fc = load i32, ptr %i.fa, align 4, !tbaa !21 ; 2 uses
  %i.fd = load i32, ptr %i.fb, align 4, !tbaa !21 ; 2 uses
  %i.fe = icmp slt i32 %i.fc, %i.fd               ; 3 uses
  %i.ff = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -8 ; 2 uses
  %. = tail call i32 @llvm.smax.i32(i32 %i.fc, i32 %i.fd)
  %..sroa.032.0 = select i1 %i.fe, ptr %i.fb, ptr %.sroa.032.0
  %.sroa.032.0..016.i = select i1 %i.fe, ptr %.sroa.032.0, ptr %.016.i
  %.016.i. = select i1 %i.fe, ptr %.016.i, ptr %i.fa ; 2 uses
  store i32 %., ptr %i.ff, align 4, !tbaa !274
  %.sink.in.i = getelementptr inbounds i8, ptr %.sroa.032.0..016.i, i64 -4
  %.sink.i = load i32, ptr %.sink.in.i, align 4, !tbaa !21
  %i.fg = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -4
  store i32 %.sink.i, ptr %i.fg, align 4, !tbaa !276
  %.not.i26 = icmp eq ptr %i.dv, %.016.i.
  br i1 %.not.i26, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit, label %.lr.ph.i24, !llvm.loop !6260

_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit.sink.split: ; preds = %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit, %_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit
  %.sink99 = phi ptr [ %i.z, %_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit ], [ %i.dv, %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairIiiELb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_RKT0_T1_.exit ]
  %i.fh = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sink99, ptr %i.fh, align 8, !tbaa !2041
  br label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit

_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit: ; preds = %bb.h, %.lr.ph.i.i.i10.prol.loopexit, %.lr.ph.i.i.i10, %bb.i, %.lr.ph.i.i.i27, %middle.block151, %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_NS2_12vec_iteratorISC_Lb0EEENS0_7move_opEEEvT0_SG_T1_SH_SH_T_T2_.exit.sink.split, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container4test14random_shuffleINS0_12vec_iteratorIPSt4pairIiiELb0EEEEEvT_S8_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !391
  %i.b = load ptr, ptr %0, align 8, !tbaa !391
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
  %i.h = tail call i32 @rand() #24
  %i.i = sext i32 %i.h to i64
  %i.j = srem i64 %i.i, %.0.in10                  ; 2 uses
  %.not = icmp eq i64 %i.j, %.011
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = load ptr, ptr %0, align 8, !tbaa !391    ; 2 uses
  %i.l = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.011 ; 2 uses
  %i.m = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.j ; 2 uses
  %i.n = load <2 x i32>, ptr %i.l, align 4, !tbaa !21
  %i.o = load <2 x i32>, ptr %i.m, align 4, !tbaa !21
  store <2 x i32> %i.o, ptr %i.l, align 4, !tbaa !21
  store <2 x i32> %i.n, ptr %i.m, align 4, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.p = icmp samesign ugt i64 %.0.in10, 2
  br i1 %i.p, label %.lr.ph, label %._crit_edge, !llvm.loop !3727
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container8flat_mapIiiSt4lessIiEvE14adopt_sequenceENS0_22ordered_unique_range_tEONS0_6vectorISt4pairIiiEvvEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i.i = icmp eq ptr %1, %0
  br i1 %.not.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiEvE21adopt_sequence_uniqueENS0_22ordered_unique_range_tEONS0_6vectorIS4_vvEE.exit, label %bb.b, !prof !306

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.a, align 8, !tbaa !30
  %i.b = load ptr, ptr %0, align 8, !tbaa !5749   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5boost9container6vectorISt4pairIiiEvvE16priv_move_assignIvEEvONS1_IS3_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS3_S6_E4typeELj0EEENS9_12is_differentISF_NS0_13new_allocatorIS3_EEEENS9_5bool_ILb0EEESM_E4typeE.exit.i.i, label %bb.c, !prof !306

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !5750
  %i.e = shl i64 %i.d, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.e) #24
  br label %_ZN5boost9container6vectorISt4pairIiiEvvE16priv_move_assignIvEEvONS1_IS3_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS3_S6_E4typeELj0EEENS9_12is_differentISF_NS0_13new_allocatorIS3_EEEENS9_5bool_ILb0EEESM_E4typeE.exit.i.i

_ZN5boost9container6vectorISt4pairIiiEvvE16priv_move_assignIvEEvONS1_IS3_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS3_S6_E4typeELj0EEENS9_12is_differentISF_NS0_13new_allocatorIS3_EEEENS9_5bool_ILb0EEESM_E4typeE.exit.i.i: ; preds = %bb.c, %bb.b
  %i.f = load ptr, ptr %1, align 8, !tbaa !32
  store ptr %i.f, ptr %0, align 8, !tbaa !32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load <2 x i64>, ptr %i.g, align 8, !tbaa !1562
  store <2 x i64> %i.h, ptr %i.a, align 8, !tbaa !1562
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiEvE21adopt_sequence_uniqueENS0_22ordered_unique_range_tEONS0_6vectorIS4_vvEE.exit

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiEvE21adopt_sequence_uniqueENS0_22ordered_unique_range_tEONS0_6vectorIS4_vvEE.exit: ; preds = %bb.a, %_ZN5boost9container6vectorISt4pairIiiEvvE16priv_move_assignIvEEvONS1_IS3_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS3_S6_E4typeELj0EEENS9_12is_differentISF_NS0_13new_allocatorIS3_EEEENS9_5bool_ILb0EEESM_E4typeE.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container13flat_multimapIiiSt4lessIiEvE7emplaceIJiiEEENS0_12vec_iteratorIPSt4pairIiiELb0EEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.27") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 4 uses
  %5 = alloca %"union.boost::move_detail::aligned_struct_wrapper.88", align 4 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6988)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !6988
  %i.a = load i32, ptr %2, align 4, !tbaa !21, !noalias !6988 ; 4 uses
  store i32 %i.a, ptr %5, align 4, !tbaa !21, !noalias !6988
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.c = load i32, ptr %3, align 4, !tbaa !21, !noalias !6988 ; 3 uses
  store i32 %i.c, ptr %i.b, align 4, !tbaa !21, !noalias !6988
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6991)
  %i.d = load ptr, ptr %1, align 8, !tbaa !32, !noalias !6994 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !30, !noalias !7001 ; 6 uses
  %.not12.i.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not12.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiEvE11upper_boundERKi.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %i.g = phi ptr [ %i.n, %.lr.ph.i.i.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %.013.i.i.i.i = phi i64 [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.f, %bb.a ] ; 2 uses
  %i.h = lshr i64 %.013.i.i.i.i, 1                ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !21, !noalias !7006
  %i.k = icmp slt i32 %i.a, %i.j                  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.neg.i.i.i.i = xor i64 %i.h, -1
  %i.m = add i64 %.013.i.i.i.i, %.neg.i.i.i.i
  %i.n = select i1 %i.k, ptr %i.g, ptr %i.l       ; 2 uses
  %.1.i.i.i.i = select i1 %i.k, i64 %i.h, i64 %i.m ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.1.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiEvE11upper_boundERKi.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !299

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiEvE11upper_boundERKi.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.a
  %i.o = phi ptr [ %i.d, %bb.a ], [ %i.n, %.lr.ph.i.i.i.i ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !7009
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !25, !noalias !7010
  %.not.i.i3.i.i = icmp eq i64 %i.q, %i.f
  br i1 %.not.i.i3.i.i, label %.noexc.i, label %bb.b, !prof !306

bb.b:                                             ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiEvE11upper_boundERKi.exit.i.i
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.f ; 5 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, %i.o
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  store i32 %i.a, ptr %i.o, align 4, !tbaa !21, !noalias !7010
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 %i.c, ptr %i.s, align 4, !tbaa !21, !noalias !7010
  %i.t = add i64 %i.f, 1
  store i64 %i.t, ptr %i.e, align 8, !tbaa !30, !noalias !7010
  br label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiEvE13emplace_equalIJiiEEENS0_12vec_iteratorIPS4_Lb0EEEDpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.u = ptrtoint ptr %i.o to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.v, %i.u
  %i.x = ashr exact i64 %i.w, 3                   ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.r, i64 -8 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %i.z = load <2 x i32>, ptr %i.y, align 4, !tbaa !21, !noalias !7010
  store <2 x i32> %i.z, ptr %i.r, align 4, !tbaa !21, !noalias !7010
  %i.aa = add i64 %i.f, 1
  store i64 %i.aa, ptr %i.e, align 8, !tbaa !30, !noalias !7010
  %i.ab = add nsw i64 %i.x, -1                    ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i, label %bb.e, !prof !306

bb.e:                                             ; preds = %bb.d
  %i.ac = sub nsw i64 1, %i.x                     ; 2 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.ac
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.ac
  %i.af = shl i64 %i.ab, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr nonnull align 1 %i.ae, i64 %i.af, i1 false), !noalias !7010
  br label %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i

_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i: ; preds = %bb.e, %bb.d
  store i32 %i.a, ptr %i.o, align 4, !tbaa !274, !noalias !7010
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 %i.c, ptr %i.ag, align 4, !tbaa !276, !noalias !7010
  br label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiEvE13emplace_equalIJiiEEENS0_12vec_iteratorIPS4_Lb0EEEDpOT_.exit

.noexc.i:                                         ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiEvE11upper_boundERKi.exit.i.i
  call void @_ZN5boost9container6vectorISt4pairIiiEvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS3_EEJS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESC_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.27") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.o, i64 noundef 1, ptr nonnull align 4 dereferenceable(8) %5), !noalias !6988
  %.pre.i.i = load ptr, ptr %4, align 8, !tbaa !44, !noalias !7009
  br label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiEvE13emplace_equalIJiiEEENS0_12vec_iteratorIPS4_Lb0EEEDpOT_.exit

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiEvE13emplace_equalIJiiEEENS0_12vec_iteratorIPS4_Lb0EEEDpOT_.exit: ; preds = %bb.c, %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i, %.noexc.i
  %i.ah = phi ptr [ %.pre.i.i, %.noexc.i ], [ %i.o, %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i ], [ %i.o, %bb.c ]
  store ptr %i.ah, ptr %0, align 8, !tbaa !391, !alias.scope !7009
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !7009
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !6988
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container13flat_multimapIiiSt4lessIiEvE14adopt_sequenceEONS0_6vectorISt4pairIiiEvvEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::movelib::adaptive_xbuf", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.a, align 8, !tbaa !30
  %i.b = load ptr, ptr %1, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @_ZN5boost7movelib15detail_adaptive18adaptive_sort_implIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_NS0_9iter_sizeISG_E4typeET0_RT1_(ptr noundef %i.b, i64 noundef %i.d, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %.not.i.i.i = icmp eq ptr %1, %0
  br i1 %.not.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiEvE20adopt_sequence_equalEONS0_6vectorIS4_vvEE.exit, label %bb.b, !prof !306

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !tbaa !30
  %i.e = load ptr, ptr %0, align 8, !tbaa !5749   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container6vectorISt4pairIiiEvvE16priv_move_assignIvEEvONS1_IS3_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS3_S6_E4typeELj0EEENS9_12is_differentISF_NS0_13new_allocatorIS3_EEEENS9_5bool_ILb0EEESM_E4typeE.exit.i.i.i, label %bb.c, !prof !306

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !5750
  %i.h = shl i64 %i.g, 3
  call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.h) #24
  br label %_ZN5boost9container6vectorISt4pairIiiEvvE16priv_move_assignIvEEvONS1_IS3_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS3_S6_E4typeELj0EEENS9_12is_differentISF_NS0_13new_allocatorIS3_EEEENS9_5bool_ILb0EEESM_E4typeE.exit.i.i.i

_ZN5boost9container6vectorISt4pairIiiEvvE16priv_move_assignIvEEvONS1_IS3_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS3_S6_E4typeELj0EEENS9_12is_differentISF_NS0_13new_allocatorIS3_EEEENS9_5bool_ILb0EEESM_E4typeE.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.i = load ptr, ptr %1, align 8, !tbaa !32
  store ptr %i.i, ptr %0, align 8, !tbaa !32
  %i.j = load <2 x i64>, ptr %i.c, align 8, !tbaa !1562
  store <2 x i64> %i.j, ptr %i.a, align 8, !tbaa !1562
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiEvE20adopt_sequence_equalEONS0_6vectorIS4_vvEE.exit

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiEvE20adopt_sequence_equalEONS0_6vectorIS4_vvEE.exit: ; preds = %bb.a, %_ZN5boost9container6vectorISt4pairIiiEvvE16priv_move_assignIvEEvONS1_IS3_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS3_S6_E4typeELj0EEENS9_12is_differentISF_NS0_13new_allocatorIS3_EEEENS9_5bool_ILb0EEESM_E4typeE.exit.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container13flat_multimapIiiSt4lessIiEvE14adopt_sequenceENS0_15ordered_range_tEONS0_6vectorISt4pairIiiEvvEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i.i = icmp eq ptr %1, %0
  br i1 %.not.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiEvE20adopt_sequence_equalENS0_15ordered_range_tEONS0_6vectorIS4_vvEE.exit, label %bb.b, !prof !306

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.a, align 8, !tbaa !30
  %i.b = load ptr, ptr %0, align 8, !tbaa !5749   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5boost9container6vectorISt4pairIiiEvvE16priv_move_assignIvEEvONS1_IS3_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS3_S6_E4typeELj0EEENS9_12is_differentISF_NS0_13new_allocatorIS3_EEEENS9_5bool_ILb0EEESM_E4typeE.exit.i.i, label %bb.c, !prof !306

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !5750
end_hunk_1
begin_hunk_2_@_ZN5boost9container4test32flat_tree_ordered_insertion_testINS0_8flat_mapIiiSt4lessIiESaISt4pairIiiEEEENS0_13flat_multimapIiiS5_S8_EEEEbv:bb.a
  %.not.i.i.i.i.i308 = icmp eq i64 %i.ky, 0
  br i1 %.not.i.i.i.i.i308, label %_ZN5boost9container13flat_multimapIiiSt4lessIiESaISt4pairIiiEEED2Ev.exit309, label %bb.cw

bb.cw:                                            ; preds = %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit307
  %i.kz = load ptr, ptr %8, align 8, !tbaa !44
  %i.la = shl i64 %i.ky, 3
  call void @_ZdlPvm(ptr noundef %i.kz, i64 noundef %i.la) #27
  br label %_ZN5boost9container13flat_multimapIiiSt4lessIiESaISt4pairIiiEEED2Ev.exit309

_ZN5boost9container13flat_multimapIiiSt4lessIiESaISt4pairIiiEEED2Ev.exit309: ; preds = %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit307, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.lb = load ptr, ptr %i.b, align 8, !tbaa !16
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef %i.lb)
          to label %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit310 unwind label %bb.cx

bb.cx:                                            ; preds = %_ZN5boost9container13flat_multimapIiiSt4lessIiESaISt4pairIiiEEED2Ev.exit309
  %i.lc = landingpad { ptr, i32 }
          catch ptr null
  %i.ld = extractvalue { ptr, i32 } %i.lc, 0
  call void @__clang_call_terminate(ptr %i.ld) #28
  unreachable

_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit310: ; preds = %_ZN5boost9container13flat_multimapIiiSt4lessIiESaISt4pairIiiEEED2Ev.exit309
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.cy

bb.cy:                                            ; preds = %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit310, %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit305, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit301, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit231
  %.8 = phi i1 [ false, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit301 ], [ false, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit305 ], [ false, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit231 ], [ %.791, %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit ], [ false, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit310 ]
  ret i1 %.8

bb.cz:                                            ; preds = %bb.co, %bb.av
  %.pn113.pn = phi { ptr, i32 } [ %.pn113, %bb.av ], [ %.pn103, %bb.co ]
  resume { ptr, i32 } %.pn113.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9container4test28flat_tree_extract_adopt_testINS0_8flat_mapIiiSt4lessIiESaISt4pairIiiEEEENS0_13flat_multimapIiiS5_S8_EEEEbv() local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 3 uses
  %1 = alloca %"union.boost::move_detail::aligned_struct_wrapper.88", align 4 ; 5 uses
  %2 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 3 uses
  %3 = alloca %"union.boost::move_detail::aligned_struct_wrapper.88", align 4 ; 5 uses
  %4 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 3 uses
  %5 = alloca %"union.boost::move_detail::aligned_struct_wrapper.88", align 4 ; 5 uses
  %6 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 3 uses
  %7 = alloca %"union.boost::move_detail::aligned_struct_wrapper.88", align 4 ; 5 uses
  %8 = alloca %"union.boost::move_detail::aligned_struct_wrapper.88", align 4 ; 5 uses
  %9 = alloca %"union.boost::move_detail::aligned_struct_wrapper.88", align 4 ; 5 uses
  %10 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 3 uses
  %11 = alloca %"union.boost::move_detail::aligned_struct_wrapper.88", align 4 ; 5 uses
  %12 = alloca %"union.boost::move_detail::aligned_struct_wrapper.88", align 4 ; 5 uses
  %13 = alloca %"class.boost::container::flat_map.6", align 8 ; 16 uses
  %14 = alloca %"class.boost::container::flat_map.6", align 8 ; 15 uses
  %15 = alloca %"struct.std::pair.25", align 8    ; 4 uses
  %16 = alloca %"struct.std::pair.25", align 8    ; 4 uses
  %17 = alloca %"class.boost::container::vector.8", align 8 ; 15 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %18 = alloca %"class.boost::container::flat_map.6", align 8 ; 16 uses
  %19 = alloca %"class.boost::container::flat_map.6", align 8 ; 15 uses
  %20 = alloca %"struct.std::pair.25", align 8    ; 4 uses
  %21 = alloca %"struct.std::pair.25", align 8    ; 4 uses
  %22 = alloca %"class.boost::container::vector.8", align 8 ; 11 uses
  %23 = alloca %"class.boost::container::flat_multimap.13", align 8 ; 18 uses
  %24 = alloca %"class.boost::container::flat_multimap.13", align 8 ; 16 uses
  %25 = alloca %"class.boost::container::vector.8", align 8 ; 11 uses
  %26 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 2 uses
  %27 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 2 uses
  %28 = alloca %"class.boost::container::flat_multimap.13", align 8 ; 15 uses
  %29 = alloca %"class.boost::container::flat_multimap.13", align 8 ; 13 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %30 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 4 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %31 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 4 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %32 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 4 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %33 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 4 uses
  %34 = alloca %"class.boost::container::vector.8", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %.065406 = phi i64 [ 0, %bb.a ], [ %i.o, %bb.d ] ; 2 uses
  %i.m = trunc i64 %.065406 to i32                ; 3 uses
  %i.n = sub nsw i32 0, %i.m                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24, !noalias !7132
  store i32 %i.m, ptr %12, align 4, !tbaa !21, !noalias !7132
  store i32 %i.n, ptr %i.k, align 4, !tbaa !21, !noalias !7132
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiESaIS4_EE13insert_uniqueEOS4_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.25") align 8 %15, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 4 dereferenceable(8) %12)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24, !noalias !7132
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24, !noalias !7137
  store i32 %i.m, ptr %11, align 4, !tbaa !21, !noalias !7137
  store i32 %i.n, ptr %i.l, align 4, !tbaa !21, !noalias !7137
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiESaIS4_EE13insert_uniqueEOS4_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.25") align 8 %16, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 4 dereferenceable(8) %11)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24, !noalias !7137
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  %i.o = add nuw nsw i64 %.065406, 1              ; 2 uses
  %.not = icmp eq i64 %i.o, 100
  br i1 %.not, label %_ZN5boost9container6vectorISt4pairIiiESaIS3_EvED2Ev.exit, label %bb.b, !llvm.loop !7142

bb.e:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %bb.x

bb.f:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %bb.x

_ZN5boost9container6vectorISt4pairIiiESaIS3_EvED2Ev.exit: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  %i.r = load ptr, ptr %13, align 8, !tbaa !81, !noalias !7143 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !185, !noalias !7143 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !77, !noalias !7143 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false), !noalias !7143
  store ptr %i.r, ptr %17, align 8, !tbaa !81
  %i.w = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 4 uses
  store i64 %i.t, ptr %i.w, align 8, !tbaa !185
  %i.x = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 5 uses
  store i64 %i.v, ptr %i.x, align 8, !tbaa !77
  %i.y = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !79
  %.not.i = icmp eq i64 %i.t, %i.z
  br i1 %.not.i, label %bb.g, label %.critedgethread-pre-split

bb.g:                                             ; preds = %_ZN5boost9container6vectorISt4pairIiiESaIS3_EvED2Ev.exit
  %.idx.i = shl nsw i64 %i.t, 3
  %i.aa = getelementptr inbounds i8, ptr %i.r, i64 %.idx.i
  %.not2526.i = icmp eq i64 %i.t, 0
  br i1 %.not2526.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairIiiESaIS5_EvEENS0_8flat_mapIiiSt4lessIiES6_EEEEbRKT_RKT0_.exit.preheader, label %.lr.ph.preheader.i

_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairIiiESaIS5_EvEENS0_8flat_mapIiiSt4lessIiES6_EEEEbRKT_RKT0_.exit.preheader: ; preds = %bb.h, %bb.g
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairIiiESaIS5_EvEENS0_8flat_mapIiiSt4lessIiES6_EEEEbRKT_RKT0_.exit

.lr.ph.preheader.i:                               ; preds = %bb.g
  %i.ab = load ptr, ptr %14, align 8, !tbaa !81, !noalias !7146
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
  br i1 %.not25.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairIiiESaIS5_EvEENS0_8flat_mapIiiSt4lessIiES6_EEEEbRKT_RKT0_.exit.preheader, label %.lr.ph.i, !llvm.loop !7155

bb.i:                                             ; preds = %_ZN5boost9container4test14random_shuffleINS0_12vec_iteratorIPSt4pairIiiELb0EEEEEvT_S8_.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.j:                                             ; preds = %_ZN5boost9container6vectorISt4pairIiiESaIS3_EvE12emplace_backIJiiEEERS3_DpOT_.exit
  %i.al = load ptr, ptr %17, align 8, !tbaa !81, !noalias !7156 ; 2 uses
  %i.am = load i64, ptr %i.w, align 8, !tbaa !79, !noalias !7159 ; 2 uses
  %i.an = icmp sgt i64 %i.am, 1
  br i1 %i.an, label %.lr.ph.i100, label %_ZN5boost9container4test14random_shuffleINS0_12vec_iteratorIPSt4pairIiiELb0EEEEEvT_S8_.exit

.lr.ph.i100:                                      ; preds = %bb.j, %bb.l
  %.0.in10.i = phi i64 [ %.011.i, %bb.l ], [ %i.am, %bb.j ] ; 3 uses
  %.011.i = add nsw i64 %.0.in10.i, -1            ; 3 uses
  %i.ao = call i32 @rand() #24
  %i.ap = sext i32 %i.ao to i64
  %i.aq = srem i64 %i.ap, %.0.in10.i              ; 2 uses
  %.not.i101 = icmp eq i64 %i.aq, %.011.i
  br i1 %.not.i101, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i100
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.al, i64 %.011.i ; 2 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.aq ; 2 uses
  %i.at = load <2 x i32>, ptr %i.ar, align 4, !tbaa !21
  %i.au = load <2 x i32>, ptr %i.as, align 4, !tbaa !21
  store <2 x i32> %i.au, ptr %i.ar, align 4, !tbaa !21
  store <2 x i32> %i.at, ptr %i.as, align 4, !tbaa !21
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i100
  %i.av = icmp samesign ugt i64 %.0.in10.i, 2
  br i1 %i.av, label %.lr.ph.i100, label %_ZN5boost9container4test14random_shuffleINS0_12vec_iteratorIPSt4pairIiiELb0EEEEEvT_S8_.exit, !llvm.loop !3727

_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairIiiESaIS5_EvEENS0_8flat_mapIiiSt4lessIiES6_EEEEbRKT_RKT0_.exit: ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairIiiESaIS5_EvEENS0_8flat_mapIiiSt4lessIiES6_EEEEbRKT_RKT0_.exit.preheader, %_ZN5boost9container6vectorISt4pairIiiESaIS3_EvE12emplace_backIJiiEEERS3_DpOT_.exit
  %.047407 = phi i64 [ %i.bh, %_ZN5boost9container6vectorISt4pairIiiESaIS3_EvE12emplace_backIJiiEEERS3_DpOT_.exit ], [ 0, %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairIiiESaIS5_EvEENS0_8flat_mapIiiSt4lessIiES6_EEEEbRKT_RKT0_.exit.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.aw = trunc i64 %.047407 to i32               ; 3 uses
  store i32 %i.aw, ptr %i.a, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.ax = sub nsw i32 0, %i.aw
  store i32 %i.ax, ptr %i.b, align 4, !tbaa !21
  %i.ay = load i64, ptr %i.w, align 8, !tbaa !79  ; 4 uses
  %i.az = load i64, ptr %i.x, align 8, !tbaa !77
  %.not.i102 = icmp eq i64 %i.ay, %i.az
  br i1 %.not.i102, label %bb.n, label %bb.m, !prof !306

bb.m:                                             ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairIiiESaIS5_EvEENS0_8flat_mapIiiSt4lessIiES6_EEEEbRKT_RKT0_.exit
  %i.ba = load ptr, ptr %17, align 8, !tbaa !81, !nonnull !400, !noundef !400
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.ay ; 2 uses
  store i32 %i.aw, ptr %i.bb, align 4, !tbaa !21
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bd = load i32, ptr %i.b, align 4, !tbaa !21
  store i32 %i.bd, ptr %i.bc, align 4, !tbaa !21
  %i.be = add i64 %i.ay, 1
  store i64 %i.be, ptr %i.w, align 8, !tbaa !79
  br label %_ZN5boost9container6vectorISt4pairIiiESaIS3_EvE12emplace_backIJiiEEERS3_DpOT_.exit

bb.n:                                             ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairIiiESaIS5_EvEENS0_8flat_mapIiiSt4lessIiES6_EEEEbRKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.bf = load ptr, ptr %17, align 8, !tbaa !81
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.ay
  invoke void @_ZN5boost9container6vectorISt4pairIiiESaIS3_EvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS4_JiiEEEEENS0_12vec_iteratorIPS3_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.27") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef %i.bg, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.b, ptr nonnull align 4 dereferenceable(4) %i.a)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %_ZN5boost9container6vectorISt4pairIiiESaIS3_EvE12emplace_backIJiiEEERS3_DpOT_.exit

_ZN5boost9container6vectorISt4pairIiiESaIS3_EvE12emplace_backIJiiEEERS3_DpOT_.exit: ; preds = %.noexc, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.bh = add nuw nsw i64 %.047407, 1             ; 2 uses
  %.not71 = icmp eq i64 %i.bh, 100
  br i1 %.not71, label %bb.j, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairIiiESaIS5_EvEENS0_8flat_mapIiiSt4lessIiES6_EEEEbRKT_RKT0_.exit, !llvm.loop !7162

bb.o:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.v

_ZN5boost9container4test14random_shuffleINS0_12vec_iteratorIPSt4pairIiiELb0EEEEEvT_S8_.exit: ; preds = %bb.l, %bb.j
  invoke void @_ZN5boost9container3dtl31flat_tree_adopt_sequence_uniqueINS0_6vectorISt4pairIiiESaIS5_EvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_OSE_T0_NS_11move_detail5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %17)
          to label %_ZN5boost9container8flat_mapIiiSt4lessIiESaISt4pairIiiEEE14adopt_sequenceEONS0_6vectorIS5_S6_vEE.exit unwind label %bb.i

_ZN5boost9container8flat_mapIiiSt4lessIiESaISt4pairIiiEEE14adopt_sequenceEONS0_6vectorIS5_S6_vEE.exit: ; preds = %_ZN5boost9container4test14random_shuffleINS0_12vec_iteratorIPSt4pairIiiELb0EEEEEvT_S8_.exit
  %i.bj = load i64, ptr %i.s, align 8, !tbaa !79  ; 3 uses
  %i.bk = load i64, ptr %i.y, align 8, !tbaa !79
  %.not.i104 = icmp eq i64 %i.bj, %i.bk
  br i1 %.not.i104, label %bb.p, label %.critedgethread-pre-splitthread-pre-split

bb.p:                                             ; preds = %_ZN5boost9container8flat_mapIiiSt4lessIiESaISt4pairIiiEEE14adopt_sequenceEONS0_6vectorIS5_S6_vEE.exit
  %i.bl = load ptr, ptr %13, align 8, !tbaa !81, !noalias !7163 ; 3 uses
  %.idx.i106 = shl nsw i64 %i.bj, 3
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 %.idx.i106 ; 2 uses
  %.not2526.i107 = icmp eq i64 %i.bj, 0
  br i1 %.not2526.i107, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairIiiESaIS5_EvEES7_EEbRKT_RKT0_.exit, label %.lr.ph.preheader.i108

.lr.ph.preheader.i108:                            ; preds = %bb.p
  %i.bn = load ptr, ptr %14, align 8, !tbaa !81, !noalias !7172 ; 2 uses
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
  br i1 %.not25.i112, label %.lr.ph.i118, label %.lr.ph.i109, !llvm.loop !7181

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
  br i1 %or.cond.not, label %.lr.ph.i118, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairIiiESaIS5_EvEES7_EEbRKT_RKT0_.exit, !llvm.loop !7182

_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairIiiESaIS5_EvEES7_EEbRKT_RKT0_.exit: ; preds = %.lr.ph.i118, %bb.p
  %.2.i114 = phi i1 [ true, %bb.p ], [ %i.cb, %.lr.ph.i118 ]
  %i.ce = load i64, ptr %i.x, align 8, !tbaa !77  ; 2 uses
  %.not.i.i122 = icmp eq i64 %i.ce, 0
  br i1 %.not.i.i122, label %_ZN5boost9container6vectorISt4pairIiiESaIS3_EvED2Ev.exit123, label %bb.r

bb.r:                                             ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairIiiESaIS5_EvEES7_EEbRKT_RKT0_.exit
  %i.cf = load ptr, ptr %17, align 8, !tbaa !44
  %i.cg = shl i64 %i.ce, 3
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cg) #27
  br label %_ZN5boost9container6vectorISt4pairIiiESaIS3_EvED2Ev.exit123

_ZN5boost9container6vectorISt4pairIiiESaIS3_EvED2Ev.exit123: ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairIiiESaIS5_EvEES7_EEbRKT_RKT0_.exit, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  %i.ch = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !77 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ci, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container8flat_mapIiiSt4lessIiESaISt4pairIiiEEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZN5boost9container6vectorISt4pairIiiESaIS3_EvED2Ev.exit123
  %i.cj = load ptr, ptr %14, align 8, !tbaa !44
  %i.ck = shl i64 %i.ci, 3
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.ck) #27
  br label %_ZN5boost9container8flat_mapIiiSt4lessIiESaISt4pairIiiEEED2Ev.exit

_ZN5boost9container8flat_mapIiiSt4lessIiESaISt4pairIiiEEED2Ev.exit: ; preds = %_ZN5boost9container6vectorISt4pairIiiESaIS3_EvED2Ev.exit123, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  %i.cl = load i64, ptr %i.u, align 8, !tbaa !77  ; 2 uses
  %.not.i.i.i.i.i124 = icmp eq i64 %i.cl, 0
  br i1 %.not.i.i.i.i.i124, label %_ZN5boost9container8flat_mapIiiSt4lessIiESaISt4pairIiiEEED2Ev.exit125, label %bb.t

bb.t:                                             ; preds = %_ZN5boost9container8flat_mapIiiSt4lessIiESaISt4pairIiiEEED2Ev.exit
  %i.cm = load ptr, ptr %13, align 8, !tbaa !44
  %i.cn = shl i64 %i.cl, 3
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cn) #27
  br label %_ZN5boost9container8flat_mapIiiSt4lessIiESaISt4pairIiiEEED2Ev.exit125

_ZN5boost9container8flat_mapIiiSt4lessIiESaISt4pairIiiEEED2Ev.exit125: ; preds = %_ZN5boost9container8flat_mapIiiSt4lessIiESaISt4pairIiiEEED2Ev.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br i1 %.2.i114, label %bb.u, label %bb.di

bb.u:                                             ; preds = %_ZN5boost9container8flat_mapIiiSt4lessIiESaISt4pairIiiEEED2Ev.exit125
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.cp = getelementptr inbounds nuw i8, ptr %8, i64 4
  br label %bb.aa

bb.v:                                             ; preds = %bb.o, %bb.i
  %.pn85 = phi { ptr, i32 } [ %i.bi, %bb.o ], [ %i.ak, %bb.i ]
  %i.cq = load i64, ptr %i.x, align 8, !tbaa !77  ; 2 uses
  %.not.i.i126 = icmp eq i64 %i.cq, 0
  br i1 %.not.i.i126, label %_ZN5boost9container6vectorISt4pairIiiESaIS3_EvED2Ev.exit127, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cr = load ptr, ptr %17, align 8, !tbaa !44
  %i.cs = shl i64 %i.cq, 3
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cs) #27
  br label %_ZN5boost9container6vectorISt4pairIiiESaIS3_EvED2Ev.exit127

_ZN5boost9container6vectorISt4pairIiiESaIS3_EvED2Ev.exit127: ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  br label %bb.x

bb.x:                                             ; preds = %bb.e, %bb.f, %_ZN5boost9container6vectorISt4pairIiiESaIS3_EvED2Ev.exit127
  %.pn88.pn = phi { ptr, i32 } [ %.pn85, %_ZN5boost9container6vectorISt4pairIiiESaIS3_EvED2Ev.exit127 ], [ %i.q, %bb.f ], [ %i.p, %bb.e ]
  %i.ct = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !77 ; 2 uses
  %.not.i.i.i.i.i128 = icmp eq i64 %i.cu, 0
  br i1 %.not.i.i.i.i.i128, label %_ZN5boost9container8flat_mapIiiSt4lessIiESaISt4pairIiiEEED2Ev.exit129, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cv = load ptr, ptr %14, align 8, !tbaa !44
  %i.cw = shl i64 %i.cu, 3
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cw) #27
  br label %_ZN5boost9container8flat_mapIiiSt4lessIiESaISt4pairIiiEEED2Ev.exit129

_ZN5boost9container8flat_mapIiiSt4lessIiESaISt4pairIiiEEED2Ev.exit129: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  %i.cx = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !77 ; 2 uses
  %.not.i.i.i.i.i130 = icmp eq i64 %i.cy, 0
  br i1 %.not.i.i.i.i.i130, label %_ZN5boost9container8flat_mapIiiSt4lessIiESaISt4pairIiiEEED2Ev.exit131, label %bb.z

bb.z:                                             ; preds = %_ZN5boost9container8flat_mapIiiSt4lessIiESaISt4pairIiiEEED2Ev.exit129
end_hunk_2
begin_hunk_3_@_ZN5boost9container4test32flat_tree_ordered_insertion_testINS0_8flat_mapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEEENS0_13flat_multimapIiiS5_S9_EEEEbv:bb.a
  %.not.i.i.i.i.i308 = icmp eq i64 %i.ky, 0
  br i1 %.not.i.i.i.i.i308, label %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEED2Ev.exit309, label %bb.cw

bb.cw:                                            ; preds = %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit307
  %i.kz = load ptr, ptr %8, align 8, !tbaa !44
  %i.la = shl i64 %i.ky, 3
  call void @_ZdlPvm(ptr noundef %i.kz, i64 noundef %i.la) #24
  br label %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEED2Ev.exit309

_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEED2Ev.exit309: ; preds = %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit307, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.lb = load ptr, ptr %i.b, align 8, !tbaa !16
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef %i.lb)
          to label %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit310 unwind label %bb.cx

bb.cx:                                            ; preds = %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEED2Ev.exit309
  %i.lc = landingpad { ptr, i32 }
          catch ptr null
  %i.ld = extractvalue { ptr, i32 } %i.lc, 0
  call void @__clang_call_terminate(ptr %i.ld) #28
  unreachable

_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit310: ; preds = %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEED2Ev.exit309
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.cy

bb.cy:                                            ; preds = %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit310, %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit305, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit301, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit231
  %.8 = phi i1 [ false, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit301 ], [ false, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit305 ], [ false, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit231 ], [ %.791, %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit ], [ false, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit310 ]
  ret i1 %.8

bb.cz:                                            ; preds = %bb.co, %bb.av
  %.pn113.pn = phi { ptr, i32 } [ %.pn113, %bb.av ], [ %.pn103, %bb.co ]
  resume { ptr, i32 } %.pn113.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9container4test28flat_tree_extract_adopt_testINS0_8flat_mapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEEENS0_13flat_multimapIiiS5_S9_EEEEbv() local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 3 uses
  %1 = alloca %"union.boost::move_detail::aligned_struct_wrapper.88", align 4 ; 5 uses
  %2 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 3 uses
  %3 = alloca %"union.boost::move_detail::aligned_struct_wrapper.88", align 4 ; 5 uses
  %4 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 3 uses
  %5 = alloca %"union.boost::move_detail::aligned_struct_wrapper.88", align 4 ; 5 uses
  %6 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 3 uses
  %7 = alloca %"union.boost::move_detail::aligned_struct_wrapper.88", align 4 ; 5 uses
  %8 = alloca %"union.boost::move_detail::aligned_struct_wrapper.88", align 4 ; 5 uses
  %9 = alloca %"union.boost::move_detail::aligned_struct_wrapper.88", align 4 ; 5 uses
  %10 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 3 uses
  %11 = alloca %"union.boost::move_detail::aligned_struct_wrapper.88", align 4 ; 5 uses
  %12 = alloca %"union.boost::move_detail::aligned_struct_wrapper.88", align 4 ; 5 uses
  %13 = alloca %"class.boost::container::flat_map.2", align 8 ; 16 uses
  %14 = alloca %"class.boost::container::flat_map.2", align 8 ; 15 uses
  %15 = alloca %"struct.std::pair.25", align 8    ; 4 uses
  %16 = alloca %"struct.std::pair.25", align 8    ; 4 uses
  %17 = alloca %"class.boost::container::vector.4", align 8 ; 15 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %18 = alloca %"class.boost::container::flat_map.2", align 8 ; 16 uses
  %19 = alloca %"class.boost::container::flat_map.2", align 8 ; 15 uses
  %20 = alloca %"struct.std::pair.25", align 8    ; 4 uses
  %21 = alloca %"struct.std::pair.25", align 8    ; 4 uses
  %22 = alloca %"class.boost::container::vector.4", align 8 ; 11 uses
  %23 = alloca %"class.boost::container::flat_multimap.5", align 8 ; 18 uses
  %24 = alloca %"class.boost::container::flat_multimap.5", align 8 ; 16 uses
  %25 = alloca %"class.boost::container::vector.4", align 8 ; 11 uses
  %26 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 2 uses
  %27 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 2 uses
  %28 = alloca %"class.boost::container::flat_multimap.5", align 8 ; 15 uses
  %29 = alloca %"class.boost::container::flat_multimap.5", align 8 ; 13 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %30 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 4 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %31 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 4 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %32 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 4 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %33 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 4 uses
  %34 = alloca %"class.boost::container::vector.4", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %.065406 = phi i64 [ 0, %bb.a ], [ %i.o, %bb.d ] ; 2 uses
  %i.m = trunc i64 %.065406 to i32                ; 3 uses
  %i.n = sub nsw i32 0, %i.m                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24, !noalias !9702
  store i32 %i.m, ptr %12, align 4, !tbaa !21, !noalias !9702
  store i32 %i.n, ptr %i.k, align 4, !tbaa !21, !noalias !9702
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13new_allocatorIS4_EEE13insert_uniqueEOS4_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.25") align 8 %15, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 4 dereferenceable(8) %12)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24, !noalias !9702
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24, !noalias !9707
  store i32 %i.m, ptr %11, align 4, !tbaa !21, !noalias !9707
  store i32 %i.n, ptr %i.l, align 4, !tbaa !21, !noalias !9707
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13new_allocatorIS4_EEE13insert_uniqueEOS4_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.25") align 8 %16, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 4 dereferenceable(8) %11)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24, !noalias !9707
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  %i.o = add nuw nsw i64 %.065406, 1              ; 2 uses
  %.not = icmp eq i64 %i.o, 100
  br i1 %.not, label %_ZN5boost9container6vectorISt4pairIiiENS0_13new_allocatorIS3_EEvED2Ev.exit, label %bb.b, !llvm.loop !9712

bb.e:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %bb.x

bb.f:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %bb.x

_ZN5boost9container6vectorISt4pairIiiENS0_13new_allocatorIS3_EEvED2Ev.exit: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  %i.r = load ptr, ptr %13, align 8, !tbaa !32, !noalias !9713 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !160, !noalias !9713 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !25, !noalias !9713 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false), !noalias !9713
  store ptr %i.r, ptr %17, align 8, !tbaa !32
  %i.w = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 4 uses
  store i64 %i.t, ptr %i.w, align 8, !tbaa !160
  %i.x = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 5 uses
  store i64 %i.v, ptr %i.x, align 8, !tbaa !25
  %i.y = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !55
  %.not.i = icmp eq i64 %i.t, %i.z
  br i1 %.not.i, label %bb.g, label %.critedgethread-pre-split

bb.g:                                             ; preds = %_ZN5boost9container6vectorISt4pairIiiENS0_13new_allocatorIS3_EEvED2Ev.exit
  %.idx.i = shl nsw i64 %i.t, 3
  %i.aa = getelementptr inbounds i8, ptr %i.r, i64 %.idx.i
  %.not2526.i = icmp eq i64 %i.t, 0
  br i1 %.not2526.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairIiiENS0_13new_allocatorIS5_EEvEENS0_8flat_mapIiiSt4lessIiES7_EEEEbRKT_RKT0_.exit.preheader, label %.lr.ph.preheader.i

_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairIiiENS0_13new_allocatorIS5_EEvEENS0_8flat_mapIiiSt4lessIiES7_EEEEbRKT_RKT0_.exit.preheader: ; preds = %bb.h, %bb.g
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairIiiENS0_13new_allocatorIS5_EEvEENS0_8flat_mapIiiSt4lessIiES7_EEEEbRKT_RKT0_.exit

.lr.ph.preheader.i:                               ; preds = %bb.g
  %i.ab = load ptr, ptr %14, align 8, !tbaa !32, !noalias !9716
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
  br i1 %.not25.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairIiiENS0_13new_allocatorIS5_EEvEENS0_8flat_mapIiiSt4lessIiES7_EEEEbRKT_RKT0_.exit.preheader, label %.lr.ph.i, !llvm.loop !9725

bb.i:                                             ; preds = %_ZN5boost9container4test14random_shuffleINS0_12vec_iteratorIPSt4pairIiiELb0EEEEEvT_S8_.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.j:                                             ; preds = %_ZN5boost9container6vectorISt4pairIiiENS0_13new_allocatorIS3_EEvE12emplace_backIJiiEEERS3_DpOT_.exit
  %i.al = load ptr, ptr %17, align 8, !tbaa !32, !noalias !9726 ; 2 uses
  %i.am = load i64, ptr %i.w, align 8, !tbaa !55, !noalias !9729 ; 2 uses
  %i.an = icmp sgt i64 %i.am, 1
  br i1 %i.an, label %.lr.ph.i100, label %_ZN5boost9container4test14random_shuffleINS0_12vec_iteratorIPSt4pairIiiELb0EEEEEvT_S8_.exit

.lr.ph.i100:                                      ; preds = %bb.j, %bb.l
  %.0.in10.i = phi i64 [ %.011.i, %bb.l ], [ %i.am, %bb.j ] ; 3 uses
  %.011.i = add nsw i64 %.0.in10.i, -1            ; 3 uses
  %i.ao = call i32 @rand() #24
  %i.ap = sext i32 %i.ao to i64
  %i.aq = srem i64 %i.ap, %.0.in10.i              ; 2 uses
  %.not.i101 = icmp eq i64 %i.aq, %.011.i
  br i1 %.not.i101, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i100
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.al, i64 %.011.i ; 2 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.aq ; 2 uses
  %i.at = load <2 x i32>, ptr %i.ar, align 4, !tbaa !21
  %i.au = load <2 x i32>, ptr %i.as, align 4, !tbaa !21
  store <2 x i32> %i.au, ptr %i.ar, align 4, !tbaa !21
  store <2 x i32> %i.at, ptr %i.as, align 4, !tbaa !21
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i100
  %i.av = icmp samesign ugt i64 %.0.in10.i, 2
  br i1 %i.av, label %.lr.ph.i100, label %_ZN5boost9container4test14random_shuffleINS0_12vec_iteratorIPSt4pairIiiELb0EEEEEvT_S8_.exit, !llvm.loop !3727

_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairIiiENS0_13new_allocatorIS5_EEvEENS0_8flat_mapIiiSt4lessIiES7_EEEEbRKT_RKT0_.exit: ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairIiiENS0_13new_allocatorIS5_EEvEENS0_8flat_mapIiiSt4lessIiES7_EEEEbRKT_RKT0_.exit.preheader, %_ZN5boost9container6vectorISt4pairIiiENS0_13new_allocatorIS3_EEvE12emplace_backIJiiEEERS3_DpOT_.exit
  %.047407 = phi i64 [ %i.bh, %_ZN5boost9container6vectorISt4pairIiiENS0_13new_allocatorIS3_EEvE12emplace_backIJiiEEERS3_DpOT_.exit ], [ 0, %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairIiiENS0_13new_allocatorIS5_EEvEENS0_8flat_mapIiiSt4lessIiES7_EEEEbRKT_RKT0_.exit.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.aw = trunc i64 %.047407 to i32               ; 3 uses
  store i32 %i.aw, ptr %i.a, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.ax = sub nsw i32 0, %i.aw
  store i32 %i.ax, ptr %i.b, align 4, !tbaa !21
  %i.ay = load i64, ptr %i.w, align 8, !tbaa !55  ; 4 uses
  %i.az = load i64, ptr %i.x, align 8, !tbaa !25
  %.not.i102 = icmp eq i64 %i.ay, %i.az
  br i1 %.not.i102, label %bb.n, label %bb.m, !prof !306

bb.m:                                             ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairIiiENS0_13new_allocatorIS5_EEvEENS0_8flat_mapIiiSt4lessIiES7_EEEEbRKT_RKT0_.exit
  %i.ba = load ptr, ptr %17, align 8, !tbaa !32, !nonnull !400, !noundef !400
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.ay ; 2 uses
  store i32 %i.aw, ptr %i.bb, align 4, !tbaa !21
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bd = load i32, ptr %i.b, align 4, !tbaa !21
  store i32 %i.bd, ptr %i.bc, align 4, !tbaa !21
  %i.be = add i64 %i.ay, 1
  store i64 %i.be, ptr %i.w, align 8, !tbaa !55
  br label %_ZN5boost9container6vectorISt4pairIiiENS0_13new_allocatorIS3_EEvE12emplace_backIJiiEEERS3_DpOT_.exit

bb.n:                                             ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairIiiENS0_13new_allocatorIS5_EEvEENS0_8flat_mapIiiSt4lessIiES7_EEEEbRKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.bf = load ptr, ptr %17, align 8, !tbaa !32
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.ay
  invoke void @_ZN5boost9container6vectorISt4pairIiiENS0_13new_allocatorIS3_EEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS5_JiiEEEEENS0_12vec_iteratorIPS3_Lb0EEESC_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.27") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef %i.bg, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.b, ptr nonnull align 4 dereferenceable(4) %i.a)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %_ZN5boost9container6vectorISt4pairIiiENS0_13new_allocatorIS3_EEvE12emplace_backIJiiEEERS3_DpOT_.exit

_ZN5boost9container6vectorISt4pairIiiENS0_13new_allocatorIS3_EEvE12emplace_backIJiiEEERS3_DpOT_.exit: ; preds = %.noexc, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.bh = add nuw nsw i64 %.047407, 1             ; 2 uses
  %.not71 = icmp eq i64 %i.bh, 100
  br i1 %.not71, label %bb.j, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairIiiENS0_13new_allocatorIS5_EEvEENS0_8flat_mapIiiSt4lessIiES7_EEEEbRKT_RKT0_.exit, !llvm.loop !9732

bb.o:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.v

_ZN5boost9container4test14random_shuffleINS0_12vec_iteratorIPSt4pairIiiELb0EEEEEvT_S8_.exit: ; preds = %bb.l, %bb.j
  invoke void @_ZN5boost9container3dtl31flat_tree_adopt_sequence_uniqueINS0_6vectorISt4pairIiiENS0_13new_allocatorIS5_EEvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_OSF_T0_NS_11move_detail5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %17)
          to label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEE14adopt_sequenceEONS0_6vectorIS6_S7_vEE.exit unwind label %bb.i

_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEE14adopt_sequenceEONS0_6vectorIS6_S7_vEE.exit: ; preds = %_ZN5boost9container4test14random_shuffleINS0_12vec_iteratorIPSt4pairIiiELb0EEEEEvT_S8_.exit
  %i.bj = load i64, ptr %i.s, align 8, !tbaa !55  ; 3 uses
  %i.bk = load i64, ptr %i.y, align 8, !tbaa !55
  %.not.i104 = icmp eq i64 %i.bj, %i.bk
  br i1 %.not.i104, label %bb.p, label %.critedgethread-pre-splitthread-pre-split

bb.p:                                             ; preds = %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEE14adopt_sequenceEONS0_6vectorIS6_S7_vEE.exit
  %i.bl = load ptr, ptr %13, align 8, !tbaa !32, !noalias !9733 ; 3 uses
  %.idx.i106 = shl nsw i64 %i.bj, 3
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 %.idx.i106 ; 2 uses
  %.not2526.i107 = icmp eq i64 %i.bj, 0
  br i1 %.not2526.i107, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairIiiENS0_13new_allocatorIS5_EEvEES8_EEbRKT_RKT0_.exit, label %.lr.ph.preheader.i108

.lr.ph.preheader.i108:                            ; preds = %bb.p
  %i.bn = load ptr, ptr %14, align 8, !tbaa !32, !noalias !9742 ; 2 uses
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
  br i1 %.not25.i112, label %.lr.ph.i118, label %.lr.ph.i109, !llvm.loop !9751

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
  br i1 %or.cond.not, label %.lr.ph.i118, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairIiiENS0_13new_allocatorIS5_EEvEES8_EEbRKT_RKT0_.exit, !llvm.loop !9752

_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairIiiENS0_13new_allocatorIS5_EEvEES8_EEbRKT_RKT0_.exit: ; preds = %.lr.ph.i118, %bb.p
  %.2.i114 = phi i1 [ true, %bb.p ], [ %i.cb, %.lr.ph.i118 ]
  %i.ce = load i64, ptr %i.x, align 8, !tbaa !25  ; 2 uses
  %.not.i.i122 = icmp eq i64 %i.ce, 0
  br i1 %.not.i.i122, label %_ZN5boost9container6vectorISt4pairIiiENS0_13new_allocatorIS3_EEvED2Ev.exit123, label %bb.r

bb.r:                                             ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairIiiENS0_13new_allocatorIS5_EEvEES8_EEbRKT_RKT0_.exit
  %i.cf = load ptr, ptr %17, align 8, !tbaa !44
  %i.cg = shl i64 %i.ce, 3
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cg) #24
  br label %_ZN5boost9container6vectorISt4pairIiiENS0_13new_allocatorIS3_EEvED2Ev.exit123

_ZN5boost9container6vectorISt4pairIiiENS0_13new_allocatorIS3_EEvED2Ev.exit123: ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairIiiENS0_13new_allocatorIS5_EEvEES8_EEbRKT_RKT0_.exit, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  %i.ch = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !25 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ci, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZN5boost9container6vectorISt4pairIiiENS0_13new_allocatorIS3_EEvED2Ev.exit123
  %i.cj = load ptr, ptr %14, align 8, !tbaa !44
  %i.ck = shl i64 %i.ci, 3
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.ck) #24
  br label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEED2Ev.exit

_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEED2Ev.exit: ; preds = %_ZN5boost9container6vectorISt4pairIiiENS0_13new_allocatorIS3_EEvED2Ev.exit123, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  %i.cl = load i64, ptr %i.u, align 8, !tbaa !25  ; 2 uses
  %.not.i.i.i.i.i124 = icmp eq i64 %i.cl, 0
  br i1 %.not.i.i.i.i.i124, label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEED2Ev.exit125, label %bb.t

bb.t:                                             ; preds = %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEED2Ev.exit
  %i.cm = load ptr, ptr %13, align 8, !tbaa !44
  %i.cn = shl i64 %i.cl, 3
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cn) #24
  br label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEED2Ev.exit125

_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEED2Ev.exit125: ; preds = %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEED2Ev.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br i1 %.2.i114, label %bb.u, label %bb.di

bb.u:                                             ; preds = %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEED2Ev.exit125
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.cp = getelementptr inbounds nuw i8, ptr %8, i64 4
  br label %bb.aa

bb.v:                                             ; preds = %bb.o, %bb.i
  %.pn85 = phi { ptr, i32 } [ %i.bi, %bb.o ], [ %i.ak, %bb.i ]
  %i.cq = load i64, ptr %i.x, align 8, !tbaa !25  ; 2 uses
  %.not.i.i126 = icmp eq i64 %i.cq, 0
  br i1 %.not.i.i126, label %_ZN5boost9container6vectorISt4pairIiiENS0_13new_allocatorIS3_EEvED2Ev.exit127, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cr = load ptr, ptr %17, align 8, !tbaa !44
  %i.cs = shl i64 %i.cq, 3
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cs) #24
  br label %_ZN5boost9container6vectorISt4pairIiiENS0_13new_allocatorIS3_EEvED2Ev.exit127

_ZN5boost9container6vectorISt4pairIiiENS0_13new_allocatorIS3_EEvED2Ev.exit127: ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  br label %bb.x

bb.x:                                             ; preds = %bb.e, %bb.f, %_ZN5boost9container6vectorISt4pairIiiENS0_13new_allocatorIS3_EEvED2Ev.exit127
  %.pn88.pn = phi { ptr, i32 } [ %.pn85, %_ZN5boost9container6vectorISt4pairIiiENS0_13new_allocatorIS3_EEvED2Ev.exit127 ], [ %i.q, %bb.f ], [ %i.p, %bb.e ]
  %i.ct = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !25 ; 2 uses
  %.not.i.i.i.i.i128 = icmp eq i64 %i.cu, 0
  br i1 %.not.i.i.i.i.i128, label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEED2Ev.exit129, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cv = load ptr, ptr %14, align 8, !tbaa !44
  %i.cw = shl i64 %i.cu, 3
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cw) #24
  br label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEED2Ev.exit129

_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEED2Ev.exit129: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  %i.cx = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !25 ; 2 uses
  %.not.i.i.i.i.i130 = icmp eq i64 %i.cy, 0
  br i1 %.not.i.i.i.i.i130, label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEED2Ev.exit131, label %bb.z

bb.z:                                             ; preds = %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEED2Ev.exit129
end_hunk_3
begin_hunk_4_@_ZN5boost9container4test32flat_tree_ordered_insertion_testINS0_8flat_mapINS1_11movable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEENS0_13flat_multimapIS4_S4_S6_SA_EEEEbv:bb.a
  %i.lu = landingpad { ptr, i32 }
          catch ptr null
  %i.lv = extractvalue { ptr, i32 } %i.lu, 0
  call void @__clang_call_terminate(ptr %i.lv) #28
  unreachable

_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit328: ; preds = %_ZN5boost9container13flat_multimapINS0_4test11movable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEED2Ev.exit327
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.cy

bb.cy:                                            ; preds = %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit328, %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit319, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit311, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit234
  %.8 = phi i1 [ false, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit311 ], [ false, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit319 ], [ false, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit234 ], [ %.791, %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit ], [ false, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit328 ]
  ret i1 %.8

bb.cz:                                            ; preds = %bb.co, %bb.aw
  %.pn113.pn = phi { ptr, i32 } [ %.pn113, %bb.aw ], [ %.pn103, %bb.co ]
  resume { ptr, i32 } %.pn113.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9container4test28flat_tree_extract_adopt_testINS0_8flat_mapINS1_11movable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEENS0_13flat_multimapIS4_S4_S6_SA_EEEEbv() local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"union.boost::move_detail::aligned_struct_wrapper.88", align 4 ; 6 uses
  %1 = alloca %"union.boost::move_detail::aligned_struct_wrapper.88", align 4 ; 6 uses
  %2 = alloca %"union.boost::move_detail::aligned_struct_wrapper.88", align 4 ; 6 uses
  %3 = alloca %"union.boost::move_detail::aligned_struct_wrapper.88", align 4 ; 6 uses
  %4 = alloca %"union.boost::move_detail::aligned_struct_wrapper.88", align 4 ; 6 uses
  %5 = alloca %"union.boost::move_detail::aligned_struct_wrapper.88", align 4 ; 6 uses
  %6 = alloca %"class.boost::container::vec_iterator.250", align 8 ; 3 uses
  %7 = alloca %"union.boost::move_detail::aligned_struct_wrapper.88", align 4 ; 6 uses
  %8 = alloca %"union.boost::move_detail::aligned_struct_wrapper.88", align 4 ; 6 uses
  %9 = alloca %"class.boost::container::flat_map.238", align 8 ; 15 uses
  %10 = alloca %"class.boost::container::flat_map.238", align 8 ; 14 uses
  %11 = alloca %"struct.std::pair.271", align 8   ; 4 uses
  %12 = alloca %"struct.std::pair.271", align 8   ; 4 uses
  %13 = alloca %"class.boost::container::vector.243", align 8 ; 15 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %14 = alloca %"class.boost::container::flat_map.238", align 8 ; 17 uses
  %15 = alloca %"class.boost::container::flat_map.238", align 8 ; 15 uses
  %16 = alloca %"struct.std::pair.271", align 8   ; 4 uses
  %17 = alloca %"struct.std::pair.271", align 8   ; 4 uses
  %18 = alloca %"class.boost::container::vector.243", align 8 ; 13 uses
  %19 = alloca %"class.boost::container::flat_multimap.247", align 8 ; 17 uses
  %20 = alloca %"class.boost::container::flat_multimap.247", align 8 ; 15 uses
  %21 = alloca %"class.boost::container::vec_iterator.250", align 8 ; 4 uses
  %22 = alloca %"class.boost::container::vec_iterator.250", align 8 ; 4 uses
  %23 = alloca %"class.boost::container::vec_iterator.250", align 8 ; 4 uses
  %24 = alloca %"class.boost::container::vec_iterator.250", align 8 ; 4 uses
  %25 = alloca %"class.boost::container::vector.243", align 8 ; 13 uses
  %26 = alloca %"class.boost::container::vector.243", align 8 ; 4 uses
  %27 = alloca %"class.boost::container::vec_iterator.250", align 8 ; 2 uses
  %28 = alloca %"class.boost::container::vec_iterator.250", align 8 ; 2 uses
  %29 = alloca %"class.boost::container::flat_multimap.247", align 8 ; 13 uses
  %30 = alloca %"class.boost::container::flat_multimap.247", align 8 ; 11 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %31 = alloca %"class.boost::container::vec_iterator.250", align 8 ; 4 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %32 = alloca %"class.boost::container::vec_iterator.250", align 8 ; 4 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %33 = alloca %"class.boost::container::vec_iterator.250", align 8 ; 4 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %34 = alloca %"class.boost::container::vec_iterator.250", align 8 ; 4 uses
  %35 = alloca %"class.boost::container::vector.243", align 8 ; 8 uses
  %36 = alloca %"class.boost::container::vector.243", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 4
  %.pre = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21, !noalias !12275
  %i.m = add i32 %.pre, 2
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %i.n = phi i32 [ %i.m, %bb.a ], [ %i.w, %bb.d ]
  %.065348 = phi i64 [ 0, %bb.a ], [ %i.y, %bb.d ] ; 2 uses
  %i.o = trunc i64 %.065348 to i32                ; 3 uses
  %i.p = sub nsw i32 0, %i.o                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24, !noalias !12275
  store i32 %i.o, ptr %8, align 4, !tbaa !830, !noalias !12275
  store i32 %i.p, ptr %i.k, align 4, !tbaa !830, !noalias !12275
  store i32 %i.n, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21, !noalias !12275
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test11movable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13new_allocatorIS6_EEE13insert_uniqueEOS6_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.271") align 8 %11, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 4 dereferenceable(8) %8)
          to label %bb.c unwind label %.body

.body:                                            ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21, !noalias !12275
  %i.s = add i32 %i.r, -2
  store i32 %i.s, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21, !noalias !12275
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24, !noalias !12275
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.u

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24, !noalias !12275
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24, !noalias !12280
  store i32 %i.o, ptr %7, align 4, !tbaa !830, !noalias !12280
  store i32 %i.p, ptr %i.l, align 4, !tbaa !830, !noalias !12280
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test11movable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13new_allocatorIS6_EEE13insert_uniqueEOS6_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.271") align 8 %12, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 4 dereferenceable(8) %7)
          to label %bb.d unwind label %.body99

.body99:                                          ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21, !noalias !12280
  %i.v = add i32 %i.u, -2
  store i32 %i.v, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21, !noalias !12280
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24, !noalias !12280
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.u

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21, !noalias !12280 ; 2 uses
  %i.x = add i32 %i.w, -2
  store i32 %i.x, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21, !noalias !12280
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24, !noalias !12280
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.y = add nuw nsw i64 %.065348, 1              ; 2 uses
  %.not = icmp eq i64 %i.y, 100
  br i1 %.not, label %_ZN5boost9container6vectorISt4pairINS0_4test11movable_intES4_ENS0_13new_allocatorIS5_EEvED2Ev.exit, label %bb.b, !llvm.loop !12285

_ZN5boost9container6vectorISt4pairINS0_4test11movable_intES4_ENS0_13new_allocatorIS5_EEvED2Ev.exit: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %i.z = load ptr, ptr %9, align 8, !tbaa !12212, !noalias !12286 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.ae = load <2 x i64>, ptr %i.aa, align 8, !tbaa !1562, !noalias !12286
  %i.af = load i64, ptr %i.aa, align 8, !tbaa !12289, !noalias !12286 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false), !noalias !12286
  store ptr %i.z, ptr %13, align 8, !tbaa !12212
  store <2 x i64> %i.ae, ptr %i.ac, align 8, !tbaa !1562
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !12202 ; 2 uses
  %.not.i = icmp eq i64 %i.af, %i.ah
  br i1 %.not.i, label %bb.e, label %.critedgethread-pre-split

bb.e:                                             ; preds = %_ZN5boost9container6vectorISt4pairINS0_4test11movable_intES4_ENS0_13new_allocatorIS5_EEvED2Ev.exit
  %.idx.i = shl nsw i64 %i.af, 3
  %i.ai = getelementptr inbounds i8, ptr %i.z, i64 %.idx.i
  %.not2526.i = icmp eq i64 %i.af, 0
  br i1 %.not2526.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairINS1_11movable_intES5_ENS0_13new_allocatorIS6_EEvEENS0_8flat_mapIS5_S5_St4lessIS5_ES8_EEEEbRKT_RKT0_.exit.preheader, label %.lr.ph.preheader.i

_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairINS1_11movable_intES5_ENS0_13new_allocatorIS6_EEvEENS0_8flat_mapIS5_S5_St4lessIS5_ES8_EEEEbRKT_RKT0_.exit.preheader: ; preds = %bb.f, %bb.e
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairINS1_11movable_intES5_ENS0_13new_allocatorIS6_EEvEENS0_8flat_mapIS5_S5_St4lessIS5_ES8_EEEEbRKT_RKT0_.exit

.lr.ph.preheader.i:                               ; preds = %bb.e
  %i.aj = load ptr, ptr %10, align 8, !tbaa !12212, !noalias !12290
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.preheader.i
  %.sroa.021.028.i = phi ptr [ %i.aq, %bb.f ], [ %i.z, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.016.027.i = phi ptr [ %i.ar, %bb.f ], [ %i.aj, %.lr.ph.preheader.i ] ; 2 uses
  %i.ak = load <2 x i32>, ptr %.sroa.021.028.i, align 4
  %i.al = load <2 x i32>, ptr %.sroa.016.027.i, align 4
  %i.am = icmp eq <2 x i32> %i.ak, %i.al          ; 2 uses
  %i.an = extractelement <2 x i1> %i.am, i64 0
  %i.ao = extractelement <2 x i1> %i.am, i64 1
  %i.ap = select i1 %i.an, i1 %i.ao, i1 false
  br i1 %i.ap, label %bb.f, label %.critedgethread-pre-split

bb.f:                                             ; preds = %.lr.ph.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.021.028.i, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.016.027.i, i64 8
  %.not25.i = icmp eq ptr %i.aq, %i.ai
  br i1 %.not25.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairINS1_11movable_intES5_ENS0_13new_allocatorIS6_EEvEENS0_8flat_mapIS5_S5_St4lessIS5_ES8_EEEEbRKT_RKT0_.exit.preheader, label %.lr.ph.i, !llvm.loop !12299

bb.g:                                             ; preds = %_ZN5boost9container4test14random_shuffleINS0_12vec_iteratorIPSt4pairINS1_11movable_intES5_ELb0EEEEEvT_S9_.exit
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.h:                                             ; preds = %_ZN5boost9container6vectorISt4pairINS0_4test11movable_intES4_ENS0_13new_allocatorIS5_EEvE12emplace_backIJiiEEERS5_DpOT_.exit
  %i.at = load ptr, ptr %13, align 8, !tbaa !12212, !noalias !12300 ; 2 uses
  %i.au = load i64, ptr %i.ac, align 8, !tbaa !12202, !noalias !12303 ; 2 uses
  %i.av = icmp sgt i64 %i.au, 1
  br i1 %i.av, label %.lr.ph.i102, label %_ZN5boost9container4test14random_shuffleINS0_12vec_iteratorIPSt4pairINS1_11movable_intES5_ELb0EEEEEvT_S9_.exit

.lr.ph.i102:                                      ; preds = %bb.h, %bb.j
  %.0.in10.i = phi i64 [ %.011.i, %bb.j ], [ %i.au, %bb.h ] ; 3 uses
  %.011.i = add nsw i64 %.0.in10.i, -1            ; 3 uses
  %i.aw = call i32 @rand() #24
  %i.ax = sext i32 %i.aw to i64
  %i.ay = srem i64 %i.ax, %.0.in10.i              ; 2 uses
  %.not.i103 = icmp eq i64 %i.ay, %.011.i
  br i1 %.not.i103, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i102
  %i.az = getelementptr inbounds [8 x i8], ptr %i.at, i64 %.011.i ; 4 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.ay ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bc = load <2 x i32>, ptr %i.az, align 4, !tbaa !830
  store i32 0, ptr %i.az, align 4, !tbaa !830
  store i32 0, ptr %i.bb, align 4, !tbaa !830
  %i.bd = load <2 x i32>, ptr %i.ba, align 4, !tbaa !830
  store <2 x i32> %i.bd, ptr %i.az, align 4, !tbaa !830
  store <2 x i32> %i.bc, ptr %i.ba, align 4, !tbaa !830
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i102
  %i.be = icmp samesign ugt i64 %.0.in10.i, 2
  br i1 %i.be, label %.lr.ph.i102, label %_ZN5boost9container4test14random_shuffleINS0_12vec_iteratorIPSt4pairINS1_11movable_intES5_ELb0EEEEEvT_S9_.exit, !llvm.loop !12306

_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairINS1_11movable_intES5_ENS0_13new_allocatorIS6_EEvEENS0_8flat_mapIS5_S5_St4lessIS5_ES8_EEEEbRKT_RKT0_.exit: ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairINS1_11movable_intES5_ENS0_13new_allocatorIS6_EEvEENS0_8flat_mapIS5_S5_St4lessIS5_ES8_EEEEbRKT_RKT0_.exit.preheader, %_ZN5boost9container6vectorISt4pairINS0_4test11movable_intES4_ENS0_13new_allocatorIS5_EEvE12emplace_backIJiiEEERS5_DpOT_.exit
  %.047349 = phi i64 [ %i.bs, %_ZN5boost9container6vectorISt4pairINS0_4test11movable_intES4_ENS0_13new_allocatorIS5_EEvE12emplace_backIJiiEEERS5_DpOT_.exit ], [ 0, %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairINS1_11movable_intES5_ENS0_13new_allocatorIS6_EEvEENS0_8flat_mapIS5_S5_St4lessIS5_ES8_EEEEbRKT_RKT0_.exit.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.bf = trunc i64 %.047349 to i32               ; 3 uses
  store i32 %i.bf, ptr %i.a, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.bg = sub nsw i32 0, %i.bf
  store i32 %i.bg, ptr %i.b, align 4, !tbaa !21
  %i.bh = load i64, ptr %i.ac, align 8, !tbaa !12202 ; 4 uses
  %i.bi = load i64, ptr %i.ad, align 8, !tbaa !12206
  %.not.i104 = icmp eq i64 %i.bh, %i.bi
  br i1 %.not.i104, label %bb.l, label %bb.k, !prof !306

bb.k:                                             ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairINS1_11movable_intES5_ENS0_13new_allocatorIS6_EEvEENS0_8flat_mapIS5_S5_St4lessIS5_ES8_EEEEbRKT_RKT0_.exit
  %i.bj = load ptr, ptr %13, align 8, !tbaa !12212, !nonnull !400, !noundef !400
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bh ; 2 uses
  store i32 %i.bf, ptr %i.bk, align 4, !tbaa !830
  %i.bl = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bn = load i32, ptr %i.b, align 4, !tbaa !21
  store i32 %i.bn, ptr %i.bm, align 4, !tbaa !830
  %i.bo = add i32 %i.bl, 2
  store i32 %i.bo, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21
  %i.bp = add i64 %i.bh, 1
  store i64 %i.bp, ptr %i.ac, align 8, !tbaa !12202
  br label %_ZN5boost9container6vectorISt4pairINS0_4test11movable_intES4_ENS0_13new_allocatorIS5_EEvE12emplace_backIJiiEEERS5_DpOT_.exit

bb.l:                                             ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairINS1_11movable_intES5_ENS0_13new_allocatorIS6_EEvEENS0_8flat_mapIS5_S5_St4lessIS5_ES8_EEEEbRKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.bq = load ptr, ptr %13, align 8, !tbaa !12212
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bh
  invoke void @_ZN5boost9container6vectorISt4pairINS0_4test11movable_intES4_ENS0_13new_allocatorIS5_EEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS7_JiiEEEEENS0_12vec_iteratorIPS5_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.250") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef %i.br, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.b, ptr nonnull align 4 dereferenceable(4) %i.a)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %_ZN5boost9container6vectorISt4pairINS0_4test11movable_intES4_ENS0_13new_allocatorIS5_EEvE12emplace_backIJiiEEERS5_DpOT_.exit

_ZN5boost9container6vectorISt4pairINS0_4test11movable_intES4_ENS0_13new_allocatorIS5_EEvE12emplace_backIJiiEEERS5_DpOT_.exit: ; preds = %.noexc, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.bs = add nuw nsw i64 %.047349, 1             ; 2 uses
  %.not71 = icmp eq i64 %i.bs, 100
  br i1 %.not71, label %bb.h, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairINS1_11movable_intES5_ENS0_13new_allocatorIS6_EEvEENS0_8flat_mapIS5_S5_St4lessIS5_ES8_EEEEbRKT_RKT0_.exit, !llvm.loop !12307

bb.m:                                             ; preds = %bb.l
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.t

_ZN5boost9container4test14random_shuffleINS0_12vec_iteratorIPSt4pairINS1_11movable_intES5_ELb0EEEEEvT_S9_.exit: ; preds = %bb.j, %bb.h
  invoke void @_ZN5boost9container3dtl31flat_tree_adopt_sequence_uniqueINS0_6vectorISt4pairINS0_4test11movable_intES6_ENS0_13new_allocatorIS7_EEvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_OSH_T0_NS_11move_detail5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %_ZN5boost9container8flat_mapINS0_4test11movable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEE14adopt_sequenceEONS0_6vectorIS8_S9_vEE.exit unwind label %bb.g

_ZN5boost9container8flat_mapINS0_4test11movable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEE14adopt_sequenceEONS0_6vectorIS8_S9_vEE.exit: ; preds = %_ZN5boost9container4test14random_shuffleINS0_12vec_iteratorIPSt4pairINS1_11movable_intES5_ELb0EEEEEvT_S9_.exit
  %i.bu = load i64, ptr %i.aa, align 8, !tbaa !12202 ; 5 uses
  %i.bv = load i64, ptr %i.ag, align 8, !tbaa !12202 ; 2 uses
  %.not.i106 = icmp eq i64 %i.bu, %i.bv
  br i1 %.not.i106, label %bb.n, label %.critedgethread-pre-split

bb.n:                                             ; preds = %_ZN5boost9container8flat_mapINS0_4test11movable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEE14adopt_sequenceEONS0_6vectorIS8_S9_vEE.exit
  %i.bw = load ptr, ptr %9, align 8, !tbaa !12212, !noalias !12308 ; 3 uses
  %.idx.i108 = shl nsw i64 %i.bu, 3
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 %.idx.i108 ; 2 uses
  %.not2526.i109 = icmp eq i64 %i.bu, 0
  br i1 %.not2526.i109, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairINS1_11movable_intES5_ENS0_13new_allocatorIS6_EEvEES9_EEbRKT_RKT0_.exit, label %.lr.ph.preheader.i110

.lr.ph.preheader.i110:                            ; preds = %bb.n
  %i.by = load ptr, ptr %10, align 8, !tbaa !12212, !noalias !12317 ; 2 uses
  br label %.lr.ph.i111

.lr.ph.i111:                                      ; preds = %bb.o, %.lr.ph.preheader.i110
  %.sroa.021.028.i112 = phi ptr [ %i.cf, %bb.o ], [ %i.bw, %.lr.ph.preheader.i110 ] ; 2 uses
  %.sroa.016.027.i113 = phi ptr [ %i.cg, %bb.o ], [ %i.by, %.lr.ph.preheader.i110 ] ; 2 uses
  %i.bz = load <2 x i32>, ptr %.sroa.021.028.i112, align 4
  %i.ca = load <2 x i32>, ptr %.sroa.016.027.i113, align 4
  %i.cb = icmp eq <2 x i32> %i.bz, %i.ca          ; 2 uses
  %i.cc = extractelement <2 x i1> %i.cb, i64 0
  %i.cd = extractelement <2 x i1> %i.cb, i64 1
  %i.ce = select i1 %i.cc, i1 %i.cd, i1 false
  br i1 %i.ce, label %bb.o, label %.critedgethread-pre-split

bb.o:                                             ; preds = %.lr.ph.i111
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.021.028.i112, i64 8 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.016.027.i113, i64 8
  %.not25.i114 = icmp eq ptr %i.cf, %i.bx
  br i1 %.not25.i114, label %.lr.ph.i120, label %.lr.ph.i111, !llvm.loop !12326

.lr.ph.i120:                                      ; preds = %bb.o, %.lr.ph.i120
  %.sroa.021.028.i121 = phi ptr [ %i.cn, %.lr.ph.i120 ], [ %i.bw, %bb.o ] ; 2 uses
  %.sroa.016.027.i122 = phi ptr [ %i.co, %.lr.ph.i120 ], [ %i.by, %bb.o ] ; 2 uses
  %i.ch = load <2 x i32>, ptr %.sroa.021.028.i121, align 4
  %i.ci = load <2 x i32>, ptr %.sroa.016.027.i122, align 4
  %i.cj = icmp eq <2 x i32> %i.ch, %i.ci          ; 2 uses
  %i.ck = extractelement <2 x i1> %i.cj, i64 0
  %i.cl = extractelement <2 x i1> %i.cj, i64 1
  %i.cm = select i1 %i.ck, i1 %i.cl, i1 false     ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.021.028.i121, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.016.027.i122, i64 8
  %.not25.i123 = icmp ne ptr %i.cn, %i.bx
  %or.cond.not = select i1 %i.cm, i1 %.not25.i123, i1 false
  br i1 %or.cond.not, label %.lr.ph.i120, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairINS1_11movable_intES5_ENS0_13new_allocatorIS6_EEvEES9_EEbRKT_RKT0_.exit, !llvm.loop !12327

_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairINS1_11movable_intES5_ENS0_13new_allocatorIS6_EEvEES9_EEbRKT_RKT0_.exit: ; preds = %.lr.ph.i120, %bb.n
  %.2.i116 = phi i1 [ true, %bb.n ], [ %i.cm, %.lr.ph.i120 ]
  %i.cp = load i64, ptr %i.ac, align 8, !tbaa !12202 ; 2 uses
  %.not3.i.i124 = icmp eq i64 %i.cp, 0
  br i1 %.not3.i.i124, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test11movable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i127, label %.lr.ph.preheader.i.i125

.lr.ph.preheader.i.i125:                          ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairINS1_11movable_intES5_ENS0_13new_allocatorIS6_EEvEES9_EEbRKT_RKT0_.exit
  %_ZN5boost9container4test11movable_int5countE.promoted.i.i126 = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = shl i32 %i.cq, 1
  %i.cs = sub i32 %_ZN5boost9container4test11movable_int5countE.promoted.i.i126, %i.cr
  store i32 %i.cs, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21
  br label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test11movable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i127

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test11movable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i127: ; preds = %.lr.ph.preheader.i.i125, %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairINS1_11movable_intES5_ENS0_13new_allocatorIS6_EEvEES9_EEbRKT_RKT0_.exit
  %i.ct = load i64, ptr %i.ad, align 8, !tbaa !12206 ; 2 uses
  %.not.i.i128 = icmp eq i64 %i.ct, 0
  br i1 %.not.i.i128, label %_ZN5boost9container6vectorISt4pairINS0_4test11movable_intES4_ENS0_13new_allocatorIS5_EEvED2Ev.exit129, label %bb.p

bb.p:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test11movable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i127
  %i.cu = load ptr, ptr %13, align 8, !tbaa !12207
  %i.cv = shl i64 %i.ct, 3
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cv) #24
  %.pre359 = load i64, ptr %i.ag, align 8, !tbaa !12202
  br label %_ZN5boost9container6vectorISt4pairINS0_4test11movable_intES4_ENS0_13new_allocatorIS5_EEvED2Ev.exit129

_ZN5boost9container6vectorISt4pairINS0_4test11movable_intES4_ENS0_13new_allocatorIS5_EEvED2Ev.exit129: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test11movable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i127, %bb.p
  %i.cw = phi i64 [ %i.bu, %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test11movable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i127 ], [ %.pre359, %bb.p ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  %.not3.i.i.i.i.i = icmp eq i64 %i.cw, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test11movable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZN5boost9container6vectorISt4pairINS0_4test11movable_intES4_ENS0_13new_allocatorIS5_EEvED2Ev.exit129
  %_ZN5boost9container4test11movable_int5countE.promoted.i.i.i.i.i = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4
  %i.cx = trunc i64 %i.cw to i32
  %i.cy = shl i32 %i.cx, 1
  %i.cz = sub i32 %_ZN5boost9container4test11movable_int5countE.promoted.i.i.i.i.i, %i.cy
  store i32 %i.cz, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21
  br label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test11movable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test11movable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i, %_ZN5boost9container6vectorISt4pairINS0_4test11movable_intES4_ENS0_13new_allocatorIS5_EEvED2Ev.exit129
  %i.da = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.db = load i64, ptr %i.da, align 8, !tbaa !12206 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.db, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container8flat_mapINS0_4test11movable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test11movable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i
  %i.dc = load ptr, ptr %10, align 8, !tbaa !12207
  %i.dd = shl i64 %i.db, 3
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.dd) #24
  br label %_ZN5boost9container8flat_mapINS0_4test11movable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEED2Ev.exit

_ZN5boost9container8flat_mapINS0_4test11movable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEED2Ev.exit: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test11movable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  %i.de = load i64, ptr %i.aa, align 8, !tbaa !12202 ; 2 uses
  %.not3.i.i.i.i.i130 = icmp eq i64 %i.de, 0
  br i1 %.not3.i.i.i.i.i130, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test11movable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i133, label %.lr.ph.preheader.i.i.i.i.i131

.lr.ph.preheader.i.i.i.i.i131:                    ; preds = %_ZN5boost9container8flat_mapINS0_4test11movable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEED2Ev.exit
  %_ZN5boost9container4test11movable_int5countE.promoted.i.i.i.i.i132 = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4
  %i.df = trunc i64 %i.de to i32
  %i.dg = shl i32 %i.df, 1
  %i.dh = sub i32 %_ZN5boost9container4test11movable_int5countE.promoted.i.i.i.i.i132, %i.dg
  store i32 %i.dh, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21
  br label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test11movable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i133

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test11movable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i133: ; preds = %.lr.ph.preheader.i.i.i.i.i131, %_ZN5boost9container8flat_mapINS0_4test11movable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEED2Ev.exit
  %i.di = load i64, ptr %i.ab, align 8, !tbaa !12206 ; 2 uses
  %.not.i.i.i.i.i134 = icmp eq i64 %i.di, 0
  br i1 %.not.i.i.i.i.i134, label %_ZN5boost9container8flat_mapINS0_4test11movable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEED2Ev.exit135, label %bb.r

bb.r:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test11movable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i133
  %i.dj = load ptr, ptr %9, align 8, !tbaa !12207
  %i.dk = shl i64 %i.di, 3
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dk) #24
  br label %_ZN5boost9container8flat_mapINS0_4test11movable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEED2Ev.exit135

_ZN5boost9container8flat_mapINS0_4test11movable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEED2Ev.exit135: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test11movable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i133, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br i1 %.2.i116, label %bb.s, label %bb.bu

end_hunk_4
begin_hunk_5_@_ZN5boost7movelib17op_buffered_mergeINS_9container12vec_iteratorIPSt4pairINS2_4test11movable_intES6_ELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEENS0_7move_opENS0_10range_xbufIS8_mSH_EEEEvT_SK_SK_T0_T1_RT2_:bb.a

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.040.1 = phi ptr [ %i.dj, %bb.f ], [ %.sroa.040.0, %bb.g ]
  %.1.i8 = phi ptr [ %.015.i, %bb.f ], [ %i.dm, %bb.g ] ; 2 uses
  %i.dn = getelementptr i8, ptr %.sroa.041.0, i64 8
  %.not.i9 = icmp eq ptr %.1.i8, %.lcssa116
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i9, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test11movable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_NS2_12vec_iteratorISE_Lb0EEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %.lr.ph.i7, !llvm.loop !15493

.lr.ph.i13:                                       ; preds = %bb.d, %.lr.ph.i13
  %i.do = phi ptr [ %i.dv, %.lr.ph.i13 ], [ %i.b, %bb.d ] ; 2 uses
  %.010.i14 = phi i64 [ %.1.i16, %.lr.ph.i13 ], [ %i.n, %bb.d ] ; 2 uses
  %i.dp = lshr i64 %.010.i14, 1                   ; 3 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.dp ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !830, !noalias !16179
  %i.ds = icmp slt i32 %i.dr, %i.f                ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %.neg.i15 = xor i64 %i.dp, -1
  %i.du = add i64 %.010.i14, %.neg.i15
  %i.dv = select i1 %i.ds, ptr %i.dt, ptr %i.do   ; 5 uses
  %.1.i16 = select i1 %i.ds, i64 %i.du, i64 %i.dp ; 2 uses
  %.not.i17 = icmp eq i64 %.1.i16, 0
  br i1 %.not.i17, label %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairINS2_4test11movable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEET_SH_SH_RKT0_T1_.exit, label %.lr.ph.i13, !llvm.loop !15446

_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairINS2_4test11movable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEET_SH_SH_RKT0_T1_.exit: ; preds = %.lr.ph.i13
  %i.dw = ptrtoaddr ptr %i.dv to i64              ; 2 uses
  store ptr %i.dv, ptr %2, align 8, !tbaa !12406
  %i.dx = load ptr, ptr %1, align 8, !tbaa !12207 ; 9 uses
  %i.dy = ptrtoaddr ptr %i.dx to i64              ; 2 uses
  %i.dz = load ptr, ptr %3, align 8, !tbaa !13939 ; 10 uses
  %.not3.i.i.i18 = icmp eq ptr %i.dv, %i.dx
  br i1 %.not3.i.i.i18, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test11movable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_NS2_12vec_iteratorISE_Lb0EEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit.sink.split, label %.lr.ph.i.i.i19.preheader

.lr.ph.i.i.i19.preheader:                         ; preds = %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairINS2_4test11movable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEET_SH_SH_RKT0_T1_.exit
  %i.ea = add i64 %i.dw, -8
  %i.eb = sub i64 %i.ea, %i.dy                    ; 2 uses
  %i.ec = lshr i64 %i.eb, 3
  %i.ed = add nuw nsw i64 %i.ec, 1                ; 2 uses
  %min.iters.check171 = icmp ult i64 %i.eb, 72
  br i1 %min.iters.check171, label %.lr.ph.i.i.i19.preheader196, label %vector.memcheck162

vector.memcheck162:                               ; preds = %.lr.ph.i.i.i19.preheader
  %reass.sub = sub i64 %i.dw, %i.dy
  %i.ee = and i64 %reass.sub, -8                  ; 2 uses
  %scevgep164 = getelementptr i8, ptr %i.dz, i64 %i.ee
  %scevgep166 = getelementptr i8, ptr %i.dx, i64 %i.ee
  %bound0167 = icmp ult ptr %i.dz, %scevgep166
  %bound1168 = icmp ult ptr %i.dx, %scevgep164
  %found.conflict169 = and i1 %bound0167, %bound1168
  br i1 %found.conflict169, label %.lr.ph.i.i.i19.preheader196, label %vector.ph172

vector.ph172:                                     ; preds = %vector.memcheck162
  %n.vec173 = and i64 %i.ed, 4611686018427387900  ; 3 uses
  %i.ef = shl i64 %n.vec173, 3                    ; 2 uses
  %i.eg = getelementptr i8, ptr %i.dx, i64 %i.ef
  %i.eh = getelementptr i8, ptr %i.dz, i64 %i.ef  ; 2 uses
  br label %vector.body174

vector.body174:                                   ; preds = %vector.body174, %vector.ph172
  %index175 = phi i64 [ 0, %vector.ph172 ], [ %index.next188, %vector.body174 ] ; 2 uses
  %i.ei = shl i64 %index175, 3                    ; 3 uses
  %i.ej = or disjoint i64 %i.ei, 16               ; 2 uses
  %next.gep176 = getelementptr i8, ptr %i.dx, i64 %i.ei ; 2 uses
  %next.gep177 = getelementptr i8, ptr %i.dx, i64 %i.ej ; 2 uses
  %next.gep178 = getelementptr i8, ptr %i.dz, i64 %i.ei
  %next.gep179 = getelementptr i8, ptr %i.dz, i64 %i.ej
  %wide.vec180 = load <4 x i32>, ptr %next.gep176, align 4, !tbaa !830, !alias.scope !16182
  %wide.vec183 = load <4 x i32>, ptr %next.gep177, align 4, !tbaa !830, !alias.scope !16182
  store <4 x i32> %wide.vec180, ptr %next.gep178, align 4, !tbaa !830, !alias.scope !16185, !noalias !16182
  store <4 x i32> %wide.vec183, ptr %next.gep179, align 4, !tbaa !830, !alias.scope !16185, !noalias !16182
  store <4 x i32> zeroinitializer, ptr %next.gep176, align 4, !tbaa !830, !alias.scope !16182
  store <4 x i32> zeroinitializer, ptr %next.gep177, align 4, !tbaa !830, !alias.scope !16182
  %index.next188 = add nuw i64 %index175, 4       ; 2 uses
  %i.ek = icmp eq i64 %index.next188, %n.vec173
  br i1 %i.ek, label %middle.block189, label %vector.body174, !llvm.loop !16187

middle.block189:                                  ; preds = %vector.body174
  %cmp.n190 = icmp eq i64 %i.ed, %n.vec173
  br i1 %cmp.n190, label %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test11movable_intES5_EmNS0_7move_opEE11move_assignINS3_12vec_iteratorIS7_Lb0EEEEEvT_m.exit23, label %.lr.ph.i.i.i19.preheader196

.lr.ph.i.i.i19.preheader196:                      ; preds = %vector.memcheck162, %.lr.ph.i.i.i19.preheader, %middle.block189
  %.ph = phi ptr [ %i.dx, %vector.memcheck162 ], [ %i.dx, %.lr.ph.i.i.i19.preheader ], [ %i.eg, %middle.block189 ]
  %.04.i.i.i20.ph = phi ptr [ %i.dz, %vector.memcheck162 ], [ %i.dz, %.lr.ph.i.i.i19.preheader ], [ %i.eh, %middle.block189 ]
  br label %.lr.ph.i.i.i19

.lr.ph.i.i.i19:                                   ; preds = %.lr.ph.i.i.i19.preheader196, %.lr.ph.i.i.i19
  %i.el = phi ptr [ %i.eq, %.lr.ph.i.i.i19 ], [ %.ph, %.lr.ph.i.i.i19.preheader196 ] ; 4 uses
  %.04.i.i.i20 = phi ptr [ %i.er, %.lr.ph.i.i.i19 ], [ %.04.i.i.i20.ph, %.lr.ph.i.i.i19.preheader196 ] ; 3 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !830
  store i32 %i.em, ptr %.04.i.i.i20, align 4, !tbaa !830
  store i32 0, ptr %i.el, align 4, !tbaa !830
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 4 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.04.i.i.i20, i64 4
  %i.ep = load i32, ptr %i.en, align 4, !tbaa !830
  store i32 %i.ep, ptr %i.eo, align 4, !tbaa !830
  store i32 0, ptr %i.en, align 4, !tbaa !830
  %i.eq = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.04.i.i.i20, i64 8 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.eq, %i.dv
  br i1 %.not.i.i.i21, label %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test11movable_intES5_EmNS0_7move_opEE11move_assignINS3_12vec_iteratorIS7_Lb0EEEEEvT_m.exit23, label %.lr.ph.i.i.i19, !llvm.loop !16188

_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test11movable_intES5_EmNS0_7move_opEE11move_assignINS3_12vec_iteratorIS7_Lb0EEEEEvT_m.exit23: ; preds = %.lr.ph.i.i.i19, %middle.block189
  %.lcssa = phi ptr [ %i.eh, %middle.block189 ], [ %i.er, %.lr.ph.i.i.i19 ] ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.lcssa, ptr %i.es, align 8, !tbaa !13941
  %i.et = load ptr, ptr %0, align 8, !tbaa !12207
  %i.eu = load ptr, ptr %1, align 8, !tbaa !12207
  %i.ev = load ptr, ptr %2, align 8, !tbaa !12207
  br label %.lr.ph.i24

.lr.ph.i24:                                       ; preds = %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test11movable_intES5_EmNS0_7move_opEE11move_assignINS3_12vec_iteratorIS7_Lb0EEEEEvT_m.exit23, %bb.l
  %.sroa.032.0 = phi ptr [ %i.eu, %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test11movable_intES5_EmNS0_7move_opEE11move_assignINS3_12vec_iteratorIS7_Lb0EEEEEvT_m.exit23 ], [ %.sroa.032.1, %bb.l ] ; 4 uses
  %.sroa.0.0 = phi ptr [ %i.ev, %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test11movable_intES5_EmNS0_7move_opEE11move_assignINS3_12vec_iteratorIS7_Lb0EEEEEvT_m.exit23 ], [ %i.fj, %bb.l ] ; 3 uses
  %.016.i = phi ptr [ %.lcssa, %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test11movable_intES5_EmNS0_7move_opEE11move_assignINS3_12vec_iteratorIS7_Lb0EEEEEvT_m.exit23 ], [ %.1.i25, %bb.l ] ; 4 uses
  %i.ew = icmp eq ptr %i.et, %.sroa.032.0
  br i1 %i.ew, label %.lr.ph.i.i.i27, label %bb.i

.lr.ph.i.i.i27:                                   ; preds = %.lr.ph.i24, %.lr.ph.i.i.i27
  %i.ex = phi ptr [ %i.ez, %.lr.ph.i.i.i27 ], [ %.sroa.0.0, %.lr.ph.i24 ] ; 2 uses
  %.05.i.i.i28 = phi ptr [ %i.ey, %.lr.ph.i.i.i27 ], [ %.016.i, %.lr.ph.i24 ] ; 2 uses
  %i.ey = getelementptr inbounds i8, ptr %.05.i.i.i28, i64 -8 ; 4 uses
  %i.ez = getelementptr inbounds i8, ptr %i.ex, i64 -8 ; 2 uses
  %i.fa = load i32, ptr %i.ey, align 4, !tbaa !830, !noalias !16189
  store i32 %i.fa, ptr %i.ez, align 4, !tbaa !830, !noalias !16189
  store i32 0, ptr %i.ey, align 4, !tbaa !830, !noalias !16189
  %i.fb = getelementptr inbounds i8, ptr %.05.i.i.i28, i64 -4 ; 2 uses
  %i.fc = getelementptr inbounds i8, ptr %i.ex, i64 -4
  %i.fd = load i32, ptr %i.fb, align 4, !tbaa !830, !noalias !16189
  store i32 %i.fd, ptr %i.fc, align 4, !tbaa !830, !noalias !16189
  store i32 0, ptr %i.fb, align 4, !tbaa !830, !noalias !16189
  %.not.i.i.i29 = icmp eq ptr %i.dz, %i.ey
  br i1 %.not.i.i.i29, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test11movable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_NS2_12vec_iteratorISE_Lb0EEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %.lr.ph.i.i.i27, !llvm.loop !15516

bb.i:                                             ; preds = %.lr.ph.i24
  %i.fe = getelementptr inbounds i8, ptr %.016.i, i64 -8 ; 3 uses
  %i.ff = getelementptr inbounds i8, ptr %.sroa.032.0, i64 -8 ; 3 uses
  %i.fg = load i32, ptr %i.fe, align 4, !tbaa !830 ; 2 uses
  %i.fh = load i32, ptr %i.ff, align 4, !tbaa !830 ; 2 uses
  %i.fi = icmp slt i32 %i.fg, %i.fh
  %i.fj = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -8 ; 3 uses
  %i.fk = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -4
  br i1 %i.fi, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.fh, ptr %i.fj, align 4, !tbaa !830
  store i32 0, ptr %i.ff, align 4, !tbaa !830
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  store i32 %i.fg, ptr %i.fj, align 4, !tbaa !830
  store i32 0, ptr %i.fe, align 4, !tbaa !830
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.016.i.sink = phi ptr [ %.016.i, %bb.k ], [ %.sroa.032.0, %bb.j ]
  %.sroa.032.1 = phi ptr [ %.sroa.032.0, %bb.k ], [ %i.ff, %bb.j ]
  %.1.i25 = phi ptr [ %i.fe, %bb.k ], [ %.016.i, %bb.j ] ; 2 uses
  %i.fl = getelementptr inbounds i8, ptr %.016.i.sink, i64 -4 ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !830
  store i32 %i.fm, ptr %i.fk, align 4, !tbaa !830
  store i32 0, ptr %i.fl, align 4, !tbaa !830
  %.not.i26 = icmp eq ptr %i.dz, %.1.i25
  br i1 %.not.i26, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test11movable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_NS2_12vec_iteratorISE_Lb0EEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %.lr.ph.i24, !llvm.loop !15517

_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test11movable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_NS2_12vec_iteratorISE_Lb0EEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit.sink.split: ; preds = %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairINS2_4test11movable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEET_SH_SH_RKT0_T1_.exit, %_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairINS2_4test11movable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEET_SH_SH_RKT0_T1_.exit
  %.sink = phi ptr [ %i.z, %_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairINS2_4test11movable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEET_SH_SH_RKT0_T1_.exit ], [ %i.dz, %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairINS2_4test11movable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEET_SH_SH_RKT0_T1_.exit ]
  %i.fn = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sink, ptr %i.fn, align 8, !tbaa !13941
  br label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test11movable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_NS2_12vec_iteratorISE_Lb0EEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit

_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test11movable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_NS2_12vec_iteratorISE_Lb0EEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit: ; preds = %bb.h, %.lr.ph.i.i.i10.prol.loopexit, %.lr.ph.i.i.i10, %bb.l, %.lr.ph.i.i.i27, %middle.block158, %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test11movable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_NS2_12vec_iteratorISE_Lb0EEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit.sink.split, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container4test14random_shuffleINS0_12vec_iteratorIPSt4pairINS1_11movable_intES5_ELb0EEEEEvT_S9_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !12406
  %i.b = load ptr, ptr %0, align 8, !tbaa !12406
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
  %i.h = tail call i32 @rand() #24
  %i.i = sext i32 %i.h to i64
  %i.j = srem i64 %i.i, %.0.in10                  ; 2 uses
  %.not = icmp eq i64 %i.j, %.011
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = load ptr, ptr %0, align 8, !tbaa !12406  ; 2 uses
  %i.l = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.011 ; 4 uses
  %i.m = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.j ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.o = load <2 x i32>, ptr %i.l, align 4, !tbaa !830
  store i32 0, ptr %i.l, align 4, !tbaa !830
  store i32 0, ptr %i.n, align 4, !tbaa !830
  %i.p = load <2 x i32>, ptr %i.m, align 4, !tbaa !830
  store <2 x i32> %i.p, ptr %i.l, align 4, !tbaa !830
  store <2 x i32> %i.o, ptr %i.m, align 4, !tbaa !830
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.q = icmp samesign ugt i64 %.0.in10, 2
  br i1 %i.q, label %.lr.ph, label %._crit_edge, !llvm.loop !12306
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container8flat_mapINS0_4test11movable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEE14adopt_sequenceENS0_22ordered_unique_range_tEONS0_6vectorIS8_S9_vEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i.i = icmp eq ptr %1, %0
  br i1 %.not.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test11movable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13new_allocatorIS6_EEE21adopt_sequence_uniqueENS0_22ordered_unique_range_tEONS0_6vectorIS6_SC_vEE.exit, label %bb.b, !prof !306

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !12202 ; 2 uses
  %.not3.i.i.i.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not3.i.i.i.i.i.i.i, label %_ZN5boost9container6vectorISt4pairINS0_4test11movable_intES4_ENS0_13new_allocatorIS5_EEvE5clearEv.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %bb.b
  %_ZN5boost9container4test11movable_int5countE.promoted.i.i.i.i.i.i.i = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4
  %i.c = trunc i64 %i.b to i32
  %i.d = shl i32 %i.c, 1
  %i.e = sub i32 %_ZN5boost9container4test11movable_int5countE.promoted.i.i.i.i.i.i.i, %i.d
  store i32 %i.e, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21
  br label %_ZN5boost9container6vectorISt4pairINS0_4test11movable_intES4_ENS0_13new_allocatorIS5_EEvE5clearEv.exit.i.i.i.i

_ZN5boost9container6vectorISt4pairINS0_4test11movable_intES4_ENS0_13new_allocatorIS5_EEvE5clearEv.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %bb.b
  store i64 0, ptr %i.a, align 8, !tbaa !12202
  %i.f = load ptr, ptr %0, align 8, !tbaa !15137  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZN5boost9container6vectorISt4pairINS0_4test11movable_intES4_ENS0_13new_allocatorIS5_EEvE16priv_move_assignIS7_EEvONS1_IS5_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS5_SA_E4typeELj0EEENSD_12is_differentISJ_S7_EENSD_5bool_ILb0EEESO_E4typeE.exit.i.i, label %bb.c, !prof !306

bb.c:                                             ; preds = %_ZN5boost9container6vectorISt4pairINS0_4test11movable_intES4_ENS0_13new_allocatorIS5_EEvE5clearEv.exit.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !15138
  %i.i = shl i64 %i.h, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.i) #24
  br label %_ZN5boost9container6vectorISt4pairINS0_4test11movable_intES4_ENS0_13new_allocatorIS5_EEvE16priv_move_assignIS7_EEvONS1_IS5_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS5_SA_E4typeELj0EEENSD_12is_differentISJ_S7_EENSD_5bool_ILb0EEESO_E4typeE.exit.i.i

_ZN5boost9container6vectorISt4pairINS0_4test11movable_intES4_ENS0_13new_allocatorIS5_EEvE16priv_move_assignIS7_EEvONS1_IS5_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS5_SA_E4typeELj0EEENSD_12is_differentISJ_S7_EENSD_5bool_ILb0EEESO_E4typeE.exit.i.i: ; preds = %bb.c, %_ZN5boost9container6vectorISt4pairINS0_4test11movable_intES4_ENS0_13new_allocatorIS5_EEvE5clearEv.exit.i.i.i.i
  %i.j = load ptr, ptr %1, align 8, !tbaa !12212
  store ptr %i.j, ptr %0, align 8, !tbaa !12212
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load <2 x i64>, ptr %i.k, align 8, !tbaa !1562
  store <2 x i64> %i.l, ptr %i.a, align 8, !tbaa !1562
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test11movable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13new_allocatorIS6_EEE21adopt_sequence_uniqueENS0_22ordered_unique_range_tEONS0_6vectorIS6_SC_vEE.exit

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test11movable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13new_allocatorIS6_EEE21adopt_sequence_uniqueENS0_22ordered_unique_range_tEONS0_6vectorIS6_SC_vEE.exit: ; preds = %bb.a, %_ZN5boost9container6vectorISt4pairINS0_4test11movable_intES4_ENS0_13new_allocatorIS5_EEvE16priv_move_assignIS7_EEvONS1_IS5_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS5_SA_E4typeELj0EEENSD_12is_differentISJ_S7_EENSD_5bool_ILb0EEESO_E4typeE.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container13flat_multimapINS0_4test11movable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEE7emplaceIJiiEEENS0_12vec_iteratorIPS8_Lb0EEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.250") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"union.boost::move_detail::aligned_struct_wrapper.88", align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !16194
  %i.a = load i32, ptr %2, align 4, !tbaa !21, !noalias !16194
  store i32 %i.a, ptr %4, align 4, !tbaa !830, !noalias !16194
  %i.b = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21, !noalias !16194 ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21, !noalias !16194
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.e = load i32, ptr %3, align 4, !tbaa !21, !noalias !16194
  store i32 %i.e, ptr %i.d, align 4, !tbaa !830, !noalias !16194
  %i.f = add i32 %i.b, 2
  store i32 %i.f, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21, !noalias !16194
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test11movable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13new_allocatorIS6_EEE12insert_equalEOS6_(ptr dead_on_unwind writable sret(%"class.boost::container::vec_iterator.250") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(8) %4)
          to label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test11movable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13new_allocatorIS6_EEE13emplace_equalIJiiEEENS0_12vec_iteratorIPS6_Lb0EEEDpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21, !noalias !16194
  %i.i = add i32 %i.h, -2
  store i32 %i.i, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21, !noalias !16194
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !16194
  resume { ptr, i32 } %i.g

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test11movable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13new_allocatorIS6_EEE13emplace_equalIJiiEEENS0_12vec_iteratorIPS6_Lb0EEEDpOT_.exit: ; preds = %bb.a
  %i.j = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21, !noalias !16194
  %i.k = add i32 %i.j, -2
  store i32 %i.k, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21, !noalias !16194
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !16194
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container13flat_multimapINS0_4test11movable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEE14adopt_sequenceEONS0_6vectorIS8_S9_vEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::movelib::adaptive_xbuf.260", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !12202 ; 2 uses
  %.not3.i.i.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not3.i.i.i.i.i.i, label %_ZN5boost9container6vectorISt4pairINS0_4test11movable_intES4_ENS0_13new_allocatorIS5_EEvE5clearEv.exit.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.a
  %_ZN5boost9container4test11movable_int5countE.promoted.i.i.i.i.i.i = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4
  %i.c = trunc i64 %i.b to i32
  %i.d = shl i32 %i.c, 1
  %i.e = sub i32 %_ZN5boost9container4test11movable_int5countE.promoted.i.i.i.i.i.i, %i.d
  store i32 %i.e, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21
  br label %_ZN5boost9container6vectorISt4pairINS0_4test11movable_intES4_ENS0_13new_allocatorIS5_EEvE5clearEv.exit.i.i.i

_ZN5boost9container6vectorISt4pairINS0_4test11movable_intES4_ENS0_13new_allocatorIS5_EEvE5clearEv.exit.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %bb.a
  store i64 0, ptr %i.a, align 8, !tbaa !12202
  %i.f = load ptr, ptr %1, align 8, !tbaa !12212
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !12202
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  invoke void @_ZN5boost7movelib15detail_adaptive18adaptive_sort_implIPSt4pairINS_9container4test11movable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_NS0_9iter_sizeISI_E4typeET0_RT1_(ptr noundef %i.f, i64 noundef %i.h, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN5boost9container6vectorISt4pairINS0_4test11movable_intES4_ENS0_13new_allocatorIS5_EEvE5clearEv.exit.i.i.i
  %i.j = load i64, ptr %i.i, align 8, !tbaa !13414 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_6vectorISt4pairINS0_4test11movable_intES6_ENS0_13new_allocatorIS7_EEvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_OSH_T0_.exit.i.i, label %.preheader.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i:                         ; preds = %bb.b
  %_ZN5boost9container4test11movable_int5countE.promoted.i.i.i.i.i.i.i = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4
  %i.k = trunc i64 %i.j to i32
  %i.l = shl i32 %i.k, 1
  %i.m = sub i32 %_ZN5boost9container4test11movable_int5countE.promoted.i.i.i.i.i.i.i, %i.l
  store i32 %i.m, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21
  br label %_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_6vectorISt4pairINS0_4test11movable_intES6_ENS0_13new_allocatorIS7_EEvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_OSH_T0_.exit.i.i

bb.c:                                             ; preds = %_ZN5boost9container6vectorISt4pairINS0_4test11movable_intES4_ENS0_13new_allocatorIS5_EEvE5clearEv.exit.i.i.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load i64, ptr %i.i, align 8, !tbaa !13414 ; 2 uses
  %.not.i.i6.i.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i6.i.i.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test11movable_intES5_EPS6_mED2Ev.exit9.i.i.i.i, label %.preheader.i.i.i7.i.i.i.i

.preheader.i.i.i7.i.i.i.i:                        ; preds = %bb.c
  %_ZN5boost9container4test11movable_int5countE.promoted.i.i.i8.i.i.i.i = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4
  %i.p = trunc i64 %i.o to i32
  %i.q = shl i32 %i.p, 1
  %i.r = sub i32 %_ZN5boost9container4test11movable_int5countE.promoted.i.i.i8.i.i.i.i, %i.q
  store i32 %i.r, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test11movable_intES5_EPS6_mED2Ev.exit9.i.i.i.i

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test11movable_intES5_EPS6_mED2Ev.exit9.i.i.i.i: ; preds = %.preheader.i.i.i7.i.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.n

_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_6vectorISt4pairINS0_4test11movable_intES6_ENS0_13new_allocatorIS7_EEvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_OSH_T0_.exit.i.i: ; preds = %.preheader.i.i.i.i.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %.not.i.i.i = icmp eq ptr %1, %0
  br i1 %.not.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test11movable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13new_allocatorIS6_EEE20adopt_sequence_equalEONS0_6vectorIS6_SC_vEE.exit, label %bb.d, !prof !306

bb.d:                                             ; preds = %_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_6vectorISt4pairINS0_4test11movable_intES6_ENS0_13new_allocatorIS7_EEvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_OSH_T0_.exit.i.i
  %i.s = load i64, ptr %i.a, align 8, !tbaa !12202 ; 2 uses
  %.not3.i.i.i.i.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not3.i.i.i.i.i.i.i.i, label %_ZN5boost9container6vectorISt4pairINS0_4test11movable_intES4_ENS0_13new_allocatorIS5_EEvE5clearEv.exit.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i:                 ; preds = %bb.d
  %_ZN5boost9container4test11movable_int5countE.promoted.i.i.i.i.i.i.i.i = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4
  %i.t = trunc i64 %i.s to i32
  %i.u = shl i32 %i.t, 1
  %i.v = sub i32 %_ZN5boost9container4test11movable_int5countE.promoted.i.i.i.i.i.i.i.i, %i.u
  store i32 %i.v, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !21
  br label %_ZN5boost9container6vectorISt4pairINS0_4test11movable_intES4_ENS0_13new_allocatorIS5_EEvE5clearEv.exit.i.i.i.i.i

_ZN5boost9container6vectorISt4pairINS0_4test11movable_intES4_ENS0_13new_allocatorIS5_EEvE5clearEv.exit.i.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i, %bb.d
  store i64 0, ptr %i.a, align 8, !tbaa !12202
  %i.w = load ptr, ptr %0, align 8, !tbaa !15137  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container6vectorISt4pairINS0_4test11movable_intES4_ENS0_13new_allocatorIS5_EEvE16priv_move_assignIS7_EEvONS1_IS5_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS5_SA_E4typeELj0EEENSD_12is_differentISJ_S7_EENSD_5bool_ILb0EEESO_E4typeE.exit.i.i.i, label %bb.e, !prof !306

bb.e:                                             ; preds = %_ZN5boost9container6vectorISt4pairINS0_4test11movable_intES4_ENS0_13new_allocatorIS5_EEvE5clearEv.exit.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !15138
  %i.z = shl i64 %i.y, 3
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.z) #24
  br label %_ZN5boost9container6vectorISt4pairINS0_4test11movable_intES4_ENS0_13new_allocatorIS5_EEvE16priv_move_assignIS7_EEvONS1_IS5_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS5_SA_E4typeELj0EEENSD_12is_differentISJ_S7_EENSD_5bool_ILb0EEESO_E4typeE.exit.i.i.i

_ZN5boost9container6vectorISt4pairINS0_4test11movable_intES4_ENS0_13new_allocatorIS5_EEvE16priv_move_assignIS7_EEvONS1_IS5_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS5_SA_E4typeELj0EEENSD_12is_differentISJ_S7_EENSD_5bool_ILb0EEESO_E4typeE.exit.i.i.i: ; preds = %bb.e, %_ZN5boost9container6vectorISt4pairINS0_4test11movable_intES4_ENS0_13new_allocatorIS5_EEvE5clearEv.exit.i.i.i.i.i
  %i.aa = load ptr, ptr %1, align 8, !tbaa !12212
  store ptr %i.aa, ptr %0, align 8, !tbaa !12212
  %i.ab = load <2 x i64>, ptr %i.g, align 8, !tbaa !1562
  store <2 x i64> %i.ab, ptr %i.a, align 8, !tbaa !1562
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test11movable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13new_allocatorIS6_EEE20adopt_sequence_equalEONS0_6vectorIS6_SC_vEE.exit

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test11movable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13new_allocatorIS6_EEE20adopt_sequence_equalEONS0_6vectorIS6_SC_vEE.exit: ; preds = %_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_6vectorISt4pairINS0_4test11movable_intES6_ENS0_13new_allocatorIS7_EEvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_OSH_T0_.exit.i.i, %_ZN5boost9container6vectorISt4pairINS0_4test11movable_intES4_ENS0_13new_allocatorIS5_EEvE16priv_move_assignIS7_EEvONS1_IS5_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS5_SA_E4typeELj0EEENSD_12is_differentISJ_S7_EENSD_5bool_ILb0EEESO_E4typeE.exit.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
end_hunk_5
begin_hunk_6_@_ZN5boost9container4test32flat_tree_ordered_insertion_testINS0_8flat_mapINS1_12copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEENS0_13flat_multimapIS4_S4_S6_SA_EEEEbv:bb.a
  %i.ms = landingpad { ptr, i32 }
          catch ptr null
  %i.mt = extractvalue { ptr, i32 } %i.ms, 0
  call void @__clang_call_terminate(ptr %i.mt) #28
  unreachable

_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit328: ; preds = %_ZN5boost9container13flat_multimapINS0_4test12copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEED2Ev.exit327
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.cy

bb.cy:                                            ; preds = %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit328, %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit319, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit311, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit234
  %.8 = phi i1 [ false, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit311 ], [ false, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit319 ], [ false, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit234 ], [ %.791, %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit ], [ false, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit328 ]
  ret i1 %.8

bb.cz:                                            ; preds = %bb.co, %bb.aw
  %.pn113.pn = phi { ptr, i32 } [ %.pn113, %bb.aw ], [ %.pn103, %bb.co ]
  resume { ptr, i32 } %.pn113.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9container4test28flat_tree_extract_adopt_testINS0_8flat_mapINS1_12copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEENS0_13flat_multimapIS4_S4_S6_SA_EEEEbv() local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"union.boost::move_detail::aligned_struct_wrapper.88", align 4 ; 6 uses
  %1 = alloca %"union.boost::move_detail::aligned_struct_wrapper.88", align 4 ; 6 uses
  %2 = alloca %"union.boost::move_detail::aligned_struct_wrapper.88", align 4 ; 6 uses
  %3 = alloca %"union.boost::move_detail::aligned_struct_wrapper.88", align 4 ; 6 uses
  %4 = alloca %"union.boost::move_detail::aligned_struct_wrapper.88", align 4 ; 6 uses
  %5 = alloca %"union.boost::move_detail::aligned_struct_wrapper.88", align 4 ; 6 uses
  %6 = alloca %"class.boost::container::vec_iterator.312", align 8 ; 3 uses
  %7 = alloca %"union.boost::move_detail::aligned_struct_wrapper.88", align 4 ; 6 uses
  %8 = alloca %"union.boost::move_detail::aligned_struct_wrapper.88", align 4 ; 6 uses
  %9 = alloca %"class.boost::container::flat_map.300", align 8 ; 15 uses
  %10 = alloca %"class.boost::container::flat_map.300", align 8 ; 14 uses
  %11 = alloca %"struct.std::pair.334", align 8   ; 4 uses
  %12 = alloca %"struct.std::pair.334", align 8   ; 4 uses
  %13 = alloca %"class.boost::container::vector.305", align 8 ; 15 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %14 = alloca %"class.boost::container::flat_map.300", align 8 ; 17 uses
  %15 = alloca %"class.boost::container::flat_map.300", align 8 ; 15 uses
  %16 = alloca %"struct.std::pair.334", align 8   ; 4 uses
  %17 = alloca %"struct.std::pair.334", align 8   ; 4 uses
  %18 = alloca %"class.boost::container::vector.305", align 8 ; 13 uses
  %19 = alloca %"class.boost::container::flat_multimap.309", align 8 ; 17 uses
  %20 = alloca %"class.boost::container::flat_multimap.309", align 8 ; 15 uses
  %21 = alloca %"class.boost::container::vec_iterator.312", align 8 ; 4 uses
  %22 = alloca %"class.boost::container::vec_iterator.312", align 8 ; 4 uses
  %23 = alloca %"class.boost::container::vec_iterator.312", align 8 ; 4 uses
  %24 = alloca %"class.boost::container::vec_iterator.312", align 8 ; 4 uses
  %25 = alloca %"class.boost::container::vector.305", align 8 ; 13 uses
  %26 = alloca %"class.boost::container::vector.305", align 8 ; 4 uses
  %27 = alloca %"class.boost::container::vec_iterator.312", align 8 ; 2 uses
  %28 = alloca %"class.boost::container::vec_iterator.312", align 8 ; 2 uses
  %29 = alloca %"class.boost::container::flat_multimap.309", align 8 ; 13 uses
  %30 = alloca %"class.boost::container::flat_multimap.309", align 8 ; 11 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %31 = alloca %"class.boost::container::vec_iterator.312", align 8 ; 4 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %32 = alloca %"class.boost::container::vec_iterator.312", align 8 ; 4 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %33 = alloca %"class.boost::container::vec_iterator.312", align 8 ; 4 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %34 = alloca %"class.boost::container::vec_iterator.312", align 8 ; 4 uses
  %35 = alloca %"class.boost::container::vector.305", align 8 ; 8 uses
  %36 = alloca %"class.boost::container::vector.305", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 4
  %.pre = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21, !noalias !16313
  %i.m = add i32 %.pre, 2
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %i.n = phi i32 [ %i.m, %bb.a ], [ %i.w, %bb.d ]
  %.065348 = phi i64 [ 0, %bb.a ], [ %i.y, %bb.d ] ; 2 uses
  %i.o = trunc i64 %.065348 to i32                ; 3 uses
  %i.p = sub nsw i32 0, %i.o                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24, !noalias !16313
  store i32 %i.o, ptr %8, align 4, !tbaa !16254, !noalias !16313
  store i32 %i.p, ptr %i.k, align 4, !tbaa !16254, !noalias !16313
  store i32 %i.n, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21, !noalias !16313
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test12copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13new_allocatorIS6_EEE13insert_uniqueEOS6_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.334") align 8 %11, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 4 dereferenceable(8) %8)
          to label %bb.c unwind label %.body

.body:                                            ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21, !noalias !16313
  %i.s = add i32 %i.r, -2
  store i32 %i.s, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21, !noalias !16313
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24, !noalias !16313
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.u

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24, !noalias !16313
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24, !noalias !16318
  store i32 %i.o, ptr %7, align 4, !tbaa !16254, !noalias !16318
  store i32 %i.p, ptr %i.l, align 4, !tbaa !16254, !noalias !16318
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test12copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13new_allocatorIS6_EEE13insert_uniqueEOS6_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.334") align 8 %12, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 4 dereferenceable(8) %7)
          to label %bb.d unwind label %.body99

.body99:                                          ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21, !noalias !16318
  %i.v = add i32 %i.u, -2
  store i32 %i.v, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21, !noalias !16318
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24, !noalias !16318
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.u

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21, !noalias !16318 ; 2 uses
  %i.x = add i32 %i.w, -2
  store i32 %i.x, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21, !noalias !16318
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24, !noalias !16318
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.y = add nuw nsw i64 %.065348, 1              ; 2 uses
  %.not = icmp eq i64 %i.y, 100
  br i1 %.not, label %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvED2Ev.exit, label %bb.b, !llvm.loop !16323

_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvED2Ev.exit: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %i.z = load ptr, ptr %9, align 8, !tbaa !16253, !noalias !16324 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.ae = load <2 x i64>, ptr %i.aa, align 8, !tbaa !1562, !noalias !16324
  %i.af = load i64, ptr %i.aa, align 8, !tbaa !16258, !noalias !16324 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false), !noalias !16324
  store ptr %i.z, ptr %13, align 8, !tbaa !16253
  store <2 x i64> %i.ae, ptr %i.ac, align 8, !tbaa !1562
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !16244 ; 2 uses
  %.not.i = icmp eq i64 %i.af, %i.ah
  br i1 %.not.i, label %bb.e, label %.critedgethread-pre-split

bb.e:                                             ; preds = %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvED2Ev.exit
  %.idx.i = shl nsw i64 %i.af, 3
  %i.ai = getelementptr inbounds i8, ptr %i.z, i64 %.idx.i
  %.not2526.i = icmp eq i64 %i.af, 0
  br i1 %.not2526.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairINS1_12copyable_intES5_ENS0_13new_allocatorIS6_EEvEENS0_8flat_mapIS5_S5_St4lessIS5_ES8_EEEEbRKT_RKT0_.exit.preheader, label %.lr.ph.preheader.i

_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairINS1_12copyable_intES5_ENS0_13new_allocatorIS6_EEvEENS0_8flat_mapIS5_S5_St4lessIS5_ES8_EEEEbRKT_RKT0_.exit.preheader: ; preds = %bb.f, %bb.e
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairINS1_12copyable_intES5_ENS0_13new_allocatorIS6_EEvEENS0_8flat_mapIS5_S5_St4lessIS5_ES8_EEEEbRKT_RKT0_.exit

.lr.ph.preheader.i:                               ; preds = %bb.e
  %i.aj = load ptr, ptr %10, align 8, !tbaa !16253, !noalias !16327
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.preheader.i
  %.sroa.021.028.i = phi ptr [ %i.aq, %bb.f ], [ %i.z, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.016.027.i = phi ptr [ %i.ar, %bb.f ], [ %i.aj, %.lr.ph.preheader.i ] ; 2 uses
  %i.ak = load <2 x i32>, ptr %.sroa.021.028.i, align 4
  %i.al = load <2 x i32>, ptr %.sroa.016.027.i, align 4
  %i.am = icmp eq <2 x i32> %i.ak, %i.al          ; 2 uses
  %i.an = extractelement <2 x i1> %i.am, i64 0
  %i.ao = extractelement <2 x i1> %i.am, i64 1
  %i.ap = select i1 %i.an, i1 %i.ao, i1 false
  br i1 %i.ap, label %bb.f, label %.critedgethread-pre-split

bb.f:                                             ; preds = %.lr.ph.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.021.028.i, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.016.027.i, i64 8
  %.not25.i = icmp eq ptr %i.aq, %i.ai
  br i1 %.not25.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairINS1_12copyable_intES5_ENS0_13new_allocatorIS6_EEvEENS0_8flat_mapIS5_S5_St4lessIS5_ES8_EEEEbRKT_RKT0_.exit.preheader, label %.lr.ph.i, !llvm.loop !16336

bb.g:                                             ; preds = %_ZN5boost9container4test14random_shuffleINS0_12vec_iteratorIPSt4pairINS1_12copyable_intES5_ELb0EEEEEvT_S9_.exit
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.h:                                             ; preds = %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE12emplace_backIJiiEEERS5_DpOT_.exit
  %i.at = load ptr, ptr %13, align 8, !tbaa !16253, !noalias !16337 ; 2 uses
  %i.au = load i64, ptr %i.ac, align 8, !tbaa !16244, !noalias !16340 ; 2 uses
  %i.av = icmp sgt i64 %i.au, 1
  br i1 %i.av, label %.lr.ph.i102, label %_ZN5boost9container4test14random_shuffleINS0_12vec_iteratorIPSt4pairINS1_12copyable_intES5_ELb0EEEEEvT_S9_.exit

.lr.ph.i102:                                      ; preds = %bb.h, %bb.j
  %.0.in10.i = phi i64 [ %.011.i, %bb.j ], [ %i.au, %bb.h ] ; 3 uses
  %.011.i = add nsw i64 %.0.in10.i, -1            ; 3 uses
  %i.aw = call i32 @rand() #24
  %i.ax = sext i32 %i.aw to i64
  %i.ay = srem i64 %i.ax, %.0.in10.i              ; 2 uses
  %.not.i103 = icmp eq i64 %i.ay, %.011.i
  br i1 %.not.i103, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i102
  %i.az = getelementptr inbounds [8 x i8], ptr %i.at, i64 %.011.i ; 2 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.ay ; 2 uses
  %i.bb = load <2 x i32>, ptr %i.az, align 4, !tbaa !16254
  %i.bc = load <2 x i32>, ptr %i.ba, align 4, !tbaa !16254
  store <2 x i32> %i.bc, ptr %i.az, align 4, !tbaa !16254
  store <2 x i32> %i.bb, ptr %i.ba, align 4, !tbaa !16254
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i102
  %i.bd = icmp samesign ugt i64 %.0.in10.i, 2
  br i1 %i.bd, label %.lr.ph.i102, label %_ZN5boost9container4test14random_shuffleINS0_12vec_iteratorIPSt4pairINS1_12copyable_intES5_ELb0EEEEEvT_S9_.exit, !llvm.loop !16343

_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairINS1_12copyable_intES5_ENS0_13new_allocatorIS6_EEvEENS0_8flat_mapIS5_S5_St4lessIS5_ES8_EEEEbRKT_RKT0_.exit: ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairINS1_12copyable_intES5_ENS0_13new_allocatorIS6_EEvEENS0_8flat_mapIS5_S5_St4lessIS5_ES8_EEEEbRKT_RKT0_.exit.preheader, %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE12emplace_backIJiiEEERS5_DpOT_.exit
  %.047349 = phi i64 [ %i.br, %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE12emplace_backIJiiEEERS5_DpOT_.exit ], [ 0, %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairINS1_12copyable_intES5_ENS0_13new_allocatorIS6_EEvEENS0_8flat_mapIS5_S5_St4lessIS5_ES8_EEEEbRKT_RKT0_.exit.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.be = trunc i64 %.047349 to i32               ; 3 uses
  store i32 %i.be, ptr %i.a, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.bf = sub nsw i32 0, %i.be
  store i32 %i.bf, ptr %i.b, align 4, !tbaa !21
  %i.bg = load i64, ptr %i.ac, align 8, !tbaa !16244 ; 4 uses
  %i.bh = load i64, ptr %i.ad, align 8, !tbaa !16248
  %.not.i104 = icmp eq i64 %i.bg, %i.bh
  br i1 %.not.i104, label %bb.l, label %bb.k, !prof !306

bb.k:                                             ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairINS1_12copyable_intES5_ENS0_13new_allocatorIS6_EEvEENS0_8flat_mapIS5_S5_St4lessIS5_ES8_EEEEbRKT_RKT0_.exit
  %i.bi = load ptr, ptr %13, align 8, !tbaa !16253, !nonnull !400, !noundef !400
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bg ; 2 uses
  store i32 %i.be, ptr %i.bj, align 4, !tbaa !16254
  %i.bk = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bm = load i32, ptr %i.b, align 4, !tbaa !21
  store i32 %i.bm, ptr %i.bl, align 4, !tbaa !16254
  %i.bn = add i32 %i.bk, 2
  store i32 %i.bn, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21
  %i.bo = add i64 %i.bg, 1
  store i64 %i.bo, ptr %i.ac, align 8, !tbaa !16244
  br label %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE12emplace_backIJiiEEERS5_DpOT_.exit

bb.l:                                             ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairINS1_12copyable_intES5_ENS0_13new_allocatorIS6_EEvEENS0_8flat_mapIS5_S5_St4lessIS5_ES8_EEEEbRKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.bp = load ptr, ptr %13, align 8, !tbaa !16253
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bg
  invoke void @_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS7_JiiEEEEENS0_12vec_iteratorIPS5_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.312") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef %i.bq, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.b, ptr nonnull align 4 dereferenceable(4) %i.a)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE12emplace_backIJiiEEERS5_DpOT_.exit

_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE12emplace_backIJiiEEERS5_DpOT_.exit: ; preds = %.noexc, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.br = add nuw nsw i64 %.047349, 1             ; 2 uses
  %.not71 = icmp eq i64 %i.br, 100
  br i1 %.not71, label %bb.h, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairINS1_12copyable_intES5_ENS0_13new_allocatorIS6_EEvEENS0_8flat_mapIS5_S5_St4lessIS5_ES8_EEEEbRKT_RKT0_.exit, !llvm.loop !16344

bb.m:                                             ; preds = %bb.l
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.t

_ZN5boost9container4test14random_shuffleINS0_12vec_iteratorIPSt4pairINS1_12copyable_intES5_ELb0EEEEEvT_S9_.exit: ; preds = %bb.j, %bb.h
  invoke void @_ZN5boost9container3dtl31flat_tree_adopt_sequence_uniqueINS0_6vectorISt4pairINS0_4test12copyable_intES6_ENS0_13new_allocatorIS7_EEvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_OSH_T0_NS_11move_detail5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %_ZN5boost9container8flat_mapINS0_4test12copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEE14adopt_sequenceEONS0_6vectorIS8_S9_vEE.exit unwind label %bb.g

_ZN5boost9container8flat_mapINS0_4test12copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEE14adopt_sequenceEONS0_6vectorIS8_S9_vEE.exit: ; preds = %_ZN5boost9container4test14random_shuffleINS0_12vec_iteratorIPSt4pairINS1_12copyable_intES5_ELb0EEEEEvT_S9_.exit
  %i.bt = load i64, ptr %i.aa, align 8, !tbaa !16244 ; 5 uses
  %i.bu = load i64, ptr %i.ag, align 8, !tbaa !16244 ; 2 uses
  %.not.i106 = icmp eq i64 %i.bt, %i.bu
  br i1 %.not.i106, label %bb.n, label %.critedgethread-pre-split

bb.n:                                             ; preds = %_ZN5boost9container8flat_mapINS0_4test12copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEE14adopt_sequenceEONS0_6vectorIS8_S9_vEE.exit
  %i.bv = load ptr, ptr %9, align 8, !tbaa !16253, !noalias !16345 ; 3 uses
  %.idx.i108 = shl nsw i64 %i.bt, 3
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 %.idx.i108 ; 2 uses
  %.not2526.i109 = icmp eq i64 %i.bt, 0
  br i1 %.not2526.i109, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairINS1_12copyable_intES5_ENS0_13new_allocatorIS6_EEvEES9_EEbRKT_RKT0_.exit, label %.lr.ph.preheader.i110

.lr.ph.preheader.i110:                            ; preds = %bb.n
  %i.bx = load ptr, ptr %10, align 8, !tbaa !16253, !noalias !16354 ; 2 uses
  br label %.lr.ph.i111

.lr.ph.i111:                                      ; preds = %bb.o, %.lr.ph.preheader.i110
  %.sroa.021.028.i112 = phi ptr [ %i.ce, %bb.o ], [ %i.bv, %.lr.ph.preheader.i110 ] ; 2 uses
  %.sroa.016.027.i113 = phi ptr [ %i.cf, %bb.o ], [ %i.bx, %.lr.ph.preheader.i110 ] ; 2 uses
  %i.by = load <2 x i32>, ptr %.sroa.021.028.i112, align 4
  %i.bz = load <2 x i32>, ptr %.sroa.016.027.i113, align 4
  %i.ca = icmp eq <2 x i32> %i.by, %i.bz          ; 2 uses
  %i.cb = extractelement <2 x i1> %i.ca, i64 0
  %i.cc = extractelement <2 x i1> %i.ca, i64 1
  %i.cd = select i1 %i.cb, i1 %i.cc, i1 false
  br i1 %i.cd, label %bb.o, label %.critedgethread-pre-split

bb.o:                                             ; preds = %.lr.ph.i111
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.021.028.i112, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.016.027.i113, i64 8
  %.not25.i114 = icmp eq ptr %i.ce, %i.bw
  br i1 %.not25.i114, label %.lr.ph.i120, label %.lr.ph.i111, !llvm.loop !16363

.lr.ph.i120:                                      ; preds = %bb.o, %.lr.ph.i120
  %.sroa.021.028.i121 = phi ptr [ %i.cm, %.lr.ph.i120 ], [ %i.bv, %bb.o ] ; 2 uses
  %.sroa.016.027.i122 = phi ptr [ %i.cn, %.lr.ph.i120 ], [ %i.bx, %bb.o ] ; 2 uses
  %i.cg = load <2 x i32>, ptr %.sroa.021.028.i121, align 4
  %i.ch = load <2 x i32>, ptr %.sroa.016.027.i122, align 4
  %i.ci = icmp eq <2 x i32> %i.cg, %i.ch          ; 2 uses
  %i.cj = extractelement <2 x i1> %i.ci, i64 0
  %i.ck = extractelement <2 x i1> %i.ci, i64 1
  %i.cl = select i1 %i.cj, i1 %i.ck, i1 false     ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.021.028.i121, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.016.027.i122, i64 8
  %.not25.i123 = icmp ne ptr %i.cm, %i.bw
  %or.cond.not = select i1 %i.cl, i1 %.not25.i123, i1 false
  br i1 %or.cond.not, label %.lr.ph.i120, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairINS1_12copyable_intES5_ENS0_13new_allocatorIS6_EEvEES9_EEbRKT_RKT0_.exit, !llvm.loop !16364

_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairINS1_12copyable_intES5_ENS0_13new_allocatorIS6_EEvEES9_EEbRKT_RKT0_.exit: ; preds = %.lr.ph.i120, %bb.n
  %.2.i116 = phi i1 [ true, %bb.n ], [ %i.cl, %.lr.ph.i120 ]
  %i.co = load i64, ptr %i.ac, align 8, !tbaa !16244 ; 2 uses
  %.not3.i.i124 = icmp eq i64 %i.co, 0
  br i1 %.not3.i.i124, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i127, label %.lr.ph.preheader.i.i125

.lr.ph.preheader.i.i125:                          ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairINS1_12copyable_intES5_ENS0_13new_allocatorIS6_EEvEES9_EEbRKT_RKT0_.exit
  %_ZN5boost9container4test12copyable_int5countE.promoted.i.i126 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4
  %i.cp = trunc i64 %i.co to i32
  %i.cq = shl i32 %i.cp, 1
  %i.cr = sub i32 %_ZN5boost9container4test12copyable_int5countE.promoted.i.i126, %i.cq
  store i32 %i.cr, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21
  br label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i127

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i127: ; preds = %.lr.ph.preheader.i.i125, %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairINS1_12copyable_intES5_ENS0_13new_allocatorIS6_EEvEES9_EEbRKT_RKT0_.exit
  %i.cs = load i64, ptr %i.ad, align 8, !tbaa !16248 ; 2 uses
  %.not.i.i128 = icmp eq i64 %i.cs, 0
  br i1 %.not.i.i128, label %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvED2Ev.exit129, label %bb.p

bb.p:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i127
  %i.ct = load ptr, ptr %13, align 8, !tbaa !16249
  %i.cu = shl i64 %i.cs, 3
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cu) #24
  %.pre359 = load i64, ptr %i.ag, align 8, !tbaa !16244
  br label %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvED2Ev.exit129

_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvED2Ev.exit129: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i127, %bb.p
  %i.cv = phi i64 [ %i.bt, %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i127 ], [ %.pre359, %bb.p ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  %.not3.i.i.i.i.i = icmp eq i64 %i.cv, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvED2Ev.exit129
  %_ZN5boost9container4test12copyable_int5countE.promoted.i.i.i.i.i = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4
  %i.cw = trunc i64 %i.cv to i32
  %i.cx = shl i32 %i.cw, 1
  %i.cy = sub i32 %_ZN5boost9container4test12copyable_int5countE.promoted.i.i.i.i.i, %i.cx
  store i32 %i.cy, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21
  br label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i, %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvED2Ev.exit129
  %i.cz = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !16248 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.da, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container8flat_mapINS0_4test12copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i
  %i.db = load ptr, ptr %10, align 8, !tbaa !16249
  %i.dc = shl i64 %i.da, 3
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.dc) #24
  br label %_ZN5boost9container8flat_mapINS0_4test12copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEED2Ev.exit

_ZN5boost9container8flat_mapINS0_4test12copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEED2Ev.exit: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  %i.dd = load i64, ptr %i.aa, align 8, !tbaa !16244 ; 2 uses
  %.not3.i.i.i.i.i130 = icmp eq i64 %i.dd, 0
  br i1 %.not3.i.i.i.i.i130, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i133, label %.lr.ph.preheader.i.i.i.i.i131

.lr.ph.preheader.i.i.i.i.i131:                    ; preds = %_ZN5boost9container8flat_mapINS0_4test12copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEED2Ev.exit
  %_ZN5boost9container4test12copyable_int5countE.promoted.i.i.i.i.i132 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4
  %i.de = trunc i64 %i.dd to i32
  %i.df = shl i32 %i.de, 1
  %i.dg = sub i32 %_ZN5boost9container4test12copyable_int5countE.promoted.i.i.i.i.i132, %i.df
  store i32 %i.dg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21
  br label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i133

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i133: ; preds = %.lr.ph.preheader.i.i.i.i.i131, %_ZN5boost9container8flat_mapINS0_4test12copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEED2Ev.exit
  %i.dh = load i64, ptr %i.ab, align 8, !tbaa !16248 ; 2 uses
  %.not.i.i.i.i.i134 = icmp eq i64 %i.dh, 0
  br i1 %.not.i.i.i.i.i134, label %_ZN5boost9container8flat_mapINS0_4test12copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEED2Ev.exit135, label %bb.r

bb.r:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i133
  %i.di = load ptr, ptr %9, align 8, !tbaa !16249
  %i.dj = shl i64 %i.dh, 3
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dj) #24
  br label %_ZN5boost9container8flat_mapINS0_4test12copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEED2Ev.exit135

_ZN5boost9container8flat_mapINS0_4test12copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEED2Ev.exit135: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i133, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br i1 %.2.i116, label %bb.s, label %bb.bu

bb.s:                                             ; preds = %_ZN5boost9container8flat_mapINS0_4test12copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEED2Ev.exit135
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
end_hunk_6
begin_hunk_7_@_ZN5boost7movelib17op_buffered_mergeINS_9container12vec_iteratorIPSt4pairINS2_4test12copyable_intES6_ELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEENS0_7move_opENS0_10range_xbufIS8_mSH_EEEEvT_SK_SK_T0_T1_RT2_:bb.a
  %i.de = load i32, ptr %.015.i, align 4, !tbaa !16254 ; 2 uses
  %i.df = icmp slt i32 %i.dd, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.041.0, i64 4
  br i1 %i.df, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.dd, ptr %.sroa.041.0, align 4, !tbaa !16254
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.040.0, i64 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i32 %i.de, ptr %.sroa.041.0, align 4, !tbaa !16254
  %i.di = getelementptr inbounds nuw i8, ptr %.015.i, i64 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.040.0.pn = phi ptr [ %.sroa.040.0, %bb.f ], [ %.015.i, %bb.g ]
  %.sroa.040.1 = phi ptr [ %i.dh, %bb.f ], [ %.sroa.040.0, %bb.g ]
  %.1.i8 = phi ptr [ %.015.i, %bb.f ], [ %i.di, %bb.g ] ; 2 uses
  %.sink.in = getelementptr inbounds nuw i8, ptr %.sroa.040.0.pn, i64 4
  %.sink = load i32, ptr %.sink.in, align 4, !tbaa !16254
  store i32 %.sink, ptr %i.dg, align 4, !tbaa !16254
  %i.dj = getelementptr i8, ptr %.sroa.041.0, i64 8
  %.not.i9 = icmp eq ptr %.1.i8, %.lcssa110
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i9, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test12copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_NS2_12vec_iteratorISE_Lb0EEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %.lr.ph.i7, !llvm.loop !20347

.lr.ph.i13:                                       ; preds = %bb.d, %.lr.ph.i13
  %i.dk = phi ptr [ %i.dr, %.lr.ph.i13 ], [ %i.b, %bb.d ] ; 2 uses
  %.010.i14 = phi i64 [ %.1.i16, %.lr.ph.i13 ], [ %i.n, %bb.d ] ; 2 uses
  %i.dl = lshr i64 %.010.i14, 1                   ; 3 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.dl ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !16254, !noalias !21070
  %i.do = icmp slt i32 %i.dn, %i.f                ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %.neg.i15 = xor i64 %i.dl, -1
  %i.dq = add i64 %.010.i14, %.neg.i15
  %i.dr = select i1 %i.do, ptr %i.dp, ptr %i.dk   ; 5 uses
  %.1.i16 = select i1 %i.do, i64 %i.dq, i64 %i.dl ; 2 uses
  %.not.i17 = icmp eq i64 %.1.i16, 0
  br i1 %.not.i17, label %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairINS2_4test12copyable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEET_SH_SH_RKT0_T1_.exit, label %.lr.ph.i13, !llvm.loop !20300

_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairINS2_4test12copyable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEET_SH_SH_RKT0_T1_.exit: ; preds = %.lr.ph.i13
  %i.ds = ptrtoaddr ptr %i.dr to i64              ; 2 uses
  store ptr %i.dr, ptr %2, align 8, !tbaa !16443
  %i.dt = load ptr, ptr %1, align 8, !tbaa !16249 ; 9 uses
  %i.du = ptrtoaddr ptr %i.dt to i64              ; 2 uses
  %i.dv = load ptr, ptr %3, align 8, !tbaa !18247 ; 10 uses
  %.not3.i.i.i18 = icmp eq ptr %i.dr, %i.dt
  br i1 %.not3.i.i.i18, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test12copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_NS2_12vec_iteratorISE_Lb0EEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit.sink.split, label %.lr.ph.i.i.i19.preheader

.lr.ph.i.i.i19.preheader:                         ; preds = %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairINS2_4test12copyable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEET_SH_SH_RKT0_T1_.exit
  %i.dw = add i64 %i.ds, -8
  %i.dx = sub i64 %i.dw, %i.du                    ; 2 uses
  %i.dy = lshr i64 %i.dx, 3
  %i.dz = add nuw nsw i64 %i.dy, 1                ; 2 uses
  %min.iters.check165 = icmp ult i64 %i.dx, 88
  br i1 %min.iters.check165, label %.lr.ph.i.i.i19.preheader190, label %vector.memcheck156

vector.memcheck156:                               ; preds = %.lr.ph.i.i.i19.preheader
  %reass.sub = sub i64 %i.ds, %i.du
  %i.ea = and i64 %reass.sub, -8                  ; 2 uses
  %scevgep158 = getelementptr i8, ptr %i.dv, i64 %i.ea
  %scevgep160 = getelementptr i8, ptr %i.dt, i64 %i.ea
  %bound0161 = icmp ult ptr %i.dv, %scevgep160
  %bound1162 = icmp ult ptr %i.dt, %scevgep158
  %found.conflict163 = and i1 %bound0161, %bound1162
  br i1 %found.conflict163, label %.lr.ph.i.i.i19.preheader190, label %vector.ph166

vector.ph166:                                     ; preds = %vector.memcheck156
  %n.vec167 = and i64 %i.dz, 4611686018427387900  ; 3 uses
  %i.eb = shl i64 %n.vec167, 3                    ; 2 uses
  %i.ec = getelementptr i8, ptr %i.dt, i64 %i.eb
  %i.ed = getelementptr i8, ptr %i.dv, i64 %i.eb  ; 2 uses
  br label %vector.body168

vector.body168:                                   ; preds = %vector.body168, %vector.ph166
  %index169 = phi i64 [ 0, %vector.ph166 ], [ %index.next182, %vector.body168 ] ; 2 uses
  %i.ee = shl i64 %index169, 3                    ; 3 uses
  %i.ef = or disjoint i64 %i.ee, 16               ; 2 uses
  %next.gep170 = getelementptr i8, ptr %i.dt, i64 %i.ee
  %next.gep171 = getelementptr i8, ptr %i.dt, i64 %i.ef
  %next.gep172 = getelementptr i8, ptr %i.dv, i64 %i.ee
  %next.gep173 = getelementptr i8, ptr %i.dv, i64 %i.ef
  %wide.vec174 = load <4 x i32>, ptr %next.gep170, align 4, !tbaa !16254, !alias.scope !21073
  %wide.vec177 = load <4 x i32>, ptr %next.gep171, align 4, !tbaa !16254, !alias.scope !21073
  store <4 x i32> %wide.vec174, ptr %next.gep172, align 4, !tbaa !16254, !alias.scope !21076, !noalias !21073
  store <4 x i32> %wide.vec177, ptr %next.gep173, align 4, !tbaa !16254, !alias.scope !21076, !noalias !21073
  %index.next182 = add nuw i64 %index169, 4       ; 2 uses
  %i.eg = icmp eq i64 %index.next182, %n.vec167
  br i1 %i.eg, label %middle.block183, label %vector.body168, !llvm.loop !21078

middle.block183:                                  ; preds = %vector.body168
  %cmp.n184 = icmp eq i64 %i.dz, %n.vec167
  br i1 %cmp.n184, label %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test12copyable_intES5_EmNS0_7move_opEE11move_assignINS3_12vec_iteratorIS7_Lb0EEEEEvT_m.exit23, label %.lr.ph.i.i.i19.preheader190

.lr.ph.i.i.i19.preheader190:                      ; preds = %vector.memcheck156, %.lr.ph.i.i.i19.preheader, %middle.block183
  %.ph = phi ptr [ %i.dt, %vector.memcheck156 ], [ %i.dt, %.lr.ph.i.i.i19.preheader ], [ %i.ec, %middle.block183 ]
  %.04.i.i.i20.ph = phi ptr [ %i.dv, %vector.memcheck156 ], [ %i.dv, %.lr.ph.i.i.i19.preheader ], [ %i.ed, %middle.block183 ]
  br label %.lr.ph.i.i.i19

.lr.ph.i.i.i19:                                   ; preds = %.lr.ph.i.i.i19.preheader190, %.lr.ph.i.i.i19
  %i.eh = phi ptr [ %i.em, %.lr.ph.i.i.i19 ], [ %.ph, %.lr.ph.i.i.i19.preheader190 ] ; 3 uses
  %.04.i.i.i20 = phi ptr [ %i.en, %.lr.ph.i.i.i19 ], [ %.04.i.i.i20.ph, %.lr.ph.i.i.i19.preheader190 ] ; 3 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !16254
  store i32 %i.ei, ptr %.04.i.i.i20, align 4, !tbaa !16254
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  %i.ek = getelementptr inbounds nuw i8, ptr %.04.i.i.i20, i64 4
  %i.el = load i32, ptr %i.ej, align 4, !tbaa !16254
  store i32 %i.el, ptr %i.ek, align 4, !tbaa !16254
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 8 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.04.i.i.i20, i64 8 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.em, %i.dr
  br i1 %.not.i.i.i21, label %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test12copyable_intES5_EmNS0_7move_opEE11move_assignINS3_12vec_iteratorIS7_Lb0EEEEEvT_m.exit23, label %.lr.ph.i.i.i19, !llvm.loop !21079

_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test12copyable_intES5_EmNS0_7move_opEE11move_assignINS3_12vec_iteratorIS7_Lb0EEEEEvT_m.exit23: ; preds = %.lr.ph.i.i.i19, %middle.block183
  %.lcssa = phi ptr [ %i.ed, %middle.block183 ], [ %i.en, %.lr.ph.i.i.i19 ] ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.lcssa, ptr %i.eo, align 8, !tbaa !18249
  %i.ep = load ptr, ptr %0, align 8, !tbaa !16249
  %i.eq = load ptr, ptr %1, align 8, !tbaa !16249
  %i.er = load ptr, ptr %2, align 8, !tbaa !16249
  br label %.lr.ph.i24

.lr.ph.i24:                                       ; preds = %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test12copyable_intES5_EmNS0_7move_opEE11move_assignINS3_12vec_iteratorIS7_Lb0EEEEEvT_m.exit23, %bb.i
  %.sroa.032.0 = phi ptr [ %i.eq, %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test12copyable_intES5_EmNS0_7move_opEE11move_assignINS3_12vec_iteratorIS7_Lb0EEEEEvT_m.exit23 ], [ %..sroa.032.0, %bb.i ] ; 4 uses
  %.sroa.0.0 = phi ptr [ %i.er, %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test12copyable_intES5_EmNS0_7move_opEE11move_assignINS3_12vec_iteratorIS7_Lb0EEEEEvT_m.exit23 ], [ %i.ff, %bb.i ] ; 3 uses
  %.016.i = phi ptr [ %.lcssa, %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test12copyable_intES5_EmNS0_7move_opEE11move_assignINS3_12vec_iteratorIS7_Lb0EEEEEvT_m.exit23 ], [ %.016.i., %bb.i ] ; 4 uses
  %i.es = icmp eq ptr %i.ep, %.sroa.032.0
  br i1 %i.es, label %.lr.ph.i.i.i27, label %bb.i

.lr.ph.i.i.i27:                                   ; preds = %.lr.ph.i24, %.lr.ph.i.i.i27
  %i.et = phi ptr [ %i.ev, %.lr.ph.i.i.i27 ], [ %.sroa.0.0, %.lr.ph.i24 ] ; 2 uses
  %.05.i.i.i28 = phi ptr [ %i.eu, %.lr.ph.i.i.i27 ], [ %.016.i, %.lr.ph.i24 ] ; 2 uses
  %i.eu = getelementptr inbounds i8, ptr %.05.i.i.i28, i64 -8 ; 3 uses
  %i.ev = getelementptr inbounds i8, ptr %i.et, i64 -8 ; 2 uses
  %i.ew = load i32, ptr %i.eu, align 4, !tbaa !16254, !noalias !21080
  store i32 %i.ew, ptr %i.ev, align 4, !tbaa !16254, !noalias !21080
  %i.ex = getelementptr inbounds i8, ptr %.05.i.i.i28, i64 -4
  %i.ey = getelementptr inbounds i8, ptr %i.et, i64 -4
  %i.ez = load i32, ptr %i.ex, align 4, !tbaa !16254, !noalias !21080
  store i32 %i.ez, ptr %i.ey, align 4, !tbaa !16254, !noalias !21080
  %.not.i.i.i29 = icmp eq ptr %i.dv, %i.eu
  br i1 %.not.i.i.i29, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test12copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_NS2_12vec_iteratorISE_Lb0EEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %.lr.ph.i.i.i27, !llvm.loop !20370

bb.i:                                             ; preds = %.lr.ph.i24
  %i.fa = getelementptr inbounds i8, ptr %.016.i, i64 -8 ; 2 uses
  %i.fb = getelementptr inbounds i8, ptr %.sroa.032.0, i64 -8 ; 2 uses
  %i.fc = load i32, ptr %i.fa, align 4, !tbaa !16254 ; 2 uses
  %i.fd = load i32, ptr %i.fb, align 4, !tbaa !16254 ; 2 uses
  %i.fe = icmp slt i32 %i.fc, %i.fd               ; 3 uses
  %i.ff = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -8 ; 2 uses
  %. = tail call i32 @llvm.smax.i32(i32 %i.fc, i32 %i.fd)
  %.sroa.032.0..016.i = select i1 %i.fe, ptr %.sroa.032.0, ptr %.016.i
  %..sroa.032.0 = select i1 %i.fe, ptr %i.fb, ptr %.sroa.032.0
  %.016.i. = select i1 %i.fe, ptr %.016.i, ptr %i.fa ; 2 uses
  store i32 %., ptr %i.ff, align 4, !tbaa !16254
  %.sink74.in = getelementptr inbounds i8, ptr %.sroa.032.0..016.i, i64 -4
  %.sink74 = load i32, ptr %.sink74.in, align 4, !tbaa !16254
  %i.fg = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -4
  store i32 %.sink74, ptr %i.fg, align 4, !tbaa !16254
  %.not.i26 = icmp eq ptr %i.dv, %.016.i.
  br i1 %.not.i26, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test12copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_NS2_12vec_iteratorISE_Lb0EEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %.lr.ph.i24, !llvm.loop !20371

_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test12copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_NS2_12vec_iteratorISE_Lb0EEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit.sink.split: ; preds = %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairINS2_4test12copyable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEET_SH_SH_RKT0_T1_.exit, %_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairINS2_4test12copyable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEET_SH_SH_RKT0_T1_.exit
  %.sink100 = phi ptr [ %i.z, %_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairINS2_4test12copyable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEET_SH_SH_RKT0_T1_.exit ], [ %i.dv, %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairINS2_4test12copyable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEET_SH_SH_RKT0_T1_.exit ]
  %i.fh = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sink100, ptr %i.fh, align 8, !tbaa !18249
  br label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test12copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_NS2_12vec_iteratorISE_Lb0EEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit

_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test12copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_NS2_12vec_iteratorISE_Lb0EEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit: ; preds = %bb.h, %.lr.ph.i.i.i10.prol.loopexit, %.lr.ph.i.i.i10, %bb.i, %.lr.ph.i.i.i27, %middle.block152, %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test12copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_NS2_12vec_iteratorISE_Lb0EEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit.sink.split, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container4test14random_shuffleINS0_12vec_iteratorIPSt4pairINS1_12copyable_intES5_ELb0EEEEEvT_S9_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !16443
  %i.b = load ptr, ptr %0, align 8, !tbaa !16443
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
  %i.h = tail call i32 @rand() #24
  %i.i = sext i32 %i.h to i64
  %i.j = srem i64 %i.i, %.0.in10                  ; 2 uses
  %.not = icmp eq i64 %i.j, %.011
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = load ptr, ptr %0, align 8, !tbaa !16443  ; 2 uses
  %i.l = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.011 ; 2 uses
  %i.m = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.j ; 2 uses
  %i.n = load <2 x i32>, ptr %i.l, align 4, !tbaa !16254
  %i.o = load <2 x i32>, ptr %i.m, align 4, !tbaa !16254
  store <2 x i32> %i.o, ptr %i.l, align 4, !tbaa !16254
  store <2 x i32> %i.n, ptr %i.m, align 4, !tbaa !16254
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.p = icmp samesign ugt i64 %.0.in10, 2
  br i1 %i.p, label %.lr.ph, label %._crit_edge, !llvm.loop !16343
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container8flat_mapINS0_4test12copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEE14adopt_sequenceENS0_22ordered_unique_range_tEONS0_6vectorIS8_S9_vEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i.i = icmp eq ptr %1, %0
  br i1 %.not.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test12copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13new_allocatorIS6_EEE21adopt_sequence_uniqueENS0_22ordered_unique_range_tEONS0_6vectorIS6_SC_vEE.exit, label %bb.b, !prof !306

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16244 ; 2 uses
  %.not3.i.i.i.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not3.i.i.i.i.i.i.i, label %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE5clearEv.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %bb.b
  %_ZN5boost9container4test12copyable_int5countE.promoted.i.i.i.i.i.i.i = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4
  %i.c = trunc i64 %i.b to i32
  %i.d = shl i32 %i.c, 1
  %i.e = sub i32 %_ZN5boost9container4test12copyable_int5countE.promoted.i.i.i.i.i.i.i, %i.d
  store i32 %i.e, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21
  br label %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE5clearEv.exit.i.i.i.i

_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE5clearEv.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %bb.b
  store i64 0, ptr %i.a, align 8, !tbaa !16244
  %i.f = load ptr, ptr %0, align 8, !tbaa !19539  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE16priv_move_assignIS7_EEvONS1_IS5_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS5_SA_E4typeELj0EEENSD_12is_differentISJ_S7_EENSD_5bool_ILb0EEESO_E4typeE.exit.i.i, label %bb.c, !prof !306

bb.c:                                             ; preds = %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE5clearEv.exit.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !19540
  %i.i = shl i64 %i.h, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.i) #24
  br label %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE16priv_move_assignIS7_EEvONS1_IS5_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS5_SA_E4typeELj0EEENSD_12is_differentISJ_S7_EENSD_5bool_ILb0EEESO_E4typeE.exit.i.i

_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE16priv_move_assignIS7_EEvONS1_IS5_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS5_SA_E4typeELj0EEENSD_12is_differentISJ_S7_EENSD_5bool_ILb0EEESO_E4typeE.exit.i.i: ; preds = %bb.c, %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE5clearEv.exit.i.i.i.i
  %i.j = load ptr, ptr %1, align 8, !tbaa !16253
  store ptr %i.j, ptr %0, align 8, !tbaa !16253
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load <2 x i64>, ptr %i.k, align 8, !tbaa !1562
  store <2 x i64> %i.l, ptr %i.a, align 8, !tbaa !1562
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test12copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13new_allocatorIS6_EEE21adopt_sequence_uniqueENS0_22ordered_unique_range_tEONS0_6vectorIS6_SC_vEE.exit

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test12copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13new_allocatorIS6_EEE21adopt_sequence_uniqueENS0_22ordered_unique_range_tEONS0_6vectorIS6_SC_vEE.exit: ; preds = %bb.a, %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE16priv_move_assignIS7_EEvONS1_IS5_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS5_SA_E4typeELj0EEENSD_12is_differentISJ_S7_EENSD_5bool_ILb0EEESO_E4typeE.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container13flat_multimapINS0_4test12copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEE7emplaceIJiiEEENS0_12vec_iteratorIPS8_Lb0EEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.312") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"union.boost::move_detail::aligned_struct_wrapper.88", align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !21085
  %i.a = load i32, ptr %2, align 4, !tbaa !21, !noalias !21085
  store i32 %i.a, ptr %4, align 4, !tbaa !16254, !noalias !21085
  %i.b = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21, !noalias !21085 ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21, !noalias !21085
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.e = load i32, ptr %3, align 4, !tbaa !21, !noalias !21085
  store i32 %i.e, ptr %i.d, align 4, !tbaa !16254, !noalias !21085
  %i.f = add i32 %i.b, 2
  store i32 %i.f, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21, !noalias !21085
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test12copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13new_allocatorIS6_EEE12insert_equalEOS6_(ptr dead_on_unwind writable sret(%"class.boost::container::vec_iterator.312") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(8) %4)
          to label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test12copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13new_allocatorIS6_EEE13emplace_equalIJiiEEENS0_12vec_iteratorIPS6_Lb0EEEDpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21, !noalias !21085
  %i.i = add i32 %i.h, -2
  store i32 %i.i, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21, !noalias !21085
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !21085
  resume { ptr, i32 } %i.g

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test12copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13new_allocatorIS6_EEE13emplace_equalIJiiEEENS0_12vec_iteratorIPS6_Lb0EEEDpOT_.exit: ; preds = %bb.a
  %i.j = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21, !noalias !21085
  %i.k = add i32 %i.j, -2
  store i32 %i.k, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21, !noalias !21085
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !21085
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container13flat_multimapINS0_4test12copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEE14adopt_sequenceEONS0_6vectorIS8_S9_vEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::movelib::adaptive_xbuf.323", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16244 ; 2 uses
  %.not3.i.i.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not3.i.i.i.i.i.i, label %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE5clearEv.exit.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.a
  %_ZN5boost9container4test12copyable_int5countE.promoted.i.i.i.i.i.i = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4
  %i.c = trunc i64 %i.b to i32
  %i.d = shl i32 %i.c, 1
  %i.e = sub i32 %_ZN5boost9container4test12copyable_int5countE.promoted.i.i.i.i.i.i, %i.d
  store i32 %i.e, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21
  br label %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE5clearEv.exit.i.i.i

_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE5clearEv.exit.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %bb.a
  store i64 0, ptr %i.a, align 8, !tbaa !16244
  %i.f = load ptr, ptr %1, align 8, !tbaa !16253
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !16244
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  invoke void @_ZN5boost7movelib15detail_adaptive18adaptive_sort_implIPSt4pairINS_9container4test12copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_NS0_9iter_sizeISI_E4typeET0_RT1_(ptr noundef %i.f, i64 noundef %i.h, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE5clearEv.exit.i.i.i
  %i.j = load i64, ptr %i.i, align 8, !tbaa !17504 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_6vectorISt4pairINS0_4test12copyable_intES6_ENS0_13new_allocatorIS7_EEvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_OSH_T0_.exit.i.i, label %.preheader.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i:                         ; preds = %bb.b
  %_ZN5boost9container4test12copyable_int5countE.promoted.i.i.i.i.i.i.i = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4
  %i.k = trunc i64 %i.j to i32
  %i.l = shl i32 %i.k, 1
  %i.m = sub i32 %_ZN5boost9container4test12copyable_int5countE.promoted.i.i.i.i.i.i.i, %i.l
  store i32 %i.m, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21
  br label %_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_6vectorISt4pairINS0_4test12copyable_intES6_ENS0_13new_allocatorIS7_EEvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_OSH_T0_.exit.i.i

bb.c:                                             ; preds = %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE5clearEv.exit.i.i.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load i64, ptr %i.i, align 8, !tbaa !17504 ; 2 uses
  %.not.i.i6.i.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i6.i.i.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test12copyable_intES5_EPS6_mED2Ev.exit9.i.i.i.i, label %.preheader.i.i.i7.i.i.i.i

.preheader.i.i.i7.i.i.i.i:                        ; preds = %bb.c
  %_ZN5boost9container4test12copyable_int5countE.promoted.i.i.i8.i.i.i.i = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4
  %i.p = trunc i64 %i.o to i32
  %i.q = shl i32 %i.p, 1
  %i.r = sub i32 %_ZN5boost9container4test12copyable_int5countE.promoted.i.i.i8.i.i.i.i, %i.q
  store i32 %i.r, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test12copyable_intES5_EPS6_mED2Ev.exit9.i.i.i.i

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test12copyable_intES5_EPS6_mED2Ev.exit9.i.i.i.i: ; preds = %.preheader.i.i.i7.i.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.n

_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_6vectorISt4pairINS0_4test12copyable_intES6_ENS0_13new_allocatorIS7_EEvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_OSH_T0_.exit.i.i: ; preds = %.preheader.i.i.i.i.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %.not.i.i.i = icmp eq ptr %1, %0
  br i1 %.not.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test12copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13new_allocatorIS6_EEE20adopt_sequence_equalEONS0_6vectorIS6_SC_vEE.exit, label %bb.d, !prof !306

bb.d:                                             ; preds = %_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_6vectorISt4pairINS0_4test12copyable_intES6_ENS0_13new_allocatorIS7_EEvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_OSH_T0_.exit.i.i
  %i.s = load i64, ptr %i.a, align 8, !tbaa !16244 ; 2 uses
  %.not3.i.i.i.i.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not3.i.i.i.i.i.i.i.i, label %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE5clearEv.exit.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i:                 ; preds = %bb.d
  %_ZN5boost9container4test12copyable_int5countE.promoted.i.i.i.i.i.i.i.i = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4
  %i.t = trunc i64 %i.s to i32
  %i.u = shl i32 %i.t, 1
  %i.v = sub i32 %_ZN5boost9container4test12copyable_int5countE.promoted.i.i.i.i.i.i.i.i, %i.u
  store i32 %i.v, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !21
  br label %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE5clearEv.exit.i.i.i.i.i

_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE5clearEv.exit.i.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i, %bb.d
  store i64 0, ptr %i.a, align 8, !tbaa !16244
  %i.w = load ptr, ptr %0, align 8, !tbaa !19539  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE16priv_move_assignIS7_EEvONS1_IS5_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS5_SA_E4typeELj0EEENSD_12is_differentISJ_S7_EENSD_5bool_ILb0EEESO_E4typeE.exit.i.i.i, label %bb.e, !prof !306

bb.e:                                             ; preds = %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE5clearEv.exit.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !19540
  %i.z = shl i64 %i.y, 3
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.z) #24
  br label %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE16priv_move_assignIS7_EEvONS1_IS5_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS5_SA_E4typeELj0EEENSD_12is_differentISJ_S7_EENSD_5bool_ILb0EEESO_E4typeE.exit.i.i.i

_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE16priv_move_assignIS7_EEvONS1_IS5_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS5_SA_E4typeELj0EEENSD_12is_differentISJ_S7_EENSD_5bool_ILb0EEESO_E4typeE.exit.i.i.i: ; preds = %bb.e, %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE5clearEv.exit.i.i.i.i.i
  %i.aa = load ptr, ptr %1, align 8, !tbaa !16253
  store ptr %i.aa, ptr %0, align 8, !tbaa !16253
  %i.ab = load <2 x i64>, ptr %i.g, align 8, !tbaa !1562
  store <2 x i64> %i.ab, ptr %i.a, align 8, !tbaa !1562
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test12copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13new_allocatorIS6_EEE20adopt_sequence_equalEONS0_6vectorIS6_SC_vEE.exit

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test12copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13new_allocatorIS6_EEE20adopt_sequence_equalEONS0_6vectorIS6_SC_vEE.exit: ; preds = %_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_6vectorISt4pairINS0_4test12copyable_intES6_ENS0_13new_allocatorIS7_EEvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_OSH_T0_.exit.i.i, %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE16priv_move_assignIS7_EEvONS1_IS5_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS5_SA_E4typeELj0EEENSD_12is_differentISJ_S7_EENSD_5bool_ILb0EEESO_E4typeE.exit.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container13flat_multimapINS0_4test12copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEE14adopt_sequenceENS0_15ordered_range_tEONS0_6vectorIS8_S9_vEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i.i = icmp eq ptr %1, %0
end_hunk_7
begin_hunk_8_@_ZN5boost9container4test32flat_tree_ordered_insertion_testINS0_8flat_mapINS1_24movable_and_copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEENS0_13flat_multimapIS4_S4_S6_SA_EEEEbv:bb.a
  %i.lu = landingpad { ptr, i32 }
          catch ptr null
  %i.lv = extractvalue { ptr, i32 } %i.lu, 0
  call void @__clang_call_terminate(ptr %i.lv) #28
  unreachable

_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit328: ; preds = %_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEED2Ev.exit327
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.cy

bb.cy:                                            ; preds = %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit328, %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit319, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit311, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit234
  %.8 = phi i1 [ false, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit311 ], [ false, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit319 ], [ false, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit234 ], [ %.791, %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit ], [ false, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit328 ]
  ret i1 %.8

bb.cz:                                            ; preds = %bb.co, %bb.aw
  %.pn113.pn = phi { ptr, i32 } [ %.pn113, %bb.aw ], [ %.pn103, %bb.co ]
  resume { ptr, i32 } %.pn113.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9container4test28flat_tree_extract_adopt_testINS0_8flat_mapINS1_24movable_and_copyable_intES4_St4lessIS4_ENS0_13new_allocatorISt4pairIS4_S4_EEEEENS0_13flat_multimapIS4_S4_S6_SA_EEEEbv() local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"union.boost::move_detail::aligned_struct_wrapper.88", align 4 ; 6 uses
  %1 = alloca %"union.boost::move_detail::aligned_struct_wrapper.88", align 4 ; 6 uses
  %2 = alloca %"union.boost::move_detail::aligned_struct_wrapper.88", align 4 ; 6 uses
  %3 = alloca %"union.boost::move_detail::aligned_struct_wrapper.88", align 4 ; 6 uses
  %4 = alloca %"union.boost::move_detail::aligned_struct_wrapper.88", align 4 ; 6 uses
  %5 = alloca %"union.boost::move_detail::aligned_struct_wrapper.88", align 4 ; 6 uses
  %6 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 3 uses
  %7 = alloca %"union.boost::move_detail::aligned_struct_wrapper.88", align 4 ; 6 uses
  %8 = alloca %"union.boost::move_detail::aligned_struct_wrapper.88", align 4 ; 6 uses
  %9 = alloca %"class.boost::container::flat_map.374", align 8 ; 15 uses
  %10 = alloca %"class.boost::container::flat_map.374", align 8 ; 14 uses
  %11 = alloca %"struct.std::pair.408", align 8   ; 4 uses
  %12 = alloca %"struct.std::pair.408", align 8   ; 4 uses
  %13 = alloca %"class.boost::container::vector.379", align 8 ; 15 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %14 = alloca %"class.boost::container::flat_map.374", align 8 ; 17 uses
  %15 = alloca %"class.boost::container::flat_map.374", align 8 ; 15 uses
  %16 = alloca %"struct.std::pair.408", align 8   ; 4 uses
  %17 = alloca %"struct.std::pair.408", align 8   ; 4 uses
  %18 = alloca %"class.boost::container::vector.379", align 8 ; 13 uses
  %19 = alloca %"class.boost::container::flat_multimap.383", align 8 ; 17 uses
  %20 = alloca %"class.boost::container::flat_multimap.383", align 8 ; 15 uses
  %21 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 4 uses
  %22 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 4 uses
  %23 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 4 uses
  %24 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 4 uses
  %25 = alloca %"class.boost::container::vector.379", align 8 ; 13 uses
  %26 = alloca %"class.boost::container::vector.379", align 8 ; 4 uses
  %27 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 2 uses
  %28 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 2 uses
  %29 = alloca %"class.boost::container::flat_multimap.383", align 8 ; 13 uses
  %30 = alloca %"class.boost::container::flat_multimap.383", align 8 ; 11 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %31 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 4 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %32 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 4 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %33 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 4 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %34 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 4 uses
  %35 = alloca %"class.boost::container::vector.379", align 8 ; 8 uses
  %36 = alloca %"class.boost::container::vector.379", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 4
  %.pre = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21, !noalias !21228
  %i.m = add i32 %.pre, 2
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %i.n = phi i32 [ %i.m, %bb.a ], [ %i.w, %bb.d ]
  %.065348 = phi i64 [ 0, %bb.a ], [ %i.y, %bb.d ] ; 2 uses
  %i.o = trunc i64 %.065348 to i32                ; 3 uses
  %i.p = sub nsw i32 0, %i.o                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24, !noalias !21228
  store i32 %i.o, ptr %8, align 4, !tbaa !21233, !noalias !21228
  store i32 %i.p, ptr %i.k, align 4, !tbaa !21233, !noalias !21228
  store i32 %i.n, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21, !noalias !21228
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13new_allocatorIS6_EEE13insert_uniqueEOS6_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.408") align 8 %11, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 4 dereferenceable(8) %8)
          to label %bb.c unwind label %.body

.body:                                            ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21, !noalias !21228
  %i.s = add i32 %i.r, -2
  store i32 %i.s, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21, !noalias !21228
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24, !noalias !21228
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.u

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24, !noalias !21228
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24, !noalias !21235
  store i32 %i.o, ptr %7, align 4, !tbaa !21233, !noalias !21235
  store i32 %i.p, ptr %i.l, align 4, !tbaa !21233, !noalias !21235
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13new_allocatorIS6_EEE13insert_uniqueEOS6_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.408") align 8 %12, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 4 dereferenceable(8) %7)
          to label %bb.d unwind label %.body99

.body99:                                          ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21, !noalias !21235
  %i.v = add i32 %i.u, -2
  store i32 %i.v, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21, !noalias !21235
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24, !noalias !21235
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.u

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21, !noalias !21235 ; 2 uses
  %i.x = add i32 %i.w, -2
  store i32 %i.x, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21, !noalias !21235
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24, !noalias !21235
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.y = add nuw nsw i64 %.065348, 1              ; 2 uses
  %.not = icmp eq i64 %i.y, 100
  br i1 %.not, label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_13new_allocatorIS5_EEvED2Ev.exit, label %bb.b, !llvm.loop !21240

_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_13new_allocatorIS5_EEvED2Ev.exit: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %i.z = load ptr, ptr %9, align 8, !tbaa !21165, !noalias !21241 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.ae = load <2 x i64>, ptr %i.aa, align 8, !tbaa !1562, !noalias !21241
  %i.af = load i64, ptr %i.aa, align 8, !tbaa !21244, !noalias !21241 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false), !noalias !21241
  store ptr %i.z, ptr %13, align 8, !tbaa !21165
  store <2 x i64> %i.ae, ptr %i.ac, align 8, !tbaa !1562
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !21155 ; 2 uses
  %.not.i = icmp eq i64 %i.af, %i.ah
  br i1 %.not.i, label %bb.e, label %.critedgethread-pre-split

bb.e:                                             ; preds = %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_13new_allocatorIS5_EEvED2Ev.exit
  %.idx.i = shl nsw i64 %i.af, 3
  %i.ai = getelementptr inbounds i8, ptr %i.z, i64 %.idx.i
  %.not2526.i = icmp eq i64 %i.af, 0
  br i1 %.not2526.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairINS1_24movable_and_copyable_intES5_ENS0_13new_allocatorIS6_EEvEENS0_8flat_mapIS5_S5_St4lessIS5_ES8_EEEEbRKT_RKT0_.exit.preheader, label %.lr.ph.preheader.i

_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairINS1_24movable_and_copyable_intES5_ENS0_13new_allocatorIS6_EEvEENS0_8flat_mapIS5_S5_St4lessIS5_ES8_EEEEbRKT_RKT0_.exit.preheader: ; preds = %bb.f, %bb.e
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairINS1_24movable_and_copyable_intES5_ENS0_13new_allocatorIS6_EEvEENS0_8flat_mapIS5_S5_St4lessIS5_ES8_EEEEbRKT_RKT0_.exit

.lr.ph.preheader.i:                               ; preds = %bb.e
  %i.aj = load ptr, ptr %10, align 8, !tbaa !21165, !noalias !21245
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.preheader.i
  %.sroa.021.028.i = phi ptr [ %i.aq, %bb.f ], [ %i.z, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.016.027.i = phi ptr [ %i.ar, %bb.f ], [ %i.aj, %.lr.ph.preheader.i ] ; 2 uses
  %i.ak = load <2 x i32>, ptr %.sroa.021.028.i, align 4
  %i.al = load <2 x i32>, ptr %.sroa.016.027.i, align 4
  %i.am = icmp eq <2 x i32> %i.ak, %i.al          ; 2 uses
  %i.an = extractelement <2 x i1> %i.am, i64 0
  %i.ao = extractelement <2 x i1> %i.am, i64 1
  %i.ap = select i1 %i.an, i1 %i.ao, i1 false
  br i1 %i.ap, label %bb.f, label %.critedgethread-pre-split

bb.f:                                             ; preds = %.lr.ph.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.021.028.i, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.016.027.i, i64 8
  %.not25.i = icmp eq ptr %i.aq, %i.ai
  br i1 %.not25.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairINS1_24movable_and_copyable_intES5_ENS0_13new_allocatorIS6_EEvEENS0_8flat_mapIS5_S5_St4lessIS5_ES8_EEEEbRKT_RKT0_.exit.preheader, label %.lr.ph.i, !llvm.loop !21254

bb.g:                                             ; preds = %_ZN5boost9container4test14random_shuffleINS0_12vec_iteratorIPSt4pairINS1_24movable_and_copyable_intES5_ELb0EEEEEvT_S9_.exit
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.h:                                             ; preds = %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_13new_allocatorIS5_EEvE12emplace_backIJiiEEERS5_DpOT_.exit
  %i.at = load ptr, ptr %13, align 8, !tbaa !21165, !noalias !21255 ; 2 uses
  %i.au = load i64, ptr %i.ac, align 8, !tbaa !21155, !noalias !21258 ; 2 uses
  %i.av = icmp sgt i64 %i.au, 1
  br i1 %i.av, label %.lr.ph.i102, label %_ZN5boost9container4test14random_shuffleINS0_12vec_iteratorIPSt4pairINS1_24movable_and_copyable_intES5_ELb0EEEEEvT_S9_.exit

.lr.ph.i102:                                      ; preds = %bb.h, %bb.j
  %.0.in10.i = phi i64 [ %.011.i, %bb.j ], [ %i.au, %bb.h ] ; 3 uses
  %.011.i = add nsw i64 %.0.in10.i, -1            ; 3 uses
  %i.aw = call i32 @rand() #24
  %i.ax = sext i32 %i.aw to i64
  %i.ay = srem i64 %i.ax, %.0.in10.i              ; 2 uses
  %.not.i103 = icmp eq i64 %i.ay, %.011.i
  br i1 %.not.i103, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i102
  %i.az = getelementptr inbounds [8 x i8], ptr %i.at, i64 %.011.i ; 4 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.ay ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bc = load <2 x i32>, ptr %i.az, align 4, !tbaa !21233
  store i32 0, ptr %i.az, align 4, !tbaa !21233
  store i32 0, ptr %i.bb, align 4, !tbaa !21233
  %i.bd = load <2 x i32>, ptr %i.ba, align 4, !tbaa !21233
  store <2 x i32> %i.bd, ptr %i.az, align 4, !tbaa !21233
  store <2 x i32> %i.bc, ptr %i.ba, align 4, !tbaa !21233
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i102
  %i.be = icmp samesign ugt i64 %.0.in10.i, 2
  br i1 %i.be, label %.lr.ph.i102, label %_ZN5boost9container4test14random_shuffleINS0_12vec_iteratorIPSt4pairINS1_24movable_and_copyable_intES5_ELb0EEEEEvT_S9_.exit, !llvm.loop !21261

_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairINS1_24movable_and_copyable_intES5_ENS0_13new_allocatorIS6_EEvEENS0_8flat_mapIS5_S5_St4lessIS5_ES8_EEEEbRKT_RKT0_.exit: ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairINS1_24movable_and_copyable_intES5_ENS0_13new_allocatorIS6_EEvEENS0_8flat_mapIS5_S5_St4lessIS5_ES8_EEEEbRKT_RKT0_.exit.preheader, %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_13new_allocatorIS5_EEvE12emplace_backIJiiEEERS5_DpOT_.exit
  %.047349 = phi i64 [ %i.bs, %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_13new_allocatorIS5_EEvE12emplace_backIJiiEEERS5_DpOT_.exit ], [ 0, %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairINS1_24movable_and_copyable_intES5_ENS0_13new_allocatorIS6_EEvEENS0_8flat_mapIS5_S5_St4lessIS5_ES8_EEEEbRKT_RKT0_.exit.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.bf = trunc i64 %.047349 to i32               ; 3 uses
  store i32 %i.bf, ptr %i.a, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.bg = sub nsw i32 0, %i.bf
  store i32 %i.bg, ptr %i.b, align 4, !tbaa !21
  %i.bh = load i64, ptr %i.ac, align 8, !tbaa !21155 ; 4 uses
  %i.bi = load i64, ptr %i.ad, align 8, !tbaa !21159
  %.not.i104 = icmp eq i64 %i.bh, %i.bi
  br i1 %.not.i104, label %bb.l, label %bb.k, !prof !306

bb.k:                                             ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairINS1_24movable_and_copyable_intES5_ENS0_13new_allocatorIS6_EEvEENS0_8flat_mapIS5_S5_St4lessIS5_ES8_EEEEbRKT_RKT0_.exit
  %i.bj = load ptr, ptr %13, align 8, !tbaa !21165, !nonnull !400, !noundef !400
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bh ; 2 uses
  store i32 %i.bf, ptr %i.bk, align 4, !tbaa !21233
  %i.bl = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bn = load i32, ptr %i.b, align 4, !tbaa !21
  store i32 %i.bn, ptr %i.bm, align 4, !tbaa !21233
  %i.bo = add i32 %i.bl, 2
  store i32 %i.bo, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  %i.bp = add i64 %i.bh, 1
  store i64 %i.bp, ptr %i.ac, align 8, !tbaa !21155
  br label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_13new_allocatorIS5_EEvE12emplace_backIJiiEEERS5_DpOT_.exit

bb.l:                                             ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairINS1_24movable_and_copyable_intES5_ENS0_13new_allocatorIS6_EEvEENS0_8flat_mapIS5_S5_St4lessIS5_ES8_EEEEbRKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.bq = load ptr, ptr %13, align 8, !tbaa !21165
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bh
  invoke void @_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_13new_allocatorIS5_EEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS7_JiiEEEEENS0_12vec_iteratorIPS5_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.386") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef %i.br, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.b, ptr nonnull align 4 dereferenceable(4) %i.a)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_13new_allocatorIS5_EEvE12emplace_backIJiiEEERS5_DpOT_.exit

_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_13new_allocatorIS5_EEvE12emplace_backIJiiEEERS5_DpOT_.exit: ; preds = %.noexc, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.bs = add nuw nsw i64 %.047349, 1             ; 2 uses
  %.not71 = icmp eq i64 %i.bs, 100
  br i1 %.not71, label %bb.h, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairINS1_24movable_and_copyable_intES5_ENS0_13new_allocatorIS6_EEvEENS0_8flat_mapIS5_S5_St4lessIS5_ES8_EEEEbRKT_RKT0_.exit, !llvm.loop !21262

bb.m:                                             ; preds = %bb.l
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.t

_ZN5boost9container4test14random_shuffleINS0_12vec_iteratorIPSt4pairINS1_24movable_and_copyable_intES5_ELb0EEEEEvT_S9_.exit: ; preds = %bb.j, %bb.h
  invoke void @_ZN5boost9container3dtl31flat_tree_adopt_sequence_uniqueINS0_6vectorISt4pairINS0_4test24movable_and_copyable_intES6_ENS0_13new_allocatorIS7_EEvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_OSH_T0_NS_11move_detail5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEE14adopt_sequenceEONS0_6vectorIS8_S9_vEE.exit unwind label %bb.g

_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEE14adopt_sequenceEONS0_6vectorIS8_S9_vEE.exit: ; preds = %_ZN5boost9container4test14random_shuffleINS0_12vec_iteratorIPSt4pairINS1_24movable_and_copyable_intES5_ELb0EEEEEvT_S9_.exit
  %i.bu = load i64, ptr %i.aa, align 8, !tbaa !21155 ; 5 uses
  %i.bv = load i64, ptr %i.ag, align 8, !tbaa !21155 ; 2 uses
  %.not.i106 = icmp eq i64 %i.bu, %i.bv
  br i1 %.not.i106, label %bb.n, label %.critedgethread-pre-split

bb.n:                                             ; preds = %_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEE14adopt_sequenceEONS0_6vectorIS8_S9_vEE.exit
  %i.bw = load ptr, ptr %9, align 8, !tbaa !21165, !noalias !21263 ; 3 uses
  %.idx.i108 = shl nsw i64 %i.bu, 3
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 %.idx.i108 ; 2 uses
  %.not2526.i109 = icmp eq i64 %i.bu, 0
  br i1 %.not2526.i109, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairINS1_24movable_and_copyable_intES5_ENS0_13new_allocatorIS6_EEvEES9_EEbRKT_RKT0_.exit, label %.lr.ph.preheader.i110

.lr.ph.preheader.i110:                            ; preds = %bb.n
  %i.by = load ptr, ptr %10, align 8, !tbaa !21165, !noalias !21272 ; 2 uses
  br label %.lr.ph.i111

.lr.ph.i111:                                      ; preds = %bb.o, %.lr.ph.preheader.i110
  %.sroa.021.028.i112 = phi ptr [ %i.cf, %bb.o ], [ %i.bw, %.lr.ph.preheader.i110 ] ; 2 uses
  %.sroa.016.027.i113 = phi ptr [ %i.cg, %bb.o ], [ %i.by, %.lr.ph.preheader.i110 ] ; 2 uses
  %i.bz = load <2 x i32>, ptr %.sroa.021.028.i112, align 4
  %i.ca = load <2 x i32>, ptr %.sroa.016.027.i113, align 4
  %i.cb = icmp eq <2 x i32> %i.bz, %i.ca          ; 2 uses
  %i.cc = extractelement <2 x i1> %i.cb, i64 0
  %i.cd = extractelement <2 x i1> %i.cb, i64 1
  %i.ce = select i1 %i.cc, i1 %i.cd, i1 false
  br i1 %i.ce, label %bb.o, label %.critedgethread-pre-split

bb.o:                                             ; preds = %.lr.ph.i111
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.021.028.i112, i64 8 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.016.027.i113, i64 8
  %.not25.i114 = icmp eq ptr %i.cf, %i.bx
  br i1 %.not25.i114, label %.lr.ph.i120, label %.lr.ph.i111, !llvm.loop !21281

.lr.ph.i120:                                      ; preds = %bb.o, %.lr.ph.i120
  %.sroa.021.028.i121 = phi ptr [ %i.cn, %.lr.ph.i120 ], [ %i.bw, %bb.o ] ; 2 uses
  %.sroa.016.027.i122 = phi ptr [ %i.co, %.lr.ph.i120 ], [ %i.by, %bb.o ] ; 2 uses
  %i.ch = load <2 x i32>, ptr %.sroa.021.028.i121, align 4
  %i.ci = load <2 x i32>, ptr %.sroa.016.027.i122, align 4
  %i.cj = icmp eq <2 x i32> %i.ch, %i.ci          ; 2 uses
  %i.ck = extractelement <2 x i1> %i.cj, i64 0
  %i.cl = extractelement <2 x i1> %i.cj, i64 1
  %i.cm = select i1 %i.ck, i1 %i.cl, i1 false     ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.021.028.i121, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.016.027.i122, i64 8
  %.not25.i123 = icmp ne ptr %i.cn, %i.bx
  %or.cond.not = select i1 %i.cm, i1 %.not25.i123, i1 false
  br i1 %or.cond.not, label %.lr.ph.i120, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairINS1_24movable_and_copyable_intES5_ENS0_13new_allocatorIS6_EEvEES9_EEbRKT_RKT0_.exit, !llvm.loop !21282

_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairINS1_24movable_and_copyable_intES5_ENS0_13new_allocatorIS6_EEvEES9_EEbRKT_RKT0_.exit: ; preds = %.lr.ph.i120, %bb.n
  %.2.i116 = phi i1 [ true, %bb.n ], [ %i.cm, %.lr.ph.i120 ]
  %i.cp = load i64, ptr %i.ac, align 8, !tbaa !21155 ; 2 uses
  %.not3.i.i124 = icmp eq i64 %i.cp, 0
  br i1 %.not3.i.i124, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i127, label %.lr.ph.preheader.i.i125

.lr.ph.preheader.i.i125:                          ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairINS1_24movable_and_copyable_intES5_ENS0_13new_allocatorIS6_EEvEES9_EEbRKT_RKT0_.exit
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i126 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = shl i32 %i.cq, 1
  %i.cs = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i126, %i.cr
  store i32 %i.cs, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  br label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i127

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i127: ; preds = %.lr.ph.preheader.i.i125, %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairINS1_24movable_and_copyable_intES5_ENS0_13new_allocatorIS6_EEvEES9_EEbRKT_RKT0_.exit
  %i.ct = load i64, ptr %i.ad, align 8, !tbaa !21159 ; 2 uses
  %.not.i.i128 = icmp eq i64 %i.ct, 0
  br i1 %.not.i.i128, label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_13new_allocatorIS5_EEvED2Ev.exit129, label %bb.p

bb.p:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i127
  %i.cu = load ptr, ptr %13, align 8, !tbaa !21160
  %i.cv = shl i64 %i.ct, 3
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cv) #24
  %.pre359 = load i64, ptr %i.ag, align 8, !tbaa !21155
  br label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_13new_allocatorIS5_EEvED2Ev.exit129

_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_13new_allocatorIS5_EEvED2Ev.exit129: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i127, %bb.p
  %i.cw = phi i64 [ %i.bu, %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i127 ], [ %.pre359, %bb.p ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  %.not3.i.i.i.i.i = icmp eq i64 %i.cw, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_13new_allocatorIS5_EEvED2Ev.exit129
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.cx = trunc i64 %i.cw to i32
  %i.cy = shl i32 %i.cx, 1
  %i.cz = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i, %i.cy
  store i32 %i.cz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  br label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i, %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_13new_allocatorIS5_EEvED2Ev.exit129
  %i.da = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.db = load i64, ptr %i.da, align 8, !tbaa !21159 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.db, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i
  %i.dc = load ptr, ptr %10, align 8, !tbaa !21160
  %i.dd = shl i64 %i.db, 3
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.dd) #24
  br label %_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEED2Ev.exit

_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEED2Ev.exit: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  %i.de = load i64, ptr %i.aa, align 8, !tbaa !21155 ; 2 uses
  %.not3.i.i.i.i.i130 = icmp eq i64 %i.de, 0
  br i1 %.not3.i.i.i.i.i130, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i133, label %.lr.ph.preheader.i.i.i.i.i131

.lr.ph.preheader.i.i.i.i.i131:                    ; preds = %_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEED2Ev.exit
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i132 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.df = trunc i64 %i.de to i32
  %i.dg = shl i32 %i.df, 1
  %i.dh = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i132, %i.dg
  store i32 %i.dh, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  br label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i133

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i133: ; preds = %.lr.ph.preheader.i.i.i.i.i131, %_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEED2Ev.exit
  %i.di = load i64, ptr %i.ab, align 8, !tbaa !21159 ; 2 uses
  %.not.i.i.i.i.i134 = icmp eq i64 %i.di, 0
  br i1 %.not.i.i.i.i.i134, label %_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEED2Ev.exit135, label %bb.r

bb.r:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i133
  %i.dj = load ptr, ptr %9, align 8, !tbaa !21160
  %i.dk = shl i64 %i.di, 3
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dk) #24
  br label %_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEED2Ev.exit135

_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEED2Ev.exit135: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i133, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br i1 %.2.i116, label %bb.s, label %bb.bu

end_hunk_8
begin_hunk_9_@_ZN5boost7movelib17op_buffered_mergeINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEENS0_7move_opENS0_10range_xbufIS8_mSH_EEEEvT_SK_SK_T0_T1_RT2_:bb.a

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.040.1 = phi ptr [ %i.dj, %bb.f ], [ %.sroa.040.0, %bb.g ]
  %.1.i8 = phi ptr [ %.015.i, %bb.f ], [ %i.dm, %bb.g ] ; 2 uses
  %i.dn = getelementptr i8, ptr %.sroa.041.0, i64 8
  %.not.i9 = icmp eq ptr %.1.i8, %.lcssa116
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i9, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_NS2_12vec_iteratorISE_Lb0EEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %.lr.ph.i7, !llvm.loop !24870

.lr.ph.i13:                                       ; preds = %bb.d, %.lr.ph.i13
  %i.do = phi ptr [ %i.dv, %.lr.ph.i13 ], [ %i.b, %bb.d ] ; 2 uses
  %.010.i14 = phi i64 [ %.1.i16, %.lr.ph.i13 ], [ %i.n, %bb.d ] ; 2 uses
  %i.dp = lshr i64 %.010.i14, 1                   ; 3 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.dp ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !21233, !noalias !25556
  %i.ds = icmp slt i32 %i.dr, %i.f                ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %.neg.i15 = xor i64 %i.dp, -1
  %i.du = add i64 %.010.i14, %.neg.i15
  %i.dv = select i1 %i.ds, ptr %i.dt, ptr %i.do   ; 5 uses
  %.1.i16 = select i1 %i.ds, i64 %i.du, i64 %i.dp ; 2 uses
  %.not.i17 = icmp eq i64 %.1.i16, 0
  br i1 %.not.i17, label %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEET_SH_SH_RKT0_T1_.exit, label %.lr.ph.i13, !llvm.loop !24823

_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEET_SH_SH_RKT0_T1_.exit: ; preds = %.lr.ph.i13
  %i.dw = ptrtoaddr ptr %i.dv to i64              ; 2 uses
  store ptr %i.dv, ptr %2, align 8, !tbaa !21361
  %i.dx = load ptr, ptr %1, align 8, !tbaa !21160 ; 9 uses
  %i.dy = ptrtoaddr ptr %i.dx to i64              ; 2 uses
  %i.dz = load ptr, ptr %3, align 8, !tbaa !23063 ; 10 uses
  %.not3.i.i.i18 = icmp eq ptr %i.dv, %i.dx
  br i1 %.not3.i.i.i18, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_NS2_12vec_iteratorISE_Lb0EEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit.sink.split, label %.lr.ph.i.i.i19.preheader

.lr.ph.i.i.i19.preheader:                         ; preds = %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEET_SH_SH_RKT0_T1_.exit
  %i.ea = add i64 %i.dw, -8
  %i.eb = sub i64 %i.ea, %i.dy                    ; 2 uses
  %i.ec = lshr i64 %i.eb, 3
  %i.ed = add nuw nsw i64 %i.ec, 1                ; 2 uses
  %min.iters.check171 = icmp ult i64 %i.eb, 72
  br i1 %min.iters.check171, label %.lr.ph.i.i.i19.preheader196, label %vector.memcheck162

vector.memcheck162:                               ; preds = %.lr.ph.i.i.i19.preheader
  %reass.sub = sub i64 %i.dw, %i.dy
  %i.ee = and i64 %reass.sub, -8                  ; 2 uses
  %scevgep164 = getelementptr i8, ptr %i.dz, i64 %i.ee
  %scevgep166 = getelementptr i8, ptr %i.dx, i64 %i.ee
  %bound0167 = icmp ult ptr %i.dz, %scevgep166
  %bound1168 = icmp ult ptr %i.dx, %scevgep164
  %found.conflict169 = and i1 %bound0167, %bound1168
  br i1 %found.conflict169, label %.lr.ph.i.i.i19.preheader196, label %vector.ph172

vector.ph172:                                     ; preds = %vector.memcheck162
  %n.vec173 = and i64 %i.ed, 4611686018427387900  ; 3 uses
  %i.ef = shl i64 %n.vec173, 3                    ; 2 uses
  %i.eg = getelementptr i8, ptr %i.dx, i64 %i.ef
  %i.eh = getelementptr i8, ptr %i.dz, i64 %i.ef  ; 2 uses
  br label %vector.body174

vector.body174:                                   ; preds = %vector.body174, %vector.ph172
  %index175 = phi i64 [ 0, %vector.ph172 ], [ %index.next188, %vector.body174 ] ; 2 uses
  %i.ei = shl i64 %index175, 3                    ; 3 uses
  %i.ej = or disjoint i64 %i.ei, 16               ; 2 uses
  %next.gep176 = getelementptr i8, ptr %i.dx, i64 %i.ei ; 2 uses
  %next.gep177 = getelementptr i8, ptr %i.dx, i64 %i.ej ; 2 uses
  %next.gep178 = getelementptr i8, ptr %i.dz, i64 %i.ei
  %next.gep179 = getelementptr i8, ptr %i.dz, i64 %i.ej
  %wide.vec180 = load <4 x i32>, ptr %next.gep176, align 4, !tbaa !21233, !alias.scope !25559
  %wide.vec183 = load <4 x i32>, ptr %next.gep177, align 4, !tbaa !21233, !alias.scope !25559
  store <4 x i32> %wide.vec180, ptr %next.gep178, align 4, !tbaa !21233, !alias.scope !25562, !noalias !25559
  store <4 x i32> %wide.vec183, ptr %next.gep179, align 4, !tbaa !21233, !alias.scope !25562, !noalias !25559
  store <4 x i32> zeroinitializer, ptr %next.gep176, align 4, !tbaa !21233, !alias.scope !25559
  store <4 x i32> zeroinitializer, ptr %next.gep177, align 4, !tbaa !21233, !alias.scope !25559
  %index.next188 = add nuw i64 %index175, 4       ; 2 uses
  %i.ek = icmp eq i64 %index.next188, %n.vec173
  br i1 %i.ek, label %middle.block189, label %vector.body174, !llvm.loop !25564

middle.block189:                                  ; preds = %vector.body174
  %cmp.n190 = icmp eq i64 %i.ed, %n.vec173
  br i1 %cmp.n190, label %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignINS3_12vec_iteratorIS7_Lb0EEEEEvT_m.exit23, label %.lr.ph.i.i.i19.preheader196

.lr.ph.i.i.i19.preheader196:                      ; preds = %vector.memcheck162, %.lr.ph.i.i.i19.preheader, %middle.block189
  %.ph = phi ptr [ %i.dx, %vector.memcheck162 ], [ %i.dx, %.lr.ph.i.i.i19.preheader ], [ %i.eg, %middle.block189 ]
  %.04.i.i.i20.ph = phi ptr [ %i.dz, %vector.memcheck162 ], [ %i.dz, %.lr.ph.i.i.i19.preheader ], [ %i.eh, %middle.block189 ]
  br label %.lr.ph.i.i.i19

.lr.ph.i.i.i19:                                   ; preds = %.lr.ph.i.i.i19.preheader196, %.lr.ph.i.i.i19
  %i.el = phi ptr [ %i.eq, %.lr.ph.i.i.i19 ], [ %.ph, %.lr.ph.i.i.i19.preheader196 ] ; 4 uses
  %.04.i.i.i20 = phi ptr [ %i.er, %.lr.ph.i.i.i19 ], [ %.04.i.i.i20.ph, %.lr.ph.i.i.i19.preheader196 ] ; 3 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !21233
  store i32 %i.em, ptr %.04.i.i.i20, align 4, !tbaa !21233
  store i32 0, ptr %i.el, align 4, !tbaa !21233
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 4 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.04.i.i.i20, i64 4
  %i.ep = load i32, ptr %i.en, align 4, !tbaa !21233
  store i32 %i.ep, ptr %i.eo, align 4, !tbaa !21233
  store i32 0, ptr %i.en, align 4, !tbaa !21233
  %i.eq = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.04.i.i.i20, i64 8 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.eq, %i.dv
  br i1 %.not.i.i.i21, label %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignINS3_12vec_iteratorIS7_Lb0EEEEEvT_m.exit23, label %.lr.ph.i.i.i19, !llvm.loop !25565

_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignINS3_12vec_iteratorIS7_Lb0EEEEEvT_m.exit23: ; preds = %.lr.ph.i.i.i19, %middle.block189
  %.lcssa = phi ptr [ %i.eh, %middle.block189 ], [ %i.er, %.lr.ph.i.i.i19 ] ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.lcssa, ptr %i.es, align 8, !tbaa !23065
  %i.et = load ptr, ptr %0, align 8, !tbaa !21160
  %i.eu = load ptr, ptr %1, align 8, !tbaa !21160
  %i.ev = load ptr, ptr %2, align 8, !tbaa !21160
  br label %.lr.ph.i24

.lr.ph.i24:                                       ; preds = %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignINS3_12vec_iteratorIS7_Lb0EEEEEvT_m.exit23, %bb.l
  %.sroa.032.0 = phi ptr [ %i.eu, %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignINS3_12vec_iteratorIS7_Lb0EEEEEvT_m.exit23 ], [ %.sroa.032.1, %bb.l ] ; 4 uses
  %.sroa.0.0 = phi ptr [ %i.ev, %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignINS3_12vec_iteratorIS7_Lb0EEEEEvT_m.exit23 ], [ %i.fj, %bb.l ] ; 3 uses
  %.016.i = phi ptr [ %.lcssa, %_ZN5boost7movelib10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES5_EmNS0_7move_opEE11move_assignINS3_12vec_iteratorIS7_Lb0EEEEEvT_m.exit23 ], [ %.1.i25, %bb.l ] ; 4 uses
  %i.ew = icmp eq ptr %i.et, %.sroa.032.0
  br i1 %i.ew, label %.lr.ph.i.i.i27, label %bb.i

.lr.ph.i.i.i27:                                   ; preds = %.lr.ph.i24, %.lr.ph.i.i.i27
  %i.ex = phi ptr [ %i.ez, %.lr.ph.i.i.i27 ], [ %.sroa.0.0, %.lr.ph.i24 ] ; 2 uses
  %.05.i.i.i28 = phi ptr [ %i.ey, %.lr.ph.i.i.i27 ], [ %.016.i, %.lr.ph.i24 ] ; 2 uses
  %i.ey = getelementptr inbounds i8, ptr %.05.i.i.i28, i64 -8 ; 4 uses
  %i.ez = getelementptr inbounds i8, ptr %i.ex, i64 -8 ; 2 uses
  %i.fa = load i32, ptr %i.ey, align 4, !tbaa !21233, !noalias !25566
  store i32 %i.fa, ptr %i.ez, align 4, !tbaa !21233, !noalias !25566
  store i32 0, ptr %i.ey, align 4, !tbaa !21233, !noalias !25566
  %i.fb = getelementptr inbounds i8, ptr %.05.i.i.i28, i64 -4 ; 2 uses
  %i.fc = getelementptr inbounds i8, ptr %i.ex, i64 -4
  %i.fd = load i32, ptr %i.fb, align 4, !tbaa !21233, !noalias !25566
  store i32 %i.fd, ptr %i.fc, align 4, !tbaa !21233, !noalias !25566
  store i32 0, ptr %i.fb, align 4, !tbaa !21233, !noalias !25566
  %.not.i.i.i29 = icmp eq ptr %i.dz, %i.ey
  br i1 %.not.i.i.i29, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_NS2_12vec_iteratorISE_Lb0EEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %.lr.ph.i.i.i27, !llvm.loop !24893

bb.i:                                             ; preds = %.lr.ph.i24
  %i.fe = getelementptr inbounds i8, ptr %.016.i, i64 -8 ; 3 uses
  %i.ff = getelementptr inbounds i8, ptr %.sroa.032.0, i64 -8 ; 3 uses
  %i.fg = load i32, ptr %i.fe, align 4, !tbaa !21233 ; 2 uses
  %i.fh = load i32, ptr %i.ff, align 4, !tbaa !21233 ; 2 uses
  %i.fi = icmp slt i32 %i.fg, %i.fh
  %i.fj = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -8 ; 3 uses
  %i.fk = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -4
  br i1 %i.fi, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.fh, ptr %i.fj, align 4, !tbaa !21233
  store i32 0, ptr %i.ff, align 4, !tbaa !21233
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  store i32 %i.fg, ptr %i.fj, align 4, !tbaa !21233
  store i32 0, ptr %i.fe, align 4, !tbaa !21233
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.016.i.sink = phi ptr [ %.016.i, %bb.k ], [ %.sroa.032.0, %bb.j ]
  %.sroa.032.1 = phi ptr [ %.sroa.032.0, %bb.k ], [ %i.ff, %bb.j ]
  %.1.i25 = phi ptr [ %i.fe, %bb.k ], [ %.016.i, %bb.j ] ; 2 uses
  %i.fl = getelementptr inbounds i8, ptr %.016.i.sink, i64 -4 ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !21233
  store i32 %i.fm, ptr %i.fk, align 4, !tbaa !21233
  store i32 0, ptr %i.fl, align 4, !tbaa !21233
  %.not.i26 = icmp eq ptr %i.dz, %.1.i25
  br i1 %.not.i26, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_NS2_12vec_iteratorISE_Lb0EEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %.lr.ph.i24, !llvm.loop !24894

_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_NS2_12vec_iteratorISE_Lb0EEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit.sink.split: ; preds = %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEET_SH_SH_RKT0_T1_.exit, %_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEET_SH_SH_RKT0_T1_.exit
  %.sink = phi ptr [ %i.z, %_ZN5boost7movelib11upper_boundINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEET_SH_SH_RKT0_T1_.exit ], [ %i.dz, %_ZN5boost7movelib11lower_boundINS_9container12vec_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES7_NS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEET_SH_SH_RKT0_T1_.exit ]
  %i.fn = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sink, ptr %i.fn, align 8, !tbaa !23065
  br label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_NS2_12vec_iteratorISE_Lb0EEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit

_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_NS2_12vec_iteratorISE_Lb0EEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit: ; preds = %bb.h, %.lr.ph.i.i.i10.prol.loopexit, %.lr.ph.i.i.i10, %bb.l, %.lr.ph.i.i.i27, %middle.block158, %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_NS2_12vec_iteratorISE_Lb0EEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit.sink.split, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container4test14random_shuffleINS0_12vec_iteratorIPSt4pairINS1_24movable_and_copyable_intES5_ELb0EEEEEvT_S9_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !21361
  %i.b = load ptr, ptr %0, align 8, !tbaa !21361
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
  %i.h = tail call i32 @rand() #24
  %i.i = sext i32 %i.h to i64
  %i.j = srem i64 %i.i, %.0.in10                  ; 2 uses
  %.not = icmp eq i64 %i.j, %.011
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = load ptr, ptr %0, align 8, !tbaa !21361  ; 2 uses
  %i.l = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.011 ; 4 uses
  %i.m = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.j ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.o = load <2 x i32>, ptr %i.l, align 4, !tbaa !21233
  store i32 0, ptr %i.l, align 4, !tbaa !21233
  store i32 0, ptr %i.n, align 4, !tbaa !21233
  %i.p = load <2 x i32>, ptr %i.m, align 4, !tbaa !21233
  store <2 x i32> %i.p, ptr %i.l, align 4, !tbaa !21233
  store <2 x i32> %i.o, ptr %i.m, align 4, !tbaa !21233
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.q = icmp samesign ugt i64 %.0.in10, 2
  br i1 %i.q, label %.lr.ph, label %._crit_edge, !llvm.loop !21261
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEE14adopt_sequenceENS0_22ordered_unique_range_tEONS0_6vectorIS8_S9_vEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i.i = icmp eq ptr %1, %0
  br i1 %.not.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13new_allocatorIS6_EEE21adopt_sequence_uniqueENS0_22ordered_unique_range_tEONS0_6vectorIS6_SC_vEE.exit, label %bb.b, !prof !306

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !21155 ; 2 uses
  %.not3.i.i.i.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not3.i.i.i.i.i.i.i, label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_13new_allocatorIS5_EEvE5clearEv.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %bb.b
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.c = trunc i64 %i.b to i32
  %i.d = shl i32 %i.c, 1
  %i.e = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i.i, %i.d
  store i32 %i.e, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  br label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_13new_allocatorIS5_EEvE5clearEv.exit.i.i.i.i

_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_13new_allocatorIS5_EEvE5clearEv.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %bb.b
  store i64 0, ptr %i.a, align 8, !tbaa !21155
  %i.f = load ptr, ptr %0, align 8, !tbaa !24260  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_13new_allocatorIS5_EEvE16priv_move_assignIS7_EEvONS1_IS5_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS5_SA_E4typeELj0EEENSD_12is_differentISJ_S7_EENSD_5bool_ILb0EEESO_E4typeE.exit.i.i, label %bb.c, !prof !306

bb.c:                                             ; preds = %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_13new_allocatorIS5_EEvE5clearEv.exit.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !24261
  %i.i = shl i64 %i.h, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.i) #24
  br label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_13new_allocatorIS5_EEvE16priv_move_assignIS7_EEvONS1_IS5_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS5_SA_E4typeELj0EEENSD_12is_differentISJ_S7_EENSD_5bool_ILb0EEESO_E4typeE.exit.i.i

_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_13new_allocatorIS5_EEvE16priv_move_assignIS7_EEvONS1_IS5_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS5_SA_E4typeELj0EEENSD_12is_differentISJ_S7_EENSD_5bool_ILb0EEESO_E4typeE.exit.i.i: ; preds = %bb.c, %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_13new_allocatorIS5_EEvE5clearEv.exit.i.i.i.i
  %i.j = load ptr, ptr %1, align 8, !tbaa !21165
  store ptr %i.j, ptr %0, align 8, !tbaa !21165
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load <2 x i64>, ptr %i.k, align 8, !tbaa !1562
  store <2 x i64> %i.l, ptr %i.a, align 8, !tbaa !1562
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13new_allocatorIS6_EEE21adopt_sequence_uniqueENS0_22ordered_unique_range_tEONS0_6vectorIS6_SC_vEE.exit

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13new_allocatorIS6_EEE21adopt_sequence_uniqueENS0_22ordered_unique_range_tEONS0_6vectorIS6_SC_vEE.exit: ; preds = %bb.a, %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_13new_allocatorIS5_EEvE16priv_move_assignIS7_EEvONS1_IS5_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS5_SA_E4typeELj0EEENSD_12is_differentISJ_S7_EENSD_5bool_ILb0EEESO_E4typeE.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEE7emplaceIJiiEEENS0_12vec_iteratorIPS8_Lb0EEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.386") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"union.boost::move_detail::aligned_struct_wrapper.88", align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !25571
  %i.a = load i32, ptr %2, align 4, !tbaa !21, !noalias !25571
  store i32 %i.a, ptr %4, align 4, !tbaa !21233, !noalias !25571
  %i.b = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21, !noalias !25571 ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21, !noalias !25571
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.e = load i32, ptr %3, align 4, !tbaa !21, !noalias !25571
  store i32 %i.e, ptr %i.d, align 4, !tbaa !21233, !noalias !25571
  %i.f = add i32 %i.b, 2
  store i32 %i.f, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21, !noalias !25571
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13new_allocatorIS6_EEE12insert_equalEOS6_(ptr dead_on_unwind writable sret(%"class.boost::container::vec_iterator.386") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(8) %4)
          to label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13new_allocatorIS6_EEE13emplace_equalIJiiEEENS0_12vec_iteratorIPS6_Lb0EEEDpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21, !noalias !25571
  %i.i = add i32 %i.h, -2
  store i32 %i.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21, !noalias !25571
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !25571
  resume { ptr, i32 } %i.g

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13new_allocatorIS6_EEE13emplace_equalIJiiEEENS0_12vec_iteratorIPS6_Lb0EEEDpOT_.exit: ; preds = %bb.a
  %i.j = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21, !noalias !25571
  %i.k = add i32 %i.j, -2
  store i32 %i.k, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21, !noalias !25571
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !25571
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_St4lessIS3_ENS0_13new_allocatorISt4pairIS3_S3_EEEE14adopt_sequenceEONS0_6vectorIS8_S9_vEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::movelib::adaptive_xbuf.397", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !21155 ; 2 uses
  %.not3.i.i.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not3.i.i.i.i.i.i, label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_13new_allocatorIS5_EEvE5clearEv.exit.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.a
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.c = trunc i64 %i.b to i32
  %i.d = shl i32 %i.c, 1
  %i.e = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i, %i.d
  store i32 %i.e, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  br label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_13new_allocatorIS5_EEvE5clearEv.exit.i.i.i

_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_13new_allocatorIS5_EEvE5clearEv.exit.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %bb.a
  store i64 0, ptr %i.a, align 8, !tbaa !21155
  %i.f = load ptr, ptr %1, align 8, !tbaa !21165
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !21155
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  invoke void @_ZN5boost7movelib15detail_adaptive18adaptive_sort_implIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_NS0_9iter_sizeISI_E4typeET0_RT1_(ptr noundef %i.f, i64 noundef %i.h, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_13new_allocatorIS5_EEvE5clearEv.exit.i.i.i
  %i.j = load i64, ptr %i.i, align 8, !tbaa !22405 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_6vectorISt4pairINS0_4test24movable_and_copyable_intES6_ENS0_13new_allocatorIS7_EEvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_OSH_T0_.exit.i.i, label %.preheader.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i:                         ; preds = %bb.b
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.k = trunc i64 %i.j to i32
  %i.l = shl i32 %i.k, 1
  %i.m = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i.i, %i.l
  store i32 %i.m, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  br label %_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_6vectorISt4pairINS0_4test24movable_and_copyable_intES6_ENS0_13new_allocatorIS7_EEvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_OSH_T0_.exit.i.i

bb.c:                                             ; preds = %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_13new_allocatorIS5_EEvE5clearEv.exit.i.i.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load i64, ptr %i.i, align 8, !tbaa !22405 ; 2 uses
  %.not.i.i6.i.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i6.i.i.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit9.i.i.i.i, label %.preheader.i.i.i7.i.i.i.i

.preheader.i.i.i7.i.i.i.i:                        ; preds = %bb.c
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i8.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.p = trunc i64 %i.o to i32
  %i.q = shl i32 %i.p, 1
  %i.r = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i8.i.i.i.i, %i.q
  store i32 %i.r, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit9.i.i.i.i

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit9.i.i.i.i: ; preds = %.preheader.i.i.i7.i.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.n

_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_6vectorISt4pairINS0_4test24movable_and_copyable_intES6_ENS0_13new_allocatorIS7_EEvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_OSH_T0_.exit.i.i: ; preds = %.preheader.i.i.i.i.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %.not.i.i.i = icmp eq ptr %1, %0
  br i1 %.not.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13new_allocatorIS6_EEE20adopt_sequence_equalEONS0_6vectorIS6_SC_vEE.exit, label %bb.d, !prof !306

bb.d:                                             ; preds = %_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_6vectorISt4pairINS0_4test24movable_and_copyable_intES6_ENS0_13new_allocatorIS7_EEvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_OSH_T0_.exit.i.i
  %i.s = load i64, ptr %i.a, align 8, !tbaa !21155 ; 2 uses
  %.not3.i.i.i.i.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not3.i.i.i.i.i.i.i.i, label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_13new_allocatorIS5_EEvE5clearEv.exit.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i:                 ; preds = %bb.d
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.t = trunc i64 %i.s to i32
  %i.u = shl i32 %i.t, 1
  %i.v = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i.i.i.i, %i.u
  store i32 %i.v, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  br label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_13new_allocatorIS5_EEvE5clearEv.exit.i.i.i.i.i

_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_13new_allocatorIS5_EEvE5clearEv.exit.i.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i, %bb.d
  store i64 0, ptr %i.a, align 8, !tbaa !21155
  %i.w = load ptr, ptr %0, align 8, !tbaa !24260  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_13new_allocatorIS5_EEvE16priv_move_assignIS7_EEvONS1_IS5_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS5_SA_E4typeELj0EEENSD_12is_differentISJ_S7_EENSD_5bool_ILb0EEESO_E4typeE.exit.i.i.i, label %bb.e, !prof !306

bb.e:                                             ; preds = %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_13new_allocatorIS5_EEvE5clearEv.exit.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !24261
  %i.z = shl i64 %i.y, 3
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.z) #24
  br label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_13new_allocatorIS5_EEvE16priv_move_assignIS7_EEvONS1_IS5_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS5_SA_E4typeELj0EEENSD_12is_differentISJ_S7_EENSD_5bool_ILb0EEESO_E4typeE.exit.i.i.i

_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_13new_allocatorIS5_EEvE16priv_move_assignIS7_EEvONS1_IS5_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS5_SA_E4typeELj0EEENSD_12is_differentISJ_S7_EENSD_5bool_ILb0EEESO_E4typeE.exit.i.i.i: ; preds = %bb.e, %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_13new_allocatorIS5_EEvE5clearEv.exit.i.i.i.i.i
  %i.aa = load ptr, ptr %1, align 8, !tbaa !21165
  store ptr %i.aa, ptr %0, align 8, !tbaa !21165
  %i.ab = load <2 x i64>, ptr %i.g, align 8, !tbaa !1562
  store <2 x i64> %i.ab, ptr %i.a, align 8, !tbaa !1562
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br label %_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13new_allocatorIS6_EEE20adopt_sequence_equalEONS0_6vectorIS6_SC_vEE.exit

_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13new_allocatorIS6_EEE20adopt_sequence_equalEONS0_6vectorIS6_SC_vEE.exit: ; preds = %_ZN5boost9container3dtl34flat_tree_sort_contiguous_to_adoptINS0_6vectorISt4pairINS0_4test24movable_and_copyable_intES6_ENS0_13new_allocatorIS7_EEvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_OSH_T0_.exit.i.i, %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_13new_allocatorIS5_EEvE16priv_move_assignIS7_EEvONS1_IS5_T_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS5_SA_E4typeELj0EEENSD_12is_differentISJ_S7_EENSD_5bool_ILb0EEESO_E4typeE.exit.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
end_hunk_9
begin_hunk_10_@_ZN5boost9container4test32flat_tree_ordered_insertion_testINS0_8flat_mapINS1_24movable_and_copyable_intES4_NS1_16less_transparentENS0_13new_allocatorISt4pairIS4_S4_EEEEENS0_13flat_multimapIS4_S4_S5_S9_EEEEbv:bb.a
  %i.lu = landingpad { ptr, i32 }
          catch ptr null
  %i.lv = extractvalue { ptr, i32 } %i.lu, 0
  call void @__clang_call_terminate(ptr %i.lv) #28
  unreachable

_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit328: ; preds = %_ZN5boost9container13flat_multimapINS0_4test24movable_and_copyable_intES3_NS2_16less_transparentENS0_13new_allocatorISt4pairIS3_S3_EEEED2Ev.exit327
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.cy

bb.cy:                                            ; preds = %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit328, %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit319, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit311, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit234
  %.8 = phi i1 [ false, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit311 ], [ false, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit319 ], [ false, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit234 ], [ %.791, %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit ], [ false, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit328 ]
  ret i1 %.8

bb.cz:                                            ; preds = %bb.co, %bb.aw
  %.pn113.pn = phi { ptr, i32 } [ %.pn113, %bb.aw ], [ %.pn103, %bb.co ]
  resume { ptr, i32 } %.pn113.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9container4test28flat_tree_extract_adopt_testINS0_8flat_mapINS1_24movable_and_copyable_intES4_NS1_16less_transparentENS0_13new_allocatorISt4pairIS4_S4_EEEEENS0_13flat_multimapIS4_S4_S5_S9_EEEEbv() local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"union.boost::move_detail::aligned_struct_wrapper.88", align 4 ; 6 uses
  %1 = alloca %"union.boost::move_detail::aligned_struct_wrapper.88", align 4 ; 6 uses
  %2 = alloca %"union.boost::move_detail::aligned_struct_wrapper.88", align 4 ; 6 uses
  %3 = alloca %"union.boost::move_detail::aligned_struct_wrapper.88", align 4 ; 6 uses
  %4 = alloca %"union.boost::move_detail::aligned_struct_wrapper.88", align 4 ; 6 uses
  %5 = alloca %"union.boost::move_detail::aligned_struct_wrapper.88", align 4 ; 6 uses
  %6 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 3 uses
  %7 = alloca %"union.boost::move_detail::aligned_struct_wrapper.88", align 4 ; 6 uses
  %8 = alloca %"union.boost::move_detail::aligned_struct_wrapper.88", align 4 ; 6 uses
  %9 = alloca %"class.boost::container::flat_map.448", align 8 ; 15 uses
  %10 = alloca %"class.boost::container::flat_map.448", align 8 ; 14 uses
  %11 = alloca %"struct.std::pair.408", align 8   ; 4 uses
  %12 = alloca %"struct.std::pair.408", align 8   ; 4 uses
  %13 = alloca %"class.boost::container::vector.379", align 8 ; 15 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %14 = alloca %"class.boost::container::flat_map.448", align 8 ; 17 uses
  %15 = alloca %"class.boost::container::flat_map.448", align 8 ; 15 uses
  %16 = alloca %"struct.std::pair.408", align 8   ; 4 uses
  %17 = alloca %"struct.std::pair.408", align 8   ; 4 uses
  %18 = alloca %"class.boost::container::vector.379", align 8 ; 13 uses
  %19 = alloca %"class.boost::container::flat_multimap.451", align 8 ; 17 uses
  %20 = alloca %"class.boost::container::flat_multimap.451", align 8 ; 15 uses
  %21 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 4 uses
  %22 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 4 uses
  %23 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 4 uses
  %24 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 4 uses
  %25 = alloca %"class.boost::container::vector.379", align 8 ; 13 uses
  %26 = alloca %"class.boost::container::vector.379", align 8 ; 4 uses
  %27 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 2 uses
  %28 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 2 uses
  %29 = alloca %"class.boost::container::flat_multimap.451", align 8 ; 13 uses
  %30 = alloca %"class.boost::container::flat_multimap.451", align 8 ; 11 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %31 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 4 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %32 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 4 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %33 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 4 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %34 = alloca %"class.boost::container::vec_iterator.386", align 8 ; 4 uses
  %35 = alloca %"class.boost::container::vector.379", align 8 ; 8 uses
  %36 = alloca %"class.boost::container::vector.379", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 4
  %.pre = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21, !noalias !25687
  %i.m = add i32 %.pre, 2
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %i.n = phi i32 [ %i.m, %bb.a ], [ %i.w, %bb.d ]
  %.065348 = phi i64 [ 0, %bb.a ], [ %i.y, %bb.d ] ; 2 uses
  %i.o = trunc i64 %.065348 to i32                ; 3 uses
  %i.p = sub nsw i32 0, %i.o                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24, !noalias !25687
  store i32 %i.o, ptr %8, align 4, !tbaa !21233, !noalias !25687
  store i32 %i.p, ptr %i.k, align 4, !tbaa !21233, !noalias !25687
  store i32 %i.n, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21, !noalias !25687
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EENS4_16less_transparentENS0_13new_allocatorIS6_EEE13insert_uniqueEOS6_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.408") align 8 %11, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 4 dereferenceable(8) %8)
          to label %bb.c unwind label %.body

.body:                                            ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21, !noalias !25687
  %i.s = add i32 %i.r, -2
  store i32 %i.s, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21, !noalias !25687
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24, !noalias !25687
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.u

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24, !noalias !25687
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24, !noalias !25692
  store i32 %i.o, ptr %7, align 4, !tbaa !21233, !noalias !25692
  store i32 %i.p, ptr %i.l, align 4, !tbaa !21233, !noalias !25692
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EENS4_16less_transparentENS0_13new_allocatorIS6_EEE13insert_uniqueEOS6_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.408") align 8 %12, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 4 dereferenceable(8) %7)
          to label %bb.d unwind label %.body99

.body99:                                          ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21, !noalias !25692
  %i.v = add i32 %i.u, -2
  store i32 %i.v, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21, !noalias !25692
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24, !noalias !25692
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.u

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21, !noalias !25692 ; 2 uses
  %i.x = add i32 %i.w, -2
  store i32 %i.x, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21, !noalias !25692
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24, !noalias !25692
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.y = add nuw nsw i64 %.065348, 1              ; 2 uses
  %.not = icmp eq i64 %i.y, 100
  br i1 %.not, label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_13new_allocatorIS5_EEvED2Ev.exit, label %bb.b, !llvm.loop !25697

_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_13new_allocatorIS5_EEvED2Ev.exit: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %i.z = load ptr, ptr %9, align 8, !tbaa !21165, !noalias !25698 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.ae = load <2 x i64>, ptr %i.aa, align 8, !tbaa !1562, !noalias !25698
  %i.af = load i64, ptr %i.aa, align 8, !tbaa !21244, !noalias !25698 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false), !noalias !25698
  store ptr %i.z, ptr %13, align 8, !tbaa !21165
  store <2 x i64> %i.ae, ptr %i.ac, align 8, !tbaa !1562
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !21155 ; 2 uses
  %.not.i = icmp eq i64 %i.af, %i.ah
  br i1 %.not.i, label %bb.e, label %.critedgethread-pre-split

bb.e:                                             ; preds = %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_13new_allocatorIS5_EEvED2Ev.exit
  %.idx.i = shl nsw i64 %i.af, 3
  %i.ai = getelementptr inbounds i8, ptr %i.z, i64 %.idx.i
  %.not2526.i = icmp eq i64 %i.af, 0
  br i1 %.not2526.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairINS1_24movable_and_copyable_intES5_ENS0_13new_allocatorIS6_EEvEENS0_8flat_mapIS5_S5_NS1_16less_transparentES8_EEEEbRKT_RKT0_.exit.preheader, label %.lr.ph.preheader.i

_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairINS1_24movable_and_copyable_intES5_ENS0_13new_allocatorIS6_EEvEENS0_8flat_mapIS5_S5_NS1_16less_transparentES8_EEEEbRKT_RKT0_.exit.preheader: ; preds = %bb.f, %bb.e
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairINS1_24movable_and_copyable_intES5_ENS0_13new_allocatorIS6_EEvEENS0_8flat_mapIS5_S5_NS1_16less_transparentES8_EEEEbRKT_RKT0_.exit

.lr.ph.preheader.i:                               ; preds = %bb.e
  %i.aj = load ptr, ptr %10, align 8, !tbaa !21165, !noalias !25701
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.preheader.i
  %.sroa.021.028.i = phi ptr [ %i.aq, %bb.f ], [ %i.z, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.016.027.i = phi ptr [ %i.ar, %bb.f ], [ %i.aj, %.lr.ph.preheader.i ] ; 2 uses
  %i.ak = load <2 x i32>, ptr %.sroa.021.028.i, align 4
  %i.al = load <2 x i32>, ptr %.sroa.016.027.i, align 4
  %i.am = icmp eq <2 x i32> %i.ak, %i.al          ; 2 uses
  %i.an = extractelement <2 x i1> %i.am, i64 0
  %i.ao = extractelement <2 x i1> %i.am, i64 1
  %i.ap = select i1 %i.an, i1 %i.ao, i1 false
  br i1 %i.ap, label %bb.f, label %.critedgethread-pre-split

bb.f:                                             ; preds = %.lr.ph.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.021.028.i, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.016.027.i, i64 8
  %.not25.i = icmp eq ptr %i.aq, %i.ai
  br i1 %.not25.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairINS1_24movable_and_copyable_intES5_ENS0_13new_allocatorIS6_EEvEENS0_8flat_mapIS5_S5_NS1_16less_transparentES8_EEEEbRKT_RKT0_.exit.preheader, label %.lr.ph.i, !llvm.loop !25710

bb.g:                                             ; preds = %_ZN5boost9container4test14random_shuffleINS0_12vec_iteratorIPSt4pairINS1_24movable_and_copyable_intES5_ELb0EEEEEvT_S9_.exit
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.h:                                             ; preds = %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_13new_allocatorIS5_EEvE12emplace_backIJiiEEERS5_DpOT_.exit
  %i.at = load ptr, ptr %13, align 8, !tbaa !21165, !noalias !25711 ; 2 uses
  %i.au = load i64, ptr %i.ac, align 8, !tbaa !21155, !noalias !25714 ; 2 uses
  %i.av = icmp sgt i64 %i.au, 1
  br i1 %i.av, label %.lr.ph.i102, label %_ZN5boost9container4test14random_shuffleINS0_12vec_iteratorIPSt4pairINS1_24movable_and_copyable_intES5_ELb0EEEEEvT_S9_.exit

.lr.ph.i102:                                      ; preds = %bb.h, %bb.j
  %.0.in10.i = phi i64 [ %.011.i, %bb.j ], [ %i.au, %bb.h ] ; 3 uses
  %.011.i = add nsw i64 %.0.in10.i, -1            ; 3 uses
  %i.aw = call i32 @rand() #24
  %i.ax = sext i32 %i.aw to i64
  %i.ay = srem i64 %i.ax, %.0.in10.i              ; 2 uses
  %.not.i103 = icmp eq i64 %i.ay, %.011.i
  br i1 %.not.i103, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i102
  %i.az = getelementptr inbounds [8 x i8], ptr %i.at, i64 %.011.i ; 4 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.ay ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bc = load <2 x i32>, ptr %i.az, align 4, !tbaa !21233
  store i32 0, ptr %i.az, align 4, !tbaa !21233
  store i32 0, ptr %i.bb, align 4, !tbaa !21233
  %i.bd = load <2 x i32>, ptr %i.ba, align 4, !tbaa !21233
  store <2 x i32> %i.bd, ptr %i.az, align 4, !tbaa !21233
  store <2 x i32> %i.bc, ptr %i.ba, align 4, !tbaa !21233
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i102
  %i.be = icmp samesign ugt i64 %.0.in10.i, 2
  br i1 %i.be, label %.lr.ph.i102, label %_ZN5boost9container4test14random_shuffleINS0_12vec_iteratorIPSt4pairINS1_24movable_and_copyable_intES5_ELb0EEEEEvT_S9_.exit, !llvm.loop !21261

_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairINS1_24movable_and_copyable_intES5_ENS0_13new_allocatorIS6_EEvEENS0_8flat_mapIS5_S5_NS1_16less_transparentES8_EEEEbRKT_RKT0_.exit: ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairINS1_24movable_and_copyable_intES5_ENS0_13new_allocatorIS6_EEvEENS0_8flat_mapIS5_S5_NS1_16less_transparentES8_EEEEbRKT_RKT0_.exit.preheader, %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_13new_allocatorIS5_EEvE12emplace_backIJiiEEERS5_DpOT_.exit
  %.047349 = phi i64 [ %i.bs, %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_13new_allocatorIS5_EEvE12emplace_backIJiiEEERS5_DpOT_.exit ], [ 0, %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairINS1_24movable_and_copyable_intES5_ENS0_13new_allocatorIS6_EEvEENS0_8flat_mapIS5_S5_NS1_16less_transparentES8_EEEEbRKT_RKT0_.exit.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.bf = trunc i64 %.047349 to i32               ; 3 uses
  store i32 %i.bf, ptr %i.a, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.bg = sub nsw i32 0, %i.bf
  store i32 %i.bg, ptr %i.b, align 4, !tbaa !21
  %i.bh = load i64, ptr %i.ac, align 8, !tbaa !21155 ; 4 uses
  %i.bi = load i64, ptr %i.ad, align 8, !tbaa !21159
  %.not.i104 = icmp eq i64 %i.bh, %i.bi
  br i1 %.not.i104, label %bb.l, label %bb.k, !prof !306

bb.k:                                             ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairINS1_24movable_and_copyable_intES5_ENS0_13new_allocatorIS6_EEvEENS0_8flat_mapIS5_S5_NS1_16less_transparentES8_EEEEbRKT_RKT0_.exit
  %i.bj = load ptr, ptr %13, align 8, !tbaa !21165, !nonnull !400, !noundef !400
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bh ; 2 uses
  store i32 %i.bf, ptr %i.bk, align 4, !tbaa !21233
  %i.bl = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bn = load i32, ptr %i.b, align 4, !tbaa !21
  store i32 %i.bn, ptr %i.bm, align 4, !tbaa !21233
  %i.bo = add i32 %i.bl, 2
  store i32 %i.bo, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  %i.bp = add i64 %i.bh, 1
  store i64 %i.bp, ptr %i.ac, align 8, !tbaa !21155
  br label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_13new_allocatorIS5_EEvE12emplace_backIJiiEEERS5_DpOT_.exit

bb.l:                                             ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairINS1_24movable_and_copyable_intES5_ENS0_13new_allocatorIS6_EEvEENS0_8flat_mapIS5_S5_NS1_16less_transparentES8_EEEEbRKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.bq = load ptr, ptr %13, align 8, !tbaa !21165
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bh
  invoke void @_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_13new_allocatorIS5_EEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS7_JiiEEEEENS0_12vec_iteratorIPS5_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.386") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef %i.br, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.b, ptr nonnull align 4 dereferenceable(4) %i.a)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_13new_allocatorIS5_EEvE12emplace_backIJiiEEERS5_DpOT_.exit

_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_13new_allocatorIS5_EEvE12emplace_backIJiiEEERS5_DpOT_.exit: ; preds = %.noexc, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.bs = add nuw nsw i64 %.047349, 1             ; 2 uses
  %.not71 = icmp eq i64 %i.bs, 100
  br i1 %.not71, label %bb.h, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairINS1_24movable_and_copyable_intES5_ENS0_13new_allocatorIS6_EEvEENS0_8flat_mapIS5_S5_NS1_16less_transparentES8_EEEEbRKT_RKT0_.exit, !llvm.loop !25717

bb.m:                                             ; preds = %bb.l
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.t

_ZN5boost9container4test14random_shuffleINS0_12vec_iteratorIPSt4pairINS1_24movable_and_copyable_intES5_ELb0EEEEEvT_S9_.exit: ; preds = %bb.j, %bb.h
  invoke void @_ZN5boost9container3dtl31flat_tree_adopt_sequence_uniqueINS0_6vectorISt4pairINS0_4test24movable_and_copyable_intES6_ENS0_13new_allocatorIS7_EEvEENS1_23flat_tree_value_compareINS5_16less_transparentES7_NS1_9select1stIS6_EEEEEEvRT_OSG_T0_NS_11move_detail5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_NS2_16less_transparentENS0_13new_allocatorISt4pairIS3_S3_EEEE14adopt_sequenceEONS0_6vectorIS7_S8_vEE.exit unwind label %bb.g

_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_NS2_16less_transparentENS0_13new_allocatorISt4pairIS3_S3_EEEE14adopt_sequenceEONS0_6vectorIS7_S8_vEE.exit: ; preds = %_ZN5boost9container4test14random_shuffleINS0_12vec_iteratorIPSt4pairINS1_24movable_and_copyable_intES5_ELb0EEEEEvT_S9_.exit
  %i.bu = load i64, ptr %i.aa, align 8, !tbaa !21155 ; 5 uses
  %i.bv = load i64, ptr %i.ag, align 8, !tbaa !21155 ; 2 uses
  %.not.i106 = icmp eq i64 %i.bu, %i.bv
  br i1 %.not.i106, label %bb.n, label %.critedgethread-pre-split

bb.n:                                             ; preds = %_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_NS2_16less_transparentENS0_13new_allocatorISt4pairIS3_S3_EEEE14adopt_sequenceEONS0_6vectorIS7_S8_vEE.exit
  %i.bw = load ptr, ptr %9, align 8, !tbaa !21165, !noalias !25718 ; 3 uses
  %.idx.i108 = shl nsw i64 %i.bu, 3
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 %.idx.i108 ; 2 uses
  %.not2526.i109 = icmp eq i64 %i.bu, 0
  br i1 %.not2526.i109, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairINS1_24movable_and_copyable_intES5_ENS0_13new_allocatorIS6_EEvEES9_EEbRKT_RKT0_.exit, label %.lr.ph.preheader.i110

.lr.ph.preheader.i110:                            ; preds = %bb.n
  %i.by = load ptr, ptr %10, align 8, !tbaa !21165, !noalias !25727 ; 2 uses
  br label %.lr.ph.i111

.lr.ph.i111:                                      ; preds = %bb.o, %.lr.ph.preheader.i110
  %.sroa.021.028.i112 = phi ptr [ %i.cf, %bb.o ], [ %i.bw, %.lr.ph.preheader.i110 ] ; 2 uses
  %.sroa.016.027.i113 = phi ptr [ %i.cg, %bb.o ], [ %i.by, %.lr.ph.preheader.i110 ] ; 2 uses
  %i.bz = load <2 x i32>, ptr %.sroa.021.028.i112, align 4
  %i.ca = load <2 x i32>, ptr %.sroa.016.027.i113, align 4
  %i.cb = icmp eq <2 x i32> %i.bz, %i.ca          ; 2 uses
  %i.cc = extractelement <2 x i1> %i.cb, i64 0
  %i.cd = extractelement <2 x i1> %i.cb, i64 1
  %i.ce = select i1 %i.cc, i1 %i.cd, i1 false
  br i1 %i.ce, label %bb.o, label %.critedgethread-pre-split

bb.o:                                             ; preds = %.lr.ph.i111
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.021.028.i112, i64 8 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.016.027.i113, i64 8
  %.not25.i114 = icmp eq ptr %i.cf, %i.bx
  br i1 %.not25.i114, label %.lr.ph.i120, label %.lr.ph.i111, !llvm.loop !25736

.lr.ph.i120:                                      ; preds = %bb.o, %.lr.ph.i120
  %.sroa.021.028.i121 = phi ptr [ %i.cn, %.lr.ph.i120 ], [ %i.bw, %bb.o ] ; 2 uses
  %.sroa.016.027.i122 = phi ptr [ %i.co, %.lr.ph.i120 ], [ %i.by, %bb.o ] ; 2 uses
  %i.ch = load <2 x i32>, ptr %.sroa.021.028.i121, align 4
  %i.ci = load <2 x i32>, ptr %.sroa.016.027.i122, align 4
  %i.cj = icmp eq <2 x i32> %i.ch, %i.ci          ; 2 uses
  %i.ck = extractelement <2 x i1> %i.cj, i64 0
  %i.cl = extractelement <2 x i1> %i.cj, i64 1
  %i.cm = select i1 %i.ck, i1 %i.cl, i1 false     ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.021.028.i121, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.016.027.i122, i64 8
  %.not25.i123 = icmp ne ptr %i.cn, %i.bx
  %or.cond.not = select i1 %i.cm, i1 %.not25.i123, i1 false
  br i1 %or.cond.not, label %.lr.ph.i120, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairINS1_24movable_and_copyable_intES5_ENS0_13new_allocatorIS6_EEvEES9_EEbRKT_RKT0_.exit, !llvm.loop !21282

_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairINS1_24movable_and_copyable_intES5_ENS0_13new_allocatorIS6_EEvEES9_EEbRKT_RKT0_.exit: ; preds = %.lr.ph.i120, %bb.n
  %.2.i116 = phi i1 [ true, %bb.n ], [ %i.cm, %.lr.ph.i120 ]
  %i.cp = load i64, ptr %i.ac, align 8, !tbaa !21155 ; 2 uses
  %.not3.i.i124 = icmp eq i64 %i.cp, 0
  br i1 %.not3.i.i124, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i127, label %.lr.ph.preheader.i.i125

.lr.ph.preheader.i.i125:                          ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairINS1_24movable_and_copyable_intES5_ENS0_13new_allocatorIS6_EEvEES9_EEbRKT_RKT0_.exit
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i126 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = shl i32 %i.cq, 1
  %i.cs = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i126, %i.cr
  store i32 %i.cs, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  br label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i127

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i127: ; preds = %.lr.ph.preheader.i.i125, %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorISt4pairINS1_24movable_and_copyable_intES5_ENS0_13new_allocatorIS6_EEvEES9_EEbRKT_RKT0_.exit
  %i.ct = load i64, ptr %i.ad, align 8, !tbaa !21159 ; 2 uses
  %.not.i.i128 = icmp eq i64 %i.ct, 0
  br i1 %.not.i.i128, label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_13new_allocatorIS5_EEvED2Ev.exit129, label %bb.p

bb.p:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i127
  %i.cu = load ptr, ptr %13, align 8, !tbaa !21160
  %i.cv = shl i64 %i.ct, 3
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cv) #24
  %.pre359 = load i64, ptr %i.ag, align 8, !tbaa !21155
  br label %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_13new_allocatorIS5_EEvED2Ev.exit129

_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_13new_allocatorIS5_EEvED2Ev.exit129: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i127, %bb.p
  %i.cw = phi i64 [ %i.bu, %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i127 ], [ %.pre359, %bb.p ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  %.not3.i.i.i.i.i = icmp eq i64 %i.cw, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_13new_allocatorIS5_EEvED2Ev.exit129
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.cx = trunc i64 %i.cw to i32
  %i.cy = shl i32 %i.cx, 1
  %i.cz = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i, %i.cy
  store i32 %i.cz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  br label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i, %_ZN5boost9container6vectorISt4pairINS0_4test24movable_and_copyable_intES4_ENS0_13new_allocatorIS5_EEvED2Ev.exit129
  %i.da = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.db = load i64, ptr %i.da, align 8, !tbaa !21159 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.db, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_NS2_16less_transparentENS0_13new_allocatorISt4pairIS3_S3_EEEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i
  %i.dc = load ptr, ptr %10, align 8, !tbaa !21160
  %i.dd = shl i64 %i.db, 3
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.dd) #24
  br label %_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_NS2_16less_transparentENS0_13new_allocatorISt4pairIS3_S3_EEEED2Ev.exit

_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_NS2_16less_transparentENS0_13new_allocatorISt4pairIS3_S3_EEEED2Ev.exit: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  %i.de = load i64, ptr %i.aa, align 8, !tbaa !21155 ; 2 uses
  %.not3.i.i.i.i.i130 = icmp eq i64 %i.de, 0
  br i1 %.not3.i.i.i.i.i130, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i133, label %.lr.ph.preheader.i.i.i.i.i131

.lr.ph.preheader.i.i.i.i.i131:                    ; preds = %_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_NS2_16less_transparentENS0_13new_allocatorISt4pairIS3_S3_EEEED2Ev.exit
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i132 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.df = trunc i64 %i.de to i32
  %i.dg = shl i32 %i.df, 1
  %i.dh = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i.i132, %i.dg
  store i32 %i.dh, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !21
  br label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i133

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i133: ; preds = %.lr.ph.preheader.i.i.i.i.i131, %_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_NS2_16less_transparentENS0_13new_allocatorISt4pairIS3_S3_EEEED2Ev.exit
  %i.di = load i64, ptr %i.ab, align 8, !tbaa !21159 ; 2 uses
  %.not.i.i.i.i.i134 = icmp eq i64 %i.di, 0
  br i1 %.not.i.i.i.i.i134, label %_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_NS2_16less_transparentENS0_13new_allocatorISt4pairIS3_S3_EEEED2Ev.exit135, label %bb.r

bb.r:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i133
  %i.dj = load ptr, ptr %9, align 8, !tbaa !21160
  %i.dk = shl i64 %i.di, 3
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dk) #24
  br label %_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_NS2_16less_transparentENS0_13new_allocatorISt4pairIS3_S3_EEEED2Ev.exit135

_ZN5boost9container8flat_mapINS0_4test24movable_and_copyable_intES3_NS2_16less_transparentENS0_13new_allocatorISt4pairIS3_S3_EEEED2Ev.exit135: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test24movable_and_copyable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i133, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br i1 %.2.i116, label %bb.s, label %bb.bu

end_hunk_10
