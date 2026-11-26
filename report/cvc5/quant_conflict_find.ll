Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/quant_conflict_find?download=true
inline.NumInlined: 7873
inline.NumDeleted: 2415
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN4cvc58internal6theory11quantifiers8MatchGen11reset_roundEv:bb.a
  br i1 %i.kr, label %.critedge.i112, label %bb.bx

.critedge.i112:                                   ; preds = %bb.bw, %_ZNSt3mapImN4cvc58internal12NodeTemplateILb1EEESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i110, %bb.bv
  %.08.lcssa.i.i.i11.i113 = phi ptr [ %.19.i.i.i.i105, %bb.bw ], [ %.19.i.i.i.i105, %_ZNSt3mapImN4cvc58internal12NodeTemplateILb1EEESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i110 ], [ %i.ei, %bb.bv ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  store ptr %i.d, ptr %1, align 8, !tbaa !179, !alias.scope !724
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.ks = invoke ptr @_ZNSt8_Rb_treeImSt4pairIKmN4cvc58internal12NodeTemplateILb1EEEESt10_Select1stIS6_ESt4lessImESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOmEESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.eg, ptr %.08.lcssa.i.i.i11.i113, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %.noexc114 unwind label %bb.ce

.noexc114:                                        ; preds = %.critedge.i112
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %bb.bx

bb.bx:                                            ; preds = %.noexc114, %bb.bw
  %.sroa.06.0.i111 = phi ptr [ %i.ks, %.noexc114 ], [ %.19.i.i.i.i105, %bb.bw ]
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i111, i64 40 ; 2 uses
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !119 ; 4 uses
  %i.kv = load ptr, ptr %11, align 8, !tbaa !121
  %.not.i116 = icmp eq ptr %i.ku, %i.kv
  br i1 %.not.i116, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit, label %bb.by, !prof !124

bb.by:                                            ; preds = %bb.bx
  %i.kw = load i64, ptr %i.ku, align 8            ; 3 uses
  %i.kx = and i64 %i.kw, 1152920405095219200
  %.not.i.i117 = icmp eq i64 %i.kx, 1152920405095219200
  br i1 %.not.i.i117, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i118, label %bb.bz, !prof !124

bb.bz:                                            ; preds = %bb.by
  %i.ky = add i64 %i.kw, 1152920405095219200
  %i.kz = and i64 %i.ky, 1152920405095219200      ; 2 uses
  %i.la = and i64 %i.kw, -1152920405095219201
  %i.lb = or disjoint i64 %i.kz, %i.la
  store i64 %i.lb, ptr %i.ku, align 8
  %i.lc = icmp eq i64 %i.kz, 0
  br i1 %i.lc, label %bb.ca, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i118, !prof !124

bb.ca:                                            ; preds = %bb.bz
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ku)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i118 unwind label %bb.ce

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i118: ; preds = %bb.ca, %bb.bz, %bb.by
  %i.ld = load ptr, ptr %11, align 8, !tbaa !121  ; 5 uses
  store ptr %i.ld, ptr %i.kt, align 8, !tbaa !119
  %i.le = load i64, ptr %i.ld, align 8            ; 3 uses
  %i.lf = lshr i64 %i.le, 40
  %i.lg = trunc nuw nsw i64 %i.lf to i32
  %i.lh = and i32 %i.lg, 1048575                  ; 3 uses
  %i.li = icmp samesign ult i32 %i.lh, 1048574
  br i1 %i.li, label %bb.cb, label %bb.cc, !prof !123

bb.cb:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i118
  %i.lj = add nuw nsw i32 %i.lh, 1
  %i.lk = zext nneg i32 %i.lj to i64
  %i.ll = shl nuw nsw i64 %i.lk, 40
  %i.lm = and i64 %i.le, -1152920405095219201
  %i.ln = or i64 %i.ll, %i.lm
  store i64 %i.ln, ptr %i.ld, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit

bb.cc:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i118
  %i.lo = icmp eq i32 %i.lh, 1048574
  br i1 %i.lo, label %bb.cd, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit, !prof !124

bb.cd:                                            ; preds = %bb.cc
  %i.lp = or i64 %i.le, 1152920405095219200
  store i64 %i.lp, ptr %i.ld, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ld)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit unwind label %bb.ce

_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit: ; preds = %bb.cc, %bb.cb, %bb.bx, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cd, %bb.ca, %.critedge.i112
  %i.lq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  br label %.body

bb.cf:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit100, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.cg

.body:                                            ; preds = %bb.bu, %bb.ce, %bb.bb, %bb.aw, %bb.av
  %.pn.pn.pn = phi { ptr, i32 } [ %i.hh, %bb.av ], [ %.pn, %bb.bu ], [ %i.lq, %bb.ce ], [ %i.hi, %bb.aw ], [ %i.hs, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.cl

bb.cg:                                            ; preds = %bb.cf, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit66
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread126, label %bb.ad, !llvm.loop !718

bb.ch:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %.loopexit

.thread126:                                       ; preds = %bb.cg, %bb.o, %bb.ac, %._crit_edge
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !44
  invoke void @_ZNSt8_Rb_treeImSt4pairIKmN4cvc58internal12NodeTemplateILb0EEEESt10_Select1stIS6_ESt4lessImESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.lr, ptr noundef %i.lt)
          to label %_ZNSt3mapImN4cvc58internal12NodeTemplateILb0EEESt4lessImESaISt4pairIKmS3_EEE5clearEv.exit unwind label %bb.ci

bb.ci:                                            ; preds = %.thread126
  %i.lu = landingpad { ptr, i32 }
          catch ptr null
  %i.lv = extractvalue { ptr, i32 } %i.lu, 0
  call void @__clang_call_terminate(ptr %i.lv) #25
  unreachable

_ZNSt3mapImN4cvc58internal12NodeTemplateILb0EEESt4lessImESaISt4pairIKmS3_EEE5clearEv.exit: ; preds = %.thread126
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  store ptr null, ptr %i.ls, align 8, !tbaa !44
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 360
  store ptr %i.lw, ptr %i.lx, align 8, !tbaa !45
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr %i.lw, ptr %i.ly, align 8, !tbaa !46
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i64 0, ptr %i.lz, align 8, !tbaa !47
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !44
  invoke void @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ma, ptr noundef %i.mc)
          to label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE5clearEv.exit unwind label %bb.cj

bb.cj:                                            ; preds = %_ZNSt3mapImN4cvc58internal12NodeTemplateILb0EEESt4lessImESaISt4pairIKmS3_EEE5clearEv.exit
  %i.md = landingpad { ptr, i32 }
          catch ptr null
  %i.me = extractvalue { ptr, i32 } %i.md, 0
  call void @__clang_call_terminate(ptr %i.me) #25
  unreachable

_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE5clearEv.exit: ; preds = %_ZNSt3mapImN4cvc58internal12NodeTemplateILb0EEESt4lessImESaISt4pairIKmS3_EEE5clearEv.exit
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  store ptr null, ptr %i.mb, align 8, !tbaa !44
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 408
  store ptr %i.mf, ptr %i.mg, align 8, !tbaa !45
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 416
  store ptr %i.mf, ptr %i.mh, align 8, !tbaa !46
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 424
  store i64 0, ptr %i.mi, align 8, !tbaa !47
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !44
  invoke void @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.mj, ptr noundef %i.ml)
          to label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE5clearEv.exit121 unwind label %bb.ck

bb.ck:                                            ; preds = %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE5clearEv.exit
  %i.mm = landingpad { ptr, i32 }
          catch ptr null
  %i.mn = extractvalue { ptr, i32 } %i.mm, 0
  call void @__clang_call_terminate(ptr %i.mn) #25
  unreachable

_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE5clearEv.exit121: ; preds = %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE5clearEv.exit
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  store ptr null, ptr %i.mk, align 8, !tbaa !44
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr %i.mo, ptr %i.mp, align 8, !tbaa !45
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 296
  store ptr %i.mo, ptr %i.mq, align 8, !tbaa !46
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i64 0, ptr %i.mr, align 8, !tbaa !47
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
  %i.k = load i8, ptr %i.j, align 2, !tbaa !492, !range !406, !noundef !145
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.m = zext i1 %1 to i8
  %i.n = xor i8 %i.k, %i.m
  store i8 %i.n, ptr %i.l, align 8, !tbaa !493
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 8 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !494  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 8 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !495
  %.not.i.i = icmp eq ptr %i.s, %i.q
  %indvars.iv.sroa.gep466 = getelementptr inbounds nuw i8, ptr %16, i64 8
  br i1 %.not.i.i, label %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE5clearEv.exit, label %_ZSt8_DestroyIPPN4cvc58internal16NodeTemplateTrieILb0EEES4_EvT_S6_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPN4cvc58internal16NodeTemplateTrieILb0EEES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %bb.a
  store ptr %i.q, ptr %i.r, align 8, !tbaa !495
  br label %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE5clearEv.exit

_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPPN4cvc58internal16NodeTemplateTrieILb0EEES4_EvT_S6_RSaIT0_E.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !496  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !497
  %.not.i.i133 = icmp eq ptr %i.w, %i.u
  br i1 %.not.i.i133, label %_ZNSt6vectorISt17_Rb_tree_iteratorISt4pairIKN4cvc58internal12NodeTemplateILb0EEENS3_16NodeTemplateTrieILb0EEEEESaISA_EE5clearEv.exit, label %_ZSt8_DestroyIPSt17_Rb_tree_iteratorISt4pairIKN4cvc58internal12NodeTemplateILb0EEENS3_16NodeTemplateTrieILb0EEEEESA_EvT_SC_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt17_Rb_tree_iteratorISt4pairIKN4cvc58internal12NodeTemplateILb0EEENS3_16NodeTemplateTrieILb0EEEEESA_EvT_SC_RSaIT0_E.exit.i.i: ; preds = %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE5clearEv.exit
  store ptr %i.u, ptr %i.v, align 8, !tbaa !497
  br label %_ZNSt6vectorISt17_Rb_tree_iteratorISt4pairIKN4cvc58internal12NodeTemplateILb0EEENS3_16NodeTemplateTrieILb0EEEEESaISA_EE5clearEv.exit

_ZNSt6vectorISt17_Rb_tree_iteratorISt4pairIKN4cvc58internal12NodeTemplateILb0EEENS3_16NodeTemplateTrieILb0EEEEESaISA_EE5clearEv.exit: ; preds = %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE5clearEv.exit, %_ZSt8_DestroyIPSt17_Rb_tree_iteratorISt4pairIKN4cvc58internal12NodeTemplateILb0EEENS3_16NodeTemplateTrieILb0EEEEESA_EvT_SC_RSaIT0_E.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !44
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
  store ptr null, ptr %i.y, align 8, !tbaa !44
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !45
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 296
  store ptr %i.ac, ptr %i.ae, align 8, !tbaa !46
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i64 0, ptr %i.af, align 8, !tbaa !47
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  store i32 -1, ptr %i.ag, align 8, !tbaa !498
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 4 uses
  store i8 1, ptr %i.ah, align 4, !tbaa !499
  %i.ai = load i8, ptr %i.l, align 8, !tbaa !493, !range !406, !noundef !145
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !500
  %i.ak = load i16, ptr %i.o, align 8, !tbaa !178
  switch i16 %i.ak, label %bb.g [
    i16 0, label %bb.c
    i16 1, label %bb.d
  ]

bb.c:                                             ; preds = %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE5clearEv.exit
  store i8 0, ptr %i.ah, align 4, !tbaa !499
  br label %bb.ga

bb.d:                                             ; preds = %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE5clearEv.exit
  store i8 0, ptr %i.ah, align 4, !tbaa !499
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 0, ptr %i.a, align 8, !tbaa !139
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !44 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 4 uses
  %.not10.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.an, %bb.d ] ; 5 uses
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !137 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapImN4cvc58internal12NodeTemplateILb1EEESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !14

_ZNSt3mapImN4cvc58internal12NodeTemplateILb1EEESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !139
  %i.ar = icmp eq ptr %.012.i.i.i.i, %i.ao
  %i.as = icmp ne i64 %i.aq, 0
  %or.cond337 = select i1 %i.ar, i1 true, i1 %i.as
  br i1 %or.cond337, label %.critedge.i, label %_ZNSt3mapImN4cvc58internal12NodeTemplateILb1EEESt4lessImESaISt4pairIKmS3_EEEixEOm.exit

.critedge.i:                                      ; preds = %_ZNSt3mapImN4cvc58internal12NodeTemplateILb1EEESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i, %bb.d
  %.08.lcssa.i.i.i11.i = phi ptr [ %i.ao, %bb.d ], [ %.012.i.i.i.i, %_ZNSt3mapImN4cvc58internal12NodeTemplateILb1EEESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store ptr %i.a, ptr %4, align 8, !tbaa !179, !alias.scope !734
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
  store i64 0, ptr %i.b, align 8, !tbaa !139
  %i.aw = load ptr, ptr %i.am, align 8, !tbaa !44 ; 2 uses
  %.not10.i.i.i.i134 = icmp eq ptr %i.aw, null
  br i1 %.not10.i.i.i.i134, label %.critedge.i145, label %.lr.ph.i.i.i.i135

.lr.ph.i.i.i.i135:                                ; preds = %bb.e, %.lr.ph.i.i.i.i135
  %.012.i.i.i.i136 = phi ptr [ %.1.i.i.i.i141, %.lr.ph.i.i.i.i135 ], [ %i.aw, %bb.e ] ; 5 uses
  %.1.in.i.i.i.i140 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i136, i64 16
  %.1.i.i.i.i141 = load ptr, ptr %.1.in.i.i.i.i140, align 8, !tbaa !137 ; 2 uses
  %.not.i.i.i.i142 = icmp eq ptr %.1.i.i.i.i141, null
  br i1 %.not.i.i.i.i142, label %_ZNSt3mapImN4cvc58internal12NodeTemplateILb1EEESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i143, label %.lr.ph.i.i.i.i135, !llvm.loop !14

_ZNSt3mapImN4cvc58internal12NodeTemplateILb1EEESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i143: ; preds = %.lr.ph.i.i.i.i135
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i136, i64 32
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !139
  %i.az = icmp eq ptr %.012.i.i.i.i136, %i.ao
  %i.ba = icmp ne i64 %i.ay, 0
  %or.cond338 = select i1 %i.az, i1 true, i1 %i.ba
  br i1 %or.cond338, label %.critedge.i145, label %_ZNSt3mapImN4cvc58internal12NodeTemplateILb1EEESt4lessImESaISt4pairIKmS3_EEEixEOm.exit147

.critedge.i145:                                   ; preds = %_ZNSt3mapImN4cvc58internal12NodeTemplateILb1EEESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i143, %bb.e
  %.08.lcssa.i.i.i11.i146 = phi ptr [ %i.ao, %bb.e ], [ %.012.i.i.i.i136, %_ZNSt3mapImN4cvc58internal12NodeTemplateILb1EEESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i143 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store ptr %i.b, ptr %2, align 8, !tbaa !179, !alias.scope !735
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.bb = call ptr @_ZNSt8_Rb_treeImSt4pairIKmN4cvc58internal12NodeTemplateILb1EEEESt10_Select1stIS6_ESt4lessImESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOmEESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.al, ptr nonnull %.08.lcssa.i.i.i11.i146, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %_ZNSt3mapImN4cvc58internal12NodeTemplateILb1EEESt4lessImESaISt4pairIKmS3_EEEixEOm.exit147

_ZNSt3mapImN4cvc58internal12NodeTemplateILb1EEESt4lessImESaISt4pairIKmS3_EEEixEOm.exit147: ; preds = %_ZNSt3mapImN4cvc58internal12NodeTemplateILb1EEESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i143, %.critedge.i145
  %.sroa.06.0.i144 = phi ptr [ %i.bb, %.critedge.i145 ], [ %.012.i.i.i.i136, %_ZNSt3mapImN4cvc58internal12NodeTemplateILb1EEESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i143 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i144, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !119
  %i.be = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNK4cvc58internal4expr9NodeValue8getConstIbEERKT_v(ptr noundef nonnull align 8 dereferenceable(24) %i.bd)
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !407, !range !406, !noundef !145
  %i.bg = load i8, ptr %i.l, align 8, !tbaa !493, !range !406, !noundef !145
  %i.bh = icmp eq i8 %i.bf, %i.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br i1 %i.bh, label %bb.f, label %bb.ga

bb.f:                                             ; preds = %_ZNSt3mapImN4cvc58internal12NodeTemplateILb1EEESt4lessImESaISt4pairIKmS3_EEEixEOm.exit147
  store i32 0, ptr %i.ag, align 8, !tbaa !498
  br label %bb.ga

.critedge:                                        ; preds = %_ZNSt3mapImN4cvc58internal12NodeTemplateILb1EEESt4lessImESaISt4pairIKmS3_EEEixEOm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.ga

bb.g:                                             ; preds = %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE5clearEv.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 11 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !448
  %i.bk = tail call noundef zeroext i1 @_ZN4cvc58internal6theory11quantifiers9QuantInfo19isBaseMatchCompleteEv(ptr noundef nonnull align 8 dereferenceable(648) %i.bj)
  br i1 %i.bk, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i8 0, ptr %i.ah, align 4, !tbaa !499
  store i32 0, ptr %i.ag, align 8, !tbaa !498
  br label %bb.ga

bb.i:                                             ; preds = %bb.g
  %i.bl = load i16, ptr %i.o, align 8, !tbaa !178
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
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !45 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %.not343365 = icmp eq ptr %i.ga, %i.gb
  br i1 %.not343365, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.bs, %bb.bh
  %i.gc = load ptr, ptr %i.r, align 8, !tbaa !495 ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !503
  %.not.i.i166 = icmp eq ptr %i.gc, %i.ge
  br i1 %.not.i.i166, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %._crit_edge
  store ptr null, ptr %i.gc, align 8, !tbaa !502
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  store ptr %i.gf, ptr %i.r, align 8, !tbaa !495
  br label %bb.ga

bb.bj:                                            ; preds = %._crit_edge
  %i.gg = load ptr, ptr %i.p, align 8, !tbaa !494 ; 4 uses
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
  store ptr null, ptr %i.gs, align 8, !tbaa !502
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
  %i.gv = load ptr, ptr %i.gd, align 8, !tbaa !503
  %i.gw = ptrtoint ptr %i.gv to i64
  %i.gx = sub i64 %i.gw, %i.gi
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gg, i64 noundef %i.gx) #27
  br label %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.bm, %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  store ptr %i.gr, ptr %i.p, align 8, !tbaa !494
  store ptr %i.gu, ptr %i.r, align 8, !tbaa !495
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.gp
  store ptr %i.gy, ptr %i.gd, align 8, !tbaa !503
  br label %bb.ga

.lr.ph:                                           ; preds = %bb.bh, %bb.bs
  %.sroa.0324.0366 = phi ptr [ %i.hv, %bb.bs ], [ %i.ga, %bb.bh ] ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.0324.0366, i64 32
  %i.ha = load ptr, ptr %i.bi, align 8, !tbaa !448
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.0324.0366, i64 40
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !505
  %i.hd = tail call noundef i64 @_ZN4cvc58internal6theory11quantifiers9QuantInfo16getCurrentRepVarEm(ptr noundef nonnull align 8 dereferenceable(648) %i.ha, i64 noundef %i.hc) ; 2 uses
  %i.he = load ptr, ptr %i.bi, align 8, !tbaa !448
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 136
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !134
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %i.hd
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !121
  %i.hj = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.hk = icmp eq i8 %i.hj, 0
  br i1 %i.hk, label %bb.bn, label %_ZNK4cvc58internal12NodeTemplateILb0EE6isNullEv.exit, !prof !410

bb.bn:                                            ; preds = %.lr.ph
  %i.hl = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  %.not.i.i168 = icmp eq i32 %i.hl, 0
  br i1 %.not.i.i168, label %_ZNK4cvc58internal12NodeTemplateILb0EE6isNullEv.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hm = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26
          to label %bb.bp unwind label %bb.bq     ; 4 uses

bb.bp:                                            ; preds = %bb.bo
  %i.hn = load <2 x i64>, ptr %i.hm, align 8
  %i.ho = and <2 x i64> %i.hn, <i64 -1152921504606846976, i64 -288230371856745472>
  %i.hp = or disjoint <2 x i64> %i.ho, <i64 1152920405095219200, i64 0>
  store <2 x i64> %i.hp, ptr %i.hm, align 8
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  store ptr null, ptr %i.hq, align 8, !tbaa !413
  store ptr %i.hm, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !128
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  br label %_ZNK4cvc58internal12NodeTemplateILb0EE6isNullEv.exit

common.resume:                                    ; preds = %bb.bg, %bb.ae, %.loopexit, %bb.bq
  %common.resume.op = phi { ptr, i32 } [ %i.hr, %bb.bq ], [ %.pn106.pn, %bb.ae ], [ %.pn91.pn.pn, %.loopexit ], [ %.pn97, %bb.bg ]
  resume { ptr, i32 } %common.resume.op

bb.bq:                                            ; preds = %bb.bo
  %i.hr = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  br label %common.resume

_ZNK4cvc58internal12NodeTemplateILb0EE6isNullEv.exit: ; preds = %.lr.ph, %bb.bn, %bb.bp
  %i.hs = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !128
  %i.ht = icmp eq ptr %i.hi, %i.hs
  br i1 %i.ht, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb0EE6isNullEv.exit
  %i.hu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %i.gz)
  store i64 %i.hd, ptr %i.hu, align 8, !tbaa !139
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %_ZNK4cvc58internal12NodeTemplateILb0EE6isNullEv.exit
  %i.hv = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0324.0366) #29 ; 2 uses
  %.not343 = icmp eq ptr %i.hv, %i.gb
  br i1 %.not343, label %._crit_edge, label %.lr.ph

bb.bt:                                            ; preds = %bb.i, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  %i.hw = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.hx = icmp eq i8 %i.hw, 0
  br i1 %i.hx, label %bb.bu, label %bb.bx, !prof !410

bb.bu:                                            ; preds = %bb.bt
  %i.hy = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  %.not.i.i189 = icmp eq i32 %i.hy, 0
  br i1 %.not.i.i189, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.hz = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26
          to label %bb.bw unwind label %.body.thread ; 4 uses

.body.thread:                                     ; preds = %bb.bv
  %i.ia = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  br label %.loopexit

bb.bw:                                            ; preds = %bb.bv
  %i.ib = load <2 x i64>, ptr %i.hz, align 8
  %i.ic = and <2 x i64> %i.ib, <i64 -1152921504606846976, i64 -288230371856745472>
  %i.id = or disjoint <2 x i64> %i.ic, <i64 1152920405095219200, i64 0>
  store <2 x i64> %i.id, ptr %i.hz, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  store ptr null, ptr %i.ie, align 8, !tbaa !413
  store ptr %i.hz, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !128
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  br label %bb.bx

.preheader348.preheader:                          ; preds = %bb.bz
  %i.if = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #24
  br label %.loopexit

bb.bx:                                            ; preds = %bb.bw, %bb.bu, %bb.bt
  %i.ig = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !128
  store ptr %i.ig, ptr %16, align 16, !tbaa !119
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 10 uses
  %i.ih = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.ii = icmp eq i8 %i.ih, 0
  br i1 %i.ii, label %bb.by, label %bb.cb, !prof !410

bb.by:                                            ; preds = %bb.bx
  %i.ij = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  %.not.i.i189.1 = icmp eq i32 %i.ij, 0
  br i1 %.not.i.i189.1, label %bb.cb, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ik = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26
          to label %bb.ca unwind label %.preheader348.preheader ; 4 uses

bb.ca:                                            ; preds = %bb.bz
  %i.il = load <2 x i64>, ptr %i.ik, align 8
  %i.im = and <2 x i64> %i.il, <i64 -1152921504606846976, i64 -288230371856745472>
  %i.in = or disjoint <2 x i64> %i.im, <i64 1152920405095219200, i64 0>
  store <2 x i64> %i.in, ptr %i.ik, align 8
  %i.io = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  store ptr null, ptr %i.io, align 8, !tbaa !413
  store ptr %i.ik, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !128
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.by, %bb.bx
  %i.ip = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !128
  store ptr %i.ip, ptr %.ptr.1, align 8, !tbaa !119
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.iq = load i16, ptr %i.o, align 8, !tbaa !178
  %i.ir = icmp eq i16 %i.iq, 2
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %i.ir, label %bb.cc, label %.preheader345

.preheader345:                                    ; preds = %bb.cb
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  br label %bb.db

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  %i.iv = load ptr, ptr %i.bi, align 8, !tbaa !448
  %i.iw = load ptr, ptr %i.is, align 8, !tbaa !119
  store ptr %i.iw, ptr %18, align 8, !tbaa !121
  invoke void @_ZN4cvc58internal6theory11quantifiers9QuantInfo15getCurrentValueENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate.398") align 8 %17, ptr noundef nonnull align 8 dereferenceable(648) %i.iv, ptr noundef nonnull align 8 %18)
          to label %bb.cd unwind label %bb.cx

bb.cd:                                            ; preds = %bb.cc
  %i.ix = load ptr, ptr %16, align 16, !tbaa !119 ; 4 uses
  %i.iy = load ptr, ptr %17, align 8, !tbaa !121  ; 6 uses
  %.not.i190 = icmp eq ptr %i.ix, %i.iy
  br i1 %.not.i190, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit, label %bb.ce, !prof !124

bb.ce:                                            ; preds = %bb.cd
  %i.iz = load i64, ptr %i.ix, align 8            ; 3 uses
  %i.ja = and i64 %i.iz, 1152920405095219200
  %.not.i.i191 = icmp eq i64 %i.ja, 1152920405095219200
  br i1 %.not.i.i191, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, label %bb.cf, !prof !124

bb.cf:                                            ; preds = %bb.ce
  %i.jb = add i64 %i.iz, 1152920405095219200
  %i.jc = and i64 %i.jb, 1152920405095219200      ; 2 uses
  %i.jd = and i64 %i.iz, -1152920405095219201
  %i.je = or disjoint i64 %i.jc, %i.jd
  store i64 %i.je, ptr %i.ix, align 8
  %i.jf = icmp eq i64 %i.jc, 0
  br i1 %i.jf, label %bb.cg, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, !prof !124

bb.cg:                                            ; preds = %bb.cf
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ix)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i unwind label %bb.cx

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i:    ; preds = %bb.cg, %bb.cf, %bb.ce
  store ptr %i.iy, ptr %16, align 16, !tbaa !119
  %i.jg = load i64, ptr %i.iy, align 8            ; 3 uses
  %i.jh = lshr i64 %i.jg, 40
  %i.ji = trunc nuw nsw i64 %i.jh to i32
  %i.jj = and i32 %i.ji, 1048575                  ; 3 uses
  %i.jk = icmp samesign ult i32 %i.jj, 1048574
  br i1 %i.jk, label %bb.ch, label %bb.ci, !prof !123

bb.ch:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.jl = add nuw nsw i32 %i.jj, 1
  %i.jm = zext nneg i32 %i.jl to i64
  %i.jn = shl nuw nsw i64 %i.jm, 40
  %i.jo = and i64 %i.jg, -1152920405095219201
  %i.jp = or i64 %i.jn, %i.jo
  store i64 %i.jp, ptr %i.iy, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit

bb.ci:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.jq = icmp eq i32 %i.jj, 1048574
  br i1 %i.jq, label %bb.cj, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit, !prof !124

bb.cj:                                            ; preds = %bb.ci
  %i.jr = or i64 %i.jg, 1152920405095219200
  store i64 %i.jr, ptr %i.iy, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.iy)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit unwind label %bb.cx

_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit: ; preds = %bb.ci, %bb.ch, %bb.cd, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  %i.js = load ptr, ptr %i.bi, align 8, !tbaa !448 ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 80
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !44 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.js, i64 72 ; 2 uses
  %.not10.i.i.i.i194 = icmp eq ptr %i.ju, null
  br i1 %.not10.i.i.i.i194, label %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit205.thread, label %.lr.ph.i.i.i.i195

.lr.ph.i.i.i.i195:                                ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit
  %i.jw = load ptr, ptr %16, align 16, !tbaa !119
  %i.jx = load i64, ptr %i.jw, align 8
  %i.jy = and i64 %i.jx, 1099511627775            ; 2 uses
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ck, %.lr.ph.i.i.i.i195
  %.012.i.i.i.i196 = phi ptr [ %i.ju, %.lr.ph.i.i.i.i195 ], [ %.1.i.i.i.i201, %bb.ck ] ; 3 uses
  %.0811.i.i.i.i197 = phi ptr [ %i.jv, %.lr.ph.i.i.i.i195 ], [ %.19.i.i.i.i198, %bb.ck ]
  %i.jz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i196, i64 32
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !121
  %i.kb = load i64, ptr %i.ka, align 8
  %i.kc = and i64 %i.kb, 1099511627775
  %i.kd = icmp samesign ult i64 %i.kc, %i.jy      ; 2 uses
  %.19.i.i.i.i198 = select i1 %i.kd, ptr %.0811.i.i.i.i197, ptr %.012.i.i.i.i196 ; 4 uses
  %.1.in.v.i.i.i.i199 = select i1 %i.kd, i64 24, i64 16
  %.1.in.i.i.i.i200 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i196, i64 %.1.in.v.i.i.i.i199
  %.1.i.i.i.i201 = load ptr, ptr %.1.in.i.i.i.i200, align 8, !tbaa !137 ; 2 uses
  %.not.i.i.i.i202 = icmp eq ptr %.1.i.i.i.i201, null
  br i1 %.not.i.i.i.i202, label %_ZNKSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i203, label %bb.ck, !llvm.loop !13

_ZNKSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i203: ; preds = %bb.ck
  %i.ke = icmp eq ptr %.19.i.i.i.i198, %i.jv
  br i1 %i.ke, label %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit205.thread, label %_ZNKSt3mapIN4cvc58internal12NodeTemplateILb0EEEmSt4lessIS3_ESaISt4pairIKS3_mEEE4findERS7_.exit.i204

_ZNKSt3mapIN4cvc58internal12NodeTemplateILb0EEEmSt4lessIS3_ESaISt4pairIKS3_mEEE4findERS7_.exit.i204: ; preds = %_ZNKSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i203
  %i.kf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i198, i64 32
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !121
  %i.kh = load i64, ptr %i.kg, align 8
  %i.ki = and i64 %i.kh, 1099511627775
  %i.kj = icmp samesign ult i64 %i.jy, %i.ki
  br i1 %i.kj, label %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit205.thread, label %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit205

_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit205: ; preds = %_ZNKSt3mapIN4cvc58internal12NodeTemplateILb0EEEmSt4lessIS3_ESaISt4pairIKS3_mEEE4findERS7_.exit.i204
  %i.kk = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i198, i64 40
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !456 ; 2 uses
  %i.km = and i64 %i.kl, 4294967295
  %i.kn = icmp eq i64 %i.km, 4294967295
  br i1 %i.kn, label %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit205.thread, label %bb.cl

bb.cl:                                            ; preds = %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit205
  %sext341 = shl i64 %i.kl, 32
  %i.ko = ashr exact i64 %sext341, 32
  %i.kp = invoke noundef i64 @_ZN4cvc58internal6theory11quantifiers9QuantInfo16getCurrentRepVarEm(ptr noundef nonnull align 8 dereferenceable(648) %i.js, i64 noundef %i.ko)
          to label %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit205.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit205.thread: ; preds = %_ZNKSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i203, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit, %_ZNKSt3mapIN4cvc58internal12NodeTemplateILb0EEEmSt4lessIS3_ESaISt4pairIKS3_mEEE4findERS7_.exit.i204, %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit205, %bb.cl
  %i.kq = phi i64 [ %i.kp, %bb.cl ], [ -1, %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit205 ], [ -1, %_ZNKSt3mapIN4cvc58internal12NodeTemplateILb0EEEmSt4lessIS3_ESaISt4pairIKS3_mEEE4findERS7_.exit.i204 ], [ -1, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit ], [ -1, %_ZNKSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i203 ]
  %i.kr = trunc i64 %i.kq to i32                  ; 2 uses
  store i32 %i.kr, ptr %.sroa.0, align 4, !tbaa !435
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  %i.ks = invoke noundef ptr @_ZNK4cvc58internal6EnvObj11nodeManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.cm unwind label %bb.cy

bb.cm:                                            ; preds = %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit205.thread
  invoke void @_ZN4cvc58internal11NodeManager7mkConstIbEENS0_12NodeTemplateILb1EEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %19, ptr noundef nonnull align 8 dereferenceable(3592) %i.ks, ptr noundef nonnull align 1 dereferenceable(1) %i.l)
          to label %bb.cn unwind label %bb.cy

bb.cn:                                            ; preds = %bb.cm
  %i.kt = load ptr, ptr %.ptr.1, align 8, !tbaa !119 ; 4 uses
  %i.ku = load ptr, ptr %19, align 8, !tbaa !119
  %.not.i206 = icmp eq ptr %i.kt, %i.ku
  br i1 %.not.i206, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, label %bb.co, !prof !124

bb.co:                                            ; preds = %bb.cn
  %i.kv = load i64, ptr %i.kt, align 8            ; 3 uses
  %i.kw = and i64 %i.kv, 1152920405095219200
  %.not.i.i207 = icmp eq i64 %i.kw, 1152920405095219200
  br i1 %.not.i.i207, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i208, label %bb.cp, !prof !124

bb.cp:                                            ; preds = %bb.co
  %i.kx = add i64 %i.kv, 1152920405095219200
  %i.ky = and i64 %i.kx, 1152920405095219200      ; 2 uses
  %i.kz = and i64 %i.kv, -1152920405095219201
  %i.la = or disjoint i64 %i.ky, %i.kz
  store i64 %i.la, ptr %i.kt, align 8
  %i.lb = icmp eq i64 %i.ky, 0
  br i1 %i.lb, label %bb.cq, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i208, !prof !124

bb.cq:                                            ; preds = %bb.cp
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.kt)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i208 unwind label %bb.cz

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i208: ; preds = %bb.cq, %bb.cp, %bb.co
  %i.lc = load ptr, ptr %19, align 8, !tbaa !119  ; 5 uses
  store ptr %i.lc, ptr %.ptr.1, align 8, !tbaa !119
  %i.ld = load i64, ptr %i.lc, align 8            ; 3 uses
  %i.le = lshr i64 %i.ld, 40
  %i.lf = trunc nuw nsw i64 %i.le to i32
  %i.lg = and i32 %i.lf, 1048575                  ; 3 uses
  %i.lh = icmp samesign ult i32 %i.lg, 1048574
  br i1 %i.lh, label %bb.cr, label %bb.cs, !prof !123

bb.cr:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i208
  %i.li = add nuw nsw i32 %i.lg, 1
  %i.lj = zext nneg i32 %i.li to i64
  %i.lk = shl nuw nsw i64 %i.lj, 40
  %i.ll = and i64 %i.ld, -1152920405095219201
  %i.lm = or i64 %i.lk, %i.ll
  store i64 %i.lm, ptr %i.lc, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit

bb.cs:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i208
  %i.ln = icmp eq i32 %i.lg, 1048574
  br i1 %i.ln, label %bb.ct, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, !prof !124

bb.ct:                                            ; preds = %bb.cs
  %i.lo = or i64 %i.ld, 1152920405095219200
  store i64 %i.lo, ptr %i.lc, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.lc)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit unwind label %bb.cz

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit: ; preds = %bb.cs, %bb.cr, %bb.cn, %bb.ct
  %i.lp = load ptr, ptr %19, align 8, !tbaa !119  ; 3 uses
  %i.lq = load i64, ptr %i.lp, align 8            ; 3 uses
  %i.lr = and i64 %i.lq, 1152920405095219200
  %.not.i.i211 = icmp eq i64 %i.lr, 1152920405095219200
  br i1 %.not.i.i211, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit213, label %bb.cu, !prof !124

bb.cu:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit
  %i.ls = add i64 %i.lq, 1152920405095219200
  %i.lt = and i64 %i.ls, 1152920405095219200      ; 2 uses
  %i.lu = and i64 %i.lq, -1152920405095219201
  %i.lv = or disjoint i64 %i.lt, %i.lu
  store i64 %i.lv, ptr %i.lp, align 8
  %i.lw = icmp eq i64 %i.lt, 0
  br i1 %i.lw, label %bb.cv, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit213, !prof !124

bb.cv:                                            ; preds = %bb.cu
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.lp)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit213 unwind label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.lx = landingpad { ptr, i32 }
          catch ptr null
  %i.ly = extractvalue { ptr, i32 } %i.lx, 0
  call void @__clang_call_terminate(ptr %i.ly) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit213: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, %bb.cu, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  store i8 1, ptr %i.l, align 8, !tbaa !493
  br label %.loopexit346

bb.cx:                                            ; preds = %bb.cc, %bb.cj, %bb.cg
  %i.lz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  br label %.body215

bb.cy:                                            ; preds = %bb.cm, %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit205.thread
  %i.ma = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.cz:                                            ; preds = %bb.ct, %bb.cq
  %i.mb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #24
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %.pn83 = phi { ptr, i32 } [ %i.mb, %bb.cz ], [ %i.ma, %bb.cy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  br label %.body215

bb.db:                                            ; preds = %.preheader345, %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit242.thread
  %26 = phi i1 [ true, %.preheader345 ], [ false, %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit242.thread ]
  %indvars.iv.sroa.phi = phi ptr [ %.sroa.0, %.preheader345 ], [ %.sroa.6, %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit242.thread ]
  %indvars.iv.sroa.phi465 = phi ptr [ %16, %.preheader345 ], [ %indvars.iv.sroa.gep466, %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit242.thread ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.preheader345 ], [ 1, %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit242.thread ] ; 3 uses
  %i.mc = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.md = icmp eq i8 %i.mc, 0
  br i1 %i.md, label %bb.dc, label %bb.dg, !prof !410

bb.dc:                                            ; preds = %bb.db
  %i.me = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  %.not.i.i214 = icmp eq i32 %i.me, 0
  br i1 %.not.i.i214, label %bb.dg, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.mf = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26
          to label %bb.de unwind label %bb.df     ; 4 uses

bb.de:                                            ; preds = %bb.dd
  %i.mg = load <2 x i64>, ptr %i.mf, align 8
  %i.mh = and <2 x i64> %i.mg, <i64 -1152921504606846976, i64 -288230371856745472>
  %i.mi = or disjoint <2 x i64> %i.mh, <i64 1152920405095219200, i64 0>
  store <2 x i64> %i.mi, ptr %i.mf, align 8
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mf, i64 16
  store ptr null, ptr %i.mj, align 8, !tbaa !413
  store ptr %i.mf, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !128
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  br label %bb.dg

bb.df:                                            ; preds = %bb.dd
  %i.mk = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  br label %.body215

bb.dg:                                            ; preds = %bb.de, %bb.dc, %bb.db
  %i.ml = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !128 ; 4 uses
  %i.mm = load ptr, ptr %i.it, align 8, !tbaa !44 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.mm, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapImN4cvc58internal12NodeTemplateILb0EEESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.dg, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.mm, %bb.dg ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.iu, %bb.dg ]
  %i.mn = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.mo = load i64, ptr %i.mn, align 8, !tbaa !139
  %i.mp = icmp ult i64 %i.mo, %indvars.iv         ; 2 uses
  %.19.i.i.i = select i1 %i.mp, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.mp, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !137 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeImSt4pairIKmN4cvc58internal12NodeTemplateILb0EEEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !15

_ZNSt8_Rb_treeImSt4pairIKmN4cvc58internal12NodeTemplateILb0EEEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.mq = icmp eq ptr %.19.i.i.i, %i.iu
  br i1 %i.mq, label %_ZNSt3mapImN4cvc58internal12NodeTemplateILb0EEESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread, label %_ZNSt3mapImN4cvc58internal12NodeTemplateILb0EEESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit

_ZNSt3mapImN4cvc58internal12NodeTemplateILb0EEESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit: ; preds = %_ZNSt8_Rb_treeImSt4pairIKmN4cvc58internal12NodeTemplateILb0EEEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.mr = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ms = load i64, ptr %i.mr, align 8, !tbaa !139
  %i.mt = icmp ugt i64 %i.ms, %indvars.iv
  br i1 %i.mt, label %_ZNSt3mapImN4cvc58internal12NodeTemplateILb0EEESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread, label %bb.dh

bb.dh:                                            ; preds = %_ZNSt3mapImN4cvc58internal12NodeTemplateILb0EEESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit
  %i.mu = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !121 ; 2 uses
  %.not.i217 = icmp eq ptr %i.ml, %i.mv
  %spec.select = select i1 %.not.i217, ptr %i.ml, ptr %i.mv, !prof !124
  br label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit

_ZNSt3mapImN4cvc58internal12NodeTemplateILb0EEESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread: ; preds = %_ZNSt8_Rb_treeImSt4pairIKmN4cvc58internal12NodeTemplateILb0EEEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, %bb.dg, %_ZNSt3mapImN4cvc58internal12NodeTemplateILb0EEESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit
  %i.mw = load ptr, ptr %i.is, align 8, !tbaa !119, !noalias !738 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  %i.my = load i64, ptr %i.mx, align 8, !noalias !738
  %i.mz = trunc i64 %i.my to i32
  %i.na = and i32 %i.mz, 1023                     ; 2 uses
  %i.nb = icmp eq i32 %i.na, 1023
  %i.nc = select i1 %i.nb, i32 -1, i32 %i.na
  %i.nd = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.nc)
          to label %.noexc219 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !738

.noexc219:                                        ; preds = %_ZNSt3mapImN4cvc58internal12NodeTemplateILb0EEESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread
  %i.ne = icmp eq i32 %i.nd, 2
  %i.nf = zext i1 %i.ne to i64
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mw, i64 24
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %i.ng, i64 %indvars.iv
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.nh, i64 %i.nf
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !128, !noalias !738 ; 9 uses
  %i.nk = load i64, ptr %i.nj, align 8, !noalias !738 ; 4 uses
  %i.nl = lshr i64 %i.nk, 40
  %i.nm = trunc nuw nsw i64 %i.nl to i32
  %i.nn = and i32 %i.nm, 1048575                  ; 3 uses
  %i.no = icmp samesign ult i32 %i.nn, 1048574
  br i1 %i.no, label %bb.di, label %bb.dj, !prof !123

bb.di:                                            ; preds = %.noexc219
  %i.np = add nuw nsw i32 %i.nn, 1
  %i.nq = zext nneg i32 %i.np to i64
  %i.nr = shl nuw nsw i64 %i.nq, 40
  %i.ns = and i64 %i.nk, -1152920405095219201
  %i.nt = or i64 %i.nr, %i.ns                     ; 2 uses
  store i64 %i.nt, ptr %i.nj, align 8, !noalias !738
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit

bb.dj:                                            ; preds = %.noexc219
  %i.nu = icmp eq i32 %i.nn, 1048574
  br i1 %i.nu, label %bb.dk, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit, !prof !124

bb.dk:                                            ; preds = %bb.dj
  %i.nv = or i64 %i.nk, 1152920405095219200
  store i64 %i.nv, ptr %i.nj, align 8, !noalias !738
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.nj)
          to label %._ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !738

._ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit_crit_edge: ; preds = %bb.dk
  %.pre = load i64, ptr %i.nj, align 8
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit:  ; preds = %._ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit_crit_edge, %bb.dj, %bb.di
  %i.nw = phi i64 [ %.pre, %._ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit_crit_edge ], [ %i.nk, %bb.dj ], [ %i.nt, %bb.di ] ; 3 uses
  %.not.i221 = icmp eq ptr %i.ml, %i.nj
  %spec.select339 = select i1 %.not.i221, ptr %i.ml, ptr %i.nj, !prof !124 ; 3 uses
  %i.nx = and i64 %i.nw, 1152920405095219200
  %.not.i.i222 = icmp eq i64 %i.nx, 1152920405095219200
  br i1 %.not.i.i222, label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit, label %bb.dl, !prof !124

bb.dl:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit
  %i.ny = add i64 %i.nw, 1152920405095219200
  %i.nz = and i64 %i.ny, 1152920405095219200      ; 2 uses
  %i.oa = and i64 %i.nw, -1152920405095219201
  %i.ob = or disjoint i64 %i.nz, %i.oa
  store i64 %i.ob, ptr %i.nj, align 8
  %i.oc = icmp eq i64 %i.nz, 0
  br i1 %i.oc, label %bb.dm, label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit, !prof !124

bb.dm:                                            ; preds = %bb.dl
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.nj)
          to label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit unwind label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.od = landingpad { ptr, i32 }
          catch ptr null
  %i.oe = extractvalue { ptr, i32 } %i.od, 0
  tail call void @__clang_call_terminate(ptr %i.oe) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit: ; preds = %bb.dh, %bb.dm, %bb.dl, %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit
  %.sroa.0314.0 = phi ptr [ %spec.select339, %bb.dm ], [ %spec.select, %bb.dh ], [ %spec.select339, %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit ], [ %spec.select339, %bb.dl ]
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  %i.of = load ptr, ptr %i.bi, align 8, !tbaa !448
  store ptr %.sroa.0314.0, ptr %21, align 8, !tbaa !121
  invoke void @_ZN4cvc58internal6theory11quantifiers9QuantInfo15getCurrentValueENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate.398") align 8 %20, ptr noundef nonnull align 8 dereferenceable(648) %i.of, ptr noundef nonnull align 8 %21)
          to label %bb.do unwind label %bb.dx

bb.do:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit
  %i.og = load ptr, ptr %indvars.iv.sroa.phi465, align 8, !tbaa !119 ; 4 uses
  %i.oh = load ptr, ptr %20, align 8, !tbaa !121  ; 6 uses
  %.not.i225 = icmp eq ptr %i.og, %i.oh
  br i1 %.not.i225, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit230, label %bb.dp, !prof !124

bb.dp:                                            ; preds = %bb.do
  %i.oi = load i64, ptr %i.og, align 8            ; 3 uses
  %i.oj = and i64 %i.oi, 1152920405095219200
  %.not.i.i226 = icmp eq i64 %i.oj, 1152920405095219200
  br i1 %.not.i.i226, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i227, label %bb.dq, !prof !124

bb.dq:                                            ; preds = %bb.dp
  %i.ok = add i64 %i.oi, 1152920405095219200
  %i.ol = and i64 %i.ok, 1152920405095219200      ; 2 uses
  %i.om = and i64 %i.oi, -1152920405095219201
  %i.on = or disjoint i64 %i.ol, %i.om
  store i64 %i.on, ptr %i.og, align 8
  %i.oo = icmp eq i64 %i.ol, 0
  br i1 %i.oo, label %bb.dr, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i227, !prof !124

bb.dr:                                            ; preds = %bb.dq
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.og)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i227 unwind label %bb.dx

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i227: ; preds = %bb.dr, %bb.dq, %bb.dp
  store ptr %i.oh, ptr %indvars.iv.sroa.phi465, align 8, !tbaa !119
  %i.op = load i64, ptr %i.oh, align 8            ; 3 uses
  %i.oq = lshr i64 %i.op, 40
  %i.or = trunc nuw nsw i64 %i.oq to i32
  %i.os = and i32 %i.or, 1048575                  ; 3 uses
  %i.ot = icmp samesign ult i32 %i.os, 1048574
  br i1 %i.ot, label %bb.ds, label %bb.dt, !prof !123

bb.ds:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i227
  %i.ou = add nuw nsw i32 %i.os, 1
  %i.ov = zext nneg i32 %i.ou to i64
  %i.ow = shl nuw nsw i64 %i.ov, 40
  %i.ox = and i64 %i.op, -1152920405095219201
  %i.oy = or i64 %i.ow, %i.ox
  store i64 %i.oy, ptr %i.oh, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit230

bb.dt:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i227
  %i.oz = icmp eq i32 %i.os, 1048574
  br i1 %i.oz, label %bb.du, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit230, !prof !124

bb.du:                                            ; preds = %bb.dt
  %i.pa = or i64 %i.op, 1152920405095219200
  store i64 %i.pa, ptr %i.oh, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.oh)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit230 unwind label %bb.dx

_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit230: ; preds = %bb.dt, %bb.ds, %bb.do, %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  %i.pb = load ptr, ptr %i.bi, align 8, !tbaa !448 ; 3 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 80
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !44 ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pb, i64 72 ; 2 uses
  %.not10.i.i.i.i231 = icmp eq ptr %i.pd, null
  br i1 %.not10.i.i.i.i231, label %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit242.thread, label %.lr.ph.i.i.i.i232

.lr.ph.i.i.i.i232:                                ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit230
  %i.pf = load ptr, ptr %indvars.iv.sroa.phi465, align 8, !tbaa !119
  %i.pg = load i64, ptr %i.pf, align 8
  %i.ph = and i64 %i.pg, 1099511627775            ; 2 uses
  br label %bb.dv

bb.dv:                                            ; preds = %bb.dv, %.lr.ph.i.i.i.i232
  %.012.i.i.i.i233 = phi ptr [ %i.pd, %.lr.ph.i.i.i.i232 ], [ %.1.i.i.i.i238, %bb.dv ] ; 3 uses
  %.0811.i.i.i.i234 = phi ptr [ %i.pe, %.lr.ph.i.i.i.i232 ], [ %.19.i.i.i.i235, %bb.dv ]
  %i.pi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i233, i64 32
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !121
  %i.pk = load i64, ptr %i.pj, align 8
  %i.pl = and i64 %i.pk, 1099511627775
  %i.pm = icmp samesign ult i64 %i.pl, %i.ph      ; 2 uses
  %.19.i.i.i.i235 = select i1 %i.pm, ptr %.0811.i.i.i.i234, ptr %.012.i.i.i.i233 ; 4 uses
  %.1.in.v.i.i.i.i236 = select i1 %i.pm, i64 24, i64 16
  %.1.in.i.i.i.i237 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i233, i64 %.1.in.v.i.i.i.i236
  %.1.i.i.i.i238 = load ptr, ptr %.1.in.i.i.i.i237, align 8, !tbaa !137 ; 2 uses
  %.not.i.i.i.i239 = icmp eq ptr %.1.i.i.i.i238, null
  br i1 %.not.i.i.i.i239, label %_ZNKSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i240, label %bb.dv, !llvm.loop !13

_ZNKSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i240: ; preds = %bb.dv
  %i.pn = icmp eq ptr %.19.i.i.i.i235, %i.pe
  br i1 %i.pn, label %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit242.thread, label %_ZNKSt3mapIN4cvc58internal12NodeTemplateILb0EEEmSt4lessIS3_ESaISt4pairIKS3_mEEE4findERS7_.exit.i241

_ZNKSt3mapIN4cvc58internal12NodeTemplateILb0EEEmSt4lessIS3_ESaISt4pairIKS3_mEEE4findERS7_.exit.i241: ; preds = %_ZNKSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i240
  %i.po = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i235, i64 32
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !121
  %i.pq = load i64, ptr %i.pp, align 8
  %i.pr = and i64 %i.pq, 1099511627775
  %i.ps = icmp samesign ult i64 %i.ph, %i.pr
  br i1 %i.ps, label %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit242.thread, label %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit242

_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit242: ; preds = %_ZNKSt3mapIN4cvc58internal12NodeTemplateILb0EEEmSt4lessIS3_ESaISt4pairIKS3_mEEE4findERS7_.exit.i241
  %i.pt = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i235, i64 40
  %i.pu = load i64, ptr %i.pt, align 8, !tbaa !456 ; 2 uses
  %i.pv = and i64 %i.pu, 4294967295
  %i.pw = icmp eq i64 %i.pv, 4294967295
  br i1 %i.pw, label %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit242.thread, label %bb.dw

bb.dw:                                            ; preds = %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit242
  %sext = shl i64 %i.pu, 32
  %i.px = ashr exact i64 %sext, 32
  %i.py = invoke noundef i64 @_ZN4cvc58internal6theory11quantifiers9QuantInfo16getCurrentRepVarEm(ptr noundef nonnull align 8 dereferenceable(648) %i.pb, i64 noundef %i.px)
          to label %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit242.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit242.thread: ; preds = %_ZNKSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i240, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit230, %_ZNKSt3mapIN4cvc58internal12NodeTemplateILb0EEEmSt4lessIS3_ESaISt4pairIKS3_mEEE4findERS7_.exit.i241, %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit242, %bb.dw
  %i.pz = phi i64 [ %i.py, %bb.dw ], [ -1, %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit242 ], [ -1, %_ZNKSt3mapIN4cvc58internal12NodeTemplateILb0EEEmSt4lessIS3_ESaISt4pairIKS3_mEEE4findERS7_.exit.i241 ], [ -1, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit230 ], [ -1, %_ZNKSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i240 ]
  %i.qa = trunc i64 %i.pz to i32
  store i32 %i.qa, ptr %indvars.iv.sroa.phi, align 4, !tbaa !435
  br i1 %26, label %bb.db, label %.loopexit346.loopexit, !llvm.loop !733

bb.dx:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit, %bb.du, %bb.dr
  %i.qb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  br label %.body215

.loopexit346.loopexit:                            ; preds = %_ZNK4cvc58internal6theory11quantifiers9QuantInfo9getVarNumENS0_12NodeTemplateILb0EEE.exit242.thread
  %.sroa.0.0..sroa.0.0..pre378 = load i32, ptr %.sroa.0, align 4, !tbaa !435
  %.sroa.6.0..sroa.6.4..pre379 = load i32, ptr %.sroa.6, align 4
  br label %.loopexit346

.loopexit346:                                     ; preds = %.loopexit346.loopexit, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit213
  %i.qc = phi i32 [ %.sroa.6.0..sroa.6.4..pre379, %.loopexit346.loopexit ], [ -1, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit213 ] ; 3 uses
  %i.qd = phi i32 [ %.sroa.0.0..sroa.0.0..pre378, %.loopexit346.loopexit ], [ %i.kr, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit213 ] ; 2 uses
  %27 = icmp eq i32 %i.qd, -1                     ; 2 uses
  %i.qe = icmp eq i32 %i.qc, -1                   ; 2 uses
  %or.cond = select i1 %27, i1 %i.qe, i1 false
  br i1 %or.cond, label %bb.dy, label %bb.eb

bb.dy:                                            ; preds = %.loopexit346
  %i.qf = load i8, ptr %i.l, align 8, !tbaa !493, !range !406, !noundef !145
  %i.qg = trunc nuw i8 %i.qf to i1
  br i1 %i.qg, label %.split, label %bb.dz

.split:                                           ; preds = %bb.dy
  %i.qh = load ptr, ptr %16, align 16, !tbaa !119
  %i.qi = load ptr, ptr %.ptr.1, align 8, !tbaa !119
  %i.qj = icmp eq ptr %i.qh, %i.qi
  br i1 %i.qj, label %bb.fk, label %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE9push_backEOS4_.exit261

bb.dz:                                            ; preds = %bb.dy
  %i.qk = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !491 ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 448
  %i.qn = load i32, ptr %i.qm, align 8, !tbaa !488
  %i.qo = icmp eq i32 %i.qn, 0
  %i.qp = load ptr, ptr %16, align 16, !tbaa !119 ; 2 uses
  br i1 %i.qo, label %bb.ea, label %.split335

bb.ea:                                            ; preds = %bb.dz
  store ptr %i.qp, ptr %22, align 8, !tbaa !121
  %i.qq = load ptr, ptr %.ptr.1, align 8, !tbaa !119
  store ptr %i.qq, ptr %23, align 8, !tbaa !121
  %i.qr = invoke noundef zeroext i1 @_ZNK4cvc58internal6theory11quantifiers17QuantifiersModule11areDisequalENS0_12NodeTemplateILb0EEES5_(ptr noundef nonnull align 8 dereferenceable(48) %i.ql, ptr noundef nonnull align 8 %22, ptr noundef nonnull align 8 %23)
          to label %bb.fj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.split335:                                        ; preds = %bb.dz
  %i.qs = load ptr, ptr %.ptr.1, align 8, !tbaa !119
  %.not342 = icmp eq ptr %i.qp, %i.qs
  br i1 %.not342, label %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE9push_backEOS4_.exit261, label %bb.fk

bb.eb:                                            ; preds = %.loopexit346
  %.not380 = xor i1 %i.qe, true
  %or.cond5 = and i1 %27, %.not380
  br i1 %or.cond5, label %bb.ec, label %._crit_edge381

bb.ec:                                            ; preds = %bb.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #24
  invoke void @_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull align 8 dereferenceable(8) %.ptr.1)
          to label %bb.ed unwind label %bb.eg

bb.ed:                                            ; preds = %bb.ec
  %i.qt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %.ptr.1, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.ee unwind label %bb.eh     ; 0 uses

bb.ee:                                            ; preds = %bb.ed
  %i.qu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %bb.ef unwind label %bb.eh     ; 0 uses

bb.ef:                                            ; preds = %bb.ee
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  br label %._crit_edge381

bb.eg:                                            ; preds = %bb.ec
  %i.qv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei

bb.eh:                                            ; preds = %bb.ee, %bb.ed
  %i.qw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #24
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %.pn86 = phi { ptr, i32 } [ %i.qw, %bb.eh ], [ %i.qv, %bb.eg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  br label %.body215

._crit_edge381:                                   ; preds = %bb.eb, %bb.ef
  %i.qx = phi i32 [ -1, %bb.ef ], [ %i.qc, %bb.eb ] ; 4 uses
  %i.qy = phi i32 [ %i.qc, %bb.ef ], [ %i.qd, %bb.eb ] ; 2 uses
  %i.qz = load ptr, ptr %i.bi, align 8, !tbaa !448
  %i.ra = sext i32 %i.qy to i64                   ; 5 uses
  %i.rb = load ptr, ptr %.ptr.1, align 8, !tbaa !119
  store ptr %i.rb, ptr %25, align 8, !tbaa !121
  %i.rc = load i8, ptr %i.l, align 8, !tbaa !493, !range !406, !noundef !145
  %i.rd = trunc nuw i8 %i.rc to i1
  %i.re = invoke noundef i32 @_ZN4cvc58internal6theory11quantifiers9QuantInfo13addConstraintEmNS0_12NodeTemplateILb0EEEibb(ptr noundef nonnull align 8 dereferenceable(648) %i.qz, i64 noundef %i.ra, ptr noundef nonnull align 8 %25, i32 noundef %i.qx, i1 noundef zeroext %i.rd, i1 noundef zeroext false)
          to label %bb.ej unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ej:                                            ; preds = %._crit_edge381
  %i.rf = icmp ne i32 %i.re, -1
  %i.rg = icmp eq i32 %i.re, 1
  br i1 %i.rg, label %.preheader, label %bb.fj

.preheader:                                       ; preds = %bb.ej
  %i.rh = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %.not = icmp eq i32 %i.qy, -1
  br i1 %.not, label %.critedge7, label %bb.ek

bb.ek:                                            ; preds = %.preheader
  %i.rj = load ptr, ptr %i.rh, align 8, !tbaa !179 ; 4 uses
  %i.rk = load ptr, ptr %i.ri, align 8, !tbaa !179 ; 3 uses
  %i.rl = ptrtoint ptr %i.rk to i64               ; 2 uses
  %i.rm = ptrtoint ptr %i.rj to i64
  %i.rn = sub i64 %i.rl, %i.rm                    ; 3 uses
  %i.ro = ashr i64 %i.rn, 5                       ; 2 uses
  %i.rp = icmp sgt i64 %i.ro, 0
  br i1 %i.rp, label %.lr.ph.i.i.i249, label %._crit_edge.i.i.i

.lr.ph.i.i.i249:                                  ; preds = %bb.ek
  %i.rq = and i64 %i.rn, -32
  %scevgep.i.i.i = getelementptr i8, ptr %i.rj, i64 %i.rq ; 2 uses
  br label %bb.el

bb.el:                                            ; preds = %bb.ep, %.lr.ph.i.i.i249
  %.052.i.i.i = phi i64 [ %i.ro, %.lr.ph.i.i.i249 ], [ %i.sd, %bb.ep ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %i.rj, %.lr.ph.i.i.i249 ], [ %i.sc, %bb.ep ] ; 9 uses
  %i.rr = load i64, ptr %.sroa.032.051.i.i.i, align 8, !tbaa !139
  %i.rs = icmp eq i64 %i.rr, 0
  br i1 %i.rs, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.rt = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.ru = load i64, ptr %i.rt, align 8, !tbaa !139
  %i.rv = icmp eq i64 %i.ru, 0
  br i1 %i.rv, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit431, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.rw = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  %i.rx = load i64, ptr %i.rw, align 8, !tbaa !139
  %i.ry = icmp eq i64 %i.rx, 0
  br i1 %i.ry, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit429, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.rz = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 24
  %i.sa = load i64, ptr %i.rz, align 8, !tbaa !139
  %i.sb = icmp eq i64 %i.sa, 0
  br i1 %i.sb, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.sc = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 32
  %i.sd = add nsw i64 %.052.i.i.i, -1
  %i.se = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.se, label %bb.el, label %._crit_edge.loopexit.i.i.i, !llvm.loop !7

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.ep
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.rl, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.ek
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.rn, %bb.ek ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.rj, %bb.ek ] ; 5 uses
  %i.sf = ashr exact i64 %.pre-phi61.i.i.i, 3
  switch i64 %i.sf, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.thread [
    i64 3, label %bb.eq
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

bb.eq:                                            ; preds = %._crit_edge.i.i.i
  %i.sg = load i64, ptr %.sroa.032.0.lcssa.i.i.i, align 8, !tbaa !139
  %i.sh = icmp eq i64 %i.sg, 0
  br i1 %i.sh, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.si = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.er
  %.sroa.032.1.i.i.i = phi ptr [ %i.si, %bb.er ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.sj = load i64, ptr %.sroa.032.1.i.i.i, align 8, !tbaa !139
  %i.sk = icmp eq i64 %i.sj, 0
  br i1 %i.sk, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit, label %bb.es

bb.es:                                            ; preds = %._crit_edge._crit_edge.i.i.i
  %i.sl = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 8
  br label %._crit_edge._crit_edge57.i.i.i

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.es
  %.sroa.032.2.i.i.i = phi ptr [ %i.sl, %bb.es ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.sm = load i64, ptr %.sroa.032.2.i.i.i, align 8, !tbaa !139
  %i.sn = icmp eq i64 %i.sm, 0
  %spec.select.i.i.i = select i1 %i.sn, ptr %.sroa.032.2.i.i.i, ptr %i.rk
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.eo
  %i.so = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 24
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit429: ; preds = %bb.en
  %i.sp = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit431: ; preds = %bb.em
  %i.sq = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit: ; preds = %bb.el, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit429, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit431, %._crit_edge._crit_edge57.i.i.i, %._crit_edge._crit_edge.i.i.i, %bb.eq
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %spec.select.i.i.i, %._crit_edge._crit_edge57.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.eq ], [ %i.sq, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit431 ], [ %i.sp, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit429 ], [ %i.so, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.el ]
  %i.sr = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %i.rk
  br i1 %i.sr, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.thread, label %.critedge7

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.thread: ; preds = %._crit_edge.i.i.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  store i64 %i.ra, ptr %i.f, align 8, !tbaa !139
  %i.ss = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixEOm(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.et unwind label %bb.eu

bb.et:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.thread
  store i64 %i.ra, ptr %i.ss, align 8, !tbaa !139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  br label %.critedge7

bb.eu:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.thread.1, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.thread
  %i.st = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  br label %.body215

.critedge7:                                       ; preds = %.preheader, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit, %bb.et
  %.not.1 = icmp eq i32 %i.qx, -1
  br i1 %.not.1, label %.critedge7.1, label %bb.ev

bb.ev:                                            ; preds = %.critedge7
  %i.su = load ptr, ptr %i.rh, align 8, !tbaa !179 ; 4 uses
  %i.sv = load ptr, ptr %i.ri, align 8, !tbaa !179 ; 3 uses
  %i.sw = ptrtoint ptr %i.sv to i64               ; 2 uses
  %i.sx = ptrtoint ptr %i.su to i64
  %i.sy = sub i64 %i.sw, %i.sx                    ; 3 uses
  %i.sz = ashr i64 %i.sy, 5                       ; 2 uses
  %i.ta = icmp sgt i64 %i.sz, 0
  br i1 %i.ta, label %.lr.ph.i.i.i249.1, label %._crit_edge.i.i.i.1

.lr.ph.i.i.i249.1:                                ; preds = %bb.ev
  %i.tb = and i64 %i.sy, -32
  %scevgep.i.i.i.1 = getelementptr i8, ptr %i.su, i64 %i.tb ; 2 uses
  br label %bb.ew

bb.ew:                                            ; preds = %bb.fa, %.lr.ph.i.i.i249.1
  %.052.i.i.i.1 = phi i64 [ %i.sz, %.lr.ph.i.i.i249.1 ], [ %i.to, %bb.fa ] ; 2 uses
  %.sroa.032.051.i.i.i.1 = phi ptr [ %i.su, %.lr.ph.i.i.i249.1 ], [ %i.tn, %bb.fa ] ; 9 uses
  %i.tc = load i64, ptr %.sroa.032.051.i.i.i.1, align 8, !tbaa !139
  %i.td = icmp eq i64 %i.tc, 1
  br i1 %i.td, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.te = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.1, i64 8
  %i.tf = load i64, ptr %i.te, align 8, !tbaa !139
  %i.tg = icmp eq i64 %i.tf, 1
  br i1 %i.tg, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1.loopexit.split.loop.exit439, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.th = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.1, i64 16
  %i.ti = load i64, ptr %i.th, align 8, !tbaa !139
  %i.tj = icmp eq i64 %i.ti, 1
  br i1 %i.tj, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1.loopexit.split.loop.exit437, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.tk = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.1, i64 24
  %i.tl = load i64, ptr %i.tk, align 8, !tbaa !139
  %i.tm = icmp eq i64 %i.tl, 1
  br i1 %i.tm, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1.loopexit.split.loop.exit, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.tn = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.1, i64 32
  %i.to = add nsw i64 %.052.i.i.i.1, -1
  %i.tp = icmp sgt i64 %.052.i.i.i.1, 1
  br i1 %i.tp, label %bb.ew, label %._crit_edge.loopexit.i.i.i.1, !llvm.loop !7

._crit_edge.loopexit.i.i.i.1:                     ; preds = %bb.fa
  %.pre59.i.i.i.1 = ptrtoint ptr %scevgep.i.i.i.1 to i64
  %.pre60.i.i.i.1 = sub i64 %i.sw, %.pre59.i.i.i.1
  br label %._crit_edge.i.i.i.1

._crit_edge.i.i.i.1:                              ; preds = %._crit_edge.loopexit.i.i.i.1, %bb.ev
  %.pre-phi61.i.i.i.1 = phi i64 [ %.pre60.i.i.i.1, %._crit_edge.loopexit.i.i.i.1 ], [ %i.sy, %bb.ev ]
  %.sroa.032.0.lcssa.i.i.i.1 = phi ptr [ %scevgep.i.i.i.1, %._crit_edge.loopexit.i.i.i.1 ], [ %i.su, %bb.ev ] ; 5 uses
  %i.tq = ashr exact i64 %.pre-phi61.i.i.i.1, 3
  switch i64 %i.tq, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.thread.1 [
    i64 3, label %bb.fb
    i64 2, label %._crit_edge._crit_edge.i.i.i.1
    i64 1, label %._crit_edge._crit_edge57.i.i.i.1
  ]

bb.fb:                                            ; preds = %._crit_edge.i.i.i.1
  %i.tr = load i64, ptr %.sroa.032.0.lcssa.i.i.i.1, align 8, !tbaa !139
  %i.ts = icmp eq i64 %i.tr, 1
  br i1 %i.ts, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.tt = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.1, i64 8
  br label %._crit_edge._crit_edge.i.i.i.1

._crit_edge._crit_edge.i.i.i.1:                   ; preds = %bb.fc, %._crit_edge.i.i.i.1
  %.sroa.032.1.i.i.i.1 = phi ptr [ %i.tt, %bb.fc ], [ %.sroa.032.0.lcssa.i.i.i.1, %._crit_edge.i.i.i.1 ] ; 3 uses
  %i.tu = load i64, ptr %.sroa.032.1.i.i.i.1, align 8, !tbaa !139
  %i.tv = icmp eq i64 %i.tu, 1
  br i1 %i.tv, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1, label %bb.fd

bb.fd:                                            ; preds = %._crit_edge._crit_edge.i.i.i.1
  %i.tw = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.1, i64 8
  br label %._crit_edge._crit_edge57.i.i.i.1

._crit_edge._crit_edge57.i.i.i.1:                 ; preds = %bb.fd, %._crit_edge.i.i.i.1
  %.sroa.032.2.i.i.i.1 = phi ptr [ %i.tw, %bb.fd ], [ %.sroa.032.0.lcssa.i.i.i.1, %._crit_edge.i.i.i.1 ] ; 2 uses
  %i.tx = load i64, ptr %.sroa.032.2.i.i.i.1, align 8, !tbaa !139
  %i.ty = icmp eq i64 %i.tx, 1
  %spec.select.i.i.i.1 = select i1 %i.ty, ptr %.sroa.032.2.i.i.i.1, ptr %i.sv
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1.loopexit.split.loop.exit: ; preds = %bb.ez
  %i.tz = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.1, i64 24
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1.loopexit.split.loop.exit437: ; preds = %bb.ey
  %i.ua = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.1, i64 16
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1.loopexit.split.loop.exit439: ; preds = %bb.ex
  %i.ub = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.1, i64 8
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1: ; preds = %bb.ew, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1.loopexit.split.loop.exit437, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1.loopexit.split.loop.exit439, %._crit_edge._crit_edge57.i.i.i.1, %._crit_edge._crit_edge.i.i.i.1, %bb.fb
  %.sroa.08.0.in.sroa.speculated.i.i.i.1 = phi ptr [ %.sroa.032.1.i.i.i.1, %._crit_edge._crit_edge.i.i.i.1 ], [ %spec.select.i.i.i.1, %._crit_edge._crit_edge57.i.i.i.1 ], [ %.sroa.032.0.lcssa.i.i.i.1, %bb.fb ], [ %i.ub, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1.loopexit.split.loop.exit439 ], [ %i.ua, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1.loopexit.split.loop.exit437 ], [ %i.tz, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i.1, %bb.ew ]
  %i.uc = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.1, %i.sv
  br i1 %i.uc, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.thread.1, label %.critedge7.1

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.thread.1: ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1, %._crit_edge.i.i.i.1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  %i.ud = sext i32 %i.qx to i64                   ; 2 uses
  store i64 %i.ud, ptr %i.f, align 8, !tbaa !139
  %i.ue = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixEOm(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.fe unwind label %bb.eu

bb.fe:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.thread.1
  store i64 %i.ud, ptr %i.ue, align 8, !tbaa !139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  br label %.critedge7.1

.critedge7.1:                                     ; preds = %bb.fe, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.1, %.critedge7
  %i.uf = getelementptr inbounds nuw i8, ptr %0, i64 336
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24
  store i64 %i.ra, ptr %i.g, align 8, !tbaa !139
  %i.ug = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapImN4cvc58internal12NodeTemplateILb0EEESt4lessImESaISt4pairIKmS3_EEEixEOm(ptr noundef nonnull align 8 dereferenceable(48) %i.uf, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.ff unwind label %bb.fh     ; 2 uses

bb.ff:                                            ; preds = %.critedge7.1
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !121
  %i.ui = load ptr, ptr %.ptr.1, align 8, !tbaa !119 ; 2 uses
  %.not.i250 = icmp eq ptr %i.uh, %i.ui
  br i1 %.not.i250, label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit251, label %bb.fg, !prof !124

bb.fg:                                            ; preds = %bb.ff
  store ptr %i.ui, ptr %i.ug, align 8, !tbaa !121
  br label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit251

_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit251: ; preds = %bb.ff, %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  %i.uj = getelementptr inbounds nuw i8, ptr %0, i64 384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #24
  store i64 %i.ra, ptr %i.h, align 8, !tbaa !139
  %i.uk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixEOm(ptr noundef nonnull align 8 dereferenceable(48) %i.uj, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %.split336 unwind label %bb.fi

.split336:                                        ; preds = %_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit251
  %i.ul = sext i32 %i.qx to i64
  store i64 %i.ul, ptr %i.uk, align 8, !tbaa !139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #24
  br label %bb.fk

bb.fh:                                            ; preds = %.critedge7.1
  %i.um = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  br label %.body215

bb.fi:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit251
  %i.un = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #24
  br label %.body215

bb.fj:                                            ; preds = %bb.ea, %bb.ej
  %.061.in = phi i1 [ %i.qr, %bb.ea ], [ %i.rf, %bb.ej ]
  br i1 %.061.in, label %bb.fk, label %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE9push_backEOS4_.exit261

bb.fk:                                            ; preds = %.split336, %.split335, %.split, %bb.fj
  %i.uo = load ptr, ptr %i.r, align 8, !tbaa !495 ; 4 uses
  %i.up = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !503
  %.not.i.i252 = icmp eq ptr %i.uo, %i.uq
  br i1 %.not.i.i252, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  store ptr null, ptr %i.uo, align 8, !tbaa !502
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uo, i64 8
  store ptr %i.ur, ptr %i.r, align 8, !tbaa !495
  br label %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE9push_backEOS4_.exit261

bb.fm:                                            ; preds = %bb.fk
  %i.us = load ptr, ptr %i.p, align 8, !tbaa !494 ; 4 uses
  %i.ut = ptrtoint ptr %i.uo to i64
  %i.uu = ptrtoint ptr %i.us to i64               ; 2 uses
  %i.uv = sub i64 %i.ut, %i.uu                    ; 5 uses
  %i.uw = icmp eq i64 %i.uv, 9223372036854775800
  br i1 %i.uw, label %bb.fn, label %_ZNKSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i253

bb.fn:                                            ; preds = %bb.fm
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.239) #28
          to label %.noexc259 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc259:                                        ; preds = %bb.fn
  unreachable

_ZNKSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i253: ; preds = %bb.fm
  %i.ux = ashr exact i64 %i.uv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i254 = call i64 @llvm.umax.i64(i64 %i.ux, i64 1)
  %i.uy = add nsw i64 %.sroa.speculated.i.i.i.i254, %i.ux ; 2 uses
  %i.uz = icmp ult i64 %i.uy, %i.ux
  %i.va = call i64 @llvm.umin.i64(i64 %i.uy, i64 1152921504606846975)
  %i.vb = select i1 %i.uz, i64 1152921504606846975, i64 %i.va ; 3 uses
  %.not.i.i.i.i255 = icmp ne i64 %i.vb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i255)
  %i.vc = shl nuw nsw i64 %i.vb, 3
  %i.vd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vc) #26
          to label %.noexc260 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc260:                                        ; preds = %_ZNKSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i253
  %i.ve = getelementptr inbounds i8, ptr %i.vd, i64 %i.uv ; 2 uses
  store ptr null, ptr %i.ve, align 8, !tbaa !502
  %i.vf = icmp sgt i64 %i.uv, 0
  br i1 %i.vf, label %bb.fo, label %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i256

bb.fo:                                            ; preds = %.noexc260
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.vd, ptr align 8 %i.us, i64 %i.uv, i1 false)
  br label %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i256

_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i256: ; preds = %bb.fo, %.noexc260
  %i.vg = getelementptr inbounds nuw i8, ptr %i.ve, i64 8
  %.not.i17.i.i.i257 = icmp eq ptr %i.us, null
  br i1 %.not.i17.i.i.i257, label %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i258, label %bb.fp

bb.fp:                                            ; preds = %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i256
  %i.vh = load ptr, ptr %i.up, align 8, !tbaa !503
  %i.vi = ptrtoint ptr %i.vh to i64
  %i.vj = sub i64 %i.vi, %i.uu
  call void @_ZdlPvm(ptr noundef nonnull %i.us, i64 noundef %i.vj) #27
  br label %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i258

_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i258: ; preds = %bb.fp, %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i256
  store ptr %i.vd, ptr %i.p, align 8, !tbaa !494
  store ptr %i.vg, ptr %i.r, align 8, !tbaa !495
  %i.vk = getelementptr inbounds nuw [8 x i8], ptr %i.vd, i64 %i.vb
  store ptr %i.vk, ptr %i.up, align 8, !tbaa !503
  br label %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE9push_backEOS4_.exit261

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt3mapImN4cvc58internal12NodeTemplateILb0EEESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread, %bb.dk, %bb.dw, %._crit_edge381, %bb.ea, %bb.cl, %_ZNKSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i253, %bb.fn
  %lpad.loopexit.split-lp463 = landingpad { ptr, i32 }
          cleanup
  br label %.body215

_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE9push_backEOS4_.exit261: ; preds = %bb.fl, %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i258, %.split335, %.split, %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.vl = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !119 ; 3 uses
  %i.vn = load i64, ptr %i.vm, align 8            ; 3 uses
  %i.vo = and i64 %i.vn, 1152920405095219200
  %.not.i.i262 = icmp eq i64 %i.vo, 1152920405095219200
  br i1 %.not.i.i262, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit264, label %bb.fq, !prof !124

bb.fq:                                            ; preds = %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE9push_backEOS4_.exit261
  %i.vp = add i64 %i.vn, 1152920405095219200
  %i.vq = and i64 %i.vp, 1152920405095219200      ; 2 uses
  %i.vr = and i64 %i.vn, -1152920405095219201
  %i.vs = or disjoint i64 %i.vq, %i.vr
  store i64 %i.vs, ptr %i.vm, align 8
  %i.vt = icmp eq i64 %i.vq, 0
  br i1 %i.vt, label %bb.fr, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit264, !prof !124

bb.fr:                                            ; preds = %bb.fq
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.vm)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit264 unwind label %bb.fs

bb.fs:                                            ; preds = %bb.fu, %bb.fr
  %i.vu = landingpad { ptr, i32 }
          catch ptr null
  %i.vv = extractvalue { ptr, i32 } %i.vu, 0
  call void @__clang_call_terminate(ptr %i.vv) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit264: ; preds = %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE9push_backEOS4_.exit261, %bb.fq, %bb.fr
  %i.vw = load ptr, ptr %16, align 16, !tbaa !119 ; 3 uses
  %i.vx = load i64, ptr %i.vw, align 8            ; 3 uses
  %i.vy = and i64 %i.vx, 1152920405095219200
  %.not.i.i262.1 = icmp eq i64 %i.vy, 1152920405095219200
  br i1 %.not.i.i262.1, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit264.1, label %bb.ft, !prof !124

bb.ft:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit264
  %i.vz = add i64 %i.vx, 1152920405095219200
  %i.wa = and i64 %i.vz, 1152920405095219200      ; 2 uses
  %i.wb = and i64 %i.vx, -1152920405095219201
  %i.wc = or disjoint i64 %i.wa, %i.wb
  store i64 %i.wc, ptr %i.vw, align 8
  %i.wd = icmp eq i64 %i.wa, 0
  br i1 %i.wd, label %bb.fu, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit264.1, !prof !124

bb.fu:                                            ; preds = %bb.ft
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.vw)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit264.1 unwind label %bb.fs

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit264.1: ; preds = %bb.fu, %bb.ft, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit264
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %bb.ga

.body215:                                         ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.eu, %bb.df, %bb.dx, %bb.ei, %bb.fi, %bb.fh, %bb.da, %bb.cx
  %.pn91.pn = phi { ptr, i32 } [ %i.st, %bb.eu ], [ %i.un, %bb.fi ], [ %i.lz, %bb.cx ], [ %.pn83, %bb.da ], [ %i.mk, %bb.df ], [ %.pn86, %bb.ei ], [ %i.um, %bb.fh ], [ %i.qb, %bb.dx ], [ %lpad.loopexit.split-lp463, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.we = getelementptr inbounds nuw i8, ptr %16, i64 8
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.we) #24
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #24
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader348.preheader, %.body.thread, %.body215
  %.pn91.pn.pn = phi { ptr, i32 } [ %.pn91.pn, %.body215 ], [ %i.ia, %.body.thread ], [ %i.if, %.preheader348.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %common.resume

bb.fv:                                            ; preds = %bb.i
  %i.wf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.wg = load ptr, ptr %i.wf, align 8, !tbaa !490 ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.wi = load ptr, ptr %i.wh, align 8, !tbaa !490
  %i.wj = icmp eq ptr %i.wg, %i.wi
  br i1 %i.wj, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #24
  store ptr null, ptr %i.i, align 8, !tbaa !502
  call void @_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE9push_backEOS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #24
  br label %bb.ga

bb.fx:                                            ; preds = %bb.fv
  %i.wk = load i8, ptr %i.l, align 8, !tbaa !493, !range !406, !noundef !145
  %i.wl = trunc nuw i8 %i.wk to i1                ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.wn = load ptr, ptr %i.wm, align 8, !tbaa !119
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 8
  %i.wp = load i64, ptr %i.wo, align 8            ; 2 uses
  %i.wq = and i64 %i.wp, 1023
  %i.wr = icmp eq i64 %i.wq, 369
  %or.cond446 = select i1 %i.wl, i1 %i.wr, i1 false
  br i1 %or.cond446, label %bb.ga, label %._crit_edge383

._crit_edge383:                                   ; preds = %bb.fx
  %i.ws = and i64 %i.wp, 1023
  %i.wt = icmp eq i64 %i.ws, 369
  br i1 %i.wt, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %._crit_edge383
  %i.wu = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.wv = load ptr, ptr %i.wu, align 8, !tbaa !491
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 448
  %i.wx = load i32, ptr %i.ww, align 8, !tbaa !488
  %i.wy = icmp eq i32 %i.wx, 0
  br i1 %i.wy, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %._crit_edge383
  store i32 0, ptr %i.ag, align 8, !tbaa !498
  %i.wz = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.xa = load ptr, ptr %i.wz, align 8, !tbaa !182
  %i.xb = load i64, ptr %i.xa, align 8, !tbaa !139
  %i.xc = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %i.xb
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !149
  tail call void @_ZN4cvc58internal6theory11quantifiers8MatchGen5resetEb(ptr noundef nonnull align 8 dereferenceable(496) %i.xd, i1 noundef zeroext %i.wl)
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fx, %_ZNSt6vectorIPN4cvc58internal16NodeTemplateTrieILb0EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.bi, %.critedge, %bb.f, %_ZNSt3mapImN4cvc58internal12NodeTemplateILb1EEESt4lessImESaISt4pairIKmS3_EEEixEOm.exit147, %bb.ad, %bb.fw, %bb.fz, %bb.fy, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit264.1, %bb.bf, %bb.h, %bb.c
  %i.xe = getelementptr inbounds nuw i8, ptr %0, i64 441
  store i8 0, ptr %i.xe, align 1, !tbaa !506
  %i.xf = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 1, ptr %i.xf, align 2, !tbaa !489
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
  %.tr21 = phi i64 [ %1, %bb.a ], [ %i.ag, %bb.h ] ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !134
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.tr21
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !121  ; 2 uses
  %i.g = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.e, !prof !410

bb.b:                                             ; preds = %tailrecurse
  %i.i = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26
          to label %bb.d unwind label %.body      ; 4 uses

bb.d:                                             ; preds = %bb.c
  %i.k = load <2 x i64>, ptr %i.j, align 8
  %i.l = and <2 x i64> %i.k, <i64 -1152921504606846976, i64 -288230371856745472>
  %i.m = or disjoint <2 x i64> %i.l, <i64 1152920405095219200, i64 0>
  store <2 x i64> %i.m, ptr %i.j, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr null, ptr %i.n, align 8, !tbaa !413
  store ptr %i.j, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !128
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  br label %bb.e

.body:                                            ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  resume { ptr, i32 } %i.o

bb.e:                                             ; preds = %bb.d, %bb.b, %tailrecurse
  %i.p = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !128
  %i.q = icmp eq ptr %i.f, %i.p
  br i1 %i.q, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !44   ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i.i, label %.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f
  %i.s = load i64, ptr %i.f, align 8
  %i.t = and i64 %i.s, 1099511627775              ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.g ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.g ]
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !121
  %i.w = load i64, ptr %i.v, align 8
  %i.x = and i64 %i.w, 1099511627775
  %i.y = icmp samesign ult i64 %i.x, %i.t         ; 2 uses
  %.19.i.i.i = select i1 %i.y, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.y, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !137 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i, label %bb.g, !llvm.loop !1

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i: ; preds = %bb.g
  %i.z = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.z, label %.thread, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb0EEEmSt4lessIS3_ESaISt4pairIKS3_mEEE4findERS7_.exit

_ZNSt3mapIN4cvc58internal12NodeTemplateILb0EEEmSt4lessIS3_ESaISt4pairIKS3_mEEE4findERS7_.exit: ; preds = %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !121
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = and i64 %i.ac, 1099511627775
  %i.ae = icmp samesign ult i64 %i.t, %i.ad
  br i1 %i.ae, label %.thread, label %bb.h

bb.h:                                             ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb0EEEmSt4lessIS3_ESaISt4pairIKS3_mEEE4findERS7_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !456
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  %.pre10 = load ptr, ptr %2, align 8, !tbaa !121 ; 2 uses
  br i1 %.not10.i.i.i, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb0EEEmSt4lessIS3_ESaISt4pairIKS3_mEEE4findERS7_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = load i64, ptr %.pre10, align 8
  %i.e = and i64 %i.d, 1099511627775              ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !121
  %i.h = load i64, ptr %i.g, align 8
  %i.i = and i64 %i.h, 1099511627775
  %i.j = icmp samesign ult i64 %i.i, %i.e         ; 2 uses
  %.19.i.i.i = select i1 %i.j, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.j, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !137 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i, label %bb.b, !llvm.loop !1

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i: ; preds = %bb.b
  %i.k = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.k, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb0EEEmSt4lessIS3_ESaISt4pairIKS3_mEEE4findERS7_.exit.thread, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb0EEEmSt4lessIS3_ESaISt4pairIKS3_mEEE4findERS7_.exit

_ZNSt3mapIN4cvc58internal12NodeTemplateILb0EEEmSt4lessIS3_ESaISt4pairIKS3_mEEE4findERS7_.exit: ; preds = %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
end_hunk_1
