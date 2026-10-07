Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/AtA_cached?download=true
inline.NumInlined: 983
inline.NumDeleted: 465
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN3igl21AtA_cached_precomputeIdEEvRKN5Eigen12SparseMatrixIT_Li0EiEERNS_15AtA_cached_dataERS4_:bb.a
  %index845 = phi i64 [ 0, %vector.ph842 ], [ %index.next850, %vector.body844 ] ; 2 uses
  %vec.phi846 = phi <4 x i32> [ %i.ke, %vector.ph842 ], [ %i.kh, %vector.body844 ]
  %vec.phi847 = phi <4 x i32> [ zeroinitializer, %vector.ph842 ], [ %i.ki, %vector.body844 ]
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %index845 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  %wide.load848 = load <4 x i32>, ptr %i.kf, align 4, !tbaa !27
  %wide.load849 = load <4 x i32>, ptr %i.kg, align 4, !tbaa !27
  %i.kh = add <4 x i32> %wide.load848, %vec.phi846 ; 2 uses
  %i.ki = add <4 x i32> %wide.load849, %vec.phi847 ; 2 uses
  %index.next850 = add nuw i64 %index845, 8       ; 2 uses
  %i.kj = icmp eq i64 %index.next850, %n.vec843
  br i1 %i.kj, label %middle.block851, label %vector.body844, !llvm.loop !77

middle.block851:                                  ; preds = %vector.body844
  %bin.rdx852 = add <4 x i32> %i.ki, %i.kh
  %i.kk = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx852) ; 2 uses
  %cmp.n853 = icmp eq i64 %.0.i.i.i.i.i.i.i.i147, %n.vec843
  br i1 %cmp.n853, label %.preheader.i.i.i.i153, label %.lr.ph85.i.i.i.i161.preheader1098

.lr.ph85.i.i.i.i161.preheader1098:                ; preds = %.lr.ph85.i.i.i.i161.preheader, %middle.block851
  %.05683.i.i.i.i162.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i161.preheader ], [ %n.vec843, %middle.block851 ]
  %.07582.i.i.i.i163.ph = phi i32 [ %i.kc, %.lr.ph85.i.i.i.i161.preheader ], [ %i.kk, %middle.block851 ]
  br label %.lr.ph85.i.i.i.i161

.preheader.i.i.i.i153:                            ; preds = %.lr.ph85.i.i.i.i161, %middle.block851, %bb.as
  %.075.lcssa.i.i.i.i154 = phi i32 [ %i.kc, %bb.as ], [ %i.kk, %middle.block851 ], [ %i.kz, %.lr.ph85.i.i.i.i161 ] ; 3 uses
  %i.kl = icmp slt i64 %i.ja, %i.ik
  br i1 %i.kl, label %.lr.ph89.i.i.i.i158.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit179

.lr.ph89.i.i.i.i158.preheader:                    ; preds = %.preheader.i.i.i.i153
  %i.km = add i64 %.0.i.i.i.i.i.i.i.i147, %i.iy
  %i.kn = sub i64 %i.ik, %i.km                    ; 3 uses
  %min.iters.check857 = icmp ult i64 %i.kn, 8
  br i1 %min.iters.check857, label %.lr.ph89.i.i.i.i158.preheader1093, label %vector.ph858

vector.ph858:                                     ; preds = %.lr.ph89.i.i.i.i158.preheader
  %n.vec859 = and i64 %i.kn, -8                   ; 3 uses
  %i.ko = add i64 %i.ja, %n.vec859
  %i.kp = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i154, i64 0
  %i.kq = getelementptr [4 x i8], ptr %i.ib, i64 %i.ja
  br label %vector.body860

vector.body860:                                   ; preds = %vector.body860, %vector.ph858
  %index861 = phi i64 [ 0, %vector.ph858 ], [ %index.next866, %vector.body860 ] ; 2 uses
  %vec.phi862 = phi <4 x i32> [ %i.kp, %vector.ph858 ], [ %i.kt, %vector.body860 ]
  %vec.phi863 = phi <4 x i32> [ zeroinitializer, %vector.ph858 ], [ %i.ku, %vector.body860 ]
  %i.kr = getelementptr [4 x i8], ptr %i.kq, i64 %index861 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  %wide.load864 = load <4 x i32>, ptr %i.kr, align 4, !tbaa !27
  %wide.load865 = load <4 x i32>, ptr %i.ks, align 4, !tbaa !27
  %i.kt = add <4 x i32> %wide.load864, %vec.phi862 ; 2 uses
  %i.ku = add <4 x i32> %wide.load865, %vec.phi863 ; 2 uses
  %index.next866 = add nuw i64 %index861, 8       ; 2 uses
  %i.kv = icmp eq i64 %index.next866, %n.vec859
  br i1 %i.kv, label %middle.block867, label %vector.body860, !llvm.loop !78

middle.block867:                                  ; preds = %vector.body860
  %bin.rdx868 = add <4 x i32> %i.ku, %i.kt
  %i.kw = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx868) ; 2 uses
  %cmp.n869 = icmp eq i64 %i.kn, %n.vec859
  br i1 %cmp.n869, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit179, label %.lr.ph89.i.i.i.i158.preheader1093

.lr.ph89.i.i.i.i158.preheader1093:                ; preds = %.lr.ph89.i.i.i.i158.preheader, %middle.block867
  %.05588.i.i.i.i159.ph = phi i64 [ %i.ja, %.lr.ph89.i.i.i.i158.preheader ], [ %i.ko, %middle.block867 ]
  %.187.i.i.i.i160.ph = phi i32 [ %.075.lcssa.i.i.i.i154, %.lr.ph89.i.i.i.i158.preheader ], [ %i.kw, %middle.block867 ]
  br label %.lr.ph89.i.i.i.i158

.lr.ph85.i.i.i.i161:                              ; preds = %.lr.ph85.i.i.i.i161.preheader1098, %.lr.ph85.i.i.i.i161
  %.05683.i.i.i.i162 = phi i64 [ %i.la, %.lr.ph85.i.i.i.i161 ], [ %.05683.i.i.i.i162.ph, %.lr.ph85.i.i.i.i161.preheader1098 ] ; 2 uses
  %.07582.i.i.i.i163 = phi i32 [ %i.kz, %.lr.ph85.i.i.i.i161 ], [ %.07582.i.i.i.i163.ph, %.lr.ph85.i.i.i.i161.preheader1098 ]
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %.05683.i.i.i.i162
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !27
  %i.kz = add nsw i32 %i.ky, %.07582.i.i.i.i163   ; 2 uses
  %i.la = add nuw nsw i64 %.05683.i.i.i.i162, 1   ; 2 uses
  %exitcond.not.i.i.i.i164 = icmp eq i64 %i.la, %.0.i.i.i.i.i.i.i.i147
  br i1 %exitcond.not.i.i.i.i164, label %.preheader.i.i.i.i153, label %.lr.ph85.i.i.i.i161, !llvm.loop !79

.lr.ph89.i.i.i.i158:                              ; preds = %.lr.ph89.i.i.i.i158.preheader1093, %.lr.ph89.i.i.i.i158
  %.05588.i.i.i.i159 = phi i64 [ %i.le, %.lr.ph89.i.i.i.i158 ], [ %.05588.i.i.i.i159.ph, %.lr.ph89.i.i.i.i158.preheader1093 ] ; 2 uses
  %.187.i.i.i.i160 = phi i32 [ %i.ld, %.lr.ph89.i.i.i.i158 ], [ %.187.i.i.i.i160.ph, %.lr.ph89.i.i.i.i158.preheader1093 ]
  %i.lb = getelementptr inbounds [4 x i8], ptr %i.ib, i64 %.05588.i.i.i.i159
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !27
  %i.ld = add nsw i32 %i.lc, %.187.i.i.i.i160     ; 2 uses
  %i.le = add nsw i64 %.05588.i.i.i.i159, 1       ; 2 uses
  %i.lf = icmp slt i64 %i.le, %i.ik
  br i1 %i.lf, label %.lr.ph89.i.i.i.i158, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit179, !llvm.loop !80

bb.at:                                            ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i146
  %i.lg = load i32, ptr %i.ib, align 4, !tbaa !27 ; 3 uses
  %i.lh = icmp sgt i64 %i.ik, 1
  br i1 %i.lh, label %.lr.ph94.i.i.i.i175.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit179

.lr.ph94.i.i.i.i175.preheader:                    ; preds = %bb.at
  %i.li = add nsw i64 %i.ik, -1                   ; 2 uses
  %min.iters.check873 = icmp ult i64 %i.ik, 9
  br i1 %min.iters.check873, label %.lr.ph94.i.i.i.i175.preheader1089, label %vector.ph874

vector.ph874:                                     ; preds = %.lr.ph94.i.i.i.i175.preheader
  %n.vec875 = and i64 %i.li, -8                   ; 3 uses
  %i.lj = or disjoint i64 %n.vec875, 1
  %i.lk = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.lg, i64 0
  br label %vector.body876

vector.body876:                                   ; preds = %vector.body876, %vector.ph874
  %index877 = phi i64 [ 0, %vector.ph874 ], [ %index.next882, %vector.body876 ] ; 2 uses
  %vec.phi878 = phi <4 x i32> [ %i.lk, %vector.ph874 ], [ %i.lo, %vector.body876 ]
  %vec.phi879 = phi <4 x i32> [ zeroinitializer, %vector.ph874 ], [ %i.lp, %vector.body876 ]
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %index877 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 4
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ll, i64 20
  %wide.load880 = load <4 x i32>, ptr %i.lm, align 4, !tbaa !27
  %wide.load881 = load <4 x i32>, ptr %i.ln, align 4, !tbaa !27
  %i.lo = add <4 x i32> %wide.load880, %vec.phi878 ; 2 uses
  %i.lp = add <4 x i32> %wide.load881, %vec.phi879 ; 2 uses
  %index.next882 = add nuw i64 %index877, 8       ; 2 uses
  %i.lq = icmp eq i64 %index.next882, %n.vec875
  br i1 %i.lq, label %middle.block883, label %vector.body876, !llvm.loop !81

middle.block883:                                  ; preds = %vector.body876
  %bin.rdx884 = add <4 x i32> %i.lp, %i.lo
  %i.lr = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx884) ; 2 uses
  %cmp.n885 = icmp eq i64 %i.li, %n.vec875
  br i1 %cmp.n885, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit179, label %.lr.ph94.i.i.i.i175.preheader1089

.lr.ph94.i.i.i.i175.preheader1089:                ; preds = %.lr.ph94.i.i.i.i175.preheader, %middle.block883
  %.092.i.i.i.i176.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i175.preheader ], [ %i.lj, %middle.block883 ]
  %.291.i.i.i.i177.ph = phi i32 [ %i.lg, %.lr.ph94.i.i.i.i175.preheader ], [ %i.lr, %middle.block883 ]
  br label %.lr.ph94.i.i.i.i175

.lr.ph94.i.i.i.i175:                              ; preds = %.lr.ph94.i.i.i.i175.preheader1089, %.lr.ph94.i.i.i.i175
  %.092.i.i.i.i176 = phi i64 [ %i.lv, %.lr.ph94.i.i.i.i175 ], [ %.092.i.i.i.i176.ph, %.lr.ph94.i.i.i.i175.preheader1089 ] ; 2 uses
  %.291.i.i.i.i177 = phi i32 [ %i.lu, %.lr.ph94.i.i.i.i175 ], [ %.291.i.i.i.i177.ph, %.lr.ph94.i.i.i.i175.preheader1089 ]
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %.092.i.i.i.i176
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !27
  %i.lu = add nsw i32 %i.lt, %.291.i.i.i.i177     ; 2 uses
  %i.lv = add nuw nsw i64 %.092.i.i.i.i176, 1     ; 2 uses
  %exitcond102.not.i.i.i.i178 = icmp eq i64 %i.lv, %i.ik
  br i1 %exitcond102.not.i.i.i.i178, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit179, label %.lr.ph94.i.i.i.i175, !llvm.loop !82

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit179: ; preds = %.lr.ph89.i.i.i.i158, %.lr.ph94.i.i.i.i175, %middle.block867, %middle.block883, %.preheader.i.i.i.i153, %bb.at, %bb.al
  %.0.i157.in = phi i32 [ %i.ij, %bb.al ], [ %i.lu, %.lr.ph94.i.i.i.i175 ], [ %.075.lcssa.i.i.i.i154, %.preheader.i.i.i.i153 ], [ %i.lg, %bb.at ], [ %i.lr, %middle.block883 ], [ %i.kw, %middle.block867 ], [ %i.ld, %.lr.ph89.i.i.i.i158 ]
  %.0.i157 = sext i32 %.0.i157.in to i64          ; 2 uses
  %i.lw = shl nsw i64 %.0.i157, 1                 ; 3 uses
  %i.lx = icmp ugt i64 %i.lw, 2305843009213693951
  br i1 %i.lx, label %.invoke763, label %bb.au

bb.au:                                            ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit179
  %i.ly = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !105
  %i.ma = load ptr, ptr %i.hz, align 8, !tbaa !19
  %i.mb = ptrtoint ptr %i.lz to i64
  %i.mc = ptrtoint ptr %i.ma to i64               ; 2 uses
  %i.md = sub i64 %i.mb, %i.mc
  %i.me = ashr exact i64 %i.md, 2
  %i.mf = icmp ult i64 %i.me, %i.lw
  br i1 %i.mf, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i180, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit186

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i180: ; preds = %bb.au
  %i.mg = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !18
  %i.mi = ptrtoint ptr %i.mh to i64
  %i.mj = sub i64 %i.mi, %i.mc
  %i.mk = shl nuw nsw i64 %.0.i157, 3
  %i.ml = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mk) #20
          to label %.noexc185 unwind label %bb.af ; 4 uses

.noexc185:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i180
  %i.mm = load ptr, ptr %i.hz, align 8, !tbaa !19 ; 4 uses
  %i.mn = load ptr, ptr %i.mg, align 8, !tbaa !18
  %i.mo = ptrtoint ptr %i.mn to i64
  %i.mp = ptrtoint ptr %i.mm to i64               ; 2 uses
  %i.mq = sub i64 %i.mo, %i.mp                    ; 2 uses
  %i.mr = icmp sgt i64 %i.mq, 0
  br i1 %i.mr, label %bb.av, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i181

bb.av:                                            ; preds = %.noexc185
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ml, ptr align 4 %i.mm, i64 %i.mq, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i181

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i181: ; preds = %bb.av, %.noexc185
  %.not.i8.i182 = icmp eq ptr %i.mm, null
  br i1 %.not.i8.i182, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i183, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i181
  %i.ms = load ptr, ptr %i.ly, align 8, !tbaa !105
  %i.mt = ptrtoint ptr %i.ms to i64
  %i.mu = sub i64 %i.mt, %i.mp
  call void @_ZdlPvm(ptr noundef nonnull %i.mm, i64 noundef %i.mu) #21
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i183

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i183: ; preds = %bb.aw, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i181
  store ptr %i.ml, ptr %i.hz, align 8, !tbaa !19
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ml, i64 %i.mj
  store ptr %i.mv, ptr %i.mg, align 8, !tbaa !18
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.ml, i64 %i.lw
  store ptr %i.mw, ptr %i.ly, align 8, !tbaa !105
  %.pre615 = load ptr, ptr %i.ia, align 8, !tbaa !34
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit186

_ZNSt6vectorIiSaIiEE7reserveEm.exit186:           ; preds = %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i183, %bb.au
  %i.mx = phi ptr [ %.pre615, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i183 ], [ %i.ib, %bb.au ] ; 15 uses
  %i.my = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %i.mz = icmp eq ptr %i.mx, null
  br i1 %i.mz, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit186
  %i.na = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !33 ; 2 uses
  %i.nc = load i64, ptr %i.gx, align 8, !tbaa !32
  %i.nd = getelementptr inbounds [4 x i8], ptr %i.nb, i64 %i.nc
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !27
  %i.nf = load i32, ptr %i.nb, align 4, !tbaa !27
  %i.ng = sub nsw i32 %i.ne, %i.nf
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit221

bb.ay:                                            ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit186
  %.pr732 = load i64, ptr %i.gx, align 8, !tbaa !32 ; 11 uses
  %i.nh = icmp eq i64 %.pr732, 0
  br i1 %i.nh, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit228.thread, label %bb.az

_ZNSt6vectorIiSaIiEE7reserveEm.exit228.thread:    ; preds = %bb.ay, %.thread733
  %i.ni = phi ptr [ %i.ib, %.thread733 ], [ %i.mx, %bb.ay ]
  %i.nj = phi ptr [ %i.im, %.thread733 ], [ %i.ly, %bb.ay ]
  %i.nk = phi ptr [ %i.in, %.thread733 ], [ %i.my, %bb.ay ]
  %i.nl = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.nm = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.bk

bb.az:                                            ; preds = %bb.ay
  %i.nn = ptrtoint ptr %i.mx to i64               ; 2 uses
  %i.no = and i64 %i.nn, 3
  %.not.i.i.i.i.i.i.i.i187 = icmp eq i64 %i.no, 0
  br i1 %.not.i.i.i.i.i.i.i.i187, label %bb.ba, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i188

bb.ba:                                            ; preds = %bb.az
  %i.np = lshr exact i64 %i.nn, 2
  %i.nq = sub nsw i64 0, %i.np
  %i.nr = and i64 %i.nq, 3
  %i.ns = call i64 @llvm.smin.i64(i64 %i.nr, i64 %.pr732)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i188

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i188: ; preds = %bb.ba, %bb.az
  %.0.i.i.i.i.i.i.i.i189 = phi i64 [ %i.ns, %bb.ba ], [ %.pr732, %bb.az ] ; 12 uses
  %i.nt = sub nsw i64 %.pr732, %.0.i.i.i.i.i.i.i.i189 ; 5 uses
  %i.nu = sdiv i64 %i.nt, 8
  %i.nv = shl nsw i64 %i.nu, 3                    ; 2 uses
  %i.nw = sdiv i64 %i.nt, 4
  %i.nx = shl nsw i64 %i.nw, 2                    ; 3 uses
  %i.ny = add nsw i64 %i.nv, %.0.i.i.i.i.i.i.i.i189 ; 2 uses
  %i.nz = add nsw i64 %i.nx, %.0.i.i.i.i.i.i.i.i189 ; 4 uses
  %.off.i.i.i.i190 = add i64 %i.nt, 3
  %.not.i.i.i.i191 = icmp ult i64 %.off.i.i.i.i190, 7
  br i1 %.not.i.i.i.i191, label %bb.bf, label %bb.bb

bb.bb:                                            ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i188
  %i.oa = getelementptr [4 x i8], ptr %i.mx, i64 %.0.i.i.i.i.i.i.i.i189 ; 2 uses
  %i.ob = load <2 x i64>, ptr %i.oa, align 1, !tbaa !35 ; 2 uses
  %i.oc = icmp sgt i64 %i.nt, 7
  br i1 %i.oc, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.od = getelementptr i8, ptr %i.oa, i64 16
  %i.oe = load <4 x i32>, ptr %i.od, align 1, !tbaa !35 ; 2 uses
  %i.of = bitcast <2 x i64> %i.ob to <4 x i32>    ; 2 uses
  %i.og = icmp samesign ugt i64 %i.nt, 15
  br i1 %i.og, label %.lr.ph.preheader.i.i.i.i210, label %._crit_edge.i.i.i.i207

.lr.ph.preheader.i.i.i.i210:                      ; preds = %bb.bc
  %.05777.i.i.i.i211 = add nsw i64 %.0.i.i.i.i.i.i.i.i189, 8
  br label %.lr.ph.i.i.i.i212

._crit_edge.i.i.i.i207:                           ; preds = %.lr.ph.i.i.i.i212, %bb.bc
  %.lcssa.i.i.i.i208 = phi <4 x i32> [ %i.oe, %bb.bc ], [ %i.or, %.lr.ph.i.i.i.i212 ]
  %.sroa.067.0.lcssa.i.i.i.i209 = phi <4 x i32> [ %i.of, %bb.bc ], [ %i.on, %.lr.ph.i.i.i.i212 ]
  %i.oh = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i209, %.lcssa.i.i.i.i208 ; 2 uses
  %i.oi = bitcast <4 x i32> %i.oh to <2 x i64>
  %i.oj = icmp sgt i64 %i.nx, %i.nv
  br i1 %i.oj, label %bb.bd, label %bb.be

.lr.ph.i.i.i.i212:                                ; preds = %.lr.ph.i.i.i.i212, %.lr.ph.preheader.i.i.i.i210
  %.05780.i.i.i.i213 = phi i64 [ %.057.i.i.i.i216, %.lr.ph.i.i.i.i212 ], [ %.05777.i.i.i.i211, %.lr.ph.preheader.i.i.i.i210 ] ; 3 uses
  %.057.in79.i.i.i.i214 = phi i64 [ %.05780.i.i.i.i213, %.lr.ph.i.i.i.i212 ], [ %.0.i.i.i.i.i.i.i.i189, %.lr.ph.preheader.i.i.i.i210 ]
  %.sroa.067.078.i.i.i.i215 = phi <4 x i32> [ %i.on, %.lr.ph.i.i.i.i212 ], [ %i.of, %.lr.ph.preheader.i.i.i.i210 ]
  %i.ok = phi <4 x i32> [ %i.or, %.lr.ph.i.i.i.i212 ], [ %i.oe, %.lr.ph.preheader.i.i.i.i210 ]
  %i.ol = getelementptr inbounds [4 x i8], ptr %i.mx, i64 %.05780.i.i.i.i213
  %i.om = load <4 x i32>, ptr %i.ol, align 1, !tbaa !35
  %i.on = add <4 x i32> %i.om, %.sroa.067.078.i.i.i.i215 ; 2 uses
  %i.oo = getelementptr [4 x i8], ptr %i.mx, i64 %.057.in79.i.i.i.i214
  %i.op = getelementptr i8, ptr %i.oo, i64 48
  %i.oq = load <4 x i32>, ptr %i.op, align 1, !tbaa !35
  %i.or = add <4 x i32> %i.oq, %i.ok              ; 2 uses
  %.057.i.i.i.i216 = add nsw i64 %.05780.i.i.i.i213, 8 ; 2 uses
  %i.os = icmp slt i64 %.057.i.i.i.i216, %i.ny
  br i1 %i.os, label %.lr.ph.i.i.i.i212, label %._crit_edge.i.i.i.i207, !llvm.loop !2

bb.bd:                                            ; preds = %._crit_edge.i.i.i.i207
  %i.ot = getelementptr inbounds [4 x i8], ptr %i.mx, i64 %i.ny
  %i.ou = load <4 x i32>, ptr %i.ot, align 1, !tbaa !35
  %i.ov = add <4 x i32> %i.ou, %i.oh
  %i.ow = bitcast <4 x i32> %i.ov to <2 x i64>
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %._crit_edge.i.i.i.i207, %bb.bb
  %.sroa.067.2.i.i.i.i192 = phi <2 x i64> [ %i.ob, %bb.bb ], [ %i.ow, %bb.bd ], [ %i.oi, %._crit_edge.i.i.i.i207 ] ; 2 uses
  %i.ox = bitcast <2 x i64> %.sroa.067.2.i.i.i.i192 to <4 x i32>
  %i.oy = bitcast <2 x i64> %.sroa.067.2.i.i.i.i192 to <4 x i32> ; 2 uses
  %i.oz = shufflevector <4 x i32> %i.oy, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.pa = add <4 x i32> %i.oz, %i.ox              ; 2 uses
  %shift1036 = shufflevector <4 x i32> %i.pa, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1037 = add nsw <4 x i32> %i.pa, %shift1036
  %i.pb = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.oy) ; 2 uses
  %i.pc = icmp sgt i64 %.0.i.i.i.i.i.i.i.i189, 0
  br i1 %i.pc, label %.lr.ph85.i.i.i.i203.preheader, label %.preheader.i.i.i.i195

.lr.ph85.i.i.i.i203.preheader:                    ; preds = %bb.be
  %min.iters.check889 = icmp ult i64 %.0.i.i.i.i.i.i.i.i189, 8
  br i1 %min.iters.check889, label %.lr.ph85.i.i.i.i203.preheader1083, label %vector.ph890

vector.ph890:                                     ; preds = %.lr.ph85.i.i.i.i203.preheader
  %n.vec891 = and i64 %.0.i.i.i.i.i.i.i.i189, 9223372036854775800 ; 3 uses
  %i.pd = shufflevector <4 x i32> %foldExtExtBinop1037, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body892

vector.body892:                                   ; preds = %vector.body892, %vector.ph890
  %index893 = phi i64 [ 0, %vector.ph890 ], [ %index.next898, %vector.body892 ] ; 2 uses
  %vec.phi894 = phi <4 x i32> [ %i.pd, %vector.ph890 ], [ %i.pg, %vector.body892 ]
  %vec.phi895 = phi <4 x i32> [ zeroinitializer, %vector.ph890 ], [ %i.ph, %vector.body892 ]
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %index893 ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 16
  %wide.load896 = load <4 x i32>, ptr %i.pe, align 4, !tbaa !27
  %wide.load897 = load <4 x i32>, ptr %i.pf, align 4, !tbaa !27
  %i.pg = add <4 x i32> %wide.load896, %vec.phi894 ; 2 uses
  %i.ph = add <4 x i32> %wide.load897, %vec.phi895 ; 2 uses
  %index.next898 = add nuw i64 %index893, 8       ; 2 uses
  %i.pi = icmp eq i64 %index.next898, %n.vec891
  br i1 %i.pi, label %middle.block899, label %vector.body892, !llvm.loop !83

middle.block899:                                  ; preds = %vector.body892
  %bin.rdx900 = add <4 x i32> %i.ph, %i.pg
  %i.pj = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx900) ; 2 uses
  %cmp.n901 = icmp eq i64 %.0.i.i.i.i.i.i.i.i189, %n.vec891
  br i1 %cmp.n901, label %.preheader.i.i.i.i195, label %.lr.ph85.i.i.i.i203.preheader1083

.lr.ph85.i.i.i.i203.preheader1083:                ; preds = %.lr.ph85.i.i.i.i203.preheader, %middle.block899
  %.05683.i.i.i.i204.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i203.preheader ], [ %n.vec891, %middle.block899 ]
  %.07582.i.i.i.i205.ph = phi i32 [ %i.pb, %.lr.ph85.i.i.i.i203.preheader ], [ %i.pj, %middle.block899 ]
  br label %.lr.ph85.i.i.i.i203

.preheader.i.i.i.i195:                            ; preds = %.lr.ph85.i.i.i.i203, %middle.block899, %bb.be
  %.075.lcssa.i.i.i.i196 = phi i32 [ %i.pb, %bb.be ], [ %i.pj, %middle.block899 ], [ %i.py, %.lr.ph85.i.i.i.i203 ] ; 3 uses
  %i.pk = icmp slt i64 %i.nz, %.pr732
  br i1 %i.pk, label %.lr.ph89.i.i.i.i200.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit221

.lr.ph89.i.i.i.i200.preheader:                    ; preds = %.preheader.i.i.i.i195
  %i.pl = add i64 %.0.i.i.i.i.i.i.i.i189, %i.nx
  %i.pm = sub i64 %.pr732, %i.pl                  ; 3 uses
  %min.iters.check905 = icmp ult i64 %i.pm, 8
  br i1 %min.iters.check905, label %.lr.ph89.i.i.i.i200.preheader1078, label %vector.ph906

vector.ph906:                                     ; preds = %.lr.ph89.i.i.i.i200.preheader
  %n.vec907 = and i64 %i.pm, -8                   ; 3 uses
  %i.pn = add i64 %i.nz, %n.vec907
  %i.po = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i196, i64 0
  %i.pp = getelementptr [4 x i8], ptr %i.mx, i64 %i.nz
  br label %vector.body908

vector.body908:                                   ; preds = %vector.body908, %vector.ph906
  %index909 = phi i64 [ 0, %vector.ph906 ], [ %index.next914, %vector.body908 ] ; 2 uses
  %vec.phi910 = phi <4 x i32> [ %i.po, %vector.ph906 ], [ %i.ps, %vector.body908 ]
  %vec.phi911 = phi <4 x i32> [ zeroinitializer, %vector.ph906 ], [ %i.pt, %vector.body908 ]
  %i.pq = getelementptr [4 x i8], ptr %i.pp, i64 %index909 ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 16
  %wide.load912 = load <4 x i32>, ptr %i.pq, align 4, !tbaa !27
  %wide.load913 = load <4 x i32>, ptr %i.pr, align 4, !tbaa !27
  %i.ps = add <4 x i32> %wide.load912, %vec.phi910 ; 2 uses
  %i.pt = add <4 x i32> %wide.load913, %vec.phi911 ; 2 uses
  %index.next914 = add nuw i64 %index909, 8       ; 2 uses
  %i.pu = icmp eq i64 %index.next914, %n.vec907
  br i1 %i.pu, label %middle.block915, label %vector.body908, !llvm.loop !84

middle.block915:                                  ; preds = %vector.body908
  %bin.rdx916 = add <4 x i32> %i.pt, %i.ps
  %i.pv = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx916) ; 2 uses
  %cmp.n917 = icmp eq i64 %i.pm, %n.vec907
  br i1 %cmp.n917, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit221, label %.lr.ph89.i.i.i.i200.preheader1078

.lr.ph89.i.i.i.i200.preheader1078:                ; preds = %.lr.ph89.i.i.i.i200.preheader, %middle.block915
  %.05588.i.i.i.i201.ph = phi i64 [ %i.nz, %.lr.ph89.i.i.i.i200.preheader ], [ %i.pn, %middle.block915 ]
  %.187.i.i.i.i202.ph = phi i32 [ %.075.lcssa.i.i.i.i196, %.lr.ph89.i.i.i.i200.preheader ], [ %i.pv, %middle.block915 ]
  br label %.lr.ph89.i.i.i.i200

.lr.ph85.i.i.i.i203:                              ; preds = %.lr.ph85.i.i.i.i203.preheader1083, %.lr.ph85.i.i.i.i203
  %.05683.i.i.i.i204 = phi i64 [ %i.pz, %.lr.ph85.i.i.i.i203 ], [ %.05683.i.i.i.i204.ph, %.lr.ph85.i.i.i.i203.preheader1083 ] ; 2 uses
  %.07582.i.i.i.i205 = phi i32 [ %i.py, %.lr.ph85.i.i.i.i203 ], [ %.07582.i.i.i.i205.ph, %.lr.ph85.i.i.i.i203.preheader1083 ]
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %.05683.i.i.i.i204
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !27
  %i.py = add nsw i32 %i.px, %.07582.i.i.i.i205   ; 2 uses
  %i.pz = add nuw nsw i64 %.05683.i.i.i.i204, 1   ; 2 uses
  %exitcond.not.i.i.i.i206 = icmp eq i64 %i.pz, %.0.i.i.i.i.i.i.i.i189
  br i1 %exitcond.not.i.i.i.i206, label %.preheader.i.i.i.i195, label %.lr.ph85.i.i.i.i203, !llvm.loop !85

.lr.ph89.i.i.i.i200:                              ; preds = %.lr.ph89.i.i.i.i200.preheader1078, %.lr.ph89.i.i.i.i200
  %.05588.i.i.i.i201 = phi i64 [ %i.qd, %.lr.ph89.i.i.i.i200 ], [ %.05588.i.i.i.i201.ph, %.lr.ph89.i.i.i.i200.preheader1078 ] ; 2 uses
  %.187.i.i.i.i202 = phi i32 [ %i.qc, %.lr.ph89.i.i.i.i200 ], [ %.187.i.i.i.i202.ph, %.lr.ph89.i.i.i.i200.preheader1078 ]
  %i.qa = getelementptr inbounds [4 x i8], ptr %i.mx, i64 %.05588.i.i.i.i201
  %i.qb = load i32, ptr %i.qa, align 4, !tbaa !27
  %i.qc = add nsw i32 %i.qb, %.187.i.i.i.i202     ; 2 uses
  %i.qd = add nsw i64 %.05588.i.i.i.i201, 1       ; 2 uses
  %i.qe = icmp slt i64 %i.qd, %.pr732
  br i1 %i.qe, label %.lr.ph89.i.i.i.i200, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit221, !llvm.loop !86

bb.bf:                                            ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i188
  %i.qf = load i32, ptr %i.mx, align 4, !tbaa !27 ; 3 uses
  %i.qg = icmp sgt i64 %.pr732, 1
  br i1 %i.qg, label %.lr.ph94.i.i.i.i217.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit221

.lr.ph94.i.i.i.i217.preheader:                    ; preds = %bb.bf
  %i.qh = add nsw i64 %.pr732, -1                 ; 2 uses
  %min.iters.check921 = icmp ult i64 %.pr732, 9
  br i1 %min.iters.check921, label %.lr.ph94.i.i.i.i217.preheader1074, label %vector.ph922

vector.ph922:                                     ; preds = %.lr.ph94.i.i.i.i217.preheader
  %n.vec923 = and i64 %i.qh, -8                   ; 3 uses
  %i.qi = or disjoint i64 %n.vec923, 1
  %i.qj = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.qf, i64 0
  br label %vector.body924

vector.body924:                                   ; preds = %vector.body924, %vector.ph922
  %index925 = phi i64 [ 0, %vector.ph922 ], [ %index.next930, %vector.body924 ] ; 2 uses
  %vec.phi926 = phi <4 x i32> [ %i.qj, %vector.ph922 ], [ %i.qn, %vector.body924 ]
  %vec.phi927 = phi <4 x i32> [ zeroinitializer, %vector.ph922 ], [ %i.qo, %vector.body924 ]
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %index925 ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 4
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qk, i64 20
  %wide.load928 = load <4 x i32>, ptr %i.ql, align 4, !tbaa !27
  %wide.load929 = load <4 x i32>, ptr %i.qm, align 4, !tbaa !27
  %i.qn = add <4 x i32> %wide.load928, %vec.phi926 ; 2 uses
  %i.qo = add <4 x i32> %wide.load929, %vec.phi927 ; 2 uses
  %index.next930 = add nuw i64 %index925, 8       ; 2 uses
  %i.qp = icmp eq i64 %index.next930, %n.vec923
  br i1 %i.qp, label %middle.block931, label %vector.body924, !llvm.loop !87

middle.block931:                                  ; preds = %vector.body924
  %bin.rdx932 = add <4 x i32> %i.qo, %i.qn
  %i.qq = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx932) ; 2 uses
  %cmp.n933 = icmp eq i64 %i.qh, %n.vec923
  br i1 %cmp.n933, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit221, label %.lr.ph94.i.i.i.i217.preheader1074

.lr.ph94.i.i.i.i217.preheader1074:                ; preds = %.lr.ph94.i.i.i.i217.preheader, %middle.block931
  %.092.i.i.i.i218.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i217.preheader ], [ %i.qi, %middle.block931 ]
  %.291.i.i.i.i219.ph = phi i32 [ %i.qf, %.lr.ph94.i.i.i.i217.preheader ], [ %i.qq, %middle.block931 ]
  br label %.lr.ph94.i.i.i.i217

.lr.ph94.i.i.i.i217:                              ; preds = %.lr.ph94.i.i.i.i217.preheader1074, %.lr.ph94.i.i.i.i217
  %.092.i.i.i.i218 = phi i64 [ %i.qu, %.lr.ph94.i.i.i.i217 ], [ %.092.i.i.i.i218.ph, %.lr.ph94.i.i.i.i217.preheader1074 ] ; 2 uses
  %.291.i.i.i.i219 = phi i32 [ %i.qt, %.lr.ph94.i.i.i.i217 ], [ %.291.i.i.i.i219.ph, %.lr.ph94.i.i.i.i217.preheader1074 ]
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %.092.i.i.i.i218
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !27
  %i.qt = add nsw i32 %i.qs, %.291.i.i.i.i219     ; 2 uses
  %i.qu = add nuw nsw i64 %.092.i.i.i.i218, 1     ; 2 uses
  %exitcond102.not.i.i.i.i220 = icmp eq i64 %i.qu, %.pr732
  br i1 %exitcond102.not.i.i.i.i220, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit221, label %.lr.ph94.i.i.i.i217, !llvm.loop !88

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit221: ; preds = %.lr.ph89.i.i.i.i200, %.lr.ph94.i.i.i.i217, %middle.block915, %middle.block931, %.preheader.i.i.i.i195, %bb.bf, %bb.ax
  %.0.i199.in = phi i32 [ %i.ng, %bb.ax ], [ %i.qt, %.lr.ph94.i.i.i.i217 ], [ %.075.lcssa.i.i.i.i196, %.preheader.i.i.i.i195 ], [ %i.qf, %bb.bf ], [ %i.qq, %middle.block931 ], [ %i.pv, %middle.block915 ], [ %i.qc, %.lr.ph89.i.i.i.i200 ]
  %.0.i199 = sext i32 %.0.i199.in to i64          ; 2 uses
  %i.qv = shl nsw i64 %.0.i199, 1                 ; 3 uses
  %i.qw = icmp ugt i64 %i.qv, 2305843009213693951
  br i1 %i.qw, label %.invoke763, label %bb.bg

bb.bg:                                            ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit221
  %i.qx = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 5 uses
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !105
  %i.qz = load ptr, ptr %i.my, align 8, !tbaa !19
  %i.ra = ptrtoint ptr %i.qy to i64
  %i.rb = ptrtoint ptr %i.qz to i64               ; 2 uses
  %i.rc = sub i64 %i.ra, %i.rb
  %i.rd = ashr exact i64 %i.rc, 2
  %i.re = icmp ult i64 %i.rd, %i.qv
  br i1 %i.re, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i222, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit228

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i222: ; preds = %bb.bg
  %i.rf = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !18
  %i.rh = ptrtoint ptr %i.rg to i64
  %i.ri = sub i64 %i.rh, %i.rb
  %i.rj = shl nuw nsw i64 %.0.i199, 3
  %i.rk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rj) #20
          to label %.noexc227 unwind label %bb.af ; 4 uses

.noexc227:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i222
  %i.rl = load ptr, ptr %i.my, align 8, !tbaa !19 ; 4 uses
  %i.rm = load ptr, ptr %i.rf, align 8, !tbaa !18
  %i.rn = ptrtoint ptr %i.rm to i64
  %i.ro = ptrtoint ptr %i.rl to i64               ; 2 uses
  %i.rp = sub i64 %i.rn, %i.ro                    ; 2 uses
  %i.rq = icmp sgt i64 %i.rp, 0
  br i1 %i.rq, label %bb.bh, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i223

bb.bh:                                            ; preds = %.noexc227
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.rk, ptr align 4 %i.rl, i64 %i.rp, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i223

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i223: ; preds = %bb.bh, %.noexc227
  %.not.i8.i224 = icmp eq ptr %i.rl, null
  br i1 %.not.i8.i224, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i225, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i223
  %i.rr = load ptr, ptr %i.qx, align 8, !tbaa !105
  %i.rs = ptrtoint ptr %i.rr to i64
  %i.rt = sub i64 %i.rs, %i.ro
  call void @_ZdlPvm(ptr noundef nonnull %i.rl, i64 noundef %i.rt) #21
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i225

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i225: ; preds = %bb.bi, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i223
  store ptr %i.rk, ptr %i.my, align 8, !tbaa !19
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rk, i64 %i.ri
  store ptr %i.ru, ptr %i.rf, align 8, !tbaa !18
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %i.rk, i64 %i.qv
  store ptr %i.rv, ptr %i.qx, align 8, !tbaa !105
  %.pre616 = load ptr, ptr %i.ia, align 8, !tbaa !34
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit228

_ZNSt6vectorIiSaIiEE7reserveEm.exit228:           ; preds = %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i225, %bb.bg
  %i.rw = phi ptr [ %.pre616, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i225 ], [ %i.mx, %bb.bg ] ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ry = icmp eq ptr %i.rw, null
  br i1 %i.ry, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit228
  %i.rz = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !33 ; 2 uses
  %i.sb = load i64, ptr %i.gx, align 8, !tbaa !32 ; 2 uses
  %i.sc = getelementptr inbounds [4 x i8], ptr %i.sa, i64 %i.sb
  %i.sd = load i32, ptr %i.sc, align 4, !tbaa !27
  %i.se = load i32, ptr %i.sa, align 4, !tbaa !27
  %i.sf = sub nsw i32 %i.sd, %i.se
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit263

bb.bk:                                            ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit228.thread, %_ZNSt6vectorIiSaIiEE7reserveEm.exit228
  %i.sg = phi ptr [ %i.nm, %_ZNSt6vectorIiSaIiEE7reserveEm.exit228.thread ], [ %i.rx, %_ZNSt6vectorIiSaIiEE7reserveEm.exit228 ] ; 7 uses
  %i.sh = phi ptr [ %i.nl, %_ZNSt6vectorIiSaIiEE7reserveEm.exit228.thread ], [ %i.qx, %_ZNSt6vectorIiSaIiEE7reserveEm.exit228 ] ; 6 uses
  %i.si = phi ptr [ %i.ni, %_ZNSt6vectorIiSaIiEE7reserveEm.exit228.thread ], [ %i.rw, %_ZNSt6vectorIiSaIiEE7reserveEm.exit228 ] ; 12 uses
  %i.sj = phi ptr [ %i.nj, %_ZNSt6vectorIiSaIiEE7reserveEm.exit228.thread ], [ %i.ly, %_ZNSt6vectorIiSaIiEE7reserveEm.exit228 ] ; 6 uses
  %i.sk = phi ptr [ %i.nk, %_ZNSt6vectorIiSaIiEE7reserveEm.exit228.thread ], [ %i.my, %_ZNSt6vectorIiSaIiEE7reserveEm.exit228 ] ; 7 uses
  %i.sl = load i64, ptr %i.gx, align 8, !tbaa !32 ; 17 uses
  %i.sm = icmp eq i64 %i.sl, 0
  br i1 %i.sm, label %._crit_edge578, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.sn = ptrtoint ptr %i.si to i64               ; 2 uses
  %i.so = and i64 %i.sn, 3
  %.not.i.i.i.i.i.i.i.i229 = icmp eq i64 %i.so, 0
  br i1 %.not.i.i.i.i.i.i.i.i229, label %bb.bm, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i230

bb.bm:                                            ; preds = %bb.bl
  %i.sp = lshr exact i64 %i.sn, 2
  %i.sq = sub nsw i64 0, %i.sp
  %i.sr = and i64 %i.sq, 3
  %i.ss = call i64 @llvm.smin.i64(i64 %i.sr, i64 %i.sl)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i230

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i230: ; preds = %bb.bm, %bb.bl
  %.0.i.i.i.i.i.i.i.i231 = phi i64 [ %i.ss, %bb.bm ], [ %i.sl, %bb.bl ] ; 12 uses
  %i.st = sub nsw i64 %i.sl, %.0.i.i.i.i.i.i.i.i231 ; 5 uses
  %i.su = sdiv i64 %i.st, 8
  %i.sv = shl nsw i64 %i.su, 3                    ; 2 uses
  %i.sw = sdiv i64 %i.st, 4
  %i.sx = shl nsw i64 %i.sw, 2                    ; 3 uses
  %i.sy = add nsw i64 %i.sv, %.0.i.i.i.i.i.i.i.i231 ; 2 uses
  %i.sz = add nsw i64 %i.sx, %.0.i.i.i.i.i.i.i.i231 ; 4 uses
  %.off.i.i.i.i232 = add i64 %i.st, 3
  %.not.i.i.i.i233 = icmp ult i64 %.off.i.i.i.i232, 7
  br i1 %.not.i.i.i.i233, label %bb.br, label %bb.bn

bb.bn:                                            ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i230
  %i.ta = getelementptr [4 x i8], ptr %i.si, i64 %.0.i.i.i.i.i.i.i.i231 ; 2 uses
  %i.tb = load <2 x i64>, ptr %i.ta, align 1, !tbaa !35 ; 2 uses
  %i.tc = icmp sgt i64 %i.st, 7
  br i1 %i.tc, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  %i.td = getelementptr i8, ptr %i.ta, i64 16
  %i.te = load <4 x i32>, ptr %i.td, align 1, !tbaa !35 ; 2 uses
  %i.tf = bitcast <2 x i64> %i.tb to <4 x i32>    ; 2 uses
  %i.tg = icmp samesign ugt i64 %i.st, 15
  br i1 %i.tg, label %.lr.ph.preheader.i.i.i.i252, label %._crit_edge.i.i.i.i249

.lr.ph.preheader.i.i.i.i252:                      ; preds = %bb.bo
  %.05777.i.i.i.i253 = add nsw i64 %.0.i.i.i.i.i.i.i.i231, 8
  br label %.lr.ph.i.i.i.i254

._crit_edge.i.i.i.i249:                           ; preds = %.lr.ph.i.i.i.i254, %bb.bo
  %.lcssa.i.i.i.i250 = phi <4 x i32> [ %i.te, %bb.bo ], [ %i.tr, %.lr.ph.i.i.i.i254 ]
  %.sroa.067.0.lcssa.i.i.i.i251 = phi <4 x i32> [ %i.tf, %bb.bo ], [ %i.tn, %.lr.ph.i.i.i.i254 ]
  %i.th = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i251, %.lcssa.i.i.i.i250 ; 2 uses
  %i.ti = bitcast <4 x i32> %i.th to <2 x i64>
  %i.tj = icmp sgt i64 %i.sx, %i.sv
  br i1 %i.tj, label %bb.bp, label %bb.bq

.lr.ph.i.i.i.i254:                                ; preds = %.lr.ph.i.i.i.i254, %.lr.ph.preheader.i.i.i.i252
  %.05780.i.i.i.i255 = phi i64 [ %.057.i.i.i.i258, %.lr.ph.i.i.i.i254 ], [ %.05777.i.i.i.i253, %.lr.ph.preheader.i.i.i.i252 ] ; 3 uses
  %.057.in79.i.i.i.i256 = phi i64 [ %.05780.i.i.i.i255, %.lr.ph.i.i.i.i254 ], [ %.0.i.i.i.i.i.i.i.i231, %.lr.ph.preheader.i.i.i.i252 ]
  %.sroa.067.078.i.i.i.i257 = phi <4 x i32> [ %i.tn, %.lr.ph.i.i.i.i254 ], [ %i.tf, %.lr.ph.preheader.i.i.i.i252 ]
  %i.tk = phi <4 x i32> [ %i.tr, %.lr.ph.i.i.i.i254 ], [ %i.te, %.lr.ph.preheader.i.i.i.i252 ]
  %i.tl = getelementptr inbounds [4 x i8], ptr %i.si, i64 %.05780.i.i.i.i255
  %i.tm = load <4 x i32>, ptr %i.tl, align 1, !tbaa !35
  %i.tn = add <4 x i32> %i.tm, %.sroa.067.078.i.i.i.i257 ; 2 uses
  %i.to = getelementptr [4 x i8], ptr %i.si, i64 %.057.in79.i.i.i.i256
  %i.tp = getelementptr i8, ptr %i.to, i64 48
  %i.tq = load <4 x i32>, ptr %i.tp, align 1, !tbaa !35
  %i.tr = add <4 x i32> %i.tq, %i.tk              ; 2 uses
  %.057.i.i.i.i258 = add nsw i64 %.05780.i.i.i.i255, 8 ; 2 uses
  %i.ts = icmp slt i64 %.057.i.i.i.i258, %i.sy
  br i1 %i.ts, label %.lr.ph.i.i.i.i254, label %._crit_edge.i.i.i.i249, !llvm.loop !2

bb.bp:                                            ; preds = %._crit_edge.i.i.i.i249
  %i.tt = getelementptr inbounds [4 x i8], ptr %i.si, i64 %i.sy
  %i.tu = load <4 x i32>, ptr %i.tt, align 1, !tbaa !35
  %i.tv = add <4 x i32> %i.tu, %i.th
  %i.tw = bitcast <4 x i32> %i.tv to <2 x i64>
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %._crit_edge.i.i.i.i249, %bb.bn
  %.sroa.067.2.i.i.i.i234 = phi <2 x i64> [ %i.tb, %bb.bn ], [ %i.tw, %bb.bp ], [ %i.ti, %._crit_edge.i.i.i.i249 ] ; 2 uses
  %i.tx = bitcast <2 x i64> %.sroa.067.2.i.i.i.i234 to <4 x i32>
  %i.ty = bitcast <2 x i64> %.sroa.067.2.i.i.i.i234 to <4 x i32> ; 2 uses
  %i.tz = shufflevector <4 x i32> %i.ty, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.ua = add <4 x i32> %i.tz, %i.tx              ; 2 uses
  %shift1039 = shufflevector <4 x i32> %i.ua, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1040 = add nsw <4 x i32> %i.ua, %shift1039
  %i.ub = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ty) ; 2 uses
  %i.uc = icmp sgt i64 %.0.i.i.i.i.i.i.i.i231, 0
  br i1 %i.uc, label %.lr.ph85.i.i.i.i245.preheader, label %.preheader.i.i.i.i237

.lr.ph85.i.i.i.i245.preheader:                    ; preds = %bb.bq
  %min.iters.check937 = icmp ult i64 %.0.i.i.i.i.i.i.i.i231, 8
  br i1 %min.iters.check937, label %.lr.ph85.i.i.i.i245.preheader1068, label %vector.ph938

vector.ph938:                                     ; preds = %.lr.ph85.i.i.i.i245.preheader
  %n.vec939 = and i64 %.0.i.i.i.i.i.i.i.i231, 9223372036854775800 ; 3 uses
  %i.ud = shufflevector <4 x i32> %foldExtExtBinop1040, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body940

vector.body940:                                   ; preds = %vector.body940, %vector.ph938
  %index941 = phi i64 [ 0, %vector.ph938 ], [ %index.next946, %vector.body940 ] ; 2 uses
  %vec.phi942 = phi <4 x i32> [ %i.ud, %vector.ph938 ], [ %i.ug, %vector.body940 ]
  %vec.phi943 = phi <4 x i32> [ zeroinitializer, %vector.ph938 ], [ %i.uh, %vector.body940 ]
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %i.si, i64 %index941 ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 16
  %wide.load944 = load <4 x i32>, ptr %i.ue, align 4, !tbaa !27
  %wide.load945 = load <4 x i32>, ptr %i.uf, align 4, !tbaa !27
  %i.ug = add <4 x i32> %wide.load944, %vec.phi942 ; 2 uses
  %i.uh = add <4 x i32> %wide.load945, %vec.phi943 ; 2 uses
  %index.next946 = add nuw i64 %index941, 8       ; 2 uses
  %i.ui = icmp eq i64 %index.next946, %n.vec939
  br i1 %i.ui, label %middle.block947, label %vector.body940, !llvm.loop !89

middle.block947:                                  ; preds = %vector.body940
  %bin.rdx948 = add <4 x i32> %i.uh, %i.ug
  %i.uj = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx948) ; 2 uses
  %cmp.n949 = icmp eq i64 %.0.i.i.i.i.i.i.i.i231, %n.vec939
  br i1 %cmp.n949, label %.preheader.i.i.i.i237, label %.lr.ph85.i.i.i.i245.preheader1068

.lr.ph85.i.i.i.i245.preheader1068:                ; preds = %.lr.ph85.i.i.i.i245.preheader, %middle.block947
  %.05683.i.i.i.i246.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i245.preheader ], [ %n.vec939, %middle.block947 ]
  %.07582.i.i.i.i247.ph = phi i32 [ %i.ub, %.lr.ph85.i.i.i.i245.preheader ], [ %i.uj, %middle.block947 ]
  br label %.lr.ph85.i.i.i.i245

.preheader.i.i.i.i237:                            ; preds = %.lr.ph85.i.i.i.i245, %middle.block947, %bb.bq
  %.075.lcssa.i.i.i.i238 = phi i32 [ %i.ub, %bb.bq ], [ %i.uj, %middle.block947 ], [ %i.uy, %.lr.ph85.i.i.i.i245 ] ; 3 uses
  %i.uk = icmp slt i64 %i.sz, %i.sl
  br i1 %i.uk, label %.lr.ph89.i.i.i.i242.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit263

.lr.ph89.i.i.i.i242.preheader:                    ; preds = %.preheader.i.i.i.i237
  %i.ul = add i64 %.0.i.i.i.i.i.i.i.i231, %i.sx
  %i.um = sub i64 %i.sl, %i.ul                    ; 3 uses
  %min.iters.check953 = icmp ult i64 %i.um, 8
  br i1 %min.iters.check953, label %.lr.ph89.i.i.i.i242.preheader1063, label %vector.ph954

vector.ph954:                                     ; preds = %.lr.ph89.i.i.i.i242.preheader
  %n.vec955 = and i64 %i.um, -8                   ; 3 uses
  %i.un = add i64 %i.sz, %n.vec955
  %i.uo = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i238, i64 0
  %i.up = getelementptr [4 x i8], ptr %i.si, i64 %i.sz
  br label %vector.body956

vector.body956:                                   ; preds = %vector.body956, %vector.ph954
  %index957 = phi i64 [ 0, %vector.ph954 ], [ %index.next962, %vector.body956 ] ; 2 uses
  %vec.phi958 = phi <4 x i32> [ %i.uo, %vector.ph954 ], [ %i.us, %vector.body956 ]
  %vec.phi959 = phi <4 x i32> [ zeroinitializer, %vector.ph954 ], [ %i.ut, %vector.body956 ]
  %i.uq = getelementptr [4 x i8], ptr %i.up, i64 %index957 ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 16
  %wide.load960 = load <4 x i32>, ptr %i.uq, align 4, !tbaa !27
  %wide.load961 = load <4 x i32>, ptr %i.ur, align 4, !tbaa !27
  %i.us = add <4 x i32> %wide.load960, %vec.phi958 ; 2 uses
  %i.ut = add <4 x i32> %wide.load961, %vec.phi959 ; 2 uses
  %index.next962 = add nuw i64 %index957, 8       ; 2 uses
  %i.uu = icmp eq i64 %index.next962, %n.vec955
  br i1 %i.uu, label %middle.block963, label %vector.body956, !llvm.loop !90

middle.block963:                                  ; preds = %vector.body956
  %bin.rdx964 = add <4 x i32> %i.ut, %i.us
  %i.uv = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx964) ; 2 uses
  %cmp.n965 = icmp eq i64 %i.um, %n.vec955
  br i1 %cmp.n965, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit263, label %.lr.ph89.i.i.i.i242.preheader1063

.lr.ph89.i.i.i.i242.preheader1063:                ; preds = %.lr.ph89.i.i.i.i242.preheader, %middle.block963
  %.05588.i.i.i.i243.ph = phi i64 [ %i.sz, %.lr.ph89.i.i.i.i242.preheader ], [ %i.un, %middle.block963 ]
  %.187.i.i.i.i244.ph = phi i32 [ %.075.lcssa.i.i.i.i238, %.lr.ph89.i.i.i.i242.preheader ], [ %i.uv, %middle.block963 ]
  br label %.lr.ph89.i.i.i.i242

.lr.ph85.i.i.i.i245:                              ; preds = %.lr.ph85.i.i.i.i245.preheader1068, %.lr.ph85.i.i.i.i245
  %.05683.i.i.i.i246 = phi i64 [ %i.uz, %.lr.ph85.i.i.i.i245 ], [ %.05683.i.i.i.i246.ph, %.lr.ph85.i.i.i.i245.preheader1068 ] ; 2 uses
  %.07582.i.i.i.i247 = phi i32 [ %i.uy, %.lr.ph85.i.i.i.i245 ], [ %.07582.i.i.i.i247.ph, %.lr.ph85.i.i.i.i245.preheader1068 ]
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %i.si, i64 %.05683.i.i.i.i246
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !27
  %i.uy = add nsw i32 %i.ux, %.07582.i.i.i.i247   ; 2 uses
  %i.uz = add nuw nsw i64 %.05683.i.i.i.i246, 1   ; 2 uses
  %exitcond.not.i.i.i.i248 = icmp eq i64 %i.uz, %.0.i.i.i.i.i.i.i.i231
  br i1 %exitcond.not.i.i.i.i248, label %.preheader.i.i.i.i237, label %.lr.ph85.i.i.i.i245, !llvm.loop !91

.lr.ph89.i.i.i.i242:                              ; preds = %.lr.ph89.i.i.i.i242.preheader1063, %.lr.ph89.i.i.i.i242
  %.05588.i.i.i.i243 = phi i64 [ %i.vd, %.lr.ph89.i.i.i.i242 ], [ %.05588.i.i.i.i243.ph, %.lr.ph89.i.i.i.i242.preheader1063 ] ; 2 uses
  %.187.i.i.i.i244 = phi i32 [ %i.vc, %.lr.ph89.i.i.i.i242 ], [ %.187.i.i.i.i244.ph, %.lr.ph89.i.i.i.i242.preheader1063 ]
end_hunk_0
