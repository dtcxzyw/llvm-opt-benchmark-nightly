Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/io?download=true
inline.NumInlined: 17817
inline.NumDeleted: 4455
loop-unroll.NumCompletelyUnrolled: 46
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 47
loop-unroll.NumUnrolledNotLatch: 4
begin_hunk_0_@_ZN13proj_nlohmann6detail28json_sax_dom_callback_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12handle_valueIRdEESt4pairIbPSE_EOT_b:bb.a
bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt25__throw_bad_function_callv() #42
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !728
  %i.ad = invoke noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.f unwind label %bb.g, !inline_history !127

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.ad, label %.critedge, label %bb.q

bb.g:                                             ; preds = %bb.m, %bb.e, %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load i8, ptr %3, align 8, !tbaa !625
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i8 noundef zeroext %i.af) #41, !inline_history !112
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  resume { ptr, i32 } %i.ae

.critedge:                                        ; preds = %bb.b, %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !785
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !785 ; 2 uses
  %i.ak = icmp eq ptr %i.ah, %i.aj
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.critedge
  %i.al = load i8, ptr %3, align 8, !tbaa !660
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.an = load i64, ptr %i.n, align 8, !tbaa !166
  store i8 0, ptr %3, align 8, !tbaa !625
  store ptr null, ptr %i.n, align 8, !tbaa !166
  %i.ao = load ptr, ptr %0, align 8, !tbaa !790, !nonnull !222, !align !371 ; 3 uses
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !660 ; 2 uses
  store i8 %i.al, ptr %i.ao, align 8, !tbaa !660
  store i8 %i.ap, ptr %4, align 8, !tbaa !660
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i12 = load ptr, ptr %i.aq, align 8, !tbaa !166
  store i64 %i.an, ptr %i.aq, align 8, !tbaa !166
  store ptr %.sroa.0.0.copyload.i.i12, ptr %i.am, align 8, !tbaa !166
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.am, i8 noundef zeroext %i.ap) #41, !inline_history !112
  %i.ar = load ptr, ptr %0, align 8, !tbaa !790, !nonnull !222, !align !371
  br label %bb.q

bb.i:                                             ; preds = %.critedge
  %i.as = getelementptr inbounds i8, ptr %i.aj, i64 -8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !634 ; 3 uses
  %.not = icmp eq ptr %i.at, null
  br i1 %.not, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = load i8, ptr %i.at, align 8, !tbaa !625
  %i.av = icmp eq i8 %i.au, 2
  br i1 %i.av, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !166 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !632 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !635
  %.not.i.i13 = icmp eq ptr %i.az, %i.bb
  br i1 %.not.i.i13, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = load i8, ptr %3, align 8, !tbaa !660
  store i8 %i.bc, ptr %i.az, align 8, !tbaa !625
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.be = load i64, ptr %i.n, align 8, !tbaa !166
  store i64 %i.be, ptr %i.bd, align 8, !tbaa !166
  store i8 0, ptr %3, align 8, !tbaa !625
  store ptr null, ptr %i.n, align 8, !tbaa !166
  %i.bf = load ptr, ptr %i.ay, align 8, !tbaa !632
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store ptr %i.bg, ptr %i.ay, align 8, !tbaa !632
  br label %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE9push_backEOSC_.exit

bb.m:                                             ; preds = %bb.k
  invoke void @_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE17_M_realloc_insertIJSC_EEEvN9__gnu_cxx17__normal_iteratorIPSC_SE_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr %i.az, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE9push_backEOSC_.exit unwind label %bb.g, !inline_history !128

_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE9push_backEOSC_.exit: ; preds = %bb.l, %bb.m
  %i.bh = load ptr, ptr %i.ai, align 8, !tbaa !785
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !634
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !166
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !634
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -16
  br label %bb.q

bb.n:                                             ; preds = %bb.j
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.sroa.0.0.copyload.i.i15 = load ptr, ptr %i.bp, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i16 = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %.sroa.2.0.copyload.i.i17 = load i32, ptr %.sroa.2.0..sroa_idx.i.i16, align 8 ; 3 uses
  %i.bq = zext i32 %.sroa.2.0.copyload.i.i17 to i64
  %i.br = add nsw i64 %i.bq, -1                   ; 3 uses
  %i.bs = sdiv i64 %i.br, 64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i15, i64 %i.bs
  %i.bu = and i64 %i.br, -9223372036854775745
  %i.bv = icmp ugt i64 %i.bu, -9223372036854775808
  %storemerge.idx.i.i.i.i.i18 = select i1 %i.bv, i64 -8, i64 0
  %storemerge.i.i.i.i.i19 = getelementptr inbounds i8, ptr %i.bt, i64 %storemerge.idx.i.i.i.i.i18
  %i.bw = and i64 %i.br, 63
  %i.bx = shl nuw i64 1, %i.bw
  %i.by = load i64, ptr %storemerge.i.i.i.i.i19, align 8, !tbaa !165
  %i.bz = and i64 %i.bx, %i.by
  %.not33 = icmp eq i64 %i.bz, 0
  %i.ca = add i32 %.sroa.2.0.copyload.i.i17, -1
  store i32 %i.ca, ptr %.sroa.2.0..sroa_idx.i.i16, align 8, !tbaa !205
  %i.cb = icmp eq i32 %.sroa.2.0.copyload.i.i17, 0
  br i1 %i.cb, label %bb.o, label %_ZNSt6vectorIbSaIbEE8pop_backEv.exit

bb.o:                                             ; preds = %bb.n
  store i32 63, ptr %.sroa.2.0..sroa_idx.i.i16, align 8, !tbaa !205
  %i.cc = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i15, i64 -8
  store ptr %i.cc, ptr %i.bp, align 8, !tbaa !204
  br label %_ZNSt6vectorIbSaIbEE8pop_backEv.exit

_ZNSt6vectorIbSaIbEE8pop_backEv.exit:             ; preds = %bb.o, %bb.n
  br i1 %.not33, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIbSaIbEE8pop_backEv.exit
  %i.cd = load i8, ptr %3, align 8, !tbaa !660
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.cf = load i64, ptr %i.n, align 8, !tbaa !166
  store i8 0, ptr %3, align 8, !tbaa !625
  store ptr null, ptr %i.n, align 8, !tbaa !166
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !789 ; 3 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !660 ; 2 uses
  store i8 %i.cd, ptr %i.ch, align 1, !tbaa !660
  store i8 %i.ci, ptr %5, align 8, !tbaa !660
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i22 = load ptr, ptr %i.cj, align 8, !tbaa !166
  store i64 %i.cf, ptr %i.cj, align 8, !tbaa !166
  store ptr %.sroa.0.0.copyload.i.i22, ptr %i.ce, align 8, !tbaa !166
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, i8 noundef zeroext %i.ci) #41, !inline_history !112
  %i.ck = load ptr, ptr %i.cg, align 8, !tbaa !634
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIbSaIbEE8pop_backEv.exit, %bb.i, %bb.f, %bb.p, %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE9push_backEOSC_.exit, %bb.h
  %.sroa.031.0 = phi i8 [ 1, %bb.h ], [ 0, %bb.f ], [ 1, %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE9push_backEOSC_.exit ], [ 1, %bb.p ], [ 0, %bb.i ], [ 0, %_ZNSt6vectorIbSaIbEE8pop_backEv.exit ]
  %.sroa.8.0 = phi ptr [ %i.ar, %bb.h ], [ null, %bb.f ], [ %i.bo, %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE9push_backEOSC_.exit ], [ %i.ck, %bb.p ], [ null, %bb.i ], [ null, %_ZNSt6vectorIbSaIbEE8pop_backEv.exit ]
  %i.cl = load i8, ptr %3, align 8, !tbaa !625
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i8 noundef zeroext %i.cl) #41, !inline_history !112
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %bb.q
  %.sroa.031.1 = phi i8 [ %.sroa.031.0, %bb.q ], [ 0, %bb.a ]
  %.sroa.8.1 = phi ptr [ %.sroa.8.0, %bb.q ], [ null, %bb.a ]
  %.fca.0.insert = insertvalue { i8, ptr } poison, i8 %.sroa.031.1, 0
  %.fca.1.insert = insertvalue { i8, ptr } %.fca.0.insert, ptr %.sroa.8.1, 1
  ret { i8, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { i8, ptr } @_ZN13proj_nlohmann6detail28json_sax_dom_callback_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12handle_valueIRbEESt4pairIbPSE_EOT_b(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i1 noundef zeroext %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.proj_nlohmann::basic_json", align 8 ; 15 uses
  %4 = alloca %"class.proj_nlohmann::basic_json", align 8 ; 2 uses
  %5 = alloca %"class.proj_nlohmann::basic_json", align 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.c, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.2.0.copyload.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.d = zext i32 %.sroa.2.0.copyload.i.i to i64
  %i.e = add nsw i64 %i.d, -1                     ; 3 uses
  %i.f = sdiv i64 %i.e, 64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.f
  %i.h = and i64 %i.e, -9223372036854775745
  %i.i = icmp ugt i64 %i.h, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.i, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.g, i64 %storemerge.idx.i.i.i.i.i
  %i.j = and i64 %i.e, 63
  %i.k = shl nuw i64 1, %i.j
  %i.l = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !165
  %i.m = and i64 %i.k, %i.l
  %.not32 = icmp eq i64 %i.m, 0
  br i1 %.not32, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 9 uses
  %i.o = load i8, ptr %1, align 1, !tbaa !216, !range !221, !noundef !222
  %.sroa.0.0.insert.ext.i.i.i.i.i = zext nneg i8 %i.o to i64
  store i8 4, ptr %3, align 8, !tbaa !625
  store i64 %.sroa.0.0.insert.ext.i.i.i.i.i, ptr %i.n, align 8, !tbaa !166
  br i1 %2, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !784
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !766
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = lshr exact i64 %i.v, 3
  %i.x = trunc i64 %i.w to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.x, ptr %i.a, align 4, !tbaa !213
  store i8 5, ptr %i.b, align 1, !tbaa !788
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !662
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt25__throw_bad_function_callv() #42
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !728
  %i.ad = invoke noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.f unwind label %bb.g, !inline_history !127

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.ad, label %.critedge, label %bb.q

bb.g:                                             ; preds = %bb.m, %bb.e, %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load i8, ptr %3, align 8, !tbaa !625
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i8 noundef zeroext %i.af) #41, !inline_history !112
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  resume { ptr, i32 } %i.ae

.critedge:                                        ; preds = %bb.b, %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !785
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !785 ; 2 uses
  %i.ak = icmp eq ptr %i.ah, %i.aj
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.critedge
  %i.al = load i8, ptr %3, align 8, !tbaa !660
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.an = load i64, ptr %i.n, align 8, !tbaa !166
  store i8 0, ptr %3, align 8, !tbaa !625
  store ptr null, ptr %i.n, align 8, !tbaa !166
  %i.ao = load ptr, ptr %0, align 8, !tbaa !790, !nonnull !222, !align !371 ; 3 uses
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !660 ; 2 uses
  store i8 %i.al, ptr %i.ao, align 8, !tbaa !660
  store i8 %i.ap, ptr %4, align 8, !tbaa !660
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i12 = load ptr, ptr %i.aq, align 8, !tbaa !166
  store i64 %i.an, ptr %i.aq, align 8, !tbaa !166
  store ptr %.sroa.0.0.copyload.i.i12, ptr %i.am, align 8, !tbaa !166
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.am, i8 noundef zeroext %i.ap) #41, !inline_history !112
  %i.ar = load ptr, ptr %0, align 8, !tbaa !790, !nonnull !222, !align !371
  br label %bb.q

bb.i:                                             ; preds = %.critedge
  %i.as = getelementptr inbounds i8, ptr %i.aj, i64 -8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !634 ; 3 uses
  %.not = icmp eq ptr %i.at, null
  br i1 %.not, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = load i8, ptr %i.at, align 8, !tbaa !625
  %i.av = icmp eq i8 %i.au, 2
  br i1 %i.av, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !166 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !632 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !635
  %.not.i.i13 = icmp eq ptr %i.az, %i.bb
  br i1 %.not.i.i13, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = load i8, ptr %3, align 8, !tbaa !660
  store i8 %i.bc, ptr %i.az, align 8, !tbaa !625
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.be = load i64, ptr %i.n, align 8, !tbaa !166
  store i64 %i.be, ptr %i.bd, align 8, !tbaa !166
  store i8 0, ptr %3, align 8, !tbaa !625
  store ptr null, ptr %i.n, align 8, !tbaa !166
  %i.bf = load ptr, ptr %i.ay, align 8, !tbaa !632
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store ptr %i.bg, ptr %i.ay, align 8, !tbaa !632
  br label %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE9push_backEOSC_.exit

bb.m:                                             ; preds = %bb.k
  invoke void @_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE17_M_realloc_insertIJSC_EEEvN9__gnu_cxx17__normal_iteratorIPSC_SE_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr %i.az, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE9push_backEOSC_.exit unwind label %bb.g, !inline_history !128

_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE9push_backEOSC_.exit: ; preds = %bb.l, %bb.m
  %i.bh = load ptr, ptr %i.ai, align 8, !tbaa !785
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !634
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !166
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !634
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -16
  br label %bb.q

bb.n:                                             ; preds = %bb.j
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.sroa.0.0.copyload.i.i15 = load ptr, ptr %i.bp, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i16 = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %.sroa.2.0.copyload.i.i17 = load i32, ptr %.sroa.2.0..sroa_idx.i.i16, align 8 ; 3 uses
  %i.bq = zext i32 %.sroa.2.0.copyload.i.i17 to i64
  %i.br = add nsw i64 %i.bq, -1                   ; 3 uses
  %i.bs = sdiv i64 %i.br, 64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i15, i64 %i.bs
  %i.bu = and i64 %i.br, -9223372036854775745
  %i.bv = icmp ugt i64 %i.bu, -9223372036854775808
  %storemerge.idx.i.i.i.i.i18 = select i1 %i.bv, i64 -8, i64 0
  %storemerge.i.i.i.i.i19 = getelementptr inbounds i8, ptr %i.bt, i64 %storemerge.idx.i.i.i.i.i18
  %i.bw = and i64 %i.br, 63
  %i.bx = shl nuw i64 1, %i.bw
  %i.by = load i64, ptr %storemerge.i.i.i.i.i19, align 8, !tbaa !165
  %i.bz = and i64 %i.bx, %i.by
  %.not33 = icmp eq i64 %i.bz, 0
  %i.ca = add i32 %.sroa.2.0.copyload.i.i17, -1
  store i32 %i.ca, ptr %.sroa.2.0..sroa_idx.i.i16, align 8, !tbaa !205
  %i.cb = icmp eq i32 %.sroa.2.0.copyload.i.i17, 0
  br i1 %i.cb, label %bb.o, label %_ZNSt6vectorIbSaIbEE8pop_backEv.exit

bb.o:                                             ; preds = %bb.n
  store i32 63, ptr %.sroa.2.0..sroa_idx.i.i16, align 8, !tbaa !205
  %i.cc = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i15, i64 -8
  store ptr %i.cc, ptr %i.bp, align 8, !tbaa !204
  br label %_ZNSt6vectorIbSaIbEE8pop_backEv.exit

_ZNSt6vectorIbSaIbEE8pop_backEv.exit:             ; preds = %bb.o, %bb.n
  br i1 %.not33, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIbSaIbEE8pop_backEv.exit
  %i.cd = load i8, ptr %3, align 8, !tbaa !660
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.cf = load i64, ptr %i.n, align 8, !tbaa !166
  store i8 0, ptr %3, align 8, !tbaa !625
  store ptr null, ptr %i.n, align 8, !tbaa !166
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !789 ; 3 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !660 ; 2 uses
  store i8 %i.cd, ptr %i.ch, align 1, !tbaa !660
  store i8 %i.ci, ptr %5, align 8, !tbaa !660
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i22 = load ptr, ptr %i.cj, align 8, !tbaa !166
  store i64 %i.cf, ptr %i.cj, align 8, !tbaa !166
  store ptr %.sroa.0.0.copyload.i.i22, ptr %i.ce, align 8, !tbaa !166
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, i8 noundef zeroext %i.ci) #41, !inline_history !112
  %i.ck = load ptr, ptr %i.cg, align 8, !tbaa !634
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIbSaIbEE8pop_backEv.exit, %bb.i, %bb.f, %bb.p, %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE9push_backEOSC_.exit, %bb.h
  %.sroa.031.0 = phi i8 [ 1, %bb.h ], [ 0, %bb.f ], [ 1, %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE9push_backEOSC_.exit ], [ 1, %bb.p ], [ 0, %bb.i ], [ 0, %_ZNSt6vectorIbSaIbEE8pop_backEv.exit ]
  %.sroa.8.0 = phi ptr [ %i.ar, %bb.h ], [ null, %bb.f ], [ %i.bo, %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE9push_backEOSC_.exit ], [ %i.ck, %bb.p ], [ null, %bb.i ], [ null, %_ZNSt6vectorIbSaIbEE8pop_backEv.exit ]
  %i.cl = load i8, ptr %3, align 8, !tbaa !625
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i8 noundef zeroext %i.cl) #41, !inline_history !112
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %bb.q
  %.sroa.031.1 = phi i8 [ %.sroa.031.0, %bb.q ], [ 0, %bb.a ]
  %.sroa.8.1 = phi ptr [ %.sroa.8.0, %bb.q ], [ null, %bb.a ]
  %.fca.0.insert = insertvalue { i8, ptr } poison, i8 %.sroa.031.1, 0
  %.fca.1.insert = insertvalue { i8, ptr } %.fca.0.insert, ptr %.sroa.8.1, 1
  ret { i8, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { i8, ptr } @_ZN13proj_nlohmann6detail28json_sax_dom_callback_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12handle_valueIDnEESt4pairIbPSE_EOT_b(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.proj_nlohmann::basic_json", align 8 ; 15 uses
  %4 = alloca %"class.proj_nlohmann::basic_json", align 8 ; 2 uses
  %5 = alloca %"class.proj_nlohmann::basic_json", align 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
end_hunk_0
begin_hunk_1_@_ZN13proj_nlohmann6detail19json_sax_dom_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12handle_valueIRdEEPSE_OT_:bb.a
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  store i64 0, ptr %i.v, align 8
  %i.w = load double, ptr %1, align 8, !tbaa !242
  store i8 7, ptr %i.s, align 8, !tbaa !625
  store double %i.w, ptr %i.v, align 8, !tbaa !166
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !632
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.y, ptr %i.r, align 8, !tbaa !632
  br label %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE12emplace_backIJRdEEERSC_DpOT_.exit

bb.f:                                             ; preds = %bb.d
  tail call void @_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE17_M_realloc_insertIJRdEEEvN9__gnu_cxx17__normal_iteratorIPSC_SE_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr %i.s, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE12emplace_backIJRdEEERSC_DpOT_.exit

_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE12emplace_backIJRdEEERSC_DpOT_.exit: ; preds = %bb.e, %bb.f
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !785
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !634
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !166
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !634
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -16
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ai = load double, ptr %1, align 8, !tbaa !242
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !786 ; 3 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !660 ; 2 uses
  store i8 7, ptr %i.ak, align 1, !tbaa !660
  store i8 %i.al, ptr %3, align 8, !tbaa !660
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i5 = load ptr, ptr %i.am, align 8, !tbaa !166
  store double %i.ai, ptr %i.am, align 8, !tbaa !166
  store ptr %.sroa.0.0.copyload.i.i5, ptr %i.ah, align 8, !tbaa !166
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, i8 noundef zeroext %i.al) #41, !inline_history !112
  %i.an = load ptr, ptr %i.aj, align 8, !tbaa !786
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE12emplace_backIJRdEEERSC_DpOT_.exit, %bb.b
  %.0 = phi ptr [ %i.k, %bb.b ], [ %i.ag, %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE12emplace_backIJRdEEERSC_DpOT_.exit ], [ %i.an, %bb.g ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE17_M_realloc_insertIJRdEEEvN9__gnu_cxx17__normal_iteratorIPSC_SE_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !632  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !633    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.692) #42
  unreachable

_ZNKSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #43 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load double, ptr %2, align 8, !tbaa !242
  store i8 7, ptr %i.q, align 8, !tbaa !625
  store double %i.s, ptr %i.r, align 8, !tbaa !166
  %.not.i4.i.i = icmp eq ptr %i.c, %1
  br i1 %.not.i4.i.i, label %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE11_S_relocateEPSC_SF_SF_RSD_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNKSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i
  %.0.i6.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %i.p, %_ZNKSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.09.i5.i.i = phi ptr [ %i.x, %.lr.ph.i.i ], [ %i.c, %_ZNKSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2399)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2400)
  %i.t = load i8, ptr %.09.i5.i.i, align 1, !tbaa !660, !alias.scope !2400, !noalias !2399
  store i8 %i.t, ptr %.0.i6.i.i, align 8, !tbaa !625, !alias.scope !2399, !noalias !2400
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i6.i.i, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %.09.i5.i.i, i64 8 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !166, !alias.scope !2400, !noalias !2399
  store i64 %i.w, ptr %i.u, align 8, !tbaa !166, !alias.scope !2399, !noalias !2400
  store i8 0, ptr %.09.i5.i.i, align 8, !tbaa !625, !alias.scope !2400, !noalias !2399
  store ptr null, ptr %i.v, align 8, !tbaa !166, !alias.scope !2400, !noalias !2399
  tail call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.v, i8 noundef zeroext 0) #41, !noalias !2399, !inline_history !136
  %i.x = getelementptr inbounds nuw i8, ptr %.09.i5.i.i, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i6.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.x, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE11_S_relocateEPSC_SF_SF_RSD_.exit, label %.lr.ph.i.i, !llvm.loop !131

_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE11_S_relocateEPSC_SF_SF_RSD_.exit: ; preds = %.lr.ph.i.i, %_ZNKSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE12_M_check_lenEmPKc.exit
  %.0.i.lcssa.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE12_M_check_lenEmPKc.exit ], [ %i.y, %.lr.ph.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i.i, i64 16 ; 2 uses
  %.not.i4.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not.i4.i.i16, label %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE11_S_relocateEPSC_SF_SF_RSD_.exit22, label %.lr.ph.i.i17

.lr.ph.i.i17:                                     ; preds = %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE11_S_relocateEPSC_SF_SF_RSD_.exit, %.lr.ph.i.i17
  %.0.i6.i.i18 = phi ptr [ %i.af, %.lr.ph.i.i17 ], [ %i.z, %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE11_S_relocateEPSC_SF_SF_RSD_.exit ] ; 3 uses
  %.09.i5.i.i19 = phi ptr [ %i.ae, %.lr.ph.i.i17 ], [ %1, %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE11_S_relocateEPSC_SF_SF_RSD_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2402)
  %i.aa = load i8, ptr %.09.i5.i.i19, align 1, !tbaa !660, !alias.scope !2402, !noalias !2401
  store i8 %i.aa, ptr %.0.i6.i.i18, align 8, !tbaa !625, !alias.scope !2401, !noalias !2402
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i6.i.i18, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.09.i5.i.i19, i64 8 ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !166, !alias.scope !2402, !noalias !2401
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !166, !alias.scope !2401, !noalias !2402
  store i8 0, ptr %.09.i5.i.i19, align 8, !tbaa !625, !alias.scope !2402, !noalias !2401
  store ptr null, ptr %i.ac, align 8, !tbaa !166, !alias.scope !2402, !noalias !2401
  tail call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i8 noundef zeroext 0) #41, !noalias !2401, !inline_history !136
  %i.ae = getelementptr inbounds nuw i8, ptr %.09.i5.i.i19, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i6.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ae, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE11_S_relocateEPSC_SF_SF_RSD_.exit22, label %.lr.ph.i.i17, !llvm.loop !131

_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE11_S_relocateEPSC_SF_SF_RSD_.exit22: ; preds = %.lr.ph.i.i17, %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE11_S_relocateEPSC_SF_SF_RSD_.exit
  %.0.i.lcssa.i.i21 = phi ptr [ %i.z, %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE11_S_relocateEPSC_SF_SF_RSD_.exit ], [ %i.af, %.lr.ph.i.i17 ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISD_EE13_M_deallocateEPSD_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE11_S_relocateEPSC_SF_SF_RSD_.exit22
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !635
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.ai, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.aj) #44
  br label %_ZNSt12_Vector_baseIN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISD_EE13_M_deallocateEPSD_m.exit

_ZNSt12_Vector_baseIN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISD_EE13_M_deallocateEPSD_m.exit: ; preds = %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE11_S_relocateEPSC_SF_SF_RSD_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !633
  store ptr %.0.i.lcssa.i.i21, ptr %i.a, align 8, !tbaa !632
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ak, ptr %i.ag, align 8, !tbaa !635
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZN13proj_nlohmann6detail19json_sax_dom_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12handle_valueIRbEEPSE_OT_(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %2 = alloca %"class.proj_nlohmann::basic_json", align 8 ; 2 uses
  %3 = alloca %"class.proj_nlohmann::basic_json", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !785
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !785  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = load i8, ptr %1, align 1, !tbaa !216, !range !221, !noundef !222
  %.sroa.0.0.insert.ext.i.i.i.i.i = zext nneg i8 %i.g to i64
  %i.h = load ptr, ptr %0, align 8, !tbaa !794, !nonnull !222, !align !371 ; 3 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !660   ; 2 uses
  store i8 4, ptr %i.h, align 8, !tbaa !660
  store i8 %i.i, ptr %2, align 8, !tbaa !660
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.j, align 8, !tbaa !166
  store i64 %.sroa.0.0.insert.ext.i.i.i.i.i, ptr %i.j, align 8, !tbaa !166
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.f, align 8, !tbaa !166
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i8 noundef zeroext %i.i) #41, !inline_history !112
  %i.k = load ptr, ptr %0, align 8, !tbaa !794, !nonnull !222, !align !371
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !634  ; 2 uses
  %i.n = load i8, ptr %i.m, align 8, !tbaa !625
  %i.o = icmp eq i8 %i.n, 2
  br i1 %i.o, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !166  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !632  ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !635
  %.not.i = icmp eq ptr %i.s, %i.u
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  store i64 0, ptr %i.v, align 8
  %i.w = load i8, ptr %1, align 1, !tbaa !216, !range !221, !noundef !222
  %.sroa.0.0.insert.ext.i.i.i.i.i.i = zext nneg i8 %i.w to i64
  store i8 4, ptr %i.s, align 8, !tbaa !625
  store i64 %.sroa.0.0.insert.ext.i.i.i.i.i.i, ptr %i.v, align 8, !tbaa !166
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !632
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.y, ptr %i.r, align 8, !tbaa !632
  br label %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE12emplace_backIJRbEEERSC_DpOT_.exit

bb.f:                                             ; preds = %bb.d
  tail call void @_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE17_M_realloc_insertIJRbEEEvN9__gnu_cxx17__normal_iteratorIPSC_SE_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr %i.s, ptr noundef nonnull align 1 dereferenceable(1) %1)
  br label %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE12emplace_backIJRbEEERSC_DpOT_.exit

_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE12emplace_backIJRbEEERSC_DpOT_.exit: ; preds = %bb.e, %bb.f
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !785
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !634
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !166
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !634
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -16
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ai = load i8, ptr %1, align 1, !tbaa !216, !range !221, !noundef !222
  %.sroa.0.0.insert.ext.i.i.i.i.i5 = zext nneg i8 %i.ai to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !786 ; 3 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !660 ; 2 uses
  store i8 4, ptr %i.ak, align 1, !tbaa !660
  store i8 %i.al, ptr %3, align 8, !tbaa !660
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i6 = load ptr, ptr %i.am, align 8, !tbaa !166
  store i64 %.sroa.0.0.insert.ext.i.i.i.i.i5, ptr %i.am, align 8, !tbaa !166
  store ptr %.sroa.0.0.copyload.i.i6, ptr %i.ah, align 8, !tbaa !166
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, i8 noundef zeroext %i.al) #41, !inline_history !112
  %i.an = load ptr, ptr %i.aj, align 8, !tbaa !786
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE12emplace_backIJRbEEERSC_DpOT_.exit, %bb.b
  %.0 = phi ptr [ %i.k, %bb.b ], [ %i.ag, %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE12emplace_backIJRbEEERSC_DpOT_.exit ], [ %i.an, %bb.g ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE17_M_realloc_insertIJRbEEEvN9__gnu_cxx17__normal_iteratorIPSC_SE_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !632  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !633    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.692) #42
  unreachable

_ZNKSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #43 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i8, ptr %2, align 1, !tbaa !216, !range !221, !noundef !222
  %.sroa.0.0.insert.ext.i.i.i.i.i = zext nneg i8 %i.s to i64
  store i8 4, ptr %i.q, align 8, !tbaa !625
  store i64 %.sroa.0.0.insert.ext.i.i.i.i.i, ptr %i.r, align 8, !tbaa !166
  %.not.i4.i.i = icmp eq ptr %i.c, %1
  br i1 %.not.i4.i.i, label %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE11_S_relocateEPSC_SF_SF_RSD_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNKSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i
  %.0.i6.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %i.p, %_ZNKSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.09.i5.i.i = phi ptr [ %i.x, %.lr.ph.i.i ], [ %i.c, %_ZNKSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2409)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2410)
  %i.t = load i8, ptr %.09.i5.i.i, align 1, !tbaa !660, !alias.scope !2410, !noalias !2409
  store i8 %i.t, ptr %.0.i6.i.i, align 8, !tbaa !625, !alias.scope !2409, !noalias !2410
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i6.i.i, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %.09.i5.i.i, i64 8 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !166, !alias.scope !2410, !noalias !2409
  store i64 %i.w, ptr %i.u, align 8, !tbaa !166, !alias.scope !2409, !noalias !2410
  store i8 0, ptr %.09.i5.i.i, align 8, !tbaa !625, !alias.scope !2410, !noalias !2409
  store ptr null, ptr %i.v, align 8, !tbaa !166, !alias.scope !2410, !noalias !2409
  tail call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.v, i8 noundef zeroext 0) #41, !noalias !2409, !inline_history !136
  %i.x = getelementptr inbounds nuw i8, ptr %.09.i5.i.i, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i6.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.x, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE11_S_relocateEPSC_SF_SF_RSD_.exit, label %.lr.ph.i.i, !llvm.loop !131

_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE11_S_relocateEPSC_SF_SF_RSD_.exit: ; preds = %.lr.ph.i.i, %_ZNKSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE12_M_check_lenEmPKc.exit
  %.0.i.lcssa.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE12_M_check_lenEmPKc.exit ], [ %i.y, %.lr.ph.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i.i, i64 16 ; 2 uses
  %.not.i4.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not.i4.i.i16, label %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE11_S_relocateEPSC_SF_SF_RSD_.exit22, label %.lr.ph.i.i17

.lr.ph.i.i17:                                     ; preds = %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE11_S_relocateEPSC_SF_SF_RSD_.exit, %.lr.ph.i.i17
  %.0.i6.i.i18 = phi ptr [ %i.af, %.lr.ph.i.i17 ], [ %i.z, %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE11_S_relocateEPSC_SF_SF_RSD_.exit ] ; 3 uses
  %.09.i5.i.i19 = phi ptr [ %i.ae, %.lr.ph.i.i17 ], [ %1, %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE11_S_relocateEPSC_SF_SF_RSD_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2411)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2412)
  %i.aa = load i8, ptr %.09.i5.i.i19, align 1, !tbaa !660, !alias.scope !2412, !noalias !2411
  store i8 %i.aa, ptr %.0.i6.i.i18, align 8, !tbaa !625, !alias.scope !2411, !noalias !2412
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i6.i.i18, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.09.i5.i.i19, i64 8 ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !166, !alias.scope !2412, !noalias !2411
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !166, !alias.scope !2411, !noalias !2412
  store i8 0, ptr %.09.i5.i.i19, align 8, !tbaa !625, !alias.scope !2412, !noalias !2411
  store ptr null, ptr %i.ac, align 8, !tbaa !166, !alias.scope !2412, !noalias !2411
  tail call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i8 noundef zeroext 0) #41, !noalias !2411, !inline_history !136
  %i.ae = getelementptr inbounds nuw i8, ptr %.09.i5.i.i19, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i6.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ae, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE11_S_relocateEPSC_SF_SF_RSD_.exit22, label %.lr.ph.i.i17, !llvm.loop !131

_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE11_S_relocateEPSC_SF_SF_RSD_.exit22: ; preds = %.lr.ph.i.i17, %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE11_S_relocateEPSC_SF_SF_RSD_.exit
  %.0.i.lcssa.i.i21 = phi ptr [ %i.z, %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE11_S_relocateEPSC_SF_SF_RSD_.exit ], [ %i.af, %.lr.ph.i.i17 ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISD_EE13_M_deallocateEPSD_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE11_S_relocateEPSC_SF_SF_RSD_.exit22
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !635
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.ai, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.aj) #44
  br label %_ZNSt12_Vector_baseIN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISD_EE13_M_deallocateEPSD_m.exit

_ZNSt12_Vector_baseIN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISD_EE13_M_deallocateEPSD_m.exit: ; preds = %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE11_S_relocateEPSC_SF_SF_RSD_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !633
  store ptr %.0.i.lcssa.i.i21, ptr %i.a, align 8, !tbaa !632
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ak, ptr %i.ag, align 8, !tbaa !635
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZN13proj_nlohmann6detail19json_sax_dom_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12handle_valueIDnEEPSE_OT_(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.proj_nlohmann::basic_json", align 8 ; 2 uses
  %3 = alloca %"class.proj_nlohmann::basic_json", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !785
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !785  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !794, !nonnull !222, !align !371 ; 3 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !660   ; 2 uses
  store i8 0, ptr %i.g, align 8, !tbaa !660
  store i8 %i.h, ptr %2, align 8, !tbaa !660
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.i, align 8, !tbaa !166
  store i64 0, ptr %i.i, align 8, !tbaa !166
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.f, align 8, !tbaa !166
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i8 noundef zeroext %i.h) #41, !inline_history !112
  %i.j = load ptr, ptr %0, align 8, !tbaa !794, !nonnull !222, !align !371
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !634  ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !625
  %i.n = icmp eq i8 %i.m, 2
  br i1 %i.n, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !166  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !632  ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !635
  %.not.i = icmp eq ptr %i.r, %i.t
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %i.r, align 8, !tbaa !625
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr null, ptr %i.u, align 8, !tbaa !166
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !632
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %i.w, ptr %i.q, align 8, !tbaa !632
  br label %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE12emplace_backIJDnEEERSC_DpOT_.exit

bb.f:                                             ; preds = %bb.d
  tail call void @_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE17_M_realloc_insertIJDnEEEvN9__gnu_cxx17__normal_iteratorIPSC_SE_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr %i.r, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE12emplace_backIJDnEEERSC_DpOT_.exit

_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE12emplace_backIJDnEEERSC_DpOT_.exit: ; preds = %bb.e, %bb.f
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !785
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !634
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !166
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !634
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -16
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !786 ; 3 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !660 ; 2 uses
  store i8 0, ptr %i.ah, align 1, !tbaa !660
  store i8 %i.ai, ptr %3, align 8, !tbaa !660
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i3 = load ptr, ptr %i.aj, align 8, !tbaa !166
  store i64 0, ptr %i.aj, align 8, !tbaa !166
  store ptr %.sroa.0.0.copyload.i.i3, ptr %i.af, align 8, !tbaa !166
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.af, i8 noundef zeroext %i.ai) #41, !inline_history !112
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !786
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE12emplace_backIJDnEEERSC_DpOT_.exit, %bb.b
  %.0 = phi ptr [ %i.j, %bb.b ], [ %i.ae, %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE12emplace_backIJDnEEERSC_DpOT_.exit ], [ %i.ak, %bb.g ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE17_M_realloc_insertIJDnEEEvN9__gnu_cxx17__normal_iteratorIPSC_SE_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !632  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !633    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.692) #42
  unreachable

_ZNKSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #43 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  store i8 0, ptr %i.q, align 8, !tbaa !625
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr null, ptr %i.r, align 8, !tbaa !166
  %.not.i4.i.i = icmp eq ptr %i.c, %1
  br i1 %.not.i4.i.i, label %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE11_S_relocateEPSC_SF_SF_RSD_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNKSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i
  %.0.i6.i.i = phi ptr [ %i.x, %.lr.ph.i.i ], [ %i.p, %_ZNKSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.09.i5.i.i = phi ptr [ %i.w, %.lr.ph.i.i ], [ %i.c, %_ZNKSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2419)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2420)
  %i.s = load i8, ptr %.09.i5.i.i, align 1, !tbaa !660, !alias.scope !2420, !noalias !2419
  store i8 %i.s, ptr %.0.i6.i.i, align 8, !tbaa !625, !alias.scope !2419, !noalias !2420
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i6.i.i, i64 8
end_hunk_1
