inline.NumInlined: 733
inline.NumDeleted: 405
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN3igl4findILin1ELin1EEESt6vectorIiSaIiEERKN5Eigen5ArrayIbXT_ELi1ELi0EXT0_ELi1EEE:bb.a
  store ptr %i.bu, ptr %i.bk, align 8, !tbaa !26
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.f:                                             ; preds = %bb.d
  %i.bv = ptrtoint ptr %i.bm to i64
  %i.bw = ptrtoint ptr %i.bn to i64
  %i.bx = sub i64 %i.bv, %i.bw                    ; 6 uses
  %i.by = icmp eq i64 %i.bx, 9223372036854775804
  br i1 %i.by, label %bb.g, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  store ptr %i.bn, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #14
          to label %.noexc8 unwind label %.loopexit.split-lp

.noexc8:                                          ; preds = %bb.g
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.bz = ashr exact i64 %i.bx, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bz, i64 1)
  %i.ca = add nsw i64 %.sroa.speculated.i.i.i, %i.bz ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %i.bz
  %i.cc = tail call i64 @llvm.umin.i64(i64 %i.ca, i64 2305843009213693951)
  %i.cd = select i1 %i.cb, i64 2305843009213693951, i64 %i.cc ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cd, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ce = shl nuw nsw i64 %i.cd, 2
  %i.cf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ce) #15
          to label %.noexc9 unwind label %.loopexit ; 4 uses

.noexc9:                                          ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 %i.bx ; 2 uses
  %i.ch = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ch, ptr %i.cg, align 4, !tbaa !28
  %i.ci = icmp sgt i64 %i.bx, 0
  br i1 %i.ci, label %bb.h, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.h:                                             ; preds = %.noexc9
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cf, ptr align 4 %i.bn, i64 %i.bx, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.h, %.noexc9
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.bx) #16
  %.pre.pre = load i64, ptr %i.a, align 8, !tbaa !9
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %.pre = phi i64 [ %.pre.pre, %bb.i ], [ %.pre27, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i ] ; 2 uses
  store ptr %i.cj, ptr %i.bk, align 8, !tbaa !26
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.cd
  store ptr %i.ck, ptr %i.be, align 8, !tbaa !27
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bn, ptr %0, align 8
  br label %bb.j

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.e, %bb.c
  %.pre28 = phi i64 [ %.pre, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.pre27, %bb.e ], [ %.pre27, %bb.c ]
  %i.cl = phi i64 [ %.pre, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.bl, %bb.e ], [ %i.bl, %bb.c ] ; 2 uses
  %i.cm = phi ptr [ %i.cj, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.bu, %bb.e ], [ %i.bm, %bb.c ]
  %i.cn = phi ptr [ %i.cf, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.bn, %bb.e ], [ %i.bn, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.co = icmp sgt i64 %i.cl, %indvars.iv.next
  br i1 %i.co, label %bb.c, label %._crit_edge, !llvm.loop !29

bb.j:                                             ; preds = %.loopexit, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ]
  %.not.i.i.i10 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cp = ptrtoint ptr %i.bm to i64
  %i.cq = ptrtoint ptr %i.bn to i64
  %i.cr = sub i64 %i.cp, %i.cq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.cr) #16
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.j, %bb.k
  resume { ptr, i32 } %.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl4findIbN5Eigen6MatrixIbLin1ELi1ELi0ELin1ELi1EEES3_S3_EEvRKNS1_12SparseMatrixIT_Li0EiEERNS1_9DenseBaseIT0_EERNS9_IT1_EERNS9_IT2_EE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 14 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !36
  %i.h = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !28
  %i.j = load i32, ptr %i.e, align 4, !tbaa !28
  %i.k = sub nsw i32 %i.i, %i.j
  %i.l = sext i32 %i.k to i64
  br label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !36   ; 11 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.q = and i64 %i.p, 3
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.e, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.r = lshr exact i64 %i.p, 2
  %i.s = sub nsw i64 0, %i.r
  %i.t = and i64 %i.s, 3
  %i.u = tail call i64 @llvm.smin.i64(i64 %i.t, i64 %i.n)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i.i.i.i.i.i = phi i64 [ %i.u, %bb.e ], [ %i.n, %bb.d ] ; 12 uses
  %i.v = sub nsw i64 %i.n, %.0.i.i.i.i.i.i.i.i    ; 5 uses
  %i.w = sdiv i64 %i.v, 8
  %i.x = shl nsw i64 %i.w, 3                      ; 2 uses
  %i.y = sdiv i64 %i.v, 4                         ; 2 uses
  %i.z = shl nsw i64 %i.y, 2                      ; 2 uses
  %i.aa = add nsw i64 %i.x, %.0.i.i.i.i.i.i.i.i   ; 2 uses
  %i.ab = add nsw i64 %i.z, %.0.i.i.i.i.i.i.i.i   ; 4 uses
  %.off.i.i.i.i = add i64 %i.v, 3
  %.not.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 7
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.ac = getelementptr [4 x i8], ptr %i.b, i64 %.0.i.i.i.i.i.i.i.i ; 2 uses
  %i.ad = load <2 x i64>, ptr %i.ac, align 1, !tbaa !37 ; 2 uses
  %i.ae = icmp sgt i64 %i.v, 7
  br i1 %i.ae, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr i8, ptr %i.ac, i64 16
  %i.ag = load <4 x i32>, ptr %i.af, align 1, !tbaa !37 ; 2 uses
  %i.ah = bitcast <2 x i64> %i.ad to <4 x i32>    ; 2 uses
  %i.ai = icmp samesign ugt i64 %i.v, 15
  br i1 %i.ai, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.g
  %.05777.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i, 8
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.g
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.ag, %bb.g ], [ %i.at, %.lr.ph.i.i.i.i ]
  %.sroa.067.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.ah, %bb.g ], [ %i.ap, %.lr.ph.i.i.i.i ]
  %i.aj = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i, %.lcssa.i.i.i.i ; 2 uses
  %i.ak = bitcast <4 x i32> %i.aj to <2 x i64>
  %i.al = icmp sgt i64 %i.z, %i.x
  br i1 %i.al, label %bb.h, label %bb.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.05780.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.05777.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.057.in79.i.i.i.i = phi i64 [ %.05780.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i ]
  %.sroa.067.078.i.i.i.i = phi <4 x i32> [ %i.ap, %.lr.ph.i.i.i.i ], [ %i.ah, %.lr.ph.preheader.i.i.i.i ]
  %i.am = phi <4 x i32> [ %i.at, %.lr.ph.i.i.i.i ], [ %i.ag, %.lr.ph.preheader.i.i.i.i ]
  %i.an = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.05780.i.i.i.i
  %i.ao = load <4 x i32>, ptr %i.an, align 1, !tbaa !37
  %i.ap = add <4 x i32> %i.ao, %.sroa.067.078.i.i.i.i ; 2 uses
  %i.aq = getelementptr [4 x i8], ptr %i.b, i64 %.057.in79.i.i.i.i
  %i.ar = getelementptr i8, ptr %i.aq, i64 48
  %i.as = load <4 x i32>, ptr %i.ar, align 1, !tbaa !37
  %i.at = add <4 x i32> %i.as, %i.am              ; 2 uses
  %.057.i.i.i.i = add nsw i64 %.05780.i.i.i.i, 8  ; 2 uses
  %i.au = icmp slt i64 %.057.i.i.i.i, %i.aa
  br i1 %i.au, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !38

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.av = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.aa
  %i.aw = load <4 x i32>, ptr %i.av, align 1, !tbaa !37
  %i.ax = add <4 x i32> %i.aw, %i.aj
  %i.ay = bitcast <4 x i32> %i.ax to <2 x i64>
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i, %bb.f
  %.sroa.067.2.i.i.i.i = phi <2 x i64> [ %i.ad, %bb.f ], [ %i.ay, %bb.h ], [ %i.ak, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.az = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32>
  %i.ba = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32> ; 2 uses
  %i.bb = shufflevector <4 x i32> %i.ba, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.bc = add <4 x i32> %i.bb, %i.az              ; 2 uses
  %shift = shufflevector <4 x i32> %i.bc, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = add nsw <4 x i32> %i.bc, %shift
  %4 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ba) ; 2 uses
  %i.bd = icmp sgt i64 %.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.bd, label %.lr.ph85.i.i.i.i.preheader, label %.preheader.i.i.i.i

.lr.ph85.i.i.i.i.preheader:                       ; preds = %bb.i
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph85.i.i.i.i.preheader405, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph85.i.i.i.i.preheader
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %i.be = shufflevector <4 x i32> %foldExtExtBinop, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.be, %vector.ph ], [ %i.bh, %vector.body ]
  %vec.phi207 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bi, %vector.body ]
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load = load <4 x i32>, ptr %i.bf, align 4, !tbaa !28
  %wide.load208 = load <4 x i32>, ptr %i.bg, align 4, !tbaa !28
  %i.bh = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.bi = add <4 x i32> %wide.load208, %vec.phi207 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !39

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bi, %i.bh
  %i.bk = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i.preheader405

.lr.ph85.i.i.i.i.preheader405:                    ; preds = %.lr.ph85.i.i.i.i.preheader, %middle.block
  %.05683.i.i.i.i.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.07582.i.i.i.i.ph = phi i32 [ %4, %.lr.ph85.i.i.i.i.preheader ], [ %i.bk, %middle.block ]
  br label %.lr.ph85.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i, %middle.block, %bb.i
  %.075.lcssa.i.i.i.i = phi i32 [ %4, %bb.i ], [ %i.bk, %middle.block ], [ %i.ca, %.lr.ph85.i.i.i.i ] ; 3 uses
  %i.bl = icmp slt i64 %i.ab, %i.n
  br i1 %i.bl, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i

.lr.ph89.i.i.i.i.preheader:                       ; preds = %.preheader.i.i.i.i
  %i.bm = shl nsw i64 %i.y, 2
  %i.bn = add i64 %.0.i.i.i.i.i.i.i.i, %i.bm
  %i.bo = sub i64 %i.n, %i.bn                     ; 3 uses
  %min.iters.check210 = icmp ult i64 %i.bo, 8
  br i1 %min.iters.check210, label %.lr.ph89.i.i.i.i.preheader400, label %vector.ph211

vector.ph211:                                     ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec212 = and i64 %i.bo, -8                   ; 3 uses
  %i.bp = add i64 %i.ab, %n.vec212
  %i.bq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i, i64 0
  %i.br = getelementptr [4 x i8], ptr %i.b, i64 %i.ab
  br label %vector.body213

vector.body213:                                   ; preds = %vector.body213, %vector.ph211
  %index214 = phi i64 [ 0, %vector.ph211 ], [ %index.next219, %vector.body213 ] ; 2 uses
  %vec.phi215 = phi <4 x i32> [ %i.bq, %vector.ph211 ], [ %i.bu, %vector.body213 ]
  %vec.phi216 = phi <4 x i32> [ zeroinitializer, %vector.ph211 ], [ %i.bv, %vector.body213 ]
  %i.bs = getelementptr [4 x i8], ptr %i.br, i64 %index214 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %wide.load217 = load <4 x i32>, ptr %i.bs, align 4, !tbaa !28
  %wide.load218 = load <4 x i32>, ptr %i.bt, align 4, !tbaa !28
  %i.bu = add <4 x i32> %wide.load217, %vec.phi215 ; 2 uses
  %i.bv = add <4 x i32> %wide.load218, %vec.phi216 ; 2 uses
  %index.next219 = add nuw i64 %index214, 8       ; 2 uses
  %i.bw = icmp eq i64 %index.next219, %n.vec212
  br i1 %i.bw, label %middle.block220, label %vector.body213, !llvm.loop !42

middle.block220:                                  ; preds = %vector.body213
  %bin.rdx221 = add <4 x i32> %i.bv, %i.bu
  %i.bx = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx221) ; 2 uses
  %cmp.n222 = icmp eq i64 %i.bo, %n.vec212
  br i1 %cmp.n222, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, label %.lr.ph89.i.i.i.i.preheader400

.lr.ph89.i.i.i.i.preheader400:                    ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block220
  %.05588.i.i.i.i.ph = phi i64 [ %i.ab, %.lr.ph89.i.i.i.i.preheader ], [ %i.bp, %middle.block220 ]
  %.187.i.i.i.i.ph = phi i32 [ %.075.lcssa.i.i.i.i, %.lr.ph89.i.i.i.i.preheader ], [ %i.bx, %middle.block220 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph85.i.i.i.i:                                 ; preds = %.lr.ph85.i.i.i.i.preheader405, %.lr.ph85.i.i.i.i
  %.05683.i.i.i.i = phi i64 [ %i.cb, %.lr.ph85.i.i.i.i ], [ %.05683.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader405 ] ; 2 uses
  %.07582.i.i.i.i = phi i32 [ %i.ca, %.lr.ph85.i.i.i.i ], [ %.07582.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader405 ]
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.05683.i.i.i.i
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !28
  %i.ca = add nsw i32 %i.bz, %.07582.i.i.i.i      ; 2 uses
  %i.cb = add nuw nsw i64 %.05683.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.cb, %.0.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i, !llvm.loop !43

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader400, %.lr.ph89.i.i.i.i
  %.05588.i.i.i.i = phi i64 [ %i.cf, %.lr.ph89.i.i.i.i ], [ %.05588.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader400 ] ; 2 uses
  %.187.i.i.i.i = phi i32 [ %i.ce, %.lr.ph89.i.i.i.i ], [ %.187.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader400 ]
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.05588.i.i.i.i
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !28
  %i.ce = add nsw i32 %i.cd, %.187.i.i.i.i        ; 2 uses
  %i.cf = add nsw i64 %.05588.i.i.i.i, 1          ; 2 uses
  %i.cg = icmp slt i64 %i.cf, %i.n
  br i1 %i.cg, label %.lr.ph89.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, !llvm.loop !44

bb.j:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.ch = load i32, ptr %i.b, align 4, !tbaa !28  ; 3 uses
  %i.ci = icmp sgt i64 %i.n, 1
  br i1 %i.ci, label %.lr.ph94.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i

.lr.ph94.i.i.i.i.preheader:                       ; preds = %bb.j
  %i.cj = add nsw i64 %i.n, -1                    ; 2 uses
  %min.iters.check226 = icmp ult i64 %i.n, 9
  br i1 %min.iters.check226, label %.lr.ph94.i.i.i.i.preheader396, label %vector.ph227

vector.ph227:                                     ; preds = %.lr.ph94.i.i.i.i.preheader
  %n.vec228 = and i64 %i.cj, -8                   ; 3 uses
  %i.ck = or disjoint i64 %n.vec228, 1
  %i.cl = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.ch, i64 0
  br label %vector.body229

vector.body229:                                   ; preds = %vector.body229, %vector.ph227
  %index230 = phi i64 [ 0, %vector.ph227 ], [ %index.next235, %vector.body229 ] ; 2 uses
  %vec.phi231 = phi <4 x i32> [ %i.cl, %vector.ph227 ], [ %i.cp, %vector.body229 ]
  %vec.phi232 = phi <4 x i32> [ zeroinitializer, %vector.ph227 ], [ %i.cq, %vector.body229 ]
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index230 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 20
  %wide.load233 = load <4 x i32>, ptr %i.cn, align 4, !tbaa !28
  %wide.load234 = load <4 x i32>, ptr %i.co, align 4, !tbaa !28
  %i.cp = add <4 x i32> %wide.load233, %vec.phi231 ; 2 uses
  %i.cq = add <4 x i32> %wide.load234, %vec.phi232 ; 2 uses
  %index.next235 = add nuw i64 %index230, 8       ; 2 uses
  %i.cr = icmp eq i64 %index.next235, %n.vec228
  br i1 %i.cr, label %middle.block236, label %vector.body229, !llvm.loop !45

middle.block236:                                  ; preds = %vector.body229
  %bin.rdx237 = add <4 x i32> %i.cq, %i.cp
  %i.cs = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx237) ; 2 uses
  %cmp.n238 = icmp eq i64 %i.cj, %n.vec228
  br i1 %cmp.n238, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, label %.lr.ph94.i.i.i.i.preheader396

.lr.ph94.i.i.i.i.preheader396:                    ; preds = %.lr.ph94.i.i.i.i.preheader, %middle.block236
  %.092.i.i.i.i.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.preheader ], [ %i.ck, %middle.block236 ]
  %.291.i.i.i.i.ph = phi i32 [ %i.ch, %.lr.ph94.i.i.i.i.preheader ], [ %i.cs, %middle.block236 ]
  br label %.lr.ph94.i.i.i.i

.lr.ph94.i.i.i.i:                                 ; preds = %.lr.ph94.i.i.i.i.preheader396, %.lr.ph94.i.i.i.i
  %.092.i.i.i.i = phi i64 [ %i.cw, %.lr.ph94.i.i.i.i ], [ %.092.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader396 ] ; 2 uses
  %.291.i.i.i.i = phi i32 [ %i.cv, %.lr.ph94.i.i.i.i ], [ %.291.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader396 ]
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.092.i.i.i.i
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !28
  %i.cv = add nsw i32 %i.cu, %.291.i.i.i.i        ; 2 uses
  %i.cw = add nuw nsw i64 %.092.i.i.i.i, 1        ; 2 uses
  %exitcond102.not.i.i.i.i = icmp eq i64 %i.cw, %i.n
  br i1 %exitcond102.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, label %.lr.ph94.i.i.i.i, !llvm.loop !46

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i: ; preds = %.lr.ph89.i.i.i.i, %.lr.ph94.i.i.i.i, %middle.block220, %middle.block236, %bb.j, %.preheader.i.i.i.i
  %.0.i.i = phi i32 [ %i.cv, %.lr.ph94.i.i.i.i ], [ %.075.lcssa.i.i.i.i, %.preheader.i.i.i.i ], [ %i.ch, %bb.j ], [ %i.cs, %middle.block236 ], [ %i.bx, %middle.block220 ], [ %i.ce, %.lr.ph89.i.i.i.i ]
  %i.cx = sext i32 %.0.i.i to i64
  br label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, %bb.b, %bb.c
  %.0.i103 = phi i64 [ 0, %bb.c ], [ %i.l, %bb.b ], [ %i.cx, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i ] ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !9
  %.not.i.i = icmp eq i64 %.0.i103, %i.cz
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIbLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.da = load ptr, ptr %1, align 8, !tbaa !14
  tail call void @free(ptr noundef %i.da) #17
  %i.db = icmp sgt i64 %.0.i103, 0
  br i1 %i.db, label %bb.l, label %.sink.split.i.i

bb.l:                                             ; preds = %bb.k
  %i.dc = tail call noalias ptr @malloc(i64 noundef %.0.i103) #18 ; 2 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %bb.m, label %.sink.split.i.i

bb.m:                                             ; preds = %bb.l
  %i.de = tail call ptr @__cxa_allocate_exception(i64 8) #17 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.de, align 8, !tbaa !47
  tail call void @__cxa_throw(ptr nonnull %i.de, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #14
  unreachable

.sink.split.i.i:                                  ; preds = %bb.l, %bb.k
  %.sink.i.i = phi ptr [ %i.dc, %bb.l ], [ null, %bb.k ]
  store ptr %.sink.i.i, ptr %1, align 8, !tbaa !14
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !30
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIbLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIbLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, %.sink.split.i.i
  %i.df = phi ptr [ %i.b, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i ], [ %.pre, %.sink.split.i.i ] ; 14 uses
  store i64 %.0.i103, ptr %i.cy, align 8, !tbaa !9
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIbLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !35 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !36
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.di, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !28
  %i.dn = load i32, ptr %i.di, align 4, !tbaa !28
  %i.do = sub nsw i32 %i.dm, %i.dn
  %i.dp = sext i32 %i.do to i64
  br label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i54

bb.o:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIbLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !36 ; 11 uses
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i54, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dt = ptrtoint ptr %i.df to i64               ; 2 uses
  %i.du = and i64 %i.dt, 3
  %.not.i.i.i.i.i.i.i.i19 = icmp eq i64 %i.du, 0
  br i1 %.not.i.i.i.i.i.i.i.i19, label %bb.q, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i20

bb.q:                                             ; preds = %bb.p
  %i.dv = lshr exact i64 %i.dt, 2
  %i.dw = sub nsw i64 0, %i.dv
  %i.dx = and i64 %i.dw, 3
  %i.dy = tail call i64 @llvm.smin.i64(i64 %i.dx, i64 %i.dr)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i20

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i20: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i.i.i21 = phi i64 [ %i.dy, %bb.q ], [ %i.dr, %bb.p ] ; 12 uses
  %i.dz = sub nsw i64 %i.dr, %.0.i.i.i.i.i.i.i.i21 ; 5 uses
  %i.ea = sdiv i64 %i.dz, 8
  %i.eb = shl nsw i64 %i.ea, 3                    ; 2 uses
  %i.ec = sdiv i64 %i.dz, 4                       ; 2 uses
  %i.ed = shl nsw i64 %i.ec, 2                    ; 2 uses
  %i.ee = add nsw i64 %i.eb, %.0.i.i.i.i.i.i.i.i21 ; 2 uses
  %i.ef = add nsw i64 %i.ed, %.0.i.i.i.i.i.i.i.i21 ; 4 uses
  %.off.i.i.i.i22 = add i64 %i.dz, 3
  %.not.i.i.i.i23 = icmp ult i64 %.off.i.i.i.i22, 7
  br i1 %.not.i.i.i.i23, label %bb.v, label %bb.r

bb.r:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i20
  %i.eg = getelementptr [4 x i8], ptr %i.df, i64 %.0.i.i.i.i.i.i.i.i21 ; 2 uses
  %i.eh = load <2 x i64>, ptr %i.eg, align 1, !tbaa !37 ; 2 uses
  %i.ei = icmp sgt i64 %i.dz, 7
  br i1 %i.ei, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.ej = getelementptr i8, ptr %i.eg, i64 16
  %i.ek = load <4 x i32>, ptr %i.ej, align 1, !tbaa !37 ; 2 uses
  %i.el = bitcast <2 x i64> %i.eh to <4 x i32>    ; 2 uses
  %i.em = icmp samesign ugt i64 %i.dz, 15
  br i1 %i.em, label %.lr.ph.preheader.i.i.i.i42, label %._crit_edge.i.i.i.i39

.lr.ph.preheader.i.i.i.i42:                       ; preds = %bb.s
  %.05777.i.i.i.i43 = add nsw i64 %.0.i.i.i.i.i.i.i.i21, 8
  br label %.lr.ph.i.i.i.i44

._crit_edge.i.i.i.i39:                            ; preds = %.lr.ph.i.i.i.i44, %bb.s
  %.lcssa.i.i.i.i40 = phi <4 x i32> [ %i.ek, %bb.s ], [ %i.ex, %.lr.ph.i.i.i.i44 ]
  %.sroa.067.0.lcssa.i.i.i.i41 = phi <4 x i32> [ %i.el, %bb.s ], [ %i.et, %.lr.ph.i.i.i.i44 ]
  %i.en = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i41, %.lcssa.i.i.i.i40 ; 2 uses
  %i.eo = bitcast <4 x i32> %i.en to <2 x i64>
  %i.ep = icmp sgt i64 %i.ed, %i.eb
  br i1 %i.ep, label %bb.t, label %bb.u

.lr.ph.i.i.i.i44:                                 ; preds = %.lr.ph.i.i.i.i44, %.lr.ph.preheader.i.i.i.i42
  %.05780.i.i.i.i45 = phi i64 [ %.057.i.i.i.i48, %.lr.ph.i.i.i.i44 ], [ %.05777.i.i.i.i43, %.lr.ph.preheader.i.i.i.i42 ] ; 3 uses
  %.057.in79.i.i.i.i46 = phi i64 [ %.05780.i.i.i.i45, %.lr.ph.i.i.i.i44 ], [ %.0.i.i.i.i.i.i.i.i21, %.lr.ph.preheader.i.i.i.i42 ]
  %.sroa.067.078.i.i.i.i47 = phi <4 x i32> [ %i.et, %.lr.ph.i.i.i.i44 ], [ %i.el, %.lr.ph.preheader.i.i.i.i42 ]
  %i.eq = phi <4 x i32> [ %i.ex, %.lr.ph.i.i.i.i44 ], [ %i.ek, %.lr.ph.preheader.i.i.i.i42 ]
  %i.er = getelementptr inbounds [4 x i8], ptr %i.df, i64 %.05780.i.i.i.i45
  %i.es = load <4 x i32>, ptr %i.er, align 1, !tbaa !37
  %i.et = add <4 x i32> %i.es, %.sroa.067.078.i.i.i.i47 ; 2 uses
  %i.eu = getelementptr [4 x i8], ptr %i.df, i64 %.057.in79.i.i.i.i46
  %i.ev = getelementptr i8, ptr %i.eu, i64 48
  %i.ew = load <4 x i32>, ptr %i.ev, align 1, !tbaa !37
  %i.ex = add <4 x i32> %i.ew, %i.eq              ; 2 uses
  %.057.i.i.i.i48 = add nsw i64 %.05780.i.i.i.i45, 8 ; 2 uses
  %i.ey = icmp slt i64 %.057.i.i.i.i48, %i.ee
  br i1 %i.ey, label %.lr.ph.i.i.i.i44, label %._crit_edge.i.i.i.i39, !llvm.loop !38

bb.t:                                             ; preds = %._crit_edge.i.i.i.i39
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.ee
  %i.fa = load <4 x i32>, ptr %i.ez, align 1, !tbaa !37
  %i.fb = add <4 x i32> %i.fa, %i.en
  %i.fc = bitcast <4 x i32> %i.fb to <2 x i64>
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i.i.i.i39, %bb.r
  %.sroa.067.2.i.i.i.i24 = phi <2 x i64> [ %i.eh, %bb.r ], [ %i.fc, %bb.t ], [ %i.eo, %._crit_edge.i.i.i.i39 ] ; 2 uses
  %i.fd = bitcast <2 x i64> %.sroa.067.2.i.i.i.i24 to <4 x i32>
  %i.fe = bitcast <2 x i64> %.sroa.067.2.i.i.i.i24 to <4 x i32> ; 2 uses
  %i.ff = shufflevector <4 x i32> %i.fe, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.fg = add <4 x i32> %i.ff, %i.fd              ; 2 uses
  %shift360 = shufflevector <4 x i32> %i.fg, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop361 = add nsw <4 x i32> %i.fg, %shift360
  %5 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.fe) ; 2 uses
  %i.fh = icmp sgt i64 %.0.i.i.i.i.i.i.i.i21, 0
  br i1 %i.fh, label %.lr.ph85.i.i.i.i35.preheader, label %.preheader.i.i.i.i27

.lr.ph85.i.i.i.i35.preheader:                     ; preds = %bb.u
  %min.iters.check242 = icmp ult i64 %.0.i.i.i.i.i.i.i.i21, 8
  br i1 %min.iters.check242, label %.lr.ph85.i.i.i.i35.preheader390, label %vector.ph243

vector.ph243:                                     ; preds = %.lr.ph85.i.i.i.i35.preheader
  %n.vec244 = and i64 %.0.i.i.i.i.i.i.i.i21, 9223372036854775800 ; 3 uses
  %i.fi = shufflevector <4 x i32> %foldExtExtBinop361, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body245

vector.body245:                                   ; preds = %vector.body245, %vector.ph243
  %index246 = phi i64 [ 0, %vector.ph243 ], [ %index.next251, %vector.body245 ] ; 2 uses
  %vec.phi247 = phi <4 x i32> [ %i.fi, %vector.ph243 ], [ %i.fl, %vector.body245 ]
  %vec.phi248 = phi <4 x i32> [ zeroinitializer, %vector.ph243 ], [ %i.fm, %vector.body245 ]
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %index246 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %wide.load249 = load <4 x i32>, ptr %i.fj, align 4, !tbaa !28
  %wide.load250 = load <4 x i32>, ptr %i.fk, align 4, !tbaa !28
  %i.fl = add <4 x i32> %wide.load249, %vec.phi247 ; 2 uses
  %i.fm = add <4 x i32> %wide.load250, %vec.phi248 ; 2 uses
  %index.next251 = add nuw i64 %index246, 8       ; 2 uses
  %i.fn = icmp eq i64 %index.next251, %n.vec244
  br i1 %i.fn, label %middle.block252, label %vector.body245, !llvm.loop !49

middle.block252:                                  ; preds = %vector.body245
  %bin.rdx253 = add <4 x i32> %i.fm, %i.fl
  %i.fo = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx253) ; 2 uses
  %cmp.n254 = icmp eq i64 %.0.i.i.i.i.i.i.i.i21, %n.vec244
  br i1 %cmp.n254, label %.preheader.i.i.i.i27, label %.lr.ph85.i.i.i.i35.preheader390

.lr.ph85.i.i.i.i35.preheader390:                  ; preds = %.lr.ph85.i.i.i.i35.preheader, %middle.block252
  %.05683.i.i.i.i36.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i35.preheader ], [ %n.vec244, %middle.block252 ]
  %.07582.i.i.i.i37.ph = phi i32 [ %5, %.lr.ph85.i.i.i.i35.preheader ], [ %i.fo, %middle.block252 ]
  br label %.lr.ph85.i.i.i.i35

.preheader.i.i.i.i27:                             ; preds = %.lr.ph85.i.i.i.i35, %middle.block252, %bb.u
  %.075.lcssa.i.i.i.i28 = phi i32 [ %5, %bb.u ], [ %i.fo, %middle.block252 ], [ %i.ge, %.lr.ph85.i.i.i.i35 ] ; 3 uses
  %i.fp = icmp slt i64 %i.ef, %i.dr
  br i1 %i.fp, label %.lr.ph89.i.i.i.i32.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29

.lr.ph89.i.i.i.i32.preheader:                     ; preds = %.preheader.i.i.i.i27
  %i.fq = shl nsw i64 %i.ec, 2
  %i.fr = add i64 %.0.i.i.i.i.i.i.i.i21, %i.fq
  %i.fs = sub i64 %i.dr, %i.fr                    ; 3 uses
  %min.iters.check258 = icmp ult i64 %i.fs, 8
  br i1 %min.iters.check258, label %.lr.ph89.i.i.i.i32.preheader385, label %vector.ph259

vector.ph259:                                     ; preds = %.lr.ph89.i.i.i.i32.preheader
  %n.vec260 = and i64 %i.fs, -8                   ; 3 uses
  %i.ft = add i64 %i.ef, %n.vec260
  %i.fu = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i28, i64 0
  %i.fv = getelementptr [4 x i8], ptr %i.df, i64 %i.ef
  br label %vector.body261

vector.body261:                                   ; preds = %vector.body261, %vector.ph259
  %index262 = phi i64 [ 0, %vector.ph259 ], [ %index.next267, %vector.body261 ] ; 2 uses
  %vec.phi263 = phi <4 x i32> [ %i.fu, %vector.ph259 ], [ %i.fy, %vector.body261 ]
  %vec.phi264 = phi <4 x i32> [ zeroinitializer, %vector.ph259 ], [ %i.fz, %vector.body261 ]
  %i.fw = getelementptr [4 x i8], ptr %i.fv, i64 %index262 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %wide.load265 = load <4 x i32>, ptr %i.fw, align 4, !tbaa !28
  %wide.load266 = load <4 x i32>, ptr %i.fx, align 4, !tbaa !28
  %i.fy = add <4 x i32> %wide.load265, %vec.phi263 ; 2 uses
  %i.fz = add <4 x i32> %wide.load266, %vec.phi264 ; 2 uses
  %index.next267 = add nuw i64 %index262, 8       ; 2 uses
  %i.ga = icmp eq i64 %index.next267, %n.vec260
  br i1 %i.ga, label %middle.block268, label %vector.body261, !llvm.loop !50

middle.block268:                                  ; preds = %vector.body261
  %bin.rdx269 = add <4 x i32> %i.fz, %i.fy
  %i.gb = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx269) ; 2 uses
  %cmp.n270 = icmp eq i64 %i.fs, %n.vec260
  br i1 %cmp.n270, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29, label %.lr.ph89.i.i.i.i32.preheader385

.lr.ph89.i.i.i.i32.preheader385:                  ; preds = %.lr.ph89.i.i.i.i32.preheader, %middle.block268
  %.05588.i.i.i.i33.ph = phi i64 [ %i.ef, %.lr.ph89.i.i.i.i32.preheader ], [ %i.ft, %middle.block268 ]
  %.187.i.i.i.i34.ph = phi i32 [ %.075.lcssa.i.i.i.i28, %.lr.ph89.i.i.i.i32.preheader ], [ %i.gb, %middle.block268 ]
  br label %.lr.ph89.i.i.i.i32

.lr.ph85.i.i.i.i35:                               ; preds = %.lr.ph85.i.i.i.i35.preheader390, %.lr.ph85.i.i.i.i35
  %.05683.i.i.i.i36 = phi i64 [ %i.gf, %.lr.ph85.i.i.i.i35 ], [ %.05683.i.i.i.i36.ph, %.lr.ph85.i.i.i.i35.preheader390 ] ; 2 uses
  %.07582.i.i.i.i37 = phi i32 [ %i.ge, %.lr.ph85.i.i.i.i35 ], [ %.07582.i.i.i.i37.ph, %.lr.ph85.i.i.i.i35.preheader390 ]
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %.05683.i.i.i.i36
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !28
  %i.ge = add nsw i32 %i.gd, %.07582.i.i.i.i37    ; 2 uses
  %i.gf = add nuw nsw i64 %.05683.i.i.i.i36, 1    ; 2 uses
  %exitcond.not.i.i.i.i38 = icmp eq i64 %i.gf, %.0.i.i.i.i.i.i.i.i21
  br i1 %exitcond.not.i.i.i.i38, label %.preheader.i.i.i.i27, label %.lr.ph85.i.i.i.i35, !llvm.loop !51

.lr.ph89.i.i.i.i32:                               ; preds = %.lr.ph89.i.i.i.i32.preheader385, %.lr.ph89.i.i.i.i32
  %.05588.i.i.i.i33 = phi i64 [ %i.gj, %.lr.ph89.i.i.i.i32 ], [ %.05588.i.i.i.i33.ph, %.lr.ph89.i.i.i.i32.preheader385 ] ; 2 uses
  %.187.i.i.i.i34 = phi i32 [ %i.gi, %.lr.ph89.i.i.i.i32 ], [ %.187.i.i.i.i34.ph, %.lr.ph89.i.i.i.i32.preheader385 ]
  %i.gg = getelementptr inbounds [4 x i8], ptr %i.df, i64 %.05588.i.i.i.i33
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !28
  %i.gi = add nsw i32 %i.gh, %.187.i.i.i.i34      ; 2 uses
  %i.gj = add nsw i64 %.05588.i.i.i.i33, 1        ; 2 uses
  %i.gk = icmp slt i64 %i.gj, %i.dr
  br i1 %i.gk, label %.lr.ph89.i.i.i.i32, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29, !llvm.loop !52

bb.v:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i20
  %i.gl = load i32, ptr %i.df, align 4, !tbaa !28 ; 3 uses
  %i.gm = icmp sgt i64 %i.dr, 1
  br i1 %i.gm, label %.lr.ph94.i.i.i.i49.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29

.lr.ph94.i.i.i.i49.preheader:                     ; preds = %bb.v
  %i.gn = add nsw i64 %i.dr, -1                   ; 2 uses
  %min.iters.check274 = icmp ult i64 %i.dr, 9
  br i1 %min.iters.check274, label %.lr.ph94.i.i.i.i49.preheader381, label %vector.ph275

vector.ph275:                                     ; preds = %.lr.ph94.i.i.i.i49.preheader
  %n.vec276 = and i64 %i.gn, -8                   ; 3 uses
  %i.go = or disjoint i64 %n.vec276, 1
  %i.gp = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.gl, i64 0
  br label %vector.body277

vector.body277:                                   ; preds = %vector.body277, %vector.ph275
  %index278 = phi i64 [ 0, %vector.ph275 ], [ %index.next283, %vector.body277 ] ; 2 uses
  %vec.phi279 = phi <4 x i32> [ %i.gp, %vector.ph275 ], [ %i.gt, %vector.body277 ]
  %vec.phi280 = phi <4 x i32> [ zeroinitializer, %vector.ph275 ], [ %i.gu, %vector.body277 ]
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %index278 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 4
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 20
  %wide.load281 = load <4 x i32>, ptr %i.gr, align 4, !tbaa !28
  %wide.load282 = load <4 x i32>, ptr %i.gs, align 4, !tbaa !28
  %i.gt = add <4 x i32> %wide.load281, %vec.phi279 ; 2 uses
  %i.gu = add <4 x i32> %wide.load282, %vec.phi280 ; 2 uses
  %index.next283 = add nuw i64 %index278, 8       ; 2 uses
  %i.gv = icmp eq i64 %index.next283, %n.vec276
  br i1 %i.gv, label %middle.block284, label %vector.body277, !llvm.loop !53

middle.block284:                                  ; preds = %vector.body277
  %bin.rdx285 = add <4 x i32> %i.gu, %i.gt
  %i.gw = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx285) ; 2 uses
  %cmp.n286 = icmp eq i64 %i.gn, %n.vec276
  br i1 %cmp.n286, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29, label %.lr.ph94.i.i.i.i49.preheader381

.lr.ph94.i.i.i.i49.preheader381:                  ; preds = %.lr.ph94.i.i.i.i49.preheader, %middle.block284
  %.092.i.i.i.i50.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i49.preheader ], [ %i.go, %middle.block284 ]
  %.291.i.i.i.i51.ph = phi i32 [ %i.gl, %.lr.ph94.i.i.i.i49.preheader ], [ %i.gw, %middle.block284 ]
  br label %.lr.ph94.i.i.i.i49

.lr.ph94.i.i.i.i49:                               ; preds = %.lr.ph94.i.i.i.i49.preheader381, %.lr.ph94.i.i.i.i49
  %.092.i.i.i.i50 = phi i64 [ %i.ha, %.lr.ph94.i.i.i.i49 ], [ %.092.i.i.i.i50.ph, %.lr.ph94.i.i.i.i49.preheader381 ] ; 2 uses
  %.291.i.i.i.i51 = phi i32 [ %i.gz, %.lr.ph94.i.i.i.i49 ], [ %.291.i.i.i.i51.ph, %.lr.ph94.i.i.i.i49.preheader381 ]
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %.092.i.i.i.i50
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !28
  %i.gz = add nsw i32 %i.gy, %.291.i.i.i.i51      ; 2 uses
  %i.ha = add nuw nsw i64 %.092.i.i.i.i50, 1      ; 2 uses
  %exitcond102.not.i.i.i.i52 = icmp eq i64 %i.ha, %i.dr
  br i1 %exitcond102.not.i.i.i.i52, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29, label %.lr.ph94.i.i.i.i49, !llvm.loop !54

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29: ; preds = %.lr.ph89.i.i.i.i32, %.lr.ph94.i.i.i.i49, %middle.block268, %middle.block284, %bb.v, %.preheader.i.i.i.i27
  %.0.i.i30 = phi i32 [ %i.gz, %.lr.ph94.i.i.i.i49 ], [ %.075.lcssa.i.i.i.i28, %.preheader.i.i.i.i27 ], [ %i.gl, %bb.v ], [ %i.gw, %middle.block284 ], [ %i.gb, %middle.block268 ], [ %i.gi, %.lr.ph89.i.i.i.i32 ]
  %i.hb = sext i32 %.0.i.i30 to i64
  br label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i54

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i54: ; preds = %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29, %bb.n, %bb.o
  %.0.i31105 = phi i64 [ 0, %bb.o ], [ %i.dp, %bb.n ], [ %i.hb, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29 ] ; 4 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !9
  %.not.i.i55 = icmp eq i64 %.0.i31105, %i.hd
  br i1 %.not.i.i55, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIbLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit58, label %bb.w

bb.w:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i54
  %i.he = load ptr, ptr %2, align 8, !tbaa !14
  tail call void @free(ptr noundef %i.he) #17
  %i.hf = icmp sgt i64 %.0.i31105, 0
  br i1 %i.hf, label %bb.x, label %.sink.split.i.i56

bb.x:                                             ; preds = %bb.w
  %i.hg = tail call noalias ptr @malloc(i64 noundef %.0.i31105) #18 ; 2 uses
  %i.hh = icmp eq ptr %i.hg, null
  br i1 %i.hh, label %bb.y, label %.sink.split.i.i56

bb.y:                                             ; preds = %bb.x
  %i.hi = tail call ptr @__cxa_allocate_exception(i64 8) #17 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.hi, align 8, !tbaa !47
  tail call void @__cxa_throw(ptr nonnull %i.hi, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #14
  unreachable

.sink.split.i.i56:                                ; preds = %bb.x, %bb.w
  %.sink.i.i57 = phi ptr [ %i.hg, %bb.x ], [ null, %bb.w ]
  store ptr %.sink.i.i57, ptr %2, align 8, !tbaa !14
  %.pre154 = load ptr, ptr %i.a, align 8, !tbaa !30
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIbLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit58

_ZN5Eigen15PlainObjectBaseINS_6MatrixIbLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit58: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i54, %.sink.split.i.i56
  %i.hj = phi ptr [ %i.df, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i54 ], [ %.pre154, %.sink.split.i.i56 ] ; 13 uses
  store i64 %.0.i31105, ptr %i.hc, align 8, !tbaa !9
  %i.hk = icmp eq ptr %i.hj, null
  br i1 %i.hk, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIbLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit58
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !35 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !36 ; 2 uses
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.hm, i64 %i.ho
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !28
  %i.hr = load i32, ptr %i.hm, align 4, !tbaa !28
  %i.hs = sub nsw i32 %i.hq, %i.hr
  %i.ht = sext i32 %i.hs to i64
  br label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i94

bb.aa:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIbLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit58
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !36 ; 12 uses
  %i.hw = icmp eq i64 %i.hv, 0
  br i1 %i.hw, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i94, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hx = ptrtoint ptr %i.hj to i64               ; 2 uses
  %i.hy = and i64 %i.hx, 3
  %.not.i.i.i.i.i.i.i.i59 = icmp eq i64 %i.hy, 0
  br i1 %.not.i.i.i.i.i.i.i.i59, label %bb.ac, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i60

bb.ac:                                            ; preds = %bb.ab
  %i.hz = lshr exact i64 %i.hx, 2
  %i.ia = sub nsw i64 0, %i.hz
  %i.ib = and i64 %i.ia, 3
  %i.ic = tail call i64 @llvm.smin.i64(i64 %i.ib, i64 %i.hv)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i60

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i60: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i.i.i.i.i61 = phi i64 [ %i.ic, %bb.ac ], [ %i.hv, %bb.ab ] ; 12 uses
  %i.id = sub nsw i64 %i.hv, %.0.i.i.i.i.i.i.i.i61 ; 5 uses
  %i.ie = sdiv i64 %i.id, 8
  %i.if = shl nsw i64 %i.ie, 3                    ; 2 uses
  %i.ig = sdiv i64 %i.id, 4                       ; 2 uses
  %i.ih = shl nsw i64 %i.ig, 2                    ; 2 uses
  %i.ii = add nsw i64 %i.if, %.0.i.i.i.i.i.i.i.i61 ; 2 uses
  %i.ij = add nsw i64 %i.ih, %.0.i.i.i.i.i.i.i.i61 ; 4 uses
  %.off.i.i.i.i62 = add i64 %i.id, 3
  %.not.i.i.i.i63 = icmp ult i64 %.off.i.i.i.i62, 7
  br i1 %.not.i.i.i.i63, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i60
  %i.ik = getelementptr [4 x i8], ptr %i.hj, i64 %.0.i.i.i.i.i.i.i.i61 ; 2 uses
  %i.il = load <2 x i64>, ptr %i.ik, align 1, !tbaa !37 ; 2 uses
  %i.im = icmp sgt i64 %i.id, 7
  br i1 %i.im, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.in = getelementptr i8, ptr %i.ik, i64 16
  %i.io = load <4 x i32>, ptr %i.in, align 1, !tbaa !37 ; 2 uses
  %i.ip = bitcast <2 x i64> %i.il to <4 x i32>    ; 2 uses
  %i.iq = icmp samesign ugt i64 %i.id, 15
  br i1 %i.iq, label %.lr.ph.preheader.i.i.i.i82, label %._crit_edge.i.i.i.i79

.lr.ph.preheader.i.i.i.i82:                       ; preds = %bb.ae
  %.05777.i.i.i.i83 = add nsw i64 %.0.i.i.i.i.i.i.i.i61, 8
  br label %.lr.ph.i.i.i.i84

._crit_edge.i.i.i.i79:                            ; preds = %.lr.ph.i.i.i.i84, %bb.ae
  %.lcssa.i.i.i.i80 = phi <4 x i32> [ %i.io, %bb.ae ], [ %i.jb, %.lr.ph.i.i.i.i84 ]
  %.sroa.067.0.lcssa.i.i.i.i81 = phi <4 x i32> [ %i.ip, %bb.ae ], [ %i.ix, %.lr.ph.i.i.i.i84 ]
  %i.ir = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i81, %.lcssa.i.i.i.i80 ; 2 uses
  %i.is = bitcast <4 x i32> %i.ir to <2 x i64>
  %i.it = icmp sgt i64 %i.ih, %i.if
  br i1 %i.it, label %bb.af, label %bb.ag

.lr.ph.i.i.i.i84:                                 ; preds = %.lr.ph.i.i.i.i84, %.lr.ph.preheader.i.i.i.i82
  %.05780.i.i.i.i85 = phi i64 [ %.057.i.i.i.i88, %.lr.ph.i.i.i.i84 ], [ %.05777.i.i.i.i83, %.lr.ph.preheader.i.i.i.i82 ] ; 3 uses
  %.057.in79.i.i.i.i86 = phi i64 [ %.05780.i.i.i.i85, %.lr.ph.i.i.i.i84 ], [ %.0.i.i.i.i.i.i.i.i61, %.lr.ph.preheader.i.i.i.i82 ]
  %.sroa.067.078.i.i.i.i87 = phi <4 x i32> [ %i.ix, %.lr.ph.i.i.i.i84 ], [ %i.ip, %.lr.ph.preheader.i.i.i.i82 ]
  %i.iu = phi <4 x i32> [ %i.jb, %.lr.ph.i.i.i.i84 ], [ %i.io, %.lr.ph.preheader.i.i.i.i82 ]
  %i.iv = getelementptr inbounds [4 x i8], ptr %i.hj, i64 %.05780.i.i.i.i85
  %i.iw = load <4 x i32>, ptr %i.iv, align 1, !tbaa !37
  %i.ix = add <4 x i32> %i.iw, %.sroa.067.078.i.i.i.i87 ; 2 uses
  %i.iy = getelementptr [4 x i8], ptr %i.hj, i64 %.057.in79.i.i.i.i86
  %i.iz = getelementptr i8, ptr %i.iy, i64 48
  %i.ja = load <4 x i32>, ptr %i.iz, align 1, !tbaa !37
  %i.jb = add <4 x i32> %i.ja, %i.iu              ; 2 uses
  %.057.i.i.i.i88 = add nsw i64 %.05780.i.i.i.i85, 8 ; 2 uses
  %i.jc = icmp slt i64 %.057.i.i.i.i88, %i.ii
  br i1 %i.jc, label %.lr.ph.i.i.i.i84, label %._crit_edge.i.i.i.i79, !llvm.loop !38

bb.af:                                            ; preds = %._crit_edge.i.i.i.i79
  %i.jd = getelementptr inbounds [4 x i8], ptr %i.hj, i64 %i.ii
  %i.je = load <4 x i32>, ptr %i.jd, align 1, !tbaa !37
  %i.jf = add <4 x i32> %i.je, %i.ir
  %i.jg = bitcast <4 x i32> %i.jf to <2 x i64>
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %._crit_edge.i.i.i.i79, %bb.ad
  %.sroa.067.2.i.i.i.i64 = phi <2 x i64> [ %i.il, %bb.ad ], [ %i.jg, %bb.af ], [ %i.is, %._crit_edge.i.i.i.i79 ] ; 2 uses
  %i.jh = bitcast <2 x i64> %.sroa.067.2.i.i.i.i64 to <4 x i32>
  %i.ji = bitcast <2 x i64> %.sroa.067.2.i.i.i.i64 to <4 x i32> ; 2 uses
  %i.jj = shufflevector <4 x i32> %i.ji, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.jk = add <4 x i32> %i.jj, %i.jh              ; 2 uses
  %shift363 = shufflevector <4 x i32> %i.jk, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop364 = add nsw <4 x i32> %i.jk, %shift363
  %6 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ji) ; 2 uses
  %i.jl = icmp sgt i64 %.0.i.i.i.i.i.i.i.i61, 0
  br i1 %i.jl, label %.lr.ph85.i.i.i.i75.preheader, label %.preheader.i.i.i.i67

.lr.ph85.i.i.i.i75.preheader:                     ; preds = %bb.ag
  %min.iters.check290 = icmp ult i64 %.0.i.i.i.i.i.i.i.i61, 8
  br i1 %min.iters.check290, label %.lr.ph85.i.i.i.i75.preheader375, label %vector.ph291

vector.ph291:                                     ; preds = %.lr.ph85.i.i.i.i75.preheader
  %n.vec292 = and i64 %.0.i.i.i.i.i.i.i.i61, 9223372036854775800 ; 3 uses
  %i.jm = shufflevector <4 x i32> %foldExtExtBinop364, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body293

vector.body293:                                   ; preds = %vector.body293, %vector.ph291
  %index294 = phi i64 [ 0, %vector.ph291 ], [ %index.next299, %vector.body293 ] ; 2 uses
  %vec.phi295 = phi <4 x i32> [ %i.jm, %vector.ph291 ], [ %i.jp, %vector.body293 ]
  %vec.phi296 = phi <4 x i32> [ zeroinitializer, %vector.ph291 ], [ %i.jq, %vector.body293 ]
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %index294 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 16
  %wide.load297 = load <4 x i32>, ptr %i.jn, align 4, !tbaa !28
  %wide.load298 = load <4 x i32>, ptr %i.jo, align 4, !tbaa !28
  %i.jp = add <4 x i32> %wide.load297, %vec.phi295 ; 2 uses
  %i.jq = add <4 x i32> %wide.load298, %vec.phi296 ; 2 uses
  %index.next299 = add nuw i64 %index294, 8       ; 2 uses
  %i.jr = icmp eq i64 %index.next299, %n.vec292
  br i1 %i.jr, label %middle.block300, label %vector.body293, !llvm.loop !55

middle.block300:                                  ; preds = %vector.body293
  %bin.rdx301 = add <4 x i32> %i.jq, %i.jp
  %i.js = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx301) ; 2 uses
  %cmp.n302 = icmp eq i64 %.0.i.i.i.i.i.i.i.i61, %n.vec292
  br i1 %cmp.n302, label %.preheader.i.i.i.i67, label %.lr.ph85.i.i.i.i75.preheader375

.lr.ph85.i.i.i.i75.preheader375:                  ; preds = %.lr.ph85.i.i.i.i75.preheader, %middle.block300
  %.05683.i.i.i.i76.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i75.preheader ], [ %n.vec292, %middle.block300 ]
  %.07582.i.i.i.i77.ph = phi i32 [ %6, %.lr.ph85.i.i.i.i75.preheader ], [ %i.js, %middle.block300 ]
  br label %.lr.ph85.i.i.i.i75

.preheader.i.i.i.i67:                             ; preds = %.lr.ph85.i.i.i.i75, %middle.block300, %bb.ag
  %.075.lcssa.i.i.i.i68 = phi i32 [ %6, %bb.ag ], [ %i.js, %middle.block300 ], [ %i.ki, %.lr.ph85.i.i.i.i75 ] ; 3 uses
  %i.jt = icmp slt i64 %i.ij, %i.hv
  br i1 %i.jt, label %.lr.ph89.i.i.i.i72.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i69

.lr.ph89.i.i.i.i72.preheader:                     ; preds = %.preheader.i.i.i.i67
  %i.ju = shl nsw i64 %i.ig, 2
  %i.jv = add i64 %.0.i.i.i.i.i.i.i.i61, %i.ju
  %i.jw = sub i64 %i.hv, %i.jv                    ; 3 uses
  %min.iters.check306 = icmp ult i64 %i.jw, 8
  br i1 %min.iters.check306, label %.lr.ph89.i.i.i.i72.preheader370, label %vector.ph307

vector.ph307:                                     ; preds = %.lr.ph89.i.i.i.i72.preheader
  %n.vec308 = and i64 %i.jw, -8                   ; 3 uses
  %i.jx = add i64 %i.ij, %n.vec308
  %i.jy = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i68, i64 0
  %i.jz = getelementptr [4 x i8], ptr %i.hj, i64 %i.ij
  br label %vector.body309

vector.body309:                                   ; preds = %vector.body309, %vector.ph307
  %index310 = phi i64 [ 0, %vector.ph307 ], [ %index.next315, %vector.body309 ] ; 2 uses
  %vec.phi311 = phi <4 x i32> [ %i.jy, %vector.ph307 ], [ %i.kc, %vector.body309 ]
  %vec.phi312 = phi <4 x i32> [ zeroinitializer, %vector.ph307 ], [ %i.kd, %vector.body309 ]
  %i.ka = getelementptr [4 x i8], ptr %i.jz, i64 %index310 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  %wide.load313 = load <4 x i32>, ptr %i.ka, align 4, !tbaa !28
  %wide.load314 = load <4 x i32>, ptr %i.kb, align 4, !tbaa !28
  %i.kc = add <4 x i32> %wide.load313, %vec.phi311 ; 2 uses
  %i.kd = add <4 x i32> %wide.load314, %vec.phi312 ; 2 uses
  %index.next315 = add nuw i64 %index310, 8       ; 2 uses
  %i.ke = icmp eq i64 %index.next315, %n.vec308
  br i1 %i.ke, label %middle.block316, label %vector.body309, !llvm.loop !56

middle.block316:                                  ; preds = %vector.body309
  %bin.rdx317 = add <4 x i32> %i.kd, %i.kc
  %i.kf = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx317) ; 2 uses
  %cmp.n318 = icmp eq i64 %i.jw, %n.vec308
  br i1 %cmp.n318, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i69, label %.lr.ph89.i.i.i.i72.preheader370

.lr.ph89.i.i.i.i72.preheader370:                  ; preds = %.lr.ph89.i.i.i.i72.preheader, %middle.block316
  %.05588.i.i.i.i73.ph = phi i64 [ %i.ij, %.lr.ph89.i.i.i.i72.preheader ], [ %i.jx, %middle.block316 ]
  %.187.i.i.i.i74.ph = phi i32 [ %.075.lcssa.i.i.i.i68, %.lr.ph89.i.i.i.i72.preheader ], [ %i.kf, %middle.block316 ]
  br label %.lr.ph89.i.i.i.i72

.lr.ph85.i.i.i.i75:                               ; preds = %.lr.ph85.i.i.i.i75.preheader375, %.lr.ph85.i.i.i.i75
  %.05683.i.i.i.i76 = phi i64 [ %i.kj, %.lr.ph85.i.i.i.i75 ], [ %.05683.i.i.i.i76.ph, %.lr.ph85.i.i.i.i75.preheader375 ] ; 2 uses
  %.07582.i.i.i.i77 = phi i32 [ %i.ki, %.lr.ph85.i.i.i.i75 ], [ %.07582.i.i.i.i77.ph, %.lr.ph85.i.i.i.i75.preheader375 ]
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %.05683.i.i.i.i76
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !28
  %i.ki = add nsw i32 %i.kh, %.07582.i.i.i.i77    ; 2 uses
  %i.kj = add nuw nsw i64 %.05683.i.i.i.i76, 1    ; 2 uses
  %exitcond.not.i.i.i.i78 = icmp eq i64 %i.kj, %.0.i.i.i.i.i.i.i.i61
  br i1 %exitcond.not.i.i.i.i78, label %.preheader.i.i.i.i67, label %.lr.ph85.i.i.i.i75, !llvm.loop !57

.lr.ph89.i.i.i.i72:                               ; preds = %.lr.ph89.i.i.i.i72.preheader370, %.lr.ph89.i.i.i.i72
  %.05588.i.i.i.i73 = phi i64 [ %i.kn, %.lr.ph89.i.i.i.i72 ], [ %.05588.i.i.i.i73.ph, %.lr.ph89.i.i.i.i72.preheader370 ] ; 2 uses
  %.187.i.i.i.i74 = phi i32 [ %i.km, %.lr.ph89.i.i.i.i72 ], [ %.187.i.i.i.i74.ph, %.lr.ph89.i.i.i.i72.preheader370 ]
  %i.kk = getelementptr inbounds [4 x i8], ptr %i.hj, i64 %.05588.i.i.i.i73
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !28
  %i.km = add nsw i32 %i.kl, %.187.i.i.i.i74      ; 2 uses
  %i.kn = add nsw i64 %.05588.i.i.i.i73, 1        ; 2 uses
  %i.ko = icmp slt i64 %i.kn, %i.hv
  br i1 %i.ko, label %.lr.ph89.i.i.i.i72, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i69, !llvm.loop !58

bb.ah:                                            ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i60
  %i.kp = load i32, ptr %i.hj, align 4, !tbaa !28 ; 3 uses
  %i.kq = icmp sgt i64 %i.hv, 1
  br i1 %i.kq, label %.lr.ph94.i.i.i.i89.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i69

.lr.ph94.i.i.i.i89.preheader:                     ; preds = %bb.ah
  %i.kr = add nsw i64 %i.hv, -1                   ; 2 uses
  %min.iters.check322 = icmp ult i64 %i.hv, 9
  br i1 %min.iters.check322, label %.lr.ph94.i.i.i.i89.preheader367, label %vector.ph323

vector.ph323:                                     ; preds = %.lr.ph94.i.i.i.i89.preheader
  %n.vec324 = and i64 %i.kr, -8                   ; 3 uses
  %i.ks = or disjoint i64 %n.vec324, 1
  %i.kt = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.kp, i64 0
  br label %vector.body325

vector.body325:                                   ; preds = %vector.body325, %vector.ph323
  %index326 = phi i64 [ 0, %vector.ph323 ], [ %index.next331, %vector.body325 ] ; 2 uses
  %vec.phi327 = phi <4 x i32> [ %i.kt, %vector.ph323 ], [ %i.kx, %vector.body325 ]
  %vec.phi328 = phi <4 x i32> [ zeroinitializer, %vector.ph323 ], [ %i.ky, %vector.body325 ]
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %index326 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 4
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ku, i64 20
  %wide.load329 = load <4 x i32>, ptr %i.kv, align 4, !tbaa !28
  %wide.load330 = load <4 x i32>, ptr %i.kw, align 4, !tbaa !28
  %i.kx = add <4 x i32> %wide.load329, %vec.phi327 ; 2 uses
  %i.ky = add <4 x i32> %wide.load330, %vec.phi328 ; 2 uses
  %index.next331 = add nuw i64 %index326, 8       ; 2 uses
  %i.kz = icmp eq i64 %index.next331, %n.vec324
  br i1 %i.kz, label %middle.block332, label %vector.body325, !llvm.loop !59

middle.block332:                                  ; preds = %vector.body325
  %bin.rdx333 = add <4 x i32> %i.ky, %i.kx
  %i.la = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx333) ; 2 uses
  %cmp.n334 = icmp eq i64 %i.kr, %n.vec324
  br i1 %cmp.n334, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i69, label %.lr.ph94.i.i.i.i89.preheader367

.lr.ph94.i.i.i.i89.preheader367:                  ; preds = %.lr.ph94.i.i.i.i89.preheader, %middle.block332
  %.092.i.i.i.i90.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i89.preheader ], [ %i.ks, %middle.block332 ]
  %.291.i.i.i.i91.ph = phi i32 [ %i.kp, %.lr.ph94.i.i.i.i89.preheader ], [ %i.la, %middle.block332 ]
  br label %.lr.ph94.i.i.i.i89

.lr.ph94.i.i.i.i89:                               ; preds = %.lr.ph94.i.i.i.i89.preheader367, %.lr.ph94.i.i.i.i89
  %.092.i.i.i.i90 = phi i64 [ %i.le, %.lr.ph94.i.i.i.i89 ], [ %.092.i.i.i.i90.ph, %.lr.ph94.i.i.i.i89.preheader367 ] ; 2 uses
  %.291.i.i.i.i91 = phi i32 [ %i.ld, %.lr.ph94.i.i.i.i89 ], [ %.291.i.i.i.i91.ph, %.lr.ph94.i.i.i.i89.preheader367 ]
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %.092.i.i.i.i90
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !28
  %i.ld = add nsw i32 %i.lc, %.291.i.i.i.i91      ; 2 uses
  %i.le = add nuw nsw i64 %.092.i.i.i.i90, 1      ; 2 uses
  %exitcond102.not.i.i.i.i92 = icmp eq i64 %i.le, %i.hv
  br i1 %exitcond102.not.i.i.i.i92, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i69, label %.lr.ph94.i.i.i.i89, !llvm.loop !60

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i69: ; preds = %.lr.ph89.i.i.i.i72, %.lr.ph94.i.i.i.i89, %middle.block316, %middle.block332, %bb.ah, %.preheader.i.i.i.i67
  %.0.i.i70 = phi i32 [ %i.ld, %.lr.ph94.i.i.i.i89 ], [ %.075.lcssa.i.i.i.i68, %.preheader.i.i.i.i67 ], [ %i.kp, %bb.ah ], [ %i.la, %middle.block332 ], [ %i.kf, %middle.block316 ], [ %i.km, %.lr.ph89.i.i.i.i72 ]
  %i.lf = sext i32 %.0.i.i70 to i64
  br label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i94

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i94: ; preds = %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i69, %bb.z, %bb.aa
  %i.lg = phi i64 [ 0, %bb.aa ], [ %i.ho, %bb.z ], [ %i.hv, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i69 ]
  %.0.i71107 = phi i64 [ 0, %bb.aa ], [ %i.ht, %bb.z ], [ %i.lf, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i69 ] ; 4 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.li = load i64, ptr %i.lh, align 8, !tbaa !9
  %.not.i.i95 = icmp eq i64 %.0.i71107, %i.li
  br i1 %.not.i.i95, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIbLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit98, label %bb.ai

bb.ai:                                            ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i94
  %i.lj = load ptr, ptr %3, align 8, !tbaa !14
  tail call void @free(ptr noundef %i.lj) #17
  %i.lk = icmp sgt i64 %.0.i71107, 0
  br i1 %i.lk, label %bb.aj, label %.sink.split.i.i96

bb.aj:                                            ; preds = %bb.ai
  %i.ll = tail call noalias ptr @malloc(i64 noundef %.0.i71107) #18 ; 2 uses
  %i.lm = icmp eq ptr %i.ll, null
  br i1 %i.lm, label %bb.ak, label %.sink.split.i.i96

bb.ak:                                            ; preds = %bb.aj
  %i.ln = tail call ptr @__cxa_allocate_exception(i64 8) #17 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ln, align 8, !tbaa !47
  tail call void @__cxa_throw(ptr nonnull %i.ln, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #14
  unreachable

.sink.split.i.i96:                                ; preds = %bb.aj, %bb.ai
  %.sink.i.i97 = phi ptr [ %i.ll, %bb.aj ], [ null, %bb.ai ]
  store ptr %.sink.i.i97, ptr %3, align 8, !tbaa !14
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre155 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !36
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIbLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit98

_ZN5Eigen15PlainObjectBaseINS_6MatrixIbLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit98: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i94, %.sink.split.i.i96
  %i.lo = phi i64 [ %i.lg, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i94 ], [ %.pre155, %.sink.split.i.i96 ] ; 2 uses
  store i64 %.0.i71107, ptr %i.lh, align 8, !tbaa !9
  %i.lp = icmp sgt i64 %i.lo, 0
  br i1 %i.lp, label %.lr.ph129, label %._crit_edge130

.lr.ph129:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIbLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit98
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !61 ; 5 uses
  %i.ls = ptrtoaddr ptr %i.lr to i64
end_hunk_0
begin_hunk_1_@_ZN3igl4findIbN5Eigen6MatrixIbLin1ELi1ELi0ELin1ELi1EEES3_S3_EEvRKNS1_12SparseMatrixIT_Li0EiEERNS1_9DenseBaseIT0_EERNS9_IT1_EERNS9_IT2_EE:bb.a
  %i.nj = getelementptr inbounds i8, ptr %i.mk, i64 %i.ng
  store <4 x i8> %wide.load352, ptr %i.nj, align 1, !tbaa !15
  %i.nk = getelementptr inbounds [4 x i8], ptr %i.lu, i64 %i.nh
  %wide.load353 = load <4 x i32>, ptr %i.nk, align 4, !tbaa !28
  %i.nl = icmp ne <4 x i32> %wide.load353, zeroinitializer
  %i.nm = getelementptr inbounds i8, ptr %i.ml, i64 %i.ng
  %i.nn = zext <4 x i1> %i.nl to <4 x i8>
  store <4 x i8> %i.nn, ptr %i.nm, align 1, !tbaa !15
  %i.no = getelementptr inbounds i8, ptr %i.mn, i64 %i.ng
  store <4 x i8> %broadcast.splat, ptr %i.no, align 1, !tbaa !15
  %index.next354 = add nuw i64 %index351, 4       ; 2 uses
  %i.np = icmp eq i64 %index.next354, %n.vec349
  br i1 %i.np, label %middle.block355, label %vector.body350, !llvm.loop !63

middle.block355:                                  ; preds = %vector.body350
  %cmp.n356 = icmp eq i64 %i.mq, %n.vec349
  br i1 %cmp.n356, label %._crit_edge.loopexit, label %scalar.ph346.preheader

scalar.ph346.preheader:                           ; preds = %vector.memcheck, %.lr.ph, %middle.block355
  %indvars.iv.ph = phi i64 [ %i.mp, %vector.memcheck ], [ %i.mp, %.lr.ph ], [ %i.ne, %middle.block355 ] ; 5 uses
  %.sroa.8.0125.ph = phi i64 [ %i.mb, %vector.memcheck ], [ %i.mb, %.lr.ph ], [ %i.nf, %middle.block355 ] ; 6 uses
  %i.nq = sub i64 %.sink.i, %.sroa.8.0125.ph
  %.neg = add i64 %.sroa.8.0125.ph, 1
  %xtraiter = and i64 %i.nq, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph346.prol.loopexit, label %scalar.ph346.prol

scalar.ph346.prol:                                ; preds = %scalar.ph346.preheader
  %i.nr = getelementptr inbounds i8, ptr %i.lr, i64 %.sroa.8.0125.ph
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !15, !range !17, !noundef !18
  %i.nt = getelementptr inbounds i8, ptr %i.mk, i64 %indvars.iv.ph
  store i8 %i.ns, ptr %i.nt, align 1, !tbaa !15
  %i.nu = getelementptr inbounds [4 x i8], ptr %i.lu, i64 %.sroa.8.0125.ph
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !28
  %i.nw = icmp ne i32 %i.nv, 0
  %i.nx = getelementptr inbounds i8, ptr %i.ml, i64 %indvars.iv.ph
  %i.ny = zext i1 %i.nw to i8
  store i8 %i.ny, ptr %i.nx, align 1, !tbaa !15
  %i.nz = getelementptr inbounds i8, ptr %i.mn, i64 %indvars.iv.ph
  store i8 %i.mo, ptr %i.nz, align 1, !tbaa !15
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.ph, 1 ; 2 uses
  %i.oa = add nsw i64 %.sroa.8.0125.ph, 1
  br label %scalar.ph346.prol.loopexit

scalar.ph346.prol.loopexit:                       ; preds = %scalar.ph346.prol, %scalar.ph346.preheader
  %indvars.iv.next.lcssa366.unr = phi i64 [ poison, %scalar.ph346.preheader ], [ %indvars.iv.next.prol, %scalar.ph346.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph346.preheader ], [ %indvars.iv.next.prol, %scalar.ph346.prol ]
  %.sroa.8.0125.unr = phi i64 [ %.sroa.8.0125.ph, %scalar.ph346.preheader ], [ %i.oa, %scalar.ph346.prol ]
  %i.ob = icmp eq i64 %.sink.i, %.neg
  br i1 %i.ob, label %._crit_edge.loopexit, label %scalar.ph346

._crit_edge.loopexit:                             ; preds = %scalar.ph346.prol.loopexit, %scalar.ph346, %middle.block355
  %indvars.iv.next.lcssa = phi i64 [ %i.ne, %middle.block355 ], [ %indvars.iv.next.lcssa366.unr, %scalar.ph346.prol.loopexit ], [ %indvars.iv.next.1, %scalar.ph346 ]
  %i.oc = trunc nsw i64 %indvars.iv.next.lcssa to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %.1.lcssa = phi i32 [ %.017127, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEE13InnerIteratorC2ERKS3_l.exit ], [ %i.oc, %._crit_edge.loopexit ]
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %exitcond153.not = icmp eq i64 %indvars.iv.next151, %i.lo
  br i1 %exitcond153.not, label %._crit_edge130, label %bb.al, !llvm.loop !64

scalar.ph346:                                     ; preds = %scalar.ph346.prol.loopexit, %scalar.ph346
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph346 ], [ %indvars.iv.unr, %scalar.ph346.prol.loopexit ] ; 5 uses
  %.sroa.8.0125 = phi i64 [ %i.ow, %scalar.ph346 ], [ %.sroa.8.0125.unr, %scalar.ph346.prol.loopexit ] ; 4 uses
  %i.od = getelementptr inbounds i8, ptr %i.lr, i64 %.sroa.8.0125
  %i.oe = load i8, ptr %i.od, align 1, !tbaa !15, !range !17, !noundef !18
  %i.of = getelementptr inbounds i8, ptr %i.mk, i64 %indvars.iv
  store i8 %i.oe, ptr %i.of, align 1, !tbaa !15
  %i.og = getelementptr inbounds [4 x i8], ptr %i.lu, i64 %.sroa.8.0125
  %i.oh = load i32, ptr %i.og, align 4, !tbaa !28
  %i.oi = icmp ne i32 %i.oh, 0
  %i.oj = getelementptr inbounds i8, ptr %i.ml, i64 %indvars.iv
  %i.ok = zext i1 %i.oi to i8
  store i8 %i.ok, ptr %i.oj, align 1, !tbaa !15
  %i.ol = getelementptr inbounds i8, ptr %i.mn, i64 %indvars.iv
  store i8 %i.mo, ptr %i.ol, align 1, !tbaa !15
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.om = add nsw i64 %.sroa.8.0125, 1            ; 2 uses
  %i.on = getelementptr inbounds i8, ptr %i.lr, i64 %i.om
  %i.oo = load i8, ptr %i.on, align 1, !tbaa !15, !range !17, !noundef !18
  %i.op = getelementptr inbounds i8, ptr %i.mk, i64 %indvars.iv.next
  store i8 %i.oo, ptr %i.op, align 1, !tbaa !15
  %i.oq = getelementptr inbounds [4 x i8], ptr %i.lu, i64 %i.om
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !28
  %i.os = icmp ne i32 %i.or, 0
  %i.ot = getelementptr inbounds i8, ptr %i.ml, i64 %indvars.iv.next
  %i.ou = zext i1 %i.os to i8
  store i8 %i.ou, ptr %i.ot, align 1, !tbaa !15
  %i.ov = getelementptr inbounds i8, ptr %i.mn, i64 %indvars.iv.next
  store i8 %i.mo, ptr %i.ov, align 1, !tbaa !15
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ow = add nsw i64 %.sroa.8.0125, 2            ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ow, %.sink.i
  br i1 %exitcond.not.1, label %._crit_edge.loopexit, label %scalar.ph346, !llvm.loop !65
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl4findIiN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES3_S3_EEvRKNS1_12SparseMatrixIT_Li0EiEERNS1_9DenseBaseIT0_EERNS9_IT1_EERNS9_IT2_EE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 13 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !71   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !72
  %i.h = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !28
  %i.j = load i32, ptr %i.e, align 4, !tbaa !28
  %i.k = sub nsw i32 %i.i, %i.j
  %i.l = sext i32 %i.k to i64
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEE8nonZerosEv.exit

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !72   ; 11 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEE8nonZerosEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.q = and i64 %i.p, 3
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.e, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.r = lshr exact i64 %i.p, 2
  %i.s = sub nsw i64 0, %i.r
  %i.t = and i64 %i.s, 3
  %i.u = tail call i64 @llvm.smin.i64(i64 %i.t, i64 %i.n)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i.i.i.i.i.i = phi i64 [ %i.u, %bb.e ], [ %i.n, %bb.d ] ; 12 uses
  %i.v = sub nsw i64 %i.n, %.0.i.i.i.i.i.i.i.i    ; 5 uses
  %i.w = sdiv i64 %i.v, 8
  %i.x = shl nsw i64 %i.w, 3                      ; 2 uses
  %i.y = sdiv i64 %i.v, 4                         ; 2 uses
  %i.z = shl nsw i64 %i.y, 2                      ; 2 uses
  %i.aa = add nsw i64 %i.x, %.0.i.i.i.i.i.i.i.i   ; 2 uses
  %i.ab = add nsw i64 %i.z, %.0.i.i.i.i.i.i.i.i   ; 4 uses
  %.off.i.i.i.i = add i64 %i.v, 3
  %.not.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 7
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.ac = getelementptr [4 x i8], ptr %i.b, i64 %.0.i.i.i.i.i.i.i.i ; 2 uses
  %i.ad = load <2 x i64>, ptr %i.ac, align 1, !tbaa !37 ; 2 uses
  %i.ae = icmp sgt i64 %i.v, 7
  br i1 %i.ae, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr i8, ptr %i.ac, i64 16
  %i.ag = load <4 x i32>, ptr %i.af, align 1, !tbaa !37 ; 2 uses
  %i.ah = bitcast <2 x i64> %i.ad to <4 x i32>    ; 2 uses
  %i.ai = icmp samesign ugt i64 %i.v, 15
  br i1 %i.ai, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.g
  %.05777.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i, 8
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.g
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.ag, %bb.g ], [ %i.at, %.lr.ph.i.i.i.i ]
  %.sroa.067.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.ah, %bb.g ], [ %i.ap, %.lr.ph.i.i.i.i ]
  %i.aj = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i, %.lcssa.i.i.i.i ; 2 uses
  %i.ak = bitcast <4 x i32> %i.aj to <2 x i64>
  %i.al = icmp sgt i64 %i.z, %i.x
  br i1 %i.al, label %bb.h, label %bb.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.05780.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.05777.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.057.in79.i.i.i.i = phi i64 [ %.05780.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i ]
  %.sroa.067.078.i.i.i.i = phi <4 x i32> [ %i.ap, %.lr.ph.i.i.i.i ], [ %i.ah, %.lr.ph.preheader.i.i.i.i ]
  %i.am = phi <4 x i32> [ %i.at, %.lr.ph.i.i.i.i ], [ %i.ag, %.lr.ph.preheader.i.i.i.i ]
  %i.an = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.05780.i.i.i.i
  %i.ao = load <4 x i32>, ptr %i.an, align 1, !tbaa !37
  %i.ap = add <4 x i32> %i.ao, %.sroa.067.078.i.i.i.i ; 2 uses
  %i.aq = getelementptr [4 x i8], ptr %i.b, i64 %.057.in79.i.i.i.i
  %i.ar = getelementptr i8, ptr %i.aq, i64 48
  %i.as = load <4 x i32>, ptr %i.ar, align 1, !tbaa !37
  %i.at = add <4 x i32> %i.as, %i.am              ; 2 uses
  %.057.i.i.i.i = add nsw i64 %.05780.i.i.i.i, 8  ; 2 uses
  %i.au = icmp slt i64 %.057.i.i.i.i, %i.aa
  br i1 %i.au, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !38

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.av = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.aa
  %i.aw = load <4 x i32>, ptr %i.av, align 1, !tbaa !37
  %i.ax = add <4 x i32> %i.aw, %i.aj
  %i.ay = bitcast <4 x i32> %i.ax to <2 x i64>
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i, %bb.f
  %.sroa.067.2.i.i.i.i = phi <2 x i64> [ %i.ad, %bb.f ], [ %i.ay, %bb.h ], [ %i.ak, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.az = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32>
  %i.ba = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32> ; 2 uses
  %i.bb = shufflevector <4 x i32> %i.ba, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.bc = add <4 x i32> %i.bb, %i.az              ; 2 uses
  %shift = shufflevector <4 x i32> %i.bc, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = add nsw <4 x i32> %i.bc, %shift
  %4 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ba) ; 2 uses
  %i.bd = icmp sgt i64 %.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.bd, label %.lr.ph85.i.i.i.i.preheader, label %.preheader.i.i.i.i

.lr.ph85.i.i.i.i.preheader:                       ; preds = %bb.i
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph85.i.i.i.i.preheader392, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph85.i.i.i.i.preheader
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %i.be = shufflevector <4 x i32> %foldExtExtBinop, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.be, %vector.ph ], [ %i.bh, %vector.body ]
  %vec.phi186 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bi, %vector.body ]
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load = load <4 x i32>, ptr %i.bf, align 4, !tbaa !28
  %wide.load187 = load <4 x i32>, ptr %i.bg, align 4, !tbaa !28
  %i.bh = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.bi = add <4 x i32> %wide.load187, %vec.phi186 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !73

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bi, %i.bh
  %i.bk = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i.preheader392

.lr.ph85.i.i.i.i.preheader392:                    ; preds = %.lr.ph85.i.i.i.i.preheader, %middle.block
  %.05683.i.i.i.i.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.07582.i.i.i.i.ph = phi i32 [ %4, %.lr.ph85.i.i.i.i.preheader ], [ %i.bk, %middle.block ]
  br label %.lr.ph85.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i, %middle.block, %bb.i
  %.075.lcssa.i.i.i.i = phi i32 [ %4, %bb.i ], [ %i.bk, %middle.block ], [ %i.ca, %.lr.ph85.i.i.i.i ] ; 3 uses
  %i.bl = icmp slt i64 %i.ab, %i.n
  br i1 %i.bl, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i

.lr.ph89.i.i.i.i.preheader:                       ; preds = %.preheader.i.i.i.i
  %i.bm = shl nsw i64 %i.y, 2
  %i.bn = add i64 %.0.i.i.i.i.i.i.i.i, %i.bm
  %i.bo = sub i64 %i.n, %i.bn                     ; 3 uses
  %min.iters.check189 = icmp ult i64 %i.bo, 8
  br i1 %min.iters.check189, label %.lr.ph89.i.i.i.i.preheader387, label %vector.ph190

vector.ph190:                                     ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec191 = and i64 %i.bo, -8                   ; 3 uses
  %i.bp = add i64 %i.ab, %n.vec191
  %i.bq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i, i64 0
  %i.br = getelementptr [4 x i8], ptr %i.b, i64 %i.ab
  br label %vector.body192

vector.body192:                                   ; preds = %vector.body192, %vector.ph190
  %index193 = phi i64 [ 0, %vector.ph190 ], [ %index.next198, %vector.body192 ] ; 2 uses
  %vec.phi194 = phi <4 x i32> [ %i.bq, %vector.ph190 ], [ %i.bu, %vector.body192 ]
  %vec.phi195 = phi <4 x i32> [ zeroinitializer, %vector.ph190 ], [ %i.bv, %vector.body192 ]
  %i.bs = getelementptr [4 x i8], ptr %i.br, i64 %index193 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %wide.load196 = load <4 x i32>, ptr %i.bs, align 4, !tbaa !28
  %wide.load197 = load <4 x i32>, ptr %i.bt, align 4, !tbaa !28
  %i.bu = add <4 x i32> %wide.load196, %vec.phi194 ; 2 uses
  %i.bv = add <4 x i32> %wide.load197, %vec.phi195 ; 2 uses
  %index.next198 = add nuw i64 %index193, 8       ; 2 uses
  %i.bw = icmp eq i64 %index.next198, %n.vec191
  br i1 %i.bw, label %middle.block199, label %vector.body192, !llvm.loop !74

middle.block199:                                  ; preds = %vector.body192
  %bin.rdx200 = add <4 x i32> %i.bv, %i.bu
  %i.bx = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx200) ; 2 uses
  %cmp.n201 = icmp eq i64 %i.bo, %n.vec191
  br i1 %cmp.n201, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, label %.lr.ph89.i.i.i.i.preheader387

.lr.ph89.i.i.i.i.preheader387:                    ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block199
  %.05588.i.i.i.i.ph = phi i64 [ %i.ab, %.lr.ph89.i.i.i.i.preheader ], [ %i.bp, %middle.block199 ]
  %.187.i.i.i.i.ph = phi i32 [ %.075.lcssa.i.i.i.i, %.lr.ph89.i.i.i.i.preheader ], [ %i.bx, %middle.block199 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph85.i.i.i.i:                                 ; preds = %.lr.ph85.i.i.i.i.preheader392, %.lr.ph85.i.i.i.i
  %.05683.i.i.i.i = phi i64 [ %i.cb, %.lr.ph85.i.i.i.i ], [ %.05683.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader392 ] ; 2 uses
  %.07582.i.i.i.i = phi i32 [ %i.ca, %.lr.ph85.i.i.i.i ], [ %.07582.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader392 ]
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.05683.i.i.i.i
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !28
  %i.ca = add nsw i32 %i.bz, %.07582.i.i.i.i      ; 2 uses
  %i.cb = add nuw nsw i64 %.05683.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.cb, %.0.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i, !llvm.loop !75

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader387, %.lr.ph89.i.i.i.i
  %.05588.i.i.i.i = phi i64 [ %i.cf, %.lr.ph89.i.i.i.i ], [ %.05588.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader387 ] ; 2 uses
  %.187.i.i.i.i = phi i32 [ %i.ce, %.lr.ph89.i.i.i.i ], [ %.187.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader387 ]
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.05588.i.i.i.i
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !28
  %i.ce = add nsw i32 %i.cd, %.187.i.i.i.i        ; 2 uses
  %i.cf = add nsw i64 %.05588.i.i.i.i, 1          ; 2 uses
  %i.cg = icmp slt i64 %i.cf, %i.n
  br i1 %i.cg, label %.lr.ph89.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, !llvm.loop !76

bb.j:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.ch = load i32, ptr %i.b, align 4, !tbaa !28  ; 3 uses
  %i.ci = icmp sgt i64 %i.n, 1
  br i1 %i.ci, label %.lr.ph94.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i

.lr.ph94.i.i.i.i.preheader:                       ; preds = %bb.j
  %i.cj = add nsw i64 %i.n, -1                    ; 2 uses
  %min.iters.check205 = icmp ult i64 %i.n, 9
  br i1 %min.iters.check205, label %.lr.ph94.i.i.i.i.preheader383, label %vector.ph206

vector.ph206:                                     ; preds = %.lr.ph94.i.i.i.i.preheader
  %n.vec207 = and i64 %i.cj, -8                   ; 3 uses
  %i.ck = or disjoint i64 %n.vec207, 1
  %i.cl = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.ch, i64 0
  br label %vector.body208

vector.body208:                                   ; preds = %vector.body208, %vector.ph206
  %index209 = phi i64 [ 0, %vector.ph206 ], [ %index.next214, %vector.body208 ] ; 2 uses
  %vec.phi210 = phi <4 x i32> [ %i.cl, %vector.ph206 ], [ %i.cp, %vector.body208 ]
  %vec.phi211 = phi <4 x i32> [ zeroinitializer, %vector.ph206 ], [ %i.cq, %vector.body208 ]
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index209 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 20
  %wide.load212 = load <4 x i32>, ptr %i.cn, align 4, !tbaa !28
  %wide.load213 = load <4 x i32>, ptr %i.co, align 4, !tbaa !28
  %i.cp = add <4 x i32> %wide.load212, %vec.phi210 ; 2 uses
  %i.cq = add <4 x i32> %wide.load213, %vec.phi211 ; 2 uses
  %index.next214 = add nuw i64 %index209, 8       ; 2 uses
  %i.cr = icmp eq i64 %index.next214, %n.vec207
  br i1 %i.cr, label %middle.block215, label %vector.body208, !llvm.loop !77

middle.block215:                                  ; preds = %vector.body208
  %bin.rdx216 = add <4 x i32> %i.cq, %i.cp
  %i.cs = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx216) ; 2 uses
  %cmp.n217 = icmp eq i64 %i.cj, %n.vec207
  br i1 %cmp.n217, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, label %.lr.ph94.i.i.i.i.preheader383

.lr.ph94.i.i.i.i.preheader383:                    ; preds = %.lr.ph94.i.i.i.i.preheader, %middle.block215
  %.092.i.i.i.i.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.preheader ], [ %i.ck, %middle.block215 ]
  %.291.i.i.i.i.ph = phi i32 [ %i.ch, %.lr.ph94.i.i.i.i.preheader ], [ %i.cs, %middle.block215 ]
  br label %.lr.ph94.i.i.i.i

.lr.ph94.i.i.i.i:                                 ; preds = %.lr.ph94.i.i.i.i.preheader383, %.lr.ph94.i.i.i.i
  %.092.i.i.i.i = phi i64 [ %i.cw, %.lr.ph94.i.i.i.i ], [ %.092.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader383 ] ; 2 uses
  %.291.i.i.i.i = phi i32 [ %i.cv, %.lr.ph94.i.i.i.i ], [ %.291.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader383 ]
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.092.i.i.i.i
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !28
  %i.cv = add nsw i32 %i.cu, %.291.i.i.i.i        ; 2 uses
  %i.cw = add nuw nsw i64 %.092.i.i.i.i, 1        ; 2 uses
  %exitcond102.not.i.i.i.i = icmp eq i64 %i.cw, %i.n
  br i1 %exitcond102.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, label %.lr.ph94.i.i.i.i, !llvm.loop !78

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i: ; preds = %.lr.ph89.i.i.i.i, %.lr.ph94.i.i.i.i, %middle.block199, %middle.block215, %bb.j, %.preheader.i.i.i.i
  %.0.i.i = phi i32 [ %i.cv, %.lr.ph94.i.i.i.i ], [ %.075.lcssa.i.i.i.i, %.preheader.i.i.i.i ], [ %i.ch, %bb.j ], [ %i.cs, %middle.block215 ], [ %i.bx, %middle.block199 ], [ %i.ce, %.lr.ph89.i.i.i.i ]
  %i.cx = sext i32 %.0.i.i to i64
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEE8nonZerosEv.exit

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEE8nonZerosEv.exit: ; preds = %bb.b, %bb.c, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i
  %.0.i = phi i64 [ %i.l, %bb.b ], [ %i.cx, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i ], [ 0, %bb.c ]
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %.0.i, i64 noundef 1)
  %i.cy = load ptr, ptr %i.a, align 8, !tbaa !66  ; 13 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEE8nonZerosEv.exit
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !71 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !72
  %i.de = getelementptr inbounds [4 x i8], ptr %i.db, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !28
  %i.dg = load i32, ptr %i.db, align 4, !tbaa !28
  %i.dh = sub nsw i32 %i.df, %i.dg
  %i.di = sext i32 %i.dh to i64
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEE8nonZerosEv.exit53

bb.l:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEE8nonZerosEv.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !72 ; 11 uses
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEE8nonZerosEv.exit53, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dm = ptrtoint ptr %i.cy to i64               ; 2 uses
  %i.dn = and i64 %i.dm, 3
  %.not.i.i.i.i.i.i.i.i19 = icmp eq i64 %i.dn, 0
  br i1 %.not.i.i.i.i.i.i.i.i19, label %bb.n, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i20

bb.n:                                             ; preds = %bb.m
  %i.do = lshr exact i64 %i.dm, 2
  %i.dp = sub nsw i64 0, %i.do
  %i.dq = and i64 %i.dp, 3
  %i.dr = tail call i64 @llvm.smin.i64(i64 %i.dq, i64 %i.dk)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i20

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i20: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i21 = phi i64 [ %i.dr, %bb.n ], [ %i.dk, %bb.m ] ; 12 uses
  %i.ds = sub nsw i64 %i.dk, %.0.i.i.i.i.i.i.i.i21 ; 5 uses
  %i.dt = sdiv i64 %i.ds, 8
  %i.du = shl nsw i64 %i.dt, 3                    ; 2 uses
  %i.dv = sdiv i64 %i.ds, 4                       ; 2 uses
  %i.dw = shl nsw i64 %i.dv, 2                    ; 2 uses
  %i.dx = add nsw i64 %i.du, %.0.i.i.i.i.i.i.i.i21 ; 2 uses
  %i.dy = add nsw i64 %i.dw, %.0.i.i.i.i.i.i.i.i21 ; 4 uses
  %.off.i.i.i.i22 = add i64 %i.ds, 3
  %.not.i.i.i.i23 = icmp ult i64 %.off.i.i.i.i22, 7
  br i1 %.not.i.i.i.i23, label %bb.s, label %bb.o

bb.o:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i20
  %i.dz = getelementptr [4 x i8], ptr %i.cy, i64 %.0.i.i.i.i.i.i.i.i21 ; 2 uses
  %i.ea = load <2 x i64>, ptr %i.dz, align 1, !tbaa !37 ; 2 uses
  %i.eb = icmp sgt i64 %i.ds, 7
  br i1 %i.eb, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ec = getelementptr i8, ptr %i.dz, i64 16
  %i.ed = load <4 x i32>, ptr %i.ec, align 1, !tbaa !37 ; 2 uses
  %i.ee = bitcast <2 x i64> %i.ea to <4 x i32>    ; 2 uses
  %i.ef = icmp samesign ugt i64 %i.ds, 15
  br i1 %i.ef, label %.lr.ph.preheader.i.i.i.i42, label %._crit_edge.i.i.i.i39

.lr.ph.preheader.i.i.i.i42:                       ; preds = %bb.p
  %.05777.i.i.i.i43 = add nsw i64 %.0.i.i.i.i.i.i.i.i21, 8
  br label %.lr.ph.i.i.i.i44

._crit_edge.i.i.i.i39:                            ; preds = %.lr.ph.i.i.i.i44, %bb.p
  %.lcssa.i.i.i.i40 = phi <4 x i32> [ %i.ed, %bb.p ], [ %i.eq, %.lr.ph.i.i.i.i44 ]
  %.sroa.067.0.lcssa.i.i.i.i41 = phi <4 x i32> [ %i.ee, %bb.p ], [ %i.em, %.lr.ph.i.i.i.i44 ]
  %i.eg = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i41, %.lcssa.i.i.i.i40 ; 2 uses
  %i.eh = bitcast <4 x i32> %i.eg to <2 x i64>
  %i.ei = icmp sgt i64 %i.dw, %i.du
  br i1 %i.ei, label %bb.q, label %bb.r

.lr.ph.i.i.i.i44:                                 ; preds = %.lr.ph.i.i.i.i44, %.lr.ph.preheader.i.i.i.i42
  %.05780.i.i.i.i45 = phi i64 [ %.057.i.i.i.i48, %.lr.ph.i.i.i.i44 ], [ %.05777.i.i.i.i43, %.lr.ph.preheader.i.i.i.i42 ] ; 3 uses
  %.057.in79.i.i.i.i46 = phi i64 [ %.05780.i.i.i.i45, %.lr.ph.i.i.i.i44 ], [ %.0.i.i.i.i.i.i.i.i21, %.lr.ph.preheader.i.i.i.i42 ]
  %.sroa.067.078.i.i.i.i47 = phi <4 x i32> [ %i.em, %.lr.ph.i.i.i.i44 ], [ %i.ee, %.lr.ph.preheader.i.i.i.i42 ]
  %i.ej = phi <4 x i32> [ %i.eq, %.lr.ph.i.i.i.i44 ], [ %i.ed, %.lr.ph.preheader.i.i.i.i42 ]
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %.05780.i.i.i.i45
  %i.el = load <4 x i32>, ptr %i.ek, align 1, !tbaa !37
  %i.em = add <4 x i32> %i.el, %.sroa.067.078.i.i.i.i47 ; 2 uses
  %i.en = getelementptr [4 x i8], ptr %i.cy, i64 %.057.in79.i.i.i.i46
  %i.eo = getelementptr i8, ptr %i.en, i64 48
  %i.ep = load <4 x i32>, ptr %i.eo, align 1, !tbaa !37
  %i.eq = add <4 x i32> %i.ep, %i.ej              ; 2 uses
  %.057.i.i.i.i48 = add nsw i64 %.05780.i.i.i.i45, 8 ; 2 uses
  %i.er = icmp slt i64 %.057.i.i.i.i48, %i.dx
  br i1 %i.er, label %.lr.ph.i.i.i.i44, label %._crit_edge.i.i.i.i39, !llvm.loop !38

bb.q:                                             ; preds = %._crit_edge.i.i.i.i39
  %i.es = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %i.dx
  %i.et = load <4 x i32>, ptr %i.es, align 1, !tbaa !37
  %i.eu = add <4 x i32> %i.et, %i.eg
  %i.ev = bitcast <4 x i32> %i.eu to <2 x i64>
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge.i.i.i.i39, %bb.o
  %.sroa.067.2.i.i.i.i24 = phi <2 x i64> [ %i.ea, %bb.o ], [ %i.ev, %bb.q ], [ %i.eh, %._crit_edge.i.i.i.i39 ] ; 2 uses
  %i.ew = bitcast <2 x i64> %.sroa.067.2.i.i.i.i24 to <4 x i32>
  %i.ex = bitcast <2 x i64> %.sroa.067.2.i.i.i.i24 to <4 x i32> ; 2 uses
  %i.ey = shufflevector <4 x i32> %i.ex, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.ez = add <4 x i32> %i.ey, %i.ew              ; 2 uses
  %shift347 = shufflevector <4 x i32> %i.ez, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop348 = add nsw <4 x i32> %i.ez, %shift347
  %5 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ex) ; 2 uses
  %i.fa = icmp sgt i64 %.0.i.i.i.i.i.i.i.i21, 0
  br i1 %i.fa, label %.lr.ph85.i.i.i.i35.preheader, label %.preheader.i.i.i.i27

.lr.ph85.i.i.i.i35.preheader:                     ; preds = %bb.r
  %min.iters.check221 = icmp ult i64 %.0.i.i.i.i.i.i.i.i21, 8
  br i1 %min.iters.check221, label %.lr.ph85.i.i.i.i35.preheader377, label %vector.ph222

vector.ph222:                                     ; preds = %.lr.ph85.i.i.i.i35.preheader
  %n.vec223 = and i64 %.0.i.i.i.i.i.i.i.i21, 9223372036854775800 ; 3 uses
  %i.fb = shufflevector <4 x i32> %foldExtExtBinop348, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body224

vector.body224:                                   ; preds = %vector.body224, %vector.ph222
  %index225 = phi i64 [ 0, %vector.ph222 ], [ %index.next230, %vector.body224 ] ; 2 uses
  %vec.phi226 = phi <4 x i32> [ %i.fb, %vector.ph222 ], [ %i.fe, %vector.body224 ]
  %vec.phi227 = phi <4 x i32> [ zeroinitializer, %vector.ph222 ], [ %i.ff, %vector.body224 ]
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %index225 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %wide.load228 = load <4 x i32>, ptr %i.fc, align 4, !tbaa !28
  %wide.load229 = load <4 x i32>, ptr %i.fd, align 4, !tbaa !28
  %i.fe = add <4 x i32> %wide.load228, %vec.phi226 ; 2 uses
  %i.ff = add <4 x i32> %wide.load229, %vec.phi227 ; 2 uses
  %index.next230 = add nuw i64 %index225, 8       ; 2 uses
  %i.fg = icmp eq i64 %index.next230, %n.vec223
  br i1 %i.fg, label %middle.block231, label %vector.body224, !llvm.loop !79

middle.block231:                                  ; preds = %vector.body224
  %bin.rdx232 = add <4 x i32> %i.ff, %i.fe
  %i.fh = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx232) ; 2 uses
  %cmp.n233 = icmp eq i64 %.0.i.i.i.i.i.i.i.i21, %n.vec223
  br i1 %cmp.n233, label %.preheader.i.i.i.i27, label %.lr.ph85.i.i.i.i35.preheader377

.lr.ph85.i.i.i.i35.preheader377:                  ; preds = %.lr.ph85.i.i.i.i35.preheader, %middle.block231
  %.05683.i.i.i.i36.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i35.preheader ], [ %n.vec223, %middle.block231 ]
  %.07582.i.i.i.i37.ph = phi i32 [ %5, %.lr.ph85.i.i.i.i35.preheader ], [ %i.fh, %middle.block231 ]
  br label %.lr.ph85.i.i.i.i35

.preheader.i.i.i.i27:                             ; preds = %.lr.ph85.i.i.i.i35, %middle.block231, %bb.r
  %.075.lcssa.i.i.i.i28 = phi i32 [ %5, %bb.r ], [ %i.fh, %middle.block231 ], [ %i.fx, %.lr.ph85.i.i.i.i35 ] ; 3 uses
  %i.fi = icmp slt i64 %i.dy, %i.dk
  br i1 %i.fi, label %.lr.ph89.i.i.i.i32.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29

.lr.ph89.i.i.i.i32.preheader:                     ; preds = %.preheader.i.i.i.i27
  %i.fj = shl nsw i64 %i.dv, 2
  %i.fk = add i64 %.0.i.i.i.i.i.i.i.i21, %i.fj
  %i.fl = sub i64 %i.dk, %i.fk                    ; 3 uses
  %min.iters.check237 = icmp ult i64 %i.fl, 8
  br i1 %min.iters.check237, label %.lr.ph89.i.i.i.i32.preheader372, label %vector.ph238

vector.ph238:                                     ; preds = %.lr.ph89.i.i.i.i32.preheader
  %n.vec239 = and i64 %i.fl, -8                   ; 3 uses
  %i.fm = add i64 %i.dy, %n.vec239
  %i.fn = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i28, i64 0
  %i.fo = getelementptr [4 x i8], ptr %i.cy, i64 %i.dy
  br label %vector.body240

vector.body240:                                   ; preds = %vector.body240, %vector.ph238
  %index241 = phi i64 [ 0, %vector.ph238 ], [ %index.next246, %vector.body240 ] ; 2 uses
  %vec.phi242 = phi <4 x i32> [ %i.fn, %vector.ph238 ], [ %i.fr, %vector.body240 ]
  %vec.phi243 = phi <4 x i32> [ zeroinitializer, %vector.ph238 ], [ %i.fs, %vector.body240 ]
  %i.fp = getelementptr [4 x i8], ptr %i.fo, i64 %index241 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %wide.load244 = load <4 x i32>, ptr %i.fp, align 4, !tbaa !28
  %wide.load245 = load <4 x i32>, ptr %i.fq, align 4, !tbaa !28
  %i.fr = add <4 x i32> %wide.load244, %vec.phi242 ; 2 uses
  %i.fs = add <4 x i32> %wide.load245, %vec.phi243 ; 2 uses
  %index.next246 = add nuw i64 %index241, 8       ; 2 uses
  %i.ft = icmp eq i64 %index.next246, %n.vec239
  br i1 %i.ft, label %middle.block247, label %vector.body240, !llvm.loop !80

middle.block247:                                  ; preds = %vector.body240
  %bin.rdx248 = add <4 x i32> %i.fs, %i.fr
  %i.fu = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx248) ; 2 uses
  %cmp.n249 = icmp eq i64 %i.fl, %n.vec239
  br i1 %cmp.n249, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29, label %.lr.ph89.i.i.i.i32.preheader372

.lr.ph89.i.i.i.i32.preheader372:                  ; preds = %.lr.ph89.i.i.i.i32.preheader, %middle.block247
  %.05588.i.i.i.i33.ph = phi i64 [ %i.dy, %.lr.ph89.i.i.i.i32.preheader ], [ %i.fm, %middle.block247 ]
  %.187.i.i.i.i34.ph = phi i32 [ %.075.lcssa.i.i.i.i28, %.lr.ph89.i.i.i.i32.preheader ], [ %i.fu, %middle.block247 ]
  br label %.lr.ph89.i.i.i.i32

.lr.ph85.i.i.i.i35:                               ; preds = %.lr.ph85.i.i.i.i35.preheader377, %.lr.ph85.i.i.i.i35
  %.05683.i.i.i.i36 = phi i64 [ %i.fy, %.lr.ph85.i.i.i.i35 ], [ %.05683.i.i.i.i36.ph, %.lr.ph85.i.i.i.i35.preheader377 ] ; 2 uses
  %.07582.i.i.i.i37 = phi i32 [ %i.fx, %.lr.ph85.i.i.i.i35 ], [ %.07582.i.i.i.i37.ph, %.lr.ph85.i.i.i.i35.preheader377 ]
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %.05683.i.i.i.i36
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !28
  %i.fx = add nsw i32 %i.fw, %.07582.i.i.i.i37    ; 2 uses
  %i.fy = add nuw nsw i64 %.05683.i.i.i.i36, 1    ; 2 uses
  %exitcond.not.i.i.i.i38 = icmp eq i64 %i.fy, %.0.i.i.i.i.i.i.i.i21
  br i1 %exitcond.not.i.i.i.i38, label %.preheader.i.i.i.i27, label %.lr.ph85.i.i.i.i35, !llvm.loop !81

.lr.ph89.i.i.i.i32:                               ; preds = %.lr.ph89.i.i.i.i32.preheader372, %.lr.ph89.i.i.i.i32
  %.05588.i.i.i.i33 = phi i64 [ %i.gc, %.lr.ph89.i.i.i.i32 ], [ %.05588.i.i.i.i33.ph, %.lr.ph89.i.i.i.i32.preheader372 ] ; 2 uses
  %.187.i.i.i.i34 = phi i32 [ %i.gb, %.lr.ph89.i.i.i.i32 ], [ %.187.i.i.i.i34.ph, %.lr.ph89.i.i.i.i32.preheader372 ]
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %.05588.i.i.i.i33
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !28
  %i.gb = add nsw i32 %i.ga, %.187.i.i.i.i34      ; 2 uses
  %i.gc = add nsw i64 %.05588.i.i.i.i33, 1        ; 2 uses
  %i.gd = icmp slt i64 %i.gc, %i.dk
  br i1 %i.gd, label %.lr.ph89.i.i.i.i32, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29, !llvm.loop !82

bb.s:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i20
  %i.ge = load i32, ptr %i.cy, align 4, !tbaa !28 ; 3 uses
  %i.gf = icmp sgt i64 %i.dk, 1
  br i1 %i.gf, label %.lr.ph94.i.i.i.i49.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29

.lr.ph94.i.i.i.i49.preheader:                     ; preds = %bb.s
  %i.gg = add nsw i64 %i.dk, -1                   ; 2 uses
  %min.iters.check253 = icmp ult i64 %i.dk, 9
  br i1 %min.iters.check253, label %.lr.ph94.i.i.i.i49.preheader368, label %vector.ph254

vector.ph254:                                     ; preds = %.lr.ph94.i.i.i.i49.preheader
  %n.vec255 = and i64 %i.gg, -8                   ; 3 uses
  %i.gh = or disjoint i64 %n.vec255, 1
  %i.gi = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.ge, i64 0
  br label %vector.body256

vector.body256:                                   ; preds = %vector.body256, %vector.ph254
  %index257 = phi i64 [ 0, %vector.ph254 ], [ %index.next262, %vector.body256 ] ; 2 uses
  %vec.phi258 = phi <4 x i32> [ %i.gi, %vector.ph254 ], [ %i.gm, %vector.body256 ]
  %vec.phi259 = phi <4 x i32> [ zeroinitializer, %vector.ph254 ], [ %i.gn, %vector.body256 ]
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %index257 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 4
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 20
  %wide.load260 = load <4 x i32>, ptr %i.gk, align 4, !tbaa !28
  %wide.load261 = load <4 x i32>, ptr %i.gl, align 4, !tbaa !28
  %i.gm = add <4 x i32> %wide.load260, %vec.phi258 ; 2 uses
  %i.gn = add <4 x i32> %wide.load261, %vec.phi259 ; 2 uses
  %index.next262 = add nuw i64 %index257, 8       ; 2 uses
  %i.go = icmp eq i64 %index.next262, %n.vec255
  br i1 %i.go, label %middle.block263, label %vector.body256, !llvm.loop !83

middle.block263:                                  ; preds = %vector.body256
  %bin.rdx264 = add <4 x i32> %i.gn, %i.gm
  %i.gp = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx264) ; 2 uses
  %cmp.n265 = icmp eq i64 %i.gg, %n.vec255
  br i1 %cmp.n265, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29, label %.lr.ph94.i.i.i.i49.preheader368

.lr.ph94.i.i.i.i49.preheader368:                  ; preds = %.lr.ph94.i.i.i.i49.preheader, %middle.block263
  %.092.i.i.i.i50.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i49.preheader ], [ %i.gh, %middle.block263 ]
  %.291.i.i.i.i51.ph = phi i32 [ %i.ge, %.lr.ph94.i.i.i.i49.preheader ], [ %i.gp, %middle.block263 ]
  br label %.lr.ph94.i.i.i.i49

.lr.ph94.i.i.i.i49:                               ; preds = %.lr.ph94.i.i.i.i49.preheader368, %.lr.ph94.i.i.i.i49
  %.092.i.i.i.i50 = phi i64 [ %i.gt, %.lr.ph94.i.i.i.i49 ], [ %.092.i.i.i.i50.ph, %.lr.ph94.i.i.i.i49.preheader368 ] ; 2 uses
  %.291.i.i.i.i51 = phi i32 [ %i.gs, %.lr.ph94.i.i.i.i49 ], [ %.291.i.i.i.i51.ph, %.lr.ph94.i.i.i.i49.preheader368 ]
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %.092.i.i.i.i50
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !28
  %i.gs = add nsw i32 %i.gr, %.291.i.i.i.i51      ; 2 uses
  %i.gt = add nuw nsw i64 %.092.i.i.i.i50, 1      ; 2 uses
  %exitcond102.not.i.i.i.i52 = icmp eq i64 %i.gt, %i.dk
  br i1 %exitcond102.not.i.i.i.i52, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29, label %.lr.ph94.i.i.i.i49, !llvm.loop !84

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29: ; preds = %.lr.ph89.i.i.i.i32, %.lr.ph94.i.i.i.i49, %middle.block247, %middle.block263, %bb.s, %.preheader.i.i.i.i27
  %.0.i.i30 = phi i32 [ %i.gs, %.lr.ph94.i.i.i.i49 ], [ %.075.lcssa.i.i.i.i28, %.preheader.i.i.i.i27 ], [ %i.ge, %bb.s ], [ %i.gp, %middle.block263 ], [ %i.fu, %middle.block247 ], [ %i.gb, %.lr.ph89.i.i.i.i32 ]
  %i.gu = sext i32 %.0.i.i30 to i64
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEE8nonZerosEv.exit53

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEE8nonZerosEv.exit53: ; preds = %bb.k, %bb.l, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29
  %.0.i31 = phi i64 [ %i.di, %bb.k ], [ %i.gu, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29 ], [ 0, %bb.l ]
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %.0.i31, i64 noundef 1)
  %i.gv = load ptr, ptr %i.a, align 8, !tbaa !66  ; 13 uses
  %i.gw = icmp eq ptr %i.gv, null
  br i1 %i.gw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEE8nonZerosEv.exit53
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !71 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !72
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.ha
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !28
  %i.hd = load i32, ptr %i.gy, align 4, !tbaa !28
  %i.he = sub nsw i32 %i.hc, %i.hd
  %i.hf = sext i32 %i.he to i64
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEE8nonZerosEv.exit88

bb.u:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEE8nonZerosEv.exit53
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !72 ; 11 uses
  %i.hi = icmp eq i64 %i.hh, 0
  br i1 %i.hi, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEE8nonZerosEv.exit88, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.hj = ptrtoint ptr %i.gv to i64               ; 2 uses
  %i.hk = and i64 %i.hj, 3
  %.not.i.i.i.i.i.i.i.i54 = icmp eq i64 %i.hk, 0
  br i1 %.not.i.i.i.i.i.i.i.i54, label %bb.w, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i55

bb.w:                                             ; preds = %bb.v
  %i.hl = lshr exact i64 %i.hj, 2
  %i.hm = sub nsw i64 0, %i.hl
  %i.hn = and i64 %i.hm, 3
  %i.ho = tail call i64 @llvm.smin.i64(i64 %i.hn, i64 %i.hh)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i55

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i55: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i.i.i56 = phi i64 [ %i.ho, %bb.w ], [ %i.hh, %bb.v ] ; 12 uses
  %i.hp = sub nsw i64 %i.hh, %.0.i.i.i.i.i.i.i.i56 ; 5 uses
  %i.hq = sdiv i64 %i.hp, 8
  %i.hr = shl nsw i64 %i.hq, 3                    ; 2 uses
  %i.hs = sdiv i64 %i.hp, 4                       ; 2 uses
  %i.ht = shl nsw i64 %i.hs, 2                    ; 2 uses
  %i.hu = add nsw i64 %i.hr, %.0.i.i.i.i.i.i.i.i56 ; 2 uses
  %i.hv = add nsw i64 %i.ht, %.0.i.i.i.i.i.i.i.i56 ; 4 uses
  %.off.i.i.i.i57 = add i64 %i.hp, 3
  %.not.i.i.i.i58 = icmp ult i64 %.off.i.i.i.i57, 7
  br i1 %.not.i.i.i.i58, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i55
  %i.hw = getelementptr [4 x i8], ptr %i.gv, i64 %.0.i.i.i.i.i.i.i.i56 ; 2 uses
  %i.hx = load <2 x i64>, ptr %i.hw, align 1, !tbaa !37 ; 2 uses
  %i.hy = icmp sgt i64 %i.hp, 7
  br i1 %i.hy, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.hz = getelementptr i8, ptr %i.hw, i64 16
  %i.ia = load <4 x i32>, ptr %i.hz, align 1, !tbaa !37 ; 2 uses
  %i.ib = bitcast <2 x i64> %i.hx to <4 x i32>    ; 2 uses
  %i.ic = icmp samesign ugt i64 %i.hp, 15
  br i1 %i.ic, label %.lr.ph.preheader.i.i.i.i77, label %._crit_edge.i.i.i.i74

.lr.ph.preheader.i.i.i.i77:                       ; preds = %bb.y
  %.05777.i.i.i.i78 = add nsw i64 %.0.i.i.i.i.i.i.i.i56, 8
  br label %.lr.ph.i.i.i.i79

._crit_edge.i.i.i.i74:                            ; preds = %.lr.ph.i.i.i.i79, %bb.y
  %.lcssa.i.i.i.i75 = phi <4 x i32> [ %i.ia, %bb.y ], [ %i.in, %.lr.ph.i.i.i.i79 ]
  %.sroa.067.0.lcssa.i.i.i.i76 = phi <4 x i32> [ %i.ib, %bb.y ], [ %i.ij, %.lr.ph.i.i.i.i79 ]
  %i.id = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i76, %.lcssa.i.i.i.i75 ; 2 uses
  %i.ie = bitcast <4 x i32> %i.id to <2 x i64>
  %i.if = icmp sgt i64 %i.ht, %i.hr
  br i1 %i.if, label %bb.z, label %bb.aa

.lr.ph.i.i.i.i79:                                 ; preds = %.lr.ph.i.i.i.i79, %.lr.ph.preheader.i.i.i.i77
  %.05780.i.i.i.i80 = phi i64 [ %.057.i.i.i.i83, %.lr.ph.i.i.i.i79 ], [ %.05777.i.i.i.i78, %.lr.ph.preheader.i.i.i.i77 ] ; 3 uses
  %.057.in79.i.i.i.i81 = phi i64 [ %.05780.i.i.i.i80, %.lr.ph.i.i.i.i79 ], [ %.0.i.i.i.i.i.i.i.i56, %.lr.ph.preheader.i.i.i.i77 ]
  %.sroa.067.078.i.i.i.i82 = phi <4 x i32> [ %i.ij, %.lr.ph.i.i.i.i79 ], [ %i.ib, %.lr.ph.preheader.i.i.i.i77 ]
  %i.ig = phi <4 x i32> [ %i.in, %.lr.ph.i.i.i.i79 ], [ %i.ia, %.lr.ph.preheader.i.i.i.i77 ]
  %i.ih = getelementptr inbounds [4 x i8], ptr %i.gv, i64 %.05780.i.i.i.i80
  %i.ii = load <4 x i32>, ptr %i.ih, align 1, !tbaa !37
  %i.ij = add <4 x i32> %i.ii, %.sroa.067.078.i.i.i.i82 ; 2 uses
  %i.ik = getelementptr [4 x i8], ptr %i.gv, i64 %.057.in79.i.i.i.i81
  %i.il = getelementptr i8, ptr %i.ik, i64 48
  %i.im = load <4 x i32>, ptr %i.il, align 1, !tbaa !37
  %i.in = add <4 x i32> %i.im, %i.ig              ; 2 uses
  %.057.i.i.i.i83 = add nsw i64 %.05780.i.i.i.i80, 8 ; 2 uses
  %i.io = icmp slt i64 %.057.i.i.i.i83, %i.hu
  br i1 %i.io, label %.lr.ph.i.i.i.i79, label %._crit_edge.i.i.i.i74, !llvm.loop !38

bb.z:                                             ; preds = %._crit_edge.i.i.i.i74
  %i.ip = getelementptr inbounds [4 x i8], ptr %i.gv, i64 %i.hu
  %i.iq = load <4 x i32>, ptr %i.ip, align 1, !tbaa !37
  %i.ir = add <4 x i32> %i.iq, %i.id
  %i.is = bitcast <4 x i32> %i.ir to <2 x i64>
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge.i.i.i.i74, %bb.x
  %.sroa.067.2.i.i.i.i59 = phi <2 x i64> [ %i.hx, %bb.x ], [ %i.is, %bb.z ], [ %i.ie, %._crit_edge.i.i.i.i74 ] ; 2 uses
  %i.it = bitcast <2 x i64> %.sroa.067.2.i.i.i.i59 to <4 x i32>
  %i.iu = bitcast <2 x i64> %.sroa.067.2.i.i.i.i59 to <4 x i32> ; 2 uses
  %i.iv = shufflevector <4 x i32> %i.iu, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.iw = add <4 x i32> %i.iv, %i.it              ; 2 uses
  %shift350 = shufflevector <4 x i32> %i.iw, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop351 = add nsw <4 x i32> %i.iw, %shift350
  %6 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.iu) ; 2 uses
  %i.ix = icmp sgt i64 %.0.i.i.i.i.i.i.i.i56, 0
  br i1 %i.ix, label %.lr.ph85.i.i.i.i70.preheader, label %.preheader.i.i.i.i62

.lr.ph85.i.i.i.i70.preheader:                     ; preds = %bb.aa
  %min.iters.check269 = icmp ult i64 %.0.i.i.i.i.i.i.i.i56, 8
  br i1 %min.iters.check269, label %.lr.ph85.i.i.i.i70.preheader362, label %vector.ph270

vector.ph270:                                     ; preds = %.lr.ph85.i.i.i.i70.preheader
  %n.vec271 = and i64 %.0.i.i.i.i.i.i.i.i56, 9223372036854775800 ; 3 uses
  %i.iy = shufflevector <4 x i32> %foldExtExtBinop351, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body272

vector.body272:                                   ; preds = %vector.body272, %vector.ph270
  %index273 = phi i64 [ 0, %vector.ph270 ], [ %index.next278, %vector.body272 ] ; 2 uses
  %vec.phi274 = phi <4 x i32> [ %i.iy, %vector.ph270 ], [ %i.jb, %vector.body272 ]
  %vec.phi275 = phi <4 x i32> [ zeroinitializer, %vector.ph270 ], [ %i.jc, %vector.body272 ]
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %index273 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %wide.load276 = load <4 x i32>, ptr %i.iz, align 4, !tbaa !28
  %wide.load277 = load <4 x i32>, ptr %i.ja, align 4, !tbaa !28
  %i.jb = add <4 x i32> %wide.load276, %vec.phi274 ; 2 uses
  %i.jc = add <4 x i32> %wide.load277, %vec.phi275 ; 2 uses
  %index.next278 = add nuw i64 %index273, 8       ; 2 uses
  %i.jd = icmp eq i64 %index.next278, %n.vec271
  br i1 %i.jd, label %middle.block279, label %vector.body272, !llvm.loop !85

middle.block279:                                  ; preds = %vector.body272
  %bin.rdx280 = add <4 x i32> %i.jc, %i.jb
  %i.je = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx280) ; 2 uses
  %cmp.n281 = icmp eq i64 %.0.i.i.i.i.i.i.i.i56, %n.vec271
  br i1 %cmp.n281, label %.preheader.i.i.i.i62, label %.lr.ph85.i.i.i.i70.preheader362

.lr.ph85.i.i.i.i70.preheader362:                  ; preds = %.lr.ph85.i.i.i.i70.preheader, %middle.block279
  %.05683.i.i.i.i71.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i70.preheader ], [ %n.vec271, %middle.block279 ]
  %.07582.i.i.i.i72.ph = phi i32 [ %6, %.lr.ph85.i.i.i.i70.preheader ], [ %i.je, %middle.block279 ]
  br label %.lr.ph85.i.i.i.i70

.preheader.i.i.i.i62:                             ; preds = %.lr.ph85.i.i.i.i70, %middle.block279, %bb.aa
  %.075.lcssa.i.i.i.i63 = phi i32 [ %6, %bb.aa ], [ %i.je, %middle.block279 ], [ %i.ju, %.lr.ph85.i.i.i.i70 ] ; 3 uses
  %i.jf = icmp slt i64 %i.hv, %i.hh
  br i1 %i.jf, label %.lr.ph89.i.i.i.i67.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i64

.lr.ph89.i.i.i.i67.preheader:                     ; preds = %.preheader.i.i.i.i62
  %i.jg = shl nsw i64 %i.hs, 2
  %i.jh = add i64 %.0.i.i.i.i.i.i.i.i56, %i.jg
  %i.ji = sub i64 %i.hh, %i.jh                    ; 3 uses
  %min.iters.check285 = icmp ult i64 %i.ji, 8
  br i1 %min.iters.check285, label %.lr.ph89.i.i.i.i67.preheader357, label %vector.ph286

vector.ph286:                                     ; preds = %.lr.ph89.i.i.i.i67.preheader
  %n.vec287 = and i64 %i.ji, -8                   ; 3 uses
  %i.jj = add i64 %i.hv, %n.vec287
  %i.jk = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i63, i64 0
  %i.jl = getelementptr [4 x i8], ptr %i.gv, i64 %i.hv
  br label %vector.body288

vector.body288:                                   ; preds = %vector.body288, %vector.ph286
  %index289 = phi i64 [ 0, %vector.ph286 ], [ %index.next294, %vector.body288 ] ; 2 uses
  %vec.phi290 = phi <4 x i32> [ %i.jk, %vector.ph286 ], [ %i.jo, %vector.body288 ]
  %vec.phi291 = phi <4 x i32> [ zeroinitializer, %vector.ph286 ], [ %i.jp, %vector.body288 ]
  %i.jm = getelementptr [4 x i8], ptr %i.jl, i64 %index289 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  %wide.load292 = load <4 x i32>, ptr %i.jm, align 4, !tbaa !28
  %wide.load293 = load <4 x i32>, ptr %i.jn, align 4, !tbaa !28
  %i.jo = add <4 x i32> %wide.load292, %vec.phi290 ; 2 uses
  %i.jp = add <4 x i32> %wide.load293, %vec.phi291 ; 2 uses
  %index.next294 = add nuw i64 %index289, 8       ; 2 uses
  %i.jq = icmp eq i64 %index.next294, %n.vec287
  br i1 %i.jq, label %middle.block295, label %vector.body288, !llvm.loop !86

middle.block295:                                  ; preds = %vector.body288
  %bin.rdx296 = add <4 x i32> %i.jp, %i.jo
  %i.jr = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx296) ; 2 uses
  %cmp.n297 = icmp eq i64 %i.ji, %n.vec287
  br i1 %cmp.n297, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i64, label %.lr.ph89.i.i.i.i67.preheader357

.lr.ph89.i.i.i.i67.preheader357:                  ; preds = %.lr.ph89.i.i.i.i67.preheader, %middle.block295
  %.05588.i.i.i.i68.ph = phi i64 [ %i.hv, %.lr.ph89.i.i.i.i67.preheader ], [ %i.jj, %middle.block295 ]
  %.187.i.i.i.i69.ph = phi i32 [ %.075.lcssa.i.i.i.i63, %.lr.ph89.i.i.i.i67.preheader ], [ %i.jr, %middle.block295 ]
  br label %.lr.ph89.i.i.i.i67

.lr.ph85.i.i.i.i70:                               ; preds = %.lr.ph85.i.i.i.i70.preheader362, %.lr.ph85.i.i.i.i70
  %.05683.i.i.i.i71 = phi i64 [ %i.jv, %.lr.ph85.i.i.i.i70 ], [ %.05683.i.i.i.i71.ph, %.lr.ph85.i.i.i.i70.preheader362 ] ; 2 uses
  %.07582.i.i.i.i72 = phi i32 [ %i.ju, %.lr.ph85.i.i.i.i70 ], [ %.07582.i.i.i.i72.ph, %.lr.ph85.i.i.i.i70.preheader362 ]
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %.05683.i.i.i.i71
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !28
  %i.ju = add nsw i32 %i.jt, %.07582.i.i.i.i72    ; 2 uses
  %i.jv = add nuw nsw i64 %.05683.i.i.i.i71, 1    ; 2 uses
  %exitcond.not.i.i.i.i73 = icmp eq i64 %i.jv, %.0.i.i.i.i.i.i.i.i56
  br i1 %exitcond.not.i.i.i.i73, label %.preheader.i.i.i.i62, label %.lr.ph85.i.i.i.i70, !llvm.loop !87

.lr.ph89.i.i.i.i67:                               ; preds = %.lr.ph89.i.i.i.i67.preheader357, %.lr.ph89.i.i.i.i67
  %.05588.i.i.i.i68 = phi i64 [ %i.jz, %.lr.ph89.i.i.i.i67 ], [ %.05588.i.i.i.i68.ph, %.lr.ph89.i.i.i.i67.preheader357 ] ; 2 uses
  %.187.i.i.i.i69 = phi i32 [ %i.jy, %.lr.ph89.i.i.i.i67 ], [ %.187.i.i.i.i69.ph, %.lr.ph89.i.i.i.i67.preheader357 ]
  %i.jw = getelementptr inbounds [4 x i8], ptr %i.gv, i64 %.05588.i.i.i.i68
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !28
  %i.jy = add nsw i32 %i.jx, %.187.i.i.i.i69      ; 2 uses
  %i.jz = add nsw i64 %.05588.i.i.i.i68, 1        ; 2 uses
  %i.ka = icmp slt i64 %i.jz, %i.hh
  br i1 %i.ka, label %.lr.ph89.i.i.i.i67, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i64, !llvm.loop !88

bb.ab:                                            ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i55
  %i.kb = load i32, ptr %i.gv, align 4, !tbaa !28 ; 3 uses
  %i.kc = icmp sgt i64 %i.hh, 1
  br i1 %i.kc, label %.lr.ph94.i.i.i.i84.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i64

.lr.ph94.i.i.i.i84.preheader:                     ; preds = %bb.ab
  %i.kd = add nsw i64 %i.hh, -1                   ; 2 uses
  %min.iters.check301 = icmp ult i64 %i.hh, 9
  br i1 %min.iters.check301, label %.lr.ph94.i.i.i.i84.preheader354, label %vector.ph302

vector.ph302:                                     ; preds = %.lr.ph94.i.i.i.i84.preheader
  %n.vec303 = and i64 %i.kd, -8                   ; 3 uses
  %i.ke = or disjoint i64 %n.vec303, 1
  %i.kf = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.kb, i64 0
  br label %vector.body304

vector.body304:                                   ; preds = %vector.body304, %vector.ph302
  %index305 = phi i64 [ 0, %vector.ph302 ], [ %index.next310, %vector.body304 ] ; 2 uses
  %vec.phi306 = phi <4 x i32> [ %i.kf, %vector.ph302 ], [ %i.kj, %vector.body304 ]
  %vec.phi307 = phi <4 x i32> [ zeroinitializer, %vector.ph302 ], [ %i.kk, %vector.body304 ]
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %index305 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 4
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 20
  %wide.load308 = load <4 x i32>, ptr %i.kh, align 4, !tbaa !28
  %wide.load309 = load <4 x i32>, ptr %i.ki, align 4, !tbaa !28
  %i.kj = add <4 x i32> %wide.load308, %vec.phi306 ; 2 uses
  %i.kk = add <4 x i32> %wide.load309, %vec.phi307 ; 2 uses
  %index.next310 = add nuw i64 %index305, 8       ; 2 uses
  %i.kl = icmp eq i64 %index.next310, %n.vec303
  br i1 %i.kl, label %middle.block311, label %vector.body304, !llvm.loop !89

middle.block311:                                  ; preds = %vector.body304
  %bin.rdx312 = add <4 x i32> %i.kk, %i.kj
  %i.km = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx312) ; 2 uses
  %cmp.n313 = icmp eq i64 %i.kd, %n.vec303
  br i1 %cmp.n313, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i64, label %.lr.ph94.i.i.i.i84.preheader354

.lr.ph94.i.i.i.i84.preheader354:                  ; preds = %.lr.ph94.i.i.i.i84.preheader, %middle.block311
  %.092.i.i.i.i85.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i84.preheader ], [ %i.ke, %middle.block311 ]
  %.291.i.i.i.i86.ph = phi i32 [ %i.kb, %.lr.ph94.i.i.i.i84.preheader ], [ %i.km, %middle.block311 ]
  br label %.lr.ph94.i.i.i.i84

.lr.ph94.i.i.i.i84:                               ; preds = %.lr.ph94.i.i.i.i84.preheader354, %.lr.ph94.i.i.i.i84
  %.092.i.i.i.i85 = phi i64 [ %i.kq, %.lr.ph94.i.i.i.i84 ], [ %.092.i.i.i.i85.ph, %.lr.ph94.i.i.i.i84.preheader354 ] ; 2 uses
  %.291.i.i.i.i86 = phi i32 [ %i.kp, %.lr.ph94.i.i.i.i84 ], [ %.291.i.i.i.i86.ph, %.lr.ph94.i.i.i.i84.preheader354 ]
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %.092.i.i.i.i85
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !28
  %i.kp = add nsw i32 %i.ko, %.291.i.i.i.i86      ; 2 uses
  %i.kq = add nuw nsw i64 %.092.i.i.i.i85, 1      ; 2 uses
  %exitcond102.not.i.i.i.i87 = icmp eq i64 %i.kq, %i.hh
  br i1 %exitcond102.not.i.i.i.i87, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i64, label %.lr.ph94.i.i.i.i84, !llvm.loop !90

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i64: ; preds = %.lr.ph89.i.i.i.i67, %.lr.ph94.i.i.i.i84, %middle.block295, %middle.block311, %bb.ab, %.preheader.i.i.i.i62
  %.0.i.i65 = phi i32 [ %i.kp, %.lr.ph94.i.i.i.i84 ], [ %.075.lcssa.i.i.i.i63, %.preheader.i.i.i.i62 ], [ %i.kb, %bb.ab ], [ %i.km, %middle.block311 ], [ %i.jr, %middle.block295 ], [ %i.jy, %.lr.ph89.i.i.i.i67 ]
  %i.kr = sext i32 %.0.i.i65 to i64
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEE8nonZerosEv.exit88

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEE8nonZerosEv.exit88: ; preds = %bb.t, %bb.u, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i64
  %.0.i66 = phi i64 [ %i.hf, %bb.t ], [ %i.kr, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i64 ], [ 0, %bb.u ]
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %.0.i66, i64 noundef 1)
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.kt = load i64, ptr %i.ks, align 8, !tbaa !72 ; 2 uses
  %i.ku = icmp sgt i64 %i.kt, 0
  br i1 %i.ku, label %.lr.ph113, label %._crit_edge114

.lr.ph113:                                        ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEE8nonZerosEv.exit88
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !91 ; 5 uses
  %i.kx = ptrtoaddr ptr %i.kw to i64              ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !92 ; 5 uses
  %i.la = ptrtoaddr ptr %i.kz to i64              ; 3 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !71
  %i.ld = load ptr, ptr %i.a, align 8, !tbaa !66  ; 2 uses
  %i.le = icmp eq ptr %i.ld, null
  br label %bb.ac

._crit_edge114:                                   ; preds = %._crit_edge, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEE8nonZerosEv.exit88
  ret void

bb.ac:                                            ; preds = %.lr.ph113, %._crit_edge
  %indvars.iv134 = phi i64 [ 0, %.lr.ph113 ], [ %indvars.iv.next135, %._crit_edge ] ; 4 uses
  %.017111 = phi i32 [ 0, %.lr.ph113 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %indvars.iv134 ; 2 uses
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !28
  %i.lh = sext i32 %i.lg to i64                   ; 8 uses
  br i1 %i.le, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.li = getelementptr i8, ptr %i.lf, i64 4
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !28
  %i.lk = sext i32 %i.lj to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEE13InnerIteratorC2ERKS3_l.exit

bb.ae:                                            ; preds = %bb.ac
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %indvars.iv134
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !28
  %i.ln = sext i32 %i.lm to i64
end_hunk_1
begin_hunk_2_@_ZN3igl4findIiN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES3_S3_EEvRKNS1_12SparseMatrixIT_Li0EiEERNS1_9DenseBaseIT0_EERNS9_IT1_EERNS9_IT2_EE:bb.a
  br i1 %exitcond137.not, label %._crit_edge114, label %bb.ac, !llvm.loop !96

scalar.ph331:                                     ; preds = %scalar.ph331.prol.loopexit, %scalar.ph331
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph331 ], [ %indvars.iv.unr, %scalar.ph331.prol.loopexit ] ; 5 uses
  %.sroa.8.0109 = phi i64 [ %i.ol, %scalar.ph331 ], [ %.sroa.8.0109.unr, %scalar.ph331.prol.loopexit ] ; 4 uses
  %i.nw = getelementptr inbounds [4 x i8], ptr %i.kw, i64 %.sroa.8.0109
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !28
  %i.ny = getelementptr inbounds [4 x i8], ptr %i.lq, i64 %indvars.iv
  store i32 %i.nx, ptr %i.ny, align 4, !tbaa !28
  %i.nz = getelementptr inbounds [4 x i8], ptr %i.kz, i64 %.sroa.8.0109
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !28
  %i.ob = getelementptr inbounds [4 x i8], ptr %i.lr, i64 %indvars.iv
  store i32 %i.oa, ptr %i.ob, align 4, !tbaa !28
  %i.oc = getelementptr inbounds [4 x i8], ptr %i.ls, i64 %indvars.iv
  store i32 %i.lu, ptr %i.oc, align 4, !tbaa !28
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.od = add nsw i64 %.sroa.8.0109, 1            ; 2 uses
  %i.oe = getelementptr inbounds [4 x i8], ptr %i.kw, i64 %i.od
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !28
  %i.og = getelementptr inbounds [4 x i8], ptr %i.lq, i64 %indvars.iv.next
  store i32 %i.of, ptr %i.og, align 4, !tbaa !28
  %i.oh = getelementptr inbounds [4 x i8], ptr %i.kz, i64 %i.od
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !28
  %i.oj = getelementptr inbounds [4 x i8], ptr %i.lr, i64 %indvars.iv.next
  store i32 %i.oi, ptr %i.oj, align 4, !tbaa !28
  %i.ok = getelementptr inbounds [4 x i8], ptr %i.ls, i64 %indvars.iv.next
  store i32 %i.lu, ptr %i.ok, align 4, !tbaa !28
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ol = add nsw i64 %.sroa.8.0109, 2            ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ol, %.sink.i
  br i1 %exitcond.not.1, label %._crit_edge.loopexit, label %scalar.ph331, !llvm.loop !97
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sdiv i64 9223372036854775807, %2
  %i.d = icmp sgt i64 %1, %i.c
  br i1 %i.d, label %bb.c, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #17 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !47
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #14
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !98
  %.not.i = icmp eq i64 %i.f, %i.h
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.i = load ptr, ptr %0, align 8, !tbaa !93
  tail call void @free(ptr noundef %i.i) #17
  %i.j = icmp sgt i64 %i.f, 0
  br i1 %i.j, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i64 %i.f, 4611686018427387903
  br i1 %i.k, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #17 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !47
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #14
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %bb.e
  %i.m = shl nuw i64 %i.f, 2
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #18 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #17 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !47
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #14
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.n, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !93
  br label %_ZN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %1, ptr %i.g, align 8, !tbaa !98
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl4findIbN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES3_NS1_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_12SparseMatrixIT_Li0EiEERNS1_9DenseBaseIT0_EERNSB_IT1_EERNSB_IT2_EE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 13 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !36
  %i.h = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !28
  %i.j = load i32, ptr %i.e, align 4, !tbaa !28
  %i.k = sub nsw i32 %i.i, %i.j
  %i.l = sext i32 %i.k to i64
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEE8nonZerosEv.exit

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !36   ; 11 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEE8nonZerosEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.q = and i64 %i.p, 3
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.e, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.r = lshr exact i64 %i.p, 2
  %i.s = sub nsw i64 0, %i.r
  %i.t = and i64 %i.s, 3
  %i.u = tail call i64 @llvm.smin.i64(i64 %i.t, i64 %i.n)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i.i.i.i.i.i = phi i64 [ %i.u, %bb.e ], [ %i.n, %bb.d ] ; 12 uses
  %i.v = sub nsw i64 %i.n, %.0.i.i.i.i.i.i.i.i    ; 5 uses
  %i.w = sdiv i64 %i.v, 8
  %i.x = shl nsw i64 %i.w, 3                      ; 2 uses
  %i.y = sdiv i64 %i.v, 4                         ; 2 uses
  %i.z = shl nsw i64 %i.y, 2                      ; 2 uses
  %i.aa = add nsw i64 %i.x, %.0.i.i.i.i.i.i.i.i   ; 2 uses
  %i.ab = add nsw i64 %i.z, %.0.i.i.i.i.i.i.i.i   ; 4 uses
  %.off.i.i.i.i = add i64 %i.v, 3
  %.not.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 7
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.ac = getelementptr [4 x i8], ptr %i.b, i64 %.0.i.i.i.i.i.i.i.i ; 2 uses
  %i.ad = load <2 x i64>, ptr %i.ac, align 1, !tbaa !37 ; 2 uses
  %i.ae = icmp sgt i64 %i.v, 7
  br i1 %i.ae, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr i8, ptr %i.ac, i64 16
  %i.ag = load <4 x i32>, ptr %i.af, align 1, !tbaa !37 ; 2 uses
  %i.ah = bitcast <2 x i64> %i.ad to <4 x i32>    ; 2 uses
  %i.ai = icmp samesign ugt i64 %i.v, 15
  br i1 %i.ai, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.g
  %.05777.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i, 8
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.g
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.ag, %bb.g ], [ %i.at, %.lr.ph.i.i.i.i ]
  %.sroa.067.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.ah, %bb.g ], [ %i.ap, %.lr.ph.i.i.i.i ]
  %i.aj = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i, %.lcssa.i.i.i.i ; 2 uses
  %i.ak = bitcast <4 x i32> %i.aj to <2 x i64>
  %i.al = icmp sgt i64 %i.z, %i.x
  br i1 %i.al, label %bb.h, label %bb.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.05780.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.05777.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.057.in79.i.i.i.i = phi i64 [ %.05780.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i ]
  %.sroa.067.078.i.i.i.i = phi <4 x i32> [ %i.ap, %.lr.ph.i.i.i.i ], [ %i.ah, %.lr.ph.preheader.i.i.i.i ]
  %i.am = phi <4 x i32> [ %i.at, %.lr.ph.i.i.i.i ], [ %i.ag, %.lr.ph.preheader.i.i.i.i ]
  %i.an = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.05780.i.i.i.i
  %i.ao = load <4 x i32>, ptr %i.an, align 1, !tbaa !37
  %i.ap = add <4 x i32> %i.ao, %.sroa.067.078.i.i.i.i ; 2 uses
  %i.aq = getelementptr [4 x i8], ptr %i.b, i64 %.057.in79.i.i.i.i
  %i.ar = getelementptr i8, ptr %i.aq, i64 48
  %i.as = load <4 x i32>, ptr %i.ar, align 1, !tbaa !37
  %i.at = add <4 x i32> %i.as, %i.am              ; 2 uses
  %.057.i.i.i.i = add nsw i64 %.05780.i.i.i.i, 8  ; 2 uses
  %i.au = icmp slt i64 %.057.i.i.i.i, %i.aa
  br i1 %i.au, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !38

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.av = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.aa
  %i.aw = load <4 x i32>, ptr %i.av, align 1, !tbaa !37
  %i.ax = add <4 x i32> %i.aw, %i.aj
  %i.ay = bitcast <4 x i32> %i.ax to <2 x i64>
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i, %bb.f
  %.sroa.067.2.i.i.i.i = phi <2 x i64> [ %i.ad, %bb.f ], [ %i.ay, %bb.h ], [ %i.ak, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.az = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32>
  %i.ba = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32> ; 2 uses
  %i.bb = shufflevector <4 x i32> %i.ba, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.bc = add <4 x i32> %i.bb, %i.az              ; 2 uses
  %shift = shufflevector <4 x i32> %i.bc, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = add nsw <4 x i32> %i.bc, %shift
  %4 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ba) ; 2 uses
  %i.bd = icmp sgt i64 %.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.bd, label %.lr.ph85.i.i.i.i.preheader, label %.preheader.i.i.i.i

.lr.ph85.i.i.i.i.preheader:                       ; preds = %bb.i
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph85.i.i.i.i.preheader385, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph85.i.i.i.i.preheader
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %i.be = shufflevector <4 x i32> %foldExtExtBinop, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.be, %vector.ph ], [ %i.bh, %vector.body ]
  %vec.phi189 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bi, %vector.body ]
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load = load <4 x i32>, ptr %i.bf, align 4, !tbaa !28
  %wide.load190 = load <4 x i32>, ptr %i.bg, align 4, !tbaa !28
  %i.bh = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.bi = add <4 x i32> %wide.load190, %vec.phi189 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !99

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bi, %i.bh
  %i.bk = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i.preheader385

.lr.ph85.i.i.i.i.preheader385:                    ; preds = %.lr.ph85.i.i.i.i.preheader, %middle.block
  %.05683.i.i.i.i.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.07582.i.i.i.i.ph = phi i32 [ %4, %.lr.ph85.i.i.i.i.preheader ], [ %i.bk, %middle.block ]
  br label %.lr.ph85.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i, %middle.block, %bb.i
  %.075.lcssa.i.i.i.i = phi i32 [ %4, %bb.i ], [ %i.bk, %middle.block ], [ %i.ca, %.lr.ph85.i.i.i.i ] ; 3 uses
  %i.bl = icmp slt i64 %i.ab, %i.n
  br i1 %i.bl, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i

.lr.ph89.i.i.i.i.preheader:                       ; preds = %.preheader.i.i.i.i
  %i.bm = shl nsw i64 %i.y, 2
  %i.bn = add i64 %.0.i.i.i.i.i.i.i.i, %i.bm
  %i.bo = sub i64 %i.n, %i.bn                     ; 3 uses
  %min.iters.check192 = icmp ult i64 %i.bo, 8
  br i1 %min.iters.check192, label %.lr.ph89.i.i.i.i.preheader380, label %vector.ph193

vector.ph193:                                     ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec194 = and i64 %i.bo, -8                   ; 3 uses
  %i.bp = add i64 %i.ab, %n.vec194
  %i.bq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i, i64 0
  %i.br = getelementptr [4 x i8], ptr %i.b, i64 %i.ab
  br label %vector.body195

vector.body195:                                   ; preds = %vector.body195, %vector.ph193
  %index196 = phi i64 [ 0, %vector.ph193 ], [ %index.next201, %vector.body195 ] ; 2 uses
  %vec.phi197 = phi <4 x i32> [ %i.bq, %vector.ph193 ], [ %i.bu, %vector.body195 ]
  %vec.phi198 = phi <4 x i32> [ zeroinitializer, %vector.ph193 ], [ %i.bv, %vector.body195 ]
  %i.bs = getelementptr [4 x i8], ptr %i.br, i64 %index196 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %wide.load199 = load <4 x i32>, ptr %i.bs, align 4, !tbaa !28
  %wide.load200 = load <4 x i32>, ptr %i.bt, align 4, !tbaa !28
  %i.bu = add <4 x i32> %wide.load199, %vec.phi197 ; 2 uses
  %i.bv = add <4 x i32> %wide.load200, %vec.phi198 ; 2 uses
  %index.next201 = add nuw i64 %index196, 8       ; 2 uses
  %i.bw = icmp eq i64 %index.next201, %n.vec194
  br i1 %i.bw, label %middle.block202, label %vector.body195, !llvm.loop !100

middle.block202:                                  ; preds = %vector.body195
  %bin.rdx203 = add <4 x i32> %i.bv, %i.bu
  %i.bx = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx203) ; 2 uses
  %cmp.n204 = icmp eq i64 %i.bo, %n.vec194
  br i1 %cmp.n204, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, label %.lr.ph89.i.i.i.i.preheader380

.lr.ph89.i.i.i.i.preheader380:                    ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block202
  %.05588.i.i.i.i.ph = phi i64 [ %i.ab, %.lr.ph89.i.i.i.i.preheader ], [ %i.bp, %middle.block202 ]
  %.187.i.i.i.i.ph = phi i32 [ %.075.lcssa.i.i.i.i, %.lr.ph89.i.i.i.i.preheader ], [ %i.bx, %middle.block202 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph85.i.i.i.i:                                 ; preds = %.lr.ph85.i.i.i.i.preheader385, %.lr.ph85.i.i.i.i
  %.05683.i.i.i.i = phi i64 [ %i.cb, %.lr.ph85.i.i.i.i ], [ %.05683.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader385 ] ; 2 uses
  %.07582.i.i.i.i = phi i32 [ %i.ca, %.lr.ph85.i.i.i.i ], [ %.07582.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader385 ]
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.05683.i.i.i.i
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !28
  %i.ca = add nsw i32 %i.bz, %.07582.i.i.i.i      ; 2 uses
  %i.cb = add nuw nsw i64 %.05683.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.cb, %.0.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i, !llvm.loop !101

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader380, %.lr.ph89.i.i.i.i
  %.05588.i.i.i.i = phi i64 [ %i.cf, %.lr.ph89.i.i.i.i ], [ %.05588.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader380 ] ; 2 uses
  %.187.i.i.i.i = phi i32 [ %i.ce, %.lr.ph89.i.i.i.i ], [ %.187.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader380 ]
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.05588.i.i.i.i
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !28
  %i.ce = add nsw i32 %i.cd, %.187.i.i.i.i        ; 2 uses
  %i.cf = add nsw i64 %.05588.i.i.i.i, 1          ; 2 uses
  %i.cg = icmp slt i64 %i.cf, %i.n
  br i1 %i.cg, label %.lr.ph89.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, !llvm.loop !102

bb.j:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.ch = load i32, ptr %i.b, align 4, !tbaa !28  ; 3 uses
  %i.ci = icmp sgt i64 %i.n, 1
  br i1 %i.ci, label %.lr.ph94.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i

.lr.ph94.i.i.i.i.preheader:                       ; preds = %bb.j
  %i.cj = add nsw i64 %i.n, -1                    ; 2 uses
  %min.iters.check208 = icmp ult i64 %i.n, 9
  br i1 %min.iters.check208, label %.lr.ph94.i.i.i.i.preheader376, label %vector.ph209

vector.ph209:                                     ; preds = %.lr.ph94.i.i.i.i.preheader
  %n.vec210 = and i64 %i.cj, -8                   ; 3 uses
  %i.ck = or disjoint i64 %n.vec210, 1
  %i.cl = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.ch, i64 0
  br label %vector.body211

vector.body211:                                   ; preds = %vector.body211, %vector.ph209
  %index212 = phi i64 [ 0, %vector.ph209 ], [ %index.next217, %vector.body211 ] ; 2 uses
  %vec.phi213 = phi <4 x i32> [ %i.cl, %vector.ph209 ], [ %i.cp, %vector.body211 ]
  %vec.phi214 = phi <4 x i32> [ zeroinitializer, %vector.ph209 ], [ %i.cq, %vector.body211 ]
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index212 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 20
  %wide.load215 = load <4 x i32>, ptr %i.cn, align 4, !tbaa !28
  %wide.load216 = load <4 x i32>, ptr %i.co, align 4, !tbaa !28
  %i.cp = add <4 x i32> %wide.load215, %vec.phi213 ; 2 uses
  %i.cq = add <4 x i32> %wide.load216, %vec.phi214 ; 2 uses
  %index.next217 = add nuw i64 %index212, 8       ; 2 uses
  %i.cr = icmp eq i64 %index.next217, %n.vec210
  br i1 %i.cr, label %middle.block218, label %vector.body211, !llvm.loop !103

middle.block218:                                  ; preds = %vector.body211
  %bin.rdx219 = add <4 x i32> %i.cq, %i.cp
  %i.cs = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx219) ; 2 uses
  %cmp.n220 = icmp eq i64 %i.cj, %n.vec210
  br i1 %cmp.n220, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, label %.lr.ph94.i.i.i.i.preheader376

.lr.ph94.i.i.i.i.preheader376:                    ; preds = %.lr.ph94.i.i.i.i.preheader, %middle.block218
  %.092.i.i.i.i.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.preheader ], [ %i.ck, %middle.block218 ]
  %.291.i.i.i.i.ph = phi i32 [ %i.ch, %.lr.ph94.i.i.i.i.preheader ], [ %i.cs, %middle.block218 ]
  br label %.lr.ph94.i.i.i.i

.lr.ph94.i.i.i.i:                                 ; preds = %.lr.ph94.i.i.i.i.preheader376, %.lr.ph94.i.i.i.i
  %.092.i.i.i.i = phi i64 [ %i.cw, %.lr.ph94.i.i.i.i ], [ %.092.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader376 ] ; 2 uses
  %.291.i.i.i.i = phi i32 [ %i.cv, %.lr.ph94.i.i.i.i ], [ %.291.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader376 ]
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.092.i.i.i.i
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !28
  %i.cv = add nsw i32 %i.cu, %.291.i.i.i.i        ; 2 uses
  %i.cw = add nuw nsw i64 %.092.i.i.i.i, 1        ; 2 uses
  %exitcond102.not.i.i.i.i = icmp eq i64 %i.cw, %i.n
  br i1 %exitcond102.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, label %.lr.ph94.i.i.i.i, !llvm.loop !104

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i: ; preds = %.lr.ph89.i.i.i.i, %.lr.ph94.i.i.i.i, %middle.block202, %middle.block218, %bb.j, %.preheader.i.i.i.i
  %.0.i.i = phi i32 [ %i.cv, %.lr.ph94.i.i.i.i ], [ %.075.lcssa.i.i.i.i, %.preheader.i.i.i.i ], [ %i.ch, %bb.j ], [ %i.cs, %middle.block218 ], [ %i.bx, %middle.block202 ], [ %i.ce, %.lr.ph89.i.i.i.i ]
  %i.cx = sext i32 %.0.i.i to i64
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEE8nonZerosEv.exit

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEE8nonZerosEv.exit: ; preds = %bb.b, %bb.c, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i
  %.0.i = phi i64 [ %i.l, %bb.b ], [ %i.cx, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i ], [ 0, %bb.c ]
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %.0.i, i64 noundef 1)
  %i.cy = load ptr, ptr %i.a, align 8, !tbaa !30  ; 13 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEE8nonZerosEv.exit
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !35 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !36
  %i.de = getelementptr inbounds [4 x i8], ptr %i.db, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !28
  %i.dg = load i32, ptr %i.db, align 4, !tbaa !28
  %i.dh = sub nsw i32 %i.df, %i.dg
  %i.di = sext i32 %i.dh to i64
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEE8nonZerosEv.exit53

bb.l:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEE8nonZerosEv.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !36 ; 11 uses
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEE8nonZerosEv.exit53, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dm = ptrtoint ptr %i.cy to i64               ; 2 uses
  %i.dn = and i64 %i.dm, 3
  %.not.i.i.i.i.i.i.i.i19 = icmp eq i64 %i.dn, 0
  br i1 %.not.i.i.i.i.i.i.i.i19, label %bb.n, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i20

bb.n:                                             ; preds = %bb.m
  %i.do = lshr exact i64 %i.dm, 2
  %i.dp = sub nsw i64 0, %i.do
  %i.dq = and i64 %i.dp, 3
  %i.dr = tail call i64 @llvm.smin.i64(i64 %i.dq, i64 %i.dk)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i20

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i20: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i21 = phi i64 [ %i.dr, %bb.n ], [ %i.dk, %bb.m ] ; 12 uses
  %i.ds = sub nsw i64 %i.dk, %.0.i.i.i.i.i.i.i.i21 ; 5 uses
  %i.dt = sdiv i64 %i.ds, 8
  %i.du = shl nsw i64 %i.dt, 3                    ; 2 uses
  %i.dv = sdiv i64 %i.ds, 4                       ; 2 uses
  %i.dw = shl nsw i64 %i.dv, 2                    ; 2 uses
  %i.dx = add nsw i64 %i.du, %.0.i.i.i.i.i.i.i.i21 ; 2 uses
  %i.dy = add nsw i64 %i.dw, %.0.i.i.i.i.i.i.i.i21 ; 4 uses
  %.off.i.i.i.i22 = add i64 %i.ds, 3
  %.not.i.i.i.i23 = icmp ult i64 %.off.i.i.i.i22, 7
  br i1 %.not.i.i.i.i23, label %bb.s, label %bb.o

bb.o:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i20
  %i.dz = getelementptr [4 x i8], ptr %i.cy, i64 %.0.i.i.i.i.i.i.i.i21 ; 2 uses
  %i.ea = load <2 x i64>, ptr %i.dz, align 1, !tbaa !37 ; 2 uses
  %i.eb = icmp sgt i64 %i.ds, 7
  br i1 %i.eb, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ec = getelementptr i8, ptr %i.dz, i64 16
  %i.ed = load <4 x i32>, ptr %i.ec, align 1, !tbaa !37 ; 2 uses
  %i.ee = bitcast <2 x i64> %i.ea to <4 x i32>    ; 2 uses
  %i.ef = icmp samesign ugt i64 %i.ds, 15
  br i1 %i.ef, label %.lr.ph.preheader.i.i.i.i42, label %._crit_edge.i.i.i.i39

.lr.ph.preheader.i.i.i.i42:                       ; preds = %bb.p
  %.05777.i.i.i.i43 = add nsw i64 %.0.i.i.i.i.i.i.i.i21, 8
  br label %.lr.ph.i.i.i.i44

._crit_edge.i.i.i.i39:                            ; preds = %.lr.ph.i.i.i.i44, %bb.p
  %.lcssa.i.i.i.i40 = phi <4 x i32> [ %i.ed, %bb.p ], [ %i.eq, %.lr.ph.i.i.i.i44 ]
  %.sroa.067.0.lcssa.i.i.i.i41 = phi <4 x i32> [ %i.ee, %bb.p ], [ %i.em, %.lr.ph.i.i.i.i44 ]
  %i.eg = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i41, %.lcssa.i.i.i.i40 ; 2 uses
  %i.eh = bitcast <4 x i32> %i.eg to <2 x i64>
  %i.ei = icmp sgt i64 %i.dw, %i.du
  br i1 %i.ei, label %bb.q, label %bb.r

.lr.ph.i.i.i.i44:                                 ; preds = %.lr.ph.i.i.i.i44, %.lr.ph.preheader.i.i.i.i42
  %.05780.i.i.i.i45 = phi i64 [ %.057.i.i.i.i48, %.lr.ph.i.i.i.i44 ], [ %.05777.i.i.i.i43, %.lr.ph.preheader.i.i.i.i42 ] ; 3 uses
  %.057.in79.i.i.i.i46 = phi i64 [ %.05780.i.i.i.i45, %.lr.ph.i.i.i.i44 ], [ %.0.i.i.i.i.i.i.i.i21, %.lr.ph.preheader.i.i.i.i42 ]
  %.sroa.067.078.i.i.i.i47 = phi <4 x i32> [ %i.em, %.lr.ph.i.i.i.i44 ], [ %i.ee, %.lr.ph.preheader.i.i.i.i42 ]
  %i.ej = phi <4 x i32> [ %i.eq, %.lr.ph.i.i.i.i44 ], [ %i.ed, %.lr.ph.preheader.i.i.i.i42 ]
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %.05780.i.i.i.i45
  %i.el = load <4 x i32>, ptr %i.ek, align 1, !tbaa !37
  %i.em = add <4 x i32> %i.el, %.sroa.067.078.i.i.i.i47 ; 2 uses
  %i.en = getelementptr [4 x i8], ptr %i.cy, i64 %.057.in79.i.i.i.i46
  %i.eo = getelementptr i8, ptr %i.en, i64 48
  %i.ep = load <4 x i32>, ptr %i.eo, align 1, !tbaa !37
  %i.eq = add <4 x i32> %i.ep, %i.ej              ; 2 uses
  %.057.i.i.i.i48 = add nsw i64 %.05780.i.i.i.i45, 8 ; 2 uses
  %i.er = icmp slt i64 %.057.i.i.i.i48, %i.dx
  br i1 %i.er, label %.lr.ph.i.i.i.i44, label %._crit_edge.i.i.i.i39, !llvm.loop !38

bb.q:                                             ; preds = %._crit_edge.i.i.i.i39
  %i.es = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %i.dx
  %i.et = load <4 x i32>, ptr %i.es, align 1, !tbaa !37
  %i.eu = add <4 x i32> %i.et, %i.eg
  %i.ev = bitcast <4 x i32> %i.eu to <2 x i64>
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge.i.i.i.i39, %bb.o
  %.sroa.067.2.i.i.i.i24 = phi <2 x i64> [ %i.ea, %bb.o ], [ %i.ev, %bb.q ], [ %i.eh, %._crit_edge.i.i.i.i39 ] ; 2 uses
  %i.ew = bitcast <2 x i64> %.sroa.067.2.i.i.i.i24 to <4 x i32>
  %i.ex = bitcast <2 x i64> %.sroa.067.2.i.i.i.i24 to <4 x i32> ; 2 uses
  %i.ey = shufflevector <4 x i32> %i.ex, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.ez = add <4 x i32> %i.ey, %i.ew              ; 2 uses
  %shift340 = shufflevector <4 x i32> %i.ez, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop341 = add nsw <4 x i32> %i.ez, %shift340
  %5 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ex) ; 2 uses
  %i.fa = icmp sgt i64 %.0.i.i.i.i.i.i.i.i21, 0
  br i1 %i.fa, label %.lr.ph85.i.i.i.i35.preheader, label %.preheader.i.i.i.i27

.lr.ph85.i.i.i.i35.preheader:                     ; preds = %bb.r
  %min.iters.check224 = icmp ult i64 %.0.i.i.i.i.i.i.i.i21, 8
  br i1 %min.iters.check224, label %.lr.ph85.i.i.i.i35.preheader370, label %vector.ph225

vector.ph225:                                     ; preds = %.lr.ph85.i.i.i.i35.preheader
  %n.vec226 = and i64 %.0.i.i.i.i.i.i.i.i21, 9223372036854775800 ; 3 uses
  %i.fb = shufflevector <4 x i32> %foldExtExtBinop341, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body227

vector.body227:                                   ; preds = %vector.body227, %vector.ph225
  %index228 = phi i64 [ 0, %vector.ph225 ], [ %index.next233, %vector.body227 ] ; 2 uses
  %vec.phi229 = phi <4 x i32> [ %i.fb, %vector.ph225 ], [ %i.fe, %vector.body227 ]
  %vec.phi230 = phi <4 x i32> [ zeroinitializer, %vector.ph225 ], [ %i.ff, %vector.body227 ]
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %index228 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %wide.load231 = load <4 x i32>, ptr %i.fc, align 4, !tbaa !28
  %wide.load232 = load <4 x i32>, ptr %i.fd, align 4, !tbaa !28
  %i.fe = add <4 x i32> %wide.load231, %vec.phi229 ; 2 uses
  %i.ff = add <4 x i32> %wide.load232, %vec.phi230 ; 2 uses
  %index.next233 = add nuw i64 %index228, 8       ; 2 uses
  %i.fg = icmp eq i64 %index.next233, %n.vec226
  br i1 %i.fg, label %middle.block234, label %vector.body227, !llvm.loop !105

middle.block234:                                  ; preds = %vector.body227
  %bin.rdx235 = add <4 x i32> %i.ff, %i.fe
  %i.fh = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx235) ; 2 uses
  %cmp.n236 = icmp eq i64 %.0.i.i.i.i.i.i.i.i21, %n.vec226
  br i1 %cmp.n236, label %.preheader.i.i.i.i27, label %.lr.ph85.i.i.i.i35.preheader370

.lr.ph85.i.i.i.i35.preheader370:                  ; preds = %.lr.ph85.i.i.i.i35.preheader, %middle.block234
  %.05683.i.i.i.i36.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i35.preheader ], [ %n.vec226, %middle.block234 ]
  %.07582.i.i.i.i37.ph = phi i32 [ %5, %.lr.ph85.i.i.i.i35.preheader ], [ %i.fh, %middle.block234 ]
  br label %.lr.ph85.i.i.i.i35

.preheader.i.i.i.i27:                             ; preds = %.lr.ph85.i.i.i.i35, %middle.block234, %bb.r
  %.075.lcssa.i.i.i.i28 = phi i32 [ %5, %bb.r ], [ %i.fh, %middle.block234 ], [ %i.fx, %.lr.ph85.i.i.i.i35 ] ; 3 uses
  %i.fi = icmp slt i64 %i.dy, %i.dk
  br i1 %i.fi, label %.lr.ph89.i.i.i.i32.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29

.lr.ph89.i.i.i.i32.preheader:                     ; preds = %.preheader.i.i.i.i27
  %i.fj = shl nsw i64 %i.dv, 2
  %i.fk = add i64 %.0.i.i.i.i.i.i.i.i21, %i.fj
  %i.fl = sub i64 %i.dk, %i.fk                    ; 3 uses
  %min.iters.check240 = icmp ult i64 %i.fl, 8
  br i1 %min.iters.check240, label %.lr.ph89.i.i.i.i32.preheader365, label %vector.ph241

vector.ph241:                                     ; preds = %.lr.ph89.i.i.i.i32.preheader
  %n.vec242 = and i64 %i.fl, -8                   ; 3 uses
  %i.fm = add i64 %i.dy, %n.vec242
  %i.fn = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i28, i64 0
  %i.fo = getelementptr [4 x i8], ptr %i.cy, i64 %i.dy
  br label %vector.body243

vector.body243:                                   ; preds = %vector.body243, %vector.ph241
  %index244 = phi i64 [ 0, %vector.ph241 ], [ %index.next249, %vector.body243 ] ; 2 uses
  %vec.phi245 = phi <4 x i32> [ %i.fn, %vector.ph241 ], [ %i.fr, %vector.body243 ]
  %vec.phi246 = phi <4 x i32> [ zeroinitializer, %vector.ph241 ], [ %i.fs, %vector.body243 ]
  %i.fp = getelementptr [4 x i8], ptr %i.fo, i64 %index244 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %wide.load247 = load <4 x i32>, ptr %i.fp, align 4, !tbaa !28
  %wide.load248 = load <4 x i32>, ptr %i.fq, align 4, !tbaa !28
  %i.fr = add <4 x i32> %wide.load247, %vec.phi245 ; 2 uses
  %i.fs = add <4 x i32> %wide.load248, %vec.phi246 ; 2 uses
  %index.next249 = add nuw i64 %index244, 8       ; 2 uses
  %i.ft = icmp eq i64 %index.next249, %n.vec242
  br i1 %i.ft, label %middle.block250, label %vector.body243, !llvm.loop !106

middle.block250:                                  ; preds = %vector.body243
  %bin.rdx251 = add <4 x i32> %i.fs, %i.fr
  %i.fu = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx251) ; 2 uses
  %cmp.n252 = icmp eq i64 %i.fl, %n.vec242
  br i1 %cmp.n252, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29, label %.lr.ph89.i.i.i.i32.preheader365

.lr.ph89.i.i.i.i32.preheader365:                  ; preds = %.lr.ph89.i.i.i.i32.preheader, %middle.block250
  %.05588.i.i.i.i33.ph = phi i64 [ %i.dy, %.lr.ph89.i.i.i.i32.preheader ], [ %i.fm, %middle.block250 ]
  %.187.i.i.i.i34.ph = phi i32 [ %.075.lcssa.i.i.i.i28, %.lr.ph89.i.i.i.i32.preheader ], [ %i.fu, %middle.block250 ]
  br label %.lr.ph89.i.i.i.i32

.lr.ph85.i.i.i.i35:                               ; preds = %.lr.ph85.i.i.i.i35.preheader370, %.lr.ph85.i.i.i.i35
  %.05683.i.i.i.i36 = phi i64 [ %i.fy, %.lr.ph85.i.i.i.i35 ], [ %.05683.i.i.i.i36.ph, %.lr.ph85.i.i.i.i35.preheader370 ] ; 2 uses
  %.07582.i.i.i.i37 = phi i32 [ %i.fx, %.lr.ph85.i.i.i.i35 ], [ %.07582.i.i.i.i37.ph, %.lr.ph85.i.i.i.i35.preheader370 ]
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %.05683.i.i.i.i36
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !28
  %i.fx = add nsw i32 %i.fw, %.07582.i.i.i.i37    ; 2 uses
  %i.fy = add nuw nsw i64 %.05683.i.i.i.i36, 1    ; 2 uses
  %exitcond.not.i.i.i.i38 = icmp eq i64 %i.fy, %.0.i.i.i.i.i.i.i.i21
  br i1 %exitcond.not.i.i.i.i38, label %.preheader.i.i.i.i27, label %.lr.ph85.i.i.i.i35, !llvm.loop !107

.lr.ph89.i.i.i.i32:                               ; preds = %.lr.ph89.i.i.i.i32.preheader365, %.lr.ph89.i.i.i.i32
  %.05588.i.i.i.i33 = phi i64 [ %i.gc, %.lr.ph89.i.i.i.i32 ], [ %.05588.i.i.i.i33.ph, %.lr.ph89.i.i.i.i32.preheader365 ] ; 2 uses
  %.187.i.i.i.i34 = phi i32 [ %i.gb, %.lr.ph89.i.i.i.i32 ], [ %.187.i.i.i.i34.ph, %.lr.ph89.i.i.i.i32.preheader365 ]
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %.05588.i.i.i.i33
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !28
  %i.gb = add nsw i32 %i.ga, %.187.i.i.i.i34      ; 2 uses
  %i.gc = add nsw i64 %.05588.i.i.i.i33, 1        ; 2 uses
  %i.gd = icmp slt i64 %i.gc, %i.dk
  br i1 %i.gd, label %.lr.ph89.i.i.i.i32, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29, !llvm.loop !108

bb.s:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i20
  %i.ge = load i32, ptr %i.cy, align 4, !tbaa !28 ; 3 uses
  %i.gf = icmp sgt i64 %i.dk, 1
  br i1 %i.gf, label %.lr.ph94.i.i.i.i49.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29

.lr.ph94.i.i.i.i49.preheader:                     ; preds = %bb.s
  %i.gg = add nsw i64 %i.dk, -1                   ; 2 uses
  %min.iters.check256 = icmp ult i64 %i.dk, 9
  br i1 %min.iters.check256, label %.lr.ph94.i.i.i.i49.preheader361, label %vector.ph257

vector.ph257:                                     ; preds = %.lr.ph94.i.i.i.i49.preheader
  %n.vec258 = and i64 %i.gg, -8                   ; 3 uses
  %i.gh = or disjoint i64 %n.vec258, 1
  %i.gi = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.ge, i64 0
  br label %vector.body259

vector.body259:                                   ; preds = %vector.body259, %vector.ph257
  %index260 = phi i64 [ 0, %vector.ph257 ], [ %index.next265, %vector.body259 ] ; 2 uses
  %vec.phi261 = phi <4 x i32> [ %i.gi, %vector.ph257 ], [ %i.gm, %vector.body259 ]
  %vec.phi262 = phi <4 x i32> [ zeroinitializer, %vector.ph257 ], [ %i.gn, %vector.body259 ]
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %index260 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 4
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 20
  %wide.load263 = load <4 x i32>, ptr %i.gk, align 4, !tbaa !28
  %wide.load264 = load <4 x i32>, ptr %i.gl, align 4, !tbaa !28
  %i.gm = add <4 x i32> %wide.load263, %vec.phi261 ; 2 uses
  %i.gn = add <4 x i32> %wide.load264, %vec.phi262 ; 2 uses
  %index.next265 = add nuw i64 %index260, 8       ; 2 uses
  %i.go = icmp eq i64 %index.next265, %n.vec258
  br i1 %i.go, label %middle.block266, label %vector.body259, !llvm.loop !109

middle.block266:                                  ; preds = %vector.body259
  %bin.rdx267 = add <4 x i32> %i.gn, %i.gm
  %i.gp = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx267) ; 2 uses
  %cmp.n268 = icmp eq i64 %i.gg, %n.vec258
  br i1 %cmp.n268, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29, label %.lr.ph94.i.i.i.i49.preheader361

.lr.ph94.i.i.i.i49.preheader361:                  ; preds = %.lr.ph94.i.i.i.i49.preheader, %middle.block266
  %.092.i.i.i.i50.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i49.preheader ], [ %i.gh, %middle.block266 ]
  %.291.i.i.i.i51.ph = phi i32 [ %i.ge, %.lr.ph94.i.i.i.i49.preheader ], [ %i.gp, %middle.block266 ]
  br label %.lr.ph94.i.i.i.i49

.lr.ph94.i.i.i.i49:                               ; preds = %.lr.ph94.i.i.i.i49.preheader361, %.lr.ph94.i.i.i.i49
  %.092.i.i.i.i50 = phi i64 [ %i.gt, %.lr.ph94.i.i.i.i49 ], [ %.092.i.i.i.i50.ph, %.lr.ph94.i.i.i.i49.preheader361 ] ; 2 uses
  %.291.i.i.i.i51 = phi i32 [ %i.gs, %.lr.ph94.i.i.i.i49 ], [ %.291.i.i.i.i51.ph, %.lr.ph94.i.i.i.i49.preheader361 ]
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %.092.i.i.i.i50
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !28
  %i.gs = add nsw i32 %i.gr, %.291.i.i.i.i51      ; 2 uses
  %i.gt = add nuw nsw i64 %.092.i.i.i.i50, 1      ; 2 uses
  %exitcond102.not.i.i.i.i52 = icmp eq i64 %i.gt, %i.dk
  br i1 %exitcond102.not.i.i.i.i52, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29, label %.lr.ph94.i.i.i.i49, !llvm.loop !110

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29: ; preds = %.lr.ph89.i.i.i.i32, %.lr.ph94.i.i.i.i49, %middle.block250, %middle.block266, %bb.s, %.preheader.i.i.i.i27
  %.0.i.i30 = phi i32 [ %i.gs, %.lr.ph94.i.i.i.i49 ], [ %.075.lcssa.i.i.i.i28, %.preheader.i.i.i.i27 ], [ %i.ge, %bb.s ], [ %i.gp, %middle.block266 ], [ %i.fu, %middle.block250 ], [ %i.gb, %.lr.ph89.i.i.i.i32 ]
  %i.gu = sext i32 %.0.i.i30 to i64
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEE8nonZerosEv.exit53

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEE8nonZerosEv.exit53: ; preds = %bb.k, %bb.l, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29
  %.0.i31 = phi i64 [ %i.di, %bb.k ], [ %i.gu, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29 ], [ 0, %bb.l ]
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %.0.i31, i64 noundef 1)
  %i.gv = load ptr, ptr %i.a, align 8, !tbaa !30  ; 13 uses
  %i.gw = icmp eq ptr %i.gv, null
  br i1 %i.gw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEE8nonZerosEv.exit53
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !35 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !36 ; 2 uses
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.ha
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !28
  %i.hd = load i32, ptr %i.gy, align 4, !tbaa !28
  %i.he = sub nsw i32 %i.hc, %i.hd
  %i.hf = sext i32 %i.he to i64
  br label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

bb.u:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEE8nonZerosEv.exit53
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !36 ; 12 uses
  %i.hi = icmp eq i64 %i.hh, 0
  br i1 %i.hi, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.hj = ptrtoint ptr %i.gv to i64               ; 2 uses
  %i.hk = and i64 %i.hj, 3
  %.not.i.i.i.i.i.i.i.i54 = icmp eq i64 %i.hk, 0
  br i1 %.not.i.i.i.i.i.i.i.i54, label %bb.w, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i55

bb.w:                                             ; preds = %bb.v
  %i.hl = lshr exact i64 %i.hj, 2
  %i.hm = sub nsw i64 0, %i.hl
  %i.hn = and i64 %i.hm, 3
  %i.ho = tail call i64 @llvm.smin.i64(i64 %i.hn, i64 %i.hh)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i55

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i55: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i.i.i56 = phi i64 [ %i.ho, %bb.w ], [ %i.hh, %bb.v ] ; 12 uses
  %i.hp = sub nsw i64 %i.hh, %.0.i.i.i.i.i.i.i.i56 ; 5 uses
  %i.hq = sdiv i64 %i.hp, 8
  %i.hr = shl nsw i64 %i.hq, 3                    ; 2 uses
  %i.hs = sdiv i64 %i.hp, 4                       ; 2 uses
  %i.ht = shl nsw i64 %i.hs, 2                    ; 2 uses
  %i.hu = add nsw i64 %i.hr, %.0.i.i.i.i.i.i.i.i56 ; 2 uses
  %i.hv = add nsw i64 %i.ht, %.0.i.i.i.i.i.i.i.i56 ; 4 uses
  %.off.i.i.i.i57 = add i64 %i.hp, 3
  %.not.i.i.i.i58 = icmp ult i64 %.off.i.i.i.i57, 7
  br i1 %.not.i.i.i.i58, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i55
  %i.hw = getelementptr [4 x i8], ptr %i.gv, i64 %.0.i.i.i.i.i.i.i.i56 ; 2 uses
  %i.hx = load <2 x i64>, ptr %i.hw, align 1, !tbaa !37 ; 2 uses
  %i.hy = icmp sgt i64 %i.hp, 7
  br i1 %i.hy, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.hz = getelementptr i8, ptr %i.hw, i64 16
  %i.ia = load <4 x i32>, ptr %i.hz, align 1, !tbaa !37 ; 2 uses
  %i.ib = bitcast <2 x i64> %i.hx to <4 x i32>    ; 2 uses
  %i.ic = icmp samesign ugt i64 %i.hp, 15
  br i1 %i.ic, label %.lr.ph.preheader.i.i.i.i77, label %._crit_edge.i.i.i.i74

.lr.ph.preheader.i.i.i.i77:                       ; preds = %bb.y
  %.05777.i.i.i.i78 = add nsw i64 %.0.i.i.i.i.i.i.i.i56, 8
  br label %.lr.ph.i.i.i.i79

._crit_edge.i.i.i.i74:                            ; preds = %.lr.ph.i.i.i.i79, %bb.y
  %.lcssa.i.i.i.i75 = phi <4 x i32> [ %i.ia, %bb.y ], [ %i.in, %.lr.ph.i.i.i.i79 ]
  %.sroa.067.0.lcssa.i.i.i.i76 = phi <4 x i32> [ %i.ib, %bb.y ], [ %i.ij, %.lr.ph.i.i.i.i79 ]
  %i.id = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i76, %.lcssa.i.i.i.i75 ; 2 uses
  %i.ie = bitcast <4 x i32> %i.id to <2 x i64>
  %i.if = icmp sgt i64 %i.ht, %i.hr
  br i1 %i.if, label %bb.z, label %bb.aa

.lr.ph.i.i.i.i79:                                 ; preds = %.lr.ph.i.i.i.i79, %.lr.ph.preheader.i.i.i.i77
  %.05780.i.i.i.i80 = phi i64 [ %.057.i.i.i.i83, %.lr.ph.i.i.i.i79 ], [ %.05777.i.i.i.i78, %.lr.ph.preheader.i.i.i.i77 ] ; 3 uses
  %.057.in79.i.i.i.i81 = phi i64 [ %.05780.i.i.i.i80, %.lr.ph.i.i.i.i79 ], [ %.0.i.i.i.i.i.i.i.i56, %.lr.ph.preheader.i.i.i.i77 ]
  %.sroa.067.078.i.i.i.i82 = phi <4 x i32> [ %i.ij, %.lr.ph.i.i.i.i79 ], [ %i.ib, %.lr.ph.preheader.i.i.i.i77 ]
  %i.ig = phi <4 x i32> [ %i.in, %.lr.ph.i.i.i.i79 ], [ %i.ia, %.lr.ph.preheader.i.i.i.i77 ]
  %i.ih = getelementptr inbounds [4 x i8], ptr %i.gv, i64 %.05780.i.i.i.i80
  %i.ii = load <4 x i32>, ptr %i.ih, align 1, !tbaa !37
  %i.ij = add <4 x i32> %i.ii, %.sroa.067.078.i.i.i.i82 ; 2 uses
  %i.ik = getelementptr [4 x i8], ptr %i.gv, i64 %.057.in79.i.i.i.i81
  %i.il = getelementptr i8, ptr %i.ik, i64 48
  %i.im = load <4 x i32>, ptr %i.il, align 1, !tbaa !37
  %i.in = add <4 x i32> %i.im, %i.ig              ; 2 uses
  %.057.i.i.i.i83 = add nsw i64 %.05780.i.i.i.i80, 8 ; 2 uses
  %i.io = icmp slt i64 %.057.i.i.i.i83, %i.hu
  br i1 %i.io, label %.lr.ph.i.i.i.i79, label %._crit_edge.i.i.i.i74, !llvm.loop !38

bb.z:                                             ; preds = %._crit_edge.i.i.i.i74
  %i.ip = getelementptr inbounds [4 x i8], ptr %i.gv, i64 %i.hu
  %i.iq = load <4 x i32>, ptr %i.ip, align 1, !tbaa !37
  %i.ir = add <4 x i32> %i.iq, %i.id
  %i.is = bitcast <4 x i32> %i.ir to <2 x i64>
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge.i.i.i.i74, %bb.x
  %.sroa.067.2.i.i.i.i59 = phi <2 x i64> [ %i.hx, %bb.x ], [ %i.is, %bb.z ], [ %i.ie, %._crit_edge.i.i.i.i74 ] ; 2 uses
  %i.it = bitcast <2 x i64> %.sroa.067.2.i.i.i.i59 to <4 x i32>
  %i.iu = bitcast <2 x i64> %.sroa.067.2.i.i.i.i59 to <4 x i32> ; 2 uses
  %i.iv = shufflevector <4 x i32> %i.iu, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.iw = add <4 x i32> %i.iv, %i.it              ; 2 uses
  %shift343 = shufflevector <4 x i32> %i.iw, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop344 = add nsw <4 x i32> %i.iw, %shift343
  %6 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.iu) ; 2 uses
  %i.ix = icmp sgt i64 %.0.i.i.i.i.i.i.i.i56, 0
  br i1 %i.ix, label %.lr.ph85.i.i.i.i70.preheader, label %.preheader.i.i.i.i62

.lr.ph85.i.i.i.i70.preheader:                     ; preds = %bb.aa
  %min.iters.check272 = icmp ult i64 %.0.i.i.i.i.i.i.i.i56, 8
  br i1 %min.iters.check272, label %.lr.ph85.i.i.i.i70.preheader355, label %vector.ph273

vector.ph273:                                     ; preds = %.lr.ph85.i.i.i.i70.preheader
  %n.vec274 = and i64 %.0.i.i.i.i.i.i.i.i56, 9223372036854775800 ; 3 uses
  %i.iy = shufflevector <4 x i32> %foldExtExtBinop344, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body275

vector.body275:                                   ; preds = %vector.body275, %vector.ph273
  %index276 = phi i64 [ 0, %vector.ph273 ], [ %index.next281, %vector.body275 ] ; 2 uses
  %vec.phi277 = phi <4 x i32> [ %i.iy, %vector.ph273 ], [ %i.jb, %vector.body275 ]
  %vec.phi278 = phi <4 x i32> [ zeroinitializer, %vector.ph273 ], [ %i.jc, %vector.body275 ]
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %index276 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %wide.load279 = load <4 x i32>, ptr %i.iz, align 4, !tbaa !28
  %wide.load280 = load <4 x i32>, ptr %i.ja, align 4, !tbaa !28
  %i.jb = add <4 x i32> %wide.load279, %vec.phi277 ; 2 uses
  %i.jc = add <4 x i32> %wide.load280, %vec.phi278 ; 2 uses
  %index.next281 = add nuw i64 %index276, 8       ; 2 uses
  %i.jd = icmp eq i64 %index.next281, %n.vec274
  br i1 %i.jd, label %middle.block282, label %vector.body275, !llvm.loop !111

middle.block282:                                  ; preds = %vector.body275
  %bin.rdx283 = add <4 x i32> %i.jc, %i.jb
  %i.je = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx283) ; 2 uses
  %cmp.n284 = icmp eq i64 %.0.i.i.i.i.i.i.i.i56, %n.vec274
  br i1 %cmp.n284, label %.preheader.i.i.i.i62, label %.lr.ph85.i.i.i.i70.preheader355

.lr.ph85.i.i.i.i70.preheader355:                  ; preds = %.lr.ph85.i.i.i.i70.preheader, %middle.block282
  %.05683.i.i.i.i71.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i70.preheader ], [ %n.vec274, %middle.block282 ]
  %.07582.i.i.i.i72.ph = phi i32 [ %6, %.lr.ph85.i.i.i.i70.preheader ], [ %i.je, %middle.block282 ]
  br label %.lr.ph85.i.i.i.i70

.preheader.i.i.i.i62:                             ; preds = %.lr.ph85.i.i.i.i70, %middle.block282, %bb.aa
  %.075.lcssa.i.i.i.i63 = phi i32 [ %6, %bb.aa ], [ %i.je, %middle.block282 ], [ %i.ju, %.lr.ph85.i.i.i.i70 ] ; 3 uses
  %i.jf = icmp slt i64 %i.hv, %i.hh
  br i1 %i.jf, label %.lr.ph89.i.i.i.i67.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i64

.lr.ph89.i.i.i.i67.preheader:                     ; preds = %.preheader.i.i.i.i62
  %i.jg = shl nsw i64 %i.hs, 2
  %i.jh = add i64 %.0.i.i.i.i.i.i.i.i56, %i.jg
  %i.ji = sub i64 %i.hh, %i.jh                    ; 3 uses
  %min.iters.check288 = icmp ult i64 %i.ji, 8
  br i1 %min.iters.check288, label %.lr.ph89.i.i.i.i67.preheader350, label %vector.ph289

vector.ph289:                                     ; preds = %.lr.ph89.i.i.i.i67.preheader
  %n.vec290 = and i64 %i.ji, -8                   ; 3 uses
  %i.jj = add i64 %i.hv, %n.vec290
  %i.jk = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i63, i64 0
  %i.jl = getelementptr [4 x i8], ptr %i.gv, i64 %i.hv
  br label %vector.body291

vector.body291:                                   ; preds = %vector.body291, %vector.ph289
  %index292 = phi i64 [ 0, %vector.ph289 ], [ %index.next297, %vector.body291 ] ; 2 uses
  %vec.phi293 = phi <4 x i32> [ %i.jk, %vector.ph289 ], [ %i.jo, %vector.body291 ]
  %vec.phi294 = phi <4 x i32> [ zeroinitializer, %vector.ph289 ], [ %i.jp, %vector.body291 ]
  %i.jm = getelementptr [4 x i8], ptr %i.jl, i64 %index292 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  %wide.load295 = load <4 x i32>, ptr %i.jm, align 4, !tbaa !28
  %wide.load296 = load <4 x i32>, ptr %i.jn, align 4, !tbaa !28
  %i.jo = add <4 x i32> %wide.load295, %vec.phi293 ; 2 uses
  %i.jp = add <4 x i32> %wide.load296, %vec.phi294 ; 2 uses
  %index.next297 = add nuw i64 %index292, 8       ; 2 uses
  %i.jq = icmp eq i64 %index.next297, %n.vec290
  br i1 %i.jq, label %middle.block298, label %vector.body291, !llvm.loop !112

middle.block298:                                  ; preds = %vector.body291
  %bin.rdx299 = add <4 x i32> %i.jp, %i.jo
  %i.jr = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx299) ; 2 uses
  %cmp.n300 = icmp eq i64 %i.ji, %n.vec290
  br i1 %cmp.n300, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i64, label %.lr.ph89.i.i.i.i67.preheader350

.lr.ph89.i.i.i.i67.preheader350:                  ; preds = %.lr.ph89.i.i.i.i67.preheader, %middle.block298
  %.05588.i.i.i.i68.ph = phi i64 [ %i.hv, %.lr.ph89.i.i.i.i67.preheader ], [ %i.jj, %middle.block298 ]
  %.187.i.i.i.i69.ph = phi i32 [ %.075.lcssa.i.i.i.i63, %.lr.ph89.i.i.i.i67.preheader ], [ %i.jr, %middle.block298 ]
  br label %.lr.ph89.i.i.i.i67

.lr.ph85.i.i.i.i70:                               ; preds = %.lr.ph85.i.i.i.i70.preheader355, %.lr.ph85.i.i.i.i70
  %.05683.i.i.i.i71 = phi i64 [ %i.jv, %.lr.ph85.i.i.i.i70 ], [ %.05683.i.i.i.i71.ph, %.lr.ph85.i.i.i.i70.preheader355 ] ; 2 uses
  %.07582.i.i.i.i72 = phi i32 [ %i.ju, %.lr.ph85.i.i.i.i70 ], [ %.07582.i.i.i.i72.ph, %.lr.ph85.i.i.i.i70.preheader355 ]
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %.05683.i.i.i.i71
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !28
  %i.ju = add nsw i32 %i.jt, %.07582.i.i.i.i72    ; 2 uses
  %i.jv = add nuw nsw i64 %.05683.i.i.i.i71, 1    ; 2 uses
  %exitcond.not.i.i.i.i73 = icmp eq i64 %i.jv, %.0.i.i.i.i.i.i.i.i56
  br i1 %exitcond.not.i.i.i.i73, label %.preheader.i.i.i.i62, label %.lr.ph85.i.i.i.i70, !llvm.loop !113

.lr.ph89.i.i.i.i67:                               ; preds = %.lr.ph89.i.i.i.i67.preheader350, %.lr.ph89.i.i.i.i67
  %.05588.i.i.i.i68 = phi i64 [ %i.jz, %.lr.ph89.i.i.i.i67 ], [ %.05588.i.i.i.i68.ph, %.lr.ph89.i.i.i.i67.preheader350 ] ; 2 uses
  %.187.i.i.i.i69 = phi i32 [ %i.jy, %.lr.ph89.i.i.i.i67 ], [ %.187.i.i.i.i69.ph, %.lr.ph89.i.i.i.i67.preheader350 ]
  %i.jw = getelementptr inbounds [4 x i8], ptr %i.gv, i64 %.05588.i.i.i.i68
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !28
  %i.jy = add nsw i32 %i.jx, %.187.i.i.i.i69      ; 2 uses
  %i.jz = add nsw i64 %.05588.i.i.i.i68, 1        ; 2 uses
  %i.ka = icmp slt i64 %i.jz, %i.hh
  br i1 %i.ka, label %.lr.ph89.i.i.i.i67, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i64, !llvm.loop !114

bb.ab:                                            ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i55
  %i.kb = load i32, ptr %i.gv, align 4, !tbaa !28 ; 3 uses
  %i.kc = icmp sgt i64 %i.hh, 1
  br i1 %i.kc, label %.lr.ph94.i.i.i.i84.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i64

.lr.ph94.i.i.i.i84.preheader:                     ; preds = %bb.ab
  %i.kd = add nsw i64 %i.hh, -1                   ; 2 uses
  %min.iters.check304 = icmp ult i64 %i.hh, 9
  br i1 %min.iters.check304, label %.lr.ph94.i.i.i.i84.preheader347, label %vector.ph305

vector.ph305:                                     ; preds = %.lr.ph94.i.i.i.i84.preheader
  %n.vec306 = and i64 %i.kd, -8                   ; 3 uses
  %i.ke = or disjoint i64 %n.vec306, 1
  %i.kf = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.kb, i64 0
  br label %vector.body307

vector.body307:                                   ; preds = %vector.body307, %vector.ph305
  %index308 = phi i64 [ 0, %vector.ph305 ], [ %index.next313, %vector.body307 ] ; 2 uses
  %vec.phi309 = phi <4 x i32> [ %i.kf, %vector.ph305 ], [ %i.kj, %vector.body307 ]
  %vec.phi310 = phi <4 x i32> [ zeroinitializer, %vector.ph305 ], [ %i.kk, %vector.body307 ]
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %index308 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 4
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 20
  %wide.load311 = load <4 x i32>, ptr %i.kh, align 4, !tbaa !28
  %wide.load312 = load <4 x i32>, ptr %i.ki, align 4, !tbaa !28
  %i.kj = add <4 x i32> %wide.load311, %vec.phi309 ; 2 uses
  %i.kk = add <4 x i32> %wide.load312, %vec.phi310 ; 2 uses
  %index.next313 = add nuw i64 %index308, 8       ; 2 uses
  %i.kl = icmp eq i64 %index.next313, %n.vec306
  br i1 %i.kl, label %middle.block314, label %vector.body307, !llvm.loop !115

middle.block314:                                  ; preds = %vector.body307
  %bin.rdx315 = add <4 x i32> %i.kk, %i.kj
  %i.km = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx315) ; 2 uses
  %cmp.n316 = icmp eq i64 %i.kd, %n.vec306
  br i1 %cmp.n316, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i64, label %.lr.ph94.i.i.i.i84.preheader347

.lr.ph94.i.i.i.i84.preheader347:                  ; preds = %.lr.ph94.i.i.i.i84.preheader, %middle.block314
  %.092.i.i.i.i85.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i84.preheader ], [ %i.ke, %middle.block314 ]
  %.291.i.i.i.i86.ph = phi i32 [ %i.kb, %.lr.ph94.i.i.i.i84.preheader ], [ %i.km, %middle.block314 ]
  br label %.lr.ph94.i.i.i.i84

.lr.ph94.i.i.i.i84:                               ; preds = %.lr.ph94.i.i.i.i84.preheader347, %.lr.ph94.i.i.i.i84
  %.092.i.i.i.i85 = phi i64 [ %i.kq, %.lr.ph94.i.i.i.i84 ], [ %.092.i.i.i.i85.ph, %.lr.ph94.i.i.i.i84.preheader347 ] ; 2 uses
  %.291.i.i.i.i86 = phi i32 [ %i.kp, %.lr.ph94.i.i.i.i84 ], [ %.291.i.i.i.i86.ph, %.lr.ph94.i.i.i.i84.preheader347 ]
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %.092.i.i.i.i85
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !28
  %i.kp = add nsw i32 %i.ko, %.291.i.i.i.i86      ; 2 uses
  %i.kq = add nuw nsw i64 %.092.i.i.i.i85, 1      ; 2 uses
  %exitcond102.not.i.i.i.i87 = icmp eq i64 %i.kq, %i.hh
  br i1 %exitcond102.not.i.i.i.i87, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i64, label %.lr.ph94.i.i.i.i84, !llvm.loop !116

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i64: ; preds = %.lr.ph89.i.i.i.i67, %.lr.ph94.i.i.i.i84, %middle.block298, %middle.block314, %bb.ab, %.preheader.i.i.i.i62
  %.0.i.i65 = phi i32 [ %i.kp, %.lr.ph94.i.i.i.i84 ], [ %.075.lcssa.i.i.i.i63, %.preheader.i.i.i.i62 ], [ %i.kb, %bb.ab ], [ %i.km, %middle.block314 ], [ %i.jr, %middle.block298 ], [ %i.jy, %.lr.ph89.i.i.i.i67 ]
  %i.kr = sext i32 %.0.i.i65 to i64
  br label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i64, %bb.t, %bb.u
  %i.ks = phi i64 [ 0, %bb.u ], [ %i.ha, %bb.t ], [ %i.hh, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i64 ]
  %.0.i6693 = phi i64 [ 0, %bb.u ], [ %i.hf, %bb.t ], [ %i.kr, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i64 ] ; 4 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ku = load i64, ptr %i.kt, align 8, !tbaa !9
  %.not.i.i = icmp eq i64 %.0.i6693, %i.ku
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.kv = load ptr, ptr %3, align 8, !tbaa !14
  tail call void @free(ptr noundef %i.kv) #17
  %i.kw = icmp sgt i64 %.0.i6693, 0
  br i1 %i.kw, label %bb.ad, label %.sink.split.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.kx = tail call noalias ptr @malloc(i64 noundef %.0.i6693) #18 ; 2 uses
  %i.ky = icmp eq ptr %i.kx, null
  br i1 %i.ky, label %bb.ae, label %.sink.split.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.kz = tail call ptr @__cxa_allocate_exception(i64 8) #17 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.kz, align 8, !tbaa !47
  tail call void @__cxa_throw(ptr nonnull %i.kz, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #14
  unreachable

.sink.split.i.i:                                  ; preds = %bb.ad, %bb.ac
  %.sink.i.i = phi ptr [ %i.kx, %bb.ad ], [ null, %bb.ac ]
  store ptr %.sink.i.i, ptr %3, align 8, !tbaa !14
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !36
  br label %_ZN5Eigen15PlainObjectBaseINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit

_ZN5Eigen15PlainObjectBaseINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, %.sink.split.i.i
  %i.la = phi i64 [ %i.ks, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i ], [ %.pre, %.sink.split.i.i ] ; 2 uses
  store i64 %.0.i6693, ptr %i.kt, align 8, !tbaa !9
  %i.lb = icmp sgt i64 %i.la, 0
  br i1 %i.lb, label %.lr.ph115, label %._crit_edge116

.lr.ph115:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !61 ; 5 uses
  %i.le = ptrtoaddr ptr %i.ld to i64
end_hunk_2
begin_hunk_3_@_ZN3igl4findIN5Eigen5ArrayIbLin1ELi1ELi0ELin1ELi1EEENS1_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_9DenseBaseIT_EERNS1_15PlainObjectBaseIT0_EE:bb.a
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.epil.preheader ]
  %i.ay = getelementptr i8, ptr %i.d, i64 %.01724.i.i.i.i.epil
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !15, !range !17, !noundef !18
  %i.ba = zext nneg i8 %i.az to i64
  %i.bb = add nuw nsw i64 %.02223.i.i.i.i.epil, %i.ba ; 2 uses
  %i.bc = add nuw nsw i64 %.01724.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK5Eigen9DenseBaseINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEE5countEv.exit, label %.lr.ph.i.i.i.i.epil, !llvm.loop !120

_ZNK5Eigen9DenseBaseINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEE5countEv.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEE5countEv.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.epil, %bb.a, %bb.b
  %.0.i.i = phi i64 [ 0, %bb.a ], [ %i.f, %bb.b ], [ %i.aw, %_ZNK5Eigen9DenseBaseINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEE5countEv.exit.loopexit.unr-lcssa ], [ %i.bb, %.lr.ph.i.i.i.i.epil ]
  %sext = shl i64 %.0.i.i, 32
  %i.bd = ashr exact i64 %sext, 32
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.bd, i64 noundef 1)
  %i.be = load i64, ptr %i.a, align 8, !tbaa !9   ; 5 uses
  %i.bf = icmp sgt i64 %i.be, 0
  br i1 %i.bf, label %_ZNK5Eigen9DenseBaseINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEE5countEv.exit.split, label %.split

_ZNK5Eigen9DenseBaseINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEE5countEv.exit.split: ; preds = %_ZNK5Eigen9DenseBaseINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEE5countEv.exit
  %i.bg = load ptr, ptr %0, align 8, !tbaa !14    ; 3 uses
  %xtraiter28 = and i64 %i.be, 1
  %i.bh = icmp eq i64 %i.be, 1
  br i1 %i.bh, label %.epil.preheader, label %_ZNK5Eigen9DenseBaseINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEE5countEv.exit.split.new

_ZNK5Eigen9DenseBaseINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEE5countEv.exit.split.new: ; preds = %_ZNK5Eigen9DenseBaseINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEE5countEv.exit.split
  %unroll_iter32 = and i64 %i.be, 9223372036854775806
  br label %bb.d

.split.loopexit.unr-lcssa:                        ; preds = %bb.h
  %lcmp.mod30.not = icmp eq i64 %xtraiter28, 0
  br i1 %lcmp.mod30.not, label %.split, label %.epil.preheader

.epil.preheader:                                  ; preds = %.split.loopexit.unr-lcssa, %_ZNK5Eigen9DenseBaseINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEE5countEv.exit.split
  %indvars.iv.epil.init = phi i64 [ 0, %_ZNK5Eigen9DenseBaseINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEE5countEv.exit.split ], [ %indvars.iv.next.1, %.split.loopexit.unr-lcssa ] ; 2 uses
  %.121.epil.init = phi i32 [ 0, %_ZNK5Eigen9DenseBaseINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEE5countEv.exit.split ], [ %.2.1, %.split.loopexit.unr-lcssa ]
  %lcmp.mod31 = trunc i64 %i.be to i1
  tail call void @llvm.assume(i1 %lcmp.mod31)
  %i.bi = getelementptr i8, ptr %i.bg, i64 %indvars.iv.epil.init
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !15, !range !17, !noundef !18
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.c, label %.split

bb.c:                                             ; preds = %.epil.preheader
  %i.bl = sext i32 %.121.epil.init to i64
  %i.bm = load ptr, ptr %1, align 8, !tbaa !93
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.bl
  %i.bo = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  store i32 %i.bo, ptr %i.bn, align 4, !tbaa !28
  br label %.split

.split:                                           ; preds = %.split.loopexit.unr-lcssa, %bb.c, %.epil.preheader, %_ZNK5Eigen9DenseBaseINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEE5countEv.exit
  ret void

bb.d:                                             ; preds = %bb.h, %_ZNK5Eigen9DenseBaseINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEE5countEv.exit.split.new
  %indvars.iv = phi i64 [ 0, %_ZNK5Eigen9DenseBaseINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEE5countEv.exit.split.new ], [ %indvars.iv.next.1, %bb.h ] ; 4 uses
  %.121 = phi i32 [ 0, %_ZNK5Eigen9DenseBaseINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEE5countEv.exit.split.new ], [ %.2.1, %bb.h ] ; 3 uses
  %niter33 = phi i64 [ 0, %_ZNK5Eigen9DenseBaseINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEE5countEv.exit.split.new ], [ %niter33.next.1, %bb.h ]
  %i.bp = getelementptr i8, ptr %i.bg, i64 %indvars.iv
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !15, !range !17, !noundef !18
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bs = sext i32 %.121 to i64
  %i.bt = load ptr, ptr %1, align 8, !tbaa !93
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.bs
  %i.bv = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.bv, ptr %i.bu, align 4, !tbaa !28
  %i.bw = add nsw i32 %.121, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.2 = phi i32 [ %i.bw, %bb.e ], [ %.121, %bb.d ] ; 3 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bg, i64 %indvars.iv.next
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !15, !range !17, !noundef !18
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ca = sext i32 %.2 to i64
  %i.cb = load ptr, ptr %1, align 8, !tbaa !93
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.ca
  %i.cd = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.cd, ptr %i.cc, align 4, !tbaa !28
  %i.ce = add nsw i32 %.2, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.2.1 = phi i32 [ %i.ce, %bb.g ], [ %.2, %bb.f ] ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter33.next.1 = add nuw nsw i64 %niter33, 2   ; 2 uses
  %niter33.ncmp.1 = icmp eq i64 %niter33.next.1, %unroll_iter32
  br i1 %niter33.ncmp.1, label %.split.loopexit.unr-lcssa, label %bb.d, !llvm.loop !121
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl4findIdN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES3_NS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_12SparseMatrixIT_Li0EiEERNS1_9DenseBaseIT0_EERNSA_IT1_EERNSA_IT2_EE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !122  ; 13 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !128  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !129
  %i.h = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !28
  %i.j = load i32, ptr %i.e, align 4, !tbaa !28
  %i.k = sub nsw i32 %i.i, %i.j
  %i.l = sext i32 %i.k to i64
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !129  ; 11 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.q = and i64 %i.p, 3
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.e, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.r = lshr exact i64 %i.p, 2
  %i.s = sub nsw i64 0, %i.r
  %i.t = and i64 %i.s, 3
  %i.u = tail call i64 @llvm.smin.i64(i64 %i.t, i64 %i.n)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i.i.i.i.i.i = phi i64 [ %i.u, %bb.e ], [ %i.n, %bb.d ] ; 12 uses
  %i.v = sub nsw i64 %i.n, %.0.i.i.i.i.i.i.i.i    ; 5 uses
  %i.w = sdiv i64 %i.v, 8
  %i.x = shl nsw i64 %i.w, 3                      ; 2 uses
  %i.y = sdiv i64 %i.v, 4                         ; 2 uses
  %i.z = shl nsw i64 %i.y, 2                      ; 2 uses
  %i.aa = add nsw i64 %i.x, %.0.i.i.i.i.i.i.i.i   ; 2 uses
  %i.ab = add nsw i64 %i.z, %.0.i.i.i.i.i.i.i.i   ; 4 uses
  %.off.i.i.i.i = add i64 %i.v, 3
  %.not.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 7
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.ac = getelementptr [4 x i8], ptr %i.b, i64 %.0.i.i.i.i.i.i.i.i ; 2 uses
  %i.ad = load <2 x i64>, ptr %i.ac, align 1, !tbaa !37 ; 2 uses
  %i.ae = icmp sgt i64 %i.v, 7
  br i1 %i.ae, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr i8, ptr %i.ac, i64 16
  %i.ag = load <4 x i32>, ptr %i.af, align 1, !tbaa !37 ; 2 uses
  %i.ah = bitcast <2 x i64> %i.ad to <4 x i32>    ; 2 uses
  %i.ai = icmp samesign ugt i64 %i.v, 15
  br i1 %i.ai, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.g
  %.05777.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i, 8
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.g
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.ag, %bb.g ], [ %i.at, %.lr.ph.i.i.i.i ]
  %.sroa.067.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.ah, %bb.g ], [ %i.ap, %.lr.ph.i.i.i.i ]
  %i.aj = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i, %.lcssa.i.i.i.i ; 2 uses
  %i.ak = bitcast <4 x i32> %i.aj to <2 x i64>
  %i.al = icmp sgt i64 %i.z, %i.x
  br i1 %i.al, label %bb.h, label %bb.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.05780.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.05777.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.057.in79.i.i.i.i = phi i64 [ %.05780.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i ]
  %.sroa.067.078.i.i.i.i = phi <4 x i32> [ %i.ap, %.lr.ph.i.i.i.i ], [ %i.ah, %.lr.ph.preheader.i.i.i.i ]
  %i.am = phi <4 x i32> [ %i.at, %.lr.ph.i.i.i.i ], [ %i.ag, %.lr.ph.preheader.i.i.i.i ]
  %i.an = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.05780.i.i.i.i
  %i.ao = load <4 x i32>, ptr %i.an, align 1, !tbaa !37
  %i.ap = add <4 x i32> %i.ao, %.sroa.067.078.i.i.i.i ; 2 uses
  %i.aq = getelementptr [4 x i8], ptr %i.b, i64 %.057.in79.i.i.i.i
  %i.ar = getelementptr i8, ptr %i.aq, i64 48
  %i.as = load <4 x i32>, ptr %i.ar, align 1, !tbaa !37
  %i.at = add <4 x i32> %i.as, %i.am              ; 2 uses
  %.057.i.i.i.i = add nsw i64 %.05780.i.i.i.i, 8  ; 2 uses
  %i.au = icmp slt i64 %.057.i.i.i.i, %i.aa
  br i1 %i.au, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !38

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.av = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.aa
  %i.aw = load <4 x i32>, ptr %i.av, align 1, !tbaa !37
  %i.ax = add <4 x i32> %i.aw, %i.aj
  %i.ay = bitcast <4 x i32> %i.ax to <2 x i64>
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i, %bb.f
  %.sroa.067.2.i.i.i.i = phi <2 x i64> [ %i.ad, %bb.f ], [ %i.ay, %bb.h ], [ %i.ak, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.az = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32>
  %i.ba = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32> ; 2 uses
  %i.bb = shufflevector <4 x i32> %i.ba, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.bc = add <4 x i32> %i.bb, %i.az              ; 2 uses
  %shift = shufflevector <4 x i32> %i.bc, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = add nsw <4 x i32> %i.bc, %shift
  %4 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ba) ; 2 uses
  %i.bd = icmp sgt i64 %.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.bd, label %.lr.ph85.i.i.i.i.preheader, label %.preheader.i.i.i.i

.lr.ph85.i.i.i.i.preheader:                       ; preds = %bb.i
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph85.i.i.i.i.preheader382, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph85.i.i.i.i.preheader
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %i.be = shufflevector <4 x i32> %foldExtExtBinop, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.be, %vector.ph ], [ %i.bh, %vector.body ]
  %vec.phi186 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bi, %vector.body ]
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load = load <4 x i32>, ptr %i.bf, align 4, !tbaa !28
  %wide.load187 = load <4 x i32>, ptr %i.bg, align 4, !tbaa !28
  %i.bh = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.bi = add <4 x i32> %wide.load187, %vec.phi186 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !130

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bi, %i.bh
  %i.bk = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i.preheader382

.lr.ph85.i.i.i.i.preheader382:                    ; preds = %.lr.ph85.i.i.i.i.preheader, %middle.block
  %.05683.i.i.i.i.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.07582.i.i.i.i.ph = phi i32 [ %4, %.lr.ph85.i.i.i.i.preheader ], [ %i.bk, %middle.block ]
  br label %.lr.ph85.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i, %middle.block, %bb.i
  %.075.lcssa.i.i.i.i = phi i32 [ %4, %bb.i ], [ %i.bk, %middle.block ], [ %i.ca, %.lr.ph85.i.i.i.i ] ; 3 uses
  %i.bl = icmp slt i64 %i.ab, %i.n
  br i1 %i.bl, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i

.lr.ph89.i.i.i.i.preheader:                       ; preds = %.preheader.i.i.i.i
  %i.bm = shl nsw i64 %i.y, 2
  %i.bn = add i64 %.0.i.i.i.i.i.i.i.i, %i.bm
  %i.bo = sub i64 %i.n, %i.bn                     ; 3 uses
  %min.iters.check189 = icmp ult i64 %i.bo, 8
  br i1 %min.iters.check189, label %.lr.ph89.i.i.i.i.preheader377, label %vector.ph190

vector.ph190:                                     ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec191 = and i64 %i.bo, -8                   ; 3 uses
  %i.bp = add i64 %i.ab, %n.vec191
  %i.bq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i, i64 0
  %i.br = getelementptr [4 x i8], ptr %i.b, i64 %i.ab
  br label %vector.body192

vector.body192:                                   ; preds = %vector.body192, %vector.ph190
  %index193 = phi i64 [ 0, %vector.ph190 ], [ %index.next198, %vector.body192 ] ; 2 uses
  %vec.phi194 = phi <4 x i32> [ %i.bq, %vector.ph190 ], [ %i.bu, %vector.body192 ]
  %vec.phi195 = phi <4 x i32> [ zeroinitializer, %vector.ph190 ], [ %i.bv, %vector.body192 ]
  %i.bs = getelementptr [4 x i8], ptr %i.br, i64 %index193 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %wide.load196 = load <4 x i32>, ptr %i.bs, align 4, !tbaa !28
  %wide.load197 = load <4 x i32>, ptr %i.bt, align 4, !tbaa !28
  %i.bu = add <4 x i32> %wide.load196, %vec.phi194 ; 2 uses
  %i.bv = add <4 x i32> %wide.load197, %vec.phi195 ; 2 uses
  %index.next198 = add nuw i64 %index193, 8       ; 2 uses
  %i.bw = icmp eq i64 %index.next198, %n.vec191
  br i1 %i.bw, label %middle.block199, label %vector.body192, !llvm.loop !131

middle.block199:                                  ; preds = %vector.body192
  %bin.rdx200 = add <4 x i32> %i.bv, %i.bu
  %i.bx = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx200) ; 2 uses
  %cmp.n201 = icmp eq i64 %i.bo, %n.vec191
  br i1 %cmp.n201, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, label %.lr.ph89.i.i.i.i.preheader377

.lr.ph89.i.i.i.i.preheader377:                    ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block199
  %.05588.i.i.i.i.ph = phi i64 [ %i.ab, %.lr.ph89.i.i.i.i.preheader ], [ %i.bp, %middle.block199 ]
  %.187.i.i.i.i.ph = phi i32 [ %.075.lcssa.i.i.i.i, %.lr.ph89.i.i.i.i.preheader ], [ %i.bx, %middle.block199 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph85.i.i.i.i:                                 ; preds = %.lr.ph85.i.i.i.i.preheader382, %.lr.ph85.i.i.i.i
  %.05683.i.i.i.i = phi i64 [ %i.cb, %.lr.ph85.i.i.i.i ], [ %.05683.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader382 ] ; 2 uses
  %.07582.i.i.i.i = phi i32 [ %i.ca, %.lr.ph85.i.i.i.i ], [ %.07582.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader382 ]
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.05683.i.i.i.i
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !28
  %i.ca = add nsw i32 %i.bz, %.07582.i.i.i.i      ; 2 uses
  %i.cb = add nuw nsw i64 %.05683.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.cb, %.0.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i, !llvm.loop !132

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader377, %.lr.ph89.i.i.i.i
  %.05588.i.i.i.i = phi i64 [ %i.cf, %.lr.ph89.i.i.i.i ], [ %.05588.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader377 ] ; 2 uses
  %.187.i.i.i.i = phi i32 [ %i.ce, %.lr.ph89.i.i.i.i ], [ %.187.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader377 ]
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.05588.i.i.i.i
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !28
  %i.ce = add nsw i32 %i.cd, %.187.i.i.i.i        ; 2 uses
  %i.cf = add nsw i64 %.05588.i.i.i.i, 1          ; 2 uses
  %i.cg = icmp slt i64 %i.cf, %i.n
  br i1 %i.cg, label %.lr.ph89.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, !llvm.loop !133

bb.j:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.ch = load i32, ptr %i.b, align 4, !tbaa !28  ; 3 uses
  %i.ci = icmp sgt i64 %i.n, 1
  br i1 %i.ci, label %.lr.ph94.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i

.lr.ph94.i.i.i.i.preheader:                       ; preds = %bb.j
  %i.cj = add nsw i64 %i.n, -1                    ; 2 uses
  %min.iters.check205 = icmp ult i64 %i.n, 9
  br i1 %min.iters.check205, label %.lr.ph94.i.i.i.i.preheader373, label %vector.ph206

vector.ph206:                                     ; preds = %.lr.ph94.i.i.i.i.preheader
  %n.vec207 = and i64 %i.cj, -8                   ; 3 uses
  %i.ck = or disjoint i64 %n.vec207, 1
  %i.cl = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.ch, i64 0
  br label %vector.body208

vector.body208:                                   ; preds = %vector.body208, %vector.ph206
  %index209 = phi i64 [ 0, %vector.ph206 ], [ %index.next214, %vector.body208 ] ; 2 uses
  %vec.phi210 = phi <4 x i32> [ %i.cl, %vector.ph206 ], [ %i.cp, %vector.body208 ]
  %vec.phi211 = phi <4 x i32> [ zeroinitializer, %vector.ph206 ], [ %i.cq, %vector.body208 ]
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index209 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 20
  %wide.load212 = load <4 x i32>, ptr %i.cn, align 4, !tbaa !28
  %wide.load213 = load <4 x i32>, ptr %i.co, align 4, !tbaa !28
  %i.cp = add <4 x i32> %wide.load212, %vec.phi210 ; 2 uses
  %i.cq = add <4 x i32> %wide.load213, %vec.phi211 ; 2 uses
  %index.next214 = add nuw i64 %index209, 8       ; 2 uses
  %i.cr = icmp eq i64 %index.next214, %n.vec207
  br i1 %i.cr, label %middle.block215, label %vector.body208, !llvm.loop !134

middle.block215:                                  ; preds = %vector.body208
  %bin.rdx216 = add <4 x i32> %i.cq, %i.cp
  %i.cs = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx216) ; 2 uses
  %cmp.n217 = icmp eq i64 %i.cj, %n.vec207
  br i1 %cmp.n217, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, label %.lr.ph94.i.i.i.i.preheader373

.lr.ph94.i.i.i.i.preheader373:                    ; preds = %.lr.ph94.i.i.i.i.preheader, %middle.block215
  %.092.i.i.i.i.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.preheader ], [ %i.ck, %middle.block215 ]
  %.291.i.i.i.i.ph = phi i32 [ %i.ch, %.lr.ph94.i.i.i.i.preheader ], [ %i.cs, %middle.block215 ]
  br label %.lr.ph94.i.i.i.i

.lr.ph94.i.i.i.i:                                 ; preds = %.lr.ph94.i.i.i.i.preheader373, %.lr.ph94.i.i.i.i
  %.092.i.i.i.i = phi i64 [ %i.cw, %.lr.ph94.i.i.i.i ], [ %.092.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader373 ] ; 2 uses
  %.291.i.i.i.i = phi i32 [ %i.cv, %.lr.ph94.i.i.i.i ], [ %.291.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader373 ]
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.092.i.i.i.i
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !28
  %i.cv = add nsw i32 %i.cu, %.291.i.i.i.i        ; 2 uses
  %i.cw = add nuw nsw i64 %.092.i.i.i.i, 1        ; 2 uses
  %exitcond102.not.i.i.i.i = icmp eq i64 %i.cw, %i.n
  br i1 %exitcond102.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, label %.lr.ph94.i.i.i.i, !llvm.loop !135

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i: ; preds = %.lr.ph89.i.i.i.i, %.lr.ph94.i.i.i.i, %middle.block199, %middle.block215, %bb.j, %.preheader.i.i.i.i
  %.0.i.i = phi i32 [ %i.cv, %.lr.ph94.i.i.i.i ], [ %.075.lcssa.i.i.i.i, %.preheader.i.i.i.i ], [ %i.ch, %bb.j ], [ %i.cs, %middle.block215 ], [ %i.bx, %middle.block199 ], [ %i.ce, %.lr.ph89.i.i.i.i ]
  %i.cx = sext i32 %.0.i.i to i64
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit: ; preds = %bb.b, %bb.c, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i
  %.0.i = phi i64 [ %i.l, %bb.b ], [ %i.cx, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i ], [ 0, %bb.c ]
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %.0.i, i64 noundef 1)
  %i.cy = load ptr, ptr %i.a, align 8, !tbaa !122 ; 13 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !128 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !129
  %i.de = getelementptr inbounds [4 x i8], ptr %i.db, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !28
  %i.dg = load i32, ptr %i.db, align 4, !tbaa !28
  %i.dh = sub nsw i32 %i.df, %i.dg
  %i.di = sext i32 %i.dh to i64
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit53

bb.l:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !129 ; 11 uses
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit53, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dm = ptrtoint ptr %i.cy to i64               ; 2 uses
  %i.dn = and i64 %i.dm, 3
  %.not.i.i.i.i.i.i.i.i19 = icmp eq i64 %i.dn, 0
  br i1 %.not.i.i.i.i.i.i.i.i19, label %bb.n, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i20

bb.n:                                             ; preds = %bb.m
  %i.do = lshr exact i64 %i.dm, 2
  %i.dp = sub nsw i64 0, %i.do
  %i.dq = and i64 %i.dp, 3
  %i.dr = tail call i64 @llvm.smin.i64(i64 %i.dq, i64 %i.dk)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i20

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i20: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i21 = phi i64 [ %i.dr, %bb.n ], [ %i.dk, %bb.m ] ; 12 uses
  %i.ds = sub nsw i64 %i.dk, %.0.i.i.i.i.i.i.i.i21 ; 5 uses
  %i.dt = sdiv i64 %i.ds, 8
  %i.du = shl nsw i64 %i.dt, 3                    ; 2 uses
  %i.dv = sdiv i64 %i.ds, 4                       ; 2 uses
  %i.dw = shl nsw i64 %i.dv, 2                    ; 2 uses
  %i.dx = add nsw i64 %i.du, %.0.i.i.i.i.i.i.i.i21 ; 2 uses
  %i.dy = add nsw i64 %i.dw, %.0.i.i.i.i.i.i.i.i21 ; 4 uses
  %.off.i.i.i.i22 = add i64 %i.ds, 3
  %.not.i.i.i.i23 = icmp ult i64 %.off.i.i.i.i22, 7
  br i1 %.not.i.i.i.i23, label %bb.s, label %bb.o

bb.o:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i20
  %i.dz = getelementptr [4 x i8], ptr %i.cy, i64 %.0.i.i.i.i.i.i.i.i21 ; 2 uses
  %i.ea = load <2 x i64>, ptr %i.dz, align 1, !tbaa !37 ; 2 uses
  %i.eb = icmp sgt i64 %i.ds, 7
  br i1 %i.eb, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ec = getelementptr i8, ptr %i.dz, i64 16
  %i.ed = load <4 x i32>, ptr %i.ec, align 1, !tbaa !37 ; 2 uses
  %i.ee = bitcast <2 x i64> %i.ea to <4 x i32>    ; 2 uses
  %i.ef = icmp samesign ugt i64 %i.ds, 15
  br i1 %i.ef, label %.lr.ph.preheader.i.i.i.i42, label %._crit_edge.i.i.i.i39

.lr.ph.preheader.i.i.i.i42:                       ; preds = %bb.p
  %.05777.i.i.i.i43 = add nsw i64 %.0.i.i.i.i.i.i.i.i21, 8
  br label %.lr.ph.i.i.i.i44

._crit_edge.i.i.i.i39:                            ; preds = %.lr.ph.i.i.i.i44, %bb.p
  %.lcssa.i.i.i.i40 = phi <4 x i32> [ %i.ed, %bb.p ], [ %i.eq, %.lr.ph.i.i.i.i44 ]
  %.sroa.067.0.lcssa.i.i.i.i41 = phi <4 x i32> [ %i.ee, %bb.p ], [ %i.em, %.lr.ph.i.i.i.i44 ]
  %i.eg = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i41, %.lcssa.i.i.i.i40 ; 2 uses
  %i.eh = bitcast <4 x i32> %i.eg to <2 x i64>
  %i.ei = icmp sgt i64 %i.dw, %i.du
  br i1 %i.ei, label %bb.q, label %bb.r

.lr.ph.i.i.i.i44:                                 ; preds = %.lr.ph.i.i.i.i44, %.lr.ph.preheader.i.i.i.i42
  %.05780.i.i.i.i45 = phi i64 [ %.057.i.i.i.i48, %.lr.ph.i.i.i.i44 ], [ %.05777.i.i.i.i43, %.lr.ph.preheader.i.i.i.i42 ] ; 3 uses
  %.057.in79.i.i.i.i46 = phi i64 [ %.05780.i.i.i.i45, %.lr.ph.i.i.i.i44 ], [ %.0.i.i.i.i.i.i.i.i21, %.lr.ph.preheader.i.i.i.i42 ]
  %.sroa.067.078.i.i.i.i47 = phi <4 x i32> [ %i.em, %.lr.ph.i.i.i.i44 ], [ %i.ee, %.lr.ph.preheader.i.i.i.i42 ]
  %i.ej = phi <4 x i32> [ %i.eq, %.lr.ph.i.i.i.i44 ], [ %i.ed, %.lr.ph.preheader.i.i.i.i42 ]
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %.05780.i.i.i.i45
  %i.el = load <4 x i32>, ptr %i.ek, align 1, !tbaa !37
  %i.em = add <4 x i32> %i.el, %.sroa.067.078.i.i.i.i47 ; 2 uses
  %i.en = getelementptr [4 x i8], ptr %i.cy, i64 %.057.in79.i.i.i.i46
  %i.eo = getelementptr i8, ptr %i.en, i64 48
  %i.ep = load <4 x i32>, ptr %i.eo, align 1, !tbaa !37
  %i.eq = add <4 x i32> %i.ep, %i.ej              ; 2 uses
  %.057.i.i.i.i48 = add nsw i64 %.05780.i.i.i.i45, 8 ; 2 uses
  %i.er = icmp slt i64 %.057.i.i.i.i48, %i.dx
  br i1 %i.er, label %.lr.ph.i.i.i.i44, label %._crit_edge.i.i.i.i39, !llvm.loop !38

bb.q:                                             ; preds = %._crit_edge.i.i.i.i39
  %i.es = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %i.dx
  %i.et = load <4 x i32>, ptr %i.es, align 1, !tbaa !37
  %i.eu = add <4 x i32> %i.et, %i.eg
  %i.ev = bitcast <4 x i32> %i.eu to <2 x i64>
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge.i.i.i.i39, %bb.o
  %.sroa.067.2.i.i.i.i24 = phi <2 x i64> [ %i.ea, %bb.o ], [ %i.ev, %bb.q ], [ %i.eh, %._crit_edge.i.i.i.i39 ] ; 2 uses
  %i.ew = bitcast <2 x i64> %.sroa.067.2.i.i.i.i24 to <4 x i32>
  %i.ex = bitcast <2 x i64> %.sroa.067.2.i.i.i.i24 to <4 x i32> ; 2 uses
  %i.ey = shufflevector <4 x i32> %i.ex, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.ez = add <4 x i32> %i.ey, %i.ew              ; 2 uses
  %shift337 = shufflevector <4 x i32> %i.ez, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop338 = add nsw <4 x i32> %i.ez, %shift337
  %5 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ex) ; 2 uses
  %i.fa = icmp sgt i64 %.0.i.i.i.i.i.i.i.i21, 0
  br i1 %i.fa, label %.lr.ph85.i.i.i.i35.preheader, label %.preheader.i.i.i.i27

.lr.ph85.i.i.i.i35.preheader:                     ; preds = %bb.r
  %min.iters.check221 = icmp ult i64 %.0.i.i.i.i.i.i.i.i21, 8
  br i1 %min.iters.check221, label %.lr.ph85.i.i.i.i35.preheader367, label %vector.ph222

vector.ph222:                                     ; preds = %.lr.ph85.i.i.i.i35.preheader
  %n.vec223 = and i64 %.0.i.i.i.i.i.i.i.i21, 9223372036854775800 ; 3 uses
  %i.fb = shufflevector <4 x i32> %foldExtExtBinop338, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body224

vector.body224:                                   ; preds = %vector.body224, %vector.ph222
  %index225 = phi i64 [ 0, %vector.ph222 ], [ %index.next230, %vector.body224 ] ; 2 uses
  %vec.phi226 = phi <4 x i32> [ %i.fb, %vector.ph222 ], [ %i.fe, %vector.body224 ]
  %vec.phi227 = phi <4 x i32> [ zeroinitializer, %vector.ph222 ], [ %i.ff, %vector.body224 ]
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %index225 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %wide.load228 = load <4 x i32>, ptr %i.fc, align 4, !tbaa !28
  %wide.load229 = load <4 x i32>, ptr %i.fd, align 4, !tbaa !28
  %i.fe = add <4 x i32> %wide.load228, %vec.phi226 ; 2 uses
  %i.ff = add <4 x i32> %wide.load229, %vec.phi227 ; 2 uses
  %index.next230 = add nuw i64 %index225, 8       ; 2 uses
  %i.fg = icmp eq i64 %index.next230, %n.vec223
  br i1 %i.fg, label %middle.block231, label %vector.body224, !llvm.loop !136

middle.block231:                                  ; preds = %vector.body224
  %bin.rdx232 = add <4 x i32> %i.ff, %i.fe
  %i.fh = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx232) ; 2 uses
  %cmp.n233 = icmp eq i64 %.0.i.i.i.i.i.i.i.i21, %n.vec223
  br i1 %cmp.n233, label %.preheader.i.i.i.i27, label %.lr.ph85.i.i.i.i35.preheader367

.lr.ph85.i.i.i.i35.preheader367:                  ; preds = %.lr.ph85.i.i.i.i35.preheader, %middle.block231
  %.05683.i.i.i.i36.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i35.preheader ], [ %n.vec223, %middle.block231 ]
  %.07582.i.i.i.i37.ph = phi i32 [ %5, %.lr.ph85.i.i.i.i35.preheader ], [ %i.fh, %middle.block231 ]
  br label %.lr.ph85.i.i.i.i35

.preheader.i.i.i.i27:                             ; preds = %.lr.ph85.i.i.i.i35, %middle.block231, %bb.r
  %.075.lcssa.i.i.i.i28 = phi i32 [ %5, %bb.r ], [ %i.fh, %middle.block231 ], [ %i.fx, %.lr.ph85.i.i.i.i35 ] ; 3 uses
  %i.fi = icmp slt i64 %i.dy, %i.dk
  br i1 %i.fi, label %.lr.ph89.i.i.i.i32.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29

.lr.ph89.i.i.i.i32.preheader:                     ; preds = %.preheader.i.i.i.i27
  %i.fj = shl nsw i64 %i.dv, 2
  %i.fk = add i64 %.0.i.i.i.i.i.i.i.i21, %i.fj
  %i.fl = sub i64 %i.dk, %i.fk                    ; 3 uses
  %min.iters.check237 = icmp ult i64 %i.fl, 8
  br i1 %min.iters.check237, label %.lr.ph89.i.i.i.i32.preheader362, label %vector.ph238

vector.ph238:                                     ; preds = %.lr.ph89.i.i.i.i32.preheader
  %n.vec239 = and i64 %i.fl, -8                   ; 3 uses
  %i.fm = add i64 %i.dy, %n.vec239
  %i.fn = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i28, i64 0
  %i.fo = getelementptr [4 x i8], ptr %i.cy, i64 %i.dy
  br label %vector.body240

vector.body240:                                   ; preds = %vector.body240, %vector.ph238
  %index241 = phi i64 [ 0, %vector.ph238 ], [ %index.next246, %vector.body240 ] ; 2 uses
  %vec.phi242 = phi <4 x i32> [ %i.fn, %vector.ph238 ], [ %i.fr, %vector.body240 ]
  %vec.phi243 = phi <4 x i32> [ zeroinitializer, %vector.ph238 ], [ %i.fs, %vector.body240 ]
  %i.fp = getelementptr [4 x i8], ptr %i.fo, i64 %index241 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %wide.load244 = load <4 x i32>, ptr %i.fp, align 4, !tbaa !28
  %wide.load245 = load <4 x i32>, ptr %i.fq, align 4, !tbaa !28
  %i.fr = add <4 x i32> %wide.load244, %vec.phi242 ; 2 uses
  %i.fs = add <4 x i32> %wide.load245, %vec.phi243 ; 2 uses
  %index.next246 = add nuw i64 %index241, 8       ; 2 uses
  %i.ft = icmp eq i64 %index.next246, %n.vec239
  br i1 %i.ft, label %middle.block247, label %vector.body240, !llvm.loop !137

middle.block247:                                  ; preds = %vector.body240
  %bin.rdx248 = add <4 x i32> %i.fs, %i.fr
  %i.fu = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx248) ; 2 uses
  %cmp.n249 = icmp eq i64 %i.fl, %n.vec239
  br i1 %cmp.n249, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29, label %.lr.ph89.i.i.i.i32.preheader362

.lr.ph89.i.i.i.i32.preheader362:                  ; preds = %.lr.ph89.i.i.i.i32.preheader, %middle.block247
  %.05588.i.i.i.i33.ph = phi i64 [ %i.dy, %.lr.ph89.i.i.i.i32.preheader ], [ %i.fm, %middle.block247 ]
  %.187.i.i.i.i34.ph = phi i32 [ %.075.lcssa.i.i.i.i28, %.lr.ph89.i.i.i.i32.preheader ], [ %i.fu, %middle.block247 ]
  br label %.lr.ph89.i.i.i.i32

.lr.ph85.i.i.i.i35:                               ; preds = %.lr.ph85.i.i.i.i35.preheader367, %.lr.ph85.i.i.i.i35
  %.05683.i.i.i.i36 = phi i64 [ %i.fy, %.lr.ph85.i.i.i.i35 ], [ %.05683.i.i.i.i36.ph, %.lr.ph85.i.i.i.i35.preheader367 ] ; 2 uses
  %.07582.i.i.i.i37 = phi i32 [ %i.fx, %.lr.ph85.i.i.i.i35 ], [ %.07582.i.i.i.i37.ph, %.lr.ph85.i.i.i.i35.preheader367 ]
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %.05683.i.i.i.i36
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !28
  %i.fx = add nsw i32 %i.fw, %.07582.i.i.i.i37    ; 2 uses
  %i.fy = add nuw nsw i64 %.05683.i.i.i.i36, 1    ; 2 uses
  %exitcond.not.i.i.i.i38 = icmp eq i64 %i.fy, %.0.i.i.i.i.i.i.i.i21
  br i1 %exitcond.not.i.i.i.i38, label %.preheader.i.i.i.i27, label %.lr.ph85.i.i.i.i35, !llvm.loop !138

.lr.ph89.i.i.i.i32:                               ; preds = %.lr.ph89.i.i.i.i32.preheader362, %.lr.ph89.i.i.i.i32
  %.05588.i.i.i.i33 = phi i64 [ %i.gc, %.lr.ph89.i.i.i.i32 ], [ %.05588.i.i.i.i33.ph, %.lr.ph89.i.i.i.i32.preheader362 ] ; 2 uses
  %.187.i.i.i.i34 = phi i32 [ %i.gb, %.lr.ph89.i.i.i.i32 ], [ %.187.i.i.i.i34.ph, %.lr.ph89.i.i.i.i32.preheader362 ]
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %.05588.i.i.i.i33
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !28
  %i.gb = add nsw i32 %i.ga, %.187.i.i.i.i34      ; 2 uses
  %i.gc = add nsw i64 %.05588.i.i.i.i33, 1        ; 2 uses
  %i.gd = icmp slt i64 %i.gc, %i.dk
  br i1 %i.gd, label %.lr.ph89.i.i.i.i32, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29, !llvm.loop !139

bb.s:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i20
  %i.ge = load i32, ptr %i.cy, align 4, !tbaa !28 ; 3 uses
  %i.gf = icmp sgt i64 %i.dk, 1
  br i1 %i.gf, label %.lr.ph94.i.i.i.i49.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29

.lr.ph94.i.i.i.i49.preheader:                     ; preds = %bb.s
  %i.gg = add nsw i64 %i.dk, -1                   ; 2 uses
  %min.iters.check253 = icmp ult i64 %i.dk, 9
  br i1 %min.iters.check253, label %.lr.ph94.i.i.i.i49.preheader358, label %vector.ph254

vector.ph254:                                     ; preds = %.lr.ph94.i.i.i.i49.preheader
  %n.vec255 = and i64 %i.gg, -8                   ; 3 uses
  %i.gh = or disjoint i64 %n.vec255, 1
  %i.gi = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.ge, i64 0
  br label %vector.body256

vector.body256:                                   ; preds = %vector.body256, %vector.ph254
  %index257 = phi i64 [ 0, %vector.ph254 ], [ %index.next262, %vector.body256 ] ; 2 uses
  %vec.phi258 = phi <4 x i32> [ %i.gi, %vector.ph254 ], [ %i.gm, %vector.body256 ]
  %vec.phi259 = phi <4 x i32> [ zeroinitializer, %vector.ph254 ], [ %i.gn, %vector.body256 ]
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %index257 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 4
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 20
  %wide.load260 = load <4 x i32>, ptr %i.gk, align 4, !tbaa !28
  %wide.load261 = load <4 x i32>, ptr %i.gl, align 4, !tbaa !28
  %i.gm = add <4 x i32> %wide.load260, %vec.phi258 ; 2 uses
  %i.gn = add <4 x i32> %wide.load261, %vec.phi259 ; 2 uses
  %index.next262 = add nuw i64 %index257, 8       ; 2 uses
  %i.go = icmp eq i64 %index.next262, %n.vec255
  br i1 %i.go, label %middle.block263, label %vector.body256, !llvm.loop !140

middle.block263:                                  ; preds = %vector.body256
  %bin.rdx264 = add <4 x i32> %i.gn, %i.gm
  %i.gp = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx264) ; 2 uses
  %cmp.n265 = icmp eq i64 %i.gg, %n.vec255
  br i1 %cmp.n265, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29, label %.lr.ph94.i.i.i.i49.preheader358

.lr.ph94.i.i.i.i49.preheader358:                  ; preds = %.lr.ph94.i.i.i.i49.preheader, %middle.block263
  %.092.i.i.i.i50.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i49.preheader ], [ %i.gh, %middle.block263 ]
  %.291.i.i.i.i51.ph = phi i32 [ %i.ge, %.lr.ph94.i.i.i.i49.preheader ], [ %i.gp, %middle.block263 ]
  br label %.lr.ph94.i.i.i.i49

.lr.ph94.i.i.i.i49:                               ; preds = %.lr.ph94.i.i.i.i49.preheader358, %.lr.ph94.i.i.i.i49
  %.092.i.i.i.i50 = phi i64 [ %i.gt, %.lr.ph94.i.i.i.i49 ], [ %.092.i.i.i.i50.ph, %.lr.ph94.i.i.i.i49.preheader358 ] ; 2 uses
  %.291.i.i.i.i51 = phi i32 [ %i.gs, %.lr.ph94.i.i.i.i49 ], [ %.291.i.i.i.i51.ph, %.lr.ph94.i.i.i.i49.preheader358 ]
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %.092.i.i.i.i50
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !28
  %i.gs = add nsw i32 %i.gr, %.291.i.i.i.i51      ; 2 uses
  %i.gt = add nuw nsw i64 %.092.i.i.i.i50, 1      ; 2 uses
  %exitcond102.not.i.i.i.i52 = icmp eq i64 %i.gt, %i.dk
  br i1 %exitcond102.not.i.i.i.i52, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29, label %.lr.ph94.i.i.i.i49, !llvm.loop !141

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29: ; preds = %.lr.ph89.i.i.i.i32, %.lr.ph94.i.i.i.i49, %middle.block247, %middle.block263, %bb.s, %.preheader.i.i.i.i27
  %.0.i.i30 = phi i32 [ %i.gs, %.lr.ph94.i.i.i.i49 ], [ %.075.lcssa.i.i.i.i28, %.preheader.i.i.i.i27 ], [ %i.ge, %bb.s ], [ %i.gp, %middle.block263 ], [ %i.fu, %middle.block247 ], [ %i.gb, %.lr.ph89.i.i.i.i32 ]
  %i.gu = sext i32 %.0.i.i30 to i64
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit53

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit53: ; preds = %bb.k, %bb.l, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29
  %.0.i31 = phi i64 [ %i.di, %bb.k ], [ %i.gu, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29 ], [ 0, %bb.l ]
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %.0.i31, i64 noundef 1)
  %i.gv = load ptr, ptr %i.a, align 8, !tbaa !122 ; 13 uses
  %i.gw = icmp eq ptr %i.gv, null
  br i1 %i.gw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit53
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !128 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !129
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.ha
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !28
  %i.hd = load i32, ptr %i.gy, align 4, !tbaa !28
  %i.he = sub nsw i32 %i.hc, %i.hd
  %i.hf = sext i32 %i.he to i64
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit88

bb.u:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit53
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !129 ; 11 uses
  %i.hi = icmp eq i64 %i.hh, 0
  br i1 %i.hi, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit88, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.hj = ptrtoint ptr %i.gv to i64               ; 2 uses
  %i.hk = and i64 %i.hj, 3
  %.not.i.i.i.i.i.i.i.i54 = icmp eq i64 %i.hk, 0
  br i1 %.not.i.i.i.i.i.i.i.i54, label %bb.w, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i55

bb.w:                                             ; preds = %bb.v
  %i.hl = lshr exact i64 %i.hj, 2
  %i.hm = sub nsw i64 0, %i.hl
  %i.hn = and i64 %i.hm, 3
  %i.ho = tail call i64 @llvm.smin.i64(i64 %i.hn, i64 %i.hh)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i55

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i55: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i.i.i56 = phi i64 [ %i.ho, %bb.w ], [ %i.hh, %bb.v ] ; 12 uses
  %i.hp = sub nsw i64 %i.hh, %.0.i.i.i.i.i.i.i.i56 ; 5 uses
  %i.hq = sdiv i64 %i.hp, 8
  %i.hr = shl nsw i64 %i.hq, 3                    ; 2 uses
  %i.hs = sdiv i64 %i.hp, 4                       ; 2 uses
  %i.ht = shl nsw i64 %i.hs, 2                    ; 2 uses
  %i.hu = add nsw i64 %i.hr, %.0.i.i.i.i.i.i.i.i56 ; 2 uses
  %i.hv = add nsw i64 %i.ht, %.0.i.i.i.i.i.i.i.i56 ; 4 uses
  %.off.i.i.i.i57 = add i64 %i.hp, 3
  %.not.i.i.i.i58 = icmp ult i64 %.off.i.i.i.i57, 7
  br i1 %.not.i.i.i.i58, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i55
  %i.hw = getelementptr [4 x i8], ptr %i.gv, i64 %.0.i.i.i.i.i.i.i.i56 ; 2 uses
  %i.hx = load <2 x i64>, ptr %i.hw, align 1, !tbaa !37 ; 2 uses
  %i.hy = icmp sgt i64 %i.hp, 7
  br i1 %i.hy, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.hz = getelementptr i8, ptr %i.hw, i64 16
  %i.ia = load <4 x i32>, ptr %i.hz, align 1, !tbaa !37 ; 2 uses
  %i.ib = bitcast <2 x i64> %i.hx to <4 x i32>    ; 2 uses
  %i.ic = icmp samesign ugt i64 %i.hp, 15
  br i1 %i.ic, label %.lr.ph.preheader.i.i.i.i77, label %._crit_edge.i.i.i.i74

.lr.ph.preheader.i.i.i.i77:                       ; preds = %bb.y
  %.05777.i.i.i.i78 = add nsw i64 %.0.i.i.i.i.i.i.i.i56, 8
  br label %.lr.ph.i.i.i.i79

._crit_edge.i.i.i.i74:                            ; preds = %.lr.ph.i.i.i.i79, %bb.y
  %.lcssa.i.i.i.i75 = phi <4 x i32> [ %i.ia, %bb.y ], [ %i.in, %.lr.ph.i.i.i.i79 ]
  %.sroa.067.0.lcssa.i.i.i.i76 = phi <4 x i32> [ %i.ib, %bb.y ], [ %i.ij, %.lr.ph.i.i.i.i79 ]
  %i.id = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i76, %.lcssa.i.i.i.i75 ; 2 uses
  %i.ie = bitcast <4 x i32> %i.id to <2 x i64>
  %i.if = icmp sgt i64 %i.ht, %i.hr
  br i1 %i.if, label %bb.z, label %bb.aa

.lr.ph.i.i.i.i79:                                 ; preds = %.lr.ph.i.i.i.i79, %.lr.ph.preheader.i.i.i.i77
  %.05780.i.i.i.i80 = phi i64 [ %.057.i.i.i.i83, %.lr.ph.i.i.i.i79 ], [ %.05777.i.i.i.i78, %.lr.ph.preheader.i.i.i.i77 ] ; 3 uses
  %.057.in79.i.i.i.i81 = phi i64 [ %.05780.i.i.i.i80, %.lr.ph.i.i.i.i79 ], [ %.0.i.i.i.i.i.i.i.i56, %.lr.ph.preheader.i.i.i.i77 ]
  %.sroa.067.078.i.i.i.i82 = phi <4 x i32> [ %i.ij, %.lr.ph.i.i.i.i79 ], [ %i.ib, %.lr.ph.preheader.i.i.i.i77 ]
  %i.ig = phi <4 x i32> [ %i.in, %.lr.ph.i.i.i.i79 ], [ %i.ia, %.lr.ph.preheader.i.i.i.i77 ]
  %i.ih = getelementptr inbounds [4 x i8], ptr %i.gv, i64 %.05780.i.i.i.i80
  %i.ii = load <4 x i32>, ptr %i.ih, align 1, !tbaa !37
  %i.ij = add <4 x i32> %i.ii, %.sroa.067.078.i.i.i.i82 ; 2 uses
  %i.ik = getelementptr [4 x i8], ptr %i.gv, i64 %.057.in79.i.i.i.i81
  %i.il = getelementptr i8, ptr %i.ik, i64 48
  %i.im = load <4 x i32>, ptr %i.il, align 1, !tbaa !37
  %i.in = add <4 x i32> %i.im, %i.ig              ; 2 uses
  %.057.i.i.i.i83 = add nsw i64 %.05780.i.i.i.i80, 8 ; 2 uses
  %i.io = icmp slt i64 %.057.i.i.i.i83, %i.hu
  br i1 %i.io, label %.lr.ph.i.i.i.i79, label %._crit_edge.i.i.i.i74, !llvm.loop !38

bb.z:                                             ; preds = %._crit_edge.i.i.i.i74
  %i.ip = getelementptr inbounds [4 x i8], ptr %i.gv, i64 %i.hu
  %i.iq = load <4 x i32>, ptr %i.ip, align 1, !tbaa !37
  %i.ir = add <4 x i32> %i.iq, %i.id
  %i.is = bitcast <4 x i32> %i.ir to <2 x i64>
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge.i.i.i.i74, %bb.x
  %.sroa.067.2.i.i.i.i59 = phi <2 x i64> [ %i.hx, %bb.x ], [ %i.is, %bb.z ], [ %i.ie, %._crit_edge.i.i.i.i74 ] ; 2 uses
  %i.it = bitcast <2 x i64> %.sroa.067.2.i.i.i.i59 to <4 x i32>
  %i.iu = bitcast <2 x i64> %.sroa.067.2.i.i.i.i59 to <4 x i32> ; 2 uses
  %i.iv = shufflevector <4 x i32> %i.iu, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.iw = add <4 x i32> %i.iv, %i.it              ; 2 uses
  %shift340 = shufflevector <4 x i32> %i.iw, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop341 = add nsw <4 x i32> %i.iw, %shift340
  %6 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.iu) ; 2 uses
  %i.ix = icmp sgt i64 %.0.i.i.i.i.i.i.i.i56, 0
  br i1 %i.ix, label %.lr.ph85.i.i.i.i70.preheader, label %.preheader.i.i.i.i62

.lr.ph85.i.i.i.i70.preheader:                     ; preds = %bb.aa
  %min.iters.check269 = icmp ult i64 %.0.i.i.i.i.i.i.i.i56, 8
  br i1 %min.iters.check269, label %.lr.ph85.i.i.i.i70.preheader352, label %vector.ph270

vector.ph270:                                     ; preds = %.lr.ph85.i.i.i.i70.preheader
  %n.vec271 = and i64 %.0.i.i.i.i.i.i.i.i56, 9223372036854775800 ; 3 uses
  %i.iy = shufflevector <4 x i32> %foldExtExtBinop341, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body272

vector.body272:                                   ; preds = %vector.body272, %vector.ph270
  %index273 = phi i64 [ 0, %vector.ph270 ], [ %index.next278, %vector.body272 ] ; 2 uses
  %vec.phi274 = phi <4 x i32> [ %i.iy, %vector.ph270 ], [ %i.jb, %vector.body272 ]
  %vec.phi275 = phi <4 x i32> [ zeroinitializer, %vector.ph270 ], [ %i.jc, %vector.body272 ]
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %index273 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %wide.load276 = load <4 x i32>, ptr %i.iz, align 4, !tbaa !28
  %wide.load277 = load <4 x i32>, ptr %i.ja, align 4, !tbaa !28
  %i.jb = add <4 x i32> %wide.load276, %vec.phi274 ; 2 uses
  %i.jc = add <4 x i32> %wide.load277, %vec.phi275 ; 2 uses
  %index.next278 = add nuw i64 %index273, 8       ; 2 uses
  %i.jd = icmp eq i64 %index.next278, %n.vec271
  br i1 %i.jd, label %middle.block279, label %vector.body272, !llvm.loop !142

middle.block279:                                  ; preds = %vector.body272
  %bin.rdx280 = add <4 x i32> %i.jc, %i.jb
  %i.je = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx280) ; 2 uses
  %cmp.n281 = icmp eq i64 %.0.i.i.i.i.i.i.i.i56, %n.vec271
  br i1 %cmp.n281, label %.preheader.i.i.i.i62, label %.lr.ph85.i.i.i.i70.preheader352

.lr.ph85.i.i.i.i70.preheader352:                  ; preds = %.lr.ph85.i.i.i.i70.preheader, %middle.block279
  %.05683.i.i.i.i71.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i70.preheader ], [ %n.vec271, %middle.block279 ]
  %.07582.i.i.i.i72.ph = phi i32 [ %6, %.lr.ph85.i.i.i.i70.preheader ], [ %i.je, %middle.block279 ]
  br label %.lr.ph85.i.i.i.i70

.preheader.i.i.i.i62:                             ; preds = %.lr.ph85.i.i.i.i70, %middle.block279, %bb.aa
  %.075.lcssa.i.i.i.i63 = phi i32 [ %6, %bb.aa ], [ %i.je, %middle.block279 ], [ %i.ju, %.lr.ph85.i.i.i.i70 ] ; 3 uses
  %i.jf = icmp slt i64 %i.hv, %i.hh
  br i1 %i.jf, label %.lr.ph89.i.i.i.i67.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i64

.lr.ph89.i.i.i.i67.preheader:                     ; preds = %.preheader.i.i.i.i62
  %i.jg = shl nsw i64 %i.hs, 2
  %i.jh = add i64 %.0.i.i.i.i.i.i.i.i56, %i.jg
  %i.ji = sub i64 %i.hh, %i.jh                    ; 3 uses
  %min.iters.check285 = icmp ult i64 %i.ji, 8
  br i1 %min.iters.check285, label %.lr.ph89.i.i.i.i67.preheader347, label %vector.ph286

vector.ph286:                                     ; preds = %.lr.ph89.i.i.i.i67.preheader
  %n.vec287 = and i64 %i.ji, -8                   ; 3 uses
  %i.jj = add i64 %i.hv, %n.vec287
  %i.jk = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i63, i64 0
  %i.jl = getelementptr [4 x i8], ptr %i.gv, i64 %i.hv
  br label %vector.body288

vector.body288:                                   ; preds = %vector.body288, %vector.ph286
  %index289 = phi i64 [ 0, %vector.ph286 ], [ %index.next294, %vector.body288 ] ; 2 uses
  %vec.phi290 = phi <4 x i32> [ %i.jk, %vector.ph286 ], [ %i.jo, %vector.body288 ]
  %vec.phi291 = phi <4 x i32> [ zeroinitializer, %vector.ph286 ], [ %i.jp, %vector.body288 ]
  %i.jm = getelementptr [4 x i8], ptr %i.jl, i64 %index289 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  %wide.load292 = load <4 x i32>, ptr %i.jm, align 4, !tbaa !28
  %wide.load293 = load <4 x i32>, ptr %i.jn, align 4, !tbaa !28
  %i.jo = add <4 x i32> %wide.load292, %vec.phi290 ; 2 uses
  %i.jp = add <4 x i32> %wide.load293, %vec.phi291 ; 2 uses
  %index.next294 = add nuw i64 %index289, 8       ; 2 uses
  %i.jq = icmp eq i64 %index.next294, %n.vec287
  br i1 %i.jq, label %middle.block295, label %vector.body288, !llvm.loop !143

middle.block295:                                  ; preds = %vector.body288
  %bin.rdx296 = add <4 x i32> %i.jp, %i.jo
  %i.jr = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx296) ; 2 uses
  %cmp.n297 = icmp eq i64 %i.ji, %n.vec287
  br i1 %cmp.n297, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i64, label %.lr.ph89.i.i.i.i67.preheader347

.lr.ph89.i.i.i.i67.preheader347:                  ; preds = %.lr.ph89.i.i.i.i67.preheader, %middle.block295
  %.05588.i.i.i.i68.ph = phi i64 [ %i.hv, %.lr.ph89.i.i.i.i67.preheader ], [ %i.jj, %middle.block295 ]
  %.187.i.i.i.i69.ph = phi i32 [ %.075.lcssa.i.i.i.i63, %.lr.ph89.i.i.i.i67.preheader ], [ %i.jr, %middle.block295 ]
  br label %.lr.ph89.i.i.i.i67

.lr.ph85.i.i.i.i70:                               ; preds = %.lr.ph85.i.i.i.i70.preheader352, %.lr.ph85.i.i.i.i70
  %.05683.i.i.i.i71 = phi i64 [ %i.jv, %.lr.ph85.i.i.i.i70 ], [ %.05683.i.i.i.i71.ph, %.lr.ph85.i.i.i.i70.preheader352 ] ; 2 uses
  %.07582.i.i.i.i72 = phi i32 [ %i.ju, %.lr.ph85.i.i.i.i70 ], [ %.07582.i.i.i.i72.ph, %.lr.ph85.i.i.i.i70.preheader352 ]
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %.05683.i.i.i.i71
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !28
  %i.ju = add nsw i32 %i.jt, %.07582.i.i.i.i72    ; 2 uses
  %i.jv = add nuw nsw i64 %.05683.i.i.i.i71, 1    ; 2 uses
  %exitcond.not.i.i.i.i73 = icmp eq i64 %i.jv, %.0.i.i.i.i.i.i.i.i56
  br i1 %exitcond.not.i.i.i.i73, label %.preheader.i.i.i.i62, label %.lr.ph85.i.i.i.i70, !llvm.loop !144

.lr.ph89.i.i.i.i67:                               ; preds = %.lr.ph89.i.i.i.i67.preheader347, %.lr.ph89.i.i.i.i67
  %.05588.i.i.i.i68 = phi i64 [ %i.jz, %.lr.ph89.i.i.i.i67 ], [ %.05588.i.i.i.i68.ph, %.lr.ph89.i.i.i.i67.preheader347 ] ; 2 uses
  %.187.i.i.i.i69 = phi i32 [ %i.jy, %.lr.ph89.i.i.i.i67 ], [ %.187.i.i.i.i69.ph, %.lr.ph89.i.i.i.i67.preheader347 ]
  %i.jw = getelementptr inbounds [4 x i8], ptr %i.gv, i64 %.05588.i.i.i.i68
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !28
  %i.jy = add nsw i32 %i.jx, %.187.i.i.i.i69      ; 2 uses
  %i.jz = add nsw i64 %.05588.i.i.i.i68, 1        ; 2 uses
  %i.ka = icmp slt i64 %i.jz, %i.hh
  br i1 %i.ka, label %.lr.ph89.i.i.i.i67, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i64, !llvm.loop !145

bb.ab:                                            ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i55
  %i.kb = load i32, ptr %i.gv, align 4, !tbaa !28 ; 3 uses
  %i.kc = icmp sgt i64 %i.hh, 1
  br i1 %i.kc, label %.lr.ph94.i.i.i.i84.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i64

.lr.ph94.i.i.i.i84.preheader:                     ; preds = %bb.ab
  %i.kd = add nsw i64 %i.hh, -1                   ; 2 uses
  %min.iters.check301 = icmp ult i64 %i.hh, 9
  br i1 %min.iters.check301, label %.lr.ph94.i.i.i.i84.preheader344, label %vector.ph302

vector.ph302:                                     ; preds = %.lr.ph94.i.i.i.i84.preheader
  %n.vec303 = and i64 %i.kd, -8                   ; 3 uses
  %i.ke = or disjoint i64 %n.vec303, 1
  %i.kf = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.kb, i64 0
  br label %vector.body304

vector.body304:                                   ; preds = %vector.body304, %vector.ph302
  %index305 = phi i64 [ 0, %vector.ph302 ], [ %index.next310, %vector.body304 ] ; 2 uses
  %vec.phi306 = phi <4 x i32> [ %i.kf, %vector.ph302 ], [ %i.kj, %vector.body304 ]
  %vec.phi307 = phi <4 x i32> [ zeroinitializer, %vector.ph302 ], [ %i.kk, %vector.body304 ]
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %index305 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 4
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 20
  %wide.load308 = load <4 x i32>, ptr %i.kh, align 4, !tbaa !28
  %wide.load309 = load <4 x i32>, ptr %i.ki, align 4, !tbaa !28
  %i.kj = add <4 x i32> %wide.load308, %vec.phi306 ; 2 uses
  %i.kk = add <4 x i32> %wide.load309, %vec.phi307 ; 2 uses
  %index.next310 = add nuw i64 %index305, 8       ; 2 uses
  %i.kl = icmp eq i64 %index.next310, %n.vec303
  br i1 %i.kl, label %middle.block311, label %vector.body304, !llvm.loop !146

middle.block311:                                  ; preds = %vector.body304
  %bin.rdx312 = add <4 x i32> %i.kk, %i.kj
  %i.km = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx312) ; 2 uses
  %cmp.n313 = icmp eq i64 %i.kd, %n.vec303
  br i1 %cmp.n313, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i64, label %.lr.ph94.i.i.i.i84.preheader344

.lr.ph94.i.i.i.i84.preheader344:                  ; preds = %.lr.ph94.i.i.i.i84.preheader, %middle.block311
  %.092.i.i.i.i85.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i84.preheader ], [ %i.ke, %middle.block311 ]
  %.291.i.i.i.i86.ph = phi i32 [ %i.kb, %.lr.ph94.i.i.i.i84.preheader ], [ %i.km, %middle.block311 ]
  br label %.lr.ph94.i.i.i.i84

.lr.ph94.i.i.i.i84:                               ; preds = %.lr.ph94.i.i.i.i84.preheader344, %.lr.ph94.i.i.i.i84
  %.092.i.i.i.i85 = phi i64 [ %i.kq, %.lr.ph94.i.i.i.i84 ], [ %.092.i.i.i.i85.ph, %.lr.ph94.i.i.i.i84.preheader344 ] ; 2 uses
  %.291.i.i.i.i86 = phi i32 [ %i.kp, %.lr.ph94.i.i.i.i84 ], [ %.291.i.i.i.i86.ph, %.lr.ph94.i.i.i.i84.preheader344 ]
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %.092.i.i.i.i85
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !28
  %i.kp = add nsw i32 %i.ko, %.291.i.i.i.i86      ; 2 uses
  %i.kq = add nuw nsw i64 %.092.i.i.i.i85, 1      ; 2 uses
  %exitcond102.not.i.i.i.i87 = icmp eq i64 %i.kq, %i.hh
  br i1 %exitcond102.not.i.i.i.i87, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i64, label %.lr.ph94.i.i.i.i84, !llvm.loop !147

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i64: ; preds = %.lr.ph89.i.i.i.i67, %.lr.ph94.i.i.i.i84, %middle.block295, %middle.block311, %bb.ab, %.preheader.i.i.i.i62
  %.0.i.i65 = phi i32 [ %i.kp, %.lr.ph94.i.i.i.i84 ], [ %.075.lcssa.i.i.i.i63, %.preheader.i.i.i.i62 ], [ %i.kb, %bb.ab ], [ %i.km, %middle.block311 ], [ %i.jr, %middle.block295 ], [ %i.jy, %.lr.ph89.i.i.i.i67 ]
  %i.kr = sext i32 %.0.i.i65 to i64
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit88

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit88: ; preds = %bb.t, %bb.u, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i64
  %.0.i66 = phi i64 [ %i.hf, %bb.t ], [ %i.kr, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i64 ], [ 0, %bb.u ]
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %.0.i66, i64 noundef 1)
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.kt = load i64, ptr %i.ks, align 8, !tbaa !129 ; 2 uses
  %i.ku = icmp sgt i64 %i.kt, 0
  br i1 %i.ku, label %.lr.ph113, label %._crit_edge114

.lr.ph113:                                        ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit88
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !148 ; 5 uses
  %i.kx = ptrtoaddr ptr %i.kw to i64
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !149 ; 5 uses
  %i.la = ptrtoaddr ptr %i.kz to i64              ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !128
  %i.ld = load ptr, ptr %i.a, align 8, !tbaa !122 ; 2 uses
  %i.le = icmp eq ptr %i.ld, null
  br label %bb.ac

._crit_edge114:                                   ; preds = %._crit_edge, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit88
  ret void

bb.ac:                                            ; preds = %.lr.ph113, %._crit_edge
  %indvars.iv134 = phi i64 [ 0, %.lr.ph113 ], [ %indvars.iv.next135, %._crit_edge ] ; 4 uses
  %.017111 = phi i32 [ 0, %.lr.ph113 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %indvars.iv134 ; 2 uses
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !28
  %i.lh = sext i32 %i.lg to i64                   ; 9 uses
  br i1 %i.le, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.li = getelementptr i8, ptr %i.lf, i64 4
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !28
  %i.lk = sext i32 %i.lj to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

bb.ae:                                            ; preds = %bb.ac
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %indvars.iv134
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !28
  %i.ln = sext i32 %i.lm to i64
end_hunk_3
begin_hunk_4_@_ZN3igl4findIdN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES3_NS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_12SparseMatrixIT_Li0EiEERNS1_9DenseBaseIT0_EERNSA_IT1_EERNSA_IT2_EE:bb.a
  br i1 %exitcond137.not, label %._crit_edge114, label %bb.ac, !llvm.loop !155

scalar.ph321:                                     ; preds = %scalar.ph321.prol.loopexit, %scalar.ph321
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph321 ], [ %indvars.iv.unr, %scalar.ph321.prol.loopexit ] ; 5 uses
  %.sroa.8.0109 = phi i64 [ %i.oc, %scalar.ph321 ], [ %.sroa.8.0109.unr, %scalar.ph321.prol.loopexit ] ; 4 uses
  %i.nn = getelementptr inbounds [8 x i8], ptr %i.kw, i64 %.sroa.8.0109
  %i.no = load double, ptr %i.nn, align 8, !tbaa !152
  %i.np = getelementptr inbounds [8 x i8], ptr %i.lq, i64 %indvars.iv
  store double %i.no, ptr %i.np, align 8, !tbaa !152
  %i.nq = getelementptr inbounds [4 x i8], ptr %i.kz, i64 %.sroa.8.0109
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !28
  %i.ns = getelementptr inbounds [4 x i8], ptr %i.lr, i64 %indvars.iv
  store i32 %i.nr, ptr %i.ns, align 4, !tbaa !28
  %i.nt = getelementptr inbounds [4 x i8], ptr %i.ls, i64 %indvars.iv
  store i32 %i.lu, ptr %i.nt, align 4, !tbaa !28
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.nu = add nsw i64 %.sroa.8.0109, 1            ; 2 uses
  %i.nv = getelementptr inbounds [8 x i8], ptr %i.kw, i64 %i.nu
  %i.nw = load double, ptr %i.nv, align 8, !tbaa !152
  %i.nx = getelementptr inbounds [8 x i8], ptr %i.lq, i64 %indvars.iv.next
  store double %i.nw, ptr %i.nx, align 8, !tbaa !152
  %i.ny = getelementptr inbounds [4 x i8], ptr %i.kz, i64 %i.nu
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !28
  %i.oa = getelementptr inbounds [4 x i8], ptr %i.lr, i64 %indvars.iv.next
  store i32 %i.nz, ptr %i.oa, align 4, !tbaa !28
  %i.ob = getelementptr inbounds [4 x i8], ptr %i.ls, i64 %indvars.iv.next
  store i32 %i.lu, ptr %i.ob, align 4, !tbaa !28
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %i.oc = add nsw i64 %.sroa.8.0109, 2            ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.oc, %.sink.i
  br i1 %exitcond.not.1, label %._crit_edge.loopexit, label %scalar.ph321, !llvm.loop !156
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sdiv i64 9223372036854775807, %2
  %i.d = icmp sgt i64 %1, %i.c
  br i1 %i.d, label %bb.c, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #17 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !47
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #14
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !157
  %.not.i = icmp eq i64 %i.f, %i.h
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.i = load ptr, ptr %0, align 8, !tbaa !150
  tail call void @free(ptr noundef %i.i) #17
  %i.j = icmp sgt i64 %i.f, 0
  br i1 %i.j, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i64 %i.f, 2305843009213693951
  br i1 %i.k, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #17 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !47
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #14
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.e
  %i.m = shl nuw i64 %i.f, 3
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #18 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #17 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !47
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #14
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.n, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !150
  br label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %1, ptr %i.g, align 8, !tbaa !157
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl4findIdN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEES3_S3_EEvRKNS1_12SparseMatrixIT_Li0EiEERNS1_9DenseBaseIT0_EERNS9_IT1_EERNS9_IT2_EE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !122  ; 13 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !128  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !129
  %i.h = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !28
  %i.j = load i32, ptr %i.e, align 4, !tbaa !28
  %i.k = sub nsw i32 %i.i, %i.j
  %i.l = sext i32 %i.k to i64
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !129  ; 11 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.q = and i64 %i.p, 3
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.e, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.r = lshr exact i64 %i.p, 2
  %i.s = sub nsw i64 0, %i.r
  %i.t = and i64 %i.s, 3
  %i.u = tail call i64 @llvm.smin.i64(i64 %i.t, i64 %i.n)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i.i.i.i.i.i = phi i64 [ %i.u, %bb.e ], [ %i.n, %bb.d ] ; 12 uses
  %i.v = sub nsw i64 %i.n, %.0.i.i.i.i.i.i.i.i    ; 5 uses
  %i.w = sdiv i64 %i.v, 8
  %i.x = shl nsw i64 %i.w, 3                      ; 2 uses
  %i.y = sdiv i64 %i.v, 4                         ; 2 uses
  %i.z = shl nsw i64 %i.y, 2                      ; 2 uses
  %i.aa = add nsw i64 %i.x, %.0.i.i.i.i.i.i.i.i   ; 2 uses
  %i.ab = add nsw i64 %i.z, %.0.i.i.i.i.i.i.i.i   ; 4 uses
  %.off.i.i.i.i = add i64 %i.v, 3
  %.not.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 7
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.ac = getelementptr [4 x i8], ptr %i.b, i64 %.0.i.i.i.i.i.i.i.i ; 2 uses
  %i.ad = load <2 x i64>, ptr %i.ac, align 1, !tbaa !37 ; 2 uses
  %i.ae = icmp sgt i64 %i.v, 7
  br i1 %i.ae, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr i8, ptr %i.ac, i64 16
  %i.ag = load <4 x i32>, ptr %i.af, align 1, !tbaa !37 ; 2 uses
  %i.ah = bitcast <2 x i64> %i.ad to <4 x i32>    ; 2 uses
  %i.ai = icmp samesign ugt i64 %i.v, 15
  br i1 %i.ai, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.g
  %.05777.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i, 8
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.g
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.ag, %bb.g ], [ %i.at, %.lr.ph.i.i.i.i ]
  %.sroa.067.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.ah, %bb.g ], [ %i.ap, %.lr.ph.i.i.i.i ]
  %i.aj = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i, %.lcssa.i.i.i.i ; 2 uses
  %i.ak = bitcast <4 x i32> %i.aj to <2 x i64>
  %i.al = icmp sgt i64 %i.z, %i.x
  br i1 %i.al, label %bb.h, label %bb.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.05780.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.05777.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.057.in79.i.i.i.i = phi i64 [ %.05780.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i ]
  %.sroa.067.078.i.i.i.i = phi <4 x i32> [ %i.ap, %.lr.ph.i.i.i.i ], [ %i.ah, %.lr.ph.preheader.i.i.i.i ]
  %i.am = phi <4 x i32> [ %i.at, %.lr.ph.i.i.i.i ], [ %i.ag, %.lr.ph.preheader.i.i.i.i ]
  %i.an = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.05780.i.i.i.i
  %i.ao = load <4 x i32>, ptr %i.an, align 1, !tbaa !37
  %i.ap = add <4 x i32> %i.ao, %.sroa.067.078.i.i.i.i ; 2 uses
  %i.aq = getelementptr [4 x i8], ptr %i.b, i64 %.057.in79.i.i.i.i
  %i.ar = getelementptr i8, ptr %i.aq, i64 48
  %i.as = load <4 x i32>, ptr %i.ar, align 1, !tbaa !37
  %i.at = add <4 x i32> %i.as, %i.am              ; 2 uses
  %.057.i.i.i.i = add nsw i64 %.05780.i.i.i.i, 8  ; 2 uses
  %i.au = icmp slt i64 %.057.i.i.i.i, %i.aa
  br i1 %i.au, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !38

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.av = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.aa
  %i.aw = load <4 x i32>, ptr %i.av, align 1, !tbaa !37
  %i.ax = add <4 x i32> %i.aw, %i.aj
  %i.ay = bitcast <4 x i32> %i.ax to <2 x i64>
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i, %bb.f
  %.sroa.067.2.i.i.i.i = phi <2 x i64> [ %i.ad, %bb.f ], [ %i.ay, %bb.h ], [ %i.ak, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.az = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32>
  %i.ba = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32> ; 2 uses
  %i.bb = shufflevector <4 x i32> %i.ba, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.bc = add <4 x i32> %i.bb, %i.az              ; 2 uses
  %shift = shufflevector <4 x i32> %i.bc, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = add nsw <4 x i32> %i.bc, %shift
  %4 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ba) ; 2 uses
  %i.bd = icmp sgt i64 %.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.bd, label %.lr.ph85.i.i.i.i.preheader, label %.preheader.i.i.i.i

.lr.ph85.i.i.i.i.preheader:                       ; preds = %bb.i
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph85.i.i.i.i.preheader384, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph85.i.i.i.i.preheader
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %i.be = shufflevector <4 x i32> %foldExtExtBinop, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.be, %vector.ph ], [ %i.bh, %vector.body ]
  %vec.phi186 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bi, %vector.body ]
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load = load <4 x i32>, ptr %i.bf, align 4, !tbaa !28
  %wide.load187 = load <4 x i32>, ptr %i.bg, align 4, !tbaa !28
  %i.bh = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.bi = add <4 x i32> %wide.load187, %vec.phi186 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !158

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bi, %i.bh
  %i.bk = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i.preheader384

.lr.ph85.i.i.i.i.preheader384:                    ; preds = %.lr.ph85.i.i.i.i.preheader, %middle.block
  %.05683.i.i.i.i.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.07582.i.i.i.i.ph = phi i32 [ %4, %.lr.ph85.i.i.i.i.preheader ], [ %i.bk, %middle.block ]
  br label %.lr.ph85.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i, %middle.block, %bb.i
  %.075.lcssa.i.i.i.i = phi i32 [ %4, %bb.i ], [ %i.bk, %middle.block ], [ %i.ca, %.lr.ph85.i.i.i.i ] ; 3 uses
  %i.bl = icmp slt i64 %i.ab, %i.n
  br i1 %i.bl, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i

.lr.ph89.i.i.i.i.preheader:                       ; preds = %.preheader.i.i.i.i
  %i.bm = shl nsw i64 %i.y, 2
  %i.bn = add i64 %.0.i.i.i.i.i.i.i.i, %i.bm
  %i.bo = sub i64 %i.n, %i.bn                     ; 3 uses
  %min.iters.check189 = icmp ult i64 %i.bo, 8
  br i1 %min.iters.check189, label %.lr.ph89.i.i.i.i.preheader379, label %vector.ph190

vector.ph190:                                     ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec191 = and i64 %i.bo, -8                   ; 3 uses
  %i.bp = add i64 %i.ab, %n.vec191
  %i.bq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i, i64 0
  %i.br = getelementptr [4 x i8], ptr %i.b, i64 %i.ab
  br label %vector.body192

vector.body192:                                   ; preds = %vector.body192, %vector.ph190
  %index193 = phi i64 [ 0, %vector.ph190 ], [ %index.next198, %vector.body192 ] ; 2 uses
  %vec.phi194 = phi <4 x i32> [ %i.bq, %vector.ph190 ], [ %i.bu, %vector.body192 ]
  %vec.phi195 = phi <4 x i32> [ zeroinitializer, %vector.ph190 ], [ %i.bv, %vector.body192 ]
  %i.bs = getelementptr [4 x i8], ptr %i.br, i64 %index193 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %wide.load196 = load <4 x i32>, ptr %i.bs, align 4, !tbaa !28
  %wide.load197 = load <4 x i32>, ptr %i.bt, align 4, !tbaa !28
  %i.bu = add <4 x i32> %wide.load196, %vec.phi194 ; 2 uses
  %i.bv = add <4 x i32> %wide.load197, %vec.phi195 ; 2 uses
  %index.next198 = add nuw i64 %index193, 8       ; 2 uses
  %i.bw = icmp eq i64 %index.next198, %n.vec191
  br i1 %i.bw, label %middle.block199, label %vector.body192, !llvm.loop !159

middle.block199:                                  ; preds = %vector.body192
  %bin.rdx200 = add <4 x i32> %i.bv, %i.bu
  %i.bx = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx200) ; 2 uses
  %cmp.n201 = icmp eq i64 %i.bo, %n.vec191
  br i1 %cmp.n201, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, label %.lr.ph89.i.i.i.i.preheader379

.lr.ph89.i.i.i.i.preheader379:                    ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block199
  %.05588.i.i.i.i.ph = phi i64 [ %i.ab, %.lr.ph89.i.i.i.i.preheader ], [ %i.bp, %middle.block199 ]
  %.187.i.i.i.i.ph = phi i32 [ %.075.lcssa.i.i.i.i, %.lr.ph89.i.i.i.i.preheader ], [ %i.bx, %middle.block199 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph85.i.i.i.i:                                 ; preds = %.lr.ph85.i.i.i.i.preheader384, %.lr.ph85.i.i.i.i
  %.05683.i.i.i.i = phi i64 [ %i.cb, %.lr.ph85.i.i.i.i ], [ %.05683.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader384 ] ; 2 uses
  %.07582.i.i.i.i = phi i32 [ %i.ca, %.lr.ph85.i.i.i.i ], [ %.07582.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader384 ]
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.05683.i.i.i.i
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !28
  %i.ca = add nsw i32 %i.bz, %.07582.i.i.i.i      ; 2 uses
  %i.cb = add nuw nsw i64 %.05683.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.cb, %.0.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i, !llvm.loop !160

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader379, %.lr.ph89.i.i.i.i
  %.05588.i.i.i.i = phi i64 [ %i.cf, %.lr.ph89.i.i.i.i ], [ %.05588.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader379 ] ; 2 uses
  %.187.i.i.i.i = phi i32 [ %i.ce, %.lr.ph89.i.i.i.i ], [ %.187.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader379 ]
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.05588.i.i.i.i
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !28
  %i.ce = add nsw i32 %i.cd, %.187.i.i.i.i        ; 2 uses
  %i.cf = add nsw i64 %.05588.i.i.i.i, 1          ; 2 uses
  %i.cg = icmp slt i64 %i.cf, %i.n
  br i1 %i.cg, label %.lr.ph89.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, !llvm.loop !161

bb.j:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.ch = load i32, ptr %i.b, align 4, !tbaa !28  ; 3 uses
  %i.ci = icmp sgt i64 %i.n, 1
  br i1 %i.ci, label %.lr.ph94.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i

.lr.ph94.i.i.i.i.preheader:                       ; preds = %bb.j
  %i.cj = add nsw i64 %i.n, -1                    ; 2 uses
  %min.iters.check205 = icmp ult i64 %i.n, 9
  br i1 %min.iters.check205, label %.lr.ph94.i.i.i.i.preheader375, label %vector.ph206

vector.ph206:                                     ; preds = %.lr.ph94.i.i.i.i.preheader
  %n.vec207 = and i64 %i.cj, -8                   ; 3 uses
  %i.ck = or disjoint i64 %n.vec207, 1
  %i.cl = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.ch, i64 0
  br label %vector.body208

vector.body208:                                   ; preds = %vector.body208, %vector.ph206
  %index209 = phi i64 [ 0, %vector.ph206 ], [ %index.next214, %vector.body208 ] ; 2 uses
  %vec.phi210 = phi <4 x i32> [ %i.cl, %vector.ph206 ], [ %i.cp, %vector.body208 ]
  %vec.phi211 = phi <4 x i32> [ zeroinitializer, %vector.ph206 ], [ %i.cq, %vector.body208 ]
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index209 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 20
  %wide.load212 = load <4 x i32>, ptr %i.cn, align 4, !tbaa !28
  %wide.load213 = load <4 x i32>, ptr %i.co, align 4, !tbaa !28
  %i.cp = add <4 x i32> %wide.load212, %vec.phi210 ; 2 uses
  %i.cq = add <4 x i32> %wide.load213, %vec.phi211 ; 2 uses
  %index.next214 = add nuw i64 %index209, 8       ; 2 uses
  %i.cr = icmp eq i64 %index.next214, %n.vec207
  br i1 %i.cr, label %middle.block215, label %vector.body208, !llvm.loop !162

middle.block215:                                  ; preds = %vector.body208
  %bin.rdx216 = add <4 x i32> %i.cq, %i.cp
  %i.cs = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx216) ; 2 uses
  %cmp.n217 = icmp eq i64 %i.cj, %n.vec207
  br i1 %cmp.n217, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, label %.lr.ph94.i.i.i.i.preheader375

.lr.ph94.i.i.i.i.preheader375:                    ; preds = %.lr.ph94.i.i.i.i.preheader, %middle.block215
  %.092.i.i.i.i.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.preheader ], [ %i.ck, %middle.block215 ]
  %.291.i.i.i.i.ph = phi i32 [ %i.ch, %.lr.ph94.i.i.i.i.preheader ], [ %i.cs, %middle.block215 ]
  br label %.lr.ph94.i.i.i.i

.lr.ph94.i.i.i.i:                                 ; preds = %.lr.ph94.i.i.i.i.preheader375, %.lr.ph94.i.i.i.i
  %.092.i.i.i.i = phi i64 [ %i.cw, %.lr.ph94.i.i.i.i ], [ %.092.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader375 ] ; 2 uses
  %.291.i.i.i.i = phi i32 [ %i.cv, %.lr.ph94.i.i.i.i ], [ %.291.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader375 ]
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.092.i.i.i.i
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !28
  %i.cv = add nsw i32 %i.cu, %.291.i.i.i.i        ; 2 uses
  %i.cw = add nuw nsw i64 %.092.i.i.i.i, 1        ; 2 uses
  %exitcond102.not.i.i.i.i = icmp eq i64 %i.cw, %i.n
  br i1 %exitcond102.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, label %.lr.ph94.i.i.i.i, !llvm.loop !163

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i: ; preds = %.lr.ph89.i.i.i.i, %.lr.ph94.i.i.i.i, %middle.block199, %middle.block215, %bb.j, %.preheader.i.i.i.i
  %.0.i.i = phi i32 [ %i.cv, %.lr.ph94.i.i.i.i ], [ %.075.lcssa.i.i.i.i, %.preheader.i.i.i.i ], [ %i.ch, %bb.j ], [ %i.cs, %middle.block215 ], [ %i.bx, %middle.block199 ], [ %i.ce, %.lr.ph89.i.i.i.i ]
  %i.cx = sext i32 %.0.i.i to i64
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit: ; preds = %bb.b, %bb.c, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i
  %.0.i = phi i64 [ %i.l, %bb.b ], [ %i.cx, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i ], [ 0, %bb.c ]
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %.0.i, i64 noundef 1)
  %i.cy = load ptr, ptr %i.a, align 8, !tbaa !122 ; 13 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !128 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !129
  %i.de = getelementptr inbounds [4 x i8], ptr %i.db, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !28
  %i.dg = load i32, ptr %i.db, align 4, !tbaa !28
  %i.dh = sub nsw i32 %i.df, %i.dg
  %i.di = sext i32 %i.dh to i64
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit53

bb.l:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !129 ; 11 uses
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit53, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dm = ptrtoint ptr %i.cy to i64               ; 2 uses
  %i.dn = and i64 %i.dm, 3
  %.not.i.i.i.i.i.i.i.i19 = icmp eq i64 %i.dn, 0
  br i1 %.not.i.i.i.i.i.i.i.i19, label %bb.n, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i20

bb.n:                                             ; preds = %bb.m
  %i.do = lshr exact i64 %i.dm, 2
  %i.dp = sub nsw i64 0, %i.do
  %i.dq = and i64 %i.dp, 3
  %i.dr = tail call i64 @llvm.smin.i64(i64 %i.dq, i64 %i.dk)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i20

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i20: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i21 = phi i64 [ %i.dr, %bb.n ], [ %i.dk, %bb.m ] ; 12 uses
  %i.ds = sub nsw i64 %i.dk, %.0.i.i.i.i.i.i.i.i21 ; 5 uses
  %i.dt = sdiv i64 %i.ds, 8
  %i.du = shl nsw i64 %i.dt, 3                    ; 2 uses
  %i.dv = sdiv i64 %i.ds, 4                       ; 2 uses
  %i.dw = shl nsw i64 %i.dv, 2                    ; 2 uses
  %i.dx = add nsw i64 %i.du, %.0.i.i.i.i.i.i.i.i21 ; 2 uses
  %i.dy = add nsw i64 %i.dw, %.0.i.i.i.i.i.i.i.i21 ; 4 uses
  %.off.i.i.i.i22 = add i64 %i.ds, 3
  %.not.i.i.i.i23 = icmp ult i64 %.off.i.i.i.i22, 7
  br i1 %.not.i.i.i.i23, label %bb.s, label %bb.o

bb.o:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i20
  %i.dz = getelementptr [4 x i8], ptr %i.cy, i64 %.0.i.i.i.i.i.i.i.i21 ; 2 uses
  %i.ea = load <2 x i64>, ptr %i.dz, align 1, !tbaa !37 ; 2 uses
  %i.eb = icmp sgt i64 %i.ds, 7
  br i1 %i.eb, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ec = getelementptr i8, ptr %i.dz, i64 16
  %i.ed = load <4 x i32>, ptr %i.ec, align 1, !tbaa !37 ; 2 uses
  %i.ee = bitcast <2 x i64> %i.ea to <4 x i32>    ; 2 uses
  %i.ef = icmp samesign ugt i64 %i.ds, 15
  br i1 %i.ef, label %.lr.ph.preheader.i.i.i.i42, label %._crit_edge.i.i.i.i39

.lr.ph.preheader.i.i.i.i42:                       ; preds = %bb.p
  %.05777.i.i.i.i43 = add nsw i64 %.0.i.i.i.i.i.i.i.i21, 8
  br label %.lr.ph.i.i.i.i44

._crit_edge.i.i.i.i39:                            ; preds = %.lr.ph.i.i.i.i44, %bb.p
  %.lcssa.i.i.i.i40 = phi <4 x i32> [ %i.ed, %bb.p ], [ %i.eq, %.lr.ph.i.i.i.i44 ]
  %.sroa.067.0.lcssa.i.i.i.i41 = phi <4 x i32> [ %i.ee, %bb.p ], [ %i.em, %.lr.ph.i.i.i.i44 ]
  %i.eg = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i41, %.lcssa.i.i.i.i40 ; 2 uses
  %i.eh = bitcast <4 x i32> %i.eg to <2 x i64>
  %i.ei = icmp sgt i64 %i.dw, %i.du
  br i1 %i.ei, label %bb.q, label %bb.r

.lr.ph.i.i.i.i44:                                 ; preds = %.lr.ph.i.i.i.i44, %.lr.ph.preheader.i.i.i.i42
  %.05780.i.i.i.i45 = phi i64 [ %.057.i.i.i.i48, %.lr.ph.i.i.i.i44 ], [ %.05777.i.i.i.i43, %.lr.ph.preheader.i.i.i.i42 ] ; 3 uses
  %.057.in79.i.i.i.i46 = phi i64 [ %.05780.i.i.i.i45, %.lr.ph.i.i.i.i44 ], [ %.0.i.i.i.i.i.i.i.i21, %.lr.ph.preheader.i.i.i.i42 ]
  %.sroa.067.078.i.i.i.i47 = phi <4 x i32> [ %i.em, %.lr.ph.i.i.i.i44 ], [ %i.ee, %.lr.ph.preheader.i.i.i.i42 ]
  %i.ej = phi <4 x i32> [ %i.eq, %.lr.ph.i.i.i.i44 ], [ %i.ed, %.lr.ph.preheader.i.i.i.i42 ]
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %.05780.i.i.i.i45
  %i.el = load <4 x i32>, ptr %i.ek, align 1, !tbaa !37
  %i.em = add <4 x i32> %i.el, %.sroa.067.078.i.i.i.i47 ; 2 uses
  %i.en = getelementptr [4 x i8], ptr %i.cy, i64 %.057.in79.i.i.i.i46
  %i.eo = getelementptr i8, ptr %i.en, i64 48
  %i.ep = load <4 x i32>, ptr %i.eo, align 1, !tbaa !37
  %i.eq = add <4 x i32> %i.ep, %i.ej              ; 2 uses
  %.057.i.i.i.i48 = add nsw i64 %.05780.i.i.i.i45, 8 ; 2 uses
  %i.er = icmp slt i64 %.057.i.i.i.i48, %i.dx
  br i1 %i.er, label %.lr.ph.i.i.i.i44, label %._crit_edge.i.i.i.i39, !llvm.loop !38

bb.q:                                             ; preds = %._crit_edge.i.i.i.i39
  %i.es = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %i.dx
  %i.et = load <4 x i32>, ptr %i.es, align 1, !tbaa !37
  %i.eu = add <4 x i32> %i.et, %i.eg
  %i.ev = bitcast <4 x i32> %i.eu to <2 x i64>
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge.i.i.i.i39, %bb.o
  %.sroa.067.2.i.i.i.i24 = phi <2 x i64> [ %i.ea, %bb.o ], [ %i.ev, %bb.q ], [ %i.eh, %._crit_edge.i.i.i.i39 ] ; 2 uses
  %i.ew = bitcast <2 x i64> %.sroa.067.2.i.i.i.i24 to <4 x i32>
  %i.ex = bitcast <2 x i64> %.sroa.067.2.i.i.i.i24 to <4 x i32> ; 2 uses
  %i.ey = shufflevector <4 x i32> %i.ex, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.ez = add <4 x i32> %i.ey, %i.ew              ; 2 uses
  %shift339 = shufflevector <4 x i32> %i.ez, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop340 = add nsw <4 x i32> %i.ez, %shift339
  %5 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ex) ; 2 uses
  %i.fa = icmp sgt i64 %.0.i.i.i.i.i.i.i.i21, 0
  br i1 %i.fa, label %.lr.ph85.i.i.i.i35.preheader, label %.preheader.i.i.i.i27

.lr.ph85.i.i.i.i35.preheader:                     ; preds = %bb.r
  %min.iters.check221 = icmp ult i64 %.0.i.i.i.i.i.i.i.i21, 8
  br i1 %min.iters.check221, label %.lr.ph85.i.i.i.i35.preheader369, label %vector.ph222

vector.ph222:                                     ; preds = %.lr.ph85.i.i.i.i35.preheader
  %n.vec223 = and i64 %.0.i.i.i.i.i.i.i.i21, 9223372036854775800 ; 3 uses
  %i.fb = shufflevector <4 x i32> %foldExtExtBinop340, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body224

vector.body224:                                   ; preds = %vector.body224, %vector.ph222
  %index225 = phi i64 [ 0, %vector.ph222 ], [ %index.next230, %vector.body224 ] ; 2 uses
  %vec.phi226 = phi <4 x i32> [ %i.fb, %vector.ph222 ], [ %i.fe, %vector.body224 ]
  %vec.phi227 = phi <4 x i32> [ zeroinitializer, %vector.ph222 ], [ %i.ff, %vector.body224 ]
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %index225 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %wide.load228 = load <4 x i32>, ptr %i.fc, align 4, !tbaa !28
  %wide.load229 = load <4 x i32>, ptr %i.fd, align 4, !tbaa !28
  %i.fe = add <4 x i32> %wide.load228, %vec.phi226 ; 2 uses
  %i.ff = add <4 x i32> %wide.load229, %vec.phi227 ; 2 uses
  %index.next230 = add nuw i64 %index225, 8       ; 2 uses
  %i.fg = icmp eq i64 %index.next230, %n.vec223
  br i1 %i.fg, label %middle.block231, label %vector.body224, !llvm.loop !164

middle.block231:                                  ; preds = %vector.body224
  %bin.rdx232 = add <4 x i32> %i.ff, %i.fe
  %i.fh = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx232) ; 2 uses
  %cmp.n233 = icmp eq i64 %.0.i.i.i.i.i.i.i.i21, %n.vec223
  br i1 %cmp.n233, label %.preheader.i.i.i.i27, label %.lr.ph85.i.i.i.i35.preheader369

.lr.ph85.i.i.i.i35.preheader369:                  ; preds = %.lr.ph85.i.i.i.i35.preheader, %middle.block231
  %.05683.i.i.i.i36.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i35.preheader ], [ %n.vec223, %middle.block231 ]
  %.07582.i.i.i.i37.ph = phi i32 [ %5, %.lr.ph85.i.i.i.i35.preheader ], [ %i.fh, %middle.block231 ]
  br label %.lr.ph85.i.i.i.i35

.preheader.i.i.i.i27:                             ; preds = %.lr.ph85.i.i.i.i35, %middle.block231, %bb.r
  %.075.lcssa.i.i.i.i28 = phi i32 [ %5, %bb.r ], [ %i.fh, %middle.block231 ], [ %i.fx, %.lr.ph85.i.i.i.i35 ] ; 3 uses
  %i.fi = icmp slt i64 %i.dy, %i.dk
  br i1 %i.fi, label %.lr.ph89.i.i.i.i32.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29

.lr.ph89.i.i.i.i32.preheader:                     ; preds = %.preheader.i.i.i.i27
  %i.fj = shl nsw i64 %i.dv, 2
  %i.fk = add i64 %.0.i.i.i.i.i.i.i.i21, %i.fj
  %i.fl = sub i64 %i.dk, %i.fk                    ; 3 uses
  %min.iters.check237 = icmp ult i64 %i.fl, 8
  br i1 %min.iters.check237, label %.lr.ph89.i.i.i.i32.preheader364, label %vector.ph238

vector.ph238:                                     ; preds = %.lr.ph89.i.i.i.i32.preheader
  %n.vec239 = and i64 %i.fl, -8                   ; 3 uses
  %i.fm = add i64 %i.dy, %n.vec239
  %i.fn = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i28, i64 0
  %i.fo = getelementptr [4 x i8], ptr %i.cy, i64 %i.dy
  br label %vector.body240

vector.body240:                                   ; preds = %vector.body240, %vector.ph238
  %index241 = phi i64 [ 0, %vector.ph238 ], [ %index.next246, %vector.body240 ] ; 2 uses
  %vec.phi242 = phi <4 x i32> [ %i.fn, %vector.ph238 ], [ %i.fr, %vector.body240 ]
  %vec.phi243 = phi <4 x i32> [ zeroinitializer, %vector.ph238 ], [ %i.fs, %vector.body240 ]
  %i.fp = getelementptr [4 x i8], ptr %i.fo, i64 %index241 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %wide.load244 = load <4 x i32>, ptr %i.fp, align 4, !tbaa !28
  %wide.load245 = load <4 x i32>, ptr %i.fq, align 4, !tbaa !28
  %i.fr = add <4 x i32> %wide.load244, %vec.phi242 ; 2 uses
  %i.fs = add <4 x i32> %wide.load245, %vec.phi243 ; 2 uses
  %index.next246 = add nuw i64 %index241, 8       ; 2 uses
  %i.ft = icmp eq i64 %index.next246, %n.vec239
  br i1 %i.ft, label %middle.block247, label %vector.body240, !llvm.loop !165

middle.block247:                                  ; preds = %vector.body240
  %bin.rdx248 = add <4 x i32> %i.fs, %i.fr
  %i.fu = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx248) ; 2 uses
  %cmp.n249 = icmp eq i64 %i.fl, %n.vec239
  br i1 %cmp.n249, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29, label %.lr.ph89.i.i.i.i32.preheader364

.lr.ph89.i.i.i.i32.preheader364:                  ; preds = %.lr.ph89.i.i.i.i32.preheader, %middle.block247
  %.05588.i.i.i.i33.ph = phi i64 [ %i.dy, %.lr.ph89.i.i.i.i32.preheader ], [ %i.fm, %middle.block247 ]
  %.187.i.i.i.i34.ph = phi i32 [ %.075.lcssa.i.i.i.i28, %.lr.ph89.i.i.i.i32.preheader ], [ %i.fu, %middle.block247 ]
  br label %.lr.ph89.i.i.i.i32

.lr.ph85.i.i.i.i35:                               ; preds = %.lr.ph85.i.i.i.i35.preheader369, %.lr.ph85.i.i.i.i35
  %.05683.i.i.i.i36 = phi i64 [ %i.fy, %.lr.ph85.i.i.i.i35 ], [ %.05683.i.i.i.i36.ph, %.lr.ph85.i.i.i.i35.preheader369 ] ; 2 uses
  %.07582.i.i.i.i37 = phi i32 [ %i.fx, %.lr.ph85.i.i.i.i35 ], [ %.07582.i.i.i.i37.ph, %.lr.ph85.i.i.i.i35.preheader369 ]
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %.05683.i.i.i.i36
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !28
  %i.fx = add nsw i32 %i.fw, %.07582.i.i.i.i37    ; 2 uses
  %i.fy = add nuw nsw i64 %.05683.i.i.i.i36, 1    ; 2 uses
  %exitcond.not.i.i.i.i38 = icmp eq i64 %i.fy, %.0.i.i.i.i.i.i.i.i21
  br i1 %exitcond.not.i.i.i.i38, label %.preheader.i.i.i.i27, label %.lr.ph85.i.i.i.i35, !llvm.loop !166

.lr.ph89.i.i.i.i32:                               ; preds = %.lr.ph89.i.i.i.i32.preheader364, %.lr.ph89.i.i.i.i32
  %.05588.i.i.i.i33 = phi i64 [ %i.gc, %.lr.ph89.i.i.i.i32 ], [ %.05588.i.i.i.i33.ph, %.lr.ph89.i.i.i.i32.preheader364 ] ; 2 uses
  %.187.i.i.i.i34 = phi i32 [ %i.gb, %.lr.ph89.i.i.i.i32 ], [ %.187.i.i.i.i34.ph, %.lr.ph89.i.i.i.i32.preheader364 ]
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %.05588.i.i.i.i33
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !28
  %i.gb = add nsw i32 %i.ga, %.187.i.i.i.i34      ; 2 uses
  %i.gc = add nsw i64 %.05588.i.i.i.i33, 1        ; 2 uses
  %i.gd = icmp slt i64 %i.gc, %i.dk
  br i1 %i.gd, label %.lr.ph89.i.i.i.i32, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29, !llvm.loop !167

bb.s:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i20
  %i.ge = load i32, ptr %i.cy, align 4, !tbaa !28 ; 3 uses
  %i.gf = icmp sgt i64 %i.dk, 1
  br i1 %i.gf, label %.lr.ph94.i.i.i.i49.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29

.lr.ph94.i.i.i.i49.preheader:                     ; preds = %bb.s
  %i.gg = add nsw i64 %i.dk, -1                   ; 2 uses
  %min.iters.check253 = icmp ult i64 %i.dk, 9
  br i1 %min.iters.check253, label %.lr.ph94.i.i.i.i49.preheader360, label %vector.ph254

vector.ph254:                                     ; preds = %.lr.ph94.i.i.i.i49.preheader
  %n.vec255 = and i64 %i.gg, -8                   ; 3 uses
  %i.gh = or disjoint i64 %n.vec255, 1
  %i.gi = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.ge, i64 0
  br label %vector.body256

vector.body256:                                   ; preds = %vector.body256, %vector.ph254
  %index257 = phi i64 [ 0, %vector.ph254 ], [ %index.next262, %vector.body256 ] ; 2 uses
  %vec.phi258 = phi <4 x i32> [ %i.gi, %vector.ph254 ], [ %i.gm, %vector.body256 ]
  %vec.phi259 = phi <4 x i32> [ zeroinitializer, %vector.ph254 ], [ %i.gn, %vector.body256 ]
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %index257 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 4
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 20
  %wide.load260 = load <4 x i32>, ptr %i.gk, align 4, !tbaa !28
  %wide.load261 = load <4 x i32>, ptr %i.gl, align 4, !tbaa !28
  %i.gm = add <4 x i32> %wide.load260, %vec.phi258 ; 2 uses
  %i.gn = add <4 x i32> %wide.load261, %vec.phi259 ; 2 uses
  %index.next262 = add nuw i64 %index257, 8       ; 2 uses
  %i.go = icmp eq i64 %index.next262, %n.vec255
  br i1 %i.go, label %middle.block263, label %vector.body256, !llvm.loop !168

middle.block263:                                  ; preds = %vector.body256
  %bin.rdx264 = add <4 x i32> %i.gn, %i.gm
  %i.gp = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx264) ; 2 uses
  %cmp.n265 = icmp eq i64 %i.gg, %n.vec255
  br i1 %cmp.n265, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29, label %.lr.ph94.i.i.i.i49.preheader360

.lr.ph94.i.i.i.i49.preheader360:                  ; preds = %.lr.ph94.i.i.i.i49.preheader, %middle.block263
  %.092.i.i.i.i50.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i49.preheader ], [ %i.gh, %middle.block263 ]
  %.291.i.i.i.i51.ph = phi i32 [ %i.ge, %.lr.ph94.i.i.i.i49.preheader ], [ %i.gp, %middle.block263 ]
  br label %.lr.ph94.i.i.i.i49

.lr.ph94.i.i.i.i49:                               ; preds = %.lr.ph94.i.i.i.i49.preheader360, %.lr.ph94.i.i.i.i49
  %.092.i.i.i.i50 = phi i64 [ %i.gt, %.lr.ph94.i.i.i.i49 ], [ %.092.i.i.i.i50.ph, %.lr.ph94.i.i.i.i49.preheader360 ] ; 2 uses
  %.291.i.i.i.i51 = phi i32 [ %i.gs, %.lr.ph94.i.i.i.i49 ], [ %.291.i.i.i.i51.ph, %.lr.ph94.i.i.i.i49.preheader360 ]
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %.092.i.i.i.i50
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !28
  %i.gs = add nsw i32 %i.gr, %.291.i.i.i.i51      ; 2 uses
  %i.gt = add nuw nsw i64 %.092.i.i.i.i50, 1      ; 2 uses
  %exitcond102.not.i.i.i.i52 = icmp eq i64 %i.gt, %i.dk
  br i1 %exitcond102.not.i.i.i.i52, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29, label %.lr.ph94.i.i.i.i49, !llvm.loop !169

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29: ; preds = %.lr.ph89.i.i.i.i32, %.lr.ph94.i.i.i.i49, %middle.block247, %middle.block263, %bb.s, %.preheader.i.i.i.i27
  %.0.i.i30 = phi i32 [ %i.gs, %.lr.ph94.i.i.i.i49 ], [ %.075.lcssa.i.i.i.i28, %.preheader.i.i.i.i27 ], [ %i.ge, %bb.s ], [ %i.gp, %middle.block263 ], [ %i.fu, %middle.block247 ], [ %i.gb, %.lr.ph89.i.i.i.i32 ]
  %i.gu = sext i32 %.0.i.i30 to i64
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit53

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit53: ; preds = %bb.k, %bb.l, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29
  %.0.i31 = phi i64 [ %i.di, %bb.k ], [ %i.gu, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29 ], [ 0, %bb.l ]
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %.0.i31, i64 noundef 1)
  %i.gv = load ptr, ptr %i.a, align 8, !tbaa !122 ; 13 uses
  %i.gw = icmp eq ptr %i.gv, null
  br i1 %i.gw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit53
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !128 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !129
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.ha
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !28
  %i.hd = load i32, ptr %i.gy, align 4, !tbaa !28
  %i.he = sub nsw i32 %i.hc, %i.hd
  %i.hf = sext i32 %i.he to i64
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit88

bb.u:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit53
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !129 ; 11 uses
  %i.hi = icmp eq i64 %i.hh, 0
  br i1 %i.hi, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit88, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.hj = ptrtoint ptr %i.gv to i64               ; 2 uses
  %i.hk = and i64 %i.hj, 3
  %.not.i.i.i.i.i.i.i.i54 = icmp eq i64 %i.hk, 0
  br i1 %.not.i.i.i.i.i.i.i.i54, label %bb.w, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i55

bb.w:                                             ; preds = %bb.v
  %i.hl = lshr exact i64 %i.hj, 2
  %i.hm = sub nsw i64 0, %i.hl
  %i.hn = and i64 %i.hm, 3
  %i.ho = tail call i64 @llvm.smin.i64(i64 %i.hn, i64 %i.hh)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i55

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i55: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i.i.i56 = phi i64 [ %i.ho, %bb.w ], [ %i.hh, %bb.v ] ; 12 uses
  %i.hp = sub nsw i64 %i.hh, %.0.i.i.i.i.i.i.i.i56 ; 5 uses
  %i.hq = sdiv i64 %i.hp, 8
  %i.hr = shl nsw i64 %i.hq, 3                    ; 2 uses
  %i.hs = sdiv i64 %i.hp, 4                       ; 2 uses
  %i.ht = shl nsw i64 %i.hs, 2                    ; 2 uses
  %i.hu = add nsw i64 %i.hr, %.0.i.i.i.i.i.i.i.i56 ; 2 uses
  %i.hv = add nsw i64 %i.ht, %.0.i.i.i.i.i.i.i.i56 ; 4 uses
  %.off.i.i.i.i57 = add i64 %i.hp, 3
  %.not.i.i.i.i58 = icmp ult i64 %.off.i.i.i.i57, 7
  br i1 %.not.i.i.i.i58, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i55
  %i.hw = getelementptr [4 x i8], ptr %i.gv, i64 %.0.i.i.i.i.i.i.i.i56 ; 2 uses
  %i.hx = load <2 x i64>, ptr %i.hw, align 1, !tbaa !37 ; 2 uses
  %i.hy = icmp sgt i64 %i.hp, 7
  br i1 %i.hy, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.hz = getelementptr i8, ptr %i.hw, i64 16
  %i.ia = load <4 x i32>, ptr %i.hz, align 1, !tbaa !37 ; 2 uses
  %i.ib = bitcast <2 x i64> %i.hx to <4 x i32>    ; 2 uses
  %i.ic = icmp samesign ugt i64 %i.hp, 15
  br i1 %i.ic, label %.lr.ph.preheader.i.i.i.i77, label %._crit_edge.i.i.i.i74

.lr.ph.preheader.i.i.i.i77:                       ; preds = %bb.y
  %.05777.i.i.i.i78 = add nsw i64 %.0.i.i.i.i.i.i.i.i56, 8
  br label %.lr.ph.i.i.i.i79

._crit_edge.i.i.i.i74:                            ; preds = %.lr.ph.i.i.i.i79, %bb.y
  %.lcssa.i.i.i.i75 = phi <4 x i32> [ %i.ia, %bb.y ], [ %i.in, %.lr.ph.i.i.i.i79 ]
  %.sroa.067.0.lcssa.i.i.i.i76 = phi <4 x i32> [ %i.ib, %bb.y ], [ %i.ij, %.lr.ph.i.i.i.i79 ]
  %i.id = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i76, %.lcssa.i.i.i.i75 ; 2 uses
  %i.ie = bitcast <4 x i32> %i.id to <2 x i64>
  %i.if = icmp sgt i64 %i.ht, %i.hr
  br i1 %i.if, label %bb.z, label %bb.aa

.lr.ph.i.i.i.i79:                                 ; preds = %.lr.ph.i.i.i.i79, %.lr.ph.preheader.i.i.i.i77
  %.05780.i.i.i.i80 = phi i64 [ %.057.i.i.i.i83, %.lr.ph.i.i.i.i79 ], [ %.05777.i.i.i.i78, %.lr.ph.preheader.i.i.i.i77 ] ; 3 uses
  %.057.in79.i.i.i.i81 = phi i64 [ %.05780.i.i.i.i80, %.lr.ph.i.i.i.i79 ], [ %.0.i.i.i.i.i.i.i.i56, %.lr.ph.preheader.i.i.i.i77 ]
  %.sroa.067.078.i.i.i.i82 = phi <4 x i32> [ %i.ij, %.lr.ph.i.i.i.i79 ], [ %i.ib, %.lr.ph.preheader.i.i.i.i77 ]
  %i.ig = phi <4 x i32> [ %i.in, %.lr.ph.i.i.i.i79 ], [ %i.ia, %.lr.ph.preheader.i.i.i.i77 ]
  %i.ih = getelementptr inbounds [4 x i8], ptr %i.gv, i64 %.05780.i.i.i.i80
  %i.ii = load <4 x i32>, ptr %i.ih, align 1, !tbaa !37
  %i.ij = add <4 x i32> %i.ii, %.sroa.067.078.i.i.i.i82 ; 2 uses
  %i.ik = getelementptr [4 x i8], ptr %i.gv, i64 %.057.in79.i.i.i.i81
  %i.il = getelementptr i8, ptr %i.ik, i64 48
  %i.im = load <4 x i32>, ptr %i.il, align 1, !tbaa !37
  %i.in = add <4 x i32> %i.im, %i.ig              ; 2 uses
  %.057.i.i.i.i83 = add nsw i64 %.05780.i.i.i.i80, 8 ; 2 uses
  %i.io = icmp slt i64 %.057.i.i.i.i83, %i.hu
  br i1 %i.io, label %.lr.ph.i.i.i.i79, label %._crit_edge.i.i.i.i74, !llvm.loop !38

bb.z:                                             ; preds = %._crit_edge.i.i.i.i74
  %i.ip = getelementptr inbounds [4 x i8], ptr %i.gv, i64 %i.hu
  %i.iq = load <4 x i32>, ptr %i.ip, align 1, !tbaa !37
  %i.ir = add <4 x i32> %i.iq, %i.id
  %i.is = bitcast <4 x i32> %i.ir to <2 x i64>
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge.i.i.i.i74, %bb.x
  %.sroa.067.2.i.i.i.i59 = phi <2 x i64> [ %i.hx, %bb.x ], [ %i.is, %bb.z ], [ %i.ie, %._crit_edge.i.i.i.i74 ] ; 2 uses
  %i.it = bitcast <2 x i64> %.sroa.067.2.i.i.i.i59 to <4 x i32>
  %i.iu = bitcast <2 x i64> %.sroa.067.2.i.i.i.i59 to <4 x i32> ; 2 uses
  %i.iv = shufflevector <4 x i32> %i.iu, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.iw = add <4 x i32> %i.iv, %i.it              ; 2 uses
  %shift342 = shufflevector <4 x i32> %i.iw, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop343 = add nsw <4 x i32> %i.iw, %shift342
  %6 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.iu) ; 2 uses
  %i.ix = icmp sgt i64 %.0.i.i.i.i.i.i.i.i56, 0
  br i1 %i.ix, label %.lr.ph85.i.i.i.i70.preheader, label %.preheader.i.i.i.i62

.lr.ph85.i.i.i.i70.preheader:                     ; preds = %bb.aa
  %min.iters.check269 = icmp ult i64 %.0.i.i.i.i.i.i.i.i56, 8
  br i1 %min.iters.check269, label %.lr.ph85.i.i.i.i70.preheader354, label %vector.ph270

vector.ph270:                                     ; preds = %.lr.ph85.i.i.i.i70.preheader
  %n.vec271 = and i64 %.0.i.i.i.i.i.i.i.i56, 9223372036854775800 ; 3 uses
  %i.iy = shufflevector <4 x i32> %foldExtExtBinop343, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body272

vector.body272:                                   ; preds = %vector.body272, %vector.ph270
  %index273 = phi i64 [ 0, %vector.ph270 ], [ %index.next278, %vector.body272 ] ; 2 uses
  %vec.phi274 = phi <4 x i32> [ %i.iy, %vector.ph270 ], [ %i.jb, %vector.body272 ]
  %vec.phi275 = phi <4 x i32> [ zeroinitializer, %vector.ph270 ], [ %i.jc, %vector.body272 ]
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %index273 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %wide.load276 = load <4 x i32>, ptr %i.iz, align 4, !tbaa !28
  %wide.load277 = load <4 x i32>, ptr %i.ja, align 4, !tbaa !28
  %i.jb = add <4 x i32> %wide.load276, %vec.phi274 ; 2 uses
  %i.jc = add <4 x i32> %wide.load277, %vec.phi275 ; 2 uses
  %index.next278 = add nuw i64 %index273, 8       ; 2 uses
  %i.jd = icmp eq i64 %index.next278, %n.vec271
  br i1 %i.jd, label %middle.block279, label %vector.body272, !llvm.loop !170

middle.block279:                                  ; preds = %vector.body272
  %bin.rdx280 = add <4 x i32> %i.jc, %i.jb
  %i.je = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx280) ; 2 uses
  %cmp.n281 = icmp eq i64 %.0.i.i.i.i.i.i.i.i56, %n.vec271
  br i1 %cmp.n281, label %.preheader.i.i.i.i62, label %.lr.ph85.i.i.i.i70.preheader354

.lr.ph85.i.i.i.i70.preheader354:                  ; preds = %.lr.ph85.i.i.i.i70.preheader, %middle.block279
  %.05683.i.i.i.i71.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i70.preheader ], [ %n.vec271, %middle.block279 ]
  %.07582.i.i.i.i72.ph = phi i32 [ %6, %.lr.ph85.i.i.i.i70.preheader ], [ %i.je, %middle.block279 ]
  br label %.lr.ph85.i.i.i.i70

.preheader.i.i.i.i62:                             ; preds = %.lr.ph85.i.i.i.i70, %middle.block279, %bb.aa
  %.075.lcssa.i.i.i.i63 = phi i32 [ %6, %bb.aa ], [ %i.je, %middle.block279 ], [ %i.ju, %.lr.ph85.i.i.i.i70 ] ; 3 uses
  %i.jf = icmp slt i64 %i.hv, %i.hh
  br i1 %i.jf, label %.lr.ph89.i.i.i.i67.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i64

.lr.ph89.i.i.i.i67.preheader:                     ; preds = %.preheader.i.i.i.i62
  %i.jg = shl nsw i64 %i.hs, 2
  %i.jh = add i64 %.0.i.i.i.i.i.i.i.i56, %i.jg
  %i.ji = sub i64 %i.hh, %i.jh                    ; 3 uses
  %min.iters.check285 = icmp ult i64 %i.ji, 8
  br i1 %min.iters.check285, label %.lr.ph89.i.i.i.i67.preheader349, label %vector.ph286

vector.ph286:                                     ; preds = %.lr.ph89.i.i.i.i67.preheader
  %n.vec287 = and i64 %i.ji, -8                   ; 3 uses
  %i.jj = add i64 %i.hv, %n.vec287
  %i.jk = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i63, i64 0
  %i.jl = getelementptr [4 x i8], ptr %i.gv, i64 %i.hv
  br label %vector.body288

vector.body288:                                   ; preds = %vector.body288, %vector.ph286
  %index289 = phi i64 [ 0, %vector.ph286 ], [ %index.next294, %vector.body288 ] ; 2 uses
  %vec.phi290 = phi <4 x i32> [ %i.jk, %vector.ph286 ], [ %i.jo, %vector.body288 ]
  %vec.phi291 = phi <4 x i32> [ zeroinitializer, %vector.ph286 ], [ %i.jp, %vector.body288 ]
  %i.jm = getelementptr [4 x i8], ptr %i.jl, i64 %index289 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  %wide.load292 = load <4 x i32>, ptr %i.jm, align 4, !tbaa !28
  %wide.load293 = load <4 x i32>, ptr %i.jn, align 4, !tbaa !28
  %i.jo = add <4 x i32> %wide.load292, %vec.phi290 ; 2 uses
  %i.jp = add <4 x i32> %wide.load293, %vec.phi291 ; 2 uses
  %index.next294 = add nuw i64 %index289, 8       ; 2 uses
  %i.jq = icmp eq i64 %index.next294, %n.vec287
  br i1 %i.jq, label %middle.block295, label %vector.body288, !llvm.loop !171

middle.block295:                                  ; preds = %vector.body288
  %bin.rdx296 = add <4 x i32> %i.jp, %i.jo
  %i.jr = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx296) ; 2 uses
  %cmp.n297 = icmp eq i64 %i.ji, %n.vec287
  br i1 %cmp.n297, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i64, label %.lr.ph89.i.i.i.i67.preheader349

.lr.ph89.i.i.i.i67.preheader349:                  ; preds = %.lr.ph89.i.i.i.i67.preheader, %middle.block295
  %.05588.i.i.i.i68.ph = phi i64 [ %i.hv, %.lr.ph89.i.i.i.i67.preheader ], [ %i.jj, %middle.block295 ]
  %.187.i.i.i.i69.ph = phi i32 [ %.075.lcssa.i.i.i.i63, %.lr.ph89.i.i.i.i67.preheader ], [ %i.jr, %middle.block295 ]
  br label %.lr.ph89.i.i.i.i67

.lr.ph85.i.i.i.i70:                               ; preds = %.lr.ph85.i.i.i.i70.preheader354, %.lr.ph85.i.i.i.i70
  %.05683.i.i.i.i71 = phi i64 [ %i.jv, %.lr.ph85.i.i.i.i70 ], [ %.05683.i.i.i.i71.ph, %.lr.ph85.i.i.i.i70.preheader354 ] ; 2 uses
  %.07582.i.i.i.i72 = phi i32 [ %i.ju, %.lr.ph85.i.i.i.i70 ], [ %.07582.i.i.i.i72.ph, %.lr.ph85.i.i.i.i70.preheader354 ]
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %.05683.i.i.i.i71
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !28
  %i.ju = add nsw i32 %i.jt, %.07582.i.i.i.i72    ; 2 uses
  %i.jv = add nuw nsw i64 %.05683.i.i.i.i71, 1    ; 2 uses
  %exitcond.not.i.i.i.i73 = icmp eq i64 %i.jv, %.0.i.i.i.i.i.i.i.i56
  br i1 %exitcond.not.i.i.i.i73, label %.preheader.i.i.i.i62, label %.lr.ph85.i.i.i.i70, !llvm.loop !172

.lr.ph89.i.i.i.i67:                               ; preds = %.lr.ph89.i.i.i.i67.preheader349, %.lr.ph89.i.i.i.i67
  %.05588.i.i.i.i68 = phi i64 [ %i.jz, %.lr.ph89.i.i.i.i67 ], [ %.05588.i.i.i.i68.ph, %.lr.ph89.i.i.i.i67.preheader349 ] ; 2 uses
  %.187.i.i.i.i69 = phi i32 [ %i.jy, %.lr.ph89.i.i.i.i67 ], [ %.187.i.i.i.i69.ph, %.lr.ph89.i.i.i.i67.preheader349 ]
  %i.jw = getelementptr inbounds [4 x i8], ptr %i.gv, i64 %.05588.i.i.i.i68
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !28
  %i.jy = add nsw i32 %i.jx, %.187.i.i.i.i69      ; 2 uses
  %i.jz = add nsw i64 %.05588.i.i.i.i68, 1        ; 2 uses
  %i.ka = icmp slt i64 %i.jz, %i.hh
  br i1 %i.ka, label %.lr.ph89.i.i.i.i67, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i64, !llvm.loop !173

bb.ab:                                            ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i55
  %i.kb = load i32, ptr %i.gv, align 4, !tbaa !28 ; 3 uses
  %i.kc = icmp sgt i64 %i.hh, 1
  br i1 %i.kc, label %.lr.ph94.i.i.i.i84.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i64

.lr.ph94.i.i.i.i84.preheader:                     ; preds = %bb.ab
  %i.kd = add nsw i64 %i.hh, -1                   ; 2 uses
  %min.iters.check301 = icmp ult i64 %i.hh, 9
  br i1 %min.iters.check301, label %.lr.ph94.i.i.i.i84.preheader346, label %vector.ph302

vector.ph302:                                     ; preds = %.lr.ph94.i.i.i.i84.preheader
  %n.vec303 = and i64 %i.kd, -8                   ; 3 uses
  %i.ke = or disjoint i64 %n.vec303, 1
  %i.kf = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.kb, i64 0
  br label %vector.body304

vector.body304:                                   ; preds = %vector.body304, %vector.ph302
  %index305 = phi i64 [ 0, %vector.ph302 ], [ %index.next310, %vector.body304 ] ; 2 uses
  %vec.phi306 = phi <4 x i32> [ %i.kf, %vector.ph302 ], [ %i.kj, %vector.body304 ]
  %vec.phi307 = phi <4 x i32> [ zeroinitializer, %vector.ph302 ], [ %i.kk, %vector.body304 ]
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %index305 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 4
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 20
  %wide.load308 = load <4 x i32>, ptr %i.kh, align 4, !tbaa !28
  %wide.load309 = load <4 x i32>, ptr %i.ki, align 4, !tbaa !28
  %i.kj = add <4 x i32> %wide.load308, %vec.phi306 ; 2 uses
  %i.kk = add <4 x i32> %wide.load309, %vec.phi307 ; 2 uses
  %index.next310 = add nuw i64 %index305, 8       ; 2 uses
  %i.kl = icmp eq i64 %index.next310, %n.vec303
  br i1 %i.kl, label %middle.block311, label %vector.body304, !llvm.loop !174

middle.block311:                                  ; preds = %vector.body304
  %bin.rdx312 = add <4 x i32> %i.kk, %i.kj
  %i.km = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx312) ; 2 uses
  %cmp.n313 = icmp eq i64 %i.kd, %n.vec303
  br i1 %cmp.n313, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i64, label %.lr.ph94.i.i.i.i84.preheader346

.lr.ph94.i.i.i.i84.preheader346:                  ; preds = %.lr.ph94.i.i.i.i84.preheader, %middle.block311
  %.092.i.i.i.i85.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i84.preheader ], [ %i.ke, %middle.block311 ]
  %.291.i.i.i.i86.ph = phi i32 [ %i.kb, %.lr.ph94.i.i.i.i84.preheader ], [ %i.km, %middle.block311 ]
  br label %.lr.ph94.i.i.i.i84

.lr.ph94.i.i.i.i84:                               ; preds = %.lr.ph94.i.i.i.i84.preheader346, %.lr.ph94.i.i.i.i84
  %.092.i.i.i.i85 = phi i64 [ %i.kq, %.lr.ph94.i.i.i.i84 ], [ %.092.i.i.i.i85.ph, %.lr.ph94.i.i.i.i84.preheader346 ] ; 2 uses
  %.291.i.i.i.i86 = phi i32 [ %i.kp, %.lr.ph94.i.i.i.i84 ], [ %.291.i.i.i.i86.ph, %.lr.ph94.i.i.i.i84.preheader346 ]
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %.092.i.i.i.i85
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !28
  %i.kp = add nsw i32 %i.ko, %.291.i.i.i.i86      ; 2 uses
  %i.kq = add nuw nsw i64 %.092.i.i.i.i85, 1      ; 2 uses
  %exitcond102.not.i.i.i.i87 = icmp eq i64 %i.kq, %i.hh
  br i1 %exitcond102.not.i.i.i.i87, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i64, label %.lr.ph94.i.i.i.i84, !llvm.loop !175

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i64: ; preds = %.lr.ph89.i.i.i.i67, %.lr.ph94.i.i.i.i84, %middle.block295, %middle.block311, %bb.ab, %.preheader.i.i.i.i62
  %.0.i.i65 = phi i32 [ %i.kp, %.lr.ph94.i.i.i.i84 ], [ %.075.lcssa.i.i.i.i63, %.preheader.i.i.i.i62 ], [ %i.kb, %bb.ab ], [ %i.km, %middle.block311 ], [ %i.jr, %middle.block295 ], [ %i.jy, %.lr.ph89.i.i.i.i67 ]
  %i.kr = sext i32 %.0.i.i65 to i64
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit88

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit88: ; preds = %bb.t, %bb.u, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i64
  %.0.i66 = phi i64 [ %i.hf, %bb.t ], [ %i.kr, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i64 ], [ 0, %bb.u ]
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %.0.i66, i64 noundef 1)
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.kt = load i64, ptr %i.ks, align 8, !tbaa !129 ; 2 uses
  %i.ku = icmp sgt i64 %i.kt, 0
  br i1 %i.ku, label %.lr.ph113, label %._crit_edge114

.lr.ph113:                                        ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit88
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !148 ; 5 uses
  %i.kx = ptrtoaddr ptr %i.kw to i64              ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !149 ; 4 uses
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !128
  %i.lc = load ptr, ptr %i.a, align 8, !tbaa !122 ; 2 uses
  %i.ld = icmp eq ptr %i.lc, null
  br label %bb.ac

._crit_edge114:                                   ; preds = %._crit_edge, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit88
  ret void

bb.ac:                                            ; preds = %.lr.ph113, %._crit_edge
  %indvars.iv134 = phi i64 [ 0, %.lr.ph113 ], [ %indvars.iv.next135, %._crit_edge ] ; 4 uses
  %.017111 = phi i32 [ 0, %.lr.ph113 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %indvars.iv134 ; 2 uses
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !28
  %i.lg = sext i32 %i.lf to i64                   ; 8 uses
  br i1 %i.ld, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.lh = getelementptr i8, ptr %i.le, i64 4
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !28
  %i.lj = sext i32 %i.li to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

bb.ae:                                            ; preds = %bb.ac
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %indvars.iv134
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !28
  %i.lm = sext i32 %i.ll to i64
  %i.ln = add nsw i64 %i.lm, %i.lg
end_hunk_4
begin_hunk_5_@_ZN3igl4findIdN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEES3_S3_EEvRKNS1_12SparseMatrixIT_Li0EiEERNS1_9DenseBaseIT0_EERNS9_IT1_EERNS9_IT2_EE:bb.a
  %i.mp = add i64 %index330, %i.lu                ; 3 uses
  %i.mq = add i64 %index330, %i.lg                ; 2 uses
  %i.mr = getelementptr inbounds [8 x i8], ptr %i.kw, i64 %i.mq
  %wide.load331 = load <2 x double>, ptr %i.mr, align 8, !tbaa !152
  %i.ms = getelementptr inbounds [8 x i8], ptr %i.lp, i64 %i.mp
  store <2 x double> %wide.load331, ptr %i.ms, align 8, !tbaa !152
  %i.mt = getelementptr inbounds [4 x i8], ptr %i.kz, i64 %i.mq
  %wide.load332 = load <2 x i32>, ptr %i.mt, align 4, !tbaa !28
  %i.mu = sitofp <2 x i32> %wide.load332 to <2 x double>
  %i.mv = getelementptr inbounds [8 x i8], ptr %i.lq, i64 %i.mp
  store <2 x double> %i.mu, ptr %i.mv, align 8, !tbaa !152
  %i.mw = getelementptr inbounds [8 x i8], ptr %i.lt, i64 %i.mp
  store <2 x double> %broadcast.splat, ptr %i.mw, align 8, !tbaa !152
  %index.next333 = add nuw i64 %index330, 2       ; 2 uses
  %i.mx = icmp eq i64 %index.next333, %n.vec328
  br i1 %i.mx, label %middle.block334, label %vector.body329, !llvm.loop !176

middle.block334:                                  ; preds = %vector.body329
  %cmp.n335 = icmp eq i64 %i.lv, %n.vec328
  br i1 %cmp.n335, label %._crit_edge.loopexit, label %scalar.ph325.preheader

scalar.ph325.preheader:                           ; preds = %vector.memcheck, %.lr.ph, %middle.block334
  %indvars.iv.ph = phi i64 [ %i.lu, %vector.memcheck ], [ %i.lu, %.lr.ph ], [ %i.mn, %middle.block334 ] ; 5 uses
  %.sroa.8.0109.ph = phi i64 [ %i.lg, %vector.memcheck ], [ %i.lg, %.lr.ph ], [ %i.mo, %middle.block334 ] ; 6 uses
  %i.my = sub i64 %.sink.i, %.sroa.8.0109.ph
  %.neg = add i64 %.sroa.8.0109.ph, 1
  %xtraiter = and i64 %i.my, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph325.prol.loopexit, label %scalar.ph325.prol

scalar.ph325.prol:                                ; preds = %scalar.ph325.preheader
  %i.mz = getelementptr inbounds [8 x i8], ptr %i.kw, i64 %.sroa.8.0109.ph
  %i.na = load double, ptr %i.mz, align 8, !tbaa !152
  %i.nb = getelementptr inbounds [8 x i8], ptr %i.lp, i64 %indvars.iv.ph
  store double %i.na, ptr %i.nb, align 8, !tbaa !152
  %i.nc = getelementptr inbounds [4 x i8], ptr %i.kz, i64 %.sroa.8.0109.ph
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !28
  %i.ne = sitofp i32 %i.nd to double
  %i.nf = getelementptr inbounds [8 x i8], ptr %i.lq, i64 %indvars.iv.ph
  store double %i.ne, ptr %i.nf, align 8, !tbaa !152
  %i.ng = getelementptr inbounds [8 x i8], ptr %i.lt, i64 %indvars.iv.ph
  store double %i.ls, ptr %i.ng, align 8, !tbaa !152
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.ph, 1 ; 2 uses
  %i.nh = add nsw i64 %.sroa.8.0109.ph, 1
  br label %scalar.ph325.prol.loopexit

scalar.ph325.prol.loopexit:                       ; preds = %scalar.ph325.prol, %scalar.ph325.preheader
  %indvars.iv.next.lcssa345.unr = phi i64 [ poison, %scalar.ph325.preheader ], [ %indvars.iv.next.prol, %scalar.ph325.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph325.preheader ], [ %indvars.iv.next.prol, %scalar.ph325.prol ]
  %.sroa.8.0109.unr = phi i64 [ %.sroa.8.0109.ph, %scalar.ph325.preheader ], [ %i.nh, %scalar.ph325.prol ]
  %i.ni = icmp eq i64 %.sink.i, %.neg
  br i1 %i.ni, label %._crit_edge.loopexit, label %scalar.ph325

._crit_edge.loopexit:                             ; preds = %scalar.ph325.prol.loopexit, %scalar.ph325, %middle.block334
  %indvars.iv.next.lcssa = phi i64 [ %i.mn, %middle.block334 ], [ %indvars.iv.next.lcssa345.unr, %scalar.ph325.prol.loopexit ], [ %indvars.iv.next.1, %scalar.ph325 ]
  %i.nj = trunc nsw i64 %indvars.iv.next.lcssa to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %.1.lcssa = phi i32 [ %.017111, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit ], [ %i.nj, %._crit_edge.loopexit ]
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1 ; 2 uses
  %exitcond137.not = icmp eq i64 %indvars.iv.next135, %i.kt
  br i1 %exitcond137.not, label %._crit_edge114, label %bb.ac, !llvm.loop !177

scalar.ph325:                                     ; preds = %scalar.ph325.prol.loopexit, %scalar.ph325
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph325 ], [ %indvars.iv.unr, %scalar.ph325.prol.loopexit ] ; 5 uses
  %.sroa.8.0109 = phi i64 [ %i.ob, %scalar.ph325 ], [ %.sroa.8.0109.unr, %scalar.ph325.prol.loopexit ] ; 4 uses
  %i.nk = getelementptr inbounds [8 x i8], ptr %i.kw, i64 %.sroa.8.0109
  %i.nl = load double, ptr %i.nk, align 8, !tbaa !152
  %i.nm = getelementptr inbounds [8 x i8], ptr %i.lp, i64 %indvars.iv
  store double %i.nl, ptr %i.nm, align 8, !tbaa !152
  %i.nn = getelementptr inbounds [4 x i8], ptr %i.kz, i64 %.sroa.8.0109
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !28
  %i.np = sitofp i32 %i.no to double
  %i.nq = getelementptr inbounds [8 x i8], ptr %i.lq, i64 %indvars.iv
  store double %i.np, ptr %i.nq, align 8, !tbaa !152
  %i.nr = getelementptr inbounds [8 x i8], ptr %i.lt, i64 %indvars.iv
  store double %i.ls, ptr %i.nr, align 8, !tbaa !152
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.ns = add nsw i64 %.sroa.8.0109, 1            ; 2 uses
  %i.nt = getelementptr inbounds [8 x i8], ptr %i.kw, i64 %i.ns
  %i.nu = load double, ptr %i.nt, align 8, !tbaa !152
  %i.nv = getelementptr inbounds [8 x i8], ptr %i.lp, i64 %indvars.iv.next
  store double %i.nu, ptr %i.nv, align 8, !tbaa !152
  %i.nw = getelementptr inbounds [4 x i8], ptr %i.kz, i64 %i.ns
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !28
  %i.ny = sitofp i32 %i.nx to double
  %i.nz = getelementptr inbounds [8 x i8], ptr %i.lq, i64 %indvars.iv.next
  store double %i.ny, ptr %i.nz, align 8, !tbaa !152
  %i.oa = getelementptr inbounds [8 x i8], ptr %i.lt, i64 %indvars.iv.next
  store double %i.ls, ptr %i.oa, align 8, !tbaa !152
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ob = add nsw i64 %.sroa.8.0109, 2            ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ob, %.sink.i
  br i1 %exitcond.not.1, label %._crit_edge.loopexit, label %scalar.ph325, !llvm.loop !178
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl4findIdN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES3_NS2_IdLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_12SparseMatrixIT_Li0EiEERNS1_9DenseBaseIT0_EERNSA_IT1_EERNSA_IT2_EE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !122  ; 13 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !128  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !129
  %i.h = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !28
  %i.j = load i32, ptr %i.e, align 4, !tbaa !28
  %i.k = sub nsw i32 %i.i, %i.j
  %i.l = sext i32 %i.k to i64
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !129  ; 11 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.q = and i64 %i.p, 3
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.e, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.r = lshr exact i64 %i.p, 2
  %i.s = sub nsw i64 0, %i.r
  %i.t = and i64 %i.s, 3
  %i.u = tail call i64 @llvm.smin.i64(i64 %i.t, i64 %i.n)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i.i.i.i.i.i = phi i64 [ %i.u, %bb.e ], [ %i.n, %bb.d ] ; 12 uses
  %i.v = sub nsw i64 %i.n, %.0.i.i.i.i.i.i.i.i    ; 5 uses
  %i.w = sdiv i64 %i.v, 8
  %i.x = shl nsw i64 %i.w, 3                      ; 2 uses
  %i.y = sdiv i64 %i.v, 4                         ; 2 uses
  %i.z = shl nsw i64 %i.y, 2                      ; 2 uses
  %i.aa = add nsw i64 %i.x, %.0.i.i.i.i.i.i.i.i   ; 2 uses
  %i.ab = add nsw i64 %i.z, %.0.i.i.i.i.i.i.i.i   ; 4 uses
  %.off.i.i.i.i = add i64 %i.v, 3
  %.not.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 7
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.ac = getelementptr [4 x i8], ptr %i.b, i64 %.0.i.i.i.i.i.i.i.i ; 2 uses
  %i.ad = load <2 x i64>, ptr %i.ac, align 1, !tbaa !37 ; 2 uses
  %i.ae = icmp sgt i64 %i.v, 7
  br i1 %i.ae, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr i8, ptr %i.ac, i64 16
  %i.ag = load <4 x i32>, ptr %i.af, align 1, !tbaa !37 ; 2 uses
  %i.ah = bitcast <2 x i64> %i.ad to <4 x i32>    ; 2 uses
  %i.ai = icmp samesign ugt i64 %i.v, 15
  br i1 %i.ai, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.g
  %.05777.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i, 8
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.g
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.ag, %bb.g ], [ %i.at, %.lr.ph.i.i.i.i ]
  %.sroa.067.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.ah, %bb.g ], [ %i.ap, %.lr.ph.i.i.i.i ]
  %i.aj = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i, %.lcssa.i.i.i.i ; 2 uses
  %i.ak = bitcast <4 x i32> %i.aj to <2 x i64>
  %i.al = icmp sgt i64 %i.z, %i.x
  br i1 %i.al, label %bb.h, label %bb.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.05780.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.05777.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.057.in79.i.i.i.i = phi i64 [ %.05780.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i ]
  %.sroa.067.078.i.i.i.i = phi <4 x i32> [ %i.ap, %.lr.ph.i.i.i.i ], [ %i.ah, %.lr.ph.preheader.i.i.i.i ]
  %i.am = phi <4 x i32> [ %i.at, %.lr.ph.i.i.i.i ], [ %i.ag, %.lr.ph.preheader.i.i.i.i ]
  %i.an = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.05780.i.i.i.i
  %i.ao = load <4 x i32>, ptr %i.an, align 1, !tbaa !37
  %i.ap = add <4 x i32> %i.ao, %.sroa.067.078.i.i.i.i ; 2 uses
  %i.aq = getelementptr [4 x i8], ptr %i.b, i64 %.057.in79.i.i.i.i
  %i.ar = getelementptr i8, ptr %i.aq, i64 48
  %i.as = load <4 x i32>, ptr %i.ar, align 1, !tbaa !37
  %i.at = add <4 x i32> %i.as, %i.am              ; 2 uses
  %.057.i.i.i.i = add nsw i64 %.05780.i.i.i.i, 8  ; 2 uses
  %i.au = icmp slt i64 %.057.i.i.i.i, %i.aa
  br i1 %i.au, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !38

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.av = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.aa
  %i.aw = load <4 x i32>, ptr %i.av, align 1, !tbaa !37
  %i.ax = add <4 x i32> %i.aw, %i.aj
  %i.ay = bitcast <4 x i32> %i.ax to <2 x i64>
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i, %bb.f
  %.sroa.067.2.i.i.i.i = phi <2 x i64> [ %i.ad, %bb.f ], [ %i.ay, %bb.h ], [ %i.ak, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.az = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32>
  %i.ba = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32> ; 2 uses
  %i.bb = shufflevector <4 x i32> %i.ba, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.bc = add <4 x i32> %i.bb, %i.az              ; 2 uses
  %shift = shufflevector <4 x i32> %i.bc, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = add nsw <4 x i32> %i.bc, %shift
  %4 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ba) ; 2 uses
  %i.bd = icmp sgt i64 %.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.bd, label %.lr.ph85.i.i.i.i.preheader, label %.preheader.i.i.i.i

.lr.ph85.i.i.i.i.preheader:                       ; preds = %bb.i
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph85.i.i.i.i.preheader384, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph85.i.i.i.i.preheader
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %i.be = shufflevector <4 x i32> %foldExtExtBinop, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.be, %vector.ph ], [ %i.bh, %vector.body ]
  %vec.phi188 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bi, %vector.body ]
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load = load <4 x i32>, ptr %i.bf, align 4, !tbaa !28
  %wide.load189 = load <4 x i32>, ptr %i.bg, align 4, !tbaa !28
  %i.bh = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.bi = add <4 x i32> %wide.load189, %vec.phi188 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !179

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bi, %i.bh
  %i.bk = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i.preheader384

.lr.ph85.i.i.i.i.preheader384:                    ; preds = %.lr.ph85.i.i.i.i.preheader, %middle.block
  %.05683.i.i.i.i.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.07582.i.i.i.i.ph = phi i32 [ %4, %.lr.ph85.i.i.i.i.preheader ], [ %i.bk, %middle.block ]
  br label %.lr.ph85.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i, %middle.block, %bb.i
  %.075.lcssa.i.i.i.i = phi i32 [ %4, %bb.i ], [ %i.bk, %middle.block ], [ %i.ca, %.lr.ph85.i.i.i.i ] ; 3 uses
  %i.bl = icmp slt i64 %i.ab, %i.n
  br i1 %i.bl, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i

.lr.ph89.i.i.i.i.preheader:                       ; preds = %.preheader.i.i.i.i
  %i.bm = shl nsw i64 %i.y, 2
  %i.bn = add i64 %.0.i.i.i.i.i.i.i.i, %i.bm
  %i.bo = sub i64 %i.n, %i.bn                     ; 3 uses
  %min.iters.check191 = icmp ult i64 %i.bo, 8
  br i1 %min.iters.check191, label %.lr.ph89.i.i.i.i.preheader379, label %vector.ph192

vector.ph192:                                     ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec193 = and i64 %i.bo, -8                   ; 3 uses
  %i.bp = add i64 %i.ab, %n.vec193
  %i.bq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i, i64 0
  %i.br = getelementptr [4 x i8], ptr %i.b, i64 %i.ab
  br label %vector.body194

vector.body194:                                   ; preds = %vector.body194, %vector.ph192
  %index195 = phi i64 [ 0, %vector.ph192 ], [ %index.next200, %vector.body194 ] ; 2 uses
  %vec.phi196 = phi <4 x i32> [ %i.bq, %vector.ph192 ], [ %i.bu, %vector.body194 ]
  %vec.phi197 = phi <4 x i32> [ zeroinitializer, %vector.ph192 ], [ %i.bv, %vector.body194 ]
  %i.bs = getelementptr [4 x i8], ptr %i.br, i64 %index195 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %wide.load198 = load <4 x i32>, ptr %i.bs, align 4, !tbaa !28
  %wide.load199 = load <4 x i32>, ptr %i.bt, align 4, !tbaa !28
  %i.bu = add <4 x i32> %wide.load198, %vec.phi196 ; 2 uses
  %i.bv = add <4 x i32> %wide.load199, %vec.phi197 ; 2 uses
  %index.next200 = add nuw i64 %index195, 8       ; 2 uses
  %i.bw = icmp eq i64 %index.next200, %n.vec193
  br i1 %i.bw, label %middle.block201, label %vector.body194, !llvm.loop !180

middle.block201:                                  ; preds = %vector.body194
  %bin.rdx202 = add <4 x i32> %i.bv, %i.bu
  %i.bx = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx202) ; 2 uses
  %cmp.n203 = icmp eq i64 %i.bo, %n.vec193
  br i1 %cmp.n203, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, label %.lr.ph89.i.i.i.i.preheader379

.lr.ph89.i.i.i.i.preheader379:                    ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block201
  %.05588.i.i.i.i.ph = phi i64 [ %i.ab, %.lr.ph89.i.i.i.i.preheader ], [ %i.bp, %middle.block201 ]
  %.187.i.i.i.i.ph = phi i32 [ %.075.lcssa.i.i.i.i, %.lr.ph89.i.i.i.i.preheader ], [ %i.bx, %middle.block201 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph85.i.i.i.i:                                 ; preds = %.lr.ph85.i.i.i.i.preheader384, %.lr.ph85.i.i.i.i
  %.05683.i.i.i.i = phi i64 [ %i.cb, %.lr.ph85.i.i.i.i ], [ %.05683.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader384 ] ; 2 uses
  %.07582.i.i.i.i = phi i32 [ %i.ca, %.lr.ph85.i.i.i.i ], [ %.07582.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader384 ]
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.05683.i.i.i.i
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !28
  %i.ca = add nsw i32 %i.bz, %.07582.i.i.i.i      ; 2 uses
  %i.cb = add nuw nsw i64 %.05683.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.cb, %.0.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i, !llvm.loop !181

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader379, %.lr.ph89.i.i.i.i
  %.05588.i.i.i.i = phi i64 [ %i.cf, %.lr.ph89.i.i.i.i ], [ %.05588.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader379 ] ; 2 uses
  %.187.i.i.i.i = phi i32 [ %i.ce, %.lr.ph89.i.i.i.i ], [ %.187.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader379 ]
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.05588.i.i.i.i
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !28
  %i.ce = add nsw i32 %i.cd, %.187.i.i.i.i        ; 2 uses
  %i.cf = add nsw i64 %.05588.i.i.i.i, 1          ; 2 uses
  %i.cg = icmp slt i64 %i.cf, %i.n
  br i1 %i.cg, label %.lr.ph89.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, !llvm.loop !182

bb.j:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.ch = load i32, ptr %i.b, align 4, !tbaa !28  ; 3 uses
  %i.ci = icmp sgt i64 %i.n, 1
  br i1 %i.ci, label %.lr.ph94.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i

.lr.ph94.i.i.i.i.preheader:                       ; preds = %bb.j
  %i.cj = add nsw i64 %i.n, -1                    ; 2 uses
  %min.iters.check207 = icmp ult i64 %i.n, 9
  br i1 %min.iters.check207, label %.lr.ph94.i.i.i.i.preheader375, label %vector.ph208

vector.ph208:                                     ; preds = %.lr.ph94.i.i.i.i.preheader
  %n.vec209 = and i64 %i.cj, -8                   ; 3 uses
  %i.ck = or disjoint i64 %n.vec209, 1
  %i.cl = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.ch, i64 0
  br label %vector.body210

vector.body210:                                   ; preds = %vector.body210, %vector.ph208
  %index211 = phi i64 [ 0, %vector.ph208 ], [ %index.next216, %vector.body210 ] ; 2 uses
  %vec.phi212 = phi <4 x i32> [ %i.cl, %vector.ph208 ], [ %i.cp, %vector.body210 ]
  %vec.phi213 = phi <4 x i32> [ zeroinitializer, %vector.ph208 ], [ %i.cq, %vector.body210 ]
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index211 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 20
  %wide.load214 = load <4 x i32>, ptr %i.cn, align 4, !tbaa !28
  %wide.load215 = load <4 x i32>, ptr %i.co, align 4, !tbaa !28
  %i.cp = add <4 x i32> %wide.load214, %vec.phi212 ; 2 uses
  %i.cq = add <4 x i32> %wide.load215, %vec.phi213 ; 2 uses
  %index.next216 = add nuw i64 %index211, 8       ; 2 uses
  %i.cr = icmp eq i64 %index.next216, %n.vec209
  br i1 %i.cr, label %middle.block217, label %vector.body210, !llvm.loop !183

middle.block217:                                  ; preds = %vector.body210
  %bin.rdx218 = add <4 x i32> %i.cq, %i.cp
  %i.cs = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx218) ; 2 uses
  %cmp.n219 = icmp eq i64 %i.cj, %n.vec209
  br i1 %cmp.n219, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, label %.lr.ph94.i.i.i.i.preheader375

.lr.ph94.i.i.i.i.preheader375:                    ; preds = %.lr.ph94.i.i.i.i.preheader, %middle.block217
  %.092.i.i.i.i.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.preheader ], [ %i.ck, %middle.block217 ]
  %.291.i.i.i.i.ph = phi i32 [ %i.ch, %.lr.ph94.i.i.i.i.preheader ], [ %i.cs, %middle.block217 ]
  br label %.lr.ph94.i.i.i.i

.lr.ph94.i.i.i.i:                                 ; preds = %.lr.ph94.i.i.i.i.preheader375, %.lr.ph94.i.i.i.i
  %.092.i.i.i.i = phi i64 [ %i.cw, %.lr.ph94.i.i.i.i ], [ %.092.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader375 ] ; 2 uses
  %.291.i.i.i.i = phi i32 [ %i.cv, %.lr.ph94.i.i.i.i ], [ %.291.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader375 ]
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.092.i.i.i.i
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !28
  %i.cv = add nsw i32 %i.cu, %.291.i.i.i.i        ; 2 uses
  %i.cw = add nuw nsw i64 %.092.i.i.i.i, 1        ; 2 uses
  %exitcond102.not.i.i.i.i = icmp eq i64 %i.cw, %i.n
  br i1 %exitcond102.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, label %.lr.ph94.i.i.i.i, !llvm.loop !184

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i: ; preds = %.lr.ph89.i.i.i.i, %.lr.ph94.i.i.i.i, %middle.block201, %middle.block217, %bb.j, %.preheader.i.i.i.i
  %.0.i.i = phi i32 [ %i.cv, %.lr.ph94.i.i.i.i ], [ %.075.lcssa.i.i.i.i, %.preheader.i.i.i.i ], [ %i.ch, %bb.j ], [ %i.cs, %middle.block217 ], [ %i.bx, %middle.block201 ], [ %i.ce, %.lr.ph89.i.i.i.i ]
  %i.cx = sext i32 %.0.i.i to i64
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit: ; preds = %bb.b, %bb.c, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i
  %.0.i = phi i64 [ %i.l, %bb.b ], [ %i.cx, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i ], [ 0, %bb.c ]
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %.0.i, i64 noundef 1)
  %i.cy = load ptr, ptr %i.a, align 8, !tbaa !122 ; 13 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !128 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !129
  %i.de = getelementptr inbounds [4 x i8], ptr %i.db, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !28
  %i.dg = load i32, ptr %i.db, align 4, !tbaa !28
  %i.dh = sub nsw i32 %i.df, %i.dg
  %i.di = sext i32 %i.dh to i64
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit53

bb.l:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !129 ; 11 uses
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit53, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dm = ptrtoint ptr %i.cy to i64               ; 2 uses
  %i.dn = and i64 %i.dm, 3
  %.not.i.i.i.i.i.i.i.i19 = icmp eq i64 %i.dn, 0
  br i1 %.not.i.i.i.i.i.i.i.i19, label %bb.n, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i20

bb.n:                                             ; preds = %bb.m
  %i.do = lshr exact i64 %i.dm, 2
  %i.dp = sub nsw i64 0, %i.do
  %i.dq = and i64 %i.dp, 3
  %i.dr = tail call i64 @llvm.smin.i64(i64 %i.dq, i64 %i.dk)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i20

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i20: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i21 = phi i64 [ %i.dr, %bb.n ], [ %i.dk, %bb.m ] ; 12 uses
  %i.ds = sub nsw i64 %i.dk, %.0.i.i.i.i.i.i.i.i21 ; 5 uses
  %i.dt = sdiv i64 %i.ds, 8
  %i.du = shl nsw i64 %i.dt, 3                    ; 2 uses
  %i.dv = sdiv i64 %i.ds, 4                       ; 2 uses
  %i.dw = shl nsw i64 %i.dv, 2                    ; 2 uses
  %i.dx = add nsw i64 %i.du, %.0.i.i.i.i.i.i.i.i21 ; 2 uses
  %i.dy = add nsw i64 %i.dw, %.0.i.i.i.i.i.i.i.i21 ; 4 uses
  %.off.i.i.i.i22 = add i64 %i.ds, 3
  %.not.i.i.i.i23 = icmp ult i64 %.off.i.i.i.i22, 7
  br i1 %.not.i.i.i.i23, label %bb.s, label %bb.o

bb.o:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i20
  %i.dz = getelementptr [4 x i8], ptr %i.cy, i64 %.0.i.i.i.i.i.i.i.i21 ; 2 uses
  %i.ea = load <2 x i64>, ptr %i.dz, align 1, !tbaa !37 ; 2 uses
  %i.eb = icmp sgt i64 %i.ds, 7
  br i1 %i.eb, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ec = getelementptr i8, ptr %i.dz, i64 16
  %i.ed = load <4 x i32>, ptr %i.ec, align 1, !tbaa !37 ; 2 uses
  %i.ee = bitcast <2 x i64> %i.ea to <4 x i32>    ; 2 uses
  %i.ef = icmp samesign ugt i64 %i.ds, 15
  br i1 %i.ef, label %.lr.ph.preheader.i.i.i.i42, label %._crit_edge.i.i.i.i39

.lr.ph.preheader.i.i.i.i42:                       ; preds = %bb.p
  %.05777.i.i.i.i43 = add nsw i64 %.0.i.i.i.i.i.i.i.i21, 8
  br label %.lr.ph.i.i.i.i44

._crit_edge.i.i.i.i39:                            ; preds = %.lr.ph.i.i.i.i44, %bb.p
  %.lcssa.i.i.i.i40 = phi <4 x i32> [ %i.ed, %bb.p ], [ %i.eq, %.lr.ph.i.i.i.i44 ]
  %.sroa.067.0.lcssa.i.i.i.i41 = phi <4 x i32> [ %i.ee, %bb.p ], [ %i.em, %.lr.ph.i.i.i.i44 ]
  %i.eg = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i41, %.lcssa.i.i.i.i40 ; 2 uses
  %i.eh = bitcast <4 x i32> %i.eg to <2 x i64>
  %i.ei = icmp sgt i64 %i.dw, %i.du
  br i1 %i.ei, label %bb.q, label %bb.r

.lr.ph.i.i.i.i44:                                 ; preds = %.lr.ph.i.i.i.i44, %.lr.ph.preheader.i.i.i.i42
  %.05780.i.i.i.i45 = phi i64 [ %.057.i.i.i.i48, %.lr.ph.i.i.i.i44 ], [ %.05777.i.i.i.i43, %.lr.ph.preheader.i.i.i.i42 ] ; 3 uses
  %.057.in79.i.i.i.i46 = phi i64 [ %.05780.i.i.i.i45, %.lr.ph.i.i.i.i44 ], [ %.0.i.i.i.i.i.i.i.i21, %.lr.ph.preheader.i.i.i.i42 ]
  %.sroa.067.078.i.i.i.i47 = phi <4 x i32> [ %i.em, %.lr.ph.i.i.i.i44 ], [ %i.ee, %.lr.ph.preheader.i.i.i.i42 ]
  %i.ej = phi <4 x i32> [ %i.eq, %.lr.ph.i.i.i.i44 ], [ %i.ed, %.lr.ph.preheader.i.i.i.i42 ]
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %.05780.i.i.i.i45
  %i.el = load <4 x i32>, ptr %i.ek, align 1, !tbaa !37
  %i.em = add <4 x i32> %i.el, %.sroa.067.078.i.i.i.i47 ; 2 uses
  %i.en = getelementptr [4 x i8], ptr %i.cy, i64 %.057.in79.i.i.i.i46
  %i.eo = getelementptr i8, ptr %i.en, i64 48
  %i.ep = load <4 x i32>, ptr %i.eo, align 1, !tbaa !37
  %i.eq = add <4 x i32> %i.ep, %i.ej              ; 2 uses
  %.057.i.i.i.i48 = add nsw i64 %.05780.i.i.i.i45, 8 ; 2 uses
  %i.er = icmp slt i64 %.057.i.i.i.i48, %i.dx
  br i1 %i.er, label %.lr.ph.i.i.i.i44, label %._crit_edge.i.i.i.i39, !llvm.loop !38

bb.q:                                             ; preds = %._crit_edge.i.i.i.i39
  %i.es = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %i.dx
  %i.et = load <4 x i32>, ptr %i.es, align 1, !tbaa !37
  %i.eu = add <4 x i32> %i.et, %i.eg
  %i.ev = bitcast <4 x i32> %i.eu to <2 x i64>
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge.i.i.i.i39, %bb.o
  %.sroa.067.2.i.i.i.i24 = phi <2 x i64> [ %i.ea, %bb.o ], [ %i.ev, %bb.q ], [ %i.eh, %._crit_edge.i.i.i.i39 ] ; 2 uses
  %i.ew = bitcast <2 x i64> %.sroa.067.2.i.i.i.i24 to <4 x i32>
  %i.ex = bitcast <2 x i64> %.sroa.067.2.i.i.i.i24 to <4 x i32> ; 2 uses
  %i.ey = shufflevector <4 x i32> %i.ex, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.ez = add <4 x i32> %i.ey, %i.ew              ; 2 uses
  %shift339 = shufflevector <4 x i32> %i.ez, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop340 = add nsw <4 x i32> %i.ez, %shift339
  %5 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ex) ; 2 uses
  %i.fa = icmp sgt i64 %.0.i.i.i.i.i.i.i.i21, 0
  br i1 %i.fa, label %.lr.ph85.i.i.i.i35.preheader, label %.preheader.i.i.i.i27

.lr.ph85.i.i.i.i35.preheader:                     ; preds = %bb.r
  %min.iters.check223 = icmp ult i64 %.0.i.i.i.i.i.i.i.i21, 8
  br i1 %min.iters.check223, label %.lr.ph85.i.i.i.i35.preheader369, label %vector.ph224

vector.ph224:                                     ; preds = %.lr.ph85.i.i.i.i35.preheader
  %n.vec225 = and i64 %.0.i.i.i.i.i.i.i.i21, 9223372036854775800 ; 3 uses
  %i.fb = shufflevector <4 x i32> %foldExtExtBinop340, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body226

vector.body226:                                   ; preds = %vector.body226, %vector.ph224
  %index227 = phi i64 [ 0, %vector.ph224 ], [ %index.next232, %vector.body226 ] ; 2 uses
  %vec.phi228 = phi <4 x i32> [ %i.fb, %vector.ph224 ], [ %i.fe, %vector.body226 ]
  %vec.phi229 = phi <4 x i32> [ zeroinitializer, %vector.ph224 ], [ %i.ff, %vector.body226 ]
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %index227 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %wide.load230 = load <4 x i32>, ptr %i.fc, align 4, !tbaa !28
  %wide.load231 = load <4 x i32>, ptr %i.fd, align 4, !tbaa !28
  %i.fe = add <4 x i32> %wide.load230, %vec.phi228 ; 2 uses
  %i.ff = add <4 x i32> %wide.load231, %vec.phi229 ; 2 uses
  %index.next232 = add nuw i64 %index227, 8       ; 2 uses
  %i.fg = icmp eq i64 %index.next232, %n.vec225
  br i1 %i.fg, label %middle.block233, label %vector.body226, !llvm.loop !185

middle.block233:                                  ; preds = %vector.body226
  %bin.rdx234 = add <4 x i32> %i.ff, %i.fe
  %i.fh = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx234) ; 2 uses
  %cmp.n235 = icmp eq i64 %.0.i.i.i.i.i.i.i.i21, %n.vec225
  br i1 %cmp.n235, label %.preheader.i.i.i.i27, label %.lr.ph85.i.i.i.i35.preheader369

.lr.ph85.i.i.i.i35.preheader369:                  ; preds = %.lr.ph85.i.i.i.i35.preheader, %middle.block233
  %.05683.i.i.i.i36.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i35.preheader ], [ %n.vec225, %middle.block233 ]
  %.07582.i.i.i.i37.ph = phi i32 [ %5, %.lr.ph85.i.i.i.i35.preheader ], [ %i.fh, %middle.block233 ]
  br label %.lr.ph85.i.i.i.i35

.preheader.i.i.i.i27:                             ; preds = %.lr.ph85.i.i.i.i35, %middle.block233, %bb.r
  %.075.lcssa.i.i.i.i28 = phi i32 [ %5, %bb.r ], [ %i.fh, %middle.block233 ], [ %i.fx, %.lr.ph85.i.i.i.i35 ] ; 3 uses
  %i.fi = icmp slt i64 %i.dy, %i.dk
  br i1 %i.fi, label %.lr.ph89.i.i.i.i32.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29

.lr.ph89.i.i.i.i32.preheader:                     ; preds = %.preheader.i.i.i.i27
  %i.fj = shl nsw i64 %i.dv, 2
  %i.fk = add i64 %.0.i.i.i.i.i.i.i.i21, %i.fj
  %i.fl = sub i64 %i.dk, %i.fk                    ; 3 uses
  %min.iters.check239 = icmp ult i64 %i.fl, 8
  br i1 %min.iters.check239, label %.lr.ph89.i.i.i.i32.preheader364, label %vector.ph240

vector.ph240:                                     ; preds = %.lr.ph89.i.i.i.i32.preheader
  %n.vec241 = and i64 %i.fl, -8                   ; 3 uses
  %i.fm = add i64 %i.dy, %n.vec241
  %i.fn = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i28, i64 0
  %i.fo = getelementptr [4 x i8], ptr %i.cy, i64 %i.dy
  br label %vector.body242

vector.body242:                                   ; preds = %vector.body242, %vector.ph240
  %index243 = phi i64 [ 0, %vector.ph240 ], [ %index.next248, %vector.body242 ] ; 2 uses
  %vec.phi244 = phi <4 x i32> [ %i.fn, %vector.ph240 ], [ %i.fr, %vector.body242 ]
  %vec.phi245 = phi <4 x i32> [ zeroinitializer, %vector.ph240 ], [ %i.fs, %vector.body242 ]
  %i.fp = getelementptr [4 x i8], ptr %i.fo, i64 %index243 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %wide.load246 = load <4 x i32>, ptr %i.fp, align 4, !tbaa !28
  %wide.load247 = load <4 x i32>, ptr %i.fq, align 4, !tbaa !28
  %i.fr = add <4 x i32> %wide.load246, %vec.phi244 ; 2 uses
  %i.fs = add <4 x i32> %wide.load247, %vec.phi245 ; 2 uses
  %index.next248 = add nuw i64 %index243, 8       ; 2 uses
  %i.ft = icmp eq i64 %index.next248, %n.vec241
  br i1 %i.ft, label %middle.block249, label %vector.body242, !llvm.loop !186

middle.block249:                                  ; preds = %vector.body242
  %bin.rdx250 = add <4 x i32> %i.fs, %i.fr
  %i.fu = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx250) ; 2 uses
  %cmp.n251 = icmp eq i64 %i.fl, %n.vec241
  br i1 %cmp.n251, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29, label %.lr.ph89.i.i.i.i32.preheader364

.lr.ph89.i.i.i.i32.preheader364:                  ; preds = %.lr.ph89.i.i.i.i32.preheader, %middle.block249
  %.05588.i.i.i.i33.ph = phi i64 [ %i.dy, %.lr.ph89.i.i.i.i32.preheader ], [ %i.fm, %middle.block249 ]
  %.187.i.i.i.i34.ph = phi i32 [ %.075.lcssa.i.i.i.i28, %.lr.ph89.i.i.i.i32.preheader ], [ %i.fu, %middle.block249 ]
  br label %.lr.ph89.i.i.i.i32

.lr.ph85.i.i.i.i35:                               ; preds = %.lr.ph85.i.i.i.i35.preheader369, %.lr.ph85.i.i.i.i35
  %.05683.i.i.i.i36 = phi i64 [ %i.fy, %.lr.ph85.i.i.i.i35 ], [ %.05683.i.i.i.i36.ph, %.lr.ph85.i.i.i.i35.preheader369 ] ; 2 uses
  %.07582.i.i.i.i37 = phi i32 [ %i.fx, %.lr.ph85.i.i.i.i35 ], [ %.07582.i.i.i.i37.ph, %.lr.ph85.i.i.i.i35.preheader369 ]
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %.05683.i.i.i.i36
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !28
  %i.fx = add nsw i32 %i.fw, %.07582.i.i.i.i37    ; 2 uses
  %i.fy = add nuw nsw i64 %.05683.i.i.i.i36, 1    ; 2 uses
  %exitcond.not.i.i.i.i38 = icmp eq i64 %i.fy, %.0.i.i.i.i.i.i.i.i21
  br i1 %exitcond.not.i.i.i.i38, label %.preheader.i.i.i.i27, label %.lr.ph85.i.i.i.i35, !llvm.loop !187

.lr.ph89.i.i.i.i32:                               ; preds = %.lr.ph89.i.i.i.i32.preheader364, %.lr.ph89.i.i.i.i32
  %.05588.i.i.i.i33 = phi i64 [ %i.gc, %.lr.ph89.i.i.i.i32 ], [ %.05588.i.i.i.i33.ph, %.lr.ph89.i.i.i.i32.preheader364 ] ; 2 uses
  %.187.i.i.i.i34 = phi i32 [ %i.gb, %.lr.ph89.i.i.i.i32 ], [ %.187.i.i.i.i34.ph, %.lr.ph89.i.i.i.i32.preheader364 ]
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %.05588.i.i.i.i33
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !28
  %i.gb = add nsw i32 %i.ga, %.187.i.i.i.i34      ; 2 uses
  %i.gc = add nsw i64 %.05588.i.i.i.i33, 1        ; 2 uses
  %i.gd = icmp slt i64 %i.gc, %i.dk
  br i1 %i.gd, label %.lr.ph89.i.i.i.i32, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29, !llvm.loop !188

bb.s:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i20
  %i.ge = load i32, ptr %i.cy, align 4, !tbaa !28 ; 3 uses
  %i.gf = icmp sgt i64 %i.dk, 1
  br i1 %i.gf, label %.lr.ph94.i.i.i.i49.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29

.lr.ph94.i.i.i.i49.preheader:                     ; preds = %bb.s
  %i.gg = add nsw i64 %i.dk, -1                   ; 2 uses
  %min.iters.check255 = icmp ult i64 %i.dk, 9
  br i1 %min.iters.check255, label %.lr.ph94.i.i.i.i49.preheader360, label %vector.ph256

vector.ph256:                                     ; preds = %.lr.ph94.i.i.i.i49.preheader
  %n.vec257 = and i64 %i.gg, -8                   ; 3 uses
  %i.gh = or disjoint i64 %n.vec257, 1
  %i.gi = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.ge, i64 0
  br label %vector.body258

vector.body258:                                   ; preds = %vector.body258, %vector.ph256
  %index259 = phi i64 [ 0, %vector.ph256 ], [ %index.next264, %vector.body258 ] ; 2 uses
  %vec.phi260 = phi <4 x i32> [ %i.gi, %vector.ph256 ], [ %i.gm, %vector.body258 ]
  %vec.phi261 = phi <4 x i32> [ zeroinitializer, %vector.ph256 ], [ %i.gn, %vector.body258 ]
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %index259 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 4
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 20
  %wide.load262 = load <4 x i32>, ptr %i.gk, align 4, !tbaa !28
  %wide.load263 = load <4 x i32>, ptr %i.gl, align 4, !tbaa !28
  %i.gm = add <4 x i32> %wide.load262, %vec.phi260 ; 2 uses
  %i.gn = add <4 x i32> %wide.load263, %vec.phi261 ; 2 uses
  %index.next264 = add nuw i64 %index259, 8       ; 2 uses
  %i.go = icmp eq i64 %index.next264, %n.vec257
  br i1 %i.go, label %middle.block265, label %vector.body258, !llvm.loop !189

middle.block265:                                  ; preds = %vector.body258
  %bin.rdx266 = add <4 x i32> %i.gn, %i.gm
  %i.gp = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx266) ; 2 uses
  %cmp.n267 = icmp eq i64 %i.gg, %n.vec257
  br i1 %cmp.n267, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29, label %.lr.ph94.i.i.i.i49.preheader360

.lr.ph94.i.i.i.i49.preheader360:                  ; preds = %.lr.ph94.i.i.i.i49.preheader, %middle.block265
  %.092.i.i.i.i50.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i49.preheader ], [ %i.gh, %middle.block265 ]
  %.291.i.i.i.i51.ph = phi i32 [ %i.ge, %.lr.ph94.i.i.i.i49.preheader ], [ %i.gp, %middle.block265 ]
  br label %.lr.ph94.i.i.i.i49

.lr.ph94.i.i.i.i49:                               ; preds = %.lr.ph94.i.i.i.i49.preheader360, %.lr.ph94.i.i.i.i49
  %.092.i.i.i.i50 = phi i64 [ %i.gt, %.lr.ph94.i.i.i.i49 ], [ %.092.i.i.i.i50.ph, %.lr.ph94.i.i.i.i49.preheader360 ] ; 2 uses
  %.291.i.i.i.i51 = phi i32 [ %i.gs, %.lr.ph94.i.i.i.i49 ], [ %.291.i.i.i.i51.ph, %.lr.ph94.i.i.i.i49.preheader360 ]
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %.092.i.i.i.i50
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !28
  %i.gs = add nsw i32 %i.gr, %.291.i.i.i.i51      ; 2 uses
  %i.gt = add nuw nsw i64 %.092.i.i.i.i50, 1      ; 2 uses
  %exitcond102.not.i.i.i.i52 = icmp eq i64 %i.gt, %i.dk
  br i1 %exitcond102.not.i.i.i.i52, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29, label %.lr.ph94.i.i.i.i49, !llvm.loop !190

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29: ; preds = %.lr.ph89.i.i.i.i32, %.lr.ph94.i.i.i.i49, %middle.block249, %middle.block265, %bb.s, %.preheader.i.i.i.i27
  %.0.i.i30 = phi i32 [ %i.gs, %.lr.ph94.i.i.i.i49 ], [ %.075.lcssa.i.i.i.i28, %.preheader.i.i.i.i27 ], [ %i.ge, %bb.s ], [ %i.gp, %middle.block265 ], [ %i.fu, %middle.block249 ], [ %i.gb, %.lr.ph89.i.i.i.i32 ]
  %i.gu = sext i32 %.0.i.i30 to i64
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit53

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit53: ; preds = %bb.k, %bb.l, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29
  %.0.i31 = phi i64 [ %i.di, %bb.k ], [ %i.gu, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29 ], [ 0, %bb.l ]
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %.0.i31, i64 noundef 1)
  %i.gv = load ptr, ptr %i.a, align 8, !tbaa !122 ; 13 uses
  %i.gw = icmp eq ptr %i.gv, null
  br i1 %i.gw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit53
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !128 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !129
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.ha
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !28
  %i.hd = load i32, ptr %i.gy, align 4, !tbaa !28
  %i.he = sub nsw i32 %i.hc, %i.hd
  %i.hf = sext i32 %i.he to i64
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit

bb.u:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit53
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !129 ; 11 uses
  %i.hi = icmp eq i64 %i.hh, 0
  br i1 %i.hi, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.hj = ptrtoint ptr %i.gv to i64               ; 2 uses
  %i.hk = and i64 %i.hj, 3
  %.not.i.i.i.i.i.i.i.i54 = icmp eq i64 %i.hk, 0
  br i1 %.not.i.i.i.i.i.i.i.i54, label %bb.w, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i55

bb.w:                                             ; preds = %bb.v
  %i.hl = lshr exact i64 %i.hj, 2
  %i.hm = sub nsw i64 0, %i.hl
  %i.hn = and i64 %i.hm, 3
  %i.ho = tail call i64 @llvm.smin.i64(i64 %i.hn, i64 %i.hh)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i55

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i55: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i.i.i56 = phi i64 [ %i.ho, %bb.w ], [ %i.hh, %bb.v ] ; 12 uses
  %i.hp = sub nsw i64 %i.hh, %.0.i.i.i.i.i.i.i.i56 ; 5 uses
  %i.hq = sdiv i64 %i.hp, 8
  %i.hr = shl nsw i64 %i.hq, 3                    ; 2 uses
  %i.hs = sdiv i64 %i.hp, 4                       ; 2 uses
  %i.ht = shl nsw i64 %i.hs, 2                    ; 2 uses
  %i.hu = add nsw i64 %i.hr, %.0.i.i.i.i.i.i.i.i56 ; 2 uses
  %i.hv = add nsw i64 %i.ht, %.0.i.i.i.i.i.i.i.i56 ; 4 uses
  %.off.i.i.i.i57 = add i64 %i.hp, 3
  %.not.i.i.i.i58 = icmp ult i64 %.off.i.i.i.i57, 7
  br i1 %.not.i.i.i.i58, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i55
  %i.hw = getelementptr [4 x i8], ptr %i.gv, i64 %.0.i.i.i.i.i.i.i.i56 ; 2 uses
  %i.hx = load <2 x i64>, ptr %i.hw, align 1, !tbaa !37 ; 2 uses
  %i.hy = icmp sgt i64 %i.hp, 7
  br i1 %i.hy, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.hz = getelementptr i8, ptr %i.hw, i64 16
  %i.ia = load <4 x i32>, ptr %i.hz, align 1, !tbaa !37 ; 2 uses
  %i.ib = bitcast <2 x i64> %i.hx to <4 x i32>    ; 2 uses
  %i.ic = icmp samesign ugt i64 %i.hp, 15
  br i1 %i.ic, label %.lr.ph.preheader.i.i.i.i77, label %._crit_edge.i.i.i.i74

.lr.ph.preheader.i.i.i.i77:                       ; preds = %bb.y
  %.05777.i.i.i.i78 = add nsw i64 %.0.i.i.i.i.i.i.i.i56, 8
  br label %.lr.ph.i.i.i.i79

._crit_edge.i.i.i.i74:                            ; preds = %.lr.ph.i.i.i.i79, %bb.y
  %.lcssa.i.i.i.i75 = phi <4 x i32> [ %i.ia, %bb.y ], [ %i.in, %.lr.ph.i.i.i.i79 ]
  %.sroa.067.0.lcssa.i.i.i.i76 = phi <4 x i32> [ %i.ib, %bb.y ], [ %i.ij, %.lr.ph.i.i.i.i79 ]
  %i.id = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i76, %.lcssa.i.i.i.i75 ; 2 uses
  %i.ie = bitcast <4 x i32> %i.id to <2 x i64>
  %i.if = icmp sgt i64 %i.ht, %i.hr
  br i1 %i.if, label %bb.z, label %bb.aa

.lr.ph.i.i.i.i79:                                 ; preds = %.lr.ph.i.i.i.i79, %.lr.ph.preheader.i.i.i.i77
  %.05780.i.i.i.i80 = phi i64 [ %.057.i.i.i.i83, %.lr.ph.i.i.i.i79 ], [ %.05777.i.i.i.i78, %.lr.ph.preheader.i.i.i.i77 ] ; 3 uses
  %.057.in79.i.i.i.i81 = phi i64 [ %.05780.i.i.i.i80, %.lr.ph.i.i.i.i79 ], [ %.0.i.i.i.i.i.i.i.i56, %.lr.ph.preheader.i.i.i.i77 ]
  %.sroa.067.078.i.i.i.i82 = phi <4 x i32> [ %i.ij, %.lr.ph.i.i.i.i79 ], [ %i.ib, %.lr.ph.preheader.i.i.i.i77 ]
  %i.ig = phi <4 x i32> [ %i.in, %.lr.ph.i.i.i.i79 ], [ %i.ia, %.lr.ph.preheader.i.i.i.i77 ]
  %i.ih = getelementptr inbounds [4 x i8], ptr %i.gv, i64 %.05780.i.i.i.i80
  %i.ii = load <4 x i32>, ptr %i.ih, align 1, !tbaa !37
  %i.ij = add <4 x i32> %i.ii, %.sroa.067.078.i.i.i.i82 ; 2 uses
  %i.ik = getelementptr [4 x i8], ptr %i.gv, i64 %.057.in79.i.i.i.i81
  %i.il = getelementptr i8, ptr %i.ik, i64 48
  %i.im = load <4 x i32>, ptr %i.il, align 1, !tbaa !37
  %i.in = add <4 x i32> %i.im, %i.ig              ; 2 uses
  %.057.i.i.i.i83 = add nsw i64 %.05780.i.i.i.i80, 8 ; 2 uses
  %i.io = icmp slt i64 %.057.i.i.i.i83, %i.hu
  br i1 %i.io, label %.lr.ph.i.i.i.i79, label %._crit_edge.i.i.i.i74, !llvm.loop !38

bb.z:                                             ; preds = %._crit_edge.i.i.i.i74
  %i.ip = getelementptr inbounds [4 x i8], ptr %i.gv, i64 %i.hu
  %i.iq = load <4 x i32>, ptr %i.ip, align 1, !tbaa !37
  %i.ir = add <4 x i32> %i.iq, %i.id
  %i.is = bitcast <4 x i32> %i.ir to <2 x i64>
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge.i.i.i.i74, %bb.x
  %.sroa.067.2.i.i.i.i59 = phi <2 x i64> [ %i.hx, %bb.x ], [ %i.is, %bb.z ], [ %i.ie, %._crit_edge.i.i.i.i74 ] ; 2 uses
  %i.it = bitcast <2 x i64> %.sroa.067.2.i.i.i.i59 to <4 x i32>
  %i.iu = bitcast <2 x i64> %.sroa.067.2.i.i.i.i59 to <4 x i32> ; 2 uses
  %i.iv = shufflevector <4 x i32> %i.iu, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.iw = add <4 x i32> %i.iv, %i.it              ; 2 uses
  %shift342 = shufflevector <4 x i32> %i.iw, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop343 = add nsw <4 x i32> %i.iw, %shift342
  %6 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.iu) ; 2 uses
  %i.ix = icmp sgt i64 %.0.i.i.i.i.i.i.i.i56, 0
  br i1 %i.ix, label %.lr.ph85.i.i.i.i70.preheader, label %.preheader.i.i.i.i62

.lr.ph85.i.i.i.i70.preheader:                     ; preds = %bb.aa
  %min.iters.check271 = icmp ult i64 %.0.i.i.i.i.i.i.i.i56, 8
  br i1 %min.iters.check271, label %.lr.ph85.i.i.i.i70.preheader354, label %vector.ph272

vector.ph272:                                     ; preds = %.lr.ph85.i.i.i.i70.preheader
  %n.vec273 = and i64 %.0.i.i.i.i.i.i.i.i56, 9223372036854775800 ; 3 uses
  %i.iy = shufflevector <4 x i32> %foldExtExtBinop343, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body274

vector.body274:                                   ; preds = %vector.body274, %vector.ph272
  %index275 = phi i64 [ 0, %vector.ph272 ], [ %index.next280, %vector.body274 ] ; 2 uses
  %vec.phi276 = phi <4 x i32> [ %i.iy, %vector.ph272 ], [ %i.jb, %vector.body274 ]
  %vec.phi277 = phi <4 x i32> [ zeroinitializer, %vector.ph272 ], [ %i.jc, %vector.body274 ]
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %index275 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %wide.load278 = load <4 x i32>, ptr %i.iz, align 4, !tbaa !28
  %wide.load279 = load <4 x i32>, ptr %i.ja, align 4, !tbaa !28
  %i.jb = add <4 x i32> %wide.load278, %vec.phi276 ; 2 uses
  %i.jc = add <4 x i32> %wide.load279, %vec.phi277 ; 2 uses
  %index.next280 = add nuw i64 %index275, 8       ; 2 uses
  %i.jd = icmp eq i64 %index.next280, %n.vec273
  br i1 %i.jd, label %middle.block281, label %vector.body274, !llvm.loop !191

middle.block281:                                  ; preds = %vector.body274
  %bin.rdx282 = add <4 x i32> %i.jc, %i.jb
  %i.je = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx282) ; 2 uses
  %cmp.n283 = icmp eq i64 %.0.i.i.i.i.i.i.i.i56, %n.vec273
  br i1 %cmp.n283, label %.preheader.i.i.i.i62, label %.lr.ph85.i.i.i.i70.preheader354

.lr.ph85.i.i.i.i70.preheader354:                  ; preds = %.lr.ph85.i.i.i.i70.preheader, %middle.block281
  %.05683.i.i.i.i71.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i70.preheader ], [ %n.vec273, %middle.block281 ]
  %.07582.i.i.i.i72.ph = phi i32 [ %6, %.lr.ph85.i.i.i.i70.preheader ], [ %i.je, %middle.block281 ]
  br label %.lr.ph85.i.i.i.i70

.preheader.i.i.i.i62:                             ; preds = %.lr.ph85.i.i.i.i70, %middle.block281, %bb.aa
  %.075.lcssa.i.i.i.i63 = phi i32 [ %6, %bb.aa ], [ %i.je, %middle.block281 ], [ %i.ju, %.lr.ph85.i.i.i.i70 ] ; 3 uses
  %i.jf = icmp slt i64 %i.hv, %i.hh
  br i1 %i.jf, label %.lr.ph89.i.i.i.i67.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i64

.lr.ph89.i.i.i.i67.preheader:                     ; preds = %.preheader.i.i.i.i62
  %i.jg = shl nsw i64 %i.hs, 2
  %i.jh = add i64 %.0.i.i.i.i.i.i.i.i56, %i.jg
  %i.ji = sub i64 %i.hh, %i.jh                    ; 3 uses
  %min.iters.check287 = icmp ult i64 %i.ji, 8
  br i1 %min.iters.check287, label %.lr.ph89.i.i.i.i67.preheader349, label %vector.ph288

vector.ph288:                                     ; preds = %.lr.ph89.i.i.i.i67.preheader
  %n.vec289 = and i64 %i.ji, -8                   ; 3 uses
  %i.jj = add i64 %i.hv, %n.vec289
  %i.jk = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i63, i64 0
  %i.jl = getelementptr [4 x i8], ptr %i.gv, i64 %i.hv
  br label %vector.body290

vector.body290:                                   ; preds = %vector.body290, %vector.ph288
  %index291 = phi i64 [ 0, %vector.ph288 ], [ %index.next296, %vector.body290 ] ; 2 uses
  %vec.phi292 = phi <4 x i32> [ %i.jk, %vector.ph288 ], [ %i.jo, %vector.body290 ]
  %vec.phi293 = phi <4 x i32> [ zeroinitializer, %vector.ph288 ], [ %i.jp, %vector.body290 ]
  %i.jm = getelementptr [4 x i8], ptr %i.jl, i64 %index291 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  %wide.load294 = load <4 x i32>, ptr %i.jm, align 4, !tbaa !28
  %wide.load295 = load <4 x i32>, ptr %i.jn, align 4, !tbaa !28
  %i.jo = add <4 x i32> %wide.load294, %vec.phi292 ; 2 uses
  %i.jp = add <4 x i32> %wide.load295, %vec.phi293 ; 2 uses
  %index.next296 = add nuw i64 %index291, 8       ; 2 uses
  %i.jq = icmp eq i64 %index.next296, %n.vec289
  br i1 %i.jq, label %middle.block297, label %vector.body290, !llvm.loop !192

middle.block297:                                  ; preds = %vector.body290
  %bin.rdx298 = add <4 x i32> %i.jp, %i.jo
  %i.jr = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx298) ; 2 uses
  %cmp.n299 = icmp eq i64 %i.ji, %n.vec289
  br i1 %cmp.n299, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i64, label %.lr.ph89.i.i.i.i67.preheader349

.lr.ph89.i.i.i.i67.preheader349:                  ; preds = %.lr.ph89.i.i.i.i67.preheader, %middle.block297
  %.05588.i.i.i.i68.ph = phi i64 [ %i.hv, %.lr.ph89.i.i.i.i67.preheader ], [ %i.jj, %middle.block297 ]
  %.187.i.i.i.i69.ph = phi i32 [ %.075.lcssa.i.i.i.i63, %.lr.ph89.i.i.i.i67.preheader ], [ %i.jr, %middle.block297 ]
  br label %.lr.ph89.i.i.i.i67

.lr.ph85.i.i.i.i70:                               ; preds = %.lr.ph85.i.i.i.i70.preheader354, %.lr.ph85.i.i.i.i70
  %.05683.i.i.i.i71 = phi i64 [ %i.jv, %.lr.ph85.i.i.i.i70 ], [ %.05683.i.i.i.i71.ph, %.lr.ph85.i.i.i.i70.preheader354 ] ; 2 uses
  %.07582.i.i.i.i72 = phi i32 [ %i.ju, %.lr.ph85.i.i.i.i70 ], [ %.07582.i.i.i.i72.ph, %.lr.ph85.i.i.i.i70.preheader354 ]
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %.05683.i.i.i.i71
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !28
  %i.ju = add nsw i32 %i.jt, %.07582.i.i.i.i72    ; 2 uses
  %i.jv = add nuw nsw i64 %.05683.i.i.i.i71, 1    ; 2 uses
  %exitcond.not.i.i.i.i73 = icmp eq i64 %i.jv, %.0.i.i.i.i.i.i.i.i56
  br i1 %exitcond.not.i.i.i.i73, label %.preheader.i.i.i.i62, label %.lr.ph85.i.i.i.i70, !llvm.loop !193

.lr.ph89.i.i.i.i67:                               ; preds = %.lr.ph89.i.i.i.i67.preheader349, %.lr.ph89.i.i.i.i67
  %.05588.i.i.i.i68 = phi i64 [ %i.jz, %.lr.ph89.i.i.i.i67 ], [ %.05588.i.i.i.i68.ph, %.lr.ph89.i.i.i.i67.preheader349 ] ; 2 uses
  %.187.i.i.i.i69 = phi i32 [ %i.jy, %.lr.ph89.i.i.i.i67 ], [ %.187.i.i.i.i69.ph, %.lr.ph89.i.i.i.i67.preheader349 ]
  %i.jw = getelementptr inbounds [4 x i8], ptr %i.gv, i64 %.05588.i.i.i.i68
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !28
  %i.jy = add nsw i32 %i.jx, %.187.i.i.i.i69      ; 2 uses
  %i.jz = add nsw i64 %.05588.i.i.i.i68, 1        ; 2 uses
  %i.ka = icmp slt i64 %i.jz, %i.hh
  br i1 %i.ka, label %.lr.ph89.i.i.i.i67, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i64, !llvm.loop !194

bb.ab:                                            ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i55
  %i.kb = load i32, ptr %i.gv, align 4, !tbaa !28 ; 3 uses
  %i.kc = icmp sgt i64 %i.hh, 1
  br i1 %i.kc, label %.lr.ph94.i.i.i.i84.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i64

.lr.ph94.i.i.i.i84.preheader:                     ; preds = %bb.ab
  %i.kd = add nsw i64 %i.hh, -1                   ; 2 uses
  %min.iters.check303 = icmp ult i64 %i.hh, 9
  br i1 %min.iters.check303, label %.lr.ph94.i.i.i.i84.preheader346, label %vector.ph304

vector.ph304:                                     ; preds = %.lr.ph94.i.i.i.i84.preheader
  %n.vec305 = and i64 %i.kd, -8                   ; 3 uses
  %i.ke = or disjoint i64 %n.vec305, 1
  %i.kf = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.kb, i64 0
  br label %vector.body306

vector.body306:                                   ; preds = %vector.body306, %vector.ph304
  %index307 = phi i64 [ 0, %vector.ph304 ], [ %index.next312, %vector.body306 ] ; 2 uses
  %vec.phi308 = phi <4 x i32> [ %i.kf, %vector.ph304 ], [ %i.kj, %vector.body306 ]
  %vec.phi309 = phi <4 x i32> [ zeroinitializer, %vector.ph304 ], [ %i.kk, %vector.body306 ]
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %index307 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 4
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 20
  %wide.load310 = load <4 x i32>, ptr %i.kh, align 4, !tbaa !28
  %wide.load311 = load <4 x i32>, ptr %i.ki, align 4, !tbaa !28
  %i.kj = add <4 x i32> %wide.load310, %vec.phi308 ; 2 uses
  %i.kk = add <4 x i32> %wide.load311, %vec.phi309 ; 2 uses
  %index.next312 = add nuw i64 %index307, 8       ; 2 uses
  %i.kl = icmp eq i64 %index.next312, %n.vec305
  br i1 %i.kl, label %middle.block313, label %vector.body306, !llvm.loop !195

middle.block313:                                  ; preds = %vector.body306
  %bin.rdx314 = add <4 x i32> %i.kk, %i.kj
  %i.km = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx314) ; 2 uses
  %cmp.n315 = icmp eq i64 %i.kd, %n.vec305
  br i1 %cmp.n315, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i64, label %.lr.ph94.i.i.i.i84.preheader346

.lr.ph94.i.i.i.i84.preheader346:                  ; preds = %.lr.ph94.i.i.i.i84.preheader, %middle.block313
  %.092.i.i.i.i85.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i84.preheader ], [ %i.ke, %middle.block313 ]
  %.291.i.i.i.i86.ph = phi i32 [ %i.kb, %.lr.ph94.i.i.i.i84.preheader ], [ %i.km, %middle.block313 ]
  br label %.lr.ph94.i.i.i.i84

.lr.ph94.i.i.i.i84:                               ; preds = %.lr.ph94.i.i.i.i84.preheader346, %.lr.ph94.i.i.i.i84
  %.092.i.i.i.i85 = phi i64 [ %i.kq, %.lr.ph94.i.i.i.i84 ], [ %.092.i.i.i.i85.ph, %.lr.ph94.i.i.i.i84.preheader346 ] ; 2 uses
  %.291.i.i.i.i86 = phi i32 [ %i.kp, %.lr.ph94.i.i.i.i84 ], [ %.291.i.i.i.i86.ph, %.lr.ph94.i.i.i.i84.preheader346 ]
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %.092.i.i.i.i85
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !28
  %i.kp = add nsw i32 %i.ko, %.291.i.i.i.i86      ; 2 uses
  %i.kq = add nuw nsw i64 %.092.i.i.i.i85, 1      ; 2 uses
  %exitcond102.not.i.i.i.i87 = icmp eq i64 %i.kq, %i.hh
  br i1 %exitcond102.not.i.i.i.i87, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i64, label %.lr.ph94.i.i.i.i84, !llvm.loop !196

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i64: ; preds = %.lr.ph89.i.i.i.i67, %.lr.ph94.i.i.i.i84, %middle.block297, %middle.block313, %bb.ab, %.preheader.i.i.i.i62
  %.0.i.i65 = phi i32 [ %i.kp, %.lr.ph94.i.i.i.i84 ], [ %.075.lcssa.i.i.i.i63, %.preheader.i.i.i.i62 ], [ %i.kb, %bb.ab ], [ %i.km, %middle.block313 ], [ %i.jr, %middle.block297 ], [ %i.jy, %.lr.ph89.i.i.i.i67 ]
  %i.kr = sext i32 %.0.i.i65 to i64
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i64, %bb.t, %bb.u
  %.0.i6693 = phi i64 [ 0, %bb.u ], [ %i.hf, %bb.t ], [ %i.kr, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i64 ] ; 2 uses
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %.0.i6693, i64 noundef %.0.i6693, i64 noundef 1)
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.kt = load i64, ptr %i.ks, align 8, !tbaa !129 ; 2 uses
  %i.ku = icmp sgt i64 %i.kt, 0
  br i1 %i.ku, label %.lr.ph115, label %._crit_edge116

.lr.ph115:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !148 ; 5 uses
  %i.kx = ptrtoaddr ptr %i.kw to i64
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !149 ; 5 uses
  %i.la = ptrtoaddr ptr %i.kz to i64              ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !128
  %i.ld = load ptr, ptr %i.a, align 8, !tbaa !122 ; 2 uses
  %i.le = icmp eq ptr %i.ld, null
  br label %bb.ac

._crit_edge116:                                   ; preds = %._crit_edge, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  ret void

bb.ac:                                            ; preds = %.lr.ph115, %._crit_edge
  %indvars.iv136 = phi i64 [ 0, %.lr.ph115 ], [ %indvars.iv.next137, %._crit_edge ] ; 4 uses
  %.017113 = phi i32 [ 0, %.lr.ph115 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %indvars.iv136 ; 2 uses
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !28
  %i.lh = sext i32 %i.lg to i64                   ; 9 uses
  br i1 %i.le, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.li = getelementptr i8, ptr %i.lf, i64 4
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !28
  %i.lk = sext i32 %i.lj to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

bb.ae:                                            ; preds = %bb.ac
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %indvars.iv136
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !28
  %i.ln = sext i32 %i.lm to i64
end_hunk_5
begin_hunk_6_@_ZN3igl4findIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES3_EEvRKNS1_9DenseBaseIT_EERNS1_15PlainObjectBaseIT0_EE:bb.a
  %.02223.i.i.i.i = phi i64 [ %i.aa, %.lr.ph.i.i.i.i ], [ %.02223.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader28 ]
  %i.w = getelementptr [4 x i8], ptr %i.d, i64 %.01724.i.i.i.i
  %i.x = load i32, ptr %i.w, align 4, !tbaa !28
  %i.y = icmp ne i32 %i.x, 0
  %i.z = zext i1 %i.y to i64
  %i.aa = add nuw nsw i64 %.02223.i.i.i.i, %i.z   ; 2 uses
  %i.ab = add nuw nsw i64 %.01724.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ab, %i.b
  br i1 %exitcond.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE5countEv.exit, label %.lr.ph.i.i.i.i, !llvm.loop !203

_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE5countEv.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.a, %bb.b
  %.0.i.i = phi i64 [ 0, %bb.a ], [ %i.g, %bb.b ], [ %i.v, %middle.block ], [ %i.aa, %.lr.ph.i.i.i.i ]
  %sext = shl i64 %.0.i.i, 32
  %i.ac = ashr exact i64 %sext, 32
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.ac, i64 noundef 1)
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !98  ; 5 uses
  %i.ae = icmp sgt i64 %i.ad, 0
  br i1 %i.ae, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE5countEv.exit.split, label %.split

_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE5countEv.exit.split: ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE5countEv.exit
  %i.af = load ptr, ptr %0, align 8, !tbaa !93    ; 3 uses
  %xtraiter = and i64 %i.ad, 1
  %i.ag = icmp eq i64 %i.ad, 1
  br i1 %i.ag, label %.epil.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE5countEv.exit.split.new

_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE5countEv.exit.split.new: ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE5countEv.exit.split
  %unroll_iter = and i64 %i.ad, 9223372036854775806
  br label %bb.d

.split.loopexit.unr-lcssa:                        ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.split, label %.epil.preheader

.epil.preheader:                                  ; preds = %.split.loopexit.unr-lcssa, %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE5countEv.exit.split
  %indvars.iv.epil.init = phi i64 [ 0, %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE5countEv.exit.split ], [ %indvars.iv.next.1, %.split.loopexit.unr-lcssa ] ; 2 uses
  %.121.epil.init = phi i32 [ 0, %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE5countEv.exit.split ], [ %.2.1, %.split.loopexit.unr-lcssa ]
  %lcmp.mod31 = trunc i64 %i.ad to i1
  tail call void @llvm.assume(i1 %lcmp.mod31)
  %i.ah = getelementptr [4 x i8], ptr %i.af, i64 %indvars.iv.epil.init
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !28
  %.not.epil = icmp eq i32 %i.ai, 0
  br i1 %.not.epil, label %.split, label %bb.c

bb.c:                                             ; preds = %.epil.preheader
  %i.aj = sext i32 %.121.epil.init to i64
  %i.ak = load ptr, ptr %1, align 8, !tbaa !93
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.aj
  %i.am = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  store i32 %i.am, ptr %i.al, align 4, !tbaa !28
  br label %.split

.split:                                           ; preds = %.split.loopexit.unr-lcssa, %bb.c, %.epil.preheader, %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE5countEv.exit
  ret void

bb.d:                                             ; preds = %bb.h, %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE5countEv.exit.split.new
  %indvars.iv = phi i64 [ 0, %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE5countEv.exit.split.new ], [ %indvars.iv.next.1, %bb.h ] ; 4 uses
  %.121 = phi i32 [ 0, %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE5countEv.exit.split.new ], [ %.2.1, %bb.h ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE5countEv.exit.split.new ], [ %niter.next.1, %bb.h ]
  %i.an = getelementptr [4 x i8], ptr %i.af, i64 %indvars.iv
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !28
  %.not = icmp eq i32 %i.ao, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = sext i32 %.121 to i64
  %i.aq = load ptr, ptr %1, align 8, !tbaa !93
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.ap
  %i.as = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.as, ptr %i.ar, align 4, !tbaa !28
  %i.at = add nsw i32 %.121, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.2 = phi i32 [ %i.at, %bb.e ], [ %.121, %bb.d ] ; 3 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.au = getelementptr [4 x i8], ptr %i.af, i64 %indvars.iv.next
  %i.av = load i32, ptr %i.au, align 4, !tbaa !28
  %.not.1 = icmp eq i32 %i.av, 0
  br i1 %.not.1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = sext i32 %.2 to i64
  %i.ax = load ptr, ptr %1, align 8, !tbaa !93
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.aw
  %i.az = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.az, ptr %i.ay, align 4, !tbaa !28
  %i.ba = add nsw i32 %.2, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.2.1 = phi i32 [ %i.ba, %bb.g ], [ %.2, %bb.f ] ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.split.loopexit.unr-lcssa, label %bb.d, !llvm.loop !204
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl4findIdN5Eigen6MatrixIlLin1ELi1ELi0ELin1ELi1EEES3_NS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_12SparseMatrixIT_Li0EiEERNS1_9DenseBaseIT0_EERNSA_IT1_EERNSA_IT2_EE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !122  ; 13 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !128  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !129
  %i.h = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !28
  %i.j = load i32, ptr %i.e, align 4, !tbaa !28
  %i.k = sub nsw i32 %i.i, %i.j
  %i.l = sext i32 %i.k to i64
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !129  ; 11 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.q = and i64 %i.p, 3
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.e, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.r = lshr exact i64 %i.p, 2
  %i.s = sub nsw i64 0, %i.r
  %i.t = and i64 %i.s, 3
  %i.u = tail call i64 @llvm.smin.i64(i64 %i.t, i64 %i.n)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i.i.i.i.i.i = phi i64 [ %i.u, %bb.e ], [ %i.n, %bb.d ] ; 12 uses
  %i.v = sub nsw i64 %i.n, %.0.i.i.i.i.i.i.i.i    ; 5 uses
  %i.w = sdiv i64 %i.v, 8
  %i.x = shl nsw i64 %i.w, 3                      ; 2 uses
  %i.y = sdiv i64 %i.v, 4                         ; 2 uses
  %i.z = shl nsw i64 %i.y, 2                      ; 2 uses
  %i.aa = add nsw i64 %i.x, %.0.i.i.i.i.i.i.i.i   ; 2 uses
  %i.ab = add nsw i64 %i.z, %.0.i.i.i.i.i.i.i.i   ; 4 uses
  %.off.i.i.i.i = add i64 %i.v, 3
  %.not.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 7
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.ac = getelementptr [4 x i8], ptr %i.b, i64 %.0.i.i.i.i.i.i.i.i ; 2 uses
  %i.ad = load <2 x i64>, ptr %i.ac, align 1, !tbaa !37 ; 2 uses
  %i.ae = icmp sgt i64 %i.v, 7
  br i1 %i.ae, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr i8, ptr %i.ac, i64 16
  %i.ag = load <4 x i32>, ptr %i.af, align 1, !tbaa !37 ; 2 uses
  %i.ah = bitcast <2 x i64> %i.ad to <4 x i32>    ; 2 uses
  %i.ai = icmp samesign ugt i64 %i.v, 15
  br i1 %i.ai, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.g
  %.05777.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i, 8
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.g
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.ag, %bb.g ], [ %i.at, %.lr.ph.i.i.i.i ]
  %.sroa.067.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.ah, %bb.g ], [ %i.ap, %.lr.ph.i.i.i.i ]
  %i.aj = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i, %.lcssa.i.i.i.i ; 2 uses
  %i.ak = bitcast <4 x i32> %i.aj to <2 x i64>
  %i.al = icmp sgt i64 %i.z, %i.x
  br i1 %i.al, label %bb.h, label %bb.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.05780.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.05777.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.057.in79.i.i.i.i = phi i64 [ %.05780.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i ]
  %.sroa.067.078.i.i.i.i = phi <4 x i32> [ %i.ap, %.lr.ph.i.i.i.i ], [ %i.ah, %.lr.ph.preheader.i.i.i.i ]
  %i.am = phi <4 x i32> [ %i.at, %.lr.ph.i.i.i.i ], [ %i.ag, %.lr.ph.preheader.i.i.i.i ]
  %i.an = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.05780.i.i.i.i
  %i.ao = load <4 x i32>, ptr %i.an, align 1, !tbaa !37
  %i.ap = add <4 x i32> %i.ao, %.sroa.067.078.i.i.i.i ; 2 uses
  %i.aq = getelementptr [4 x i8], ptr %i.b, i64 %.057.in79.i.i.i.i
  %i.ar = getelementptr i8, ptr %i.aq, i64 48
  %i.as = load <4 x i32>, ptr %i.ar, align 1, !tbaa !37
  %i.at = add <4 x i32> %i.as, %i.am              ; 2 uses
  %.057.i.i.i.i = add nsw i64 %.05780.i.i.i.i, 8  ; 2 uses
  %i.au = icmp slt i64 %.057.i.i.i.i, %i.aa
  br i1 %i.au, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !38

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.av = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.aa
  %i.aw = load <4 x i32>, ptr %i.av, align 1, !tbaa !37
  %i.ax = add <4 x i32> %i.aw, %i.aj
  %i.ay = bitcast <4 x i32> %i.ax to <2 x i64>
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i, %bb.f
  %.sroa.067.2.i.i.i.i = phi <2 x i64> [ %i.ad, %bb.f ], [ %i.ay, %bb.h ], [ %i.ak, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.az = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32>
  %i.ba = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32> ; 2 uses
  %i.bb = shufflevector <4 x i32> %i.ba, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.bc = add <4 x i32> %i.bb, %i.az              ; 2 uses
  %shift = shufflevector <4 x i32> %i.bc, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = add nsw <4 x i32> %i.bc, %shift
  %4 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ba) ; 2 uses
  %i.bd = icmp sgt i64 %.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.bd, label %.lr.ph85.i.i.i.i.preheader, label %.preheader.i.i.i.i

.lr.ph85.i.i.i.i.preheader:                       ; preds = %bb.i
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph85.i.i.i.i.preheader376, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph85.i.i.i.i.preheader
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %i.be = shufflevector <4 x i32> %foldExtExtBinop, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.be, %vector.ph ], [ %i.bh, %vector.body ]
  %vec.phi186 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bi, %vector.body ]
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load = load <4 x i32>, ptr %i.bf, align 4, !tbaa !28
  %wide.load187 = load <4 x i32>, ptr %i.bg, align 4, !tbaa !28
  %i.bh = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.bi = add <4 x i32> %wide.load187, %vec.phi186 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !205

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bi, %i.bh
  %i.bk = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i.preheader376

.lr.ph85.i.i.i.i.preheader376:                    ; preds = %.lr.ph85.i.i.i.i.preheader, %middle.block
  %.05683.i.i.i.i.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.07582.i.i.i.i.ph = phi i32 [ %4, %.lr.ph85.i.i.i.i.preheader ], [ %i.bk, %middle.block ]
  br label %.lr.ph85.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i, %middle.block, %bb.i
  %.075.lcssa.i.i.i.i = phi i32 [ %4, %bb.i ], [ %i.bk, %middle.block ], [ %i.ca, %.lr.ph85.i.i.i.i ] ; 3 uses
  %i.bl = icmp slt i64 %i.ab, %i.n
  br i1 %i.bl, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i

.lr.ph89.i.i.i.i.preheader:                       ; preds = %.preheader.i.i.i.i
  %i.bm = shl nsw i64 %i.y, 2
  %i.bn = add i64 %.0.i.i.i.i.i.i.i.i, %i.bm
  %i.bo = sub i64 %i.n, %i.bn                     ; 3 uses
  %min.iters.check189 = icmp ult i64 %i.bo, 8
  br i1 %min.iters.check189, label %.lr.ph89.i.i.i.i.preheader371, label %vector.ph190

vector.ph190:                                     ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec191 = and i64 %i.bo, -8                   ; 3 uses
  %i.bp = add i64 %i.ab, %n.vec191
  %i.bq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i, i64 0
  %i.br = getelementptr [4 x i8], ptr %i.b, i64 %i.ab
  br label %vector.body192

vector.body192:                                   ; preds = %vector.body192, %vector.ph190
  %index193 = phi i64 [ 0, %vector.ph190 ], [ %index.next198, %vector.body192 ] ; 2 uses
  %vec.phi194 = phi <4 x i32> [ %i.bq, %vector.ph190 ], [ %i.bu, %vector.body192 ]
  %vec.phi195 = phi <4 x i32> [ zeroinitializer, %vector.ph190 ], [ %i.bv, %vector.body192 ]
  %i.bs = getelementptr [4 x i8], ptr %i.br, i64 %index193 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %wide.load196 = load <4 x i32>, ptr %i.bs, align 4, !tbaa !28
  %wide.load197 = load <4 x i32>, ptr %i.bt, align 4, !tbaa !28
  %i.bu = add <4 x i32> %wide.load196, %vec.phi194 ; 2 uses
  %i.bv = add <4 x i32> %wide.load197, %vec.phi195 ; 2 uses
  %index.next198 = add nuw i64 %index193, 8       ; 2 uses
  %i.bw = icmp eq i64 %index.next198, %n.vec191
  br i1 %i.bw, label %middle.block199, label %vector.body192, !llvm.loop !206

middle.block199:                                  ; preds = %vector.body192
  %bin.rdx200 = add <4 x i32> %i.bv, %i.bu
  %i.bx = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx200) ; 2 uses
  %cmp.n201 = icmp eq i64 %i.bo, %n.vec191
  br i1 %cmp.n201, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, label %.lr.ph89.i.i.i.i.preheader371

.lr.ph89.i.i.i.i.preheader371:                    ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block199
  %.05588.i.i.i.i.ph = phi i64 [ %i.ab, %.lr.ph89.i.i.i.i.preheader ], [ %i.bp, %middle.block199 ]
  %.187.i.i.i.i.ph = phi i32 [ %.075.lcssa.i.i.i.i, %.lr.ph89.i.i.i.i.preheader ], [ %i.bx, %middle.block199 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph85.i.i.i.i:                                 ; preds = %.lr.ph85.i.i.i.i.preheader376, %.lr.ph85.i.i.i.i
  %.05683.i.i.i.i = phi i64 [ %i.cb, %.lr.ph85.i.i.i.i ], [ %.05683.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader376 ] ; 2 uses
  %.07582.i.i.i.i = phi i32 [ %i.ca, %.lr.ph85.i.i.i.i ], [ %.07582.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader376 ]
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.05683.i.i.i.i
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !28
  %i.ca = add nsw i32 %i.bz, %.07582.i.i.i.i      ; 2 uses
  %i.cb = add nuw nsw i64 %.05683.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.cb, %.0.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i, !llvm.loop !207

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader371, %.lr.ph89.i.i.i.i
  %.05588.i.i.i.i = phi i64 [ %i.cf, %.lr.ph89.i.i.i.i ], [ %.05588.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader371 ] ; 2 uses
  %.187.i.i.i.i = phi i32 [ %i.ce, %.lr.ph89.i.i.i.i ], [ %.187.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader371 ]
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.05588.i.i.i.i
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !28
  %i.ce = add nsw i32 %i.cd, %.187.i.i.i.i        ; 2 uses
  %i.cf = add nsw i64 %.05588.i.i.i.i, 1          ; 2 uses
  %i.cg = icmp slt i64 %i.cf, %i.n
  br i1 %i.cg, label %.lr.ph89.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, !llvm.loop !208

bb.j:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.ch = load i32, ptr %i.b, align 4, !tbaa !28  ; 3 uses
  %i.ci = icmp sgt i64 %i.n, 1
  br i1 %i.ci, label %.lr.ph94.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i

.lr.ph94.i.i.i.i.preheader:                       ; preds = %bb.j
  %i.cj = add nsw i64 %i.n, -1                    ; 2 uses
  %min.iters.check205 = icmp ult i64 %i.n, 9
  br i1 %min.iters.check205, label %.lr.ph94.i.i.i.i.preheader367, label %vector.ph206

vector.ph206:                                     ; preds = %.lr.ph94.i.i.i.i.preheader
  %n.vec207 = and i64 %i.cj, -8                   ; 3 uses
  %i.ck = or disjoint i64 %n.vec207, 1
  %i.cl = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.ch, i64 0
  br label %vector.body208

vector.body208:                                   ; preds = %vector.body208, %vector.ph206
  %index209 = phi i64 [ 0, %vector.ph206 ], [ %index.next214, %vector.body208 ] ; 2 uses
  %vec.phi210 = phi <4 x i32> [ %i.cl, %vector.ph206 ], [ %i.cp, %vector.body208 ]
  %vec.phi211 = phi <4 x i32> [ zeroinitializer, %vector.ph206 ], [ %i.cq, %vector.body208 ]
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index209 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 20
  %wide.load212 = load <4 x i32>, ptr %i.cn, align 4, !tbaa !28
  %wide.load213 = load <4 x i32>, ptr %i.co, align 4, !tbaa !28
  %i.cp = add <4 x i32> %wide.load212, %vec.phi210 ; 2 uses
  %i.cq = add <4 x i32> %wide.load213, %vec.phi211 ; 2 uses
  %index.next214 = add nuw i64 %index209, 8       ; 2 uses
  %i.cr = icmp eq i64 %index.next214, %n.vec207
  br i1 %i.cr, label %middle.block215, label %vector.body208, !llvm.loop !209

middle.block215:                                  ; preds = %vector.body208
  %bin.rdx216 = add <4 x i32> %i.cq, %i.cp
  %i.cs = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx216) ; 2 uses
  %cmp.n217 = icmp eq i64 %i.cj, %n.vec207
  br i1 %cmp.n217, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, label %.lr.ph94.i.i.i.i.preheader367

.lr.ph94.i.i.i.i.preheader367:                    ; preds = %.lr.ph94.i.i.i.i.preheader, %middle.block215
  %.092.i.i.i.i.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.preheader ], [ %i.ck, %middle.block215 ]
  %.291.i.i.i.i.ph = phi i32 [ %i.ch, %.lr.ph94.i.i.i.i.preheader ], [ %i.cs, %middle.block215 ]
  br label %.lr.ph94.i.i.i.i

.lr.ph94.i.i.i.i:                                 ; preds = %.lr.ph94.i.i.i.i.preheader367, %.lr.ph94.i.i.i.i
  %.092.i.i.i.i = phi i64 [ %i.cw, %.lr.ph94.i.i.i.i ], [ %.092.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader367 ] ; 2 uses
  %.291.i.i.i.i = phi i32 [ %i.cv, %.lr.ph94.i.i.i.i ], [ %.291.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader367 ]
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.092.i.i.i.i
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !28
  %i.cv = add nsw i32 %i.cu, %.291.i.i.i.i        ; 2 uses
  %i.cw = add nuw nsw i64 %.092.i.i.i.i, 1        ; 2 uses
  %exitcond102.not.i.i.i.i = icmp eq i64 %i.cw, %i.n
  br i1 %exitcond102.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, label %.lr.ph94.i.i.i.i, !llvm.loop !210

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i: ; preds = %.lr.ph89.i.i.i.i, %.lr.ph94.i.i.i.i, %middle.block199, %middle.block215, %bb.j, %.preheader.i.i.i.i
  %.0.i.i = phi i32 [ %i.cv, %.lr.ph94.i.i.i.i ], [ %.075.lcssa.i.i.i.i, %.preheader.i.i.i.i ], [ %i.ch, %bb.j ], [ %i.cs, %middle.block215 ], [ %i.bx, %middle.block199 ], [ %i.ce, %.lr.ph89.i.i.i.i ]
  %i.cx = sext i32 %.0.i.i to i64
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit: ; preds = %bb.b, %bb.c, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i
  %.0.i = phi i64 [ %i.l, %bb.b ], [ %i.cx, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i ], [ 0, %bb.c ]
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIlLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %.0.i, i64 noundef 1)
  %i.cy = load ptr, ptr %i.a, align 8, !tbaa !122 ; 13 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !128 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !129
  %i.de = getelementptr inbounds [4 x i8], ptr %i.db, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !28
  %i.dg = load i32, ptr %i.db, align 4, !tbaa !28
  %i.dh = sub nsw i32 %i.df, %i.dg
  %i.di = sext i32 %i.dh to i64
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit53

bb.l:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !129 ; 11 uses
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit53, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dm = ptrtoint ptr %i.cy to i64               ; 2 uses
  %i.dn = and i64 %i.dm, 3
  %.not.i.i.i.i.i.i.i.i19 = icmp eq i64 %i.dn, 0
  br i1 %.not.i.i.i.i.i.i.i.i19, label %bb.n, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i20

bb.n:                                             ; preds = %bb.m
  %i.do = lshr exact i64 %i.dm, 2
  %i.dp = sub nsw i64 0, %i.do
  %i.dq = and i64 %i.dp, 3
  %i.dr = tail call i64 @llvm.smin.i64(i64 %i.dq, i64 %i.dk)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i20

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i20: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i21 = phi i64 [ %i.dr, %bb.n ], [ %i.dk, %bb.m ] ; 12 uses
  %i.ds = sub nsw i64 %i.dk, %.0.i.i.i.i.i.i.i.i21 ; 5 uses
  %i.dt = sdiv i64 %i.ds, 8
  %i.du = shl nsw i64 %i.dt, 3                    ; 2 uses
  %i.dv = sdiv i64 %i.ds, 4                       ; 2 uses
  %i.dw = shl nsw i64 %i.dv, 2                    ; 2 uses
  %i.dx = add nsw i64 %i.du, %.0.i.i.i.i.i.i.i.i21 ; 2 uses
  %i.dy = add nsw i64 %i.dw, %.0.i.i.i.i.i.i.i.i21 ; 4 uses
  %.off.i.i.i.i22 = add i64 %i.ds, 3
  %.not.i.i.i.i23 = icmp ult i64 %.off.i.i.i.i22, 7
  br i1 %.not.i.i.i.i23, label %bb.s, label %bb.o

bb.o:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i20
  %i.dz = getelementptr [4 x i8], ptr %i.cy, i64 %.0.i.i.i.i.i.i.i.i21 ; 2 uses
  %i.ea = load <2 x i64>, ptr %i.dz, align 1, !tbaa !37 ; 2 uses
  %i.eb = icmp sgt i64 %i.ds, 7
  br i1 %i.eb, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ec = getelementptr i8, ptr %i.dz, i64 16
  %i.ed = load <4 x i32>, ptr %i.ec, align 1, !tbaa !37 ; 2 uses
  %i.ee = bitcast <2 x i64> %i.ea to <4 x i32>    ; 2 uses
  %i.ef = icmp samesign ugt i64 %i.ds, 15
  br i1 %i.ef, label %.lr.ph.preheader.i.i.i.i42, label %._crit_edge.i.i.i.i39

.lr.ph.preheader.i.i.i.i42:                       ; preds = %bb.p
  %.05777.i.i.i.i43 = add nsw i64 %.0.i.i.i.i.i.i.i.i21, 8
  br label %.lr.ph.i.i.i.i44

._crit_edge.i.i.i.i39:                            ; preds = %.lr.ph.i.i.i.i44, %bb.p
  %.lcssa.i.i.i.i40 = phi <4 x i32> [ %i.ed, %bb.p ], [ %i.eq, %.lr.ph.i.i.i.i44 ]
  %.sroa.067.0.lcssa.i.i.i.i41 = phi <4 x i32> [ %i.ee, %bb.p ], [ %i.em, %.lr.ph.i.i.i.i44 ]
  %i.eg = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i41, %.lcssa.i.i.i.i40 ; 2 uses
  %i.eh = bitcast <4 x i32> %i.eg to <2 x i64>
  %i.ei = icmp sgt i64 %i.dw, %i.du
  br i1 %i.ei, label %bb.q, label %bb.r

.lr.ph.i.i.i.i44:                                 ; preds = %.lr.ph.i.i.i.i44, %.lr.ph.preheader.i.i.i.i42
  %.05780.i.i.i.i45 = phi i64 [ %.057.i.i.i.i48, %.lr.ph.i.i.i.i44 ], [ %.05777.i.i.i.i43, %.lr.ph.preheader.i.i.i.i42 ] ; 3 uses
  %.057.in79.i.i.i.i46 = phi i64 [ %.05780.i.i.i.i45, %.lr.ph.i.i.i.i44 ], [ %.0.i.i.i.i.i.i.i.i21, %.lr.ph.preheader.i.i.i.i42 ]
  %.sroa.067.078.i.i.i.i47 = phi <4 x i32> [ %i.em, %.lr.ph.i.i.i.i44 ], [ %i.ee, %.lr.ph.preheader.i.i.i.i42 ]
  %i.ej = phi <4 x i32> [ %i.eq, %.lr.ph.i.i.i.i44 ], [ %i.ed, %.lr.ph.preheader.i.i.i.i42 ]
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %.05780.i.i.i.i45
  %i.el = load <4 x i32>, ptr %i.ek, align 1, !tbaa !37
  %i.em = add <4 x i32> %i.el, %.sroa.067.078.i.i.i.i47 ; 2 uses
  %i.en = getelementptr [4 x i8], ptr %i.cy, i64 %.057.in79.i.i.i.i46
  %i.eo = getelementptr i8, ptr %i.en, i64 48
  %i.ep = load <4 x i32>, ptr %i.eo, align 1, !tbaa !37
  %i.eq = add <4 x i32> %i.ep, %i.ej              ; 2 uses
  %.057.i.i.i.i48 = add nsw i64 %.05780.i.i.i.i45, 8 ; 2 uses
  %i.er = icmp slt i64 %.057.i.i.i.i48, %i.dx
  br i1 %i.er, label %.lr.ph.i.i.i.i44, label %._crit_edge.i.i.i.i39, !llvm.loop !38

bb.q:                                             ; preds = %._crit_edge.i.i.i.i39
  %i.es = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %i.dx
  %i.et = load <4 x i32>, ptr %i.es, align 1, !tbaa !37
  %i.eu = add <4 x i32> %i.et, %i.eg
  %i.ev = bitcast <4 x i32> %i.eu to <2 x i64>
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge.i.i.i.i39, %bb.o
  %.sroa.067.2.i.i.i.i24 = phi <2 x i64> [ %i.ea, %bb.o ], [ %i.ev, %bb.q ], [ %i.eh, %._crit_edge.i.i.i.i39 ] ; 2 uses
  %i.ew = bitcast <2 x i64> %.sroa.067.2.i.i.i.i24 to <4 x i32>
  %i.ex = bitcast <2 x i64> %.sroa.067.2.i.i.i.i24 to <4 x i32> ; 2 uses
  %i.ey = shufflevector <4 x i32> %i.ex, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.ez = add <4 x i32> %i.ey, %i.ew              ; 2 uses
  %shift331 = shufflevector <4 x i32> %i.ez, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop332 = add nsw <4 x i32> %i.ez, %shift331
  %5 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ex) ; 2 uses
  %i.fa = icmp sgt i64 %.0.i.i.i.i.i.i.i.i21, 0
  br i1 %i.fa, label %.lr.ph85.i.i.i.i35.preheader, label %.preheader.i.i.i.i27

.lr.ph85.i.i.i.i35.preheader:                     ; preds = %bb.r
  %min.iters.check221 = icmp ult i64 %.0.i.i.i.i.i.i.i.i21, 8
  br i1 %min.iters.check221, label %.lr.ph85.i.i.i.i35.preheader361, label %vector.ph222

vector.ph222:                                     ; preds = %.lr.ph85.i.i.i.i35.preheader
  %n.vec223 = and i64 %.0.i.i.i.i.i.i.i.i21, 9223372036854775800 ; 3 uses
  %i.fb = shufflevector <4 x i32> %foldExtExtBinop332, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body224

vector.body224:                                   ; preds = %vector.body224, %vector.ph222
  %index225 = phi i64 [ 0, %vector.ph222 ], [ %index.next230, %vector.body224 ] ; 2 uses
  %vec.phi226 = phi <4 x i32> [ %i.fb, %vector.ph222 ], [ %i.fe, %vector.body224 ]
  %vec.phi227 = phi <4 x i32> [ zeroinitializer, %vector.ph222 ], [ %i.ff, %vector.body224 ]
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %index225 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %wide.load228 = load <4 x i32>, ptr %i.fc, align 4, !tbaa !28
  %wide.load229 = load <4 x i32>, ptr %i.fd, align 4, !tbaa !28
  %i.fe = add <4 x i32> %wide.load228, %vec.phi226 ; 2 uses
  %i.ff = add <4 x i32> %wide.load229, %vec.phi227 ; 2 uses
  %index.next230 = add nuw i64 %index225, 8       ; 2 uses
  %i.fg = icmp eq i64 %index.next230, %n.vec223
  br i1 %i.fg, label %middle.block231, label %vector.body224, !llvm.loop !211

middle.block231:                                  ; preds = %vector.body224
  %bin.rdx232 = add <4 x i32> %i.ff, %i.fe
  %i.fh = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx232) ; 2 uses
  %cmp.n233 = icmp eq i64 %.0.i.i.i.i.i.i.i.i21, %n.vec223
  br i1 %cmp.n233, label %.preheader.i.i.i.i27, label %.lr.ph85.i.i.i.i35.preheader361

.lr.ph85.i.i.i.i35.preheader361:                  ; preds = %.lr.ph85.i.i.i.i35.preheader, %middle.block231
  %.05683.i.i.i.i36.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i35.preheader ], [ %n.vec223, %middle.block231 ]
  %.07582.i.i.i.i37.ph = phi i32 [ %5, %.lr.ph85.i.i.i.i35.preheader ], [ %i.fh, %middle.block231 ]
  br label %.lr.ph85.i.i.i.i35

.preheader.i.i.i.i27:                             ; preds = %.lr.ph85.i.i.i.i35, %middle.block231, %bb.r
  %.075.lcssa.i.i.i.i28 = phi i32 [ %5, %bb.r ], [ %i.fh, %middle.block231 ], [ %i.fx, %.lr.ph85.i.i.i.i35 ] ; 3 uses
  %i.fi = icmp slt i64 %i.dy, %i.dk
  br i1 %i.fi, label %.lr.ph89.i.i.i.i32.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29

.lr.ph89.i.i.i.i32.preheader:                     ; preds = %.preheader.i.i.i.i27
  %i.fj = shl nsw i64 %i.dv, 2
  %i.fk = add i64 %.0.i.i.i.i.i.i.i.i21, %i.fj
  %i.fl = sub i64 %i.dk, %i.fk                    ; 3 uses
  %min.iters.check237 = icmp ult i64 %i.fl, 8
  br i1 %min.iters.check237, label %.lr.ph89.i.i.i.i32.preheader356, label %vector.ph238

vector.ph238:                                     ; preds = %.lr.ph89.i.i.i.i32.preheader
  %n.vec239 = and i64 %i.fl, -8                   ; 3 uses
  %i.fm = add i64 %i.dy, %n.vec239
  %i.fn = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i28, i64 0
  %i.fo = getelementptr [4 x i8], ptr %i.cy, i64 %i.dy
  br label %vector.body240

vector.body240:                                   ; preds = %vector.body240, %vector.ph238
  %index241 = phi i64 [ 0, %vector.ph238 ], [ %index.next246, %vector.body240 ] ; 2 uses
  %vec.phi242 = phi <4 x i32> [ %i.fn, %vector.ph238 ], [ %i.fr, %vector.body240 ]
  %vec.phi243 = phi <4 x i32> [ zeroinitializer, %vector.ph238 ], [ %i.fs, %vector.body240 ]
  %i.fp = getelementptr [4 x i8], ptr %i.fo, i64 %index241 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %wide.load244 = load <4 x i32>, ptr %i.fp, align 4, !tbaa !28
  %wide.load245 = load <4 x i32>, ptr %i.fq, align 4, !tbaa !28
  %i.fr = add <4 x i32> %wide.load244, %vec.phi242 ; 2 uses
  %i.fs = add <4 x i32> %wide.load245, %vec.phi243 ; 2 uses
  %index.next246 = add nuw i64 %index241, 8       ; 2 uses
  %i.ft = icmp eq i64 %index.next246, %n.vec239
  br i1 %i.ft, label %middle.block247, label %vector.body240, !llvm.loop !212

middle.block247:                                  ; preds = %vector.body240
  %bin.rdx248 = add <4 x i32> %i.fs, %i.fr
  %i.fu = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx248) ; 2 uses
  %cmp.n249 = icmp eq i64 %i.fl, %n.vec239
  br i1 %cmp.n249, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29, label %.lr.ph89.i.i.i.i32.preheader356

.lr.ph89.i.i.i.i32.preheader356:                  ; preds = %.lr.ph89.i.i.i.i32.preheader, %middle.block247
  %.05588.i.i.i.i33.ph = phi i64 [ %i.dy, %.lr.ph89.i.i.i.i32.preheader ], [ %i.fm, %middle.block247 ]
  %.187.i.i.i.i34.ph = phi i32 [ %.075.lcssa.i.i.i.i28, %.lr.ph89.i.i.i.i32.preheader ], [ %i.fu, %middle.block247 ]
  br label %.lr.ph89.i.i.i.i32

.lr.ph85.i.i.i.i35:                               ; preds = %.lr.ph85.i.i.i.i35.preheader361, %.lr.ph85.i.i.i.i35
  %.05683.i.i.i.i36 = phi i64 [ %i.fy, %.lr.ph85.i.i.i.i35 ], [ %.05683.i.i.i.i36.ph, %.lr.ph85.i.i.i.i35.preheader361 ] ; 2 uses
  %.07582.i.i.i.i37 = phi i32 [ %i.fx, %.lr.ph85.i.i.i.i35 ], [ %.07582.i.i.i.i37.ph, %.lr.ph85.i.i.i.i35.preheader361 ]
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %.05683.i.i.i.i36
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !28
  %i.fx = add nsw i32 %i.fw, %.07582.i.i.i.i37    ; 2 uses
  %i.fy = add nuw nsw i64 %.05683.i.i.i.i36, 1    ; 2 uses
  %exitcond.not.i.i.i.i38 = icmp eq i64 %i.fy, %.0.i.i.i.i.i.i.i.i21
  br i1 %exitcond.not.i.i.i.i38, label %.preheader.i.i.i.i27, label %.lr.ph85.i.i.i.i35, !llvm.loop !213

.lr.ph89.i.i.i.i32:                               ; preds = %.lr.ph89.i.i.i.i32.preheader356, %.lr.ph89.i.i.i.i32
  %.05588.i.i.i.i33 = phi i64 [ %i.gc, %.lr.ph89.i.i.i.i32 ], [ %.05588.i.i.i.i33.ph, %.lr.ph89.i.i.i.i32.preheader356 ] ; 2 uses
  %.187.i.i.i.i34 = phi i32 [ %i.gb, %.lr.ph89.i.i.i.i32 ], [ %.187.i.i.i.i34.ph, %.lr.ph89.i.i.i.i32.preheader356 ]
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %.05588.i.i.i.i33
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !28
  %i.gb = add nsw i32 %i.ga, %.187.i.i.i.i34      ; 2 uses
  %i.gc = add nsw i64 %.05588.i.i.i.i33, 1        ; 2 uses
  %i.gd = icmp slt i64 %i.gc, %i.dk
  br i1 %i.gd, label %.lr.ph89.i.i.i.i32, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29, !llvm.loop !214

bb.s:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i20
  %i.ge = load i32, ptr %i.cy, align 4, !tbaa !28 ; 3 uses
  %i.gf = icmp sgt i64 %i.dk, 1
  br i1 %i.gf, label %.lr.ph94.i.i.i.i49.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29

.lr.ph94.i.i.i.i49.preheader:                     ; preds = %bb.s
  %i.gg = add nsw i64 %i.dk, -1                   ; 2 uses
  %min.iters.check253 = icmp ult i64 %i.dk, 9
  br i1 %min.iters.check253, label %.lr.ph94.i.i.i.i49.preheader352, label %vector.ph254

vector.ph254:                                     ; preds = %.lr.ph94.i.i.i.i49.preheader
  %n.vec255 = and i64 %i.gg, -8                   ; 3 uses
  %i.gh = or disjoint i64 %n.vec255, 1
  %i.gi = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.ge, i64 0
  br label %vector.body256

vector.body256:                                   ; preds = %vector.body256, %vector.ph254
  %index257 = phi i64 [ 0, %vector.ph254 ], [ %index.next262, %vector.body256 ] ; 2 uses
  %vec.phi258 = phi <4 x i32> [ %i.gi, %vector.ph254 ], [ %i.gm, %vector.body256 ]
  %vec.phi259 = phi <4 x i32> [ zeroinitializer, %vector.ph254 ], [ %i.gn, %vector.body256 ]
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %index257 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 4
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 20
  %wide.load260 = load <4 x i32>, ptr %i.gk, align 4, !tbaa !28
  %wide.load261 = load <4 x i32>, ptr %i.gl, align 4, !tbaa !28
  %i.gm = add <4 x i32> %wide.load260, %vec.phi258 ; 2 uses
  %i.gn = add <4 x i32> %wide.load261, %vec.phi259 ; 2 uses
  %index.next262 = add nuw i64 %index257, 8       ; 2 uses
  %i.go = icmp eq i64 %index.next262, %n.vec255
  br i1 %i.go, label %middle.block263, label %vector.body256, !llvm.loop !215

middle.block263:                                  ; preds = %vector.body256
  %bin.rdx264 = add <4 x i32> %i.gn, %i.gm
  %i.gp = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx264) ; 2 uses
  %cmp.n265 = icmp eq i64 %i.gg, %n.vec255
  br i1 %cmp.n265, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29, label %.lr.ph94.i.i.i.i49.preheader352

.lr.ph94.i.i.i.i49.preheader352:                  ; preds = %.lr.ph94.i.i.i.i49.preheader, %middle.block263
  %.092.i.i.i.i50.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i49.preheader ], [ %i.gh, %middle.block263 ]
  %.291.i.i.i.i51.ph = phi i32 [ %i.ge, %.lr.ph94.i.i.i.i49.preheader ], [ %i.gp, %middle.block263 ]
  br label %.lr.ph94.i.i.i.i49

.lr.ph94.i.i.i.i49:                               ; preds = %.lr.ph94.i.i.i.i49.preheader352, %.lr.ph94.i.i.i.i49
  %.092.i.i.i.i50 = phi i64 [ %i.gt, %.lr.ph94.i.i.i.i49 ], [ %.092.i.i.i.i50.ph, %.lr.ph94.i.i.i.i49.preheader352 ] ; 2 uses
  %.291.i.i.i.i51 = phi i32 [ %i.gs, %.lr.ph94.i.i.i.i49 ], [ %.291.i.i.i.i51.ph, %.lr.ph94.i.i.i.i49.preheader352 ]
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %.092.i.i.i.i50
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !28
  %i.gs = add nsw i32 %i.gr, %.291.i.i.i.i51      ; 2 uses
  %i.gt = add nuw nsw i64 %.092.i.i.i.i50, 1      ; 2 uses
  %exitcond102.not.i.i.i.i52 = icmp eq i64 %i.gt, %i.dk
  br i1 %exitcond102.not.i.i.i.i52, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29, label %.lr.ph94.i.i.i.i49, !llvm.loop !216

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29: ; preds = %.lr.ph89.i.i.i.i32, %.lr.ph94.i.i.i.i49, %middle.block247, %middle.block263, %bb.s, %.preheader.i.i.i.i27
  %.0.i.i30 = phi i32 [ %i.gs, %.lr.ph94.i.i.i.i49 ], [ %.075.lcssa.i.i.i.i28, %.preheader.i.i.i.i27 ], [ %i.ge, %bb.s ], [ %i.gp, %middle.block263 ], [ %i.fu, %middle.block247 ], [ %i.gb, %.lr.ph89.i.i.i.i32 ]
  %i.gu = sext i32 %.0.i.i30 to i64
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit53

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit53: ; preds = %bb.k, %bb.l, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29
  %.0.i31 = phi i64 [ %i.di, %bb.k ], [ %i.gu, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i29 ], [ 0, %bb.l ]
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIlLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %.0.i31, i64 noundef 1)
  %i.gv = load ptr, ptr %i.a, align 8, !tbaa !122 ; 13 uses
  %i.gw = icmp eq ptr %i.gv, null
  br i1 %i.gw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit53
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !128 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !129
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.ha
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !28
  %i.hd = load i32, ptr %i.gy, align 4, !tbaa !28
  %i.he = sub nsw i32 %i.hc, %i.hd
  %i.hf = sext i32 %i.he to i64
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit88

bb.u:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit53
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !129 ; 11 uses
  %i.hi = icmp eq i64 %i.hh, 0
  br i1 %i.hi, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit88, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.hj = ptrtoint ptr %i.gv to i64               ; 2 uses
  %i.hk = and i64 %i.hj, 3
  %.not.i.i.i.i.i.i.i.i54 = icmp eq i64 %i.hk, 0
  br i1 %.not.i.i.i.i.i.i.i.i54, label %bb.w, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i55

bb.w:                                             ; preds = %bb.v
  %i.hl = lshr exact i64 %i.hj, 2
  %i.hm = sub nsw i64 0, %i.hl
  %i.hn = and i64 %i.hm, 3
  %i.ho = tail call i64 @llvm.smin.i64(i64 %i.hn, i64 %i.hh)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i55

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i55: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i.i.i56 = phi i64 [ %i.ho, %bb.w ], [ %i.hh, %bb.v ] ; 12 uses
  %i.hp = sub nsw i64 %i.hh, %.0.i.i.i.i.i.i.i.i56 ; 5 uses
  %i.hq = sdiv i64 %i.hp, 8
  %i.hr = shl nsw i64 %i.hq, 3                    ; 2 uses
  %i.hs = sdiv i64 %i.hp, 4                       ; 2 uses
  %i.ht = shl nsw i64 %i.hs, 2                    ; 2 uses
  %i.hu = add nsw i64 %i.hr, %.0.i.i.i.i.i.i.i.i56 ; 2 uses
  %i.hv = add nsw i64 %i.ht, %.0.i.i.i.i.i.i.i.i56 ; 4 uses
  %.off.i.i.i.i57 = add i64 %i.hp, 3
  %.not.i.i.i.i58 = icmp ult i64 %.off.i.i.i.i57, 7
  br i1 %.not.i.i.i.i58, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i55
  %i.hw = getelementptr [4 x i8], ptr %i.gv, i64 %.0.i.i.i.i.i.i.i.i56 ; 2 uses
  %i.hx = load <2 x i64>, ptr %i.hw, align 1, !tbaa !37 ; 2 uses
  %i.hy = icmp sgt i64 %i.hp, 7
  br i1 %i.hy, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.hz = getelementptr i8, ptr %i.hw, i64 16
  %i.ia = load <4 x i32>, ptr %i.hz, align 1, !tbaa !37 ; 2 uses
  %i.ib = bitcast <2 x i64> %i.hx to <4 x i32>    ; 2 uses
  %i.ic = icmp samesign ugt i64 %i.hp, 15
  br i1 %i.ic, label %.lr.ph.preheader.i.i.i.i77, label %._crit_edge.i.i.i.i74

.lr.ph.preheader.i.i.i.i77:                       ; preds = %bb.y
  %.05777.i.i.i.i78 = add nsw i64 %.0.i.i.i.i.i.i.i.i56, 8
  br label %.lr.ph.i.i.i.i79

._crit_edge.i.i.i.i74:                            ; preds = %.lr.ph.i.i.i.i79, %bb.y
  %.lcssa.i.i.i.i75 = phi <4 x i32> [ %i.ia, %bb.y ], [ %i.in, %.lr.ph.i.i.i.i79 ]
  %.sroa.067.0.lcssa.i.i.i.i76 = phi <4 x i32> [ %i.ib, %bb.y ], [ %i.ij, %.lr.ph.i.i.i.i79 ]
  %i.id = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i76, %.lcssa.i.i.i.i75 ; 2 uses
  %i.ie = bitcast <4 x i32> %i.id to <2 x i64>
  %i.if = icmp sgt i64 %i.ht, %i.hr
  br i1 %i.if, label %bb.z, label %bb.aa

.lr.ph.i.i.i.i79:                                 ; preds = %.lr.ph.i.i.i.i79, %.lr.ph.preheader.i.i.i.i77
  %.05780.i.i.i.i80 = phi i64 [ %.057.i.i.i.i83, %.lr.ph.i.i.i.i79 ], [ %.05777.i.i.i.i78, %.lr.ph.preheader.i.i.i.i77 ] ; 3 uses
  %.057.in79.i.i.i.i81 = phi i64 [ %.05780.i.i.i.i80, %.lr.ph.i.i.i.i79 ], [ %.0.i.i.i.i.i.i.i.i56, %.lr.ph.preheader.i.i.i.i77 ]
  %.sroa.067.078.i.i.i.i82 = phi <4 x i32> [ %i.ij, %.lr.ph.i.i.i.i79 ], [ %i.ib, %.lr.ph.preheader.i.i.i.i77 ]
  %i.ig = phi <4 x i32> [ %i.in, %.lr.ph.i.i.i.i79 ], [ %i.ia, %.lr.ph.preheader.i.i.i.i77 ]
  %i.ih = getelementptr inbounds [4 x i8], ptr %i.gv, i64 %.05780.i.i.i.i80
  %i.ii = load <4 x i32>, ptr %i.ih, align 1, !tbaa !37
  %i.ij = add <4 x i32> %i.ii, %.sroa.067.078.i.i.i.i82 ; 2 uses
  %i.ik = getelementptr [4 x i8], ptr %i.gv, i64 %.057.in79.i.i.i.i81
  %i.il = getelementptr i8, ptr %i.ik, i64 48
  %i.im = load <4 x i32>, ptr %i.il, align 1, !tbaa !37
  %i.in = add <4 x i32> %i.im, %i.ig              ; 2 uses
  %.057.i.i.i.i83 = add nsw i64 %.05780.i.i.i.i80, 8 ; 2 uses
  %i.io = icmp slt i64 %.057.i.i.i.i83, %i.hu
  br i1 %i.io, label %.lr.ph.i.i.i.i79, label %._crit_edge.i.i.i.i74, !llvm.loop !38

bb.z:                                             ; preds = %._crit_edge.i.i.i.i74
  %i.ip = getelementptr inbounds [4 x i8], ptr %i.gv, i64 %i.hu
  %i.iq = load <4 x i32>, ptr %i.ip, align 1, !tbaa !37
  %i.ir = add <4 x i32> %i.iq, %i.id
  %i.is = bitcast <4 x i32> %i.ir to <2 x i64>
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge.i.i.i.i74, %bb.x
  %.sroa.067.2.i.i.i.i59 = phi <2 x i64> [ %i.hx, %bb.x ], [ %i.is, %bb.z ], [ %i.ie, %._crit_edge.i.i.i.i74 ] ; 2 uses
  %i.it = bitcast <2 x i64> %.sroa.067.2.i.i.i.i59 to <4 x i32>
  %i.iu = bitcast <2 x i64> %.sroa.067.2.i.i.i.i59 to <4 x i32> ; 2 uses
  %i.iv = shufflevector <4 x i32> %i.iu, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.iw = add <4 x i32> %i.iv, %i.it              ; 2 uses
  %shift334 = shufflevector <4 x i32> %i.iw, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop335 = add nsw <4 x i32> %i.iw, %shift334
  %6 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.iu) ; 2 uses
  %i.ix = icmp sgt i64 %.0.i.i.i.i.i.i.i.i56, 0
  br i1 %i.ix, label %.lr.ph85.i.i.i.i70.preheader, label %.preheader.i.i.i.i62

.lr.ph85.i.i.i.i70.preheader:                     ; preds = %bb.aa
  %min.iters.check269 = icmp ult i64 %.0.i.i.i.i.i.i.i.i56, 8
  br i1 %min.iters.check269, label %.lr.ph85.i.i.i.i70.preheader346, label %vector.ph270

vector.ph270:                                     ; preds = %.lr.ph85.i.i.i.i70.preheader
  %n.vec271 = and i64 %.0.i.i.i.i.i.i.i.i56, 9223372036854775800 ; 3 uses
  %i.iy = shufflevector <4 x i32> %foldExtExtBinop335, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body272

vector.body272:                                   ; preds = %vector.body272, %vector.ph270
  %index273 = phi i64 [ 0, %vector.ph270 ], [ %index.next278, %vector.body272 ] ; 2 uses
  %vec.phi274 = phi <4 x i32> [ %i.iy, %vector.ph270 ], [ %i.jb, %vector.body272 ]
  %vec.phi275 = phi <4 x i32> [ zeroinitializer, %vector.ph270 ], [ %i.jc, %vector.body272 ]
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %index273 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %wide.load276 = load <4 x i32>, ptr %i.iz, align 4, !tbaa !28
  %wide.load277 = load <4 x i32>, ptr %i.ja, align 4, !tbaa !28
  %i.jb = add <4 x i32> %wide.load276, %vec.phi274 ; 2 uses
  %i.jc = add <4 x i32> %wide.load277, %vec.phi275 ; 2 uses
  %index.next278 = add nuw i64 %index273, 8       ; 2 uses
  %i.jd = icmp eq i64 %index.next278, %n.vec271
  br i1 %i.jd, label %middle.block279, label %vector.body272, !llvm.loop !217

middle.block279:                                  ; preds = %vector.body272
  %bin.rdx280 = add <4 x i32> %i.jc, %i.jb
  %i.je = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx280) ; 2 uses
  %cmp.n281 = icmp eq i64 %.0.i.i.i.i.i.i.i.i56, %n.vec271
  br i1 %cmp.n281, label %.preheader.i.i.i.i62, label %.lr.ph85.i.i.i.i70.preheader346

.lr.ph85.i.i.i.i70.preheader346:                  ; preds = %.lr.ph85.i.i.i.i70.preheader, %middle.block279
  %.05683.i.i.i.i71.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i70.preheader ], [ %n.vec271, %middle.block279 ]
  %.07582.i.i.i.i72.ph = phi i32 [ %6, %.lr.ph85.i.i.i.i70.preheader ], [ %i.je, %middle.block279 ]
  br label %.lr.ph85.i.i.i.i70

.preheader.i.i.i.i62:                             ; preds = %.lr.ph85.i.i.i.i70, %middle.block279, %bb.aa
  %.075.lcssa.i.i.i.i63 = phi i32 [ %6, %bb.aa ], [ %i.je, %middle.block279 ], [ %i.ju, %.lr.ph85.i.i.i.i70 ] ; 3 uses
  %i.jf = icmp slt i64 %i.hv, %i.hh
  br i1 %i.jf, label %.lr.ph89.i.i.i.i67.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i64

.lr.ph89.i.i.i.i67.preheader:                     ; preds = %.preheader.i.i.i.i62
  %i.jg = shl nsw i64 %i.hs, 2
  %i.jh = add i64 %.0.i.i.i.i.i.i.i.i56, %i.jg
  %i.ji = sub i64 %i.hh, %i.jh                    ; 3 uses
  %min.iters.check285 = icmp ult i64 %i.ji, 8
  br i1 %min.iters.check285, label %.lr.ph89.i.i.i.i67.preheader341, label %vector.ph286

vector.ph286:                                     ; preds = %.lr.ph89.i.i.i.i67.preheader
  %n.vec287 = and i64 %i.ji, -8                   ; 3 uses
  %i.jj = add i64 %i.hv, %n.vec287
  %i.jk = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i63, i64 0
  %i.jl = getelementptr [4 x i8], ptr %i.gv, i64 %i.hv
  br label %vector.body288

vector.body288:                                   ; preds = %vector.body288, %vector.ph286
  %index289 = phi i64 [ 0, %vector.ph286 ], [ %index.next294, %vector.body288 ] ; 2 uses
  %vec.phi290 = phi <4 x i32> [ %i.jk, %vector.ph286 ], [ %i.jo, %vector.body288 ]
  %vec.phi291 = phi <4 x i32> [ zeroinitializer, %vector.ph286 ], [ %i.jp, %vector.body288 ]
  %i.jm = getelementptr [4 x i8], ptr %i.jl, i64 %index289 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  %wide.load292 = load <4 x i32>, ptr %i.jm, align 4, !tbaa !28
  %wide.load293 = load <4 x i32>, ptr %i.jn, align 4, !tbaa !28
  %i.jo = add <4 x i32> %wide.load292, %vec.phi290 ; 2 uses
  %i.jp = add <4 x i32> %wide.load293, %vec.phi291 ; 2 uses
  %index.next294 = add nuw i64 %index289, 8       ; 2 uses
  %i.jq = icmp eq i64 %index.next294, %n.vec287
  br i1 %i.jq, label %middle.block295, label %vector.body288, !llvm.loop !218

middle.block295:                                  ; preds = %vector.body288
  %bin.rdx296 = add <4 x i32> %i.jp, %i.jo
  %i.jr = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx296) ; 2 uses
  %cmp.n297 = icmp eq i64 %i.ji, %n.vec287
  br i1 %cmp.n297, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i64, label %.lr.ph89.i.i.i.i67.preheader341

.lr.ph89.i.i.i.i67.preheader341:                  ; preds = %.lr.ph89.i.i.i.i67.preheader, %middle.block295
  %.05588.i.i.i.i68.ph = phi i64 [ %i.hv, %.lr.ph89.i.i.i.i67.preheader ], [ %i.jj, %middle.block295 ]
  %.187.i.i.i.i69.ph = phi i32 [ %.075.lcssa.i.i.i.i63, %.lr.ph89.i.i.i.i67.preheader ], [ %i.jr, %middle.block295 ]
  br label %.lr.ph89.i.i.i.i67

.lr.ph85.i.i.i.i70:                               ; preds = %.lr.ph85.i.i.i.i70.preheader346, %.lr.ph85.i.i.i.i70
  %.05683.i.i.i.i71 = phi i64 [ %i.jv, %.lr.ph85.i.i.i.i70 ], [ %.05683.i.i.i.i71.ph, %.lr.ph85.i.i.i.i70.preheader346 ] ; 2 uses
  %.07582.i.i.i.i72 = phi i32 [ %i.ju, %.lr.ph85.i.i.i.i70 ], [ %.07582.i.i.i.i72.ph, %.lr.ph85.i.i.i.i70.preheader346 ]
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %.05683.i.i.i.i71
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !28
  %i.ju = add nsw i32 %i.jt, %.07582.i.i.i.i72    ; 2 uses
  %i.jv = add nuw nsw i64 %.05683.i.i.i.i71, 1    ; 2 uses
  %exitcond.not.i.i.i.i73 = icmp eq i64 %i.jv, %.0.i.i.i.i.i.i.i.i56
  br i1 %exitcond.not.i.i.i.i73, label %.preheader.i.i.i.i62, label %.lr.ph85.i.i.i.i70, !llvm.loop !219

.lr.ph89.i.i.i.i67:                               ; preds = %.lr.ph89.i.i.i.i67.preheader341, %.lr.ph89.i.i.i.i67
  %.05588.i.i.i.i68 = phi i64 [ %i.jz, %.lr.ph89.i.i.i.i67 ], [ %.05588.i.i.i.i68.ph, %.lr.ph89.i.i.i.i67.preheader341 ] ; 2 uses
  %.187.i.i.i.i69 = phi i32 [ %i.jy, %.lr.ph89.i.i.i.i67 ], [ %.187.i.i.i.i69.ph, %.lr.ph89.i.i.i.i67.preheader341 ]
  %i.jw = getelementptr inbounds [4 x i8], ptr %i.gv, i64 %.05588.i.i.i.i68
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !28
  %i.jy = add nsw i32 %i.jx, %.187.i.i.i.i69      ; 2 uses
  %i.jz = add nsw i64 %.05588.i.i.i.i68, 1        ; 2 uses
  %i.ka = icmp slt i64 %i.jz, %i.hh
  br i1 %i.ka, label %.lr.ph89.i.i.i.i67, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i64, !llvm.loop !220

bb.ab:                                            ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i55
  %i.kb = load i32, ptr %i.gv, align 4, !tbaa !28 ; 3 uses
  %i.kc = icmp sgt i64 %i.hh, 1
  br i1 %i.kc, label %.lr.ph94.i.i.i.i84.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i64

.lr.ph94.i.i.i.i84.preheader:                     ; preds = %bb.ab
  %i.kd = add nsw i64 %i.hh, -1                   ; 2 uses
  %min.iters.check301 = icmp ult i64 %i.hh, 9
  br i1 %min.iters.check301, label %.lr.ph94.i.i.i.i84.preheader338, label %vector.ph302

vector.ph302:                                     ; preds = %.lr.ph94.i.i.i.i84.preheader
  %n.vec303 = and i64 %i.kd, -8                   ; 3 uses
  %i.ke = or disjoint i64 %n.vec303, 1
  %i.kf = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.kb, i64 0
  br label %vector.body304

vector.body304:                                   ; preds = %vector.body304, %vector.ph302
  %index305 = phi i64 [ 0, %vector.ph302 ], [ %index.next310, %vector.body304 ] ; 2 uses
  %vec.phi306 = phi <4 x i32> [ %i.kf, %vector.ph302 ], [ %i.kj, %vector.body304 ]
  %vec.phi307 = phi <4 x i32> [ zeroinitializer, %vector.ph302 ], [ %i.kk, %vector.body304 ]
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %index305 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 4
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 20
  %wide.load308 = load <4 x i32>, ptr %i.kh, align 4, !tbaa !28
  %wide.load309 = load <4 x i32>, ptr %i.ki, align 4, !tbaa !28
  %i.kj = add <4 x i32> %wide.load308, %vec.phi306 ; 2 uses
  %i.kk = add <4 x i32> %wide.load309, %vec.phi307 ; 2 uses
  %index.next310 = add nuw i64 %index305, 8       ; 2 uses
  %i.kl = icmp eq i64 %index.next310, %n.vec303
  br i1 %i.kl, label %middle.block311, label %vector.body304, !llvm.loop !221

middle.block311:                                  ; preds = %vector.body304
  %bin.rdx312 = add <4 x i32> %i.kk, %i.kj
  %i.km = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx312) ; 2 uses
  %cmp.n313 = icmp eq i64 %i.kd, %n.vec303
  br i1 %cmp.n313, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i64, label %.lr.ph94.i.i.i.i84.preheader338

.lr.ph94.i.i.i.i84.preheader338:                  ; preds = %.lr.ph94.i.i.i.i84.preheader, %middle.block311
  %.092.i.i.i.i85.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i84.preheader ], [ %i.ke, %middle.block311 ]
  %.291.i.i.i.i86.ph = phi i32 [ %i.kb, %.lr.ph94.i.i.i.i84.preheader ], [ %i.km, %middle.block311 ]
  br label %.lr.ph94.i.i.i.i84

.lr.ph94.i.i.i.i84:                               ; preds = %.lr.ph94.i.i.i.i84.preheader338, %.lr.ph94.i.i.i.i84
  %.092.i.i.i.i85 = phi i64 [ %i.kq, %.lr.ph94.i.i.i.i84 ], [ %.092.i.i.i.i85.ph, %.lr.ph94.i.i.i.i84.preheader338 ] ; 2 uses
  %.291.i.i.i.i86 = phi i32 [ %i.kp, %.lr.ph94.i.i.i.i84 ], [ %.291.i.i.i.i86.ph, %.lr.ph94.i.i.i.i84.preheader338 ]
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %.092.i.i.i.i85
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !28
  %i.kp = add nsw i32 %i.ko, %.291.i.i.i.i86      ; 2 uses
  %i.kq = add nuw nsw i64 %.092.i.i.i.i85, 1      ; 2 uses
  %exitcond102.not.i.i.i.i87 = icmp eq i64 %i.kq, %i.hh
  br i1 %exitcond102.not.i.i.i.i87, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i64, label %.lr.ph94.i.i.i.i84, !llvm.loop !222

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i64: ; preds = %.lr.ph89.i.i.i.i67, %.lr.ph94.i.i.i.i84, %middle.block295, %middle.block311, %bb.ab, %.preheader.i.i.i.i62
  %.0.i.i65 = phi i32 [ %i.kp, %.lr.ph94.i.i.i.i84 ], [ %.075.lcssa.i.i.i.i63, %.preheader.i.i.i.i62 ], [ %i.kb, %bb.ab ], [ %i.km, %middle.block311 ], [ %i.jr, %middle.block295 ], [ %i.jy, %.lr.ph89.i.i.i.i67 ]
  %i.kr = sext i32 %.0.i.i65 to i64
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit88

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit88: ; preds = %bb.t, %bb.u, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i64
  %.0.i66 = phi i64 [ %i.hf, %bb.t ], [ %i.kr, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i64 ], [ 0, %bb.u ]
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %.0.i66, i64 noundef 1)
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.kt = load i64, ptr %i.ks, align 8, !tbaa !129 ; 2 uses
  %i.ku = icmp sgt i64 %i.kt, 0
  br i1 %i.ku, label %.lr.ph113, label %._crit_edge114

.lr.ph113:                                        ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit88
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !148 ; 5 uses
  %i.kx = ptrtoaddr ptr %i.kw to i64
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !149 ; 4 uses
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !128
  %i.lc = load ptr, ptr %i.a, align 8, !tbaa !122 ; 2 uses
  %i.ld = icmp eq ptr %i.lc, null
  br label %bb.ac

._crit_edge114:                                   ; preds = %._crit_edge, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit88
  ret void

bb.ac:                                            ; preds = %.lr.ph113, %._crit_edge
  %i.le = phi i64 [ %i.kt, %.lr.ph113 ], [ %i.nb, %._crit_edge ]
  %indvars.iv134 = phi i64 [ 0, %.lr.ph113 ], [ %indvars.iv.next135, %._crit_edge ] ; 7 uses
  %.017111 = phi i32 [ 0, %.lr.ph113 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %indvars.iv134 ; 2 uses
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !28
  %i.lh = sext i32 %i.lg to i64                   ; 8 uses
  br i1 %i.ld, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.li = getelementptr i8, ptr %i.lf, i64 4
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !28
  %i.lk = sext i32 %i.lj to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

bb.ae:                                            ; preds = %bb.ac
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %indvars.iv134
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !28
  %i.ln = sext i32 %i.lm to i64
end_hunk_6
