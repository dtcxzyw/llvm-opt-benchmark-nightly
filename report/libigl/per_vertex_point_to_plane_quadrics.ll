Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/per_vertex_point_to_plane_quadrics?download=true
inline.NumInlined: 8459
inline.NumDeleted: 4006
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 99
begin_hunk_0_@_ZN3igl34per_vertex_point_to_plane_quadricsERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS1_IiLin1ELin1ELi0ELin1ELin1EEES7_S7_S7_RSt6vectorISt5tupleIJS2_NS1_IdLi1ELin1ELi1ELi1ELin1EEEdEESaISB_EE:bb.a
  %i.aqu = getelementptr inbounds [8 x i8], ptr %i.apr, i64 %i.aqt
  %i.aqv = load double, ptr %i.aqu, align 8, !tbaa !33
  store double %i.aqv, ptr %i.aqs, align 8, !tbaa !33
  %i.aqw = add nuw nsw i64 %.05.i.i.i.i.i.i.i330, 1 ; 2 uses
  %i.aqx = getelementptr inbounds nuw [8 x i8], ptr %i.aqa, i64 %i.aqw
  %i.aqy = mul nsw i64 %i.aqw, %i.apx
  %i.aqz = getelementptr inbounds [8 x i8], ptr %i.apr, i64 %i.aqy
  %i.ara = load double, ptr %i.aqz, align 8, !tbaa !33
  store double %i.ara, ptr %i.aqx, align 8, !tbaa !33
  %i.arb = add nuw nsw i64 %.05.i.i.i.i.i.i.i330, 2 ; 2 uses
  %i.arc = getelementptr inbounds nuw [8 x i8], ptr %i.aqa, i64 %i.arb
  %i.ard = mul nsw i64 %i.arb, %i.apx
  %i.are = getelementptr inbounds [8 x i8], ptr %i.apr, i64 %i.ard
  %i.arf = load double, ptr %i.are, align 8, !tbaa !33
  store double %i.arf, ptr %i.arc, align 8, !tbaa !33
  %i.arg = add nuw nsw i64 %.05.i.i.i.i.i.i.i330, 3 ; 2 uses
  %i.arh = getelementptr inbounds nuw [8 x i8], ptr %i.aqa, i64 %i.arg
  %i.ari = mul nsw i64 %i.arg, %i.apx
  %i.arj = getelementptr inbounds [8 x i8], ptr %i.apr, i64 %i.ari
  %i.ark = load double, ptr %i.arj, align 8, !tbaa !33
  store double %i.ark, ptr %i.arh, align 8, !tbaa !33
  %i.arl = add nuw nsw i64 %.05.i.i.i.i.i.i.i330, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i331.3 = icmp eq i64 %i.arl, %i.apz
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
  %i.arm = select i1 %.cmp775, i32 2, i32 %.urem774
  %i.arn = zext nneg i32 %i.arm to i64
  %i.aro = load ptr, ptr %1, align 8, !tbaa !273
  %i.arp = load i64, ptr %i.an, align 8, !tbaa !271
  %i.arq = mul nsw i64 %i.arp, %i.arn
  %i.arr = getelementptr [4 x i8], ptr %i.aro, i64 %indvars.iv670
  %i.ars = getelementptr [4 x i8], ptr %i.arr, i64 %i.arq
  %i.art = load i32, ptr %i.ars, align 4, !tbaa !46
  %i.aru = sext i32 %i.art to i64                 ; 2 uses
  %i.arv = load ptr, ptr %0, align 8, !tbaa !38, !noalias !285 ; 2 uses
  %i.arw = ptrtoaddr ptr %i.arv to i64
  %i.arx = getelementptr inbounds [8 x i8], ptr %i.arv, i64 %i.aru ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %31, i8 0, i64 16, i1 false)
  %i.ary = icmp eq i64 %i.apz, 0
  br i1 %i.ary, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i, label %bb.ct

bb.ct:                                            ; preds = %.loopexit559
  %i.arz = sdiv i64 9223372036854775807, %i.apz
  %i.asa = icmp slt i64 %i.arz, 1
  br i1 %i.asa, label %bb.cu, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i

bb.cu:                                            ; preds = %bb.ct
  %i.asb = call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.asb, align 8, !tbaa !41
  invoke void @__cxa_throw(ptr nonnull %i.asb, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #26
          to label %.noexc.i392 unwind label %.loopexit.split-lp564

.noexc.i392:                                      ; preds = %bb.cu
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i: ; preds = %bb.ct, %.loopexit559
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %31, i64 noundef 1, i64 noundef %i.apz)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS2_EEEEvRKNS_9EigenBaseIT_EE.exit.i unwind label %.loopexit563

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS2_EEEEvRKNS_9EigenBaseIT_EE.exit.i: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i
  %i.asc = load i64, ptr %i.c, align 8, !tbaa !24 ; 4 uses
  %i.asd = load ptr, ptr %30, align 8, !tbaa !32  ; 5 uses
  %i.ase = ptrtoaddr ptr %i.asd to i64
  %i.asf = load i64, ptr %i.aq, align 8, !tbaa !31 ; 3 uses
  %i.asg = load i64, ptr %i.ar, align 8, !tbaa !31
  %.not8.i.i.i.i.i.i = icmp eq i64 %i.asg, %i.asf
  br i1 %.not8.i.i.i.i.i.i, label %bb.cv, label %thread-pre-split.i.i.i.i.i

thread-pre-split.i.i.i.i.i:                       ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS2_EEEEvRKNS_9EigenBaseIT_EE.exit.i
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %31, i64 noundef 1, i64 noundef %i.asf)
          to label %.noexc5.i unwind label %.loopexit563

.noexc5.i:                                        ; preds = %thread-pre-split.i.i.i.i.i
  %.pr.i.i.i.i.i = load i64, ptr %i.ar, align 8, !tbaa !31
  br label %bb.cv

bb.cv:                                            ; preds = %.noexc5.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS2_EEEEvRKNS_9EigenBaseIT_EE.exit.i
  %i.ash = phi i64 [ %.pr.i.i.i.i.i, %.noexc5.i ], [ %i.asf, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS2_EEEEvRKNS_9EigenBaseIT_EE.exit.i ] ; 22 uses
  %i.asi = load ptr, ptr %31, align 8, !tbaa !32  ; 19 uses
  %i.asj = ptrtoaddr ptr %i.asi to i64            ; 2 uses
  %i.ask = icmp sgt i64 %i.ash, 0
  br i1 %i.ask, label %.lr.ph.i.i.i.i.i.i391.preheader, label %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i391.preheader:                  ; preds = %bb.cv
  %min.iters.check951 = icmp ugt i64 %i.ash, 7
  %ident.check945.not = icmp eq i64 %i.asc, 1
  %or.cond1034 = select i1 %min.iters.check951, i1 %ident.check945.not, i1 false
  br i1 %or.cond1034, label %vector.memcheck946, label %.lr.ph.i.i.i.i.i.i391.preheader1045

vector.memcheck946:                               ; preds = %.lr.ph.i.i.i.i.i.i391.preheader
  %i.asl = shl nsw i64 %i.aru, 3
  %i.asm = add i64 %i.asl, %i.arw
  %i.asn = sub i64 %i.asm, %i.asj
  %diff.check947 = icmp ugt i64 %i.asn, -32
  %i.aso = sub i64 %i.ase, %i.asj
  %diff.check948 = icmp ugt i64 %i.aso, -32
  %conflict.rdx949 = or i1 %diff.check947, %diff.check948
  br i1 %conflict.rdx949, label %.lr.ph.i.i.i.i.i.i391.preheader1045, label %vector.ph952

vector.ph952:                                     ; preds = %vector.memcheck946
  %n.vec953 = and i64 %i.ash, 9223372036854775804 ; 3 uses
  br label %vector.body954

vector.body954:                                   ; preds = %vector.body954, %vector.ph952
  %index955 = phi i64 [ 0, %vector.ph952 ], [ %index.next960, %vector.body954 ] ; 4 uses
  %i.asp = getelementptr inbounds nuw [8 x i8], ptr %i.asi, i64 %index955 ; 2 uses
  %i.asq = getelementptr inbounds [8 x i8], ptr %i.arx, i64 %index955 ; 2 uses
  %i.asr = getelementptr inbounds nuw i8, ptr %i.asq, i64 16
  %wide.load956 = load <2 x double>, ptr %i.asq, align 8, !tbaa !33
  %wide.load957 = load <2 x double>, ptr %i.asr, align 8, !tbaa !33
  %i.ass = getelementptr inbounds nuw [8 x i8], ptr %i.asd, i64 %index955 ; 2 uses
  %i.ast = getelementptr inbounds nuw i8, ptr %i.ass, i64 16
  %wide.load958 = load <2 x double>, ptr %i.ass, align 8, !tbaa !33
  %wide.load959 = load <2 x double>, ptr %i.ast, align 8, !tbaa !33
  %i.asu = fsub <2 x double> %wide.load956, %wide.load958
  %i.asv = fsub <2 x double> %wide.load957, %wide.load959
  %i.asw = getelementptr inbounds nuw i8, ptr %i.asp, i64 16
  store <2 x double> %i.asu, ptr %i.asp, align 8, !tbaa !33
  store <2 x double> %i.asv, ptr %i.asw, align 8, !tbaa !33
  %index.next960 = add nuw i64 %index955, 4       ; 2 uses
  %i.asx = icmp eq i64 %index.next960, %n.vec953
  br i1 %i.asx, label %middle.block961, label %vector.body954, !llvm.loop !230

middle.block961:                                  ; preds = %vector.body954
  %cmp.n962 = icmp eq i64 %i.ash, %n.vec953
  br i1 %cmp.n962, label %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit.thread, label %.lr.ph.i.i.i.i.i.i391.preheader1045

.lr.ph.i.i.i.i.i.i391.preheader1045:              ; preds = %vector.memcheck946, %.lr.ph.i.i.i.i.i.i391.preheader, %middle.block961
  %.05.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck946 ], [ 0, %.lr.ph.i.i.i.i.i.i391.preheader ], [ %n.vec953, %middle.block961 ] ; 6 uses
  %.neg = or disjoint i64 %.05.i.i.i.i.i.i.ph, 1
  %xtraiter1120 = and i64 %i.ash, 1
  %lcmp.mod1121.not = icmp eq i64 %xtraiter1120, 0
  br i1 %lcmp.mod1121.not, label %.lr.ph.i.i.i.i.i.i391.prol.loopexit, label %.lr.ph.i.i.i.i.i.i391.prol

.lr.ph.i.i.i.i.i.i391.prol:                       ; preds = %.lr.ph.i.i.i.i.i.i391.preheader1045
  %i.asy = getelementptr inbounds nuw [8 x i8], ptr %i.asi, i64 %.05.i.i.i.i.i.i.ph
  %i.asz = mul nsw i64 %.05.i.i.i.i.i.i.ph, %i.asc
  %i.ata = getelementptr inbounds [8 x i8], ptr %i.arx, i64 %i.asz
  %i.atb = load double, ptr %i.ata, align 8, !tbaa !33
  %i.atc = getelementptr inbounds nuw [8 x i8], ptr %i.asd, i64 %.05.i.i.i.i.i.i.ph
  %i.atd = load double, ptr %i.atc, align 8, !tbaa !33
  %i.ate = fsub double %i.atb, %i.atd
  store double %i.ate, ptr %i.asy, align 8, !tbaa !33
  %i.atf = or disjoint i64 %.05.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i391.prol.loopexit

.lr.ph.i.i.i.i.i.i391.prol.loopexit:              ; preds = %.lr.ph.i.i.i.i.i.i391.prol, %.lr.ph.i.i.i.i.i.i391.preheader1045
  %.05.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i391.preheader1045 ], [ %i.atf, %.lr.ph.i.i.i.i.i.i391.prol ]
  %i.atg = icmp eq i64 %i.ash, %.neg
  br i1 %i.atg, label %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit.thread, label %.lr.ph.i.i.i.i.i.i391

.lr.ph.i.i.i.i.i.i391:                            ; preds = %.lr.ph.i.i.i.i.i.i391.prol.loopexit, %.lr.ph.i.i.i.i.i.i391
  %.05.i.i.i.i.i.i = phi i64 [ %i.atw, %.lr.ph.i.i.i.i.i.i391 ], [ %.05.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i391.prol.loopexit ] ; 5 uses
  %i.ath = getelementptr inbounds nuw [8 x i8], ptr %i.asi, i64 %.05.i.i.i.i.i.i
  %i.ati = mul nsw i64 %.05.i.i.i.i.i.i, %i.asc
  %i.atj = getelementptr inbounds [8 x i8], ptr %i.arx, i64 %i.ati
  %i.atk = load double, ptr %i.atj, align 8, !tbaa !33
  %i.atl = getelementptr inbounds nuw [8 x i8], ptr %i.asd, i64 %.05.i.i.i.i.i.i
  %i.atm = load double, ptr %i.atl, align 8, !tbaa !33
  %i.atn = fsub double %i.atk, %i.atm
  store double %i.atn, ptr %i.ath, align 8, !tbaa !33
  %i.ato = add nuw nsw i64 %.05.i.i.i.i.i.i, 1    ; 3 uses
  %i.atp = getelementptr inbounds nuw [8 x i8], ptr %i.asi, i64 %i.ato
  %i.atq = mul nsw i64 %i.ato, %i.asc
  %i.atr = getelementptr inbounds [8 x i8], ptr %i.arx, i64 %i.atq
  %i.ats = load double, ptr %i.atr, align 8, !tbaa !33
  %i.att = getelementptr inbounds nuw [8 x i8], ptr %i.asd, i64 %i.ato
  %i.atu = load double, ptr %i.att, align 8, !tbaa !33
  %i.atv = fsub double %i.ats, %i.atu
  store double %i.atv, ptr %i.atp, align 8, !tbaa !33
  %i.atw = add nuw nsw i64 %.05.i.i.i.i.i.i, 2    ; 2 uses
  %exitcond.not.i.i.i.i.i.i.1 = icmp eq i64 %i.atw, %i.ash
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
  %i.atx = icmp eq i64 %i.ash, 0
  br i1 %i.atx, label %._crit_edge.i.i.i.i.i.i, label %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit.thread

_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit.thread: ; preds = %.lr.ph.i.i.i.i.i.i391.prol.loopexit, %.lr.ph.i.i.i.i.i.i391, %middle.block961, %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit
  %i.aty = sdiv i64 %i.ash, 4
  %i.atz = shl nsw i64 %i.aty, 2                  ; 3 uses
  %i.aua = sdiv i64 %i.ash, 2
  %i.aub = shl nsw i64 %i.aua, 1                  ; 9 uses
  %.off.i.i.i.i.i337 = add i64 %i.ash, 1
  %.not.i.i.i.i.i338 = icmp ult i64 %.off.i.i.i.i.i337, 3
  br i1 %.not.i.i.i.i.i338, label %bb.da, label %bb.cw

bb.cw:                                            ; preds = %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit.thread
  %i.auc = load <2 x double>, ptr %i.asi, align 16, !tbaa !45 ; 2 uses
  %i.aud = fmul <2 x double> %i.auc, %i.auc       ; 3 uses
  %i.aue = icmp sgt i64 %i.ash, 3
  br i1 %i.aue, label %bb.cx, label %bb.cz

bb.cx:                                            ; preds = %bb.cw
  %i.auf = getelementptr inbounds nuw i8, ptr %i.asi, i64 16
  %i.aug = load <2 x double>, ptr %i.auf, align 16, !tbaa !45 ; 2 uses
  %i.auh = fmul <2 x double> %i.aug, %i.aug       ; 2 uses
  %i.aui = icmp samesign ugt i64 %i.ash, 7
  br i1 %i.aui, label %.lr.ph.i.i.i.i.i350, label %._crit_edge.i.i.i.i.i347

._crit_edge.i.i.i.i.i347:                         ; preds = %.lr.ph.i.i.i.i.i350, %bb.cx
  %.075.lcssa.i.i.i.i.i348 = phi <2 x double> [ %i.auh, %bb.cx ], [ %i.aut, %.lr.ph.i.i.i.i.i350 ]
  %.072.lcssa.i.i.i.i.i349 = phi <2 x double> [ %i.aud, %bb.cx ], [ %i.auo, %.lr.ph.i.i.i.i.i350 ]
  %i.auj = fadd <2 x double> %.075.lcssa.i.i.i.i.i348, %.072.lcssa.i.i.i.i.i349 ; 2 uses
  %i.auk = icmp sgt i64 %i.aub, %i.atz
  br i1 %i.auk, label %bb.cy, label %bb.cz

.lr.ph.i.i.i.i.i350:                              ; preds = %bb.cx, %.lr.ph.i.i.i.i.i350
  %.05480.i.i.i.i.i351 = phi i64 [ %.054.i.i.i.i.i355, %.lr.ph.i.i.i.i.i350 ], [ 4, %bb.cx ] ; 3 uses
  %.054.in79.i.i.i.i.i352 = phi i64 [ %.05480.i.i.i.i.i351, %.lr.ph.i.i.i.i.i350 ], [ 0, %bb.cx ]
  %.07278.i.i.i.i.i353 = phi <2 x double> [ %i.auo, %.lr.ph.i.i.i.i.i350 ], [ %i.aud, %bb.cx ]
  %.07577.i.i.i.i.i354 = phi <2 x double> [ %i.aut, %.lr.ph.i.i.i.i.i350 ], [ %i.auh, %bb.cx ]
  %i.aul = getelementptr inbounds nuw [8 x i8], ptr %i.asi, i64 %.05480.i.i.i.i.i351
  %i.aum = load <2 x double>, ptr %i.aul, align 16, !tbaa !45 ; 2 uses
  %i.aun = fmul <2 x double> %i.aum, %i.aum
  %i.auo = fadd <2 x double> %.07278.i.i.i.i.i353, %i.aun ; 2 uses
  %i.aup = getelementptr inbounds nuw [8 x i8], ptr %i.asi, i64 %.054.in79.i.i.i.i.i352
  %i.auq = getelementptr inbounds nuw i8, ptr %i.aup, i64 48
  %i.aur = load <2 x double>, ptr %i.auq, align 16, !tbaa !45 ; 2 uses
  %i.aus = fmul <2 x double> %i.aur, %i.aur
  %i.aut = fadd <2 x double> %.07577.i.i.i.i.i354, %i.aus ; 2 uses
  %.054.i.i.i.i.i355 = add nuw nsw i64 %.05480.i.i.i.i.i351, 4 ; 2 uses
  %i.auu = icmp slt i64 %.054.i.i.i.i.i355, %i.atz
  br i1 %i.auu, label %.lr.ph.i.i.i.i.i350, label %._crit_edge.i.i.i.i.i347, !llvm.loop !4

bb.cy:                                            ; preds = %._crit_edge.i.i.i.i.i347
  %i.auv = getelementptr inbounds nuw [8 x i8], ptr %i.asi, i64 %i.atz
  %i.auw = load <2 x double>, ptr %i.auv, align 16, !tbaa !45 ; 2 uses
  %i.aux = fmul <2 x double> %i.auw, %i.auw
  %i.auy = fadd <2 x double> %i.auj, %i.aux
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %._crit_edge.i.i.i.i.i347, %bb.cw
  %.274.i.i.i.i.i339 = phi <2 x double> [ %i.aud, %bb.cw ], [ %i.auy, %bb.cy ], [ %i.auj, %._crit_edge.i.i.i.i.i347 ]
  %i.auz = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %.274.i.i.i.i.i339) ; 3 uses
  %i.ava = icmp slt i64 %i.aub, %i.ash
  br i1 %i.ava, label %.lr.ph85.i.i.i.i.i343.preheader, label %.loopexit558

.lr.ph85.i.i.i.i.i343.preheader:                  ; preds = %bb.cz
  %i.avb = sub i64 %i.ash, %i.aub
  %xtraiter1123 = and i64 %i.avb, 3               ; 2 uses
  %lcmp.mod1124.not = icmp eq i64 %xtraiter1123, 0
  br i1 %lcmp.mod1124.not, label %.lr.ph85.i.i.i.i.i343.prol.loopexit, label %.lr.ph85.i.i.i.i.i343.prol

.lr.ph85.i.i.i.i.i343.prol:                       ; preds = %.lr.ph85.i.i.i.i.i343.preheader, %.lr.ph85.i.i.i.i.i343.prol
  %.05283.i.i.i.i.i344.prol = phi i64 [ %i.avg, %.lr.ph85.i.i.i.i.i343.prol ], [ %i.aub, %.lr.ph85.i.i.i.i.i343.preheader ] ; 2 uses
  %.182.i.i.i.i.i345.prol = phi double [ %i.avf, %.lr.ph85.i.i.i.i.i343.prol ], [ %i.auz, %.lr.ph85.i.i.i.i.i343.preheader ]
  %prol.iter1125 = phi i64 [ %prol.iter1125.next, %.lr.ph85.i.i.i.i.i343.prol ], [ 0, %.lr.ph85.i.i.i.i.i343.preheader ]
  %i.avc = getelementptr inbounds [8 x i8], ptr %i.asi, i64 %.05283.i.i.i.i.i344.prol
  %i.avd = load double, ptr %i.avc, align 8, !tbaa !33 ; 2 uses
  %i.ave = fmul double %i.avd, %i.avd
  %i.avf = fadd double %.182.i.i.i.i.i345.prol, %i.ave ; 3 uses
  %i.avg = add nsw i64 %.05283.i.i.i.i.i344.prol, 1 ; 2 uses
  %prol.iter1125.next = add i64 %prol.iter1125, 1 ; 2 uses
  %prol.iter1125.cmp.not = icmp eq i64 %prol.iter1125.next, %xtraiter1123
  br i1 %prol.iter1125.cmp.not, label %.lr.ph85.i.i.i.i.i343.prol.loopexit, label %.lr.ph85.i.i.i.i.i343.prol, !llvm.loop !232

.lr.ph85.i.i.i.i.i343.prol.loopexit:              ; preds = %.lr.ph85.i.i.i.i.i343.prol, %.lr.ph85.i.i.i.i.i343.preheader
  %.lcssa1066.unr = phi double [ poison, %.lr.ph85.i.i.i.i.i343.preheader ], [ %i.avf, %.lr.ph85.i.i.i.i.i343.prol ]
  %.05283.i.i.i.i.i344.unr = phi i64 [ %i.aub, %.lr.ph85.i.i.i.i.i343.preheader ], [ %i.avg, %.lr.ph85.i.i.i.i.i343.prol ]
  %.182.i.i.i.i.i345.unr = phi double [ %i.auz, %.lr.ph85.i.i.i.i.i343.preheader ], [ %i.avf, %.lr.ph85.i.i.i.i.i343.prol ]
  %i.avh = sub i64 %i.aub, %i.ash
  %i.avi = icmp ugt i64 %i.avh, -4
  br i1 %i.avi, label %.loopexit558, label %.lr.ph85.i.i.i.i.i343

.lr.ph85.i.i.i.i.i343:                            ; preds = %.lr.ph85.i.i.i.i.i343.prol.loopexit, %.lr.ph85.i.i.i.i.i343
  %.05283.i.i.i.i.i344 = phi i64 [ %i.awc, %.lr.ph85.i.i.i.i.i343 ], [ %.05283.i.i.i.i.i344.unr, %.lr.ph85.i.i.i.i.i343.prol.loopexit ] ; 5 uses
  %.182.i.i.i.i.i345 = phi double [ %i.awb, %.lr.ph85.i.i.i.i.i343 ], [ %.182.i.i.i.i.i345.unr, %.lr.ph85.i.i.i.i.i343.prol.loopexit ]
  %i.avj = getelementptr inbounds [8 x i8], ptr %i.asi, i64 %.05283.i.i.i.i.i344
  %i.avk = load double, ptr %i.avj, align 8, !tbaa !33 ; 2 uses
  %i.avl = fmul double %i.avk, %i.avk
  %i.avm = fadd double %.182.i.i.i.i.i345, %i.avl
  %i.avn = getelementptr [8 x i8], ptr %i.asi, i64 %.05283.i.i.i.i.i344
  %i.avo = getelementptr i8, ptr %i.avn, i64 8
  %i.avp = load double, ptr %i.avo, align 8, !tbaa !33 ; 2 uses
  %i.avq = fmul double %i.avp, %i.avp
  %i.avr = fadd double %i.avm, %i.avq
  %i.avs = getelementptr [8 x i8], ptr %i.asi, i64 %.05283.i.i.i.i.i344
  %i.avt = getelementptr i8, ptr %i.avs, i64 16
  %i.avu = load double, ptr %i.avt, align 8, !tbaa !33 ; 2 uses
  %i.avv = fmul double %i.avu, %i.avu
  %i.avw = fadd double %i.avr, %i.avv
  %i.avx = getelementptr [8 x i8], ptr %i.asi, i64 %.05283.i.i.i.i.i344
  %i.avy = getelementptr i8, ptr %i.avx, i64 24
  %i.avz = load double, ptr %i.avy, align 8, !tbaa !33 ; 2 uses
  %i.awa = fmul double %i.avz, %i.avz
  %i.awb = fadd double %i.avw, %i.awa             ; 2 uses
  %i.awc = add nsw i64 %.05283.i.i.i.i.i344, 4    ; 2 uses
  %exitcond.not.i.i.i.i.i346.3 = icmp eq i64 %i.awc, %i.ash
  br i1 %exitcond.not.i.i.i.i.i346.3, label %.loopexit558, label %.lr.ph85.i.i.i.i.i343, !llvm.loop !5

bb.da:                                            ; preds = %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit.thread
  %i.awd = load double, ptr %i.asi, align 8, !tbaa !33 ; 2 uses
  %i.awe = fmul double %i.awd, %i.awd
  %i.awf = call double @llvm.sqrt.f64(double %i.awe)
  br label %._crit_edge.i.i.i.i.i.i

.loopexit558:                                     ; preds = %.lr.ph85.i.i.i.i.i343.prol.loopexit, %.lr.ph85.i.i.i.i.i343, %bb.cz
  %.0.i.i.i341 = phi double [ %i.auz, %bb.cz ], [ %.lcssa1066.unr, %.lr.ph85.i.i.i.i.i343.prol.loopexit ], [ %i.awb, %.lr.ph85.i.i.i.i.i343 ]
  %.scalar.i342 = call noundef double @llvm.sqrt.f64(double %.0.i.i.i341) ; 3 uses
  %i.awg = icmp sgt i64 %i.ash, 1
  br i1 %i.awg, label %.lr.ph.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %.loopexit558
  %i.awh = insertelement <2 x double> poison, double %.scalar.i342, i64 0
  %i.awi = shufflevector <2 x double> %i.awh, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit, %bb.da, %.loopexit558
  %42 = phi i64 [ %i.aub, %.loopexit558 ], [ 0, %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit ], [ 0, %bb.da ], [ %i.aub, %.lr.ph.i.i.i.i.i.i ] ; 5 uses
  %.scalar.i342544 = phi double [ %.scalar.i342, %.loopexit558 ], [ 0.000000e+00, %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit ], [ %i.awf, %bb.da ], [ %.scalar.i342, %.lr.ph.i.i.i.i.i.i ] ; 4 uses
  %i.awj = icmp slt i64 %42, %i.ash
  br i1 %i.awj, label %.lr.ph.i.i.i.i.i.i.i356.preheader, label %.loopexit557

.lr.ph.i.i.i.i.i.i.i356.preheader:                ; preds = %._crit_edge.i.i.i.i.i.i
  %i.awk = sub i64 %i.ash, %42                    ; 2 uses
  %min.iters.check934 = icmp ult i64 %i.awk, 2
  br i1 %min.iters.check934, label %.lr.ph.i.i.i.i.i.i.i356.preheader1044, label %vector.ph935

vector.ph935:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i356.preheader
  %i.awl = and i64 %i.ash, 1                      ; 2 uses
  %n.vec936 = sub nuw i64 %i.awk, %i.awl          ; 2 uses
  %i.awm = add i64 %42, %n.vec936
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.scalar.i342544, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.awn = getelementptr [8 x i8], ptr %i.asi, i64 %42
  br label %vector.body937

vector.body937:                                   ; preds = %vector.body937, %vector.ph935
  %index938 = phi i64 [ 0, %vector.ph935 ], [ %index.next940, %vector.body937 ] ; 2 uses
  %i.awo = getelementptr [8 x i8], ptr %i.awn, i64 %index938 ; 2 uses
  %wide.load939 = load <2 x double>, ptr %i.awo, align 8, !tbaa !33
  %i.awp = fdiv <2 x double> %wide.load939, %broadcast.splat
  store <2 x double> %i.awp, ptr %i.awo, align 8, !tbaa !33
  %index.next940 = add nuw i64 %index938, 2       ; 2 uses
  %i.awq = icmp eq i64 %index.next940, %n.vec936
  br i1 %i.awq, label %middle.block941, label %vector.body937, !llvm.loop !233

middle.block941:                                  ; preds = %vector.body937
  %cmp.n942 = icmp eq i64 %i.awl, 0
  br i1 %cmp.n942, label %.loopexit557, label %.lr.ph.i.i.i.i.i.i.i356.preheader1044

.lr.ph.i.i.i.i.i.i.i356.preheader1044:            ; preds = %.lr.ph.i.i.i.i.i.i.i356.preheader, %middle.block941
  %.05.i.i.i.i.i.i.i357.ph = phi i64 [ %42, %.lr.ph.i.i.i.i.i.i.i356.preheader ], [ %i.awm, %middle.block941 ]
  br label %.lr.ph.i.i.i.i.i.i.i356

.lr.ph.i.i.i.i.i.i.i356:                          ; preds = %.lr.ph.i.i.i.i.i.i.i356.preheader1044, %.lr.ph.i.i.i.i.i.i.i356
  %.05.i.i.i.i.i.i.i357 = phi i64 [ %i.awu, %.lr.ph.i.i.i.i.i.i.i356 ], [ %.05.i.i.i.i.i.i.i357.ph, %.lr.ph.i.i.i.i.i.i.i356.preheader1044 ] ; 2 uses
  %i.awr = getelementptr inbounds [8 x i8], ptr %i.asi, i64 %.05.i.i.i.i.i.i.i357 ; 2 uses
  %i.aws = load double, ptr %i.awr, align 8, !tbaa !33
  %i.awt = fdiv double %i.aws, %.scalar.i342544
  store double %i.awt, ptr %i.awr, align 8, !tbaa !33
  %i.awu = add nsw i64 %.05.i.i.i.i.i.i.i357, 1   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i358 = icmp eq i64 %i.awu, %i.ash
  br i1 %exitcond.not.i.i.i.i.i.i.i358, label %.loopexit557, label %.lr.ph.i.i.i.i.i.i.i356, !llvm.loop !234

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.011.i.i.i.i.i.i = phi i64 [ %i.awy, %.lr.ph.i.i.i.i.i.i ], [ 0, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %i.awv = getelementptr inbounds nuw [8 x i8], ptr %i.asi, i64 %.011.i.i.i.i.i.i ; 2 uses
  %i.aww = load <2 x double>, ptr %i.awv, align 16, !tbaa !45
  %i.awx = fdiv <2 x double> %i.aww, %i.awi
  store <2 x double> %i.awx, ptr %i.awv, align 16, !tbaa !45
  %i.awy = add nuw nsw i64 %.011.i.i.i.i.i.i, 2   ; 2 uses
  %i.awz = icmp slt i64 %i.awy, %i.aub
  br i1 %i.awz, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !235

.loopexit557:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i356, %middle.block941, %._crit_edge.i.i.i.i.i.i
  %i.axa = load i64, ptr %i.an, align 8, !tbaa !271 ; 2 uses
  %i.axb = zext nneg i32 %.1.2768 to i64
  %i.axc = mul nsw i64 %i.axa, %i.axb
  %i.axd = load ptr, ptr %2, align 8, !tbaa !273
  %i.axe = getelementptr [4 x i8], ptr %i.axd, i64 %i.axc
  %i.axf = getelementptr [4 x i8], ptr %i.axe, i64 %indvars.iv670
  %i.axg = load i32, ptr %i.axf, align 4, !tbaa !46
  %i.axh = sext i32 %i.axg to i64                 ; 2 uses
  %i.axi = load ptr, ptr %3, align 8, !tbaa !273
  %i.axj = getelementptr [4 x i8], ptr %i.axi, i64 %i.axh ; 2 uses
  %i.axk = load i32, ptr %i.axj, align 4, !tbaa !46
  %i.axl = zext i32 %i.axk to i64
  %i.axm = icmp eq i64 %indvars.iv670, %i.axl     ; 2 uses
  %i.axn = load i64, ptr %i.as, align 8, !tbaa !271
  %i.axo = select i1 %i.axm, i64 %i.axn, i64 0
  %i.axp = getelementptr [4 x i8], ptr %i.axj, i64 %i.axo
  %i.axq = load i32, ptr %i.axp, align 4, !tbaa !46
  %i.axr = load ptr, ptr %4, align 8, !tbaa !273
  %i.axs = load i64, ptr %i.at, align 8, !tbaa !271
  %i.axt = select i1 %i.axm, i64 %i.axs, i64 0
  %i.axu = getelementptr [4 x i8], ptr %i.axr, i64 %i.axh
  %i.axv = getelementptr [4 x i8], ptr %i.axu, i64 %i.axt
  %i.axw = load i32, ptr %i.axv, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #25
  %i.axx = sext i32 %i.axq to i64
  %i.axy = sext i32 %i.axw to i64
  %i.axz = load ptr, ptr %1, align 8, !tbaa !273
  %i.aya = mul nsw i64 %i.axa, %i.axy
  %i.ayb = getelementptr [4 x i8], ptr %i.axz, i64 %i.axx
  %i.ayc = getelementptr [4 x i8], ptr %i.ayb, i64 %i.aya
  %i.ayd = load i32, ptr %i.ayc, align 4, !tbaa !46
  %i.aye = sext i32 %i.ayd to i64                 ; 2 uses
  %i.ayf = load ptr, ptr %0, align 8, !tbaa !38, !noalias !286 ; 2 uses
  %i.ayg = ptrtoaddr ptr %i.ayf to i64
  %i.ayh = getelementptr inbounds [8 x i8], ptr %i.ayf, i64 %i.aye ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %32, i8 0, i64 16, i1 false)
  %i.ayi = load i64, ptr %i.aq, align 8, !tbaa !31 ; 3 uses
  %i.ayj = icmp eq i64 %i.ayi, 0
  br i1 %i.ayj, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i395, label %bb.db

bb.db:                                            ; preds = %.loopexit557
  %i.ayk = sdiv i64 9223372036854775807, %i.ayi
  %i.ayl = icmp slt i64 %i.ayk, 1
  br i1 %i.ayl, label %bb.dc, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i395

bb.dc:                                            ; preds = %bb.db
  %i.aym = call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.aym, align 8, !tbaa !41
  invoke void @__cxa_throw(ptr nonnull %i.aym, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #26
          to label %.noexc.i404 unwind label %.loopexit.split-lp569

.noexc.i404:                                      ; preds = %bb.dc
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i395: ; preds = %bb.db, %.loopexit557
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %32, i64 noundef 1, i64 noundef %i.ayi)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS2_EEEEvRKNS_9EigenBaseIT_EE.exit.i396 unwind label %.loopexit568

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS2_EEEEvRKNS_9EigenBaseIT_EE.exit.i396: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i395
  %i.ayn = load i64, ptr %i.c, align 8, !tbaa !24 ; 4 uses
  %i.ayo = load ptr, ptr %30, align 8, !tbaa !32  ; 5 uses
  %i.ayp = ptrtoaddr ptr %i.ayo to i64
  %i.ayq = load i64, ptr %i.aq, align 8, !tbaa !31 ; 3 uses
  %i.ayr = load i64, ptr %i.au, align 8, !tbaa !31
  %.not8.i.i.i.i.i.i397 = icmp eq i64 %i.ayr, %i.ayq
  br i1 %.not8.i.i.i.i.i.i397, label %bb.dd, label %thread-pre-split.i.i.i.i.i398

thread-pre-split.i.i.i.i.i398:                    ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS2_EEEEvRKNS_9EigenBaseIT_EE.exit.i396
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %32, i64 noundef 1, i64 noundef %i.ayq)
          to label %.noexc5.i399 unwind label %.loopexit568

.noexc5.i399:                                     ; preds = %thread-pre-split.i.i.i.i.i398
  %.pr.i.i.i.i.i400 = load i64, ptr %i.au, align 8, !tbaa !31
  br label %bb.dd

bb.dd:                                            ; preds = %.noexc5.i399, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS2_EEEEvRKNS_9EigenBaseIT_EE.exit.i396
  %i.ays = phi i64 [ %.pr.i.i.i.i.i400, %.noexc5.i399 ], [ %i.ayq, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS2_EEEEvRKNS_9EigenBaseIT_EE.exit.i396 ] ; 7 uses
  %i.ayt = load ptr, ptr %32, align 8, !tbaa !32  ; 5 uses
  %i.ayu = ptrtoaddr ptr %i.ayt to i64            ; 2 uses
  %i.ayv = icmp sgt i64 %i.ays, 0
  br i1 %i.ayv, label %.lr.ph.i.i.i.i.i.i401.preheader, label %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit360

.lr.ph.i.i.i.i.i.i401.preheader:                  ; preds = %bb.dd
  %min.iters.check920 = icmp ugt i64 %i.ays, 7
  %ident.check915.not = icmp eq i64 %i.ayn, 1
  %or.cond1035 = select i1 %min.iters.check920, i1 %ident.check915.not, i1 false
  br i1 %or.cond1035, label %vector.memcheck916, label %.lr.ph.i.i.i.i.i.i401.preheader1043

vector.memcheck916:                               ; preds = %.lr.ph.i.i.i.i.i.i401.preheader
  %i.ayw = shl nsw i64 %i.aye, 3
  %i.ayx = add i64 %i.ayw, %i.ayg
  %i.ayy = sub i64 %i.ayx, %i.ayu
  %diff.check917 = icmp ugt i64 %i.ayy, -32
  %i.ayz = sub i64 %i.ayp, %i.ayu
  %diff.check918 = icmp ugt i64 %i.ayz, -32
  %conflict.rdx = or i1 %diff.check917, %diff.check918
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i.i.i401.preheader1043, label %vector.ph921

vector.ph921:                                     ; preds = %vector.memcheck916
  %n.vec922 = and i64 %i.ays, 9223372036854775804 ; 3 uses
  br label %vector.body923

vector.body923:                                   ; preds = %vector.body923, %vector.ph921
  %index924 = phi i64 [ 0, %vector.ph921 ], [ %index.next929, %vector.body923 ] ; 4 uses
  %i.aza = getelementptr inbounds nuw [8 x i8], ptr %i.ayt, i64 %index924 ; 2 uses
  %i.azb = getelementptr inbounds [8 x i8], ptr %i.ayh, i64 %index924 ; 2 uses
  %i.azc = getelementptr inbounds nuw i8, ptr %i.azb, i64 16
  %wide.load925 = load <2 x double>, ptr %i.azb, align 8, !tbaa !33
  %wide.load926 = load <2 x double>, ptr %i.azc, align 8, !tbaa !33
  %i.azd = getelementptr inbounds nuw [8 x i8], ptr %i.ayo, i64 %index924 ; 2 uses
  %i.aze = getelementptr inbounds nuw i8, ptr %i.azd, i64 16
  %wide.load927 = load <2 x double>, ptr %i.azd, align 8, !tbaa !33
  %wide.load928 = load <2 x double>, ptr %i.aze, align 8, !tbaa !33
  %i.azf = fsub <2 x double> %wide.load925, %wide.load927
  %i.azg = fsub <2 x double> %wide.load926, %wide.load928
  %i.azh = getelementptr inbounds nuw i8, ptr %i.aza, i64 16
  store <2 x double> %i.azf, ptr %i.aza, align 8, !tbaa !33
  store <2 x double> %i.azg, ptr %i.azh, align 8, !tbaa !33
  %index.next929 = add nuw i64 %index924, 4       ; 2 uses
  %i.azi = icmp eq i64 %index.next929, %n.vec922
  br i1 %i.azi, label %middle.block930, label %vector.body923, !llvm.loop !238

middle.block930:                                  ; preds = %vector.body923
  %cmp.n931 = icmp eq i64 %i.ays, %n.vec922
  br i1 %cmp.n931, label %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit360, label %.lr.ph.i.i.i.i.i.i401.preheader1043

.lr.ph.i.i.i.i.i.i401.preheader1043:              ; preds = %vector.memcheck916, %.lr.ph.i.i.i.i.i.i401.preheader, %middle.block930
  %.05.i.i.i.i.i.i402.ph = phi i64 [ 0, %vector.memcheck916 ], [ 0, %.lr.ph.i.i.i.i.i.i401.preheader ], [ %n.vec922, %middle.block930 ] ; 6 uses
  %.neg1144 = or disjoint i64 %.05.i.i.i.i.i.i402.ph, 1
  %xtraiter1126 = and i64 %i.ays, 1
  %lcmp.mod1127.not = icmp eq i64 %xtraiter1126, 0
  br i1 %lcmp.mod1127.not, label %.lr.ph.i.i.i.i.i.i401.prol.loopexit, label %.lr.ph.i.i.i.i.i.i401.prol

.lr.ph.i.i.i.i.i.i401.prol:                       ; preds = %.lr.ph.i.i.i.i.i.i401.preheader1043
  %i.azj = getelementptr inbounds nuw [8 x i8], ptr %i.ayt, i64 %.05.i.i.i.i.i.i402.ph
  %i.azk = mul nsw i64 %.05.i.i.i.i.i.i402.ph, %i.ayn
  %i.azl = getelementptr inbounds [8 x i8], ptr %i.ayh, i64 %i.azk
  %i.azm = load double, ptr %i.azl, align 8, !tbaa !33
  %i.azn = getelementptr inbounds nuw [8 x i8], ptr %i.ayo, i64 %.05.i.i.i.i.i.i402.ph
  %i.azo = load double, ptr %i.azn, align 8, !tbaa !33
  %i.azp = fsub double %i.azm, %i.azo
  store double %i.azp, ptr %i.azj, align 8, !tbaa !33
  %i.azq = or disjoint i64 %.05.i.i.i.i.i.i402.ph, 1
  br label %.lr.ph.i.i.i.i.i.i401.prol.loopexit

.lr.ph.i.i.i.i.i.i401.prol.loopexit:              ; preds = %.lr.ph.i.i.i.i.i.i401.prol, %.lr.ph.i.i.i.i.i.i401.preheader1043
  %.05.i.i.i.i.i.i402.unr = phi i64 [ %.05.i.i.i.i.i.i402.ph, %.lr.ph.i.i.i.i.i.i401.preheader1043 ], [ %i.azq, %.lr.ph.i.i.i.i.i.i401.prol ]
  %i.azr = icmp eq i64 %i.ays, %.neg1144
  br i1 %i.azr, label %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit360, label %.lr.ph.i.i.i.i.i.i401

.lr.ph.i.i.i.i.i.i401:                            ; preds = %.lr.ph.i.i.i.i.i.i401.prol.loopexit, %.lr.ph.i.i.i.i.i.i401
  %.05.i.i.i.i.i.i402 = phi i64 [ %i.bah, %.lr.ph.i.i.i.i.i.i401 ], [ %.05.i.i.i.i.i.i402.unr, %.lr.ph.i.i.i.i.i.i401.prol.loopexit ] ; 5 uses
  %i.azs = getelementptr inbounds nuw [8 x i8], ptr %i.ayt, i64 %.05.i.i.i.i.i.i402
  %i.azt = mul nsw i64 %.05.i.i.i.i.i.i402, %i.ayn
  %i.azu = getelementptr inbounds [8 x i8], ptr %i.ayh, i64 %i.azt
  %i.azv = load double, ptr %i.azu, align 8, !tbaa !33
  %i.azw = getelementptr inbounds nuw [8 x i8], ptr %i.ayo, i64 %.05.i.i.i.i.i.i402
  %i.azx = load double, ptr %i.azw, align 8, !tbaa !33
  %i.azy = fsub double %i.azv, %i.azx
  store double %i.azy, ptr %i.azs, align 8, !tbaa !33
  %i.azz = add nuw nsw i64 %.05.i.i.i.i.i.i402, 1 ; 3 uses
  %i.baa = getelementptr inbounds nuw [8 x i8], ptr %i.ayt, i64 %i.azz
  %i.bab = mul nsw i64 %i.azz, %i.ayn
  %i.bac = getelementptr inbounds [8 x i8], ptr %i.ayh, i64 %i.bab
  %i.bad = load double, ptr %i.bac, align 8, !tbaa !33
  %i.bae = getelementptr inbounds nuw [8 x i8], ptr %i.ayo, i64 %i.azz
  %i.baf = load double, ptr %i.bae, align 8, !tbaa !33
  %i.bag = fsub double %i.bad, %i.baf
  store double %i.bag, ptr %i.baa, align 8, !tbaa !33
  %i.bah = add nuw nsw i64 %.05.i.i.i.i.i.i402, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i403.1 = icmp eq i64 %i.bah, %i.ays
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
  %i.bai = load i64, ptr %i.ar, align 8, !tbaa !31 ; 22 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %33, i8 0, i64 24, i1 false)
  %i.baj = icmp sgt i64 %i.bai, 4611686018427387903
  br i1 %i.baj, label %.invoke801, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i362

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i362: ; preds = %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit360
  %.not.i408 = icmp eq i64 %i.bai, 0
  br i1 %.not.i408, label %.thread770, label %bb.de

bb.de:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i362
  %i.bak = icmp sgt i64 %i.bai, 0
  br i1 %i.bak, label %bb.df, label %bb.dh

bb.df:                                            ; preds = %bb.de
  %.not761 = icmp samesign ult i64 %i.bai, 1152921504606846976
end_hunk_0
begin_hunk_1_@_ZN3igl34per_vertex_point_to_plane_quadricsERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS1_IiLin1ELin1ELi0ELin1ELin1EEES7_S7_S7_RSt6vectorISt5tupleIJS2_NS1_IdLi1ELin1ELi1ELi1ELin1EEEdEESaISB_EE:bb.a
  store <2 x ptr> %i.cz, ptr %36, align 16, !tbaa !290, !alias.scope !289
  store i8 0, ptr %i.ay, align 16, !tbaa !55, !alias.scope !289
  %i.bgx = load i64, ptr %i.ba, align 8, !tbaa !24, !noalias !289
  %i.bgy = load i64, ptr %i.bb, align 8, !tbaa !23, !noalias !289
  %.sroa.speculated.i.i.i = call noundef i64 @llvm.smin.i64(i64 %i.bgy, i64 %i.bgx)
  store i64 %.sroa.speculated.i.i.i, ptr %i.az, align 8, !tbaa !56, !alias.scope !289
  store i64 0, ptr %i.bc, align 16, !tbaa !57, !alias.scope !289
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_19HouseholderSequenceIS2_NS1_IdLin1ELi1ELi0ELin1ELi1EEELi1EEEEERKNS_9EigenBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %35, ptr noundef nonnull align 1 dereferenceable(1) %36)
          to label %bb.dk unwind label %bb.ds

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #25
  %i.bgz = load i64, ptr %i.ar, align 8, !tbaa !31 ; 2 uses
  %i.bha = add nsw i64 %i.bgz, -2                 ; 2 uses
  %i.bhb = load i64, ptr %i.bd, align 8, !tbaa !23, !noalias !291
  %i.bhc = sub nsw i64 %i.bhb, %i.bha             ; 2 uses
  %i.bhd = load ptr, ptr %35, align 8, !tbaa !38, !noalias !291
  %i.bhe = load i64, ptr %i.be, align 8, !tbaa !24, !noalias !291 ; 2 uses
  %i.bhf = mul nsw i64 %i.bhe, %i.bhc
  %i.bhg = getelementptr inbounds [8 x i8], ptr %i.bhd, i64 %i.bhf
  store ptr %i.bhg, ptr %38, align 8
  store i64 %i.bgz, ptr %.sroa.5427.0..sroa_idx, align 8
  store i64 %i.bha, ptr %.sroa.6.0..sroa_idx, align 8
  store ptr %35, ptr %.sroa.7.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.8.0..sroa_idx, align 8
  store i64 %i.bhc, ptr %.sroa.9428.0..sroa_idx, align 8
  store i64 %i.bhe, ptr %.sroa.10.0..sroa_idx, align 8
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_9TransposeIKNS_5BlockIKS2_Lin1ELin1ELb0EEEEEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %37, ptr noundef nonnull align 1 dereferenceable(1) %38)
          to label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_9TransposeIKNS_5BlockIKS1_Lin1ELin1ELb0EEEEEEERKNS_9EigenBaseIT_EE.exit unwind label %bb.dt

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_9TransposeIKNS_5BlockIKS1_Lin1ELin1ELb0EEEEEEERKNS_9EigenBaseIT_EE.exit: ; preds = %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #25
  %i.bhh = load i64, ptr %i.bf, align 8, !tbaa !24 ; 5 uses
  %i.bhi = add nsw i64 %i.bhh, 1                  ; 11 uses
  %i.bhj = load i64, ptr %i.ar, align 8, !tbaa !31 ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %39, i8 0, i64 24, i1 false)
  %i.bhk = icmp eq i64 %i.bhi, 0
  %i.bhl = icmp eq i64 %i.bhj, 0
  %or.cond.i.i.i.i372 = or i1 %i.bhk, %i.bhl
  br i1 %or.cond.i.i.i.i372, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i373, label %bb.dl

bb.dl:                                            ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_9TransposeIKNS_5BlockIKS1_Lin1ELin1ELb0EEEEEEERKNS_9EigenBaseIT_EE.exit
  %i.bhm = sdiv i64 9223372036854775807, %i.bhj
  %.not547 = icmp slt i64 %i.bhh, %i.bhm
  br i1 %.not547, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i373, label %.invoke803

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i373: ; preds = %bb.dl, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_9TransposeIKNS_5BlockIKS1_Lin1ELin1ELb0EEEEEEERKNS_9EigenBaseIT_EE.exit
  %i.bhn = mul nsw i64 %i.bhj, %i.bhi             ; 4 uses
  %.not.i415 = icmp eq i64 %i.bhn, 0
  br i1 %.not.i415, label %bb.dp, label %bb.dm

bb.dm:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i373
  %i.bho = icmp sgt i64 %i.bhn, 0
  br i1 %i.bho, label %bb.dn, label %.sink.split.i416

bb.dn:                                            ; preds = %bb.dm
  %i.bhp = icmp samesign ugt i64 %i.bhn, 2305843009213693951
  br i1 %i.bhp, label %.invoke803, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i418

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i418: ; preds = %bb.dn
  %i.bhq = shl nuw i64 %i.bhn, 3
  %i.bhr = call noalias ptr @malloc(i64 noundef %i.bhq) #27 ; 2 uses
  %i.bhs = icmp eq ptr %i.bhr, null
  br i1 %i.bhs, label %.invoke803, label %.sink.split.i416

.invoke803:                                       ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i418, %bb.dn, %bb.dl
  %i.bht = call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bht, align 8, !tbaa !41
  invoke void @__cxa_throw(ptr nonnull %i.bht, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #26
          to label %.cont804 unwind label %bb.do

.cont804:                                         ; preds = %.invoke803
  unreachable

.sink.split.i416:                                 ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i418, %bb.dm
  %.sink.i417 = phi ptr [ %i.bhr, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i418 ], [ null, %bb.dm ] ; 2 uses
  store ptr %.sink.i417, ptr %39, align 8, !tbaa !38
  br label %bb.dp

bb.do:                                            ; preds = %.invoke803
  %i.bhu = landingpad { ptr, i32 }
          cleanup
  br label %.body375

bb.dp:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i373, %.sink.split.i416
  %i.bhv = phi ptr [ null, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i373 ], [ %.sink.i417, %.sink.split.i416 ] ; 6 uses
  store i64 %i.bhi, ptr %i.bg, align 8, !tbaa !24
  store i64 %i.bhj, ptr %i.bh, align 8, !tbaa !23
  %i.bhw = load ptr, ptr %31, align 8, !tbaa !32, !noalias !292 ; 5 uses
  %i.bhx = icmp sgt i64 %i.bhj, 0
  br i1 %i.bhx, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.preheader, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEElsINS1_IdLi1ELin1ELi1ELi1ELin1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit381

.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.preheader:  ; preds = %bb.dp
  %xtraiter1138 = and i64 %i.bhj, 3               ; 3 uses
  %i.bhy = icmp ult i64 %i.bhj, 4
  br i1 %i.bhy, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.epil.preheader, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.preheader.new

.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.preheader.new: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.preheader
  %unroll_iter1142 = and i64 %i.bhj, 9223372036854775804
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377

.preheader.i.i.i.i.i.i.i.i.i.i.i.i377:            ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.preheader.new
  %.0810.i.i.i.i.i.i.i.i.i.i.i.i378 = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.preheader.new ], [ %i.bio, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377 ] ; 6 uses
  %niter1143 = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.preheader.new ], [ %niter1143.next.3, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377 ]
  %i.bhz = mul nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i378, %i.bhi
  %i.bia = getelementptr [8 x i8], ptr %i.bhv, i64 %i.bhz
  %i.bib = getelementptr [8 x i8], ptr %i.bhw, i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i378
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i379 = load double, ptr %i.bib, align 8, !tbaa !33, !noalias !292
  store double %.pre.i.i.i.i.i.i.i.i.i.i.i.i379, ptr %i.bia, align 8, !tbaa !33, !noalias !292
  %i.bic = or disjoint i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i378, 1 ; 2 uses
  %i.bid = mul nsw i64 %i.bic, %i.bhi
  %i.bie = getelementptr [8 x i8], ptr %i.bhv, i64 %i.bid
  %i.bif = getelementptr [8 x i8], ptr %i.bhw, i64 %i.bic
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i379.1 = load double, ptr %i.bif, align 8, !tbaa !33, !noalias !292
  store double %.pre.i.i.i.i.i.i.i.i.i.i.i.i379.1, ptr %i.bie, align 8, !tbaa !33, !noalias !292
  %i.big = or disjoint i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i378, 2 ; 2 uses
  %i.bih = mul nsw i64 %i.big, %i.bhi
  %i.bii = getelementptr [8 x i8], ptr %i.bhv, i64 %i.bih
  %i.bij = getelementptr [8 x i8], ptr %i.bhw, i64 %i.big
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i379.2 = load double, ptr %i.bij, align 8, !tbaa !33, !noalias !292
  store double %.pre.i.i.i.i.i.i.i.i.i.i.i.i379.2, ptr %i.bii, align 8, !tbaa !33, !noalias !292
  %i.bik = or disjoint i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i378, 3 ; 2 uses
  %i.bil = mul nsw i64 %i.bik, %i.bhi
  %i.bim = getelementptr [8 x i8], ptr %i.bhv, i64 %i.bil
  %i.bin = getelementptr [8 x i8], ptr %i.bhw, i64 %i.bik
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i379.3 = load double, ptr %i.bin, align 8, !tbaa !33, !noalias !292
  store double %.pre.i.i.i.i.i.i.i.i.i.i.i.i379.3, ptr %i.bim, align 8, !tbaa !33, !noalias !292
  %i.bio = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i378, 4 ; 2 uses
  %niter1143.next.3 = add nuw nsw i64 %niter1143, 4 ; 2 uses
  %niter1143.ncmp.3 = icmp eq i64 %niter1143.next.3, %unroll_iter1142
  br i1 %niter1143.ncmp.3, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEElsINS1_IdLi1ELin1ELi1ELi1ELin1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit381.loopexit.unr-lcssa, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377, !llvm.loop !219

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEElsINS1_IdLi1ELin1ELi1ELi1ELin1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit381.loopexit.unr-lcssa: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377
  %lcmp.mod1140.not = icmp eq i64 %xtraiter1138, 0
  br i1 %lcmp.mod1140.not, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEElsINS1_IdLi1ELin1ELi1ELi1ELin1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit381, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.epil.preheader

.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.epil.preheader: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEElsINS1_IdLi1ELin1ELi1ELi1ELin1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit381.loopexit.unr-lcssa, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.preheader
  %.0810.i.i.i.i.i.i.i.i.i.i.i.i378.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.preheader ], [ %i.bio, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEElsINS1_IdLi1ELin1ELi1ELi1ELin1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit381.loopexit.unr-lcssa ]
  %lcmp.mod1141 = icmp ne i64 %xtraiter1138, 0
  call void @llvm.assume(i1 %lcmp.mod1141)
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.epil

.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.epil:       ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.epil, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.epil.preheader
  %.0810.i.i.i.i.i.i.i.i.i.i.i.i378.epil = phi i64 [ %i.bis, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.epil ], [ %.0810.i.i.i.i.i.i.i.i.i.i.i.i378.epil.init, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.epil.preheader ] ; 3 uses
  %epil.iter1139 = phi i64 [ %epil.iter1139.next, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.epil ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.epil.preheader ]
  %i.bip = mul nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i378.epil, %i.bhi
  %i.biq = getelementptr [8 x i8], ptr %i.bhv, i64 %i.bip
  %i.bir = getelementptr [8 x i8], ptr %i.bhw, i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i378.epil
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i379.epil = load double, ptr %i.bir, align 8, !tbaa !33, !noalias !292
  store double %.pre.i.i.i.i.i.i.i.i.i.i.i.i379.epil, ptr %i.biq, align 8, !tbaa !33, !noalias !292
  %i.bis = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i378.epil, 1
  %epil.iter1139.next = add i64 %epil.iter1139, 1 ; 2 uses
  %epil.iter1139.cmp.not = icmp eq i64 %epil.iter1139.next, %xtraiter1138
  br i1 %epil.iter1139.cmp.not, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEElsINS1_IdLi1ELin1ELi1ELi1ELin1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit381, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.epil, !llvm.loop !263

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEElsINS1_IdLi1ELin1ELi1ELi1ELin1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit381: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEElsINS1_IdLi1ELin1ELi1ELi1ELin1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit381.loopexit.unr-lcssa, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.epil, %bb.dp
  %i.bit = load i64, ptr %.phi.trans.insert14.i, align 8, !tbaa !23 ; 2 uses
  %.not.i382 = icmp ne i64 %i.bit, 0              ; 2 uses
  %.not8.i386 = icmp ne i64 %i.bhh, 1             ; 2 uses
  %narrow = or i1 %.not.i382, %.not8.i386
  %.sroa.5.0 = zext i1 %narrow to i64             ; 2 uses
  %i.biu = or i1 %.not.i382, %.not8.i386
  %i.biv = select i1 %i.biu, i64 0, i64 %i.bhj    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.biw = getelementptr inbounds nuw [8 x i8], ptr %i.bhv, i64 %.sroa.5.0
  %i.bix = mul nsw i64 %i.biv, %i.bhi
  %i.biy = getelementptr inbounds [8 x i8], ptr %i.biw, i64 %i.bix ; 2 uses
  store ptr %i.biy, ptr %10, align 8, !tbaa !59, !alias.scope !293
  store i64 %i.bhh, ptr %i.bi, align 8, !tbaa !26, !alias.scope !293
  store i64 %i.bit, ptr %i.bj, align 8, !tbaa !26, !alias.scope !293
  store ptr %39, ptr %i.bk, align 8, !tbaa !60, !alias.scope !293
  store i64 %.sroa.5.0, ptr %i.bl, align 8, !tbaa !26, !alias.scope !293
  store i64 %i.biv, ptr %i.bm, align 8, !tbaa !26, !alias.scope !293
  store i64 %i.bhi, ptr %i.bn, align 8, !tbaa !63, !alias.scope !293
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.biz = load ptr, ptr %37, align 8, !tbaa !38
  store ptr %i.biz, ptr %6, align 8, !tbaa !294
  store i64 %i.bhh, ptr %i.bo, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store ptr %i.biy, ptr %7, align 8, !tbaa !68
  store i64 %i.bhi, ptr %i.bp, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store ptr %7, ptr %8, align 8, !tbaa !70
  store ptr %6, ptr %i.bq, align 8, !tbaa !295
  store ptr %9, ptr %i.br, align 8, !tbaa !296
  store ptr %10, ptr %i.bs, align 8, !tbaa !74
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_(ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.dq unwind label %bb.du

bb.dq:                                            ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEElsINS1_IdLi1ELin1ELi1ELi1ELin1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit381
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #25
  %i.bja = fmul double %.scalar.i342544, %.scalar.i342544
  invoke fastcc void @"_ZZN3igl34per_vertex_point_to_plane_quadricsERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS1_IiLin1ELin1ELi0ELin1ELin1EEES7_S7_S7_RSt6vectorISt5tupleIJS2_NS1_IdLi1ELin1ELi1ELi1ELin1EEEdEESaISB_EEENK3$_0clERKSA_S4_d"(ptr dead_on_unwind noalias writable align 8 %40, ptr %14, ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef nonnull align 8 dereferenceable(24) %39, double noundef %i.bja)
          to label %.preheader555.preheader unwind label %bb.dv

.preheader555.preheader:                          ; preds = %bb.dq
  %.not = icmp eq i32 %.1.2768, 0
  br i1 %.not, label %.preheader555.1.thread, label %bb.dw

bb.dr:                                            ; preds = %_ZN5Eigen16CommaInitializerINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEcmINS_9TransposeIKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit
  %i.bjb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.ds:                                            ; preds = %bb.dj
  %i.bjc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #25
  br label %bb.ec

bb.dt:                                            ; preds = %bb.dk
  %i.bjd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #25
  br label %bb.eb

bb.du:                                            ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEElsINS1_IdLi1ELin1ELi1ELi1ELin1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit381
  %i.bje = landingpad { ptr, i32 }
          cleanup
  br label %.body375

bb.dv:                                            ; preds = %bb.dq
  %i.bjf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

bb.dw:                                            ; preds = %.preheader555.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #25
  %i.bjg = load ptr, ptr %1, align 8, !tbaa !273
  %i.bjh = getelementptr [4 x i8], ptr %i.bjg, i64 %indvars.iv670
  %i.bji = load i32, ptr %i.bjh, align 4, !tbaa !46
  %i.bjj = sext i32 %i.bji to i64
  %i.bjk = load ptr, ptr %5, align 8, !tbaa !37
  %i.bjl = getelementptr inbounds nuw [48 x i8], ptr %i.bjk, i64 %i.bjj
  invoke void @_ZN3iglplERKSt5tupleIJN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEdEES7_(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple") align 8 %41, ptr noundef nonnull align 8 dereferenceable(48) %i.bjl, ptr noundef nonnull align 8 dereferenceable(48) %40)
          to label %.preheader555.1 unwind label %bb.dx

bb.dx:                                            ; preds = %.preheader555.2.thread, %.preheader555.1.thread, %bb.dw
  %i.bjm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #25
  %i.bjn = load ptr, ptr %i.by, align 8, !tbaa !38
  call void @free(ptr noundef %i.bjn) #25
  %i.bjo = load ptr, ptr %i.bz, align 8, !tbaa !32
  call void @free(ptr noundef %i.bjo) #25
  br label %bb.ea

.preheader555.1:                                  ; preds = %bb.dw
  %i.bjp = load ptr, ptr %1, align 8, !tbaa !273
  %i.bjq = getelementptr [4 x i8], ptr %i.bjp, i64 %indvars.iv670
  %i.bjr = load i32, ptr %i.bjq, align 4, !tbaa !46
  %i.bjs = sext i32 %i.bjr to i64
  %i.bjt = load ptr, ptr %5, align 8, !tbaa !37
  %i.bju = getelementptr inbounds nuw [48 x i8], ptr %i.bjt, i64 %i.bjs ; 6 uses
  %i.bjv = getelementptr inbounds nuw i8, ptr %i.bju, i64 24 ; 2 uses
  %i.bjw = load ptr, ptr %i.bjv, align 8, !tbaa !49
  %i.bjx = load ptr, ptr %i.bt, align 8, !tbaa !49
  store ptr %i.bjx, ptr %i.bjv, align 8, !tbaa !49
  store ptr %i.bjw, ptr %i.bt, align 8, !tbaa !49
  %i.bjy = getelementptr inbounds nuw i8, ptr %i.bju, i64 32 ; 2 uses
  %i.bjz = load i64, ptr %i.bjy, align 8, !tbaa !50
  %i.bka = load i64, ptr %i.bu, align 8, !tbaa !50
  store i64 %i.bka, ptr %i.bjy, align 8, !tbaa !50
  store i64 %i.bjz, ptr %i.bu, align 8, !tbaa !50
  %i.bkb = getelementptr inbounds nuw i8, ptr %i.bju, i64 40 ; 2 uses
  %i.bkc = load i64, ptr %i.bkb, align 8, !tbaa !50
  %i.bkd = load i64, ptr %i.bv, align 8, !tbaa !50
  store i64 %i.bkd, ptr %i.bkb, align 8, !tbaa !50
  store i64 %i.bkc, ptr %i.bv, align 8, !tbaa !50
  %i.bke = getelementptr inbounds nuw i8, ptr %i.bju, i64 8 ; 2 uses
  %i.bkf = load ptr, ptr %i.bke, align 8, !tbaa !49
  %i.bkg = load ptr, ptr %i.bw, align 8, !tbaa !49
  store ptr %i.bkg, ptr %i.bke, align 8, !tbaa !49
  store ptr %i.bkf, ptr %i.bw, align 8, !tbaa !49
  %i.bkh = getelementptr inbounds nuw i8, ptr %i.bju, i64 16 ; 2 uses
  %i.bki = load i64, ptr %i.bkh, align 8, !tbaa !50
  %i.bkj = load i64, ptr %i.bx, align 8, !tbaa !50
  store i64 %i.bkj, ptr %i.bkh, align 8, !tbaa !50
  store i64 %i.bki, ptr %i.bx, align 8, !tbaa !50
  %i.bkk = load double, ptr %41, align 8, !tbaa !33
  store double %i.bkk, ptr %i.bju, align 8, !tbaa !33
  %i.bkl = load ptr, ptr %i.bt, align 8, !tbaa !38
  call void @free(ptr noundef %i.bkl) #25
  %i.bkm = load ptr, ptr %i.bw, align 8, !tbaa !32
  call void @free(ptr noundef %i.bkm) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #25
  %.not.1 = icmp eq i32 %.1.2768, 1
  br i1 %.not.1, label %.preheader555.2.thread, label %.preheader555.1.thread

.preheader555.1.thread:                           ; preds = %.preheader555.preheader, %.preheader555.1
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #25
  %i.bkn = load ptr, ptr %1, align 8, !tbaa !273
  %i.bko = load i64, ptr %i.an, align 8, !tbaa !271
  %i.bkp = getelementptr [4 x i8], ptr %i.bkn, i64 %indvars.iv670
  %i.bkq = getelementptr [4 x i8], ptr %i.bkp, i64 %i.bko
  %i.bkr = load i32, ptr %i.bkq, align 4, !tbaa !46
  %i.bks = sext i32 %i.bkr to i64
  %i.bkt = load ptr, ptr %5, align 8, !tbaa !37
  %i.bku = getelementptr inbounds nuw [48 x i8], ptr %i.bkt, i64 %i.bks
  invoke void @_ZN3iglplERKSt5tupleIJN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEdEES7_(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple") align 8 %41, ptr noundef nonnull align 8 dereferenceable(48) %i.bku, ptr noundef nonnull align 8 dereferenceable(48) %40)
          to label %.preheader555.2 unwind label %bb.dx

.preheader555.2:                                  ; preds = %.preheader555.1.thread
  %i.bkv = load ptr, ptr %1, align 8, !tbaa !273
  %i.bkw = load i64, ptr %i.an, align 8, !tbaa !271
  %i.bkx = getelementptr [4 x i8], ptr %i.bkv, i64 %indvars.iv670
  %i.bky = getelementptr [4 x i8], ptr %i.bkx, i64 %i.bkw
  %i.bkz = load i32, ptr %i.bky, align 4, !tbaa !46
  %i.bla = sext i32 %i.bkz to i64
  %i.blb = load ptr, ptr %5, align 8, !tbaa !37
  %i.blc = getelementptr inbounds nuw [48 x i8], ptr %i.blb, i64 %i.bla ; 6 uses
  %i.bld = getelementptr inbounds nuw i8, ptr %i.blc, i64 24 ; 2 uses
  %i.ble = load ptr, ptr %i.bld, align 8, !tbaa !49
  %i.blf = load ptr, ptr %i.bt, align 8, !tbaa !49
  store ptr %i.blf, ptr %i.bld, align 8, !tbaa !49
  store ptr %i.ble, ptr %i.bt, align 8, !tbaa !49
  %i.blg = getelementptr inbounds nuw i8, ptr %i.blc, i64 32 ; 2 uses
  %i.blh = load i64, ptr %i.blg, align 8, !tbaa !50
  %i.bli = load i64, ptr %i.bu, align 8, !tbaa !50
  store i64 %i.bli, ptr %i.blg, align 8, !tbaa !50
  store i64 %i.blh, ptr %i.bu, align 8, !tbaa !50
  %i.blj = getelementptr inbounds nuw i8, ptr %i.blc, i64 40 ; 2 uses
  %i.blk = load i64, ptr %i.blj, align 8, !tbaa !50
  %i.bll = load i64, ptr %i.bv, align 8, !tbaa !50
  store i64 %i.bll, ptr %i.blj, align 8, !tbaa !50
  store i64 %i.blk, ptr %i.bv, align 8, !tbaa !50
  %i.blm = getelementptr inbounds nuw i8, ptr %i.blc, i64 8 ; 2 uses
  %i.bln = load ptr, ptr %i.blm, align 8, !tbaa !49
  %i.blo = load ptr, ptr %i.bw, align 8, !tbaa !49
  store ptr %i.blo, ptr %i.blm, align 8, !tbaa !49
  store ptr %i.bln, ptr %i.bw, align 8, !tbaa !49
  %i.blp = getelementptr inbounds nuw i8, ptr %i.blc, i64 16 ; 2 uses
  %i.blq = load i64, ptr %i.blp, align 8, !tbaa !50
  %i.blr = load i64, ptr %i.bx, align 8, !tbaa !50
  store i64 %i.blr, ptr %i.blp, align 8, !tbaa !50
  store i64 %i.blq, ptr %i.bx, align 8, !tbaa !50
  %i.bls = load double, ptr %41, align 8, !tbaa !33
  store double %i.bls, ptr %i.blc, align 8, !tbaa !33
  %i.blt = load ptr, ptr %i.bt, align 8, !tbaa !38
  call void @free(ptr noundef %i.blt) #25
  %i.blu = load ptr, ptr %i.bw, align 8, !tbaa !32
  call void @free(ptr noundef %i.blu) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #25
  %.not.2 = icmp eq i32 %.1.2768, 2
  br i1 %.not.2, label %bb.dz, label %.preheader555.2.thread

.preheader555.2.thread:                           ; preds = %.preheader555.1, %.preheader555.2
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #25
  %i.blv = load ptr, ptr %1, align 8, !tbaa !273
  %i.blw = load i64, ptr %i.an, align 8, !tbaa !271
  %i.blx = getelementptr [4 x i8], ptr %i.blv, i64 %indvars.iv670
  %.idx762 = shl i64 %i.blw, 3
  %i.bly = getelementptr i8, ptr %i.blx, i64 %.idx762
  %i.blz = load i32, ptr %i.bly, align 4, !tbaa !46
  %i.bma = sext i32 %i.blz to i64
  %i.bmb = load ptr, ptr %5, align 8, !tbaa !37
  %i.bmc = getelementptr inbounds nuw [48 x i8], ptr %i.bmb, i64 %i.bma
  invoke void @_ZN3iglplERKSt5tupleIJN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEdEES7_(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple") align 8 %41, ptr noundef nonnull align 8 dereferenceable(48) %i.bmc, ptr noundef nonnull align 8 dereferenceable(48) %40)
          to label %bb.dy unwind label %bb.dx

bb.dy:                                            ; preds = %.preheader555.2.thread
  %i.bmd = load ptr, ptr %1, align 8, !tbaa !273
  %i.bme = load i64, ptr %i.an, align 8, !tbaa !271
  %i.bmf = getelementptr [4 x i8], ptr %i.bmd, i64 %indvars.iv670
  %.idx763 = shl i64 %i.bme, 3
  %i.bmg = getelementptr i8, ptr %i.bmf, i64 %.idx763
  %i.bmh = load i32, ptr %i.bmg, align 4, !tbaa !46
  %i.bmi = sext i32 %i.bmh to i64
  %i.bmj = load ptr, ptr %5, align 8, !tbaa !37
  %i.bmk = getelementptr inbounds nuw [48 x i8], ptr %i.bmj, i64 %i.bmi ; 6 uses
  %i.bml = getelementptr inbounds nuw i8, ptr %i.bmk, i64 24 ; 2 uses
  %i.bmm = load ptr, ptr %i.bml, align 8, !tbaa !49
  %i.bmn = load ptr, ptr %i.bt, align 8, !tbaa !49
  store ptr %i.bmn, ptr %i.bml, align 8, !tbaa !49
  store ptr %i.bmm, ptr %i.bt, align 8, !tbaa !49
  %i.bmo = getelementptr inbounds nuw i8, ptr %i.bmk, i64 32 ; 2 uses
  %i.bmp = load i64, ptr %i.bmo, align 8, !tbaa !50
  %i.bmq = load i64, ptr %i.bu, align 8, !tbaa !50
  store i64 %i.bmq, ptr %i.bmo, align 8, !tbaa !50
  store i64 %i.bmp, ptr %i.bu, align 8, !tbaa !50
  %i.bmr = getelementptr inbounds nuw i8, ptr %i.bmk, i64 40 ; 2 uses
  %i.bms = load i64, ptr %i.bmr, align 8, !tbaa !50
  %i.bmt = load i64, ptr %i.bv, align 8, !tbaa !50
  store i64 %i.bmt, ptr %i.bmr, align 8, !tbaa !50
  store i64 %i.bms, ptr %i.bv, align 8, !tbaa !50
  %i.bmu = getelementptr inbounds nuw i8, ptr %i.bmk, i64 8 ; 2 uses
  %i.bmv = load ptr, ptr %i.bmu, align 8, !tbaa !49
  %i.bmw = load ptr, ptr %i.bw, align 8, !tbaa !49
  store ptr %i.bmw, ptr %i.bmu, align 8, !tbaa !49
  store ptr %i.bmv, ptr %i.bw, align 8, !tbaa !49
  %i.bmx = getelementptr inbounds nuw i8, ptr %i.bmk, i64 16 ; 2 uses
  %i.bmy = load i64, ptr %i.bmx, align 8, !tbaa !50
end_hunk_1
