Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/per_vertex_point_to_plane_quadrics?download=true
inline.NumInlined: 8459
inline.NumDeleted: 4006
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 99
begin_hunk_0_@_ZN3igl34per_vertex_point_to_plane_quadricsERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS1_IiLin1ELin1ELi0ELin1ELin1EEES7_S7_S7_RSt6vectorISt5tupleIJS2_NS1_IdLi1ELin1ELi1ELi1ELin1EEEdEESaISB_EE:bb.a
  %i.aqv = getelementptr inbounds [8 x i8], ptr %i.aps, i64 %i.aqu
  %i.aqw = load double, ptr %i.aqv, align 8, !tbaa !33
  store double %i.aqw, ptr %i.aqt, align 8, !tbaa !33
  %i.aqx = add nuw nsw i64 %.05.i.i.i.i.i.i.i330, 1 ; 2 uses
  %i.aqy = getelementptr inbounds nuw [8 x i8], ptr %i.aqb, i64 %i.aqx
  %i.aqz = mul nsw i64 %i.aqx, %i.apy
  %i.ara = getelementptr inbounds [8 x i8], ptr %i.aps, i64 %i.aqz
  %i.arb = load double, ptr %i.ara, align 8, !tbaa !33
  store double %i.arb, ptr %i.aqy, align 8, !tbaa !33
  %i.arc = add nuw nsw i64 %.05.i.i.i.i.i.i.i330, 2 ; 2 uses
  %i.ard = getelementptr inbounds nuw [8 x i8], ptr %i.aqb, i64 %i.arc
  %i.are = mul nsw i64 %i.arc, %i.apy
  %i.arf = getelementptr inbounds [8 x i8], ptr %i.aps, i64 %i.are
  %i.arg = load double, ptr %i.arf, align 8, !tbaa !33
  store double %i.arg, ptr %i.ard, align 8, !tbaa !33
  %i.arh = add nuw nsw i64 %.05.i.i.i.i.i.i.i330, 3 ; 2 uses
  %i.ari = getelementptr inbounds nuw [8 x i8], ptr %i.aqb, i64 %i.arh
  %i.arj = mul nsw i64 %i.arh, %i.apy
  %i.ark = getelementptr inbounds [8 x i8], ptr %i.aps, i64 %i.arj
  %i.arl = load double, ptr %i.ark, align 8, !tbaa !33
  store double %i.arl, ptr %i.ari, align 8, !tbaa !33
  %i.arm = add nuw nsw i64 %.05.i.i.i.i.i.i.i330, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i331.3 = icmp eq i64 %i.arm, %i.aqa
  br i1 %exitcond.not.i.i.i.i.i.i.i331.3, label %.loopexit559, label %.lr.ph.i.i.i.i.i.i.i329, !llvm.loop !227

.loopexit562:                                     ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i.i323, %thread-pre-split.i.i.i.i.i.i326
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body333

.loopexit.split-lp:                               ; preds = %bb.cr
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body333

.loopexit559:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i329.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i329, %middle.block977, %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #25
  %.urem774 = add nsw i32 %.1.2768, -1
  %.cmp775 = icmp eq i32 %.1.2768, 0
  %i.arn = select i1 %.cmp775, i32 2, i32 %.urem774
  %i.aro = zext nneg i32 %i.arn to i64
  %i.arp = load ptr, ptr %1, align 8, !tbaa !273
  %i.arq = load i64, ptr %i.ao, align 8, !tbaa !271
  %i.arr = mul nsw i64 %i.arq, %i.aro
  %i.ars = getelementptr [4 x i8], ptr %i.arp, i64 %indvars.iv670
  %i.art = getelementptr [4 x i8], ptr %i.ars, i64 %i.arr
  %i.aru = load i32, ptr %i.art, align 4, !tbaa !46
  %i.arv = sext i32 %i.aru to i64                 ; 2 uses
  %i.arw = load ptr, ptr %0, align 8, !tbaa !38, !noalias !285 ; 2 uses
  %i.arx = ptrtoaddr ptr %i.arw to i64
  %i.ary = getelementptr inbounds [8 x i8], ptr %i.arw, i64 %i.arv ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %31, i8 0, i64 16, i1 false)
  %i.arz = icmp eq i64 %i.aqa, 0
  br i1 %i.arz, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i, label %bb.ct

bb.ct:                                            ; preds = %.loopexit559
  %i.asa = sdiv i64 9223372036854775807, %i.aqa
  %i.asb = icmp slt i64 %i.asa, 1
  br i1 %i.asb, label %bb.cu, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i

bb.cu:                                            ; preds = %bb.ct
  %i.asc = call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.asc, align 8, !tbaa !41
  invoke void @__cxa_throw(ptr nonnull %i.asc, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #26
          to label %.noexc.i392 unwind label %.loopexit.split-lp564

.noexc.i392:                                      ; preds = %bb.cu
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i: ; preds = %bb.ct, %.loopexit559
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %31, i64 noundef 1, i64 noundef %i.aqa)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS2_EEEEvRKNS_9EigenBaseIT_EE.exit.i unwind label %.loopexit563

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS2_EEEEvRKNS_9EigenBaseIT_EE.exit.i: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i
  %i.asd = load i64, ptr %i.c, align 8, !tbaa !24 ; 4 uses
  %i.ase = load ptr, ptr %30, align 8, !tbaa !32  ; 5 uses
  %i.asf = ptrtoaddr ptr %i.ase to i64
  %i.asg = load i64, ptr %i.ar, align 8, !tbaa !31 ; 3 uses
  %i.ash = load i64, ptr %i.as, align 8, !tbaa !31
  %.not8.i.i.i.i.i.i = icmp eq i64 %i.ash, %i.asg
  br i1 %.not8.i.i.i.i.i.i, label %bb.cv, label %thread-pre-split.i.i.i.i.i

thread-pre-split.i.i.i.i.i:                       ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS2_EEEEvRKNS_9EigenBaseIT_EE.exit.i
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %31, i64 noundef 1, i64 noundef %i.asg)
          to label %.noexc5.i unwind label %.loopexit563

.noexc5.i:                                        ; preds = %thread-pre-split.i.i.i.i.i
  %.pr.i.i.i.i.i = load i64, ptr %i.as, align 8, !tbaa !31
  br label %bb.cv

bb.cv:                                            ; preds = %.noexc5.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS2_EEEEvRKNS_9EigenBaseIT_EE.exit.i
  %i.asi = phi i64 [ %.pr.i.i.i.i.i, %.noexc5.i ], [ %i.asg, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS2_EEEEvRKNS_9EigenBaseIT_EE.exit.i ] ; 22 uses
  %i.asj = load ptr, ptr %31, align 8, !tbaa !32  ; 19 uses
  %i.ask = ptrtoaddr ptr %i.asj to i64            ; 2 uses
  %i.asl = icmp sgt i64 %i.asi, 0
  br i1 %i.asl, label %.lr.ph.i.i.i.i.i.i391.preheader, label %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i391.preheader:                  ; preds = %bb.cv
  %min.iters.check951 = icmp ugt i64 %i.asi, 7
  %ident.check945.not = icmp eq i64 %i.asd, 1
  %or.cond1034 = select i1 %min.iters.check951, i1 %ident.check945.not, i1 false
  br i1 %or.cond1034, label %vector.memcheck946, label %.lr.ph.i.i.i.i.i.i391.preheader1045

vector.memcheck946:                               ; preds = %.lr.ph.i.i.i.i.i.i391.preheader
  %i.asm = shl nsw i64 %i.arv, 3
  %i.asn = add i64 %i.asm, %i.arx
  %i.aso = sub i64 %i.asn, %i.ask
  %diff.check947 = icmp ugt i64 %i.aso, -32
  %i.asp = sub i64 %i.asf, %i.ask
  %diff.check948 = icmp ugt i64 %i.asp, -32
  %conflict.rdx949 = or i1 %diff.check947, %diff.check948
  br i1 %conflict.rdx949, label %.lr.ph.i.i.i.i.i.i391.preheader1045, label %vector.ph952

vector.ph952:                                     ; preds = %vector.memcheck946
  %n.vec953 = and i64 %i.asi, 9223372036854775804 ; 3 uses
  br label %vector.body954

vector.body954:                                   ; preds = %vector.body954, %vector.ph952
  %index955 = phi i64 [ 0, %vector.ph952 ], [ %index.next960, %vector.body954 ] ; 4 uses
  %i.asq = getelementptr inbounds nuw [8 x i8], ptr %i.asj, i64 %index955 ; 2 uses
  %i.asr = getelementptr inbounds [8 x i8], ptr %i.ary, i64 %index955 ; 2 uses
  %i.ass = getelementptr inbounds nuw i8, ptr %i.asr, i64 16
  %wide.load956 = load <2 x double>, ptr %i.asr, align 8, !tbaa !33
  %wide.load957 = load <2 x double>, ptr %i.ass, align 8, !tbaa !33
  %i.ast = getelementptr inbounds nuw [8 x i8], ptr %i.ase, i64 %index955 ; 2 uses
  %i.asu = getelementptr inbounds nuw i8, ptr %i.ast, i64 16
  %wide.load958 = load <2 x double>, ptr %i.ast, align 8, !tbaa !33
  %wide.load959 = load <2 x double>, ptr %i.asu, align 8, !tbaa !33
  %i.asv = fsub <2 x double> %wide.load956, %wide.load958
  %i.asw = fsub <2 x double> %wide.load957, %wide.load959
  %i.asx = getelementptr inbounds nuw i8, ptr %i.asq, i64 16
  store <2 x double> %i.asv, ptr %i.asq, align 8, !tbaa !33
  store <2 x double> %i.asw, ptr %i.asx, align 8, !tbaa !33
  %index.next960 = add nuw i64 %index955, 4       ; 2 uses
  %i.asy = icmp eq i64 %index.next960, %n.vec953
  br i1 %i.asy, label %middle.block961, label %vector.body954, !llvm.loop !230

middle.block961:                                  ; preds = %vector.body954
  %cmp.n962 = icmp eq i64 %i.asi, %n.vec953
  br i1 %cmp.n962, label %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit.thread, label %.lr.ph.i.i.i.i.i.i391.preheader1045

.lr.ph.i.i.i.i.i.i391.preheader1045:              ; preds = %vector.memcheck946, %.lr.ph.i.i.i.i.i.i391.preheader, %middle.block961
  %.05.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck946 ], [ 0, %.lr.ph.i.i.i.i.i.i391.preheader ], [ %n.vec953, %middle.block961 ] ; 6 uses
  %.neg = or disjoint i64 %.05.i.i.i.i.i.i.ph, 1
  %xtraiter1120 = and i64 %i.asi, 1
  %lcmp.mod1121.not = icmp eq i64 %xtraiter1120, 0
  br i1 %lcmp.mod1121.not, label %.lr.ph.i.i.i.i.i.i391.prol.loopexit, label %.lr.ph.i.i.i.i.i.i391.prol

.lr.ph.i.i.i.i.i.i391.prol:                       ; preds = %.lr.ph.i.i.i.i.i.i391.preheader1045
  %i.asz = getelementptr inbounds nuw [8 x i8], ptr %i.asj, i64 %.05.i.i.i.i.i.i.ph
  %i.ata = mul nsw i64 %.05.i.i.i.i.i.i.ph, %i.asd
  %i.atb = getelementptr inbounds [8 x i8], ptr %i.ary, i64 %i.ata
  %i.atc = load double, ptr %i.atb, align 8, !tbaa !33
  %i.atd = getelementptr inbounds nuw [8 x i8], ptr %i.ase, i64 %.05.i.i.i.i.i.i.ph
  %i.ate = load double, ptr %i.atd, align 8, !tbaa !33
  %i.atf = fsub double %i.atc, %i.ate
  store double %i.atf, ptr %i.asz, align 8, !tbaa !33
  %i.atg = or disjoint i64 %.05.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i391.prol.loopexit

.lr.ph.i.i.i.i.i.i391.prol.loopexit:              ; preds = %.lr.ph.i.i.i.i.i.i391.prol, %.lr.ph.i.i.i.i.i.i391.preheader1045
  %.05.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i391.preheader1045 ], [ %i.atg, %.lr.ph.i.i.i.i.i.i391.prol ]
  %i.ath = icmp eq i64 %i.asi, %.neg
  br i1 %i.ath, label %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit.thread, label %.lr.ph.i.i.i.i.i.i391

.lr.ph.i.i.i.i.i.i391:                            ; preds = %.lr.ph.i.i.i.i.i.i391.prol.loopexit, %.lr.ph.i.i.i.i.i.i391
  %.05.i.i.i.i.i.i = phi i64 [ %i.atx, %.lr.ph.i.i.i.i.i.i391 ], [ %.05.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i391.prol.loopexit ] ; 5 uses
  %i.ati = getelementptr inbounds nuw [8 x i8], ptr %i.asj, i64 %.05.i.i.i.i.i.i
  %i.atj = mul nsw i64 %.05.i.i.i.i.i.i, %i.asd
  %i.atk = getelementptr inbounds [8 x i8], ptr %i.ary, i64 %i.atj
  %i.atl = load double, ptr %i.atk, align 8, !tbaa !33
  %i.atm = getelementptr inbounds nuw [8 x i8], ptr %i.ase, i64 %.05.i.i.i.i.i.i
  %i.atn = load double, ptr %i.atm, align 8, !tbaa !33
  %i.ato = fsub double %i.atl, %i.atn
  store double %i.ato, ptr %i.ati, align 8, !tbaa !33
  %i.atp = add nuw nsw i64 %.05.i.i.i.i.i.i, 1    ; 3 uses
  %i.atq = getelementptr inbounds nuw [8 x i8], ptr %i.asj, i64 %i.atp
  %i.atr = mul nsw i64 %i.atp, %i.asd
  %i.ats = getelementptr inbounds [8 x i8], ptr %i.ary, i64 %i.atr
  %i.att = load double, ptr %i.ats, align 8, !tbaa !33
  %i.atu = getelementptr inbounds nuw [8 x i8], ptr %i.ase, i64 %i.atp
  %i.atv = load double, ptr %i.atu, align 8, !tbaa !33
  %i.atw = fsub double %i.att, %i.atv
  store double %i.atw, ptr %i.atq, align 8, !tbaa !33
  %i.atx = add nuw nsw i64 %.05.i.i.i.i.i.i, 2    ; 2 uses
  %exitcond.not.i.i.i.i.i.i.1 = icmp eq i64 %i.atx, %i.asi
  br i1 %exitcond.not.i.i.i.i.i.i.1, label %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit.thread, label %.lr.ph.i.i.i.i.i.i391, !llvm.loop !231

.loopexit563:                                     ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i, %thread-pre-split.i.i.i.i.i
  %lpad.loopexit565 = landingpad { ptr, i32 }
          cleanup
  br label %.body393

.loopexit.split-lp564:                            ; preds = %bb.cu
  %lpad.loopexit.split-lp566 = landingpad { ptr, i32 }
          cleanup
  br label %.body393

_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit: ; preds = %bb.cv
  %i.aty = icmp eq i64 %i.asi, 0
  br i1 %i.aty, label %.loopexit557, label %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit.thread

_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit.thread: ; preds = %.lr.ph.i.i.i.i.i.i391.prol.loopexit, %.lr.ph.i.i.i.i.i.i391, %middle.block961, %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit
  %i.atz = sdiv i64 %i.asi, 4
  %i.aua = shl nsw i64 %i.atz, 2                  ; 3 uses
  %i.aub = sdiv i64 %i.asi, 2
  %i.auc = shl nsw i64 %i.aub, 1                  ; 9 uses
  %.off.i.i.i.i.i337 = add i64 %i.asi, 1
  %.not.i.i.i.i.i338 = icmp ult i64 %.off.i.i.i.i.i337, 3
  br i1 %.not.i.i.i.i.i338, label %bb.da, label %bb.cw

bb.cw:                                            ; preds = %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit.thread
  %i.aud = load <2 x double>, ptr %i.asj, align 16, !tbaa !45 ; 2 uses
  %i.aue = fmul <2 x double> %i.aud, %i.aud       ; 3 uses
  %i.auf = icmp sgt i64 %i.asi, 3
  br i1 %i.auf, label %bb.cx, label %bb.cz

bb.cx:                                            ; preds = %bb.cw
  %i.aug = getelementptr inbounds nuw i8, ptr %i.asj, i64 16
  %i.auh = load <2 x double>, ptr %i.aug, align 16, !tbaa !45 ; 2 uses
  %i.aui = fmul <2 x double> %i.auh, %i.auh       ; 2 uses
  %i.auj = icmp samesign ugt i64 %i.asi, 7
  br i1 %i.auj, label %.lr.ph.i.i.i.i.i350, label %._crit_edge.i.i.i.i.i347

._crit_edge.i.i.i.i.i347:                         ; preds = %.lr.ph.i.i.i.i.i350, %bb.cx
  %.075.lcssa.i.i.i.i.i348 = phi <2 x double> [ %i.aui, %bb.cx ], [ %i.auu, %.lr.ph.i.i.i.i.i350 ]
  %.072.lcssa.i.i.i.i.i349 = phi <2 x double> [ %i.aue, %bb.cx ], [ %i.aup, %.lr.ph.i.i.i.i.i350 ]
  %i.auk = fadd <2 x double> %.075.lcssa.i.i.i.i.i348, %.072.lcssa.i.i.i.i.i349 ; 2 uses
  %i.aul = icmp sgt i64 %i.auc, %i.aua
  br i1 %i.aul, label %bb.cy, label %bb.cz

.lr.ph.i.i.i.i.i350:                              ; preds = %bb.cx, %.lr.ph.i.i.i.i.i350
  %.05480.i.i.i.i.i351 = phi i64 [ %.054.i.i.i.i.i355, %.lr.ph.i.i.i.i.i350 ], [ 4, %bb.cx ] ; 3 uses
  %.054.in79.i.i.i.i.i352 = phi i64 [ %.05480.i.i.i.i.i351, %.lr.ph.i.i.i.i.i350 ], [ 0, %bb.cx ]
  %.07278.i.i.i.i.i353 = phi <2 x double> [ %i.aup, %.lr.ph.i.i.i.i.i350 ], [ %i.aue, %bb.cx ]
  %.07577.i.i.i.i.i354 = phi <2 x double> [ %i.auu, %.lr.ph.i.i.i.i.i350 ], [ %i.aui, %bb.cx ]
  %i.aum = getelementptr inbounds nuw [8 x i8], ptr %i.asj, i64 %.05480.i.i.i.i.i351
  %i.aun = load <2 x double>, ptr %i.aum, align 16, !tbaa !45 ; 2 uses
  %i.auo = fmul <2 x double> %i.aun, %i.aun
  %i.aup = fadd <2 x double> %.07278.i.i.i.i.i353, %i.auo ; 2 uses
  %i.auq = getelementptr inbounds nuw [8 x i8], ptr %i.asj, i64 %.054.in79.i.i.i.i.i352
  %i.aur = getelementptr inbounds nuw i8, ptr %i.auq, i64 48
  %i.aus = load <2 x double>, ptr %i.aur, align 16, !tbaa !45 ; 2 uses
  %i.aut = fmul <2 x double> %i.aus, %i.aus
  %i.auu = fadd <2 x double> %.07577.i.i.i.i.i354, %i.aut ; 2 uses
  %.054.i.i.i.i.i355 = add nuw nsw i64 %.05480.i.i.i.i.i351, 4 ; 2 uses
  %i.auv = icmp slt i64 %.054.i.i.i.i.i355, %i.aua
  br i1 %i.auv, label %.lr.ph.i.i.i.i.i350, label %._crit_edge.i.i.i.i.i347, !llvm.loop !4

bb.cy:                                            ; preds = %._crit_edge.i.i.i.i.i347
  %i.auw = getelementptr inbounds nuw [8 x i8], ptr %i.asj, i64 %i.aua
  %i.aux = load <2 x double>, ptr %i.auw, align 16, !tbaa !45 ; 2 uses
  %i.auy = fmul <2 x double> %i.aux, %i.aux
  %i.auz = fadd <2 x double> %i.auk, %i.auy
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %._crit_edge.i.i.i.i.i347, %bb.cw
  %.274.i.i.i.i.i339 = phi <2 x double> [ %i.aue, %bb.cw ], [ %i.auz, %bb.cy ], [ %i.auk, %._crit_edge.i.i.i.i.i347 ]
  %i.ava = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %.274.i.i.i.i.i339) ; 3 uses
  %i.avb = icmp slt i64 %i.auc, %i.asi
  br i1 %i.avb, label %.lr.ph85.i.i.i.i.i343.preheader, label %.loopexit558

.lr.ph85.i.i.i.i.i343.preheader:                  ; preds = %bb.cz
  %i.avc = sub i64 %i.asi, %i.auc
  %xtraiter1123 = and i64 %i.avc, 3               ; 2 uses
  %lcmp.mod1124.not = icmp eq i64 %xtraiter1123, 0
  br i1 %lcmp.mod1124.not, label %.lr.ph85.i.i.i.i.i343.prol.loopexit, label %.lr.ph85.i.i.i.i.i343.prol

.lr.ph85.i.i.i.i.i343.prol:                       ; preds = %.lr.ph85.i.i.i.i.i343.preheader, %.lr.ph85.i.i.i.i.i343.prol
  %.05283.i.i.i.i.i344.prol = phi i64 [ %i.avh, %.lr.ph85.i.i.i.i.i343.prol ], [ %i.auc, %.lr.ph85.i.i.i.i.i343.preheader ] ; 2 uses
  %.182.i.i.i.i.i345.prol = phi double [ %i.avg, %.lr.ph85.i.i.i.i.i343.prol ], [ %i.ava, %.lr.ph85.i.i.i.i.i343.preheader ]
  %prol.iter1125 = phi i64 [ %prol.iter1125.next, %.lr.ph85.i.i.i.i.i343.prol ], [ 0, %.lr.ph85.i.i.i.i.i343.preheader ]
  %i.avd = getelementptr inbounds [8 x i8], ptr %i.asj, i64 %.05283.i.i.i.i.i344.prol
  %i.ave = load double, ptr %i.avd, align 8, !tbaa !33 ; 2 uses
  %i.avf = fmul double %i.ave, %i.ave
  %i.avg = fadd double %.182.i.i.i.i.i345.prol, %i.avf ; 3 uses
  %i.avh = add nsw i64 %.05283.i.i.i.i.i344.prol, 1 ; 2 uses
  %prol.iter1125.next = add i64 %prol.iter1125, 1 ; 2 uses
  %prol.iter1125.cmp.not = icmp eq i64 %prol.iter1125.next, %xtraiter1123
  br i1 %prol.iter1125.cmp.not, label %.lr.ph85.i.i.i.i.i343.prol.loopexit, label %.lr.ph85.i.i.i.i.i343.prol, !llvm.loop !232

.lr.ph85.i.i.i.i.i343.prol.loopexit:              ; preds = %.lr.ph85.i.i.i.i.i343.prol, %.lr.ph85.i.i.i.i.i343.preheader
  %.lcssa1066.unr = phi double [ poison, %.lr.ph85.i.i.i.i.i343.preheader ], [ %i.avg, %.lr.ph85.i.i.i.i.i343.prol ]
  %.05283.i.i.i.i.i344.unr = phi i64 [ %i.auc, %.lr.ph85.i.i.i.i.i343.preheader ], [ %i.avh, %.lr.ph85.i.i.i.i.i343.prol ]
  %.182.i.i.i.i.i345.unr = phi double [ %i.ava, %.lr.ph85.i.i.i.i.i343.preheader ], [ %i.avg, %.lr.ph85.i.i.i.i.i343.prol ]
  %i.avi = sub i64 %i.auc, %i.asi
  %i.avj = icmp ugt i64 %i.avi, -4
  br i1 %i.avj, label %.loopexit558, label %.lr.ph85.i.i.i.i.i343

.lr.ph85.i.i.i.i.i343:                            ; preds = %.lr.ph85.i.i.i.i.i343.prol.loopexit, %.lr.ph85.i.i.i.i.i343
  %.05283.i.i.i.i.i344 = phi i64 [ %i.awd, %.lr.ph85.i.i.i.i.i343 ], [ %.05283.i.i.i.i.i344.unr, %.lr.ph85.i.i.i.i.i343.prol.loopexit ] ; 5 uses
  %.182.i.i.i.i.i345 = phi double [ %i.awc, %.lr.ph85.i.i.i.i.i343 ], [ %.182.i.i.i.i.i345.unr, %.lr.ph85.i.i.i.i.i343.prol.loopexit ]
  %i.avk = getelementptr inbounds [8 x i8], ptr %i.asj, i64 %.05283.i.i.i.i.i344
  %i.avl = load double, ptr %i.avk, align 8, !tbaa !33 ; 2 uses
  %i.avm = fmul double %i.avl, %i.avl
  %i.avn = fadd double %.182.i.i.i.i.i345, %i.avm
  %i.avo = getelementptr [8 x i8], ptr %i.asj, i64 %.05283.i.i.i.i.i344
  %i.avp = getelementptr i8, ptr %i.avo, i64 8
  %i.avq = load double, ptr %i.avp, align 8, !tbaa !33 ; 2 uses
  %i.avr = fmul double %i.avq, %i.avq
  %i.avs = fadd double %i.avn, %i.avr
  %i.avt = getelementptr [8 x i8], ptr %i.asj, i64 %.05283.i.i.i.i.i344
  %i.avu = getelementptr i8, ptr %i.avt, i64 16
  %i.avv = load double, ptr %i.avu, align 8, !tbaa !33 ; 2 uses
  %i.avw = fmul double %i.avv, %i.avv
  %i.avx = fadd double %i.avs, %i.avw
  %i.avy = getelementptr [8 x i8], ptr %i.asj, i64 %.05283.i.i.i.i.i344
  %i.avz = getelementptr i8, ptr %i.avy, i64 24
  %i.awa = load double, ptr %i.avz, align 8, !tbaa !33 ; 2 uses
  %i.awb = fmul double %i.awa, %i.awa
  %i.awc = fadd double %i.avx, %i.awb             ; 2 uses
  %i.awd = add nsw i64 %.05283.i.i.i.i.i344, 4    ; 2 uses
  %exitcond.not.i.i.i.i.i346.3 = icmp eq i64 %i.awd, %i.asi
  br i1 %exitcond.not.i.i.i.i.i346.3, label %.loopexit558, label %.lr.ph85.i.i.i.i.i343, !llvm.loop !5

bb.da:                                            ; preds = %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit.thread
  %i.awe = load double, ptr %i.asj, align 8, !tbaa !33 ; 2 uses
  %i.awf = fmul double %i.awe, %i.awe
  %i.awg = call double @llvm.sqrt.f64(double %i.awf)
  br label %._crit_edge.i.i.i.i.i.i

.loopexit558:                                     ; preds = %.lr.ph85.i.i.i.i.i343.prol.loopexit, %.lr.ph85.i.i.i.i.i343, %bb.cz
  %.0.i.i.i341 = phi double [ %i.ava, %bb.cz ], [ %.lcssa1066.unr, %.lr.ph85.i.i.i.i.i343.prol.loopexit ], [ %i.awc, %.lr.ph85.i.i.i.i.i343 ]
  %.scalar.i342 = call noundef double @llvm.sqrt.f64(double %.0.i.i.i341) ; 3 uses
  %i.awh = icmp sgt i64 %i.asi, 1
  br i1 %i.awh, label %.lr.ph.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %.loopexit558
  %i.awi = insertelement <2 x double> poison, double %.scalar.i342, i64 0
  %i.awj = shufflevector <2 x double> %i.awi, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %bb.da, %.loopexit558
  %42 = phi i64 [ %i.auc, %.loopexit558 ], [ 0, %bb.da ], [ %i.auc, %.lr.ph.i.i.i.i.i.i ] ; 5 uses
  %.scalar.i342544 = phi double [ %.scalar.i342, %.loopexit558 ], [ %i.awg, %bb.da ], [ %.scalar.i342, %.lr.ph.i.i.i.i.i.i ] ; 5 uses
  %i.awk = icmp slt i64 %42, %i.asi
  br i1 %i.awk, label %.lr.ph.i.i.i.i.i.i.i356.preheader, label %.loopexit557

.lr.ph.i.i.i.i.i.i.i356.preheader:                ; preds = %._crit_edge.i.i.i.i.i.i
  %i.awl = sub i64 %i.asi, %42                    ; 2 uses
  %min.iters.check934 = icmp ult i64 %i.awl, 2
  br i1 %min.iters.check934, label %.lr.ph.i.i.i.i.i.i.i356.preheader1044, label %vector.ph935

vector.ph935:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i356.preheader
  %i.awm = and i64 %i.asi, 1                      ; 2 uses
  %n.vec936 = sub nuw i64 %i.awl, %i.awm          ; 2 uses
  %i.awn = add i64 %42, %n.vec936
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.scalar.i342544, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.awo = getelementptr [8 x i8], ptr %i.asj, i64 %42
  br label %vector.body937

vector.body937:                                   ; preds = %vector.body937, %vector.ph935
  %index938 = phi i64 [ 0, %vector.ph935 ], [ %index.next940, %vector.body937 ] ; 2 uses
  %i.awp = getelementptr [8 x i8], ptr %i.awo, i64 %index938 ; 2 uses
  %wide.load939 = load <2 x double>, ptr %i.awp, align 8, !tbaa !33
  %i.awq = fdiv <2 x double> %wide.load939, %broadcast.splat
  store <2 x double> %i.awq, ptr %i.awp, align 8, !tbaa !33
  %index.next940 = add nuw i64 %index938, 2       ; 2 uses
  %i.awr = icmp eq i64 %index.next940, %n.vec936
  br i1 %i.awr, label %middle.block941, label %vector.body937, !llvm.loop !233

middle.block941:                                  ; preds = %vector.body937
  %cmp.n942 = icmp eq i64 %i.awm, 0
  br i1 %cmp.n942, label %.loopexit557, label %.lr.ph.i.i.i.i.i.i.i356.preheader1044

.lr.ph.i.i.i.i.i.i.i356.preheader1044:            ; preds = %.lr.ph.i.i.i.i.i.i.i356.preheader, %middle.block941
  %.05.i.i.i.i.i.i.i357.ph = phi i64 [ %42, %.lr.ph.i.i.i.i.i.i.i356.preheader ], [ %i.awn, %middle.block941 ]
  br label %.lr.ph.i.i.i.i.i.i.i356

.lr.ph.i.i.i.i.i.i.i356:                          ; preds = %.lr.ph.i.i.i.i.i.i.i356.preheader1044, %.lr.ph.i.i.i.i.i.i.i356
  %.05.i.i.i.i.i.i.i357 = phi i64 [ %i.awv, %.lr.ph.i.i.i.i.i.i.i356 ], [ %.05.i.i.i.i.i.i.i357.ph, %.lr.ph.i.i.i.i.i.i.i356.preheader1044 ] ; 2 uses
  %i.aws = getelementptr inbounds [8 x i8], ptr %i.asj, i64 %.05.i.i.i.i.i.i.i357 ; 2 uses
  %i.awt = load double, ptr %i.aws, align 8, !tbaa !33
  %i.awu = fdiv double %i.awt, %.scalar.i342544
  store double %i.awu, ptr %i.aws, align 8, !tbaa !33
  %i.awv = add nsw i64 %.05.i.i.i.i.i.i.i357, 1   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i358 = icmp eq i64 %i.awv, %i.asi
  br i1 %exitcond.not.i.i.i.i.i.i.i358, label %.loopexit557, label %.lr.ph.i.i.i.i.i.i.i356, !llvm.loop !234

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.011.i.i.i.i.i.i = phi i64 [ %i.awz, %.lr.ph.i.i.i.i.i.i ], [ 0, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %i.aww = getelementptr inbounds nuw [8 x i8], ptr %i.asj, i64 %.011.i.i.i.i.i.i ; 2 uses
  %i.awx = load <2 x double>, ptr %i.aww, align 16, !tbaa !45
  %i.awy = fdiv <2 x double> %i.awx, %i.awj
  store <2 x double> %i.awy, ptr %i.aww, align 16, !tbaa !45
  %i.awz = add nuw nsw i64 %.011.i.i.i.i.i.i, 2   ; 2 uses
  %i.axa = icmp slt i64 %i.awz, %i.auc
  br i1 %i.axa, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !235

.loopexit557:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i356, %middle.block941, %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit, %._crit_edge.i.i.i.i.i.i
  %.scalar.i342544771 = phi double [ 0.000000e+00, %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit ], [ %.scalar.i342544, %._crit_edge.i.i.i.i.i.i ], [ %.scalar.i342544, %middle.block941 ], [ %.scalar.i342544, %.lr.ph.i.i.i.i.i.i.i356 ] ; 2 uses
  %i.axb = load i64, ptr %i.ao, align 8, !tbaa !271 ; 2 uses
  %i.axc = zext nneg i32 %.1.2768 to i64
  %i.axd = mul nsw i64 %i.axb, %i.axc
  %i.axe = load ptr, ptr %2, align 8, !tbaa !273
  %i.axf = getelementptr [4 x i8], ptr %i.axe, i64 %i.axd
  %i.axg = getelementptr [4 x i8], ptr %i.axf, i64 %indvars.iv670
  %i.axh = load i32, ptr %i.axg, align 4, !tbaa !46
  %i.axi = sext i32 %i.axh to i64                 ; 2 uses
  %i.axj = load ptr, ptr %3, align 8, !tbaa !273
  %i.axk = getelementptr [4 x i8], ptr %i.axj, i64 %i.axi ; 2 uses
  %i.axl = load i32, ptr %i.axk, align 4, !tbaa !46
  %i.axm = zext i32 %i.axl to i64
  %i.axn = icmp eq i64 %indvars.iv670, %i.axm     ; 2 uses
  %i.axo = load i64, ptr %i.at, align 8, !tbaa !271
  %i.axp = select i1 %i.axn, i64 %i.axo, i64 0
  %i.axq = getelementptr [4 x i8], ptr %i.axk, i64 %i.axp
  %i.axr = load i32, ptr %i.axq, align 4, !tbaa !46
  %i.axs = load ptr, ptr %4, align 8, !tbaa !273
  %i.axt = load i64, ptr %i.au, align 8, !tbaa !271
  %i.axu = select i1 %i.axn, i64 %i.axt, i64 0
  %i.axv = getelementptr [4 x i8], ptr %i.axs, i64 %i.axi
  %i.axw = getelementptr [4 x i8], ptr %i.axv, i64 %i.axu
  %i.axx = load i32, ptr %i.axw, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #25
  %i.axy = sext i32 %i.axr to i64
  %i.axz = sext i32 %i.axx to i64
  %i.aya = load ptr, ptr %1, align 8, !tbaa !273
  %i.ayb = mul nsw i64 %i.axb, %i.axz
  %i.ayc = getelementptr [4 x i8], ptr %i.aya, i64 %i.axy
  %i.ayd = getelementptr [4 x i8], ptr %i.ayc, i64 %i.ayb
  %i.aye = load i32, ptr %i.ayd, align 4, !tbaa !46
  %i.ayf = sext i32 %i.aye to i64                 ; 2 uses
  %i.ayg = load ptr, ptr %0, align 8, !tbaa !38, !noalias !286 ; 2 uses
  %i.ayh = ptrtoaddr ptr %i.ayg to i64
  %i.ayi = getelementptr inbounds [8 x i8], ptr %i.ayg, i64 %i.ayf ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %32, i8 0, i64 16, i1 false)
  %i.ayj = load i64, ptr %i.ar, align 8, !tbaa !31 ; 3 uses
  %i.ayk = icmp eq i64 %i.ayj, 0
  br i1 %i.ayk, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i395, label %bb.db

bb.db:                                            ; preds = %.loopexit557
  %i.ayl = sdiv i64 9223372036854775807, %i.ayj
  %i.aym = icmp slt i64 %i.ayl, 1
  br i1 %i.aym, label %bb.dc, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i395

bb.dc:                                            ; preds = %bb.db
  %i.ayn = call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ayn, align 8, !tbaa !41
  invoke void @__cxa_throw(ptr nonnull %i.ayn, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #26
          to label %.noexc.i404 unwind label %.loopexit.split-lp569

.noexc.i404:                                      ; preds = %bb.dc
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i395: ; preds = %bb.db, %.loopexit557
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %32, i64 noundef 1, i64 noundef %i.ayj)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS2_EEEEvRKNS_9EigenBaseIT_EE.exit.i396 unwind label %.loopexit568

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS2_EEEEvRKNS_9EigenBaseIT_EE.exit.i396: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i395
  %i.ayo = load i64, ptr %i.c, align 8, !tbaa !24 ; 4 uses
  %i.ayp = load ptr, ptr %30, align 8, !tbaa !32  ; 5 uses
  %i.ayq = ptrtoaddr ptr %i.ayp to i64
  %i.ayr = load i64, ptr %i.ar, align 8, !tbaa !31 ; 3 uses
  %i.ays = load i64, ptr %i.av, align 8, !tbaa !31
  %.not8.i.i.i.i.i.i397 = icmp eq i64 %i.ays, %i.ayr
  br i1 %.not8.i.i.i.i.i.i397, label %bb.dd, label %thread-pre-split.i.i.i.i.i398

thread-pre-split.i.i.i.i.i398:                    ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS2_EEEEvRKNS_9EigenBaseIT_EE.exit.i396
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %32, i64 noundef 1, i64 noundef %i.ayr)
          to label %.noexc5.i399 unwind label %.loopexit568

.noexc5.i399:                                     ; preds = %thread-pre-split.i.i.i.i.i398
  %.pr.i.i.i.i.i400 = load i64, ptr %i.av, align 8, !tbaa !31
  br label %bb.dd

bb.dd:                                            ; preds = %.noexc5.i399, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS2_EEEEvRKNS_9EigenBaseIT_EE.exit.i396
  %i.ayt = phi i64 [ %.pr.i.i.i.i.i400, %.noexc5.i399 ], [ %i.ayr, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS2_EEEEvRKNS_9EigenBaseIT_EE.exit.i396 ] ; 7 uses
  %i.ayu = load ptr, ptr %32, align 8, !tbaa !32  ; 5 uses
  %i.ayv = ptrtoaddr ptr %i.ayu to i64            ; 2 uses
  %i.ayw = icmp sgt i64 %i.ayt, 0
  br i1 %i.ayw, label %.lr.ph.i.i.i.i.i.i401.preheader, label %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit360

.lr.ph.i.i.i.i.i.i401.preheader:                  ; preds = %bb.dd
  %min.iters.check920 = icmp ugt i64 %i.ayt, 7
  %ident.check915.not = icmp eq i64 %i.ayo, 1
  %or.cond1035 = select i1 %min.iters.check920, i1 %ident.check915.not, i1 false
  br i1 %or.cond1035, label %vector.memcheck916, label %.lr.ph.i.i.i.i.i.i401.preheader1043

vector.memcheck916:                               ; preds = %.lr.ph.i.i.i.i.i.i401.preheader
  %i.ayx = shl nsw i64 %i.ayf, 3
  %i.ayy = add i64 %i.ayx, %i.ayh
  %i.ayz = sub i64 %i.ayy, %i.ayv
  %diff.check917 = icmp ugt i64 %i.ayz, -32
  %i.aza = sub i64 %i.ayq, %i.ayv
  %diff.check918 = icmp ugt i64 %i.aza, -32
  %conflict.rdx = or i1 %diff.check917, %diff.check918
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i.i.i401.preheader1043, label %vector.ph921

vector.ph921:                                     ; preds = %vector.memcheck916
  %n.vec922 = and i64 %i.ayt, 9223372036854775804 ; 3 uses
  br label %vector.body923

vector.body923:                                   ; preds = %vector.body923, %vector.ph921
  %index924 = phi i64 [ 0, %vector.ph921 ], [ %index.next929, %vector.body923 ] ; 4 uses
  %i.azb = getelementptr inbounds nuw [8 x i8], ptr %i.ayu, i64 %index924 ; 2 uses
  %i.azc = getelementptr inbounds [8 x i8], ptr %i.ayi, i64 %index924 ; 2 uses
  %i.azd = getelementptr inbounds nuw i8, ptr %i.azc, i64 16
  %wide.load925 = load <2 x double>, ptr %i.azc, align 8, !tbaa !33
  %wide.load926 = load <2 x double>, ptr %i.azd, align 8, !tbaa !33
  %i.aze = getelementptr inbounds nuw [8 x i8], ptr %i.ayp, i64 %index924 ; 2 uses
  %i.azf = getelementptr inbounds nuw i8, ptr %i.aze, i64 16
  %wide.load927 = load <2 x double>, ptr %i.aze, align 8, !tbaa !33
  %wide.load928 = load <2 x double>, ptr %i.azf, align 8, !tbaa !33
  %i.azg = fsub <2 x double> %wide.load925, %wide.load927
  %i.azh = fsub <2 x double> %wide.load926, %wide.load928
  %i.azi = getelementptr inbounds nuw i8, ptr %i.azb, i64 16
  store <2 x double> %i.azg, ptr %i.azb, align 8, !tbaa !33
  store <2 x double> %i.azh, ptr %i.azi, align 8, !tbaa !33
  %index.next929 = add nuw i64 %index924, 4       ; 2 uses
  %i.azj = icmp eq i64 %index.next929, %n.vec922
  br i1 %i.azj, label %middle.block930, label %vector.body923, !llvm.loop !238

middle.block930:                                  ; preds = %vector.body923
  %cmp.n931 = icmp eq i64 %i.ayt, %n.vec922
  br i1 %cmp.n931, label %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit360, label %.lr.ph.i.i.i.i.i.i401.preheader1043

.lr.ph.i.i.i.i.i.i401.preheader1043:              ; preds = %vector.memcheck916, %.lr.ph.i.i.i.i.i.i401.preheader, %middle.block930
  %.05.i.i.i.i.i.i402.ph = phi i64 [ 0, %vector.memcheck916 ], [ 0, %.lr.ph.i.i.i.i.i.i401.preheader ], [ %n.vec922, %middle.block930 ] ; 6 uses
  %.neg1144 = or disjoint i64 %.05.i.i.i.i.i.i402.ph, 1
  %xtraiter1126 = and i64 %i.ayt, 1
  %lcmp.mod1127.not = icmp eq i64 %xtraiter1126, 0
  br i1 %lcmp.mod1127.not, label %.lr.ph.i.i.i.i.i.i401.prol.loopexit, label %.lr.ph.i.i.i.i.i.i401.prol

.lr.ph.i.i.i.i.i.i401.prol:                       ; preds = %.lr.ph.i.i.i.i.i.i401.preheader1043
  %i.azk = getelementptr inbounds nuw [8 x i8], ptr %i.ayu, i64 %.05.i.i.i.i.i.i402.ph
  %i.azl = mul nsw i64 %.05.i.i.i.i.i.i402.ph, %i.ayo
  %i.azm = getelementptr inbounds [8 x i8], ptr %i.ayi, i64 %i.azl
  %i.azn = load double, ptr %i.azm, align 8, !tbaa !33
  %i.azo = getelementptr inbounds nuw [8 x i8], ptr %i.ayp, i64 %.05.i.i.i.i.i.i402.ph
  %i.azp = load double, ptr %i.azo, align 8, !tbaa !33
  %i.azq = fsub double %i.azn, %i.azp
  store double %i.azq, ptr %i.azk, align 8, !tbaa !33
  %i.azr = or disjoint i64 %.05.i.i.i.i.i.i402.ph, 1
  br label %.lr.ph.i.i.i.i.i.i401.prol.loopexit

.lr.ph.i.i.i.i.i.i401.prol.loopexit:              ; preds = %.lr.ph.i.i.i.i.i.i401.prol, %.lr.ph.i.i.i.i.i.i401.preheader1043
  %.05.i.i.i.i.i.i402.unr = phi i64 [ %.05.i.i.i.i.i.i402.ph, %.lr.ph.i.i.i.i.i.i401.preheader1043 ], [ %i.azr, %.lr.ph.i.i.i.i.i.i401.prol ]
  %i.azs = icmp eq i64 %i.ayt, %.neg1144
  br i1 %i.azs, label %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit360, label %.lr.ph.i.i.i.i.i.i401

.lr.ph.i.i.i.i.i.i401:                            ; preds = %.lr.ph.i.i.i.i.i.i401.prol.loopexit, %.lr.ph.i.i.i.i.i.i401
  %.05.i.i.i.i.i.i402 = phi i64 [ %i.bai, %.lr.ph.i.i.i.i.i.i401 ], [ %.05.i.i.i.i.i.i402.unr, %.lr.ph.i.i.i.i.i.i401.prol.loopexit ] ; 5 uses
  %i.azt = getelementptr inbounds nuw [8 x i8], ptr %i.ayu, i64 %.05.i.i.i.i.i.i402
  %i.azu = mul nsw i64 %.05.i.i.i.i.i.i402, %i.ayo
  %i.azv = getelementptr inbounds [8 x i8], ptr %i.ayi, i64 %i.azu
  %i.azw = load double, ptr %i.azv, align 8, !tbaa !33
  %i.azx = getelementptr inbounds nuw [8 x i8], ptr %i.ayp, i64 %.05.i.i.i.i.i.i402
  %i.azy = load double, ptr %i.azx, align 8, !tbaa !33
  %i.azz = fsub double %i.azw, %i.azy
  store double %i.azz, ptr %i.azt, align 8, !tbaa !33
  %i.baa = add nuw nsw i64 %.05.i.i.i.i.i.i402, 1 ; 3 uses
  %i.bab = getelementptr inbounds nuw [8 x i8], ptr %i.ayu, i64 %i.baa
  %i.bac = mul nsw i64 %i.baa, %i.ayo
  %i.bad = getelementptr inbounds [8 x i8], ptr %i.ayi, i64 %i.bac
  %i.bae = load double, ptr %i.bad, align 8, !tbaa !33
  %i.baf = getelementptr inbounds nuw [8 x i8], ptr %i.ayp, i64 %i.baa
  %i.bag = load double, ptr %i.baf, align 8, !tbaa !33
  %i.bah = fsub double %i.bae, %i.bag
  store double %i.bah, ptr %i.bab, align 8, !tbaa !33
  %i.bai = add nuw nsw i64 %.05.i.i.i.i.i.i402, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i403.1 = icmp eq i64 %i.bai, %i.ayt
  br i1 %exitcond.not.i.i.i.i.i.i403.1, label %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit360, label %.lr.ph.i.i.i.i.i.i401, !llvm.loop !239

.loopexit568:                                     ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i395, %thread-pre-split.i.i.i.i.i398
  %lpad.loopexit570 = landingpad { ptr, i32 }
          cleanup
  br label %.body405

.loopexit.split-lp569:                            ; preds = %bb.dc
  %lpad.loopexit.split-lp571 = landingpad { ptr, i32 }
          cleanup
  br label %.body405

_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit360: ; preds = %.lr.ph.i.i.i.i.i.i401.prol.loopexit, %.lr.ph.i.i.i.i.i.i401, %middle.block930, %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #25
  %i.baj = load i64, ptr %i.as, align 8, !tbaa !31 ; 22 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %33, i8 0, i64 24, i1 false)
  %i.bak = icmp sgt i64 %i.baj, 4611686018427387903
  br i1 %i.bak, label %.invoke801, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i362

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i362: ; preds = %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit360
  %.not.i408 = icmp eq i64 %i.baj, 0
  br i1 %.not.i408, label %.thread770, label %bb.de

bb.de:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i362
  %i.bal = icmp sgt i64 %i.baj, 0
  br i1 %i.bal, label %bb.df, label %bb.dh

bb.df:                                            ; preds = %bb.de
  %.not761 = icmp samesign ult i64 %i.baj, 1152921504606846976
end_hunk_0
begin_hunk_1_@_ZN3igl34per_vertex_point_to_plane_quadricsERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS1_IiLin1ELin1ELi0ELin1ELin1EEES7_S7_S7_RSt6vectorISt5tupleIJS2_NS1_IdLi1ELin1ELi1ELi1ELin1EEEdEESaISB_EE:bb.a
  store <2 x ptr> %i.da, ptr %36, align 16, !tbaa !290, !alias.scope !289
  store i8 0, ptr %i.az, align 16, !tbaa !55, !alias.scope !289
  %i.bgy = load i64, ptr %i.bb, align 8, !tbaa !24, !noalias !289
  %i.bgz = load i64, ptr %i.bc, align 8, !tbaa !23, !noalias !289
  %.sroa.speculated.i.i.i = call noundef i64 @llvm.smin.i64(i64 %i.bgz, i64 %i.bgy)
  store i64 %.sroa.speculated.i.i.i, ptr %i.ba, align 8, !tbaa !56, !alias.scope !289
  store i64 0, ptr %i.bd, align 16, !tbaa !57, !alias.scope !289
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_19HouseholderSequenceIS2_NS1_IdLin1ELi1ELi0ELin1ELi1EEELi1EEEEERKNS_9EigenBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %35, ptr noundef nonnull align 1 dereferenceable(1) %36)
          to label %bb.dk unwind label %bb.ds

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #25
  %i.bha = load i64, ptr %i.as, align 8, !tbaa !31 ; 2 uses
  %i.bhb = add nsw i64 %i.bha, -2                 ; 2 uses
  %i.bhc = load i64, ptr %i.be, align 8, !tbaa !23, !noalias !291
  %i.bhd = sub nsw i64 %i.bhc, %i.bhb             ; 2 uses
  %i.bhe = load ptr, ptr %35, align 8, !tbaa !38, !noalias !291
  %i.bhf = load i64, ptr %i.bf, align 8, !tbaa !24, !noalias !291 ; 2 uses
  %i.bhg = mul nsw i64 %i.bhf, %i.bhd
  %i.bhh = getelementptr inbounds [8 x i8], ptr %i.bhe, i64 %i.bhg
  store ptr %i.bhh, ptr %38, align 8
  store i64 %i.bha, ptr %.sroa.5427.0..sroa_idx, align 8
  store i64 %i.bhb, ptr %.sroa.6.0..sroa_idx, align 8
  store ptr %35, ptr %.sroa.7.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.8.0..sroa_idx, align 8
  store i64 %i.bhd, ptr %.sroa.9428.0..sroa_idx, align 8
  store i64 %i.bhf, ptr %.sroa.10.0..sroa_idx, align 8
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_9TransposeIKNS_5BlockIKS2_Lin1ELin1ELb0EEEEEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %37, ptr noundef nonnull align 1 dereferenceable(1) %38)
          to label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_9TransposeIKNS_5BlockIKS1_Lin1ELin1ELb0EEEEEEERKNS_9EigenBaseIT_EE.exit unwind label %bb.dt

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_9TransposeIKNS_5BlockIKS1_Lin1ELin1ELb0EEEEEEERKNS_9EigenBaseIT_EE.exit: ; preds = %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #25
  %i.bhi = load i64, ptr %i.bg, align 8, !tbaa !24 ; 5 uses
  %i.bhj = add nsw i64 %i.bhi, 1                  ; 11 uses
  %i.bhk = load i64, ptr %i.as, align 8, !tbaa !31 ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %39, i8 0, i64 24, i1 false)
  %i.bhl = icmp eq i64 %i.bhj, 0
  %i.bhm = icmp eq i64 %i.bhk, 0
  %or.cond.i.i.i.i372 = or i1 %i.bhl, %i.bhm
  br i1 %or.cond.i.i.i.i372, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i373, label %bb.dl

bb.dl:                                            ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_9TransposeIKNS_5BlockIKS1_Lin1ELin1ELb0EEEEEEERKNS_9EigenBaseIT_EE.exit
  %i.bhn = sdiv i64 9223372036854775807, %i.bhk
  %.not547 = icmp slt i64 %i.bhi, %i.bhn
  br i1 %.not547, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i373, label %.invoke803

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i373: ; preds = %bb.dl, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_9TransposeIKNS_5BlockIKS1_Lin1ELin1ELb0EEEEEEERKNS_9EigenBaseIT_EE.exit
  %i.bho = mul nsw i64 %i.bhk, %i.bhj             ; 4 uses
  %.not.i415 = icmp eq i64 %i.bho, 0
  br i1 %.not.i415, label %bb.dp, label %bb.dm

bb.dm:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i373
  %i.bhp = icmp sgt i64 %i.bho, 0
  br i1 %i.bhp, label %bb.dn, label %.sink.split.i416

bb.dn:                                            ; preds = %bb.dm
  %i.bhq = icmp samesign ugt i64 %i.bho, 2305843009213693951
  br i1 %i.bhq, label %.invoke803, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i418

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i418: ; preds = %bb.dn
  %i.bhr = shl nuw i64 %i.bho, 3
  %i.bhs = call noalias ptr @malloc(i64 noundef %i.bhr) #27 ; 2 uses
  %i.bht = icmp eq ptr %i.bhs, null
  br i1 %i.bht, label %.invoke803, label %.sink.split.i416

.invoke803:                                       ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i418, %bb.dn, %bb.dl
  %i.bhu = call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bhu, align 8, !tbaa !41
  invoke void @__cxa_throw(ptr nonnull %i.bhu, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #26
          to label %.cont804 unwind label %bb.do

.cont804:                                         ; preds = %.invoke803
  unreachable

.sink.split.i416:                                 ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i418, %bb.dm
  %.sink.i417 = phi ptr [ %i.bhs, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i418 ], [ null, %bb.dm ] ; 2 uses
  store ptr %.sink.i417, ptr %39, align 8, !tbaa !38
  br label %bb.dp

bb.do:                                            ; preds = %.invoke803
  %i.bhv = landingpad { ptr, i32 }
          cleanup
  br label %.body375

bb.dp:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i373, %.sink.split.i416
  %i.bhw = phi ptr [ null, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i373 ], [ %.sink.i417, %.sink.split.i416 ] ; 6 uses
  store i64 %i.bhj, ptr %i.bh, align 8, !tbaa !24
  store i64 %i.bhk, ptr %i.bi, align 8, !tbaa !23
  %i.bhx = load ptr, ptr %31, align 8, !tbaa !32, !noalias !292 ; 5 uses
  %i.bhy = icmp sgt i64 %i.bhk, 0
  br i1 %i.bhy, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.preheader, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEElsINS1_IdLi1ELin1ELi1ELi1ELin1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit381

.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.preheader:  ; preds = %bb.dp
  %xtraiter1138 = and i64 %i.bhk, 3               ; 3 uses
  %i.bhz = icmp ult i64 %i.bhk, 4
  br i1 %i.bhz, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.epil.preheader, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.preheader.new

.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.preheader.new: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.preheader
  %unroll_iter1142 = and i64 %i.bhk, 9223372036854775804
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377

.preheader.i.i.i.i.i.i.i.i.i.i.i.i377:            ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.preheader.new
  %.0810.i.i.i.i.i.i.i.i.i.i.i.i378 = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.preheader.new ], [ %i.bip, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377 ] ; 6 uses
  %niter1143 = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.preheader.new ], [ %niter1143.next.3, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377 ]
  %i.bia = mul nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i378, %i.bhj
  %i.bib = getelementptr [8 x i8], ptr %i.bhw, i64 %i.bia
  %i.bic = getelementptr [8 x i8], ptr %i.bhx, i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i378
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i379 = load double, ptr %i.bic, align 8, !tbaa !33, !noalias !292
  store double %.pre.i.i.i.i.i.i.i.i.i.i.i.i379, ptr %i.bib, align 8, !tbaa !33, !noalias !292
  %i.bid = or disjoint i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i378, 1 ; 2 uses
  %i.bie = mul nsw i64 %i.bid, %i.bhj
  %i.bif = getelementptr [8 x i8], ptr %i.bhw, i64 %i.bie
  %i.big = getelementptr [8 x i8], ptr %i.bhx, i64 %i.bid
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i379.1 = load double, ptr %i.big, align 8, !tbaa !33, !noalias !292
  store double %.pre.i.i.i.i.i.i.i.i.i.i.i.i379.1, ptr %i.bif, align 8, !tbaa !33, !noalias !292
  %i.bih = or disjoint i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i378, 2 ; 2 uses
  %i.bii = mul nsw i64 %i.bih, %i.bhj
  %i.bij = getelementptr [8 x i8], ptr %i.bhw, i64 %i.bii
  %i.bik = getelementptr [8 x i8], ptr %i.bhx, i64 %i.bih
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i379.2 = load double, ptr %i.bik, align 8, !tbaa !33, !noalias !292
  store double %.pre.i.i.i.i.i.i.i.i.i.i.i.i379.2, ptr %i.bij, align 8, !tbaa !33, !noalias !292
  %i.bil = or disjoint i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i378, 3 ; 2 uses
  %i.bim = mul nsw i64 %i.bil, %i.bhj
  %i.bin = getelementptr [8 x i8], ptr %i.bhw, i64 %i.bim
  %i.bio = getelementptr [8 x i8], ptr %i.bhx, i64 %i.bil
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i379.3 = load double, ptr %i.bio, align 8, !tbaa !33, !noalias !292
  store double %.pre.i.i.i.i.i.i.i.i.i.i.i.i379.3, ptr %i.bin, align 8, !tbaa !33, !noalias !292
  %i.bip = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i378, 4 ; 2 uses
  %niter1143.next.3 = add nuw nsw i64 %niter1143, 4 ; 2 uses
  %niter1143.ncmp.3 = icmp eq i64 %niter1143.next.3, %unroll_iter1142
  br i1 %niter1143.ncmp.3, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEElsINS1_IdLi1ELin1ELi1ELi1ELin1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit381.loopexit.unr-lcssa, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377, !llvm.loop !219

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEElsINS1_IdLi1ELin1ELi1ELi1ELin1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit381.loopexit.unr-lcssa: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377
  %lcmp.mod1140.not = icmp eq i64 %xtraiter1138, 0
  br i1 %lcmp.mod1140.not, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEElsINS1_IdLi1ELin1ELi1ELi1ELin1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit381, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.epil.preheader

.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.epil.preheader: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEElsINS1_IdLi1ELin1ELi1ELi1ELin1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit381.loopexit.unr-lcssa, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.preheader
  %.0810.i.i.i.i.i.i.i.i.i.i.i.i378.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.preheader ], [ %i.bip, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEElsINS1_IdLi1ELin1ELi1ELi1ELin1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit381.loopexit.unr-lcssa ]
  %lcmp.mod1141 = icmp ne i64 %xtraiter1138, 0
  call void @llvm.assume(i1 %lcmp.mod1141)
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.epil

.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.epil:       ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.epil, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.epil.preheader
  %.0810.i.i.i.i.i.i.i.i.i.i.i.i378.epil = phi i64 [ %i.bit, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.epil ], [ %.0810.i.i.i.i.i.i.i.i.i.i.i.i378.epil.init, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.epil.preheader ] ; 3 uses
  %epil.iter1139 = phi i64 [ %epil.iter1139.next, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.epil ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.epil.preheader ]
  %i.biq = mul nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i378.epil, %i.bhj
  %i.bir = getelementptr [8 x i8], ptr %i.bhw, i64 %i.biq
  %i.bis = getelementptr [8 x i8], ptr %i.bhx, i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i378.epil
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i379.epil = load double, ptr %i.bis, align 8, !tbaa !33, !noalias !292
  store double %.pre.i.i.i.i.i.i.i.i.i.i.i.i379.epil, ptr %i.bir, align 8, !tbaa !33, !noalias !292
  %i.bit = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i378.epil, 1
  %epil.iter1139.next = add i64 %epil.iter1139, 1 ; 2 uses
  %epil.iter1139.cmp.not = icmp eq i64 %epil.iter1139.next, %xtraiter1138
  br i1 %epil.iter1139.cmp.not, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEElsINS1_IdLi1ELin1ELi1ELi1ELin1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit381, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.epil, !llvm.loop !263

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEElsINS1_IdLi1ELin1ELi1ELi1ELin1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit381: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEElsINS1_IdLi1ELin1ELi1ELi1ELin1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit381.loopexit.unr-lcssa, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.epil, %bb.dp
  %i.biu = load i64, ptr %.phi.trans.insert14.i, align 8, !tbaa !23 ; 2 uses
  %.not.i382 = icmp ne i64 %i.biu, 0              ; 2 uses
  %.not8.i386 = icmp ne i64 %i.bhi, 1             ; 2 uses
  %narrow = or i1 %.not.i382, %.not8.i386
  %.sroa.5.0 = zext i1 %narrow to i64             ; 2 uses
  %i.biv = or i1 %.not.i382, %.not8.i386
  %i.biw = select i1 %i.biv, i64 0, i64 %i.bhk    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.bix = getelementptr inbounds nuw [8 x i8], ptr %i.bhw, i64 %.sroa.5.0
  %i.biy = mul nsw i64 %i.biw, %i.bhj
  %i.biz = getelementptr inbounds [8 x i8], ptr %i.bix, i64 %i.biy ; 2 uses
  store ptr %i.biz, ptr %10, align 8, !tbaa !59, !alias.scope !293
  store i64 %i.bhi, ptr %i.bj, align 8, !tbaa !26, !alias.scope !293
  store i64 %i.biu, ptr %i.bk, align 8, !tbaa !26, !alias.scope !293
  store ptr %39, ptr %i.bl, align 8, !tbaa !60, !alias.scope !293
  store i64 %.sroa.5.0, ptr %i.bm, align 8, !tbaa !26, !alias.scope !293
  store i64 %i.biw, ptr %i.bn, align 8, !tbaa !26, !alias.scope !293
  store i64 %i.bhj, ptr %i.bo, align 8, !tbaa !63, !alias.scope !293
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.bja = load ptr, ptr %37, align 8, !tbaa !38
  store ptr %i.bja, ptr %6, align 8, !tbaa !294
  store i64 %i.bhi, ptr %i.bp, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store ptr %i.biz, ptr %7, align 8, !tbaa !68
  store i64 %i.bhj, ptr %i.bq, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store ptr %7, ptr %8, align 8, !tbaa !70
  store ptr %6, ptr %i.br, align 8, !tbaa !295
  store ptr %9, ptr %i.bs, align 8, !tbaa !296
  store ptr %10, ptr %i.bt, align 8, !tbaa !74
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_(ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.dq unwind label %bb.du

bb.dq:                                            ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEElsINS1_IdLi1ELin1ELi1ELi1ELin1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit381
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #25
  %i.bjb = fmul double %.scalar.i342544771, %.scalar.i342544771
  invoke fastcc void @"_ZZN3igl34per_vertex_point_to_plane_quadricsERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS1_IiLin1ELin1ELi0ELin1ELin1EEES7_S7_S7_RSt6vectorISt5tupleIJS2_NS1_IdLi1ELin1ELi1ELi1ELin1EEEdEESaISB_EEENK3$_0clERKSA_S4_d"(ptr dead_on_unwind noalias writable align 8 %40, ptr %14, ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef nonnull align 8 dereferenceable(24) %39, double noundef %i.bjb)
          to label %.preheader555.preheader unwind label %bb.dv

.preheader555.preheader:                          ; preds = %bb.dq
  %.not = icmp eq i32 %.1.2768, 0
  br i1 %.not, label %.preheader555.1.thread, label %bb.dw

bb.dr:                                            ; preds = %_ZN5Eigen16CommaInitializerINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEcmINS_9TransposeIKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit
  %i.bjc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.ds:                                            ; preds = %bb.dj
  %i.bjd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #25
  br label %bb.ec

bb.dt:                                            ; preds = %bb.dk
  %i.bje = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #25
  br label %bb.eb

bb.du:                                            ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEElsINS1_IdLi1ELin1ELi1ELi1ELin1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit381
  %i.bjf = landingpad { ptr, i32 }
          cleanup
  br label %.body375

bb.dv:                                            ; preds = %bb.dq
  %i.bjg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

bb.dw:                                            ; preds = %.preheader555.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #25
  %i.bjh = load ptr, ptr %1, align 8, !tbaa !273
  %i.bji = getelementptr [4 x i8], ptr %i.bjh, i64 %indvars.iv670
  %i.bjj = load i32, ptr %i.bji, align 4, !tbaa !46
  %i.bjk = sext i32 %i.bjj to i64
  %i.bjl = load ptr, ptr %5, align 8, !tbaa !37
  %i.bjm = getelementptr inbounds nuw [48 x i8], ptr %i.bjl, i64 %i.bjk
  invoke void @_ZN3iglplERKSt5tupleIJN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEdEES7_(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple") align 8 %41, ptr noundef nonnull align 8 dereferenceable(48) %i.bjm, ptr noundef nonnull align 8 dereferenceable(48) %40)
          to label %.preheader555.1 unwind label %bb.dx

bb.dx:                                            ; preds = %.preheader555.2.thread, %.preheader555.1.thread, %bb.dw
  %i.bjn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #25
  %i.bjo = load ptr, ptr %i.bz, align 8, !tbaa !38
  call void @free(ptr noundef %i.bjo) #25
  %i.bjp = load ptr, ptr %i.ca, align 8, !tbaa !32
  call void @free(ptr noundef %i.bjp) #25
  br label %bb.ea

.preheader555.1:                                  ; preds = %bb.dw
  %i.bjq = load ptr, ptr %1, align 8, !tbaa !273
  %i.bjr = getelementptr [4 x i8], ptr %i.bjq, i64 %indvars.iv670
  %i.bjs = load i32, ptr %i.bjr, align 4, !tbaa !46
  %i.bjt = sext i32 %i.bjs to i64
  %i.bju = load ptr, ptr %5, align 8, !tbaa !37
  %i.bjv = getelementptr inbounds nuw [48 x i8], ptr %i.bju, i64 %i.bjt ; 6 uses
  %i.bjw = getelementptr inbounds nuw i8, ptr %i.bjv, i64 24 ; 2 uses
  %i.bjx = load ptr, ptr %i.bjw, align 8, !tbaa !49
  %i.bjy = load ptr, ptr %i.bu, align 8, !tbaa !49
  store ptr %i.bjy, ptr %i.bjw, align 8, !tbaa !49
  store ptr %i.bjx, ptr %i.bu, align 8, !tbaa !49
  %i.bjz = getelementptr inbounds nuw i8, ptr %i.bjv, i64 32 ; 2 uses
  %i.bka = load i64, ptr %i.bjz, align 8, !tbaa !50
  %i.bkb = load i64, ptr %i.bv, align 8, !tbaa !50
  store i64 %i.bkb, ptr %i.bjz, align 8, !tbaa !50
  store i64 %i.bka, ptr %i.bv, align 8, !tbaa !50
  %i.bkc = getelementptr inbounds nuw i8, ptr %i.bjv, i64 40 ; 2 uses
  %i.bkd = load i64, ptr %i.bkc, align 8, !tbaa !50
  %i.bke = load i64, ptr %i.bw, align 8, !tbaa !50
  store i64 %i.bke, ptr %i.bkc, align 8, !tbaa !50
  store i64 %i.bkd, ptr %i.bw, align 8, !tbaa !50
  %i.bkf = getelementptr inbounds nuw i8, ptr %i.bjv, i64 8 ; 2 uses
  %i.bkg = load ptr, ptr %i.bkf, align 8, !tbaa !49
  %i.bkh = load ptr, ptr %i.bx, align 8, !tbaa !49
  store ptr %i.bkh, ptr %i.bkf, align 8, !tbaa !49
  store ptr %i.bkg, ptr %i.bx, align 8, !tbaa !49
  %i.bki = getelementptr inbounds nuw i8, ptr %i.bjv, i64 16 ; 2 uses
  %i.bkj = load i64, ptr %i.bki, align 8, !tbaa !50
  %i.bkk = load i64, ptr %i.by, align 8, !tbaa !50
  store i64 %i.bkk, ptr %i.bki, align 8, !tbaa !50
  store i64 %i.bkj, ptr %i.by, align 8, !tbaa !50
  %i.bkl = load double, ptr %41, align 8, !tbaa !33
  store double %i.bkl, ptr %i.bjv, align 8, !tbaa !33
  %i.bkm = load ptr, ptr %i.bu, align 8, !tbaa !38
  call void @free(ptr noundef %i.bkm) #25
  %i.bkn = load ptr, ptr %i.bx, align 8, !tbaa !32
  call void @free(ptr noundef %i.bkn) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #25
  %.not.1 = icmp eq i32 %.1.2768, 1
  br i1 %.not.1, label %.preheader555.2.thread, label %.preheader555.1.thread

.preheader555.1.thread:                           ; preds = %.preheader555.preheader, %.preheader555.1
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #25
  %i.bko = load ptr, ptr %1, align 8, !tbaa !273
  %i.bkp = load i64, ptr %i.ao, align 8, !tbaa !271
  %i.bkq = getelementptr [4 x i8], ptr %i.bko, i64 %indvars.iv670
  %i.bkr = getelementptr [4 x i8], ptr %i.bkq, i64 %i.bkp
  %i.bks = load i32, ptr %i.bkr, align 4, !tbaa !46
  %i.bkt = sext i32 %i.bks to i64
  %i.bku = load ptr, ptr %5, align 8, !tbaa !37
  %i.bkv = getelementptr inbounds nuw [48 x i8], ptr %i.bku, i64 %i.bkt
  invoke void @_ZN3iglplERKSt5tupleIJN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEdEES7_(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple") align 8 %41, ptr noundef nonnull align 8 dereferenceable(48) %i.bkv, ptr noundef nonnull align 8 dereferenceable(48) %40)
          to label %.preheader555.2 unwind label %bb.dx

.preheader555.2:                                  ; preds = %.preheader555.1.thread
  %i.bkw = load ptr, ptr %1, align 8, !tbaa !273
  %i.bkx = load i64, ptr %i.ao, align 8, !tbaa !271
  %i.bky = getelementptr [4 x i8], ptr %i.bkw, i64 %indvars.iv670
  %i.bkz = getelementptr [4 x i8], ptr %i.bky, i64 %i.bkx
  %i.bla = load i32, ptr %i.bkz, align 4, !tbaa !46
  %i.blb = sext i32 %i.bla to i64
  %i.blc = load ptr, ptr %5, align 8, !tbaa !37
  %i.bld = getelementptr inbounds nuw [48 x i8], ptr %i.blc, i64 %i.blb ; 6 uses
  %i.ble = getelementptr inbounds nuw i8, ptr %i.bld, i64 24 ; 2 uses
  %i.blf = load ptr, ptr %i.ble, align 8, !tbaa !49
  %i.blg = load ptr, ptr %i.bu, align 8, !tbaa !49
  store ptr %i.blg, ptr %i.ble, align 8, !tbaa !49
  store ptr %i.blf, ptr %i.bu, align 8, !tbaa !49
  %i.blh = getelementptr inbounds nuw i8, ptr %i.bld, i64 32 ; 2 uses
  %i.bli = load i64, ptr %i.blh, align 8, !tbaa !50
  %i.blj = load i64, ptr %i.bv, align 8, !tbaa !50
  store i64 %i.blj, ptr %i.blh, align 8, !tbaa !50
  store i64 %i.bli, ptr %i.bv, align 8, !tbaa !50
  %i.blk = getelementptr inbounds nuw i8, ptr %i.bld, i64 40 ; 2 uses
  %i.bll = load i64, ptr %i.blk, align 8, !tbaa !50
  %i.blm = load i64, ptr %i.bw, align 8, !tbaa !50
  store i64 %i.blm, ptr %i.blk, align 8, !tbaa !50
  store i64 %i.bll, ptr %i.bw, align 8, !tbaa !50
  %i.bln = getelementptr inbounds nuw i8, ptr %i.bld, i64 8 ; 2 uses
  %i.blo = load ptr, ptr %i.bln, align 8, !tbaa !49
  %i.blp = load ptr, ptr %i.bx, align 8, !tbaa !49
  store ptr %i.blp, ptr %i.bln, align 8, !tbaa !49
  store ptr %i.blo, ptr %i.bx, align 8, !tbaa !49
  %i.blq = getelementptr inbounds nuw i8, ptr %i.bld, i64 16 ; 2 uses
  %i.blr = load i64, ptr %i.blq, align 8, !tbaa !50
  %i.bls = load i64, ptr %i.by, align 8, !tbaa !50
  store i64 %i.bls, ptr %i.blq, align 8, !tbaa !50
  store i64 %i.blr, ptr %i.by, align 8, !tbaa !50
  %i.blt = load double, ptr %41, align 8, !tbaa !33
  store double %i.blt, ptr %i.bld, align 8, !tbaa !33
  %i.blu = load ptr, ptr %i.bu, align 8, !tbaa !38
  call void @free(ptr noundef %i.blu) #25
  %i.blv = load ptr, ptr %i.bx, align 8, !tbaa !32
  call void @free(ptr noundef %i.blv) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #25
  %.not.2 = icmp eq i32 %.1.2768, 2
  br i1 %.not.2, label %bb.dz, label %.preheader555.2.thread

.preheader555.2.thread:                           ; preds = %.preheader555.1, %.preheader555.2
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #25
  %i.blw = load ptr, ptr %1, align 8, !tbaa !273
  %i.blx = load i64, ptr %i.ao, align 8, !tbaa !271
  %i.bly = getelementptr [4 x i8], ptr %i.blw, i64 %indvars.iv670
  %.idx762 = shl i64 %i.blx, 3
  %i.blz = getelementptr i8, ptr %i.bly, i64 %.idx762
  %i.bma = load i32, ptr %i.blz, align 4, !tbaa !46
  %i.bmb = sext i32 %i.bma to i64
  %i.bmc = load ptr, ptr %5, align 8, !tbaa !37
  %i.bmd = getelementptr inbounds nuw [48 x i8], ptr %i.bmc, i64 %i.bmb
  invoke void @_ZN3iglplERKSt5tupleIJN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEdEES7_(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple") align 8 %41, ptr noundef nonnull align 8 dereferenceable(48) %i.bmd, ptr noundef nonnull align 8 dereferenceable(48) %40)
          to label %bb.dy unwind label %bb.dx

bb.dy:                                            ; preds = %.preheader555.2.thread
  %i.bme = load ptr, ptr %1, align 8, !tbaa !273
  %i.bmf = load i64, ptr %i.ao, align 8, !tbaa !271
  %i.bmg = getelementptr [4 x i8], ptr %i.bme, i64 %indvars.iv670
  %.idx763 = shl i64 %i.bmf, 3
  %i.bmh = getelementptr i8, ptr %i.bmg, i64 %.idx763
  %i.bmi = load i32, ptr %i.bmh, align 4, !tbaa !46
  %i.bmj = sext i32 %i.bmi to i64
  %i.bmk = load ptr, ptr %5, align 8, !tbaa !37
  %i.bml = getelementptr inbounds nuw [48 x i8], ptr %i.bmk, i64 %i.bmj ; 6 uses
  %i.bmm = getelementptr inbounds nuw i8, ptr %i.bml, i64 24 ; 2 uses
  %i.bmn = load ptr, ptr %i.bmm, align 8, !tbaa !49
  %i.bmo = load ptr, ptr %i.bu, align 8, !tbaa !49
  store ptr %i.bmo, ptr %i.bmm, align 8, !tbaa !49
  store ptr %i.bmn, ptr %i.bu, align 8, !tbaa !49
  %i.bmp = getelementptr inbounds nuw i8, ptr %i.bml, i64 32 ; 2 uses
  %i.bmq = load i64, ptr %i.bmp, align 8, !tbaa !50
  %i.bmr = load i64, ptr %i.bv, align 8, !tbaa !50
  store i64 %i.bmr, ptr %i.bmp, align 8, !tbaa !50
  store i64 %i.bmq, ptr %i.bv, align 8, !tbaa !50
  %i.bms = getelementptr inbounds nuw i8, ptr %i.bml, i64 40 ; 2 uses
  %i.bmt = load i64, ptr %i.bms, align 8, !tbaa !50
  %i.bmu = load i64, ptr %i.bw, align 8, !tbaa !50
  store i64 %i.bmu, ptr %i.bms, align 8, !tbaa !50
  store i64 %i.bmt, ptr %i.bw, align 8, !tbaa !50
  %i.bmv = getelementptr inbounds nuw i8, ptr %i.bml, i64 8 ; 2 uses
  %i.bmw = load ptr, ptr %i.bmv, align 8, !tbaa !49
  %i.bmx = load ptr, ptr %i.bx, align 8, !tbaa !49
  store ptr %i.bmx, ptr %i.bmv, align 8, !tbaa !49
  store ptr %i.bmw, ptr %i.bx, align 8, !tbaa !49
  %i.bmy = getelementptr inbounds nuw i8, ptr %i.bml, i64 16 ; 2 uses
  %i.bmz = load i64, ptr %i.bmy, align 8, !tbaa !50
end_hunk_1
