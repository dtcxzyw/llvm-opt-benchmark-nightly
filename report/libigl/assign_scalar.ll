Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/assign_scalar?download=true
inline.NumInlined: 4685
inline.NumDeleted: 1060
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN4CORE11BigFloatRep3divERKN5boost14multiprecision6numberINS2_8backends15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEELNS2_26expression_template_optionE1EEESD_RKNS_7extLongESG_:bb.a
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 1, ptr %i.hl, align 16, !tbaa !155
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre90 = load ptr, ptr %.phi.trans.insert, align 8
  br label %.thread103

bb.ah:                                            ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  %i.hm = landingpad { ptr, i32 }
          catch ptr null
  %i.hn = extractvalue { ptr, i32 } %i.hm, 0
  tail call void @__clang_call_terminate(ptr %i.hn) #39
  unreachable

.thread103:                                       ; preds = %bb.af, %bb.ag
  %.pre-phi = phi i1 [ %.pre89, %bb.af ], [ %i.gt, %bb.ag ]
  %i.ho = phi ptr [ %i.gw, %bb.af ], [ %.pre90, %bb.ag ]
  %i.hp = select i1 %.pre-phi, ptr %i.gq, ptr %i.ho
  store i64 0, ptr %i.hp, align 8, !tbaa !77
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.hq, align 8, !tbaa !74
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.hr, i8 0, i64 16, i1 false)
  br label %bb.ak

_ZN5boost14multiprecision4signINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEiRKNS0_6numberIT_XT0_EEE.exit.thread: ; preds = %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.i
  tail call void @_ZN4CGAL14assertion_failEPKcS1_iS1_(ptr noundef nonnull @.str, ptr noundef nonnull @.str.40, i32 noundef 259, ptr noundef nonnull @.str.41) #36
  unreachable

bb.ai:                                            ; preds = %bb.aa, %_ZN5boost14multiprecision4signINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEiRKNS0_6numberIT_XT0_EEE.exit67.thread
  %.pre92 = phi i64 [ %.sink, %_ZN5boost14multiprecision4signINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEiRKNS0_6numberIT_XT0_EEE.exit67.thread ], [ %.pre92.pre, %bb.aa ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  %.not5.i.i = icmp eq i64 %.pre92, 0             ; 2 uses
  %i.hs = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.pre92, i1 true)
  %i.ht = trunc nuw nsw i64 %i.hs to i32
  %i.hu = xor i32 %i.ht, 63
  %.0.lcssa.i.i = select i1 %.not5.i.i, i32 -1, i32 %i.hu ; 2 uses
  %i.hv = icmp sgt i32 %.0.lcssa.i.i, 31
  br i1 %i.hv, label %_ZN4CORE11BigFloatRep10chunkFloorEl.exit.i, label %bb.aj

_ZN4CORE11BigFloatRep10chunkFloorEl.exit.i:       ; preds = %bb.ai
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.hx = trunc nuw nsw i32 %.0.lcssa.i.i to i8
  %.lhs.trunc.i = add nsw i8 %i.hx, -1
  %i.hy = udiv i8 %.lhs.trunc.i, 30
  %.zext.i = zext nneg i8 %i.hy to i64            ; 2 uses
  %i.hz = mul nuw nsw i64 %.zext.i, 30            ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ib = zext nneg i64 %i.hz to i128
  call void @_ZN5boost14multiprecision8backends16eval_right_shiftILm0ELm0ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_ELNS0_16cpp_integer_typeE1EXT1_ET2_EEEE5valueEvE4typeERS9_o(ptr noundef nonnull align 16 dereferenceable(32) %i.ia, i128 noundef %i.ib)
  %i.ic = load i64, ptr %i.hw, align 16, !tbaa !187
  %i.id = lshr i64 %i.ic, %i.hz
  %i.ie = add nuw nsw i64 %i.id, 2
  store i64 %i.ie, ptr %i.hw, align 16, !tbaa !187
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !160
  %i.ih = add nsw i64 %i.ig, %.zext.i
  store i64 %i.ih, ptr %i.if, align 8, !tbaa !160
  br label %_ZN4CORE11BigFloatRep6normalEv.exit

bb.aj:                                            ; preds = %bb.ai
  br i1 %.not5.i.i, label %bb.ak, label %_ZN4CORE11BigFloatRep6normalEv.exit

bb.ak:                                            ; preds = %.thread103, %bb.aj
  call void @_ZN4CORE11BigFloatRep23eliminateTrailingZeroesEv(ptr noundef nonnull align 16 dereferenceable(64) %0)
  br label %_ZN4CORE11BigFloatRep6normalEv.exit

_ZN4CORE11BigFloatRep6normalEv.exit:              ; preds = %_ZN4CORE11BigFloatRep10chunkFloorEl.exit.i, %bb.aj, %bb.ak
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local { i64, i32 } @_ZNK4CORE7extLongngEv(ptr noundef nonnull align 8 dereferenceable(12) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !81
  switch i32 %i.b, label %bb.j [
    i32 0, label %bb.b
    i32 1, label %bb.d
    i32 -1, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8, !tbaa !63     ; 3 uses
  %i.d = icmp eq i64 %i.c, -9223372036854775807
  br i1 %i.d, label %_ZN4CORE7extLongC2El.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = sub i64 0, %i.c
  %i.f = icmp eq i64 %i.c, 9223372036854775807
  %spec.select = sext i1 %i.f to i32
  br label %_ZN4CORE7extLongC2El.exit

bb.d:                                             ; preds = %bb.a
  %i.g = load atomic i8, ptr @_ZGVZN4CORE7extLong11getNegInftyEvE8negInfty acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.e, label %_ZN4CORE7extLong11getNegInftyEv.exit, !prof !80

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4CORE7extLong11getNegInftyEvE8negInfty) #24
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %_ZN4CORE7extLong11getNegInftyEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 -9223372036854775807, ptr @_ZZN4CORE7extLong11getNegInftyEvE8negInfty, align 8, !tbaa !63
  store i32 -1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4CORE7extLong11getNegInftyEvE8negInfty, i64 8), align 8, !tbaa !81
  %i.j = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZZN4CORE7extLong11getNegInftyEvE8negInfty) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4CORE7extLong11getNegInftyEvE8negInfty) #24
  br label %_ZN4CORE7extLong11getNegInftyEv.exit

_ZN4CORE7extLong11getNegInftyEv.exit:             ; preds = %bb.d, %bb.e, %bb.f
  %.sroa.0.0.copyload = load i64, ptr @_ZZN4CORE7extLong11getNegInftyEvE8negInfty, align 8, !tbaa !57
  %.sroa.5.0.copyload = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4CORE7extLong11getNegInftyEvE8negInfty, i64 8), align 8, !tbaa !58
  br label %_ZN4CORE7extLongC2El.exit

bb.g:                                             ; preds = %bb.a
  %i.k = load atomic i8, ptr @_ZGVZN4CORE7extLong11getPosInftyEvE8posInfty acquire, align 8
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.h, label %_ZN4CORE7extLong11getPosInftyEv.exit, !prof !80

bb.h:                                             ; preds = %bb.g
  %i.m = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4CORE7extLong11getPosInftyEvE8posInfty) #24
  %.not.i1 = icmp eq i32 %i.m, 0
  br i1 %.not.i1, label %_ZN4CORE7extLong11getPosInftyEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i64 9223372036854775807, ptr @_ZZN4CORE7extLong11getPosInftyEvE8posInfty, align 8, !tbaa !63
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4CORE7extLong11getPosInftyEvE8posInfty, i64 8), align 8, !tbaa !81
  %i.n = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZZN4CORE7extLong11getPosInftyEvE8posInfty) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4CORE7extLong11getPosInftyEvE8posInfty) #24
  br label %_ZN4CORE7extLong11getPosInftyEv.exit

_ZN4CORE7extLong11getPosInftyEv.exit:             ; preds = %bb.g, %bb.h, %bb.i
  %.sroa.0.0.copyload3 = load i64, ptr @_ZZN4CORE7extLong11getPosInftyEvE8posInfty, align 8, !tbaa !57
  %.sroa.5.0.copyload5 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4CORE7extLong11getPosInftyEvE8posInfty, i64 8), align 8, !tbaa !58
  br label %_ZN4CORE7extLongC2El.exit

bb.j:                                             ; preds = %bb.a
  %i.o = load atomic i8, ptr @_ZGVZN4CORE7extLong10getNaNLongEvE7NaNLong acquire, align 8
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.k, label %_ZN4CORE7extLong10getNaNLongEv.exit, !prof !80

bb.k:                                             ; preds = %bb.j
  %i.q = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4CORE7extLong10getNaNLongEvE7NaNLong) #24
  %.not.i2 = icmp eq i32 %i.q, 0
  br i1 %.not.i2, label %_ZN4CORE7extLong10getNaNLongEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i64 -9223372036854775808, ptr @_ZZN4CORE7extLong10getNaNLongEvE7NaNLong, align 8, !tbaa !63
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4CORE7extLong10getNaNLongEvE7NaNLong, i64 8), align 8, !tbaa !81
  %i.r = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZZN4CORE7extLong10getNaNLongEvE7NaNLong) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4CORE7extLong10getNaNLongEvE7NaNLong) #24
  br label %_ZN4CORE7extLong10getNaNLongEv.exit

_ZN4CORE7extLong10getNaNLongEv.exit:              ; preds = %bb.j, %bb.k, %bb.l
  %.sroa.0.0.copyload4 = load i64, ptr @_ZZN4CORE7extLong10getNaNLongEvE7NaNLong, align 8, !tbaa !57
  %.sroa.5.0.copyload6 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4CORE7extLong10getNaNLongEvE7NaNLong, i64 8), align 8, !tbaa !58
  br label %_ZN4CORE7extLongC2El.exit

_ZN4CORE7extLongC2El.exit:                        ; preds = %bb.c, %bb.b, %_ZN4CORE7extLong10getNaNLongEv.exit, %_ZN4CORE7extLong11getPosInftyEv.exit, %_ZN4CORE7extLong11getNegInftyEv.exit
  %.sroa.5.0 = phi i32 [ %.sroa.5.0.copyload6, %_ZN4CORE7extLong10getNaNLongEv.exit ], [ %.sroa.5.0.copyload5, %_ZN4CORE7extLong11getPosInftyEv.exit ], [ %.sroa.5.0.copyload, %_ZN4CORE7extLong11getNegInftyEv.exit ], [ %spec.select, %bb.c ], [ 1, %bb.b ]
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload4, %_ZN4CORE7extLong10getNaNLongEv.exit ], [ %.sroa.0.0.copyload3, %_ZN4CORE7extLong11getPosInftyEv.exit ], [ %.sroa.0.0.copyload, %_ZN4CORE7extLong11getNegInftyEv.exit ], [ %i.e, %bb.c ], [ 9223372036854775807, %bb.b ]
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %.sroa.5.0, 1
  ret { i64, i32 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CORE11BigFloatRep10chunkShiftERKN5boost14multiprecision6numberINS2_8backends15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEELNS2_26expression_template_optionE1EEEl(ptr dead_on_unwind noalias writable sret(%"class.boost::multiprecision::number.23") align 16 %0, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.boost::multiprecision::detail::expression.43", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"struct.boost::multiprecision::detail::negate", align 1 ; 3 uses
  %5 = alloca %"struct.boost::multiprecision::detail::expression.35", align 8 ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %6 = alloca %"struct.boost::multiprecision::detail::terminal", align 1 ; 3 uses
  %7 = alloca %"struct.boost::multiprecision::detail::expression.43", align 8 ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %8 = alloca %"struct.boost::multiprecision::detail::negate", align 1 ; 3 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZN5boost14multiprecision4signINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEiRKNS0_6numberIT_XT0_EEE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 16, !tbaa !155
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.i, label %_ZN5boost14multiprecision4signINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEiRKNS0_6numberIT_XT0_EEE.exit.thread49

_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.h = load i8, ptr %i.g, align 1, !tbaa !75, !range !64, !noundef !65
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = select i1 %i.i, ptr %1, ptr %i.k
  %i.m = load i64, ptr %i.l, align 8, !tbaa !77
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_ZN5boost14multiprecision4signINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEiRKNS0_6numberIT_XT0_EEE.exit.thread, label %_ZN5boost14multiprecision4signINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEiRKNS0_6numberIT_XT0_EEE.exit

_ZN5boost14multiprecision4signINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEiRKNS0_6numberIT_XT0_EEE.exit.thread: ; preds = %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.i, %bb.a
  store i64 0, ptr %0, align 16, !tbaa !88
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.q = load i8, ptr %i.p, align 2, !tbaa !156, !range !64, !noundef !65
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN5boost14multiprecision4signINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEiRKNS0_6numberIT_XT0_EEE.exit.thread
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i64, ptr %i.s, align 16, !tbaa !155
  store i64 %i.t, ptr %i.o, align 16, !tbaa !155
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load i8, ptr %i.v, align 8, !tbaa !74, !range !64, !noundef !65
  store i8 %i.w, ptr %i.u, align 8, !tbaa !74
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 0, ptr %i.x, align 1, !tbaa !75
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 1, ptr %i.y, align 2, !tbaa !156
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 16, i1 false), !tbaa.struct !197
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEC2ERKS9_.exit

bb.d:                                             ; preds = %_ZN5boost14multiprecision4signINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEiRKNS0_6numberIT_XT0_EEE.exit.thread
  store i64 0, ptr %i.o, align 16, !tbaa !155
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !74, !range !64, !noundef !65
  store i8 %i.ab, ptr %i.z, align 8, !tbaa !74
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 4 uses
  store i8 1, ptr %i.ac, align 1, !tbaa !75
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  store i8 0, ptr %i.ad, align 2, !tbaa !156
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 16, !tbaa !155 ; 3 uses
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.af, i64 288230376151711744) ; 3 uses
  %9 = icmp ugt i64 %i.af, 2
  br i1 %9, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i, label %bb.e

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i:   ; preds = %bb.d
  %.sroa.speculated16.i = tail call i64 @llvm.umax.i64(i64 %spec.select.i, i64 8) ; 2 uses
  %i.ag = shl nuw nsw i64 %.sroa.speculated16.i, 3
  %i.ah = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #37 ; 4 uses
  %10 = load i8, ptr %i.ac, align 1, !tbaa !75, !range !64, !noundef !65
  %11 = trunc nuw i8 %10 to i1                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %12 = load ptr, ptr %i.ai, align 8              ; 2 uses
  %13 = select i1 %11, ptr %0, ptr %12
  %i.aj = load i64, ptr %i.o, align 16, !tbaa !155
  %14 = shl i64 %i.aj, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %13, i64 %14, i1 false)
  %15 = load i8, ptr %i.ad, align 2, !range !64
  %16 = trunc nuw i8 %15 to i1
  %or.cond = select i1 %11, i1 true, i1 %16
  br i1 %or.cond, label %22, label %17

17:                                               ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  %18 = load i64, ptr %0, align 16
  %19 = shl i64 %18, 3
  tail call void @_ZdlPvm(ptr noundef %12, i64 noundef %19) #38
  %.pre.pre = load i8, ptr %i.ac, align 1, !tbaa !75, !range !64
  %20 = trunc nuw i8 %.pre.pre to i1
  %21 = select i1 %20, ptr %0, ptr %i.ah
  br label %23

22:                                               ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  store i8 0, ptr %i.ac, align 1, !tbaa !75
  br label %23

23:                                               ; preds = %22, %17
  %.pre = phi ptr [ %i.ah, %22 ], [ %21, %17 ]
  store i64 %spec.select.i, ptr %i.o, align 16, !tbaa !155
  store i64 %.sroa.speculated16.i, ptr %0, align 16, !tbaa !88
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !88
  %.pre46 = load i64, ptr %i.ae, align 16, !tbaa !155
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit

bb.e:                                             ; preds = %bb.d
  store i64 %spec.select.i, ptr %i.o, align 16, !tbaa !155
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit: ; preds = %bb.e, %23
  %24 = phi i64 [ %i.af, %bb.e ], [ %.pre46, %23 ]
  %25 = phi ptr [ %0, %bb.e ], [ %.pre, %23 ]
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !75, !range !64, !noundef !65
  %i.am = trunc nuw i8 %i.al to i1
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = select i1 %i.am, ptr %1, ptr %i.ao
  %i.aq = shl i64 %24, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %25, ptr align 8 %i.ap, i64 %i.aq, i1 false)
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEC2ERKS9_.exit

common.resume:                                    ; preds = %bb.p, %bb.q, %bb.l, %bb.m, %bb.j, %bb.k, %bb.f, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.da, %bb.l ], [ %i.cj, %bb.j ], [ %i.bj, %bb.f ], [ %i.bj, %bb.g ], [ %i.cj, %bb.k ], [ %i.da, %bb.m ], [ %i.ea, %bb.q ], [ %i.ea, %bb.p ]
  resume { ptr, i32 } %common.resume.op

_ZN5boost14multiprecision4signINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEiRKNS0_6numberIT_XT0_EEE.exit: ; preds = %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.i
  %i.ar = icmp sgt i64 %2, 0
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.at = load i8, ptr %i.as, align 1, !tbaa !75, !range !64, !noundef !65
  %i.au = trunc nuw i8 %i.at to i1
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = select i1 %i.au, ptr %1, ptr %i.aw
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !77
  %i.az = icmp eq i64 %i.ay, 0                    ; 2 uses
  br i1 %i.ar, label %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.i14, label %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.i19

_ZN5boost14multiprecision4signINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEiRKNS0_6numberIT_XT0_EEE.exit.thread49: ; preds = %bb.b
  %i.ba = icmp sgt i64 %2, 0
  br i1 %i.ba, label %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.thread.i13, label %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.thread.i18

_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.i14: ; preds = %_ZN5boost14multiprecision4signINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEiRKNS0_6numberIT_XT0_EEE.exit
  br i1 %i.az, label %select.unfold, label %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.thread.i13

_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.thread.i13: ; preds = %_ZN5boost14multiprecision4signINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEiRKNS0_6numberIT_XT0_EEE.exit.thread49, %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.i14
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !74, !range !64, !noundef !65
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %select.unfold, label %_ZN5boost14multiprecision4signINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEiRKNS0_6numberIT_XT0_EEE.exit15

_ZN5boost14multiprecision4signINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEiRKNS0_6numberIT_XT0_EEE.exit15: ; preds = %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.thread.i13
  %i.be = mul nuw nsw i64 %2, 30
  store i64 0, ptr %0, align 16, !tbaa !88
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %i.bf, align 16, !tbaa !155
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.bg, align 8, !tbaa !74
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 2 uses
  store i8 1, ptr %i.bh, align 1, !tbaa !75
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  store i8 0, ptr %i.bi, align 2, !tbaa !156
  invoke void @_ZN5boost14multiprecision11default_ops15eval_left_shiftINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES8_mEEvRT_RKT0_T1_(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(27) %1, i64 noundef %i.be)
          to label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEC2ERKS9_.exit unwind label %bb.f

bb.f:                                             ; preds = %_ZN5boost14multiprecision4signINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEiRKNS0_6numberIT_XT0_EEE.exit15
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bk = load i8, ptr %i.bh, align 1, !tbaa !75, !range !64, !noundef !65
  %i.bl = trunc nuw i8 %i.bk to i1
  %i.bm = load i8, ptr %i.bi, align 2, !range !64
  %i.bn = trunc nuw i8 %i.bm to i1
  %or.cond.i.i = select i1 %i.bl, i1 true, i1 %i.bn
  br i1 %or.cond.i.i, label %common.resume, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = load i64, ptr %0, align 16
  %i.br = shl i64 %i.bq, 3
  tail call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.br) #38
  br label %common.resume

select.unfold:                                    ; preds = %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.thread.i13, %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.i14
  %i.bs = mul nuw nsw i64 %2, 30
  store i64 0, ptr %0, align 16, !tbaa !88
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 1, ptr %i.bt, align 16, !tbaa !155
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store i8 0, ptr %i.bu, align 8, !tbaa !74
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 3 uses
  store i8 1, ptr %i.bv, align 1, !tbaa !75
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  store i8 0, ptr %i.bw, align 2, !tbaa !156
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  store ptr %1, ptr %7, align 8, !tbaa !153, !alias.scope !593
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i64 %i.bs, ptr %i.c, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  invoke void @_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE20do_assign_left_shiftINS0_6detail10expressionINSB_6negateES9_vvvEEySD_EEvRKT_RKT0_RKT1_(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %.noexc.i unwind label %bb.j

.noexc.i:                                         ; preds = %select.unfold
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.bx = load i8, ptr %i.bu, align 8, !tbaa !74, !range !64, !noundef !65 ; 2 uses
  %i.by = trunc nuw i8 %i.bx to i1
  %i.bz = xor i8 %i.bx, 1
  store i8 %i.bz, ptr %i.bu, align 8, !tbaa !74
  %i.ca = load i64, ptr %i.bt, align 16
  %i.cb = icmp ne i64 %i.ca, 1
  %or.cond.i.not.i.i.i.i = select i1 %i.by, i1 true, i1 %i.cb
  br i1 %or.cond.i.not.i.i.i.i, label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEC2ERKS9_.exit, label %bb.h

bb.h:                                             ; preds = %.noexc.i
  %i.cc = load i8, ptr %i.bv, align 1, !tbaa !75, !range !64, !noundef !65
  %i.cd = trunc nuw i8 %i.cc to i1
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = select i1 %i.cd, ptr %0, ptr %i.cf
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !77
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %bb.i, label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEC2ERKS9_.exit

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr %i.bu, align 8, !tbaa !74
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEC2ERKS9_.exit

bb.j:                                             ; preds = %select.unfold
  %i.cj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ck = load i8, ptr %i.bv, align 1, !tbaa !75, !range !64, !noundef !65
  %i.cl = trunc nuw i8 %i.ck to i1
  %i.cm = load i8, ptr %i.bw, align 2, !range !64
  %i.cn = trunc nuw i8 %i.cm to i1
  %or.cond.i.i16 = select i1 %i.cl, i1 true, i1 %i.cn
  br i1 %or.cond.i.i16, label %common.resume, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = load i64, ptr %0, align 16
  %i.cr = shl i64 %i.cq, 3
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cr) #38
  br label %common.resume

_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.i19: ; preds = %_ZN5boost14multiprecision4signINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEiRKNS0_6numberIT_XT0_EEE.exit
  br i1 %i.az, label %select.unfold43, label %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.thread.i18

_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.thread.i18: ; preds = %_ZN5boost14multiprecision4signINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEiRKNS0_6numberIT_XT0_EEE.exit.thread49, %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.i19
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ct = load i8, ptr %i.cs, align 8, !tbaa !74, !range !64, !noundef !65
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %select.unfold43, label %_ZN5boost14multiprecision4signINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEiRKNS0_6numberIT_XT0_EEE.exit20

_ZN5boost14multiprecision4signINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEiRKNS0_6numberIT_XT0_EEE.exit20: ; preds = %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.thread.i18
  %i.cv = mul i64 %2, -30
  store i64 0, ptr %0, align 16, !tbaa !88
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %i.cw, align 16, !tbaa !155
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.cx, align 8, !tbaa !74
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 2 uses
  store i8 1, ptr %i.cy, align 1, !tbaa !75
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  store i8 0, ptr %i.cz, align 2, !tbaa !156
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr %1, ptr %5, align 8, !tbaa !153, !alias.scope !594
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 %i.cv, ptr %i.b, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  invoke void @_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE21do_assign_right_shiftINS0_6detail10expressionINSB_8terminalES9_vvvEEyEEvRKT_RKT0_RKSD_(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEC2INS0_6detail11shift_rightES9_mvvEERKNSB_10expressionIT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSJ_11result_typeES9_EE5valueEvE4typeE.exit unwind label %bb.l

bb.l:                                             ; preds = %_ZN5boost14multiprecision4signINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEiRKNS0_6numberIT_XT0_EEE.exit20
  %i.da = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.db = load i8, ptr %i.cy, align 1, !tbaa !75, !range !64, !noundef !65
  %i.dc = trunc nuw i8 %i.db to i1
  %i.dd = load i8, ptr %i.cz, align 2, !range !64
  %i.de = trunc nuw i8 %i.dd to i1
  %or.cond.i.i21 = select i1 %i.dc, i1 true, i1 %i.de
  br i1 %or.cond.i.i21, label %common.resume, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = load i64, ptr %0, align 16
  %i.di = shl i64 %i.dh, 3
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.di) #38
  br label %common.resume

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEC2INS0_6detail11shift_rightES9_mvvEERKNSB_10expressionIT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSJ_11result_typeES9_EE5valueEvE4typeE.exit: ; preds = %_ZN5boost14multiprecision4signINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEiRKNS0_6numberIT_XT0_EEE.exit20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEC2ERKS9_.exit

select.unfold43:                                  ; preds = %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.thread.i18, %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.i19
  %i.dj = mul i64 %2, -30
  store i64 0, ptr %0, align 16, !tbaa !88
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 1, ptr %i.dk, align 16, !tbaa !155
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store i8 0, ptr %i.dl, align 8, !tbaa !74
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 3 uses
  store i8 1, ptr %i.dm, align 1, !tbaa !75
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  store i8 0, ptr %i.dn, align 2, !tbaa !156
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %1, ptr %3, align 8, !tbaa !153, !alias.scope !595
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.dj, ptr %i.a, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  invoke void @_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE21do_assign_right_shiftINS0_6detail10expressionINSB_6negateES9_vvvEEySD_EEvRKT_RKT0_RKT1_(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc.i25 unwind label %bb.p

.noexc.i25:                                       ; preds = %select.unfold43
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
end_hunk_0
