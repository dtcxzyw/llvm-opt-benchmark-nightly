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
  store ptr %i.d, ptr %1, align 8, !tbaa !178, !alias.scope !707
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
  br i1 %exitcond.not, label %.thread126, label %bb.ad, !llvm.loop !701

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
  %.sroa.0 = alloca i32, align 4                  ; 6 uses
  %.sroa.6 = alloca i32, align 4                  ; 5 uses
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
  %indvars.iv.sroa.gep466 = getelementptr inbounds nuw i8, ptr %16, i64 8
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
  br label %bb.ga

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
  store ptr %i.a, ptr %4, align 8, !tbaa !178, !alias.scope !717
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
  store ptr %i.b, ptr %2, align 8, !tbaa !178, !alias.scope !718
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
  br i1 %i.bh, label %bb.f, label %bb.ga

bb.f:                                             ; preds = %_ZNSt3mapImN4cvc58internal12NodeTemplateILb1EEESt4lessImESaISt4pairIKmS3_EEEixEOm.exit147
  store i32 0, ptr %i.ag, align 8, !tbaa !494
  br label %bb.ga

.critedge:                                        ; preds = %_ZNSt3mapImN4cvc58internal12NodeTemplateILb1EEESt4lessImESaISt4pairIKmS3_EEEixEOm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.ga

bb.g:                                             ; preds = %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE5clearEv.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 11 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !444
  %i.bk = tail call noundef zeroext i1 @_ZN4cvc58internal6theory11quantifiers9QuantInfo19isBaseMatchCompleteEv(ptr noundef nonnull align 8 dereferenceable(648) %i.bj)
  br i1 %i.bk, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i8 0, ptr %i.ah, align 4, !tbaa !495
  store i32 0, ptr %i.ag, align 8, !tbaa !494
  br label %bb.ga

bb.i:                                             ; preds = %bb.g
  %i.bl = load i16, ptr %i.o, align 8, !tbaa !177
  switch i16 %i.bl, label %bb.fv [
    i16 6, label %bb.j
    i16 5, label %bb.af
    i16 8, label %bb.bh
    i16 7, label %bb.bh
    i16 2, label %bb.bt
    i16 3, label %bb.bt
  ]
end_hunk_0
begin_hunk_1_@_ZN4cvc58internal6theory11quantifiers8MatchGen5resetEb:bb.a
  br label %bb.ga

bb.bg:                                            ; preds = %bb.bc, %bb.bd
  %.pn97 = phi { ptr, i32 } [ %i.fx, %bb.bd ], [ %.pn95, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  br label %common.resume

bb.bh:                                            ; preds = %bb.i, %bb.i
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !46 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %.not343365 = icmp eq ptr %i.ga, %i.gb
  br i1 %.not343365, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.bs, %bb.bh
  %i.gc = load ptr, ptr %i.r, align 8, !tbaa !491 ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !499
  %.not.i.i166 = icmp eq ptr %i.gc, %i.ge
  br i1 %.not.i.i166, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %._crit_edge
  store ptr null, ptr %i.gc, align 8, !tbaa !498
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  store ptr %i.gf, ptr %i.r, align 8, !tbaa !491
  br label %bb.ga

bb.bj:                                            ; preds = %._crit_edge
  %i.gg = load ptr, ptr %i.p, align 8, !tbaa !490 ; 4 uses
  %i.gh = ptrtoint ptr %i.gc to i64
  %i.gi = ptrtoint ptr %i.gg to i64               ; 2 uses
  %i.gj = sub i64 %i.gh, %i.gi                    ; 5 uses
  %i.gk = icmp eq i64 %i.gj, 9223372036854775800
  br i1 %i.gk, label %bb.bk, label %_ZNKSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.bk:                                            ; preds = %bb.bj
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.239) #28
  unreachable

_ZNKSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bj
  %i.gl = ashr exact i64 %i.gj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.gl, i64 1)
  %i.gm = add nsw i64 %.sroa.speculated.i.i.i.i, %i.gl ; 2 uses
  %i.gn = icmp ult i64 %i.gm, %i.gl
  %i.go = tail call i64 @llvm.umin.i64(i64 %i.gm, i64 1152921504606846975)
  %i.gp = select i1 %i.gn, i64 1152921504606846975, i64 %i.go ; 3 uses
  %.not.i.i.i.i167 = icmp ne i64 %i.gp, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i167)
  %i.gq = shl nuw nsw i64 %i.gp, 3
  %i.gr = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gq) #26 ; 4 uses
  %i.gs = getelementptr inbounds i8, ptr %i.gr, i64 %i.gj ; 2 uses
  store ptr null, ptr %i.gs, align 8, !tbaa !498
  %i.gt = icmp sgt i64 %i.gj, 0
  br i1 %i.gt, label %bb.bl, label %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

bb.bl:                                            ; preds = %_ZNKSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gr, ptr align 8 %i.gg, i64 %i.gj, i1 false)
  br label %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i: ; preds = %bb.bl, %_ZNKSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.gg, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  %i.gv = load ptr, ptr %i.gd, align 8, !tbaa !499
  %i.gw = ptrtoint ptr %i.gv to i64
  %i.gx = sub i64 %i.gw, %i.gi
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gg, i64 noundef %i.gx) #27
  br label %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.bm, %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  store ptr %i.gr, ptr %i.p, align 8, !tbaa !490
  store ptr %i.gu, ptr %i.r, align 8, !tbaa !491
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.gp
  store ptr %i.gy, ptr %i.gd, align 8, !tbaa !499
  br label %bb.ga

.lr.ph:                                           ; preds = %bb.bh, %bb.bs
  %.sroa.0324.0366 = phi ptr [ %i.hs, %bb.bs ], [ %i.ga, %bb.bh ] ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.0324.0366, i64 32
  %i.ha = load ptr, ptr %i.bi, align 8, !tbaa !444
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.0324.0366, i64 40
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !501
  %i.hd = tail call noundef i64 @_ZN4cvc58internal6theory11quantifiers9QuantInfo16getCurrentRepVarEm(ptr noundef nonnull align 8 dereferenceable(648) %i.ha, i64 noundef %i.hc) ; 2 uses
  %i.he = load ptr, ptr %i.bi, align 8, !tbaa !444
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 136
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !135
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %i.hd
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !122
  %i.hj = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.hk = icmp eq i8 %i.hj, 0
  br i1 %i.hk, label %bb.bn, label %_ZNK4cvc58internal12NodeTemplateILb0EE6isNullEv.exit, !prof !409

bb.bn:                                            ; preds = %.lr.ph
  %i.hl = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  %.not.i.i168 = icmp eq i32 %i.hl, 0
  br i1 %.not.i.i168, label %_ZNK4cvc58internal12NodeTemplateILb0EE6isNullEv.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hm = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26
          to label %bb.bp unwind label %bb.bq     ; 3 uses

bb.bp:                                            ; preds = %bb.bo
  store i64 1152920405095219200, ptr %i.hm, align 8
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hn, i8 0, i64 16, i1 false)
  store ptr %i.hm, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !129
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  br label %_ZNK4cvc58internal12NodeTemplateILb0EE6isNullEv.exit

common.resume:                                    ; preds = %bb.bg, %bb.ae, %.loopexit, %bb.bq
  %common.resume.op = phi { ptr, i32 } [ %i.ho, %bb.bq ], [ %.pn106.pn, %bb.ae ], [ %.pn91.pn.pn, %.loopexit ], [ %.pn97, %bb.bg ]
  resume { ptr, i32 } %common.resume.op

bb.bq:                                            ; preds = %bb.bo
  %i.ho = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  br label %common.resume

_ZNK4cvc58internal12NodeTemplateILb0EE6isNullEv.exit: ; preds = %.lr.ph, %bb.bn, %bb.bp
  %i.hp = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !129
  %i.hq = icmp eq ptr %i.hi, %i.hp
  br i1 %i.hq, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb0EE6isNullEv.exit
  %i.hr = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %i.gz)
  store i64 %i.hd, ptr %i.hr, align 8, !tbaa !138
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %_ZNK4cvc58internal12NodeTemplateILb0EE6isNullEv.exit
  %i.hs = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0324.0366) #29 ; 2 uses
  %.not343 = icmp eq ptr %i.hs, %i.gb
  br i1 %.not343, label %._crit_edge, label %.lr.ph

bb.bt:                                            ; preds = %bb.i, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  %i.ht = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.hu = icmp eq i8 %i.ht, 0
  br i1 %i.hu, label %bb.bu, label %bb.bx, !prof !409

bb.bu:                                            ; preds = %bb.bt
  %i.hv = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  %.not.i.i189 = icmp eq i32 %i.hv, 0
  br i1 %.not.i.i189, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.hw = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26
          to label %bb.bw unwind label %.body.thread ; 3 uses

.body.thread:                                     ; preds = %bb.bv
  %i.hx = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  br label %.loopexit

bb.bw:                                            ; preds = %bb.bv
  store i64 1152920405095219200, ptr %i.hw, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hy, i8 0, i64 16, i1 false)
  store ptr %i.hw, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !129
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  br label %bb.bx

.preheader348.preheader:                          ; preds = %bb.bz
  %i.hz = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #24
  br label %.loopexit

bb.bx:                                            ; preds = %bb.bw, %bb.bu, %bb.bt
  %i.ia = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !129
  store ptr %i.ia, ptr %16, align 16, !tbaa !120
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 10 uses
  %i.ib = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.ic = icmp eq i8 %i.ib, 0
  br i1 %i.ic, label %bb.by, label %bb.cb, !prof !409

bb.by:                                            ; preds = %bb.bx
  %i.id = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  %.not.i.i189.1 = icmp eq i32 %i.id, 0
  br i1 %.not.i.i189.1, label %bb.cb, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ie = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26
          to label %bb.ca unwind label %.preheader348.preheader ; 3 uses

bb.ca:                                            ; preds = %bb.bz
  store i64 1152920405095219200, ptr %i.ie, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.if, i8 0, i64 16, i1 false)
  store ptr %i.ie, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !129
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.by, %bb.bx
  %i.ig = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !129
  store ptr %i.ig, ptr %.ptr.1, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.ih = load i16, ptr %i.o, align 8, !tbaa !177
  %i.ii = icmp eq i16 %i.ih, 2
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %i.ii, label %bb.cc, label %.preheader345

.preheader345:                                    ; preds = %bb.cb
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  br label %bb.db

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  %i.im = load ptr, ptr %i.bi, align 8, !tbaa !444
  %i.in = load ptr, ptr %i.ij, align 8, !tbaa !120
  store ptr %i.in, ptr %18, align 8, !tbaa !122
  invoke void @_ZN4cvc58internal6theory11quantifiers9QuantInfo15getCurrentValueENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate.398") align 8 %17, ptr noundef nonnull align 8 dereferenceable(648) %i.im, ptr noundef nonnull align 8 %18)
          to label %bb.cd unwind label %bb.cx

bb.cd:                                            ; preds = %bb.cc
  %i.io = load ptr, ptr %16, align 16, !tbaa !120 ; 4 uses
  %i.ip = load ptr, ptr %17, align 8, !tbaa !122  ; 6 uses
  %.not.i190 = icmp eq ptr %i.io, %i.ip
  br i1 %.not.i190, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit, label %bb.ce, !prof !125

bb.ce:                                            ; preds = %bb.cd
  %i.iq = load i64, ptr %i.io, align 8            ; 3 uses
  %i.ir = and i64 %i.iq, 1152920405095219200
  %.not.i.i191 = icmp eq i64 %i.ir, 1152920405095219200
  br i1 %.not.i.i191, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, label %bb.cf, !prof !125

bb.cf:                                            ; preds = %bb.ce
  %i.is = add i64 %i.iq, 1152920405095219200
  %i.it = and i64 %i.is, 1152920405095219200      ; 2 uses
  %i.iu = and i64 %i.iq, -1152920405095219201
  %i.iv = or disjoint i64 %i.it, %i.iu
  store i64 %i.iv, ptr %i.io, align 8
  %i.iw = icmp eq i64 %i.it, 0
  br i1 %i.iw, label %bb.cg, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, !prof !125

bb.cg:                                            ; preds = %bb.cf
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.io)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i unwind label %bb.cx

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i:    ; preds = %bb.cg, %bb.cf, %bb.ce
  store ptr %i.ip, ptr %16, align 16, !tbaa !120
  %i.ix = load i64, ptr %i.ip, align 8            ; 3 uses
  %i.iy = lshr i64 %i.ix, 40
  %i.iz = trunc nuw nsw i64 %i.iy to i32
  %i.ja = and i32 %i.iz, 1048575                  ; 3 uses
  %i.jb = icmp samesign ult i32 %i.ja, 1048574
  br i1 %i.jb, label %bb.ch, label %bb.ci, !prof !124

bb.ch:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.jc = add nuw nsw i32 %i.ja, 1
  %i.jd = zext nneg i32 %i.jc to i64
  %i.je = shl nuw nsw i64 %i.jd, 40
  %i.jf = and i64 %i.ix, -1152920405095219201
  %i.jg = or i64 %i.je, %i.jf
  store i64 %i.jg, ptr %i.ip, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit

bb.ci:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.jh = icmp eq i32 %i.ja, 1048574
  br i1 %i.jh, label %bb.cj, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit, !prof !125

bb.cj:                                            ; preds = %bb.ci
  %i.ji = or i64 %i.ix, 1152920405095219200
  store i64 %i.ji, ptr %i.ip, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ip)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit unwind label %bb.cx

_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit: ; preds = %bb.ci, %bb.ch, %bb.cd, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  %i.jj = load ptr, ptr %i.bi, align 8, !tbaa !444 ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 80
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !45 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jj, i64 72 ; 2 uses
  %.not10.i.i.i.i194 = icmp eq ptr %i.jl, null
  br i1 %.not10.i.i.i.i194, label %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit205.thread, label %.lr.ph.i.i.i.i195

.lr.ph.i.i.i.i195:                                ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit
  %i.jn = load ptr, ptr %16, align 16, !tbaa !120
  %i.jo = load i64, ptr %i.jn, align 8
  %i.jp = and i64 %i.jo, 1099511627775            ; 2 uses
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ck, %.lr.ph.i.i.i.i195
  %.012.i.i.i.i196 = phi ptr [ %i.jl, %.lr.ph.i.i.i.i195 ], [ %.1.i.i.i.i201, %bb.ck ] ; 3 uses
  %.0811.i.i.i.i197 = phi ptr [ %i.jm, %.lr.ph.i.i.i.i195 ], [ %.19.i.i.i.i198, %bb.ck ]
  %i.jq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i196, i64 32
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !122
  %i.js = load i64, ptr %i.jr, align 8
  %i.jt = and i64 %i.js, 1099511627775
  %i.ju = icmp samesign ult i64 %i.jt, %i.jp      ; 2 uses
  %.19.i.i.i.i198 = select i1 %i.ju, ptr %.0811.i.i.i.i197, ptr %.012.i.i.i.i196 ; 4 uses
  %.1.in.v.i.i.i.i199 = select i1 %i.ju, i64 24, i64 16
  %.1.in.i.i.i.i200 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i196, i64 %.1.in.v.i.i.i.i199
  %.1.i.i.i.i201 = load ptr, ptr %.1.in.i.i.i.i200, align 8, !tbaa !136 ; 2 uses
  %.not.i.i.i.i202 = icmp eq ptr %.1.i.i.i.i201, null
  br i1 %.not.i.i.i.i202, label %_ZNKSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i203, label %bb.ck, !llvm.loop !14

_ZNKSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i203: ; preds = %bb.ck
  %i.jv = icmp eq ptr %.19.i.i.i.i198, %i.jm
  br i1 %i.jv, label %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit205.thread, label %_ZNKSt3mapIN4cvc58internal12NodeTemplateILb0EEEmSt4lessIS3_ESaISt4pairIKS3_mEEE4findERS7_.exit.i204

_ZNKSt3mapIN4cvc58internal12NodeTemplateILb0EEEmSt4lessIS3_ESaISt4pairIKS3_mEEE4findERS7_.exit.i204: ; preds = %_ZNKSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i203
  %i.jw = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i198, i64 32
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !122
  %i.jy = load i64, ptr %i.jx, align 8
  %i.jz = and i64 %i.jy, 1099511627775
  %i.ka = icmp samesign ult i64 %i.jp, %i.jz
  br i1 %i.ka, label %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit205.thread, label %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit205

_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit205: ; preds = %_ZNKSt3mapIN4cvc58internal12NodeTemplateILb0EEEmSt4lessIS3_ESaISt4pairIKS3_mEEE4findERS7_.exit.i204
  %i.kb = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i198, i64 40
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !452 ; 2 uses
  %i.kd = and i64 %i.kc, 4294967295
  %i.ke = icmp eq i64 %i.kd, 4294967295
  br i1 %i.ke, label %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit205.thread, label %bb.cl

bb.cl:                                            ; preds = %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit205
  %sext341 = shl i64 %i.kc, 32
  %i.kf = ashr exact i64 %sext341, 32
  %i.kg = invoke noundef i64 @_ZN4cvc58internal6theory11quantifiers9QuantInfo16getCurrentRepVarEm(ptr noundef nonnull align 8 dereferenceable(648) %i.jj, i64 noundef %i.kf)
          to label %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit205.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit205.thread: ; preds = %_ZNKSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i203, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit, %_ZNKSt3mapIN4cvc58internal12NodeTemplateILb0EEEmSt4lessIS3_ESaISt4pairIKS3_mEEE4findERS7_.exit.i204, %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit205, %bb.cl
  %i.kh = phi i64 [ %i.kg, %bb.cl ], [ -1, %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit205 ], [ -1, %_ZNKSt3mapIN4cvc58internal12NodeTemplateILb0EEEmSt4lessIS3_ESaISt4pairIKS3_mEEE4findERS7_.exit.i204 ], [ -1, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit ], [ -1, %_ZNKSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i203 ]
  %i.ki = trunc i64 %i.kh to i32                  ; 2 uses
  store i32 %i.ki, ptr %.sroa.0, align 4, !tbaa !431
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  %i.kj = invoke noundef ptr @_ZNK4cvc58internal6EnvObj11nodeManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.cm unwind label %bb.cy

bb.cm:                                            ; preds = %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit205.thread
  invoke void @_ZN4cvc58internal11NodeManager7mkConstIbEENS0_12NodeTemplateILb1EEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %19, ptr noundef nonnull align 8 dereferenceable(3592) %i.kj, ptr noundef nonnull align 1 dereferenceable(1) %i.l)
          to label %bb.cn unwind label %bb.cy

bb.cn:                                            ; preds = %bb.cm
  %i.kk = load ptr, ptr %.ptr.1, align 8, !tbaa !120 ; 4 uses
  %i.kl = load ptr, ptr %19, align 8, !tbaa !120
  %.not.i206 = icmp eq ptr %i.kk, %i.kl
  br i1 %.not.i206, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, label %bb.co, !prof !125

bb.co:                                            ; preds = %bb.cn
  %i.km = load i64, ptr %i.kk, align 8            ; 3 uses
  %i.kn = and i64 %i.km, 1152920405095219200
  %.not.i.i207 = icmp eq i64 %i.kn, 1152920405095219200
  br i1 %.not.i.i207, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i208, label %bb.cp, !prof !125

bb.cp:                                            ; preds = %bb.co
  %i.ko = add i64 %i.km, 1152920405095219200
  %i.kp = and i64 %i.ko, 1152920405095219200      ; 2 uses
  %i.kq = and i64 %i.km, -1152920405095219201
  %i.kr = or disjoint i64 %i.kp, %i.kq
  store i64 %i.kr, ptr %i.kk, align 8
  %i.ks = icmp eq i64 %i.kp, 0
  br i1 %i.ks, label %bb.cq, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i208, !prof !125

bb.cq:                                            ; preds = %bb.cp
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.kk)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i208 unwind label %bb.cz

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i208: ; preds = %bb.cq, %bb.cp, %bb.co
  %i.kt = load ptr, ptr %19, align 8, !tbaa !120  ; 5 uses
  store ptr %i.kt, ptr %.ptr.1, align 8, !tbaa !120
  %i.ku = load i64, ptr %i.kt, align 8            ; 3 uses
  %i.kv = lshr i64 %i.ku, 40
  %i.kw = trunc nuw nsw i64 %i.kv to i32
  %i.kx = and i32 %i.kw, 1048575                  ; 3 uses
  %i.ky = icmp samesign ult i32 %i.kx, 1048574
  br i1 %i.ky, label %bb.cr, label %bb.cs, !prof !124

bb.cr:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i208
  %i.kz = add nuw nsw i32 %i.kx, 1
  %i.la = zext nneg i32 %i.kz to i64
  %i.lb = shl nuw nsw i64 %i.la, 40
  %i.lc = and i64 %i.ku, -1152920405095219201
  %i.ld = or i64 %i.lb, %i.lc
  store i64 %i.ld, ptr %i.kt, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit

bb.cs:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i208
  %i.le = icmp eq i32 %i.kx, 1048574
  br i1 %i.le, label %bb.ct, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, !prof !125

bb.ct:                                            ; preds = %bb.cs
  %i.lf = or i64 %i.ku, 1152920405095219200
  store i64 %i.lf, ptr %i.kt, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.kt)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit unwind label %bb.cz

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit: ; preds = %bb.cs, %bb.cr, %bb.cn, %bb.ct
  %i.lg = load ptr, ptr %19, align 8, !tbaa !120  ; 3 uses
  %i.lh = load i64, ptr %i.lg, align 8            ; 3 uses
  %i.li = and i64 %i.lh, 1152920405095219200
  %.not.i.i211 = icmp eq i64 %i.li, 1152920405095219200
  br i1 %.not.i.i211, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit213, label %bb.cu, !prof !125

bb.cu:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit
  %i.lj = add i64 %i.lh, 1152920405095219200
  %i.lk = and i64 %i.lj, 1152920405095219200      ; 2 uses
  %i.ll = and i64 %i.lh, -1152920405095219201
  %i.lm = or disjoint i64 %i.lk, %i.ll
  store i64 %i.lm, ptr %i.lg, align 8
  %i.ln = icmp eq i64 %i.lk, 0
  br i1 %i.ln, label %bb.cv, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit213, !prof !125

bb.cv:                                            ; preds = %bb.cu
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.lg)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit213 unwind label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.lo = landingpad { ptr, i32 }
          catch ptr null
  %i.lp = extractvalue { ptr, i32 } %i.lo, 0
  call void @__clang_call_terminate(ptr %i.lp) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit213: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, %bb.cu, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  store i8 1, ptr %i.l, align 8, !tbaa !489
  br label %.loopexit346

bb.cx:                                            ; preds = %bb.cc, %bb.cj, %bb.cg
  %i.lq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  br label %.body215

bb.cy:                                            ; preds = %bb.cm, %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit205.thread
  %i.lr = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.cz:                                            ; preds = %bb.ct, %bb.cq
  %i.ls = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #24
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %.pn83 = phi { ptr, i32 } [ %i.ls, %bb.cz ], [ %i.lr, %bb.cy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  br label %.body215

bb.db:                                            ; preds = %.preheader345, %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit242.thread
  %26 = phi i1 [ true, %.preheader345 ], [ false, %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit242.thread ]
  %indvars.iv.sroa.phi = phi ptr [ %.sroa.0, %.preheader345 ], [ %.sroa.6, %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit242.thread ]
  %indvars.iv.sroa.phi465 = phi ptr [ %16, %.preheader345 ], [ %indvars.iv.sroa.gep466, %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit242.thread ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.preheader345 ], [ 1, %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit242.thread ] ; 3 uses
  %i.lt = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.lu = icmp eq i8 %i.lt, 0
  br i1 %i.lu, label %bb.dc, label %bb.dg, !prof !409

bb.dc:                                            ; preds = %bb.db
  %i.lv = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  %.not.i.i214 = icmp eq i32 %i.lv, 0
  br i1 %.not.i.i214, label %bb.dg, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.lw = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26
          to label %bb.de unwind label %bb.df     ; 3 uses

bb.de:                                            ; preds = %bb.dd
  store i64 1152920405095219200, ptr %i.lw, align 8
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lx, i8 0, i64 16, i1 false)
  store ptr %i.lw, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !129
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  br label %bb.dg

bb.df:                                            ; preds = %bb.dd
  %i.ly = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  br label %.body215

bb.dg:                                            ; preds = %bb.de, %bb.dc, %bb.db
  %i.lz = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !129 ; 4 uses
  %i.ma = load ptr, ptr %i.ik, align 8, !tbaa !45 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.ma, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapImN4cvc58internal12NodeTemplateILb0EEESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.dg, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.ma, %bb.dg ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.il, %bb.dg ]
  %i.mb = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !138
  %i.md = icmp ult i64 %i.mc, %indvars.iv         ; 2 uses
  %.19.i.i.i = select i1 %i.md, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.md, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !136 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeImSt4pairIKmN4cvc58internal12NodeTemplateILb0EEEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !16

_ZNSt8_Rb_treeImSt4pairIKmN4cvc58internal12NodeTemplateILb0EEEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.me = icmp eq ptr %.19.i.i.i, %i.il
  br i1 %i.me, label %_ZNSt3mapImN4cvc58internal12NodeTemplateILb0EEESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread, label %_ZNSt3mapImN4cvc58internal12NodeTemplateILb0EEESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit

_ZNSt3mapImN4cvc58internal12NodeTemplateILb0EEESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit: ; preds = %_ZNSt8_Rb_treeImSt4pairIKmN4cvc58internal12NodeTemplateILb0EEEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.mf = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !138
  %i.mh = icmp ugt i64 %i.mg, %indvars.iv
  br i1 %i.mh, label %_ZNSt3mapImN4cvc58internal12NodeTemplateILb0EEESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread, label %bb.dh

bb.dh:                                            ; preds = %_ZNSt3mapImN4cvc58internal12NodeTemplateILb0EEESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit
  %i.mi = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !122 ; 2 uses
  %.not.i217 = icmp eq ptr %i.lz, %i.mj
  %spec.select = select i1 %.not.i217, ptr %i.lz, ptr %i.mj, !prof !125
  br label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit

_ZNSt3mapImN4cvc58internal12NodeTemplateILb0EEESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread: ; preds = %_ZNSt8_Rb_treeImSt4pairIKmN4cvc58internal12NodeTemplateILb0EEEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, %bb.dg, %_ZNSt3mapImN4cvc58internal12NodeTemplateILb0EEESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit
  %i.mk = load ptr, ptr %i.ij, align 8, !tbaa !120, !noalias !721 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  %i.mm = load i64, ptr %i.ml, align 8, !noalias !721
  %i.mn = trunc i64 %i.mm to i32
  %i.mo = and i32 %i.mn, 1023                     ; 2 uses
  %i.mp = icmp eq i32 %i.mo, 1023
  %i.mq = select i1 %i.mp, i32 -1, i32 %i.mo
  %i.mr = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.mq)
          to label %.noexc219 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc219:                                        ; preds = %_ZNSt3mapImN4cvc58internal12NodeTemplateILb0EEESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread
  %i.ms = icmp eq i32 %i.mr, 2
  %i.mt = zext i1 %i.ms to i64
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mk, i64 24
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.mu, i64 %indvars.iv
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.mv, i64 %i.mt
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !129, !noalias !721 ; 9 uses
  %i.my = load i64, ptr %i.mx, align 8, !noalias !721 ; 4 uses
  %i.mz = lshr i64 %i.my, 40
  %i.na = trunc nuw nsw i64 %i.mz to i32
  %i.nb = and i32 %i.na, 1048575                  ; 3 uses
  %i.nc = icmp samesign ult i32 %i.nb, 1048574
  br i1 %i.nc, label %bb.di, label %bb.dj, !prof !124

bb.di:                                            ; preds = %.noexc219
  %i.nd = add nuw nsw i32 %i.nb, 1
  %i.ne = zext nneg i32 %i.nd to i64
  %i.nf = shl nuw nsw i64 %i.ne, 40
  %i.ng = and i64 %i.my, -1152920405095219201
  %i.nh = or i64 %i.nf, %i.ng                     ; 2 uses
  store i64 %i.nh, ptr %i.mx, align 8, !noalias !721
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit

bb.dj:                                            ; preds = %.noexc219
  %i.ni = icmp eq i32 %i.nb, 1048574
  br i1 %i.ni, label %bb.dk, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit, !prof !125

bb.dk:                                            ; preds = %bb.dj
  %i.nj = or i64 %i.my, 1152920405095219200
  store i64 %i.nj, ptr %i.mx, align 8, !noalias !721
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.mx)
          to label %._ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit_crit_edge: ; preds = %bb.dk
  %.pre = load i64, ptr %i.mx, align 8
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit:  ; preds = %._ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit_crit_edge, %bb.dj, %bb.di
  %i.nk = phi i64 [ %.pre, %._ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit_crit_edge ], [ %i.my, %bb.dj ], [ %i.nh, %bb.di ] ; 3 uses
  %.not.i221 = icmp eq ptr %i.lz, %i.mx
  %spec.select339 = select i1 %.not.i221, ptr %i.lz, ptr %i.mx, !prof !125 ; 3 uses
  %i.nl = and i64 %i.nk, 1152920405095219200
  %.not.i.i222 = icmp eq i64 %i.nl, 1152920405095219200
  br i1 %.not.i.i222, label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit, label %bb.dl, !prof !125

bb.dl:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit
  %i.nm = add i64 %i.nk, 1152920405095219200
  %i.nn = and i64 %i.nm, 1152920405095219200      ; 2 uses
  %i.no = and i64 %i.nk, -1152920405095219201
  %i.np = or disjoint i64 %i.nn, %i.no
  store i64 %i.np, ptr %i.mx, align 8
  %i.nq = icmp eq i64 %i.nn, 0
  br i1 %i.nq, label %bb.dm, label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit, !prof !125

bb.dm:                                            ; preds = %bb.dl
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.mx)
          to label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit unwind label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.nr = landingpad { ptr, i32 }
          catch ptr null
  %i.ns = extractvalue { ptr, i32 } %i.nr, 0
  tail call void @__clang_call_terminate(ptr %i.ns) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit: ; preds = %bb.dh, %bb.dm, %bb.dl, %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit
  %.sroa.0314.0 = phi ptr [ %spec.select339, %bb.dm ], [ %spec.select, %bb.dh ], [ %spec.select339, %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit ], [ %spec.select339, %bb.dl ]
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  %i.nt = load ptr, ptr %i.bi, align 8, !tbaa !444
  store ptr %.sroa.0314.0, ptr %21, align 8, !tbaa !122
  invoke void @_ZN4cvc58internal6theory11quantifiers9QuantInfo15getCurrentValueENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate.398") align 8 %20, ptr noundef nonnull align 8 dereferenceable(648) %i.nt, ptr noundef nonnull align 8 %21)
          to label %bb.do unwind label %bb.dx

bb.do:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit
  %i.nu = load ptr, ptr %indvars.iv.sroa.phi465, align 8, !tbaa !120 ; 4 uses
  %i.nv = load ptr, ptr %20, align 8, !tbaa !122  ; 6 uses
  %.not.i225 = icmp eq ptr %i.nu, %i.nv
  br i1 %.not.i225, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit230, label %bb.dp, !prof !125

bb.dp:                                            ; preds = %bb.do
  %i.nw = load i64, ptr %i.nu, align 8            ; 3 uses
  %i.nx = and i64 %i.nw, 1152920405095219200
  %.not.i.i226 = icmp eq i64 %i.nx, 1152920405095219200
  br i1 %.not.i.i226, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i227, label %bb.dq, !prof !125

bb.dq:                                            ; preds = %bb.dp
  %i.ny = add i64 %i.nw, 1152920405095219200
  %i.nz = and i64 %i.ny, 1152920405095219200      ; 2 uses
  %i.oa = and i64 %i.nw, -1152920405095219201
  %i.ob = or disjoint i64 %i.nz, %i.oa
  store i64 %i.ob, ptr %i.nu, align 8
  %i.oc = icmp eq i64 %i.nz, 0
  br i1 %i.oc, label %bb.dr, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i227, !prof !125

bb.dr:                                            ; preds = %bb.dq
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.nu)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i227 unwind label %bb.dx

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i227: ; preds = %bb.dr, %bb.dq, %bb.dp
  store ptr %i.nv, ptr %indvars.iv.sroa.phi465, align 8, !tbaa !120
  %i.od = load i64, ptr %i.nv, align 8            ; 3 uses
  %i.oe = lshr i64 %i.od, 40
  %i.of = trunc nuw nsw i64 %i.oe to i32
  %i.og = and i32 %i.of, 1048575                  ; 3 uses
  %i.oh = icmp samesign ult i32 %i.og, 1048574
  br i1 %i.oh, label %bb.ds, label %bb.dt, !prof !124

bb.ds:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i227
  %i.oi = add nuw nsw i32 %i.og, 1
  %i.oj = zext nneg i32 %i.oi to i64
  %i.ok = shl nuw nsw i64 %i.oj, 40
  %i.ol = and i64 %i.od, -1152920405095219201
  %i.om = or i64 %i.ok, %i.ol
  store i64 %i.om, ptr %i.nv, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit230

bb.dt:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i227
  %i.on = icmp eq i32 %i.og, 1048574
  br i1 %i.on, label %bb.du, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit230, !prof !125

bb.du:                                            ; preds = %bb.dt
  %i.oo = or i64 %i.od, 1152920405095219200
  store i64 %i.oo, ptr %i.nv, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.nv)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit230 unwind label %bb.dx

_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit230: ; preds = %bb.dt, %bb.ds, %bb.do, %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  %i.op = load ptr, ptr %i.bi, align 8, !tbaa !444 ; 3 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 80
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !45 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.op, i64 72 ; 2 uses
  %.not10.i.i.i.i231 = icmp eq ptr %i.or, null
  br i1 %.not10.i.i.i.i231, label %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit242.thread, label %.lr.ph.i.i.i.i232

.lr.ph.i.i.i.i232:                                ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit230
  %i.ot = load ptr, ptr %indvars.iv.sroa.phi465, align 8, !tbaa !120
  %i.ou = load i64, ptr %i.ot, align 8
  %i.ov = and i64 %i.ou, 1099511627775            ; 2 uses
  br label %bb.dv

bb.dv:                                            ; preds = %bb.dv, %.lr.ph.i.i.i.i232
  %.012.i.i.i.i233 = phi ptr [ %i.or, %.lr.ph.i.i.i.i232 ], [ %.1.i.i.i.i238, %bb.dv ] ; 3 uses
  %.0811.i.i.i.i234 = phi ptr [ %i.os, %.lr.ph.i.i.i.i232 ], [ %.19.i.i.i.i235, %bb.dv ]
  %i.ow = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i233, i64 32
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !122
  %i.oy = load i64, ptr %i.ox, align 8
  %i.oz = and i64 %i.oy, 1099511627775
  %i.pa = icmp samesign ult i64 %i.oz, %i.ov      ; 2 uses
  %.19.i.i.i.i235 = select i1 %i.pa, ptr %.0811.i.i.i.i234, ptr %.012.i.i.i.i233 ; 4 uses
  %.1.in.v.i.i.i.i236 = select i1 %i.pa, i64 24, i64 16
  %.1.in.i.i.i.i237 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i233, i64 %.1.in.v.i.i.i.i236
  %.1.i.i.i.i238 = load ptr, ptr %.1.in.i.i.i.i237, align 8, !tbaa !136 ; 2 uses
  %.not.i.i.i.i239 = icmp eq ptr %.1.i.i.i.i238, null
  br i1 %.not.i.i.i.i239, label %_ZNKSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i240, label %bb.dv, !llvm.loop !14

_ZNKSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i240: ; preds = %bb.dv
  %i.pb = icmp eq ptr %.19.i.i.i.i235, %i.os
  br i1 %i.pb, label %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit242.thread, label %_ZNKSt3mapIN4cvc58internal12NodeTemplateILb0EEEmSt4lessIS3_ESaISt4pairIKS3_mEEE4findERS7_.exit.i241

_ZNKSt3mapIN4cvc58internal12NodeTemplateILb0EEEmSt4lessIS3_ESaISt4pairIKS3_mEEE4findERS7_.exit.i241: ; preds = %_ZNKSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i240
  %i.pc = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i235, i64 32
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !122
  %i.pe = load i64, ptr %i.pd, align 8
  %i.pf = and i64 %i.pe, 1099511627775
  %i.pg = icmp samesign ult i64 %i.ov, %i.pf
  br i1 %i.pg, label %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit242.thread, label %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit242

_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit242: ; preds = %_ZNKSt3mapIN4cvc58internal12NodeTemplateILb0EEEmSt4lessIS3_ESaISt4pairIKS3_mEEE4findERS7_.exit.i241
  %i.ph = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i235, i64 40
  %i.pi = load i64, ptr %i.ph, align 8, !tbaa !452 ; 2 uses
  %i.pj = and i64 %i.pi, 4294967295
  %i.pk = icmp eq i64 %i.pj, 4294967295
  br i1 %i.pk, label %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit242.thread, label %bb.dw

bb.dw:                                            ; preds = %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit242
  %sext = shl i64 %i.pi, 32
  %i.pl = ashr exact i64 %sext, 32
  %i.pm = invoke noundef i64 @_ZN4cvc58internal6theory11quantifiers9QuantInfo16getCurrentRepVarEm(ptr noundef nonnull align 8 dereferenceable(648) %i.op, i64 noundef %i.pl)
          to label %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit242.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit242.thread: ; preds = %_ZNKSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i240, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit230, %_ZNKSt3mapIN4cvc58internal12NodeTemplateILb0EEEmSt4lessIS3_ESaISt4pairIKS3_mEEE4findERS7_.exit.i241, %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit242, %bb.dw
  %i.pn = phi i64 [ %i.pm, %bb.dw ], [ -1, %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit242 ], [ -1, %_ZNKSt3mapIN4cvc58internal12NodeTemplateILb0EEEmSt4lessIS3_ESaISt4pairIKS3_mEEE4findERS7_.exit.i241 ], [ -1, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit230 ], [ -1, %_ZNKSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i240 ]
  %i.po = trunc i64 %i.pn to i32
  store i32 %i.po, ptr %indvars.iv.sroa.phi, align 4, !tbaa !431
  br i1 %26, label %bb.db, label %.loopexit346.loopexit, !llvm.loop !716

bb.dx:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit, %bb.du, %bb.dr
  %i.pp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  br label %.body215

.loopexit346.loopexit:                            ; preds = %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit242.thread
  %.sroa.0.0..sroa.0.0..pre378 = load i32, ptr %.sroa.0, align 4, !tbaa !431
  %.sroa.6.0..sroa.6.4..pre379 = load i32, ptr %.sroa.6, align 4
  br label %.loopexit346

.loopexit346:                                     ; preds = %.loopexit346.loopexit, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit213
  %i.pq = phi i32 [ %.sroa.6.0..sroa.6.4..pre379, %.loopexit346.loopexit ], [ -1, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit213 ] ; 3 uses
  %i.pr = phi i32 [ %.sroa.0.0..sroa.0.0..pre378, %.loopexit346.loopexit ], [ %i.ki, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit213 ] ; 2 uses
  %27 = icmp eq i32 %i.pr, -1                     ; 2 uses
  %i.ps = icmp eq i32 %i.pq, -1                   ; 2 uses
  %or.cond = select i1 %27, i1 %i.ps, i1 false
  br i1 %or.cond, label %bb.dy, label %bb.eb

bb.dy:                                            ; preds = %.loopexit346
  %i.pt = load i8, ptr %i.l, align 8, !tbaa !489, !range !405, !noundef !144
  %i.pu = trunc nuw i8 %i.pt to i1
  br i1 %i.pu, label %.split, label %bb.dz

.split:                                           ; preds = %bb.dy
  %i.pv = load ptr, ptr %16, align 16, !tbaa !120
  %i.pw = load ptr, ptr %.ptr.1, align 8, !tbaa !120
  %i.px = icmp eq ptr %i.pv, %i.pw
  br i1 %i.px, label %bb.fk, label %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE9push_backEOS4_.exit261

bb.dz:                                            ; preds = %bb.dy
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !487 ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 448
  %i.qb = load i32, ptr %i.qa, align 8, !tbaa !484
  %i.qc = icmp eq i32 %i.qb, 0
  %i.qd = load ptr, ptr %16, align 16, !tbaa !120 ; 2 uses
  br i1 %i.qc, label %bb.ea, label %.split335

bb.ea:                                            ; preds = %bb.dz
  store ptr %i.qd, ptr %22, align 8, !tbaa !122
  %i.qe = load ptr, ptr %.ptr.1, align 8, !tbaa !120
  store ptr %i.qe, ptr %23, align 8, !tbaa !122
  %i.qf = invoke noundef zeroext i1 @_ZNK4cvc58internal6theory11quantifiers17QuantifiersModule11areDisequalENS0_12NodeTemplateILb0EEES5_(ptr noundef nonnull align 8 dereferenceable(48) %i.pz, ptr noundef nonnull align 8 %22, ptr noundef nonnull align 8 %23)
          to label %bb.fj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.split335:                                        ; preds = %bb.dz
  %i.qg = load ptr, ptr %.ptr.1, align 8, !tbaa !120
  %.not342 = icmp eq ptr %i.qd, %i.qg
  br i1 %.not342, label %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE9push_backEOS4_.exit261, label %bb.fk

bb.eb:                                            ; preds = %.loopexit346
  %.not380 = xor i1 %i.ps, true
  %or.cond5 = and i1 %27, %.not380
  br i1 %or.cond5, label %bb.ec, label %._crit_edge381

bb.ec:                                            ; preds = %bb.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #24
  invoke void @_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull align 8 dereferenceable(8) %.ptr.1)
          to label %bb.ed unwind label %bb.eg

bb.ed:                                            ; preds = %bb.ec
  %i.qh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %.ptr.1, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.ee unwind label %bb.eh     ; 0 uses

bb.ee:                                            ; preds = %bb.ed
  %i.qi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %bb.ef unwind label %bb.eh     ; 0 uses

bb.ef:                                            ; preds = %bb.ee
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  br label %._crit_edge381

bb.eg:                                            ; preds = %bb.ec
  %i.qj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei

bb.eh:                                            ; preds = %bb.ee, %bb.ed
  %i.qk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #24
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %.pn86 = phi { ptr, i32 } [ %i.qk, %bb.eh ], [ %i.qj, %bb.eg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  br label %.body215

._crit_edge381:                                   ; preds = %bb.eb, %bb.ef
  %i.ql = phi i32 [ -1, %bb.ef ], [ %i.pq, %bb.eb ] ; 4 uses
  %i.qm = phi i32 [ %i.pq, %bb.ef ], [ %i.pr, %bb.eb ] ; 2 uses
  %i.qn = load ptr, ptr %i.bi, align 8, !tbaa !444
  %i.qo = sext i32 %i.qm to i64                   ; 5 uses
  %i.qp = load ptr, ptr %.ptr.1, align 8, !tbaa !120
  store ptr %i.qp, ptr %25, align 8, !tbaa !122
  %i.qq = load i8, ptr %i.l, align 8, !tbaa !489, !range !405, !noundef !144
  %i.qr = trunc nuw i8 %i.qq to i1
  %i.qs = invoke noundef i32 @_ZN4cvc58internal6theory11quantifiers9QuantInfo13addConstraintEmNS0_12NodeTemplateILb0EEEibb(ptr noundef nonnull align 8 dereferenceable(648) %i.qn, i64 noundef %i.qo, ptr noundef nonnull align 8 %25, i32 noundef %i.ql, i1 noundef zeroext %i.qr, i1 noundef zeroext false)
          to label %bb.ej unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ej:                                            ; preds = %._crit_edge381
  %i.qt = icmp ne i32 %i.qs, -1
  %i.qu = icmp eq i32 %i.qs, 1
  br i1 %i.qu, label %.preheader, label %bb.fj

.preheader:                                       ; preds = %bb.ej
  %i.qv = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %.not = icmp eq i32 %i.qm, -1
  br i1 %.not, label %.critedge7, label %bb.ek

bb.ek:                                            ; preds = %.preheader
  %i.qx = load ptr, ptr %i.qv, align 8, !tbaa !178 ; 4 uses
  %i.qy = load ptr, ptr %i.qw, align 8, !tbaa !178 ; 3 uses
  %i.qz = ptrtoint ptr %i.qy to i64               ; 2 uses
  %i.ra = ptrtoint ptr %i.qx to i64
  %i.rb = sub i64 %i.qz, %i.ra                    ; 3 uses
  %i.rc = ashr i64 %i.rb, 5                       ; 2 uses
  %i.rd = icmp sgt i64 %i.rc, 0
  br i1 %i.rd, label %.lr.ph.i.i.i249, label %._crit_edge.i.i.i

.lr.ph.i.i.i249:                                  ; preds = %bb.ek
  %i.re = and i64 %i.rb, -32
  %scevgep.i.i.i = getelementptr i8, ptr %i.qx, i64 %i.re ; 2 uses
  br label %bb.el

bb.el:                                            ; preds = %bb.ep, %.lr.ph.i.i.i249
  %.052.i.i.i = phi i64 [ %i.rc, %.lr.ph.i.i.i249 ], [ %i.rr, %bb.ep ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %i.qx, %.lr.ph.i.i.i249 ], [ %i.rq, %bb.ep ] ; 9 uses
  %i.rf = load i64, ptr %.sroa.032.051.i.i.i, align 8, !tbaa !138
  %i.rg = icmp eq i64 %i.rf, 0
  br i1 %i.rg, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.rh = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.ri = load i64, ptr %i.rh, align 8, !tbaa !138
  %i.rj = icmp eq i64 %i.ri, 0
  br i1 %i.rj, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit431, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.rk = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  %i.rl = load i64, ptr %i.rk, align 8, !tbaa !138
  %i.rm = icmp eq i64 %i.rl, 0
  br i1 %i.rm, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit429, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.rn = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 24
  %i.ro = load i64, ptr %i.rn, align 8, !tbaa !138
  %i.rp = icmp eq i64 %i.ro, 0
  br i1 %i.rp, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.rq = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 32
  %i.rr = add nsw i64 %.052.i.i.i, -1
  %i.rs = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.rs, label %bb.el, label %._crit_edge.loopexit.i.i.i, !llvm.loop !8

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.ep
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.qz, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.ek
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.rb, %bb.ek ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.qx, %bb.ek ] ; 5 uses
  %i.rt = ashr exact i64 %.pre-phi61.i.i.i, 3
  switch i64 %i.rt, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.thread [
    i64 3, label %bb.eq
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

bb.eq:                                            ; preds = %._crit_edge.i.i.i
  %i.ru = load i64, ptr %.sroa.032.0.lcssa.i.i.i, align 8, !tbaa !138
  %i.rv = icmp eq i64 %i.ru, 0
  br i1 %i.rv, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.rw = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.er
  %.sroa.032.1.i.i.i = phi ptr [ %i.rw, %bb.er ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.rx = load i64, ptr %.sroa.032.1.i.i.i, align 8, !tbaa !138
  %i.ry = icmp eq i64 %i.rx, 0
  br i1 %i.ry, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit, label %bb.es

bb.es:                                            ; preds = %._crit_edge._crit_edge.i.i.i
  %i.rz = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 8
  br label %._crit_edge._crit_edge57.i.i.i

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.es
  %.sroa.032.2.i.i.i = phi ptr [ %i.rz, %bb.es ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.sa = load i64, ptr %.sroa.032.2.i.i.i, align 8, !tbaa !138
  %i.sb = icmp eq i64 %i.sa, 0
  %spec.select.i.i.i = select i1 %i.sb, ptr %.sroa.032.2.i.i.i, ptr %i.qy
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.eo
  %i.sc = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 24
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit429: ; preds = %bb.en
  %i.sd = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit431: ; preds = %bb.em
  %i.se = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit: ; preds = %bb.el, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit429, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit431, %._crit_edge._crit_edge57.i.i.i, %._crit_edge._crit_edge.i.i.i, %bb.eq
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %spec.select.i.i.i, %._crit_edge._crit_edge57.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.eq ], [ %i.se, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit431 ], [ %i.sd, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit429 ], [ %i.sc, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.el ]
  %i.sf = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %i.qy
  br i1 %i.sf, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.thread, label %.critedge7

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.thread: ; preds = %._crit_edge.i.i.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  store i64 %i.qo, ptr %i.f, align 8, !tbaa !138
  %i.sg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixEOm(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.et unwind label %bb.eu

bb.et:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.thread
  store i64 %i.qo, ptr %i.sg, align 8, !tbaa !138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  br label %.critedge7

bb.eu:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.thread.1, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.thread
  %i.sh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  br label %.body215

.critedge7:                                       ; preds = %.preheader, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit, %bb.et
  %.not.1 = icmp eq i32 %i.ql, -1
  br i1 %.not.1, label %.critedge7.1, label %bb.ev

bb.ev:                                            ; preds = %.critedge7
  %i.si = load ptr, ptr %i.qv, align 8, !tbaa !178 ; 4 uses
  %i.sj = load ptr, ptr %i.qw, align 8, !tbaa !178 ; 3 uses
  %i.sk = ptrtoint ptr %i.sj to i64               ; 2 uses
  %i.sl = ptrtoint ptr %i.si to i64
  %i.sm = sub i64 %i.sk, %i.sl                    ; 3 uses
  %i.sn = ashr i64 %i.sm, 5                       ; 2 uses
  %i.so = icmp sgt i64 %i.sn, 0
  br i1 %i.so, label %.lr.ph.i.i.i249.1, label %._crit_edge.i.i.i.1

.lr.ph.i.i.i249.1:                                ; preds = %bb.ev
  %i.sp = and i64 %i.sm, -32
  %scevgep.i.i.i.1 = getelementptr i8, ptr %i.si, i64 %i.sp ; 2 uses
  br label %bb.ew

bb.ew:                                            ; preds = %bb.fa, %.lr.ph.i.i.i249.1
  %.052.i.i.i.1 = phi i64 [ %i.sn, %.lr.ph.i.i.i249.1 ], [ %i.tc, %bb.fa ] ; 2 uses
  %.sroa.032.051.i.i.i.1 = phi ptr [ %i.si, %.lr.ph.i.i.i249.1 ], [ %i.tb, %bb.fa ] ; 9 uses
  %i.sq = load i64, ptr %.sroa.032.051.i.i.i.1, align 8, !tbaa !138
  %i.sr = icmp eq i64 %i.sq, 1
  br i1 %i.sr, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.ss = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.1, i64 8
  %i.st = load i64, ptr %i.ss, align 8, !tbaa !138
  %i.su = icmp eq i64 %i.st, 1
  br i1 %i.su, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1.loopexit.split.loop.exit439, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.sv = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.1, i64 16
  %i.sw = load i64, ptr %i.sv, align 8, !tbaa !138
  %i.sx = icmp eq i64 %i.sw, 1
  br i1 %i.sx, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1.loopexit.split.loop.exit437, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.sy = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.1, i64 24
  %i.sz = load i64, ptr %i.sy, align 8, !tbaa !138
  %i.ta = icmp eq i64 %i.sz, 1
  br i1 %i.ta, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1.loopexit.split.loop.exit, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.tb = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.1, i64 32
  %i.tc = add nsw i64 %.052.i.i.i.1, -1
  %i.td = icmp sgt i64 %.052.i.i.i.1, 1
  br i1 %i.td, label %bb.ew, label %._crit_edge.loopexit.i.i.i.1, !llvm.loop !8

._crit_edge.loopexit.i.i.i.1:                     ; preds = %bb.fa
  %.pre59.i.i.i.1 = ptrtoint ptr %scevgep.i.i.i.1 to i64
  %.pre60.i.i.i.1 = sub i64 %i.sk, %.pre59.i.i.i.1
  br label %._crit_edge.i.i.i.1

._crit_edge.i.i.i.1:                              ; preds = %._crit_edge.loopexit.i.i.i.1, %bb.ev
  %.pre-phi61.i.i.i.1 = phi i64 [ %.pre60.i.i.i.1, %._crit_edge.loopexit.i.i.i.1 ], [ %i.sm, %bb.ev ]
  %.sroa.032.0.lcssa.i.i.i.1 = phi ptr [ %scevgep.i.i.i.1, %._crit_edge.loopexit.i.i.i.1 ], [ %i.si, %bb.ev ] ; 5 uses
  %i.te = ashr exact i64 %.pre-phi61.i.i.i.1, 3
  switch i64 %i.te, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.thread.1 [
    i64 3, label %bb.fb
    i64 2, label %._crit_edge._crit_edge.i.i.i.1
    i64 1, label %._crit_edge._crit_edge57.i.i.i.1
  ]

bb.fb:                                            ; preds = %._crit_edge.i.i.i.1
  %i.tf = load i64, ptr %.sroa.032.0.lcssa.i.i.i.1, align 8, !tbaa !138
  %i.tg = icmp eq i64 %i.tf, 1
  br i1 %i.tg, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.th = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.1, i64 8
  br label %._crit_edge._crit_edge.i.i.i.1

._crit_edge._crit_edge.i.i.i.1:                   ; preds = %bb.fc, %._crit_edge.i.i.i.1
  %.sroa.032.1.i.i.i.1 = phi ptr [ %i.th, %bb.fc ], [ %.sroa.032.0.lcssa.i.i.i.1, %._crit_edge.i.i.i.1 ] ; 3 uses
  %i.ti = load i64, ptr %.sroa.032.1.i.i.i.1, align 8, !tbaa !138
  %i.tj = icmp eq i64 %i.ti, 1
  br i1 %i.tj, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1, label %bb.fd

bb.fd:                                            ; preds = %._crit_edge._crit_edge.i.i.i.1
  %i.tk = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.1, i64 8
  br label %._crit_edge._crit_edge57.i.i.i.1

._crit_edge._crit_edge57.i.i.i.1:                 ; preds = %bb.fd, %._crit_edge.i.i.i.1
  %.sroa.032.2.i.i.i.1 = phi ptr [ %i.tk, %bb.fd ], [ %.sroa.032.0.lcssa.i.i.i.1, %._crit_edge.i.i.i.1 ] ; 2 uses
  %i.tl = load i64, ptr %.sroa.032.2.i.i.i.1, align 8, !tbaa !138
  %i.tm = icmp eq i64 %i.tl, 1
  %spec.select.i.i.i.1 = select i1 %i.tm, ptr %.sroa.032.2.i.i.i.1, ptr %i.sj
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1.loopexit.split.loop.exit: ; preds = %bb.ez
  %i.tn = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.1, i64 24
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1.loopexit.split.loop.exit437: ; preds = %bb.ey
  %i.to = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.1, i64 16
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1.loopexit.split.loop.exit439: ; preds = %bb.ex
  %i.tp = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.1, i64 8
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1: ; preds = %bb.ew, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1.loopexit.split.loop.exit437, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1.loopexit.split.loop.exit439, %._crit_edge._crit_edge57.i.i.i.1, %._crit_edge._crit_edge.i.i.i.1, %bb.fb
  %.sroa.08.0.in.sroa.speculated.i.i.i.1 = phi ptr [ %.sroa.032.1.i.i.i.1, %._crit_edge._crit_edge.i.i.i.1 ], [ %spec.select.i.i.i.1, %._crit_edge._crit_edge57.i.i.i.1 ], [ %.sroa.032.0.lcssa.i.i.i.1, %bb.fb ], [ %i.tp, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1.loopexit.split.loop.exit439 ], [ %i.to, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1.loopexit.split.loop.exit437 ], [ %i.tn, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i.1, %bb.ew ]
  %i.tq = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.1, %i.sj
  br i1 %i.tq, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.thread.1, label %.critedge7.1

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.thread.1: ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1, %._crit_edge.i.i.i.1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  %i.tr = sext i32 %i.ql to i64                   ; 2 uses
  store i64 %i.tr, ptr %i.f, align 8, !tbaa !138
  %i.ts = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixEOm(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.fe unwind label %bb.eu

bb.fe:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.thread.1
  store i64 %i.tr, ptr %i.ts, align 8, !tbaa !138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  br label %.critedge7.1

.critedge7.1:                                     ; preds = %bb.fe, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1, %.critedge7
  %i.tt = getelementptr inbounds nuw i8, ptr %0, i64 336
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24
  store i64 %i.qo, ptr %i.g, align 8, !tbaa !138
  %i.tu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapImN4cvc58internal12NodeTemplateILb0EEESt4lessImESaISt4pairIKmS3_EEEixEOm(ptr noundef nonnull align 8 dereferenceable(48) %i.tt, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.ff unwind label %bb.fh     ; 2 uses

bb.ff:                                            ; preds = %.critedge7.1
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !122
  %i.tw = load ptr, ptr %.ptr.1, align 8, !tbaa !120 ; 2 uses
  %.not.i250 = icmp eq ptr %i.tv, %i.tw
  br i1 %.not.i250, label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit251, label %bb.fg, !prof !125

bb.fg:                                            ; preds = %bb.ff
  store ptr %i.tw, ptr %i.tu, align 8, !tbaa !122
  br label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit251

_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit251: ; preds = %bb.ff, %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #24
  store i64 %i.qo, ptr %i.h, align 8, !tbaa !138
  %i.ty = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixEOm(ptr noundef nonnull align 8 dereferenceable(48) %i.tx, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %.split336 unwind label %bb.fi

.split336:                                        ; preds = %_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit251
  %i.tz = sext i32 %i.ql to i64
  store i64 %i.tz, ptr %i.ty, align 8, !tbaa !138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #24
  br label %bb.fk

bb.fh:                                            ; preds = %.critedge7.1
  %i.ua = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  br label %.body215

bb.fi:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit251
  %i.ub = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #24
  br label %.body215

bb.fj:                                            ; preds = %bb.ea, %bb.ej
  %.061.in = phi i1 [ %i.qf, %bb.ea ], [ %i.qt, %bb.ej ]
  br i1 %.061.in, label %bb.fk, label %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE9push_backEOS4_.exit261

bb.fk:                                            ; preds = %.split336, %.split335, %.split, %bb.fj
  %i.uc = load ptr, ptr %i.r, align 8, !tbaa !491 ; 4 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !499
  %.not.i.i252 = icmp eq ptr %i.uc, %i.ue
  br i1 %.not.i.i252, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  store ptr null, ptr %i.uc, align 8, !tbaa !498
  %i.uf = getelementptr inbounds nuw i8, ptr %i.uc, i64 8
  store ptr %i.uf, ptr %i.r, align 8, !tbaa !491
  br label %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE9push_backEOS4_.exit261

bb.fm:                                            ; preds = %bb.fk
  %i.ug = load ptr, ptr %i.p, align 8, !tbaa !490 ; 4 uses
  %i.uh = ptrtoint ptr %i.uc to i64
  %i.ui = ptrtoint ptr %i.ug to i64               ; 2 uses
  %i.uj = sub i64 %i.uh, %i.ui                    ; 5 uses
  %i.uk = icmp eq i64 %i.uj, 9223372036854775800
  br i1 %i.uk, label %bb.fn, label %_ZNKSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i253

bb.fn:                                            ; preds = %bb.fm
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.239) #28
          to label %.noexc259 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc259:                                        ; preds = %bb.fn
  unreachable

_ZNKSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i253: ; preds = %bb.fm
  %i.ul = ashr exact i64 %i.uj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i254 = call i64 @llvm.umax.i64(i64 %i.ul, i64 1)
  %i.um = add nsw i64 %.sroa.speculated.i.i.i.i254, %i.ul ; 2 uses
  %i.un = icmp ult i64 %i.um, %i.ul
  %i.uo = call i64 @llvm.umin.i64(i64 %i.um, i64 1152921504606846975)
  %i.up = select i1 %i.un, i64 1152921504606846975, i64 %i.uo ; 3 uses
  %.not.i.i.i.i255 = icmp ne i64 %i.up, 0
  call void @llvm.assume(i1 %.not.i.i.i.i255)
  %i.uq = shl nuw nsw i64 %i.up, 3
  %i.ur = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.uq) #26
          to label %.noexc260 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc260:                                        ; preds = %_ZNKSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i253
  %i.us = getelementptr inbounds i8, ptr %i.ur, i64 %i.uj ; 2 uses
  store ptr null, ptr %i.us, align 8, !tbaa !498
  %i.ut = icmp sgt i64 %i.uj, 0
  br i1 %i.ut, label %bb.fo, label %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i256

bb.fo:                                            ; preds = %.noexc260
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ur, ptr align 8 %i.ug, i64 %i.uj, i1 false)
  br label %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i256

_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i256: ; preds = %bb.fo, %.noexc260
  %i.uu = getelementptr inbounds nuw i8, ptr %i.us, i64 8
  %.not.i17.i.i.i257 = icmp eq ptr %i.ug, null
  br i1 %.not.i17.i.i.i257, label %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i258, label %bb.fp

bb.fp:                                            ; preds = %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i256
  %i.uv = load ptr, ptr %i.ud, align 8, !tbaa !499
  %i.uw = ptrtoint ptr %i.uv to i64
  %i.ux = sub i64 %i.uw, %i.ui
  call void @_ZdlPvm(ptr noundef nonnull %i.ug, i64 noundef %i.ux) #27
  br label %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i258

_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i258: ; preds = %bb.fp, %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i256
  store ptr %i.ur, ptr %i.p, align 8, !tbaa !490
  store ptr %i.uu, ptr %i.r, align 8, !tbaa !491
  %i.uy = getelementptr inbounds nuw [8 x i8], ptr %i.ur, i64 %i.up
  store ptr %i.uy, ptr %i.ud, align 8, !tbaa !499
  br label %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE9push_backEOS4_.exit261

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt3mapImN4cvc58internal12NodeTemplateILb0EEESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread, %bb.dk, %bb.dw, %._crit_edge381, %bb.ea, %bb.cl, %_ZNKSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i253, %bb.fn
  %lpad.loopexit.split-lp463 = landingpad { ptr, i32 }
          cleanup
  br label %.body215

_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE9push_backEOS4_.exit261: ; preds = %bb.fl, %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i258, %.split335, %.split, %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.uz = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !120 ; 3 uses
  %i.vb = load i64, ptr %i.va, align 8            ; 3 uses
  %i.vc = and i64 %i.vb, 1152920405095219200
  %.not.i.i262 = icmp eq i64 %i.vc, 1152920405095219200
  br i1 %.not.i.i262, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit264, label %bb.fq, !prof !125

bb.fq:                                            ; preds = %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE9push_backEOS4_.exit261
  %i.vd = add i64 %i.vb, 1152920405095219200
  %i.ve = and i64 %i.vd, 1152920405095219200      ; 2 uses
  %i.vf = and i64 %i.vb, -1152920405095219201
  %i.vg = or disjoint i64 %i.ve, %i.vf
  store i64 %i.vg, ptr %i.va, align 8
  %i.vh = icmp eq i64 %i.ve, 0
  br i1 %i.vh, label %bb.fr, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit264, !prof !125

bb.fr:                                            ; preds = %bb.fq
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.va)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit264 unwind label %bb.fs

bb.fs:                                            ; preds = %bb.fu, %bb.fr
  %i.vi = landingpad { ptr, i32 }
          catch ptr null
  %i.vj = extractvalue { ptr, i32 } %i.vi, 0
  call void @__clang_call_terminate(ptr %i.vj) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit264: ; preds = %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE9push_backEOS4_.exit261, %bb.fq, %bb.fr
  %i.vk = load ptr, ptr %16, align 16, !tbaa !120 ; 3 uses
  %i.vl = load i64, ptr %i.vk, align 8            ; 3 uses
  %i.vm = and i64 %i.vl, 1152920405095219200
  %.not.i.i262.1 = icmp eq i64 %i.vm, 1152920405095219200
  br i1 %.not.i.i262.1, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit264.1, label %bb.ft, !prof !125

bb.ft:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit264
  %i.vn = add i64 %i.vl, 1152920405095219200
  %i.vo = and i64 %i.vn, 1152920405095219200      ; 2 uses
  %i.vp = and i64 %i.vl, -1152920405095219201
  %i.vq = or disjoint i64 %i.vo, %i.vp
  store i64 %i.vq, ptr %i.vk, align 8
  %i.vr = icmp eq i64 %i.vo, 0
  br i1 %i.vr, label %bb.fu, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit264.1, !prof !125

bb.fu:                                            ; preds = %bb.ft
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.vk)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit264.1 unwind label %bb.fs

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit264.1: ; preds = %bb.fu, %bb.ft, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit264
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %bb.ga

.body215:                                         ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.eu, %bb.df, %bb.dx, %bb.ei, %bb.fi, %bb.fh, %bb.da, %bb.cx
  %.pn91.pn = phi { ptr, i32 } [ %i.sh, %bb.eu ], [ %i.ub, %bb.fi ], [ %i.lq, %bb.cx ], [ %.pn83, %bb.da ], [ %i.ly, %bb.df ], [ %.pn86, %bb.ei ], [ %i.ua, %bb.fh ], [ %i.pp, %bb.dx ], [ %lpad.loopexit.split-lp463, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.vs = getelementptr inbounds nuw i8, ptr %16, i64 8
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.vs) #24
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #24
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader348.preheader, %.body.thread, %.body215
  %.pn91.pn.pn = phi { ptr, i32 } [ %.pn91.pn, %.body215 ], [ %i.hx, %.body.thread ], [ %i.hz, %.preheader348.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %common.resume

bb.fv:                                            ; preds = %bb.i
  %i.vt = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.vu = load ptr, ptr %i.vt, align 8, !tbaa !486 ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.vw = load ptr, ptr %i.vv, align 8, !tbaa !486
  %i.vx = icmp eq ptr %i.vu, %i.vw
  br i1 %i.vx, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #24
  store ptr null, ptr %i.i, align 8, !tbaa !498
  call void @_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE9push_backEOS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #24
  br label %bb.ga

bb.fx:                                            ; preds = %bb.fv
  %i.vy = load i8, ptr %i.l, align 8, !tbaa !489, !range !405, !noundef !144
  %i.vz = trunc nuw i8 %i.vy to i1                ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.wb = load ptr, ptr %i.wa, align 8, !tbaa !120
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 8
  %i.wd = load i64, ptr %i.wc, align 8            ; 2 uses
  %i.we = and i64 %i.wd, 1023
  %i.wf = icmp eq i64 %i.we, 369
  %or.cond446 = select i1 %i.vz, i1 %i.wf, i1 false
  br i1 %or.cond446, label %bb.ga, label %._crit_edge383

._crit_edge383:                                   ; preds = %bb.fx
  %i.wg = and i64 %i.wd, 1023
  %i.wh = icmp eq i64 %i.wg, 369
  br i1 %i.wh, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %._crit_edge383
  %i.wi = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.wj = load ptr, ptr %i.wi, align 8, !tbaa !487
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 448
  %i.wl = load i32, ptr %i.wk, align 8, !tbaa !484
  %i.wm = icmp eq i32 %i.wl, 0
  br i1 %i.wm, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %._crit_edge383
  store i32 0, ptr %i.ag, align 8, !tbaa !494
  %i.wn = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.wo = load ptr, ptr %i.wn, align 8, !tbaa !181
  %i.wp = load i64, ptr %i.wo, align 8, !tbaa !138
  %i.wq = getelementptr inbounds nuw [8 x i8], ptr %i.vu, i64 %i.wp
  %i.wr = load ptr, ptr %i.wq, align 8, !tbaa !148
  tail call void @_ZN4cvc58internal6theory11quantifiers8MatchGen5resetEb(ptr noundef nonnull align 8 dereferenceable(496) %i.wr, i1 noundef zeroext %i.vz)
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fx, %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.bi, %.critedge, %bb.f, %_ZNSt3mapImN4cvc58internal12NodeTemplateILb1EEESt4lessImESaISt4pairIKmS3_EEEixEOm.exit147, %bb.ad, %bb.fw, %bb.fz, %bb.fy, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit264.1, %bb.bf, %bb.h, %bb.c
  %i.ws = getelementptr inbounds nuw i8, ptr %0, i64 441
  store i8 0, ptr %i.ws, align 1, !tbaa !502
  %i.wt = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 1, ptr %i.wt, align 2, !tbaa !485
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
  %i.j = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26
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
