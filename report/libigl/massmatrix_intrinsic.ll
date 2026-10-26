Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/massmatrix_intrinsic?download=true
inline.NumInlined: 3675
inline.NumDeleted: 1521
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 229
loop-unroll.NumUnrolled: 232
begin_hunk_0_@_ZN3igl20massmatrix_intrinsicIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi4ELi0ELin1ELi4EEEdEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EENS_14MassMatrixTypeEiRNS1_12SparseMatrixIT1_Li0EiEE:bb.a
  store ptr %23, ptr %i.axy, align 8, !tbaa !77
  %i.axz = getelementptr inbounds nuw i8, ptr %25, i64 16
  store ptr %26, ptr %i.axz, align 8, !tbaa !79
  %i.aya = getelementptr inbounds nuw i8, ptr %25, i64 24
  store ptr %78, ptr %i.aya, align 8, !tbaa !81
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS4_INS5_IdLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSE_(ptr noundef nonnull align 8 dereferenceable(32) %25)
          to label %bb.cv unwind label %bb.dd

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #14
  %i.ayb = load ptr, ptr %75, align 8, !tbaa !59
  call void @free(ptr noundef %i.ayb) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #14
  call void @free(ptr noundef %.0.i.i2740) #14
  %i.ayc = load ptr, ptr %71, align 8, !tbaa !59
  call void @free(ptr noundef %i.ayc) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #14
  %i.ayd = load ptr, ptr %70, align 8, !tbaa !59
  call void @free(ptr noundef %i.ayd) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #14
  br label %_ZN5Eigen9DenseBaseINS_12ArrayWrapperINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEdVERKd.exit

bb.cw:                                            ; preds = %bb.s
  %i.aye = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #14
  br label %bb.ej

bb.cx:                                            ; preds = %bb.t
  %i.ayf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #14
  br label %bb.ej

bb.cy:                                            ; preds = %bb.u
  %i.ayg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #14
  br label %bb.ej

bb.cz:                                            ; preds = %.thread2738
  %i.ayh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #14
  br label %bb.df

.body350:                                         ; preds = %bb.ab, %thread-pre-split.i.i.i.i.i.i.i353
  %i.ayi = landingpad { ptr, i32 }
          cleanup
  %i.ayj = load ptr, ptr %73, align 8, !tbaa !59
  call void @free(ptr noundef %i.ayj) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #14
  br label %bb.de

bb.da:                                            ; preds = %.invoke
  %i.ayk = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.db:                                            ; preds = %.thread2778
  %i.ayl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #14
  br label %.body403

bb.dc:                                            ; preds = %bb.ct
  %i.aym = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #14
  br label %.body403

bb.dd:                                            ; preds = %bb.cu
  %i.ayn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #14
  br label %.body403

.body403:                                         ; preds = %bb.db, %bb.dc, %bb.dd, %bb.ai
  %.pn300.pn.pn = phi { ptr, i32 } [ %i.yp, %bb.ai ], [ %i.ayn, %bb.dd ], [ %i.ayl, %bb.db ], [ %i.aym, %bb.dc ]
  %i.ayo = load ptr, ptr %75, align 8, !tbaa !59
  call void @free(ptr noundef %i.ayo) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #14
  call void @free(ptr noundef %.0.i.i2740) #14
  br label %bb.de

bb.de:                                            ; preds = %bb.da, %.body403, %.body350
  %.pn300.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ayi, %.body350 ], [ %.pn300.pn.pn, %.body403 ], [ %i.ayk, %bb.da ]
  %i.ayp = load ptr, ptr %71, align 8, !tbaa !59
  call void @free(ptr noundef %i.ayp) #14
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.cz
  %.pn300.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn300.pn.pn.pn.pn.pn, %bb.de ], [ %i.ayh, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #14
  br label %.body

.body:                                            ; preds = %bb.x, %bb.df
  %.pn300.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn300.pn.pn.pn.pn.pn.pn, %bb.df ], [ %i.ia, %bb.x ]
  %i.ayq = load ptr, ptr %70, align 8, !tbaa !59
  call void @free(ptr noundef %i.ayq) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #14
  br label %bb.ej

bb.dg:                                            ; preds = %bb.b
  %sext = mul i64 %i.b, 38654705664
  %i.ayr = ashr exact i64 %sext, 32               ; 3 uses
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %61, i64 noundef %i.ayr, i64 noundef 1)
          to label %bb.dh unwind label %bb.ef

bb.dh:                                            ; preds = %bb.dg
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %62, i64 noundef %i.ayr, i64 noundef 1)
          to label %bb.di unwind label %bb.ef

bb.di:                                            ; preds = %bb.dh
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %63, i64 noundef %i.ayr, i64 noundef 1)
          to label %bb.dj unwind label %bb.ef

bb.dj:                                            ; preds = %bb.di
  %i.ays = load ptr, ptr %1, align 8, !tbaa !20, !noalias !444
  %i.ayt = load i64, ptr %i.a, align 8, !tbaa !21, !noalias !444 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #14, !noalias !445
  call void @llvm.experimental.noalias.scope.decl(metadata !446)
  %i.ayu = load ptr, ptr %61, align 8, !tbaa !26, !noalias !447 ; 2 uses
  %i.ayv = getelementptr inbounds nuw i8, ptr %61, i64 8
  %i.ayw = load i64, ptr %i.ayv, align 8, !tbaa !27, !noalias !447 ; 2 uses
  store ptr %i.ayu, ptr %22, align 8, !tbaa !30, !alias.scope !446, !noalias !445
  %i.ayx = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 %i.ayt, ptr %i.ayx, align 8, !tbaa !31, !alias.scope !446, !noalias !445
  %i.ayy = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i64 1, ptr %i.ayy, align 8, !tbaa !31, !alias.scope !446, !noalias !445
  %i.ayz = getelementptr inbounds nuw i8, ptr %22, i64 24
  store ptr %61, ptr %i.ayz, align 8, !tbaa !33, !alias.scope !446, !noalias !445
  %i.aza = getelementptr inbounds nuw i8, ptr %22, i64 32
  %i.azb = getelementptr inbounds nuw i8, ptr %22, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aza, i8 0, i64 16, i1 false), !noalias !445
  store i64 %i.ayw, ptr %i.azb, align 8, !tbaa !36, !alias.scope !446, !noalias !445
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #14, !noalias !445
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #14, !noalias !445
  store ptr %i.ays, ptr %18, align 8, !tbaa !39, !noalias !445
  %i.azc = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 %i.ayt, ptr %i.azc, align 8, !tbaa !31, !noalias !445
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #14, !noalias !445
  store ptr %i.ayu, ptr %19, align 8, !tbaa !41, !noalias !445
  %i.azd = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i64 %i.ayw, ptr %i.azd, align 8, !tbaa !31, !noalias !445
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #14, !noalias !445
  store ptr %19, ptr %20, align 8, !tbaa !43, !noalias !445
  %i.aze = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %18, ptr %i.aze, align 8, !tbaa !404, !noalias !445
  %i.azf = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr %21, ptr %i.azf, align 8, !tbaa !46, !noalias !445
  %i.azg = getelementptr inbounds nuw i8, ptr %20, i64 24
  store ptr %22, ptr %i.azg, align 8, !tbaa !48, !noalias !445
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS4_IKNS5_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSF_(ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %bb.dk unwind label %bb.ef

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #14, !noalias !445
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #14, !noalias !445
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #14, !noalias !445
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #14, !noalias !445
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #14, !noalias !445
  %i.azh = load ptr, ptr %1, align 8, !tbaa !20, !noalias !448 ; 2 uses
  %i.azi = ptrtoaddr ptr %i.azh to i64            ; 2 uses
  %i.azj = load i64, ptr %i.a, align 8, !tbaa !21, !noalias !448 ; 13 uses
  %i.azk = getelementptr inbounds [4 x i8], ptr %i.azh, i64 %i.azj ; 13 uses
  %i.azl = load ptr, ptr %61, align 8, !tbaa !26, !noalias !449 ; 2 uses
  %i.azm = ptrtoaddr ptr %i.azl to i64            ; 2 uses
  %i.azn = getelementptr inbounds [4 x i8], ptr %i.azl, i64 %i.ayt ; 14 uses
  %i.azo = ptrtoint ptr %i.azn to i64             ; 2 uses
  %i.azp = and i64 %i.azo, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.azp, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.dl, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i

bb.dl:                                            ; preds = %bb.dk
  %i.azq = lshr exact i64 %i.azo, 2
  %i.azr = sub nsw i64 0, %i.azq
  %i.azs = and i64 %i.azr, 3
  %i.azt = call i64 @llvm.smin.i64(i64 %i.azs, i64 %i.azj)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dl, %bb.dk
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.azt, %bb.dl ], [ %i.azj, %bb.dk ] ; 11 uses
  %i.azu = sub nsw i64 %i.azj, %.0.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.azv = sdiv i64 %i.azu, 4
  %i.azw = shl nsw i64 %i.azv, 2                  ; 2 uses
  %i.azx = add nsw i64 %i.azw, %.0.i.i.i.i.i.i.i.i.i.i.i.i ; 6 uses
  %i.azy = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.azy, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 20
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader3793, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.azz = shl nsw i64 %i.ayt, 2
  %i.baa = shl i64 %i.azj, 2
  %i.bab = add i64 %i.azz, %i.azm
  %i.bac = add i64 %i.baa, %i.azi
  %i.bad = sub i64 %i.bac, %i.bab
  %diff.check = icmp ugt i64 %i.bad, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader3793, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bae = getelementptr inbounds nuw [4 x i8], ptr %i.azn, i64 %index ; 2 uses
  %i.baf = getelementptr inbounds nuw [4 x i8], ptr %i.azk, i64 %index ; 2 uses
  %i.bag = getelementptr inbounds nuw i8, ptr %i.baf, i64 16
  %wide.load = load <4 x i32>, ptr %i.baf, align 4, !tbaa !24
  %wide.load2920 = load <4 x i32>, ptr %i.bag, align 4, !tbaa !24
  %i.bah = getelementptr inbounds nuw i8, ptr %i.bae, i64 16
  store <4 x i32> %wide.load, ptr %i.bae, align 4, !tbaa !24
  store <4 x i32> %wide.load2920, ptr %i.bah, align 4, !tbaa !24
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bai = icmp eq i64 %index.next, %n.vec
  br i1 %i.bai, label %middle.block, label %vector.body, !llvm.loop !235

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader3793

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader3793:     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader3793, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.bam, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader3793 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader3793 ]
  %i.baj = getelementptr inbounds nuw [4 x i8], ptr %i.azn, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.bak = getelementptr inbounds nuw [4 x i8], ptr %i.azk, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.bal = load i32, ptr %i.bak, align 4, !tbaa !24
  store i32 %i.bal, ptr %i.baj, align 4, !tbaa !24
  %i.bam = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !236

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader3793
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader3793 ], [ %i.bam, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.ban = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bao = icmp ugt i64 %i.ban, -4
  br i1 %i.bao, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bbe, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.bap = getelementptr inbounds nuw [4 x i8], ptr %i.azn, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i
  %i.baq = getelementptr inbounds nuw [4 x i8], ptr %i.azk, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bar = load i32, ptr %i.baq, align 4, !tbaa !24
  store i32 %i.bar, ptr %i.bap, align 4, !tbaa !24
  %i.bas = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bat = getelementptr inbounds nuw [4 x i8], ptr %i.azn, i64 %i.bas
  %i.bau = getelementptr inbounds nuw [4 x i8], ptr %i.azk, i64 %i.bas
  %i.bav = load i32, ptr %i.bau, align 4, !tbaa !24
  store i32 %i.bav, ptr %i.bat, align 4, !tbaa !24
  %i.baw = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.bax = getelementptr inbounds nuw [4 x i8], ptr %i.azn, i64 %i.baw
  %i.bay = getelementptr inbounds nuw [4 x i8], ptr %i.azk, i64 %i.baw
  %i.baz = load i32, ptr %i.bay, align 4, !tbaa !24
  store i32 %i.baz, ptr %i.bax, align 4, !tbaa !24
  %i.bba = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.bbb = getelementptr inbounds nuw [4 x i8], ptr %i.azn, i64 %i.bba
  %i.bbc = getelementptr inbounds nuw [4 x i8], ptr %i.azk, i64 %i.bba
  %i.bbd = load i32, ptr %i.bbc, align 4, !tbaa !24
  store i32 %i.bbd, ptr %i.bbb, align 4, !tbaa !24
  %i.bbe = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.bbe, %.0.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !237

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.bbf = icmp sgt i64 %i.azu, 3
  br i1 %i.bbf, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i493, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i493, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.bbg = icmp slt i64 %i.azx, %i.azj
  br i1 %i.bbg, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader, label %.loopexit2817

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader:       ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.bbh = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, %i.azw
  %i.bbi = sub i64 %i.azj, %i.bbh                 ; 3 uses
  %min.iters.check2924 = icmp ult i64 %i.bbi, 20
  br i1 %min.iters.check2924, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader3792, label %vector.memcheck2925

vector.memcheck2925:                              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.bbj = shl nsw i64 %i.ayt, 2
  %i.bbk = shl i64 %i.azj, 2
  %i.bbl = add i64 %i.bbj, %i.azm
  %i.bbm = add i64 %i.bbk, %i.azi
  %i.bbn = sub i64 %i.bbm, %i.bbl
  %diff.check2926 = icmp ugt i64 %i.bbn, -32
  br i1 %diff.check2926, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader3792, label %vector.ph2927

vector.ph2927:                                    ; preds = %vector.memcheck2925
  %n.vec2928 = and i64 %i.bbi, -8                 ; 3 uses
  %i.bbo = add i64 %i.azx, %n.vec2928
  br label %vector.body2929

vector.body2929:                                  ; preds = %vector.body2929, %vector.ph2927
  %index2930 = phi i64 [ 0, %vector.ph2927 ], [ %index.next2933, %vector.body2929 ] ; 2 uses
  %i.bbp = add i64 %i.azx, %index2930             ; 2 uses
  %i.bbq = getelementptr inbounds [4 x i8], ptr %i.azn, i64 %i.bbp ; 2 uses
  %i.bbr = getelementptr inbounds [4 x i8], ptr %i.azk, i64 %i.bbp ; 2 uses
  %i.bbs = getelementptr inbounds nuw i8, ptr %i.bbr, i64 16
  %wide.load2931 = load <4 x i32>, ptr %i.bbr, align 4, !tbaa !24
  %wide.load2932 = load <4 x i32>, ptr %i.bbs, align 4, !tbaa !24
  %i.bbt = getelementptr inbounds nuw i8, ptr %i.bbq, i64 16
  store <4 x i32> %wide.load2931, ptr %i.bbq, align 4, !tbaa !24
  store <4 x i32> %wide.load2932, ptr %i.bbt, align 4, !tbaa !24
  %index.next2933 = add nuw i64 %index2930, 8     ; 2 uses
  %i.bbu = icmp eq i64 %index.next2933, %n.vec2928
  br i1 %i.bbu, label %middle.block2934, label %vector.body2929, !llvm.loop !238

middle.block2934:                                 ; preds = %vector.body2929
  %cmp.n2935 = icmp eq i64 %i.bbi, %n.vec2928
  br i1 %cmp.n2935, label %.loopexit2817, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader3792

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader3792:   ; preds = %vector.memcheck2925, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block2934
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.azx, %vector.memcheck2925 ], [ %i.azx, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.bbo, %middle.block2934 ] ; 4 uses
  %i.bbv = sub i64 %i.azj, %.05.i18.i.i.i.i.i.i.i.i.i.i.i.ph
  %xtraiter3794 = and i64 %i.bbv, 3               ; 2 uses
  %lcmp.mod3795.not = icmp eq i64 %xtraiter3794, 0
  br i1 %lcmp.mod3795.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol:            ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader3792, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.bbz, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader3792 ] ; 3 uses
  %prol.iter3796 = phi i64 [ %prol.iter3796.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader3792 ]
  %i.bbw = getelementptr inbounds [4 x i8], ptr %i.azn, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.bbx = getelementptr inbounds [4 x i8], ptr %i.azk, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.bby = load i32, ptr %i.bbx, align 4, !tbaa !24
  store i32 %i.bby, ptr %i.bbw, align 4, !tbaa !24
  %i.bbz = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter3796.next = add i64 %prol.iter3796, 1 ; 2 uses
  %prol.iter3796.cmp.not = icmp eq i64 %prol.iter3796.next, %xtraiter3794
  br i1 %prol.iter3796.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !239

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:   ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader3792
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader3792 ], [ %i.bbz, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.bca = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.ph, %i.azj
  %i.bcb = icmp ugt i64 %i.bca, -4
  br i1 %i.bcb, label %.loopexit2817, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bcr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.bcc = getelementptr inbounds [4 x i8], ptr %i.azn, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i
  %i.bcd = getelementptr inbounds [4 x i8], ptr %i.azk, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i
  %i.bce = load i32, ptr %i.bcd, align 4, !tbaa !24
  store i32 %i.bce, ptr %i.bcc, align 4, !tbaa !24
  %i.bcf = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bcg = getelementptr inbounds [4 x i8], ptr %i.azn, i64 %i.bcf
  %i.bch = getelementptr inbounds [4 x i8], ptr %i.azk, i64 %i.bcf
  %i.bci = load i32, ptr %i.bch, align 4, !tbaa !24
  store i32 %i.bci, ptr %i.bcg, align 4, !tbaa !24
  %i.bcj = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.bck = getelementptr inbounds [4 x i8], ptr %i.azn, i64 %i.bcj
  %i.bcl = getelementptr inbounds [4 x i8], ptr %i.azk, i64 %i.bcj
  %i.bcm = load i32, ptr %i.bcl, align 4, !tbaa !24
  store i32 %i.bcm, ptr %i.bck, align 4, !tbaa !24
  %i.bcn = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.bco = getelementptr inbounds [4 x i8], ptr %i.azn, i64 %i.bcn
  %i.bcp = getelementptr inbounds [4 x i8], ptr %i.azk, i64 %i.bcn
  %i.bcq = load i32, ptr %i.bcp, align 4, !tbaa !24
  store i32 %i.bcq, ptr %i.bco, align 4, !tbaa !24
  %i.bcr = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.bcr, %i.azj
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.3, label %.loopexit2817, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !240

.lr.ph.i.i.i.i.i.i.i.i.i.i.i493:                  ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i493
  %.021.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bcv, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i493 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bcs = getelementptr inbounds [4 x i8], ptr %i.azn, i64 %.021.i.i.i.i.i.i.i.i.i.i.i
  %i.bct = getelementptr inbounds [4 x i8], ptr %i.azk, i64 %.021.i.i.i.i.i.i.i.i.i.i.i
  %i.bcu = load <2 x i64>, ptr %i.bct, align 1, !tbaa !22
  store <2 x i64> %i.bcu, ptr %i.bcs, align 16, !tbaa !22
  %i.bcv = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.bcw = icmp slt i64 %i.bcv, %i.azx
  br i1 %i.bcw, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i493, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !241

.loopexit2817:                                    ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i, %middle.block2934, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.bcx = load ptr, ptr %1, align 8, !tbaa !20, !noalias !450 ; 2 uses
  %i.bcy = ptrtoaddr ptr %i.bcx to i64            ; 2 uses
  %i.bcz = load i64, ptr %i.a, align 8, !tbaa !21, !noalias !450 ; 13 uses
  %i.bda = getelementptr inbounds [4 x i8], ptr %i.bcx, i64 %i.bcz ; 13 uses
  %i.bdb = add nsw i64 %i.azj, %i.ayt             ; 4 uses
  %i.bdc = load ptr, ptr %61, align 8, !tbaa !26, !noalias !451 ; 2 uses
  %i.bdd = ptrtoaddr ptr %i.bdc to i64            ; 2 uses
  %i.bde = getelementptr inbounds [4 x i8], ptr %i.bdc, i64 %i.bdb ; 14 uses
  %i.bdf = ptrtoint ptr %i.bde to i64             ; 2 uses
  %i.bdg = and i64 %i.bdf, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i499 = icmp eq i64 %i.bdg, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i499, label %bb.dm, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i500

bb.dm:                                            ; preds = %.loopexit2817
  %i.bdh = lshr exact i64 %i.bdf, 2
  %i.bdi = sub nsw i64 0, %i.bdh
  %i.bdj = and i64 %i.bdi, 3
  %i.bdk = call i64 @llvm.smin.i64(i64 %i.bdj, i64 %i.bcz)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i500

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i500: ; preds = %bb.dm, %.loopexit2817
  %.0.i.i.i.i.i.i.i.i.i.i.i.i501 = phi i64 [ %i.bdk, %bb.dm ], [ %i.bcz, %.loopexit2817 ] ; 11 uses
  %i.bdl = sub nsw i64 %i.bcz, %.0.i.i.i.i.i.i.i.i.i.i.i.i501 ; 2 uses
  %i.bdm = sdiv i64 %i.bdl, 4
  %i.bdn = shl nsw i64 %i.bdm, 2                  ; 2 uses
  %i.bdo = add nsw i64 %i.bdn, %.0.i.i.i.i.i.i.i.i.i.i.i.i501 ; 6 uses
  %i.bdp = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i501, 0
  br i1 %i.bdp, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i502

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.preheader:      ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i500
  %min.iters.check2940 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i501, 20
  br i1 %min.iters.check2940, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.preheader3791, label %vector.memcheck2941

vector.memcheck2941:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.preheader
  %i.bdq = shl nsw i64 %i.bdb, 2
  %i.bdr = shl i64 %i.bcz, 2
  %i.bds = add i64 %i.bdq, %i.bdd
  %i.bdt = add i64 %i.bdr, %i.bcy
  %i.bdu = sub i64 %i.bdt, %i.bds
  %diff.check2942 = icmp ugt i64 %i.bdu, -32
  br i1 %diff.check2942, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.preheader3791, label %vector.ph2943

vector.ph2943:                                    ; preds = %vector.memcheck2941
  %n.vec2944 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i501, 9223372036854775800 ; 3 uses
  br label %vector.body2945

vector.body2945:                                  ; preds = %vector.body2945, %vector.ph2943
  %index2946 = phi i64 [ 0, %vector.ph2943 ], [ %index.next2949, %vector.body2945 ] ; 3 uses
  %i.bdv = getelementptr inbounds nuw [4 x i8], ptr %i.bde, i64 %index2946 ; 2 uses
  %i.bdw = getelementptr inbounds nuw [4 x i8], ptr %i.bda, i64 %index2946 ; 2 uses
  %i.bdx = getelementptr inbounds nuw i8, ptr %i.bdw, i64 16
  %wide.load2947 = load <4 x i32>, ptr %i.bdw, align 4, !tbaa !24
  %wide.load2948 = load <4 x i32>, ptr %i.bdx, align 4, !tbaa !24
  %i.bdy = getelementptr inbounds nuw i8, ptr %i.bdv, i64 16
  store <4 x i32> %wide.load2947, ptr %i.bdv, align 4, !tbaa !24
  store <4 x i32> %wide.load2948, ptr %i.bdy, align 4, !tbaa !24
  %index.next2949 = add nuw i64 %index2946, 8     ; 2 uses
  %i.bdz = icmp eq i64 %index.next2949, %n.vec2944
  br i1 %i.bdz, label %middle.block2950, label %vector.body2945, !llvm.loop !246

middle.block2950:                                 ; preds = %vector.body2945
  %cmp.n2951 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i501, %n.vec2944
  br i1 %cmp.n2951, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i502, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.preheader3791

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.preheader3791:  ; preds = %vector.memcheck2941, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.preheader, %middle.block2950
  %.05.i.i.i.i.i.i.i.i.i.i.i.i510.ph = phi i64 [ 0, %vector.memcheck2941 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.preheader ], [ %n.vec2944, %middle.block2950 ] ; 3 uses
  %xtraiter3797 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i501, 3 ; 2 uses
  %lcmp.mod3798.not = icmp eq i64 %xtraiter3797, 0
  br i1 %lcmp.mod3798.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.prol:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.preheader3791, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i510.prol = phi i64 [ %i.bed, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i510.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.preheader3791 ] ; 3 uses
  %prol.iter3799 = phi i64 [ %prol.iter3799.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.preheader3791 ]
  %i.bea = getelementptr inbounds nuw [4 x i8], ptr %i.bde, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i510.prol
  %i.beb = getelementptr inbounds nuw [4 x i8], ptr %i.bda, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i510.prol
  %i.bec = load i32, ptr %i.beb, align 4, !tbaa !24
  store i32 %i.bec, ptr %i.bea, align 4, !tbaa !24
  %i.bed = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i510.prol, 1 ; 2 uses
  %prol.iter3799.next = add i64 %prol.iter3799, 1 ; 2 uses
  %prol.iter3799.cmp.not = icmp eq i64 %prol.iter3799.next, %xtraiter3797
  br i1 %prol.iter3799.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.prol, !llvm.loop !247

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.prol.loopexit:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.preheader3791
  %.05.i.i.i.i.i.i.i.i.i.i.i.i510.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i510.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.preheader3791 ], [ %i.bed, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.prol ]
  %i.bee = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i510.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i501
  %i.bef = icmp ugt i64 %i.bee, -4
  br i1 %i.bef, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i502, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509
  %.05.i.i.i.i.i.i.i.i.i.i.i.i510 = phi i64 [ %i.bev, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i510.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.prol.loopexit ] ; 6 uses
  %i.beg = getelementptr inbounds nuw [4 x i8], ptr %i.bde, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i510
  %i.beh = getelementptr inbounds nuw [4 x i8], ptr %i.bda, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i510
  %i.bei = load i32, ptr %i.beh, align 4, !tbaa !24
  store i32 %i.bei, ptr %i.beg, align 4, !tbaa !24
  %i.bej = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i510, 1 ; 2 uses
  %i.bek = getelementptr inbounds nuw [4 x i8], ptr %i.bde, i64 %i.bej
  %i.bel = getelementptr inbounds nuw [4 x i8], ptr %i.bda, i64 %i.bej
  %i.bem = load i32, ptr %i.bel, align 4, !tbaa !24
  store i32 %i.bem, ptr %i.bek, align 4, !tbaa !24
  %i.ben = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i510, 2 ; 2 uses
  %i.beo = getelementptr inbounds nuw [4 x i8], ptr %i.bde, i64 %i.ben
  %i.bep = getelementptr inbounds nuw [4 x i8], ptr %i.bda, i64 %i.ben
  %i.beq = load i32, ptr %i.bep, align 4, !tbaa !24
  store i32 %i.beq, ptr %i.beo, align 4, !tbaa !24
  %i.ber = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i510, 3 ; 2 uses
  %i.bes = getelementptr inbounds nuw [4 x i8], ptr %i.bde, i64 %i.ber
  %i.bet = getelementptr inbounds nuw [4 x i8], ptr %i.bda, i64 %i.ber
  %i.beu = load i32, ptr %i.bet, align 4, !tbaa !24
  store i32 %i.beu, ptr %i.bes, align 4, !tbaa !24
  %i.bev = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i510, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i511.3 = icmp eq i64 %i.bev, %.0.i.i.i.i.i.i.i.i.i.i.i.i501
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i511.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i502, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509, !llvm.loop !248

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i502: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509, %middle.block2950, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i500
  %i.bew = icmp sgt i64 %i.bdl, 3
  br i1 %i.bew, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i507, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i503

._crit_edge.i.i.i.i.i.i.i.i.i.i.i503:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i507, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i502
  %i.bex = icmp slt i64 %i.bdo, %i.bcz
  br i1 %i.bex, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.preheader, label %.loopexit2816

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.preheader:    ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i503
  %i.bey = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i501, %i.bdn
  %i.bez = sub i64 %i.bcz, %i.bey                 ; 3 uses
  %min.iters.check2956 = icmp ult i64 %i.bez, 20
  br i1 %min.iters.check2956, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.preheader3790, label %vector.memcheck2957

vector.memcheck2957:                              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.preheader
  %i.bfa = shl nsw i64 %i.bdb, 2
  %i.bfb = shl i64 %i.bcz, 2
  %i.bfc = add i64 %i.bfa, %i.bdd
  %i.bfd = add i64 %i.bfb, %i.bcy
  %i.bfe = sub i64 %i.bfd, %i.bfc
  %diff.check2958 = icmp ugt i64 %i.bfe, -32
  br i1 %diff.check2958, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.preheader3790, label %vector.ph2959

vector.ph2959:                                    ; preds = %vector.memcheck2957
  %n.vec2960 = and i64 %i.bez, -8                 ; 3 uses
  %i.bff = add i64 %i.bdo, %n.vec2960
  br label %vector.body2961

vector.body2961:                                  ; preds = %vector.body2961, %vector.ph2959
  %index2962 = phi i64 [ 0, %vector.ph2959 ], [ %index.next2965, %vector.body2961 ] ; 2 uses
  %i.bfg = add i64 %i.bdo, %index2962             ; 2 uses
  %i.bfh = getelementptr inbounds [4 x i8], ptr %i.bde, i64 %i.bfg ; 2 uses
  %i.bfi = getelementptr inbounds [4 x i8], ptr %i.bda, i64 %i.bfg ; 2 uses
  %i.bfj = getelementptr inbounds nuw i8, ptr %i.bfi, i64 16
  %wide.load2963 = load <4 x i32>, ptr %i.bfi, align 4, !tbaa !24
  %wide.load2964 = load <4 x i32>, ptr %i.bfj, align 4, !tbaa !24
  %i.bfk = getelementptr inbounds nuw i8, ptr %i.bfh, i64 16
  store <4 x i32> %wide.load2963, ptr %i.bfh, align 4, !tbaa !24
  store <4 x i32> %wide.load2964, ptr %i.bfk, align 4, !tbaa !24
  %index.next2965 = add nuw i64 %index2962, 8     ; 2 uses
  %i.bfl = icmp eq i64 %index.next2965, %n.vec2960
  br i1 %i.bfl, label %middle.block2966, label %vector.body2961, !llvm.loop !249

middle.block2966:                                 ; preds = %vector.body2961
  %cmp.n2967 = icmp eq i64 %i.bez, %n.vec2960
  br i1 %cmp.n2967, label %.loopexit2816, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.preheader3790

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.preheader3790: ; preds = %vector.memcheck2957, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.preheader, %middle.block2966
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i505.ph = phi i64 [ %i.bdo, %vector.memcheck2957 ], [ %i.bdo, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.preheader ], [ %i.bff, %middle.block2966 ] ; 4 uses
  %i.bfm = sub i64 %i.bcz, %.05.i18.i.i.i.i.i.i.i.i.i.i.i505.ph
  %xtraiter3800 = and i64 %i.bfm, 3               ; 2 uses
  %lcmp.mod3801.not = icmp eq i64 %xtraiter3800, 0
  br i1 %lcmp.mod3801.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.prol:         ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.preheader3790, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i505.prol = phi i64 [ %i.bfq, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i505.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.preheader3790 ] ; 3 uses
  %prol.iter3802 = phi i64 [ %prol.iter3802.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.preheader3790 ]
  %i.bfn = getelementptr inbounds [4 x i8], ptr %i.bde, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i505.prol
  %i.bfo = getelementptr inbounds [4 x i8], ptr %i.bda, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i505.prol
  %i.bfp = load i32, ptr %i.bfo, align 4, !tbaa !24
  store i32 %i.bfp, ptr %i.bfn, align 4, !tbaa !24
  %i.bfq = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i505.prol, 1 ; 2 uses
  %prol.iter3802.next = add i64 %prol.iter3802, 1 ; 2 uses
  %prol.iter3802.cmp.not = icmp eq i64 %prol.iter3802.next, %xtraiter3800
  br i1 %prol.iter3802.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.prol, !llvm.loop !250

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.preheader3790
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i505.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i505.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.preheader3790 ], [ %i.bfq, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.prol ]
  %i.bfr = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i505.ph, %i.bcz
  %i.bfs = icmp ugt i64 %i.bfr, -4
  br i1 %i.bfs, label %.loopexit2816, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i505 = phi i64 [ %i.bgi, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i505.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.prol.loopexit ] ; 6 uses
  %i.bft = getelementptr inbounds [4 x i8], ptr %i.bde, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i505
  %i.bfu = getelementptr inbounds [4 x i8], ptr %i.bda, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i505
  %i.bfv = load i32, ptr %i.bfu, align 4, !tbaa !24
  store i32 %i.bfv, ptr %i.bft, align 4, !tbaa !24
  %i.bfw = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i505, 1 ; 2 uses
  %i.bfx = getelementptr inbounds [4 x i8], ptr %i.bde, i64 %i.bfw
  %i.bfy = getelementptr inbounds [4 x i8], ptr %i.bda, i64 %i.bfw
  %i.bfz = load i32, ptr %i.bfy, align 4, !tbaa !24
  store i32 %i.bfz, ptr %i.bfx, align 4, !tbaa !24
  %i.bga = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i505, 2 ; 2 uses
  %i.bgb = getelementptr inbounds [4 x i8], ptr %i.bde, i64 %i.bga
  %i.bgc = getelementptr inbounds [4 x i8], ptr %i.bda, i64 %i.bga
  %i.bgd = load i32, ptr %i.bgc, align 4, !tbaa !24
  store i32 %i.bgd, ptr %i.bgb, align 4, !tbaa !24
  %i.bge = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i505, 3 ; 2 uses
  %i.bgf = getelementptr inbounds [4 x i8], ptr %i.bde, i64 %i.bge
  %i.bgg = getelementptr inbounds [4 x i8], ptr %i.bda, i64 %i.bge
  %i.bgh = load i32, ptr %i.bgg, align 4, !tbaa !24
  store i32 %i.bgh, ptr %i.bgf, align 4, !tbaa !24
  %i.bgi = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i505, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i506.3 = icmp eq i64 %i.bgi, %i.bcz
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i506.3, label %.loopexit2816, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504, !llvm.loop !251

.lr.ph.i.i.i.i.i.i.i.i.i.i.i507:                  ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i502, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i507
  %.021.i.i.i.i.i.i.i.i.i.i.i508 = phi i64 [ %i.bgm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i507 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i501, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i502 ] ; 3 uses
  %i.bgj = getelementptr inbounds [4 x i8], ptr %i.bde, i64 %.021.i.i.i.i.i.i.i.i.i.i.i508
  %i.bgk = getelementptr inbounds [4 x i8], ptr %i.bda, i64 %.021.i.i.i.i.i.i.i.i.i.i.i508
  %i.bgl = load <2 x i64>, ptr %i.bgk, align 1, !tbaa !22
  store <2 x i64> %i.bgl, ptr %i.bgj, align 16, !tbaa !22
  %i.bgm = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i508, 4 ; 2 uses
  %i.bgn = icmp slt i64 %i.bgm, %i.bdo
  br i1 %i.bgn, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i507, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i503, !llvm.loop !241

.loopexit2816:                                    ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504, %middle.block2966, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i503
  %i.bgo = load ptr, ptr %1, align 8, !tbaa !20, !noalias !452 ; 2 uses
  %i.bgp = ptrtoaddr ptr %i.bgo to i64            ; 2 uses
  %i.bgq = load i64, ptr %i.a, align 8, !tbaa !21, !noalias !452 ; 11 uses
  %.idx = shl i64 %i.bgq, 3                       ; 3 uses
  %i.bgr = getelementptr inbounds i8, ptr %i.bgo, i64 %.idx ; 13 uses
  %i.bgs = add nsw i64 %i.bcz, %i.bdb             ; 4 uses
  %i.bgt = load ptr, ptr %61, align 8, !tbaa !26, !noalias !453 ; 2 uses
  %i.bgu = ptrtoaddr ptr %i.bgt to i64            ; 2 uses
  %i.bgv = getelementptr inbounds [4 x i8], ptr %i.bgt, i64 %i.bgs ; 14 uses
  %i.bgw = ptrtoint ptr %i.bgv to i64             ; 2 uses
  %i.bgx = and i64 %i.bgw, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i518 = icmp eq i64 %i.bgx, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i518, label %bb.dn, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i519

bb.dn:                                            ; preds = %.loopexit2816
  %i.bgy = lshr exact i64 %i.bgw, 2
  %i.bgz = sub nsw i64 0, %i.bgy
  %i.bha = and i64 %i.bgz, 3
  %i.bhb = call i64 @llvm.smin.i64(i64 %i.bha, i64 %i.bgq)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i519

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i519: ; preds = %bb.dn, %.loopexit2816
  %.0.i.i.i.i.i.i.i.i.i.i.i.i520 = phi i64 [ %i.bhb, %bb.dn ], [ %i.bgq, %.loopexit2816 ] ; 11 uses
  %i.bhc = sub nsw i64 %i.bgq, %.0.i.i.i.i.i.i.i.i.i.i.i.i520 ; 2 uses
  %i.bhd = sdiv i64 %i.bhc, 4
  %i.bhe = shl nsw i64 %i.bhd, 2                  ; 2 uses
  %i.bhf = add nsw i64 %i.bhe, %.0.i.i.i.i.i.i.i.i.i.i.i.i520 ; 6 uses
  %i.bhg = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i520, 0
  br i1 %i.bhg, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i521

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.preheader:      ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i519
  %min.iters.check2972 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i520, 16
  br i1 %min.iters.check2972, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.preheader3789, label %vector.memcheck2973

vector.memcheck2973:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.preheader
  %i.bhh = shl nsw i64 %i.bgs, 2
  %i.bhi = add i64 %i.bhh, %i.bgu
  %i.bhj = add i64 %.idx, %i.bgp
  %i.bhk = sub i64 %i.bhj, %i.bhi
  %diff.check2974 = icmp ugt i64 %i.bhk, -32
  br i1 %diff.check2974, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.preheader3789, label %vector.ph2975

vector.ph2975:                                    ; preds = %vector.memcheck2973
  %n.vec2976 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i520, 9223372036854775800 ; 3 uses
  br label %vector.body2977

vector.body2977:                                  ; preds = %vector.body2977, %vector.ph2975
  %index2978 = phi i64 [ 0, %vector.ph2975 ], [ %index.next2981, %vector.body2977 ] ; 3 uses
  %i.bhl = getelementptr inbounds nuw [4 x i8], ptr %i.bgv, i64 %index2978 ; 2 uses
  %i.bhm = getelementptr inbounds nuw [4 x i8], ptr %i.bgr, i64 %index2978 ; 2 uses
  %i.bhn = getelementptr inbounds nuw i8, ptr %i.bhm, i64 16
  %wide.load2979 = load <4 x i32>, ptr %i.bhm, align 4, !tbaa !24
  %wide.load2980 = load <4 x i32>, ptr %i.bhn, align 4, !tbaa !24
  %i.bho = getelementptr inbounds nuw i8, ptr %i.bhl, i64 16
  store <4 x i32> %wide.load2979, ptr %i.bhl, align 4, !tbaa !24
  store <4 x i32> %wide.load2980, ptr %i.bho, align 4, !tbaa !24
  %index.next2981 = add nuw i64 %index2978, 8     ; 2 uses
  %i.bhp = icmp eq i64 %index.next2981, %n.vec2976
  br i1 %i.bhp, label %middle.block2982, label %vector.body2977, !llvm.loop !256

middle.block2982:                                 ; preds = %vector.body2977
  %cmp.n2983 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i520, %n.vec2976
  br i1 %cmp.n2983, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i521, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.preheader3789

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.preheader3789:  ; preds = %vector.memcheck2973, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.preheader, %middle.block2982
  %.05.i.i.i.i.i.i.i.i.i.i.i.i529.ph = phi i64 [ 0, %vector.memcheck2973 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.preheader ], [ %n.vec2976, %middle.block2982 ] ; 3 uses
  %xtraiter3803 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i520, 3 ; 2 uses
  %lcmp.mod3804.not = icmp eq i64 %xtraiter3803, 0
  br i1 %lcmp.mod3804.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.prol:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.preheader3789, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i529.prol = phi i64 [ %i.bht, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i529.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.preheader3789 ] ; 3 uses
  %prol.iter3805 = phi i64 [ %prol.iter3805.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.preheader3789 ]
  %i.bhq = getelementptr inbounds nuw [4 x i8], ptr %i.bgv, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i529.prol
  %i.bhr = getelementptr inbounds nuw [4 x i8], ptr %i.bgr, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i529.prol
  %i.bhs = load i32, ptr %i.bhr, align 4, !tbaa !24
  store i32 %i.bhs, ptr %i.bhq, align 4, !tbaa !24
  %i.bht = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i529.prol, 1 ; 2 uses
  %prol.iter3805.next = add i64 %prol.iter3805, 1 ; 2 uses
  %prol.iter3805.cmp.not = icmp eq i64 %prol.iter3805.next, %xtraiter3803
  br i1 %prol.iter3805.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.prol, !llvm.loop !257

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.prol.loopexit:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.preheader3789
  %.05.i.i.i.i.i.i.i.i.i.i.i.i529.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i529.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.preheader3789 ], [ %i.bht, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.prol ]
  %i.bhu = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i529.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i520
  %i.bhv = icmp ugt i64 %i.bhu, -4
  br i1 %i.bhv, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i521, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528
  %.05.i.i.i.i.i.i.i.i.i.i.i.i529 = phi i64 [ %i.bil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i529.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.prol.loopexit ] ; 6 uses
  %i.bhw = getelementptr inbounds nuw [4 x i8], ptr %i.bgv, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i529
  %i.bhx = getelementptr inbounds nuw [4 x i8], ptr %i.bgr, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i529
  %i.bhy = load i32, ptr %i.bhx, align 4, !tbaa !24
  store i32 %i.bhy, ptr %i.bhw, align 4, !tbaa !24
  %i.bhz = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i529, 1 ; 2 uses
  %i.bia = getelementptr inbounds nuw [4 x i8], ptr %i.bgv, i64 %i.bhz
  %i.bib = getelementptr inbounds nuw [4 x i8], ptr %i.bgr, i64 %i.bhz
  %i.bic = load i32, ptr %i.bib, align 4, !tbaa !24
  store i32 %i.bic, ptr %i.bia, align 4, !tbaa !24
  %i.bid = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i529, 2 ; 2 uses
  %i.bie = getelementptr inbounds nuw [4 x i8], ptr %i.bgv, i64 %i.bid
  %i.bif = getelementptr inbounds nuw [4 x i8], ptr %i.bgr, i64 %i.bid
  %i.big = load i32, ptr %i.bif, align 4, !tbaa !24
  store i32 %i.big, ptr %i.bie, align 4, !tbaa !24
  %i.bih = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i529, 3 ; 2 uses
  %i.bii = getelementptr inbounds nuw [4 x i8], ptr %i.bgv, i64 %i.bih
  %i.bij = getelementptr inbounds nuw [4 x i8], ptr %i.bgr, i64 %i.bih
  %i.bik = load i32, ptr %i.bij, align 4, !tbaa !24
  store i32 %i.bik, ptr %i.bii, align 4, !tbaa !24
  %i.bil = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i529, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i530.3 = icmp eq i64 %i.bil, %.0.i.i.i.i.i.i.i.i.i.i.i.i520
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i530.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i521, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528, !llvm.loop !258

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i521: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528, %middle.block2982, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i519
  %i.bim = icmp sgt i64 %i.bhc, 3
  br i1 %i.bim, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i526, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i522

._crit_edge.i.i.i.i.i.i.i.i.i.i.i522:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i526, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i521
  %i.bin = icmp slt i64 %i.bhf, %i.bgq
  br i1 %i.bin, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.preheader, label %.loopexit2815

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.preheader:    ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i522
  %i.bio = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i520, %i.bhe
  %i.bip = sub i64 %i.bgq, %i.bio                 ; 3 uses
  %min.iters.check2988 = icmp ult i64 %i.bip, 16
  br i1 %min.iters.check2988, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.preheader3788, label %vector.memcheck2989

vector.memcheck2989:                              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.preheader
  %i.biq = shl nsw i64 %i.bgs, 2
  %i.bir = add i64 %i.biq, %i.bgu
  %i.bis = add i64 %.idx, %i.bgp
  %i.bit = sub i64 %i.bis, %i.bir
  %diff.check2990 = icmp ugt i64 %i.bit, -32
  br i1 %diff.check2990, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.preheader3788, label %vector.ph2991

vector.ph2991:                                    ; preds = %vector.memcheck2989
  %n.vec2992 = and i64 %i.bip, -8                 ; 3 uses
  %i.biu = add i64 %i.bhf, %n.vec2992
  br label %vector.body2993

vector.body2993:                                  ; preds = %vector.body2993, %vector.ph2991
  %index2994 = phi i64 [ 0, %vector.ph2991 ], [ %index.next2997, %vector.body2993 ] ; 2 uses
  %i.biv = add i64 %i.bhf, %index2994             ; 2 uses
  %i.biw = getelementptr inbounds [4 x i8], ptr %i.bgv, i64 %i.biv ; 2 uses
  %i.bix = getelementptr inbounds [4 x i8], ptr %i.bgr, i64 %i.biv ; 2 uses
  %i.biy = getelementptr inbounds nuw i8, ptr %i.bix, i64 16
  %wide.load2995 = load <4 x i32>, ptr %i.bix, align 4, !tbaa !24
  %wide.load2996 = load <4 x i32>, ptr %i.biy, align 4, !tbaa !24
  %i.biz = getelementptr inbounds nuw i8, ptr %i.biw, i64 16
  store <4 x i32> %wide.load2995, ptr %i.biw, align 4, !tbaa !24
  store <4 x i32> %wide.load2996, ptr %i.biz, align 4, !tbaa !24
  %index.next2997 = add nuw i64 %index2994, 8     ; 2 uses
  %i.bja = icmp eq i64 %index.next2997, %n.vec2992
  br i1 %i.bja, label %middle.block2998, label %vector.body2993, !llvm.loop !259

middle.block2998:                                 ; preds = %vector.body2993
  %cmp.n2999 = icmp eq i64 %i.bip, %n.vec2992
  br i1 %cmp.n2999, label %.loopexit2815, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.preheader3788

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.preheader3788: ; preds = %vector.memcheck2989, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.preheader, %middle.block2998
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i524.ph = phi i64 [ %i.bhf, %vector.memcheck2989 ], [ %i.bhf, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.preheader ], [ %i.biu, %middle.block2998 ] ; 4 uses
  %i.bjb = sub i64 %i.bgq, %.05.i18.i.i.i.i.i.i.i.i.i.i.i524.ph
  %xtraiter3806 = and i64 %i.bjb, 3               ; 2 uses
  %lcmp.mod3807.not = icmp eq i64 %xtraiter3806, 0
  br i1 %lcmp.mod3807.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.prol:         ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.preheader3788, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i524.prol = phi i64 [ %i.bjf, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i524.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.preheader3788 ] ; 3 uses
  %prol.iter3808 = phi i64 [ %prol.iter3808.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.preheader3788 ]
  %i.bjc = getelementptr inbounds [4 x i8], ptr %i.bgv, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i524.prol
  %i.bjd = getelementptr inbounds [4 x i8], ptr %i.bgr, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i524.prol
  %i.bje = load i32, ptr %i.bjd, align 4, !tbaa !24
  store i32 %i.bje, ptr %i.bjc, align 4, !tbaa !24
  %i.bjf = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i524.prol, 1 ; 2 uses
  %prol.iter3808.next = add i64 %prol.iter3808, 1 ; 2 uses
  %prol.iter3808.cmp.not = icmp eq i64 %prol.iter3808.next, %xtraiter3806
  br i1 %prol.iter3808.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.prol, !llvm.loop !260

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.preheader3788
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i524.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i524.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.preheader3788 ], [ %i.bjf, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.prol ]
  %i.bjg = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i524.ph, %i.bgq
  %i.bjh = icmp ugt i64 %i.bjg, -4
  br i1 %i.bjh, label %.loopexit2815, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i524 = phi i64 [ %i.bjx, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i524.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.prol.loopexit ] ; 6 uses
  %i.bji = getelementptr inbounds [4 x i8], ptr %i.bgv, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i524
  %i.bjj = getelementptr inbounds [4 x i8], ptr %i.bgr, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i524
  %i.bjk = load i32, ptr %i.bjj, align 4, !tbaa !24
  store i32 %i.bjk, ptr %i.bji, align 4, !tbaa !24
  %i.bjl = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i524, 1 ; 2 uses
  %i.bjm = getelementptr inbounds [4 x i8], ptr %i.bgv, i64 %i.bjl
  %i.bjn = getelementptr inbounds [4 x i8], ptr %i.bgr, i64 %i.bjl
  %i.bjo = load i32, ptr %i.bjn, align 4, !tbaa !24
  store i32 %i.bjo, ptr %i.bjm, align 4, !tbaa !24
  %i.bjp = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i524, 2 ; 2 uses
  %i.bjq = getelementptr inbounds [4 x i8], ptr %i.bgv, i64 %i.bjp
  %i.bjr = getelementptr inbounds [4 x i8], ptr %i.bgr, i64 %i.bjp
  %i.bjs = load i32, ptr %i.bjr, align 4, !tbaa !24
  store i32 %i.bjs, ptr %i.bjq, align 4, !tbaa !24
  %i.bjt = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i524, 3 ; 2 uses
  %i.bju = getelementptr inbounds [4 x i8], ptr %i.bgv, i64 %i.bjt
  %i.bjv = getelementptr inbounds [4 x i8], ptr %i.bgr, i64 %i.bjt
  %i.bjw = load i32, ptr %i.bjv, align 4, !tbaa !24
  store i32 %i.bjw, ptr %i.bju, align 4, !tbaa !24
  %i.bjx = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i524, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i525.3 = icmp eq i64 %i.bjx, %i.bgq
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i525.3, label %.loopexit2815, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523, !llvm.loop !261

.lr.ph.i.i.i.i.i.i.i.i.i.i.i526:                  ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i521, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i526
  %.021.i.i.i.i.i.i.i.i.i.i.i527 = phi i64 [ %i.bkb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i526 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i520, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i521 ] ; 3 uses
  %i.bjy = getelementptr inbounds [4 x i8], ptr %i.bgv, i64 %.021.i.i.i.i.i.i.i.i.i.i.i527
  %i.bjz = getelementptr inbounds [4 x i8], ptr %i.bgr, i64 %.021.i.i.i.i.i.i.i.i.i.i.i527
  %i.bka = load <2 x i64>, ptr %i.bjz, align 1, !tbaa !22
  store <2 x i64> %i.bka, ptr %i.bjy, align 16, !tbaa !22
  %i.bkb = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i527, 4 ; 2 uses
  %i.bkc = icmp slt i64 %i.bkb, %i.bhf
  br i1 %i.bkc, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i526, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i522, !llvm.loop !241

.loopexit2815:                                    ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523, %middle.block2998, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i522
  %i.bkd = load ptr, ptr %1, align 8, !tbaa !20, !noalias !454 ; 2 uses
  %i.bke = ptrtoaddr ptr %i.bkd to i64            ; 2 uses
  %i.bkf = load i64, ptr %i.a, align 8, !tbaa !21, !noalias !454 ; 11 uses
  %.idx2779 = shl i64 %i.bkf, 3                   ; 3 uses
  %i.bkg = getelementptr inbounds i8, ptr %i.bkd, i64 %.idx2779 ; 13 uses
  %i.bkh = add nsw i64 %i.bgq, %i.bgs             ; 4 uses
  %i.bki = load ptr, ptr %61, align 8, !tbaa !26, !noalias !455 ; 2 uses
  %i.bkj = ptrtoaddr ptr %i.bki to i64            ; 2 uses
  %i.bkk = getelementptr inbounds [4 x i8], ptr %i.bki, i64 %i.bkh ; 14 uses
  %i.bkl = ptrtoint ptr %i.bkk to i64             ; 2 uses
  %i.bkm = and i64 %i.bkl, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i537 = icmp eq i64 %i.bkm, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i537, label %bb.do, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i538

bb.do:                                            ; preds = %.loopexit2815
  %i.bkn = lshr exact i64 %i.bkl, 2
  %i.bko = sub nsw i64 0, %i.bkn
  %i.bkp = and i64 %i.bko, 3
  %i.bkq = call i64 @llvm.smin.i64(i64 %i.bkp, i64 %i.bkf)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i538

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i538: ; preds = %bb.do, %.loopexit2815
  %.0.i.i.i.i.i.i.i.i.i.i.i.i539 = phi i64 [ %i.bkq, %bb.do ], [ %i.bkf, %.loopexit2815 ] ; 11 uses
  %i.bkr = sub nsw i64 %i.bkf, %.0.i.i.i.i.i.i.i.i.i.i.i.i539 ; 2 uses
  %i.bks = sdiv i64 %i.bkr, 4
  %i.bkt = shl nsw i64 %i.bks, 2                  ; 2 uses
  %i.bku = add nsw i64 %i.bkt, %.0.i.i.i.i.i.i.i.i.i.i.i.i539 ; 6 uses
  %i.bkv = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i539, 0
  br i1 %i.bkv, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i540

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.preheader:      ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i538
  %min.iters.check3004 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i539, 16
  br i1 %min.iters.check3004, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.preheader3787, label %vector.memcheck3005

vector.memcheck3005:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.preheader
  %i.bkw = shl nsw i64 %i.bkh, 2
  %i.bkx = add i64 %i.bkw, %i.bkj
  %i.bky = add i64 %.idx2779, %i.bke
  %i.bkz = sub i64 %i.bky, %i.bkx
  %diff.check3006 = icmp ugt i64 %i.bkz, -32
  br i1 %diff.check3006, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.preheader3787, label %vector.ph3007

vector.ph3007:                                    ; preds = %vector.memcheck3005
  %n.vec3008 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i539, 9223372036854775800 ; 3 uses
  br label %vector.body3009

vector.body3009:                                  ; preds = %vector.body3009, %vector.ph3007
  %index3010 = phi i64 [ 0, %vector.ph3007 ], [ %index.next3013, %vector.body3009 ] ; 3 uses
  %i.bla = getelementptr inbounds nuw [4 x i8], ptr %i.bkk, i64 %index3010 ; 2 uses
  %i.blb = getelementptr inbounds nuw [4 x i8], ptr %i.bkg, i64 %index3010 ; 2 uses
  %i.blc = getelementptr inbounds nuw i8, ptr %i.blb, i64 16
  %wide.load3011 = load <4 x i32>, ptr %i.blb, align 4, !tbaa !24
  %wide.load3012 = load <4 x i32>, ptr %i.blc, align 4, !tbaa !24
  %i.bld = getelementptr inbounds nuw i8, ptr %i.bla, i64 16
  store <4 x i32> %wide.load3011, ptr %i.bla, align 4, !tbaa !24
  store <4 x i32> %wide.load3012, ptr %i.bld, align 4, !tbaa !24
  %index.next3013 = add nuw i64 %index3010, 8     ; 2 uses
  %i.ble = icmp eq i64 %index.next3013, %n.vec3008
  br i1 %i.ble, label %middle.block3014, label %vector.body3009, !llvm.loop !266

middle.block3014:                                 ; preds = %vector.body3009
  %cmp.n3015 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i539, %n.vec3008
  br i1 %cmp.n3015, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i540, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.preheader3787

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.preheader3787:  ; preds = %vector.memcheck3005, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.preheader, %middle.block3014
  %.05.i.i.i.i.i.i.i.i.i.i.i.i548.ph = phi i64 [ 0, %vector.memcheck3005 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.preheader ], [ %n.vec3008, %middle.block3014 ] ; 3 uses
  %xtraiter3809 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i539, 3 ; 2 uses
  %lcmp.mod3810.not = icmp eq i64 %xtraiter3809, 0
  br i1 %lcmp.mod3810.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.prol:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.preheader3787, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i548.prol = phi i64 [ %i.bli, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i548.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.preheader3787 ] ; 3 uses
  %prol.iter3811 = phi i64 [ %prol.iter3811.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.preheader3787 ]
  %i.blf = getelementptr inbounds nuw [4 x i8], ptr %i.bkk, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i548.prol
  %i.blg = getelementptr inbounds nuw [4 x i8], ptr %i.bkg, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i548.prol
  %i.blh = load i32, ptr %i.blg, align 4, !tbaa !24
  store i32 %i.blh, ptr %i.blf, align 4, !tbaa !24
  %i.bli = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i548.prol, 1 ; 2 uses
  %prol.iter3811.next = add i64 %prol.iter3811, 1 ; 2 uses
  %prol.iter3811.cmp.not = icmp eq i64 %prol.iter3811.next, %xtraiter3809
  br i1 %prol.iter3811.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.prol, !llvm.loop !267

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.prol.loopexit:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.preheader3787
  %.05.i.i.i.i.i.i.i.i.i.i.i.i548.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i548.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.preheader3787 ], [ %i.bli, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.prol ]
  %i.blj = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i548.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i539
  %i.blk = icmp ugt i64 %i.blj, -4
  br i1 %i.blk, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i540, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547
  %.05.i.i.i.i.i.i.i.i.i.i.i.i548 = phi i64 [ %i.bma, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i548.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.prol.loopexit ] ; 6 uses
  %i.bll = getelementptr inbounds nuw [4 x i8], ptr %i.bkk, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i548
  %i.blm = getelementptr inbounds nuw [4 x i8], ptr %i.bkg, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i548
  %i.bln = load i32, ptr %i.blm, align 4, !tbaa !24
  store i32 %i.bln, ptr %i.bll, align 4, !tbaa !24
  %i.blo = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i548, 1 ; 2 uses
  %i.blp = getelementptr inbounds nuw [4 x i8], ptr %i.bkk, i64 %i.blo
  %i.blq = getelementptr inbounds nuw [4 x i8], ptr %i.bkg, i64 %i.blo
  %i.blr = load i32, ptr %i.blq, align 4, !tbaa !24
  store i32 %i.blr, ptr %i.blp, align 4, !tbaa !24
  %i.bls = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i548, 2 ; 2 uses
  %i.blt = getelementptr inbounds nuw [4 x i8], ptr %i.bkk, i64 %i.bls
  %i.blu = getelementptr inbounds nuw [4 x i8], ptr %i.bkg, i64 %i.bls
  %i.blv = load i32, ptr %i.blu, align 4, !tbaa !24
  store i32 %i.blv, ptr %i.blt, align 4, !tbaa !24
  %i.blw = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i548, 3 ; 2 uses
  %i.blx = getelementptr inbounds nuw [4 x i8], ptr %i.bkk, i64 %i.blw
  %i.bly = getelementptr inbounds nuw [4 x i8], ptr %i.bkg, i64 %i.blw
  %i.blz = load i32, ptr %i.bly, align 4, !tbaa !24
  store i32 %i.blz, ptr %i.blx, align 4, !tbaa !24
  %i.bma = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i548, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i549.3 = icmp eq i64 %i.bma, %.0.i.i.i.i.i.i.i.i.i.i.i.i539
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i549.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i540, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547, !llvm.loop !268

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i540: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547, %middle.block3014, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i538
  %i.bmb = icmp sgt i64 %i.bkr, 3
  br i1 %i.bmb, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i545, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i541

._crit_edge.i.i.i.i.i.i.i.i.i.i.i541:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i545, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i540
  %i.bmc = icmp slt i64 %i.bku, %i.bkf
  br i1 %i.bmc, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.preheader, label %.loopexit2814

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.preheader:    ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i541
  %i.bmd = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i539, %i.bkt
  %i.bme = sub i64 %i.bkf, %i.bmd                 ; 3 uses
  %min.iters.check3020 = icmp ult i64 %i.bme, 16
  br i1 %min.iters.check3020, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.preheader3786, label %vector.memcheck3021

vector.memcheck3021:                              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.preheader
  %i.bmf = shl nsw i64 %i.bkh, 2
  %i.bmg = add i64 %i.bmf, %i.bkj
  %i.bmh = add i64 %.idx2779, %i.bke
  %i.bmi = sub i64 %i.bmh, %i.bmg
  %diff.check3022 = icmp ugt i64 %i.bmi, -32
  br i1 %diff.check3022, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.preheader3786, label %vector.ph3023

vector.ph3023:                                    ; preds = %vector.memcheck3021
  %n.vec3024 = and i64 %i.bme, -8                 ; 3 uses
  %i.bmj = add i64 %i.bku, %n.vec3024
  br label %vector.body3025

vector.body3025:                                  ; preds = %vector.body3025, %vector.ph3023
  %index3026 = phi i64 [ 0, %vector.ph3023 ], [ %index.next3029, %vector.body3025 ] ; 2 uses
  %i.bmk = add i64 %i.bku, %index3026             ; 2 uses
  %i.bml = getelementptr inbounds [4 x i8], ptr %i.bkk, i64 %i.bmk ; 2 uses
  %i.bmm = getelementptr inbounds [4 x i8], ptr %i.bkg, i64 %i.bmk ; 2 uses
  %i.bmn = getelementptr inbounds nuw i8, ptr %i.bmm, i64 16
  %wide.load3027 = load <4 x i32>, ptr %i.bmm, align 4, !tbaa !24
  %wide.load3028 = load <4 x i32>, ptr %i.bmn, align 4, !tbaa !24
  %i.bmo = getelementptr inbounds nuw i8, ptr %i.bml, i64 16
  store <4 x i32> %wide.load3027, ptr %i.bml, align 4, !tbaa !24
  store <4 x i32> %wide.load3028, ptr %i.bmo, align 4, !tbaa !24
  %index.next3029 = add nuw i64 %index3026, 8     ; 2 uses
  %i.bmp = icmp eq i64 %index.next3029, %n.vec3024
  br i1 %i.bmp, label %middle.block3030, label %vector.body3025, !llvm.loop !269

middle.block3030:                                 ; preds = %vector.body3025
  %cmp.n3031 = icmp eq i64 %i.bme, %n.vec3024
  br i1 %cmp.n3031, label %.loopexit2814, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.preheader3786

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.preheader3786: ; preds = %vector.memcheck3021, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.preheader, %middle.block3030
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i543.ph = phi i64 [ %i.bku, %vector.memcheck3021 ], [ %i.bku, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.preheader ], [ %i.bmj, %middle.block3030 ] ; 4 uses
  %i.bmq = sub i64 %i.bkf, %.05.i18.i.i.i.i.i.i.i.i.i.i.i543.ph
  %xtraiter3812 = and i64 %i.bmq, 3               ; 2 uses
  %lcmp.mod3813.not = icmp eq i64 %xtraiter3812, 0
  br i1 %lcmp.mod3813.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.prol:         ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.preheader3786, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i543.prol = phi i64 [ %i.bmu, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i543.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.preheader3786 ] ; 3 uses
  %prol.iter3814 = phi i64 [ %prol.iter3814.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.preheader3786 ]
  %i.bmr = getelementptr inbounds [4 x i8], ptr %i.bkk, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i543.prol
  %i.bms = getelementptr inbounds [4 x i8], ptr %i.bkg, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i543.prol
  %i.bmt = load i32, ptr %i.bms, align 4, !tbaa !24
  store i32 %i.bmt, ptr %i.bmr, align 4, !tbaa !24
  %i.bmu = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i543.prol, 1 ; 2 uses
  %prol.iter3814.next = add i64 %prol.iter3814, 1 ; 2 uses
  %prol.iter3814.cmp.not = icmp eq i64 %prol.iter3814.next, %xtraiter3812
  br i1 %prol.iter3814.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.prol, !llvm.loop !270

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.preheader3786
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i543.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i543.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.preheader3786 ], [ %i.bmu, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.prol ]
  %i.bmv = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i543.ph, %i.bkf
  %i.bmw = icmp ugt i64 %i.bmv, -4
  br i1 %i.bmw, label %.loopexit2814, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i543 = phi i64 [ %i.bnm, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i543.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.prol.loopexit ] ; 6 uses
  %i.bmx = getelementptr inbounds [4 x i8], ptr %i.bkk, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i543
  %i.bmy = getelementptr inbounds [4 x i8], ptr %i.bkg, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i543
  %i.bmz = load i32, ptr %i.bmy, align 4, !tbaa !24
  store i32 %i.bmz, ptr %i.bmx, align 4, !tbaa !24
  %i.bna = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i543, 1 ; 2 uses
  %i.bnb = getelementptr inbounds [4 x i8], ptr %i.bkk, i64 %i.bna
  %i.bnc = getelementptr inbounds [4 x i8], ptr %i.bkg, i64 %i.bna
  %i.bnd = load i32, ptr %i.bnc, align 4, !tbaa !24
  store i32 %i.bnd, ptr %i.bnb, align 4, !tbaa !24
  %i.bne = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i543, 2 ; 2 uses
  %i.bnf = getelementptr inbounds [4 x i8], ptr %i.bkk, i64 %i.bne
  %i.bng = getelementptr inbounds [4 x i8], ptr %i.bkg, i64 %i.bne
  %i.bnh = load i32, ptr %i.bng, align 4, !tbaa !24
  store i32 %i.bnh, ptr %i.bnf, align 4, !tbaa !24
  %i.bni = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i543, 3 ; 2 uses
  %i.bnj = getelementptr inbounds [4 x i8], ptr %i.bkk, i64 %i.bni
  %i.bnk = getelementptr inbounds [4 x i8], ptr %i.bkg, i64 %i.bni
  %i.bnl = load i32, ptr %i.bnk, align 4, !tbaa !24
  store i32 %i.bnl, ptr %i.bnj, align 4, !tbaa !24
  %i.bnm = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i543, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i544.3 = icmp eq i64 %i.bnm, %i.bkf
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i544.3, label %.loopexit2814, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542, !llvm.loop !271

.lr.ph.i.i.i.i.i.i.i.i.i.i.i545:                  ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i540, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i545
  %.021.i.i.i.i.i.i.i.i.i.i.i546 = phi i64 [ %i.bnq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i545 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i539, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i540 ] ; 3 uses
  %i.bnn = getelementptr inbounds [4 x i8], ptr %i.bkk, i64 %.021.i.i.i.i.i.i.i.i.i.i.i546
  %i.bno = getelementptr inbounds [4 x i8], ptr %i.bkg, i64 %.021.i.i.i.i.i.i.i.i.i.i.i546
  %i.bnp = load <2 x i64>, ptr %i.bno, align 1, !tbaa !22
  store <2 x i64> %i.bnp, ptr %i.bnn, align 16, !tbaa !22
  %i.bnq = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i546, 4 ; 2 uses
  %i.bnr = icmp slt i64 %i.bnq, %i.bku
  br i1 %i.bnr, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i545, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i541, !llvm.loop !241

.loopexit2814:                                    ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542, %middle.block3030, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i541
  %i.bns = load ptr, ptr %1, align 8, !tbaa !20, !noalias !456 ; 14 uses
  %i.bnt = ptrtoaddr ptr %i.bns to i64            ; 2 uses
  %i.bnu = load i64, ptr %i.a, align 8, !tbaa !21, !noalias !456 ; 10 uses
  %i.bnv = add nsw i64 %i.bkf, %i.bkh             ; 4 uses
  %i.bnw = load ptr, ptr %61, align 8, !tbaa !26, !noalias !457 ; 2 uses
  %i.bnx = ptrtoaddr ptr %i.bnw to i64            ; 2 uses
  %i.bny = getelementptr inbounds [4 x i8], ptr %i.bnw, i64 %i.bnv ; 14 uses
  %i.bnz = ptrtoint ptr %i.bny to i64             ; 2 uses
  %i.boa = and i64 %i.bnz, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i556 = icmp eq i64 %i.boa, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i556, label %bb.dp, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i557

bb.dp:                                            ; preds = %.loopexit2814
  %i.bob = lshr exact i64 %i.bnz, 2
  %i.boc = sub nsw i64 0, %i.bob
  %i.bod = and i64 %i.boc, 3
  %i.boe = call i64 @llvm.smin.i64(i64 %i.bod, i64 %i.bnu)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i557

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i557: ; preds = %bb.dp, %.loopexit2814
  %.0.i.i.i.i.i.i.i.i.i.i.i.i558 = phi i64 [ %i.boe, %bb.dp ], [ %i.bnu, %.loopexit2814 ] ; 11 uses
  %i.bof = sub nsw i64 %i.bnu, %.0.i.i.i.i.i.i.i.i.i.i.i.i558 ; 2 uses
  %i.bog = sdiv i64 %i.bof, 4
  %i.boh = shl nsw i64 %i.bog, 2                  ; 2 uses
  %i.boi = add nsw i64 %i.boh, %.0.i.i.i.i.i.i.i.i.i.i.i.i558 ; 6 uses
  %i.boj = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i558, 0
  br i1 %i.boj, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i559

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.preheader:      ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i557
  %min.iters.check3036 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i558, 16
  br i1 %min.iters.check3036, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.preheader3785, label %vector.memcheck3037

vector.memcheck3037:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.preheader
  %i.bok = shl nsw i64 %i.bnv, 2
  %i.bol = add i64 %i.bok, %i.bnx
  %i.bom = sub i64 %i.bnt, %i.bol
  %diff.check3038 = icmp ugt i64 %i.bom, -32
  br i1 %diff.check3038, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.preheader3785, label %vector.ph3039

vector.ph3039:                                    ; preds = %vector.memcheck3037
  %n.vec3040 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i558, 9223372036854775800 ; 3 uses
  br label %vector.body3041

vector.body3041:                                  ; preds = %vector.body3041, %vector.ph3039
  %index3042 = phi i64 [ 0, %vector.ph3039 ], [ %index.next3045, %vector.body3041 ] ; 3 uses
  %i.bon = getelementptr inbounds nuw [4 x i8], ptr %i.bny, i64 %index3042 ; 2 uses
  %i.boo = getelementptr inbounds nuw [4 x i8], ptr %i.bns, i64 %index3042 ; 2 uses
  %i.bop = getelementptr inbounds nuw i8, ptr %i.boo, i64 16
  %wide.load3043 = load <4 x i32>, ptr %i.boo, align 4, !tbaa !24
  %wide.load3044 = load <4 x i32>, ptr %i.bop, align 4, !tbaa !24
  %i.boq = getelementptr inbounds nuw i8, ptr %i.bon, i64 16
  store <4 x i32> %wide.load3043, ptr %i.bon, align 4, !tbaa !24
  store <4 x i32> %wide.load3044, ptr %i.boq, align 4, !tbaa !24
  %index.next3045 = add nuw i64 %index3042, 8     ; 2 uses
  %i.bor = icmp eq i64 %index.next3045, %n.vec3040
  br i1 %i.bor, label %middle.block3046, label %vector.body3041, !llvm.loop !276

middle.block3046:                                 ; preds = %vector.body3041
  %cmp.n3047 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i558, %n.vec3040
  br i1 %cmp.n3047, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i559, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.preheader3785

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.preheader3785:  ; preds = %vector.memcheck3037, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.preheader, %middle.block3046
  %.05.i.i.i.i.i.i.i.i.i.i.i.i567.ph = phi i64 [ 0, %vector.memcheck3037 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.preheader ], [ %n.vec3040, %middle.block3046 ] ; 3 uses
  %xtraiter3815 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i558, 3 ; 2 uses
  %lcmp.mod3816.not = icmp eq i64 %xtraiter3815, 0
  br i1 %lcmp.mod3816.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.prol:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.preheader3785, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i567.prol = phi i64 [ %i.bov, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i567.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.preheader3785 ] ; 3 uses
  %prol.iter3817 = phi i64 [ %prol.iter3817.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.preheader3785 ]
  %i.bos = getelementptr inbounds nuw [4 x i8], ptr %i.bny, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i567.prol
  %i.bot = getelementptr inbounds nuw [4 x i8], ptr %i.bns, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i567.prol
  %i.bou = load i32, ptr %i.bot, align 4, !tbaa !24
  store i32 %i.bou, ptr %i.bos, align 4, !tbaa !24
  %i.bov = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i567.prol, 1 ; 2 uses
  %prol.iter3817.next = add i64 %prol.iter3817, 1 ; 2 uses
  %prol.iter3817.cmp.not = icmp eq i64 %prol.iter3817.next, %xtraiter3815
  br i1 %prol.iter3817.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.prol, !llvm.loop !277

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.prol.loopexit:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.preheader3785
  %.05.i.i.i.i.i.i.i.i.i.i.i.i567.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i567.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.preheader3785 ], [ %i.bov, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.prol ]
  %i.bow = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i567.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i558
  %i.box = icmp ugt i64 %i.bow, -4
  br i1 %i.box, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i559, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566
  %.05.i.i.i.i.i.i.i.i.i.i.i.i567 = phi i64 [ %i.bpn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i567.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.prol.loopexit ] ; 6 uses
  %i.boy = getelementptr inbounds nuw [4 x i8], ptr %i.bny, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i567
  %i.boz = getelementptr inbounds nuw [4 x i8], ptr %i.bns, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i567
  %i.bpa = load i32, ptr %i.boz, align 4, !tbaa !24
  store i32 %i.bpa, ptr %i.boy, align 4, !tbaa !24
  %i.bpb = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i567, 1 ; 2 uses
  %i.bpc = getelementptr inbounds nuw [4 x i8], ptr %i.bny, i64 %i.bpb
  %i.bpd = getelementptr inbounds nuw [4 x i8], ptr %i.bns, i64 %i.bpb
  %i.bpe = load i32, ptr %i.bpd, align 4, !tbaa !24
  store i32 %i.bpe, ptr %i.bpc, align 4, !tbaa !24
  %i.bpf = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i567, 2 ; 2 uses
  %i.bpg = getelementptr inbounds nuw [4 x i8], ptr %i.bny, i64 %i.bpf
  %i.bph = getelementptr inbounds nuw [4 x i8], ptr %i.bns, i64 %i.bpf
  %i.bpi = load i32, ptr %i.bph, align 4, !tbaa !24
  store i32 %i.bpi, ptr %i.bpg, align 4, !tbaa !24
  %i.bpj = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i567, 3 ; 2 uses
  %i.bpk = getelementptr inbounds nuw [4 x i8], ptr %i.bny, i64 %i.bpj
  %i.bpl = getelementptr inbounds nuw [4 x i8], ptr %i.bns, i64 %i.bpj
  %i.bpm = load i32, ptr %i.bpl, align 4, !tbaa !24
  store i32 %i.bpm, ptr %i.bpk, align 4, !tbaa !24
  %i.bpn = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i567, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i568.3 = icmp eq i64 %i.bpn, %.0.i.i.i.i.i.i.i.i.i.i.i.i558
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i568.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i559, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566, !llvm.loop !278

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i559: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566, %middle.block3046, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i557
  %i.bpo = icmp sgt i64 %i.bof, 3
  br i1 %i.bpo, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i564, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i560

._crit_edge.i.i.i.i.i.i.i.i.i.i.i560:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i564, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i559
  %i.bpp = icmp slt i64 %i.boi, %i.bnu
  br i1 %i.bpp, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.preheader, label %.loopexit2813

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.preheader:    ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i560
  %i.bpq = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i558, %i.boh
  %i.bpr = sub i64 %i.bnu, %i.bpq                 ; 3 uses
  %min.iters.check3052 = icmp ult i64 %i.bpr, 16
  br i1 %min.iters.check3052, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.preheader3784, label %vector.memcheck3053

vector.memcheck3053:                              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.preheader
  %i.bps = shl nsw i64 %i.bnv, 2
  %i.bpt = add i64 %i.bps, %i.bnx
  %i.bpu = sub i64 %i.bnt, %i.bpt
  %diff.check3054 = icmp ugt i64 %i.bpu, -32
  br i1 %diff.check3054, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.preheader3784, label %vector.ph3055

vector.ph3055:                                    ; preds = %vector.memcheck3053
  %n.vec3056 = and i64 %i.bpr, -8                 ; 3 uses
  %i.bpv = add i64 %i.boi, %n.vec3056
  br label %vector.body3057

vector.body3057:                                  ; preds = %vector.body3057, %vector.ph3055
  %index3058 = phi i64 [ 0, %vector.ph3055 ], [ %index.next3061, %vector.body3057 ] ; 2 uses
  %i.bpw = add i64 %i.boi, %index3058             ; 2 uses
  %i.bpx = getelementptr inbounds [4 x i8], ptr %i.bny, i64 %i.bpw ; 2 uses
  %i.bpy = getelementptr inbounds [4 x i8], ptr %i.bns, i64 %i.bpw ; 2 uses
  %i.bpz = getelementptr inbounds nuw i8, ptr %i.bpy, i64 16
  %wide.load3059 = load <4 x i32>, ptr %i.bpy, align 4, !tbaa !24
  %wide.load3060 = load <4 x i32>, ptr %i.bpz, align 4, !tbaa !24
  %i.bqa = getelementptr inbounds nuw i8, ptr %i.bpx, i64 16
  store <4 x i32> %wide.load3059, ptr %i.bpx, align 4, !tbaa !24
  store <4 x i32> %wide.load3060, ptr %i.bqa, align 4, !tbaa !24
  %index.next3061 = add nuw i64 %index3058, 8     ; 2 uses
  %i.bqb = icmp eq i64 %index.next3061, %n.vec3056
  br i1 %i.bqb, label %middle.block3062, label %vector.body3057, !llvm.loop !279

middle.block3062:                                 ; preds = %vector.body3057
  %cmp.n3063 = icmp eq i64 %i.bpr, %n.vec3056
  br i1 %cmp.n3063, label %.loopexit2813, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.preheader3784

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.preheader3784: ; preds = %vector.memcheck3053, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.preheader, %middle.block3062
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i562.ph = phi i64 [ %i.boi, %vector.memcheck3053 ], [ %i.boi, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.preheader ], [ %i.bpv, %middle.block3062 ] ; 4 uses
  %i.bqc = sub i64 %i.bnu, %.05.i18.i.i.i.i.i.i.i.i.i.i.i562.ph
  %xtraiter3818 = and i64 %i.bqc, 3               ; 2 uses
  %lcmp.mod3819.not = icmp eq i64 %xtraiter3818, 0
  br i1 %lcmp.mod3819.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.prol:         ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.preheader3784, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i562.prol = phi i64 [ %i.bqg, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i562.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.preheader3784 ] ; 3 uses
  %prol.iter3820 = phi i64 [ %prol.iter3820.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.preheader3784 ]
  %i.bqd = getelementptr inbounds [4 x i8], ptr %i.bny, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i562.prol
  %i.bqe = getelementptr inbounds [4 x i8], ptr %i.bns, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i562.prol
  %i.bqf = load i32, ptr %i.bqe, align 4, !tbaa !24
  store i32 %i.bqf, ptr %i.bqd, align 4, !tbaa !24
  %i.bqg = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i562.prol, 1 ; 2 uses
  %prol.iter3820.next = add i64 %prol.iter3820, 1 ; 2 uses
  %prol.iter3820.cmp.not = icmp eq i64 %prol.iter3820.next, %xtraiter3818
  br i1 %prol.iter3820.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.prol, !llvm.loop !280

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.preheader3784
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i562.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i562.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.preheader3784 ], [ %i.bqg, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.prol ]
  %i.bqh = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i562.ph, %i.bnu
  %i.bqi = icmp ugt i64 %i.bqh, -4
  br i1 %i.bqi, label %.loopexit2813, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i562 = phi i64 [ %i.bqy, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i562.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.prol.loopexit ] ; 6 uses
  %i.bqj = getelementptr inbounds [4 x i8], ptr %i.bny, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i562
  %i.bqk = getelementptr inbounds [4 x i8], ptr %i.bns, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i562
  %i.bql = load i32, ptr %i.bqk, align 4, !tbaa !24
  store i32 %i.bql, ptr %i.bqj, align 4, !tbaa !24
  %i.bqm = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i562, 1 ; 2 uses
  %i.bqn = getelementptr inbounds [4 x i8], ptr %i.bny, i64 %i.bqm
  %i.bqo = getelementptr inbounds [4 x i8], ptr %i.bns, i64 %i.bqm
  %i.bqp = load i32, ptr %i.bqo, align 4, !tbaa !24
  store i32 %i.bqp, ptr %i.bqn, align 4, !tbaa !24
  %i.bqq = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i562, 2 ; 2 uses
  %i.bqr = getelementptr inbounds [4 x i8], ptr %i.bny, i64 %i.bqq
  %i.bqs = getelementptr inbounds [4 x i8], ptr %i.bns, i64 %i.bqq
  %i.bqt = load i32, ptr %i.bqs, align 4, !tbaa !24
  store i32 %i.bqt, ptr %i.bqr, align 4, !tbaa !24
  %i.bqu = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i562, 3 ; 2 uses
  %i.bqv = getelementptr inbounds [4 x i8], ptr %i.bny, i64 %i.bqu
  %i.bqw = getelementptr inbounds [4 x i8], ptr %i.bns, i64 %i.bqu
  %i.bqx = load i32, ptr %i.bqw, align 4, !tbaa !24
  store i32 %i.bqx, ptr %i.bqv, align 4, !tbaa !24
  %i.bqy = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i562, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i563.3 = icmp eq i64 %i.bqy, %i.bnu
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i563.3, label %.loopexit2813, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561, !llvm.loop !281

.lr.ph.i.i.i.i.i.i.i.i.i.i.i564:                  ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i559, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i564
  %.021.i.i.i.i.i.i.i.i.i.i.i565 = phi i64 [ %i.brc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i564 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i558, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i559 ] ; 3 uses
  %i.bqz = getelementptr inbounds [4 x i8], ptr %i.bny, i64 %.021.i.i.i.i.i.i.i.i.i.i.i565
  %i.bra = getelementptr inbounds [4 x i8], ptr %i.bns, i64 %.021.i.i.i.i.i.i.i.i.i.i.i565
  %i.brb = load <2 x i64>, ptr %i.bra, align 1, !tbaa !22
  store <2 x i64> %i.brb, ptr %i.bqz, align 16, !tbaa !22
  %i.brc = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i565, 4 ; 2 uses
  %i.brd = icmp slt i64 %i.brc, %i.boi
  br i1 %i.brd, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i564, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i560, !llvm.loop !241

.loopexit2813:                                    ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561, %middle.block3062, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i560
  %i.bre = load ptr, ptr %1, align 8, !tbaa !20, !noalias !458 ; 14 uses
  %i.brf = ptrtoaddr ptr %i.bre to i64            ; 2 uses
  %i.brg = load i64, ptr %i.a, align 8, !tbaa !21, !noalias !458 ; 10 uses
  %i.brh = add nsw i64 %i.bnu, %i.bnv             ; 4 uses
  %i.bri = load ptr, ptr %61, align 8, !tbaa !26, !noalias !459 ; 2 uses
  %i.brj = ptrtoaddr ptr %i.bri to i64            ; 2 uses
  %i.brk = getelementptr inbounds [4 x i8], ptr %i.bri, i64 %i.brh ; 14 uses
  %i.brl = ptrtoint ptr %i.brk to i64             ; 2 uses
  %i.brm = and i64 %i.brl, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i575 = icmp eq i64 %i.brm, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i575, label %bb.dq, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i576

bb.dq:                                            ; preds = %.loopexit2813
  %i.brn = lshr exact i64 %i.brl, 2
  %i.bro = sub nsw i64 0, %i.brn
  %i.brp = and i64 %i.bro, 3
  %i.brq = call i64 @llvm.smin.i64(i64 %i.brp, i64 %i.brg)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i576

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i576: ; preds = %bb.dq, %.loopexit2813
  %.0.i.i.i.i.i.i.i.i.i.i.i.i577 = phi i64 [ %i.brq, %bb.dq ], [ %i.brg, %.loopexit2813 ] ; 11 uses
  %i.brr = sub nsw i64 %i.brg, %.0.i.i.i.i.i.i.i.i.i.i.i.i577 ; 2 uses
  %i.brs = sdiv i64 %i.brr, 4
  %i.brt = shl nsw i64 %i.brs, 2                  ; 2 uses
  %i.bru = add nsw i64 %i.brt, %.0.i.i.i.i.i.i.i.i.i.i.i.i577 ; 6 uses
  %i.brv = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i577, 0
  br i1 %i.brv, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i578

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.preheader:      ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i576
  %min.iters.check3068 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i577, 16
  br i1 %min.iters.check3068, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.preheader3783, label %vector.memcheck3069

vector.memcheck3069:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.preheader
  %i.brw = shl nsw i64 %i.brh, 2
  %i.brx = add i64 %i.brw, %i.brj
  %i.bry = sub i64 %i.brf, %i.brx
  %diff.check3070 = icmp ugt i64 %i.bry, -32
  br i1 %diff.check3070, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.preheader3783, label %vector.ph3071

vector.ph3071:                                    ; preds = %vector.memcheck3069
  %n.vec3072 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i577, 9223372036854775800 ; 3 uses
  br label %vector.body3073

vector.body3073:                                  ; preds = %vector.body3073, %vector.ph3071
  %index3074 = phi i64 [ 0, %vector.ph3071 ], [ %index.next3077, %vector.body3073 ] ; 3 uses
  %i.brz = getelementptr inbounds nuw [4 x i8], ptr %i.brk, i64 %index3074 ; 2 uses
  %i.bsa = getelementptr inbounds nuw [4 x i8], ptr %i.bre, i64 %index3074 ; 2 uses
  %i.bsb = getelementptr inbounds nuw i8, ptr %i.bsa, i64 16
  %wide.load3075 = load <4 x i32>, ptr %i.bsa, align 4, !tbaa !24
  %wide.load3076 = load <4 x i32>, ptr %i.bsb, align 4, !tbaa !24
  %i.bsc = getelementptr inbounds nuw i8, ptr %i.brz, i64 16
  store <4 x i32> %wide.load3075, ptr %i.brz, align 4, !tbaa !24
  store <4 x i32> %wide.load3076, ptr %i.bsc, align 4, !tbaa !24
  %index.next3077 = add nuw i64 %index3074, 8     ; 2 uses
  %i.bsd = icmp eq i64 %index.next3077, %n.vec3072
  br i1 %i.bsd, label %middle.block3078, label %vector.body3073, !llvm.loop !286

middle.block3078:                                 ; preds = %vector.body3073
  %cmp.n3079 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i577, %n.vec3072
  br i1 %cmp.n3079, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i578, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.preheader3783

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.preheader3783:  ; preds = %vector.memcheck3069, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.preheader, %middle.block3078
  %.05.i.i.i.i.i.i.i.i.i.i.i.i586.ph = phi i64 [ 0, %vector.memcheck3069 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.preheader ], [ %n.vec3072, %middle.block3078 ] ; 3 uses
  %xtraiter3821 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i577, 3 ; 2 uses
  %lcmp.mod3822.not = icmp eq i64 %xtraiter3821, 0
  br i1 %lcmp.mod3822.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.prol:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.preheader3783, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i586.prol = phi i64 [ %i.bsh, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i586.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.preheader3783 ] ; 3 uses
  %prol.iter3823 = phi i64 [ %prol.iter3823.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.preheader3783 ]
  %i.bse = getelementptr inbounds nuw [4 x i8], ptr %i.brk, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i586.prol
  %i.bsf = getelementptr inbounds nuw [4 x i8], ptr %i.bre, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i586.prol
  %i.bsg = load i32, ptr %i.bsf, align 4, !tbaa !24
  store i32 %i.bsg, ptr %i.bse, align 4, !tbaa !24
  %i.bsh = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i586.prol, 1 ; 2 uses
  %prol.iter3823.next = add i64 %prol.iter3823, 1 ; 2 uses
  %prol.iter3823.cmp.not = icmp eq i64 %prol.iter3823.next, %xtraiter3821
  br i1 %prol.iter3823.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.prol, !llvm.loop !287

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.prol.loopexit:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.preheader3783
  %.05.i.i.i.i.i.i.i.i.i.i.i.i586.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i586.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.preheader3783 ], [ %i.bsh, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.prol ]
  %i.bsi = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i586.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i577
  %i.bsj = icmp ugt i64 %i.bsi, -4
  br i1 %i.bsj, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i578, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585
  %.05.i.i.i.i.i.i.i.i.i.i.i.i586 = phi i64 [ %i.bsz, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i586.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.prol.loopexit ] ; 6 uses
  %i.bsk = getelementptr inbounds nuw [4 x i8], ptr %i.brk, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i586
  %i.bsl = getelementptr inbounds nuw [4 x i8], ptr %i.bre, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i586
  %i.bsm = load i32, ptr %i.bsl, align 4, !tbaa !24
  store i32 %i.bsm, ptr %i.bsk, align 4, !tbaa !24
  %i.bsn = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i586, 1 ; 2 uses
  %i.bso = getelementptr inbounds nuw [4 x i8], ptr %i.brk, i64 %i.bsn
  %i.bsp = getelementptr inbounds nuw [4 x i8], ptr %i.bre, i64 %i.bsn
  %i.bsq = load i32, ptr %i.bsp, align 4, !tbaa !24
  store i32 %i.bsq, ptr %i.bso, align 4, !tbaa !24
  %i.bsr = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i586, 2 ; 2 uses
  %i.bss = getelementptr inbounds nuw [4 x i8], ptr %i.brk, i64 %i.bsr
  %i.bst = getelementptr inbounds nuw [4 x i8], ptr %i.bre, i64 %i.bsr
  %i.bsu = load i32, ptr %i.bst, align 4, !tbaa !24
  store i32 %i.bsu, ptr %i.bss, align 4, !tbaa !24
  %i.bsv = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i586, 3 ; 2 uses
  %i.bsw = getelementptr inbounds nuw [4 x i8], ptr %i.brk, i64 %i.bsv
  %i.bsx = getelementptr inbounds nuw [4 x i8], ptr %i.bre, i64 %i.bsv
  %i.bsy = load i32, ptr %i.bsx, align 4, !tbaa !24
  store i32 %i.bsy, ptr %i.bsw, align 4, !tbaa !24
  %i.bsz = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i586, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i587.3 = icmp eq i64 %i.bsz, %.0.i.i.i.i.i.i.i.i.i.i.i.i577
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i587.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i578, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585, !llvm.loop !288

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i578: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585, %middle.block3078, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i576
  %i.bta = icmp sgt i64 %i.brr, 3
  br i1 %i.bta, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i583, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i579

._crit_edge.i.i.i.i.i.i.i.i.i.i.i579:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i583, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i578
  %i.btb = icmp slt i64 %i.bru, %i.brg
  br i1 %i.btb, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.preheader, label %.loopexit2812

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.preheader:    ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i579
  %i.btc = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i577, %i.brt
  %i.btd = sub i64 %i.brg, %i.btc                 ; 3 uses
  %min.iters.check3084 = icmp ult i64 %i.btd, 16
  br i1 %min.iters.check3084, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.preheader3782, label %vector.memcheck3085

vector.memcheck3085:                              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.preheader
  %i.bte = shl nsw i64 %i.brh, 2
  %i.btf = add i64 %i.bte, %i.brj
  %i.btg = sub i64 %i.brf, %i.btf
  %diff.check3086 = icmp ugt i64 %i.btg, -32
  br i1 %diff.check3086, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.preheader3782, label %vector.ph3087

vector.ph3087:                                    ; preds = %vector.memcheck3085
  %n.vec3088 = and i64 %i.btd, -8                 ; 3 uses
  %i.bth = add i64 %i.bru, %n.vec3088
  br label %vector.body3089

vector.body3089:                                  ; preds = %vector.body3089, %vector.ph3087
  %index3090 = phi i64 [ 0, %vector.ph3087 ], [ %index.next3093, %vector.body3089 ] ; 2 uses
  %i.bti = add i64 %i.bru, %index3090             ; 2 uses
  %i.btj = getelementptr inbounds [4 x i8], ptr %i.brk, i64 %i.bti ; 2 uses
  %i.btk = getelementptr inbounds [4 x i8], ptr %i.bre, i64 %i.bti ; 2 uses
  %i.btl = getelementptr inbounds nuw i8, ptr %i.btk, i64 16
  %wide.load3091 = load <4 x i32>, ptr %i.btk, align 4, !tbaa !24
  %wide.load3092 = load <4 x i32>, ptr %i.btl, align 4, !tbaa !24
  %i.btm = getelementptr inbounds nuw i8, ptr %i.btj, i64 16
  store <4 x i32> %wide.load3091, ptr %i.btj, align 4, !tbaa !24
  store <4 x i32> %wide.load3092, ptr %i.btm, align 4, !tbaa !24
  %index.next3093 = add nuw i64 %index3090, 8     ; 2 uses
  %i.btn = icmp eq i64 %index.next3093, %n.vec3088
  br i1 %i.btn, label %middle.block3094, label %vector.body3089, !llvm.loop !289

middle.block3094:                                 ; preds = %vector.body3089
  %cmp.n3095 = icmp eq i64 %i.btd, %n.vec3088
  br i1 %cmp.n3095, label %.loopexit2812, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.preheader3782

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.preheader3782: ; preds = %vector.memcheck3085, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.preheader, %middle.block3094
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i581.ph = phi i64 [ %i.bru, %vector.memcheck3085 ], [ %i.bru, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.preheader ], [ %i.bth, %middle.block3094 ] ; 4 uses
  %i.bto = sub i64 %i.brg, %.05.i18.i.i.i.i.i.i.i.i.i.i.i581.ph
  %xtraiter3824 = and i64 %i.bto, 3               ; 2 uses
  %lcmp.mod3825.not = icmp eq i64 %xtraiter3824, 0
  br i1 %lcmp.mod3825.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.prol:         ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.preheader3782, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i581.prol = phi i64 [ %i.bts, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i581.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.preheader3782 ] ; 3 uses
  %prol.iter3826 = phi i64 [ %prol.iter3826.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.preheader3782 ]
  %i.btp = getelementptr inbounds [4 x i8], ptr %i.brk, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i581.prol
  %i.btq = getelementptr inbounds [4 x i8], ptr %i.bre, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i581.prol
  %i.btr = load i32, ptr %i.btq, align 4, !tbaa !24
  store i32 %i.btr, ptr %i.btp, align 4, !tbaa !24
  %i.bts = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i581.prol, 1 ; 2 uses
  %prol.iter3826.next = add i64 %prol.iter3826, 1 ; 2 uses
  %prol.iter3826.cmp.not = icmp eq i64 %prol.iter3826.next, %xtraiter3824
  br i1 %prol.iter3826.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.prol, !llvm.loop !290

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.preheader3782
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i581.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i581.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.preheader3782 ], [ %i.bts, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.prol ]
  %i.btt = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i581.ph, %i.brg
  %i.btu = icmp ugt i64 %i.btt, -4
  br i1 %i.btu, label %.loopexit2812, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i581 = phi i64 [ %i.buk, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i581.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.prol.loopexit ] ; 6 uses
  %i.btv = getelementptr inbounds [4 x i8], ptr %i.brk, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i581
  %i.btw = getelementptr inbounds [4 x i8], ptr %i.bre, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i581
  %i.btx = load i32, ptr %i.btw, align 4, !tbaa !24
  store i32 %i.btx, ptr %i.btv, align 4, !tbaa !24
  %i.bty = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i581, 1 ; 2 uses
  %i.btz = getelementptr inbounds [4 x i8], ptr %i.brk, i64 %i.bty
  %i.bua = getelementptr inbounds [4 x i8], ptr %i.bre, i64 %i.bty
  %i.bub = load i32, ptr %i.bua, align 4, !tbaa !24
  store i32 %i.bub, ptr %i.btz, align 4, !tbaa !24
  %i.buc = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i581, 2 ; 2 uses
  %i.bud = getelementptr inbounds [4 x i8], ptr %i.brk, i64 %i.buc
  %i.bue = getelementptr inbounds [4 x i8], ptr %i.bre, i64 %i.buc
  %i.buf = load i32, ptr %i.bue, align 4, !tbaa !24
  store i32 %i.buf, ptr %i.bud, align 4, !tbaa !24
  %i.bug = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i581, 3 ; 2 uses
  %i.buh = getelementptr inbounds [4 x i8], ptr %i.brk, i64 %i.bug
  %i.bui = getelementptr inbounds [4 x i8], ptr %i.bre, i64 %i.bug
  %i.buj = load i32, ptr %i.bui, align 4, !tbaa !24
  store i32 %i.buj, ptr %i.buh, align 4, !tbaa !24
  %i.buk = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i581, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i582.3 = icmp eq i64 %i.buk, %i.brg
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i582.3, label %.loopexit2812, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580, !llvm.loop !291

.lr.ph.i.i.i.i.i.i.i.i.i.i.i583:                  ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i578, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i583
  %.021.i.i.i.i.i.i.i.i.i.i.i584 = phi i64 [ %i.buo, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i583 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i577, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i578 ] ; 3 uses
  %i.bul = getelementptr inbounds [4 x i8], ptr %i.brk, i64 %.021.i.i.i.i.i.i.i.i.i.i.i584
  %i.bum = getelementptr inbounds [4 x i8], ptr %i.bre, i64 %.021.i.i.i.i.i.i.i.i.i.i.i584
  %i.bun = load <2 x i64>, ptr %i.bum, align 1, !tbaa !22
  store <2 x i64> %i.bun, ptr %i.bul, align 16, !tbaa !22
  %i.buo = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i584, 4 ; 2 uses
  %i.bup = icmp slt i64 %i.buo, %i.bru
  br i1 %i.bup, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i583, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i579, !llvm.loop !241

.loopexit2812:                                    ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580, %middle.block3094, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i579
  %i.buq = load ptr, ptr %1, align 8, !tbaa !20, !noalias !460 ; 2 uses
  %i.bur = ptrtoaddr ptr %i.buq to i64            ; 2 uses
  %i.bus = load i64, ptr %i.a, align 8, !tbaa !21, !noalias !460 ; 14 uses
  %i.but = getelementptr inbounds [4 x i8], ptr %i.buq, i64 %i.bus ; 13 uses
  %i.buu = add nsw i64 %i.brg, %i.brh             ; 5 uses
  %i.buv = load ptr, ptr %61, align 8, !tbaa !26, !noalias !461 ; 2 uses
  %i.buw = ptrtoaddr ptr %i.buv to i64            ; 2 uses
  %i.bux = getelementptr inbounds [4 x i8], ptr %i.buv, i64 %i.buu ; 14 uses
  %i.buy = ptrtoint ptr %i.bux to i64             ; 2 uses
  %i.buz = and i64 %i.buy, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i594 = icmp eq i64 %i.buz, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i594, label %bb.dr, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i595

bb.dr:                                            ; preds = %.loopexit2812
  %i.bva = lshr exact i64 %i.buy, 2
  %i.bvb = sub nsw i64 0, %i.bva
  %i.bvc = and i64 %i.bvb, 3
  %i.bvd = call i64 @llvm.smin.i64(i64 %i.bvc, i64 %i.bus)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i595

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i595: ; preds = %bb.dr, %.loopexit2812
  %.0.i.i.i.i.i.i.i.i.i.i.i.i596 = phi i64 [ %i.bvd, %bb.dr ], [ %i.bus, %.loopexit2812 ] ; 11 uses
  %i.bve = sub nsw i64 %i.bus, %.0.i.i.i.i.i.i.i.i.i.i.i.i596 ; 2 uses
  %i.bvf = sdiv i64 %i.bve, 4
  %i.bvg = shl nsw i64 %i.bvf, 2                  ; 2 uses
  %i.bvh = add nsw i64 %i.bvg, %.0.i.i.i.i.i.i.i.i.i.i.i.i596 ; 6 uses
  %i.bvi = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i596, 0
  br i1 %i.bvi, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i597

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.preheader:      ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i595
  %min.iters.check3100 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i596, 20
  br i1 %min.iters.check3100, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.preheader3781, label %vector.memcheck3101

vector.memcheck3101:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.preheader
  %i.bvj = shl nsw i64 %i.buu, 2
  %i.bvk = shl i64 %i.bus, 2
  %i.bvl = add i64 %i.bvj, %i.buw
  %i.bvm = add i64 %i.bvk, %i.bur
  %i.bvn = sub i64 %i.bvm, %i.bvl
  %diff.check3102 = icmp ugt i64 %i.bvn, -32
  br i1 %diff.check3102, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.preheader3781, label %vector.ph3103

vector.ph3103:                                    ; preds = %vector.memcheck3101
  %n.vec3104 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i596, 9223372036854775800 ; 3 uses
  br label %vector.body3105

vector.body3105:                                  ; preds = %vector.body3105, %vector.ph3103
  %index3106 = phi i64 [ 0, %vector.ph3103 ], [ %index.next3109, %vector.body3105 ] ; 3 uses
  %i.bvo = getelementptr inbounds nuw [4 x i8], ptr %i.bux, i64 %index3106 ; 2 uses
  %i.bvp = getelementptr inbounds nuw [4 x i8], ptr %i.but, i64 %index3106 ; 2 uses
  %i.bvq = getelementptr inbounds nuw i8, ptr %i.bvp, i64 16
  %wide.load3107 = load <4 x i32>, ptr %i.bvp, align 4, !tbaa !24
  %wide.load3108 = load <4 x i32>, ptr %i.bvq, align 4, !tbaa !24
  %i.bvr = getelementptr inbounds nuw i8, ptr %i.bvo, i64 16
  store <4 x i32> %wide.load3107, ptr %i.bvo, align 4, !tbaa !24
  store <4 x i32> %wide.load3108, ptr %i.bvr, align 4, !tbaa !24
  %index.next3109 = add nuw i64 %index3106, 8     ; 2 uses
  %i.bvs = icmp eq i64 %index.next3109, %n.vec3104
  br i1 %i.bvs, label %middle.block3110, label %vector.body3105, !llvm.loop !296

middle.block3110:                                 ; preds = %vector.body3105
  %cmp.n3111 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i596, %n.vec3104
  br i1 %cmp.n3111, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i597, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.preheader3781

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.preheader3781:  ; preds = %vector.memcheck3101, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.preheader, %middle.block3110
  %.05.i.i.i.i.i.i.i.i.i.i.i.i605.ph = phi i64 [ 0, %vector.memcheck3101 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.preheader ], [ %n.vec3104, %middle.block3110 ] ; 3 uses
  %xtraiter3827 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i596, 3 ; 2 uses
  %lcmp.mod3828.not = icmp eq i64 %xtraiter3827, 0
  br i1 %lcmp.mod3828.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.prol:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.preheader3781, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i605.prol = phi i64 [ %i.bvw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i605.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.preheader3781 ] ; 3 uses
  %prol.iter3829 = phi i64 [ %prol.iter3829.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.preheader3781 ]
  %i.bvt = getelementptr inbounds nuw [4 x i8], ptr %i.bux, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i605.prol
  %i.bvu = getelementptr inbounds nuw [4 x i8], ptr %i.but, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i605.prol
  %i.bvv = load i32, ptr %i.bvu, align 4, !tbaa !24
  store i32 %i.bvv, ptr %i.bvt, align 4, !tbaa !24
  %i.bvw = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i605.prol, 1 ; 2 uses
  %prol.iter3829.next = add i64 %prol.iter3829, 1 ; 2 uses
  %prol.iter3829.cmp.not = icmp eq i64 %prol.iter3829.next, %xtraiter3827
  br i1 %prol.iter3829.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.prol, !llvm.loop !297

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.prol.loopexit:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.preheader3781
  %.05.i.i.i.i.i.i.i.i.i.i.i.i605.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i605.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.preheader3781 ], [ %i.bvw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.prol ]
  %i.bvx = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i605.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i596
  %i.bvy = icmp ugt i64 %i.bvx, -4
  br i1 %i.bvy, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i597, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604
  %.05.i.i.i.i.i.i.i.i.i.i.i.i605 = phi i64 [ %i.bwo, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i605.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.prol.loopexit ] ; 6 uses
  %i.bvz = getelementptr inbounds nuw [4 x i8], ptr %i.bux, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i605
  %i.bwa = getelementptr inbounds nuw [4 x i8], ptr %i.but, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i605
  %i.bwb = load i32, ptr %i.bwa, align 4, !tbaa !24
  store i32 %i.bwb, ptr %i.bvz, align 4, !tbaa !24
  %i.bwc = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i605, 1 ; 2 uses
  %i.bwd = getelementptr inbounds nuw [4 x i8], ptr %i.bux, i64 %i.bwc
  %i.bwe = getelementptr inbounds nuw [4 x i8], ptr %i.but, i64 %i.bwc
  %i.bwf = load i32, ptr %i.bwe, align 4, !tbaa !24
  store i32 %i.bwf, ptr %i.bwd, align 4, !tbaa !24
  %i.bwg = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i605, 2 ; 2 uses
  %i.bwh = getelementptr inbounds nuw [4 x i8], ptr %i.bux, i64 %i.bwg
  %i.bwi = getelementptr inbounds nuw [4 x i8], ptr %i.but, i64 %i.bwg
  %i.bwj = load i32, ptr %i.bwi, align 4, !tbaa !24
  store i32 %i.bwj, ptr %i.bwh, align 4, !tbaa !24
  %i.bwk = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i605, 3 ; 2 uses
  %i.bwl = getelementptr inbounds nuw [4 x i8], ptr %i.bux, i64 %i.bwk
  %i.bwm = getelementptr inbounds nuw [4 x i8], ptr %i.but, i64 %i.bwk
  %i.bwn = load i32, ptr %i.bwm, align 4, !tbaa !24
  store i32 %i.bwn, ptr %i.bwl, align 4, !tbaa !24
  %i.bwo = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i605, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i606.3 = icmp eq i64 %i.bwo, %.0.i.i.i.i.i.i.i.i.i.i.i.i596
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i606.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i597, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604, !llvm.loop !298

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i597: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604, %middle.block3110, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i595
  %i.bwp = icmp sgt i64 %i.bve, 3
  br i1 %i.bwp, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i602, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i598

._crit_edge.i.i.i.i.i.i.i.i.i.i.i598:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i602, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i597
  %i.bwq = icmp slt i64 %i.bvh, %i.bus
  br i1 %i.bwq, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.preheader, label %.loopexit2811

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.preheader:    ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i598
  %i.bwr = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i596, %i.bvg
  %i.bws = sub i64 %i.bus, %i.bwr                 ; 3 uses
  %min.iters.check3116 = icmp ult i64 %i.bws, 20
  br i1 %min.iters.check3116, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.preheader3780, label %vector.memcheck3117

vector.memcheck3117:                              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.preheader
  %i.bwt = shl nsw i64 %i.buu, 2
  %i.bwu = shl i64 %i.bus, 2
  %i.bwv = add i64 %i.bwt, %i.buw
  %i.bww = add i64 %i.bwu, %i.bur
  %i.bwx = sub i64 %i.bww, %i.bwv
  %diff.check3118 = icmp ugt i64 %i.bwx, -32
  br i1 %diff.check3118, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.preheader3780, label %vector.ph3119

vector.ph3119:                                    ; preds = %vector.memcheck3117
  %n.vec3120 = and i64 %i.bws, -8                 ; 3 uses
  %i.bwy = add i64 %i.bvh, %n.vec3120
  br label %vector.body3121

vector.body3121:                                  ; preds = %vector.body3121, %vector.ph3119
  %index3122 = phi i64 [ 0, %vector.ph3119 ], [ %index.next3125, %vector.body3121 ] ; 2 uses
  %i.bwz = add i64 %i.bvh, %index3122             ; 2 uses
  %i.bxa = getelementptr inbounds [4 x i8], ptr %i.bux, i64 %i.bwz ; 2 uses
  %i.bxb = getelementptr inbounds [4 x i8], ptr %i.but, i64 %i.bwz ; 2 uses
  %i.bxc = getelementptr inbounds nuw i8, ptr %i.bxb, i64 16
  %wide.load3123 = load <4 x i32>, ptr %i.bxb, align 4, !tbaa !24
  %wide.load3124 = load <4 x i32>, ptr %i.bxc, align 4, !tbaa !24
  %i.bxd = getelementptr inbounds nuw i8, ptr %i.bxa, i64 16
  store <4 x i32> %wide.load3123, ptr %i.bxa, align 4, !tbaa !24
  store <4 x i32> %wide.load3124, ptr %i.bxd, align 4, !tbaa !24
  %index.next3125 = add nuw i64 %index3122, 8     ; 2 uses
  %i.bxe = icmp eq i64 %index.next3125, %n.vec3120
  br i1 %i.bxe, label %middle.block3126, label %vector.body3121, !llvm.loop !299

middle.block3126:                                 ; preds = %vector.body3121
  %cmp.n3127 = icmp eq i64 %i.bws, %n.vec3120
  br i1 %cmp.n3127, label %.loopexit2811, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.preheader3780

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.preheader3780: ; preds = %vector.memcheck3117, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.preheader, %middle.block3126
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i600.ph = phi i64 [ %i.bvh, %vector.memcheck3117 ], [ %i.bvh, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.preheader ], [ %i.bwy, %middle.block3126 ] ; 4 uses
  %i.bxf = sub i64 %i.bus, %.05.i18.i.i.i.i.i.i.i.i.i.i.i600.ph
  %xtraiter3830 = and i64 %i.bxf, 3               ; 2 uses
  %lcmp.mod3831.not = icmp eq i64 %xtraiter3830, 0
  br i1 %lcmp.mod3831.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.prol:         ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.preheader3780, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i600.prol = phi i64 [ %i.bxj, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i600.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.preheader3780 ] ; 3 uses
  %prol.iter3832 = phi i64 [ %prol.iter3832.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.preheader3780 ]
  %i.bxg = getelementptr inbounds [4 x i8], ptr %i.bux, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i600.prol
  %i.bxh = getelementptr inbounds [4 x i8], ptr %i.but, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i600.prol
  %i.bxi = load i32, ptr %i.bxh, align 4, !tbaa !24
  store i32 %i.bxi, ptr %i.bxg, align 4, !tbaa !24
  %i.bxj = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i600.prol, 1 ; 2 uses
  %prol.iter3832.next = add i64 %prol.iter3832, 1 ; 2 uses
  %prol.iter3832.cmp.not = icmp eq i64 %prol.iter3832.next, %xtraiter3830
  br i1 %prol.iter3832.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.prol, !llvm.loop !300

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.preheader3780
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i600.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i600.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.preheader3780 ], [ %i.bxj, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.prol ]
  %i.bxk = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i600.ph, %i.bus
  %i.bxl = icmp ugt i64 %i.bxk, -4
  br i1 %i.bxl, label %.loopexit2811, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i600 = phi i64 [ %i.byb, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i600.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.prol.loopexit ] ; 6 uses
  %i.bxm = getelementptr inbounds [4 x i8], ptr %i.bux, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i600
  %i.bxn = getelementptr inbounds [4 x i8], ptr %i.but, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i600
  %i.bxo = load i32, ptr %i.bxn, align 4, !tbaa !24
  store i32 %i.bxo, ptr %i.bxm, align 4, !tbaa !24
  %i.bxp = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i600, 1 ; 2 uses
  %i.bxq = getelementptr inbounds [4 x i8], ptr %i.bux, i64 %i.bxp
  %i.bxr = getelementptr inbounds [4 x i8], ptr %i.but, i64 %i.bxp
  %i.bxs = load i32, ptr %i.bxr, align 4, !tbaa !24
  store i32 %i.bxs, ptr %i.bxq, align 4, !tbaa !24
  %i.bxt = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i600, 2 ; 2 uses
  %i.bxu = getelementptr inbounds [4 x i8], ptr %i.bux, i64 %i.bxt
  %i.bxv = getelementptr inbounds [4 x i8], ptr %i.but, i64 %i.bxt
  %i.bxw = load i32, ptr %i.bxv, align 4, !tbaa !24
  store i32 %i.bxw, ptr %i.bxu, align 4, !tbaa !24
  %i.bxx = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i600, 3 ; 2 uses
  %i.bxy = getelementptr inbounds [4 x i8], ptr %i.bux, i64 %i.bxx
  %i.bxz = getelementptr inbounds [4 x i8], ptr %i.but, i64 %i.bxx
  %i.bya = load i32, ptr %i.bxz, align 4, !tbaa !24
  store i32 %i.bya, ptr %i.bxy, align 4, !tbaa !24
  %i.byb = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i600, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i601.3 = icmp eq i64 %i.byb, %i.bus
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i601.3, label %.loopexit2811, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599, !llvm.loop !301

.lr.ph.i.i.i.i.i.i.i.i.i.i.i602:                  ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i597, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i602
  %.021.i.i.i.i.i.i.i.i.i.i.i603 = phi i64 [ %i.byf, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i602 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i596, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i597 ] ; 3 uses
  %i.byc = getelementptr inbounds [4 x i8], ptr %i.bux, i64 %.021.i.i.i.i.i.i.i.i.i.i.i603
  %i.byd = getelementptr inbounds [4 x i8], ptr %i.but, i64 %.021.i.i.i.i.i.i.i.i.i.i.i603
  %i.bye = load <2 x i64>, ptr %i.byd, align 1, !tbaa !22
  store <2 x i64> %i.bye, ptr %i.byc, align 16, !tbaa !22
  %i.byf = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i603, 4 ; 2 uses
  %i.byg = icmp slt i64 %i.byf, %i.bvh
  br i1 %i.byg, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i602, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i598, !llvm.loop !241

.loopexit2811:                                    ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599, %middle.block3126, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i598
  %i.byh = load ptr, ptr %1, align 8, !tbaa !20, !noalias !462 ; 2 uses
  %i.byi = ptrtoaddr ptr %i.byh to i64            ; 2 uses
  %i.byj = load i64, ptr %i.a, align 8, !tbaa !21, !noalias !462 ; 9 uses
  %.idx2780 = shl i64 %i.byj, 3                   ; 3 uses
  %i.byk = getelementptr inbounds i8, ptr %i.byh, i64 %.idx2780 ; 13 uses
  %i.byl = load ptr, ptr %61, align 8, !tbaa !26, !noalias !463 ; 2 uses
  %i.bym = ptrtoaddr ptr %i.byl to i64            ; 2 uses
  %i.byn = getelementptr [4 x i8], ptr %i.byl, i64 %i.buu
  %i.byo = getelementptr [4 x i8], ptr %i.byn, i64 %i.bus ; 14 uses
  %i.byp = ptrtoint ptr %i.byo to i64             ; 2 uses
  %i.byq = and i64 %i.byp, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i613 = icmp eq i64 %i.byq, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i613, label %bb.ds, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i614

bb.ds:                                            ; preds = %.loopexit2811
  %i.byr = lshr exact i64 %i.byp, 2
  %i.bys = sub nsw i64 0, %i.byr
  %i.byt = and i64 %i.bys, 3
  %i.byu = call i64 @llvm.smin.i64(i64 %i.byt, i64 %i.byj)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i614

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i614: ; preds = %bb.ds, %.loopexit2811
  %.0.i.i.i.i.i.i.i.i.i.i.i.i615 = phi i64 [ %i.byu, %bb.ds ], [ %i.byj, %.loopexit2811 ] ; 11 uses
  %i.byv = sub nsw i64 %i.byj, %.0.i.i.i.i.i.i.i.i.i.i.i.i615 ; 2 uses
  %i.byw = sdiv i64 %i.byv, 4
  %i.byx = shl nsw i64 %i.byw, 2                  ; 2 uses
  %i.byy = add nsw i64 %i.byx, %.0.i.i.i.i.i.i.i.i.i.i.i.i615 ; 6 uses
  %i.byz = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i615, 0
  br i1 %i.byz, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i616

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.preheader:      ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i614
  %min.iters.check3132 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i615, 20
  br i1 %min.iters.check3132, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.preheader3779, label %vector.memcheck3133

vector.memcheck3133:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.preheader
  %i.bza = add i64 %i.bus, %i.buu
  %i.bzb = shl i64 %i.bza, 2
  %i.bzc = add i64 %i.bzb, %i.bym
  %i.bzd = add i64 %.idx2780, %i.byi
  %i.bze = sub i64 %i.bzd, %i.bzc
  %diff.check3134 = icmp ugt i64 %i.bze, -32
  br i1 %diff.check3134, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.preheader3779, label %vector.ph3135

vector.ph3135:                                    ; preds = %vector.memcheck3133
  %n.vec3136 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i615, 9223372036854775800 ; 3 uses
  br label %vector.body3137

vector.body3137:                                  ; preds = %vector.body3137, %vector.ph3135
  %index3138 = phi i64 [ 0, %vector.ph3135 ], [ %index.next3141, %vector.body3137 ] ; 3 uses
  %i.bzf = getelementptr inbounds nuw [4 x i8], ptr %i.byo, i64 %index3138 ; 2 uses
  %i.bzg = getelementptr inbounds nuw [4 x i8], ptr %i.byk, i64 %index3138 ; 2 uses
  %i.bzh = getelementptr inbounds nuw i8, ptr %i.bzg, i64 16
  %wide.load3139 = load <4 x i32>, ptr %i.bzg, align 4, !tbaa !24
  %wide.load3140 = load <4 x i32>, ptr %i.bzh, align 4, !tbaa !24
  %i.bzi = getelementptr inbounds nuw i8, ptr %i.bzf, i64 16
  store <4 x i32> %wide.load3139, ptr %i.bzf, align 4, !tbaa !24
  store <4 x i32> %wide.load3140, ptr %i.bzi, align 4, !tbaa !24
  %index.next3141 = add nuw i64 %index3138, 8     ; 2 uses
  %i.bzj = icmp eq i64 %index.next3141, %n.vec3136
  br i1 %i.bzj, label %middle.block3142, label %vector.body3137, !llvm.loop !306

middle.block3142:                                 ; preds = %vector.body3137
  %cmp.n3143 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i615, %n.vec3136
  br i1 %cmp.n3143, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i616, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.preheader3779

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.preheader3779:  ; preds = %vector.memcheck3133, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.preheader, %middle.block3142
  %.05.i.i.i.i.i.i.i.i.i.i.i.i624.ph = phi i64 [ 0, %vector.memcheck3133 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.preheader ], [ %n.vec3136, %middle.block3142 ] ; 3 uses
  %xtraiter3833 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i615, 3 ; 2 uses
  %lcmp.mod3834.not = icmp eq i64 %xtraiter3833, 0
  br i1 %lcmp.mod3834.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.prol:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.preheader3779, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i624.prol = phi i64 [ %i.bzn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i624.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.preheader3779 ] ; 3 uses
  %prol.iter3835 = phi i64 [ %prol.iter3835.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.preheader3779 ]
  %i.bzk = getelementptr inbounds nuw [4 x i8], ptr %i.byo, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i624.prol
  %i.bzl = getelementptr inbounds nuw [4 x i8], ptr %i.byk, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i624.prol
  %i.bzm = load i32, ptr %i.bzl, align 4, !tbaa !24
  store i32 %i.bzm, ptr %i.bzk, align 4, !tbaa !24
  %i.bzn = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i624.prol, 1 ; 2 uses
  %prol.iter3835.next = add i64 %prol.iter3835, 1 ; 2 uses
  %prol.iter3835.cmp.not = icmp eq i64 %prol.iter3835.next, %xtraiter3833
  br i1 %prol.iter3835.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.prol, !llvm.loop !307

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.prol.loopexit:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.preheader3779
  %.05.i.i.i.i.i.i.i.i.i.i.i.i624.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i624.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.preheader3779 ], [ %i.bzn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.prol ]
  %i.bzo = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i624.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i615
  %i.bzp = icmp ugt i64 %i.bzo, -4
  br i1 %i.bzp, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i616, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623
  %.05.i.i.i.i.i.i.i.i.i.i.i.i624 = phi i64 [ %i.caf, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i624.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.prol.loopexit ] ; 6 uses
  %i.bzq = getelementptr inbounds nuw [4 x i8], ptr %i.byo, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i624
  %i.bzr = getelementptr inbounds nuw [4 x i8], ptr %i.byk, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i624
  %i.bzs = load i32, ptr %i.bzr, align 4, !tbaa !24
  store i32 %i.bzs, ptr %i.bzq, align 4, !tbaa !24
  %i.bzt = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i624, 1 ; 2 uses
  %i.bzu = getelementptr inbounds nuw [4 x i8], ptr %i.byo, i64 %i.bzt
  %i.bzv = getelementptr inbounds nuw [4 x i8], ptr %i.byk, i64 %i.bzt
  %i.bzw = load i32, ptr %i.bzv, align 4, !tbaa !24
  store i32 %i.bzw, ptr %i.bzu, align 4, !tbaa !24
  %i.bzx = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i624, 2 ; 2 uses
  %i.bzy = getelementptr inbounds nuw [4 x i8], ptr %i.byo, i64 %i.bzx
  %i.bzz = getelementptr inbounds nuw [4 x i8], ptr %i.byk, i64 %i.bzx
  %i.caa = load i32, ptr %i.bzz, align 4, !tbaa !24
  store i32 %i.caa, ptr %i.bzy, align 4, !tbaa !24
  %i.cab = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i624, 3 ; 2 uses
  %i.cac = getelementptr inbounds nuw [4 x i8], ptr %i.byo, i64 %i.cab
  %i.cad = getelementptr inbounds nuw [4 x i8], ptr %i.byk, i64 %i.cab
  %i.cae = load i32, ptr %i.cad, align 4, !tbaa !24
  store i32 %i.cae, ptr %i.cac, align 4, !tbaa !24
  %i.caf = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i624, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i625.3 = icmp eq i64 %i.caf, %.0.i.i.i.i.i.i.i.i.i.i.i.i615
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i625.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i616, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623, !llvm.loop !308

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i616: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623, %middle.block3142, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i614
  %i.cag = icmp sgt i64 %i.byv, 3
  br i1 %i.cag, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i621, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i617

._crit_edge.i.i.i.i.i.i.i.i.i.i.i617:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i621, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i616
  %i.cah = icmp slt i64 %i.byy, %i.byj
  br i1 %i.cah, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.preheader, label %.loopexit2810

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.preheader:    ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i617
  %i.cai = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i615, %i.byx
  %i.caj = sub i64 %i.byj, %i.cai                 ; 3 uses
  %min.iters.check3148 = icmp ult i64 %i.caj, 36
  br i1 %min.iters.check3148, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.preheader3778, label %vector.memcheck3149

vector.memcheck3149:                              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.preheader
  %i.cak = add i64 %i.bus, %i.brg
  %i.cal = add i64 %i.cak, %i.bnu
  %i.cam = add i64 %i.cal, %i.bkf
  %i.can = add i64 %i.cam, %i.bgq
  %i.cao = add i64 %i.can, %i.bcz
  %i.cap = add i64 %i.cao, %i.ayt
  %i.caq = add i64 %i.cap, %i.azj
  %i.car = shl i64 %i.caq, 2
  %i.cas = add i64 %i.car, %i.bym
  %i.cat = add i64 %.idx2780, %i.byi
  %i.cau = sub i64 %i.cat, %i.cas
  %diff.check3150 = icmp ugt i64 %i.cau, -32
  br i1 %diff.check3150, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.preheader3778, label %vector.ph3151

vector.ph3151:                                    ; preds = %vector.memcheck3149
  %n.vec3152 = and i64 %i.caj, -8                 ; 3 uses
  %i.cav = add i64 %i.byy, %n.vec3152
  br label %vector.body3153

vector.body3153:                                  ; preds = %vector.body3153, %vector.ph3151
  %index3154 = phi i64 [ 0, %vector.ph3151 ], [ %index.next3157, %vector.body3153 ] ; 2 uses
  %i.caw = add i64 %i.byy, %index3154             ; 2 uses
  %i.cax = getelementptr inbounds [4 x i8], ptr %i.byo, i64 %i.caw ; 2 uses
  %i.cay = getelementptr inbounds [4 x i8], ptr %i.byk, i64 %i.caw ; 2 uses
  %i.caz = getelementptr inbounds nuw i8, ptr %i.cay, i64 16
  %wide.load3155 = load <4 x i32>, ptr %i.cay, align 4, !tbaa !24
  %wide.load3156 = load <4 x i32>, ptr %i.caz, align 4, !tbaa !24
  %i.cba = getelementptr inbounds nuw i8, ptr %i.cax, i64 16
  store <4 x i32> %wide.load3155, ptr %i.cax, align 4, !tbaa !24
  store <4 x i32> %wide.load3156, ptr %i.cba, align 4, !tbaa !24
  %index.next3157 = add nuw i64 %index3154, 8     ; 2 uses
  %i.cbb = icmp eq i64 %index.next3157, %n.vec3152
  br i1 %i.cbb, label %middle.block3158, label %vector.body3153, !llvm.loop !309

middle.block3158:                                 ; preds = %vector.body3153
  %cmp.n3159 = icmp eq i64 %i.caj, %n.vec3152
  br i1 %cmp.n3159, label %.loopexit2810, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.preheader3778

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.preheader3778: ; preds = %vector.memcheck3149, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.preheader, %middle.block3158
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i619.ph = phi i64 [ %i.byy, %vector.memcheck3149 ], [ %i.byy, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.preheader ], [ %i.cav, %middle.block3158 ] ; 4 uses
  %i.cbc = sub i64 %i.byj, %.05.i18.i.i.i.i.i.i.i.i.i.i.i619.ph
  %xtraiter3836 = and i64 %i.cbc, 3               ; 2 uses
  %lcmp.mod3837.not = icmp eq i64 %xtraiter3836, 0
  br i1 %lcmp.mod3837.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.prol:         ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.preheader3778, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i619.prol = phi i64 [ %i.cbg, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i619.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.preheader3778 ] ; 3 uses
  %prol.iter3838 = phi i64 [ %prol.iter3838.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.preheader3778 ]
  %i.cbd = getelementptr inbounds [4 x i8], ptr %i.byo, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i619.prol
  %i.cbe = getelementptr inbounds [4 x i8], ptr %i.byk, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i619.prol
  %i.cbf = load i32, ptr %i.cbe, align 4, !tbaa !24
  store i32 %i.cbf, ptr %i.cbd, align 4, !tbaa !24
  %i.cbg = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i619.prol, 1 ; 2 uses
  %prol.iter3838.next = add i64 %prol.iter3838, 1 ; 2 uses
  %prol.iter3838.cmp.not = icmp eq i64 %prol.iter3838.next, %xtraiter3836
  br i1 %prol.iter3838.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.prol, !llvm.loop !310

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.preheader3778
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i619.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i619.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.preheader3778 ], [ %i.cbg, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.prol ]
  %i.cbh = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i619.ph, %i.byj
  %i.cbi = icmp ugt i64 %i.cbh, -4
  br i1 %i.cbi, label %.loopexit2810, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i619 = phi i64 [ %i.cby, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i619.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.prol.loopexit ] ; 6 uses
  %i.cbj = getelementptr inbounds [4 x i8], ptr %i.byo, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i619
  %i.cbk = getelementptr inbounds [4 x i8], ptr %i.byk, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i619
  %i.cbl = load i32, ptr %i.cbk, align 4, !tbaa !24
  store i32 %i.cbl, ptr %i.cbj, align 4, !tbaa !24
  %i.cbm = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i619, 1 ; 2 uses
  %i.cbn = getelementptr inbounds [4 x i8], ptr %i.byo, i64 %i.cbm
  %i.cbo = getelementptr inbounds [4 x i8], ptr %i.byk, i64 %i.cbm
  %i.cbp = load i32, ptr %i.cbo, align 4, !tbaa !24
  store i32 %i.cbp, ptr %i.cbn, align 4, !tbaa !24
  %i.cbq = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i619, 2 ; 2 uses
  %i.cbr = getelementptr inbounds [4 x i8], ptr %i.byo, i64 %i.cbq
  %i.cbs = getelementptr inbounds [4 x i8], ptr %i.byk, i64 %i.cbq
  %i.cbt = load i32, ptr %i.cbs, align 4, !tbaa !24
  store i32 %i.cbt, ptr %i.cbr, align 4, !tbaa !24
  %i.cbu = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i619, 3 ; 2 uses
  %i.cbv = getelementptr inbounds [4 x i8], ptr %i.byo, i64 %i.cbu
  %i.cbw = getelementptr inbounds [4 x i8], ptr %i.byk, i64 %i.cbu
  %i.cbx = load i32, ptr %i.cbw, align 4, !tbaa !24
  store i32 %i.cbx, ptr %i.cbv, align 4, !tbaa !24
  %i.cby = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i619, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i620.3 = icmp eq i64 %i.cby, %i.byj
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i620.3, label %.loopexit2810, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618, !llvm.loop !311

.lr.ph.i.i.i.i.i.i.i.i.i.i.i621:                  ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i616, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i621
  %.021.i.i.i.i.i.i.i.i.i.i.i622 = phi i64 [ %i.ccc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i621 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i615, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i616 ] ; 3 uses
  %i.cbz = getelementptr inbounds [4 x i8], ptr %i.byo, i64 %.021.i.i.i.i.i.i.i.i.i.i.i622
  %i.cca = getelementptr inbounds [4 x i8], ptr %i.byk, i64 %.021.i.i.i.i.i.i.i.i.i.i.i622
  %i.ccb = load <2 x i64>, ptr %i.cca, align 1, !tbaa !22
  store <2 x i64> %i.ccb, ptr %i.cbz, align 16, !tbaa !22
  %i.ccc = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i622, 4 ; 2 uses
  %i.ccd = icmp slt i64 %i.ccc, %i.byy
  br i1 %i.ccd, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i621, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i617, !llvm.loop !241

.loopexit2810:                                    ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618, %middle.block3158, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i617
  %i.cce = load ptr, ptr %1, align 8, !tbaa !20, !noalias !464
  %i.ccf = load i64, ptr %i.a, align 8, !tbaa !21, !noalias !464 ; 8 uses
  %i.ccg = getelementptr inbounds [4 x i8], ptr %i.cce, i64 %i.ccf
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #14, !noalias !465
  call void @llvm.experimental.noalias.scope.decl(metadata !466)
  %i.cch = load ptr, ptr %62, align 8, !tbaa !26, !noalias !467 ; 2 uses
  %i.cci = getelementptr inbounds nuw i8, ptr %62, i64 8
  %i.ccj = load i64, ptr %i.cci, align 8, !tbaa !27, !noalias !467 ; 2 uses
  store ptr %i.cch, ptr %17, align 8, !tbaa !30, !alias.scope !466, !noalias !465
  %i.cck = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 %i.ccf, ptr %i.cck, align 8, !tbaa !31, !alias.scope !466, !noalias !465
  %i.ccl = getelementptr inbounds nuw i8, ptr %17, i64 16
  store i64 1, ptr %i.ccl, align 8, !tbaa !31, !alias.scope !466, !noalias !465
  %i.ccm = getelementptr inbounds nuw i8, ptr %17, i64 24
  store ptr %62, ptr %i.ccm, align 8, !tbaa !33, !alias.scope !466, !noalias !465
  %i.ccn = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.cco = getelementptr inbounds nuw i8, ptr %17, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ccn, i8 0, i64 16, i1 false), !noalias !465
  store i64 %i.ccj, ptr %i.cco, align 8, !tbaa !36, !alias.scope !466, !noalias !465
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #14, !noalias !465
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14, !noalias !465
  store ptr %i.ccg, ptr %13, align 8, !tbaa !39, !noalias !465
  %i.ccp = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 %i.ccf, ptr %i.ccp, align 8, !tbaa !31, !noalias !465
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #14, !noalias !465
  store ptr %i.cch, ptr %14, align 8, !tbaa !41, !noalias !465
  %i.ccq = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 %i.ccj, ptr %i.ccq, align 8, !tbaa !31, !noalias !465
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #14, !noalias !465
  store ptr %14, ptr %15, align 8, !tbaa !43, !noalias !465
  %i.ccr = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %13, ptr %i.ccr, align 8, !tbaa !404, !noalias !465
  %i.ccs = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %16, ptr %i.ccs, align 8, !tbaa !46, !noalias !465
  %i.cct = getelementptr inbounds nuw i8, ptr %15, i64 24
  store ptr %17, ptr %i.cct, align 8, !tbaa !48, !noalias !465
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS4_IKNS5_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSF_(ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.dt unwind label %bb.ef

bb.dt:                                            ; preds = %.loopexit2810
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #14, !noalias !465
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14, !noalias !465
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14, !noalias !465
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #14, !noalias !465
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #14, !noalias !465
  %i.ccu = load ptr, ptr %1, align 8, !tbaa !20, !noalias !468 ; 14 uses
  %i.ccv = ptrtoaddr ptr %i.ccu to i64            ; 2 uses
  %i.ccw = load i64, ptr %i.a, align 8, !tbaa !21, !noalias !468 ; 10 uses
  %i.ccx = load ptr, ptr %62, align 8, !tbaa !26, !noalias !469 ; 2 uses
  %i.ccy = ptrtoaddr ptr %i.ccx to i64            ; 2 uses
  %i.ccz = getelementptr inbounds [4 x i8], ptr %i.ccx, i64 %i.ccf ; 14 uses
  %i.cda = ptrtoint ptr %i.ccz to i64             ; 2 uses
  %i.cdb = and i64 %i.cda, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i634 = icmp eq i64 %i.cdb, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i634, label %bb.du, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i635

bb.du:                                            ; preds = %bb.dt
  %i.cdc = lshr exact i64 %i.cda, 2
  %i.cdd = sub nsw i64 0, %i.cdc
  %i.cde = and i64 %i.cdd, 3
  %i.cdf = call i64 @llvm.smin.i64(i64 %i.cde, i64 %i.ccw)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i635

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i635: ; preds = %bb.du, %bb.dt
  %.0.i.i.i.i.i.i.i.i.i.i.i.i636 = phi i64 [ %i.cdf, %bb.du ], [ %i.ccw, %bb.dt ] ; 11 uses
  %i.cdg = sub nsw i64 %i.ccw, %.0.i.i.i.i.i.i.i.i.i.i.i.i636 ; 2 uses
  %i.cdh = sdiv i64 %i.cdg, 4
  %i.cdi = shl nsw i64 %i.cdh, 2                  ; 2 uses
  %i.cdj = add nsw i64 %i.cdi, %.0.i.i.i.i.i.i.i.i.i.i.i.i636 ; 6 uses
  %i.cdk = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i636, 0
  br i1 %i.cdk, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i637

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.preheader:      ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i635
  %min.iters.check3164 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i636, 16
  br i1 %min.iters.check3164, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.preheader3777, label %vector.memcheck3165

vector.memcheck3165:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.preheader
  %i.cdl = shl nsw i64 %i.ccf, 2
  %i.cdm = add i64 %i.cdl, %i.ccy
  %i.cdn = sub i64 %i.ccv, %i.cdm
  %diff.check3166 = icmp ugt i64 %i.cdn, -32
  br i1 %diff.check3166, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.preheader3777, label %vector.ph3167

vector.ph3167:                                    ; preds = %vector.memcheck3165
  %n.vec3168 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i636, 9223372036854775800 ; 3 uses
  br label %vector.body3169

vector.body3169:                                  ; preds = %vector.body3169, %vector.ph3167
  %index3170 = phi i64 [ 0, %vector.ph3167 ], [ %index.next3173, %vector.body3169 ] ; 3 uses
  %i.cdo = getelementptr inbounds nuw [4 x i8], ptr %i.ccz, i64 %index3170 ; 2 uses
  %i.cdp = getelementptr inbounds nuw [4 x i8], ptr %i.ccu, i64 %index3170 ; 2 uses
  %i.cdq = getelementptr inbounds nuw i8, ptr %i.cdp, i64 16
  %wide.load3171 = load <4 x i32>, ptr %i.cdp, align 4, !tbaa !24
  %wide.load3172 = load <4 x i32>, ptr %i.cdq, align 4, !tbaa !24
  %i.cdr = getelementptr inbounds nuw i8, ptr %i.cdo, i64 16
  store <4 x i32> %wide.load3171, ptr %i.cdo, align 4, !tbaa !24
  store <4 x i32> %wide.load3172, ptr %i.cdr, align 4, !tbaa !24
  %index.next3173 = add nuw i64 %index3170, 8     ; 2 uses
  %i.cds = icmp eq i64 %index.next3173, %n.vec3168
  br i1 %i.cds, label %middle.block3174, label %vector.body3169, !llvm.loop !322

middle.block3174:                                 ; preds = %vector.body3169
  %cmp.n3175 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i636, %n.vec3168
  br i1 %cmp.n3175, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i637, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.preheader3777

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.preheader3777:  ; preds = %vector.memcheck3165, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.preheader, %middle.block3174
  %.05.i.i.i.i.i.i.i.i.i.i.i.i645.ph = phi i64 [ 0, %vector.memcheck3165 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.preheader ], [ %n.vec3168, %middle.block3174 ] ; 3 uses
  %xtraiter3839 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i636, 3 ; 2 uses
  %lcmp.mod3840.not = icmp eq i64 %xtraiter3839, 0
  br i1 %lcmp.mod3840.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.prol:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.preheader3777, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i645.prol = phi i64 [ %i.cdw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i645.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.preheader3777 ] ; 3 uses
  %prol.iter3841 = phi i64 [ %prol.iter3841.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.preheader3777 ]
  %i.cdt = getelementptr inbounds nuw [4 x i8], ptr %i.ccz, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i645.prol
  %i.cdu = getelementptr inbounds nuw [4 x i8], ptr %i.ccu, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i645.prol
  %i.cdv = load i32, ptr %i.cdu, align 4, !tbaa !24
  store i32 %i.cdv, ptr %i.cdt, align 4, !tbaa !24
  %i.cdw = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i645.prol, 1 ; 2 uses
  %prol.iter3841.next = add i64 %prol.iter3841, 1 ; 2 uses
  %prol.iter3841.cmp.not = icmp eq i64 %prol.iter3841.next, %xtraiter3839
  br i1 %prol.iter3841.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.prol, !llvm.loop !323

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.prol.loopexit:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.preheader3777
  %.05.i.i.i.i.i.i.i.i.i.i.i.i645.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i645.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.preheader3777 ], [ %i.cdw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.prol ]
  %i.cdx = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i645.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i636
  %i.cdy = icmp ugt i64 %i.cdx, -4
  br i1 %i.cdy, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i637, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644
  %.05.i.i.i.i.i.i.i.i.i.i.i.i645 = phi i64 [ %i.ceo, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i645.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.prol.loopexit ] ; 6 uses
  %i.cdz = getelementptr inbounds nuw [4 x i8], ptr %i.ccz, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i645
  %i.cea = getelementptr inbounds nuw [4 x i8], ptr %i.ccu, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i645
  %i.ceb = load i32, ptr %i.cea, align 4, !tbaa !24
  store i32 %i.ceb, ptr %i.cdz, align 4, !tbaa !24
  %i.cec = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i645, 1 ; 2 uses
  %i.ced = getelementptr inbounds nuw [4 x i8], ptr %i.ccz, i64 %i.cec
  %i.cee = getelementptr inbounds nuw [4 x i8], ptr %i.ccu, i64 %i.cec
  %i.cef = load i32, ptr %i.cee, align 4, !tbaa !24
  store i32 %i.cef, ptr %i.ced, align 4, !tbaa !24
  %i.ceg = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i645, 2 ; 2 uses
  %i.ceh = getelementptr inbounds nuw [4 x i8], ptr %i.ccz, i64 %i.ceg
  %i.cei = getelementptr inbounds nuw [4 x i8], ptr %i.ccu, i64 %i.ceg
  %i.cej = load i32, ptr %i.cei, align 4, !tbaa !24
  store i32 %i.cej, ptr %i.ceh, align 4, !tbaa !24
  %i.cek = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i645, 3 ; 2 uses
  %i.cel = getelementptr inbounds nuw [4 x i8], ptr %i.ccz, i64 %i.cek
  %i.cem = getelementptr inbounds nuw [4 x i8], ptr %i.ccu, i64 %i.cek
  %i.cen = load i32, ptr %i.cem, align 4, !tbaa !24
  store i32 %i.cen, ptr %i.cel, align 4, !tbaa !24
  %i.ceo = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i645, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i646.3 = icmp eq i64 %i.ceo, %.0.i.i.i.i.i.i.i.i.i.i.i.i636
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i646.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i637, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644, !llvm.loop !324

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i637: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644, %middle.block3174, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i635
  %i.cep = icmp sgt i64 %i.cdg, 3
  br i1 %i.cep, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i642, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i638

._crit_edge.i.i.i.i.i.i.i.i.i.i.i638:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i642, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i637
  %i.ceq = icmp slt i64 %i.cdj, %i.ccw
  br i1 %i.ceq, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.preheader, label %.loopexit2809

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.preheader:    ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i638
  %i.cer = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i636, %i.cdi
  %i.ces = sub i64 %i.ccw, %i.cer                 ; 3 uses
  %min.iters.check3180 = icmp ult i64 %i.ces, 16
  br i1 %min.iters.check3180, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.preheader3776, label %vector.memcheck3181

vector.memcheck3181:                              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.preheader
  %i.cet = shl nsw i64 %i.ccf, 2
  %i.ceu = add i64 %i.cet, %i.ccy
  %i.cev = sub i64 %i.ccv, %i.ceu
  %diff.check3182 = icmp ugt i64 %i.cev, -32
  br i1 %diff.check3182, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.preheader3776, label %vector.ph3183

vector.ph3183:                                    ; preds = %vector.memcheck3181
  %n.vec3184 = and i64 %i.ces, -8                 ; 3 uses
  %i.cew = add i64 %i.cdj, %n.vec3184
  br label %vector.body3185

vector.body3185:                                  ; preds = %vector.body3185, %vector.ph3183
  %index3186 = phi i64 [ 0, %vector.ph3183 ], [ %index.next3189, %vector.body3185 ] ; 2 uses
  %i.cex = add i64 %i.cdj, %index3186             ; 2 uses
  %i.cey = getelementptr inbounds [4 x i8], ptr %i.ccz, i64 %i.cex ; 2 uses
  %i.cez = getelementptr inbounds [4 x i8], ptr %i.ccu, i64 %i.cex ; 2 uses
  %i.cfa = getelementptr inbounds nuw i8, ptr %i.cez, i64 16
  %wide.load3187 = load <4 x i32>, ptr %i.cez, align 4, !tbaa !24
  %wide.load3188 = load <4 x i32>, ptr %i.cfa, align 4, !tbaa !24
  %i.cfb = getelementptr inbounds nuw i8, ptr %i.cey, i64 16
  store <4 x i32> %wide.load3187, ptr %i.cey, align 4, !tbaa !24
  store <4 x i32> %wide.load3188, ptr %i.cfb, align 4, !tbaa !24
  %index.next3189 = add nuw i64 %index3186, 8     ; 2 uses
  %i.cfc = icmp eq i64 %index.next3189, %n.vec3184
  br i1 %i.cfc, label %middle.block3190, label %vector.body3185, !llvm.loop !325

middle.block3190:                                 ; preds = %vector.body3185
  %cmp.n3191 = icmp eq i64 %i.ces, %n.vec3184
  br i1 %cmp.n3191, label %.loopexit2809, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.preheader3776

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.preheader3776: ; preds = %vector.memcheck3181, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.preheader, %middle.block3190
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i640.ph = phi i64 [ %i.cdj, %vector.memcheck3181 ], [ %i.cdj, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.preheader ], [ %i.cew, %middle.block3190 ] ; 4 uses
  %i.cfd = sub i64 %i.ccw, %.05.i18.i.i.i.i.i.i.i.i.i.i.i640.ph
  %xtraiter3842 = and i64 %i.cfd, 3               ; 2 uses
  %lcmp.mod3843.not = icmp eq i64 %xtraiter3842, 0
  br i1 %lcmp.mod3843.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.prol:         ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.preheader3776, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i640.prol = phi i64 [ %i.cfh, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i640.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.preheader3776 ] ; 3 uses
  %prol.iter3844 = phi i64 [ %prol.iter3844.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.preheader3776 ]
  %i.cfe = getelementptr inbounds [4 x i8], ptr %i.ccz, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i640.prol
  %i.cff = getelementptr inbounds [4 x i8], ptr %i.ccu, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i640.prol
  %i.cfg = load i32, ptr %i.cff, align 4, !tbaa !24
  store i32 %i.cfg, ptr %i.cfe, align 4, !tbaa !24
  %i.cfh = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i640.prol, 1 ; 2 uses
  %prol.iter3844.next = add i64 %prol.iter3844, 1 ; 2 uses
  %prol.iter3844.cmp.not = icmp eq i64 %prol.iter3844.next, %xtraiter3842
  br i1 %prol.iter3844.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.prol, !llvm.loop !326

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.preheader3776
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i640.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i640.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.preheader3776 ], [ %i.cfh, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.prol ]
  %i.cfi = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i640.ph, %i.ccw
  %i.cfj = icmp ugt i64 %i.cfi, -4
  br i1 %i.cfj, label %.loopexit2809, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i640 = phi i64 [ %i.cfz, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i640.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.prol.loopexit ] ; 6 uses
  %i.cfk = getelementptr inbounds [4 x i8], ptr %i.ccz, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i640
  %i.cfl = getelementptr inbounds [4 x i8], ptr %i.ccu, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i640
  %i.cfm = load i32, ptr %i.cfl, align 4, !tbaa !24
  store i32 %i.cfm, ptr %i.cfk, align 4, !tbaa !24
  %i.cfn = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i640, 1 ; 2 uses
  %i.cfo = getelementptr inbounds [4 x i8], ptr %i.ccz, i64 %i.cfn
  %i.cfp = getelementptr inbounds [4 x i8], ptr %i.ccu, i64 %i.cfn
  %i.cfq = load i32, ptr %i.cfp, align 4, !tbaa !24
  store i32 %i.cfq, ptr %i.cfo, align 4, !tbaa !24
  %i.cfr = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i640, 2 ; 2 uses
  %i.cfs = getelementptr inbounds [4 x i8], ptr %i.ccz, i64 %i.cfr
  %i.cft = getelementptr inbounds [4 x i8], ptr %i.ccu, i64 %i.cfr
  %i.cfu = load i32, ptr %i.cft, align 4, !tbaa !24
  store i32 %i.cfu, ptr %i.cfs, align 4, !tbaa !24
  %i.cfv = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i640, 3 ; 2 uses
  %i.cfw = getelementptr inbounds [4 x i8], ptr %i.ccz, i64 %i.cfv
  %i.cfx = getelementptr inbounds [4 x i8], ptr %i.ccu, i64 %i.cfv
  %i.cfy = load i32, ptr %i.cfx, align 4, !tbaa !24
  store i32 %i.cfy, ptr %i.cfw, align 4, !tbaa !24
  %i.cfz = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i640, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i641.3 = icmp eq i64 %i.cfz, %i.ccw
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i641.3, label %.loopexit2809, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639, !llvm.loop !327

.lr.ph.i.i.i.i.i.i.i.i.i.i.i642:                  ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i637, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i642
  %.021.i.i.i.i.i.i.i.i.i.i.i643 = phi i64 [ %i.cgd, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i642 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i636, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i637 ] ; 3 uses
  %i.cga = getelementptr inbounds [4 x i8], ptr %i.ccz, i64 %.021.i.i.i.i.i.i.i.i.i.i.i643
  %i.cgb = getelementptr inbounds [4 x i8], ptr %i.ccu, i64 %.021.i.i.i.i.i.i.i.i.i.i.i643
  %i.cgc = load <2 x i64>, ptr %i.cgb, align 1, !tbaa !22
  store <2 x i64> %i.cgc, ptr %i.cga, align 16, !tbaa !22
  %i.cgd = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i643, 4 ; 2 uses
  %i.cge = icmp slt i64 %i.cgd, %i.cdj
  br i1 %i.cge, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i642, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i638, !llvm.loop !241

.loopexit2809:                                    ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639, %middle.block3190, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i638
  %i.cgf = load ptr, ptr %1, align 8, !tbaa !20, !noalias !470 ; 2 uses
  %i.cgg = ptrtoaddr ptr %i.cgf to i64            ; 2 uses
  %i.cgh = load i64, ptr %i.a, align 8, !tbaa !21, !noalias !470 ; 11 uses
  %.idx2781 = shl i64 %i.cgh, 3                   ; 3 uses
  %i.cgi = getelementptr inbounds i8, ptr %i.cgf, i64 %.idx2781 ; 13 uses
  %i.cgj = add nsw i64 %i.ccw, %i.ccf             ; 4 uses
  %i.cgk = load ptr, ptr %62, align 8, !tbaa !26, !noalias !471 ; 2 uses
  %i.cgl = ptrtoaddr ptr %i.cgk to i64            ; 2 uses
  %i.cgm = getelementptr inbounds [4 x i8], ptr %i.cgk, i64 %i.cgj ; 14 uses
  %i.cgn = ptrtoint ptr %i.cgm to i64             ; 2 uses
  %i.cgo = and i64 %i.cgn, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i653 = icmp eq i64 %i.cgo, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i653, label %bb.dv, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i654

bb.dv:                                            ; preds = %.loopexit2809
  %i.cgp = lshr exact i64 %i.cgn, 2
  %i.cgq = sub nsw i64 0, %i.cgp
  %i.cgr = and i64 %i.cgq, 3
  %i.cgs = call i64 @llvm.smin.i64(i64 %i.cgr, i64 %i.cgh)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i654

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i654: ; preds = %bb.dv, %.loopexit2809
  %.0.i.i.i.i.i.i.i.i.i.i.i.i655 = phi i64 [ %i.cgs, %bb.dv ], [ %i.cgh, %.loopexit2809 ] ; 11 uses
  %i.cgt = sub nsw i64 %i.cgh, %.0.i.i.i.i.i.i.i.i.i.i.i.i655 ; 2 uses
  %i.cgu = sdiv i64 %i.cgt, 4
  %i.cgv = shl nsw i64 %i.cgu, 2                  ; 2 uses
  %i.cgw = add nsw i64 %i.cgv, %.0.i.i.i.i.i.i.i.i.i.i.i.i655 ; 6 uses
  %i.cgx = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i655, 0
  br i1 %i.cgx, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i656

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.preheader:      ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i654
  %min.iters.check3196 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i655, 16
  br i1 %min.iters.check3196, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.preheader3775, label %vector.memcheck3197

vector.memcheck3197:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.preheader
  %i.cgy = shl nsw i64 %i.cgj, 2
  %i.cgz = add i64 %i.cgy, %i.cgl
  %i.cha = add i64 %.idx2781, %i.cgg
  %i.chb = sub i64 %i.cha, %i.cgz
  %diff.check3198 = icmp ugt i64 %i.chb, -32
  br i1 %diff.check3198, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.preheader3775, label %vector.ph3199

vector.ph3199:                                    ; preds = %vector.memcheck3197
  %n.vec3200 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i655, 9223372036854775800 ; 3 uses
  br label %vector.body3201

vector.body3201:                                  ; preds = %vector.body3201, %vector.ph3199
  %index3202 = phi i64 [ 0, %vector.ph3199 ], [ %index.next3205, %vector.body3201 ] ; 3 uses
  %i.chc = getelementptr inbounds nuw [4 x i8], ptr %i.cgm, i64 %index3202 ; 2 uses
  %i.chd = getelementptr inbounds nuw [4 x i8], ptr %i.cgi, i64 %index3202 ; 2 uses
  %i.che = getelementptr inbounds nuw i8, ptr %i.chd, i64 16
  %wide.load3203 = load <4 x i32>, ptr %i.chd, align 4, !tbaa !24
  %wide.load3204 = load <4 x i32>, ptr %i.che, align 4, !tbaa !24
  %i.chf = getelementptr inbounds nuw i8, ptr %i.chc, i64 16
  store <4 x i32> %wide.load3203, ptr %i.chc, align 4, !tbaa !24
  store <4 x i32> %wide.load3204, ptr %i.chf, align 4, !tbaa !24
  %index.next3205 = add nuw i64 %index3202, 8     ; 2 uses
  %i.chg = icmp eq i64 %index.next3205, %n.vec3200
  br i1 %i.chg, label %middle.block3206, label %vector.body3201, !llvm.loop !332

middle.block3206:                                 ; preds = %vector.body3201
  %cmp.n3207 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i655, %n.vec3200
  br i1 %cmp.n3207, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i656, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.preheader3775

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.preheader3775:  ; preds = %vector.memcheck3197, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.preheader, %middle.block3206
  %.05.i.i.i.i.i.i.i.i.i.i.i.i664.ph = phi i64 [ 0, %vector.memcheck3197 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.preheader ], [ %n.vec3200, %middle.block3206 ] ; 3 uses
  %xtraiter3845 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i655, 3 ; 2 uses
  %lcmp.mod3846.not = icmp eq i64 %xtraiter3845, 0
  br i1 %lcmp.mod3846.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.prol:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.preheader3775, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i664.prol = phi i64 [ %i.chk, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i664.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.preheader3775 ] ; 3 uses
  %prol.iter3847 = phi i64 [ %prol.iter3847.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.preheader3775 ]
  %i.chh = getelementptr inbounds nuw [4 x i8], ptr %i.cgm, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i664.prol
  %i.chi = getelementptr inbounds nuw [4 x i8], ptr %i.cgi, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i664.prol
  %i.chj = load i32, ptr %i.chi, align 4, !tbaa !24
  store i32 %i.chj, ptr %i.chh, align 4, !tbaa !24
  %i.chk = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i664.prol, 1 ; 2 uses
  %prol.iter3847.next = add i64 %prol.iter3847, 1 ; 2 uses
  %prol.iter3847.cmp.not = icmp eq i64 %prol.iter3847.next, %xtraiter3845
  br i1 %prol.iter3847.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.prol, !llvm.loop !333

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.prol.loopexit:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.preheader3775
  %.05.i.i.i.i.i.i.i.i.i.i.i.i664.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i664.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.preheader3775 ], [ %i.chk, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.prol ]
  %i.chl = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i664.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i655
  %i.chm = icmp ugt i64 %i.chl, -4
  br i1 %i.chm, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i656, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663
  %.05.i.i.i.i.i.i.i.i.i.i.i.i664 = phi i64 [ %i.cic, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i664.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.prol.loopexit ] ; 6 uses
  %i.chn = getelementptr inbounds nuw [4 x i8], ptr %i.cgm, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i664
  %i.cho = getelementptr inbounds nuw [4 x i8], ptr %i.cgi, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i664
  %i.chp = load i32, ptr %i.cho, align 4, !tbaa !24
  store i32 %i.chp, ptr %i.chn, align 4, !tbaa !24
  %i.chq = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i664, 1 ; 2 uses
  %i.chr = getelementptr inbounds nuw [4 x i8], ptr %i.cgm, i64 %i.chq
  %i.chs = getelementptr inbounds nuw [4 x i8], ptr %i.cgi, i64 %i.chq
  %i.cht = load i32, ptr %i.chs, align 4, !tbaa !24
  store i32 %i.cht, ptr %i.chr, align 4, !tbaa !24
  %i.chu = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i664, 2 ; 2 uses
  %i.chv = getelementptr inbounds nuw [4 x i8], ptr %i.cgm, i64 %i.chu
  %i.chw = getelementptr inbounds nuw [4 x i8], ptr %i.cgi, i64 %i.chu
  %i.chx = load i32, ptr %i.chw, align 4, !tbaa !24
  store i32 %i.chx, ptr %i.chv, align 4, !tbaa !24
  %i.chy = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i664, 3 ; 2 uses
  %i.chz = getelementptr inbounds nuw [4 x i8], ptr %i.cgm, i64 %i.chy
  %i.cia = getelementptr inbounds nuw [4 x i8], ptr %i.cgi, i64 %i.chy
  %i.cib = load i32, ptr %i.cia, align 4, !tbaa !24
  store i32 %i.cib, ptr %i.chz, align 4, !tbaa !24
  %i.cic = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i664, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i665.3 = icmp eq i64 %i.cic, %.0.i.i.i.i.i.i.i.i.i.i.i.i655
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i665.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i656, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663, !llvm.loop !334

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i656: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663, %middle.block3206, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i654
  %i.cid = icmp sgt i64 %i.cgt, 3
  br i1 %i.cid, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i661, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i657

._crit_edge.i.i.i.i.i.i.i.i.i.i.i657:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i661, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i656
  %i.cie = icmp slt i64 %i.cgw, %i.cgh
  br i1 %i.cie, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.preheader, label %.loopexit2808

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.preheader:    ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i657
  %i.cif = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i655, %i.cgv
  %i.cig = sub i64 %i.cgh, %i.cif                 ; 3 uses
  %min.iters.check3212 = icmp ult i64 %i.cig, 16
  br i1 %min.iters.check3212, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.preheader3774, label %vector.memcheck3213

vector.memcheck3213:                              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.preheader
  %i.cih = shl nsw i64 %i.cgj, 2
  %i.cii = add i64 %i.cih, %i.cgl
  %i.cij = add i64 %.idx2781, %i.cgg
  %i.cik = sub i64 %i.cij, %i.cii
  %diff.check3214 = icmp ugt i64 %i.cik, -32
  br i1 %diff.check3214, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.preheader3774, label %vector.ph3215

vector.ph3215:                                    ; preds = %vector.memcheck3213
  %n.vec3216 = and i64 %i.cig, -8                 ; 3 uses
  %i.cil = add i64 %i.cgw, %n.vec3216
  br label %vector.body3217

vector.body3217:                                  ; preds = %vector.body3217, %vector.ph3215
  %index3218 = phi i64 [ 0, %vector.ph3215 ], [ %index.next3221, %vector.body3217 ] ; 2 uses
  %i.cim = add i64 %i.cgw, %index3218             ; 2 uses
  %i.cin = getelementptr inbounds [4 x i8], ptr %i.cgm, i64 %i.cim ; 2 uses
  %i.cio = getelementptr inbounds [4 x i8], ptr %i.cgi, i64 %i.cim ; 2 uses
  %i.cip = getelementptr inbounds nuw i8, ptr %i.cio, i64 16
  %wide.load3219 = load <4 x i32>, ptr %i.cio, align 4, !tbaa !24
  %wide.load3220 = load <4 x i32>, ptr %i.cip, align 4, !tbaa !24
  %i.ciq = getelementptr inbounds nuw i8, ptr %i.cin, i64 16
  store <4 x i32> %wide.load3219, ptr %i.cin, align 4, !tbaa !24
  store <4 x i32> %wide.load3220, ptr %i.ciq, align 4, !tbaa !24
  %index.next3221 = add nuw i64 %index3218, 8     ; 2 uses
  %i.cir = icmp eq i64 %index.next3221, %n.vec3216
  br i1 %i.cir, label %middle.block3222, label %vector.body3217, !llvm.loop !335

middle.block3222:                                 ; preds = %vector.body3217
  %cmp.n3223 = icmp eq i64 %i.cig, %n.vec3216
  br i1 %cmp.n3223, label %.loopexit2808, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.preheader3774

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.preheader3774: ; preds = %vector.memcheck3213, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.preheader, %middle.block3222
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i659.ph = phi i64 [ %i.cgw, %vector.memcheck3213 ], [ %i.cgw, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.preheader ], [ %i.cil, %middle.block3222 ] ; 4 uses
  %i.cis = sub i64 %i.cgh, %.05.i18.i.i.i.i.i.i.i.i.i.i.i659.ph
  %xtraiter3848 = and i64 %i.cis, 3               ; 2 uses
  %lcmp.mod3849.not = icmp eq i64 %xtraiter3848, 0
  br i1 %lcmp.mod3849.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.prol:         ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.preheader3774, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i659.prol = phi i64 [ %i.ciw, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i659.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.preheader3774 ] ; 3 uses
  %prol.iter3850 = phi i64 [ %prol.iter3850.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.preheader3774 ]
  %i.cit = getelementptr inbounds [4 x i8], ptr %i.cgm, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i659.prol
  %i.ciu = getelementptr inbounds [4 x i8], ptr %i.cgi, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i659.prol
  %i.civ = load i32, ptr %i.ciu, align 4, !tbaa !24
  store i32 %i.civ, ptr %i.cit, align 4, !tbaa !24
  %i.ciw = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i659.prol, 1 ; 2 uses
  %prol.iter3850.next = add i64 %prol.iter3850, 1 ; 2 uses
  %prol.iter3850.cmp.not = icmp eq i64 %prol.iter3850.next, %xtraiter3848
  br i1 %prol.iter3850.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.prol, !llvm.loop !336

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.preheader3774
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i659.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i659.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.preheader3774 ], [ %i.ciw, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.prol ]
  %i.cix = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i659.ph, %i.cgh
  %i.ciy = icmp ugt i64 %i.cix, -4
  br i1 %i.ciy, label %.loopexit2808, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i659 = phi i64 [ %i.cjo, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i659.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.prol.loopexit ] ; 6 uses
  %i.ciz = getelementptr inbounds [4 x i8], ptr %i.cgm, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i659
  %i.cja = getelementptr inbounds [4 x i8], ptr %i.cgi, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i659
  %i.cjb = load i32, ptr %i.cja, align 4, !tbaa !24
  store i32 %i.cjb, ptr %i.ciz, align 4, !tbaa !24
  %i.cjc = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i659, 1 ; 2 uses
  %i.cjd = getelementptr inbounds [4 x i8], ptr %i.cgm, i64 %i.cjc
  %i.cje = getelementptr inbounds [4 x i8], ptr %i.cgi, i64 %i.cjc
  %i.cjf = load i32, ptr %i.cje, align 4, !tbaa !24
  store i32 %i.cjf, ptr %i.cjd, align 4, !tbaa !24
  %i.cjg = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i659, 2 ; 2 uses
  %i.cjh = getelementptr inbounds [4 x i8], ptr %i.cgm, i64 %i.cjg
  %i.cji = getelementptr inbounds [4 x i8], ptr %i.cgi, i64 %i.cjg
  %i.cjj = load i32, ptr %i.cji, align 4, !tbaa !24
  store i32 %i.cjj, ptr %i.cjh, align 4, !tbaa !24
  %i.cjk = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i659, 3 ; 2 uses
  %i.cjl = getelementptr inbounds [4 x i8], ptr %i.cgm, i64 %i.cjk
  %i.cjm = getelementptr inbounds [4 x i8], ptr %i.cgi, i64 %i.cjk
  %i.cjn = load i32, ptr %i.cjm, align 4, !tbaa !24
  store i32 %i.cjn, ptr %i.cjl, align 4, !tbaa !24
  %i.cjo = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i659, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i660.3 = icmp eq i64 %i.cjo, %i.cgh
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i660.3, label %.loopexit2808, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658, !llvm.loop !337

.lr.ph.i.i.i.i.i.i.i.i.i.i.i661:                  ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i656, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i661
  %.021.i.i.i.i.i.i.i.i.i.i.i662 = phi i64 [ %i.cjs, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i661 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i655, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i656 ] ; 3 uses
  %i.cjp = getelementptr inbounds [4 x i8], ptr %i.cgm, i64 %.021.i.i.i.i.i.i.i.i.i.i.i662
  %i.cjq = getelementptr inbounds [4 x i8], ptr %i.cgi, i64 %.021.i.i.i.i.i.i.i.i.i.i.i662
  %i.cjr = load <2 x i64>, ptr %i.cjq, align 1, !tbaa !22
  store <2 x i64> %i.cjr, ptr %i.cjp, align 16, !tbaa !22
  %i.cjs = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i662, 4 ; 2 uses
  %i.cjt = icmp slt i64 %i.cjs, %i.cgw
  br i1 %i.cjt, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i661, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i657, !llvm.loop !241

.loopexit2808:                                    ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658, %middle.block3222, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i657
  %i.cju = load ptr, ptr %1, align 8, !tbaa !20, !noalias !472 ; 2 uses
  %i.cjv = ptrtoaddr ptr %i.cju to i64            ; 2 uses
  %i.cjw = load i64, ptr %i.a, align 8, !tbaa !21, !noalias !472 ; 13 uses
  %i.cjx = getelementptr inbounds [4 x i8], ptr %i.cju, i64 %i.cjw ; 13 uses
  %i.cjy = add nsw i64 %i.cgh, %i.cgj             ; 4 uses
  %i.cjz = load ptr, ptr %62, align 8, !tbaa !26, !noalias !473 ; 2 uses
  %i.cka = ptrtoaddr ptr %i.cjz to i64            ; 2 uses
  %i.ckb = getelementptr inbounds [4 x i8], ptr %i.cjz, i64 %i.cjy ; 14 uses
  %i.ckc = ptrtoint ptr %i.ckb to i64             ; 2 uses
  %i.ckd = and i64 %i.ckc, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i672 = icmp eq i64 %i.ckd, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i672, label %bb.dw, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i673

bb.dw:                                            ; preds = %.loopexit2808
  %i.cke = lshr exact i64 %i.ckc, 2
  %i.ckf = sub nsw i64 0, %i.cke
  %i.ckg = and i64 %i.ckf, 3
  %i.ckh = call i64 @llvm.smin.i64(i64 %i.ckg, i64 %i.cjw)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i673

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i673: ; preds = %bb.dw, %.loopexit2808
  %.0.i.i.i.i.i.i.i.i.i.i.i.i674 = phi i64 [ %i.ckh, %bb.dw ], [ %i.cjw, %.loopexit2808 ] ; 11 uses
  %i.cki = sub nsw i64 %i.cjw, %.0.i.i.i.i.i.i.i.i.i.i.i.i674 ; 2 uses
  %i.ckj = sdiv i64 %i.cki, 4
  %i.ckk = shl nsw i64 %i.ckj, 2                  ; 2 uses
  %i.ckl = add nsw i64 %i.ckk, %.0.i.i.i.i.i.i.i.i.i.i.i.i674 ; 6 uses
  %i.ckm = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i674, 0
  br i1 %i.ckm, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i675

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.preheader:      ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i673
  %min.iters.check3228 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i674, 20
  br i1 %min.iters.check3228, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.preheader3773, label %vector.memcheck3229

vector.memcheck3229:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.preheader
  %i.ckn = shl nsw i64 %i.cjy, 2
  %i.cko = shl i64 %i.cjw, 2
  %i.ckp = add i64 %i.ckn, %i.cka
  %i.ckq = add i64 %i.cko, %i.cjv
  %i.ckr = sub i64 %i.ckq, %i.ckp
  %diff.check3230 = icmp ugt i64 %i.ckr, -32
  br i1 %diff.check3230, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.preheader3773, label %vector.ph3231

vector.ph3231:                                    ; preds = %vector.memcheck3229
  %n.vec3232 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i674, 9223372036854775800 ; 3 uses
  br label %vector.body3233

vector.body3233:                                  ; preds = %vector.body3233, %vector.ph3231
  %index3234 = phi i64 [ 0, %vector.ph3231 ], [ %index.next3237, %vector.body3233 ] ; 3 uses
  %i.cks = getelementptr inbounds nuw [4 x i8], ptr %i.ckb, i64 %index3234 ; 2 uses
  %i.ckt = getelementptr inbounds nuw [4 x i8], ptr %i.cjx, i64 %index3234 ; 2 uses
  %i.cku = getelementptr inbounds nuw i8, ptr %i.ckt, i64 16
  %wide.load3235 = load <4 x i32>, ptr %i.ckt, align 4, !tbaa !24
  %wide.load3236 = load <4 x i32>, ptr %i.cku, align 4, !tbaa !24
  %i.ckv = getelementptr inbounds nuw i8, ptr %i.cks, i64 16
  store <4 x i32> %wide.load3235, ptr %i.cks, align 4, !tbaa !24
  store <4 x i32> %wide.load3236, ptr %i.ckv, align 4, !tbaa !24
  %index.next3237 = add nuw i64 %index3234, 8     ; 2 uses
  %i.ckw = icmp eq i64 %index.next3237, %n.vec3232
  br i1 %i.ckw, label %middle.block3238, label %vector.body3233, !llvm.loop !342

middle.block3238:                                 ; preds = %vector.body3233
  %cmp.n3239 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i674, %n.vec3232
  br i1 %cmp.n3239, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i675, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.preheader3773

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.preheader3773:  ; preds = %vector.memcheck3229, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.preheader, %middle.block3238
  %.05.i.i.i.i.i.i.i.i.i.i.i.i683.ph = phi i64 [ 0, %vector.memcheck3229 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.preheader ], [ %n.vec3232, %middle.block3238 ] ; 3 uses
  %xtraiter3851 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i674, 3 ; 2 uses
  %lcmp.mod3852.not = icmp eq i64 %xtraiter3851, 0
  br i1 %lcmp.mod3852.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.prol:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.preheader3773, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i683.prol = phi i64 [ %i.cla, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i683.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.preheader3773 ] ; 3 uses
  %prol.iter3853 = phi i64 [ %prol.iter3853.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.preheader3773 ]
  %i.ckx = getelementptr inbounds nuw [4 x i8], ptr %i.ckb, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i683.prol
  %i.cky = getelementptr inbounds nuw [4 x i8], ptr %i.cjx, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i683.prol
  %i.ckz = load i32, ptr %i.cky, align 4, !tbaa !24
  store i32 %i.ckz, ptr %i.ckx, align 4, !tbaa !24
  %i.cla = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i683.prol, 1 ; 2 uses
  %prol.iter3853.next = add i64 %prol.iter3853, 1 ; 2 uses
  %prol.iter3853.cmp.not = icmp eq i64 %prol.iter3853.next, %xtraiter3851
  br i1 %prol.iter3853.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.prol, !llvm.loop !343

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.prol.loopexit:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.preheader3773
  %.05.i.i.i.i.i.i.i.i.i.i.i.i683.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i683.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.preheader3773 ], [ %i.cla, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.prol ]
  %i.clb = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i683.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i674
  %i.clc = icmp ugt i64 %i.clb, -4
  br i1 %i.clc, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i675, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682
  %.05.i.i.i.i.i.i.i.i.i.i.i.i683 = phi i64 [ %i.cls, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i683.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.prol.loopexit ] ; 6 uses
  %i.cld = getelementptr inbounds nuw [4 x i8], ptr %i.ckb, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i683
  %i.cle = getelementptr inbounds nuw [4 x i8], ptr %i.cjx, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i683
  %i.clf = load i32, ptr %i.cle, align 4, !tbaa !24
  store i32 %i.clf, ptr %i.cld, align 4, !tbaa !24
  %i.clg = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i683, 1 ; 2 uses
  %i.clh = getelementptr inbounds nuw [4 x i8], ptr %i.ckb, i64 %i.clg
  %i.cli = getelementptr inbounds nuw [4 x i8], ptr %i.cjx, i64 %i.clg
  %i.clj = load i32, ptr %i.cli, align 4, !tbaa !24
  store i32 %i.clj, ptr %i.clh, align 4, !tbaa !24
  %i.clk = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i683, 2 ; 2 uses
  %i.cll = getelementptr inbounds nuw [4 x i8], ptr %i.ckb, i64 %i.clk
  %i.clm = getelementptr inbounds nuw [4 x i8], ptr %i.cjx, i64 %i.clk
  %i.cln = load i32, ptr %i.clm, align 4, !tbaa !24
  store i32 %i.cln, ptr %i.cll, align 4, !tbaa !24
  %i.clo = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i683, 3 ; 2 uses
  %i.clp = getelementptr inbounds nuw [4 x i8], ptr %i.ckb, i64 %i.clo
  %i.clq = getelementptr inbounds nuw [4 x i8], ptr %i.cjx, i64 %i.clo
  %i.clr = load i32, ptr %i.clq, align 4, !tbaa !24
  store i32 %i.clr, ptr %i.clp, align 4, !tbaa !24
  %i.cls = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i683, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i684.3 = icmp eq i64 %i.cls, %.0.i.i.i.i.i.i.i.i.i.i.i.i674
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i684.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i675, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682, !llvm.loop !344

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i675: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682, %middle.block3238, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i673
  %i.clt = icmp sgt i64 %i.cki, 3
  br i1 %i.clt, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i680, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i676

._crit_edge.i.i.i.i.i.i.i.i.i.i.i676:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i680, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i675
  %i.clu = icmp slt i64 %i.ckl, %i.cjw
  br i1 %i.clu, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.preheader, label %.loopexit2807

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.preheader:    ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i676
  %i.clv = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i674, %i.ckk
  %i.clw = sub i64 %i.cjw, %i.clv                 ; 3 uses
  %min.iters.check3244 = icmp ult i64 %i.clw, 20
  br i1 %min.iters.check3244, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.preheader3772, label %vector.memcheck3245

vector.memcheck3245:                              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.preheader
  %i.clx = shl nsw i64 %i.cjy, 2
  %i.cly = shl i64 %i.cjw, 2
  %i.clz = add i64 %i.clx, %i.cka
  %i.cma = add i64 %i.cly, %i.cjv
  %i.cmb = sub i64 %i.cma, %i.clz
  %diff.check3246 = icmp ugt i64 %i.cmb, -32
  br i1 %diff.check3246, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.preheader3772, label %vector.ph3247

vector.ph3247:                                    ; preds = %vector.memcheck3245
  %n.vec3248 = and i64 %i.clw, -8                 ; 3 uses
  %i.cmc = add i64 %i.ckl, %n.vec3248
  br label %vector.body3249

vector.body3249:                                  ; preds = %vector.body3249, %vector.ph3247
  %index3250 = phi i64 [ 0, %vector.ph3247 ], [ %index.next3253, %vector.body3249 ] ; 2 uses
  %i.cmd = add i64 %i.ckl, %index3250             ; 2 uses
  %i.cme = getelementptr inbounds [4 x i8], ptr %i.ckb, i64 %i.cmd ; 2 uses
  %i.cmf = getelementptr inbounds [4 x i8], ptr %i.cjx, i64 %i.cmd ; 2 uses
  %i.cmg = getelementptr inbounds nuw i8, ptr %i.cmf, i64 16
  %wide.load3251 = load <4 x i32>, ptr %i.cmf, align 4, !tbaa !24
  %wide.load3252 = load <4 x i32>, ptr %i.cmg, align 4, !tbaa !24
  %i.cmh = getelementptr inbounds nuw i8, ptr %i.cme, i64 16
  store <4 x i32> %wide.load3251, ptr %i.cme, align 4, !tbaa !24
  store <4 x i32> %wide.load3252, ptr %i.cmh, align 4, !tbaa !24
  %index.next3253 = add nuw i64 %index3250, 8     ; 2 uses
  %i.cmi = icmp eq i64 %index.next3253, %n.vec3248
  br i1 %i.cmi, label %middle.block3254, label %vector.body3249, !llvm.loop !345

middle.block3254:                                 ; preds = %vector.body3249
  %cmp.n3255 = icmp eq i64 %i.clw, %n.vec3248
  br i1 %cmp.n3255, label %.loopexit2807, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.preheader3772

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.preheader3772: ; preds = %vector.memcheck3245, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.preheader, %middle.block3254
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i678.ph = phi i64 [ %i.ckl, %vector.memcheck3245 ], [ %i.ckl, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.preheader ], [ %i.cmc, %middle.block3254 ] ; 4 uses
  %i.cmj = sub i64 %i.cjw, %.05.i18.i.i.i.i.i.i.i.i.i.i.i678.ph
  %xtraiter3854 = and i64 %i.cmj, 3               ; 2 uses
  %lcmp.mod3855.not = icmp eq i64 %xtraiter3854, 0
  br i1 %lcmp.mod3855.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.prol:         ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.preheader3772, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i678.prol = phi i64 [ %i.cmn, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i678.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.preheader3772 ] ; 3 uses
  %prol.iter3856 = phi i64 [ %prol.iter3856.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.preheader3772 ]
  %i.cmk = getelementptr inbounds [4 x i8], ptr %i.ckb, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i678.prol
  %i.cml = getelementptr inbounds [4 x i8], ptr %i.cjx, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i678.prol
  %i.cmm = load i32, ptr %i.cml, align 4, !tbaa !24
  store i32 %i.cmm, ptr %i.cmk, align 4, !tbaa !24
  %i.cmn = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i678.prol, 1 ; 2 uses
  %prol.iter3856.next = add i64 %prol.iter3856, 1 ; 2 uses
  %prol.iter3856.cmp.not = icmp eq i64 %prol.iter3856.next, %xtraiter3854
  br i1 %prol.iter3856.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.prol, !llvm.loop !346

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.preheader3772
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i678.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i678.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.preheader3772 ], [ %i.cmn, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.prol ]
  %i.cmo = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i678.ph, %i.cjw
  %i.cmp = icmp ugt i64 %i.cmo, -4
  br i1 %i.cmp, label %.loopexit2807, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i678 = phi i64 [ %i.cnf, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i678.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.prol.loopexit ] ; 6 uses
  %i.cmq = getelementptr inbounds [4 x i8], ptr %i.ckb, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i678
  %i.cmr = getelementptr inbounds [4 x i8], ptr %i.cjx, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i678
  %i.cms = load i32, ptr %i.cmr, align 4, !tbaa !24
  store i32 %i.cms, ptr %i.cmq, align 4, !tbaa !24
  %i.cmt = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i678, 1 ; 2 uses
  %i.cmu = getelementptr inbounds [4 x i8], ptr %i.ckb, i64 %i.cmt
  %i.cmv = getelementptr inbounds [4 x i8], ptr %i.cjx, i64 %i.cmt
  %i.cmw = load i32, ptr %i.cmv, align 4, !tbaa !24
  store i32 %i.cmw, ptr %i.cmu, align 4, !tbaa !24
  %i.cmx = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i678, 2 ; 2 uses
  %i.cmy = getelementptr inbounds [4 x i8], ptr %i.ckb, i64 %i.cmx
  %i.cmz = getelementptr inbounds [4 x i8], ptr %i.cjx, i64 %i.cmx
  %i.cna = load i32, ptr %i.cmz, align 4, !tbaa !24
  store i32 %i.cna, ptr %i.cmy, align 4, !tbaa !24
  %i.cnb = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i678, 3 ; 2 uses
  %i.cnc = getelementptr inbounds [4 x i8], ptr %i.ckb, i64 %i.cnb
  %i.cnd = getelementptr inbounds [4 x i8], ptr %i.cjx, i64 %i.cnb
  %i.cne = load i32, ptr %i.cnd, align 4, !tbaa !24
  store i32 %i.cne, ptr %i.cnc, align 4, !tbaa !24
  %i.cnf = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i678, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i679.3 = icmp eq i64 %i.cnf, %i.cjw
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i679.3, label %.loopexit2807, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677, !llvm.loop !347

.lr.ph.i.i.i.i.i.i.i.i.i.i.i680:                  ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i675, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i680
  %.021.i.i.i.i.i.i.i.i.i.i.i681 = phi i64 [ %i.cnj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i680 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i674, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i675 ] ; 3 uses
  %i.cng = getelementptr inbounds [4 x i8], ptr %i.ckb, i64 %.021.i.i.i.i.i.i.i.i.i.i.i681
  %i.cnh = getelementptr inbounds [4 x i8], ptr %i.cjx, i64 %.021.i.i.i.i.i.i.i.i.i.i.i681
  %i.cni = load <2 x i64>, ptr %i.cnh, align 1, !tbaa !22
  store <2 x i64> %i.cni, ptr %i.cng, align 16, !tbaa !22
  %i.cnj = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i681, 4 ; 2 uses
  %i.cnk = icmp slt i64 %i.cnj, %i.ckl
  br i1 %i.cnk, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i680, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i676, !llvm.loop !241

.loopexit2807:                                    ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677, %middle.block3254, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i676
  %i.cnl = load ptr, ptr %1, align 8, !tbaa !20, !noalias !474 ; 14 uses
  %i.cnm = ptrtoaddr ptr %i.cnl to i64            ; 2 uses
  %i.cnn = load i64, ptr %i.a, align 8, !tbaa !21, !noalias !474 ; 10 uses
  %i.cno = add nsw i64 %i.cjw, %i.cjy             ; 4 uses
  %i.cnp = load ptr, ptr %62, align 8, !tbaa !26, !noalias !475 ; 2 uses
  %i.cnq = ptrtoaddr ptr %i.cnp to i64            ; 2 uses
  %i.cnr = getelementptr inbounds [4 x i8], ptr %i.cnp, i64 %i.cno ; 14 uses
  %i.cns = ptrtoint ptr %i.cnr to i64             ; 2 uses
  %i.cnt = and i64 %i.cns, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i691 = icmp eq i64 %i.cnt, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i691, label %bb.dx, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i692

bb.dx:                                            ; preds = %.loopexit2807
  %i.cnu = lshr exact i64 %i.cns, 2
  %i.cnv = sub nsw i64 0, %i.cnu
  %i.cnw = and i64 %i.cnv, 3
  %i.cnx = call i64 @llvm.smin.i64(i64 %i.cnw, i64 %i.cnn)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i692

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i692: ; preds = %bb.dx, %.loopexit2807
  %.0.i.i.i.i.i.i.i.i.i.i.i.i693 = phi i64 [ %i.cnx, %bb.dx ], [ %i.cnn, %.loopexit2807 ] ; 11 uses
  %i.cny = sub nsw i64 %i.cnn, %.0.i.i.i.i.i.i.i.i.i.i.i.i693 ; 2 uses
  %i.cnz = sdiv i64 %i.cny, 4
  %i.coa = shl nsw i64 %i.cnz, 2                  ; 2 uses
  %i.cob = add nsw i64 %i.coa, %.0.i.i.i.i.i.i.i.i.i.i.i.i693 ; 6 uses
  %i.coc = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i693, 0
  br i1 %i.coc, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i694

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.preheader:      ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i692
  %min.iters.check3260 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i693, 16
  br i1 %min.iters.check3260, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.preheader3771, label %vector.memcheck3261

vector.memcheck3261:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.preheader
  %i.cod = shl nsw i64 %i.cno, 2
  %i.coe = add i64 %i.cod, %i.cnq
  %i.cof = sub i64 %i.cnm, %i.coe
  %diff.check3262 = icmp ugt i64 %i.cof, -32
  br i1 %diff.check3262, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.preheader3771, label %vector.ph3263

vector.ph3263:                                    ; preds = %vector.memcheck3261
  %n.vec3264 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i693, 9223372036854775800 ; 3 uses
  br label %vector.body3265

vector.body3265:                                  ; preds = %vector.body3265, %vector.ph3263
  %index3266 = phi i64 [ 0, %vector.ph3263 ], [ %index.next3269, %vector.body3265 ] ; 3 uses
  %i.cog = getelementptr inbounds nuw [4 x i8], ptr %i.cnr, i64 %index3266 ; 2 uses
  %i.coh = getelementptr inbounds nuw [4 x i8], ptr %i.cnl, i64 %index3266 ; 2 uses
  %i.coi = getelementptr inbounds nuw i8, ptr %i.coh, i64 16
  %wide.load3267 = load <4 x i32>, ptr %i.coh, align 4, !tbaa !24
  %wide.load3268 = load <4 x i32>, ptr %i.coi, align 4, !tbaa !24
  %i.coj = getelementptr inbounds nuw i8, ptr %i.cog, i64 16
  store <4 x i32> %wide.load3267, ptr %i.cog, align 4, !tbaa !24
  store <4 x i32> %wide.load3268, ptr %i.coj, align 4, !tbaa !24
  %index.next3269 = add nuw i64 %index3266, 8     ; 2 uses
  %i.cok = icmp eq i64 %index.next3269, %n.vec3264
  br i1 %i.cok, label %middle.block3270, label %vector.body3265, !llvm.loop !352

middle.block3270:                                 ; preds = %vector.body3265
  %cmp.n3271 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i693, %n.vec3264
  br i1 %cmp.n3271, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i694, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.preheader3771

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.preheader3771:  ; preds = %vector.memcheck3261, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.preheader, %middle.block3270
  %.05.i.i.i.i.i.i.i.i.i.i.i.i702.ph = phi i64 [ 0, %vector.memcheck3261 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.preheader ], [ %n.vec3264, %middle.block3270 ] ; 3 uses
  %xtraiter3857 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i693, 3 ; 2 uses
  %lcmp.mod3858.not = icmp eq i64 %xtraiter3857, 0
  br i1 %lcmp.mod3858.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.prol:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.preheader3771, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i702.prol = phi i64 [ %i.coo, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i702.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.preheader3771 ] ; 3 uses
  %prol.iter3859 = phi i64 [ %prol.iter3859.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.preheader3771 ]
  %i.col = getelementptr inbounds nuw [4 x i8], ptr %i.cnr, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i702.prol
  %i.com = getelementptr inbounds nuw [4 x i8], ptr %i.cnl, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i702.prol
  %i.con = load i32, ptr %i.com, align 4, !tbaa !24
  store i32 %i.con, ptr %i.col, align 4, !tbaa !24
  %i.coo = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i702.prol, 1 ; 2 uses
  %prol.iter3859.next = add i64 %prol.iter3859, 1 ; 2 uses
  %prol.iter3859.cmp.not = icmp eq i64 %prol.iter3859.next, %xtraiter3857
  br i1 %prol.iter3859.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.prol, !llvm.loop !353

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.prol.loopexit:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.preheader3771
  %.05.i.i.i.i.i.i.i.i.i.i.i.i702.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i702.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.preheader3771 ], [ %i.coo, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.prol ]
  %i.cop = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i702.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i693
  %i.coq = icmp ugt i64 %i.cop, -4
  br i1 %i.coq, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i694, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701
  %.05.i.i.i.i.i.i.i.i.i.i.i.i702 = phi i64 [ %i.cpg, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i702.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.prol.loopexit ] ; 6 uses
  %i.cor = getelementptr inbounds nuw [4 x i8], ptr %i.cnr, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i702
  %i.cos = getelementptr inbounds nuw [4 x i8], ptr %i.cnl, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i702
  %i.cot = load i32, ptr %i.cos, align 4, !tbaa !24
  store i32 %i.cot, ptr %i.cor, align 4, !tbaa !24
  %i.cou = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i702, 1 ; 2 uses
  %i.cov = getelementptr inbounds nuw [4 x i8], ptr %i.cnr, i64 %i.cou
  %i.cow = getelementptr inbounds nuw [4 x i8], ptr %i.cnl, i64 %i.cou
  %i.cox = load i32, ptr %i.cow, align 4, !tbaa !24
  store i32 %i.cox, ptr %i.cov, align 4, !tbaa !24
  %i.coy = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i702, 2 ; 2 uses
  %i.coz = getelementptr inbounds nuw [4 x i8], ptr %i.cnr, i64 %i.coy
  %i.cpa = getelementptr inbounds nuw [4 x i8], ptr %i.cnl, i64 %i.coy
  %i.cpb = load i32, ptr %i.cpa, align 4, !tbaa !24
  store i32 %i.cpb, ptr %i.coz, align 4, !tbaa !24
  %i.cpc = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i702, 3 ; 2 uses
  %i.cpd = getelementptr inbounds nuw [4 x i8], ptr %i.cnr, i64 %i.cpc
  %i.cpe = getelementptr inbounds nuw [4 x i8], ptr %i.cnl, i64 %i.cpc
  %i.cpf = load i32, ptr %i.cpe, align 4, !tbaa !24
  store i32 %i.cpf, ptr %i.cpd, align 4, !tbaa !24
  %i.cpg = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i702, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i703.3 = icmp eq i64 %i.cpg, %.0.i.i.i.i.i.i.i.i.i.i.i.i693
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i703.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i694, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701, !llvm.loop !354

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i694: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701, %middle.block3270, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i692
  %i.cph = icmp sgt i64 %i.cny, 3
  br i1 %i.cph, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i699, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i695

._crit_edge.i.i.i.i.i.i.i.i.i.i.i695:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i699, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i694
  %i.cpi = icmp slt i64 %i.cob, %i.cnn
  br i1 %i.cpi, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.preheader, label %.loopexit2806

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.preheader:    ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i695
  %i.cpj = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i693, %i.coa
  %i.cpk = sub i64 %i.cnn, %i.cpj                 ; 3 uses
  %min.iters.check3276 = icmp ult i64 %i.cpk, 16
  br i1 %min.iters.check3276, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.preheader3770, label %vector.memcheck3277

vector.memcheck3277:                              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.preheader
  %i.cpl = shl nsw i64 %i.cno, 2
  %i.cpm = add i64 %i.cpl, %i.cnq
  %i.cpn = sub i64 %i.cnm, %i.cpm
  %diff.check3278 = icmp ugt i64 %i.cpn, -32
  br i1 %diff.check3278, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.preheader3770, label %vector.ph3279

vector.ph3279:                                    ; preds = %vector.memcheck3277
  %n.vec3280 = and i64 %i.cpk, -8                 ; 3 uses
  %i.cpo = add i64 %i.cob, %n.vec3280
  br label %vector.body3281

vector.body3281:                                  ; preds = %vector.body3281, %vector.ph3279
  %index3282 = phi i64 [ 0, %vector.ph3279 ], [ %index.next3285, %vector.body3281 ] ; 2 uses
  %i.cpp = add i64 %i.cob, %index3282             ; 2 uses
  %i.cpq = getelementptr inbounds [4 x i8], ptr %i.cnr, i64 %i.cpp ; 2 uses
  %i.cpr = getelementptr inbounds [4 x i8], ptr %i.cnl, i64 %i.cpp ; 2 uses
  %i.cps = getelementptr inbounds nuw i8, ptr %i.cpr, i64 16
  %wide.load3283 = load <4 x i32>, ptr %i.cpr, align 4, !tbaa !24
  %wide.load3284 = load <4 x i32>, ptr %i.cps, align 4, !tbaa !24
  %i.cpt = getelementptr inbounds nuw i8, ptr %i.cpq, i64 16
  store <4 x i32> %wide.load3283, ptr %i.cpq, align 4, !tbaa !24
  store <4 x i32> %wide.load3284, ptr %i.cpt, align 4, !tbaa !24
  %index.next3285 = add nuw i64 %index3282, 8     ; 2 uses
  %i.cpu = icmp eq i64 %index.next3285, %n.vec3280
  br i1 %i.cpu, label %middle.block3286, label %vector.body3281, !llvm.loop !355

middle.block3286:                                 ; preds = %vector.body3281
  %cmp.n3287 = icmp eq i64 %i.cpk, %n.vec3280
  br i1 %cmp.n3287, label %.loopexit2806, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.preheader3770

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.preheader3770: ; preds = %vector.memcheck3277, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.preheader, %middle.block3286
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i697.ph = phi i64 [ %i.cob, %vector.memcheck3277 ], [ %i.cob, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.preheader ], [ %i.cpo, %middle.block3286 ] ; 4 uses
  %i.cpv = sub i64 %i.cnn, %.05.i18.i.i.i.i.i.i.i.i.i.i.i697.ph
  %xtraiter3860 = and i64 %i.cpv, 3               ; 2 uses
  %lcmp.mod3861.not = icmp eq i64 %xtraiter3860, 0
  br i1 %lcmp.mod3861.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.prol:         ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.preheader3770, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i697.prol = phi i64 [ %i.cpz, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i697.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.preheader3770 ] ; 3 uses
  %prol.iter3862 = phi i64 [ %prol.iter3862.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.preheader3770 ]
  %i.cpw = getelementptr inbounds [4 x i8], ptr %i.cnr, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i697.prol
  %i.cpx = getelementptr inbounds [4 x i8], ptr %i.cnl, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i697.prol
  %i.cpy = load i32, ptr %i.cpx, align 4, !tbaa !24
  store i32 %i.cpy, ptr %i.cpw, align 4, !tbaa !24
  %i.cpz = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i697.prol, 1 ; 2 uses
  %prol.iter3862.next = add i64 %prol.iter3862, 1 ; 2 uses
  %prol.iter3862.cmp.not = icmp eq i64 %prol.iter3862.next, %xtraiter3860
  br i1 %prol.iter3862.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.prol, !llvm.loop !356

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.preheader3770
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i697.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i697.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.preheader3770 ], [ %i.cpz, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.prol ]
  %i.cqa = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i697.ph, %i.cnn
  %i.cqb = icmp ugt i64 %i.cqa, -4
  br i1 %i.cqb, label %.loopexit2806, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i697 = phi i64 [ %i.cqr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i697.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.prol.loopexit ] ; 6 uses
  %i.cqc = getelementptr inbounds [4 x i8], ptr %i.cnr, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i697
  %i.cqd = getelementptr inbounds [4 x i8], ptr %i.cnl, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i697
  %i.cqe = load i32, ptr %i.cqd, align 4, !tbaa !24
  store i32 %i.cqe, ptr %i.cqc, align 4, !tbaa !24
  %i.cqf = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i697, 1 ; 2 uses
  %i.cqg = getelementptr inbounds [4 x i8], ptr %i.cnr, i64 %i.cqf
  %i.cqh = getelementptr inbounds [4 x i8], ptr %i.cnl, i64 %i.cqf
  %i.cqi = load i32, ptr %i.cqh, align 4, !tbaa !24
  store i32 %i.cqi, ptr %i.cqg, align 4, !tbaa !24
  %i.cqj = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i697, 2 ; 2 uses
  %i.cqk = getelementptr inbounds [4 x i8], ptr %i.cnr, i64 %i.cqj
  %i.cql = getelementptr inbounds [4 x i8], ptr %i.cnl, i64 %i.cqj
  %i.cqm = load i32, ptr %i.cql, align 4, !tbaa !24
  store i32 %i.cqm, ptr %i.cqk, align 4, !tbaa !24
  %i.cqn = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i697, 3 ; 2 uses
  %i.cqo = getelementptr inbounds [4 x i8], ptr %i.cnr, i64 %i.cqn
  %i.cqp = getelementptr inbounds [4 x i8], ptr %i.cnl, i64 %i.cqn
  %i.cqq = load i32, ptr %i.cqp, align 4, !tbaa !24
  store i32 %i.cqq, ptr %i.cqo, align 4, !tbaa !24
  %i.cqr = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i697, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i698.3 = icmp eq i64 %i.cqr, %i.cnn
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i698.3, label %.loopexit2806, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696, !llvm.loop !357

.lr.ph.i.i.i.i.i.i.i.i.i.i.i699:                  ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i694, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i699
  %.021.i.i.i.i.i.i.i.i.i.i.i700 = phi i64 [ %i.cqv, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i699 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i693, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i694 ] ; 3 uses
  %i.cqs = getelementptr inbounds [4 x i8], ptr %i.cnr, i64 %.021.i.i.i.i.i.i.i.i.i.i.i700
  %i.cqt = getelementptr inbounds [4 x i8], ptr %i.cnl, i64 %.021.i.i.i.i.i.i.i.i.i.i.i700
  %i.cqu = load <2 x i64>, ptr %i.cqt, align 1, !tbaa !22
  store <2 x i64> %i.cqu, ptr %i.cqs, align 16, !tbaa !22
  %i.cqv = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i700, 4 ; 2 uses
  %i.cqw = icmp slt i64 %i.cqv, %i.cob
  br i1 %i.cqw, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i699, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i695, !llvm.loop !241

.loopexit2806:                                    ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696, %middle.block3286, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i695
  %i.cqx = load ptr, ptr %1, align 8, !tbaa !20, !noalias !476 ; 2 uses
  %i.cqy = ptrtoaddr ptr %i.cqx to i64            ; 2 uses
  %i.cqz = load i64, ptr %i.a, align 8, !tbaa !21, !noalias !476 ; 11 uses
  %.idx2782 = shl i64 %i.cqz, 3                   ; 3 uses
  %i.cra = getelementptr inbounds i8, ptr %i.cqx, i64 %.idx2782 ; 13 uses
  %i.crb = add nsw i64 %i.cnn, %i.cno             ; 4 uses
  %i.crc = load ptr, ptr %62, align 8, !tbaa !26, !noalias !477 ; 2 uses
  %i.crd = ptrtoaddr ptr %i.crc to i64            ; 2 uses
  %i.cre = getelementptr inbounds [4 x i8], ptr %i.crc, i64 %i.crb ; 14 uses
  %i.crf = ptrtoint ptr %i.cre to i64             ; 2 uses
  %i.crg = and i64 %i.crf, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i710 = icmp eq i64 %i.crg, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i710, label %bb.dy, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i711

bb.dy:                                            ; preds = %.loopexit2806
  %i.crh = lshr exact i64 %i.crf, 2
  %i.cri = sub nsw i64 0, %i.crh
  %i.crj = and i64 %i.cri, 3
  %i.crk = call i64 @llvm.smin.i64(i64 %i.crj, i64 %i.cqz)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i711

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i711: ; preds = %bb.dy, %.loopexit2806
  %.0.i.i.i.i.i.i.i.i.i.i.i.i712 = phi i64 [ %i.crk, %bb.dy ], [ %i.cqz, %.loopexit2806 ] ; 11 uses
  %i.crl = sub nsw i64 %i.cqz, %.0.i.i.i.i.i.i.i.i.i.i.i.i712 ; 2 uses
  %i.crm = sdiv i64 %i.crl, 4
  %i.crn = shl nsw i64 %i.crm, 2                  ; 2 uses
  %i.cro = add nsw i64 %i.crn, %.0.i.i.i.i.i.i.i.i.i.i.i.i712 ; 6 uses
  %i.crp = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i712, 0
  br i1 %i.crp, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i713

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.preheader:      ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i711
  %min.iters.check3292 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i712, 16
  br i1 %min.iters.check3292, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.preheader3769, label %vector.memcheck3293

vector.memcheck3293:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.preheader
  %i.crq = shl nsw i64 %i.crb, 2
  %i.crr = add i64 %i.crq, %i.crd
  %i.crs = add i64 %.idx2782, %i.cqy
  %i.crt = sub i64 %i.crs, %i.crr
  %diff.check3294 = icmp ugt i64 %i.crt, -32
  br i1 %diff.check3294, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.preheader3769, label %vector.ph3295

vector.ph3295:                                    ; preds = %vector.memcheck3293
  %n.vec3296 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i712, 9223372036854775800 ; 3 uses
  br label %vector.body3297

vector.body3297:                                  ; preds = %vector.body3297, %vector.ph3295
  %index3298 = phi i64 [ 0, %vector.ph3295 ], [ %index.next3301, %vector.body3297 ] ; 3 uses
  %i.cru = getelementptr inbounds nuw [4 x i8], ptr %i.cre, i64 %index3298 ; 2 uses
  %i.crv = getelementptr inbounds nuw [4 x i8], ptr %i.cra, i64 %index3298 ; 2 uses
  %i.crw = getelementptr inbounds nuw i8, ptr %i.crv, i64 16
  %wide.load3299 = load <4 x i32>, ptr %i.crv, align 4, !tbaa !24
  %wide.load3300 = load <4 x i32>, ptr %i.crw, align 4, !tbaa !24
  %i.crx = getelementptr inbounds nuw i8, ptr %i.cru, i64 16
  store <4 x i32> %wide.load3299, ptr %i.cru, align 4, !tbaa !24
  store <4 x i32> %wide.load3300, ptr %i.crx, align 4, !tbaa !24
  %index.next3301 = add nuw i64 %index3298, 8     ; 2 uses
  %i.cry = icmp eq i64 %index.next3301, %n.vec3296
  br i1 %i.cry, label %middle.block3302, label %vector.body3297, !llvm.loop !362

middle.block3302:                                 ; preds = %vector.body3297
  %cmp.n3303 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i712, %n.vec3296
  br i1 %cmp.n3303, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i713, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.preheader3769

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.preheader3769:  ; preds = %vector.memcheck3293, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.preheader, %middle.block3302
  %.05.i.i.i.i.i.i.i.i.i.i.i.i721.ph = phi i64 [ 0, %vector.memcheck3293 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.preheader ], [ %n.vec3296, %middle.block3302 ] ; 3 uses
  %xtraiter3863 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i712, 3 ; 2 uses
  %lcmp.mod3864.not = icmp eq i64 %xtraiter3863, 0
  br i1 %lcmp.mod3864.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.prol:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.preheader3769, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i721.prol = phi i64 [ %i.csc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i721.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.preheader3769 ] ; 3 uses
  %prol.iter3865 = phi i64 [ %prol.iter3865.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.preheader3769 ]
  %i.crz = getelementptr inbounds nuw [4 x i8], ptr %i.cre, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i721.prol
  %i.csa = getelementptr inbounds nuw [4 x i8], ptr %i.cra, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i721.prol
  %i.csb = load i32, ptr %i.csa, align 4, !tbaa !24
  store i32 %i.csb, ptr %i.crz, align 4, !tbaa !24
  %i.csc = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i721.prol, 1 ; 2 uses
  %prol.iter3865.next = add i64 %prol.iter3865, 1 ; 2 uses
  %prol.iter3865.cmp.not = icmp eq i64 %prol.iter3865.next, %xtraiter3863
  br i1 %prol.iter3865.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.prol, !llvm.loop !363

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.prol.loopexit:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.preheader3769
  %.05.i.i.i.i.i.i.i.i.i.i.i.i721.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i721.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.preheader3769 ], [ %i.csc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.prol ]
  %i.csd = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i721.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i712
  %i.cse = icmp ugt i64 %i.csd, -4
  br i1 %i.cse, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i713, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720
  %.05.i.i.i.i.i.i.i.i.i.i.i.i721 = phi i64 [ %i.csu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i721.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.prol.loopexit ] ; 6 uses
  %i.csf = getelementptr inbounds nuw [4 x i8], ptr %i.cre, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i721
  %i.csg = getelementptr inbounds nuw [4 x i8], ptr %i.cra, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i721
  %i.csh = load i32, ptr %i.csg, align 4, !tbaa !24
  store i32 %i.csh, ptr %i.csf, align 4, !tbaa !24
  %i.csi = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i721, 1 ; 2 uses
  %i.csj = getelementptr inbounds nuw [4 x i8], ptr %i.cre, i64 %i.csi
  %i.csk = getelementptr inbounds nuw [4 x i8], ptr %i.cra, i64 %i.csi
  %i.csl = load i32, ptr %i.csk, align 4, !tbaa !24
  store i32 %i.csl, ptr %i.csj, align 4, !tbaa !24
  %i.csm = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i721, 2 ; 2 uses
  %i.csn = getelementptr inbounds nuw [4 x i8], ptr %i.cre, i64 %i.csm
  %i.cso = getelementptr inbounds nuw [4 x i8], ptr %i.cra, i64 %i.csm
  %i.csp = load i32, ptr %i.cso, align 4, !tbaa !24
  store i32 %i.csp, ptr %i.csn, align 4, !tbaa !24
  %i.csq = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i721, 3 ; 2 uses
  %i.csr = getelementptr inbounds nuw [4 x i8], ptr %i.cre, i64 %i.csq
  %i.css = getelementptr inbounds nuw [4 x i8], ptr %i.cra, i64 %i.csq
  %i.cst = load i32, ptr %i.css, align 4, !tbaa !24
  store i32 %i.cst, ptr %i.csr, align 4, !tbaa !24
  %i.csu = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i721, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i722.3 = icmp eq i64 %i.csu, %.0.i.i.i.i.i.i.i.i.i.i.i.i712
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i722.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i713, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720, !llvm.loop !364

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i713: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720, %middle.block3302, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i711
  %i.csv = icmp sgt i64 %i.crl, 3
  br i1 %i.csv, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i718, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i714

._crit_edge.i.i.i.i.i.i.i.i.i.i.i714:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i718, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i713
  %i.csw = icmp slt i64 %i.cro, %i.cqz
  br i1 %i.csw, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.preheader, label %.loopexit2805

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.preheader:    ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i714
  %i.csx = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i712, %i.crn
  %i.csy = sub i64 %i.cqz, %i.csx                 ; 3 uses
  %min.iters.check3308 = icmp ult i64 %i.csy, 16
  br i1 %min.iters.check3308, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.preheader3768, label %vector.memcheck3309

vector.memcheck3309:                              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.preheader
  %i.csz = shl nsw i64 %i.crb, 2
  %i.cta = add i64 %i.csz, %i.crd
  %i.ctb = add i64 %.idx2782, %i.cqy
  %i.ctc = sub i64 %i.ctb, %i.cta
  %diff.check3310 = icmp ugt i64 %i.ctc, -32
  br i1 %diff.check3310, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.preheader3768, label %vector.ph3311

vector.ph3311:                                    ; preds = %vector.memcheck3309
  %n.vec3312 = and i64 %i.csy, -8                 ; 3 uses
  %i.ctd = add i64 %i.cro, %n.vec3312
  br label %vector.body3313

vector.body3313:                                  ; preds = %vector.body3313, %vector.ph3311
  %index3314 = phi i64 [ 0, %vector.ph3311 ], [ %index.next3317, %vector.body3313 ] ; 2 uses
  %i.cte = add i64 %i.cro, %index3314             ; 2 uses
  %i.ctf = getelementptr inbounds [4 x i8], ptr %i.cre, i64 %i.cte ; 2 uses
  %i.ctg = getelementptr inbounds [4 x i8], ptr %i.cra, i64 %i.cte ; 2 uses
  %i.cth = getelementptr inbounds nuw i8, ptr %i.ctg, i64 16
  %wide.load3315 = load <4 x i32>, ptr %i.ctg, align 4, !tbaa !24
  %wide.load3316 = load <4 x i32>, ptr %i.cth, align 4, !tbaa !24
  %i.cti = getelementptr inbounds nuw i8, ptr %i.ctf, i64 16
  store <4 x i32> %wide.load3315, ptr %i.ctf, align 4, !tbaa !24
  store <4 x i32> %wide.load3316, ptr %i.cti, align 4, !tbaa !24
  %index.next3317 = add nuw i64 %index3314, 8     ; 2 uses
  %i.ctj = icmp eq i64 %index.next3317, %n.vec3312
  br i1 %i.ctj, label %middle.block3318, label %vector.body3313, !llvm.loop !365

middle.block3318:                                 ; preds = %vector.body3313
  %cmp.n3319 = icmp eq i64 %i.csy, %n.vec3312
  br i1 %cmp.n3319, label %.loopexit2805, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.preheader3768

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.preheader3768: ; preds = %vector.memcheck3309, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.preheader, %middle.block3318
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i716.ph = phi i64 [ %i.cro, %vector.memcheck3309 ], [ %i.cro, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.preheader ], [ %i.ctd, %middle.block3318 ] ; 4 uses
  %i.ctk = sub i64 %i.cqz, %.05.i18.i.i.i.i.i.i.i.i.i.i.i716.ph
  %xtraiter3866 = and i64 %i.ctk, 3               ; 2 uses
  %lcmp.mod3867.not = icmp eq i64 %xtraiter3866, 0
  br i1 %lcmp.mod3867.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.prol:         ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.preheader3768, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i716.prol = phi i64 [ %i.cto, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i716.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.preheader3768 ] ; 3 uses
  %prol.iter3868 = phi i64 [ %prol.iter3868.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.preheader3768 ]
  %i.ctl = getelementptr inbounds [4 x i8], ptr %i.cre, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i716.prol
  %i.ctm = getelementptr inbounds [4 x i8], ptr %i.cra, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i716.prol
  %i.ctn = load i32, ptr %i.ctm, align 4, !tbaa !24
  store i32 %i.ctn, ptr %i.ctl, align 4, !tbaa !24
  %i.cto = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i716.prol, 1 ; 2 uses
  %prol.iter3868.next = add i64 %prol.iter3868, 1 ; 2 uses
  %prol.iter3868.cmp.not = icmp eq i64 %prol.iter3868.next, %xtraiter3866
  br i1 %prol.iter3868.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.prol, !llvm.loop !366

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.preheader3768
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i716.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i716.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.preheader3768 ], [ %i.cto, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.prol ]
  %i.ctp = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i716.ph, %i.cqz
  %i.ctq = icmp ugt i64 %i.ctp, -4
  br i1 %i.ctq, label %.loopexit2805, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i716 = phi i64 [ %i.cug, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i716.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.prol.loopexit ] ; 6 uses
  %i.ctr = getelementptr inbounds [4 x i8], ptr %i.cre, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i716
  %i.cts = getelementptr inbounds [4 x i8], ptr %i.cra, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i716
  %i.ctt = load i32, ptr %i.cts, align 4, !tbaa !24
  store i32 %i.ctt, ptr %i.ctr, align 4, !tbaa !24
  %i.ctu = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i716, 1 ; 2 uses
  %i.ctv = getelementptr inbounds [4 x i8], ptr %i.cre, i64 %i.ctu
  %i.ctw = getelementptr inbounds [4 x i8], ptr %i.cra, i64 %i.ctu
  %i.ctx = load i32, ptr %i.ctw, align 4, !tbaa !24
  store i32 %i.ctx, ptr %i.ctv, align 4, !tbaa !24
  %i.cty = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i716, 2 ; 2 uses
  %i.ctz = getelementptr inbounds [4 x i8], ptr %i.cre, i64 %i.cty
  %i.cua = getelementptr inbounds [4 x i8], ptr %i.cra, i64 %i.cty
  %i.cub = load i32, ptr %i.cua, align 4, !tbaa !24
  store i32 %i.cub, ptr %i.ctz, align 4, !tbaa !24
  %i.cuc = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i716, 3 ; 2 uses
  %i.cud = getelementptr inbounds [4 x i8], ptr %i.cre, i64 %i.cuc
  %i.cue = getelementptr inbounds [4 x i8], ptr %i.cra, i64 %i.cuc
  %i.cuf = load i32, ptr %i.cue, align 4, !tbaa !24
  store i32 %i.cuf, ptr %i.cud, align 4, !tbaa !24
  %i.cug = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i716, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i717.3 = icmp eq i64 %i.cug, %i.cqz
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i717.3, label %.loopexit2805, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715, !llvm.loop !367

.lr.ph.i.i.i.i.i.i.i.i.i.i.i718:                  ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i713, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i718
  %.021.i.i.i.i.i.i.i.i.i.i.i719 = phi i64 [ %i.cuk, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i718 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i712, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i713 ] ; 3 uses
  %i.cuh = getelementptr inbounds [4 x i8], ptr %i.cre, i64 %.021.i.i.i.i.i.i.i.i.i.i.i719
  %i.cui = getelementptr inbounds [4 x i8], ptr %i.cra, i64 %.021.i.i.i.i.i.i.i.i.i.i.i719
  %i.cuj = load <2 x i64>, ptr %i.cui, align 1, !tbaa !22
  store <2 x i64> %i.cuj, ptr %i.cuh, align 16, !tbaa !22
  %i.cuk = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i719, 4 ; 2 uses
  %i.cul = icmp slt i64 %i.cuk, %i.cro
  br i1 %i.cul, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i718, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i714, !llvm.loop !241

.loopexit2805:                                    ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715, %middle.block3318, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i714
  %i.cum = load ptr, ptr %1, align 8, !tbaa !20, !noalias !478 ; 14 uses
  %i.cun = ptrtoaddr ptr %i.cum to i64            ; 2 uses
  %i.cuo = load i64, ptr %i.a, align 8, !tbaa !21, !noalias !478 ; 10 uses
  %i.cup = add nsw i64 %i.cqz, %i.crb             ; 4 uses
  %i.cuq = load ptr, ptr %62, align 8, !tbaa !26, !noalias !479 ; 2 uses
  %i.cur = ptrtoaddr ptr %i.cuq to i64            ; 2 uses
  %i.cus = getelementptr inbounds [4 x i8], ptr %i.cuq, i64 %i.cup ; 14 uses
  %i.cut = ptrtoint ptr %i.cus to i64             ; 2 uses
  %i.cuu = and i64 %i.cut, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i729 = icmp eq i64 %i.cuu, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i729, label %bb.dz, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i730

bb.dz:                                            ; preds = %.loopexit2805
  %i.cuv = lshr exact i64 %i.cut, 2
  %i.cuw = sub nsw i64 0, %i.cuv
  %i.cux = and i64 %i.cuw, 3
  %i.cuy = call i64 @llvm.smin.i64(i64 %i.cux, i64 %i.cuo)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i730

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i730: ; preds = %bb.dz, %.loopexit2805
  %.0.i.i.i.i.i.i.i.i.i.i.i.i731 = phi i64 [ %i.cuy, %bb.dz ], [ %i.cuo, %.loopexit2805 ] ; 11 uses
  %i.cuz = sub nsw i64 %i.cuo, %.0.i.i.i.i.i.i.i.i.i.i.i.i731 ; 2 uses
  %i.cva = sdiv i64 %i.cuz, 4
  %i.cvb = shl nsw i64 %i.cva, 2                  ; 2 uses
  %i.cvc = add nsw i64 %i.cvb, %.0.i.i.i.i.i.i.i.i.i.i.i.i731 ; 6 uses
  %i.cvd = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i731, 0
  br i1 %i.cvd, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i732

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.preheader:      ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i730
  %min.iters.check3324 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i731, 16
  br i1 %min.iters.check3324, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.preheader3767, label %vector.memcheck3325

vector.memcheck3325:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.preheader
  %i.cve = shl nsw i64 %i.cup, 2
  %i.cvf = add i64 %i.cve, %i.cur
  %i.cvg = sub i64 %i.cun, %i.cvf
  %diff.check3326 = icmp ugt i64 %i.cvg, -32
  br i1 %diff.check3326, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.preheader3767, label %vector.ph3327

vector.ph3327:                                    ; preds = %vector.memcheck3325
  %n.vec3328 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i731, 9223372036854775800 ; 3 uses
  br label %vector.body3329

vector.body3329:                                  ; preds = %vector.body3329, %vector.ph3327
  %index3330 = phi i64 [ 0, %vector.ph3327 ], [ %index.next3333, %vector.body3329 ] ; 3 uses
  %i.cvh = getelementptr inbounds nuw [4 x i8], ptr %i.cus, i64 %index3330 ; 2 uses
  %i.cvi = getelementptr inbounds nuw [4 x i8], ptr %i.cum, i64 %index3330 ; 2 uses
  %i.cvj = getelementptr inbounds nuw i8, ptr %i.cvi, i64 16
  %wide.load3331 = load <4 x i32>, ptr %i.cvi, align 4, !tbaa !24
  %wide.load3332 = load <4 x i32>, ptr %i.cvj, align 4, !tbaa !24
  %i.cvk = getelementptr inbounds nuw i8, ptr %i.cvh, i64 16
  store <4 x i32> %wide.load3331, ptr %i.cvh, align 4, !tbaa !24
  store <4 x i32> %wide.load3332, ptr %i.cvk, align 4, !tbaa !24
  %index.next3333 = add nuw i64 %index3330, 8     ; 2 uses
  %i.cvl = icmp eq i64 %index.next3333, %n.vec3328
  br i1 %i.cvl, label %middle.block3334, label %vector.body3329, !llvm.loop !372

middle.block3334:                                 ; preds = %vector.body3329
  %cmp.n3335 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i731, %n.vec3328
  br i1 %cmp.n3335, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i732, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.preheader3767

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.preheader3767:  ; preds = %vector.memcheck3325, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.preheader, %middle.block3334
  %.05.i.i.i.i.i.i.i.i.i.i.i.i740.ph = phi i64 [ 0, %vector.memcheck3325 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.preheader ], [ %n.vec3328, %middle.block3334 ] ; 3 uses
  %xtraiter3869 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i731, 3 ; 2 uses
  %lcmp.mod3870.not = icmp eq i64 %xtraiter3869, 0
  br i1 %lcmp.mod3870.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.prol:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.preheader3767, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i740.prol = phi i64 [ %i.cvp, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i740.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.preheader3767 ] ; 3 uses
  %prol.iter3871 = phi i64 [ %prol.iter3871.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.preheader3767 ]
  %i.cvm = getelementptr inbounds nuw [4 x i8], ptr %i.cus, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i740.prol
  %i.cvn = getelementptr inbounds nuw [4 x i8], ptr %i.cum, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i740.prol
  %i.cvo = load i32, ptr %i.cvn, align 4, !tbaa !24
  store i32 %i.cvo, ptr %i.cvm, align 4, !tbaa !24
  %i.cvp = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i740.prol, 1 ; 2 uses
  %prol.iter3871.next = add i64 %prol.iter3871, 1 ; 2 uses
  %prol.iter3871.cmp.not = icmp eq i64 %prol.iter3871.next, %xtraiter3869
  br i1 %prol.iter3871.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.prol, !llvm.loop !373

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.prol.loopexit:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.preheader3767
  %.05.i.i.i.i.i.i.i.i.i.i.i.i740.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i740.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.preheader3767 ], [ %i.cvp, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.prol ]
  %i.cvq = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i740.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i731
  %i.cvr = icmp ugt i64 %i.cvq, -4
  br i1 %i.cvr, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i732, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739
  %.05.i.i.i.i.i.i.i.i.i.i.i.i740 = phi i64 [ %i.cwh, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i740.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.prol.loopexit ] ; 6 uses
  %i.cvs = getelementptr inbounds nuw [4 x i8], ptr %i.cus, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i740
  %i.cvt = getelementptr inbounds nuw [4 x i8], ptr %i.cum, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i740
  %i.cvu = load i32, ptr %i.cvt, align 4, !tbaa !24
  store i32 %i.cvu, ptr %i.cvs, align 4, !tbaa !24
  %i.cvv = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i740, 1 ; 2 uses
  %i.cvw = getelementptr inbounds nuw [4 x i8], ptr %i.cus, i64 %i.cvv
  %i.cvx = getelementptr inbounds nuw [4 x i8], ptr %i.cum, i64 %i.cvv
  %i.cvy = load i32, ptr %i.cvx, align 4, !tbaa !24
  store i32 %i.cvy, ptr %i.cvw, align 4, !tbaa !24
  %i.cvz = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i740, 2 ; 2 uses
  %i.cwa = getelementptr inbounds nuw [4 x i8], ptr %i.cus, i64 %i.cvz
  %i.cwb = getelementptr inbounds nuw [4 x i8], ptr %i.cum, i64 %i.cvz
  %i.cwc = load i32, ptr %i.cwb, align 4, !tbaa !24
  store i32 %i.cwc, ptr %i.cwa, align 4, !tbaa !24
  %i.cwd = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i740, 3 ; 2 uses
  %i.cwe = getelementptr inbounds nuw [4 x i8], ptr %i.cus, i64 %i.cwd
  %i.cwf = getelementptr inbounds nuw [4 x i8], ptr %i.cum, i64 %i.cwd
  %i.cwg = load i32, ptr %i.cwf, align 4, !tbaa !24
  store i32 %i.cwg, ptr %i.cwe, align 4, !tbaa !24
  %i.cwh = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i740, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i741.3 = icmp eq i64 %i.cwh, %.0.i.i.i.i.i.i.i.i.i.i.i.i731
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i741.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i732, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739, !llvm.loop !374

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i732: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739, %middle.block3334, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i730
  %i.cwi = icmp sgt i64 %i.cuz, 3
  br i1 %i.cwi, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i737, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i733

._crit_edge.i.i.i.i.i.i.i.i.i.i.i733:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i737, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i732
  %i.cwj = icmp slt i64 %i.cvc, %i.cuo
  br i1 %i.cwj, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.preheader, label %.loopexit2804

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.preheader:    ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i733
  %i.cwk = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i731, %i.cvb
  %i.cwl = sub i64 %i.cuo, %i.cwk                 ; 3 uses
  %min.iters.check3340 = icmp ult i64 %i.cwl, 16
  br i1 %min.iters.check3340, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.preheader3766, label %vector.memcheck3341

vector.memcheck3341:                              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.preheader
  %i.cwm = shl nsw i64 %i.cup, 2
  %i.cwn = add i64 %i.cwm, %i.cur
  %i.cwo = sub i64 %i.cun, %i.cwn
  %diff.check3342 = icmp ugt i64 %i.cwo, -32
  br i1 %diff.check3342, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.preheader3766, label %vector.ph3343

vector.ph3343:                                    ; preds = %vector.memcheck3341
  %n.vec3344 = and i64 %i.cwl, -8                 ; 3 uses
  %i.cwp = add i64 %i.cvc, %n.vec3344
  br label %vector.body3345

vector.body3345:                                  ; preds = %vector.body3345, %vector.ph3343
  %index3346 = phi i64 [ 0, %vector.ph3343 ], [ %index.next3349, %vector.body3345 ] ; 2 uses
  %i.cwq = add i64 %i.cvc, %index3346             ; 2 uses
  %i.cwr = getelementptr inbounds [4 x i8], ptr %i.cus, i64 %i.cwq ; 2 uses
  %i.cws = getelementptr inbounds [4 x i8], ptr %i.cum, i64 %i.cwq ; 2 uses
  %i.cwt = getelementptr inbounds nuw i8, ptr %i.cws, i64 16
  %wide.load3347 = load <4 x i32>, ptr %i.cws, align 4, !tbaa !24
  %wide.load3348 = load <4 x i32>, ptr %i.cwt, align 4, !tbaa !24
  %i.cwu = getelementptr inbounds nuw i8, ptr %i.cwr, i64 16
  store <4 x i32> %wide.load3347, ptr %i.cwr, align 4, !tbaa !24
  store <4 x i32> %wide.load3348, ptr %i.cwu, align 4, !tbaa !24
  %index.next3349 = add nuw i64 %index3346, 8     ; 2 uses
  %i.cwv = icmp eq i64 %index.next3349, %n.vec3344
  br i1 %i.cwv, label %middle.block3350, label %vector.body3345, !llvm.loop !375

middle.block3350:                                 ; preds = %vector.body3345
  %cmp.n3351 = icmp eq i64 %i.cwl, %n.vec3344
  br i1 %cmp.n3351, label %.loopexit2804, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.preheader3766

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.preheader3766: ; preds = %vector.memcheck3341, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.preheader, %middle.block3350
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i735.ph = phi i64 [ %i.cvc, %vector.memcheck3341 ], [ %i.cvc, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.preheader ], [ %i.cwp, %middle.block3350 ] ; 4 uses
  %i.cww = sub i64 %i.cuo, %.05.i18.i.i.i.i.i.i.i.i.i.i.i735.ph
  %xtraiter3872 = and i64 %i.cww, 3               ; 2 uses
  %lcmp.mod3873.not = icmp eq i64 %xtraiter3872, 0
  br i1 %lcmp.mod3873.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.prol:         ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.preheader3766, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i735.prol = phi i64 [ %i.cxa, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i735.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.preheader3766 ] ; 3 uses
  %prol.iter3874 = phi i64 [ %prol.iter3874.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.preheader3766 ]
  %i.cwx = getelementptr inbounds [4 x i8], ptr %i.cus, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i735.prol
  %i.cwy = getelementptr inbounds [4 x i8], ptr %i.cum, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i735.prol
  %i.cwz = load i32, ptr %i.cwy, align 4, !tbaa !24
  store i32 %i.cwz, ptr %i.cwx, align 4, !tbaa !24
  %i.cxa = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i735.prol, 1 ; 2 uses
  %prol.iter3874.next = add i64 %prol.iter3874, 1 ; 2 uses
  %prol.iter3874.cmp.not = icmp eq i64 %prol.iter3874.next, %xtraiter3872
  br i1 %prol.iter3874.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.prol, !llvm.loop !376

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.preheader3766
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i735.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i735.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.preheader3766 ], [ %i.cxa, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.prol ]
  %i.cxb = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i735.ph, %i.cuo
  %i.cxc = icmp ugt i64 %i.cxb, -4
  br i1 %i.cxc, label %.loopexit2804, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i735 = phi i64 [ %i.cxs, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i735.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.prol.loopexit ] ; 6 uses
  %i.cxd = getelementptr inbounds [4 x i8], ptr %i.cus, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i735
  %i.cxe = getelementptr inbounds [4 x i8], ptr %i.cum, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i735
  %i.cxf = load i32, ptr %i.cxe, align 4, !tbaa !24
  store i32 %i.cxf, ptr %i.cxd, align 4, !tbaa !24
  %i.cxg = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i735, 1 ; 2 uses
  %i.cxh = getelementptr inbounds [4 x i8], ptr %i.cus, i64 %i.cxg
  %i.cxi = getelementptr inbounds [4 x i8], ptr %i.cum, i64 %i.cxg
  %i.cxj = load i32, ptr %i.cxi, align 4, !tbaa !24
  store i32 %i.cxj, ptr %i.cxh, align 4, !tbaa !24
  %i.cxk = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i735, 2 ; 2 uses
  %i.cxl = getelementptr inbounds [4 x i8], ptr %i.cus, i64 %i.cxk
  %i.cxm = getelementptr inbounds [4 x i8], ptr %i.cum, i64 %i.cxk
  %i.cxn = load i32, ptr %i.cxm, align 4, !tbaa !24
  store i32 %i.cxn, ptr %i.cxl, align 4, !tbaa !24
  %i.cxo = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i735, 3 ; 2 uses
  %i.cxp = getelementptr inbounds [4 x i8], ptr %i.cus, i64 %i.cxo
  %i.cxq = getelementptr inbounds [4 x i8], ptr %i.cum, i64 %i.cxo
  %i.cxr = load i32, ptr %i.cxq, align 4, !tbaa !24
  store i32 %i.cxr, ptr %i.cxp, align 4, !tbaa !24
  %i.cxs = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i735, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i736.3 = icmp eq i64 %i.cxs, %i.cuo
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i736.3, label %.loopexit2804, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734, !llvm.loop !377

.lr.ph.i.i.i.i.i.i.i.i.i.i.i737:                  ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i732, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i737
  %.021.i.i.i.i.i.i.i.i.i.i.i738 = phi i64 [ %i.cxw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i737 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i731, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i732 ] ; 3 uses
  %i.cxt = getelementptr inbounds [4 x i8], ptr %i.cus, i64 %.021.i.i.i.i.i.i.i.i.i.i.i738
  %i.cxu = getelementptr inbounds [4 x i8], ptr %i.cum, i64 %.021.i.i.i.i.i.i.i.i.i.i.i738
  %i.cxv = load <2 x i64>, ptr %i.cxu, align 1, !tbaa !22
  store <2 x i64> %i.cxv, ptr %i.cxt, align 16, !tbaa !22
  %i.cxw = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i738, 4 ; 2 uses
  %i.cxx = icmp slt i64 %i.cxw, %i.cvc
  br i1 %i.cxx, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i737, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i733, !llvm.loop !241

.loopexit2804:                                    ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734, %middle.block3350, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i733
  %i.cxy = load ptr, ptr %1, align 8, !tbaa !20, !noalias !480 ; 2 uses
  %i.cxz = ptrtoaddr ptr %i.cxy to i64            ; 2 uses
  %i.cya = load i64, ptr %i.a, align 8, !tbaa !21, !noalias !480 ; 14 uses
  %i.cyb = getelementptr inbounds [4 x i8], ptr %i.cxy, i64 %i.cya ; 13 uses
  %i.cyc = add nsw i64 %i.cuo, %i.cup             ; 5 uses
  %i.cyd = load ptr, ptr %62, align 8, !tbaa !26, !noalias !481 ; 2 uses
  %i.cye = ptrtoaddr ptr %i.cyd to i64            ; 2 uses
  %i.cyf = getelementptr inbounds [4 x i8], ptr %i.cyd, i64 %i.cyc ; 14 uses
  %i.cyg = ptrtoint ptr %i.cyf to i64             ; 2 uses
  %i.cyh = and i64 %i.cyg, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i748 = icmp eq i64 %i.cyh, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i748, label %bb.ea, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i749

bb.ea:                                            ; preds = %.loopexit2804
  %i.cyi = lshr exact i64 %i.cyg, 2
  %i.cyj = sub nsw i64 0, %i.cyi
  %i.cyk = and i64 %i.cyj, 3
  %i.cyl = call i64 @llvm.smin.i64(i64 %i.cyk, i64 %i.cya)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i749

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i749: ; preds = %bb.ea, %.loopexit2804
  %.0.i.i.i.i.i.i.i.i.i.i.i.i750 = phi i64 [ %i.cyl, %bb.ea ], [ %i.cya, %.loopexit2804 ] ; 11 uses
  %i.cym = sub nsw i64 %i.cya, %.0.i.i.i.i.i.i.i.i.i.i.i.i750 ; 2 uses
  %i.cyn = sdiv i64 %i.cym, 4
  %i.cyo = shl nsw i64 %i.cyn, 2                  ; 2 uses
  %i.cyp = add nsw i64 %i.cyo, %.0.i.i.i.i.i.i.i.i.i.i.i.i750 ; 6 uses
  %i.cyq = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i750, 0
  br i1 %i.cyq, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i751

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.preheader:      ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i749
  %min.iters.check3356 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i750, 20
  br i1 %min.iters.check3356, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.preheader3765, label %vector.memcheck3357

vector.memcheck3357:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.preheader
  %i.cyr = shl nsw i64 %i.cyc, 2
  %i.cys = shl i64 %i.cya, 2
  %i.cyt = add i64 %i.cyr, %i.cye
  %i.cyu = add i64 %i.cys, %i.cxz
  %i.cyv = sub i64 %i.cyu, %i.cyt
  %diff.check3358 = icmp ugt i64 %i.cyv, -32
  br i1 %diff.check3358, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.preheader3765, label %vector.ph3359

vector.ph3359:                                    ; preds = %vector.memcheck3357
  %n.vec3360 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i750, 9223372036854775800 ; 3 uses
  br label %vector.body3361

vector.body3361:                                  ; preds = %vector.body3361, %vector.ph3359
  %index3362 = phi i64 [ 0, %vector.ph3359 ], [ %index.next3365, %vector.body3361 ] ; 3 uses
  %i.cyw = getelementptr inbounds nuw [4 x i8], ptr %i.cyf, i64 %index3362 ; 2 uses
  %i.cyx = getelementptr inbounds nuw [4 x i8], ptr %i.cyb, i64 %index3362 ; 2 uses
  %i.cyy = getelementptr inbounds nuw i8, ptr %i.cyx, i64 16
  %wide.load3363 = load <4 x i32>, ptr %i.cyx, align 4, !tbaa !24
  %wide.load3364 = load <4 x i32>, ptr %i.cyy, align 4, !tbaa !24
  %i.cyz = getelementptr inbounds nuw i8, ptr %i.cyw, i64 16
  store <4 x i32> %wide.load3363, ptr %i.cyw, align 4, !tbaa !24
  store <4 x i32> %wide.load3364, ptr %i.cyz, align 4, !tbaa !24
  %index.next3365 = add nuw i64 %index3362, 8     ; 2 uses
  %i.cza = icmp eq i64 %index.next3365, %n.vec3360
  br i1 %i.cza, label %middle.block3366, label %vector.body3361, !llvm.loop !382

middle.block3366:                                 ; preds = %vector.body3361
  %cmp.n3367 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i750, %n.vec3360
  br i1 %cmp.n3367, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i751, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.preheader3765

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.preheader3765:  ; preds = %vector.memcheck3357, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.preheader, %middle.block3366
  %.05.i.i.i.i.i.i.i.i.i.i.i.i759.ph = phi i64 [ 0, %vector.memcheck3357 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.preheader ], [ %n.vec3360, %middle.block3366 ] ; 3 uses
  %xtraiter3875 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i750, 3 ; 2 uses
  %lcmp.mod3876.not = icmp eq i64 %xtraiter3875, 0
  br i1 %lcmp.mod3876.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.prol:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.preheader3765, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i759.prol = phi i64 [ %i.cze, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i759.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.preheader3765 ] ; 3 uses
  %prol.iter3877 = phi i64 [ %prol.iter3877.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.preheader3765 ]
  %i.czb = getelementptr inbounds nuw [4 x i8], ptr %i.cyf, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i759.prol
  %i.czc = getelementptr inbounds nuw [4 x i8], ptr %i.cyb, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i759.prol
  %i.czd = load i32, ptr %i.czc, align 4, !tbaa !24
  store i32 %i.czd, ptr %i.czb, align 4, !tbaa !24
  %i.cze = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i759.prol, 1 ; 2 uses
  %prol.iter3877.next = add i64 %prol.iter3877, 1 ; 2 uses
  %prol.iter3877.cmp.not = icmp eq i64 %prol.iter3877.next, %xtraiter3875
  br i1 %prol.iter3877.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.prol, !llvm.loop !383

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.prol.loopexit:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.preheader3765
  %.05.i.i.i.i.i.i.i.i.i.i.i.i759.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i759.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.preheader3765 ], [ %i.cze, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.prol ]
  %i.czf = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i759.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i750
  %i.czg = icmp ugt i64 %i.czf, -4
  br i1 %i.czg, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i751, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758
  %.05.i.i.i.i.i.i.i.i.i.i.i.i759 = phi i64 [ %i.czw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i759.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.prol.loopexit ] ; 6 uses
  %i.czh = getelementptr inbounds nuw [4 x i8], ptr %i.cyf, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i759
  %i.czi = getelementptr inbounds nuw [4 x i8], ptr %i.cyb, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i759
  %i.czj = load i32, ptr %i.czi, align 4, !tbaa !24
  store i32 %i.czj, ptr %i.czh, align 4, !tbaa !24
  %i.czk = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i759, 1 ; 2 uses
  %i.czl = getelementptr inbounds nuw [4 x i8], ptr %i.cyf, i64 %i.czk
  %i.czm = getelementptr inbounds nuw [4 x i8], ptr %i.cyb, i64 %i.czk
  %i.czn = load i32, ptr %i.czm, align 4, !tbaa !24
  store i32 %i.czn, ptr %i.czl, align 4, !tbaa !24
  %i.czo = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i759, 2 ; 2 uses
  %i.czp = getelementptr inbounds nuw [4 x i8], ptr %i.cyf, i64 %i.czo
  %i.czq = getelementptr inbounds nuw [4 x i8], ptr %i.cyb, i64 %i.czo
  %i.czr = load i32, ptr %i.czq, align 4, !tbaa !24
  store i32 %i.czr, ptr %i.czp, align 4, !tbaa !24
  %i.czs = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i759, 3 ; 2 uses
  %i.czt = getelementptr inbounds nuw [4 x i8], ptr %i.cyf, i64 %i.czs
  %i.czu = getelementptr inbounds nuw [4 x i8], ptr %i.cyb, i64 %i.czs
  %i.czv = load i32, ptr %i.czu, align 4, !tbaa !24
  store i32 %i.czv, ptr %i.czt, align 4, !tbaa !24
  %i.czw = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i759, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i760.3 = icmp eq i64 %i.czw, %.0.i.i.i.i.i.i.i.i.i.i.i.i750
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i760.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i751, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758, !llvm.loop !384

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i751: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758, %middle.block3366, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i749
  %i.czx = icmp sgt i64 %i.cym, 3
  br i1 %i.czx, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i756, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i752

._crit_edge.i.i.i.i.i.i.i.i.i.i.i752:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i756, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i751
  %i.czy = icmp slt i64 %i.cyp, %i.cya
  br i1 %i.czy, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.preheader, label %.loopexit2803

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.preheader:    ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i752
  %i.czz = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i750, %i.cyo
  %i.daa = sub i64 %i.cya, %i.czz                 ; 3 uses
  %min.iters.check3372 = icmp ult i64 %i.daa, 20
  br i1 %min.iters.check3372, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.preheader3764, label %vector.memcheck3373

vector.memcheck3373:                              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.preheader
  %i.dab = shl nsw i64 %i.cyc, 2
  %i.dac = shl i64 %i.cya, 2
  %i.dad = add i64 %i.dab, %i.cye
  %i.dae = add i64 %i.dac, %i.cxz
  %i.daf = sub i64 %i.dae, %i.dad
  %diff.check3374 = icmp ugt i64 %i.daf, -32
  br i1 %diff.check3374, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.preheader3764, label %vector.ph3375

vector.ph3375:                                    ; preds = %vector.memcheck3373
  %n.vec3376 = and i64 %i.daa, -8                 ; 3 uses
  %i.dag = add i64 %i.cyp, %n.vec3376
  br label %vector.body3377

vector.body3377:                                  ; preds = %vector.body3377, %vector.ph3375
  %index3378 = phi i64 [ 0, %vector.ph3375 ], [ %index.next3381, %vector.body3377 ] ; 2 uses
  %i.dah = add i64 %i.cyp, %index3378             ; 2 uses
  %i.dai = getelementptr inbounds [4 x i8], ptr %i.cyf, i64 %i.dah ; 2 uses
  %i.daj = getelementptr inbounds [4 x i8], ptr %i.cyb, i64 %i.dah ; 2 uses
  %i.dak = getelementptr inbounds nuw i8, ptr %i.daj, i64 16
  %wide.load3379 = load <4 x i32>, ptr %i.daj, align 4, !tbaa !24
  %wide.load3380 = load <4 x i32>, ptr %i.dak, align 4, !tbaa !24
  %i.dal = getelementptr inbounds nuw i8, ptr %i.dai, i64 16
  store <4 x i32> %wide.load3379, ptr %i.dai, align 4, !tbaa !24
  store <4 x i32> %wide.load3380, ptr %i.dal, align 4, !tbaa !24
  %index.next3381 = add nuw i64 %index3378, 8     ; 2 uses
  %i.dam = icmp eq i64 %index.next3381, %n.vec3376
  br i1 %i.dam, label %middle.block3382, label %vector.body3377, !llvm.loop !385

middle.block3382:                                 ; preds = %vector.body3377
  %cmp.n3383 = icmp eq i64 %i.daa, %n.vec3376
  br i1 %cmp.n3383, label %.loopexit2803, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.preheader3764

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.preheader3764: ; preds = %vector.memcheck3373, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.preheader, %middle.block3382
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i754.ph = phi i64 [ %i.cyp, %vector.memcheck3373 ], [ %i.cyp, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.preheader ], [ %i.dag, %middle.block3382 ] ; 4 uses
  %i.dan = sub i64 %i.cya, %.05.i18.i.i.i.i.i.i.i.i.i.i.i754.ph
  %xtraiter3878 = and i64 %i.dan, 3               ; 2 uses
  %lcmp.mod3879.not = icmp eq i64 %xtraiter3878, 0
  br i1 %lcmp.mod3879.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.prol:         ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.preheader3764, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i754.prol = phi i64 [ %i.dar, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i754.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.preheader3764 ] ; 3 uses
  %prol.iter3880 = phi i64 [ %prol.iter3880.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.preheader3764 ]
  %i.dao = getelementptr inbounds [4 x i8], ptr %i.cyf, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i754.prol
  %i.dap = getelementptr inbounds [4 x i8], ptr %i.cyb, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i754.prol
  %i.daq = load i32, ptr %i.dap, align 4, !tbaa !24
  store i32 %i.daq, ptr %i.dao, align 4, !tbaa !24
  %i.dar = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i754.prol, 1 ; 2 uses
  %prol.iter3880.next = add i64 %prol.iter3880, 1 ; 2 uses
  %prol.iter3880.cmp.not = icmp eq i64 %prol.iter3880.next, %xtraiter3878
  br i1 %prol.iter3880.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.prol, !llvm.loop !386

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.preheader3764
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i754.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i754.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.preheader3764 ], [ %i.dar, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.prol ]
  %i.das = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i754.ph, %i.cya
  %i.dat = icmp ugt i64 %i.das, -4
  br i1 %i.dat, label %.loopexit2803, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i754 = phi i64 [ %i.dbj, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i754.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.prol.loopexit ] ; 6 uses
  %i.dau = getelementptr inbounds [4 x i8], ptr %i.cyf, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i754
  %i.dav = getelementptr inbounds [4 x i8], ptr %i.cyb, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i754
  %i.daw = load i32, ptr %i.dav, align 4, !tbaa !24
  store i32 %i.daw, ptr %i.dau, align 4, !tbaa !24
  %i.dax = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i754, 1 ; 2 uses
  %i.day = getelementptr inbounds [4 x i8], ptr %i.cyf, i64 %i.dax
  %i.daz = getelementptr inbounds [4 x i8], ptr %i.cyb, i64 %i.dax
  %i.dba = load i32, ptr %i.daz, align 4, !tbaa !24
  store i32 %i.dba, ptr %i.day, align 4, !tbaa !24
  %i.dbb = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i754, 2 ; 2 uses
  %i.dbc = getelementptr inbounds [4 x i8], ptr %i.cyf, i64 %i.dbb
  %i.dbd = getelementptr inbounds [4 x i8], ptr %i.cyb, i64 %i.dbb
  %i.dbe = load i32, ptr %i.dbd, align 4, !tbaa !24
  store i32 %i.dbe, ptr %i.dbc, align 4, !tbaa !24
  %i.dbf = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i754, 3 ; 2 uses
  %i.dbg = getelementptr inbounds [4 x i8], ptr %i.cyf, i64 %i.dbf
  %i.dbh = getelementptr inbounds [4 x i8], ptr %i.cyb, i64 %i.dbf
  %i.dbi = load i32, ptr %i.dbh, align 4, !tbaa !24
  store i32 %i.dbi, ptr %i.dbg, align 4, !tbaa !24
  %i.dbj = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i754, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i755.3 = icmp eq i64 %i.dbj, %i.cya
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i755.3, label %.loopexit2803, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753, !llvm.loop !387

.lr.ph.i.i.i.i.i.i.i.i.i.i.i756:                  ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i751, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i756
  %.021.i.i.i.i.i.i.i.i.i.i.i757 = phi i64 [ %i.dbn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i756 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i750, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i751 ] ; 3 uses
  %i.dbk = getelementptr inbounds [4 x i8], ptr %i.cyf, i64 %.021.i.i.i.i.i.i.i.i.i.i.i757
  %i.dbl = getelementptr inbounds [4 x i8], ptr %i.cyb, i64 %.021.i.i.i.i.i.i.i.i.i.i.i757
  %i.dbm = load <2 x i64>, ptr %i.dbl, align 1, !tbaa !22
  store <2 x i64> %i.dbm, ptr %i.dbk, align 16, !tbaa !22
  %i.dbn = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i757, 4 ; 2 uses
  %i.dbo = icmp slt i64 %i.dbn, %i.cyp
  br i1 %i.dbo, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i756, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i752, !llvm.loop !241

.loopexit2803:                                    ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753, %middle.block3382, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i752
  %i.dbp = load ptr, ptr %1, align 8, !tbaa !20, !noalias !482 ; 2 uses
  %i.dbq = ptrtoaddr ptr %i.dbp to i64            ; 2 uses
  %i.dbr = load i64, ptr %i.a, align 8, !tbaa !21, !noalias !482 ; 9 uses
  %.idx2783 = shl i64 %i.dbr, 3                   ; 3 uses
  %i.dbs = getelementptr inbounds i8, ptr %i.dbp, i64 %.idx2783 ; 13 uses
  %i.dbt = load ptr, ptr %62, align 8, !tbaa !26, !noalias !483 ; 2 uses
  %i.dbu = ptrtoaddr ptr %i.dbt to i64            ; 2 uses
  %i.dbv = getelementptr [4 x i8], ptr %i.dbt, i64 %i.cyc
  %i.dbw = getelementptr [4 x i8], ptr %i.dbv, i64 %i.cya ; 14 uses
  %i.dbx = ptrtoint ptr %i.dbw to i64             ; 2 uses
  %i.dby = and i64 %i.dbx, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i767 = icmp eq i64 %i.dby, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i767, label %bb.eb, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i768

bb.eb:                                            ; preds = %.loopexit2803
  %i.dbz = lshr exact i64 %i.dbx, 2
  %i.dca = sub nsw i64 0, %i.dbz
  %i.dcb = and i64 %i.dca, 3
  %i.dcc = call i64 @llvm.smin.i64(i64 %i.dcb, i64 %i.dbr)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i768

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i768: ; preds = %bb.eb, %.loopexit2803
  %.0.i.i.i.i.i.i.i.i.i.i.i.i769 = phi i64 [ %i.dcc, %bb.eb ], [ %i.dbr, %.loopexit2803 ] ; 11 uses
  %i.dcd = sub nsw i64 %i.dbr, %.0.i.i.i.i.i.i.i.i.i.i.i.i769 ; 2 uses
  %i.dce = sdiv i64 %i.dcd, 4
  %i.dcf = shl nsw i64 %i.dce, 2                  ; 2 uses
  %i.dcg = add nsw i64 %i.dcf, %.0.i.i.i.i.i.i.i.i.i.i.i.i769 ; 6 uses
  %i.dch = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i769, 0
  br i1 %i.dch, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i770

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.preheader:      ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i768
  %min.iters.check3388 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i769, 20
  br i1 %min.iters.check3388, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.preheader3763, label %vector.memcheck3389

vector.memcheck3389:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.preheader
  %i.dci = add i64 %i.cya, %i.cyc
  %i.dcj = shl i64 %i.dci, 2
  %i.dck = add i64 %i.dcj, %i.dbu
  %i.dcl = add i64 %.idx2783, %i.dbq
  %i.dcm = sub i64 %i.dcl, %i.dck
  %diff.check3390 = icmp ugt i64 %i.dcm, -32
  br i1 %diff.check3390, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.preheader3763, label %vector.ph3391

vector.ph3391:                                    ; preds = %vector.memcheck3389
  %n.vec3392 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i769, 9223372036854775800 ; 3 uses
  br label %vector.body3393

vector.body3393:                                  ; preds = %vector.body3393, %vector.ph3391
  %index3394 = phi i64 [ 0, %vector.ph3391 ], [ %index.next3397, %vector.body3393 ] ; 3 uses
  %i.dcn = getelementptr inbounds nuw [4 x i8], ptr %i.dbw, i64 %index3394 ; 2 uses
  %i.dco = getelementptr inbounds nuw [4 x i8], ptr %i.dbs, i64 %index3394 ; 2 uses
  %i.dcp = getelementptr inbounds nuw i8, ptr %i.dco, i64 16
  %wide.load3395 = load <4 x i32>, ptr %i.dco, align 4, !tbaa !24
  %wide.load3396 = load <4 x i32>, ptr %i.dcp, align 4, !tbaa !24
  %i.dcq = getelementptr inbounds nuw i8, ptr %i.dcn, i64 16
  store <4 x i32> %wide.load3395, ptr %i.dcn, align 4, !tbaa !24
  store <4 x i32> %wide.load3396, ptr %i.dcq, align 4, !tbaa !24
  %index.next3397 = add nuw i64 %index3394, 8     ; 2 uses
  %i.dcr = icmp eq i64 %index.next3397, %n.vec3392
  br i1 %i.dcr, label %middle.block3398, label %vector.body3393, !llvm.loop !392

middle.block3398:                                 ; preds = %vector.body3393
  %cmp.n3399 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i769, %n.vec3392
  br i1 %cmp.n3399, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i770, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.preheader3763

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.preheader3763:  ; preds = %vector.memcheck3389, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.preheader, %middle.block3398
  %.05.i.i.i.i.i.i.i.i.i.i.i.i778.ph = phi i64 [ 0, %vector.memcheck3389 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.preheader ], [ %n.vec3392, %middle.block3398 ] ; 3 uses
  %xtraiter3881 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i769, 3 ; 2 uses
  %lcmp.mod3882.not = icmp eq i64 %xtraiter3881, 0
  br i1 %lcmp.mod3882.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.prol:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.preheader3763, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i778.prol = phi i64 [ %i.dcv, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i778.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.preheader3763 ] ; 3 uses
  %prol.iter3883 = phi i64 [ %prol.iter3883.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.preheader3763 ]
  %i.dcs = getelementptr inbounds nuw [4 x i8], ptr %i.dbw, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i778.prol
  %i.dct = getelementptr inbounds nuw [4 x i8], ptr %i.dbs, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i778.prol
  %i.dcu = load i32, ptr %i.dct, align 4, !tbaa !24
  store i32 %i.dcu, ptr %i.dcs, align 4, !tbaa !24
  %i.dcv = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i778.prol, 1 ; 2 uses
  %prol.iter3883.next = add i64 %prol.iter3883, 1 ; 2 uses
  %prol.iter3883.cmp.not = icmp eq i64 %prol.iter3883.next, %xtraiter3881
  br i1 %prol.iter3883.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.prol, !llvm.loop !393

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.prol.loopexit:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.preheader3763
  %.05.i.i.i.i.i.i.i.i.i.i.i.i778.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i778.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.preheader3763 ], [ %i.dcv, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.prol ]
  %i.dcw = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i778.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i769
  %i.dcx = icmp ugt i64 %i.dcw, -4
  br i1 %i.dcx, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i770, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777
  %.05.i.i.i.i.i.i.i.i.i.i.i.i778 = phi i64 [ %i.ddn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i778.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.prol.loopexit ] ; 6 uses
  %i.dcy = getelementptr inbounds nuw [4 x i8], ptr %i.dbw, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i778
  %i.dcz = getelementptr inbounds nuw [4 x i8], ptr %i.dbs, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i778
  %i.dda = load i32, ptr %i.dcz, align 4, !tbaa !24
  store i32 %i.dda, ptr %i.dcy, align 4, !tbaa !24
  %i.ddb = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i778, 1 ; 2 uses
  %i.ddc = getelementptr inbounds nuw [4 x i8], ptr %i.dbw, i64 %i.ddb
  %i.ddd = getelementptr inbounds nuw [4 x i8], ptr %i.dbs, i64 %i.ddb
  %i.dde = load i32, ptr %i.ddd, align 4, !tbaa !24
  store i32 %i.dde, ptr %i.ddc, align 4, !tbaa !24
  %i.ddf = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i778, 2 ; 2 uses
  %i.ddg = getelementptr inbounds nuw [4 x i8], ptr %i.dbw, i64 %i.ddf
  %i.ddh = getelementptr inbounds nuw [4 x i8], ptr %i.dbs, i64 %i.ddf
  %i.ddi = load i32, ptr %i.ddh, align 4, !tbaa !24
  store i32 %i.ddi, ptr %i.ddg, align 4, !tbaa !24
  %i.ddj = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i778, 3 ; 2 uses
  %i.ddk = getelementptr inbounds nuw [4 x i8], ptr %i.dbw, i64 %i.ddj
  %i.ddl = getelementptr inbounds nuw [4 x i8], ptr %i.dbs, i64 %i.ddj
end_hunk_0
begin_hunk_1_@_ZN3igl20massmatrix_intrinsicIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEdEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EENS_14MassMatrixTypeEiRNS1_12SparseMatrixIT1_Li0EiEE:bb.a
  store ptr %23, ptr %i.aye, align 8, !tbaa !77
  %i.ayf = getelementptr inbounds nuw i8, ptr %25, i64 16
  store ptr %26, ptr %i.ayf, align 8, !tbaa !79
  %i.ayg = getelementptr inbounds nuw i8, ptr %25, i64 24
  store ptr %78, ptr %i.ayg, align 8, !tbaa !81
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS4_INS5_IdLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSE_(ptr noundef nonnull align 8 dereferenceable(32) %25)
          to label %bb.cv unwind label %bb.dd

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #14
  %i.ayh = load ptr, ptr %75, align 8, !tbaa !59
  call void @free(ptr noundef %i.ayh) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #14
  call void @free(ptr noundef %.0.i.i2740) #14
  %i.ayi = load ptr, ptr %71, align 8, !tbaa !59
  call void @free(ptr noundef %i.ayi) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #14
  %i.ayj = load ptr, ptr %70, align 8, !tbaa !59
  call void @free(ptr noundef %i.ayj) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #14
  br label %_ZN5Eigen9DenseBaseINS_12ArrayWrapperINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEdVERKd.exit

bb.cw:                                            ; preds = %bb.s
  %i.ayk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #14
  br label %bb.ej

bb.cx:                                            ; preds = %bb.t
  %i.ayl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #14
  br label %bb.ej

bb.cy:                                            ; preds = %bb.u
  %i.aym = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #14
  br label %bb.ej

bb.cz:                                            ; preds = %.thread2738
  %i.ayn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #14
  br label %bb.df

.body350:                                         ; preds = %bb.ab, %thread-pre-split.i.i.i.i.i.i.i353
  %i.ayo = landingpad { ptr, i32 }
          cleanup
  %i.ayp = load ptr, ptr %73, align 8, !tbaa !59
  call void @free(ptr noundef %i.ayp) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #14
  br label %bb.de

bb.da:                                            ; preds = %.invoke
  %i.ayq = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.db:                                            ; preds = %.thread2778
  %i.ayr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #14
  br label %.body403

bb.dc:                                            ; preds = %bb.ct
  %i.ays = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #14
  br label %.body403

bb.dd:                                            ; preds = %bb.cu
  %i.ayt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #14
  br label %.body403

.body403:                                         ; preds = %bb.db, %bb.dc, %bb.dd, %bb.ai
  %.pn300.pn.pn = phi { ptr, i32 } [ %i.yv, %bb.ai ], [ %i.ayt, %bb.dd ], [ %i.ayr, %bb.db ], [ %i.ays, %bb.dc ]
  %i.ayu = load ptr, ptr %75, align 8, !tbaa !59
  call void @free(ptr noundef %i.ayu) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #14
  call void @free(ptr noundef %.0.i.i2740) #14
  br label %bb.de

bb.de:                                            ; preds = %bb.da, %.body403, %.body350
  %.pn300.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ayo, %.body350 ], [ %.pn300.pn.pn, %.body403 ], [ %i.ayq, %bb.da ]
  %i.ayv = load ptr, ptr %71, align 8, !tbaa !59
  call void @free(ptr noundef %i.ayv) #14
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.cz
  %.pn300.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn300.pn.pn.pn.pn.pn, %bb.de ], [ %i.ayn, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #14
  br label %.body

.body:                                            ; preds = %bb.x, %bb.df
  %.pn300.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn300.pn.pn.pn.pn.pn.pn, %bb.df ], [ %i.ig, %bb.x ]
  %i.ayw = load ptr, ptr %70, align 8, !tbaa !59
  call void @free(ptr noundef %i.ayw) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #14
  br label %bb.ej

bb.dg:                                            ; preds = %bb.b
  %sext = mul i64 %i.b, 38654705664
  %i.ayx = ashr exact i64 %sext, 32               ; 3 uses
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %61, i64 noundef %i.ayx, i64 noundef 1)
          to label %bb.dh unwind label %bb.ef

bb.dh:                                            ; preds = %bb.dg
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %62, i64 noundef %i.ayx, i64 noundef 1)
          to label %bb.di unwind label %bb.ef

bb.di:                                            ; preds = %bb.dh
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %63, i64 noundef %i.ayx, i64 noundef 1)
          to label %bb.dj unwind label %bb.ef

bb.dj:                                            ; preds = %bb.di
  %i.ayy = load ptr, ptr %1, align 8, !tbaa !89, !noalias !823
  %i.ayz = load i64, ptr %i.a, align 8, !tbaa !90, !noalias !823 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #14, !noalias !824
  call void @llvm.experimental.noalias.scope.decl(metadata !825)
  %i.aza = load ptr, ptr %61, align 8, !tbaa !26, !noalias !826 ; 2 uses
  %i.azb = getelementptr inbounds nuw i8, ptr %61, i64 8
  %i.azc = load i64, ptr %i.azb, align 8, !tbaa !27, !noalias !826 ; 2 uses
  store ptr %i.aza, ptr %22, align 8, !tbaa !30, !alias.scope !825, !noalias !824
  %i.azd = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 %i.ayz, ptr %i.azd, align 8, !tbaa !31, !alias.scope !825, !noalias !824
  %i.aze = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i64 1, ptr %i.aze, align 8, !tbaa !31, !alias.scope !825, !noalias !824
  %i.azf = getelementptr inbounds nuw i8, ptr %22, i64 24
  store ptr %61, ptr %i.azf, align 8, !tbaa !33, !alias.scope !825, !noalias !824
  %i.azg = getelementptr inbounds nuw i8, ptr %22, i64 32
  %i.azh = getelementptr inbounds nuw i8, ptr %22, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.azg, i8 0, i64 16, i1 false), !noalias !824
  store i64 %i.azc, ptr %i.azh, align 8, !tbaa !36, !alias.scope !825, !noalias !824
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #14, !noalias !824
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #14, !noalias !824
  store ptr %i.ayy, ptr %18, align 8, !tbaa !93, !noalias !824
  %i.azi = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 %i.ayz, ptr %i.azi, align 8, !tbaa !31, !noalias !824
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #14, !noalias !824
  store ptr %i.aza, ptr %19, align 8, !tbaa !41, !noalias !824
  %i.azj = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i64 %i.azc, ptr %i.azj, align 8, !tbaa !31, !noalias !824
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #14, !noalias !824
  store ptr %19, ptr %20, align 8, !tbaa !43, !noalias !824
  %i.azk = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %18, ptr %i.azk, align 8, !tbaa !783, !noalias !824
  %i.azl = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr %21, ptr %i.azl, align 8, !tbaa !46, !noalias !824
  %i.azm = getelementptr inbounds nuw i8, ptr %20, i64 24
  store ptr %22, ptr %i.azm, align 8, !tbaa !48, !noalias !824
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS4_IKNS5_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSF_(ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %bb.dk unwind label %bb.ef

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #14, !noalias !824
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #14, !noalias !824
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #14, !noalias !824
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #14, !noalias !824
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #14, !noalias !824
  %i.azn = load ptr, ptr %1, align 8, !tbaa !89, !noalias !827 ; 2 uses
  %i.azo = ptrtoaddr ptr %i.azn to i64            ; 2 uses
  %i.azp = load i64, ptr %i.a, align 8, !tbaa !90, !noalias !827 ; 13 uses
  %i.azq = getelementptr inbounds [4 x i8], ptr %i.azn, i64 %i.azp ; 13 uses
  %i.azr = load ptr, ptr %61, align 8, !tbaa !26, !noalias !828 ; 2 uses
  %i.azs = ptrtoaddr ptr %i.azr to i64            ; 2 uses
  %i.azt = getelementptr inbounds [4 x i8], ptr %i.azr, i64 %i.ayz ; 14 uses
  %i.azu = ptrtoint ptr %i.azt to i64             ; 2 uses
  %i.azv = and i64 %i.azu, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.azv, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.dl, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i

bb.dl:                                            ; preds = %bb.dk
  %i.azw = lshr exact i64 %i.azu, 2
  %i.azx = sub nsw i64 0, %i.azw
  %i.azy = and i64 %i.azx, 3
  %i.azz = call i64 @llvm.smin.i64(i64 %i.azy, i64 %i.azp)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dl, %bb.dk
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.azz, %bb.dl ], [ %i.azp, %bb.dk ] ; 11 uses
  %i.baa = sub nsw i64 %i.azp, %.0.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bab = sdiv i64 %i.baa, 4
  %i.bac = shl nsw i64 %i.bab, 2                  ; 2 uses
  %i.bad = add nsw i64 %i.bac, %.0.i.i.i.i.i.i.i.i.i.i.i.i ; 6 uses
  %i.bae = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bae, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 20
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader3793, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.baf = shl nsw i64 %i.ayz, 2
  %i.bag = shl i64 %i.azp, 2
  %i.bah = add i64 %i.baf, %i.azs
  %i.bai = add i64 %i.bag, %i.azo
  %i.baj = sub i64 %i.bai, %i.bah
  %diff.check = icmp ugt i64 %i.baj, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader3793, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bak = getelementptr inbounds nuw [4 x i8], ptr %i.azt, i64 %index ; 2 uses
  %i.bal = getelementptr inbounds nuw [4 x i8], ptr %i.azq, i64 %index ; 2 uses
  %i.bam = getelementptr inbounds nuw i8, ptr %i.bal, i64 16
  %wide.load = load <4 x i32>, ptr %i.bal, align 4, !tbaa !24
  %wide.load2920 = load <4 x i32>, ptr %i.bam, align 4, !tbaa !24
  %i.ban = getelementptr inbounds nuw i8, ptr %i.bak, i64 16
  store <4 x i32> %wide.load, ptr %i.bak, align 4, !tbaa !24
  store <4 x i32> %wide.load2920, ptr %i.ban, align 4, !tbaa !24
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bao = icmp eq i64 %index.next, %n.vec
  br i1 %i.bao, label %middle.block, label %vector.body, !llvm.loop !614

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader3793

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader3793:     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader3793, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.bas, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader3793 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader3793 ]
  %i.bap = getelementptr inbounds nuw [4 x i8], ptr %i.azt, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.baq = getelementptr inbounds nuw [4 x i8], ptr %i.azq, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.bar = load i32, ptr %i.baq, align 4, !tbaa !24
  store i32 %i.bar, ptr %i.bap, align 4, !tbaa !24
  %i.bas = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !615

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader3793
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader3793 ], [ %i.bas, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.bat = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bau = icmp ugt i64 %i.bat, -4
  br i1 %i.bau, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bbk, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.bav = getelementptr inbounds nuw [4 x i8], ptr %i.azt, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i
  %i.baw = getelementptr inbounds nuw [4 x i8], ptr %i.azq, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bax = load i32, ptr %i.baw, align 4, !tbaa !24
  store i32 %i.bax, ptr %i.bav, align 4, !tbaa !24
  %i.bay = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.baz = getelementptr inbounds nuw [4 x i8], ptr %i.azt, i64 %i.bay
  %i.bba = getelementptr inbounds nuw [4 x i8], ptr %i.azq, i64 %i.bay
  %i.bbb = load i32, ptr %i.bba, align 4, !tbaa !24
  store i32 %i.bbb, ptr %i.baz, align 4, !tbaa !24
  %i.bbc = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.bbd = getelementptr inbounds nuw [4 x i8], ptr %i.azt, i64 %i.bbc
  %i.bbe = getelementptr inbounds nuw [4 x i8], ptr %i.azq, i64 %i.bbc
  %i.bbf = load i32, ptr %i.bbe, align 4, !tbaa !24
  store i32 %i.bbf, ptr %i.bbd, align 4, !tbaa !24
  %i.bbg = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.bbh = getelementptr inbounds nuw [4 x i8], ptr %i.azt, i64 %i.bbg
  %i.bbi = getelementptr inbounds nuw [4 x i8], ptr %i.azq, i64 %i.bbg
  %i.bbj = load i32, ptr %i.bbi, align 4, !tbaa !24
  store i32 %i.bbj, ptr %i.bbh, align 4, !tbaa !24
  %i.bbk = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.bbk, %.0.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !616

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.bbl = icmp sgt i64 %i.baa, 3
  br i1 %i.bbl, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i493, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i493, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.bbm = icmp slt i64 %i.bad, %i.azp
  br i1 %i.bbm, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader, label %.loopexit2817

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader:       ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.bbn = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, %i.bac
  %i.bbo = sub i64 %i.azp, %i.bbn                 ; 3 uses
  %min.iters.check2924 = icmp ult i64 %i.bbo, 20
  br i1 %min.iters.check2924, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader3792, label %vector.memcheck2925

vector.memcheck2925:                              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.bbp = shl nsw i64 %i.ayz, 2
  %i.bbq = shl i64 %i.azp, 2
  %i.bbr = add i64 %i.bbp, %i.azs
  %i.bbs = add i64 %i.bbq, %i.azo
  %i.bbt = sub i64 %i.bbs, %i.bbr
  %diff.check2926 = icmp ugt i64 %i.bbt, -32
  br i1 %diff.check2926, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader3792, label %vector.ph2927

vector.ph2927:                                    ; preds = %vector.memcheck2925
  %n.vec2928 = and i64 %i.bbo, -8                 ; 3 uses
  %i.bbu = add i64 %i.bad, %n.vec2928
  br label %vector.body2929

vector.body2929:                                  ; preds = %vector.body2929, %vector.ph2927
  %index2930 = phi i64 [ 0, %vector.ph2927 ], [ %index.next2933, %vector.body2929 ] ; 2 uses
  %i.bbv = add i64 %i.bad, %index2930             ; 2 uses
  %i.bbw = getelementptr inbounds [4 x i8], ptr %i.azt, i64 %i.bbv ; 2 uses
  %i.bbx = getelementptr inbounds [4 x i8], ptr %i.azq, i64 %i.bbv ; 2 uses
  %i.bby = getelementptr inbounds nuw i8, ptr %i.bbx, i64 16
  %wide.load2931 = load <4 x i32>, ptr %i.bbx, align 4, !tbaa !24
  %wide.load2932 = load <4 x i32>, ptr %i.bby, align 4, !tbaa !24
  %i.bbz = getelementptr inbounds nuw i8, ptr %i.bbw, i64 16
  store <4 x i32> %wide.load2931, ptr %i.bbw, align 4, !tbaa !24
  store <4 x i32> %wide.load2932, ptr %i.bbz, align 4, !tbaa !24
  %index.next2933 = add nuw i64 %index2930, 8     ; 2 uses
  %i.bca = icmp eq i64 %index.next2933, %n.vec2928
  br i1 %i.bca, label %middle.block2934, label %vector.body2929, !llvm.loop !617

middle.block2934:                                 ; preds = %vector.body2929
  %cmp.n2935 = icmp eq i64 %i.bbo, %n.vec2928
  br i1 %cmp.n2935, label %.loopexit2817, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader3792

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader3792:   ; preds = %vector.memcheck2925, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block2934
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.bad, %vector.memcheck2925 ], [ %i.bad, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.bbu, %middle.block2934 ] ; 4 uses
  %i.bcb = sub i64 %i.azp, %.05.i18.i.i.i.i.i.i.i.i.i.i.i.ph
  %xtraiter3794 = and i64 %i.bcb, 3               ; 2 uses
  %lcmp.mod3795.not = icmp eq i64 %xtraiter3794, 0
  br i1 %lcmp.mod3795.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol:            ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader3792, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.bcf, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader3792 ] ; 3 uses
  %prol.iter3796 = phi i64 [ %prol.iter3796.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader3792 ]
  %i.bcc = getelementptr inbounds [4 x i8], ptr %i.azt, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.bcd = getelementptr inbounds [4 x i8], ptr %i.azq, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.bce = load i32, ptr %i.bcd, align 4, !tbaa !24
  store i32 %i.bce, ptr %i.bcc, align 4, !tbaa !24
  %i.bcf = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter3796.next = add i64 %prol.iter3796, 1 ; 2 uses
  %prol.iter3796.cmp.not = icmp eq i64 %prol.iter3796.next, %xtraiter3794
  br i1 %prol.iter3796.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !618

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:   ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader3792
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader3792 ], [ %i.bcf, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.bcg = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.ph, %i.azp
  %i.bch = icmp ugt i64 %i.bcg, -4
  br i1 %i.bch, label %.loopexit2817, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bcx, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.bci = getelementptr inbounds [4 x i8], ptr %i.azt, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i
  %i.bcj = getelementptr inbounds [4 x i8], ptr %i.azq, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i
  %i.bck = load i32, ptr %i.bcj, align 4, !tbaa !24
  store i32 %i.bck, ptr %i.bci, align 4, !tbaa !24
  %i.bcl = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bcm = getelementptr inbounds [4 x i8], ptr %i.azt, i64 %i.bcl
  %i.bcn = getelementptr inbounds [4 x i8], ptr %i.azq, i64 %i.bcl
  %i.bco = load i32, ptr %i.bcn, align 4, !tbaa !24
  store i32 %i.bco, ptr %i.bcm, align 4, !tbaa !24
  %i.bcp = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.bcq = getelementptr inbounds [4 x i8], ptr %i.azt, i64 %i.bcp
  %i.bcr = getelementptr inbounds [4 x i8], ptr %i.azq, i64 %i.bcp
  %i.bcs = load i32, ptr %i.bcr, align 4, !tbaa !24
  store i32 %i.bcs, ptr %i.bcq, align 4, !tbaa !24
  %i.bct = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.bcu = getelementptr inbounds [4 x i8], ptr %i.azt, i64 %i.bct
  %i.bcv = getelementptr inbounds [4 x i8], ptr %i.azq, i64 %i.bct
  %i.bcw = load i32, ptr %i.bcv, align 4, !tbaa !24
  store i32 %i.bcw, ptr %i.bcu, align 4, !tbaa !24
  %i.bcx = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.bcx, %i.azp
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.3, label %.loopexit2817, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !619

.lr.ph.i.i.i.i.i.i.i.i.i.i.i493:                  ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i493
  %.021.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bdb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i493 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bcy = getelementptr inbounds [4 x i8], ptr %i.azt, i64 %.021.i.i.i.i.i.i.i.i.i.i.i
  %i.bcz = getelementptr inbounds [4 x i8], ptr %i.azq, i64 %.021.i.i.i.i.i.i.i.i.i.i.i
  %i.bda = load <2 x i64>, ptr %i.bcz, align 1, !tbaa !22
  store <2 x i64> %i.bda, ptr %i.bcy, align 16, !tbaa !22
  %i.bdb = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.bdc = icmp slt i64 %i.bdb, %i.bad
  br i1 %i.bdc, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i493, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !620

.loopexit2817:                                    ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i, %middle.block2934, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.bdd = load ptr, ptr %1, align 8, !tbaa !89, !noalias !829 ; 2 uses
  %i.bde = ptrtoaddr ptr %i.bdd to i64            ; 2 uses
  %i.bdf = load i64, ptr %i.a, align 8, !tbaa !90, !noalias !829 ; 13 uses
  %i.bdg = getelementptr inbounds [4 x i8], ptr %i.bdd, i64 %i.bdf ; 13 uses
  %i.bdh = add nsw i64 %i.azp, %i.ayz             ; 4 uses
  %i.bdi = load ptr, ptr %61, align 8, !tbaa !26, !noalias !830 ; 2 uses
  %i.bdj = ptrtoaddr ptr %i.bdi to i64            ; 2 uses
  %i.bdk = getelementptr inbounds [4 x i8], ptr %i.bdi, i64 %i.bdh ; 14 uses
  %i.bdl = ptrtoint ptr %i.bdk to i64             ; 2 uses
  %i.bdm = and i64 %i.bdl, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i499 = icmp eq i64 %i.bdm, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i499, label %bb.dm, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i500

bb.dm:                                            ; preds = %.loopexit2817
  %i.bdn = lshr exact i64 %i.bdl, 2
  %i.bdo = sub nsw i64 0, %i.bdn
  %i.bdp = and i64 %i.bdo, 3
  %i.bdq = call i64 @llvm.smin.i64(i64 %i.bdp, i64 %i.bdf)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i500

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i500: ; preds = %bb.dm, %.loopexit2817
  %.0.i.i.i.i.i.i.i.i.i.i.i.i501 = phi i64 [ %i.bdq, %bb.dm ], [ %i.bdf, %.loopexit2817 ] ; 11 uses
  %i.bdr = sub nsw i64 %i.bdf, %.0.i.i.i.i.i.i.i.i.i.i.i.i501 ; 2 uses
  %i.bds = sdiv i64 %i.bdr, 4
  %i.bdt = shl nsw i64 %i.bds, 2                  ; 2 uses
  %i.bdu = add nsw i64 %i.bdt, %.0.i.i.i.i.i.i.i.i.i.i.i.i501 ; 6 uses
  %i.bdv = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i501, 0
  br i1 %i.bdv, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i502

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.preheader:      ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i500
  %min.iters.check2940 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i501, 20
  br i1 %min.iters.check2940, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.preheader3791, label %vector.memcheck2941

vector.memcheck2941:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.preheader
  %i.bdw = shl nsw i64 %i.bdh, 2
  %i.bdx = shl i64 %i.bdf, 2
  %i.bdy = add i64 %i.bdw, %i.bdj
  %i.bdz = add i64 %i.bdx, %i.bde
  %i.bea = sub i64 %i.bdz, %i.bdy
  %diff.check2942 = icmp ugt i64 %i.bea, -32
  br i1 %diff.check2942, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.preheader3791, label %vector.ph2943

vector.ph2943:                                    ; preds = %vector.memcheck2941
  %n.vec2944 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i501, 9223372036854775800 ; 3 uses
  br label %vector.body2945

vector.body2945:                                  ; preds = %vector.body2945, %vector.ph2943
  %index2946 = phi i64 [ 0, %vector.ph2943 ], [ %index.next2949, %vector.body2945 ] ; 3 uses
  %i.beb = getelementptr inbounds nuw [4 x i8], ptr %i.bdk, i64 %index2946 ; 2 uses
  %i.bec = getelementptr inbounds nuw [4 x i8], ptr %i.bdg, i64 %index2946 ; 2 uses
  %i.bed = getelementptr inbounds nuw i8, ptr %i.bec, i64 16
  %wide.load2947 = load <4 x i32>, ptr %i.bec, align 4, !tbaa !24
  %wide.load2948 = load <4 x i32>, ptr %i.bed, align 4, !tbaa !24
  %i.bee = getelementptr inbounds nuw i8, ptr %i.beb, i64 16
  store <4 x i32> %wide.load2947, ptr %i.beb, align 4, !tbaa !24
  store <4 x i32> %wide.load2948, ptr %i.bee, align 4, !tbaa !24
  %index.next2949 = add nuw i64 %index2946, 8     ; 2 uses
  %i.bef = icmp eq i64 %index.next2949, %n.vec2944
  br i1 %i.bef, label %middle.block2950, label %vector.body2945, !llvm.loop !625

middle.block2950:                                 ; preds = %vector.body2945
  %cmp.n2951 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i501, %n.vec2944
  br i1 %cmp.n2951, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i502, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.preheader3791

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.preheader3791:  ; preds = %vector.memcheck2941, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.preheader, %middle.block2950
  %.05.i.i.i.i.i.i.i.i.i.i.i.i510.ph = phi i64 [ 0, %vector.memcheck2941 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.preheader ], [ %n.vec2944, %middle.block2950 ] ; 3 uses
  %xtraiter3797 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i501, 3 ; 2 uses
  %lcmp.mod3798.not = icmp eq i64 %xtraiter3797, 0
  br i1 %lcmp.mod3798.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.prol:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.preheader3791, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i510.prol = phi i64 [ %i.bej, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i510.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.preheader3791 ] ; 3 uses
  %prol.iter3799 = phi i64 [ %prol.iter3799.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.preheader3791 ]
  %i.beg = getelementptr inbounds nuw [4 x i8], ptr %i.bdk, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i510.prol
  %i.beh = getelementptr inbounds nuw [4 x i8], ptr %i.bdg, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i510.prol
  %i.bei = load i32, ptr %i.beh, align 4, !tbaa !24
  store i32 %i.bei, ptr %i.beg, align 4, !tbaa !24
  %i.bej = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i510.prol, 1 ; 2 uses
  %prol.iter3799.next = add i64 %prol.iter3799, 1 ; 2 uses
  %prol.iter3799.cmp.not = icmp eq i64 %prol.iter3799.next, %xtraiter3797
  br i1 %prol.iter3799.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.prol, !llvm.loop !626

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.prol.loopexit:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.preheader3791
  %.05.i.i.i.i.i.i.i.i.i.i.i.i510.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i510.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.preheader3791 ], [ %i.bej, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.prol ]
  %i.bek = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i510.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i501
  %i.bel = icmp ugt i64 %i.bek, -4
  br i1 %i.bel, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i502, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509
  %.05.i.i.i.i.i.i.i.i.i.i.i.i510 = phi i64 [ %i.bfb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i510.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.prol.loopexit ] ; 6 uses
  %i.bem = getelementptr inbounds nuw [4 x i8], ptr %i.bdk, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i510
  %i.ben = getelementptr inbounds nuw [4 x i8], ptr %i.bdg, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i510
  %i.beo = load i32, ptr %i.ben, align 4, !tbaa !24
  store i32 %i.beo, ptr %i.bem, align 4, !tbaa !24
  %i.bep = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i510, 1 ; 2 uses
  %i.beq = getelementptr inbounds nuw [4 x i8], ptr %i.bdk, i64 %i.bep
  %i.ber = getelementptr inbounds nuw [4 x i8], ptr %i.bdg, i64 %i.bep
  %i.bes = load i32, ptr %i.ber, align 4, !tbaa !24
  store i32 %i.bes, ptr %i.beq, align 4, !tbaa !24
  %i.bet = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i510, 2 ; 2 uses
  %i.beu = getelementptr inbounds nuw [4 x i8], ptr %i.bdk, i64 %i.bet
  %i.bev = getelementptr inbounds nuw [4 x i8], ptr %i.bdg, i64 %i.bet
  %i.bew = load i32, ptr %i.bev, align 4, !tbaa !24
  store i32 %i.bew, ptr %i.beu, align 4, !tbaa !24
  %i.bex = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i510, 3 ; 2 uses
  %i.bey = getelementptr inbounds nuw [4 x i8], ptr %i.bdk, i64 %i.bex
  %i.bez = getelementptr inbounds nuw [4 x i8], ptr %i.bdg, i64 %i.bex
  %i.bfa = load i32, ptr %i.bez, align 4, !tbaa !24
  store i32 %i.bfa, ptr %i.bey, align 4, !tbaa !24
  %i.bfb = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i510, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i511.3 = icmp eq i64 %i.bfb, %.0.i.i.i.i.i.i.i.i.i.i.i.i501
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i511.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i502, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509, !llvm.loop !627

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i502: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509, %middle.block2950, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i500
  %i.bfc = icmp sgt i64 %i.bdr, 3
  br i1 %i.bfc, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i507, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i503

._crit_edge.i.i.i.i.i.i.i.i.i.i.i503:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i507, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i502
  %i.bfd = icmp slt i64 %i.bdu, %i.bdf
  br i1 %i.bfd, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.preheader, label %.loopexit2816

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.preheader:    ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i503
  %i.bfe = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i501, %i.bdt
  %i.bff = sub i64 %i.bdf, %i.bfe                 ; 3 uses
  %min.iters.check2956 = icmp ult i64 %i.bff, 20
  br i1 %min.iters.check2956, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.preheader3790, label %vector.memcheck2957

vector.memcheck2957:                              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.preheader
  %i.bfg = shl nsw i64 %i.bdh, 2
  %i.bfh = shl i64 %i.bdf, 2
  %i.bfi = add i64 %i.bfg, %i.bdj
  %i.bfj = add i64 %i.bfh, %i.bde
  %i.bfk = sub i64 %i.bfj, %i.bfi
  %diff.check2958 = icmp ugt i64 %i.bfk, -32
  br i1 %diff.check2958, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.preheader3790, label %vector.ph2959

vector.ph2959:                                    ; preds = %vector.memcheck2957
  %n.vec2960 = and i64 %i.bff, -8                 ; 3 uses
  %i.bfl = add i64 %i.bdu, %n.vec2960
  br label %vector.body2961

vector.body2961:                                  ; preds = %vector.body2961, %vector.ph2959
  %index2962 = phi i64 [ 0, %vector.ph2959 ], [ %index.next2965, %vector.body2961 ] ; 2 uses
  %i.bfm = add i64 %i.bdu, %index2962             ; 2 uses
  %i.bfn = getelementptr inbounds [4 x i8], ptr %i.bdk, i64 %i.bfm ; 2 uses
  %i.bfo = getelementptr inbounds [4 x i8], ptr %i.bdg, i64 %i.bfm ; 2 uses
  %i.bfp = getelementptr inbounds nuw i8, ptr %i.bfo, i64 16
  %wide.load2963 = load <4 x i32>, ptr %i.bfo, align 4, !tbaa !24
  %wide.load2964 = load <4 x i32>, ptr %i.bfp, align 4, !tbaa !24
  %i.bfq = getelementptr inbounds nuw i8, ptr %i.bfn, i64 16
  store <4 x i32> %wide.load2963, ptr %i.bfn, align 4, !tbaa !24
  store <4 x i32> %wide.load2964, ptr %i.bfq, align 4, !tbaa !24
  %index.next2965 = add nuw i64 %index2962, 8     ; 2 uses
  %i.bfr = icmp eq i64 %index.next2965, %n.vec2960
  br i1 %i.bfr, label %middle.block2966, label %vector.body2961, !llvm.loop !628

middle.block2966:                                 ; preds = %vector.body2961
  %cmp.n2967 = icmp eq i64 %i.bff, %n.vec2960
  br i1 %cmp.n2967, label %.loopexit2816, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.preheader3790

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.preheader3790: ; preds = %vector.memcheck2957, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.preheader, %middle.block2966
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i505.ph = phi i64 [ %i.bdu, %vector.memcheck2957 ], [ %i.bdu, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.preheader ], [ %i.bfl, %middle.block2966 ] ; 4 uses
  %i.bfs = sub i64 %i.bdf, %.05.i18.i.i.i.i.i.i.i.i.i.i.i505.ph
  %xtraiter3800 = and i64 %i.bfs, 3               ; 2 uses
  %lcmp.mod3801.not = icmp eq i64 %xtraiter3800, 0
  br i1 %lcmp.mod3801.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.prol:         ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.preheader3790, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i505.prol = phi i64 [ %i.bfw, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i505.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.preheader3790 ] ; 3 uses
  %prol.iter3802 = phi i64 [ %prol.iter3802.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.preheader3790 ]
  %i.bft = getelementptr inbounds [4 x i8], ptr %i.bdk, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i505.prol
  %i.bfu = getelementptr inbounds [4 x i8], ptr %i.bdg, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i505.prol
  %i.bfv = load i32, ptr %i.bfu, align 4, !tbaa !24
  store i32 %i.bfv, ptr %i.bft, align 4, !tbaa !24
  %i.bfw = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i505.prol, 1 ; 2 uses
  %prol.iter3802.next = add i64 %prol.iter3802, 1 ; 2 uses
  %prol.iter3802.cmp.not = icmp eq i64 %prol.iter3802.next, %xtraiter3800
  br i1 %prol.iter3802.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.prol, !llvm.loop !629

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.preheader3790
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i505.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i505.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.preheader3790 ], [ %i.bfw, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.prol ]
  %i.bfx = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i505.ph, %i.bdf
  %i.bfy = icmp ugt i64 %i.bfx, -4
  br i1 %i.bfy, label %.loopexit2816, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i505 = phi i64 [ %i.bgo, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i505.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.prol.loopexit ] ; 6 uses
  %i.bfz = getelementptr inbounds [4 x i8], ptr %i.bdk, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i505
  %i.bga = getelementptr inbounds [4 x i8], ptr %i.bdg, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i505
  %i.bgb = load i32, ptr %i.bga, align 4, !tbaa !24
  store i32 %i.bgb, ptr %i.bfz, align 4, !tbaa !24
  %i.bgc = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i505, 1 ; 2 uses
  %i.bgd = getelementptr inbounds [4 x i8], ptr %i.bdk, i64 %i.bgc
  %i.bge = getelementptr inbounds [4 x i8], ptr %i.bdg, i64 %i.bgc
  %i.bgf = load i32, ptr %i.bge, align 4, !tbaa !24
  store i32 %i.bgf, ptr %i.bgd, align 4, !tbaa !24
  %i.bgg = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i505, 2 ; 2 uses
  %i.bgh = getelementptr inbounds [4 x i8], ptr %i.bdk, i64 %i.bgg
  %i.bgi = getelementptr inbounds [4 x i8], ptr %i.bdg, i64 %i.bgg
  %i.bgj = load i32, ptr %i.bgi, align 4, !tbaa !24
  store i32 %i.bgj, ptr %i.bgh, align 4, !tbaa !24
  %i.bgk = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i505, 3 ; 2 uses
  %i.bgl = getelementptr inbounds [4 x i8], ptr %i.bdk, i64 %i.bgk
  %i.bgm = getelementptr inbounds [4 x i8], ptr %i.bdg, i64 %i.bgk
  %i.bgn = load i32, ptr %i.bgm, align 4, !tbaa !24
  store i32 %i.bgn, ptr %i.bgl, align 4, !tbaa !24
  %i.bgo = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i505, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i506.3 = icmp eq i64 %i.bgo, %i.bdf
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i506.3, label %.loopexit2816, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504, !llvm.loop !630

.lr.ph.i.i.i.i.i.i.i.i.i.i.i507:                  ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i502, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i507
  %.021.i.i.i.i.i.i.i.i.i.i.i508 = phi i64 [ %i.bgs, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i507 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i501, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i502 ] ; 3 uses
  %i.bgp = getelementptr inbounds [4 x i8], ptr %i.bdk, i64 %.021.i.i.i.i.i.i.i.i.i.i.i508
  %i.bgq = getelementptr inbounds [4 x i8], ptr %i.bdg, i64 %.021.i.i.i.i.i.i.i.i.i.i.i508
  %i.bgr = load <2 x i64>, ptr %i.bgq, align 1, !tbaa !22
  store <2 x i64> %i.bgr, ptr %i.bgp, align 16, !tbaa !22
  %i.bgs = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i508, 4 ; 2 uses
  %i.bgt = icmp slt i64 %i.bgs, %i.bdu
  br i1 %i.bgt, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i507, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i503, !llvm.loop !620

.loopexit2816:                                    ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504, %middle.block2966, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i503
  %i.bgu = load ptr, ptr %1, align 8, !tbaa !89, !noalias !831 ; 2 uses
  %i.bgv = ptrtoaddr ptr %i.bgu to i64            ; 2 uses
  %i.bgw = load i64, ptr %i.a, align 8, !tbaa !90, !noalias !831 ; 11 uses
  %.idx = shl i64 %i.bgw, 3                       ; 3 uses
  %i.bgx = getelementptr inbounds i8, ptr %i.bgu, i64 %.idx ; 13 uses
  %i.bgy = add nsw i64 %i.bdf, %i.bdh             ; 4 uses
  %i.bgz = load ptr, ptr %61, align 8, !tbaa !26, !noalias !832 ; 2 uses
  %i.bha = ptrtoaddr ptr %i.bgz to i64            ; 2 uses
  %i.bhb = getelementptr inbounds [4 x i8], ptr %i.bgz, i64 %i.bgy ; 14 uses
  %i.bhc = ptrtoint ptr %i.bhb to i64             ; 2 uses
  %i.bhd = and i64 %i.bhc, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i518 = icmp eq i64 %i.bhd, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i518, label %bb.dn, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i519

bb.dn:                                            ; preds = %.loopexit2816
  %i.bhe = lshr exact i64 %i.bhc, 2
  %i.bhf = sub nsw i64 0, %i.bhe
  %i.bhg = and i64 %i.bhf, 3
  %i.bhh = call i64 @llvm.smin.i64(i64 %i.bhg, i64 %i.bgw)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i519

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i519: ; preds = %bb.dn, %.loopexit2816
  %.0.i.i.i.i.i.i.i.i.i.i.i.i520 = phi i64 [ %i.bhh, %bb.dn ], [ %i.bgw, %.loopexit2816 ] ; 11 uses
  %i.bhi = sub nsw i64 %i.bgw, %.0.i.i.i.i.i.i.i.i.i.i.i.i520 ; 2 uses
  %i.bhj = sdiv i64 %i.bhi, 4
  %i.bhk = shl nsw i64 %i.bhj, 2                  ; 2 uses
  %i.bhl = add nsw i64 %i.bhk, %.0.i.i.i.i.i.i.i.i.i.i.i.i520 ; 6 uses
  %i.bhm = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i520, 0
  br i1 %i.bhm, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i521

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.preheader:      ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i519
  %min.iters.check2972 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i520, 16
  br i1 %min.iters.check2972, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.preheader3789, label %vector.memcheck2973

vector.memcheck2973:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.preheader
  %i.bhn = shl nsw i64 %i.bgy, 2
  %i.bho = add i64 %i.bhn, %i.bha
  %i.bhp = add i64 %.idx, %i.bgv
  %i.bhq = sub i64 %i.bhp, %i.bho
  %diff.check2974 = icmp ugt i64 %i.bhq, -32
  br i1 %diff.check2974, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.preheader3789, label %vector.ph2975

vector.ph2975:                                    ; preds = %vector.memcheck2973
  %n.vec2976 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i520, 9223372036854775800 ; 3 uses
  br label %vector.body2977

vector.body2977:                                  ; preds = %vector.body2977, %vector.ph2975
  %index2978 = phi i64 [ 0, %vector.ph2975 ], [ %index.next2981, %vector.body2977 ] ; 3 uses
  %i.bhr = getelementptr inbounds nuw [4 x i8], ptr %i.bhb, i64 %index2978 ; 2 uses
  %i.bhs = getelementptr inbounds nuw [4 x i8], ptr %i.bgx, i64 %index2978 ; 2 uses
  %i.bht = getelementptr inbounds nuw i8, ptr %i.bhs, i64 16
  %wide.load2979 = load <4 x i32>, ptr %i.bhs, align 4, !tbaa !24
  %wide.load2980 = load <4 x i32>, ptr %i.bht, align 4, !tbaa !24
  %i.bhu = getelementptr inbounds nuw i8, ptr %i.bhr, i64 16
  store <4 x i32> %wide.load2979, ptr %i.bhr, align 4, !tbaa !24
  store <4 x i32> %wide.load2980, ptr %i.bhu, align 4, !tbaa !24
  %index.next2981 = add nuw i64 %index2978, 8     ; 2 uses
  %i.bhv = icmp eq i64 %index.next2981, %n.vec2976
  br i1 %i.bhv, label %middle.block2982, label %vector.body2977, !llvm.loop !635

middle.block2982:                                 ; preds = %vector.body2977
  %cmp.n2983 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i520, %n.vec2976
  br i1 %cmp.n2983, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i521, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.preheader3789

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.preheader3789:  ; preds = %vector.memcheck2973, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.preheader, %middle.block2982
  %.05.i.i.i.i.i.i.i.i.i.i.i.i529.ph = phi i64 [ 0, %vector.memcheck2973 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.preheader ], [ %n.vec2976, %middle.block2982 ] ; 3 uses
  %xtraiter3803 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i520, 3 ; 2 uses
  %lcmp.mod3804.not = icmp eq i64 %xtraiter3803, 0
  br i1 %lcmp.mod3804.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.prol:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.preheader3789, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i529.prol = phi i64 [ %i.bhz, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i529.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.preheader3789 ] ; 3 uses
  %prol.iter3805 = phi i64 [ %prol.iter3805.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.preheader3789 ]
  %i.bhw = getelementptr inbounds nuw [4 x i8], ptr %i.bhb, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i529.prol
  %i.bhx = getelementptr inbounds nuw [4 x i8], ptr %i.bgx, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i529.prol
  %i.bhy = load i32, ptr %i.bhx, align 4, !tbaa !24
  store i32 %i.bhy, ptr %i.bhw, align 4, !tbaa !24
  %i.bhz = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i529.prol, 1 ; 2 uses
  %prol.iter3805.next = add i64 %prol.iter3805, 1 ; 2 uses
  %prol.iter3805.cmp.not = icmp eq i64 %prol.iter3805.next, %xtraiter3803
  br i1 %prol.iter3805.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.prol, !llvm.loop !636

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.prol.loopexit:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.preheader3789
  %.05.i.i.i.i.i.i.i.i.i.i.i.i529.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i529.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.preheader3789 ], [ %i.bhz, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.prol ]
  %i.bia = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i529.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i520
  %i.bib = icmp ugt i64 %i.bia, -4
  br i1 %i.bib, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i521, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528
  %.05.i.i.i.i.i.i.i.i.i.i.i.i529 = phi i64 [ %i.bir, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i529.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.prol.loopexit ] ; 6 uses
  %i.bic = getelementptr inbounds nuw [4 x i8], ptr %i.bhb, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i529
  %i.bid = getelementptr inbounds nuw [4 x i8], ptr %i.bgx, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i529
  %i.bie = load i32, ptr %i.bid, align 4, !tbaa !24
  store i32 %i.bie, ptr %i.bic, align 4, !tbaa !24
  %i.bif = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i529, 1 ; 2 uses
  %i.big = getelementptr inbounds nuw [4 x i8], ptr %i.bhb, i64 %i.bif
  %i.bih = getelementptr inbounds nuw [4 x i8], ptr %i.bgx, i64 %i.bif
  %i.bii = load i32, ptr %i.bih, align 4, !tbaa !24
  store i32 %i.bii, ptr %i.big, align 4, !tbaa !24
  %i.bij = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i529, 2 ; 2 uses
  %i.bik = getelementptr inbounds nuw [4 x i8], ptr %i.bhb, i64 %i.bij
  %i.bil = getelementptr inbounds nuw [4 x i8], ptr %i.bgx, i64 %i.bij
  %i.bim = load i32, ptr %i.bil, align 4, !tbaa !24
  store i32 %i.bim, ptr %i.bik, align 4, !tbaa !24
  %i.bin = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i529, 3 ; 2 uses
  %i.bio = getelementptr inbounds nuw [4 x i8], ptr %i.bhb, i64 %i.bin
  %i.bip = getelementptr inbounds nuw [4 x i8], ptr %i.bgx, i64 %i.bin
  %i.biq = load i32, ptr %i.bip, align 4, !tbaa !24
  store i32 %i.biq, ptr %i.bio, align 4, !tbaa !24
  %i.bir = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i529, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i530.3 = icmp eq i64 %i.bir, %.0.i.i.i.i.i.i.i.i.i.i.i.i520
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i530.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i521, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528, !llvm.loop !637

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i521: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528, %middle.block2982, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i519
  %i.bis = icmp sgt i64 %i.bhi, 3
  br i1 %i.bis, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i526, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i522

._crit_edge.i.i.i.i.i.i.i.i.i.i.i522:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i526, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i521
  %i.bit = icmp slt i64 %i.bhl, %i.bgw
  br i1 %i.bit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.preheader, label %.loopexit2815

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.preheader:    ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i522
  %i.biu = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i520, %i.bhk
  %i.biv = sub i64 %i.bgw, %i.biu                 ; 3 uses
  %min.iters.check2988 = icmp ult i64 %i.biv, 16
  br i1 %min.iters.check2988, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.preheader3788, label %vector.memcheck2989

vector.memcheck2989:                              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.preheader
  %i.biw = shl nsw i64 %i.bgy, 2
  %i.bix = add i64 %i.biw, %i.bha
  %i.biy = add i64 %.idx, %i.bgv
  %i.biz = sub i64 %i.biy, %i.bix
  %diff.check2990 = icmp ugt i64 %i.biz, -32
  br i1 %diff.check2990, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.preheader3788, label %vector.ph2991

vector.ph2991:                                    ; preds = %vector.memcheck2989
  %n.vec2992 = and i64 %i.biv, -8                 ; 3 uses
  %i.bja = add i64 %i.bhl, %n.vec2992
  br label %vector.body2993

vector.body2993:                                  ; preds = %vector.body2993, %vector.ph2991
  %index2994 = phi i64 [ 0, %vector.ph2991 ], [ %index.next2997, %vector.body2993 ] ; 2 uses
  %i.bjb = add i64 %i.bhl, %index2994             ; 2 uses
  %i.bjc = getelementptr inbounds [4 x i8], ptr %i.bhb, i64 %i.bjb ; 2 uses
  %i.bjd = getelementptr inbounds [4 x i8], ptr %i.bgx, i64 %i.bjb ; 2 uses
  %i.bje = getelementptr inbounds nuw i8, ptr %i.bjd, i64 16
  %wide.load2995 = load <4 x i32>, ptr %i.bjd, align 4, !tbaa !24
  %wide.load2996 = load <4 x i32>, ptr %i.bje, align 4, !tbaa !24
  %i.bjf = getelementptr inbounds nuw i8, ptr %i.bjc, i64 16
  store <4 x i32> %wide.load2995, ptr %i.bjc, align 4, !tbaa !24
  store <4 x i32> %wide.load2996, ptr %i.bjf, align 4, !tbaa !24
  %index.next2997 = add nuw i64 %index2994, 8     ; 2 uses
  %i.bjg = icmp eq i64 %index.next2997, %n.vec2992
  br i1 %i.bjg, label %middle.block2998, label %vector.body2993, !llvm.loop !638

middle.block2998:                                 ; preds = %vector.body2993
  %cmp.n2999 = icmp eq i64 %i.biv, %n.vec2992
  br i1 %cmp.n2999, label %.loopexit2815, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.preheader3788

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.preheader3788: ; preds = %vector.memcheck2989, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.preheader, %middle.block2998
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i524.ph = phi i64 [ %i.bhl, %vector.memcheck2989 ], [ %i.bhl, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.preheader ], [ %i.bja, %middle.block2998 ] ; 4 uses
  %i.bjh = sub i64 %i.bgw, %.05.i18.i.i.i.i.i.i.i.i.i.i.i524.ph
  %xtraiter3806 = and i64 %i.bjh, 3               ; 2 uses
  %lcmp.mod3807.not = icmp eq i64 %xtraiter3806, 0
  br i1 %lcmp.mod3807.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.prol:         ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.preheader3788, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i524.prol = phi i64 [ %i.bjl, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i524.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.preheader3788 ] ; 3 uses
  %prol.iter3808 = phi i64 [ %prol.iter3808.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.preheader3788 ]
  %i.bji = getelementptr inbounds [4 x i8], ptr %i.bhb, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i524.prol
  %i.bjj = getelementptr inbounds [4 x i8], ptr %i.bgx, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i524.prol
  %i.bjk = load i32, ptr %i.bjj, align 4, !tbaa !24
  store i32 %i.bjk, ptr %i.bji, align 4, !tbaa !24
  %i.bjl = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i524.prol, 1 ; 2 uses
  %prol.iter3808.next = add i64 %prol.iter3808, 1 ; 2 uses
  %prol.iter3808.cmp.not = icmp eq i64 %prol.iter3808.next, %xtraiter3806
  br i1 %prol.iter3808.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.prol, !llvm.loop !639

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.preheader3788
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i524.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i524.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.preheader3788 ], [ %i.bjl, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.prol ]
  %i.bjm = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i524.ph, %i.bgw
  %i.bjn = icmp ugt i64 %i.bjm, -4
  br i1 %i.bjn, label %.loopexit2815, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i524 = phi i64 [ %i.bkd, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i524.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.prol.loopexit ] ; 6 uses
  %i.bjo = getelementptr inbounds [4 x i8], ptr %i.bhb, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i524
  %i.bjp = getelementptr inbounds [4 x i8], ptr %i.bgx, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i524
  %i.bjq = load i32, ptr %i.bjp, align 4, !tbaa !24
  store i32 %i.bjq, ptr %i.bjo, align 4, !tbaa !24
  %i.bjr = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i524, 1 ; 2 uses
  %i.bjs = getelementptr inbounds [4 x i8], ptr %i.bhb, i64 %i.bjr
  %i.bjt = getelementptr inbounds [4 x i8], ptr %i.bgx, i64 %i.bjr
  %i.bju = load i32, ptr %i.bjt, align 4, !tbaa !24
  store i32 %i.bju, ptr %i.bjs, align 4, !tbaa !24
  %i.bjv = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i524, 2 ; 2 uses
  %i.bjw = getelementptr inbounds [4 x i8], ptr %i.bhb, i64 %i.bjv
  %i.bjx = getelementptr inbounds [4 x i8], ptr %i.bgx, i64 %i.bjv
  %i.bjy = load i32, ptr %i.bjx, align 4, !tbaa !24
  store i32 %i.bjy, ptr %i.bjw, align 4, !tbaa !24
  %i.bjz = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i524, 3 ; 2 uses
  %i.bka = getelementptr inbounds [4 x i8], ptr %i.bhb, i64 %i.bjz
  %i.bkb = getelementptr inbounds [4 x i8], ptr %i.bgx, i64 %i.bjz
  %i.bkc = load i32, ptr %i.bkb, align 4, !tbaa !24
  store i32 %i.bkc, ptr %i.bka, align 4, !tbaa !24
  %i.bkd = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i524, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i525.3 = icmp eq i64 %i.bkd, %i.bgw
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i525.3, label %.loopexit2815, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523, !llvm.loop !640

.lr.ph.i.i.i.i.i.i.i.i.i.i.i526:                  ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i521, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i526
  %.021.i.i.i.i.i.i.i.i.i.i.i527 = phi i64 [ %i.bkh, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i526 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i520, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i521 ] ; 3 uses
  %i.bke = getelementptr inbounds [4 x i8], ptr %i.bhb, i64 %.021.i.i.i.i.i.i.i.i.i.i.i527
  %i.bkf = getelementptr inbounds [4 x i8], ptr %i.bgx, i64 %.021.i.i.i.i.i.i.i.i.i.i.i527
  %i.bkg = load <2 x i64>, ptr %i.bkf, align 1, !tbaa !22
  store <2 x i64> %i.bkg, ptr %i.bke, align 16, !tbaa !22
  %i.bkh = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i527, 4 ; 2 uses
  %i.bki = icmp slt i64 %i.bkh, %i.bhl
  br i1 %i.bki, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i526, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i522, !llvm.loop !620

.loopexit2815:                                    ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523, %middle.block2998, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i522
  %i.bkj = load ptr, ptr %1, align 8, !tbaa !89, !noalias !833 ; 2 uses
  %i.bkk = ptrtoaddr ptr %i.bkj to i64            ; 2 uses
  %i.bkl = load i64, ptr %i.a, align 8, !tbaa !90, !noalias !833 ; 11 uses
  %.idx2779 = shl i64 %i.bkl, 3                   ; 3 uses
  %i.bkm = getelementptr inbounds i8, ptr %i.bkj, i64 %.idx2779 ; 13 uses
  %i.bkn = add nsw i64 %i.bgw, %i.bgy             ; 4 uses
  %i.bko = load ptr, ptr %61, align 8, !tbaa !26, !noalias !834 ; 2 uses
  %i.bkp = ptrtoaddr ptr %i.bko to i64            ; 2 uses
  %i.bkq = getelementptr inbounds [4 x i8], ptr %i.bko, i64 %i.bkn ; 14 uses
  %i.bkr = ptrtoint ptr %i.bkq to i64             ; 2 uses
  %i.bks = and i64 %i.bkr, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i537 = icmp eq i64 %i.bks, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i537, label %bb.do, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i538

bb.do:                                            ; preds = %.loopexit2815
  %i.bkt = lshr exact i64 %i.bkr, 2
  %i.bku = sub nsw i64 0, %i.bkt
  %i.bkv = and i64 %i.bku, 3
  %i.bkw = call i64 @llvm.smin.i64(i64 %i.bkv, i64 %i.bkl)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i538

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i538: ; preds = %bb.do, %.loopexit2815
  %.0.i.i.i.i.i.i.i.i.i.i.i.i539 = phi i64 [ %i.bkw, %bb.do ], [ %i.bkl, %.loopexit2815 ] ; 11 uses
  %i.bkx = sub nsw i64 %i.bkl, %.0.i.i.i.i.i.i.i.i.i.i.i.i539 ; 2 uses
  %i.bky = sdiv i64 %i.bkx, 4
  %i.bkz = shl nsw i64 %i.bky, 2                  ; 2 uses
  %i.bla = add nsw i64 %i.bkz, %.0.i.i.i.i.i.i.i.i.i.i.i.i539 ; 6 uses
  %i.blb = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i539, 0
  br i1 %i.blb, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i540

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.preheader:      ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i538
  %min.iters.check3004 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i539, 16
  br i1 %min.iters.check3004, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.preheader3787, label %vector.memcheck3005

vector.memcheck3005:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.preheader
  %i.blc = shl nsw i64 %i.bkn, 2
  %i.bld = add i64 %i.blc, %i.bkp
  %i.ble = add i64 %.idx2779, %i.bkk
  %i.blf = sub i64 %i.ble, %i.bld
  %diff.check3006 = icmp ugt i64 %i.blf, -32
  br i1 %diff.check3006, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.preheader3787, label %vector.ph3007

vector.ph3007:                                    ; preds = %vector.memcheck3005
  %n.vec3008 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i539, 9223372036854775800 ; 3 uses
  br label %vector.body3009

vector.body3009:                                  ; preds = %vector.body3009, %vector.ph3007
  %index3010 = phi i64 [ 0, %vector.ph3007 ], [ %index.next3013, %vector.body3009 ] ; 3 uses
  %i.blg = getelementptr inbounds nuw [4 x i8], ptr %i.bkq, i64 %index3010 ; 2 uses
  %i.blh = getelementptr inbounds nuw [4 x i8], ptr %i.bkm, i64 %index3010 ; 2 uses
  %i.bli = getelementptr inbounds nuw i8, ptr %i.blh, i64 16
  %wide.load3011 = load <4 x i32>, ptr %i.blh, align 4, !tbaa !24
  %wide.load3012 = load <4 x i32>, ptr %i.bli, align 4, !tbaa !24
  %i.blj = getelementptr inbounds nuw i8, ptr %i.blg, i64 16
  store <4 x i32> %wide.load3011, ptr %i.blg, align 4, !tbaa !24
  store <4 x i32> %wide.load3012, ptr %i.blj, align 4, !tbaa !24
  %index.next3013 = add nuw i64 %index3010, 8     ; 2 uses
  %i.blk = icmp eq i64 %index.next3013, %n.vec3008
  br i1 %i.blk, label %middle.block3014, label %vector.body3009, !llvm.loop !645

middle.block3014:                                 ; preds = %vector.body3009
  %cmp.n3015 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i539, %n.vec3008
  br i1 %cmp.n3015, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i540, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.preheader3787

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.preheader3787:  ; preds = %vector.memcheck3005, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.preheader, %middle.block3014
  %.05.i.i.i.i.i.i.i.i.i.i.i.i548.ph = phi i64 [ 0, %vector.memcheck3005 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.preheader ], [ %n.vec3008, %middle.block3014 ] ; 3 uses
  %xtraiter3809 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i539, 3 ; 2 uses
  %lcmp.mod3810.not = icmp eq i64 %xtraiter3809, 0
  br i1 %lcmp.mod3810.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.prol:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.preheader3787, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i548.prol = phi i64 [ %i.blo, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i548.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.preheader3787 ] ; 3 uses
  %prol.iter3811 = phi i64 [ %prol.iter3811.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.preheader3787 ]
  %i.bll = getelementptr inbounds nuw [4 x i8], ptr %i.bkq, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i548.prol
  %i.blm = getelementptr inbounds nuw [4 x i8], ptr %i.bkm, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i548.prol
  %i.bln = load i32, ptr %i.blm, align 4, !tbaa !24
  store i32 %i.bln, ptr %i.bll, align 4, !tbaa !24
  %i.blo = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i548.prol, 1 ; 2 uses
  %prol.iter3811.next = add i64 %prol.iter3811, 1 ; 2 uses
  %prol.iter3811.cmp.not = icmp eq i64 %prol.iter3811.next, %xtraiter3809
  br i1 %prol.iter3811.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.prol, !llvm.loop !646

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.prol.loopexit:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.preheader3787
  %.05.i.i.i.i.i.i.i.i.i.i.i.i548.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i548.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.preheader3787 ], [ %i.blo, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.prol ]
  %i.blp = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i548.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i539
  %i.blq = icmp ugt i64 %i.blp, -4
  br i1 %i.blq, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i540, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547
  %.05.i.i.i.i.i.i.i.i.i.i.i.i548 = phi i64 [ %i.bmg, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i548.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.prol.loopexit ] ; 6 uses
  %i.blr = getelementptr inbounds nuw [4 x i8], ptr %i.bkq, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i548
  %i.bls = getelementptr inbounds nuw [4 x i8], ptr %i.bkm, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i548
  %i.blt = load i32, ptr %i.bls, align 4, !tbaa !24
  store i32 %i.blt, ptr %i.blr, align 4, !tbaa !24
  %i.blu = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i548, 1 ; 2 uses
  %i.blv = getelementptr inbounds nuw [4 x i8], ptr %i.bkq, i64 %i.blu
  %i.blw = getelementptr inbounds nuw [4 x i8], ptr %i.bkm, i64 %i.blu
  %i.blx = load i32, ptr %i.blw, align 4, !tbaa !24
  store i32 %i.blx, ptr %i.blv, align 4, !tbaa !24
  %i.bly = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i548, 2 ; 2 uses
  %i.blz = getelementptr inbounds nuw [4 x i8], ptr %i.bkq, i64 %i.bly
  %i.bma = getelementptr inbounds nuw [4 x i8], ptr %i.bkm, i64 %i.bly
  %i.bmb = load i32, ptr %i.bma, align 4, !tbaa !24
  store i32 %i.bmb, ptr %i.blz, align 4, !tbaa !24
  %i.bmc = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i548, 3 ; 2 uses
  %i.bmd = getelementptr inbounds nuw [4 x i8], ptr %i.bkq, i64 %i.bmc
  %i.bme = getelementptr inbounds nuw [4 x i8], ptr %i.bkm, i64 %i.bmc
  %i.bmf = load i32, ptr %i.bme, align 4, !tbaa !24
  store i32 %i.bmf, ptr %i.bmd, align 4, !tbaa !24
  %i.bmg = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i548, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i549.3 = icmp eq i64 %i.bmg, %.0.i.i.i.i.i.i.i.i.i.i.i.i539
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i549.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i540, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547, !llvm.loop !647

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i540: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547, %middle.block3014, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i538
  %i.bmh = icmp sgt i64 %i.bkx, 3
  br i1 %i.bmh, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i545, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i541

._crit_edge.i.i.i.i.i.i.i.i.i.i.i541:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i545, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i540
  %i.bmi = icmp slt i64 %i.bla, %i.bkl
  br i1 %i.bmi, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.preheader, label %.loopexit2814

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.preheader:    ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i541
  %i.bmj = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i539, %i.bkz
  %i.bmk = sub i64 %i.bkl, %i.bmj                 ; 3 uses
  %min.iters.check3020 = icmp ult i64 %i.bmk, 16
  br i1 %min.iters.check3020, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.preheader3786, label %vector.memcheck3021

vector.memcheck3021:                              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.preheader
  %i.bml = shl nsw i64 %i.bkn, 2
  %i.bmm = add i64 %i.bml, %i.bkp
  %i.bmn = add i64 %.idx2779, %i.bkk
  %i.bmo = sub i64 %i.bmn, %i.bmm
  %diff.check3022 = icmp ugt i64 %i.bmo, -32
  br i1 %diff.check3022, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.preheader3786, label %vector.ph3023

vector.ph3023:                                    ; preds = %vector.memcheck3021
  %n.vec3024 = and i64 %i.bmk, -8                 ; 3 uses
  %i.bmp = add i64 %i.bla, %n.vec3024
  br label %vector.body3025

vector.body3025:                                  ; preds = %vector.body3025, %vector.ph3023
  %index3026 = phi i64 [ 0, %vector.ph3023 ], [ %index.next3029, %vector.body3025 ] ; 2 uses
  %i.bmq = add i64 %i.bla, %index3026             ; 2 uses
  %i.bmr = getelementptr inbounds [4 x i8], ptr %i.bkq, i64 %i.bmq ; 2 uses
  %i.bms = getelementptr inbounds [4 x i8], ptr %i.bkm, i64 %i.bmq ; 2 uses
  %i.bmt = getelementptr inbounds nuw i8, ptr %i.bms, i64 16
  %wide.load3027 = load <4 x i32>, ptr %i.bms, align 4, !tbaa !24
  %wide.load3028 = load <4 x i32>, ptr %i.bmt, align 4, !tbaa !24
  %i.bmu = getelementptr inbounds nuw i8, ptr %i.bmr, i64 16
  store <4 x i32> %wide.load3027, ptr %i.bmr, align 4, !tbaa !24
  store <4 x i32> %wide.load3028, ptr %i.bmu, align 4, !tbaa !24
  %index.next3029 = add nuw i64 %index3026, 8     ; 2 uses
  %i.bmv = icmp eq i64 %index.next3029, %n.vec3024
  br i1 %i.bmv, label %middle.block3030, label %vector.body3025, !llvm.loop !648

middle.block3030:                                 ; preds = %vector.body3025
  %cmp.n3031 = icmp eq i64 %i.bmk, %n.vec3024
  br i1 %cmp.n3031, label %.loopexit2814, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.preheader3786

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.preheader3786: ; preds = %vector.memcheck3021, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.preheader, %middle.block3030
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i543.ph = phi i64 [ %i.bla, %vector.memcheck3021 ], [ %i.bla, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.preheader ], [ %i.bmp, %middle.block3030 ] ; 4 uses
  %i.bmw = sub i64 %i.bkl, %.05.i18.i.i.i.i.i.i.i.i.i.i.i543.ph
  %xtraiter3812 = and i64 %i.bmw, 3               ; 2 uses
  %lcmp.mod3813.not = icmp eq i64 %xtraiter3812, 0
  br i1 %lcmp.mod3813.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.prol:         ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.preheader3786, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i543.prol = phi i64 [ %i.bna, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i543.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.preheader3786 ] ; 3 uses
  %prol.iter3814 = phi i64 [ %prol.iter3814.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.preheader3786 ]
  %i.bmx = getelementptr inbounds [4 x i8], ptr %i.bkq, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i543.prol
  %i.bmy = getelementptr inbounds [4 x i8], ptr %i.bkm, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i543.prol
  %i.bmz = load i32, ptr %i.bmy, align 4, !tbaa !24
  store i32 %i.bmz, ptr %i.bmx, align 4, !tbaa !24
  %i.bna = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i543.prol, 1 ; 2 uses
  %prol.iter3814.next = add i64 %prol.iter3814, 1 ; 2 uses
  %prol.iter3814.cmp.not = icmp eq i64 %prol.iter3814.next, %xtraiter3812
  br i1 %prol.iter3814.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.prol, !llvm.loop !649

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.preheader3786
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i543.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i543.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.preheader3786 ], [ %i.bna, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.prol ]
  %i.bnb = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i543.ph, %i.bkl
  %i.bnc = icmp ugt i64 %i.bnb, -4
  br i1 %i.bnc, label %.loopexit2814, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i543 = phi i64 [ %i.bns, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i543.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.prol.loopexit ] ; 6 uses
  %i.bnd = getelementptr inbounds [4 x i8], ptr %i.bkq, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i543
  %i.bne = getelementptr inbounds [4 x i8], ptr %i.bkm, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i543
  %i.bnf = load i32, ptr %i.bne, align 4, !tbaa !24
  store i32 %i.bnf, ptr %i.bnd, align 4, !tbaa !24
  %i.bng = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i543, 1 ; 2 uses
  %i.bnh = getelementptr inbounds [4 x i8], ptr %i.bkq, i64 %i.bng
  %i.bni = getelementptr inbounds [4 x i8], ptr %i.bkm, i64 %i.bng
  %i.bnj = load i32, ptr %i.bni, align 4, !tbaa !24
  store i32 %i.bnj, ptr %i.bnh, align 4, !tbaa !24
  %i.bnk = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i543, 2 ; 2 uses
  %i.bnl = getelementptr inbounds [4 x i8], ptr %i.bkq, i64 %i.bnk
  %i.bnm = getelementptr inbounds [4 x i8], ptr %i.bkm, i64 %i.bnk
  %i.bnn = load i32, ptr %i.bnm, align 4, !tbaa !24
  store i32 %i.bnn, ptr %i.bnl, align 4, !tbaa !24
  %i.bno = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i543, 3 ; 2 uses
  %i.bnp = getelementptr inbounds [4 x i8], ptr %i.bkq, i64 %i.bno
  %i.bnq = getelementptr inbounds [4 x i8], ptr %i.bkm, i64 %i.bno
  %i.bnr = load i32, ptr %i.bnq, align 4, !tbaa !24
  store i32 %i.bnr, ptr %i.bnp, align 4, !tbaa !24
  %i.bns = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i543, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i544.3 = icmp eq i64 %i.bns, %i.bkl
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i544.3, label %.loopexit2814, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542, !llvm.loop !650

.lr.ph.i.i.i.i.i.i.i.i.i.i.i545:                  ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i540, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i545
  %.021.i.i.i.i.i.i.i.i.i.i.i546 = phi i64 [ %i.bnw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i545 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i539, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i540 ] ; 3 uses
  %i.bnt = getelementptr inbounds [4 x i8], ptr %i.bkq, i64 %.021.i.i.i.i.i.i.i.i.i.i.i546
  %i.bnu = getelementptr inbounds [4 x i8], ptr %i.bkm, i64 %.021.i.i.i.i.i.i.i.i.i.i.i546
  %i.bnv = load <2 x i64>, ptr %i.bnu, align 1, !tbaa !22
  store <2 x i64> %i.bnv, ptr %i.bnt, align 16, !tbaa !22
  %i.bnw = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i546, 4 ; 2 uses
  %i.bnx = icmp slt i64 %i.bnw, %i.bla
  br i1 %i.bnx, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i545, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i541, !llvm.loop !620

.loopexit2814:                                    ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542, %middle.block3030, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i541
  %i.bny = load ptr, ptr %1, align 8, !tbaa !89, !noalias !835 ; 14 uses
  %i.bnz = ptrtoaddr ptr %i.bny to i64            ; 2 uses
  %i.boa = load i64, ptr %i.a, align 8, !tbaa !90, !noalias !835 ; 10 uses
  %i.bob = add nsw i64 %i.bkl, %i.bkn             ; 4 uses
  %i.boc = load ptr, ptr %61, align 8, !tbaa !26, !noalias !836 ; 2 uses
  %i.bod = ptrtoaddr ptr %i.boc to i64            ; 2 uses
  %i.boe = getelementptr inbounds [4 x i8], ptr %i.boc, i64 %i.bob ; 14 uses
  %i.bof = ptrtoint ptr %i.boe to i64             ; 2 uses
  %i.bog = and i64 %i.bof, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i556 = icmp eq i64 %i.bog, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i556, label %bb.dp, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i557

bb.dp:                                            ; preds = %.loopexit2814
  %i.boh = lshr exact i64 %i.bof, 2
  %i.boi = sub nsw i64 0, %i.boh
  %i.boj = and i64 %i.boi, 3
  %i.bok = call i64 @llvm.smin.i64(i64 %i.boj, i64 %i.boa)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i557

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i557: ; preds = %bb.dp, %.loopexit2814
  %.0.i.i.i.i.i.i.i.i.i.i.i.i558 = phi i64 [ %i.bok, %bb.dp ], [ %i.boa, %.loopexit2814 ] ; 11 uses
  %i.bol = sub nsw i64 %i.boa, %.0.i.i.i.i.i.i.i.i.i.i.i.i558 ; 2 uses
  %i.bom = sdiv i64 %i.bol, 4
  %i.bon = shl nsw i64 %i.bom, 2                  ; 2 uses
  %i.boo = add nsw i64 %i.bon, %.0.i.i.i.i.i.i.i.i.i.i.i.i558 ; 6 uses
  %i.bop = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i558, 0
  br i1 %i.bop, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i559

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.preheader:      ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i557
  %min.iters.check3036 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i558, 16
  br i1 %min.iters.check3036, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.preheader3785, label %vector.memcheck3037

vector.memcheck3037:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.preheader
  %i.boq = shl nsw i64 %i.bob, 2
  %i.bor = add i64 %i.boq, %i.bod
  %i.bos = sub i64 %i.bnz, %i.bor
  %diff.check3038 = icmp ugt i64 %i.bos, -32
  br i1 %diff.check3038, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.preheader3785, label %vector.ph3039

vector.ph3039:                                    ; preds = %vector.memcheck3037
  %n.vec3040 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i558, 9223372036854775800 ; 3 uses
  br label %vector.body3041

vector.body3041:                                  ; preds = %vector.body3041, %vector.ph3039
  %index3042 = phi i64 [ 0, %vector.ph3039 ], [ %index.next3045, %vector.body3041 ] ; 3 uses
  %i.bot = getelementptr inbounds nuw [4 x i8], ptr %i.boe, i64 %index3042 ; 2 uses
  %i.bou = getelementptr inbounds nuw [4 x i8], ptr %i.bny, i64 %index3042 ; 2 uses
  %i.bov = getelementptr inbounds nuw i8, ptr %i.bou, i64 16
  %wide.load3043 = load <4 x i32>, ptr %i.bou, align 4, !tbaa !24
  %wide.load3044 = load <4 x i32>, ptr %i.bov, align 4, !tbaa !24
  %i.bow = getelementptr inbounds nuw i8, ptr %i.bot, i64 16
  store <4 x i32> %wide.load3043, ptr %i.bot, align 4, !tbaa !24
  store <4 x i32> %wide.load3044, ptr %i.bow, align 4, !tbaa !24
  %index.next3045 = add nuw i64 %index3042, 8     ; 2 uses
  %i.box = icmp eq i64 %index.next3045, %n.vec3040
  br i1 %i.box, label %middle.block3046, label %vector.body3041, !llvm.loop !655

middle.block3046:                                 ; preds = %vector.body3041
  %cmp.n3047 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i558, %n.vec3040
  br i1 %cmp.n3047, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i559, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.preheader3785

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.preheader3785:  ; preds = %vector.memcheck3037, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.preheader, %middle.block3046
  %.05.i.i.i.i.i.i.i.i.i.i.i.i567.ph = phi i64 [ 0, %vector.memcheck3037 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.preheader ], [ %n.vec3040, %middle.block3046 ] ; 3 uses
  %xtraiter3815 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i558, 3 ; 2 uses
  %lcmp.mod3816.not = icmp eq i64 %xtraiter3815, 0
  br i1 %lcmp.mod3816.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.prol:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.preheader3785, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i567.prol = phi i64 [ %i.bpb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i567.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.preheader3785 ] ; 3 uses
  %prol.iter3817 = phi i64 [ %prol.iter3817.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.preheader3785 ]
  %i.boy = getelementptr inbounds nuw [4 x i8], ptr %i.boe, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i567.prol
  %i.boz = getelementptr inbounds nuw [4 x i8], ptr %i.bny, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i567.prol
  %i.bpa = load i32, ptr %i.boz, align 4, !tbaa !24
  store i32 %i.bpa, ptr %i.boy, align 4, !tbaa !24
  %i.bpb = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i567.prol, 1 ; 2 uses
  %prol.iter3817.next = add i64 %prol.iter3817, 1 ; 2 uses
  %prol.iter3817.cmp.not = icmp eq i64 %prol.iter3817.next, %xtraiter3815
  br i1 %prol.iter3817.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.prol, !llvm.loop !656

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.prol.loopexit:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.preheader3785
  %.05.i.i.i.i.i.i.i.i.i.i.i.i567.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i567.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.preheader3785 ], [ %i.bpb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.prol ]
  %i.bpc = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i567.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i558
  %i.bpd = icmp ugt i64 %i.bpc, -4
  br i1 %i.bpd, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i559, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566
  %.05.i.i.i.i.i.i.i.i.i.i.i.i567 = phi i64 [ %i.bpt, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i567.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.prol.loopexit ] ; 6 uses
  %i.bpe = getelementptr inbounds nuw [4 x i8], ptr %i.boe, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i567
  %i.bpf = getelementptr inbounds nuw [4 x i8], ptr %i.bny, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i567
  %i.bpg = load i32, ptr %i.bpf, align 4, !tbaa !24
  store i32 %i.bpg, ptr %i.bpe, align 4, !tbaa !24
  %i.bph = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i567, 1 ; 2 uses
  %i.bpi = getelementptr inbounds nuw [4 x i8], ptr %i.boe, i64 %i.bph
  %i.bpj = getelementptr inbounds nuw [4 x i8], ptr %i.bny, i64 %i.bph
  %i.bpk = load i32, ptr %i.bpj, align 4, !tbaa !24
  store i32 %i.bpk, ptr %i.bpi, align 4, !tbaa !24
  %i.bpl = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i567, 2 ; 2 uses
  %i.bpm = getelementptr inbounds nuw [4 x i8], ptr %i.boe, i64 %i.bpl
  %i.bpn = getelementptr inbounds nuw [4 x i8], ptr %i.bny, i64 %i.bpl
  %i.bpo = load i32, ptr %i.bpn, align 4, !tbaa !24
  store i32 %i.bpo, ptr %i.bpm, align 4, !tbaa !24
  %i.bpp = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i567, 3 ; 2 uses
  %i.bpq = getelementptr inbounds nuw [4 x i8], ptr %i.boe, i64 %i.bpp
  %i.bpr = getelementptr inbounds nuw [4 x i8], ptr %i.bny, i64 %i.bpp
  %i.bps = load i32, ptr %i.bpr, align 4, !tbaa !24
  store i32 %i.bps, ptr %i.bpq, align 4, !tbaa !24
  %i.bpt = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i567, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i568.3 = icmp eq i64 %i.bpt, %.0.i.i.i.i.i.i.i.i.i.i.i.i558
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i568.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i559, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566, !llvm.loop !657

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i559: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566, %middle.block3046, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i557
  %i.bpu = icmp sgt i64 %i.bol, 3
  br i1 %i.bpu, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i564, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i560

._crit_edge.i.i.i.i.i.i.i.i.i.i.i560:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i564, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i559
  %i.bpv = icmp slt i64 %i.boo, %i.boa
  br i1 %i.bpv, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.preheader, label %.loopexit2813

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.preheader:    ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i560
  %i.bpw = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i558, %i.bon
  %i.bpx = sub i64 %i.boa, %i.bpw                 ; 3 uses
  %min.iters.check3052 = icmp ult i64 %i.bpx, 16
  br i1 %min.iters.check3052, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.preheader3784, label %vector.memcheck3053

vector.memcheck3053:                              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.preheader
  %i.bpy = shl nsw i64 %i.bob, 2
  %i.bpz = add i64 %i.bpy, %i.bod
  %i.bqa = sub i64 %i.bnz, %i.bpz
  %diff.check3054 = icmp ugt i64 %i.bqa, -32
  br i1 %diff.check3054, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.preheader3784, label %vector.ph3055

vector.ph3055:                                    ; preds = %vector.memcheck3053
  %n.vec3056 = and i64 %i.bpx, -8                 ; 3 uses
  %i.bqb = add i64 %i.boo, %n.vec3056
  br label %vector.body3057

vector.body3057:                                  ; preds = %vector.body3057, %vector.ph3055
  %index3058 = phi i64 [ 0, %vector.ph3055 ], [ %index.next3061, %vector.body3057 ] ; 2 uses
  %i.bqc = add i64 %i.boo, %index3058             ; 2 uses
  %i.bqd = getelementptr inbounds [4 x i8], ptr %i.boe, i64 %i.bqc ; 2 uses
  %i.bqe = getelementptr inbounds [4 x i8], ptr %i.bny, i64 %i.bqc ; 2 uses
  %i.bqf = getelementptr inbounds nuw i8, ptr %i.bqe, i64 16
  %wide.load3059 = load <4 x i32>, ptr %i.bqe, align 4, !tbaa !24
  %wide.load3060 = load <4 x i32>, ptr %i.bqf, align 4, !tbaa !24
  %i.bqg = getelementptr inbounds nuw i8, ptr %i.bqd, i64 16
  store <4 x i32> %wide.load3059, ptr %i.bqd, align 4, !tbaa !24
  store <4 x i32> %wide.load3060, ptr %i.bqg, align 4, !tbaa !24
  %index.next3061 = add nuw i64 %index3058, 8     ; 2 uses
  %i.bqh = icmp eq i64 %index.next3061, %n.vec3056
  br i1 %i.bqh, label %middle.block3062, label %vector.body3057, !llvm.loop !658

middle.block3062:                                 ; preds = %vector.body3057
  %cmp.n3063 = icmp eq i64 %i.bpx, %n.vec3056
  br i1 %cmp.n3063, label %.loopexit2813, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.preheader3784

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.preheader3784: ; preds = %vector.memcheck3053, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.preheader, %middle.block3062
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i562.ph = phi i64 [ %i.boo, %vector.memcheck3053 ], [ %i.boo, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.preheader ], [ %i.bqb, %middle.block3062 ] ; 4 uses
  %i.bqi = sub i64 %i.boa, %.05.i18.i.i.i.i.i.i.i.i.i.i.i562.ph
  %xtraiter3818 = and i64 %i.bqi, 3               ; 2 uses
  %lcmp.mod3819.not = icmp eq i64 %xtraiter3818, 0
  br i1 %lcmp.mod3819.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.prol:         ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.preheader3784, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i562.prol = phi i64 [ %i.bqm, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i562.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.preheader3784 ] ; 3 uses
  %prol.iter3820 = phi i64 [ %prol.iter3820.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.preheader3784 ]
  %i.bqj = getelementptr inbounds [4 x i8], ptr %i.boe, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i562.prol
  %i.bqk = getelementptr inbounds [4 x i8], ptr %i.bny, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i562.prol
  %i.bql = load i32, ptr %i.bqk, align 4, !tbaa !24
  store i32 %i.bql, ptr %i.bqj, align 4, !tbaa !24
  %i.bqm = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i562.prol, 1 ; 2 uses
  %prol.iter3820.next = add i64 %prol.iter3820, 1 ; 2 uses
  %prol.iter3820.cmp.not = icmp eq i64 %prol.iter3820.next, %xtraiter3818
  br i1 %prol.iter3820.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.prol, !llvm.loop !659

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.preheader3784
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i562.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i562.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.preheader3784 ], [ %i.bqm, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.prol ]
  %i.bqn = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i562.ph, %i.boa
  %i.bqo = icmp ugt i64 %i.bqn, -4
  br i1 %i.bqo, label %.loopexit2813, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i562 = phi i64 [ %i.bre, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i562.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.prol.loopexit ] ; 6 uses
  %i.bqp = getelementptr inbounds [4 x i8], ptr %i.boe, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i562
  %i.bqq = getelementptr inbounds [4 x i8], ptr %i.bny, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i562
  %i.bqr = load i32, ptr %i.bqq, align 4, !tbaa !24
  store i32 %i.bqr, ptr %i.bqp, align 4, !tbaa !24
  %i.bqs = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i562, 1 ; 2 uses
  %i.bqt = getelementptr inbounds [4 x i8], ptr %i.boe, i64 %i.bqs
  %i.bqu = getelementptr inbounds [4 x i8], ptr %i.bny, i64 %i.bqs
  %i.bqv = load i32, ptr %i.bqu, align 4, !tbaa !24
  store i32 %i.bqv, ptr %i.bqt, align 4, !tbaa !24
  %i.bqw = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i562, 2 ; 2 uses
  %i.bqx = getelementptr inbounds [4 x i8], ptr %i.boe, i64 %i.bqw
  %i.bqy = getelementptr inbounds [4 x i8], ptr %i.bny, i64 %i.bqw
  %i.bqz = load i32, ptr %i.bqy, align 4, !tbaa !24
  store i32 %i.bqz, ptr %i.bqx, align 4, !tbaa !24
  %i.bra = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i562, 3 ; 2 uses
  %i.brb = getelementptr inbounds [4 x i8], ptr %i.boe, i64 %i.bra
  %i.brc = getelementptr inbounds [4 x i8], ptr %i.bny, i64 %i.bra
  %i.brd = load i32, ptr %i.brc, align 4, !tbaa !24
  store i32 %i.brd, ptr %i.brb, align 4, !tbaa !24
  %i.bre = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i562, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i563.3 = icmp eq i64 %i.bre, %i.boa
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i563.3, label %.loopexit2813, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561, !llvm.loop !660

.lr.ph.i.i.i.i.i.i.i.i.i.i.i564:                  ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i559, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i564
  %.021.i.i.i.i.i.i.i.i.i.i.i565 = phi i64 [ %i.bri, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i564 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i558, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i559 ] ; 3 uses
  %i.brf = getelementptr inbounds [4 x i8], ptr %i.boe, i64 %.021.i.i.i.i.i.i.i.i.i.i.i565
  %i.brg = getelementptr inbounds [4 x i8], ptr %i.bny, i64 %.021.i.i.i.i.i.i.i.i.i.i.i565
  %i.brh = load <2 x i64>, ptr %i.brg, align 1, !tbaa !22
  store <2 x i64> %i.brh, ptr %i.brf, align 16, !tbaa !22
  %i.bri = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i565, 4 ; 2 uses
  %i.brj = icmp slt i64 %i.bri, %i.boo
  br i1 %i.brj, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i564, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i560, !llvm.loop !620

.loopexit2813:                                    ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561, %middle.block3062, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i560
  %i.brk = load ptr, ptr %1, align 8, !tbaa !89, !noalias !837 ; 14 uses
  %i.brl = ptrtoaddr ptr %i.brk to i64            ; 2 uses
  %i.brm = load i64, ptr %i.a, align 8, !tbaa !90, !noalias !837 ; 10 uses
  %i.brn = add nsw i64 %i.boa, %i.bob             ; 4 uses
  %i.bro = load ptr, ptr %61, align 8, !tbaa !26, !noalias !838 ; 2 uses
  %i.brp = ptrtoaddr ptr %i.bro to i64            ; 2 uses
  %i.brq = getelementptr inbounds [4 x i8], ptr %i.bro, i64 %i.brn ; 14 uses
  %i.brr = ptrtoint ptr %i.brq to i64             ; 2 uses
  %i.brs = and i64 %i.brr, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i575 = icmp eq i64 %i.brs, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i575, label %bb.dq, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i576

bb.dq:                                            ; preds = %.loopexit2813
  %i.brt = lshr exact i64 %i.brr, 2
  %i.bru = sub nsw i64 0, %i.brt
  %i.brv = and i64 %i.bru, 3
  %i.brw = call i64 @llvm.smin.i64(i64 %i.brv, i64 %i.brm)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i576

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i576: ; preds = %bb.dq, %.loopexit2813
  %.0.i.i.i.i.i.i.i.i.i.i.i.i577 = phi i64 [ %i.brw, %bb.dq ], [ %i.brm, %.loopexit2813 ] ; 11 uses
  %i.brx = sub nsw i64 %i.brm, %.0.i.i.i.i.i.i.i.i.i.i.i.i577 ; 2 uses
  %i.bry = sdiv i64 %i.brx, 4
  %i.brz = shl nsw i64 %i.bry, 2                  ; 2 uses
  %i.bsa = add nsw i64 %i.brz, %.0.i.i.i.i.i.i.i.i.i.i.i.i577 ; 6 uses
  %i.bsb = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i577, 0
  br i1 %i.bsb, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i578

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.preheader:      ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i576
  %min.iters.check3068 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i577, 16
  br i1 %min.iters.check3068, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.preheader3783, label %vector.memcheck3069

vector.memcheck3069:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.preheader
  %i.bsc = shl nsw i64 %i.brn, 2
  %i.bsd = add i64 %i.bsc, %i.brp
  %i.bse = sub i64 %i.brl, %i.bsd
  %diff.check3070 = icmp ugt i64 %i.bse, -32
  br i1 %diff.check3070, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.preheader3783, label %vector.ph3071

vector.ph3071:                                    ; preds = %vector.memcheck3069
  %n.vec3072 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i577, 9223372036854775800 ; 3 uses
  br label %vector.body3073

vector.body3073:                                  ; preds = %vector.body3073, %vector.ph3071
  %index3074 = phi i64 [ 0, %vector.ph3071 ], [ %index.next3077, %vector.body3073 ] ; 3 uses
  %i.bsf = getelementptr inbounds nuw [4 x i8], ptr %i.brq, i64 %index3074 ; 2 uses
  %i.bsg = getelementptr inbounds nuw [4 x i8], ptr %i.brk, i64 %index3074 ; 2 uses
  %i.bsh = getelementptr inbounds nuw i8, ptr %i.bsg, i64 16
  %wide.load3075 = load <4 x i32>, ptr %i.bsg, align 4, !tbaa !24
  %wide.load3076 = load <4 x i32>, ptr %i.bsh, align 4, !tbaa !24
  %i.bsi = getelementptr inbounds nuw i8, ptr %i.bsf, i64 16
  store <4 x i32> %wide.load3075, ptr %i.bsf, align 4, !tbaa !24
  store <4 x i32> %wide.load3076, ptr %i.bsi, align 4, !tbaa !24
  %index.next3077 = add nuw i64 %index3074, 8     ; 2 uses
  %i.bsj = icmp eq i64 %index.next3077, %n.vec3072
  br i1 %i.bsj, label %middle.block3078, label %vector.body3073, !llvm.loop !665

middle.block3078:                                 ; preds = %vector.body3073
  %cmp.n3079 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i577, %n.vec3072
  br i1 %cmp.n3079, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i578, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.preheader3783

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.preheader3783:  ; preds = %vector.memcheck3069, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.preheader, %middle.block3078
  %.05.i.i.i.i.i.i.i.i.i.i.i.i586.ph = phi i64 [ 0, %vector.memcheck3069 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.preheader ], [ %n.vec3072, %middle.block3078 ] ; 3 uses
  %xtraiter3821 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i577, 3 ; 2 uses
  %lcmp.mod3822.not = icmp eq i64 %xtraiter3821, 0
  br i1 %lcmp.mod3822.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.prol:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.preheader3783, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i586.prol = phi i64 [ %i.bsn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i586.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.preheader3783 ] ; 3 uses
  %prol.iter3823 = phi i64 [ %prol.iter3823.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.preheader3783 ]
  %i.bsk = getelementptr inbounds nuw [4 x i8], ptr %i.brq, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i586.prol
  %i.bsl = getelementptr inbounds nuw [4 x i8], ptr %i.brk, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i586.prol
  %i.bsm = load i32, ptr %i.bsl, align 4, !tbaa !24
  store i32 %i.bsm, ptr %i.bsk, align 4, !tbaa !24
  %i.bsn = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i586.prol, 1 ; 2 uses
  %prol.iter3823.next = add i64 %prol.iter3823, 1 ; 2 uses
  %prol.iter3823.cmp.not = icmp eq i64 %prol.iter3823.next, %xtraiter3821
  br i1 %prol.iter3823.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.prol, !llvm.loop !666

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.prol.loopexit:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.preheader3783
  %.05.i.i.i.i.i.i.i.i.i.i.i.i586.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i586.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.preheader3783 ], [ %i.bsn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.prol ]
  %i.bso = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i586.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i577
  %i.bsp = icmp ugt i64 %i.bso, -4
  br i1 %i.bsp, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i578, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585
  %.05.i.i.i.i.i.i.i.i.i.i.i.i586 = phi i64 [ %i.btf, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i586.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.prol.loopexit ] ; 6 uses
  %i.bsq = getelementptr inbounds nuw [4 x i8], ptr %i.brq, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i586
  %i.bsr = getelementptr inbounds nuw [4 x i8], ptr %i.brk, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i586
  %i.bss = load i32, ptr %i.bsr, align 4, !tbaa !24
  store i32 %i.bss, ptr %i.bsq, align 4, !tbaa !24
  %i.bst = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i586, 1 ; 2 uses
  %i.bsu = getelementptr inbounds nuw [4 x i8], ptr %i.brq, i64 %i.bst
  %i.bsv = getelementptr inbounds nuw [4 x i8], ptr %i.brk, i64 %i.bst
  %i.bsw = load i32, ptr %i.bsv, align 4, !tbaa !24
  store i32 %i.bsw, ptr %i.bsu, align 4, !tbaa !24
  %i.bsx = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i586, 2 ; 2 uses
  %i.bsy = getelementptr inbounds nuw [4 x i8], ptr %i.brq, i64 %i.bsx
  %i.bsz = getelementptr inbounds nuw [4 x i8], ptr %i.brk, i64 %i.bsx
  %i.bta = load i32, ptr %i.bsz, align 4, !tbaa !24
  store i32 %i.bta, ptr %i.bsy, align 4, !tbaa !24
  %i.btb = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i586, 3 ; 2 uses
  %i.btc = getelementptr inbounds nuw [4 x i8], ptr %i.brq, i64 %i.btb
  %i.btd = getelementptr inbounds nuw [4 x i8], ptr %i.brk, i64 %i.btb
  %i.bte = load i32, ptr %i.btd, align 4, !tbaa !24
  store i32 %i.bte, ptr %i.btc, align 4, !tbaa !24
  %i.btf = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i586, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i587.3 = icmp eq i64 %i.btf, %.0.i.i.i.i.i.i.i.i.i.i.i.i577
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i587.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i578, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585, !llvm.loop !667

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i578: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585, %middle.block3078, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i576
  %i.btg = icmp sgt i64 %i.brx, 3
  br i1 %i.btg, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i583, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i579

._crit_edge.i.i.i.i.i.i.i.i.i.i.i579:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i583, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i578
  %i.bth = icmp slt i64 %i.bsa, %i.brm
  br i1 %i.bth, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.preheader, label %.loopexit2812

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.preheader:    ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i579
  %i.bti = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i577, %i.brz
  %i.btj = sub i64 %i.brm, %i.bti                 ; 3 uses
  %min.iters.check3084 = icmp ult i64 %i.btj, 16
  br i1 %min.iters.check3084, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.preheader3782, label %vector.memcheck3085

vector.memcheck3085:                              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.preheader
  %i.btk = shl nsw i64 %i.brn, 2
  %i.btl = add i64 %i.btk, %i.brp
  %i.btm = sub i64 %i.brl, %i.btl
  %diff.check3086 = icmp ugt i64 %i.btm, -32
  br i1 %diff.check3086, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.preheader3782, label %vector.ph3087

vector.ph3087:                                    ; preds = %vector.memcheck3085
  %n.vec3088 = and i64 %i.btj, -8                 ; 3 uses
  %i.btn = add i64 %i.bsa, %n.vec3088
  br label %vector.body3089

vector.body3089:                                  ; preds = %vector.body3089, %vector.ph3087
  %index3090 = phi i64 [ 0, %vector.ph3087 ], [ %index.next3093, %vector.body3089 ] ; 2 uses
  %i.bto = add i64 %i.bsa, %index3090             ; 2 uses
  %i.btp = getelementptr inbounds [4 x i8], ptr %i.brq, i64 %i.bto ; 2 uses
  %i.btq = getelementptr inbounds [4 x i8], ptr %i.brk, i64 %i.bto ; 2 uses
  %i.btr = getelementptr inbounds nuw i8, ptr %i.btq, i64 16
  %wide.load3091 = load <4 x i32>, ptr %i.btq, align 4, !tbaa !24
  %wide.load3092 = load <4 x i32>, ptr %i.btr, align 4, !tbaa !24
  %i.bts = getelementptr inbounds nuw i8, ptr %i.btp, i64 16
  store <4 x i32> %wide.load3091, ptr %i.btp, align 4, !tbaa !24
  store <4 x i32> %wide.load3092, ptr %i.bts, align 4, !tbaa !24
  %index.next3093 = add nuw i64 %index3090, 8     ; 2 uses
  %i.btt = icmp eq i64 %index.next3093, %n.vec3088
  br i1 %i.btt, label %middle.block3094, label %vector.body3089, !llvm.loop !668

middle.block3094:                                 ; preds = %vector.body3089
  %cmp.n3095 = icmp eq i64 %i.btj, %n.vec3088
  br i1 %cmp.n3095, label %.loopexit2812, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.preheader3782

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.preheader3782: ; preds = %vector.memcheck3085, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.preheader, %middle.block3094
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i581.ph = phi i64 [ %i.bsa, %vector.memcheck3085 ], [ %i.bsa, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.preheader ], [ %i.btn, %middle.block3094 ] ; 4 uses
  %i.btu = sub i64 %i.brm, %.05.i18.i.i.i.i.i.i.i.i.i.i.i581.ph
  %xtraiter3824 = and i64 %i.btu, 3               ; 2 uses
  %lcmp.mod3825.not = icmp eq i64 %xtraiter3824, 0
  br i1 %lcmp.mod3825.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.prol:         ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.preheader3782, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i581.prol = phi i64 [ %i.bty, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i581.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.preheader3782 ] ; 3 uses
  %prol.iter3826 = phi i64 [ %prol.iter3826.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.preheader3782 ]
  %i.btv = getelementptr inbounds [4 x i8], ptr %i.brq, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i581.prol
  %i.btw = getelementptr inbounds [4 x i8], ptr %i.brk, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i581.prol
  %i.btx = load i32, ptr %i.btw, align 4, !tbaa !24
  store i32 %i.btx, ptr %i.btv, align 4, !tbaa !24
  %i.bty = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i581.prol, 1 ; 2 uses
  %prol.iter3826.next = add i64 %prol.iter3826, 1 ; 2 uses
  %prol.iter3826.cmp.not = icmp eq i64 %prol.iter3826.next, %xtraiter3824
  br i1 %prol.iter3826.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.prol, !llvm.loop !669

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.preheader3782
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i581.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i581.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.preheader3782 ], [ %i.bty, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.prol ]
  %i.btz = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i581.ph, %i.brm
  %i.bua = icmp ugt i64 %i.btz, -4
  br i1 %i.bua, label %.loopexit2812, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i581 = phi i64 [ %i.buq, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i581.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.prol.loopexit ] ; 6 uses
  %i.bub = getelementptr inbounds [4 x i8], ptr %i.brq, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i581
  %i.buc = getelementptr inbounds [4 x i8], ptr %i.brk, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i581
  %i.bud = load i32, ptr %i.buc, align 4, !tbaa !24
  store i32 %i.bud, ptr %i.bub, align 4, !tbaa !24
  %i.bue = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i581, 1 ; 2 uses
  %i.buf = getelementptr inbounds [4 x i8], ptr %i.brq, i64 %i.bue
  %i.bug = getelementptr inbounds [4 x i8], ptr %i.brk, i64 %i.bue
  %i.buh = load i32, ptr %i.bug, align 4, !tbaa !24
  store i32 %i.buh, ptr %i.buf, align 4, !tbaa !24
  %i.bui = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i581, 2 ; 2 uses
  %i.buj = getelementptr inbounds [4 x i8], ptr %i.brq, i64 %i.bui
  %i.buk = getelementptr inbounds [4 x i8], ptr %i.brk, i64 %i.bui
  %i.bul = load i32, ptr %i.buk, align 4, !tbaa !24
  store i32 %i.bul, ptr %i.buj, align 4, !tbaa !24
  %i.bum = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i581, 3 ; 2 uses
  %i.bun = getelementptr inbounds [4 x i8], ptr %i.brq, i64 %i.bum
  %i.buo = getelementptr inbounds [4 x i8], ptr %i.brk, i64 %i.bum
  %i.bup = load i32, ptr %i.buo, align 4, !tbaa !24
  store i32 %i.bup, ptr %i.bun, align 4, !tbaa !24
  %i.buq = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i581, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i582.3 = icmp eq i64 %i.buq, %i.brm
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i582.3, label %.loopexit2812, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580, !llvm.loop !670

.lr.ph.i.i.i.i.i.i.i.i.i.i.i583:                  ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i578, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i583
  %.021.i.i.i.i.i.i.i.i.i.i.i584 = phi i64 [ %i.buu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i583 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i577, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i578 ] ; 3 uses
  %i.bur = getelementptr inbounds [4 x i8], ptr %i.brq, i64 %.021.i.i.i.i.i.i.i.i.i.i.i584
  %i.bus = getelementptr inbounds [4 x i8], ptr %i.brk, i64 %.021.i.i.i.i.i.i.i.i.i.i.i584
  %i.but = load <2 x i64>, ptr %i.bus, align 1, !tbaa !22
  store <2 x i64> %i.but, ptr %i.bur, align 16, !tbaa !22
  %i.buu = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i584, 4 ; 2 uses
  %i.buv = icmp slt i64 %i.buu, %i.bsa
  br i1 %i.buv, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i583, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i579, !llvm.loop !620

.loopexit2812:                                    ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580, %middle.block3094, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i579
  %i.buw = load ptr, ptr %1, align 8, !tbaa !89, !noalias !839 ; 2 uses
  %i.bux = ptrtoaddr ptr %i.buw to i64            ; 2 uses
  %i.buy = load i64, ptr %i.a, align 8, !tbaa !90, !noalias !839 ; 14 uses
  %i.buz = getelementptr inbounds [4 x i8], ptr %i.buw, i64 %i.buy ; 13 uses
  %i.bva = add nsw i64 %i.brm, %i.brn             ; 5 uses
  %i.bvb = load ptr, ptr %61, align 8, !tbaa !26, !noalias !840 ; 2 uses
  %i.bvc = ptrtoaddr ptr %i.bvb to i64            ; 2 uses
  %i.bvd = getelementptr inbounds [4 x i8], ptr %i.bvb, i64 %i.bva ; 14 uses
  %i.bve = ptrtoint ptr %i.bvd to i64             ; 2 uses
  %i.bvf = and i64 %i.bve, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i594 = icmp eq i64 %i.bvf, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i594, label %bb.dr, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i595

bb.dr:                                            ; preds = %.loopexit2812
  %i.bvg = lshr exact i64 %i.bve, 2
  %i.bvh = sub nsw i64 0, %i.bvg
  %i.bvi = and i64 %i.bvh, 3
  %i.bvj = call i64 @llvm.smin.i64(i64 %i.bvi, i64 %i.buy)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i595

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i595: ; preds = %bb.dr, %.loopexit2812
  %.0.i.i.i.i.i.i.i.i.i.i.i.i596 = phi i64 [ %i.bvj, %bb.dr ], [ %i.buy, %.loopexit2812 ] ; 11 uses
  %i.bvk = sub nsw i64 %i.buy, %.0.i.i.i.i.i.i.i.i.i.i.i.i596 ; 2 uses
  %i.bvl = sdiv i64 %i.bvk, 4
  %i.bvm = shl nsw i64 %i.bvl, 2                  ; 2 uses
  %i.bvn = add nsw i64 %i.bvm, %.0.i.i.i.i.i.i.i.i.i.i.i.i596 ; 6 uses
  %i.bvo = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i596, 0
  br i1 %i.bvo, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i597

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.preheader:      ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i595
  %min.iters.check3100 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i596, 20
  br i1 %min.iters.check3100, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.preheader3781, label %vector.memcheck3101

vector.memcheck3101:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.preheader
  %i.bvp = shl nsw i64 %i.bva, 2
  %i.bvq = shl i64 %i.buy, 2
  %i.bvr = add i64 %i.bvp, %i.bvc
  %i.bvs = add i64 %i.bvq, %i.bux
  %i.bvt = sub i64 %i.bvs, %i.bvr
  %diff.check3102 = icmp ugt i64 %i.bvt, -32
  br i1 %diff.check3102, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.preheader3781, label %vector.ph3103

vector.ph3103:                                    ; preds = %vector.memcheck3101
  %n.vec3104 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i596, 9223372036854775800 ; 3 uses
  br label %vector.body3105

vector.body3105:                                  ; preds = %vector.body3105, %vector.ph3103
  %index3106 = phi i64 [ 0, %vector.ph3103 ], [ %index.next3109, %vector.body3105 ] ; 3 uses
  %i.bvu = getelementptr inbounds nuw [4 x i8], ptr %i.bvd, i64 %index3106 ; 2 uses
  %i.bvv = getelementptr inbounds nuw [4 x i8], ptr %i.buz, i64 %index3106 ; 2 uses
  %i.bvw = getelementptr inbounds nuw i8, ptr %i.bvv, i64 16
  %wide.load3107 = load <4 x i32>, ptr %i.bvv, align 4, !tbaa !24
  %wide.load3108 = load <4 x i32>, ptr %i.bvw, align 4, !tbaa !24
  %i.bvx = getelementptr inbounds nuw i8, ptr %i.bvu, i64 16
  store <4 x i32> %wide.load3107, ptr %i.bvu, align 4, !tbaa !24
  store <4 x i32> %wide.load3108, ptr %i.bvx, align 4, !tbaa !24
  %index.next3109 = add nuw i64 %index3106, 8     ; 2 uses
  %i.bvy = icmp eq i64 %index.next3109, %n.vec3104
  br i1 %i.bvy, label %middle.block3110, label %vector.body3105, !llvm.loop !675

middle.block3110:                                 ; preds = %vector.body3105
  %cmp.n3111 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i596, %n.vec3104
  br i1 %cmp.n3111, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i597, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.preheader3781

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.preheader3781:  ; preds = %vector.memcheck3101, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.preheader, %middle.block3110
  %.05.i.i.i.i.i.i.i.i.i.i.i.i605.ph = phi i64 [ 0, %vector.memcheck3101 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.preheader ], [ %n.vec3104, %middle.block3110 ] ; 3 uses
  %xtraiter3827 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i596, 3 ; 2 uses
  %lcmp.mod3828.not = icmp eq i64 %xtraiter3827, 0
  br i1 %lcmp.mod3828.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.prol:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.preheader3781, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i605.prol = phi i64 [ %i.bwc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i605.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.preheader3781 ] ; 3 uses
  %prol.iter3829 = phi i64 [ %prol.iter3829.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.preheader3781 ]
  %i.bvz = getelementptr inbounds nuw [4 x i8], ptr %i.bvd, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i605.prol
  %i.bwa = getelementptr inbounds nuw [4 x i8], ptr %i.buz, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i605.prol
  %i.bwb = load i32, ptr %i.bwa, align 4, !tbaa !24
  store i32 %i.bwb, ptr %i.bvz, align 4, !tbaa !24
  %i.bwc = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i605.prol, 1 ; 2 uses
  %prol.iter3829.next = add i64 %prol.iter3829, 1 ; 2 uses
  %prol.iter3829.cmp.not = icmp eq i64 %prol.iter3829.next, %xtraiter3827
  br i1 %prol.iter3829.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.prol, !llvm.loop !676

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.prol.loopexit:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.preheader3781
  %.05.i.i.i.i.i.i.i.i.i.i.i.i605.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i605.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.preheader3781 ], [ %i.bwc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.prol ]
  %i.bwd = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i605.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i596
  %i.bwe = icmp ugt i64 %i.bwd, -4
  br i1 %i.bwe, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i597, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604
  %.05.i.i.i.i.i.i.i.i.i.i.i.i605 = phi i64 [ %i.bwu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i605.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.prol.loopexit ] ; 6 uses
  %i.bwf = getelementptr inbounds nuw [4 x i8], ptr %i.bvd, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i605
  %i.bwg = getelementptr inbounds nuw [4 x i8], ptr %i.buz, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i605
  %i.bwh = load i32, ptr %i.bwg, align 4, !tbaa !24
  store i32 %i.bwh, ptr %i.bwf, align 4, !tbaa !24
  %i.bwi = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i605, 1 ; 2 uses
  %i.bwj = getelementptr inbounds nuw [4 x i8], ptr %i.bvd, i64 %i.bwi
  %i.bwk = getelementptr inbounds nuw [4 x i8], ptr %i.buz, i64 %i.bwi
  %i.bwl = load i32, ptr %i.bwk, align 4, !tbaa !24
  store i32 %i.bwl, ptr %i.bwj, align 4, !tbaa !24
  %i.bwm = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i605, 2 ; 2 uses
  %i.bwn = getelementptr inbounds nuw [4 x i8], ptr %i.bvd, i64 %i.bwm
  %i.bwo = getelementptr inbounds nuw [4 x i8], ptr %i.buz, i64 %i.bwm
  %i.bwp = load i32, ptr %i.bwo, align 4, !tbaa !24
  store i32 %i.bwp, ptr %i.bwn, align 4, !tbaa !24
  %i.bwq = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i605, 3 ; 2 uses
  %i.bwr = getelementptr inbounds nuw [4 x i8], ptr %i.bvd, i64 %i.bwq
  %i.bws = getelementptr inbounds nuw [4 x i8], ptr %i.buz, i64 %i.bwq
  %i.bwt = load i32, ptr %i.bws, align 4, !tbaa !24
  store i32 %i.bwt, ptr %i.bwr, align 4, !tbaa !24
  %i.bwu = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i605, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i606.3 = icmp eq i64 %i.bwu, %.0.i.i.i.i.i.i.i.i.i.i.i.i596
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i606.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i597, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604, !llvm.loop !677

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i597: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604, %middle.block3110, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i595
  %i.bwv = icmp sgt i64 %i.bvk, 3
  br i1 %i.bwv, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i602, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i598

._crit_edge.i.i.i.i.i.i.i.i.i.i.i598:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i602, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i597
  %i.bww = icmp slt i64 %i.bvn, %i.buy
  br i1 %i.bww, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.preheader, label %.loopexit2811

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.preheader:    ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i598
  %i.bwx = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i596, %i.bvm
  %i.bwy = sub i64 %i.buy, %i.bwx                 ; 3 uses
  %min.iters.check3116 = icmp ult i64 %i.bwy, 20
  br i1 %min.iters.check3116, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.preheader3780, label %vector.memcheck3117

vector.memcheck3117:                              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.preheader
  %i.bwz = shl nsw i64 %i.bva, 2
  %i.bxa = shl i64 %i.buy, 2
  %i.bxb = add i64 %i.bwz, %i.bvc
  %i.bxc = add i64 %i.bxa, %i.bux
  %i.bxd = sub i64 %i.bxc, %i.bxb
  %diff.check3118 = icmp ugt i64 %i.bxd, -32
  br i1 %diff.check3118, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.preheader3780, label %vector.ph3119

vector.ph3119:                                    ; preds = %vector.memcheck3117
  %n.vec3120 = and i64 %i.bwy, -8                 ; 3 uses
  %i.bxe = add i64 %i.bvn, %n.vec3120
  br label %vector.body3121

vector.body3121:                                  ; preds = %vector.body3121, %vector.ph3119
  %index3122 = phi i64 [ 0, %vector.ph3119 ], [ %index.next3125, %vector.body3121 ] ; 2 uses
  %i.bxf = add i64 %i.bvn, %index3122             ; 2 uses
  %i.bxg = getelementptr inbounds [4 x i8], ptr %i.bvd, i64 %i.bxf ; 2 uses
  %i.bxh = getelementptr inbounds [4 x i8], ptr %i.buz, i64 %i.bxf ; 2 uses
  %i.bxi = getelementptr inbounds nuw i8, ptr %i.bxh, i64 16
  %wide.load3123 = load <4 x i32>, ptr %i.bxh, align 4, !tbaa !24
  %wide.load3124 = load <4 x i32>, ptr %i.bxi, align 4, !tbaa !24
  %i.bxj = getelementptr inbounds nuw i8, ptr %i.bxg, i64 16
  store <4 x i32> %wide.load3123, ptr %i.bxg, align 4, !tbaa !24
  store <4 x i32> %wide.load3124, ptr %i.bxj, align 4, !tbaa !24
  %index.next3125 = add nuw i64 %index3122, 8     ; 2 uses
  %i.bxk = icmp eq i64 %index.next3125, %n.vec3120
  br i1 %i.bxk, label %middle.block3126, label %vector.body3121, !llvm.loop !678

middle.block3126:                                 ; preds = %vector.body3121
  %cmp.n3127 = icmp eq i64 %i.bwy, %n.vec3120
  br i1 %cmp.n3127, label %.loopexit2811, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.preheader3780

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.preheader3780: ; preds = %vector.memcheck3117, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.preheader, %middle.block3126
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i600.ph = phi i64 [ %i.bvn, %vector.memcheck3117 ], [ %i.bvn, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.preheader ], [ %i.bxe, %middle.block3126 ] ; 4 uses
  %i.bxl = sub i64 %i.buy, %.05.i18.i.i.i.i.i.i.i.i.i.i.i600.ph
  %xtraiter3830 = and i64 %i.bxl, 3               ; 2 uses
  %lcmp.mod3831.not = icmp eq i64 %xtraiter3830, 0
  br i1 %lcmp.mod3831.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.prol:         ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.preheader3780, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i600.prol = phi i64 [ %i.bxp, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i600.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.preheader3780 ] ; 3 uses
  %prol.iter3832 = phi i64 [ %prol.iter3832.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.preheader3780 ]
  %i.bxm = getelementptr inbounds [4 x i8], ptr %i.bvd, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i600.prol
  %i.bxn = getelementptr inbounds [4 x i8], ptr %i.buz, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i600.prol
  %i.bxo = load i32, ptr %i.bxn, align 4, !tbaa !24
  store i32 %i.bxo, ptr %i.bxm, align 4, !tbaa !24
  %i.bxp = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i600.prol, 1 ; 2 uses
  %prol.iter3832.next = add i64 %prol.iter3832, 1 ; 2 uses
  %prol.iter3832.cmp.not = icmp eq i64 %prol.iter3832.next, %xtraiter3830
  br i1 %prol.iter3832.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.prol, !llvm.loop !679

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.preheader3780
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i600.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i600.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.preheader3780 ], [ %i.bxp, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.prol ]
  %i.bxq = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i600.ph, %i.buy
  %i.bxr = icmp ugt i64 %i.bxq, -4
  br i1 %i.bxr, label %.loopexit2811, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i600 = phi i64 [ %i.byh, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i600.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.prol.loopexit ] ; 6 uses
  %i.bxs = getelementptr inbounds [4 x i8], ptr %i.bvd, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i600
  %i.bxt = getelementptr inbounds [4 x i8], ptr %i.buz, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i600
  %i.bxu = load i32, ptr %i.bxt, align 4, !tbaa !24
  store i32 %i.bxu, ptr %i.bxs, align 4, !tbaa !24
  %i.bxv = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i600, 1 ; 2 uses
  %i.bxw = getelementptr inbounds [4 x i8], ptr %i.bvd, i64 %i.bxv
  %i.bxx = getelementptr inbounds [4 x i8], ptr %i.buz, i64 %i.bxv
  %i.bxy = load i32, ptr %i.bxx, align 4, !tbaa !24
  store i32 %i.bxy, ptr %i.bxw, align 4, !tbaa !24
  %i.bxz = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i600, 2 ; 2 uses
  %i.bya = getelementptr inbounds [4 x i8], ptr %i.bvd, i64 %i.bxz
  %i.byb = getelementptr inbounds [4 x i8], ptr %i.buz, i64 %i.bxz
  %i.byc = load i32, ptr %i.byb, align 4, !tbaa !24
  store i32 %i.byc, ptr %i.bya, align 4, !tbaa !24
  %i.byd = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i600, 3 ; 2 uses
  %i.bye = getelementptr inbounds [4 x i8], ptr %i.bvd, i64 %i.byd
  %i.byf = getelementptr inbounds [4 x i8], ptr %i.buz, i64 %i.byd
  %i.byg = load i32, ptr %i.byf, align 4, !tbaa !24
  store i32 %i.byg, ptr %i.bye, align 4, !tbaa !24
  %i.byh = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i600, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i601.3 = icmp eq i64 %i.byh, %i.buy
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i601.3, label %.loopexit2811, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599, !llvm.loop !680

.lr.ph.i.i.i.i.i.i.i.i.i.i.i602:                  ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i597, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i602
  %.021.i.i.i.i.i.i.i.i.i.i.i603 = phi i64 [ %i.byl, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i602 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i596, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i597 ] ; 3 uses
  %i.byi = getelementptr inbounds [4 x i8], ptr %i.bvd, i64 %.021.i.i.i.i.i.i.i.i.i.i.i603
  %i.byj = getelementptr inbounds [4 x i8], ptr %i.buz, i64 %.021.i.i.i.i.i.i.i.i.i.i.i603
  %i.byk = load <2 x i64>, ptr %i.byj, align 1, !tbaa !22
  store <2 x i64> %i.byk, ptr %i.byi, align 16, !tbaa !22
  %i.byl = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i603, 4 ; 2 uses
  %i.bym = icmp slt i64 %i.byl, %i.bvn
  br i1 %i.bym, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i602, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i598, !llvm.loop !620

.loopexit2811:                                    ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599, %middle.block3126, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i598
  %i.byn = load ptr, ptr %1, align 8, !tbaa !89, !noalias !841 ; 2 uses
  %i.byo = ptrtoaddr ptr %i.byn to i64            ; 2 uses
  %i.byp = load i64, ptr %i.a, align 8, !tbaa !90, !noalias !841 ; 9 uses
  %.idx2780 = shl i64 %i.byp, 3                   ; 3 uses
  %i.byq = getelementptr inbounds i8, ptr %i.byn, i64 %.idx2780 ; 13 uses
  %i.byr = load ptr, ptr %61, align 8, !tbaa !26, !noalias !842 ; 2 uses
  %i.bys = ptrtoaddr ptr %i.byr to i64            ; 2 uses
  %i.byt = getelementptr [4 x i8], ptr %i.byr, i64 %i.bva
  %i.byu = getelementptr [4 x i8], ptr %i.byt, i64 %i.buy ; 14 uses
  %i.byv = ptrtoint ptr %i.byu to i64             ; 2 uses
  %i.byw = and i64 %i.byv, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i613 = icmp eq i64 %i.byw, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i613, label %bb.ds, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i614

bb.ds:                                            ; preds = %.loopexit2811
  %i.byx = lshr exact i64 %i.byv, 2
  %i.byy = sub nsw i64 0, %i.byx
  %i.byz = and i64 %i.byy, 3
  %i.bza = call i64 @llvm.smin.i64(i64 %i.byz, i64 %i.byp)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i614

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i614: ; preds = %bb.ds, %.loopexit2811
  %.0.i.i.i.i.i.i.i.i.i.i.i.i615 = phi i64 [ %i.bza, %bb.ds ], [ %i.byp, %.loopexit2811 ] ; 11 uses
  %i.bzb = sub nsw i64 %i.byp, %.0.i.i.i.i.i.i.i.i.i.i.i.i615 ; 2 uses
  %i.bzc = sdiv i64 %i.bzb, 4
  %i.bzd = shl nsw i64 %i.bzc, 2                  ; 2 uses
  %i.bze = add nsw i64 %i.bzd, %.0.i.i.i.i.i.i.i.i.i.i.i.i615 ; 6 uses
  %i.bzf = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i615, 0
  br i1 %i.bzf, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i616

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.preheader:      ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i614
  %min.iters.check3132 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i615, 20
  br i1 %min.iters.check3132, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.preheader3779, label %vector.memcheck3133

vector.memcheck3133:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.preheader
  %i.bzg = add i64 %i.buy, %i.bva
  %i.bzh = shl i64 %i.bzg, 2
  %i.bzi = add i64 %i.bzh, %i.bys
  %i.bzj = add i64 %.idx2780, %i.byo
  %i.bzk = sub i64 %i.bzj, %i.bzi
  %diff.check3134 = icmp ugt i64 %i.bzk, -32
  br i1 %diff.check3134, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.preheader3779, label %vector.ph3135

vector.ph3135:                                    ; preds = %vector.memcheck3133
  %n.vec3136 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i615, 9223372036854775800 ; 3 uses
  br label %vector.body3137

vector.body3137:                                  ; preds = %vector.body3137, %vector.ph3135
  %index3138 = phi i64 [ 0, %vector.ph3135 ], [ %index.next3141, %vector.body3137 ] ; 3 uses
  %i.bzl = getelementptr inbounds nuw [4 x i8], ptr %i.byu, i64 %index3138 ; 2 uses
  %i.bzm = getelementptr inbounds nuw [4 x i8], ptr %i.byq, i64 %index3138 ; 2 uses
  %i.bzn = getelementptr inbounds nuw i8, ptr %i.bzm, i64 16
  %wide.load3139 = load <4 x i32>, ptr %i.bzm, align 4, !tbaa !24
  %wide.load3140 = load <4 x i32>, ptr %i.bzn, align 4, !tbaa !24
  %i.bzo = getelementptr inbounds nuw i8, ptr %i.bzl, i64 16
  store <4 x i32> %wide.load3139, ptr %i.bzl, align 4, !tbaa !24
  store <4 x i32> %wide.load3140, ptr %i.bzo, align 4, !tbaa !24
  %index.next3141 = add nuw i64 %index3138, 8     ; 2 uses
  %i.bzp = icmp eq i64 %index.next3141, %n.vec3136
  br i1 %i.bzp, label %middle.block3142, label %vector.body3137, !llvm.loop !685

middle.block3142:                                 ; preds = %vector.body3137
  %cmp.n3143 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i615, %n.vec3136
  br i1 %cmp.n3143, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i616, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.preheader3779

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.preheader3779:  ; preds = %vector.memcheck3133, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.preheader, %middle.block3142
  %.05.i.i.i.i.i.i.i.i.i.i.i.i624.ph = phi i64 [ 0, %vector.memcheck3133 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.preheader ], [ %n.vec3136, %middle.block3142 ] ; 3 uses
  %xtraiter3833 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i615, 3 ; 2 uses
  %lcmp.mod3834.not = icmp eq i64 %xtraiter3833, 0
  br i1 %lcmp.mod3834.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.prol:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.preheader3779, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i624.prol = phi i64 [ %i.bzt, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i624.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.preheader3779 ] ; 3 uses
  %prol.iter3835 = phi i64 [ %prol.iter3835.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.preheader3779 ]
  %i.bzq = getelementptr inbounds nuw [4 x i8], ptr %i.byu, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i624.prol
  %i.bzr = getelementptr inbounds nuw [4 x i8], ptr %i.byq, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i624.prol
  %i.bzs = load i32, ptr %i.bzr, align 4, !tbaa !24
  store i32 %i.bzs, ptr %i.bzq, align 4, !tbaa !24
  %i.bzt = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i624.prol, 1 ; 2 uses
  %prol.iter3835.next = add i64 %prol.iter3835, 1 ; 2 uses
  %prol.iter3835.cmp.not = icmp eq i64 %prol.iter3835.next, %xtraiter3833
  br i1 %prol.iter3835.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.prol, !llvm.loop !686

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.prol.loopexit:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.preheader3779
  %.05.i.i.i.i.i.i.i.i.i.i.i.i624.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i624.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.preheader3779 ], [ %i.bzt, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.prol ]
  %i.bzu = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i624.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i615
  %i.bzv = icmp ugt i64 %i.bzu, -4
  br i1 %i.bzv, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i616, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623
  %.05.i.i.i.i.i.i.i.i.i.i.i.i624 = phi i64 [ %i.cal, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i624.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.prol.loopexit ] ; 6 uses
  %i.bzw = getelementptr inbounds nuw [4 x i8], ptr %i.byu, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i624
  %i.bzx = getelementptr inbounds nuw [4 x i8], ptr %i.byq, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i624
  %i.bzy = load i32, ptr %i.bzx, align 4, !tbaa !24
  store i32 %i.bzy, ptr %i.bzw, align 4, !tbaa !24
  %i.bzz = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i624, 1 ; 2 uses
  %i.caa = getelementptr inbounds nuw [4 x i8], ptr %i.byu, i64 %i.bzz
  %i.cab = getelementptr inbounds nuw [4 x i8], ptr %i.byq, i64 %i.bzz
  %i.cac = load i32, ptr %i.cab, align 4, !tbaa !24
  store i32 %i.cac, ptr %i.caa, align 4, !tbaa !24
  %i.cad = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i624, 2 ; 2 uses
  %i.cae = getelementptr inbounds nuw [4 x i8], ptr %i.byu, i64 %i.cad
  %i.caf = getelementptr inbounds nuw [4 x i8], ptr %i.byq, i64 %i.cad
  %i.cag = load i32, ptr %i.caf, align 4, !tbaa !24
  store i32 %i.cag, ptr %i.cae, align 4, !tbaa !24
  %i.cah = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i624, 3 ; 2 uses
  %i.cai = getelementptr inbounds nuw [4 x i8], ptr %i.byu, i64 %i.cah
  %i.caj = getelementptr inbounds nuw [4 x i8], ptr %i.byq, i64 %i.cah
  %i.cak = load i32, ptr %i.caj, align 4, !tbaa !24
  store i32 %i.cak, ptr %i.cai, align 4, !tbaa !24
  %i.cal = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i624, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i625.3 = icmp eq i64 %i.cal, %.0.i.i.i.i.i.i.i.i.i.i.i.i615
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i625.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i616, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623, !llvm.loop !687

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i616: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623, %middle.block3142, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i614
  %i.cam = icmp sgt i64 %i.bzb, 3
  br i1 %i.cam, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i621, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i617

._crit_edge.i.i.i.i.i.i.i.i.i.i.i617:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i621, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i616
  %i.can = icmp slt i64 %i.bze, %i.byp
  br i1 %i.can, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.preheader, label %.loopexit2810

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.preheader:    ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i617
  %i.cao = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i615, %i.bzd
  %i.cap = sub i64 %i.byp, %i.cao                 ; 3 uses
  %min.iters.check3148 = icmp ult i64 %i.cap, 36
  br i1 %min.iters.check3148, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.preheader3778, label %vector.memcheck3149

vector.memcheck3149:                              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.preheader
  %i.caq = add i64 %i.buy, %i.brm
  %i.car = add i64 %i.caq, %i.boa
  %i.cas = add i64 %i.car, %i.bkl
  %i.cat = add i64 %i.cas, %i.bgw
  %i.cau = add i64 %i.cat, %i.bdf
  %i.cav = add i64 %i.cau, %i.ayz
  %i.caw = add i64 %i.cav, %i.azp
  %i.cax = shl i64 %i.caw, 2
  %i.cay = add i64 %i.cax, %i.bys
  %i.caz = add i64 %.idx2780, %i.byo
  %i.cba = sub i64 %i.caz, %i.cay
  %diff.check3150 = icmp ugt i64 %i.cba, -32
  br i1 %diff.check3150, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.preheader3778, label %vector.ph3151

vector.ph3151:                                    ; preds = %vector.memcheck3149
  %n.vec3152 = and i64 %i.cap, -8                 ; 3 uses
  %i.cbb = add i64 %i.bze, %n.vec3152
  br label %vector.body3153

vector.body3153:                                  ; preds = %vector.body3153, %vector.ph3151
  %index3154 = phi i64 [ 0, %vector.ph3151 ], [ %index.next3157, %vector.body3153 ] ; 2 uses
  %i.cbc = add i64 %i.bze, %index3154             ; 2 uses
  %i.cbd = getelementptr inbounds [4 x i8], ptr %i.byu, i64 %i.cbc ; 2 uses
  %i.cbe = getelementptr inbounds [4 x i8], ptr %i.byq, i64 %i.cbc ; 2 uses
  %i.cbf = getelementptr inbounds nuw i8, ptr %i.cbe, i64 16
  %wide.load3155 = load <4 x i32>, ptr %i.cbe, align 4, !tbaa !24
  %wide.load3156 = load <4 x i32>, ptr %i.cbf, align 4, !tbaa !24
  %i.cbg = getelementptr inbounds nuw i8, ptr %i.cbd, i64 16
  store <4 x i32> %wide.load3155, ptr %i.cbd, align 4, !tbaa !24
  store <4 x i32> %wide.load3156, ptr %i.cbg, align 4, !tbaa !24
  %index.next3157 = add nuw i64 %index3154, 8     ; 2 uses
  %i.cbh = icmp eq i64 %index.next3157, %n.vec3152
  br i1 %i.cbh, label %middle.block3158, label %vector.body3153, !llvm.loop !688

middle.block3158:                                 ; preds = %vector.body3153
  %cmp.n3159 = icmp eq i64 %i.cap, %n.vec3152
  br i1 %cmp.n3159, label %.loopexit2810, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.preheader3778

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.preheader3778: ; preds = %vector.memcheck3149, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.preheader, %middle.block3158
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i619.ph = phi i64 [ %i.bze, %vector.memcheck3149 ], [ %i.bze, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.preheader ], [ %i.cbb, %middle.block3158 ] ; 4 uses
  %i.cbi = sub i64 %i.byp, %.05.i18.i.i.i.i.i.i.i.i.i.i.i619.ph
  %xtraiter3836 = and i64 %i.cbi, 3               ; 2 uses
  %lcmp.mod3837.not = icmp eq i64 %xtraiter3836, 0
  br i1 %lcmp.mod3837.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.prol:         ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.preheader3778, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i619.prol = phi i64 [ %i.cbm, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i619.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.preheader3778 ] ; 3 uses
  %prol.iter3838 = phi i64 [ %prol.iter3838.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.preheader3778 ]
  %i.cbj = getelementptr inbounds [4 x i8], ptr %i.byu, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i619.prol
  %i.cbk = getelementptr inbounds [4 x i8], ptr %i.byq, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i619.prol
  %i.cbl = load i32, ptr %i.cbk, align 4, !tbaa !24
  store i32 %i.cbl, ptr %i.cbj, align 4, !tbaa !24
  %i.cbm = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i619.prol, 1 ; 2 uses
  %prol.iter3838.next = add i64 %prol.iter3838, 1 ; 2 uses
  %prol.iter3838.cmp.not = icmp eq i64 %prol.iter3838.next, %xtraiter3836
  br i1 %prol.iter3838.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.prol, !llvm.loop !689

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.preheader3778
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i619.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i619.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.preheader3778 ], [ %i.cbm, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.prol ]
  %i.cbn = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i619.ph, %i.byp
  %i.cbo = icmp ugt i64 %i.cbn, -4
  br i1 %i.cbo, label %.loopexit2810, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i619 = phi i64 [ %i.cce, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i619.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.prol.loopexit ] ; 6 uses
  %i.cbp = getelementptr inbounds [4 x i8], ptr %i.byu, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i619
  %i.cbq = getelementptr inbounds [4 x i8], ptr %i.byq, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i619
  %i.cbr = load i32, ptr %i.cbq, align 4, !tbaa !24
  store i32 %i.cbr, ptr %i.cbp, align 4, !tbaa !24
  %i.cbs = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i619, 1 ; 2 uses
  %i.cbt = getelementptr inbounds [4 x i8], ptr %i.byu, i64 %i.cbs
  %i.cbu = getelementptr inbounds [4 x i8], ptr %i.byq, i64 %i.cbs
  %i.cbv = load i32, ptr %i.cbu, align 4, !tbaa !24
  store i32 %i.cbv, ptr %i.cbt, align 4, !tbaa !24
  %i.cbw = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i619, 2 ; 2 uses
  %i.cbx = getelementptr inbounds [4 x i8], ptr %i.byu, i64 %i.cbw
  %i.cby = getelementptr inbounds [4 x i8], ptr %i.byq, i64 %i.cbw
  %i.cbz = load i32, ptr %i.cby, align 4, !tbaa !24
  store i32 %i.cbz, ptr %i.cbx, align 4, !tbaa !24
  %i.cca = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i619, 3 ; 2 uses
  %i.ccb = getelementptr inbounds [4 x i8], ptr %i.byu, i64 %i.cca
  %i.ccc = getelementptr inbounds [4 x i8], ptr %i.byq, i64 %i.cca
  %i.ccd = load i32, ptr %i.ccc, align 4, !tbaa !24
  store i32 %i.ccd, ptr %i.ccb, align 4, !tbaa !24
  %i.cce = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i619, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i620.3 = icmp eq i64 %i.cce, %i.byp
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i620.3, label %.loopexit2810, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618, !llvm.loop !690

.lr.ph.i.i.i.i.i.i.i.i.i.i.i621:                  ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i616, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i621
  %.021.i.i.i.i.i.i.i.i.i.i.i622 = phi i64 [ %i.cci, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i621 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i615, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i616 ] ; 3 uses
  %i.ccf = getelementptr inbounds [4 x i8], ptr %i.byu, i64 %.021.i.i.i.i.i.i.i.i.i.i.i622
  %i.ccg = getelementptr inbounds [4 x i8], ptr %i.byq, i64 %.021.i.i.i.i.i.i.i.i.i.i.i622
  %i.cch = load <2 x i64>, ptr %i.ccg, align 1, !tbaa !22
  store <2 x i64> %i.cch, ptr %i.ccf, align 16, !tbaa !22
  %i.cci = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i622, 4 ; 2 uses
  %i.ccj = icmp slt i64 %i.cci, %i.bze
  br i1 %i.ccj, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i621, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i617, !llvm.loop !620

.loopexit2810:                                    ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618, %middle.block3158, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i617
  %i.cck = load ptr, ptr %1, align 8, !tbaa !89, !noalias !843
  %i.ccl = load i64, ptr %i.a, align 8, !tbaa !90, !noalias !843 ; 8 uses
  %i.ccm = getelementptr inbounds [4 x i8], ptr %i.cck, i64 %i.ccl
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #14, !noalias !844
  call void @llvm.experimental.noalias.scope.decl(metadata !845)
  %i.ccn = load ptr, ptr %62, align 8, !tbaa !26, !noalias !846 ; 2 uses
  %i.cco = getelementptr inbounds nuw i8, ptr %62, i64 8
  %i.ccp = load i64, ptr %i.cco, align 8, !tbaa !27, !noalias !846 ; 2 uses
  store ptr %i.ccn, ptr %17, align 8, !tbaa !30, !alias.scope !845, !noalias !844
  %i.ccq = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 %i.ccl, ptr %i.ccq, align 8, !tbaa !31, !alias.scope !845, !noalias !844
  %i.ccr = getelementptr inbounds nuw i8, ptr %17, i64 16
  store i64 1, ptr %i.ccr, align 8, !tbaa !31, !alias.scope !845, !noalias !844
  %i.ccs = getelementptr inbounds nuw i8, ptr %17, i64 24
  store ptr %62, ptr %i.ccs, align 8, !tbaa !33, !alias.scope !845, !noalias !844
  %i.cct = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.ccu = getelementptr inbounds nuw i8, ptr %17, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cct, i8 0, i64 16, i1 false), !noalias !844
  store i64 %i.ccp, ptr %i.ccu, align 8, !tbaa !36, !alias.scope !845, !noalias !844
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #14, !noalias !844
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14, !noalias !844
  store ptr %i.ccm, ptr %13, align 8, !tbaa !93, !noalias !844
  %i.ccv = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 %i.ccl, ptr %i.ccv, align 8, !tbaa !31, !noalias !844
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #14, !noalias !844
  store ptr %i.ccn, ptr %14, align 8, !tbaa !41, !noalias !844
  %i.ccw = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 %i.ccp, ptr %i.ccw, align 8, !tbaa !31, !noalias !844
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #14, !noalias !844
  store ptr %14, ptr %15, align 8, !tbaa !43, !noalias !844
  %i.ccx = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %13, ptr %i.ccx, align 8, !tbaa !783, !noalias !844
  %i.ccy = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %16, ptr %i.ccy, align 8, !tbaa !46, !noalias !844
  %i.ccz = getelementptr inbounds nuw i8, ptr %15, i64 24
  store ptr %17, ptr %i.ccz, align 8, !tbaa !48, !noalias !844
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS4_IKNS5_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSF_(ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.dt unwind label %bb.ef

bb.dt:                                            ; preds = %.loopexit2810
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #14, !noalias !844
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14, !noalias !844
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14, !noalias !844
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #14, !noalias !844
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #14, !noalias !844
  %i.cda = load ptr, ptr %1, align 8, !tbaa !89, !noalias !847 ; 14 uses
  %i.cdb = ptrtoaddr ptr %i.cda to i64            ; 2 uses
  %i.cdc = load i64, ptr %i.a, align 8, !tbaa !90, !noalias !847 ; 10 uses
  %i.cdd = load ptr, ptr %62, align 8, !tbaa !26, !noalias !848 ; 2 uses
  %i.cde = ptrtoaddr ptr %i.cdd to i64            ; 2 uses
  %i.cdf = getelementptr inbounds [4 x i8], ptr %i.cdd, i64 %i.ccl ; 14 uses
  %i.cdg = ptrtoint ptr %i.cdf to i64             ; 2 uses
  %i.cdh = and i64 %i.cdg, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i634 = icmp eq i64 %i.cdh, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i634, label %bb.du, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i635

bb.du:                                            ; preds = %bb.dt
  %i.cdi = lshr exact i64 %i.cdg, 2
  %i.cdj = sub nsw i64 0, %i.cdi
  %i.cdk = and i64 %i.cdj, 3
  %i.cdl = call i64 @llvm.smin.i64(i64 %i.cdk, i64 %i.cdc)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i635

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i635: ; preds = %bb.du, %bb.dt
  %.0.i.i.i.i.i.i.i.i.i.i.i.i636 = phi i64 [ %i.cdl, %bb.du ], [ %i.cdc, %bb.dt ] ; 11 uses
  %i.cdm = sub nsw i64 %i.cdc, %.0.i.i.i.i.i.i.i.i.i.i.i.i636 ; 2 uses
  %i.cdn = sdiv i64 %i.cdm, 4
  %i.cdo = shl nsw i64 %i.cdn, 2                  ; 2 uses
  %i.cdp = add nsw i64 %i.cdo, %.0.i.i.i.i.i.i.i.i.i.i.i.i636 ; 6 uses
  %i.cdq = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i636, 0
  br i1 %i.cdq, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i637

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.preheader:      ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i635
  %min.iters.check3164 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i636, 16
  br i1 %min.iters.check3164, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.preheader3777, label %vector.memcheck3165

vector.memcheck3165:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.preheader
  %i.cdr = shl nsw i64 %i.ccl, 2
  %i.cds = add i64 %i.cdr, %i.cde
  %i.cdt = sub i64 %i.cdb, %i.cds
  %diff.check3166 = icmp ugt i64 %i.cdt, -32
  br i1 %diff.check3166, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.preheader3777, label %vector.ph3167

vector.ph3167:                                    ; preds = %vector.memcheck3165
  %n.vec3168 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i636, 9223372036854775800 ; 3 uses
  br label %vector.body3169

vector.body3169:                                  ; preds = %vector.body3169, %vector.ph3167
  %index3170 = phi i64 [ 0, %vector.ph3167 ], [ %index.next3173, %vector.body3169 ] ; 3 uses
  %i.cdu = getelementptr inbounds nuw [4 x i8], ptr %i.cdf, i64 %index3170 ; 2 uses
  %i.cdv = getelementptr inbounds nuw [4 x i8], ptr %i.cda, i64 %index3170 ; 2 uses
  %i.cdw = getelementptr inbounds nuw i8, ptr %i.cdv, i64 16
  %wide.load3171 = load <4 x i32>, ptr %i.cdv, align 4, !tbaa !24
  %wide.load3172 = load <4 x i32>, ptr %i.cdw, align 4, !tbaa !24
  %i.cdx = getelementptr inbounds nuw i8, ptr %i.cdu, i64 16
  store <4 x i32> %wide.load3171, ptr %i.cdu, align 4, !tbaa !24
  store <4 x i32> %wide.load3172, ptr %i.cdx, align 4, !tbaa !24
  %index.next3173 = add nuw i64 %index3170, 8     ; 2 uses
  %i.cdy = icmp eq i64 %index.next3173, %n.vec3168
  br i1 %i.cdy, label %middle.block3174, label %vector.body3169, !llvm.loop !701

middle.block3174:                                 ; preds = %vector.body3169
  %cmp.n3175 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i636, %n.vec3168
  br i1 %cmp.n3175, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i637, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.preheader3777

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.preheader3777:  ; preds = %vector.memcheck3165, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.preheader, %middle.block3174
  %.05.i.i.i.i.i.i.i.i.i.i.i.i645.ph = phi i64 [ 0, %vector.memcheck3165 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.preheader ], [ %n.vec3168, %middle.block3174 ] ; 3 uses
  %xtraiter3839 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i636, 3 ; 2 uses
  %lcmp.mod3840.not = icmp eq i64 %xtraiter3839, 0
  br i1 %lcmp.mod3840.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.prol:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.preheader3777, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i645.prol = phi i64 [ %i.cec, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i645.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.preheader3777 ] ; 3 uses
  %prol.iter3841 = phi i64 [ %prol.iter3841.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.preheader3777 ]
  %i.cdz = getelementptr inbounds nuw [4 x i8], ptr %i.cdf, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i645.prol
  %i.cea = getelementptr inbounds nuw [4 x i8], ptr %i.cda, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i645.prol
  %i.ceb = load i32, ptr %i.cea, align 4, !tbaa !24
  store i32 %i.ceb, ptr %i.cdz, align 4, !tbaa !24
  %i.cec = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i645.prol, 1 ; 2 uses
  %prol.iter3841.next = add i64 %prol.iter3841, 1 ; 2 uses
  %prol.iter3841.cmp.not = icmp eq i64 %prol.iter3841.next, %xtraiter3839
  br i1 %prol.iter3841.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.prol, !llvm.loop !702

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.prol.loopexit:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.preheader3777
  %.05.i.i.i.i.i.i.i.i.i.i.i.i645.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i645.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.preheader3777 ], [ %i.cec, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.prol ]
  %i.ced = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i645.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i636
  %i.cee = icmp ugt i64 %i.ced, -4
  br i1 %i.cee, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i637, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644
  %.05.i.i.i.i.i.i.i.i.i.i.i.i645 = phi i64 [ %i.ceu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i645.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.prol.loopexit ] ; 6 uses
  %i.cef = getelementptr inbounds nuw [4 x i8], ptr %i.cdf, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i645
  %i.ceg = getelementptr inbounds nuw [4 x i8], ptr %i.cda, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i645
  %i.ceh = load i32, ptr %i.ceg, align 4, !tbaa !24
  store i32 %i.ceh, ptr %i.cef, align 4, !tbaa !24
  %i.cei = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i645, 1 ; 2 uses
  %i.cej = getelementptr inbounds nuw [4 x i8], ptr %i.cdf, i64 %i.cei
  %i.cek = getelementptr inbounds nuw [4 x i8], ptr %i.cda, i64 %i.cei
  %i.cel = load i32, ptr %i.cek, align 4, !tbaa !24
  store i32 %i.cel, ptr %i.cej, align 4, !tbaa !24
  %i.cem = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i645, 2 ; 2 uses
  %i.cen = getelementptr inbounds nuw [4 x i8], ptr %i.cdf, i64 %i.cem
  %i.ceo = getelementptr inbounds nuw [4 x i8], ptr %i.cda, i64 %i.cem
  %i.cep = load i32, ptr %i.ceo, align 4, !tbaa !24
  store i32 %i.cep, ptr %i.cen, align 4, !tbaa !24
  %i.ceq = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i645, 3 ; 2 uses
  %i.cer = getelementptr inbounds nuw [4 x i8], ptr %i.cdf, i64 %i.ceq
  %i.ces = getelementptr inbounds nuw [4 x i8], ptr %i.cda, i64 %i.ceq
  %i.cet = load i32, ptr %i.ces, align 4, !tbaa !24
  store i32 %i.cet, ptr %i.cer, align 4, !tbaa !24
  %i.ceu = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i645, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i646.3 = icmp eq i64 %i.ceu, %.0.i.i.i.i.i.i.i.i.i.i.i.i636
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i646.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i637, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644, !llvm.loop !703

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i637: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644, %middle.block3174, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i635
  %i.cev = icmp sgt i64 %i.cdm, 3
  br i1 %i.cev, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i642, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i638

._crit_edge.i.i.i.i.i.i.i.i.i.i.i638:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i642, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i637
  %i.cew = icmp slt i64 %i.cdp, %i.cdc
  br i1 %i.cew, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.preheader, label %.loopexit2809

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.preheader:    ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i638
  %i.cex = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i636, %i.cdo
  %i.cey = sub i64 %i.cdc, %i.cex                 ; 3 uses
  %min.iters.check3180 = icmp ult i64 %i.cey, 16
  br i1 %min.iters.check3180, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.preheader3776, label %vector.memcheck3181

vector.memcheck3181:                              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.preheader
  %i.cez = shl nsw i64 %i.ccl, 2
  %i.cfa = add i64 %i.cez, %i.cde
  %i.cfb = sub i64 %i.cdb, %i.cfa
  %diff.check3182 = icmp ugt i64 %i.cfb, -32
  br i1 %diff.check3182, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.preheader3776, label %vector.ph3183

vector.ph3183:                                    ; preds = %vector.memcheck3181
  %n.vec3184 = and i64 %i.cey, -8                 ; 3 uses
  %i.cfc = add i64 %i.cdp, %n.vec3184
  br label %vector.body3185

vector.body3185:                                  ; preds = %vector.body3185, %vector.ph3183
  %index3186 = phi i64 [ 0, %vector.ph3183 ], [ %index.next3189, %vector.body3185 ] ; 2 uses
  %i.cfd = add i64 %i.cdp, %index3186             ; 2 uses
  %i.cfe = getelementptr inbounds [4 x i8], ptr %i.cdf, i64 %i.cfd ; 2 uses
  %i.cff = getelementptr inbounds [4 x i8], ptr %i.cda, i64 %i.cfd ; 2 uses
  %i.cfg = getelementptr inbounds nuw i8, ptr %i.cff, i64 16
  %wide.load3187 = load <4 x i32>, ptr %i.cff, align 4, !tbaa !24
  %wide.load3188 = load <4 x i32>, ptr %i.cfg, align 4, !tbaa !24
  %i.cfh = getelementptr inbounds nuw i8, ptr %i.cfe, i64 16
  store <4 x i32> %wide.load3187, ptr %i.cfe, align 4, !tbaa !24
  store <4 x i32> %wide.load3188, ptr %i.cfh, align 4, !tbaa !24
  %index.next3189 = add nuw i64 %index3186, 8     ; 2 uses
  %i.cfi = icmp eq i64 %index.next3189, %n.vec3184
  br i1 %i.cfi, label %middle.block3190, label %vector.body3185, !llvm.loop !704

middle.block3190:                                 ; preds = %vector.body3185
  %cmp.n3191 = icmp eq i64 %i.cey, %n.vec3184
  br i1 %cmp.n3191, label %.loopexit2809, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.preheader3776

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.preheader3776: ; preds = %vector.memcheck3181, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.preheader, %middle.block3190
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i640.ph = phi i64 [ %i.cdp, %vector.memcheck3181 ], [ %i.cdp, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.preheader ], [ %i.cfc, %middle.block3190 ] ; 4 uses
  %i.cfj = sub i64 %i.cdc, %.05.i18.i.i.i.i.i.i.i.i.i.i.i640.ph
  %xtraiter3842 = and i64 %i.cfj, 3               ; 2 uses
  %lcmp.mod3843.not = icmp eq i64 %xtraiter3842, 0
  br i1 %lcmp.mod3843.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.prol:         ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.preheader3776, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i640.prol = phi i64 [ %i.cfn, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i640.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.preheader3776 ] ; 3 uses
  %prol.iter3844 = phi i64 [ %prol.iter3844.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.preheader3776 ]
  %i.cfk = getelementptr inbounds [4 x i8], ptr %i.cdf, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i640.prol
  %i.cfl = getelementptr inbounds [4 x i8], ptr %i.cda, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i640.prol
  %i.cfm = load i32, ptr %i.cfl, align 4, !tbaa !24
  store i32 %i.cfm, ptr %i.cfk, align 4, !tbaa !24
  %i.cfn = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i640.prol, 1 ; 2 uses
  %prol.iter3844.next = add i64 %prol.iter3844, 1 ; 2 uses
  %prol.iter3844.cmp.not = icmp eq i64 %prol.iter3844.next, %xtraiter3842
  br i1 %prol.iter3844.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.prol, !llvm.loop !705

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.preheader3776
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i640.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i640.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.preheader3776 ], [ %i.cfn, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.prol ]
  %i.cfo = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i640.ph, %i.cdc
  %i.cfp = icmp ugt i64 %i.cfo, -4
  br i1 %i.cfp, label %.loopexit2809, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i640 = phi i64 [ %i.cgf, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i640.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.prol.loopexit ] ; 6 uses
  %i.cfq = getelementptr inbounds [4 x i8], ptr %i.cdf, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i640
  %i.cfr = getelementptr inbounds [4 x i8], ptr %i.cda, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i640
  %i.cfs = load i32, ptr %i.cfr, align 4, !tbaa !24
  store i32 %i.cfs, ptr %i.cfq, align 4, !tbaa !24
  %i.cft = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i640, 1 ; 2 uses
  %i.cfu = getelementptr inbounds [4 x i8], ptr %i.cdf, i64 %i.cft
  %i.cfv = getelementptr inbounds [4 x i8], ptr %i.cda, i64 %i.cft
  %i.cfw = load i32, ptr %i.cfv, align 4, !tbaa !24
  store i32 %i.cfw, ptr %i.cfu, align 4, !tbaa !24
  %i.cfx = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i640, 2 ; 2 uses
  %i.cfy = getelementptr inbounds [4 x i8], ptr %i.cdf, i64 %i.cfx
  %i.cfz = getelementptr inbounds [4 x i8], ptr %i.cda, i64 %i.cfx
  %i.cga = load i32, ptr %i.cfz, align 4, !tbaa !24
  store i32 %i.cga, ptr %i.cfy, align 4, !tbaa !24
  %i.cgb = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i640, 3 ; 2 uses
  %i.cgc = getelementptr inbounds [4 x i8], ptr %i.cdf, i64 %i.cgb
  %i.cgd = getelementptr inbounds [4 x i8], ptr %i.cda, i64 %i.cgb
  %i.cge = load i32, ptr %i.cgd, align 4, !tbaa !24
  store i32 %i.cge, ptr %i.cgc, align 4, !tbaa !24
  %i.cgf = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i640, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i641.3 = icmp eq i64 %i.cgf, %i.cdc
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i641.3, label %.loopexit2809, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639, !llvm.loop !706

.lr.ph.i.i.i.i.i.i.i.i.i.i.i642:                  ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i637, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i642
  %.021.i.i.i.i.i.i.i.i.i.i.i643 = phi i64 [ %i.cgj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i642 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i636, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i637 ] ; 3 uses
  %i.cgg = getelementptr inbounds [4 x i8], ptr %i.cdf, i64 %.021.i.i.i.i.i.i.i.i.i.i.i643
  %i.cgh = getelementptr inbounds [4 x i8], ptr %i.cda, i64 %.021.i.i.i.i.i.i.i.i.i.i.i643
  %i.cgi = load <2 x i64>, ptr %i.cgh, align 1, !tbaa !22
  store <2 x i64> %i.cgi, ptr %i.cgg, align 16, !tbaa !22
  %i.cgj = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i643, 4 ; 2 uses
  %i.cgk = icmp slt i64 %i.cgj, %i.cdp
  br i1 %i.cgk, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i642, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i638, !llvm.loop !620

.loopexit2809:                                    ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639, %middle.block3190, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i638
  %i.cgl = load ptr, ptr %1, align 8, !tbaa !89, !noalias !849 ; 2 uses
  %i.cgm = ptrtoaddr ptr %i.cgl to i64            ; 2 uses
  %i.cgn = load i64, ptr %i.a, align 8, !tbaa !90, !noalias !849 ; 11 uses
  %.idx2781 = shl i64 %i.cgn, 3                   ; 3 uses
  %i.cgo = getelementptr inbounds i8, ptr %i.cgl, i64 %.idx2781 ; 13 uses
  %i.cgp = add nsw i64 %i.cdc, %i.ccl             ; 4 uses
  %i.cgq = load ptr, ptr %62, align 8, !tbaa !26, !noalias !850 ; 2 uses
  %i.cgr = ptrtoaddr ptr %i.cgq to i64            ; 2 uses
  %i.cgs = getelementptr inbounds [4 x i8], ptr %i.cgq, i64 %i.cgp ; 14 uses
  %i.cgt = ptrtoint ptr %i.cgs to i64             ; 2 uses
  %i.cgu = and i64 %i.cgt, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i653 = icmp eq i64 %i.cgu, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i653, label %bb.dv, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i654

bb.dv:                                            ; preds = %.loopexit2809
  %i.cgv = lshr exact i64 %i.cgt, 2
  %i.cgw = sub nsw i64 0, %i.cgv
  %i.cgx = and i64 %i.cgw, 3
  %i.cgy = call i64 @llvm.smin.i64(i64 %i.cgx, i64 %i.cgn)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i654

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i654: ; preds = %bb.dv, %.loopexit2809
  %.0.i.i.i.i.i.i.i.i.i.i.i.i655 = phi i64 [ %i.cgy, %bb.dv ], [ %i.cgn, %.loopexit2809 ] ; 11 uses
  %i.cgz = sub nsw i64 %i.cgn, %.0.i.i.i.i.i.i.i.i.i.i.i.i655 ; 2 uses
  %i.cha = sdiv i64 %i.cgz, 4
  %i.chb = shl nsw i64 %i.cha, 2                  ; 2 uses
  %i.chc = add nsw i64 %i.chb, %.0.i.i.i.i.i.i.i.i.i.i.i.i655 ; 6 uses
  %i.chd = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i655, 0
  br i1 %i.chd, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i656

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.preheader:      ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i654
  %min.iters.check3196 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i655, 16
  br i1 %min.iters.check3196, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.preheader3775, label %vector.memcheck3197

vector.memcheck3197:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.preheader
  %i.che = shl nsw i64 %i.cgp, 2
  %i.chf = add i64 %i.che, %i.cgr
  %i.chg = add i64 %.idx2781, %i.cgm
  %i.chh = sub i64 %i.chg, %i.chf
  %diff.check3198 = icmp ugt i64 %i.chh, -32
  br i1 %diff.check3198, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.preheader3775, label %vector.ph3199

vector.ph3199:                                    ; preds = %vector.memcheck3197
  %n.vec3200 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i655, 9223372036854775800 ; 3 uses
  br label %vector.body3201

vector.body3201:                                  ; preds = %vector.body3201, %vector.ph3199
  %index3202 = phi i64 [ 0, %vector.ph3199 ], [ %index.next3205, %vector.body3201 ] ; 3 uses
  %i.chi = getelementptr inbounds nuw [4 x i8], ptr %i.cgs, i64 %index3202 ; 2 uses
  %i.chj = getelementptr inbounds nuw [4 x i8], ptr %i.cgo, i64 %index3202 ; 2 uses
  %i.chk = getelementptr inbounds nuw i8, ptr %i.chj, i64 16
  %wide.load3203 = load <4 x i32>, ptr %i.chj, align 4, !tbaa !24
  %wide.load3204 = load <4 x i32>, ptr %i.chk, align 4, !tbaa !24
  %i.chl = getelementptr inbounds nuw i8, ptr %i.chi, i64 16
  store <4 x i32> %wide.load3203, ptr %i.chi, align 4, !tbaa !24
  store <4 x i32> %wide.load3204, ptr %i.chl, align 4, !tbaa !24
  %index.next3205 = add nuw i64 %index3202, 8     ; 2 uses
  %i.chm = icmp eq i64 %index.next3205, %n.vec3200
  br i1 %i.chm, label %middle.block3206, label %vector.body3201, !llvm.loop !711

middle.block3206:                                 ; preds = %vector.body3201
  %cmp.n3207 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i655, %n.vec3200
  br i1 %cmp.n3207, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i656, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.preheader3775

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.preheader3775:  ; preds = %vector.memcheck3197, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.preheader, %middle.block3206
  %.05.i.i.i.i.i.i.i.i.i.i.i.i664.ph = phi i64 [ 0, %vector.memcheck3197 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.preheader ], [ %n.vec3200, %middle.block3206 ] ; 3 uses
  %xtraiter3845 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i655, 3 ; 2 uses
  %lcmp.mod3846.not = icmp eq i64 %xtraiter3845, 0
  br i1 %lcmp.mod3846.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.prol:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.preheader3775, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i664.prol = phi i64 [ %i.chq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i664.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.preheader3775 ] ; 3 uses
  %prol.iter3847 = phi i64 [ %prol.iter3847.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.preheader3775 ]
  %i.chn = getelementptr inbounds nuw [4 x i8], ptr %i.cgs, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i664.prol
  %i.cho = getelementptr inbounds nuw [4 x i8], ptr %i.cgo, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i664.prol
  %i.chp = load i32, ptr %i.cho, align 4, !tbaa !24
  store i32 %i.chp, ptr %i.chn, align 4, !tbaa !24
  %i.chq = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i664.prol, 1 ; 2 uses
  %prol.iter3847.next = add i64 %prol.iter3847, 1 ; 2 uses
  %prol.iter3847.cmp.not = icmp eq i64 %prol.iter3847.next, %xtraiter3845
  br i1 %prol.iter3847.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.prol, !llvm.loop !712

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.prol.loopexit:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.preheader3775
  %.05.i.i.i.i.i.i.i.i.i.i.i.i664.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i664.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.preheader3775 ], [ %i.chq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.prol ]
  %i.chr = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i664.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i655
  %i.chs = icmp ugt i64 %i.chr, -4
  br i1 %i.chs, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i656, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663
  %.05.i.i.i.i.i.i.i.i.i.i.i.i664 = phi i64 [ %i.cii, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i664.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.prol.loopexit ] ; 6 uses
  %i.cht = getelementptr inbounds nuw [4 x i8], ptr %i.cgs, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i664
  %i.chu = getelementptr inbounds nuw [4 x i8], ptr %i.cgo, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i664
  %i.chv = load i32, ptr %i.chu, align 4, !tbaa !24
  store i32 %i.chv, ptr %i.cht, align 4, !tbaa !24
  %i.chw = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i664, 1 ; 2 uses
  %i.chx = getelementptr inbounds nuw [4 x i8], ptr %i.cgs, i64 %i.chw
  %i.chy = getelementptr inbounds nuw [4 x i8], ptr %i.cgo, i64 %i.chw
  %i.chz = load i32, ptr %i.chy, align 4, !tbaa !24
  store i32 %i.chz, ptr %i.chx, align 4, !tbaa !24
  %i.cia = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i664, 2 ; 2 uses
  %i.cib = getelementptr inbounds nuw [4 x i8], ptr %i.cgs, i64 %i.cia
  %i.cic = getelementptr inbounds nuw [4 x i8], ptr %i.cgo, i64 %i.cia
  %i.cid = load i32, ptr %i.cic, align 4, !tbaa !24
  store i32 %i.cid, ptr %i.cib, align 4, !tbaa !24
  %i.cie = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i664, 3 ; 2 uses
  %i.cif = getelementptr inbounds nuw [4 x i8], ptr %i.cgs, i64 %i.cie
  %i.cig = getelementptr inbounds nuw [4 x i8], ptr %i.cgo, i64 %i.cie
  %i.cih = load i32, ptr %i.cig, align 4, !tbaa !24
  store i32 %i.cih, ptr %i.cif, align 4, !tbaa !24
  %i.cii = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i664, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i665.3 = icmp eq i64 %i.cii, %.0.i.i.i.i.i.i.i.i.i.i.i.i655
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i665.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i656, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663, !llvm.loop !713

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i656: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663, %middle.block3206, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i654
  %i.cij = icmp sgt i64 %i.cgz, 3
  br i1 %i.cij, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i661, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i657

._crit_edge.i.i.i.i.i.i.i.i.i.i.i657:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i661, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i656
  %i.cik = icmp slt i64 %i.chc, %i.cgn
  br i1 %i.cik, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.preheader, label %.loopexit2808

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.preheader:    ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i657
  %i.cil = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i655, %i.chb
  %i.cim = sub i64 %i.cgn, %i.cil                 ; 3 uses
  %min.iters.check3212 = icmp ult i64 %i.cim, 16
  br i1 %min.iters.check3212, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.preheader3774, label %vector.memcheck3213

vector.memcheck3213:                              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.preheader
  %i.cin = shl nsw i64 %i.cgp, 2
  %i.cio = add i64 %i.cin, %i.cgr
  %i.cip = add i64 %.idx2781, %i.cgm
  %i.ciq = sub i64 %i.cip, %i.cio
  %diff.check3214 = icmp ugt i64 %i.ciq, -32
  br i1 %diff.check3214, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.preheader3774, label %vector.ph3215

vector.ph3215:                                    ; preds = %vector.memcheck3213
  %n.vec3216 = and i64 %i.cim, -8                 ; 3 uses
  %i.cir = add i64 %i.chc, %n.vec3216
  br label %vector.body3217

vector.body3217:                                  ; preds = %vector.body3217, %vector.ph3215
  %index3218 = phi i64 [ 0, %vector.ph3215 ], [ %index.next3221, %vector.body3217 ] ; 2 uses
  %i.cis = add i64 %i.chc, %index3218             ; 2 uses
  %i.cit = getelementptr inbounds [4 x i8], ptr %i.cgs, i64 %i.cis ; 2 uses
  %i.ciu = getelementptr inbounds [4 x i8], ptr %i.cgo, i64 %i.cis ; 2 uses
  %i.civ = getelementptr inbounds nuw i8, ptr %i.ciu, i64 16
  %wide.load3219 = load <4 x i32>, ptr %i.ciu, align 4, !tbaa !24
  %wide.load3220 = load <4 x i32>, ptr %i.civ, align 4, !tbaa !24
  %i.ciw = getelementptr inbounds nuw i8, ptr %i.cit, i64 16
  store <4 x i32> %wide.load3219, ptr %i.cit, align 4, !tbaa !24
  store <4 x i32> %wide.load3220, ptr %i.ciw, align 4, !tbaa !24
  %index.next3221 = add nuw i64 %index3218, 8     ; 2 uses
  %i.cix = icmp eq i64 %index.next3221, %n.vec3216
  br i1 %i.cix, label %middle.block3222, label %vector.body3217, !llvm.loop !714

middle.block3222:                                 ; preds = %vector.body3217
  %cmp.n3223 = icmp eq i64 %i.cim, %n.vec3216
  br i1 %cmp.n3223, label %.loopexit2808, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.preheader3774

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.preheader3774: ; preds = %vector.memcheck3213, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.preheader, %middle.block3222
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i659.ph = phi i64 [ %i.chc, %vector.memcheck3213 ], [ %i.chc, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.preheader ], [ %i.cir, %middle.block3222 ] ; 4 uses
  %i.ciy = sub i64 %i.cgn, %.05.i18.i.i.i.i.i.i.i.i.i.i.i659.ph
  %xtraiter3848 = and i64 %i.ciy, 3               ; 2 uses
  %lcmp.mod3849.not = icmp eq i64 %xtraiter3848, 0
  br i1 %lcmp.mod3849.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.prol:         ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.preheader3774, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i659.prol = phi i64 [ %i.cjc, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i659.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.preheader3774 ] ; 3 uses
  %prol.iter3850 = phi i64 [ %prol.iter3850.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.preheader3774 ]
  %i.ciz = getelementptr inbounds [4 x i8], ptr %i.cgs, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i659.prol
  %i.cja = getelementptr inbounds [4 x i8], ptr %i.cgo, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i659.prol
  %i.cjb = load i32, ptr %i.cja, align 4, !tbaa !24
  store i32 %i.cjb, ptr %i.ciz, align 4, !tbaa !24
  %i.cjc = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i659.prol, 1 ; 2 uses
  %prol.iter3850.next = add i64 %prol.iter3850, 1 ; 2 uses
  %prol.iter3850.cmp.not = icmp eq i64 %prol.iter3850.next, %xtraiter3848
  br i1 %prol.iter3850.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.prol, !llvm.loop !715

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.preheader3774
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i659.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i659.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.preheader3774 ], [ %i.cjc, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.prol ]
  %i.cjd = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i659.ph, %i.cgn
  %i.cje = icmp ugt i64 %i.cjd, -4
  br i1 %i.cje, label %.loopexit2808, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i659 = phi i64 [ %i.cju, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i659.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.prol.loopexit ] ; 6 uses
  %i.cjf = getelementptr inbounds [4 x i8], ptr %i.cgs, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i659
  %i.cjg = getelementptr inbounds [4 x i8], ptr %i.cgo, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i659
  %i.cjh = load i32, ptr %i.cjg, align 4, !tbaa !24
  store i32 %i.cjh, ptr %i.cjf, align 4, !tbaa !24
  %i.cji = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i659, 1 ; 2 uses
  %i.cjj = getelementptr inbounds [4 x i8], ptr %i.cgs, i64 %i.cji
  %i.cjk = getelementptr inbounds [4 x i8], ptr %i.cgo, i64 %i.cji
  %i.cjl = load i32, ptr %i.cjk, align 4, !tbaa !24
  store i32 %i.cjl, ptr %i.cjj, align 4, !tbaa !24
  %i.cjm = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i659, 2 ; 2 uses
  %i.cjn = getelementptr inbounds [4 x i8], ptr %i.cgs, i64 %i.cjm
  %i.cjo = getelementptr inbounds [4 x i8], ptr %i.cgo, i64 %i.cjm
  %i.cjp = load i32, ptr %i.cjo, align 4, !tbaa !24
  store i32 %i.cjp, ptr %i.cjn, align 4, !tbaa !24
  %i.cjq = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i659, 3 ; 2 uses
  %i.cjr = getelementptr inbounds [4 x i8], ptr %i.cgs, i64 %i.cjq
  %i.cjs = getelementptr inbounds [4 x i8], ptr %i.cgo, i64 %i.cjq
  %i.cjt = load i32, ptr %i.cjs, align 4, !tbaa !24
  store i32 %i.cjt, ptr %i.cjr, align 4, !tbaa !24
  %i.cju = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i659, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i660.3 = icmp eq i64 %i.cju, %i.cgn
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i660.3, label %.loopexit2808, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658, !llvm.loop !716

.lr.ph.i.i.i.i.i.i.i.i.i.i.i661:                  ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i656, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i661
  %.021.i.i.i.i.i.i.i.i.i.i.i662 = phi i64 [ %i.cjy, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i661 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i655, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i656 ] ; 3 uses
  %i.cjv = getelementptr inbounds [4 x i8], ptr %i.cgs, i64 %.021.i.i.i.i.i.i.i.i.i.i.i662
  %i.cjw = getelementptr inbounds [4 x i8], ptr %i.cgo, i64 %.021.i.i.i.i.i.i.i.i.i.i.i662
  %i.cjx = load <2 x i64>, ptr %i.cjw, align 1, !tbaa !22
  store <2 x i64> %i.cjx, ptr %i.cjv, align 16, !tbaa !22
  %i.cjy = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i662, 4 ; 2 uses
  %i.cjz = icmp slt i64 %i.cjy, %i.chc
  br i1 %i.cjz, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i661, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i657, !llvm.loop !620

.loopexit2808:                                    ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658, %middle.block3222, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i657
  %i.cka = load ptr, ptr %1, align 8, !tbaa !89, !noalias !851 ; 2 uses
  %i.ckb = ptrtoaddr ptr %i.cka to i64            ; 2 uses
  %i.ckc = load i64, ptr %i.a, align 8, !tbaa !90, !noalias !851 ; 13 uses
  %i.ckd = getelementptr inbounds [4 x i8], ptr %i.cka, i64 %i.ckc ; 13 uses
  %i.cke = add nsw i64 %i.cgn, %i.cgp             ; 4 uses
  %i.ckf = load ptr, ptr %62, align 8, !tbaa !26, !noalias !852 ; 2 uses
  %i.ckg = ptrtoaddr ptr %i.ckf to i64            ; 2 uses
  %i.ckh = getelementptr inbounds [4 x i8], ptr %i.ckf, i64 %i.cke ; 14 uses
  %i.cki = ptrtoint ptr %i.ckh to i64             ; 2 uses
  %i.ckj = and i64 %i.cki, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i672 = icmp eq i64 %i.ckj, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i672, label %bb.dw, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i673

bb.dw:                                            ; preds = %.loopexit2808
  %i.ckk = lshr exact i64 %i.cki, 2
  %i.ckl = sub nsw i64 0, %i.ckk
  %i.ckm = and i64 %i.ckl, 3
  %i.ckn = call i64 @llvm.smin.i64(i64 %i.ckm, i64 %i.ckc)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i673

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i673: ; preds = %bb.dw, %.loopexit2808
  %.0.i.i.i.i.i.i.i.i.i.i.i.i674 = phi i64 [ %i.ckn, %bb.dw ], [ %i.ckc, %.loopexit2808 ] ; 11 uses
  %i.cko = sub nsw i64 %i.ckc, %.0.i.i.i.i.i.i.i.i.i.i.i.i674 ; 2 uses
  %i.ckp = sdiv i64 %i.cko, 4
  %i.ckq = shl nsw i64 %i.ckp, 2                  ; 2 uses
  %i.ckr = add nsw i64 %i.ckq, %.0.i.i.i.i.i.i.i.i.i.i.i.i674 ; 6 uses
  %i.cks = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i674, 0
  br i1 %i.cks, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i675

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.preheader:      ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i673
  %min.iters.check3228 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i674, 20
  br i1 %min.iters.check3228, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.preheader3773, label %vector.memcheck3229

vector.memcheck3229:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.preheader
  %i.ckt = shl nsw i64 %i.cke, 2
  %i.cku = shl i64 %i.ckc, 2
  %i.ckv = add i64 %i.ckt, %i.ckg
  %i.ckw = add i64 %i.cku, %i.ckb
  %i.ckx = sub i64 %i.ckw, %i.ckv
  %diff.check3230 = icmp ugt i64 %i.ckx, -32
  br i1 %diff.check3230, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.preheader3773, label %vector.ph3231

vector.ph3231:                                    ; preds = %vector.memcheck3229
  %n.vec3232 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i674, 9223372036854775800 ; 3 uses
  br label %vector.body3233

vector.body3233:                                  ; preds = %vector.body3233, %vector.ph3231
  %index3234 = phi i64 [ 0, %vector.ph3231 ], [ %index.next3237, %vector.body3233 ] ; 3 uses
  %i.cky = getelementptr inbounds nuw [4 x i8], ptr %i.ckh, i64 %index3234 ; 2 uses
  %i.ckz = getelementptr inbounds nuw [4 x i8], ptr %i.ckd, i64 %index3234 ; 2 uses
  %i.cla = getelementptr inbounds nuw i8, ptr %i.ckz, i64 16
  %wide.load3235 = load <4 x i32>, ptr %i.ckz, align 4, !tbaa !24
  %wide.load3236 = load <4 x i32>, ptr %i.cla, align 4, !tbaa !24
  %i.clb = getelementptr inbounds nuw i8, ptr %i.cky, i64 16
  store <4 x i32> %wide.load3235, ptr %i.cky, align 4, !tbaa !24
  store <4 x i32> %wide.load3236, ptr %i.clb, align 4, !tbaa !24
  %index.next3237 = add nuw i64 %index3234, 8     ; 2 uses
  %i.clc = icmp eq i64 %index.next3237, %n.vec3232
  br i1 %i.clc, label %middle.block3238, label %vector.body3233, !llvm.loop !721

middle.block3238:                                 ; preds = %vector.body3233
  %cmp.n3239 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i674, %n.vec3232
  br i1 %cmp.n3239, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i675, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.preheader3773

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.preheader3773:  ; preds = %vector.memcheck3229, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.preheader, %middle.block3238
  %.05.i.i.i.i.i.i.i.i.i.i.i.i683.ph = phi i64 [ 0, %vector.memcheck3229 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.preheader ], [ %n.vec3232, %middle.block3238 ] ; 3 uses
  %xtraiter3851 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i674, 3 ; 2 uses
  %lcmp.mod3852.not = icmp eq i64 %xtraiter3851, 0
  br i1 %lcmp.mod3852.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.prol:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.preheader3773, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i683.prol = phi i64 [ %i.clg, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i683.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.preheader3773 ] ; 3 uses
  %prol.iter3853 = phi i64 [ %prol.iter3853.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.preheader3773 ]
  %i.cld = getelementptr inbounds nuw [4 x i8], ptr %i.ckh, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i683.prol
  %i.cle = getelementptr inbounds nuw [4 x i8], ptr %i.ckd, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i683.prol
  %i.clf = load i32, ptr %i.cle, align 4, !tbaa !24
  store i32 %i.clf, ptr %i.cld, align 4, !tbaa !24
  %i.clg = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i683.prol, 1 ; 2 uses
  %prol.iter3853.next = add i64 %prol.iter3853, 1 ; 2 uses
  %prol.iter3853.cmp.not = icmp eq i64 %prol.iter3853.next, %xtraiter3851
  br i1 %prol.iter3853.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.prol, !llvm.loop !722

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.prol.loopexit:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.preheader3773
  %.05.i.i.i.i.i.i.i.i.i.i.i.i683.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i683.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.preheader3773 ], [ %i.clg, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.prol ]
  %i.clh = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i683.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i674
  %i.cli = icmp ugt i64 %i.clh, -4
  br i1 %i.cli, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i675, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682
  %.05.i.i.i.i.i.i.i.i.i.i.i.i683 = phi i64 [ %i.cly, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i683.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.prol.loopexit ] ; 6 uses
  %i.clj = getelementptr inbounds nuw [4 x i8], ptr %i.ckh, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i683
  %i.clk = getelementptr inbounds nuw [4 x i8], ptr %i.ckd, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i683
  %i.cll = load i32, ptr %i.clk, align 4, !tbaa !24
  store i32 %i.cll, ptr %i.clj, align 4, !tbaa !24
  %i.clm = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i683, 1 ; 2 uses
  %i.cln = getelementptr inbounds nuw [4 x i8], ptr %i.ckh, i64 %i.clm
  %i.clo = getelementptr inbounds nuw [4 x i8], ptr %i.ckd, i64 %i.clm
  %i.clp = load i32, ptr %i.clo, align 4, !tbaa !24
  store i32 %i.clp, ptr %i.cln, align 4, !tbaa !24
  %i.clq = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i683, 2 ; 2 uses
  %i.clr = getelementptr inbounds nuw [4 x i8], ptr %i.ckh, i64 %i.clq
  %i.cls = getelementptr inbounds nuw [4 x i8], ptr %i.ckd, i64 %i.clq
  %i.clt = load i32, ptr %i.cls, align 4, !tbaa !24
  store i32 %i.clt, ptr %i.clr, align 4, !tbaa !24
  %i.clu = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i683, 3 ; 2 uses
  %i.clv = getelementptr inbounds nuw [4 x i8], ptr %i.ckh, i64 %i.clu
  %i.clw = getelementptr inbounds nuw [4 x i8], ptr %i.ckd, i64 %i.clu
  %i.clx = load i32, ptr %i.clw, align 4, !tbaa !24
  store i32 %i.clx, ptr %i.clv, align 4, !tbaa !24
  %i.cly = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i683, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i684.3 = icmp eq i64 %i.cly, %.0.i.i.i.i.i.i.i.i.i.i.i.i674
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i684.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i675, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682, !llvm.loop !723

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i675: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682, %middle.block3238, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i673
  %i.clz = icmp sgt i64 %i.cko, 3
  br i1 %i.clz, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i680, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i676

._crit_edge.i.i.i.i.i.i.i.i.i.i.i676:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i680, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i675
  %i.cma = icmp slt i64 %i.ckr, %i.ckc
  br i1 %i.cma, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.preheader, label %.loopexit2807

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.preheader:    ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i676
  %i.cmb = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i674, %i.ckq
  %i.cmc = sub i64 %i.ckc, %i.cmb                 ; 3 uses
  %min.iters.check3244 = icmp ult i64 %i.cmc, 20
  br i1 %min.iters.check3244, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.preheader3772, label %vector.memcheck3245

vector.memcheck3245:                              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.preheader
  %i.cmd = shl nsw i64 %i.cke, 2
  %i.cme = shl i64 %i.ckc, 2
  %i.cmf = add i64 %i.cmd, %i.ckg
  %i.cmg = add i64 %i.cme, %i.ckb
  %i.cmh = sub i64 %i.cmg, %i.cmf
  %diff.check3246 = icmp ugt i64 %i.cmh, -32
  br i1 %diff.check3246, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.preheader3772, label %vector.ph3247

vector.ph3247:                                    ; preds = %vector.memcheck3245
  %n.vec3248 = and i64 %i.cmc, -8                 ; 3 uses
  %i.cmi = add i64 %i.ckr, %n.vec3248
  br label %vector.body3249

vector.body3249:                                  ; preds = %vector.body3249, %vector.ph3247
  %index3250 = phi i64 [ 0, %vector.ph3247 ], [ %index.next3253, %vector.body3249 ] ; 2 uses
  %i.cmj = add i64 %i.ckr, %index3250             ; 2 uses
  %i.cmk = getelementptr inbounds [4 x i8], ptr %i.ckh, i64 %i.cmj ; 2 uses
  %i.cml = getelementptr inbounds [4 x i8], ptr %i.ckd, i64 %i.cmj ; 2 uses
  %i.cmm = getelementptr inbounds nuw i8, ptr %i.cml, i64 16
  %wide.load3251 = load <4 x i32>, ptr %i.cml, align 4, !tbaa !24
  %wide.load3252 = load <4 x i32>, ptr %i.cmm, align 4, !tbaa !24
  %i.cmn = getelementptr inbounds nuw i8, ptr %i.cmk, i64 16
  store <4 x i32> %wide.load3251, ptr %i.cmk, align 4, !tbaa !24
  store <4 x i32> %wide.load3252, ptr %i.cmn, align 4, !tbaa !24
  %index.next3253 = add nuw i64 %index3250, 8     ; 2 uses
  %i.cmo = icmp eq i64 %index.next3253, %n.vec3248
  br i1 %i.cmo, label %middle.block3254, label %vector.body3249, !llvm.loop !724

middle.block3254:                                 ; preds = %vector.body3249
  %cmp.n3255 = icmp eq i64 %i.cmc, %n.vec3248
  br i1 %cmp.n3255, label %.loopexit2807, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.preheader3772

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.preheader3772: ; preds = %vector.memcheck3245, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.preheader, %middle.block3254
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i678.ph = phi i64 [ %i.ckr, %vector.memcheck3245 ], [ %i.ckr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.preheader ], [ %i.cmi, %middle.block3254 ] ; 4 uses
  %i.cmp = sub i64 %i.ckc, %.05.i18.i.i.i.i.i.i.i.i.i.i.i678.ph
  %xtraiter3854 = and i64 %i.cmp, 3               ; 2 uses
  %lcmp.mod3855.not = icmp eq i64 %xtraiter3854, 0
  br i1 %lcmp.mod3855.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.prol:         ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.preheader3772, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i678.prol = phi i64 [ %i.cmt, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i678.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.preheader3772 ] ; 3 uses
  %prol.iter3856 = phi i64 [ %prol.iter3856.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.preheader3772 ]
  %i.cmq = getelementptr inbounds [4 x i8], ptr %i.ckh, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i678.prol
  %i.cmr = getelementptr inbounds [4 x i8], ptr %i.ckd, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i678.prol
  %i.cms = load i32, ptr %i.cmr, align 4, !tbaa !24
  store i32 %i.cms, ptr %i.cmq, align 4, !tbaa !24
  %i.cmt = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i678.prol, 1 ; 2 uses
  %prol.iter3856.next = add i64 %prol.iter3856, 1 ; 2 uses
  %prol.iter3856.cmp.not = icmp eq i64 %prol.iter3856.next, %xtraiter3854
  br i1 %prol.iter3856.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.prol, !llvm.loop !725

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.preheader3772
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i678.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i678.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.preheader3772 ], [ %i.cmt, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.prol ]
  %i.cmu = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i678.ph, %i.ckc
  %i.cmv = icmp ugt i64 %i.cmu, -4
  br i1 %i.cmv, label %.loopexit2807, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i678 = phi i64 [ %i.cnl, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i678.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.prol.loopexit ] ; 6 uses
  %i.cmw = getelementptr inbounds [4 x i8], ptr %i.ckh, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i678
  %i.cmx = getelementptr inbounds [4 x i8], ptr %i.ckd, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i678
  %i.cmy = load i32, ptr %i.cmx, align 4, !tbaa !24
  store i32 %i.cmy, ptr %i.cmw, align 4, !tbaa !24
  %i.cmz = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i678, 1 ; 2 uses
  %i.cna = getelementptr inbounds [4 x i8], ptr %i.ckh, i64 %i.cmz
  %i.cnb = getelementptr inbounds [4 x i8], ptr %i.ckd, i64 %i.cmz
  %i.cnc = load i32, ptr %i.cnb, align 4, !tbaa !24
  store i32 %i.cnc, ptr %i.cna, align 4, !tbaa !24
  %i.cnd = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i678, 2 ; 2 uses
  %i.cne = getelementptr inbounds [4 x i8], ptr %i.ckh, i64 %i.cnd
  %i.cnf = getelementptr inbounds [4 x i8], ptr %i.ckd, i64 %i.cnd
  %i.cng = load i32, ptr %i.cnf, align 4, !tbaa !24
  store i32 %i.cng, ptr %i.cne, align 4, !tbaa !24
  %i.cnh = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i678, 3 ; 2 uses
  %i.cni = getelementptr inbounds [4 x i8], ptr %i.ckh, i64 %i.cnh
  %i.cnj = getelementptr inbounds [4 x i8], ptr %i.ckd, i64 %i.cnh
  %i.cnk = load i32, ptr %i.cnj, align 4, !tbaa !24
  store i32 %i.cnk, ptr %i.cni, align 4, !tbaa !24
  %i.cnl = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i678, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i679.3 = icmp eq i64 %i.cnl, %i.ckc
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i679.3, label %.loopexit2807, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677, !llvm.loop !726

.lr.ph.i.i.i.i.i.i.i.i.i.i.i680:                  ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i675, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i680
  %.021.i.i.i.i.i.i.i.i.i.i.i681 = phi i64 [ %i.cnp, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i680 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i674, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i675 ] ; 3 uses
  %i.cnm = getelementptr inbounds [4 x i8], ptr %i.ckh, i64 %.021.i.i.i.i.i.i.i.i.i.i.i681
  %i.cnn = getelementptr inbounds [4 x i8], ptr %i.ckd, i64 %.021.i.i.i.i.i.i.i.i.i.i.i681
  %i.cno = load <2 x i64>, ptr %i.cnn, align 1, !tbaa !22
  store <2 x i64> %i.cno, ptr %i.cnm, align 16, !tbaa !22
  %i.cnp = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i681, 4 ; 2 uses
  %i.cnq = icmp slt i64 %i.cnp, %i.ckr
  br i1 %i.cnq, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i680, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i676, !llvm.loop !620

.loopexit2807:                                    ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677, %middle.block3254, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i676
  %i.cnr = load ptr, ptr %1, align 8, !tbaa !89, !noalias !853 ; 14 uses
  %i.cns = ptrtoaddr ptr %i.cnr to i64            ; 2 uses
  %i.cnt = load i64, ptr %i.a, align 8, !tbaa !90, !noalias !853 ; 10 uses
  %i.cnu = add nsw i64 %i.ckc, %i.cke             ; 4 uses
  %i.cnv = load ptr, ptr %62, align 8, !tbaa !26, !noalias !854 ; 2 uses
  %i.cnw = ptrtoaddr ptr %i.cnv to i64            ; 2 uses
  %i.cnx = getelementptr inbounds [4 x i8], ptr %i.cnv, i64 %i.cnu ; 14 uses
  %i.cny = ptrtoint ptr %i.cnx to i64             ; 2 uses
  %i.cnz = and i64 %i.cny, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i691 = icmp eq i64 %i.cnz, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i691, label %bb.dx, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i692

bb.dx:                                            ; preds = %.loopexit2807
  %i.coa = lshr exact i64 %i.cny, 2
  %i.cob = sub nsw i64 0, %i.coa
  %i.coc = and i64 %i.cob, 3
  %i.cod = call i64 @llvm.smin.i64(i64 %i.coc, i64 %i.cnt)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i692

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i692: ; preds = %bb.dx, %.loopexit2807
  %.0.i.i.i.i.i.i.i.i.i.i.i.i693 = phi i64 [ %i.cod, %bb.dx ], [ %i.cnt, %.loopexit2807 ] ; 11 uses
  %i.coe = sub nsw i64 %i.cnt, %.0.i.i.i.i.i.i.i.i.i.i.i.i693 ; 2 uses
  %i.cof = sdiv i64 %i.coe, 4
  %i.cog = shl nsw i64 %i.cof, 2                  ; 2 uses
  %i.coh = add nsw i64 %i.cog, %.0.i.i.i.i.i.i.i.i.i.i.i.i693 ; 6 uses
  %i.coi = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i693, 0
  br i1 %i.coi, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i694

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.preheader:      ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i692
  %min.iters.check3260 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i693, 16
  br i1 %min.iters.check3260, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.preheader3771, label %vector.memcheck3261

vector.memcheck3261:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.preheader
  %i.coj = shl nsw i64 %i.cnu, 2
  %i.cok = add i64 %i.coj, %i.cnw
  %i.col = sub i64 %i.cns, %i.cok
  %diff.check3262 = icmp ugt i64 %i.col, -32
  br i1 %diff.check3262, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.preheader3771, label %vector.ph3263

vector.ph3263:                                    ; preds = %vector.memcheck3261
  %n.vec3264 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i693, 9223372036854775800 ; 3 uses
  br label %vector.body3265

vector.body3265:                                  ; preds = %vector.body3265, %vector.ph3263
  %index3266 = phi i64 [ 0, %vector.ph3263 ], [ %index.next3269, %vector.body3265 ] ; 3 uses
  %i.com = getelementptr inbounds nuw [4 x i8], ptr %i.cnx, i64 %index3266 ; 2 uses
  %i.con = getelementptr inbounds nuw [4 x i8], ptr %i.cnr, i64 %index3266 ; 2 uses
  %i.coo = getelementptr inbounds nuw i8, ptr %i.con, i64 16
  %wide.load3267 = load <4 x i32>, ptr %i.con, align 4, !tbaa !24
  %wide.load3268 = load <4 x i32>, ptr %i.coo, align 4, !tbaa !24
  %i.cop = getelementptr inbounds nuw i8, ptr %i.com, i64 16
  store <4 x i32> %wide.load3267, ptr %i.com, align 4, !tbaa !24
  store <4 x i32> %wide.load3268, ptr %i.cop, align 4, !tbaa !24
  %index.next3269 = add nuw i64 %index3266, 8     ; 2 uses
  %i.coq = icmp eq i64 %index.next3269, %n.vec3264
  br i1 %i.coq, label %middle.block3270, label %vector.body3265, !llvm.loop !731

middle.block3270:                                 ; preds = %vector.body3265
  %cmp.n3271 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i693, %n.vec3264
  br i1 %cmp.n3271, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i694, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.preheader3771

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.preheader3771:  ; preds = %vector.memcheck3261, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.preheader, %middle.block3270
  %.05.i.i.i.i.i.i.i.i.i.i.i.i702.ph = phi i64 [ 0, %vector.memcheck3261 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.preheader ], [ %n.vec3264, %middle.block3270 ] ; 3 uses
  %xtraiter3857 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i693, 3 ; 2 uses
  %lcmp.mod3858.not = icmp eq i64 %xtraiter3857, 0
  br i1 %lcmp.mod3858.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.prol:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.preheader3771, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i702.prol = phi i64 [ %i.cou, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i702.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.preheader3771 ] ; 3 uses
  %prol.iter3859 = phi i64 [ %prol.iter3859.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.preheader3771 ]
  %i.cor = getelementptr inbounds nuw [4 x i8], ptr %i.cnx, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i702.prol
  %i.cos = getelementptr inbounds nuw [4 x i8], ptr %i.cnr, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i702.prol
  %i.cot = load i32, ptr %i.cos, align 4, !tbaa !24
  store i32 %i.cot, ptr %i.cor, align 4, !tbaa !24
  %i.cou = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i702.prol, 1 ; 2 uses
  %prol.iter3859.next = add i64 %prol.iter3859, 1 ; 2 uses
  %prol.iter3859.cmp.not = icmp eq i64 %prol.iter3859.next, %xtraiter3857
  br i1 %prol.iter3859.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.prol, !llvm.loop !732

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.prol.loopexit:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.preheader3771
  %.05.i.i.i.i.i.i.i.i.i.i.i.i702.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i702.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.preheader3771 ], [ %i.cou, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.prol ]
  %i.cov = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i702.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i693
  %i.cow = icmp ugt i64 %i.cov, -4
  br i1 %i.cow, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i694, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701
  %.05.i.i.i.i.i.i.i.i.i.i.i.i702 = phi i64 [ %i.cpm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i702.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.prol.loopexit ] ; 6 uses
  %i.cox = getelementptr inbounds nuw [4 x i8], ptr %i.cnx, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i702
  %i.coy = getelementptr inbounds nuw [4 x i8], ptr %i.cnr, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i702
  %i.coz = load i32, ptr %i.coy, align 4, !tbaa !24
  store i32 %i.coz, ptr %i.cox, align 4, !tbaa !24
  %i.cpa = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i702, 1 ; 2 uses
  %i.cpb = getelementptr inbounds nuw [4 x i8], ptr %i.cnx, i64 %i.cpa
  %i.cpc = getelementptr inbounds nuw [4 x i8], ptr %i.cnr, i64 %i.cpa
  %i.cpd = load i32, ptr %i.cpc, align 4, !tbaa !24
  store i32 %i.cpd, ptr %i.cpb, align 4, !tbaa !24
  %i.cpe = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i702, 2 ; 2 uses
  %i.cpf = getelementptr inbounds nuw [4 x i8], ptr %i.cnx, i64 %i.cpe
  %i.cpg = getelementptr inbounds nuw [4 x i8], ptr %i.cnr, i64 %i.cpe
  %i.cph = load i32, ptr %i.cpg, align 4, !tbaa !24
  store i32 %i.cph, ptr %i.cpf, align 4, !tbaa !24
  %i.cpi = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i702, 3 ; 2 uses
  %i.cpj = getelementptr inbounds nuw [4 x i8], ptr %i.cnx, i64 %i.cpi
  %i.cpk = getelementptr inbounds nuw [4 x i8], ptr %i.cnr, i64 %i.cpi
  %i.cpl = load i32, ptr %i.cpk, align 4, !tbaa !24
  store i32 %i.cpl, ptr %i.cpj, align 4, !tbaa !24
  %i.cpm = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i702, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i703.3 = icmp eq i64 %i.cpm, %.0.i.i.i.i.i.i.i.i.i.i.i.i693
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i703.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i694, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701, !llvm.loop !733

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i694: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701, %middle.block3270, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i692
  %i.cpn = icmp sgt i64 %i.coe, 3
  br i1 %i.cpn, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i699, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i695

._crit_edge.i.i.i.i.i.i.i.i.i.i.i695:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i699, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i694
  %i.cpo = icmp slt i64 %i.coh, %i.cnt
  br i1 %i.cpo, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.preheader, label %.loopexit2806

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.preheader:    ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i695
  %i.cpp = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i693, %i.cog
  %i.cpq = sub i64 %i.cnt, %i.cpp                 ; 3 uses
  %min.iters.check3276 = icmp ult i64 %i.cpq, 16
  br i1 %min.iters.check3276, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.preheader3770, label %vector.memcheck3277

vector.memcheck3277:                              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.preheader
  %i.cpr = shl nsw i64 %i.cnu, 2
  %i.cps = add i64 %i.cpr, %i.cnw
  %i.cpt = sub i64 %i.cns, %i.cps
  %diff.check3278 = icmp ugt i64 %i.cpt, -32
  br i1 %diff.check3278, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.preheader3770, label %vector.ph3279

vector.ph3279:                                    ; preds = %vector.memcheck3277
  %n.vec3280 = and i64 %i.cpq, -8                 ; 3 uses
  %i.cpu = add i64 %i.coh, %n.vec3280
  br label %vector.body3281

vector.body3281:                                  ; preds = %vector.body3281, %vector.ph3279
  %index3282 = phi i64 [ 0, %vector.ph3279 ], [ %index.next3285, %vector.body3281 ] ; 2 uses
  %i.cpv = add i64 %i.coh, %index3282             ; 2 uses
  %i.cpw = getelementptr inbounds [4 x i8], ptr %i.cnx, i64 %i.cpv ; 2 uses
  %i.cpx = getelementptr inbounds [4 x i8], ptr %i.cnr, i64 %i.cpv ; 2 uses
  %i.cpy = getelementptr inbounds nuw i8, ptr %i.cpx, i64 16
  %wide.load3283 = load <4 x i32>, ptr %i.cpx, align 4, !tbaa !24
  %wide.load3284 = load <4 x i32>, ptr %i.cpy, align 4, !tbaa !24
  %i.cpz = getelementptr inbounds nuw i8, ptr %i.cpw, i64 16
  store <4 x i32> %wide.load3283, ptr %i.cpw, align 4, !tbaa !24
  store <4 x i32> %wide.load3284, ptr %i.cpz, align 4, !tbaa !24
  %index.next3285 = add nuw i64 %index3282, 8     ; 2 uses
  %i.cqa = icmp eq i64 %index.next3285, %n.vec3280
  br i1 %i.cqa, label %middle.block3286, label %vector.body3281, !llvm.loop !734

middle.block3286:                                 ; preds = %vector.body3281
  %cmp.n3287 = icmp eq i64 %i.cpq, %n.vec3280
  br i1 %cmp.n3287, label %.loopexit2806, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.preheader3770

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.preheader3770: ; preds = %vector.memcheck3277, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.preheader, %middle.block3286
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i697.ph = phi i64 [ %i.coh, %vector.memcheck3277 ], [ %i.coh, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.preheader ], [ %i.cpu, %middle.block3286 ] ; 4 uses
  %i.cqb = sub i64 %i.cnt, %.05.i18.i.i.i.i.i.i.i.i.i.i.i697.ph
  %xtraiter3860 = and i64 %i.cqb, 3               ; 2 uses
  %lcmp.mod3861.not = icmp eq i64 %xtraiter3860, 0
  br i1 %lcmp.mod3861.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.prol:         ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.preheader3770, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i697.prol = phi i64 [ %i.cqf, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i697.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.preheader3770 ] ; 3 uses
  %prol.iter3862 = phi i64 [ %prol.iter3862.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.preheader3770 ]
  %i.cqc = getelementptr inbounds [4 x i8], ptr %i.cnx, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i697.prol
  %i.cqd = getelementptr inbounds [4 x i8], ptr %i.cnr, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i697.prol
  %i.cqe = load i32, ptr %i.cqd, align 4, !tbaa !24
  store i32 %i.cqe, ptr %i.cqc, align 4, !tbaa !24
  %i.cqf = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i697.prol, 1 ; 2 uses
  %prol.iter3862.next = add i64 %prol.iter3862, 1 ; 2 uses
  %prol.iter3862.cmp.not = icmp eq i64 %prol.iter3862.next, %xtraiter3860
  br i1 %prol.iter3862.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.prol, !llvm.loop !735

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.preheader3770
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i697.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i697.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.preheader3770 ], [ %i.cqf, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.prol ]
  %i.cqg = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i697.ph, %i.cnt
  %i.cqh = icmp ugt i64 %i.cqg, -4
  br i1 %i.cqh, label %.loopexit2806, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i697 = phi i64 [ %i.cqx, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i697.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.prol.loopexit ] ; 6 uses
  %i.cqi = getelementptr inbounds [4 x i8], ptr %i.cnx, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i697
  %i.cqj = getelementptr inbounds [4 x i8], ptr %i.cnr, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i697
  %i.cqk = load i32, ptr %i.cqj, align 4, !tbaa !24
  store i32 %i.cqk, ptr %i.cqi, align 4, !tbaa !24
  %i.cql = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i697, 1 ; 2 uses
  %i.cqm = getelementptr inbounds [4 x i8], ptr %i.cnx, i64 %i.cql
  %i.cqn = getelementptr inbounds [4 x i8], ptr %i.cnr, i64 %i.cql
  %i.cqo = load i32, ptr %i.cqn, align 4, !tbaa !24
  store i32 %i.cqo, ptr %i.cqm, align 4, !tbaa !24
  %i.cqp = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i697, 2 ; 2 uses
  %i.cqq = getelementptr inbounds [4 x i8], ptr %i.cnx, i64 %i.cqp
  %i.cqr = getelementptr inbounds [4 x i8], ptr %i.cnr, i64 %i.cqp
  %i.cqs = load i32, ptr %i.cqr, align 4, !tbaa !24
  store i32 %i.cqs, ptr %i.cqq, align 4, !tbaa !24
  %i.cqt = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i697, 3 ; 2 uses
  %i.cqu = getelementptr inbounds [4 x i8], ptr %i.cnx, i64 %i.cqt
  %i.cqv = getelementptr inbounds [4 x i8], ptr %i.cnr, i64 %i.cqt
  %i.cqw = load i32, ptr %i.cqv, align 4, !tbaa !24
  store i32 %i.cqw, ptr %i.cqu, align 4, !tbaa !24
  %i.cqx = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i697, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i698.3 = icmp eq i64 %i.cqx, %i.cnt
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i698.3, label %.loopexit2806, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696, !llvm.loop !736

.lr.ph.i.i.i.i.i.i.i.i.i.i.i699:                  ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i694, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i699
  %.021.i.i.i.i.i.i.i.i.i.i.i700 = phi i64 [ %i.crb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i699 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i693, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i694 ] ; 3 uses
  %i.cqy = getelementptr inbounds [4 x i8], ptr %i.cnx, i64 %.021.i.i.i.i.i.i.i.i.i.i.i700
  %i.cqz = getelementptr inbounds [4 x i8], ptr %i.cnr, i64 %.021.i.i.i.i.i.i.i.i.i.i.i700
  %i.cra = load <2 x i64>, ptr %i.cqz, align 1, !tbaa !22
  store <2 x i64> %i.cra, ptr %i.cqy, align 16, !tbaa !22
  %i.crb = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i700, 4 ; 2 uses
  %i.crc = icmp slt i64 %i.crb, %i.coh
  br i1 %i.crc, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i699, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i695, !llvm.loop !620

.loopexit2806:                                    ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696, %middle.block3286, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i695
  %i.crd = load ptr, ptr %1, align 8, !tbaa !89, !noalias !855 ; 2 uses
  %i.cre = ptrtoaddr ptr %i.crd to i64            ; 2 uses
  %i.crf = load i64, ptr %i.a, align 8, !tbaa !90, !noalias !855 ; 11 uses
  %.idx2782 = shl i64 %i.crf, 3                   ; 3 uses
  %i.crg = getelementptr inbounds i8, ptr %i.crd, i64 %.idx2782 ; 13 uses
  %i.crh = add nsw i64 %i.cnt, %i.cnu             ; 4 uses
  %i.cri = load ptr, ptr %62, align 8, !tbaa !26, !noalias !856 ; 2 uses
  %i.crj = ptrtoaddr ptr %i.cri to i64            ; 2 uses
  %i.crk = getelementptr inbounds [4 x i8], ptr %i.cri, i64 %i.crh ; 14 uses
  %i.crl = ptrtoint ptr %i.crk to i64             ; 2 uses
  %i.crm = and i64 %i.crl, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i710 = icmp eq i64 %i.crm, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i710, label %bb.dy, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i711

bb.dy:                                            ; preds = %.loopexit2806
  %i.crn = lshr exact i64 %i.crl, 2
  %i.cro = sub nsw i64 0, %i.crn
  %i.crp = and i64 %i.cro, 3
  %i.crq = call i64 @llvm.smin.i64(i64 %i.crp, i64 %i.crf)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i711

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i711: ; preds = %bb.dy, %.loopexit2806
  %.0.i.i.i.i.i.i.i.i.i.i.i.i712 = phi i64 [ %i.crq, %bb.dy ], [ %i.crf, %.loopexit2806 ] ; 11 uses
  %i.crr = sub nsw i64 %i.crf, %.0.i.i.i.i.i.i.i.i.i.i.i.i712 ; 2 uses
  %i.crs = sdiv i64 %i.crr, 4
  %i.crt = shl nsw i64 %i.crs, 2                  ; 2 uses
  %i.cru = add nsw i64 %i.crt, %.0.i.i.i.i.i.i.i.i.i.i.i.i712 ; 6 uses
  %i.crv = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i712, 0
  br i1 %i.crv, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i713

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.preheader:      ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i711
  %min.iters.check3292 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i712, 16
  br i1 %min.iters.check3292, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.preheader3769, label %vector.memcheck3293

vector.memcheck3293:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.preheader
  %i.crw = shl nsw i64 %i.crh, 2
  %i.crx = add i64 %i.crw, %i.crj
  %i.cry = add i64 %.idx2782, %i.cre
  %i.crz = sub i64 %i.cry, %i.crx
  %diff.check3294 = icmp ugt i64 %i.crz, -32
  br i1 %diff.check3294, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.preheader3769, label %vector.ph3295

vector.ph3295:                                    ; preds = %vector.memcheck3293
  %n.vec3296 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i712, 9223372036854775800 ; 3 uses
  br label %vector.body3297

vector.body3297:                                  ; preds = %vector.body3297, %vector.ph3295
  %index3298 = phi i64 [ 0, %vector.ph3295 ], [ %index.next3301, %vector.body3297 ] ; 3 uses
  %i.csa = getelementptr inbounds nuw [4 x i8], ptr %i.crk, i64 %index3298 ; 2 uses
  %i.csb = getelementptr inbounds nuw [4 x i8], ptr %i.crg, i64 %index3298 ; 2 uses
  %i.csc = getelementptr inbounds nuw i8, ptr %i.csb, i64 16
  %wide.load3299 = load <4 x i32>, ptr %i.csb, align 4, !tbaa !24
  %wide.load3300 = load <4 x i32>, ptr %i.csc, align 4, !tbaa !24
  %i.csd = getelementptr inbounds nuw i8, ptr %i.csa, i64 16
  store <4 x i32> %wide.load3299, ptr %i.csa, align 4, !tbaa !24
  store <4 x i32> %wide.load3300, ptr %i.csd, align 4, !tbaa !24
  %index.next3301 = add nuw i64 %index3298, 8     ; 2 uses
  %i.cse = icmp eq i64 %index.next3301, %n.vec3296
  br i1 %i.cse, label %middle.block3302, label %vector.body3297, !llvm.loop !741

middle.block3302:                                 ; preds = %vector.body3297
  %cmp.n3303 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i712, %n.vec3296
  br i1 %cmp.n3303, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i713, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.preheader3769

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.preheader3769:  ; preds = %vector.memcheck3293, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.preheader, %middle.block3302
  %.05.i.i.i.i.i.i.i.i.i.i.i.i721.ph = phi i64 [ 0, %vector.memcheck3293 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.preheader ], [ %n.vec3296, %middle.block3302 ] ; 3 uses
  %xtraiter3863 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i712, 3 ; 2 uses
  %lcmp.mod3864.not = icmp eq i64 %xtraiter3863, 0
  br i1 %lcmp.mod3864.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.prol:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.preheader3769, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i721.prol = phi i64 [ %i.csi, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i721.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.preheader3769 ] ; 3 uses
  %prol.iter3865 = phi i64 [ %prol.iter3865.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.preheader3769 ]
  %i.csf = getelementptr inbounds nuw [4 x i8], ptr %i.crk, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i721.prol
  %i.csg = getelementptr inbounds nuw [4 x i8], ptr %i.crg, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i721.prol
  %i.csh = load i32, ptr %i.csg, align 4, !tbaa !24
  store i32 %i.csh, ptr %i.csf, align 4, !tbaa !24
  %i.csi = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i721.prol, 1 ; 2 uses
  %prol.iter3865.next = add i64 %prol.iter3865, 1 ; 2 uses
  %prol.iter3865.cmp.not = icmp eq i64 %prol.iter3865.next, %xtraiter3863
  br i1 %prol.iter3865.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.prol, !llvm.loop !742

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.prol.loopexit:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.preheader3769
  %.05.i.i.i.i.i.i.i.i.i.i.i.i721.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i721.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.preheader3769 ], [ %i.csi, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.prol ]
  %i.csj = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i721.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i712
  %i.csk = icmp ugt i64 %i.csj, -4
  br i1 %i.csk, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i713, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720
  %.05.i.i.i.i.i.i.i.i.i.i.i.i721 = phi i64 [ %i.cta, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i721.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.prol.loopexit ] ; 6 uses
  %i.csl = getelementptr inbounds nuw [4 x i8], ptr %i.crk, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i721
  %i.csm = getelementptr inbounds nuw [4 x i8], ptr %i.crg, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i721
  %i.csn = load i32, ptr %i.csm, align 4, !tbaa !24
  store i32 %i.csn, ptr %i.csl, align 4, !tbaa !24
  %i.cso = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i721, 1 ; 2 uses
  %i.csp = getelementptr inbounds nuw [4 x i8], ptr %i.crk, i64 %i.cso
  %i.csq = getelementptr inbounds nuw [4 x i8], ptr %i.crg, i64 %i.cso
  %i.csr = load i32, ptr %i.csq, align 4, !tbaa !24
  store i32 %i.csr, ptr %i.csp, align 4, !tbaa !24
  %i.css = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i721, 2 ; 2 uses
  %i.cst = getelementptr inbounds nuw [4 x i8], ptr %i.crk, i64 %i.css
  %i.csu = getelementptr inbounds nuw [4 x i8], ptr %i.crg, i64 %i.css
  %i.csv = load i32, ptr %i.csu, align 4, !tbaa !24
  store i32 %i.csv, ptr %i.cst, align 4, !tbaa !24
  %i.csw = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i721, 3 ; 2 uses
  %i.csx = getelementptr inbounds nuw [4 x i8], ptr %i.crk, i64 %i.csw
  %i.csy = getelementptr inbounds nuw [4 x i8], ptr %i.crg, i64 %i.csw
  %i.csz = load i32, ptr %i.csy, align 4, !tbaa !24
  store i32 %i.csz, ptr %i.csx, align 4, !tbaa !24
  %i.cta = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i721, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i722.3 = icmp eq i64 %i.cta, %.0.i.i.i.i.i.i.i.i.i.i.i.i712
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i722.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i713, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720, !llvm.loop !743

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i713: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720, %middle.block3302, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i711
  %i.ctb = icmp sgt i64 %i.crr, 3
  br i1 %i.ctb, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i718, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i714

._crit_edge.i.i.i.i.i.i.i.i.i.i.i714:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i718, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i713
  %i.ctc = icmp slt i64 %i.cru, %i.crf
  br i1 %i.ctc, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.preheader, label %.loopexit2805

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.preheader:    ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i714
  %i.ctd = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i712, %i.crt
  %i.cte = sub i64 %i.crf, %i.ctd                 ; 3 uses
  %min.iters.check3308 = icmp ult i64 %i.cte, 16
  br i1 %min.iters.check3308, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.preheader3768, label %vector.memcheck3309

vector.memcheck3309:                              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.preheader
  %i.ctf = shl nsw i64 %i.crh, 2
  %i.ctg = add i64 %i.ctf, %i.crj
  %i.cth = add i64 %.idx2782, %i.cre
  %i.cti = sub i64 %i.cth, %i.ctg
  %diff.check3310 = icmp ugt i64 %i.cti, -32
  br i1 %diff.check3310, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.preheader3768, label %vector.ph3311

vector.ph3311:                                    ; preds = %vector.memcheck3309
  %n.vec3312 = and i64 %i.cte, -8                 ; 3 uses
  %i.ctj = add i64 %i.cru, %n.vec3312
  br label %vector.body3313

vector.body3313:                                  ; preds = %vector.body3313, %vector.ph3311
  %index3314 = phi i64 [ 0, %vector.ph3311 ], [ %index.next3317, %vector.body3313 ] ; 2 uses
  %i.ctk = add i64 %i.cru, %index3314             ; 2 uses
  %i.ctl = getelementptr inbounds [4 x i8], ptr %i.crk, i64 %i.ctk ; 2 uses
  %i.ctm = getelementptr inbounds [4 x i8], ptr %i.crg, i64 %i.ctk ; 2 uses
  %i.ctn = getelementptr inbounds nuw i8, ptr %i.ctm, i64 16
  %wide.load3315 = load <4 x i32>, ptr %i.ctm, align 4, !tbaa !24
  %wide.load3316 = load <4 x i32>, ptr %i.ctn, align 4, !tbaa !24
  %i.cto = getelementptr inbounds nuw i8, ptr %i.ctl, i64 16
  store <4 x i32> %wide.load3315, ptr %i.ctl, align 4, !tbaa !24
  store <4 x i32> %wide.load3316, ptr %i.cto, align 4, !tbaa !24
  %index.next3317 = add nuw i64 %index3314, 8     ; 2 uses
  %i.ctp = icmp eq i64 %index.next3317, %n.vec3312
  br i1 %i.ctp, label %middle.block3318, label %vector.body3313, !llvm.loop !744

middle.block3318:                                 ; preds = %vector.body3313
  %cmp.n3319 = icmp eq i64 %i.cte, %n.vec3312
  br i1 %cmp.n3319, label %.loopexit2805, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.preheader3768

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.preheader3768: ; preds = %vector.memcheck3309, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.preheader, %middle.block3318
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i716.ph = phi i64 [ %i.cru, %vector.memcheck3309 ], [ %i.cru, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.preheader ], [ %i.ctj, %middle.block3318 ] ; 4 uses
  %i.ctq = sub i64 %i.crf, %.05.i18.i.i.i.i.i.i.i.i.i.i.i716.ph
  %xtraiter3866 = and i64 %i.ctq, 3               ; 2 uses
  %lcmp.mod3867.not = icmp eq i64 %xtraiter3866, 0
  br i1 %lcmp.mod3867.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.prol:         ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.preheader3768, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i716.prol = phi i64 [ %i.ctu, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i716.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.preheader3768 ] ; 3 uses
  %prol.iter3868 = phi i64 [ %prol.iter3868.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.preheader3768 ]
  %i.ctr = getelementptr inbounds [4 x i8], ptr %i.crk, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i716.prol
  %i.cts = getelementptr inbounds [4 x i8], ptr %i.crg, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i716.prol
  %i.ctt = load i32, ptr %i.cts, align 4, !tbaa !24
  store i32 %i.ctt, ptr %i.ctr, align 4, !tbaa !24
  %i.ctu = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i716.prol, 1 ; 2 uses
  %prol.iter3868.next = add i64 %prol.iter3868, 1 ; 2 uses
  %prol.iter3868.cmp.not = icmp eq i64 %prol.iter3868.next, %xtraiter3866
  br i1 %prol.iter3868.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.prol, !llvm.loop !745

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.preheader3768
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i716.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i716.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.preheader3768 ], [ %i.ctu, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.prol ]
  %i.ctv = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i716.ph, %i.crf
  %i.ctw = icmp ugt i64 %i.ctv, -4
  br i1 %i.ctw, label %.loopexit2805, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i716 = phi i64 [ %i.cum, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i716.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.prol.loopexit ] ; 6 uses
  %i.ctx = getelementptr inbounds [4 x i8], ptr %i.crk, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i716
  %i.cty = getelementptr inbounds [4 x i8], ptr %i.crg, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i716
  %i.ctz = load i32, ptr %i.cty, align 4, !tbaa !24
  store i32 %i.ctz, ptr %i.ctx, align 4, !tbaa !24
  %i.cua = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i716, 1 ; 2 uses
  %i.cub = getelementptr inbounds [4 x i8], ptr %i.crk, i64 %i.cua
  %i.cuc = getelementptr inbounds [4 x i8], ptr %i.crg, i64 %i.cua
  %i.cud = load i32, ptr %i.cuc, align 4, !tbaa !24
  store i32 %i.cud, ptr %i.cub, align 4, !tbaa !24
  %i.cue = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i716, 2 ; 2 uses
  %i.cuf = getelementptr inbounds [4 x i8], ptr %i.crk, i64 %i.cue
  %i.cug = getelementptr inbounds [4 x i8], ptr %i.crg, i64 %i.cue
  %i.cuh = load i32, ptr %i.cug, align 4, !tbaa !24
  store i32 %i.cuh, ptr %i.cuf, align 4, !tbaa !24
  %i.cui = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i716, 3 ; 2 uses
  %i.cuj = getelementptr inbounds [4 x i8], ptr %i.crk, i64 %i.cui
  %i.cuk = getelementptr inbounds [4 x i8], ptr %i.crg, i64 %i.cui
  %i.cul = load i32, ptr %i.cuk, align 4, !tbaa !24
  store i32 %i.cul, ptr %i.cuj, align 4, !tbaa !24
  %i.cum = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i716, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i717.3 = icmp eq i64 %i.cum, %i.crf
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i717.3, label %.loopexit2805, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715, !llvm.loop !746

.lr.ph.i.i.i.i.i.i.i.i.i.i.i718:                  ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i713, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i718
  %.021.i.i.i.i.i.i.i.i.i.i.i719 = phi i64 [ %i.cuq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i718 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i712, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i713 ] ; 3 uses
  %i.cun = getelementptr inbounds [4 x i8], ptr %i.crk, i64 %.021.i.i.i.i.i.i.i.i.i.i.i719
  %i.cuo = getelementptr inbounds [4 x i8], ptr %i.crg, i64 %.021.i.i.i.i.i.i.i.i.i.i.i719
  %i.cup = load <2 x i64>, ptr %i.cuo, align 1, !tbaa !22
  store <2 x i64> %i.cup, ptr %i.cun, align 16, !tbaa !22
  %i.cuq = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i719, 4 ; 2 uses
  %i.cur = icmp slt i64 %i.cuq, %i.cru
  br i1 %i.cur, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i718, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i714, !llvm.loop !620

.loopexit2805:                                    ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715, %middle.block3318, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i714
  %i.cus = load ptr, ptr %1, align 8, !tbaa !89, !noalias !857 ; 14 uses
  %i.cut = ptrtoaddr ptr %i.cus to i64            ; 2 uses
  %i.cuu = load i64, ptr %i.a, align 8, !tbaa !90, !noalias !857 ; 10 uses
  %i.cuv = add nsw i64 %i.crf, %i.crh             ; 4 uses
  %i.cuw = load ptr, ptr %62, align 8, !tbaa !26, !noalias !858 ; 2 uses
  %i.cux = ptrtoaddr ptr %i.cuw to i64            ; 2 uses
  %i.cuy = getelementptr inbounds [4 x i8], ptr %i.cuw, i64 %i.cuv ; 14 uses
  %i.cuz = ptrtoint ptr %i.cuy to i64             ; 2 uses
  %i.cva = and i64 %i.cuz, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i729 = icmp eq i64 %i.cva, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i729, label %bb.dz, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i730

bb.dz:                                            ; preds = %.loopexit2805
  %i.cvb = lshr exact i64 %i.cuz, 2
  %i.cvc = sub nsw i64 0, %i.cvb
  %i.cvd = and i64 %i.cvc, 3
  %i.cve = call i64 @llvm.smin.i64(i64 %i.cvd, i64 %i.cuu)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i730

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i730: ; preds = %bb.dz, %.loopexit2805
  %.0.i.i.i.i.i.i.i.i.i.i.i.i731 = phi i64 [ %i.cve, %bb.dz ], [ %i.cuu, %.loopexit2805 ] ; 11 uses
  %i.cvf = sub nsw i64 %i.cuu, %.0.i.i.i.i.i.i.i.i.i.i.i.i731 ; 2 uses
  %i.cvg = sdiv i64 %i.cvf, 4
  %i.cvh = shl nsw i64 %i.cvg, 2                  ; 2 uses
  %i.cvi = add nsw i64 %i.cvh, %.0.i.i.i.i.i.i.i.i.i.i.i.i731 ; 6 uses
  %i.cvj = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i731, 0
  br i1 %i.cvj, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i732

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.preheader:      ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i730
  %min.iters.check3324 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i731, 16
  br i1 %min.iters.check3324, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.preheader3767, label %vector.memcheck3325

vector.memcheck3325:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.preheader
  %i.cvk = shl nsw i64 %i.cuv, 2
  %i.cvl = add i64 %i.cvk, %i.cux
  %i.cvm = sub i64 %i.cut, %i.cvl
  %diff.check3326 = icmp ugt i64 %i.cvm, -32
  br i1 %diff.check3326, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.preheader3767, label %vector.ph3327

vector.ph3327:                                    ; preds = %vector.memcheck3325
  %n.vec3328 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i731, 9223372036854775800 ; 3 uses
  br label %vector.body3329

vector.body3329:                                  ; preds = %vector.body3329, %vector.ph3327
  %index3330 = phi i64 [ 0, %vector.ph3327 ], [ %index.next3333, %vector.body3329 ] ; 3 uses
  %i.cvn = getelementptr inbounds nuw [4 x i8], ptr %i.cuy, i64 %index3330 ; 2 uses
  %i.cvo = getelementptr inbounds nuw [4 x i8], ptr %i.cus, i64 %index3330 ; 2 uses
  %i.cvp = getelementptr inbounds nuw i8, ptr %i.cvo, i64 16
  %wide.load3331 = load <4 x i32>, ptr %i.cvo, align 4, !tbaa !24
  %wide.load3332 = load <4 x i32>, ptr %i.cvp, align 4, !tbaa !24
  %i.cvq = getelementptr inbounds nuw i8, ptr %i.cvn, i64 16
  store <4 x i32> %wide.load3331, ptr %i.cvn, align 4, !tbaa !24
  store <4 x i32> %wide.load3332, ptr %i.cvq, align 4, !tbaa !24
  %index.next3333 = add nuw i64 %index3330, 8     ; 2 uses
  %i.cvr = icmp eq i64 %index.next3333, %n.vec3328
  br i1 %i.cvr, label %middle.block3334, label %vector.body3329, !llvm.loop !751

middle.block3334:                                 ; preds = %vector.body3329
  %cmp.n3335 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i731, %n.vec3328
  br i1 %cmp.n3335, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i732, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.preheader3767

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.preheader3767:  ; preds = %vector.memcheck3325, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.preheader, %middle.block3334
  %.05.i.i.i.i.i.i.i.i.i.i.i.i740.ph = phi i64 [ 0, %vector.memcheck3325 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.preheader ], [ %n.vec3328, %middle.block3334 ] ; 3 uses
  %xtraiter3869 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i731, 3 ; 2 uses
  %lcmp.mod3870.not = icmp eq i64 %xtraiter3869, 0
  br i1 %lcmp.mod3870.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.prol:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.preheader3767, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i740.prol = phi i64 [ %i.cvv, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i740.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.preheader3767 ] ; 3 uses
  %prol.iter3871 = phi i64 [ %prol.iter3871.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.preheader3767 ]
  %i.cvs = getelementptr inbounds nuw [4 x i8], ptr %i.cuy, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i740.prol
  %i.cvt = getelementptr inbounds nuw [4 x i8], ptr %i.cus, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i740.prol
  %i.cvu = load i32, ptr %i.cvt, align 4, !tbaa !24
  store i32 %i.cvu, ptr %i.cvs, align 4, !tbaa !24
  %i.cvv = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i740.prol, 1 ; 2 uses
  %prol.iter3871.next = add i64 %prol.iter3871, 1 ; 2 uses
  %prol.iter3871.cmp.not = icmp eq i64 %prol.iter3871.next, %xtraiter3869
  br i1 %prol.iter3871.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.prol, !llvm.loop !752

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.prol.loopexit:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.preheader3767
  %.05.i.i.i.i.i.i.i.i.i.i.i.i740.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i740.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.preheader3767 ], [ %i.cvv, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.prol ]
  %i.cvw = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i740.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i731
  %i.cvx = icmp ugt i64 %i.cvw, -4
  br i1 %i.cvx, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i732, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739
  %.05.i.i.i.i.i.i.i.i.i.i.i.i740 = phi i64 [ %i.cwn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i740.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.prol.loopexit ] ; 6 uses
  %i.cvy = getelementptr inbounds nuw [4 x i8], ptr %i.cuy, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i740
  %i.cvz = getelementptr inbounds nuw [4 x i8], ptr %i.cus, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i740
  %i.cwa = load i32, ptr %i.cvz, align 4, !tbaa !24
  store i32 %i.cwa, ptr %i.cvy, align 4, !tbaa !24
  %i.cwb = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i740, 1 ; 2 uses
  %i.cwc = getelementptr inbounds nuw [4 x i8], ptr %i.cuy, i64 %i.cwb
  %i.cwd = getelementptr inbounds nuw [4 x i8], ptr %i.cus, i64 %i.cwb
  %i.cwe = load i32, ptr %i.cwd, align 4, !tbaa !24
  store i32 %i.cwe, ptr %i.cwc, align 4, !tbaa !24
  %i.cwf = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i740, 2 ; 2 uses
  %i.cwg = getelementptr inbounds nuw [4 x i8], ptr %i.cuy, i64 %i.cwf
  %i.cwh = getelementptr inbounds nuw [4 x i8], ptr %i.cus, i64 %i.cwf
  %i.cwi = load i32, ptr %i.cwh, align 4, !tbaa !24
  store i32 %i.cwi, ptr %i.cwg, align 4, !tbaa !24
  %i.cwj = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i740, 3 ; 2 uses
  %i.cwk = getelementptr inbounds nuw [4 x i8], ptr %i.cuy, i64 %i.cwj
  %i.cwl = getelementptr inbounds nuw [4 x i8], ptr %i.cus, i64 %i.cwj
  %i.cwm = load i32, ptr %i.cwl, align 4, !tbaa !24
  store i32 %i.cwm, ptr %i.cwk, align 4, !tbaa !24
  %i.cwn = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i740, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i741.3 = icmp eq i64 %i.cwn, %.0.i.i.i.i.i.i.i.i.i.i.i.i731
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i741.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i732, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739, !llvm.loop !753

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i732: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739, %middle.block3334, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i730
  %i.cwo = icmp sgt i64 %i.cvf, 3
  br i1 %i.cwo, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i737, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i733

._crit_edge.i.i.i.i.i.i.i.i.i.i.i733:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i737, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i732
  %i.cwp = icmp slt i64 %i.cvi, %i.cuu
  br i1 %i.cwp, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.preheader, label %.loopexit2804

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.preheader:    ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i733
  %i.cwq = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i731, %i.cvh
  %i.cwr = sub i64 %i.cuu, %i.cwq                 ; 3 uses
  %min.iters.check3340 = icmp ult i64 %i.cwr, 16
  br i1 %min.iters.check3340, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.preheader3766, label %vector.memcheck3341

vector.memcheck3341:                              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.preheader
  %i.cws = shl nsw i64 %i.cuv, 2
  %i.cwt = add i64 %i.cws, %i.cux
  %i.cwu = sub i64 %i.cut, %i.cwt
  %diff.check3342 = icmp ugt i64 %i.cwu, -32
  br i1 %diff.check3342, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.preheader3766, label %vector.ph3343

vector.ph3343:                                    ; preds = %vector.memcheck3341
  %n.vec3344 = and i64 %i.cwr, -8                 ; 3 uses
  %i.cwv = add i64 %i.cvi, %n.vec3344
  br label %vector.body3345

vector.body3345:                                  ; preds = %vector.body3345, %vector.ph3343
  %index3346 = phi i64 [ 0, %vector.ph3343 ], [ %index.next3349, %vector.body3345 ] ; 2 uses
  %i.cww = add i64 %i.cvi, %index3346             ; 2 uses
  %i.cwx = getelementptr inbounds [4 x i8], ptr %i.cuy, i64 %i.cww ; 2 uses
  %i.cwy = getelementptr inbounds [4 x i8], ptr %i.cus, i64 %i.cww ; 2 uses
  %i.cwz = getelementptr inbounds nuw i8, ptr %i.cwy, i64 16
  %wide.load3347 = load <4 x i32>, ptr %i.cwy, align 4, !tbaa !24
  %wide.load3348 = load <4 x i32>, ptr %i.cwz, align 4, !tbaa !24
  %i.cxa = getelementptr inbounds nuw i8, ptr %i.cwx, i64 16
  store <4 x i32> %wide.load3347, ptr %i.cwx, align 4, !tbaa !24
  store <4 x i32> %wide.load3348, ptr %i.cxa, align 4, !tbaa !24
  %index.next3349 = add nuw i64 %index3346, 8     ; 2 uses
  %i.cxb = icmp eq i64 %index.next3349, %n.vec3344
  br i1 %i.cxb, label %middle.block3350, label %vector.body3345, !llvm.loop !754

middle.block3350:                                 ; preds = %vector.body3345
  %cmp.n3351 = icmp eq i64 %i.cwr, %n.vec3344
  br i1 %cmp.n3351, label %.loopexit2804, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.preheader3766

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.preheader3766: ; preds = %vector.memcheck3341, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.preheader, %middle.block3350
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i735.ph = phi i64 [ %i.cvi, %vector.memcheck3341 ], [ %i.cvi, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.preheader ], [ %i.cwv, %middle.block3350 ] ; 4 uses
  %i.cxc = sub i64 %i.cuu, %.05.i18.i.i.i.i.i.i.i.i.i.i.i735.ph
  %xtraiter3872 = and i64 %i.cxc, 3               ; 2 uses
  %lcmp.mod3873.not = icmp eq i64 %xtraiter3872, 0
  br i1 %lcmp.mod3873.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.prol:         ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.preheader3766, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i735.prol = phi i64 [ %i.cxg, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i735.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.preheader3766 ] ; 3 uses
  %prol.iter3874 = phi i64 [ %prol.iter3874.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.preheader3766 ]
  %i.cxd = getelementptr inbounds [4 x i8], ptr %i.cuy, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i735.prol
  %i.cxe = getelementptr inbounds [4 x i8], ptr %i.cus, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i735.prol
  %i.cxf = load i32, ptr %i.cxe, align 4, !tbaa !24
  store i32 %i.cxf, ptr %i.cxd, align 4, !tbaa !24
  %i.cxg = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i735.prol, 1 ; 2 uses
  %prol.iter3874.next = add i64 %prol.iter3874, 1 ; 2 uses
  %prol.iter3874.cmp.not = icmp eq i64 %prol.iter3874.next, %xtraiter3872
  br i1 %prol.iter3874.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.prol, !llvm.loop !755

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.preheader3766
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i735.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i735.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.preheader3766 ], [ %i.cxg, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.prol ]
  %i.cxh = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i735.ph, %i.cuu
  %i.cxi = icmp ugt i64 %i.cxh, -4
  br i1 %i.cxi, label %.loopexit2804, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i735 = phi i64 [ %i.cxy, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i735.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.prol.loopexit ] ; 6 uses
  %i.cxj = getelementptr inbounds [4 x i8], ptr %i.cuy, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i735
  %i.cxk = getelementptr inbounds [4 x i8], ptr %i.cus, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i735
  %i.cxl = load i32, ptr %i.cxk, align 4, !tbaa !24
  store i32 %i.cxl, ptr %i.cxj, align 4, !tbaa !24
  %i.cxm = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i735, 1 ; 2 uses
  %i.cxn = getelementptr inbounds [4 x i8], ptr %i.cuy, i64 %i.cxm
  %i.cxo = getelementptr inbounds [4 x i8], ptr %i.cus, i64 %i.cxm
  %i.cxp = load i32, ptr %i.cxo, align 4, !tbaa !24
  store i32 %i.cxp, ptr %i.cxn, align 4, !tbaa !24
  %i.cxq = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i735, 2 ; 2 uses
  %i.cxr = getelementptr inbounds [4 x i8], ptr %i.cuy, i64 %i.cxq
  %i.cxs = getelementptr inbounds [4 x i8], ptr %i.cus, i64 %i.cxq
  %i.cxt = load i32, ptr %i.cxs, align 4, !tbaa !24
  store i32 %i.cxt, ptr %i.cxr, align 4, !tbaa !24
  %i.cxu = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i735, 3 ; 2 uses
  %i.cxv = getelementptr inbounds [4 x i8], ptr %i.cuy, i64 %i.cxu
  %i.cxw = getelementptr inbounds [4 x i8], ptr %i.cus, i64 %i.cxu
  %i.cxx = load i32, ptr %i.cxw, align 4, !tbaa !24
  store i32 %i.cxx, ptr %i.cxv, align 4, !tbaa !24
  %i.cxy = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i735, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i736.3 = icmp eq i64 %i.cxy, %i.cuu
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i736.3, label %.loopexit2804, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734, !llvm.loop !756

.lr.ph.i.i.i.i.i.i.i.i.i.i.i737:                  ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i732, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i737
  %.021.i.i.i.i.i.i.i.i.i.i.i738 = phi i64 [ %i.cyc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i737 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i731, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i732 ] ; 3 uses
  %i.cxz = getelementptr inbounds [4 x i8], ptr %i.cuy, i64 %.021.i.i.i.i.i.i.i.i.i.i.i738
  %i.cya = getelementptr inbounds [4 x i8], ptr %i.cus, i64 %.021.i.i.i.i.i.i.i.i.i.i.i738
  %i.cyb = load <2 x i64>, ptr %i.cya, align 1, !tbaa !22
  store <2 x i64> %i.cyb, ptr %i.cxz, align 16, !tbaa !22
  %i.cyc = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i738, 4 ; 2 uses
  %i.cyd = icmp slt i64 %i.cyc, %i.cvi
  br i1 %i.cyd, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i737, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i733, !llvm.loop !620

.loopexit2804:                                    ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734, %middle.block3350, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i733
  %i.cye = load ptr, ptr %1, align 8, !tbaa !89, !noalias !859 ; 2 uses
  %i.cyf = ptrtoaddr ptr %i.cye to i64            ; 2 uses
  %i.cyg = load i64, ptr %i.a, align 8, !tbaa !90, !noalias !859 ; 14 uses
  %i.cyh = getelementptr inbounds [4 x i8], ptr %i.cye, i64 %i.cyg ; 13 uses
  %i.cyi = add nsw i64 %i.cuu, %i.cuv             ; 5 uses
  %i.cyj = load ptr, ptr %62, align 8, !tbaa !26, !noalias !860 ; 2 uses
  %i.cyk = ptrtoaddr ptr %i.cyj to i64            ; 2 uses
  %i.cyl = getelementptr inbounds [4 x i8], ptr %i.cyj, i64 %i.cyi ; 14 uses
  %i.cym = ptrtoint ptr %i.cyl to i64             ; 2 uses
  %i.cyn = and i64 %i.cym, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i748 = icmp eq i64 %i.cyn, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i748, label %bb.ea, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i749

bb.ea:                                            ; preds = %.loopexit2804
  %i.cyo = lshr exact i64 %i.cym, 2
  %i.cyp = sub nsw i64 0, %i.cyo
  %i.cyq = and i64 %i.cyp, 3
  %i.cyr = call i64 @llvm.smin.i64(i64 %i.cyq, i64 %i.cyg)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i749

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i749: ; preds = %bb.ea, %.loopexit2804
  %.0.i.i.i.i.i.i.i.i.i.i.i.i750 = phi i64 [ %i.cyr, %bb.ea ], [ %i.cyg, %.loopexit2804 ] ; 11 uses
  %i.cys = sub nsw i64 %i.cyg, %.0.i.i.i.i.i.i.i.i.i.i.i.i750 ; 2 uses
  %i.cyt = sdiv i64 %i.cys, 4
  %i.cyu = shl nsw i64 %i.cyt, 2                  ; 2 uses
  %i.cyv = add nsw i64 %i.cyu, %.0.i.i.i.i.i.i.i.i.i.i.i.i750 ; 6 uses
  %i.cyw = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i750, 0
  br i1 %i.cyw, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i751

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.preheader:      ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i749
  %min.iters.check3356 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i750, 20
  br i1 %min.iters.check3356, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.preheader3765, label %vector.memcheck3357

vector.memcheck3357:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.preheader
  %i.cyx = shl nsw i64 %i.cyi, 2
  %i.cyy = shl i64 %i.cyg, 2
  %i.cyz = add i64 %i.cyx, %i.cyk
  %i.cza = add i64 %i.cyy, %i.cyf
  %i.czb = sub i64 %i.cza, %i.cyz
  %diff.check3358 = icmp ugt i64 %i.czb, -32
  br i1 %diff.check3358, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.preheader3765, label %vector.ph3359

vector.ph3359:                                    ; preds = %vector.memcheck3357
  %n.vec3360 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i750, 9223372036854775800 ; 3 uses
  br label %vector.body3361

vector.body3361:                                  ; preds = %vector.body3361, %vector.ph3359
  %index3362 = phi i64 [ 0, %vector.ph3359 ], [ %index.next3365, %vector.body3361 ] ; 3 uses
  %i.czc = getelementptr inbounds nuw [4 x i8], ptr %i.cyl, i64 %index3362 ; 2 uses
  %i.czd = getelementptr inbounds nuw [4 x i8], ptr %i.cyh, i64 %index3362 ; 2 uses
  %i.cze = getelementptr inbounds nuw i8, ptr %i.czd, i64 16
  %wide.load3363 = load <4 x i32>, ptr %i.czd, align 4, !tbaa !24
  %wide.load3364 = load <4 x i32>, ptr %i.cze, align 4, !tbaa !24
  %i.czf = getelementptr inbounds nuw i8, ptr %i.czc, i64 16
  store <4 x i32> %wide.load3363, ptr %i.czc, align 4, !tbaa !24
  store <4 x i32> %wide.load3364, ptr %i.czf, align 4, !tbaa !24
  %index.next3365 = add nuw i64 %index3362, 8     ; 2 uses
  %i.czg = icmp eq i64 %index.next3365, %n.vec3360
  br i1 %i.czg, label %middle.block3366, label %vector.body3361, !llvm.loop !761

middle.block3366:                                 ; preds = %vector.body3361
  %cmp.n3367 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i750, %n.vec3360
  br i1 %cmp.n3367, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i751, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.preheader3765

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.preheader3765:  ; preds = %vector.memcheck3357, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.preheader, %middle.block3366
  %.05.i.i.i.i.i.i.i.i.i.i.i.i759.ph = phi i64 [ 0, %vector.memcheck3357 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.preheader ], [ %n.vec3360, %middle.block3366 ] ; 3 uses
  %xtraiter3875 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i750, 3 ; 2 uses
  %lcmp.mod3876.not = icmp eq i64 %xtraiter3875, 0
  br i1 %lcmp.mod3876.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.prol:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.preheader3765, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i759.prol = phi i64 [ %i.czk, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i759.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.preheader3765 ] ; 3 uses
  %prol.iter3877 = phi i64 [ %prol.iter3877.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.preheader3765 ]
  %i.czh = getelementptr inbounds nuw [4 x i8], ptr %i.cyl, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i759.prol
  %i.czi = getelementptr inbounds nuw [4 x i8], ptr %i.cyh, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i759.prol
  %i.czj = load i32, ptr %i.czi, align 4, !tbaa !24
  store i32 %i.czj, ptr %i.czh, align 4, !tbaa !24
  %i.czk = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i759.prol, 1 ; 2 uses
  %prol.iter3877.next = add i64 %prol.iter3877, 1 ; 2 uses
  %prol.iter3877.cmp.not = icmp eq i64 %prol.iter3877.next, %xtraiter3875
  br i1 %prol.iter3877.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.prol, !llvm.loop !762

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.prol.loopexit:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.preheader3765
  %.05.i.i.i.i.i.i.i.i.i.i.i.i759.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i759.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.preheader3765 ], [ %i.czk, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.prol ]
  %i.czl = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i759.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i750
  %i.czm = icmp ugt i64 %i.czl, -4
  br i1 %i.czm, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i751, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758
  %.05.i.i.i.i.i.i.i.i.i.i.i.i759 = phi i64 [ %i.dac, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i759.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.prol.loopexit ] ; 6 uses
  %i.czn = getelementptr inbounds nuw [4 x i8], ptr %i.cyl, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i759
  %i.czo = getelementptr inbounds nuw [4 x i8], ptr %i.cyh, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i759
  %i.czp = load i32, ptr %i.czo, align 4, !tbaa !24
  store i32 %i.czp, ptr %i.czn, align 4, !tbaa !24
  %i.czq = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i759, 1 ; 2 uses
  %i.czr = getelementptr inbounds nuw [4 x i8], ptr %i.cyl, i64 %i.czq
  %i.czs = getelementptr inbounds nuw [4 x i8], ptr %i.cyh, i64 %i.czq
  %i.czt = load i32, ptr %i.czs, align 4, !tbaa !24
  store i32 %i.czt, ptr %i.czr, align 4, !tbaa !24
  %i.czu = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i759, 2 ; 2 uses
  %i.czv = getelementptr inbounds nuw [4 x i8], ptr %i.cyl, i64 %i.czu
  %i.czw = getelementptr inbounds nuw [4 x i8], ptr %i.cyh, i64 %i.czu
  %i.czx = load i32, ptr %i.czw, align 4, !tbaa !24
  store i32 %i.czx, ptr %i.czv, align 4, !tbaa !24
  %i.czy = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i759, 3 ; 2 uses
  %i.czz = getelementptr inbounds nuw [4 x i8], ptr %i.cyl, i64 %i.czy
  %i.daa = getelementptr inbounds nuw [4 x i8], ptr %i.cyh, i64 %i.czy
  %i.dab = load i32, ptr %i.daa, align 4, !tbaa !24
  store i32 %i.dab, ptr %i.czz, align 4, !tbaa !24
  %i.dac = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i759, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i760.3 = icmp eq i64 %i.dac, %.0.i.i.i.i.i.i.i.i.i.i.i.i750
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i760.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i751, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758, !llvm.loop !763

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i751: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758, %middle.block3366, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i749
  %i.dad = icmp sgt i64 %i.cys, 3
  br i1 %i.dad, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i756, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i752

._crit_edge.i.i.i.i.i.i.i.i.i.i.i752:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i756, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i751
  %i.dae = icmp slt i64 %i.cyv, %i.cyg
  br i1 %i.dae, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.preheader, label %.loopexit2803

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.preheader:    ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i752
  %i.daf = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i750, %i.cyu
  %i.dag = sub i64 %i.cyg, %i.daf                 ; 3 uses
  %min.iters.check3372 = icmp ult i64 %i.dag, 20
  br i1 %min.iters.check3372, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.preheader3764, label %vector.memcheck3373

vector.memcheck3373:                              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.preheader
  %i.dah = shl nsw i64 %i.cyi, 2
  %i.dai = shl i64 %i.cyg, 2
  %i.daj = add i64 %i.dah, %i.cyk
  %i.dak = add i64 %i.dai, %i.cyf
  %i.dal = sub i64 %i.dak, %i.daj
  %diff.check3374 = icmp ugt i64 %i.dal, -32
  br i1 %diff.check3374, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.preheader3764, label %vector.ph3375

vector.ph3375:                                    ; preds = %vector.memcheck3373
  %n.vec3376 = and i64 %i.dag, -8                 ; 3 uses
  %i.dam = add i64 %i.cyv, %n.vec3376
  br label %vector.body3377

vector.body3377:                                  ; preds = %vector.body3377, %vector.ph3375
  %index3378 = phi i64 [ 0, %vector.ph3375 ], [ %index.next3381, %vector.body3377 ] ; 2 uses
  %i.dan = add i64 %i.cyv, %index3378             ; 2 uses
  %i.dao = getelementptr inbounds [4 x i8], ptr %i.cyl, i64 %i.dan ; 2 uses
  %i.dap = getelementptr inbounds [4 x i8], ptr %i.cyh, i64 %i.dan ; 2 uses
  %i.daq = getelementptr inbounds nuw i8, ptr %i.dap, i64 16
  %wide.load3379 = load <4 x i32>, ptr %i.dap, align 4, !tbaa !24
  %wide.load3380 = load <4 x i32>, ptr %i.daq, align 4, !tbaa !24
  %i.dar = getelementptr inbounds nuw i8, ptr %i.dao, i64 16
  store <4 x i32> %wide.load3379, ptr %i.dao, align 4, !tbaa !24
  store <4 x i32> %wide.load3380, ptr %i.dar, align 4, !tbaa !24
  %index.next3381 = add nuw i64 %index3378, 8     ; 2 uses
  %i.das = icmp eq i64 %index.next3381, %n.vec3376
  br i1 %i.das, label %middle.block3382, label %vector.body3377, !llvm.loop !764

middle.block3382:                                 ; preds = %vector.body3377
  %cmp.n3383 = icmp eq i64 %i.dag, %n.vec3376
  br i1 %cmp.n3383, label %.loopexit2803, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.preheader3764

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.preheader3764: ; preds = %vector.memcheck3373, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.preheader, %middle.block3382
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i754.ph = phi i64 [ %i.cyv, %vector.memcheck3373 ], [ %i.cyv, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.preheader ], [ %i.dam, %middle.block3382 ] ; 4 uses
  %i.dat = sub i64 %i.cyg, %.05.i18.i.i.i.i.i.i.i.i.i.i.i754.ph
  %xtraiter3878 = and i64 %i.dat, 3               ; 2 uses
  %lcmp.mod3879.not = icmp eq i64 %xtraiter3878, 0
  br i1 %lcmp.mod3879.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.prol:         ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.preheader3764, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i754.prol = phi i64 [ %i.dax, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i754.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.preheader3764 ] ; 3 uses
  %prol.iter3880 = phi i64 [ %prol.iter3880.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.preheader3764 ]
  %i.dau = getelementptr inbounds [4 x i8], ptr %i.cyl, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i754.prol
  %i.dav = getelementptr inbounds [4 x i8], ptr %i.cyh, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i754.prol
  %i.daw = load i32, ptr %i.dav, align 4, !tbaa !24
  store i32 %i.daw, ptr %i.dau, align 4, !tbaa !24
  %i.dax = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i754.prol, 1 ; 2 uses
  %prol.iter3880.next = add i64 %prol.iter3880, 1 ; 2 uses
  %prol.iter3880.cmp.not = icmp eq i64 %prol.iter3880.next, %xtraiter3878
  br i1 %prol.iter3880.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.prol, !llvm.loop !765

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.preheader3764
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i754.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i754.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.preheader3764 ], [ %i.dax, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.prol ]
  %i.day = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i754.ph, %i.cyg
  %i.daz = icmp ugt i64 %i.day, -4
  br i1 %i.daz, label %.loopexit2803, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i754 = phi i64 [ %i.dbp, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i754.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.prol.loopexit ] ; 6 uses
  %i.dba = getelementptr inbounds [4 x i8], ptr %i.cyl, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i754
  %i.dbb = getelementptr inbounds [4 x i8], ptr %i.cyh, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i754
  %i.dbc = load i32, ptr %i.dbb, align 4, !tbaa !24
  store i32 %i.dbc, ptr %i.dba, align 4, !tbaa !24
  %i.dbd = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i754, 1 ; 2 uses
  %i.dbe = getelementptr inbounds [4 x i8], ptr %i.cyl, i64 %i.dbd
  %i.dbf = getelementptr inbounds [4 x i8], ptr %i.cyh, i64 %i.dbd
  %i.dbg = load i32, ptr %i.dbf, align 4, !tbaa !24
  store i32 %i.dbg, ptr %i.dbe, align 4, !tbaa !24
  %i.dbh = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i754, 2 ; 2 uses
  %i.dbi = getelementptr inbounds [4 x i8], ptr %i.cyl, i64 %i.dbh
  %i.dbj = getelementptr inbounds [4 x i8], ptr %i.cyh, i64 %i.dbh
  %i.dbk = load i32, ptr %i.dbj, align 4, !tbaa !24
  store i32 %i.dbk, ptr %i.dbi, align 4, !tbaa !24
  %i.dbl = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i754, 3 ; 2 uses
  %i.dbm = getelementptr inbounds [4 x i8], ptr %i.cyl, i64 %i.dbl
  %i.dbn = getelementptr inbounds [4 x i8], ptr %i.cyh, i64 %i.dbl
  %i.dbo = load i32, ptr %i.dbn, align 4, !tbaa !24
  store i32 %i.dbo, ptr %i.dbm, align 4, !tbaa !24
  %i.dbp = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i754, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i755.3 = icmp eq i64 %i.dbp, %i.cyg
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i755.3, label %.loopexit2803, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753, !llvm.loop !766

.lr.ph.i.i.i.i.i.i.i.i.i.i.i756:                  ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i751, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i756
  %.021.i.i.i.i.i.i.i.i.i.i.i757 = phi i64 [ %i.dbt, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i756 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i750, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i751 ] ; 3 uses
  %i.dbq = getelementptr inbounds [4 x i8], ptr %i.cyl, i64 %.021.i.i.i.i.i.i.i.i.i.i.i757
  %i.dbr = getelementptr inbounds [4 x i8], ptr %i.cyh, i64 %.021.i.i.i.i.i.i.i.i.i.i.i757
  %i.dbs = load <2 x i64>, ptr %i.dbr, align 1, !tbaa !22
  store <2 x i64> %i.dbs, ptr %i.dbq, align 16, !tbaa !22
  %i.dbt = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i757, 4 ; 2 uses
  %i.dbu = icmp slt i64 %i.dbt, %i.cyv
  br i1 %i.dbu, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i756, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i752, !llvm.loop !620

.loopexit2803:                                    ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753, %middle.block3382, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i752
  %i.dbv = load ptr, ptr %1, align 8, !tbaa !89, !noalias !861 ; 2 uses
  %i.dbw = ptrtoaddr ptr %i.dbv to i64            ; 2 uses
  %i.dbx = load i64, ptr %i.a, align 8, !tbaa !90, !noalias !861 ; 9 uses
  %.idx2783 = shl i64 %i.dbx, 3                   ; 3 uses
  %i.dby = getelementptr inbounds i8, ptr %i.dbv, i64 %.idx2783 ; 13 uses
  %i.dbz = load ptr, ptr %62, align 8, !tbaa !26, !noalias !862 ; 2 uses
  %i.dca = ptrtoaddr ptr %i.dbz to i64            ; 2 uses
  %i.dcb = getelementptr [4 x i8], ptr %i.dbz, i64 %i.cyi
  %i.dcc = getelementptr [4 x i8], ptr %i.dcb, i64 %i.cyg ; 14 uses
  %i.dcd = ptrtoint ptr %i.dcc to i64             ; 2 uses
  %i.dce = and i64 %i.dcd, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i767 = icmp eq i64 %i.dce, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i767, label %bb.eb, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i768

bb.eb:                                            ; preds = %.loopexit2803
  %i.dcf = lshr exact i64 %i.dcd, 2
  %i.dcg = sub nsw i64 0, %i.dcf
  %i.dch = and i64 %i.dcg, 3
  %i.dci = call i64 @llvm.smin.i64(i64 %i.dch, i64 %i.dbx)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i768

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i768: ; preds = %bb.eb, %.loopexit2803
  %.0.i.i.i.i.i.i.i.i.i.i.i.i769 = phi i64 [ %i.dci, %bb.eb ], [ %i.dbx, %.loopexit2803 ] ; 11 uses
  %i.dcj = sub nsw i64 %i.dbx, %.0.i.i.i.i.i.i.i.i.i.i.i.i769 ; 2 uses
  %i.dck = sdiv i64 %i.dcj, 4
  %i.dcl = shl nsw i64 %i.dck, 2                  ; 2 uses
  %i.dcm = add nsw i64 %i.dcl, %.0.i.i.i.i.i.i.i.i.i.i.i.i769 ; 6 uses
  %i.dcn = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i769, 0
  br i1 %i.dcn, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i770

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.preheader:      ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i768
  %min.iters.check3388 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i769, 20
  br i1 %min.iters.check3388, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.preheader3763, label %vector.memcheck3389

vector.memcheck3389:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.preheader
  %i.dco = add i64 %i.cyg, %i.cyi
  %i.dcp = shl i64 %i.dco, 2
  %i.dcq = add i64 %i.dcp, %i.dca
  %i.dcr = add i64 %.idx2783, %i.dbw
  %i.dcs = sub i64 %i.dcr, %i.dcq
  %diff.check3390 = icmp ugt i64 %i.dcs, -32
  br i1 %diff.check3390, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.preheader3763, label %vector.ph3391

vector.ph3391:                                    ; preds = %vector.memcheck3389
  %n.vec3392 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i769, 9223372036854775800 ; 3 uses
  br label %vector.body3393

vector.body3393:                                  ; preds = %vector.body3393, %vector.ph3391
  %index3394 = phi i64 [ 0, %vector.ph3391 ], [ %index.next3397, %vector.body3393 ] ; 3 uses
  %i.dct = getelementptr inbounds nuw [4 x i8], ptr %i.dcc, i64 %index3394 ; 2 uses
  %i.dcu = getelementptr inbounds nuw [4 x i8], ptr %i.dby, i64 %index3394 ; 2 uses
  %i.dcv = getelementptr inbounds nuw i8, ptr %i.dcu, i64 16
  %wide.load3395 = load <4 x i32>, ptr %i.dcu, align 4, !tbaa !24
  %wide.load3396 = load <4 x i32>, ptr %i.dcv, align 4, !tbaa !24
  %i.dcw = getelementptr inbounds nuw i8, ptr %i.dct, i64 16
  store <4 x i32> %wide.load3395, ptr %i.dct, align 4, !tbaa !24
  store <4 x i32> %wide.load3396, ptr %i.dcw, align 4, !tbaa !24
  %index.next3397 = add nuw i64 %index3394, 8     ; 2 uses
  %i.dcx = icmp eq i64 %index.next3397, %n.vec3392
  br i1 %i.dcx, label %middle.block3398, label %vector.body3393, !llvm.loop !771

middle.block3398:                                 ; preds = %vector.body3393
  %cmp.n3399 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i769, %n.vec3392
  br i1 %cmp.n3399, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i770, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.preheader3763

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.preheader3763:  ; preds = %vector.memcheck3389, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.preheader, %middle.block3398
  %.05.i.i.i.i.i.i.i.i.i.i.i.i778.ph = phi i64 [ 0, %vector.memcheck3389 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.preheader ], [ %n.vec3392, %middle.block3398 ] ; 3 uses
  %xtraiter3881 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i769, 3 ; 2 uses
  %lcmp.mod3882.not = icmp eq i64 %xtraiter3881, 0
  br i1 %lcmp.mod3882.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.prol:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.preheader3763, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i778.prol = phi i64 [ %i.ddb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i778.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.preheader3763 ] ; 3 uses
  %prol.iter3883 = phi i64 [ %prol.iter3883.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.preheader3763 ]
  %i.dcy = getelementptr inbounds nuw [4 x i8], ptr %i.dcc, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i778.prol
  %i.dcz = getelementptr inbounds nuw [4 x i8], ptr %i.dby, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i778.prol
  %i.dda = load i32, ptr %i.dcz, align 4, !tbaa !24
  store i32 %i.dda, ptr %i.dcy, align 4, !tbaa !24
  %i.ddb = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i778.prol, 1 ; 2 uses
  %prol.iter3883.next = add i64 %prol.iter3883, 1 ; 2 uses
  %prol.iter3883.cmp.not = icmp eq i64 %prol.iter3883.next, %xtraiter3881
  br i1 %prol.iter3883.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.prol, !llvm.loop !772

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.prol.loopexit:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.preheader3763
  %.05.i.i.i.i.i.i.i.i.i.i.i.i778.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i778.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.preheader3763 ], [ %i.ddb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.prol ]
  %i.ddc = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i778.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i769
  %i.ddd = icmp ugt i64 %i.ddc, -4
  br i1 %i.ddd, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i770, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777
  %.05.i.i.i.i.i.i.i.i.i.i.i.i778 = phi i64 [ %i.ddt, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i778.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.prol.loopexit ] ; 6 uses
  %i.dde = getelementptr inbounds nuw [4 x i8], ptr %i.dcc, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i778
  %i.ddf = getelementptr inbounds nuw [4 x i8], ptr %i.dby, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i778
  %i.ddg = load i32, ptr %i.ddf, align 4, !tbaa !24
  store i32 %i.ddg, ptr %i.dde, align 4, !tbaa !24
  %i.ddh = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i778, 1 ; 2 uses
  %i.ddi = getelementptr inbounds nuw [4 x i8], ptr %i.dcc, i64 %i.ddh
  %i.ddj = getelementptr inbounds nuw [4 x i8], ptr %i.dby, i64 %i.ddh
  %i.ddk = load i32, ptr %i.ddj, align 4, !tbaa !24
  store i32 %i.ddk, ptr %i.ddi, align 4, !tbaa !24
  %i.ddl = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i778, 2 ; 2 uses
  %i.ddm = getelementptr inbounds nuw [4 x i8], ptr %i.dcc, i64 %i.ddl
  %i.ddn = getelementptr inbounds nuw [4 x i8], ptr %i.dby, i64 %i.ddl
  %i.ddo = load i32, ptr %i.ddn, align 4, !tbaa !24
  store i32 %i.ddo, ptr %i.ddm, align 4, !tbaa !24
  %i.ddp = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i778, 3 ; 2 uses
  %i.ddq = getelementptr inbounds nuw [4 x i8], ptr %i.dcc, i64 %i.ddp
  %i.ddr = getelementptr inbounds nuw [4 x i8], ptr %i.dby, i64 %i.ddp
end_hunk_1
begin_hunk_2_@_ZN3igl20massmatrix_intrinsicIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi1ELin1ELi3EEEdEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EENS_14MassMatrixTypeEiRNS1_12SparseMatrixIT1_Li0EiEE:bb.a
  %i.bwe = getelementptr inbounds nuw [4 x i8], ptr %i.bvw, i64 %index2926
  %i.bwf = mul nuw nsw i64 %index2926, 12
  %i.bwg = mul nuw i64 %index2926, 12
  %i.bwh = mul nuw i64 %index2926, 12
  %i.bwi = mul nuw i64 %index2926, 12
  %i.bwj = getelementptr inbounds nuw i8, ptr %i.bju, i64 %i.bwf
  %i.bwk = getelementptr inbounds nuw i8, ptr %i.bju, i64 %i.bwg
  %i.bwl = getelementptr inbounds nuw i8, ptr %i.bwk, i64 12
  %i.bwm = getelementptr inbounds nuw i8, ptr %i.bju, i64 %i.bwh
  %i.bwn = getelementptr inbounds nuw i8, ptr %i.bwm, i64 24
  %i.bwo = getelementptr inbounds nuw i8, ptr %i.bju, i64 %i.bwi
  %i.bwp = getelementptr inbounds nuw i8, ptr %i.bwo, i64 36
  %i.bwq = load i32, ptr %i.bwj, align 4, !tbaa !24, !alias.scope !1193
  %i.bwr = load i32, ptr %i.bwl, align 4, !tbaa !24, !alias.scope !1193
  %i.bws = load i32, ptr %i.bwn, align 4, !tbaa !24, !alias.scope !1193
  %i.bwt = load i32, ptr %i.bwp, align 4, !tbaa !24, !alias.scope !1193
  %i.bwu = insertelement <4 x i32> poison, i32 %i.bwq, i64 0
  %i.bwv = insertelement <4 x i32> %i.bwu, i32 %i.bwr, i64 1
  %i.bww = insertelement <4 x i32> %i.bwv, i32 %i.bws, i64 2
  %i.bwx = insertelement <4 x i32> %i.bww, i32 %i.bwt, i64 3
  store <4 x i32> %i.bwx, ptr %i.bwe, align 4, !tbaa !24, !alias.scope !1194, !noalias !1193
  %index.next2927 = add nuw i64 %index2926, 4     ; 2 uses
  %i.bwy = icmp eq i64 %index.next2927, %n.vec2924
  br i1 %i.bwy, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i591.preheader, label %vector.body2925, !llvm.loop !1056

.lr.ph.i.i.i.i.i.i.i.i.i.i.i591.preheader:        ; preds = %vector.body2925, %vector.memcheck2919, %.unr-lcssa3594
  %.05.i.i.i.i.i.i.i.i.i.i.i592.ph = phi i64 [ 0, %vector.memcheck2919 ], [ 0, %.unr-lcssa3594 ], [ %n.vec2924, %vector.body2925 ] ; 4 uses
  %i.bwz = sub i64 %i.bhn, %.05.i.i.i.i.i.i.i.i.i.i.i592.ph
  %xtraiter3595 = and i64 %i.bwz, 3               ; 2 uses
  %lcmp.mod3596.not = icmp eq i64 %xtraiter3595, 0
  br i1 %lcmp.mod3596.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i591.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i591.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i591.prol:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i591.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i591.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i592.prol = phi i64 [ %i.bxd, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i591.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i592.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i591.preheader ] ; 3 uses
  %prol.iter3597 = phi i64 [ %prol.iter3597.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i591.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i591.preheader ]
  %i.bxa = getelementptr inbounds nuw [4 x i8], ptr %i.bvw, i64 %.05.i.i.i.i.i.i.i.i.i.i.i592.prol
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i593.prol = mul nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i592.prol, 12
  %i.bxb = getelementptr inbounds nuw i8, ptr %i.bju, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i593.prol
  %i.bxc = load i32, ptr %i.bxb, align 4, !tbaa !24
  store i32 %i.bxc, ptr %i.bxa, align 4, !tbaa !24
  %i.bxd = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i592.prol, 1 ; 2 uses
  %prol.iter3597.next = add i64 %prol.iter3597, 1 ; 2 uses
  %prol.iter3597.cmp.not = icmp eq i64 %prol.iter3597.next, %xtraiter3595
  br i1 %prol.iter3597.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i591.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i591.prol, !llvm.loop !1057

.lr.ph.i.i.i.i.i.i.i.i.i.i.i591.prol.loopexit:    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i591.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i591.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.i592.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i592.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i591.preheader ], [ %i.bxd, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i591.prol ]
  %i.bxe = sub i64 %.05.i.i.i.i.i.i.i.i.i.i.i592.ph, %i.bhn
  %i.bxf = icmp ugt i64 %i.bxe, -4
  br i1 %i.bxf, label %.unr-lcssa3598, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i591

.lr.ph.i.i.i.i.i.i.i.i.i.i.i591:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i591.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i591
  %.05.i.i.i.i.i.i.i.i.i.i.i592 = phi i64 [ %i.bxv, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i591 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i592.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i591.prol.loopexit ] ; 6 uses
  %i.bxg = getelementptr inbounds nuw [4 x i8], ptr %i.bvw, i64 %.05.i.i.i.i.i.i.i.i.i.i.i592
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i593 = mul nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i592, 12
  %i.bxh = getelementptr inbounds nuw i8, ptr %i.bju, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i593
  %i.bxi = load i32, ptr %i.bxh, align 4, !tbaa !24
  store i32 %i.bxi, ptr %i.bxg, align 4, !tbaa !24
  %i.bxj = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i592, 1 ; 2 uses
  %i.bxk = getelementptr inbounds nuw [4 x i8], ptr %i.bvw, i64 %i.bxj
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i593.1 = mul nuw nsw i64 %i.bxj, 12
  %i.bxl = getelementptr inbounds nuw i8, ptr %i.bju, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i593.1
  %i.bxm = load i32, ptr %i.bxl, align 4, !tbaa !24
  store i32 %i.bxm, ptr %i.bxk, align 4, !tbaa !24
  %i.bxn = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i592, 2 ; 2 uses
  %i.bxo = getelementptr inbounds nuw [4 x i8], ptr %i.bvw, i64 %i.bxn
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i593.2 = mul nuw nsw i64 %i.bxn, 12
  %i.bxp = getelementptr inbounds nuw i8, ptr %i.bju, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i593.2
  %i.bxq = load i32, ptr %i.bxp, align 4, !tbaa !24
  store i32 %i.bxq, ptr %i.bxo, align 4, !tbaa !24
  %i.bxr = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i592, 3 ; 2 uses
  %i.bxs = getelementptr inbounds nuw [4 x i8], ptr %i.bvw, i64 %i.bxr
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i593.3 = mul nuw nsw i64 %i.bxr, 12
  %i.bxt = getelementptr inbounds nuw i8, ptr %i.bju, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i593.3
  %i.bxu = load i32, ptr %i.bxt, align 4, !tbaa !24
  store i32 %i.bxu, ptr %i.bxs, align 4, !tbaa !24
  %i.bxv = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i592, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i594.3 = icmp eq i64 %i.bxv, %i.bhn
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i594.3, label %.unr-lcssa3598, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i591, !llvm.loop !1058

.unr-lcssa3598:                                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i591, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i591.prol.loopexit
  %.idx2737 = shl i64 %i.bhn, 5                   ; 3 uses
  %i.bxw = getelementptr inbounds nuw i8, ptr %i.bjv, i64 %.idx2737 ; 7 uses
  %min.iters.check2936 = icmp ult i64 %i.bhn, 21
  br i1 %min.iters.check2936, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i601.preheader, label %vector.memcheck2937

vector.memcheck2937:                              ; preds = %.unr-lcssa3598
  %i.bxx = mul i64 %i.bhn, 36
  %i.bxy = getelementptr i8, ptr %i.bjv, i64 %i.bxx
  %i.bxz = getelementptr i8, ptr %i.bhm, i64 %.idx2732
  %bound02938 = icmp ult ptr %i.bxw, %i.bxz
  %bound12939 = icmp ult ptr %i.bnx, %i.bxy
  %found.conflict2940 = and i1 %bound02938, %bound12939
  br i1 %found.conflict2940, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i601.preheader, label %vector.ph2941

vector.ph2941:                                    ; preds = %vector.memcheck2937
  %i.bya = and i64 %i.bhn, 3                      ; 2 uses
  %i.byb = icmp eq i64 %i.bya, 0
  %i.byc = select i1 %i.byb, i64 4, i64 %i.bya
  %n.vec2942 = sub nsw i64 %i.bhn, %i.byc         ; 2 uses
  br label %vector.body2943

vector.body2943:                                  ; preds = %vector.body2943, %vector.ph2941
  %index2944 = phi i64 [ 0, %vector.ph2941 ], [ %index.next2945, %vector.body2943 ] ; 6 uses
  %i.byd = getelementptr inbounds nuw [4 x i8], ptr %i.bxw, i64 %index2944
  %i.bye = mul nuw nsw i64 %index2944, 12
  %i.byf = mul nuw i64 %index2944, 12
  %i.byg = mul nuw i64 %index2944, 12
  %i.byh = mul nuw i64 %index2944, 12
  %i.byi = getelementptr inbounds nuw i8, ptr %i.bnx, i64 %i.bye
  %i.byj = getelementptr inbounds nuw i8, ptr %i.bnx, i64 %i.byf
  %i.byk = getelementptr inbounds nuw i8, ptr %i.byj, i64 12
  %i.byl = getelementptr inbounds nuw i8, ptr %i.bnx, i64 %i.byg
  %i.bym = getelementptr inbounds nuw i8, ptr %i.byl, i64 24
  %i.byn = getelementptr inbounds nuw i8, ptr %i.bnx, i64 %i.byh
  %i.byo = getelementptr inbounds nuw i8, ptr %i.byn, i64 36
  %i.byp = load i32, ptr %i.byi, align 4, !tbaa !24, !alias.scope !1195
  %i.byq = load i32, ptr %i.byk, align 4, !tbaa !24, !alias.scope !1195
  %i.byr = load i32, ptr %i.bym, align 4, !tbaa !24, !alias.scope !1195
  %i.bys = load i32, ptr %i.byo, align 4, !tbaa !24, !alias.scope !1195
  %i.byt = insertelement <4 x i32> poison, i32 %i.byp, i64 0
  %i.byu = insertelement <4 x i32> %i.byt, i32 %i.byq, i64 1
  %i.byv = insertelement <4 x i32> %i.byu, i32 %i.byr, i64 2
  %i.byw = insertelement <4 x i32> %i.byv, i32 %i.bys, i64 3
  store <4 x i32> %i.byw, ptr %i.byd, align 4, !tbaa !24, !alias.scope !1196, !noalias !1195
  %index.next2945 = add nuw i64 %index2944, 4     ; 2 uses
  %i.byx = icmp eq i64 %index.next2945, %n.vec2942
  br i1 %i.byx, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i601.preheader, label %vector.body2943, !llvm.loop !1062

.lr.ph.i.i.i.i.i.i.i.i.i.i.i601.preheader:        ; preds = %vector.body2943, %vector.memcheck2937, %.unr-lcssa3598
  %.05.i.i.i.i.i.i.i.i.i.i.i602.ph = phi i64 [ 0, %vector.memcheck2937 ], [ 0, %.unr-lcssa3598 ], [ %n.vec2942, %vector.body2943 ] ; 4 uses
  %i.byy = sub i64 %i.bhn, %.05.i.i.i.i.i.i.i.i.i.i.i602.ph
  %xtraiter3599 = and i64 %i.byy, 3               ; 2 uses
  %lcmp.mod3600.not = icmp eq i64 %xtraiter3599, 0
  br i1 %lcmp.mod3600.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i601.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i601.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i601.prol:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i601.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i601.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i602.prol = phi i64 [ %i.bzc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i601.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i602.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i601.preheader ] ; 3 uses
  %prol.iter3601 = phi i64 [ %prol.iter3601.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i601.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i601.preheader ]
  %i.byz = getelementptr inbounds nuw [4 x i8], ptr %i.bxw, i64 %.05.i.i.i.i.i.i.i.i.i.i.i602.prol
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i603.prol = mul nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i602.prol, 12
  %i.bza = getelementptr inbounds nuw i8, ptr %i.bnx, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i603.prol
  %i.bzb = load i32, ptr %i.bza, align 4, !tbaa !24
  store i32 %i.bzb, ptr %i.byz, align 4, !tbaa !24
  %i.bzc = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i602.prol, 1 ; 2 uses
  %prol.iter3601.next = add i64 %prol.iter3601, 1 ; 2 uses
  %prol.iter3601.cmp.not = icmp eq i64 %prol.iter3601.next, %xtraiter3599
  br i1 %prol.iter3601.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i601.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i601.prol, !llvm.loop !1063

.lr.ph.i.i.i.i.i.i.i.i.i.i.i601.prol.loopexit:    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i601.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i601.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.i602.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i602.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i601.preheader ], [ %i.bzc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i601.prol ]
  %i.bzd = sub i64 %.05.i.i.i.i.i.i.i.i.i.i.i602.ph, %i.bhn
  %i.bze = icmp ugt i64 %i.bzd, -4
  br i1 %i.bze, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i606, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i601

.lr.ph.i.i.i.i.i.i.i.i.i.i.i601:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i601.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i601
  %.05.i.i.i.i.i.i.i.i.i.i.i602 = phi i64 [ %i.bzu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i601 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i602.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i601.prol.loopexit ] ; 6 uses
  %i.bzf = getelementptr inbounds nuw [4 x i8], ptr %i.bxw, i64 %.05.i.i.i.i.i.i.i.i.i.i.i602
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i603 = mul nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i602, 12
  %i.bzg = getelementptr inbounds nuw i8, ptr %i.bnx, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i603
  %i.bzh = load i32, ptr %i.bzg, align 4, !tbaa !24
  store i32 %i.bzh, ptr %i.bzf, align 4, !tbaa !24
  %i.bzi = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i602, 1 ; 2 uses
  %i.bzj = getelementptr inbounds nuw [4 x i8], ptr %i.bxw, i64 %i.bzi
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i603.1 = mul nuw nsw i64 %i.bzi, 12
  %i.bzk = getelementptr inbounds nuw i8, ptr %i.bnx, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i603.1
  %i.bzl = load i32, ptr %i.bzk, align 4, !tbaa !24
  store i32 %i.bzl, ptr %i.bzj, align 4, !tbaa !24
  %i.bzm = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i602, 2 ; 2 uses
  %i.bzn = getelementptr inbounds nuw [4 x i8], ptr %i.bxw, i64 %i.bzm
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i603.2 = mul nuw nsw i64 %i.bzm, 12
  %i.bzo = getelementptr inbounds nuw i8, ptr %i.bnx, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i603.2
  %i.bzp = load i32, ptr %i.bzo, align 4, !tbaa !24
  store i32 %i.bzp, ptr %i.bzn, align 4, !tbaa !24
  %i.bzq = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i602, 3 ; 2 uses
  %i.bzr = getelementptr inbounds nuw [4 x i8], ptr %i.bxw, i64 %i.bzq
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i603.3 = mul nuw nsw i64 %i.bzq, 12
  %i.bzs = getelementptr inbounds nuw i8, ptr %i.bnx, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i603.3
  %i.bzt = load i32, ptr %i.bzs, align 4, !tbaa !24
  store i32 %i.bzt, ptr %i.bzr, align 4, !tbaa !24
  %i.bzu = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i602, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i604.3 = icmp eq i64 %i.bzu, %i.bhn
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i604.3, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i606, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i601, !llvm.loop !1064

.preheader.i.i.i.i.i.i.i.i.i.i.i.i606:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i601, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i601.prol.loopexit
  %i.bzv = load ptr, ptr %28, align 8, !tbaa !26, !noalias !1197 ; 8 uses
  %min.iters.check2958 = icmp ult i64 %i.bhn, 65
  br i1 %min.iters.check2958, label %scalar.ph2957.preheader, label %vector.scevcheck2948

vector.scevcheck2948:                             ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i606
  %i.bzw = add nsw i64 %i.bhn, -1
  %mul2949 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.bzw, i64 12) ; 2 uses
  %mul.result2950 = extractvalue { i64, i1 } %mul2949, 0
  %mul.overflow2951 = extractvalue { i64, i1 } %mul2949, 1
  %i.bzx = getelementptr i8, ptr %i.bju, i64 %mul.result2950
  %i.bzy = icmp ult ptr %i.bzx, %i.bju
  %i.bzz = or i1 %i.bzy, %mul.overflow2951
  br i1 %i.bzz, label %scalar.ph2957.preheader, label %vector.memcheck2959

vector.memcheck2959:                              ; preds = %vector.scevcheck2948
  %i.caa = shl nuw nsw i64 %i.bhn, 2
  %i.cab = getelementptr i8, ptr %i.bzv, i64 %i.caa
  %i.cac = getelementptr i8, ptr %i.bhm, i64 %.idx2732
  %i.cad = getelementptr i8, ptr %i.cac, i64 -4
  %bound02960 = icmp ult ptr %i.bzv, %i.cad
  %bound12961 = icmp ult ptr %i.bju, %i.cab
  %found.conflict2962 = and i1 %bound02960, %bound12961
  br i1 %found.conflict2962, label %scalar.ph2957.preheader, label %vector.ph2963

vector.ph2963:                                    ; preds = %vector.memcheck2959
  %i.cae = and i64 %i.bhn, 3                      ; 2 uses
  %i.caf = icmp eq i64 %i.cae, 0
  %i.cag = select i1 %i.caf, i64 4, i64 %i.cae
  %n.vec2964 = sub nsw i64 %i.bhn, %i.cag         ; 2 uses
  br label %vector.body2965

vector.body2965:                                  ; preds = %vector.body2965, %vector.ph2963
  %index2966 = phi i64 [ 0, %vector.ph2963 ], [ %index.next2967, %vector.body2965 ] ; 6 uses
  %i.cah = getelementptr [4 x i8], ptr %i.bzv, i64 %index2966
  %i.cai = mul i64 %index2966, 12
  %i.caj = mul i64 %index2966, 12
  %i.cak = mul i64 %index2966, 12
  %i.cal = mul i64 %index2966, 12
  %i.cam = getelementptr i8, ptr %i.bju, i64 %i.cai
  %i.can = getelementptr i8, ptr %i.bju, i64 %i.caj
  %i.cao = getelementptr i8, ptr %i.can, i64 12
  %i.cap = getelementptr i8, ptr %i.bju, i64 %i.cak
  %i.caq = getelementptr i8, ptr %i.cap, i64 24
  %i.car = getelementptr i8, ptr %i.bju, i64 %i.cal
  %i.cas = getelementptr i8, ptr %i.car, i64 36
  %i.cat = load i32, ptr %i.cam, align 4, !tbaa !24, !alias.scope !1198, !noalias !1199
  %i.cau = load i32, ptr %i.cao, align 4, !tbaa !24, !alias.scope !1198, !noalias !1199
  %i.cav = load i32, ptr %i.caq, align 4, !tbaa !24, !alias.scope !1198, !noalias !1199
  %i.caw = load i32, ptr %i.cas, align 4, !tbaa !24, !alias.scope !1198, !noalias !1199
  %i.cax = insertelement <4 x i32> poison, i32 %i.cat, i64 0
  %i.cay = insertelement <4 x i32> %i.cax, i32 %i.cau, i64 1
  %i.caz = insertelement <4 x i32> %i.cay, i32 %i.cav, i64 2
  %i.cba = insertelement <4 x i32> %i.caz, i32 %i.caw, i64 3
  store <4 x i32> %i.cba, ptr %i.cah, align 4, !tbaa !24, !alias.scope !1200, !noalias !1201
  %index.next2967 = add nuw i64 %index2966, 4     ; 2 uses
  %i.cbb = icmp eq i64 %index.next2967, %n.vec2964
  br i1 %i.cbb, label %scalar.ph2957.preheader, label %vector.body2965, !llvm.loop !1072

scalar.ph2957.preheader:                          ; preds = %vector.body2965, %vector.memcheck2959, %vector.scevcheck2948, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i606
  %.09.i.i.i.i.i.i.i.i.i.i.i.i607.ph = phi i64 [ 0, %vector.memcheck2959 ], [ 0, %vector.scevcheck2948 ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i606 ], [ %n.vec2964, %vector.body2965 ] ; 4 uses
  %i.cbc = sub i64 %i.bhn, %.09.i.i.i.i.i.i.i.i.i.i.i.i607.ph
  %xtraiter3602 = and i64 %i.cbc, 3               ; 2 uses
  %lcmp.mod3603.not = icmp eq i64 %xtraiter3602, 0
  br i1 %lcmp.mod3603.not, label %scalar.ph2957.prol.loopexit, label %scalar.ph2957.prol

scalar.ph2957.prol:                               ; preds = %scalar.ph2957.preheader, %scalar.ph2957.prol
  %.09.i.i.i.i.i.i.i.i.i.i.i.i607.prol = phi i64 [ %i.cbg, %scalar.ph2957.prol ], [ %.09.i.i.i.i.i.i.i.i.i.i.i.i607.ph, %scalar.ph2957.preheader ] ; 3 uses
  %prol.iter3604 = phi i64 [ %prol.iter3604.next, %scalar.ph2957.prol ], [ 0, %scalar.ph2957.preheader ]
  %i.cbd = getelementptr [4 x i8], ptr %i.bzv, i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i607.prol
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i608.prol = mul i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i607.prol, 12
  %i.cbe = getelementptr i8, ptr %i.bju, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i608.prol
  %i.cbf = load i32, ptr %i.cbe, align 4, !tbaa !24, !noalias !1199
  store i32 %i.cbf, ptr %i.cbd, align 4, !tbaa !24, !noalias !1199
  %i.cbg = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i607.prol, 1 ; 2 uses
  %prol.iter3604.next = add i64 %prol.iter3604, 1 ; 2 uses
  %prol.iter3604.cmp.not = icmp eq i64 %prol.iter3604.next, %xtraiter3602
  br i1 %prol.iter3604.cmp.not, label %scalar.ph2957.prol.loopexit, label %scalar.ph2957.prol, !llvm.loop !1073

scalar.ph2957.prol.loopexit:                      ; preds = %scalar.ph2957.prol, %scalar.ph2957.preheader
  %.09.i.i.i.i.i.i.i.i.i.i.i.i607.unr = phi i64 [ %.09.i.i.i.i.i.i.i.i.i.i.i.i607.ph, %scalar.ph2957.preheader ], [ %i.cbg, %scalar.ph2957.prol ]
  %i.cbh = sub i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i607.ph, %i.bhn
  %i.cbi = icmp ugt i64 %i.cbh, -4
  br i1 %i.cbi, label %.unr-lcssa3605, label %scalar.ph2957

scalar.ph2957:                                    ; preds = %scalar.ph2957.prol.loopexit, %scalar.ph2957
  %.09.i.i.i.i.i.i.i.i.i.i.i.i607 = phi i64 [ %i.cby, %scalar.ph2957 ], [ %.09.i.i.i.i.i.i.i.i.i.i.i.i607.unr, %scalar.ph2957.prol.loopexit ] ; 6 uses
  %i.cbj = getelementptr [4 x i8], ptr %i.bzv, i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i607
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i608 = mul i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i607, 12
  %i.cbk = getelementptr i8, ptr %i.bju, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i608
  %i.cbl = load i32, ptr %i.cbk, align 4, !tbaa !24, !noalias !1199
  store i32 %i.cbl, ptr %i.cbj, align 4, !tbaa !24, !noalias !1199
  %i.cbm = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i607, 1 ; 2 uses
  %i.cbn = getelementptr [4 x i8], ptr %i.bzv, i64 %i.cbm
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i608.1 = mul i64 %i.cbm, 12
  %i.cbo = getelementptr i8, ptr %i.bju, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i608.1
  %i.cbp = load i32, ptr %i.cbo, align 4, !tbaa !24, !noalias !1199
  store i32 %i.cbp, ptr %i.cbn, align 4, !tbaa !24, !noalias !1199
  %i.cbq = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i607, 2 ; 2 uses
  %i.cbr = getelementptr [4 x i8], ptr %i.bzv, i64 %i.cbq
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i608.2 = mul i64 %i.cbq, 12
  %i.cbs = getelementptr i8, ptr %i.bju, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i608.2
  %i.cbt = load i32, ptr %i.cbs, align 4, !tbaa !24, !noalias !1199
  store i32 %i.cbt, ptr %i.cbr, align 4, !tbaa !24, !noalias !1199
  %i.cbu = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i607, 3 ; 2 uses
  %i.cbv = getelementptr [4 x i8], ptr %i.bzv, i64 %i.cbu
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i608.3 = mul i64 %i.cbu, 12
  %i.cbw = getelementptr i8, ptr %i.bju, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i608.3
  %i.cbx = load i32, ptr %i.cbw, align 4, !tbaa !24, !noalias !1199
  store i32 %i.cbx, ptr %i.cbv, align 4, !tbaa !24, !noalias !1199
  %i.cby = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i607, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i609.3 = icmp eq i64 %i.cby, %i.bhn
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i609.3, label %.unr-lcssa3605, label %scalar.ph2957, !llvm.loop !1074

.unr-lcssa3605:                                   ; preds = %scalar.ph2957, %scalar.ph2957.prol.loopexit
  %i.cbz = load ptr, ptr %28, align 8, !tbaa !26, !noalias !1202 ; 16 uses
  %i.cca = getelementptr inbounds nuw [4 x i8], ptr %i.cbz, i64 %i.bhn ; 7 uses
  %min.iters.check2976 = icmp ult i64 %i.bhn, 17
  br i1 %min.iters.check2976, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i616.preheader, label %vector.memcheck2977

vector.memcheck2977:                              ; preds = %.unr-lcssa3605
  %i.ccb = getelementptr i8, ptr %i.cbz, i64 %.idx
  %i.ccc = getelementptr i8, ptr %i.bhm, i64 %.idx2732
  %i.ccd = getelementptr i8, ptr %i.ccc, i64 -8
  %bound02978 = icmp ult ptr %i.cca, %i.ccd
  %bound12979 = icmp ult ptr %i.bhm, %i.ccb
  %found.conflict2980 = and i1 %bound02978, %bound12979
  br i1 %found.conflict2980, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i616.preheader, label %vector.ph2981

vector.ph2981:                                    ; preds = %vector.memcheck2977
  %i.cce = and i64 %i.bhn, 3                      ; 2 uses
  %i.ccf = icmp eq i64 %i.cce, 0
  %i.ccg = select i1 %i.ccf, i64 4, i64 %i.cce
  %n.vec2982 = sub nsw i64 %i.bhn, %i.ccg         ; 2 uses
  br label %vector.body2983

vector.body2983:                                  ; preds = %vector.body2983, %vector.ph2981
  %index2984 = phi i64 [ 0, %vector.ph2981 ], [ %index.next2985, %vector.body2983 ] ; 6 uses
  %i.cch = getelementptr inbounds nuw [4 x i8], ptr %i.cca, i64 %index2984
  %i.cci = mul nuw nsw i64 %index2984, 12
  %i.ccj = mul nuw i64 %index2984, 12
  %i.cck = mul nuw i64 %index2984, 12
  %i.ccl = mul nuw i64 %index2984, 12
  %i.ccm = getelementptr inbounds nuw i8, ptr %i.bhm, i64 %i.cci
  %i.ccn = getelementptr inbounds nuw i8, ptr %i.bhm, i64 %i.ccj
  %i.cco = getelementptr inbounds nuw i8, ptr %i.ccn, i64 12
  %i.ccp = getelementptr inbounds nuw i8, ptr %i.bhm, i64 %i.cck
  %i.ccq = getelementptr inbounds nuw i8, ptr %i.ccp, i64 24
  %i.ccr = getelementptr inbounds nuw i8, ptr %i.bhm, i64 %i.ccl
  %i.ccs = getelementptr inbounds nuw i8, ptr %i.ccr, i64 36
  %i.cct = load i32, ptr %i.ccm, align 4, !tbaa !24, !alias.scope !1203
  %i.ccu = load i32, ptr %i.cco, align 4, !tbaa !24, !alias.scope !1203
  %i.ccv = load i32, ptr %i.ccq, align 4, !tbaa !24, !alias.scope !1203
  %i.ccw = load i32, ptr %i.ccs, align 4, !tbaa !24, !alias.scope !1203
  %i.ccx = insertelement <4 x i32> poison, i32 %i.cct, i64 0
  %i.ccy = insertelement <4 x i32> %i.ccx, i32 %i.ccu, i64 1
  %i.ccz = insertelement <4 x i32> %i.ccy, i32 %i.ccv, i64 2
  %i.cda = insertelement <4 x i32> %i.ccz, i32 %i.ccw, i64 3
  store <4 x i32> %i.cda, ptr %i.cch, align 4, !tbaa !24, !alias.scope !1204, !noalias !1203
  %index.next2985 = add nuw i64 %index2984, 4     ; 2 uses
  %i.cdb = icmp eq i64 %index.next2985, %n.vec2982
  br i1 %i.cdb, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i616.preheader, label %vector.body2983, !llvm.loop !1080

.lr.ph.i.i.i.i.i.i.i.i.i.i.i616.preheader:        ; preds = %vector.body2983, %vector.memcheck2977, %.unr-lcssa3605
  %.05.i.i.i.i.i.i.i.i.i.i.i617.ph = phi i64 [ 0, %vector.memcheck2977 ], [ 0, %.unr-lcssa3605 ], [ %n.vec2982, %vector.body2983 ] ; 4 uses
  %i.cdc = sub i64 %i.bhn, %.05.i.i.i.i.i.i.i.i.i.i.i617.ph
  %xtraiter3606 = and i64 %i.cdc, 3               ; 2 uses
  %lcmp.mod3607.not = icmp eq i64 %xtraiter3606, 0
  br i1 %lcmp.mod3607.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i616.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i616.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i616.prol:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i616.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i616.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i617.prol = phi i64 [ %i.cdg, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i616.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i617.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i616.preheader ] ; 3 uses
  %prol.iter3608 = phi i64 [ %prol.iter3608.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i616.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i616.preheader ]
  %i.cdd = getelementptr inbounds nuw [4 x i8], ptr %i.cca, i64 %.05.i.i.i.i.i.i.i.i.i.i.i617.prol
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i618.prol = mul nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i617.prol, 12
  %i.cde = getelementptr inbounds nuw i8, ptr %i.bhm, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i618.prol
  %i.cdf = load i32, ptr %i.cde, align 4, !tbaa !24
  store i32 %i.cdf, ptr %i.cdd, align 4, !tbaa !24
  %i.cdg = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i617.prol, 1 ; 2 uses
  %prol.iter3608.next = add i64 %prol.iter3608, 1 ; 2 uses
  %prol.iter3608.cmp.not = icmp eq i64 %prol.iter3608.next, %xtraiter3606
  br i1 %prol.iter3608.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i616.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i616.prol, !llvm.loop !1081

.lr.ph.i.i.i.i.i.i.i.i.i.i.i616.prol.loopexit:    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i616.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i616.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.i617.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i617.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i616.preheader ], [ %i.cdg, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i616.prol ]
  %i.cdh = sub i64 %.05.i.i.i.i.i.i.i.i.i.i.i617.ph, %i.bhn
  %i.cdi = icmp ugt i64 %i.cdh, -4
  br i1 %i.cdi, label %.unr-lcssa3609, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i616

.lr.ph.i.i.i.i.i.i.i.i.i.i.i616:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i616.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i616
  %.05.i.i.i.i.i.i.i.i.i.i.i617 = phi i64 [ %i.cdy, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i616 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i617.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i616.prol.loopexit ] ; 6 uses
  %i.cdj = getelementptr inbounds nuw [4 x i8], ptr %i.cca, i64 %.05.i.i.i.i.i.i.i.i.i.i.i617
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i618 = mul nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i617, 12
  %i.cdk = getelementptr inbounds nuw i8, ptr %i.bhm, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i618
  %i.cdl = load i32, ptr %i.cdk, align 4, !tbaa !24
  store i32 %i.cdl, ptr %i.cdj, align 4, !tbaa !24
  %i.cdm = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i617, 1 ; 2 uses
  %i.cdn = getelementptr inbounds nuw [4 x i8], ptr %i.cca, i64 %i.cdm
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i618.1 = mul nuw nsw i64 %i.cdm, 12
  %i.cdo = getelementptr inbounds nuw i8, ptr %i.bhm, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i618.1
  %i.cdp = load i32, ptr %i.cdo, align 4, !tbaa !24
  store i32 %i.cdp, ptr %i.cdn, align 4, !tbaa !24
  %i.cdq = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i617, 2 ; 2 uses
  %i.cdr = getelementptr inbounds nuw [4 x i8], ptr %i.cca, i64 %i.cdq
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i618.2 = mul nuw nsw i64 %i.cdq, 12
  %i.cds = getelementptr inbounds nuw i8, ptr %i.bhm, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i618.2
  %i.cdt = load i32, ptr %i.cds, align 4, !tbaa !24
  store i32 %i.cdt, ptr %i.cdr, align 4, !tbaa !24
  %i.cdu = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i617, 3 ; 2 uses
  %i.cdv = getelementptr inbounds nuw [4 x i8], ptr %i.cca, i64 %i.cdu
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i618.3 = mul nuw nsw i64 %i.cdu, 12
  %i.cdw = getelementptr inbounds nuw i8, ptr %i.bhm, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i618.3
  %i.cdx = load i32, ptr %i.cdw, align 4, !tbaa !24
  store i32 %i.cdx, ptr %i.cdv, align 4, !tbaa !24
  %i.cdy = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i617, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i619.3 = icmp eq i64 %i.cdy, %i.bhn
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i619.3, label %.unr-lcssa3609, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i616, !llvm.loop !1082
end_hunk_2
begin_hunk_3_@_ZN3igl20massmatrix_intrinsicIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi0ELin1ELi3EEEdEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EENS_14MassMatrixTypeEiRNS1_12SparseMatrixIT1_Li0EiEE:bb.a
  store ptr %23, ptr %i.axy, align 8, !tbaa !77
  %i.axz = getelementptr inbounds nuw i8, ptr %25, i64 16
  store ptr %26, ptr %i.axz, align 8, !tbaa !79
  %i.aya = getelementptr inbounds nuw i8, ptr %25, i64 24
  store ptr %78, ptr %i.aya, align 8, !tbaa !81
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS4_INS5_IdLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSE_(ptr noundef nonnull align 8 dereferenceable(32) %25)
          to label %bb.cv unwind label %bb.dd

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #14
  %i.ayb = load ptr, ptr %75, align 8, !tbaa !59
  call void @free(ptr noundef %i.ayb) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #14
  call void @free(ptr noundef %.0.i.i2740) #14
  %i.ayc = load ptr, ptr %71, align 8, !tbaa !59
  call void @free(ptr noundef %i.ayc) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #14
  %i.ayd = load ptr, ptr %70, align 8, !tbaa !59
  call void @free(ptr noundef %i.ayd) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #14
  br label %_ZN5Eigen9DenseBaseINS_12ArrayWrapperINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEdVERKd.exit

bb.cw:                                            ; preds = %bb.s
  %i.aye = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #14
  br label %bb.ej

bb.cx:                                            ; preds = %bb.t
  %i.ayf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #14
  br label %bb.ej

bb.cy:                                            ; preds = %bb.u
  %i.ayg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #14
  br label %bb.ej

bb.cz:                                            ; preds = %.thread2738
  %i.ayh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #14
  br label %bb.df

.body350:                                         ; preds = %bb.ab, %thread-pre-split.i.i.i.i.i.i.i353
  %i.ayi = landingpad { ptr, i32 }
          cleanup
  %i.ayj = load ptr, ptr %73, align 8, !tbaa !59
  call void @free(ptr noundef %i.ayj) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #14
  br label %bb.de

bb.da:                                            ; preds = %.invoke
  %i.ayk = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.db:                                            ; preds = %.thread2778
  %i.ayl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #14
  br label %.body403

bb.dc:                                            ; preds = %bb.ct
  %i.aym = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #14
  br label %.body403

bb.dd:                                            ; preds = %bb.cu
  %i.ayn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #14
  br label %.body403

.body403:                                         ; preds = %bb.db, %bb.dc, %bb.dd, %bb.ai
  %.pn300.pn.pn = phi { ptr, i32 } [ %i.yp, %bb.ai ], [ %i.ayn, %bb.dd ], [ %i.ayl, %bb.db ], [ %i.aym, %bb.dc ]
  %i.ayo = load ptr, ptr %75, align 8, !tbaa !59
  call void @free(ptr noundef %i.ayo) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #14
  call void @free(ptr noundef %.0.i.i2740) #14
  br label %bb.de

bb.de:                                            ; preds = %bb.da, %.body403, %.body350
  %.pn300.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ayi, %.body350 ], [ %.pn300.pn.pn, %.body403 ], [ %i.ayk, %bb.da ]
  %i.ayp = load ptr, ptr %71, align 8, !tbaa !59
  call void @free(ptr noundef %i.ayp) #14
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.cz
  %.pn300.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn300.pn.pn.pn.pn.pn, %bb.de ], [ %i.ayh, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #14
  br label %.body

.body:                                            ; preds = %bb.x, %bb.df
  %.pn300.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn300.pn.pn.pn.pn.pn.pn, %bb.df ], [ %i.ia, %bb.x ]
  %i.ayq = load ptr, ptr %70, align 8, !tbaa !59
  call void @free(ptr noundef %i.ayq) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #14
  br label %bb.ej

bb.dg:                                            ; preds = %bb.b
  %sext = mul i64 %i.b, 38654705664
  %i.ayr = ashr exact i64 %sext, 32               ; 3 uses
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %61, i64 noundef %i.ayr, i64 noundef 1)
          to label %bb.dh unwind label %bb.ef

bb.dh:                                            ; preds = %bb.dg
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %62, i64 noundef %i.ayr, i64 noundef 1)
          to label %bb.di unwind label %bb.ef

bb.di:                                            ; preds = %bb.dh
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %63, i64 noundef %i.ayr, i64 noundef 1)
          to label %bb.dj unwind label %bb.ef

bb.dj:                                            ; preds = %bb.di
  %i.ays = load ptr, ptr %1, align 8, !tbaa !99, !noalias !1558
  %i.ayt = load i64, ptr %i.a, align 8, !tbaa !100, !noalias !1558 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #14, !noalias !1559
  call void @llvm.experimental.noalias.scope.decl(metadata !1560)
  %i.ayu = load ptr, ptr %61, align 8, !tbaa !26, !noalias !1561 ; 2 uses
  %i.ayv = getelementptr inbounds nuw i8, ptr %61, i64 8
  %i.ayw = load i64, ptr %i.ayv, align 8, !tbaa !27, !noalias !1561 ; 2 uses
  store ptr %i.ayu, ptr %22, align 8, !tbaa !30, !alias.scope !1560, !noalias !1559
  %i.ayx = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 %i.ayt, ptr %i.ayx, align 8, !tbaa !31, !alias.scope !1560, !noalias !1559
  %i.ayy = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i64 1, ptr %i.ayy, align 8, !tbaa !31, !alias.scope !1560, !noalias !1559
  %i.ayz = getelementptr inbounds nuw i8, ptr %22, i64 24
  store ptr %61, ptr %i.ayz, align 8, !tbaa !33, !alias.scope !1560, !noalias !1559
  %i.aza = getelementptr inbounds nuw i8, ptr %22, i64 32
  %i.azb = getelementptr inbounds nuw i8, ptr %22, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aza, i8 0, i64 16, i1 false), !noalias !1559
  store i64 %i.ayw, ptr %i.azb, align 8, !tbaa !36, !alias.scope !1560, !noalias !1559
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #14, !noalias !1559
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #14, !noalias !1559
  store ptr %i.ays, ptr %18, align 8, !tbaa !102, !noalias !1559
  %i.azc = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 %i.ayt, ptr %i.azc, align 8, !tbaa !31, !noalias !1559
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #14, !noalias !1559
  store ptr %i.ayu, ptr %19, align 8, !tbaa !41, !noalias !1559
  %i.azd = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i64 %i.ayw, ptr %i.azd, align 8, !tbaa !31, !noalias !1559
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #14, !noalias !1559
  store ptr %19, ptr %20, align 8, !tbaa !43, !noalias !1559
  %i.aze = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %18, ptr %i.aze, align 8, !tbaa !1518, !noalias !1559
  %i.azf = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr %21, ptr %i.azf, align 8, !tbaa !46, !noalias !1559
  %i.azg = getelementptr inbounds nuw i8, ptr %20, i64 24
  store ptr %22, ptr %i.azg, align 8, !tbaa !48, !noalias !1559
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS4_IKNS5_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSF_(ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %bb.dk unwind label %bb.ef

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #14, !noalias !1559
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #14, !noalias !1559
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #14, !noalias !1559
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #14, !noalias !1559
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #14, !noalias !1559
  %i.azh = load ptr, ptr %1, align 8, !tbaa !99, !noalias !1562 ; 2 uses
  %i.azi = ptrtoaddr ptr %i.azh to i64            ; 2 uses
  %i.azj = load i64, ptr %i.a, align 8, !tbaa !100, !noalias !1562 ; 13 uses
  %i.azk = getelementptr inbounds [4 x i8], ptr %i.azh, i64 %i.azj ; 13 uses
  %i.azl = load ptr, ptr %61, align 8, !tbaa !26, !noalias !1563 ; 2 uses
  %i.azm = ptrtoaddr ptr %i.azl to i64            ; 2 uses
  %i.azn = getelementptr inbounds [4 x i8], ptr %i.azl, i64 %i.ayt ; 14 uses
  %i.azo = ptrtoint ptr %i.azn to i64             ; 2 uses
  %i.azp = and i64 %i.azo, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.azp, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.dl, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i

bb.dl:                                            ; preds = %bb.dk
  %i.azq = lshr exact i64 %i.azo, 2
  %i.azr = sub nsw i64 0, %i.azq
  %i.azs = and i64 %i.azr, 3
  %i.azt = call i64 @llvm.smin.i64(i64 %i.azs, i64 %i.azj)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dl, %bb.dk
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.azt, %bb.dl ], [ %i.azj, %bb.dk ] ; 11 uses
  %i.azu = sub nsw i64 %i.azj, %.0.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.azv = sdiv i64 %i.azu, 4
  %i.azw = shl nsw i64 %i.azv, 2                  ; 2 uses
  %i.azx = add nsw i64 %i.azw, %.0.i.i.i.i.i.i.i.i.i.i.i.i ; 6 uses
  %i.azy = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.azy, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 20
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader3793, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.azz = shl nsw i64 %i.ayt, 2
  %i.baa = shl i64 %i.azj, 2
  %i.bab = add i64 %i.azz, %i.azm
  %i.bac = add i64 %i.baa, %i.azi
  %i.bad = sub i64 %i.bac, %i.bab
  %diff.check = icmp ugt i64 %i.bad, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader3793, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bae = getelementptr inbounds nuw [4 x i8], ptr %i.azn, i64 %index ; 2 uses
  %i.baf = getelementptr inbounds nuw [4 x i8], ptr %i.azk, i64 %index ; 2 uses
  %i.bag = getelementptr inbounds nuw i8, ptr %i.baf, i64 16
  %wide.load = load <4 x i32>, ptr %i.baf, align 4, !tbaa !24
  %wide.load2920 = load <4 x i32>, ptr %i.bag, align 4, !tbaa !24
  %i.bah = getelementptr inbounds nuw i8, ptr %i.bae, i64 16
  store <4 x i32> %wide.load, ptr %i.bae, align 4, !tbaa !24
  store <4 x i32> %wide.load2920, ptr %i.bah, align 4, !tbaa !24
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bai = icmp eq i64 %index.next, %n.vec
  br i1 %i.bai, label %middle.block, label %vector.body, !llvm.loop !1349

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader3793

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader3793:     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader3793, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.bam, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader3793 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader3793 ]
  %i.baj = getelementptr inbounds nuw [4 x i8], ptr %i.azn, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.bak = getelementptr inbounds nuw [4 x i8], ptr %i.azk, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.bal = load i32, ptr %i.bak, align 4, !tbaa !24
  store i32 %i.bal, ptr %i.baj, align 4, !tbaa !24
  %i.bam = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !1350

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader3793
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader3793 ], [ %i.bam, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.ban = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bao = icmp ugt i64 %i.ban, -4
  br i1 %i.bao, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bbe, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.bap = getelementptr inbounds nuw [4 x i8], ptr %i.azn, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i
  %i.baq = getelementptr inbounds nuw [4 x i8], ptr %i.azk, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bar = load i32, ptr %i.baq, align 4, !tbaa !24
  store i32 %i.bar, ptr %i.bap, align 4, !tbaa !24
  %i.bas = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bat = getelementptr inbounds nuw [4 x i8], ptr %i.azn, i64 %i.bas
  %i.bau = getelementptr inbounds nuw [4 x i8], ptr %i.azk, i64 %i.bas
  %i.bav = load i32, ptr %i.bau, align 4, !tbaa !24
  store i32 %i.bav, ptr %i.bat, align 4, !tbaa !24
  %i.baw = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.bax = getelementptr inbounds nuw [4 x i8], ptr %i.azn, i64 %i.baw
  %i.bay = getelementptr inbounds nuw [4 x i8], ptr %i.azk, i64 %i.baw
  %i.baz = load i32, ptr %i.bay, align 4, !tbaa !24
  store i32 %i.baz, ptr %i.bax, align 4, !tbaa !24
  %i.bba = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.bbb = getelementptr inbounds nuw [4 x i8], ptr %i.azn, i64 %i.bba
  %i.bbc = getelementptr inbounds nuw [4 x i8], ptr %i.azk, i64 %i.bba
  %i.bbd = load i32, ptr %i.bbc, align 4, !tbaa !24
  store i32 %i.bbd, ptr %i.bbb, align 4, !tbaa !24
  %i.bbe = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.bbe, %.0.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1351

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.bbf = icmp sgt i64 %i.azu, 3
  br i1 %i.bbf, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i493, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i493, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.bbg = icmp slt i64 %i.azx, %i.azj
  br i1 %i.bbg, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader, label %.loopexit2817

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader:       ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.bbh = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, %i.azw
  %i.bbi = sub i64 %i.azj, %i.bbh                 ; 3 uses
  %min.iters.check2924 = icmp ult i64 %i.bbi, 20
  br i1 %min.iters.check2924, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader3792, label %vector.memcheck2925

vector.memcheck2925:                              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.bbj = shl nsw i64 %i.ayt, 2
  %i.bbk = shl i64 %i.azj, 2
  %i.bbl = add i64 %i.bbj, %i.azm
  %i.bbm = add i64 %i.bbk, %i.azi
  %i.bbn = sub i64 %i.bbm, %i.bbl
  %diff.check2926 = icmp ugt i64 %i.bbn, -32
  br i1 %diff.check2926, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader3792, label %vector.ph2927

vector.ph2927:                                    ; preds = %vector.memcheck2925
  %n.vec2928 = and i64 %i.bbi, -8                 ; 3 uses
  %i.bbo = add i64 %i.azx, %n.vec2928
  br label %vector.body2929

vector.body2929:                                  ; preds = %vector.body2929, %vector.ph2927
  %index2930 = phi i64 [ 0, %vector.ph2927 ], [ %index.next2933, %vector.body2929 ] ; 2 uses
  %i.bbp = add i64 %i.azx, %index2930             ; 2 uses
  %i.bbq = getelementptr inbounds [4 x i8], ptr %i.azn, i64 %i.bbp ; 2 uses
  %i.bbr = getelementptr inbounds [4 x i8], ptr %i.azk, i64 %i.bbp ; 2 uses
  %i.bbs = getelementptr inbounds nuw i8, ptr %i.bbr, i64 16
  %wide.load2931 = load <4 x i32>, ptr %i.bbr, align 4, !tbaa !24
  %wide.load2932 = load <4 x i32>, ptr %i.bbs, align 4, !tbaa !24
  %i.bbt = getelementptr inbounds nuw i8, ptr %i.bbq, i64 16
  store <4 x i32> %wide.load2931, ptr %i.bbq, align 4, !tbaa !24
  store <4 x i32> %wide.load2932, ptr %i.bbt, align 4, !tbaa !24
  %index.next2933 = add nuw i64 %index2930, 8     ; 2 uses
  %i.bbu = icmp eq i64 %index.next2933, %n.vec2928
  br i1 %i.bbu, label %middle.block2934, label %vector.body2929, !llvm.loop !1352

middle.block2934:                                 ; preds = %vector.body2929
  %cmp.n2935 = icmp eq i64 %i.bbi, %n.vec2928
  br i1 %cmp.n2935, label %.loopexit2817, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader3792

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader3792:   ; preds = %vector.memcheck2925, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block2934
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.azx, %vector.memcheck2925 ], [ %i.azx, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.bbo, %middle.block2934 ] ; 4 uses
  %i.bbv = sub i64 %i.azj, %.05.i18.i.i.i.i.i.i.i.i.i.i.i.ph
  %xtraiter3794 = and i64 %i.bbv, 3               ; 2 uses
  %lcmp.mod3795.not = icmp eq i64 %xtraiter3794, 0
  br i1 %lcmp.mod3795.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol:            ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader3792, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.bbz, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader3792 ] ; 3 uses
  %prol.iter3796 = phi i64 [ %prol.iter3796.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader3792 ]
  %i.bbw = getelementptr inbounds [4 x i8], ptr %i.azn, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.bbx = getelementptr inbounds [4 x i8], ptr %i.azk, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.bby = load i32, ptr %i.bbx, align 4, !tbaa !24
  store i32 %i.bby, ptr %i.bbw, align 4, !tbaa !24
  %i.bbz = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter3796.next = add i64 %prol.iter3796, 1 ; 2 uses
  %prol.iter3796.cmp.not = icmp eq i64 %prol.iter3796.next, %xtraiter3794
  br i1 %prol.iter3796.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !1353

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:   ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader3792
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader3792 ], [ %i.bbz, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.bca = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.ph, %i.azj
  %i.bcb = icmp ugt i64 %i.bca, -4
  br i1 %i.bcb, label %.loopexit2817, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bcr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.bcc = getelementptr inbounds [4 x i8], ptr %i.azn, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i
  %i.bcd = getelementptr inbounds [4 x i8], ptr %i.azk, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i
  %i.bce = load i32, ptr %i.bcd, align 4, !tbaa !24
  store i32 %i.bce, ptr %i.bcc, align 4, !tbaa !24
  %i.bcf = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bcg = getelementptr inbounds [4 x i8], ptr %i.azn, i64 %i.bcf
  %i.bch = getelementptr inbounds [4 x i8], ptr %i.azk, i64 %i.bcf
  %i.bci = load i32, ptr %i.bch, align 4, !tbaa !24
  store i32 %i.bci, ptr %i.bcg, align 4, !tbaa !24
  %i.bcj = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.bck = getelementptr inbounds [4 x i8], ptr %i.azn, i64 %i.bcj
  %i.bcl = getelementptr inbounds [4 x i8], ptr %i.azk, i64 %i.bcj
  %i.bcm = load i32, ptr %i.bcl, align 4, !tbaa !24
  store i32 %i.bcm, ptr %i.bck, align 4, !tbaa !24
  %i.bcn = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.bco = getelementptr inbounds [4 x i8], ptr %i.azn, i64 %i.bcn
  %i.bcp = getelementptr inbounds [4 x i8], ptr %i.azk, i64 %i.bcn
  %i.bcq = load i32, ptr %i.bcp, align 4, !tbaa !24
  store i32 %i.bcq, ptr %i.bco, align 4, !tbaa !24
  %i.bcr = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.bcr, %i.azj
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.3, label %.loopexit2817, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1354

.lr.ph.i.i.i.i.i.i.i.i.i.i.i493:                  ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i493
  %.021.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bcv, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i493 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bcs = getelementptr inbounds [4 x i8], ptr %i.azn, i64 %.021.i.i.i.i.i.i.i.i.i.i.i
  %i.bct = getelementptr inbounds [4 x i8], ptr %i.azk, i64 %.021.i.i.i.i.i.i.i.i.i.i.i
  %i.bcu = load <2 x i64>, ptr %i.bct, align 1, !tbaa !22
  store <2 x i64> %i.bcu, ptr %i.bcs, align 16, !tbaa !22
  %i.bcv = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.bcw = icmp slt i64 %i.bcv, %i.azx
  br i1 %i.bcw, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i493, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1355

.loopexit2817:                                    ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i, %middle.block2934, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.bcx = load ptr, ptr %1, align 8, !tbaa !99, !noalias !1564 ; 2 uses
  %i.bcy = ptrtoaddr ptr %i.bcx to i64            ; 2 uses
  %i.bcz = load i64, ptr %i.a, align 8, !tbaa !100, !noalias !1564 ; 13 uses
  %i.bda = getelementptr inbounds [4 x i8], ptr %i.bcx, i64 %i.bcz ; 13 uses
  %i.bdb = add nsw i64 %i.azj, %i.ayt             ; 4 uses
  %i.bdc = load ptr, ptr %61, align 8, !tbaa !26, !noalias !1565 ; 2 uses
  %i.bdd = ptrtoaddr ptr %i.bdc to i64            ; 2 uses
  %i.bde = getelementptr inbounds [4 x i8], ptr %i.bdc, i64 %i.bdb ; 14 uses
  %i.bdf = ptrtoint ptr %i.bde to i64             ; 2 uses
  %i.bdg = and i64 %i.bdf, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i499 = icmp eq i64 %i.bdg, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i499, label %bb.dm, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i500

bb.dm:                                            ; preds = %.loopexit2817
  %i.bdh = lshr exact i64 %i.bdf, 2
  %i.bdi = sub nsw i64 0, %i.bdh
  %i.bdj = and i64 %i.bdi, 3
  %i.bdk = call i64 @llvm.smin.i64(i64 %i.bdj, i64 %i.bcz)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i500

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i500: ; preds = %bb.dm, %.loopexit2817
  %.0.i.i.i.i.i.i.i.i.i.i.i.i501 = phi i64 [ %i.bdk, %bb.dm ], [ %i.bcz, %.loopexit2817 ] ; 11 uses
  %i.bdl = sub nsw i64 %i.bcz, %.0.i.i.i.i.i.i.i.i.i.i.i.i501 ; 2 uses
  %i.bdm = sdiv i64 %i.bdl, 4
  %i.bdn = shl nsw i64 %i.bdm, 2                  ; 2 uses
  %i.bdo = add nsw i64 %i.bdn, %.0.i.i.i.i.i.i.i.i.i.i.i.i501 ; 6 uses
  %i.bdp = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i501, 0
  br i1 %i.bdp, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i502

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.preheader:      ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i500
  %min.iters.check2940 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i501, 20
  br i1 %min.iters.check2940, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.preheader3791, label %vector.memcheck2941

vector.memcheck2941:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.preheader
  %i.bdq = shl nsw i64 %i.bdb, 2
  %i.bdr = shl i64 %i.bcz, 2
  %i.bds = add i64 %i.bdq, %i.bdd
  %i.bdt = add i64 %i.bdr, %i.bcy
  %i.bdu = sub i64 %i.bdt, %i.bds
  %diff.check2942 = icmp ugt i64 %i.bdu, -32
  br i1 %diff.check2942, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.preheader3791, label %vector.ph2943

vector.ph2943:                                    ; preds = %vector.memcheck2941
  %n.vec2944 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i501, 9223372036854775800 ; 3 uses
  br label %vector.body2945

vector.body2945:                                  ; preds = %vector.body2945, %vector.ph2943
  %index2946 = phi i64 [ 0, %vector.ph2943 ], [ %index.next2949, %vector.body2945 ] ; 3 uses
  %i.bdv = getelementptr inbounds nuw [4 x i8], ptr %i.bde, i64 %index2946 ; 2 uses
  %i.bdw = getelementptr inbounds nuw [4 x i8], ptr %i.bda, i64 %index2946 ; 2 uses
  %i.bdx = getelementptr inbounds nuw i8, ptr %i.bdw, i64 16
  %wide.load2947 = load <4 x i32>, ptr %i.bdw, align 4, !tbaa !24
  %wide.load2948 = load <4 x i32>, ptr %i.bdx, align 4, !tbaa !24
  %i.bdy = getelementptr inbounds nuw i8, ptr %i.bdv, i64 16
  store <4 x i32> %wide.load2947, ptr %i.bdv, align 4, !tbaa !24
  store <4 x i32> %wide.load2948, ptr %i.bdy, align 4, !tbaa !24
  %index.next2949 = add nuw i64 %index2946, 8     ; 2 uses
  %i.bdz = icmp eq i64 %index.next2949, %n.vec2944
  br i1 %i.bdz, label %middle.block2950, label %vector.body2945, !llvm.loop !1360

middle.block2950:                                 ; preds = %vector.body2945
  %cmp.n2951 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i501, %n.vec2944
  br i1 %cmp.n2951, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i502, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.preheader3791

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.preheader3791:  ; preds = %vector.memcheck2941, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.preheader, %middle.block2950
  %.05.i.i.i.i.i.i.i.i.i.i.i.i510.ph = phi i64 [ 0, %vector.memcheck2941 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.preheader ], [ %n.vec2944, %middle.block2950 ] ; 3 uses
  %xtraiter3797 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i501, 3 ; 2 uses
  %lcmp.mod3798.not = icmp eq i64 %xtraiter3797, 0
  br i1 %lcmp.mod3798.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.prol:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.preheader3791, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i510.prol = phi i64 [ %i.bed, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i510.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.preheader3791 ] ; 3 uses
  %prol.iter3799 = phi i64 [ %prol.iter3799.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.preheader3791 ]
  %i.bea = getelementptr inbounds nuw [4 x i8], ptr %i.bde, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i510.prol
  %i.beb = getelementptr inbounds nuw [4 x i8], ptr %i.bda, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i510.prol
  %i.bec = load i32, ptr %i.beb, align 4, !tbaa !24
  store i32 %i.bec, ptr %i.bea, align 4, !tbaa !24
  %i.bed = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i510.prol, 1 ; 2 uses
  %prol.iter3799.next = add i64 %prol.iter3799, 1 ; 2 uses
  %prol.iter3799.cmp.not = icmp eq i64 %prol.iter3799.next, %xtraiter3797
  br i1 %prol.iter3799.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.prol, !llvm.loop !1361

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.prol.loopexit:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.preheader3791
  %.05.i.i.i.i.i.i.i.i.i.i.i.i510.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i510.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.preheader3791 ], [ %i.bed, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.prol ]
  %i.bee = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i510.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i501
  %i.bef = icmp ugt i64 %i.bee, -4
  br i1 %i.bef, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i502, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509
  %.05.i.i.i.i.i.i.i.i.i.i.i.i510 = phi i64 [ %i.bev, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i510.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.prol.loopexit ] ; 6 uses
  %i.beg = getelementptr inbounds nuw [4 x i8], ptr %i.bde, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i510
  %i.beh = getelementptr inbounds nuw [4 x i8], ptr %i.bda, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i510
  %i.bei = load i32, ptr %i.beh, align 4, !tbaa !24
  store i32 %i.bei, ptr %i.beg, align 4, !tbaa !24
  %i.bej = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i510, 1 ; 2 uses
  %i.bek = getelementptr inbounds nuw [4 x i8], ptr %i.bde, i64 %i.bej
  %i.bel = getelementptr inbounds nuw [4 x i8], ptr %i.bda, i64 %i.bej
  %i.bem = load i32, ptr %i.bel, align 4, !tbaa !24
  store i32 %i.bem, ptr %i.bek, align 4, !tbaa !24
  %i.ben = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i510, 2 ; 2 uses
  %i.beo = getelementptr inbounds nuw [4 x i8], ptr %i.bde, i64 %i.ben
  %i.bep = getelementptr inbounds nuw [4 x i8], ptr %i.bda, i64 %i.ben
  %i.beq = load i32, ptr %i.bep, align 4, !tbaa !24
  store i32 %i.beq, ptr %i.beo, align 4, !tbaa !24
  %i.ber = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i510, 3 ; 2 uses
  %i.bes = getelementptr inbounds nuw [4 x i8], ptr %i.bde, i64 %i.ber
  %i.bet = getelementptr inbounds nuw [4 x i8], ptr %i.bda, i64 %i.ber
  %i.beu = load i32, ptr %i.bet, align 4, !tbaa !24
  store i32 %i.beu, ptr %i.bes, align 4, !tbaa !24
  %i.bev = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i510, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i511.3 = icmp eq i64 %i.bev, %.0.i.i.i.i.i.i.i.i.i.i.i.i501
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i511.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i502, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509, !llvm.loop !1362

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i502: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i509, %middle.block2950, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i500
  %i.bew = icmp sgt i64 %i.bdl, 3
  br i1 %i.bew, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i507, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i503

._crit_edge.i.i.i.i.i.i.i.i.i.i.i503:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i507, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i502
  %i.bex = icmp slt i64 %i.bdo, %i.bcz
  br i1 %i.bex, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.preheader, label %.loopexit2816

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.preheader:    ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i503
  %i.bey = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i501, %i.bdn
  %i.bez = sub i64 %i.bcz, %i.bey                 ; 3 uses
  %min.iters.check2956 = icmp ult i64 %i.bez, 20
  br i1 %min.iters.check2956, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.preheader3790, label %vector.memcheck2957

vector.memcheck2957:                              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.preheader
  %i.bfa = shl nsw i64 %i.bdb, 2
  %i.bfb = shl i64 %i.bcz, 2
  %i.bfc = add i64 %i.bfa, %i.bdd
  %i.bfd = add i64 %i.bfb, %i.bcy
  %i.bfe = sub i64 %i.bfd, %i.bfc
  %diff.check2958 = icmp ugt i64 %i.bfe, -32
  br i1 %diff.check2958, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.preheader3790, label %vector.ph2959

vector.ph2959:                                    ; preds = %vector.memcheck2957
  %n.vec2960 = and i64 %i.bez, -8                 ; 3 uses
  %i.bff = add i64 %i.bdo, %n.vec2960
  br label %vector.body2961

vector.body2961:                                  ; preds = %vector.body2961, %vector.ph2959
  %index2962 = phi i64 [ 0, %vector.ph2959 ], [ %index.next2965, %vector.body2961 ] ; 2 uses
  %i.bfg = add i64 %i.bdo, %index2962             ; 2 uses
  %i.bfh = getelementptr inbounds [4 x i8], ptr %i.bde, i64 %i.bfg ; 2 uses
  %i.bfi = getelementptr inbounds [4 x i8], ptr %i.bda, i64 %i.bfg ; 2 uses
  %i.bfj = getelementptr inbounds nuw i8, ptr %i.bfi, i64 16
  %wide.load2963 = load <4 x i32>, ptr %i.bfi, align 4, !tbaa !24
  %wide.load2964 = load <4 x i32>, ptr %i.bfj, align 4, !tbaa !24
  %i.bfk = getelementptr inbounds nuw i8, ptr %i.bfh, i64 16
  store <4 x i32> %wide.load2963, ptr %i.bfh, align 4, !tbaa !24
  store <4 x i32> %wide.load2964, ptr %i.bfk, align 4, !tbaa !24
  %index.next2965 = add nuw i64 %index2962, 8     ; 2 uses
  %i.bfl = icmp eq i64 %index.next2965, %n.vec2960
  br i1 %i.bfl, label %middle.block2966, label %vector.body2961, !llvm.loop !1363

middle.block2966:                                 ; preds = %vector.body2961
  %cmp.n2967 = icmp eq i64 %i.bez, %n.vec2960
  br i1 %cmp.n2967, label %.loopexit2816, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.preheader3790

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.preheader3790: ; preds = %vector.memcheck2957, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.preheader, %middle.block2966
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i505.ph = phi i64 [ %i.bdo, %vector.memcheck2957 ], [ %i.bdo, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.preheader ], [ %i.bff, %middle.block2966 ] ; 4 uses
  %i.bfm = sub i64 %i.bcz, %.05.i18.i.i.i.i.i.i.i.i.i.i.i505.ph
  %xtraiter3800 = and i64 %i.bfm, 3               ; 2 uses
  %lcmp.mod3801.not = icmp eq i64 %xtraiter3800, 0
  br i1 %lcmp.mod3801.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.prol:         ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.preheader3790, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i505.prol = phi i64 [ %i.bfq, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i505.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.preheader3790 ] ; 3 uses
  %prol.iter3802 = phi i64 [ %prol.iter3802.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.preheader3790 ]
  %i.bfn = getelementptr inbounds [4 x i8], ptr %i.bde, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i505.prol
  %i.bfo = getelementptr inbounds [4 x i8], ptr %i.bda, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i505.prol
  %i.bfp = load i32, ptr %i.bfo, align 4, !tbaa !24
  store i32 %i.bfp, ptr %i.bfn, align 4, !tbaa !24
  %i.bfq = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i505.prol, 1 ; 2 uses
  %prol.iter3802.next = add i64 %prol.iter3802, 1 ; 2 uses
  %prol.iter3802.cmp.not = icmp eq i64 %prol.iter3802.next, %xtraiter3800
  br i1 %prol.iter3802.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.prol, !llvm.loop !1364

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.preheader3790
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i505.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i505.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.preheader3790 ], [ %i.bfq, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.prol ]
  %i.bfr = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i505.ph, %i.bcz
  %i.bfs = icmp ugt i64 %i.bfr, -4
  br i1 %i.bfs, label %.loopexit2816, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i505 = phi i64 [ %i.bgi, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i505.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.prol.loopexit ] ; 6 uses
  %i.bft = getelementptr inbounds [4 x i8], ptr %i.bde, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i505
  %i.bfu = getelementptr inbounds [4 x i8], ptr %i.bda, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i505
  %i.bfv = load i32, ptr %i.bfu, align 4, !tbaa !24
  store i32 %i.bfv, ptr %i.bft, align 4, !tbaa !24
  %i.bfw = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i505, 1 ; 2 uses
  %i.bfx = getelementptr inbounds [4 x i8], ptr %i.bde, i64 %i.bfw
  %i.bfy = getelementptr inbounds [4 x i8], ptr %i.bda, i64 %i.bfw
  %i.bfz = load i32, ptr %i.bfy, align 4, !tbaa !24
  store i32 %i.bfz, ptr %i.bfx, align 4, !tbaa !24
  %i.bga = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i505, 2 ; 2 uses
  %i.bgb = getelementptr inbounds [4 x i8], ptr %i.bde, i64 %i.bga
  %i.bgc = getelementptr inbounds [4 x i8], ptr %i.bda, i64 %i.bga
  %i.bgd = load i32, ptr %i.bgc, align 4, !tbaa !24
  store i32 %i.bgd, ptr %i.bgb, align 4, !tbaa !24
  %i.bge = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i505, 3 ; 2 uses
  %i.bgf = getelementptr inbounds [4 x i8], ptr %i.bde, i64 %i.bge
  %i.bgg = getelementptr inbounds [4 x i8], ptr %i.bda, i64 %i.bge
  %i.bgh = load i32, ptr %i.bgg, align 4, !tbaa !24
  store i32 %i.bgh, ptr %i.bgf, align 4, !tbaa !24
  %i.bgi = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i505, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i506.3 = icmp eq i64 %i.bgi, %i.bcz
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i506.3, label %.loopexit2816, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504, !llvm.loop !1365

.lr.ph.i.i.i.i.i.i.i.i.i.i.i507:                  ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i502, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i507
  %.021.i.i.i.i.i.i.i.i.i.i.i508 = phi i64 [ %i.bgm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i507 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i501, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i502 ] ; 3 uses
  %i.bgj = getelementptr inbounds [4 x i8], ptr %i.bde, i64 %.021.i.i.i.i.i.i.i.i.i.i.i508
  %i.bgk = getelementptr inbounds [4 x i8], ptr %i.bda, i64 %.021.i.i.i.i.i.i.i.i.i.i.i508
  %i.bgl = load <2 x i64>, ptr %i.bgk, align 1, !tbaa !22
  store <2 x i64> %i.bgl, ptr %i.bgj, align 16, !tbaa !22
  %i.bgm = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i508, 4 ; 2 uses
  %i.bgn = icmp slt i64 %i.bgm, %i.bdo
  br i1 %i.bgn, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i507, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i503, !llvm.loop !1355

.loopexit2816:                                    ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i504, %middle.block2966, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i503
  %i.bgo = load ptr, ptr %1, align 8, !tbaa !99, !noalias !1566 ; 2 uses
  %i.bgp = ptrtoaddr ptr %i.bgo to i64            ; 2 uses
  %i.bgq = load i64, ptr %i.a, align 8, !tbaa !100, !noalias !1566 ; 11 uses
  %.idx = shl i64 %i.bgq, 3                       ; 3 uses
  %i.bgr = getelementptr inbounds i8, ptr %i.bgo, i64 %.idx ; 13 uses
  %i.bgs = add nsw i64 %i.bcz, %i.bdb             ; 4 uses
  %i.bgt = load ptr, ptr %61, align 8, !tbaa !26, !noalias !1567 ; 2 uses
  %i.bgu = ptrtoaddr ptr %i.bgt to i64            ; 2 uses
  %i.bgv = getelementptr inbounds [4 x i8], ptr %i.bgt, i64 %i.bgs ; 14 uses
  %i.bgw = ptrtoint ptr %i.bgv to i64             ; 2 uses
  %i.bgx = and i64 %i.bgw, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i518 = icmp eq i64 %i.bgx, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i518, label %bb.dn, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i519

bb.dn:                                            ; preds = %.loopexit2816
  %i.bgy = lshr exact i64 %i.bgw, 2
  %i.bgz = sub nsw i64 0, %i.bgy
  %i.bha = and i64 %i.bgz, 3
  %i.bhb = call i64 @llvm.smin.i64(i64 %i.bha, i64 %i.bgq)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i519

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i519: ; preds = %bb.dn, %.loopexit2816
  %.0.i.i.i.i.i.i.i.i.i.i.i.i520 = phi i64 [ %i.bhb, %bb.dn ], [ %i.bgq, %.loopexit2816 ] ; 11 uses
  %i.bhc = sub nsw i64 %i.bgq, %.0.i.i.i.i.i.i.i.i.i.i.i.i520 ; 2 uses
  %i.bhd = sdiv i64 %i.bhc, 4
  %i.bhe = shl nsw i64 %i.bhd, 2                  ; 2 uses
  %i.bhf = add nsw i64 %i.bhe, %.0.i.i.i.i.i.i.i.i.i.i.i.i520 ; 6 uses
  %i.bhg = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i520, 0
  br i1 %i.bhg, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i521

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.preheader:      ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i519
  %min.iters.check2972 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i520, 16
  br i1 %min.iters.check2972, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.preheader3789, label %vector.memcheck2973

vector.memcheck2973:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.preheader
  %i.bhh = shl nsw i64 %i.bgs, 2
  %i.bhi = add i64 %i.bhh, %i.bgu
  %i.bhj = add i64 %.idx, %i.bgp
  %i.bhk = sub i64 %i.bhj, %i.bhi
  %diff.check2974 = icmp ugt i64 %i.bhk, -32
  br i1 %diff.check2974, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.preheader3789, label %vector.ph2975

vector.ph2975:                                    ; preds = %vector.memcheck2973
  %n.vec2976 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i520, 9223372036854775800 ; 3 uses
  br label %vector.body2977

vector.body2977:                                  ; preds = %vector.body2977, %vector.ph2975
  %index2978 = phi i64 [ 0, %vector.ph2975 ], [ %index.next2981, %vector.body2977 ] ; 3 uses
  %i.bhl = getelementptr inbounds nuw [4 x i8], ptr %i.bgv, i64 %index2978 ; 2 uses
  %i.bhm = getelementptr inbounds nuw [4 x i8], ptr %i.bgr, i64 %index2978 ; 2 uses
  %i.bhn = getelementptr inbounds nuw i8, ptr %i.bhm, i64 16
  %wide.load2979 = load <4 x i32>, ptr %i.bhm, align 4, !tbaa !24
  %wide.load2980 = load <4 x i32>, ptr %i.bhn, align 4, !tbaa !24
  %i.bho = getelementptr inbounds nuw i8, ptr %i.bhl, i64 16
  store <4 x i32> %wide.load2979, ptr %i.bhl, align 4, !tbaa !24
  store <4 x i32> %wide.load2980, ptr %i.bho, align 4, !tbaa !24
  %index.next2981 = add nuw i64 %index2978, 8     ; 2 uses
  %i.bhp = icmp eq i64 %index.next2981, %n.vec2976
  br i1 %i.bhp, label %middle.block2982, label %vector.body2977, !llvm.loop !1370

middle.block2982:                                 ; preds = %vector.body2977
  %cmp.n2983 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i520, %n.vec2976
  br i1 %cmp.n2983, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i521, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.preheader3789

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.preheader3789:  ; preds = %vector.memcheck2973, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.preheader, %middle.block2982
  %.05.i.i.i.i.i.i.i.i.i.i.i.i529.ph = phi i64 [ 0, %vector.memcheck2973 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.preheader ], [ %n.vec2976, %middle.block2982 ] ; 3 uses
  %xtraiter3803 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i520, 3 ; 2 uses
  %lcmp.mod3804.not = icmp eq i64 %xtraiter3803, 0
  br i1 %lcmp.mod3804.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.prol:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.preheader3789, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i529.prol = phi i64 [ %i.bht, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i529.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.preheader3789 ] ; 3 uses
  %prol.iter3805 = phi i64 [ %prol.iter3805.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.preheader3789 ]
  %i.bhq = getelementptr inbounds nuw [4 x i8], ptr %i.bgv, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i529.prol
  %i.bhr = getelementptr inbounds nuw [4 x i8], ptr %i.bgr, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i529.prol
  %i.bhs = load i32, ptr %i.bhr, align 4, !tbaa !24
  store i32 %i.bhs, ptr %i.bhq, align 4, !tbaa !24
  %i.bht = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i529.prol, 1 ; 2 uses
  %prol.iter3805.next = add i64 %prol.iter3805, 1 ; 2 uses
  %prol.iter3805.cmp.not = icmp eq i64 %prol.iter3805.next, %xtraiter3803
  br i1 %prol.iter3805.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.prol, !llvm.loop !1371

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.prol.loopexit:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.preheader3789
  %.05.i.i.i.i.i.i.i.i.i.i.i.i529.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i529.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.preheader3789 ], [ %i.bht, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.prol ]
  %i.bhu = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i529.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i520
  %i.bhv = icmp ugt i64 %i.bhu, -4
  br i1 %i.bhv, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i521, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528
  %.05.i.i.i.i.i.i.i.i.i.i.i.i529 = phi i64 [ %i.bil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i529.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.prol.loopexit ] ; 6 uses
  %i.bhw = getelementptr inbounds nuw [4 x i8], ptr %i.bgv, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i529
  %i.bhx = getelementptr inbounds nuw [4 x i8], ptr %i.bgr, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i529
  %i.bhy = load i32, ptr %i.bhx, align 4, !tbaa !24
  store i32 %i.bhy, ptr %i.bhw, align 4, !tbaa !24
  %i.bhz = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i529, 1 ; 2 uses
  %i.bia = getelementptr inbounds nuw [4 x i8], ptr %i.bgv, i64 %i.bhz
  %i.bib = getelementptr inbounds nuw [4 x i8], ptr %i.bgr, i64 %i.bhz
  %i.bic = load i32, ptr %i.bib, align 4, !tbaa !24
  store i32 %i.bic, ptr %i.bia, align 4, !tbaa !24
  %i.bid = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i529, 2 ; 2 uses
  %i.bie = getelementptr inbounds nuw [4 x i8], ptr %i.bgv, i64 %i.bid
  %i.bif = getelementptr inbounds nuw [4 x i8], ptr %i.bgr, i64 %i.bid
  %i.big = load i32, ptr %i.bif, align 4, !tbaa !24
  store i32 %i.big, ptr %i.bie, align 4, !tbaa !24
  %i.bih = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i529, 3 ; 2 uses
  %i.bii = getelementptr inbounds nuw [4 x i8], ptr %i.bgv, i64 %i.bih
  %i.bij = getelementptr inbounds nuw [4 x i8], ptr %i.bgr, i64 %i.bih
  %i.bik = load i32, ptr %i.bij, align 4, !tbaa !24
  store i32 %i.bik, ptr %i.bii, align 4, !tbaa !24
  %i.bil = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i529, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i530.3 = icmp eq i64 %i.bil, %.0.i.i.i.i.i.i.i.i.i.i.i.i520
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i530.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i521, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528, !llvm.loop !1372

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i521: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i528, %middle.block2982, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i519
  %i.bim = icmp sgt i64 %i.bhc, 3
  br i1 %i.bim, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i526, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i522

._crit_edge.i.i.i.i.i.i.i.i.i.i.i522:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i526, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i521
  %i.bin = icmp slt i64 %i.bhf, %i.bgq
  br i1 %i.bin, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.preheader, label %.loopexit2815

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.preheader:    ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i522
  %i.bio = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i520, %i.bhe
  %i.bip = sub i64 %i.bgq, %i.bio                 ; 3 uses
  %min.iters.check2988 = icmp ult i64 %i.bip, 16
  br i1 %min.iters.check2988, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.preheader3788, label %vector.memcheck2989

vector.memcheck2989:                              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.preheader
  %i.biq = shl nsw i64 %i.bgs, 2
  %i.bir = add i64 %i.biq, %i.bgu
  %i.bis = add i64 %.idx, %i.bgp
  %i.bit = sub i64 %i.bis, %i.bir
  %diff.check2990 = icmp ugt i64 %i.bit, -32
  br i1 %diff.check2990, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.preheader3788, label %vector.ph2991

vector.ph2991:                                    ; preds = %vector.memcheck2989
  %n.vec2992 = and i64 %i.bip, -8                 ; 3 uses
  %i.biu = add i64 %i.bhf, %n.vec2992
  br label %vector.body2993

vector.body2993:                                  ; preds = %vector.body2993, %vector.ph2991
  %index2994 = phi i64 [ 0, %vector.ph2991 ], [ %index.next2997, %vector.body2993 ] ; 2 uses
  %i.biv = add i64 %i.bhf, %index2994             ; 2 uses
  %i.biw = getelementptr inbounds [4 x i8], ptr %i.bgv, i64 %i.biv ; 2 uses
  %i.bix = getelementptr inbounds [4 x i8], ptr %i.bgr, i64 %i.biv ; 2 uses
  %i.biy = getelementptr inbounds nuw i8, ptr %i.bix, i64 16
  %wide.load2995 = load <4 x i32>, ptr %i.bix, align 4, !tbaa !24
  %wide.load2996 = load <4 x i32>, ptr %i.biy, align 4, !tbaa !24
  %i.biz = getelementptr inbounds nuw i8, ptr %i.biw, i64 16
  store <4 x i32> %wide.load2995, ptr %i.biw, align 4, !tbaa !24
  store <4 x i32> %wide.load2996, ptr %i.biz, align 4, !tbaa !24
  %index.next2997 = add nuw i64 %index2994, 8     ; 2 uses
  %i.bja = icmp eq i64 %index.next2997, %n.vec2992
  br i1 %i.bja, label %middle.block2998, label %vector.body2993, !llvm.loop !1373

middle.block2998:                                 ; preds = %vector.body2993
  %cmp.n2999 = icmp eq i64 %i.bip, %n.vec2992
  br i1 %cmp.n2999, label %.loopexit2815, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.preheader3788

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.preheader3788: ; preds = %vector.memcheck2989, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.preheader, %middle.block2998
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i524.ph = phi i64 [ %i.bhf, %vector.memcheck2989 ], [ %i.bhf, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.preheader ], [ %i.biu, %middle.block2998 ] ; 4 uses
  %i.bjb = sub i64 %i.bgq, %.05.i18.i.i.i.i.i.i.i.i.i.i.i524.ph
  %xtraiter3806 = and i64 %i.bjb, 3               ; 2 uses
  %lcmp.mod3807.not = icmp eq i64 %xtraiter3806, 0
  br i1 %lcmp.mod3807.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.prol:         ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.preheader3788, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i524.prol = phi i64 [ %i.bjf, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i524.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.preheader3788 ] ; 3 uses
  %prol.iter3808 = phi i64 [ %prol.iter3808.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.preheader3788 ]
  %i.bjc = getelementptr inbounds [4 x i8], ptr %i.bgv, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i524.prol
  %i.bjd = getelementptr inbounds [4 x i8], ptr %i.bgr, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i524.prol
  %i.bje = load i32, ptr %i.bjd, align 4, !tbaa !24
  store i32 %i.bje, ptr %i.bjc, align 4, !tbaa !24
  %i.bjf = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i524.prol, 1 ; 2 uses
  %prol.iter3808.next = add i64 %prol.iter3808, 1 ; 2 uses
  %prol.iter3808.cmp.not = icmp eq i64 %prol.iter3808.next, %xtraiter3806
  br i1 %prol.iter3808.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.prol, !llvm.loop !1374

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.preheader3788
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i524.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i524.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.preheader3788 ], [ %i.bjf, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.prol ]
  %i.bjg = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i524.ph, %i.bgq
  %i.bjh = icmp ugt i64 %i.bjg, -4
  br i1 %i.bjh, label %.loopexit2815, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i524 = phi i64 [ %i.bjx, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i524.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.prol.loopexit ] ; 6 uses
  %i.bji = getelementptr inbounds [4 x i8], ptr %i.bgv, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i524
  %i.bjj = getelementptr inbounds [4 x i8], ptr %i.bgr, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i524
  %i.bjk = load i32, ptr %i.bjj, align 4, !tbaa !24
  store i32 %i.bjk, ptr %i.bji, align 4, !tbaa !24
  %i.bjl = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i524, 1 ; 2 uses
  %i.bjm = getelementptr inbounds [4 x i8], ptr %i.bgv, i64 %i.bjl
  %i.bjn = getelementptr inbounds [4 x i8], ptr %i.bgr, i64 %i.bjl
  %i.bjo = load i32, ptr %i.bjn, align 4, !tbaa !24
  store i32 %i.bjo, ptr %i.bjm, align 4, !tbaa !24
  %i.bjp = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i524, 2 ; 2 uses
  %i.bjq = getelementptr inbounds [4 x i8], ptr %i.bgv, i64 %i.bjp
  %i.bjr = getelementptr inbounds [4 x i8], ptr %i.bgr, i64 %i.bjp
  %i.bjs = load i32, ptr %i.bjr, align 4, !tbaa !24
  store i32 %i.bjs, ptr %i.bjq, align 4, !tbaa !24
  %i.bjt = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i524, 3 ; 2 uses
  %i.bju = getelementptr inbounds [4 x i8], ptr %i.bgv, i64 %i.bjt
  %i.bjv = getelementptr inbounds [4 x i8], ptr %i.bgr, i64 %i.bjt
  %i.bjw = load i32, ptr %i.bjv, align 4, !tbaa !24
  store i32 %i.bjw, ptr %i.bju, align 4, !tbaa !24
  %i.bjx = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i524, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i525.3 = icmp eq i64 %i.bjx, %i.bgq
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i525.3, label %.loopexit2815, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523, !llvm.loop !1375

.lr.ph.i.i.i.i.i.i.i.i.i.i.i526:                  ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i521, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i526
  %.021.i.i.i.i.i.i.i.i.i.i.i527 = phi i64 [ %i.bkb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i526 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i520, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i521 ] ; 3 uses
  %i.bjy = getelementptr inbounds [4 x i8], ptr %i.bgv, i64 %.021.i.i.i.i.i.i.i.i.i.i.i527
  %i.bjz = getelementptr inbounds [4 x i8], ptr %i.bgr, i64 %.021.i.i.i.i.i.i.i.i.i.i.i527
  %i.bka = load <2 x i64>, ptr %i.bjz, align 1, !tbaa !22
  store <2 x i64> %i.bka, ptr %i.bjy, align 16, !tbaa !22
  %i.bkb = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i527, 4 ; 2 uses
  %i.bkc = icmp slt i64 %i.bkb, %i.bhf
  br i1 %i.bkc, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i526, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i522, !llvm.loop !1355

.loopexit2815:                                    ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i523, %middle.block2998, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i522
  %i.bkd = load ptr, ptr %1, align 8, !tbaa !99, !noalias !1568 ; 2 uses
  %i.bke = ptrtoaddr ptr %i.bkd to i64            ; 2 uses
  %i.bkf = load i64, ptr %i.a, align 8, !tbaa !100, !noalias !1568 ; 11 uses
  %.idx2779 = shl i64 %i.bkf, 3                   ; 3 uses
  %i.bkg = getelementptr inbounds i8, ptr %i.bkd, i64 %.idx2779 ; 13 uses
  %i.bkh = add nsw i64 %i.bgq, %i.bgs             ; 4 uses
  %i.bki = load ptr, ptr %61, align 8, !tbaa !26, !noalias !1569 ; 2 uses
  %i.bkj = ptrtoaddr ptr %i.bki to i64            ; 2 uses
  %i.bkk = getelementptr inbounds [4 x i8], ptr %i.bki, i64 %i.bkh ; 14 uses
  %i.bkl = ptrtoint ptr %i.bkk to i64             ; 2 uses
  %i.bkm = and i64 %i.bkl, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i537 = icmp eq i64 %i.bkm, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i537, label %bb.do, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i538

bb.do:                                            ; preds = %.loopexit2815
  %i.bkn = lshr exact i64 %i.bkl, 2
  %i.bko = sub nsw i64 0, %i.bkn
  %i.bkp = and i64 %i.bko, 3
  %i.bkq = call i64 @llvm.smin.i64(i64 %i.bkp, i64 %i.bkf)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i538

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i538: ; preds = %bb.do, %.loopexit2815
  %.0.i.i.i.i.i.i.i.i.i.i.i.i539 = phi i64 [ %i.bkq, %bb.do ], [ %i.bkf, %.loopexit2815 ] ; 11 uses
  %i.bkr = sub nsw i64 %i.bkf, %.0.i.i.i.i.i.i.i.i.i.i.i.i539 ; 2 uses
  %i.bks = sdiv i64 %i.bkr, 4
  %i.bkt = shl nsw i64 %i.bks, 2                  ; 2 uses
  %i.bku = add nsw i64 %i.bkt, %.0.i.i.i.i.i.i.i.i.i.i.i.i539 ; 6 uses
  %i.bkv = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i539, 0
  br i1 %i.bkv, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i540

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.preheader:      ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i538
  %min.iters.check3004 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i539, 16
  br i1 %min.iters.check3004, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.preheader3787, label %vector.memcheck3005

vector.memcheck3005:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.preheader
  %i.bkw = shl nsw i64 %i.bkh, 2
  %i.bkx = add i64 %i.bkw, %i.bkj
  %i.bky = add i64 %.idx2779, %i.bke
  %i.bkz = sub i64 %i.bky, %i.bkx
  %diff.check3006 = icmp ugt i64 %i.bkz, -32
  br i1 %diff.check3006, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.preheader3787, label %vector.ph3007

vector.ph3007:                                    ; preds = %vector.memcheck3005
  %n.vec3008 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i539, 9223372036854775800 ; 3 uses
  br label %vector.body3009

vector.body3009:                                  ; preds = %vector.body3009, %vector.ph3007
  %index3010 = phi i64 [ 0, %vector.ph3007 ], [ %index.next3013, %vector.body3009 ] ; 3 uses
  %i.bla = getelementptr inbounds nuw [4 x i8], ptr %i.bkk, i64 %index3010 ; 2 uses
  %i.blb = getelementptr inbounds nuw [4 x i8], ptr %i.bkg, i64 %index3010 ; 2 uses
  %i.blc = getelementptr inbounds nuw i8, ptr %i.blb, i64 16
  %wide.load3011 = load <4 x i32>, ptr %i.blb, align 4, !tbaa !24
  %wide.load3012 = load <4 x i32>, ptr %i.blc, align 4, !tbaa !24
  %i.bld = getelementptr inbounds nuw i8, ptr %i.bla, i64 16
  store <4 x i32> %wide.load3011, ptr %i.bla, align 4, !tbaa !24
  store <4 x i32> %wide.load3012, ptr %i.bld, align 4, !tbaa !24
  %index.next3013 = add nuw i64 %index3010, 8     ; 2 uses
  %i.ble = icmp eq i64 %index.next3013, %n.vec3008
  br i1 %i.ble, label %middle.block3014, label %vector.body3009, !llvm.loop !1380

middle.block3014:                                 ; preds = %vector.body3009
  %cmp.n3015 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i539, %n.vec3008
  br i1 %cmp.n3015, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i540, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.preheader3787

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.preheader3787:  ; preds = %vector.memcheck3005, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.preheader, %middle.block3014
  %.05.i.i.i.i.i.i.i.i.i.i.i.i548.ph = phi i64 [ 0, %vector.memcheck3005 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.preheader ], [ %n.vec3008, %middle.block3014 ] ; 3 uses
  %xtraiter3809 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i539, 3 ; 2 uses
  %lcmp.mod3810.not = icmp eq i64 %xtraiter3809, 0
  br i1 %lcmp.mod3810.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.prol:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.preheader3787, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i548.prol = phi i64 [ %i.bli, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i548.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.preheader3787 ] ; 3 uses
  %prol.iter3811 = phi i64 [ %prol.iter3811.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.preheader3787 ]
  %i.blf = getelementptr inbounds nuw [4 x i8], ptr %i.bkk, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i548.prol
  %i.blg = getelementptr inbounds nuw [4 x i8], ptr %i.bkg, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i548.prol
  %i.blh = load i32, ptr %i.blg, align 4, !tbaa !24
  store i32 %i.blh, ptr %i.blf, align 4, !tbaa !24
  %i.bli = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i548.prol, 1 ; 2 uses
  %prol.iter3811.next = add i64 %prol.iter3811, 1 ; 2 uses
  %prol.iter3811.cmp.not = icmp eq i64 %prol.iter3811.next, %xtraiter3809
  br i1 %prol.iter3811.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.prol, !llvm.loop !1381

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.prol.loopexit:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.preheader3787
  %.05.i.i.i.i.i.i.i.i.i.i.i.i548.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i548.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.preheader3787 ], [ %i.bli, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.prol ]
  %i.blj = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i548.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i539
  %i.blk = icmp ugt i64 %i.blj, -4
  br i1 %i.blk, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i540, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547
  %.05.i.i.i.i.i.i.i.i.i.i.i.i548 = phi i64 [ %i.bma, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i548.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.prol.loopexit ] ; 6 uses
  %i.bll = getelementptr inbounds nuw [4 x i8], ptr %i.bkk, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i548
  %i.blm = getelementptr inbounds nuw [4 x i8], ptr %i.bkg, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i548
  %i.bln = load i32, ptr %i.blm, align 4, !tbaa !24
  store i32 %i.bln, ptr %i.bll, align 4, !tbaa !24
  %i.blo = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i548, 1 ; 2 uses
  %i.blp = getelementptr inbounds nuw [4 x i8], ptr %i.bkk, i64 %i.blo
  %i.blq = getelementptr inbounds nuw [4 x i8], ptr %i.bkg, i64 %i.blo
  %i.blr = load i32, ptr %i.blq, align 4, !tbaa !24
  store i32 %i.blr, ptr %i.blp, align 4, !tbaa !24
  %i.bls = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i548, 2 ; 2 uses
  %i.blt = getelementptr inbounds nuw [4 x i8], ptr %i.bkk, i64 %i.bls
  %i.blu = getelementptr inbounds nuw [4 x i8], ptr %i.bkg, i64 %i.bls
  %i.blv = load i32, ptr %i.blu, align 4, !tbaa !24
  store i32 %i.blv, ptr %i.blt, align 4, !tbaa !24
  %i.blw = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i548, 3 ; 2 uses
  %i.blx = getelementptr inbounds nuw [4 x i8], ptr %i.bkk, i64 %i.blw
  %i.bly = getelementptr inbounds nuw [4 x i8], ptr %i.bkg, i64 %i.blw
  %i.blz = load i32, ptr %i.bly, align 4, !tbaa !24
  store i32 %i.blz, ptr %i.blx, align 4, !tbaa !24
  %i.bma = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i548, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i549.3 = icmp eq i64 %i.bma, %.0.i.i.i.i.i.i.i.i.i.i.i.i539
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i549.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i540, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547, !llvm.loop !1382

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i540: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i547, %middle.block3014, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i538
  %i.bmb = icmp sgt i64 %i.bkr, 3
  br i1 %i.bmb, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i545, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i541

._crit_edge.i.i.i.i.i.i.i.i.i.i.i541:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i545, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i540
  %i.bmc = icmp slt i64 %i.bku, %i.bkf
  br i1 %i.bmc, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.preheader, label %.loopexit2814

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.preheader:    ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i541
  %i.bmd = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i539, %i.bkt
  %i.bme = sub i64 %i.bkf, %i.bmd                 ; 3 uses
  %min.iters.check3020 = icmp ult i64 %i.bme, 16
  br i1 %min.iters.check3020, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.preheader3786, label %vector.memcheck3021

vector.memcheck3021:                              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.preheader
  %i.bmf = shl nsw i64 %i.bkh, 2
  %i.bmg = add i64 %i.bmf, %i.bkj
  %i.bmh = add i64 %.idx2779, %i.bke
  %i.bmi = sub i64 %i.bmh, %i.bmg
  %diff.check3022 = icmp ugt i64 %i.bmi, -32
  br i1 %diff.check3022, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.preheader3786, label %vector.ph3023

vector.ph3023:                                    ; preds = %vector.memcheck3021
  %n.vec3024 = and i64 %i.bme, -8                 ; 3 uses
  %i.bmj = add i64 %i.bku, %n.vec3024
  br label %vector.body3025

vector.body3025:                                  ; preds = %vector.body3025, %vector.ph3023
  %index3026 = phi i64 [ 0, %vector.ph3023 ], [ %index.next3029, %vector.body3025 ] ; 2 uses
  %i.bmk = add i64 %i.bku, %index3026             ; 2 uses
  %i.bml = getelementptr inbounds [4 x i8], ptr %i.bkk, i64 %i.bmk ; 2 uses
  %i.bmm = getelementptr inbounds [4 x i8], ptr %i.bkg, i64 %i.bmk ; 2 uses
  %i.bmn = getelementptr inbounds nuw i8, ptr %i.bmm, i64 16
  %wide.load3027 = load <4 x i32>, ptr %i.bmm, align 4, !tbaa !24
  %wide.load3028 = load <4 x i32>, ptr %i.bmn, align 4, !tbaa !24
  %i.bmo = getelementptr inbounds nuw i8, ptr %i.bml, i64 16
  store <4 x i32> %wide.load3027, ptr %i.bml, align 4, !tbaa !24
  store <4 x i32> %wide.load3028, ptr %i.bmo, align 4, !tbaa !24
  %index.next3029 = add nuw i64 %index3026, 8     ; 2 uses
  %i.bmp = icmp eq i64 %index.next3029, %n.vec3024
  br i1 %i.bmp, label %middle.block3030, label %vector.body3025, !llvm.loop !1383

middle.block3030:                                 ; preds = %vector.body3025
  %cmp.n3031 = icmp eq i64 %i.bme, %n.vec3024
  br i1 %cmp.n3031, label %.loopexit2814, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.preheader3786

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.preheader3786: ; preds = %vector.memcheck3021, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.preheader, %middle.block3030
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i543.ph = phi i64 [ %i.bku, %vector.memcheck3021 ], [ %i.bku, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.preheader ], [ %i.bmj, %middle.block3030 ] ; 4 uses
  %i.bmq = sub i64 %i.bkf, %.05.i18.i.i.i.i.i.i.i.i.i.i.i543.ph
  %xtraiter3812 = and i64 %i.bmq, 3               ; 2 uses
  %lcmp.mod3813.not = icmp eq i64 %xtraiter3812, 0
  br i1 %lcmp.mod3813.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.prol:         ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.preheader3786, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i543.prol = phi i64 [ %i.bmu, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i543.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.preheader3786 ] ; 3 uses
  %prol.iter3814 = phi i64 [ %prol.iter3814.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.preheader3786 ]
  %i.bmr = getelementptr inbounds [4 x i8], ptr %i.bkk, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i543.prol
  %i.bms = getelementptr inbounds [4 x i8], ptr %i.bkg, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i543.prol
  %i.bmt = load i32, ptr %i.bms, align 4, !tbaa !24
  store i32 %i.bmt, ptr %i.bmr, align 4, !tbaa !24
  %i.bmu = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i543.prol, 1 ; 2 uses
  %prol.iter3814.next = add i64 %prol.iter3814, 1 ; 2 uses
  %prol.iter3814.cmp.not = icmp eq i64 %prol.iter3814.next, %xtraiter3812
  br i1 %prol.iter3814.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.prol, !llvm.loop !1384

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.preheader3786
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i543.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i543.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.preheader3786 ], [ %i.bmu, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.prol ]
  %i.bmv = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i543.ph, %i.bkf
  %i.bmw = icmp ugt i64 %i.bmv, -4
  br i1 %i.bmw, label %.loopexit2814, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i543 = phi i64 [ %i.bnm, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i543.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.prol.loopexit ] ; 6 uses
  %i.bmx = getelementptr inbounds [4 x i8], ptr %i.bkk, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i543
  %i.bmy = getelementptr inbounds [4 x i8], ptr %i.bkg, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i543
  %i.bmz = load i32, ptr %i.bmy, align 4, !tbaa !24
  store i32 %i.bmz, ptr %i.bmx, align 4, !tbaa !24
  %i.bna = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i543, 1 ; 2 uses
  %i.bnb = getelementptr inbounds [4 x i8], ptr %i.bkk, i64 %i.bna
  %i.bnc = getelementptr inbounds [4 x i8], ptr %i.bkg, i64 %i.bna
  %i.bnd = load i32, ptr %i.bnc, align 4, !tbaa !24
  store i32 %i.bnd, ptr %i.bnb, align 4, !tbaa !24
  %i.bne = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i543, 2 ; 2 uses
  %i.bnf = getelementptr inbounds [4 x i8], ptr %i.bkk, i64 %i.bne
  %i.bng = getelementptr inbounds [4 x i8], ptr %i.bkg, i64 %i.bne
  %i.bnh = load i32, ptr %i.bng, align 4, !tbaa !24
  store i32 %i.bnh, ptr %i.bnf, align 4, !tbaa !24
  %i.bni = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i543, 3 ; 2 uses
  %i.bnj = getelementptr inbounds [4 x i8], ptr %i.bkk, i64 %i.bni
  %i.bnk = getelementptr inbounds [4 x i8], ptr %i.bkg, i64 %i.bni
  %i.bnl = load i32, ptr %i.bnk, align 4, !tbaa !24
  store i32 %i.bnl, ptr %i.bnj, align 4, !tbaa !24
  %i.bnm = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i543, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i544.3 = icmp eq i64 %i.bnm, %i.bkf
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i544.3, label %.loopexit2814, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542, !llvm.loop !1385

.lr.ph.i.i.i.i.i.i.i.i.i.i.i545:                  ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i540, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i545
  %.021.i.i.i.i.i.i.i.i.i.i.i546 = phi i64 [ %i.bnq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i545 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i539, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i540 ] ; 3 uses
  %i.bnn = getelementptr inbounds [4 x i8], ptr %i.bkk, i64 %.021.i.i.i.i.i.i.i.i.i.i.i546
  %i.bno = getelementptr inbounds [4 x i8], ptr %i.bkg, i64 %.021.i.i.i.i.i.i.i.i.i.i.i546
  %i.bnp = load <2 x i64>, ptr %i.bno, align 1, !tbaa !22
  store <2 x i64> %i.bnp, ptr %i.bnn, align 16, !tbaa !22
  %i.bnq = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i546, 4 ; 2 uses
  %i.bnr = icmp slt i64 %i.bnq, %i.bku
  br i1 %i.bnr, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i545, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i541, !llvm.loop !1355

.loopexit2814:                                    ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i542, %middle.block3030, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i541
  %i.bns = load ptr, ptr %1, align 8, !tbaa !99, !noalias !1570 ; 14 uses
  %i.bnt = ptrtoaddr ptr %i.bns to i64            ; 2 uses
  %i.bnu = load i64, ptr %i.a, align 8, !tbaa !100, !noalias !1570 ; 10 uses
  %i.bnv = add nsw i64 %i.bkf, %i.bkh             ; 4 uses
  %i.bnw = load ptr, ptr %61, align 8, !tbaa !26, !noalias !1571 ; 2 uses
  %i.bnx = ptrtoaddr ptr %i.bnw to i64            ; 2 uses
  %i.bny = getelementptr inbounds [4 x i8], ptr %i.bnw, i64 %i.bnv ; 14 uses
  %i.bnz = ptrtoint ptr %i.bny to i64             ; 2 uses
  %i.boa = and i64 %i.bnz, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i556 = icmp eq i64 %i.boa, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i556, label %bb.dp, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i557

bb.dp:                                            ; preds = %.loopexit2814
  %i.bob = lshr exact i64 %i.bnz, 2
  %i.boc = sub nsw i64 0, %i.bob
  %i.bod = and i64 %i.boc, 3
  %i.boe = call i64 @llvm.smin.i64(i64 %i.bod, i64 %i.bnu)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i557

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i557: ; preds = %bb.dp, %.loopexit2814
  %.0.i.i.i.i.i.i.i.i.i.i.i.i558 = phi i64 [ %i.boe, %bb.dp ], [ %i.bnu, %.loopexit2814 ] ; 11 uses
  %i.bof = sub nsw i64 %i.bnu, %.0.i.i.i.i.i.i.i.i.i.i.i.i558 ; 2 uses
  %i.bog = sdiv i64 %i.bof, 4
  %i.boh = shl nsw i64 %i.bog, 2                  ; 2 uses
  %i.boi = add nsw i64 %i.boh, %.0.i.i.i.i.i.i.i.i.i.i.i.i558 ; 6 uses
  %i.boj = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i558, 0
  br i1 %i.boj, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i559

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.preheader:      ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i557
  %min.iters.check3036 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i558, 16
  br i1 %min.iters.check3036, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.preheader3785, label %vector.memcheck3037

vector.memcheck3037:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.preheader
  %i.bok = shl nsw i64 %i.bnv, 2
  %i.bol = add i64 %i.bok, %i.bnx
  %i.bom = sub i64 %i.bnt, %i.bol
  %diff.check3038 = icmp ugt i64 %i.bom, -32
  br i1 %diff.check3038, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.preheader3785, label %vector.ph3039

vector.ph3039:                                    ; preds = %vector.memcheck3037
  %n.vec3040 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i558, 9223372036854775800 ; 3 uses
  br label %vector.body3041

vector.body3041:                                  ; preds = %vector.body3041, %vector.ph3039
  %index3042 = phi i64 [ 0, %vector.ph3039 ], [ %index.next3045, %vector.body3041 ] ; 3 uses
  %i.bon = getelementptr inbounds nuw [4 x i8], ptr %i.bny, i64 %index3042 ; 2 uses
  %i.boo = getelementptr inbounds nuw [4 x i8], ptr %i.bns, i64 %index3042 ; 2 uses
  %i.bop = getelementptr inbounds nuw i8, ptr %i.boo, i64 16
  %wide.load3043 = load <4 x i32>, ptr %i.boo, align 4, !tbaa !24
  %wide.load3044 = load <4 x i32>, ptr %i.bop, align 4, !tbaa !24
  %i.boq = getelementptr inbounds nuw i8, ptr %i.bon, i64 16
  store <4 x i32> %wide.load3043, ptr %i.bon, align 4, !tbaa !24
  store <4 x i32> %wide.load3044, ptr %i.boq, align 4, !tbaa !24
  %index.next3045 = add nuw i64 %index3042, 8     ; 2 uses
  %i.bor = icmp eq i64 %index.next3045, %n.vec3040
  br i1 %i.bor, label %middle.block3046, label %vector.body3041, !llvm.loop !1390

middle.block3046:                                 ; preds = %vector.body3041
  %cmp.n3047 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i558, %n.vec3040
  br i1 %cmp.n3047, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i559, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.preheader3785

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.preheader3785:  ; preds = %vector.memcheck3037, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.preheader, %middle.block3046
  %.05.i.i.i.i.i.i.i.i.i.i.i.i567.ph = phi i64 [ 0, %vector.memcheck3037 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.preheader ], [ %n.vec3040, %middle.block3046 ] ; 3 uses
  %xtraiter3815 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i558, 3 ; 2 uses
  %lcmp.mod3816.not = icmp eq i64 %xtraiter3815, 0
  br i1 %lcmp.mod3816.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.prol:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.preheader3785, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i567.prol = phi i64 [ %i.bov, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i567.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.preheader3785 ] ; 3 uses
  %prol.iter3817 = phi i64 [ %prol.iter3817.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.preheader3785 ]
  %i.bos = getelementptr inbounds nuw [4 x i8], ptr %i.bny, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i567.prol
  %i.bot = getelementptr inbounds nuw [4 x i8], ptr %i.bns, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i567.prol
  %i.bou = load i32, ptr %i.bot, align 4, !tbaa !24
  store i32 %i.bou, ptr %i.bos, align 4, !tbaa !24
  %i.bov = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i567.prol, 1 ; 2 uses
  %prol.iter3817.next = add i64 %prol.iter3817, 1 ; 2 uses
  %prol.iter3817.cmp.not = icmp eq i64 %prol.iter3817.next, %xtraiter3815
  br i1 %prol.iter3817.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.prol, !llvm.loop !1391

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.prol.loopexit:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.preheader3785
  %.05.i.i.i.i.i.i.i.i.i.i.i.i567.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i567.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.preheader3785 ], [ %i.bov, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.prol ]
  %i.bow = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i567.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i558
  %i.box = icmp ugt i64 %i.bow, -4
  br i1 %i.box, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i559, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566
  %.05.i.i.i.i.i.i.i.i.i.i.i.i567 = phi i64 [ %i.bpn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i567.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.prol.loopexit ] ; 6 uses
  %i.boy = getelementptr inbounds nuw [4 x i8], ptr %i.bny, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i567
  %i.boz = getelementptr inbounds nuw [4 x i8], ptr %i.bns, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i567
  %i.bpa = load i32, ptr %i.boz, align 4, !tbaa !24
  store i32 %i.bpa, ptr %i.boy, align 4, !tbaa !24
  %i.bpb = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i567, 1 ; 2 uses
  %i.bpc = getelementptr inbounds nuw [4 x i8], ptr %i.bny, i64 %i.bpb
  %i.bpd = getelementptr inbounds nuw [4 x i8], ptr %i.bns, i64 %i.bpb
  %i.bpe = load i32, ptr %i.bpd, align 4, !tbaa !24
  store i32 %i.bpe, ptr %i.bpc, align 4, !tbaa !24
  %i.bpf = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i567, 2 ; 2 uses
  %i.bpg = getelementptr inbounds nuw [4 x i8], ptr %i.bny, i64 %i.bpf
  %i.bph = getelementptr inbounds nuw [4 x i8], ptr %i.bns, i64 %i.bpf
  %i.bpi = load i32, ptr %i.bph, align 4, !tbaa !24
  store i32 %i.bpi, ptr %i.bpg, align 4, !tbaa !24
  %i.bpj = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i567, 3 ; 2 uses
  %i.bpk = getelementptr inbounds nuw [4 x i8], ptr %i.bny, i64 %i.bpj
  %i.bpl = getelementptr inbounds nuw [4 x i8], ptr %i.bns, i64 %i.bpj
  %i.bpm = load i32, ptr %i.bpl, align 4, !tbaa !24
  store i32 %i.bpm, ptr %i.bpk, align 4, !tbaa !24
  %i.bpn = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i567, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i568.3 = icmp eq i64 %i.bpn, %.0.i.i.i.i.i.i.i.i.i.i.i.i558
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i568.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i559, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566, !llvm.loop !1392

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i559: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i566, %middle.block3046, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i557
  %i.bpo = icmp sgt i64 %i.bof, 3
  br i1 %i.bpo, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i564, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i560

._crit_edge.i.i.i.i.i.i.i.i.i.i.i560:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i564, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i559
  %i.bpp = icmp slt i64 %i.boi, %i.bnu
  br i1 %i.bpp, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.preheader, label %.loopexit2813

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.preheader:    ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i560
  %i.bpq = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i558, %i.boh
  %i.bpr = sub i64 %i.bnu, %i.bpq                 ; 3 uses
  %min.iters.check3052 = icmp ult i64 %i.bpr, 16
  br i1 %min.iters.check3052, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.preheader3784, label %vector.memcheck3053

vector.memcheck3053:                              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.preheader
  %i.bps = shl nsw i64 %i.bnv, 2
  %i.bpt = add i64 %i.bps, %i.bnx
  %i.bpu = sub i64 %i.bnt, %i.bpt
  %diff.check3054 = icmp ugt i64 %i.bpu, -32
  br i1 %diff.check3054, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.preheader3784, label %vector.ph3055

vector.ph3055:                                    ; preds = %vector.memcheck3053
  %n.vec3056 = and i64 %i.bpr, -8                 ; 3 uses
  %i.bpv = add i64 %i.boi, %n.vec3056
  br label %vector.body3057

vector.body3057:                                  ; preds = %vector.body3057, %vector.ph3055
  %index3058 = phi i64 [ 0, %vector.ph3055 ], [ %index.next3061, %vector.body3057 ] ; 2 uses
  %i.bpw = add i64 %i.boi, %index3058             ; 2 uses
  %i.bpx = getelementptr inbounds [4 x i8], ptr %i.bny, i64 %i.bpw ; 2 uses
  %i.bpy = getelementptr inbounds [4 x i8], ptr %i.bns, i64 %i.bpw ; 2 uses
  %i.bpz = getelementptr inbounds nuw i8, ptr %i.bpy, i64 16
  %wide.load3059 = load <4 x i32>, ptr %i.bpy, align 4, !tbaa !24
  %wide.load3060 = load <4 x i32>, ptr %i.bpz, align 4, !tbaa !24
  %i.bqa = getelementptr inbounds nuw i8, ptr %i.bpx, i64 16
  store <4 x i32> %wide.load3059, ptr %i.bpx, align 4, !tbaa !24
  store <4 x i32> %wide.load3060, ptr %i.bqa, align 4, !tbaa !24
  %index.next3061 = add nuw i64 %index3058, 8     ; 2 uses
  %i.bqb = icmp eq i64 %index.next3061, %n.vec3056
  br i1 %i.bqb, label %middle.block3062, label %vector.body3057, !llvm.loop !1393

middle.block3062:                                 ; preds = %vector.body3057
  %cmp.n3063 = icmp eq i64 %i.bpr, %n.vec3056
  br i1 %cmp.n3063, label %.loopexit2813, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.preheader3784

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.preheader3784: ; preds = %vector.memcheck3053, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.preheader, %middle.block3062
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i562.ph = phi i64 [ %i.boi, %vector.memcheck3053 ], [ %i.boi, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.preheader ], [ %i.bpv, %middle.block3062 ] ; 4 uses
  %i.bqc = sub i64 %i.bnu, %.05.i18.i.i.i.i.i.i.i.i.i.i.i562.ph
  %xtraiter3818 = and i64 %i.bqc, 3               ; 2 uses
  %lcmp.mod3819.not = icmp eq i64 %xtraiter3818, 0
  br i1 %lcmp.mod3819.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.prol:         ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.preheader3784, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i562.prol = phi i64 [ %i.bqg, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i562.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.preheader3784 ] ; 3 uses
  %prol.iter3820 = phi i64 [ %prol.iter3820.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.preheader3784 ]
  %i.bqd = getelementptr inbounds [4 x i8], ptr %i.bny, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i562.prol
  %i.bqe = getelementptr inbounds [4 x i8], ptr %i.bns, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i562.prol
  %i.bqf = load i32, ptr %i.bqe, align 4, !tbaa !24
  store i32 %i.bqf, ptr %i.bqd, align 4, !tbaa !24
  %i.bqg = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i562.prol, 1 ; 2 uses
  %prol.iter3820.next = add i64 %prol.iter3820, 1 ; 2 uses
  %prol.iter3820.cmp.not = icmp eq i64 %prol.iter3820.next, %xtraiter3818
  br i1 %prol.iter3820.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.prol, !llvm.loop !1394

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.preheader3784
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i562.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i562.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.preheader3784 ], [ %i.bqg, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.prol ]
  %i.bqh = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i562.ph, %i.bnu
  %i.bqi = icmp ugt i64 %i.bqh, -4
  br i1 %i.bqi, label %.loopexit2813, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i562 = phi i64 [ %i.bqy, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i562.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.prol.loopexit ] ; 6 uses
  %i.bqj = getelementptr inbounds [4 x i8], ptr %i.bny, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i562
  %i.bqk = getelementptr inbounds [4 x i8], ptr %i.bns, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i562
  %i.bql = load i32, ptr %i.bqk, align 4, !tbaa !24
  store i32 %i.bql, ptr %i.bqj, align 4, !tbaa !24
  %i.bqm = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i562, 1 ; 2 uses
  %i.bqn = getelementptr inbounds [4 x i8], ptr %i.bny, i64 %i.bqm
  %i.bqo = getelementptr inbounds [4 x i8], ptr %i.bns, i64 %i.bqm
  %i.bqp = load i32, ptr %i.bqo, align 4, !tbaa !24
  store i32 %i.bqp, ptr %i.bqn, align 4, !tbaa !24
  %i.bqq = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i562, 2 ; 2 uses
  %i.bqr = getelementptr inbounds [4 x i8], ptr %i.bny, i64 %i.bqq
  %i.bqs = getelementptr inbounds [4 x i8], ptr %i.bns, i64 %i.bqq
  %i.bqt = load i32, ptr %i.bqs, align 4, !tbaa !24
  store i32 %i.bqt, ptr %i.bqr, align 4, !tbaa !24
  %i.bqu = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i562, 3 ; 2 uses
  %i.bqv = getelementptr inbounds [4 x i8], ptr %i.bny, i64 %i.bqu
  %i.bqw = getelementptr inbounds [4 x i8], ptr %i.bns, i64 %i.bqu
  %i.bqx = load i32, ptr %i.bqw, align 4, !tbaa !24
  store i32 %i.bqx, ptr %i.bqv, align 4, !tbaa !24
  %i.bqy = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i562, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i563.3 = icmp eq i64 %i.bqy, %i.bnu
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i563.3, label %.loopexit2813, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561, !llvm.loop !1395

.lr.ph.i.i.i.i.i.i.i.i.i.i.i564:                  ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i559, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i564
  %.021.i.i.i.i.i.i.i.i.i.i.i565 = phi i64 [ %i.brc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i564 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i558, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i559 ] ; 3 uses
  %i.bqz = getelementptr inbounds [4 x i8], ptr %i.bny, i64 %.021.i.i.i.i.i.i.i.i.i.i.i565
  %i.bra = getelementptr inbounds [4 x i8], ptr %i.bns, i64 %.021.i.i.i.i.i.i.i.i.i.i.i565
  %i.brb = load <2 x i64>, ptr %i.bra, align 1, !tbaa !22
  store <2 x i64> %i.brb, ptr %i.bqz, align 16, !tbaa !22
  %i.brc = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i565, 4 ; 2 uses
  %i.brd = icmp slt i64 %i.brc, %i.boi
  br i1 %i.brd, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i564, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i560, !llvm.loop !1355

.loopexit2813:                                    ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i561, %middle.block3062, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i560
  %i.bre = load ptr, ptr %1, align 8, !tbaa !99, !noalias !1572 ; 14 uses
  %i.brf = ptrtoaddr ptr %i.bre to i64            ; 2 uses
  %i.brg = load i64, ptr %i.a, align 8, !tbaa !100, !noalias !1572 ; 10 uses
  %i.brh = add nsw i64 %i.bnu, %i.bnv             ; 4 uses
  %i.bri = load ptr, ptr %61, align 8, !tbaa !26, !noalias !1573 ; 2 uses
  %i.brj = ptrtoaddr ptr %i.bri to i64            ; 2 uses
  %i.brk = getelementptr inbounds [4 x i8], ptr %i.bri, i64 %i.brh ; 14 uses
  %i.brl = ptrtoint ptr %i.brk to i64             ; 2 uses
  %i.brm = and i64 %i.brl, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i575 = icmp eq i64 %i.brm, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i575, label %bb.dq, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i576

bb.dq:                                            ; preds = %.loopexit2813
  %i.brn = lshr exact i64 %i.brl, 2
  %i.bro = sub nsw i64 0, %i.brn
  %i.brp = and i64 %i.bro, 3
  %i.brq = call i64 @llvm.smin.i64(i64 %i.brp, i64 %i.brg)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i576

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i576: ; preds = %bb.dq, %.loopexit2813
  %.0.i.i.i.i.i.i.i.i.i.i.i.i577 = phi i64 [ %i.brq, %bb.dq ], [ %i.brg, %.loopexit2813 ] ; 11 uses
  %i.brr = sub nsw i64 %i.brg, %.0.i.i.i.i.i.i.i.i.i.i.i.i577 ; 2 uses
  %i.brs = sdiv i64 %i.brr, 4
  %i.brt = shl nsw i64 %i.brs, 2                  ; 2 uses
  %i.bru = add nsw i64 %i.brt, %.0.i.i.i.i.i.i.i.i.i.i.i.i577 ; 6 uses
  %i.brv = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i577, 0
  br i1 %i.brv, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i578

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.preheader:      ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i576
  %min.iters.check3068 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i577, 16
  br i1 %min.iters.check3068, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.preheader3783, label %vector.memcheck3069

vector.memcheck3069:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.preheader
  %i.brw = shl nsw i64 %i.brh, 2
  %i.brx = add i64 %i.brw, %i.brj
  %i.bry = sub i64 %i.brf, %i.brx
  %diff.check3070 = icmp ugt i64 %i.bry, -32
  br i1 %diff.check3070, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.preheader3783, label %vector.ph3071

vector.ph3071:                                    ; preds = %vector.memcheck3069
  %n.vec3072 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i577, 9223372036854775800 ; 3 uses
  br label %vector.body3073

vector.body3073:                                  ; preds = %vector.body3073, %vector.ph3071
  %index3074 = phi i64 [ 0, %vector.ph3071 ], [ %index.next3077, %vector.body3073 ] ; 3 uses
  %i.brz = getelementptr inbounds nuw [4 x i8], ptr %i.brk, i64 %index3074 ; 2 uses
  %i.bsa = getelementptr inbounds nuw [4 x i8], ptr %i.bre, i64 %index3074 ; 2 uses
  %i.bsb = getelementptr inbounds nuw i8, ptr %i.bsa, i64 16
  %wide.load3075 = load <4 x i32>, ptr %i.bsa, align 4, !tbaa !24
  %wide.load3076 = load <4 x i32>, ptr %i.bsb, align 4, !tbaa !24
  %i.bsc = getelementptr inbounds nuw i8, ptr %i.brz, i64 16
  store <4 x i32> %wide.load3075, ptr %i.brz, align 4, !tbaa !24
  store <4 x i32> %wide.load3076, ptr %i.bsc, align 4, !tbaa !24
  %index.next3077 = add nuw i64 %index3074, 8     ; 2 uses
  %i.bsd = icmp eq i64 %index.next3077, %n.vec3072
  br i1 %i.bsd, label %middle.block3078, label %vector.body3073, !llvm.loop !1400

middle.block3078:                                 ; preds = %vector.body3073
  %cmp.n3079 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i577, %n.vec3072
  br i1 %cmp.n3079, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i578, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.preheader3783

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.preheader3783:  ; preds = %vector.memcheck3069, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.preheader, %middle.block3078
  %.05.i.i.i.i.i.i.i.i.i.i.i.i586.ph = phi i64 [ 0, %vector.memcheck3069 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.preheader ], [ %n.vec3072, %middle.block3078 ] ; 3 uses
  %xtraiter3821 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i577, 3 ; 2 uses
  %lcmp.mod3822.not = icmp eq i64 %xtraiter3821, 0
  br i1 %lcmp.mod3822.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.prol:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.preheader3783, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i586.prol = phi i64 [ %i.bsh, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i586.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.preheader3783 ] ; 3 uses
  %prol.iter3823 = phi i64 [ %prol.iter3823.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.preheader3783 ]
  %i.bse = getelementptr inbounds nuw [4 x i8], ptr %i.brk, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i586.prol
  %i.bsf = getelementptr inbounds nuw [4 x i8], ptr %i.bre, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i586.prol
  %i.bsg = load i32, ptr %i.bsf, align 4, !tbaa !24
  store i32 %i.bsg, ptr %i.bse, align 4, !tbaa !24
  %i.bsh = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i586.prol, 1 ; 2 uses
  %prol.iter3823.next = add i64 %prol.iter3823, 1 ; 2 uses
  %prol.iter3823.cmp.not = icmp eq i64 %prol.iter3823.next, %xtraiter3821
  br i1 %prol.iter3823.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.prol, !llvm.loop !1401

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.prol.loopexit:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.preheader3783
  %.05.i.i.i.i.i.i.i.i.i.i.i.i586.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i586.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.preheader3783 ], [ %i.bsh, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.prol ]
  %i.bsi = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i586.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i577
  %i.bsj = icmp ugt i64 %i.bsi, -4
  br i1 %i.bsj, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i578, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585
  %.05.i.i.i.i.i.i.i.i.i.i.i.i586 = phi i64 [ %i.bsz, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i586.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.prol.loopexit ] ; 6 uses
  %i.bsk = getelementptr inbounds nuw [4 x i8], ptr %i.brk, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i586
  %i.bsl = getelementptr inbounds nuw [4 x i8], ptr %i.bre, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i586
  %i.bsm = load i32, ptr %i.bsl, align 4, !tbaa !24
  store i32 %i.bsm, ptr %i.bsk, align 4, !tbaa !24
  %i.bsn = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i586, 1 ; 2 uses
  %i.bso = getelementptr inbounds nuw [4 x i8], ptr %i.brk, i64 %i.bsn
  %i.bsp = getelementptr inbounds nuw [4 x i8], ptr %i.bre, i64 %i.bsn
  %i.bsq = load i32, ptr %i.bsp, align 4, !tbaa !24
  store i32 %i.bsq, ptr %i.bso, align 4, !tbaa !24
  %i.bsr = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i586, 2 ; 2 uses
  %i.bss = getelementptr inbounds nuw [4 x i8], ptr %i.brk, i64 %i.bsr
  %i.bst = getelementptr inbounds nuw [4 x i8], ptr %i.bre, i64 %i.bsr
  %i.bsu = load i32, ptr %i.bst, align 4, !tbaa !24
  store i32 %i.bsu, ptr %i.bss, align 4, !tbaa !24
  %i.bsv = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i586, 3 ; 2 uses
  %i.bsw = getelementptr inbounds nuw [4 x i8], ptr %i.brk, i64 %i.bsv
  %i.bsx = getelementptr inbounds nuw [4 x i8], ptr %i.bre, i64 %i.bsv
  %i.bsy = load i32, ptr %i.bsx, align 4, !tbaa !24
  store i32 %i.bsy, ptr %i.bsw, align 4, !tbaa !24
  %i.bsz = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i586, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i587.3 = icmp eq i64 %i.bsz, %.0.i.i.i.i.i.i.i.i.i.i.i.i577
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i587.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i578, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585, !llvm.loop !1402

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i578: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i585, %middle.block3078, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i576
  %i.bta = icmp sgt i64 %i.brr, 3
  br i1 %i.bta, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i583, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i579

._crit_edge.i.i.i.i.i.i.i.i.i.i.i579:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i583, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i578
  %i.btb = icmp slt i64 %i.bru, %i.brg
  br i1 %i.btb, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.preheader, label %.loopexit2812

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.preheader:    ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i579
  %i.btc = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i577, %i.brt
  %i.btd = sub i64 %i.brg, %i.btc                 ; 3 uses
  %min.iters.check3084 = icmp ult i64 %i.btd, 16
  br i1 %min.iters.check3084, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.preheader3782, label %vector.memcheck3085

vector.memcheck3085:                              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.preheader
  %i.bte = shl nsw i64 %i.brh, 2
  %i.btf = add i64 %i.bte, %i.brj
  %i.btg = sub i64 %i.brf, %i.btf
  %diff.check3086 = icmp ugt i64 %i.btg, -32
  br i1 %diff.check3086, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.preheader3782, label %vector.ph3087

vector.ph3087:                                    ; preds = %vector.memcheck3085
  %n.vec3088 = and i64 %i.btd, -8                 ; 3 uses
  %i.bth = add i64 %i.bru, %n.vec3088
  br label %vector.body3089

vector.body3089:                                  ; preds = %vector.body3089, %vector.ph3087
  %index3090 = phi i64 [ 0, %vector.ph3087 ], [ %index.next3093, %vector.body3089 ] ; 2 uses
  %i.bti = add i64 %i.bru, %index3090             ; 2 uses
  %i.btj = getelementptr inbounds [4 x i8], ptr %i.brk, i64 %i.bti ; 2 uses
  %i.btk = getelementptr inbounds [4 x i8], ptr %i.bre, i64 %i.bti ; 2 uses
  %i.btl = getelementptr inbounds nuw i8, ptr %i.btk, i64 16
  %wide.load3091 = load <4 x i32>, ptr %i.btk, align 4, !tbaa !24
  %wide.load3092 = load <4 x i32>, ptr %i.btl, align 4, !tbaa !24
  %i.btm = getelementptr inbounds nuw i8, ptr %i.btj, i64 16
  store <4 x i32> %wide.load3091, ptr %i.btj, align 4, !tbaa !24
  store <4 x i32> %wide.load3092, ptr %i.btm, align 4, !tbaa !24
  %index.next3093 = add nuw i64 %index3090, 8     ; 2 uses
  %i.btn = icmp eq i64 %index.next3093, %n.vec3088
  br i1 %i.btn, label %middle.block3094, label %vector.body3089, !llvm.loop !1403

middle.block3094:                                 ; preds = %vector.body3089
  %cmp.n3095 = icmp eq i64 %i.btd, %n.vec3088
  br i1 %cmp.n3095, label %.loopexit2812, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.preheader3782

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.preheader3782: ; preds = %vector.memcheck3085, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.preheader, %middle.block3094
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i581.ph = phi i64 [ %i.bru, %vector.memcheck3085 ], [ %i.bru, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.preheader ], [ %i.bth, %middle.block3094 ] ; 4 uses
  %i.bto = sub i64 %i.brg, %.05.i18.i.i.i.i.i.i.i.i.i.i.i581.ph
  %xtraiter3824 = and i64 %i.bto, 3               ; 2 uses
  %lcmp.mod3825.not = icmp eq i64 %xtraiter3824, 0
  br i1 %lcmp.mod3825.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.prol:         ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.preheader3782, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i581.prol = phi i64 [ %i.bts, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i581.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.preheader3782 ] ; 3 uses
  %prol.iter3826 = phi i64 [ %prol.iter3826.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.preheader3782 ]
  %i.btp = getelementptr inbounds [4 x i8], ptr %i.brk, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i581.prol
  %i.btq = getelementptr inbounds [4 x i8], ptr %i.bre, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i581.prol
  %i.btr = load i32, ptr %i.btq, align 4, !tbaa !24
  store i32 %i.btr, ptr %i.btp, align 4, !tbaa !24
  %i.bts = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i581.prol, 1 ; 2 uses
  %prol.iter3826.next = add i64 %prol.iter3826, 1 ; 2 uses
  %prol.iter3826.cmp.not = icmp eq i64 %prol.iter3826.next, %xtraiter3824
  br i1 %prol.iter3826.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.prol, !llvm.loop !1404

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.preheader3782
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i581.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i581.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.preheader3782 ], [ %i.bts, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.prol ]
  %i.btt = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i581.ph, %i.brg
  %i.btu = icmp ugt i64 %i.btt, -4
  br i1 %i.btu, label %.loopexit2812, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i581 = phi i64 [ %i.buk, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i581.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.prol.loopexit ] ; 6 uses
  %i.btv = getelementptr inbounds [4 x i8], ptr %i.brk, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i581
  %i.btw = getelementptr inbounds [4 x i8], ptr %i.bre, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i581
  %i.btx = load i32, ptr %i.btw, align 4, !tbaa !24
  store i32 %i.btx, ptr %i.btv, align 4, !tbaa !24
  %i.bty = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i581, 1 ; 2 uses
  %i.btz = getelementptr inbounds [4 x i8], ptr %i.brk, i64 %i.bty
  %i.bua = getelementptr inbounds [4 x i8], ptr %i.bre, i64 %i.bty
  %i.bub = load i32, ptr %i.bua, align 4, !tbaa !24
  store i32 %i.bub, ptr %i.btz, align 4, !tbaa !24
  %i.buc = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i581, 2 ; 2 uses
  %i.bud = getelementptr inbounds [4 x i8], ptr %i.brk, i64 %i.buc
  %i.bue = getelementptr inbounds [4 x i8], ptr %i.bre, i64 %i.buc
  %i.buf = load i32, ptr %i.bue, align 4, !tbaa !24
  store i32 %i.buf, ptr %i.bud, align 4, !tbaa !24
  %i.bug = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i581, 3 ; 2 uses
  %i.buh = getelementptr inbounds [4 x i8], ptr %i.brk, i64 %i.bug
  %i.bui = getelementptr inbounds [4 x i8], ptr %i.bre, i64 %i.bug
  %i.buj = load i32, ptr %i.bui, align 4, !tbaa !24
  store i32 %i.buj, ptr %i.buh, align 4, !tbaa !24
  %i.buk = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i581, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i582.3 = icmp eq i64 %i.buk, %i.brg
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i582.3, label %.loopexit2812, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580, !llvm.loop !1405

.lr.ph.i.i.i.i.i.i.i.i.i.i.i583:                  ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i578, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i583
  %.021.i.i.i.i.i.i.i.i.i.i.i584 = phi i64 [ %i.buo, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i583 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i577, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i578 ] ; 3 uses
  %i.bul = getelementptr inbounds [4 x i8], ptr %i.brk, i64 %.021.i.i.i.i.i.i.i.i.i.i.i584
  %i.bum = getelementptr inbounds [4 x i8], ptr %i.bre, i64 %.021.i.i.i.i.i.i.i.i.i.i.i584
  %i.bun = load <2 x i64>, ptr %i.bum, align 1, !tbaa !22
  store <2 x i64> %i.bun, ptr %i.bul, align 16, !tbaa !22
  %i.buo = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i584, 4 ; 2 uses
  %i.bup = icmp slt i64 %i.buo, %i.bru
  br i1 %i.bup, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i583, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i579, !llvm.loop !1355

.loopexit2812:                                    ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i580, %middle.block3094, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i579
  %i.buq = load ptr, ptr %1, align 8, !tbaa !99, !noalias !1574 ; 2 uses
  %i.bur = ptrtoaddr ptr %i.buq to i64            ; 2 uses
  %i.bus = load i64, ptr %i.a, align 8, !tbaa !100, !noalias !1574 ; 14 uses
  %i.but = getelementptr inbounds [4 x i8], ptr %i.buq, i64 %i.bus ; 13 uses
  %i.buu = add nsw i64 %i.brg, %i.brh             ; 5 uses
  %i.buv = load ptr, ptr %61, align 8, !tbaa !26, !noalias !1575 ; 2 uses
  %i.buw = ptrtoaddr ptr %i.buv to i64            ; 2 uses
  %i.bux = getelementptr inbounds [4 x i8], ptr %i.buv, i64 %i.buu ; 14 uses
  %i.buy = ptrtoint ptr %i.bux to i64             ; 2 uses
  %i.buz = and i64 %i.buy, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i594 = icmp eq i64 %i.buz, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i594, label %bb.dr, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i595

bb.dr:                                            ; preds = %.loopexit2812
  %i.bva = lshr exact i64 %i.buy, 2
  %i.bvb = sub nsw i64 0, %i.bva
  %i.bvc = and i64 %i.bvb, 3
  %i.bvd = call i64 @llvm.smin.i64(i64 %i.bvc, i64 %i.bus)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i595

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i595: ; preds = %bb.dr, %.loopexit2812
  %.0.i.i.i.i.i.i.i.i.i.i.i.i596 = phi i64 [ %i.bvd, %bb.dr ], [ %i.bus, %.loopexit2812 ] ; 11 uses
  %i.bve = sub nsw i64 %i.bus, %.0.i.i.i.i.i.i.i.i.i.i.i.i596 ; 2 uses
  %i.bvf = sdiv i64 %i.bve, 4
  %i.bvg = shl nsw i64 %i.bvf, 2                  ; 2 uses
  %i.bvh = add nsw i64 %i.bvg, %.0.i.i.i.i.i.i.i.i.i.i.i.i596 ; 6 uses
  %i.bvi = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i596, 0
  br i1 %i.bvi, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i597

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.preheader:      ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i595
  %min.iters.check3100 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i596, 20
  br i1 %min.iters.check3100, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.preheader3781, label %vector.memcheck3101

vector.memcheck3101:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.preheader
  %i.bvj = shl nsw i64 %i.buu, 2
  %i.bvk = shl i64 %i.bus, 2
  %i.bvl = add i64 %i.bvj, %i.buw
  %i.bvm = add i64 %i.bvk, %i.bur
  %i.bvn = sub i64 %i.bvm, %i.bvl
  %diff.check3102 = icmp ugt i64 %i.bvn, -32
  br i1 %diff.check3102, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.preheader3781, label %vector.ph3103

vector.ph3103:                                    ; preds = %vector.memcheck3101
  %n.vec3104 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i596, 9223372036854775800 ; 3 uses
  br label %vector.body3105

vector.body3105:                                  ; preds = %vector.body3105, %vector.ph3103
  %index3106 = phi i64 [ 0, %vector.ph3103 ], [ %index.next3109, %vector.body3105 ] ; 3 uses
  %i.bvo = getelementptr inbounds nuw [4 x i8], ptr %i.bux, i64 %index3106 ; 2 uses
  %i.bvp = getelementptr inbounds nuw [4 x i8], ptr %i.but, i64 %index3106 ; 2 uses
  %i.bvq = getelementptr inbounds nuw i8, ptr %i.bvp, i64 16
  %wide.load3107 = load <4 x i32>, ptr %i.bvp, align 4, !tbaa !24
  %wide.load3108 = load <4 x i32>, ptr %i.bvq, align 4, !tbaa !24
  %i.bvr = getelementptr inbounds nuw i8, ptr %i.bvo, i64 16
  store <4 x i32> %wide.load3107, ptr %i.bvo, align 4, !tbaa !24
  store <4 x i32> %wide.load3108, ptr %i.bvr, align 4, !tbaa !24
  %index.next3109 = add nuw i64 %index3106, 8     ; 2 uses
  %i.bvs = icmp eq i64 %index.next3109, %n.vec3104
  br i1 %i.bvs, label %middle.block3110, label %vector.body3105, !llvm.loop !1410

middle.block3110:                                 ; preds = %vector.body3105
  %cmp.n3111 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i596, %n.vec3104
  br i1 %cmp.n3111, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i597, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.preheader3781

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.preheader3781:  ; preds = %vector.memcheck3101, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.preheader, %middle.block3110
  %.05.i.i.i.i.i.i.i.i.i.i.i.i605.ph = phi i64 [ 0, %vector.memcheck3101 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.preheader ], [ %n.vec3104, %middle.block3110 ] ; 3 uses
  %xtraiter3827 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i596, 3 ; 2 uses
  %lcmp.mod3828.not = icmp eq i64 %xtraiter3827, 0
  br i1 %lcmp.mod3828.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.prol:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.preheader3781, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i605.prol = phi i64 [ %i.bvw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i605.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.preheader3781 ] ; 3 uses
  %prol.iter3829 = phi i64 [ %prol.iter3829.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.preheader3781 ]
  %i.bvt = getelementptr inbounds nuw [4 x i8], ptr %i.bux, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i605.prol
  %i.bvu = getelementptr inbounds nuw [4 x i8], ptr %i.but, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i605.prol
  %i.bvv = load i32, ptr %i.bvu, align 4, !tbaa !24
  store i32 %i.bvv, ptr %i.bvt, align 4, !tbaa !24
  %i.bvw = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i605.prol, 1 ; 2 uses
  %prol.iter3829.next = add i64 %prol.iter3829, 1 ; 2 uses
  %prol.iter3829.cmp.not = icmp eq i64 %prol.iter3829.next, %xtraiter3827
  br i1 %prol.iter3829.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.prol, !llvm.loop !1411

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.prol.loopexit:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.preheader3781
  %.05.i.i.i.i.i.i.i.i.i.i.i.i605.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i605.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.preheader3781 ], [ %i.bvw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.prol ]
  %i.bvx = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i605.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i596
  %i.bvy = icmp ugt i64 %i.bvx, -4
  br i1 %i.bvy, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i597, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604
  %.05.i.i.i.i.i.i.i.i.i.i.i.i605 = phi i64 [ %i.bwo, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i605.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.prol.loopexit ] ; 6 uses
  %i.bvz = getelementptr inbounds nuw [4 x i8], ptr %i.bux, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i605
  %i.bwa = getelementptr inbounds nuw [4 x i8], ptr %i.but, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i605
  %i.bwb = load i32, ptr %i.bwa, align 4, !tbaa !24
  store i32 %i.bwb, ptr %i.bvz, align 4, !tbaa !24
  %i.bwc = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i605, 1 ; 2 uses
  %i.bwd = getelementptr inbounds nuw [4 x i8], ptr %i.bux, i64 %i.bwc
  %i.bwe = getelementptr inbounds nuw [4 x i8], ptr %i.but, i64 %i.bwc
  %i.bwf = load i32, ptr %i.bwe, align 4, !tbaa !24
  store i32 %i.bwf, ptr %i.bwd, align 4, !tbaa !24
  %i.bwg = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i605, 2 ; 2 uses
  %i.bwh = getelementptr inbounds nuw [4 x i8], ptr %i.bux, i64 %i.bwg
  %i.bwi = getelementptr inbounds nuw [4 x i8], ptr %i.but, i64 %i.bwg
  %i.bwj = load i32, ptr %i.bwi, align 4, !tbaa !24
  store i32 %i.bwj, ptr %i.bwh, align 4, !tbaa !24
  %i.bwk = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i605, 3 ; 2 uses
  %i.bwl = getelementptr inbounds nuw [4 x i8], ptr %i.bux, i64 %i.bwk
  %i.bwm = getelementptr inbounds nuw [4 x i8], ptr %i.but, i64 %i.bwk
  %i.bwn = load i32, ptr %i.bwm, align 4, !tbaa !24
  store i32 %i.bwn, ptr %i.bwl, align 4, !tbaa !24
  %i.bwo = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i605, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i606.3 = icmp eq i64 %i.bwo, %.0.i.i.i.i.i.i.i.i.i.i.i.i596
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i606.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i597, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604, !llvm.loop !1412

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i597: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i604, %middle.block3110, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i595
  %i.bwp = icmp sgt i64 %i.bve, 3
  br i1 %i.bwp, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i602, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i598

._crit_edge.i.i.i.i.i.i.i.i.i.i.i598:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i602, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i597
  %i.bwq = icmp slt i64 %i.bvh, %i.bus
  br i1 %i.bwq, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.preheader, label %.loopexit2811

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.preheader:    ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i598
  %i.bwr = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i596, %i.bvg
  %i.bws = sub i64 %i.bus, %i.bwr                 ; 3 uses
  %min.iters.check3116 = icmp ult i64 %i.bws, 20
  br i1 %min.iters.check3116, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.preheader3780, label %vector.memcheck3117

vector.memcheck3117:                              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.preheader
  %i.bwt = shl nsw i64 %i.buu, 2
  %i.bwu = shl i64 %i.bus, 2
  %i.bwv = add i64 %i.bwt, %i.buw
  %i.bww = add i64 %i.bwu, %i.bur
  %i.bwx = sub i64 %i.bww, %i.bwv
  %diff.check3118 = icmp ugt i64 %i.bwx, -32
  br i1 %diff.check3118, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.preheader3780, label %vector.ph3119

vector.ph3119:                                    ; preds = %vector.memcheck3117
  %n.vec3120 = and i64 %i.bws, -8                 ; 3 uses
  %i.bwy = add i64 %i.bvh, %n.vec3120
  br label %vector.body3121

vector.body3121:                                  ; preds = %vector.body3121, %vector.ph3119
  %index3122 = phi i64 [ 0, %vector.ph3119 ], [ %index.next3125, %vector.body3121 ] ; 2 uses
  %i.bwz = add i64 %i.bvh, %index3122             ; 2 uses
  %i.bxa = getelementptr inbounds [4 x i8], ptr %i.bux, i64 %i.bwz ; 2 uses
  %i.bxb = getelementptr inbounds [4 x i8], ptr %i.but, i64 %i.bwz ; 2 uses
  %i.bxc = getelementptr inbounds nuw i8, ptr %i.bxb, i64 16
  %wide.load3123 = load <4 x i32>, ptr %i.bxb, align 4, !tbaa !24
  %wide.load3124 = load <4 x i32>, ptr %i.bxc, align 4, !tbaa !24
  %i.bxd = getelementptr inbounds nuw i8, ptr %i.bxa, i64 16
  store <4 x i32> %wide.load3123, ptr %i.bxa, align 4, !tbaa !24
  store <4 x i32> %wide.load3124, ptr %i.bxd, align 4, !tbaa !24
  %index.next3125 = add nuw i64 %index3122, 8     ; 2 uses
  %i.bxe = icmp eq i64 %index.next3125, %n.vec3120
  br i1 %i.bxe, label %middle.block3126, label %vector.body3121, !llvm.loop !1413

middle.block3126:                                 ; preds = %vector.body3121
  %cmp.n3127 = icmp eq i64 %i.bws, %n.vec3120
  br i1 %cmp.n3127, label %.loopexit2811, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.preheader3780

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.preheader3780: ; preds = %vector.memcheck3117, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.preheader, %middle.block3126
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i600.ph = phi i64 [ %i.bvh, %vector.memcheck3117 ], [ %i.bvh, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.preheader ], [ %i.bwy, %middle.block3126 ] ; 4 uses
  %i.bxf = sub i64 %i.bus, %.05.i18.i.i.i.i.i.i.i.i.i.i.i600.ph
  %xtraiter3830 = and i64 %i.bxf, 3               ; 2 uses
  %lcmp.mod3831.not = icmp eq i64 %xtraiter3830, 0
  br i1 %lcmp.mod3831.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.prol:         ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.preheader3780, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i600.prol = phi i64 [ %i.bxj, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i600.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.preheader3780 ] ; 3 uses
  %prol.iter3832 = phi i64 [ %prol.iter3832.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.preheader3780 ]
  %i.bxg = getelementptr inbounds [4 x i8], ptr %i.bux, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i600.prol
  %i.bxh = getelementptr inbounds [4 x i8], ptr %i.but, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i600.prol
  %i.bxi = load i32, ptr %i.bxh, align 4, !tbaa !24
  store i32 %i.bxi, ptr %i.bxg, align 4, !tbaa !24
  %i.bxj = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i600.prol, 1 ; 2 uses
  %prol.iter3832.next = add i64 %prol.iter3832, 1 ; 2 uses
  %prol.iter3832.cmp.not = icmp eq i64 %prol.iter3832.next, %xtraiter3830
  br i1 %prol.iter3832.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.prol, !llvm.loop !1414

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.preheader3780
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i600.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i600.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.preheader3780 ], [ %i.bxj, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.prol ]
  %i.bxk = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i600.ph, %i.bus
  %i.bxl = icmp ugt i64 %i.bxk, -4
  br i1 %i.bxl, label %.loopexit2811, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i600 = phi i64 [ %i.byb, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i600.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.prol.loopexit ] ; 6 uses
  %i.bxm = getelementptr inbounds [4 x i8], ptr %i.bux, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i600
  %i.bxn = getelementptr inbounds [4 x i8], ptr %i.but, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i600
  %i.bxo = load i32, ptr %i.bxn, align 4, !tbaa !24
  store i32 %i.bxo, ptr %i.bxm, align 4, !tbaa !24
  %i.bxp = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i600, 1 ; 2 uses
  %i.bxq = getelementptr inbounds [4 x i8], ptr %i.bux, i64 %i.bxp
  %i.bxr = getelementptr inbounds [4 x i8], ptr %i.but, i64 %i.bxp
  %i.bxs = load i32, ptr %i.bxr, align 4, !tbaa !24
  store i32 %i.bxs, ptr %i.bxq, align 4, !tbaa !24
  %i.bxt = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i600, 2 ; 2 uses
  %i.bxu = getelementptr inbounds [4 x i8], ptr %i.bux, i64 %i.bxt
  %i.bxv = getelementptr inbounds [4 x i8], ptr %i.but, i64 %i.bxt
  %i.bxw = load i32, ptr %i.bxv, align 4, !tbaa !24
  store i32 %i.bxw, ptr %i.bxu, align 4, !tbaa !24
  %i.bxx = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i600, 3 ; 2 uses
  %i.bxy = getelementptr inbounds [4 x i8], ptr %i.bux, i64 %i.bxx
  %i.bxz = getelementptr inbounds [4 x i8], ptr %i.but, i64 %i.bxx
  %i.bya = load i32, ptr %i.bxz, align 4, !tbaa !24
  store i32 %i.bya, ptr %i.bxy, align 4, !tbaa !24
  %i.byb = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i600, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i601.3 = icmp eq i64 %i.byb, %i.bus
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i601.3, label %.loopexit2811, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599, !llvm.loop !1415

.lr.ph.i.i.i.i.i.i.i.i.i.i.i602:                  ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i597, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i602
  %.021.i.i.i.i.i.i.i.i.i.i.i603 = phi i64 [ %i.byf, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i602 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i596, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i597 ] ; 3 uses
  %i.byc = getelementptr inbounds [4 x i8], ptr %i.bux, i64 %.021.i.i.i.i.i.i.i.i.i.i.i603
  %i.byd = getelementptr inbounds [4 x i8], ptr %i.but, i64 %.021.i.i.i.i.i.i.i.i.i.i.i603
  %i.bye = load <2 x i64>, ptr %i.byd, align 1, !tbaa !22
  store <2 x i64> %i.bye, ptr %i.byc, align 16, !tbaa !22
  %i.byf = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i603, 4 ; 2 uses
  %i.byg = icmp slt i64 %i.byf, %i.bvh
  br i1 %i.byg, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i602, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i598, !llvm.loop !1355

.loopexit2811:                                    ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i599, %middle.block3126, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i598
  %i.byh = load ptr, ptr %1, align 8, !tbaa !99, !noalias !1576 ; 2 uses
  %i.byi = ptrtoaddr ptr %i.byh to i64            ; 2 uses
  %i.byj = load i64, ptr %i.a, align 8, !tbaa !100, !noalias !1576 ; 9 uses
  %.idx2780 = shl i64 %i.byj, 3                   ; 3 uses
  %i.byk = getelementptr inbounds i8, ptr %i.byh, i64 %.idx2780 ; 13 uses
  %i.byl = load ptr, ptr %61, align 8, !tbaa !26, !noalias !1577 ; 2 uses
  %i.bym = ptrtoaddr ptr %i.byl to i64            ; 2 uses
  %i.byn = getelementptr [4 x i8], ptr %i.byl, i64 %i.buu
  %i.byo = getelementptr [4 x i8], ptr %i.byn, i64 %i.bus ; 14 uses
  %i.byp = ptrtoint ptr %i.byo to i64             ; 2 uses
  %i.byq = and i64 %i.byp, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i613 = icmp eq i64 %i.byq, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i613, label %bb.ds, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i614

bb.ds:                                            ; preds = %.loopexit2811
  %i.byr = lshr exact i64 %i.byp, 2
  %i.bys = sub nsw i64 0, %i.byr
  %i.byt = and i64 %i.bys, 3
  %i.byu = call i64 @llvm.smin.i64(i64 %i.byt, i64 %i.byj)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i614

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i614: ; preds = %bb.ds, %.loopexit2811
  %.0.i.i.i.i.i.i.i.i.i.i.i.i615 = phi i64 [ %i.byu, %bb.ds ], [ %i.byj, %.loopexit2811 ] ; 11 uses
  %i.byv = sub nsw i64 %i.byj, %.0.i.i.i.i.i.i.i.i.i.i.i.i615 ; 2 uses
  %i.byw = sdiv i64 %i.byv, 4
  %i.byx = shl nsw i64 %i.byw, 2                  ; 2 uses
  %i.byy = add nsw i64 %i.byx, %.0.i.i.i.i.i.i.i.i.i.i.i.i615 ; 6 uses
  %i.byz = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i615, 0
  br i1 %i.byz, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i616

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.preheader:      ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i614
  %min.iters.check3132 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i615, 20
  br i1 %min.iters.check3132, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.preheader3779, label %vector.memcheck3133

vector.memcheck3133:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.preheader
  %i.bza = add i64 %i.bus, %i.buu
  %i.bzb = shl i64 %i.bza, 2
  %i.bzc = add i64 %i.bzb, %i.bym
  %i.bzd = add i64 %.idx2780, %i.byi
  %i.bze = sub i64 %i.bzd, %i.bzc
  %diff.check3134 = icmp ugt i64 %i.bze, -32
  br i1 %diff.check3134, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.preheader3779, label %vector.ph3135

vector.ph3135:                                    ; preds = %vector.memcheck3133
  %n.vec3136 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i615, 9223372036854775800 ; 3 uses
  br label %vector.body3137

vector.body3137:                                  ; preds = %vector.body3137, %vector.ph3135
  %index3138 = phi i64 [ 0, %vector.ph3135 ], [ %index.next3141, %vector.body3137 ] ; 3 uses
  %i.bzf = getelementptr inbounds nuw [4 x i8], ptr %i.byo, i64 %index3138 ; 2 uses
  %i.bzg = getelementptr inbounds nuw [4 x i8], ptr %i.byk, i64 %index3138 ; 2 uses
  %i.bzh = getelementptr inbounds nuw i8, ptr %i.bzg, i64 16
  %wide.load3139 = load <4 x i32>, ptr %i.bzg, align 4, !tbaa !24
  %wide.load3140 = load <4 x i32>, ptr %i.bzh, align 4, !tbaa !24
  %i.bzi = getelementptr inbounds nuw i8, ptr %i.bzf, i64 16
  store <4 x i32> %wide.load3139, ptr %i.bzf, align 4, !tbaa !24
  store <4 x i32> %wide.load3140, ptr %i.bzi, align 4, !tbaa !24
  %index.next3141 = add nuw i64 %index3138, 8     ; 2 uses
  %i.bzj = icmp eq i64 %index.next3141, %n.vec3136
  br i1 %i.bzj, label %middle.block3142, label %vector.body3137, !llvm.loop !1420

middle.block3142:                                 ; preds = %vector.body3137
  %cmp.n3143 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i615, %n.vec3136
  br i1 %cmp.n3143, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i616, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.preheader3779

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.preheader3779:  ; preds = %vector.memcheck3133, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.preheader, %middle.block3142
  %.05.i.i.i.i.i.i.i.i.i.i.i.i624.ph = phi i64 [ 0, %vector.memcheck3133 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.preheader ], [ %n.vec3136, %middle.block3142 ] ; 3 uses
  %xtraiter3833 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i615, 3 ; 2 uses
  %lcmp.mod3834.not = icmp eq i64 %xtraiter3833, 0
  br i1 %lcmp.mod3834.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.prol:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.preheader3779, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i624.prol = phi i64 [ %i.bzn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i624.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.preheader3779 ] ; 3 uses
  %prol.iter3835 = phi i64 [ %prol.iter3835.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.preheader3779 ]
  %i.bzk = getelementptr inbounds nuw [4 x i8], ptr %i.byo, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i624.prol
  %i.bzl = getelementptr inbounds nuw [4 x i8], ptr %i.byk, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i624.prol
  %i.bzm = load i32, ptr %i.bzl, align 4, !tbaa !24
  store i32 %i.bzm, ptr %i.bzk, align 4, !tbaa !24
  %i.bzn = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i624.prol, 1 ; 2 uses
  %prol.iter3835.next = add i64 %prol.iter3835, 1 ; 2 uses
  %prol.iter3835.cmp.not = icmp eq i64 %prol.iter3835.next, %xtraiter3833
  br i1 %prol.iter3835.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.prol, !llvm.loop !1421

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.prol.loopexit:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.preheader3779
  %.05.i.i.i.i.i.i.i.i.i.i.i.i624.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i624.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.preheader3779 ], [ %i.bzn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.prol ]
  %i.bzo = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i624.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i615
  %i.bzp = icmp ugt i64 %i.bzo, -4
  br i1 %i.bzp, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i616, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623
  %.05.i.i.i.i.i.i.i.i.i.i.i.i624 = phi i64 [ %i.caf, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i624.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.prol.loopexit ] ; 6 uses
  %i.bzq = getelementptr inbounds nuw [4 x i8], ptr %i.byo, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i624
  %i.bzr = getelementptr inbounds nuw [4 x i8], ptr %i.byk, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i624
  %i.bzs = load i32, ptr %i.bzr, align 4, !tbaa !24
  store i32 %i.bzs, ptr %i.bzq, align 4, !tbaa !24
  %i.bzt = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i624, 1 ; 2 uses
  %i.bzu = getelementptr inbounds nuw [4 x i8], ptr %i.byo, i64 %i.bzt
  %i.bzv = getelementptr inbounds nuw [4 x i8], ptr %i.byk, i64 %i.bzt
  %i.bzw = load i32, ptr %i.bzv, align 4, !tbaa !24
  store i32 %i.bzw, ptr %i.bzu, align 4, !tbaa !24
  %i.bzx = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i624, 2 ; 2 uses
  %i.bzy = getelementptr inbounds nuw [4 x i8], ptr %i.byo, i64 %i.bzx
  %i.bzz = getelementptr inbounds nuw [4 x i8], ptr %i.byk, i64 %i.bzx
  %i.caa = load i32, ptr %i.bzz, align 4, !tbaa !24
  store i32 %i.caa, ptr %i.bzy, align 4, !tbaa !24
  %i.cab = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i624, 3 ; 2 uses
  %i.cac = getelementptr inbounds nuw [4 x i8], ptr %i.byo, i64 %i.cab
  %i.cad = getelementptr inbounds nuw [4 x i8], ptr %i.byk, i64 %i.cab
  %i.cae = load i32, ptr %i.cad, align 4, !tbaa !24
  store i32 %i.cae, ptr %i.cac, align 4, !tbaa !24
  %i.caf = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i624, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i625.3 = icmp eq i64 %i.caf, %.0.i.i.i.i.i.i.i.i.i.i.i.i615
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i625.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i616, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623, !llvm.loop !1422

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i616: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i623, %middle.block3142, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i614
  %i.cag = icmp sgt i64 %i.byv, 3
  br i1 %i.cag, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i621, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i617

._crit_edge.i.i.i.i.i.i.i.i.i.i.i617:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i621, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i616
  %i.cah = icmp slt i64 %i.byy, %i.byj
  br i1 %i.cah, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.preheader, label %.loopexit2810

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.preheader:    ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i617
  %i.cai = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i615, %i.byx
  %i.caj = sub i64 %i.byj, %i.cai                 ; 3 uses
  %min.iters.check3148 = icmp ult i64 %i.caj, 36
  br i1 %min.iters.check3148, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.preheader3778, label %vector.memcheck3149

vector.memcheck3149:                              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.preheader
  %i.cak = add i64 %i.bus, %i.brg
  %i.cal = add i64 %i.cak, %i.bnu
  %i.cam = add i64 %i.cal, %i.bkf
  %i.can = add i64 %i.cam, %i.bgq
  %i.cao = add i64 %i.can, %i.bcz
  %i.cap = add i64 %i.cao, %i.ayt
  %i.caq = add i64 %i.cap, %i.azj
  %i.car = shl i64 %i.caq, 2
  %i.cas = add i64 %i.car, %i.bym
  %i.cat = add i64 %.idx2780, %i.byi
  %i.cau = sub i64 %i.cat, %i.cas
  %diff.check3150 = icmp ugt i64 %i.cau, -32
  br i1 %diff.check3150, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.preheader3778, label %vector.ph3151

vector.ph3151:                                    ; preds = %vector.memcheck3149
  %n.vec3152 = and i64 %i.caj, -8                 ; 3 uses
  %i.cav = add i64 %i.byy, %n.vec3152
  br label %vector.body3153

vector.body3153:                                  ; preds = %vector.body3153, %vector.ph3151
  %index3154 = phi i64 [ 0, %vector.ph3151 ], [ %index.next3157, %vector.body3153 ] ; 2 uses
  %i.caw = add i64 %i.byy, %index3154             ; 2 uses
  %i.cax = getelementptr inbounds [4 x i8], ptr %i.byo, i64 %i.caw ; 2 uses
  %i.cay = getelementptr inbounds [4 x i8], ptr %i.byk, i64 %i.caw ; 2 uses
  %i.caz = getelementptr inbounds nuw i8, ptr %i.cay, i64 16
  %wide.load3155 = load <4 x i32>, ptr %i.cay, align 4, !tbaa !24
  %wide.load3156 = load <4 x i32>, ptr %i.caz, align 4, !tbaa !24
  %i.cba = getelementptr inbounds nuw i8, ptr %i.cax, i64 16
  store <4 x i32> %wide.load3155, ptr %i.cax, align 4, !tbaa !24
  store <4 x i32> %wide.load3156, ptr %i.cba, align 4, !tbaa !24
  %index.next3157 = add nuw i64 %index3154, 8     ; 2 uses
  %i.cbb = icmp eq i64 %index.next3157, %n.vec3152
  br i1 %i.cbb, label %middle.block3158, label %vector.body3153, !llvm.loop !1423

middle.block3158:                                 ; preds = %vector.body3153
  %cmp.n3159 = icmp eq i64 %i.caj, %n.vec3152
  br i1 %cmp.n3159, label %.loopexit2810, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.preheader3778

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.preheader3778: ; preds = %vector.memcheck3149, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.preheader, %middle.block3158
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i619.ph = phi i64 [ %i.byy, %vector.memcheck3149 ], [ %i.byy, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.preheader ], [ %i.cav, %middle.block3158 ] ; 4 uses
  %i.cbc = sub i64 %i.byj, %.05.i18.i.i.i.i.i.i.i.i.i.i.i619.ph
  %xtraiter3836 = and i64 %i.cbc, 3               ; 2 uses
  %lcmp.mod3837.not = icmp eq i64 %xtraiter3836, 0
  br i1 %lcmp.mod3837.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.prol:         ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.preheader3778, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i619.prol = phi i64 [ %i.cbg, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i619.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.preheader3778 ] ; 3 uses
  %prol.iter3838 = phi i64 [ %prol.iter3838.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.preheader3778 ]
  %i.cbd = getelementptr inbounds [4 x i8], ptr %i.byo, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i619.prol
  %i.cbe = getelementptr inbounds [4 x i8], ptr %i.byk, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i619.prol
  %i.cbf = load i32, ptr %i.cbe, align 4, !tbaa !24
  store i32 %i.cbf, ptr %i.cbd, align 4, !tbaa !24
  %i.cbg = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i619.prol, 1 ; 2 uses
  %prol.iter3838.next = add i64 %prol.iter3838, 1 ; 2 uses
  %prol.iter3838.cmp.not = icmp eq i64 %prol.iter3838.next, %xtraiter3836
  br i1 %prol.iter3838.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.prol, !llvm.loop !1424

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.preheader3778
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i619.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i619.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.preheader3778 ], [ %i.cbg, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.prol ]
  %i.cbh = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i619.ph, %i.byj
  %i.cbi = icmp ugt i64 %i.cbh, -4
  br i1 %i.cbi, label %.loopexit2810, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i619 = phi i64 [ %i.cby, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i619.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.prol.loopexit ] ; 6 uses
  %i.cbj = getelementptr inbounds [4 x i8], ptr %i.byo, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i619
  %i.cbk = getelementptr inbounds [4 x i8], ptr %i.byk, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i619
  %i.cbl = load i32, ptr %i.cbk, align 4, !tbaa !24
  store i32 %i.cbl, ptr %i.cbj, align 4, !tbaa !24
  %i.cbm = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i619, 1 ; 2 uses
  %i.cbn = getelementptr inbounds [4 x i8], ptr %i.byo, i64 %i.cbm
  %i.cbo = getelementptr inbounds [4 x i8], ptr %i.byk, i64 %i.cbm
  %i.cbp = load i32, ptr %i.cbo, align 4, !tbaa !24
  store i32 %i.cbp, ptr %i.cbn, align 4, !tbaa !24
  %i.cbq = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i619, 2 ; 2 uses
  %i.cbr = getelementptr inbounds [4 x i8], ptr %i.byo, i64 %i.cbq
  %i.cbs = getelementptr inbounds [4 x i8], ptr %i.byk, i64 %i.cbq
  %i.cbt = load i32, ptr %i.cbs, align 4, !tbaa !24
  store i32 %i.cbt, ptr %i.cbr, align 4, !tbaa !24
  %i.cbu = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i619, 3 ; 2 uses
  %i.cbv = getelementptr inbounds [4 x i8], ptr %i.byo, i64 %i.cbu
  %i.cbw = getelementptr inbounds [4 x i8], ptr %i.byk, i64 %i.cbu
  %i.cbx = load i32, ptr %i.cbw, align 4, !tbaa !24
  store i32 %i.cbx, ptr %i.cbv, align 4, !tbaa !24
  %i.cby = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i619, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i620.3 = icmp eq i64 %i.cby, %i.byj
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i620.3, label %.loopexit2810, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618, !llvm.loop !1425

.lr.ph.i.i.i.i.i.i.i.i.i.i.i621:                  ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i616, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i621
  %.021.i.i.i.i.i.i.i.i.i.i.i622 = phi i64 [ %i.ccc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i621 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i615, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i616 ] ; 3 uses
  %i.cbz = getelementptr inbounds [4 x i8], ptr %i.byo, i64 %.021.i.i.i.i.i.i.i.i.i.i.i622
  %i.cca = getelementptr inbounds [4 x i8], ptr %i.byk, i64 %.021.i.i.i.i.i.i.i.i.i.i.i622
  %i.ccb = load <2 x i64>, ptr %i.cca, align 1, !tbaa !22
  store <2 x i64> %i.ccb, ptr %i.cbz, align 16, !tbaa !22
  %i.ccc = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i622, 4 ; 2 uses
  %i.ccd = icmp slt i64 %i.ccc, %i.byy
  br i1 %i.ccd, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i621, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i617, !llvm.loop !1355

.loopexit2810:                                    ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i618, %middle.block3158, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i617
  %i.cce = load ptr, ptr %1, align 8, !tbaa !99, !noalias !1578
  %i.ccf = load i64, ptr %i.a, align 8, !tbaa !100, !noalias !1578 ; 8 uses
  %i.ccg = getelementptr inbounds [4 x i8], ptr %i.cce, i64 %i.ccf
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #14, !noalias !1579
  call void @llvm.experimental.noalias.scope.decl(metadata !1580)
  %i.cch = load ptr, ptr %62, align 8, !tbaa !26, !noalias !1581 ; 2 uses
  %i.cci = getelementptr inbounds nuw i8, ptr %62, i64 8
  %i.ccj = load i64, ptr %i.cci, align 8, !tbaa !27, !noalias !1581 ; 2 uses
  store ptr %i.cch, ptr %17, align 8, !tbaa !30, !alias.scope !1580, !noalias !1579
  %i.cck = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 %i.ccf, ptr %i.cck, align 8, !tbaa !31, !alias.scope !1580, !noalias !1579
  %i.ccl = getelementptr inbounds nuw i8, ptr %17, i64 16
  store i64 1, ptr %i.ccl, align 8, !tbaa !31, !alias.scope !1580, !noalias !1579
  %i.ccm = getelementptr inbounds nuw i8, ptr %17, i64 24
  store ptr %62, ptr %i.ccm, align 8, !tbaa !33, !alias.scope !1580, !noalias !1579
  %i.ccn = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.cco = getelementptr inbounds nuw i8, ptr %17, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ccn, i8 0, i64 16, i1 false), !noalias !1579
  store i64 %i.ccj, ptr %i.cco, align 8, !tbaa !36, !alias.scope !1580, !noalias !1579
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #14, !noalias !1579
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14, !noalias !1579
  store ptr %i.ccg, ptr %13, align 8, !tbaa !102, !noalias !1579
  %i.ccp = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 %i.ccf, ptr %i.ccp, align 8, !tbaa !31, !noalias !1579
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #14, !noalias !1579
  store ptr %i.cch, ptr %14, align 8, !tbaa !41, !noalias !1579
  %i.ccq = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 %i.ccj, ptr %i.ccq, align 8, !tbaa !31, !noalias !1579
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #14, !noalias !1579
  store ptr %14, ptr %15, align 8, !tbaa !43, !noalias !1579
  %i.ccr = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %13, ptr %i.ccr, align 8, !tbaa !1518, !noalias !1579
  %i.ccs = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %16, ptr %i.ccs, align 8, !tbaa !46, !noalias !1579
  %i.cct = getelementptr inbounds nuw i8, ptr %15, i64 24
  store ptr %17, ptr %i.cct, align 8, !tbaa !48, !noalias !1579
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS4_IKNS5_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSF_(ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.dt unwind label %bb.ef

bb.dt:                                            ; preds = %.loopexit2810
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #14, !noalias !1579
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14, !noalias !1579
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14, !noalias !1579
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #14, !noalias !1579
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #14, !noalias !1579
  %i.ccu = load ptr, ptr %1, align 8, !tbaa !99, !noalias !1582 ; 14 uses
  %i.ccv = ptrtoaddr ptr %i.ccu to i64            ; 2 uses
  %i.ccw = load i64, ptr %i.a, align 8, !tbaa !100, !noalias !1582 ; 10 uses
  %i.ccx = load ptr, ptr %62, align 8, !tbaa !26, !noalias !1583 ; 2 uses
  %i.ccy = ptrtoaddr ptr %i.ccx to i64            ; 2 uses
  %i.ccz = getelementptr inbounds [4 x i8], ptr %i.ccx, i64 %i.ccf ; 14 uses
  %i.cda = ptrtoint ptr %i.ccz to i64             ; 2 uses
  %i.cdb = and i64 %i.cda, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i634 = icmp eq i64 %i.cdb, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i634, label %bb.du, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i635

bb.du:                                            ; preds = %bb.dt
  %i.cdc = lshr exact i64 %i.cda, 2
  %i.cdd = sub nsw i64 0, %i.cdc
  %i.cde = and i64 %i.cdd, 3
  %i.cdf = call i64 @llvm.smin.i64(i64 %i.cde, i64 %i.ccw)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i635

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i635: ; preds = %bb.du, %bb.dt
  %.0.i.i.i.i.i.i.i.i.i.i.i.i636 = phi i64 [ %i.cdf, %bb.du ], [ %i.ccw, %bb.dt ] ; 11 uses
  %i.cdg = sub nsw i64 %i.ccw, %.0.i.i.i.i.i.i.i.i.i.i.i.i636 ; 2 uses
  %i.cdh = sdiv i64 %i.cdg, 4
  %i.cdi = shl nsw i64 %i.cdh, 2                  ; 2 uses
  %i.cdj = add nsw i64 %i.cdi, %.0.i.i.i.i.i.i.i.i.i.i.i.i636 ; 6 uses
  %i.cdk = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i636, 0
  br i1 %i.cdk, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i637

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.preheader:      ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i635
  %min.iters.check3164 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i636, 16
  br i1 %min.iters.check3164, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.preheader3777, label %vector.memcheck3165

vector.memcheck3165:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.preheader
  %i.cdl = shl nsw i64 %i.ccf, 2
  %i.cdm = add i64 %i.cdl, %i.ccy
  %i.cdn = sub i64 %i.ccv, %i.cdm
  %diff.check3166 = icmp ugt i64 %i.cdn, -32
  br i1 %diff.check3166, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.preheader3777, label %vector.ph3167

vector.ph3167:                                    ; preds = %vector.memcheck3165
  %n.vec3168 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i636, 9223372036854775800 ; 3 uses
  br label %vector.body3169

vector.body3169:                                  ; preds = %vector.body3169, %vector.ph3167
  %index3170 = phi i64 [ 0, %vector.ph3167 ], [ %index.next3173, %vector.body3169 ] ; 3 uses
  %i.cdo = getelementptr inbounds nuw [4 x i8], ptr %i.ccz, i64 %index3170 ; 2 uses
  %i.cdp = getelementptr inbounds nuw [4 x i8], ptr %i.ccu, i64 %index3170 ; 2 uses
  %i.cdq = getelementptr inbounds nuw i8, ptr %i.cdp, i64 16
  %wide.load3171 = load <4 x i32>, ptr %i.cdp, align 4, !tbaa !24
  %wide.load3172 = load <4 x i32>, ptr %i.cdq, align 4, !tbaa !24
  %i.cdr = getelementptr inbounds nuw i8, ptr %i.cdo, i64 16
  store <4 x i32> %wide.load3171, ptr %i.cdo, align 4, !tbaa !24
  store <4 x i32> %wide.load3172, ptr %i.cdr, align 4, !tbaa !24
  %index.next3173 = add nuw i64 %index3170, 8     ; 2 uses
  %i.cds = icmp eq i64 %index.next3173, %n.vec3168
  br i1 %i.cds, label %middle.block3174, label %vector.body3169, !llvm.loop !1436

middle.block3174:                                 ; preds = %vector.body3169
  %cmp.n3175 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i636, %n.vec3168
  br i1 %cmp.n3175, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i637, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.preheader3777

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.preheader3777:  ; preds = %vector.memcheck3165, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.preheader, %middle.block3174
  %.05.i.i.i.i.i.i.i.i.i.i.i.i645.ph = phi i64 [ 0, %vector.memcheck3165 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.preheader ], [ %n.vec3168, %middle.block3174 ] ; 3 uses
  %xtraiter3839 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i636, 3 ; 2 uses
  %lcmp.mod3840.not = icmp eq i64 %xtraiter3839, 0
  br i1 %lcmp.mod3840.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.prol:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.preheader3777, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i645.prol = phi i64 [ %i.cdw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i645.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.preheader3777 ] ; 3 uses
  %prol.iter3841 = phi i64 [ %prol.iter3841.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.preheader3777 ]
  %i.cdt = getelementptr inbounds nuw [4 x i8], ptr %i.ccz, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i645.prol
  %i.cdu = getelementptr inbounds nuw [4 x i8], ptr %i.ccu, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i645.prol
  %i.cdv = load i32, ptr %i.cdu, align 4, !tbaa !24
  store i32 %i.cdv, ptr %i.cdt, align 4, !tbaa !24
  %i.cdw = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i645.prol, 1 ; 2 uses
  %prol.iter3841.next = add i64 %prol.iter3841, 1 ; 2 uses
  %prol.iter3841.cmp.not = icmp eq i64 %prol.iter3841.next, %xtraiter3839
  br i1 %prol.iter3841.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.prol, !llvm.loop !1437

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.prol.loopexit:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.preheader3777
  %.05.i.i.i.i.i.i.i.i.i.i.i.i645.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i645.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.preheader3777 ], [ %i.cdw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.prol ]
  %i.cdx = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i645.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i636
  %i.cdy = icmp ugt i64 %i.cdx, -4
  br i1 %i.cdy, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i637, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644
  %.05.i.i.i.i.i.i.i.i.i.i.i.i645 = phi i64 [ %i.ceo, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i645.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.prol.loopexit ] ; 6 uses
  %i.cdz = getelementptr inbounds nuw [4 x i8], ptr %i.ccz, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i645
  %i.cea = getelementptr inbounds nuw [4 x i8], ptr %i.ccu, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i645
  %i.ceb = load i32, ptr %i.cea, align 4, !tbaa !24
  store i32 %i.ceb, ptr %i.cdz, align 4, !tbaa !24
  %i.cec = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i645, 1 ; 2 uses
  %i.ced = getelementptr inbounds nuw [4 x i8], ptr %i.ccz, i64 %i.cec
  %i.cee = getelementptr inbounds nuw [4 x i8], ptr %i.ccu, i64 %i.cec
  %i.cef = load i32, ptr %i.cee, align 4, !tbaa !24
  store i32 %i.cef, ptr %i.ced, align 4, !tbaa !24
  %i.ceg = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i645, 2 ; 2 uses
  %i.ceh = getelementptr inbounds nuw [4 x i8], ptr %i.ccz, i64 %i.ceg
  %i.cei = getelementptr inbounds nuw [4 x i8], ptr %i.ccu, i64 %i.ceg
  %i.cej = load i32, ptr %i.cei, align 4, !tbaa !24
  store i32 %i.cej, ptr %i.ceh, align 4, !tbaa !24
  %i.cek = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i645, 3 ; 2 uses
  %i.cel = getelementptr inbounds nuw [4 x i8], ptr %i.ccz, i64 %i.cek
  %i.cem = getelementptr inbounds nuw [4 x i8], ptr %i.ccu, i64 %i.cek
  %i.cen = load i32, ptr %i.cem, align 4, !tbaa !24
  store i32 %i.cen, ptr %i.cel, align 4, !tbaa !24
  %i.ceo = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i645, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i646.3 = icmp eq i64 %i.ceo, %.0.i.i.i.i.i.i.i.i.i.i.i.i636
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i646.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i637, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644, !llvm.loop !1438

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i637: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i644, %middle.block3174, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i635
  %i.cep = icmp sgt i64 %i.cdg, 3
  br i1 %i.cep, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i642, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i638

._crit_edge.i.i.i.i.i.i.i.i.i.i.i638:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i642, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i637
  %i.ceq = icmp slt i64 %i.cdj, %i.ccw
  br i1 %i.ceq, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.preheader, label %.loopexit2809

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.preheader:    ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i638
  %i.cer = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i636, %i.cdi
  %i.ces = sub i64 %i.ccw, %i.cer                 ; 3 uses
  %min.iters.check3180 = icmp ult i64 %i.ces, 16
  br i1 %min.iters.check3180, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.preheader3776, label %vector.memcheck3181

vector.memcheck3181:                              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.preheader
  %i.cet = shl nsw i64 %i.ccf, 2
  %i.ceu = add i64 %i.cet, %i.ccy
  %i.cev = sub i64 %i.ccv, %i.ceu
  %diff.check3182 = icmp ugt i64 %i.cev, -32
  br i1 %diff.check3182, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.preheader3776, label %vector.ph3183

vector.ph3183:                                    ; preds = %vector.memcheck3181
  %n.vec3184 = and i64 %i.ces, -8                 ; 3 uses
  %i.cew = add i64 %i.cdj, %n.vec3184
  br label %vector.body3185

vector.body3185:                                  ; preds = %vector.body3185, %vector.ph3183
  %index3186 = phi i64 [ 0, %vector.ph3183 ], [ %index.next3189, %vector.body3185 ] ; 2 uses
  %i.cex = add i64 %i.cdj, %index3186             ; 2 uses
  %i.cey = getelementptr inbounds [4 x i8], ptr %i.ccz, i64 %i.cex ; 2 uses
  %i.cez = getelementptr inbounds [4 x i8], ptr %i.ccu, i64 %i.cex ; 2 uses
  %i.cfa = getelementptr inbounds nuw i8, ptr %i.cez, i64 16
  %wide.load3187 = load <4 x i32>, ptr %i.cez, align 4, !tbaa !24
  %wide.load3188 = load <4 x i32>, ptr %i.cfa, align 4, !tbaa !24
  %i.cfb = getelementptr inbounds nuw i8, ptr %i.cey, i64 16
  store <4 x i32> %wide.load3187, ptr %i.cey, align 4, !tbaa !24
  store <4 x i32> %wide.load3188, ptr %i.cfb, align 4, !tbaa !24
  %index.next3189 = add nuw i64 %index3186, 8     ; 2 uses
  %i.cfc = icmp eq i64 %index.next3189, %n.vec3184
  br i1 %i.cfc, label %middle.block3190, label %vector.body3185, !llvm.loop !1439

middle.block3190:                                 ; preds = %vector.body3185
  %cmp.n3191 = icmp eq i64 %i.ces, %n.vec3184
  br i1 %cmp.n3191, label %.loopexit2809, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.preheader3776

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.preheader3776: ; preds = %vector.memcheck3181, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.preheader, %middle.block3190
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i640.ph = phi i64 [ %i.cdj, %vector.memcheck3181 ], [ %i.cdj, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.preheader ], [ %i.cew, %middle.block3190 ] ; 4 uses
  %i.cfd = sub i64 %i.ccw, %.05.i18.i.i.i.i.i.i.i.i.i.i.i640.ph
  %xtraiter3842 = and i64 %i.cfd, 3               ; 2 uses
  %lcmp.mod3843.not = icmp eq i64 %xtraiter3842, 0
  br i1 %lcmp.mod3843.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.prol:         ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.preheader3776, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i640.prol = phi i64 [ %i.cfh, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i640.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.preheader3776 ] ; 3 uses
  %prol.iter3844 = phi i64 [ %prol.iter3844.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.preheader3776 ]
  %i.cfe = getelementptr inbounds [4 x i8], ptr %i.ccz, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i640.prol
  %i.cff = getelementptr inbounds [4 x i8], ptr %i.ccu, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i640.prol
  %i.cfg = load i32, ptr %i.cff, align 4, !tbaa !24
  store i32 %i.cfg, ptr %i.cfe, align 4, !tbaa !24
  %i.cfh = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i640.prol, 1 ; 2 uses
  %prol.iter3844.next = add i64 %prol.iter3844, 1 ; 2 uses
  %prol.iter3844.cmp.not = icmp eq i64 %prol.iter3844.next, %xtraiter3842
  br i1 %prol.iter3844.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.prol, !llvm.loop !1440

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.preheader3776
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i640.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i640.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.preheader3776 ], [ %i.cfh, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.prol ]
  %i.cfi = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i640.ph, %i.ccw
  %i.cfj = icmp ugt i64 %i.cfi, -4
  br i1 %i.cfj, label %.loopexit2809, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i640 = phi i64 [ %i.cfz, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i640.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.prol.loopexit ] ; 6 uses
  %i.cfk = getelementptr inbounds [4 x i8], ptr %i.ccz, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i640
  %i.cfl = getelementptr inbounds [4 x i8], ptr %i.ccu, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i640
  %i.cfm = load i32, ptr %i.cfl, align 4, !tbaa !24
  store i32 %i.cfm, ptr %i.cfk, align 4, !tbaa !24
  %i.cfn = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i640, 1 ; 2 uses
  %i.cfo = getelementptr inbounds [4 x i8], ptr %i.ccz, i64 %i.cfn
  %i.cfp = getelementptr inbounds [4 x i8], ptr %i.ccu, i64 %i.cfn
  %i.cfq = load i32, ptr %i.cfp, align 4, !tbaa !24
  store i32 %i.cfq, ptr %i.cfo, align 4, !tbaa !24
  %i.cfr = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i640, 2 ; 2 uses
  %i.cfs = getelementptr inbounds [4 x i8], ptr %i.ccz, i64 %i.cfr
  %i.cft = getelementptr inbounds [4 x i8], ptr %i.ccu, i64 %i.cfr
  %i.cfu = load i32, ptr %i.cft, align 4, !tbaa !24
  store i32 %i.cfu, ptr %i.cfs, align 4, !tbaa !24
  %i.cfv = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i640, 3 ; 2 uses
  %i.cfw = getelementptr inbounds [4 x i8], ptr %i.ccz, i64 %i.cfv
  %i.cfx = getelementptr inbounds [4 x i8], ptr %i.ccu, i64 %i.cfv
  %i.cfy = load i32, ptr %i.cfx, align 4, !tbaa !24
  store i32 %i.cfy, ptr %i.cfw, align 4, !tbaa !24
  %i.cfz = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i640, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i641.3 = icmp eq i64 %i.cfz, %i.ccw
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i641.3, label %.loopexit2809, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639, !llvm.loop !1441

.lr.ph.i.i.i.i.i.i.i.i.i.i.i642:                  ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i637, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i642
  %.021.i.i.i.i.i.i.i.i.i.i.i643 = phi i64 [ %i.cgd, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i642 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i636, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i637 ] ; 3 uses
  %i.cga = getelementptr inbounds [4 x i8], ptr %i.ccz, i64 %.021.i.i.i.i.i.i.i.i.i.i.i643
  %i.cgb = getelementptr inbounds [4 x i8], ptr %i.ccu, i64 %.021.i.i.i.i.i.i.i.i.i.i.i643
  %i.cgc = load <2 x i64>, ptr %i.cgb, align 1, !tbaa !22
  store <2 x i64> %i.cgc, ptr %i.cga, align 16, !tbaa !22
  %i.cgd = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i643, 4 ; 2 uses
  %i.cge = icmp slt i64 %i.cgd, %i.cdj
  br i1 %i.cge, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i642, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i638, !llvm.loop !1355

.loopexit2809:                                    ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i639, %middle.block3190, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i638
  %i.cgf = load ptr, ptr %1, align 8, !tbaa !99, !noalias !1584 ; 2 uses
  %i.cgg = ptrtoaddr ptr %i.cgf to i64            ; 2 uses
  %i.cgh = load i64, ptr %i.a, align 8, !tbaa !100, !noalias !1584 ; 11 uses
  %.idx2781 = shl i64 %i.cgh, 3                   ; 3 uses
  %i.cgi = getelementptr inbounds i8, ptr %i.cgf, i64 %.idx2781 ; 13 uses
  %i.cgj = add nsw i64 %i.ccw, %i.ccf             ; 4 uses
  %i.cgk = load ptr, ptr %62, align 8, !tbaa !26, !noalias !1585 ; 2 uses
  %i.cgl = ptrtoaddr ptr %i.cgk to i64            ; 2 uses
  %i.cgm = getelementptr inbounds [4 x i8], ptr %i.cgk, i64 %i.cgj ; 14 uses
  %i.cgn = ptrtoint ptr %i.cgm to i64             ; 2 uses
  %i.cgo = and i64 %i.cgn, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i653 = icmp eq i64 %i.cgo, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i653, label %bb.dv, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i654

bb.dv:                                            ; preds = %.loopexit2809
  %i.cgp = lshr exact i64 %i.cgn, 2
  %i.cgq = sub nsw i64 0, %i.cgp
  %i.cgr = and i64 %i.cgq, 3
  %i.cgs = call i64 @llvm.smin.i64(i64 %i.cgr, i64 %i.cgh)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i654

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i654: ; preds = %bb.dv, %.loopexit2809
  %.0.i.i.i.i.i.i.i.i.i.i.i.i655 = phi i64 [ %i.cgs, %bb.dv ], [ %i.cgh, %.loopexit2809 ] ; 11 uses
  %i.cgt = sub nsw i64 %i.cgh, %.0.i.i.i.i.i.i.i.i.i.i.i.i655 ; 2 uses
  %i.cgu = sdiv i64 %i.cgt, 4
  %i.cgv = shl nsw i64 %i.cgu, 2                  ; 2 uses
  %i.cgw = add nsw i64 %i.cgv, %.0.i.i.i.i.i.i.i.i.i.i.i.i655 ; 6 uses
  %i.cgx = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i655, 0
  br i1 %i.cgx, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i656

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.preheader:      ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i654
  %min.iters.check3196 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i655, 16
  br i1 %min.iters.check3196, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.preheader3775, label %vector.memcheck3197

vector.memcheck3197:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.preheader
  %i.cgy = shl nsw i64 %i.cgj, 2
  %i.cgz = add i64 %i.cgy, %i.cgl
  %i.cha = add i64 %.idx2781, %i.cgg
  %i.chb = sub i64 %i.cha, %i.cgz
  %diff.check3198 = icmp ugt i64 %i.chb, -32
  br i1 %diff.check3198, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.preheader3775, label %vector.ph3199

vector.ph3199:                                    ; preds = %vector.memcheck3197
  %n.vec3200 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i655, 9223372036854775800 ; 3 uses
  br label %vector.body3201

vector.body3201:                                  ; preds = %vector.body3201, %vector.ph3199
  %index3202 = phi i64 [ 0, %vector.ph3199 ], [ %index.next3205, %vector.body3201 ] ; 3 uses
  %i.chc = getelementptr inbounds nuw [4 x i8], ptr %i.cgm, i64 %index3202 ; 2 uses
  %i.chd = getelementptr inbounds nuw [4 x i8], ptr %i.cgi, i64 %index3202 ; 2 uses
  %i.che = getelementptr inbounds nuw i8, ptr %i.chd, i64 16
  %wide.load3203 = load <4 x i32>, ptr %i.chd, align 4, !tbaa !24
  %wide.load3204 = load <4 x i32>, ptr %i.che, align 4, !tbaa !24
  %i.chf = getelementptr inbounds nuw i8, ptr %i.chc, i64 16
  store <4 x i32> %wide.load3203, ptr %i.chc, align 4, !tbaa !24
  store <4 x i32> %wide.load3204, ptr %i.chf, align 4, !tbaa !24
  %index.next3205 = add nuw i64 %index3202, 8     ; 2 uses
  %i.chg = icmp eq i64 %index.next3205, %n.vec3200
  br i1 %i.chg, label %middle.block3206, label %vector.body3201, !llvm.loop !1446

middle.block3206:                                 ; preds = %vector.body3201
  %cmp.n3207 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i655, %n.vec3200
  br i1 %cmp.n3207, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i656, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.preheader3775

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.preheader3775:  ; preds = %vector.memcheck3197, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.preheader, %middle.block3206
  %.05.i.i.i.i.i.i.i.i.i.i.i.i664.ph = phi i64 [ 0, %vector.memcheck3197 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.preheader ], [ %n.vec3200, %middle.block3206 ] ; 3 uses
  %xtraiter3845 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i655, 3 ; 2 uses
  %lcmp.mod3846.not = icmp eq i64 %xtraiter3845, 0
  br i1 %lcmp.mod3846.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.prol:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.preheader3775, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i664.prol = phi i64 [ %i.chk, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i664.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.preheader3775 ] ; 3 uses
  %prol.iter3847 = phi i64 [ %prol.iter3847.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.preheader3775 ]
  %i.chh = getelementptr inbounds nuw [4 x i8], ptr %i.cgm, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i664.prol
  %i.chi = getelementptr inbounds nuw [4 x i8], ptr %i.cgi, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i664.prol
  %i.chj = load i32, ptr %i.chi, align 4, !tbaa !24
  store i32 %i.chj, ptr %i.chh, align 4, !tbaa !24
  %i.chk = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i664.prol, 1 ; 2 uses
  %prol.iter3847.next = add i64 %prol.iter3847, 1 ; 2 uses
  %prol.iter3847.cmp.not = icmp eq i64 %prol.iter3847.next, %xtraiter3845
  br i1 %prol.iter3847.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.prol, !llvm.loop !1447

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.prol.loopexit:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.preheader3775
  %.05.i.i.i.i.i.i.i.i.i.i.i.i664.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i664.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.preheader3775 ], [ %i.chk, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.prol ]
  %i.chl = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i664.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i655
  %i.chm = icmp ugt i64 %i.chl, -4
  br i1 %i.chm, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i656, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663
  %.05.i.i.i.i.i.i.i.i.i.i.i.i664 = phi i64 [ %i.cic, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i664.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.prol.loopexit ] ; 6 uses
  %i.chn = getelementptr inbounds nuw [4 x i8], ptr %i.cgm, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i664
  %i.cho = getelementptr inbounds nuw [4 x i8], ptr %i.cgi, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i664
  %i.chp = load i32, ptr %i.cho, align 4, !tbaa !24
  store i32 %i.chp, ptr %i.chn, align 4, !tbaa !24
  %i.chq = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i664, 1 ; 2 uses
  %i.chr = getelementptr inbounds nuw [4 x i8], ptr %i.cgm, i64 %i.chq
  %i.chs = getelementptr inbounds nuw [4 x i8], ptr %i.cgi, i64 %i.chq
  %i.cht = load i32, ptr %i.chs, align 4, !tbaa !24
  store i32 %i.cht, ptr %i.chr, align 4, !tbaa !24
  %i.chu = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i664, 2 ; 2 uses
  %i.chv = getelementptr inbounds nuw [4 x i8], ptr %i.cgm, i64 %i.chu
  %i.chw = getelementptr inbounds nuw [4 x i8], ptr %i.cgi, i64 %i.chu
  %i.chx = load i32, ptr %i.chw, align 4, !tbaa !24
  store i32 %i.chx, ptr %i.chv, align 4, !tbaa !24
  %i.chy = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i664, 3 ; 2 uses
  %i.chz = getelementptr inbounds nuw [4 x i8], ptr %i.cgm, i64 %i.chy
  %i.cia = getelementptr inbounds nuw [4 x i8], ptr %i.cgi, i64 %i.chy
  %i.cib = load i32, ptr %i.cia, align 4, !tbaa !24
  store i32 %i.cib, ptr %i.chz, align 4, !tbaa !24
  %i.cic = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i664, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i665.3 = icmp eq i64 %i.cic, %.0.i.i.i.i.i.i.i.i.i.i.i.i655
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i665.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i656, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663, !llvm.loop !1448

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i656: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i663, %middle.block3206, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i654
  %i.cid = icmp sgt i64 %i.cgt, 3
  br i1 %i.cid, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i661, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i657

._crit_edge.i.i.i.i.i.i.i.i.i.i.i657:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i661, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i656
  %i.cie = icmp slt i64 %i.cgw, %i.cgh
  br i1 %i.cie, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.preheader, label %.loopexit2808

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.preheader:    ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i657
  %i.cif = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i655, %i.cgv
  %i.cig = sub i64 %i.cgh, %i.cif                 ; 3 uses
  %min.iters.check3212 = icmp ult i64 %i.cig, 16
  br i1 %min.iters.check3212, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.preheader3774, label %vector.memcheck3213

vector.memcheck3213:                              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.preheader
  %i.cih = shl nsw i64 %i.cgj, 2
  %i.cii = add i64 %i.cih, %i.cgl
  %i.cij = add i64 %.idx2781, %i.cgg
  %i.cik = sub i64 %i.cij, %i.cii
  %diff.check3214 = icmp ugt i64 %i.cik, -32
  br i1 %diff.check3214, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.preheader3774, label %vector.ph3215

vector.ph3215:                                    ; preds = %vector.memcheck3213
  %n.vec3216 = and i64 %i.cig, -8                 ; 3 uses
  %i.cil = add i64 %i.cgw, %n.vec3216
  br label %vector.body3217

vector.body3217:                                  ; preds = %vector.body3217, %vector.ph3215
  %index3218 = phi i64 [ 0, %vector.ph3215 ], [ %index.next3221, %vector.body3217 ] ; 2 uses
  %i.cim = add i64 %i.cgw, %index3218             ; 2 uses
  %i.cin = getelementptr inbounds [4 x i8], ptr %i.cgm, i64 %i.cim ; 2 uses
  %i.cio = getelementptr inbounds [4 x i8], ptr %i.cgi, i64 %i.cim ; 2 uses
  %i.cip = getelementptr inbounds nuw i8, ptr %i.cio, i64 16
  %wide.load3219 = load <4 x i32>, ptr %i.cio, align 4, !tbaa !24
  %wide.load3220 = load <4 x i32>, ptr %i.cip, align 4, !tbaa !24
  %i.ciq = getelementptr inbounds nuw i8, ptr %i.cin, i64 16
  store <4 x i32> %wide.load3219, ptr %i.cin, align 4, !tbaa !24
  store <4 x i32> %wide.load3220, ptr %i.ciq, align 4, !tbaa !24
  %index.next3221 = add nuw i64 %index3218, 8     ; 2 uses
  %i.cir = icmp eq i64 %index.next3221, %n.vec3216
  br i1 %i.cir, label %middle.block3222, label %vector.body3217, !llvm.loop !1449

middle.block3222:                                 ; preds = %vector.body3217
  %cmp.n3223 = icmp eq i64 %i.cig, %n.vec3216
  br i1 %cmp.n3223, label %.loopexit2808, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.preheader3774

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.preheader3774: ; preds = %vector.memcheck3213, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.preheader, %middle.block3222
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i659.ph = phi i64 [ %i.cgw, %vector.memcheck3213 ], [ %i.cgw, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.preheader ], [ %i.cil, %middle.block3222 ] ; 4 uses
  %i.cis = sub i64 %i.cgh, %.05.i18.i.i.i.i.i.i.i.i.i.i.i659.ph
  %xtraiter3848 = and i64 %i.cis, 3               ; 2 uses
  %lcmp.mod3849.not = icmp eq i64 %xtraiter3848, 0
  br i1 %lcmp.mod3849.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.prol:         ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.preheader3774, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i659.prol = phi i64 [ %i.ciw, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i659.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.preheader3774 ] ; 3 uses
  %prol.iter3850 = phi i64 [ %prol.iter3850.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.preheader3774 ]
  %i.cit = getelementptr inbounds [4 x i8], ptr %i.cgm, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i659.prol
  %i.ciu = getelementptr inbounds [4 x i8], ptr %i.cgi, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i659.prol
  %i.civ = load i32, ptr %i.ciu, align 4, !tbaa !24
  store i32 %i.civ, ptr %i.cit, align 4, !tbaa !24
  %i.ciw = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i659.prol, 1 ; 2 uses
  %prol.iter3850.next = add i64 %prol.iter3850, 1 ; 2 uses
  %prol.iter3850.cmp.not = icmp eq i64 %prol.iter3850.next, %xtraiter3848
  br i1 %prol.iter3850.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.prol, !llvm.loop !1450

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.preheader3774
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i659.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i659.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.preheader3774 ], [ %i.ciw, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.prol ]
  %i.cix = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i659.ph, %i.cgh
  %i.ciy = icmp ugt i64 %i.cix, -4
  br i1 %i.ciy, label %.loopexit2808, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i659 = phi i64 [ %i.cjo, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i659.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.prol.loopexit ] ; 6 uses
  %i.ciz = getelementptr inbounds [4 x i8], ptr %i.cgm, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i659
  %i.cja = getelementptr inbounds [4 x i8], ptr %i.cgi, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i659
  %i.cjb = load i32, ptr %i.cja, align 4, !tbaa !24
  store i32 %i.cjb, ptr %i.ciz, align 4, !tbaa !24
  %i.cjc = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i659, 1 ; 2 uses
  %i.cjd = getelementptr inbounds [4 x i8], ptr %i.cgm, i64 %i.cjc
  %i.cje = getelementptr inbounds [4 x i8], ptr %i.cgi, i64 %i.cjc
  %i.cjf = load i32, ptr %i.cje, align 4, !tbaa !24
  store i32 %i.cjf, ptr %i.cjd, align 4, !tbaa !24
  %i.cjg = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i659, 2 ; 2 uses
  %i.cjh = getelementptr inbounds [4 x i8], ptr %i.cgm, i64 %i.cjg
  %i.cji = getelementptr inbounds [4 x i8], ptr %i.cgi, i64 %i.cjg
  %i.cjj = load i32, ptr %i.cji, align 4, !tbaa !24
  store i32 %i.cjj, ptr %i.cjh, align 4, !tbaa !24
  %i.cjk = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i659, 3 ; 2 uses
  %i.cjl = getelementptr inbounds [4 x i8], ptr %i.cgm, i64 %i.cjk
  %i.cjm = getelementptr inbounds [4 x i8], ptr %i.cgi, i64 %i.cjk
  %i.cjn = load i32, ptr %i.cjm, align 4, !tbaa !24
  store i32 %i.cjn, ptr %i.cjl, align 4, !tbaa !24
  %i.cjo = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i659, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i660.3 = icmp eq i64 %i.cjo, %i.cgh
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i660.3, label %.loopexit2808, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658, !llvm.loop !1451

.lr.ph.i.i.i.i.i.i.i.i.i.i.i661:                  ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i656, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i661
  %.021.i.i.i.i.i.i.i.i.i.i.i662 = phi i64 [ %i.cjs, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i661 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i655, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i656 ] ; 3 uses
  %i.cjp = getelementptr inbounds [4 x i8], ptr %i.cgm, i64 %.021.i.i.i.i.i.i.i.i.i.i.i662
  %i.cjq = getelementptr inbounds [4 x i8], ptr %i.cgi, i64 %.021.i.i.i.i.i.i.i.i.i.i.i662
  %i.cjr = load <2 x i64>, ptr %i.cjq, align 1, !tbaa !22
  store <2 x i64> %i.cjr, ptr %i.cjp, align 16, !tbaa !22
  %i.cjs = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i662, 4 ; 2 uses
  %i.cjt = icmp slt i64 %i.cjs, %i.cgw
  br i1 %i.cjt, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i661, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i657, !llvm.loop !1355

.loopexit2808:                                    ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i658, %middle.block3222, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i657
  %i.cju = load ptr, ptr %1, align 8, !tbaa !99, !noalias !1586 ; 2 uses
  %i.cjv = ptrtoaddr ptr %i.cju to i64            ; 2 uses
  %i.cjw = load i64, ptr %i.a, align 8, !tbaa !100, !noalias !1586 ; 13 uses
  %i.cjx = getelementptr inbounds [4 x i8], ptr %i.cju, i64 %i.cjw ; 13 uses
  %i.cjy = add nsw i64 %i.cgh, %i.cgj             ; 4 uses
  %i.cjz = load ptr, ptr %62, align 8, !tbaa !26, !noalias !1587 ; 2 uses
  %i.cka = ptrtoaddr ptr %i.cjz to i64            ; 2 uses
  %i.ckb = getelementptr inbounds [4 x i8], ptr %i.cjz, i64 %i.cjy ; 14 uses
  %i.ckc = ptrtoint ptr %i.ckb to i64             ; 2 uses
  %i.ckd = and i64 %i.ckc, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i672 = icmp eq i64 %i.ckd, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i672, label %bb.dw, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i673

bb.dw:                                            ; preds = %.loopexit2808
  %i.cke = lshr exact i64 %i.ckc, 2
  %i.ckf = sub nsw i64 0, %i.cke
  %i.ckg = and i64 %i.ckf, 3
  %i.ckh = call i64 @llvm.smin.i64(i64 %i.ckg, i64 %i.cjw)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i673

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i673: ; preds = %bb.dw, %.loopexit2808
  %.0.i.i.i.i.i.i.i.i.i.i.i.i674 = phi i64 [ %i.ckh, %bb.dw ], [ %i.cjw, %.loopexit2808 ] ; 11 uses
  %i.cki = sub nsw i64 %i.cjw, %.0.i.i.i.i.i.i.i.i.i.i.i.i674 ; 2 uses
  %i.ckj = sdiv i64 %i.cki, 4
  %i.ckk = shl nsw i64 %i.ckj, 2                  ; 2 uses
  %i.ckl = add nsw i64 %i.ckk, %.0.i.i.i.i.i.i.i.i.i.i.i.i674 ; 6 uses
  %i.ckm = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i674, 0
  br i1 %i.ckm, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i675

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.preheader:      ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i673
  %min.iters.check3228 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i674, 20
  br i1 %min.iters.check3228, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.preheader3773, label %vector.memcheck3229

vector.memcheck3229:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.preheader
  %i.ckn = shl nsw i64 %i.cjy, 2
  %i.cko = shl i64 %i.cjw, 2
  %i.ckp = add i64 %i.ckn, %i.cka
  %i.ckq = add i64 %i.cko, %i.cjv
  %i.ckr = sub i64 %i.ckq, %i.ckp
  %diff.check3230 = icmp ugt i64 %i.ckr, -32
  br i1 %diff.check3230, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.preheader3773, label %vector.ph3231

vector.ph3231:                                    ; preds = %vector.memcheck3229
  %n.vec3232 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i674, 9223372036854775800 ; 3 uses
  br label %vector.body3233

vector.body3233:                                  ; preds = %vector.body3233, %vector.ph3231
  %index3234 = phi i64 [ 0, %vector.ph3231 ], [ %index.next3237, %vector.body3233 ] ; 3 uses
  %i.cks = getelementptr inbounds nuw [4 x i8], ptr %i.ckb, i64 %index3234 ; 2 uses
  %i.ckt = getelementptr inbounds nuw [4 x i8], ptr %i.cjx, i64 %index3234 ; 2 uses
  %i.cku = getelementptr inbounds nuw i8, ptr %i.ckt, i64 16
  %wide.load3235 = load <4 x i32>, ptr %i.ckt, align 4, !tbaa !24
  %wide.load3236 = load <4 x i32>, ptr %i.cku, align 4, !tbaa !24
  %i.ckv = getelementptr inbounds nuw i8, ptr %i.cks, i64 16
  store <4 x i32> %wide.load3235, ptr %i.cks, align 4, !tbaa !24
  store <4 x i32> %wide.load3236, ptr %i.ckv, align 4, !tbaa !24
  %index.next3237 = add nuw i64 %index3234, 8     ; 2 uses
  %i.ckw = icmp eq i64 %index.next3237, %n.vec3232
  br i1 %i.ckw, label %middle.block3238, label %vector.body3233, !llvm.loop !1456

middle.block3238:                                 ; preds = %vector.body3233
  %cmp.n3239 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i674, %n.vec3232
  br i1 %cmp.n3239, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i675, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.preheader3773

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.preheader3773:  ; preds = %vector.memcheck3229, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.preheader, %middle.block3238
  %.05.i.i.i.i.i.i.i.i.i.i.i.i683.ph = phi i64 [ 0, %vector.memcheck3229 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.preheader ], [ %n.vec3232, %middle.block3238 ] ; 3 uses
  %xtraiter3851 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i674, 3 ; 2 uses
  %lcmp.mod3852.not = icmp eq i64 %xtraiter3851, 0
  br i1 %lcmp.mod3852.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.prol:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.preheader3773, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i683.prol = phi i64 [ %i.cla, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i683.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.preheader3773 ] ; 3 uses
  %prol.iter3853 = phi i64 [ %prol.iter3853.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.preheader3773 ]
  %i.ckx = getelementptr inbounds nuw [4 x i8], ptr %i.ckb, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i683.prol
  %i.cky = getelementptr inbounds nuw [4 x i8], ptr %i.cjx, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i683.prol
  %i.ckz = load i32, ptr %i.cky, align 4, !tbaa !24
  store i32 %i.ckz, ptr %i.ckx, align 4, !tbaa !24
  %i.cla = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i683.prol, 1 ; 2 uses
  %prol.iter3853.next = add i64 %prol.iter3853, 1 ; 2 uses
  %prol.iter3853.cmp.not = icmp eq i64 %prol.iter3853.next, %xtraiter3851
  br i1 %prol.iter3853.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.prol, !llvm.loop !1457

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.prol.loopexit:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.preheader3773
  %.05.i.i.i.i.i.i.i.i.i.i.i.i683.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i683.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.preheader3773 ], [ %i.cla, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.prol ]
  %i.clb = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i683.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i674
  %i.clc = icmp ugt i64 %i.clb, -4
  br i1 %i.clc, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i675, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682
  %.05.i.i.i.i.i.i.i.i.i.i.i.i683 = phi i64 [ %i.cls, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i683.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.prol.loopexit ] ; 6 uses
  %i.cld = getelementptr inbounds nuw [4 x i8], ptr %i.ckb, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i683
  %i.cle = getelementptr inbounds nuw [4 x i8], ptr %i.cjx, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i683
  %i.clf = load i32, ptr %i.cle, align 4, !tbaa !24
  store i32 %i.clf, ptr %i.cld, align 4, !tbaa !24
  %i.clg = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i683, 1 ; 2 uses
  %i.clh = getelementptr inbounds nuw [4 x i8], ptr %i.ckb, i64 %i.clg
  %i.cli = getelementptr inbounds nuw [4 x i8], ptr %i.cjx, i64 %i.clg
  %i.clj = load i32, ptr %i.cli, align 4, !tbaa !24
  store i32 %i.clj, ptr %i.clh, align 4, !tbaa !24
  %i.clk = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i683, 2 ; 2 uses
  %i.cll = getelementptr inbounds nuw [4 x i8], ptr %i.ckb, i64 %i.clk
  %i.clm = getelementptr inbounds nuw [4 x i8], ptr %i.cjx, i64 %i.clk
  %i.cln = load i32, ptr %i.clm, align 4, !tbaa !24
  store i32 %i.cln, ptr %i.cll, align 4, !tbaa !24
  %i.clo = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i683, 3 ; 2 uses
  %i.clp = getelementptr inbounds nuw [4 x i8], ptr %i.ckb, i64 %i.clo
  %i.clq = getelementptr inbounds nuw [4 x i8], ptr %i.cjx, i64 %i.clo
  %i.clr = load i32, ptr %i.clq, align 4, !tbaa !24
  store i32 %i.clr, ptr %i.clp, align 4, !tbaa !24
  %i.cls = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i683, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i684.3 = icmp eq i64 %i.cls, %.0.i.i.i.i.i.i.i.i.i.i.i.i674
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i684.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i675, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682, !llvm.loop !1458

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i675: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i682, %middle.block3238, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i673
  %i.clt = icmp sgt i64 %i.cki, 3
  br i1 %i.clt, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i680, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i676

._crit_edge.i.i.i.i.i.i.i.i.i.i.i676:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i680, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i675
  %i.clu = icmp slt i64 %i.ckl, %i.cjw
  br i1 %i.clu, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.preheader, label %.loopexit2807

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.preheader:    ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i676
  %i.clv = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i674, %i.ckk
  %i.clw = sub i64 %i.cjw, %i.clv                 ; 3 uses
  %min.iters.check3244 = icmp ult i64 %i.clw, 20
  br i1 %min.iters.check3244, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.preheader3772, label %vector.memcheck3245

vector.memcheck3245:                              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.preheader
  %i.clx = shl nsw i64 %i.cjy, 2
  %i.cly = shl i64 %i.cjw, 2
  %i.clz = add i64 %i.clx, %i.cka
  %i.cma = add i64 %i.cly, %i.cjv
  %i.cmb = sub i64 %i.cma, %i.clz
  %diff.check3246 = icmp ugt i64 %i.cmb, -32
  br i1 %diff.check3246, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.preheader3772, label %vector.ph3247

vector.ph3247:                                    ; preds = %vector.memcheck3245
  %n.vec3248 = and i64 %i.clw, -8                 ; 3 uses
  %i.cmc = add i64 %i.ckl, %n.vec3248
  br label %vector.body3249

vector.body3249:                                  ; preds = %vector.body3249, %vector.ph3247
  %index3250 = phi i64 [ 0, %vector.ph3247 ], [ %index.next3253, %vector.body3249 ] ; 2 uses
  %i.cmd = add i64 %i.ckl, %index3250             ; 2 uses
  %i.cme = getelementptr inbounds [4 x i8], ptr %i.ckb, i64 %i.cmd ; 2 uses
  %i.cmf = getelementptr inbounds [4 x i8], ptr %i.cjx, i64 %i.cmd ; 2 uses
  %i.cmg = getelementptr inbounds nuw i8, ptr %i.cmf, i64 16
  %wide.load3251 = load <4 x i32>, ptr %i.cmf, align 4, !tbaa !24
  %wide.load3252 = load <4 x i32>, ptr %i.cmg, align 4, !tbaa !24
  %i.cmh = getelementptr inbounds nuw i8, ptr %i.cme, i64 16
  store <4 x i32> %wide.load3251, ptr %i.cme, align 4, !tbaa !24
  store <4 x i32> %wide.load3252, ptr %i.cmh, align 4, !tbaa !24
  %index.next3253 = add nuw i64 %index3250, 8     ; 2 uses
  %i.cmi = icmp eq i64 %index.next3253, %n.vec3248
  br i1 %i.cmi, label %middle.block3254, label %vector.body3249, !llvm.loop !1459

middle.block3254:                                 ; preds = %vector.body3249
  %cmp.n3255 = icmp eq i64 %i.clw, %n.vec3248
  br i1 %cmp.n3255, label %.loopexit2807, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.preheader3772

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.preheader3772: ; preds = %vector.memcheck3245, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.preheader, %middle.block3254
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i678.ph = phi i64 [ %i.ckl, %vector.memcheck3245 ], [ %i.ckl, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.preheader ], [ %i.cmc, %middle.block3254 ] ; 4 uses
  %i.cmj = sub i64 %i.cjw, %.05.i18.i.i.i.i.i.i.i.i.i.i.i678.ph
  %xtraiter3854 = and i64 %i.cmj, 3               ; 2 uses
  %lcmp.mod3855.not = icmp eq i64 %xtraiter3854, 0
  br i1 %lcmp.mod3855.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.prol:         ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.preheader3772, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i678.prol = phi i64 [ %i.cmn, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i678.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.preheader3772 ] ; 3 uses
  %prol.iter3856 = phi i64 [ %prol.iter3856.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.preheader3772 ]
  %i.cmk = getelementptr inbounds [4 x i8], ptr %i.ckb, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i678.prol
  %i.cml = getelementptr inbounds [4 x i8], ptr %i.cjx, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i678.prol
  %i.cmm = load i32, ptr %i.cml, align 4, !tbaa !24
  store i32 %i.cmm, ptr %i.cmk, align 4, !tbaa !24
  %i.cmn = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i678.prol, 1 ; 2 uses
  %prol.iter3856.next = add i64 %prol.iter3856, 1 ; 2 uses
  %prol.iter3856.cmp.not = icmp eq i64 %prol.iter3856.next, %xtraiter3854
  br i1 %prol.iter3856.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.prol, !llvm.loop !1460

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.preheader3772
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i678.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i678.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.preheader3772 ], [ %i.cmn, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.prol ]
  %i.cmo = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i678.ph, %i.cjw
  %i.cmp = icmp ugt i64 %i.cmo, -4
  br i1 %i.cmp, label %.loopexit2807, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i678 = phi i64 [ %i.cnf, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i678.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.prol.loopexit ] ; 6 uses
  %i.cmq = getelementptr inbounds [4 x i8], ptr %i.ckb, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i678
  %i.cmr = getelementptr inbounds [4 x i8], ptr %i.cjx, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i678
  %i.cms = load i32, ptr %i.cmr, align 4, !tbaa !24
  store i32 %i.cms, ptr %i.cmq, align 4, !tbaa !24
  %i.cmt = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i678, 1 ; 2 uses
  %i.cmu = getelementptr inbounds [4 x i8], ptr %i.ckb, i64 %i.cmt
  %i.cmv = getelementptr inbounds [4 x i8], ptr %i.cjx, i64 %i.cmt
  %i.cmw = load i32, ptr %i.cmv, align 4, !tbaa !24
  store i32 %i.cmw, ptr %i.cmu, align 4, !tbaa !24
  %i.cmx = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i678, 2 ; 2 uses
  %i.cmy = getelementptr inbounds [4 x i8], ptr %i.ckb, i64 %i.cmx
  %i.cmz = getelementptr inbounds [4 x i8], ptr %i.cjx, i64 %i.cmx
  %i.cna = load i32, ptr %i.cmz, align 4, !tbaa !24
  store i32 %i.cna, ptr %i.cmy, align 4, !tbaa !24
  %i.cnb = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i678, 3 ; 2 uses
  %i.cnc = getelementptr inbounds [4 x i8], ptr %i.ckb, i64 %i.cnb
  %i.cnd = getelementptr inbounds [4 x i8], ptr %i.cjx, i64 %i.cnb
  %i.cne = load i32, ptr %i.cnd, align 4, !tbaa !24
  store i32 %i.cne, ptr %i.cnc, align 4, !tbaa !24
  %i.cnf = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i678, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i679.3 = icmp eq i64 %i.cnf, %i.cjw
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i679.3, label %.loopexit2807, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677, !llvm.loop !1461

.lr.ph.i.i.i.i.i.i.i.i.i.i.i680:                  ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i675, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i680
  %.021.i.i.i.i.i.i.i.i.i.i.i681 = phi i64 [ %i.cnj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i680 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i674, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i675 ] ; 3 uses
  %i.cng = getelementptr inbounds [4 x i8], ptr %i.ckb, i64 %.021.i.i.i.i.i.i.i.i.i.i.i681
  %i.cnh = getelementptr inbounds [4 x i8], ptr %i.cjx, i64 %.021.i.i.i.i.i.i.i.i.i.i.i681
  %i.cni = load <2 x i64>, ptr %i.cnh, align 1, !tbaa !22
  store <2 x i64> %i.cni, ptr %i.cng, align 16, !tbaa !22
  %i.cnj = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i681, 4 ; 2 uses
  %i.cnk = icmp slt i64 %i.cnj, %i.ckl
  br i1 %i.cnk, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i680, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i676, !llvm.loop !1355

.loopexit2807:                                    ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i677, %middle.block3254, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i676
  %i.cnl = load ptr, ptr %1, align 8, !tbaa !99, !noalias !1588 ; 14 uses
  %i.cnm = ptrtoaddr ptr %i.cnl to i64            ; 2 uses
  %i.cnn = load i64, ptr %i.a, align 8, !tbaa !100, !noalias !1588 ; 10 uses
  %i.cno = add nsw i64 %i.cjw, %i.cjy             ; 4 uses
  %i.cnp = load ptr, ptr %62, align 8, !tbaa !26, !noalias !1589 ; 2 uses
  %i.cnq = ptrtoaddr ptr %i.cnp to i64            ; 2 uses
  %i.cnr = getelementptr inbounds [4 x i8], ptr %i.cnp, i64 %i.cno ; 14 uses
  %i.cns = ptrtoint ptr %i.cnr to i64             ; 2 uses
  %i.cnt = and i64 %i.cns, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i691 = icmp eq i64 %i.cnt, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i691, label %bb.dx, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i692

bb.dx:                                            ; preds = %.loopexit2807
  %i.cnu = lshr exact i64 %i.cns, 2
  %i.cnv = sub nsw i64 0, %i.cnu
  %i.cnw = and i64 %i.cnv, 3
  %i.cnx = call i64 @llvm.smin.i64(i64 %i.cnw, i64 %i.cnn)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i692

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i692: ; preds = %bb.dx, %.loopexit2807
  %.0.i.i.i.i.i.i.i.i.i.i.i.i693 = phi i64 [ %i.cnx, %bb.dx ], [ %i.cnn, %.loopexit2807 ] ; 11 uses
  %i.cny = sub nsw i64 %i.cnn, %.0.i.i.i.i.i.i.i.i.i.i.i.i693 ; 2 uses
  %i.cnz = sdiv i64 %i.cny, 4
  %i.coa = shl nsw i64 %i.cnz, 2                  ; 2 uses
  %i.cob = add nsw i64 %i.coa, %.0.i.i.i.i.i.i.i.i.i.i.i.i693 ; 6 uses
  %i.coc = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i693, 0
  br i1 %i.coc, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i694

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.preheader:      ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i692
  %min.iters.check3260 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i693, 16
  br i1 %min.iters.check3260, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.preheader3771, label %vector.memcheck3261

vector.memcheck3261:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.preheader
  %i.cod = shl nsw i64 %i.cno, 2
  %i.coe = add i64 %i.cod, %i.cnq
  %i.cof = sub i64 %i.cnm, %i.coe
  %diff.check3262 = icmp ugt i64 %i.cof, -32
  br i1 %diff.check3262, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.preheader3771, label %vector.ph3263

vector.ph3263:                                    ; preds = %vector.memcheck3261
  %n.vec3264 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i693, 9223372036854775800 ; 3 uses
  br label %vector.body3265

vector.body3265:                                  ; preds = %vector.body3265, %vector.ph3263
  %index3266 = phi i64 [ 0, %vector.ph3263 ], [ %index.next3269, %vector.body3265 ] ; 3 uses
  %i.cog = getelementptr inbounds nuw [4 x i8], ptr %i.cnr, i64 %index3266 ; 2 uses
  %i.coh = getelementptr inbounds nuw [4 x i8], ptr %i.cnl, i64 %index3266 ; 2 uses
  %i.coi = getelementptr inbounds nuw i8, ptr %i.coh, i64 16
  %wide.load3267 = load <4 x i32>, ptr %i.coh, align 4, !tbaa !24
  %wide.load3268 = load <4 x i32>, ptr %i.coi, align 4, !tbaa !24
  %i.coj = getelementptr inbounds nuw i8, ptr %i.cog, i64 16
  store <4 x i32> %wide.load3267, ptr %i.cog, align 4, !tbaa !24
  store <4 x i32> %wide.load3268, ptr %i.coj, align 4, !tbaa !24
  %index.next3269 = add nuw i64 %index3266, 8     ; 2 uses
  %i.cok = icmp eq i64 %index.next3269, %n.vec3264
  br i1 %i.cok, label %middle.block3270, label %vector.body3265, !llvm.loop !1466

middle.block3270:                                 ; preds = %vector.body3265
  %cmp.n3271 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i693, %n.vec3264
  br i1 %cmp.n3271, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i694, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.preheader3771

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.preheader3771:  ; preds = %vector.memcheck3261, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.preheader, %middle.block3270
  %.05.i.i.i.i.i.i.i.i.i.i.i.i702.ph = phi i64 [ 0, %vector.memcheck3261 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.preheader ], [ %n.vec3264, %middle.block3270 ] ; 3 uses
  %xtraiter3857 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i693, 3 ; 2 uses
  %lcmp.mod3858.not = icmp eq i64 %xtraiter3857, 0
  br i1 %lcmp.mod3858.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.prol:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.preheader3771, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i702.prol = phi i64 [ %i.coo, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i702.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.preheader3771 ] ; 3 uses
  %prol.iter3859 = phi i64 [ %prol.iter3859.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.preheader3771 ]
  %i.col = getelementptr inbounds nuw [4 x i8], ptr %i.cnr, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i702.prol
  %i.com = getelementptr inbounds nuw [4 x i8], ptr %i.cnl, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i702.prol
  %i.con = load i32, ptr %i.com, align 4, !tbaa !24
  store i32 %i.con, ptr %i.col, align 4, !tbaa !24
  %i.coo = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i702.prol, 1 ; 2 uses
  %prol.iter3859.next = add i64 %prol.iter3859, 1 ; 2 uses
  %prol.iter3859.cmp.not = icmp eq i64 %prol.iter3859.next, %xtraiter3857
  br i1 %prol.iter3859.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.prol, !llvm.loop !1467

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.prol.loopexit:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.preheader3771
  %.05.i.i.i.i.i.i.i.i.i.i.i.i702.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i702.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.preheader3771 ], [ %i.coo, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.prol ]
  %i.cop = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i702.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i693
  %i.coq = icmp ugt i64 %i.cop, -4
  br i1 %i.coq, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i694, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701
  %.05.i.i.i.i.i.i.i.i.i.i.i.i702 = phi i64 [ %i.cpg, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i702.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.prol.loopexit ] ; 6 uses
  %i.cor = getelementptr inbounds nuw [4 x i8], ptr %i.cnr, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i702
  %i.cos = getelementptr inbounds nuw [4 x i8], ptr %i.cnl, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i702
  %i.cot = load i32, ptr %i.cos, align 4, !tbaa !24
  store i32 %i.cot, ptr %i.cor, align 4, !tbaa !24
  %i.cou = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i702, 1 ; 2 uses
  %i.cov = getelementptr inbounds nuw [4 x i8], ptr %i.cnr, i64 %i.cou
  %i.cow = getelementptr inbounds nuw [4 x i8], ptr %i.cnl, i64 %i.cou
  %i.cox = load i32, ptr %i.cow, align 4, !tbaa !24
  store i32 %i.cox, ptr %i.cov, align 4, !tbaa !24
  %i.coy = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i702, 2 ; 2 uses
  %i.coz = getelementptr inbounds nuw [4 x i8], ptr %i.cnr, i64 %i.coy
  %i.cpa = getelementptr inbounds nuw [4 x i8], ptr %i.cnl, i64 %i.coy
  %i.cpb = load i32, ptr %i.cpa, align 4, !tbaa !24
  store i32 %i.cpb, ptr %i.coz, align 4, !tbaa !24
  %i.cpc = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i702, 3 ; 2 uses
  %i.cpd = getelementptr inbounds nuw [4 x i8], ptr %i.cnr, i64 %i.cpc
  %i.cpe = getelementptr inbounds nuw [4 x i8], ptr %i.cnl, i64 %i.cpc
  %i.cpf = load i32, ptr %i.cpe, align 4, !tbaa !24
  store i32 %i.cpf, ptr %i.cpd, align 4, !tbaa !24
  %i.cpg = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i702, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i703.3 = icmp eq i64 %i.cpg, %.0.i.i.i.i.i.i.i.i.i.i.i.i693
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i703.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i694, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701, !llvm.loop !1468

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i694: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i701, %middle.block3270, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i692
  %i.cph = icmp sgt i64 %i.cny, 3
  br i1 %i.cph, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i699, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i695

._crit_edge.i.i.i.i.i.i.i.i.i.i.i695:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i699, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i694
  %i.cpi = icmp slt i64 %i.cob, %i.cnn
  br i1 %i.cpi, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.preheader, label %.loopexit2806

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.preheader:    ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i695
  %i.cpj = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i693, %i.coa
  %i.cpk = sub i64 %i.cnn, %i.cpj                 ; 3 uses
  %min.iters.check3276 = icmp ult i64 %i.cpk, 16
  br i1 %min.iters.check3276, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.preheader3770, label %vector.memcheck3277

vector.memcheck3277:                              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.preheader
  %i.cpl = shl nsw i64 %i.cno, 2
  %i.cpm = add i64 %i.cpl, %i.cnq
  %i.cpn = sub i64 %i.cnm, %i.cpm
  %diff.check3278 = icmp ugt i64 %i.cpn, -32
  br i1 %diff.check3278, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.preheader3770, label %vector.ph3279

vector.ph3279:                                    ; preds = %vector.memcheck3277
  %n.vec3280 = and i64 %i.cpk, -8                 ; 3 uses
  %i.cpo = add i64 %i.cob, %n.vec3280
  br label %vector.body3281

vector.body3281:                                  ; preds = %vector.body3281, %vector.ph3279
  %index3282 = phi i64 [ 0, %vector.ph3279 ], [ %index.next3285, %vector.body3281 ] ; 2 uses
  %i.cpp = add i64 %i.cob, %index3282             ; 2 uses
  %i.cpq = getelementptr inbounds [4 x i8], ptr %i.cnr, i64 %i.cpp ; 2 uses
  %i.cpr = getelementptr inbounds [4 x i8], ptr %i.cnl, i64 %i.cpp ; 2 uses
  %i.cps = getelementptr inbounds nuw i8, ptr %i.cpr, i64 16
  %wide.load3283 = load <4 x i32>, ptr %i.cpr, align 4, !tbaa !24
  %wide.load3284 = load <4 x i32>, ptr %i.cps, align 4, !tbaa !24
  %i.cpt = getelementptr inbounds nuw i8, ptr %i.cpq, i64 16
  store <4 x i32> %wide.load3283, ptr %i.cpq, align 4, !tbaa !24
  store <4 x i32> %wide.load3284, ptr %i.cpt, align 4, !tbaa !24
  %index.next3285 = add nuw i64 %index3282, 8     ; 2 uses
  %i.cpu = icmp eq i64 %index.next3285, %n.vec3280
  br i1 %i.cpu, label %middle.block3286, label %vector.body3281, !llvm.loop !1469

middle.block3286:                                 ; preds = %vector.body3281
  %cmp.n3287 = icmp eq i64 %i.cpk, %n.vec3280
  br i1 %cmp.n3287, label %.loopexit2806, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.preheader3770

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.preheader3770: ; preds = %vector.memcheck3277, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.preheader, %middle.block3286
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i697.ph = phi i64 [ %i.cob, %vector.memcheck3277 ], [ %i.cob, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.preheader ], [ %i.cpo, %middle.block3286 ] ; 4 uses
  %i.cpv = sub i64 %i.cnn, %.05.i18.i.i.i.i.i.i.i.i.i.i.i697.ph
  %xtraiter3860 = and i64 %i.cpv, 3               ; 2 uses
  %lcmp.mod3861.not = icmp eq i64 %xtraiter3860, 0
  br i1 %lcmp.mod3861.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.prol:         ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.preheader3770, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i697.prol = phi i64 [ %i.cpz, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i697.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.preheader3770 ] ; 3 uses
  %prol.iter3862 = phi i64 [ %prol.iter3862.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.preheader3770 ]
  %i.cpw = getelementptr inbounds [4 x i8], ptr %i.cnr, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i697.prol
  %i.cpx = getelementptr inbounds [4 x i8], ptr %i.cnl, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i697.prol
  %i.cpy = load i32, ptr %i.cpx, align 4, !tbaa !24
  store i32 %i.cpy, ptr %i.cpw, align 4, !tbaa !24
  %i.cpz = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i697.prol, 1 ; 2 uses
  %prol.iter3862.next = add i64 %prol.iter3862, 1 ; 2 uses
  %prol.iter3862.cmp.not = icmp eq i64 %prol.iter3862.next, %xtraiter3860
  br i1 %prol.iter3862.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.prol, !llvm.loop !1470

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.preheader3770
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i697.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i697.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.preheader3770 ], [ %i.cpz, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.prol ]
  %i.cqa = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i697.ph, %i.cnn
  %i.cqb = icmp ugt i64 %i.cqa, -4
  br i1 %i.cqb, label %.loopexit2806, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i697 = phi i64 [ %i.cqr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i697.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.prol.loopexit ] ; 6 uses
  %i.cqc = getelementptr inbounds [4 x i8], ptr %i.cnr, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i697
  %i.cqd = getelementptr inbounds [4 x i8], ptr %i.cnl, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i697
  %i.cqe = load i32, ptr %i.cqd, align 4, !tbaa !24
  store i32 %i.cqe, ptr %i.cqc, align 4, !tbaa !24
  %i.cqf = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i697, 1 ; 2 uses
  %i.cqg = getelementptr inbounds [4 x i8], ptr %i.cnr, i64 %i.cqf
  %i.cqh = getelementptr inbounds [4 x i8], ptr %i.cnl, i64 %i.cqf
  %i.cqi = load i32, ptr %i.cqh, align 4, !tbaa !24
  store i32 %i.cqi, ptr %i.cqg, align 4, !tbaa !24
  %i.cqj = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i697, 2 ; 2 uses
  %i.cqk = getelementptr inbounds [4 x i8], ptr %i.cnr, i64 %i.cqj
  %i.cql = getelementptr inbounds [4 x i8], ptr %i.cnl, i64 %i.cqj
  %i.cqm = load i32, ptr %i.cql, align 4, !tbaa !24
  store i32 %i.cqm, ptr %i.cqk, align 4, !tbaa !24
  %i.cqn = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i697, 3 ; 2 uses
  %i.cqo = getelementptr inbounds [4 x i8], ptr %i.cnr, i64 %i.cqn
  %i.cqp = getelementptr inbounds [4 x i8], ptr %i.cnl, i64 %i.cqn
  %i.cqq = load i32, ptr %i.cqp, align 4, !tbaa !24
  store i32 %i.cqq, ptr %i.cqo, align 4, !tbaa !24
  %i.cqr = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i697, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i698.3 = icmp eq i64 %i.cqr, %i.cnn
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i698.3, label %.loopexit2806, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696, !llvm.loop !1471

.lr.ph.i.i.i.i.i.i.i.i.i.i.i699:                  ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i694, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i699
  %.021.i.i.i.i.i.i.i.i.i.i.i700 = phi i64 [ %i.cqv, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i699 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i693, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i694 ] ; 3 uses
  %i.cqs = getelementptr inbounds [4 x i8], ptr %i.cnr, i64 %.021.i.i.i.i.i.i.i.i.i.i.i700
  %i.cqt = getelementptr inbounds [4 x i8], ptr %i.cnl, i64 %.021.i.i.i.i.i.i.i.i.i.i.i700
  %i.cqu = load <2 x i64>, ptr %i.cqt, align 1, !tbaa !22
  store <2 x i64> %i.cqu, ptr %i.cqs, align 16, !tbaa !22
  %i.cqv = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i700, 4 ; 2 uses
  %i.cqw = icmp slt i64 %i.cqv, %i.cob
  br i1 %i.cqw, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i699, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i695, !llvm.loop !1355

.loopexit2806:                                    ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i696, %middle.block3286, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i695
  %i.cqx = load ptr, ptr %1, align 8, !tbaa !99, !noalias !1590 ; 2 uses
  %i.cqy = ptrtoaddr ptr %i.cqx to i64            ; 2 uses
  %i.cqz = load i64, ptr %i.a, align 8, !tbaa !100, !noalias !1590 ; 11 uses
  %.idx2782 = shl i64 %i.cqz, 3                   ; 3 uses
  %i.cra = getelementptr inbounds i8, ptr %i.cqx, i64 %.idx2782 ; 13 uses
  %i.crb = add nsw i64 %i.cnn, %i.cno             ; 4 uses
  %i.crc = load ptr, ptr %62, align 8, !tbaa !26, !noalias !1591 ; 2 uses
  %i.crd = ptrtoaddr ptr %i.crc to i64            ; 2 uses
  %i.cre = getelementptr inbounds [4 x i8], ptr %i.crc, i64 %i.crb ; 14 uses
  %i.crf = ptrtoint ptr %i.cre to i64             ; 2 uses
  %i.crg = and i64 %i.crf, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i710 = icmp eq i64 %i.crg, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i710, label %bb.dy, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i711

bb.dy:                                            ; preds = %.loopexit2806
  %i.crh = lshr exact i64 %i.crf, 2
  %i.cri = sub nsw i64 0, %i.crh
  %i.crj = and i64 %i.cri, 3
  %i.crk = call i64 @llvm.smin.i64(i64 %i.crj, i64 %i.cqz)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i711

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i711: ; preds = %bb.dy, %.loopexit2806
  %.0.i.i.i.i.i.i.i.i.i.i.i.i712 = phi i64 [ %i.crk, %bb.dy ], [ %i.cqz, %.loopexit2806 ] ; 11 uses
  %i.crl = sub nsw i64 %i.cqz, %.0.i.i.i.i.i.i.i.i.i.i.i.i712 ; 2 uses
  %i.crm = sdiv i64 %i.crl, 4
  %i.crn = shl nsw i64 %i.crm, 2                  ; 2 uses
  %i.cro = add nsw i64 %i.crn, %.0.i.i.i.i.i.i.i.i.i.i.i.i712 ; 6 uses
  %i.crp = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i712, 0
  br i1 %i.crp, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i713

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.preheader:      ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i711
  %min.iters.check3292 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i712, 16
  br i1 %min.iters.check3292, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.preheader3769, label %vector.memcheck3293

vector.memcheck3293:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.preheader
  %i.crq = shl nsw i64 %i.crb, 2
  %i.crr = add i64 %i.crq, %i.crd
  %i.crs = add i64 %.idx2782, %i.cqy
  %i.crt = sub i64 %i.crs, %i.crr
  %diff.check3294 = icmp ugt i64 %i.crt, -32
  br i1 %diff.check3294, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.preheader3769, label %vector.ph3295

vector.ph3295:                                    ; preds = %vector.memcheck3293
  %n.vec3296 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i712, 9223372036854775800 ; 3 uses
  br label %vector.body3297

vector.body3297:                                  ; preds = %vector.body3297, %vector.ph3295
  %index3298 = phi i64 [ 0, %vector.ph3295 ], [ %index.next3301, %vector.body3297 ] ; 3 uses
  %i.cru = getelementptr inbounds nuw [4 x i8], ptr %i.cre, i64 %index3298 ; 2 uses
  %i.crv = getelementptr inbounds nuw [4 x i8], ptr %i.cra, i64 %index3298 ; 2 uses
  %i.crw = getelementptr inbounds nuw i8, ptr %i.crv, i64 16
  %wide.load3299 = load <4 x i32>, ptr %i.crv, align 4, !tbaa !24
  %wide.load3300 = load <4 x i32>, ptr %i.crw, align 4, !tbaa !24
  %i.crx = getelementptr inbounds nuw i8, ptr %i.cru, i64 16
  store <4 x i32> %wide.load3299, ptr %i.cru, align 4, !tbaa !24
  store <4 x i32> %wide.load3300, ptr %i.crx, align 4, !tbaa !24
  %index.next3301 = add nuw i64 %index3298, 8     ; 2 uses
  %i.cry = icmp eq i64 %index.next3301, %n.vec3296
  br i1 %i.cry, label %middle.block3302, label %vector.body3297, !llvm.loop !1476

middle.block3302:                                 ; preds = %vector.body3297
  %cmp.n3303 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i712, %n.vec3296
  br i1 %cmp.n3303, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i713, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.preheader3769

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.preheader3769:  ; preds = %vector.memcheck3293, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.preheader, %middle.block3302
  %.05.i.i.i.i.i.i.i.i.i.i.i.i721.ph = phi i64 [ 0, %vector.memcheck3293 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.preheader ], [ %n.vec3296, %middle.block3302 ] ; 3 uses
  %xtraiter3863 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i712, 3 ; 2 uses
  %lcmp.mod3864.not = icmp eq i64 %xtraiter3863, 0
  br i1 %lcmp.mod3864.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.prol:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.preheader3769, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i721.prol = phi i64 [ %i.csc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i721.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.preheader3769 ] ; 3 uses
  %prol.iter3865 = phi i64 [ %prol.iter3865.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.preheader3769 ]
  %i.crz = getelementptr inbounds nuw [4 x i8], ptr %i.cre, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i721.prol
  %i.csa = getelementptr inbounds nuw [4 x i8], ptr %i.cra, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i721.prol
  %i.csb = load i32, ptr %i.csa, align 4, !tbaa !24
  store i32 %i.csb, ptr %i.crz, align 4, !tbaa !24
  %i.csc = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i721.prol, 1 ; 2 uses
  %prol.iter3865.next = add i64 %prol.iter3865, 1 ; 2 uses
  %prol.iter3865.cmp.not = icmp eq i64 %prol.iter3865.next, %xtraiter3863
  br i1 %prol.iter3865.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.prol, !llvm.loop !1477

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.prol.loopexit:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.preheader3769
  %.05.i.i.i.i.i.i.i.i.i.i.i.i721.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i721.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.preheader3769 ], [ %i.csc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.prol ]
  %i.csd = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i721.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i712
  %i.cse = icmp ugt i64 %i.csd, -4
  br i1 %i.cse, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i713, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720
  %.05.i.i.i.i.i.i.i.i.i.i.i.i721 = phi i64 [ %i.csu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i721.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.prol.loopexit ] ; 6 uses
  %i.csf = getelementptr inbounds nuw [4 x i8], ptr %i.cre, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i721
  %i.csg = getelementptr inbounds nuw [4 x i8], ptr %i.cra, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i721
  %i.csh = load i32, ptr %i.csg, align 4, !tbaa !24
  store i32 %i.csh, ptr %i.csf, align 4, !tbaa !24
  %i.csi = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i721, 1 ; 2 uses
  %i.csj = getelementptr inbounds nuw [4 x i8], ptr %i.cre, i64 %i.csi
  %i.csk = getelementptr inbounds nuw [4 x i8], ptr %i.cra, i64 %i.csi
  %i.csl = load i32, ptr %i.csk, align 4, !tbaa !24
  store i32 %i.csl, ptr %i.csj, align 4, !tbaa !24
  %i.csm = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i721, 2 ; 2 uses
  %i.csn = getelementptr inbounds nuw [4 x i8], ptr %i.cre, i64 %i.csm
  %i.cso = getelementptr inbounds nuw [4 x i8], ptr %i.cra, i64 %i.csm
  %i.csp = load i32, ptr %i.cso, align 4, !tbaa !24
  store i32 %i.csp, ptr %i.csn, align 4, !tbaa !24
  %i.csq = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i721, 3 ; 2 uses
  %i.csr = getelementptr inbounds nuw [4 x i8], ptr %i.cre, i64 %i.csq
  %i.css = getelementptr inbounds nuw [4 x i8], ptr %i.cra, i64 %i.csq
  %i.cst = load i32, ptr %i.css, align 4, !tbaa !24
  store i32 %i.cst, ptr %i.csr, align 4, !tbaa !24
  %i.csu = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i721, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i722.3 = icmp eq i64 %i.csu, %.0.i.i.i.i.i.i.i.i.i.i.i.i712
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i722.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i713, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720, !llvm.loop !1478

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i713: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i720, %middle.block3302, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i711
  %i.csv = icmp sgt i64 %i.crl, 3
  br i1 %i.csv, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i718, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i714

._crit_edge.i.i.i.i.i.i.i.i.i.i.i714:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i718, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i713
  %i.csw = icmp slt i64 %i.cro, %i.cqz
  br i1 %i.csw, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.preheader, label %.loopexit2805

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.preheader:    ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i714
  %i.csx = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i712, %i.crn
  %i.csy = sub i64 %i.cqz, %i.csx                 ; 3 uses
  %min.iters.check3308 = icmp ult i64 %i.csy, 16
  br i1 %min.iters.check3308, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.preheader3768, label %vector.memcheck3309

vector.memcheck3309:                              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.preheader
  %i.csz = shl nsw i64 %i.crb, 2
  %i.cta = add i64 %i.csz, %i.crd
  %i.ctb = add i64 %.idx2782, %i.cqy
  %i.ctc = sub i64 %i.ctb, %i.cta
  %diff.check3310 = icmp ugt i64 %i.ctc, -32
  br i1 %diff.check3310, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.preheader3768, label %vector.ph3311

vector.ph3311:                                    ; preds = %vector.memcheck3309
  %n.vec3312 = and i64 %i.csy, -8                 ; 3 uses
  %i.ctd = add i64 %i.cro, %n.vec3312
  br label %vector.body3313

vector.body3313:                                  ; preds = %vector.body3313, %vector.ph3311
  %index3314 = phi i64 [ 0, %vector.ph3311 ], [ %index.next3317, %vector.body3313 ] ; 2 uses
  %i.cte = add i64 %i.cro, %index3314             ; 2 uses
  %i.ctf = getelementptr inbounds [4 x i8], ptr %i.cre, i64 %i.cte ; 2 uses
  %i.ctg = getelementptr inbounds [4 x i8], ptr %i.cra, i64 %i.cte ; 2 uses
  %i.cth = getelementptr inbounds nuw i8, ptr %i.ctg, i64 16
  %wide.load3315 = load <4 x i32>, ptr %i.ctg, align 4, !tbaa !24
  %wide.load3316 = load <4 x i32>, ptr %i.cth, align 4, !tbaa !24
  %i.cti = getelementptr inbounds nuw i8, ptr %i.ctf, i64 16
  store <4 x i32> %wide.load3315, ptr %i.ctf, align 4, !tbaa !24
  store <4 x i32> %wide.load3316, ptr %i.cti, align 4, !tbaa !24
  %index.next3317 = add nuw i64 %index3314, 8     ; 2 uses
  %i.ctj = icmp eq i64 %index.next3317, %n.vec3312
  br i1 %i.ctj, label %middle.block3318, label %vector.body3313, !llvm.loop !1479

middle.block3318:                                 ; preds = %vector.body3313
  %cmp.n3319 = icmp eq i64 %i.csy, %n.vec3312
  br i1 %cmp.n3319, label %.loopexit2805, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.preheader3768

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.preheader3768: ; preds = %vector.memcheck3309, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.preheader, %middle.block3318
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i716.ph = phi i64 [ %i.cro, %vector.memcheck3309 ], [ %i.cro, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.preheader ], [ %i.ctd, %middle.block3318 ] ; 4 uses
  %i.ctk = sub i64 %i.cqz, %.05.i18.i.i.i.i.i.i.i.i.i.i.i716.ph
  %xtraiter3866 = and i64 %i.ctk, 3               ; 2 uses
  %lcmp.mod3867.not = icmp eq i64 %xtraiter3866, 0
  br i1 %lcmp.mod3867.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.prol:         ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.preheader3768, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i716.prol = phi i64 [ %i.cto, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i716.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.preheader3768 ] ; 3 uses
  %prol.iter3868 = phi i64 [ %prol.iter3868.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.preheader3768 ]
  %i.ctl = getelementptr inbounds [4 x i8], ptr %i.cre, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i716.prol
  %i.ctm = getelementptr inbounds [4 x i8], ptr %i.cra, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i716.prol
  %i.ctn = load i32, ptr %i.ctm, align 4, !tbaa !24
  store i32 %i.ctn, ptr %i.ctl, align 4, !tbaa !24
  %i.cto = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i716.prol, 1 ; 2 uses
  %prol.iter3868.next = add i64 %prol.iter3868, 1 ; 2 uses
  %prol.iter3868.cmp.not = icmp eq i64 %prol.iter3868.next, %xtraiter3866
  br i1 %prol.iter3868.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.prol, !llvm.loop !1480

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.preheader3768
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i716.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i716.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.preheader3768 ], [ %i.cto, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.prol ]
  %i.ctp = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i716.ph, %i.cqz
  %i.ctq = icmp ugt i64 %i.ctp, -4
  br i1 %i.ctq, label %.loopexit2805, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i716 = phi i64 [ %i.cug, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i716.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.prol.loopexit ] ; 6 uses
  %i.ctr = getelementptr inbounds [4 x i8], ptr %i.cre, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i716
  %i.cts = getelementptr inbounds [4 x i8], ptr %i.cra, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i716
  %i.ctt = load i32, ptr %i.cts, align 4, !tbaa !24
  store i32 %i.ctt, ptr %i.ctr, align 4, !tbaa !24
  %i.ctu = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i716, 1 ; 2 uses
  %i.ctv = getelementptr inbounds [4 x i8], ptr %i.cre, i64 %i.ctu
  %i.ctw = getelementptr inbounds [4 x i8], ptr %i.cra, i64 %i.ctu
  %i.ctx = load i32, ptr %i.ctw, align 4, !tbaa !24
  store i32 %i.ctx, ptr %i.ctv, align 4, !tbaa !24
  %i.cty = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i716, 2 ; 2 uses
  %i.ctz = getelementptr inbounds [4 x i8], ptr %i.cre, i64 %i.cty
  %i.cua = getelementptr inbounds [4 x i8], ptr %i.cra, i64 %i.cty
  %i.cub = load i32, ptr %i.cua, align 4, !tbaa !24
  store i32 %i.cub, ptr %i.ctz, align 4, !tbaa !24
  %i.cuc = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i716, 3 ; 2 uses
  %i.cud = getelementptr inbounds [4 x i8], ptr %i.cre, i64 %i.cuc
  %i.cue = getelementptr inbounds [4 x i8], ptr %i.cra, i64 %i.cuc
  %i.cuf = load i32, ptr %i.cue, align 4, !tbaa !24
  store i32 %i.cuf, ptr %i.cud, align 4, !tbaa !24
  %i.cug = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i716, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i717.3 = icmp eq i64 %i.cug, %i.cqz
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i717.3, label %.loopexit2805, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715, !llvm.loop !1481

.lr.ph.i.i.i.i.i.i.i.i.i.i.i718:                  ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i713, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i718
  %.021.i.i.i.i.i.i.i.i.i.i.i719 = phi i64 [ %i.cuk, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i718 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i712, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i713 ] ; 3 uses
  %i.cuh = getelementptr inbounds [4 x i8], ptr %i.cre, i64 %.021.i.i.i.i.i.i.i.i.i.i.i719
  %i.cui = getelementptr inbounds [4 x i8], ptr %i.cra, i64 %.021.i.i.i.i.i.i.i.i.i.i.i719
  %i.cuj = load <2 x i64>, ptr %i.cui, align 1, !tbaa !22
  store <2 x i64> %i.cuj, ptr %i.cuh, align 16, !tbaa !22
  %i.cuk = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i719, 4 ; 2 uses
  %i.cul = icmp slt i64 %i.cuk, %i.cro
  br i1 %i.cul, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i718, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i714, !llvm.loop !1355

.loopexit2805:                                    ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i715, %middle.block3318, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i714
  %i.cum = load ptr, ptr %1, align 8, !tbaa !99, !noalias !1592 ; 14 uses
  %i.cun = ptrtoaddr ptr %i.cum to i64            ; 2 uses
  %i.cuo = load i64, ptr %i.a, align 8, !tbaa !100, !noalias !1592 ; 10 uses
  %i.cup = add nsw i64 %i.cqz, %i.crb             ; 4 uses
  %i.cuq = load ptr, ptr %62, align 8, !tbaa !26, !noalias !1593 ; 2 uses
  %i.cur = ptrtoaddr ptr %i.cuq to i64            ; 2 uses
  %i.cus = getelementptr inbounds [4 x i8], ptr %i.cuq, i64 %i.cup ; 14 uses
  %i.cut = ptrtoint ptr %i.cus to i64             ; 2 uses
  %i.cuu = and i64 %i.cut, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i729 = icmp eq i64 %i.cuu, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i729, label %bb.dz, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i730

bb.dz:                                            ; preds = %.loopexit2805
  %i.cuv = lshr exact i64 %i.cut, 2
  %i.cuw = sub nsw i64 0, %i.cuv
  %i.cux = and i64 %i.cuw, 3
  %i.cuy = call i64 @llvm.smin.i64(i64 %i.cux, i64 %i.cuo)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i730

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i730: ; preds = %bb.dz, %.loopexit2805
  %.0.i.i.i.i.i.i.i.i.i.i.i.i731 = phi i64 [ %i.cuy, %bb.dz ], [ %i.cuo, %.loopexit2805 ] ; 11 uses
  %i.cuz = sub nsw i64 %i.cuo, %.0.i.i.i.i.i.i.i.i.i.i.i.i731 ; 2 uses
  %i.cva = sdiv i64 %i.cuz, 4
  %i.cvb = shl nsw i64 %i.cva, 2                  ; 2 uses
  %i.cvc = add nsw i64 %i.cvb, %.0.i.i.i.i.i.i.i.i.i.i.i.i731 ; 6 uses
  %i.cvd = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i731, 0
  br i1 %i.cvd, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i732

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.preheader:      ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i730
  %min.iters.check3324 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i731, 16
  br i1 %min.iters.check3324, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.preheader3767, label %vector.memcheck3325

vector.memcheck3325:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.preheader
  %i.cve = shl nsw i64 %i.cup, 2
  %i.cvf = add i64 %i.cve, %i.cur
  %i.cvg = sub i64 %i.cun, %i.cvf
  %diff.check3326 = icmp ugt i64 %i.cvg, -32
  br i1 %diff.check3326, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.preheader3767, label %vector.ph3327

vector.ph3327:                                    ; preds = %vector.memcheck3325
  %n.vec3328 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i731, 9223372036854775800 ; 3 uses
  br label %vector.body3329

vector.body3329:                                  ; preds = %vector.body3329, %vector.ph3327
  %index3330 = phi i64 [ 0, %vector.ph3327 ], [ %index.next3333, %vector.body3329 ] ; 3 uses
  %i.cvh = getelementptr inbounds nuw [4 x i8], ptr %i.cus, i64 %index3330 ; 2 uses
  %i.cvi = getelementptr inbounds nuw [4 x i8], ptr %i.cum, i64 %index3330 ; 2 uses
  %i.cvj = getelementptr inbounds nuw i8, ptr %i.cvi, i64 16
  %wide.load3331 = load <4 x i32>, ptr %i.cvi, align 4, !tbaa !24
  %wide.load3332 = load <4 x i32>, ptr %i.cvj, align 4, !tbaa !24
  %i.cvk = getelementptr inbounds nuw i8, ptr %i.cvh, i64 16
  store <4 x i32> %wide.load3331, ptr %i.cvh, align 4, !tbaa !24
  store <4 x i32> %wide.load3332, ptr %i.cvk, align 4, !tbaa !24
  %index.next3333 = add nuw i64 %index3330, 8     ; 2 uses
  %i.cvl = icmp eq i64 %index.next3333, %n.vec3328
  br i1 %i.cvl, label %middle.block3334, label %vector.body3329, !llvm.loop !1486

middle.block3334:                                 ; preds = %vector.body3329
  %cmp.n3335 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i731, %n.vec3328
  br i1 %cmp.n3335, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i732, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.preheader3767

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.preheader3767:  ; preds = %vector.memcheck3325, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.preheader, %middle.block3334
  %.05.i.i.i.i.i.i.i.i.i.i.i.i740.ph = phi i64 [ 0, %vector.memcheck3325 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.preheader ], [ %n.vec3328, %middle.block3334 ] ; 3 uses
  %xtraiter3869 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i731, 3 ; 2 uses
  %lcmp.mod3870.not = icmp eq i64 %xtraiter3869, 0
  br i1 %lcmp.mod3870.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.prol:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.preheader3767, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i740.prol = phi i64 [ %i.cvp, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i740.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.preheader3767 ] ; 3 uses
  %prol.iter3871 = phi i64 [ %prol.iter3871.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.preheader3767 ]
  %i.cvm = getelementptr inbounds nuw [4 x i8], ptr %i.cus, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i740.prol
  %i.cvn = getelementptr inbounds nuw [4 x i8], ptr %i.cum, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i740.prol
  %i.cvo = load i32, ptr %i.cvn, align 4, !tbaa !24
  store i32 %i.cvo, ptr %i.cvm, align 4, !tbaa !24
  %i.cvp = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i740.prol, 1 ; 2 uses
  %prol.iter3871.next = add i64 %prol.iter3871, 1 ; 2 uses
  %prol.iter3871.cmp.not = icmp eq i64 %prol.iter3871.next, %xtraiter3869
  br i1 %prol.iter3871.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.prol, !llvm.loop !1487

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.prol.loopexit:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.preheader3767
  %.05.i.i.i.i.i.i.i.i.i.i.i.i740.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i740.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.preheader3767 ], [ %i.cvp, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.prol ]
  %i.cvq = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i740.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i731
  %i.cvr = icmp ugt i64 %i.cvq, -4
  br i1 %i.cvr, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i732, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739
  %.05.i.i.i.i.i.i.i.i.i.i.i.i740 = phi i64 [ %i.cwh, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i740.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.prol.loopexit ] ; 6 uses
  %i.cvs = getelementptr inbounds nuw [4 x i8], ptr %i.cus, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i740
  %i.cvt = getelementptr inbounds nuw [4 x i8], ptr %i.cum, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i740
  %i.cvu = load i32, ptr %i.cvt, align 4, !tbaa !24
  store i32 %i.cvu, ptr %i.cvs, align 4, !tbaa !24
  %i.cvv = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i740, 1 ; 2 uses
  %i.cvw = getelementptr inbounds nuw [4 x i8], ptr %i.cus, i64 %i.cvv
  %i.cvx = getelementptr inbounds nuw [4 x i8], ptr %i.cum, i64 %i.cvv
  %i.cvy = load i32, ptr %i.cvx, align 4, !tbaa !24
  store i32 %i.cvy, ptr %i.cvw, align 4, !tbaa !24
  %i.cvz = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i740, 2 ; 2 uses
  %i.cwa = getelementptr inbounds nuw [4 x i8], ptr %i.cus, i64 %i.cvz
  %i.cwb = getelementptr inbounds nuw [4 x i8], ptr %i.cum, i64 %i.cvz
  %i.cwc = load i32, ptr %i.cwb, align 4, !tbaa !24
  store i32 %i.cwc, ptr %i.cwa, align 4, !tbaa !24
  %i.cwd = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i740, 3 ; 2 uses
  %i.cwe = getelementptr inbounds nuw [4 x i8], ptr %i.cus, i64 %i.cwd
  %i.cwf = getelementptr inbounds nuw [4 x i8], ptr %i.cum, i64 %i.cwd
  %i.cwg = load i32, ptr %i.cwf, align 4, !tbaa !24
  store i32 %i.cwg, ptr %i.cwe, align 4, !tbaa !24
  %i.cwh = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i740, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i741.3 = icmp eq i64 %i.cwh, %.0.i.i.i.i.i.i.i.i.i.i.i.i731
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i741.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i732, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739, !llvm.loop !1488

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i732: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i739, %middle.block3334, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i730
  %i.cwi = icmp sgt i64 %i.cuz, 3
  br i1 %i.cwi, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i737, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i733

._crit_edge.i.i.i.i.i.i.i.i.i.i.i733:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i737, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i732
  %i.cwj = icmp slt i64 %i.cvc, %i.cuo
  br i1 %i.cwj, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.preheader, label %.loopexit2804

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.preheader:    ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i733
  %i.cwk = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i731, %i.cvb
  %i.cwl = sub i64 %i.cuo, %i.cwk                 ; 3 uses
  %min.iters.check3340 = icmp ult i64 %i.cwl, 16
  br i1 %min.iters.check3340, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.preheader3766, label %vector.memcheck3341

vector.memcheck3341:                              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.preheader
  %i.cwm = shl nsw i64 %i.cup, 2
  %i.cwn = add i64 %i.cwm, %i.cur
  %i.cwo = sub i64 %i.cun, %i.cwn
  %diff.check3342 = icmp ugt i64 %i.cwo, -32
  br i1 %diff.check3342, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.preheader3766, label %vector.ph3343

vector.ph3343:                                    ; preds = %vector.memcheck3341
  %n.vec3344 = and i64 %i.cwl, -8                 ; 3 uses
  %i.cwp = add i64 %i.cvc, %n.vec3344
  br label %vector.body3345

vector.body3345:                                  ; preds = %vector.body3345, %vector.ph3343
  %index3346 = phi i64 [ 0, %vector.ph3343 ], [ %index.next3349, %vector.body3345 ] ; 2 uses
  %i.cwq = add i64 %i.cvc, %index3346             ; 2 uses
  %i.cwr = getelementptr inbounds [4 x i8], ptr %i.cus, i64 %i.cwq ; 2 uses
  %i.cws = getelementptr inbounds [4 x i8], ptr %i.cum, i64 %i.cwq ; 2 uses
  %i.cwt = getelementptr inbounds nuw i8, ptr %i.cws, i64 16
  %wide.load3347 = load <4 x i32>, ptr %i.cws, align 4, !tbaa !24
  %wide.load3348 = load <4 x i32>, ptr %i.cwt, align 4, !tbaa !24
  %i.cwu = getelementptr inbounds nuw i8, ptr %i.cwr, i64 16
  store <4 x i32> %wide.load3347, ptr %i.cwr, align 4, !tbaa !24
  store <4 x i32> %wide.load3348, ptr %i.cwu, align 4, !tbaa !24
  %index.next3349 = add nuw i64 %index3346, 8     ; 2 uses
  %i.cwv = icmp eq i64 %index.next3349, %n.vec3344
  br i1 %i.cwv, label %middle.block3350, label %vector.body3345, !llvm.loop !1489

middle.block3350:                                 ; preds = %vector.body3345
  %cmp.n3351 = icmp eq i64 %i.cwl, %n.vec3344
  br i1 %cmp.n3351, label %.loopexit2804, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.preheader3766

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.preheader3766: ; preds = %vector.memcheck3341, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.preheader, %middle.block3350
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i735.ph = phi i64 [ %i.cvc, %vector.memcheck3341 ], [ %i.cvc, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.preheader ], [ %i.cwp, %middle.block3350 ] ; 4 uses
  %i.cww = sub i64 %i.cuo, %.05.i18.i.i.i.i.i.i.i.i.i.i.i735.ph
  %xtraiter3872 = and i64 %i.cww, 3               ; 2 uses
  %lcmp.mod3873.not = icmp eq i64 %xtraiter3872, 0
  br i1 %lcmp.mod3873.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.prol:         ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.preheader3766, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i735.prol = phi i64 [ %i.cxa, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i735.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.preheader3766 ] ; 3 uses
  %prol.iter3874 = phi i64 [ %prol.iter3874.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.preheader3766 ]
  %i.cwx = getelementptr inbounds [4 x i8], ptr %i.cus, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i735.prol
  %i.cwy = getelementptr inbounds [4 x i8], ptr %i.cum, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i735.prol
  %i.cwz = load i32, ptr %i.cwy, align 4, !tbaa !24
  store i32 %i.cwz, ptr %i.cwx, align 4, !tbaa !24
  %i.cxa = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i735.prol, 1 ; 2 uses
  %prol.iter3874.next = add i64 %prol.iter3874, 1 ; 2 uses
  %prol.iter3874.cmp.not = icmp eq i64 %prol.iter3874.next, %xtraiter3872
  br i1 %prol.iter3874.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.prol, !llvm.loop !1490

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.preheader3766
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i735.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i735.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.preheader3766 ], [ %i.cxa, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.prol ]
  %i.cxb = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i735.ph, %i.cuo
  %i.cxc = icmp ugt i64 %i.cxb, -4
  br i1 %i.cxc, label %.loopexit2804, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i735 = phi i64 [ %i.cxs, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i735.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.prol.loopexit ] ; 6 uses
  %i.cxd = getelementptr inbounds [4 x i8], ptr %i.cus, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i735
  %i.cxe = getelementptr inbounds [4 x i8], ptr %i.cum, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i735
  %i.cxf = load i32, ptr %i.cxe, align 4, !tbaa !24
  store i32 %i.cxf, ptr %i.cxd, align 4, !tbaa !24
  %i.cxg = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i735, 1 ; 2 uses
  %i.cxh = getelementptr inbounds [4 x i8], ptr %i.cus, i64 %i.cxg
  %i.cxi = getelementptr inbounds [4 x i8], ptr %i.cum, i64 %i.cxg
  %i.cxj = load i32, ptr %i.cxi, align 4, !tbaa !24
  store i32 %i.cxj, ptr %i.cxh, align 4, !tbaa !24
  %i.cxk = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i735, 2 ; 2 uses
  %i.cxl = getelementptr inbounds [4 x i8], ptr %i.cus, i64 %i.cxk
  %i.cxm = getelementptr inbounds [4 x i8], ptr %i.cum, i64 %i.cxk
  %i.cxn = load i32, ptr %i.cxm, align 4, !tbaa !24
  store i32 %i.cxn, ptr %i.cxl, align 4, !tbaa !24
  %i.cxo = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i735, 3 ; 2 uses
  %i.cxp = getelementptr inbounds [4 x i8], ptr %i.cus, i64 %i.cxo
  %i.cxq = getelementptr inbounds [4 x i8], ptr %i.cum, i64 %i.cxo
  %i.cxr = load i32, ptr %i.cxq, align 4, !tbaa !24
  store i32 %i.cxr, ptr %i.cxp, align 4, !tbaa !24
  %i.cxs = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i735, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i736.3 = icmp eq i64 %i.cxs, %i.cuo
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i736.3, label %.loopexit2804, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734, !llvm.loop !1491

.lr.ph.i.i.i.i.i.i.i.i.i.i.i737:                  ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i732, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i737
  %.021.i.i.i.i.i.i.i.i.i.i.i738 = phi i64 [ %i.cxw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i737 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i731, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i732 ] ; 3 uses
  %i.cxt = getelementptr inbounds [4 x i8], ptr %i.cus, i64 %.021.i.i.i.i.i.i.i.i.i.i.i738
  %i.cxu = getelementptr inbounds [4 x i8], ptr %i.cum, i64 %.021.i.i.i.i.i.i.i.i.i.i.i738
  %i.cxv = load <2 x i64>, ptr %i.cxu, align 1, !tbaa !22
  store <2 x i64> %i.cxv, ptr %i.cxt, align 16, !tbaa !22
  %i.cxw = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i738, 4 ; 2 uses
  %i.cxx = icmp slt i64 %i.cxw, %i.cvc
  br i1 %i.cxx, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i737, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i733, !llvm.loop !1355

.loopexit2804:                                    ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i734, %middle.block3350, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i733
  %i.cxy = load ptr, ptr %1, align 8, !tbaa !99, !noalias !1594 ; 2 uses
  %i.cxz = ptrtoaddr ptr %i.cxy to i64            ; 2 uses
  %i.cya = load i64, ptr %i.a, align 8, !tbaa !100, !noalias !1594 ; 14 uses
  %i.cyb = getelementptr inbounds [4 x i8], ptr %i.cxy, i64 %i.cya ; 13 uses
  %i.cyc = add nsw i64 %i.cuo, %i.cup             ; 5 uses
  %i.cyd = load ptr, ptr %62, align 8, !tbaa !26, !noalias !1595 ; 2 uses
  %i.cye = ptrtoaddr ptr %i.cyd to i64            ; 2 uses
  %i.cyf = getelementptr inbounds [4 x i8], ptr %i.cyd, i64 %i.cyc ; 14 uses
  %i.cyg = ptrtoint ptr %i.cyf to i64             ; 2 uses
  %i.cyh = and i64 %i.cyg, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i748 = icmp eq i64 %i.cyh, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i748, label %bb.ea, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i749

bb.ea:                                            ; preds = %.loopexit2804
  %i.cyi = lshr exact i64 %i.cyg, 2
  %i.cyj = sub nsw i64 0, %i.cyi
  %i.cyk = and i64 %i.cyj, 3
  %i.cyl = call i64 @llvm.smin.i64(i64 %i.cyk, i64 %i.cya)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i749

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i749: ; preds = %bb.ea, %.loopexit2804
  %.0.i.i.i.i.i.i.i.i.i.i.i.i750 = phi i64 [ %i.cyl, %bb.ea ], [ %i.cya, %.loopexit2804 ] ; 11 uses
  %i.cym = sub nsw i64 %i.cya, %.0.i.i.i.i.i.i.i.i.i.i.i.i750 ; 2 uses
  %i.cyn = sdiv i64 %i.cym, 4
  %i.cyo = shl nsw i64 %i.cyn, 2                  ; 2 uses
  %i.cyp = add nsw i64 %i.cyo, %.0.i.i.i.i.i.i.i.i.i.i.i.i750 ; 6 uses
  %i.cyq = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i750, 0
  br i1 %i.cyq, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i751

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.preheader:      ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i749
  %min.iters.check3356 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i750, 20
  br i1 %min.iters.check3356, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.preheader3765, label %vector.memcheck3357

vector.memcheck3357:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.preheader
  %i.cyr = shl nsw i64 %i.cyc, 2
  %i.cys = shl i64 %i.cya, 2
  %i.cyt = add i64 %i.cyr, %i.cye
  %i.cyu = add i64 %i.cys, %i.cxz
  %i.cyv = sub i64 %i.cyu, %i.cyt
  %diff.check3358 = icmp ugt i64 %i.cyv, -32
  br i1 %diff.check3358, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.preheader3765, label %vector.ph3359

vector.ph3359:                                    ; preds = %vector.memcheck3357
  %n.vec3360 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i750, 9223372036854775800 ; 3 uses
  br label %vector.body3361

vector.body3361:                                  ; preds = %vector.body3361, %vector.ph3359
  %index3362 = phi i64 [ 0, %vector.ph3359 ], [ %index.next3365, %vector.body3361 ] ; 3 uses
  %i.cyw = getelementptr inbounds nuw [4 x i8], ptr %i.cyf, i64 %index3362 ; 2 uses
  %i.cyx = getelementptr inbounds nuw [4 x i8], ptr %i.cyb, i64 %index3362 ; 2 uses
  %i.cyy = getelementptr inbounds nuw i8, ptr %i.cyx, i64 16
  %wide.load3363 = load <4 x i32>, ptr %i.cyx, align 4, !tbaa !24
  %wide.load3364 = load <4 x i32>, ptr %i.cyy, align 4, !tbaa !24
  %i.cyz = getelementptr inbounds nuw i8, ptr %i.cyw, i64 16
  store <4 x i32> %wide.load3363, ptr %i.cyw, align 4, !tbaa !24
  store <4 x i32> %wide.load3364, ptr %i.cyz, align 4, !tbaa !24
  %index.next3365 = add nuw i64 %index3362, 8     ; 2 uses
  %i.cza = icmp eq i64 %index.next3365, %n.vec3360
  br i1 %i.cza, label %middle.block3366, label %vector.body3361, !llvm.loop !1496

middle.block3366:                                 ; preds = %vector.body3361
  %cmp.n3367 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i750, %n.vec3360
  br i1 %cmp.n3367, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i751, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.preheader3765

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.preheader3765:  ; preds = %vector.memcheck3357, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.preheader, %middle.block3366
  %.05.i.i.i.i.i.i.i.i.i.i.i.i759.ph = phi i64 [ 0, %vector.memcheck3357 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.preheader ], [ %n.vec3360, %middle.block3366 ] ; 3 uses
  %xtraiter3875 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i750, 3 ; 2 uses
  %lcmp.mod3876.not = icmp eq i64 %xtraiter3875, 0
  br i1 %lcmp.mod3876.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.prol:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.preheader3765, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i759.prol = phi i64 [ %i.cze, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i759.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.preheader3765 ] ; 3 uses
  %prol.iter3877 = phi i64 [ %prol.iter3877.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.preheader3765 ]
  %i.czb = getelementptr inbounds nuw [4 x i8], ptr %i.cyf, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i759.prol
  %i.czc = getelementptr inbounds nuw [4 x i8], ptr %i.cyb, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i759.prol
  %i.czd = load i32, ptr %i.czc, align 4, !tbaa !24
  store i32 %i.czd, ptr %i.czb, align 4, !tbaa !24
  %i.cze = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i759.prol, 1 ; 2 uses
  %prol.iter3877.next = add i64 %prol.iter3877, 1 ; 2 uses
  %prol.iter3877.cmp.not = icmp eq i64 %prol.iter3877.next, %xtraiter3875
  br i1 %prol.iter3877.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.prol, !llvm.loop !1497

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.prol.loopexit:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.preheader3765
  %.05.i.i.i.i.i.i.i.i.i.i.i.i759.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i759.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.preheader3765 ], [ %i.cze, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.prol ]
  %i.czf = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i759.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i750
  %i.czg = icmp ugt i64 %i.czf, -4
  br i1 %i.czg, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i751, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758
  %.05.i.i.i.i.i.i.i.i.i.i.i.i759 = phi i64 [ %i.czw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i759.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.prol.loopexit ] ; 6 uses
  %i.czh = getelementptr inbounds nuw [4 x i8], ptr %i.cyf, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i759
  %i.czi = getelementptr inbounds nuw [4 x i8], ptr %i.cyb, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i759
  %i.czj = load i32, ptr %i.czi, align 4, !tbaa !24
  store i32 %i.czj, ptr %i.czh, align 4, !tbaa !24
  %i.czk = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i759, 1 ; 2 uses
  %i.czl = getelementptr inbounds nuw [4 x i8], ptr %i.cyf, i64 %i.czk
  %i.czm = getelementptr inbounds nuw [4 x i8], ptr %i.cyb, i64 %i.czk
  %i.czn = load i32, ptr %i.czm, align 4, !tbaa !24
  store i32 %i.czn, ptr %i.czl, align 4, !tbaa !24
  %i.czo = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i759, 2 ; 2 uses
  %i.czp = getelementptr inbounds nuw [4 x i8], ptr %i.cyf, i64 %i.czo
  %i.czq = getelementptr inbounds nuw [4 x i8], ptr %i.cyb, i64 %i.czo
  %i.czr = load i32, ptr %i.czq, align 4, !tbaa !24
  store i32 %i.czr, ptr %i.czp, align 4, !tbaa !24
  %i.czs = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i759, 3 ; 2 uses
  %i.czt = getelementptr inbounds nuw [4 x i8], ptr %i.cyf, i64 %i.czs
  %i.czu = getelementptr inbounds nuw [4 x i8], ptr %i.cyb, i64 %i.czs
  %i.czv = load i32, ptr %i.czu, align 4, !tbaa !24
  store i32 %i.czv, ptr %i.czt, align 4, !tbaa !24
  %i.czw = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i759, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i760.3 = icmp eq i64 %i.czw, %.0.i.i.i.i.i.i.i.i.i.i.i.i750
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i760.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i751, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758, !llvm.loop !1498

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i751: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i758, %middle.block3366, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i749
  %i.czx = icmp sgt i64 %i.cym, 3
  br i1 %i.czx, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i756, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i752

._crit_edge.i.i.i.i.i.i.i.i.i.i.i752:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i756, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i751
  %i.czy = icmp slt i64 %i.cyp, %i.cya
  br i1 %i.czy, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.preheader, label %.loopexit2803

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.preheader:    ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i752
  %i.czz = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i750, %i.cyo
  %i.daa = sub i64 %i.cya, %i.czz                 ; 3 uses
  %min.iters.check3372 = icmp ult i64 %i.daa, 20
  br i1 %min.iters.check3372, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.preheader3764, label %vector.memcheck3373

vector.memcheck3373:                              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.preheader
  %i.dab = shl nsw i64 %i.cyc, 2
  %i.dac = shl i64 %i.cya, 2
  %i.dad = add i64 %i.dab, %i.cye
  %i.dae = add i64 %i.dac, %i.cxz
  %i.daf = sub i64 %i.dae, %i.dad
  %diff.check3374 = icmp ugt i64 %i.daf, -32
  br i1 %diff.check3374, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.preheader3764, label %vector.ph3375

vector.ph3375:                                    ; preds = %vector.memcheck3373
  %n.vec3376 = and i64 %i.daa, -8                 ; 3 uses
  %i.dag = add i64 %i.cyp, %n.vec3376
  br label %vector.body3377

vector.body3377:                                  ; preds = %vector.body3377, %vector.ph3375
  %index3378 = phi i64 [ 0, %vector.ph3375 ], [ %index.next3381, %vector.body3377 ] ; 2 uses
  %i.dah = add i64 %i.cyp, %index3378             ; 2 uses
  %i.dai = getelementptr inbounds [4 x i8], ptr %i.cyf, i64 %i.dah ; 2 uses
  %i.daj = getelementptr inbounds [4 x i8], ptr %i.cyb, i64 %i.dah ; 2 uses
  %i.dak = getelementptr inbounds nuw i8, ptr %i.daj, i64 16
  %wide.load3379 = load <4 x i32>, ptr %i.daj, align 4, !tbaa !24
  %wide.load3380 = load <4 x i32>, ptr %i.dak, align 4, !tbaa !24
  %i.dal = getelementptr inbounds nuw i8, ptr %i.dai, i64 16
  store <4 x i32> %wide.load3379, ptr %i.dai, align 4, !tbaa !24
  store <4 x i32> %wide.load3380, ptr %i.dal, align 4, !tbaa !24
  %index.next3381 = add nuw i64 %index3378, 8     ; 2 uses
  %i.dam = icmp eq i64 %index.next3381, %n.vec3376
  br i1 %i.dam, label %middle.block3382, label %vector.body3377, !llvm.loop !1499

middle.block3382:                                 ; preds = %vector.body3377
  %cmp.n3383 = icmp eq i64 %i.daa, %n.vec3376
  br i1 %cmp.n3383, label %.loopexit2803, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.preheader3764

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.preheader3764: ; preds = %vector.memcheck3373, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.preheader, %middle.block3382
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i754.ph = phi i64 [ %i.cyp, %vector.memcheck3373 ], [ %i.cyp, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.preheader ], [ %i.dag, %middle.block3382 ] ; 4 uses
  %i.dan = sub i64 %i.cya, %.05.i18.i.i.i.i.i.i.i.i.i.i.i754.ph
  %xtraiter3878 = and i64 %i.dan, 3               ; 2 uses
  %lcmp.mod3879.not = icmp eq i64 %xtraiter3878, 0
  br i1 %lcmp.mod3879.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.prol:         ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.preheader3764, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i754.prol = phi i64 [ %i.dar, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i754.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.preheader3764 ] ; 3 uses
  %prol.iter3880 = phi i64 [ %prol.iter3880.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.preheader3764 ]
  %i.dao = getelementptr inbounds [4 x i8], ptr %i.cyf, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i754.prol
  %i.dap = getelementptr inbounds [4 x i8], ptr %i.cyb, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i754.prol
  %i.daq = load i32, ptr %i.dap, align 4, !tbaa !24
  store i32 %i.daq, ptr %i.dao, align 4, !tbaa !24
  %i.dar = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i754.prol, 1 ; 2 uses
  %prol.iter3880.next = add i64 %prol.iter3880, 1 ; 2 uses
  %prol.iter3880.cmp.not = icmp eq i64 %prol.iter3880.next, %xtraiter3878
  br i1 %prol.iter3880.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.prol, !llvm.loop !1500

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.preheader3764
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i754.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i754.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.preheader3764 ], [ %i.dar, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.prol ]
  %i.das = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i754.ph, %i.cya
  %i.dat = icmp ugt i64 %i.das, -4
  br i1 %i.dat, label %.loopexit2803, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i754 = phi i64 [ %i.dbj, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i754.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.prol.loopexit ] ; 6 uses
  %i.dau = getelementptr inbounds [4 x i8], ptr %i.cyf, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i754
  %i.dav = getelementptr inbounds [4 x i8], ptr %i.cyb, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i754
  %i.daw = load i32, ptr %i.dav, align 4, !tbaa !24
  store i32 %i.daw, ptr %i.dau, align 4, !tbaa !24
  %i.dax = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i754, 1 ; 2 uses
  %i.day = getelementptr inbounds [4 x i8], ptr %i.cyf, i64 %i.dax
  %i.daz = getelementptr inbounds [4 x i8], ptr %i.cyb, i64 %i.dax
  %i.dba = load i32, ptr %i.daz, align 4, !tbaa !24
  store i32 %i.dba, ptr %i.day, align 4, !tbaa !24
  %i.dbb = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i754, 2 ; 2 uses
  %i.dbc = getelementptr inbounds [4 x i8], ptr %i.cyf, i64 %i.dbb
  %i.dbd = getelementptr inbounds [4 x i8], ptr %i.cyb, i64 %i.dbb
  %i.dbe = load i32, ptr %i.dbd, align 4, !tbaa !24
  store i32 %i.dbe, ptr %i.dbc, align 4, !tbaa !24
  %i.dbf = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i754, 3 ; 2 uses
  %i.dbg = getelementptr inbounds [4 x i8], ptr %i.cyf, i64 %i.dbf
  %i.dbh = getelementptr inbounds [4 x i8], ptr %i.cyb, i64 %i.dbf
  %i.dbi = load i32, ptr %i.dbh, align 4, !tbaa !24
  store i32 %i.dbi, ptr %i.dbg, align 4, !tbaa !24
  %i.dbj = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i754, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i755.3 = icmp eq i64 %i.dbj, %i.cya
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i755.3, label %.loopexit2803, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753, !llvm.loop !1501

.lr.ph.i.i.i.i.i.i.i.i.i.i.i756:                  ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i751, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i756
  %.021.i.i.i.i.i.i.i.i.i.i.i757 = phi i64 [ %i.dbn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i756 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i750, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i751 ] ; 3 uses
  %i.dbk = getelementptr inbounds [4 x i8], ptr %i.cyf, i64 %.021.i.i.i.i.i.i.i.i.i.i.i757
  %i.dbl = getelementptr inbounds [4 x i8], ptr %i.cyb, i64 %.021.i.i.i.i.i.i.i.i.i.i.i757
  %i.dbm = load <2 x i64>, ptr %i.dbl, align 1, !tbaa !22
  store <2 x i64> %i.dbm, ptr %i.dbk, align 16, !tbaa !22
  %i.dbn = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i757, 4 ; 2 uses
  %i.dbo = icmp slt i64 %i.dbn, %i.cyp
  br i1 %i.dbo, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i756, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i752, !llvm.loop !1355

.loopexit2803:                                    ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i753, %middle.block3382, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i752
  %i.dbp = load ptr, ptr %1, align 8, !tbaa !99, !noalias !1596 ; 2 uses
  %i.dbq = ptrtoaddr ptr %i.dbp to i64            ; 2 uses
  %i.dbr = load i64, ptr %i.a, align 8, !tbaa !100, !noalias !1596 ; 9 uses
  %.idx2783 = shl i64 %i.dbr, 3                   ; 3 uses
  %i.dbs = getelementptr inbounds i8, ptr %i.dbp, i64 %.idx2783 ; 13 uses
  %i.dbt = load ptr, ptr %62, align 8, !tbaa !26, !noalias !1597 ; 2 uses
  %i.dbu = ptrtoaddr ptr %i.dbt to i64            ; 2 uses
  %i.dbv = getelementptr [4 x i8], ptr %i.dbt, i64 %i.cyc
  %i.dbw = getelementptr [4 x i8], ptr %i.dbv, i64 %i.cya ; 14 uses
  %i.dbx = ptrtoint ptr %i.dbw to i64             ; 2 uses
  %i.dby = and i64 %i.dbx, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i767 = icmp eq i64 %i.dby, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i767, label %bb.eb, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i768

bb.eb:                                            ; preds = %.loopexit2803
  %i.dbz = lshr exact i64 %i.dbx, 2
  %i.dca = sub nsw i64 0, %i.dbz
  %i.dcb = and i64 %i.dca, 3
  %i.dcc = call i64 @llvm.smin.i64(i64 %i.dcb, i64 %i.dbr)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i768

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i768: ; preds = %bb.eb, %.loopexit2803
  %.0.i.i.i.i.i.i.i.i.i.i.i.i769 = phi i64 [ %i.dcc, %bb.eb ], [ %i.dbr, %.loopexit2803 ] ; 11 uses
  %i.dcd = sub nsw i64 %i.dbr, %.0.i.i.i.i.i.i.i.i.i.i.i.i769 ; 2 uses
  %i.dce = sdiv i64 %i.dcd, 4
  %i.dcf = shl nsw i64 %i.dce, 2                  ; 2 uses
  %i.dcg = add nsw i64 %i.dcf, %.0.i.i.i.i.i.i.i.i.i.i.i.i769 ; 6 uses
  %i.dch = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i769, 0
  br i1 %i.dch, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i770

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.preheader:      ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i768
  %min.iters.check3388 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i769, 20
  br i1 %min.iters.check3388, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.preheader3763, label %vector.memcheck3389

vector.memcheck3389:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.preheader
  %i.dci = add i64 %i.cya, %i.cyc
  %i.dcj = shl i64 %i.dci, 2
  %i.dck = add i64 %i.dcj, %i.dbu
  %i.dcl = add i64 %.idx2783, %i.dbq
  %i.dcm = sub i64 %i.dcl, %i.dck
  %diff.check3390 = icmp ugt i64 %i.dcm, -32
  br i1 %diff.check3390, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.preheader3763, label %vector.ph3391

vector.ph3391:                                    ; preds = %vector.memcheck3389
  %n.vec3392 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i769, 9223372036854775800 ; 3 uses
  br label %vector.body3393

vector.body3393:                                  ; preds = %vector.body3393, %vector.ph3391
  %index3394 = phi i64 [ 0, %vector.ph3391 ], [ %index.next3397, %vector.body3393 ] ; 3 uses
  %i.dcn = getelementptr inbounds nuw [4 x i8], ptr %i.dbw, i64 %index3394 ; 2 uses
  %i.dco = getelementptr inbounds nuw [4 x i8], ptr %i.dbs, i64 %index3394 ; 2 uses
  %i.dcp = getelementptr inbounds nuw i8, ptr %i.dco, i64 16
  %wide.load3395 = load <4 x i32>, ptr %i.dco, align 4, !tbaa !24
  %wide.load3396 = load <4 x i32>, ptr %i.dcp, align 4, !tbaa !24
  %i.dcq = getelementptr inbounds nuw i8, ptr %i.dcn, i64 16
  store <4 x i32> %wide.load3395, ptr %i.dcn, align 4, !tbaa !24
  store <4 x i32> %wide.load3396, ptr %i.dcq, align 4, !tbaa !24
  %index.next3397 = add nuw i64 %index3394, 8     ; 2 uses
  %i.dcr = icmp eq i64 %index.next3397, %n.vec3392
  br i1 %i.dcr, label %middle.block3398, label %vector.body3393, !llvm.loop !1506

middle.block3398:                                 ; preds = %vector.body3393
  %cmp.n3399 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i769, %n.vec3392
  br i1 %cmp.n3399, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i770, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.preheader3763

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.preheader3763:  ; preds = %vector.memcheck3389, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.preheader, %middle.block3398
  %.05.i.i.i.i.i.i.i.i.i.i.i.i778.ph = phi i64 [ 0, %vector.memcheck3389 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.preheader ], [ %n.vec3392, %middle.block3398 ] ; 3 uses
  %xtraiter3881 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i769, 3 ; 2 uses
  %lcmp.mod3882.not = icmp eq i64 %xtraiter3881, 0
  br i1 %lcmp.mod3882.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.prol:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.preheader3763, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i778.prol = phi i64 [ %i.dcv, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i778.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.preheader3763 ] ; 3 uses
  %prol.iter3883 = phi i64 [ %prol.iter3883.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.preheader3763 ]
  %i.dcs = getelementptr inbounds nuw [4 x i8], ptr %i.dbw, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i778.prol
  %i.dct = getelementptr inbounds nuw [4 x i8], ptr %i.dbs, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i778.prol
  %i.dcu = load i32, ptr %i.dct, align 4, !tbaa !24
  store i32 %i.dcu, ptr %i.dcs, align 4, !tbaa !24
  %i.dcv = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i778.prol, 1 ; 2 uses
  %prol.iter3883.next = add i64 %prol.iter3883, 1 ; 2 uses
  %prol.iter3883.cmp.not = icmp eq i64 %prol.iter3883.next, %xtraiter3881
  br i1 %prol.iter3883.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.prol, !llvm.loop !1507

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.prol.loopexit:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.preheader3763
  %.05.i.i.i.i.i.i.i.i.i.i.i.i778.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i778.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.preheader3763 ], [ %i.dcv, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.prol ]
  %i.dcw = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i778.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i769
  %i.dcx = icmp ugt i64 %i.dcw, -4
  br i1 %i.dcx, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i770, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777
  %.05.i.i.i.i.i.i.i.i.i.i.i.i778 = phi i64 [ %i.ddn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i778.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i777.prol.loopexit ] ; 6 uses
  %i.dcy = getelementptr inbounds nuw [4 x i8], ptr %i.dbw, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i778
  %i.dcz = getelementptr inbounds nuw [4 x i8], ptr %i.dbs, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i778
  %i.dda = load i32, ptr %i.dcz, align 4, !tbaa !24
  store i32 %i.dda, ptr %i.dcy, align 4, !tbaa !24
  %i.ddb = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i778, 1 ; 2 uses
  %i.ddc = getelementptr inbounds nuw [4 x i8], ptr %i.dbw, i64 %i.ddb
  %i.ddd = getelementptr inbounds nuw [4 x i8], ptr %i.dbs, i64 %i.ddb
  %i.dde = load i32, ptr %i.ddd, align 4, !tbaa !24
  store i32 %i.dde, ptr %i.ddc, align 4, !tbaa !24
  %i.ddf = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i778, 2 ; 2 uses
  %i.ddg = getelementptr inbounds nuw [4 x i8], ptr %i.dbw, i64 %i.ddf
  %i.ddh = getelementptr inbounds nuw [4 x i8], ptr %i.dbs, i64 %i.ddf
  %i.ddi = load i32, ptr %i.ddh, align 4, !tbaa !24
  store i32 %i.ddi, ptr %i.ddg, align 4, !tbaa !24
  %i.ddj = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i778, 3 ; 2 uses
  %i.ddk = getelementptr inbounds nuw [4 x i8], ptr %i.dbw, i64 %i.ddj
  %i.ddl = getelementptr inbounds nuw [4 x i8], ptr %i.dbs, i64 %i.ddj
end_hunk_3
