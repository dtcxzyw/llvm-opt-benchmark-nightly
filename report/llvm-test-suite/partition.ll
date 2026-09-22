Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/partition?download=true
inline.NumInlined: 482
inline.NumDeleted: 180
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN4Mesh15partition_cellsEiRSt6vectorIiSaIiEE16partition_method:bb.a
  %i.pk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0316.0707, i64 %i.pj
  %i.pl = load double, ptr %i.pk, align 8, !tbaa !55
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.nh, i64 %indvars.iv.next638.2
  store double %i.pl, ptr %i.pm, align 8, !tbaa !55
  %indvars.iv.next638.3 = add nuw nsw i64 %indvars.iv637, 4 ; 2 uses
  %niter1122.next.3 = add i64 %niter1122, 4       ; 2 uses
  %niter1122.ncmp.3 = icmp eq i64 %niter1122.next.3, %unroll_iter1121
  br i1 %niter1122.ncmp.3, label %.lr.ph536.unr-lcssa, label %bb.al, !llvm.loop !109

.lr.ph538:                                        ; preds = %scalar.ph1016.prol.loopexit, %scalar.ph1016, %middle.block1025
  %i.pn = load ptr, ptr %2, align 8, !tbaa !58    ; 5 uses
  %i.po = getelementptr inbounds nuw i8, ptr %0, i64 1488
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !141 ; 5 uses
  %xtraiter1127 = and i64 %i.hy, 3                ; 3 uses
  %i.pq = icmp ult i64 %i.io, 3
  br i1 %i.pq, label %.epil.preheader1126, label %.lr.ph538.new

.lr.ph538.new:                                    ; preds = %.lr.ph538
  %unroll_iter1131 = and i64 %i.hy, 2147483644
  br label %bb.an

scalar.ph1016:                                    ; preds = %scalar.ph1016.prol.loopexit, %scalar.ph1016
  %indvars.iv643 = phi i64 [ %indvars.iv.next644.3, %scalar.ph1016 ], [ %indvars.iv643.unr, %scalar.ph1016.prol.loopexit ] ; 6 uses
  %i.pr = getelementptr inbounds nuw [8 x i8], ptr %i.oc, i64 %indvars.iv643
  %i.ps = load double, ptr %i.pr, align 8, !tbaa !55
  %i.pt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0316.0707, i64 %indvars.iv643
  store double %i.ps, ptr %i.pt, align 8, !tbaa !55
  %indvars.iv.next644 = add nuw nsw i64 %indvars.iv643, 1 ; 2 uses
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr %i.oc, i64 %indvars.iv.next644
  %i.pv = load double, ptr %i.pu, align 8, !tbaa !55
  %i.pw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0316.0707, i64 %indvars.iv.next644
  store double %i.pv, ptr %i.pw, align 8, !tbaa !55
  %indvars.iv.next644.1 = add nuw nsw i64 %indvars.iv643, 2 ; 2 uses
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %i.oc, i64 %indvars.iv.next644.1
  %i.py = load double, ptr %i.px, align 8, !tbaa !55
  %i.pz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0316.0707, i64 %indvars.iv.next644.1
  store double %i.py, ptr %i.pz, align 8, !tbaa !55
  %indvars.iv.next644.2 = add nuw nsw i64 %indvars.iv643, 3 ; 2 uses
  %i.qa = getelementptr inbounds nuw [8 x i8], ptr %i.oc, i64 %indvars.iv.next644.2
  %i.qb = load double, ptr %i.qa, align 8, !tbaa !55
  %i.qc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0316.0707, i64 %indvars.iv.next644.2
  store double %i.qb, ptr %i.qc, align 8, !tbaa !55
  %indvars.iv.next644.3 = add nuw nsw i64 %indvars.iv643, 4 ; 2 uses
  %exitcond648.not.3 = icmp eq i64 %indvars.iv.next644.3, %wide.trip.count647
  br i1 %exitcond648.not.3, label %.lr.ph538, label %scalar.ph1016, !llvm.loop !110

._crit_edge539.loopexit.unr-lcssa:                ; preds = %bb.an
  %lcmp.mod1129.not = icmp eq i64 %xtraiter1127, 0
  br i1 %lcmp.mod1129.not, label %._crit_edge539, label %.epil.preheader1126

.epil.preheader1126:                              ; preds = %._crit_edge539.loopexit.unr-lcssa, %.lr.ph538
  %indvars.iv649.epil.init = phi i64 [ 0, %.lr.ph538 ], [ %indvars.iv.next650.3, %._crit_edge539.loopexit.unr-lcssa ]
  %lcmp.mod1130 = icmp ne i64 %xtraiter1127, 0
  call void @llvm.assume(i1 %lcmp.mod1130)
  br label %bb.am

bb.am:                                            ; preds = %bb.am, %.epil.preheader1126
  %indvars.iv649.epil = phi i64 [ %indvars.iv649.epil.init, %.epil.preheader1126 ], [ %indvars.iv.next650.epil, %bb.am ] ; 3 uses
  %epil.iter1128 = phi i64 [ 0, %.epil.preheader1126 ], [ %epil.iter1128.next, %bb.am ]
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.pn, i64 %indvars.iv649.epil
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !8
  %i.qf = sext i32 %i.qe to i64
  %i.qg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0316.0707, i64 %i.qf
  %i.qh = load double, ptr %i.qg, align 8, !tbaa !55
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %i.pp, i64 %indvars.iv649.epil
  store double %i.qh, ptr %i.qi, align 8, !tbaa !55
  %indvars.iv.next650.epil = add nuw nsw i64 %indvars.iv649.epil, 1
  %epil.iter1128.next = add i64 %epil.iter1128, 1 ; 2 uses
  %epil.iter1128.cmp.not = icmp eq i64 %epil.iter1128.next, %xtraiter1127
  br i1 %epil.iter1128.cmp.not, label %._crit_edge539, label %bb.am, !llvm.loop !111

._crit_edge539:                                   ; preds = %._crit_edge539.loopexit.unr-lcssa, %bb.am, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit
  %.sroa.16326.0710 = phi ptr [ %i.ho, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit ], [ %.sroa.16326.0712, %bb.am ], [ %.sroa.16326.0712, %._crit_edge539.loopexit.unr-lcssa ]
  %.sroa.0316.0709 = phi ptr [ %i.hn, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit ], [ %.sroa.0316.0707, %bb.am ], [ %.sroa.0316.0707, %._crit_edge539.loopexit.unr-lcssa ] ; 2 uses
  %i.qj = ptrtoint ptr %.sroa.16326.0710 to i64
  %i.qk = ptrtoint ptr %.sroa.0316.0709 to i64
  %i.ql = sub i64 %i.qj, %i.qk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0316.0709, i64 noundef %i.ql) #18
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

bb.an:                                            ; preds = %bb.an, %.lr.ph538.new
  %indvars.iv649 = phi i64 [ 0, %.lr.ph538.new ], [ %indvars.iv.next650.3, %bb.an ] ; 6 uses
  %niter1132 = phi i64 [ 0, %.lr.ph538.new ], [ %niter1132.next.3, %bb.an ]
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %i.pn, i64 %indvars.iv649
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !8
  %i.qo = sext i32 %i.qn to i64
  %i.qp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0316.0707, i64 %i.qo
  %i.qq = load double, ptr %i.qp, align 8, !tbaa !55
  %i.qr = getelementptr inbounds nuw [8 x i8], ptr %i.pp, i64 %indvars.iv649
  store double %i.qq, ptr %i.qr, align 8, !tbaa !55
  %indvars.iv.next650 = or disjoint i64 %indvars.iv649, 1 ; 2 uses
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.pn, i64 %indvars.iv.next650
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !8
  %i.qu = sext i32 %i.qt to i64
  %i.qv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0316.0707, i64 %i.qu
  %i.qw = load double, ptr %i.qv, align 8, !tbaa !55
  %i.qx = getelementptr inbounds nuw [8 x i8], ptr %i.pp, i64 %indvars.iv.next650
  store double %i.qw, ptr %i.qx, align 8, !tbaa !55
  %indvars.iv.next650.1 = or disjoint i64 %indvars.iv649, 2 ; 2 uses
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.pn, i64 %indvars.iv.next650.1
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !8
  %i.ra = sext i32 %i.qz to i64
  %i.rb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0316.0707, i64 %i.ra
  %i.rc = load double, ptr %i.rb, align 8, !tbaa !55
  %i.rd = getelementptr inbounds nuw [8 x i8], ptr %i.pp, i64 %indvars.iv.next650.1
  store double %i.rc, ptr %i.rd, align 8, !tbaa !55
  %indvars.iv.next650.2 = or disjoint i64 %indvars.iv649, 3 ; 2 uses
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %i.pn, i64 %indvars.iv.next650.2
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !8
  %i.rg = sext i32 %i.rf to i64
  %i.rh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0316.0707, i64 %i.rg
  %i.ri = load double, ptr %i.rh, align 8, !tbaa !55
  %i.rj = getelementptr inbounds nuw [8 x i8], ptr %i.pp, i64 %indvars.iv.next650.2
  store double %i.ri, ptr %i.rj, align 8, !tbaa !55
  %indvars.iv.next650.3 = add nuw nsw i64 %indvars.iv649, 4 ; 2 uses
  %niter1132.next.3 = add i64 %niter1132, 4       ; 2 uses
  %niter1132.ncmp.3 = icmp eq i64 %niter1132.next.3, %unroll_iter1131
  br i1 %niter1132.ncmp.3, label %._crit_edge539.loopexit.unr-lcssa, label %bb.an, !llvm.loop !112

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit.thread, %._crit_edge539, %bb.z
  %.not.i.i.i202 = icmp eq ptr %.sroa.0328.0, null
  br i1 %.not.i.i.i202, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %_ZNSt6vectorIiSaIiEED2Ev.exit.sink.split

bb.ao:                                            ; preds = %bb.af, %bb.ae
  %.pn169 = phi { ptr, i32 } [ %i.is, %bb.af ], [ %i.ir, %bb.ae ] ; 2 uses
  %.not.i.i.i203 = icmp eq ptr %.sroa.0328.0, null
  br i1 %.not.i.i.i203, label %.sink.split, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.rk = ptrtoint ptr %.sroa.9331.0 to i64
  %i.rl = ptrtoint ptr %.sroa.0328.0 to i64
  %i.rm = sub i64 %i.rk, %i.rl
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0328.0, i64 noundef %i.rm) #18
  br label %.sink.split

bb.aq:                                            ; preds = %bb.k
  %i.rn = load i32, ptr %i.d, align 4, !tbaa !137
  %.not163 = icmp eq i32 %i.rn, 0
  br i1 %.not163, label %bb.ar, label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.ar:                                            ; preds = %bb.aq
  %i.ro = load i64, ptr %i.b, align 8, !tbaa !44  ; 5 uses
  %.not465 = icmp ne i64 %i.ro, 0
  call void @llvm.assume(i1 %.not465)
  %i.rp = icmp ugt i64 %i.ro, 2305843009213693951
  br i1 %i.rp, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.ar
  %i.rq = shl nuw nsw i64 %i.ro, 2
  %i.rr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rq) #17
          to label %.noexc284 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit204.thread789 ; 15 uses

.noexc284:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  %i.rs = ptrtoaddr ptr %i.rr to i64              ; 3 uses
  store i32 0, ptr %i.rr, align 4, !tbaa !8
  %i.rt = add nsw i64 %i.ro, -1                   ; 2 uses
  %i.ru = icmp eq i64 %i.rt, 0
  br i1 %i.ru, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit208, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc284
  %i.rv = getelementptr i8, ptr %i.rr, i64 4
  %.idx.i.i.i.i.i31.i281 = shl nuw nsw i64 %i.rt, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.rv, i8 0, i64 %.idx.i.i.i.i.i31.i281, i1 false), !tbaa !8
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit208

_ZNSt6vectorIiSaIiEE6resizeEm.exit208:            ; preds = %.noexc284, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.rr, i64 %i.ro ; 8 uses
  %.pr388 = load i64, ptr %i.b, align 8, !tbaa !44 ; 5 uses
  %.not466 = icmp ne i64 %.pr388, 0
  call void @llvm.assume(i1 %.not466)
  %i.rx = icmp ugt i64 %.pr388, 2305843009213693951
  br i1 %i.rx, label %bb.as, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i291

bb.as:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit208
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #19
          to label %.noexc299 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit204.thread789

.noexc299:                                        ; preds = %bb.as
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i291: ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit208
  %i.ry = shl nuw nsw i64 %.pr388, 2
  %i.rz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ry) #17
          to label %.noexc300 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit204.thread789 ; 13 uses

.noexc300:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i291
  %i.sa = ptrtoaddr ptr %i.rz to i64              ; 3 uses
  store i32 0, ptr %i.rz, align 4, !tbaa !8
  %i.sb = add nsw i64 %.pr388, -1                 ; 2 uses
  %i.sc = icmp eq i64 %i.sb, 0
  br i1 %i.sc, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit212, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i293

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i293: ; preds = %.noexc300
  %i.sd = getelementptr i8, ptr %i.rz, i64 4
  %.idx.i.i.i.i.i31.i294 = shl nuw nsw i64 %i.sb, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.sd, i8 0, i64 %.idx.i.i.i.i.i31.i294, i1 false), !tbaa !8
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit212

_ZNSt6vectorIiSaIiEE6resizeEm.exit212:            ; preds = %.noexc300, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i293
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %i.rz, i64 %.pr388 ; 6 uses
  %.pre = load i64, ptr %i.b, align 8, !tbaa !44  ; 11 uses
  %.not543 = icmp eq i64 %.pre, 0
  br i1 %.not543, label %._crit_edge496, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit212
  %i.sf = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !143 ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !144 ; 2 uses
  %min.iters.check815 = icmp ult i64 %.pre, 8
  br i1 %min.iters.check815, label %scalar.ph814.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph
  %i.sj = add i64 %.pre, -1                       ; 2 uses
  %i.sk = and i64 %i.sj, 4294967295
  %i.sl = icmp eq i64 %i.sk, 4294967295
  %i.sm = icmp ugt i64 %i.sj, 4294967295
  %i.sn = or i1 %i.sl, %i.sm
  br i1 %i.sn, label %scalar.ph814.preheader, label %vector.ph816

vector.ph816:                                     ; preds = %vector.scevcheck
  %n.vec817 = and i64 %.pre, 8589934584           ; 3 uses
  br label %vector.body818

vector.body818:                                   ; preds = %vector.body818, %vector.ph816
  %index819 = phi i64 [ 0, %vector.ph816 ], [ %index.next826, %vector.body818 ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph816 ], [ %i.sq, %vector.body818 ]
  %vec.phi820 = phi <4 x i32> [ zeroinitializer, %vector.ph816 ], [ %i.sr, %vector.body818 ]
  %vec.phi821 = phi <4 x i32> [ zeroinitializer, %vector.ph816 ], [ %i.su, %vector.body818 ]
  %vec.phi822 = phi <4 x i32> [ zeroinitializer, %vector.ph816 ], [ %i.sv, %vector.body818 ]
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %i.sg, i64 %index819 ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 16
  %wide.load = load <4 x i32>, ptr %i.so, align 4, !tbaa !8
  %wide.load823 = load <4 x i32>, ptr %i.sp, align 4, !tbaa !8
  %i.sq = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi) ; 2 uses
  %i.sr = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load823, <4 x i32> %vec.phi820) ; 2 uses
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %i.si, i64 %index819 ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 16
  %wide.load824 = load <4 x i32>, ptr %i.ss, align 4, !tbaa !8
  %wide.load825 = load <4 x i32>, ptr %i.st, align 4, !tbaa !8
  %i.su = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load824, <4 x i32> %vec.phi821) ; 2 uses
  %i.sv = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load825, <4 x i32> %vec.phi822) ; 2 uses
  %index.next826 = add nuw i64 %index819, 8       ; 2 uses
  %i.sw = icmp eq i64 %index.next826, %n.vec817
  br i1 %i.sw, label %middle.block827, label %vector.body818, !llvm.loop !113

middle.block827:                                  ; preds = %vector.body818
  %rdx.minmax = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.sq, <4 x i32> %i.sr)
  %i.sx = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %rdx.minmax828 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.su, <4 x i32> %i.sv)
  %i.sy = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax828) ; 2 uses
  %cmp.n829 = icmp eq i64 %.pre, %n.vec817
  br i1 %cmp.n829, label %.lr.ph495, label %scalar.ph814.preheader

scalar.ph814.preheader:                           ; preds = %vector.scevcheck, %.lr.ph, %middle.block827
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %n.vec817, %middle.block827 ]
  %.0142489.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %i.sx, %middle.block827 ]
  %.0153488.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %i.sy, %middle.block827 ]
  br label %scalar.ph814

.lr.ph495:                                        ; preds = %scalar.ph814, %middle.block827
  %spec.select.lcssa = phi i32 [ %i.sx, %middle.block827 ], [ %spec.select, %scalar.ph814 ]
  %.1154.lcssa = phi i32 [ %i.sy, %middle.block827 ], [ %.1154, %scalar.ph814 ]
  %i.sz = uitofp nneg i32 %spec.select.lcssa to double
  %i.ta = uitofp nneg i32 %.1154.lcssa to double
  %i.tb = insertelement <2 x double> poison, double %i.sz, i64 0
  %i.tc = insertelement <2 x double> %i.tb, double %i.ta, i64 1
  %i.td = fdiv nnan <2 x double> splat (double 1.600000e+01), %i.tc ; 4 uses
  %i.te = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !143 ; 3 uses
  %i.tg = ptrtoaddr ptr %i.tf to i64              ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !144 ; 3 uses
  %i.tj = ptrtoaddr ptr %i.ti to i64              ; 2 uses
  %6 = call i64 @llvm.smax.i64(i64 %.pre, i64 1)  ; 2 uses
  %min.iters.check841 = icmp slt i64 %.pre, 12
  br i1 %min.iters.check841, label %scalar.ph840.preheader, label %vector.scevcheck832

vector.scevcheck832:                              ; preds = %.lr.ph495
  %i.tk = add nsw i64 %.pre, -1                   ; 2 uses
  %i.tl = and i64 %i.tk, 4294967295
  %i.tm = icmp eq i64 %i.tl, 4294967295
  %i.tn = icmp ugt i64 %i.tk, 4294967295
  %i.to = or i1 %i.tm, %i.tn
  br i1 %i.to, label %scalar.ph840.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck832
  %i.tp = sub i64 %i.rs, %i.sa
  %diff.check = icmp ugt i64 %i.tp, -16
  %i.tq = sub i64 %i.tg, %i.rs
  %diff.check833 = icmp ugt i64 %i.tq, -16
  %conflict.rdx = or i1 %diff.check, %diff.check833
  %i.tr = sub i64 %i.rs, %i.tj
  %diff.check834 = icmp ugt i64 %i.tr, -16
  %conflict.rdx835 = or i1 %conflict.rdx, %diff.check834
  %i.ts = sub i64 %i.tg, %i.sa
  %diff.check836 = icmp ugt i64 %i.ts, -16
  %conflict.rdx837 = or i1 %conflict.rdx835, %diff.check836
  %i.tt = sub i64 %i.tj, %i.sa
  %diff.check838 = icmp ugt i64 %i.tt, -16
  %conflict.rdx839 = or i1 %conflict.rdx837, %diff.check838
  br i1 %conflict.rdx839, label %scalar.ph840.preheader, label %vector.ph842

vector.ph842:                                     ; preds = %vector.memcheck
  %n.vec843 = and i64 %6, 8589934588              ; 3 uses
  %broadcast.splat845 = shufflevector <2 x double> %i.td, <2 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splat847 = shufflevector <2 x double> %i.td, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vector.body848

vector.body848:                                   ; preds = %vector.body848, %vector.ph842
  %index849 = phi i64 [ 0, %vector.ph842 ], [ %index.next852, %vector.body848 ] ; 5 uses
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %i.tf, i64 %index849
  %wide.load850 = load <4 x i32>, ptr %i.tu, align 4, !tbaa !8
  %i.tv = sitofp <4 x i32> %wide.load850 to <4 x double>
  %i.tw = fmul <4 x double> %broadcast.splat845, %i.tv
  %i.tx = fptosi <4 x double> %i.tw to <4 x i32>
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.rr, i64 %index849
  store <4 x i32> %i.tx, ptr %i.ty, align 4, !tbaa !8
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.ti, i64 %index849
  %wide.load851 = load <4 x i32>, ptr %i.tz, align 4, !tbaa !8
  %i.ua = sitofp <4 x i32> %wide.load851 to <4 x double>
  %i.ub = fmul <4 x double> %broadcast.splat847, %i.ua
  %i.uc = fptosi <4 x double> %i.ub to <4 x i32>
  %i.ud = getelementptr inbounds nuw [4 x i8], ptr %i.rz, i64 %index849
  store <4 x i32> %i.uc, ptr %i.ud, align 4, !tbaa !8
  %index.next852 = add nuw i64 %index849, 4       ; 2 uses
  %i.ue = icmp eq i64 %index.next852, %n.vec843
  br i1 %i.ue, label %middle.block853, label %vector.body848, !llvm.loop !114

middle.block853:                                  ; preds = %vector.body848
  %cmp.n854 = icmp eq i64 %6, %n.vec843
  br i1 %cmp.n854, label %._crit_edge496.loopexit, label %scalar.ph840.preheader

scalar.ph840.preheader:                           ; preds = %vector.memcheck, %vector.scevcheck832, %.lr.ph495, %middle.block853
  %indvars.iv549.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck832 ], [ 0, %.lr.ph495 ], [ %n.vec843, %middle.block853 ]
  %i.uf = extractelement <2 x double> %i.td, i64 0
  %i.ug = extractelement <2 x double> %i.td, i64 1
  br label %scalar.ph840

scalar.ph814:                                     ; preds = %scalar.ph814.preheader, %scalar.ph814
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph814 ], [ %indvars.iv.ph, %scalar.ph814.preheader ] ; 3 uses
  %.0142489 = phi i32 [ %spec.select, %scalar.ph814 ], [ %.0142489.ph, %scalar.ph814.preheader ]
  %.0153488 = phi i32 [ %.1154, %scalar.ph814 ], [ %.0153488.ph, %scalar.ph814.preheader ]
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %i.sg, i64 %indvars.iv
  %i.ui = load i32, ptr %i.uh, align 4, !tbaa !8
  %spec.select = call i32 @llvm.smax.i32(i32 %i.ui, i32 %.0142489) ; 2 uses
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %i.si, i64 %indvars.iv
  %i.uk = load i32, ptr %i.uj, align 4, !tbaa !8
  %.1154 = call i32 @llvm.smax.i32(i32 %i.uk, i32 %.0153488) ; 2 uses
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.ul = and i64 %indvars.iv.next, 4294967295
  %i.um = icmp ugt i64 %.pre, %i.ul
  br i1 %i.um, label %scalar.ph814, label %.lr.ph495, !llvm.loop !115

._crit_edge496.loopexit:                          ; preds = %scalar.ph840, %middle.block853
  %i.un = trunc nuw i64 %.pre to i32
  br label %._crit_edge496

._crit_edge496:                                   ; preds = %._crit_edge496.loopexit, %_ZNSt6vectorIiSaIiEE6resizeEm.exit212
  %i.uo = phi i32 [ 0, %_ZNSt6vectorIiSaIiEE6resizeEm.exit212 ], [ %i.un, %._crit_edge496.loopexit ]
  %i.up = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !47
  %i.ur = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.us = load i32, ptr %i.ur, align 8, !tbaa !145
  %i.ut = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.uu = load i32, ptr %i.ut, align 8, !tbaa !146
  %i.uv = load ptr, ptr %4, align 8, !tbaa !58
  %i.uw = load ptr, ptr %2, align 8, !tbaa !58
  invoke void @calc_zorder(i32 noundef %i.uo, ptr noundef nonnull %i.rr, ptr noundef nonnull %i.rz, ptr noundef %i.uq, i32 noundef %i.us, i32 noundef %i.uu, ptr noundef nonnull %i.uv, ptr noundef nonnull %i.uw)
          to label %bb.at unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit204.thread789

scalar.ph840:                                     ; preds = %scalar.ph840.preheader, %scalar.ph840
  %indvars.iv549 = phi i64 [ %indvars.iv.next550, %scalar.ph840 ], [ %indvars.iv549.ph, %scalar.ph840.preheader ] ; 5 uses
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %i.tf, i64 %indvars.iv549
  %i.uy = load i32, ptr %i.ux, align 4, !tbaa !8
  %i.uz = sitofp i32 %i.uy to double
  %i.va = fmul double %i.uf, %i.uz
  %i.vb = fptosi double %i.va to i32
  %i.vc = getelementptr inbounds nuw [4 x i8], ptr %i.rr, i64 %indvars.iv549
  store i32 %i.vb, ptr %i.vc, align 4, !tbaa !8
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %i.ti, i64 %indvars.iv549
  %i.ve = load i32, ptr %i.vd, align 4, !tbaa !8
  %i.vf = sitofp i32 %i.ve to double
  %i.vg = fmul double %i.ug, %i.vf
  %i.vh = fptosi double %i.vg to i32
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr %i.rz, i64 %indvars.iv549
  store i32 %i.vh, ptr %i.vi, align 4, !tbaa !8
  %indvars.iv.next550 = add i64 %indvars.iv549, 1 ; 2 uses
  %i.vj = and i64 %indvars.iv.next550, 4294967295
  %i.vk = icmp samesign ugt i64 %.pre, %i.vj
  br i1 %i.vk, label %scalar.ph840, label %._crit_edge496.loopexit, !llvm.loop !116

bb.at:                                            ; preds = %._crit_edge496
  %i.vl = load i64, ptr %i.b, align 8, !tbaa !44  ; 5 uses
  %i.vm = icmp ugt i64 %i.vl, 2305843009213693951
  br i1 %i.vm, label %bb.au, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i213

bb.au:                                            ; preds = %bb.at
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #19
          to label %.noexc219 unwind label %bb.bf

.noexc219:                                        ; preds = %bb.au
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i213: ; preds = %bb.at
  %.not.i.i.i.i214 = icmp eq i64 %i.vl, 0
  br i1 %.not.i.i.i.i214, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit221, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i213
  %i.vn = shl nuw nsw i64 %i.vl, 2
  %i.vo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vn) #17
          to label %.noexc220 unwind label %bb.bf ; 5 uses

.noexc220:                                        ; preds = %bb.av
  %i.vp = getelementptr inbounds nuw [4 x i8], ptr %i.vo, i64 %i.vl ; 2 uses
  store i32 0, ptr %i.vo, align 4, !tbaa !8
  %i.vq = add nsw i64 %i.vl, -1                   ; 2 uses
  %i.vr = icmp eq i64 %i.vq, 0
  br i1 %i.vr, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit221, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i215

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i215: ; preds = %.noexc220
  %i.vs = getelementptr i8, ptr %i.vo, i64 4
  %.idx.i.i.i.i.i.i.i216 = shl nuw nsw i64 %i.vq, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.vs, i8 0, i64 %.idx.i.i.i.i.i.i.i216, i1 false), !tbaa !8
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit221

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit221:            ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i215, %.noexc220, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i213
  %.sroa.0312.0 = phi ptr [ %i.vo, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i215 ], [ %i.vo, %.noexc220 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i213 ] ; 5 uses
  %.sroa.9.0 = phi ptr [ %i.vp, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i215 ], [ %i.vp, %.noexc220 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i213 ] ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.vv = load ptr, ptr %i.vu, align 8, !tbaa !46
  invoke void @_ZN10MallocPlus20set_memory_attributeEPvi(ptr noundef nonnull align 8 dereferenceable(96) %i.vt, ptr noundef %i.vv, i32 noundef 256)
          to label %bb.aw unwind label %bb.bg

bb.aw:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit221
  %i.vw = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %i.vx = load ptr, ptr %i.vw, align 8, !tbaa !49
  invoke void @_ZN10MallocPlus20set_memory_attributeEPvi(ptr noundef nonnull align 8 dereferenceable(96) %i.vt, ptr noundef %i.vx, i32 noundef 256)
          to label %bb.ax unwind label %bb.bg

bb.ax:                                            ; preds = %bb.aw
  %i.vy = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.vz = load ptr, ptr %i.vy, align 8, !tbaa !50
  invoke void @_ZN10MallocPlus20set_memory_attributeEPvi(ptr noundef nonnull align 8 dereferenceable(96) %i.vt, ptr noundef %i.vz, i32 noundef 256)
          to label %bb.ay unwind label %bb.bg

bb.ay:                                            ; preds = %bb.ax
  %i.wa = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.wb = load ptr, ptr %i.wa, align 8, !tbaa !48
  invoke void @_ZN10MallocPlus20set_memory_attributeEPvi(ptr noundef nonnull align 8 dereferenceable(96) %i.vt, ptr noundef %i.wb, i32 noundef 256)
          to label %bb.az unwind label %bb.bg

bb.az:                                            ; preds = %bb.ay
  %i.wc = load ptr, ptr %2, align 8, !tbaa !58
  invoke void @_ZN10MallocPlus18memory_reorder_allEPi(ptr noundef nonnull align 8 dereferenceable(96) %i.vt, ptr noundef nonnull %i.wc)
          to label %bb.ba unwind label %bb.bg

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZN4Mesh17memory_reset_ptrsEv(ptr noundef nonnull align 8 dereferenceable(2288) %0)
          to label %bb.bb unwind label %bb.bg

bb.bb:                                            ; preds = %bb.ba
  %i.wd = getelementptr inbounds nuw i8, ptr %0, i64 1416 ; 3 uses
  %i.we = getelementptr inbounds nuw i8, ptr %0, i64 1424
  %i.wf = load ptr, ptr %i.we, align 8, !tbaa !140
  %i.wg = load ptr, ptr %i.wd, align 8, !tbaa !141
  %i.wh = ptrtoint ptr %i.wf to i64
  %i.wi = ptrtoint ptr %i.wg to i64
  %i.wj = sub i64 %i.wh, %i.wi
  %i.wk = ashr exact i64 %i.wj, 3
  %i.wl = load i64, ptr %i.b, align 8, !tbaa !44  ; 6 uses
  %.not164 = icmp ult i64 %i.wk, %i.wl
  br i1 %.not164, label %_ZNSt6vectorIdSaIdEED2Ev.exit232, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.wm = icmp ugt i64 %i.wl, 1152921504606846975
  br i1 %i.wm, label %bb.bd, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i222

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #19
          to label %.noexc228 unwind label %bb.bh

.noexc228:                                        ; preds = %bb.bd
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i222: ; preds = %bb.bc
  %.not.i.i.i.i223 = icmp eq i64 %i.wl, 0
  br i1 %.not.i.i.i.i223, label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit230.thread, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i222
  %i.wn = shl nuw nsw i64 %i.wl, 3
  %i.wo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.wn) #17
          to label %.noexc229 unwind label %bb.bh ; 5 uses

.noexc229:                                        ; preds = %bb.be
  %i.wp = getelementptr inbounds nuw [8 x i8], ptr %i.wo, i64 %i.wl ; 2 uses
  store double 0.000000e+00, ptr %i.wo, align 8, !tbaa !55
  %i.wq = add nsw i64 %i.wl, -1                   ; 2 uses
  %i.wr = icmp eq i64 %i.wq, 0
  br i1 %i.wr, label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit230, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i224

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i224: ; preds = %.noexc229
  %i.ws = getelementptr i8, ptr %i.wo, i64 8
  %.idx.i.i.i.i.i.i.i225 = shl nuw nsw i64 %i.wq, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ws, i8 0, i64 %.idx.i.i.i.i.i.i.i225, i1 false), !tbaa !55
  br label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit230

_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit230:            ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i224, %.noexc229
  %i.wt = load i64, ptr %i.b, align 8, !tbaa !44  ; 2 uses
  %i.wu = trunc i64 %i.wt to i32
  %i.wv = icmp sgt i32 %i.wu, 0
  br i1 %i.wv, label %.lr.ph498, label %._crit_edge514

_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit230.thread:     ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i222
  %i.ww = load i64, ptr %i.b, align 8, !tbaa !44  ; 2 uses
  %i.wx = trunc i64 %i.ww to i32
  %i.wy = icmp sgt i32 %i.wx, 0
  br i1 %i.wy, label %.lr.ph498, label %_ZNSt6vectorIdSaIdEED2Ev.exit232

.lr.ph498:                                        ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit230.thread, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit230
  %i.wz = phi i64 [ %i.ww, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit230.thread ], [ %i.wt, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit230 ] ; 20 uses
  %.sroa.16.0750 = phi ptr [ null, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit230.thread ], [ %i.wp, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit230 ] ; 2 uses
  %.sroa.0302.0745 = phi ptr [ null, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit230.thread ], [ %i.wo, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit230 ] ; 47 uses
  %.sroa.0302.0745857 = ptrtoaddr ptr %.sroa.0302.0745 to i64 ; 4 uses
  %i.xa = load ptr, ptr %i.wd, align 8, !tbaa !141 ; 7 uses
  %wide.trip.count = and i64 %i.wz, 2147483647    ; 14 uses
  %min.iters.check860 = icmp samesign ult i64 %wide.trip.count, 8
  %i.xb = ptrtoaddr ptr %i.xa to i64
  %i.xc = sub i64 %i.xb, %.sroa.0302.0745857
  %diff.check858 = icmp ugt i64 %i.xc, -32
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi:bb.a
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store i32 %i.ch, ptr %.06.i.i.i.i.i.i.i77, align 4, !tbaa !8
  %i.cq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.cq, %i.cg
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !156

_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block148
  %i.cr = icmp sgt i64 %i.cb, 4
  br i1 %i.cr, label %bb.u, label %bb.v, !prof !157

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ce, ptr align 4 %i.bq, i64 %i.cb, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.cs = icmp eq i64 %i.cb, 4
  br i1 %i.cs, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.ct = load i32, ptr %i.bq, align 4, !tbaa !8
  store i32 %i.ct, ptr %i.ce, align 4, !tbaa !8
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %2 ; 3 uses
  %i.cv = sub i64 %i.f, %i.ca                     ; 4 uses
  %i.cw = icmp sgt i64 %i.cv, 4
  br i1 %i.cw, label %bb.x, label %bb.y, !prof !157

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cu, ptr align 4 %1, i64 %i.cv, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.cx = icmp eq i64 %i.cv, 4
  br i1 %i.cx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cy = load i32, ptr %1, align 4, !tbaa !8
  store i32 %i.cy, ptr %i.cu, align 4, !tbaa !8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cz = getelementptr inbounds i8, ptr %i.cu, i64 %i.cv
  %.not.i82 = icmp eq ptr %i.bq, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.da = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.br
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.dc) #18
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.ce, ptr %0, align 8, !tbaa !58
  store ptr %i.cz, ptr %i.c, align 8, !tbaa !57
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.bz
  store ptr %i.dd, ptr %i.a, align 8, !tbaa !61
  br label %_ZSt4fillIPiiEvT_S1_RKT0_.exit

_ZSt4fillIPiiEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block122, %middle.block135, %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !58     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !61
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 4, !tbaa !8
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !8
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !57
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #19
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #17 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i32 0, ptr %i.y, align 4, !tbaa !8
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !8
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !61
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #18
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36: ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !58
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !57
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !61
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { builtin allocsize(0) }
attributes #18 = { builtin nounwind }
attributes #19 = { noreturn }
attributes #20 = { nounwind allocsize(0) }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !45}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!7, !7, i64 0}
!9 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!10 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !9, i64 0}
!11 = !{!"_ZTSSt14_Rb_tree_color", !6, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !12, i64 0}
!14 = !{!"_ZTSSt18_Rb_tree_node_base", !11, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!15 = !{!"long", !6, i64 0}
!16 = !{!"_ZTSSt15_Rb_tree_header", !14, i64 0, !15, i64 32}
!17 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEE", !10, i64 0, !16, i64 8}
!18 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !17, i64 0}
!19 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE", !18, i64 0}
!20 = !{!"_ZTSSt4lessIPvE"}
!21 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIPvEE", !20, i64 0}
!22 = !{!"_ZTSNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE13_Rb_tree_implIS9_Lb1EEE", !21, i64 0, !16, i64 8}
!23 = !{!"_ZTSSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE", !22, i64 0}
!24 = !{!"_ZTSSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE", !23, i64 0}
!25 = !{!"_ZTS10MallocPlus", !19, i64 0, !24, i64 48}
!26 = !{!"bool", !6, i64 0}
!27 = !{!"p1 int", !12, i64 0}
!28 = !{!"float", !6, i64 0}
!29 = !{!"double", !6, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !27, i64 0, !27, i64 8, !27, i64 16}
!31 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !30, i64 0}
!32 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !31, i64 0}
!33 = !{!"_ZTSSt6vectorIiSaIiEE", !32, i64 0}
!34 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!35 = !{!"_ZTS7TVector", !29, i64 0, !29, i64 8}
!36 = !{!"_ZTS7TBounds", !35, i64 0, !35, i64 16}
!37 = !{!"_ZTS7TKDTree", !36, i64 0, !7, i64 32, !7, i64 36, !12, i64 40, !26, i64 48, !7, i64 52, !12, i64 56, !27, i64 64}
!38 = !{!"p1 double", !12, i64 0}
!39 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !38, i64 0, !38, i64 8, !38, i64 16}
!40 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !39, i64 0}
!41 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !40, i64 0}
!42 = !{!"_ZTSSt6vectorIdSaIdEE", !41, i64 0}
!43 = !{!"_ZTS4Mesh", !7, i64 0, !25, i64 8, !25, i64 104, !6, i64 200, !6, i64 392, !6, i64 584, !6, i64 600, !26, i64 616, !26, i64 617, !7, i64 620, !7, i64 624, !7, i64 628, !7, i64 632, !7, i64 636, !27, i64 640, !27, i64 648, !28, i64 656, !29, i64 664, !7, i64 672, !33, i64 680, !33, i64 704, !33, i64 728, !33, i64 752, !34, i64 776, !37, i64 784, !33, i64 856, !33, i64 880, !33, i64 904, !33, i64 928, !33, i64 952, !33, i64 976, !33, i64 1000, !33, i64 1024, !42, i64 1048, !42, i64 1072, !42, i64 1096, !7, i64 1120, !7, i64 1124, !7, i64 1128, !7, i64 1132, !7, i64 1136, !7, i64 1140, !7, i64 1144, !7, i64 1148, !7, i64 1152, !15, i64 1160, !15, i64 1168, !15, i64 1176, !29, i64 1184, !29, i64 1192, !29, i64 1200, !29, i64 1208, !29, i64 1216, !29, i64 1224, !29, i64 1232, !29, i64 1240, !29, i64 1248, !29, i64 1256, !29, i64 1264, !29, i64 1272, !29, i64 1280, !29, i64 1288, !29, i64 1296, !33, i64 1304, !27, i64 1328, !27, i64 1336, !27, i64 1344, !27, i64 1352, !27, i64 1360, !27, i64 1368, !27, i64 1376, !27, i64 1384, !27, i64 1392, !27, i64 1400, !27, i64 1408, !42, i64 1416, !42, i64 1440, !42, i64 1464, !42, i64 1488, !42, i64 1512, !42, i64 1536, !7, i64 1560, !7, i64 1564, !33, i64 1568, !33, i64 1592, !33, i64 1616, !33, i64 1640, !33, i64 1664, !33, i64 1688, !33, i64 1712, !33, i64 1736, !33, i64 1760, !33, i64 1784, !33, i64 1808, !33, i64 1832, !33, i64 1856, !33, i64 1880, !33, i64 1904, !33, i64 1928, !33, i64 1952, !33, i64 1976, !33, i64 2000, !33, i64 2024, !33, i64 2048, !33, i64 2072, !33, i64 2096, !33, i64 2120, !33, i64 2144, !33, i64 2168, !33, i64 2192, !33, i64 2216, !33, i64 2240, !33, i64 2264}
!44 = !{!43, !15, i64 1160}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!43, !27, i64 1368}
!47 = !{!43, !27, i64 1352}
!48 = !{!43, !27, i64 1392}
!49 = !{!43, !27, i64 1376}
!50 = !{!43, !27, i64 1384}
!51 = !{!"p1 _ZTSNSt8__detail15_List_node_baseE", !12, i64 0}
!52 = !{!"_ZTSNSt8__detail15_List_node_baseE", !51, i64 0, !51, i64 8}
!53 = !{!52, !51, i64 8}
!54 = !{!52, !51, i64 0}
!55 = !{!29, !29, i64 0}
!56 = !{!43, !7, i64 620}
!57 = !{!30, !27, i64 8}
!58 = !{!30, !27, i64 0}
!59 = !{!"llvm.loop.isvectorized", i32 1}
!60 = !{!"llvm.loop.unroll.runtime.disable"}
!61 = !{!30, !27, i64 16}
!62 = distinct !{!62, !45}
!63 = distinct !{!63, !45}
!64 = distinct !{!64, !45}
!65 = distinct !{!65, !45}
!66 = distinct !{!66, !45}
!67 = distinct !{!67, !45}
!68 = distinct !{!68, !45}
!69 = distinct !{!69, !45}
!70 = distinct !{!70, !45}
!71 = distinct !{!71, !45}
!72 = !{!"_ZTSNSt8__detail17_List_node_headerE", !52, i64 0, !15, i64 16}
!73 = !{!72, !15, i64 16}
!74 = !{!"_ZTSNSt7__cxx1110_List_baseIiSaIiEE10_List_implE", !72, i64 0}
!75 = !{!"_ZTSNSt7__cxx1110_List_baseIiSaIiEEE", !74, i64 0}
!76 = !{!75, !15, i64 16}
!77 = distinct !{!77, !45}
!78 = distinct !{!78, !45}
!79 = distinct !{!79, !45}
!80 = !{!43, !7, i64 624}
!81 = !{!43, !29, i64 664}
!82 = !{!26, !26, i64 0}
!83 = !{i8 0, i8 2}
!84 = !{}
!85 = distinct !{!85, !45, !59, !60}
!86 = distinct !{!86, !45, !60, !59}
!87 = distinct !{!87, !45, !59, !60}
!88 = distinct !{!88, !45, !59}
!89 = distinct !{!89, !45, !59, !60}
!90 = distinct !{!90, !45, !59}
!91 = distinct !{!91, !45, !59, !60}
!92 = distinct !{!92, !45, !59}
!93 = distinct !{!93, !45, !59, !60}
!94 = distinct !{!94, !142}
!95 = distinct !{!95, !45, !59}
!96 = distinct !{!96, !142}
!97 = distinct !{!97, !45, !59, !60}
!98 = distinct !{!98, !142}
!99 = distinct !{!99, !45}
!100 = distinct !{!100, !45, !59}
!101 = distinct !{!101, !142}
!102 = distinct !{!102, !45, !59, !60}
!103 = distinct !{!103, !142}
!104 = distinct !{!104, !45}
!105 = distinct !{!105, !45, !59}
!106 = distinct !{!106, !142}
!107 = distinct !{!107, !45, !59, !60}
!108 = distinct !{!108, !142}
!109 = distinct !{!109, !45}
!110 = distinct !{!110, !45, !59}
!111 = distinct !{!111, !142}
!112 = distinct !{!112, !45}
!113 = distinct !{!113, !45, !59, !60}
!114 = distinct !{!114, !45, !59, !60}
!115 = distinct !{!115, !45, !59}
!116 = distinct !{!116, !45, !59}
!117 = distinct !{!117, !45, !59, !60}
!118 = distinct !{!118, !142}
!119 = distinct !{!119, !45, !59}
!120 = distinct !{!120, !142}
!121 = distinct !{!121, !45, !59, !60}
!122 = distinct !{!122, !142}
!123 = distinct !{!123, !45}
!124 = distinct !{!124, !45, !59}
!125 = distinct !{!125, !142}
!126 = distinct !{!126, !45, !59, !60}
!127 = distinct !{!127, !142}
!128 = distinct !{!128, !45}
!129 = distinct !{!129, !45, !59}
!130 = distinct !{!130, !142}
!131 = distinct !{!131, !45, !59, !60}
!132 = distinct !{!132, !142}
!133 = distinct !{!133, !45}
!134 = distinct !{!134, !45, !59}
!135 = distinct !{!135, !142}
!136 = distinct !{!136, !45}
!137 = !{!43, !7, i64 628}
!138 = !{!43, !7, i64 636}
!139 = !{!15, !15, i64 0}
!140 = !{!39, !38, i64 8}
!141 = !{!39, !38, i64 0}
!142 = !{!"llvm.loop.unroll.disable"}
!143 = !{!43, !27, i64 1328}
!144 = !{!43, !27, i64 1336}
!145 = !{!43, !7, i64 1120}
!146 = !{!43, !7, i64 1128}
!147 = distinct !{!147, !45, !59, !60}
!148 = distinct !{!148, !45, !60, !59}
!149 = distinct !{!149, !45, !59, !60}
!150 = distinct !{!150, !45, !60, !59}
!151 = distinct !{!151, !45, !59, !60}
!152 = distinct !{!152, !45, !60, !59}
!153 = distinct !{!153, !45, !59, !60}
!154 = distinct !{!154, !45, !60, !59}
!155 = distinct !{!155, !45, !59, !60}
!156 = distinct !{!156, !45, !60, !59}
!157 = !{!"branch_weights", !"expected", i32 2000, i32 1}
end_hunk_1
