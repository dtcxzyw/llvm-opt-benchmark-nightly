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
  %.pre = load i64, ptr %i.b, align 8, !tbaa !44  ; 12 uses
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
  %6 = ptrtoaddr ptr %i.tf to i64                 ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !144 ; 3 uses
  %7 = ptrtoaddr ptr %i.th to i64                 ; 2 uses
  %min.iters.check841 = icmp ult i64 %.pre, 12
  br i1 %min.iters.check841, label %scalar.ph840.preheader, label %vector.scevcheck832

vector.scevcheck832:                              ; preds = %.lr.ph495
  %8 = add i64 %.pre, -1                          ; 2 uses
  %9 = and i64 %8, 4294967295
  %10 = icmp eq i64 %9, 4294967295
  %11 = icmp ugt i64 %8, 4294967295
  %12 = or i1 %10, %11
  br i1 %12, label %scalar.ph840.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck832
  %i.ti = sub i64 %i.rs, %i.sa
  %diff.check = icmp ugt i64 %i.ti, -16
  %i.tj = sub i64 %6, %i.rs
  %diff.check833 = icmp ugt i64 %i.tj, -16
  %conflict.rdx = or i1 %diff.check, %diff.check833
  %i.tk = sub i64 %i.rs, %7
  %diff.check834 = icmp ugt i64 %i.tk, -16
  %conflict.rdx835 = or i1 %conflict.rdx, %diff.check834
  %i.tl = sub i64 %6, %i.sa
  %diff.check836 = icmp ugt i64 %i.tl, -16
  %conflict.rdx837 = or i1 %conflict.rdx835, %diff.check836
  %i.tm = sub i64 %7, %i.sa
  %diff.check838 = icmp ugt i64 %i.tm, -16
  %conflict.rdx839 = or i1 %conflict.rdx837, %diff.check838
  br i1 %conflict.rdx839, label %scalar.ph840.preheader, label %vector.ph842

vector.ph842:                                     ; preds = %vector.memcheck
  %n.vec843 = and i64 %.pre, 8589934588           ; 3 uses
  %broadcast.splat845 = shufflevector <2 x double> %i.td, <2 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splat847 = shufflevector <2 x double> %i.td, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vector.body848

vector.body848:                                   ; preds = %vector.body848, %vector.ph842
  %index849 = phi i64 [ 0, %vector.ph842 ], [ %index.next852, %vector.body848 ] ; 5 uses
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.tf, i64 %index849
  %wide.load850 = load <4 x i32>, ptr %i.tn, align 4, !tbaa !8
  %i.to = sitofp <4 x i32> %wide.load850 to <4 x double>
  %i.tp = fmul <4 x double> %broadcast.splat845, %i.to
  %i.tq = fptosi <4 x double> %i.tp to <4 x i32>
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %i.rr, i64 %index849
  store <4 x i32> %i.tq, ptr %i.tr, align 4, !tbaa !8
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %index849
  %wide.load851 = load <4 x i32>, ptr %i.ts, align 4, !tbaa !8
  %i.tt = sitofp <4 x i32> %wide.load851 to <4 x double>
  %i.tu = fmul <4 x double> %broadcast.splat847, %i.tt
  %i.tv = fptosi <4 x double> %i.tu to <4 x i32>
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.rz, i64 %index849
  store <4 x i32> %i.tv, ptr %i.tw, align 4, !tbaa !8
  %index.next852 = add nuw i64 %index849, 4       ; 2 uses
  %i.tx = icmp eq i64 %index.next852, %n.vec843
  br i1 %i.tx, label %middle.block853, label %vector.body848, !llvm.loop !114

middle.block853:                                  ; preds = %vector.body848
  %cmp.n854 = icmp eq i64 %.pre, %n.vec843
  br i1 %cmp.n854, label %._crit_edge496.loopexit, label %scalar.ph840.preheader

scalar.ph840.preheader:                           ; preds = %vector.memcheck, %vector.scevcheck832, %.lr.ph495, %middle.block853
  %indvars.iv549.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck832 ], [ 0, %.lr.ph495 ], [ %n.vec843, %middle.block853 ]
  %i.ty = extractelement <2 x double> %i.td, i64 0
  %i.tz = extractelement <2 x double> %i.td, i64 1
  br label %scalar.ph840

scalar.ph814:                                     ; preds = %scalar.ph814.preheader, %scalar.ph814
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph814 ], [ %indvars.iv.ph, %scalar.ph814.preheader ] ; 3 uses
  %.0142489 = phi i32 [ %spec.select, %scalar.ph814 ], [ %.0142489.ph, %scalar.ph814.preheader ]
  %.0153488 = phi i32 [ %.1154, %scalar.ph814 ], [ %.0153488.ph, %scalar.ph814.preheader ]
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %i.sg, i64 %indvars.iv
  %i.ub = load i32, ptr %i.ua, align 4, !tbaa !8
  %spec.select = call i32 @llvm.smax.i32(i32 %i.ub, i32 %.0142489) ; 2 uses
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.si, i64 %indvars.iv
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !8
  %.1154 = call i32 @llvm.smax.i32(i32 %i.ud, i32 %.0153488) ; 2 uses
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.ue = and i64 %indvars.iv.next, 4294967295
  %i.uf = icmp ugt i64 %.pre, %i.ue
  br i1 %i.uf, label %scalar.ph814, label %.lr.ph495, !llvm.loop !115

._crit_edge496.loopexit:                          ; preds = %scalar.ph840, %middle.block853
  %i.ug = trunc nuw i64 %.pre to i32
  br label %._crit_edge496

._crit_edge496:                                   ; preds = %._crit_edge496.loopexit, %_ZNSt6vectorIiSaIiEE6resizeEm.exit212
  %i.uh = phi i32 [ 0, %_ZNSt6vectorIiSaIiEE6resizeEm.exit212 ], [ %i.ug, %._crit_edge496.loopexit ]
  %i.ui = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !47
  %i.uk = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.ul = load i32, ptr %i.uk, align 8, !tbaa !145
  %i.um = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.un = load i32, ptr %i.um, align 8, !tbaa !146
  %i.uo = load ptr, ptr %4, align 8, !tbaa !58
  %i.up = load ptr, ptr %2, align 8, !tbaa !58
  invoke void @calc_zorder(i32 noundef %i.uh, ptr noundef nonnull %i.rr, ptr noundef nonnull %i.rz, ptr noundef %i.uj, i32 noundef %i.ul, i32 noundef %i.un, ptr noundef nonnull %i.uo, ptr noundef nonnull %i.up)
          to label %bb.at unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit204.thread789

scalar.ph840:                                     ; preds = %scalar.ph840.preheader, %scalar.ph840
  %indvars.iv549 = phi i64 [ %indvars.iv.next550, %scalar.ph840 ], [ %indvars.iv549.ph, %scalar.ph840.preheader ] ; 5 uses
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr %i.tf, i64 %indvars.iv549
  %i.ur = load i32, ptr %i.uq, align 4, !tbaa !8
  %i.us = sitofp i32 %i.ur to double
  %i.ut = fmul double %i.ty, %i.us
  %i.uu = fptosi double %i.ut to i32
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %i.rr, i64 %indvars.iv549
  store i32 %i.uu, ptr %i.uv, align 4, !tbaa !8
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %indvars.iv549
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !8
  %i.uy = sitofp i32 %i.ux to double
  %i.uz = fmul double %i.tz, %i.uy
  %i.va = fptosi double %i.uz to i32
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.rz, i64 %indvars.iv549
  store i32 %i.va, ptr %i.vb, align 4, !tbaa !8
  %indvars.iv.next550 = add i64 %indvars.iv549, 1 ; 2 uses
  %13 = and i64 %indvars.iv.next550, 4294967295
  %14 = icmp samesign ugt i64 %.pre, %13
  br i1 %14, label %scalar.ph840, label %._crit_edge496.loopexit, !llvm.loop !116

bb.at:                                            ; preds = %._crit_edge496
  %i.vc = load i64, ptr %i.b, align 8, !tbaa !44  ; 5 uses
  %i.vd = icmp ugt i64 %i.vc, 2305843009213693951
  br i1 %i.vd, label %bb.au, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i213

bb.au:                                            ; preds = %bb.at
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #19
          to label %.noexc219 unwind label %bb.bf

.noexc219:                                        ; preds = %bb.au
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i213: ; preds = %bb.at
  %.not.i.i.i.i214 = icmp eq i64 %i.vc, 0
  br i1 %.not.i.i.i.i214, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit221, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i213
  %i.ve = shl nuw nsw i64 %i.vc, 2
  %i.vf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ve) #17
          to label %.noexc220 unwind label %bb.bf ; 5 uses

.noexc220:                                        ; preds = %bb.av
  %i.vg = getelementptr inbounds nuw [4 x i8], ptr %i.vf, i64 %i.vc ; 2 uses
  store i32 0, ptr %i.vf, align 4, !tbaa !8
  %i.vh = add nsw i64 %i.vc, -1                   ; 2 uses
  %i.vi = icmp eq i64 %i.vh, 0
  br i1 %i.vi, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit221, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i215

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i215: ; preds = %.noexc220
  %i.vj = getelementptr i8, ptr %i.vf, i64 4
  %.idx.i.i.i.i.i.i.i216 = shl nuw nsw i64 %i.vh, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.vj, i8 0, i64 %.idx.i.i.i.i.i.i.i216, i1 false), !tbaa !8
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit221

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit221:            ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i215, %.noexc220, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i213
  %.sroa.0312.0 = phi ptr [ %i.vf, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i215 ], [ %i.vf, %.noexc220 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i213 ] ; 5 uses
  %.sroa.9.0 = phi ptr [ %i.vg, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i215 ], [ %i.vg, %.noexc220 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i213 ] ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !46
  invoke void @_ZN10MallocPlus20set_memory_attributeEPvi(ptr noundef nonnull align 8 dereferenceable(96) %i.vk, ptr noundef %i.vm, i32 noundef 256)
          to label %bb.aw unwind label %bb.bg

bb.aw:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit221
  %i.vn = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !49
  invoke void @_ZN10MallocPlus20set_memory_attributeEPvi(ptr noundef nonnull align 8 dereferenceable(96) %i.vk, ptr noundef %i.vo, i32 noundef 256)
          to label %bb.ax unwind label %bb.bg

bb.ax:                                            ; preds = %bb.aw
  %i.vp = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !50
  invoke void @_ZN10MallocPlus20set_memory_attributeEPvi(ptr noundef nonnull align 8 dereferenceable(96) %i.vk, ptr noundef %i.vq, i32 noundef 256)
          to label %bb.ay unwind label %bb.bg

bb.ay:                                            ; preds = %bb.ax
  %i.vr = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !48
  invoke void @_ZN10MallocPlus20set_memory_attributeEPvi(ptr noundef nonnull align 8 dereferenceable(96) %i.vk, ptr noundef %i.vs, i32 noundef 256)
          to label %bb.az unwind label %bb.bg

bb.az:                                            ; preds = %bb.ay
  %i.vt = load ptr, ptr %2, align 8, !tbaa !58
  invoke void @_ZN10MallocPlus18memory_reorder_allEPi(ptr noundef nonnull align 8 dereferenceable(96) %i.vk, ptr noundef nonnull %i.vt)
          to label %bb.ba unwind label %bb.bg

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZN4Mesh17memory_reset_ptrsEv(ptr noundef nonnull align 8 dereferenceable(2288) %0)
          to label %bb.bb unwind label %bb.bg

bb.bb:                                            ; preds = %bb.ba
  %i.vu = getelementptr inbounds nuw i8, ptr %0, i64 1416 ; 3 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %0, i64 1424
  %i.vw = load ptr, ptr %i.vv, align 8, !tbaa !140
  %i.vx = load ptr, ptr %i.vu, align 8, !tbaa !141
  %i.vy = ptrtoint ptr %i.vw to i64
  %i.vz = ptrtoint ptr %i.vx to i64
  %i.wa = sub i64 %i.vy, %i.vz
  %i.wb = ashr exact i64 %i.wa, 3
  %i.wc = load i64, ptr %i.b, align 8, !tbaa !44  ; 6 uses
  %.not164 = icmp ult i64 %i.wb, %i.wc
  br i1 %.not164, label %_ZNSt6vectorIdSaIdEED2Ev.exit232, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.wd = icmp ugt i64 %i.wc, 1152921504606846975
  br i1 %i.wd, label %bb.bd, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i222

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #19
          to label %.noexc228 unwind label %bb.bh

.noexc228:                                        ; preds = %bb.bd
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i222: ; preds = %bb.bc
  %.not.i.i.i.i223 = icmp eq i64 %i.wc, 0
  br i1 %.not.i.i.i.i223, label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit230.thread, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i222
  %i.we = shl nuw nsw i64 %i.wc, 3
  %i.wf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.we) #17
          to label %.noexc229 unwind label %bb.bh ; 5 uses

.noexc229:                                        ; preds = %bb.be
  %i.wg = getelementptr inbounds nuw [8 x i8], ptr %i.wf, i64 %i.wc ; 2 uses
  store double 0.000000e+00, ptr %i.wf, align 8, !tbaa !55
  %i.wh = add nsw i64 %i.wc, -1                   ; 2 uses
  %i.wi = icmp eq i64 %i.wh, 0
  br i1 %i.wi, label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit230, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i224

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i224: ; preds = %.noexc229
  %i.wj = getelementptr i8, ptr %i.wf, i64 8
  %.idx.i.i.i.i.i.i.i225 = shl nuw nsw i64 %i.wh, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.wj, i8 0, i64 %.idx.i.i.i.i.i.i.i225, i1 false), !tbaa !55
  br label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit230

_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit230:            ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i224, %.noexc229
  %i.wk = load i64, ptr %i.b, align 8, !tbaa !44  ; 2 uses
  %i.wl = trunc i64 %i.wk to i32
  %i.wm = icmp sgt i32 %i.wl, 0
  br i1 %i.wm, label %.lr.ph498, label %._crit_edge514

_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit230.thread:     ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i222
  %i.wn = load i64, ptr %i.b, align 8, !tbaa !44  ; 2 uses
  %i.wo = trunc i64 %i.wn to i32
  %i.wp = icmp sgt i32 %i.wo, 0
  br i1 %i.wp, label %.lr.ph498, label %_ZNSt6vectorIdSaIdEED2Ev.exit232

.lr.ph498:                                        ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit230.thread, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit230
  %i.wq = phi i64 [ %i.wn, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit230.thread ], [ %i.wk, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit230 ] ; 20 uses
  %.sroa.16.0750 = phi ptr [ null, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit230.thread ], [ %i.wg, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit230 ] ; 2 uses
  %.sroa.0302.0745 = phi ptr [ null, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit230.thread ], [ %i.wf, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit230 ] ; 47 uses
  %.sroa.0302.0745857 = ptrtoaddr ptr %.sroa.0302.0745 to i64 ; 4 uses
  %i.wr = load ptr, ptr %i.vu, align 8, !tbaa !141 ; 7 uses
  %wide.trip.count = and i64 %i.wq, 2147483647    ; 14 uses
  %min.iters.check860 = icmp samesign ult i64 %wide.trip.count, 8
  %i.ws = ptrtoaddr ptr %i.wr to i64
  %i.wt = sub i64 %i.ws, %.sroa.0302.0745857
  %diff.check858 = icmp ugt i64 %i.wt, -32
  %or.cond1048 = select i1 %min.iters.check860, i1 true, i1 %diff.check858
  br i1 %or.cond1048, label %scalar.ph859.preheader, label %vector.ph861

vector.ph861:                                     ; preds = %.lr.ph498
  %n.vec862 = and i64 %i.wq, 2147483644           ; 3 uses
  br label %vector.body863

vector.body863:                                   ; preds = %vector.body863, %vector.ph861
  %index864 = phi i64 [ 0, %vector.ph861 ], [ %index.next867, %vector.body863 ] ; 3 uses
  %i.wu = getelementptr inbounds nuw [8 x i8], ptr %i.wr, i64 %index864 ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 16
  %wide.load865 = load <2 x double>, ptr %i.wu, align 8, !tbaa !55
  %wide.load866 = load <2 x double>, ptr %i.wv, align 8, !tbaa !55
  %i.ww = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0302.0745, i64 %index864 ; 2 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 16
  store <2 x double> %wide.load865, ptr %i.ww, align 8, !tbaa !55
  store <2 x double> %wide.load866, ptr %i.wx, align 8, !tbaa !55
  %index.next867 = add nuw i64 %index864, 4       ; 2 uses
  %i.wy = icmp eq i64 %index.next867, %n.vec862
  br i1 %i.wy, label %middle.block868, label %vector.body863, !llvm.loop !117

middle.block868:                                  ; preds = %vector.body863
  %cmp.n869 = icmp eq i64 %wide.trip.count, %n.vec862
  br i1 %cmp.n869, label %.lr.ph501, label %scalar.ph859.preheader

scalar.ph859.preheader:                           ; preds = %.lr.ph498, %middle.block868
  %indvars.iv553.ph = phi i64 [ 0, %.lr.ph498 ], [ %n.vec862, %middle.block868 ] ; 3 uses
  %xtraiter = and i64 %i.wq, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph859.prol.loopexit, label %scalar.ph859.prol

scalar.ph859.prol:                                ; preds = %scalar.ph859.preheader, %scalar.ph859.prol
  %indvars.iv553.prol = phi i64 [ %indvars.iv.next554.prol, %scalar.ph859.prol ], [ %indvars.iv553.ph, %scalar.ph859.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph859.prol ], [ 0, %scalar.ph859.preheader ]
  %i.wz = getelementptr inbounds nuw [8 x i8], ptr %i.wr, i64 %indvars.iv553.prol
  %i.xa = load double, ptr %i.wz, align 8, !tbaa !55
  %i.xb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0302.0745, i64 %indvars.iv553.prol
  store double %i.xa, ptr %i.xb, align 8, !tbaa !55
  %indvars.iv.next554.prol = add nuw nsw i64 %indvars.iv553.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph859.prol.loopexit, label %scalar.ph859.prol, !llvm.loop !118

scalar.ph859.prol.loopexit:                       ; preds = %scalar.ph859.prol, %scalar.ph859.preheader
  %indvars.iv553.unr = phi i64 [ %indvars.iv553.ph, %scalar.ph859.preheader ], [ %indvars.iv.next554.prol, %scalar.ph859.prol ]
  %i.xc = sub nsw i64 %indvars.iv553.ph, %wide.trip.count
  %i.xd = icmp ugt i64 %i.xc, -4
  br i1 %i.xd, label %.lr.ph501, label %scalar.ph859

.lr.ph501:                                        ; preds = %scalar.ph859.prol.loopexit, %scalar.ph859, %middle.block868
  %i.xe = load ptr, ptr %2, align 8, !tbaa !58    ; 5 uses
  %i.xf = load ptr, ptr %i.vu, align 8, !tbaa !141 ; 5 uses
  %i.xg = add nsw i64 %wide.trip.count, -1        ; 4 uses
  %xtraiter1060 = and i64 %i.wq, 3                ; 3 uses
  %i.xh = icmp ult i64 %i.xg, 3
  br i1 %i.xh, label %.epil.preheader, label %.lr.ph501.new

.lr.ph501.new:                                    ; preds = %.lr.ph501
  %unroll_iter = and i64 %i.wq, 2147483644
  br label %bb.bj
end_hunk_0
