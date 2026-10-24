Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/RegexMatchCache?download=true
inline.NumInlined: 9145
inline.NumDeleted: 3320
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZNK5folly15RegexMatchCache11consistencyERNS0_24ConsistencyReportMatcherERKNS0_6KeyMapENS_11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE:bb.a
  %i.lq = icmp ult i64 %i.il, %.sroa.3.0.i.i
  br i1 %i.lq, label %bb.u, label %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit

bb.u:                                             ; preds = %_ZNK5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i, i64 %i.it
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !19810
  %i.lt = and i64 %i.ls, %i.iv
  %i.lu = icmp ne i64 %i.lt, 0
  br label %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit

_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit: ; preds = %_ZNK5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i, %bb.u
  %.0.i = phi i1 [ %i.lu, %bb.u ], [ false, %_ZNK5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i ] ; 3 uses
  %or.cond = or i1 %.sroa.01276.0, %.0.i
  br i1 %or.cond, label %bb.af, label %bb.v

bb.v:                                             ; preds = %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #40, !noalias !21506
  store ptr %i.ba, ptr %48, align 8, !tbaa !19900, !alias.scope !21507, !noalias !21506
  store i64 0, ptr %i.bb, align 8, !tbaa !19807, !alias.scope !21507, !noalias !21506
  store i8 0, ptr %i.ba, align 8, !tbaa !19816, !alias.scope !21507, !noalias !21506
  invoke void @_ZN5folly7cEscapeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvNS_5RangeIPKcEERT_(ptr %i.gu, ptr %i.iw, ptr noundef nonnull align 8 dereferenceable(32) %48)
          to label %.noexc.i895 unwind label %bb.w, !noalias !21506

bb.w:                                             ; preds = %bb.v
  %i.lv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lw = load ptr, ptr %48, align 8, !tbaa !19806, !alias.scope !21507, !noalias !21506 ; 2 uses
  %i.lx = icmp eq ptr %i.lw, %i.ba
  br i1 %i.lx, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.w
  %i.ly = load i64, ptr %i.ba, align 8, !tbaa !19816, !alias.scope !21507, !noalias !21506
  %i.lz = add i64 %i.ly, 1
  call void @_ZdlPvm(ptr noundef %i.lw, i64 noundef %i.lz) #41, !noalias !21506
  br label %common.resume

common.resume:                                    ; preds = %bb.hv, %bb.gu, %bb.gn, %bb.fo, %bb.er, %bb.ef, %bb.ct, %bb.ci, %bb.bx, %bb.bm, %bb.ah, %bb.w, %bb.e, %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i442, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i458, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit554, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit578, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit602, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit626, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit514, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit490, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit711, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit737, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit776, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit662, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit893, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit850, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit816, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1121, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i1127, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1097, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i1103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1086, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i1092, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1062, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i1068, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1038, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i1044, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1027, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i1033, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1003, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i1009, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i979, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i985, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i955, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i961, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i931, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i937, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i907, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i913, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i
  %common.resume.op = phi { ptr, i32 } [ %i.bke, %bb.gu ], [ %i.ai, %bb.e ], [ %i.lv, %bb.w ], [ %i.op, %bb.ah ], [ %i.wl, %bb.bm ], [ %i.za, %bb.bx ], [ %i.abu, %bb.ci ], [ %i.aej, %bb.ct ], [ %i.arb, %bb.ef ], [ %i.auj, %bb.er ], [ %i.bbb, %bb.fo ], [ %i.bih, %bb.gn ], [ %i.mg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i ], [ %i.lv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.pa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i913 ], [ %i.op, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i907 ], [ %i.ww, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i937 ], [ %i.wl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i931 ], [ %i.zl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i961 ], [ %i.za, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i955 ], [ %i.acf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i985 ], [ %i.abu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i979 ], [ %i.aeu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i1009 ], [ %i.aej, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1003 ], [ %i.arm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i1033 ], [ %i.arb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1027 ], [ %i.auu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i1044 ], [ %i.auj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1038 ], [ %i.bbm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i1068 ], [ %i.bbb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1062 ], [ %i.bis, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i1092 ], [ %i.bih, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1086 ], [ %i.bkp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i1103 ], [ %i.bke, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1097 ], [ %i.brd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i1127 ], [ %i.bqs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1121 ], [ %i.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i458 ], [ %.pn278.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit554 ], [ %.pn259, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit711 ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i442 ], [ %.pn244, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit816 ], [ %.pn251.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit893 ], [ %.pn246.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit850 ], [ %i.s, %bb.d ], [ %.pn270.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit490 ], [ %.pn273.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit514 ], [ %.pn287.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit626 ], [ %.pn284.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit602 ], [ %.pn281.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit578 ], [ %.pn256, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit662 ], [ %.pn265.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit776 ], [ %.pn261.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit737 ], [ %i.bqs, %bb.hv ]
  resume { ptr, i32 } %common.resume.op

.noexc.i895:                                      ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #40, !noalias !21508
  %i.ma = load ptr, ptr %48, align 8, !tbaa !19806, !noalias !21506
  %i.mb = load i64, ptr %i.bb, align 8, !tbaa !19807, !noalias !21506
  store ptr %i.ma, ptr %47, align 16, !tbaa !19816, !noalias !21506
  store i64 %i.mb, ptr %i.bc, align 8, !tbaa !19816, !noalias !21506
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %71, ptr nonnull @.str.8, i64 4, i64 13, ptr nonnull %47)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %.noexc.i895
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #40, !noalias !21508
  %i.mc = load ptr, ptr %48, align 8, !tbaa !19806, !noalias !21506 ; 2 uses
  %i.md = icmp eq ptr %i.mc, %i.ba
  br i1 %i.md, label %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.x
  %i.me = load i64, ptr %i.ba, align 8, !tbaa !19816, !noalias !21506
  %i.mf = add i64 %i.me, 1
  call void @_ZdlPvm(ptr noundef %i.mc, i64 noundef %i.mf) #41
  br label %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.y:                                             ; preds = %.noexc.i895
  %i.mg = landingpad { ptr, i32 }
          cleanup
  %i.mh = load ptr, ptr %48, align 8, !tbaa !19806, !noalias !21506 ; 2 uses
  %i.mi = icmp eq ptr %i.mh, %i.ba
  br i1 %i.mi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i: ; preds = %bb.y
  %i.mj = load i64, ptr %i.ba, align 8, !tbaa !19816, !noalias !21506
  %i.mk = add i64 %i.mj, 1
  call void @_ZdlPvm(ptr noundef %i.mh, i64 noundef %i.mk) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #40, !noalias !21506
  br label %common.resume

_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #40, !noalias !21506
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #40
  %i.ml = load ptr, ptr %.sroa.01190.01730, align 8, !tbaa !19899 ; 2 uses
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !19806 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ml, i64 8
  %i.mo = load i64, ptr %i.mn, align 8, !tbaa !19807
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #40, !noalias !21509
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mm, i64 %i.mo
  store ptr %i.bd, ptr %46, align 8, !tbaa !19900, !alias.scope !21510, !noalias !21509
  store i64 0, ptr %i.be, align 8, !tbaa !19807, !alias.scope !21510, !noalias !21509
  store i8 0, ptr %i.bd, align 8, !tbaa !19816, !alias.scope !21510, !noalias !21509
  invoke void @_ZN5folly7cEscapeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvNS_5RangeIPKcEERT_(ptr %i.mm, ptr %i.mp, ptr noundef nonnull align 8 dereferenceable(32) %46)
          to label %.noexc.i900 unwind label %bb.z, !noalias !21509

bb.z:                                             ; preds = %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.mq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mr = load ptr, ptr %46, align 8, !tbaa !19806, !alias.scope !21510, !noalias !21509 ; 2 uses
  %i.ms = icmp eq ptr %i.mr, %i.bd
  br i1 %i.ms, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i896

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i896: ; preds = %bb.z
  %i.mt = load i64, ptr %i.bd, align 8, !tbaa !19816, !alias.scope !21510, !noalias !21509
  %i.mu = add i64 %i.mt, 1
  call void @_ZdlPvm(ptr noundef %i.mr, i64 noundef %i.mu) #41, !noalias !21509
  br label %.body

.noexc.i900:                                      ; preds = %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #40, !noalias !21511
  %i.mv = load ptr, ptr %46, align 8, !tbaa !19806, !noalias !21509
  %i.mw = load i64, ptr %i.be, align 8, !tbaa !19807, !noalias !21509
  store ptr %i.mv, ptr %45, align 16, !tbaa !19816, !noalias !21509
  store i64 %i.mw, ptr %i.bf, align 8, !tbaa !19816, !noalias !21509
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %72, ptr nonnull @.str.8, i64 4, i64 13, ptr nonnull %45)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %.noexc.i900
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #40, !noalias !21511
  %i.mx = load ptr, ptr %46, align 8, !tbaa !19806, !noalias !21509 ; 2 uses
  %i.my = icmp eq ptr %i.mx, %i.bd
  br i1 %i.my, label %.noexc337, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i904

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i904: ; preds = %bb.aa
  %i.mz = load i64, ptr %i.bd, align 8, !tbaa !19816, !noalias !21509
  %i.na = add i64 %i.mz, 1
  call void @_ZdlPvm(ptr noundef %i.mx, i64 noundef %i.na) #41
  br label %.noexc337

bb.ab:                                            ; preds = %.noexc.i900
  %i.nb = landingpad { ptr, i32 }
          cleanup
  %i.nc = load ptr, ptr %46, align 8, !tbaa !19806, !noalias !21509 ; 2 uses
  %i.nd = icmp eq ptr %i.nc, %i.bd
  br i1 %i.nd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i902, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i901

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i901: ; preds = %bb.ab
  %i.ne = load i64, ptr %i.bd, align 8, !tbaa !19816, !noalias !21509
  %i.nf = add i64 %i.ne, 1
  call void @_ZdlPvm(ptr noundef %i.nc, i64 noundef %i.nf) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i902

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i902: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i901
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #40, !noalias !21509
  br label %.body

.noexc337:                                        ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i904
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #40, !noalias !21509
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #40, !noalias !21512
  %i.ng = load ptr, ptr %71, align 8, !tbaa !19806
  %i.nh = load i64, ptr %i.bg, align 8, !tbaa !19807
  store ptr %i.ng, ptr %55, align 16, !tbaa !19816
  store i64 %i.nh, ptr %i.bh, align 8, !tbaa !19816
  %i.ni = load ptr, ptr %72, align 8, !tbaa !19806
  %i.nj = load i64, ptr %i.bj, align 8, !tbaa !19807
  store ptr %i.ni, ptr %i.bi, align 16, !tbaa !19816
  store i64 %i.nj, ptr %i.bk, align 8, !tbaa !19816
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %70, ptr nonnull @.str.277, i64 32, i64 221, ptr nonnull %55)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %.noexc337
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #40, !noalias !21512
  invoke void %4(ptr noundef nonnull align 8 dereferenceable(32) %70, ptr noundef %3)
          to label %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit472 unwind label %bb.ae, !inline_history !21344

_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit472: ; preds = %bb.ac
  %i.nk = load ptr, ptr %70, align 8, !tbaa !19806 ; 2 uses
  %i.nl = icmp eq ptr %i.nk, %i.bl
  br i1 %i.nl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit475, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i473

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i473: ; preds = %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit472
  %i.nm = load i64, ptr %i.bl, align 8, !tbaa !19816
  %i.nn = add i64 %i.nm, 1
  call void @_ZdlPvm(ptr noundef %i.nk, i64 noundef %i.nn) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit475

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit475: ; preds = %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit472, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i473
  %i.no = load ptr, ptr %72, align 8, !tbaa !19806 ; 2 uses
  %i.np = icmp eq ptr %i.no, %i.bm
  br i1 %i.np, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit478, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i476

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i476: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit475
  %i.nq = load i64, ptr %i.bm, align 8, !tbaa !19816
  %i.nr = add i64 %i.nq, 1
  call void @_ZdlPvm(ptr noundef %i.no, i64 noundef %i.nr) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit478

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit478: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit475, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i476
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #40
  %i.ns = load ptr, ptr %71, align 8, !tbaa !19806 ; 2 uses
  %i.nt = icmp eq ptr %i.ns, %i.bn
  br i1 %i.nt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit481, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i479

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i479: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit478
  %i.nu = load i64, ptr %i.bn, align 8, !tbaa !19816
  %i.nv = add i64 %i.nu, 1
  call void @_ZdlPvm(ptr noundef %i.ns, i64 noundef %i.nv) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit481

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit481: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit478, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i479
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #40
  br label %bb.aq

bb.ad:                                            ; preds = %.noexc337
  %i.nw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit484

bb.ae:                                            ; preds = %bb.ac
  %i.nx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ny = load ptr, ptr %70, align 8, !tbaa !19806 ; 2 uses
  %i.nz = icmp eq ptr %i.ny, %i.bl
  br i1 %i.nz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit484, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i482

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i482: ; preds = %bb.ae
  %i.oa = load i64, ptr %i.bl, align 8, !tbaa !19816
  %i.ob = add i64 %i.oa, 1
  call void @_ZdlPvm(ptr noundef %i.ny, i64 noundef %i.ob) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit484

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit484: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i482, %bb.ad
  %.pn270 = phi { ptr, i32 } [ %i.nw, %bb.ad ], [ %i.nx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i482 ], [ %i.nx, %bb.ae ] ; 2 uses
  %i.oc = load ptr, ptr %72, align 8, !tbaa !19806 ; 2 uses
  %i.od = icmp eq ptr %i.oc, %i.bm
  br i1 %i.od, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i485

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i485: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit484
  %i.oe = load i64, ptr %i.bm, align 8, !tbaa !19816
  %i.of = add i64 %i.oe, 1
  call void @_ZdlPvm(ptr noundef %i.oc, i64 noundef %i.of) #41
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit484, %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i485, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i902, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i896
  %.pn270.pn = phi { ptr, i32 } [ %i.mq, %bb.z ], [ %.pn270, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i485 ], [ %i.nb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i902 ], [ %i.mq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i896 ], [ %.pn270, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit484 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #40
  %i.og = load ptr, ptr %71, align 8, !tbaa !19806 ; 2 uses
  %i.oh = icmp eq ptr %i.og, %i.bn
  br i1 %i.oh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit490, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i488

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i488: ; preds = %.body
  %i.oi = load i64, ptr %i.bn, align 8, !tbaa !19816
  %i.oj = add i64 %i.oi, 1
  call void @_ZdlPvm(ptr noundef %i.og, i64 noundef %i.oj) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit490

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit490: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i488
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #40
  br label %common.resume

bb.af:                                            ; preds = %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit
  %.not2 = xor i1 %.0.i, true                     ; 2 uses
  %or.cond4 = or i1 %i.ll, %.not2
  br i1 %or.cond4, label %bb.aq, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #40
  %i.ok = load ptr, ptr %.sroa.01190.01730, align 8, !tbaa !19899 ; 2 uses
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !19806 ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.ok, i64 8
  %i.on = load i64, ptr %i.om, align 8, !tbaa !19807
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #40, !noalias !21513
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ol, i64 %i.on
  store ptr %i.bo, ptr %44, align 8, !tbaa !19900, !alias.scope !21514, !noalias !21513
  store i64 0, ptr %i.bp, align 8, !tbaa !19807, !alias.scope !21514, !noalias !21513
  store i8 0, ptr %i.bo, align 8, !tbaa !19816, !alias.scope !21514, !noalias !21513
  invoke void @_ZN5folly7cEscapeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvNS_5RangeIPKcEERT_(ptr %i.ol, ptr %i.oo, ptr noundef nonnull align 8 dereferenceable(32) %44)
          to label %.noexc.i911 unwind label %bb.ah, !noalias !21513

bb.ah:                                            ; preds = %bb.ag
  %i.op = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.oq = load ptr, ptr %44, align 8, !tbaa !19806, !alias.scope !21514, !noalias !21513 ; 2 uses
  %i.or = icmp eq ptr %i.oq, %i.bo
  br i1 %i.or, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i907

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i907: ; preds = %bb.ah
  %i.os = load i64, ptr %i.bo, align 8, !tbaa !19816, !alias.scope !21514, !noalias !21513
  %i.ot = add i64 %i.os, 1
  call void @_ZdlPvm(ptr noundef %i.oq, i64 noundef %i.ot) #41, !noalias !21513
  br label %common.resume

.noexc.i911:                                      ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #40, !noalias !21515
  %i.ou = load ptr, ptr %44, align 8, !tbaa !19806, !noalias !21513
  %i.ov = load i64, ptr %i.bp, align 8, !tbaa !19807, !noalias !21513
  store ptr %i.ou, ptr %43, align 16, !tbaa !19816, !noalias !21513
  store i64 %i.ov, ptr %i.bq, align 8, !tbaa !19816, !noalias !21513
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %74, ptr nonnull @.str.8, i64 4, i64 13, ptr nonnull %43)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %.noexc.i911
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #40, !noalias !21515
  %i.ow = load ptr, ptr %44, align 8, !tbaa !19806, !noalias !21513 ; 2 uses
  %i.ox = icmp eq ptr %i.ow, %i.bo
  br i1 %i.ox, label %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit917, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i915

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i915: ; preds = %bb.ai
  %i.oy = load i64, ptr %i.bo, align 8, !tbaa !19816, !noalias !21513
  %i.oz = add i64 %i.oy, 1
  call void @_ZdlPvm(ptr noundef %i.ow, i64 noundef %i.oz) #41
  br label %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit917

bb.aj:                                            ; preds = %.noexc.i911
  %i.pa = landingpad { ptr, i32 }
          cleanup
  %i.pb = load ptr, ptr %44, align 8, !tbaa !19806, !noalias !21513 ; 2 uses
  %i.pc = icmp eq ptr %i.pb, %i.bo
  br i1 %i.pc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i913, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i912

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i912: ; preds = %bb.aj
  %i.pd = load i64, ptr %i.bo, align 8, !tbaa !19816, !noalias !21513
  %i.pe = add i64 %i.pd, 1
  call void @_ZdlPvm(ptr noundef %i.pb, i64 noundef %i.pe) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i913

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i913: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i912
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #40, !noalias !21513
  br label %common.resume

_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit917: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i915
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #40, !noalias !21513
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #40, !noalias !21516
  store ptr %i.br, ptr %42, align 8, !tbaa !19900, !alias.scope !21517, !noalias !21516
  store i64 0, ptr %i.bs, align 8, !tbaa !19807, !alias.scope !21517, !noalias !21516
  store i8 0, ptr %i.br, align 8, !tbaa !19816, !alias.scope !21517, !noalias !21516
  invoke void @_ZN5folly7cEscapeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvNS_5RangeIPKcEERT_(ptr %i.gu, ptr %i.iw, ptr noundef nonnull align 8 dereferenceable(32) %42)
          to label %.noexc.i922 unwind label %bb.ak, !noalias !21516

bb.ak:                                            ; preds = %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit917
  %i.pf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pg = load ptr, ptr %42, align 8, !tbaa !19806, !alias.scope !21517, !noalias !21516 ; 2 uses
  %i.ph = icmp eq ptr %i.pg, %i.br
  br i1 %i.ph, label %.body928, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i918

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i918: ; preds = %bb.ak
  %i.pi = load i64, ptr %i.br, align 8, !tbaa !19816, !alias.scope !21517, !noalias !21516
  %i.pj = add i64 %i.pi, 1
  call void @_ZdlPvm(ptr noundef %i.pg, i64 noundef %i.pj) #41, !noalias !21516
  br label %.body928

.noexc.i922:                                      ; preds = %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit917
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #40, !noalias !21518
  %i.pk = load ptr, ptr %42, align 8, !tbaa !19806, !noalias !21516
  %i.pl = load i64, ptr %i.bs, align 8, !tbaa !19807, !noalias !21516
  store ptr %i.pk, ptr %41, align 16, !tbaa !19816, !noalias !21516
  store i64 %i.pl, ptr %i.bt, align 8, !tbaa !19816, !noalias !21516
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %75, ptr nonnull @.str.8, i64 4, i64 13, ptr nonnull %41)
          to label %bb.al unwind label %bb.am

bb.al:                                            ; preds = %.noexc.i922
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #40, !noalias !21518
  %i.pm = load ptr, ptr %42, align 8, !tbaa !19806, !noalias !21516 ; 2 uses
  %i.pn = icmp eq ptr %i.pm, %i.br
  br i1 %i.pn, label %.noexc333, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i926

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i926: ; preds = %bb.al
  %i.po = load i64, ptr %i.br, align 8, !tbaa !19816, !noalias !21516
  %i.pp = add i64 %i.po, 1
  call void @_ZdlPvm(ptr noundef %i.pm, i64 noundef %i.pp) #41
  br label %.noexc333

bb.am:                                            ; preds = %.noexc.i922
  %i.pq = landingpad { ptr, i32 }
          cleanup
  %i.pr = load ptr, ptr %42, align 8, !tbaa !19806, !noalias !21516 ; 2 uses
  %i.ps = icmp eq ptr %i.pr, %i.br
  br i1 %i.ps, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i924, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i923

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i923: ; preds = %bb.am
  %i.pt = load i64, ptr %i.br, align 8, !tbaa !19816, !noalias !21516
  %i.pu = add i64 %i.pt, 1
  call void @_ZdlPvm(ptr noundef %i.pr, i64 noundef %i.pu) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i924

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i924: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i923
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #40, !noalias !21516
  br label %.body928

.noexc333:                                        ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i926
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #40, !noalias !21516
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #40, !noalias !21519
  %i.pv = load ptr, ptr %74, align 8, !tbaa !19806
  %i.pw = load i64, ptr %i.bu, align 8, !tbaa !19807
  store ptr %i.pv, ptr %56, align 16, !tbaa !19816
  store i64 %i.pw, ptr %i.bv, align 8, !tbaa !19816
  %i.px = load ptr, ptr %75, align 8, !tbaa !19806
  %i.py = load i64, ptr %i.bx, align 8, !tbaa !19807
  store ptr %i.px, ptr %i.bw, align 16, !tbaa !19816
  store i64 %i.py, ptr %i.by, align 8, !tbaa !19816
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %73, ptr nonnull @.str.278, i64 32, i64 221, ptr nonnull %56)
          to label %bb.an unwind label %bb.ao

bb.an:                                            ; preds = %.noexc333
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #40, !noalias !21519
  invoke void %4(ptr noundef nonnull align 8 dereferenceable(32) %73, ptr noundef %3)
          to label %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit496 unwind label %bb.ap, !inline_history !21344

_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit496: ; preds = %bb.an
  %i.pz = load ptr, ptr %73, align 8, !tbaa !19806 ; 2 uses
  %i.qa = icmp eq ptr %i.pz, %i.bz
  br i1 %i.qa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit499, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i497

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i497: ; preds = %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit496
  %i.qb = load i64, ptr %i.bz, align 8, !tbaa !19816
  %i.qc = add i64 %i.qb, 1
  call void @_ZdlPvm(ptr noundef %i.pz, i64 noundef %i.qc) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit499

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit499: ; preds = %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit496, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i497
  %i.qd = load ptr, ptr %75, align 8, !tbaa !19806 ; 2 uses
  %i.qe = icmp eq ptr %i.qd, %i.ca
  br i1 %i.qe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit502, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i500

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i500: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit499
  %i.qf = load i64, ptr %i.ca, align 8, !tbaa !19816
  %i.qg = add i64 %i.qf, 1
  call void @_ZdlPvm(ptr noundef %i.qd, i64 noundef %i.qg) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit502

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit502: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit499, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i500
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #40
  %i.qh = load ptr, ptr %74, align 8, !tbaa !19806 ; 2 uses
  %i.qi = icmp eq ptr %i.qh, %i.cb
  br i1 %i.qi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit505, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i503

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i503: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit502
  %i.qj = load i64, ptr %i.cb, align 8, !tbaa !19816
  %i.qk = add i64 %i.qj, 1
  call void @_ZdlPvm(ptr noundef %i.qh, i64 noundef %i.qk) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit505

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit505: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit502, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i503
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #40
  br label %bb.aq

bb.ao:                                            ; preds = %.noexc333
  %i.ql = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit508

bb.ap:                                            ; preds = %bb.an
  %i.qm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qn = load ptr, ptr %73, align 8, !tbaa !19806 ; 2 uses
  %i.qo = icmp eq ptr %i.qn, %i.bz
  br i1 %i.qo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit508, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i506

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i506: ; preds = %bb.ap
  %i.qp = load i64, ptr %i.bz, align 8, !tbaa !19816
  %i.qq = add i64 %i.qp, 1
  call void @_ZdlPvm(ptr noundef %i.qn, i64 noundef %i.qq) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit508

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit508: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i506, %bb.ao
  %.pn273 = phi { ptr, i32 } [ %i.ql, %bb.ao ], [ %i.qm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i506 ], [ %i.qm, %bb.ap ] ; 2 uses
  %i.qr = load ptr, ptr %75, align 8, !tbaa !19806 ; 2 uses
  %i.qs = icmp eq ptr %i.qr, %i.ca
  br i1 %i.qs, label %.body928, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i509

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i509: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit508
  %i.qt = load i64, ptr %i.ca, align 8, !tbaa !19816
  %i.qu = add i64 %i.qt, 1
  call void @_ZdlPvm(ptr noundef %i.qr, i64 noundef %i.qu) #41
  br label %.body928

.body928:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit508, %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i509, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i924, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i918
  %.pn273.pn = phi { ptr, i32 } [ %i.pf, %bb.ak ], [ %.pn273, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i509 ], [ %i.pq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i924 ], [ %i.pf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i918 ], [ %.pn273, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit508 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #40
  %i.qv = load ptr, ptr %74, align 8, !tbaa !19806 ; 2 uses
  %i.qw = icmp eq ptr %i.qv, %i.cb
  br i1 %i.qw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit514, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i512

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i512: ; preds = %.body928
  %i.qx = load i64, ptr %i.cb, align 8, !tbaa !19816
  %i.qy = add i64 %i.qx, 1
  call void @_ZdlPvm(ptr noundef %i.qv, i64 noundef %i.qy) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit514

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit514: ; preds = %.body928, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i512
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #40
  br label %common.resume

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit481, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit505, %bb.af
  %.not21321 = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit481 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit505 ], [ %.not2, %bb.af ] ; 2 uses
  %i.qz = load ptr, ptr %.sroa.01190.01730, align 8, !tbaa !19899
  %i.ra = load ptr, ptr %1, align 8, !tbaa !821
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 16
  %i.rc = load ptr, ptr %i.rb, align 8
  %i.rd = call noundef zeroext i1 %i.rc(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull byval(%"class.folly::RegexMatchCacheKey") align 8 %i.go, ptr noundef %i.qz) ; 4 uses
  %i.re = or i1 %.sroa.01276.0, %.not21321
  %i.rf = and i1 %i.re, %i.rd
  br i1 %i.rf, label %bb.ar, label %_ZN5folly7get_ptrINS_10F14FastMapIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaISt4pairIKS4_S6_EEEES4_EEDaRKT_RKT0_.exit.thread

bb.ar:                                            ; preds = %bb.aq
  %i.rg = load i64, ptr %i.cc, align 8, !tbaa !19829 ; 2 uses
  %i.rh = lshr i64 %i.rg, 8
  switch i64 %i.rh, label %bb.at [
    i64 0, label %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit525.thread
    i64 1, label %bb.as
  ]

bb.as:                                            ; preds = %bb.ar
  %i.ri = load i64, ptr %i.cd, align 8, !tbaa !19901
  %i.rj = and i64 %i.ri, -16
  %i.rk = inttoptr i64 %i.rj to ptr               ; 2 uses
  %i.rl = load ptr, ptr %.sroa.01190.01730, align 8, !tbaa !19899
  %i.rm = load ptr, ptr %i.rk, align 16, !tbaa !19899
  %i.rn = icmp eq ptr %i.rl, %i.rm
  br i1 %i.rn, label %.loopexit1433, label %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit525.thread

bb.at:                                            ; preds = %bb.ar
  %i.ro = load ptr, ptr %.sroa.01190.01730, align 8, !tbaa !19899 ; 2 uses
  %i.rp = ptrtoint ptr %i.ro to i64               ; 2 uses
  %i.rq = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.rp) ; 2 uses
  %i.rr = lshr i64 %i.rq, 24
  %i.rs = or i64 %i.rr, 128                       ; 2 uses
  %i.rt = add i64 %i.rq, %i.rp
  %i.ru = shl nuw nsw i64 %i.rs, 1
  %i.rv = or disjoint i64 %i.ru, 1
  %i.rw = trunc nuw i64 %i.rs to i8
  %i.rx = insertelement <16 x i8> poison, i8 %i.rw, i64 0
  %i.ry = shufflevector <16 x i8> %i.rx, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.rz = and i64 %i.rg, 255                      ; 2 uses
  %i.sa = shl nuw i64 1, %i.rz
  %i.sb = load ptr, ptr %i.ce, align 8, !tbaa !19860
  br label %bb.au

bb.au:                                            ; preds = %bb.ax, %bb.at
  %.023.i58.i = phi i64 [ %i.sa, %bb.at ], [ %i.sv, %bb.ax ]
  %.025.i57.i = phi i64 [ %i.rt, %bb.at ], [ %i.sw, %bb.ax ] ; 2 uses
  %i.sc = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i57.i, i64 range(i64 0, 256) %i.rz)
  %i.sd = getelementptr inbounds nuw [256 x i8], ptr %i.sb, i64 %i.sc ; 4 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 16
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sd, i64 144
  call void @llvm.prefetch.p0(ptr nonnull %i.sf, i32 0, i32 3, i32 1)
  %i.sg = load <16 x i8>, ptr %i.sd, align 16     ; 2 uses
  %i.sh = icmp eq <16 x i8> %i.sg, %i.ry
  %i.si = bitcast <16 x i1> %i.sh to i16
  %i.sj = and i16 %i.si, 16383
  %i.sk = zext nneg i16 %i.sj to i32
  %i.sl = icmp ne ptr %i.sd, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.sm = extractelement <16 x i8> %i.sg, i64 15
  br label %.critedge.i.i515

.critedge.i.i515:                                 ; preds = %bb.av, %bb.au
  %.sroa.019.0.i = phi i32 [ %i.sk, %bb.au ], [ %i.sp, %bb.av ] ; 4 uses
  %.not.i516 = icmp eq i32 %.sroa.019.0.i, 0
  br i1 %.not.i516, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.critedge.i.i515
  %i.sn = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.019.0.i, i1 true)
  %i.so = add nuw nsw i32 %.sroa.019.0.i, 16383
  %i.sp = and i32 %i.so, %.sroa.019.0.i
  %i.sq = zext nneg i32 %i.sn to i64
  call void @llvm.assume(i1 %i.sl)
  %i.sr = getelementptr inbounds nuw [16 x i8], ptr %i.se, i64 %i.sq ; 2 uses
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !19899
  %i.st = icmp eq ptr %i.ro, %i.ss
  br i1 %i.st, label %.loopexit1433, label %.critedge.i.i515, !prof !19819, !llvm.loop !788

bb.aw:                                            ; preds = %.critedge.i.i515
  %i.su = icmp eq i8 %i.sm, 0
  br i1 %i.su, label %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit525.thread, label %bb.ax, !prof !19819

bb.ax:                                            ; preds = %bb.aw
  %i.sv = add i64 %.023.i58.i, -1                 ; 2 uses
  %i.sw = add i64 %i.rv, %.025.i57.i
  %.not.i.i517 = icmp eq i64 %i.sv, 0
  br i1 %.not.i.i517, label %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit525.thread, label %bb.au, !llvm.loop !789

.loopexit1433:                                    ; preds = %bb.av, %bb.as
  %.sroa.018.148.i = phi ptr [ %i.rk, %bb.as ], [ %i.sr, %bb.av ]
  %i.sx = getelementptr inbounds nuw i8, ptr %.sroa.018.148.i, i64 8 ; 2 uses
  %i.sy = load i64, ptr %i.sx, align 8, !tbaa !19810 ; 2 uses
  %i.sz = icmp slt i64 %i.sy, 0
  br i1 %i.sz, label %bb.ay, label %_ZNK5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i518

bb.ay:                                            ; preds = %.loopexit1433
  %i.ta = shl i64 %i.sy, 1
  %i.tb = inttoptr i64 %i.ta to ptr               ; 2 uses
  %.sroa.0.0.copyload.i.i522 = load ptr, ptr %i.tb, align 8, !tbaa !19902
  %.sroa.3.0..sroa_idx.i.i523 = getelementptr inbounds nuw i8, ptr %i.tb, i64 8
  %.sroa.3.0.copyload.i.i524 = load i64, ptr %.sroa.3.0..sroa_idx.i.i523, align 8, !tbaa !19810
  br label %_ZNK5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i518

_ZNK5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i518: ; preds = %bb.ay, %.loopexit1433
  %.sroa.3.0.i.i519 = phi i64 [ %.sroa.3.0.copyload.i.i524, %bb.ay ], [ 64, %.loopexit1433 ]
  %.sroa.0.0.i.i520 = phi ptr [ %.sroa.0.0.copyload.i.i522, %bb.ay ], [ %i.sx, %.loopexit1433 ]
  %i.tc = icmp ult i64 %i.il, %.sroa.3.0.i.i519
  br i1 %i.tc, label %bb.az, label %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit525.thread

bb.az:                                            ; preds = %_ZNK5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i518
  %i.td = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i520, i64 %i.it
  %i.te = load i64, ptr %i.td, align 8, !tbaa !19810
  %i.tf = and i64 %i.te, %i.iv
  %i.tg = icmp ne i64 %i.tf, 0
  br label %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit525.thread

_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit525.thread: ; preds = %bb.ax, %bb.aw, %_ZNK5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i518, %bb.az, %bb.as, %bb.ar
  %i.th = phi i1 [ false, %bb.as ], [ false, %bb.ar ], [ false, %_ZNK5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i518 ], [ %i.tg, %bb.az ], [ false, %bb.aw ], [ false, %bb.ax ]
  %i.ti = load i64, ptr %i.cg, align 8, !tbaa !19829 ; 2 uses
  %i.tj = icmp ult i64 %i.ti, 256
  br i1 %i.tj, label %bb.bv, label %bb.ba

bb.ba:                                            ; preds = %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit525.thread
  %i.tk = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.ix) ; 2 uses
  %i.tl = lshr i64 %i.tk, 24
  %i.tm = or i64 %i.tl, 128                       ; 2 uses
  %i.tn = add i64 %i.tk, %i.ix
  %i.to = shl nuw nsw i64 %i.tm, 1
  %i.tp = or disjoint i64 %i.to, 1
  %i.tq = trunc nuw i64 %i.tm to i8
  %i.tr = insertelement <16 x i8> poison, i8 %i.tq, i64 0
  %i.ts = shufflevector <16 x i8> %i.tr, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.tt = and i64 %i.ti, 255                      ; 2 uses
  %i.tu = shl nuw i64 1, %i.tt
  %i.tv = load ptr, ptr %i.ch, align 8, !tbaa !19849
  br label %bb.bb

bb.bb:                                            ; preds = %bb.be, %bb.ba
  %.022.i52.i = phi i64 [ %i.tu, %bb.ba ], [ %i.us, %bb.be ]
  %.024.i51.i = phi i64 [ %i.tn, %bb.ba ], [ %i.ut, %bb.be ] ; 2 uses
  %i.tw = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i51.i, i64 range(i64 0, 256) %i.tt)
  %i.tx = getelementptr inbounds nuw [64 x i8], ptr %i.tv, i64 %i.tw ; 3 uses
  %i.ty = load <16 x i8>, ptr %i.tx, align 16     ; 2 uses
  %i.tz = icmp eq <16 x i8> %i.ty, %i.ts
  %i.ua = bitcast <16 x i1> %i.tz to i16
  %i.ub = and i16 %i.ua, 4095
  %i.uc = zext nneg i16 %i.ub to i32
  %i.ud = icmp ne ptr %i.tx, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.ue = getelementptr inbounds nuw i8, ptr %i.tx, i64 16
  %i.uf = extractelement <16 x i8> %i.ty, i64 15
  br label %.critedge.i.i526

.critedge.i.i526:                                 ; preds = %bb.bc, %bb.bb
  %.sroa.014.0.i = phi i32 [ %i.uc, %bb.bb ], [ %i.ui, %bb.bc ] ; 4 uses
  %.not.i527 = icmp eq i32 %.sroa.014.0.i, 0
  br i1 %.not.i527, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %.critedge.i.i526
  %i.ug = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.014.0.i, i1 true)
  %i.uh = add nuw nsw i32 %.sroa.014.0.i, 4095
  %i.ui = and i32 %i.uh, %.sroa.014.0.i
  %i.uj = zext nneg i32 %i.ug to i64
  call void @llvm.assume(i1 %i.ud)
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.ue, i64 %i.uj
  %i.ul = load ptr, ptr %i.cf, align 8, !tbaa !19850
  %i.um = load i32, ptr %i.uk, align 4, !tbaa !19922
  %i.un = zext i32 %i.um to i64
  %i.uo = getelementptr inbounds nuw [32 x i8], ptr %i.ul, i64 %i.un ; 4 uses
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !19905
  %i.uq = icmp eq ptr %i.go, %i.up
  br i1 %i.uq, label %bb.bf, label %.critedge.i.i526, !prof !19819, !llvm.loop !790

bb.bd:                                            ; preds = %.critedge.i.i526
  %i.ur = icmp eq i8 %i.uf, 0
  br i1 %i.ur, label %_ZN5folly7get_ptrINS_10F14FastMapIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaISt4pairIKS4_S6_EEEES4_EEDaRKT_RKT0_.exit.thread, label %bb.be, !prof !19819

bb.be:                                            ; preds = %bb.bd
  %i.us = add i64 %.022.i52.i, -1                 ; 2 uses
  %i.ut = add i64 %i.tp, %.024.i51.i
  %.not.i.i528 = icmp eq i64 %i.us, 0
  br i1 %.not.i.i528, label %_ZN5folly7get_ptrINS_10F14FastMapIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaISt4pairIKS4_S6_EEEES4_EEDaRKT_RKT0_.exit.thread, label %bb.bb, !llvm.loop !791

bb.bf:                                            ; preds = %bb.bc
  %i.uu = getelementptr inbounds nuw i8, ptr %i.uo, i64 8
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uo, i64 24
  %i.uw = load i64, ptr %i.uv, align 8, !tbaa !19829 ; 2 uses
  %i.ux = icmp ult i64 %i.uw, 256
  br i1 %i.ux, label %_ZN5folly7get_ptrINS_10F14FastMapIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaISt4pairIKS4_S6_EEEES4_EEDaRKT_RKT0_.exit.thread, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.uy = load ptr, ptr %.sroa.01190.01730, align 8, !tbaa !19899 ; 2 uses
  %i.uz = ptrtoint ptr %i.uy to i64               ; 2 uses
  %i.va = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.uz) ; 2 uses
  %i.vb = lshr i64 %i.va, 24
  %i.vc = or i64 %i.vb, 128                       ; 2 uses
  %i.vd = add i64 %i.va, %i.uz
  %i.ve = shl nuw nsw i64 %i.vc, 1
  %i.vf = or disjoint i64 %i.ve, 1
  %i.vg = trunc nuw i64 %i.vc to i8
  %i.vh = insertelement <16 x i8> poison, i8 %i.vg, i64 0
  %i.vi = shufflevector <16 x i8> %i.vh, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.vj = and i64 %i.uw, 255                      ; 2 uses
  %i.vk = shl nuw i64 1, %i.vj
  %i.vl = getelementptr inbounds nuw i8, ptr %i.uo, i64 16
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !19855
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bk
  %.022.i3701727 = phi i64 [ %i.vk, %bb.bg ], [ %i.wj, %bb.bk ]
  %.024.i3691726 = phi i64 [ %i.vd, %bb.bg ], [ %i.wk, %bb.bk ] ; 2 uses
  %i.vn = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i3691726, i64 range(i64 0, 256) %i.vj)
  %i.vo = getelementptr inbounds nuw [64 x i8], ptr %i.vm, i64 %i.vn ; 3 uses
  %i.vp = load <16 x i8>, ptr %i.vo, align 16     ; 2 uses
  %i.vq = icmp eq <16 x i8> %i.vp, %i.vi
  %i.vr = bitcast <16 x i1> %i.vq to i16
  %i.vs = and i16 %i.vr, 4095
  %i.vt = zext nneg i16 %i.vs to i32
  %i.vu = icmp ne ptr %i.vo, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vo, i64 16
  %i.vw = extractelement <16 x i8> %i.vp, i64 15
  br label %.critedge.i372

.critedge.i372:                                   ; preds = %bb.bi, %bb.bh
  %.sroa.01286.0 = phi i32 [ %i.vt, %bb.bh ], [ %i.vz, %bb.bi ] ; 4 uses
  %.not1423 = icmp eq i32 %.sroa.01286.0, 0
  br i1 %.not1423, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %.critedge.i372
  %i.vx = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.01286.0, i1 true)
  %i.vy = add nuw nsw i32 %.sroa.01286.0, 4095
  %i.vz = and i32 %i.vy, %.sroa.01286.0
  %i.wa = zext nneg i32 %i.vx to i64
  call void @llvm.assume(i1 %i.vu)
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %i.vv, i64 %i.wa
  %i.wc = load ptr, ptr %i.uu, align 8, !tbaa !20405
  %i.wd = load i32, ptr %i.wb, align 4, !tbaa !19922
  %i.we = zext i32 %i.wd to i64
  %i.wf = getelementptr inbounds nuw [8 x i8], ptr %i.wc, i64 %i.we
  %i.wg = load ptr, ptr %i.wf, align 8, !tbaa !19899
  %i.wh = icmp eq ptr %i.uy, %i.wg
  br i1 %i.wh, label %_ZN5folly7get_ptrINS_10F14FastMapIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaISt4pairIKS4_S6_EEEES4_EEDaRKT_RKT0_.exit.thread, label %.critedge.i372, !prof !19819, !llvm.loop !786

bb.bj:                                            ; preds = %.critedge.i372
  %i.wi = icmp eq i8 %i.vw, 0
  br i1 %i.wi, label %_ZN5folly7get_ptrINS_10F14FastMapIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaISt4pairIKS4_S6_EEEES4_EEDaRKT_RKT0_.exit.thread, label %bb.bk, !prof !19819

bb.bk:                                            ; preds = %bb.bj
  %i.wj = add i64 %.022.i3701727, -1              ; 2 uses
  %i.wk = add i64 %i.vf, %.024.i3691726
  %.not.i371 = icmp eq i64 %i.wj, 0
  br i1 %.not.i371, label %_ZN5folly7get_ptrINS_10F14FastMapIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaISt4pairIKS4_S6_EEEES4_EEDaRKT_RKT0_.exit.thread, label %bb.bh, !llvm.loop !787

_ZN5folly7get_ptrINS_10F14FastMapIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaISt4pairIKS4_S6_EEEES4_EEDaRKT_RKT0_.exit.thread: ; preds = %bb.bd, %bb.be, %bb.bj, %bb.bk, %bb.bi, %bb.bf, %bb.aq
  %or.cond12 = phi i1 [ false, %bb.bj ], [ false, %bb.aq ], [ %i.th, %bb.bi ], [ false, %bb.bf ], [ false, %bb.bk ], [ false, %bb.be ], [ false, %bb.bd ] ; 2 uses
  %or.cond7 = or i1 %.sroa.01276.0, %i.rd
  br i1 %or.cond7, label %bb.bv, label %bb.bl

bb.bl:                                            ; preds = %_ZN5folly7get_ptrINS_10F14FastMapIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaISt4pairIKS4_S6_EEEES4_EEDaRKT_RKT0_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #40, !noalias !21520
  store ptr %i.ci, ptr %40, align 8, !tbaa !19900, !alias.scope !21521, !noalias !21520
  store i64 0, ptr %i.cj, align 8, !tbaa !19807, !alias.scope !21521, !noalias !21520
  store i8 0, ptr %i.ci, align 8, !tbaa !19816, !alias.scope !21521, !noalias !21520
  invoke void @_ZN5folly7cEscapeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvNS_5RangeIPKcEERT_(ptr %i.gu, ptr %i.iw, ptr noundef nonnull align 8 dereferenceable(32) %40)
          to label %.noexc.i935 unwind label %bb.bm, !noalias !21520

bb.bm:                                            ; preds = %bb.bl
  %i.wl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wm = load ptr, ptr %40, align 8, !tbaa !19806, !alias.scope !21521, !noalias !21520 ; 2 uses
  %i.wn = icmp eq ptr %i.wm, %i.ci
  br i1 %i.wn, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i931

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i931: ; preds = %bb.bm
  %i.wo = load i64, ptr %i.ci, align 8, !tbaa !19816, !alias.scope !21521, !noalias !21520
  %i.wp = add i64 %i.wo, 1
  call void @_ZdlPvm(ptr noundef %i.wm, i64 noundef %i.wp) #41, !noalias !21520
  br label %common.resume

.noexc.i935:                                      ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #40, !noalias !21522
  %i.wq = load ptr, ptr %40, align 8, !tbaa !19806, !noalias !21520
  %i.wr = load i64, ptr %i.cj, align 8, !tbaa !19807, !noalias !21520
  store ptr %i.wq, ptr %39, align 16, !tbaa !19816, !noalias !21520
  store i64 %i.wr, ptr %i.ck, align 8, !tbaa !19816, !noalias !21520
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %77, ptr nonnull @.str.8, i64 4, i64 13, ptr nonnull %39)
          to label %bb.bn unwind label %bb.bo

bb.bn:                                            ; preds = %.noexc.i935
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #40, !noalias !21522
  %i.ws = load ptr, ptr %40, align 8, !tbaa !19806, !noalias !21520 ; 2 uses
  %i.wt = icmp eq ptr %i.ws, %i.ci
  br i1 %i.wt, label %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit941, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i939

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i939: ; preds = %bb.bn
  %i.wu = load i64, ptr %i.ci, align 8, !tbaa !19816, !noalias !21520
  %i.wv = add i64 %i.wu, 1
  call void @_ZdlPvm(ptr noundef %i.ws, i64 noundef %i.wv) #41
  br label %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit941

bb.bo:                                            ; preds = %.noexc.i935
  %i.ww = landingpad { ptr, i32 }
          cleanup
  %i.wx = load ptr, ptr %40, align 8, !tbaa !19806, !noalias !21520 ; 2 uses
  %i.wy = icmp eq ptr %i.wx, %i.ci
  br i1 %i.wy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i937, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i936

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i936: ; preds = %bb.bo
  %i.wz = load i64, ptr %i.ci, align 8, !tbaa !19816, !noalias !21520
  %i.xa = add i64 %i.wz, 1
  call void @_ZdlPvm(ptr noundef %i.wx, i64 noundef %i.xa) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i937

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i937: ; preds = %bb.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i936
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #40, !noalias !21520
  br label %common.resume

_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit941: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i939
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #40, !noalias !21520
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #40
  %i.xb = load ptr, ptr %.sroa.01190.01730, align 8, !tbaa !19899 ; 2 uses
  %i.xc = load ptr, ptr %i.xb, align 8, !tbaa !19806 ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xb, i64 8
  %i.xe = load i64, ptr %i.xd, align 8, !tbaa !19807
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #40, !noalias !21523
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xc, i64 %i.xe
  store ptr %i.cl, ptr %38, align 8, !tbaa !19900, !alias.scope !21524, !noalias !21523
  store i64 0, ptr %i.cm, align 8, !tbaa !19807, !alias.scope !21524, !noalias !21523
  store i8 0, ptr %i.cl, align 8, !tbaa !19816, !alias.scope !21524, !noalias !21523
  invoke void @_ZN5folly7cEscapeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvNS_5RangeIPKcEERT_(ptr %i.xc, ptr %i.xf, ptr noundef nonnull align 8 dereferenceable(32) %38)
          to label %.noexc.i946 unwind label %bb.bp, !noalias !21523

bb.bp:                                            ; preds = %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit941
  %i.xg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xh = load ptr, ptr %38, align 8, !tbaa !19806, !alias.scope !21524, !noalias !21523 ; 2 uses
  %i.xi = icmp eq ptr %i.xh, %i.cl
  br i1 %i.xi, label %.body952, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i942

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i942: ; preds = %bb.bp
  %i.xj = load i64, ptr %i.cl, align 8, !tbaa !19816, !alias.scope !21524, !noalias !21523
  %i.xk = add i64 %i.xj, 1
  call void @_ZdlPvm(ptr noundef %i.xh, i64 noundef %i.xk) #41, !noalias !21523
  br label %.body952

.noexc.i946:                                      ; preds = %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit941
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #40, !noalias !21525
  %i.xl = load ptr, ptr %38, align 8, !tbaa !19806, !noalias !21523
  %i.xm = load i64, ptr %i.cm, align 8, !tbaa !19807, !noalias !21523
  store ptr %i.xl, ptr %37, align 16, !tbaa !19816, !noalias !21523
  store i64 %i.xm, ptr %i.cn, align 8, !tbaa !19816, !noalias !21523
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %78, ptr nonnull @.str.8, i64 4, i64 13, ptr nonnull %37)
          to label %bb.bq unwind label %bb.br

bb.bq:                                            ; preds = %.noexc.i946
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #40, !noalias !21525
  %i.xn = load ptr, ptr %38, align 8, !tbaa !19806, !noalias !21523 ; 2 uses
  %i.xo = icmp eq ptr %i.xn, %i.cl
  br i1 %i.xo, label %.noexc329, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i950

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i950: ; preds = %bb.bq
  %i.xp = load i64, ptr %i.cl, align 8, !tbaa !19816, !noalias !21523
  %i.xq = add i64 %i.xp, 1
  call void @_ZdlPvm(ptr noundef %i.xn, i64 noundef %i.xq) #41
  br label %.noexc329

bb.br:                                            ; preds = %.noexc.i946
  %i.xr = landingpad { ptr, i32 }
          cleanup
  %i.xs = load ptr, ptr %38, align 8, !tbaa !19806, !noalias !21523 ; 2 uses
  %i.xt = icmp eq ptr %i.xs, %i.cl
  br i1 %i.xt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i948, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i947

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i947: ; preds = %bb.br
  %i.xu = load i64, ptr %i.cl, align 8, !tbaa !19816, !noalias !21523
  %i.xv = add i64 %i.xu, 1
  call void @_ZdlPvm(ptr noundef %i.xs, i64 noundef %i.xv) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i948

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i948: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i947
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #40, !noalias !21523
  br label %.body952

.noexc329:                                        ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i950
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #40, !noalias !21523
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #40, !noalias !21526
  %i.xw = load ptr, ptr %77, align 8, !tbaa !19806
  %i.xx = load i64, ptr %i.co, align 8, !tbaa !19807
  store ptr %i.xw, ptr %57, align 16, !tbaa !19816
  store i64 %i.xx, ptr %i.cp, align 8, !tbaa !19816
  %i.xy = load ptr, ptr %78, align 8, !tbaa !19806
  %i.xz = load i64, ptr %i.cr, align 8, !tbaa !19807
  store ptr %i.xy, ptr %i.cq, align 16, !tbaa !19816
  store i64 %i.xz, ptr %i.cs, align 8, !tbaa !19816
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %76, ptr nonnull @.str.277, i64 32, i64 221, ptr nonnull %57)
          to label %bb.bs unwind label %bb.bt

bb.bs:                                            ; preds = %.noexc329
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #40, !noalias !21526
  invoke void %4(ptr noundef nonnull align 8 dereferenceable(32) %76, ptr noundef %3)
          to label %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit536 unwind label %bb.bu, !inline_history !21344

_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit536: ; preds = %bb.bs
  %i.ya = load ptr, ptr %76, align 8, !tbaa !19806 ; 2 uses
  %i.yb = icmp eq ptr %i.ya, %i.ct
  br i1 %i.yb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit539, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i537

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i537: ; preds = %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit536
  %i.yc = load i64, ptr %i.ct, align 8, !tbaa !19816
  %i.yd = add i64 %i.yc, 1
  call void @_ZdlPvm(ptr noundef %i.ya, i64 noundef %i.yd) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit539

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit539: ; preds = %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit536, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i537
  %i.ye = load ptr, ptr %78, align 8, !tbaa !19806 ; 2 uses
  %i.yf = icmp eq ptr %i.ye, %i.cu
  br i1 %i.yf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit542, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i540

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i540: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit539
  %i.yg = load i64, ptr %i.cu, align 8, !tbaa !19816
  %i.yh = add i64 %i.yg, 1
  call void @_ZdlPvm(ptr noundef %i.ye, i64 noundef %i.yh) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit542

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit542: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit539, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i540
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #40
  %i.yi = load ptr, ptr %77, align 8, !tbaa !19806 ; 2 uses
  %i.yj = icmp eq ptr %i.yi, %i.cv
  br i1 %i.yj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit545, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i543

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i543: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit542
  %i.yk = load i64, ptr %i.cv, align 8, !tbaa !19816
  %i.yl = add i64 %i.yk, 1
  call void @_ZdlPvm(ptr noundef %i.yi, i64 noundef %i.yl) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit545

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit545: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit542, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i543
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #40
  br label %bb.cg

bb.bt:                                            ; preds = %.noexc329
  %i.ym = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit548

bb.bu:                                            ; preds = %bb.bs
  %i.yn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.yo = load ptr, ptr %76, align 8, !tbaa !19806 ; 2 uses
  %i.yp = icmp eq ptr %i.yo, %i.ct
  br i1 %i.yp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit548, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i546

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i546: ; preds = %bb.bu
  %i.yq = load i64, ptr %i.ct, align 8, !tbaa !19816
  %i.yr = add i64 %i.yq, 1
  call void @_ZdlPvm(ptr noundef %i.yo, i64 noundef %i.yr) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit548

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit548: ; preds = %bb.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i546, %bb.bt
  %.pn278 = phi { ptr, i32 } [ %i.ym, %bb.bt ], [ %i.yn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i546 ], [ %i.yn, %bb.bu ] ; 2 uses
  %i.ys = load ptr, ptr %78, align 8, !tbaa !19806 ; 2 uses
  %i.yt = icmp eq ptr %i.ys, %i.cu
  br i1 %i.yt, label %.body952, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i549

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i549: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit548
  %i.yu = load i64, ptr %i.cu, align 8, !tbaa !19816
  %i.yv = add i64 %i.yu, 1
  call void @_ZdlPvm(ptr noundef %i.ys, i64 noundef %i.yv) #41
  br label %.body952

.body952:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit548, %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i549, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i948, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i942
  %.pn278.pn = phi { ptr, i32 } [ %i.xg, %bb.bp ], [ %.pn278, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i549 ], [ %i.xr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i948 ], [ %i.xg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i942 ], [ %.pn278, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit548 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #40
  %i.yw = load ptr, ptr %77, align 8, !tbaa !19806 ; 2 uses
  %i.yx = icmp eq ptr %i.yw, %i.cv
  br i1 %i.yx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit554, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i552

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i552: ; preds = %.body952
  %i.yy = load i64, ptr %i.cv, align 8, !tbaa !19816
  %i.yz = add i64 %i.yy, 1
  call void @_ZdlPvm(ptr noundef %i.yw, i64 noundef %i.yz) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit554

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit554: ; preds = %.body952, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i552
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #40
  br label %common.resume

bb.bv:                                            ; preds = %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit525.thread, %_ZN5folly7get_ptrINS_10F14FastMapIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaISt4pairIKS4_S6_EEEES4_EEDaRKT_RKT0_.exit.thread
  %or.cond121428 = phi i1 [ %or.cond12, %_ZN5folly7get_ptrINS_10F14FastMapIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaISt4pairIKS4_S6_EEEES4_EEDaRKT_RKT0_.exit.thread ], [ false, %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit525.thread ] ; 2 uses
  %.not8 = xor i1 %i.rd, true                     ; 2 uses
  %or.cond10 = or i1 %i.ll, %.not8
  %brmerge = or i1 %or.cond10, %or.cond121428
  br i1 %brmerge, label %bb.cg, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #40, !noalias !21527
  store ptr %i.cw, ptr %36, align 8, !tbaa !19900, !alias.scope !21528, !noalias !21527
  store i64 0, ptr %i.cx, align 8, !tbaa !19807, !alias.scope !21528, !noalias !21527
  store i8 0, ptr %i.cw, align 8, !tbaa !19816, !alias.scope !21528, !noalias !21527
  invoke void @_ZN5folly7cEscapeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvNS_5RangeIPKcEERT_(ptr %i.gu, ptr %i.iw, ptr noundef nonnull align 8 dereferenceable(32) %36)
          to label %.noexc.i959 unwind label %bb.bx, !noalias !21527

bb.bx:                                            ; preds = %bb.bw
  %i.za = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.zb = load ptr, ptr %36, align 8, !tbaa !19806, !alias.scope !21528, !noalias !21527 ; 2 uses
  %i.zc = icmp eq ptr %i.zb, %i.cw
  br i1 %i.zc, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i955

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i955: ; preds = %bb.bx
  %i.zd = load i64, ptr %i.cw, align 8, !tbaa !19816, !alias.scope !21528, !noalias !21527
  %i.ze = add i64 %i.zd, 1
  call void @_ZdlPvm(ptr noundef %i.zb, i64 noundef %i.ze) #41, !noalias !21527
  br label %common.resume

.noexc.i959:                                      ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #40, !noalias !21529
  %i.zf = load ptr, ptr %36, align 8, !tbaa !19806, !noalias !21527
  %i.zg = load i64, ptr %i.cx, align 8, !tbaa !19807, !noalias !21527
  store ptr %i.zf, ptr %35, align 16, !tbaa !19816, !noalias !21527
  store i64 %i.zg, ptr %i.cy, align 8, !tbaa !19816, !noalias !21527
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %80, ptr nonnull @.str.8, i64 4, i64 13, ptr nonnull %35)
          to label %bb.by unwind label %bb.bz

bb.by:                                            ; preds = %.noexc.i959
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #40, !noalias !21529
  %i.zh = load ptr, ptr %36, align 8, !tbaa !19806, !noalias !21527 ; 2 uses
  %i.zi = icmp eq ptr %i.zh, %i.cw
  br i1 %i.zi, label %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit965, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i963

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i963: ; preds = %bb.by
  %i.zj = load i64, ptr %i.cw, align 8, !tbaa !19816, !noalias !21527
  %i.zk = add i64 %i.zj, 1
  call void @_ZdlPvm(ptr noundef %i.zh, i64 noundef %i.zk) #41
  br label %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit965

bb.bz:                                            ; preds = %.noexc.i959
  %i.zl = landingpad { ptr, i32 }
          cleanup
  %i.zm = load ptr, ptr %36, align 8, !tbaa !19806, !noalias !21527 ; 2 uses
  %i.zn = icmp eq ptr %i.zm, %i.cw
  br i1 %i.zn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i961, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i960

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i960: ; preds = %bb.bz
  %i.zo = load i64, ptr %i.cw, align 8, !tbaa !19816, !noalias !21527
  %i.zp = add i64 %i.zo, 1
  call void @_ZdlPvm(ptr noundef %i.zm, i64 noundef %i.zp) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i961

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i961: ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i960
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #40, !noalias !21527
  br label %common.resume

_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit965: ; preds = %bb.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i963
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #40, !noalias !21527
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #40
  %i.zq = load ptr, ptr %.sroa.01190.01730, align 8, !tbaa !19899 ; 2 uses
  %i.zr = load ptr, ptr %i.zq, align 8, !tbaa !19806 ; 2 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zq, i64 8
  %i.zt = load i64, ptr %i.zs, align 8, !tbaa !19807
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #40, !noalias !21530
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zr, i64 %i.zt
  store ptr %i.cz, ptr %34, align 8, !tbaa !19900, !alias.scope !21531, !noalias !21530
  store i64 0, ptr %i.da, align 8, !tbaa !19807, !alias.scope !21531, !noalias !21530
  store i8 0, ptr %i.cz, align 8, !tbaa !19816, !alias.scope !21531, !noalias !21530
  invoke void @_ZN5folly7cEscapeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvNS_5RangeIPKcEERT_(ptr %i.zr, ptr %i.zu, ptr noundef nonnull align 8 dereferenceable(32) %34)
          to label %.noexc.i970 unwind label %bb.ca, !noalias !21530

bb.ca:                                            ; preds = %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit965
  %i.zv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.zw = load ptr, ptr %34, align 8, !tbaa !19806, !alias.scope !21531, !noalias !21530 ; 2 uses
  %i.zx = icmp eq ptr %i.zw, %i.cz
  br i1 %i.zx, label %.body976, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i966

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i966: ; preds = %bb.ca
  %i.zy = load i64, ptr %i.cz, align 8, !tbaa !19816, !alias.scope !21531, !noalias !21530
  %i.zz = add i64 %i.zy, 1
  call void @_ZdlPvm(ptr noundef %i.zw, i64 noundef %i.zz) #41, !noalias !21530
  br label %.body976

.noexc.i970:                                      ; preds = %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit965
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #40, !noalias !21532
  %i.aaa = load ptr, ptr %34, align 8, !tbaa !19806, !noalias !21530
  %i.aab = load i64, ptr %i.da, align 8, !tbaa !19807, !noalias !21530
  store ptr %i.aaa, ptr %33, align 16, !tbaa !19816, !noalias !21530
  store i64 %i.aab, ptr %i.db, align 8, !tbaa !19816, !noalias !21530
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %81, ptr nonnull @.str.8, i64 4, i64 13, ptr nonnull %33)
          to label %bb.cb unwind label %bb.cc

bb.cb:                                            ; preds = %.noexc.i970
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #40, !noalias !21532
  %i.aac = load ptr, ptr %34, align 8, !tbaa !19806, !noalias !21530 ; 2 uses
  %i.aad = icmp eq ptr %i.aac, %i.cz
  br i1 %i.aad, label %.noexc325, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i974

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i974: ; preds = %bb.cb
  %i.aae = load i64, ptr %i.cz, align 8, !tbaa !19816, !noalias !21530
  %i.aaf = add i64 %i.aae, 1
  call void @_ZdlPvm(ptr noundef %i.aac, i64 noundef %i.aaf) #41
  br label %.noexc325

bb.cc:                                            ; preds = %.noexc.i970
  %i.aag = landingpad { ptr, i32 }
          cleanup
  %i.aah = load ptr, ptr %34, align 8, !tbaa !19806, !noalias !21530 ; 2 uses
  %i.aai = icmp eq ptr %i.aah, %i.cz
  br i1 %i.aai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i972, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i971

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i971: ; preds = %bb.cc
  %i.aaj = load i64, ptr %i.cz, align 8, !tbaa !19816, !noalias !21530
  %i.aak = add i64 %i.aaj, 1
  call void @_ZdlPvm(ptr noundef %i.aah, i64 noundef %i.aak) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i972

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i972: ; preds = %bb.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i971
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #40, !noalias !21530
  br label %.body976

.noexc325:                                        ; preds = %bb.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i974
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #40, !noalias !21530
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #40, !noalias !21533
  %i.aal = load ptr, ptr %80, align 8, !tbaa !19806
  %i.aam = load i64, ptr %i.dc, align 8, !tbaa !19807
  store ptr %i.aal, ptr %58, align 16, !tbaa !19816
  store i64 %i.aam, ptr %i.dd, align 8, !tbaa !19816
  %i.aan = load ptr, ptr %81, align 8, !tbaa !19806
  %i.aao = load i64, ptr %i.df, align 8, !tbaa !19807
  store ptr %i.aan, ptr %i.de, align 16, !tbaa !19816
  store i64 %i.aao, ptr %i.dg, align 8, !tbaa !19816
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %79, ptr nonnull @.str.279, i64 35, i64 221, ptr nonnull %58)
          to label %bb.cd unwind label %bb.ce

bb.cd:                                            ; preds = %.noexc325
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #40, !noalias !21533
  invoke void %4(ptr noundef nonnull align 8 dereferenceable(32) %79, ptr noundef %3)
          to label %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit560 unwind label %bb.cf, !inline_history !21344

_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit560: ; preds = %bb.cd
  %i.aap = load ptr, ptr %79, align 8, !tbaa !19806 ; 2 uses
  %i.aaq = icmp eq ptr %i.aap, %i.dh
  br i1 %i.aaq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit563, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i561

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i561: ; preds = %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit560
  %i.aar = load i64, ptr %i.dh, align 8, !tbaa !19816
  %i.aas = add i64 %i.aar, 1
  call void @_ZdlPvm(ptr noundef %i.aap, i64 noundef %i.aas) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit563

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit563: ; preds = %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit560, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i561
  %i.aat = load ptr, ptr %81, align 8, !tbaa !19806 ; 2 uses
  %i.aau = icmp eq ptr %i.aat, %i.di
  br i1 %i.aau, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit566, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i564

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i564: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit563
  %i.aav = load i64, ptr %i.di, align 8, !tbaa !19816
  %i.aaw = add i64 %i.aav, 1
  call void @_ZdlPvm(ptr noundef %i.aat, i64 noundef %i.aaw) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit566

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit566: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit563, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i564
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #40
  %i.aax = load ptr, ptr %80, align 8, !tbaa !19806 ; 2 uses
  %i.aay = icmp eq ptr %i.aax, %i.dj
  br i1 %i.aay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit569, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i567

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i567: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit566
  %i.aaz = load i64, ptr %i.dj, align 8, !tbaa !19816
  %i.aba = add i64 %i.aaz, 1
  call void @_ZdlPvm(ptr noundef %i.aax, i64 noundef %i.aba) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit569

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit569: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit566, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i567
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #40
  br label %bb.cr

bb.ce:                                            ; preds = %.noexc325
  %i.abb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit572

bb.cf:                                            ; preds = %bb.cd
  %i.abc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.abd = load ptr, ptr %79, align 8, !tbaa !19806 ; 2 uses
  %i.abe = icmp eq ptr %i.abd, %i.dh
  br i1 %i.abe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit572, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i570

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i570: ; preds = %bb.cf
  %i.abf = load i64, ptr %i.dh, align 8, !tbaa !19816
  %i.abg = add i64 %i.abf, 1
  call void @_ZdlPvm(ptr noundef %i.abd, i64 noundef %i.abg) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit572

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit572: ; preds = %bb.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i570, %bb.ce
  %.pn281 = phi { ptr, i32 } [ %i.abb, %bb.ce ], [ %i.abc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i570 ], [ %i.abc, %bb.cf ] ; 2 uses
  %i.abh = load ptr, ptr %81, align 8, !tbaa !19806 ; 2 uses
  %i.abi = icmp eq ptr %i.abh, %i.di
  br i1 %i.abi, label %.body976, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i573

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i573: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit572
  %i.abj = load i64, ptr %i.di, align 8, !tbaa !19816
  %i.abk = add i64 %i.abj, 1
  call void @_ZdlPvm(ptr noundef %i.abh, i64 noundef %i.abk) #41
  br label %.body976

.body976:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit572, %bb.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i573, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i972, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i966
  %.pn281.pn = phi { ptr, i32 } [ %i.zv, %bb.ca ], [ %.pn281, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i573 ], [ %i.aag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i972 ], [ %i.zv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i966 ], [ %.pn281, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit572 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #40
  %i.abl = load ptr, ptr %80, align 8, !tbaa !19806 ; 2 uses
  %i.abm = icmp eq ptr %i.abl, %i.dj
  br i1 %i.abm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit578, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i576

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i576: ; preds = %.body976
  %i.abn = load i64, ptr %i.dj, align 8, !tbaa !19816
  %i.abo = add i64 %i.abn, 1
  call void @_ZdlPvm(ptr noundef %i.abl, i64 noundef %i.abo) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit578

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit578: ; preds = %.body976, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i576
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #40
  br label %common.resume

bb.cg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit545, %bb.bv
  %or.cond121430 = phi i1 [ %or.cond12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit545 ], [ %or.cond121428, %bb.bv ] ; 2 uses
  %.not81346 = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit545 ], [ %.not8, %bb.bv ] ; 2 uses
  %or.cond15 = or i1 %.not21321, %i.rd
  br i1 %or.cond15, label %bb.cr, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #40
  %i.abp = load ptr, ptr %.sroa.01190.01730, align 8, !tbaa !19899 ; 2 uses
  %i.abq = load ptr, ptr %i.abp, align 8, !tbaa !19806 ; 2 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abp, i64 8
  %i.abs = load i64, ptr %i.abr, align 8, !tbaa !19807
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #40, !noalias !21534
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abq, i64 %i.abs
  store ptr %i.dk, ptr %32, align 8, !tbaa !19900, !alias.scope !21535, !noalias !21534
  store i64 0, ptr %i.dl, align 8, !tbaa !19807, !alias.scope !21535, !noalias !21534
  store i8 0, ptr %i.dk, align 8, !tbaa !19816, !alias.scope !21535, !noalias !21534
  invoke void @_ZN5folly7cEscapeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvNS_5RangeIPKcEERT_(ptr %i.abq, ptr %i.abt, ptr noundef nonnull align 8 dereferenceable(32) %32)
          to label %.noexc.i983 unwind label %bb.ci, !noalias !21534

bb.ci:                                            ; preds = %bb.ch
  %i.abu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.abv = load ptr, ptr %32, align 8, !tbaa !19806, !alias.scope !21535, !noalias !21534 ; 2 uses
  %i.abw = icmp eq ptr %i.abv, %i.dk
  br i1 %i.abw, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i979

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i979: ; preds = %bb.ci
  %i.abx = load i64, ptr %i.dk, align 8, !tbaa !19816, !alias.scope !21535, !noalias !21534
  %i.aby = add i64 %i.abx, 1
  call void @_ZdlPvm(ptr noundef %i.abv, i64 noundef %i.aby) #41, !noalias !21534
  br label %common.resume

.noexc.i983:                                      ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #40, !noalias !21536
  %i.abz = load ptr, ptr %32, align 8, !tbaa !19806, !noalias !21534
  %i.aca = load i64, ptr %i.dl, align 8, !tbaa !19807, !noalias !21534
  store ptr %i.abz, ptr %31, align 16, !tbaa !19816, !noalias !21534
  store i64 %i.aca, ptr %i.dm, align 8, !tbaa !19816, !noalias !21534
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %83, ptr nonnull @.str.8, i64 4, i64 13, ptr nonnull %31)
          to label %bb.cj unwind label %bb.ck

bb.cj:                                            ; preds = %.noexc.i983
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #40, !noalias !21536
  %i.acb = load ptr, ptr %32, align 8, !tbaa !19806, !noalias !21534 ; 2 uses
  %i.acc = icmp eq ptr %i.acb, %i.dk
  br i1 %i.acc, label %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit989, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i987

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i987: ; preds = %bb.cj
  %i.acd = load i64, ptr %i.dk, align 8, !tbaa !19816, !noalias !21534
  %i.ace = add i64 %i.acd, 1
  call void @_ZdlPvm(ptr noundef %i.acb, i64 noundef %i.ace) #41
  br label %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit989

bb.ck:                                            ; preds = %.noexc.i983
  %i.acf = landingpad { ptr, i32 }
          cleanup
  %i.acg = load ptr, ptr %32, align 8, !tbaa !19806, !noalias !21534 ; 2 uses
  %i.ach = icmp eq ptr %i.acg, %i.dk
  br i1 %i.ach, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i985, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i984

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i984: ; preds = %bb.ck
  %i.aci = load i64, ptr %i.dk, align 8, !tbaa !19816, !noalias !21534
  %i.acj = add i64 %i.aci, 1
  call void @_ZdlPvm(ptr noundef %i.acg, i64 noundef %i.acj) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i985

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i985: ; preds = %bb.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i984
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #40, !noalias !21534
  br label %common.resume

_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit989: ; preds = %bb.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i987
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #40, !noalias !21534
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #40, !noalias !21537
  store ptr %i.dn, ptr %30, align 8, !tbaa !19900, !alias.scope !21538, !noalias !21537
  store i64 0, ptr %i.do, align 8, !tbaa !19807, !alias.scope !21538, !noalias !21537
  store i8 0, ptr %i.dn, align 8, !tbaa !19816, !alias.scope !21538, !noalias !21537
  invoke void @_ZN5folly7cEscapeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvNS_5RangeIPKcEERT_(ptr %i.gu, ptr %i.iw, ptr noundef nonnull align 8 dereferenceable(32) %30)
          to label %.noexc.i994 unwind label %bb.cl, !noalias !21537

bb.cl:                                            ; preds = %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit989
  %i.ack = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.acl = load ptr, ptr %30, align 8, !tbaa !19806, !alias.scope !21538, !noalias !21537 ; 2 uses
  %i.acm = icmp eq ptr %i.acl, %i.dn
  br i1 %i.acm, label %.body1000, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i990

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i990: ; preds = %bb.cl
  %i.acn = load i64, ptr %i.dn, align 8, !tbaa !19816, !alias.scope !21538, !noalias !21537
  %i.aco = add i64 %i.acn, 1
  call void @_ZdlPvm(ptr noundef %i.acl, i64 noundef %i.aco) #41, !noalias !21537
  br label %.body1000

.noexc.i994:                                      ; preds = %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit989
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #40, !noalias !21539
  %i.acp = load ptr, ptr %30, align 8, !tbaa !19806, !noalias !21537
  %i.acq = load i64, ptr %i.do, align 8, !tbaa !19807, !noalias !21537
  store ptr %i.acp, ptr %29, align 16, !tbaa !19816, !noalias !21537
  store i64 %i.acq, ptr %i.dp, align 8, !tbaa !19816, !noalias !21537
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %84, ptr nonnull @.str.8, i64 4, i64 13, ptr nonnull %29)
          to label %bb.cm unwind label %bb.cn

bb.cm:                                            ; preds = %.noexc.i994
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #40, !noalias !21539
  %i.acr = load ptr, ptr %30, align 8, !tbaa !19806, !noalias !21537 ; 2 uses
  %i.acs = icmp eq ptr %i.acr, %i.dn
  br i1 %i.acs, label %.noexc321, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i998

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i998: ; preds = %bb.cm
  %i.act = load i64, ptr %i.dn, align 8, !tbaa !19816, !noalias !21537
  %i.acu = add i64 %i.act, 1
  call void @_ZdlPvm(ptr noundef %i.acr, i64 noundef %i.acu) #41
  br label %.noexc321

bb.cn:                                            ; preds = %.noexc.i994
  %i.acv = landingpad { ptr, i32 }
          cleanup
  %i.acw = load ptr, ptr %30, align 8, !tbaa !19806, !noalias !21537 ; 2 uses
  %i.acx = icmp eq ptr %i.acw, %i.dn
  br i1 %i.acx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i996, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i995

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i995: ; preds = %bb.cn
  %i.acy = load i64, ptr %i.dn, align 8, !tbaa !19816, !noalias !21537
  %i.acz = add i64 %i.acy, 1
  call void @_ZdlPvm(ptr noundef %i.acw, i64 noundef %i.acz) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i996

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i996: ; preds = %bb.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i995
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #40, !noalias !21537
  br label %.body1000

.noexc321:                                        ; preds = %bb.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i998
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #40, !noalias !21537
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #40, !noalias !21540
  %i.ada = load ptr, ptr %83, align 8, !tbaa !19806
  %i.adb = load i64, ptr %i.dq, align 8, !tbaa !19807
  store ptr %i.ada, ptr %59, align 16, !tbaa !19816
  store i64 %i.adb, ptr %i.dr, align 8, !tbaa !19816
  %i.adc = load ptr, ptr %84, align 8, !tbaa !19806
  %i.add = load i64, ptr %i.dt, align 8, !tbaa !19807
  store ptr %i.adc, ptr %i.ds, align 16, !tbaa !19816
  store i64 %i.add, ptr %i.du, align 8, !tbaa !19816
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %82, ptr nonnull @.str.278, i64 32, i64 221, ptr nonnull %59)
          to label %bb.co unwind label %bb.cp

bb.co:                                            ; preds = %.noexc321
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #40, !noalias !21540
  invoke void %4(ptr noundef nonnull align 8 dereferenceable(32) %82, ptr noundef %3)
          to label %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit584 unwind label %bb.cq, !inline_history !21344

_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit584: ; preds = %bb.co
  %i.ade = load ptr, ptr %82, align 8, !tbaa !19806 ; 2 uses
  %i.adf = icmp eq ptr %i.ade, %i.dv
  br i1 %i.adf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit587, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i585

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i585: ; preds = %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit584
  %i.adg = load i64, ptr %i.dv, align 8, !tbaa !19816
  %i.adh = add i64 %i.adg, 1
  call void @_ZdlPvm(ptr noundef %i.ade, i64 noundef %i.adh) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit587

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit587: ; preds = %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit584, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i585
  %i.adi = load ptr, ptr %84, align 8, !tbaa !19806 ; 2 uses
  %i.adj = icmp eq ptr %i.adi, %i.dw
  br i1 %i.adj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit590, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i588

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i588: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit587
  %i.adk = load i64, ptr %i.dw, align 8, !tbaa !19816
  %i.adl = add i64 %i.adk, 1
  call void @_ZdlPvm(ptr noundef %i.adi, i64 noundef %i.adl) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit590

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit590: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit587, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i588
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #40
  %i.adm = load ptr, ptr %83, align 8, !tbaa !19806 ; 2 uses
  %i.adn = icmp eq ptr %i.adm, %i.dx
  br i1 %i.adn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit593, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i591

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i591: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit590
  %i.ado = load i64, ptr %i.dx, align 8, !tbaa !19816
  %i.adp = add i64 %i.ado, 1
  call void @_ZdlPvm(ptr noundef %i.adm, i64 noundef %i.adp) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit593

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit593: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit590, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i591
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #40
  br label %bb.cr

bb.cp:                                            ; preds = %.noexc321
  %i.adq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit596

bb.cq:                                            ; preds = %bb.co
  %i.adr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ads = load ptr, ptr %82, align 8, !tbaa !19806 ; 2 uses
  %i.adt = icmp eq ptr %i.ads, %i.dv
  br i1 %i.adt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit596, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i594

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i594: ; preds = %bb.cq
  %i.adu = load i64, ptr %i.dv, align 8, !tbaa !19816
  %i.adv = add i64 %i.adu, 1
  call void @_ZdlPvm(ptr noundef %i.ads, i64 noundef %i.adv) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit596

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit596: ; preds = %bb.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i594, %bb.cp
  %.pn284 = phi { ptr, i32 } [ %i.adq, %bb.cp ], [ %i.adr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i594 ], [ %i.adr, %bb.cq ] ; 2 uses
  %i.adw = load ptr, ptr %84, align 8, !tbaa !19806 ; 2 uses
  %i.adx = icmp eq ptr %i.adw, %i.dw
  br i1 %i.adx, label %.body1000, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i597

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i597: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit596
  %i.ady = load i64, ptr %i.dw, align 8, !tbaa !19816
  %i.adz = add i64 %i.ady, 1
  call void @_ZdlPvm(ptr noundef %i.adw, i64 noundef %i.adz) #41
  br label %.body1000

.body1000:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit596, %bb.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i597, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i996, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i990
  %.pn284.pn = phi { ptr, i32 } [ %i.ack, %bb.cl ], [ %.pn284, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i597 ], [ %i.acv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i996 ], [ %i.ack, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i990 ], [ %.pn284, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit596 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #40
  %i.aea = load ptr, ptr %83, align 8, !tbaa !19806 ; 2 uses
  %i.aeb = icmp eq ptr %i.aea, %i.dx
  br i1 %i.aeb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit602, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i600

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i600: ; preds = %.body1000
  %i.aec = load i64, ptr %i.dx, align 8, !tbaa !19816
  %i.aed = add i64 %i.aec, 1
  call void @_ZdlPvm(ptr noundef %i.aea, i64 noundef %i.aed) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit602

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit602: ; preds = %.body1000, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i600
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #40
  br label %common.resume

bb.cr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit569, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit593, %bb.cg
  %or.cond121429 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit569 ], [ %or.cond121430, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit593 ], [ %or.cond121430, %bb.cg ]
  %.not813461350 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit569 ], [ %.not81346, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit593 ], [ %.not81346, %bb.cg ]
  %or.cond18 = or i1 %or.cond121429, %.not813461350
  %brmerge293 = or i1 %.0.i, %or.cond18
  br i1 %brmerge293, label %bb.dc, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #40
  %i.aee = load ptr, ptr %.sroa.01190.01730, align 8, !tbaa !19899 ; 2 uses
  %i.aef = load ptr, ptr %i.aee, align 8, !tbaa !19806 ; 2 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aee, i64 8
  %i.aeh = load i64, ptr %i.aeg, align 8, !tbaa !19807
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #40, !noalias !21541
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aef, i64 %i.aeh
  store ptr %i.dy, ptr %28, align 8, !tbaa !19900, !alias.scope !21542, !noalias !21541
  store i64 0, ptr %i.dz, align 8, !tbaa !19807, !alias.scope !21542, !noalias !21541
  store i8 0, ptr %i.dy, align 8, !tbaa !19816, !alias.scope !21542, !noalias !21541
  invoke void @_ZN5folly7cEscapeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvNS_5RangeIPKcEERT_(ptr %i.aef, ptr %i.aei, ptr noundef nonnull align 8 dereferenceable(32) %28)
          to label %.noexc.i1007 unwind label %bb.ct, !noalias !21541

bb.ct:                                            ; preds = %bb.cs
  %i.aej = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aek = load ptr, ptr %28, align 8, !tbaa !19806, !alias.scope !21542, !noalias !21541 ; 2 uses
  %i.ael = icmp eq ptr %i.aek, %i.dy
  br i1 %i.ael, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1003

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1003: ; preds = %bb.ct
  %i.aem = load i64, ptr %i.dy, align 8, !tbaa !19816, !alias.scope !21542, !noalias !21541
  %i.aen = add i64 %i.aem, 1
  call void @_ZdlPvm(ptr noundef %i.aek, i64 noundef %i.aen) #41, !noalias !21541
  br label %common.resume

.noexc.i1007:                                     ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #40, !noalias !21543
  %i.aeo = load ptr, ptr %28, align 8, !tbaa !19806, !noalias !21541
  %i.aep = load i64, ptr %i.dz, align 8, !tbaa !19807, !noalias !21541
  store ptr %i.aeo, ptr %27, align 16, !tbaa !19816, !noalias !21541
  store i64 %i.aep, ptr %i.ea, align 8, !tbaa !19816, !noalias !21541
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %86, ptr nonnull @.str.8, i64 4, i64 13, ptr nonnull %27)
          to label %bb.cu unwind label %bb.cv

bb.cu:                                            ; preds = %.noexc.i1007
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #40, !noalias !21543
  %i.aeq = load ptr, ptr %28, align 8, !tbaa !19806, !noalias !21541 ; 2 uses
  %i.aer = icmp eq ptr %i.aeq, %i.dy
  br i1 %i.aer, label %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit1013, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1011

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1011: ; preds = %bb.cu
  %i.aes = load i64, ptr %i.dy, align 8, !tbaa !19816, !noalias !21541
  %i.aet = add i64 %i.aes, 1
  call void @_ZdlPvm(ptr noundef %i.aeq, i64 noundef %i.aet) #41
  br label %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit1013

bb.cv:                                            ; preds = %.noexc.i1007
  %i.aeu = landingpad { ptr, i32 }
          cleanup
  %i.aev = load ptr, ptr %28, align 8, !tbaa !19806, !noalias !21541 ; 2 uses
  %i.aew = icmp eq ptr %i.aev, %i.dy
  br i1 %i.aew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i1009, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i1008

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i1008: ; preds = %bb.cv
  %i.aex = load i64, ptr %i.dy, align 8, !tbaa !19816, !noalias !21541
  %i.aey = add i64 %i.aex, 1
  call void @_ZdlPvm(ptr noundef %i.aev, i64 noundef %i.aey) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i1009

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i1009: ; preds = %bb.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i1008
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #40, !noalias !21541
  br label %common.resume

_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit1013: ; preds = %bb.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1011
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #40, !noalias !21541
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #40, !noalias !21544
  store ptr %i.eb, ptr %26, align 8, !tbaa !19900, !alias.scope !21545, !noalias !21544
  store i64 0, ptr %i.ec, align 8, !tbaa !19807, !alias.scope !21545, !noalias !21544
  store i8 0, ptr %i.eb, align 8, !tbaa !19816, !alias.scope !21545, !noalias !21544
  invoke void @_ZN5folly7cEscapeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvNS_5RangeIPKcEERT_(ptr %i.gu, ptr %i.iw, ptr noundef nonnull align 8 dereferenceable(32) %26)
          to label %.noexc.i1018 unwind label %bb.cw, !noalias !21544

bb.cw:                                            ; preds = %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit1013
  %i.aez = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.afa = load ptr, ptr %26, align 8, !tbaa !19806, !alias.scope !21545, !noalias !21544 ; 2 uses
  %i.afb = icmp eq ptr %i.afa, %i.eb
  br i1 %i.afb, label %.body1024, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1014

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1014: ; preds = %bb.cw
  %i.afc = load i64, ptr %i.eb, align 8, !tbaa !19816, !alias.scope !21545, !noalias !21544
  %i.afd = add i64 %i.afc, 1
  call void @_ZdlPvm(ptr noundef %i.afa, i64 noundef %i.afd) #41, !noalias !21544
  br label %.body1024

.noexc.i1018:                                     ; preds = %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit1013
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #40, !noalias !21546
  %i.afe = load ptr, ptr %26, align 8, !tbaa !19806, !noalias !21544
  %i.aff = load i64, ptr %i.ec, align 8, !tbaa !19807, !noalias !21544
  store ptr %i.afe, ptr %25, align 16, !tbaa !19816, !noalias !21544
  store i64 %i.aff, ptr %i.ed, align 8, !tbaa !19816, !noalias !21544
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %87, ptr nonnull @.str.8, i64 4, i64 13, ptr nonnull %25)
          to label %bb.cx unwind label %bb.cy

bb.cx:                                            ; preds = %.noexc.i1018
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #40, !noalias !21546
  %i.afg = load ptr, ptr %26, align 8, !tbaa !19806, !noalias !21544 ; 2 uses
  %i.afh = icmp eq ptr %i.afg, %i.eb
  br i1 %i.afh, label %.noexc317, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1022

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1022: ; preds = %bb.cx
  %i.afi = load i64, ptr %i.eb, align 8, !tbaa !19816, !noalias !21544
  %i.afj = add i64 %i.afi, 1
  call void @_ZdlPvm(ptr noundef %i.afg, i64 noundef %i.afj) #41
  br label %.noexc317

bb.cy:                                            ; preds = %.noexc.i1018
  %i.afk = landingpad { ptr, i32 }
          cleanup
  %i.afl = load ptr, ptr %26, align 8, !tbaa !19806, !noalias !21544 ; 2 uses
  %i.afm = icmp eq ptr %i.afl, %i.eb
  br i1 %i.afm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i1020, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i1019

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i1019: ; preds = %bb.cy
  %i.afn = load i64, ptr %i.eb, align 8, !tbaa !19816, !noalias !21544
  %i.afo = add i64 %i.afn, 1
  call void @_ZdlPvm(ptr noundef %i.afl, i64 noundef %i.afo) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i1020

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i1020: ; preds = %bb.cy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i1019
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #40, !noalias !21544
  br label %.body1024

.noexc317:                                        ; preds = %bb.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1022
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #40, !noalias !21544
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #40, !noalias !21547
  %i.afp = load ptr, ptr %86, align 8, !tbaa !19806
  %i.afq = load i64, ptr %i.ee, align 8, !tbaa !19807
  store ptr %i.afp, ptr %60, align 16, !tbaa !19816
  store i64 %i.afq, ptr %i.ef, align 8, !tbaa !19816
  %i.afr = load ptr, ptr %87, align 8, !tbaa !19806
  %i.afs = load i64, ptr %i.eh, align 8, !tbaa !19807
  store ptr %i.afr, ptr %i.eg, align 16, !tbaa !19816
  store i64 %i.afs, ptr %i.ei, align 8, !tbaa !19816
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %85, ptr nonnull @.str.280, i64 35, i64 221, ptr nonnull %60)
          to label %bb.cz unwind label %bb.da

bb.cz:                                            ; preds = %.noexc317
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #40, !noalias !21547
  invoke void %4(ptr noundef nonnull align 8 dereferenceable(32) %85, ptr noundef %3)
          to label %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit608 unwind label %bb.db, !inline_history !21344

_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit608: ; preds = %bb.cz
  %i.aft = load ptr, ptr %85, align 8, !tbaa !19806 ; 2 uses
  %i.afu = icmp eq ptr %i.aft, %i.ej
  br i1 %i.afu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit611, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i609

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i609: ; preds = %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit608
  %i.afv = load i64, ptr %i.ej, align 8, !tbaa !19816
  %i.afw = add i64 %i.afv, 1
  call void @_ZdlPvm(ptr noundef %i.aft, i64 noundef %i.afw) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit611

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit611: ; preds = %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit608, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i609
  %i.afx = load ptr, ptr %87, align 8, !tbaa !19806 ; 2 uses
  %i.afy = icmp eq ptr %i.afx, %i.ek
  br i1 %i.afy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit614, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i612

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i612: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit611
  %i.afz = load i64, ptr %i.ek, align 8, !tbaa !19816
  %i.aga = add i64 %i.afz, 1
  call void @_ZdlPvm(ptr noundef %i.afx, i64 noundef %i.aga) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit614

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit614: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit611, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i612
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #40
  %i.agb = load ptr, ptr %86, align 8, !tbaa !19806 ; 2 uses
  %i.agc = icmp eq ptr %i.agb, %i.el
  br i1 %i.agc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit617, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i615

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i615: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit614
  %i.agd = load i64, ptr %i.el, align 8, !tbaa !19816
  %i.age = add i64 %i.agd, 1
  call void @_ZdlPvm(ptr noundef %i.agb, i64 noundef %i.age) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit617

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit617: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit614, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i615
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #40
  br label %bb.dc

bb.da:                                            ; preds = %.noexc317
  %i.agf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit620

bb.db:                                            ; preds = %bb.cz
  %i.agg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.agh = load ptr, ptr %85, align 8, !tbaa !19806 ; 2 uses
  %i.agi = icmp eq ptr %i.agh, %i.ej
  br i1 %i.agi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit620, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i618

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i618: ; preds = %bb.db
  %i.agj = load i64, ptr %i.ej, align 8, !tbaa !19816
  %i.agk = add i64 %i.agj, 1
end_hunk_0
