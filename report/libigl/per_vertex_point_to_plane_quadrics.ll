Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/per_vertex_point_to_plane_quadrics?download=true
inline.NumInlined: 8459
inline.NumDeleted: 4006
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 98
begin_hunk_0_@_ZN3igl34per_vertex_point_to_plane_quadricsERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS1_IiLin1ELin1ELi0ELin1ELin1EEES7_S7_S7_RSt6vectorISt5tupleIJS2_NS1_IdLi1ELin1ELi1ELi1ELin1EEEdEESaISB_EE:bb.a
  %i.aqt = getelementptr inbounds [8 x i8], ptr %i.apq, i64 %i.aqs
  %i.aqu = load double, ptr %i.aqt, align 8, !tbaa !33
  store double %i.aqu, ptr %i.aqr, align 8, !tbaa !33
  %i.aqv = add nuw nsw i64 %.05.i.i.i.i.i.i.i330, 1 ; 2 uses
  %i.aqw = getelementptr inbounds nuw [8 x i8], ptr %i.apz, i64 %i.aqv
  %i.aqx = mul nsw i64 %i.aqv, %i.apw
  %i.aqy = getelementptr inbounds [8 x i8], ptr %i.apq, i64 %i.aqx
  %i.aqz = load double, ptr %i.aqy, align 8, !tbaa !33
  store double %i.aqz, ptr %i.aqw, align 8, !tbaa !33
  %i.ara = add nuw nsw i64 %.05.i.i.i.i.i.i.i330, 2 ; 2 uses
  %i.arb = getelementptr inbounds nuw [8 x i8], ptr %i.apz, i64 %i.ara
  %i.arc = mul nsw i64 %i.ara, %i.apw
  %i.ard = getelementptr inbounds [8 x i8], ptr %i.apq, i64 %i.arc
  %i.are = load double, ptr %i.ard, align 8, !tbaa !33
  store double %i.are, ptr %i.arb, align 8, !tbaa !33
  %i.arf = add nuw nsw i64 %.05.i.i.i.i.i.i.i330, 3 ; 2 uses
  %i.arg = getelementptr inbounds nuw [8 x i8], ptr %i.apz, i64 %i.arf
  %i.arh = mul nsw i64 %i.arf, %i.apw
  %i.ari = getelementptr inbounds [8 x i8], ptr %i.apq, i64 %i.arh
  %i.arj = load double, ptr %i.ari, align 8, !tbaa !33
  store double %i.arj, ptr %i.arg, align 8, !tbaa !33
  %i.ark = add nuw nsw i64 %.05.i.i.i.i.i.i.i330, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i331.3 = icmp eq i64 %i.ark, %i.apy
  br i1 %exitcond.not.i.i.i.i.i.i.i331.3, label %.loopexit559, label %.lr.ph.i.i.i.i.i.i.i329, !llvm.loop !228

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
  %i.arl = select i1 %.cmp775, i32 2, i32 %.urem774
  %i.arm = zext nneg i32 %i.arl to i64
  %i.arn = load ptr, ptr %1, align 8, !tbaa !274
  %i.aro = load i64, ptr %i.an, align 8, !tbaa !272
  %i.arp = mul nsw i64 %i.aro, %i.arm
  %i.arq = getelementptr [4 x i8], ptr %i.arn, i64 %indvars.iv670
  %i.arr = getelementptr [4 x i8], ptr %i.arq, i64 %i.arp
  %i.ars = load i32, ptr %i.arr, align 4, !tbaa !46
  %i.art = sext i32 %i.ars to i64                 ; 2 uses
  %i.aru = load ptr, ptr %0, align 8, !tbaa !38, !noalias !286 ; 2 uses
  %i.arv = ptrtoaddr ptr %i.aru to i64
  %i.arw = getelementptr inbounds [8 x i8], ptr %i.aru, i64 %i.art ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %31, i8 0, i64 16, i1 false)
  %i.arx = icmp eq i64 %i.apy, 0
  br i1 %i.arx, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i, label %bb.ct

bb.ct:                                            ; preds = %.loopexit559
  %i.ary = sdiv i64 9223372036854775807, %i.apy
  %i.arz = icmp slt i64 %i.ary, 1
  br i1 %i.arz, label %bb.cu, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i

bb.cu:                                            ; preds = %bb.ct
  %i.asa = call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.asa, align 8, !tbaa !41
  invoke void @__cxa_throw(ptr nonnull %i.asa, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #26
          to label %.noexc.i392 unwind label %.loopexit.split-lp564

.noexc.i392:                                      ; preds = %bb.cu
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i: ; preds = %bb.ct, %.loopexit559
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %31, i64 noundef 1, i64 noundef %i.apy)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS2_EEEEvRKNS_9EigenBaseIT_EE.exit.i unwind label %.loopexit563

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS2_EEEEvRKNS_9EigenBaseIT_EE.exit.i: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i
  %i.asb = load i64, ptr %i.c, align 8, !tbaa !24 ; 4 uses
  %i.asc = load ptr, ptr %30, align 8, !tbaa !32  ; 5 uses
  %i.asd = ptrtoaddr ptr %i.asc to i64
  %i.ase = load i64, ptr %i.aq, align 8, !tbaa !31 ; 3 uses
  %i.asf = load i64, ptr %i.ar, align 8, !tbaa !31
  %.not8.i.i.i.i.i.i = icmp eq i64 %i.asf, %i.ase
  br i1 %.not8.i.i.i.i.i.i, label %bb.cv, label %thread-pre-split.i.i.i.i.i

thread-pre-split.i.i.i.i.i:                       ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS2_EEEEvRKNS_9EigenBaseIT_EE.exit.i
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %31, i64 noundef 1, i64 noundef %i.ase)
          to label %.noexc5.i unwind label %.loopexit563

.noexc5.i:                                        ; preds = %thread-pre-split.i.i.i.i.i
  %.pr.i.i.i.i.i = load i64, ptr %i.ar, align 8, !tbaa !31
  br label %bb.cv

bb.cv:                                            ; preds = %.noexc5.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS2_EEEEvRKNS_9EigenBaseIT_EE.exit.i
  %i.asg = phi i64 [ %.pr.i.i.i.i.i, %.noexc5.i ], [ %i.ase, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS2_EEEEvRKNS_9EigenBaseIT_EE.exit.i ] ; 22 uses
  %i.ash = load ptr, ptr %31, align 8, !tbaa !32  ; 19 uses
  %i.asi = ptrtoaddr ptr %i.ash to i64            ; 2 uses
  %i.asj = icmp sgt i64 %i.asg, 0
  br i1 %i.asj, label %.lr.ph.i.i.i.i.i.i391.preheader, label %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i391.preheader:                  ; preds = %bb.cv
  %min.iters.check951 = icmp ugt i64 %i.asg, 7
  %ident.check945.not = icmp eq i64 %i.asb, 1
  %or.cond1034 = select i1 %min.iters.check951, i1 %ident.check945.not, i1 false
  br i1 %or.cond1034, label %vector.memcheck946, label %.lr.ph.i.i.i.i.i.i391.preheader1064

vector.memcheck946:                               ; preds = %.lr.ph.i.i.i.i.i.i391.preheader
  %i.ask = shl nsw i64 %i.art, 3
  %i.asl = add i64 %i.ask, %i.arv
  %i.asm = sub i64 %i.asl, %i.asi
  %diff.check947 = icmp ugt i64 %i.asm, -32
  %i.asn = sub i64 %i.asd, %i.asi
  %diff.check948 = icmp ugt i64 %i.asn, -32
  %conflict.rdx949 = or i1 %diff.check947, %diff.check948
  br i1 %conflict.rdx949, label %.lr.ph.i.i.i.i.i.i391.preheader1064, label %vector.ph952

vector.ph952:                                     ; preds = %vector.memcheck946
  %n.vec953 = and i64 %i.asg, 9223372036854775804 ; 3 uses
  br label %vector.body954

vector.body954:                                   ; preds = %vector.body954, %vector.ph952
  %index955 = phi i64 [ 0, %vector.ph952 ], [ %index.next960, %vector.body954 ] ; 4 uses
  %i.aso = getelementptr inbounds nuw [8 x i8], ptr %i.ash, i64 %index955 ; 2 uses
  %i.asp = getelementptr inbounds [8 x i8], ptr %i.arw, i64 %index955 ; 2 uses
  %i.asq = getelementptr inbounds nuw i8, ptr %i.asp, i64 16
  %wide.load956 = load <2 x double>, ptr %i.asp, align 8, !tbaa !33
  %wide.load957 = load <2 x double>, ptr %i.asq, align 8, !tbaa !33
  %i.asr = getelementptr inbounds nuw [8 x i8], ptr %i.asc, i64 %index955 ; 2 uses
  %i.ass = getelementptr inbounds nuw i8, ptr %i.asr, i64 16
  %wide.load958 = load <2 x double>, ptr %i.asr, align 8, !tbaa !33
  %wide.load959 = load <2 x double>, ptr %i.ass, align 8, !tbaa !33
  %i.ast = fsub <2 x double> %wide.load956, %wide.load958
  %i.asu = fsub <2 x double> %wide.load957, %wide.load959
  %i.asv = getelementptr inbounds nuw i8, ptr %i.aso, i64 16
  store <2 x double> %i.ast, ptr %i.aso, align 8, !tbaa !33
  store <2 x double> %i.asu, ptr %i.asv, align 8, !tbaa !33
  %index.next960 = add nuw i64 %index955, 4       ; 2 uses
  %i.asw = icmp eq i64 %index.next960, %n.vec953
  br i1 %i.asw, label %middle.block961, label %vector.body954, !llvm.loop !231

middle.block961:                                  ; preds = %vector.body954
  %cmp.n962 = icmp eq i64 %i.asg, %n.vec953
  br i1 %cmp.n962, label %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit.thread, label %.lr.ph.i.i.i.i.i.i391.preheader1064

.lr.ph.i.i.i.i.i.i391.preheader1064:              ; preds = %vector.memcheck946, %.lr.ph.i.i.i.i.i.i391.preheader, %middle.block961
  %.05.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck946 ], [ 0, %.lr.ph.i.i.i.i.i.i391.preheader ], [ %n.vec953, %middle.block961 ] ; 6 uses
  %.neg = or disjoint i64 %.05.i.i.i.i.i.i.ph, 1
  %xtraiter1139 = and i64 %i.asg, 1
  %lcmp.mod1140.not = icmp eq i64 %xtraiter1139, 0
  br i1 %lcmp.mod1140.not, label %.lr.ph.i.i.i.i.i.i391.prol.loopexit, label %.lr.ph.i.i.i.i.i.i391.prol

.lr.ph.i.i.i.i.i.i391.prol:                       ; preds = %.lr.ph.i.i.i.i.i.i391.preheader1064
  %i.asx = getelementptr inbounds nuw [8 x i8], ptr %i.ash, i64 %.05.i.i.i.i.i.i.ph
  %i.asy = mul nsw i64 %.05.i.i.i.i.i.i.ph, %i.asb
  %i.asz = getelementptr inbounds [8 x i8], ptr %i.arw, i64 %i.asy
  %i.ata = load double, ptr %i.asz, align 8, !tbaa !33
  %i.atb = getelementptr inbounds nuw [8 x i8], ptr %i.asc, i64 %.05.i.i.i.i.i.i.ph
  %i.atc = load double, ptr %i.atb, align 8, !tbaa !33
  %i.atd = fsub double %i.ata, %i.atc
  store double %i.atd, ptr %i.asx, align 8, !tbaa !33
  %i.ate = or disjoint i64 %.05.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i391.prol.loopexit

.lr.ph.i.i.i.i.i.i391.prol.loopexit:              ; preds = %.lr.ph.i.i.i.i.i.i391.prol, %.lr.ph.i.i.i.i.i.i391.preheader1064
  %.05.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i391.preheader1064 ], [ %i.ate, %.lr.ph.i.i.i.i.i.i391.prol ]
  %i.atf = icmp eq i64 %i.asg, %.neg
  br i1 %i.atf, label %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit.thread, label %.lr.ph.i.i.i.i.i.i391

.lr.ph.i.i.i.i.i.i391:                            ; preds = %.lr.ph.i.i.i.i.i.i391.prol.loopexit, %.lr.ph.i.i.i.i.i.i391
  %.05.i.i.i.i.i.i = phi i64 [ %i.atv, %.lr.ph.i.i.i.i.i.i391 ], [ %.05.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i391.prol.loopexit ] ; 5 uses
  %i.atg = getelementptr inbounds nuw [8 x i8], ptr %i.ash, i64 %.05.i.i.i.i.i.i
  %i.ath = mul nsw i64 %.05.i.i.i.i.i.i, %i.asb
  %i.ati = getelementptr inbounds [8 x i8], ptr %i.arw, i64 %i.ath
  %i.atj = load double, ptr %i.ati, align 8, !tbaa !33
  %i.atk = getelementptr inbounds nuw [8 x i8], ptr %i.asc, i64 %.05.i.i.i.i.i.i
  %i.atl = load double, ptr %i.atk, align 8, !tbaa !33
  %i.atm = fsub double %i.atj, %i.atl
  store double %i.atm, ptr %i.atg, align 8, !tbaa !33
  %i.atn = add nuw nsw i64 %.05.i.i.i.i.i.i, 1    ; 3 uses
  %i.ato = getelementptr inbounds nuw [8 x i8], ptr %i.ash, i64 %i.atn
  %i.atp = mul nsw i64 %i.atn, %i.asb
  %i.atq = getelementptr inbounds [8 x i8], ptr %i.arw, i64 %i.atp
  %i.atr = load double, ptr %i.atq, align 8, !tbaa !33
  %i.ats = getelementptr inbounds nuw [8 x i8], ptr %i.asc, i64 %i.atn
  %i.att = load double, ptr %i.ats, align 8, !tbaa !33
  %i.atu = fsub double %i.atr, %i.att
  store double %i.atu, ptr %i.ato, align 8, !tbaa !33
  %i.atv = add nuw nsw i64 %.05.i.i.i.i.i.i, 2    ; 2 uses
  %exitcond.not.i.i.i.i.i.i.1 = icmp eq i64 %i.atv, %i.asg
  br i1 %exitcond.not.i.i.i.i.i.i.1, label %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit.thread, label %.lr.ph.i.i.i.i.i.i391, !llvm.loop !232

.loopexit563:                                     ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i, %thread-pre-split.i.i.i.i.i
  %lpad.loopexit565 = landingpad { ptr, i32 }
          cleanup
  br label %.body393

.loopexit.split-lp564:                            ; preds = %bb.cu
  %lpad.loopexit.split-lp566 = landingpad { ptr, i32 }
          cleanup
  br label %.body393

_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit: ; preds = %bb.cv
  %i.atw = icmp eq i64 %i.asg, 0
  br i1 %i.atw, label %.loopexit557, label %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit.thread

_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit.thread: ; preds = %.lr.ph.i.i.i.i.i.i391.prol.loopexit, %.lr.ph.i.i.i.i.i.i391, %middle.block961, %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit
  %i.atx = sdiv i64 %i.asg, 4
  %i.aty = shl nsw i64 %i.atx, 2                  ; 3 uses
  %i.atz = sdiv i64 %i.asg, 2
  %i.aua = shl nsw i64 %i.atz, 1                  ; 9 uses
  %.off.i.i.i.i.i337 = add i64 %i.asg, 1
  %.not.i.i.i.i.i338 = icmp ult i64 %.off.i.i.i.i.i337, 3
  br i1 %.not.i.i.i.i.i338, label %bb.da, label %bb.cw

bb.cw:                                            ; preds = %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit.thread
  %i.aub = load <2 x double>, ptr %i.ash, align 16, !tbaa !45 ; 2 uses
  %i.auc = fmul <2 x double> %i.aub, %i.aub       ; 3 uses
  %i.aud = icmp sgt i64 %i.asg, 3
  br i1 %i.aud, label %bb.cx, label %bb.cz

bb.cx:                                            ; preds = %bb.cw
  %i.aue = getelementptr inbounds nuw i8, ptr %i.ash, i64 16
  %i.auf = load <2 x double>, ptr %i.aue, align 16, !tbaa !45 ; 2 uses
  %i.aug = fmul <2 x double> %i.auf, %i.auf       ; 2 uses
  %i.auh = icmp samesign ugt i64 %i.asg, 7
  br i1 %i.auh, label %.lr.ph.i.i.i.i.i350, label %._crit_edge.i.i.i.i.i347

._crit_edge.i.i.i.i.i347:                         ; preds = %.lr.ph.i.i.i.i.i350, %bb.cx
  %.075.lcssa.i.i.i.i.i348 = phi <2 x double> [ %i.aug, %bb.cx ], [ %i.aus, %.lr.ph.i.i.i.i.i350 ]
  %.072.lcssa.i.i.i.i.i349 = phi <2 x double> [ %i.auc, %bb.cx ], [ %i.aun, %.lr.ph.i.i.i.i.i350 ]
  %i.aui = fadd <2 x double> %.075.lcssa.i.i.i.i.i348, %.072.lcssa.i.i.i.i.i349 ; 2 uses
  %i.auj = icmp sgt i64 %i.aua, %i.aty
  br i1 %i.auj, label %bb.cy, label %bb.cz

.lr.ph.i.i.i.i.i350:                              ; preds = %bb.cx, %.lr.ph.i.i.i.i.i350
  %.05480.i.i.i.i.i351 = phi i64 [ %.054.i.i.i.i.i355, %.lr.ph.i.i.i.i.i350 ], [ 4, %bb.cx ] ; 3 uses
  %.054.in79.i.i.i.i.i352 = phi i64 [ %.05480.i.i.i.i.i351, %.lr.ph.i.i.i.i.i350 ], [ 0, %bb.cx ]
  %.07278.i.i.i.i.i353 = phi <2 x double> [ %i.aun, %.lr.ph.i.i.i.i.i350 ], [ %i.auc, %bb.cx ]
  %.07577.i.i.i.i.i354 = phi <2 x double> [ %i.aus, %.lr.ph.i.i.i.i.i350 ], [ %i.aug, %bb.cx ]
  %i.auk = getelementptr inbounds nuw [8 x i8], ptr %i.ash, i64 %.05480.i.i.i.i.i351
  %i.aul = load <2 x double>, ptr %i.auk, align 16, !tbaa !45 ; 2 uses
  %i.aum = fmul <2 x double> %i.aul, %i.aul
  %i.aun = fadd <2 x double> %.07278.i.i.i.i.i353, %i.aum ; 2 uses
  %i.auo = getelementptr inbounds nuw [8 x i8], ptr %i.ash, i64 %.054.in79.i.i.i.i.i352
  %i.aup = getelementptr inbounds nuw i8, ptr %i.auo, i64 48
  %i.auq = load <2 x double>, ptr %i.aup, align 16, !tbaa !45 ; 2 uses
  %i.aur = fmul <2 x double> %i.auq, %i.auq
  %i.aus = fadd <2 x double> %.07577.i.i.i.i.i354, %i.aur ; 2 uses
  %.054.i.i.i.i.i355 = add nuw nsw i64 %.05480.i.i.i.i.i351, 4 ; 2 uses
  %i.aut = icmp slt i64 %.054.i.i.i.i.i355, %i.aty
  br i1 %i.aut, label %.lr.ph.i.i.i.i.i350, label %._crit_edge.i.i.i.i.i347, !llvm.loop !4

bb.cy:                                            ; preds = %._crit_edge.i.i.i.i.i347
  %i.auu = getelementptr inbounds nuw [8 x i8], ptr %i.ash, i64 %i.aty
  %i.auv = load <2 x double>, ptr %i.auu, align 16, !tbaa !45 ; 2 uses
  %i.auw = fmul <2 x double> %i.auv, %i.auv
  %i.aux = fadd <2 x double> %i.aui, %i.auw
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %._crit_edge.i.i.i.i.i347, %bb.cw
  %.274.i.i.i.i.i339 = phi <2 x double> [ %i.auc, %bb.cw ], [ %i.aux, %bb.cy ], [ %i.aui, %._crit_edge.i.i.i.i.i347 ] ; 2 uses
  %shift1054 = shufflevector <2 x double> %.274.i.i.i.i.i339, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1055 = fadd <2 x double> %.274.i.i.i.i.i339, %shift1054
  %i.auy = extractelement <2 x double> %foldExtExtBinop1055, i64 0 ; 3 uses
  %i.auz = icmp slt i64 %i.aua, %i.asg
  br i1 %i.auz, label %.lr.ph85.i.i.i.i.i343.preheader, label %.loopexit558

.lr.ph85.i.i.i.i.i343.preheader:                  ; preds = %bb.cz
  %i.ava = sub i64 %i.asg, %i.aua
  %xtraiter1142 = and i64 %i.ava, 3               ; 2 uses
  %lcmp.mod1143.not = icmp eq i64 %xtraiter1142, 0
  br i1 %lcmp.mod1143.not, label %.lr.ph85.i.i.i.i.i343.prol.loopexit, label %.lr.ph85.i.i.i.i.i343.prol

.lr.ph85.i.i.i.i.i343.prol:                       ; preds = %.lr.ph85.i.i.i.i.i343.preheader, %.lr.ph85.i.i.i.i.i343.prol
  %.05283.i.i.i.i.i344.prol = phi i64 [ %i.avf, %.lr.ph85.i.i.i.i.i343.prol ], [ %i.aua, %.lr.ph85.i.i.i.i.i343.preheader ] ; 2 uses
  %.182.i.i.i.i.i345.prol = phi double [ %i.ave, %.lr.ph85.i.i.i.i.i343.prol ], [ %i.auy, %.lr.ph85.i.i.i.i.i343.preheader ]
  %prol.iter1144 = phi i64 [ %prol.iter1144.next, %.lr.ph85.i.i.i.i.i343.prol ], [ 0, %.lr.ph85.i.i.i.i.i343.preheader ]
  %i.avb = getelementptr inbounds [8 x i8], ptr %i.ash, i64 %.05283.i.i.i.i.i344.prol
  %i.avc = load double, ptr %i.avb, align 8, !tbaa !33 ; 2 uses
  %i.avd = fmul double %i.avc, %i.avc
  %i.ave = fadd double %.182.i.i.i.i.i345.prol, %i.avd ; 3 uses
  %i.avf = add nsw i64 %.05283.i.i.i.i.i344.prol, 1 ; 2 uses
  %prol.iter1144.next = add i64 %prol.iter1144, 1 ; 2 uses
  %prol.iter1144.cmp.not = icmp eq i64 %prol.iter1144.next, %xtraiter1142
  br i1 %prol.iter1144.cmp.not, label %.lr.ph85.i.i.i.i.i343.prol.loopexit, label %.lr.ph85.i.i.i.i.i343.prol, !llvm.loop !233

.lr.ph85.i.i.i.i.i343.prol.loopexit:              ; preds = %.lr.ph85.i.i.i.i.i343.prol, %.lr.ph85.i.i.i.i.i343.preheader
  %.lcssa1085.unr = phi double [ poison, %.lr.ph85.i.i.i.i.i343.preheader ], [ %i.ave, %.lr.ph85.i.i.i.i.i343.prol ]
  %.05283.i.i.i.i.i344.unr = phi i64 [ %i.aua, %.lr.ph85.i.i.i.i.i343.preheader ], [ %i.avf, %.lr.ph85.i.i.i.i.i343.prol ]
  %.182.i.i.i.i.i345.unr = phi double [ %i.auy, %.lr.ph85.i.i.i.i.i343.preheader ], [ %i.ave, %.lr.ph85.i.i.i.i.i343.prol ]
  %i.avg = sub i64 %i.aua, %i.asg
  %i.avh = icmp ugt i64 %i.avg, -4
  br i1 %i.avh, label %.loopexit558, label %.lr.ph85.i.i.i.i.i343

.lr.ph85.i.i.i.i.i343:                            ; preds = %.lr.ph85.i.i.i.i.i343.prol.loopexit, %.lr.ph85.i.i.i.i.i343
  %.05283.i.i.i.i.i344 = phi i64 [ %i.awb, %.lr.ph85.i.i.i.i.i343 ], [ %.05283.i.i.i.i.i344.unr, %.lr.ph85.i.i.i.i.i343.prol.loopexit ] ; 5 uses
  %.182.i.i.i.i.i345 = phi double [ %i.awa, %.lr.ph85.i.i.i.i.i343 ], [ %.182.i.i.i.i.i345.unr, %.lr.ph85.i.i.i.i.i343.prol.loopexit ]
  %i.avi = getelementptr inbounds [8 x i8], ptr %i.ash, i64 %.05283.i.i.i.i.i344
  %i.avj = load double, ptr %i.avi, align 8, !tbaa !33 ; 2 uses
  %i.avk = fmul double %i.avj, %i.avj
  %i.avl = fadd double %.182.i.i.i.i.i345, %i.avk
  %i.avm = getelementptr [8 x i8], ptr %i.ash, i64 %.05283.i.i.i.i.i344
  %i.avn = getelementptr i8, ptr %i.avm, i64 8
  %i.avo = load double, ptr %i.avn, align 8, !tbaa !33 ; 2 uses
  %i.avp = fmul double %i.avo, %i.avo
  %i.avq = fadd double %i.avl, %i.avp
  %i.avr = getelementptr [8 x i8], ptr %i.ash, i64 %.05283.i.i.i.i.i344
  %i.avs = getelementptr i8, ptr %i.avr, i64 16
  %i.avt = load double, ptr %i.avs, align 8, !tbaa !33 ; 2 uses
  %i.avu = fmul double %i.avt, %i.avt
  %i.avv = fadd double %i.avq, %i.avu
  %i.avw = getelementptr [8 x i8], ptr %i.ash, i64 %.05283.i.i.i.i.i344
  %i.avx = getelementptr i8, ptr %i.avw, i64 24
  %i.avy = load double, ptr %i.avx, align 8, !tbaa !33 ; 2 uses
  %i.avz = fmul double %i.avy, %i.avy
  %i.awa = fadd double %i.avv, %i.avz             ; 2 uses
  %i.awb = add nsw i64 %.05283.i.i.i.i.i344, 4    ; 2 uses
  %exitcond.not.i.i.i.i.i346.3 = icmp eq i64 %i.awb, %i.asg
  br i1 %exitcond.not.i.i.i.i.i346.3, label %.loopexit558, label %.lr.ph85.i.i.i.i.i343, !llvm.loop !5

bb.da:                                            ; preds = %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit.thread
  %i.awc = load double, ptr %i.ash, align 8, !tbaa !33 ; 2 uses
  %i.awd = fmul double %i.awc, %i.awc
  %i.awe = call double @llvm.sqrt.f64(double %i.awd)
  br label %._crit_edge.i.i.i.i.i.i

.loopexit558:                                     ; preds = %.lr.ph85.i.i.i.i.i343.prol.loopexit, %.lr.ph85.i.i.i.i.i343, %bb.cz
  %.0.i.i.i341 = phi double [ %i.auy, %bb.cz ], [ %.lcssa1085.unr, %.lr.ph85.i.i.i.i.i343.prol.loopexit ], [ %i.awa, %.lr.ph85.i.i.i.i.i343 ]
  %.scalar.i342 = call noundef double @llvm.sqrt.f64(double %.0.i.i.i341) ; 3 uses
  %i.awf = icmp sgt i64 %i.asg, 1
  br i1 %i.awf, label %.lr.ph.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %.loopexit558
  %i.awg = insertelement <2 x double> poison, double %.scalar.i342, i64 0
  %i.awh = shufflevector <2 x double> %i.awg, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %bb.da, %.loopexit558
  %42 = phi i64 [ %i.aua, %.loopexit558 ], [ 0, %bb.da ], [ %i.aua, %.lr.ph.i.i.i.i.i.i ] ; 5 uses
  %.scalar.i342544 = phi double [ %.scalar.i342, %.loopexit558 ], [ %i.awe, %bb.da ], [ %.scalar.i342, %.lr.ph.i.i.i.i.i.i ] ; 5 uses
  %i.awi = icmp slt i64 %42, %i.asg
  br i1 %i.awi, label %.lr.ph.i.i.i.i.i.i.i356.preheader, label %.loopexit557

.lr.ph.i.i.i.i.i.i.i356.preheader:                ; preds = %._crit_edge.i.i.i.i.i.i
  %i.awj = sub i64 %i.asg, %42                    ; 2 uses
  %min.iters.check934 = icmp ult i64 %i.awj, 2
  br i1 %min.iters.check934, label %.lr.ph.i.i.i.i.i.i.i356.preheader1063, label %vector.ph935

vector.ph935:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i356.preheader
  %i.awk = and i64 %i.asg, 1                      ; 2 uses
  %n.vec936 = sub nuw i64 %i.awj, %i.awk          ; 2 uses
  %i.awl = add i64 %42, %n.vec936
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.scalar.i342544, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.awm = getelementptr [8 x i8], ptr %i.ash, i64 %42
  br label %vector.body937

vector.body937:                                   ; preds = %vector.body937, %vector.ph935
  %index938 = phi i64 [ 0, %vector.ph935 ], [ %index.next940, %vector.body937 ] ; 2 uses
  %i.awn = getelementptr [8 x i8], ptr %i.awm, i64 %index938 ; 2 uses
  %wide.load939 = load <2 x double>, ptr %i.awn, align 8, !tbaa !33
  %i.awo = fdiv <2 x double> %wide.load939, %broadcast.splat
  store <2 x double> %i.awo, ptr %i.awn, align 8, !tbaa !33
  %index.next940 = add nuw i64 %index938, 2       ; 2 uses
  %i.awp = icmp eq i64 %index.next940, %n.vec936
  br i1 %i.awp, label %middle.block941, label %vector.body937, !llvm.loop !234

middle.block941:                                  ; preds = %vector.body937
  %cmp.n942 = icmp eq i64 %i.awk, 0
  br i1 %cmp.n942, label %.loopexit557, label %.lr.ph.i.i.i.i.i.i.i356.preheader1063

.lr.ph.i.i.i.i.i.i.i356.preheader1063:            ; preds = %.lr.ph.i.i.i.i.i.i.i356.preheader, %middle.block941
  %.05.i.i.i.i.i.i.i357.ph = phi i64 [ %42, %.lr.ph.i.i.i.i.i.i.i356.preheader ], [ %i.awl, %middle.block941 ]
  br label %.lr.ph.i.i.i.i.i.i.i356

.lr.ph.i.i.i.i.i.i.i356:                          ; preds = %.lr.ph.i.i.i.i.i.i.i356.preheader1063, %.lr.ph.i.i.i.i.i.i.i356
  %.05.i.i.i.i.i.i.i357 = phi i64 [ %i.awt, %.lr.ph.i.i.i.i.i.i.i356 ], [ %.05.i.i.i.i.i.i.i357.ph, %.lr.ph.i.i.i.i.i.i.i356.preheader1063 ] ; 2 uses
  %i.awq = getelementptr inbounds [8 x i8], ptr %i.ash, i64 %.05.i.i.i.i.i.i.i357 ; 2 uses
  %i.awr = load double, ptr %i.awq, align 8, !tbaa !33
  %i.aws = fdiv double %i.awr, %.scalar.i342544
  store double %i.aws, ptr %i.awq, align 8, !tbaa !33
  %i.awt = add nsw i64 %.05.i.i.i.i.i.i.i357, 1   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i358 = icmp eq i64 %i.awt, %i.asg
  br i1 %exitcond.not.i.i.i.i.i.i.i358, label %.loopexit557, label %.lr.ph.i.i.i.i.i.i.i356, !llvm.loop !235

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.011.i.i.i.i.i.i = phi i64 [ %i.awx, %.lr.ph.i.i.i.i.i.i ], [ 0, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %i.awu = getelementptr inbounds nuw [8 x i8], ptr %i.ash, i64 %.011.i.i.i.i.i.i ; 2 uses
  %i.awv = load <2 x double>, ptr %i.awu, align 16, !tbaa !45
  %i.aww = fdiv <2 x double> %i.awv, %i.awh
  store <2 x double> %i.aww, ptr %i.awu, align 16, !tbaa !45
  %i.awx = add nuw nsw i64 %.011.i.i.i.i.i.i, 2   ; 2 uses
  %i.awy = icmp slt i64 %i.awx, %i.aua
  br i1 %i.awy, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !236

.loopexit557:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i356, %middle.block941, %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit, %._crit_edge.i.i.i.i.i.i
  %.scalar.i342544771 = phi double [ 0.000000e+00, %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit ], [ %.scalar.i342544, %._crit_edge.i.i.i.i.i.i ], [ %.scalar.i342544, %middle.block941 ], [ %.scalar.i342544, %.lr.ph.i.i.i.i.i.i.i356 ] ; 2 uses
  %i.awz = load i64, ptr %i.an, align 8, !tbaa !272 ; 2 uses
  %i.axa = zext nneg i32 %.1.2768 to i64
  %i.axb = mul nsw i64 %i.awz, %i.axa
  %i.axc = load ptr, ptr %2, align 8, !tbaa !274
  %i.axd = getelementptr [4 x i8], ptr %i.axc, i64 %i.axb
  %i.axe = getelementptr [4 x i8], ptr %i.axd, i64 %indvars.iv670
  %i.axf = load i32, ptr %i.axe, align 4, !tbaa !46
  %i.axg = sext i32 %i.axf to i64                 ; 2 uses
  %i.axh = load ptr, ptr %3, align 8, !tbaa !274
  %i.axi = getelementptr [4 x i8], ptr %i.axh, i64 %i.axg ; 2 uses
  %i.axj = load i32, ptr %i.axi, align 4, !tbaa !46
  %i.axk = zext i32 %i.axj to i64
  %i.axl = icmp eq i64 %indvars.iv670, %i.axk     ; 2 uses
  %i.axm = load i64, ptr %i.as, align 8, !tbaa !272
  %i.axn = select i1 %i.axl, i64 %i.axm, i64 0
  %i.axo = getelementptr [4 x i8], ptr %i.axi, i64 %i.axn
  %i.axp = load i32, ptr %i.axo, align 4, !tbaa !46
  %i.axq = load ptr, ptr %4, align 8, !tbaa !274
  %i.axr = load i64, ptr %i.at, align 8, !tbaa !272
  %i.axs = select i1 %i.axl, i64 %i.axr, i64 0
  %i.axt = getelementptr [4 x i8], ptr %i.axq, i64 %i.axg
  %i.axu = getelementptr [4 x i8], ptr %i.axt, i64 %i.axs
  %i.axv = load i32, ptr %i.axu, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #25
  %i.axw = sext i32 %i.axp to i64
  %i.axx = sext i32 %i.axv to i64
  %i.axy = load ptr, ptr %1, align 8, !tbaa !274
  %i.axz = mul nsw i64 %i.awz, %i.axx
  %i.aya = getelementptr [4 x i8], ptr %i.axy, i64 %i.axw
  %i.ayb = getelementptr [4 x i8], ptr %i.aya, i64 %i.axz
  %i.ayc = load i32, ptr %i.ayb, align 4, !tbaa !46
  %i.ayd = sext i32 %i.ayc to i64                 ; 2 uses
  %i.aye = load ptr, ptr %0, align 8, !tbaa !38, !noalias !287 ; 2 uses
  %i.ayf = ptrtoaddr ptr %i.aye to i64
  %i.ayg = getelementptr inbounds [8 x i8], ptr %i.aye, i64 %i.ayd ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %32, i8 0, i64 16, i1 false)
  %i.ayh = load i64, ptr %i.aq, align 8, !tbaa !31 ; 3 uses
  %i.ayi = icmp eq i64 %i.ayh, 0
  br i1 %i.ayi, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i395, label %bb.db

bb.db:                                            ; preds = %.loopexit557
  %i.ayj = sdiv i64 9223372036854775807, %i.ayh
  %i.ayk = icmp slt i64 %i.ayj, 1
  br i1 %i.ayk, label %bb.dc, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i395

bb.dc:                                            ; preds = %bb.db
  %i.ayl = call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ayl, align 8, !tbaa !41
  invoke void @__cxa_throw(ptr nonnull %i.ayl, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #26
          to label %.noexc.i404 unwind label %.loopexit.split-lp569

.noexc.i404:                                      ; preds = %bb.dc
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i395: ; preds = %bb.db, %.loopexit557
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %32, i64 noundef 1, i64 noundef %i.ayh)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS2_EEEEvRKNS_9EigenBaseIT_EE.exit.i396 unwind label %.loopexit568

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS2_EEEEvRKNS_9EigenBaseIT_EE.exit.i396: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i395
  %i.aym = load i64, ptr %i.c, align 8, !tbaa !24 ; 4 uses
  %i.ayn = load ptr, ptr %30, align 8, !tbaa !32  ; 5 uses
  %i.ayo = ptrtoaddr ptr %i.ayn to i64
  %i.ayp = load i64, ptr %i.aq, align 8, !tbaa !31 ; 3 uses
  %i.ayq = load i64, ptr %i.au, align 8, !tbaa !31
  %.not8.i.i.i.i.i.i397 = icmp eq i64 %i.ayq, %i.ayp
  br i1 %.not8.i.i.i.i.i.i397, label %bb.dd, label %thread-pre-split.i.i.i.i.i398

thread-pre-split.i.i.i.i.i398:                    ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS2_EEEEvRKNS_9EigenBaseIT_EE.exit.i396
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %32, i64 noundef 1, i64 noundef %i.ayp)
          to label %.noexc5.i399 unwind label %.loopexit568

.noexc5.i399:                                     ; preds = %thread-pre-split.i.i.i.i.i398
  %.pr.i.i.i.i.i400 = load i64, ptr %i.au, align 8, !tbaa !31
  br label %bb.dd

bb.dd:                                            ; preds = %.noexc5.i399, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS2_EEEEvRKNS_9EigenBaseIT_EE.exit.i396
  %i.ayr = phi i64 [ %.pr.i.i.i.i.i400, %.noexc5.i399 ], [ %i.ayp, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS2_EEEEvRKNS_9EigenBaseIT_EE.exit.i396 ] ; 7 uses
  %i.ays = load ptr, ptr %32, align 8, !tbaa !32  ; 5 uses
  %i.ayt = ptrtoaddr ptr %i.ays to i64            ; 2 uses
  %i.ayu = icmp sgt i64 %i.ayr, 0
  br i1 %i.ayu, label %.lr.ph.i.i.i.i.i.i401.preheader, label %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit360

.lr.ph.i.i.i.i.i.i401.preheader:                  ; preds = %bb.dd
  %min.iters.check920 = icmp ugt i64 %i.ayr, 7
  %ident.check915.not = icmp eq i64 %i.aym, 1
  %or.cond1035 = select i1 %min.iters.check920, i1 %ident.check915.not, i1 false
  br i1 %or.cond1035, label %vector.memcheck916, label %.lr.ph.i.i.i.i.i.i401.preheader1062

vector.memcheck916:                               ; preds = %.lr.ph.i.i.i.i.i.i401.preheader
  %i.ayv = shl nsw i64 %i.ayd, 3
  %i.ayw = add i64 %i.ayv, %i.ayf
  %i.ayx = sub i64 %i.ayw, %i.ayt
  %diff.check917 = icmp ugt i64 %i.ayx, -32
  %i.ayy = sub i64 %i.ayo, %i.ayt
  %diff.check918 = icmp ugt i64 %i.ayy, -32
  %conflict.rdx = or i1 %diff.check917, %diff.check918
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i.i.i401.preheader1062, label %vector.ph921

vector.ph921:                                     ; preds = %vector.memcheck916
  %n.vec922 = and i64 %i.ayr, 9223372036854775804 ; 3 uses
  br label %vector.body923

vector.body923:                                   ; preds = %vector.body923, %vector.ph921
  %index924 = phi i64 [ 0, %vector.ph921 ], [ %index.next929, %vector.body923 ] ; 4 uses
  %i.ayz = getelementptr inbounds nuw [8 x i8], ptr %i.ays, i64 %index924 ; 2 uses
  %i.aza = getelementptr inbounds [8 x i8], ptr %i.ayg, i64 %index924 ; 2 uses
  %i.azb = getelementptr inbounds nuw i8, ptr %i.aza, i64 16
  %wide.load925 = load <2 x double>, ptr %i.aza, align 8, !tbaa !33
  %wide.load926 = load <2 x double>, ptr %i.azb, align 8, !tbaa !33
  %i.azc = getelementptr inbounds nuw [8 x i8], ptr %i.ayn, i64 %index924 ; 2 uses
  %i.azd = getelementptr inbounds nuw i8, ptr %i.azc, i64 16
  %wide.load927 = load <2 x double>, ptr %i.azc, align 8, !tbaa !33
  %wide.load928 = load <2 x double>, ptr %i.azd, align 8, !tbaa !33
  %i.aze = fsub <2 x double> %wide.load925, %wide.load927
  %i.azf = fsub <2 x double> %wide.load926, %wide.load928
  %i.azg = getelementptr inbounds nuw i8, ptr %i.ayz, i64 16
  store <2 x double> %i.aze, ptr %i.ayz, align 8, !tbaa !33
  store <2 x double> %i.azf, ptr %i.azg, align 8, !tbaa !33
  %index.next929 = add nuw i64 %index924, 4       ; 2 uses
  %i.azh = icmp eq i64 %index.next929, %n.vec922
  br i1 %i.azh, label %middle.block930, label %vector.body923, !llvm.loop !239

middle.block930:                                  ; preds = %vector.body923
  %cmp.n931 = icmp eq i64 %i.ayr, %n.vec922
  br i1 %cmp.n931, label %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit360, label %.lr.ph.i.i.i.i.i.i401.preheader1062

.lr.ph.i.i.i.i.i.i401.preheader1062:              ; preds = %vector.memcheck916, %.lr.ph.i.i.i.i.i.i401.preheader, %middle.block930
  %.05.i.i.i.i.i.i402.ph = phi i64 [ 0, %vector.memcheck916 ], [ 0, %.lr.ph.i.i.i.i.i.i401.preheader ], [ %n.vec922, %middle.block930 ] ; 6 uses
  %.neg1163 = or disjoint i64 %.05.i.i.i.i.i.i402.ph, 1
  %xtraiter1145 = and i64 %i.ayr, 1
  %lcmp.mod1146.not = icmp eq i64 %xtraiter1145, 0
  br i1 %lcmp.mod1146.not, label %.lr.ph.i.i.i.i.i.i401.prol.loopexit, label %.lr.ph.i.i.i.i.i.i401.prol

.lr.ph.i.i.i.i.i.i401.prol:                       ; preds = %.lr.ph.i.i.i.i.i.i401.preheader1062
  %i.azi = getelementptr inbounds nuw [8 x i8], ptr %i.ays, i64 %.05.i.i.i.i.i.i402.ph
  %i.azj = mul nsw i64 %.05.i.i.i.i.i.i402.ph, %i.aym
  %i.azk = getelementptr inbounds [8 x i8], ptr %i.ayg, i64 %i.azj
  %i.azl = load double, ptr %i.azk, align 8, !tbaa !33
  %i.azm = getelementptr inbounds nuw [8 x i8], ptr %i.ayn, i64 %.05.i.i.i.i.i.i402.ph
  %i.azn = load double, ptr %i.azm, align 8, !tbaa !33
  %i.azo = fsub double %i.azl, %i.azn
  store double %i.azo, ptr %i.azi, align 8, !tbaa !33
  %i.azp = or disjoint i64 %.05.i.i.i.i.i.i402.ph, 1
  br label %.lr.ph.i.i.i.i.i.i401.prol.loopexit

.lr.ph.i.i.i.i.i.i401.prol.loopexit:              ; preds = %.lr.ph.i.i.i.i.i.i401.prol, %.lr.ph.i.i.i.i.i.i401.preheader1062
  %.05.i.i.i.i.i.i402.unr = phi i64 [ %.05.i.i.i.i.i.i402.ph, %.lr.ph.i.i.i.i.i.i401.preheader1062 ], [ %i.azp, %.lr.ph.i.i.i.i.i.i401.prol ]
  %i.azq = icmp eq i64 %i.ayr, %.neg1163
  br i1 %i.azq, label %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit360, label %.lr.ph.i.i.i.i.i.i401

.lr.ph.i.i.i.i.i.i401:                            ; preds = %.lr.ph.i.i.i.i.i.i401.prol.loopexit, %.lr.ph.i.i.i.i.i.i401
  %.05.i.i.i.i.i.i402 = phi i64 [ %i.bag, %.lr.ph.i.i.i.i.i.i401 ], [ %.05.i.i.i.i.i.i402.unr, %.lr.ph.i.i.i.i.i.i401.prol.loopexit ] ; 5 uses
  %i.azr = getelementptr inbounds nuw [8 x i8], ptr %i.ays, i64 %.05.i.i.i.i.i.i402
  %i.azs = mul nsw i64 %.05.i.i.i.i.i.i402, %i.aym
  %i.azt = getelementptr inbounds [8 x i8], ptr %i.ayg, i64 %i.azs
  %i.azu = load double, ptr %i.azt, align 8, !tbaa !33
  %i.azv = getelementptr inbounds nuw [8 x i8], ptr %i.ayn, i64 %.05.i.i.i.i.i.i402
  %i.azw = load double, ptr %i.azv, align 8, !tbaa !33
  %i.azx = fsub double %i.azu, %i.azw
  store double %i.azx, ptr %i.azr, align 8, !tbaa !33
  %i.azy = add nuw nsw i64 %.05.i.i.i.i.i.i402, 1 ; 3 uses
  %i.azz = getelementptr inbounds nuw [8 x i8], ptr %i.ays, i64 %i.azy
  %i.baa = mul nsw i64 %i.azy, %i.aym
  %i.bab = getelementptr inbounds [8 x i8], ptr %i.ayg, i64 %i.baa
  %i.bac = load double, ptr %i.bab, align 8, !tbaa !33
  %i.bad = getelementptr inbounds nuw [8 x i8], ptr %i.ayn, i64 %i.azy
  %i.bae = load double, ptr %i.bad, align 8, !tbaa !33
  %i.baf = fsub double %i.bac, %i.bae
  store double %i.baf, ptr %i.azz, align 8, !tbaa !33
  %i.bag = add nuw nsw i64 %.05.i.i.i.i.i.i402, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i403.1 = icmp eq i64 %i.bag, %i.ayr
  br i1 %exitcond.not.i.i.i.i.i.i403.1, label %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit360, label %.lr.ph.i.i.i.i.i.i401, !llvm.loop !240

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
  %i.bah = load i64, ptr %i.ar, align 8, !tbaa !31 ; 22 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %33, i8 0, i64 24, i1 false)
  %i.bai = icmp sgt i64 %i.bah, 4611686018427387903
  br i1 %i.bai, label %.invoke801, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i362

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i362: ; preds = %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit360
  %.not.i408 = icmp eq i64 %i.bah, 0
  br i1 %.not.i408, label %.thread770, label %bb.de

bb.de:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i362
  %i.baj = icmp sgt i64 %i.bah, 0
  br i1 %i.baj, label %bb.df, label %bb.dh

bb.df:                                            ; preds = %bb.de
  %.not761 = icmp samesign ult i64 %i.bah, 1152921504606846976
end_hunk_0
begin_hunk_1_@_ZN3igl34per_vertex_point_to_plane_quadricsERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS1_IiLin1ELin1ELi0ELin1ELin1EEES7_S7_S7_RSt6vectorISt5tupleIJS2_NS1_IdLi1ELin1ELi1ELi1ELin1EEEdEESaISB_EE:bb.a
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !54, !alias.scope !290
  store i8 0, ptr %i.az, align 8, !tbaa !57, !alias.scope !290
  %i.bgw = load i64, ptr %i.bb, align 8, !tbaa !24, !noalias !290
  %i.bgx = load i64, ptr %i.bc, align 8, !tbaa !23, !noalias !290
  %.sroa.speculated.i.i.i = call noundef i64 @llvm.smin.i64(i64 %i.bgx, i64 %i.bgw)
  store i64 %.sroa.speculated.i.i.i, ptr %i.ba, align 8, !tbaa !58, !alias.scope !290
  store i64 0, ptr %i.bd, align 8, !tbaa !59, !alias.scope !290
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_19HouseholderSequenceIS2_NS1_IdLin1ELi1ELi0ELin1ELi1EEELi1EEEEERKNS_9EigenBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %35, ptr noundef nonnull align 1 dereferenceable(1) %36)
          to label %bb.dk unwind label %bb.ds

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #25
  %i.bgy = load i64, ptr %i.ar, align 8, !tbaa !31 ; 2 uses
  %i.bgz = add nsw i64 %i.bgy, -2                 ; 2 uses
  %i.bha = load i64, ptr %i.be, align 8, !tbaa !23, !noalias !291
  %i.bhb = sub nsw i64 %i.bha, %i.bgz             ; 2 uses
  %i.bhc = load ptr, ptr %35, align 8, !tbaa !38, !noalias !291
  %i.bhd = load i64, ptr %i.bf, align 8, !tbaa !24, !noalias !291 ; 2 uses
  %i.bhe = mul nsw i64 %i.bhd, %i.bhb
  %i.bhf = getelementptr inbounds [8 x i8], ptr %i.bhc, i64 %i.bhe
  store ptr %i.bhf, ptr %38, align 8
  store i64 %i.bgy, ptr %.sroa.5427.0..sroa_idx, align 8
  store i64 %i.bgz, ptr %.sroa.6.0..sroa_idx, align 8
  store ptr %35, ptr %.sroa.7.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.8.0..sroa_idx, align 8
  store i64 %i.bhb, ptr %.sroa.9428.0..sroa_idx, align 8
  store i64 %i.bhd, ptr %.sroa.10.0..sroa_idx, align 8
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_9TransposeIKNS_5BlockIKS2_Lin1ELin1ELb0EEEEEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %37, ptr noundef nonnull align 1 dereferenceable(1) %38)
          to label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_9TransposeIKNS_5BlockIKS1_Lin1ELin1ELb0EEEEEEERKNS_9EigenBaseIT_EE.exit unwind label %bb.dt

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_9TransposeIKNS_5BlockIKS1_Lin1ELin1ELb0EEEEEEERKNS_9EigenBaseIT_EE.exit: ; preds = %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #25
  %i.bhg = load i64, ptr %i.bg, align 8, !tbaa !24 ; 5 uses
  %i.bhh = add nsw i64 %i.bhg, 1                  ; 11 uses
  %i.bhi = load i64, ptr %i.ar, align 8, !tbaa !31 ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %39, i8 0, i64 24, i1 false)
  %i.bhj = icmp eq i64 %i.bhh, 0
  %i.bhk = icmp eq i64 %i.bhi, 0
  %or.cond.i.i.i.i372 = or i1 %i.bhj, %i.bhk
  br i1 %or.cond.i.i.i.i372, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i373, label %bb.dl

bb.dl:                                            ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_9TransposeIKNS_5BlockIKS1_Lin1ELin1ELb0EEEEEEERKNS_9EigenBaseIT_EE.exit
  %i.bhl = sdiv i64 9223372036854775807, %i.bhi
  %.not547 = icmp slt i64 %i.bhg, %i.bhl
  br i1 %.not547, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i373, label %.invoke803

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i373: ; preds = %bb.dl, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_9TransposeIKNS_5BlockIKS1_Lin1ELin1ELb0EEEEEEERKNS_9EigenBaseIT_EE.exit
  %i.bhm = mul nsw i64 %i.bhi, %i.bhh             ; 4 uses
  %.not.i415 = icmp eq i64 %i.bhm, 0
  br i1 %.not.i415, label %bb.dp, label %bb.dm

bb.dm:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i373
  %i.bhn = icmp sgt i64 %i.bhm, 0
  br i1 %i.bhn, label %bb.dn, label %.sink.split.i416

bb.dn:                                            ; preds = %bb.dm
  %i.bho = icmp samesign ugt i64 %i.bhm, 2305843009213693951
  br i1 %i.bho, label %.invoke803, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i418

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i418: ; preds = %bb.dn
  %i.bhp = shl nuw i64 %i.bhm, 3
  %i.bhq = call noalias ptr @malloc(i64 noundef %i.bhp) #27 ; 2 uses
  %i.bhr = icmp eq ptr %i.bhq, null
  br i1 %i.bhr, label %.invoke803, label %.sink.split.i416

.invoke803:                                       ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i418, %bb.dn, %bb.dl
  %i.bhs = call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bhs, align 8, !tbaa !41
  invoke void @__cxa_throw(ptr nonnull %i.bhs, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #26
          to label %.cont804 unwind label %bb.do

.cont804:                                         ; preds = %.invoke803
  unreachable

.sink.split.i416:                                 ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i418, %bb.dm
  %.sink.i417 = phi ptr [ %i.bhq, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i418 ], [ null, %bb.dm ] ; 2 uses
  store ptr %.sink.i417, ptr %39, align 8, !tbaa !38
  br label %bb.dp

bb.do:                                            ; preds = %.invoke803
  %i.bht = landingpad { ptr, i32 }
          cleanup
  br label %.body375

bb.dp:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i373, %.sink.split.i416
  %i.bhu = phi ptr [ null, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i373 ], [ %.sink.i417, %.sink.split.i416 ] ; 6 uses
  store i64 %i.bhh, ptr %i.bh, align 8, !tbaa !24
  store i64 %i.bhi, ptr %i.bi, align 8, !tbaa !23
  %i.bhv = load ptr, ptr %31, align 8, !tbaa !32, !noalias !292 ; 5 uses
  %i.bhw = icmp sgt i64 %i.bhi, 0
  br i1 %i.bhw, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.preheader, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEElsINS1_IdLi1ELin1ELi1ELi1ELin1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit381

.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.preheader:  ; preds = %bb.dp
  %xtraiter1157 = and i64 %i.bhi, 3               ; 3 uses
  %i.bhx = icmp ult i64 %i.bhi, 4
  br i1 %i.bhx, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.epil.preheader, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.preheader.new

.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.preheader.new: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.preheader
  %unroll_iter1161 = and i64 %i.bhi, 9223372036854775804
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377

.preheader.i.i.i.i.i.i.i.i.i.i.i.i377:            ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.preheader.new
  %.0810.i.i.i.i.i.i.i.i.i.i.i.i378 = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.preheader.new ], [ %i.bin, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377 ] ; 6 uses
  %niter1162 = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.preheader.new ], [ %niter1162.next.3, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377 ]
  %i.bhy = mul nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i378, %i.bhh
  %i.bhz = getelementptr [8 x i8], ptr %i.bhu, i64 %i.bhy
  %i.bia = getelementptr [8 x i8], ptr %i.bhv, i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i378
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i379 = load double, ptr %i.bia, align 8, !tbaa !33, !noalias !292
  store double %.pre.i.i.i.i.i.i.i.i.i.i.i.i379, ptr %i.bhz, align 8, !tbaa !33, !noalias !292
  %i.bib = or disjoint i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i378, 1 ; 2 uses
  %i.bic = mul nsw i64 %i.bib, %i.bhh
  %i.bid = getelementptr [8 x i8], ptr %i.bhu, i64 %i.bic
  %i.bie = getelementptr [8 x i8], ptr %i.bhv, i64 %i.bib
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i379.1 = load double, ptr %i.bie, align 8, !tbaa !33, !noalias !292
  store double %.pre.i.i.i.i.i.i.i.i.i.i.i.i379.1, ptr %i.bid, align 8, !tbaa !33, !noalias !292
  %i.bif = or disjoint i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i378, 2 ; 2 uses
  %i.big = mul nsw i64 %i.bif, %i.bhh
  %i.bih = getelementptr [8 x i8], ptr %i.bhu, i64 %i.big
  %i.bii = getelementptr [8 x i8], ptr %i.bhv, i64 %i.bif
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i379.2 = load double, ptr %i.bii, align 8, !tbaa !33, !noalias !292
  store double %.pre.i.i.i.i.i.i.i.i.i.i.i.i379.2, ptr %i.bih, align 8, !tbaa !33, !noalias !292
  %i.bij = or disjoint i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i378, 3 ; 2 uses
  %i.bik = mul nsw i64 %i.bij, %i.bhh
  %i.bil = getelementptr [8 x i8], ptr %i.bhu, i64 %i.bik
  %i.bim = getelementptr [8 x i8], ptr %i.bhv, i64 %i.bij
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i379.3 = load double, ptr %i.bim, align 8, !tbaa !33, !noalias !292
  store double %.pre.i.i.i.i.i.i.i.i.i.i.i.i379.3, ptr %i.bil, align 8, !tbaa !33, !noalias !292
  %i.bin = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i378, 4 ; 2 uses
  %niter1162.next.3 = add nuw nsw i64 %niter1162, 4 ; 2 uses
  %niter1162.ncmp.3 = icmp eq i64 %niter1162.next.3, %unroll_iter1161
  br i1 %niter1162.ncmp.3, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEElsINS1_IdLi1ELin1ELi1ELi1ELin1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit381.loopexit.unr-lcssa, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377, !llvm.loop !220

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEElsINS1_IdLi1ELin1ELi1ELi1ELin1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit381.loopexit.unr-lcssa: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377
  %lcmp.mod1159.not = icmp eq i64 %xtraiter1157, 0
  br i1 %lcmp.mod1159.not, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEElsINS1_IdLi1ELin1ELi1ELi1ELin1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit381, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.epil.preheader

.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.epil.preheader: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEElsINS1_IdLi1ELin1ELi1ELi1ELin1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit381.loopexit.unr-lcssa, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.preheader
  %.0810.i.i.i.i.i.i.i.i.i.i.i.i378.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.preheader ], [ %i.bin, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEElsINS1_IdLi1ELin1ELi1ELi1ELin1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit381.loopexit.unr-lcssa ]
  %lcmp.mod1160 = icmp ne i64 %xtraiter1157, 0
  call void @llvm.assume(i1 %lcmp.mod1160)
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.epil

.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.epil:       ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.epil, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.epil.preheader
  %.0810.i.i.i.i.i.i.i.i.i.i.i.i378.epil = phi i64 [ %i.bir, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.epil ], [ %.0810.i.i.i.i.i.i.i.i.i.i.i.i378.epil.init, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.epil.preheader ] ; 3 uses
  %epil.iter1158 = phi i64 [ %epil.iter1158.next, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.epil ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.epil.preheader ]
  %i.bio = mul nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i378.epil, %i.bhh
  %i.bip = getelementptr [8 x i8], ptr %i.bhu, i64 %i.bio
  %i.biq = getelementptr [8 x i8], ptr %i.bhv, i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i378.epil
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i379.epil = load double, ptr %i.biq, align 8, !tbaa !33, !noalias !292
  store double %.pre.i.i.i.i.i.i.i.i.i.i.i.i379.epil, ptr %i.bip, align 8, !tbaa !33, !noalias !292
  %i.bir = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i378.epil, 1
  %epil.iter1158.next = add i64 %epil.iter1158, 1 ; 2 uses
  %epil.iter1158.cmp.not = icmp eq i64 %epil.iter1158.next, %xtraiter1157
  br i1 %epil.iter1158.cmp.not, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEElsINS1_IdLi1ELin1ELi1ELi1ELin1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit381, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.epil, !llvm.loop !264

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEElsINS1_IdLi1ELin1ELi1ELi1ELin1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit381: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEElsINS1_IdLi1ELin1ELi1ELi1ELin1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit381.loopexit.unr-lcssa, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i377.epil, %bb.dp
  %i.bis = load i64, ptr %.phi.trans.insert14.i, align 8, !tbaa !23 ; 2 uses
  %.not.i382 = icmp ne i64 %i.bis, 0              ; 2 uses
  %.not8.i386 = icmp ne i64 %i.bhg, 1             ; 2 uses
  %narrow = or i1 %.not.i382, %.not8.i386
  %.sroa.5.0 = zext i1 %narrow to i64             ; 2 uses
  %i.bit = or i1 %.not.i382, %.not8.i386
  %i.biu = select i1 %i.bit, i64 0, i64 %i.bhi    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.biv = getelementptr inbounds nuw [8 x i8], ptr %i.bhu, i64 %.sroa.5.0
  %i.biw = mul nsw i64 %i.biu, %i.bhh
  %i.bix = getelementptr inbounds [8 x i8], ptr %i.biv, i64 %i.biw ; 2 uses
  store ptr %i.bix, ptr %10, align 8, !tbaa !61, !alias.scope !293
  store i64 %i.bhg, ptr %i.bj, align 8, !tbaa !26, !alias.scope !293
  store i64 %i.bis, ptr %i.bk, align 8, !tbaa !26, !alias.scope !293
  store ptr %39, ptr %i.bl, align 8, !tbaa !52, !alias.scope !293
  store i64 %.sroa.5.0, ptr %i.bm, align 8, !tbaa !26, !alias.scope !293
  store i64 %i.biu, ptr %i.bn, align 8, !tbaa !26, !alias.scope !293
  store i64 %i.bhh, ptr %i.bo, align 8, !tbaa !64, !alias.scope !293
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.biy = load ptr, ptr %37, align 8, !tbaa !38
  store ptr %i.biy, ptr %6, align 8, !tbaa !294
  store i64 %i.bhg, ptr %i.bp, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store ptr %i.bix, ptr %7, align 8, !tbaa !69
  store i64 %i.bhh, ptr %i.bq, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store ptr %7, ptr %8, align 8, !tbaa !71
  store ptr %6, ptr %i.br, align 8, !tbaa !295
  store ptr %9, ptr %i.bs, align 8, !tbaa !296
  store ptr %10, ptr %i.bt, align 8, !tbaa !75
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_(ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.dq unwind label %bb.du

bb.dq:                                            ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEElsINS1_IdLi1ELin1ELi1ELi1ELin1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit381
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #25
  %i.biz = fmul double %.scalar.i342544771, %.scalar.i342544771
  invoke fastcc void @"_ZZN3igl34per_vertex_point_to_plane_quadricsERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS1_IiLin1ELin1ELi0ELin1ELin1EEES7_S7_S7_RSt6vectorISt5tupleIJS2_NS1_IdLi1ELin1ELi1ELi1ELin1EEEdEESaISB_EEENK3$_0clERKSA_S4_d"(ptr dead_on_unwind noalias writable align 8 %40, ptr %14, ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef nonnull align 8 dereferenceable(24) %39, double noundef %i.biz)
          to label %.preheader555.preheader unwind label %bb.dv

.preheader555.preheader:                          ; preds = %bb.dq
  %.not = icmp eq i32 %.1.2768, 0
  br i1 %.not, label %.preheader555.1.thread, label %bb.dw

bb.dr:                                            ; preds = %_ZN5Eigen16CommaInitializerINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEcmINS_9TransposeIKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit
  %i.bja = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.ds:                                            ; preds = %bb.dj
  %i.bjb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #25
  br label %bb.ec

bb.dt:                                            ; preds = %bb.dk
  %i.bjc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #25
  br label %bb.eb

bb.du:                                            ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEElsINS1_IdLi1ELin1ELi1ELi1ELin1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit381
  %i.bjd = landingpad { ptr, i32 }
          cleanup
  br label %.body375

bb.dv:                                            ; preds = %bb.dq
  %i.bje = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

bb.dw:                                            ; preds = %.preheader555.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #25
  %i.bjf = load ptr, ptr %1, align 8, !tbaa !274
  %i.bjg = getelementptr [4 x i8], ptr %i.bjf, i64 %indvars.iv670
  %i.bjh = load i32, ptr %i.bjg, align 4, !tbaa !46
  %i.bji = sext i32 %i.bjh to i64
  %i.bjj = load ptr, ptr %5, align 8, !tbaa !37
  %i.bjk = getelementptr inbounds nuw [48 x i8], ptr %i.bjj, i64 %i.bji
  invoke void @_ZN3iglplERKSt5tupleIJN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEdEES7_(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple") align 8 %41, ptr noundef nonnull align 8 dereferenceable(48) %i.bjk, ptr noundef nonnull align 8 dereferenceable(48) %40)
          to label %.preheader555.1 unwind label %bb.dx

bb.dx:                                            ; preds = %.preheader555.2.thread, %.preheader555.1.thread, %bb.dw
  %i.bjl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #25
  %i.bjm = load ptr, ptr %i.bz, align 8, !tbaa !38
  call void @free(ptr noundef %i.bjm) #25
  %i.bjn = load ptr, ptr %i.ca, align 8, !tbaa !32
  call void @free(ptr noundef %i.bjn) #25
  br label %bb.ea

.preheader555.1:                                  ; preds = %bb.dw
  %i.bjo = load ptr, ptr %1, align 8, !tbaa !274
  %i.bjp = getelementptr [4 x i8], ptr %i.bjo, i64 %indvars.iv670
  %i.bjq = load i32, ptr %i.bjp, align 4, !tbaa !46
  %i.bjr = sext i32 %i.bjq to i64
  %i.bjs = load ptr, ptr %5, align 8, !tbaa !37
  %i.bjt = getelementptr inbounds nuw [48 x i8], ptr %i.bjs, i64 %i.bjr ; 6 uses
  %i.bju = getelementptr inbounds nuw i8, ptr %i.bjt, i64 24 ; 2 uses
  %i.bjv = load ptr, ptr %i.bju, align 8, !tbaa !49
  %i.bjw = load ptr, ptr %i.bu, align 8, !tbaa !49
  store ptr %i.bjw, ptr %i.bju, align 8, !tbaa !49
  store ptr %i.bjv, ptr %i.bu, align 8, !tbaa !49
  %i.bjx = getelementptr inbounds nuw i8, ptr %i.bjt, i64 32 ; 2 uses
  %i.bjy = load i64, ptr %i.bjx, align 8, !tbaa !50
  %i.bjz = load i64, ptr %i.bv, align 8, !tbaa !50
  store i64 %i.bjz, ptr %i.bjx, align 8, !tbaa !50
  store i64 %i.bjy, ptr %i.bv, align 8, !tbaa !50
  %i.bka = getelementptr inbounds nuw i8, ptr %i.bjt, i64 40 ; 2 uses
  %i.bkb = load i64, ptr %i.bka, align 8, !tbaa !50
  %i.bkc = load i64, ptr %i.bw, align 8, !tbaa !50
  store i64 %i.bkc, ptr %i.bka, align 8, !tbaa !50
  store i64 %i.bkb, ptr %i.bw, align 8, !tbaa !50
  %i.bkd = getelementptr inbounds nuw i8, ptr %i.bjt, i64 8 ; 2 uses
  %i.bke = load ptr, ptr %i.bkd, align 8, !tbaa !49
  %i.bkf = load ptr, ptr %i.bx, align 8, !tbaa !49
  store ptr %i.bkf, ptr %i.bkd, align 8, !tbaa !49
  store ptr %i.bke, ptr %i.bx, align 8, !tbaa !49
  %i.bkg = getelementptr inbounds nuw i8, ptr %i.bjt, i64 16 ; 2 uses
  %i.bkh = load i64, ptr %i.bkg, align 8, !tbaa !50
  %i.bki = load i64, ptr %i.by, align 8, !tbaa !50
  store i64 %i.bki, ptr %i.bkg, align 8, !tbaa !50
  store i64 %i.bkh, ptr %i.by, align 8, !tbaa !50
  %i.bkj = load double, ptr %41, align 8, !tbaa !33
  store double %i.bkj, ptr %i.bjt, align 8, !tbaa !33
  %i.bkk = load ptr, ptr %i.bu, align 8, !tbaa !38
  call void @free(ptr noundef %i.bkk) #25
  %i.bkl = load ptr, ptr %i.bx, align 8, !tbaa !32
  call void @free(ptr noundef %i.bkl) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #25
  %.not.1 = icmp eq i32 %.1.2768, 1
  br i1 %.not.1, label %.preheader555.2.thread, label %.preheader555.1.thread

.preheader555.1.thread:                           ; preds = %.preheader555.preheader, %.preheader555.1
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #25
  %i.bkm = load ptr, ptr %1, align 8, !tbaa !274
  %i.bkn = load i64, ptr %i.an, align 8, !tbaa !272
  %i.bko = getelementptr [4 x i8], ptr %i.bkm, i64 %indvars.iv670
  %i.bkp = getelementptr [4 x i8], ptr %i.bko, i64 %i.bkn
  %i.bkq = load i32, ptr %i.bkp, align 4, !tbaa !46
  %i.bkr = sext i32 %i.bkq to i64
  %i.bks = load ptr, ptr %5, align 8, !tbaa !37
  %i.bkt = getelementptr inbounds nuw [48 x i8], ptr %i.bks, i64 %i.bkr
  invoke void @_ZN3iglplERKSt5tupleIJN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEdEES7_(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple") align 8 %41, ptr noundef nonnull align 8 dereferenceable(48) %i.bkt, ptr noundef nonnull align 8 dereferenceable(48) %40)
          to label %.preheader555.2 unwind label %bb.dx

.preheader555.2:                                  ; preds = %.preheader555.1.thread
  %i.bku = load ptr, ptr %1, align 8, !tbaa !274
  %i.bkv = load i64, ptr %i.an, align 8, !tbaa !272
  %i.bkw = getelementptr [4 x i8], ptr %i.bku, i64 %indvars.iv670
  %i.bkx = getelementptr [4 x i8], ptr %i.bkw, i64 %i.bkv
  %i.bky = load i32, ptr %i.bkx, align 4, !tbaa !46
  %i.bkz = sext i32 %i.bky to i64
  %i.bla = load ptr, ptr %5, align 8, !tbaa !37
  %i.blb = getelementptr inbounds nuw [48 x i8], ptr %i.bla, i64 %i.bkz ; 6 uses
  %i.blc = getelementptr inbounds nuw i8, ptr %i.blb, i64 24 ; 2 uses
  %i.bld = load ptr, ptr %i.blc, align 8, !tbaa !49
  %i.ble = load ptr, ptr %i.bu, align 8, !tbaa !49
  store ptr %i.ble, ptr %i.blc, align 8, !tbaa !49
  store ptr %i.bld, ptr %i.bu, align 8, !tbaa !49
  %i.blf = getelementptr inbounds nuw i8, ptr %i.blb, i64 32 ; 2 uses
  %i.blg = load i64, ptr %i.blf, align 8, !tbaa !50
  %i.blh = load i64, ptr %i.bv, align 8, !tbaa !50
  store i64 %i.blh, ptr %i.blf, align 8, !tbaa !50
  store i64 %i.blg, ptr %i.bv, align 8, !tbaa !50
  %i.bli = getelementptr inbounds nuw i8, ptr %i.blb, i64 40 ; 2 uses
  %i.blj = load i64, ptr %i.bli, align 8, !tbaa !50
  %i.blk = load i64, ptr %i.bw, align 8, !tbaa !50
  store i64 %i.blk, ptr %i.bli, align 8, !tbaa !50
  store i64 %i.blj, ptr %i.bw, align 8, !tbaa !50
  %i.bll = getelementptr inbounds nuw i8, ptr %i.blb, i64 8 ; 2 uses
  %i.blm = load ptr, ptr %i.bll, align 8, !tbaa !49
  %i.bln = load ptr, ptr %i.bx, align 8, !tbaa !49
  store ptr %i.bln, ptr %i.bll, align 8, !tbaa !49
  store ptr %i.blm, ptr %i.bx, align 8, !tbaa !49
  %i.blo = getelementptr inbounds nuw i8, ptr %i.blb, i64 16 ; 2 uses
  %i.blp = load i64, ptr %i.blo, align 8, !tbaa !50
  %i.blq = load i64, ptr %i.by, align 8, !tbaa !50
  store i64 %i.blq, ptr %i.blo, align 8, !tbaa !50
  store i64 %i.blp, ptr %i.by, align 8, !tbaa !50
  %i.blr = load double, ptr %41, align 8, !tbaa !33
  store double %i.blr, ptr %i.blb, align 8, !tbaa !33
  %i.bls = load ptr, ptr %i.bu, align 8, !tbaa !38
  call void @free(ptr noundef %i.bls) #25
  %i.blt = load ptr, ptr %i.bx, align 8, !tbaa !32
  call void @free(ptr noundef %i.blt) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #25
  %.not.2 = icmp eq i32 %.1.2768, 2
  br i1 %.not.2, label %bb.dz, label %.preheader555.2.thread

.preheader555.2.thread:                           ; preds = %.preheader555.1, %.preheader555.2
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #25
  %i.blu = load ptr, ptr %1, align 8, !tbaa !274
  %i.blv = load i64, ptr %i.an, align 8, !tbaa !272
  %i.blw = getelementptr [4 x i8], ptr %i.blu, i64 %indvars.iv670
  %.idx762 = shl i64 %i.blv, 3
  %i.blx = getelementptr i8, ptr %i.blw, i64 %.idx762
  %i.bly = load i32, ptr %i.blx, align 4, !tbaa !46
  %i.blz = sext i32 %i.bly to i64
  %i.bma = load ptr, ptr %5, align 8, !tbaa !37
  %i.bmb = getelementptr inbounds nuw [48 x i8], ptr %i.bma, i64 %i.blz
  invoke void @_ZN3iglplERKSt5tupleIJN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEdEES7_(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple") align 8 %41, ptr noundef nonnull align 8 dereferenceable(48) %i.bmb, ptr noundef nonnull align 8 dereferenceable(48) %40)
          to label %bb.dy unwind label %bb.dx

bb.dy:                                            ; preds = %.preheader555.2.thread
  %i.bmc = load ptr, ptr %1, align 8, !tbaa !274
  %i.bmd = load i64, ptr %i.an, align 8, !tbaa !272
  %i.bme = getelementptr [4 x i8], ptr %i.bmc, i64 %indvars.iv670
  %.idx763 = shl i64 %i.bmd, 3
  %i.bmf = getelementptr i8, ptr %i.bme, i64 %.idx763
  %i.bmg = load i32, ptr %i.bmf, align 4, !tbaa !46
  %i.bmh = sext i32 %i.bmg to i64
  %i.bmi = load ptr, ptr %5, align 8, !tbaa !37
  %i.bmj = getelementptr inbounds nuw [48 x i8], ptr %i.bmi, i64 %i.bmh ; 6 uses
  %i.bmk = getelementptr inbounds nuw i8, ptr %i.bmj, i64 24 ; 2 uses
  %i.bml = load ptr, ptr %i.bmk, align 8, !tbaa !49
  %i.bmm = load ptr, ptr %i.bu, align 8, !tbaa !49
  store ptr %i.bmm, ptr %i.bmk, align 8, !tbaa !49
  store ptr %i.bml, ptr %i.bu, align 8, !tbaa !49
  %i.bmn = getelementptr inbounds nuw i8, ptr %i.bmj, i64 32 ; 2 uses
  %i.bmo = load i64, ptr %i.bmn, align 8, !tbaa !50
  %i.bmp = load i64, ptr %i.bv, align 8, !tbaa !50
  store i64 %i.bmp, ptr %i.bmn, align 8, !tbaa !50
  store i64 %i.bmo, ptr %i.bv, align 8, !tbaa !50
  %i.bmq = getelementptr inbounds nuw i8, ptr %i.bmj, i64 40 ; 2 uses
  %i.bmr = load i64, ptr %i.bmq, align 8, !tbaa !50
  %i.bms = load i64, ptr %i.bw, align 8, !tbaa !50
  store i64 %i.bms, ptr %i.bmq, align 8, !tbaa !50
  store i64 %i.bmr, ptr %i.bw, align 8, !tbaa !50
  %i.bmt = getelementptr inbounds nuw i8, ptr %i.bmj, i64 8 ; 2 uses
  %i.bmu = load ptr, ptr %i.bmt, align 8, !tbaa !49
  %i.bmv = load ptr, ptr %i.bx, align 8, !tbaa !49
  store ptr %i.bmv, ptr %i.bmt, align 8, !tbaa !49
  store ptr %i.bmu, ptr %i.bx, align 8, !tbaa !49
  %i.bmw = getelementptr inbounds nuw i8, ptr %i.bmj, i64 16 ; 2 uses
  %i.bmx = load i64, ptr %i.bmw, align 8, !tbaa !50
end_hunk_1
