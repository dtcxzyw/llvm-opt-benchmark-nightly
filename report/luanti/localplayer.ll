Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/localplayer?download=true
inline.NumInlined: 802
inline.NumDeleted: 265
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN11LocalPlayer4moveEfP11EnvironmentPSt6vectorI13CollisionInfoSaIS3_EE:bb.a
  %i.uo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei

bb.da:                                            ; preds = %.lr.ph758, %.thread730
  %.sroa.0618.0757 = phi ptr [ %i.uh, %.lr.ph758 ], [ %i.vy, %.thread730 ] ; 3 uses
  %i.up = getelementptr inbounds nuw i8, ptr %.sroa.0618.0757, i64 1
  %i.uq = load i8, ptr %i.up, align 1, !tbaa !181
  %i.ur = icmp eq i8 %i.uq, 1
  br i1 %i.ur, label %bb.db, label %.thread730

bb.db:                                            ; preds = %bb.da
  %i.us = getelementptr inbounds nuw i8, ptr %.sroa.0618.0757, i64 2
  %.sroa.050.0.copyload = load i48, ptr %i.us, align 2, !tbaa !127
  %i.ut = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.ab, i48 %.sroa.050.0.copyload, ptr noundef null)
          to label %bb.dc unwind label %bb.dg

bb.dc:                                            ; preds = %bb.db
  %i.uu = and i32 %i.ut, 65535
  %i.uv = zext nneg i32 %i.uu to i64              ; 2 uses
  %i.uw = load ptr, ptr %i.ss, align 8, !tbaa !86
  %i.ux = load ptr, ptr %i.sr, align 8, !tbaa !87 ; 3 uses
  %i.uy = ptrtoint ptr %i.uw to i64
  %i.uz = ptrtoint ptr %i.ux to i64
  %i.va = sub i64 %i.uy, %i.uz
  %i.vb = sdiv exact i64 %i.va, 2080
  %i.vc = icmp ugt i64 %i.vb, %i.uv
  br i1 %i.vc, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.vd = getelementptr inbounds nuw [2080 x i8], ptr %i.ux, i64 %i.uv ; 2 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 16
  %i.vf = load i64, ptr %i.ve, align 8, !tbaa !21
  %i.vg = icmp eq i64 %i.vf, 0
  br i1 %i.vg, label %bb.de, label %_ZNK14NodeDefManager3getERK7MapNode.exit543

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %i.vh = getelementptr inbounds nuw i8, ptr %i.ux, i64 260000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit543

_ZNK14NodeDefManager3getERK7MapNode.exit543:      ; preds = %bb.de, %bb.dd
  %i.vi = phi ptr [ %i.vh, %bb.de ], [ %i.vd, %bb.dd ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  store ptr %i.uk, ptr %11, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.uk, ptr noundef nonnull align 1 dereferenceable(6) @.str.11, i64 6, i1 false)
  store i64 6, ptr %i.ul, align 8, !tbaa !21
  store i8 0, ptr %i.um, align 2, !tbaa !17
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 40
  %i.vk = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.vj, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %.noexc549 unwind label %bb.dh ; 2 uses

.noexc549:                                        ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit543
  %i.vl = icmp eq ptr %i.vk, null
  br i1 %i.vl, label %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit, label %bb.df

bb.df:                                            ; preds = %.noexc549
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vk, i64 40
  %i.vn = load i32, ptr %i.vm, align 8, !tbaa !195
  br label %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit

_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit: ; preds = %bb.df, %.noexc549
  %.0.i548 = phi i32 [ %i.vn, %bb.df ], [ 0, %.noexc549 ] ; 2 uses
  %i.vo = load ptr, ptr %11, align 8, !tbaa !16   ; 2 uses
  %i.vp = icmp eq ptr %i.vo, %i.uk
  br i1 %i.vp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i551, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i550

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i550: ; preds = %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit
  %i.vq = load i64, ptr %i.uk, align 8, !tbaa !17
  %i.vr = add i64 %i.vq, 1
  call void @_ZdlPvm(ptr noundef %i.vo, i64 noundef %i.vr) #25
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i551

bb.dg:                                            ; preds = %bb.db
  %i.vs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei

bb.dh:                                            ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit543
  %i.vt = landingpad { ptr, i32 }
          cleanup
  %i.vu = load ptr, ptr %11, align 8, !tbaa !16   ; 2 uses
  %i.vv = icmp eq ptr %i.vu, %i.uk
  br i1 %i.vv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit555, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i553

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i553: ; preds = %bb.dh
  %i.vw = load i64, ptr %i.uk, align 8, !tbaa !17
  %i.vx = add i64 %i.vw, 1
  call void @_ZdlPvm(ptr noundef %i.vu, i64 noundef %i.vx) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit555

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit555: ; preds = %bb.dh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i553
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %bb.ei

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i551: ; preds = %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i550
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %.not363 = icmp eq i32 %.0.i548, 0
  br i1 %.not363, label %.thread730, label %._crit_edge.i.i556

.thread730:                                       ; preds = %bb.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i551
  %i.vy = getelementptr inbounds nuw i8, ptr %.sroa.0618.0757, i64 56 ; 2 uses
  %.not748 = icmp eq ptr %i.vy, %i.uj
  br i1 %.not748, label %._crit_edge.i.i556, label %bb.da

._crit_edge.i.i556:                               ; preds = %.thread730, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i551, %bb.cx, %bb.cw, %_ZNK14NodeDefManager3getERK7MapNode.exit542
  %.4324 = phi i32 [ 0, %_ZNK14NodeDefManager3getERK7MapNode.exit542 ], [ 0, %bb.cw ], [ 0, %bb.cx ], [ 0, %.thread730 ], [ %.0.i548, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i551 ] ; 5 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %i.tf, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.wa = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.wa, ptr %12, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.wa, ptr noundef nonnull align 1 dereferenceable(12) @.str.12, i64 12, i1 false)
  %i.wb = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 12, ptr %i.wb, align 8, !tbaa !21
  %i.wc = getelementptr inbounds nuw i8, ptr %12, i64 28
  store i8 0, ptr %i.wc, align 4, !tbaa !17
  %i.wd = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.vz, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %.noexc561 unwind label %bb.dt ; 2 uses

.noexc561:                                        ; preds = %._crit_edge.i.i556
  %i.we = icmp eq ptr %i.wd, null
  br i1 %i.we, label %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit562.thread, label %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit562

_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit562: ; preds = %.noexc561
  %i.wf = getelementptr inbounds nuw i8, ptr %i.wd, i64 40
  %i.wg = load i32, ptr %i.wf, align 8, !tbaa !195
  %.not364 = icmp eq i32 %i.wg, 0
  br i1 %.not364, label %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit562.thread, label %bb.dj

_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit562.thread: ; preds = %.noexc561, %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit562
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.wh = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store ptr %i.wh, ptr %13, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.wh, ptr noundef nonnull align 1 dereferenceable(12) @.str.12, i64 12, i1 false)
  %i.wi = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 12, ptr %i.wi, align 8, !tbaa !21
  %i.wj = getelementptr inbounds nuw i8, ptr %13, i64 28
  store i8 0, ptr %i.wj, align 4, !tbaa !17
  %i.wk = getelementptr inbounds nuw i8, ptr %i.ub, i64 40
  %i.wl = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.wk, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %.noexc568 unwind label %bb.du ; 2 uses

.noexc568:                                        ; preds = %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit562.thread
  %i.wm = icmp eq ptr %i.wl, null
  br i1 %i.wm, label %.critedge, label %bb.di

bb.di:                                            ; preds = %.noexc568
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wl, i64 40
  %i.wo = load i32, ptr %i.wn, align 8, !tbaa !195
  %i.wp = icmp ne i32 %i.wo, 0
  %i.wq = zext i1 %i.wp to i8
  br label %.critedge

bb.dj:                                            ; preds = %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit562
  %i.wr = getelementptr inbounds nuw i8, ptr %0, i64 705 ; 2 uses
  store i8 1, ptr %i.wr, align 1, !tbaa !72
  br label %.critedge386

.critedge:                                        ; preds = %.noexc568, %bb.di
  %.0.i567 = phi i8 [ %i.wq, %bb.di ], [ 0, %.noexc568 ]
  %i.ws = getelementptr inbounds nuw i8, ptr %0, i64 705 ; 2 uses
  store i8 %.0.i567, ptr %i.ws, align 1, !tbaa !72
  %i.wt = load ptr, ptr %13, align 8, !tbaa !16   ; 2 uses
  %i.wu = icmp eq ptr %i.wt, %i.wh
  br i1 %i.wu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit572, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i570

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i570: ; preds = %.critedge
  %i.wv = load i64, ptr %i.wh, align 8, !tbaa !17
  %i.ww = add i64 %i.wv, 1
  call void @_ZdlPvm(ptr noundef %i.wt, i64 noundef %i.ww) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit572

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit572: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i570
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %.critedge386

.critedge386:                                     ; preds = %bb.dj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit572
  %i.wx = phi ptr [ %i.wr, %bb.dj ], [ %i.ws, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit572 ]
  %i.wy = load ptr, ptr %12, align 8, !tbaa !16   ; 2 uses
  %i.wz = icmp eq ptr %i.wy, %i.wa
  br i1 %i.wz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit575, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i573

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i573: ; preds = %.critedge386
  %i.xa = load i64, ptr %i.wa, align 8, !tbaa !17
  %i.xb = add i64 %i.xa, 1
  call void @_ZdlPvm(ptr noundef %i.wy, i64 noundef %i.xb) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit575

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit575: ; preds = %.critedge386, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i573
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.xc = load i8, ptr %i.oe, align 2, !tbaa !138, !range !78, !noundef !79
  %i.xd = trunc nuw i8 %i.xc to i1
  br i1 %i.xd, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit575
  %i.xe = getelementptr inbounds nuw i8, ptr %0, i64 422
  %i.xf = load i8, ptr %i.xe, align 2, !tbaa !145, !range !78, !noundef !79
  %i.xg = trunc nuw i8 %i.xf to i1
  %.1334728.not = xor i1 %.1334728, true
  %or.cond13.not = and i1 %.1334728.not, %i.xg
  %.not369 = icmp eq i32 %.4324, 0
  %or.cond387 = and i1 %.not369, %or.cond13.not
  br i1 %or.cond387, label %._crit_edge.i.i576, label %bb.dm

bb.dl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit575
  %.not369.old = icmp ne i32 %.4324, 0
  %or.cond388.not = or i1 %.1334728, %.not369.old
  br i1 %or.cond388.not, label %bb.dm, label %._crit_edge.i.i576

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %i.xh = load i8, ptr %i.wx, align 1, !tbaa !72, !range !78, !noundef !79
  %i.xi = xor i8 %i.xh, 1
  br label %._crit_edge.i.i576

._crit_edge.i.i576:                               ; preds = %bb.dl, %bb.dk, %bb.dm
  %i.xj = phi i8 [ 0, %bb.dl ], [ %i.xi, %bb.dm ], [ 0, %bb.dk ]
  %i.xk = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 4 uses
  store i8 %i.xj, ptr %i.xk, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.xl = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.xl, ptr %14, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.xl, ptr noundef nonnull align 1 dereferenceable(15) @.str.13, i64 15, i1 false)
  %i.xm = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 15, ptr %i.xm, align 8, !tbaa !21
  %i.xn = getelementptr inbounds nuw i8, ptr %14, i64 31
  store i8 0, ptr %i.xn, align 1, !tbaa !17
  %i.xo = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.vz, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %.noexc581 unwind label %bb.dw ; 2 uses

.noexc581:                                        ; preds = %._crit_edge.i.i576
  %i.xp = icmp eq ptr %i.xo, null
  br i1 %i.xp, label %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit582.thread, label %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit582

_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit582: ; preds = %.noexc581
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xo, i64 40
  %i.xr = load i32, ptr %i.xq, align 8, !tbaa !195
  %.not370 = icmp eq i32 %i.xr, 0
  br i1 %.not370, label %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit582.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit592

_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit582.thread: ; preds = %.noexc581, %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit582
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  %i.xs = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  store ptr %i.xs, ptr %15, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.xs, ptr noundef nonnull align 1 dereferenceable(15) @.str.13, i64 15, i1 false)
  %i.xt = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 15, ptr %i.xt, align 8, !tbaa !21
  %i.xu = getelementptr inbounds nuw i8, ptr %15, i64 31
  store i8 0, ptr %i.xu, align 1, !tbaa !17
  %i.xv = getelementptr inbounds nuw i8, ptr %i.ub, i64 40
  %i.xw = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.xv, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %.noexc588 unwind label %bb.dx ; 2 uses

.noexc588:                                        ; preds = %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit582.thread
  %i.xx = icmp eq ptr %i.xw, null
  br i1 %i.xx, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %.noexc588
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xw, i64 40
  %i.xz = load i32, ptr %i.xy, align 8, !tbaa !195
  %i.ya = icmp ne i32 %i.xz, 0
  %i.yb = zext i1 %i.ya to i8
  br label %bb.do

bb.do:                                            ; preds = %.noexc588, %bb.dn
  %.0.i587 = phi i8 [ %i.yb, %bb.dn ], [ 0, %.noexc588 ]
  %i.yc = getelementptr inbounds nuw i8, ptr %0, i64 706
  store i8 %.0.i587, ptr %i.yc, align 2, !tbaa !73
  %i.yd = load ptr, ptr %15, align 8, !tbaa !16   ; 2 uses
  %i.ye = icmp eq ptr %i.yd, %i.xs
  br i1 %i.ye, label %.critedge392, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i590

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i590: ; preds = %bb.do
  %i.yf = load i64, ptr %i.xs, align 8, !tbaa !17
  %i.yg = add i64 %i.yf, 1
  call void @_ZdlPvm(ptr noundef %i.yd, i64 noundef %i.yg) #25
  br label %.critedge392

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit592: ; preds = %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit582
  %i.yh = getelementptr inbounds nuw i8, ptr %0, i64 706
  store i8 1, ptr %i.yh, align 2, !tbaa !73
  br label %.critedge394

.critedge392:                                     ; preds = %bb.do, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i590
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %.critedge394

.critedge394:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit592, %.critedge392
  %i.yi = load ptr, ptr %14, align 8, !tbaa !16   ; 2 uses
  %i.yj = icmp eq ptr %i.yi, %i.xl
  br i1 %i.yj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit595, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i593

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i593: ; preds = %.critedge394
  %i.yk = load i64, ptr %i.xl, align 8, !tbaa !17
  %i.yl = add i64 %i.yk, 1
  call void @_ZdlPvm(ptr noundef %i.yi, i64 noundef %i.yl) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit595

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit595: ; preds = %.critedge394, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i593
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %i.ym = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.yn = load float, ptr %i.ym, align 4, !tbaa !196
  %i.yo = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.yp = load float, ptr %i.yo, align 4, !tbaa !197
  %i.yq = fmul nsz float %i.yn, %i.yp             ; 5 uses
  %i.yr = load i8, ptr %i.xk, align 8, !tbaa !71, !range !78, !noundef !79 ; 2 uses
  %i.ys = trunc nuw i8 %i.yr to i1
  br i1 %i.ys, label %bb.dp, label %bb.ec

bb.dp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit595
  %i.yt = getelementptr inbounds nuw i8, ptr %0, i64 241
  %i.yu = load i8, ptr %i.yt, align 1, !tbaa !198, !range !78, !noundef !79
  %i.yv = trunc nuw i8 %i.yu to i1
  br i1 %i.yv, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.yw = load i8, ptr %i.kx, align 1, !tbaa !166, !range !78, !noundef !79
  %i.yx = trunc nuw i8 %i.yw to i1
  %i.yy = icmp sgt i32 %.4324, 0
  %or.cond16 = and i1 %i.yy, %i.yx
  br i1 %or.cond16, label %bb.ds, label %bb.ec

bb.dr:                                            ; preds = %bb.dp
  %.old15 = icmp sgt i32 %.4324, 0
  br i1 %.old15, label %bb.dz, label %bb.ec

bb.ds:                                            ; preds = %bb.dq
  %i.yz = load float, ptr %i.cx, align 4, !tbaa !187 ; 2 uses
  %i.za = fdiv nsz float %i.yz, -3.000000e+00
  br label %bb.ea

bb.dt:                                            ; preds = %._crit_edge.i.i556
  %i.zb = landingpad { ptr, i32 }
          cleanup
  br label %bb.dv

bb.du:                                            ; preds = %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit562.thread
  %i.zc = landingpad { ptr, i32 }
          cleanup
  %i.zd = load ptr, ptr %13, align 8, !tbaa !16   ; 2 uses
  %i.ze = icmp eq ptr %i.zd, %i.wh
  br i1 %i.ze, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit598, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i596

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i596: ; preds = %bb.du
  %i.zf = load i64, ptr %i.wh, align 8, !tbaa !17
  %i.zg = add i64 %i.zf, 1
  call void @_ZdlPvm(ptr noundef %i.zd, i64 noundef %i.zg) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit598

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit598: ; preds = %bb.du, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i596
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.dv

bb.dv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit598, %bb.dt
  %.pn365.pn = phi { ptr, i32 } [ %i.zc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit598 ], [ %i.zb, %bb.dt ]
  %i.zh = load ptr, ptr %12, align 8, !tbaa !16   ; 2 uses
  %i.zi = icmp eq ptr %i.zh, %i.wa
  br i1 %i.zi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit601, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i599

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i599: ; preds = %bb.dv
  %i.zj = load i64, ptr %i.wa, align 8, !tbaa !17
  %i.zk = add i64 %i.zj, 1
  call void @_ZdlPvm(ptr noundef %i.zh, i64 noundef %i.zk) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit601

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit601: ; preds = %bb.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i599
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.ei

bb.dw:                                            ; preds = %._crit_edge.i.i576
  %i.zl = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

bb.dx:                                            ; preds = %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit582.thread
  %i.zm = landingpad { ptr, i32 }
          cleanup
  %i.zn = load ptr, ptr %15, align 8, !tbaa !16   ; 2 uses
  %i.zo = icmp eq ptr %i.zn, %i.xs
  br i1 %i.zo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit604, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i602

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i602: ; preds = %bb.dx
  %i.zp = load i64, ptr %i.xs, align 8, !tbaa !17
  %i.zq = add i64 %i.zp, 1
  call void @_ZdlPvm(ptr noundef %i.zn, i64 noundef %i.zq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit604

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit604: ; preds = %bb.dx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i602
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %bb.dy

bb.dy:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit604, %bb.dw
  %.pn371.pn = phi { ptr, i32 } [ %i.zm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit604 ], [ %i.zl, %bb.dw ]
  %i.zr = load ptr, ptr %14, align 8, !tbaa !16   ; 2 uses
  %i.zs = icmp eq ptr %i.zr, %i.xl
  br i1 %i.zs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit607, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i605

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i605: ; preds = %bb.dy
  %i.zt = load i64, ptr %i.xl, align 8, !tbaa !17
  %i.zu = add i64 %i.zt, 1
  call void @_ZdlPvm(ptr noundef %i.zr, i64 noundef %i.zu) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit607

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit607: ; preds = %bb.dy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i605
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %bb.ei

bb.dz:                                            ; preds = %bb.dr
  %i.zv = load float, ptr %i.cx, align 4, !tbaa !187 ; 2 uses
  %i.zw = fmul nsz float %i.zv, 2.800000e+00
  %i.zx = fdiv nsz float %i.zw, %i.yq
  %i.zy = fadd nsz float %i.zx, 1.000000e+00
  %i.zz = fdiv nsz float %i.yq, %i.zy
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.ds
  %i.aaa = phi float [ %i.zv, %bb.dz ], [ %i.yz, %bb.ds ]
  %.0310 = phi nsz float [ %i.zz, %bb.dz ], [ %i.za, %bb.ds ] ; 2 uses
  %i.aab = fadd nsz float %.0310, %i.aaa
  store float %i.aab, ptr %i.cx, align 4, !tbaa !187
  br label %.sink.split

bb.eb:                                            ; preds = %bb.ed
  %i.aac = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei

bb.ec:                                            ; preds = %bb.dr, %bb.dq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit595
  %i.aad = load float, ptr %i.cx, align 4, !tbaa !187
  %i.aae = fcmp nsz ogt float %i.aad, %i.yq
  %i.aaf = icmp slt i32 %.4324, 0
  %or.cond19 = and i1 %i.aaf, %i.aae
  br i1 %or.cond19, label %.sink.split, label %bb.ed

.sink.split:                                      ; preds = %bb.ec, %bb.ea
  %.1311.ph = phi float [ %.0310, %bb.ea ], [ %i.yq, %bb.ec ]
  store i8 0, ptr %i.xk, align 8, !tbaa !71
  br label %bb.ed

bb.ed:                                            ; preds = %.sink.split, %bb.ec
  %i.aag = phi i8 [ %i.yr, %bb.ec ], [ 0, %.sink.split ]
  %.1311 = phi nsz float [ %i.yq, %bb.ec ], [ %.1311.ph, %.sink.split ]
  %i.aah = trunc nuw i8 %i.aag to i1
  %i.aai = fcmp nsz une float %.1311, 0.000000e+00
  %i.aaj = select i1 %i.aah, i1 %i.aai, i1 false
  %i.aak = zext i1 %i.aaj to i8
  store i8 %i.aak, ptr %i.xk, align 8, !tbaa !71
  invoke void @_ZN11LocalPlayer14handleAutojumpEfP11EnvironmentRK19collisionMoveResultN4core8vector3dIfEES7_(ptr noundef nonnull align 8 dereferenceable(864) %0, float noundef %1, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(32) %7, <2 x float> %.sroa.0155.0.copyload, float %.sroa.5156.0.copyload, <2 x float> %.sroa.0153.0.copyload, float %.sroa.5154.0.copyload)
          to label %bb.ee unwind label %bb.eb

bb.ee:                                            ; preds = %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.aal = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aam = load ptr, ptr %i.aal, align 8, !tbaa !178 ; 3 uses
  %.not.i.i.i.i609 = icmp eq ptr %i.aam, null
  br i1 %.not.i.i.i.i609, label %_ZN19collisionMoveResultD2Ev.exit, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.aan = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.aao = load ptr, ptr %i.aan, align 8, !tbaa !170
  %i.aap = ptrtoint ptr %i.aao to i64
  %i.aaq = ptrtoint ptr %i.aam to i64
  %i.aar = sub i64 %i.aap, %i.aaq
  call void @_ZdlPvm(ptr noundef nonnull %i.aam, i64 noundef %i.aar) #25
  br label %_ZN19collisionMoveResultD2Ev.exit

_ZN19collisionMoveResultD2Ev.exit:                ; preds = %bb.ee, %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.eg

bb.eg:                                            ; preds = %bb.l, %_ZN19collisionMoveResultD2Ev.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.e
  ret void

bb.ei:                                            ; preds = %bb.ce, %bb.bu, %bb.dg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit555, %bb.ch, %bb.cz, %bb.eb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit607, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit601, %bb.cy
  %.pn375.pn.pn.pn.pn = phi { ptr, i32 } [ %i.vs, %bb.dg ], [ %i.vt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit555 ], [ %i.rw, %bb.ch ], [ %i.un, %bb.cy ], [ %i.uo, %bb.cz ], [ %i.aac, %bb.eb ], [ %.pn371.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit607 ], [ %.pn365.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit601 ], [ %i.re, %bb.bu ], [ %i.rt, %bb.ce ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.ej

bb.ej:                                            ; preds = %.loopexit749, %.loopexit.split-lp, %bb.ei
  %.pn375.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn375.pn.pn.pn.pn, %bb.ei ], [ %lpad.loopexit, %.loopexit749 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.aas = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aat = load ptr, ptr %i.aas, align 8, !tbaa !178 ; 3 uses
  %.not.i.i.i.i610 = icmp eq ptr %i.aat, null
  br i1 %.not.i.i.i.i610, label %_ZN19collisionMoveResultD2Ev.exit611, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.aau = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.aav = load ptr, ptr %i.aau, align 8, !tbaa !170
  %i.aaw = ptrtoint ptr %i.aav to i64
  %i.aax = ptrtoint ptr %i.aat to i64
  %i.aay = sub i64 %i.aaw, %i.aax
  call void @_ZdlPvm(ptr noundef nonnull %i.aat, i64 noundef %i.aay) #25
  br label %_ZN19collisionMoveResultD2Ev.exit611

_ZN19collisionMoveResultD2Ev.exit611:             ; preds = %bb.ej, %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.el

bb.el:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415, %_ZN19collisionMoveResultD2Ev.exit611, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412
  %.pn375.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412 ], [ %.pn375.pn.pn.pn.pn.pn, %_ZN19collisionMoveResultD2Ev.exit611 ], [ %i.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %.pn375.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11LocalPlayer8old_moveEfP11EnvironmentPSt6vectorI13CollisionInfoSaIS3_EE(ptr noundef nonnull align 8 dereferenceable(864) %0, float noundef %1, ptr noundef %2, ptr nofree noundef captures(address_is_null) %3) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.core::vector3d", align 16   ; 21 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = alloca i8, align 1                       ; 17 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %7 = alloca %struct.collisionMoveResult, align 8 ; 16 uses
  %8 = alloca %struct.MapNode, align 4            ; 5 uses
  %9 = alloca %"class.std::vector.346", align 8   ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef nonnull align 8 dereferenceable(144) ptr %i.e(ptr noundef nonnull align 8 dereferenceable(88) %2) ; 14 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !76
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i), !inline_history !0 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 604 ; 6 uses
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.n, align 4, !tbaa !35
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 612 ; 4 uses
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 4, !tbaa !35
  store <2 x float> %.sroa.01.0.copyload.i, ptr %4, align 16
  %.sroa.2252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 11 uses
  store float %.sroa.22.0.copyload.i, ptr %.sroa.2252.0..sroa_idx, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !75   ; 3 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %_ZNK11LocalPlayer9getParentEv.exit.thread, label %_ZNK11LocalPlayer9getParentEv.exit

_ZNK11LocalPlayer9getParentEv.exit:               ; preds = %bb.a
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !33
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 160
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef ptr %i.s(ptr noundef nonnull align 8 dereferenceable(1076) %i.p), !inline_history !136
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %_ZNK11LocalPlayer9getParentEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK11LocalPlayer9getParentEv.exit
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !75
  %i.v = tail call { <2 x float>, float } @_ZNK10GenericCAO11getPositionEv(ptr noundef nonnull align 8 dereferenceable(1076) %i.u) ; 2 uses
  %.fca.0.extract245 = extractvalue { <2 x float>, float } %i.v, 0
  %.fca.1.extract246 = extractvalue { <2 x float>, float } %i.v, 1
  store <2 x float> %.fca.0.extract245, ptr %i.n, align 4, !tbaa !35
  store float %.fca.1.extract246, ptr %.sroa.22.0..sroa_idx.i, align 4, !tbaa !35
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 652
  store i8 0, ptr %i.w, align 4, !tbaa !77
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 760
  store <2 x float> zeroinitializer, ptr %i.x, align 8, !tbaa !35
  %.sroa.5761.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 768
  store float 0.000000e+00, ptr %.sroa.5761.0..sroa_idx, align 8, !tbaa !35
  br label %bb.em

_ZNK11LocalPlayer9getParentEv.exit.thread:        ; preds = %bb.a, %_ZNK11LocalPlayer9getParentEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 3 uses
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.aa, ptr %5, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.aa, ptr noundef nonnull align 1 dereferenceable(3) @.str.10, i64 3, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 3, ptr %i.ab, align 8, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 19
  store i8 0, ptr %i.ac, align 1, !tbaa !17
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 1384
  %i.ae = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS5_(ptr noundef nonnull align 8 dereferenceable(56) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %_ZNK11LocalPlayer9getParentEv.exit.thread
  %.not.i.i.i.i = icmp ne ptr %i.ae, null         ; 3 uses
  %i.af = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.aa
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.ah = load i64, ptr %i.aa, align 8, !tbaa !17
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.aj = load ptr, ptr %i.g, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  store ptr %i.ak, ptr %6, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ak, ptr noundef nonnull align 1 dereferenceable(6) @.str.6, i64 6, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 6, ptr %i.al, align 8, !tbaa !21
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 22
  store i8 0, ptr %i.am, align 2, !tbaa !17
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 1384
  %i.ao = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS5_(ptr noundef nonnull align 8 dereferenceable(56) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.not.i.i.i.i379.not = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i379.not, label %.critedge367, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 798
  %i.aq = load i8, ptr %i.ap, align 2, !tbaa !30, !range !78, !noundef !79
  %i.ar = trunc nuw i8 %i.aq to i1
  %i.as = and i1 %.not.i.i.i.i, %i.ar
  %i.at = load ptr, ptr %6, align 8, !tbaa !16    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.ak
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit384, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i382

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i382: ; preds = %bb.e
  %i.av = load i64, ptr %i.ak, align 8, !tbaa !17
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #25
end_hunk_0
begin_hunk_1_@_ZN11LocalPlayer8old_moveEfP11EnvironmentPSt6vectorI13CollisionInfoSaIS3_EE:bb.a
  %i.aaj = zext nneg i32 %i.aai to i64            ; 2 uses
  %i.aak = load ptr, ptr %i.zp, align 8, !tbaa !86
  %i.aal = load ptr, ptr %i.zo, align 8, !tbaa !87 ; 3 uses
  %i.aam = ptrtoint ptr %i.aak to i64
  %i.aan = ptrtoint ptr %i.aal to i64
  %i.aao = sub i64 %i.aam, %i.aan
  %i.aap = sdiv exact i64 %i.aao, 2080
  %i.aaq = icmp ugt i64 %i.aap, %i.aaj
  br i1 %i.aaq, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.aar = getelementptr inbounds nuw [2080 x i8], ptr %i.aal, i64 %i.aaj ; 2 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aar, i64 16
  %i.aat = load i64, ptr %i.aas, align 8, !tbaa !21
  %i.aau = icmp eq i64 %i.aat, 0
  br i1 %i.aau, label %bb.dj, label %_ZNK14NodeDefManager3getERK7MapNode.exit569

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aal, i64 260000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit569

_ZNK14NodeDefManager3getERK7MapNode.exit569:      ; preds = %bb.dj, %bb.di
  %i.aaw = phi ptr [ %i.aav, %bb.dj ], [ %i.aar, %bb.di ]
  %i.aax = load i8, ptr %7, align 8, !tbaa !193, !range !78, !noundef !79
  %i.aay = trunc nuw i8 %i.aax to i1
  br i1 %i.aay, label %bb.dk, label %._crit_edge.i.i583

bb.dk:                                            ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit569
  %i.aaz = load float, ptr %i.ci, align 4, !tbaa !187
  %i.aba = fcmp nsz ogt float %i.aaz, 0.000000e+00
  br i1 %i.aba, label %bb.dl, label %._crit_edge.i.i583

bb.dl:                                            ; preds = %bb.dk
  %i.abb = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.abc = load ptr, ptr %i.abb, align 8, !tbaa !135 ; 2 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.abe = load ptr, ptr %i.abd, align 8, !tbaa !135 ; 2 uses
  %.not776823 = icmp eq ptr %i.abc, %i.abe
  br i1 %.not776823, label %._crit_edge.i.i583, label %.lr.ph826

.lr.ph826:                                        ; preds = %bb.dl
  %i.abf = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.abh = getelementptr inbounds nuw i8, ptr %10, i64 22
  br label %bb.do

bb.dm:                                            ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit567, %bb.dd
  %i.abi = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.dn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.abj = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.do:                                            ; preds = %.lr.ph826, %.thread
  %.sroa.0617.0824 = phi ptr [ %i.abc, %.lr.ph826 ], [ %i.act, %.thread ] ; 3 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %.sroa.0617.0824, i64 1
  %i.abl = load i8, ptr %i.abk, align 1, !tbaa !181
  %i.abm = icmp eq i8 %i.abl, 1
  br i1 %i.abm, label %bb.dp, label %.thread

bb.dp:                                            ; preds = %bb.do
  %i.abn = getelementptr inbounds nuw i8, ptr %.sroa.0617.0824, i64 2
  %.sroa.028.0.copyload = load i48, ptr %i.abn, align 2, !tbaa !127
  %i.abo = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.f, i48 %.sroa.028.0.copyload, ptr noundef null)
          to label %bb.dq unwind label %bb.du

bb.dq:                                            ; preds = %bb.dp
  %i.abp = and i32 %i.abo, 65535
  %i.abq = zext nneg i32 %i.abp to i64            ; 2 uses
  %i.abr = load ptr, ptr %i.zp, align 8, !tbaa !86
  %i.abs = load ptr, ptr %i.zo, align 8, !tbaa !87 ; 3 uses
  %i.abt = ptrtoint ptr %i.abr to i64
  %i.abu = ptrtoint ptr %i.abs to i64
  %i.abv = sub i64 %i.abt, %i.abu
  %i.abw = sdiv exact i64 %i.abv, 2080
  %i.abx = icmp ugt i64 %i.abw, %i.abq
  br i1 %i.abx, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.aby = getelementptr inbounds nuw [2080 x i8], ptr %i.abs, i64 %i.abq ; 2 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 16
  %i.aca = load i64, ptr %i.abz, align 8, !tbaa !21
  %i.acb = icmp eq i64 %i.aca, 0
  br i1 %i.acb, label %bb.ds, label %_ZNK14NodeDefManager3getERK7MapNode.exit570

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %i.acc = getelementptr inbounds nuw i8, ptr %i.abs, i64 260000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit570

_ZNK14NodeDefManager3getERK7MapNode.exit570:      ; preds = %bb.ds, %bb.dr
  %i.acd = phi ptr [ %i.acc, %bb.ds ], [ %i.aby, %bb.dr ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  store ptr %i.abf, ptr %10, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.abf, ptr noundef nonnull align 1 dereferenceable(6) @.str.11, i64 6, i1 false)
  store i64 6, ptr %i.abg, align 8, !tbaa !21
  store i8 0, ptr %i.abh, align 2, !tbaa !17
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acd, i64 40
  %i.acf = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.ace, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %.noexc576 unwind label %bb.dv ; 2 uses

.noexc576:                                        ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit570
  %i.acg = icmp eq ptr %i.acf, null
  br i1 %i.acg, label %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit, label %bb.dt

bb.dt:                                            ; preds = %.noexc576
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acf, i64 40
  %i.aci = load i32, ptr %i.ach, align 8, !tbaa !195
  br label %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit

_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit: ; preds = %bb.dt, %.noexc576
  %.0.i575 = phi i32 [ %i.aci, %bb.dt ], [ 0, %.noexc576 ] ; 2 uses
  %i.acj = load ptr, ptr %10, align 8, !tbaa !16  ; 2 uses
  %i.ack = icmp eq ptr %i.acj, %i.abf
  br i1 %i.ack, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i578, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i577

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i577: ; preds = %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit
  %i.acl = load i64, ptr %i.abf, align 8, !tbaa !17
  %i.acm = add i64 %i.acl, 1
  call void @_ZdlPvm(ptr noundef %i.acj, i64 noundef %i.acm) #25
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i578

bb.du:                                            ; preds = %bb.dp
  %i.acn = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.dv:                                            ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit570
  %i.aco = landingpad { ptr, i32 }
          cleanup
  %i.acp = load ptr, ptr %10, align 8, !tbaa !16  ; 2 uses
  %i.acq = icmp eq ptr %i.acp, %i.abf
  br i1 %i.acq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit582, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i580

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i580: ; preds = %bb.dv
  %i.acr = load i64, ptr %i.abf, align 8, !tbaa !17
  %i.acs = add i64 %i.acr, 1
  call void @_ZdlPvm(ptr noundef %i.acp, i64 noundef %i.acs) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit582

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit582: ; preds = %bb.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i580
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.en

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i578: ; preds = %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i577
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %.not346 = icmp eq i32 %.0.i575, 0
  br i1 %.not346, label %.thread, label %._crit_edge.i.i583

.thread:                                          ; preds = %bb.do, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i578
  %i.act = getelementptr inbounds nuw i8, ptr %.sroa.0617.0824, i64 56 ; 2 uses
  %.not776 = icmp eq ptr %i.act, %i.abe
  br i1 %.not776, label %._crit_edge.i.i583, label %bb.do

._crit_edge.i.i583:                               ; preds = %.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i578, %bb.dl, %bb.dk, %_ZNK14NodeDefManager3getERK7MapNode.exit569
  %.4317 = phi i32 [ 0, %_ZNK14NodeDefManager3getERK7MapNode.exit569 ], [ 0, %bb.dk ], [ 0, %bb.dl ], [ 0, %.thread ], [ %.0.i575, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i578 ] ; 4 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %i.aaw, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.acv = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.acv, ptr %11, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.acv, ptr noundef nonnull align 1 dereferenceable(12) @.str.12, i64 12, i1 false)
  %i.acw = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 12, ptr %i.acw, align 8, !tbaa !21
  %i.acx = getelementptr inbounds nuw i8, ptr %11, i64 28
  store i8 0, ptr %i.acx, align 4, !tbaa !17
  %i.acy = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.acu, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %.noexc588 unwind label %bb.ed ; 2 uses

.noexc588:                                        ; preds = %._crit_edge.i.i583
  %i.acz = icmp eq ptr %i.acy, null
  br i1 %i.acz, label %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit589, label %bb.dw

bb.dw:                                            ; preds = %.noexc588
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acy, i64 40
  %i.adb = load i32, ptr %i.ada, align 8, !tbaa !195
  %i.adc = icmp ne i32 %i.adb, 0
  %i.add = zext i1 %i.adc to i8
  br label %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit589

_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit589: ; preds = %bb.dw, %.noexc588
  %.0.i587 = phi i8 [ %i.add, %bb.dw ], [ 0, %.noexc588 ]
  %i.ade = getelementptr inbounds nuw i8, ptr %0, i64 705 ; 2 uses
  store i8 %.0.i587, ptr %i.ade, align 1, !tbaa !72
  %i.adf = load ptr, ptr %11, align 8, !tbaa !16  ; 2 uses
  %i.adg = icmp eq ptr %i.adf, %i.acv
  br i1 %i.adg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit592, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i590

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i590: ; preds = %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit589
  %i.adh = load i64, ptr %i.acv, align 8, !tbaa !17
  %i.adi = add i64 %i.adh, 1
  call void @_ZdlPvm(ptr noundef %i.adf, i64 noundef %i.adi) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit592

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit592: ; preds = %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit589, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i590
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.adj = load i8, ptr %i.li, align 2, !tbaa !138, !range !78, !noundef !79
  %i.adk = trunc nuw i8 %i.adj to i1
  %i.adl = icmp ne i32 %.4317, 0
  %or.cond9 = or i1 %i.adl, %i.adk
  br i1 %or.cond9, label %bb.dx, label %._crit_edge.i.i593

bb.dx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit592
  %i.adm = load i8, ptr %i.ade, align 1, !tbaa !72, !range !78, !noundef !79
  %i.adn = xor i8 %i.adm, 1
  br label %._crit_edge.i.i593

._crit_edge.i.i593:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit592, %bb.dx
  %i.ado = phi i8 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit592 ], [ %i.adn, %bb.dx ]
  %i.adp = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 3 uses
  store i8 %i.ado, ptr %i.adp, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.adq = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.adq, ptr %12, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.adq, ptr noundef nonnull align 1 dereferenceable(15) @.str.13, i64 15, i1 false)
  %i.adr = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 15, ptr %i.adr, align 8, !tbaa !21
  %i.ads = getelementptr inbounds nuw i8, ptr %12, i64 31
  store i8 0, ptr %i.ads, align 1, !tbaa !17
  %i.adt = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.acu, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %.noexc598 unwind label %bb.ee ; 2 uses

.noexc598:                                        ; preds = %._crit_edge.i.i593
  %i.adu = icmp eq ptr %i.adt, null
  br i1 %i.adu, label %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit599, label %bb.dy

bb.dy:                                            ; preds = %.noexc598
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adt, i64 40
  %i.adw = load i32, ptr %i.adv, align 8, !tbaa !195
  %i.adx = icmp ne i32 %i.adw, 0
  %i.ady = zext i1 %i.adx to i8
  br label %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit599

_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit599: ; preds = %bb.dy, %.noexc598
  %.0.i597 = phi i8 [ %i.ady, %bb.dy ], [ 0, %.noexc598 ]
  %i.adz = getelementptr inbounds nuw i8, ptr %0, i64 706
  store i8 %.0.i597, ptr %i.adz, align 2, !tbaa !73
  %i.aea = load ptr, ptr %12, align 8, !tbaa !16  ; 2 uses
  %i.aeb = icmp eq ptr %i.aea, %i.adq
  br i1 %i.aeb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit602, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i600

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i600: ; preds = %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit599
  %i.aec = load i64, ptr %i.adq, align 8, !tbaa !17
  %i.aed = add i64 %i.aec, 1
  call void @_ZdlPvm(ptr noundef %i.aea, i64 noundef %i.aed) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit602

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit602: ; preds = %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit599, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i600
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.aee = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.aef = load float, ptr %i.aee, align 4, !tbaa !196
  %i.aeg = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.aeh = load float, ptr %i.aeg, align 4, !tbaa !197
  %i.aei = fmul nsz float %i.aef, %i.aeh          ; 3 uses
  %i.aej = load i8, ptr %i.adp, align 8, !tbaa !71, !range !78, !noundef !79
  %i.aek = trunc nuw i8 %i.aej to i1
  br i1 %i.aek, label %bb.dz, label %bb.ei

bb.dz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit602
  %i.ael = getelementptr inbounds nuw i8, ptr %0, i64 241
  %i.aem = load i8, ptr %i.ael, align 1, !tbaa !198, !range !78, !noundef !79
  %i.aen = trunc nuw i8 %i.aem to i1
  br i1 %i.aen, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.aeo = load i8, ptr %i.jw, align 1, !tbaa !166, !range !78, !noundef !79
  %i.aep = trunc nuw i8 %i.aeo to i1
  %i.aeq = icmp sgt i32 %.4317, 0
  %or.cond11 = and i1 %i.aeq, %i.aep
  br i1 %or.cond11, label %bb.ec, label %bb.ei

bb.eb:                                            ; preds = %bb.dz
  %.old10 = icmp sgt i32 %.4317, 0
  br i1 %.old10, label %bb.ef, label %bb.ei

bb.ec:                                            ; preds = %bb.ea
  %i.aer = load float, ptr %i.ci, align 4, !tbaa !187 ; 2 uses
  %i.aes = fdiv nsz float %i.aer, -3.000000e+00
  br label %bb.eg

bb.ed:                                            ; preds = %._crit_edge.i.i583
  %i.aet = landingpad { ptr, i32 }
          cleanup
  %i.aeu = load ptr, ptr %11, align 8, !tbaa !16  ; 2 uses
  %i.aev = icmp eq ptr %i.aeu, %i.acv
  br i1 %i.aev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit605, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i603

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i603: ; preds = %bb.ed
  %i.aew = load i64, ptr %i.acv, align 8, !tbaa !17
  %i.aex = add i64 %i.aew, 1
  call void @_ZdlPvm(ptr noundef %i.aeu, i64 noundef %i.aex) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit605

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit605: ; preds = %bb.ed, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i603
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %bb.en

bb.ee:                                            ; preds = %._crit_edge.i.i593
  %i.aey = landingpad { ptr, i32 }
          cleanup
  %i.aez = load ptr, ptr %12, align 8, !tbaa !16  ; 2 uses
  %i.afa = icmp eq ptr %i.aez, %i.adq
  br i1 %i.afa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit608, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i606

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i606: ; preds = %bb.ee
  %i.afb = load i64, ptr %i.adq, align 8, !tbaa !17
  %i.afc = add i64 %i.afb, 1
  call void @_ZdlPvm(ptr noundef %i.aez, i64 noundef %i.afc) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit608

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit608: ; preds = %bb.ee, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i606
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.en

bb.ef:                                            ; preds = %bb.eb
  %i.afd = load float, ptr %i.ci, align 4, !tbaa !187 ; 2 uses
  %i.afe = fmul nsz float %i.afd, 2.800000e+00
  %i.aff = fdiv nsz float %i.afe, %i.aei
  %i.afg = fadd nsz float %i.aff, 1.000000e+00
  %i.afh = fdiv nsz float %i.aei, %i.afg
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ec
  %i.afi = phi float [ %i.afd, %bb.ef ], [ %i.aer, %bb.ec ]
  %.0312 = phi nsz float [ %i.afh, %bb.ef ], [ %i.aes, %bb.ec ]
  %i.afj = fadd nsz float %.0312, %i.afi
  store float %i.afj, ptr %i.ci, align 4, !tbaa !187
  br label %.sink.split

bb.eh:                                            ; preds = %bb.ej
  %i.afk = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.ei:                                            ; preds = %bb.eb, %bb.ea, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit602
  %i.afl = load float, ptr %i.ci, align 4, !tbaa !187
  %i.afm = fcmp nsz ogt float %i.afl, %i.aei
  %i.afn = icmp slt i32 %.4317, 0
  %or.cond14 = and i1 %i.afn, %i.afm
  br i1 %or.cond14, label %.sink.split, label %bb.ej

.sink.split:                                      ; preds = %bb.ei, %bb.eg
  store i8 0, ptr %i.adp, align 8, !tbaa !71
  br label %bb.ej

bb.ej:                                            ; preds = %.sink.split, %bb.ei
  invoke void @_ZN11LocalPlayer14handleAutojumpEfP11EnvironmentRK19collisionMoveResultN4core8vector3dIfEES7_(ptr noundef nonnull align 8 dereferenceable(864) %0, float noundef %1, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(32) %7, <2 x float> %.sroa.0144.0.copyload, float %.sroa.5145.0.copyload, <2 x float> %.sroa.0142.0.copyload, float %.sroa.5143.0.copyload)
          to label %bb.ek unwind label %bb.eh

bb.ek:                                            ; preds = %bb.ej
  %i.afo = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.afp = load ptr, ptr %i.afo, align 8, !tbaa !178 ; 3 uses
  %.not.i.i.i.i610 = icmp eq ptr %i.afp, null
  br i1 %.not.i.i.i.i610, label %_ZN19collisionMoveResultD2Ev.exit, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.afq = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.afr = load ptr, ptr %i.afq, align 8, !tbaa !170
  %i.afs = ptrtoint ptr %i.afr to i64
  %i.aft = ptrtoint ptr %i.afp to i64
  %i.afu = sub i64 %i.afs, %i.aft
  call void @_ZdlPvm(ptr noundef nonnull %i.afp, i64 noundef %i.afu) #25
  br label %_ZN19collisionMoveResultD2Ev.exit

_ZN19collisionMoveResultD2Ev.exit:                ; preds = %bb.ek, %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.em

bb.em:                                            ; preds = %bb.g, %_ZN19collisionMoveResultD2Ev.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void

bb.en:                                            ; preds = %.loopexit777, %.loopexit.split-lp, %bb.du, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit582, %bb.bq, %bb.bw, %bb.cd, %bb.cn, %bb.bb, %bb.bf, %bb.dn, %bb.eh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit608, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit605, %bb.dm, %bb.cs
  %.pn355.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aco, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit582 ], [ %i.acn, %bb.du ], [ %i.tx, %bb.bq ], [ %i.ut, %bb.bw ], [ %i.re, %bb.bf ], [ %i.px, %bb.bb ], [ %i.vr, %bb.cd ], [ %i.abi, %bb.dm ], [ %.pn340, %bb.cn ], [ %i.wz, %bb.cs ], [ %i.abj, %bb.dn ], [ %i.afk, %bb.eh ], [ %i.aey, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit608 ], [ %i.aet, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit605 ], [ %lpad.loopexit, %.loopexit777 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.afv = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.afw = load ptr, ptr %i.afv, align 8, !tbaa !178 ; 3 uses
  %.not.i.i.i.i611 = icmp eq ptr %i.afw, null
  br i1 %.not.i.i.i.i611, label %_ZN19collisionMoveResultD2Ev.exit612, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.afx = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.afy = load ptr, ptr %i.afx, align 8, !tbaa !170
  %i.afz = ptrtoint ptr %i.afy to i64
  %i.aga = ptrtoint ptr %i.afw to i64
  %i.agb = sub i64 %i.afz, %i.aga
  call void @_ZdlPvm(ptr noundef nonnull %i.afw, i64 noundef %i.agb) #25
  br label %_ZN19collisionMoveResultD2Ev.exit612

_ZN19collisionMoveResultD2Ev.exit612:             ; preds = %bb.en, %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.ep

bb.ep:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit395, %_ZN19collisionMoveResultD2Ev.exit612, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit392
  %.pn355.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit392 ], [ %.pn355.pn.pn.pn.pn.pn.pn.pn, %_ZN19collisionMoveResultD2Ev.exit612 ], [ %i.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit395 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %.pn355.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK11LocalPlayer9getParentEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(864) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(1076) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  ret ptr %i.g
}

declare { <2 x float>, float } @_ZNK10GenericCAO11getPositionEv(ptr noundef nonnull align 8 dereferenceable(1076)) unnamed_addr #4

declare void @_Z19collisionMoveSimpleP11EnvironmentP8IGameDefRKN4core8aabbox3dIfEEffPNS3_8vector3dIfEESA_S9_P12ActiveObjectb10StepUpMode(ptr dead_on_unwind writable sret(%struct.collisionMoveResult) align 8, ptr noundef, ptr noundef, ptr noundef nonnull align 4 dereferenceable(24), float noundef, float noundef, ptr noundef, ptr noundef, <2 x float>, float, ptr noundef, i1 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI13CollisionInfoSaIS0_EE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(52) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !169  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !170
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false), !tbaa.struct !177
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !169
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr %i.f, ptr %i.a, align 8, !tbaa !169
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !178    ; 5 uses
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775800
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorI13CollisionInfoSaIS0_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #28
  unreachable

_ZNKSt6vectorI13CollisionInfoSaIS0_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.l = sdiv exact i64 %i.j, 56                  ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i, %i.l  ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 164703072086692425)
  %i.p = select i1 %i.n, i64 164703072086692425, i64 %i.o ; 3 uses
  %.not.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.q = mul nuw nsw i64 %i.p, 56
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #29 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false), !tbaa.struct !177
  %.not10.i.i.i.i = icmp eq ptr %i.g, %i.b
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorI13CollisionInfoSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorI13CollisionInfoSaIS0_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i ], [ %i.r, %_ZNKSt6vectorI13CollisionInfoSaIS0_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i ], [ %i.g, %_ZNKSt6vectorI13CollisionInfoSaIS0_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.0911.i.i.i.i, i64 56, i1 false), !tbaa.struct !177, !alias.scope !274
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 56 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, %i.b
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI13CollisionInfoSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZNSt6vectorI13CollisionInfoSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt6vectorI13CollisionInfoSaIS0_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.r, %_ZNKSt6vectorI13CollisionInfoSaIS0_EE12_M_check_lenEmPKc.exit.i ], [ %i.u, %.lr.ph.i.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 56
  %.not.i23.i = icmp eq ptr %i.g, null
  br i1 %.not.i23.i, label %_ZNSt6vectorI13CollisionInfoSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI13CollisionInfoSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !170
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.y) #25
  br label %_ZNSt6vectorI13CollisionInfoSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit

_ZNSt6vectorI13CollisionInfoSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit: ; preds = %_ZNSt6vectorI13CollisionInfoSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i, %bb.e
  store ptr %i.r, ptr %0, align 8, !tbaa !178
  store ptr %i.v, ptr %i.a, align 8, !tbaa !169
  %i.z = getelementptr inbounds nuw [56 x i8], ptr %i.r, i64 %i.p
  store ptr %i.z, ptr %i.c, align 8, !tbaa !170
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorI13CollisionInfoSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #12

declare noundef zeroext i1 @_Z28collision_check_intersectionP11EnvironmentP8IGameDefRKN4core8aabbox3dIfEERKNS3_8vector3dIfEEP12ActiveObjectb(ptr noundef, ptr noundef, ptr noundef nonnull align 4 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(12), ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

declare noundef ptr @_ZN6Client15getEventManagerEv(ptr noundef nonnull align 8 dereferenceable(1674)) local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11LocalPlayer14handleAutojumpEfP11EnvironmentRK19collisionMoveResultN4core8vector3dIfEES7_(ptr noundef nonnull align 8 dereferenceable(864) %0, float noundef %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, <2 x float> %4, float %5, <2 x float> %6, float %7) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %8 = alloca %"class.core::vector3d", align 8    ; 6 uses
  %9 = alloca %"class.core::vector3d", align 8    ; 5 uses
  %10 = alloca %struct.collisionMoveResult, align 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 799
  %i.c = load i8, ptr %i.b, align 1, !tbaa !31, !range !78, !noundef !79
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !74, !range !78, !noundef !79
  %i.g = trunc nuw i8 %i.f to i1
  %.not188 = xor i1 %i.g, true
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.i = load i8, ptr %i.h, align 8, !range !78
  %i.j = trunc nuw i8 %i.i to i1
  %or.cond191 = select i1 %.not188, i1 %i.j, i1 false
  br i1 %or.cond191, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 241
end_hunk_1
