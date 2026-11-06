Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AffineExpandIndexOps?download=true
inline.NumInlined: 1489
inline.NumDeleted: 1035
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 16
begin_hunk_0_@"_ZSt21__inplace_stable_sortIPSt4pairIN4mlir5ValueElEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_6affine27lowerAffineLinearizeIndexOpERNS1_12RewriterBaseENS8_22AffineLinearizeIndexOpEE3$_0EEEvT_SE_T0_":bb.a
  %i.am = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -112
  %i.an = load <2 x i64>, ptr %i.al, align 8, !tbaa !57
  store <2 x i64> %i.an, ptr %i.am, align 8, !tbaa !57
  %i.ao = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -128 ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -128 ; 2 uses
  %i.aq = load <2 x i64>, ptr %i.ao, align 8, !tbaa !57
  store <2 x i64> %i.aq, ptr %i.ap, align 8, !tbaa !57
  %i.ar = add nsw i64 %.010.i.i.i.i.i.i, -8
  %i.as = icmp sgt i64 %.010.i.i.i.i.i.i, 8
  br i1 %i.as, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIPSt4pairIN4mlir5ValueElES4_ET0_T_S6_S5_.exit.i, !llvm.loop !0

_ZSt13move_backwardIPSt4pairIN4mlir5ValueElES4_ET0_T_S6_S5_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.d
  store i64 %.sroa.0.0.copyload.i, ptr %0, align 8, !tbaa !21
  store i64 %.0.val.i, ptr %i.g, align 8, !tbaa !55
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.at = getelementptr i8, ptr %.pn18.i, i64 8
  %.0.val11.i.i = load i64, ptr %i.at, align 8    ; 2 uses
  %i.au = icmp sgt i64 %.0.val.i, %.0.val11.i.i
  br i1 %i.au, label %.lr.ph.i.i, label %"_ZSt25__unguarded_linear_insertIPSt4pairIN4mlir5ValueElEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_6affine27lowerAffineLinearizeIndexOpERNS1_12RewriterBaseENS8_22AffineLinearizeIndexOpEE3$_0EEEvT_T0_.exit.i"

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %.0.val13.i.i = phi i64 [ %.0.val.i.i, %.lr.ph.i.i ], [ %.0.val11.i.i, %bb.e ]
  %.0912.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.019.i, %bb.e ] ; 4 uses
  %.0.i.i = getelementptr inbounds i8, ptr %.0912.i.i, i64 -16 ; 3 uses
  %i.av = load i64, ptr %.0.i.i, align 8, !tbaa !21
  store i64 %i.av, ptr %.0912.i.i, align 8, !tbaa !21
  %i.aw = getelementptr inbounds nuw i8, ptr %.0912.i.i, i64 8
  store i64 %.0.val13.i.i, ptr %i.aw, align 8, !tbaa !55
  %i.ax = getelementptr i8, ptr %.0912.i.i, i64 -24
  %.0.val.i.i = load i64, ptr %i.ax, align 8      ; 2 uses
  %i.ay = icmp sgt i64 %.0.val.i, %.0.val.i.i
  br i1 %i.ay, label %.lr.ph.i.i, label %"_ZSt25__unguarded_linear_insertIPSt4pairIN4mlir5ValueElEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_6affine27lowerAffineLinearizeIndexOpERNS1_12RewriterBaseENS8_22AffineLinearizeIndexOpEE3$_0EEEvT_T0_.exit.i", !llvm.loop !1

"_ZSt25__unguarded_linear_insertIPSt4pairIN4mlir5ValueElEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_6affine27lowerAffineLinearizeIndexOpERNS1_12RewriterBaseENS8_22AffineLinearizeIndexOpEE3$_0EEEvT_T0_.exit.i": ; preds = %.lr.ph.i.i, %bb.e
  %.09.lcssa.i.i = phi ptr [ %.019.i, %bb.e ], [ %.0.i.i, %.lr.ph.i.i ] ; 2 uses
  store i64 %.sroa.0.0.copyload.i, ptr %.09.lcssa.i.i, align 8, !tbaa !21
  %i.az = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i, i64 8
  store i64 %.0.val.i, ptr %i.az, align 8, !tbaa !55
  %.val.pre.i = load i64, ptr %i.g, align 8
  br label %bb.f

bb.f:                                             ; preds = %"_ZSt25__unguarded_linear_insertIPSt4pairIN4mlir5ValueElEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_6affine27lowerAffineLinearizeIndexOpERNS1_12RewriterBaseENS8_22AffineLinearizeIndexOpEE3$_0EEEvT_T0_.exit.i", %_ZSt13move_backwardIPSt4pairIN4mlir5ValueElES4_ET0_T_S6_S5_.exit.i
  %.val23.i = phi i64 [ %.0.val.i, %_ZSt13move_backwardIPSt4pairIN4mlir5ValueElES4_ET0_T_S6_S5_.exit.i ], [ %.val.pre.i, %"_ZSt25__unguarded_linear_insertIPSt4pairIN4mlir5ValueElEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_6affine27lowerAffineLinearizeIndexOpERNS1_12RewriterBaseENS8_22AffineLinearizeIndexOpEE3$_0EEEvT_T0_.exit.i" ]
  %.0.i = getelementptr inbounds nuw i8, ptr %.019.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, %1
  br i1 %.not.i, label %common.ret30, label %bb.c, !llvm.loop !2

common.ret30:                                     ; preds = %.preheader.i, %bb.b, %bb.f, %bb.g
  ret void

bb.g:                                             ; preds = %bb.a
  %i.ba = lshr i64 %i.d, 1                        ; 2 uses
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ba ; 4 uses
  tail call fastcc void @"_ZSt21__inplace_stable_sortIPSt4pairIN4mlir5ValueElEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_6affine27lowerAffineLinearizeIndexOpERNS1_12RewriterBaseENS8_22AffineLinearizeIndexOpEE3$_0EEEvT_SE_T0_"(ptr noundef %0, ptr noundef %i.bb)
  tail call fastcc void @"_ZSt21__inplace_stable_sortIPSt4pairIN4mlir5ValueElEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_6affine27lowerAffineLinearizeIndexOpERNS1_12RewriterBaseENS8_22AffineLinearizeIndexOpEE3$_0EEEvT_SE_T0_"(ptr noundef %i.bb, ptr noundef %1)
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.a, %i.bc
  %i.be = ashr exact i64 %i.bd, 4
  tail call fastcc void @"_ZSt22__merge_without_bufferIPSt4pairIN4mlir5ValueElElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_6affine27lowerAffineLinearizeIndexOpERNS1_12RewriterBaseENS8_22AffineLinearizeIndexOpEE3$_0EEEvT_SE_SE_T0_SF_T1_"(ptr noundef %0, ptr noundef %i.bb, ptr noundef %1, i64 noundef %i.ba, i64 noundef %i.be)
  br label %common.ret30
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt29__stable_sort_adaptive_resizeIPSt4pairIN4mlir5ValueElES4_lN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_6affine27lowerAffineLinearizeIndexOpERNS1_12RewriterBaseENS8_22AffineLinearizeIndexOpEE3$_0EEEvT_SE_T0_T1_T2_"(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 4
  %i.e = add nsw i64 %i.d, 1
  %i.f = sdiv i64 %i.e, 2                         ; 4 uses
  %i.g = getelementptr inbounds [16 x i8], ptr %0, i64 %i.f ; 7 uses
  %i.h = icmp sgt i64 %i.f, %3
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.a, %i.i
  %i.k = ashr exact i64 %i.j, 4                   ; 2 uses
  br i1 %i.h, label %bb.b, label %common.ret

common.ret34:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @"_ZSt29__stable_sort_adaptive_resizeIPSt4pairIN4mlir5ValueElES4_lN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_6affine27lowerAffineLinearizeIndexOpERNS1_12RewriterBaseENS8_22AffineLinearizeIndexOpEE3$_0EEEvT_SE_T0_T1_T2_"(ptr noundef %0, ptr noundef %i.g, ptr noundef %2, i64 noundef %3)
  tail call fastcc void @"_ZSt29__stable_sort_adaptive_resizeIPSt4pairIN4mlir5ValueElES4_lN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_6affine27lowerAffineLinearizeIndexOpERNS1_12RewriterBaseENS8_22AffineLinearizeIndexOpEE3$_0EEEvT_SE_T0_T1_T2_"(ptr noundef %i.g, ptr noundef %1, ptr noundef %2, i64 noundef %3)
  tail call fastcc void @"_ZSt23__merge_adaptive_resizeIPSt4pairIN4mlir5ValueElElS4_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_6affine27lowerAffineLinearizeIndexOpERNS1_12RewriterBaseENS8_22AffineLinearizeIndexOpEE3$_0EEEvT_SE_SE_T0_SF_T1_SF_T2_"(ptr noundef %0, ptr noundef %i.g, ptr noundef %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3)
  br label %common.ret34

common.ret:                                       ; preds = %bb.a
  tail call fastcc void @"_ZSt24__merge_sort_with_bufferIPSt4pairIN4mlir5ValueElES4_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_6affine27lowerAffineLinearizeIndexOpERNS1_12RewriterBaseENS8_22AffineLinearizeIndexOpEE3$_0EEEvT_SE_T0_T1_"(ptr noundef %0, ptr noundef %i.g, ptr noundef %2)
  tail call fastcc void @"_ZSt24__merge_sort_with_bufferIPSt4pairIN4mlir5ValueElES4_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_6affine27lowerAffineLinearizeIndexOpERNS1_12RewriterBaseENS8_22AffineLinearizeIndexOpEE3$_0EEEvT_SE_T0_T1_"(ptr noundef %i.g, ptr noundef %1, ptr noundef %2)
  tail call fastcc void @"_ZSt16__merge_adaptiveIPSt4pairIN4mlir5ValueElElS4_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_6affine27lowerAffineLinearizeIndexOpERNS1_12RewriterBaseENS8_22AffineLinearizeIndexOpEE3$_0EEEvT_SE_SE_T0_SF_T1_T2_"(ptr noundef %0, ptr noundef %i.g, ptr noundef %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2)
  br label %common.ret34
}

; Function Attrs: nobuiltin nounwind allocsize(0)
declare noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt24__merge_sort_with_bufferIPSt4pairIN4mlir5ValueElES4_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_6affine27lowerAffineLinearizeIndexOpERNS1_12RewriterBaseENS8_22AffineLinearizeIndexOpEE3$_0EEEvT_SE_T0_T1_"(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #11 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.c
  %i.f = icmp sgt i64 %i.c, 96
  br i1 %i.f, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a, %"_ZSt16__insertion_sortIPSt4pairIN4mlir5ValueElEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_6affine27lowerAffineLinearizeIndexOpERNS1_12RewriterBaseENS8_22AffineLinearizeIndexOpEE3$_0EEEvT_SE_T0_.exit.i"
  %i.g = phi i64 [ %i.ji, %"_ZSt16__insertion_sortIPSt4pairIN4mlir5ValueElEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_6affine27lowerAffineLinearizeIndexOpERNS1_12RewriterBaseENS8_22AffineLinearizeIndexOpEE3$_0EEEvT_SE_T0_.exit.i" ], [ %i.b, %bb.a ] ; 6 uses
  %.039.i = phi ptr [ %i.jh, %"_ZSt16__insertion_sortIPSt4pairIN4mlir5ValueElEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_6affine27lowerAffineLinearizeIndexOpERNS1_12RewriterBaseENS8_22AffineLinearizeIndexOpEE3$_0EEEvT_SE_T0_.exit.i" ], [ %0, %bb.a ] ; 26 uses
  %i.h = getelementptr i8, ptr %.039.i, i64 8     ; 10 uses
  %.val.pre21.i.i = load i64, ptr %i.h, align 8   ; 2 uses
  %.019.i.ptr.i = getelementptr inbounds nuw i8, ptr %.039.i, i64 16 ; 4 uses
  %i.i = getelementptr i8, ptr %.039.i, i64 24    ; 2 uses
  %.0.val.i.i = load i64, ptr %i.i, align 8       ; 2 uses
  %i.j = load <2 x i64>, ptr %.019.i.ptr.i, align 8
  %i.k = icmp sgt i64 %.0.val.i.i, %.val.pre21.i.i
  br i1 %i.k, label %bb.b, label %"_ZSt25__unguarded_linear_insertIPSt4pairIN4mlir5ValueElEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_6affine27lowerAffineLinearizeIndexOpERNS1_12RewriterBaseENS8_22AffineLinearizeIndexOpEE3$_0EEEvT_T0_.exit.i.i"

bb.b:                                             ; preds = %.lr.ph.i
  %i.l = ptrtoint ptr %.019.i.ptr.i to i64
  %i.m = sub i64 %i.l, %i.g
  %i.n = ashr exact i64 %i.m, 4                   ; 5 uses
  %i.o = icmp sgt i64 %i.n, 0
  br i1 %i.o, label %.lr.ph.i.i.i.i.i.preheader.i.i, label %_ZSt13move_backwardIPSt4pairIN4mlir5ValueElES4_ET0_T_S6_S5_.exit.i.i

.lr.ph.i.i.i.i.i.preheader.i.i:                   ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %.039.i, i64 32 ; 2 uses
  %xtraiter = and i64 %i.n, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i, %.lr.ph.i.i.i.i.i.i.i.prol
  %.010.i.i.i.i.i.i.i.prol = phi i64 [ %i.t, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.n, %.lr.ph.i.i.i.i.i.preheader.i.i ]
  %.069.i.i.i.i.i.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.p, %.lr.ph.i.i.i.i.i.preheader.i.i ]
  %.078.i.i.i.i.i.i.i.prol = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %.019.i.ptr.i, %.lr.ph.i.i.i.i.i.preheader.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.i ]
  %i.q = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.s = load <2 x i64>, ptr %i.q, align 8, !tbaa !57
  store <2 x i64> %i.s, ptr %i.r, align 8, !tbaa !57
  %i.t = add nsw i64 %.010.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !182

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader.i.i
  %.010.i.i.i.i.i.i.i.unr = phi i64 [ %i.n, %.lr.ph.i.i.i.i.i.preheader.i.i ], [ %i.t, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.069.i.i.i.i.i.i.i.unr = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.preheader.i.i ], [ %i.r, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.078.i.i.i.i.i.i.i.unr = phi ptr [ %.019.i.ptr.i, %.lr.ph.i.i.i.i.i.preheader.i.i ], [ %i.q, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.u = icmp ult i64 %i.n, 8
  br i1 %i.u, label %_ZSt13move_backwardIPSt4pairIN4mlir5ValueElES4_ET0_T_S6_S5_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.010.i.i.i.i.i.i.i = phi i64 [ %i.at, %.lr.ph.i.i.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i.i ], [ %.069.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i.i ], [ %.078.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.v = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -16
  %i.w = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -16
  %i.x = load <2 x i64>, ptr %i.v, align 8, !tbaa !57
  store <2 x i64> %i.x, ptr %i.w, align 8, !tbaa !57
  %i.y = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -32
  %i.z = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -32
  %i.aa = load <2 x i64>, ptr %i.y, align 8, !tbaa !57
  store <2 x i64> %i.aa, ptr %i.z, align 8, !tbaa !57
  %i.ab = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -48
  %i.ac = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -48
  %i.ad = load <2 x i64>, ptr %i.ab, align 8, !tbaa !57
  store <2 x i64> %i.ad, ptr %i.ac, align 8, !tbaa !57
  %i.ae = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -64
  %i.af = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -64
  %i.ag = load <2 x i64>, ptr %i.ae, align 8, !tbaa !57
  store <2 x i64> %i.ag, ptr %i.af, align 8, !tbaa !57
  %i.ah = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -80
  %i.ai = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -80
  %i.aj = load <2 x i64>, ptr %i.ah, align 8, !tbaa !57
  store <2 x i64> %i.aj, ptr %i.ai, align 8, !tbaa !57
  %i.ak = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -96
  %i.al = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -96
  %i.am = load <2 x i64>, ptr %i.ak, align 8, !tbaa !57
  store <2 x i64> %i.am, ptr %i.al, align 8, !tbaa !57
  %i.an = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -112
  %i.ao = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -112
  %i.ap = load <2 x i64>, ptr %i.an, align 8, !tbaa !57
  store <2 x i64> %i.ap, ptr %i.ao, align 8, !tbaa !57
  %i.aq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -128 ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -128 ; 2 uses
  %i.as = load <2 x i64>, ptr %i.aq, align 8, !tbaa !57
  store <2 x i64> %i.as, ptr %i.ar, align 8, !tbaa !57
  %i.at = add nsw i64 %.010.i.i.i.i.i.i.i, -8
  %i.au = icmp sgt i64 %.010.i.i.i.i.i.i.i, 8
  br i1 %i.au, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt13move_backwardIPSt4pairIN4mlir5ValueElES4_ET0_T_S6_S5_.exit.i.i, !llvm.loop !0

_ZSt13move_backwardIPSt4pairIN4mlir5ValueElES4_ET0_T_S6_S5_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.b
  store <2 x i64> %i.j, ptr %.039.i, align 8, !tbaa !57
  br label %"_ZSt25__unguarded_linear_insertIPSt4pairIN4mlir5ValueElEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_6affine27lowerAffineLinearizeIndexOpERNS1_12RewriterBaseENS8_22AffineLinearizeIndexOpEE3$_0EEEvT_T0_.exit.i.i"

"_ZSt25__unguarded_linear_insertIPSt4pairIN4mlir5ValueElEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_6affine27lowerAffineLinearizeIndexOpERNS1_12RewriterBaseENS8_22AffineLinearizeIndexOpEE3$_0EEEvT_T0_.exit.i.i": ; preds = %.lr.ph.i, %_ZSt13move_backwardIPSt4pairIN4mlir5ValueElES4_ET0_T_S6_S5_.exit.i.i
  %.val23.i.i = phi i64 [ %.0.val.i.i, %_ZSt13move_backwardIPSt4pairIN4mlir5ValueElES4_ET0_T_S6_S5_.exit.i.i ], [ %.val.pre21.i.i, %.lr.ph.i ]
  %.019.i.ptr.1.i = getelementptr inbounds nuw i8, ptr %.039.i, i64 32 ; 6 uses
  %i.av = getelementptr i8, ptr %.039.i, i64 40   ; 2 uses
  %.0.val.i.1.i = load i64, ptr %i.av, align 8    ; 6 uses
  %i.aw = icmp sgt i64 %.0.val.i.1.i, %.val23.i.i
  %.sroa.0.0.copyload.i.1.i = load i64, ptr %.019.i.ptr.1.i, align 8 ; 2 uses
  br i1 %i.aw, label %bb.d, label %bb.c

bb.c:                                             ; preds = %"_ZSt25__unguarded_linear_insertIPSt4pairIN4mlir5ValueElEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_6affine27lowerAffineLinearizeIndexOpERNS1_12RewriterBaseENS8_22AffineLinearizeIndexOpEE3$_0EEEvT_T0_.exit.i.i"
  %.0.val11.i.i.1.i = load i64, ptr %i.i, align 8 ; 2 uses
  %i.ax = icmp sgt i64 %.0.val.i.1.i, %.0.val11.i.i.1.i
  br i1 %i.ax, label %.lr.ph.i.i.1.i, label %"_ZSt25__unguarded_linear_insertIPSt4pairIN4mlir5ValueElEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_6affine27lowerAffineLinearizeIndexOpERNS1_12RewriterBaseENS8_22AffineLinearizeIndexOpEE3$_0EEEvT_T0_.exit.i.1.i"

.lr.ph.i.i.1.i:                                   ; preds = %bb.c, %.lr.ph.i.i.1.i
  %.0.val13.i.i.1.i = phi i64 [ %.0.val.i.i.1.i, %.lr.ph.i.i.1.i ], [ %.0.val11.i.i.1.i, %bb.c ]
  %.0912.i.i.1.i = phi ptr [ %.0.i.i.1.i, %.lr.ph.i.i.1.i ], [ %.019.i.ptr.1.i, %bb.c ] ; 4 uses
  %.0.i.i.1.i = getelementptr inbounds i8, ptr %.0912.i.i.1.i, i64 -16 ; 3 uses
  %i.ay = load i64, ptr %.0.i.i.1.i, align 8, !tbaa !21
  store i64 %i.ay, ptr %.0912.i.i.1.i, align 8, !tbaa !21
  %i.az = getelementptr inbounds nuw i8, ptr %.0912.i.i.1.i, i64 8
  store i64 %.0.val13.i.i.1.i, ptr %i.az, align 8, !tbaa !55
  %i.ba = getelementptr i8, ptr %.0912.i.i.1.i, i64 -24
  %.0.val.i.i.1.i = load i64, ptr %i.ba, align 8  ; 2 uses
  %i.bb = icmp sgt i64 %.0.val.i.1.i, %.0.val.i.i.1.i
  br i1 %i.bb, label %.lr.ph.i.i.1.i, label %"_ZSt25__unguarded_linear_insertIPSt4pairIN4mlir5ValueElEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_6affine27lowerAffineLinearizeIndexOpERNS1_12RewriterBaseENS8_22AffineLinearizeIndexOpEE3$_0EEEvT_T0_.exit.i.1.i", !llvm.loop !1

"_ZSt25__unguarded_linear_insertIPSt4pairIN4mlir5ValueElEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_6affine27lowerAffineLinearizeIndexOpERNS1_12RewriterBaseENS8_22AffineLinearizeIndexOpEE3$_0EEEvT_T0_.exit.i.1.i": ; preds = %.lr.ph.i.i.1.i, %bb.c
  %.09.lcssa.i.i.1.i = phi ptr [ %.019.i.ptr.1.i, %bb.c ], [ %.0.i.i.1.i, %.lr.ph.i.i.1.i ] ; 2 uses
  store i64 %.sroa.0.0.copyload.i.1.i, ptr %.09.lcssa.i.i.1.i, align 8, !tbaa !21
  %i.bc = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.1.i, i64 8
  store i64 %.0.val.i.1.i, ptr %i.bc, align 8, !tbaa !55
  %.val.pre.i.1.i = load i64, ptr %i.h, align 8
  br label %bb.e

bb.d:                                             ; preds = %"_ZSt25__unguarded_linear_insertIPSt4pairIN4mlir5ValueElEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_6affine27lowerAffineLinearizeIndexOpERNS1_12RewriterBaseENS8_22AffineLinearizeIndexOpEE3$_0EEEvT_T0_.exit.i.i"
  %i.bd = ptrtoint ptr %.019.i.ptr.1.i to i64
  %i.be = sub i64 %i.bd, %i.g
  %i.bf = ashr exact i64 %i.be, 4                 ; 5 uses
  %i.bg = icmp sgt i64 %i.bf, 0
  br i1 %i.bg, label %.lr.ph.i.i.i.i.i.preheader.i.1.i, label %_ZSt13move_backwardIPSt4pairIN4mlir5ValueElES4_ET0_T_S6_S5_.exit.i.1.i

.lr.ph.i.i.i.i.i.preheader.i.1.i:                 ; preds = %bb.d
  %i.bh = getelementptr inbounds nuw i8, ptr %.039.i, i64 48 ; 2 uses
  %xtraiter37 = and i64 %i.bf, 7                  ; 2 uses
  %lcmp.mod38.not = icmp eq i64 %xtraiter37, 0
  br i1 %lcmp.mod38.not, label %.lr.ph.i.i.i.i.i.i.1.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.1.i.prol

.lr.ph.i.i.i.i.i.i.1.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.preheader.i.1.i, %.lr.ph.i.i.i.i.i.i.1.i.prol
  %.010.i.i.i.i.i.i.1.i.prol = phi i64 [ %i.bl, %.lr.ph.i.i.i.i.i.i.1.i.prol ], [ %i.bf, %.lr.ph.i.i.i.i.i.preheader.i.1.i ]
  %.069.i.i.i.i.i.i.1.i.prol = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i.i.1.i.prol ], [ %i.bh, %.lr.ph.i.i.i.i.i.preheader.i.1.i ]
  %.078.i.i.i.i.i.i.1.i.prol = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i.i.1.i.prol ], [ %.019.i.ptr.1.i, %.lr.ph.i.i.i.i.i.preheader.i.1.i ]
  %prol.iter39 = phi i64 [ %prol.iter39.next, %.lr.ph.i.i.i.i.i.i.1.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.1.i ]
  %i.bi = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.1.i.prol, i64 -16 ; 3 uses
  %i.bj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.1.i.prol, i64 -16 ; 3 uses
  %i.bk = load <2 x i64>, ptr %i.bi, align 8, !tbaa !57
  store <2 x i64> %i.bk, ptr %i.bj, align 8, !tbaa !57
  %i.bl = add nsw i64 %.010.i.i.i.i.i.i.1.i.prol, -1 ; 2 uses
  %prol.iter39.next = add i64 %prol.iter39, 1     ; 2 uses
  %prol.iter39.cmp.not = icmp eq i64 %prol.iter39.next, %xtraiter37
  br i1 %prol.iter39.cmp.not, label %.lr.ph.i.i.i.i.i.i.1.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.1.i.prol, !llvm.loop !183

.lr.ph.i.i.i.i.i.i.1.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.1.i.prol, %.lr.ph.i.i.i.i.i.preheader.i.1.i
  %.010.i.i.i.i.i.i.1.i.unr = phi i64 [ %i.bf, %.lr.ph.i.i.i.i.i.preheader.i.1.i ], [ %i.bl, %.lr.ph.i.i.i.i.i.i.1.i.prol ]
  %.069.i.i.i.i.i.i.1.i.unr = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i.preheader.i.1.i ], [ %i.bj, %.lr.ph.i.i.i.i.i.i.1.i.prol ]
  %.078.i.i.i.i.i.i.1.i.unr = phi ptr [ %.019.i.ptr.1.i, %.lr.ph.i.i.i.i.i.preheader.i.1.i ], [ %i.bi, %.lr.ph.i.i.i.i.i.i.1.i.prol ]
  %i.bm = icmp ult i64 %i.bf, 8
  br i1 %i.bm, label %_ZSt13move_backwardIPSt4pairIN4mlir5ValueElES4_ET0_T_S6_S5_.exit.i.1.i, label %.lr.ph.i.i.i.i.i.i.1.i

.lr.ph.i.i.i.i.i.i.1.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.1.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.1.i
  %.010.i.i.i.i.i.i.1.i = phi i64 [ %i.cl, %.lr.ph.i.i.i.i.i.i.1.i ], [ %.010.i.i.i.i.i.i.1.i.unr, %.lr.ph.i.i.i.i.i.i.1.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.1.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i.i.1.i ], [ %.069.i.i.i.i.i.i.1.i.unr, %.lr.ph.i.i.i.i.i.i.1.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.1.i = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i.i.1.i ], [ %.078.i.i.i.i.i.i.1.i.unr, %.lr.ph.i.i.i.i.i.i.1.i.prol.loopexit ] ; 8 uses
  %i.bn = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.1.i, i64 -16
  %i.bo = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.1.i, i64 -16
  %i.bp = load <2 x i64>, ptr %i.bn, align 8, !tbaa !57
  store <2 x i64> %i.bp, ptr %i.bo, align 8, !tbaa !57
  %i.bq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.1.i, i64 -32
  %i.br = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.1.i, i64 -32
  %i.bs = load <2 x i64>, ptr %i.bq, align 8, !tbaa !57
  store <2 x i64> %i.bs, ptr %i.br, align 8, !tbaa !57
  %i.bt = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.1.i, i64 -48
  %i.bu = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.1.i, i64 -48
  %i.bv = load <2 x i64>, ptr %i.bt, align 8, !tbaa !57
  store <2 x i64> %i.bv, ptr %i.bu, align 8, !tbaa !57
  %i.bw = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.1.i, i64 -64
  %i.bx = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.1.i, i64 -64
  %i.by = load <2 x i64>, ptr %i.bw, align 8, !tbaa !57
  store <2 x i64> %i.by, ptr %i.bx, align 8, !tbaa !57
  %i.bz = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.1.i, i64 -80
  %i.ca = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.1.i, i64 -80
  %i.cb = load <2 x i64>, ptr %i.bz, align 8, !tbaa !57
  store <2 x i64> %i.cb, ptr %i.ca, align 8, !tbaa !57
  %i.cc = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.1.i, i64 -96
  %i.cd = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.1.i, i64 -96
  %i.ce = load <2 x i64>, ptr %i.cc, align 8, !tbaa !57
  store <2 x i64> %i.ce, ptr %i.cd, align 8, !tbaa !57
  %i.cf = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.1.i, i64 -112
  %i.cg = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.1.i, i64 -112
  %i.ch = load <2 x i64>, ptr %i.cf, align 8, !tbaa !57
  store <2 x i64> %i.ch, ptr %i.cg, align 8, !tbaa !57
  %i.ci = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.1.i, i64 -128 ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.1.i, i64 -128 ; 2 uses
  %i.ck = load <2 x i64>, ptr %i.ci, align 8, !tbaa !57
  store <2 x i64> %i.ck, ptr %i.cj, align 8, !tbaa !57
  %i.cl = add nsw i64 %.010.i.i.i.i.i.i.1.i, -8
  %i.cm = icmp sgt i64 %.010.i.i.i.i.i.i.1.i, 8
  br i1 %i.cm, label %.lr.ph.i.i.i.i.i.i.1.i, label %_ZSt13move_backwardIPSt4pairIN4mlir5ValueElES4_ET0_T_S6_S5_.exit.i.1.i, !llvm.loop !0

_ZSt13move_backwardIPSt4pairIN4mlir5ValueElES4_ET0_T_S6_S5_.exit.i.1.i: ; preds = %.lr.ph.i.i.i.i.i.i.1.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.1.i, %bb.d
  store i64 %.sroa.0.0.copyload.i.1.i, ptr %.039.i, align 8, !tbaa !21
  store i64 %.0.val.i.1.i, ptr %i.h, align 8, !tbaa !55
  br label %bb.e

bb.e:                                             ; preds = %_ZSt13move_backwardIPSt4pairIN4mlir5ValueElES4_ET0_T_S6_S5_.exit.i.1.i, %"_ZSt25__unguarded_linear_insertIPSt4pairIN4mlir5ValueElEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_6affine27lowerAffineLinearizeIndexOpERNS1_12RewriterBaseENS8_22AffineLinearizeIndexOpEE3$_0EEEvT_T0_.exit.i.1.i"
  %.val23.i.1.i = phi i64 [ %.0.val.i.1.i, %_ZSt13move_backwardIPSt4pairIN4mlir5ValueElES4_ET0_T_S6_S5_.exit.i.1.i ], [ %.val.pre.i.1.i, %"_ZSt25__unguarded_linear_insertIPSt4pairIN4mlir5ValueElEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_6affine27lowerAffineLinearizeIndexOpERNS1_12RewriterBaseENS8_22AffineLinearizeIndexOpEE3$_0EEEvT_T0_.exit.i.1.i" ]
  %.019.i.ptr.2.i = getelementptr inbounds nuw i8, ptr %.039.i, i64 48 ; 6 uses
  %i.cn = getelementptr i8, ptr %.039.i, i64 56   ; 2 uses
  %.0.val.i.2.i = load i64, ptr %i.cn, align 8    ; 6 uses
  %i.co = icmp sgt i64 %.0.val.i.2.i, %.val23.i.1.i
  %.sroa.0.0.copyload.i.2.i = load i64, ptr %.019.i.ptr.2.i, align 8 ; 2 uses
  br i1 %i.co, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.0.val11.i.i.2.i = load i64, ptr %i.av, align 8 ; 2 uses
  %i.cp = icmp sgt i64 %.0.val.i.2.i, %.0.val11.i.i.2.i
  br i1 %i.cp, label %.lr.ph.i.i.2.i, label %"_ZSt25__unguarded_linear_insertIPSt4pairIN4mlir5ValueElEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_6affine27lowerAffineLinearizeIndexOpERNS1_12RewriterBaseENS8_22AffineLinearizeIndexOpEE3$_0EEEvT_T0_.exit.i.2.i"

.lr.ph.i.i.2.i:                                   ; preds = %bb.f, %.lr.ph.i.i.2.i
  %.0.val13.i.i.2.i = phi i64 [ %.0.val.i.i.2.i, %.lr.ph.i.i.2.i ], [ %.0.val11.i.i.2.i, %bb.f ]
  %.0912.i.i.2.i = phi ptr [ %.0.i.i.2.i, %.lr.ph.i.i.2.i ], [ %.019.i.ptr.2.i, %bb.f ] ; 4 uses
  %.0.i.i.2.i = getelementptr inbounds i8, ptr %.0912.i.i.2.i, i64 -16 ; 3 uses
  %i.cq = load i64, ptr %.0.i.i.2.i, align 8, !tbaa !21
  store i64 %i.cq, ptr %.0912.i.i.2.i, align 8, !tbaa !21
  %i.cr = getelementptr inbounds nuw i8, ptr %.0912.i.i.2.i, i64 8
  store i64 %.0.val13.i.i.2.i, ptr %i.cr, align 8, !tbaa !55
  %i.cs = getelementptr i8, ptr %.0912.i.i.2.i, i64 -24
  %.0.val.i.i.2.i = load i64, ptr %i.cs, align 8  ; 2 uses
  %i.ct = icmp sgt i64 %.0.val.i.2.i, %.0.val.i.i.2.i
  br i1 %i.ct, label %.lr.ph.i.i.2.i, label %"_ZSt25__unguarded_linear_insertIPSt4pairIN4mlir5ValueElEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_6affine27lowerAffineLinearizeIndexOpERNS1_12RewriterBaseENS8_22AffineLinearizeIndexOpEE3$_0EEEvT_T0_.exit.i.2.i", !llvm.loop !1

"_ZSt25__unguarded_linear_insertIPSt4pairIN4mlir5ValueElEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_6affine27lowerAffineLinearizeIndexOpERNS1_12RewriterBaseENS8_22AffineLinearizeIndexOpEE3$_0EEEvT_T0_.exit.i.2.i": ; preds = %.lr.ph.i.i.2.i, %bb.f
  %.09.lcssa.i.i.2.i = phi ptr [ %.019.i.ptr.2.i, %bb.f ], [ %.0.i.i.2.i, %.lr.ph.i.i.2.i ] ; 2 uses
  store i64 %.sroa.0.0.copyload.i.2.i, ptr %.09.lcssa.i.i.2.i, align 8, !tbaa !21
  %i.cu = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.2.i, i64 8
  store i64 %.0.val.i.2.i, ptr %i.cu, align 8, !tbaa !55
  %.val.pre.i.2.i = load i64, ptr %i.h, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.cv = ptrtoint ptr %.019.i.ptr.2.i to i64
  %i.cw = sub i64 %i.cv, %i.g
  %i.cx = ashr exact i64 %i.cw, 4                 ; 5 uses
  %i.cy = icmp sgt i64 %i.cx, 0
  br i1 %i.cy, label %.lr.ph.i.i.i.i.i.preheader.i.2.i, label %_ZSt13move_backwardIPSt4pairIN4mlir5ValueElES4_ET0_T_S6_S5_.exit.i.2.i

.lr.ph.i.i.i.i.i.preheader.i.2.i:                 ; preds = %bb.g
  %i.cz = getelementptr inbounds nuw i8, ptr %.039.i, i64 64 ; 2 uses
  %xtraiter40 = and i64 %i.cx, 7                  ; 2 uses
  %lcmp.mod41.not = icmp eq i64 %xtraiter40, 0
  br i1 %lcmp.mod41.not, label %.lr.ph.i.i.i.i.i.i.2.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.2.i.prol

.lr.ph.i.i.i.i.i.i.2.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.preheader.i.2.i, %.lr.ph.i.i.i.i.i.i.2.i.prol
  %.010.i.i.i.i.i.i.2.i.prol = phi i64 [ %i.dd, %.lr.ph.i.i.i.i.i.i.2.i.prol ], [ %i.cx, %.lr.ph.i.i.i.i.i.preheader.i.2.i ]
  %.069.i.i.i.i.i.i.2.i.prol = phi ptr [ %i.db, %.lr.ph.i.i.i.i.i.i.2.i.prol ], [ %i.cz, %.lr.ph.i.i.i.i.i.preheader.i.2.i ]
  %.078.i.i.i.i.i.i.2.i.prol = phi ptr [ %i.da, %.lr.ph.i.i.i.i.i.i.2.i.prol ], [ %.019.i.ptr.2.i, %.lr.ph.i.i.i.i.i.preheader.i.2.i ]
  %prol.iter42 = phi i64 [ %prol.iter42.next, %.lr.ph.i.i.i.i.i.i.2.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.2.i ]
  %i.da = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.2.i.prol, i64 -16 ; 3 uses
  %i.db = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.2.i.prol, i64 -16 ; 3 uses
  %i.dc = load <2 x i64>, ptr %i.da, align 8, !tbaa !57
  store <2 x i64> %i.dc, ptr %i.db, align 8, !tbaa !57
  %i.dd = add nsw i64 %.010.i.i.i.i.i.i.2.i.prol, -1 ; 2 uses
  %prol.iter42.next = add i64 %prol.iter42, 1     ; 2 uses
  %prol.iter42.cmp.not = icmp eq i64 %prol.iter42.next, %xtraiter40
  br i1 %prol.iter42.cmp.not, label %.lr.ph.i.i.i.i.i.i.2.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.2.i.prol, !llvm.loop !184

.lr.ph.i.i.i.i.i.i.2.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.2.i.prol, %.lr.ph.i.i.i.i.i.preheader.i.2.i
  %.010.i.i.i.i.i.i.2.i.unr = phi i64 [ %i.cx, %.lr.ph.i.i.i.i.i.preheader.i.2.i ], [ %i.dd, %.lr.ph.i.i.i.i.i.i.2.i.prol ]
  %.069.i.i.i.i.i.i.2.i.unr = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i.preheader.i.2.i ], [ %i.db, %.lr.ph.i.i.i.i.i.i.2.i.prol ]
  %.078.i.i.i.i.i.i.2.i.unr = phi ptr [ %.019.i.ptr.2.i, %.lr.ph.i.i.i.i.i.preheader.i.2.i ], [ %i.da, %.lr.ph.i.i.i.i.i.i.2.i.prol ]
  %i.de = icmp ult i64 %i.cx, 8
  br i1 %i.de, label %_ZSt13move_backwardIPSt4pairIN4mlir5ValueElES4_ET0_T_S6_S5_.exit.i.2.i, label %.lr.ph.i.i.i.i.i.i.2.i

.lr.ph.i.i.i.i.i.i.2.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.2.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.2.i
  %.010.i.i.i.i.i.i.2.i = phi i64 [ %i.ed, %.lr.ph.i.i.i.i.i.i.2.i ], [ %.010.i.i.i.i.i.i.2.i.unr, %.lr.ph.i.i.i.i.i.i.2.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.2.i = phi ptr [ %i.eb, %.lr.ph.i.i.i.i.i.i.2.i ], [ %.069.i.i.i.i.i.i.2.i.unr, %.lr.ph.i.i.i.i.i.i.2.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.2.i = phi ptr [ %i.ea, %.lr.ph.i.i.i.i.i.i.2.i ], [ %.078.i.i.i.i.i.i.2.i.unr, %.lr.ph.i.i.i.i.i.i.2.i.prol.loopexit ] ; 8 uses
  %i.df = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.2.i, i64 -16
  %i.dg = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.2.i, i64 -16
  %i.dh = load <2 x i64>, ptr %i.df, align 8, !tbaa !57
  store <2 x i64> %i.dh, ptr %i.dg, align 8, !tbaa !57
  %i.di = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.2.i, i64 -32
  %i.dj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.2.i, i64 -32
  %i.dk = load <2 x i64>, ptr %i.di, align 8, !tbaa !57
  store <2 x i64> %i.dk, ptr %i.dj, align 8, !tbaa !57
  %i.dl = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.2.i, i64 -48
  %i.dm = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.2.i, i64 -48
  %i.dn = load <2 x i64>, ptr %i.dl, align 8, !tbaa !57
  store <2 x i64> %i.dn, ptr %i.dm, align 8, !tbaa !57
  %i.do = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.2.i, i64 -64
  %i.dp = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.2.i, i64 -64
end_hunk_0
