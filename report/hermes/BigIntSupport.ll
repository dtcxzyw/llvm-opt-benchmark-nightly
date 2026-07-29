inline.NumInlined: 1517
inline.NumDeleted: 727
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6hermes6bigint8toStringB5cxx11ENS0_18ImmutableBigIntRefEh:bb.a
  call void @_ZdaPv(ptr noundef nonnull %i.bm) #17
  br label %_ZN4llvh5APIntD2Ev.exit

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %bb.j, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit
  %i.bo = load i64, ptr %5, align 8               ; 2 uses
  store i64 %i.bo, ptr %4, align 8
  %i.bp = load i32, ptr %i.an, align 8, !tbaa !12 ; 3 uses
  store i32 %i.bp, ptr %i.ap, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.bq = icmp ult i32 %i.bp, 65
  br i1 %i.bq, label %bb.k, label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i

_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i:        ; preds = %_ZN4llvh5APIntD2Ev.exit
  %i.br = inttoptr i64 %i.bo to ptr
  %i.bs = call noundef i32 @_ZNK4llvh5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %4) #20
  %i.bt = sub i32 %i.bp, %i.bs
  %i.bu = icmp ult i32 %i.bt, 65
  br i1 %i.bu, label %bb.k, label %_ZNK4llvh5APIntneEm.exit.backedge

bb.k:                                             ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i, %_ZN4llvh5APIntD2Ev.exit
  %spec.select.i.i.i = phi ptr [ %i.br, %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i ], [ %4, %_ZN4llvh5APIntD2Ev.exit ]
  %.0.i.i.i = load i64, ptr %spec.select.i.i.i, align 8, !tbaa !7
  %.not = icmp eq i64 %.0.i.i.i, 0
  br i1 %.not, label %bb.l, label %_ZNK4llvh5APIntneEm.exit.backedge

_ZNK4llvh5APIntneEm.exit.backedge:                ; preds = %bb.k, %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i
  br label %_ZNK4llvh5APIntneEm.exit, !llvm.loop !85

bb.l:                                             ; preds = %bb.k
  br i1 %i.z, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bv = load i64, ptr %i.ab, align 8, !tbaa !39 ; 4 uses
  %i.bw = add i64 %i.bv, 1                        ; 3 uses
  %i.bx = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.aa
  br i1 %i.by, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i26: ; preds = %bb.m
  %i.bz = icmp ult i64 %i.bv, 16
  call void @llvm.assume(i1 %i.bz)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.m
  %i.ca = load i64, ptr %i.aa, align 8, !tbaa !7
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i24: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i26
  %i.cb = phi i64 [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i26 ]
  %i.cc = icmp ugt i64 %i.bw, %i.cb
  br i1 %i.cc, label %bb.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit27

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bv, i64 noundef 0, ptr noundef null, i64 noundef 1) #16
  %.pre.i25 = load ptr, ptr %0, align 8, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit27: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i24, %bb.n
  %i.cd = phi ptr [ %.pre.i25, %bb.n ], [ %i.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i24 ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.bv
  store i8 45, ptr %i.ce, align 1, !tbaa !7
  store i64 %i.bw, ptr %i.ab, align 8, !tbaa !39
  %i.cf = load ptr, ptr %0, align 8, !tbaa !45
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.bw
  store i8 0, ptr %i.cg, align 1, !tbaa !7
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit27, %bb.l
  %i.ch = load i64, ptr %i.ab, align 8, !tbaa !39 ; 2 uses
  %i.ci = icmp sgt i64 %i.ch, 1
  br i1 %i.ci, label %.lr.ph.i.i.preheader, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.o
  %i.cj = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cj, i64 %i.ch
  %.sroa.0.08.i.i = getelementptr i8, ptr %i.ck, i64 -1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.08.i.i, %.lr.ph.i.i.preheader ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %i.cn, %.lr.ph.i.i ], [ %i.cj, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.cl = load i8, ptr %.sroa.05.09.i.i, align 1, !tbaa !7
  %i.cm = load i8, ptr %.sroa.0.010.i.i, align 1, !tbaa !7
  store i8 %i.cm, ptr %.sroa.05.09.i.i, align 1, !tbaa !7
  store i8 %i.cl, ptr %.sroa.0.010.i.i, align 1, !tbaa !7
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 1 ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -1 ; 2 uses
  %i.co = icmp ult ptr %i.cn, %.sroa.0.0.i.i
  br i1 %i.co, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit, !llvm.loop !86

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit: ; preds = %.lr.ph.i.i, %bb.o
  %i.cp = load i32, ptr %i.ap, align 8, !tbaa !12
  %i.cq = icmp ugt i32 %i.cp, 64
  br i1 %i.cq, label %bb.p, label %_ZN4llvh5APIntD2Ev.exit28

bb.p:                                             ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit
  %i.cr = load ptr, ptr %4, align 8, !tbaa !7     ; 2 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %_ZN4llvh5APIntD2Ev.exit28, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZdaPv(ptr noundef nonnull %i.cr) #17
  br label %_ZN4llvh5APIntD2Ev.exit28

_ZN4llvh5APIntD2Ev.exit28:                        ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.r

bb.r:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit28, %._crit_edge.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl(ptr %0, i32 %1, i64 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !10
  %i.b = lshr i64 %2, 56
  %i.c = trunc nuw i64 %i.b to i8                 ; 9 uses
  %i.d = ashr i8 %i.c, 7                          ; 3 uses
  %i.e = icmp eq i8 %i.d, %i.c
  %i.f = lshr i64 %2, 40
  %i.g = trunc i64 %i.f to i8                     ; 2 uses
  %i.h = lshr i64 %2, 32
  %i.i = trunc i64 %i.h to i8                     ; 2 uses
  %i.j = lshr i64 %2, 24
  %i.k = trunc i64 %i.j to i8                     ; 2 uses
  %i.l = lshr i64 %2, 16
  %i.m = trunc i64 %i.l to i8                     ; 2 uses
  %i.n = lshr i64 %2, 8
  %i.o = trunc i64 %i.n to i8                     ; 2 uses
  %i.p = trunc i64 %2 to i8                       ; 2 uses
  br i1 %i.e, label %.lr.ph.i.preheader.i, label %_ZN6hermes6bigint12_GLOBAL__N_131makeImmutableRefFromSignedDigitERl.exit

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  %i.q = lshr i64 %2, 48
  %i.r = trunc i64 %i.q to i8                     ; 2 uses
  %i.s = icmp eq i8 %i.r, %i.c
  br i1 %i.s, label %.lr.ph.i.1.i, label %.critedge.i.loopexit.i.i

.lr.ph.i.1.i:                                     ; preds = %.lr.ph.i.preheader.i
  %i.t = icmp eq i8 %i.g, %i.c
  br i1 %i.t, label %.lr.ph.i.2.i, label %.critedge.i.loopexit.i.i

.lr.ph.i.2.i:                                     ; preds = %.lr.ph.i.1.i
  %i.u = icmp eq i8 %i.i, %i.c
  br i1 %i.u, label %.lr.ph.i.3.i, label %.critedge.i.loopexit.i.i

.lr.ph.i.3.i:                                     ; preds = %.lr.ph.i.2.i
  %i.v = icmp eq i8 %i.k, %i.c
  br i1 %i.v, label %.lr.ph.i.4.i, label %.critedge.i.loopexit.i.i

.lr.ph.i.4.i:                                     ; preds = %.lr.ph.i.3.i
  %i.w = icmp eq i8 %i.m, %i.c
  br i1 %i.w, label %.lr.ph.i.5.i, label %.critedge.i.loopexit.i.i

.lr.ph.i.5.i:                                     ; preds = %.lr.ph.i.4.i
  %i.x = icmp eq i8 %i.o, %i.c
  br i1 %i.x, label %.lr.ph.i.6.i, label %.critedge.i.loopexit.i.i

.lr.ph.i.6.i:                                     ; preds = %.lr.ph.i.5.i
  %i.y = icmp eq i8 %i.p, %i.c
  br i1 %i.y, label %_ZN6hermes6bigint12_GLOBAL__N_131makeImmutableRefFromSignedDigitERl.exit, label %.critedge.i.loopexit.i.i

.critedge.i.loopexit.i.i:                         ; preds = %.lr.ph.i.6.i, %.lr.ph.i.5.i, %.lr.ph.i.4.i, %.lr.ph.i.3.i, %.lr.ph.i.2.i, %.lr.ph.i.1.i, %.lr.ph.i.preheader.i
  %.lcssa9.i = phi i8 [ %i.r, %.lr.ph.i.preheader.i ], [ %i.g, %.lr.ph.i.1.i ], [ %i.i, %.lr.ph.i.2.i ], [ %i.k, %.lr.ph.i.3.i ], [ %i.m, %.lr.ph.i.4.i ], [ %i.o, %.lr.ph.i.5.i ], [ %i.p, %.lr.ph.i.6.i ]
  %.sroa.10.030.i4.i.lcssa8.i = phi i32 [ 8, %.lr.ph.i.preheader.i ], [ 7, %.lr.ph.i.1.i ], [ 6, %.lr.ph.i.2.i ], [ 5, %.lr.ph.i.3.i ], [ 4, %.lr.ph.i.4.i ], [ 3, %.lr.ph.i.5.i ], [ 2, %.lr.ph.i.6.i ]
  %.lcssa7.i = phi i32 [ 7, %.lr.ph.i.preheader.i ], [ 6, %.lr.ph.i.1.i ], [ 5, %.lr.ph.i.2.i ], [ 4, %.lr.ph.i.3.i ], [ 3, %.lr.ph.i.4.i ], [ 2, %.lr.ph.i.5.i ], [ 1, %.lr.ph.i.6.i ]
  %.pre.i.i = ashr i8 %.lcssa9.i, 7
  br label %_ZN6hermes6bigint12_GLOBAL__N_131makeImmutableRefFromSignedDigitERl.exit

_ZN6hermes6bigint12_GLOBAL__N_131makeImmutableRefFromSignedDigitERl.exit: ; preds = %bb.a, %.lr.ph.i.6.i, %.critedge.i.loopexit.i.i
  %.sroa.5.028.i.i.i = phi i32 [ 8, %bb.a ], [ %.sroa.10.030.i4.i.lcssa8.i, %.critedge.i.loopexit.i.i ], [ 1, %.lr.ph.i.6.i ]
  %.sroa.10.026.i.i.i = phi i32 [ 8, %bb.a ], [ %.lcssa7.i, %.critedge.i.loopexit.i.i ], [ 0, %.lr.ph.i.6.i ]
  %i.z = phi i8 [ %i.d, %bb.a ], [ %.pre.i.i, %.critedge.i.loopexit.i.i ], [ 0, %.lr.ph.i.6.i ]
  %i.aa = icmp eq i8 %i.z, %i.d
  %.sroa.3.0.copyload4.i.i.i = select i1 %i.aa, i32 %.sroa.10.026.i.i.i, i32 %.sroa.5.028.i.i.i
  %i.ab = add nuw nsw i32 %.sroa.3.0.copyload4.i.i.i, 7
  %i.ac = lshr i32 %i.ab, 3                       ; 4 uses
  %.not.i.i = icmp eq i32 %1, 0
  br i1 %.not.i.i, label %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.thread.i, label %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i

_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_131makeImmutableRefFromSignedDigitERl.exit
  %i.ad = add i32 %1, -1
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !10
  %.fr.i = freeze i64 %i.ag                       ; 2 uses
  %i.ah = icmp slt i64 %.fr.i, 0                  ; 3 uses
  %.not.i23.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i23.i, label %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit._ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit24_crit_edge.i, label %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit24.i

_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.thread.i: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_131makeImmutableRefFromSignedDigitERl.exit
  %.not.i2326.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i2326.i, label %.thread.i, label %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.thread._ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit24_crit_edge.i

_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.thread._ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit24_crit_edge.i: ; preds = %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.thread.i
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !10
  %i.aj = icmp slt i64 %i.ai, 0
  br i1 %i.aj, label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefES1_.exit, label %.thread25.i

_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit._ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit24_crit_edge.i: ; preds = %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i
  br i1 %i.ah, label %.thread27.i, label %.thread.i

_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit24.i: ; preds = %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !10
  %i.al = xor i64 %i.ak, %.fr.i
  %i.am = icmp slt i64 %i.al, 0
  br i1 %i.am, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit24.i
  br i1 %i.ah, label %.thread27.i, label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefES1_.exit

.thread27.i:                                      ; preds = %bb.b, %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit._ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit24_crit_edge.i
  br label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefES1_.exit

bb.c:                                             ; preds = %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit24.i
  %i.an = icmp eq i32 %1, 1
  br i1 %i.an, label %bb.d, label %bb.e

.thread.i:                                        ; preds = %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit._ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit24_crit_edge.i, %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.thread.i
  %3 = icmp eq i32 %1, %i.ac
  br i1 %3, label %bb.d, label %.thread25.i

bb.d:                                             ; preds = %.thread.i, %bb.c
  %4 = call noundef i32 @_ZN4llvh5APInt9tcCompareEPKmS2_j(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %1) #16
  br label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefES1_.exit

bb.e:                                             ; preds = %bb.c
  br i1 %i.ah, label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefES1_.exit, label %.thread25.i

.thread25.i:                                      ; preds = %bb.e, %.thread.i, %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.thread._ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit24_crit_edge.i
  %5 = icmp ult i32 %1, %i.ac
  %i.ao = select i1 %5, i32 -1, i32 1
  br label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefES1_.exit

_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefES1_.exit: ; preds = %bb.e, %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.thread._ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit24_crit_edge.i, %bb.b, %.thread27.i, %bb.d, %.thread25.i
  %.020.i = phi i32 [ %i.ao, %.thread25.i ], [ %4, %bb.d ], [ 1, %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.thread._ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit24_crit_edge.i ], [ -1, %.thread27.i ], [ 1, %bb.b ], [ -1, %bb.e ]
  ret i32 %.020.i
}

declare void @_ZN4llvh5APIntC1EjNS_8ArrayRefImEE(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef, ptr, i64) unnamed_addr #6

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #6

declare void @_ZN4llvh5APInt7udivremERKS0_mRS0_Rm(ptr noundef nonnull align 8 dereferenceable(12), i64 noundef, ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 3) i32 @_ZN6hermes6bigint8toStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4llvh8ArrayRefIhEEh(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(32) %0, ptr nofree readonly captures(none) %1, i64 %2, i8 noundef zeroext %3) local_unnamed_addr #5 {
bb.a:
  %4 = alloca %"class.hermes::bigint::TmpStorage", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.a = trunc i64 %2 to i32                      ; 2 uses
  %i.b = add i32 %i.a, 7                          ; 4 uses
  %i.c = lshr i32 %i.b, 3                         ; 4 uses
  %i.d = icmp ugt i32 %i.b, 8199
  br i1 %i.d, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.e = zext nneg i32 %i.c to i64                ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.f, ptr %4, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 4, ptr %i.h, align 4, !tbaa !19
  store i32 0, ptr %i.g, align 8, !tbaa !20
  %i.i = icmp samesign ugt i32 %i.b, 39
  br i1 %i.i, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %bb.b
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull %i.f, i64 noundef %i.e, i64 noundef 8) #16
  %.pre.i.i = load ptr, ptr %4, align 8, !tbaa !16
  store i32 %i.c, ptr %i.g, align 8, !tbaa !20
  br label %.lr.ph.i.i.i.i.i.i.i.preheader.i

bb.c:                                             ; preds = %bb.b
  store i32 %i.c, ptr %i.g, align 8, !tbaa !20
  %.not5.i.i.i.i.i.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not5.i.i.i.i.i.i.i.i, label %_ZN6hermes6bigint10TmpStorageC2Ej.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.i.i.i.preheader.i:                 ; preds = %bb.c, %.thread.i
  %i.j = phi ptr [ %.pre.i.i, %.thread.i ], [ %i.f, %bb.c ] ; 2 uses
  %i.k = shl nuw nsw i64 %i.e, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.j, i8 0, i64 %i.k, i1 false), !tbaa !10
  br label %_ZN6hermes6bigint10TmpStorageC2Ej.exit

_ZN6hermes6bigint10TmpStorageC2Ej.exit:           ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i.preheader.i
  %i.l = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.i.i.preheader.i ], [ %i.f, %bb.c ] ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.e
  store ptr %i.n, ptr %i.m, align 8, !tbaa !21
  %i.o = and i32 %i.b, 16376                      ; 2 uses
  %i.p = zext nneg i32 %i.o to i64                ; 6 uses
  %i.q = icmp ugt i64 %2, %i.p
  br i1 %i.q, label %_ZN6hermes6bigint13initWithBytesENS0_16MutableBigIntRefEN4llvh8ArrayRefIhEE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN6hermes6bigint10TmpStorageC2Ej.exit
  %i.r = icmp eq i64 %2, 0
  br i1 %i.r, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr readonly align 1 %1, i64 %2, i1 false)
  %i.s = sub nsw i32 %i.o, %i.a
  %i.t = getelementptr i8, ptr %i.l, i64 %2       ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 -1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !7
  %i.w = ashr i8 %i.v, 7
  %i.x = zext i32 %i.s to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.t, i8 %i.w, i64 %i.x, i1 false)
  %i.y = getelementptr i8, ptr %i.l, i64 %i.p
  %i.z = getelementptr i8, ptr %i.y, i64 -1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !7    ; 3 uses
  %i.ab = ashr i8 %i.aa, 7                        ; 3 uses
  %i.ac = icmp eq i8 %i.aa, %i.ab
  br i1 %i.ac, label %.lr.ph.i.i.preheader, label %.critedge.thread.i.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %i.ad = add nsw i64 %i.p, -1
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %i.ae = phi i64 [ %i.ad, %.lr.ph.i.i.preheader ], [ %i.aj, %.lr.ph.i.i ] ; 4 uses
  %.sroa.10.030.i4.i.i52 = phi i64 [ %i.p, %.lr.ph.i.i.preheader ], [ %i.ae, %.lr.ph.i.i ]
  %i.af = getelementptr i8, ptr %i.l, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 -1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !7   ; 2 uses
  %i.ai = icmp eq i8 %i.ah, %i.aa
  br i1 %i.ai, label %.lr.ph.i.i, label %.critedge.i.loopexit.i.i, !llvm.loop !8

.lr.ph.i.i:                                       ; preds = %bb.f
  %i.aj = add nsw i64 %i.ae, -1                   ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %.critedge.thread.i.i.i, label %bb.f, !llvm.loop !8

.critedge.i.loopexit.i.i:                         ; preds = %bb.f
  %.pre.i.i10 = ashr i8 %i.ah, 7
  br label %.critedge.thread.i.i.i

.critedge.thread.i.i.i:                           ; preds = %.lr.ph.i.i, %.critedge.i.loopexit.i.i, %bb.e
  %.sroa.5.028.i.i.i = phi i64 [ %i.p, %bb.e ], [ %.sroa.10.030.i4.i.i52, %.critedge.i.loopexit.i.i ], [ 1, %.lr.ph.i.i ]
  %.sroa.10.026.i.i.i = phi i64 [ %i.p, %bb.e ], [ %i.ae, %.critedge.i.loopexit.i.i ], [ 0, %.lr.ph.i.i ]
  %i.al = phi i8 [ %i.ab, %bb.e ], [ %.pre.i.i10, %.critedge.i.loopexit.i.i ], [ 0, %.lr.ph.i.i ]
  %i.am = icmp eq i8 %i.al, %i.ab
  %.sroa.3.0.copyload4.i.i.i = select i1 %i.am, i64 %.sroa.10.026.i.i.i, i64 %.sroa.5.028.i.i.i
  %i.an = trunc nuw i64 %.sroa.3.0.copyload4.i.i.i to i32
  %i.ao = add nuw i32 %i.an, 7
  %i.ap = lshr i32 %i.ao, 3
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %.critedge.thread.i.i.i
  %.sink.i.ph = phi i32 [ 0, %bb.d ], [ %i.ap, %.critedge.thread.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @_ZN6hermes6bigint8toStringB5cxx11ENS0_18ImmutableBigIntRefEh(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr %i.l, i32 %.sink.i.ph, i8 noundef zeroext %3)
  %i.aq = load ptr, ptr %0, align 8, !tbaa !45    ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  %i.at = load ptr, ptr %5, align 8, !tbaa !45    ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.av = icmp eq ptr %i.at, %i.au                ; 2 uses
  br i1 %i.as, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.g
  br i1 %i.av, label %bb.h, label %.thread.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.g
  br i1 %i.av, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !39 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 16
  call void @llvm.assume(i1 %i.ay)
  switch i64 %i.ax, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.az = load i8, ptr %i.at, align 1, !tbaa !7
  store i8 %i.az, ptr %i.aq, align 1, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aq, ptr align 1 %i.at, i64 %i.ax, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.ba = load i64, ptr %i.aw, align 8, !tbaa !39 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !39
  %i.bc = load ptr, ptr %0, align 8, !tbaa !45
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ba
  store i8 0, ptr %i.bd, align 1, !tbaa !7
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i11:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.at, ptr %0, align 8, !tbaa !45
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bg = load <2 x i64>, ptr %i.bf, align 8, !tbaa !7
  store <2 x i64> %i.bg, ptr %i.be, align 8, !tbaa !7
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bh = load i64, ptr %i.ar, align 8, !tbaa !7
  store ptr %i.at, ptr %0, align 8, !tbaa !45
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bk = load <2 x i64>, ptr %i.bi, align 8, !tbaa !7
  store <2 x i64> %i.bk, ptr %i.bj, align 8, !tbaa !7
  %.not.i = icmp eq ptr %i.aq, null
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.aq, ptr %5, align 8, !tbaa !45
  store i64 %i.bh, ptr %i.au, align 8, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i11
  store ptr %i.au, ptr %5, align 8, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.k, %bb.l
  %i.bl = phi ptr [ %i.aq, %bb.k ], [ %i.au, %bb.l ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.bm, align 8, !tbaa !39
  store i8 0, ptr %i.bl, align 1, !tbaa !7
  %i.bn = load ptr, ptr %5, align 8, !tbaa !45    ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bq = load i64, ptr %i.bo, align 8, !tbaa !7
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %.pre = load ptr, ptr %4, align 8, !tbaa !16
  br label %_ZN6hermes6bigint13initWithBytesENS0_16MutableBigIntRefEN4llvh8ArrayRefIhEE.exit

_ZN6hermes6bigint13initWithBytesENS0_16MutableBigIntRefEN4llvh8ArrayRefIhEE.exit: ; preds = %_ZN6hermes6bigint10TmpStorageC2Ej.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bs = phi ptr [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.l, %_ZN6hermes6bigint10TmpStorageC2Ej.exit ] ; 2 uses
  %.0 = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 1, %_ZN6hermes6bigint10TmpStorageC2Ej.exit ]
  %i.bt = icmp eq ptr %i.bs, %i.f
  br i1 %i.bt, label %_ZN6hermes6bigint10TmpStorageD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN6hermes6bigint13initWithBytesENS0_16MutableBigIntRefEN4llvh8ArrayRefIhEE.exit
  call void @free(ptr noundef %i.bs) #16
  br label %_ZN6hermes6bigint10TmpStorageD2Ev.exit

_ZN6hermes6bigint10TmpStorageD2Ev.exit:           ; preds = %_ZN6hermes6bigint13initWithBytesENS0_16MutableBigIntRefEN4llvh8ArrayRefIhEE.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %_ZN6hermes6bigint10TmpStorageD2Ev.exit
  %.1 = phi i32 [ %.0, %_ZN6hermes6bigint10TmpStorageD2Ev.exit ], [ 2, %bb.a ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefES1_(ptr %0, i32 %1, ptr %2, i32 %3) local_unnamed_addr #5 {
bb.a:
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.thread, label %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit

_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit: ; preds = %bb.a
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b
  %i.d = load i64, ptr %i.c, align 8, !tbaa !10
  %.fr = freeze i64 %i.d                          ; 2 uses
  %i.e = icmp slt i64 %.fr, 0                     ; 3 uses
  %.not.i23 = icmp eq i32 %3, 0
  br i1 %.not.i23, label %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit._ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit24_crit_edge, label %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit24

_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.thread: ; preds = %bb.a
  %.not.i2326 = icmp eq i32 %3, 0
  br i1 %.not.i2326, label %.thread.a, label %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.thread._ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit24_crit_edge

_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.thread._ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit24_crit_edge: ; preds = %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.thread
  %i.f = add i32 %3, -1
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !10
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %.thread29, label %.thread25

_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit._ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit24_crit_edge: ; preds = %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit
  br i1 %i.e, label %.thread27, label %.thread.a

_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit24: ; preds = %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit
  %i.k = add i32 %3, -1
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !10
  %i.o = xor i64 %i.n, %.fr
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %bb.b, label %4

bb.b:                                             ; preds = %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit24
  br i1 %i.e, label %.thread27, label %.thread29

.thread27:                                        ; preds = %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit._ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit24_crit_edge, %bb.b
  br label %.thread29

4:                                                ; preds = %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit24
  %5 = icmp eq i32 %1, %3
  br i1 %5, label %bb.c, label %bb.d

.thread.a:                                        ; preds = %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.thread, %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit._ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit24_crit_edge
  %i.q = icmp eq i32 %1, %3
  br i1 %i.q, label %bb.c, label %.thread25

bb.c:                                             ; preds = %.thread.a, %4
  %i.r = tail call noundef i32 @_ZN4llvh5APInt9tcCompareEPKmS2_j(ptr noundef %0, ptr noundef %2, i32 noundef %1) #16
  br label %.thread29

bb.d:                                             ; preds = %4
  br i1 %i.e, label %bb.e, label %.thread25

bb.e:                                             ; preds = %bb.d
  %6 = icmp ult i32 %1, %3
  %i.s = select i1 %6, i32 1, i32 -1
  br label %.thread29

.thread25:                                        ; preds = %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.thread._ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit24_crit_edge, %.thread.a, %bb.d
  %7 = icmp ult i32 %1, %3
  %i.t = select i1 %7, i32 -1, i32 1
  br label %.thread29

.thread29:                                        ; preds = %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.thread._ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit24_crit_edge, %.thread27, %bb.b, %bb.c, %.thread25, %bb.e
  %.020 = phi i32 [ %i.t, %.thread25 ], [ %i.r, %bb.c ], [ %i.s, %bb.e ], [ -1, %.thread27 ], [ 1, %bb.b ], [ 1, %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.thread._ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit24_crit_edge ]
  ret i32 %.020
}

declare noundef i32 @_ZN4llvh5APInt9tcCompareEPKmS2_j(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN6hermes6bigint31isSingleDigitTruncationLosslessENS0_18ImmutableBigIntRefEb(ptr nofree readonly captures(none) %0, i32 %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = icmp eq i32 %1, 1
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  switch i32 %1, label %bb.g [
    i32 1, label %bb.e
    i32 2, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.c = load i64, ptr %0, align 8, !tbaa !10
  %.not = icmp sgt i64 %i.c, -1
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !10
  %i.f = icmp eq i64 %i.e, 0
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d, %bb.a, %bb.c
  %.0 = phi i1 [ true, %bb.a ], [ %i.b, %bb.c ], [ %.not, %bb.e ], [ false, %bb.d ], [ %i.f, %bb.f ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef range(i32 0, 3) i32 @_ZN6hermes6bigint17asUintNResultSizeEmNS0_18ImmutableBigIntRefERj(i64 noundef %0, ptr nofree readonly captures(none) %1, i32 %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #7 {
bb.a:
  %i.a = shl i32 %2, 6
  %i.b = zext i32 %i.a to i64
  %.not.i = icmp eq i32 %2, 0
  br i1 %.not.i, label %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.thread, label %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit

_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit: ; preds = %bb.a
  %i.c = add i32 %2, -1
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !10
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.thread

_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.thread: ; preds = %bb.a, %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit
  %.06.in.pre = tail call i64 @llvm.umin.i64(i64 %0, i64 %i.b)
  br label %bb.b

bb.b:                                             ; preds = %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit, %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.thread
  %.06.in = phi i64 [ %.06.in.pre, %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.thread ], [ %0, %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit ]
  %.06 = add i64 %.06.in, 1                       ; 2 uses
  %i.h = icmp ugt i64 %.06, 65536
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = trunc nuw nsw i64 %.06 to i32
  %i.j = add nuw nsw i32 %i.i, 63
  %i.k = lshr i32 %i.j, 6
  store i32 %i.k, ptr %3, align 4, !tbaa !3
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 2, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef range(i32 0, 67108864) i32 @_ZN6hermes6bigint16asIntNResultSizeEmNS0_18ImmutableBigIntRefE(i64 noundef %0, ptr nofree readnone captures(none) %1, i32 %2) local_unnamed_addr #4 {
bb.a:
  %i.a = add i64 %0, 63
  %i.b = lshr i64 %i.a, 6
  %i.c = and i64 %i.b, 67108863
  %i.d = zext i32 %2 to i64
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %i.d)
  %i.e = trunc nuw nsw i64 %.sroa.speculated to i32
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef range(i32 0, 3) i32 @_ZN6hermes6bigint7asUintNENS0_16MutableBigIntRefEmNS0_18ImmutableBigIntRefE(ptr nofree captures(none) %0, ptr nofree captures(none) %1, i64 noundef %2, ptr nofree readonly captures(none) %3, i32 %4) local_unnamed_addr #2 {
bb.a:
  %i.a = shl i32 %4, 6
  %i.b = zext i32 %i.a to i64
  %.not.i.i = icmp eq i32 %4, 0
  br i1 %.not.i.i, label %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.thread.i, label %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i

_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i: ; preds = %bb.a
  %i.c = add i32 %4, -1
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !10
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.thread.i

_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.thread.i: ; preds = %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i, %bb.a
  %.06.in.pre.i = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.b)
  br label %bb.b

bb.b:                                             ; preds = %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.thread.i, %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i
  %.06.in.i = phi i64 [ %.06.in.pre.i, %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.thread.i ], [ %2, %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i ]
  %.06.i = add i64 %.06.in.i, 1                   ; 2 uses
  %i.h = icmp ugt i64 %.06.i, 65536
  br i1 %i.h, label %_ZN6hermes6bigint17asUintNResultSizeEmNS0_18ImmutableBigIntRefERj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = trunc nuw nsw i64 %.06.i to i32
  %i.j = add nuw nsw i32 %i.i, 63
  %i.k = lshr i32 %i.j, 6
  %i.l = tail call fastcc noundef i32 @_ZN6hermes6bigint12_GLOBAL__N_112bigintAsImplENS0_16MutableBigIntRefEjmNS0_18ImmutableBigIntRefENS1_8BigIntAsE(ptr %0, ptr %1, i32 noundef %i.k, i64 noundef %2, ptr %3, i32 %4, i32 noundef 1)
  br label %_ZN6hermes6bigint17asUintNResultSizeEmNS0_18ImmutableBigIntRefERj.exit

_ZN6hermes6bigint17asUintNResultSizeEmNS0_18ImmutableBigIntRefERj.exit: ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ %i.l, %bb.c ], [ 2, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZN6hermes6bigint12_GLOBAL__N_112bigintAsImplENS0_16MutableBigIntRefEjmNS0_18ImmutableBigIntRefENS1_8BigIntAsE(ptr nofree captures(none) %0, ptr nofree captures(none) %1, i32 noundef %2, i64 noundef %3, ptr nofree readonly captures(none) %4, i32 %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !3
  %i.b = icmp ult i32 %i.a, %2
  br i1 %i.b, label %_ZN6hermes6bigint12_GLOBAL__N_134initNonCanonicalWithReadOnlyBigIntERNS0_16MutableBigIntRefERKNS0_18ImmutableBigIntRefE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %2, ptr %1, align 4, !tbaa !3
  %i.c = icmp eq i32 %5, 0
  %i.d = icmp eq i64 %3, 0
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.e = shl i32 %5, 3                            ; 4 uses
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = shl i32 %2, 3                            ; 2 uses
  %i.h = icmp ugt i32 %i.e, %i.g
  br i1 %i.h, label %_ZN6hermes6bigint12_GLOBAL__N_134initNonCanonicalWithReadOnlyBigIntERNS0_16MutableBigIntRefERKNS0_18ImmutableBigIntRefE.exit.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = icmp eq i32 %i.e, 0
  br i1 %i.i, label %_ZN6hermes6bigint12_GLOBAL__N_134initNonCanonicalWithReadOnlyBigIntERNS0_16MutableBigIntRefERKNS0_18ImmutableBigIntRefE.exit.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr readonly align 1 %4, i64 %i.f, i1 false)
  %i.j = sub i32 %i.g, %i.e
  %i.k = getelementptr i8, ptr %0, i64 %i.f       ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 -1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !7
  %i.n = ashr i8 %i.m, 7
  %i.o = zext i32 %i.j to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.k, i8 %i.n, i64 %i.o, i1 false)
  %i.p = load i32, ptr %1, align 4, !tbaa !3
  %i.q = shl i32 %i.p, 3                          ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZN6hermes6bigint12_GLOBAL__N_134initNonCanonicalWithReadOnlyBigIntERNS0_16MutableBigIntRefERKNS0_18ImmutableBigIntRefE.exit.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = zext i32 %i.q to i64                     ; 5 uses
  %i.t = getelementptr i8, ptr %0, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 -1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !7     ; 3 uses
  %i.w = ashr i8 %i.v, 7                          ; 3 uses
  %i.x = icmp eq i8 %i.v, %i.w
  br i1 %i.x, label %.lr.ph.i.i.i.preheader, label %.critedge.thread.i.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.f
  %i.y = add nsw i64 %i.s, -1
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.z = phi i64 [ %i.y, %.lr.ph.i.i.i.preheader ], [ %i.ae, %.lr.ph.i.i.i ] ; 4 uses
  %.sroa.10.030.i4.i.i.i115 = phi i64 [ %i.s, %.lr.ph.i.i.i.preheader ], [ %i.z, %.lr.ph.i.i.i ]
  %i.aa = getelementptr i8, ptr %0, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 -1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !7   ; 2 uses
  %i.ad = icmp eq i8 %i.ac, %i.v
  br i1 %i.ad, label %.lr.ph.i.i.i, label %.critedge.i.loopexit.i.i.i, !llvm.loop !8

.lr.ph.i.i.i:                                     ; preds = %bb.g
  %i.ae = add nsw i64 %i.z, -1                    ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %.critedge.thread.i.i.i.i, label %bb.g, !llvm.loop !8

.critedge.i.loopexit.i.i.i:                       ; preds = %bb.g
  %.pre.i.i.i = ashr i8 %i.ac, 7
end_hunk_0
begin_hunk_1_@_ZN6hermes6bigint12_GLOBAL__N_17div_rem7computeENS0_16MutableBigIntRefES3_NS0_18ImmutableBigIntRefES4_:bb.a
  %i.cj = icmp eq i8 %i.ci, %i.cb
  br i1 %i.cj, label %.lr.ph.i, label %.critedge.i.loopexit.i, !llvm.loop !8

.lr.ph.i:                                         ; preds = %bb.t
  %i.ck = add nsw i64 %i.cf, -1                   ; 2 uses
  %i.cl = icmp eq i64 %i.ck, 0
  br i1 %i.cl, label %.critedge.thread.i.i, label %bb.t, !llvm.loop !8

.critedge.i.loopexit.i:                           ; preds = %bb.t
  %.pre.i = ashr i8 %i.ci, 7
  br label %.critedge.thread.i.i

.critedge.thread.i.i:                             ; preds = %.lr.ph.i, %.critedge.i.loopexit.i, %bb.s
  %.sroa.5.028.i.i = phi i64 [ %i.by, %bb.s ], [ %.sroa.10.030.i4.i71, %.critedge.i.loopexit.i ], [ 1, %.lr.ph.i ]
  %.sroa.10.026.i.i = phi i64 [ %i.by, %bb.s ], [ %i.cf, %.critedge.i.loopexit.i ], [ 0, %.lr.ph.i ]
  %i.cm = phi i8 [ %i.cc, %bb.s ], [ %.pre.i, %.critedge.i.loopexit.i ], [ 0, %.lr.ph.i ]
  %i.cn = icmp eq i8 %i.cm, %i.cc
  %.sroa.3.0.copyload4.i.i = select i1 %i.cn, i64 %.sroa.10.026.i.i, i64 %.sroa.5.028.i.i
  %i.co = trunc nuw i64 %.sroa.3.0.copyload4.i.i to i32
  %i.cp = add nuw i32 %i.co, 7
  %i.cq = lshr i32 %i.cp, 3
  br label %_ZN6hermes6bigint12_GLOBAL__N_121ensureCanonicalResultERNS0_16MutableBigIntRefE.exit

_ZN6hermes6bigint12_GLOBAL__N_121ensureCanonicalResultERNS0_16MutableBigIntRefE.exit: ; preds = %bb.r, %.critedge.thread.i.i
  %.sroa.3.0.i.i = phi i32 [ %i.cq, %.critedge.thread.i.i ], [ 0, %bb.r ]
  store i32 %.sroa.3.0.i.i, ptr %1, align 4, !tbaa !3
  br label %bb.u

bb.u:                                             ; preds = %_ZN6hermes6bigint12_GLOBAL__N_121ensureCanonicalResultERNS0_16MutableBigIntRefE.exit, %bb.o
  br i1 %i.t, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %i.l, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cr = load i32, ptr %3, align 4, !tbaa !3
  call void @_ZN4llvh5APInt8tcNegateEPmj(ptr noundef %.31, i32 noundef %i.cr) #16
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cs = load i32, ptr %3, align 4, !tbaa !3
  %i.ct = shl i32 %i.cs, 3                        ; 2 uses
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %_ZN6hermes6bigint12_GLOBAL__N_121ensureCanonicalResultERNS0_16MutableBigIntRefE.exit70, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cv = zext i32 %i.ct to i64                   ; 5 uses
  %i.cw = getelementptr i8, ptr %.31, i64 %i.cv
  %i.cx = getelementptr i8, ptr %i.cw, i64 -1
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !7   ; 3 uses
  %i.cz = ashr i8 %i.cy, 7                        ; 3 uses
  %i.da = icmp eq i8 %i.cy, %i.cz
  br i1 %i.da, label %.lr.ph.i66.preheader, label %.critedge.thread.i.i61

.lr.ph.i66.preheader:                             ; preds = %bb.y
  %i.db = add nsw i64 %i.cv, -1
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph.i66.preheader, %.lr.ph.i66
  %i.dc = phi i64 [ %i.db, %.lr.ph.i66.preheader ], [ %i.dh, %.lr.ph.i66 ] ; 4 uses
  %.sroa.10.030.i4.i6772 = phi i64 [ %i.cv, %.lr.ph.i66.preheader ], [ %i.dc, %.lr.ph.i66 ]
  %i.dd = getelementptr i8, ptr %.31, i64 %i.dc
  %i.de = getelementptr i8, ptr %i.dd, i64 -1
  %i.df = load i8, ptr %i.de, align 1, !tbaa !7   ; 2 uses
  %i.dg = icmp eq i8 %i.df, %i.cy
  br i1 %i.dg, label %.lr.ph.i66, label %.critedge.i.loopexit.i68, !llvm.loop !8

.lr.ph.i66:                                       ; preds = %bb.z
  %i.dh = add nsw i64 %i.dc, -1                   ; 2 uses
  %i.di = icmp eq i64 %i.dh, 0
  br i1 %i.di, label %.critedge.thread.i.i61, label %bb.z, !llvm.loop !8

.critedge.i.loopexit.i68:                         ; preds = %bb.z
  %.pre.i69 = ashr i8 %i.df, 7
  br label %.critedge.thread.i.i61

.critedge.thread.i.i61:                           ; preds = %.lr.ph.i66, %.critedge.i.loopexit.i68, %bb.y
  %.sroa.5.028.i.i62 = phi i64 [ %i.cv, %bb.y ], [ %.sroa.10.030.i4.i6772, %.critedge.i.loopexit.i68 ], [ 1, %.lr.ph.i66 ]
  %.sroa.10.026.i.i63 = phi i64 [ %i.cv, %bb.y ], [ %i.dc, %.critedge.i.loopexit.i68 ], [ 0, %.lr.ph.i66 ]
  %i.dj = phi i8 [ %i.cz, %bb.y ], [ %.pre.i69, %.critedge.i.loopexit.i68 ], [ 0, %.lr.ph.i66 ]
  %i.dk = icmp eq i8 %i.dj, %i.cz
  %.sroa.3.0.copyload4.i.i64 = select i1 %i.dk, i64 %.sroa.10.026.i.i63, i64 %.sroa.5.028.i.i62
  %i.dl = trunc nuw i64 %.sroa.3.0.copyload4.i.i64 to i32
  %i.dm = add nuw i32 %i.dl, 7
  %i.dn = lshr i32 %i.dm, 3
  br label %_ZN6hermes6bigint12_GLOBAL__N_121ensureCanonicalResultERNS0_16MutableBigIntRefE.exit70

_ZN6hermes6bigint12_GLOBAL__N_121ensureCanonicalResultERNS0_16MutableBigIntRefE.exit70: ; preds = %bb.x, %.critedge.thread.i.i61
  %.sroa.3.0.i.i65 = phi i32 [ %i.dn, %.critedge.thread.i.i61 ], [ 0, %bb.x ]
  store i32 %.sroa.3.0.i.i65, ptr %3, align 4, !tbaa !3
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN6hermes6bigint12_GLOBAL__N_121ensureCanonicalResultERNS0_16MutableBigIntRefE.exit70, %bb.u
  %i.do = load ptr, ptr %6, align 8, !tbaa !16    ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.ac
  br i1 %i.dp, label %_ZN6hermes6bigint10TmpStorageD2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @free(ptr noundef %i.do) #16
  br label %_ZN6hermes6bigint10TmpStorageD2Ev.exit

_ZN6hermes6bigint10TmpStorageD2Ev.exit:           ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit, %bb.b, %_ZN6hermes6bigint10TmpStorageD2Ev.exit
  %.0 = phi i32 [ 0, %_ZN6hermes6bigint10TmpStorageD2Ev.exit ], [ 1, %bb.b ], [ 3, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @_ZN6hermes6bigint19remainderResultSizeENS0_18ImmutableBigIntRefES1_(ptr nofree readnone captures(none) %0, i32 %1, ptr nofree readnone captures(none) %2, i32 %3) local_unnamed_addr #4 {
bb.a:
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %1, i32 %3)
  %i.a = add i32 %.sroa.speculated.i, 1
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 4) i32 @_ZN6hermes6bigint9remainderENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefES2_(ptr %0, ptr nofree captures(none) initializes((0, 4)) %1, ptr nofree readonly captures(none) %2, i32 %3, ptr %4, i32 %5) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.b = call fastcc noundef i32 @_ZN6hermes6bigint12_GLOBAL__N_17div_rem7computeENS0_16MutableBigIntRefES3_NS0_18ImmutableBigIntRefES4_(ptr null, ptr nonnull %i.a, ptr %0, ptr %1, ptr %2, i32 %3, ptr %4, i32 %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 5) i32 @_ZN6hermes6bigint12exponentiateENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefES2_(ptr %0, ptr %1, ptr %2, i32 %3, ptr %4, i32 %5) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 0, ptr %i.e, align 8, !tbaa !10
  %.not.i.i.i = icmp eq i32 %5, 0
  br i1 %.not.i.i.i, label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit, label %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i

_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i: ; preds = %bb.a
  %i.f = add i32 %5, -1
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !10
  %.fr.i.i = freeze i64 %i.i
  %i.j = icmp slt i64 %.fr.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %i.j, label %_ZN6hermes6bigint12_GLOBAL__N_120exponentiatePowerOf2ENS0_16MutableBigIntRefEj.exit.thread, label %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i73

_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit: ; preds = %bb.a
  %i.k = call noundef i32 @_ZN4llvh5APInt9tcCompareEPKmS2_j(ptr noundef %4, ptr noundef nonnull %i.e, i32 noundef 0) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %_ZN6hermes6bigint12_GLOBAL__N_120exponentiatePowerOf2ENS0_16MutableBigIntRefEj.exit.thread, label %bb.b

_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i73: ; preds = %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i
  %i.m = load i64, ptr %4, align 8, !tbaa !10
  br label %bb.e

bb.b:                                             ; preds = %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8, !tbaa !10
  %i.n = call noundef i32 @_ZN4llvh5APInt9tcCompareEPKmS2_j(ptr noundef %4, ptr noundef nonnull %i.d, i32 noundef 0) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.p = load i32, ptr %1, align 4, !tbaa !3
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZN6hermes6bigint12_GLOBAL__N_120exponentiatePowerOf2ENS0_16MutableBigIntRefEj.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %1, align 4, !tbaa !3
  store i64 1, ptr %0, align 8, !tbaa !10
  br label %_ZN6hermes6bigint12_GLOBAL__N_120exponentiatePowerOf2ENS0_16MutableBigIntRefEj.exit.thread136

bb.e:                                             ; preds = %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i73, %bb.b
  %i.r = phi i64 [ %i.m, %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i73 ], [ 0, %bb.b ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8, !tbaa !10
  %.not.i.i.i81 = icmp eq i32 %3, 0
  br i1 %.not.i.i.i81, label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit89, label %.thread124

_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit89: ; preds = %bb.e
  %i.s = call noundef i32 @_ZN4llvh5APInt9tcCompareEPKmS2_j(ptr noundef %2, ptr noundef nonnull %i.c, i32 noundef 0) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit89
  store i32 0, ptr %1, align 4, !tbaa !3
  br label %_ZN6hermes6bigint12_GLOBAL__N_120exponentiatePowerOf2ENS0_16MutableBigIntRefEj.exit.thread136

bb.g:                                             ; preds = %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit89
  %i.u = load i32, ptr %1, align 4, !tbaa !3
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_ZN6hermes6bigint12_GLOBAL__N_120exponentiatePowerOf2ENS0_16MutableBigIntRefEj.exit.thread, label %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.thread.i.i106

.thread124:                                       ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.w = load i32, ptr %1, align 4, !tbaa !3
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_ZN6hermes6bigint12_GLOBAL__N_120exponentiatePowerOf2ENS0_16MutableBigIntRefEj.exit.thread, label %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i91

_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i91: ; preds = %.thread124
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8, !tbaa !10
  %i.y = add i32 %3, -1
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !10
  %.fr.i.i92 = freeze i64 %i.ab
  %i.ac = icmp slt i64 %.fr.i.i92, 0
  br i1 %i.ac, label %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i100, label %bb.h

bb.h:                                             ; preds = %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i91
  %i.ad = icmp eq i32 %3, 1
  br i1 %i.ad, label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit98, label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit107.thread.sink.split

_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit98: ; preds = %bb.h
  %i.ae = call noundef i32 @_ZN4llvh5APInt9tcCompareEPKmS2_j(ptr noundef nonnull %2, ptr noundef nonnull %i.b, i32 noundef 1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.i, label %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i100.thread

bb.i:                                             ; preds = %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit98
  store i32 1, ptr %1, align 4, !tbaa !3
  store i64 1, ptr %0, align 8, !tbaa !10
  br label %_ZN6hermes6bigint12_GLOBAL__N_120exponentiatePowerOf2ENS0_16MutableBigIntRefEj.exit.thread136

_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i100: ; preds = %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i91
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 -1, ptr %i.a, align 8, !tbaa !10
  %i.ag = icmp eq i32 %3, 1
  br i1 %i.ag, label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit107, label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit107.thread

_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i100.thread: ; preds = %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit98
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 -1, ptr %i.a, align 8, !tbaa !10
  %i.ah = load i64, ptr %2, align 8, !tbaa !10
  %.fr.i.i101130 = freeze i64 %i.ah
  %i.ai = icmp sgt i64 %.fr.i.i101130, -1
  br i1 %i.ai, label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit107.thread, label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit107

_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.thread.i.i106: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit107.thread.sink.split

_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit107.thread.sink.split: ; preds = %bb.h, %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.thread.i.i106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit107.thread

_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit107.thread: ; preds = %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit107.thread.sink.split, %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i100, %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i100.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit107: ; preds = %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i100, %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i100.thread
  %i.aj = call noundef i32 @_ZN4llvh5APInt9tcCompareEPKmS2_j(ptr noundef nonnull %2, ptr noundef nonnull %i.a, i32 noundef %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit107
  store i32 1, ptr %1, align 4, !tbaa !3
  %i.al = and i64 %i.r, 1
  %i.am = icmp eq i64 %i.al, 0
  %i.an = select i1 %i.am, i64 1, i64 -1
  store i64 %i.an, ptr %0, align 8, !tbaa !10
  br label %_ZN6hermes6bigint12_GLOBAL__N_120exponentiatePowerOf2ENS0_16MutableBigIntRefEj.exit.thread136

bb.k:                                             ; preds = %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit107.thread, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit107
  %i.ao = icmp ugt i32 %5, 1
  %i.ap = icmp ugt i64 %i.r, 65535
  %or.cond = select i1 %i.ao, i1 true, i1 %i.ap
  br i1 %or.cond, label %_ZN6hermes6bigint12_GLOBAL__N_120exponentiatePowerOf2ENS0_16MutableBigIntRefEj.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = icmp eq i64 %i.r, 1
  br i1 %i.aq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ar = call fastcc noundef i32 @_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE(ptr %0, ptr nonnull %1, ptr %2, i32 %3)
  br label %_ZN6hermes6bigint12_GLOBAL__N_120exponentiatePowerOf2ENS0_16MutableBigIntRefEj.exit

bb.n:                                             ; preds = %bb.l
  %i.as = call noundef i32 @_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl(ptr %2, i32 %3, i64 noundef 2)
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.au = trunc nuw nsw i64 %i.r to i32
  %i.av = lshr i32 %i.au, 6                       ; 3 uses
  %i.aw = add nuw nsw i32 %i.av, 2                ; 3 uses
  %i.ax = and i64 %i.r, 63
  %i.ay = icmp eq i32 %i.av, 1023
  br i1 %i.ay, label %_ZN6hermes6bigint12_GLOBAL__N_120exponentiatePowerOf2ENS0_16MutableBigIntRefEj.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = load i32, ptr %1, align 4, !tbaa !3
  %i.ba = icmp ult i32 %i.az, %i.aw
  br i1 %i.ba, label %_ZN6hermes6bigint12_GLOBAL__N_120exponentiatePowerOf2ENS0_16MutableBigIntRefEj.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 %i.aw, ptr %1, align 4, !tbaa !3
  %i.bb = shl nuw nsw i32 %i.aw, 3
  %i.bc = zext nneg i32 %i.bb to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %0, i8 0, i64 %i.bc, i1 false)
  %i.bd = shl nuw i64 1, %i.ax
  %i.be = zext nneg i32 %i.av to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.be
  store i64 %i.bd, ptr %i.bf, align 8, !tbaa !10
  br label %_ZN6hermes6bigint12_GLOBAL__N_120exponentiatePowerOf2ENS0_16MutableBigIntRefEj.exit.thread136

bb.r:                                             ; preds = %bb.n
  %i.bg = call noundef i32 @_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl(ptr %2, i32 %3, i64 noundef -2)
  %i.bh = icmp eq i32 %i.bg, 0
  %i.bi = trunc nuw nsw i64 %i.r to i32           ; 2 uses
  br i1 %i.bh, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.bj = lshr i32 %i.bi, 6                       ; 3 uses
  %i.bk = add nuw nsw i32 %i.bj, 2                ; 3 uses
  %i.bl = and i64 %i.r, 63
  %i.bm = icmp eq i32 %i.bj, 1023
  br i1 %i.bm, label %_ZN6hermes6bigint12_GLOBAL__N_120exponentiatePowerOf2ENS0_16MutableBigIntRefEj.exit109, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bn = load i32, ptr %1, align 4, !tbaa !3
  %i.bo = icmp ult i32 %i.bn, %i.bk
  br i1 %i.bo, label %_ZN6hermes6bigint12_GLOBAL__N_120exponentiatePowerOf2ENS0_16MutableBigIntRefEj.exit109, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i32 %i.bk, ptr %1, align 4, !tbaa !3
  %i.bp = shl nuw nsw i32 %i.bk, 3
  %i.bq = zext nneg i32 %i.bp to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %0, i8 0, i64 %i.bq, i1 false)
  %i.br = shl nuw i64 1, %i.bl
  %i.bs = zext nneg i32 %i.bj to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bs
  store i64 %i.br, ptr %i.bt, align 8, !tbaa !10
  br label %_ZN6hermes6bigint12_GLOBAL__N_120exponentiatePowerOf2ENS0_16MutableBigIntRefEj.exit109

_ZN6hermes6bigint12_GLOBAL__N_120exponentiatePowerOf2ENS0_16MutableBigIntRefEj.exit109: ; preds = %bb.s, %bb.t, %bb.u
  %.1.i108 = phi i32 [ 0, %bb.u ], [ 2, %bb.s ], [ 1, %bb.t ] ; 2 uses
  %i.bu = and i64 %i.r, 1
  %.not65 = icmp eq i64 %i.bu, 0
  br i1 %.not65, label %_ZN6hermes6bigint12_GLOBAL__N_120exponentiatePowerOf2ENS0_16MutableBigIntRefEj.exit, label %bb.v

bb.v:                                             ; preds = %_ZN6hermes6bigint12_GLOBAL__N_120exponentiatePowerOf2ENS0_16MutableBigIntRefEj.exit109
  %i.bv = load i32, ptr %1, align 4, !tbaa !3
  call void @_ZN4llvh5APInt8tcNegateEPmj(ptr noundef %0, i32 noundef %i.bv) #16
  br label %_ZN6hermes6bigint12_GLOBAL__N_120exponentiatePowerOf2ENS0_16MutableBigIntRefEj.exit

bb.w:                                             ; preds = %bb.r
  %i.bw = call fastcc noundef i32 @_ZN6hermes6bigint12_GLOBAL__N_120exponentiateSlowPathENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefEj(ptr %0, ptr nonnull %1, ptr %2, i32 %3, i32 noundef %i.bi)
  br label %_ZN6hermes6bigint12_GLOBAL__N_120exponentiatePowerOf2ENS0_16MutableBigIntRefEj.exit

_ZN6hermes6bigint12_GLOBAL__N_120exponentiatePowerOf2ENS0_16MutableBigIntRefEj.exit: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_120exponentiatePowerOf2ENS0_16MutableBigIntRefEj.exit109, %bb.v, %bb.w, %bb.m
  %.061 = phi i32 [ %i.bw, %bb.w ], [ %.1.i108, %_ZN6hermes6bigint12_GLOBAL__N_120exponentiatePowerOf2ENS0_16MutableBigIntRefEj.exit109 ], [ %i.ar, %bb.m ], [ %.1.i108, %bb.v ] ; 2 uses
  %.not66 = icmp eq i32 %.061, 0
  br i1 %.not66, label %_ZN6hermes6bigint12_GLOBAL__N_120exponentiatePowerOf2ENS0_16MutableBigIntRefEj.exit.thread136, label %_ZN6hermes6bigint12_GLOBAL__N_120exponentiatePowerOf2ENS0_16MutableBigIntRefEj.exit.thread, !prof !100

_ZN6hermes6bigint12_GLOBAL__N_120exponentiatePowerOf2ENS0_16MutableBigIntRefEj.exit.thread136: ; preds = %bb.q, %bb.j, %bb.i, %bb.f, %bb.d, %_ZN6hermes6bigint12_GLOBAL__N_120exponentiatePowerOf2ENS0_16MutableBigIntRefEj.exit
  %i.bx = load i32, ptr %1, align 4, !tbaa !3
  %i.by = shl i32 %i.bx, 3                        ; 2 uses
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %_ZN6hermes6bigint12_GLOBAL__N_121ensureCanonicalResultERNS0_16MutableBigIntRefE.exit, label %bb.x

bb.x:                                             ; preds = %_ZN6hermes6bigint12_GLOBAL__N_120exponentiatePowerOf2ENS0_16MutableBigIntRefEj.exit.thread136
  %i.ca = zext i32 %i.by to i64                   ; 5 uses
  %i.cb = getelementptr i8, ptr %0, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.cb, i64 -1
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !7   ; 3 uses
  %i.ce = ashr i8 %i.cd, 7                        ; 3 uses
  %i.cf = icmp eq i8 %i.cd, %i.ce
  br i1 %i.cf, label %.lr.ph.i.preheader, label %.critedge.thread.i.i

.lr.ph.i.preheader:                               ; preds = %bb.x
  %i.cg = add nsw i64 %i.ca, -1
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.ch = phi i64 [ %i.cg, %.lr.ph.i.preheader ], [ %i.cm, %.lr.ph.i ] ; 4 uses
  %.sroa.10.030.i4.i165 = phi i64 [ %i.ca, %.lr.ph.i.preheader ], [ %i.ch, %.lr.ph.i ]
  %i.ci = getelementptr i8, ptr %0, i64 %i.ch
  %i.cj = getelementptr i8, ptr %i.ci, i64 -1
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !7   ; 2 uses
  %i.cl = icmp eq i8 %i.ck, %i.cd
  br i1 %i.cl, label %.lr.ph.i, label %.critedge.i.loopexit.i, !llvm.loop !8

.lr.ph.i:                                         ; preds = %bb.y
  %i.cm = add nsw i64 %i.ch, -1                   ; 2 uses
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %.critedge.thread.i.i, label %bb.y, !llvm.loop !8

.critedge.i.loopexit.i:                           ; preds = %bb.y
  %.pre.i = ashr i8 %i.ck, 7
  br label %.critedge.thread.i.i

.critedge.thread.i.i:                             ; preds = %.lr.ph.i, %.critedge.i.loopexit.i, %bb.x
  %.sroa.5.028.i.i = phi i64 [ %i.ca, %bb.x ], [ %.sroa.10.030.i4.i165, %.critedge.i.loopexit.i ], [ 1, %.lr.ph.i ]
  %.sroa.10.026.i.i = phi i64 [ %i.ca, %bb.x ], [ %i.ch, %.critedge.i.loopexit.i ], [ 0, %.lr.ph.i ]
  %i.co = phi i8 [ %i.ce, %bb.x ], [ %.pre.i, %.critedge.i.loopexit.i ], [ 0, %.lr.ph.i ]
  %i.cp = icmp eq i8 %i.co, %i.ce
  %.sroa.3.0.copyload4.i.i = select i1 %i.cp, i64 %.sroa.10.026.i.i, i64 %.sroa.5.028.i.i
  %i.cq = trunc nuw i64 %.sroa.3.0.copyload4.i.i to i32
  %i.cr = add nuw i32 %i.cq, 7
  %i.cs = lshr i32 %i.cr, 3
  br label %_ZN6hermes6bigint12_GLOBAL__N_121ensureCanonicalResultERNS0_16MutableBigIntRefE.exit

_ZN6hermes6bigint12_GLOBAL__N_121ensureCanonicalResultERNS0_16MutableBigIntRefE.exit: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_120exponentiatePowerOf2ENS0_16MutableBigIntRefEj.exit.thread136, %.critedge.thread.i.i
  %.sroa.3.0.i.i = phi i32 [ %i.cs, %.critedge.thread.i.i ], [ 0, %_ZN6hermes6bigint12_GLOBAL__N_120exponentiatePowerOf2ENS0_16MutableBigIntRefEj.exit.thread136 ]
  store i32 %.sroa.3.0.i.i, ptr %1, align 4, !tbaa !3
  br label %_ZN6hermes6bigint12_GLOBAL__N_120exponentiatePowerOf2ENS0_16MutableBigIntRefEj.exit.thread

_ZN6hermes6bigint12_GLOBAL__N_120exponentiatePowerOf2ENS0_16MutableBigIntRefEj.exit.thread: ; preds = %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i, %bb.p, %bb.o, %bb.k, %.thread124, %bb.g, %bb.c, %_ZN6hermes6bigint12_GLOBAL__N_121ensureCanonicalResultERNS0_16MutableBigIntRefE.exit, %_ZN6hermes6bigint12_GLOBAL__N_120exponentiatePowerOf2ENS0_16MutableBigIntRefEj.exit, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit
  %.1 = phi i32 [ 4, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit ], [ 0, %_ZN6hermes6bigint12_GLOBAL__N_121ensureCanonicalResultERNS0_16MutableBigIntRefE.exit ], [ %.061, %_ZN6hermes6bigint12_GLOBAL__N_120exponentiatePowerOf2ENS0_16MutableBigIntRefEj.exit ], [ 1, %bb.c ], [ 1, %bb.p ], [ 2, %bb.o ], [ 2, %bb.k ], [ 1, %.thread124 ], [ 1, %bb.g ], [ 4, %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE(ptr nofree captures(none) %0, ptr nofree captures(none) %1, ptr nofree readonly captures(none) %2, i32 %3) unnamed_addr #2 {
bb.a:
  %i.a = shl i32 %3, 3                            ; 4 uses
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !3
  %i.d = shl i32 %i.c, 3                          ; 2 uses
  %i.e = icmp ugt i32 %i.a, %i.d
  br i1 %i.e, label %_ZN6hermes6bigint13initWithBytesENS0_16MutableBigIntRefEN4llvh8ArrayRefIhEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %i.a, 0
  br i1 %i.f, label %_ZN6hermes6bigint13initWithBytesENS0_16MutableBigIntRefEN4llvh8ArrayRefIhEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr readonly align 1 %2, i64 %i.b, i1 false)
  %i.g = sub i32 %i.d, %i.a
  %i.h = getelementptr i8, ptr %0, i64 %i.b       ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 -1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !7
  %i.k = ashr i8 %i.j, 7
  %i.l = zext i32 %i.g to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.h, i8 %i.k, i64 %i.l, i1 false)
  %i.m = load i32, ptr %1, align 4, !tbaa !3
  %i.n = shl i32 %i.m, 3                          ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_ZN6hermes6bigint13initWithBytesENS0_16MutableBigIntRefEN4llvh8ArrayRefIhEE.exit, label %bb.d

end_hunk_1
begin_hunk_2_@_ZN6hermes6bigint12_GLOBAL__N_120exponentiateSlowPathENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefEj:bb.a
  store i32 %.sroa.10.0163, ptr %.val68.val, align 4, !tbaa !3
  %.val76.val = load ptr, ptr %.sroa.0131.0161, align 8, !tbaa !89
  %i.cr = getelementptr i8, ptr %.sroa.0131.0161, i64 8 ; 2 uses
  %.val76.val81 = load ptr, ptr %i.cr, align 8, !tbaa !92
  %.val76.val81.val = load i32, ptr %.val76.val81, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !tbaa !10
  %.not.i.i.i = icmp eq i32 %.val76.val81.val, 0
  br i1 %.not.i.i.i, label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit, label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.thread

_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.thread: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.q

_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit: ; preds = %bb.k
  %i.cs = call noundef i32 @_ZN4llvh5APInt9tcCompareEPKmS2_j(ptr noundef %.val76.val, ptr noundef nonnull %i.a, i32 noundef 0) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.l, label %bb.q

bb.l:                                             ; preds = %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit
  %.sroa.07.0.copyload = load ptr, ptr %.sroa.0127.0164, align 8, !tbaa !102 ; 4 uses
  %.sroa.28.0.copyload = load ptr, ptr %i.cq, align 8, !tbaa !101 ; 3 uses
  %.val75.val = load ptr, ptr %.sroa.0132.0162, align 8, !tbaa !89
  %.val75.val82 = load ptr, ptr %i.cm, align 8, !tbaa !92
  %.val75.val82.val = load i32, ptr %.val75.val82, align 4, !tbaa !3
  %i.cu = shl i32 %.val75.val82.val, 3            ; 4 uses
  %i.cv = zext i32 %i.cu to i64                   ; 2 uses
  %i.cw = load i32, ptr %.sroa.28.0.copyload, align 4, !tbaa !3
  %i.cx = shl i32 %i.cw, 3                        ; 2 uses
  %i.cy = icmp ugt i32 %i.cu, %i.cx
  br i1 %i.cy, label %_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit118, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cz = icmp eq i32 %i.cu, 0
  br i1 %i.cz, label %_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit118, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.07.0.copyload, ptr readonly align 1 %.val75.val, i64 %i.cv, i1 false)
  %i.da = sub i32 %i.cx, %i.cu
  %i.db = getelementptr i8, ptr %.sroa.07.0.copyload, i64 %i.cv ; 2 uses
  %i.dc = getelementptr i8, ptr %i.db, i64 -1
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !7
  %i.de = ashr i8 %i.dd, 7
  %i.df = zext i32 %i.da to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.db, i8 %i.de, i64 %i.df, i1 false)
  %i.dg = load i32, ptr %.sroa.28.0.copyload, align 4, !tbaa !3
  %i.dh = shl i32 %i.dg, 3                        ; 2 uses
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit118, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dj = zext i32 %i.dh to i64                   ; 5 uses
  %i.dk = getelementptr i8, ptr %.sroa.07.0.copyload, i64 %i.dj
  %i.dl = getelementptr i8, ptr %i.dk, i64 -1
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !7   ; 3 uses
  %i.dn = ashr i8 %i.dm, 7                        ; 3 uses
  %i.do = icmp eq i8 %i.dm, %i.dn
  br i1 %i.do, label %.lr.ph.i.i.i114.preheader, label %.critedge.thread.i.i.i.i108

.lr.ph.i.i.i114.preheader:                        ; preds = %bb.o
  %i.dp = add nsw i64 %i.dj, -1
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i114.preheader, %.lr.ph.i.i.i114
  %i.dq = phi i64 [ %i.dp, %.lr.ph.i.i.i114.preheader ], [ %i.dv, %.lr.ph.i.i.i114 ] ; 4 uses
  %.sroa.10.030.i4.i.i.i115225 = phi i64 [ %i.dj, %.lr.ph.i.i.i114.preheader ], [ %i.dq, %.lr.ph.i.i.i114 ]
  %i.dr = getelementptr i8, ptr %.sroa.07.0.copyload, i64 %i.dq
  %i.ds = getelementptr i8, ptr %i.dr, i64 -1
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !7   ; 2 uses
  %i.du = icmp eq i8 %i.dt, %i.dm
  br i1 %i.du, label %.lr.ph.i.i.i114, label %.critedge.i.loopexit.i.i.i116, !llvm.loop !8

.lr.ph.i.i.i114:                                  ; preds = %bb.p
  %i.dv = add nsw i64 %i.dq, -1                   ; 2 uses
  %i.dw = icmp eq i64 %i.dv, 0
  br i1 %i.dw, label %.critedge.thread.i.i.i.i108, label %bb.p, !llvm.loop !8

.critedge.i.loopexit.i.i.i116:                    ; preds = %bb.p
  %.pre.i.i.i117 = ashr i8 %i.dt, 7
  br label %.critedge.thread.i.i.i.i108

.critedge.thread.i.i.i.i108:                      ; preds = %.lr.ph.i.i.i114, %.critedge.i.loopexit.i.i.i116, %bb.o
  %.sroa.5.028.i.i.i.i109 = phi i64 [ %i.dj, %bb.o ], [ %.sroa.10.030.i4.i.i.i115225, %.critedge.i.loopexit.i.i.i116 ], [ 1, %.lr.ph.i.i.i114 ]
  %.sroa.10.026.i.i.i.i110 = phi i64 [ %i.dj, %bb.o ], [ %i.dq, %.critedge.i.loopexit.i.i.i116 ], [ 0, %.lr.ph.i.i.i114 ]
  %i.dx = phi i8 [ %i.dn, %bb.o ], [ %.pre.i.i.i117, %.critedge.i.loopexit.i.i.i116 ], [ 0, %.lr.ph.i.i.i114 ]
  %i.dy = icmp eq i8 %i.dx, %i.dn
  %.sroa.3.0.copyload4.i.i.i.i111 = select i1 %i.dy, i64 %.sroa.10.026.i.i.i.i110, i64 %.sroa.5.028.i.i.i.i109
  %i.dz = trunc nuw i64 %.sroa.3.0.copyload4.i.i.i.i111 to i32
  %i.ea = add nuw i32 %i.dz, 7
  %i.eb = lshr i32 %i.ea, 3
  br label %_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit118

_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit118: ; preds = %bb.l, %bb.m, %bb.n, %.critedge.thread.i.i.i.i108
  %.sink.i.i112 = phi i32 [ 0, %bb.l ], [ 0, %bb.m ], [ %i.eb, %.critedge.thread.i.i.i.i108 ], [ 0, %bb.n ]
  %.1.i.i113 = phi i32 [ 1, %bb.l ], [ 0, %bb.m ], [ 0, %.critedge.thread.i.i.i.i108 ], [ 0, %bb.n ]
  store i32 %.sink.i.i112, ptr %.sroa.28.0.copyload, align 4, !tbaa !3
  br label %bb.r

bb.q:                                             ; preds = %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.thread, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit
  %.sroa.03.0.copyload = load ptr, ptr %.sroa.0127.0164, align 8, !tbaa !102
  %.sroa.24.0.copyload = load ptr, ptr %i.cq, align 8, !tbaa !101
  %.val74.val = load ptr, ptr %.sroa.0131.0161, align 8, !tbaa !89
  %.val74.val83 = load ptr, ptr %i.cr, align 8, !tbaa !92
  %.val74.val83.val = load i32, ptr %.val74.val83, align 4, !tbaa !3
  %.val73.val = load ptr, ptr %.sroa.0132.0162, align 8, !tbaa !89
  %.val73.val84 = load ptr, ptr %i.cm, align 8, !tbaa !92
  %.val73.val84.val = load i32, ptr %.val73.val84, align 4, !tbaa !3
  %i.ec = call noundef i32 @_ZN6hermes6bigint8multiplyENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefES2_(ptr %.sroa.03.0.copyload, ptr %.sroa.24.0.copyload, ptr %.val74.val, i32 %.val74.val83.val, ptr %.val73.val, i32 %.val73.val84.val) ; 2 uses
  %i.ed = icmp ne i32 %i.ec, 0
  %i.ee = icmp ugt i32 %.sroa.10.0163, 1023
  %or.cond.i123 = and i1 %i.ee, %i.ed
  br i1 %or.cond.i123, label %_ZN6hermes6bigint12_GLOBAL__N_134initNonCanonicalWithReadOnlyBigIntERNS0_16MutableBigIntRefERKNS0_18ImmutableBigIntRefE.exit, label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit118
  %.047 = phi i32 [ %.1.i.i113, %_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit118 ], [ %i.ec, %bb.q ]
  %.not56 = icmp eq i32 %.047, 0
  br i1 %.not56, label %bb.s, label %_ZN6hermes6bigint12_GLOBAL__N_134initNonCanonicalWithReadOnlyBigIntERNS0_16MutableBigIntRefERKNS0_18ImmutableBigIntRefE.exit, !prof !100

bb.s:                                             ; preds = %bb.r, %bb.j
  %.sroa.11.1 = phi i32 [ %.sroa.11.0160, %bb.j ], [ %.sroa.10.0163, %bb.r ]
  %.sroa.0131.1 = phi ptr [ %.sroa.0131.0161, %bb.j ], [ %.sroa.0127.0164, %bb.r ] ; 4 uses
  %.sroa.10.1 = phi i32 [ %.sroa.10.0163, %bb.j ], [ %.sroa.11.0160, %bb.r ] ; 3 uses
  %.sroa.0127.1 = phi ptr [ %.sroa.0127.0164, %bb.j ], [ %.sroa.0131.0161, %bb.r ] ; 4 uses
  %.046 = lshr i32 %.046169, 1                    ; 2 uses
  %.not52 = icmp eq i32 %.046, 0
  br i1 %.not52, label %._crit_edge, label %.lr.ph, !llvm.loop !104

._crit_edge:                                      ; preds = %bb.s
  %.not53 = icmp eq ptr %.sroa.0131.1, %5
  br i1 %.not53, label %_ZN6hermes6bigint12_GLOBAL__N_134initNonCanonicalWithReadOnlyBigIntERNS0_16MutableBigIntRefERKNS0_18ImmutableBigIntRefE.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge
  %i.ef = getelementptr i8, ptr %.sroa.0127.1, i64 8 ; 2 uses
  %.val66.val = load ptr, ptr %i.ef, align 8, !tbaa !92
  store i32 %.sroa.10.1, ptr %.val66.val, align 4, !tbaa !3
  %.val72.val = load ptr, ptr %.sroa.0131.1, align 8, !tbaa !89 ; 2 uses
  %i.eg = getelementptr i8, ptr %.sroa.0131.1, i64 8
  %.val72.val85 = load ptr, ptr %i.eg, align 8, !tbaa !92
  %.val72.val85.val = load i32, ptr %.val72.val85, align 4, !tbaa !3 ; 6 uses
  %i.eh = icmp ult i32 %.sroa.10.1, %.val72.val85.val
  br i1 %i.eh, label %_ZN6hermes6bigint12_GLOBAL__N_134initNonCanonicalWithReadOnlyBigIntERNS0_16MutableBigIntRefERKNS0_18ImmutableBigIntRefE.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ei = shl i32 %.val72.val85.val, 3
  %i.ej = load ptr, ptr %.sroa.0127.1, align 8, !tbaa !89
  %i.ek = zext i32 %i.ei to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ej, ptr readonly align 8 %.val72.val, i64 %i.ek, i1 false)
  %i.el = load ptr, ptr %i.ef, align 8, !tbaa !92, !nonnull !64, !align !93
  %i.em = load i32, ptr %i.el, align 4, !tbaa !3
  %i.en = sub i32 %i.em, %.val72.val85.val
  %i.eo = shl i32 %i.en, 3
  %i.ep = icmp eq i32 %.val72.val85.val, 0
  br i1 %i.ep, label %_ZN6hermes6bigint12_GLOBAL__N_124getBigIntRefSignExtValueINS0_18ImmutableBigIntRefEEEmRKT_.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eq = add i32 %.val72.val85.val, -1
  %i.er = zext i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %.val72.val, i64 %i.er
  %i.et = load i64, ptr %i.es, align 8, !tbaa !10
  %.neg.i.i.i = ashr i64 %i.et, 63
  %i.eu = trunc nsw i64 %.neg.i.i.i to i8
  br label %_ZN6hermes6bigint12_GLOBAL__N_124getBigIntRefSignExtValueINS0_18ImmutableBigIntRefEEEmRKT_.exit.i

_ZN6hermes6bigint12_GLOBAL__N_124getBigIntRefSignExtValueINS0_18ImmutableBigIntRefEEEmRKT_.exit.i: ; preds = %bb.v, %bb.u
  %i.ev = phi i8 [ %i.eu, %bb.v ], [ 0, %bb.u ]
  %i.ew = load ptr, ptr %.sroa.0127.1, align 8, !tbaa !89
  %i.ex = zext i32 %.val72.val85.val to i64
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.ex
  %i.ez = zext i32 %i.eo to i64
  call void @llvm.memset.p0.i64(ptr align 8 %i.ey, i8 %i.ev, i64 %i.ez, i1 false)
  br label %_ZN6hermes6bigint12_GLOBAL__N_134initNonCanonicalWithReadOnlyBigIntERNS0_16MutableBigIntRefERKNS0_18ImmutableBigIntRefE.exit

_ZN6hermes6bigint12_GLOBAL__N_134initNonCanonicalWithReadOnlyBigIntERNS0_16MutableBigIntRefERKNS0_18ImmutableBigIntRefE.exit: ; preds = %bb.q, %bb.r, %.lr.ph, %_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit98.thread, %_ZN6hermes6bigint12_GLOBAL__N_124getBigIntRefSignExtValueINS0_18ImmutableBigIntRefEEEmRKT_.exit.i, %bb.t, %_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit98, %_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit, %._crit_edge
  %.0 = phi i32 [ 1, %_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit ], [ 1, %_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit98 ], [ 0, %._crit_edge ], [ 0, %_ZN6hermes6bigint12_GLOBAL__N_124getBigIntRefSignExtValueINS0_18ImmutableBigIntRefEEEmRKT_.exit.i ], [ 1, %bb.t ], [ 0, %_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit98.thread ], [ 1, %bb.r ], [ 2, %.lr.ph ], [ 2, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %i.fa = load ptr, ptr %6, align 8, !tbaa !16    ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.f
  br i1 %i.fb, label %_ZN6hermes6bigint10TmpStorageD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZN6hermes6bigint12_GLOBAL__N_134initNonCanonicalWithReadOnlyBigIntERNS0_16MutableBigIntRefERKNS0_18ImmutableBigIntRefE.exit
  call void @free(ptr noundef %i.fa) #16
  br label %_ZN6hermes6bigint10TmpStorageD2Ev.exit

_ZN6hermes6bigint10TmpStorageD2Ev.exit:           ; preds = %_ZN6hermes6bigint12_GLOBAL__N_134initNonCanonicalWithReadOnlyBigIntERNS0_16MutableBigIntRefERKNS0_18ImmutableBigIntRefE.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN6hermes6bigint19leftShiftResultSizeENS0_18ImmutableBigIntRefES1_(ptr nofree readnone captures(none) %0, i32 %1, ptr %2, i32 %3) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %.not.i.i = icmp eq i32 %3, 0
  br i1 %.not.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_121getShiftAmountAndSignENS0_18ImmutableBigIntRefE.exit.thread16, label %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i.i

_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i.i: ; preds = %bb.a
  %i.c = add i32 %3, -1
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !10, !noalias !105
  %.fr.i = freeze i64 %i.f                        ; 3 uses
  %i.g = icmp slt i64 %.fr.i, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !105
  store i64 -65536, ptr %i.b, align 8, !tbaa !10, !noalias !105
  %i.h = icmp sgt i64 %.fr.i, -1
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i.i
  %i.i = icmp eq i32 %3, 1
  br i1 %i.i, label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.i, label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.thread.i

_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.thread.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !105
  br label %_ZN6hermes6bigint12_GLOBAL__N_121getShiftAmountAndSignENS0_18ImmutableBigIntRefE.exit.thread16

_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.i: ; preds = %bb.b
  %i.j = call noundef i32 @_ZN4llvh5APInt9tcCompareEPKmS2_j(ptr noundef nonnull %2, ptr noundef nonnull %i.b, i32 noundef 1) #16, !noalias !105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !105
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %_ZN6hermes6bigint12_GLOBAL__N_121getShiftAmountAndSignENS0_18ImmutableBigIntRefE.exit.thread16, label %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i16.thread.i

_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i16.thread.i: ; preds = %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !105
  store i64 65536, ptr %i.a, align 8, !tbaa !10, !noalias !105
  %i.l = load i64, ptr %2, align 8, !tbaa !10, !noalias !105
  %.fr.i.i1735.i = freeze i64 %i.l                ; 2 uses
  %i.m = icmp slt i64 %.fr.i.i1735.i, 0
  br i1 %i.m, label %.thread47.i, label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit22.i

bb.c:                                             ; preds = %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !105
  store i64 65536, ptr %i.a, align 8, !tbaa !10, !noalias !105
  %i.n = icmp eq i32 %3, 1
  br i1 %i.n, label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit22.i, label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit22.thread43.i

_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit22.thread43.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !105
  br label %_ZN6hermes6bigint12_GLOBAL__N_121getShiftAmountAndSignENS0_18ImmutableBigIntRefE.exit

_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit22.i: ; preds = %bb.c, %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i16.thread.i
  %i.o = call noundef i32 @_ZN4llvh5APInt9tcCompareEPKmS2_j(ptr noundef nonnull %2, ptr noundef nonnull %i.a, i32 noundef %3) #16, !noalias !105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !105
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %_ZN6hermes6bigint12_GLOBAL__N_121getShiftAmountAndSignENS0_18ImmutableBigIntRefE.exit, label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit22.i._crit_edge

_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit22.i._crit_edge: ; preds = %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit22.i
  %.pre = load i64, ptr %2, align 8, !tbaa !10, !noalias !105
  br label %bb.d

.thread47.i:                                      ; preds = %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i16.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !105
  br label %bb.d

bb.d:                                             ; preds = %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit22.i._crit_edge, %.thread47.i
  %4 = phi i64 [ %.pre, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit22.i._crit_edge ], [ %.fr.i.i1735.i, %.thread47.i ] ; 2 uses
  %5 = sub nsw i64 0, %4
  %spec.select.i = select i1 %i.g, i64 %5, i64 %4
  %i.q = trunc i64 %spec.select.i to i32
  %i.r = add i32 %i.q, 63
  %i.s = lshr i32 %i.r, 6
  br label %_ZN6hermes6bigint12_GLOBAL__N_121getShiftAmountAndSignENS0_18ImmutableBigIntRefE.exit

_ZN6hermes6bigint12_GLOBAL__N_121getShiftAmountAndSignENS0_18ImmutableBigIntRefE.exit: ; preds = %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit22.thread43.i, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit22.i, %bb.d
  %.sink.i = phi i32 [ %i.s, %bb.d ], [ 129, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit22.thread43.i ], [ 129, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit22.i ]
  %6 = icmp sgt i64 %.fr.i, -1
  %spec.select = select i1 %6, i32 %.sink.i, i32 0
  br label %_ZN6hermes6bigint12_GLOBAL__N_121getShiftAmountAndSignENS0_18ImmutableBigIntRefE.exit.thread16

_ZN6hermes6bigint12_GLOBAL__N_121getShiftAmountAndSignENS0_18ImmutableBigIntRefE.exit.thread16: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_121getShiftAmountAndSignENS0_18ImmutableBigIntRefE.exit, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.thread.i, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.i, %bb.a
  %7 = phi i32 [ 0, %bb.a ], [ %spec.select, %_ZN6hermes6bigint12_GLOBAL__N_121getShiftAmountAndSignENS0_18ImmutableBigIntRefE.exit ], [ 0, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.thread.i ], [ 0, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.i ]
  %i.t = add i32 %7, %1
  ret i32 %i.t
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN6hermes6bigint26signedRightShiftResultSizeENS0_18ImmutableBigIntRefES1_(ptr nofree readnone captures(none) %0, i32 %1, ptr %2, i32 %3) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %.not.i.i = icmp eq i32 %3, 0
  br i1 %.not.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_121getShiftAmountAndSignENS0_18ImmutableBigIntRefE.exit.thread, label %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i.i

_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i.i: ; preds = %bb.a
  %i.c = add i32 %3, -1
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !10, !noalias !108
  %.fr.i = freeze i64 %i.f                        ; 3 uses
  %i.g = icmp slt i64 %.fr.i, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !108
  store i64 -65536, ptr %i.b, align 8, !tbaa !10, !noalias !108
  %i.h = icmp sgt i64 %.fr.i, -1
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i.i
  %i.i = icmp eq i32 %3, 1
  br i1 %i.i, label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.i, label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.thread.i

_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.thread.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !108
  br label %_ZN6hermes6bigint12_GLOBAL__N_121getShiftAmountAndSignENS0_18ImmutableBigIntRefE.exit

_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.i: ; preds = %bb.b
  %i.j = call noundef i32 @_ZN4llvh5APInt9tcCompareEPKmS2_j(ptr noundef nonnull %2, ptr noundef nonnull %i.b, i32 noundef 1) #16, !noalias !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !108
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %_ZN6hermes6bigint12_GLOBAL__N_121getShiftAmountAndSignENS0_18ImmutableBigIntRefE.exit, label %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i16.thread.i

_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i16.thread.i: ; preds = %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !108
  store i64 65536, ptr %i.a, align 8, !tbaa !10, !noalias !108
  %i.l = load i64, ptr %2, align 8, !tbaa !10, !noalias !108
  %.fr.i.i1735.i = freeze i64 %i.l                ; 2 uses
  %i.m = icmp slt i64 %.fr.i.i1735.i, 0
  br i1 %i.m, label %.thread47.i, label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit22.i

bb.c:                                             ; preds = %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !108
  store i64 65536, ptr %i.a, align 8, !tbaa !10, !noalias !108
  %i.n = icmp eq i32 %3, 1
  br i1 %i.n, label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit22.i, label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit22.thread43.i

_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit22.thread43.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !108
  br label %_ZN6hermes6bigint12_GLOBAL__N_121getShiftAmountAndSignENS0_18ImmutableBigIntRefE.exit

_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit22.i: ; preds = %bb.c, %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i16.thread.i
  %i.o = call noundef i32 @_ZN4llvh5APInt9tcCompareEPKmS2_j(ptr noundef nonnull %2, ptr noundef nonnull %i.a, i32 noundef %3) #16, !noalias !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !108
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %_ZN6hermes6bigint12_GLOBAL__N_121getShiftAmountAndSignENS0_18ImmutableBigIntRefE.exit, label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit22.i._crit_edge

_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit22.i._crit_edge: ; preds = %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit22.i
  %.pre = load i64, ptr %2, align 8, !tbaa !10, !noalias !108
  br label %bb.d

.thread47.i:                                      ; preds = %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i16.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !108
  br label %bb.d

bb.d:                                             ; preds = %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit22.i._crit_edge, %.thread47.i
  %4 = phi i64 [ %.pre, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit22.i._crit_edge ], [ %.fr.i.i1735.i, %.thread47.i ] ; 2 uses
  %5 = sub nsw i64 0, %4
  %spec.select.i = select i1 %i.g, i64 %5, i64 %4
  %i.q = trunc i64 %spec.select.i to i32
  %i.r = add i32 %i.q, 63
  %i.s = lshr i32 %i.r, 6
  br label %_ZN6hermes6bigint12_GLOBAL__N_121getShiftAmountAndSignENS0_18ImmutableBigIntRefE.exit

_ZN6hermes6bigint12_GLOBAL__N_121getShiftAmountAndSignENS0_18ImmutableBigIntRefE.exit: ; preds = %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.thread.i, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.i, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit22.thread43.i, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit22.i, %bb.d
  %.sink.i = phi i32 [ 129, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.i ], [ 129, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit22.thread43.i ], [ 129, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.thread.i ], [ 129, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit22.i ], [ %i.s, %bb.d ]
  %6 = icmp slt i64 %.fr.i, 0
  %spec.select = select i1 %6, i32 %.sink.i, i32 0
  br label %_ZN6hermes6bigint12_GLOBAL__N_121getShiftAmountAndSignENS0_18ImmutableBigIntRefE.exit.thread

_ZN6hermes6bigint12_GLOBAL__N_121getShiftAmountAndSignENS0_18ImmutableBigIntRefE.exit.thread: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_121getShiftAmountAndSignENS0_18ImmutableBigIntRefE.exit, %bb.a
  %7 = phi i32 [ 0, %bb.a ], [ %spec.select, %_ZN6hermes6bigint12_GLOBAL__N_121getShiftAmountAndSignENS0_18ImmutableBigIntRefE.exit ]
  %8 = add i32 %7, %1
  ret i32 %8
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN6hermes6bigint9leftShiftENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefES2_(ptr %0, ptr nofree captures(none) %1, ptr nofree readonly captures(none) %2, i32 %3, ptr %4, i32 %5) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call fastcc noundef i32 @_ZN6hermes6bigint12_GLOBAL__N_19shiftImplENS1_9ShiftOpIsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefES4_(i32 noundef 0, ptr %0, ptr %1, ptr %2, i32 %3, ptr %4, i32 %5)
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZN6hermes6bigint12_GLOBAL__N_19shiftImplENS1_9ShiftOpIsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefES4_(i32 noundef range(i32 0, 2) %0, ptr %1, ptr nofree captures(none) %2, ptr nofree readonly captures(none) %3, i32 %4, ptr %.0.val, i32 %.8.val) unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %.not.i.i.i = icmp eq i32 %.8.val, 0
  br i1 %.not.i.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_131getShiftAmountSignAndResultSizeENS1_9ShiftOpIsENS0_18ImmutableBigIntRefES3_.exit, label %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i.i.i

_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i.i.i: ; preds = %bb.a
  %i.c = add i32 %.8.val, -1
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %.0.val, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !10, !noalias !111
  %.fr.i.i = freeze i64 %i.f                      ; 3 uses
  %i.g = icmp slt i64 %.fr.i.i, 0
  %.lobit.i.i = lshr i64 %.fr.i.i, 63
  %i.h = trunc nuw nsw i64 %.lobit.i.i to i8      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !111
  store i64 -65536, ptr %i.b, align 8, !tbaa !10, !noalias !111
  %i.i = icmp sgt i64 %.fr.i.i, -1
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i.i.i
  %i.j = icmp eq i32 %.8.val, 1
  br i1 %i.j, label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.i.i, label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.thread.i.i

_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.thread.i.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !111
  br label %_ZN6hermes6bigint12_GLOBAL__N_131getShiftAmountSignAndResultSizeENS1_9ShiftOpIsENS0_18ImmutableBigIntRefES3_.exit

_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.i.i: ; preds = %bb.b
  %i.k = call noundef i32 @_ZN4llvh5APInt9tcCompareEPKmS2_j(ptr noundef nonnull %.0.val, ptr noundef nonnull %i.b, i32 noundef 1) #16, !noalias !111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !111
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %_ZN6hermes6bigint12_GLOBAL__N_131getShiftAmountSignAndResultSizeENS1_9ShiftOpIsENS0_18ImmutableBigIntRefES3_.exit, label %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i16.thread.i.i

_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i16.thread.i.i: ; preds = %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !111
  store i64 65536, ptr %i.a, align 8, !tbaa !10, !noalias !111
  %i.m = load i64, ptr %.0.val, align 8, !tbaa !10, !noalias !111
  %.fr.i.i1735.i.i = freeze i64 %i.m              ; 2 uses
  %i.n = icmp slt i64 %.fr.i.i1735.i.i, 0
  br i1 %i.n, label %.thread47.i.i, label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit22.i.i

bb.c:                                             ; preds = %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !111
  store i64 65536, ptr %i.a, align 8, !tbaa !10, !noalias !111
  %i.o = icmp eq i32 %.8.val, 1
  br i1 %i.o, label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit22.i.i, label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit22.thread43.i.i

_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit22.thread43.i.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !111
  br label %_ZN6hermes6bigint12_GLOBAL__N_131getShiftAmountSignAndResultSizeENS1_9ShiftOpIsENS0_18ImmutableBigIntRefES3_.exit

_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit22.i.i: ; preds = %bb.c, %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i16.thread.i.i
  %i.p = call noundef i32 @_ZN4llvh5APInt9tcCompareEPKmS2_j(ptr noundef nonnull %.0.val, ptr noundef nonnull %i.a, i32 noundef %.8.val) #16, !noalias !111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !111
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %_ZN6hermes6bigint12_GLOBAL__N_131getShiftAmountSignAndResultSizeENS1_9ShiftOpIsENS0_18ImmutableBigIntRefES3_.exit, label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit22.i._crit_edge.i

_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit22.i._crit_edge.i: ; preds = %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit22.i.i
  %.pre.i.a = load i64, ptr %.0.val, align 8, !tbaa !10, !noalias !111
  br label %bb.d

.thread47.i.i:                                    ; preds = %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i16.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !111
  br label %bb.d

bb.d:                                             ; preds = %.thread47.i.i, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit22.i._crit_edge.i
  %5 = phi i64 [ %.pre.i.a, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit22.i._crit_edge.i ], [ %.fr.i.i1735.i.i, %.thread47.i.i ] ; 2 uses
  %6 = sub nsw i64 0, %5
  %spec.select.i.i = select i1 %i.g, i64 %6, i64 %5
  %i.r = trunc i64 %spec.select.i.i to i32
  br label %_ZN6hermes6bigint12_GLOBAL__N_131getShiftAmountSignAndResultSizeENS1_9ShiftOpIsENS0_18ImmutableBigIntRefES3_.exit

_ZN6hermes6bigint12_GLOBAL__N_131getShiftAmountSignAndResultSizeENS1_9ShiftOpIsENS0_18ImmutableBigIntRefES3_.exit: ; preds = %bb.a, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.thread.i.i, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.i.i, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit22.thread43.i.i, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit22.i.i, %bb.d
  %.sink53.i.i = phi i8 [ %i.h, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.i.i ], [ %i.h, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit22.thread43.i.i ], [ %i.h, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.thread.i.i ], [ %i.h, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit22.i.i ], [ %i.h, %bb.d ], [ 0, %bb.a ]
  %.sink.i.i = phi i32 [ 8193, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.i.i ], [ 8193, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit22.thread43.i.i ], [ 8193, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.thread.i.i ], [ 8193, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit22.i.i ], [ %i.r, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %i.s = zext nneg i8 %.sink53.i.i to i32
  %.not.i.not = icmp eq i32 %0, %i.s              ; 2 uses
  %i.t = add i32 %.sink.i.i, 63
  %i.u = lshr i32 %i.t, 6
  %.0.i.i = select i1 %.not.i.not, i32 %i.u, i32 0
  %i.v = add i32 %.0.i.i, %4
  %_ZN6hermes6bigint12_GLOBAL__N_123signedRightShiftAdapterEPmjj._ZN4llvh5APInt11tcShiftLeftEPmjj = select i1 %.not.i.not, ptr @_ZN4llvh5APInt11tcShiftLeftEPmjj, ptr @_ZN6hermes6bigint12_GLOBAL__N_123signedRightShiftAdapterEPmjj
  %i.w = load i32, ptr %2, align 4, !tbaa !3      ; 2 uses
  %i.x = icmp ult i32 %i.w, %i.v
  %i.y = icmp ult i32 %i.w, %4
  %or.cond = or i1 %i.y, %i.x
  br i1 %or.cond, label %_ZN6hermes6bigint12_GLOBAL__N_134initNonCanonicalWithReadOnlyBigIntERNS0_16MutableBigIntRefERKNS0_18ImmutableBigIntRefE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN6hermes6bigint12_GLOBAL__N_131getShiftAmountSignAndResultSizeENS1_9ShiftOpIsENS0_18ImmutableBigIntRefES3_.exit
  %i.z = shl i32 %4, 3
  %i.aa = zext i32 %i.z to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1, ptr readonly align 8 %3, i64 %i.aa, i1 false)
  %i.ab = load i32, ptr %2, align 4, !tbaa !3
  %i.ac = sub i32 %i.ab, %4
  %i.ad = shl i32 %i.ac, 3
  %i.ae = icmp eq i32 %4, 0
  br i1 %i.ae, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = add i32 %4, -1
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !10
  %.neg.i.i.i = ashr i64 %i.ai, 63
  %i.aj = trunc nsw i64 %.neg.i.i.i to i8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ak = phi i8 [ %i.aj, %bb.f ], [ 0, %bb.e ]
  %i.al = zext i32 %4 to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.al
  %i.an = zext i32 %i.ad to i64
  call void @llvm.memset.p0.i64(ptr align 8 %i.am, i8 %i.ak, i64 %i.an, i1 false)
  %i.ao = load i32, ptr %2, align 4, !tbaa !3
  call void %_ZN6hermes6bigint12_GLOBAL__N_123signedRightShiftAdapterEPmjj._ZN4llvh5APInt11tcShiftLeftEPmjj(ptr noundef %1, i32 noundef %i.ao, i32 noundef %.sink.i.i) #16, !callees !116
  %i.ap = load i32, ptr %2, align 4, !tbaa !3
  %i.aq = shl i32 %i.ap, 3                        ; 2 uses
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %_ZN6hermes6bigint12_GLOBAL__N_121ensureCanonicalResultERNS0_16MutableBigIntRefE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = zext i32 %i.aq to i64                   ; 5 uses
  %i.at = getelementptr i8, ptr %1, i64 %i.as
  %i.au = getelementptr i8, ptr %i.at, i64 -1
  %i.av = load i8, ptr %i.au, align 1, !tbaa !7   ; 3 uses
  %i.aw = ashr i8 %i.av, 7                        ; 3 uses
  %i.ax = icmp eq i8 %i.av, %i.aw
  br i1 %i.ax, label %.lr.ph.i.preheader, label %.critedge.thread.i.i

.lr.ph.i.preheader:                               ; preds = %bb.h
  %i.ay = add nsw i64 %i.as, -1
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.az = phi i64 [ %i.ay, %.lr.ph.i.preheader ], [ %i.be, %.lr.ph.i ] ; 4 uses
  %.sroa.10.030.i4.i27 = phi i64 [ %i.as, %.lr.ph.i.preheader ], [ %i.az, %.lr.ph.i ]
  %i.ba = getelementptr i8, ptr %1, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ba, i64 -1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !7   ; 2 uses
  %i.bd = icmp eq i8 %i.bc, %i.av
  br i1 %i.bd, label %.lr.ph.i, label %.critedge.i.loopexit.i, !llvm.loop !8

.lr.ph.i:                                         ; preds = %bb.i
  %i.be = add nsw i64 %i.az, -1                   ; 2 uses
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %.critedge.thread.i.i, label %bb.i, !llvm.loop !8

.critedge.i.loopexit.i:                           ; preds = %bb.i
  %.pre.i14 = ashr i8 %i.bc, 7
  br label %.critedge.thread.i.i

.critedge.thread.i.i:                             ; preds = %.lr.ph.i, %.critedge.i.loopexit.i, %bb.h
  %.sroa.5.028.i.i = phi i64 [ %i.as, %bb.h ], [ %.sroa.10.030.i4.i27, %.critedge.i.loopexit.i ], [ 1, %.lr.ph.i ]
  %.sroa.10.026.i.i = phi i64 [ %i.as, %bb.h ], [ %i.az, %.critedge.i.loopexit.i ], [ 0, %.lr.ph.i ]
  %i.bg = phi i8 [ %i.aw, %bb.h ], [ %.pre.i14, %.critedge.i.loopexit.i ], [ 0, %.lr.ph.i ]
  %i.bh = icmp eq i8 %i.bg, %i.aw
  %.sroa.3.0.copyload4.i.i = select i1 %i.bh, i64 %.sroa.10.026.i.i, i64 %.sroa.5.028.i.i
  %i.bi = trunc nuw i64 %.sroa.3.0.copyload4.i.i to i32
  %i.bj = add nuw i32 %i.bi, 7
  %i.bk = lshr i32 %i.bj, 3
  br label %_ZN6hermes6bigint12_GLOBAL__N_121ensureCanonicalResultERNS0_16MutableBigIntRefE.exit

_ZN6hermes6bigint12_GLOBAL__N_121ensureCanonicalResultERNS0_16MutableBigIntRefE.exit: ; preds = %bb.g, %.critedge.thread.i.i
  %.sroa.3.0.i.i = phi i32 [ %i.bk, %.critedge.thread.i.i ], [ 0, %bb.g ]
  store i32 %.sroa.3.0.i.i, ptr %2, align 4, !tbaa !3
  br label %_ZN6hermes6bigint12_GLOBAL__N_134initNonCanonicalWithReadOnlyBigIntERNS0_16MutableBigIntRefERKNS0_18ImmutableBigIntRefE.exit

_ZN6hermes6bigint12_GLOBAL__N_134initNonCanonicalWithReadOnlyBigIntERNS0_16MutableBigIntRefERKNS0_18ImmutableBigIntRefE.exit: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_121ensureCanonicalResultERNS0_16MutableBigIntRefE.exit, %_ZN6hermes6bigint12_GLOBAL__N_131getShiftAmountSignAndResultSizeENS1_9ShiftOpIsENS0_18ImmutableBigIntRefES3_.exit
  %.1 = phi i32 [ 1, %_ZN6hermes6bigint12_GLOBAL__N_131getShiftAmountSignAndResultSizeENS1_9ShiftOpIsENS0_18ImmutableBigIntRefES3_.exit ], [ 0, %_ZN6hermes6bigint12_GLOBAL__N_121ensureCanonicalResultERNS0_16MutableBigIntRefE.exit ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN6hermes6bigint16signedRightShiftENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefES2_(ptr %0, ptr nofree captures(none) %1, ptr nofree readonly captures(none) %2, i32 %3, ptr %4, i32 %5) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call fastcc noundef i32 @_ZN6hermes6bigint12_GLOBAL__N_19shiftImplENS1_9ShiftOpIsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefES4_(i32 noundef 1, ptr %0, ptr %1, ptr %2, i32 %3, ptr %4, i32 %5)
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK6hermes6bigint19UniquingBigIntTable12getEntryListEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.44") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %1) local_unnamed_addr #5 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !117  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !117  ; 2 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = mul nsw i64 %i.l, 21
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !122  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !123
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 24
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !124  ; 2 uses
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !122  ; 3 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = sdiv exact i64 %i.aa, 24
  %i.ac = add nsw i64 %i.u, %i.ab                 ; 4 uses
  %i.ad = icmp ugt i64 %i.ac, 1152921504606846975
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.not61 = icmp eq i64 %i.ac, 0
  br i1 %.not61, label %_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN6hermes6bigint16BigIntTableEntryESaIS2_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN6hermes6bigint16BigIntTableEntryESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = shl nuw nsw i64 %i.ac, 3
  %i.ah = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #18 ; 4 uses
  store ptr %i.ah, ptr %0, align 8, !tbaa !125
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !128
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ac ; 2 uses
  store ptr %i.ai, ptr %i.ae, align 8, !tbaa !129
  br label %_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE7reserveEm.exit

_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseIN6hermes6bigint16BigIntTableEntryESaIS2_EE11_M_allocateEm.exit.i
  %.promoted27 = phi ptr [ null, %bb.c ], [ %i.ah, %_ZNSt12_Vector_baseIN6hermes6bigint16BigIntTableEntryESaIS2_EE11_M_allocateEm.exit.i ] ; 3 uses
  %.promoted = phi ptr [ null, %bb.c ], [ %i.ai, %_ZNSt12_Vector_baseIN6hermes6bigint16BigIntTableEntryESaIS2_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.not30 = icmp eq ptr %i.x, %i.n
  br i1 %.not30, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE7reserveEm.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZNSt15_Deque_iteratorIN6hermes6bigint12ParsedBigIntERKS2_PS3_EppEv.exit, %_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE7reserveEm.exit
  %.lcssa28 = phi ptr [ %.promoted27, %_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE7reserveEm.exit ], [ %i.cc, %_ZNSt15_Deque_iteratorIN6hermes6bigint12ParsedBigIntERKS2_PS3_EppEv.exit ]
  %.lcssa = phi ptr [ %.promoted, %_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE7reserveEm.exit ], [ %i.cd, %_ZNSt15_Deque_iteratorIN6hermes6bigint12ParsedBigIntERKS2_PS3_EppEv.exit ]
  store ptr %.lcssa, ptr %i.ae, align 8
  store ptr %.lcssa28, ptr %0, align 8
  ret void

bb.d:                                             ; preds = %.lr.ph, %_ZNSt15_Deque_iteratorIN6hermes6bigint12ParsedBigIntERKS2_PS3_EppEv.exit
  %i.ak = phi ptr [ %.promoted27, %.lr.ph ], [ %i.cb, %_ZNSt15_Deque_iteratorIN6hermes6bigint12ParsedBigIntERKS2_PS3_EppEv.exit ] ; 4 uses
  %.034 = phi i32 [ 0, %.lr.ph ], [ %i.ce, %_ZNSt15_Deque_iteratorIN6hermes6bigint12ParsedBigIntERKS2_PS3_EppEv.exit ] ; 3 uses
  %.sroa.13.033 = phi ptr [ %i.f, %.lr.ph ], [ %.sroa.13.1, %_ZNSt15_Deque_iteratorIN6hermes6bigint12ParsedBigIntERKS2_PS3_EppEv.exit ] ; 2 uses
  %.sroa.10.032 = phi ptr [ %i.w, %.lr.ph ], [ %.sroa.10.1, %_ZNSt15_Deque_iteratorIN6hermes6bigint12ParsedBigIntERKS2_PS3_EppEv.exit ] ; 2 uses
  %.sroa.020.031 = phi ptr [ %i.x, %.lr.ph ], [ %.sroa.020.1, %_ZNSt15_Deque_iteratorIN6hermes6bigint12ParsedBigIntERKS2_PS3_EppEv.exit ] ; 3 uses
  %i.al = phi ptr [ %.promoted, %.lr.ph ], [ %i.cd, %_ZNSt15_Deque_iteratorIN6hermes6bigint12ParsedBigIntERKS2_PS3_EppEv.exit ] ; 3 uses
  %i.am = phi ptr [ %.promoted27, %.lr.ph ], [ %i.cc, %_ZNSt15_Deque_iteratorIN6hermes6bigint12ParsedBigIntERKS2_PS3_EppEv.exit ] ; 6 uses
  %i.an = load ptr, ptr %.sroa.020.031, align 8, !tbaa !69 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.020.031, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !71
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 6 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %_ZNK6hermes6bigint12ParsedBigInt8getBytesEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.au = getelementptr i8, ptr %i.an, i64 %i.as
  %i.av = getelementptr i8, ptr %i.au, i64 -1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !7   ; 3 uses
  %i.ax = ashr i8 %i.aw, 7                        ; 3 uses
  %i.ay = icmp eq i8 %i.aw, %i.ax
  br i1 %i.ay, label %.lr.ph.i.preheader, label %.critedge.thread.i.i
end_hunk_2
