Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/json?download=true
inline.NumInlined: 5428
inline.NumDeleted: 1959
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
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
  %i.bs = load i64, ptr %.sroa.09.016.i.i.i.i.i.i, align 8, !tbaa !62
  %i.bt = and i64 %i.bs, %i.br
  %.not.i.i.i.i.i.i47 = icmp eq i64 %i.bt, 0
  %i.bu = zext nneg i32 %.sroa.55.018.i.i.i.i.i.i to i64
  %i.bv = shl nuw i64 1, %i.bu                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i47, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bw = load i64, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !62
  %i.bx = or i64 %i.bw, %i.bv
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.by = xor i64 %i.bv, -1
  %i.bz = load i64, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !62
  %i.ca = and i64 %i.bz, %i.by
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i

_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i:       ; preds = %bb.n, %bb.m
  %storemerge.i.i.i.i.i.i = phi i64 [ %i.ca, %bb.n ], [ %i.bx, %bb.m ]
  store i64 %storemerge.i.i.i.i.i.i, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !62
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
  br i1 %i.cg, label %.lr.ph.i.i.i.i.i.i, label %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit, !llvm.loop !934

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
  %i.cm = load i64, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i110, align 8, !tbaa !62
  %i.cn = or i64 %i.cm, %i.cl
  br label %_ZNSt14_Bit_referenceaSEb.exit53

bb.q:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit
  %i.co = xor i64 %i.cl, -1
  %i.cp = load i64, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i110, align 8, !tbaa !62
  %i.cq = and i64 %i.cp, %i.co
  br label %_ZNSt14_Bit_referenceaSEb.exit53

_ZNSt14_Bit_referenceaSEb.exit53:                 ; preds = %bb.p, %bb.q
  %storemerge111 = phi i64 [ %i.cq, %bb.q ], [ %i.cn, %bb.p ]
  store i64 %storemerge111, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i110, align 8, !tbaa !62
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
  %i.dc = load i64, ptr %.sroa.013.020.i.i.i.i.i, align 8, !tbaa !62
  %i.dd = and i64 %i.dc, %i.cz
  %.not.i.i.i.i.i.i65 = icmp eq i64 %i.dd, 0
  br i1 %.not.i.i.i.i.i.i65, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.de = load i64, ptr %.sroa.07.023.i.i.i.i.i63, align 8, !tbaa !62
  %i.df = or i64 %i.de, %i.db
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.dg = xor i64 %i.db, -1
  %i.dh = load i64, ptr %.sroa.07.023.i.i.i.i.i63, align 8, !tbaa !62
  %i.di = and i64 %i.dh, %i.dg
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66

_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66:    ; preds = %bb.s, %bb.r
  %storemerge.i.i.i.i.i67 = phi i64 [ %i.df, %bb.r ], [ %i.di, %bb.s ]
  store i64 %storemerge.i.i.i.i.i67, ptr %.sroa.07.023.i.i.i.i.i63, align 8, !tbaa !62
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
  br i1 %i.do, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, !llvm.loop !935

_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit:  ; preds = %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66, %_ZNSt14_Bit_referenceaSEb.exit53
  %.sroa.59.0.lcssa.i.i.i.i.i58 = phi i32 [ %.sroa.683.0, %_ZNSt14_Bit_referenceaSEb.exit53 ], [ %.sroa.59.1.i.i.i.i.i70, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ]
  %.sroa.07.0.lcssa.i.i.i.i.i59 = phi ptr [ %.sroa.082.0, %_ZNSt14_Bit_referenceaSEb.exit53 ], [ %.sroa.07.1.i.i.i.i.i72, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ]
  %.not.i73 = icmp eq ptr %i.au, null
  br i1 %.not.i73, label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit, label %bb.t

bb.t:                                             ; preds = %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %i.dp = ashr exact i64 %i.aw, 3
  %i.dq = sub nsw i64 0, %i.dp
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.dq
  tail call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.aw) #31
  br label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit

_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit: ; preds = %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, %bb.t
  %i.ds = lshr i64 %i.bf, 6
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.ds
  store ptr %i.dt, ptr %i.c, align 8, !tbaa !251
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
define linkonce_odr noundef zeroext i1 @_ZN8nlohmann16json_abi_v3_12_06detail28json_sax_dom_callback_parserINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE12start_objectEm(ptr noundef nonnull align 8 dereferenceable(192) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !259
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !237
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 3
  %i.l = trunc i64 %i.k to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.l, ptr %i.a, align 4, !tbaa !53
  store i8 0, ptr %i.b, align 1, !tbaa !262
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !105
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %bb.b, label %_ZNKSt8functionIFbiN8nlohmann16json_abi_v3_12_06detail13parse_event_tERNS1_10basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEclEiS3_SH_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt25__throw_bad_function_callv() #34
  unreachable

_ZNKSt8functionIFbiN8nlohmann16json_abi_v3_12_06detail13parse_event_tERNS1_10basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEclEiS3_SH_.exit: ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !107
  %i.s = call noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.p), !inline_history !18 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !250  ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !251
  %.not.i = icmp eq ptr %i.u, %i.w
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %.sroa.2.0.copyload.i11.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8 ; 4 uses
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZNKSt8functionIFbiN8nlohmann16json_abi_v3_12_06detail13parse_event_tERNS1_10basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEclEiS3_SH_.exit
  %i.x = add i32 %.sroa.2.0.copyload.i11.i, 1
  store i32 %i.x, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !252
  %i.y = icmp eq i32 %.sroa.2.0.copyload.i11.i, 63
  br i1 %i.y, label %bb.d, label %_ZNSt13_Bit_iteratorppEi.exit.i

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !252
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.z, ptr %i.t, align 8, !tbaa !250
  br label %_ZNSt13_Bit_iteratorppEi.exit.i

_ZNSt13_Bit_iteratorppEi.exit.i:                  ; preds = %bb.d, %bb.c
  %i.aa = zext nneg i32 %.sroa.2.0.copyload.i11.i to i64
  %i.ab = shl nuw i64 1, %i.aa                    ; 2 uses
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.ac = load i64, ptr %i.u, align 8, !tbaa !62
  %i.ad = or i64 %i.ac, %i.ab
  store i64 %i.ad, ptr %i.u, align 8, !tbaa !62
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

bb.f:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.ae = xor i64 %i.ab, -1
  %i.af = load i64, ptr %i.u, align 8, !tbaa !62
  %i.ag = and i64 %i.af, %i.ae
  store i64 %i.ag, ptr %i.u, align 8, !tbaa !62
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

bb.g:                                             ; preds = %_ZNKSt8functionIFbiN8nlohmann16json_abi_v3_12_06detail13parse_event_tERNS1_10basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEclEiS3_SH_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, ptr %i.u, i32 %.sroa.2.0.copyload.i11.i, i1 noundef zeroext %i.s)
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

_ZNSt6vectorIbSaIbEE9push_backEb.exit:            ; preds = %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  store i8 1, ptr %i.c, align 1, !tbaa !101
  %i.ai = call { i8, ptr } @_ZN8nlohmann16json_abi_v3_12_06detail28json_sax_dom_callback_parserINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE12handle_valueINS1_7value_tEEESt4pairIbPSF_EOT_b(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.c, i1 noundef zeroext true)
  %i.aj = extractvalue { i8, ptr } %i.ai, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  %i.ak = load ptr, ptr %i.e, align 8, !tbaa !259 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !238
  %.not.i15 = icmp eq ptr %i.ak, %i.am
  br i1 %.not.i15, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !117
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.an, ptr %i.e, align 8, !tbaa !259
  br label %_ZNSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE9push_backERKSE_.exit

bb.i:                                             ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !237 ; 4 uses
  %i.ap = ptrtoint ptr %i.ak to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 6 uses
  %i.as = icmp eq i64 %i.ar, 9223372036854775800
  br i1 %i.as, label %bb.j, label %_ZNKSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #34
  unreachable

_ZNKSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.at = ashr exact i64 %i.ar, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.at, i64 1)
  %i.au = add nsw i64 %.sroa.speculated.i.i.i, %i.at ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.at
  %i.aw = call i64 @llvm.umin.i64(i64 %i.au, i64 1152921504606846975)
  %i.ax = select i1 %i.av, i64 1152921504606846975, i64 %i.aw ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ax, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ay = shl nuw nsw i64 %i.ax, 3
  %i.az = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #32 ; 4 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 %i.ar ; 3 uses
  store ptr %i.aj, ptr %i.ba, align 8, !tbaa !117
  %i.bb = icmp sgt i64 %i.ar, 0
  br i1 %i.bb, label %bb.k, label %_ZNSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit16.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.az, ptr align 8 %i.ao, i64 %i.ar, i1 false)
  br label %_ZNSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit16.i.i

_ZNSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit16.i.i: ; preds = %bb.k, %_ZNKSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE12_M_check_lenEmPKc.exit.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.not.i17.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE17_M_realloc_insertIJRKSE_EEEvN9__gnu_cxx17__normal_iteratorIPSE_SG_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.ar) #31
  br label %_ZNSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE17_M_realloc_insertIJRKSE_EEEvN9__gnu_cxx17__normal_iteratorIPSE_SG_EEDpOT_.exit.i

_ZNSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE17_M_realloc_insertIJRKSE_EEEvN9__gnu_cxx17__normal_iteratorIPSE_SG_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit16.i.i
  store ptr %i.az, ptr %i.d, align 8, !tbaa !237
  store ptr %i.bc, ptr %i.e, align 8, !tbaa !259
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ax
  store ptr %i.bd, ptr %i.al, align 8, !tbaa !238
  br label %_ZNSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE9push_backERKSE_.exit

_ZNSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE9push_backERKSE_.exit: ; preds = %bb.h, %_ZNSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE17_M_realloc_insertIJRKSE_EEEvN9__gnu_cxx17__normal_iteratorIPSE_SG_EEDpOT_.exit.i
  %i.be = phi ptr [ %i.ak, %bb.h ], [ %i.ba, %_ZNSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE17_M_realloc_insertIJRKSE_EEEvN9__gnu_cxx17__normal_iteratorIPSE_SG_EEDpOT_.exit.i ]
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !117 ; 2 uses
  %.not = icmp eq ptr %i.bf, null
  %.not12 = icmp eq i64 %1, -1
  %or.cond = or i1 %.not12, %.not
  br i1 %or.cond, label %.critedge, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE9push_backERKSE_.exit
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !91  ; 2 uses
  %i.bh = icmp ult i8 %i.bg, 3
  br i1 %i.bh, label %switch.lookup, label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE8max_sizeEv.exit

switch.lookup:                                    ; preds = %bb.m
  %i.bi = zext nneg i8 %i.bg to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN8nlohmann16json_abi_v3_12_06detail19json_sax_dom_parserINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE11start_arrayEm, i64 %i.bi
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE8max_sizeEv.exit

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE8max_sizeEv.exit: ; preds = %bb.m, %switch.lookup
  %.0.i = phi i64 [ %switch.load, %switch.lookup ], [ 1, %bb.m ]
  %i.bj = icmp ugt i64 %1, %.0.i
  br i1 %i.bj, label %bb.n, label %.critedge, !prof !54

bb.n:                                             ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE8max_sizeEv.exit
  %i.bk = call ptr @__cxa_allocate_exception(i64 32) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  invoke void @_ZNSt7__cxx119to_stringEm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i64 noundef %1)
          to label %bb.o unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.thread

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail6concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA24_KcS8_EEET_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 1 dereferenceable(24) @.str.121, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.p unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.bl = load ptr, ptr %i.e, align 8, !tbaa !258
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !117
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail12out_of_range6createIPNS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEETnNSt9enable_ifIXsr21is_basic_json_contextIT_EE5valueEiE4typeELi0EEES2_iRKSC_SJ_(ptr dead_on_unwind writable sret(%"class.nlohmann::json_abi_v3_12_0::detail::out_of_range") align 8 %i.bk, i32 noundef 408, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.bn)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @__cxa_throw(ptr %i.bk, ptr nonnull @_ZTIN8nlohmann16json_abi_v3_12_06detail12out_of_rangeE, ptr nonnull @_ZN8nlohmann16json_abi_v3_12_06detail9exceptionD2Ev) #34
          to label %bb.u unwind label %bb.r

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.thread: ; preds = %bb.n
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0 = phi i1 [ false, %bb.q ], [ true, %bb.p ]  ; 2 uses
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bq = load ptr, ptr %2, align 8, !tbaa !46    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.r
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !43
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bv = load ptr, ptr %3, align 8, !tbaa !46    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.o
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bz = load ptr, ptr %3, align 8, !tbaa !46    ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.thread31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !43
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cd) #31
  br label %.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.thread31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !45
  %i.cg = icmp ult i64 %i.cf, 16
  call void @llvm.assume(i1 %i.cg)
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ch = load i64, ptr %i.bw, align 8, !tbaa !43
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.ci) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0, label %bb.s, label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0, label %bb.s, label %bb.t

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.thread31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.thread
  %.pn.pn24.ph = phi { ptr, i32 } [ %i.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.thread ], [ %i.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.thread31 ], [ %i.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %.pn.pn24 = phi { ptr, i32 } [ %i.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ], [ %i.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18 ], [ %.pn.pn24.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.bk) #30
  br label %bb.t

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16, %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %.pn.pn23 = phi { ptr, i32 } [ %.pn.pn24, %bb.s ], [ %i.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18 ], [ %i.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ]
  resume { ptr, i32 } %.pn.pn23

.critedge:                                        ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE8max_sizeEv.exit, %_ZNSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE9push_backERKSE_.exit
  ret i1 true

bb.u:                                             ; preds = %bb.q
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN8nlohmann16json_abi_v3_12_06detail28json_sax_dom_callback_parserINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE10end_objectEv(ptr noundef nonnull align 8 dereferenceable(192) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %1 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 4 uses
  %2 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 11 uses
end_hunk_0
begin_hunk_1_@_ZN8nlohmann16json_abi_v3_12_06detail28json_sax_dom_callback_parserINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE10end_objectEv:bb.a
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !117 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !942)
  store ptr %i.bp, ptr %3, align 8, !tbaa !126, !alias.scope !942
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i8 0, i64 16, i1 false), !alias.scope !942
  store i64 -9223372036854775808, ptr %i.bk, align 8, !tbaa !127, !alias.scope !942
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !91, !noalias !942
  switch i8 %i.bq, label %bb.w [
    i8 1, label %bb.u
    i8 2, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !43, !noalias !942
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !118, !noalias !942
  store ptr %i.bu, ptr %i.bj, align 8, !tbaa !118, !alias.scope !942
  br label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit

bb.v:                                             ; preds = %bb.t
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !43, !noalias !942
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !117, !noalias !942
  store ptr %i.by, ptr %i.bl, align 8, !tbaa !117, !alias.scope !942
  br label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit

bb.w:                                             ; preds = %bb.t
  store i64 1, ptr %i.bk, align 8, !tbaa !127, !alias.scope !942
  br label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit

_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit: ; preds = %bb.u, %bb.v, %bb.w
  %i.bz = call noundef zeroext i1 @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEeqISG_TnNSt9enable_ifIXoosr3std7is_sameIT_SG_EE5valuesr3std7is_sameISJ_NS2_IKSF_EEEE5valueEDnE4typeELDn0EEEbRKSJ_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br i1 %i.bz, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit
  %i.ca = call noundef ptr @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEptEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !91
  %i.cc = icmp eq i8 %i.cb, 9
  br i1 %i.cc, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cd = load ptr, ptr %i.d, align 8, !tbaa !258
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 -8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !117
  %i.cg = load ptr, ptr %2, align 8, !tbaa !126
  store ptr %i.cg, ptr %4, align 8, !tbaa !126
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i64 24, i1 false), !tbaa.struct !943
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5eraseINS0_6detail9iter_implISD_EETnNSt9enable_ifIXoosr3std7is_sameIT_SH_EE5valuesr3std7is_sameISJ_NSG_IKSD_EEEE5valueEiE4typeELi0EEESJ_SJ_(ptr dead_on_unwind nonnull writable sret(%"class.nlohmann::json_abi_v3_12_0::detail::iter_impl") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %i.cf, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(32) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %.loopexit

bb.z:                                             ; preds = %bb.x
  %i.ci = load ptr, ptr %2, align 8, !tbaa !126   ; 2 uses
  %.not.i = icmp eq ptr %i.ci, null
  br i1 %.not.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.2, i32 noundef 13937, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.39) #34
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.cj = load i8, ptr %i.ci, align 8, !tbaa !91
  switch i8 %i.cj, label %bb.ae [
    i8 1, label %bb.ac
    i8 2, label %bb.ad
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.ck = load ptr, ptr %i.bc, align 8, !tbaa !130
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  store ptr %i.cl, ptr %i.bc, align 8, !tbaa !130
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit

bb.ad:                                            ; preds = %bb.ab
  %i.cm = load ptr, ptr %i.bm, align 8, !tbaa !131
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store ptr %i.cn, ptr %i.bm, align 8, !tbaa !131
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit

bb.ae:                                            ; preds = %bb.ab
  %i.co = load i64, ptr %i.bd, align 8, !tbaa !127
  %i.cp = add nsw i64 %i.co, 1
  store i64 %i.cp, ptr %i.bd, align 8, !tbaa !127
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit

_ZN8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit: ; preds = %bb.ac, %bb.ad, %bb.ae
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !258
  br label %bb.t, !llvm.loop !940

.loopexit:                                        ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.af

bb.af:                                            ; preds = %.loopexit, %bb.p, %bb.o, %_ZNSt6vectorIbSaIbEE8pop_backEv.exit
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN8nlohmann16json_abi_v3_12_06detail28json_sax_dom_callback_parserINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3keyERSB_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 11 uses
  %3 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail20external_constructorILNS1_7value_tE3EE9constructINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES8_IhSaIhEEvEEEEvRT_RKNSJ_8string_tE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZN8nlohmann16json_abi_v3_12_014adl_serializerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvE7to_jsonINS0_10basic_jsonINS0_11ordered_mapESt6vectorS7_blmdSaS1_SC_IhSaIhEEvEERS7_EEDTcmclL_ZNS0_7to_jsonEEfp_clsr3stdE7forwardIT0_Efp0_EEcvv_EERT_OSH_.exit.i unwind label %bb.f

_ZN8nlohmann16json_abi_v3_12_014adl_serializerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvE7to_jsonINS0_10basic_jsonINS0_11ordered_mapESt6vectorS7_blmdSaS1_SC_IhSaIhEEvEERS7_EEDTcmclL_ZNS0_7to_jsonEEfp_clsr3stdE7forwardIT0_Efp0_EEcvv_EERT_OSH_.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.d = load i8, ptr %2, align 8, !tbaa !91      ; 4 uses
  %.not.i.i = icmp eq i8 %i.d, 1
  %i.e = load ptr, ptr %i.c, align 8
  %.not1.i.i = icmp eq ptr %i.e, null             ; 4 uses
  %or.cond.i.i = select i1 %.not.i.i, i1 %.not1.i.i, i1 false
  br i1 %or.cond.i.i, label %.invoke.i.i, label %bb.b

bb.b:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_014adl_serializerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvE7to_jsonINS0_10basic_jsonINS0_11ordered_mapESt6vectorS7_blmdSaS1_SC_IhSaIhEEvEERS7_EEDTcmclL_ZNS0_7to_jsonEEfp_clsr3stdE7forwardIT0_Efp0_EEcvv_EERT_OSH_.exit.i
  %.not2.i.i = icmp eq i8 %i.d, 2
  %or.cond10.i.i = select i1 %.not2.i.i, i1 %.not1.i.i, i1 false
  br i1 %or.cond10.i.i, label %.invoke.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not4.i.i = icmp eq i8 %i.d, 3
  %or.cond12.i.i = select i1 %.not4.i.i, i1 %.not1.i.i, i1 false
  br i1 %or.cond12.i.i, label %.invoke.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not6.i.i = icmp eq i8 %i.d, 8
  %or.cond14.i.i = select i1 %.not6.i.i, i1 %.not1.i.i, i1 false
  br i1 %or.cond14.i.i, label %.invoke.i.i, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRS9_S9_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SH_EE5valueEiE4typeELi0EEEOT_.exit

.invoke.i.i:                                      ; preds = %bb.d, %bb.c, %bb.b, %_ZN8nlohmann16json_abi_v3_12_014adl_serializerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvE7to_jsonINS0_10basic_jsonINS0_11ordered_mapESt6vectorS7_blmdSaS1_SC_IhSaIhEEvEERS7_EEDTcmclL_ZNS0_7to_jsonEEfp_clsr3stdE7forwardIT0_Efp0_EEcvv_EERT_OSH_.exit.i
  %i.f = phi i32 [ 20703, %bb.c ], [ 20702, %bb.b ], [ 20701, %_ZN8nlohmann16json_abi_v3_12_014adl_serializerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvE7to_jsonINS0_10basic_jsonINS0_11ordered_mapESt6vectorS7_blmdSaS1_SC_IhSaIhEEvEERS7_EEDTcmclL_ZNS0_7to_jsonEEfp_clsr3stdE7forwardIT0_Efp0_EEcvv_EERT_OSH_.exit.i ], [ 20704, %bb.d ]
  %i.g = phi ptr [ @.str.6, %bb.c ], [ @.str.5, %bb.b ], [ @.str.4, %_ZN8nlohmann16json_abi_v3_12_014adl_serializerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvE7to_jsonINS0_10basic_jsonINS0_11ordered_mapESt6vectorS7_blmdSaS1_SC_IhSaIhEEvEERS7_EEDTcmclL_ZNS0_7to_jsonEEfp_clsr3stdE7forwardIT0_Efp0_EEcvv_EERT_OSH_.exit.i ], [ @.str.7, %bb.d ]
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.2, i32 noundef %i.f, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.g) #34
          to label %.cont.i.i unwind label %bb.e

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.e:                                             ; preds = %.invoke.i.i
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #35
  unreachable

common.resume:                                    ; preds = %bb.ac, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.f ], [ %.pn, %bb.ac ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #30
  br label %common.resume

_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRS9_S9_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SH_EE5valueEiE4typeELi0EEEOT_.exit: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !259
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !237
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = lshr exact i64 %i.q, 3
  %i.s = trunc i64 %i.r to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.s, ptr %i.a, align 4, !tbaa !53
  store i8 4, ptr %i.b, align 1, !tbaa !262
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !105
  %.not.i.i8 = icmp eq ptr %i.u, null
  br i1 %.not.i.i8, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRS9_S9_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SH_EE5valueEiE4typeELi0EEEOT_.exit
  invoke void @_ZSt25__throw_bad_function_callv() #34
          to label %.noexc unwind label %bb.v

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRS9_S9_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SH_EE5valueEiE4typeELi0EEEOT_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !107
  %i.y = invoke noundef zeroext i1 %i.x(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.i unwind label %bb.v, !inline_history !18 ; 3 uses

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !250 ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !251
  %.not.i = icmp eq ptr %i.aa, %i.ac
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %.sroa.2.0.copyload.i11.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8 ; 4 uses
  br i1 %.not.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = add i32 %.sroa.2.0.copyload.i11.i, 1
  store i32 %i.ad, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !252
  %i.ae = icmp eq i32 %.sroa.2.0.copyload.i11.i, 63
  br i1 %i.ae, label %bb.k, label %_ZNSt13_Bit_iteratorppEi.exit.i

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !252
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.af, ptr %i.z, align 8, !tbaa !250
  br label %_ZNSt13_Bit_iteratorppEi.exit.i

_ZNSt13_Bit_iteratorppEi.exit.i:                  ; preds = %bb.k, %bb.j
  %i.ag = zext nneg i32 %.sroa.2.0.copyload.i11.i to i64
  %i.ah = shl nuw i64 1, %i.ag                    ; 2 uses
  br i1 %i.y, label %_ZNSt6vectorIbSaIbEE9push_backEb.exit.thread, label %_ZNSt6vectorIbSaIbEE9push_backEb.exit.thread35

_ZNSt6vectorIbSaIbEE9push_backEb.exit.thread:     ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.ai = load i64, ptr %i.aa, align 8, !tbaa !62
  %i.aj = or i64 %i.ai, %i.ah
  store i64 %i.aj, ptr %i.aa, align 8, !tbaa !62
  br label %bb.m

_ZNSt6vectorIbSaIbEE9push_backEb.exit.thread35:   ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.ak = xor i64 %i.ah, -1
  %i.al = load i64, ptr %i.aa, align 8, !tbaa !62
  %i.am = and i64 %i.al, %i.ak
  store i64 %i.am, ptr %i.aa, align 8, !tbaa !62
  br label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit

bb.l:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %i.an, ptr %i.aa, i32 %.sroa.2.0.copyload.i11.i, i1 noundef zeroext %i.y)
          to label %_ZNSt6vectorIbSaIbEE9push_backEb.exit unwind label %bb.v

_ZNSt6vectorIbSaIbEE9push_backEb.exit:            ; preds = %bb.l
  br i1 %i.y, label %bb.m, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit

bb.m:                                             ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit.thread, %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  %i.ao = load ptr, ptr %i.l, align 8, !tbaa !258
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !117
  %.not = icmp eq ptr %i.aq, null
  br i1 %.not, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 168
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2ERKSD_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.ar)
          to label %bb.o unwind label %bb.v

bb.o:                                             ; preds = %bb.n
  %i.as = load ptr, ptr %i.l, align 8, !tbaa !258
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !117
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !43
  %i.ax = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN8nlohmann16json_abi_v3_12_011ordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_10basic_jsonIS1_St6vectorS7_blmdSaNS0_14adl_serializerES9_IhSaIhEEvEESt4lessIvESaISt4pairIKS7_SD_EEEixERSH_(ptr noundef nonnull align 8 dereferenceable(25) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.p unwind label %bb.w

bb.p:                                             ; preds = %bb.o
  %i.ay = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEaSESD_(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr nofreeobj noundef nonnull align 8 dereferenceable(16) %3) #30
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !263
  %i.ba = load i8, ptr %3, align 8, !tbaa !91     ; 5 uses
  %.not.i.i11 = icmp eq i8 %i.ba, 1
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8
  %.not1.i.i12 = icmp eq ptr %i.bc, null          ; 4 uses
  %or.cond.i.i13 = select i1 %.not.i.i11, i1 %.not1.i.i12, i1 false
  br i1 %or.cond.i.i13, label %.invoke.i.i20, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not2.i.i14 = icmp eq i8 %i.ba, 2
  %or.cond10.i.i15 = select i1 %.not2.i.i14, i1 %.not1.i.i12, i1 false
  br i1 %or.cond10.i.i15, label %.invoke.i.i20, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not4.i.i16 = icmp eq i8 %i.ba, 3
  %or.cond12.i.i17 = select i1 %.not4.i.i16, i1 %.not1.i.i12, i1 false
  br i1 %or.cond12.i.i17, label %.invoke.i.i20, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not6.i.i18 = icmp eq i8 %i.ba, 8
  %or.cond14.i.i19 = select i1 %.not6.i.i18, i1 %.not1.i.i12, i1 false
  br i1 %or.cond14.i.i19, label %.invoke.i.i20, label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE16assert_invariantEb.exit.i

.invoke.i.i20:                                    ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %i.bd = phi i32 [ 20703, %bb.r ], [ 20702, %bb.q ], [ 20701, %bb.p ], [ 20704, %bb.s ]
  %i.be = phi ptr [ @.str.6, %bb.r ], [ @.str.5, %bb.q ], [ @.str.4, %bb.p ], [ @.str.7, %bb.s ]
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.2, i32 noundef %i.bd, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.be) #34
          to label %.cont.i.i21 unwind label %bb.t, !inline_history !102

.cont.i.i21:                                      ; preds = %.invoke.i.i20
  unreachable

bb.t:                                             ; preds = %.invoke.i.i20
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #35, !inline_history !102
  unreachable

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE16assert_invariantEb.exit.i: ; preds = %bb.s
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, i8 noundef zeroext %i.ba) #36
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit unwind label %bb.u, !inline_history !103

bb.u:                                             ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE16assert_invariantEb.exit.i
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #35, !inline_history !103
  unreachable

bb.v:                                             ; preds = %bb.l, %bb.h, %bb.g, %bb.n
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.w:                                             ; preds = %bb.o
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #30
  br label %bb.ac

_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit: ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE16assert_invariantEb.exit.i, %_ZNSt6vectorIbSaIbEE9push_backEb.exit.thread35, %bb.m, %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  %i.bl = load i8, ptr %2, align 8, !tbaa !91     ; 5 uses
  %.not.i.i22 = icmp eq i8 %i.bl, 1
  %i.bm = load ptr, ptr %i.c, align 8
  %.not1.i.i23 = icmp eq ptr %i.bm, null          ; 4 uses
  %or.cond.i.i24 = select i1 %.not.i.i22, i1 %.not1.i.i23, i1 false
  br i1 %or.cond.i.i24, label %.invoke.i.i32, label %bb.x

bb.x:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit
  %.not2.i.i25 = icmp eq i8 %i.bl, 2
  %or.cond10.i.i26 = select i1 %.not2.i.i25, i1 %.not1.i.i23, i1 false
  br i1 %or.cond10.i.i26, label %.invoke.i.i32, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not4.i.i27 = icmp eq i8 %i.bl, 3
  %or.cond12.i.i28 = select i1 %.not4.i.i27, i1 %.not1.i.i23, i1 false
  br i1 %or.cond12.i.i28, label %.invoke.i.i32, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.not6.i.i29 = icmp eq i8 %i.bl, 8
  %or.cond14.i.i30 = select i1 %.not6.i.i29, i1 %.not1.i.i23, i1 false
  br i1 %or.cond14.i.i30, label %.invoke.i.i32, label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE16assert_invariantEb.exit.i31

.invoke.i.i32:                                    ; preds = %bb.z, %bb.y, %bb.x, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit
  %i.bn = phi i32 [ 20703, %bb.y ], [ 20702, %bb.x ], [ 20701, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit ], [ 20704, %bb.z ]
  %i.bo = phi ptr [ @.str.6, %bb.y ], [ @.str.5, %bb.x ], [ @.str.4, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit ], [ @.str.7, %bb.z ]
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.2, i32 noundef %i.bn, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.bo) #34
          to label %.cont.i.i33 unwind label %bb.aa, !inline_history !102

.cont.i.i33:                                      ; preds = %.invoke.i.i32
  unreachable

bb.aa:                                            ; preds = %.invoke.i.i32
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  call void @__clang_call_terminate(ptr %i.bq) #35, !inline_history !102
  unreachable

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE16assert_invariantEb.exit.i31: ; preds = %bb.z
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i8 noundef zeroext %i.bl) #36
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit34 unwind label %bb.ab, !inline_history !103

bb.ab:                                            ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE16assert_invariantEb.exit.i31
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #35, !inline_history !103
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit34: ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE16assert_invariantEb.exit.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret i1 true

bb.ac:                                            ; preds = %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.bk, %bb.w ], [ %i.bj, %bb.v ]
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN8nlohmann16json_abi_v3_12_06detail28json_sax_dom_callback_parserINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE11start_arrayEm(ptr noundef nonnull align 8 dereferenceable(192) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !259
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !237
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 3
  %i.l = trunc i64 %i.k to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.l, ptr %i.a, align 4, !tbaa !53
  store i8 2, ptr %i.b, align 1, !tbaa !262
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !105
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %bb.b, label %_ZNKSt8functionIFbiN8nlohmann16json_abi_v3_12_06detail13parse_event_tERNS1_10basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEclEiS3_SH_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt25__throw_bad_function_callv() #34
  unreachable

_ZNKSt8functionIFbiN8nlohmann16json_abi_v3_12_06detail13parse_event_tERNS1_10basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEclEiS3_SH_.exit: ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !107
  %i.s = call noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.p), !inline_history !18 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !250  ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !251
  %.not.i = icmp eq ptr %i.u, %i.w
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %.sroa.2.0.copyload.i11.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8 ; 4 uses
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZNKSt8functionIFbiN8nlohmann16json_abi_v3_12_06detail13parse_event_tERNS1_10basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEclEiS3_SH_.exit
  %i.x = add i32 %.sroa.2.0.copyload.i11.i, 1
  store i32 %i.x, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !252
  %i.y = icmp eq i32 %.sroa.2.0.copyload.i11.i, 63
  br i1 %i.y, label %bb.d, label %_ZNSt13_Bit_iteratorppEi.exit.i

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !252
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.z, ptr %i.t, align 8, !tbaa !250
  br label %_ZNSt13_Bit_iteratorppEi.exit.i

_ZNSt13_Bit_iteratorppEi.exit.i:                  ; preds = %bb.d, %bb.c
  %i.aa = zext nneg i32 %.sroa.2.0.copyload.i11.i to i64
  %i.ab = shl nuw i64 1, %i.aa                    ; 2 uses
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.ac = load i64, ptr %i.u, align 8, !tbaa !62
  %i.ad = or i64 %i.ac, %i.ab
  store i64 %i.ad, ptr %i.u, align 8, !tbaa !62
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

bb.f:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.ae = xor i64 %i.ab, -1
  %i.af = load i64, ptr %i.u, align 8, !tbaa !62
  %i.ag = and i64 %i.af, %i.ae
  store i64 %i.ag, ptr %i.u, align 8, !tbaa !62
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

bb.g:                                             ; preds = %_ZNKSt8functionIFbiN8nlohmann16json_abi_v3_12_06detail13parse_event_tERNS1_10basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEclEiS3_SH_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, ptr %i.u, i32 %.sroa.2.0.copyload.i11.i, i1 noundef zeroext %i.s)
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

_ZNSt6vectorIbSaIbEE9push_backEb.exit:            ; preds = %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  store i8 2, ptr %i.c, align 1, !tbaa !101
  %i.ai = call { i8, ptr } @_ZN8nlohmann16json_abi_v3_12_06detail28json_sax_dom_callback_parserINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE12handle_valueINS1_7value_tEEESt4pairIbPSF_EOT_b(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.c, i1 noundef zeroext true)
  %i.aj = extractvalue { i8, ptr } %i.ai, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  %i.ak = load ptr, ptr %i.e, align 8, !tbaa !259 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !238
  %.not.i15 = icmp eq ptr %i.ak, %i.am
  br i1 %.not.i15, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !117
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.an, ptr %i.e, align 8, !tbaa !259
  br label %_ZNSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE9push_backERKSE_.exit

bb.i:                                             ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !237 ; 4 uses
  %i.ap = ptrtoint ptr %i.ak to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 6 uses
  %i.as = icmp eq i64 %i.ar, 9223372036854775800
  br i1 %i.as, label %bb.j, label %_ZNKSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #34
  unreachable

_ZNKSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.at = ashr exact i64 %i.ar, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.at, i64 1)
  %i.au = add nsw i64 %.sroa.speculated.i.i.i, %i.at ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.at
  %i.aw = call i64 @llvm.umin.i64(i64 %i.au, i64 1152921504606846975)
  %i.ax = select i1 %i.av, i64 1152921504606846975, i64 %i.aw ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ax, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ay = shl nuw nsw i64 %i.ax, 3
  %i.az = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #32 ; 4 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 %i.ar ; 3 uses
  store ptr %i.aj, ptr %i.ba, align 8, !tbaa !117
  %i.bb = icmp sgt i64 %i.ar, 0
  br i1 %i.bb, label %bb.k, label %_ZNSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit16.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.az, ptr align 8 %i.ao, i64 %i.ar, i1 false)
  br label %_ZNSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit16.i.i

_ZNSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit16.i.i: ; preds = %bb.k, %_ZNKSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE12_M_check_lenEmPKc.exit.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.not.i17.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE17_M_realloc_insertIJRKSE_EEEvN9__gnu_cxx17__normal_iteratorIPSE_SG_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.ar) #31
  br label %_ZNSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE17_M_realloc_insertIJRKSE_EEEvN9__gnu_cxx17__normal_iteratorIPSE_SG_EEDpOT_.exit.i

_ZNSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE17_M_realloc_insertIJRKSE_EEEvN9__gnu_cxx17__normal_iteratorIPSE_SG_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit16.i.i
  store ptr %i.az, ptr %i.d, align 8, !tbaa !237
  store ptr %i.bc, ptr %i.e, align 8, !tbaa !259
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ax
  store ptr %i.bd, ptr %i.al, align 8, !tbaa !238
  br label %_ZNSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE9push_backERKSE_.exit

_ZNSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE9push_backERKSE_.exit: ; preds = %bb.h, %_ZNSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE17_M_realloc_insertIJRKSE_EEEvN9__gnu_cxx17__normal_iteratorIPSE_SG_EEDpOT_.exit.i
  %i.be = phi ptr [ %i.ak, %bb.h ], [ %i.ba, %_ZNSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE17_M_realloc_insertIJRKSE_EEEvN9__gnu_cxx17__normal_iteratorIPSE_SG_EEDpOT_.exit.i ]
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !117 ; 2 uses
  %.not = icmp eq ptr %i.bf, null
  %.not12 = icmp eq i64 %1, -1
  %or.cond = or i1 %.not12, %.not
  br i1 %or.cond, label %.critedge, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE9push_backERKSE_.exit
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !91  ; 2 uses
  %i.bh = icmp ult i8 %i.bg, 3
  br i1 %i.bh, label %switch.lookup, label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE8max_sizeEv.exit

switch.lookup:                                    ; preds = %bb.m
  %i.bi = zext nneg i8 %i.bg to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN8nlohmann16json_abi_v3_12_06detail19json_sax_dom_parserINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE11start_arrayEm, i64 %i.bi
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE8max_sizeEv.exit

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE8max_sizeEv.exit: ; preds = %bb.m, %switch.lookup
  %.0.i = phi i64 [ %switch.load, %switch.lookup ], [ 1, %bb.m ]
  %i.bj = icmp ugt i64 %1, %.0.i
  br i1 %i.bj, label %bb.n, label %.critedge, !prof !54

bb.n:                                             ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE8max_sizeEv.exit
  %i.bk = call ptr @__cxa_allocate_exception(i64 32) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  invoke void @_ZNSt7__cxx119to_stringEm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i64 noundef %1)
          to label %bb.o unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.thread

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail6concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA23_KcS8_EEET_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 1 dereferenceable(23) @.str.129, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.p unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.bl = load ptr, ptr %i.e, align 8, !tbaa !258
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !117
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail12out_of_range6createIPNS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEETnNSt9enable_ifIXsr21is_basic_json_contextIT_EE5valueEiE4typeELi0EEES2_iRKSC_SJ_(ptr dead_on_unwind writable sret(%"class.nlohmann::json_abi_v3_12_0::detail::out_of_range") align 8 %i.bk, i32 noundef 408, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.bn)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @__cxa_throw(ptr %i.bk, ptr nonnull @_ZTIN8nlohmann16json_abi_v3_12_06detail12out_of_rangeE, ptr nonnull @_ZN8nlohmann16json_abi_v3_12_06detail9exceptionD2Ev) #34
          to label %bb.u unwind label %bb.r

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.thread: ; preds = %bb.n
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0 = phi i1 [ false, %bb.q ], [ true, %bb.p ]  ; 2 uses
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bq = load ptr, ptr %2, align 8, !tbaa !46    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.r
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !43
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bv = load ptr, ptr %3, align 8, !tbaa !46    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.o
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bz = load ptr, ptr %3, align 8, !tbaa !46    ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.thread31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !43
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cd) #31
  br label %.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.thread31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !45
  %i.cg = icmp ult i64 %i.cf, 16
  call void @llvm.assume(i1 %i.cg)
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ch = load i64, ptr %i.bw, align 8, !tbaa !43
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.ci) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0, label %bb.s, label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0, label %bb.s, label %bb.t

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.thread31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.thread
  %.pn.pn24.ph = phi { ptr, i32 } [ %i.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.thread ], [ %i.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.thread31 ], [ %i.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %.pn.pn24 = phi { ptr, i32 } [ %i.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ], [ %i.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18 ], [ %.pn.pn24.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.bk) #30
  br label %bb.t

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16, %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %.pn.pn23 = phi { ptr, i32 } [ %.pn.pn24, %bb.s ], [ %i.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18 ], [ %i.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ]
  resume { ptr, i32 } %.pn.pn23

.critedge:                                        ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE8max_sizeEv.exit, %_ZNSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE9push_backERKSE_.exit
  ret i1 true

bb.u:                                             ; preds = %bb.q
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN8nlohmann16json_abi_v3_12_06detail28json_sax_dom_callback_parserINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE9end_arrayEv(ptr noundef nonnull align 8 dereferenceable(192) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %1 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
end_hunk_1
