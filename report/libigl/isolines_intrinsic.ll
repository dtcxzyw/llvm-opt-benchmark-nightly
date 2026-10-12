Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/isolines_intrinsic?download=true
inline.NumInlined: 1150
inline.NumDeleted: 670
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN3igl18isolines_intrinsicIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEES3_NS2_IiLin1ELi1ELi0ELin1ELi1EEES5_S5_NS2_IdLin1ELin1ELi0ELin1ELin1EEES5_S3_EEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERKNS7_IT2_EERKNS7_IT3_EERKNS7_IT4_EENSC_6ScalarERNS1_15PlainObjectBaseIT5_EERNSX_IT6_EERNSX_IT7_EE:bb.a
.noexc371..loopexit500_crit_edge:                 ; preds = %.noexc371
  %.pre693 = load i64, ptr %i.ay, align 8, !tbaa !38 ; 2 uses
  %.pre694 = load ptr, ptr %3, align 8, !tbaa !49
  %.pre695 = load i64, ptr %i.b, align 8, !tbaa !59
  %.pre696 = load ptr, ptr %10, align 8, !tbaa !58
  %.pre706 = mul nsw i64 %.pre693, %.0195516789791
  br label %.loopexit500

_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i368: ; preds = %.noexc371
  %i.ok = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.og, i64 noundef 16) #24
  br label %.body287

.loopexit500:                                     ; preds = %bb.bn, %.noexc371..loopexit500_crit_edge, %bb.bm
  %.pre-phi707 = phi i64 [ %.pre706, %.noexc371..loopexit500_crit_edge ], [ %i.nm, %bb.bm ], [ %i.nm, %bb.bn ]
  %i.ol = phi ptr [ %.pre696, %.noexc371..loopexit500_crit_edge ], [ %i.gp, %bb.bm ], [ %i.gp, %bb.bn ]
  %i.om = phi i64 [ %.pre695, %.noexc371..loopexit500_crit_edge ], [ %i.go, %bb.bm ], [ %i.go, %bb.bn ] ; 2 uses
  %i.on = phi ptr [ %.pre694, %.noexc371..loopexit500_crit_edge ], [ %i.gm, %bb.bm ], [ %i.gm, %bb.bn ]
  %i.oo = phi i64 [ %.pre693, %.noexc371..loopexit500_crit_edge ], [ %i.gl, %bb.bm ], [ %i.gl, %bb.bn ] ; 2 uses
  %.pn.i.i369 = phi ptr [ %i.oj, %.noexc371..loopexit500_crit_edge ], [ %i.nw, %bb.bm ], [ %i.ob, %bb.bn ]
  %.1.i.i370 = getelementptr inbounds nuw i8, ptr %.pn.i.i369, i64 12
  %i.op = load i32, ptr %.1.i.i370, align 4, !tbaa !40 ; 4 uses
  %i.oq = getelementptr [4 x i8], ptr %i.on, i64 %.pre-phi707
  %i.or = getelementptr [4 x i8], ptr %i.oq, i64 %indvars.iv674 ; 2 uses
  %i.os = load i32, ptr %i.or, align 4, !tbaa !40 ; 3 uses
  %i.ot = sext i32 %i.os to i64                   ; 2 uses
  %i.ou = urem i64 %i.ot, %i.om                   ; 3 uses
  %i.ov = getelementptr inbounds nuw [8 x i8], ptr %i.ol, i64 %i.ou
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !66 ; 2 uses
  %.not.i.i.i.i375 = icmp eq ptr %i.ow, null
  br i1 %.not.i.i.i.i375, label %.loopexit.i.i381, label %bb.bp

bb.bp:                                            ; preds = %.loopexit500
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !64 ; 3 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 8
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !40
  %i.pa = icmp eq i32 %i.os, %i.oz
  br i1 %i.pa, label %.loopexit499, label %.lr.ph.i.i.i.i376

bb.bq:                                            ; preds = %bb.br
  %i.pb = icmp eq i32 %i.os, %i.pe
  br i1 %i.pb, label %.loopexit499, label %.lr.ph.i.i.i.i376, !llvm.loop !111

.lr.ph.i.i.i.i376:                                ; preds = %bb.bp, %bb.bq
  %.020.i.i.i.i377 = phi ptr [ %i.pc, %bb.bq ], [ %i.ox, %bb.bp ]
  %i.pc = load ptr, ptr %.020.i.i.i.i377, align 8, !tbaa !64 ; 4 uses
  %.not18.i.i.i.i378 = icmp eq ptr %i.pc, null
  br i1 %.not18.i.i.i.i378, label %.loopexit.i.i381, label %bb.br

bb.br:                                            ; preds = %.lr.ph.i.i.i.i376
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 8
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !40 ; 2 uses
  %i.pf = sext i32 %i.pe to i64
  %i.pg = urem i64 %i.pf, %i.om
  %.not19.i.i.i.i379 = icmp eq i64 %i.pg, %i.ou
  br i1 %.not19.i.i.i.i379, label %bb.bq, label %..loopexit_crit_edge21.i.i.i.i380, !llvm.loop !111

..loopexit_crit_edge21.i.i.i.i380:                ; preds = %bb.br
  br label %.loopexit.i.i381, !llvm.loop !111

.loopexit.i.i381:                                 ; preds = %.lr.ph.i.i.i.i376, %..loopexit_crit_edge21.i.i.i.i380, %.loopexit500
  %i.ph = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #23
          to label %.noexc385 unwind label %bb.bv ; 5 uses

.noexc385:                                        ; preds = %.loopexit.i.i381
  store ptr null, ptr %i.ph, align 8, !tbaa !64
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  %i.pj = load i32, ptr %i.or, align 4, !tbaa !40
  store i32 %i.pj, ptr %i.pi, align 8, !tbaa !122
  %i.pk = getelementptr inbounds nuw i8, ptr %i.ph, i64 12
  store i32 0, ptr %i.pk, align 4, !tbaa !123
  %i.pl = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %10, i64 noundef %i.ou, i64 noundef %i.ot, ptr noundef nonnull %i.ph, i64 noundef 1)
          to label %.noexc385..loopexit499_crit_edge unwind label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i382

.noexc385..loopexit499_crit_edge:                 ; preds = %.noexc385
  %.pre697 = load i64, ptr %i.ay, align 8, !tbaa !38
  br label %.loopexit499

_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i382: ; preds = %.noexc385
  %i.pm = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ph, i64 noundef 16) #24
  br label %.body287

.loopexit499:                                     ; preds = %bb.bq, %.noexc385..loopexit499_crit_edge, %bb.bp
  %i.pn = phi i64 [ %.pre697, %.noexc385..loopexit499_crit_edge ], [ %i.oo, %bb.bp ], [ %i.oo, %bb.bq ]
  %.pn.i.i383 = phi ptr [ %i.pl, %.noexc385..loopexit499_crit_edge ], [ %i.ox, %bb.bp ], [ %i.pc, %bb.bq ]
  %.1.i.i384 = getelementptr inbounds nuw i8, ptr %.pn.i.i383, i64 12
  %i.po = load i32, ptr %.1.i.i384, align 4, !tbaa !40 ; 4 uses
  %i.pp = load ptr, ptr %0, align 8, !tbaa !17
  %i.pq = mul nsw i64 %i.pn, %i.nk
  %i.pr = getelementptr [4 x i8], ptr %i.pp, i64 %indvars.iv674
  %i.ps = getelementptr [4 x i8], ptr %i.pr, i64 %i.pq
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !40
  %i.pu = sext i32 %i.pt to i64
  %i.pv = load ptr, ptr %1, align 8, !tbaa !35
  %i.pw = getelementptr inbounds [8 x i8], ptr %i.pv, i64 %i.pu
  %i.px = load double, ptr %i.pw, align 8, !tbaa !37
  %i.py = fcmp ogt double %i.px, %6
  %i.pz = sext i32 %.0197595 to i64               ; 5 uses
  %i.qa = load i64, ptr %i.gj, align 8, !tbaa !38 ; 5 uses
  %.not.i389 = icmp sgt i64 %i.qa, %i.pz          ; 2 uses
  br i1 %i.py, label %bb.bs, label %bb.bx

bb.bs:                                            ; preds = %.loopexit499
  br i1 %.not.i389, label %.critedge273.sink.split, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.qb = shl nsw i64 %i.qa, 1
  %i.qc = or disjoint i64 %i.qb, 1
  %i.qd = load i64, ptr %i.gk, align 8, !tbaa !39
  invoke void @_ZN5Eigen8internal29conservative_resize_like_implINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEES3_Lb0EE3runERNS_9DenseBaseIS3_EEll(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %i.qc, i64 noundef %i.qd)
          to label %.critedge273.sink.split.sink.split unwind label %bb.bw

bb.bu:                                            ; preds = %.loopexit.i.i367
  %i.qe = landingpad { ptr, i32 }
          cleanup
  br label %.body287

bb.bv:                                            ; preds = %.loopexit.i.i381
  %i.qf = landingpad { ptr, i32 }
          cleanup
  br label %.body287

bb.bw:                                            ; preds = %bb.by, %bb.bt
  %i.qg = landingpad { ptr, i32 }
          cleanup
  br label %.body287

bb.bx:                                            ; preds = %.loopexit499
  br i1 %.not.i389, label %.critedge273.sink.split, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.qh = shl nsw i64 %i.qa, 1
  %i.qi = or disjoint i64 %i.qh, 1
  %i.qj = load i64, ptr %i.gk, align 8, !tbaa !39
  invoke void @_ZN5Eigen8internal29conservative_resize_like_implINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEES3_Lb0EE3runERNS_9DenseBaseIS3_EEll(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %i.qi, i64 noundef %i.qj)
          to label %.critedge273.sink.split.sink.split unwind label %bb.bw

bb.bz:                                            ; preds = %.preheader
  %i.qk = getelementptr [4 x i8], ptr %i.mz, i64 %i.gl
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !40
  %i.qm = sext i32 %i.ql to i64
  %i.qn = getelementptr inbounds [8 x i8], ptr %i.na, i64 %i.qm
  %i.qo = load double, ptr %i.qn, align 8, !tbaa !37
  %i.qp = fcmp oeq double %i.qo, %6
  br i1 %i.qp, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %.idx = shl i64 %i.gl, 3
  %i.qq = getelementptr i8, ptr %i.mz, i64 %.idx
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !40
  %i.qs = sext i32 %i.qr to i64
  %i.qt = getelementptr inbounds [8 x i8], ptr %i.na, i64 %i.qs
  %i.qu = load double, ptr %i.qt, align 8, !tbaa !37
  %i.qv = fcmp oeq double %i.qu, %6
  %spec.select = select i1 %i.qv, i32 2, i32 3
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz, %.preheader
  %.0193.lcssa = phi i32 [ 0, %.preheader ], [ %spec.select, %bb.ca ], [ 1, %bb.bz ] ; 4 uses
  %i.qw = zext nneg i32 %.0193.lcssa to i64       ; 4 uses
  %umax = call i32 @llvm.umax.i32(i32 %.0193.lcssa, i32 2)
  %wide.trip.count = zext nneg i32 %umax to i64
  %exitcond673.not943 = icmp samesign ugt i32 %.0193.lcssa, 1
  br i1 %exitcond673.not943, label %.critedge273, label %.lr.ph946

bb.cc:                                            ; preds = %.lr.ph946
  %indvars.iv.next671 = add nuw nsw i64 %i.qw, 1  ; 3 uses
  %exitcond673.not = icmp eq i64 %indvars.iv.next671, %wide.trip.count
  br i1 %exitcond673.not, label %.critedge273, label %.lr.ph946.1

.lr.ph946.1:                                      ; preds = %bb.cc
  %i.qx = shl i64 %i.gl, %indvars.iv.next671      ; 2 uses
  %i.qy = getelementptr [4 x i8], ptr %i.mz, i64 %i.qx
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !40 ; 2 uses
  %i.ra = sext i32 %i.qz to i64                   ; 2 uses
  %i.rb = getelementptr inbounds [8 x i8], ptr %i.na, i64 %i.ra
  %i.rc = load double, ptr %i.rb, align 8, !tbaa !37
  %i.rd = fcmp oeq double %i.rc, %6
  br i1 %i.rd, label %bb.cd, label %.critedge273, !llvm.loop !118

.lr.ph946:                                        ; preds = %bb.cb
  %i.re = shl i64 %i.gl, %i.qw                    ; 2 uses
  %i.rf = getelementptr [4 x i8], ptr %i.mz, i64 %i.re
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !40 ; 2 uses
  %i.rh = sext i32 %i.rg to i64                   ; 2 uses
  %i.ri = getelementptr inbounds [8 x i8], ptr %i.na, i64 %i.rh
  %i.rj = load double, ptr %i.ri, align 8, !tbaa !37
  %i.rk = fcmp oeq double %i.rj, %6
  br i1 %i.rk, label %bb.cd, label %bb.cc, !llvm.loop !118

bb.cd:                                            ; preds = %.lr.ph946.1, %.lr.ph946
  %indvars.iv670944.lcssa = phi i64 [ %i.qw, %.lr.ph946 ], [ %indvars.iv.next671, %.lr.ph946.1 ] ; 2 uses
  %.lcssa980 = phi i64 [ %i.re, %.lr.ph946 ], [ %i.qx, %.lr.ph946.1 ] ; 2 uses
  %.lcssa978 = phi i32 [ %i.rg, %.lr.ph946 ], [ %i.qz, %.lr.ph946.1 ] ; 2 uses
  %.lcssa976 = phi i64 [ %i.rh, %.lr.ph946 ], [ %i.ra, %.lr.ph946.1 ] ; 2 uses
  %i.rl = trunc nuw nsw i64 %indvars.iv670944.lcssa to i32
  %.0.neg = xor i32 %i.rl, -1
  %reass.sub = sub nsw i32 %.0.neg, %.0193.lcssa
  %i.rm = add i32 %reass.sub, 3                   ; 2 uses
  %i.rn = sext i32 %i.rm to i64                   ; 2 uses
  %i.ro = mul nsw i64 %i.gl, %i.rn                ; 2 uses
  %i.rp = getelementptr [4 x i8], ptr %i.mz, i64 %i.ro
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !40
  %i.rr = sext i32 %i.rq to i64
  %i.rs = getelementptr inbounds [8 x i8], ptr %i.na, i64 %i.rr
  %i.rt = load double, ptr %i.rs, align 8, !tbaa !37 ; 2 uses
  %i.ru = fcmp une double %i.rt, %6
  br i1 %i.ru, label %bb.ce, label %.critedge273

bb.ce:                                            ; preds = %bb.cd
  %i.rv = getelementptr [4 x i8], ptr %i.gm, i64 %i.ro
  %i.rw = getelementptr [4 x i8], ptr %i.rv, i64 %indvars.iv674
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !40
  %i.ry = load ptr, ptr %4, align 8, !tbaa !49
  %i.rz = sext i32 %i.rx to i64
  %i.sa = getelementptr [4 x i8], ptr %i.ry, i64 %i.rz ; 2 uses
  %i.sb = getelementptr i8, ptr %i.sa, i64 4
  %i.sc = load i32, ptr %i.sb, align 4, !tbaa !40
  %i.sd = load i32, ptr %i.sa, align 4, !tbaa !40
  %i.se = sub nsw i32 %i.sc, %i.sd
  %i.sf = icmp eq i32 %i.se, 1
  %i.sg = fcmp ogt double %i.rt, %6
  %or.cond488 = or i1 %i.sg, %i.sf
  br i1 %or.cond488, label %bb.cf, label %.critedge273

bb.cf:                                            ; preds = %bb.ce
  %i.sh = mul nuw nsw i64 %i.gl, %i.qw
  %i.si = getelementptr [4 x i8], ptr %i.mz, i64 %i.sh ; 2 uses
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !40 ; 3 uses
  %i.sk = sext i32 %i.sj to i64                   ; 2 uses
  %i.sl = load i64, ptr %i.as, align 8, !tbaa !59 ; 4 uses
  %i.sm = urem i64 %i.sk, %i.sl                   ; 3 uses
  %i.sn = load ptr, ptr %12, align 8, !tbaa !58   ; 3 uses
  %i.so = getelementptr inbounds nuw [8 x i8], ptr %i.sn, i64 %i.sm
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !66 ; 2 uses
  %.not.i.i.i.i405 = icmp eq ptr %i.sp, null
  br i1 %.not.i.i.i.i405, label %.loopexit.i.i411, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !64 ; 3 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 8
  %i.ss = load i32, ptr %i.sr, align 4, !tbaa !40
  %i.st = icmp eq i32 %i.sj, %i.ss
  br i1 %i.st, label %.loopexit502, label %.lr.ph.i.i.i.i406

bb.ch:                                            ; preds = %bb.ci
  %i.su = icmp eq i32 %i.sj, %i.sx
  br i1 %i.su, label %.loopexit502, label %.lr.ph.i.i.i.i406, !llvm.loop !111

.lr.ph.i.i.i.i406:                                ; preds = %bb.cg, %bb.ch
  %.020.i.i.i.i407 = phi ptr [ %i.sv, %bb.ch ], [ %i.sq, %bb.cg ]
  %i.sv = load ptr, ptr %.020.i.i.i.i407, align 8, !tbaa !64 ; 4 uses
  %.not18.i.i.i.i408 = icmp eq ptr %i.sv, null
  br i1 %.not18.i.i.i.i408, label %.loopexit.i.i411, label %bb.ci

bb.ci:                                            ; preds = %.lr.ph.i.i.i.i406
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 8
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !40 ; 2 uses
  %i.sy = sext i32 %i.sx to i64
  %i.sz = urem i64 %i.sy, %i.sl
  %.not19.i.i.i.i409 = icmp eq i64 %i.sz, %i.sm
  br i1 %.not19.i.i.i.i409, label %bb.ch, label %..loopexit_crit_edge21.i.i.i.i410, !llvm.loop !111

..loopexit_crit_edge21.i.i.i.i410:                ; preds = %bb.ci
  br label %.loopexit.i.i411, !llvm.loop !111

.loopexit.i.i411:                                 ; preds = %.lr.ph.i.i.i.i406, %..loopexit_crit_edge21.i.i.i.i410, %bb.cf
  %i.ta = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #23
          to label %.noexc415 unwind label %bb.co ; 5 uses

.noexc415:                                        ; preds = %.loopexit.i.i411
  store ptr null, ptr %i.ta, align 8, !tbaa !64
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 8
  %i.tc = load i32, ptr %i.si, align 4, !tbaa !40
  store i32 %i.tc, ptr %i.tb, align 8, !tbaa !122
  %i.td = getelementptr inbounds nuw i8, ptr %i.ta, i64 12
  store i32 0, ptr %i.td, align 4, !tbaa !123
  %i.te = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %12, i64 noundef %i.sm, i64 noundef %i.sk, ptr noundef nonnull %i.ta, i64 noundef 1)
          to label %.noexc415..loopexit502_crit_edge unwind label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i412

.noexc415..loopexit502_crit_edge:                 ; preds = %.noexc415
  %.pre687 = load ptr, ptr %0, align 8, !tbaa !17 ; 2 uses
  %.pre688 = load i64, ptr %i.ay, align 8, !tbaa !38 ; 2 uses
  %.pre689 = load i64, ptr %i.as, align 8, !tbaa !59
  %.pre690 = load ptr, ptr %12, align 8, !tbaa !58
  %.pre699 = shl i64 %.pre688, %indvars.iv670944.lcssa ; 2 uses
  %.phi.trans.insert703 = getelementptr [4 x i8], ptr %.pre687, i64 %indvars.iv674
  %.phi.trans.insert704 = getelementptr [4 x i8], ptr %.phi.trans.insert703, i64 %.pre699
  %.pre705 = load i32, ptr %.phi.trans.insert704, align 4, !tbaa !40 ; 2 uses
  %.pre708 = sext i32 %.pre705 to i64
  br label %.loopexit502

_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i412: ; preds = %.noexc415
  %i.tf = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ta, i64 noundef 16) #24
  br label %.body287

.loopexit502:                                     ; preds = %bb.ch, %.noexc415..loopexit502_crit_edge, %bb.cg
  %.pre-phi709 = phi i64 [ %.pre708, %.noexc415..loopexit502_crit_edge ], [ %.lcssa976, %bb.cg ], [ %.lcssa976, %bb.ch ] ; 2 uses
  %i.tg = phi i32 [ %.pre705, %.noexc415..loopexit502_crit_edge ], [ %.lcssa978, %bb.cg ], [ %.lcssa978, %bb.ch ] ; 2 uses
  %.pre-phi700 = phi i64 [ %.pre699, %.noexc415..loopexit502_crit_edge ], [ %.lcssa980, %bb.cg ], [ %.lcssa980, %bb.ch ]
  %i.th = phi ptr [ %.pre690, %.noexc415..loopexit502_crit_edge ], [ %i.sn, %bb.cg ], [ %i.sn, %bb.ch ]
  %i.ti = phi i64 [ %.pre689, %.noexc415..loopexit502_crit_edge ], [ %i.sl, %bb.cg ], [ %i.sl, %bb.ch ] ; 2 uses
  %i.tj = phi i64 [ %.pre688, %.noexc415..loopexit502_crit_edge ], [ %i.gl, %bb.cg ], [ %i.gl, %bb.ch ] ; 2 uses
  %i.tk = phi ptr [ %.pre687, %.noexc415..loopexit502_crit_edge ], [ %i.my, %bb.cg ], [ %i.my, %bb.ch ] ; 3 uses
  %.pn.i.i413 = phi ptr [ %i.te, %.noexc415..loopexit502_crit_edge ], [ %i.sq, %bb.cg ], [ %i.sv, %bb.ch ]
  %.1.i.i414 = getelementptr inbounds nuw i8, ptr %.pn.i.i413, i64 12
  %i.tl = load i32, ptr %.1.i.i414, align 4, !tbaa !40 ; 4 uses
  %i.tm = getelementptr [4 x i8], ptr %i.tk, i64 %indvars.iv674
  %i.tn = getelementptr [4 x i8], ptr %i.tm, i64 %.pre-phi700
  %i.to = urem i64 %.pre-phi709, %i.ti            ; 3 uses
  %i.tp = getelementptr inbounds nuw [8 x i8], ptr %i.th, i64 %i.to
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !66 ; 2 uses
  %.not.i.i.i.i419 = icmp eq ptr %i.tq, null
  br i1 %.not.i.i.i.i419, label %.loopexit.i.i425, label %bb.cj

bb.cj:                                            ; preds = %.loopexit502
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !64 ; 3 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 8
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !40
  %i.tu = icmp eq i32 %i.tg, %i.tt
  br i1 %i.tu, label %.loopexit501, label %.lr.ph.i.i.i.i420

bb.ck:                                            ; preds = %bb.cl
  %i.tv = icmp eq i32 %i.tg, %i.ty
  br i1 %i.tv, label %.loopexit501, label %.lr.ph.i.i.i.i420, !llvm.loop !111

.lr.ph.i.i.i.i420:                                ; preds = %bb.cj, %bb.ck
  %.020.i.i.i.i421 = phi ptr [ %i.tw, %bb.ck ], [ %i.tr, %bb.cj ]
  %i.tw = load ptr, ptr %.020.i.i.i.i421, align 8, !tbaa !64 ; 4 uses
  %.not18.i.i.i.i422 = icmp eq ptr %i.tw, null
  br i1 %.not18.i.i.i.i422, label %.loopexit.i.i425, label %bb.cl

bb.cl:                                            ; preds = %.lr.ph.i.i.i.i420
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 8
  %i.ty = load i32, ptr %i.tx, align 4, !tbaa !40 ; 2 uses
  %i.tz = sext i32 %i.ty to i64
  %i.ua = urem i64 %i.tz, %i.ti
  %.not19.i.i.i.i423 = icmp eq i64 %i.ua, %i.to
  br i1 %.not19.i.i.i.i423, label %bb.ck, label %..loopexit_crit_edge21.i.i.i.i424, !llvm.loop !111

..loopexit_crit_edge21.i.i.i.i424:                ; preds = %bb.cl
  br label %.loopexit.i.i425, !llvm.loop !111

.loopexit.i.i425:                                 ; preds = %.lr.ph.i.i.i.i420, %..loopexit_crit_edge21.i.i.i.i424, %.loopexit502
  %i.ub = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #23
          to label %.noexc429 unwind label %bb.cp ; 5 uses

.noexc429:                                        ; preds = %.loopexit.i.i425
  store ptr null, ptr %i.ub, align 8, !tbaa !64
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 8
  %i.ud = load i32, ptr %i.tn, align 4, !tbaa !40
  store i32 %i.ud, ptr %i.uc, align 8, !tbaa !122
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ub, i64 12
  store i32 0, ptr %i.ue, align 4, !tbaa !123
  %i.uf = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %12, i64 noundef %i.to, i64 noundef %.pre-phi709, ptr noundef nonnull %i.ub, i64 noundef 1)
          to label %.noexc429..loopexit501_crit_edge unwind label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i426

.noexc429..loopexit501_crit_edge:                 ; preds = %.noexc429
  %.pre691 = load ptr, ptr %0, align 8, !tbaa !17
  %.pre692 = load i64, ptr %i.ay, align 8, !tbaa !38
  br label %.loopexit501

_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i426: ; preds = %.noexc429
  %i.ug = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ub, i64 noundef 16) #24
  br label %.body287

.loopexit501:                                     ; preds = %bb.ck, %.noexc429..loopexit501_crit_edge, %bb.cj
  %i.uh = phi i64 [ %.pre692, %.noexc429..loopexit501_crit_edge ], [ %i.tj, %bb.cj ], [ %i.tj, %bb.ck ]
  %i.ui = phi ptr [ %.pre691, %.noexc429..loopexit501_crit_edge ], [ %i.tk, %bb.cj ], [ %i.tk, %bb.ck ]
  %.pn.i.i427 = phi ptr [ %i.uf, %.noexc429..loopexit501_crit_edge ], [ %i.tr, %bb.cj ], [ %i.tw, %bb.ck ]
  %.1.i.i428 = getelementptr inbounds nuw i8, ptr %.pn.i.i427, i64 12
  %i.uj = load i32, ptr %.1.i.i428, align 4, !tbaa !40 ; 4 uses
  %i.uk = mul nsw i64 %i.uh, %i.rn
  %i.ul = getelementptr [4 x i8], ptr %i.ui, i64 %indvars.iv674
  %i.um = getelementptr [4 x i8], ptr %i.ul, i64 %i.uk
  %i.un = load i32, ptr %i.um, align 4, !tbaa !40
  %i.uo = sext i32 %i.un to i64
  %i.up = load ptr, ptr %1, align 8, !tbaa !35
  %i.uq = getelementptr inbounds [8 x i8], ptr %i.up, i64 %i.uo
  %i.ur = load double, ptr %i.uq, align 8, !tbaa !37
  %i.us = fcmp olt double %i.ur, %6
  %i.ut = trunc i32 %i.rm to i1
  %i.uu = xor i1 %i.us, %i.ut
  %i.uv = sext i32 %.0197595 to i64               ; 5 uses
  %i.uw = load i64, ptr %i.gj, align 8, !tbaa !38 ; 5 uses
  %.not.i433 = icmp sgt i64 %i.uw, %i.uv          ; 2 uses
  br i1 %i.uu, label %bb.cm, label %bb.cr

bb.cm:                                            ; preds = %.loopexit501
  br i1 %.not.i433, label %.critedge273.sink.split, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ux = shl nsw i64 %i.uw, 1
  %i.uy = or disjoint i64 %i.ux, 1
end_hunk_0
