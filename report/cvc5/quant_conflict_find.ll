Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/quant_conflict_find?download=true
inline.NumInlined: 7873
inline.NumDeleted: 2411
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN4cvc58internal6theory11quantifiers8MatchGen11reset_roundEv:bb.a
  br i1 %i.ko, label %.critedge.i112, label %bb.bx

.critedge.i112:                                   ; preds = %bb.bw, %_ZNSt3mapImN4cvc58internal12NodeTemplateILb1EEESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i110, %bb.bv
  %.08.lcssa.i.i.i11.i113 = phi ptr [ %.19.i.i.i.i105, %bb.bw ], [ %.19.i.i.i.i105, %_ZNSt3mapImN4cvc58internal12NodeTemplateILb1EEESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i110 ], [ %i.ei, %bb.bv ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  store ptr %i.d, ptr %1, align 8, !tbaa !178, !alias.scope !706
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.kp = invoke ptr @_ZNSt8_Rb_treeImSt4pairIKmN4cvc58internal12NodeTemplateILb1EEEESt10_Select1stIS6_ESt4lessImESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOmEESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.eg, ptr %.08.lcssa.i.i.i11.i113, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %.noexc114 unwind label %bb.ce

.noexc114:                                        ; preds = %.critedge.i112
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %bb.bx

bb.bx:                                            ; preds = %.noexc114, %bb.bw
  %.sroa.06.0.i111 = phi ptr [ %i.kp, %.noexc114 ], [ %.19.i.i.i.i105, %bb.bw ]
  %i.kq = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i111, i64 40 ; 2 uses
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !120 ; 4 uses
  %i.ks = load ptr, ptr %11, align 8, !tbaa !122
  %.not.i116 = icmp eq ptr %i.kr, %i.ks
  br i1 %.not.i116, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit, label %bb.by, !prof !125

bb.by:                                            ; preds = %bb.bx
  %i.kt = load i64, ptr %i.kr, align 8            ; 3 uses
  %i.ku = and i64 %i.kt, 1152920405095219200
  %.not.i.i117 = icmp eq i64 %i.ku, 1152920405095219200
  br i1 %.not.i.i117, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i118, label %bb.bz, !prof !125

bb.bz:                                            ; preds = %bb.by
  %i.kv = add i64 %i.kt, 1152920405095219200
  %i.kw = and i64 %i.kv, 1152920405095219200      ; 2 uses
  %i.kx = and i64 %i.kt, -1152920405095219201
  %i.ky = or disjoint i64 %i.kw, %i.kx
  store i64 %i.ky, ptr %i.kr, align 8
  %i.kz = icmp eq i64 %i.kw, 0
  br i1 %i.kz, label %bb.ca, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i118, !prof !125

bb.ca:                                            ; preds = %bb.bz
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.kr)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i118 unwind label %bb.ce

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i118: ; preds = %bb.ca, %bb.bz, %bb.by
  %i.la = load ptr, ptr %11, align 8, !tbaa !122  ; 5 uses
  store ptr %i.la, ptr %i.kq, align 8, !tbaa !120
  %i.lb = load i64, ptr %i.la, align 8            ; 3 uses
  %i.lc = lshr i64 %i.lb, 40
  %i.ld = trunc nuw nsw i64 %i.lc to i32
  %i.le = and i32 %i.ld, 1048575                  ; 3 uses
  %i.lf = icmp samesign ult i32 %i.le, 1048574
  br i1 %i.lf, label %bb.cb, label %bb.cc, !prof !124

bb.cb:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i118
  %i.lg = add nuw nsw i32 %i.le, 1
  %i.lh = zext nneg i32 %i.lg to i64
  %i.li = shl nuw nsw i64 %i.lh, 40
  %i.lj = and i64 %i.lb, -1152920405095219201
  %i.lk = or i64 %i.li, %i.lj
  store i64 %i.lk, ptr %i.la, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit

bb.cc:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i118
  %i.ll = icmp eq i32 %i.le, 1048574
  br i1 %i.ll, label %bb.cd, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit, !prof !125

bb.cd:                                            ; preds = %bb.cc
  %i.lm = or i64 %i.lb, 1152920405095219200
  store i64 %i.lm, ptr %i.la, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.la)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit unwind label %bb.ce

_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit: ; preds = %bb.cc, %bb.cb, %bb.bx, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cd, %bb.ca, %.critedge.i112
  %i.ln = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  br label %.body

bb.cf:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit100, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.cg

.body:                                            ; preds = %bb.bu, %bb.ce, %bb.bb, %bb.aw, %bb.av
  %.pn.pn.pn = phi { ptr, i32 } [ %i.hh, %bb.av ], [ %.pn, %bb.bu ], [ %i.ln, %bb.ce ], [ %i.hi, %bb.aw ], [ %i.hp, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.cl

bb.cg:                                            ; preds = %bb.cf, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit66
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread126, label %bb.ad, !llvm.loop !700

bb.ch:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %.loopexit

.thread126:                                       ; preds = %bb.cg, %bb.o, %bb.ac, %._crit_edge
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !45
  invoke void @_ZNSt8_Rb_treeImSt4pairIKmN4cvc58internal12NodeTemplateILb0EEEESt10_Select1stIS6_ESt4lessImESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.lo, ptr noundef %i.lq)
          to label %_ZNSt3mapImN4cvc58internal12NodeTemplateILb0EEESt4lessImESaISt4pairIKmS3_EEE5clearEv.exit unwind label %bb.ci

bb.ci:                                            ; preds = %.thread126
  %i.lr = landingpad { ptr, i32 }
          catch ptr null
  %i.ls = extractvalue { ptr, i32 } %i.lr, 0
  call void @__clang_call_terminate(ptr %i.ls) #25
  unreachable

_ZNSt3mapImN4cvc58internal12NodeTemplateILb0EEESt4lessImESaISt4pairIKmS3_EEE5clearEv.exit: ; preds = %.thread126
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  store ptr null, ptr %i.lp, align 8, !tbaa !45
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 360
  store ptr %i.lt, ptr %i.lu, align 8, !tbaa !46
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr %i.lt, ptr %i.lv, align 8, !tbaa !47
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i64 0, ptr %i.lw, align 8, !tbaa !48
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !45
  invoke void @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.lx, ptr noundef %i.lz)
          to label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE5clearEv.exit unwind label %bb.cj

bb.cj:                                            ; preds = %_ZNSt3mapImN4cvc58internal12NodeTemplateILb0EEESt4lessImESaISt4pairIKmS3_EEE5clearEv.exit
  %i.ma = landingpad { ptr, i32 }
          catch ptr null
  %i.mb = extractvalue { ptr, i32 } %i.ma, 0
  call void @__clang_call_terminate(ptr %i.mb) #25
  unreachable

_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE5clearEv.exit: ; preds = %_ZNSt3mapImN4cvc58internal12NodeTemplateILb0EEESt4lessImESaISt4pairIKmS3_EEE5clearEv.exit
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  store ptr null, ptr %i.ly, align 8, !tbaa !45
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 408
  store ptr %i.mc, ptr %i.md, align 8, !tbaa !46
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 416
  store ptr %i.mc, ptr %i.me, align 8, !tbaa !47
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 424
  store i64 0, ptr %i.mf, align 8, !tbaa !48
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !45
  invoke void @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.mg, ptr noundef %i.mi)
          to label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE5clearEv.exit121 unwind label %bb.ck

bb.ck:                                            ; preds = %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE5clearEv.exit
  %i.mj = landingpad { ptr, i32 }
          catch ptr null
  %i.mk = extractvalue { ptr, i32 } %i.mj, 0
  call void @__clang_call_terminate(ptr %i.mk) #25
  unreachable

_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE5clearEv.exit121: ; preds = %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE5clearEv.exit
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  store ptr null, ptr %i.mh, align 8, !tbaa !45
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr %i.ml, ptr %i.mm, align 8, !tbaa !46
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 296
  store ptr %i.ml, ptr %i.mn, align 8, !tbaa !47
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i64 0, ptr %i.mo, align 8, !tbaa !48
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.ab, %bb.o, %bb.ch, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE5clearEv.exit121
  %.8 = phi i1 [ true, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE5clearEv.exit121 ], [ false, %bb.ab ], [ false, %bb.ch ], [ false, %bb.o ], [ false, %.lr.ph ]
  ret i1 %.8

bb.cl:                                            ; preds = %bb.au, %.body, %bb.aa
  %.pn57.pn = phi { ptr, i32 } [ %i.hg, %bb.au ], [ %i.dg, %bb.aa ], [ %.pn.pn.pn, %.body ]
  resume { ptr, i32 } %.pn57.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory11quantifiers8MatchGen5resetEb(ptr noundef nonnull align 8 dereferenceable(496) initializes((16, 17)) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.1173", align 8   ; 4 uses
  %3 = alloca %"class.std::tuple.1138", align 1   ; 3 uses
  %4 = alloca %"class.std::tuple.1173", align 8   ; 4 uses
  %5 = alloca %"class.std::tuple.1138", align 1   ; 3 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate.398", align 8 ; 5 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate.398", align 8 ; 2 uses
  %8 = alloca %"class.cvc5::internal::NodeTemplate.398", align 8 ; 2 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %9 = alloca %"class.cvc5::internal::NodeTemplate.398", align 8 ; 2 uses
  %10 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %11 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %12 = alloca %"class.cvc5::internal::NodeTemplate.398", align 8 ; 2 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %13 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %14 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %15 = alloca %"class.cvc5::internal::NodeTemplate.398", align 8 ; 2 uses
  %16 = alloca [2 x %"class.cvc5::internal::NodeTemplate"], align 16 ; 19 uses
  %17 = alloca %"class.cvc5::internal::NodeTemplate.398", align 8 ; 5 uses
  %18 = alloca %"class.cvc5::internal::NodeTemplate.398", align 8 ; 2 uses
  %19 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %20 = alloca %"class.cvc5::internal::NodeTemplate.398", align 8 ; 5 uses
  %21 = alloca %"class.cvc5::internal::NodeTemplate.398", align 8 ; 2 uses
  %22 = alloca %"class.cvc5::internal::NodeTemplate.398", align 8 ; 2 uses
  %23 = alloca %"class.cvc5::internal::NodeTemplate.398", align 8 ; 2 uses
  %24 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %25 = alloca %"class.cvc5::internal::NodeTemplate.398", align 8 ; 2 uses
  %i.f = alloca i64, align 8                      ; 9 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.k = load i8, ptr %i.j, align 2, !tbaa !488, !range !405, !noundef !144
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.m = zext i1 %1 to i8
  %i.n = xor i8 %i.k, %i.m
  store i8 %i.n, ptr %i.l, align 8, !tbaa !489
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 8 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !490  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 8 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !491
  %.not.i.i = icmp eq ptr %i.s, %i.q
  %indvars.iv.sroa.gep463 = getelementptr inbounds nuw i8, ptr %16, i64 8
  br i1 %.not.i.i, label %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE5clearEv.exit, label %_ZSt8_DestroyIPPN4cvc58internal16NodeTemplateTrieILb0EEES4_EvT_S6_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPN4cvc58internal16NodeTemplateTrieILb0EEES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %bb.a
  store ptr %i.q, ptr %i.r, align 8, !tbaa !491
  br label %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE5clearEv.exit

_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPPN4cvc58internal16NodeTemplateTrieILb0EEES4_EvT_S6_RSaIT0_E.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !492  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !493
  %.not.i.i133 = icmp eq ptr %i.w, %i.u
  br i1 %.not.i.i133, label %_ZNSt6vectorISt17_Rb_tree_iteratorISt4pairIKN4cvc58internal12NodeTemplateILb0EEENS3_16NodeTemplateTrieILb0EEEEESaISA_EE5clearEv.exit, label %_ZSt8_DestroyIPSt17_Rb_tree_iteratorISt4pairIKN4cvc58internal12NodeTemplateILb0EEENS3_16NodeTemplateTrieILb0EEEEESA_EvT_SC_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt17_Rb_tree_iteratorISt4pairIKN4cvc58internal12NodeTemplateILb0EEENS3_16NodeTemplateTrieILb0EEEEESA_EvT_SC_RSaIT0_E.exit.i.i: ; preds = %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE5clearEv.exit
  store ptr %i.u, ptr %i.v, align 8, !tbaa !493
  br label %_ZNSt6vectorISt17_Rb_tree_iteratorISt4pairIKN4cvc58internal12NodeTemplateILb0EEENS3_16NodeTemplateTrieILb0EEEEESaISA_EE5clearEv.exit

_ZNSt6vectorISt17_Rb_tree_iteratorISt4pairIKN4cvc58internal12NodeTemplateILb0EEENS3_16NodeTemplateTrieILb0EEEEESaISA_EE5clearEv.exit: ; preds = %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE5clearEv.exit, %_ZSt8_DestroyIPSt17_Rb_tree_iteratorISt4pairIKN4cvc58internal12NodeTemplateILb0EEENS3_16NodeTemplateTrieILb0EEEEESA_EvT_SC_RSaIT0_E.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !45
  invoke void @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef %i.z)
          to label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE5clearEv.exit unwind label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorISt17_Rb_tree_iteratorISt4pairIKN4cvc58internal12NodeTemplateILb0EEENS3_16NodeTemplateTrieILb0EEEEESaISA_EE5clearEv.exit
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #25
  unreachable

_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE5clearEv.exit: ; preds = %_ZNSt6vectorISt17_Rb_tree_iteratorISt4pairIKN4cvc58internal12NodeTemplateILb0EEENS3_16NodeTemplateTrieILb0EEEEESaISA_EE5clearEv.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  store ptr null, ptr %i.y, align 8, !tbaa !45
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !46
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 296
  store ptr %i.ac, ptr %i.ae, align 8, !tbaa !47
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i64 0, ptr %i.af, align 8, !tbaa !48
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  store i32 -1, ptr %i.ag, align 8, !tbaa !494
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 4 uses
  store i8 1, ptr %i.ah, align 4, !tbaa !495
  %i.ai = load i8, ptr %i.l, align 8, !tbaa !489, !range !405, !noundef !144
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !496
  %i.ak = load i16, ptr %i.o, align 8, !tbaa !177
  switch i16 %i.ak, label %bb.g [
    i16 0, label %bb.c
    i16 1, label %bb.d
  ]

bb.c:                                             ; preds = %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE5clearEv.exit
  store i8 0, ptr %i.ah, align 4, !tbaa !495
  br label %bb.go

bb.d:                                             ; preds = %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE5clearEv.exit
  store i8 0, ptr %i.ah, align 4, !tbaa !495
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 0, ptr %i.a, align 8, !tbaa !138
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !45 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 4 uses
  %.not10.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.an, %bb.d ] ; 5 uses
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !136 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapImN4cvc58internal12NodeTemplateILb1EEESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !15

_ZNSt3mapImN4cvc58internal12NodeTemplateILb1EEESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !138
  %i.ar = icmp eq ptr %.012.i.i.i.i, %i.ao
  %i.as = icmp ne i64 %i.aq, 0
  %or.cond337 = select i1 %i.ar, i1 true, i1 %i.as
  br i1 %or.cond337, label %.critedge.i, label %_ZNSt3mapImN4cvc58internal12NodeTemplateILb1EEESt4lessImESaISt4pairIKmS3_EEEixEOm.exit

.critedge.i:                                      ; preds = %_ZNSt3mapImN4cvc58internal12NodeTemplateILb1EEESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i, %bb.d
  %.08.lcssa.i.i.i11.i = phi ptr [ %i.ao, %bb.d ], [ %.012.i.i.i.i, %_ZNSt3mapImN4cvc58internal12NodeTemplateILb1EEESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store ptr %i.a, ptr %4, align 8, !tbaa !178, !alias.scope !716
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.at = call ptr @_ZNSt8_Rb_treeImSt4pairIKmN4cvc58internal12NodeTemplateILb1EEEESt10_Select1stIS6_ESt4lessImESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOmEESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.al, ptr nonnull %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %_ZNSt3mapImN4cvc58internal12NodeTemplateILb1EEESt4lessImESaISt4pairIKmS3_EEEixEOm.exit

_ZNSt3mapImN4cvc58internal12NodeTemplateILb1EEESt4lessImESaISt4pairIKmS3_EEEixEOm.exit: ; preds = %_ZNSt3mapImN4cvc58internal12NodeTemplateILb1EEESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i, %.critedge.i
  %.sroa.06.0.i = phi ptr [ %i.at, %.critedge.i ], [ %.012.i.i.i.i, %_ZNSt3mapImN4cvc58internal12NodeTemplateILb1EEESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  %i.av = call noundef zeroext i1 @_ZNK4cvc58internal12NodeTemplateILb1EE7isConstEv(ptr noundef nonnull align 8 dereferenceable(8) %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  br i1 %i.av, label %bb.e, label %.critedge

bb.e:                                             ; preds = %_ZNSt3mapImN4cvc58internal12NodeTemplateILb1EEESt4lessImESaISt4pairIKmS3_EEEixEOm.exit
  store i64 0, ptr %i.b, align 8, !tbaa !138
  %i.aw = load ptr, ptr %i.am, align 8, !tbaa !45 ; 2 uses
  %.not10.i.i.i.i134 = icmp eq ptr %i.aw, null
  br i1 %.not10.i.i.i.i134, label %.critedge.i145, label %.lr.ph.i.i.i.i135

.lr.ph.i.i.i.i135:                                ; preds = %bb.e, %.lr.ph.i.i.i.i135
  %.012.i.i.i.i136 = phi ptr [ %.1.i.i.i.i141, %.lr.ph.i.i.i.i135 ], [ %i.aw, %bb.e ] ; 5 uses
  %.1.in.i.i.i.i140 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i136, i64 16
  %.1.i.i.i.i141 = load ptr, ptr %.1.in.i.i.i.i140, align 8, !tbaa !136 ; 2 uses
  %.not.i.i.i.i142 = icmp eq ptr %.1.i.i.i.i141, null
  br i1 %.not.i.i.i.i142, label %_ZNSt3mapImN4cvc58internal12NodeTemplateILb1EEESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i143, label %.lr.ph.i.i.i.i135, !llvm.loop !15

_ZNSt3mapImN4cvc58internal12NodeTemplateILb1EEESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i143: ; preds = %.lr.ph.i.i.i.i135
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i136, i64 32
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !138
  %i.az = icmp eq ptr %.012.i.i.i.i136, %i.ao
  %i.ba = icmp ne i64 %i.ay, 0
  %or.cond338 = select i1 %i.az, i1 true, i1 %i.ba
  br i1 %or.cond338, label %.critedge.i145, label %_ZNSt3mapImN4cvc58internal12NodeTemplateILb1EEESt4lessImESaISt4pairIKmS3_EEEixEOm.exit147

.critedge.i145:                                   ; preds = %_ZNSt3mapImN4cvc58internal12NodeTemplateILb1EEESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i143, %bb.e
  %.08.lcssa.i.i.i11.i146 = phi ptr [ %i.ao, %bb.e ], [ %.012.i.i.i.i136, %_ZNSt3mapImN4cvc58internal12NodeTemplateILb1EEESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i143 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store ptr %i.b, ptr %2, align 8, !tbaa !178, !alias.scope !717
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.bb = call ptr @_ZNSt8_Rb_treeImSt4pairIKmN4cvc58internal12NodeTemplateILb1EEEESt10_Select1stIS6_ESt4lessImESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOmEESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.al, ptr nonnull %.08.lcssa.i.i.i11.i146, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %_ZNSt3mapImN4cvc58internal12NodeTemplateILb1EEESt4lessImESaISt4pairIKmS3_EEEixEOm.exit147

_ZNSt3mapImN4cvc58internal12NodeTemplateILb1EEESt4lessImESaISt4pairIKmS3_EEEixEOm.exit147: ; preds = %_ZNSt3mapImN4cvc58internal12NodeTemplateILb1EEESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i143, %.critedge.i145
  %.sroa.06.0.i144 = phi ptr [ %i.bb, %.critedge.i145 ], [ %.012.i.i.i.i136, %_ZNSt3mapImN4cvc58internal12NodeTemplateILb1EEESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i143 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i144, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !120
  %i.be = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNK4cvc58internal4expr9NodeValue8getConstIbEERKT_v(ptr noundef nonnull align 8 dereferenceable(24) %i.bd)
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !406, !range !405, !noundef !144
  %i.bg = load i8, ptr %i.l, align 8, !tbaa !489, !range !405, !noundef !144
  %i.bh = icmp eq i8 %i.bf, %i.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br i1 %i.bh, label %bb.f, label %bb.go

bb.f:                                             ; preds = %_ZNSt3mapImN4cvc58internal12NodeTemplateILb1EEESt4lessImESaISt4pairIKmS3_EEEixEOm.exit147
  store i32 0, ptr %i.ag, align 8, !tbaa !494
  br label %bb.go

.critedge:                                        ; preds = %_ZNSt3mapImN4cvc58internal12NodeTemplateILb1EEESt4lessImESaISt4pairIKmS3_EEEixEOm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.go

bb.g:                                             ; preds = %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE5clearEv.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 11 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !444
  %i.bk = tail call noundef zeroext i1 @_ZN4cvc58internal6theory11quantifiers9QuantInfo19isBaseMatchCompleteEv(ptr noundef nonnull align 8 dereferenceable(648) %i.bj)
  br i1 %i.bk, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i8 0, ptr %i.ah, align 4, !tbaa !495
  store i32 0, ptr %i.ag, align 8, !tbaa !494
  br label %bb.go

bb.i:                                             ; preds = %bb.g
  %i.bl = load i16, ptr %i.o, align 8, !tbaa !177
  switch i16 %i.bl, label %bb.gj [
    i16 6, label %bb.j
    i16 5, label %bb.ai
    i16 8, label %bb.bl
    i16 7, label %bb.bl
    i16 2, label %bb.bx
    i16 3, label %bb.bx
  ]
end_hunk_0
begin_hunk_1_@_ZN4cvc58internal6theory11quantifiers8MatchGen5resetEb:bb.a
  br label %bb.go

bb.bk:                                            ; preds = %bb.bd, %bb.bg, %bb.bh
  %.pn97 = phi { ptr, i32 } [ %i.gb, %bb.bh ], [ %i.fy, %bb.bd ], [ %.pn95, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  br label %common.resume

bb.bl:                                            ; preds = %bb.i, %bb.i
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !46 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %.not343364 = icmp eq ptr %i.ge, %i.gf
  br i1 %.not343364, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.bw, %bb.bl
  %i.gg = load ptr, ptr %i.r, align 8, !tbaa !491 ; 4 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !499
  %.not.i.i166 = icmp eq ptr %i.gg, %i.gi
  br i1 %.not.i.i166, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %._crit_edge
  store ptr null, ptr %i.gg, align 8, !tbaa !498
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  store ptr %i.gj, ptr %i.r, align 8, !tbaa !491
  br label %bb.go

bb.bn:                                            ; preds = %._crit_edge
  %i.gk = load ptr, ptr %i.p, align 8, !tbaa !490 ; 4 uses
  %i.gl = ptrtoint ptr %i.gg to i64
  %i.gm = ptrtoint ptr %i.gk to i64               ; 2 uses
  %i.gn = sub i64 %i.gl, %i.gm                    ; 5 uses
  %i.go = icmp eq i64 %i.gn, 9223372036854775800
  br i1 %i.go, label %bb.bo, label %_ZNKSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.bo:                                            ; preds = %bb.bn
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.239) #26
  unreachable

_ZNKSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bn
  %i.gp = ashr exact i64 %i.gn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.gp, i64 1)
  %i.gq = add nsw i64 %.sroa.speculated.i.i.i.i, %i.gp ; 2 uses
  %i.gr = icmp ult i64 %i.gq, %i.gp
  %i.gs = tail call i64 @llvm.umin.i64(i64 %i.gq, i64 1152921504606846975)
  %i.gt = select i1 %i.gr, i64 1152921504606846975, i64 %i.gs ; 3 uses
  %.not.i.i.i.i167 = icmp ne i64 %i.gt, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i167)
  %i.gu = shl nuw nsw i64 %i.gt, 3
  %i.gv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gu) #27 ; 4 uses
  %i.gw = getelementptr inbounds i8, ptr %i.gv, i64 %i.gn ; 2 uses
  store ptr null, ptr %i.gw, align 8, !tbaa !498
  %i.gx = icmp sgt i64 %i.gn, 0
  br i1 %i.gx, label %bb.bp, label %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

bb.bp:                                            ; preds = %_ZNKSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gv, ptr align 8 %i.gk, i64 %i.gn, i1 false)
  br label %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i: ; preds = %bb.bp, %_ZNKSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.gk, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  %i.gz = load ptr, ptr %i.gh, align 8, !tbaa !499
  %i.ha = ptrtoint ptr %i.gz to i64
  %i.hb = sub i64 %i.ha, %i.gm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gk, i64 noundef %i.hb) #28
  br label %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.bq, %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  store ptr %i.gv, ptr %i.p, align 8, !tbaa !490
  store ptr %i.gy, ptr %i.r, align 8, !tbaa !491
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.gt
  store ptr %i.hc, ptr %i.gh, align 8, !tbaa !499
  br label %bb.go

.lr.ph:                                           ; preds = %bb.bl, %bb.bw
  %.sroa.0324.0365 = phi ptr [ %i.hw, %bb.bw ], [ %i.ge, %bb.bl ] ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.0324.0365, i64 32
  %i.he = load ptr, ptr %i.bi, align 8, !tbaa !444
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.0324.0365, i64 40
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !501
  %i.hh = tail call noundef i64 @_ZN4cvc58internal6theory11quantifiers9QuantInfo16getCurrentRepVarEm(ptr noundef nonnull align 8 dereferenceable(648) %i.he, i64 noundef %i.hg) ; 2 uses
  %i.hi = load ptr, ptr %i.bi, align 8, !tbaa !444
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 136
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !135
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %i.hh
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !122
  %i.hn = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.ho = icmp eq i8 %i.hn, 0
  br i1 %i.ho, label %bb.br, label %_ZNK4cvc58internal12NodeTemplateILb0EE6isNullEv.exit, !prof !409

bb.br:                                            ; preds = %.lr.ph
  %i.hp = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  %.not.i.i168 = icmp eq i32 %i.hp, 0
  br i1 %.not.i.i168, label %_ZNK4cvc58internal12NodeTemplateILb0EE6isNullEv.exit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hq = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.bt unwind label %bb.bu     ; 3 uses

bb.bt:                                            ; preds = %bb.bs
  store i64 1152920405095219200, ptr %i.hq, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hr, i8 0, i64 16, i1 false)
  store ptr %i.hq, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !129
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  br label %_ZNK4cvc58internal12NodeTemplateILb0EE6isNullEv.exit

common.resume:                                    ; preds = %bb.bk, %bb.ah, %.loopexit, %bb.bu
  %common.resume.op = phi { ptr, i32 } [ %i.hs, %bb.bu ], [ %.pn106.pn, %bb.ah ], [ %.pn91.pn.pn, %.loopexit ], [ %.pn97, %bb.bk ]
  resume { ptr, i32 } %common.resume.op

bb.bu:                                            ; preds = %bb.bs
  %i.hs = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  br label %common.resume

_ZNK4cvc58internal12NodeTemplateILb0EE6isNullEv.exit: ; preds = %.lr.ph, %bb.br, %bb.bt
  %i.ht = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !129
  %i.hu = icmp eq ptr %i.hm, %i.ht
  br i1 %i.hu, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb0EE6isNullEv.exit
  %i.hv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %i.hd)
  store i64 %i.hh, ptr %i.hv, align 8, !tbaa !138
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %_ZNK4cvc58internal12NodeTemplateILb0EE6isNullEv.exit
  %i.hw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0324.0365) #29 ; 2 uses
  %.not343 = icmp eq ptr %i.hw, %i.gf
  br i1 %.not343, label %._crit_edge, label %.lr.ph

bb.bx:                                            ; preds = %bb.i, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  %i.hx = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.hy = icmp eq i8 %i.hx, 0
  br i1 %i.hy, label %bb.by, label %bb.cb, !prof !409

bb.by:                                            ; preds = %bb.bx
  %i.hz = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  %.not.i.i189 = icmp eq i32 %i.hz, 0
  br i1 %.not.i.i189, label %bb.cb, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ia = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.ca unwind label %.body.thread ; 3 uses

.body.thread:                                     ; preds = %bb.bz
  %i.ib = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  br label %.loopexit

bb.ca:                                            ; preds = %bb.bz
  store i64 1152920405095219200, ptr %i.ia, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ic, i8 0, i64 16, i1 false)
  store ptr %i.ia, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !129
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  br label %bb.cb

.preheader347.preheader:                          ; preds = %bb.cd
  %i.id = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #24
  br label %.loopexit

bb.cb:                                            ; preds = %bb.ca, %bb.by, %bb.bx
  %i.ie = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !129
  store ptr %i.ie, ptr %16, align 16, !tbaa !120
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 10 uses
  %i.if = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.ig = icmp eq i8 %i.if, 0
  br i1 %i.ig, label %bb.cc, label %bb.cf, !prof !409

bb.cc:                                            ; preds = %bb.cb
  %i.ih = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  %.not.i.i189.1 = icmp eq i32 %i.ih, 0
  br i1 %.not.i.i189.1, label %bb.cf, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ii = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.ce unwind label %.preheader347.preheader ; 3 uses

bb.ce:                                            ; preds = %bb.cd
  store i64 1152920405095219200, ptr %i.ii, align 8
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ij, i8 0, i64 16, i1 false)
  store ptr %i.ii, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !129
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cc, %bb.cb
  %i.ik = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !129
  store ptr %i.ik, ptr %.ptr.1, align 8, !tbaa !120
  %i.il = load i16, ptr %i.o, align 8, !tbaa !177
  %i.im = icmp eq i16 %i.il, 2
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %i.im, label %bb.cg, label %.preheader345

.preheader345:                                    ; preds = %bb.cf
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  br label %bb.di

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  %i.iq = load ptr, ptr %i.bi, align 8, !tbaa !444
  %i.ir = load ptr, ptr %i.in, align 8, !tbaa !120
  store ptr %i.ir, ptr %18, align 8, !tbaa !122
  invoke void @_ZN4cvc58internal6theory11quantifiers9QuantInfo15getCurrentValueENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate.398") align 8 %17, ptr noundef nonnull align 8 dereferenceable(648) %i.iq, ptr noundef nonnull align 8 %18)
          to label %bb.ch unwind label %bb.db

bb.ch:                                            ; preds = %bb.cg
  %i.is = load ptr, ptr %16, align 16, !tbaa !120 ; 4 uses
  %i.it = load ptr, ptr %17, align 8, !tbaa !122  ; 6 uses
  %.not.i190 = icmp eq ptr %i.is, %i.it
  br i1 %.not.i190, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit, label %bb.ci, !prof !125

bb.ci:                                            ; preds = %bb.ch
  %i.iu = load i64, ptr %i.is, align 8            ; 3 uses
  %i.iv = and i64 %i.iu, 1152920405095219200
  %.not.i.i191 = icmp eq i64 %i.iv, 1152920405095219200
  br i1 %.not.i.i191, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, label %bb.cj, !prof !125

bb.cj:                                            ; preds = %bb.ci
  %i.iw = add i64 %i.iu, 1152920405095219200
  %i.ix = and i64 %i.iw, 1152920405095219200      ; 2 uses
  %i.iy = and i64 %i.iu, -1152920405095219201
  %i.iz = or disjoint i64 %i.ix, %i.iy
  store i64 %i.iz, ptr %i.is, align 8
  %i.ja = icmp eq i64 %i.ix, 0
  br i1 %i.ja, label %bb.ck, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, !prof !125

bb.ck:                                            ; preds = %bb.cj
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.is)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i unwind label %bb.dc

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i:    ; preds = %bb.ck, %bb.cj, %bb.ci
  store ptr %i.it, ptr %16, align 16, !tbaa !120
  %i.jb = load i64, ptr %i.it, align 8            ; 3 uses
  %i.jc = lshr i64 %i.jb, 40
  %i.jd = trunc nuw nsw i64 %i.jc to i32
  %i.je = and i32 %i.jd, 1048575                  ; 3 uses
  %i.jf = icmp samesign ult i32 %i.je, 1048574
  br i1 %i.jf, label %bb.cl, label %bb.cm, !prof !124

bb.cl:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.jg = add nuw nsw i32 %i.je, 1
  %i.jh = zext nneg i32 %i.jg to i64
  %i.ji = shl nuw nsw i64 %i.jh, 40
  %i.jj = and i64 %i.jb, -1152920405095219201
  %i.jk = or i64 %i.ji, %i.jj
  store i64 %i.jk, ptr %i.it, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit

bb.cm:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.jl = icmp eq i32 %i.je, 1048574
  br i1 %i.jl, label %bb.cn, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit, !prof !125

bb.cn:                                            ; preds = %bb.cm
  %i.jm = or i64 %i.jb, 1152920405095219200
  store i64 %i.jm, ptr %i.it, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.it)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit unwind label %bb.dc

_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit: ; preds = %bb.cm, %bb.cl, %bb.ch, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  %i.jn = load ptr, ptr %i.bi, align 8, !tbaa !444 ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 80
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !45 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jn, i64 72 ; 2 uses
  %.not10.i.i.i.i194 = icmp eq ptr %i.jp, null
  br i1 %.not10.i.i.i.i194, label %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit205.thread, label %.lr.ph.i.i.i.i195

.lr.ph.i.i.i.i195:                                ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit
  %i.jr = load ptr, ptr %16, align 16, !tbaa !120
  %i.js = load i64, ptr %i.jr, align 8
  %i.jt = and i64 %i.js, 1099511627775            ; 2 uses
  br label %bb.co

bb.co:                                            ; preds = %bb.co, %.lr.ph.i.i.i.i195
  %.012.i.i.i.i196 = phi ptr [ %i.jp, %.lr.ph.i.i.i.i195 ], [ %.1.i.i.i.i201, %bb.co ] ; 3 uses
  %.0811.i.i.i.i197 = phi ptr [ %i.jq, %.lr.ph.i.i.i.i195 ], [ %.19.i.i.i.i198, %bb.co ]
  %i.ju = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i196, i64 32
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !122
  %i.jw = load i64, ptr %i.jv, align 8
  %i.jx = and i64 %i.jw, 1099511627775
  %i.jy = icmp samesign ult i64 %i.jx, %i.jt      ; 2 uses
  %.19.i.i.i.i198 = select i1 %i.jy, ptr %.0811.i.i.i.i197, ptr %.012.i.i.i.i196 ; 4 uses
  %.1.in.v.i.i.i.i199 = select i1 %i.jy, i64 24, i64 16
  %.1.in.i.i.i.i200 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i196, i64 %.1.in.v.i.i.i.i199
  %.1.i.i.i.i201 = load ptr, ptr %.1.in.i.i.i.i200, align 8, !tbaa !136 ; 2 uses
  %.not.i.i.i.i202 = icmp eq ptr %.1.i.i.i.i201, null
  br i1 %.not.i.i.i.i202, label %_ZNKSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i203, label %bb.co, !llvm.loop !14

_ZNKSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i203: ; preds = %bb.co
  %i.jz = icmp eq ptr %.19.i.i.i.i198, %i.jq
  br i1 %i.jz, label %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit205.thread, label %_ZNKSt3mapIN4cvc58internal12NodeTemplateILb0EEEmSt4lessIS3_ESaISt4pairIKS3_mEEE4findERS7_.exit.i204

_ZNKSt3mapIN4cvc58internal12NodeTemplateILb0EEEmSt4lessIS3_ESaISt4pairIKS3_mEEE4findERS7_.exit.i204: ; preds = %_ZNKSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i203
  %i.ka = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i198, i64 32
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !122
  %i.kc = load i64, ptr %i.kb, align 8
  %i.kd = and i64 %i.kc, 1099511627775
  %i.ke = icmp samesign ult i64 %i.jt, %i.kd
  br i1 %i.ke, label %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit205.thread, label %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit205

_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit205: ; preds = %_ZNKSt3mapIN4cvc58internal12NodeTemplateILb0EEEmSt4lessIS3_ESaISt4pairIKS3_mEEE4findERS7_.exit.i204
  %i.kf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i198, i64 40
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !452 ; 2 uses
  %i.kh = and i64 %i.kg, 4294967295
  %i.ki = icmp eq i64 %i.kh, 4294967295
  br i1 %i.ki, label %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit205.thread, label %bb.cp

bb.cp:                                            ; preds = %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit205
  %sext341 = shl i64 %i.kg, 32
  %i.kj = ashr exact i64 %sext341, 32
  %i.kk = invoke noundef i64 @_ZN4cvc58internal6theory11quantifiers9QuantInfo16getCurrentRepVarEm(ptr noundef nonnull align 8 dereferenceable(648) %i.jn, i64 noundef %i.kj)
          to label %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit205.thread unwind label %bb.de

_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit205.thread: ; preds = %_ZNKSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i203, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit, %_ZNKSt3mapIN4cvc58internal12NodeTemplateILb0EEEmSt4lessIS3_ESaISt4pairIKS3_mEEE4findERS7_.exit.i204, %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit205, %bb.cp
  %i.kl = phi i64 [ %i.kk, %bb.cp ], [ -1, %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit205 ], [ -1, %_ZNKSt3mapIN4cvc58internal12NodeTemplateILb0EEEmSt4lessIS3_ESaISt4pairIKS3_mEEE4findERS7_.exit.i204 ], [ -1, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit ], [ -1, %_ZNKSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i203 ]
  %i.km = trunc i64 %i.kl to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  %i.kn = invoke noundef ptr @_ZNK4cvc58internal6EnvObj11nodeManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.cq unwind label %bb.df

bb.cq:                                            ; preds = %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit205.thread
  invoke void @_ZN4cvc58internal11NodeManager7mkConstIbEENS0_12NodeTemplateILb1EEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %19, ptr noundef nonnull align 8 dereferenceable(3592) %i.kn, ptr noundef nonnull align 1 dereferenceable(1) %i.l)
          to label %bb.cr unwind label %bb.df

bb.cr:                                            ; preds = %bb.cq
  %i.ko = load ptr, ptr %.ptr.1, align 8, !tbaa !120 ; 4 uses
  %i.kp = load ptr, ptr %19, align 8, !tbaa !120
  %.not.i206 = icmp eq ptr %i.ko, %i.kp
  br i1 %.not.i206, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, label %bb.cs, !prof !125

bb.cs:                                            ; preds = %bb.cr
  %i.kq = load i64, ptr %i.ko, align 8            ; 3 uses
  %i.kr = and i64 %i.kq, 1152920405095219200
  %.not.i.i207 = icmp eq i64 %i.kr, 1152920405095219200
  br i1 %.not.i.i207, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i208, label %bb.ct, !prof !125

bb.ct:                                            ; preds = %bb.cs
  %i.ks = add i64 %i.kq, 1152920405095219200
  %i.kt = and i64 %i.ks, 1152920405095219200      ; 2 uses
  %i.ku = and i64 %i.kq, -1152920405095219201
  %i.kv = or disjoint i64 %i.kt, %i.ku
  store i64 %i.kv, ptr %i.ko, align 8
  %i.kw = icmp eq i64 %i.kt, 0
  br i1 %i.kw, label %bb.cu, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i208, !prof !125

bb.cu:                                            ; preds = %bb.ct
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ko)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i208 unwind label %bb.dg

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i208: ; preds = %bb.cu, %bb.ct, %bb.cs
  %i.kx = load ptr, ptr %19, align 8, !tbaa !120  ; 5 uses
  store ptr %i.kx, ptr %.ptr.1, align 8, !tbaa !120
  %i.ky = load i64, ptr %i.kx, align 8            ; 3 uses
  %i.kz = lshr i64 %i.ky, 40
  %i.la = trunc nuw nsw i64 %i.kz to i32
  %i.lb = and i32 %i.la, 1048575                  ; 3 uses
  %i.lc = icmp samesign ult i32 %i.lb, 1048574
  br i1 %i.lc, label %bb.cv, label %bb.cw, !prof !124

bb.cv:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i208
  %i.ld = add nuw nsw i32 %i.lb, 1
  %i.le = zext nneg i32 %i.ld to i64
  %i.lf = shl nuw nsw i64 %i.le, 40
  %i.lg = and i64 %i.ky, -1152920405095219201
  %i.lh = or i64 %i.lf, %i.lg
  store i64 %i.lh, ptr %i.kx, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit

bb.cw:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i208
  %i.li = icmp eq i32 %i.lb, 1048574
  br i1 %i.li, label %bb.cx, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, !prof !125

bb.cx:                                            ; preds = %bb.cw
  %i.lj = or i64 %i.ky, 1152920405095219200
  store i64 %i.lj, ptr %i.kx, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.kx)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit unwind label %bb.dg

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit: ; preds = %bb.cw, %bb.cv, %bb.cr, %bb.cx
  %i.lk = load ptr, ptr %19, align 8, !tbaa !120  ; 3 uses
  %i.ll = load i64, ptr %i.lk, align 8            ; 3 uses
  %i.lm = and i64 %i.ll, 1152920405095219200
  %.not.i.i211 = icmp eq i64 %i.lm, 1152920405095219200
  br i1 %.not.i.i211, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit213, label %bb.cy, !prof !125

bb.cy:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit
  %i.ln = add i64 %i.ll, 1152920405095219200
  %i.lo = and i64 %i.ln, 1152920405095219200      ; 2 uses
  %i.lp = and i64 %i.ll, -1152920405095219201
  %i.lq = or disjoint i64 %i.lo, %i.lp
  store i64 %i.lq, ptr %i.lk, align 8
  %i.lr = icmp eq i64 %i.lo, 0
  br i1 %i.lr, label %bb.cz, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit213, !prof !125

bb.cz:                                            ; preds = %bb.cy
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.lk)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit213 unwind label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.ls = landingpad { ptr, i32 }
          catch ptr null
  %i.lt = extractvalue { ptr, i32 } %i.ls, 0
  call void @__clang_call_terminate(ptr %i.lt) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit213: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, %bb.cy, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  store i8 1, ptr %i.l, align 8, !tbaa !489
  br label %.loopexit346

bb.db:                                            ; preds = %bb.cg
  %i.lu = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.dc:                                            ; preds = %bb.cn, %bb.ck
  %i.lv = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %.pn81 = phi { ptr, i32 } [ %i.lv, %bb.dc ], [ %i.lu, %bb.db ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  br label %.body215

bb.de:                                            ; preds = %bb.cp
  %i.lw = landingpad { ptr, i32 }
          cleanup
  br label %.body215

bb.df:                                            ; preds = %bb.cq, %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit205.thread
  %i.lx = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

bb.dg:                                            ; preds = %bb.cx, %bb.cu
  %i.ly = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #24
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %.pn83 = phi { ptr, i32 } [ %i.ly, %bb.dg ], [ %i.lx, %bb.df ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  br label %.body215

bb.di:                                            ; preds = %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit242.thread, %.preheader345
  %.sroa.0.0 = phi i32 [ undef, %.preheader345 ], [ %i.pv, %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit242.thread ]
  %.sroa.idx = phi i1 [ false, %.preheader345 ], [ true, %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit242.thread ]
  %indvars.iv.sroa.phi462 = phi ptr [ %16, %.preheader345 ], [ %indvars.iv.sroa.gep463, %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit242.thread ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.preheader345 ], [ 1, %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit242.thread ] ; 3 uses
  %i.lz = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.ma = icmp eq i8 %i.lz, 0
  br i1 %i.ma, label %bb.dj, label %bb.dn, !prof !409

bb.dj:                                            ; preds = %bb.di
  %i.mb = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  %.not.i.i214 = icmp eq i32 %i.mb, 0
  br i1 %.not.i.i214, label %bb.dn, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.mc = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.dl unwind label %bb.dm     ; 3 uses

bb.dl:                                            ; preds = %bb.dk
  store i64 1152920405095219200, ptr %i.mc, align 8
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.md, i8 0, i64 16, i1 false)
  store ptr %i.mc, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !129
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  br label %bb.dn

bb.dm:                                            ; preds = %bb.dk
  %i.me = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  br label %.body215

bb.dn:                                            ; preds = %bb.dl, %bb.dj, %bb.di
  %i.mf = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !129 ; 4 uses
  %i.mg = load ptr, ptr %i.io, align 8, !tbaa !45 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.mg, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapImN4cvc58internal12NodeTemplateILb0EEESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.dn, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.mg, %bb.dn ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.ip, %bb.dn ]
  %i.mh = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.mi = load i64, ptr %i.mh, align 8, !tbaa !138
  %i.mj = icmp ult i64 %i.mi, %indvars.iv         ; 2 uses
  %.19.i.i.i = select i1 %i.mj, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.mj, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !136 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeImSt4pairIKmN4cvc58internal12NodeTemplateILb0EEEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !16

_ZNSt8_Rb_treeImSt4pairIKmN4cvc58internal12NodeTemplateILb0EEEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.mk = icmp eq ptr %.19.i.i.i, %i.ip
  br i1 %i.mk, label %_ZNSt3mapImN4cvc58internal12NodeTemplateILb0EEESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread, label %_ZNSt3mapImN4cvc58internal12NodeTemplateILb0EEESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit

_ZNSt3mapImN4cvc58internal12NodeTemplateILb0EEESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit: ; preds = %_ZNSt8_Rb_treeImSt4pairIKmN4cvc58internal12NodeTemplateILb0EEEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.ml = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.mm = load i64, ptr %i.ml, align 8, !tbaa !138
  %i.mn = icmp ugt i64 %i.mm, %indvars.iv
  br i1 %i.mn, label %_ZNSt3mapImN4cvc58internal12NodeTemplateILb0EEESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread, label %bb.do

bb.do:                                            ; preds = %_ZNSt3mapImN4cvc58internal12NodeTemplateILb0EEESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit
  %i.mo = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !122 ; 2 uses
  %.not.i217 = icmp eq ptr %i.mf, %i.mp
  %spec.select = select i1 %.not.i217, ptr %i.mf, ptr %i.mp, !prof !125
  br label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit

_ZNSt3mapImN4cvc58internal12NodeTemplateILb0EEESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread: ; preds = %_ZNSt8_Rb_treeImSt4pairIKmN4cvc58internal12NodeTemplateILb0EEEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, %bb.dn, %_ZNSt3mapImN4cvc58internal12NodeTemplateILb0EEESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit
  %i.mq = load ptr, ptr %i.in, align 8, !tbaa !120, !noalias !720 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  %i.ms = load i64, ptr %i.mr, align 8, !noalias !720
  %i.mt = trunc i64 %i.ms to i32
  %i.mu = and i32 %i.mt, 1023                     ; 2 uses
  %i.mv = icmp eq i32 %i.mu, 1023
  %i.mw = select i1 %i.mv, i32 -1, i32 %i.mu
  %i.mx = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.mw)
          to label %.noexc219 unwind label %bb.dv

.noexc219:                                        ; preds = %_ZNSt3mapImN4cvc58internal12NodeTemplateILb0EEESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread
  %i.my = icmp eq i32 %i.mx, 2
  %i.mz = zext i1 %i.my to i64
  %i.na = getelementptr inbounds nuw i8, ptr %i.mq, i64 24
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.na, i64 %indvars.iv
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.nb, i64 %i.mz
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !129, !noalias !720 ; 9 uses
  %i.ne = load i64, ptr %i.nd, align 8, !noalias !720 ; 4 uses
  %i.nf = lshr i64 %i.ne, 40
  %i.ng = trunc nuw nsw i64 %i.nf to i32
  %i.nh = and i32 %i.ng, 1048575                  ; 3 uses
  %i.ni = icmp samesign ult i32 %i.nh, 1048574
  br i1 %i.ni, label %bb.dp, label %bb.dq, !prof !124

bb.dp:                                            ; preds = %.noexc219
  %i.nj = add nuw nsw i32 %i.nh, 1
  %i.nk = zext nneg i32 %i.nj to i64
  %i.nl = shl nuw nsw i64 %i.nk, 40
  %i.nm = and i64 %i.ne, -1152920405095219201
  %i.nn = or i64 %i.nl, %i.nm                     ; 2 uses
  store i64 %i.nn, ptr %i.nd, align 8, !noalias !720
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit

bb.dq:                                            ; preds = %.noexc219
  %i.no = icmp eq i32 %i.nh, 1048574
  br i1 %i.no, label %bb.dr, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit, !prof !125

bb.dr:                                            ; preds = %bb.dq
  %i.np = or i64 %i.ne, 1152920405095219200
  store i64 %i.np, ptr %i.nd, align 8, !noalias !720
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.nd)
          to label %._ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit_crit_edge unwind label %bb.dv

._ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit_crit_edge: ; preds = %bb.dr
  %.pre = load i64, ptr %i.nd, align 8
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit:  ; preds = %._ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit_crit_edge, %bb.dq, %bb.dp
  %i.nq = phi i64 [ %.pre, %._ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit_crit_edge ], [ %i.ne, %bb.dq ], [ %i.nn, %bb.dp ] ; 3 uses
  %.not.i221 = icmp eq ptr %i.mf, %i.nd
  %spec.select339 = select i1 %.not.i221, ptr %i.mf, ptr %i.nd, !prof !125 ; 3 uses
  %i.nr = and i64 %i.nq, 1152920405095219200
  %.not.i.i222 = icmp eq i64 %i.nr, 1152920405095219200
  br i1 %.not.i.i222, label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit, label %bb.ds, !prof !125

bb.ds:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit
  %i.ns = add i64 %i.nq, 1152920405095219200
  %i.nt = and i64 %i.ns, 1152920405095219200      ; 2 uses
  %i.nu = and i64 %i.nq, -1152920405095219201
  %i.nv = or disjoint i64 %i.nt, %i.nu
  store i64 %i.nv, ptr %i.nd, align 8
  %i.nw = icmp eq i64 %i.nt, 0
  br i1 %i.nw, label %bb.dt, label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit, !prof !125

bb.dt:                                            ; preds = %bb.ds
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.nd)
          to label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit unwind label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.nx = landingpad { ptr, i32 }
          catch ptr null
  %i.ny = extractvalue { ptr, i32 } %i.nx, 0
  tail call void @__clang_call_terminate(ptr %i.ny) #25
  unreachable

bb.dv:                                            ; preds = %bb.dr, %_ZNSt3mapImN4cvc58internal12NodeTemplateILb0EEESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread
  %i.nz = landingpad { ptr, i32 }
          cleanup
  br label %.body215

_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit: ; preds = %bb.do, %bb.dt, %bb.ds, %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit
  %.sroa.0314.0 = phi ptr [ %spec.select339, %bb.dt ], [ %spec.select, %bb.do ], [ %spec.select339, %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit ], [ %spec.select339, %bb.ds ]
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  %i.oa = load ptr, ptr %i.bi, align 8, !tbaa !444
  store ptr %.sroa.0314.0, ptr %21, align 8, !tbaa !122
  invoke void @_ZN4cvc58internal6theory11quantifiers9QuantInfo15getCurrentValueENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate.398") align 8 %20, ptr noundef nonnull align 8 dereferenceable(648) %i.oa, ptr noundef nonnull align 8 %21)
          to label %bb.dw unwind label %bb.ef

bb.dw:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit
  %i.ob = load ptr, ptr %indvars.iv.sroa.phi462, align 8, !tbaa !120 ; 4 uses
  %i.oc = load ptr, ptr %20, align 8, !tbaa !122  ; 6 uses
  %.not.i225 = icmp eq ptr %i.ob, %i.oc
  br i1 %.not.i225, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit230, label %bb.dx, !prof !125

bb.dx:                                            ; preds = %bb.dw
  %i.od = load i64, ptr %i.ob, align 8            ; 3 uses
  %i.oe = and i64 %i.od, 1152920405095219200
  %.not.i.i226 = icmp eq i64 %i.oe, 1152920405095219200
  br i1 %.not.i.i226, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i227, label %bb.dy, !prof !125

bb.dy:                                            ; preds = %bb.dx
  %i.of = add i64 %i.od, 1152920405095219200
  %i.og = and i64 %i.of, 1152920405095219200      ; 2 uses
  %i.oh = and i64 %i.od, -1152920405095219201
  %i.oi = or disjoint i64 %i.og, %i.oh
  store i64 %i.oi, ptr %i.ob, align 8
  %i.oj = icmp eq i64 %i.og, 0
  br i1 %i.oj, label %bb.dz, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i227, !prof !125

bb.dz:                                            ; preds = %bb.dy
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ob)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i227 unwind label %bb.eg

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i227: ; preds = %bb.dz, %bb.dy, %bb.dx
  store ptr %i.oc, ptr %indvars.iv.sroa.phi462, align 8, !tbaa !120
  %i.ok = load i64, ptr %i.oc, align 8            ; 3 uses
  %i.ol = lshr i64 %i.ok, 40
  %i.om = trunc nuw nsw i64 %i.ol to i32
  %i.on = and i32 %i.om, 1048575                  ; 3 uses
  %i.oo = icmp samesign ult i32 %i.on, 1048574
  br i1 %i.oo, label %bb.ea, label %bb.eb, !prof !124

bb.ea:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i227
  %i.op = add nuw nsw i32 %i.on, 1
  %i.oq = zext nneg i32 %i.op to i64
  %i.or = shl nuw nsw i64 %i.oq, 40
  %i.os = and i64 %i.ok, -1152920405095219201
  %i.ot = or i64 %i.or, %i.os
  store i64 %i.ot, ptr %i.oc, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit230

bb.eb:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i227
  %i.ou = icmp eq i32 %i.on, 1048574
  br i1 %i.ou, label %bb.ec, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit230, !prof !125

bb.ec:                                            ; preds = %bb.eb
  %i.ov = or i64 %i.ok, 1152920405095219200
  store i64 %i.ov, ptr %i.oc, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.oc)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit230 unwind label %bb.eg

_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit230: ; preds = %bb.eb, %bb.ea, %bb.dw, %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  %i.ow = load ptr, ptr %i.bi, align 8, !tbaa !444 ; 3 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 80
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !45 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ow, i64 72 ; 2 uses
  %.not10.i.i.i.i231 = icmp eq ptr %i.oy, null
  br i1 %.not10.i.i.i.i231, label %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit242.thread, label %.lr.ph.i.i.i.i232

.lr.ph.i.i.i.i232:                                ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit230
  %i.pa = load ptr, ptr %indvars.iv.sroa.phi462, align 8, !tbaa !120
  %i.pb = load i64, ptr %i.pa, align 8
  %i.pc = and i64 %i.pb, 1099511627775            ; 2 uses
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ed, %.lr.ph.i.i.i.i232
  %.012.i.i.i.i233 = phi ptr [ %i.oy, %.lr.ph.i.i.i.i232 ], [ %.1.i.i.i.i238, %bb.ed ] ; 3 uses
  %.0811.i.i.i.i234 = phi ptr [ %i.oz, %.lr.ph.i.i.i.i232 ], [ %.19.i.i.i.i235, %bb.ed ]
  %i.pd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i233, i64 32
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !122
  %i.pf = load i64, ptr %i.pe, align 8
  %i.pg = and i64 %i.pf, 1099511627775
  %i.ph = icmp samesign ult i64 %i.pg, %i.pc      ; 2 uses
  %.19.i.i.i.i235 = select i1 %i.ph, ptr %.0811.i.i.i.i234, ptr %.012.i.i.i.i233 ; 4 uses
  %.1.in.v.i.i.i.i236 = select i1 %i.ph, i64 24, i64 16
  %.1.in.i.i.i.i237 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i233, i64 %.1.in.v.i.i.i.i236
  %.1.i.i.i.i238 = load ptr, ptr %.1.in.i.i.i.i237, align 8, !tbaa !136 ; 2 uses
  %.not.i.i.i.i239 = icmp eq ptr %.1.i.i.i.i238, null
  br i1 %.not.i.i.i.i239, label %_ZNKSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i240, label %bb.ed, !llvm.loop !14

_ZNKSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i240: ; preds = %bb.ed
  %i.pi = icmp eq ptr %.19.i.i.i.i235, %i.oz
  br i1 %i.pi, label %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit242.thread, label %_ZNKSt3mapIN4cvc58internal12NodeTemplateILb0EEEmSt4lessIS3_ESaISt4pairIKS3_mEEE4findERS7_.exit.i241

_ZNKSt3mapIN4cvc58internal12NodeTemplateILb0EEEmSt4lessIS3_ESaISt4pairIKS3_mEEE4findERS7_.exit.i241: ; preds = %_ZNKSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i240
  %i.pj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i235, i64 32
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !122
  %i.pl = load i64, ptr %i.pk, align 8
  %i.pm = and i64 %i.pl, 1099511627775
  %i.pn = icmp samesign ult i64 %i.pc, %i.pm
  br i1 %i.pn, label %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit242.thread, label %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit242

_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit242: ; preds = %_ZNKSt3mapIN4cvc58internal12NodeTemplateILb0EEEmSt4lessIS3_ESaISt4pairIKS3_mEEE4findERS7_.exit.i241
  %i.po = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i235, i64 40
  %i.pp = load i64, ptr %i.po, align 8, !tbaa !452 ; 2 uses
  %i.pq = and i64 %i.pp, 4294967295
  %i.pr = icmp eq i64 %i.pq, 4294967295
  br i1 %i.pr, label %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit242.thread, label %bb.ee

bb.ee:                                            ; preds = %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit242
  %sext = shl i64 %i.pp, 32
  %i.ps = ashr exact i64 %sext, 32
  %i.pt = invoke noundef i64 @_ZN4cvc58internal6theory11quantifiers9QuantInfo16getCurrentRepVarEm(ptr noundef nonnull align 8 dereferenceable(648) %i.ow, i64 noundef %i.ps)
          to label %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit242.thread unwind label %bb.ei

_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit242.thread: ; preds = %_ZNKSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i240, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit230, %_ZNKSt3mapIN4cvc58internal12NodeTemplateILb0EEEmSt4lessIS3_ESaISt4pairIKS3_mEEE4findERS7_.exit.i241, %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit242, %bb.ee
  %i.pu = phi i64 [ %i.pt, %bb.ee ], [ -1, %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit242 ], [ -1, %_ZNKSt3mapIN4cvc58internal12NodeTemplateILb0EEEmSt4lessIS3_ESaISt4pairIKS3_mEEE4findERS7_.exit.i241 ], [ -1, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit230 ], [ -1, %_ZNKSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i240 ]
  %i.pv = trunc i64 %i.pu to i32                  ; 2 uses
  br i1 %.sroa.idx, label %.loopexit346, label %bb.di, !llvm.loop !715

bb.ef:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit
  %i.pw = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

bb.eg:                                            ; preds = %bb.ec, %bb.dz
  %i.px = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %.pn = phi { ptr, i32 } [ %i.px, %bb.eg ], [ %i.pw, %bb.ef ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  br label %.body215

bb.ei:                                            ; preds = %bb.ee
  %i.py = landingpad { ptr, i32 }
          cleanup
  br label %.body215

.loopexit346:                                     ; preds = %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit242.thread, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit213
  %i.pz = phi i32 [ -1, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit213 ], [ %i.pv, %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit242.thread ] ; 4 uses
  %i.qa = phi i32 [ %i.km, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit213 ], [ %.sroa.0.0, %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit242.thread ] ; 3 uses
  %26 = and i32 %i.qa, %i.pz
  %i.qb = icmp eq i32 %26, -1
  br i1 %i.qb, label %bb.ej, label %bb.en

bb.ej:                                            ; preds = %.loopexit346
  %i.qc = load i8, ptr %i.l, align 8, !tbaa !489, !range !405, !noundef !144
  %i.qd = trunc nuw i8 %i.qc to i1
  br i1 %i.qd, label %.split, label %bb.ek

.split:                                           ; preds = %bb.ej
  %i.qe = load ptr, ptr %16, align 16, !tbaa !120
  %i.qf = load ptr, ptr %.ptr.1, align 8, !tbaa !120
  %i.qg = icmp eq ptr %i.qe, %i.qf
  br i1 %i.qg, label %bb.fx, label %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE9push_backEOS4_.exit261

bb.ek:                                            ; preds = %bb.ej
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !487 ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 448
  %i.qk = load i32, ptr %i.qj, align 8, !tbaa !484
  %i.ql = icmp eq i32 %i.qk, 0
  %i.qm = load ptr, ptr %16, align 16, !tbaa !120 ; 2 uses
  br i1 %i.ql, label %bb.el, label %.split335

bb.el:                                            ; preds = %bb.ek
  store ptr %i.qm, ptr %22, align 8, !tbaa !122
  %i.qn = load ptr, ptr %.ptr.1, align 8, !tbaa !120
  store ptr %i.qn, ptr %23, align 8, !tbaa !122
  %i.qo = invoke noundef zeroext i1 @_ZNK4cvc58internal6theory11quantifiers17QuantifiersModule11areDisequalENS0_12NodeTemplateILb0EEES5_(ptr noundef nonnull align 8 dereferenceable(48) %i.qi, ptr noundef nonnull align 8 %22, ptr noundef nonnull align 8 %23)
          to label %bb.fw unwind label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.qp = landingpad { ptr, i32 }
          cleanup
  br label %.body215

.split335:                                        ; preds = %bb.ek
  %i.qq = load ptr, ptr %.ptr.1, align 8, !tbaa !120
  %.not342 = icmp eq ptr %i.qm, %i.qq
  br i1 %.not342, label %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE9push_backEOS4_.exit261, label %bb.fx

bb.en:                                            ; preds = %.loopexit346
  %27 = icmp ne i32 %i.pz, -1
  %28 = icmp eq i32 %i.qa, -1
  %or.cond5 = and i1 %28, %27
  br i1 %or.cond5, label %bb.eo, label %._crit_edge379

bb.eo:                                            ; preds = %bb.en
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #24
  invoke void @_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull align 8 dereferenceable(8) %.ptr.1)
          to label %bb.ep unwind label %bb.es

bb.ep:                                            ; preds = %bb.eo
  %i.qr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %.ptr.1, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.eq unwind label %bb.et     ; 0 uses

bb.eq:                                            ; preds = %bb.ep
  %i.qs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %bb.er unwind label %bb.et     ; 0 uses

bb.er:                                            ; preds = %bb.eq
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  br label %._crit_edge379

bb.es:                                            ; preds = %bb.eo
  %i.qt = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

bb.et:                                            ; preds = %bb.eq, %bb.ep
  %i.qu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #24
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es
  %.pn86 = phi { ptr, i32 } [ %i.qu, %bb.et ], [ %i.qt, %bb.es ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  br label %.body215

._crit_edge379:                                   ; preds = %bb.er, %bb.en
  %i.qv = phi i32 [ -1, %bb.er ], [ %i.pz, %bb.en ] ; 4 uses
  %i.qw = phi i32 [ %i.pz, %bb.er ], [ %i.qa, %bb.en ] ; 2 uses
  %i.qx = load ptr, ptr %i.bi, align 8, !tbaa !444
  %i.qy = sext i32 %i.qw to i64                   ; 5 uses
  %i.qz = load ptr, ptr %.ptr.1, align 8, !tbaa !120
  store ptr %i.qz, ptr %25, align 8, !tbaa !122
  %i.ra = load i8, ptr %i.l, align 8, !tbaa !489, !range !405, !noundef !144
  %i.rb = trunc nuw i8 %i.ra to i1
  %i.rc = invoke noundef i32 @_ZN4cvc58internal6theory11quantifiers9QuantInfo13addConstraintEmNS0_12NodeTemplateILb0EEEibb(ptr noundef nonnull align 8 dereferenceable(648) %i.qx, i64 noundef %i.qy, ptr noundef nonnull align 8 %25, i32 noundef %i.qv, i1 noundef zeroext %i.rb, i1 noundef zeroext false)
          to label %bb.ev unwind label %bb.ew     ; 2 uses

bb.ev:                                            ; preds = %._crit_edge379
  %i.rd = icmp ne i32 %i.rc, -1
  %i.re = icmp eq i32 %i.rc, 1
  br i1 %i.re, label %.preheader, label %bb.fw

.preheader:                                       ; preds = %bb.ev
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %.not = icmp eq i32 %i.qw, -1
  br i1 %.not, label %.critedge7, label %bb.ex

bb.ew:                                            ; preds = %._crit_edge379
  %i.rh = landingpad { ptr, i32 }
          cleanup
  br label %.body215

bb.ex:                                            ; preds = %.preheader
  %i.ri = load ptr, ptr %i.rf, align 8, !tbaa !178 ; 4 uses
  %i.rj = load ptr, ptr %i.rg, align 8, !tbaa !178 ; 3 uses
  %i.rk = ptrtoint ptr %i.rj to i64               ; 2 uses
  %i.rl = ptrtoint ptr %i.ri to i64
  %i.rm = sub i64 %i.rk, %i.rl                    ; 3 uses
  %i.rn = ashr i64 %i.rm, 5                       ; 2 uses
  %i.ro = icmp sgt i64 %i.rn, 0
  br i1 %i.ro, label %.lr.ph.i.i.i249, label %._crit_edge.i.i.i

.lr.ph.i.i.i249:                                  ; preds = %bb.ex
  %i.rp = and i64 %i.rm, -32
  %scevgep.i.i.i = getelementptr i8, ptr %i.ri, i64 %i.rp ; 2 uses
  br label %bb.ey

bb.ey:                                            ; preds = %bb.fc, %.lr.ph.i.i.i249
  %.052.i.i.i = phi i64 [ %i.rn, %.lr.ph.i.i.i249 ], [ %i.sc, %bb.fc ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %i.ri, %.lr.ph.i.i.i249 ], [ %i.sb, %bb.fc ] ; 9 uses
  %i.rq = load i64, ptr %.sroa.032.051.i.i.i, align 8, !tbaa !138
  %i.rr = icmp eq i64 %i.rq, 0
  br i1 %i.rr, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.rs = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.rt = load i64, ptr %i.rs, align 8, !tbaa !138
  %i.ru = icmp eq i64 %i.rt, 0
  br i1 %i.ru, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit429, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.rv = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  %i.rw = load i64, ptr %i.rv, align 8, !tbaa !138
  %i.rx = icmp eq i64 %i.rw, 0
  br i1 %i.rx, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit427, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.ry = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 24
  %i.rz = load i64, ptr %i.ry, align 8, !tbaa !138
  %i.sa = icmp eq i64 %i.rz, 0
  br i1 %i.sa, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.sb = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 32
  %i.sc = add nsw i64 %.052.i.i.i, -1
  %i.sd = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.sd, label %bb.ey, label %._crit_edge.loopexit.i.i.i, !llvm.loop !8

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.fc
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.rk, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.ex
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.rm, %bb.ex ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.ri, %bb.ex ] ; 5 uses
  %i.se = ashr exact i64 %.pre-phi61.i.i.i, 3
  switch i64 %i.se, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.thread [
    i64 3, label %bb.fd
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

bb.fd:                                            ; preds = %._crit_edge.i.i.i
  %i.sf = load i64, ptr %.sroa.032.0.lcssa.i.i.i, align 8, !tbaa !138
  %i.sg = icmp eq i64 %i.sf, 0
  br i1 %i.sg, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.sh = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.fe
  %.sroa.032.1.i.i.i = phi ptr [ %i.sh, %bb.fe ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.si = load i64, ptr %.sroa.032.1.i.i.i, align 8, !tbaa !138
  %i.sj = icmp eq i64 %i.si, 0
  br i1 %i.sj, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit, label %bb.ff

bb.ff:                                            ; preds = %._crit_edge._crit_edge.i.i.i
  %i.sk = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 8
  br label %._crit_edge._crit_edge57.i.i.i

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.ff
  %.sroa.032.2.i.i.i = phi ptr [ %i.sk, %bb.ff ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.sl = load i64, ptr %.sroa.032.2.i.i.i, align 8, !tbaa !138
  %i.sm = icmp eq i64 %i.sl, 0
  %spec.select.i.i.i = select i1 %i.sm, ptr %.sroa.032.2.i.i.i, ptr %i.rj
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.fb
  %i.sn = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 24
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit427: ; preds = %bb.fa
  %i.so = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit429: ; preds = %bb.ez
  %i.sp = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit: ; preds = %bb.ey, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit427, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit429, %._crit_edge._crit_edge57.i.i.i, %._crit_edge._crit_edge.i.i.i, %bb.fd
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %spec.select.i.i.i, %._crit_edge._crit_edge57.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.fd ], [ %i.sp, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit429 ], [ %i.so, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit427 ], [ %i.sn, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.ey ]
  %i.sq = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %i.rj
  br i1 %i.sq, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.thread, label %.critedge7

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.thread: ; preds = %._crit_edge.i.i.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  store i64 %i.qy, ptr %i.f, align 8, !tbaa !138
  %i.sr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixEOm(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.fg unwind label %bb.fh

bb.fg:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.thread
  store i64 %i.qy, ptr %i.sr, align 8, !tbaa !138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  br label %.critedge7

bb.fh:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.thread.1, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.thread
  %i.ss = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  br label %.body215

.critedge7:                                       ; preds = %.preheader, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit, %bb.fg
  %.not.1 = icmp eq i32 %i.qv, -1
  br i1 %.not.1, label %.critedge7.1, label %bb.fi

bb.fi:                                            ; preds = %.critedge7
  %i.st = load ptr, ptr %i.rf, align 8, !tbaa !178 ; 4 uses
  %i.su = load ptr, ptr %i.rg, align 8, !tbaa !178 ; 3 uses
  %i.sv = ptrtoint ptr %i.su to i64               ; 2 uses
  %i.sw = ptrtoint ptr %i.st to i64
  %i.sx = sub i64 %i.sv, %i.sw                    ; 3 uses
  %i.sy = ashr i64 %i.sx, 5                       ; 2 uses
  %i.sz = icmp sgt i64 %i.sy, 0
  br i1 %i.sz, label %.lr.ph.i.i.i249.1, label %._crit_edge.i.i.i.1

.lr.ph.i.i.i249.1:                                ; preds = %bb.fi
  %i.ta = and i64 %i.sx, -32
  %scevgep.i.i.i.1 = getelementptr i8, ptr %i.st, i64 %i.ta ; 2 uses
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fn, %.lr.ph.i.i.i249.1
  %.052.i.i.i.1 = phi i64 [ %i.sy, %.lr.ph.i.i.i249.1 ], [ %i.tn, %bb.fn ] ; 2 uses
  %.sroa.032.051.i.i.i.1 = phi ptr [ %i.st, %.lr.ph.i.i.i249.1 ], [ %i.tm, %bb.fn ] ; 9 uses
  %i.tb = load i64, ptr %.sroa.032.051.i.i.i.1, align 8, !tbaa !138
  %i.tc = icmp eq i64 %i.tb, 1
  br i1 %i.tc, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.td = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.1, i64 8
  %i.te = load i64, ptr %i.td, align 8, !tbaa !138
  %i.tf = icmp eq i64 %i.te, 1
  br i1 %i.tf, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1.loopexit.split.loop.exit437, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.tg = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.1, i64 16
  %i.th = load i64, ptr %i.tg, align 8, !tbaa !138
  %i.ti = icmp eq i64 %i.th, 1
  br i1 %i.ti, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1.loopexit.split.loop.exit435, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.tj = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.1, i64 24
  %i.tk = load i64, ptr %i.tj, align 8, !tbaa !138
  %i.tl = icmp eq i64 %i.tk, 1
  br i1 %i.tl, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1.loopexit.split.loop.exit, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.tm = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.1, i64 32
  %i.tn = add nsw i64 %.052.i.i.i.1, -1
  %i.to = icmp sgt i64 %.052.i.i.i.1, 1
  br i1 %i.to, label %bb.fj, label %._crit_edge.loopexit.i.i.i.1, !llvm.loop !8

._crit_edge.loopexit.i.i.i.1:                     ; preds = %bb.fn
  %.pre59.i.i.i.1 = ptrtoint ptr %scevgep.i.i.i.1 to i64
  %.pre60.i.i.i.1 = sub i64 %i.sv, %.pre59.i.i.i.1
  br label %._crit_edge.i.i.i.1

._crit_edge.i.i.i.1:                              ; preds = %._crit_edge.loopexit.i.i.i.1, %bb.fi
  %.pre-phi61.i.i.i.1 = phi i64 [ %.pre60.i.i.i.1, %._crit_edge.loopexit.i.i.i.1 ], [ %i.sx, %bb.fi ]
  %.sroa.032.0.lcssa.i.i.i.1 = phi ptr [ %scevgep.i.i.i.1, %._crit_edge.loopexit.i.i.i.1 ], [ %i.st, %bb.fi ] ; 5 uses
  %i.tp = ashr exact i64 %.pre-phi61.i.i.i.1, 3
  switch i64 %i.tp, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.thread.1 [
    i64 3, label %bb.fo
    i64 2, label %._crit_edge._crit_edge.i.i.i.1
    i64 1, label %._crit_edge._crit_edge57.i.i.i.1
  ]

bb.fo:                                            ; preds = %._crit_edge.i.i.i.1
  %i.tq = load i64, ptr %.sroa.032.0.lcssa.i.i.i.1, align 8, !tbaa !138
  %i.tr = icmp eq i64 %i.tq, 1
  br i1 %i.tr, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.ts = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.1, i64 8
  br label %._crit_edge._crit_edge.i.i.i.1

._crit_edge._crit_edge.i.i.i.1:                   ; preds = %bb.fp, %._crit_edge.i.i.i.1
  %.sroa.032.1.i.i.i.1 = phi ptr [ %i.ts, %bb.fp ], [ %.sroa.032.0.lcssa.i.i.i.1, %._crit_edge.i.i.i.1 ] ; 3 uses
  %i.tt = load i64, ptr %.sroa.032.1.i.i.i.1, align 8, !tbaa !138
  %i.tu = icmp eq i64 %i.tt, 1
  br i1 %i.tu, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1, label %bb.fq

bb.fq:                                            ; preds = %._crit_edge._crit_edge.i.i.i.1
  %i.tv = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.1, i64 8
  br label %._crit_edge._crit_edge57.i.i.i.1

._crit_edge._crit_edge57.i.i.i.1:                 ; preds = %bb.fq, %._crit_edge.i.i.i.1
  %.sroa.032.2.i.i.i.1 = phi ptr [ %i.tv, %bb.fq ], [ %.sroa.032.0.lcssa.i.i.i.1, %._crit_edge.i.i.i.1 ] ; 2 uses
  %i.tw = load i64, ptr %.sroa.032.2.i.i.i.1, align 8, !tbaa !138
  %i.tx = icmp eq i64 %i.tw, 1
  %spec.select.i.i.i.1 = select i1 %i.tx, ptr %.sroa.032.2.i.i.i.1, ptr %i.su
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1.loopexit.split.loop.exit: ; preds = %bb.fm
  %i.ty = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.1, i64 24
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1.loopexit.split.loop.exit435: ; preds = %bb.fl
  %i.tz = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.1, i64 16
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1.loopexit.split.loop.exit437: ; preds = %bb.fk
  %i.ua = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.1, i64 8
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1: ; preds = %bb.fj, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1.loopexit.split.loop.exit435, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1.loopexit.split.loop.exit437, %._crit_edge._crit_edge57.i.i.i.1, %._crit_edge._crit_edge.i.i.i.1, %bb.fo
  %.sroa.08.0.in.sroa.speculated.i.i.i.1 = phi ptr [ %.sroa.032.1.i.i.i.1, %._crit_edge._crit_edge.i.i.i.1 ], [ %spec.select.i.i.i.1, %._crit_edge._crit_edge57.i.i.i.1 ], [ %.sroa.032.0.lcssa.i.i.i.1, %bb.fo ], [ %i.ua, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1.loopexit.split.loop.exit437 ], [ %i.tz, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1.loopexit.split.loop.exit435 ], [ %i.ty, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i.1, %bb.fj ]
  %i.ub = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.1, %i.su
  br i1 %i.ub, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.thread.1, label %.critedge7.1

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.thread.1: ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1, %._crit_edge.i.i.i.1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  %i.uc = sext i32 %i.qv to i64                   ; 2 uses
  store i64 %i.uc, ptr %i.f, align 8, !tbaa !138
  %i.ud = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixEOm(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.fr unwind label %bb.fh

bb.fr:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.thread.1
  store i64 %i.uc, ptr %i.ud, align 8, !tbaa !138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  br label %.critedge7.1

.critedge7.1:                                     ; preds = %bb.fr, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1, %.critedge7
  %i.ue = getelementptr inbounds nuw i8, ptr %0, i64 336
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24
  store i64 %i.qy, ptr %i.g, align 8, !tbaa !138
  %i.uf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapImN4cvc58internal12NodeTemplateILb0EEESt4lessImESaISt4pairIKmS3_EEEixEOm(ptr noundef nonnull align 8 dereferenceable(48) %i.ue, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.fs unwind label %bb.fu     ; 2 uses

bb.fs:                                            ; preds = %.critedge7.1
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !122
  %i.uh = load ptr, ptr %.ptr.1, align 8, !tbaa !120 ; 2 uses
  %.not.i250 = icmp eq ptr %i.ug, %i.uh
  br i1 %.not.i250, label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit251, label %bb.ft, !prof !125

bb.ft:                                            ; preds = %bb.fs
  store ptr %i.uh, ptr %i.uf, align 8, !tbaa !122
  br label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit251

_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit251: ; preds = %bb.fs, %bb.ft
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  %i.ui = getelementptr inbounds nuw i8, ptr %0, i64 384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #24
  store i64 %i.qy, ptr %i.h, align 8, !tbaa !138
  %i.uj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixEOm(ptr noundef nonnull align 8 dereferenceable(48) %i.ui, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %.split336 unwind label %bb.fv

.split336:                                        ; preds = %_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit251
  %i.uk = sext i32 %i.qv to i64
  store i64 %i.uk, ptr %i.uj, align 8, !tbaa !138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #24
  br label %bb.fx

bb.fu:                                            ; preds = %.critedge7.1
  %i.ul = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  br label %.body215

bb.fv:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit251
  %i.um = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #24
  br label %.body215

bb.fw:                                            ; preds = %bb.el, %bb.ev
  %.061.in = phi i1 [ %i.qo, %bb.el ], [ %i.rd, %bb.ev ]
  br i1 %.061.in, label %bb.fx, label %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE9push_backEOS4_.exit261

bb.fx:                                            ; preds = %.split336, %.split335, %.split, %bb.fw
  %i.un = load ptr, ptr %i.r, align 8, !tbaa !491 ; 4 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !499
  %.not.i.i252 = icmp eq ptr %i.un, %i.up
  br i1 %.not.i.i252, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  store ptr null, ptr %i.un, align 8, !tbaa !498
  %i.uq = getelementptr inbounds nuw i8, ptr %i.un, i64 8
  store ptr %i.uq, ptr %i.r, align 8, !tbaa !491
  br label %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE9push_backEOS4_.exit261

bb.fz:                                            ; preds = %bb.fx
  %i.ur = load ptr, ptr %i.p, align 8, !tbaa !490 ; 4 uses
  %i.us = ptrtoint ptr %i.un to i64
  %i.ut = ptrtoint ptr %i.ur to i64               ; 2 uses
  %i.uu = sub i64 %i.us, %i.ut                    ; 5 uses
  %i.uv = icmp eq i64 %i.uu, 9223372036854775800
  br i1 %i.uv, label %bb.ga, label %_ZNKSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i253

bb.ga:                                            ; preds = %bb.fz
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.239) #26
          to label %.noexc259 unwind label %bb.gd

.noexc259:                                        ; preds = %bb.ga
  unreachable

_ZNKSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i253: ; preds = %bb.fz
  %i.uw = ashr exact i64 %i.uu, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i254 = call i64 @llvm.umax.i64(i64 %i.uw, i64 1)
  %i.ux = add nsw i64 %.sroa.speculated.i.i.i.i254, %i.uw ; 2 uses
  %i.uy = icmp ult i64 %i.ux, %i.uw
  %i.uz = call i64 @llvm.umin.i64(i64 %i.ux, i64 1152921504606846975)
  %i.va = select i1 %i.uy, i64 1152921504606846975, i64 %i.uz ; 3 uses
  %.not.i.i.i.i255 = icmp ne i64 %i.va, 0
  call void @llvm.assume(i1 %.not.i.i.i.i255)
  %i.vb = shl nuw nsw i64 %i.va, 3
  %i.vc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vb) #27
          to label %.noexc260 unwind label %bb.gd ; 4 uses

.noexc260:                                        ; preds = %_ZNKSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i253
  %i.vd = getelementptr inbounds i8, ptr %i.vc, i64 %i.uu ; 2 uses
  store ptr null, ptr %i.vd, align 8, !tbaa !498
  %i.ve = icmp sgt i64 %i.uu, 0
  br i1 %i.ve, label %bb.gb, label %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i256

bb.gb:                                            ; preds = %.noexc260
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.vc, ptr align 8 %i.ur, i64 %i.uu, i1 false)
  br label %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i256

_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i256: ; preds = %bb.gb, %.noexc260
  %i.vf = getelementptr inbounds nuw i8, ptr %i.vd, i64 8
  %.not.i17.i.i.i257 = icmp eq ptr %i.ur, null
  br i1 %.not.i17.i.i.i257, label %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i258, label %bb.gc

bb.gc:                                            ; preds = %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i256
  %i.vg = load ptr, ptr %i.uo, align 8, !tbaa !499
  %i.vh = ptrtoint ptr %i.vg to i64
  %i.vi = sub i64 %i.vh, %i.ut
  call void @_ZdlPvm(ptr noundef nonnull %i.ur, i64 noundef %i.vi) #28
  br label %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i258

_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i258: ; preds = %bb.gc, %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i256
  store ptr %i.vc, ptr %i.p, align 8, !tbaa !490
  store ptr %i.vf, ptr %i.r, align 8, !tbaa !491
  %i.vj = getelementptr inbounds nuw [8 x i8], ptr %i.vc, i64 %i.va
  store ptr %i.vj, ptr %i.uo, align 8, !tbaa !499
  br label %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE9push_backEOS4_.exit261

bb.gd:                                            ; preds = %_ZNKSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i253, %bb.ga
  %i.vk = landingpad { ptr, i32 }
          cleanup
  br label %.body215

_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE9push_backEOS4_.exit261: ; preds = %bb.fy, %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i258, %.split335, %.split, %bb.fw
  %i.vl = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !120 ; 3 uses
  %i.vn = load i64, ptr %i.vm, align 8            ; 3 uses
  %i.vo = and i64 %i.vn, 1152920405095219200
  %.not.i.i262 = icmp eq i64 %i.vo, 1152920405095219200
  br i1 %.not.i.i262, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit264, label %bb.ge, !prof !125

bb.ge:                                            ; preds = %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE9push_backEOS4_.exit261
  %i.vp = add i64 %i.vn, 1152920405095219200
  %i.vq = and i64 %i.vp, 1152920405095219200      ; 2 uses
  %i.vr = and i64 %i.vn, -1152920405095219201
  %i.vs = or disjoint i64 %i.vq, %i.vr
  store i64 %i.vs, ptr %i.vm, align 8
  %i.vt = icmp eq i64 %i.vq, 0
  br i1 %i.vt, label %bb.gf, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit264, !prof !125

bb.gf:                                            ; preds = %bb.ge
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.vm)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit264 unwind label %bb.gg

bb.gg:                                            ; preds = %bb.gi, %bb.gf
  %i.vu = landingpad { ptr, i32 }
          catch ptr null
  %i.vv = extractvalue { ptr, i32 } %i.vu, 0
  call void @__clang_call_terminate(ptr %i.vv) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit264: ; preds = %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE9push_backEOS4_.exit261, %bb.ge, %bb.gf
  %i.vw = load ptr, ptr %16, align 16, !tbaa !120 ; 3 uses
  %i.vx = load i64, ptr %i.vw, align 8            ; 3 uses
  %i.vy = and i64 %i.vx, 1152920405095219200
  %.not.i.i262.1 = icmp eq i64 %i.vy, 1152920405095219200
  br i1 %.not.i.i262.1, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit264.1, label %bb.gh, !prof !125

bb.gh:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit264
  %i.vz = add i64 %i.vx, 1152920405095219200
  %i.wa = and i64 %i.vz, 1152920405095219200      ; 2 uses
  %i.wb = and i64 %i.vx, -1152920405095219201
  %i.wc = or disjoint i64 %i.wa, %i.wb
  store i64 %i.wc, ptr %i.vw, align 8
  %i.wd = icmp eq i64 %i.wa, 0
  br i1 %i.wd, label %bb.gi, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit264.1, !prof !125

bb.gi:                                            ; preds = %bb.gh
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.vw)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit264.1 unwind label %bb.gg

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit264.1: ; preds = %bb.gi, %bb.gh, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit264
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %bb.go

.body215:                                         ; preds = %bb.fh, %bb.dm, %bb.ei, %bb.eh, %bb.dv, %bb.em, %bb.eu, %bb.gd, %bb.fv, %bb.fu, %bb.ew, %bb.de, %bb.dh, %bb.dd
  %.pn91.pn = phi { ptr, i32 } [ %i.ss, %bb.fh ], [ %i.rh, %bb.ew ], [ %.pn81, %bb.dd ], [ %.pn83, %bb.dh ], [ %i.lw, %bb.de ], [ %i.vk, %bb.gd ], [ %i.qp, %bb.em ], [ %.pn, %bb.eh ], [ %.pn86, %bb.eu ], [ %i.py, %bb.ei ], [ %i.nz, %bb.dv ], [ %i.um, %bb.fv ], [ %i.ul, %bb.fu ], [ %i.me, %bb.dm ]
  %i.we = getelementptr inbounds nuw i8, ptr %16, i64 8
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.we) #24
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #24
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader347.preheader, %.body.thread, %.body215
  %.pn91.pn.pn = phi { ptr, i32 } [ %.pn91.pn, %.body215 ], [ %i.ib, %.body.thread ], [ %i.id, %.preheader347.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %common.resume

bb.gj:                                            ; preds = %bb.i
  %i.wf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.wg = load ptr, ptr %i.wf, align 8, !tbaa !486 ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.wi = load ptr, ptr %i.wh, align 8, !tbaa !486
  %i.wj = icmp eq ptr %i.wg, %i.wi
  br i1 %i.wj, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %bb.gj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #24
  store ptr null, ptr %i.i, align 8, !tbaa !498
  call void @_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE9push_backEOS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #24
  br label %bb.go

bb.gl:                                            ; preds = %bb.gj
  %i.wk = load i8, ptr %i.l, align 8, !tbaa !489, !range !405, !noundef !144
  %i.wl = trunc nuw i8 %i.wk to i1                ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.wn = load ptr, ptr %i.wm, align 8, !tbaa !120
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 8
  %i.wp = load i64, ptr %i.wo, align 8            ; 2 uses
  %i.wq = and i64 %i.wp, 1023
  %i.wr = icmp eq i64 %i.wq, 369
  %or.cond444 = select i1 %i.wl, i1 %i.wr, i1 false
  br i1 %or.cond444, label %bb.go, label %._crit_edge381

._crit_edge381:                                   ; preds = %bb.gl
  %i.ws = and i64 %i.wp, 1023
  %i.wt = icmp eq i64 %i.ws, 369
  br i1 %i.wt, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %._crit_edge381
  %i.wu = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.wv = load ptr, ptr %i.wu, align 8, !tbaa !487
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 448
  %i.wx = load i32, ptr %i.ww, align 8, !tbaa !484
  %i.wy = icmp eq i32 %i.wx, 0
  br i1 %i.wy, label %bb.go, label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %._crit_edge381
  store i32 0, ptr %i.ag, align 8, !tbaa !494
  %i.wz = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.xa = load ptr, ptr %i.wz, align 8, !tbaa !181
  %i.xb = load i64, ptr %i.xa, align 8, !tbaa !138
  %i.xc = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %i.xb
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !148
  tail call void @_ZN4cvc58internal6theory11quantifiers8MatchGen5resetEb(ptr noundef nonnull align 8 dereferenceable(496) %i.xd, i1 noundef zeroext %i.wl)
  br label %bb.go

bb.go:                                            ; preds = %bb.gl, %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.bm, %.critedge, %bb.f, %_ZNSt3mapImN4cvc58internal12NodeTemplateILb1EEESt4lessImESaISt4pairIKmS3_EEEixEOm.exit147, %bb.ag, %bb.gk, %bb.gn, %bb.gm, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit264.1, %bb.bj, %bb.h, %bb.c
  %i.xe = getelementptr inbounds nuw i8, ptr %0, i64 441
  store i8 0, ptr %i.xe, align 1, !tbaa !502
  %i.xf = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 1, ptr %i.xf, align 2, !tbaa !485
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN4cvc58internal6theory11quantifiers9QuantInfo16getCurrentRepVarEm(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(648) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.h, %bb.a
  %.tr21 = phi i64 [ %1, %bb.a ], [ %i.ad, %bb.h ] ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !135
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.tr21
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !122  ; 2 uses
  %i.g = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.e, !prof !409

bb.b:                                             ; preds = %tailrecurse
  %i.i = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.d unwind label %.body      ; 3 uses

bb.d:                                             ; preds = %bb.c
  store i64 1152920405095219200, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store ptr %i.j, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !129
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  br label %bb.e

.body:                                            ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  resume { ptr, i32 } %i.l

bb.e:                                             ; preds = %bb.d, %bb.b, %tailrecurse
  %i.m = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !129
  %i.n = icmp eq ptr %i.f, %i.m
  br i1 %i.n, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !45   ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not10.i.i.i, label %.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f
  %i.p = load i64, ptr %i.f, align 8
  %i.q = and i64 %i.p, 1099511627775              ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.g ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.g ]
  %i.r = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !122
  %i.t = load i64, ptr %i.s, align 8
  %i.u = and i64 %i.t, 1099511627775
  %i.v = icmp samesign ult i64 %i.u, %i.q         ; 2 uses
  %.19.i.i.i = select i1 %i.v, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.v, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !136 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i, label %bb.g, !llvm.loop !2

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i: ; preds = %bb.g
  %i.w = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.w, label %.thread, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb0EEEmSt4lessIS3_ESaISt4pairIKS3_mEEE4findERS7_.exit

_ZNSt3mapIN4cvc58internal12NodeTemplateILb0EEEmSt4lessIS3_ESaISt4pairIKS3_mEEE4findERS7_.exit: ; preds = %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !122
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = and i64 %i.z, 1099511627775
  %i.ab = icmp samesign ult i64 %i.q, %i.aa
  br i1 %i.ab, label %.thread, label %bb.h

bb.h:                                             ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb0EEEmSt4lessIS3_ESaISt4pairIKS3_mEEE4findERS7_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !452
  br label %tailrecurse

.thread:                                          ; preds = %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i, %bb.f, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb0EEEmSt4lessIS3_ESaISt4pairIKS3_mEEE4findERS7_.exit, %bb.e
  ret i64 %.tr21
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory11quantifiers9QuantInfo15getCurrentValueENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cvc5::internal::NodeTemplate.398") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(648) %1, ptr nofree noundef readonly align 8 captures(none) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %4 = alloca %"class.cvc5::internal::NodeTemplate.398", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  %.pre10 = load ptr, ptr %2, align 8, !tbaa !122 ; 2 uses
  br i1 %.not10.i.i.i, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb0EEEmSt4lessIS3_ESaISt4pairIKS3_mEEE4findERS7_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = load i64, ptr %.pre10, align 8
  %i.e = and i64 %i.d, 1099511627775              ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !122
  %i.h = load i64, ptr %i.g, align 8
  %i.i = and i64 %i.h, 1099511627775
  %i.j = icmp samesign ult i64 %i.i, %i.e         ; 2 uses
  %.19.i.i.i = select i1 %i.j, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.j, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !136 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i, label %bb.b, !llvm.loop !2

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i: ; preds = %bb.b
  %i.k = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.k, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb0EEEmSt4lessIS3_ESaISt4pairIKS3_mEEE4findERS7_.exit.thread, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb0EEEmSt4lessIS3_ESaISt4pairIKS3_mEEE4findERS7_.exit

_ZNSt3mapIN4cvc58internal12NodeTemplateILb0EEEmSt4lessIS3_ESaISt4pairIKS3_mEEE4findERS7_.exit: ; preds = %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !122
  %i.n = load i64, ptr %i.m, align 8
  %i.o = and i64 %i.n, 1099511627775
end_hunk_1
