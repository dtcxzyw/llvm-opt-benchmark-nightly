Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3Coverage?download=true
inline.NumInlined: 4521
inline.NumDeleted: 1312
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNSt5dequeIN15CoverageVisitor9CoverTermESaIS1_EEaSERKS3_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %9), !noalias !844
  call void @llvm.lifetime.end.p0(ptr nonnull %10), !noalias !844
  %i.bv = load ptr, ptr %11, align 8, !tbaa !271, !noalias !846 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !273, !noalias !846 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !272, !noalias !846 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !270, !noalias !846 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11), !noalias !843
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.bv, ptr %6, align 8, !tbaa !271
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.bx, ptr %i.cd, align 8, !tbaa !273
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.bz, ptr %i.ce, align 8, !tbaa !272
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.cb, ptr %i.cf, align 8, !tbaa !270
  %i.cg = load <2 x ptr>, ptr %i.a, align 8, !tbaa !223, !noalias !847
  store <2 x ptr> %i.cg, ptr %7, align 16, !tbaa !223
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ci = load <2 x ptr>, ptr %i.cc, align 8, !tbaa !224, !noalias !847
  store <2 x ptr> %i.ci, ptr %i.ch, align 16, !tbaa !224
  call void @_ZNSt5dequeIN15CoverageVisitor9CoverTermESaIS1_EE19_M_destroy_data_auxESt15_Deque_iteratorIS1_RS1_PS1_ES7_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.cj = load ptr, ptr %i.c, align 8, !tbaa !268 ; 2 uses
  %i.ck = icmp ult ptr %i.cb, %i.cj
  br i1 %i.ck, label %.lr.ph.i.i, label %_ZNSt5dequeIN15CoverageVisitor9CoverTermESaIS1_EE15_M_erase_at_endESt15_Deque_iteratorIS1_RS1_PS1_E.exit

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.06.i.pn.i = phi ptr [ %.06.i.i, %.lr.ph.i.i ], [ %i.cb, %bb.c ]
  %.06.i.i = getelementptr inbounds nuw i8, ptr %.06.i.pn.i, i64 8 ; 3 uses
  %i.cl = load ptr, ptr %.06.i.i, align 8, !tbaa !223
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef 480) #24
  %i.cm = icmp ult ptr %.06.i.i, %i.cj
  br i1 %i.cm, label %.lr.ph.i.i, label %_ZNSt5dequeIN15CoverageVisitor9CoverTermESaIS1_EE15_M_erase_at_endESt15_Deque_iteratorIS1_RS1_PS1_E.exit, !llvm.loop !8

_ZNSt5dequeIN15CoverageVisitor9CoverTermESaIS1_EE15_M_erase_at_endESt15_Deque_iteratorIS1_RS1_PS1_E.exit: ; preds = %.lr.ph.i.i, %bb.c
  store ptr %i.bv, ptr %i.a, align 8, !tbaa !223
  store ptr %i.bx, ptr %i.o, align 8, !tbaa !223
  store ptr %i.bz, ptr %i.cc, align 8, !tbaa !223
  store ptr %i.cb, ptr %i.c, align 8, !tbaa !225
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.cn = ptrtoint ptr %i.bh to i64
  %i.co = sub i64 %i.bc, %i.cn
  %i.cp = sdiv exact i64 %i.co, 48
  %i.cq = add nsw i64 %i.cp, %i.ac                ; 5 uses
  %i.cr = icmp sgt i64 %i.cq, -1
  br i1 %i.cr, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.cs = icmp samesign ult i64 %i.cq, 10
  br i1 %i.cs, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ct = getelementptr inbounds [48 x i8], ptr %i.ba, i64 %i.ac
  br label %_ZStplRKSt15_Deque_iteratorIN15CoverageVisitor9CoverTermERKS1_PS2_El.exit

bb.g:                                             ; preds = %bb.e
  %i.cu = udiv i64 %i.cq, 10
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.cv = xor i64 %i.cq, -1
  %i.cw = udiv i64 %i.cv, 10
  %i.cx = xor i64 %i.cw, -1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cy = phi i64 [ %i.cu, %bb.g ], [ %i.cx, %bb.h ] ; 2 uses
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.cy ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !223, !noalias !848 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 480
  %.idx.i.i = mul i64 %i.cy, -480
  %i.dc = getelementptr i8, ptr %i.da, i64 %.idx.i.i
  %i.dd = getelementptr [48 x i8], ptr %i.dc, i64 %i.cq
  br label %_ZStplRKSt15_Deque_iteratorIN15CoverageVisitor9CoverTermERKS1_PS2_El.exit

_ZStplRKSt15_Deque_iteratorIN15CoverageVisitor9CoverTermERKS1_PS2_El.exit: ; preds = %bb.f, %bb.i
  %.sroa.528.0 = phi ptr [ %i.bh, %bb.f ], [ %i.da, %bb.i ] ; 2 uses
  %.sroa.9.0 = phi ptr [ %i.az, %bb.f ], [ %i.db, %bb.i ] ; 2 uses
  %.sroa.13.0 = phi ptr [ %i.ai, %bb.f ], [ %i.cz, %bb.i ] ; 2 uses
  %storemerge.i.i = phi ptr [ %i.ct, %bb.f ], [ %i.dd, %bb.i ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !273
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !849
  call void @llvm.lifetime.start.p0(ptr nonnull %2), !noalias !850
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !850
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !850
  store ptr %i.ba, ptr %2, align 8, !tbaa !377, !noalias !851
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bh, ptr %i.dg, align 8, !tbaa !380, !noalias !851
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.az, ptr %i.dh, align 8, !tbaa !378, !noalias !851
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.ai, ptr %i.di, align 8, !tbaa !379, !noalias !851
  store ptr %storemerge.i.i, ptr %3, align 8, !tbaa !377, !noalias !851
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.528.0, ptr %i.dj, align 8, !tbaa !380, !noalias !851
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %.sroa.9.0, ptr %i.dk, align 8, !tbaa !378, !noalias !851
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %.sroa.13.0, ptr %i.dl, align 8, !tbaa !379, !noalias !851
  store ptr %i.x, ptr %4, align 8, !tbaa !271, !noalias !851
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.df, ptr %i.dm, align 8, !tbaa !273, !noalias !851
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.w, ptr %i.dn, align 8, !tbaa !272, !noalias !851
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.f, ptr %i.do, align 8, !tbaa !270, !noalias !851
  call void @_ZSt15__copy_move_ditILb0EN15CoverageVisitor9CoverTermERKS1_PS2_St15_Deque_iteratorIS1_RS1_PS1_EET3_S5_IT0_T1_T2_ESD_S9_(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator.182") align 8 %5, ptr noundef nonnull align 8 dead_on_return %2, ptr noundef nonnull align 8 dead_on_return %3, ptr noundef nonnull align 8 dead_on_return %4), !noalias !850
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !850
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !850
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !850
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !849
  %i.dp = load <2 x ptr>, ptr %i.a, align 8, !tbaa !223
  store <2 x ptr> %i.dp, ptr %12, align 16, !tbaa !223
  %i.dq = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ds = load <2 x ptr>, ptr %i.dr, align 8, !tbaa !224
  store <2 x ptr> %i.ds, ptr %i.dq, align 16, !tbaa !224
  store ptr %storemerge.i.i, ptr %13, align 8, !tbaa !377
  %i.dt = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %.sroa.528.0, ptr %i.dt, align 8, !tbaa !380
  %i.du = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %.sroa.9.0, ptr %i.du, align 8, !tbaa !378
  %i.dv = getelementptr inbounds nuw i8, ptr %13, i64 24
  store ptr %.sroa.13.0, ptr %i.dv, align 8, !tbaa !379
  call void @llvm.experimental.noalias.scope.decl(metadata !852)
  %i.dw = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !223, !noalias !852
  store <2 x ptr> %i.dw, ptr %14, align 16, !tbaa !223, !alias.scope !852
  %i.dx = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.dz = load <2 x ptr>, ptr %i.dy, align 8, !tbaa !224, !noalias !852
  store <2 x ptr> %i.dz, ptr %i.dx, align 16, !tbaa !224, !alias.scope !852
  call void @_ZNSt5dequeIN15CoverageVisitor9CoverTermESaIS1_EE19_M_range_insert_auxISt15_Deque_iteratorIS1_RKS1_PS6_EEEvS5_IS1_RS1_PS1_ET_SD_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dead_on_return %14)
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt5dequeIN15CoverageVisitor9CoverTermESaIS1_EE15_M_erase_at_endESt15_Deque_iteratorIS1_RS1_PS1_E.exit, %_ZStplRKSt15_Deque_iteratorIN15CoverageVisitor9CoverTermERKS1_PS2_El.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt7__cxx114listISt5dequeIN15CoverageVisitor9CoverTermESaIS3_EESaIS5_EE6insertISt20_List_const_iteratorIS5_EvEESt14_List_iteratorIS5_ESA_T_SD_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::list", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %4, ptr %i.a, align 8, !tbaa !100
  store ptr %4, ptr %4, align 8, !tbaa !101
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store i64 0, ptr %i.b, align 8, !tbaa !229
  %.not4.i.i = icmp eq ptr %2, %3
  br i1 %.not4.i.i, label %_ZNSt7__cxx1110_List_baseISt5dequeIN15CoverageVisitor9CoverTermESaIS3_EESaIS5_EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZNSt7__cxx114listISt5dequeIN15CoverageVisitor9CoverTermESaIS3_EESaIS5_EE12emplace_backIJRKS5_EEERS5_DpOT_.exit.i.i
  %.sroa.01.05.i.i = phi ptr [ %i.i, %_ZNSt7__cxx114listISt5dequeIN15CoverageVisitor9CoverTermESaIS3_EESaIS5_EE12emplace_backIJRKS5_EEERS5_DpOT_.exit.i.i ], [ %2, %bb.a ] ; 2 uses
  %i.c = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #28
          to label %.noexc.i unwind label %bb.b   ; 3 uses

.noexc.i:                                         ; preds = %.lr.ph.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  invoke void @_ZNSt5dequeIN15CoverageVisitor9CoverTermESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(80) %i.e, ptr noundef nonnull align 8 dereferenceable(80) %i.d)
          to label %_ZNSt7__cxx114listISt5dequeIN15CoverageVisitor9CoverTermESaIS3_EESaIS5_EE12emplace_backIJRKS5_EEERS5_DpOT_.exit.i.i unwind label %_ZNSt15__allocated_ptrISaISt10_List_nodeISt5dequeIN15CoverageVisitor9CoverTermESaIS3_EEEEED2Ev.exit9.i.i.i.i.i

_ZNSt15__allocated_ptrISaISt10_List_nodeISt5dequeIN15CoverageVisitor9CoverTermESaIS3_EEEEED2Ev.exit9.i.i.i.i.i: ; preds = %.noexc.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 96) #24
  br label %.body.i

_ZNSt7__cxx114listISt5dequeIN15CoverageVisitor9CoverTermESaIS3_EESaIS5_EE12emplace_backIJRKS5_EEERS5_DpOT_.exit.i.i: ; preds = %.noexc.i
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %4) #23
  %i.g = load i64, ptr %i.b, align 8, !tbaa !227
  %i.h = add i64 %i.g, 1
  store i64 %i.h, ptr %i.b, align 8, !tbaa !227
  %i.i = load ptr, ptr %.sroa.01.05.i.i, align 8, !tbaa !101 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %3
  br i1 %.not.i.i, label %_ZNSt7__cxx114listISt5dequeIN15CoverageVisitor9CoverTermESaIS3_EESaIS5_EEC2ISt20_List_const_iteratorIS5_EvEET_SB_RKS6_.exit, label %.lr.ph.i.i, !llvm.loop !853

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.b, %_ZNSt15__allocated_ptrISaISt10_List_nodeISt5dequeIN15CoverageVisitor9CoverTermESaIS3_EEEEED2Ev.exit9.i.i.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.j, %bb.b ], [ %i.f, %_ZNSt15__allocated_ptrISaISt10_List_nodeISt5dequeIN15CoverageVisitor9CoverTermESaIS3_EEEEED2Ev.exit9.i.i.i.i.i ]
  call void @_ZNSt7__cxx1110_List_baseISt5dequeIN15CoverageVisitor9CoverTermESaIS3_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %eh.lpad-body.i

_ZNSt7__cxx114listISt5dequeIN15CoverageVisitor9CoverTermESaIS3_EESaIS5_EEC2ISt20_List_const_iteratorIS5_EvEET_SB_RKS6_.exit: ; preds = %_ZNSt7__cxx114listISt5dequeIN15CoverageVisitor9CoverTermESaIS3_EESaIS5_EE12emplace_backIJRKS5_EEERS5_DpOT_.exit.i.i
  %.pre = load ptr, ptr %4, align 8, !tbaa !101   ; 4 uses
  %i.k = icmp eq ptr %.pre, %4
  br i1 %i.k, label %_ZNSt7__cxx1110_List_baseISt5dequeIN15CoverageVisitor9CoverTermESaIS3_EESaIS5_EED2Ev.exit, label %_ZNSt7__cxx114listISt5dequeIN15CoverageVisitor9CoverTermESaIS3_EESaIS5_EE6spliceESt20_List_const_iteratorIS5_ERS7_.exit

_ZNSt7__cxx114listISt5dequeIN15CoverageVisitor9CoverTermESaIS3_EESaIS5_EE6spliceESt20_List_const_iteratorIS5_ERS7_.exit: ; preds = %_ZNSt7__cxx114listISt5dequeIN15CoverageVisitor9CoverTermESaIS3_EESaIS5_EEC2ISt20_List_const_iteratorIS5_EvEET_SB_RKS6_.exit
  call void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %.pre, ptr noundef nonnull align 8 dereferenceable(24) %4) #23
  %i.l = load i64, ptr %i.b, align 8, !tbaa !227
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !227
  %i.o = add i64 %i.n, %i.l
  store i64 %i.o, ptr %i.m, align 8, !tbaa !227
  store i64 0, ptr %i.b, align 8, !tbaa !227
  %.pre12 = load ptr, ptr %4, align 8, !tbaa !101 ; 2 uses
  %.not8.i.i = icmp eq ptr %.pre12, %4
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseISt5dequeIN15CoverageVisitor9CoverTermESaIS3_EESaIS5_EED2Ev.exit, label %.lr.ph.i.i7

.lr.ph.i.i7:                                      ; preds = %_ZNSt7__cxx114listISt5dequeIN15CoverageVisitor9CoverTermESaIS3_EESaIS5_EE6spliceESt20_List_const_iteratorIS5_ERS7_.exit, %.lr.ph.i.i7
  %.09.i.i = phi ptr [ %i.p, %.lr.ph.i.i7 ], [ %.pre12, %_ZNSt7__cxx114listISt5dequeIN15CoverageVisitor9CoverTermESaIS3_EESaIS5_EE6spliceESt20_List_const_iteratorIS5_ERS7_.exit ] ; 3 uses
  %i.p = load ptr, ptr %.09.i.i, align 8, !tbaa !101 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16
  call void @_ZNSt5dequeIN15CoverageVisitor9CoverTermESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.q) #23
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 96) #24
  %.not.i.i8 = icmp eq ptr %i.p, %4
  br i1 %.not.i.i8, label %_ZNSt7__cxx1110_List_baseISt5dequeIN15CoverageVisitor9CoverTermESaIS3_EESaIS5_EED2Ev.exit, label %.lr.ph.i.i7, !llvm.loop !2

_ZNSt7__cxx1110_List_baseISt5dequeIN15CoverageVisitor9CoverTermESaIS3_EESaIS5_EED2Ev.exit: ; preds = %.lr.ph.i.i7, %bb.a, %_ZNSt7__cxx114listISt5dequeIN15CoverageVisitor9CoverTermESaIS3_EESaIS5_EEC2ISt20_List_const_iteratorIS5_EvEET_SB_RKS6_.exit, %_ZNSt7__cxx114listISt5dequeIN15CoverageVisitor9CoverTermESaIS3_EESaIS5_EE6spliceESt20_List_const_iteratorIS5_ERS7_.exit
  %.sroa.06.021 = phi ptr [ %1, %bb.a ], [ %.pre, %_ZNSt7__cxx114listISt5dequeIN15CoverageVisitor9CoverTermESaIS3_EESaIS5_EE6spliceESt20_List_const_iteratorIS5_ERS7_.exit ], [ %1, %_ZNSt7__cxx114listISt5dequeIN15CoverageVisitor9CoverTermESaIS3_EESaIS5_EEC2ISt20_List_const_iteratorIS5_EvEET_SB_RKS6_.exit ], [ %.pre, %.lr.ph.i.i7 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret ptr %.sroa.06.021
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIN15CoverageVisitor9CoverTermESaIS1_EE19_M_range_insert_auxISt15_Deque_iteratorIS1_RKS1_PS6_EEEvS5_IS1_RS1_PS1_ET_SD_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::_Deque_iterator.281", align 16 ; 5 uses
  %5 = alloca %"struct.std::_Deque_iterator.281", align 16 ; 5 uses
  %6 = alloca %"struct.std::_Deque_iterator.182", align 8 ; 7 uses
  %7 = alloca %"struct.std::_Deque_iterator.281", align 16 ; 5 uses
  %8 = alloca %"struct.std::_Deque_iterator.281", align 16 ; 5 uses
  %9 = alloca %"struct.std::_Deque_iterator.182", align 8 ; 7 uses
  %10 = alloca %"struct.std::_Deque_iterator.182", align 8 ; 4 uses
  %11 = alloca %"struct.std::_Deque_iterator.182", align 8 ; 4 uses
  %12 = alloca %"struct.std::_Deque_iterator.182", align 8 ; 4 uses
  %13 = alloca %"struct.std::_Deque_iterator.281", align 8 ; 5 uses
  %14 = alloca %"struct.std::_Deque_iterator.281", align 8 ; 5 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !377    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !378  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !379  ; 2 uses
  %i.g = load ptr, ptr %3, align 8, !tbaa !377    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !380  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !379  ; 3 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.f to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 3
  %i.q = icmp ne ptr %i.l, null
  %.neg.i = sext i1 %i.q to i64
  %i.r = add nsw i64 %i.p, %.neg.i
  %i.s = mul nsw i64 %i.r, 10
  %i.t = ptrtoint ptr %i.g to i64
  %i.u = ptrtoint ptr %i.i to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = sdiv exact i64 %i.v, 48
  %i.x = ptrtoint ptr %i.d to i64
  %i.y = ptrtoint ptr %i.a to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = sdiv exact i64 %i.z, 48
  %i.ab = add nsw i64 %i.w, %i.aa
  %i.ac = add i64 %i.ab, %i.s                     ; 9 uses
  %i.ad = load ptr, ptr %1, align 8, !tbaa !271   ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !375 ; 2 uses
  %i.ag = icmp eq ptr %i.ad, %i.af
  br i1 %i.ag, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !386, !noalias !874 ; 2 uses
  %i.aj = ptrtoint ptr %i.ad to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = sdiv exact i64 %i.al, 48                ; 3 uses
  %i.an = icmp ugt i64 %i.ac, %i.am
  br i1 %i.an, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ao = sub nuw i64 %i.ac, %i.am
  tail call void @_ZNSt5dequeIN15CoverageVisitor9CoverTermESaIS1_EE24_M_new_elements_at_frontEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %i.ao), !noalias !874
  %.pre.i = load ptr, ptr %i.ae, align 8, !tbaa !271, !noalias !875 ; 2 uses
  %.pre6.i = load ptr, ptr %i.ah, align 8, !tbaa !273, !noalias !875 ; 2 uses
  %.pre7.i = ptrtoint ptr %.pre.i to i64
  %.pre8.i = ptrtoint ptr %.pre6.i to i64
  %.pre10.i = sub i64 %.pre7.i, %.pre8.i
  %.pre12.i = sdiv exact i64 %.pre10.i, 48
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre-phi13.i = phi i64 [ %.pre12.i, %bb.c ], [ %i.am, %bb.b ]
  %i.ap = phi ptr [ %.pre6.i, %bb.c ], [ %i.ai, %bb.b ]
  %i.aq = phi ptr [ %.pre.i, %bb.c ], [ %i.af, %bb.b ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !272, !noalias !875
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !270, !noalias !875 ; 2 uses
  %i.av = sub nsw i64 0, %i.ac
  %i.aw = sub nsw i64 %.pre-phi13.i, %i.ac        ; 5 uses
  %i.ax = icmp sgt i64 %i.aw, -1
  br i1 %i.ax, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ay = icmp samesign ult i64 %i.aw, 10
  br i1 %i.ay, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.az = getelementptr inbounds [48 x i8], ptr %i.aq, i64 %i.av
  br label %_ZNSt5dequeIN15CoverageVisitor9CoverTermESaIS1_EE28_M_reserve_elements_at_frontEm.exit

bb.g:                                             ; preds = %bb.e
  %i.ba = udiv i64 %i.aw, 10
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.bb = xor i64 %i.aw, -1
  %i.bc = udiv i64 %i.bb, 10
  %i.bd = xor i64 %i.bc, -1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.be = phi i64 [ %i.ba, %bb.g ], [ %i.bd, %bb.h ] ; 2 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.be ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !223, !noalias !875 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 480
  %.idx.i.i.i.i = mul i64 %i.be, -480
  %i.bi = getelementptr i8, ptr %i.bg, i64 %.idx.i.i.i.i
  %i.bj = getelementptr [48 x i8], ptr %i.bi, i64 %i.aw
  br label %_ZNSt5dequeIN15CoverageVisitor9CoverTermESaIS1_EE28_M_reserve_elements_at_frontEm.exit

_ZNSt5dequeIN15CoverageVisitor9CoverTermESaIS1_EE28_M_reserve_elements_at_frontEm.exit: ; preds = %bb.f, %bb.i
  %.sroa.639.0 = phi ptr [ %i.ap, %bb.f ], [ %i.bg, %bb.i ] ; 2 uses
  %.sroa.940.0 = phi ptr [ %i.as, %bb.f ], [ %i.bh, %bb.i ] ; 2 uses
  %.sroa.12.0 = phi ptr [ %i.au, %bb.f ], [ %i.bf, %bb.i ] ; 4 uses
  %storemerge.i.i.i.i = phi ptr [ %i.az, %bb.f ], [ %i.bj, %bb.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !876
  call void @llvm.lifetime.start.p0(ptr nonnull %8), !noalias !876
  call void @llvm.lifetime.start.p0(ptr nonnull %9), !noalias !876
  %i.bk = load <2 x ptr>, ptr %2, align 8, !tbaa !223
  store <2 x ptr> %i.bk, ptr %7, align 16, !tbaa !223, !noalias !877
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bm = load <2 x ptr>, ptr %i.c, align 8, !tbaa !224
  store <2 x ptr> %i.bm, ptr %i.bl, align 16, !tbaa !224, !noalias !877
  %i.bn = load <2 x ptr>, ptr %3, align 8, !tbaa !223
  store <2 x ptr> %i.bn, ptr %8, align 16, !tbaa !223, !noalias !877
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bp = load <2 x ptr>, ptr %i.j, align 8, !tbaa !224
  store <2 x ptr> %i.bp, ptr %i.bo, align 16, !tbaa !224, !noalias !877
  store ptr %storemerge.i.i.i.i, ptr %9, align 8, !tbaa !271, !noalias !877
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %.sroa.639.0, ptr %i.bq, align 8, !tbaa !273, !noalias !877
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %.sroa.940.0, ptr %i.br, align 8, !tbaa !272, !noalias !877
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %.sroa.12.0, ptr %i.bs, align 8, !tbaa !270, !noalias !877
  invoke void @_ZSt16__do_uninit_copyISt15_Deque_iteratorIN15CoverageVisitor9CoverTermERKS2_PS3_ES0_IS2_RS2_PS2_EET0_T_SB_SA_(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator.182") align 8 %10, ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %_ZNSt5dequeIN15CoverageVisitor9CoverTermESaIS1_EE28_M_reserve_elements_at_frontEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !876
  call void @llvm.lifetime.end.p0(ptr nonnull %8), !noalias !876
  call void @llvm.lifetime.end.p0(ptr nonnull %9), !noalias !876
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  store ptr %storemerge.i.i.i.i, ptr %i.ae, align 8, !tbaa !223
  store ptr %.sroa.639.0, ptr %i.ah, align 8, !tbaa !223
  store ptr %.sroa.940.0, ptr %i.ar, align 8, !tbaa !223
  store ptr %.sroa.12.0, ptr %i.at, align 8, !tbaa !225
  br label %bb.z

bb.k:                                             ; preds = %_ZNSt5dequeIN15CoverageVisitor9CoverTermESaIS1_EE28_M_reserve_elements_at_frontEm.exit
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.bv = call ptr @__cxa_begin_catch(ptr %i.bu) #23 ; 0 uses
  %i.bw = load ptr, ptr %i.at, align 8, !tbaa !267 ; 2 uses
  %i.bx = icmp ult ptr %.sroa.12.0, %i.bw
  br i1 %i.bx, label %.lr.ph.i, label %_ZNSt11_Deque_baseIN15CoverageVisitor9CoverTermESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.i
  %.06.i = phi ptr [ %i.bz, %.lr.ph.i ], [ %.sroa.12.0, %bb.k ] ; 2 uses
  %i.by = load ptr, ptr %.06.i, align 8, !tbaa !223
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef 480) #24
  %i.bz = getelementptr inbounds nuw i8, ptr %.06.i, i64 8 ; 2 uses
  %i.ca = icmp ult ptr %i.bz, %i.bw
  br i1 %i.ca, label %.lr.ph.i, label %_ZNSt11_Deque_baseIN15CoverageVisitor9CoverTermESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit, !llvm.loop !8

_ZNSt11_Deque_baseIN15CoverageVisitor9CoverTermESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit: ; preds = %.lr.ph.i, %bb.k
  invoke void @__cxa_rethrow() #27
          to label %bb.ac unwind label %bb.l

bb.l:                                             ; preds = %_ZNSt11_Deque_baseIN15CoverageVisitor9CoverTermESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.aa unwind label %bb.ab

bb.m:                                             ; preds = %bb.a
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !217 ; 2 uses
  %i.ce = icmp eq ptr %i.ad, %i.cd
  br i1 %i.ce, label %bb.n, label %bb.y

bb.n:                                             ; preds = %bb.m
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !218, !noalias !878 ; 2 uses
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = sdiv exact i64 %i.cj, 48
  %i.cl = add nsw i64 %i.ck, -1                   ; 2 uses
  %i.cm = icmp ugt i64 %i.ac, %i.cl
  br i1 %i.cm, label %bb.o, label %bb.p
end_hunk_0
