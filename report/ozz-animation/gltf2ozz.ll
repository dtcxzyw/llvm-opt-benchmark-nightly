Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/gltf2ozz?download=true
inline.NumInlined: 15962
inline.NumDeleted: 4531
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 17
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
  %i.bs = load i64, ptr %.sroa.09.016.i.i.i.i.i.i, align 8, !tbaa !398
  %i.bt = and i64 %i.bs, %i.br
  %.not.i.i.i.i.i.i47 = icmp eq i64 %i.bt, 0
  %i.bu = zext nneg i32 %.sroa.55.018.i.i.i.i.i.i to i64
  %i.bv = shl nuw i64 1, %i.bu                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i47, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bw = load i64, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !398
  %i.bx = or i64 %i.bw, %i.bv
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.by = xor i64 %i.bv, -1
  %i.bz = load i64, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !398
  %i.ca = and i64 %i.bz, %i.by
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i

_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i:       ; preds = %bb.n, %bb.m
  %storemerge.i.i.i.i.i.i = phi i64 [ %i.ca, %bb.n ], [ %i.bx, %bb.m ]
  store i64 %storemerge.i.i.i.i.i.i, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !398
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
  br i1 %i.cg, label %.lr.ph.i.i.i.i.i.i, label %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit, !llvm.loop !4195

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
  %i.cm = load i64, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i110, align 8, !tbaa !398
  %i.cn = or i64 %i.cm, %i.cl
  br label %_ZNSt14_Bit_referenceaSEb.exit53

bb.q:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit
  %i.co = xor i64 %i.cl, -1
  %i.cp = load i64, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i110, align 8, !tbaa !398
  %i.cq = and i64 %i.cp, %i.co
  br label %_ZNSt14_Bit_referenceaSEb.exit53

_ZNSt14_Bit_referenceaSEb.exit53:                 ; preds = %bb.p, %bb.q
  %storemerge111 = phi i64 [ %i.cq, %bb.q ], [ %i.cn, %bb.p ]
  store i64 %storemerge111, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i110, align 8, !tbaa !398
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
  %i.dc = load i64, ptr %.sroa.013.020.i.i.i.i.i, align 8, !tbaa !398
  %i.dd = and i64 %i.dc, %i.cz
  %.not.i.i.i.i.i.i65 = icmp eq i64 %i.dd, 0
  br i1 %.not.i.i.i.i.i.i65, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.de = load i64, ptr %.sroa.07.023.i.i.i.i.i63, align 8, !tbaa !398
  %i.df = or i64 %i.de, %i.db
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.dg = xor i64 %i.db, -1
  %i.dh = load i64, ptr %.sroa.07.023.i.i.i.i.i63, align 8, !tbaa !398
  %i.di = and i64 %i.dh, %i.dg
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66

_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66:    ; preds = %bb.s, %bb.r
  %storemerge.i.i.i.i.i67 = phi i64 [ %i.df, %bb.r ], [ %i.di, %bb.s ]
  store i64 %storemerge.i.i.i.i.i67, ptr %.sroa.07.023.i.i.i.i.i63, align 8, !tbaa !398
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
  br i1 %i.do, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, !llvm.loop !4196

_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit:  ; preds = %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66, %_ZNSt14_Bit_referenceaSEb.exit53
  %.sroa.59.0.lcssa.i.i.i.i.i58 = phi i32 [ %.sroa.683.0, %_ZNSt14_Bit_referenceaSEb.exit53 ], [ %.sroa.59.1.i.i.i.i.i70, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ]
  %.sroa.07.0.lcssa.i.i.i.i.i59 = phi ptr [ %.sroa.082.0, %_ZNSt14_Bit_referenceaSEb.exit53 ], [ %.sroa.07.1.i.i.i.i.i72, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ]
  %.not.i73 = icmp eq ptr %i.au, null
  br i1 %.not.i73, label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit, label %bb.t

bb.t:                                             ; preds = %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %i.dp = ashr exact i64 %i.aw, 3
  %i.dq = sub nsw i64 0, %i.dp
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.dq
  tail call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.aw) #42
  br label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit

_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit: ; preds = %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, %bb.t
  %i.ds = lshr i64 %i.bf, 6
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.ds
  store ptr %i.dt, ptr %i.c, align 8, !tbaa !732
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
define linkonce_odr dso_local noundef zeroext i1 @_ZN8nlohmann16json_abi_v3_11_36detail28json_sax_dom_callback_parserINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12start_objectEm(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !736
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !716
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 3
  %i.l = trunc i64 %i.k to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.l, ptr %i.a, align 4, !tbaa !385
  store i8 0, ptr %i.b, align 1, !tbaa !739
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !79
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %bb.b, label %_ZNKSt8functionIFbiN8nlohmann16json_abi_v3_11_36detail13parse_event_tERNS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEclEiS3_SH_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt25__throw_bad_function_callv() #44
  unreachable

_ZNKSt8functionIFbiN8nlohmann16json_abi_v3_11_36detail13parse_event_tERNS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEclEiS3_SH_.exit: ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !83
  %i.s = call noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.p), !inline_history !56 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !731  ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !732
  %.not.i = icmp eq ptr %i.u, %i.w
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %.sroa.2.0.copyload.i11.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8 ; 4 uses
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZNKSt8functionIFbiN8nlohmann16json_abi_v3_11_36detail13parse_event_tERNS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEclEiS3_SH_.exit
  %i.x = add i32 %.sroa.2.0.copyload.i11.i, 1
  store i32 %i.x, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !733
  %i.y = icmp eq i32 %.sroa.2.0.copyload.i11.i, 63
  br i1 %i.y, label %bb.d, label %_ZNSt13_Bit_iteratorppEi.exit.i

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !733
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.z, ptr %i.t, align 8, !tbaa !731
  br label %_ZNSt13_Bit_iteratorppEi.exit.i

_ZNSt13_Bit_iteratorppEi.exit.i:                  ; preds = %bb.d, %bb.c
  %i.aa = zext nneg i32 %.sroa.2.0.copyload.i11.i to i64
  %i.ab = shl nuw i64 1, %i.aa                    ; 2 uses
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.ac = load i64, ptr %i.u, align 8, !tbaa !398
  %i.ad = or i64 %i.ac, %i.ab
  store i64 %i.ad, ptr %i.u, align 8, !tbaa !398
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

bb.f:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.ae = xor i64 %i.ab, -1
  %i.af = load i64, ptr %i.u, align 8, !tbaa !398
  %i.ag = and i64 %i.af, %i.ae
  store i64 %i.ag, ptr %i.u, align 8, !tbaa !398
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

bb.g:                                             ; preds = %_ZNKSt8functionIFbiN8nlohmann16json_abi_v3_11_36detail13parse_event_tERNS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEclEiS3_SH_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, ptr %i.u, i32 %.sroa.2.0.copyload.i11.i, i1 noundef zeroext %i.s)
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

_ZNSt6vectorIbSaIbEE9push_backEb.exit:            ; preds = %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  store i8 1, ptr %i.c, align 1, !tbaa !74
  %i.ai = call { i8, ptr } @_ZN8nlohmann16json_abi_v3_11_36detail28json_sax_dom_callback_parserINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12handle_valueINS1_7value_tEEESt4pairIbPSF_EOT_b(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.c, i1 noundef zeroext true)
  %i.aj = extractvalue { i8, ptr } %i.ai, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  %i.ak = load ptr, ptr %i.e, align 8, !tbaa !736 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !717
  %.not.i15 = icmp eq ptr %i.ak, %i.am
  br i1 %.not.i15, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !445
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.an, ptr %i.e, align 8, !tbaa !736
  br label %_ZNSt6vectorIPN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE9push_backERKSE_.exit

bb.i:                                             ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !716 ; 4 uses
  %i.ap = ptrtoint ptr %i.ak to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 6 uses
  %i.as = icmp eq i64 %i.ar, 9223372036854775800
  br i1 %i.as, label %bb.j, label %_ZNKSt6vectorIPN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.106) #44
  unreachable

_ZNKSt6vectorIPN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.at = ashr exact i64 %i.ar, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.at, i64 1)
  %i.au = add nsw i64 %.sroa.speculated.i.i.i, %i.at ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.at
  %i.aw = call i64 @llvm.umin.i64(i64 %i.au, i64 1152921504606846975)
  %i.ax = select i1 %i.av, i64 1152921504606846975, i64 %i.aw ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ax, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ay = shl nuw nsw i64 %i.ax, 3
  %i.az = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #45 ; 4 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 %i.ar ; 3 uses
  store ptr %i.aj, ptr %i.ba, align 8, !tbaa !445
  %i.bb = icmp sgt i64 %i.ar, 0
  br i1 %i.bb, label %bb.k, label %_ZNSt6vectorIPN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit16.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorIPN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.az, ptr align 8 %i.ao, i64 %i.ar, i1 false)
  br label %_ZNSt6vectorIPN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit16.i.i

_ZNSt6vectorIPN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit16.i.i: ; preds = %bb.k, %_ZNKSt6vectorIPN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE12_M_check_lenEmPKc.exit.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.not.i17.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE17_M_realloc_insertIJRKSE_EEEvN9__gnu_cxx17__normal_iteratorIPSE_SG_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIPN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.ar) #42
  br label %_ZNSt6vectorIPN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE17_M_realloc_insertIJRKSE_EEEvN9__gnu_cxx17__normal_iteratorIPSE_SG_EEDpOT_.exit.i

_ZNSt6vectorIPN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE17_M_realloc_insertIJRKSE_EEEvN9__gnu_cxx17__normal_iteratorIPSE_SG_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIPN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit16.i.i
  store ptr %i.az, ptr %i.d, align 8, !tbaa !716
  store ptr %i.bc, ptr %i.e, align 8, !tbaa !736
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ax
  store ptr %i.bd, ptr %i.al, align 8, !tbaa !717
  br label %_ZNSt6vectorIPN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE9push_backERKSE_.exit

_ZNSt6vectorIPN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE9push_backERKSE_.exit: ; preds = %bb.h, %_ZNSt6vectorIPN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE17_M_realloc_insertIJRKSE_EEEvN9__gnu_cxx17__normal_iteratorIPSE_SG_EEDpOT_.exit.i
  %i.be = phi ptr [ %i.ak, %bb.h ], [ %i.ba, %_ZNSt6vectorIPN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE17_M_realloc_insertIJRKSE_EEEvN9__gnu_cxx17__normal_iteratorIPSE_SG_EEDpOT_.exit.i ]
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !445 ; 2 uses
  %.not = icmp eq ptr %i.bf, null
  %.not12 = icmp eq i64 %1, -1
  %or.cond = or i1 %.not12, %.not
  br i1 %or.cond, label %.critedge, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIPN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE9push_backERKSE_.exit
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !436 ; 2 uses
  %i.bh = icmp ult i8 %i.bg, 3
  br i1 %i.bh, label %switch.lookup, label %_ZNK8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE8max_sizeEv.exit

switch.lookup:                                    ; preds = %bb.m
  %i.bi = zext nneg i8 %i.bg to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN8nlohmann16json_abi_v3_11_36detail19json_sax_dom_parserINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE11start_arrayEm, i64 %i.bi
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %_ZNK8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE8max_sizeEv.exit

_ZNK8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE8max_sizeEv.exit: ; preds = %bb.m, %switch.lookup
  %.0.i = phi i64 [ %switch.load, %switch.lookup ], [ 1, %bb.m ]
  %i.bj = icmp ugt i64 %1, %.0.i
  br i1 %i.bj, label %bb.n, label %.critedge, !prof !470

bb.n:                                             ; preds = %_ZNK8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE8max_sizeEv.exit
  %i.bk = call ptr @__cxa_allocate_exception(i64 32) #41 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  invoke void @_ZNSt7__cxx119to_stringEm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i64 noundef %1)
          to label %bb.o unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.thread

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN8nlohmann16json_abi_v3_11_36detail6concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA24_KcS8_EEET_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 1 dereferenceable(24) @.str.344, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.p unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.bl = load ptr, ptr %i.e, align 8, !tbaa !735
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !445
  invoke void @_ZN8nlohmann16json_abi_v3_11_36detail12out_of_range6createIPNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEETnNSt9enable_ifIXsr21is_basic_json_contextIT_EE5valueEiE4typeELi0EEES2_iRKSC_SJ_(ptr dead_on_unwind writable sret(%"class.nlohmann::json_abi_v3_11_3::detail::out_of_range") align 8 %i.bk, i32 noundef 408, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.bn)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @__cxa_throw(ptr %i.bk, ptr nonnull @_ZTIN8nlohmann16json_abi_v3_11_36detail12out_of_rangeE, ptr nonnull @_ZN8nlohmann16json_abi_v3_11_36detail9exceptionD2Ev) #44
          to label %bb.u unwind label %bb.r

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.thread: ; preds = %bb.n
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0 = phi i1 [ false, %bb.q ], [ true, %bb.p ]  ; 2 uses
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bq = load ptr, ptr %2, align 8, !tbaa !89    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.r
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !75
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bv = load ptr, ptr %3, align 8, !tbaa !89    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.o
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bz = load ptr, ptr %3, align 8, !tbaa !89    ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !75
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cd) #42
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ce = load i64, ptr %i.bw, align 8, !tbaa !75
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.cf) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  br i1 %.0, label %bb.s, label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  br i1 %.0, label %bb.s, label %bb.t

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.thread
  %.pn.pn24.ph = phi { ptr, i32 } [ %i.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.thread ], [ %i.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.thread ], [ %i.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %.pn.pn24 = phi { ptr, i32 } [ %i.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ], [ %i.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18 ], [ %.pn.pn24.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.bk) #41
  br label %bb.t

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16, %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %.pn.pn23 = phi { ptr, i32 } [ %.pn.pn24, %bb.s ], [ %i.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18 ], [ %i.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ]
  resume { ptr, i32 } %.pn.pn23

.critedge:                                        ; preds = %_ZNK8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE8max_sizeEv.exit, %_ZNSt6vectorIPN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE9push_backERKSE_.exit
  ret i1 true

bb.u:                                             ; preds = %bb.q
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN8nlohmann16json_abi_v3_11_36detail28json_sax_dom_callback_parserINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE10end_objectEv(ptr noundef nonnull align 8 dereferenceable(184) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %1 = alloca %"class.nlohmann::json_abi_v3_11_3::basic_json", align 8 ; 4 uses
  %2 = alloca %"class.nlohmann::json_abi_v3_11_3::detail::iter_impl.164", align 8 ; 11 uses
  %3 = alloca %"class.nlohmann::json_abi_v3_11_3::detail::iter_impl.164", align 8 ; 7 uses
  %4 = alloca %"class.nlohmann::json_abi_v3_11_3::detail::iter_impl.164", align 8 ; 3 uses
  %5 = alloca %"class.nlohmann::json_abi_v3_11_3::detail::iter_impl.164", align 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !735  ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -8
end_hunk_0
begin_hunk_1_@_ZN8nlohmann16json_abi_v3_11_36detail28json_sax_dom_callback_parserINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE10end_objectEv:bb.a

bb.g:                                             ; preds = %_ZNSt6vectorIbSaIbEE8pop_backEv.exit
  %i.aq = getelementptr inbounds i8, ptr %i.af, i64 -16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !445 ; 4 uses
  %.not1 = icmp eq ptr %i.ar, null
  br i1 %.not1, label %bb.u, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !436 ; 2 uses
  %i.at = add i8 %i.as, -1
  %spec.select.i = icmp ult i8 %i.at, 2
  br i1 %spec.select.i, label %bb.i, label %bb.u

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  call void @llvm.experimental.noalias.scope.decl(metadata !4202)
  store ptr %i.ar, ptr %2, align 8, !tbaa !449, !alias.scope !4202
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false), !alias.scope !4202
  store i64 -9223372036854775808, ptr %i.av, align 8, !tbaa !444, !alias.scope !4202
  %i.aw = icmp eq i8 %i.as, 1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !75, !noalias !4202 ; 2 uses
  br i1 %i.aw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !128, !noalias !4202
  store ptr %i.ba, ptr %i.au, align 8, !tbaa !353, !alias.scope !4202
  br label %_ZN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit

bb.k:                                             ; preds = %bb.i
  %i.bb = load ptr, ptr %i.ay, align 8, !tbaa !445, !noalias !4202
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !445, !alias.scope !4202
  br label %_ZN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit

_ZN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit: ; preds = %bb.j, %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %_ZN8nlohmann16json_abi_v3_11_36detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit, %_ZN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit
  %i.bh = phi ptr [ %.pre, %_ZN8nlohmann16json_abi_v3_11_36detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit ], [ %i.ag, %_ZN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !445 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4203)
  store ptr %i.bj, ptr %3, align 8, !tbaa !449, !alias.scope !4203
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i8 0, i64 16, i1 false), !alias.scope !4203
  store i64 -9223372036854775808, ptr %i.be, align 8, !tbaa !444, !alias.scope !4203
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !436, !noalias !4203
  switch i8 %i.bk, label %bb.o [
    i8 1, label %bb.m
    i8 2, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !75, !noalias !4203
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %i.bn, ptr %i.bd, align 8, !tbaa !353, !alias.scope !4203
  br label %_ZN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit

bb.n:                                             ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !75, !noalias !4203
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !445, !noalias !4203
  store ptr %i.br, ptr %i.bf, align 8, !tbaa !445, !alias.scope !4203
  br label %_ZN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit

bb.o:                                             ; preds = %bb.l
  store i64 1, ptr %i.be, align 8, !tbaa !444, !alias.scope !4203
  br label %_ZN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit

_ZN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit: ; preds = %bb.m, %bb.n, %bb.o
  %i.bs = call noundef zeroext i1 @_ZNK8nlohmann16json_abi_v3_11_36detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEeqISG_TnNSt9enable_ifIXoosr3std7is_sameIT_SG_EE5valuesr3std7is_sameISJ_NS2_IKSF_EEEE5valueEDnE4typeELDn0EEEbRKSJ_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  br i1 %i.bs, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %_ZN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit
  %i.bt = call noundef ptr @_ZNK8nlohmann16json_abi_v3_11_36detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEptEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !436
  %i.bv = icmp eq i8 %i.bu, 9
  br i1 %i.bv, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bw = load ptr, ptr %i.d, align 8, !tbaa !735
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 -8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !445
  %i.bz = load ptr, ptr %2, align 8, !tbaa !449
  store ptr %i.bz, ptr %4, align 8, !tbaa !449
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 24, i1 false), !tbaa.struct !450
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  call void @_ZN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5eraseINS0_6detail9iter_implISD_EETnNSt9enable_ifIXoosr3std7is_sameIT_SH_EE5valuesr3std7is_sameISJ_NSG_IKSD_EEEE5valueEiE4typeELi0EEESJ_SJ_(ptr dead_on_unwind nonnull writable sret(%"class.nlohmann::json_abi_v3_11_3::detail::iter_impl.164") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %i.by, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(32) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  br label %.loopexit

bb.r:                                             ; preds = %bb.p
  %i.cb = load ptr, ptr %2, align 8, !tbaa !449
  %i.cc = load i8, ptr %i.cb, align 8, !tbaa !436
  switch i8 %i.cc, label %bb.t [
    i8 1, label %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i
    i8 2, label %bb.s
  ]

_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i: ; preds = %bb.r
  %.promoted11.i.i = load ptr, ptr %i.au, align 8, !tbaa !447
  %i.cd = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.promoted11.i.i) #43
  store ptr %i.cd, ptr %i.au, align 8, !tbaa !447
  br label %_ZN8nlohmann16json_abi_v3_11_36detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit

bb.s:                                             ; preds = %bb.r
  %i.ce = load ptr, ptr %i.bg, align 8, !tbaa !474
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store ptr %i.cf, ptr %i.bg, align 8, !tbaa !474
  br label %_ZN8nlohmann16json_abi_v3_11_36detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit

bb.t:                                             ; preds = %bb.r
  %i.cg = load i64, ptr %i.av, align 8, !tbaa !444
  %i.ch = add nsw i64 %i.cg, 1
  store i64 %i.ch, ptr %i.av, align 8, !tbaa !444
  br label %_ZN8nlohmann16json_abi_v3_11_36detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit

_ZN8nlohmann16json_abi_v3_11_36detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit: ; preds = %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i, %bb.s, %bb.t
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !735
  br label %bb.l, !llvm.loop !4201

.loopexit:                                        ; preds = %_ZN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  br label %bb.u

bb.u:                                             ; preds = %.loopexit, %bb.h, %bb.g, %_ZNSt6vectorIbSaIbEE8pop_backEv.exit
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN8nlohmann16json_abi_v3_11_36detail28json_sax_dom_callback_parserINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE3keyERSB_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.nlohmann::json_abi_v3_11_3::basic_json", align 8 ; 10 uses
  %3 = alloca %"class.nlohmann::json_abi_v3_11_3::basic_json", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  invoke void @_ZN8nlohmann16json_abi_v3_11_36detail20external_constructorILNS1_7value_tE3EE9constructINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES8_IhSaIhEEvEEEEvRT_RKNSJ_8string_tE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRS9_S9_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SH_EE5valueEiE4typeELi0EEEOT_.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.q, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn, %bb.q ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #41
  br label %common.resume

_ZN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRS9_S9_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SH_EE5valueEiE4typeELi0EEEOT_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !736
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !716
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 3
  %i.l = trunc i64 %i.k to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.l, ptr %i.a, align 4, !tbaa !385
  store i8 4, ptr %i.b, align 1, !tbaa !739
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !79
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRS9_S9_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SH_EE5valueEiE4typeELi0EEEOT_.exit
  invoke void @_ZSt25__throw_bad_function_callv() #44
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %_ZN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRS9_S9_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SH_EE5valueEiE4typeELi0EEEOT_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !83
  %i.r = invoke noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.e unwind label %bb.n, !inline_history !56 ; 3 uses

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !731  ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !732
  %.not.i = icmp eq ptr %i.t, %i.v
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %.sroa.2.0.copyload.i11.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8 ; 4 uses
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = add i32 %.sroa.2.0.copyload.i11.i, 1
  store i32 %i.w, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !733
  %i.x = icmp eq i32 %.sroa.2.0.copyload.i11.i, 63
  br i1 %i.x, label %bb.g, label %_ZNSt13_Bit_iteratorppEi.exit.i

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !733
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.y, ptr %i.s, align 8, !tbaa !731
  br label %_ZNSt13_Bit_iteratorppEi.exit.i

_ZNSt13_Bit_iteratorppEi.exit.i:                  ; preds = %bb.g, %bb.f
  %i.z = zext nneg i32 %.sroa.2.0.copyload.i11.i to i64
  %i.aa = shl nuw i64 1, %i.z                     ; 2 uses
  br i1 %i.r, label %_ZNSt6vectorIbSaIbEE9push_backEb.exit.thread, label %_ZNSt6vectorIbSaIbEE9push_backEb.exit.thread11

_ZNSt6vectorIbSaIbEE9push_backEb.exit.thread:     ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.ab = load i64, ptr %i.t, align 8, !tbaa !398
  %i.ac = or i64 %i.ab, %i.aa
  store i64 %i.ac, ptr %i.t, align 8, !tbaa !398
  br label %bb.i

_ZNSt6vectorIbSaIbEE9push_backEb.exit.thread11:   ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.ad = xor i64 %i.aa, -1
  %i.ae = load i64, ptr %i.t, align 8, !tbaa !398
  %i.af = and i64 %i.ae, %i.ad
  store i64 %i.af, ptr %i.t, align 8, !tbaa !398
  br label %_ZN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %i.ag, ptr %i.t, i32 %.sroa.2.0.copyload.i11.i, i1 noundef zeroext %i.r)
          to label %_ZNSt6vectorIbSaIbEE9push_backEb.exit unwind label %bb.n

_ZNSt6vectorIbSaIbEE9push_backEb.exit:            ; preds = %bb.h
  br i1 %i.r, label %bb.i, label %_ZN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit

bb.i:                                             ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit.thread, %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  %i.ah = load ptr, ptr %i.e, align 8, !tbaa !735
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !445
  %.not = icmp eq ptr %i.aj, null
  br i1 %.not, label %_ZN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 168
  invoke void @_ZN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2ERKSD_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.ak)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.al = load ptr, ptr %i.e, align 8, !tbaa !735
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !445
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !75
  %i.aq = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_11_310basic_jsonIS_St6vectorS5_blmdSaNS7_14adl_serializerES9_IhSaIhEEvEESt4lessIvESaISt4pairIKS5_SD_EEEixERSH_(ptr noundef nonnull align 8 dereferenceable(48) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.l unwind label %bb.o       ; 4 uses

bb.l:                                             ; preds = %bb.k
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !74  ; 2 uses
  %i.as = load i8, ptr %3, align 8, !tbaa !74
  store i8 %i.as, ptr %i.aq, align 8, !tbaa !74
  store i8 %i.ar, ptr %3, align 8, !tbaa !74
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.at, align 8, !tbaa !75
  %i.av = load i64, ptr %i.au, align 8, !tbaa !75
  store i64 %i.av, ptr %i.at, align 8, !tbaa !75
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.au, align 8, !tbaa !75
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.aq, ptr %i.aw, align 8, !tbaa !740
  invoke void @_ZN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.au, i8 noundef zeroext %i.ar) #39
          to label %_ZN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit unwind label %bb.m, !inline_history !76

bb.m:                                             ; preds = %bb.l
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #40, !inline_history !76
  unreachable

bb.n:                                             ; preds = %bb.h, %bb.d, %bb.c, %bb.j
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.o:                                             ; preds = %bb.k
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #41
  br label %bb.q

_ZN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit: ; preds = %bb.l, %_ZNSt6vectorIbSaIbEE9push_backEb.exit.thread11, %bb.i, %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bc = load i8, ptr %2, align 8, !tbaa !81
  invoke void @_ZN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, i8 noundef zeroext %i.bc) #39
          to label %_ZN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit10 unwind label %bb.p, !inline_history !76

bb.p:                                             ; preds = %_ZN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  call void @__clang_call_terminate(ptr %i.be) #40, !inline_history !76
  unreachable

_ZN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit10: ; preds = %_ZN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  ret i1 true

bb.q:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.o ], [ %i.az, %bb.n ]
  call void @_ZN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN8nlohmann16json_abi_v3_11_36detail28json_sax_dom_callback_parserINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE11start_arrayEm(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !736
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !716
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 3
  %i.l = trunc i64 %i.k to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.l, ptr %i.a, align 4, !tbaa !385
  store i8 2, ptr %i.b, align 1, !tbaa !739
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !79
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %bb.b, label %_ZNKSt8functionIFbiN8nlohmann16json_abi_v3_11_36detail13parse_event_tERNS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEclEiS3_SH_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt25__throw_bad_function_callv() #44
  unreachable

_ZNKSt8functionIFbiN8nlohmann16json_abi_v3_11_36detail13parse_event_tERNS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEclEiS3_SH_.exit: ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !83
  %i.s = call noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.p), !inline_history !56 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !731  ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !732
  %.not.i = icmp eq ptr %i.u, %i.w
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %.sroa.2.0.copyload.i11.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8 ; 4 uses
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZNKSt8functionIFbiN8nlohmann16json_abi_v3_11_36detail13parse_event_tERNS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEclEiS3_SH_.exit
  %i.x = add i32 %.sroa.2.0.copyload.i11.i, 1
  store i32 %i.x, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !733
  %i.y = icmp eq i32 %.sroa.2.0.copyload.i11.i, 63
  br i1 %i.y, label %bb.d, label %_ZNSt13_Bit_iteratorppEi.exit.i

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !733
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.z, ptr %i.t, align 8, !tbaa !731
  br label %_ZNSt13_Bit_iteratorppEi.exit.i

_ZNSt13_Bit_iteratorppEi.exit.i:                  ; preds = %bb.d, %bb.c
  %i.aa = zext nneg i32 %.sroa.2.0.copyload.i11.i to i64
  %i.ab = shl nuw i64 1, %i.aa                    ; 2 uses
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.ac = load i64, ptr %i.u, align 8, !tbaa !398
  %i.ad = or i64 %i.ac, %i.ab
  store i64 %i.ad, ptr %i.u, align 8, !tbaa !398
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

bb.f:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.ae = xor i64 %i.ab, -1
  %i.af = load i64, ptr %i.u, align 8, !tbaa !398
  %i.ag = and i64 %i.af, %i.ae
  store i64 %i.ag, ptr %i.u, align 8, !tbaa !398
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

bb.g:                                             ; preds = %_ZNKSt8functionIFbiN8nlohmann16json_abi_v3_11_36detail13parse_event_tERNS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEclEiS3_SH_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, ptr %i.u, i32 %.sroa.2.0.copyload.i11.i, i1 noundef zeroext %i.s)
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

_ZNSt6vectorIbSaIbEE9push_backEb.exit:            ; preds = %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  store i8 2, ptr %i.c, align 1, !tbaa !74
  %i.ai = call { i8, ptr } @_ZN8nlohmann16json_abi_v3_11_36detail28json_sax_dom_callback_parserINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12handle_valueINS1_7value_tEEESt4pairIbPSF_EOT_b(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.c, i1 noundef zeroext true)
  %i.aj = extractvalue { i8, ptr } %i.ai, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  %i.ak = load ptr, ptr %i.e, align 8, !tbaa !736 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !717
  %.not.i15 = icmp eq ptr %i.ak, %i.am
  br i1 %.not.i15, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !445
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.an, ptr %i.e, align 8, !tbaa !736
  br label %_ZNSt6vectorIPN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE9push_backERKSE_.exit

bb.i:                                             ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !716 ; 4 uses
  %i.ap = ptrtoint ptr %i.ak to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 6 uses
  %i.as = icmp eq i64 %i.ar, 9223372036854775800
  br i1 %i.as, label %bb.j, label %_ZNKSt6vectorIPN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.106) #44
  unreachable

_ZNKSt6vectorIPN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.at = ashr exact i64 %i.ar, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.at, i64 1)
  %i.au = add nsw i64 %.sroa.speculated.i.i.i, %i.at ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.at
  %i.aw = call i64 @llvm.umin.i64(i64 %i.au, i64 1152921504606846975)
  %i.ax = select i1 %i.av, i64 1152921504606846975, i64 %i.aw ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ax, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ay = shl nuw nsw i64 %i.ax, 3
  %i.az = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #45 ; 4 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 %i.ar ; 3 uses
  store ptr %i.aj, ptr %i.ba, align 8, !tbaa !445
  %i.bb = icmp sgt i64 %i.ar, 0
  br i1 %i.bb, label %bb.k, label %_ZNSt6vectorIPN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit16.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorIPN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.az, ptr align 8 %i.ao, i64 %i.ar, i1 false)
  br label %_ZNSt6vectorIPN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit16.i.i

_ZNSt6vectorIPN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit16.i.i: ; preds = %bb.k, %_ZNKSt6vectorIPN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE12_M_check_lenEmPKc.exit.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.not.i17.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE17_M_realloc_insertIJRKSE_EEEvN9__gnu_cxx17__normal_iteratorIPSE_SG_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIPN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.ar) #42
  br label %_ZNSt6vectorIPN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE17_M_realloc_insertIJRKSE_EEEvN9__gnu_cxx17__normal_iteratorIPSE_SG_EEDpOT_.exit.i

_ZNSt6vectorIPN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE17_M_realloc_insertIJRKSE_EEEvN9__gnu_cxx17__normal_iteratorIPSE_SG_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIPN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit16.i.i
  store ptr %i.az, ptr %i.d, align 8, !tbaa !716
  store ptr %i.bc, ptr %i.e, align 8, !tbaa !736
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ax
  store ptr %i.bd, ptr %i.al, align 8, !tbaa !717
  br label %_ZNSt6vectorIPN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE9push_backERKSE_.exit

_ZNSt6vectorIPN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE9push_backERKSE_.exit: ; preds = %bb.h, %_ZNSt6vectorIPN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE17_M_realloc_insertIJRKSE_EEEvN9__gnu_cxx17__normal_iteratorIPSE_SG_EEDpOT_.exit.i
  %i.be = phi ptr [ %i.ak, %bb.h ], [ %i.ba, %_ZNSt6vectorIPN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE17_M_realloc_insertIJRKSE_EEEvN9__gnu_cxx17__normal_iteratorIPSE_SG_EEDpOT_.exit.i ]
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !445 ; 2 uses
  %.not = icmp eq ptr %i.bf, null
  %.not12 = icmp eq i64 %1, -1
  %or.cond = or i1 %.not12, %.not
  br i1 %or.cond, label %.critedge, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIPN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE9push_backERKSE_.exit
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !436 ; 2 uses
  %i.bh = icmp ult i8 %i.bg, 3
  br i1 %i.bh, label %switch.lookup, label %_ZNK8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE8max_sizeEv.exit

switch.lookup:                                    ; preds = %bb.m
  %i.bi = zext nneg i8 %i.bg to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN8nlohmann16json_abi_v3_11_36detail19json_sax_dom_parserINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE11start_arrayEm, i64 %i.bi
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %_ZNK8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE8max_sizeEv.exit

_ZNK8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE8max_sizeEv.exit: ; preds = %bb.m, %switch.lookup
  %.0.i = phi i64 [ %switch.load, %switch.lookup ], [ 1, %bb.m ]
  %i.bj = icmp ugt i64 %1, %.0.i
  br i1 %i.bj, label %bb.n, label %.critedge, !prof !470

bb.n:                                             ; preds = %_ZNK8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE8max_sizeEv.exit
  %i.bk = call ptr @__cxa_allocate_exception(i64 32) #41 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  invoke void @_ZNSt7__cxx119to_stringEm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i64 noundef %1)
          to label %bb.o unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.thread

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN8nlohmann16json_abi_v3_11_36detail6concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA23_KcS8_EEET_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 1 dereferenceable(23) @.str.348, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.p unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.bl = load ptr, ptr %i.e, align 8, !tbaa !735
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !445
  invoke void @_ZN8nlohmann16json_abi_v3_11_36detail12out_of_range6createIPNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEETnNSt9enable_ifIXsr21is_basic_json_contextIT_EE5valueEiE4typeELi0EEES2_iRKSC_SJ_(ptr dead_on_unwind writable sret(%"class.nlohmann::json_abi_v3_11_3::detail::out_of_range") align 8 %i.bk, i32 noundef 408, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.bn)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @__cxa_throw(ptr %i.bk, ptr nonnull @_ZTIN8nlohmann16json_abi_v3_11_36detail12out_of_rangeE, ptr nonnull @_ZN8nlohmann16json_abi_v3_11_36detail9exceptionD2Ev) #44
          to label %bb.u unwind label %bb.r

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.thread: ; preds = %bb.n
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0 = phi i1 [ false, %bb.q ], [ true, %bb.p ]  ; 2 uses
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bq = load ptr, ptr %2, align 8, !tbaa !89    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.r
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !75
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bv = load ptr, ptr %3, align 8, !tbaa !89    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.o
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bz = load ptr, ptr %3, align 8, !tbaa !89    ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !75
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cd) #42
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ce = load i64, ptr %i.bw, align 8, !tbaa !75
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.cf) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  br i1 %.0, label %bb.s, label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  br i1 %.0, label %bb.s, label %bb.t

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.thread
  %.pn.pn24.ph = phi { ptr, i32 } [ %i.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.thread ], [ %i.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.thread ], [ %i.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %.pn.pn24 = phi { ptr, i32 } [ %i.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ], [ %i.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18 ], [ %.pn.pn24.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.bk) #41
  br label %bb.t

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16, %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %.pn.pn23 = phi { ptr, i32 } [ %.pn.pn24, %bb.s ], [ %i.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18 ], [ %i.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ]
  resume { ptr, i32 } %.pn.pn23

.critedge:                                        ; preds = %_ZNK8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE8max_sizeEv.exit, %_ZNSt6vectorIPN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISE_EE9push_backERKSE_.exit
  ret i1 true

bb.u:                                             ; preds = %bb.q
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN8nlohmann16json_abi_v3_11_36detail28json_sax_dom_callback_parserINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE9end_arrayEv(ptr noundef nonnull align 8 dereferenceable(184) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %1 = alloca %"class.nlohmann::json_abi_v3_11_3::basic_json", align 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !735  ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !445  ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %.critedge, label %bb.b

end_hunk_1
