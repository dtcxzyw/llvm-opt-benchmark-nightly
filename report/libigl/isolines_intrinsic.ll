Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/isolines_intrinsic?download=true
inline.NumInlined: 1150
inline.NumDeleted: 670
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN3igl18isolines_intrinsicIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEES3_NS2_IiLin1ELi1ELi0ELin1ELi1EEES5_S5_NS2_IdLin1ELin1ELi0ELin1ELin1EEES5_S3_EEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERKNS7_IT2_EERKNS7_IT3_EERKNS7_IT4_EENSC_6ScalarERNS1_15PlainObjectBaseIT5_EERNSX_IT6_EERNSX_IT7_EE:bb.a
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !40
  %i.nz = icmp eq i32 %i.np, %i.ny
  br i1 %i.nz, label %.loopexit500, label %.lr.ph.i.i.i.i362

bb.bn:                                            ; preds = %bb.bo
  %i.oa = icmp eq i32 %i.np, %i.od
  br i1 %i.oa, label %.loopexit500, label %.lr.ph.i.i.i.i362, !llvm.loop !111

.lr.ph.i.i.i.i362:                                ; preds = %bb.bm, %bb.bn
  %.020.i.i.i.i363 = phi ptr [ %i.ob, %bb.bn ], [ %i.nw, %bb.bm ]
  %i.ob = load ptr, ptr %.020.i.i.i.i363, align 8, !tbaa !64 ; 4 uses
  %.not18.i.i.i.i364 = icmp eq ptr %i.ob, null
  br i1 %.not18.i.i.i.i364, label %.loopexit.i.i367, label %bb.bo

bb.bo:                                            ; preds = %.lr.ph.i.i.i.i362
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 8
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !40 ; 2 uses
  %i.oe = sext i32 %i.od to i64
  %i.of = urem i64 %i.oe, %i.nr
  %.not19.i.i.i.i365 = icmp eq i64 %i.of, %i.ns
  br i1 %.not19.i.i.i.i365, label %bb.bn, label %..loopexit_crit_edge21.i.i.i.i366, !llvm.loop !111

..loopexit_crit_edge21.i.i.i.i366:                ; preds = %bb.bo
  br label %.loopexit.i.i367, !llvm.loop !111

.loopexit.i.i367:                                 ; preds = %.lr.ph.i.i.i.i362, %..loopexit_crit_edge21.i.i.i.i366, %_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE4findERS5_.exit308.thread
  %i.og = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #23
          to label %.noexc371 unwind label %bb.bu ; 5 uses

.noexc371:                                        ; preds = %.loopexit.i.i367
  store ptr null, ptr %i.og, align 8, !tbaa !64
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 8
  store i32 %i.np, ptr %i.oh, align 8, !tbaa !122
  %i.oi = getelementptr inbounds nuw i8, ptr %i.og, i64 12
  store i32 0, ptr %i.oi, align 4, !tbaa !123
  %i.oj = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %12, i64 noundef %i.ns, i64 noundef %i.nq, ptr noundef nonnull %i.og, i64 noundef 1)
          to label %.noexc371..loopexit500_crit_edge unwind label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i368

.noexc371..loopexit500_crit_edge:                 ; preds = %.noexc371
  %.pre693.a = load i64, ptr %i.ay, align 8, !tbaa !38 ; 2 uses
  %.pre694 = load ptr, ptr %3, align 8, !tbaa !49
  %.pre695 = load i64, ptr %i.b, align 8, !tbaa !59
  %.pre696 = load ptr, ptr %10, align 8, !tbaa !58
  %.pre706.a = mul nsw i64 %.pre693.a, %.0195516789791
  br label %.loopexit500

_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i368: ; preds = %.noexc371
  %i.ok = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.og, i64 noundef 16) #24
  br label %.body287

.loopexit500:                                     ; preds = %bb.bn, %.noexc371..loopexit500_crit_edge, %bb.bm
  %.pre-phi707 = phi i64 [ %.pre706.a, %.noexc371..loopexit500_crit_edge ], [ %i.nm, %bb.bm ], [ %i.nm, %bb.bn ]
  %i.ol = phi ptr [ %.pre696, %.noexc371..loopexit500_crit_edge ], [ %i.gp, %bb.bm ], [ %i.gp, %bb.bn ]
  %i.om = phi i64 [ %.pre695, %.noexc371..loopexit500_crit_edge ], [ %i.go, %bb.bm ], [ %i.go, %bb.bn ] ; 2 uses
  %i.on = phi ptr [ %.pre694, %.noexc371..loopexit500_crit_edge ], [ %i.gm, %bb.bm ], [ %i.gm, %bb.bn ]
  %i.oo = phi i64 [ %.pre693.a, %.noexc371..loopexit500_crit_edge ], [ %i.gl, %bb.bm ], [ %i.gl, %bb.bn ] ; 2 uses
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
  %i.qw = zext nneg i32 %.0193.lcssa to i64       ; 5 uses
  %umax = call i32 @llvm.umax.i32(i32 %.0193.lcssa, i32 2)
  %wide.trip.count = zext nneg i32 %umax to i64
  %exitcond673.not943 = icmp samesign ugt i32 %.0193.lcssa, 1
  br i1 %exitcond673.not943, label %.critedge273, label %.lr.ph946

bb.cc:                                            ; preds = %.lr.ph946
  %exitcond673.not = icmp eq i64 %indvars.iv.next672, %wide.trip.count
  br i1 %exitcond673.not, label %.critedge273, label %.lr.ph946.1

.lr.ph946.1:                                      ; preds = %bb.cc
  %indvars.iv.next672.1 = or disjoint i64 %i.qw, 2 ; 2 uses
  %13 = mul nsw i64 %i.gl, %indvars.iv.next672.1  ; 2 uses
  %i.qx = getelementptr [4 x i8], ptr %i.mz, i64 %13
  %i.qy = load i32, ptr %i.qx, align 4, !tbaa !40 ; 2 uses
  %i.qz = sext i32 %i.qy to i64                   ; 2 uses
  %i.ra = getelementptr inbounds [8 x i8], ptr %i.na, i64 %i.qz
  %i.rb = load double, ptr %i.ra, align 8, !tbaa !37
  %i.rc = fcmp oeq double %i.rb, %6
  br i1 %i.rc, label %bb.cd, label %.critedge273, !llvm.loop !118

.lr.ph946:                                        ; preds = %bb.cb
  %indvars.iv.next672 = add nuw nsw i64 %i.qw, 1  ; 3 uses
  %i.rd = shl i64 %i.gl, %i.qw                    ; 2 uses
  %i.re = getelementptr [4 x i8], ptr %i.mz, i64 %i.rd
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !40 ; 2 uses
  %i.rg = sext i32 %i.rf to i64                   ; 2 uses
  %i.rh = getelementptr inbounds [8 x i8], ptr %i.na, i64 %i.rg
  %i.ri = load double, ptr %i.rh, align 8, !tbaa !37
  %i.rj = fcmp oeq double %i.ri, %6
  br i1 %i.rj, label %bb.cd, label %bb.cc, !llvm.loop !118

bb.cd:                                            ; preds = %.lr.ph946.1, %.lr.ph946
  %indvars.iv671945.lcssa = phi i64 [ %i.qw, %.lr.ph946 ], [ %indvars.iv.next672, %.lr.ph946.1 ]
  %indvars.iv670944.lcssa = phi i64 [ %indvars.iv.next672, %.lr.ph946 ], [ %indvars.iv.next672.1, %.lr.ph946.1 ]
  %.lcssa980 = phi i64 [ %i.rd, %.lr.ph946 ], [ %13, %.lr.ph946.1 ] ; 2 uses
  %.lcssa978 = phi i32 [ %i.rf, %.lr.ph946 ], [ %i.qy, %.lr.ph946.1 ] ; 2 uses
  %.lcssa976 = phi i64 [ %i.rg, %.lr.ph946 ], [ %i.qz, %.lr.ph946.1 ] ; 2 uses
  %i.rk = trunc nuw nsw i64 %indvars.iv671945.lcssa to i32
  %.0.neg = xor i32 %i.rk, -1
  %reass.sub = sub nsw i32 %.0.neg, %.0193.lcssa
  %i.rl = add i32 %reass.sub, 3                   ; 2 uses
  %i.rm = sext i32 %i.rl to i64                   ; 2 uses
  %i.rn = mul nsw i64 %i.gl, %i.rm                ; 2 uses
  %i.ro = getelementptr [4 x i8], ptr %i.mz, i64 %i.rn
  %i.rp = load i32, ptr %i.ro, align 4, !tbaa !40
  %i.rq = sext i32 %i.rp to i64
  %i.rr = getelementptr inbounds [8 x i8], ptr %i.na, i64 %i.rq
  %i.rs = load double, ptr %i.rr, align 8, !tbaa !37 ; 2 uses
  %i.rt = fcmp une double %i.rs, %6
  br i1 %i.rt, label %bb.ce, label %.critedge273

bb.ce:                                            ; preds = %bb.cd
  %i.ru = getelementptr [4 x i8], ptr %i.gm, i64 %i.rn
  %i.rv = getelementptr [4 x i8], ptr %i.ru, i64 %indvars.iv674
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !40
  %i.rx = load ptr, ptr %4, align 8, !tbaa !49
  %i.ry = sext i32 %i.rw to i64
  %i.rz = getelementptr [4 x i8], ptr %i.rx, i64 %i.ry ; 2 uses
  %i.sa = getelementptr i8, ptr %i.rz, i64 4
  %i.sb = load i32, ptr %i.sa, align 4, !tbaa !40
  %i.sc = load i32, ptr %i.rz, align 4, !tbaa !40
  %i.sd = sub nsw i32 %i.sb, %i.sc
  %i.se = icmp eq i32 %i.sd, 1
  %i.sf = fcmp ogt double %i.rs, %6
  %or.cond488 = or i1 %i.sf, %i.se
  br i1 %or.cond488, label %bb.cf, label %.critedge273

bb.cf:                                            ; preds = %bb.ce
  %i.sg = mul nuw nsw i64 %i.gl, %i.qw
  %i.sh = getelementptr [4 x i8], ptr %i.mz, i64 %i.sg ; 2 uses
  %i.si = load i32, ptr %i.sh, align 4, !tbaa !40 ; 3 uses
  %i.sj = sext i32 %i.si to i64                   ; 2 uses
  %i.sk = load i64, ptr %i.as, align 8, !tbaa !59 ; 4 uses
  %i.sl = urem i64 %i.sj, %i.sk                   ; 3 uses
  %i.sm = load ptr, ptr %12, align 8, !tbaa !58   ; 3 uses
  %i.sn = getelementptr inbounds nuw [8 x i8], ptr %i.sm, i64 %i.sl
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !66 ; 2 uses
  %.not.i.i.i.i405 = icmp eq ptr %i.so, null
  br i1 %.not.i.i.i.i405, label %.loopexit.i.i411, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !64 ; 3 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 8
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !40
  %i.ss = icmp eq i32 %i.si, %i.sr
  br i1 %i.ss, label %.loopexit502, label %.lr.ph.i.i.i.i406

bb.ch:                                            ; preds = %bb.ci
  %i.st = icmp eq i32 %i.si, %i.sw
  br i1 %i.st, label %.loopexit502, label %.lr.ph.i.i.i.i406, !llvm.loop !111

.lr.ph.i.i.i.i406:                                ; preds = %bb.cg, %bb.ch
  %.020.i.i.i.i407 = phi ptr [ %i.su, %bb.ch ], [ %i.sp, %bb.cg ]
  %i.su = load ptr, ptr %.020.i.i.i.i407, align 8, !tbaa !64 ; 4 uses
  %.not18.i.i.i.i408 = icmp eq ptr %i.su, null
  br i1 %.not18.i.i.i.i408, label %.loopexit.i.i411, label %bb.ci

bb.ci:                                            ; preds = %.lr.ph.i.i.i.i406
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 8
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !40 ; 2 uses
  %i.sx = sext i32 %i.sw to i64
  %i.sy = urem i64 %i.sx, %i.sk
  %.not19.i.i.i.i409 = icmp eq i64 %i.sy, %i.sl
  br i1 %.not19.i.i.i.i409, label %bb.ch, label %..loopexit_crit_edge21.i.i.i.i410, !llvm.loop !111

..loopexit_crit_edge21.i.i.i.i410:                ; preds = %bb.ci
  br label %.loopexit.i.i411, !llvm.loop !111

.loopexit.i.i411:                                 ; preds = %.lr.ph.i.i.i.i406, %..loopexit_crit_edge21.i.i.i.i410, %bb.cf
  %i.sz = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #23
          to label %.noexc415 unwind label %bb.co ; 5 uses

.noexc415:                                        ; preds = %.loopexit.i.i411
  store ptr null, ptr %i.sz, align 8, !tbaa !64
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 8
  %i.tb = load i32, ptr %i.sh, align 4, !tbaa !40
  store i32 %i.tb, ptr %i.ta, align 8, !tbaa !122
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sz, i64 12
  store i32 0, ptr %i.tc, align 4, !tbaa !123
  %i.td = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %12, i64 noundef %i.sl, i64 noundef %i.sj, ptr noundef nonnull %i.sz, i64 noundef 1)
          to label %.noexc415..loopexit502_crit_edge unwind label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i412

.noexc415..loopexit502_crit_edge:                 ; preds = %.noexc415
  %.pre687 = load ptr, ptr %0, align 8, !tbaa !17 ; 2 uses
  %.pre688 = load i64, ptr %i.ay, align 8, !tbaa !38 ; 2 uses
  %.pre689 = load i64, ptr %i.as, align 8, !tbaa !59
  %.pre690 = load ptr, ptr %12, align 8, !tbaa !58
  %.pre700 = mul nsw i64 %.pre688, %indvars.iv670944.lcssa ; 2 uses
  %.phi.trans.insert703 = getelementptr [4 x i8], ptr %.pre687, i64 %indvars.iv674
  %.phi.trans.insert704 = getelementptr [4 x i8], ptr %.phi.trans.insert703, i64 %.pre700
  %.pre705 = load i32, ptr %.phi.trans.insert704, align 4, !tbaa !40 ; 2 uses
  %.pre708 = sext i32 %.pre705 to i64
  br label %.loopexit502

_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i412: ; preds = %.noexc415
  %i.te = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.sz, i64 noundef 16) #24
  br label %.body287

.loopexit502:                                     ; preds = %bb.ch, %.noexc415..loopexit502_crit_edge, %bb.cg
  %.pre-phi709 = phi i64 [ %.pre708, %.noexc415..loopexit502_crit_edge ], [ %.lcssa976, %bb.cg ], [ %.lcssa976, %bb.ch ] ; 2 uses
  %i.tf = phi i32 [ %.pre705, %.noexc415..loopexit502_crit_edge ], [ %.lcssa978, %bb.cg ], [ %.lcssa978, %bb.ch ] ; 2 uses
  %.pre-phi700 = phi i64 [ %.pre700, %.noexc415..loopexit502_crit_edge ], [ %.lcssa980, %bb.cg ], [ %.lcssa980, %bb.ch ]
  %i.tg = phi ptr [ %.pre690, %.noexc415..loopexit502_crit_edge ], [ %i.sm, %bb.cg ], [ %i.sm, %bb.ch ]
  %i.th = phi i64 [ %.pre689, %.noexc415..loopexit502_crit_edge ], [ %i.sk, %bb.cg ], [ %i.sk, %bb.ch ] ; 2 uses
  %i.ti = phi i64 [ %.pre688, %.noexc415..loopexit502_crit_edge ], [ %i.gl, %bb.cg ], [ %i.gl, %bb.ch ] ; 2 uses
  %i.tj = phi ptr [ %.pre687, %.noexc415..loopexit502_crit_edge ], [ %i.my, %bb.cg ], [ %i.my, %bb.ch ] ; 3 uses
  %.pn.i.i413 = phi ptr [ %i.td, %.noexc415..loopexit502_crit_edge ], [ %i.sp, %bb.cg ], [ %i.su, %bb.ch ]
  %.1.i.i414 = getelementptr inbounds nuw i8, ptr %.pn.i.i413, i64 12
  %i.tk = load i32, ptr %.1.i.i414, align 4, !tbaa !40 ; 4 uses
  %i.tl = getelementptr [4 x i8], ptr %i.tj, i64 %indvars.iv674
  %i.tm = getelementptr [4 x i8], ptr %i.tl, i64 %.pre-phi700
  %i.tn = urem i64 %.pre-phi709, %i.th            ; 3 uses
  %i.to = getelementptr inbounds nuw [8 x i8], ptr %i.tg, i64 %i.tn
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !66 ; 2 uses
  %.not.i.i.i.i419 = icmp eq ptr %i.tp, null
  br i1 %.not.i.i.i.i419, label %.loopexit.i.i425, label %bb.cj

bb.cj:                                            ; preds = %.loopexit502
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !64 ; 3 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 8
  %i.ts = load i32, ptr %i.tr, align 4, !tbaa !40
  %i.tt = icmp eq i32 %i.tf, %i.ts
  br i1 %i.tt, label %.loopexit501, label %.lr.ph.i.i.i.i420

bb.ck:                                            ; preds = %bb.cl
  %i.tu = icmp eq i32 %i.tf, %i.tx
  br i1 %i.tu, label %.loopexit501, label %.lr.ph.i.i.i.i420, !llvm.loop !111

.lr.ph.i.i.i.i420:                                ; preds = %bb.cj, %bb.ck
  %.020.i.i.i.i421 = phi ptr [ %i.tv, %bb.ck ], [ %i.tq, %bb.cj ]
  %i.tv = load ptr, ptr %.020.i.i.i.i421, align 8, !tbaa !64 ; 4 uses
  %.not18.i.i.i.i422 = icmp eq ptr %i.tv, null
  br i1 %.not18.i.i.i.i422, label %.loopexit.i.i425, label %bb.cl

bb.cl:                                            ; preds = %.lr.ph.i.i.i.i420
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 8
  %i.tx = load i32, ptr %i.tw, align 4, !tbaa !40 ; 2 uses
  %i.ty = sext i32 %i.tx to i64
  %i.tz = urem i64 %i.ty, %i.th
  %.not19.i.i.i.i423 = icmp eq i64 %i.tz, %i.tn
  br i1 %.not19.i.i.i.i423, label %bb.ck, label %..loopexit_crit_edge21.i.i.i.i424, !llvm.loop !111

..loopexit_crit_edge21.i.i.i.i424:                ; preds = %bb.cl
  br label %.loopexit.i.i425, !llvm.loop !111

.loopexit.i.i425:                                 ; preds = %.lr.ph.i.i.i.i420, %..loopexit_crit_edge21.i.i.i.i424, %.loopexit502
  %i.ua = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #23
          to label %.noexc429 unwind label %bb.cp ; 5 uses

.noexc429:                                        ; preds = %.loopexit.i.i425
  store ptr null, ptr %i.ua, align 8, !tbaa !64
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 8
  %i.uc = load i32, ptr %i.tm, align 4, !tbaa !40
  store i32 %i.uc, ptr %i.ub, align 8, !tbaa !122
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ua, i64 12
  store i32 0, ptr %i.ud, align 4, !tbaa !123
  %i.ue = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %12, i64 noundef %i.tn, i64 noundef %.pre-phi709, ptr noundef nonnull %i.ua, i64 noundef 1)
          to label %.noexc429..loopexit501_crit_edge unwind label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i426

.noexc429..loopexit501_crit_edge:                 ; preds = %.noexc429
  %.pre691 = load ptr, ptr %0, align 8, !tbaa !17
  %.pre692 = load i64, ptr %i.ay, align 8, !tbaa !38
  br label %.loopexit501

_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i426: ; preds = %.noexc429
  %i.uf = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ua, i64 noundef 16) #24
  br label %.body287

.loopexit501:                                     ; preds = %bb.ck, %.noexc429..loopexit501_crit_edge, %bb.cj
  %i.ug = phi i64 [ %.pre692, %.noexc429..loopexit501_crit_edge ], [ %i.ti, %bb.cj ], [ %i.ti, %bb.ck ]
  %i.uh = phi ptr [ %.pre691, %.noexc429..loopexit501_crit_edge ], [ %i.tj, %bb.cj ], [ %i.tj, %bb.ck ]
  %.pn.i.i427 = phi ptr [ %i.ue, %.noexc429..loopexit501_crit_edge ], [ %i.tq, %bb.cj ], [ %i.tv, %bb.ck ]
  %.1.i.i428 = getelementptr inbounds nuw i8, ptr %.pn.i.i427, i64 12
  %i.ui = load i32, ptr %.1.i.i428, align 4, !tbaa !40 ; 4 uses
  %i.uj = mul nsw i64 %i.ug, %i.rm
  %i.uk = getelementptr [4 x i8], ptr %i.uh, i64 %indvars.iv674
  %i.ul = getelementptr [4 x i8], ptr %i.uk, i64 %i.uj
  %i.um = load i32, ptr %i.ul, align 4, !tbaa !40
  %i.un = sext i32 %i.um to i64
  %i.uo = load ptr, ptr %1, align 8, !tbaa !35
  %i.up = getelementptr inbounds [8 x i8], ptr %i.uo, i64 %i.un
  %i.uq = load double, ptr %i.up, align 8, !tbaa !37
  %i.ur = fcmp olt double %i.uq, %6
  %i.us = trunc i32 %i.rl to i1
  %i.ut = xor i1 %i.ur, %i.us
  %i.uu = sext i32 %.0197595 to i64               ; 5 uses
  %i.uv = load i64, ptr %i.gj, align 8, !tbaa !38 ; 5 uses
  %.not.i433 = icmp sgt i64 %i.uv, %i.uu          ; 2 uses
  br i1 %i.ut, label %bb.cm, label %bb.cr

bb.cm:                                            ; preds = %.loopexit501
  br i1 %.not.i433, label %.critedge273.sink.split, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.uw = shl nsw i64 %i.uv, 1
  %i.ux = or disjoint i64 %i.uw, 1
  %i.uy = load i64, ptr %i.gk, align 8, !tbaa !39
  invoke void @_ZN5Eigen8internal29conservative_resize_like_implINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEES3_Lb0EE3runERNS_9DenseBaseIS3_EEll(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %i.ux, i64 noundef %i.uy)
          to label %.critedge273.sink.split.sink.split unwind label %bb.cq

bb.co:                                            ; preds = %.loopexit.i.i411
  %i.uz = landingpad { ptr, i32 }
          cleanup
  br label %.body287

bb.cp:                                            ; preds = %.loopexit.i.i425
  %i.va = landingpad { ptr, i32 }
          cleanup
  br label %.body287

bb.cq:                                            ; preds = %bb.cs, %bb.cn
  %i.vb = landingpad { ptr, i32 }
          cleanup
  br label %.body287

bb.cr:                                            ; preds = %.loopexit501
  br i1 %.not.i433, label %.critedge273.sink.split, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.vc = shl nsw i64 %i.uv, 1
  %i.vd = or disjoint i64 %i.vc, 1
  %i.ve = load i64, ptr %i.gk, align 8, !tbaa !39
  invoke void @_ZN5Eigen8internal29conservative_resize_like_implINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEES3_Lb0EE3runERNS_9DenseBaseIS3_EEll(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %i.vd, i64 noundef %i.ve)
          to label %.critedge273.sink.split.sink.split unwind label %bb.cq

.critedge273.sink.split.sink.split:               ; preds = %bb.cn, %bb.cs, %bb.bt, %bb.by, %bb.bg, %bb.bl
  %.sink886.ph = phi i64 [ %i.pz, %bb.bt ], [ %i.mn, %bb.bg ], [ %i.mn, %bb.bl ], [ %i.pz, %bb.by ], [ %i.uu, %bb.cs ], [ %i.uu, %bb.cn ]
  %.sink875.sink.ph = phi i32 [ %i.po, %bb.bt ], [ %i.la, %bb.bg ], [ %i.lz, %bb.bl ], [ %i.op, %bb.by ], [ %i.tk, %bb.cs ], [ %i.ui, %bb.cn ]
  %.sink867.sink.ph = phi i32 [ %i.op, %bb.bt ], [ %i.lz, %bb.bg ], [ %i.la, %bb.bl ], [ %i.po, %bb.by ], [ %i.ui, %bb.cs ], [ %i.tk, %bb.cn ]
  %.pre8.i444 = load i64, ptr %i.gj, align 8, !tbaa !38
  br label %.critedge273.sink.split

.critedge273.sink.split:                          ; preds = %.critedge273.sink.split.sink.split, %bb.cm, %bb.cr, %bb.bs, %bb.bx, %bb.bf, %bb.bk
  %.sink886 = phi i64 [ %i.pz, %bb.bs ], [ %i.mn, %bb.bf ], [ %i.uu, %bb.cm ], [ %i.mn, %bb.bk ], [ %i.uu, %bb.cr ], [ %i.pz, %bb.bx ], [ %.sink886.ph, %.critedge273.sink.split.sink.split ]
  %.sink875.sink = phi i32 [ %i.po, %bb.bs ], [ %i.la, %bb.bf ], [ %i.ui, %bb.cm ], [ %i.lz, %bb.bk ], [ %i.tk, %bb.cr ], [ %i.op, %bb.bx ], [ %.sink875.sink.ph, %.critedge273.sink.split.sink.split ]
  %.sink872.sink = phi i64 [ %i.qa, %bb.bs ], [ %i.mo, %bb.bf ], [ %i.uv, %bb.cm ], [ %i.mo, %bb.bk ], [ %i.uv, %bb.cr ], [ %i.qa, %bb.bx ], [ %.pre8.i444, %.critedge273.sink.split.sink.split ]
  %.sink867.sink = phi i32 [ %i.op, %bb.bs ], [ %i.lz, %bb.bf ], [ %i.tk, %bb.cm ], [ %i.la, %bb.bk ], [ %i.ui, %bb.cr ], [ %i.po, %bb.bx ], [ %.sink867.sink.ph, %.critedge273.sink.split.sink.split ]
  %i.vf = load ptr, ptr %9, align 8, !tbaa !17, !noalias !67
  %i.vg = getelementptr inbounds [4 x i8], ptr %i.vf, i64 %.sink886 ; 2 uses
  %i.vh = load i64, ptr %i.gk, align 8, !tbaa !39, !noalias !67
  store i32 %.sink875.sink, ptr %i.vg, align 4, !tbaa !40, !noalias !67
  %.not7.i445 = icmp eq i64 %i.vh, 1              ; 2 uses
  %spec.select6.i446 = zext i1 %.not7.i445 to i64
  %i.vi = select i1 %.not7.i445, i64 0, i64 %.sink872.sink
  %i.vj = getelementptr [4 x i8], ptr %i.vg, i64 %i.vi
  %i.vk = getelementptr [4 x i8], ptr %i.vj, i64 %spec.select6.i446
  store i32 %.sink867.sink, ptr %i.vk, align 4, !tbaa !40
  %.3 = add nsw i32 %.0197595, 1
  br label %.critedge273

.critedge273:                                     ; preds = %bb.cc, %.lr.ph946.1, %bb.cb, %.critedge273.sink.split, %bb.ce, %bb.cd
  %.9 = phi i32 [ %.0197595, %bb.ce ], [ %.0197595, %bb.cd ], [ %.3, %.critedge273.sink.split ], [ %.0197595, %bb.cb ], [ %.0197595, %.lr.ph946.1 ], [ %.0197595, %bb.cc ] ; 2 uses
  %indvars.iv.next675 = add nuw nsw i64 %indvars.iv674, 1 ; 2 uses
  %i.vl = load i64, ptr %i.ay, align 8, !tbaa !38 ; 2 uses
  %i.vm = icmp sgt i64 %i.vl, %indvars.iv.next675
  br i1 %i.vm, label %.preheader504, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge.loopexit, !llvm.loop !119

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE18conservativeResizeElNS_10NoChange_tE.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge
  %i.vn = load ptr, ptr %i.at, align 8, !tbaa !63 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.vn, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i449

.lr.ph.i.i.i.i449:                                ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE18conservativeResizeElNS_10NoChange_tE.exit, %.lr.ph.i.i.i.i449
  %.06.i.i.i.i = phi ptr [ %i.vo, %.lr.ph.i.i.i.i449 ], [ %i.vn, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE18conservativeResizeElNS_10NoChange_tE.exit ] ; 2 uses
  %i.vo = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !64 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 16) #24
  %.not.i.i.i.i450 = icmp eq ptr %i.vo, null
  br i1 %.not.i.i.i.i450, label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i449, !llvm.loop !3

_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i449, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE18conservativeResizeElNS_10NoChange_tE.exit
  %i.vp = load ptr, ptr %12, align 8, !tbaa !58
  %i.vq = load i64, ptr %i.as, align 8, !tbaa !59
  %i.vr = shl i64 %i.vq, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.vp, i8 0, i64 %i.vr, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  %i.vs = load ptr, ptr %12, align 8, !tbaa !58   ; 2 uses
  %i.vt = icmp eq ptr %i.vs, %i.ar
  br i1 %i.vt, label %_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEED2Ev.exit, label %bb.ct

bb.ct:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  %i.vu = load i64, ptr %i.as, align 8, !tbaa !59
  %i.vv = shl i64 %i.vu, 3
  call void @_ZdlPvm(ptr noundef %i.vs, i64 noundef %i.vv) #24
  br label %_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEED2Ev.exit

_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @free(ptr noundef %.sroa.0480.0) #21
  %i.vw = load ptr, ptr %11, align 8, !tbaa !35
  call void @free(ptr noundef %i.vw) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.vx = load ptr, ptr %i.c, align 8, !tbaa !63  ; 2 uses
  %.not5.i.i.i.i451 = icmp eq ptr %i.vx, null
  br i1 %.not5.i.i.i.i451, label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i455, label %.lr.ph.i.i.i.i452

.lr.ph.i.i.i.i452:                                ; preds = %_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEED2Ev.exit, %.lr.ph.i.i.i.i452
  %.06.i.i.i.i453 = phi ptr [ %i.vy, %.lr.ph.i.i.i.i452 ], [ %i.vx, %_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEED2Ev.exit ] ; 2 uses
  %i.vy = load ptr, ptr %.06.i.i.i.i453, align 8, !tbaa !64 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i453, i64 noundef 16) #24
  %.not.i.i.i.i454 = icmp eq ptr %i.vy, null
end_hunk_0
