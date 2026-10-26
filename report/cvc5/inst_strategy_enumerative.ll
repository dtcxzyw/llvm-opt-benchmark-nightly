Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/inst_strategy_enumerative?download=true
inline.NumInlined: 339
inline.NumDeleted: 189
begin_hunk_0
$_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESH_IJEEEEEvPSt13_Rb_tree_nodeIS6_EDpOT_ = comdat any

$_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null = comdat any

$_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null = comdat any

$_ZSt19piecewise_construct = comdat any

@_ZTVN4cvc58internal6theory11quantifiers16InstStrategyEnumE = hidden constant { [17 x ptr] } { [17 x ptr] [ptr null, ptr @_ZTIN4cvc58internal6theory11quantifiers16InstStrategyEnumE, ptr @_ZN4cvc58internal6EnvObjD2Ev, ptr @_ZN4cvc58internal6theory11quantifiers16InstStrategyEnumD0Ev, ptr @_ZN4cvc58internal6theory11quantifiers16InstStrategyEnum8presolveEv, ptr @_ZN4cvc58internal6theory11quantifiers16InstStrategyEnum10needsCheckENS1_6Theory6EffortE, ptr @_ZN4cvc58internal6theory11quantifiers17QuantifiersModule10needsModelENS1_6Theory6EffortE, ptr @_ZN4cvc58internal6theory11quantifiers16InstStrategyEnum11reset_roundENS1_6Theory6EffortE, ptr @_ZN4cvc58internal6theory11quantifiers16InstStrategyEnum5checkENS1_6Theory6EffortENS2_17QuantifiersModule7QEffortE, ptr @_ZN4cvc58internal6theory11quantifiers17QuantifiersModule13checkCompleteERNS1_12IncompleteIdE, ptr @_ZN4cvc58internal6theory11quantifiers17QuantifiersModule16checkCompleteForENS0_12NodeTemplateILb1EEE, ptr @_ZN4cvc58internal6theory11quantifiers17QuantifiersModule14checkOwnershipENS0_12NodeTemplateILb1EEE, ptr @_ZN4cvc58internal6theory11quantifiers17QuantifiersModule18registerQuantifierENS0_12NodeTemplateILb1EEE, ptr @_ZN4cvc58internal6theory11quantifiers17QuantifiersModule21preRegisterQuantifierENS0_12NodeTemplateILb1EEE, ptr @_ZN4cvc58internal6theory11quantifiers17QuantifiersModule10assertNodeENS0_12NodeTemplateILb1EEE, ptr @_ZN4cvc58internal6theory11quantifiers17QuantifiersModule18ppNotifyAssertionsERKSt6vectorINS0_12NodeTemplateILb1EEESaIS6_EE, ptr @_ZNK4cvc58internal6theory11quantifiers16InstStrategyEnum8identifyB5cxx11Ev] }, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"enum-inst\00", align 1
@_ZTIN4cvc58internal6theory11quantifiers16InstStrategyEnumE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4cvc58internal6theory11quantifiers16InstStrategyEnumE, ptr @_ZTIN4cvc58internal6theory11quantifiers17QuantifiersModuleE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4cvc58internal6theory11quantifiers16InstStrategyEnumE = hidden constant [55 x i8] c"N4cvc58internal6theory11quantifiers16InstStrategyEnumE\00", align 1
@_ZTIN4cvc58internal6theory11quantifiers17QuantifiersModuleE = external constant ptr
@_ZN4cvc58internal12NodeTemplateILb1EE6s_nullE = linkonce_odr hidden global %"class.cvc5::internal::NodeTemplate" zeroinitializer, comdat, align 8
@_ZGVN4cvc58internal12NodeTemplateILb1EE6s_nullE = linkonce_odr hidden local_unnamed_addr global i64 0, comdat($_ZN4cvc58internal12NodeTemplateILb1EE6s_nullE), align 8
@__dso_handle = external hidden global i8
@_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null = linkonce_odr local_unnamed_addr global ptr null, comdat, align 8
@_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null = linkonce_odr global i64 0, comdat, align 8
@_ZSt19piecewise_construct = linkonce_odr constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN4cvc58internal12NodeTemplateILb1EE6s_nullE }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN4cvc58internal12NodeTemplateILb1EE6s_nullE], section "llvm.metadata"

@_ZN4cvc58internal6theory11quantifiers16InstStrategyEnumC1ERNS0_3EnvERNS2_16QuantifiersStateERNS2_27QuantifiersInferenceManagerERNS2_19QuantifiersRegistryERNS2_12TermRegistryEPNS2_14RelevantDomainE = hidden unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr, ptr), ptr @_ZN4cvc58internal6theory11quantifiers16InstStrategyEnumC2ERNS0_3EnvERNS2_16QuantifiersStateERNS2_27QuantifiersInferenceManagerERNS2_19QuantifiersRegistryERNS2_12TermRegistryEPNS2_14RelevantDomainE

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory11quantifiers16InstStrategyEnumC2ERNS0_3EnvERNS2_16QuantifiersStateERNS2_27QuantifiersInferenceManagerERNS2_19QuantifiersRegistryERNS2_12TermRegistryEPNS2_14RelevantDomainE(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(696) %1, ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull align 8 dereferenceable(384) %3, ptr noundef nonnull align 8 dereferenceable(568) %4, ptr noundef nonnull align 8 dereferenceable(96) %5, ptr noundef %6) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4cvc58internal6theory11quantifiers17QuantifiersModuleC2ERNS0_3EnvERNS2_16QuantifiersStateERNS2_27QuantifiersInferenceManagerERNS2_19QuantifiersRegistryERNS2_12TermRegistryE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(696) %1, ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull align 8 dereferenceable(384) %3, ptr noundef nonnull align 8 dereferenceable(568) %4, ptr noundef nonnull align 8 dereferenceable(96) %5)
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN4cvc58internal6theory11quantifiers16InstStrategyEnumE, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %6, ptr %i.a, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 -1, ptr %i.b, align 8, !tbaa !22
  ret void
}

declare void @_ZN4cvc58internal6theory11quantifiers17QuantifiersModuleC2ERNS0_3EnvERNS2_16QuantifiersStateERNS2_27QuantifiersInferenceManagerERNS2_19QuantifiersRegistryERNS2_12TermRegistryE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(696), ptr noundef nonnull align 8 dereferenceable(376), ptr noundef nonnull align 8 dereferenceable(384), ptr noundef nonnull align 8 dereferenceable(568), ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory11quantifiers16InstStrategyEnum8presolveEv(ptr noundef nonnull align 8 dereferenceable(60) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(408) ptr @_ZNK4cvc58internal6EnvObj7optionsEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !206, !nonnull !207, !align !208
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !282
  %i.f = trunc i64 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.f, ptr %i.g, align 8, !tbaa !22
  ret void
}

declare noundef nonnull align 8 dereferenceable(408) ptr @_ZNK4cvc58internal6EnvObj7optionsEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4cvc58internal6theory11quantifiers16InstStrategyEnum10needsCheckENS1_6Theory6EffortE(ptr noundef nonnull align 8 dereferenceable(60) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !22
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(408) ptr @_ZNK4cvc58internal6EnvObj7optionsEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 344
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !206, !nonnull !207, !align !208
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 393
  %i.h = load i8, ptr %i.g, align 1, !tbaa !249, !range !250, !noundef !207
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !251, !nonnull !207, !align !208
  %i.l = tail call noundef zeroext i1 @_ZNK4cvc58internal6theory11quantifiers16QuantifiersState21getInstWhenNeedsCheckENS1_6Theory6EffortE(ptr noundef nonnull align 8 dereferenceable(376) %i.k, i32 noundef %1)
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = tail call noundef nonnull align 8 dereferenceable(408) ptr @_ZNK4cvc58internal6EnvObj7optionsEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 344
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !206, !nonnull !207, !align !208
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 391
  %i.q = load i8, ptr %i.p, align 1, !tbaa !252, !range !250, !noundef !207
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = icmp sgt i32 %1, 199
  %or.cond = and i1 %i.s, %i.r
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.a
  %.0 = phi i1 [ true, %bb.c ], [ false, %bb.a ], [ %or.cond, %bb.d ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZNK4cvc58internal6theory11quantifiers16QuantifiersState21getInstWhenNeedsCheckENS1_6Theory6EffortE(ptr noundef nonnull align 8 dereferenceable(376), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN4cvc58internal6theory11quantifiers16InstStrategyEnum11reset_roundENS1_6Theory6EffortE(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1) unnamed_addr #2 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory11quantifiers16InstStrategyEnum5checkENS1_6Theory6EffortENS2_17QuantifiersModule7QEffortE(ptr noundef nonnull align 8 dereferenceable(60) %0, i32 %1, i32 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::tuple.532", align 8    ; 4 uses
  %4 = alloca %"class.std::tuple.535", align 1    ; 3 uses
  %5 = alloca %"class.std::map", align 8          ; 11 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 12 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %8 = alloca %"class.cvc5::internal::NodeTemplate.466", align 8 ; 2 uses
  %9 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !22
  %.not52 = icmp eq i32 %i.b, 0
  br i1 %.not52, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(408) ptr @_ZNK4cvc58internal6EnvObj7optionsEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 344
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !206, !nonnull !207, !align !208
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 393
  %i.g = load i8, ptr %i.f, align 1, !tbaa !249, !range !250, !noundef !207
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = icmp eq i32 %2, 1
  %or.cond64 = and i1 %i.i, %i.h
  br i1 %or.cond64, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !253, !nonnull !207, !align !208
  %i.l = tail call noundef zeroext i1 @_ZNK4cvc58internal6theory24InferenceManagerBuffered15hasPendingLemmaEv(ptr noundef nonnull align 8 dereferenceable(337) %i.k)
  %i.m = zext i1 %i.l to i8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.049 = phi i8 [ 0, %bb.b ], [ %i.m, %bb.c ]    ; 2 uses
  %i.n = tail call noundef nonnull align 8 dereferenceable(408) ptr @_ZNK4cvc58internal6EnvObj7optionsEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 344
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !206, !nonnull !207, !align !208
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 391
  %i.r = load i8, ptr %i.q, align 1, !tbaa !252, !range !250, !noundef !207
  %i.s = trunc nuw i8 %i.r to i1
  %.not = xor i1 %i.s, true
  %i.t = trunc nuw i8 %.049 to i1
  %or.cond = or i1 %i.t, %.not                    ; 3 uses
  br i1 %or.cond, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !251, !nonnull !207, !align !208
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal6theory11TheoryState12getValuationEv(ptr noundef nonnull align 8 dereferenceable(160) %i.v)
  %i.x = tail call noundef zeroext i1 @_ZNK4cvc58internal6theory9Valuation9needCheckEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
  br i1 %i.x, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = icmp eq i32 %2, 3
  %i.z = zext i1 %i.y to i8
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f
  %.150 = phi i8 [ %.049, %bb.d ], [ %i.z, %bb.f ]
  %.048 = xor i1 %or.cond, true
  %i.aa = trunc nuw i8 %.150 to i1
  br i1 %i.aa, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4cvc58internal6theory11quantifiers17QuantifiersModule14beginCallDebugEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %i.ab = tail call noundef nonnull align 8 dereferenceable(408) ptr @_ZNK4cvc58internal6EnvObj7optionsEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 344
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !206, !nonnull !207, !align !208
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 396
  %i.af = load i8, ptr %i.ae, align 4, !tbaa !286, !range !250, !noundef !207
  %i.ag = xor i8 %i.af, 1
  %not. = zext nneg i8 %i.ag to i32               ; 4 uses
  %i.ah = select i1 %or.cond, i32 %not., i32 1    ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !254, !nonnull !207, !align !208
  %i.ak = tail call noundef ptr @_ZNK4cvc58internal6theory11quantifiers12TermRegistry8getModelEv(ptr noundef nonnull align 8 dereferenceable(96) %i.aj) ; 3 uses
  %i.al = tail call noundef i64 @_ZNK4cvc58internal6theory11quantifiers15FirstOrderModel25getNumAssertedQuantifiersEv(ptr noundef nonnull align 8 dereferenceable(664) %i.ak)
  %i.am = trunc i64 %i.al to i32                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 8 uses
  store i32 0, ptr %i.an, align 8, !tbaa !287
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr null, ptr %i.ao, align 8, !tbaa !259
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !260
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.an, ptr %i.aq, align 8, !tbaa !288
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.ar, align 8, !tbaa !261
  %.not53137 = icmp samesign ult i32 %i.ah, %not.
  br i1 %.not53137, label %._crit_edge142, label %.lr.ph141

.lr.ph141:                                        ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.not165 = icmp eq i32 %i.am, 0
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br i1 %.not165, label %.lr.ph141.split.preheader, label %.lr.ph141.split.us

.lr.ph141.split.preheader:                        ; preds = %.lr.ph141
  %exitcond172.not.old = icmp eq i32 %i.ah, 0
  br label %.lr.ph141.split

.lr.ph141.split.us:                               ; preds = %.lr.ph141, %bb.at
  %.040139.us = phi i32 [ %i.fd, %bb.at ], [ %not., %.lr.ph141 ] ; 3 uses
  %.041138.us = phi i32 [ %.6.us, %bb.at ], [ 0, %.lr.ph141 ] ; 2 uses
  %i.av = load ptr, ptr %i.as, align 8, !tbaa !21 ; 2 uses
  %i.aw = icmp ne ptr %i.av, null
  %i.ax = icmp ne i32 %.040139.us, 0              ; 3 uses
  %or.cond3.us = or i1 %i.ax, %i.aw
  br i1 %or.cond3.us, label %bb.i, label %bb.at

bb.i:                                             ; preds = %.lr.ph141.split.us
  %.not173 = xor i1 %i.ax, true
  br i1 %i.ax, label %.lr.ph.us.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN4cvc58internal6theory11quantifiers14RelevantDomain7computeEv(ptr noundef nonnull align 8 dereferenceable(144) %i.av)
          to label %.lr.ph.us.preheader unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph.us.preheader:                              ; preds = %bb.j, %bb.i
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit81.us
  %.032135.us = phi i32 [ %i.eq, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit81.us ], [ 0, %.lr.ph.us.preheader ] ; 2 uses
  %.142134.us = phi i32 [ %.445.us, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit81.us ], [ %.041138.us, %.lr.ph.us.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  invoke void @_ZN4cvc58internal6theory11quantifiers15FirstOrderModel21getAssertedQuantifierEjb(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %6, ptr noundef nonnull align 8 dereferenceable(664) %i.ak, i32 noundef %.032135.us, i1 noundef zeroext true)
          to label %bb.k unwind label %.split.us

bb.k:                                             ; preds = %.lr.ph.us
  %i.ay = load ptr, ptr %i.at, align 8, !tbaa !289, !nonnull !207, !align !208
  %i.az = load ptr, ptr %6, align 8, !tbaa !264   ; 5 uses
  store ptr %i.az, ptr %7, align 8, !tbaa !264
  %i.ba = load i64, ptr %i.az, align 8            ; 3 uses
  %i.bb = lshr i64 %i.ba, 40
  %i.bc = trunc nuw nsw i64 %i.bb to i32
  %i.bd = and i32 %i.bc, 1048575                  ; 3 uses
  %i.be = icmp samesign ult i32 %i.bd, 1048574
  br i1 %i.be, label %bb.n, label %bb.l, !prof !265

bb.l:                                             ; preds = %bb.k
  %i.bf = icmp eq i32 %i.bd, 1048574
  br i1 %i.bf, label %bb.m, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.us, !prof !266

bb.m:                                             ; preds = %bb.l
  %i.bg = or i64 %i.ba, 1152920405095219200
  store i64 %i.bg, ptr %i.az, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.us unwind label %.split147.us

bb.n:                                             ; preds = %bb.k
  %i.bh = add nuw nsw i32 %i.bd, 1
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = shl nuw nsw i64 %i.bi, 40
  %i.bk = and i64 %i.ba, -1152920405095219201
  %i.bl = or i64 %i.bj, %i.bk
  store i64 %i.bl, ptr %i.az, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.us

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.us: ; preds = %bb.n, %bb.m, %bb.l
  %i.bm = invoke noundef zeroext i1 @_ZNK4cvc58internal6theory11quantifiers19QuantifiersRegistry12hasOwnershipENS0_12NodeTemplateILb1EEEPNS2_17QuantifiersModuleE(ptr noundef nonnull align 8 dereferenceable(568) %i.ay, ptr noundef nonnull align 8 %7, ptr noundef nonnull %0)
          to label %bb.o unwind label %.split150.us

bb.o:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.us
  br i1 %i.bm, label %bb.p, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE4findERS7_.exit.us

bb.p:                                             ; preds = %bb.o
  %i.bn = load ptr, ptr %6, align 8, !tbaa !264
  store ptr %i.bn, ptr %8, align 8, !tbaa !291
  %i.bo = invoke noundef zeroext i1 @_ZNK4cvc58internal6theory11quantifiers15FirstOrderModel18isQuantifierActiveENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(664) %i.ak, ptr noundef nonnull align 8 %8)
          to label %bb.q unwind label %.split150.us

bb.q:                                             ; preds = %bb.p
  br i1 %i.bo, label %bb.r, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE4findERS7_.exit.us

bb.r:                                             ; preds = %bb.q
  %i.bp = load ptr, ptr %i.ao, align 8, !tbaa !259 ; 2 uses
  %.not10.i.i.i.us = icmp eq ptr %i.bp, null
  br i1 %.not10.i.i.i.us, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE4findERS7_.exit.us, label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %bb.r
  %i.bq = load ptr, ptr %6, align 8, !tbaa !264
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = and i64 %i.br, 1099511627775            ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph.i.i.i.us
  %.012.i.i.i.us = phi ptr [ %i.bp, %.lr.ph.i.i.i.us ], [ %.1.i.i.i.us, %bb.s ] ; 4 uses
  %.0811.i.i.i.us = phi ptr [ %i.an, %.lr.ph.i.i.i.us ], [ %.19.i.i.i.us, %bb.s ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.us, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !264
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = and i64 %i.bv, 1099511627775
  %i.bx = icmp samesign ult i64 %i.bw, %i.bs      ; 3 uses
  %.19.i.i.i.us = select i1 %i.bx, ptr %.0811.i.i.i.us, ptr %.012.i.i.i.us ; 2 uses
  %.1.in.v.i.i.i.us = select i1 %i.bx, i64 24, i64 16
  %.1.in.i.i.i.us = getelementptr inbounds nuw i8, ptr %.012.i.i.i.us, i64 %.1.in.v.i.i.i.us
  %.1.i.i.i.us = load ptr, ptr %.1.in.i.i.i.us, align 8, !tbaa !267 ; 2 uses
  %.not.i.i.i.us = icmp eq ptr %.1.i.i.i.us, null
  br i1 %.not.i.i.i.us, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.us, label %bb.s, !llvm.loop !283

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.us: ; preds = %bb.s
  %i.by = icmp eq ptr %.19.i.i.i.us, %i.an
  br i1 %i.by, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE4findERS7_.exit.us, label %bb.t

bb.t:                                             ; preds = %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.us
  %.19.i.i.i.sroa.sel.us.v.sroa.sel.v.sroa.sel.v = select i1 %i.bx, ptr %.0811.i.i.i.us, ptr %.012.i.i.i.us
  %.19.i.i.i.sroa.sel.us.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel.us.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.bz = load ptr, ptr %.19.i.i.i.sroa.sel.us.v.sroa.sel.v.sroa.sel, align 8, !tbaa !264
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = and i64 %i.ca, 1099511627775
  %i.cc = icmp samesign ult i64 %i.bs, %i.cb
  br label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE4findERS7_.exit.us

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE4findERS7_.exit.us: ; preds = %bb.t, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.us, %bb.r, %bb.q, %bb.o
  %i.cd = phi i1 [ false, %bb.o ], [ false, %bb.q ], [ true, %bb.r ], [ true, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.us ], [ %i.cc, %bb.t ]
  %i.ce = load ptr, ptr %7, align 8, !tbaa !264   ; 3 uses
  %i.cf = load i64, ptr %i.ce, align 8            ; 3 uses
  %i.cg = and i64 %i.cf, 1152920405095219200
  %.not.i.i.us = icmp eq i64 %i.cg, 1152920405095219200
  br i1 %.not.i.i.us, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.us, label %bb.u, !prof !266

bb.u:                                             ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE4findERS7_.exit.us
  %i.ch = add i64 %i.cf, 1152920405095219200
  %i.ci = and i64 %i.ch, 1152920405095219200      ; 2 uses
  %i.cj = and i64 %i.cf, -1152920405095219201
  %i.ck = or disjoint i64 %i.ci, %i.cj
  store i64 %i.ck, ptr %i.ce, align 8
  %i.cl = icmp eq i64 %i.ci, 0
  br i1 %i.cl, label %bb.v, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.us, !prof !266

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ce)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.us unwind label %.split153.us

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.us: ; preds = %bb.v, %bb.u, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE4findERS7_.exit.us
  %.pre174 = load ptr, ptr %6, align 8, !tbaa !264 ; 9 uses
  br i1 %i.cd, label %bb.w, label %bb.am

bb.w:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.us
  store ptr %.pre174, ptr %9, align 8, !tbaa !264
  %i.cm = load i64, ptr %.pre174, align 8         ; 3 uses
  %i.cn = lshr i64 %i.cm, 40
  %i.co = trunc nuw nsw i64 %i.cn to i32
  %i.cp = and i32 %i.co, 1048575                  ; 3 uses
  %i.cq = icmp samesign ult i32 %i.cp, 1048574
  br i1 %i.cq, label %bb.z, label %bb.x, !prof !265

bb.x:                                             ; preds = %bb.w
  %i.cr = icmp eq i32 %i.cp, 1048574
  br i1 %i.cr, label %bb.y, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit76.us, !prof !266

bb.y:                                             ; preds = %bb.x
  %i.cs = or i64 %i.cm, 1152920405095219200
  store i64 %i.cs, ptr %.pre174, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %.pre174)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit76.us unwind label %.split147.us

bb.z:                                             ; preds = %bb.w
  %i.ct = add nuw nsw i32 %i.cp, 1
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = shl nuw nsw i64 %i.cu, 40
  %i.cw = and i64 %i.cm, -1152920405095219201
  %i.cx = or i64 %i.cv, %i.cw
  store i64 %i.cx, ptr %.pre174, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit76.us

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit76.us: ; preds = %bb.z, %bb.y, %bb.x
  %i.cy = invoke noundef zeroext i1 @_ZN4cvc58internal6theory11quantifiers16InstStrategyEnum7processENS0_12NodeTemplateILb1EEEbb(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 %9, i1 noundef zeroext %.048, i1 noundef zeroext %.not173)
          to label %bb.aa unwind label %.split156.us

bb.aa:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit76.us
  %i.cz = load i64, ptr %.pre174, align 8         ; 3 uses
  %i.da = and i64 %i.cz, 1152920405095219200
  %.not.i.i77.us = icmp eq i64 %i.da, 1152920405095219200
  br i1 %.not.i.i77.us, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit78.us, label %bb.ab, !prof !266

bb.ab:                                            ; preds = %bb.aa
  %i.db = add i64 %i.cz, 1152920405095219200
  %i.dc = and i64 %i.db, 1152920405095219200      ; 2 uses
  %i.dd = and i64 %i.cz, -1152920405095219201
  %i.de = or disjoint i64 %i.dc, %i.dd
  store i64 %i.de, ptr %.pre174, align 8
  %i.df = icmp eq i64 %i.dc, 0
  br i1 %i.df, label %bb.ac, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit78.us, !prof !266

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %.pre174)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit78.us unwind label %.split159.us

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit78.us: ; preds = %bb.ac, %bb.ab, %bb.aa
  br i1 %i.cy, label %bb.ad, label %bb.ak

bb.ad:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit78.us
  %i.dg = invoke noundef nonnull align 8 dereferenceable(408) ptr @_ZNK4cvc58internal6EnvObj7optionsEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.ae unwind label %.split147.us

bb.ae:                                            ; preds = %bb.ad
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 344
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !206, !nonnull !207, !align !208
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 398
  %i.dk = load i8, ptr %i.dj, align 2, !tbaa !292, !range !250, !noundef !207
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %bb.aj, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dm = load ptr, ptr %i.ao, align 8, !tbaa !259 ; 2 uses
  %.not10.i.i.i.i.us = icmp eq ptr %i.dm, null
  br i1 %.not10.i.i.i.i.us, label %.critedge.i.us, label %.lr.ph.i.i.i.i.us

.lr.ph.i.i.i.i.us:                                ; preds = %bb.af
  %i.dn = load ptr, ptr %6, align 8, !tbaa !264
  %i.do = load i64, ptr %i.dn, align 8
  %i.dp = and i64 %i.do, 1099511627775            ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %.lr.ph.i.i.i.i.us
  %.012.i.i.i.i.us = phi ptr [ %i.dm, %.lr.ph.i.i.i.i.us ], [ %.1.i.i.i.i.us, %bb.ag ] ; 4 uses
  %.0811.i.i.i.i.us = phi ptr [ %i.an, %.lr.ph.i.i.i.i.us ], [ %.19.i.i.i.i.us, %bb.ag ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.us, i64 32
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !264
  %i.ds = load i64, ptr %i.dr, align 8
  %i.dt = and i64 %i.ds, 1099511627775
  %i.du = icmp samesign ult i64 %i.dt, %i.dp      ; 3 uses
  %.19.i.i.i.i.us = select i1 %i.du, ptr %.0811.i.i.i.i.us, ptr %.012.i.i.i.i.us ; 5 uses
  %.1.in.v.i.i.i.i.us = select i1 %i.du, i64 24, i64 16
  %.1.in.i.i.i.i.us = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.us, i64 %.1.in.v.i.i.i.i.us
  %.1.i.i.i.i.us = load ptr, ptr %.1.in.i.i.i.i.us, align 8, !tbaa !267 ; 2 uses
  %.not.i.i.i.i.us = icmp eq ptr %.1.i.i.i.i.us, null
  br i1 %.not.i.i.i.i.us, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE11lower_boundERS7_.exit.i.us, label %bb.ag, !llvm.loop !283

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE11lower_boundERS7_.exit.i.us: ; preds = %bb.ag
  %i.dv = icmp eq ptr %.19.i.i.i.i.us, %i.an
  br i1 %i.dv, label %.critedge.i.us, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE11lower_boundERS7_.exit.i.us
  %.19.i.i.i.i.sroa.sel.us.v.sroa.sel.v.sroa.sel.v = select i1 %i.du, ptr %.0811.i.i.i.i.us, ptr %.012.i.i.i.i.us
  %.19.i.i.i.i.sroa.sel.us.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel.us.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.dw = load ptr, ptr %.19.i.i.i.i.sroa.sel.us.v.sroa.sel.v.sroa.sel, align 8, !tbaa !264
  %i.dx = load i64, ptr %i.dw, align 8
  %i.dy = and i64 %i.dx, 1099511627775
  %i.dz = icmp samesign ult i64 %i.dp, %i.dy
  br i1 %i.dz, label %.critedge.i.us, label %bb.ai

.critedge.i.us:                                   ; preds = %bb.ah, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE11lower_boundERS7_.exit.i.us, %bb.af
  %.08.lcssa.i.i.i11.i.us = phi ptr [ %.19.i.i.i.i.us, %bb.ah ], [ %.19.i.i.i.i.us, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE11lower_boundERS7_.exit.i.us ], [ %i.an, %bb.af ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store ptr %6, ptr %3, align 8, !tbaa !270
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.ea = invoke ptr @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr %.08.lcssa.i.i.i11.i.us, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc79.us unwind label %.split147.us

.noexc79.us:                                      ; preds = %.critedge.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.ai

bb.ai:                                            ; preds = %.noexc79.us, %bb.ah
  %.sroa.06.0.i.us = phi ptr [ %i.ea, %.noexc79.us ], [ %.19.i.i.i.i.us, %bb.ah ]
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.us, i64 40
  store i8 1, ptr %i.eb, align 1, !tbaa !271
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ae
  %i.ec = add i32 %.142134.us, 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit78.us
  %.243.us = phi i32 [ %i.ec, %bb.aj ], [ %.142134.us, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit78.us ]
  %i.ed = load ptr, ptr %i.au, align 8, !tbaa !251, !nonnull !207, !align !208 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !10
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 72
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = invoke noundef zeroext i1 %i.eg(ptr noundef nonnull align 8 dereferenceable(160) %i.ed)
          to label %bb.al unwind label %.split147.us

bb.al:                                            ; preds = %bb.ak
  %not.130.us = xor i1 %i.eh, true
  %.pre = load ptr, ptr %6, align 8, !tbaa !264
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.us
  %i.ei = phi ptr [ %.pre, %bb.al ], [ %.pre174, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.us ] ; 3 uses
  %cond.us = phi i1 [ %not.130.us, %bb.al ], [ true, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.us ]
  %.445.us = phi i32 [ %.243.us, %bb.al ], [ %.142134.us, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.us ] ; 3 uses
  %i.ej = load i64, ptr %i.ei, align 8            ; 3 uses
  %i.ek = and i64 %i.ej, 1152920405095219200
  %.not.i.i80.us = icmp eq i64 %i.ek, 1152920405095219200
  br i1 %.not.i.i80.us, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit81.us, label %bb.an, !prof !266

bb.an:                                            ; preds = %bb.am
  %i.el = add i64 %i.ej, 1152920405095219200
  %i.em = and i64 %i.el, 1152920405095219200      ; 2 uses
  %i.en = and i64 %i.ej, -1152920405095219201
  %i.eo = or disjoint i64 %i.em, %i.en
  store i64 %i.eo, ptr %i.ei, align 8
  %i.ep = icmp eq i64 %i.em, 0
  br i1 %i.ep, label %bb.ao, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit81.us, !prof !266

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ei)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit81.us unwind label %.split162.us

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit81.us: ; preds = %bb.ao, %bb.an, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %i.eq = add nuw i32 %.032135.us, 1              ; 2 uses
  %i.er = icmp ult i32 %i.eq, %i.am
  %or.cond164 = select i1 %cond.us, i1 %i.er, i1 false
  br i1 %or.cond164, label %.lr.ph.us, label %._crit_edge.us, !llvm.loop !284

._crit_edge.us:                                   ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit81.us
  %i.es = load ptr, ptr %i.au, align 8, !tbaa !251, !nonnull !207, !align !208 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !10
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 72
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = invoke noundef zeroext i1 %i.ev(ptr noundef nonnull align 8 dereferenceable(160) %i.es)
          to label %bb.ap unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ap:                                            ; preds = %._crit_edge.us
  br i1 %i.ew, label %._crit_edge142, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %.not59.us = icmp eq i32 %.445.us, 0
  br i1 %.not59.us, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ex = invoke noundef nonnull align 8 dereferenceable(408) ptr @_ZNK4cvc58internal6EnvObj7optionsEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.as unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.as:                                            ; preds = %bb.ar
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 344
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !206, !nonnull !207, !align !208
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 398
  %i.fb = load i8, ptr %i.fa, align 2, !tbaa !292, !range !250, !noundef !207
  %i.fc = trunc nuw i8 %i.fb to i1
  br i1 %i.fc, label %._crit_edge142, label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.aq, %.lr.ph141.split.us
  %.6.us = phi i32 [ %.445.us, %bb.as ], [ 0, %bb.aq ], [ %.041138.us, %.lr.ph141.split.us ]
  %i.fd = add nuw nsw i32 %.040139.us, 1
  %exitcond.not = icmp eq i32 %.040139.us, %i.ah
  br i1 %exitcond.not, label %._crit_edge142, label %.lr.ph141.split.us, !llvm.loop !285

.split.us:                                        ; preds = %.lr.ph.us
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

.split147.us:                                     ; preds = %bb.ak, %.critedge.i.us, %bb.ad, %bb.y, %bb.m
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.split150.us:                                     ; preds = %bb.p, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.us
  %i.fg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #16
  br label %bb.ax

.split153.us:                                     ; preds = %bb.v
  %i.fh = landingpad { ptr, i32 }
          catch ptr null
  %i.fi = extractvalue { ptr, i32 } %i.fh, 0
  call void @__clang_call_terminate(ptr %i.fi) #17
  unreachable

.split156.us:                                     ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit76.us
  %i.fj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #16
  br label %bb.ax

.split159.us:                                     ; preds = %bb.ac
  %i.fk = landingpad { ptr, i32 }
          catch ptr null
  %i.fl = extractvalue { ptr, i32 } %i.fk, 0
  call void @__clang_call_terminate(ptr %i.fl) #17
  unreachable

.split162.us:                                     ; preds = %bb.ao
  %i.fm = landingpad { ptr, i32 }
          catch ptr null
  %i.fn = extractvalue { ptr, i32 } %i.fm, 0
  call void @__clang_call_terminate(ptr %i.fn) #17
  unreachable

.lr.ph141.split:                                  ; preds = %.lr.ph141.split.backedge, %.lr.ph141.split.preheader
  %.040139 = phi i32 [ %not., %.lr.ph141.split.preheader ], [ %.040139.be, %.lr.ph141.split.backedge ] ; 3 uses
  %i.fo = load ptr, ptr %i.as, align 8, !tbaa !21 ; 2 uses
  %i.fp = icmp ne ptr %i.fo, null
  %i.fq = icmp ne i32 %.040139, 0                 ; 2 uses
  %or.cond3 = or i1 %i.fq, %i.fp
  br i1 %or.cond3, label %bb.au, label %bb.ba

bb.au:                                            ; preds = %.lr.ph141.split
  br i1 %i.fq, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  invoke void @_ZN4cvc58internal6theory11quantifiers14RelevantDomain7computeEv(ptr noundef nonnull align 8 dereferenceable(144) %i.fo)
          to label %bb.aw unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.av, %bb.aw, %bb.ar, %._crit_edge.us, %bb.j, %._crit_edge142
  %lpad.loopexit.split-lp199 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split

bb.aw:                                            ; preds = %bb.au, %bb.av
  %i.fr = load ptr, ptr %i.au, align 8, !tbaa !251, !nonnull !207, !align !208 ; 2 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !10
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 72
  %i.fu = load ptr, ptr %i.ft, align 8
  %i.fv = invoke noundef zeroext i1 %i.fu(ptr noundef nonnull align 8 dereferenceable(160) %i.fr)
          to label %bb.az unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ax:                                            ; preds = %.split156.us, %.split150.us, %.split147.us
  %.pn56 = phi { ptr, i32 } [ %i.ff, %.split147.us ], [ %i.fj, %.split156.us ], [ %i.fg, %.split150.us ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #16
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %.split.us
  %.pn56.pn = phi { ptr, i32 } [ %.pn56, %bb.ax ], [ %i.fe, %.split.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %.loopexit.split

bb.az:                                            ; preds = %bb.aw
  %i.fw = add nuw nsw i32 %.040139, 1
  %exitcond172.not = icmp eq i32 %.040139, %i.ah
  %or.cond191 = select i1 %i.fv, i1 true, i1 %exitcond172.not
  br i1 %or.cond191, label %._crit_edge142, label %.lr.ph141.split.backedge

bb.ba:                                            ; preds = %.lr.ph141.split
  br i1 %exitcond172.not.old, label %._crit_edge142, label %.lr.ph141.split.backedge

.lr.ph141.split.backedge:                         ; preds = %bb.ba, %bb.az
  %.040139.be = phi i32 [ %i.fw, %bb.az ], [ 1, %bb.ba ]
  br label %.lr.ph141.split, !llvm.loop !285

._crit_edge142:                                   ; preds = %bb.at, %bb.as, %bb.ap, %bb.ba, %bb.az, %bb.h
  invoke void @_ZN4cvc58internal6theory11quantifiers17QuantifiersModule12endCallDebugEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %bb.bb unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bb:                                            ; preds = %._crit_edge142
  %i.fx = load i32, ptr %i.a, align 8, !tbaa !22  ; 2 uses
  %i.fy = icmp sgt i32 %i.fx, 0
  br i1 %i.fy, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.fz = add nsw i32 %i.fx, -1
  store i32 %i.fz, ptr %i.a, align 8, !tbaa !22
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.ga = load ptr, ptr %i.ao, align 8, !tbaa !259
  invoke void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.ga)
          to label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEED2Ev.exit unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gb = landingpad { ptr, i32 }
          catch ptr null
  %i.gc = extractvalue { ptr, i32 } %i.gb, 0
  call void @__clang_call_terminate(ptr %i.gc) #17
  unreachable

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEED2Ev.exit: ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.e, %bb.g, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEED2Ev.exit
  ret void

.loopexit.split:                                  ; preds = %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ay
  %.pn62 = phi { ptr, i32 } [ %.pn56.pn, %bb.ay ], [ %lpad.loopexit.split-lp199, %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  resume { ptr, i32 } %.pn62
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare noundef zeroext i1 @_ZNK4cvc58internal6theory24InferenceManagerBuffered15hasPendingLemmaEv(ptr noundef nonnull align 8 dereferenceable(337)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal6theory11TheoryState12getValuationEv(ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK4cvc58internal6theory9Valuation9needCheckEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN4cvc58internal6theory11quantifiers17QuantifiersModule14beginCallDebugEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

declare noundef ptr @_ZNK4cvc58internal6theory11quantifiers12TermRegistry8getModelEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #1

declare noundef i64 @_ZNK4cvc58internal6theory11quantifiers15FirstOrderModel25getNumAssertedQuantifiersEv(ptr noundef nonnull align 8 dereferenceable(664)) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare void @_ZN4cvc58internal6theory11quantifiers14RelevantDomain7computeEv(ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #1

declare void @_ZN4cvc58internal6theory11quantifiers15FirstOrderModel21getAssertedQuantifierEjb(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8, ptr noundef nonnull align 8 dereferenceable(664), i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK4cvc58internal6theory11quantifiers19QuantifiersRegistry12hasOwnershipENS0_12NodeTemplateILb1EEEPNS2_17QuantifiersModuleE(ptr noundef nonnull align 8 dereferenceable(568), ptr noundef align 8, ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK4cvc58internal6theory11quantifiers15FirstOrderModel18isQuantifierActiveENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(664), ptr noundef align 8) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !264    ; 3 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = and i64 %i.b, 1152920405095219200
  %.not.i = icmp eq i64 %i.c, 1152920405095219200
  br i1 %.not.i, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit, label %bb.b, !prof !266

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, 1152920405095219200
  %i.e = and i64 %i.d, 1152920405095219200        ; 2 uses
  %i.f = and i64 %i.b, -1152920405095219201
  %i.g = or disjoint i64 %i.e, %i.f
  store i64 %i.g, ptr %i.a, align 8
  %i.h = icmp eq i64 %i.e, 0
  br i1 %i.h, label %bb.c, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit, !prof !266

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit unwind label %bb.d

_ZN4cvc58internal4expr9NodeValue3decEv.exit:      ; preds = %bb.b, %bb.a, %bb.c
  ret void

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #17
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4cvc58internal6theory11quantifiers16InstStrategyEnum7processENS0_12NodeTemplateILb1EEEbb(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr nofree noundef readonly align 8 captures(none) %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %5 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %6 = alloca %"struct.cvc5::internal::theory::quantifiers::TermTupleEnumeratorEnv", align 8 ; 8 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %8 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %9 = alloca %"class.std::vector.428", align 8   ; 11 uses
  %10 = alloca %"class.std::vector", align 8      ; 13 uses
  %11 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %12 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %i.a = zext i1 %2 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !301)
  %i.b = load ptr, ptr %1, align 8, !tbaa !264, !noalias !301 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noalias !301
  %i.e = trunc i64 %i.d to i32
  %i.f = and i32 %i.e, 1023                       ; 2 uses
  %i.g = icmp eq i32 %i.f, 1023
  %i.h = select i1 %i.g, i32 -1, i32 %i.f
  %i.i = tail call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.h), !noalias !301
  %i.j = icmp eq i32 %i.i, 2
  %spec.select.i.i = select i1 %i.j, i64 2, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %spec.select.i.i
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !272, !noalias !301 ; 5 uses
  store ptr %i.m, ptr %4, align 8, !tbaa !264, !alias.scope !301
  %i.n = load i64, ptr %i.m, align 8, !noalias !301 ; 3 uses
  %i.o = lshr i64 %i.n, 40
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = and i32 %i.p, 1048575                    ; 3 uses
  %i.r = icmp samesign ult i32 %i.q, 1048574
  br i1 %i.r, label %bb.b, label %bb.c, !prof !265

bb.b:                                             ; preds = %bb.a
  %i.s = add nuw nsw i32 %i.q, 1
  %i.t = zext nneg i32 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 40
  %i.v = and i64 %i.n, -1152920405095219201
  %i.w = or i64 %i.u, %i.v
  store i64 %i.w, ptr %i.m, align 8, !noalias !301
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit

bb.c:                                             ; preds = %bb.a
  %i.x = icmp eq i32 %i.q, 1048574
  br i1 %i.x, label %bb.d, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit, !prof !266

bb.d:                                             ; preds = %bb.c
  %i.y = or i64 %i.n, 1152920405095219200
  store i64 %i.y, ptr %i.m, align 8, !noalias !301
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.m), !noalias !301
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit:  ; preds = %bb.b, %bb.c, %bb.d
  %i.z = invoke noundef zeroext i1 @_ZNK4cvc58internal12NodeTemplateILb1EE7isConstEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.e unwind label %bb.q

bb.e:                                             ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit
  br i1 %i.z, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.experimental.noalias.scope.decl(metadata !302)
  %i.aa = load ptr, ptr %1, align 8, !tbaa !264, !noalias !302 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !302
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = and i32 %i.ad, 1023                     ; 2 uses
  %i.af = icmp eq i32 %i.ae, 1023
  %i.ag = select i1 %i.af, i32 -1, i32 %i.ae
  %i.ah = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.ag)
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.f
  %i.ai = icmp eq i32 %i.ah, 2
  %spec.select.i.i41 = select i1 %i.ai, i64 2, i64 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %spec.select.i.i41
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !272, !noalias !302 ; 9 uses
  store ptr %i.al, ptr %5, align 8, !tbaa !264, !alias.scope !302
  %i.am = load i64, ptr %i.al, align 8, !noalias !302 ; 3 uses
  %i.an = lshr i64 %i.am, 40
  %i.ao = trunc nuw nsw i64 %i.an to i32
  %i.ap = and i32 %i.ao, 1048575                  ; 3 uses
  %i.aq = icmp samesign ult i32 %i.ap, 1048574
  br i1 %i.aq, label %bb.g, label %bb.h, !prof !265

bb.g:                                             ; preds = %.noexc
  %i.ar = add nuw nsw i32 %i.ap, 1
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = shl nuw nsw i64 %i.as, 40
end_hunk_0
