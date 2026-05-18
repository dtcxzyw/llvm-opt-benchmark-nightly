inline.NumInlined: 948
inline.NumDeleted: 473
begin_hunk_0_@_ZN2v88internal8compiler10LoopFinder32FindSmallInnermostLoopFromHeaderEPNS1_4NodeERNS1_8AllNodesEPNS0_4ZoneEmNS2_7PurposeE:_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  %.sroa.0299.0 = load ptr, ptr %.sroa.0299.0520, align 8 ; 2 uses
  %.not396 = icmp eq ptr %.sroa.0299.0, null
  br i1 %.not396, label %.thread369, label %.lr.ph521

bb.av:                                            ; preds = %bb.d
  br i1 %i.s, label %bb.aw, label %bb.bh

bb.aw:                                            ; preds = %bb.av
  %i.kk = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.0294.0505 = load ptr, ptr %i.kk, align 8 ; 2 uses
  %.not395506 = icmp eq ptr %.sroa.0294.0505, null
  br i1 %.not395506, label %.thread369, label %.lr.ph511

.lr.ph511:                                        ; preds = %bb.aw, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit164
  %.sroa.0294.0510 = phi ptr [ %.sroa.0294.0, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit164 ], [ %.sroa.0294.0505, %bb.aw ] ; 3 uses
  %.sroa.0313.7509 = phi ptr [ %.sroa.0313.8, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit164 ], [ %.sroa.0313.0557, %bb.aw ] ; 7 uses
  %.sroa.21.7508 = phi ptr [ %.sroa.21.8, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit164 ], [ %i.u, %bb.aw ] ; 7 uses
  %.sroa.57.7507 = phi ptr [ %.sroa.57.8, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit164 ], [ %.sroa.57.0555, %bb.aw ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #11
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.0294.0510, i64 24
  %i.km = getelementptr inbounds nuw i8, ptr %.sroa.0294.0510, i64 16
  %i.kn = load i32, ptr %i.km, align 8            ; 2 uses
  %i.ko = lshr i32 %i.kn, 1
  %i.kp = zext nneg i32 %i.ko to i64
  %i.kq = getelementptr inbounds nuw [24 x i8], ptr %i.kl, i64 %i.kp ; 2 uses
  %i.kr = trunc i32 %i.kn to i1
  br i1 %i.kr, label %_ZNK2v88internal8compiler4Node4Uses14const_iteratordeEv.exit143, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph511
  %i.ks = load ptr, ptr %i.kq, align 8
  br label %_ZNK2v88internal8compiler4Node4Uses14const_iteratordeEv.exit143

_ZNK2v88internal8compiler4Node4Uses14const_iteratordeEv.exit143: ; preds = %.lr.ph511, %bb.ax
  %i.kt = phi ptr [ %i.ks, %bb.ax ], [ %i.kq, %.lr.ph511 ] ; 5 uses
  store ptr %i.kt, ptr %i.g, align 8
  %i.ku = load i64, ptr %i.o, align 8
  %.not.not.i.i.i144 = icmp eq i64 %i.ku, 0
  br i1 %.not.not.i.i.i144, label %.preheader582, label %bb.az

.preheader582:                                    ; preds = %_ZNK2v88internal8compiler4Node4Uses14const_iteratordeEv.exit143, %bb.ay
  %.sroa.06.0.in.i.i.i154 = phi ptr [ %.sroa.06.0.i.i.i155, %bb.ay ], [ %i.r, %_ZNK2v88internal8compiler4Node4Uses14const_iteratordeEv.exit143 ]
  %.sroa.06.0.i.i.i155 = load ptr, ptr %.sroa.06.0.in.i.i.i154, align 8 ; 3 uses
  %i.kv = icmp eq ptr %.sroa.06.0.i.i.i155, null
  br i1 %i.kv, label %.loopexit416, label %bb.ay

bb.ay:                                            ; preds = %.preheader582
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i155, i64 8
  %i.kx = load ptr, ptr %i.kw, align 8
  %i.ky = icmp eq ptr %i.kt, %i.kx
  br i1 %i.ky, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit164, label %.preheader582, !llvm.loop !12

bb.az:                                            ; preds = %_ZNK2v88internal8compiler4Node4Uses14const_iteratordeEv.exit143
  %i.kz = ptrtoint ptr %i.kt to i64               ; 2 uses
  %i.la = xor i64 %i.kz, -1
  %i.lb = shl i64 %i.kz, 21
  %i.lc = add i64 %i.lb, %i.la                    ; 2 uses
  %i.ld = lshr i64 %i.lc, 24
  %i.le = xor i64 %i.ld, %i.lc
  %i.lf = mul i64 %i.le, 265                      ; 2 uses
  %i.lg = lshr i64 %i.lf, 14
  %i.lh = xor i64 %i.lg, %i.lf
  %i.li = mul i64 %i.lh, 21                       ; 2 uses
  %i.lj = lshr i64 %i.li, 28
  %i.lk = xor i64 %i.lj, %i.li
  %i.ll = mul i64 %i.lk, 2147483649               ; 3 uses
  %i.lm = load i64, ptr %i.p, align 8             ; 2 uses
  %i.ln = urem i64 %i.ll, %i.lm                   ; 2 uses
  %i.lo = load ptr, ptr %i.q, align 8
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %i.ln
  %i.lq = load ptr, ptr %i.lp, align 8            ; 2 uses
  %.not.i.i.i.i.i145 = icmp eq ptr %i.lq, null
  br i1 %.not.i.i.i.i.i145, label %.loopexit416, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.lr = load ptr, ptr %i.lq, align 8            ; 3 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  %i.lu = load i64, ptr %i.lt, align 8
  %i.lv = icmp eq i64 %i.ll, %i.lu
  %i.lw = load ptr, ptr %i.ls, align 8
  %i.lx = icmp eq ptr %i.kt, %i.lw
  %i.ly = select i1 %i.lv, i1 %i.lx, i1 false
  br i1 %i.ly, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit164, label %.lr.ph.i.i.i.i.i146

bb.bb:                                            ; preds = %bb.bc
  %i.lz = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  %i.ma = icmp eq i64 %i.ll, %i.mg
  %i.mb = load ptr, ptr %i.lz, align 8
  %i.mc = icmp eq ptr %i.kt, %i.mb
  %i.md = select i1 %i.ma, i1 %i.mc, i1 false
  br i1 %i.md, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit164, label %.lr.ph.i.i.i.i.i146, !llvm.loop !13

.lr.ph.i.i.i.i.i146:                              ; preds = %bb.ba, %bb.bb
  %.020.i.i.i.i.i147 = phi ptr [ %i.me, %bb.bb ], [ %i.lr, %bb.ba ]
  %i.me = load ptr, ptr %.020.i.i.i.i.i147, align 8 ; 4 uses
  %.not18.i.i.i.i.i148 = icmp eq ptr %i.me, null
  br i1 %.not18.i.i.i.i.i148, label %.loopexit416, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph.i.i.i.i.i146
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 16
  %i.mg = load i64, ptr %i.mf, align 8            ; 2 uses
  %i.mh = urem i64 %i.mg, %i.lm
  %.not19.i.i.i.i.i149 = icmp eq i64 %i.mh, %i.ln
  br i1 %.not19.i.i.i.i.i149, label %bb.bb, label %..loopexit_crit_edge21.i.i.i.i.i150, !llvm.loop !13

..loopexit_crit_edge21.i.i.i.i.i150:              ; preds = %bb.bc
  br label %.loopexit416, !llvm.loop !13

.loopexit416:                                     ; preds = %.lr.ph.i.i.i.i.i146, %.preheader582, %..loopexit_crit_edge21.i.i.i.i.i150, %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  store ptr %i.k, ptr %8, align 8
  %i.mi = call { ptr, i8 } @_ZNSt10_HashtableIPN2v88internal8compiler4NodeES4_NS1_13ZoneAllocatorIS4_EENSt8__detail9_IdentityESt8equal_toIS4_ENS0_4base4hashIS4_EENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS4_SM_NS7_10_AllocNodeINS5_INS7_10_Hash_nodeIS4_Lb1EEEEEEEEESt4pairINS7_14_Node_iteratorIS4_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(64) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %8) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  %.not.i157 = icmp eq ptr %.sroa.21.7508, %.sroa.57.7507
  br i1 %.not.i157, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %.loopexit416
  %i.mj = load ptr, ptr %i.g, align 8
  store ptr %i.mj, ptr %.sroa.21.7508, align 8
  %i.mk = getelementptr inbounds nuw i8, ptr %.sroa.21.7508, i64 8
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit164

bb.be:                                            ; preds = %.loopexit416
  %i.ml = ptrtoint ptr %.sroa.21.7508 to i64
  %i.mm = ptrtoint ptr %.sroa.0313.7509 to i64
  %i.mn = sub i64 %i.ml, %i.mm                    ; 6 uses
  %i.mo = icmp eq i64 %i.mn, 9223372036854775800
  br i1 %i.mo, label %bb.bf, label %_ZNKSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i158

bb.bf:                                            ; preds = %bb.be
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #12
  unreachable

_ZNKSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i158: ; preds = %bb.be
  %i.mp = ashr exact i64 %i.mn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i159 = call i64 @llvm.umax.i64(i64 %i.mp, i64 1)
  %i.mq = add nsw i64 %.sroa.speculated.i.i.i159, %i.mp ; 2 uses
  %i.mr = icmp ult i64 %i.mq, %i.mp
  %i.ms = call i64 @llvm.umin.i64(i64 %i.mq, i64 1152921504606846975)
  %i.mt = select i1 %i.mr, i64 1152921504606846975, i64 %i.ms ; 3 uses
  %.not.i.i.i160 = icmp ne i64 %i.mt, 0
  call void @llvm.assume(i1 %.not.i.i.i160)
  %i.mu = shl nuw nsw i64 %i.mt, 3
  %i.mv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mu) #13 ; 4 uses
  %i.mw = getelementptr inbounds i8, ptr %i.mv, i64 %i.mn ; 2 uses
  %i.mx = load ptr, ptr %i.g, align 8
  store ptr %i.mx, ptr %i.mw, align 8
  %i.my = icmp sgt i64 %i.mn, 0
  br i1 %i.my, label %bb.bg, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i163

bb.bg:                                            ; preds = %_ZNKSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i158
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.mv, ptr align 8 %.sroa.0313.7509, i64 %i.mn, i1 false)
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i163

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i163: ; preds = %bb.bg, %_ZNKSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i158
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0313.7509, i64 noundef %i.mn) #14
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.mv, i64 %i.mt
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit164

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit164: ; preds = %bb.bb, %bb.ay, %bb.ba, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i163, %bb.bd
  %.sroa.57.8 = phi ptr [ %.sroa.57.7507, %bb.bd ], [ %i.na, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i163 ], [ %.sroa.57.7507, %bb.ay ], [ %.sroa.57.7507, %bb.ba ], [ %.sroa.57.7507, %bb.bb ] ; 2 uses
  %.sroa.21.8 = phi ptr [ %i.mk, %bb.bd ], [ %i.mz, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i163 ], [ %.sroa.21.7508, %bb.ay ], [ %.sroa.21.7508, %bb.ba ], [ %.sroa.21.7508, %bb.bb ] ; 2 uses
  %.sroa.0313.8 = phi ptr [ %.sroa.0313.7509, %bb.bd ], [ %i.mv, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i163 ], [ %.sroa.0313.7509, %bb.ay ], [ %.sroa.0313.7509, %bb.ba ], [ %.sroa.0313.7509, %bb.bb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  %.sroa.0294.0 = load ptr, ptr %.sroa.0294.0510, align 8 ; 2 uses
  %.not395 = icmp eq ptr %.sroa.0294.0, null
  br i1 %.not395, label %.thread369, label %.lr.ph511

bb.bh:                                            ; preds = %bb.av
  %i.nb = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %i.nc = load i32, ptr %i.nb, align 4
  %i.nd = and i32 %i.nc, 251658240
  %.not.i.i165 = icmp eq i32 %i.nd, 251658240
  %i.ne = ptrtoint ptr %i.v to i64
  %i.nf = add i64 %i.ne, 32
  %i.ng = inttoptr i64 %i.nf to ptr               ; 2 uses
  br i1 %.not.i.i165, label %bb.bi, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit167

bb.bi:                                            ; preds = %bb.bh
  %i.nh = load ptr, ptr %i.ng, align 8
  %i.ni = ptrtoint ptr %i.nh to i64
  %i.nj = add i64 %i.ni, 16
  %i.nk = inttoptr i64 %i.nj to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit167

_ZNK2v88internal8compiler4Node7InputAtEi.exit167: ; preds = %bb.bh, %bb.bi
  %.sink.i.i166 = phi ptr [ %i.nk, %bb.bi ], [ %i.ng, %bb.bh ]
  %i.nl = load ptr, ptr %.sink.i.i166, align 8
  %i.nm = load ptr, ptr %i.nl, align 8            ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 16
  %i.no = load i16, ptr %i.nn, align 8
  %i.np = add i16 %i.no, -33
  %switch392 = icmp ult i16 %i.np, 2
  br i1 %switch392, label %_ZSt5countIPKN2v88internal7BuiltinES2_ENSt15iterator_traitsIT_E15difference_typeES6_S6_RKT0_.exit, label %.thread381

_ZSt5countIPKN2v88internal7BuiltinES2_ENSt15iterator_traitsIT_E15difference_typeES6_S6_RKT0_.exit: ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit167
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nm, i64 40
  %i.nr = load i64, ptr %i.nq, align 8
  %i.ns = trunc i64 %i.nr to i32                  ; 2 uses
  %13 = insertelement <13 x i32> poison, i32 %i.ns, i64 0
  %14 = shufflevector <13 x i32> %13, <13 x i32> poison, <13 x i32> zeroinitializer
  %15 = icmp eq <13 x i32> %14, <i32 1344, i32 1328, i32 1329, i32 1330, i32 1332, i32 1327, i32 1362, i32 1363, i32 1336, i32 1338, i32 1339, i32 1341, i32 1333>
  %16 = bitcast <13 x i1> %15 to i13
  %17 = call range(i13 0, 14) i13 @llvm.ctpop.i13(i13 %16)
  %i.nt = icmp eq i32 %i.ns, 1413
  %18 = zext i1 %i.nt to i13
  %19 = or i13 %17, %18
  %i.nu = icmp eq i13 %19, 0
  br i1 %i.nu, label %.thread381, label %bb.bj

bb.bj:                                            ; preds = %_ZSt5countIPKN2v88internal7BuiltinES2_ENSt15iterator_traitsIT_E15difference_typeES6_S6_RKT0_.exit
  %i.nv = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.0289.0495 = load ptr, ptr %i.nv, align 8 ; 2 uses
  %.not394496 = icmp eq ptr %.sroa.0289.0495, null
  br i1 %.not394496, label %.thread369, label %.lr.ph501

.lr.ph501:                                        ; preds = %bb.bj, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit190
  %.sroa.0289.0500 = phi ptr [ %.sroa.0289.0, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit190 ], [ %.sroa.0289.0495, %bb.bj ] ; 3 uses
  %.sroa.0313.9499 = phi ptr [ %.sroa.0313.10, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit190 ], [ %.sroa.0313.0557, %bb.bj ] ; 7 uses
  %.sroa.21.9498 = phi ptr [ %.sroa.21.10, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit190 ], [ %i.u, %bb.bj ] ; 7 uses
  %.sroa.57.9497 = phi ptr [ %.sroa.57.10, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit190 ], [ %.sroa.57.0555, %bb.bj ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #11
  %i.nw = getelementptr inbounds nuw i8, ptr %.sroa.0289.0500, i64 24
  %i.nx = getelementptr inbounds nuw i8, ptr %.sroa.0289.0500, i64 16
  %i.ny = load i32, ptr %i.nx, align 8            ; 2 uses
  %i.nz = lshr i32 %i.ny, 1
  %i.oa = zext nneg i32 %i.nz to i64
  %i.ob = getelementptr inbounds nuw [24 x i8], ptr %i.nw, i64 %i.oa ; 2 uses
  %i.oc = trunc i32 %i.ny to i1
  br i1 %i.oc, label %_ZNK2v88internal8compiler4Node4Uses14const_iteratordeEv.exit169, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph501
  %i.od = load ptr, ptr %i.ob, align 8
  br label %_ZNK2v88internal8compiler4Node4Uses14const_iteratordeEv.exit169

_ZNK2v88internal8compiler4Node4Uses14const_iteratordeEv.exit169: ; preds = %.lr.ph501, %bb.bk
  %i.oe = phi ptr [ %i.od, %bb.bk ], [ %i.ob, %.lr.ph501 ] ; 5 uses
  store ptr %i.oe, ptr %i.h, align 8
  %i.of = load i64, ptr %i.o, align 8
  %.not.not.i.i.i170 = icmp eq i64 %i.of, 0
  br i1 %.not.not.i.i.i170, label %.preheader585, label %bb.bm

.preheader585:                                    ; preds = %_ZNK2v88internal8compiler4Node4Uses14const_iteratordeEv.exit169, %bb.bl
  %.sroa.06.0.in.i.i.i180 = phi ptr [ %.sroa.06.0.i.i.i181, %bb.bl ], [ %i.r, %_ZNK2v88internal8compiler4Node4Uses14const_iteratordeEv.exit169 ]
  %.sroa.06.0.i.i.i181 = load ptr, ptr %.sroa.06.0.in.i.i.i180, align 8 ; 3 uses
  %i.og = icmp eq ptr %.sroa.06.0.i.i.i181, null
  br i1 %i.og, label %.loopexit419, label %bb.bl

bb.bl:                                            ; preds = %.preheader585
  %i.oh = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i181, i64 8
  %i.oi = load ptr, ptr %i.oh, align 8
  %i.oj = icmp eq ptr %i.oe, %i.oi
  br i1 %i.oj, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit190, label %.preheader585, !llvm.loop !12

bb.bm:                                            ; preds = %_ZNK2v88internal8compiler4Node4Uses14const_iteratordeEv.exit169
  %i.ok = ptrtoint ptr %i.oe to i64               ; 2 uses
  %i.ol = xor i64 %i.ok, -1
  %i.om = shl i64 %i.ok, 21
  %i.on = add i64 %i.om, %i.ol                    ; 2 uses
  %i.oo = lshr i64 %i.on, 24
  %i.op = xor i64 %i.oo, %i.on
  %i.oq = mul i64 %i.op, 265                      ; 2 uses
  %i.or = lshr i64 %i.oq, 14
  %i.os = xor i64 %i.or, %i.oq
  %i.ot = mul i64 %i.os, 21                       ; 2 uses
  %i.ou = lshr i64 %i.ot, 28
  %i.ov = xor i64 %i.ou, %i.ot
  %i.ow = mul i64 %i.ov, 2147483649               ; 3 uses
  %i.ox = load i64, ptr %i.p, align 8             ; 2 uses
  %i.oy = urem i64 %i.ow, %i.ox                   ; 2 uses
  %i.oz = load ptr, ptr %i.q, align 8
  %i.pa = getelementptr inbounds nuw [8 x i8], ptr %i.oz, i64 %i.oy
  %i.pb = load ptr, ptr %i.pa, align 8            ; 2 uses
  %.not.i.i.i.i.i171 = icmp eq ptr %i.pb, null
  br i1 %.not.i.i.i.i.i171, label %.loopexit419, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.pc = load ptr, ptr %i.pb, align 8            ; 3 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 8
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pc, i64 16
  %i.pf = load i64, ptr %i.pe, align 8
  %i.pg = icmp eq i64 %i.ow, %i.pf
  %i.ph = load ptr, ptr %i.pd, align 8
  %i.pi = icmp eq ptr %i.oe, %i.ph
  %i.pj = select i1 %i.pg, i1 %i.pi, i1 false
  br i1 %i.pj, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit190, label %.lr.ph.i.i.i.i.i172

bb.bo:                                            ; preds = %bb.bp
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pp, i64 8
  %i.pl = icmp eq i64 %i.ow, %i.pr
  %i.pm = load ptr, ptr %i.pk, align 8
  %i.pn = icmp eq ptr %i.oe, %i.pm
  %i.po = select i1 %i.pl, i1 %i.pn, i1 false
  br i1 %i.po, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit190, label %.lr.ph.i.i.i.i.i172, !llvm.loop !13

.lr.ph.i.i.i.i.i172:                              ; preds = %bb.bn, %bb.bo
  %.020.i.i.i.i.i173 = phi ptr [ %i.pp, %bb.bo ], [ %i.pc, %bb.bn ]
  %i.pp = load ptr, ptr %.020.i.i.i.i.i173, align 8 ; 4 uses
  %.not18.i.i.i.i.i174 = icmp eq ptr %i.pp, null
  br i1 %.not18.i.i.i.i.i174, label %.loopexit419, label %bb.bp

bb.bp:                                            ; preds = %.lr.ph.i.i.i.i.i172
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 16
  %i.pr = load i64, ptr %i.pq, align 8            ; 2 uses
  %i.ps = urem i64 %i.pr, %i.ox
  %.not19.i.i.i.i.i175 = icmp eq i64 %i.ps, %i.oy
  br i1 %.not19.i.i.i.i.i175, label %bb.bo, label %..loopexit_crit_edge21.i.i.i.i.i176, !llvm.loop !13

..loopexit_crit_edge21.i.i.i.i.i176:              ; preds = %bb.bp
  br label %.loopexit419, !llvm.loop !13

.loopexit419:                                     ; preds = %.lr.ph.i.i.i.i.i172, %.preheader585, %..loopexit_crit_edge21.i.i.i.i.i176, %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  store ptr %i.k, ptr %7, align 8
  %i.pt = call { ptr, i8 } @_ZNSt10_HashtableIPN2v88internal8compiler4NodeES4_NS1_13ZoneAllocatorIS4_EENSt8__detail9_IdentityESt8equal_toIS4_ENS0_4base4hashIS4_EENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS4_SM_NS7_10_AllocNodeINS5_INS7_10_Hash_nodeIS4_Lb1EEEEEEEEESt4pairINS7_14_Node_iteratorIS4_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(64) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %7) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  %.not.i183 = icmp eq ptr %.sroa.21.9498, %.sroa.57.9497
  br i1 %.not.i183, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %.loopexit419
  %i.pu = load ptr, ptr %i.h, align 8
  store ptr %i.pu, ptr %.sroa.21.9498, align 8
  %i.pv = getelementptr inbounds nuw i8, ptr %.sroa.21.9498, i64 8
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit190

bb.br:                                            ; preds = %.loopexit419
  %i.pw = ptrtoint ptr %.sroa.21.9498 to i64
  %i.px = ptrtoint ptr %.sroa.0313.9499 to i64
  %i.py = sub i64 %i.pw, %i.px                    ; 6 uses
  %i.pz = icmp eq i64 %i.py, 9223372036854775800
  br i1 %i.pz, label %bb.bs, label %_ZNKSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i184

bb.bs:                                            ; preds = %bb.br
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #12
  unreachable

_ZNKSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i184: ; preds = %bb.br
  %i.qa = ashr exact i64 %i.py, 3                 ; 3 uses
  %.sroa.speculated.i.i.i185 = call i64 @llvm.umax.i64(i64 %i.qa, i64 1)
  %i.qb = add nsw i64 %.sroa.speculated.i.i.i185, %i.qa ; 2 uses
  %i.qc = icmp ult i64 %i.qb, %i.qa
  %i.qd = call i64 @llvm.umin.i64(i64 %i.qb, i64 1152921504606846975)
  %i.qe = select i1 %i.qc, i64 1152921504606846975, i64 %i.qd ; 3 uses
  %.not.i.i.i186 = icmp ne i64 %i.qe, 0
  call void @llvm.assume(i1 %.not.i.i.i186)
  %i.qf = shl nuw nsw i64 %i.qe, 3
  %i.qg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qf) #13 ; 4 uses
  %i.qh = getelementptr inbounds i8, ptr %i.qg, i64 %i.py ; 2 uses
  %i.qi = load ptr, ptr %i.h, align 8
  store ptr %i.qi, ptr %i.qh, align 8
  %i.qj = icmp sgt i64 %i.py, 0
  br i1 %i.qj, label %bb.bt, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i189

bb.bt:                                            ; preds = %_ZNKSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i184
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.qg, ptr align 8 %.sroa.0313.9499, i64 %i.py, i1 false)
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i189

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i189: ; preds = %bb.bt, %_ZNKSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i184
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qh, i64 8
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0313.9499, i64 noundef %i.py) #14
  %i.ql = getelementptr inbounds nuw [8 x i8], ptr %i.qg, i64 %i.qe
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit190

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit190: ; preds = %bb.bo, %bb.bl, %bb.bn, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i189, %bb.bq
  %.sroa.57.10 = phi ptr [ %.sroa.57.9497, %bb.bq ], [ %i.ql, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i189 ], [ %.sroa.57.9497, %bb.bl ], [ %.sroa.57.9497, %bb.bn ], [ %.sroa.57.9497, %bb.bo ] ; 2 uses
  %.sroa.21.10 = phi ptr [ %i.pv, %bb.bq ], [ %i.qk, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i189 ], [ %.sroa.21.9498, %bb.bl ], [ %.sroa.21.9498, %bb.bn ], [ %.sroa.21.9498, %bb.bo ] ; 2 uses
  %.sroa.0313.10 = phi ptr [ %.sroa.0313.9499, %bb.bq ], [ %i.qg, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i189 ], [ %.sroa.0313.9499, %bb.bl ], [ %.sroa.0313.9499, %bb.bn ], [ %.sroa.0313.9499, %bb.bo ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #11
  %.sroa.0289.0 = load ptr, ptr %.sroa.0289.0500, align 8 ; 2 uses
  %.not394 = icmp eq ptr %.sroa.0289.0, null
  br i1 %.not394, label %.thread369, label %.lr.ph501

bb.bu:                                            ; preds = %bb.d
  %i.qm = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %i.qn = load i32, ptr %i.qm, align 4
  %i.qo = and i32 %i.qn, 251658240
  %.not.i.i191 = icmp eq i32 %i.qo, 251658240
  %i.qp = ptrtoint ptr %i.v to i64
  %i.qq = add i64 %i.qp, 32
  %i.qr = inttoptr i64 %i.qq to ptr               ; 2 uses
  br i1 %.not.i.i191, label %bb.bv, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit193

bb.bv:                                            ; preds = %bb.bu
  %i.qs = load ptr, ptr %i.qr, align 8
  %i.qt = ptrtoint ptr %i.qs to i64
  %i.qu = add i64 %i.qt, 16
  %i.qv = inttoptr i64 %i.qu to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit193

_ZNK2v88internal8compiler4Node7InputAtEi.exit193: ; preds = %bb.bu, %bb.bv
  %.sink.i.i192 = phi ptr [ %i.qv, %bb.bv ], [ %i.qr, %bb.bu ]
  %i.qw = load ptr, ptr %.sink.i.i192, align 8    ; 5 uses
  %i.qx = load ptr, ptr %i.qw, align 8
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 16
  %i.qz = load i16, ptr %i.qy, align 8
  %i.ra = icmp eq i16 %i.qz, 258
  br i1 %i.ra, label %bb.bw, label %.critedge

bb.bw:                                            ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit193
  %.not.not.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.not.i.i, label %.preheader597, label %bb.by

.preheader597:                                    ; preds = %bb.bw, %bb.bx
  %.sroa.06.0.in.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.bx ], [ %i.r, %bb.bw ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8 ; 4 uses
  %i.rb = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %i.rb, label %_ZNSt13unordered_setIPN2v88internal8compiler4NodeENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorIS4_EEE4findERKS4_.exit, label %bb.bx

end_hunk_0
begin_hunk_1_@_ZNSt10_HashtableIPN2v88internal8compiler4NodeES4_NS1_13ZoneAllocatorIS4_EENSt8__detail9_IdentityESt8equal_toIS4_ENS0_4base4hashIS4_EENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKS4_:bb.a
  %i.bn = phi ptr [ %i.av, %.loopexit.thread ], [ %i.bj, %bb.h ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = urem i64 %i.bp, %i.bk                   ; 2 uses
  %.not9.i.i = icmp eq i64 %i.bq, %.0186369
  br i1 %.not9.i.i, label %_ZNSt10_HashtableIPN2v88internal8compiler4NodeES4_NS1_13ZoneAllocatorIS4_EENSt8__detail9_IdentityESt8equal_toIS4_ENS0_4base4hashIS4_EENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE8_M_eraseEmPNS7_15_Hash_node_baseEPNS7_10_Hash_nodeIS4_Lb1EEE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bq
  store ptr %i.bl, ptr %i.bs, align 8
  %.pre.i = load ptr, ptr %i.br, align 8          ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw [8 x i8], ptr %.pre.i, i64 %.0186369
  %.pre25.i = load ptr, ptr %.phi.trans.insert.i, align 8
  br label %.thread23.i

.thread23.i:                                      ; preds = %.loopexit.thread, %bb.j, %bb.h
  %.1206272 = phi ptr [ %.120, %bb.h ], [ %.1206271, %bb.j ], [ %i.an, %.loopexit.thread ]
  %.0186370 = phi i64 [ %.018, %bb.h ], [ %.0186369, %bb.j ], [ %i.ai, %.loopexit.thread ]
  %.0166568 = phi ptr [ %.016, %bb.h ], [ %.0166567, %bb.j ], [ %i.am, %.loopexit.thread ]
  %i.bt = phi ptr [ null, %bb.h ], [ %i.bn, %bb.j ], [ null, %.loopexit.thread ]
  %i.bu = phi ptr [ %i.bg, %bb.h ], [ %.pre25.i, %bb.j ], [ %i.am, %.loopexit.thread ]
  %i.bv = phi ptr [ %i.bh, %bb.h ], [ %.pre.i, %bb.j ], [ %i.ak, %.loopexit.thread ]
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %.0186370
  %i.by = icmp eq ptr %i.bw, %i.bu
  br i1 %i.by, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.thread23.i
  store ptr %i.bt, ptr %i.bw, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread23.i
  store ptr null, ptr %i.bx, align 8
  br label %_ZNSt10_HashtableIPN2v88internal8compiler4NodeES4_NS1_13ZoneAllocatorIS4_EENSt8__detail9_IdentityESt8equal_toIS4_ENS0_4base4hashIS4_EENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE8_M_eraseEmPNS7_15_Hash_node_baseEPNS7_10_Hash_nodeIS4_Lb1EEE.exit

bb.m:                                             ; preds = %.loopexit
  br i1 %.not18.i26, label %_ZNSt10_HashtableIPN2v88internal8compiler4NodeES4_NS1_13ZoneAllocatorIS4_EENSt8__detail9_IdentityESt8equal_toIS4_ENS0_4base4hashIS4_EENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE8_M_eraseEmPNS7_15_Hash_node_baseEPNS7_10_Hash_nodeIS4_Lb1EEE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = urem i64 %i.ca, %i.bf                   ; 2 uses
  %.not17.i = icmp eq i64 %i.cb, %.018
  br i1 %.not17.i, label %_ZNSt10_HashtableIPN2v88internal8compiler4NodeES4_NS1_13ZoneAllocatorIS4_EENSt8__detail9_IdentityESt8equal_toIS4_ENS0_4base4hashIS4_EENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE8_M_eraseEmPNS7_15_Hash_node_baseEPNS7_10_Hash_nodeIS4_Lb1EEE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.cb
  store ptr %.016, ptr %i.cc, align 8
  br label %_ZNSt10_HashtableIPN2v88internal8compiler4NodeES4_NS1_13ZoneAllocatorIS4_EENSt8__detail9_IdentityESt8equal_toIS4_ENS0_4base4hashIS4_EENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE8_M_eraseEmPNS7_15_Hash_node_baseEPNS7_10_Hash_nodeIS4_Lb1EEE.exit

_ZNSt10_HashtableIPN2v88internal8compiler4NodeES4_NS1_13ZoneAllocatorIS4_EENSt8__detail9_IdentityESt8equal_toIS4_ENS0_4base4hashIS4_EENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE8_M_eraseEmPNS7_15_Hash_node_baseEPNS7_10_Hash_nodeIS4_Lb1EEE.exit: ; preds = %bb.i, %bb.l, %bb.m, %bb.n, %bb.o
  %.01664 = phi ptr [ %.0166567, %bb.i ], [ %.0166568, %bb.l ], [ %.016, %bb.m ], [ %.016, %bb.n ], [ %.016, %bb.o ]
  %.12061 = phi ptr [ %.1206271, %bb.i ], [ %.1206272, %bb.l ], [ %.120, %bb.m ], [ %.120, %bb.n ], [ %.120, %bb.o ]
  %i.cd = load ptr, ptr %.12061, align 8
  store ptr %i.cd, ptr %.01664, align 8
  %i.ce = load i64, ptr %i.a, align 8
  %i.cf = add i64 %i.ce, -1
  store i64 %i.cf, ptr %i.a, align 8
  br label %_ZNSt10_HashtableIPN2v88internal8compiler4NodeES4_NS1_13ZoneAllocatorIS4_EENSt8__detail9_IdentityESt8equal_toIS4_ENS0_4base4hashIS4_EENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_find_before_nodeERKS4_.exit.thread

_ZNSt10_HashtableIPN2v88internal8compiler4NodeES4_NS1_13ZoneAllocatorIS4_EENSt8__detail9_IdentityESt8equal_toIS4_ENS0_4base4hashIS4_EENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_find_before_nodeERKS4_.exit.thread: ; preds = %.lr.ph.i, %.lr.ph, %bb.d, %..loopexit_crit_edge21.i, %bb.b, %_ZNSt10_HashtableIPN2v88internal8compiler4NodeES4_NS1_13ZoneAllocatorIS4_EENSt8__detail9_IdentityESt8equal_toIS4_ENS0_4base4hashIS4_EENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE8_M_eraseEmPNS7_15_Hash_node_baseEPNS7_10_Hash_nodeIS4_Lb1EEE.exit
  %.1 = phi i64 [ 1, %_ZNSt10_HashtableIPN2v88internal8compiler4NodeES4_NS1_13ZoneAllocatorIS4_EENSt8__detail9_IdentityESt8equal_toIS4_ENS0_4base4hashIS4_EENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE8_M_eraseEmPNS7_15_Hash_node_baseEPNS7_10_Hash_nodeIS4_Lb1EEE.exit ], [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %.lr.ph ], [ 0, %..loopexit_crit_edge21.i ], [ 0, %.lr.ph.i ]
  ret i64 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE19PrepareForInsertionEPKS4_mPm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3                   ; 2 uses
  %i.i = xor i64 %i.h, -1
  %.not = icmp ugt i64 %2, %i.i
  br i1 %.not, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.23) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.k = sub i64 %i.j, %i.f                       ; 2 uses
  %i.l = sub i64 %i.e, %i.j                       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.o, %i.f
  %i.q = ashr exact i64 %i.p, 3
  %i.r = add i64 %i.h, %2
  %i.s = icmp ult i64 %i.q, %i.r
  br i1 %i.s, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %3, align 8
  %i.t = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.u = load ptr, ptr %i.a, align 8
  %i.v = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.w = ptrtoint ptr %i.t to i64                 ; 3 uses
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  %i.y = ashr exact i64 %i.x, 3
  %i.z = add i64 %i.y, %2
  %i.aa = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.ab = icmp eq ptr %i.t, %i.aa
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ac, %i.w
  %i.ae = ashr exact i64 %i.ad, 2
  %i.af = select i1 %i.ab, i64 2, i64 %i.ae
  %i.ag = tail call noundef i64 @llvm.umax.i64(i64 %i.af, i64 %i.z) ; 3 uses
  %i.ah = load ptr, ptr %0, align 8               ; 3 uses
  %i.ai = icmp ult i64 %i.ag, 2305843009213693951
  br i1 %i.ai, label %bb.f, label %bb.e, !prof !8

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #12
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.aj = shl nuw i64 %i.ag, 3                    ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 3 uses
  %i.an = load i64, ptr %i.am, align 8            ; 2 uses
  %i.ao = sub i64 %i.al, %i.an
  %i.ap = icmp ugt i64 %i.aj, %i.ao
  br i1 %i.ap, label %bb.g, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler4NodeEA_S5_EEPT_m.exit, !prof !7

bb.g:                                             ; preds = %bb.f
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.ah, i64 noundef %i.aj) #11
  %.pre.i.i = load i64, ptr %i.am, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler4NodeEA_S5_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler4NodeEA_S5_EEPT_m.exit: ; preds = %bb.f, %bb.g
  %i.aq = phi i64 [ %.pre.i.i, %bb.g ], [ %i.an, %bb.f ] ; 2 uses
  %i.ar = inttoptr i64 %i.aq to ptr               ; 4 uses
  %i.as = add i64 %i.aq, %i.aj
  store i64 %i.as, ptr %i.am, align 8
  store ptr %i.ar, ptr %i.c, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.x
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %2
  store ptr %i.au, ptr %i.a, align 8
  %.not26 = icmp eq ptr %i.t, null
  br i1 %.not26, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler4NodeEA_S5_EEPT_m.exit
  %i.av = sub i64 %i.j, %i.w
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ar, ptr nonnull align 8 %i.t, i64 %i.av, i1 false)
  %i.aw = load ptr, ptr %i.c, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.k
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %2
  %i.az = sub i64 %i.v, %i.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ay, ptr nonnull align 8 %1, i64 %i.az, i1 false)
  %.pre = load ptr, ptr %i.c, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler4NodeEA_S5_EEPT_m.exit
  %i.ba = phi ptr [ %.pre, %bb.h ], [ %i.ar, %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler4NodeEA_S5_EEPT_m.exit ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.ag
  store ptr %i.bb, ptr %i.m, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.c
  %i.bc = ashr exact i64 %i.l, 3
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.bc)
  store i64 %.sroa.speculated, ptr %3, align 8
  %.not25 = icmp eq ptr %i.b, %1
  br i1 %.not25, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bd, ptr nonnull align 8 %1, i64 %i.l, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.be = load ptr, ptr %i.a, align 8
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %2
  store ptr %i.bf, ptr %i.a, align 8
  %i.bg = load ptr, ptr %i.c, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.l
  %.pn = phi ptr [ %i.ba, %bb.i ], [ %i.bg, %bb.l ]
  %.0 = getelementptr inbounds nuw i8, ptr %.pn, i64 %i.k
  ret ptr %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i13 @llvm.ctpop.i13(i13) #10

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { builtin nounwind allocsize(0) }
attributes #14 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = !{i8 0, i8 2}
!16 = !{}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_ZN2v88internal8compiler4Node11input_edgesEv: argument 0"}
!19 = distinct !{!19, !"_ZN2v88internal8compiler4Node11input_edgesEv"}
!20 = distinct !{!20, !6}
!21 = distinct !{!21, !6}
!22 = !{!23}
!23 = distinct !{!23, !24, !"_ZNSt5dequeIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE5beginEv: argument 0"}
!24 = distinct !{!24, !"_ZNSt5dequeIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE5beginEv"}
!25 = distinct !{!25, !6}
!26 = distinct !{!26, !6}
!27 = distinct !{!27, !6}
!28 = distinct !{!28, !6}
!29 = !{!30}
!30 = distinct !{!30, !31, !"_ZNSt5dequeIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE5beginEv: argument 0"}
!31 = distinct !{!31, !"_ZNSt5dequeIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE5beginEv"}
!32 = distinct !{!32, !6}
!33 = distinct !{!33, !6}
!34 = !{!"branch_weights", !"expected", i32 1721150, i32 2145762498}
!35 = distinct !{!35, !6}
!36 = distinct !{!36, !6}
!37 = distinct !{!37, !6, !38}
!38 = !{!"llvm.loop.unswitch.partial.disable"}
!39 = distinct !{!39, !6}
!40 = distinct !{!40, !6}
!41 = !{!"branch_weights", !"expected", i32 1721151, i32 2145762497}
!42 = distinct !{!42, !6}
!43 = distinct !{!43, !6}
!44 = distinct !{!44, !6}
!45 = distinct !{!45, !6}
!46 = distinct !{!46, !6}
!47 = distinct !{!47, !6}
!48 = !{i64 8}
!49 = distinct !{!49, !6}
!50 = distinct !{!50, !6}
end_hunk_1
