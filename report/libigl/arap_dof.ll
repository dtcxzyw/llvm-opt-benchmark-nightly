Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/arap_dof?download=true
inline.NumInlined: 10962
inline.NumDeleted: 4749
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 139
loop-unroll.NumUnrolled: 154
begin_hunk_0_@_ZN3igl15arap_dof_updateIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEdEEbRKNS_11ArapDOFDataIT_T0_EERKNS2_IdLin1ELi1ELi0ELin1ELi1EEERKS3_idRS3_:bb.a
  %cmp.n890 = icmp eq i64 %n.vec883, %i.ow
  %xtraiter958 = and i64 %i.ow, 1
  %lcmp.mod959.not = icmp eq i64 %xtraiter958, 0
  %i.pd = add nsw i64 %i.ow, -1
  br label %.preheader5.i

.preheader5.i:                                    ; preds = %._crit_edge8.i, %.preheader5.preheader.i
  %indvars.iv20.i = phi i64 [ 0, %.preheader5.preheader.i ], [ %indvars.iv.next21.i, %._crit_edge8.i ] ; 6 uses
  %i.pe = shl nuw nsw i64 %indvars.iv20.i, 3
  %i.pf = add i64 %i.oy, %i.pe
  %invariant.gep.i = getelementptr [8 x i8], ptr %.val137, i64 %indvars.iv20.i
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader5.i
  %indvars.iv15.i = phi i64 [ 0, %.preheader5.i ], [ %indvars.iv.next16.i, %._crit_edge.i ] ; 5 uses
  %i.pg = mul nuw nsw i64 %indvars.iv15.i, %i.ov  ; 2 uses
  %i.ph = mul nuw nsw i64 %i.pg, %i.ow
  %i.pi = add nuw i64 %i.ph, %indvars.iv20.i      ; 2 uses
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.pg ; 4 uses
  %i.pj = trunc nuw i64 %i.pi to i32              ; 3 uses
  br i1 %min.iters.check881, label %scalar.ph880.preheader, label %vector.scevcheck872

vector.scevcheck872:                              ; preds = %.preheader.i
  %i.pk = mul i64 %indvars.iv15.i, %i.ow
  %i.pl = add i64 %indvars.iv20.i, %i.pk
  %sext906 = shl i64 %i.pl, 32
  %i.pm = ashr exact i64 %sext906, 29
  %i.pn = mul i64 %i.oz, %indvars.iv15.i
  %i.po = add i64 %i.pf, %i.pn
  %i.pp = mul i64 %indvars.iv15.i, %i.ow
  %i.pq = add i64 %indvars.iv20.i, %i.pp
  %i.pr = trunc i64 %i.pq to i32                  ; 2 uses
  %i.ps = add i32 %i.pr, %i.pa
  %i.pt = icmp slt i32 %i.ps, %i.pr
  %.reass = or i1 %i.pt, %invariant.op
  %i.pu = sub i64 %i.pm, %i.po
  %diff.check879 = icmp ugt i64 %i.pu, -32
  %or.cond912 = select i1 %.reass, i1 true, i1 %diff.check879
  br i1 %or.cond912, label %scalar.ph880.preheader, label %vector.body884

vector.body884:                                   ; preds = %vector.scevcheck872, %vector.body884
  %index885 = phi i64 [ %index.next888, %vector.body884 ], [ 0, %vector.scevcheck872 ] ; 3 uses
  %i.pv = add i64 %index885, %i.pi
  %sext907 = shl i64 %i.pv, 32
  %i.pw = ashr exact i64 %sext907, 29
  %i.px = getelementptr i8, ptr %.val, i64 %i.pw  ; 2 uses
  %i.py = getelementptr i8, ptr %i.px, i64 16
  %wide.load886 = load <2 x double>, ptr %i.px, align 8, !tbaa !46
  %wide.load887 = load <2 x double>, ptr %i.py, align 8, !tbaa !46
  %i.pz = getelementptr [8 x i8], ptr %gep.i, i64 %index885 ; 2 uses
  %i.qa = getelementptr i8, ptr %i.pz, i64 16
  store <2 x double> %wide.load886, ptr %i.pz, align 8, !tbaa !46
  store <2 x double> %wide.load887, ptr %i.qa, align 8, !tbaa !46
  %index.next888 = add nuw i64 %index885, 4       ; 2 uses
  %i.qb = icmp eq i64 %index.next888, %n.vec883
  br i1 %i.qb, label %middle.block889, label %vector.body884, !llvm.loop !95

middle.block889:                                  ; preds = %vector.body884
  br i1 %cmp.n890, label %._crit_edge.i, label %scalar.ph880.preheader

scalar.ph880.preheader:                           ; preds = %vector.scevcheck872, %.preheader.i, %middle.block889
  %indvars.iv.i.ph = phi i64 [ 0, %vector.scevcheck872 ], [ 0, %.preheader.i ], [ %n.vec883, %middle.block889 ] ; 5 uses
  br i1 %lcmp.mod959.not, label %scalar.ph880.prol.loopexit, label %scalar.ph880.prol

scalar.ph880.prol:                                ; preds = %scalar.ph880.preheader
  %i.qc = trunc nuw nsw i64 %indvars.iv.i.ph to i32
  %i.qd = mul i32 %i.oq, %i.qc
  %i.qe = add i32 %i.qd, %i.pj
  %i.qf = sext i32 %i.qe to i64
  %i.qg = getelementptr [8 x i8], ptr %.val, i64 %i.qf
  %i.qh = load double, ptr %i.qg, align 8, !tbaa !46
  %i.qi = mul nsw i64 %indvars.iv.i.ph, %.val138
  %i.qj = getelementptr [8 x i8], ptr %gep.i, i64 %i.qi
  store double %i.qh, ptr %i.qj, align 8, !tbaa !46
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %scalar.ph880.prol.loopexit

scalar.ph880.prol.loopexit:                       ; preds = %scalar.ph880.prol, %scalar.ph880.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph880.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph880.prol ]
  %i.qk = icmp eq i64 %indvars.iv.i.ph, %i.pd
  br i1 %i.qk, label %._crit_edge.i, label %scalar.ph880

._crit_edge8.i:                                   ; preds = %._crit_edge.i
  %indvars.iv.next21.i = add nuw nsw i64 %indvars.iv20.i, 1 ; 2 uses
  %exitcond24.not.i = icmp eq i64 %indvars.iv.next21.i, %i.ov
  br i1 %exitcond24.not.i, label %.loopexit, label %.preheader5.i, !llvm.loop !96

._crit_edge.i:                                    ; preds = %scalar.ph880.prol.loopexit, %scalar.ph880, %middle.block889
  %indvars.iv.next16.i = add nuw nsw i64 %indvars.iv15.i, 1 ; 2 uses
  %exitcond19.not.i = icmp eq i64 %indvars.iv.next16.i, %wide.trip.count18.i
  br i1 %exitcond19.not.i, label %._crit_edge8.i, label %.preheader.i, !llvm.loop !97

scalar.ph880:                                     ; preds = %scalar.ph880.prol.loopexit, %scalar.ph880
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %scalar.ph880 ], [ %indvars.iv.i.unr, %scalar.ph880.prol.loopexit ] ; 4 uses
  %i.ql = trunc i64 %indvars.iv.i to i32
  %i.qm = mul i32 %i.oq, %i.ql
  %i.qn = add i32 %i.qm, %i.pj
  %i.qo = sext i32 %i.qn to i64
  %i.qp = getelementptr [8 x i8], ptr %.val, i64 %i.qo
  %i.qq = load double, ptr %i.qp, align 8, !tbaa !46
  %i.qr = mul nsw i64 %indvars.iv.i, %.val138
  %i.qs = getelementptr [8 x i8], ptr %gep.i, i64 %i.qr
  store double %i.qq, ptr %i.qs, align 8, !tbaa !46
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.qt = trunc i64 %indvars.iv.next.i to i32
  %i.qu = mul i32 %i.oq, %i.qt
  %i.qv = add i32 %i.qu, %i.pj
  %i.qw = sext i32 %i.qv to i64
  %i.qx = getelementptr [8 x i8], ptr %.val, i64 %i.qw
  %i.qy = load double, ptr %i.qx, align 8, !tbaa !46
  %i.qz = mul nsw i64 %indvars.iv.next.i, %.val138
  %i.ra = getelementptr [8 x i8], ptr %gep.i, i64 %i.qz
  store double %i.qy, ptr %i.ra, align 8, !tbaa !46
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %i.ow
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph880, !llvm.loop !98

.loopexit:                                        ; preds = %._crit_edge8.i, %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #25
  store ptr %i.na, ptr %29, align 8
  store ptr %21, ptr %i.nb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  invoke void @_ZN5Eigen8internal15call_assignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductIS3_S3_Li0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NS0_9enable_ifIXsr25evaluator_assume_aliasingISA_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef null)
          to label %bb.be unwind label %bb.bg

bb.be:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #25
  %i.rb = load i8, ptr %i.my, align 8, !tbaa !93, !range !94, !noundef !64
  %i.rc = trunc nuw i8 %i.rb to i1
  br i1 %i.rc, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %bb.be
  %i.rd = invoke noundef double @_ZN3igl11get_secondsEv()
          to label %bb.bh unwind label %.loopexit586 ; 0 uses

bb.bg:                                            ; preds = %.loopexit
  %i.re = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #25
  br label %.body187

bb.bh:                                            ; preds = %bb.bf, %bb.be
  %i.rf = load i32, ptr %i.nc, align 4, !tbaa !99
  %i.rg = icmp eq i32 %i.rf, 2
  br i1 %i.rg, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZN3igl20fit_rotations_planarIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %bb.bk unwind label %.loopexit586

bb.bj:                                            ; preds = %bb.bh
  invoke void @_ZN3igl17fit_rotations_SSEERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERS2_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %bb.bk unwind label %.loopexit586

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.rh = load i8, ptr %i.my, align 8, !tbaa !93, !range !94, !noundef !64
  %i.ri = trunc nuw i8 %i.rh to i1
  br i1 %i.ri, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.rj = invoke noundef double @_ZN3igl11get_secondsEv()
          to label %bb.bm unwind label %.loopexit586 ; 0 uses

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  invoke void @_ZN3igl9columnizeIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EEiiRNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %16, i32 noundef %i.i, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(16) %17)
          to label %bb.bn unwind label %.loopexit586

bb.bn:                                            ; preds = %bb.bm
  %i.rk = load i32, ptr %i.e, align 8, !tbaa !17  ; 3 uses
  %.val139 = load ptr, ptr %17, align 8           ; 5 uses
  %.val139858 = ptrtoaddr ptr %.val139 to i64
  %.val140 = load ptr, ptr %26, align 8           ; 2 uses
  %.val140857 = ptrtoaddr ptr %.val140 to i64
  %.val141 = load i64, ptr %i.ll, align 8         ; 4 uses
  %i.rl = icmp slt i32 %i.rk, 1
  %or.cond = select i1 %i.nd, i1 true, i1 %i.rl
  br i1 %or.cond, label %_ZN3iglL12splitColumnsIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS2_IdLin1ELin1ELi0ELin1ELin1EEEEEvRKT_iiiRT0_.exit, label %.preheader3.preheader.i

.preheader3.preheader.i:                          ; preds = %bb.bn
  %i.rm = zext nneg i32 %i.rk to i64              ; 10 uses
  %i.rn = add nsw i64 %i.rm, -1                   ; 2 uses
  %i.ro = shl nuw nsw i64 %i.rm, 3
  %i.rp = shl nuw nsw i64 %i.rm, 3
  %min.iters.check861 = icmp ult i32 %i.rk, 26
  %ident.check854 = icmp ne i64 %.val141, 1
  %i.rq = trunc nsw i64 %i.rn to i35
  %mul.result = shl nsw i35 %i.rq, 3
  %mul.overflow = icmp ugt i64 %i.rn, 4294967295
  %i.rr = or i1 %ident.check854, %ident.check855
  %invariant.op999 = or i1 %mul.overflow, %i.rr
  %n.vec863 = and i64 %i.rm, 2147483644           ; 3 uses
  %cmp.n870 = icmp eq i64 %n.vec863, %i.rm
  %xtraiter961 = and i64 %i.rm, 1
  %lcmp.mod962.not = icmp eq i64 %xtraiter961, 0
  %i.rs = add nsw i64 %i.rm, -1
  br label %.preheader3.i

.preheader3.i:                                    ; preds = %._crit_edge6.i, %.preheader3.preheader.i
  %indvars.iv18.i = phi i64 [ 0, %.preheader3.preheader.i ], [ %indvars.iv.next19.i, %._crit_edge6.i ] ; 5 uses
  %i.rt = shl nuw i64 %indvars.iv18.i, 3          ; 2 uses
  %i.ru = add i64 %i.rt, %.val140857
  %i.rv = shl nuw i64 %indvars.iv18.i, 3
  %invariant.gep.i192 = getelementptr [8 x i8], ptr %.val140, i64 %indvars.iv18.i
  br label %.preheader.i193

.preheader.i193:                                  ; preds = %._crit_edge.i198, %.preheader3.i
  %indvars.iv13.i = phi i64 [ 0, %.preheader3.i ], [ %indvars.iv.next14.i, %._crit_edge.i198 ] ; 5 uses
  %i.rw = mul nuw nsw i64 %indvars.iv13.i, %i.ne  ; 2 uses
  %i.rx = mul nuw nsw i64 %i.rw, %i.rm
  %i.ry = add nuw i64 %i.rx, %indvars.iv18.i      ; 4 uses
  %gep.i194 = getelementptr [8 x i8], ptr %invariant.gep.i192, i64 %i.rw ; 4 uses
  br i1 %min.iters.check861, label %scalar.ph860.preheader, label %vector.scevcheck853

vector.scevcheck853:                              ; preds = %.preheader.i193
  %i.rz = mul i64 %i.rp, %indvars.iv13.i
  %i.sa = add i64 %i.rt, %i.rz
  %sext908 = shl i64 %i.sa, 29
  %i.sb = ashr exact i64 %sext908, 29
  %i.sc = add i64 %i.sb, %.val139858
  %i.sd = mul i64 %i.oi, %indvars.iv13.i
  %i.se = add i64 %i.ru, %i.sd
  %i.sf = mul i64 %i.ro, %indvars.iv13.i
  %i.sg = add i64 %i.rv, %i.sf
  %i.sh = trunc i64 %i.sg to i35                  ; 2 uses
  %i.si = add i35 %mul.result, %i.sh
  %i.sj = icmp slt i35 %i.si, %i.sh
  %.reass1000 = or i1 %i.sj, %invariant.op999
  %i.sk = sub i64 %i.sc, %i.se
  %diff.check859 = icmp ugt i64 %i.sk, -32
  %or.cond913 = select i1 %.reass1000, i1 true, i1 %diff.check859
  br i1 %or.cond913, label %scalar.ph860.preheader, label %vector.body864

vector.body864:                                   ; preds = %vector.scevcheck853, %vector.body864
  %index865 = phi i64 [ %index.next868, %vector.body864 ], [ 0, %vector.scevcheck853 ] ; 3 uses
  %i.sl = add i64 %i.ry, %index865
  %i.sm = shl i64 %i.sl, 32
  %i.sn = ashr exact i64 %i.sm, 29
  %i.so = getelementptr i8, ptr %.val139, i64 %i.sn ; 2 uses
  %i.sp = getelementptr i8, ptr %i.so, i64 16
  %wide.load866 = load <2 x double>, ptr %i.so, align 8, !tbaa !46
  %wide.load867 = load <2 x double>, ptr %i.sp, align 8, !tbaa !46
  %i.sq = getelementptr [8 x i8], ptr %gep.i194, i64 %index865 ; 2 uses
  %i.sr = getelementptr i8, ptr %i.sq, i64 16
  store <2 x double> %wide.load866, ptr %i.sq, align 8, !tbaa !46
  store <2 x double> %wide.load867, ptr %i.sr, align 8, !tbaa !46
  %index.next868 = add nuw i64 %index865, 4       ; 2 uses
  %i.ss = icmp eq i64 %index.next868, %n.vec863
  br i1 %i.ss, label %middle.block869, label %vector.body864, !llvm.loop !100

middle.block869:                                  ; preds = %vector.body864
  br i1 %cmp.n870, label %._crit_edge.i198, label %scalar.ph860.preheader

scalar.ph860.preheader:                           ; preds = %vector.scevcheck853, %.preheader.i193, %middle.block869
  %indvars.iv.i195.ph = phi i64 [ 0, %vector.scevcheck853 ], [ 0, %.preheader.i193 ], [ %n.vec863, %middle.block869 ] ; 5 uses
  br i1 %lcmp.mod962.not, label %scalar.ph860.prol.loopexit, label %scalar.ph860.prol

scalar.ph860.prol:                                ; preds = %scalar.ph860.preheader
  %i.st = mul i64 %indvars.iv.i195.ph, %i.h
  %i.su = add i64 %i.ry, %i.st
  %sext.prol = shl i64 %i.su, 32
  %i.sv = ashr exact i64 %sext.prol, 29
  %i.sw = getelementptr i8, ptr %.val139, i64 %i.sv
  %i.sx = load double, ptr %i.sw, align 8, !tbaa !46
  %i.sy = mul nsw i64 %indvars.iv.i195.ph, %.val141
  %i.sz = getelementptr [8 x i8], ptr %gep.i194, i64 %i.sy
  store double %i.sx, ptr %i.sz, align 8, !tbaa !46
  %indvars.iv.next.i196.prol = or disjoint i64 %indvars.iv.i195.ph, 1
  br label %scalar.ph860.prol.loopexit

scalar.ph860.prol.loopexit:                       ; preds = %scalar.ph860.prol, %scalar.ph860.preheader
  %indvars.iv.i195.unr = phi i64 [ %indvars.iv.i195.ph, %scalar.ph860.preheader ], [ %indvars.iv.next.i196.prol, %scalar.ph860.prol ]
  %i.ta = icmp eq i64 %indvars.iv.i195.ph, %i.rs
  br i1 %i.ta, label %._crit_edge.i198, label %scalar.ph860

._crit_edge6.i:                                   ; preds = %._crit_edge.i198
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1 ; 2 uses
  %exitcond22.not.i = icmp eq i64 %indvars.iv.next19.i, %i.ne
  br i1 %exitcond22.not.i, label %_ZN3iglL12splitColumnsIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS2_IdLin1ELin1ELi0ELin1ELin1EEEEEvRKT_iiiRT0_.exit, label %.preheader3.i, !llvm.loop !101

._crit_edge.i198:                                 ; preds = %scalar.ph860.prol.loopexit, %scalar.ph860, %middle.block869
  %indvars.iv.next14.i = add nuw nsw i64 %indvars.iv13.i, 1 ; 2 uses
  %exitcond17.not.i = icmp eq i64 %indvars.iv.next14.i, %i.rm
  br i1 %exitcond17.not.i, label %._crit_edge6.i, label %.preheader.i193, !llvm.loop !102

scalar.ph860:                                     ; preds = %scalar.ph860.prol.loopexit, %scalar.ph860
  %indvars.iv.i195 = phi i64 [ %indvars.iv.next.i196.1, %scalar.ph860 ], [ %indvars.iv.i195.unr, %scalar.ph860.prol.loopexit ] ; 4 uses
  %i.tb = mul i64 %indvars.iv.i195, %i.h
  %i.tc = add i64 %i.ry, %i.tb
  %sext = shl i64 %i.tc, 32
  %i.td = ashr exact i64 %sext, 29
  %i.te = getelementptr i8, ptr %.val139, i64 %i.td
  %i.tf = load double, ptr %i.te, align 8, !tbaa !46
  %i.tg = mul nsw i64 %indvars.iv.i195, %.val141
  %i.th = getelementptr [8 x i8], ptr %gep.i194, i64 %i.tg
  store double %i.tf, ptr %i.th, align 8, !tbaa !46
  %indvars.iv.next.i196 = add nuw nsw i64 %indvars.iv.i195, 1 ; 2 uses
  %i.ti = mul i64 %indvars.iv.next.i196, %i.h
  %i.tj = add i64 %i.ry, %i.ti
  %sext.1 = shl i64 %i.tj, 32
  %i.tk = ashr exact i64 %sext.1, 29
  %i.tl = getelementptr i8, ptr %.val139, i64 %i.tk
  %i.tm = load double, ptr %i.tl, align 8, !tbaa !46
  %i.tn = mul nsw i64 %indvars.iv.next.i196, %.val141
  %i.to = getelementptr [8 x i8], ptr %gep.i194, i64 %i.tn
  store double %i.tm, ptr %i.to, align 8, !tbaa !46
  %indvars.iv.next.i196.1 = add nuw nsw i64 %indvars.iv.i195, 2 ; 2 uses
  %exitcond.not.i197.1 = icmp eq i64 %indvars.iv.next.i196.1, %i.rm
  br i1 %exitcond.not.i197.1, label %._crit_edge.i198, label %scalar.ph860, !llvm.loop !103

_ZN3iglL12splitColumnsIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS2_IdLin1ELin1ELi0ELin1ELin1EEEEEvRKT_iiiRT0_.exit: ; preds = %._crit_edge6.i, %bb.bn
  %i.tp = load i8, ptr %i.my, align 8, !tbaa !93, !range !94, !noundef !64
  %i.tq = trunc nuw i8 %i.tp to i1
  br i1 %i.tq, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %_ZN3iglL12splitColumnsIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS2_IdLin1ELin1ELi0ELin1ELin1EEEEEvRKT_iiiRT0_.exit
  %i.tr = invoke noundef double @_ZN3igl11get_secondsEv()
          to label %bb.bp unwind label %.loopexit586 ; 0 uses

bb.bp:                                            ; preds = %_ZN3iglL12splitColumnsIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS2_IdLin1ELin1ELi0ELin1ELin1EEEEEvRKT_iiiRT0_.exit, %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #25
  store ptr %i.nf, ptr %30, align 8
  store ptr %26, ptr %i.ng, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  invoke void @_ZN5Eigen8internal15call_assignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductIS3_S3_Li0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NS0_9enable_ifIXsr25evaluator_assume_aliasingISA_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef null)
          to label %bb.bq unwind label %bb.co

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #25
  %i.ts = load i32, ptr %i.fn, align 4, !tbaa !70 ; 7 uses
  %i.tt = load i32, ptr %i.e, align 8, !tbaa !17  ; 5 uses
  %i.tu = add nsw i32 %i.tt, 1                    ; 2 uses
  %.val142 = load ptr, ptr %27, align 8           ; 2 uses
  %.val143 = load i64, ptr %i.md, align 8         ; 4 uses
  %.val144 = load ptr, ptr %28, align 8           ; 5 uses
  %i.tv = icmp slt i32 %i.ts, 1
  %i.tw = icmp slt i32 %i.tt, 1
  %or.cond585 = select i1 %i.tv, i1 true, i1 %i.tw
  br i1 %or.cond585, label %_ZN3iglL12mergeColumnsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEvRKT_iiiRS4_.exit, label %.preheader5.preheader.i205

.preheader5.preheader.i205:                       ; preds = %bb.bq
  %.val144838 = ptrtoaddr ptr %.val144 to i64
  %.val142839 = ptrtoaddr ptr %.val142 to i64
  %i.tx = zext nneg i32 %i.ts to i64              ; 2 uses
  %i.ty = zext nneg i32 %i.tt to i64              ; 9 uses
  %wide.trip.count18.i206 = zext nneg i32 %i.tu to i64
  %i.tz = add nsw i64 %i.ty, -1                   ; 2 uses
  %min.iters.check842 = icmp ult i32 %i.tt, 16
  %ident.check = icmp ne i32 %i.ts, 1
  %ident.check836 = icmp ne i64 %.val143, 1
  %i.ua = trunc nsw i64 %i.tz to i32
  %i.ub = icmp ugt i64 %i.tz, 4294967295
  %i.uc = or i1 %ident.check, %ident.check836
  %invariant.op1001 = or i1 %i.ub, %i.uc
  %n.vec844 = and i64 %i.ty, 2147483644           ; 3 uses
  %cmp.n851 = icmp eq i64 %n.vec844, %i.ty
  %xtraiter964 = and i64 %i.ty, 1
  %lcmp.mod965.not = icmp eq i64 %xtraiter964, 0
  %i.ud = add nsw i64 %i.ty, -1
  br label %.preheader5.i207

.preheader5.i207:                                 ; preds = %._crit_edge8.i219, %.preheader5.preheader.i205
  %indvars.iv20.i208 = phi i64 [ 0, %.preheader5.preheader.i205 ], [ %indvars.iv.next21.i220, %._crit_edge8.i219 ] ; 6 uses
  %invariant.gep.i209 = getelementptr [8 x i8], ptr %.val142, i64 %indvars.iv20.i208
  br label %.preheader.i210

.preheader.i210:                                  ; preds = %._crit_edge.i216, %.preheader5.i207
  %indvars.iv15.i211 = phi i64 [ 0, %.preheader5.i207 ], [ %indvars.iv.next16.i217, %._crit_edge.i216 ] ; 5 uses
  %i.ue = mul nuw nsw i64 %indvars.iv15.i211, %i.tx ; 2 uses
  %gep.i212 = getelementptr [8 x i8], ptr %invariant.gep.i209, i64 %i.ue ; 4 uses
  %i.uf = mul nuw nsw i64 %i.ue, %i.ty
  %i.ug = add nuw i64 %i.uf, %indvars.iv20.i208   ; 2 uses
  %i.uh = trunc nuw i64 %i.ug to i32              ; 3 uses
  br i1 %min.iters.check842, label %scalar.ph841.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.i210
  %i.ui = add nuw i64 %indvars.iv20.i208, %indvars.iv15.i211
  %i.uj = shl i64 %i.ui, 3
  %i.uk = add i64 %i.uj, %.val142839
  %i.ul = sub i64 %.val144838, %i.uk
  %i.um = mul i64 %indvars.iv15.i211, %i.ty
  %i.un = add i64 %indvars.iv20.i208, %i.um
  %sext909 = shl i64 %i.un, 32
  %i.uo = ashr exact i64 %sext909, 29
  %i.up = add i64 %i.ul, %i.uo
  %i.uq = mul i64 %indvars.iv15.i211, %i.ty
  %i.ur = add i64 %indvars.iv20.i208, %i.uq
  %i.us = trunc i64 %i.ur to i32                  ; 2 uses
  %i.ut = add i32 %i.us, %i.ua
  %i.uu = icmp slt i32 %i.ut, %i.us
  %.reass1002 = or i1 %i.uu, %invariant.op1001
  %i.uv = add i64 %i.up, -1
  %diff.check840 = icmp ult i64 %i.uv, 31
  %or.cond914 = select i1 %.reass1002, i1 true, i1 %diff.check840
  br i1 %or.cond914, label %scalar.ph841.preheader, label %vector.body845

vector.body845:                                   ; preds = %vector.scevcheck, %vector.body845
  %index846 = phi i64 [ %index.next849, %vector.body845 ], [ 0, %vector.scevcheck ] ; 3 uses
  %i.uw = getelementptr [8 x i8], ptr %gep.i212, i64 %index846 ; 2 uses
  %i.ux = getelementptr i8, ptr %i.uw, i64 16
  %wide.load847 = load <2 x double>, ptr %i.uw, align 8, !tbaa !46
  %wide.load848 = load <2 x double>, ptr %i.ux, align 8, !tbaa !46
end_hunk_0
begin_hunk_1_@_ZN3igl15arap_dof_updateIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEfEEbRKNS_11ArapDOFDataIT_T0_EERKNS2_IdLin1ELi1ELi0ELin1ELi1EEERKS3_idRS3_:bb.a
  %cmp.n741 = icmp eq i64 %n.vec734, %i.po
  %xtraiter788 = and i64 %i.po, 1
  %lcmp.mod789.not = icmp eq i64 %xtraiter788, 0
  %i.pv = add nsw i64 %i.po, -1
  br label %.preheader5.i

.preheader5.i:                                    ; preds = %._crit_edge8.i, %.preheader5.preheader.i
  %indvars.iv20.i = phi i64 [ 0, %.preheader5.preheader.i ], [ %indvars.iv.next21.i, %._crit_edge8.i ] ; 6 uses
  %i.pw = shl nuw nsw i64 %indvars.iv20.i, 2
  %i.px = add i64 %i.pq, %i.pw
  %invariant.gep.i = getelementptr [4 x i8], ptr %.val140, i64 %indvars.iv20.i
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader5.i
  %indvars.iv15.i = phi i64 [ 0, %.preheader5.i ], [ %indvars.iv.next16.i, %._crit_edge.i ] ; 5 uses
  %i.py = mul nuw nsw i64 %indvars.iv15.i, %i.pn  ; 2 uses
  %i.pz = mul nuw nsw i64 %i.py, %i.po
  %i.qa = add nuw i64 %i.pz, %indvars.iv20.i      ; 2 uses
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.py ; 4 uses
  %i.qb = trunc nuw i64 %i.qa to i32              ; 3 uses
  br i1 %min.iters.check732, label %scalar.ph731.preheader, label %vector.scevcheck723

vector.scevcheck723:                              ; preds = %.preheader.i
  %i.qc = mul i64 %indvars.iv15.i, %i.po
  %i.qd = add i64 %indvars.iv20.i, %i.qc
  %sext755 = shl i64 %i.qd, 32
  %i.qe = ashr exact i64 %sext755, 30
  %i.qf = mul i64 %i.pr, %indvars.iv15.i
  %i.qg = add i64 %i.px, %i.qf
  %i.qh = mul i64 %indvars.iv15.i, %i.po
  %i.qi = add i64 %indvars.iv20.i, %i.qh
  %i.qj = trunc i64 %i.qi to i32                  ; 2 uses
  %i.qk = add i32 %i.qj, %i.ps
  %i.ql = icmp slt i32 %i.qk, %i.qj
  %.reass = or i1 %i.ql, %invariant.op
  %i.qm = sub i64 %i.qe, %i.qg
  %diff.check730 = icmp ugt i64 %i.qm, -32
  %or.cond761 = select i1 %.reass, i1 true, i1 %diff.check730
  br i1 %or.cond761, label %scalar.ph731.preheader, label %vector.body735

vector.body735:                                   ; preds = %vector.scevcheck723, %vector.body735
  %index736 = phi i64 [ %index.next739, %vector.body735 ], [ 0, %vector.scevcheck723 ] ; 3 uses
  %i.qn = add i64 %index736, %i.qa
  %sext756 = shl i64 %i.qn, 32
  %i.qo = ashr exact i64 %sext756, 30
  %i.qp = getelementptr i8, ptr %.val, i64 %i.qo  ; 2 uses
  %i.qq = getelementptr i8, ptr %i.qp, i64 16
  %wide.load737 = load <4 x float>, ptr %i.qp, align 4, !tbaa !364
  %wide.load738 = load <4 x float>, ptr %i.qq, align 4, !tbaa !364
  %i.qr = getelementptr [4 x i8], ptr %gep.i, i64 %index736 ; 2 uses
  %i.qs = getelementptr i8, ptr %i.qr, i64 16
  store <4 x float> %wide.load737, ptr %i.qr, align 4, !tbaa !364
  store <4 x float> %wide.load738, ptr %i.qs, align 4, !tbaa !364
  %index.next739 = add nuw i64 %index736, 8       ; 2 uses
  %i.qt = icmp eq i64 %index.next739, %n.vec734
  br i1 %i.qt, label %middle.block740, label %vector.body735, !llvm.loop !404

middle.block740:                                  ; preds = %vector.body735
  br i1 %cmp.n741, label %._crit_edge.i, label %scalar.ph731.preheader

scalar.ph731.preheader:                           ; preds = %vector.scevcheck723, %.preheader.i, %middle.block740
  %indvars.iv.i.ph = phi i64 [ 0, %vector.scevcheck723 ], [ 0, %.preheader.i ], [ %n.vec734, %middle.block740 ] ; 5 uses
  br i1 %lcmp.mod789.not, label %scalar.ph731.prol.loopexit, label %scalar.ph731.prol

scalar.ph731.prol:                                ; preds = %scalar.ph731.preheader
  %i.qu = trunc nuw nsw i64 %indvars.iv.i.ph to i32
  %i.qv = mul i32 %i.pi, %i.qu
  %i.qw = add i32 %i.qv, %i.qb
  %i.qx = sext i32 %i.qw to i64
  %i.qy = getelementptr [4 x i8], ptr %.val, i64 %i.qx
  %i.qz = load float, ptr %i.qy, align 4, !tbaa !364
  %i.ra = mul nsw i64 %indvars.iv.i.ph, %.val141
  %i.rb = getelementptr [4 x i8], ptr %gep.i, i64 %i.ra
  store float %i.qz, ptr %i.rb, align 4, !tbaa !364
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %scalar.ph731.prol.loopexit

scalar.ph731.prol.loopexit:                       ; preds = %scalar.ph731.prol, %scalar.ph731.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph731.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph731.prol ]
  %i.rc = icmp eq i64 %indvars.iv.i.ph, %i.pv
  br i1 %i.rc, label %._crit_edge.i, label %scalar.ph731

._crit_edge8.i:                                   ; preds = %._crit_edge.i
  %indvars.iv.next21.i = add nuw nsw i64 %indvars.iv20.i, 1 ; 2 uses
  %exitcond24.not.i = icmp eq i64 %indvars.iv.next21.i, %i.pn
  br i1 %exitcond24.not.i, label %.loopexit510, label %.preheader5.i, !llvm.loop !405

._crit_edge.i:                                    ; preds = %scalar.ph731.prol.loopexit, %scalar.ph731, %middle.block740
  %indvars.iv.next16.i = add nuw nsw i64 %indvars.iv15.i, 1 ; 2 uses
  %exitcond19.not.i = icmp eq i64 %indvars.iv.next16.i, %wide.trip.count18.i
  br i1 %exitcond19.not.i, label %._crit_edge8.i, label %.preheader.i, !llvm.loop !406

scalar.ph731:                                     ; preds = %scalar.ph731.prol.loopexit, %scalar.ph731
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %scalar.ph731 ], [ %indvars.iv.i.unr, %scalar.ph731.prol.loopexit ] ; 4 uses
  %i.rd = trunc i64 %indvars.iv.i to i32
  %i.re = mul i32 %i.pi, %i.rd
  %i.rf = add i32 %i.re, %i.qb
  %i.rg = sext i32 %i.rf to i64
  %i.rh = getelementptr [4 x i8], ptr %.val, i64 %i.rg
  %i.ri = load float, ptr %i.rh, align 4, !tbaa !364
  %i.rj = mul nsw i64 %indvars.iv.i, %.val141
  %i.rk = getelementptr [4 x i8], ptr %gep.i, i64 %i.rj
  store float %i.ri, ptr %i.rk, align 4, !tbaa !364
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.rl = trunc i64 %indvars.iv.next.i to i32
  %i.rm = mul i32 %i.pi, %i.rl
  %i.rn = add i32 %i.rm, %i.qb
  %i.ro = sext i32 %i.rn to i64
  %i.rp = getelementptr [4 x i8], ptr %.val, i64 %i.ro
  %i.rq = load float, ptr %i.rp, align 4, !tbaa !364
  %i.rr = mul nsw i64 %indvars.iv.next.i, %.val141
  %i.rs = getelementptr [4 x i8], ptr %gep.i, i64 %i.rr
  store float %i.rq, ptr %i.rs, align 4, !tbaa !364
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %i.po
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph731, !llvm.loop !407

.loopexit510:                                     ; preds = %._crit_edge8.i, %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #25
  store ptr %i.nu, ptr %32, align 8
  store ptr %24, ptr %i.nv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  invoke void @_ZN5Eigen8internal15call_assignmentINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEENS_7ProductIS3_S3_Li0EEENS0_9assign_opIffEEEEvRT_RKT0_RKT1_NS0_9enable_ifIXsr25evaluator_assume_aliasingISA_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(16) %32, ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef null)
          to label %bb.bf unwind label %bb.bh

bb.bf:                                            ; preds = %.loopexit510
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #25
  %i.rt = load i8, ptr %i.ns, align 8, !tbaa !403, !range !94, !noundef !64
  %i.ru = trunc nuw i8 %i.rt to i1
  br i1 %i.ru, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.rv = invoke noundef double @_ZN3igl11get_secondsEv()
          to label %bb.bi unwind label %bb.bd     ; 0 uses

bb.bh:                                            ; preds = %.loopexit510
  %i.rw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #25
  br label %.body196

bb.bi:                                            ; preds = %bb.bg, %bb.bf
  %i.rx = load i32, ptr %i.nw, align 4, !tbaa !408
  %i.ry = icmp eq i32 %i.rx, 2
  br i1 %i.ry, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZN3igl20fit_rotations_planarIN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %16, ptr noundef nonnull align 8 dereferenceable(24) %17)
          to label %bb.bl unwind label %bb.bd

bb.bk:                                            ; preds = %bb.bi
  invoke void @_ZN3igl17fit_rotations_SSEERKN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEERS2_(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %17)
          to label %bb.bl unwind label %bb.bd

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.rz = load i8, ptr %i.ns, align 8, !tbaa !403, !range !94, !noundef !64
  %i.sa = trunc nuw i8 %i.rz to i1
  br i1 %i.sa, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.sb = invoke noundef double @_ZN3igl11get_secondsEv()
          to label %bb.bn unwind label %bb.bd     ; 0 uses

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  invoke void @_ZN3igl9columnizeIN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEENS2_IfLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EEiiRNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %17, i32 noundef %i.i, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(16) %18)
          to label %bb.bo unwind label %bb.bd

bb.bo:                                            ; preds = %bb.bn
  %i.sc = load i32, ptr %i.e, align 8, !tbaa !346 ; 3 uses
  %.val142 = load ptr, ptr %18, align 8           ; 5 uses
  %.val142709 = ptrtoaddr ptr %.val142 to i64
  %.val143 = load ptr, ptr %29, align 8           ; 2 uses
  %.val143708 = ptrtoaddr ptr %.val143 to i64
  %.val144 = load i64, ptr %i.mf, align 8         ; 4 uses
  %i.sd = icmp slt i32 %i.sc, 1
  %or.cond = select i1 %i.nx, i1 true, i1 %i.sd
  br i1 %or.cond, label %_ZN3iglL12splitColumnsIN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEENS2_IfLin1ELin1ELi0ELin1ELin1EEEEEvRKT_iiiRT0_.exit, label %.preheader3.preheader.i

.preheader3.preheader.i:                          ; preds = %bb.bo
  %i.se = zext nneg i32 %i.sc to i64              ; 10 uses
  %i.sf = add nsw i64 %i.se, -1                   ; 2 uses
  %i.sg = shl nuw nsw i64 %i.se, 2
  %i.sh = shl nuw nsw i64 %i.se, 2
  %min.iters.check712 = icmp ult i32 %i.sc, 28
  %ident.check705 = icmp ne i64 %.val144, 1
  %i.si = trunc nsw i64 %i.sf to i34
  %mul.result = shl nsw i34 %i.si, 2
  %mul.overflow = icmp ugt i64 %i.sf, 4294967295
  %i.sj = or i1 %ident.check705, %ident.check706
  %invariant.op818 = or i1 %mul.overflow, %i.sj
  %n.vec714 = and i64 %i.se, 2147483640           ; 3 uses
  %cmp.n721 = icmp eq i64 %n.vec714, %i.se
  %xtraiter791 = and i64 %i.se, 1
  %lcmp.mod792.not = icmp eq i64 %xtraiter791, 0
  %i.sk = add nsw i64 %i.se, -1
  br label %.preheader3.i

.preheader3.i:                                    ; preds = %._crit_edge6.i, %.preheader3.preheader.i
  %indvars.iv18.i = phi i64 [ 0, %.preheader3.preheader.i ], [ %indvars.iv.next19.i, %._crit_edge6.i ] ; 5 uses
  %i.sl = shl nuw i64 %indvars.iv18.i, 2          ; 2 uses
  %i.sm = add i64 %i.sl, %.val143708
  %i.sn = shl nuw i64 %indvars.iv18.i, 2
  %invariant.gep.i200 = getelementptr [4 x i8], ptr %.val143, i64 %indvars.iv18.i
  br label %.preheader.i201

.preheader.i201:                                  ; preds = %._crit_edge.i206, %.preheader3.i
  %indvars.iv13.i = phi i64 [ 0, %.preheader3.i ], [ %indvars.iv.next14.i, %._crit_edge.i206 ] ; 5 uses
  %i.so = mul nuw nsw i64 %indvars.iv13.i, %i.ny  ; 2 uses
  %i.sp = mul nuw nsw i64 %i.so, %i.se
  %i.sq = add nuw i64 %i.sp, %indvars.iv18.i      ; 4 uses
  %gep.i202 = getelementptr [4 x i8], ptr %invariant.gep.i200, i64 %i.so ; 4 uses
  br i1 %min.iters.check712, label %scalar.ph711.preheader, label %vector.scevcheck704

vector.scevcheck704:                              ; preds = %.preheader.i201
  %i.sr = mul i64 %i.sh, %indvars.iv13.i
  %i.ss = add i64 %i.sl, %i.sr
  %sext757 = shl i64 %i.ss, 30
  %i.st = ashr exact i64 %sext757, 30
  %i.su = add i64 %i.st, %.val142709
  %i.sv = mul i64 %i.pa, %indvars.iv13.i
  %i.sw = add i64 %i.sm, %i.sv
  %i.sx = mul i64 %i.sg, %indvars.iv13.i
  %i.sy = add i64 %i.sn, %i.sx
  %i.sz = trunc i64 %i.sy to i34                  ; 2 uses
  %i.ta = add i34 %mul.result, %i.sz
  %i.tb = icmp slt i34 %i.ta, %i.sz
  %.reass819 = or i1 %i.tb, %invariant.op818
  %i.tc = sub i64 %i.su, %i.sw
  %diff.check710 = icmp ugt i64 %i.tc, -32
  %or.cond762 = select i1 %.reass819, i1 true, i1 %diff.check710
  br i1 %or.cond762, label %scalar.ph711.preheader, label %vector.body715

vector.body715:                                   ; preds = %vector.scevcheck704, %vector.body715
  %index716 = phi i64 [ %index.next719, %vector.body715 ], [ 0, %vector.scevcheck704 ] ; 3 uses
  %i.td = add i64 %i.sq, %index716
  %i.te = shl i64 %i.td, 32
  %i.tf = ashr exact i64 %i.te, 30
  %i.tg = getelementptr i8, ptr %.val142, i64 %i.tf ; 2 uses
  %i.th = getelementptr i8, ptr %i.tg, i64 16
  %wide.load717 = load <4 x float>, ptr %i.tg, align 4, !tbaa !364
  %wide.load718 = load <4 x float>, ptr %i.th, align 4, !tbaa !364
  %i.ti = getelementptr [4 x i8], ptr %gep.i202, i64 %index716 ; 2 uses
  %i.tj = getelementptr i8, ptr %i.ti, i64 16
  store <4 x float> %wide.load717, ptr %i.ti, align 4, !tbaa !364
  store <4 x float> %wide.load718, ptr %i.tj, align 4, !tbaa !364
  %index.next719 = add nuw i64 %index716, 8       ; 2 uses
  %i.tk = icmp eq i64 %index.next719, %n.vec714
  br i1 %i.tk, label %middle.block720, label %vector.body715, !llvm.loop !409

middle.block720:                                  ; preds = %vector.body715
  br i1 %cmp.n721, label %._crit_edge.i206, label %scalar.ph711.preheader

scalar.ph711.preheader:                           ; preds = %vector.scevcheck704, %.preheader.i201, %middle.block720
  %indvars.iv.i203.ph = phi i64 [ 0, %vector.scevcheck704 ], [ 0, %.preheader.i201 ], [ %n.vec714, %middle.block720 ] ; 5 uses
  br i1 %lcmp.mod792.not, label %scalar.ph711.prol.loopexit, label %scalar.ph711.prol

scalar.ph711.prol:                                ; preds = %scalar.ph711.preheader
  %i.tl = mul i64 %indvars.iv.i203.ph, %i.h
  %i.tm = add i64 %i.sq, %i.tl
  %sext.prol = shl i64 %i.tm, 32
  %i.tn = ashr exact i64 %sext.prol, 30
  %i.to = getelementptr i8, ptr %.val142, i64 %i.tn
  %i.tp = load float, ptr %i.to, align 4, !tbaa !364
  %i.tq = mul nsw i64 %indvars.iv.i203.ph, %.val144
  %i.tr = getelementptr [4 x i8], ptr %gep.i202, i64 %i.tq
  store float %i.tp, ptr %i.tr, align 4, !tbaa !364
  %indvars.iv.next.i204.prol = or disjoint i64 %indvars.iv.i203.ph, 1
  br label %scalar.ph711.prol.loopexit

scalar.ph711.prol.loopexit:                       ; preds = %scalar.ph711.prol, %scalar.ph711.preheader
  %indvars.iv.i203.unr = phi i64 [ %indvars.iv.i203.ph, %scalar.ph711.preheader ], [ %indvars.iv.next.i204.prol, %scalar.ph711.prol ]
  %i.ts = icmp eq i64 %indvars.iv.i203.ph, %i.sk
  br i1 %i.ts, label %._crit_edge.i206, label %scalar.ph711

._crit_edge6.i:                                   ; preds = %._crit_edge.i206
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1 ; 2 uses
  %exitcond22.not.i = icmp eq i64 %indvars.iv.next19.i, %i.ny
  br i1 %exitcond22.not.i, label %_ZN3iglL12splitColumnsIN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEENS2_IfLin1ELin1ELi0ELin1ELin1EEEEEvRKT_iiiRT0_.exit, label %.preheader3.i, !llvm.loop !410

._crit_edge.i206:                                 ; preds = %scalar.ph711.prol.loopexit, %scalar.ph711, %middle.block720
  %indvars.iv.next14.i = add nuw nsw i64 %indvars.iv13.i, 1 ; 2 uses
  %exitcond17.not.i = icmp eq i64 %indvars.iv.next14.i, %i.se
  br i1 %exitcond17.not.i, label %._crit_edge6.i, label %.preheader.i201, !llvm.loop !411

scalar.ph711:                                     ; preds = %scalar.ph711.prol.loopexit, %scalar.ph711
  %indvars.iv.i203 = phi i64 [ %indvars.iv.next.i204.1, %scalar.ph711 ], [ %indvars.iv.i203.unr, %scalar.ph711.prol.loopexit ] ; 4 uses
  %i.tt = mul i64 %indvars.iv.i203, %i.h
  %i.tu = add i64 %i.sq, %i.tt
  %sext = shl i64 %i.tu, 32
  %i.tv = ashr exact i64 %sext, 30
  %i.tw = getelementptr i8, ptr %.val142, i64 %i.tv
  %i.tx = load float, ptr %i.tw, align 4, !tbaa !364
  %i.ty = mul nsw i64 %indvars.iv.i203, %.val144
  %i.tz = getelementptr [4 x i8], ptr %gep.i202, i64 %i.ty
  store float %i.tx, ptr %i.tz, align 4, !tbaa !364
  %indvars.iv.next.i204 = add nuw nsw i64 %indvars.iv.i203, 1 ; 2 uses
  %i.ua = mul i64 %indvars.iv.next.i204, %i.h
  %i.ub = add i64 %i.sq, %i.ua
  %sext.1 = shl i64 %i.ub, 32
  %i.uc = ashr exact i64 %sext.1, 30
  %i.ud = getelementptr i8, ptr %.val142, i64 %i.uc
  %i.ue = load float, ptr %i.ud, align 4, !tbaa !364
  %i.uf = mul nsw i64 %indvars.iv.next.i204, %.val144
  %i.ug = getelementptr [4 x i8], ptr %gep.i202, i64 %i.uf
  store float %i.ue, ptr %i.ug, align 4, !tbaa !364
  %indvars.iv.next.i204.1 = add nuw nsw i64 %indvars.iv.i203, 2 ; 2 uses
  %exitcond.not.i205.1 = icmp eq i64 %indvars.iv.next.i204.1, %i.se
  br i1 %exitcond.not.i205.1, label %._crit_edge.i206, label %scalar.ph711, !llvm.loop !412

_ZN3iglL12splitColumnsIN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEENS2_IfLin1ELin1ELi0ELin1ELin1EEEEEvRKT_iiiRT0_.exit: ; preds = %._crit_edge6.i, %bb.bo
  %i.uh = load i8, ptr %i.ns, align 8, !tbaa !403, !range !94, !noundef !64
  %i.ui = trunc nuw i8 %i.uh to i1
  br i1 %i.ui, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %_ZN3iglL12splitColumnsIN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEENS2_IfLin1ELin1ELi0ELin1ELin1EEEEEvRKT_iiiRT0_.exit
  %i.uj = invoke noundef double @_ZN3igl11get_secondsEv()
          to label %bb.bq unwind label %bb.bd     ; 0 uses

bb.bq:                                            ; preds = %_ZN3iglL12splitColumnsIN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEENS2_IfLin1ELin1ELi0ELin1ELin1EEEEEvRKT_iiiRT0_.exit, %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #25
  store ptr %i.nz, ptr %33, align 8
  store ptr %29, ptr %i.oa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  invoke void @_ZN5Eigen8internal15call_assignmentINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEENS_7ProductIS3_S3_Li0EEENS0_9assign_opIffEEEEvRT_RKT0_RKT1_NS0_9enable_ifIXsr25evaluator_assume_aliasingISA_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %30, ptr noundef nonnull align 8 dereferenceable(16) %33, ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef null)
          to label %bb.br unwind label %bb.cm

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #25
  %i.uk = load i32, ptr %i.ga, align 4, !tbaa !376 ; 7 uses
  %i.ul = load i32, ptr %i.e, align 8, !tbaa !346 ; 5 uses
  %i.um = add nsw i32 %i.ul, 1                    ; 2 uses
  %.val145 = load ptr, ptr %30, align 8           ; 2 uses
  %.val146 = load i64, ptr %i.mx, align 8         ; 4 uses
  %.val147 = load ptr, ptr %31, align 8           ; 5 uses
  %i.un = icmp slt i32 %i.uk, 1
  %i.uo = icmp slt i32 %i.ul, 1
  %or.cond509 = select i1 %i.un, i1 true, i1 %i.uo
  br i1 %or.cond509, label %_ZN3iglL12mergeColumnsIN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEEEEvRKT_iiiRS4_.exit, label %.preheader5.preheader.i212

.preheader5.preheader.i212:                       ; preds = %bb.br
  %.val147689 = ptrtoaddr ptr %.val147 to i64
  %.val145690 = ptrtoaddr ptr %.val145 to i64
  %i.up = zext nneg i32 %i.uk to i64              ; 2 uses
  %i.uq = zext nneg i32 %i.ul to i64              ; 9 uses
  %wide.trip.count18.i213 = zext nneg i32 %i.um to i64
  %i.ur = add nsw i64 %i.uq, -1                   ; 2 uses
  %min.iters.check693 = icmp ult i32 %i.ul, 16
  %ident.check = icmp ne i32 %i.uk, 1
  %ident.check687 = icmp ne i64 %.val146, 1
  %i.us = trunc nsw i64 %i.ur to i32
  %i.ut = icmp ugt i64 %i.ur, 4294967295
  %i.uu = or i1 %ident.check, %ident.check687
  %invariant.op820 = or i1 %i.ut, %i.uu
  %n.vec695 = and i64 %i.uq, 2147483640           ; 3 uses
  %cmp.n702 = icmp eq i64 %n.vec695, %i.uq
  %xtraiter794 = and i64 %i.uq, 1
  %lcmp.mod795.not = icmp eq i64 %xtraiter794, 0
  %i.uv = add nsw i64 %i.uq, -1
  br label %.preheader5.i214

.preheader5.i214:                                 ; preds = %._crit_edge8.i226, %.preheader5.preheader.i212
  %indvars.iv20.i215 = phi i64 [ 0, %.preheader5.preheader.i212 ], [ %indvars.iv.next21.i227, %._crit_edge8.i226 ] ; 6 uses
  %invariant.gep.i216 = getelementptr [4 x i8], ptr %.val145, i64 %indvars.iv20.i215
  br label %.preheader.i217

.preheader.i217:                                  ; preds = %._crit_edge.i223, %.preheader5.i214
  %indvars.iv15.i218 = phi i64 [ 0, %.preheader5.i214 ], [ %indvars.iv.next16.i224, %._crit_edge.i223 ] ; 5 uses
  %i.uw = mul nuw nsw i64 %indvars.iv15.i218, %i.up ; 2 uses
  %gep.i219 = getelementptr [4 x i8], ptr %invariant.gep.i216, i64 %i.uw ; 4 uses
  %i.ux = mul nuw nsw i64 %i.uw, %i.uq
  %i.uy = add nuw i64 %i.ux, %indvars.iv20.i215   ; 2 uses
  %i.uz = trunc nuw i64 %i.uy to i32              ; 3 uses
  br i1 %min.iters.check693, label %scalar.ph692.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.i217
  %i.va = add nuw i64 %indvars.iv20.i215, %indvars.iv15.i218
  %i.vb = shl i64 %i.va, 2
  %i.vc = add i64 %i.vb, %.val145690
  %i.vd = sub i64 %.val147689, %i.vc
  %i.ve = mul i64 %indvars.iv15.i218, %i.uq
  %i.vf = add i64 %indvars.iv20.i215, %i.ve
  %sext758 = shl i64 %i.vf, 32
  %i.vg = ashr exact i64 %sext758, 30
  %i.vh = add i64 %i.vd, %i.vg
  %i.vi = mul i64 %indvars.iv15.i218, %i.uq
  %i.vj = add i64 %indvars.iv20.i215, %i.vi
  %i.vk = trunc i64 %i.vj to i32                  ; 2 uses
  %i.vl = add i32 %i.vk, %i.us
  %i.vm = icmp slt i32 %i.vl, %i.vk
  %.reass821 = or i1 %i.vm, %invariant.op820
  %i.vn = add i64 %i.vh, -1
  %diff.check691 = icmp ult i64 %i.vn, 31
  %or.cond763 = select i1 %.reass821, i1 true, i1 %diff.check691
  br i1 %or.cond763, label %scalar.ph692.preheader, label %vector.body696

vector.body696:                                   ; preds = %vector.scevcheck, %vector.body696
  %index697 = phi i64 [ %index.next700, %vector.body696 ], [ 0, %vector.scevcheck ] ; 3 uses
  %i.vo = getelementptr [4 x i8], ptr %gep.i219, i64 %index697 ; 2 uses
  %i.vp = getelementptr i8, ptr %i.vo, i64 16
  %wide.load698 = load <4 x float>, ptr %i.vo, align 4, !tbaa !364
  %wide.load699 = load <4 x float>, ptr %i.vp, align 4, !tbaa !364
end_hunk_1
