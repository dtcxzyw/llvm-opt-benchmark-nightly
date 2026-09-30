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
  br i1 %exitcond.not.i.i.i.i.i.i.i331.3, label %.loopexit556, label %.lr.ph.i.i.i.i.i.i.i329, !llvm.loop !228

.loopexit559:                                     ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i.i323, %thread-pre-split.i.i.i.i.i.i326
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body333

.loopexit.split-lp:                               ; preds = %bb.cr
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body333

.loopexit556:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i329.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i329, %middle.block974, %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #25
  %.urem771 = add nsw i32 %.1.2765, -1
  %.cmp772 = icmp eq i32 %.1.2765, 0
  %i.arm = select i1 %.cmp772, i32 2, i32 %.urem771
  %i.arn = zext nneg i32 %i.arm to i64
  %i.aro = load ptr, ptr %1, align 8, !tbaa !274
  %i.arp = load i64, ptr %i.an, align 8, !tbaa !272
  %i.arq = mul nsw i64 %i.arp, %i.arn
  %i.arr = getelementptr [4 x i8], ptr %i.aro, i64 %indvars.iv667
  %i.ars = getelementptr [4 x i8], ptr %i.arr, i64 %i.arq
  %i.art = load i32, ptr %i.ars, align 4, !tbaa !46
  %i.aru = sext i32 %i.art to i64                 ; 2 uses
  %i.arv = load ptr, ptr %0, align 8, !tbaa !38, !noalias !286 ; 2 uses
  %i.arw = ptrtoaddr ptr %i.arv to i64
  %i.arx = getelementptr inbounds [8 x i8], ptr %i.arv, i64 %i.aru ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %31, i8 0, i64 16, i1 false)
  %i.ary = icmp eq i64 %i.apz, 0
  br i1 %i.ary, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i, label %bb.ct

bb.ct:                                            ; preds = %.loopexit556
  %i.arz = sdiv i64 9223372036854775807, %i.apz
  %i.asa = icmp slt i64 %i.arz, 1
  br i1 %i.asa, label %bb.cu, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i

bb.cu:                                            ; preds = %bb.ct
  %i.asb = call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.asb, align 8, !tbaa !41
  invoke void @__cxa_throw(ptr nonnull %i.asb, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #26
          to label %.noexc.i391 unwind label %.loopexit.split-lp561

.noexc.i391:                                      ; preds = %bb.cu
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i: ; preds = %bb.ct, %.loopexit556
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %31, i64 noundef 1, i64 noundef %i.apz)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS2_EEEEvRKNS_9EigenBaseIT_EE.exit.i unwind label %.loopexit560

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
          to label %.noexc5.i unwind label %.loopexit560

.noexc5.i:                                        ; preds = %thread-pre-split.i.i.i.i.i
  %.pr.i.i.i.i.i = load i64, ptr %i.ar, align 8, !tbaa !31
  br label %bb.cv

bb.cv:                                            ; preds = %.noexc5.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS2_EEEEvRKNS_9EigenBaseIT_EE.exit.i
  %i.ash = phi i64 [ %.pr.i.i.i.i.i, %.noexc5.i ], [ %i.asf, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS2_EEEEvRKNS_9EigenBaseIT_EE.exit.i ] ; 22 uses
  %i.asi = load ptr, ptr %31, align 8, !tbaa !32  ; 19 uses
  %i.asj = ptrtoaddr ptr %i.asi to i64            ; 2 uses
  %i.ask = icmp sgt i64 %i.ash, 0
  br i1 %i.ask, label %.lr.ph.i.i.i.i.i.i390.preheader, label %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i390.preheader:                  ; preds = %bb.cv
  %min.iters.check948 = icmp ugt i64 %i.ash, 7
  %ident.check942.not = icmp eq i64 %i.asc, 1
  %or.cond1031 = select i1 %min.iters.check948, i1 %ident.check942.not, i1 false
  br i1 %or.cond1031, label %vector.memcheck943, label %.lr.ph.i.i.i.i.i.i390.preheader1042

vector.memcheck943:                               ; preds = %.lr.ph.i.i.i.i.i.i390.preheader
  %i.asl = shl nsw i64 %i.aru, 3
  %i.asm = add i64 %i.asl, %i.arw
  %i.asn = sub i64 %i.asm, %i.asj
  %diff.check944 = icmp ugt i64 %i.asn, -32
  %i.aso = sub i64 %i.ase, %i.asj
  %diff.check945 = icmp ugt i64 %i.aso, -32
  %conflict.rdx946 = or i1 %diff.check944, %diff.check945
  br i1 %conflict.rdx946, label %.lr.ph.i.i.i.i.i.i390.preheader1042, label %vector.ph949

vector.ph949:                                     ; preds = %vector.memcheck943
  %n.vec950 = and i64 %i.ash, 9223372036854775804 ; 3 uses
  br label %vector.body951

vector.body951:                                   ; preds = %vector.body951, %vector.ph949
  %index952 = phi i64 [ 0, %vector.ph949 ], [ %index.next957, %vector.body951 ] ; 4 uses
  %i.asp = getelementptr inbounds nuw [8 x i8], ptr %i.asi, i64 %index952 ; 2 uses
  %i.asq = getelementptr inbounds [8 x i8], ptr %i.arx, i64 %index952 ; 2 uses
  %i.asr = getelementptr inbounds nuw i8, ptr %i.asq, i64 16
  %wide.load953 = load <2 x double>, ptr %i.asq, align 8, !tbaa !33
  %wide.load954 = load <2 x double>, ptr %i.asr, align 8, !tbaa !33
  %i.ass = getelementptr inbounds nuw [8 x i8], ptr %i.asd, i64 %index952 ; 2 uses
  %i.ast = getelementptr inbounds nuw i8, ptr %i.ass, i64 16
  %wide.load955 = load <2 x double>, ptr %i.ass, align 8, !tbaa !33
  %wide.load956 = load <2 x double>, ptr %i.ast, align 8, !tbaa !33
  %i.asu = fsub <2 x double> %wide.load953, %wide.load955
  %i.asv = fsub <2 x double> %wide.load954, %wide.load956
  %i.asw = getelementptr inbounds nuw i8, ptr %i.asp, i64 16
  store <2 x double> %i.asu, ptr %i.asp, align 8, !tbaa !33
  store <2 x double> %i.asv, ptr %i.asw, align 8, !tbaa !33
  %index.next957 = add nuw i64 %index952, 4       ; 2 uses
  %i.asx = icmp eq i64 %index.next957, %n.vec950
  br i1 %i.asx, label %middle.block958, label %vector.body951, !llvm.loop !231

middle.block958:                                  ; preds = %vector.body951
  %cmp.n959 = icmp eq i64 %i.ash, %n.vec950
  br i1 %cmp.n959, label %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit.thread, label %.lr.ph.i.i.i.i.i.i390.preheader1042

.lr.ph.i.i.i.i.i.i390.preheader1042:              ; preds = %vector.memcheck943, %.lr.ph.i.i.i.i.i.i390.preheader, %middle.block958
  %.05.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck943 ], [ 0, %.lr.ph.i.i.i.i.i.i390.preheader ], [ %n.vec950, %middle.block958 ] ; 6 uses
  %.neg = or disjoint i64 %.05.i.i.i.i.i.i.ph, 1
  %xtraiter1117 = and i64 %i.ash, 1
  %lcmp.mod1118.not = icmp eq i64 %xtraiter1117, 0
  br i1 %lcmp.mod1118.not, label %.lr.ph.i.i.i.i.i.i390.prol.loopexit, label %.lr.ph.i.i.i.i.i.i390.prol

.lr.ph.i.i.i.i.i.i390.prol:                       ; preds = %.lr.ph.i.i.i.i.i.i390.preheader1042
  %i.asy = getelementptr inbounds nuw [8 x i8], ptr %i.asi, i64 %.05.i.i.i.i.i.i.ph
  %i.asz = mul nsw i64 %.05.i.i.i.i.i.i.ph, %i.asc
  %i.ata = getelementptr inbounds [8 x i8], ptr %i.arx, i64 %i.asz
  %i.atb = load double, ptr %i.ata, align 8, !tbaa !33
  %i.atc = getelementptr inbounds nuw [8 x i8], ptr %i.asd, i64 %.05.i.i.i.i.i.i.ph
  %i.atd = load double, ptr %i.atc, align 8, !tbaa !33
  %i.ate = fsub double %i.atb, %i.atd
  store double %i.ate, ptr %i.asy, align 8, !tbaa !33
  %i.atf = or disjoint i64 %.05.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i390.prol.loopexit

.lr.ph.i.i.i.i.i.i390.prol.loopexit:              ; preds = %.lr.ph.i.i.i.i.i.i390.prol, %.lr.ph.i.i.i.i.i.i390.preheader1042
  %.05.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i390.preheader1042 ], [ %i.atf, %.lr.ph.i.i.i.i.i.i390.prol ]
  %i.atg = icmp eq i64 %i.ash, %.neg
  br i1 %i.atg, label %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit.thread, label %.lr.ph.i.i.i.i.i.i390

.lr.ph.i.i.i.i.i.i390:                            ; preds = %.lr.ph.i.i.i.i.i.i390.prol.loopexit, %.lr.ph.i.i.i.i.i.i390
  %.05.i.i.i.i.i.i = phi i64 [ %i.atw, %.lr.ph.i.i.i.i.i.i390 ], [ %.05.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i390.prol.loopexit ] ; 5 uses
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
  br i1 %exitcond.not.i.i.i.i.i.i.1, label %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit.thread, label %.lr.ph.i.i.i.i.i.i390, !llvm.loop !232

.loopexit560:                                     ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i, %thread-pre-split.i.i.i.i.i
  %lpad.loopexit562 = landingpad { ptr, i32 }
          cleanup
  br label %.body392

.loopexit.split-lp561:                            ; preds = %bb.cu
  %lpad.loopexit.split-lp563 = landingpad { ptr, i32 }
          cleanup
  br label %.body392

_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit: ; preds = %bb.cv
  %i.atx = icmp eq i64 %i.ash, 0
  br i1 %i.atx, label %.loopexit554, label %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit.thread

_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit.thread: ; preds = %.lr.ph.i.i.i.i.i.i390.prol.loopexit, %.lr.ph.i.i.i.i.i.i390, %middle.block958, %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit
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
  br i1 %i.aui, label %.lr.ph.i.i.i.i.i349, label %._crit_edge.i.i.i.i.i346

._crit_edge.i.i.i.i.i346:                         ; preds = %.lr.ph.i.i.i.i.i349, %bb.cx
  %.075.lcssa.i.i.i.i.i347 = phi <2 x double> [ %i.auh, %bb.cx ], [ %i.aut, %.lr.ph.i.i.i.i.i349 ]
  %.072.lcssa.i.i.i.i.i348 = phi <2 x double> [ %i.aud, %bb.cx ], [ %i.auo, %.lr.ph.i.i.i.i.i349 ]
  %i.auj = fadd <2 x double> %.075.lcssa.i.i.i.i.i347, %.072.lcssa.i.i.i.i.i348 ; 2 uses
  %i.auk = icmp sgt i64 %i.aub, %i.atz
  br i1 %i.auk, label %bb.cy, label %bb.cz

.lr.ph.i.i.i.i.i349:                              ; preds = %bb.cx, %.lr.ph.i.i.i.i.i349
  %.05480.i.i.i.i.i350 = phi i64 [ %.054.i.i.i.i.i354, %.lr.ph.i.i.i.i.i349 ], [ 4, %bb.cx ] ; 3 uses
  %.054.in79.i.i.i.i.i351 = phi i64 [ %.05480.i.i.i.i.i350, %.lr.ph.i.i.i.i.i349 ], [ 0, %bb.cx ]
  %.07278.i.i.i.i.i352 = phi <2 x double> [ %i.auo, %.lr.ph.i.i.i.i.i349 ], [ %i.aud, %bb.cx ]
  %.07577.i.i.i.i.i353 = phi <2 x double> [ %i.aut, %.lr.ph.i.i.i.i.i349 ], [ %i.auh, %bb.cx ]
  %i.aul = getelementptr inbounds nuw [8 x i8], ptr %i.asi, i64 %.05480.i.i.i.i.i350
  %i.aum = load <2 x double>, ptr %i.aul, align 16, !tbaa !45 ; 2 uses
  %i.aun = fmul <2 x double> %i.aum, %i.aum
  %i.auo = fadd <2 x double> %.07278.i.i.i.i.i352, %i.aun ; 2 uses
  %i.aup = getelementptr inbounds nuw [8 x i8], ptr %i.asi, i64 %.054.in79.i.i.i.i.i351
  %i.auq = getelementptr inbounds nuw i8, ptr %i.aup, i64 48
  %i.aur = load <2 x double>, ptr %i.auq, align 16, !tbaa !45 ; 2 uses
  %i.aus = fmul <2 x double> %i.aur, %i.aur
  %i.aut = fadd <2 x double> %.07577.i.i.i.i.i353, %i.aus ; 2 uses
  %.054.i.i.i.i.i354 = add nuw nsw i64 %.05480.i.i.i.i.i350, 4 ; 2 uses
  %i.auu = icmp slt i64 %.054.i.i.i.i.i354, %i.atz
  br i1 %i.auu, label %.lr.ph.i.i.i.i.i349, label %._crit_edge.i.i.i.i.i346, !llvm.loop !4

bb.cy:                                            ; preds = %._crit_edge.i.i.i.i.i346
  %i.auv = getelementptr inbounds nuw [8 x i8], ptr %i.asi, i64 %i.atz
  %i.auw = load <2 x double>, ptr %i.auv, align 16, !tbaa !45 ; 2 uses
  %i.aux = fmul <2 x double> %i.auw, %i.auw
  %i.auy = fadd <2 x double> %i.auj, %i.aux
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %._crit_edge.i.i.i.i.i346, %bb.cw
  %.274.i.i.i.i.i339 = phi <2 x double> [ %i.aud, %bb.cw ], [ %i.auy, %bb.cy ], [ %i.auj, %._crit_edge.i.i.i.i.i346 ]
  %i.auz = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %.274.i.i.i.i.i339) ; 3 uses
  %i.ava = icmp slt i64 %i.aub, %i.ash
  br i1 %i.ava, label %.lr.ph85.i.i.i.i.i342.preheader, label %.loopexit555

.lr.ph85.i.i.i.i.i342.preheader:                  ; preds = %bb.cz
  %i.avb = sub i64 %i.ash, %i.aub
  %xtraiter1120 = and i64 %i.avb, 3               ; 2 uses
  %lcmp.mod1121.not = icmp eq i64 %xtraiter1120, 0
  br i1 %lcmp.mod1121.not, label %.lr.ph85.i.i.i.i.i342.prol.loopexit, label %.lr.ph85.i.i.i.i.i342.prol

.lr.ph85.i.i.i.i.i342.prol:                       ; preds = %.lr.ph85.i.i.i.i.i342.preheader, %.lr.ph85.i.i.i.i.i342.prol
  %.05283.i.i.i.i.i343.prol = phi i64 [ %i.avg, %.lr.ph85.i.i.i.i.i342.prol ], [ %i.aub, %.lr.ph85.i.i.i.i.i342.preheader ] ; 2 uses
  %.182.i.i.i.i.i344.prol = phi double [ %i.avf, %.lr.ph85.i.i.i.i.i342.prol ], [ %i.auz, %.lr.ph85.i.i.i.i.i342.preheader ]
  %prol.iter1122 = phi i64 [ %prol.iter1122.next, %.lr.ph85.i.i.i.i.i342.prol ], [ 0, %.lr.ph85.i.i.i.i.i342.preheader ]
  %i.avc = getelementptr inbounds [8 x i8], ptr %i.asi, i64 %.05283.i.i.i.i.i343.prol
  %i.avd = load double, ptr %i.avc, align 8, !tbaa !33 ; 2 uses
  %i.ave = fmul double %i.avd, %i.avd
  %i.avf = fadd double %.182.i.i.i.i.i344.prol, %i.ave ; 3 uses
  %i.avg = add nsw i64 %.05283.i.i.i.i.i343.prol, 1 ; 2 uses
  %prol.iter1122.next = add i64 %prol.iter1122, 1 ; 2 uses
  %prol.iter1122.cmp.not = icmp eq i64 %prol.iter1122.next, %xtraiter1120
  br i1 %prol.iter1122.cmp.not, label %.lr.ph85.i.i.i.i.i342.prol.loopexit, label %.lr.ph85.i.i.i.i.i342.prol, !llvm.loop !233

.lr.ph85.i.i.i.i.i342.prol.loopexit:              ; preds = %.lr.ph85.i.i.i.i.i342.prol, %.lr.ph85.i.i.i.i.i342.preheader
  %.lcssa1063.unr = phi double [ poison, %.lr.ph85.i.i.i.i.i342.preheader ], [ %i.avf, %.lr.ph85.i.i.i.i.i342.prol ]
  %.05283.i.i.i.i.i343.unr = phi i64 [ %i.aub, %.lr.ph85.i.i.i.i.i342.preheader ], [ %i.avg, %.lr.ph85.i.i.i.i.i342.prol ]
  %.182.i.i.i.i.i344.unr = phi double [ %i.auz, %.lr.ph85.i.i.i.i.i342.preheader ], [ %i.avf, %.lr.ph85.i.i.i.i.i342.prol ]
  %i.avh = sub i64 %i.aub, %i.ash
  %i.avi = icmp ugt i64 %i.avh, -4
  br i1 %i.avi, label %.loopexit555, label %.lr.ph85.i.i.i.i.i342

.lr.ph85.i.i.i.i.i342:                            ; preds = %.lr.ph85.i.i.i.i.i342.prol.loopexit, %.lr.ph85.i.i.i.i.i342
  %.05283.i.i.i.i.i343 = phi i64 [ %i.awc, %.lr.ph85.i.i.i.i.i342 ], [ %.05283.i.i.i.i.i343.unr, %.lr.ph85.i.i.i.i.i342.prol.loopexit ] ; 5 uses
  %.182.i.i.i.i.i344 = phi double [ %i.awb, %.lr.ph85.i.i.i.i.i342 ], [ %.182.i.i.i.i.i344.unr, %.lr.ph85.i.i.i.i.i342.prol.loopexit ]
  %i.avj = getelementptr inbounds [8 x i8], ptr %i.asi, i64 %.05283.i.i.i.i.i343
  %i.avk = load double, ptr %i.avj, align 8, !tbaa !33 ; 2 uses
  %i.avl = fmul double %i.avk, %i.avk
  %i.avm = fadd double %.182.i.i.i.i.i344, %i.avl
  %i.avn = getelementptr [8 x i8], ptr %i.asi, i64 %.05283.i.i.i.i.i343
  %i.avo = getelementptr i8, ptr %i.avn, i64 8
  %i.avp = load double, ptr %i.avo, align 8, !tbaa !33 ; 2 uses
  %i.avq = fmul double %i.avp, %i.avp
  %i.avr = fadd double %i.avm, %i.avq
  %i.avs = getelementptr [8 x i8], ptr %i.asi, i64 %.05283.i.i.i.i.i343
  %i.avt = getelementptr i8, ptr %i.avs, i64 16
  %i.avu = load double, ptr %i.avt, align 8, !tbaa !33 ; 2 uses
  %i.avv = fmul double %i.avu, %i.avu
  %i.avw = fadd double %i.avr, %i.avv
  %i.avx = getelementptr [8 x i8], ptr %i.asi, i64 %.05283.i.i.i.i.i343
  %i.avy = getelementptr i8, ptr %i.avx, i64 24
  %i.avz = load double, ptr %i.avy, align 8, !tbaa !33 ; 2 uses
  %i.awa = fmul double %i.avz, %i.avz
  %i.awb = fadd double %i.avw, %i.awa             ; 2 uses
  %i.awc = add nsw i64 %.05283.i.i.i.i.i343, 4    ; 2 uses
  %exitcond.not.i.i.i.i.i345.3 = icmp eq i64 %i.awc, %i.ash
  br i1 %exitcond.not.i.i.i.i.i345.3, label %.loopexit555, label %.lr.ph85.i.i.i.i.i342, !llvm.loop !5

bb.da:                                            ; preds = %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit.thread
  %i.awd = load double, ptr %i.asi, align 8, !tbaa !33 ; 2 uses
  %i.awe = fmul double %i.awd, %i.awd
  %i.awf = call double @llvm.sqrt.f64(double %i.awe)
  br label %._crit_edge.i.i.i.i.i.i

.loopexit555:                                     ; preds = %.lr.ph85.i.i.i.i.i342.prol.loopexit, %.lr.ph85.i.i.i.i.i342, %bb.cz
  %.0.i.i.i341 = phi double [ %i.auz, %bb.cz ], [ %.lcssa1063.unr, %.lr.ph85.i.i.i.i.i342.prol.loopexit ], [ %i.awb, %.lr.ph85.i.i.i.i.i342 ]
  %i.awg = call noundef double @llvm.sqrt.f64(double %.0.i.i.i341) ; 3 uses
  %i.awh = icmp sgt i64 %i.ash, 1
  br i1 %i.awh, label %.lr.ph.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %.loopexit555
  %i.awi = insertelement <2 x double> poison, double %i.awg, i64 0
  %i.awj = shufflevector <2 x double> %i.awi, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %bb.da, %.loopexit555
  %42 = phi i64 [ %i.aub, %.loopexit555 ], [ 0, %bb.da ], [ %i.aub, %.lr.ph.i.i.i.i.i.i ] ; 5 uses
  %43 = phi double [ %i.awg, %.loopexit555 ], [ %i.awf, %bb.da ], [ %i.awg, %.lr.ph.i.i.i.i.i.i ] ; 5 uses
  %i.awk = icmp slt i64 %42, %i.ash
  br i1 %i.awk, label %.lr.ph.i.i.i.i.i.i.i355.preheader, label %.loopexit554

.lr.ph.i.i.i.i.i.i.i355.preheader:                ; preds = %._crit_edge.i.i.i.i.i.i
  %i.awl = sub i64 %i.ash, %42                    ; 2 uses
  %min.iters.check931 = icmp ult i64 %i.awl, 2
  br i1 %min.iters.check931, label %.lr.ph.i.i.i.i.i.i.i355.preheader1041, label %vector.ph932

vector.ph932:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i355.preheader
  %i.awm = and i64 %i.ash, 1                      ; 2 uses
  %n.vec933 = sub nuw i64 %i.awl, %i.awm          ; 2 uses
  %i.awn = add i64 %42, %n.vec933
  %broadcast.splatinsert = insertelement <2 x double> poison, double %43, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.awo = getelementptr [8 x i8], ptr %i.asi, i64 %42
  br label %vector.body934

vector.body934:                                   ; preds = %vector.body934, %vector.ph932
  %index935 = phi i64 [ 0, %vector.ph932 ], [ %index.next937, %vector.body934 ] ; 2 uses
  %i.awp = getelementptr [8 x i8], ptr %i.awo, i64 %index935 ; 2 uses
  %wide.load936 = load <2 x double>, ptr %i.awp, align 8, !tbaa !33
  %i.awq = fdiv <2 x double> %wide.load936, %broadcast.splat
  store <2 x double> %i.awq, ptr %i.awp, align 8, !tbaa !33
  %index.next937 = add nuw i64 %index935, 2       ; 2 uses
  %i.awr = icmp eq i64 %index.next937, %n.vec933
  br i1 %i.awr, label %middle.block938, label %vector.body934, !llvm.loop !234

middle.block938:                                  ; preds = %vector.body934
  %cmp.n939 = icmp eq i64 %i.awm, 0
  br i1 %cmp.n939, label %.loopexit554, label %.lr.ph.i.i.i.i.i.i.i355.preheader1041

.lr.ph.i.i.i.i.i.i.i355.preheader1041:            ; preds = %.lr.ph.i.i.i.i.i.i.i355.preheader, %middle.block938
  %.05.i.i.i.i.i.i.i356.ph = phi i64 [ %42, %.lr.ph.i.i.i.i.i.i.i355.preheader ], [ %i.awn, %middle.block938 ]
  br label %.lr.ph.i.i.i.i.i.i.i355

.lr.ph.i.i.i.i.i.i.i355:                          ; preds = %.lr.ph.i.i.i.i.i.i.i355.preheader1041, %.lr.ph.i.i.i.i.i.i.i355
  %.05.i.i.i.i.i.i.i356 = phi i64 [ %i.awv, %.lr.ph.i.i.i.i.i.i.i355 ], [ %.05.i.i.i.i.i.i.i356.ph, %.lr.ph.i.i.i.i.i.i.i355.preheader1041 ] ; 2 uses
  %i.aws = getelementptr inbounds [8 x i8], ptr %i.asi, i64 %.05.i.i.i.i.i.i.i356 ; 2 uses
  %i.awt = load double, ptr %i.aws, align 8, !tbaa !33
  %i.awu = fdiv double %i.awt, %43
  store double %i.awu, ptr %i.aws, align 8, !tbaa !33
  %i.awv = add nsw i64 %.05.i.i.i.i.i.i.i356, 1   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i357 = icmp eq i64 %i.awv, %i.ash
  br i1 %exitcond.not.i.i.i.i.i.i.i357, label %.loopexit554, label %.lr.ph.i.i.i.i.i.i.i355, !llvm.loop !235

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.011.i.i.i.i.i.i = phi i64 [ %i.awz, %.lr.ph.i.i.i.i.i.i ], [ 0, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %i.aww = getelementptr inbounds nuw [8 x i8], ptr %i.asi, i64 %.011.i.i.i.i.i.i ; 2 uses
  %i.awx = load <2 x double>, ptr %i.aww, align 16, !tbaa !45
  %i.awy = fdiv <2 x double> %i.awx, %i.awj
  store <2 x double> %i.awy, ptr %i.aww, align 16, !tbaa !45
  %i.awz = add nuw nsw i64 %.011.i.i.i.i.i.i, 2   ; 2 uses
  %i.axa = icmp slt i64 %i.awz, %i.aub
  br i1 %i.axa, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !236

.loopexit554:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i355, %middle.block938, %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit, %._crit_edge.i.i.i.i.i.i
  %44 = phi double [ 0.000000e+00, %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit ], [ %43, %._crit_edge.i.i.i.i.i.i ], [ %43, %middle.block938 ], [ %43, %.lr.ph.i.i.i.i.i.i.i355 ] ; 2 uses
  %i.axb = load i64, ptr %i.an, align 8, !tbaa !272 ; 2 uses
  %i.axc = zext nneg i32 %.1.2765 to i64
  %i.axd = mul nsw i64 %i.axb, %i.axc
  %i.axe = load ptr, ptr %2, align 8, !tbaa !274
  %i.axf = getelementptr [4 x i8], ptr %i.axe, i64 %i.axd
  %i.axg = getelementptr [4 x i8], ptr %i.axf, i64 %indvars.iv667
  %i.axh = load i32, ptr %i.axg, align 4, !tbaa !46
  %i.axi = sext i32 %i.axh to i64                 ; 2 uses
  %i.axj = load ptr, ptr %3, align 8, !tbaa !274
  %i.axk = getelementptr [4 x i8], ptr %i.axj, i64 %i.axi ; 2 uses
  %i.axl = load i32, ptr %i.axk, align 4, !tbaa !46
  %i.axm = zext i32 %i.axl to i64
  %i.axn = icmp eq i64 %indvars.iv667, %i.axm     ; 2 uses
  %i.axo = load i64, ptr %i.as, align 8, !tbaa !272
  %i.axp = select i1 %i.axn, i64 %i.axo, i64 0
  %i.axq = getelementptr [4 x i8], ptr %i.axk, i64 %i.axp
  %i.axr = load i32, ptr %i.axq, align 4, !tbaa !46
  %i.axs = load ptr, ptr %4, align 8, !tbaa !274
  %i.axt = load i64, ptr %i.at, align 8, !tbaa !272
  %i.axu = select i1 %i.axn, i64 %i.axt, i64 0
  %i.axv = getelementptr [4 x i8], ptr %i.axs, i64 %i.axi
  %i.axw = getelementptr [4 x i8], ptr %i.axv, i64 %i.axu
  %i.axx = load i32, ptr %i.axw, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #25
  %i.axy = sext i32 %i.axr to i64
  %i.axz = sext i32 %i.axx to i64
  %i.aya = load ptr, ptr %1, align 8, !tbaa !274
  %i.ayb = mul nsw i64 %i.axb, %i.axz
  %i.ayc = getelementptr [4 x i8], ptr %i.aya, i64 %i.axy
  %i.ayd = getelementptr [4 x i8], ptr %i.ayc, i64 %i.ayb
  %i.aye = load i32, ptr %i.ayd, align 4, !tbaa !46
  %i.ayf = sext i32 %i.aye to i64                 ; 2 uses
  %i.ayg = load ptr, ptr %0, align 8, !tbaa !38, !noalias !287 ; 2 uses
  %i.ayh = ptrtoaddr ptr %i.ayg to i64
  %i.ayi = getelementptr inbounds [8 x i8], ptr %i.ayg, i64 %i.ayf ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %32, i8 0, i64 16, i1 false)
  %i.ayj = load i64, ptr %i.aq, align 8, !tbaa !31 ; 3 uses
  %i.ayk = icmp eq i64 %i.ayj, 0
  br i1 %i.ayk, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i394, label %bb.db

bb.db:                                            ; preds = %.loopexit554
  %i.ayl = sdiv i64 9223372036854775807, %i.ayj
  %i.aym = icmp slt i64 %i.ayl, 1
  br i1 %i.aym, label %bb.dc, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i394

bb.dc:                                            ; preds = %bb.db
  %i.ayn = call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ayn, align 8, !tbaa !41
  invoke void @__cxa_throw(ptr nonnull %i.ayn, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #26
          to label %.noexc.i403 unwind label %.loopexit.split-lp566

.noexc.i403:                                      ; preds = %bb.dc
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i394: ; preds = %bb.db, %.loopexit554
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %32, i64 noundef 1, i64 noundef %i.ayj)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS2_EEEEvRKNS_9EigenBaseIT_EE.exit.i395 unwind label %.loopexit565

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS2_EEEEvRKNS_9EigenBaseIT_EE.exit.i395: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i394
  %i.ayo = load i64, ptr %i.c, align 8, !tbaa !24 ; 4 uses
  %i.ayp = load ptr, ptr %30, align 8, !tbaa !32  ; 5 uses
  %i.ayq = ptrtoaddr ptr %i.ayp to i64
  %i.ayr = load i64, ptr %i.aq, align 8, !tbaa !31 ; 3 uses
  %i.ays = load i64, ptr %i.au, align 8, !tbaa !31
  %.not8.i.i.i.i.i.i396 = icmp eq i64 %i.ays, %i.ayr
  br i1 %.not8.i.i.i.i.i.i396, label %bb.dd, label %thread-pre-split.i.i.i.i.i397

thread-pre-split.i.i.i.i.i397:                    ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS2_EEEEvRKNS_9EigenBaseIT_EE.exit.i395
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %32, i64 noundef 1, i64 noundef %i.ayr)
          to label %.noexc5.i398 unwind label %.loopexit565

.noexc5.i398:                                     ; preds = %thread-pre-split.i.i.i.i.i397
  %.pr.i.i.i.i.i399 = load i64, ptr %i.au, align 8, !tbaa !31
  br label %bb.dd

bb.dd:                                            ; preds = %.noexc5.i398, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS2_EEEEvRKNS_9EigenBaseIT_EE.exit.i395
  %i.ayt = phi i64 [ %.pr.i.i.i.i.i399, %.noexc5.i398 ], [ %i.ayr, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS2_EEEEvRKNS_9EigenBaseIT_EE.exit.i395 ] ; 7 uses
  %i.ayu = load ptr, ptr %32, align 8, !tbaa !32  ; 5 uses
  %i.ayv = ptrtoaddr ptr %i.ayu to i64            ; 2 uses
  %i.ayw = icmp sgt i64 %i.ayt, 0
  br i1 %i.ayw, label %.lr.ph.i.i.i.i.i.i400.preheader, label %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit359

.lr.ph.i.i.i.i.i.i400.preheader:                  ; preds = %bb.dd
  %min.iters.check917 = icmp ugt i64 %i.ayt, 7
  %ident.check912.not = icmp eq i64 %i.ayo, 1
  %or.cond1032 = select i1 %min.iters.check917, i1 %ident.check912.not, i1 false
  br i1 %or.cond1032, label %vector.memcheck913, label %.lr.ph.i.i.i.i.i.i400.preheader1040

vector.memcheck913:                               ; preds = %.lr.ph.i.i.i.i.i.i400.preheader
  %i.ayx = shl nsw i64 %i.ayf, 3
  %i.ayy = add i64 %i.ayx, %i.ayh
  %i.ayz = sub i64 %i.ayy, %i.ayv
  %diff.check914 = icmp ugt i64 %i.ayz, -32
  %i.aza = sub i64 %i.ayq, %i.ayv
  %diff.check915 = icmp ugt i64 %i.aza, -32
  %conflict.rdx = or i1 %diff.check914, %diff.check915
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i.i.i400.preheader1040, label %vector.ph918

vector.ph918:                                     ; preds = %vector.memcheck913
  %n.vec919 = and i64 %i.ayt, 9223372036854775804 ; 3 uses
  br label %vector.body920

vector.body920:                                   ; preds = %vector.body920, %vector.ph918
  %index921 = phi i64 [ 0, %vector.ph918 ], [ %index.next926, %vector.body920 ] ; 4 uses
  %i.azb = getelementptr inbounds nuw [8 x i8], ptr %i.ayu, i64 %index921 ; 2 uses
  %i.azc = getelementptr inbounds [8 x i8], ptr %i.ayi, i64 %index921 ; 2 uses
  %i.azd = getelementptr inbounds nuw i8, ptr %i.azc, i64 16
  %wide.load922 = load <2 x double>, ptr %i.azc, align 8, !tbaa !33
  %wide.load923 = load <2 x double>, ptr %i.azd, align 8, !tbaa !33
  %i.aze = getelementptr inbounds nuw [8 x i8], ptr %i.ayp, i64 %index921 ; 2 uses
  %i.azf = getelementptr inbounds nuw i8, ptr %i.aze, i64 16
  %wide.load924 = load <2 x double>, ptr %i.aze, align 8, !tbaa !33
  %wide.load925 = load <2 x double>, ptr %i.azf, align 8, !tbaa !33
  %i.azg = fsub <2 x double> %wide.load922, %wide.load924
  %i.azh = fsub <2 x double> %wide.load923, %wide.load925
  %i.azi = getelementptr inbounds nuw i8, ptr %i.azb, i64 16
  store <2 x double> %i.azg, ptr %i.azb, align 8, !tbaa !33
  store <2 x double> %i.azh, ptr %i.azi, align 8, !tbaa !33
  %index.next926 = add nuw i64 %index921, 4       ; 2 uses
  %i.azj = icmp eq i64 %index.next926, %n.vec919
  br i1 %i.azj, label %middle.block927, label %vector.body920, !llvm.loop !239

middle.block927:                                  ; preds = %vector.body920
  %cmp.n928 = icmp eq i64 %i.ayt, %n.vec919
  br i1 %cmp.n928, label %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit359, label %.lr.ph.i.i.i.i.i.i400.preheader1040

.lr.ph.i.i.i.i.i.i400.preheader1040:              ; preds = %vector.memcheck913, %.lr.ph.i.i.i.i.i.i400.preheader, %middle.block927
  %.05.i.i.i.i.i.i401.ph = phi i64 [ 0, %vector.memcheck913 ], [ 0, %.lr.ph.i.i.i.i.i.i400.preheader ], [ %n.vec919, %middle.block927 ] ; 6 uses
  %.neg1141 = or disjoint i64 %.05.i.i.i.i.i.i401.ph, 1
  %xtraiter1123 = and i64 %i.ayt, 1
  %lcmp.mod1124.not = icmp eq i64 %xtraiter1123, 0
  br i1 %lcmp.mod1124.not, label %.lr.ph.i.i.i.i.i.i400.prol.loopexit, label %.lr.ph.i.i.i.i.i.i400.prol

.lr.ph.i.i.i.i.i.i400.prol:                       ; preds = %.lr.ph.i.i.i.i.i.i400.preheader1040
  %i.azk = getelementptr inbounds nuw [8 x i8], ptr %i.ayu, i64 %.05.i.i.i.i.i.i401.ph
  %i.azl = mul nsw i64 %.05.i.i.i.i.i.i401.ph, %i.ayo
  %i.azm = getelementptr inbounds [8 x i8], ptr %i.ayi, i64 %i.azl
  %i.azn = load double, ptr %i.azm, align 8, !tbaa !33
  %i.azo = getelementptr inbounds nuw [8 x i8], ptr %i.ayp, i64 %.05.i.i.i.i.i.i401.ph
  %i.azp = load double, ptr %i.azo, align 8, !tbaa !33
  %i.azq = fsub double %i.azn, %i.azp
  store double %i.azq, ptr %i.azk, align 8, !tbaa !33
  %i.azr = or disjoint i64 %.05.i.i.i.i.i.i401.ph, 1
  br label %.lr.ph.i.i.i.i.i.i400.prol.loopexit

.lr.ph.i.i.i.i.i.i400.prol.loopexit:              ; preds = %.lr.ph.i.i.i.i.i.i400.prol, %.lr.ph.i.i.i.i.i.i400.preheader1040
  %.05.i.i.i.i.i.i401.unr = phi i64 [ %.05.i.i.i.i.i.i401.ph, %.lr.ph.i.i.i.i.i.i400.preheader1040 ], [ %i.azr, %.lr.ph.i.i.i.i.i.i400.prol ]
  %i.azs = icmp eq i64 %i.ayt, %.neg1141
  br i1 %i.azs, label %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit359, label %.lr.ph.i.i.i.i.i.i400

.lr.ph.i.i.i.i.i.i400:                            ; preds = %.lr.ph.i.i.i.i.i.i400.prol.loopexit, %.lr.ph.i.i.i.i.i.i400
  %.05.i.i.i.i.i.i401 = phi i64 [ %i.bai, %.lr.ph.i.i.i.i.i.i400 ], [ %.05.i.i.i.i.i.i401.unr, %.lr.ph.i.i.i.i.i.i400.prol.loopexit ] ; 5 uses
  %i.azt = getelementptr inbounds nuw [8 x i8], ptr %i.ayu, i64 %.05.i.i.i.i.i.i401
  %i.azu = mul nsw i64 %.05.i.i.i.i.i.i401, %i.ayo
  %i.azv = getelementptr inbounds [8 x i8], ptr %i.ayi, i64 %i.azu
  %i.azw = load double, ptr %i.azv, align 8, !tbaa !33
  %i.azx = getelementptr inbounds nuw [8 x i8], ptr %i.ayp, i64 %.05.i.i.i.i.i.i401
  %i.azy = load double, ptr %i.azx, align 8, !tbaa !33
  %i.azz = fsub double %i.azw, %i.azy
  store double %i.azz, ptr %i.azt, align 8, !tbaa !33
  %i.baa = add nuw nsw i64 %.05.i.i.i.i.i.i401, 1 ; 3 uses
  %i.bab = getelementptr inbounds nuw [8 x i8], ptr %i.ayu, i64 %i.baa
  %i.bac = mul nsw i64 %i.baa, %i.ayo
  %i.bad = getelementptr inbounds [8 x i8], ptr %i.ayi, i64 %i.bac
  %i.bae = load double, ptr %i.bad, align 8, !tbaa !33
  %i.baf = getelementptr inbounds nuw [8 x i8], ptr %i.ayp, i64 %i.baa
  %i.bag = load double, ptr %i.baf, align 8, !tbaa !33
  %i.bah = fsub double %i.bae, %i.bag
  store double %i.bah, ptr %i.bab, align 8, !tbaa !33
  %i.bai = add nuw nsw i64 %.05.i.i.i.i.i.i401, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i402.1 = icmp eq i64 %i.bai, %i.ayt
  br i1 %exitcond.not.i.i.i.i.i.i402.1, label %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit359, label %.lr.ph.i.i.i.i.i.i400, !llvm.loop !240

.loopexit565:                                     ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i394, %thread-pre-split.i.i.i.i.i397
  %lpad.loopexit567 = landingpad { ptr, i32 }
          cleanup
  br label %.body404

.loopexit.split-lp566:                            ; preds = %bb.dc
  %lpad.loopexit.split-lp568 = landingpad { ptr, i32 }
          cleanup
  br label %.body404

_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit359: ; preds = %.lr.ph.i.i.i.i.i.i400.prol.loopexit, %.lr.ph.i.i.i.i.i.i400, %middle.block927, %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #25
  %i.baj = load i64, ptr %i.ar, align 8, !tbaa !31 ; 22 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %33, i8 0, i64 24, i1 false)
  %i.bak = icmp sgt i64 %i.baj, 4611686018427387903
  br i1 %i.bak, label %.invoke798, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i361

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i361: ; preds = %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS0_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKS1_EEEERKNS_9EigenBaseIT_EE.exit359
  %.not.i407 = icmp eq i64 %i.baj, 0
  br i1 %.not.i407, label %.thread767, label %bb.de

bb.de:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i361
  %i.bal = icmp sgt i64 %i.baj, 0
  br i1 %i.bal, label %bb.df, label %bb.dh

bb.df:                                            ; preds = %bb.de
  %.not758 = icmp samesign ult i64 %i.baj, 1152921504606846976
end_hunk_0
begin_hunk_1_@_ZN3igl34per_vertex_point_to_plane_quadricsERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS1_IiLin1ELin1ELi0ELin1ELin1EEES7_S7_S7_RSt6vectorISt5tupleIJS2_NS1_IdLi1ELin1ELi1ELi1ELin1EEEdEESaISB_EE:bb.a
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !54, !alias.scope !290
  store i8 0, ptr %i.az, align 8, !tbaa !57, !alias.scope !290
  %i.bgy = load i64, ptr %i.bb, align 8, !tbaa !24, !noalias !290
  %i.bgz = load i64, ptr %i.bc, align 8, !tbaa !23, !noalias !290
  %.sroa.speculated.i.i.i = call noundef i64 @llvm.smin.i64(i64 %i.bgz, i64 %i.bgy)
  store i64 %.sroa.speculated.i.i.i, ptr %i.ba, align 8, !tbaa !58, !alias.scope !290
  store i64 0, ptr %i.bd, align 8, !tbaa !59, !alias.scope !290
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_19HouseholderSequenceIS2_NS1_IdLin1ELi1ELi0ELin1ELi1EEELi1EEEEERKNS_9EigenBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %35, ptr noundef nonnull align 1 dereferenceable(1) %36)
          to label %bb.dk unwind label %bb.ds

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #25
  %i.bha = load i64, ptr %i.ar, align 8, !tbaa !31 ; 2 uses
  %i.bhb = add nsw i64 %i.bha, -2                 ; 2 uses
  %i.bhc = load i64, ptr %i.be, align 8, !tbaa !23, !noalias !291
  %i.bhd = sub nsw i64 %i.bhc, %i.bhb             ; 2 uses
  %i.bhe = load ptr, ptr %35, align 8, !tbaa !38, !noalias !291
  %i.bhf = load i64, ptr %i.bf, align 8, !tbaa !24, !noalias !291 ; 2 uses
  %i.bhg = mul nsw i64 %i.bhf, %i.bhd
  %i.bhh = getelementptr inbounds [8 x i8], ptr %i.bhe, i64 %i.bhg
  store ptr %i.bhh, ptr %38, align 8
  store i64 %i.bha, ptr %.sroa.5426.0..sroa_idx, align 8
  store i64 %i.bhb, ptr %.sroa.6.0..sroa_idx, align 8
  store ptr %35, ptr %.sroa.7.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.8.0..sroa_idx, align 8
  store i64 %i.bhd, ptr %.sroa.9427.0..sroa_idx, align 8
  store i64 %i.bhf, ptr %.sroa.10.0..sroa_idx, align 8
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_9TransposeIKNS_5BlockIKS2_Lin1ELin1ELb0EEEEEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %37, ptr noundef nonnull align 1 dereferenceable(1) %38)
          to label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_9TransposeIKNS_5BlockIKS1_Lin1ELin1ELb0EEEEEEERKNS_9EigenBaseIT_EE.exit unwind label %bb.dt

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_9TransposeIKNS_5BlockIKS1_Lin1ELin1ELb0EEEEEEERKNS_9EigenBaseIT_EE.exit: ; preds = %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #25
  %i.bhi = load i64, ptr %i.bg, align 8, !tbaa !24 ; 5 uses
  %i.bhj = add nsw i64 %i.bhi, 1                  ; 11 uses
  %i.bhk = load i64, ptr %i.ar, align 8, !tbaa !31 ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %39, i8 0, i64 24, i1 false)
  %i.bhl = icmp eq i64 %i.bhj, 0
  %i.bhm = icmp eq i64 %i.bhk, 0
  %or.cond.i.i.i.i371 = or i1 %i.bhl, %i.bhm
  br i1 %or.cond.i.i.i.i371, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i372, label %bb.dl

bb.dl:                                            ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_9TransposeIKNS_5BlockIKS1_Lin1ELin1ELb0EEEEEEERKNS_9EigenBaseIT_EE.exit
  %i.bhn = sdiv i64 9223372036854775807, %i.bhk
  %.not544 = icmp slt i64 %i.bhi, %i.bhn
  br i1 %.not544, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i372, label %.invoke800

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i372: ; preds = %bb.dl, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_9TransposeIKNS_5BlockIKS1_Lin1ELin1ELb0EEEEEEERKNS_9EigenBaseIT_EE.exit
  %i.bho = mul nsw i64 %i.bhk, %i.bhj             ; 4 uses
  %.not.i414 = icmp eq i64 %i.bho, 0
  br i1 %.not.i414, label %bb.dp, label %bb.dm

bb.dm:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i372
  %i.bhp = icmp sgt i64 %i.bho, 0
  br i1 %i.bhp, label %bb.dn, label %.sink.split.i415

bb.dn:                                            ; preds = %bb.dm
  %i.bhq = icmp samesign ugt i64 %i.bho, 2305843009213693951
  br i1 %i.bhq, label %.invoke800, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i417

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i417: ; preds = %bb.dn
  %i.bhr = shl nuw i64 %i.bho, 3
  %i.bhs = call noalias ptr @malloc(i64 noundef %i.bhr) #27 ; 2 uses
  %i.bht = icmp eq ptr %i.bhs, null
  br i1 %i.bht, label %.invoke800, label %.sink.split.i415

.invoke800:                                       ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i417, %bb.dn, %bb.dl
  %i.bhu = call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bhu, align 8, !tbaa !41
  invoke void @__cxa_throw(ptr nonnull %i.bhu, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #26
          to label %.cont801 unwind label %bb.do

.cont801:                                         ; preds = %.invoke800
  unreachable

.sink.split.i415:                                 ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i417, %bb.dm
  %.sink.i416 = phi ptr [ %i.bhs, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i417 ], [ null, %bb.dm ] ; 2 uses
  store ptr %.sink.i416, ptr %39, align 8, !tbaa !38
  br label %bb.dp

bb.do:                                            ; preds = %.invoke800
  %i.bhv = landingpad { ptr, i32 }
          cleanup
  br label %.body374

bb.dp:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i372, %.sink.split.i415
  %i.bhw = phi ptr [ null, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i372 ], [ %.sink.i416, %.sink.split.i415 ] ; 6 uses
  store i64 %i.bhj, ptr %i.bh, align 8, !tbaa !24
  store i64 %i.bhk, ptr %i.bi, align 8, !tbaa !23
  %i.bhx = load ptr, ptr %31, align 8, !tbaa !32, !noalias !292 ; 5 uses
  %i.bhy = icmp sgt i64 %i.bhk, 0
  br i1 %i.bhy, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i376.preheader, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEElsINS1_IdLi1ELin1ELi1ELi1ELin1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit380

.preheader.i.i.i.i.i.i.i.i.i.i.i.i376.preheader:  ; preds = %bb.dp
  %xtraiter1135 = and i64 %i.bhk, 3               ; 3 uses
  %i.bhz = icmp ult i64 %i.bhk, 4
  br i1 %i.bhz, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i376.epil.preheader, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i376.preheader.new

.preheader.i.i.i.i.i.i.i.i.i.i.i.i376.preheader.new: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i376.preheader
  %unroll_iter1139 = and i64 %i.bhk, 9223372036854775804
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i376

.preheader.i.i.i.i.i.i.i.i.i.i.i.i376:            ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i376, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i376.preheader.new
  %.0810.i.i.i.i.i.i.i.i.i.i.i.i377 = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i376.preheader.new ], [ %i.bip, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i376 ] ; 6 uses
  %niter1140 = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i376.preheader.new ], [ %niter1140.next.3, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i376 ]
  %i.bia = mul nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i377, %i.bhj
  %i.bib = getelementptr [8 x i8], ptr %i.bhw, i64 %i.bia
  %i.bic = getelementptr [8 x i8], ptr %i.bhx, i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i377
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i378 = load double, ptr %i.bic, align 8, !tbaa !33, !noalias !292
  store double %.pre.i.i.i.i.i.i.i.i.i.i.i.i378, ptr %i.bib, align 8, !tbaa !33, !noalias !292
  %i.bid = or disjoint i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i377, 1 ; 2 uses
  %i.bie = mul nsw i64 %i.bid, %i.bhj
  %i.bif = getelementptr [8 x i8], ptr %i.bhw, i64 %i.bie
  %i.big = getelementptr [8 x i8], ptr %i.bhx, i64 %i.bid
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i378.1 = load double, ptr %i.big, align 8, !tbaa !33, !noalias !292
  store double %.pre.i.i.i.i.i.i.i.i.i.i.i.i378.1, ptr %i.bif, align 8, !tbaa !33, !noalias !292
  %i.bih = or disjoint i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i377, 2 ; 2 uses
  %i.bii = mul nsw i64 %i.bih, %i.bhj
  %i.bij = getelementptr [8 x i8], ptr %i.bhw, i64 %i.bii
  %i.bik = getelementptr [8 x i8], ptr %i.bhx, i64 %i.bih
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i378.2 = load double, ptr %i.bik, align 8, !tbaa !33, !noalias !292
  store double %.pre.i.i.i.i.i.i.i.i.i.i.i.i378.2, ptr %i.bij, align 8, !tbaa !33, !noalias !292
  %i.bil = or disjoint i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i377, 3 ; 2 uses
  %i.bim = mul nsw i64 %i.bil, %i.bhj
  %i.bin = getelementptr [8 x i8], ptr %i.bhw, i64 %i.bim
  %i.bio = getelementptr [8 x i8], ptr %i.bhx, i64 %i.bil
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i378.3 = load double, ptr %i.bio, align 8, !tbaa !33, !noalias !292
  store double %.pre.i.i.i.i.i.i.i.i.i.i.i.i378.3, ptr %i.bin, align 8, !tbaa !33, !noalias !292
  %i.bip = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i377, 4 ; 2 uses
  %niter1140.next.3 = add nuw nsw i64 %niter1140, 4 ; 2 uses
  %niter1140.ncmp.3 = icmp eq i64 %niter1140.next.3, %unroll_iter1139
  br i1 %niter1140.ncmp.3, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEElsINS1_IdLi1ELin1ELi1ELi1ELin1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit380.loopexit.unr-lcssa, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i376, !llvm.loop !220

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEElsINS1_IdLi1ELin1ELi1ELi1ELin1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit380.loopexit.unr-lcssa: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i376
  %lcmp.mod1137.not = icmp eq i64 %xtraiter1135, 0
  br i1 %lcmp.mod1137.not, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEElsINS1_IdLi1ELin1ELi1ELi1ELin1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit380, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i376.epil.preheader

.preheader.i.i.i.i.i.i.i.i.i.i.i.i376.epil.preheader: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEElsINS1_IdLi1ELin1ELi1ELi1ELin1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit380.loopexit.unr-lcssa, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i376.preheader
  %.0810.i.i.i.i.i.i.i.i.i.i.i.i377.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i376.preheader ], [ %i.bip, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEElsINS1_IdLi1ELin1ELi1ELi1ELin1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit380.loopexit.unr-lcssa ]
  %lcmp.mod1138 = icmp ne i64 %xtraiter1135, 0
  call void @llvm.assume(i1 %lcmp.mod1138)
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i376.epil

.preheader.i.i.i.i.i.i.i.i.i.i.i.i376.epil:       ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i376.epil, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i376.epil.preheader
  %.0810.i.i.i.i.i.i.i.i.i.i.i.i377.epil = phi i64 [ %i.bit, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i376.epil ], [ %.0810.i.i.i.i.i.i.i.i.i.i.i.i377.epil.init, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i376.epil.preheader ] ; 3 uses
  %epil.iter1136 = phi i64 [ %epil.iter1136.next, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i376.epil ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i376.epil.preheader ]
  %i.biq = mul nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i377.epil, %i.bhj
  %i.bir = getelementptr [8 x i8], ptr %i.bhw, i64 %i.biq
  %i.bis = getelementptr [8 x i8], ptr %i.bhx, i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i377.epil
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i378.epil = load double, ptr %i.bis, align 8, !tbaa !33, !noalias !292
  store double %.pre.i.i.i.i.i.i.i.i.i.i.i.i378.epil, ptr %i.bir, align 8, !tbaa !33, !noalias !292
  %i.bit = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i377.epil, 1
  %epil.iter1136.next = add i64 %epil.iter1136, 1 ; 2 uses
  %epil.iter1136.cmp.not = icmp eq i64 %epil.iter1136.next, %xtraiter1135
  br i1 %epil.iter1136.cmp.not, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEElsINS1_IdLi1ELin1ELi1ELi1ELin1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit380, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i376.epil, !llvm.loop !264

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEElsINS1_IdLi1ELin1ELi1ELi1ELin1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit380: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEElsINS1_IdLi1ELin1ELi1ELi1ELin1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit380.loopexit.unr-lcssa, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i376.epil, %bb.dp
  %i.biu = load i64, ptr %.phi.trans.insert14.i, align 8, !tbaa !23 ; 2 uses
  %.not.i381 = icmp ne i64 %i.biu, 0              ; 2 uses
  %.not8.i385 = icmp ne i64 %i.bhi, 1             ; 2 uses
  %narrow = or i1 %.not.i381, %.not8.i385
  %.sroa.5.0 = zext i1 %narrow to i64             ; 2 uses
  %i.biv = or i1 %.not.i381, %.not8.i385
  %i.biw = select i1 %i.biv, i64 0, i64 %i.bhk    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.bix = getelementptr inbounds nuw [8 x i8], ptr %i.bhw, i64 %.sroa.5.0
  %i.biy = mul nsw i64 %i.biw, %i.bhj
  %i.biz = getelementptr inbounds [8 x i8], ptr %i.bix, i64 %i.biy ; 2 uses
  store ptr %i.biz, ptr %10, align 8, !tbaa !61, !alias.scope !293
  store i64 %i.bhi, ptr %i.bj, align 8, !tbaa !26, !alias.scope !293
  store i64 %i.biu, ptr %i.bk, align 8, !tbaa !26, !alias.scope !293
  store ptr %39, ptr %i.bl, align 8, !tbaa !52, !alias.scope !293
  store i64 %.sroa.5.0, ptr %i.bm, align 8, !tbaa !26, !alias.scope !293
  store i64 %i.biw, ptr %i.bn, align 8, !tbaa !26, !alias.scope !293
  store i64 %i.bhj, ptr %i.bo, align 8, !tbaa !64, !alias.scope !293
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.bja = load ptr, ptr %37, align 8, !tbaa !38
  store ptr %i.bja, ptr %6, align 8, !tbaa !294
  store i64 %i.bhi, ptr %i.bp, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store ptr %i.biz, ptr %7, align 8, !tbaa !69
  store i64 %i.bhj, ptr %i.bq, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store ptr %7, ptr %8, align 8, !tbaa !71
  store ptr %6, ptr %i.br, align 8, !tbaa !295
  store ptr %9, ptr %i.bs, align 8, !tbaa !296
  store ptr %10, ptr %i.bt, align 8, !tbaa !75
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_(ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.dq unwind label %bb.du

bb.dq:                                            ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEElsINS1_IdLi1ELin1ELi1ELi1ELin1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit380
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #25
  %i.bjb = fmul double %44, %44
  invoke fastcc void @"_ZZN3igl34per_vertex_point_to_plane_quadricsERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS1_IiLin1ELin1ELi0ELin1ELin1EEES7_S7_S7_RSt6vectorISt5tupleIJS2_NS1_IdLi1ELin1ELi1ELi1ELin1EEEdEESaISB_EEENK3$_0clERKSA_S4_d"(ptr dead_on_unwind noalias writable align 8 %40, ptr %14, ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef nonnull align 8 dereferenceable(24) %39, double noundef %i.bjb)
          to label %.preheader552.preheader unwind label %bb.dv

.preheader552.preheader:                          ; preds = %bb.dq
  %.not = icmp eq i32 %.1.2765, 0
  br i1 %.not, label %.preheader552.1.thread, label %bb.dw

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

bb.du:                                            ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEElsINS1_IdLi1ELin1ELi1ELi1ELin1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit380
  %i.bjf = landingpad { ptr, i32 }
          cleanup
  br label %.body374

bb.dv:                                            ; preds = %bb.dq
  %i.bjg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

bb.dw:                                            ; preds = %.preheader552.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #25
  %i.bjh = load ptr, ptr %1, align 8, !tbaa !274
  %i.bji = getelementptr [4 x i8], ptr %i.bjh, i64 %indvars.iv667
  %i.bjj = load i32, ptr %i.bji, align 4, !tbaa !46
  %i.bjk = sext i32 %i.bjj to i64
  %i.bjl = load ptr, ptr %5, align 8, !tbaa !37
  %i.bjm = getelementptr inbounds nuw [48 x i8], ptr %i.bjl, i64 %i.bjk
  invoke void @_ZN3iglplERKSt5tupleIJN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEdEES7_(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple") align 8 %41, ptr noundef nonnull align 8 dereferenceable(48) %i.bjm, ptr noundef nonnull align 8 dereferenceable(48) %40)
          to label %.preheader552.1 unwind label %bb.dx

bb.dx:                                            ; preds = %.preheader552.2.thread, %.preheader552.1.thread, %bb.dw
  %i.bjn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #25
  %i.bjo = load ptr, ptr %i.bz, align 8, !tbaa !38
  call void @free(ptr noundef %i.bjo) #25
  %i.bjp = load ptr, ptr %i.ca, align 8, !tbaa !32
  call void @free(ptr noundef %i.bjp) #25
  br label %bb.ea

.preheader552.1:                                  ; preds = %bb.dw
  %i.bjq = load ptr, ptr %1, align 8, !tbaa !274
  %i.bjr = getelementptr [4 x i8], ptr %i.bjq, i64 %indvars.iv667
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
  %.not.1 = icmp eq i32 %.1.2765, 1
  br i1 %.not.1, label %.preheader552.2.thread, label %.preheader552.1.thread

.preheader552.1.thread:                           ; preds = %.preheader552.preheader, %.preheader552.1
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #25
  %i.bko = load ptr, ptr %1, align 8, !tbaa !274
  %i.bkp = load i64, ptr %i.an, align 8, !tbaa !272
  %i.bkq = getelementptr [4 x i8], ptr %i.bko, i64 %indvars.iv667
  %i.bkr = getelementptr [4 x i8], ptr %i.bkq, i64 %i.bkp
  %i.bks = load i32, ptr %i.bkr, align 4, !tbaa !46
  %i.bkt = sext i32 %i.bks to i64
  %i.bku = load ptr, ptr %5, align 8, !tbaa !37
  %i.bkv = getelementptr inbounds nuw [48 x i8], ptr %i.bku, i64 %i.bkt
  invoke void @_ZN3iglplERKSt5tupleIJN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEdEES7_(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple") align 8 %41, ptr noundef nonnull align 8 dereferenceable(48) %i.bkv, ptr noundef nonnull align 8 dereferenceable(48) %40)
          to label %.preheader552.2 unwind label %bb.dx

.preheader552.2:                                  ; preds = %.preheader552.1.thread
  %i.bkw = load ptr, ptr %1, align 8, !tbaa !274
  %i.bkx = load i64, ptr %i.an, align 8, !tbaa !272
  %i.bky = getelementptr [4 x i8], ptr %i.bkw, i64 %indvars.iv667
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
  %.not.2 = icmp eq i32 %.1.2765, 2
  br i1 %.not.2, label %bb.dz, label %.preheader552.2.thread

.preheader552.2.thread:                           ; preds = %.preheader552.1, %.preheader552.2
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #25
  %i.blw = load ptr, ptr %1, align 8, !tbaa !274
  %i.blx = load i64, ptr %i.an, align 8, !tbaa !272
  %i.bly = getelementptr [4 x i8], ptr %i.blw, i64 %indvars.iv667
  %.idx759 = shl i64 %i.blx, 3
  %i.blz = getelementptr i8, ptr %i.bly, i64 %.idx759
  %i.bma = load i32, ptr %i.blz, align 4, !tbaa !46
  %i.bmb = sext i32 %i.bma to i64
  %i.bmc = load ptr, ptr %5, align 8, !tbaa !37
  %i.bmd = getelementptr inbounds nuw [48 x i8], ptr %i.bmc, i64 %i.bmb
  invoke void @_ZN3iglplERKSt5tupleIJN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEdEES7_(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple") align 8 %41, ptr noundef nonnull align 8 dereferenceable(48) %i.bmd, ptr noundef nonnull align 8 dereferenceable(48) %40)
          to label %bb.dy unwind label %bb.dx

bb.dy:                                            ; preds = %.preheader552.2.thread
  %i.bme = load ptr, ptr %1, align 8, !tbaa !274
  %i.bmf = load i64, ptr %i.an, align 8, !tbaa !272
  %i.bmg = getelementptr [4 x i8], ptr %i.bme, i64 %indvars.iv667
  %.idx760 = shl i64 %i.bmf, 3
  %i.bmh = getelementptr i8, ptr %i.bmg, i64 %.idx760
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
