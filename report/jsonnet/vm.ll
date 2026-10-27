Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jsonnet/original/vm?download=true
inline.NumInlined: 10178
inline.NumDeleted: 3163
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb:bb.a

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i
  %i.bp = zext i32 %2 to i64
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i
  %.020.i.i.i.i.i.i = phi i64 [ %i.cf, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ %i.bp, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %.sroa.03.019.i.i.i.i.i.i = phi ptr [ %.sroa.03.1.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ %i.bo, %.lr.ph.i.i.i.i.i.preheader.i ] ; 4 uses
  %.sroa.55.018.i.i.i.i.i.i = phi i32 [ %.sroa.55.1.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i ] ; 3 uses
  %.sroa.512.017.i.i.i.i.i.i = phi i32 [ %spec.select15.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i ] ; 3 uses
  %.sroa.09.016.i.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ %1, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %i.bq = zext nneg i32 %.sroa.512.017.i.i.i.i.i.i to i64
  %i.br = shl nuw i64 1, %i.bq
  %i.bs = load i64, ptr %.sroa.09.016.i.i.i.i.i.i, align 8, !tbaa !64
  %i.bt = and i64 %i.bs, %i.br
  %.not.i.i.i.i.i.i47 = icmp eq i64 %i.bt, 0
  %i.bu = zext nneg i32 %.sroa.55.018.i.i.i.i.i.i to i64
  %i.bv = shl nuw i64 1, %i.bu                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i47, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bw = load i64, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !64
  %i.bx = or i64 %i.bw, %i.bv
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.by = xor i64 %i.bv, -1
  %i.bz = load i64, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !64
  %i.ca = and i64 %i.bz, %i.by
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i

_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i:       ; preds = %bb.n, %bb.m
  %storemerge.i.i.i.i.i.i = phi i64 [ %i.ca, %bb.n ], [ %i.bx, %bb.m ]
  store i64 %storemerge.i.i.i.i.i.i, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !64
  %i.cb = add i32 %.sroa.512.017.i.i.i.i.i.i, 1
  %i.cc = icmp eq i32 %.sroa.512.017.i.i.i.i.i.i, 63 ; 2 uses
  %spec.select.idx.i.i.i.i.i.i = select i1 %i.cc, i64 8, i64 0
  %spec.select.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.016.i.i.i.i.i.i, i64 %spec.select.idx.i.i.i.i.i.i
  %spec.select15.i.i.i.i.i.i = select i1 %i.cc, i32 0, i32 %i.cb
  %i.cd = add i32 %.sroa.55.018.i.i.i.i.i.i, 1
  %i.ce = icmp eq i32 %.sroa.55.018.i.i.i.i.i.i, 63 ; 2 uses
  %.sroa.55.1.i.i.i.i.i.i = select i1 %i.ce, i32 0, i32 %i.cd ; 4 uses
  %.sroa.03.1.idx.i.i.i.i.i.i = select i1 %i.ce, i64 8, i64 0
  %.sroa.03.1.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.03.019.i.i.i.i.i.i, i64 %.sroa.03.1.idx.i.i.i.i.i.i ; 5 uses
  %i.cf = add nsw i64 %.020.i.i.i.i.i.i, -1
  %i.cg = icmp sgt i64 %.020.i.i.i.i.i.i, 1
  br i1 %i.cg, label %.lr.ph.i.i.i.i.i.i, label %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit, !llvm.loop !1035

_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit: ; preds = %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i
  %i.ch = add i32 %.sroa.55.1.i.i.i.i.i.i, 1
  %i.ci = icmp eq i32 %.sroa.55.1.i.i.i.i.i.i, 63
  br i1 %i.ci, label %bb.o, label %_ZNSt13_Bit_iteratorppEi.exit

bb.o:                                             ; preds = %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.03.1.i.i.i.i.i.i, i64 8
  br label %_ZNSt13_Bit_iteratorppEi.exit

_ZNSt13_Bit_iteratorppEi.exit:                    ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i, %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit, %bb.o
  %.sroa.03.0.lcssa.i.i.i.i.i.i110 = phi ptr [ %.sroa.03.1.i.i.i.i.i.i, %bb.o ], [ %.sroa.03.1.i.i.i.i.i.i, %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit ], [ %i.bo, %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i ] ; 3 uses
  %.sroa.55.0.lcssa.i.i.i.i.i.i109 = phi i32 [ 63, %bb.o ], [ %.sroa.55.1.i.i.i.i.i.i, %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit ], [ 0, %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i ]
  %.sroa.683.0 = phi i32 [ 0, %bb.o ], [ %i.ch, %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit ], [ 1, %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i ] ; 2 uses
  %.sroa.082.0 = phi ptr [ %i.cj, %bb.o ], [ %.sroa.03.1.i.i.i.i.i.i, %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit ], [ %i.bo, %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i ] ; 2 uses
  %i.ck = zext nneg i32 %.sroa.55.0.lcssa.i.i.i.i.i.i109 to i64
  %i.cl = shl nuw i64 1, %i.ck                    ; 2 uses
  br i1 %3, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit
  %i.cm = load i64, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i110, align 8, !tbaa !64
  %i.cn = or i64 %i.cm, %i.cl
  br label %_ZNSt14_Bit_referenceaSEb.exit53

bb.q:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit
  %i.co = xor i64 %i.cl, -1
  %i.cp = load i64, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i110, align 8, !tbaa !64
  %i.cq = and i64 %i.cp, %i.co
  br label %_ZNSt14_Bit_referenceaSEb.exit53

_ZNSt14_Bit_referenceaSEb.exit53:                 ; preds = %bb.p, %bb.q
  %storemerge111 = phi i64 [ %i.cq, %bb.q ], [ %i.cn, %bb.p ]
  store i64 %storemerge111, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i110, align 8, !tbaa !64
  %.sroa.2.0.copyload.i55 = load i32, ptr %i.e, align 8
  %i.cr = sub i64 %i.g, %i.bj
  %i.cs = shl nsw i64 %i.cr, 3
  %i.ct = zext i32 %.sroa.2.0.copyload.i55 to i64
  %i.cu = zext i32 %2 to i64
  %i.cv = sub nsw i64 %i.ct, %i.cu
  %i.cw = add i64 %i.cv, %i.cs                    ; 2 uses
  %i.cx = icmp sgt i64 %i.cw, 0
  br i1 %i.cx, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt14_Bit_referenceaSEb.exit53, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66
  %.024.i.i.i.i.i62 = phi i64 [ %i.dn, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ], [ %i.cw, %_ZNSt14_Bit_referenceaSEb.exit53 ] ; 2 uses
  %.sroa.07.023.i.i.i.i.i63 = phi ptr [ %.sroa.07.1.i.i.i.i.i72, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ], [ %.sroa.082.0, %_ZNSt14_Bit_referenceaSEb.exit53 ] ; 4 uses
  %.sroa.59.022.i.i.i.i.i64 = phi i32 [ %.sroa.59.1.i.i.i.i.i70, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ], [ %.sroa.683.0, %_ZNSt14_Bit_referenceaSEb.exit53 ] ; 3 uses
  %.sroa.516.021.i.i.i.i.i = phi i32 [ %spec.select19.i.i.i.i.i69, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ], [ %2, %_ZNSt14_Bit_referenceaSEb.exit53 ] ; 3 uses
  %.sroa.013.020.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i68, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ], [ %1, %_ZNSt14_Bit_referenceaSEb.exit53 ] ; 2 uses
  %i.cy = zext nneg i32 %.sroa.516.021.i.i.i.i.i to i64
  %i.cz = shl nuw i64 1, %i.cy
  %i.da = zext nneg i32 %.sroa.59.022.i.i.i.i.i64 to i64
  %i.db = shl nuw i64 1, %i.da                    ; 2 uses
  %i.dc = load i64, ptr %.sroa.013.020.i.i.i.i.i, align 8, !tbaa !64
  %i.dd = and i64 %i.dc, %i.cz
  %.not.i.i.i.i.i.i65 = icmp eq i64 %i.dd, 0
  br i1 %.not.i.i.i.i.i.i65, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.de = load i64, ptr %.sroa.07.023.i.i.i.i.i63, align 8, !tbaa !64
  %i.df = or i64 %i.de, %i.db
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.dg = xor i64 %i.db, -1
  %i.dh = load i64, ptr %.sroa.07.023.i.i.i.i.i63, align 8, !tbaa !64
  %i.di = and i64 %i.dh, %i.dg
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66

_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66:    ; preds = %bb.s, %bb.r
  %storemerge.i.i.i.i.i67 = phi i64 [ %i.df, %bb.r ], [ %i.di, %bb.s ]
  store i64 %storemerge.i.i.i.i.i67, ptr %.sroa.07.023.i.i.i.i.i63, align 8, !tbaa !64
  %i.dj = add i32 %.sroa.516.021.i.i.i.i.i, 1
  %i.dk = icmp eq i32 %.sroa.516.021.i.i.i.i.i, 63 ; 2 uses
  %spec.select.idx.i.i.i.i.i = select i1 %i.dk, i64 8, i64 0
  %spec.select.i.i.i.i.i68 = getelementptr inbounds nuw i8, ptr %.sroa.013.020.i.i.i.i.i, i64 %spec.select.idx.i.i.i.i.i
  %spec.select19.i.i.i.i.i69 = select i1 %i.dk, i32 0, i32 %i.dj
  %i.dl = add i32 %.sroa.59.022.i.i.i.i.i64, 1
  %i.dm = icmp eq i32 %.sroa.59.022.i.i.i.i.i64, 63 ; 2 uses
  %.sroa.59.1.i.i.i.i.i70 = select i1 %i.dm, i32 0, i32 %i.dl ; 2 uses
  %.sroa.07.1.idx.i.i.i.i.i71 = select i1 %i.dm, i64 8, i64 0
  %.sroa.07.1.i.i.i.i.i72 = getelementptr inbounds nuw i8, ptr %.sroa.07.023.i.i.i.i.i63, i64 %.sroa.07.1.idx.i.i.i.i.i71 ; 2 uses
  %i.dn = add nsw i64 %.024.i.i.i.i.i62, -1
  %i.do = icmp sgt i64 %.024.i.i.i.i.i62, 1
  br i1 %i.do, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, !llvm.loop !1036

_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit:  ; preds = %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66, %_ZNSt14_Bit_referenceaSEb.exit53
  %.sroa.59.0.lcssa.i.i.i.i.i58 = phi i32 [ %.sroa.683.0, %_ZNSt14_Bit_referenceaSEb.exit53 ], [ %.sroa.59.1.i.i.i.i.i70, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ]
  %.sroa.07.0.lcssa.i.i.i.i.i59 = phi ptr [ %.sroa.082.0, %_ZNSt14_Bit_referenceaSEb.exit53 ], [ %.sroa.07.1.i.i.i.i.i72, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ]
  %.not.i73 = icmp eq ptr %i.au, null
  br i1 %.not.i73, label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit, label %bb.t

bb.t:                                             ; preds = %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %i.dp = ashr exact i64 %i.aw, 3
  %i.dq = sub nsw i64 0, %i.dp
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.dq
  tail call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.aw) #40
  br label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit

_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit: ; preds = %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, %bb.t
  %i.ds = lshr i64 %i.bf, 6
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.ds
  store ptr %i.dt, ptr %i.c, align 8, !tbaa !506
  store ptr %i.bi, ptr %0, align 8
  %.sroa.587.0..sroa_idx88 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %.sroa.587.0..sroa_idx88, align 8
  store ptr %.sroa.07.0.lcssa.i.i.i.i.i59, ptr %i.a, align 8
  store i32 %.sroa.59.0.lcssa.i.i.i.i.i58, ptr %i.e, align 8
  br label %_ZNSt13_Bit_iteratorppEv.exit

_ZNSt13_Bit_iteratorppEv.exit:                    ; preds = %bb.g, %_ZNSt14_Bit_referenceaSEb.exit, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN8nlohmann6detail28json_sax_dom_callback_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE12start_objectEm(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !519
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !494
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 3
  %i.l = trunc i64 %i.k to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.l, ptr %i.a, align 4, !tbaa !220
  store i8 0, ptr %i.b, align 1, !tbaa !523
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !362
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %bb.b, label %_ZNKSt8functionIFbiN8nlohmann6detail6parserINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerEEEE13parse_event_tERSD_EEclEiSF_SG_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt25__throw_bad_function_callv() #42
  unreachable

_ZNKSt8functionIFbiN8nlohmann6detail6parserINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerEEEE13parse_event_tERSD_EEclEiSF_SG_.exit: ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !524
  %i.s = call noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.p), !inline_history !31 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !505  ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !506
  %.not.i = icmp eq ptr %i.u, %i.w
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %.sroa.2.0.copyload.i11.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8 ; 4 uses
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZNKSt8functionIFbiN8nlohmann6detail6parserINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerEEEE13parse_event_tERSD_EEclEiSF_SG_.exit
  %i.x = add i32 %.sroa.2.0.copyload.i11.i, 1
  store i32 %i.x, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !507
  %i.y = icmp eq i32 %.sroa.2.0.copyload.i11.i, 63
  br i1 %i.y, label %bb.d, label %_ZNSt13_Bit_iteratorppEi.exit.i

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !507
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.z, ptr %i.t, align 8, !tbaa !505
  br label %_ZNSt13_Bit_iteratorppEi.exit.i

_ZNSt13_Bit_iteratorppEi.exit.i:                  ; preds = %bb.d, %bb.c
  %i.aa = zext nneg i32 %.sroa.2.0.copyload.i11.i to i64
  %i.ab = shl nuw i64 1, %i.aa                    ; 2 uses
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.ac = load i64, ptr %i.u, align 8, !tbaa !64
  %i.ad = or i64 %i.ac, %i.ab
  br label %_ZNSt14_Bit_referenceaSEb.exit.sink.split.i

bb.f:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.ae = xor i64 %i.ab, -1
  %i.af = load i64, ptr %i.u, align 8, !tbaa !64
  %i.ag = and i64 %i.af, %i.ae
  br label %_ZNSt14_Bit_referenceaSEb.exit.sink.split.i

bb.g:                                             ; preds = %_ZNKSt8functionIFbiN8nlohmann6detail6parserINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerEEEE13parse_event_tERSD_EEclEiSF_SG_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, ptr %i.u, i32 %.sroa.2.0.copyload.i11.i, i1 noundef zeroext %i.s)
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

_ZNSt14_Bit_referenceaSEb.exit.sink.split.i:      ; preds = %bb.f, %bb.e
  %.sink.i = phi i64 [ %i.ad, %bb.e ], [ %i.ag, %bb.f ]
  store i64 %.sink.i, ptr %i.u, align 8, !tbaa !64
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

_ZNSt6vectorIbSaIbEE9push_backEb.exit:            ; preds = %bb.g, %_ZNSt14_Bit_referenceaSEb.exit.sink.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #39
  store i8 1, ptr %i.c, align 1, !tbaa !405
  %i.ai = call { i8, ptr } @_ZN8nlohmann6detail28json_sax_dom_callback_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE12handle_valueINS0_7value_tEEESt4pairIbPSC_EOT_b(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.c, i1 noundef zeroext true)
  %i.aj = extractvalue { i8, ptr } %i.ai, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #39
  %i.ak = load ptr, ptr %i.e, align 8, !tbaa !519 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !495
  %.not.i15 = icmp eq ptr %i.ak, %i.am
  br i1 %.not.i15, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !455
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.an, ptr %i.e, align 8, !tbaa !519
  br label %_ZNSt6vectorIPN8nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerEEESaISB_EE9push_backERKSB_.exit

bb.i:                                             ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !494 ; 4 uses
  %i.ap = ptrtoint ptr %i.ak to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 6 uses
  %i.as = icmp eq i64 %i.ar, 9223372036854775800
  br i1 %i.as, label %bb.j, label %_ZNKSt6vectorIPN8nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerEEESaISB_EE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.100) #42
  unreachable

_ZNKSt6vectorIPN8nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerEEESaISB_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.at = ashr exact i64 %i.ar, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.at, i64 1)
  %i.au = add nsw i64 %.sroa.speculated.i.i.i, %i.at ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.at
  %i.aw = call i64 @llvm.umin.i64(i64 %i.au, i64 1152921504606846975)
  %i.ax = select i1 %i.av, i64 1152921504606846975, i64 %i.aw ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ax, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ay = shl nuw nsw i64 %i.ax, 3
  %i.az = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #41 ; 4 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 %i.ar ; 3 uses
  store ptr %i.aj, ptr %i.ba, align 8, !tbaa !455
  %i.bb = icmp sgt i64 %i.ar, 0
  br i1 %i.bb, label %bb.k, label %_ZNSt6vectorIPN8nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit16.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorIPN8nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerEEESaISB_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.az, ptr align 8 %i.ao, i64 %i.ar, i1 false)
  br label %_ZNSt6vectorIPN8nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit16.i.i

_ZNSt6vectorIPN8nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit16.i.i: ; preds = %bb.k, %_ZNKSt6vectorIPN8nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerEEESaISB_EE12_M_check_lenEmPKc.exit.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.not.i17.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN8nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerEEESaISB_EE17_M_realloc_insertIJRKSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIPN8nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.ar) #40
  br label %_ZNSt6vectorIPN8nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerEEESaISB_EE17_M_realloc_insertIJRKSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i

_ZNSt6vectorIPN8nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerEEESaISB_EE17_M_realloc_insertIJRKSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIPN8nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit16.i.i
  store ptr %i.az, ptr %i.d, align 8, !tbaa !494
  store ptr %i.bc, ptr %i.e, align 8, !tbaa !519
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ax
  store ptr %i.bd, ptr %i.al, align 8, !tbaa !495
  br label %_ZNSt6vectorIPN8nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerEEESaISB_EE9push_backERKSB_.exit

_ZNSt6vectorIPN8nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerEEESaISB_EE9push_backERKSB_.exit: ; preds = %bb.h, %_ZNSt6vectorIPN8nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerEEESaISB_EE17_M_realloc_insertIJRKSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i
  %i.be = phi ptr [ %i.ak, %bb.h ], [ %i.ba, %_ZNSt6vectorIPN8nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerEEESaISB_EE17_M_realloc_insertIJRKSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i ]
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !455 ; 2 uses
  %.not = icmp eq ptr %i.bf, null
  %.not12 = icmp eq i64 %1, -1
  %or.cond = or i1 %.not12, %.not
  br i1 %or.cond, label %.critedge, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIPN8nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerEEESaISB_EE9push_backERKSB_.exit
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !371 ; 2 uses
  %i.bh = icmp ult i8 %i.bg, 3
  br i1 %i.bh, label %switch.lookup, label %_ZNK8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEE8max_sizeEv.exit

switch.lookup:                                    ; preds = %bb.m
  %i.bi = zext nneg i8 %i.bg to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN8nlohmann6detail19json_sax_dom_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE11start_arrayEm, i64 %i.bi
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %_ZNK8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEE8max_sizeEv.exit

_ZNK8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEE8max_sizeEv.exit: ; preds = %bb.m, %switch.lookup
  %.0.i = phi i64 [ %switch.load, %switch.lookup ], [ 1, %bb.m ]
  %i.bj = icmp ugt i64 %1, %.0.i
  br i1 %i.bj, label %bb.n, label %.critedge, !prof !268

bb.n:                                             ; preds = %_ZNK8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEE8max_sizeEv.exit
  %i.bk = call ptr @__cxa_allocate_exception(i64 32) #39 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  invoke void @_ZNSt7__cxx119to_stringEm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i64 noundef %1)
          to label %bb.o unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.thread

bb.o:                                             ; preds = %bb.n
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull @.str.237, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.p unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN8nlohmann6detail12out_of_range6createEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.nlohmann::detail::out_of_range") align 8 %i.bk, i32 noundef 408, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @__cxa_throw(ptr %i.bk, ptr nonnull @_ZTIN8nlohmann6detail12out_of_rangeE, ptr nonnull @_ZN8nlohmann6detail9exceptionD2Ev) #42
          to label %bb.u unwind label %bb.r

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.thread: ; preds = %bb.n
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0 = phi i1 [ false, %bb.q ], [ true, %bb.p ]  ; 2 uses
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bn = load ptr, ptr %2, align 8, !tbaa !66    ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.r
  %i.bq = load i64, ptr %i.bo, align 8, !tbaa !67
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bs = load ptr, ptr %3, align 8, !tbaa !66    ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.o
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = load ptr, ptr %3, align 8, !tbaa !66    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !67
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #40
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cb = load i64, ptr %i.bt, align 8, !tbaa !67
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.cc) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  br i1 %.0, label %bb.s, label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  br i1 %.0, label %bb.s, label %bb.t

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.thread
  %.pn.pn24.ph = phi { ptr, i32 } [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.thread ], [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.thread ], [ %i.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %.pn.pn24 = phi { ptr, i32 } [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ], [ %i.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18 ], [ %.pn.pn24.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.bk) #39
  br label %bb.t

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16, %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %.pn.pn23 = phi { ptr, i32 } [ %.pn.pn24, %bb.s ], [ %i.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18 ], [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ]
  resume { ptr, i32 } %.pn.pn23

.critedge:                                        ; preds = %_ZNK8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEE8max_sizeEv.exit, %_ZNSt6vectorIPN8nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerEEESaISB_EE9push_backERKSB_.exit
  ret i1 true

bb.u:                                             ; preds = %bb.q
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN8nlohmann6detail28json_sax_dom_callback_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE10end_objectEv(ptr noundef nonnull align 8 dereferenceable(184) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %1 = alloca %"class.nlohmann::basic_json", align 8 ; 4 uses
  %2 = alloca %"class.nlohmann::detail::iter_impl", align 8 ; 11 uses
  %3 = alloca %"class.nlohmann::detail::iter_impl", align 8 ; 7 uses
  %4 = alloca %"class.nlohmann::detail::iter_impl", align 8 ; 3 uses
  %5 = alloca %"class.nlohmann::detail::iter_impl", align 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !520  ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !455  ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.e, label %bb.b
end_hunk_0
begin_hunk_1_@_ZN8nlohmann6detail28json_sax_dom_callback_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE10end_objectEv:bb.a
bb.i:                                             ; preds = %_ZN8nlohmann6detail9iter_implINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEEppEv.exit, %_ZN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEE5beginEv.exit
  %i.bd = phi ptr [ %.pre, %_ZN8nlohmann6detail9iter_implINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEEppEv.exit ], [ %i.ae, %_ZN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEE5beginEv.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !455 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  store ptr %i.bf, ptr %3, align 8, !tbaa !526, !alias.scope !1043
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, i8 0, i64 16, i1 false), !alias.scope !1043
  store i64 -9223372036854775808, ptr %i.ba, align 8, !tbaa !454, !alias.scope !1043
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !371, !noalias !1043
  switch i8 %i.bg, label %bb.l [
    i8 1, label %bb.j
    i8 2, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !67, !noalias !1043
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.bj, ptr %i.az, align 8, !tbaa !170, !alias.scope !1043
  br label %_ZN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEE3endEv.exit

bb.k:                                             ; preds = %bb.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !67, !noalias !1043
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !455, !noalias !1043
  store ptr %i.bn, ptr %i.bb, align 8, !tbaa !455, !alias.scope !1043
  br label %_ZN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEE3endEv.exit

bb.l:                                             ; preds = %bb.i
  store i64 1, ptr %i.ba, align 8, !tbaa !454, !alias.scope !1043
  br label %_ZN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEE3endEv.exit

_ZN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEE3endEv.exit: ; preds = %bb.j, %bb.k, %bb.l
  %i.bo = call noundef zeroext i1 @_ZNK8nlohmann6detail9iter_implINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEEeqERKSD_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  br i1 %i.bo, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %_ZN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEE3endEv.exit
  %i.bp = call noundef ptr @_ZNK8nlohmann6detail9iter_implINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEEptEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !371
  %i.br = icmp eq i8 %i.bq, 8
  br i1 %i.br, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bs = load ptr, ptr %i.d, align 8, !tbaa !520
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !455
  %i.bv = load ptr, ptr %2, align 8, !tbaa !526
  store ptr %i.bv, ptr %4, align 8, !tbaa !526
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false), !tbaa.struct !1044
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  call void @_ZN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEE5eraseINS_6detail9iter_implISA_EETnNSt9enable_ifIXoosr3std7is_sameIT_SE_EE5valuesr3std7is_sameISG_NSD_IKSA_EEEE5valueEiE4typeELi0EEESG_SG_(ptr dead_on_unwind nonnull writable sret(%"class.nlohmann::detail::iter_impl") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %i.bu, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(32) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  br label %.loopexit

bb.o:                                             ; preds = %bb.m
  %i.bx = load ptr, ptr %2, align 8, !tbaa !526
  %i.by = load i8, ptr %i.bx, align 8, !tbaa !371
  switch i8 %i.by, label %bb.q [
    i8 1, label %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann10basic_jsonISt3mapSt6vectorS7_blmdSaNS9_14adl_serializerEEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i
    i8 2, label %bb.p
  ]

_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann10basic_jsonISt3mapSt6vectorS7_blmdSaNS9_14adl_serializerEEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i: ; preds = %bb.o
  %.promoted11.i.i = load ptr, ptr %i.as, align 8, !tbaa !456
  %i.bz = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.promoted11.i.i) #43
  store ptr %i.bz, ptr %i.as, align 8, !tbaa !456
  br label %_ZN8nlohmann6detail9iter_implINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEEppEv.exit

bb.p:                                             ; preds = %bb.o
  %i.ca = load ptr, ptr %i.bc, align 8, !tbaa !457
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store ptr %i.cb, ptr %i.bc, align 8, !tbaa !457
  br label %_ZN8nlohmann6detail9iter_implINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEEppEv.exit

bb.q:                                             ; preds = %bb.o
  %i.cc = load i64, ptr %i.at, align 8, !tbaa !454
  %i.cd = add nsw i64 %i.cc, 1
  store i64 %i.cd, ptr %i.at, align 8, !tbaa !454
  br label %_ZN8nlohmann6detail9iter_implINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEEppEv.exit

_ZN8nlohmann6detail9iter_implINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEEppEv.exit: ; preds = %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann10basic_jsonISt3mapSt6vectorS7_blmdSaNS9_14adl_serializerEEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i, %bb.p, %bb.q
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !520
  br label %bb.i, !llvm.loop !1041

.loopexit:                                        ; preds = %_ZN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEE3endEv.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  br label %bb.r

bb.r:                                             ; preds = %.loopexit, %bb.h, %bb.g, %_ZNSt6vectorIbSaIbEE8pop_backEv.exit
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN8nlohmann6detail28json_sax_dom_callback_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3keyERSA_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.nlohmann::basic_json", align 8 ; 8 uses
  %3 = alloca %"class.nlohmann::basic_json", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i8 3, ptr %2, align 8, !tbaa !371
  %i.e = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #41 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !63
  %i.g = load ptr, ptr %1, align 8, !tbaa !66     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !68   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #39
  store i64 %i.i, ptr %i.c, align 8, !tbaa !64
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.a
  %i.k = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc.i.i.i.i.i.i.i unwind label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN8nlohmann10basic_jsonISt3mapSt6vectorS5_blmdSaNS6_14adl_serializerEE6createIS5_JRKS5_EEEPT_DpOT0_EUlPS5_E_ED2Ev.exit5.i.i.i.i.i.i.i ; 2 uses

.noexc.i.i.i.i.i.i.i:                             ; preds = %.noexc.i.i.i.i.i.i.i.i
  store ptr %i.k, ptr %i.e, align 8, !tbaa !66
  %i.l = load i64, ptr %i.c, align 8, !tbaa !64
  store i64 %i.l, ptr %i.f, align 8, !tbaa !67
  br label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.noexc.i.i.i.i.i.i.i, %bb.a
  %i.m = phi ptr [ %i.k, %.noexc.i.i.i.i.i.i.i ], [ %i.f, %bb.a ] ; 2 uses
  switch i64 %i.i, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEC2IRS8_S8_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISA_SE_EE5valueEiE4typeELi0EEEOT_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.n = load i8, ptr %i.g, align 1, !tbaa !67
  store i8 %i.n, ptr %i.m, align 1, !tbaa !67
  br label %_ZN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEC2IRS8_S8_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISA_SE_EE5valueEiE4typeELi0EEEOT_.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %_ZN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEC2IRS8_S8_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISA_SE_EE5valueEiE4typeELi0EEEOT_.exit

common.resume:                                    ; preds = %bb.q, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN8nlohmann10basic_jsonISt3mapSt6vectorS5_blmdSaNS6_14adl_serializerEE6createIS5_JRKS5_EEEPT_DpOT0_EUlPS5_E_ED2Ev.exit5.i.i.i.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.o, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN8nlohmann10basic_jsonISt3mapSt6vectorS5_blmdSaNS6_14adl_serializerEE6createIS5_JRKS5_EEEPT_DpOT0_EUlPS5_E_ED2Ev.exit5.i.i.i.i.i.i.i ], [ %.pn, %bb.q ]
  resume { ptr, i32 } %common.resume.op

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN8nlohmann10basic_jsonISt3mapSt6vectorS5_blmdSaNS6_14adl_serializerEE6createIS5_JRKS5_EEEPT_DpOT0_EUlPS5_E_ED2Ev.exit5.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 32) #40
  br label %common.resume

_ZN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEC2IRS8_S8_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISA_SE_EE5valueEiE4typeELi0EEEOT_.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i, %bb.b, %bb.c
  %i.p = load i64, ptr %i.c, align 8, !tbaa !64   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !68
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !66
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #39
  %i.t = ptrtoint ptr %i.e to i64
  store i64 %i.t, ptr %i.d, align 8, !tbaa !67
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !519
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !494
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = lshr exact i64 %i.aa, 3
  %i.ac = trunc i64 %i.ab to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.ac, ptr %i.a, align 4, !tbaa !220
  store i8 4, ptr %i.b, align 1, !tbaa !523
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !362
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEC2IRS8_S8_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISA_SE_EE5valueEiE4typeELi0EEEOT_.exit
  invoke void @_ZSt25__throw_bad_function_callv() #42
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %_ZN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEC2IRS8_S8_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISA_SE_EE5valueEiE4typeELi0EEEOT_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !524
  %i.ai = invoke noundef zeroext i1 %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.f unwind label %bb.n, !inline_history !31 ; 3 uses

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !505 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !506
  %.not.i = icmp eq ptr %i.ak, %i.am
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %.sroa.2.0.copyload.i11.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8 ; 4 uses
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = add i32 %.sroa.2.0.copyload.i11.i, 1
  store i32 %i.an, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !507
  %i.ao = icmp eq i32 %.sroa.2.0.copyload.i11.i, 63
  br i1 %i.ao, label %bb.h, label %_ZNSt13_Bit_iteratorppEi.exit.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !507
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.ap, ptr %i.aj, align 8, !tbaa !505
  br label %_ZNSt13_Bit_iteratorppEi.exit.i

_ZNSt13_Bit_iteratorppEi.exit.i:                  ; preds = %bb.h, %bb.g
  %i.aq = zext nneg i32 %.sroa.2.0.copyload.i11.i to i64
  %i.ar = shl nuw i64 1, %i.aq                    ; 2 uses
  br i1 %i.ai, label %_ZNSt6vectorIbSaIbEE9push_backEb.exit.thread, label %_ZNSt6vectorIbSaIbEE9push_backEb.exit.thread10

_ZNSt6vectorIbSaIbEE9push_backEb.exit.thread:     ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.as = load i64, ptr %i.ak, align 8, !tbaa !64
  %i.at = or i64 %i.as, %i.ar
  br label %_ZNSt14_Bit_referenceaSEb.exit.sink.split.i

_ZNSt6vectorIbSaIbEE9push_backEb.exit.thread10:   ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.au = xor i64 %i.ar, -1
  %i.av = load i64, ptr %i.ak, align 8, !tbaa !64
  %i.aw = and i64 %i.av, %i.au
  br label %_ZNSt14_Bit_referenceaSEb.exit.sink.split.i

bb.i:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %i.ax, ptr %i.ak, i32 %.sroa.2.0.copyload.i11.i, i1 noundef zeroext %i.ai)
          to label %_ZNSt6vectorIbSaIbEE9push_backEb.exit unwind label %bb.n

_ZNSt14_Bit_referenceaSEb.exit.sink.split.i:      ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit.thread10, %_ZNSt6vectorIbSaIbEE9push_backEb.exit.thread
  %.sink.i = phi i64 [ %i.at, %_ZNSt6vectorIbSaIbEE9push_backEb.exit.thread ], [ %i.aw, %_ZNSt6vectorIbSaIbEE9push_backEb.exit.thread10 ]
  store i64 %.sink.i, ptr %i.ak, align 8, !tbaa !64
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

_ZNSt6vectorIbSaIbEE9push_backEb.exit:            ; preds = %_ZNSt14_Bit_referenceaSEb.exit.sink.split.i, %bb.i
  br i1 %i.ai, label %bb.j, label %bb.p

bb.j:                                             ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  %i.ay = load ptr, ptr %i.v, align 8, !tbaa !520
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !455
  %.not = icmp eq ptr %i.ba, null
  br i1 %.not, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 168
  invoke void @_ZN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEC2ERKSA_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.bb)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bc = load ptr, ptr %i.v, align 8, !tbaa !520
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !455
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !67
  %i.bh = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann10basic_jsonIS_St6vectorS5_blmdSaNS6_14adl_serializerEEESt4lessIvESaISt4pairIKS5_SA_EEEixERSE_(ptr noundef nonnull align 8 dereferenceable(48) %i.bg, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.m unwind label %bb.o       ; 4 uses

bb.m:                                             ; preds = %bb.l
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !405 ; 2 uses
  %i.bj = load i8, ptr %3, align 8, !tbaa !405
  store i8 %i.bj, ptr %i.bh, align 8, !tbaa !405
  store i8 %i.bi, ptr %3, align 8, !tbaa !405
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.bk, align 8, !tbaa !67
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !67
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !67
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.bl, align 8, !tbaa !67
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.bh, ptr %i.bn, align 8, !tbaa !527
  call void @_ZN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, i8 noundef zeroext %i.bi) #39, !inline_history !26
  br label %bb.p

bb.n:                                             ; preds = %bb.i, %bb.e, %bb.d, %bb.k
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.o:                                             ; preds = %bb.l
  %i.bp = landingpad { ptr, i32 }
          cleanup
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.br = load i8, ptr %3, align 8, !tbaa !371
  call void @_ZN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, i8 noundef zeroext %i.br) #39, !inline_history !26
  br label %bb.q

bb.p:                                             ; preds = %bb.m, %bb.j, %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  %i.bs = load i8, ptr %2, align 8, !tbaa !371
  call void @_ZN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i8 noundef zeroext %i.bs) #39, !inline_history !26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  ret i1 true

bb.q:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.bp, %bb.o ], [ %i.bo, %bb.n ]
  %i.bt = load i8, ptr %2, align 8, !tbaa !371
  call void @_ZN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i8 noundef zeroext %i.bt) #39, !inline_history !26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN8nlohmann6detail28json_sax_dom_callback_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE11start_arrayEm(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !519
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !494
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 3
  %i.l = trunc i64 %i.k to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.l, ptr %i.a, align 4, !tbaa !220
  store i8 2, ptr %i.b, align 1, !tbaa !523
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !362
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %bb.b, label %_ZNKSt8functionIFbiN8nlohmann6detail6parserINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerEEEE13parse_event_tERSD_EEclEiSF_SG_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt25__throw_bad_function_callv() #42
  unreachable

_ZNKSt8functionIFbiN8nlohmann6detail6parserINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerEEEE13parse_event_tERSD_EEclEiSF_SG_.exit: ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !524
  %i.s = call noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.p), !inline_history !31 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !505  ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !506
  %.not.i = icmp eq ptr %i.u, %i.w
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %.sroa.2.0.copyload.i11.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8 ; 4 uses
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZNKSt8functionIFbiN8nlohmann6detail6parserINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerEEEE13parse_event_tERSD_EEclEiSF_SG_.exit
  %i.x = add i32 %.sroa.2.0.copyload.i11.i, 1
  store i32 %i.x, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !507
  %i.y = icmp eq i32 %.sroa.2.0.copyload.i11.i, 63
  br i1 %i.y, label %bb.d, label %_ZNSt13_Bit_iteratorppEi.exit.i

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !507
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.z, ptr %i.t, align 8, !tbaa !505
  br label %_ZNSt13_Bit_iteratorppEi.exit.i

_ZNSt13_Bit_iteratorppEi.exit.i:                  ; preds = %bb.d, %bb.c
  %i.aa = zext nneg i32 %.sroa.2.0.copyload.i11.i to i64
  %i.ab = shl nuw i64 1, %i.aa                    ; 2 uses
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.ac = load i64, ptr %i.u, align 8, !tbaa !64
  %i.ad = or i64 %i.ac, %i.ab
  br label %_ZNSt14_Bit_referenceaSEb.exit.sink.split.i

bb.f:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.ae = xor i64 %i.ab, -1
  %i.af = load i64, ptr %i.u, align 8, !tbaa !64
  %i.ag = and i64 %i.af, %i.ae
  br label %_ZNSt14_Bit_referenceaSEb.exit.sink.split.i

bb.g:                                             ; preds = %_ZNKSt8functionIFbiN8nlohmann6detail6parserINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerEEEE13parse_event_tERSD_EEclEiSF_SG_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, ptr %i.u, i32 %.sroa.2.0.copyload.i11.i, i1 noundef zeroext %i.s)
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

_ZNSt14_Bit_referenceaSEb.exit.sink.split.i:      ; preds = %bb.f, %bb.e
  %.sink.i = phi i64 [ %i.ad, %bb.e ], [ %i.ag, %bb.f ]
  store i64 %.sink.i, ptr %i.u, align 8, !tbaa !64
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

_ZNSt6vectorIbSaIbEE9push_backEb.exit:            ; preds = %bb.g, %_ZNSt14_Bit_referenceaSEb.exit.sink.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #39
  store i8 2, ptr %i.c, align 1, !tbaa !405
  %i.ai = call { i8, ptr } @_ZN8nlohmann6detail28json_sax_dom_callback_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE12handle_valueINS0_7value_tEEESt4pairIbPSC_EOT_b(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.c, i1 noundef zeroext true)
  %i.aj = extractvalue { i8, ptr } %i.ai, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #39
  %i.ak = load ptr, ptr %i.e, align 8, !tbaa !519 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !495
  %.not.i15 = icmp eq ptr %i.ak, %i.am
  br i1 %.not.i15, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !455
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.an, ptr %i.e, align 8, !tbaa !519
  br label %_ZNSt6vectorIPN8nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerEEESaISB_EE9push_backERKSB_.exit

bb.i:                                             ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !494 ; 4 uses
  %i.ap = ptrtoint ptr %i.ak to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 6 uses
  %i.as = icmp eq i64 %i.ar, 9223372036854775800
  br i1 %i.as, label %bb.j, label %_ZNKSt6vectorIPN8nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerEEESaISB_EE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.100) #42
  unreachable

_ZNKSt6vectorIPN8nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerEEESaISB_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.at = ashr exact i64 %i.ar, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.at, i64 1)
  %i.au = add nsw i64 %.sroa.speculated.i.i.i, %i.at ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.at
  %i.aw = call i64 @llvm.umin.i64(i64 %i.au, i64 1152921504606846975)
  %i.ax = select i1 %i.av, i64 1152921504606846975, i64 %i.aw ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ax, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ay = shl nuw nsw i64 %i.ax, 3
  %i.az = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #41 ; 4 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 %i.ar ; 3 uses
  store ptr %i.aj, ptr %i.ba, align 8, !tbaa !455
  %i.bb = icmp sgt i64 %i.ar, 0
  br i1 %i.bb, label %bb.k, label %_ZNSt6vectorIPN8nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit16.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorIPN8nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerEEESaISB_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.az, ptr align 8 %i.ao, i64 %i.ar, i1 false)
  br label %_ZNSt6vectorIPN8nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit16.i.i

_ZNSt6vectorIPN8nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit16.i.i: ; preds = %bb.k, %_ZNKSt6vectorIPN8nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerEEESaISB_EE12_M_check_lenEmPKc.exit.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.not.i17.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN8nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerEEESaISB_EE17_M_realloc_insertIJRKSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIPN8nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.ar) #40
  br label %_ZNSt6vectorIPN8nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerEEESaISB_EE17_M_realloc_insertIJRKSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i

_ZNSt6vectorIPN8nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerEEESaISB_EE17_M_realloc_insertIJRKSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIPN8nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit16.i.i
  store ptr %i.az, ptr %i.d, align 8, !tbaa !494
  store ptr %i.bc, ptr %i.e, align 8, !tbaa !519
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ax
  store ptr %i.bd, ptr %i.al, align 8, !tbaa !495
  br label %_ZNSt6vectorIPN8nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerEEESaISB_EE9push_backERKSB_.exit

_ZNSt6vectorIPN8nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerEEESaISB_EE9push_backERKSB_.exit: ; preds = %bb.h, %_ZNSt6vectorIPN8nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerEEESaISB_EE17_M_realloc_insertIJRKSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i
  %i.be = phi ptr [ %i.ak, %bb.h ], [ %i.ba, %_ZNSt6vectorIPN8nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerEEESaISB_EE17_M_realloc_insertIJRKSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i ]
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !455 ; 2 uses
  %.not = icmp eq ptr %i.bf, null
  %.not12 = icmp eq i64 %1, -1
  %or.cond = or i1 %.not12, %.not
  br i1 %or.cond, label %.critedge, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIPN8nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerEEESaISB_EE9push_backERKSB_.exit
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !371 ; 2 uses
  %i.bh = icmp ult i8 %i.bg, 3
  br i1 %i.bh, label %switch.lookup, label %_ZNK8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEE8max_sizeEv.exit

switch.lookup:                                    ; preds = %bb.m
  %i.bi = zext nneg i8 %i.bg to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN8nlohmann6detail19json_sax_dom_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE11start_arrayEm, i64 %i.bi
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %_ZNK8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEE8max_sizeEv.exit

_ZNK8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEE8max_sizeEv.exit: ; preds = %bb.m, %switch.lookup
  %.0.i = phi i64 [ %switch.load, %switch.lookup ], [ 1, %bb.m ]
  %i.bj = icmp ugt i64 %1, %.0.i
  br i1 %i.bj, label %bb.n, label %.critedge, !prof !268

bb.n:                                             ; preds = %_ZNK8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEE8max_sizeEv.exit
  %i.bk = call ptr @__cxa_allocate_exception(i64 32) #39 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  invoke void @_ZNSt7__cxx119to_stringEm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i64 noundef %1)
          to label %bb.o unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.thread

bb.o:                                             ; preds = %bb.n
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull @.str.246, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.p unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN8nlohmann6detail12out_of_range6createEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.nlohmann::detail::out_of_range") align 8 %i.bk, i32 noundef 408, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @__cxa_throw(ptr %i.bk, ptr nonnull @_ZTIN8nlohmann6detail12out_of_rangeE, ptr nonnull @_ZN8nlohmann6detail9exceptionD2Ev) #42
          to label %bb.u unwind label %bb.r

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.thread: ; preds = %bb.n
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0 = phi i1 [ false, %bb.q ], [ true, %bb.p ]  ; 2 uses
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bn = load ptr, ptr %2, align 8, !tbaa !66    ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.r
  %i.bq = load i64, ptr %i.bo, align 8, !tbaa !67
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bs = load ptr, ptr %3, align 8, !tbaa !66    ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.o
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = load ptr, ptr %3, align 8, !tbaa !66    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !67
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #40
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cb = load i64, ptr %i.bt, align 8, !tbaa !67
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.cc) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  br i1 %.0, label %bb.s, label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  br i1 %.0, label %bb.s, label %bb.t

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.thread
  %.pn.pn24.ph = phi { ptr, i32 } [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.thread ], [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.thread ], [ %i.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %.pn.pn24 = phi { ptr, i32 } [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ], [ %i.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18 ], [ %.pn.pn24.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.bk) #39
  br label %bb.t

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16, %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %.pn.pn23 = phi { ptr, i32 } [ %.pn.pn24, %bb.s ], [ %i.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18 ], [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ]
  resume { ptr, i32 } %.pn.pn23

.critedge:                                        ; preds = %_ZNK8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEE8max_sizeEv.exit, %_ZNSt6vectorIPN8nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerEEESaISB_EE9push_backERKSB_.exit
  ret i1 true

bb.u:                                             ; preds = %bb.q
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN8nlohmann6detail28json_sax_dom_callback_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE9end_arrayEv(ptr noundef nonnull align 8 dereferenceable(184) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %1 = alloca %"class.nlohmann::basic_json", align 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !520  ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !455  ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !494
  %i.i = ptrtoint ptr %i.e to i64
end_hunk_1
begin_hunk_2_@_ZN2c43yml7EmitterINS0_13WriterOStreamINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEE14_do_visit_jsonEmm:bb.a
  %i.ay = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, i8 noundef signext 91) ; 0 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !543
  %i.bb = add i64 %i.ba, 1
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !543
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.bc = and i32 %i.av, 4
  %.not29 = icmp eq i32 %i.bc, 0
  br i1 %.not29, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = load ptr, ptr %0, align 8, !tbaa !395
  %i.be = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, i8 noundef signext 123) ; 0 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !543
  %i.bh = add i64 %i.bg, 1
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !543
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %bb.l, %bb.n, %bb.m, %bb.h, %bb.f
  %i.bi = load ptr, ptr %i.c, align 8, !tbaa !404
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !389 ; 3 uses
  %i.bk = getelementptr inbounds nuw [144 x i8], ptr %i.bj, i64 %1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 112
  %.032 = load i64, ptr %i.bl, align 8, !tbaa !64 ; 2 uses
  %.not33 = icmp eq i64 %.032, -1
  br i1 %.not33, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bn = add i64 %2, 1
  br label %bb.p

._crit_edge:                                      ; preds = %bb.r, %bb.o
  %i.bo = phi ptr [ %i.bj, %bb.o ], [ %i.cb, %bb.r ]
  %i.bp = getelementptr inbounds nuw [144 x i8], ptr %i.bo, i64 %1
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !392 ; 2 uses
  %i.br = and i32 %i.bq, 8
  %.not30 = icmp eq i32 %i.br, 0
  br i1 %.not30, label %bb.s, label %.sink.split

bb.p:                                             ; preds = %.lr.ph, %bb.r
  %i.bs = phi ptr [ %i.bj, %.lr.ph ], [ %i.cb, %bb.r ]
  %.034 = phi i64 [ %.032, %.lr.ph ], [ %.0, %bb.r ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [144 x i8], ptr %i.bs, i64 %1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 112
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !1193
  %.not22 = icmp eq i64 %.034, %i.bv
  br i1 %.not22, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bw = load ptr, ptr %0, align 8, !tbaa !395
  %i.bx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, i8 noundef signext 44) ; 0 uses
  %i.by = load i64, ptr %i.bm, align 8, !tbaa !543
  %i.bz = add i64 %i.by, 1
  store i64 %i.bz, ptr %i.bm, align 8, !tbaa !543
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  tail call void @_ZN2c43yml7EmitterINS0_13WriterOStreamINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEE14_do_visit_jsonEmm(ptr noundef nonnull align 8 dereferenceable(41) %0, i64 noundef %.034, i64 noundef %i.bn)
  %i.ca = load ptr, ptr %i.c, align 8, !tbaa !404
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !389 ; 3 uses
  %i.cc = getelementptr inbounds nuw [144 x i8], ptr %i.cb, i64 %.034
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 128
  %.0 = load i64, ptr %i.cd, align 8, !tbaa !64   ; 2 uses
  %.not = icmp eq i64 %.0, -1
  br i1 %.not, label %._crit_edge, label %bb.p, !llvm.loop !1189

bb.s:                                             ; preds = %._crit_edge
  %i.ce = and i32 %i.bq, 4
  %.not31 = icmp eq i32 %i.ce, 0
  br i1 %.not31, label %bb.t, label %.sink.split

.sink.split:                                      ; preds = %bb.s, %._crit_edge
  %.sink40 = phi i8 [ 93, %._crit_edge ], [ 125, %bb.s ]
  %i.cf = load ptr, ptr %0, align 8, !tbaa !395
  %i.cg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, i8 noundef signext %.sink40) ; 0 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !543
  %i.cj = add i64 %i.ci, 1
  store i64 %i.cj, ptr %i.ch, align 8, !tbaa !543
  br label %bb.t

bb.t:                                             ; preds = %.sink.split, %bb.s
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN2c43yml7EmitterINS0_13WriterOStreamINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEE11_write_jsonERKNS0_10NodeScalarENS0_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %1, i32 %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 3 uses
  %3 = alloca %"struct.c4::yml::Location", align 8 ; 6 uses
  %i.b = alloca [27 x i8], align 16               ; 3 uses
  %4 = alloca %"struct.c4::yml::Location", align 8 ; 6 uses
  %i.c = and i32 %2, 3072
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !1194
  %i.f = and i32 %i.e, 1
  %.not10 = icmp eq i32 %i.f, 0
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull align 16 dereferenceable(24) @__const._ZN2c43yml7EmitterINS0_13WriterOStreamINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEE11_write_jsonERKNS0_10NodeScalarENS0_8NodeTypeE.msg, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !404
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store i64 0, ptr %3, align 8, !tbaa !399
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 27688, ptr %i.j, align 8, !tbaa !400
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.k, align 8, !tbaa !401
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr @.str.284, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 74, ptr %i.m, align 8
  call void @_ZN2c43yml5errorERKNS0_9CallbacksEPKcmNS0_8LocationE(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull %i.a, i64 noundef 23, ptr noundef nonnull byval(%"struct.c4::yml::Location") align 8 %3) #42
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.n = and i32 %2, 768
  %.not19 = icmp eq i32 %i.n, 0
  br i1 %.not19, label %bb.g, label %bb.e, !prof !397

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !1194
  %i.q = and i32 %i.p, 2
  %.not11 = icmp eq i32 %i.q, 0
  br i1 %.not11, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(27) %i.b, ptr noundef nonnull align 16 dereferenceable(27) @__const._ZN2c43yml7EmitterINS0_13WriterOStreamINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEE11_write_jsonERKNS0_10NodeScalarENS0_8NodeTypeE.msg.305, i64 27, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !404
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  store i64 0, ptr %4, align 8, !tbaa !399
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 27691, ptr %i.u, align 8, !tbaa !400
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %i.v, align 8, !tbaa !401
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr @.str.284, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 74, ptr %i.x, align 8
  call void @_ZN2c43yml5errorERKNS0_9CallbacksEPKcmNS0_8LocationE(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull %i.b, i64 noundef 26, ptr noundef nonnull byval(%"struct.c4::yml::Location") align 8 %4) #42
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !1195 ; 5 uses
  %.not12 = icmp eq i64 %i.aa, 0
  br i1 %.not12, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = and i32 %2, 89128961
  %.not15 = icmp eq i32 %i.ab, 0
  %.sroa.01.0.copyload.pre = load ptr, ptr %i.y, align 8, !tbaa !501 ; 4 uses
  br i1 %.not15, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.ac = tail call noundef i32 @_ZN2c43yml24scalar_style_json_chooseENS_15basic_substringIKcEE(ptr %.sroa.01.0.copyload.pre, i64 %i.aa) #39
  %i.ad = and i32 %i.ac, 100663296
  %.not20 = icmp eq i32 %i.ad, 0
  br i1 %.not20, label %bb.j, label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.i
  tail call void @_ZN2c43yml7EmitterINS0_13WriterOStreamINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEE23_write_scalar_json_dquoENS_15basic_substringIKcEE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr %.sroa.01.0.copyload.pre, i64 %i.aa)
  br label %_ZN2c43yml13WriterOStreamINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEE9_do_writeENS_15basic_substringIKcEE.exit

bb.j:                                             ; preds = %bb.i
  %i.ae = icmp eq ptr %.sroa.01.0.copyload.pre, null
  br i1 %i.ae, label %_ZN2c43yml13WriterOStreamINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEE9_do_writeENS_15basic_substringIKcEE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = load ptr, ptr %0, align 8, !tbaa !395
  %i.ag = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull %.sroa.01.0.copyload.pre, i64 noundef %i.aa) ; 0 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !543
  %i.aj = add i64 %i.ai, %i.aa
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !543
  br label %_ZN2c43yml13WriterOStreamINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEE9_do_writeENS_15basic_substringIKcEE.exit

bb.l:                                             ; preds = %bb.g
  %i.ak = load ptr, ptr %i.y, align 8, !tbaa !1196
  %.not13 = icmp eq ptr %i.ak, null
  %i.al = and i32 %2, 89132033
  %.not14 = icmp eq i32 %i.al, 0
  %or.cond = and i1 %.not14, %.not13
  %i.am = load ptr, ptr %0, align 8, !tbaa !395   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %or.cond, label %bb.m, label %5

5:                                                ; preds = %bb.l
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull @.str.306, i64 noundef 2) ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ao = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull @.str.91, i64 noundef 4) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %5, %bb.m
  %.sink22 = phi i64 [ 4, %bb.m ], [ 2, %5 ]
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !543
  %i.aq = add i64 %i.ap, %.sink22
  store i64 %i.aq, ptr %i.an, align 8, !tbaa !543
  br label %_ZN2c43yml13WriterOStreamINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEE9_do_writeENS_15basic_substringIKcEE.exit

_ZN2c43yml13WriterOStreamINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEE9_do_writeENS_15basic_substringIKcEE.exit: ; preds = %bb.n, %bb.k, %bb.j, %.critedge
  ret void
}

; Function Attrs: nounwind
declare noundef i32 @_ZN2c43yml24scalar_style_json_chooseENS_15basic_substringIKcEE(ptr, i64) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN2c43yml7EmitterINS0_13WriterOStreamINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEE23_write_scalar_json_dquoENS_15basic_substringIKcEE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr %1, i64 %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !395
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i8 noundef signext 34) ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 34 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !543
  %i.e = add i64 %i.d, 1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !543
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = icmp eq ptr %1, null                     ; 7 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.q, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %.1, %bb.q ] ; 3 uses
  %i.g = icmp uge i64 %.0.lcssa, %2
  %i.h = icmp eq ptr %1, null
  %or.cond = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond, label %_ZN2c43yml13WriterOStreamINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEE9_do_writeENS_15basic_substringIKcEE.exit90, label %bb.r

bb.b:                                             ; preds = %.lr.ph, %bb.q
  %.0124 = phi i64 [ 0, %.lr.ph ], [ %.1, %bb.q ] ; 22 uses
  %.041122 = phi i64 [ 0, %.lr.ph ], [ %.pre-phi, %bb.q ] ; 23 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.041122
  %i.j = load i8, ptr %i.i, align 1, !tbaa !67
  switch i8 %i.j, label %._crit_edge125 [
    i8 34, label %bb.c
    i8 10, label %bb.e
    i8 9, label %bb.g
    i8 92, label %bb.i
    i8 13, label %bb.k
    i8 8, label %bb.m
    i8 12, label %bb.o
  ]

._crit_edge125:                                   ; preds = %bb.b
  %.pre = add nuw i64 %.041122, 1
  br label %bb.q

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i64 %.041122, %.0124
  %i.l = select i1 %i.k, i1 true, i1 %i.f
  br i1 %i.l, label %_ZN2c43yml13WriterOStreamINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEE9_do_writeENS_15basic_substringIKcEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %.0124
  %i.n = sub i64 %.041122, %.0124                 ; 2 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !395
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull %i.m, i64 noundef %i.n) ; 0 uses
  %i.q = load i64, ptr %i.c, align 8, !tbaa !543
  %i.r = add i64 %i.q, %i.n
  store i64 %i.r, ptr %i.c, align 8, !tbaa !543
  br label %_ZN2c43yml13WriterOStreamINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEE9_do_writeENS_15basic_substringIKcEE.exit

_ZN2c43yml13WriterOStreamINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEE9_do_writeENS_15basic_substringIKcEE.exit: ; preds = %bb.c, %bb.d
  %i.s = load ptr, ptr %0, align 8, !tbaa !395
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.307, i64 noundef 2) ; 0 uses
  %i.u = load i64, ptr %i.c, align 8, !tbaa !543
  %i.v = add i64 %i.u, 2
  store i64 %i.v, ptr %i.c, align 8, !tbaa !543
  %i.w = add nuw i64 %.041122, 1                  ; 2 uses
  br label %bb.q

bb.e:                                             ; preds = %bb.b
  %i.x = icmp eq i64 %.041122, %.0124
  %i.y = select i1 %i.x, i1 true, i1 %i.f
  br i1 %i.y, label %_ZN2c43yml13WriterOStreamINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEE9_do_writeENS_15basic_substringIKcEE.exit84, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.0124
  %i.aa = sub i64 %.041122, %.0124                ; 2 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !395
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull %i.z, i64 noundef %i.aa) ; 0 uses
  %i.ad = load i64, ptr %i.c, align 8, !tbaa !543
  %i.ae = add i64 %i.ad, %i.aa
  store i64 %i.ae, ptr %i.c, align 8, !tbaa !543
  br label %_ZN2c43yml13WriterOStreamINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEE9_do_writeENS_15basic_substringIKcEE.exit84

_ZN2c43yml13WriterOStreamINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEE9_do_writeENS_15basic_substringIKcEE.exit84: ; preds = %bb.e, %bb.f
  %i.af = load ptr, ptr %0, align 8, !tbaa !395
  %i.ag = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.301, i64 noundef 2) ; 0 uses
  %i.ah = load i64, ptr %i.c, align 8, !tbaa !543
  %i.ai = add i64 %i.ah, 2
  store i64 %i.ai, ptr %i.c, align 8, !tbaa !543
  %i.aj = add nuw i64 %.041122, 1                 ; 2 uses
  br label %bb.q

bb.g:                                             ; preds = %bb.b
  %i.ak = icmp eq i64 %.041122, %.0124
  %i.al = select i1 %i.ak, i1 true, i1 %i.f
  br i1 %i.al, label %_ZN2c43yml13WriterOStreamINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEE9_do_writeENS_15basic_substringIKcEE.exit85, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %.0124
  %i.an = sub i64 %.041122, %.0124                ; 2 uses
  %i.ao = load ptr, ptr %0, align 8, !tbaa !395
  %i.ap = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull %i.am, i64 noundef %i.an) ; 0 uses
  %i.aq = load i64, ptr %i.c, align 8, !tbaa !543
  %i.ar = add i64 %i.aq, %i.an
  store i64 %i.ar, ptr %i.c, align 8, !tbaa !543
  br label %_ZN2c43yml13WriterOStreamINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEE9_do_writeENS_15basic_substringIKcEE.exit85

_ZN2c43yml13WriterOStreamINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEE9_do_writeENS_15basic_substringIKcEE.exit85: ; preds = %bb.g, %bb.h
  %i.as = load ptr, ptr %0, align 8, !tbaa !395
  %i.at = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull @.str.308, i64 noundef 2) ; 0 uses
  %i.au = load i64, ptr %i.c, align 8, !tbaa !543
  %i.av = add i64 %i.au, 2
  store i64 %i.av, ptr %i.c, align 8, !tbaa !543
  %i.aw = add nuw i64 %.041122, 1                 ; 2 uses
  br label %bb.q

bb.i:                                             ; preds = %bb.b
  %i.ax = icmp eq i64 %.041122, %.0124
  %i.ay = select i1 %i.ax, i1 true, i1 %i.f
  br i1 %i.ay, label %_ZN2c43yml13WriterOStreamINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEE9_do_writeENS_15basic_substringIKcEE.exit86, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 %.0124
  %i.ba = sub i64 %.041122, %.0124                ; 2 uses
  %i.bb = load ptr, ptr %0, align 8, !tbaa !395
  %i.bc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef nonnull %i.az, i64 noundef %i.ba) ; 0 uses
  %i.bd = load i64, ptr %i.c, align 8, !tbaa !543
  %i.be = add i64 %i.bd, %i.ba
  store i64 %i.be, ptr %i.c, align 8, !tbaa !543
  br label %_ZN2c43yml13WriterOStreamINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEE9_do_writeENS_15basic_substringIKcEE.exit86

_ZN2c43yml13WriterOStreamINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEE9_do_writeENS_15basic_substringIKcEE.exit86: ; preds = %bb.i, %bb.j
  %i.bf = load ptr, ptr %0, align 8, !tbaa !395
  %i.bg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull @.str.309, i64 noundef 2) ; 0 uses
  %i.bh = load i64, ptr %i.c, align 8, !tbaa !543
  %i.bi = add i64 %i.bh, 2
  store i64 %i.bi, ptr %i.c, align 8, !tbaa !543
  %i.bj = add nuw i64 %.041122, 1                 ; 2 uses
  br label %bb.q

bb.k:                                             ; preds = %bb.b
  %i.bk = icmp eq i64 %.041122, %.0124
  %i.bl = select i1 %i.bk, i1 true, i1 %i.f
  br i1 %i.bl, label %_ZN2c43yml13WriterOStreamINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEE9_do_writeENS_15basic_substringIKcEE.exit87, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 %.0124
  %i.bn = sub i64 %.041122, %.0124                ; 2 uses
  %i.bo = load ptr, ptr %0, align 8, !tbaa !395
  %i.bp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull %i.bm, i64 noundef %i.bn) ; 0 uses
  %i.bq = load i64, ptr %i.c, align 8, !tbaa !543
  %i.br = add i64 %i.bq, %i.bn
  store i64 %i.br, ptr %i.c, align 8, !tbaa !543
  br label %_ZN2c43yml13WriterOStreamINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEE9_do_writeENS_15basic_substringIKcEE.exit87

_ZN2c43yml13WriterOStreamINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEE9_do_writeENS_15basic_substringIKcEE.exit87: ; preds = %bb.k, %bb.l
  %i.bs = load ptr, ptr %0, align 8, !tbaa !395
  %i.bt = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, ptr noundef nonnull @.str.302, i64 noundef 2) ; 0 uses
  %i.bu = load i64, ptr %i.c, align 8, !tbaa !543
  %i.bv = add i64 %i.bu, 2
  store i64 %i.bv, ptr %i.c, align 8, !tbaa !543
  %i.bw = add nuw i64 %.041122, 1                 ; 2 uses
  br label %bb.q

bb.m:                                             ; preds = %bb.b
  %i.bx = icmp eq i64 %.041122, %.0124
  %i.by = select i1 %i.bx, i1 true, i1 %i.f
  br i1 %i.by, label %_ZN2c43yml13WriterOStreamINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEE9_do_writeENS_15basic_substringIKcEE.exit88, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %.0124
  %i.ca = sub i64 %.041122, %.0124                ; 2 uses
  %i.cb = load ptr, ptr %0, align 8, !tbaa !395
  %i.cc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, ptr noundef nonnull %i.bz, i64 noundef %i.ca) ; 0 uses
  %i.cd = load i64, ptr %i.c, align 8, !tbaa !543
  %i.ce = add i64 %i.cd, %i.ca
  store i64 %i.ce, ptr %i.c, align 8, !tbaa !543
  br label %_ZN2c43yml13WriterOStreamINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEE9_do_writeENS_15basic_substringIKcEE.exit88

_ZN2c43yml13WriterOStreamINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEE9_do_writeENS_15basic_substringIKcEE.exit88: ; preds = %bb.m, %bb.n
  %i.cf = load ptr, ptr %0, align 8, !tbaa !395
  %i.cg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, ptr noundef nonnull @.str.303, i64 noundef 2) ; 0 uses
  %i.ch = load i64, ptr %i.c, align 8, !tbaa !543
  %i.ci = add i64 %i.ch, 2
  store i64 %i.ci, ptr %i.c, align 8, !tbaa !543
  %i.cj = add nuw i64 %.041122, 1                 ; 2 uses
  br label %bb.q

bb.o:                                             ; preds = %bb.b
  %i.ck = icmp eq i64 %.041122, %.0124
  %i.cl = select i1 %i.ck, i1 true, i1 %i.f
  br i1 %i.cl, label %_ZN2c43yml13WriterOStreamINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEE9_do_writeENS_15basic_substringIKcEE.exit89, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 %.0124
  %i.cn = sub i64 %.041122, %.0124                ; 2 uses
end_hunk_2
