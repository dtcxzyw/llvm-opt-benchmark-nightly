Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/node_hash_map_test?download=true
inline.NumInlined: 21966
inline.NumDeleted: 5252
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 58
begin_hunk_0_@_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052613node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_NS3_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEE18DescribeNegationToEPSo:bb.a
  br label %common.resume

_ZNK7testing8internal11MatcherBaseIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EE18DescribeNegationToEPSo.exit: ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !411
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !415
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull %1, i1 noundef zeroext true), !inline_history !425
  %i.bu = add i64 %.017, 1                        ; 3 uses
  %i.bv = load ptr, ptr %i.b, align 8, !tbaa !405
  %i.bw = load ptr, ptr %i.a, align 8, !tbaa !404
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = sdiv exact i64 %i.bz, 24                ; 2 uses
  %i.cb = icmp ult i64 %i.bu, %i.ca
  br i1 %i.cb, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EE18DescribeNegationToEPSo.exit
  %i.cc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.243, i64 noundef 5) ; 0 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !405
  %.pre18 = load ptr, ptr %i.a, align 8, !tbaa !404
  %.pre19 = ptrtoint ptr %.pre to i64
  %.pre20 = ptrtoint ptr %.pre18 to i64
  %.pre22 = sub i64 %.pre19, %.pre20
  %.pre24 = sdiv exact i64 %.pre22, 24
  br label %bb.k

bb.k:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EE18DescribeNegationToEPSo.exit, %bb.j
  %.pre-phi25 = phi i64 [ %i.ca, %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EE18DescribeNegationToEPSo.exit ], [ %.pre24, %bb.j ]
  %.not = icmp eq i64 %i.bu, %.pre-phi25
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !2450

.loopexit:                                        ; preds = %bb.k, %_ZN7testing7MessageD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052613node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_NS3_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEE15MatchAndExplainESK_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.testing::Message", align 8  ; 9 uses
  %6 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %7 = alloca %"class.testing::internal::DummyMatchResultListener", align 8 ; 6 uses
  %8 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %9 = alloca %"class.std::vector", align 8       ; 13 uses
  %10 = alloca %"class.testing::StringMatchResultListener", align 8 ; 19 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 15 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !241
  %i.c = icmp ne ptr %i.b, null                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !405  ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !404  ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24                  ; 7 uses
  %i.l = icmp ugt i64 %i.k, 288230376151711743
  br i1 %i.l, label %.noexc, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.212) #35
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %.loopexit209

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.m = shl nuw nsw i64 %i.k, 5
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #38 ; 4 uses
  store ptr %i.n, ptr %9, align 8, !tbaa !100
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !102
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.prol ], [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i.prol ], [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.q, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !90
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !93
  store i8 0, ptr %i.q, align 8, !tbaa !92
  %i.s = add nsw i64 %.057.i.i.i.i.i.prol, -1     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !2452

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  %.lcssa466.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.s, %.lr.ph.i.i.i.i.i.prol ]
  %i.u = icmp ult i64 %i.k, 4
  br i1 %i.u, label %.loopexit209, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.v, ptr %.08.i.i.i.i.i, align 8, !tbaa !90
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !93
  store i8 0, ptr %i.v, align 8, !tbaa !92
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !90
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.z, align 8, !tbaa !93
  store i8 0, ptr %i.y, align 8, !tbaa !92
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !90
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.ac, align 8, !tbaa !93
  store i8 0, ptr %i.ab, align 8, !tbaa !92
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !90
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.af, align 8, !tbaa !93
  store i8 0, ptr %i.ae, align 8, !tbaa !92
  %i.ag = add nsw i64 %.057.i.i.i.i.i, -4         ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit209, label %.lr.ph.i.i.i.i.i, !llvm.loop !2453

.loopexit209:                                     ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa466.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ah, %.lr.ph.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ai, align 8, !tbaa !101
  %i.aj = load i64, ptr %1, align 8               ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.aj, 131072
  br i1 %.not.i.i.i, label %._crit_edge, label %bb.b, !prof !157

bb.b:                                             ; preds = %.loopexit209
  %i.ak = and i64 %i.aj, 254
  %i.al = icmp eq i64 %i.ak, 0
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.al, label %.lr.ph, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.am, align 8, !tbaa !92, !nonnull !84, !noundef !84 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.an, align 8, !tbaa !92 ; 2 uses
  %i.ao = load i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, align 1, !tbaa !167
  %i.ap = icmp slt i8 %i.ao, -1
  br i1 %i.ap, label %.lr.ph.i.i.i, label %.lr.ph

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %i.aq = phi ptr [ %i.at, %.lr.ph.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.c ]
  %i.ar = phi ptr [ %i.as, %.lr.ph.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i.i, %bb.c ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %i.au = load i8, ptr %i.as, align 1, !tbaa !167
  %i.av = icmp slt i8 %i.au, -1
  br i1 %i.av, label %.lr.ph.i.i.i, label %.lr.ph, !llvm.loop !30

.lr.ph:                                           ; preds = %.lr.ph.i.i.i, %bb.b, %bb.c
  %.sroa.6.0.i.i.ph = phi ptr [ %i.am, %bb.b ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.c ], [ %i.at, %.lr.ph.i.i.i ]
  %.sroa.0.0.i.i.ph = phi ptr [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %bb.b ], [ %.sroa.0.0.copyload.i.i.i.i.i, %bb.c ], [ %i.as, %.lr.ph.i.i.i ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 12 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  %i.bg = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bi = getelementptr i8, ptr %i.bg, i64 -24
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bp = getelementptr i8, ptr %i.bn, i64 -24
  %i.bq = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.br = getelementptr inbounds nuw i8, ptr %10, i64 144
  %i.bs = load ptr, ptr %i.e, align 8, !tbaa !405
  %i.bt = load ptr, ptr %i.d, align 8, !tbaa !404 ; 2 uses
  %.not434.not = icmp eq ptr %i.bs, %i.bt
  br i1 %.not434.not, label %.lr.ph268.preheader, label %.lr.ph439.preheader

.lr.ph439.preheader:                              ; preds = %.lr.ph
  %14 = load ptr, ptr %9, align 8
  br label %.lr.ph439

.lr.ph439:                                        ; preds = %.lr.ph439.preheader, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJEE14const_iteratorppEv.exit
  %i.bu = phi ptr [ %i.fc, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJEE14const_iteratorppEv.exit ], [ %i.bt, %.lr.ph439.preheader ]
  %.sroa.14.0244437 = phi ptr [ %.sroa.14.2, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJEE14const_iteratorppEv.exit ], [ %.sroa.6.0.i.i.ph, %.lr.ph439.preheader ] ; 3 uses
  %.sroa.0175.0245436 = phi ptr [ %.sroa.0175.2, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJEE14const_iteratorppEv.exit ], [ %.sroa.0.0.i.i.ph, %.lr.ph439.preheader ] ; 3 uses
  %storemerge246435 = phi i64 [ %i.fa, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJEE14const_iteratorppEv.exit ], [ 0, %.lr.ph439.preheader ] ; 6 uses
  br i1 %i.c, label %bb.d, label %bb.u

bb.d:                                             ; preds = %.lr.ph439
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !241
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %10, align 8, !tbaa !104
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.ax)
          to label %bb.e unwind label %bb.r

bb.e:                                             ; preds = %bb.d
  %i.bv = load ptr, ptr %i.d, align 8, !tbaa !404
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %i.bv, i64 %storemerge246435 ; 2 uses
  %i.bx = load ptr, ptr %.sroa.14.0244437, align 8, !tbaa !388
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !411
  %i.ca = icmp ne ptr %i.bz, null
  %i.cb = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.ca)
          to label %.noexc73 unwind label %bb.s

.noexc73:                                         ; preds = %bb.e
  br i1 %i.cb, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.noexc73
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef 3, ptr noundef nonnull @.str.180, i32 noundef 234)
          to label %.noexc74 unwind label %bb.s

.noexc74:                                         ; preds = %bb.f
  %i.cc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.181, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc74
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br label %bb.h

bb.g:                                             ; preds = %.noexc74
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br label %.body

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc73
  %i.ce = load ptr, ptr %i.by, align 8, !tbaa !411
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !426
  %i.cg = invoke noundef zeroext i1 %i.cf(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, ptr noundef nonnull align 8 dereferenceable(64) %i.bx, ptr noundef nonnull %10)
          to label %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EE15MatchAndExplainESC_PNS_19MatchResultListenerE.exit unwind label %bb.s, !inline_history !37

_ZNK7testing8internal11MatcherBaseIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EE15MatchAndExplainESC_PNS_19MatchResultListenerE.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !2466)
  call void @llvm.experimental.noalias.scope.decl(metadata !2467)
  call void @llvm.experimental.noalias.scope.decl(metadata !2468)
  store ptr %i.ba, ptr %11, align 8, !tbaa !90, !alias.scope !2469
  store i64 0, ptr %i.bb, align 8, !tbaa !93, !alias.scope !2469
  store i8 0, ptr %i.ba, align 8, !tbaa !92, !alias.scope !2469
  %i.ch = load ptr, ptr %i.bc, align 8, !tbaa !169, !noalias !2469 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.ch, null
  %i.ci = load ptr, ptr %i.bd, align 8, !noalias !2469 ; 2 uses
  %i.cj = icmp ugt ptr %i.ch, %i.ci
  %.08.i.i.i.i = select i1 %i.cj, ptr %i.ch, ptr %i.ci ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i76 = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i76, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EE15MatchAndExplainESC_PNS_19MatchResultListenerE.exit
  %i.ck = load ptr, ptr %i.be, align 8, !tbaa !170, !noalias !2469 ; 2 uses
  %i.cl = ptrtoint ptr %.08.i.i.i.i to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.ck, i64 noundef %i.cn)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.cp = landingpad { ptr, i32 }
          cleanup
  %i.cq = load ptr, ptr %11, align 8, !tbaa !89, !alias.scope !2469 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.ba
  br i1 %i.cr, label %.body77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.j
  %i.cs = load i64, ptr %i.ba, align 8, !tbaa !92, !alias.scope !2469
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.ct) #36
  br label %.body77

bb.k:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EE15MatchAndExplainESC_PNS_19MatchResultListenerE.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.bf)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.j

_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit: ; preds = %bb.k, %bb.i
  %i.cu = getelementptr inbounds nuw [32 x i8], ptr %14, i64 %storemerge246435 ; 9 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !89 ; 6 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 4 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  %i.cy = load ptr, ptr %11, align 8, !tbaa !89   ; 6 uses
  %i.cz = icmp eq ptr %i.cy, %i.ba                ; 2 uses
  br i1 %i.cx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.cz, label %bb.l, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.cz, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.da = load i64, ptr %i.bb, align 8, !tbaa !93 ; 3 uses
  %i.db = icmp ult i64 %i.da, 16
  call void @llvm.assume(i1 %i.db)
  %.not21.i = icmp eq ptr %11, %i.cu
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.m, !prof !157

bb.m:                                             ; preds = %bb.l
  switch i64 %i.da, label %bb.o [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.dc = load i8, ptr %i.cy, align 1, !tbaa !92
  store i8 %i.dc, ptr %i.cv, align 1, !tbaa !92
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cv, ptr align 1 %i.cy, i64 %i.da, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.o, %bb.n, %bb.m
  %i.dd = load i64, ptr %i.bb, align 8, !tbaa !93 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i64 %i.dd, ptr %i.de, align 8, !tbaa !93
  %i.df = load ptr, ptr %i.cu, align 8, !tbaa !89
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dd
  store i8 0, ptr %i.dg, align 1, !tbaa !92
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !89
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store ptr %i.cy, ptr %i.cu, align 8, !tbaa !89
  %i.di = load i64, ptr %i.bb, align 8, !tbaa !93
  store i64 %i.di, ptr %i.dh, align 8, !tbaa !93
  %i.dj = load i64, ptr %i.ba, align 8, !tbaa !92
  store i64 %i.dj, ptr %i.cw, align 8, !tbaa !92
  br label %bb.q

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.dk = load i64, ptr %i.cw, align 8, !tbaa !92
  store ptr %i.cy, ptr %i.cu, align 8, !tbaa !89
  %i.dl = load i64, ptr %i.bb, align 8, !tbaa !93
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i64 %i.dl, ptr %i.dm, align 8, !tbaa !93
  %i.dn = load i64, ptr %i.ba, align 8, !tbaa !92
  store i64 %i.dn, ptr %i.cw, align 8, !tbaa !92
  %.not.i = icmp eq ptr %i.cv, null
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.cv, ptr %11, align 8, !tbaa !89
  store i64 %i.dk, ptr %i.ba, align 8, !tbaa !92
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ba, ptr %11, align 8, !tbaa !89
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.p, %bb.q
  %i.do = phi ptr [ %i.cv, %bb.p ], [ %i.ba, %bb.q ], [ %i.cy, %bb.l ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.bb, align 8, !tbaa !93
  store i8 0, ptr %i.do, align 1, !tbaa !92
  %i.dp = load ptr, ptr %11, align 8, !tbaa !89   ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.ba
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.dr = load i64, ptr %i.ba, align 8, !tbaa !92
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.ds) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %10, align 8, !tbaa !104
  store ptr %i.bg, ptr %i.ax, align 8, !tbaa !104
  %i.dt = load i64, ptr %i.bi, align 8
  %i.du = getelementptr inbounds i8, ptr %i.ax, i64 %i.dt
  store ptr %i.bh, ptr %i.du, align 8, !tbaa !104
  store ptr %i.bj, ptr %i.ay, align 8, !tbaa !104
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bk, align 8, !tbaa !104
  %i.dv = load ptr, ptr %i.bf, align 8, !tbaa !89 ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.bl
  br i1 %i.dw, label %_ZN7testing25StringMatchResultListenerD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dx = load i64, ptr %i.bl, align 8, !tbaa !92
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dy) #36, !inline_history !246
  br label %_ZN7testing25StringMatchResultListenerD2Ev.exit

_ZN7testing25StringMatchResultListenerD2Ev.exit:  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bk, align 8, !tbaa !104
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bm) #33, !inline_history !246
  store ptr %i.bn, ptr %i.ax, align 8, !tbaa !104
  %i.dz = load i64, ptr %i.bp, align 8
  %i.ea = getelementptr inbounds i8, ptr %i.ax, i64 %i.dz
  store ptr %i.bo, ptr %i.ea, align 8, !tbaa !104
  store i64 0, ptr %i.bq, align 8, !tbaa !172
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.br) #33, !inline_history !246
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  br i1 %i.cg, label %bb.w, label %.lr.ph268.preheader

bb.r:                                             ; preds = %bb.d
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %bb.h, %bb.f, %bb.e
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body77:                                          ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  br label %.body

.body:                                            ; preds = %bb.s, %bb.g, %.body77
  %.pn = phi { ptr, i32 } [ %i.cp, %.body77 ], [ %i.ec, %bb.s ], [ %i.cd, %bb.g ]
  call void @_ZN7testing25StringMatchResultListenerD2Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %10) #33
  br label %bb.t

bb.t:                                             ; preds = %.body, %bb.r
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.eb, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  br label %.body81

bb.u:                                             ; preds = %.lr.ph439
  %i.ed = getelementptr inbounds nuw [24 x i8], ptr %i.bu, i64 %storemerge246435 ; 2 uses
  %i.ee = load ptr, ptr %.sroa.14.0244437, align 8, !tbaa !388
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  store ptr null, ptr %i.aw, align 8, !tbaa !241
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing8internal24DummyMatchResultListenerE, i64 16), ptr %7, align 8, !tbaa !104
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 8 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !411
  %i.eh = icmp ne ptr %i.eg, null
  %i.ei = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.eh)
          to label %.noexc79 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc79:                                         ; preds = %bb.u
  br i1 %i.ei, label %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EE15MatchAndExplainESC_PNS_19MatchResultListenerE.exit.i, label %.noexc3.i

.noexc3.i:                                        ; preds = %.noexc79
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %6, i32 noundef 3, ptr noundef nonnull @.str.180, i32 noundef 234)
          to label %.noexc80 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc80:                                         ; preds = %.noexc3.i
  %i.ej = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.181, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i unwind label %.body.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %.noexc80
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EE15MatchAndExplainESC_PNS_19MatchResultListenerE.exit.i

.body.i:                                          ; preds = %.noexc80
  %i.ek = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  br label %.body81

_ZNK7testing8internal11MatcherBaseIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EE15MatchAndExplainESC_PNS_19MatchResultListenerE.exit.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %.noexc79
  %i.el = load ptr, ptr %i.ef, align 8, !tbaa !411
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !426
  %i.en = invoke noundef zeroext i1 %i.em(ptr noundef nonnull align 8 dereferenceable(24) %i.ed, ptr noundef nonnull align 8 dereferenceable(64) %i.ee, ptr noundef nonnull %7)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !2460

bb.v:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EE15MatchAndExplainESC_PNS_19MatchResultListenerE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  br i1 %i.en, label %bb.w, label %.lr.ph268.preheader

bb.w:                                             ; preds = %_ZN7testing25StringMatchResultListenerD2Ev.exit, %bb.v
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.0175.0245436, i64 1 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.14.0244437, i64 8 ; 2 uses
  %i.eq = load i8, ptr %i.eo, align 1, !tbaa !167 ; 2 uses
  %i.er = icmp slt i8 %i.eq, -1
  br i1 %i.er, label %.lr.ph.i.i.i84, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJEE8iterator21skip_empty_or_deletedEv.exit.i.i

.lr.ph.i.i.i84:                                   ; preds = %bb.w, %.lr.ph.i.i.i84
  %i.es = phi ptr [ %i.ev, %.lr.ph.i.i.i84 ], [ %i.ep, %bb.w ]
end_hunk_0
begin_hunk_1_@_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052613node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_NS3_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEE15MatchAndExplainESK_PNS_19MatchResultListenerE:bb.a
  %.pn471 = phi ptr [ %i.iy, %.lr.ph.i.i.i116 ], [ %.sroa.8.0275, %.lr.ph279 ]
  %i.ix = phi ptr [ %i.iz, %.lr.ph.i.i.i116 ], [ %i.iu, %.lr.ph279 ]
  %i.iy = getelementptr inbounds nuw i8, ptr %.pn471, i64 8 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 1 ; 3 uses
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !167 ; 2 uses
  %i.jb = icmp slt i8 %i.ja, -1
  br i1 %i.jb, label %.lr.ph.i.i.i116, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJEE8iterator21skip_empty_or_deletedEv.exit.i.i115, !llvm.loop !30

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJEE8iterator21skip_empty_or_deletedEv.exit.i.i115: ; preds = %.lr.ph.i.i.i116, %.lr.ph279
  %i.jc = phi ptr [ %.sroa.8.0275, %.lr.ph279 ], [ %i.iy, %.lr.ph.i.i.i116 ]
  %.sroa.0.1 = phi ptr [ %i.iu, %.lr.ph279 ], [ %i.iz, %.lr.ph.i.i.i116 ]
  %i.jd = phi i8 [ %i.iv, %.lr.ph279 ], [ %i.ja, %.lr.ph.i.i.i116 ]
  %i.je = icmp eq i8 %i.jd, -1
  %i.jf = xor i1 %i.je, true
  call void @llvm.assume(i1 %i.jf)
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 1 ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jc, i64 16 ; 2 uses
  %i.ji = load i8, ptr %i.jg, align 1, !tbaa !167 ; 2 uses
  %i.jj = icmp slt i8 %i.ji, -1
  br i1 %i.jj, label %.lr.ph.i.i.i116.1, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJEE8iterator21skip_empty_or_deletedEv.exit.i.i115.1

.lr.ph.i.i.i116.1:                                ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJEE8iterator21skip_empty_or_deletedEv.exit.i.i115, %.lr.ph.i.i.i116.1
  %i.jk = phi ptr [ %i.jn, %.lr.ph.i.i.i116.1 ], [ %i.jh, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJEE8iterator21skip_empty_or_deletedEv.exit.i.i115 ]
  %i.jl = phi ptr [ %i.jm, %.lr.ph.i.i.i116.1 ], [ %i.jg, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJEE8iterator21skip_empty_or_deletedEv.exit.i.i115 ]
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 1 ; 3 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jk, i64 8 ; 2 uses
  %i.jo = load i8, ptr %i.jm, align 1, !tbaa !167 ; 2 uses
  %i.jp = icmp slt i8 %i.jo, -1
  br i1 %i.jp, label %.lr.ph.i.i.i116.1, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJEE8iterator21skip_empty_or_deletedEv.exit.i.i115.1, !llvm.loop !30

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJEE8iterator21skip_empty_or_deletedEv.exit.i.i115.1: ; preds = %.lr.ph.i.i.i116.1, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJEE8iterator21skip_empty_or_deletedEv.exit.i.i115
  %.sroa.8.1.1 = phi ptr [ %i.jh, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJEE8iterator21skip_empty_or_deletedEv.exit.i.i115 ], [ %i.jn, %.lr.ph.i.i.i116.1 ] ; 3 uses
  %.sroa.0.1.1 = phi ptr [ %i.jg, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJEE8iterator21skip_empty_or_deletedEv.exit.i.i115 ], [ %i.jm, %.lr.ph.i.i.i116.1 ]
  %i.jq = phi i8 [ %i.ji, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJEE8iterator21skip_empty_or_deletedEv.exit.i.i115 ], [ %i.jo, %.lr.ph.i.i.i116.1 ]
  %i.jr = icmp eq i8 %i.jq, -1
  br i1 %i.jr, label %bb.an, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJEE14const_iteratorppEv.exit118.1, !prof !157

bb.an:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJEE8iterator21skip_empty_or_deletedEv.exit.i.i115.1
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJEE14const_iteratorppEv.exit118.1

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJEE14const_iteratorppEv.exit118.1: ; preds = %bb.an, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJEE8iterator21skip_empty_or_deletedEv.exit.i.i115.1
  %.sroa.0.2.1 = phi ptr [ null, %bb.an ], [ %.sroa.0.1.1, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEJEE8iterator21skip_empty_or_deletedEv.exit.i.i115.1 ] ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge280.loopexit.unr-lcssa, label %.lr.ph279, !llvm.loop !2464

_ZN7testing19MatchResultListenerlsIA16_cEERS0_RKT_.exit: ; preds = %bb.am
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !241  ; 2 uses
  %.not.i119 = icmp eq ptr %.pr, null
  br i1 %.not.i119, label %_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %_ZN7testing19MatchResultListenerlsIA16_cEERS0_RKT_.exit
  %i.js = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %.pr, i64 noundef %storemerge.lcssa363)
          to label %_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit: ; preds = %bb.ao
  %.pr186 = load ptr, ptr %i.a, align 8, !tbaa !241 ; 2 uses
  %.not.i121 = icmp eq ptr %.pr186, null
  br i1 %.not.i121, label %_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit
  %i.jt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr186, ptr noundef nonnull @.str.246, i64 noundef 2)
          to label %_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit.thread: ; preds = %._crit_edge280, %_ZN7testing19MatchResultListenerlsIA16_cEERS0_RKT_.exit, %bb.ap, %_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33
  %i.ju = load ptr, ptr %.sroa.8.0.lcssa, align 8, !tbaa !388
  invoke void @_ZN7testing13PrintToStringISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(64) %i.ju)
          to label %bb.aq unwind label %bb.ax

bb.aq:                                            ; preds = %_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit.thread
  %i.jv = load ptr, ptr %i.a, align 8, !tbaa !241 ; 2 uses
  %.not.i123 = icmp eq ptr %i.jv, null
  br i1 %.not.i123, label %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit127, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.jw = load ptr, ptr %13, align 8, !tbaa !89
  %i.jx = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !93
  %i.jz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jv, ptr noundef %i.jw, i64 noundef %i.jy)
          to label %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit unwind label %bb.ay ; 0 uses

_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit: ; preds = %bb.ar
  %.pr188 = load ptr, ptr %i.a, align 8, !tbaa !241 ; 2 uses
  %.not.i125 = icmp eq ptr %.pr188, null
  br i1 %.not.i125, label %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit127, label %bb.as

bb.as:                                            ; preds = %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  %i.ka = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr188, ptr noundef nonnull @.str.247, i64 noundef 2)
          to label %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit127 unwind label %bb.ay ; 0 uses

_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit127: ; preds = %bb.aq, %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, %bb.as
  %i.kb = load ptr, ptr %13, align 8, !tbaa !89   ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.kd = icmp eq ptr %i.kb, %i.kc
  br i1 %i.kd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128: ; preds = %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit127
  %i.ke = load i64, ptr %i.kc, align 8, !tbaa !92
  %i.kf = add i64 %i.ke, 1
  call void @_ZdlPvm(ptr noundef %i.kb, i64 noundef %i.kf) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130: ; preds = %_ZN7testing19MatchResultListenerlsIA3_cEERS0_RKT_.exit127, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  %i.kg = load ptr, ptr %i.d, align 8, !tbaa !404
  %i.kh = getelementptr inbounds nuw [24 x i8], ptr %i.kg, i64 %storemerge.lcssa363 ; 2 uses
  %i.ki = load ptr, ptr %i.a, align 8, !tbaa !241
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kh, i64 8 ; 2 uses
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !411
  %i.kl = icmp ne ptr %i.kk, null
  %i.km = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.kl)
          to label %.noexc132 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc132:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130
  br i1 %i.km, label %bb.av, label %bb.at

bb.at:                                            ; preds = %.noexc132
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 3, ptr noundef nonnull @.str.180, i32 noundef 252)
          to label %.noexc133 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc133:                                        ; preds = %bb.at
  %i.kn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.181, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i131 unwind label %bb.au ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i131: ; preds = %.noexc133
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %bb.av

bb.au:                                            ; preds = %.noexc133
  %i.ko = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %.body81

bb.av:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i131, %.noexc132
  %i.kp = load ptr, ptr %i.kj, align 8, !tbaa !411
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !415
  invoke void %i.kr(ptr noundef nonnull align 8 dereferenceable(24) %i.kh, ptr noundef %i.ki, i1 noundef zeroext true)
          to label %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EE18DescribeNegationToEPSo.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !425

_ZNK7testing8internal11MatcherBaseIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EE18DescribeNegationToEPSo.exit: ; preds = %bb.av
  %i.ks = load ptr, ptr %9, align 8, !tbaa !100
  %i.kt = getelementptr inbounds nuw [32 x i8], ptr %i.ks, i64 %storemerge.lcssa363 ; 2 uses
  %i.ku = load ptr, ptr %i.a, align 8, !tbaa !241 ; 3 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 8 ; 2 uses
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !93
  %i.kx = icmp eq i64 %i.kw, 0
  %i.ky = icmp eq ptr %i.ku, null
  %or.cond.not.i = or i1 %i.ky, %i.kx
  br i1 %or.cond.not.i, label %_ZN7testing8internal15PrintIfNotEmptyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSo.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EE18DescribeNegationToEPSo.exit
  %i.kz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ku, ptr noundef nonnull @.str.199, i64 noundef 2)
          to label %.noexc137 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc137:                                        ; preds = %bb.aw
  %i.la = load ptr, ptr %i.kt, align 8, !tbaa !89
  %i.lb = load i64, ptr %i.kv, align 8, !tbaa !93
  %i.lc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ku, ptr noundef %i.la, i64 noundef %i.lb)
          to label %_ZN7testing8internal15PrintIfNotEmptyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSo.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ax:                                            ; preds = %_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit.thread
  %i.ld = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

bb.ay:                                            ; preds = %bb.as, %bb.ar
  %i.le = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lf = load ptr, ptr %13, align 8, !tbaa !89   ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.lh = icmp eq ptr %i.lf, %i.lg
  br i1 %i.lh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139: ; preds = %bb.ay
  %i.li = load i64, ptr %i.lg, align 8, !tbaa !92
  %i.lj = add i64 %i.li, 1
  call void @_ZdlPvm(ptr noundef %i.lf, i64 noundef %i.lj) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139, %bb.ax
  %.pn59 = phi { ptr, i32 } [ %i.ld, %bb.ax ], [ %i.le, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139 ], [ %i.le, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  br label %.body81

bb.az:                                            ; preds = %bb.ah
  %.not57270 = icmp ne ptr %i.fr, %i.fs
  %or.cond396.not = and i1 %.not57270, %i.c
  br i1 %or.cond396.not, label %.lr.ph273.preheader, label %_ZN7testing8internal15PrintIfNotEmptyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSo.exit

.lr.ph273.preheader:                              ; preds = %bb.az
  %.pre = load ptr, ptr %9, align 8, !tbaa !100
  br label %.lr.ph273

.lr.ph273:                                        ; preds = %.lr.ph273.preheader, %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit155
  %.0272 = phi i1 [ false, %.lr.ph273.preheader ], [ %.1, %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit155 ] ; 2 uses
  %storemerge56271 = phi i64 [ 0, %.lr.ph273.preheader ], [ %i.lv, %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit155 ] ; 3 uses
  %i.lk = getelementptr inbounds nuw [32 x i8], ptr %.pre, i64 %storemerge56271 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 8 ; 2 uses
  %i.lm = load i64, ptr %i.ll, align 8, !tbaa !93
  %i.ln = icmp eq i64 %i.lm, 0
  br i1 %i.ln, label %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit155, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph273
  %.pr190.pre299 = load ptr, ptr %i.a, align 8, !tbaa !241 ; 3 uses
  br i1 %.0272, label %bb.bb, label %_ZN7testing19MatchResultListenerlsIA7_cEERS0_RKT_.exit

bb.bb:                                            ; preds = %bb.ba
  %.not.i142 = icmp eq ptr %.pr190.pre299, null
  br i1 %.not.i142, label %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit155, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.lo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr190.pre299, ptr noundef nonnull @.str.248, i64 noundef 6)
          to label %._ZN7testing19MatchResultListenerlsIA7_cEERS0_RKT_.exit_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

._ZN7testing19MatchResultListenerlsIA7_cEERS0_RKT_.exit_crit_edge: ; preds = %bb.bc
  %.pr190.pre = load ptr, ptr %i.a, align 8, !tbaa !241
  br label %_ZN7testing19MatchResultListenerlsIA7_cEERS0_RKT_.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.u, %.noexc3.i, %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EE15MatchAndExplainESC_PNS_19MatchResultListenerE.exit.i, %bb.am, %bb.ao, %bb.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130, %bb.at, %bb.av, %bb.aw, %.noexc137, %bb.z
  %lpad.loopexit.split-lp457 = landingpad { ptr, i32 }
          cleanup
  br label %.body81

_ZN7testing19MatchResultListenerlsIA7_cEERS0_RKT_.exit: ; preds = %._ZN7testing19MatchResultListenerlsIA7_cEERS0_RKT_.exit_crit_edge, %bb.ba
  %.pr190 = phi ptr [ %.pr190.pre, %._ZN7testing19MatchResultListenerlsIA7_cEERS0_RKT_.exit_crit_edge ], [ %.pr190.pre299, %bb.ba ] ; 2 uses
  %.not.i144 = icmp eq ptr %.pr190, null
  br i1 %.not.i144, label %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit155, label %bb.bd

bb.bd:                                            ; preds = %_ZN7testing19MatchResultListenerlsIA7_cEERS0_RKT_.exit
  %i.lp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr190, ptr noundef nonnull @.str.245, i64 noundef 15)
          to label %_ZN7testing19MatchResultListenerlsIA16_cEERS0_RKT_.exit146 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN7testing19MatchResultListenerlsIA16_cEERS0_RKT_.exit146: ; preds = %bb.bd
  %.pr192 = load ptr, ptr %i.a, align 8, !tbaa !241 ; 2 uses
  %.not.i147 = icmp eq ptr %.pr192, null
  br i1 %.not.i147, label %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit155, label %bb.be

bb.be:                                            ; preds = %_ZN7testing19MatchResultListenerlsIA16_cEERS0_RKT_.exit146
  %i.lq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %.pr192, i64 noundef %storemerge56271)
          to label %_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit149 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit149: ; preds = %bb.be
  %.pr194.pr = load ptr, ptr %i.a, align 8, !tbaa !241 ; 2 uses
  %.not.i150 = icmp eq ptr %.pr194.pr, null
  br i1 %.not.i150, label %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit155, label %bb.bf

bb.bf:                                            ; preds = %_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit149
  %i.lr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr194.pr, ptr noundef nonnull @.str.249, i64 noundef 10)
          to label %_ZN7testing19MatchResultListenerlsIA11_cEERS0_RKT_.exit152 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN7testing19MatchResultListenerlsIA11_cEERS0_RKT_.exit152: ; preds = %bb.bf
  %.pr196 = load ptr, ptr %i.a, align 8, !tbaa !241 ; 2 uses
  %.not.i153 = icmp eq ptr %.pr196, null
  br i1 %.not.i153, label %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit155, label %bb.bg

bb.bg:                                            ; preds = %_ZN7testing19MatchResultListenerlsIA11_cEERS0_RKT_.exit152
  %i.ls = load ptr, ptr %i.lk, align 8, !tbaa !89
  %i.lt = load i64, ptr %i.ll, align 8, !tbaa !93
  %i.lu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr196, ptr noundef %i.ls, i64 noundef %i.lt)
          to label %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit155 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit155: ; preds = %_ZN7testing19MatchResultListenerlsIA7_cEERS0_RKT_.exit, %bb.bb, %_ZN7testing19MatchResultListenerlsIA16_cEERS0_RKT_.exit146, %_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit149, %_ZN7testing19MatchResultListenerlsIA11_cEERS0_RKT_.exit152, %bb.bg, %.lr.ph273
  %.1 = phi i1 [ %.0272, %.lr.ph273 ], [ true, %bb.bg ], [ true, %_ZN7testing19MatchResultListenerlsIA11_cEERS0_RKT_.exit152 ], [ true, %_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit149 ], [ true, %_ZN7testing19MatchResultListenerlsIA16_cEERS0_RKT_.exit146 ], [ true, %bb.bb ], [ true, %_ZN7testing19MatchResultListenerlsIA7_cEERS0_RKT_.exit ]
  %i.lv = add i64 %storemerge56271, 1             ; 2 uses
  %i.lw = load ptr, ptr %i.e, align 8, !tbaa !405
  %i.lx = load ptr, ptr %i.d, align 8, !tbaa !404
  %i.ly = ptrtoint ptr %i.lw to i64
  %i.lz = ptrtoint ptr %i.lx to i64
  %i.ma = sub i64 %i.ly, %i.lz
  %i.mb = sdiv exact i64 %i.ma, 24
  %.not57 = icmp eq i64 %i.lv, %i.mb
  br i1 %.not57, label %_ZN7testing8internal15PrintIfNotEmptyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSo.exit, label %.lr.ph273, !llvm.loop !2465

_ZN7testing8internal15PrintIfNotEmptyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSo.exit: ; preds = %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit155, %.noexc137, %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EE18DescribeNegationToEPSo.exit, %bb.az, %bb.ai, %bb.x, %_ZN7testing7MessageD2Ev.exit
  %.051 = phi i1 [ false, %bb.ai ], [ false, %bb.x ], [ false, %_ZN7testing7MessageD2Ev.exit ], [ true, %bb.az ], [ false, %.noexc137 ], [ false, %_ZNK7testing8internal11MatcherBaseIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EE18DescribeNegationToEPSo.exit ], [ true, %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit155 ]
  %i.mc = load ptr, ptr %9, align 8, !tbaa !100   ; 5 uses
  %i.md = load ptr, ptr %i.ai, align 8, !tbaa !101 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.mc, %i.md
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i156

.lr.ph.i.i.i156:                                  ; preds = %_ZN7testing8internal15PrintIfNotEmptyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSo.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.mj, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.mc, %_ZN7testing8internal15PrintIfNotEmptyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSo.exit ] ; 3 uses
  %i.me = load ptr, ptr %.05.i.i.i, align 8, !tbaa !89 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.mg = icmp eq ptr %i.me, %i.mf
  br i1 %i.mg, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i157

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i157: ; preds = %.lr.ph.i.i.i156
  %i.mh = load i64, ptr %i.mf, align 8, !tbaa !92
  %i.mi = add i64 %i.mh, 1
  call void @_ZdlPvm(ptr noundef %i.me, i64 noundef %i.mi) #36
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i156, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i157
  %i.mj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i158 = icmp eq ptr %i.mj, %i.md
  br i1 %.not.i.i.i158, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i156, !llvm.loop !3

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, %_ZN7testing8internal15PrintIfNotEmptyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSo.exit
  %.not.i.i1.i = icmp eq ptr %i.mc, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.bh

bb.bh:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.mk = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !102
  %i.mm = ptrtoint ptr %i.ml to i64
  %i.mn = ptrtoint ptr %i.mc to i64
  %i.mo = sub i64 %i.mm, %i.mn
  call void @_ZdlPvm(ptr noundef nonnull %i.mc, i64 noundef %i.mo) #36
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  ret i1 %.051

.body81:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.t, %.body94, %.body.i, %bb.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141
  %.pn67.pn = phi { ptr, i32 } [ %i.ko, %bb.au ], [ %.pn59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141 ], [ %.pn.pn, %bb.t ], [ %i.ek, %.body.i ], [ %.pn63, %.body94 ], [ %lpad.loopexit.split-lp457, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  resume { ptr, i32 } %.pn67.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing7MessageC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(392) ptr @_Znwm(i64 noundef 392) #38 ; 4 uses
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.a)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  invoke void @_ZNK7testing7Message9GetStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %2, align 8, !tbaa !89
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !93
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.c, i64 noundef %i.e)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.f ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.c
  %i.g = load ptr, ptr %2, align 8, !tbaa !89     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !92
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret void

bb.d:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 392) #36
  br label %_ZNSt10unique_ptrINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

bb.e:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

bb.f:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %2, align 8, !tbaa !89     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.f
  %i.r = load i64, ptr %i.p, align 8, !tbaa !92
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7, %bb.e
  %.pn = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7 ], [ %i.n, %bb.f ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  %i.t = load ptr, ptr %0, align 8, !tbaa !151    ; 3 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !104
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
end_hunk_1
