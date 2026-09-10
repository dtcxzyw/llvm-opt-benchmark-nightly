Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/benchmark?download=true
inline.NumInlined: 16777
inline.NumDeleted: 5122
loop-unroll.NumCompletelyUnrolled: 54
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 65
begin_hunk_0_@_ZNK6iguana9base_implIN9pb_sample7MonsterELh8EE5to_pbERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.rx = lshr i64 %i.ru, 7                       ; 2 uses
  %i.ry = icmp ult i32 %i.ro, 16384
  br i1 %i.ry, label %bb.dg, label %.preheader527

bb.dg:                                            ; preds = %bb.df
  %i.rz = trunc nuw nsw i64 %i.rx to i8
  store i8 %i.rz, ptr %i.rw, align 1
  %i.sa = getelementptr inbounds nuw i8, ptr %.sroa.0.39, i64 3
  br label %_ZN6iguana6detail10to_pb_implILj66ELb1ERKN9pb_sample6WeaponENS_13memory_writerEEEvOT1_RPjRT2_.exit.i

.preheader527:                                    ; preds = %bb.df, %.preheader527
  %.sroa.0.40 = phi ptr [ %i.sd, %.preheader527 ], [ %i.rw, %bb.df ] ; 3 uses
  %.0.i.i.i146.i = phi i64 [ %i.se, %.preheader527 ], [ %i.rx, %bb.df ] ; 3 uses
  %i.sb = trunc i64 %.0.i.i.i146.i to i8
  %i.sc = or i8 %i.sb, -128
  store i8 %i.sc, ptr %.sroa.0.40, align 1
  %i.sd = getelementptr inbounds nuw i8, ptr %.sroa.0.40, i64 1 ; 2 uses
  %i.se = lshr i64 %.0.i.i.i146.i, 7              ; 2 uses
  %i.sf = icmp samesign ugt i64 %.0.i.i.i146.i, 16383
  br i1 %i.sf, label %.preheader527, label %bb.dh, !llvm.loop !42

bb.dh:                                            ; preds = %.preheader527
  %i.sg = trunc nuw nsw i64 %i.se to i8
  store i8 %i.sg, ptr %i.sd, align 1
  %i.sh = getelementptr inbounds nuw i8, ptr %.sroa.0.40, i64 2
  br label %_ZN6iguana6detail10to_pb_implILj66ELb1ERKN9pb_sample6WeaponENS_13memory_writerEEEvOT1_RPjRT2_.exit.i

bb.di:                                            ; preds = %bb.cv
  %i.si = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZN6iguana6detail10to_pb_implILj66ELb1ERKN9pb_sample6WeaponENS_13memory_writerEEEvOT1_RPjRT2_.exit.i: ; preds = %_ZZN6iguana6detail10to_pb_implILj66ELb1ERKN9pb_sample6WeaponENS_13memory_writerEEEvOT1_RPjRT2_ENKUlT_E_clISt17integral_constantImLm0EEEEDaSD_.exit.i, %bb.dh, %bb.dg, %bb.de, %_ZN6iguana6detail16serialize_varintINS_13memory_writerEEEvmRT_.exit.i137.i
  %.sroa.0.29 = phi ptr [ %i.qk, %_ZN6iguana6detail16serialize_varintINS_13memory_writerEEEvmRT_.exit.i137.i ], [ %.sroa.0.39, %_ZZN6iguana6detail10to_pb_implILj66ELb1ERKN9pb_sample6WeaponENS_13memory_writerEEEvOT1_RPjRT2_ENKUlT_E_clISt17integral_constantImLm0EEEEDaSD_.exit.i ], [ %i.rt, %bb.de ], [ %i.sa, %bb.dg ], [ %i.sh, %bb.dh ]
  %.sroa.0153.0.copyload = load i64, ptr @_ZZN6iguana6detail10to_pb_implILj0ELb1ERKN9pb_sample7MonsterENS_13memory_writerEEEvOT1_RPjRT2_E5tupleB5cxx11, align 8, !tbaa !249
  %i.sj = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0153.0.copyload ; 2 uses
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !424 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sj, i64 8
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !424 ; 2 uses
  %i.sn = icmp eq ptr %i.sk, %i.sm
  br i1 %i.sn, label %_ZNSt6vectorIjSaIjEED2Ev.exit3, label %.lr.ph576

.lr.ph576:                                        ; preds = %_ZN6iguana6detail10to_pb_implILj66ELb1ERKN9pb_sample6WeaponENS_13memory_writerEEEvOT1_RPjRT2_.exit.i, %_ZN6iguana6detail10to_pb_implILj74ELb0ERKN9pb_sample4Vec3ENS_13memory_writerEEEvOT1_RPjRT2_.exit.i
  %.sroa.0259.0575 = phi ptr [ %i.ua, %_ZN6iguana6detail10to_pb_implILj74ELb0ERKN9pb_sample4Vec3ENS_13memory_writerEEEvOT1_RPjRT2_.exit.i ], [ %i.sk, %_ZN6iguana6detail10to_pb_implILj66ELb1ERKN9pb_sample6WeaponENS_13memory_writerEEEvOT1_RPjRT2_.exit.i ] ; 6 uses
  %.sroa.0.30574 = phi ptr [ %.sroa.0.33, %_ZN6iguana6detail10to_pb_implILj74ELb0ERKN9pb_sample4Vec3ENS_13memory_writerEEEvOT1_RPjRT2_.exit.i ], [ %.sroa.0.29, %_ZN6iguana6detail10to_pb_implILj66ELb1ERKN9pb_sample6WeaponENS_13memory_writerEEEvOT1_RPjRT2_.exit.i ] ; 5 uses
  %i.so = getelementptr inbounds nuw i8, ptr %.sroa.0259.0575, i64 8
  %i.sp = load i64, ptr %i.so, align 8, !tbaa !196 ; 5 uses
  store i8 74, ptr %.sroa.0.30574, align 1
  %i.sq = getelementptr inbounds nuw i8, ptr %.sroa.0.30574, i64 1 ; 2 uses
  %i.sr = trunc i64 %i.sp to i8                   ; 2 uses
  %i.ss = icmp ult i64 %i.sp, 128
  br i1 %i.ss, label %_ZN6iguana6detail16serialize_varintINS_13memory_writerEEEvmRT_.exit.i150.i, label %bb.dj

bb.dj:                                            ; preds = %.lr.ph576
  %i.st = or i8 %i.sr, -128
  store i8 %i.st, ptr %i.sq, align 1
  %i.su = getelementptr inbounds nuw i8, ptr %.sroa.0.30574, i64 2 ; 2 uses
  %i.sv = lshr i64 %i.sp, 7                       ; 2 uses
  %i.sw = icmp ult i64 %i.sp, 16384
  br i1 %i.sw, label %bb.dk, label %.preheader

bb.dk:                                            ; preds = %bb.dj
  %i.sx = trunc nuw nsw i64 %i.sv to i8
  store i8 %i.sx, ptr %i.su, align 1
  %i.sy = getelementptr inbounds nuw i8, ptr %.sroa.0.30574, i64 3
  br label %_ZN6iguana6detail16serialize_varintINS_13memory_writerEEEvmRT_.exit.i150.i.thread

.preheader:                                       ; preds = %bb.dj, %.preheader
  %.sroa.0.31 = phi ptr [ %i.tb, %.preheader ], [ %i.su, %bb.dj ] ; 3 uses
  %.0.i.i149.i = phi i64 [ %i.tc, %.preheader ], [ %i.sv, %bb.dj ] ; 3 uses
  %i.sz = trunc i64 %.0.i.i149.i to i8
  %i.ta = or i8 %i.sz, -128
  store i8 %i.ta, ptr %.sroa.0.31, align 1
  %i.tb = getelementptr inbounds nuw i8, ptr %.sroa.0.31, i64 1 ; 2 uses
  %i.tc = lshr i64 %.0.i.i149.i, 7                ; 2 uses
  %i.td = icmp samesign ugt i64 %.0.i.i149.i, 16383
  br i1 %i.td, label %.preheader, label %bb.dl, !llvm.loop !42

bb.dl:                                            ; preds = %.preheader
  %i.te = trunc nuw nsw i64 %i.tc to i8
  store i8 %i.te, ptr %i.tb, align 1
  %i.tf = getelementptr inbounds nuw i8, ptr %.sroa.0.31, i64 2
  br label %_ZN6iguana6detail16serialize_varintINS_13memory_writerEEEvmRT_.exit.i150.i.thread

_ZN6iguana6detail16serialize_varintINS_13memory_writerEEEvmRT_.exit.i150.i: ; preds = %.lr.ph576
  store i8 %i.sr, ptr %i.sq, align 1
  %i.tg = getelementptr inbounds nuw i8, ptr %.sroa.0.30574, i64 2 ; 2 uses
  %.not526 = icmp eq i64 %i.sp, 0
  br i1 %.not526, label %_ZN6iguana6detail10to_pb_implILj74ELb0ERKN9pb_sample4Vec3ENS_13memory_writerEEEvOT1_RPjRT2_.exit.i, label %_ZN6iguana6detail16serialize_varintINS_13memory_writerEEEvmRT_.exit.i150.i.thread

_ZN6iguana6detail16serialize_varintINS_13memory_writerEEEvmRT_.exit.i150.i.thread: ; preds = %bb.dk, %bb.dl, %_ZN6iguana6detail16serialize_varintINS_13memory_writerEEEvmRT_.exit.i150.i
  %.sroa.0.32511 = phi ptr [ %i.tg, %_ZN6iguana6detail16serialize_varintINS_13memory_writerEEEvmRT_.exit.i150.i ], [ %i.tf, %bb.dl ], [ %i.sy, %bb.dk ] ; 4 uses
  %i.th = load atomic i8, ptr @_ZGVZN6iguana6detail10to_pb_implILj74ELb0ERKN9pb_sample4Vec3ENS_13memory_writerEEEvOT1_RPjRT2_E5tuple acquire, align 8
  %i.ti = icmp eq i8 %i.th, 0
  br i1 %i.ti, label %bb.dm, label %bb.dp, !prof !173

bb.dm:                                            ; preds = %_ZN6iguana6detail16serialize_varintINS_13memory_writerEEEvmRT_.exit.i150.i.thread
  %i.tj = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6iguana6detail10to_pb_implILj74ELb0ERKN9pb_sample4Vec3ENS_13memory_writerEEEvOT1_RPjRT2_E5tuple) #28
  %.not.i151.i = icmp eq i32 %i.tj, 0
  br i1 %.not.i151.i, label %bb.dp, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  invoke void @_ZN6iguana6detail20get_pb_members_tupleIRKN9pb_sample4Vec3EEEDaOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.514") align 8 @_ZZN6iguana6detail10to_pb_implILj74ELb0ERKN9pb_sample4Vec3ENS_13memory_writerEEEvOT1_RPjRT2_E5tuple, ptr noundef nonnull align 8 dereferenceable(28) %.sroa.0259.0575)
          to label %bb.do unwind label %bb.dt

bb.do:                                            ; preds = %bb.dn
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6iguana6detail10to_pb_implILj74ELb0ERKN9pb_sample4Vec3ENS_13memory_writerEEEvOT1_RPjRT2_E5tuple) #28
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dm, %_ZN6iguana6detail16serialize_varintINS_13memory_writerEEEvmRT_.exit.i150.i.thread
  %.sroa.0277.0.copyload = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6iguana6detail10to_pb_implILj74ELb0ERKN9pb_sample4Vec3ENS_13memory_writerEEEvOT1_RPjRT2_E5tuple, i64 48), align 8, !tbaa !249
  %i.tk = getelementptr inbounds nuw i8, ptr %.sroa.0259.0575, i64 %.sroa.0277.0.copyload
  %i.tl = load float, ptr %i.tk, align 4, !tbaa !402 ; 2 uses
  %i.tm = fcmp oeq float %i.tl, 0.000000e+00
  br i1 %i.tm, label %_ZZN6iguana6detail10to_pb_implILj74ELb0ERKN9pb_sample4Vec3ENS_13memory_writerEEEvOT1_RPjRT2_ENKUlT_E_clISt17integral_constantImLm0EEEEDaSD_.exit.i, label %bb.dq, !prof !169

bb.dq:                                            ; preds = %bb.dp
  store i8 13, ptr %.sroa.0.32511, align 1
  %i.tn = getelementptr inbounds nuw i8, ptr %.sroa.0.32511, i64 1
  store float %i.tl, ptr %i.tn, align 1
  %i.to = getelementptr inbounds nuw i8, ptr %.sroa.0.32511, i64 5
  br label %_ZZN6iguana6detail10to_pb_implILj74ELb0ERKN9pb_sample4Vec3ENS_13memory_writerEEEvOT1_RPjRT2_ENKUlT_E_clISt17integral_constantImLm0EEEEDaSD_.exit.i

_ZZN6iguana6detail10to_pb_implILj74ELb0ERKN9pb_sample4Vec3ENS_13memory_writerEEEvOT1_RPjRT2_ENKUlT_E_clISt17integral_constantImLm0EEEEDaSD_.exit.i: ; preds = %bb.dq, %bb.dp
  %.sroa.0.34 = phi ptr [ %.sroa.0.32511, %bb.dp ], [ %i.to, %bb.dq ] ; 4 uses
  %.sroa.0281.0.copyload = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6iguana6detail10to_pb_implILj74ELb0ERKN9pb_sample4Vec3ENS_13memory_writerEEEvOT1_RPjRT2_E5tuple, i64 24), align 8, !tbaa !249
  %i.tp = getelementptr inbounds nuw i8, ptr %.sroa.0259.0575, i64 %.sroa.0281.0.copyload
  %i.tq = load float, ptr %i.tp, align 4, !tbaa !402 ; 2 uses
  %i.tr = fcmp oeq float %i.tq, 0.000000e+00
  br i1 %i.tr, label %_ZZN6iguana6detail10to_pb_implILj74ELb0ERKN9pb_sample4Vec3ENS_13memory_writerEEEvOT1_RPjRT2_ENKUlT_E_clISt17integral_constantImLm1EEEEDaSD_.exit.i, label %bb.dr, !prof !169

bb.dr:                                            ; preds = %_ZZN6iguana6detail10to_pb_implILj74ELb0ERKN9pb_sample4Vec3ENS_13memory_writerEEEvOT1_RPjRT2_ENKUlT_E_clISt17integral_constantImLm0EEEEDaSD_.exit.i
  store i8 21, ptr %.sroa.0.34, align 1
  %i.ts = getelementptr inbounds nuw i8, ptr %.sroa.0.34, i64 1
  store float %i.tq, ptr %i.ts, align 1
  %i.tt = getelementptr inbounds nuw i8, ptr %.sroa.0.34, i64 5
  br label %_ZZN6iguana6detail10to_pb_implILj74ELb0ERKN9pb_sample4Vec3ENS_13memory_writerEEEvOT1_RPjRT2_ENKUlT_E_clISt17integral_constantImLm1EEEEDaSD_.exit.i

_ZZN6iguana6detail10to_pb_implILj74ELb0ERKN9pb_sample4Vec3ENS_13memory_writerEEEvOT1_RPjRT2_ENKUlT_E_clISt17integral_constantImLm1EEEEDaSD_.exit.i: ; preds = %bb.dr, %_ZZN6iguana6detail10to_pb_implILj74ELb0ERKN9pb_sample4Vec3ENS_13memory_writerEEEvOT1_RPjRT2_ENKUlT_E_clISt17integral_constantImLm0EEEEDaSD_.exit.i
  %.sroa.0.35 = phi ptr [ %.sroa.0.34, %_ZZN6iguana6detail10to_pb_implILj74ELb0ERKN9pb_sample4Vec3ENS_13memory_writerEEEvOT1_RPjRT2_ENKUlT_E_clISt17integral_constantImLm0EEEEDaSD_.exit.i ], [ %i.tt, %bb.dr ] ; 4 uses
  %.sroa.0285.0.copyload = load i64, ptr @_ZZN6iguana6detail10to_pb_implILj74ELb0ERKN9pb_sample4Vec3ENS_13memory_writerEEEvOT1_RPjRT2_E5tuple, align 8, !tbaa !249
  %i.tu = getelementptr inbounds nuw i8, ptr %.sroa.0259.0575, i64 %.sroa.0285.0.copyload
  %i.tv = load float, ptr %i.tu, align 4, !tbaa !402 ; 2 uses
  %i.tw = fcmp oeq float %i.tv, 0.000000e+00
  br i1 %i.tw, label %_ZN6iguana6detail10to_pb_implILj74ELb0ERKN9pb_sample4Vec3ENS_13memory_writerEEEvOT1_RPjRT2_.exit.i, label %bb.ds, !prof !169

bb.ds:                                            ; preds = %_ZZN6iguana6detail10to_pb_implILj74ELb0ERKN9pb_sample4Vec3ENS_13memory_writerEEEvOT1_RPjRT2_ENKUlT_E_clISt17integral_constantImLm1EEEEDaSD_.exit.i
  store i8 29, ptr %.sroa.0.35, align 1
  %i.tx = getelementptr inbounds nuw i8, ptr %.sroa.0.35, i64 1
  store float %i.tv, ptr %i.tx, align 1
  %i.ty = getelementptr inbounds nuw i8, ptr %.sroa.0.35, i64 5
  br label %_ZN6iguana6detail10to_pb_implILj74ELb0ERKN9pb_sample4Vec3ENS_13memory_writerEEEvOT1_RPjRT2_.exit.i

bb.dt:                                            ; preds = %bb.dn
  %i.tz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZN6iguana6detail10to_pb_implILj74ELb0ERKN9pb_sample4Vec3ENS_13memory_writerEEEvOT1_RPjRT2_.exit.i: ; preds = %_ZZN6iguana6detail10to_pb_implILj74ELb0ERKN9pb_sample4Vec3ENS_13memory_writerEEEvOT1_RPjRT2_ENKUlT_E_clISt17integral_constantImLm1EEEEDaSD_.exit.i, %bb.ds, %_ZN6iguana6detail16serialize_varintINS_13memory_writerEEEvmRT_.exit.i150.i
  %.sroa.0.33 = phi ptr [ %i.tg, %_ZN6iguana6detail16serialize_varintINS_13memory_writerEEEvmRT_.exit.i150.i ], [ %.sroa.0.35, %_ZZN6iguana6detail10to_pb_implILj74ELb0ERKN9pb_sample4Vec3ENS_13memory_writerEEEvOT1_RPjRT2_ENKUlT_E_clISt17integral_constantImLm1EEEEDaSD_.exit.i ], [ %i.ty, %bb.ds ]
  %i.ua = getelementptr inbounds nuw i8, ptr %.sroa.0259.0575, i64 32 ; 2 uses
  %i.ub = icmp eq ptr %i.ua, %i.sm
  br i1 %i.ub, label %_ZNSt6vectorIjSaIjEED2Ev.exit3, label %.lr.ph576

bb.du:                                            ; preds = %bb.ap
  %i.uc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.i, %bb.ag, %bb.al, %bb.x, %bb.am, %bb.du, %bb.cq, %bb.dt, %bb.di, %bb.bc
  %_ZGVZN6iguana6detail17pb_key_value_sizeILm1ELb1ERKN9pb_sample4Vec3ESt6vectorIjSaIjEEEEmOT1_RT2_E5tuple.sink = phi ptr [ @_ZGVZN6iguana6detail17pb_key_value_sizeILm1ELb1ERKN9pb_sample4Vec3ESt6vectorIjSaIjEEEEmOT1_RT2_E5tuple, %bb.i ], [ @_ZGVZN6iguana6detail17pb_key_value_sizeILm1ELb1ERKN9pb_sample6WeaponESt6vectorIjSaIjEEEEmOT1_RT2_E5tupleB5cxx11, %bb.ag ], [ @_ZGVZN6iguana6detail17pb_key_value_sizeILm1ELb0ERKN9pb_sample4Vec3ESt6vectorIjSaIjEEEEmOT1_RT2_E5tuple, %bb.al ], [ @_ZGVZN6iguana6detail17pb_key_value_sizeILm1ELb0ERKN9pb_sample6WeaponESt6vectorIjSaIjEEEEmOT1_RT2_E5tupleB5cxx11, %bb.x ], [ @_ZGVZN6iguana6detail17pb_key_value_sizeILm0ELb1ERKN9pb_sample7MonsterESt6vectorIjSaIjEEEEmOT1_RT2_E5tupleB5cxx11, %bb.am ], [ @_ZGVZN6iguana6detail10to_pb_implILj0ELb1ERKN9pb_sample7MonsterENS_13memory_writerEEEvOT1_RPjRT2_E5tupleB5cxx11, %bb.du ], [ @_ZGVZN6iguana6detail10to_pb_implILj58ELb0ERKN9pb_sample6WeaponENS_13memory_writerEEEvOT1_RPjRT2_E5tupleB5cxx11, %bb.cq ], [ @_ZGVZN6iguana6detail10to_pb_implILj74ELb0ERKN9pb_sample4Vec3ENS_13memory_writerEEEvOT1_RPjRT2_E5tuple, %bb.dt ], [ @_ZGVZN6iguana6detail10to_pb_implILj66ELb1ERKN9pb_sample6WeaponENS_13memory_writerEEEvOT1_RPjRT2_E5tupleB5cxx11, %bb.di ], [ @_ZGVZN6iguana6detail10to_pb_implILj10ELb1ERKN9pb_sample4Vec3ENS_13memory_writerEEEvOT1_RPjRT2_E5tuple, %bb.bc ]
  %.pn.pn.i.i = phi { ptr, i32 } [ %i.x, %bb.i ], [ %i.fj, %bb.ag ], [ %i.gs, %bb.al ], [ %i.dq, %bb.x ], [ %i.gt, %bb.am ], [ %i.uc, %bb.du ], [ %i.po, %bb.cq ], [ %i.tz, %bb.dt ], [ %i.si, %bb.di ], [ %i.ix, %bb.bc ]
  tail call void @__cxa_guard_abort(ptr nonnull %_ZGVZN6iguana6detail17pb_key_value_sizeILm1ELb1ERKN9pb_sample4Vec3ESt6vectorIjSaIjEEEEmOT1_RT2_E5tuple.sink) #28
  resume { ptr, i32 } %.pn.pn.i.i

_ZNSt6vectorIjSaIjEED2Ev.exit3:                   ; preds = %_ZN6iguana6detail10to_pb_implILj74ELb0ERKN9pb_sample4Vec3ENS_13memory_writerEEEvOT1_RPjRT2_.exit.i, %_ZN6iguana6detail10to_pb_implILj66ELb1ERKN9pb_sample6WeaponENS_13memory_writerEEEvOT1_RPjRT2_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6iguana9base_implIN9pb_sample7MonsterELh8EE7from_pbESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, ptr %2) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %4 = alloca %class.anon.1120, align 1           ; 3 uses
  %5 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %6 = alloca %class.anon.1131, align 1           ; 3 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 15 uses
  %i.a = alloca i32, align 4                      ; 10 uses
  %8 = alloca %class.anon.940, align 8            ; 8 uses
  %9 = alloca %"struct.pb_sample::Vec3", align 8  ; 17 uses
  %10 = alloca %"class.std::basic_string_view", align 8 ; 13 uses
  %i.b = alloca i32, align 4                      ; 9 uses
  %11 = alloca %class.anon.990, align 8           ; 7 uses
  %12 = alloca %"class.std::basic_string_view", align 8 ; 13 uses
  %i.c = alloca i32, align 4                      ; 9 uses
  %13 = alloca %class.anon.990, align 8           ; 7 uses
  %14 = alloca %"struct.pb_sample::Weapon", align 8 ; 19 uses
  %15 = alloca %"class.std::basic_string_view", align 8 ; 15 uses
  %i.d = alloca i32, align 4                      ; 10 uses
  %16 = alloca %class.anon.940, align 8           ; 8 uses
  %17 = alloca %"class.std::basic_string_view", align 8 ; 45 uses
  %i.e = alloca i32, align 4                      ; 16 uses
  %18 = alloca %class.anon.874, align 8           ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  store i64 %1, ptr %17, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 46 uses
  store ptr %2, ptr %i.f, align 8
  %i.g = icmp eq i64 %1, 0
  br i1 %i.g, label %_ZN6iguana11from_pb_adlIN9pb_sample7MonsterEEEvPNS_12iguana_adl_tERT_St17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.b, !prof !169

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %1
  %i.i = load i8, ptr %2, align 1, !tbaa !94      ; 3 uses
  %i.j = icmp sgt i8 %i.i, -1
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = zext nneg i8 %i.i to i64
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit21.i.i

bb.d:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %2 to i64
  %i.m = icmp ugt i64 %1, 9
  br i1 %i.m, label %bb.e, label %.lr.ph, !prof !257

bb.e:                                             ; preds = %bb.d
  %i.n = and i8 %i.i, 127
  %i.o = zext nneg i8 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  %i.r = load i8, ptr %i.p, align 1, !tbaa !94    ; 2 uses
  %i.s = sext i8 %i.r to i64
  %i.t = shl nsw i64 %i.s, 7
  %i.u = and i64 %i.t, 16256
  %i.v = or disjoint i64 %i.u, %i.o               ; 2 uses
  %i.w = icmp sgt i8 %i.r, -1
  br i1 %i.w, label %bb.t, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 3 ; 2 uses
  %i.y = load i8, ptr %i.q, align 1, !tbaa !94    ; 2 uses
  %i.z = sext i8 %i.y to i64
  %i.aa = shl nsw i64 %i.z, 14
  %i.ab = and i64 %i.aa, 2080768
  %i.ac = or disjoint i64 %i.ab, %i.v             ; 2 uses
  %i.ad = icmp sgt i8 %i.y, -1
  br i1 %i.ad, label %bb.t, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.af = load i8, ptr %i.x, align 1, !tbaa !94   ; 2 uses
  %i.ag = sext i8 %i.af to i64
  %i.ah = shl nsw i64 %i.ag, 21
  %i.ai = and i64 %i.ah, 266338304
  %i.aj = or disjoint i64 %i.ai, %i.ac            ; 2 uses
  %i.ak = icmp sgt i8 %i.af, -1
  br i1 %i.ak, label %bb.t, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 5 ; 2 uses
  %i.am = load i8, ptr %i.ae, align 1, !tbaa !94  ; 2 uses
  %i.an = sext i8 %i.am to i64
  %i.ao = shl nsw i64 %i.an, 28
  %i.ap = and i64 %i.ao, 34091302912
  %i.aq = or disjoint i64 %i.ap, %i.aj            ; 6 uses
  %i.ar = icmp sgt i8 %i.am, -1
  br i1 %i.ar, label %bb.t, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 6 ; 2 uses
  %i.at = load i8, ptr %i.al, align 1, !tbaa !94
  %i.au = icmp sgt i8 %i.at, -1
  br i1 %i.au, label %bb.t, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 7 ; 2 uses
  %i.aw = load i8, ptr %i.as, align 1, !tbaa !94
  %i.ax = icmp sgt i8 %i.aw, -1
  br i1 %i.ax, label %bb.t, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.az = load i8, ptr %i.av, align 1, !tbaa !94
  %i.ba = icmp sgt i8 %i.az, -1
  br i1 %i.ba, label %bb.t, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.bc = load i8, ptr %i.ay, align 1, !tbaa !94
  %i.bd = icmp sgt i8 %i.bc, -1
  br i1 %i.bd, label %bb.t, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bf = load i8, ptr %i.bb, align 1, !tbaa !94
  %i.bg = icmp sgt i8 %i.bf, -1
  br i1 %i.bg, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull @.str.77)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @__cxa_throw(ptr nonnull %i.bh, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.bh) #28
  br label %common.resume

.lr.ph:                                           ; preds = %bb.d, %bb.q
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.q ], [ 0, %bb.d ] ; 3 uses
  %.1.i13.i.i1526 = phi i64 [ %i.bp, %bb.q ], [ 0, %bb.d ] ; 2 uses
  %.170.i12.i.i1525 = phi ptr [ %i.bl, %bb.q ], [ %2, %bb.d ] ; 2 uses
  %i.bj = load i8, ptr %.170.i12.i.i1525, align 1, !tbaa !94 ; 3 uses
  %i.bk = icmp slt i8 %i.bj, 0
  %i.bl = getelementptr inbounds nuw i8, ptr %.170.i12.i.i1525, i64 1 ; 3 uses
  br i1 %i.bk, label %bb.q, label %.critedge.i16.i.i

bb.q:                                             ; preds = %.lr.ph
  %i.bm = and i8 %i.bj, 127
  %i.bn = zext nneg i8 %i.bm to i64
  %i.bo = shl i64 %i.bn, %indvars.iv
  %i.bp = or i64 %i.bo, %.1.i13.i.i1526
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 7
  %.not.i15.i.i = icmp eq ptr %i.bl, %i.h
  br i1 %.not.i15.i.i, label %._crit_edge, label %.lr.ph, !llvm.loop !46

._crit_edge:                                      ; preds = %bb.q
  %i.bq = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef nonnull @.str.78)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %._crit_edge
  tail call void @__cxa_throw(ptr nonnull %i.bq, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

bb.s:                                             ; preds = %._crit_edge
  %i.br = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.bq) #28
  br label %common.resume

.critedge.i16.i.i:                                ; preds = %.lr.ph
  %i.bs = zext nneg i8 %i.bj to i64
  %i.bt = shl i64 %i.bs, %indvars.iv
  %i.bu = or i64 %i.bt, %.1.i13.i.i1526
  br label %bb.t

bb.t:                                             ; preds = %.critedge.i16.i.i, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %.271.i17.i.i = phi ptr [ %i.bl, %.critedge.i16.i.i ], [ %i.be, %bb.m ], [ %i.q, %bb.e ], [ %i.x, %bb.f ], [ %i.ae, %bb.g ], [ %i.al, %bb.h ], [ %i.as, %bb.i ], [ %i.av, %bb.j ], [ %i.ay, %bb.k ], [ %i.bb, %bb.l ]
  %.2.i18.i.i = phi i64 [ %i.bu, %.critedge.i16.i.i ], [ %i.aq, %bb.m ], [ %i.v, %bb.e ], [ %i.ac, %bb.f ], [ %i.aj, %bb.g ], [ %i.aq, %bb.h ], [ %i.aq, %bb.i ], [ %i.aq, %bb.j ], [ %i.aq, %bb.k ], [ %i.aq, %bb.l ]
  %i.bv = ptrtoint ptr %.271.i17.i.i to i64
  %i.bw = sub i64 %i.bv, %i.l
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit21.i.i

common.resume:                                    ; preds = %bb.amz, %bb.anc, %bb.amb, %bb.ame, %bb.aeu, %bb.aex, %bb.ady, %bb.aeb, %bb.acy, %bb.adb, %bb.ace, %bb.ach, %bb.abf, %bb.abi, %bb.aah, %bb.aak, %bb.zf, %bb.zi, %bb.yh, %bb.yk, %bb.xj, %bb.xm, %bb.ps, %bb.pv, %bb.oy, %bb.pb, %bb.ob, %bb.oe, %bb.nd, %bb.ng, %bb.mf, %bb.mi, %bb.lh, %bb.lk, %bb.kj, %bb.km, %bb.jp, %bb.js, %bb.ir, %bb.iu, %bb.hx, %bb.ia, %bb.gy, %bb.hb, %bb.gc, %bb.gf, %bb.fa, %bb.fd, %bb.dy, %bb.eb, %bb.cv, %bb.cy, %bb.bp, %bb.bs, %bb.ar, %bb.au, %bb.p, %bb.s, %bb.anf, %.body21.i.i, %bb.afj, %bb.afd, %bb.aee, %bb.abp, %bb.aao, %bb.zs, %bb.yp, %bb.xs, %_ZN9pb_sample6WeaponD2Ev.exit145, %bb.qh, %bb.qb, %bb.ok, %bb.nk, %bb.mo, %bb.lo, %bb.ks, %bb.ja, %bb.hi, %bb.gi, %bb.el, %bb.eh, %bb.dj, %bb.df, %bb.cg, %bb.cc, %bb.az, %bb.ac
  %common.resume.op = phi { ptr, i32 } [ %.pn.i.i, %bb.anf ], [ %i.ck, %bb.ac ], [ %i.br, %bb.s ], [ %i.fi, %bb.az ], [ %i.ew, %bb.au ], [ %i.io, %bb.cc ], [ %i.ir, %bb.cg ], [ %i.hv, %bb.bs ], [ %i.lx, %bb.df ], [ %i.ma, %bb.dj ], [ %i.li, %bb.cy ], [ %i.pg, %bb.eh ], [ %i.pj, %bb.el ], [ %i.or, %bb.eb ], [ %i.sa, %bb.fd ], [ %.pn.i190.i, %bb.gi ], [ %i.vl, %bb.gf ], [ %i.zd, %bb.hi ], [ %i.yo, %bb.hb ], [ %i.abp, %bb.ia ], [ %i.aez, %bb.ja ], [ %i.aek, %bb.iu ], [ %i.ahl, %bb.js ], [ %i.akv, %bb.ks ], [ %i.akg, %bb.km ], [ %i.aoj, %bb.lo ], [ %i.aoa, %bb.lk ], [ %i.asd, %bb.mo ], [ %i.aro, %bb.mi ], [ %i.avr, %bb.nk ], [ %i.avi, %bb.ng ], [ %i.azl, %bb.ok ], [ %i.ayw, %bb.oe ], [ %i.bbk, %bb.pb ], [ %i.beu, %bb.qb ], [ %i.bfo, %bb.qh ], [ %.pn.pn.i.i, %_ZN9pb_sample6WeaponD2Ev.exit145 ], [ %i.bef, %bb.pv ], [ %i.cjn, %bb.xs ], [ %i.ciy, %bb.xm ], [ %i.cml, %bb.yp ], [ %i.clz, %bb.yk ], [ %i.cpq, %bb.zs ], [ %i.coy, %bb.zi ], [ %i.cte, %bb.aao ], [ %i.csv, %bb.aak ], [ %i.cwy, %bb.abp ], [ %i.cwj, %bb.abi ], [ %i.czk, %bb.ach ], [ %i.dcf, %bb.adb ], [ %.pn.i312.i, %bb.aee ], [ %i.dfr, %bb.aeb ], [ %i.djj, %bb.afd ], [ %i.dkd, %bb.afj ], [ %.pn.pn.i485.i, %.body21.i.i ], [ %i.diu, %bb.aex ], [ %i.ejn, %bb.ame ], [ %i.bi, %bb.p ], [ %i.en, %bb.ar ], [ %i.hm, %bb.bp ], [ %i.kz, %bb.cv ], [ %i.oi, %bb.dy ], [ %i.rr, %bb.fa ], [ %i.vc, %bb.gc ], [ %i.yf, %bb.gy ], [ %i.abg, %bb.hx ], [ %i.aeb, %bb.ir ], [ %i.ahc, %bb.jp ], [ %i.ajx, %bb.kj ], [ %i.anr, %bb.lh ], [ %i.arf, %bb.mf ], [ %i.auz, %bb.nd ], [ %i.ayn, %bb.ob ], [ %i.bbb, %bb.oy ], [ %i.bdw, %bb.ps ], [ %i.cip, %bb.xj ], [ %i.clq, %bb.yh ], [ %i.cop, %bb.zf ], [ %i.csm, %bb.aah ], [ %i.cwa, %bb.abf ], [ %i.czb, %bb.ace ], [ %i.dbw, %bb.acy ], [ %i.dfi, %bb.ady ], [ %i.dil, %bb.aeu ], [ %i.eje, %bb.amb ], [ %i.emn, %bb.amz ], [ %i.emw, %bb.anc ]
  resume { ptr, i32 } %common.resume.op

_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit21.i.i: ; preds = %bb.t, %bb.c
  %.0691 = phi i64 [ 1, %bb.c ], [ %i.bw, %bb.t ] ; 6 uses
  %.072.i19.i.i = phi i64 [ %i.k, %bb.c ], [ %.2.i18.i.i, %bb.t ]
  %i.bx = trunc i64 %.072.i19.i.i to i32          ; 2 uses
  %i.by = and i32 %i.bx, 7                        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  %i.bz = lshr i32 %i.bx, 3
  store i32 %i.bz, ptr %i.e, align 4, !tbaa !164
  %i.ca = load atomic i8, ptr @_ZGVZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11 acquire, align 8
  %i.cb = icmp eq i8 %i.ca, 0
  br i1 %i.cb, label %bb.u, label %bb.x, !prof !173

bb.u:                                             ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit21.i.i
  %i.cc = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11) #28
  %.not.i.i = icmp eq i32 %i.cc, 0
  br i1 %.not.i.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN6iguana6detail20get_pb_members_tupleIRN9pb_sample7MonsterEEEDaOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.802") align 8 @_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11, ptr noundef nonnull align 8 dereferenceable(232) %0)
          to label %bb.w unwind label %bb.amg

bb.w:                                             ; preds = %bb.v
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11) #28
  br label %bb.x

bb.x:                                             ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit21.i.i, %bb.u, %bb.w
  %.sroa.02.0.copyload.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11, i64 192), align 8, !tbaa !249
  %i.cd = load i32, ptr %i.e, align 4, !tbaa !164 ; 2 uses
  %.not.i3.i = icmp eq i32 %i.cd, 1
  br i1 %.not.i3.i, label %bb.y, label %bb.hd

bb.y:                                             ; preds = %bb.x
  %i.ce = load i64, ptr %17, align 8, !tbaa !438  ; 5 uses
  %i.cf = icmp ugt i64 %.0691, %i.ce
  br i1 %i.cf, label %bb.z, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.z:                                             ; preds = %bb.y
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %.0691, i64 noundef %i.ce) #32
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.y
  %i.cg = sub nuw i64 %i.ce, %.0691               ; 4 uses
  %i.ch = load ptr, ptr %i.f, align 8, !tbaa !439 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.0691 ; 14 uses
  %.not4.i.i = icmp eq i32 %i.by, 2
  br i1 %.not4.i.i, label %bb.ad, label %bb.aa, !prof !257

bb.aa:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.cj = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, ptr noundef nonnull @.str.79)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  tail call void @__cxa_throw(ptr nonnull %i.cj, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #32
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.ck = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.cj) #28
  br label %common.resume

bb.ad:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.0.copyload.i.i ; 6 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ce
  %i.cn = load i8, ptr %i.ci, align 1, !tbaa !94  ; 3 uses
  %i.co = icmp sgt i8 %i.cn, -1
  br i1 %i.co, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cp = zext nneg i8 %i.cn to i64
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i166.i

bb.af:                                            ; preds = %bb.ad
  %i.cq = ptrtoint ptr %i.ci to i64
  %i.cr = icmp ugt i64 %i.cg, 9
  br i1 %i.cr, label %bb.ag, label %.preheader925, !prof !257

.preheader925:                                    ; preds = %bb.af
  %.not.i.i162.i1528 = icmp samesign eq i64 %.0691, %i.ce
  br i1 %.not.i.i162.i1528, label %._crit_edge1533, label %.lr.ph1532

bb.ag:                                            ; preds = %bb.af
  %i.cs = and i8 %i.cn, 127
  %i.ct = zext nneg i8 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ci, i64 1
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ci, i64 2 ; 2 uses
  %i.cw = load i8, ptr %i.cu, align 1, !tbaa !94  ; 2 uses
  %i.cx = sext i8 %i.cw to i64
  %i.cy = shl nsw i64 %i.cx, 7
  %i.cz = and i64 %i.cy, 16256
  %i.da = or disjoint i64 %i.cz, %i.ct            ; 2 uses
  %i.db = icmp sgt i8 %i.cw, -1
  br i1 %i.db, label %bb.av, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ci, i64 3 ; 2 uses
  %i.dd = load i8, ptr %i.cv, align 1, !tbaa !94  ; 2 uses
  %i.de = sext i8 %i.dd to i64
  %i.df = shl nsw i64 %i.de, 14
  %i.dg = and i64 %i.df, 2080768
  %i.dh = or disjoint i64 %i.dg, %i.da            ; 2 uses
  %i.di = icmp sgt i8 %i.dd, -1
  br i1 %i.di, label %bb.av, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4 ; 2 uses
  %i.dk = load i8, ptr %i.dc, align 1, !tbaa !94  ; 2 uses
  %i.dl = sext i8 %i.dk to i64
  %i.dm = shl nsw i64 %i.dl, 21
  %i.dn = and i64 %i.dm, 266338304
  %i.do = or disjoint i64 %i.dn, %i.dh            ; 2 uses
  %i.dp = icmp sgt i8 %i.dk, -1
  br i1 %i.dp, label %bb.av, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ci, i64 5 ; 2 uses
  %i.dr = load i8, ptr %i.dj, align 1, !tbaa !94  ; 2 uses
  %i.ds = sext i8 %i.dr to i64
  %i.dt = shl nsw i64 %i.ds, 28
  %i.du = and i64 %i.dt, 34091302912
  %i.dv = or disjoint i64 %i.du, %i.do            ; 6 uses
  %i.dw = icmp sgt i8 %i.dr, -1
  br i1 %i.dw, label %bb.av, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ci, i64 6 ; 2 uses
  %i.dy = load i8, ptr %i.dq, align 1, !tbaa !94
  %i.dz = icmp sgt i8 %i.dy, -1
  br i1 %i.dz, label %bb.av, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ci, i64 7 ; 2 uses
  %i.eb = load i8, ptr %i.dx, align 1, !tbaa !94
  %i.ec = icmp sgt i8 %i.eb, -1
  br i1 %i.ec, label %bb.av, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 2 uses
  %i.ee = load i8, ptr %i.ea, align 1, !tbaa !94
  %i.ef = icmp sgt i8 %i.ee, -1
  br i1 %i.ef, label %bb.av, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ci, i64 9 ; 2 uses
  %i.eh = load i8, ptr %i.ed, align 1, !tbaa !94
  %i.ei = icmp sgt i8 %i.eh, -1
  br i1 %i.ei, label %bb.av, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ci, i64 10
  %i.ek = load i8, ptr %i.eg, align 1, !tbaa !94
  %i.el = icmp sgt i8 %i.ek, -1
  br i1 %i.el, label %bb.av, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.em = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.em, ptr noundef nonnull @.str.77)
          to label %bb.aq unwind label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  tail call void @__cxa_throw(ptr nonnull %i.em, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.en = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.em) #28
  br label %common.resume

.lr.ph1532:                                       ; preds = %.preheader925, %bb.as
  %indvars.iv2469 = phi i64 [ %indvars.iv.next2470, %bb.as ], [ 0, %.preheader925 ] ; 3 uses
  %.1.i.i160.i1530 = phi i64 [ %i.eu, %bb.as ], [ 0, %.preheader925 ] ; 2 uses
  %.170.i.i159.i1529 = phi ptr [ %i.eq, %bb.as ], [ %i.ci, %.preheader925 ] ; 2 uses
  %i.eo = load i8, ptr %.170.i.i159.i1529, align 1, !tbaa !94 ; 3 uses
  %i.ep = icmp slt i8 %i.eo, 0
  %i.eq = getelementptr inbounds nuw i8, ptr %.170.i.i159.i1529, i64 1 ; 3 uses
  br i1 %i.ep, label %bb.as, label %.critedge.i.i163.i

bb.as:                                            ; preds = %.lr.ph1532
  %i.er = and i8 %i.eo, 127
  %i.es = zext nneg i8 %i.er to i64
  %i.et = shl i64 %i.es, %indvars.iv2469
  %i.eu = or i64 %i.et, %.1.i.i160.i1530
  %indvars.iv.next2470 = add nuw nsw i64 %indvars.iv2469, 7
  %.not.i.i162.i = icmp eq ptr %i.eq, %i.cm
  br i1 %.not.i.i162.i, label %._crit_edge1533, label %.lr.ph1532, !llvm.loop !46

._crit_edge1533:                                  ; preds = %bb.as, %.preheader925
  %i.ev = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ev, ptr noundef nonnull @.str.78)
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %._crit_edge1533
  tail call void @__cxa_throw(ptr nonnull %i.ev, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

bb.au:                                            ; preds = %._crit_edge1533
  %i.ew = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ev) #28
  br label %common.resume

.critedge.i.i163.i:                               ; preds = %.lr.ph1532
  %i.ex = zext nneg i8 %i.eo to i64
  %i.ey = shl i64 %i.ex, %indvars.iv2469
  %i.ez = or i64 %i.ey, %.1.i.i160.i1530
  br label %bb.av

bb.av:                                            ; preds = %.critedge.i.i163.i, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %.271.i.i164.i = phi ptr [ %i.eq, %.critedge.i.i163.i ], [ %i.ej, %bb.ao ], [ %i.cv, %bb.ag ], [ %i.dc, %bb.ah ], [ %i.dj, %bb.ai ], [ %i.dq, %bb.aj ], [ %i.dx, %bb.ak ], [ %i.ea, %bb.al ], [ %i.ed, %bb.am ], [ %i.eg, %bb.an ]
  %.2.i.i165.i = phi i64 [ %i.ez, %.critedge.i.i163.i ], [ %i.dv, %bb.ao ], [ %i.da, %bb.ag ], [ %i.dh, %bb.ah ], [ %i.do, %bb.ai ], [ %i.dv, %bb.aj ], [ %i.dv, %bb.ak ], [ %i.dv, %bb.al ], [ %i.dv, %bb.am ], [ %i.dv, %bb.an ]
  %i.fa = ptrtoint ptr %.271.i.i164.i to i64
  %i.fb = sub i64 %i.fa, %i.cq
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i166.i

_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i166.i: ; preds = %bb.av, %bb.ae
  %.0552 = phi i64 [ 1, %bb.ae ], [ %i.fb, %bb.av ] ; 4 uses
  %.072.i.i167.i = phi i64 [ %i.cp, %bb.ae ], [ %.2.i.i165.i, %bb.av ]
  %i.fc = icmp ugt i64 %.0552, %i.cg
  br i1 %i.fc, label %bb.aw, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit5

bb.aw:                                            ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i166.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %.0552, i64 noundef %i.cg) #32
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit5: ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i166.i
  %i.fd = sub nuw i64 %i.cg, %.0552               ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.0552 ; 17 uses
  store i64 %i.fd, ptr %17, align 8, !tbaa !249
  store ptr %i.fe, ptr %i.f, align 8, !tbaa !363
  %i.ff = and i64 %.072.i.i167.i, 4294967295      ; 9 uses
  %i.fg = icmp ult i64 %i.fd, %i.ff
  br i1 %i.fg, label %bb.ax, label %bb.ba, !prof !169

bb.ax:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit5
  %i.fh = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.fh, ptr noundef nonnull @.str.84)
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %bb.ax
  tail call void @__cxa_throw(ptr nonnull %i.fh, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

end_hunk_0
begin_hunk_1_@_ZN6iguana9base_implIN9pb_sample7MonsterELh8EE7from_pbESt17basic_string_viewIcSt11char_traitsIcEE:bb.a

bb.gi:                                            ; preds = %bb.gh, %bb.ff
  %.pn.i190.i = phi { ptr, i32 } [ %i.vv, %bb.gh ], [ %i.sn, %bb.ff ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  br label %common.resume

bb.gj:                                            ; preds = %.critedge.i188.i
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %i.ff, i64 noundef %i.vw) #32
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit39: ; preds = %.critedge.i188.i
  %i.vy = sub nuw i64 %i.vw, %i.ff                ; 2 uses
  %i.vz = load ptr, ptr %i.f, align 8, !tbaa !439
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 %i.ff ; 2 uses
  store i64 %i.vy, ptr %17, align 8, !tbaa !249
  store ptr %i.wa, ptr %i.f, align 8, !tbaa !363
  br label %_ZN6iguana6detail12from_pb_implIN9pb_sample4Vec3EEEvRT_RSt17basic_string_viewIcSt11char_traitsIcEEj.exit.i

_ZN6iguana6detail12from_pb_implIN9pb_sample4Vec3EEEvRT_RSt17basic_string_viewIcSt11char_traitsIcEEj.exit.i: ; preds = %bb.ba, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit39
  %i.wb = phi ptr [ %i.wa, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit39 ], [ %i.fe, %bb.ba ] ; 14 uses
  %i.wc = phi i64 [ %i.vy, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit39 ], [ %i.fd, %bb.ba ] ; 3 uses
  %i.wd = icmp eq i64 %i.wc, 0
  br i1 %i.wd, label %.critedge.i.i, label %bb.gk

bb.gk:                                            ; preds = %_ZN6iguana6detail12from_pb_implIN9pb_sample4Vec3EEEvRT_RSt17basic_string_viewIcSt11char_traitsIcEEj.exit.i
  %i.we = getelementptr inbounds nuw i8, ptr %i.wb, i64 %i.wc
  %i.wf = load i8, ptr %i.wb, align 1, !tbaa !94  ; 3 uses
  %i.wg = icmp sgt i8 %i.wf, -1
  br i1 %i.wg, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %bb.gk
  %i.wh = zext nneg i8 %i.wf to i64
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i11.i

bb.gm:                                            ; preds = %bb.gk
  %i.wi = ptrtoint ptr %i.wb to i64
  %i.wj = icmp ugt i64 %i.wc, 9
  br i1 %i.wj, label %bb.gn, label %.lr.ph1572, !prof !257

bb.gn:                                            ; preds = %bb.gm
  %i.wk = and i8 %i.wf, 127
  %i.wl = zext nneg i8 %i.wk to i64
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wb, i64 1
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wb, i64 2 ; 2 uses
  %i.wo = load i8, ptr %i.wm, align 1, !tbaa !94  ; 2 uses
  %i.wp = sext i8 %i.wo to i64
  %i.wq = shl nsw i64 %i.wp, 7
  %i.wr = and i64 %i.wq, 16256
  %i.ws = or disjoint i64 %i.wr, %i.wl            ; 2 uses
  %i.wt = icmp sgt i8 %i.wo, -1
  br i1 %i.wt, label %bb.hc, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wb, i64 3 ; 2 uses
  %i.wv = load i8, ptr %i.wn, align 1, !tbaa !94  ; 2 uses
  %i.ww = sext i8 %i.wv to i64
  %i.wx = shl nsw i64 %i.ww, 14
  %i.wy = and i64 %i.wx, 2080768
  %i.wz = or disjoint i64 %i.wy, %i.ws            ; 2 uses
  %i.xa = icmp sgt i8 %i.wv, -1
  br i1 %i.xa, label %bb.hc, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wb, i64 4 ; 2 uses
  %i.xc = load i8, ptr %i.wu, align 1, !tbaa !94  ; 2 uses
  %i.xd = sext i8 %i.xc to i64
  %i.xe = shl nsw i64 %i.xd, 21
  %i.xf = and i64 %i.xe, 266338304
  %i.xg = or disjoint i64 %i.xf, %i.wz            ; 2 uses
  %i.xh = icmp sgt i8 %i.xc, -1
  br i1 %i.xh, label %bb.hc, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.xi = getelementptr inbounds nuw i8, ptr %i.wb, i64 5 ; 2 uses
  %i.xj = load i8, ptr %i.xb, align 1, !tbaa !94  ; 2 uses
  %i.xk = sext i8 %i.xj to i64
  %i.xl = shl nsw i64 %i.xk, 28
  %i.xm = and i64 %i.xl, 34091302912
  %i.xn = or disjoint i64 %i.xm, %i.xg            ; 6 uses
  %i.xo = icmp sgt i8 %i.xj, -1
  br i1 %i.xo, label %bb.hc, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.xp = getelementptr inbounds nuw i8, ptr %i.wb, i64 6 ; 2 uses
  %i.xq = load i8, ptr %i.xi, align 1, !tbaa !94
  %i.xr = icmp sgt i8 %i.xq, -1
  br i1 %i.xr, label %bb.hc, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.xs = getelementptr inbounds nuw i8, ptr %i.wb, i64 7 ; 2 uses
  %i.xt = load i8, ptr %i.xp, align 1, !tbaa !94
  %i.xu = icmp sgt i8 %i.xt, -1
  br i1 %i.xu, label %bb.hc, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.xv = getelementptr inbounds nuw i8, ptr %i.wb, i64 8 ; 2 uses
  %i.xw = load i8, ptr %i.xs, align 1, !tbaa !94
  %i.xx = icmp sgt i8 %i.xw, -1
  br i1 %i.xx, label %bb.hc, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.xy = getelementptr inbounds nuw i8, ptr %i.wb, i64 9 ; 2 uses
  %i.xz = load i8, ptr %i.xv, align 1, !tbaa !94
  %i.ya = icmp sgt i8 %i.xz, -1
  br i1 %i.ya, label %bb.hc, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.yb = getelementptr inbounds nuw i8, ptr %i.wb, i64 10
  %i.yc = load i8, ptr %i.xy, align 1, !tbaa !94
  %i.yd = icmp sgt i8 %i.yc, -1
  br i1 %i.yd, label %bb.hc, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.ye = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ye, ptr noundef nonnull @.str.77)
          to label %bb.gx unwind label %bb.gy

bb.gx:                                            ; preds = %bb.gw
  call void @__cxa_throw(ptr nonnull %i.ye, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

bb.gy:                                            ; preds = %bb.gw
  %i.yf = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ye) #28
  br label %common.resume

.lr.ph1572:                                       ; preds = %bb.gm, %bb.gz
  %indvars.iv2487 = phi i64 [ %indvars.iv.next2488, %bb.gz ], [ 0, %bb.gm ] ; 3 uses
  %.1.i.i5.i1570 = phi i64 [ %i.ym, %bb.gz ], [ 0, %bb.gm ] ; 2 uses
  %.170.i.i4.i1569 = phi ptr [ %i.yi, %bb.gz ], [ %i.wb, %bb.gm ] ; 2 uses
  %i.yg = load i8, ptr %.170.i.i4.i1569, align 1, !tbaa !94 ; 3 uses
  %i.yh = icmp slt i8 %i.yg, 0
  %i.yi = getelementptr inbounds nuw i8, ptr %.170.i.i4.i1569, i64 1 ; 3 uses
  br i1 %i.yh, label %bb.gz, label %.critedge.i.i8.i

bb.gz:                                            ; preds = %.lr.ph1572
  %i.yj = and i8 %i.yg, 127
  %i.yk = zext nneg i8 %i.yj to i64
  %i.yl = shl i64 %i.yk, %indvars.iv2487
  %i.ym = or i64 %i.yl, %.1.i.i5.i1570
  %indvars.iv.next2488 = add nuw nsw i64 %indvars.iv2487, 7
  %.not.i.i7.i = icmp eq ptr %i.yi, %i.we
  br i1 %.not.i.i7.i, label %._crit_edge1573, label %.lr.ph1572, !llvm.loop !46

._crit_edge1573:                                  ; preds = %bb.gz
  %i.yn = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.yn, ptr noundef nonnull @.str.78)
          to label %bb.ha unwind label %bb.hb

bb.ha:                                            ; preds = %._crit_edge1573
  call void @__cxa_throw(ptr nonnull %i.yn, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

bb.hb:                                            ; preds = %._crit_edge1573
  %i.yo = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.yn) #28
  br label %common.resume

.critedge.i.i8.i:                                 ; preds = %.lr.ph1572
  %i.yp = zext nneg i8 %i.yg to i64
  %i.yq = shl i64 %i.yp, %indvars.iv2487
  %i.yr = or i64 %i.yq, %.1.i.i5.i1570
  br label %bb.hc

bb.hc:                                            ; preds = %.critedge.i.i8.i, %bb.gv, %bb.gu, %bb.gt, %bb.gs, %bb.gr, %bb.gq, %bb.gp, %bb.go, %bb.gn
  %.271.i.i9.i = phi ptr [ %i.yi, %.critedge.i.i8.i ], [ %i.yb, %bb.gv ], [ %i.wn, %bb.gn ], [ %i.wu, %bb.go ], [ %i.xb, %bb.gp ], [ %i.xi, %bb.gq ], [ %i.xp, %bb.gr ], [ %i.xs, %bb.gs ], [ %i.xv, %bb.gt ], [ %i.xy, %bb.gu ]
  %.2.i.i10.i = phi i64 [ %i.yr, %.critedge.i.i8.i ], [ %i.xn, %bb.gv ], [ %i.ws, %bb.gn ], [ %i.wz, %bb.go ], [ %i.xg, %bb.gp ], [ %i.xn, %bb.gq ], [ %i.xn, %bb.gr ], [ %i.xn, %bb.gs ], [ %i.xn, %bb.gt ], [ %i.xn, %bb.gu ]
  %i.ys = ptrtoint ptr %.271.i.i9.i to i64
  %i.yt = sub i64 %i.ys, %i.wi
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i11.i

_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i11.i: ; preds = %bb.hc, %bb.gl
  %.20 = phi i64 [ 1, %bb.gl ], [ %i.yt, %bb.hc ]
  %.072.i.i12.i = phi i64 [ %i.wh, %bb.gl ], [ %.2.i.i10.i, %bb.hc ]
  %i.yu = trunc i64 %.072.i.i12.i to i32          ; 2 uses
  %i.yv = and i32 %i.yu, 7
  %i.yw = lshr i32 %i.yu, 3                       ; 2 uses
  store i32 %i.yw, ptr %i.e, align 4, !tbaa !164
  br label %bb.hd

bb.hd:                                            ; preds = %bb.x, %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i11.i
  %.pr739 = phi i32 [ %i.cd, %bb.x ], [ %i.yw, %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i11.i ] ; 2 uses
  %.1692.ph = phi i64 [ %.0691, %bb.x ], [ %.20, %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i11.i ] ; 7 uses
  %.0682.ph = phi i32 [ %i.by, %bb.x ], [ %i.yv, %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i11.i ] ; 2 uses
  %.sroa.02.0.copyload.i14.i729 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11, i64 168), align 8, !tbaa !249
  %.not.i15.i = icmp eq i32 %.pr739, 2
  br i1 %.not.i15.i, label %bb.he, label %thread-pre-split738

bb.he:                                            ; preds = %bb.hd
  %i.yx = load i64, ptr %17, align 8, !tbaa !438  ; 6 uses
  %i.yy = icmp ugt i64 %.1692.ph, %i.yx
  br i1 %i.yy, label %bb.hf, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit43

bb.hf:                                            ; preds = %bb.he
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %.1692.ph, i64 noundef %i.yx) #32
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit43: ; preds = %bb.he
  %i.yz = sub nuw i64 %i.yx, %.1692.ph            ; 5 uses
  %i.za = load ptr, ptr %i.f, align 8, !tbaa !439 ; 2 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 %.1692.ph ; 14 uses
  %.not4.i17.i = icmp eq i32 %.0682.ph, 0
  br i1 %.not4.i17.i, label %bb.hj, label %bb.hg, !prof !257

bb.hg:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit43
  %i.zc = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.zc, ptr noundef nonnull @.str.79)
          to label %bb.hh unwind label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  call void @__cxa_throw(ptr nonnull %i.zc, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #32
  unreachable

bb.hi:                                            ; preds = %bb.hg
  %i.zd = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.zc) #28
  br label %common.resume

bb.hj:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit43
  %i.ze = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.0.copyload.i14.i729
  %i.zf = getelementptr inbounds nuw i8, ptr %i.za, i64 %i.yx ; 2 uses
  %i.zg = load i8, ptr %i.zb, align 1, !tbaa !94  ; 3 uses
  %i.zh = icmp sgt i8 %i.zg, -1
  br i1 %i.zh, label %bb.hk, label %bb.hl

bb.hk:                                            ; preds = %bb.hj
  %i.zi = zext nneg i8 %i.zg to i64
  br label %_ZN6iguana6detail12from_pb_implIiEEvRT_RSt17basic_string_viewIcSt11char_traitsIcEEj.exit.i.i

bb.hl:                                            ; preds = %bb.hj
  %i.zj = ptrtoint ptr %i.zb to i64
  %i.zk = icmp ugt i64 %i.yz, 9
  br i1 %i.zk, label %bb.hm, label %.preheader918, !prof !257

.preheader918:                                    ; preds = %bb.hl
  %.not.i.i.i.i1574 = icmp samesign eq i64 %.1692.ph, %i.yx
  br i1 %.not.i.i.i.i1574, label %._crit_edge1579, label %.lr.ph1578

bb.hm:                                            ; preds = %bb.hl
  %i.zl = and i8 %i.zg, 127
  %i.zm = zext nneg i8 %i.zl to i64
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zb, i64 1
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zb, i64 2 ; 2 uses
  %i.zp = load i8, ptr %i.zn, align 1, !tbaa !94  ; 2 uses
  %i.zq = sext i8 %i.zp to i64
  %i.zr = shl nsw i64 %i.zq, 7
  %i.zs = and i64 %i.zr, 16256
  %i.zt = or disjoint i64 %i.zs, %i.zm            ; 2 uses
  %i.zu = icmp sgt i8 %i.zp, -1
  br i1 %i.zu, label %bb.ib, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zb, i64 3 ; 2 uses
  %i.zw = load i8, ptr %i.zo, align 1, !tbaa !94  ; 2 uses
  %i.zx = sext i8 %i.zw to i64
  %i.zy = shl nsw i64 %i.zx, 14
  %i.zz = and i64 %i.zy, 2080768
  %i.aaa = or disjoint i64 %i.zz, %i.zt           ; 2 uses
  %i.aab = icmp sgt i8 %i.zw, -1
  br i1 %i.aab, label %bb.ib, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zb, i64 4 ; 2 uses
  %i.aad = load i8, ptr %i.zv, align 1, !tbaa !94 ; 2 uses
  %i.aae = sext i8 %i.aad to i64
  %i.aaf = shl nsw i64 %i.aae, 21
  %i.aag = and i64 %i.aaf, 266338304
  %i.aah = or disjoint i64 %i.aag, %i.aaa         ; 2 uses
  %i.aai = icmp sgt i8 %i.aad, -1
  br i1 %i.aai, label %bb.ib, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.zb, i64 5 ; 2 uses
  %i.aak = load i8, ptr %i.aac, align 1, !tbaa !94 ; 2 uses
  %i.aal = sext i8 %i.aak to i64
  %i.aam = shl nsw i64 %i.aal, 28
  %i.aan = and i64 %i.aam, 34091302912
  %i.aao = or disjoint i64 %i.aan, %i.aah         ; 6 uses
  %i.aap = icmp sgt i8 %i.aak, -1
  br i1 %i.aap, label %bb.ib, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.zb, i64 6 ; 2 uses
  %i.aar = load i8, ptr %i.aaj, align 1, !tbaa !94
  %i.aas = icmp sgt i8 %i.aar, -1
  br i1 %i.aas, label %bb.ib, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.aat = getelementptr inbounds nuw i8, ptr %i.zb, i64 7 ; 2 uses
  %i.aau = load i8, ptr %i.aaq, align 1, !tbaa !94
  %i.aav = icmp sgt i8 %i.aau, -1
  br i1 %i.aav, label %bb.ib, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.zb, i64 8 ; 2 uses
  %i.aax = load i8, ptr %i.aat, align 1, !tbaa !94
  %i.aay = icmp sgt i8 %i.aax, -1
  br i1 %i.aay, label %bb.ib, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.zb, i64 9 ; 2 uses
  %i.aba = load i8, ptr %i.aaw, align 1, !tbaa !94
  %i.abb = icmp sgt i8 %i.aba, -1
  br i1 %i.abb, label %bb.ib, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.abc = getelementptr inbounds nuw i8, ptr %i.zb, i64 10
  %i.abd = load i8, ptr %i.aaz, align 1, !tbaa !94
  %i.abe = icmp sgt i8 %i.abd, -1
  br i1 %i.abe, label %bb.ib, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.abf = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.abf, ptr noundef nonnull @.str.77)
          to label %bb.hw unwind label %bb.hx

bb.hw:                                            ; preds = %bb.hv
  call void @__cxa_throw(ptr nonnull %i.abf, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

bb.hx:                                            ; preds = %bb.hv
  %i.abg = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.abf) #28
  br label %common.resume

.lr.ph1578:                                       ; preds = %.preheader918, %bb.hy
  %indvars.iv2490 = phi i64 [ %indvars.iv.next2491, %bb.hy ], [ 0, %.preheader918 ] ; 3 uses
  %.1.i.i.i.i1576 = phi i64 [ %i.abn, %bb.hy ], [ 0, %.preheader918 ] ; 2 uses
  %.170.i.i.i.i1575 = phi ptr [ %i.abj, %bb.hy ], [ %i.zb, %.preheader918 ] ; 2 uses
  %i.abh = load i8, ptr %.170.i.i.i.i1575, align 1, !tbaa !94 ; 3 uses
  %i.abi = icmp slt i8 %i.abh, 0
  %i.abj = getelementptr inbounds nuw i8, ptr %.170.i.i.i.i1575, i64 1 ; 3 uses
  br i1 %i.abi, label %bb.hy, label %.critedge.i.i.i.i

bb.hy:                                            ; preds = %.lr.ph1578
  %i.abk = and i8 %i.abh, 127
  %i.abl = zext nneg i8 %i.abk to i64
  %i.abm = shl i64 %i.abl, %indvars.iv2490
  %i.abn = or i64 %i.abm, %.1.i.i.i.i1576
  %indvars.iv.next2491 = add nuw nsw i64 %indvars.iv2490, 7
  %.not.i.i.i.i = icmp eq ptr %i.abj, %i.zf
  br i1 %.not.i.i.i.i, label %._crit_edge1579, label %.lr.ph1578, !llvm.loop !46

._crit_edge1579:                                  ; preds = %bb.hy, %.preheader918
  %i.abo = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.abo, ptr noundef nonnull @.str.78)
          to label %bb.hz unwind label %bb.ia

bb.hz:                                            ; preds = %._crit_edge1579
  call void @__cxa_throw(ptr nonnull %i.abo, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

bb.ia:                                            ; preds = %._crit_edge1579
  %i.abp = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.abo) #28
  br label %common.resume

.critedge.i.i.i.i:                                ; preds = %.lr.ph1578
  %i.abq = zext nneg i8 %i.abh to i64
  %i.abr = shl i64 %i.abq, %indvars.iv2490
  %i.abs = or i64 %i.abr, %.1.i.i.i.i1576
  br label %bb.ib

bb.ib:                                            ; preds = %.critedge.i.i.i.i, %bb.hu, %bb.ht, %bb.hs, %bb.hr, %bb.hq, %bb.hp, %bb.ho, %bb.hn, %bb.hm
  %.271.i.i.i.i = phi ptr [ %i.abj, %.critedge.i.i.i.i ], [ %i.abc, %bb.hu ], [ %i.zo, %bb.hm ], [ %i.zv, %bb.hn ], [ %i.aac, %bb.ho ], [ %i.aaj, %bb.hp ], [ %i.aaq, %bb.hq ], [ %i.aat, %bb.hr ], [ %i.aaw, %bb.hs ], [ %i.aaz, %bb.ht ]
  %.2.i.i.i.i = phi i64 [ %i.abs, %.critedge.i.i.i.i ], [ %i.aao, %bb.hu ], [ %i.zt, %bb.hm ], [ %i.aaa, %bb.hn ], [ %i.aah, %bb.ho ], [ %i.aao, %bb.hp ], [ %i.aao, %bb.hq ], [ %i.aao, %bb.hr ], [ %i.aao, %bb.hs ], [ %i.aao, %bb.ht ]
  %i.abt = ptrtoint ptr %.271.i.i.i.i to i64
  %i.abu = sub i64 %i.abt, %i.zj
  br label %_ZN6iguana6detail12from_pb_implIiEEvRT_RSt17basic_string_viewIcSt11char_traitsIcEEj.exit.i.i

_ZN6iguana6detail12from_pb_implIiEEvRT_RSt17basic_string_viewIcSt11char_traitsIcEEj.exit.i.i: ; preds = %bb.ib, %bb.hk
  %.0 = phi i64 [ 1, %bb.hk ], [ %i.abu, %bb.ib ] ; 6 uses
  %.072.i.i.i.i = phi i64 [ %i.zi, %bb.hk ], [ %.2.i.i.i.i, %bb.ib ]
  %i.abv = trunc i64 %.072.i.i.i.i to i32
  store i32 %i.abv, ptr %i.ze, align 4, !tbaa !164
  %i.abw = icmp ugt i64 %.0, %i.yz
  br i1 %i.abw, label %bb.ic, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit47

bb.ic:                                            ; preds = %_ZN6iguana6detail12from_pb_implIiEEvRT_RSt17basic_string_viewIcSt11char_traitsIcEEj.exit.i.i
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %.0, i64 noundef %i.yz) #32
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit47: ; preds = %_ZN6iguana6detail12from_pb_implIiEEvRT_RSt17basic_string_viewIcSt11char_traitsIcEEj.exit.i.i
  %i.abx = sub nuw i64 %i.yz, %.0                 ; 2 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %i.zb, i64 %.0 ; 14 uses
  store i64 %i.abx, ptr %17, align 8, !tbaa !249
  store ptr %i.aby, ptr %i.f, align 8, !tbaa !363
  %i.abz = icmp eq i64 %i.yz, %.0
  br i1 %i.abz, label %.critedge.i.i, label %bb.id

bb.id:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit47
  %i.aca = load i8, ptr %i.aby, align 1, !tbaa !94 ; 3 uses
  %i.acb = icmp sgt i8 %i.aca, -1
  br i1 %i.acb, label %bb.ie, label %bb.if

bb.ie:                                            ; preds = %bb.id
  %i.acc = zext nneg i8 %i.aca to i64
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i25.i

bb.if:                                            ; preds = %bb.id
  %i.acd = ptrtoint ptr %i.aby to i64
  %i.ace = icmp ugt i64 %i.abx, 9
  br i1 %i.ace, label %bb.ig, label %.preheader917, !prof !257

.preheader917:                                    ; preds = %bb.if
  %i.acf = add nuw nsw i64 %.1692.ph, %.0
  %.not.i.i21.i1580 = icmp samesign eq i64 %i.acf, %i.yx
  br i1 %.not.i.i21.i1580, label %._crit_edge1585, label %.lr.ph1584

bb.ig:                                            ; preds = %bb.if
  %i.acg = and i8 %i.aca, 127
  %i.ach = zext nneg i8 %i.acg to i64
  %i.aci = getelementptr inbounds nuw i8, ptr %i.aby, i64 1
  %i.acj = getelementptr inbounds nuw i8, ptr %i.aby, i64 2 ; 2 uses
  %i.ack = load i8, ptr %i.aci, align 1, !tbaa !94 ; 2 uses
  %i.acl = sext i8 %i.ack to i64
  %i.acm = shl nsw i64 %i.acl, 7
  %i.acn = and i64 %i.acm, 16256
  %i.aco = or disjoint i64 %i.acn, %i.ach         ; 2 uses
  %i.acp = icmp sgt i8 %i.ack, -1
  br i1 %i.acp, label %bb.iv, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.acq = getelementptr inbounds nuw i8, ptr %i.aby, i64 3 ; 2 uses
  %i.acr = load i8, ptr %i.acj, align 1, !tbaa !94 ; 2 uses
  %i.acs = sext i8 %i.acr to i64
  %i.act = shl nsw i64 %i.acs, 14
  %i.acu = and i64 %i.act, 2080768
  %i.acv = or disjoint i64 %i.acu, %i.aco         ; 2 uses
  %i.acw = icmp sgt i8 %i.acr, -1
  br i1 %i.acw, label %bb.iv, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.acx = getelementptr inbounds nuw i8, ptr %i.aby, i64 4 ; 2 uses
  %i.acy = load i8, ptr %i.acq, align 1, !tbaa !94 ; 2 uses
  %i.acz = sext i8 %i.acy to i64
  %i.ada = shl nsw i64 %i.acz, 21
  %i.adb = and i64 %i.ada, 266338304
  %i.adc = or disjoint i64 %i.adb, %i.acv         ; 2 uses
  %i.add = icmp sgt i8 %i.acy, -1
  br i1 %i.add, label %bb.iv, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.ade = getelementptr inbounds nuw i8, ptr %i.aby, i64 5 ; 2 uses
  %i.adf = load i8, ptr %i.acx, align 1, !tbaa !94 ; 2 uses
  %i.adg = sext i8 %i.adf to i64
  %i.adh = shl nsw i64 %i.adg, 28
  %i.adi = and i64 %i.adh, 34091302912
  %i.adj = or disjoint i64 %i.adi, %i.adc         ; 6 uses
  %i.adk = icmp sgt i8 %i.adf, -1
  br i1 %i.adk, label %bb.iv, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.adl = getelementptr inbounds nuw i8, ptr %i.aby, i64 6 ; 2 uses
  %i.adm = load i8, ptr %i.ade, align 1, !tbaa !94
  %i.adn = icmp sgt i8 %i.adm, -1
  br i1 %i.adn, label %bb.iv, label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.ado = getelementptr inbounds nuw i8, ptr %i.aby, i64 7 ; 2 uses
  %i.adp = load i8, ptr %i.adl, align 1, !tbaa !94
  %i.adq = icmp sgt i8 %i.adp, -1
  br i1 %i.adq, label %bb.iv, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.adr = getelementptr inbounds nuw i8, ptr %i.aby, i64 8 ; 2 uses
  %i.ads = load i8, ptr %i.ado, align 1, !tbaa !94
  %i.adt = icmp sgt i8 %i.ads, -1
  br i1 %i.adt, label %bb.iv, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.adu = getelementptr inbounds nuw i8, ptr %i.aby, i64 9 ; 2 uses
  %i.adv = load i8, ptr %i.adr, align 1, !tbaa !94
  %i.adw = icmp sgt i8 %i.adv, -1
  br i1 %i.adw, label %bb.iv, label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.adx = getelementptr inbounds nuw i8, ptr %i.aby, i64 10
  %i.ady = load i8, ptr %i.adu, align 1, !tbaa !94
  %i.adz = icmp sgt i8 %i.ady, -1
  br i1 %i.adz, label %bb.iv, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.aea = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aea, ptr noundef nonnull @.str.77)
          to label %bb.iq unwind label %bb.ir

bb.iq:                                            ; preds = %bb.ip
  call void @__cxa_throw(ptr nonnull %i.aea, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

bb.ir:                                            ; preds = %bb.ip
  %i.aeb = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.aea) #28
  br label %common.resume

.lr.ph1584:                                       ; preds = %.preheader917, %bb.is
  %indvars.iv2493 = phi i64 [ %indvars.iv.next2494, %bb.is ], [ 0, %.preheader917 ] ; 3 uses
  %.1.i.i19.i1582 = phi i64 [ %i.aei, %bb.is ], [ 0, %.preheader917 ] ; 2 uses
  %.170.i.i18.i1581 = phi ptr [ %i.aee, %bb.is ], [ %i.aby, %.preheader917 ] ; 2 uses
  %i.aec = load i8, ptr %.170.i.i18.i1581, align 1, !tbaa !94 ; 3 uses
  %i.aed = icmp slt i8 %i.aec, 0
  %i.aee = getelementptr inbounds nuw i8, ptr %.170.i.i18.i1581, i64 1 ; 3 uses
  br i1 %i.aed, label %bb.is, label %.critedge.i.i22.i

bb.is:                                            ; preds = %.lr.ph1584
  %i.aef = and i8 %i.aec, 127
  %i.aeg = zext nneg i8 %i.aef to i64
  %i.aeh = shl i64 %i.aeg, %indvars.iv2493
  %i.aei = or i64 %i.aeh, %.1.i.i19.i1582
  %indvars.iv.next2494 = add nuw nsw i64 %indvars.iv2493, 7
  %.not.i.i21.i = icmp eq ptr %i.aee, %i.zf
  br i1 %.not.i.i21.i, label %._crit_edge1585, label %.lr.ph1584, !llvm.loop !46

._crit_edge1585:                                  ; preds = %bb.is, %.preheader917
  %i.aej = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aej, ptr noundef nonnull @.str.78)
          to label %bb.it unwind label %bb.iu

bb.it:                                            ; preds = %._crit_edge1585
  call void @__cxa_throw(ptr nonnull %i.aej, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

bb.iu:                                            ; preds = %._crit_edge1585
  %i.aek = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.aej) #28
  br label %common.resume

.critedge.i.i22.i:                                ; preds = %.lr.ph1584
  %i.ael = zext nneg i8 %i.aec to i64
  %i.aem = shl i64 %i.ael, %indvars.iv2493
  %i.aen = or i64 %i.aem, %.1.i.i19.i1582
  br label %bb.iv

bb.iv:                                            ; preds = %.critedge.i.i22.i, %bb.io, %bb.in, %bb.im, %bb.il, %bb.ik, %bb.ij, %bb.ii, %bb.ih, %bb.ig
  %.271.i.i23.i = phi ptr [ %i.aee, %.critedge.i.i22.i ], [ %i.adx, %bb.io ], [ %i.acj, %bb.ig ], [ %i.acq, %bb.ih ], [ %i.acx, %bb.ii ], [ %i.ade, %bb.ij ], [ %i.adl, %bb.ik ], [ %i.ado, %bb.il ], [ %i.adr, %bb.im ], [ %i.adu, %bb.in ]
  %.2.i.i24.i = phi i64 [ %i.aen, %.critedge.i.i22.i ], [ %i.adj, %bb.io ], [ %i.aco, %bb.ig ], [ %i.acv, %bb.ih ], [ %i.adc, %bb.ii ], [ %i.adj, %bb.ij ], [ %i.adj, %bb.ik ], [ %i.adj, %bb.il ], [ %i.adj, %bb.im ], [ %i.adj, %bb.in ]
  %i.aeo = ptrtoint ptr %.271.i.i23.i to i64
  %i.aep = sub i64 %i.aeo, %i.acd
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i25.i

_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i25.i: ; preds = %bb.iv, %bb.ie
  %.19 = phi i64 [ 1, %bb.ie ], [ %i.aep, %bb.iv ]
  %.072.i.i26.i = phi i64 [ %i.acc, %bb.ie ], [ %.2.i.i24.i, %bb.iv ]
  %i.aeq = trunc i64 %.072.i.i26.i to i32         ; 2 uses
  %i.aer = and i32 %i.aeq, 7
  %i.aes = lshr i32 %i.aeq, 3                     ; 2 uses
  store i32 %i.aes, ptr %i.e, align 4, !tbaa !164
  br label %thread-pre-split738

thread-pre-split738:                              ; preds = %bb.hd, %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i25.i
  %.pr753 = phi i32 [ %i.aes, %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i25.i ], [ %.pr739, %bb.hd ] ; 2 uses
  %.2693 = phi i64 [ %.19, %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i25.i ], [ %.1692.ph, %bb.hd ] ; 7 uses
  %.1683 = phi i32 [ %i.aer, %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i25.i ], [ %.0682.ph, %bb.hd ] ; 2 uses
  %.sroa.02.0.copyload.i28.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11, i64 144), align 8, !tbaa !249
  %.not.i29.i = icmp eq i32 %.pr753, 3
  br i1 %.not.i29.i, label %bb.iw, label %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm2EEEEDaS3_.exit.i.thread744

bb.iw:                                            ; preds = %thread-pre-split738
  %i.aet = load i64, ptr %17, align 8, !tbaa !438 ; 6 uses
  %i.aeu = icmp ugt i64 %.2693, %i.aet
  br i1 %i.aeu, label %bb.ix, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit51

bb.ix:                                            ; preds = %bb.iw
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %.2693, i64 noundef %i.aet) #32
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit51: ; preds = %bb.iw
  %i.aev = sub nuw i64 %i.aet, %.2693             ; 5 uses
  %i.aew = load ptr, ptr %i.f, align 8, !tbaa !439 ; 2 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aew, i64 %.2693 ; 14 uses
  %.not4.i31.i = icmp eq i32 %.1683, 0
  br i1 %.not4.i31.i, label %bb.jb, label %bb.iy, !prof !257

bb.iy:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit51
  %i.aey = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aey, ptr noundef nonnull @.str.79)
          to label %bb.iz unwind label %bb.ja

bb.iz:                                            ; preds = %bb.iy
  call void @__cxa_throw(ptr nonnull %i.aey, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #32
  unreachable

bb.ja:                                            ; preds = %bb.iy
  %i.aez = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.aey) #28
  br label %common.resume

bb.jb:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit51
  %i.afa = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.0.copyload.i28.i
  %i.afb = getelementptr inbounds nuw i8, ptr %i.aew, i64 %i.aet ; 2 uses
  %i.afc = load i8, ptr %i.aex, align 1, !tbaa !94 ; 3 uses
  %i.afd = icmp sgt i8 %i.afc, -1
  br i1 %i.afd, label %bb.jc, label %bb.jd

bb.jc:                                            ; preds = %bb.jb
  %i.afe = zext nneg i8 %i.afc to i64
  br label %_ZN6iguana6detail12from_pb_implIiEEvRT_RSt17basic_string_viewIcSt11char_traitsIcEEj.exit.i39.i

bb.jd:                                            ; preds = %bb.jb
  %i.aff = ptrtoint ptr %i.aex to i64
  %i.afg = icmp ugt i64 %i.aev, 9
  br i1 %i.afg, label %bb.je, label %.preheader916, !prof !257

.preheader916:                                    ; preds = %bb.jd
  %.not.i.i.i35.i1586 = icmp samesign eq i64 %.2693, %i.aet
  br i1 %.not.i.i.i35.i1586, label %._crit_edge1591, label %.lr.ph1590

bb.je:                                            ; preds = %bb.jd
  %i.afh = and i8 %i.afc, 127
  %i.afi = zext nneg i8 %i.afh to i64
  %i.afj = getelementptr inbounds nuw i8, ptr %i.aex, i64 1
  %i.afk = getelementptr inbounds nuw i8, ptr %i.aex, i64 2 ; 2 uses
  %i.afl = load i8, ptr %i.afj, align 1, !tbaa !94 ; 2 uses
  %i.afm = sext i8 %i.afl to i64
  %i.afn = shl nsw i64 %i.afm, 7
  %i.afo = and i64 %i.afn, 16256
  %i.afp = or disjoint i64 %i.afo, %i.afi         ; 2 uses
  %i.afq = icmp sgt i8 %i.afl, -1
  br i1 %i.afq, label %bb.jt, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  %i.afr = getelementptr inbounds nuw i8, ptr %i.aex, i64 3 ; 2 uses
  %i.afs = load i8, ptr %i.afk, align 1, !tbaa !94 ; 2 uses
  %i.aft = sext i8 %i.afs to i64
  %i.afu = shl nsw i64 %i.aft, 14
  %i.afv = and i64 %i.afu, 2080768
  %i.afw = or disjoint i64 %i.afv, %i.afp         ; 2 uses
  %i.afx = icmp sgt i8 %i.afs, -1
  br i1 %i.afx, label %bb.jt, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  %i.afy = getelementptr inbounds nuw i8, ptr %i.aex, i64 4 ; 2 uses
  %i.afz = load i8, ptr %i.afr, align 1, !tbaa !94 ; 2 uses
  %i.aga = sext i8 %i.afz to i64
  %i.agb = shl nsw i64 %i.aga, 21
  %i.agc = and i64 %i.agb, 266338304
  %i.agd = or disjoint i64 %i.agc, %i.afw         ; 2 uses
  %i.age = icmp sgt i8 %i.afz, -1
  br i1 %i.age, label %bb.jt, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  %i.agf = getelementptr inbounds nuw i8, ptr %i.aex, i64 5 ; 2 uses
  %i.agg = load i8, ptr %i.afy, align 1, !tbaa !94 ; 2 uses
  %i.agh = sext i8 %i.agg to i64
  %i.agi = shl nsw i64 %i.agh, 28
  %i.agj = and i64 %i.agi, 34091302912
  %i.agk = or disjoint i64 %i.agj, %i.agd         ; 6 uses
  %i.agl = icmp sgt i8 %i.agg, -1
  br i1 %i.agl, label %bb.jt, label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  %i.agm = getelementptr inbounds nuw i8, ptr %i.aex, i64 6 ; 2 uses
  %i.agn = load i8, ptr %i.agf, align 1, !tbaa !94
  %i.ago = icmp sgt i8 %i.agn, -1
  br i1 %i.ago, label %bb.jt, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %i.agp = getelementptr inbounds nuw i8, ptr %i.aex, i64 7 ; 2 uses
  %i.agq = load i8, ptr %i.agm, align 1, !tbaa !94
  %i.agr = icmp sgt i8 %i.agq, -1
  br i1 %i.agr, label %bb.jt, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  %i.ags = getelementptr inbounds nuw i8, ptr %i.aex, i64 8 ; 2 uses
  %i.agt = load i8, ptr %i.agp, align 1, !tbaa !94
  %i.agu = icmp sgt i8 %i.agt, -1
  br i1 %i.agu, label %bb.jt, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  %i.agv = getelementptr inbounds nuw i8, ptr %i.aex, i64 9 ; 2 uses
  %i.agw = load i8, ptr %i.ags, align 1, !tbaa !94
  %i.agx = icmp sgt i8 %i.agw, -1
  br i1 %i.agx, label %bb.jt, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %i.agy = getelementptr inbounds nuw i8, ptr %i.aex, i64 10
  %i.agz = load i8, ptr %i.agv, align 1, !tbaa !94
  %i.aha = icmp sgt i8 %i.agz, -1
  br i1 %i.aha, label %bb.jt, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  %i.ahb = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ahb, ptr noundef nonnull @.str.77)
          to label %bb.jo unwind label %bb.jp

bb.jo:                                            ; preds = %bb.jn
  call void @__cxa_throw(ptr nonnull %i.ahb, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

bb.jp:                                            ; preds = %bb.jn
  %i.ahc = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ahb) #28
  br label %common.resume

.lr.ph1590:                                       ; preds = %.preheader916, %bb.jq
  %indvars.iv2496 = phi i64 [ %indvars.iv.next2497, %bb.jq ], [ 0, %.preheader916 ] ; 3 uses
  %.1.i.i.i33.i1588 = phi i64 [ %i.ahj, %bb.jq ], [ 0, %.preheader916 ] ; 2 uses
  %.170.i.i.i32.i1587 = phi ptr [ %i.ahf, %bb.jq ], [ %i.aex, %.preheader916 ] ; 2 uses
  %i.ahd = load i8, ptr %.170.i.i.i32.i1587, align 1, !tbaa !94 ; 3 uses
  %i.ahe = icmp slt i8 %i.ahd, 0
  %i.ahf = getelementptr inbounds nuw i8, ptr %.170.i.i.i32.i1587, i64 1 ; 3 uses
  br i1 %i.ahe, label %bb.jq, label %.critedge.i.i.i36.i

bb.jq:                                            ; preds = %.lr.ph1590
  %i.ahg = and i8 %i.ahd, 127
  %i.ahh = zext nneg i8 %i.ahg to i64
  %i.ahi = shl i64 %i.ahh, %indvars.iv2496
  %i.ahj = or i64 %i.ahi, %.1.i.i.i33.i1588
  %indvars.iv.next2497 = add nuw nsw i64 %indvars.iv2496, 7
  %.not.i.i.i35.i = icmp eq ptr %i.ahf, %i.afb
  br i1 %.not.i.i.i35.i, label %._crit_edge1591, label %.lr.ph1590, !llvm.loop !46

._crit_edge1591:                                  ; preds = %bb.jq, %.preheader916
  %i.ahk = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ahk, ptr noundef nonnull @.str.78)
          to label %bb.jr unwind label %bb.js

bb.jr:                                            ; preds = %._crit_edge1591
  call void @__cxa_throw(ptr nonnull %i.ahk, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

bb.js:                                            ; preds = %._crit_edge1591
  %i.ahl = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ahk) #28
  br label %common.resume

.critedge.i.i.i36.i:                              ; preds = %.lr.ph1590
  %i.ahm = zext nneg i8 %i.ahd to i64
  %i.ahn = shl i64 %i.ahm, %indvars.iv2496
  %i.aho = or i64 %i.ahn, %.1.i.i.i33.i1588
  br label %bb.jt

bb.jt:                                            ; preds = %.critedge.i.i.i36.i, %bb.jm, %bb.jl, %bb.jk, %bb.jj, %bb.ji, %bb.jh, %bb.jg, %bb.jf, %bb.je
  %.271.i.i.i37.i = phi ptr [ %i.ahf, %.critedge.i.i.i36.i ], [ %i.agy, %bb.jm ], [ %i.afk, %bb.je ], [ %i.afr, %bb.jf ], [ %i.afy, %bb.jg ], [ %i.agf, %bb.jh ], [ %i.agm, %bb.ji ], [ %i.agp, %bb.jj ], [ %i.ags, %bb.jk ], [ %i.agv, %bb.jl ]
  %.2.i.i.i38.i = phi i64 [ %i.aho, %.critedge.i.i.i36.i ], [ %i.agk, %bb.jm ], [ %i.afp, %bb.je ], [ %i.afw, %bb.jf ], [ %i.agd, %bb.jg ], [ %i.agk, %bb.jh ], [ %i.agk, %bb.ji ], [ %i.agk, %bb.jj ], [ %i.agk, %bb.jk ], [ %i.agk, %bb.jl ]
  %i.ahp = ptrtoint ptr %.271.i.i.i37.i to i64
  %i.ahq = sub i64 %i.ahp, %i.aff
  br label %_ZN6iguana6detail12from_pb_implIiEEvRT_RSt17basic_string_viewIcSt11char_traitsIcEEj.exit.i39.i

_ZN6iguana6detail12from_pb_implIiEEvRT_RSt17basic_string_viewIcSt11char_traitsIcEEj.exit.i39.i: ; preds = %bb.jt, %bb.jc
  %.0549 = phi i64 [ 1, %bb.jc ], [ %i.ahq, %bb.jt ] ; 6 uses
  %.072.i.i.i40.i = phi i64 [ %i.afe, %bb.jc ], [ %.2.i.i.i38.i, %bb.jt ]
  %i.ahr = trunc i64 %.072.i.i.i40.i to i32
  store i32 %i.ahr, ptr %i.afa, align 4, !tbaa !164
  %i.ahs = icmp ugt i64 %.0549, %i.aev
  br i1 %i.ahs, label %bb.ju, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit55

bb.ju:                                            ; preds = %_ZN6iguana6detail12from_pb_implIiEEvRT_RSt17basic_string_viewIcSt11char_traitsIcEEj.exit.i39.i
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %.0549, i64 noundef %i.aev) #32
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit55: ; preds = %_ZN6iguana6detail12from_pb_implIiEEvRT_RSt17basic_string_viewIcSt11char_traitsIcEEj.exit.i39.i
  %i.aht = sub nuw i64 %i.aev, %.0549             ; 2 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.aex, i64 %.0549 ; 14 uses
  store i64 %i.aht, ptr %17, align 8, !tbaa !249
  store ptr %i.ahu, ptr %i.f, align 8, !tbaa !363
  %i.ahv = icmp eq i64 %i.aev, %.0549
  br i1 %i.ahv, label %.critedge.i.i, label %bb.jv

bb.jv:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit55
  %i.ahw = load i8, ptr %i.ahu, align 1, !tbaa !94 ; 3 uses
  %i.ahx = icmp sgt i8 %i.ahw, -1
  br i1 %i.ahx, label %bb.jw, label %bb.jx

bb.jw:                                            ; preds = %bb.jv
  %i.ahy = zext nneg i8 %i.ahw to i64
  br label %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm2EEEEDaS3_.exit.i
end_hunk_1
begin_hunk_2_@_ZN6iguana9base_implIN9pb_sample7MonsterELh8EE7from_pbESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %i.awb = load ptr, ptr %i.ase, align 8, !tbaa !95
  %i.awc = getelementptr inbounds nuw i8, ptr %i.awb, i64 %.072.i.i.i89.i
  store i8 0, ptr %i.awc, align 1, !tbaa !94
  %i.awd = load ptr, ptr %i.ase, align 8, !tbaa !95
  %i.awe = load ptr, ptr %i.f, align 8, !tbaa !439
  %i.awf = getelementptr inbounds nuw i8, ptr %i.awe, i64 %.0551
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.awd, ptr align 1 %i.awf, i64 %.072.i.i.i89.i, i1 false)
  %i.awg = load i64, ptr %17, align 8, !tbaa !438 ; 5 uses
  %i.awh = icmp ugt i64 %i.avo, %i.awg
  br i1 %i.awh, label %bb.nm, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit76

bb.nm:                                            ; preds = %_ZN6iguana6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit72
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %i.avo, i64 noundef %i.awg) #32
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit76: ; preds = %_ZN6iguana6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit72
  %i.awi = sub nuw i64 %i.awg, %i.avo             ; 2 uses
  %i.awj = load ptr, ptr %i.f, align 8, !tbaa !439 ; 2 uses
  %i.awk = getelementptr inbounds nuw i8, ptr %i.awj, i64 %i.avo ; 14 uses
  store i64 %i.awi, ptr %17, align 8, !tbaa !249
  store ptr %i.awk, ptr %i.f, align 8, !tbaa !363
  %i.awl = icmp eq i64 %i.awg, %i.avo
  br i1 %i.awl, label %.critedge.i.i, label %bb.nn

bb.nn:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit76
  %i.awm = getelementptr inbounds nuw i8, ptr %i.awj, i64 %i.awg
  %i.awn = load i8, ptr %i.awk, align 1, !tbaa !94 ; 3 uses
  %i.awo = icmp sgt i8 %i.awn, -1
  br i1 %i.awo, label %bb.no, label %bb.np

bb.no:                                            ; preds = %bb.nn
  %i.awp = zext nneg i8 %i.awn to i64
  br label %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm4EEEEDaS3_.exit.i

bb.np:                                            ; preds = %bb.nn
  %i.awq = ptrtoint ptr %i.awk to i64
  %i.awr = icmp ugt i64 %i.awi, 9
  br i1 %i.awr, label %bb.nq, label %.lr.ph1620, !prof !257

bb.nq:                                            ; preds = %bb.np
  %i.aws = and i8 %i.awn, 127
  %i.awt = zext nneg i8 %i.aws to i64
  %i.awu = getelementptr inbounds nuw i8, ptr %i.awk, i64 1
  %i.awv = getelementptr inbounds nuw i8, ptr %i.awk, i64 2 ; 2 uses
  %i.aww = load i8, ptr %i.awu, align 1, !tbaa !94 ; 2 uses
  %i.awx = sext i8 %i.aww to i64
  %i.awy = shl nsw i64 %i.awx, 7
  %i.awz = and i64 %i.awy, 16256
  %i.axa = or disjoint i64 %i.awz, %i.awt         ; 2 uses
  %i.axb = icmp sgt i8 %i.aww, -1
  br i1 %i.axb, label %bb.of, label %bb.nr

bb.nr:                                            ; preds = %bb.nq
  %i.axc = getelementptr inbounds nuw i8, ptr %i.awk, i64 3 ; 2 uses
  %i.axd = load i8, ptr %i.awv, align 1, !tbaa !94 ; 2 uses
  %i.axe = sext i8 %i.axd to i64
  %i.axf = shl nsw i64 %i.axe, 14
  %i.axg = and i64 %i.axf, 2080768
  %i.axh = or disjoint i64 %i.axg, %i.axa         ; 2 uses
  %i.axi = icmp sgt i8 %i.axd, -1
  br i1 %i.axi, label %bb.of, label %bb.ns

bb.ns:                                            ; preds = %bb.nr
  %i.axj = getelementptr inbounds nuw i8, ptr %i.awk, i64 4 ; 2 uses
  %i.axk = load i8, ptr %i.axc, align 1, !tbaa !94 ; 2 uses
  %i.axl = sext i8 %i.axk to i64
  %i.axm = shl nsw i64 %i.axl, 21
  %i.axn = and i64 %i.axm, 266338304
  %i.axo = or disjoint i64 %i.axn, %i.axh         ; 2 uses
  %i.axp = icmp sgt i8 %i.axk, -1
  br i1 %i.axp, label %bb.of, label %bb.nt

bb.nt:                                            ; preds = %bb.ns
  %i.axq = getelementptr inbounds nuw i8, ptr %i.awk, i64 5 ; 2 uses
  %i.axr = load i8, ptr %i.axj, align 1, !tbaa !94 ; 2 uses
  %i.axs = sext i8 %i.axr to i64
  %i.axt = shl nsw i64 %i.axs, 28
  %i.axu = and i64 %i.axt, 34091302912
  %i.axv = or disjoint i64 %i.axu, %i.axo         ; 6 uses
  %i.axw = icmp sgt i8 %i.axr, -1
  br i1 %i.axw, label %bb.of, label %bb.nu

bb.nu:                                            ; preds = %bb.nt
  %i.axx = getelementptr inbounds nuw i8, ptr %i.awk, i64 6 ; 2 uses
  %i.axy = load i8, ptr %i.axq, align 1, !tbaa !94
  %i.axz = icmp sgt i8 %i.axy, -1
  br i1 %i.axz, label %bb.of, label %bb.nv

bb.nv:                                            ; preds = %bb.nu
  %i.aya = getelementptr inbounds nuw i8, ptr %i.awk, i64 7 ; 2 uses
  %i.ayb = load i8, ptr %i.axx, align 1, !tbaa !94
  %i.ayc = icmp sgt i8 %i.ayb, -1
  br i1 %i.ayc, label %bb.of, label %bb.nw

bb.nw:                                            ; preds = %bb.nv
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.awk, i64 8 ; 2 uses
  %i.aye = load i8, ptr %i.aya, align 1, !tbaa !94
  %i.ayf = icmp sgt i8 %i.aye, -1
  br i1 %i.ayf, label %bb.of, label %bb.nx

bb.nx:                                            ; preds = %bb.nw
  %i.ayg = getelementptr inbounds nuw i8, ptr %i.awk, i64 9 ; 2 uses
  %i.ayh = load i8, ptr %i.ayd, align 1, !tbaa !94
  %i.ayi = icmp sgt i8 %i.ayh, -1
  br i1 %i.ayi, label %bb.of, label %bb.ny

bb.ny:                                            ; preds = %bb.nx
  %i.ayj = getelementptr inbounds nuw i8, ptr %i.awk, i64 10
  %i.ayk = load i8, ptr %i.ayg, align 1, !tbaa !94
  %i.ayl = icmp sgt i8 %i.ayk, -1
  br i1 %i.ayl, label %bb.of, label %bb.nz

bb.nz:                                            ; preds = %bb.ny
  %i.aym = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aym, ptr noundef nonnull @.str.77)
          to label %bb.oa unwind label %bb.ob

bb.oa:                                            ; preds = %bb.nz
  call void @__cxa_throw(ptr nonnull %i.aym, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

bb.ob:                                            ; preds = %bb.nz
  %i.ayn = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.aym) #28
  br label %common.resume

.lr.ph1620:                                       ; preds = %bb.np, %bb.oc
  %indvars.iv2511 = phi i64 [ %indvars.iv.next2512, %bb.oc ], [ 0, %bb.np ] ; 3 uses
  %.1.i.i93.i1618 = phi i64 [ %i.ayu, %bb.oc ], [ 0, %bb.np ] ; 2 uses
  %.170.i.i92.i1617 = phi ptr [ %i.ayq, %bb.oc ], [ %i.awk, %bb.np ] ; 2 uses
  %i.ayo = load i8, ptr %.170.i.i92.i1617, align 1, !tbaa !94 ; 3 uses
  %i.ayp = icmp slt i8 %i.ayo, 0
  %i.ayq = getelementptr inbounds nuw i8, ptr %.170.i.i92.i1617, i64 1 ; 3 uses
  br i1 %i.ayp, label %bb.oc, label %.critedge.i.i96.i

bb.oc:                                            ; preds = %.lr.ph1620
  %i.ayr = and i8 %i.ayo, 127
  %i.ays = zext nneg i8 %i.ayr to i64
  %i.ayt = shl i64 %i.ays, %indvars.iv2511
  %i.ayu = or i64 %i.ayt, %.1.i.i93.i1618
  %indvars.iv.next2512 = add nuw nsw i64 %indvars.iv2511, 7
  %.not.i.i95.i = icmp eq ptr %i.ayq, %i.awm
  br i1 %.not.i.i95.i, label %._crit_edge1621, label %.lr.ph1620, !llvm.loop !46

._crit_edge1621:                                  ; preds = %bb.oc
  %i.ayv = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ayv, ptr noundef nonnull @.str.78)
          to label %bb.od unwind label %bb.oe

bb.od:                                            ; preds = %._crit_edge1621
  call void @__cxa_throw(ptr nonnull %i.ayv, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

bb.oe:                                            ; preds = %._crit_edge1621
  %i.ayw = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ayv) #28
  br label %common.resume

.critedge.i.i96.i:                                ; preds = %.lr.ph1620
  %i.ayx = zext nneg i8 %i.ayo to i64
  %i.ayy = shl i64 %i.ayx, %indvars.iv2511
  %i.ayz = or i64 %i.ayy, %.1.i.i93.i1618
  br label %bb.of

bb.of:                                            ; preds = %.critedge.i.i96.i, %bb.ny, %bb.nx, %bb.nw, %bb.nv, %bb.nu, %bb.nt, %bb.ns, %bb.nr, %bb.nq
  %.271.i.i97.i = phi ptr [ %i.ayq, %.critedge.i.i96.i ], [ %i.ayj, %bb.ny ], [ %i.awv, %bb.nq ], [ %i.axc, %bb.nr ], [ %i.axj, %bb.ns ], [ %i.axq, %bb.nt ], [ %i.axx, %bb.nu ], [ %i.aya, %bb.nv ], [ %i.ayd, %bb.nw ], [ %i.ayg, %bb.nx ]
  %.2.i.i98.i = phi i64 [ %i.ayz, %.critedge.i.i96.i ], [ %i.axv, %bb.ny ], [ %i.axa, %bb.nq ], [ %i.axh, %bb.nr ], [ %i.axo, %bb.ns ], [ %i.axv, %bb.nt ], [ %i.axv, %bb.nu ], [ %i.axv, %bb.nv ], [ %i.axv, %bb.nw ], [ %i.axv, %bb.nx ]
  %i.aza = ptrtoint ptr %.271.i.i97.i to i64
  %i.azb = sub i64 %i.aza, %i.awq
  br label %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm4EEEEDaS3_.exit.i

_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm4EEEEDaS3_.exit.i: ; preds = %bb.no, %bb.of
  %.16 = phi i64 [ 1, %bb.no ], [ %i.azb, %bb.of ]
  %.072.i.i100.i = phi i64 [ %i.awp, %bb.no ], [ %.2.i.i98.i, %bb.of ]
  %i.azc = trunc i64 %.072.i.i100.i to i32        ; 2 uses
  %i.azd = and i32 %i.azc, 7
  %i.aze = lshr i32 %i.azc, 3                     ; 2 uses
  store i32 %i.aze, ptr %i.e, align 4, !tbaa !164
  br label %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm4EEEEDaS3_.exit.i.thread772

_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm4EEEEDaS3_.exit.i.thread772: ; preds = %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm3EEEEDaS3_.exit.i.thread758, %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm4EEEEDaS3_.exit.i
  %.pr795 = phi i32 [ %i.aze, %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm4EEEEDaS3_.exit.i ], [ %.pr781, %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm3EEEEDaS3_.exit.i.thread758 ] ; 2 uses
  %.4686779 = phi i32 [ %i.azd, %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm4EEEEDaS3_.exit.i ], [ %.3685765, %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm3EEEEDaS3_.exit.i.thread758 ] ; 2 uses
  %.5696778 = phi i64 [ %.16, %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm4EEEEDaS3_.exit.i ], [ %.4695764, %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm3EEEEDaS3_.exit.i.thread758 ] ; 7 uses
  %.sroa.02.0.copyload.i103.i780 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11, i64 72), align 8, !tbaa !249
  %.not.i104.i = icmp eq i32 %.pr795, 6
  br i1 %.not.i104.i, label %bb.og, label %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm5EEEEDaS3_.exit.i.thread786

bb.og:                                            ; preds = %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm4EEEEDaS3_.exit.i.thread772
  %i.azf = load i64, ptr %17, align 8, !tbaa !438 ; 6 uses
  %i.azg = icmp ugt i64 %.5696778, %i.azf
  br i1 %i.azg, label %bb.oh, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit80

bb.oh:                                            ; preds = %bb.og
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %.5696778, i64 noundef %i.azf) #32
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit80: ; preds = %bb.og
  %i.azh = sub nuw i64 %i.azf, %.5696778          ; 5 uses
  %i.azi = load ptr, ptr %i.f, align 8, !tbaa !439 ; 2 uses
  %i.azj = getelementptr inbounds nuw i8, ptr %i.azi, i64 %.5696778 ; 14 uses
  %.not4.i106.i = icmp eq i32 %.4686779, 0
  br i1 %.not4.i106.i, label %bb.ol, label %bb.oi, !prof !257

bb.oi:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit80
  %i.azk = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.azk, ptr noundef nonnull @.str.79)
          to label %bb.oj unwind label %bb.ok

bb.oj:                                            ; preds = %bb.oi
  call void @__cxa_throw(ptr nonnull %i.azk, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #32
  unreachable

bb.ok:                                            ; preds = %bb.oi
  %i.azl = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.azk) #28
  br label %common.resume

bb.ol:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit80
  %i.azm = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.0.copyload.i103.i780
  %i.azn = getelementptr inbounds nuw i8, ptr %i.azi, i64 %i.azf ; 2 uses
  %i.azo = load i8, ptr %i.azj, align 1, !tbaa !94 ; 3 uses
  %i.azp = icmp sgt i8 %i.azo, -1
  br i1 %i.azp, label %_ZN6iguana6detail12from_pb_implIhEEvRT_RSt17basic_string_viewIcSt11char_traitsIcEEj.exit.i, label %bb.om

bb.om:                                            ; preds = %bb.ol
  %i.azq = ptrtoint ptr %i.azj to i64
  %i.azr = icmp ugt i64 %i.azh, 9
  br i1 %i.azr, label %bb.on, label %.preheader910, !prof !257

.preheader910:                                    ; preds = %bb.om
  %.not.i.i243.i1622 = icmp samesign eq i64 %.5696778, %i.azf
  br i1 %.not.i.i243.i1622, label %._crit_edge1627, label %.lr.ph1626

bb.on:                                            ; preds = %bb.om
  %i.azs = and i8 %i.azo, 127
  %i.azt = zext nneg i8 %i.azs to i64
  %i.azu = getelementptr inbounds nuw i8, ptr %i.azj, i64 1
  %i.azv = getelementptr inbounds nuw i8, ptr %i.azj, i64 2 ; 2 uses
  %i.azw = load i8, ptr %i.azu, align 1, !tbaa !94 ; 2 uses
  %i.azx = sext i8 %i.azw to i64
  %i.azy = shl nsw i64 %i.azx, 7
  %i.azz = and i64 %i.azy, 16256
  %i.baa = or disjoint i64 %i.azz, %i.azt         ; 9 uses
  %i.bab = icmp sgt i8 %i.azw, -1
  br i1 %i.bab, label %bb.pc, label %bb.oo

bb.oo:                                            ; preds = %bb.on
  %i.bac = getelementptr inbounds nuw i8, ptr %i.azj, i64 3 ; 2 uses
  %i.bad = load i8, ptr %i.azv, align 1, !tbaa !94
  %i.bae = icmp sgt i8 %i.bad, -1
  br i1 %i.bae, label %bb.pc, label %bb.op

bb.op:                                            ; preds = %bb.oo
  %i.baf = getelementptr inbounds nuw i8, ptr %i.azj, i64 4 ; 2 uses
  %i.bag = load i8, ptr %i.bac, align 1, !tbaa !94
  %i.bah = icmp sgt i8 %i.bag, -1
  br i1 %i.bah, label %bb.pc, label %bb.oq

bb.oq:                                            ; preds = %bb.op
  %i.bai = getelementptr inbounds nuw i8, ptr %i.azj, i64 5 ; 2 uses
  %i.baj = load i8, ptr %i.baf, align 1, !tbaa !94
  %i.bak = icmp sgt i8 %i.baj, -1
  br i1 %i.bak, label %bb.pc, label %bb.or

bb.or:                                            ; preds = %bb.oq
  %i.bal = getelementptr inbounds nuw i8, ptr %i.azj, i64 6 ; 2 uses
  %i.bam = load i8, ptr %i.bai, align 1, !tbaa !94
  %i.ban = icmp sgt i8 %i.bam, -1
  br i1 %i.ban, label %bb.pc, label %bb.os

bb.os:                                            ; preds = %bb.or
  %i.bao = getelementptr inbounds nuw i8, ptr %i.azj, i64 7 ; 2 uses
  %i.bap = load i8, ptr %i.bal, align 1, !tbaa !94
  %i.baq = icmp sgt i8 %i.bap, -1
  br i1 %i.baq, label %bb.pc, label %bb.ot

bb.ot:                                            ; preds = %bb.os
  %i.bar = getelementptr inbounds nuw i8, ptr %i.azj, i64 8 ; 2 uses
  %i.bas = load i8, ptr %i.bao, align 1, !tbaa !94
  %i.bat = icmp sgt i8 %i.bas, -1
  br i1 %i.bat, label %bb.pc, label %bb.ou

bb.ou:                                            ; preds = %bb.ot
  %i.bau = getelementptr inbounds nuw i8, ptr %i.azj, i64 9 ; 2 uses
  %i.bav = load i8, ptr %i.bar, align 1, !tbaa !94
  %i.baw = icmp sgt i8 %i.bav, -1
  br i1 %i.baw, label %bb.pc, label %bb.ov

bb.ov:                                            ; preds = %bb.ou
  %i.bax = getelementptr inbounds nuw i8, ptr %i.azj, i64 10
  %i.bay = load i8, ptr %i.bau, align 1, !tbaa !94
  %i.baz = icmp sgt i8 %i.bay, -1
  br i1 %i.baz, label %bb.pc, label %bb.ow

bb.ow:                                            ; preds = %bb.ov
  %i.bba = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bba, ptr noundef nonnull @.str.77)
          to label %bb.ox unwind label %bb.oy

bb.ox:                                            ; preds = %bb.ow
  call void @__cxa_throw(ptr nonnull %i.bba, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

bb.oy:                                            ; preds = %bb.ow
  %i.bbb = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bba) #28
  br label %common.resume

.lr.ph1626:                                       ; preds = %.preheader910, %bb.oz
  %indvars.iv2514 = phi i64 [ %indvars.iv.next2515, %bb.oz ], [ 0, %.preheader910 ] ; 3 uses
  %.1.i.i241.i1624 = phi i64 [ %i.bbi, %bb.oz ], [ 0, %.preheader910 ] ; 2 uses
  %.170.i.i240.i1623 = phi ptr [ %i.bbe, %bb.oz ], [ %i.azj, %.preheader910 ] ; 2 uses
  %i.bbc = load i8, ptr %.170.i.i240.i1623, align 1, !tbaa !94 ; 3 uses
  %i.bbd = icmp slt i8 %i.bbc, 0
  %i.bbe = getelementptr inbounds nuw i8, ptr %.170.i.i240.i1623, i64 1 ; 3 uses
  br i1 %i.bbd, label %bb.oz, label %.critedge.i.i244.i

bb.oz:                                            ; preds = %.lr.ph1626
  %i.bbf = and i8 %i.bbc, 127
  %i.bbg = zext nneg i8 %i.bbf to i64
  %i.bbh = shl i64 %i.bbg, %indvars.iv2514
  %i.bbi = or i64 %i.bbh, %.1.i.i241.i1624
  %indvars.iv.next2515 = add nuw nsw i64 %indvars.iv2514, 7
  %.not.i.i243.i = icmp eq ptr %i.bbe, %i.azn
  br i1 %.not.i.i243.i, label %._crit_edge1627, label %.lr.ph1626, !llvm.loop !46

._crit_edge1627:                                  ; preds = %bb.oz, %.preheader910
  %i.bbj = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bbj, ptr noundef nonnull @.str.78)
          to label %bb.pa unwind label %bb.pb

bb.pa:                                            ; preds = %._crit_edge1627
  call void @__cxa_throw(ptr nonnull %i.bbj, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

bb.pb:                                            ; preds = %._crit_edge1627
  %i.bbk = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bbj) #28
  br label %common.resume

.critedge.i.i244.i:                               ; preds = %.lr.ph1626
  %i.bbl = zext nneg i8 %i.bbc to i64
  %i.bbm = shl i64 %i.bbl, %indvars.iv2514
  %i.bbn = or i64 %i.bbm, %.1.i.i241.i1624
  br label %bb.pc

bb.pc:                                            ; preds = %.critedge.i.i244.i, %bb.ov, %bb.ou, %bb.ot, %bb.os, %bb.or, %bb.oq, %bb.op, %bb.oo, %bb.on
  %.271.i.i245.i = phi ptr [ %i.bbe, %.critedge.i.i244.i ], [ %i.bax, %bb.ov ], [ %i.azv, %bb.on ], [ %i.bac, %bb.oo ], [ %i.baf, %bb.op ], [ %i.bai, %bb.oq ], [ %i.bal, %bb.or ], [ %i.bao, %bb.os ], [ %i.bar, %bb.ot ], [ %i.bau, %bb.ou ]
  %.2.i.i246.i = phi i64 [ %i.bbn, %.critedge.i.i244.i ], [ %i.baa, %bb.ov ], [ %i.baa, %bb.on ], [ %i.baa, %bb.oo ], [ %i.baa, %bb.op ], [ %i.baa, %bb.oq ], [ %i.baa, %bb.or ], [ %i.baa, %bb.os ], [ %i.baa, %bb.ot ], [ %i.baa, %bb.ou ]
  %i.bbo = ptrtoint ptr %.271.i.i245.i to i64
  %i.bbp = sub i64 %i.bbo, %i.azq
  %i.bbq = trunc i64 %.2.i.i246.i to i8
  br label %_ZN6iguana6detail12from_pb_implIhEEvRT_RSt17basic_string_viewIcSt11char_traitsIcEEj.exit.i

_ZN6iguana6detail12from_pb_implIhEEvRT_RSt17basic_string_viewIcSt11char_traitsIcEEj.exit.i: ; preds = %bb.ol, %bb.pc
  %.0553 = phi i64 [ %i.bbp, %bb.pc ], [ 1, %bb.ol ] ; 6 uses
  %.072.i.i248.i = phi i8 [ %i.bbq, %bb.pc ], [ %i.azo, %bb.ol ]
  %i.bbr = icmp ugt i64 %.0553, %i.azh
  br i1 %i.bbr, label %bb.pd, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit84

bb.pd:                                            ; preds = %_ZN6iguana6detail12from_pb_implIhEEvRT_RSt17basic_string_viewIcSt11char_traitsIcEEj.exit.i
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %.0553, i64 noundef %i.azh) #32
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit84: ; preds = %_ZN6iguana6detail12from_pb_implIhEEvRT_RSt17basic_string_viewIcSt11char_traitsIcEEj.exit.i
  %i.bbs = sub nuw i64 %i.azh, %.0553             ; 2 uses
  %i.bbt = getelementptr inbounds nuw i8, ptr %i.azj, i64 %.0553 ; 14 uses
  store i64 %i.bbs, ptr %17, align 8, !tbaa !249
  store ptr %i.bbt, ptr %i.f, align 8, !tbaa !363
  store i8 %.072.i.i248.i, ptr %i.azm, align 1, !tbaa !422
  %i.bbu = icmp eq i64 %i.azh, %.0553
  br i1 %i.bbu, label %.critedge.i.i, label %bb.pe

bb.pe:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit84
  %i.bbv = load i8, ptr %i.bbt, align 1, !tbaa !94 ; 3 uses
  %i.bbw = icmp sgt i8 %i.bbv, -1
  br i1 %i.bbw, label %bb.pf, label %bb.pg

bb.pf:                                            ; preds = %bb.pe
  %i.bbx = zext nneg i8 %i.bbv to i64
  br label %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm5EEEEDaS3_.exit.i

bb.pg:                                            ; preds = %bb.pe
  %i.bby = ptrtoint ptr %i.bbt to i64
  %i.bbz = icmp ugt i64 %i.bbs, 9
  br i1 %i.bbz, label %bb.ph, label %.preheader909, !prof !257

.preheader909:                                    ; preds = %bb.pg
  %i.bca = add nuw nsw i64 %.5696778, %.0553
  %.not.i.i110.i1628 = icmp samesign eq i64 %i.bca, %i.azf
  br i1 %.not.i.i110.i1628, label %._crit_edge1633, label %.lr.ph1632

bb.ph:                                            ; preds = %bb.pg
  %i.bcb = and i8 %i.bbv, 127
  %i.bcc = zext nneg i8 %i.bcb to i64
  %i.bcd = getelementptr inbounds nuw i8, ptr %i.bbt, i64 1
  %i.bce = getelementptr inbounds nuw i8, ptr %i.bbt, i64 2 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN6iguana9base_implIN9pb_sample7MonsterELh8EE7from_pbESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  br i1 %or.cond, label %_ZN6iguana6detail12from_pb_implISt6vectorIN9pb_sample6WeaponESaIS4_EEEEvRT_RSt17basic_string_viewIcSt11char_traitsIcEEj.exit.i, label %bb.qd

.body.i:                                          ; preds = %.loopexit896, %.loopexit.split-lp897.loopexit.split-lp, %.loopexit.split-lp897.loopexit, %bb.wp, %bb.wn, %bb.wl, %bb.qz, %bb.qw, %bb.qu, %bb.rx, %bb.sq, %bb.sn, %bb.sl, %bb.th, %bb.tf, %bb.ur, %bb.ut, %bb.ua, %bb.uc, %bb.tm, %bb.vp, %bb.vr, %bb.rn, %bb.rp, %bb.vu, %bb.wt
  %.pn.pn.i.i = phi { ptr, i32 } [ %i.byg, %bb.ut ], [ %i.cgc, %bb.wt ], [ %i.bib, %bb.qw ], [ %i.bin, %bb.qz ], [ %i.bhs, %bb.qu ], [ %i.cbt, %bb.vr ], [ %.pn.i336.i, %bb.vu ], [ %i.bkz, %bb.rp ], [ %i.bkq, %bb.rn ], [ %i.cbh, %bb.vp ], [ %i.bsk, %bb.th ], [ %i.blr, %bb.rx ], [ %i.bow, %bb.sn ], [ %i.bpf, %bb.sq ], [ %i.bon, %bb.sl ], [ %i.bsb, %bb.tf ], [ %i.cfs, %bb.wn ], [ %i.bsz, %bb.tm ], [ %i.bvl, %bb.uc ], [ %i.bvc, %bb.ua ], [ %i.bxx, %bb.ur ], [ %i.cfy, %bb.wp ], [ %i.cfi, %bb.wl ], [ %lpad.loopexit898, %.loopexit896 ], [ %lpad.loopexit906, %.loopexit.split-lp897.loopexit ], [ %lpad.loopexit.split-lp907, %.loopexit.split-lp897.loopexit.split-lp ]
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN9pb_sample6WeaponE, i64 16), ptr %14, align 8, !tbaa !126
  %i.cgi = load ptr, ptr %i.bez, align 8, !tbaa !95 ; 2 uses
  %i.cgj = icmp eq ptr %i.cgi, %i.bfa
  br i1 %i.cgj, label %_ZN9pb_sample6WeaponD2Ev.exit145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i143: ; preds = %.body.i
  %i.cgk = load i64, ptr %i.bfa, align 8, !tbaa !94
  %i.cgl = add i64 %i.cgk, 1
  call void @_ZdlPvm(ptr noundef %i.cgi, i64 noundef %i.cgl) #30, !inline_history !204
  br label %_ZN9pb_sample6WeaponD2Ev.exit145

_ZN9pb_sample6WeaponD2Ev.exit145:                 ; preds = %.body.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i143
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %common.resume

_ZN6iguana6detail12from_pb_implISt6vectorIN9pb_sample6WeaponESaIS4_EEEEvRT_RSt17basic_string_viewIcSt11char_traitsIcEEj.exit.i: ; preds = %_ZN9pb_sample6WeaponD2Ev.exit
  %i.cgm = icmp eq i64 %.pr797, 0
  br i1 %i.cgm, label %.critedge.i.i, label %bb.wv

bb.wv:                                            ; preds = %_ZN6iguana6detail12from_pb_implISt6vectorIN9pb_sample6WeaponESaIS4_EEEEvRT_RSt17basic_string_viewIcSt11char_traitsIcEEj.exit.i
  %i.cgn = load ptr, ptr %i.f, align 8, !tbaa !439 ; 14 uses
  %i.cgo = getelementptr inbounds nuw i8, ptr %i.cgn, i64 %.pr797
  %i.cgp = load i8, ptr %i.cgn, align 1, !tbaa !94 ; 3 uses
  %i.cgq = icmp sgt i8 %i.cgp, -1
  br i1 %i.cgq, label %bb.ww, label %bb.wx

bb.ww:                                            ; preds = %bb.wv
  %i.cgr = zext nneg i8 %i.cgp to i64
  br label %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm6EEEEDaS3_.exit.i

bb.wx:                                            ; preds = %bb.wv
  %i.cgs = ptrtoint ptr %i.cgn to i64
  %i.cgt = icmp ugt i64 %.pr797, 9
  br i1 %i.cgt, label %bb.wy, label %.lr.ph1749, !prof !257

bb.wy:                                            ; preds = %bb.wx
  %i.cgu = and i8 %i.cgp, 127
  %i.cgv = zext nneg i8 %i.cgu to i64
  %i.cgw = getelementptr inbounds nuw i8, ptr %i.cgn, i64 1
  %i.cgx = getelementptr inbounds nuw i8, ptr %i.cgn, i64 2 ; 2 uses
  %i.cgy = load i8, ptr %i.cgw, align 1, !tbaa !94 ; 2 uses
  %i.cgz = sext i8 %i.cgy to i64
  %i.cha = shl nsw i64 %i.cgz, 7
  %i.chb = and i64 %i.cha, 16256
  %i.chc = or disjoint i64 %i.chb, %i.cgv         ; 2 uses
  %i.chd = icmp sgt i8 %i.cgy, -1
  br i1 %i.chd, label %bb.xn, label %bb.wz

bb.wz:                                            ; preds = %bb.wy
  %i.che = getelementptr inbounds nuw i8, ptr %i.cgn, i64 3 ; 2 uses
  %i.chf = load i8, ptr %i.cgx, align 1, !tbaa !94 ; 2 uses
  %i.chg = sext i8 %i.chf to i64
  %i.chh = shl nsw i64 %i.chg, 14
  %i.chi = and i64 %i.chh, 2080768
  %i.chj = or disjoint i64 %i.chi, %i.chc         ; 2 uses
  %i.chk = icmp sgt i8 %i.chf, -1
  br i1 %i.chk, label %bb.xn, label %bb.xa

bb.xa:                                            ; preds = %bb.wz
  %i.chl = getelementptr inbounds nuw i8, ptr %i.cgn, i64 4 ; 2 uses
  %i.chm = load i8, ptr %i.che, align 1, !tbaa !94 ; 2 uses
  %i.chn = sext i8 %i.chm to i64
  %i.cho = shl nsw i64 %i.chn, 21
  %i.chp = and i64 %i.cho, 266338304
  %i.chq = or disjoint i64 %i.chp, %i.chj         ; 2 uses
  %i.chr = icmp sgt i8 %i.chm, -1
  br i1 %i.chr, label %bb.xn, label %bb.xb

bb.xb:                                            ; preds = %bb.xa
  %i.chs = getelementptr inbounds nuw i8, ptr %i.cgn, i64 5 ; 2 uses
  %i.cht = load i8, ptr %i.chl, align 1, !tbaa !94 ; 2 uses
  %i.chu = sext i8 %i.cht to i64
  %i.chv = shl nsw i64 %i.chu, 28
  %i.chw = and i64 %i.chv, 34091302912
  %i.chx = or disjoint i64 %i.chw, %i.chq         ; 6 uses
  %i.chy = icmp sgt i8 %i.cht, -1
  br i1 %i.chy, label %bb.xn, label %bb.xc

bb.xc:                                            ; preds = %bb.xb
  %i.chz = getelementptr inbounds nuw i8, ptr %i.cgn, i64 6 ; 2 uses
  %i.cia = load i8, ptr %i.chs, align 1, !tbaa !94
  %i.cib = icmp sgt i8 %i.cia, -1
  br i1 %i.cib, label %bb.xn, label %bb.xd

bb.xd:                                            ; preds = %bb.xc
  %i.cic = getelementptr inbounds nuw i8, ptr %i.cgn, i64 7 ; 2 uses
  %i.cid = load i8, ptr %i.chz, align 1, !tbaa !94
  %i.cie = icmp sgt i8 %i.cid, -1
  br i1 %i.cie, label %bb.xn, label %bb.xe

bb.xe:                                            ; preds = %bb.xd
  %i.cif = getelementptr inbounds nuw i8, ptr %i.cgn, i64 8 ; 2 uses
  %i.cig = load i8, ptr %i.cic, align 1, !tbaa !94
  %i.cih = icmp sgt i8 %i.cig, -1
  br i1 %i.cih, label %bb.xn, label %bb.xf

bb.xf:                                            ; preds = %bb.xe
  %i.cii = getelementptr inbounds nuw i8, ptr %i.cgn, i64 9 ; 2 uses
  %i.cij = load i8, ptr %i.cif, align 1, !tbaa !94
  %i.cik = icmp sgt i8 %i.cij, -1
  br i1 %i.cik, label %bb.xn, label %bb.xg

bb.xg:                                            ; preds = %bb.xf
  %i.cil = getelementptr inbounds nuw i8, ptr %i.cgn, i64 10
  %i.cim = load i8, ptr %i.cii, align 1, !tbaa !94
  %i.cin = icmp sgt i8 %i.cim, -1
  br i1 %i.cin, label %bb.xn, label %bb.xh

bb.xh:                                            ; preds = %bb.xg
  %i.cio = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cio, ptr noundef nonnull @.str.77)
          to label %bb.xi unwind label %bb.xj

bb.xi:                                            ; preds = %bb.xh
  call void @__cxa_throw(ptr nonnull %i.cio, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

bb.xj:                                            ; preds = %bb.xh
  %i.cip = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cio) #28
  br label %common.resume

.lr.ph1749:                                       ; preds = %bb.wx, %bb.xk
  %indvars.iv2544 = phi i64 [ %indvars.iv.next2545, %bb.xk ], [ 0, %bb.wx ] ; 3 uses
  %.1.i.i122.i1747 = phi i64 [ %i.ciw, %bb.xk ], [ 0, %bb.wx ] ; 2 uses
  %.170.i.i121.i1746 = phi ptr [ %i.cis, %bb.xk ], [ %i.cgn, %bb.wx ] ; 2 uses
  %i.ciq = load i8, ptr %.170.i.i121.i1746, align 1, !tbaa !94 ; 3 uses
  %i.cir = icmp slt i8 %i.ciq, 0
  %i.cis = getelementptr inbounds nuw i8, ptr %.170.i.i121.i1746, i64 1 ; 3 uses
  br i1 %i.cir, label %bb.xk, label %.critedge.i.i125.i

bb.xk:                                            ; preds = %.lr.ph1749
  %i.cit = and i8 %i.ciq, 127
  %i.ciu = zext nneg i8 %i.cit to i64
  %i.civ = shl i64 %i.ciu, %indvars.iv2544
  %i.ciw = or i64 %i.civ, %.1.i.i122.i1747
  %indvars.iv.next2545 = add nuw nsw i64 %indvars.iv2544, 7
  %.not.i.i124.i = icmp eq ptr %i.cis, %i.cgo
  br i1 %.not.i.i124.i, label %._crit_edge1750, label %.lr.ph1749, !llvm.loop !46

._crit_edge1750:                                  ; preds = %bb.xk
  %i.cix = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cix, ptr noundef nonnull @.str.78)
          to label %bb.xl unwind label %bb.xm

bb.xl:                                            ; preds = %._crit_edge1750
  call void @__cxa_throw(ptr nonnull %i.cix, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

bb.xm:                                            ; preds = %._crit_edge1750
  %i.ciy = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cix) #28
  br label %common.resume

.critedge.i.i125.i:                               ; preds = %.lr.ph1749
  %i.ciz = zext nneg i8 %i.ciq to i64
  %i.cja = shl i64 %i.ciz, %indvars.iv2544
  %i.cjb = or i64 %i.cja, %.1.i.i122.i1747
  br label %bb.xn

bb.xn:                                            ; preds = %.critedge.i.i125.i, %bb.xg, %bb.xf, %bb.xe, %bb.xd, %bb.xc, %bb.xb, %bb.xa, %bb.wz, %bb.wy
  %.271.i.i126.i = phi ptr [ %i.cis, %.critedge.i.i125.i ], [ %i.cil, %bb.xg ], [ %i.cgx, %bb.wy ], [ %i.che, %bb.wz ], [ %i.chl, %bb.xa ], [ %i.chs, %bb.xb ], [ %i.chz, %bb.xc ], [ %i.cic, %bb.xd ], [ %i.cif, %bb.xe ], [ %i.cii, %bb.xf ]
  %.2.i.i127.i = phi i64 [ %i.cjb, %.critedge.i.i125.i ], [ %i.chx, %bb.xg ], [ %i.chc, %bb.wy ], [ %i.chj, %bb.wz ], [ %i.chq, %bb.xa ], [ %i.chx, %bb.xb ], [ %i.chx, %bb.xc ], [ %i.chx, %bb.xd ], [ %i.chx, %bb.xe ], [ %i.chx, %bb.xf ]
  %i.cjc = ptrtoint ptr %.271.i.i126.i to i64
  %i.cjd = sub i64 %i.cjc, %i.cgs
  br label %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm6EEEEDaS3_.exit.i

_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm6EEEEDaS3_.exit.i: ; preds = %bb.ww, %bb.xn
  %.14 = phi i64 [ 1, %bb.ww ], [ %i.cjd, %bb.xn ]
  %.072.i.i129.i = phi i64 [ %i.cgr, %bb.ww ], [ %.2.i.i127.i, %bb.xn ]
  %i.cje = trunc i64 %.072.i.i129.i to i32        ; 2 uses
  %i.cjf = and i32 %i.cje, 7
  %i.cjg = lshr i32 %i.cje, 3                     ; 2 uses
  store i32 %i.cjg, ptr %i.e, align 4, !tbaa !164
  br label %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm6EEEEDaS3_.exit.i.thread813

_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm6EEEEDaS3_.exit.i.thread813: ; preds = %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm5EEEEDaS3_.exit.i.thread786, %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm6EEEEDaS3_.exit.i
  %.pr848 = phi i32 [ %i.cjg, %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm6EEEEDaS3_.exit.i ], [ %.pr822, %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm5EEEEDaS3_.exit.i.thread786 ] ; 2 uses
  %.6688820 = phi i32 [ %i.cjf, %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm6EEEEDaS3_.exit.i ], [ %.5687793, %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm5EEEEDaS3_.exit.i.thread786 ] ; 2 uses
  %.7698819 = phi i64 [ %.14, %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm6EEEEDaS3_.exit.i ], [ %.6697792, %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm5EEEEDaS3_.exit.i.thread786 ] ; 6 uses
  %.sroa.02.0.copyload.i131.i821 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11, i64 24), align 8, !tbaa !249
  %.not.i132.i = icmp eq i32 %.pr848, 8
  %i.cjh = load i64, ptr %17, align 8, !tbaa !438 ; 6 uses
  br i1 %.not.i132.i, label %bb.xo, label %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm7EEEEDaS3_.exit.i.thread839

bb.xo:                                            ; preds = %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm6EEEEDaS3_.exit.i.thread813
  %i.cji = icmp ugt i64 %.7698819, %i.cjh
  br i1 %i.cji, label %bb.xp, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit149

bb.xp:                                            ; preds = %bb.xo
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %.7698819, i64 noundef %i.cjh) #32
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit149: ; preds = %bb.xo
  %i.cjj = sub nuw i64 %i.cjh, %.7698819          ; 4 uses
  %i.cjk = load ptr, ptr %i.f, align 8, !tbaa !439 ; 2 uses
  %i.cjl = getelementptr inbounds nuw i8, ptr %i.cjk, i64 %.7698819 ; 14 uses
  %.not4.i134.i = icmp eq i32 %.6688820, 2
  br i1 %.not4.i134.i, label %bb.xt, label %bb.xq, !prof !257

bb.xq:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit149
  %i.cjm = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cjm, ptr noundef nonnull @.str.79)
          to label %bb.xr unwind label %bb.xs

bb.xr:                                            ; preds = %bb.xq
  call void @__cxa_throw(ptr nonnull %i.cjm, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #32
  unreachable

bb.xs:                                            ; preds = %bb.xq
  %i.cjn = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cjm) #28
  br label %common.resume

bb.xt:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit149
  %i.cjo = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.0.copyload.i131.i821 ; 5 uses
  %i.cjp = getelementptr inbounds nuw i8, ptr %i.cjk, i64 %i.cjh
  %i.cjq = load i8, ptr %i.cjl, align 1, !tbaa !94 ; 3 uses
  %i.cjr = icmp sgt i8 %i.cjq, -1
  br i1 %i.cjr, label %bb.xu, label %bb.xv

bb.xu:                                            ; preds = %bb.xt
  %i.cjs = zext nneg i8 %i.cjq to i64
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i286.i

bb.xv:                                            ; preds = %bb.xt
  %i.cjt = ptrtoint ptr %i.cjl to i64
  %i.cju = icmp ugt i64 %i.cjj, 9
  br i1 %i.cju, label %bb.xw, label %.preheader892, !prof !257

.preheader892:                                    ; preds = %bb.xv
  %.not.i.i282.i1751 = icmp samesign eq i64 %.7698819, %i.cjh
  br i1 %.not.i.i282.i1751, label %._crit_edge1756, label %.lr.ph1755

bb.xw:                                            ; preds = %bb.xv
  %i.cjv = and i8 %i.cjq, 127
  %i.cjw = zext nneg i8 %i.cjv to i64
  %i.cjx = getelementptr inbounds nuw i8, ptr %i.cjl, i64 1
  %i.cjy = getelementptr inbounds nuw i8, ptr %i.cjl, i64 2 ; 2 uses
  %i.cjz = load i8, ptr %i.cjx, align 1, !tbaa !94 ; 2 uses
  %i.cka = sext i8 %i.cjz to i64
  %i.ckb = shl nsw i64 %i.cka, 7
  %i.ckc = and i64 %i.ckb, 16256
  %i.ckd = or disjoint i64 %i.ckc, %i.cjw         ; 2 uses
  %i.cke = icmp sgt i8 %i.cjz, -1
  br i1 %i.cke, label %bb.yl, label %bb.xx

bb.xx:                                            ; preds = %bb.xw
  %i.ckf = getelementptr inbounds nuw i8, ptr %i.cjl, i64 3 ; 2 uses
  %i.ckg = load i8, ptr %i.cjy, align 1, !tbaa !94 ; 2 uses
  %i.ckh = sext i8 %i.ckg to i64
  %i.cki = shl nsw i64 %i.ckh, 14
  %i.ckj = and i64 %i.cki, 2080768
  %i.ckk = or disjoint i64 %i.ckj, %i.ckd         ; 2 uses
  %i.ckl = icmp sgt i8 %i.ckg, -1
  br i1 %i.ckl, label %bb.yl, label %bb.xy

bb.xy:                                            ; preds = %bb.xx
  %i.ckm = getelementptr inbounds nuw i8, ptr %i.cjl, i64 4 ; 2 uses
  %i.ckn = load i8, ptr %i.ckf, align 1, !tbaa !94 ; 2 uses
  %i.cko = sext i8 %i.ckn to i64
  %i.ckp = shl nsw i64 %i.cko, 21
  %i.ckq = and i64 %i.ckp, 266338304
  %i.ckr = or disjoint i64 %i.ckq, %i.ckk         ; 2 uses
  %i.cks = icmp sgt i8 %i.ckn, -1
  br i1 %i.cks, label %bb.yl, label %bb.xz

bb.xz:                                            ; preds = %bb.xy
  %i.ckt = getelementptr inbounds nuw i8, ptr %i.cjl, i64 5 ; 2 uses
  %i.cku = load i8, ptr %i.ckm, align 1, !tbaa !94 ; 2 uses
  %i.ckv = sext i8 %i.cku to i64
  %i.ckw = shl nsw i64 %i.ckv, 28
  %i.ckx = and i64 %i.ckw, 34091302912
  %i.cky = or disjoint i64 %i.ckx, %i.ckr         ; 6 uses
  %i.ckz = icmp sgt i8 %i.cku, -1
  br i1 %i.ckz, label %bb.yl, label %bb.ya

bb.ya:                                            ; preds = %bb.xz
  %i.cla = getelementptr inbounds nuw i8, ptr %i.cjl, i64 6 ; 2 uses
  %i.clb = load i8, ptr %i.ckt, align 1, !tbaa !94
  %i.clc = icmp sgt i8 %i.clb, -1
  br i1 %i.clc, label %bb.yl, label %bb.yb

bb.yb:                                            ; preds = %bb.ya
  %i.cld = getelementptr inbounds nuw i8, ptr %i.cjl, i64 7 ; 2 uses
  %i.cle = load i8, ptr %i.cla, align 1, !tbaa !94
  %i.clf = icmp sgt i8 %i.cle, -1
  br i1 %i.clf, label %bb.yl, label %bb.yc

bb.yc:                                            ; preds = %bb.yb
  %i.clg = getelementptr inbounds nuw i8, ptr %i.cjl, i64 8 ; 2 uses
  %i.clh = load i8, ptr %i.cld, align 1, !tbaa !94
  %i.cli = icmp sgt i8 %i.clh, -1
  br i1 %i.cli, label %bb.yl, label %bb.yd

bb.yd:                                            ; preds = %bb.yc
  %i.clj = getelementptr inbounds nuw i8, ptr %i.cjl, i64 9 ; 2 uses
  %i.clk = load i8, ptr %i.clg, align 1, !tbaa !94
  %i.cll = icmp sgt i8 %i.clk, -1
  br i1 %i.cll, label %bb.yl, label %bb.ye

bb.ye:                                            ; preds = %bb.yd
  %i.clm = getelementptr inbounds nuw i8, ptr %i.cjl, i64 10
  %i.cln = load i8, ptr %i.clj, align 1, !tbaa !94
  %i.clo = icmp sgt i8 %i.cln, -1
  br i1 %i.clo, label %bb.yl, label %bb.yf

bb.yf:                                            ; preds = %bb.ye
  %i.clp = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.clp, ptr noundef nonnull @.str.77)
          to label %bb.yg unwind label %bb.yh

bb.yg:                                            ; preds = %bb.yf
  call void @__cxa_throw(ptr nonnull %i.clp, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

bb.yh:                                            ; preds = %bb.yf
  %i.clq = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.clp) #28
  br label %common.resume

.lr.ph1755:                                       ; preds = %.preheader892, %bb.yi
  %indvars.iv2547 = phi i64 [ %indvars.iv.next2548, %bb.yi ], [ 0, %.preheader892 ] ; 3 uses
  %.1.i.i280.i1753 = phi i64 [ %i.clx, %bb.yi ], [ 0, %.preheader892 ] ; 2 uses
  %.170.i.i279.i1752 = phi ptr [ %i.clt, %bb.yi ], [ %i.cjl, %.preheader892 ] ; 2 uses
  %i.clr = load i8, ptr %.170.i.i279.i1752, align 1, !tbaa !94 ; 3 uses
  %i.cls = icmp slt i8 %i.clr, 0
  %i.clt = getelementptr inbounds nuw i8, ptr %.170.i.i279.i1752, i64 1 ; 3 uses
  br i1 %i.cls, label %bb.yi, label %.critedge.i.i283.i

bb.yi:                                            ; preds = %.lr.ph1755
  %i.clu = and i8 %i.clr, 127
  %i.clv = zext nneg i8 %i.clu to i64
  %i.clw = shl i64 %i.clv, %indvars.iv2547
  %i.clx = or i64 %i.clw, %.1.i.i280.i1753
  %indvars.iv.next2548 = add nuw nsw i64 %indvars.iv2547, 7
  %.not.i.i282.i = icmp eq ptr %i.clt, %i.cjp
  br i1 %.not.i.i282.i, label %._crit_edge1756, label %.lr.ph1755, !llvm.loop !46

._crit_edge1756:                                  ; preds = %bb.yi, %.preheader892
  %i.cly = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cly, ptr noundef nonnull @.str.78)
          to label %bb.yj unwind label %bb.yk

bb.yj:                                            ; preds = %._crit_edge1756
  call void @__cxa_throw(ptr nonnull %i.cly, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

bb.yk:                                            ; preds = %._crit_edge1756
  %i.clz = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cly) #28
  br label %common.resume

.critedge.i.i283.i:                               ; preds = %.lr.ph1755
  %i.cma = zext nneg i8 %i.clr to i64
  %i.cmb = shl i64 %i.cma, %indvars.iv2547
  %i.cmc = or i64 %i.cmb, %.1.i.i280.i1753
  br label %bb.yl

bb.yl:                                            ; preds = %.critedge.i.i283.i, %bb.ye, %bb.yd, %bb.yc, %bb.yb, %bb.ya, %bb.xz, %bb.xy, %bb.xx, %bb.xw
  %.271.i.i284.i = phi ptr [ %i.clt, %.critedge.i.i283.i ], [ %i.clm, %bb.ye ], [ %i.cjy, %bb.xw ], [ %i.ckf, %bb.xx ], [ %i.ckm, %bb.xy ], [ %i.ckt, %bb.xz ], [ %i.cla, %bb.ya ], [ %i.cld, %bb.yb ], [ %i.clg, %bb.yc ], [ %i.clj, %bb.yd ]
  %.2.i.i285.i = phi i64 [ %i.cmc, %.critedge.i.i283.i ], [ %i.cky, %bb.ye ], [ %i.ckd, %bb.xw ], [ %i.ckk, %bb.xx ], [ %i.ckr, %bb.xy ], [ %i.cky, %bb.xz ], [ %i.cky, %bb.ya ], [ %i.cky, %bb.yb ], [ %i.cky, %bb.yc ], [ %i.cky, %bb.yd ]
  %i.cmd = ptrtoint ptr %.271.i.i284.i to i64
  %i.cme = sub i64 %i.cmd, %i.cjt
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i286.i

_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i286.i: ; preds = %bb.yl, %bb.xu
  %.0556 = phi i64 [ 1, %bb.xu ], [ %i.cme, %bb.yl ] ; 4 uses
  %.072.i.i287.i = phi i64 [ %i.cjs, %bb.xu ], [ %.2.i.i285.i, %bb.yl ]
  %i.cmf = icmp ugt i64 %.0556, %i.cjj
  br i1 %i.cmf, label %bb.ym, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit153

bb.ym:                                            ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i286.i
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %.0556, i64 noundef %i.cjj) #32
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit153: ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i286.i
  %i.cmg = sub nuw i64 %i.cjj, %.0556             ; 3 uses
  %i.cmh = getelementptr inbounds nuw i8, ptr %i.cjl, i64 %.0556 ; 17 uses
  store i64 %i.cmg, ptr %17, align 8, !tbaa !249
  store ptr %i.cmh, ptr %i.f, align 8, !tbaa !363
  %i.cmi = and i64 %.072.i.i287.i, 4294967295     ; 9 uses
  %i.cmj = icmp ult i64 %i.cmg, %i.cmi
  br i1 %i.cmj, label %bb.yn, label %bb.yq, !prof !169

bb.yn:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit153
  %i.cmk = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cmk, ptr noundef nonnull @.str.84)
          to label %bb.yo unwind label %bb.yp

bb.yo:                                            ; preds = %bb.yn
  call void @__cxa_throw(ptr nonnull %i.cmk, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

end_hunk_3
