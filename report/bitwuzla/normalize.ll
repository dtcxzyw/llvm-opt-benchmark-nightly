Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/normalize?download=true
inline.NumInlined: 5543
inline.NumDeleted: 2030
loop-unroll.NumCompletelyUnrolled: 56
loop-unroll.NumUnrolled: 56
begin_hunk_0_@_ZN4bzla10preprocess4pass13PassNormalize7mk_nodeENS_4node4KindERKSt3mapINS_4NodeENS_4util7IntegerESt4lessIS6_ESaISt4pairIKS6_S8_EEE:bb.a
  %23 = alloca %"class.bzla::BitVector", align 8  ; 7 uses
  %24 = alloca %"class.bzla::Node", align 8       ; 9 uses
  %25 = alloca %"class.std::vector.59", align 8   ; 12 uses
  %26 = alloca [2 x %"class.bzla::Node"], align 8 ; 11 uses
  %27 = alloca %"class.std::vector.325", align 8  ; 8 uses
  %28 = alloca %"class.bzla::Node", align 8       ; 8 uses
  %29 = alloca %"class.std::vector.59", align 8   ; 12 uses
  %30 = alloca [2 x %"class.bzla::Node"], align 8 ; 11 uses
  %31 = alloca %"class.std::vector.325", align 8  ; 8 uses
  %32 = alloca %"class.bzla::Node", align 8       ; 8 uses
  %33 = alloca %"class.bzla::Node", align 8       ; 8 uses
  %34 = alloca %"class.std::vector.59", align 8   ; 15 uses
  %35 = alloca [2 x %"class.bzla::Node"], align 8 ; 11 uses
  %36 = alloca %"class.std::vector.325", align 8  ; 9 uses
  %37 = alloca %"class.bzla::Node", align 8       ; 7 uses
  %38 = alloca %"class.std::vector.316", align 8  ; 34 uses
  %39 = alloca %"class.std::vector.316", align 8  ; 20 uses
  %40 = alloca %"class.bzla::Node", align 8       ; 14 uses
  %41 = alloca %"class.bzla::Node", align 8       ; 7 uses
  %42 = alloca %"class.bzla::BitVector", align 8  ; 7 uses
  %43 = alloca %"class.bzla::util::Integer", align 8 ; 7 uses
  %44 = alloca %"class.bzla::util::Integer", align 8 ; 7 uses
  %45 = alloca %"class.bzla::Node", align 8       ; 7 uses
  %46 = alloca %"class.std::vector.59", align 8   ; 12 uses
  %47 = alloca [2 x %"class.bzla::Node"], align 8 ; 11 uses
  %48 = alloca %"class.std::vector.325", align 8  ; 8 uses
  %49 = alloca %"class.bzla::util::Integer", align 8 ; 7 uses
  %50 = alloca %"struct.std::pair.321", align 8   ; 12 uses
  %51 = alloca %"struct.std::pair.334", align 8   ; 8 uses
  %52 = alloca %"class.bzla::Node", align 8       ; 7 uses
  %53 = alloca %"class.std::vector.59", align 8   ; 12 uses
  %54 = alloca [2 x %"class.bzla::Node"], align 8 ; 11 uses
  %55 = alloca %"class.std::vector.325", align 8  ; 8 uses
  %56 = alloca %"class.bzla::Node", align 8       ; 7 uses
  %57 = alloca %"class.std::vector.59", align 8   ; 13 uses
  %58 = alloca [2 x %"class.bzla::Node"], align 8 ; 11 uses
  %59 = alloca %"class.std::vector.325", align 8  ; 9 uses
  %60 = alloca %"class.bzla::Node", align 8       ; 7 uses
  %61 = alloca %"class.std::vector.59", align 8   ; 12 uses
  %62 = alloca [2 x %"class.bzla::Node"], align 8 ; 11 uses
  %63 = alloca %"class.std::vector.325", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  store ptr null, ptr %10, align 8, !tbaa !155
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !152
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.ls unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.lt

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  invoke void @_ZN4bzla4util7IntegerC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %11)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  invoke void @_ZN4bzla4util7IntegerC1Ei(ptr noundef nonnull align 8 dereferenceable(16) %12, i32 noundef 1)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !149, !nonnull !83, !align !138
  %i.g = invoke noundef nonnull align 8 dereferenceable(216) ptr @_ZN4bzla3Env2nmEv(ptr noundef nonnull align 8 dereferenceable(4048) %i.f)
          to label %bb.g unwind label %bb.k       ; 11 uses

bb.g:                                             ; preds = %bb.f
  %i.h = icmp eq i8 %2, 13
  br i1 %i.h, label %bb.h, label %bb.fa

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !48   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.not9071092 = icmp eq ptr %i.j, %i.k
  br i1 %.not9071092, label %._crit_edge1096.thread, label %.lr.ph1095

.lr.ph1095:                                       ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %13, i64 16
  br label %bb.l

._crit_edge1096:                                  ; preds = %_ZNSt6vectorISt4pairIN4bzla4NodeENS1_4util7IntegerEESaIS5_EE12emplace_backIJRKS2_RKS4_EEERS5_DpOT_.exit
  %.pre1188 = load ptr, ptr %13, align 8, !tbaa !157 ; 3 uses
  %.pre1190 = load ptr, ptr %i.l, align 8, !tbaa !157 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 5 uses
  %i.o = icmp eq ptr %.pre1188, %.pre1190
  br i1 %i.o, label %._crit_edge1096.thread, label %bb.s

bb.i:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.lr

bb.j:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.lq

bb.k:                                             ; preds = %bb.ln, %bb.lm, %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.lp

bb.l:                                             ; preds = %.lr.ph1095, %_ZNSt6vectorISt4pairIN4bzla4NodeENS1_4util7IntegerEESaIS5_EE12emplace_backIJRKS2_RKS4_EEERS5_DpOT_.exit
  %.sroa.0863.01093 = phi ptr [ %i.j, %.lr.ph1095 ], [ %i.ac, %_ZNSt6vectorISt4pairIN4bzla4NodeENS1_4util7IntegerEESaIS5_EE12emplace_backIJRKS2_RKS4_EEERS5_DpOT_.exit ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0863.01093, i64 32 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0863.01093, i64 40 ; 3 uses
  %i.u = invoke noundef zeroext i1 @_ZNK4bzla4util7IntegerneERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %11)
          to label %bb.m unwind label %bb.r

bb.m:                                             ; preds = %bb.l
  br i1 %i.u, label %bb.n, label %_ZNSt6vectorISt4pairIN4bzla4NodeENS1_4util7IntegerEESaIS5_EE12emplace_backIJRKS2_RKS4_EEERS5_DpOT_.exit

bb.n:                                             ; preds = %bb.m
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !159  ; 5 uses
  %i.w = load ptr, ptr %i.m, align 8, !tbaa !160
  %.not.i = icmp eq ptr %i.v, %i.w
  br i1 %.not.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.o
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  invoke void @_ZN4bzla4util7IntegerC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %i.t)
          to label %_ZNSt4pairIN4bzla4NodeENS0_4util7IntegerEEC2IS1_S3_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS7_S8_EEEbE4typeELb1EEERKS1_RKS3_.exit.i unwind label %bb.p

bb.p:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %i.v) #25
  br label %.body

_ZNSt4pairIN4bzla4NodeENS0_4util7IntegerEEC2IS1_S3_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS7_S8_EEEbE4typeELb1EEERKS1_RKS3_.exit.i: ; preds = %.noexc
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !159
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store ptr %i.aa, ptr %i.l, align 8, !tbaa !159
  br label %_ZNSt6vectorISt4pairIN4bzla4NodeENS1_4util7IntegerEESaIS5_EE12emplace_backIJRKS2_RKS4_EEERS5_DpOT_.exit

bb.q:                                             ; preds = %bb.n
  invoke void @_ZNSt6vectorISt4pairIN4bzla4NodeENS1_4util7IntegerEESaIS5_EE17_M_realloc_insertIJRKS2_RKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr %i.v, ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.t)
          to label %_ZNSt6vectorISt4pairIN4bzla4NodeENS1_4util7IntegerEESaIS5_EE12emplace_backIJRKS2_RKS4_EEERS5_DpOT_.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.l
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt6vectorISt4pairIN4bzla4NodeENS1_4util7IntegerEESaIS5_EE12emplace_backIJRKS2_RKS4_EEERS5_DpOT_.exit: ; preds = %bb.q, %_ZNSt4pairIN4bzla4NodeENS0_4util7IntegerEEC2IS1_S3_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS7_S8_EEEbE4typeELb1EEERKS1_RKS3_.exit.i, %bb.m
  %i.ac = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0863.01093) #24 ; 2 uses
  %.not907 = icmp eq ptr %i.ac, %i.k
  br i1 %.not907, label %._crit_edge1096, label %bb.l

._crit_edge1096.thread:                           ; preds = %bb.h, %._crit_edge1096
  %i.ad = phi ptr [ %.pre1188, %._crit_edge1096 ], [ null, %bb.h ]
  %i.ae = phi ptr [ %.pre1190, %._crit_edge1096 ], [ null, %bb.h ]
  store ptr null, ptr %0, align 8, !tbaa !155
  br label %bb.eu

bb.s:                                             ; preds = %._crit_edge1096
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4Node4typeEv(ptr noundef nonnull align 8 dereferenceable(8) %.pre1188)
          to label %bb.t unwind label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.ag = invoke noundef i64 @_ZNK4bzla4Type7bv_sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
          to label %bb.u unwind label %bb.w       ; 3 uses

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  invoke void @_ZN4bzla9BitVector7mk_zeroEm(ptr dead_on_unwind nonnull writable sret(%"class.bzla::BitVector") align 8 %14, i64 noundef %i.ag)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  %i.ah = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 18 uses
  store i32 0, ptr %i.ah, align 8, !tbaa !150
  %i.ai = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 11 uses
  store ptr null, ptr %i.ai, align 8, !tbaa !146
  %i.aj = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 7 uses
  store ptr %i.ah, ptr %i.aj, align 8, !tbaa !48
  %i.ak = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 4 uses
  store ptr %i.ah, ptr %i.ak, align 8, !tbaa !151
  %i.al = getelementptr inbounds nuw i8, ptr %15, i64 40 ; 10 uses
  store i64 0, ptr %i.al, align 8, !tbaa !152
  %i.am = load ptr, ptr %i.n, align 8, !tbaa !159 ; 3 uses
  %i.an = load ptr, ptr %13, align 8, !tbaa !161  ; 3 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %64 = sdiv exact i64 %i.aq, 24
  %i.ar = icmp ult i64 %64, 2
  %.not9081097 = icmp eq ptr %i.an, %i.am
  %or.cond1113 = or i1 %i.ar, %.not9081097
  br i1 %or.cond1113, label %.loopexit931, label %.lr.ph1099

.lr.ph1099:                                       ; preds = %bb.v
  %i.as = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %16, i64 40 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %17, i64 40 ; 2 uses
  br label %bb.y

bb.w:                                             ; preds = %bb.t, %bb.s
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.x:                                             ; preds = %bb.u
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez

bb.y:                                             ; preds = %_ZNSt3mapIN4bzla4NodeENS0_4util7IntegerESt4lessIS1_ESaISt4pairIKS1_S3_EEED2Ev.exit471, %.lr.ph1099
  %.sroa.0859.01098 = phi ptr [ %i.an, %.lr.ph1099 ], [ %i.cj, %_ZNSt3mapIN4bzla4NodeENS0_4util7IntegerESt4lessIS1_ESaISt4pairIKS1_S3_EEED2Ev.exit471 ] ; 3 uses
  %i.be = invoke noundef zeroext i8 @_ZNK4bzla4Node4kindEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0859.01098)
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %bb.y
  %.not379 = icmp eq i8 %i.be, 21
  br i1 %.not379, label %bb.ac, label %.critedge424

.critedge424:                                     ; preds = %bb.z
  %i.bf = load ptr, ptr %i.ai, align 8, !tbaa !146
  invoke void @_ZNSt8_Rb_treeIN4bzla4NodeESt4pairIKS1_NS0_4util7IntegerEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef %i.bf)
          to label %.thread unwind label %bb.aa

bb.aa:                                            ; preds = %.critedge424
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #28
  unreachable

.thread:                                          ; preds = %.critedge424
  store ptr null, ptr %i.ai, align 8, !tbaa !146
  store ptr %i.ah, ptr %i.aj, align 8, !tbaa !48
  store ptr %i.ah, ptr %i.ak, align 8, !tbaa !151
  store i64 0, ptr %i.al, align 8, !tbaa !152
  br label %.loopexit931

bb.ab:                                            ; preds = %bb.y
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ey

bb.ac:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  store i32 0, ptr %i.as, align 8, !tbaa !150
  store ptr null, ptr %i.at, align 8, !tbaa !146
  store ptr %i.as, ptr %i.au, align 8, !tbaa !48
  store ptr %i.as, ptr %i.av, align 8, !tbaa !151
  store i64 0, ptr %i.aw, align 8, !tbaa !152
  invoke void @_ZNK4bzla10preprocess4pass13PassNormalize23compute_occurrences_mulERKNS_4NodeERSt3mapIS3_NS_4util7IntegerESt4lessIS3_ESaISt4pairIS4_S8_EEE(ptr noundef nonnull align 8 dereferenceable(640) %1, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0859.01098, ptr noundef nonnull align 8 dereferenceable(48) %16)
          to label %bb.ad unwind label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  %i.bj = load i64, ptr %i.al, align 8, !tbaa !152
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.bl = load ptr, ptr %i.ai, align 8, !tbaa !146
  invoke void @_ZNSt8_Rb_treeIN4bzla4NodeESt4pairIKS1_NS0_4util7IntegerEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef %i.bl)
          to label %_ZNSt8_Rb_treeIN4bzla4NodeESt4pairIKS1_NS0_4util7IntegerEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE5clearEv.exit.i.i.i unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  call void @__clang_call_terminate(ptr %i.bn) #28
  unreachable

_ZNSt8_Rb_treeIN4bzla4NodeESt4pairIKS1_NS0_4util7IntegerEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE5clearEv.exit.i.i.i: ; preds = %bb.ae
  store ptr null, ptr %i.ai, align 8, !tbaa !146
  store ptr %i.ah, ptr %i.aj, align 8, !tbaa !48
  store ptr %i.ah, ptr %i.ak, align 8, !tbaa !151
  store i64 0, ptr %i.al, align 8, !tbaa !152
  %i.bo = load ptr, ptr %i.at, align 8, !tbaa !147 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIN4bzla4NodeENS0_4util7IntegerESt4lessIS1_ESaISt4pairIKS1_S3_EEEaSEOSA_.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt8_Rb_treeIN4bzla4NodeESt4pairIKS1_NS0_4util7IntegerEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE5clearEv.exit.i.i.i
  %i.bp = load i32, ptr %i.as, align 8, !tbaa !150
  store i32 %i.bp, ptr %i.ah, align 8, !tbaa !150
  store ptr %i.bo, ptr %i.ai, align 8, !tbaa !146
  %i.bq = load <2 x ptr>, ptr %i.au, align 8, !tbaa !147
  store <2 x ptr> %i.bq, ptr %i.aj, align 8, !tbaa !147
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %i.ah, ptr %i.br, align 8, !tbaa !162
  %i.bs = load i64, ptr %i.aw, align 8, !tbaa !152 ; 2 uses
  store i64 %i.bs, ptr %i.al, align 8, !tbaa !152
  store ptr null, ptr %i.at, align 8, !tbaa !146
  store ptr %i.as, ptr %i.au, align 8, !tbaa !48
  store ptr %i.as, ptr %i.av, align 8, !tbaa !151
  store i64 0, ptr %i.aw, align 8, !tbaa !152
  br label %_ZNSt3mapIN4bzla4NodeENS0_4util7IntegerESt4lessIS1_ESaISt4pairIKS1_S3_EEEaSEOSA_.exit

bb.ah:                                            ; preds = %bb.ac
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ai:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  invoke void @_ZN4bzla10preprocess4pass13PassNormalize23compute_common_subtermsERSt3mapINS_4NodeENS_4util7IntegerESt4lessIS4_ESaISt4pairIKS4_S6_EEESE_(ptr dead_on_unwind nonnull writable sret(%"class.std::map") align 8 %17, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef nonnull align 8 dereferenceable(48) %16)
          to label %bb.aj unwind label %bb.an

bb.aj:                                            ; preds = %bb.ai
  %i.bu = load ptr, ptr %i.ai, align 8, !tbaa !146
  invoke void @_ZNSt8_Rb_treeIN4bzla4NodeESt4pairIKS1_NS0_4util7IntegerEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef %i.bu)
          to label %_ZNSt8_Rb_treeIN4bzla4NodeESt4pairIKS1_NS0_4util7IntegerEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE5clearEv.exit.i.i.i468 unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  call void @__clang_call_terminate(ptr %i.bw) #28
  unreachable

_ZNSt8_Rb_treeIN4bzla4NodeESt4pairIKS1_NS0_4util7IntegerEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE5clearEv.exit.i.i.i468: ; preds = %bb.aj
  store ptr null, ptr %i.ai, align 8, !tbaa !146
  store ptr %i.ah, ptr %i.aj, align 8, !tbaa !48
  store ptr %i.ah, ptr %i.ak, align 8, !tbaa !151
  store i64 0, ptr %i.al, align 8, !tbaa !152
  %i.bx = load ptr, ptr %i.ax, align 8, !tbaa !147 ; 3 uses
  %.not.i.i.i469 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i469, label %_ZNSt3mapIN4bzla4NodeENS0_4util7IntegerESt4lessIS1_ESaISt4pairIKS1_S3_EEEaSEOSA_.exit470, label %bb.al

bb.al:                                            ; preds = %_ZNSt8_Rb_treeIN4bzla4NodeESt4pairIKS1_NS0_4util7IntegerEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE5clearEv.exit.i.i.i468
  %i.by = load i32, ptr %i.ay, align 8, !tbaa !150
  store i32 %i.by, ptr %i.ah, align 8, !tbaa !150
  store ptr %i.bx, ptr %i.ai, align 8, !tbaa !146
  %i.bz = load <2 x ptr>, ptr %i.az, align 8, !tbaa !147
  store <2 x ptr> %i.bz, ptr %i.aj, align 8, !tbaa !147
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr %i.ah, ptr %i.ca, align 8, !tbaa !162
  %i.cb = load i64, ptr %i.bb, align 8, !tbaa !152
  store i64 %i.cb, ptr %i.al, align 8, !tbaa !152
  store ptr null, ptr %i.ax, align 8, !tbaa !146
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !48
  store ptr %i.ay, ptr %i.ba, align 8, !tbaa !151
  store i64 0, ptr %i.bb, align 8, !tbaa !152
  br label %_ZNSt3mapIN4bzla4NodeENS0_4util7IntegerESt4lessIS1_ESaISt4pairIKS1_S3_EEEaSEOSA_.exit470

_ZNSt3mapIN4bzla4NodeENS0_4util7IntegerESt4lessIS1_ESaISt4pairIKS1_S3_EEEaSEOSA_.exit470: ; preds = %_ZNSt8_Rb_treeIN4bzla4NodeESt4pairIKS1_NS0_4util7IntegerEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE5clearEv.exit.i.i.i468, %bb.al
  invoke void @_ZNSt8_Rb_treeIN4bzla4NodeESt4pairIKS1_NS0_4util7IntegerEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef null)
          to label %_ZNSt3mapIN4bzla4NodeENS0_4util7IntegerESt4lessIS1_ESaISt4pairIKS1_S3_EEED2Ev.exit unwind label %bb.am

bb.am:                                            ; preds = %_ZNSt3mapIN4bzla4NodeENS0_4util7IntegerESt4lessIS1_ESaISt4pairIKS1_S3_EEEaSEOSA_.exit470
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  call void @__clang_call_terminate(ptr %i.cd) #28
  unreachable

_ZNSt3mapIN4bzla4NodeENS0_4util7IntegerESt4lessIS1_ESaISt4pairIKS1_S3_EEED2Ev.exit: ; preds = %_ZNSt3mapIN4bzla4NodeENS0_4util7IntegerESt4lessIS1_ESaISt4pairIKS1_S3_EEEaSEOSA_.exit470
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  %.pre1191 = load i64, ptr %i.al, align 8, !tbaa !152
  %.pre1192 = load ptr, ptr %i.at, align 8, !tbaa !146
  br label %_ZNSt3mapIN4bzla4NodeENS0_4util7IntegerESt4lessIS1_ESaISt4pairIKS1_S3_EEEaSEOSA_.exit

bb.an:                                            ; preds = %bb.ai
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  br label %bb.ap

_ZNSt3mapIN4bzla4NodeENS0_4util7IntegerESt4lessIS1_ESaISt4pairIKS1_S3_EEEaSEOSA_.exit: ; preds = %bb.ag, %_ZNSt8_Rb_treeIN4bzla4NodeESt4pairIKS1_NS0_4util7IntegerEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE5clearEv.exit.i.i.i, %_ZNSt3mapIN4bzla4NodeENS0_4util7IntegerESt4lessIS1_ESaISt4pairIKS1_S3_EEED2Ev.exit
  %i.cf = phi ptr [ null, %bb.ag ], [ null, %_ZNSt8_Rb_treeIN4bzla4NodeESt4pairIKS1_NS0_4util7IntegerEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE5clearEv.exit.i.i.i ], [ %.pre1192, %_ZNSt3mapIN4bzla4NodeENS0_4util7IntegerESt4lessIS1_ESaISt4pairIKS1_S3_EEED2Ev.exit ]
  %i.cg = phi i64 [ %i.bs, %bb.ag ], [ 0, %_ZNSt8_Rb_treeIN4bzla4NodeESt4pairIKS1_NS0_4util7IntegerEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE5clearEv.exit.i.i.i ], [ %.pre1191, %_ZNSt3mapIN4bzla4NodeENS0_4util7IntegerESt4lessIS1_ESaISt4pairIKS1_S3_EEED2Ev.exit ]
  invoke void @_ZNSt8_Rb_treeIN4bzla4NodeESt4pairIKS1_NS0_4util7IntegerEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %16, ptr noundef %i.cf)
          to label %_ZNSt3mapIN4bzla4NodeENS0_4util7IntegerESt4lessIS1_ESaISt4pairIKS1_S3_EEED2Ev.exit471 unwind label %bb.ao

bb.ao:                                            ; preds = %_ZNSt3mapIN4bzla4NodeENS0_4util7IntegerESt4lessIS1_ESaISt4pairIKS1_S3_EEEaSEOSA_.exit
  %i.ch = landingpad { ptr, i32 }
          catch ptr null
  %i.ci = extractvalue { ptr, i32 } %i.ch, 0
  call void @__clang_call_terminate(ptr %i.ci) #28
  unreachable

_ZNSt3mapIN4bzla4NodeENS0_4util7IntegerESt4lessIS1_ESaISt4pairIKS1_S3_EEED2Ev.exit471: ; preds = %_ZNSt3mapIN4bzla4NodeENS0_4util7IntegerESt4lessIS1_ESaISt4pairIKS1_S3_EEEaSEOSA_.exit
  %.not909 = icmp eq i64 %i.cg, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0859.01098, i64 24 ; 2 uses
  %.not908 = icmp eq ptr %i.cj, %i.am
end_hunk_0
begin_hunk_1_@_ZN4bzla10preprocess4pass13PassNormalize7mk_nodeENS_4node4KindERKSt3mapINS_4NodeENS_4util7IntegerESt4lessIS6_ESaISt4pairIKS6_S8_EEE:bb.a
bb.ix:                                            ; preds = %bb.it
  %i.un = landingpad { ptr, i32 }
          cleanup
  br label %.body789

.body789:                                         ; preds = %bb.iu, %bb.ix
  %eh.lpad-body790 = phi { ptr, i32 } [ %i.un, %bb.ix ], [ %i.uk, %bb.iu ] ; 2 uses
  %i.uo = load ptr, ptr %53, align 8, !tbaa !134  ; 3 uses
  %.not.i.i.i637 = icmp eq ptr %i.uo, null
  br i1 %.not.i.i.i637, label %.body639, label %bb.iy

bb.iy:                                            ; preds = %.body789
  %i.up = load ptr, ptr %i.pe, align 8, !tbaa !136
  %i.uq = ptrtoint ptr %i.up to i64
  %i.ur = ptrtoint ptr %i.uo to i64
  %i.us = sub i64 %i.uq, %i.ur
  call void @_ZdlPvm(ptr noundef nonnull %i.uo, i64 noundef %i.us) #26
  br label %.body639

bb.iz:                                            ; preds = %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i786.1
  %i.ut = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.ty, ptr noundef nonnull align 8 dereferenceable(8) %52)
          to label %bb.ja unwind label %bb.jj     ; 0 uses

bb.ja:                                            ; preds = %bb.iz
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %52) #25
  %i.uu = load ptr, ptr %55, align 8, !tbaa !164  ; 3 uses
  %.not.i.i.i642 = icmp eq ptr %i.uu, null
  br i1 %.not.i.i.i642, label %_ZNSt6vectorImSaImEED2Ev.exit643, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.uv = load ptr, ptr %i.pg, align 8, !tbaa !165
  %i.uw = ptrtoint ptr %i.uv to i64
  %i.ux = ptrtoint ptr %i.uu to i64
  %i.uy = sub i64 %i.uw, %i.ux
  call void @_ZdlPvm(ptr noundef nonnull %i.uu, i64 noundef %i.uy) #26
  br label %_ZNSt6vectorImSaImEED2Ev.exit643

_ZNSt6vectorImSaImEED2Ev.exit643:                 ; preds = %bb.ja, %bb.jb
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #25
  %i.uz = load ptr, ptr %53, align 8, !tbaa !134  ; 3 uses
  %i.va = load ptr, ptr %i.pf, align 8, !tbaa !135 ; 2 uses
  %.not4.i.i.i644 = icmp eq ptr %i.uz, %i.va
  br i1 %.not4.i.i.i644, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i650, label %.lr.ph.i.i.i645

.lr.ph.i.i.i645:                                  ; preds = %_ZNSt6vectorImSaImEED2Ev.exit643, %.lr.ph.i.i.i645
  %.05.i.i.i646 = phi ptr [ %i.vb, %.lr.ph.i.i.i645 ], [ %i.uz, %_ZNSt6vectorImSaImEED2Ev.exit643 ] ; 2 uses
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i646) #25
  %i.vb = getelementptr inbounds nuw i8, ptr %.05.i.i.i646, i64 8 ; 2 uses
  %.not.i.i.i647 = icmp eq ptr %i.vb, %i.va
  br i1 %.not.i.i.i647, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i648, label %.lr.ph.i.i.i645, !llvm.loop !7

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i648: ; preds = %.lr.ph.i.i.i645
  %.pr.i649 = load ptr, ptr %53, align 8, !tbaa !134
  br label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i650

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i650: ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i648, %_ZNSt6vectorImSaImEED2Ev.exit643
  %i.vc = phi ptr [ %.pr.i649, %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i648 ], [ %i.uz, %_ZNSt6vectorImSaImEED2Ev.exit643 ] ; 3 uses
  %.not.i.i1.i651 = icmp eq ptr %i.vc, null
  br i1 %.not.i.i1.i651, label %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit653, label %bb.jc

bb.jc:                                            ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i650
  %i.vd = load ptr, ptr %i.pe, align 8, !tbaa !136
  %i.ve = ptrtoint ptr %i.vd to i64
  %i.vf = ptrtoint ptr %i.vc to i64
  %i.vg = sub i64 %i.ve, %i.vf
  call void @_ZdlPvm(ptr noundef nonnull %i.vc, i64 noundef %i.vg) #26
  br label %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit653

_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit653:    ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i650, %bb.jc
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.po) #25
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %54) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #25
  %i.vh = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4bzla4util7IntegermIERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.qo, ptr noundef nonnull align 8 dereferenceable(16) %i.qn)
          to label %bb.jd unwind label %bb.jm     ; 0 uses

bb.jd:                                            ; preds = %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit653
  %i.vi = invoke noundef zeroext i1 @_ZNK4bzla4util7IntegereqERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.qo, ptr noundef nonnull align 8 dereferenceable(16) %11)
          to label %bb.je unwind label %bb.jm

bb.je:                                            ; preds = %bb.jd
  br i1 %i.vi, label %bb.jf, label %bb.jo

bb.jf:                                            ; preds = %bb.je
  %i.vj = load ptr, ptr %38, align 8, !tbaa !157  ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 24 ; 3 uses
  %i.vl = load ptr, ptr %i.om, align 8, !tbaa !157 ; 4 uses
  %.not.i.i654 = icmp eq ptr %i.vk, %i.vl
  br i1 %.not.i.i654, label %bb.jh, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  %i.vm = ptrtoint ptr %i.vl to i64
  %i.vn = ptrtoint ptr %i.vk to i64
  %i.vo = sub i64 %i.vm, %i.vn                    ; 2 uses
  %i.vp = icmp sgt i64 %i.vo, 0
  br i1 %i.vp, label %.lr.ph.preheader.i.i.i.i.i.i.i, label %bb.jh

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %bb.jg
  %i.vq = udiv exact i64 %i.vo, 24
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc656, %.lr.ph.preheader.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi i64 [ %i.vx, %.noexc656 ], [ %i.vq, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i.i.i = phi ptr [ %i.vw, %.noexc656 ], [ %i.vj, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %.0910.i.i.i.i.i.i.i = phi ptr [ %i.vv, %.noexc656 ], [ %i.vk, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %i.vr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %.0811.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0910.i.i.i.i.i.i.i)
          to label %.noexc655 unwind label %bb.jn ; 0 uses

.noexc655:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.vs = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 8
  %i.vt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 8
  %i.vu = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4bzla4util7IntegeraSEOS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.vt, ptr noundef nonnull align 8 dereferenceable(16) %i.vs)
          to label %.noexc656 unwind label %bb.jn ; 0 uses

.noexc656:                                        ; preds = %.noexc655
  %i.vv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 24
  %i.vw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 24
  %i.vx = add nsw i64 %.012.i.i.i.i.i.i.i, -1
  %i.vy = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i, 1
  br i1 %i.vy, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeENS3_4util7IntegerEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.loopexit.i.i, !llvm.loop !519

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeENS3_4util7IntegerEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.loopexit.i.i: ; preds = %.noexc656
  %.pre.i.i = load ptr, ptr %i.om, align 8, !tbaa !159
  br label %bb.jh

bb.jh:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeENS3_4util7IntegerEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.loopexit.i.i, %bb.jg, %bb.jf
  %i.vz = phi ptr [ %.pre.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeENS3_4util7IntegerEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.loopexit.i.i ], [ %i.vl, %bb.jg ], [ %i.vl, %bb.jf ] ; 2 uses
  %i.wa = getelementptr inbounds i8, ptr %i.vz, i64 -24 ; 2 uses
  store ptr %i.wa, ptr %i.om, align 8, !tbaa !159
  %i.wb = getelementptr inbounds i8, ptr %i.vz, i64 -16
  call void @_ZN4bzla4util7IntegerD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.wb) #25
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %i.wa) #25
  br label %bb.jo

.loopexit937.loopexit1119:                        ; preds = %bb.is
  %i.wc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %54) #25
  br label %.loopexit937

bb.ji:                                            ; preds = %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i786.1
  %i.wd = landingpad { ptr, i32 }
          cleanup
  br label %bb.jk

bb.jj:                                            ; preds = %bb.iz
  %i.we = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %52) #25
  br label %bb.jk

bb.jk:                                            ; preds = %bb.jj, %bb.ji
  %.pn348 = phi { ptr, i32 } [ %i.we, %bb.jj ], [ %i.wd, %bb.ji ]
  %i.wf = load ptr, ptr %55, align 8, !tbaa !164  ; 3 uses
  %.not.i.i.i657 = icmp eq ptr %i.wf, null
  br i1 %.not.i.i.i657, label %_ZNSt6vectorImSaImEED2Ev.exit658, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  %i.wg = load ptr, ptr %i.pg, align 8, !tbaa !165
  %i.wh = ptrtoint ptr %i.wg to i64
  %i.wi = ptrtoint ptr %i.wf to i64
  %i.wj = sub i64 %i.wh, %i.wi
  call void @_ZdlPvm(ptr noundef nonnull %i.wf, i64 noundef %i.wj) #26
  br label %_ZNSt6vectorImSaImEED2Ev.exit658

_ZNSt6vectorImSaImEED2Ev.exit658:                 ; preds = %bb.jk, %bb.jl
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #25
  call void @_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %53) #25
  br label %.body639

.body639:                                         ; preds = %bb.iy, %.body789, %_ZNSt6vectorImSaImEED2Ev.exit658
  %.pn348.pn = phi { ptr, i32 } [ %.pn348, %_ZNSt6vectorImSaImEED2Ev.exit658 ], [ %eh.lpad-body790, %.body789 ], [ %eh.lpad-body790, %bb.iy ]
  %i.wk = getelementptr inbounds nuw i8, ptr %54, i64 8
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.wk) #25
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %54) #25
  br label %.loopexit937

.loopexit937:                                     ; preds = %.loopexit937.loopexit1119, %.body639, %.thread896
  %.pn348.pn.pn = phi { ptr, i32 } [ %.pn348.pn, %.body639 ], [ %i.tz, %.thread896 ], [ %i.wc, %.loopexit937.loopexit1119 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #25
  br label %.body556

bb.jm:                                            ; preds = %bb.jd, %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit653
  %i.wl = landingpad { ptr, i32 }
          cleanup
  br label %.body556

bb.jn:                                            ; preds = %.noexc655, %.lr.ph.i.i.i.i.i.i.i
  %i.wm = landingpad { ptr, i32 }
          cleanup
  br label %.body556

bb.jo:                                            ; preds = %bb.jh, %bb.je
  %i.wn = load ptr, ptr %i.om, align 8, !tbaa !159
  %i.wo = load ptr, ptr %38, align 8, !tbaa !161
  %i.wp = ptrtoint ptr %i.wn to i64
  %i.wq = ptrtoint ptr %i.wo to i64
  %i.wr = sub i64 %i.wp, %i.wq
  %65 = sdiv exact i64 %i.wr, 24                  ; 2 uses
  %i.ws = icmp ugt i64 %65, 2
  br i1 %i.ws, label %.lr.ph1083, label %.critedge7

.lr.ph1083:                                       ; preds = %bb.jo, %_ZSt4swapIN4bzla4NodeENS0_4util7IntegerEENSt9enable_ifIXsr6__and_ISt14__is_swappableIT_ES5_IT0_EEE5valueEvE4typeERSt4pairIS6_S8_ESE_.exit
  %.02801081 = phi i64 [ %i.xi, %_ZSt4swapIN4bzla4NodeENS0_4util7IntegerEENSt9enable_ifIXsr6__and_ISt14__is_swappableIT_ES5_IT0_EEE5valueEvE4typeERSt4pairIS6_S8_ESE_.exit ], [ 2, %bb.jo ] ; 3 uses
  %.02811080 = phi i64 [ %i.xh, %_ZSt4swapIN4bzla4NodeENS0_4util7IntegerEENSt9enable_ifIXsr6__and_ISt14__is_swappableIT_ES5_IT0_EEE5valueEvE4typeERSt4pairIS6_S8_ESE_.exit ], [ 1, %bb.jo ] ; 3 uses
  %i.wt = load ptr, ptr %38, align 8, !tbaa !161  ; 2 uses
  %i.wu = getelementptr inbounds nuw [24 x i8], ptr %i.wt, i64 %.02811080 ; 2 uses
  %i.wv = getelementptr inbounds nuw [24 x i8], ptr %i.wt, i64 %.02801081 ; 2 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wu, i64 8 ; 2 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wv, i64 8 ; 2 uses
  %i.wy = invoke noundef zeroext i1 @_ZNK4bzla4util7IntegergtERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ww, ptr noundef nonnull align 8 dereferenceable(16) %i.wx)
          to label %.noexc659 unwind label %bb.jr

.noexc659:                                        ; preds = %.lr.ph1083
  br i1 %i.wy, label %.critedge7, label %bb.jp

bb.jp:                                            ; preds = %.noexc659
  %i.wz = invoke noundef zeroext i1 @_ZNK4bzla4util7IntegereqERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ww, ptr noundef nonnull align 8 dereferenceable(16) %i.wx)
          to label %.noexc660 unwind label %bb.jr

.noexc660:                                        ; preds = %bb.jp
  br i1 %i.wz, label %bb.jq, label %"_ZZN4bzla10preprocess4pass13PassNormalize7mk_nodeENS_4node4KindERKSt3mapINS_4NodeENS_4util7IntegerESt4lessIS6_ESaISt4pairIKS6_S8_EEEENK3$_0clISB_IS6_S8_ESK_EEDaRKT_RKT0_.exit.thread898"

bb.jq:                                            ; preds = %.noexc660
  %i.xa = invoke noundef i64 @_ZNK4bzla4Node2idEv(ptr noundef nonnull align 8 dereferenceable(24) %i.wu)
          to label %.noexc661 unwind label %bb.jr

.noexc661:                                        ; preds = %bb.jq
  %i.xb = invoke noundef i64 @_ZNK4bzla4Node2idEv(ptr noundef nonnull align 8 dereferenceable(24) %i.wv)
          to label %"_ZZN4bzla10preprocess4pass13PassNormalize7mk_nodeENS_4node4KindERKSt3mapINS_4NodeENS_4util7IntegerESt4lessIS6_ESaISt4pairIKS6_S8_EEEENK3$_0clISB_IS6_S8_ESK_EEDaRKT_RKT0_.exit" unwind label %bb.jr

"_ZZN4bzla10preprocess4pass13PassNormalize7mk_nodeENS_4node4KindERKSt3mapINS_4NodeENS_4util7IntegerESt4lessIS6_ESaISt4pairIKS6_S8_EEEENK3$_0clISB_IS6_S8_ESK_EEDaRKT_RKT0_.exit": ; preds = %.noexc661
  %i.xc = icmp ult i64 %i.xa, %i.xb
  br i1 %i.xc, label %.critedge7, label %"_ZZN4bzla10preprocess4pass13PassNormalize7mk_nodeENS_4node4KindERKSt3mapINS_4NodeENS_4util7IntegerESt4lessIS6_ESaISt4pairIKS6_S8_EEEENK3$_0clISB_IS6_S8_ESK_EEDaRKT_RKT0_.exit.thread898"

bb.jr:                                            ; preds = %"_ZZN4bzla10preprocess4pass13PassNormalize7mk_nodeENS_4node4KindERKSt3mapINS_4NodeENS_4util7IntegerESt4lessIS6_ESaISt4pairIKS6_S8_EEEENK3$_0clISB_IS6_S8_ESK_EEDaRKT_RKT0_.exit.thread898", %.noexc661, %bb.jq, %bb.jp, %.lr.ph1083
  %i.xd = landingpad { ptr, i32 }
          cleanup
  br label %.body556

"_ZZN4bzla10preprocess4pass13PassNormalize7mk_nodeENS_4node4KindERKSt3mapINS_4NodeENS_4util7IntegerESt4lessIS6_ESaISt4pairIKS6_S8_EEEENK3$_0clISB_IS6_S8_ESK_EEDaRKT_RKT0_.exit.thread898": ; preds = %.noexc660, %"_ZZN4bzla10preprocess4pass13PassNormalize7mk_nodeENS_4node4KindERKSt3mapINS_4NodeENS_4util7IntegerESt4lessIS6_ESaISt4pairIKS6_S8_EEEENK3$_0clISB_IS6_S8_ESK_EEDaRKT_RKT0_.exit"
  %i.xe = load ptr, ptr %38, align 8, !tbaa !161  ; 2 uses
  %i.xf = getelementptr inbounds nuw [24 x i8], ptr %i.xe, i64 %.02811080
  %i.xg = getelementptr inbounds nuw [24 x i8], ptr %i.xe, i64 %.02801081
  invoke void @_ZNSt4pairIN4bzla4NodeENS0_4util7IntegerEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.xf, ptr noundef nonnull align 8 dereferenceable(24) %i.xg)
          to label %_ZSt4swapIN4bzla4NodeENS0_4util7IntegerEENSt9enable_ifIXsr6__and_ISt14__is_swappableIT_ES5_IT0_EEE5valueEvE4typeERSt4pairIS6_S8_ESE_.exit unwind label %bb.jr

_ZSt4swapIN4bzla4NodeENS0_4util7IntegerEENSt9enable_ifIXsr6__and_ISt14__is_swappableIT_ES5_IT0_EEE5valueEvE4typeERSt4pairIS6_S8_ESE_.exit: ; preds = %"_ZZN4bzla10preprocess4pass13PassNormalize7mk_nodeENS_4node4KindERKSt3mapINS_4NodeENS_4util7IntegerESt4lessIS6_ESaISt4pairIKS6_S8_EEEENK3$_0clISB_IS6_S8_ESK_EEDaRKT_RKT0_.exit.thread898"
  %i.xh = add nuw i64 %.02811080, 1
  %i.xi = add nuw i64 %.02801081, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.xi, %65
  br i1 %exitcond.not, label %.critedge7, label %.lr.ph1083, !llvm.loop !520

.critedge7:                                       ; preds = %_ZSt4swapIN4bzla4NodeENS0_4util7IntegerEENSt9enable_ifIXsr6__and_ISt14__is_swappableIT_ES5_IT0_EEE5valueEvE4typeERSt4pairIS6_S8_ESE_.exit, %"_ZZN4bzla10preprocess4pass13PassNormalize7mk_nodeENS_4node4KindERKSt3mapINS_4NodeENS_4util7IntegerESt4lessIS6_ESaISt4pairIKS6_S8_EEEENK3$_0clISB_IS6_S8_ESK_EEDaRKT_RKT0_.exit", %.noexc659, %bb.jo, %bb.io
  %i.xj = load ptr, ptr %i.om, align 8, !tbaa !159 ; 2 uses
  %i.xk = load ptr, ptr %38, align 8, !tbaa !161  ; 2 uses
  %i.xl = ptrtoint ptr %i.xj to i64
  %i.xm = ptrtoint ptr %i.xk to i64
  %i.xn = sub i64 %i.xl, %i.xm
  %66 = sdiv exact i64 %i.xn, 24                  ; 2 uses
  %i.xo = icmp ugt i64 %66, 1
  br i1 %i.xo, label %.lr.ph1086.preheader, label %.critedge9.backedge

.lr.ph1086.preheader:                             ; preds = %.critedge7
  %67 = add nsw i64 %66, -2
  br label %.lr.ph1086

.lr.ph1086:                                       ; preds = %.lr.ph1086.preheader, %bb.jz
  %.02781085 = phi i64 [ %i.ym, %bb.jz ], [ 1, %.lr.ph1086.preheader ] ; 3 uses
  %.02791084 = phi i64 [ %i.yl, %bb.jz ], [ 0, %.lr.ph1086.preheader ] ; 4 uses
  %i.xp = load ptr, ptr %38, align 8, !tbaa !161  ; 2 uses
  %i.xq = getelementptr inbounds nuw [24 x i8], ptr %i.xp, i64 %.02791084 ; 2 uses
  %i.xr = getelementptr inbounds nuw [24 x i8], ptr %i.xp, i64 %.02781085 ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xq, i64 8 ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xr, i64 8 ; 2 uses
  %i.xu = invoke noundef zeroext i1 @_ZNK4bzla4util7IntegergtERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.xs, ptr noundef nonnull align 8 dereferenceable(16) %i.xt)
          to label %.noexc664 unwind label %bb.ju

.noexc664:                                        ; preds = %.lr.ph1086
  br i1 %i.xu, label %.critedge9.loopexit, label %bb.js

bb.js:                                            ; preds = %.noexc664
  %i.xv = invoke noundef zeroext i1 @_ZNK4bzla4util7IntegereqERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.xs, ptr noundef nonnull align 8 dereferenceable(16) %i.xt)
          to label %.noexc665 unwind label %bb.ju

.noexc665:                                        ; preds = %bb.js
  br i1 %i.xv, label %bb.jt, label %"_ZZN4bzla10preprocess4pass13PassNormalize7mk_nodeENS_4node4KindERKSt3mapINS_4NodeENS_4util7IntegerESt4lessIS6_ESaISt4pairIKS6_S8_EEEENK3$_0clISB_IS6_S8_ESK_EEDaRKT_RKT0_.exit668.thread899"

bb.jt:                                            ; preds = %.noexc665
  %i.xw = invoke noundef i64 @_ZNK4bzla4Node2idEv(ptr noundef nonnull align 8 dereferenceable(24) %i.xq)
          to label %.noexc666 unwind label %bb.ju

.noexc666:                                        ; preds = %bb.jt
  %i.xx = invoke noundef i64 @_ZNK4bzla4Node2idEv(ptr noundef nonnull align 8 dereferenceable(24) %i.xr)
          to label %"_ZZN4bzla10preprocess4pass13PassNormalize7mk_nodeENS_4node4KindERKSt3mapINS_4NodeENS_4util7IntegerESt4lessIS6_ESaISt4pairIKS6_S8_EEEENK3$_0clISB_IS6_S8_ESK_EEDaRKT_RKT0_.exit668" unwind label %bb.ju

"_ZZN4bzla10preprocess4pass13PassNormalize7mk_nodeENS_4node4KindERKSt3mapINS_4NodeENS_4util7IntegerESt4lessIS6_ESaISt4pairIKS6_S8_EEEENK3$_0clISB_IS6_S8_ESK_EEDaRKT_RKT0_.exit668": ; preds = %.noexc666
  %i.xy = icmp ult i64 %i.xw, %i.xx
  br i1 %i.xy, label %.critedge9.loopexit, label %"_ZZN4bzla10preprocess4pass13PassNormalize7mk_nodeENS_4node4KindERKSt3mapINS_4NodeENS_4util7IntegerESt4lessIS6_ESaISt4pairIKS6_S8_EEEENK3$_0clISB_IS6_S8_ESK_EEDaRKT_RKT0_.exit668.thread899"

.critedge9.loopexit:                              ; preds = %.noexc664, %bb.jz, %"_ZZN4bzla10preprocess4pass13PassNormalize7mk_nodeENS_4node4KindERKSt3mapINS_4NodeENS_4util7IntegerESt4lessIS6_ESaISt4pairIKS6_S8_EEEENK3$_0clISB_IS6_S8_ESK_EEDaRKT_RKT0_.exit668"
  %.pre1180.pre = load ptr, ptr %i.om, align 8, !tbaa !159
  %.pre1181.pre = load ptr, ptr %38, align 8, !tbaa !161
  br label %.critedge9.backedge

.critedge9.backedge:                              ; preds = %.critedge9.loopexit, %.critedge7
  %.be = phi ptr [ %.pre1181.pre, %.critedge9.loopexit ], [ %i.xk, %.critedge7 ]
  %.be1514 = phi ptr [ %.pre1180.pre, %.critedge9.loopexit ], [ %i.xj, %.critedge7 ]
  br label %.critedge9, !llvm.loop !521

bb.ju:                                            ; preds = %_ZSt4swapIN4bzla4NodeEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit.i, %"_ZZN4bzla10preprocess4pass13PassNormalize7mk_nodeENS_4node4KindERKSt3mapINS_4NodeENS_4util7IntegerESt4lessIS6_ESaISt4pairIKS6_S8_EEEENK3$_0clISB_IS6_S8_ESK_EEDaRKT_RKT0_.exit668.thread899", %.noexc666, %bb.jt, %bb.js, %.lr.ph1086
  %i.xz = landingpad { ptr, i32 }
          cleanup
  br label %.body556

"_ZZN4bzla10preprocess4pass13PassNormalize7mk_nodeENS_4node4KindERKSt3mapINS_4NodeENS_4util7IntegerESt4lessIS6_ESaISt4pairIKS6_S8_EEEENK3$_0clISB_IS6_S8_ESK_EEDaRKT_RKT0_.exit668.thread899": ; preds = %.noexc665, %"_ZZN4bzla10preprocess4pass13PassNormalize7mk_nodeENS_4node4KindERKSt3mapINS_4NodeENS_4util7IntegerESt4lessIS6_ESaISt4pairIKS6_S8_EEEENK3$_0clISB_IS6_S8_ESK_EEDaRKT_RKT0_.exit668"
  %i.ya = load ptr, ptr %38, align 8, !tbaa !161  ; 2 uses
  %i.yb = getelementptr inbounds nuw [24 x i8], ptr %i.ya, i64 %.02791084 ; 3 uses
  %i.yc = getelementptr inbounds nuw [24 x i8], ptr %i.ya, i64 %.02781085 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  invoke void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.yb)
          to label %.noexc792 unwind label %bb.ju

.noexc792:                                        ; preds = %"_ZZN4bzla10preprocess4pass13PassNormalize7mk_nodeENS_4node4KindERKSt3mapINS_4NodeENS_4util7IntegerESt4lessIS6_ESaISt4pairIKS6_S8_EEEENK3$_0clISB_IS6_S8_ESK_EEDaRKT_RKT0_.exit668.thread899"
  %i.yd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.yb, ptr noundef nonnull align 8 dereferenceable(24) %i.yc)
          to label %bb.jv unwind label %bb.jw     ; 0 uses

bb.jv:                                            ; preds = %.noexc792
  %i.ye = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.yc, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %_ZSt4swapIN4bzla4NodeEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit.i unwind label %bb.jw ; 0 uses

bb.jw:                                            ; preds = %bb.jv, %.noexc792
  %i.yf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %.body556

_ZSt4swapIN4bzla4NodeEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit.i: ; preds = %bb.jv
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yb, i64 8 ; 2 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yc, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZN4bzla4util7IntegerC1EOS1_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.yg)
          to label %.noexc795 unwind label %bb.ju

.noexc795:                                        ; preds = %_ZSt4swapIN4bzla4NodeEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit.i
  %i.yi = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4bzla4util7IntegeraSEOS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.yg, ptr noundef nonnull align 8 dereferenceable(16) %i.yh)
          to label %bb.jx unwind label %bb.jy     ; 0 uses

bb.jx:                                            ; preds = %.noexc795
  %i.yj = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4bzla4util7IntegeraSEOS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.yh, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.jz unwind label %bb.jy     ; 0 uses

bb.jy:                                            ; preds = %bb.jx, %.noexc795
  %i.yk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4util7IntegerD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %.body556

bb.jz:                                            ; preds = %bb.jx
  call void @_ZN4bzla4util7IntegerD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.yl = add nuw i64 %.02791084, 1
  %i.ym = add nuw i64 %.02781085, 1
  %exitcond1178.not = icmp eq i64 %.02791084, %67
  br i1 %exitcond1178.not, label %.critedge9.loopexit, label %.lr.ph1086, !llvm.loop !522

bb.ka:                                            ; preds = %bb.gv
  %i.yn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %.pre1182)
          to label %bb.kb unwind label %.loopexit.split-lp948.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.kb:                                            ; preds = %bb.ka
  %i.yo = load ptr, ptr %40, align 8, !tbaa !155
  %i.yp = icmp eq ptr %i.yo, null
  br i1 %i.yp, label %bb.ks, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #25
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %58, ptr noundef nonnull align 8 dereferenceable(8) %40)
          to label %bb.kd unwind label %.thread900

.thread900:                                       ; preds = %bb.kc
  %i.yq = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit939

bb.kd:                                            ; preds = %bb.kc
  %i.yr = getelementptr inbounds nuw i8, ptr %58, i64 8 ; 2 uses
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.yr, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.ke unwind label %.loopexit939.loopexit1120

bb.ke:                                            ; preds = %bb.kd
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %57, i8 0, i64 24, i1 false)
  %i.ys = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #27
          to label %.noexc807 unwind label %bb.ki ; 6 uses

.noexc807:                                        ; preds = %bb.ke
  store ptr %i.ys, ptr %57, align 8, !tbaa !134
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 16
  %i.yu = getelementptr inbounds nuw i8, ptr %57, i64 16 ; 2 uses
  store ptr %i.yt, ptr %i.yu, align 8, !tbaa !136
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.ys, ptr noundef nonnull align 8 dereferenceable(8) %58)
          to label %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i805 unwind label %.thread1357

.thread1357:                                      ; preds = %.noexc807
  %i.yv = landingpad { ptr, i32 }
          catch ptr null
  %i.yw = extractvalue { ptr, i32 } %i.yv, 0
  %i.yx = call ptr @__cxa_begin_catch(ptr %i.yw) #25 ; 0 uses
  br label %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i804

_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i805: ; preds = %.noexc807
  %i.yy = getelementptr inbounds nuw i8, ptr %i.ys, i64 8
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.yy, ptr noundef nonnull align 8 dereferenceable(8) %i.yr)
          to label %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i805.1 unwind label %.lr.ph.i.i.i.i.i.i.i801.preheader

_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i805.1: ; preds = %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i805
  %i.yz = getelementptr inbounds nuw i8, ptr %i.ys, i64 16
  %i.za = getelementptr inbounds nuw i8, ptr %57, i64 8 ; 2 uses
  store ptr %i.yz, ptr %i.za, align 8, !tbaa !135
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %59, i8 0, i64 24, i1 false)
  invoke void @_ZN4bzla11NodeManager7mk_nodeENS_4node4KindERKSt6vectorINS_4NodeESaIS4_EERKS3_ImSaImEE(ptr dead_on_unwind nonnull writable sret(%"class.bzla::Node") align 8 %56, ptr noundef nonnull align 8 dereferenceable(216) %i.g, i8 noundef zeroext 21, ptr noundef nonnull align 8 dereferenceable(24) %57, ptr noundef nonnull align 8 dereferenceable(24) %59)
          to label %bb.kk unwind label %bb.ko

.lr.ph.i.i.i.i.i.i.i801.preheader:                ; preds = %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i805
  %i.zb = landingpad { ptr, i32 }
          catch ptr null
  %i.zc = extractvalue { ptr, i32 } %i.zb, 0
  %i.zd = call ptr @__cxa_begin_catch(ptr %i.zc) #25 ; 0 uses
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ys) #25
  br label %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i804

_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i804: ; preds = %.lr.ph.i.i.i.i.i.i.i801.preheader, %.thread1357
  invoke void @__cxa_rethrow() #23
          to label %bb.kh unwind label %bb.kf

bb.kf:                                            ; preds = %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i804
  %i.ze = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body808 unwind label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.zf = landingpad { ptr, i32 }
          catch ptr null
  %i.zg = extractvalue { ptr, i32 } %i.zf, 0
  call void @__clang_call_terminate(ptr %i.zg) #28
  unreachable

bb.kh:                                            ; preds = %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i804
  unreachable

bb.ki:                                            ; preds = %bb.ke
  %i.zh = landingpad { ptr, i32 }
          cleanup
  br label %.body808

.body808:                                         ; preds = %bb.kf, %bb.ki
  %eh.lpad-body809 = phi { ptr, i32 } [ %i.zh, %bb.ki ], [ %i.ze, %bb.kf ] ; 2 uses
  %i.zi = load ptr, ptr %57, align 8, !tbaa !134  ; 3 uses
  %.not.i.i.i671 = icmp eq ptr %i.zi, null
  br i1 %.not.i.i.i671, label %.body673, label %bb.kj

bb.kj:                                            ; preds = %.body808
  %i.zj = getelementptr inbounds nuw i8, ptr %57, i64 16
  %i.zk = load ptr, ptr %i.zj, align 8, !tbaa !136
  %i.zl = ptrtoint ptr %i.zk to i64
  %i.zm = ptrtoint ptr %i.zi to i64
  %i.zn = sub i64 %i.zl, %i.zm
  call void @_ZdlPvm(ptr noundef nonnull %i.zi, i64 noundef %i.zn) #26
  br label %.body673

bb.kk:                                            ; preds = %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i805.1
  %i.zo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %56)
          to label %bb.kl unwind label %bb.kp     ; 0 uses

bb.kl:                                            ; preds = %bb.kk
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %56) #25
  %i.zp = load ptr, ptr %59, align 8, !tbaa !164  ; 3 uses
  %.not.i.i.i676 = icmp eq ptr %i.zp, null
  br i1 %.not.i.i.i676, label %_ZNSt6vectorImSaImEED2Ev.exit677, label %bb.km

bb.km:                                            ; preds = %bb.kl
  %i.zq = getelementptr inbounds nuw i8, ptr %59, i64 16
  %i.zr = load ptr, ptr %i.zq, align 8, !tbaa !165
  %i.zs = ptrtoint ptr %i.zr to i64
  %i.zt = ptrtoint ptr %i.zp to i64
  %i.zu = sub i64 %i.zs, %i.zt
  call void @_ZdlPvm(ptr noundef nonnull %i.zp, i64 noundef %i.zu) #26
  br label %_ZNSt6vectorImSaImEED2Ev.exit677

_ZNSt6vectorImSaImEED2Ev.exit677:                 ; preds = %bb.kl, %bb.km
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #25
  %i.zv = load ptr, ptr %57, align 8, !tbaa !134  ; 3 uses
  %i.zw = load ptr, ptr %i.za, align 8, !tbaa !135 ; 2 uses
  %.not4.i.i.i678 = icmp eq ptr %i.zv, %i.zw
  br i1 %.not4.i.i.i678, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i684, label %.lr.ph.i.i.i679

.lr.ph.i.i.i679:                                  ; preds = %_ZNSt6vectorImSaImEED2Ev.exit677, %.lr.ph.i.i.i679
  %.05.i.i.i680 = phi ptr [ %i.zx, %.lr.ph.i.i.i679 ], [ %i.zv, %_ZNSt6vectorImSaImEED2Ev.exit677 ] ; 2 uses
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i680) #25
  %i.zx = getelementptr inbounds nuw i8, ptr %.05.i.i.i680, i64 8 ; 2 uses
  %.not.i.i.i681 = icmp eq ptr %i.zx, %i.zw
  br i1 %.not.i.i.i681, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i682, label %.lr.ph.i.i.i679, !llvm.loop !7

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i682: ; preds = %.lr.ph.i.i.i679
  %.pr.i683 = load ptr, ptr %57, align 8, !tbaa !134
  br label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i684

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i684: ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i682, %_ZNSt6vectorImSaImEED2Ev.exit677
  %i.zy = phi ptr [ %.pr.i683, %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i682 ], [ %i.zv, %_ZNSt6vectorImSaImEED2Ev.exit677 ] ; 3 uses
  %.not.i.i1.i685 = icmp eq ptr %i.zy, null
  br i1 %.not.i.i1.i685, label %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit687, label %bb.kn

bb.kn:                                            ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i684
  %i.zz = load ptr, ptr %i.yu, align 8, !tbaa !136
  %i.aaa = ptrtoint ptr %i.zz to i64
  %i.aab = ptrtoint ptr %i.zy to i64
  %i.aac = sub i64 %i.aaa, %i.aab
  call void @_ZdlPvm(ptr noundef nonnull %i.zy, i64 noundef %i.aac) #26
  br label %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit687

_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit687:    ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i684, %bb.kn
  %i.aad = getelementptr inbounds nuw i8, ptr %58, i64 8
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aad) #25
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %58) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #25
  br label %bb.ks

.loopexit939.loopexit1120:                        ; preds = %bb.kd
  %i.aae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %58) #25
  br label %.loopexit939

bb.ko:                                            ; preds = %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i805.1
  %i.aaf = landingpad { ptr, i32 }
          cleanup
  br label %bb.kq

bb.kp:                                            ; preds = %bb.kk
  %i.aag = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %56) #25
  br label %bb.kq

bb.kq:                                            ; preds = %bb.kp, %bb.ko
  %.pn = phi { ptr, i32 } [ %i.aag, %bb.kp ], [ %i.aaf, %bb.ko ]
  %i.aah = load ptr, ptr %59, align 8, !tbaa !164 ; 3 uses
  %.not.i.i.i688 = icmp eq ptr %i.aah, null
  br i1 %.not.i.i.i688, label %_ZNSt6vectorImSaImEED2Ev.exit689, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.aai = getelementptr inbounds nuw i8, ptr %59, i64 16
  %i.aaj = load ptr, ptr %i.aai, align 8, !tbaa !165
  %i.aak = ptrtoint ptr %i.aaj to i64
  %i.aal = ptrtoint ptr %i.aah to i64
  %i.aam = sub i64 %i.aak, %i.aal
  call void @_ZdlPvm(ptr noundef nonnull %i.aah, i64 noundef %i.aam) #26
  br label %_ZNSt6vectorImSaImEED2Ev.exit689
end_hunk_1
begin_hunk_2_@_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJmN4bzla4util14TimerStatisticENS8_13TimeStatisticENS8_18HistogramStatisticEEESt4lessIS5_ESaISt4pairIKS5_SC_EEE7emplaceIJRSG_mEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_:bb.a
  %.08.lcssa.i.i.i21 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJmN4bzla4util14TimerStatisticENS8_13TimeStatisticENS8_18HistogramStatisticEEESt4lessIS5_ESaISt4pairIKS5_SC_EEE11lower_boundERSG_.exit ], [ %i.c, %bb.a ]
  %i.x = tail call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St7variantIJmN4bzla4util14TimerStatisticENSA_13TimeStatisticENSA_18HistogramStatisticEEEESt10_Select1stISF_ESt4lessIS5_ESaISF_EE22_M_emplace_hint_uniqueIJRS7_mEEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i21, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit, %.critedge
  %.sroa.019.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %.sroa.3.0 = phi i8 [ 1, %.critedge ], [ 0, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.019.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St7variantIJmN4bzla4util14TimerStatisticENSA_13TimeStatisticENSA_18HistogramStatisticEEEESt10_Select1stISF_ESt4lessIS5_ESaISF_EE22_M_emplace_hint_uniqueIJRS7_mEEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::variant<unsigned long, bzla::util::TimerStatistic, bzla::util::TimeStatistic, bzla::util::HistogramStatistic>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::variant<unsigned long, bzla::util::TimerStatistic, bzla::util::TimeStatistic, bzla::util::HistogramStatistic>>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store ptr %0, ptr %4, align 8, !tbaa !266
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #27 ; 8 uses
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St7variantIJmN4bzla4util14TimerStatisticENSA_13TimeStatisticENSA_18HistogramStatisticEEEESt10_Select1stISF_ESt4lessIS5_ESaISF_EE17_M_construct_nodeIJRS7_mEEEvPSt13_Rb_tree_nodeISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  store ptr %i.b, ptr %i.a, align 8, !tbaa !269
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.d = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St7variantIJmN4bzla4util14TimerStatisticENSA_13TimeStatisticENSA_18HistogramStatisticEEEESt10_Select1stISF_ESt4lessIS5_ESaISF_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISF_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.e = extractvalue { ptr, ptr } %i.d, 0        ; 2 uses
  %i.f = extractvalue { ptr, ptr } %i.d, 1        ; 5 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ne ptr %i.e, null
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.h
  br i1 %or.cond.i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.j = load i64, ptr %i.i, align 8, !tbaa !98   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !98   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.j) ; 2 uses
  %i.m = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.m, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !99
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !99
  %i.q = tail call i32 @memcmp(ptr noundef %i.p, ptr noundef %i.o, i64 noundef %.sroa.speculated.i.i.i.i.i) #25 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.d
  %i.r = sub i64 %i.j, %i.l
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.r, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.q, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.s = icmp slt i32 %.0.i.i.i.i.i, 0
  br label %.thread

.thread:                                          ; preds = %bb.c, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
  %i.t = phi i1 [ %i.s, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ], [ true, %bb.c ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.t, ptr noundef nonnull %i.b, ptr noundef nonnull %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.g) #25
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !152
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.u, align 8, !tbaa !152
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St7variantIJmN4bzla4util14TimerStatisticENSA_13TimeStatisticENSA_18HistogramStatisticEEEESt10_Select1stISF_ESt4lessIS5_ESaISF_EE10_Auto_nodeD2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St7variantIJmN4bzla4util14TimerStatisticENSA_13TimeStatisticENSA_18HistogramStatisticEEEESt10_Select1stISF_ESt4lessIS5_ESaISF_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %i.x

bb.f:                                             ; preds = %bb.b
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St7variantIJmN4bzla4util14TimerStatisticENSA_13TimeStatisticENSA_18HistogramStatisticEEEESt10_Select1stISF_ESt4lessIS5_ESaISF_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeISF_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.b) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 120) #26
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St7variantIJmN4bzla4util14TimerStatisticENSA_13TimeStatisticENSA_18HistogramStatisticEEEESt10_Select1stISF_ESt4lessIS5_ESaISF_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St7variantIJmN4bzla4util14TimerStatisticENSA_13TimeStatisticENSA_18HistogramStatisticEEEESt10_Select1stISF_ESt4lessIS5_ESaISF_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %bb.f
  %.sroa.0.09 = phi ptr [ %i.b, %.thread ], [ %i.e, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret ptr %.sroa.0.09
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St7variantIJmN4bzla4util14TimerStatisticENSA_13TimeStatisticENSA_18HistogramStatisticEEEESt10_Select1stISF_ESt4lessIS5_ESaISF_EE17_M_construct_nodeIJRS7_mEEEvPSt13_Rb_tree_nodeISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !96
  %i.d = load ptr, ptr %2, align 8, !tbaa !99     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !98   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.f, ptr %i.a, align 8, !tbaa !166
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(88) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.h, ptr %i.b, align 8, !tbaa !99
  %i.i = load i64, ptr %i.a, align 8, !tbaa !166
  store i64 %i.i, ptr %i.c, align 8, !tbaa !52
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.f
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !52
  store i8 %i.k, ptr %i.j, align 1, !tbaa !52
  br label %bb.f

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc.i.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = call ptr @__cxa_begin_catch(ptr %i.m) #25 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 120) #26
  invoke void @__cxa_rethrow() #23
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.f:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.p = load i64, ptr %i.a, align 8, !tbaa !166  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.p, ptr %i.q, align 8, !tbaa !98
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !99
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.u = load i64, ptr %3, align 8, !tbaa !166
  store i64 %i.u, ptr %i.t, align 8, !tbaa !1001
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i8 0, ptr %i.v, align 8, !tbaa !214
  ret void

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.o

bb.h:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #28
  unreachable

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

declare double @exp2(double) local_unnamed_addr

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #22

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { cold noreturn }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #23 = { noreturn }
attributes #24 = { nounwind willreturn memory(read) }
attributes #25 = { nounwind }
attributes #26 = { builtin nounwind }
attributes #27 = { builtin allocsize(0) }
attributes #28 = { noreturn nounwind }

!llvm.module.flags = !{!34, !35}
!llvm.ident = !{!36}
!llvm.errno.tbaa = !{!41}

!0 = distinct !{!0, !69}
!1 = distinct !{!1, !69}
!2 = distinct !{!2, !69}
!3 = distinct !{!3, !69}
!4 = distinct !{!4, !69}
!5 = distinct !{!5, !69}
!6 = distinct !{!6, !69}
!7 = distinct !{!7, !69}
!8 = distinct !{!8, !69}
!9 = distinct !{!9, !69}
!10 = distinct !{!10, !69}
!11 = distinct !{!11, !69}
!12 = distinct !{!12, !69}
!13 = distinct !{!13, !69}
!14 = distinct !{!14, !69}
!15 = distinct !{!15, !69}
!16 = distinct !{!16, !69}
!17 = distinct !{!17, !69}
!18 = distinct !{!18, !69}
!19 = distinct !{!19, !69}
!20 = distinct !{!20, !69}
!21 = distinct !{!21, !69}
!22 = distinct !{!22, !69}
!23 = distinct !{!23, !69}
!24 = distinct !{!24, !69}
!25 = distinct !{!25, !69}
!26 = distinct !{!26, !69}
!27 = distinct !{!27, !69}
!28 = distinct !{!28, !69}
!29 = distinct !{!29, !69}
!30 = distinct !{!30, !69}
!31 = distinct !{!31, !69}
!32 = distinct !{!32, !69}
!33 = distinct !{!33, !69}
!34 = !{i32 8, !"PIC Level", i32 2}
!35 = !{i32 7, !"uwtable", i32 2}
!36 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!"omnipotent char", !37, i64 0}
!39 = !{!"int", !38, i64 0}
!40 = !{!"__libc_errno", !39, i64 0}
!41 = !{!40, !39, i64 0}
!42 = !{!"_ZTSSt14_Rb_tree_color", !38, i64 0}
!43 = !{!"any pointer", !38, i64 0}
!44 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !43, i64 0}
!45 = !{!"_ZTSSt18_Rb_tree_node_base", !42, i64 0, !44, i64 8, !44, i64 16, !44, i64 24}
!46 = !{!"long", !38, i64 0}
!47 = !{!"_ZTSSt15_Rb_tree_header", !45, i64 0, !46, i64 32}
!48 = !{!47, !44, i64 16}
!49 = !{!"vtable pointer", !37, i64 0}
!50 = !{!49, !49, i64 0}
!51 = !{!"bool", !38, i64 0}
!52 = !{!38, !38, i64 0}
!53 = !{!"_ZTSN4bzla8bitblast10AigManager10StatisticsE", !46, i64 0, !46, i64 8, !46, i64 16}
!54 = !{!53, !46, i64 0}
!55 = !{!"p1 _ZTSSt17reference_wrapperIKN4bzla4NodeEE", !43, i64 0}
!56 = !{!55, !55, i64 0}
!57 = !{!"p1 _ZTSN4bzla4NodeE", !43, i64 0}
!58 = !{!"_ZTSSt17reference_wrapperIKN4bzla4NodeEE", !57, i64 0}
!59 = !{!58, !57, i64 0}
!60 = !{!"any p2 pointer", !43, i64 0}
!61 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !60, i64 0}
!62 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !43, i64 0}
!63 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !62, i64 0}
!64 = !{!"float", !38, i64 0}
!65 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !64, i64 0, !46, i64 8}
!66 = !{!"_ZTSSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorINS0_8bitblast7AigNodeESaIS6_EEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE", !61, i64 0, !46, i64 8, !63, i64 16, !46, i64 24, !65, i64 32, !62, i64 48}
!67 = !{!66, !46, i64 24}
!68 = !{!63, !62, i64 0}
!69 = !{!"llvm.loop.mustprogress"}
!70 = !{!66, !46, i64 8}
!71 = !{!66, !61, i64 0}
!72 = !{!62, !62, i64 0}
!73 = !{!"_ZTSNSt8__detail21_Hash_node_code_cacheILb1EEE", !46, i64 0}
!74 = !{!73, !46, i64 0}
!75 = !{!"p1 _ZTSN4bzla8bitblast7AigNodeE", !43, i64 0}
!76 = !{!"_ZTSNSt12_Vector_baseIN4bzla8bitblast7AigNodeESaIS2_EE17_Vector_impl_dataE", !75, i64 0, !75, i64 8, !75, i64 16}
!77 = !{!76, !75, i64 0}
!78 = !{!76, !75, i64 8}
!79 = !{!76, !75, i64 16}
!80 = !{!75, !75, i64 0}
!81 = !{!51, !51, i64 0}
!82 = !{i8 0, i8 2}
!83 = !{}
!84 = !{!"_ZTSNSt12_Vector_baseISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE17_Vector_impl_dataE", !55, i64 0, !55, i64 8, !55, i64 16}
!85 = !{!84, !55, i64 8}
!86 = !{!"_ZTSN4bzla9BitVectorE", !46, i64 0, !38, i64 8}
!87 = !{!86, !46, i64 0}
!88 = !{!"_ZTSN4bzla8bitblast7AigNodeE", !46, i64 0}
!89 = !{!88, !46, i64 0}
!90 = !{!"p1 _ZTSN4bzla8bitblast10AigManagerE", !43, i64 0}
!91 = !{!"p1 _ZTSN4bzla8bitblast11AigNodeDataE", !43, i64 0}
!92 = !{!"_ZTSN4bzla8bitblast11AigNodeDataE", !90, i64 0, !46, i64 8, !39, i64 16, !39, i64 20, !88, i64 24, !88, i64 32, !91, i64 40}
!93 = !{!92, !46, i64 8}
!94 = !{!"p1 omnipotent char", !43, i64 0}
!95 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !94, i64 0}
!96 = !{!95, !94, i64 0}
!97 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !95, i64 0, !46, i64 8, !38, i64 16}
!98 = !{!97, !46, i64 8}
!99 = !{!97, !94, i64 0}
!100 = !{!"_ZTSSt10_HashtableIN4bzla4NodeESt4pairIKS1_S1_ESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE", !61, i64 0, !46, i64 8, !63, i64 16, !46, i64 24, !65, i64 32, !62, i64 48}
!101 = !{!100, !61, i64 0}
!102 = !{!100, !46, i64 8}
!103 = !{!65, !64, i64 0}
!104 = !{!"_ZTSSt10_HashtableIN4bzla4NodeESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE", !61, i64 0, !46, i64 8, !63, i64 16, !46, i64 24, !65, i64 32, !62, i64 48}
!105 = !{!104, !61, i64 0}
!106 = !{!104, !46, i64 8}
!107 = !{!"_ZTSSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE", !61, i64 0, !46, i64 8, !63, i64 16, !46, i64 24, !65, i64 32, !62, i64 48}
!108 = !{!107, !61, i64 0}
!109 = !{!107, !46, i64 8}
!110 = !{!"p1 _ZTSN4bzla3EnvE", !43, i64 0}
!111 = !{!"p1 _ZTSN4bzla4util6LoggerE", !43, i64 0}
!112 = !{!"p1 _ZTSN4bzla4util14TimerStatisticE", !43, i64 0}
!113 = !{!"_ZTSN4bzla10preprocess17PreprocessingPass10StatisticsE", !112, i64 0}
!114 = !{!"_ZTSSt13unordered_setIN4bzla4NodeESt4hashIS1_ESt8equal_toIS1_ESaIS1_EE", !107, i64 0}
!115 = !{!"_ZTSN4bzla10preprocess17PreprocessingPassE", !110, i64 8, !111, i64 16, !113, i64 24, !97, i64 32, !97, i64 64, !114, i64 96}
!116 = !{!"_ZTSSt13unordered_mapIN4bzla4NodeES1_St4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S1_EEE", !100, i64 0}
!117 = !{!"_ZTSNSt12_Vector_baseIN4bzla4NodeESaIS1_EE17_Vector_impl_dataE", !57, i64 0, !57, i64 8, !57, i64 16}
!118 = !{!"_ZTSNSt12_Vector_baseIN4bzla4NodeESaIS1_EE12_Vector_implE", !117, i64 0}
!119 = !{!"_ZTSSt12_Vector_baseIN4bzla4NodeESaIS1_EE", !118, i64 0}
!120 = !{!"_ZTSSt6vectorIN4bzla4NodeESaIS1_EE", !119, i64 0}
!121 = !{!"_ZTSSt13unordered_mapIN4bzla4NodeEmSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_mEEE", !104, i64 0}
!122 = !{!"p1 _ZTSSt13unordered_mapIN4bzla4NodeES1_St4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S1_EEE", !43, i64 0}
!123 = !{!"p1 _ZTSSt13unordered_mapIN4bzla4NodeEmSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_mEEE", !43, i64 0}
!124 = !{!"p1 _ZTSN4bzla4util18HistogramStatisticE", !43, i64 0}
!125 = !{!"p1 long", !43, i64 0}
!126 = !{!"_ZTSN4bzla8Rewriter10StatisticsE", !124, i64 0, !124, i64 8, !125, i64 16, !125, i64 24}
!127 = !{!"_ZTSN4bzla8RewriterE", !110, i64 8, !111, i64 16, !38, i64 24, !51, i64 25, !116, i64 32, !122, i64 88, !116, i64 96, !46, i64 152, !51, i64 160, !123, i64 168, !126, i64 176}
!128 = !{!"_ZTSN4bzla10preprocess4pass13PassNormalize10StatisticsE", !112, i64 0, !112, i64 8, !112, i64 16, !112, i64 24, !112, i64 32, !125, i64 40, !125, i64 48, !125, i64 56, !125, i64 64, !125, i64 72}
!129 = !{!"_ZTSN4bzla10preprocess4pass13PassNormalizeE", !115, i64 0, !116, i64 152, !120, i64 208, !121, i64 232, !114, i64 288, !127, i64 344, !51, i64 552, !51, i64 553, !128, i64 560}
!130 = !{!129, !51, i64 552}
!131 = !{!100, !62, i64 16}
!132 = !{!107, !62, i64 16}
!133 = !{!104, !62, i64 16}
!134 = !{!117, !57, i64 0}
!135 = !{!117, !57, i64 8}
!136 = !{!117, !57, i64 16}
!137 = !{!129, !112, i64 576}
!138 = !{i64 8}
!139 = !{!"_ZTSSt10_HashtableISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS4_NS1_4util7IntegerEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS2_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE", !61, i64 0, !46, i64 8, !63, i64 16, !46, i64 24, !65, i64 32, !62, i64 48}
!140 = !{!139, !61, i64 0}
!141 = !{!139, !46, i64 8}
!142 = !{!84, !55, i64 0}
!143 = !{!84, !55, i64 16}
!144 = !{!39, !39, i64 0}
!145 = !{!139, !62, i64 16}
!146 = !{!47, !44, i64 8}
!147 = !{!44, !44, i64 0}
!148 = !{!57, !57, i64 0}
!149 = !{!115, !110, i64 8}
!150 = !{!47, !42, i64 0}
!151 = !{!47, !44, i64 24}
!152 = !{!47, !46, i64 32}
!153 = !{!"p1 _ZTSN4bzla4node8NodeDataE", !43, i64 0}
!154 = !{!"_ZTSN4bzla4NodeE", !153, i64 0}
!155 = !{!154, !153, i64 0}
!156 = !{!"p1 _ZTSSt4pairIN4bzla4NodeENS0_4util7IntegerEE", !43, i64 0}
!157 = !{!156, !156, i64 0}
!158 = !{!"_ZTSNSt12_Vector_baseISt4pairIN4bzla4NodeENS1_4util7IntegerEESaIS5_EE17_Vector_impl_dataE", !156, i64 0, !156, i64 8, !156, i64 16}
!159 = !{!158, !156, i64 8}
!160 = !{!158, !156, i64 16}
!161 = !{!158, !156, i64 0}
!162 = !{!45, !44, i64 8}
end_hunk_2
