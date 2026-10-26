Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonISelDAGToDAGHVX?download=true
inline.NumInlined: 4949
inline.NumDeleted: 1897
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN4llvm15SmallVectorImplIjE6appendINS_28const_set_bits_iterator_implINS_9BitVectorEEEvEEvT_S6_:bb.a
  %i.y = select i1 %i.x, i64 %i.h, i64 -1
  %spec.select44.peel.i.i.i.i.i = and i64 %i.w, %i.y
  %.230.peel.i.i.i.i.i = and i64 %spec.select44.peel.i.i.i.i.i, %i.v ; 2 uses
  %.not37.peel.i.i.i.i.i = icmp eq i64 %.230.peel.i.i.i.i.i, 0
  br i1 %.not37.peel.i.i.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %indvars.iv.next.peel.i.i.i.i.i = add nuw nsw i64 %i.t, 1 ; 2 uses
  %exitcond.peel.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.peel.i.i.i.i.i, %wide.trip.count.i.i.i.i.i
  br i1 %exitcond.peel.not.i.i.i.i.i, label %_ZN4llvm28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit.i, label %.peel.next.i.i.i.i.i

.peel.next.i.i.i.i.i:                             ; preds = %bb.d, %bb.f
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %bb.f ], [ %indvars.iv.next.peel.i.i.i.i.i, %bb.d ] ; 4 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i.i.i.i.i
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !250
  %i.ab = icmp eq i64 %indvars.iv.i.i.i.i.i, %i.i
  %i.ac = select i1 %i.ab, i64 %i.h, i64 -1
  %.230.i.i.i.i.i = and i64 %i.ac, %i.aa          ; 2 uses
  %.not37.i.i.i.i.i = icmp eq i64 %.230.i.i.i.i.i, 0
  br i1 %.not37.i.i.i.i.i, label %bb.f, label %.loopexit48.i.i.i.i.i

.loopexit48.i.i.i.i.i:                            ; preds = %.peel.next.i.i.i.i.i
  %.pre.i.i.i.i.i = trunc nuw nsw i64 %indvars.iv.i.i.i.i.i to i32
  br label %bb.e

bb.e:                                             ; preds = %.loopexit48.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.pre-phi.i.i.i.i.i = phi i32 [ %.pre.i.i.i.i.i, %.loopexit48.i.i.i.i.i ], [ %i.m, %.lr.ph.i.i.i.i.i ]
  %.230.lcssa.i.i.i.i.i = phi i64 [ %.230.i.i.i.i.i, %.loopexit48.i.i.i.i.i ], [ %.230.peel.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.ad = shl nuw i32 %.pre-phi.i.i.i.i.i, 6
  %i.ae = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.230.lcssa.i.i.i.i.i, i1 true)
  %i.af = trunc nuw nsw i64 %i.ae to i32
  %i.ag = or disjoint i32 %i.ad, %i.af
  br label %_ZN4llvm28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit.i

bb.f:                                             ; preds = %.peel.next.i.i.i.i.i
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, %wide.trip.count.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN4llvm28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit.i, label %.peel.next.i.i.i.i.i, !llvm.loop !9

_ZN4llvm28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.4.i.i.i.i.i = phi i32 [ -1, %bb.b ], [ %i.ag, %bb.e ], [ -1, %bb.c ], [ -1, %bb.d ], [ -1, %bb.f ] ; 2 uses
  %i.ah = add nuw nsw i64 %.08.i, 1               ; 2 uses
  %.not.i = icmp eq i32 %.4.i.i.i.i.i, %4
  br i1 %.not.i, label %_ZSt10__distanceIN4llvm28const_set_bits_iterator_implINS0_9BitVectorEEEENSt15iterator_traitsIT_E15difference_typeES5_S5_St18input_iterator_tag.exit, label %bb.b, !llvm.loop !10

_ZSt10__distanceIN4llvm28const_set_bits_iterator_implINS0_9BitVectorEEEENSt15iterator_traitsIT_E15difference_typeES5_S5_St18input_iterator_tag.exit: ; preds = %_ZN4llvm28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit.i, %bb.a
  %.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.ah, %_ZN4llvm28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !32 ; 2 uses
  %i.ak = zext i32 %i.aj to i64
  %i.al = add i64 %.0.lcssa.i, %i.ak              ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.an = load i32, ptr %i.am, align 4, !tbaa !33
  %i.ao = zext i32 %i.an to i64
  %i.ap = icmp ugt i64 %i.al, %i.ao
  br i1 %i.ap, label %bb.g, label %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit

bb.g:                                             ; preds = %_ZSt10__distanceIN4llvm28const_set_bits_iterator_implINS0_9BitVectorEEEENSt15iterator_traitsIT_E15difference_typeES5_S5_St18input_iterator_tag.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.aq, i64 noundef %i.al, i64 noundef 4) #23
  %.pre37.pre = load i32, ptr %i.ai, align 8, !tbaa !32
  br label %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit

_ZN4llvm15SmallVectorImplIjE7reserveEm.exit:      ; preds = %_ZSt10__distanceIN4llvm28const_set_bits_iterator_implINS0_9BitVectorEEEENSt15iterator_traitsIT_E15difference_typeES5_S5_St18input_iterator_tag.exit, %bb.g
  %.pre37 = phi i32 [ %i.aj, %_ZSt10__distanceIN4llvm28const_set_bits_iterator_implINS0_9BitVectorEEEENSt15iterator_traitsIT_E15difference_typeES5_S5_St18input_iterator_tag.exit ], [ %.pre37.pre, %bb.g ] ; 2 uses
  br i1 %.not6.i, label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_copyINS_28const_set_bits_iterator_implINS_9BitVectorEEEPjEEvT_S7_T0_.exit, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit
  %i.ar = load ptr, ptr %0, align 8, !tbaa !31
  %i.as = zext i32 %.pre37 to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.h

bb.h:                                             ; preds = %_ZN4llvm28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.010.i.i.i.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.av, %_ZN4llvm28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.2.09.i.i.i.i.i.i.i.i = phi i32 [ %2, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.4.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4llvm28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  store i32 %.sroa.2.09.i.i.i.i.i.i.i.i, ptr %.010.i.i.i.i.i.i.i.i, align 4, !tbaa !34
  %i.av = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i.i.i, i64 4
  %i.aw = add i32 %.sroa.2.09.i.i.i.i.i.i.i.i, 1  ; 3 uses
  %i.ax = load i32, ptr %i.au, align 8, !tbaa !546 ; 2 uses
  %i.ay = icmp eq i32 %i.aw, %i.ax
  br i1 %i.ay, label %_ZN4llvm28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit.i.i.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = lshr i32 %i.aw, 6                       ; 4 uses
  %i.ba = add i32 %i.ax, -1                       ; 2 uses
  %i.bb = lshr i32 %i.ba, 6                       ; 4 uses
  %.not42.i.i.i.i.i.i.i.i.i.i.i.i = icmp samesign ugt i32 %i.az, %i.bb
  br i1 %.not42.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.i
  %i.bc = load ptr, ptr %1, align 8, !tbaa !31    ; 2 uses
  %i.bd = and i32 %i.aw, 63                       ; 2 uses
  %i.be = sub nuw nsw i32 64, %i.bd
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bd, 0
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = lshr i64 -1, %i.bf
  %i.bh = xor i64 %i.bg, -1
  %i.bi = and i32 %i.ba, 63
  %i.bj = xor i32 %i.bi, 63
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = lshr i64 -1, %i.bk                      ; 2 uses
  %i.bm = zext nneg i32 %i.az to i64              ; 2 uses
  %i.bn = zext nneg i32 %i.bb to i64
  %i.bo = add nuw nsw i32 %i.bb, 1
  %wide.trip.count.i.i.i.i.i.i.i.i.i.i.i.i = zext nneg i32 %i.bo to i64 ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bm
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !250
  %i.br = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i, i64 -1, i64 %i.bh
  %i.bs = icmp eq i32 %i.az, %i.bb
  %i.bt = select i1 %i.bs, i64 %i.bl, i64 -1
  %spec.select44.peel.i.i.i.i.i.i.i.i.i.i.i.i = and i64 %i.bt, %i.br
  %.230.peel.i.i.i.i.i.i.i.i.i.i.i.i = and i64 %spec.select44.peel.i.i.i.i.i.i.i.i.i.i.i.i, %i.bq ; 2 uses
  %.not37.peel.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.230.peel.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not37.peel.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %indvars.iv.next.peel.i.i.i.i.i.i.i.i.i.i.i.i = add nuw nsw i64 %i.bm, 1 ; 2 uses
  %exitcond.peel.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.peel.i.i.i.i.i.i.i.i.i.i.i.i, %wide.trip.count.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.peel.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit.i.i.i.i.i.i.i.i, label %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i

.peel.next.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.j, %bb.l
  %indvars.iv.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i.i, %bb.l ], [ %indvars.iv.next.peel.i.i.i.i.i.i.i.i.i.i.i.i, %bb.j ] ; 4 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !250
  %i.bw = icmp eq i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i.i, %i.bn
  %i.bx = select i1 %i.bw, i64 %i.bl, i64 -1
  %.230.i.i.i.i.i.i.i.i.i.i.i.i = and i64 %i.bx, %i.bv ; 2 uses
  %.not37.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.230.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not37.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.l, label %.loopexit48.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit48.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i = trunc nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i.i to i32
  br label %bb.k

bb.k:                                             ; preds = %.loopexit48.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit48.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.az, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.230.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.230.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit48.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.230.peel.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.by = shl nuw i32 %.pre-phi.i.i.i.i.i.i.i.i.i.i.i.i, 6
  %i.bz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.230.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.ca = trunc nuw nsw i64 %i.bz to i32
  %i.cb = or disjoint i32 %i.by, %i.ca
  br label %_ZN4llvm28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i
  %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i.i, %wide.trip.count.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit.i.i.i.i.i.i.i.i, label %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !9

_ZN4llvm28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %.4.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ -1, %bb.h ], [ %i.cb, %bb.k ], [ -1, %bb.i ], [ -1, %bb.j ], [ -1, %bb.l ] ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %.4.i.i.i.i.i.i.i.i.i.i.i.i, %4
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_copyINS_28const_set_bits_iterator_implINS_9BitVectorEEEPjEEvT_S7_T0_.exit.loopexit, label %bb.h, !llvm.loop !11

_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_copyINS_28const_set_bits_iterator_implINS_9BitVectorEEEPjEEvT_S7_T0_.exit.loopexit: ; preds = %_ZN4llvm28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit.i.i.i.i.i.i.i.i
  %.pre = load i32, ptr %i.ai, align 8, !tbaa !32
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_copyINS_28const_set_bits_iterator_implINS_9BitVectorEEEPjEEvT_S7_T0_.exit

_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_copyINS_28const_set_bits_iterator_implINS_9BitVectorEEEPjEEvT_S7_T0_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_copyINS_28const_set_bits_iterator_implINS_9BitVectorEEEPjEEvT_S7_T0_.exit.loopexit, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit
  %i.cc = phi i32 [ %.pre, %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_copyINS_28const_set_bits_iterator_implINS_9BitVectorEEEPjEEvT_S7_T0_.exit.loopexit ], [ %.pre37, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit ]
  %i.cd = trunc i64 %.0.lcssa.i to i32
  %i.ce = add i32 %i.cc, %i.cd
  store i32 %i.ce, ptr %i.ai, align 8, !tbaa !32
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #11

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4llvm11HvxSelector7perfectEN12_GLOBAL__N_111ShuffleMaskENS1_5OpRefERNS1_11ResultStackE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(36) %1, ptr nofree noundef byval(%"struct.(anonymous namespace)::ShuffleMask") align 8 captures(none) %2, ptr nofree noundef readonly byval(%"struct.(anonymous namespace)::OpRef") align 8 captures(none) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %4) unnamed_addr #1 align 2 {
bb.a:
  %5 = alloca %"struct.(anonymous namespace)::NodeTemplate", align 8 ; 8 uses
  %6 = alloca %"struct.(anonymous namespace)::NodeTemplate", align 8 ; 8 uses
  %7 = alloca %"class.llvm::SmallVector.262", align 8 ; 19 uses
  %8 = alloca %"class.llvm::SmallVector.130", align 8 ; 11 uses
  %9 = alloca %"class.llvm::SmallVector.130", align 8 ; 13 uses
  %10 = alloca %"class.llvm::SmallVector", align 8 ; 10 uses
  %11 = alloca %"class.llvm::SmallVector.130", align 8 ; 14 uses
  %12 = alloca %"class.llvm::SmallVector.130", align 8 ; 16 uses
  %13 = alloca %"class.std::set.238", align 8     ; 9 uses
  %14 = alloca %"class.std::set.244", align 8     ; 10 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %15 = alloca %"class.llvm::SmallVector.130", align 8 ; 12 uses
  %16 = alloca %"class.llvm::SmallVector.130", align 8 ; 15 uses
  %17 = alloca %"class.llvm::SmallVector.130", align 8 ; 14 uses
  %18 = alloca %"class.llvm::SDLoc", align 8      ; 8 uses
  %19 = alloca %"struct.(anonymous namespace)::OpRef", align 8 ; 11 uses
  %20 = alloca %"struct.(anonymous namespace)::OpRef", align 8 ; 3 uses
  %21 = alloca %"struct.(anonymous namespace)::OpRef", align 8 ; 4 uses
  %22 = alloca %"struct.(anonymous namespace)::OpRef", align 8 ; 3 uses
  %23 = alloca %"struct.(anonymous namespace)::OpRef", align 8 ; 3 uses
  %24 = alloca %"struct.(anonymous namespace)::NodeTemplate", align 8 ; 8 uses
  %.sroa.0 = alloca %"class.llvm::SDValue", align 8 ; 4 uses
  %.sroa.5 = alloca [20 x i8], align 4            ; 4 uses
  %.sroa.7 = alloca [20 x i8], align 4            ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !302  ; 10 uses
  %i.d = trunc i64 %i.c to i32                    ; 4 uses
  %i.e = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.d, i1 false) ; 12 uses
  %i.f = sub nsw i32 31, %i.e                     ; 17 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 8 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !243
  %i.i = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.h, i1 false) ; 3 uses
  %i.j = sub nuw nsw i32 32, %i.i
  %i.k = icmp eq i32 %i.f, %i.j                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.l = zext i32 %i.f to i64                     ; 15 uses
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr %i.m, ptr %9, align 8, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  store i32 0, ptr %i.n, align 8, !tbaa !32
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 8, ptr %i.o, align 4, !tbaa !33
  %i.p = icmp eq i32 %i.e, 31                     ; 2 uses
  br i1 %i.p, label %_ZN4llvm11SmallVectorIjLj8EEC2Em.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = icmp ugt i32 %i.f, 8
  br i1 %i.q, label %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i, label %.lr.ph.preheader.i.i.i

_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i: ; preds = %bb.b
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull %i.m, i64 noundef %i.l, i64 noundef 4) #23
  %.pre.i.i.i = load i32, ptr %i.n, align 8, !tbaa !32 ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.f, %.pre.i.i.i
  br i1 %.not11.i.i.i, label %.sink.split.i.i.i, label %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i

_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i: ; preds = %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i
  %.pre13.i.i.i = zext i32 %.pre.i.i.i to i64
  %.pre.i = load ptr, ptr %9, align 8, !tbaa !31
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i, %bb.b
  %i.r = phi ptr [ %.pre.i, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i ], [ %i.m, %bb.b ]
  %.pre-phi.i.i3.i = phi i64 [ %.pre13.i.i.i, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i ], [ 0, %bb.b ] ; 2 uses
  %i.s = getelementptr [4 x i8], ptr %i.r, i64 %.pre-phi.i.i3.i
  %i.t = sub nsw i64 %i.l, %.pre-phi.i.i3.i
  %i.u = shl nsw i64 %i.t, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.s, i8 0, i64 %i.u, i1 false), !tbaa !34
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %.lr.ph.preheader.i.i.i, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i
  store i32 %i.f, ptr %i.n, align 8, !tbaa !32
  br label %_ZN4llvm11SmallVectorIjLj8EEC2Em.exit

_ZN4llvm11SmallVectorIjLj8EEC2Em.exit:            ; preds = %bb.a, %.sink.split.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %.sroa.068.0.copyload = load ptr, ptr %2, align 8, !tbaa !286 ; 10 uses
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.v, ptr %10, align 8, !tbaa !31
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  store i32 0, ptr %i.w, align 8, !tbaa !32
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 128, ptr %i.x, align 4, !tbaa !33
  %.idx.i = shl nuw nsw i64 %i.c, 2
  %i.y = icmp ugt i64 %i.c, 128
  br i1 %i.y, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i: ; preds = %_ZN4llvm11SmallVectorIjLj8EEC2Em.exit
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(528) %10, ptr noundef nonnull %i.v, i64 noundef %i.c, i64 noundef 4) #23
  %.pre8.pre.i.i = load i32, ptr %i.w, align 8, !tbaa !32
  %i.z = zext i32 %.pre8.pre.i.i to i64
  %.pre = load ptr, ptr %10, align 8, !tbaa !31
  br label %bb.c

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i:  ; preds = %_ZN4llvm11SmallVectorIjLj8EEC2Em.exit
  %.not.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorIiLj128EEC2IivEENS_8ArrayRefIT_EE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i
  %i.aa = phi ptr [ %.pre, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i ], [ %i.v, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i ]
  %.pre8.i5.i = phi i64 [ %i.z, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i ]
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.pre8.i5.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 4 %.sroa.068.0.copyload, i64 %.idx.i, i1 false)
  %.pre.i.i = load i32, ptr %i.w, align 8, !tbaa !32
  br label %_ZN4llvm11SmallVectorIiLj128EEC2IivEENS_8ArrayRefIT_EE.exit

_ZN4llvm11SmallVectorIiLj128EEC2IivEENS_8ArrayRefIT_EE.exit: ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i, %bb.c
  %i.ac = phi i32 [ 0, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i ], [ %.pre.i.i, %bb.c ]
  %i.ad = add i32 %i.ac, %i.d                     ; 2 uses
  store i32 %i.ad, ptr %i.w, align 8, !tbaa !32
  br i1 %i.k, label %bb.d, label %thread-pre-split

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorIiLj128EEC2IivEENS_8ArrayRefIT_EE.exit
  %i.ae = load i32, ptr %.sroa.068.0.copyload, align 4, !tbaa !34
  %i.af = load i32, ptr %i.g, align 8, !tbaa !243
  %.not = icmp slt i32 %i.ae, %i.af
  br i1 %.not, label %thread-pre-split, label %.preheader309

.preheader309:                                    ; preds = %bb.d
  %.not114316 = icmp eq i32 %i.d, 0
  %.pre386 = load ptr, ptr %10, align 8, !tbaa !31 ; 11 uses
  br i1 %.not114316, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader309
  %i.ag = and i64 %i.c, 4294967295                ; 5 uses
  %min.iters.check = icmp samesign ult i64 %i.ag, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ah = shl nuw nsw i64 %i.ag, 2                ; 2 uses
  %i.ai = getelementptr i8, ptr %.pre386, i64 %i.ah ; 2 uses
  %i.aj = getelementptr i8, ptr %.sroa.068.0.copyload, i64 %i.ah
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 36
  %bound0 = icmp ult ptr %.pre386, %i.aj
  %bound1 = icmp ult ptr %.sroa.068.0.copyload, %i.ai
  %found.conflict = and i1 %bound0, %bound1
  %bound0543 = icmp ult ptr %.pre386, %i.ak
  %bound1544 = icmp ult ptr %i.g, %i.ai
  %found.conflict545 = and i1 %bound0543, %bound1544
  %conflict.rdx = or i1 %found.conflict, %found.conflict545
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.c, 4294967288               ; 3 uses
  %i.al = load i32, ptr %i.g, align 8, !tbaa !243, !alias.scope !1000
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.al, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 5 uses
  %i.am = sub <4 x i32> zeroinitializer, %broadcast.splat ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.sroa.068.0.copyload, i64 %index ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %wide.load = load <4 x i32>, ptr %i.an, align 4, !tbaa !34, !alias.scope !1001 ; 2 uses
  %wide.load546 = load <4 x i32>, ptr %i.ao, align 4, !tbaa !34, !alias.scope !1001 ; 2 uses
  %i.ap = icmp slt <4 x i32> %wide.load, %broadcast.splat
  %i.aq = icmp slt <4 x i32> %wide.load546, %broadcast.splat
  %i.ar = select <4 x i1> %i.ap, <4 x i32> %broadcast.splat, <4 x i32> %i.am
  %i.as = select <4 x i1> %i.aq, <4 x i32> %broadcast.splat, <4 x i32> %i.am
  %i.at = add <4 x i32> %i.ar, %wide.load
  %i.au = add <4 x i32> %i.as, %wide.load546
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.pre386, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store <4 x i32> %i.at, ptr %i.av, align 4, !tbaa !34, !alias.scope !1002, !noalias !1003
  store <4 x i32> %i.au, ptr %i.aw, align 4, !tbaa !34, !alias.scope !1002, !noalias !1003
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !951

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %indvars.iv.ph, 1
  %xtraiter = and i64 %i.c, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.sroa.068.0.copyload, i64 %indvars.iv.ph
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !34 ; 2 uses
  %i.ba = load i32, ptr %i.g, align 8, !tbaa !243 ; 3 uses
  %.not120.prol = icmp slt i32 %i.az, %i.ba
  %i.bb = sub i32 0, %i.ba
  %.p.prol = select i1 %.not120.prol, i32 %i.ba, i32 %i.bb
  %i.bc = add i32 %.p.prol, %i.az
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.pre386, i64 %indvars.iv.ph
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !34
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.be = icmp eq i64 %i.ag, %.neg
  br i1 %i.be, label %._crit_edge.loopexit, label %scalar.ph

._crit_edge.loopexit:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.pre387 = load i32, ptr %i.w, align 8, !tbaa !32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader309
  %i.bf = phi i32 [ %.pre387, %._crit_edge.loopexit ], [ %i.ad, %.preheader309 ] ; 2 uses
  %i.bg = zext i32 %i.bf to i64                   ; 3 uses
  %.not12.i = icmp eq i32 %i.bf, 0
  br i1 %.not12.i, label %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %._crit_edge
  %i.bh = add nuw nsw i64 %i.bg, 4611686018427387903 ; 2 uses
  %i.bi = and i64 %i.bh, 4611686018427387903      ; 2 uses
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %i.bk = icmp eq i64 %i.bi, 0
  br i1 %i.bk, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.bj, 9223372036854775806
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i.preheader.new
  %.sroa.5278.0 = phi i32 [ -1, %.lr.ph.i.preheader.new ], [ %.sroa.5278.1.1, %bb.e ]
  %.sroa.7.0 = phi i32 [ -1, %.lr.ph.i.preheader.new ], [ %.sroa.7.1.1, %bb.e ]
  %.013.i = phi ptr [ %.pre386, %.lr.ph.i.preheader.new ], [ %i.ch, %bb.e ] ; 3 uses
  %.else.val.i = phi i32 [ -1, %.lr.ph.i.preheader.new ], [ %i.cg, %bb.e ] ; 3 uses
  %i.bl = phi i32 [ -1, %.lr.ph.i.preheader.new ], [ %i.cf, %bb.e ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %bb.e ]
  %i.bm = load i32, ptr %.013.i, align 4, !tbaa !34 ; 5 uses
  %i.bn = icmp eq i32 %i.bm, -1
  br i1 %i.bn, label %.lr.ph.i.1, label %.cont.i

.cont.i:                                          ; preds = %.lr.ph.i
  %i.bo = icmp eq i32 %.else.val.i, -1
  %i.bp = call i32 @llvm.smin.i32(i32 %i.bm, i32 %.else.val.i)
  %i.bq = select i1 %i.bo, i32 %i.bm, i32 %i.bp   ; 2 uses
  %i.br = icmp eq i32 %i.bl, -1
  %i.bs = call i32 @llvm.smax.i32(i32 %i.bl, i32 %i.bm)
  %i.bt = select i1 %i.br, i32 %i.bm, i32 %i.bs   ; 2 uses
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.cont.i, %.lr.ph.i
  %.sroa.5278.1 = phi i32 [ %.sroa.5278.0, %.lr.ph.i ], [ %i.bq, %.cont.i ]
  %.sroa.7.1 = phi i32 [ %.sroa.7.0, %.lr.ph.i ], [ %i.bt, %.cont.i ]
  %i.bu = phi i32 [ %i.bl, %.lr.ph.i ], [ %i.bt, %.cont.i ] ; 3 uses
  %i.bv = phi i32 [ %.else.val.i, %.lr.ph.i ], [ %i.bq, %.cont.i ] ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.013.i, i64 4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !34 ; 5 uses
  %i.by = icmp eq i32 %i.bx, -1
  br i1 %i.by, label %bb.e, label %.cont.i.1

.cont.i.1:                                        ; preds = %.lr.ph.i.1
  %i.bz = icmp eq i32 %i.bv, -1
  %i.ca = call i32 @llvm.smin.i32(i32 %i.bx, i32 %i.bv)
  %i.cb = select i1 %i.bz, i32 %i.bx, i32 %i.ca   ; 2 uses
  %i.cc = icmp eq i32 %i.bu, -1
  %i.cd = call i32 @llvm.smax.i32(i32 %i.bu, i32 %i.bx)
  %i.ce = select i1 %i.cc, i32 %i.bx, i32 %i.cd   ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.cont.i.1, %.lr.ph.i.1
  %.sroa.5278.1.1 = phi i32 [ %.sroa.5278.1, %.lr.ph.i.1 ], [ %i.cb, %.cont.i.1 ] ; 3 uses
  %.sroa.7.1.1 = phi i32 [ %.sroa.7.1, %.lr.ph.i.1 ], [ %i.ce, %.cont.i.1 ] ; 3 uses
  %i.cf = phi i32 [ %i.bu, %.lr.ph.i.1 ], [ %i.ce, %.cont.i.1 ] ; 2 uses
  %i.cg = phi i32 [ %i.bv, %.lr.ph.i.1 ], [ %i.cb, %.cont.i.1 ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.013.i, i64 8 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit.loopexit.unr-lcssa, label %.lr.ph.i

_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit.loopexit.unr-lcssa: ; preds = %bb.e
  %i.ci = and i64 %i.bh, 1
  %lcmp.mod690.not.not = icmp eq i64 %i.ci, 0
  br i1 %lcmp.mod690.not.not, label %.lr.ph.i.epil.preheader, label %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit

.lr.ph.i.epil.preheader:                          ; preds = %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.sroa.5278.0.epil.init = phi i32 [ -1, %.lr.ph.i.preheader ], [ %.sroa.5278.1.1, %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit.loopexit.unr-lcssa ]
  %.sroa.7.0.epil.init = phi i32 [ -1, %.lr.ph.i.preheader ], [ %.sroa.7.1.1, %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit.loopexit.unr-lcssa ]
  %.013.i.epil.init = phi ptr [ %.pre386, %.lr.ph.i.preheader ], [ %i.ch, %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit.loopexit.unr-lcssa ]
  %.else.val.i.epil.init = phi i32 [ -1, %.lr.ph.i.preheader ], [ %i.cg, %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi i32 [ -1, %.lr.ph.i.preheader ], [ %i.cf, %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod693 = trunc i64 %i.bj to i1
  call void @llvm.assume(i1 %lcmp.mod693)
  %i.cj = load i32, ptr %.013.i.epil.init, align 4, !tbaa !34 ; 5 uses
  %i.ck = icmp eq i32 %i.cj, -1
  br i1 %i.ck, label %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit, label %.cont.i.epil

.cont.i.epil:                                     ; preds = %.lr.ph.i.epil.preheader
  %i.cl = icmp eq i32 %.else.val.i.epil.init, -1
  %i.cm = call i32 @llvm.smin.i32(i32 %i.cj, i32 %.else.val.i.epil.init)
  %i.cn = select i1 %i.cl, i32 %i.cj, i32 %i.cm
  %i.co = icmp eq i32 %.epil.init, -1
  %i.cp = call i32 @llvm.smax.i32(i32 %.epil.init, i32 %i.cj)
  %i.cq = select i1 %i.co, i32 %i.cj, i32 %i.cp
  br label %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit

_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit: ; preds = %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit.loopexit.unr-lcssa, %.cont.i.epil, %.lr.ph.i.epil.preheader, %._crit_edge
  %.sroa.5278.2 = phi i32 [ -1, %._crit_edge ], [ %.sroa.5278.1.1, %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit.loopexit.unr-lcssa ], [ %.sroa.5278.0.epil.init, %.lr.ph.i.epil.preheader ], [ %i.cn, %.cont.i.epil ]
  %.sroa.7.2 = phi i32 [ -1, %._crit_edge ], [ %.sroa.7.1.1, %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit.loopexit.unr-lcssa ], [ %.sroa.7.0.epil.init, %.lr.ph.i.epil.preheader ], [ %i.cq, %.cont.i.epil ]
  store ptr %.pre386, ptr %2, align 8, !tbaa !286
  store i64 %i.bg, ptr %i.b, align 8, !tbaa !250
  %.sroa.5278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %.sroa.5278.2, ptr %.sroa.5278.0..sroa_idx, align 8, !tbaa !34
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.7.2, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !34
  br label %thread-pre-split

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.068.0.copyload, i64 %indvars.iv
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !34 ; 2 uses
  %i.ct = load i32, ptr %i.g, align 8, !tbaa !243 ; 3 uses
  %.not120 = icmp slt i32 %i.cs, %i.ct
  %i.cu = sub i32 0, %i.ct
  %.p = select i1 %.not120, i32 %i.ct, i32 %i.cu
  %i.cv = add i32 %.p, %i.cs
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.pre386, i64 %indvars.iv
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !34
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.068.0.copyload, i64 %indvars.iv.next
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !34 ; 2 uses
  %i.cz = load i32, ptr %i.g, align 8, !tbaa !243 ; 3 uses
  %.not120.1 = icmp slt i32 %i.cy, %i.cz
  %i.da = sub i32 0, %i.cz
  %.p.1 = select i1 %.not120.1, i32 %i.cz, i32 %i.da
  %i.db = add i32 %.p.1, %i.cy
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.pre386, i64 %indvars.iv.next
  store i32 %i.db, ptr %i.dc, align 4, !tbaa !34
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %.not114.1 = icmp eq i64 %indvars.iv.next.1, %i.ag
  br i1 %.not114.1, label %._crit_edge.loopexit, label %scalar.ph, !llvm.loop !952

thread-pre-split:                                 ; preds = %bb.d, %_ZN4llvm11SmallVectorIiLj128EEC2IivEENS_8ArrayRefIT_EE.exit, %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit
  %.sroa.0272.0.copyload = phi ptr [ %.pre386, %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit ], [ %.sroa.068.0.copyload, %_ZN4llvm11SmallVectorIiLj128EEC2IivEENS_8ArrayRefIT_EE.exit ], [ %.sroa.068.0.copyload, %bb.d ] ; 3 uses
  %.sroa.2273.0.copyload = phi i64 [ %i.bg, %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit ], [ %i.c, %_ZN4llvm11SmallVectorIiLj128EEC2IivEENS_8ArrayRefIT_EE.exit ], [ %i.c, %bb.d ] ; 10 uses
  %.0 = phi i1 [ true, %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit ], [ false, %_ZN4llvm11SmallVectorIiLj128EEC2IivEENS_8ArrayRefIT_EE.exit ], [ false, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !1004)
  %i.dd = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  store ptr %i.dd, ptr %11, align 8, !tbaa !31, !alias.scope !1004
  %i.de = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 7 uses
  store i32 0, ptr %i.de, align 8, !tbaa !32, !alias.scope !1004
  %i.df = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i32 8, ptr %i.df, align 4, !tbaa !33, !alias.scope !1004
  br i1 %i.p, label %_ZN4llvm11SmallVectorIjLj8EEC2IjvEENS_8ArrayRefIT_EE.exit.i.thread, label %bb.f

_ZN4llvm11SmallVectorIjLj8EEC2IjvEENS_8ArrayRefIT_EE.exit.i.thread: ; preds = %thread-pre-split
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.dg = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr %i.dg, ptr %12, align 8, !tbaa !31, !alias.scope !1005
  %i.dh = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %12, i64 12
  store i32 8, ptr %i.di, align 4, !tbaa !33, !alias.scope !1005
  store i32 0, ptr %i.dh, align 8, !tbaa !32, !alias.scope !1005
  %.pre389463.a = load ptr, ptr %9, align 8, !tbaa !31
  br label %._crit_edge329

bb.f:                                             ; preds = %thread-pre-split
  %i.dj = icmp ugt i32 %i.f, 8
  br i1 %i.dj, label %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i

_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i.i: ; preds = %bb.f
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull %i.dd, i64 noundef %i.l, i64 noundef 4) #23
  %.pre.i.i.i.i = load i32, ptr %i.de, align 8, !tbaa !32, !alias.scope !1004 ; 2 uses
  %.not11.i.i.i.i = icmp eq i32 %i.f, %.pre.i.i.i.i
  br i1 %.not11.i.i.i.i, label %.lr.ph12.i, label %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i.i

_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i.i: ; preds = %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i.i
  %.pre13.i.i.i.i = zext i32 %.pre.i.i.i.i to i64
  %.pre.i.i153 = load ptr, ptr %11, align 8, !tbaa !31, !alias.scope !1004
  br label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i.i, %bb.f
  %i.dk = phi ptr [ %.pre.i.i153, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i.i ], [ %i.dd, %bb.f ]
  %.pre-phi.i.i3.i.i = phi i64 [ %.pre13.i.i.i.i, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i.i ], [ 0, %bb.f ] ; 2 uses
  %i.dl = getelementptr [4 x i8], ptr %i.dk, i64 %.pre-phi.i.i3.i.i
  %i.dm = sub nsw i64 %i.l, %.pre-phi.i.i3.i.i
  %i.dn = shl nsw i64 %i.dm, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.dl, i8 0, i64 %i.dn, i1 false), !tbaa !34
  br label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %.lr.ph.preheader.i.i.i.i, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i.i
  store i32 %i.f, ptr %i.de, align 8, !tbaa !32, !alias.scope !1004
  %i.do = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dr = icmp eq i64 %.sroa.2273.0.copyload, 0
  %i.ds = icmp ugt i64 %.sroa.2273.0.copyload, 40
  %i.dt = and i64 %.sroa.2273.0.copyload, 4294967295 ; 2 uses
  %.not328.i = icmp eq i64 %i.dt, 0
  %.neg.i.i = shl nsw i32 -1, %i.f                ; 2 uses
  %25 = xor i32 %.neg.i.i, -1                     ; 4 uses
  br i1 %i.dr, label %.lr.ph12.i.split.us, label %.lr.ph12.i.split.preheader

.lr.ph12.i.split.preheader:                       ; preds = %.lr.ph12.i
  %xtraiter694 = and i64 %.sroa.2273.0.copyload, 1
  %i.du = icmp eq i64 %i.dt, 1
  %unroll_iter697 = and i64 %.sroa.2273.0.copyload, 4294967294
  %lcmp.mod695.not = icmp eq i64 %xtraiter694, 0
  %lcmp.mod696 = trunc i64 %.sroa.2273.0.copyload to i1
  %xtraiter699 = and i32 %i.f, 1
  %i.dv = icmp eq i32 %i.e, 30
  %unroll_iter703 = and i32 %i.f, -2
  %lcmp.mod700.not = icmp eq i32 %xtraiter699, 0
  %lcmp.mod702 = trunc i32 %i.f to i1
  br label %.lr.ph12.i.split

.lr.ph12.i.split.us:                              ; preds = %.lr.ph12.i
  %i.dw = load ptr, ptr %11, align 8, !tbaa !31, !alias.scope !1004 ; 2 uses
  %min.iters.check548 = icmp ult i32 %i.f, 8
  br i1 %min.iters.check548, label %"_ZZN4llvm11HvxSelector21getPerfectCompletionsEN12_GLOBAL__N_111ShuffleMaskEjENK3$_0clENS_8ArrayRefIhEEj.exit.i.thread.us.preheader", label %vector.ph549

vector.ph549:                                     ; preds = %.lr.ph12.i.split.us
  %n.vec550 = and i64 %i.l, 4294967288            ; 3 uses
  %broadcast.splatinsert551 = insertelement <4 x i32> poison, i32 %25, i64 0
  %broadcast.splat552 = shufflevector <4 x i32> %broadcast.splatinsert551, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body553

vector.body553:                                   ; preds = %vector.body553, %vector.ph549
  %index554 = phi i64 [ 0, %vector.ph549 ], [ %index.next555, %vector.body553 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23, !noalias !1004
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23, !noalias !1004
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %index554 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  store <4 x i32> %broadcast.splat552, ptr %i.dx, align 4, !tbaa !34
  store <4 x i32> %broadcast.splat552, ptr %i.dy, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23, !noalias !1004
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23, !noalias !1004
  %index.next555 = add nuw i64 %index554, 8       ; 2 uses
  %i.dz = icmp eq i64 %index.next555, %n.vec550
  br i1 %i.dz, label %middle.block556, label %vector.body553, !llvm.loop !957

middle.block556:                                  ; preds = %vector.body553
  %cmp.n557 = icmp eq i64 %n.vec550, %i.l
  br i1 %cmp.n557, label %._crit_edge13.i, label %"_ZZN4llvm11HvxSelector21getPerfectCompletionsEN12_GLOBAL__N_111ShuffleMaskEjENK3$_0clENS_8ArrayRefIhEEj.exit.i.thread.us.preheader"

"_ZZN4llvm11HvxSelector21getPerfectCompletionsEN12_GLOBAL__N_111ShuffleMaskEjENK3$_0clENS_8ArrayRefIhEEj.exit.i.thread.us.preheader": ; preds = %.lr.ph12.i.split.us, %middle.block556
  %indvars.iv27.i.us.ph = phi i64 [ 0, %.lr.ph12.i.split.us ], [ %n.vec550, %middle.block556 ]
  br label %"_ZZN4llvm11HvxSelector21getPerfectCompletionsEN12_GLOBAL__N_111ShuffleMaskEjENK3$_0clENS_8ArrayRefIhEEj.exit.i.thread.us"

"_ZZN4llvm11HvxSelector21getPerfectCompletionsEN12_GLOBAL__N_111ShuffleMaskEjENK3$_0clENS_8ArrayRefIhEEj.exit.i.thread.us": ; preds = %"_ZZN4llvm11HvxSelector21getPerfectCompletionsEN12_GLOBAL__N_111ShuffleMaskEjENK3$_0clENS_8ArrayRefIhEEj.exit.i.thread.us.preheader", %"_ZZN4llvm11HvxSelector21getPerfectCompletionsEN12_GLOBAL__N_111ShuffleMaskEjENK3$_0clENS_8ArrayRefIhEEj.exit.i.thread.us"
  %indvars.iv27.i.us = phi i64 [ %indvars.iv.next28.i.us, %"_ZZN4llvm11HvxSelector21getPerfectCompletionsEN12_GLOBAL__N_111ShuffleMaskEjENK3$_0clENS_8ArrayRefIhEEj.exit.i.thread.us" ], [ %indvars.iv27.i.us.ph, %"_ZZN4llvm11HvxSelector21getPerfectCompletionsEN12_GLOBAL__N_111ShuffleMaskEjENK3$_0clENS_8ArrayRefIhEEj.exit.i.thread.us.preheader" ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23, !noalias !1004
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv27.i.us
  store i32 %25, ptr %i.ea, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23, !noalias !1004
  %indvars.iv.next28.i.us = add nuw nsw i64 %indvars.iv27.i.us, 1 ; 2 uses
  %.not.i151.us = icmp eq i64 %indvars.iv.next28.i.us, %i.l
  br i1 %.not.i151.us, label %._crit_edge13.i, label %"_ZZN4llvm11HvxSelector21getPerfectCompletionsEN12_GLOBAL__N_111ShuffleMaskEjENK3$_0clENS_8ArrayRefIhEEj.exit.i.thread.us", !llvm.loop !958

._crit_edge13.i:                                  ; preds = %_ZN4llvm11SmallVectorIhLj40EED2Ev.exit.i, %"_ZZN4llvm11HvxSelector21getPerfectCompletionsEN12_GLOBAL__N_111ShuffleMaskEjENK3$_0clENS_8ArrayRefIhEEj.exit.i.thread.us", %middle.block556
  %.pre30.i = load i32, ptr %i.de, align 8, !tbaa !32, !alias.scope !1004 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23, !noalias !1004
  %i.eb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.eb, ptr %8, align 8, !tbaa !31, !noalias !1004
  %i.ec = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  store i32 0, ptr %i.ec, align 8, !tbaa !32, !noalias !1004
  %i.ed = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 8, ptr %i.ed, align 4, !tbaa !33, !noalias !1004
  %.not.i.i.i152 = icmp eq i32 %.pre30.i, 0
  br i1 %.not.i.i.i152, label %_ZN4llvm11HvxSelector21getPerfectCompletionsEN12_GLOBAL__N_111ShuffleMaskEj.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge13.i
  %i.ee = icmp ugt i32 %.pre30.i, 8
  br i1 %i.ee, label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i.i, label %_ZN4llvm11SmallVectorIjLj8EEC2ERKS1_.exit.i

_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i.i:         ; preds = %bb.g
  %i.ef = zext i32 %.pre30.i to i64               ; 2 uses
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull %i.eb, i64 noundef %i.ef, i64 noundef 4) #23
  %.pre.i33.i = load i32, ptr %i.de, align 8, !tbaa !32, !alias.scope !1004 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.pre.i33.i, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm11SmallVectorIjLj8EEC2ERKS1_.exit.thread55.i, label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i

_ZN4llvm11SmallVectorIjLj8EEC2ERKS1_.exit.thread55.i: ; preds = %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i.i
  store i32 %.pre30.i, ptr %i.ec, align 8, !tbaa !32, !noalias !1004
  %.pre33.pre34.pre56.i = load ptr, ptr %8, align 8, !tbaa !31, !noalias !1004
  br label %_ZN4llvm4sortIRNS_11SmallVectorIjLj8EEEEEvOT_.exit.i

_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i: ; preds = %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i.i
  %.pre31.i = load ptr, ptr %8, align 8, !tbaa !31, !noalias !1004
  br label %_ZN4llvm11SmallVectorIjLj8EEC2ERKS1_.exit.i

_ZN4llvm11SmallVectorIjLj8EEC2ERKS1_.exit.i:      ; preds = %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i, %bb.g
  %i.eg = phi ptr [ %.pre31.i, %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i ], [ %i.eb, %bb.g ]
  %i.eh = phi i32 [ %.pre.i33.i, %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i ], [ %.pre30.i, %bb.g ]
  %i.ei = zext i32 %i.eh to i64
  %i.ej = load ptr, ptr %11, align 8, !tbaa !31, !alias.scope !1004
  %gepdiff.i.i.i = shl nuw nsw i64 %i.ei, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eg, ptr align 4 %i.ej, i64 %gepdiff.i.i.i, i1 false)
  store i32 %.pre30.i, ptr %i.ec, align 8, !tbaa !32, !noalias !1004
  %.pre33.pre34.pre.i = load ptr, ptr %8, align 8, !tbaa !31, !noalias !1004 ; 2 uses
  %i.ek = icmp eq i32 %.pre30.i, 1
  br i1 %i.ek, label %.lr.ph24.i, label %_ZN4llvm11SmallVectorIjLj8EEC2ERKS1_.exit.i._ZN4llvm4sortIRNS_11SmallVectorIjLj8EEEEEvOT_.exit.i_crit_edge

_ZN4llvm11SmallVectorIjLj8EEC2ERKS1_.exit.i._ZN4llvm4sortIRNS_11SmallVectorIjLj8EEEEEvOT_.exit.i_crit_edge: ; preds = %_ZN4llvm11SmallVectorIjLj8EEC2ERKS1_.exit.i
  %.pre407 = zext i32 %.pre30.i to i64
  br label %_ZN4llvm4sortIRNS_11SmallVectorIjLj8EEEEEvOT_.exit.i

_ZN4llvm4sortIRNS_11SmallVectorIjLj8EEEEEvOT_.exit.i: ; preds = %_ZN4llvm11SmallVectorIjLj8EEC2ERKS1_.exit.i._ZN4llvm4sortIRNS_11SmallVectorIjLj8EEEEEvOT_.exit.i_crit_edge, %_ZN4llvm11SmallVectorIjLj8EEC2ERKS1_.exit.thread55.i
  %.pre-phi408 = phi i64 [ %.pre407, %_ZN4llvm11SmallVectorIjLj8EEC2ERKS1_.exit.i._ZN4llvm4sortIRNS_11SmallVectorIjLj8EEEEEvOT_.exit.i_crit_edge ], [ %i.ef, %_ZN4llvm11SmallVectorIjLj8EEC2ERKS1_.exit.thread55.i ]
  %.pre33.pre34.pre57.i = phi ptr [ %.pre33.pre34.pre.i, %_ZN4llvm11SmallVectorIjLj8EEC2ERKS1_.exit.i._ZN4llvm4sortIRNS_11SmallVectorIjLj8EEEEEvOT_.exit.i_crit_edge ], [ %.pre33.pre34.pre56.i, %_ZN4llvm11SmallVectorIjLj8EEC2ERKS1_.exit.thread55.i ]
  call void @qsort(ptr noundef nonnull %.pre33.pre34.pre57.i, i64 noundef %.pre-phi408, i64 noundef 4, ptr noundef nonnull @_ZN4llvm25array_pod_sort_comparatorIjEEiPKvS2_) #23
  %.pre32.i = load i32, ptr %i.ec, align 8, !tbaa !32, !noalias !1004 ; 2 uses
  %.pre33.pre.i = load ptr, ptr %8, align 8, !tbaa !31, !noalias !1004 ; 2 uses
  %.not3022.i = icmp eq i32 %.pre32.i, 0
  br i1 %.not3022.i, label %._crit_edge25.i, label %.lr.ph24.i

.lr.ph24.i:                                       ; preds = %_ZN4llvm4sortIRNS_11SmallVectorIjLj8EEEEEvOT_.exit.i, %_ZN4llvm11SmallVectorIjLj8EEC2ERKS1_.exit.i
  %i.el = phi i32 [ %.pre32.i, %_ZN4llvm4sortIRNS_11SmallVectorIjLj8EEEEEvOT_.exit.i ], [ 1, %_ZN4llvm11SmallVectorIjLj8EEC2ERKS1_.exit.i ] ; 6 uses
  %.pre3364.i = phi ptr [ %.pre33.pre.i, %_ZN4llvm4sortIRNS_11SmallVectorIjLj8EEEEEvOT_.exit.i ], [ %.pre33.pre34.pre.i, %_ZN4llvm11SmallVectorIjLj8EEC2ERKS1_.exit.i ] ; 3 uses
  %i.em = load ptr, ptr %11, align 8              ; 11 uses
  br label %bb.p

.lr.ph12.i.split:                                 ; preds = %.lr.ph12.i.split.preheader, %_ZN4llvm11SmallVectorIhLj40EED2Ev.exit.i
  %indvars.iv27.i = phi i64 [ %indvars.iv.next28.i, %_ZN4llvm11SmallVectorIhLj40EED2Ev.exit.i ], [ 0, %.lr.ph12.i.split.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23, !noalias !1004
  store ptr %i.do, ptr %7, align 8, !tbaa !295, !noalias !1004
  store i64 0, ptr %i.dp, align 8, !tbaa !296, !noalias !1004
  store i64 40, ptr %i.dq, align 8, !tbaa !297, !noalias !1004
  br i1 %i.ds, label %bb.h, label %_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i.i.i.i

bb.h:                                             ; preds = %.lr.ph12.i.split
  call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull %i.do, i64 noundef %.sroa.2273.0.copyload, i64 noundef 1) #23
  %.pre.i.i.i37.i = load i64, ptr %i.dp, align 8, !tbaa !296, !noalias !1004
  br label %_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i.i.i.i

_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i.i.i.i: ; preds = %bb.h, %.lr.ph12.i.split
  %i.en = phi i64 [ 0, %.lr.ph12.i.split ], [ %.pre.i.i.i37.i, %bb.h ] ; 3 uses
  %.not11.i.i.i34.i = icmp samesign eq i64 %i.en, %.sroa.2273.0.copyload
  br i1 %.not11.i.i.i34.i, label %_ZN4llvm11SmallVectorIhLj40EEC2Em.exit.i, label %.lr.ph.preheader.i.i.i35.i

.lr.ph.preheader.i.i.i35.i:                       ; preds = %_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i.i.i.i
  %i.eo = load ptr, ptr %7, align 8, !tbaa !295, !noalias !1004
  %i.ep = getelementptr i8, ptr %i.eo, i64 %i.en
  %i.eq = sub i64 %.sroa.2273.0.copyload, %i.en
  call void @llvm.memset.p0.i64(ptr align 1 %i.ep, i8 0, i64 %i.eq, i1 false), !tbaa !232
  br label %_ZN4llvm11SmallVectorIhLj40EEC2Em.exit.i

_ZN4llvm11SmallVectorIhLj40EEC2Em.exit.i:         ; preds = %.lr.ph.preheader.i.i.i35.i, %_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i.i.i.i
  store i64 %.sroa.2273.0.copyload, ptr %i.dp, align 8, !tbaa !296, !noalias !1004
  br i1 %.not328.i, label %._crit_edge.i.thread, label %.lr.ph.preheader.i

._crit_edge.i.thread:                             ; preds = %_ZN4llvm11SmallVectorIhLj40EEC2Em.exit.i
  %i.er = load ptr, ptr %7, align 8, !tbaa !295, !noalias !1004
  br label %"_ZZN4llvm11HvxSelector21getPerfectCompletionsEN12_GLOBAL__N_111ShuffleMaskEjENK3$_0clENS_8ArrayRefIhEEj.exit.i"

.lr.ph.preheader.i:                               ; preds = %_ZN4llvm11SmallVectorIhLj40EEC2Em.exit.i
  %i.es = trunc nuw i64 %indvars.iv27.i to i32    ; 3 uses
  br i1 %i.du, label %.lr.ph.i149.epil.preheader, label %.lr.ph.i149

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i149
  br i1 %lcmp.mod695.not, label %._crit_edge.i, label %.lr.ph.i149.epil.preheader

.lr.ph.i149.epil.preheader:                       ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod696)
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0272.0.copyload, i64 %indvars.iv.i.epil.init
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !34, !noalias !1004 ; 2 uses
  %i.ev = icmp slt i32 %i.eu, 0
  %i.ew = lshr i32 %i.eu, %i.es
  %i.ex = trunc i32 %i.ew to i8
  %i.ey = and i8 %i.ex, 1
  %.sink.i.epil = select i1 %i.ev, i8 -1, i8 %i.ey
  %i.ez = load ptr, ptr %7, align 8, !tbaa !295, !noalias !1004
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %indvars.iv.i.epil.init
  store i8 %.sink.i.epil, ptr %i.fa, align 1, !tbaa !232
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i149.epil.preheader
  %.pre.i150 = load i64, ptr %i.dp, align 8, !tbaa !296, !noalias !1004
  %.pre403 = and i64 %.pre.i150, 4294967295       ; 2 uses
  %i.fb = load ptr, ptr %7, align 8, !tbaa !295, !noalias !1004 ; 3 uses
  %.not7.i.i = icmp eq i64 %.pre403, 0
  br i1 %.not7.i.i, label %"_ZZN4llvm11HvxSelector21getPerfectCompletionsEN12_GLOBAL__N_111ShuffleMaskEjENK3$_0clENS_8ArrayRefIhEEj.exit.i", label %.lr.ph10.split.i.i

.lr.ph10.split.i.i:                               ; preds = %._crit_edge.i, %..loopexit_crit_edge.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %..loopexit_crit_edge.i.i ], [ 0, %._crit_edge.i ] ; 3 uses
  %.0228.i.i = phi i32 [ %.4.ph.i.i, %..loopexit_crit_edge.i.i ], [ %.neg.i.i, %._crit_edge.i ] ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 %indvars.iv.i.i
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !232 ; 2 uses
  %i.fe = zext i8 %i.fd to i32                    ; 3 uses
  %i.ff = icmp eq i8 %i.fd, -1
  br i1 %i.ff, label %..loopexit_crit_edge.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph10.split.i.i
  %i.fg = icmp eq i32 %.0228.i.i, -1
  br i1 %i.fg, label %"_ZZN4llvm11HvxSelector21getPerfectCompletionsEN12_GLOBAL__N_111ShuffleMaskEjENK3$_0clENS_8ArrayRefIhEEj.exit.i.loopexit", label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.i
  %i.fh = trunc nuw i64 %indvars.iv.i.i to i32    ; 3 uses
  br i1 %i.dv, label %.preheader.i.i.epil.preheader, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.preheader.i.i, %bb.l
  %.06.i.i = phi i32 [ %i.ft, %bb.l ], [ 0, %.preheader.preheader.i.i ] ; 5 uses
  %.15.i.i = phi i32 [ %.3.i.i.1, %bb.l ], [ %.0228.i.i, %.preheader.preheader.i.i ] ; 3 uses
  %niter704 = phi i32 [ %niter704.next.1, %bb.l ], [ 0, %.preheader.preheader.i.i ]
  %i.fi = shl nuw i32 1, %.06.i.i                 ; 2 uses
  %i.fj = and i32 %i.fi, %.15.i.i
  %.not25.i.i = icmp eq i32 %i.fj, 0
  br i1 %.not25.i.i, label %bb.j, label %.preheader.i.i.1

bb.j:                                             ; preds = %.preheader.i.i
  %i.fk = lshr i32 %i.fh, %.06.i.i
  %i.fl = and i32 %i.fk, 1
  %.not26.i.i = icmp eq i32 %i.fl, %i.fe
  %i.fm = select i1 %.not26.i.i, i32 0, i32 %i.fi
  %spec.select.i.i = or i32 %i.fm, %.15.i.i
  br label %.preheader.i.i.1

.preheader.i.i.1:                                 ; preds = %bb.j, %.preheader.i.i
  %.3.i.i = phi i32 [ %.15.i.i, %.preheader.i.i ], [ %spec.select.i.i, %bb.j ] ; 3 uses
  %i.fn = shl nuw i32 2, %.06.i.i                 ; 2 uses
  %i.fo = and i32 %i.fn, %.3.i.i
  %.not25.i.i.1 = icmp eq i32 %i.fo, 0
  br i1 %.not25.i.i.1, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.preheader.i.i.1
  %i.fp = or disjoint i32 %.06.i.i, 1
  %i.fq = lshr i32 %i.fh, %i.fp
  %i.fr = and i32 %i.fq, 1
  %.not26.i.i.1 = icmp eq i32 %i.fr, %i.fe
  %i.fs = select i1 %.not26.i.i.1, i32 0, i32 %i.fn
  %spec.select.i.i.1 = or i32 %i.fs, %.3.i.i
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.preheader.i.i.1
  %.3.i.i.1 = phi i32 [ %.3.i.i, %.preheader.i.i.1 ], [ %spec.select.i.i.1, %bb.k ] ; 3 uses
  %i.ft = add nuw i32 %.06.i.i, 2                 ; 2 uses
  %niter704.next.1 = add i32 %niter704, 2         ; 2 uses
  %niter704.ncmp.1 = icmp eq i32 %niter704.next.1, %unroll_iter703
  br i1 %niter704.ncmp.1, label %..loopexit_crit_edge.i.i.loopexit.unr-lcssa, label %.preheader.i.i, !llvm.loop !959

..loopexit_crit_edge.i.i.loopexit.unr-lcssa:      ; preds = %bb.l
  br i1 %lcmp.mod700.not, label %..loopexit_crit_edge.i.i, label %.preheader.i.i.epil.preheader

.preheader.i.i.epil.preheader:                    ; preds = %..loopexit_crit_edge.i.i.loopexit.unr-lcssa, %.preheader.preheader.i.i
  %.06.i.i.epil.init = phi i32 [ 0, %.preheader.preheader.i.i ], [ %i.ft, %..loopexit_crit_edge.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.15.i.i.epil.init = phi i32 [ %.0228.i.i, %.preheader.preheader.i.i ], [ %.3.i.i.1, %..loopexit_crit_edge.i.i.loopexit.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod702)
  %i.fu = shl nuw i32 1, %.06.i.i.epil.init       ; 2 uses
  %i.fv = and i32 %i.fu, %.15.i.i.epil.init
  %.not25.i.i.epil = icmp eq i32 %i.fv, 0
  br i1 %.not25.i.i.epil, label %bb.m, label %..loopexit_crit_edge.i.i

bb.m:                                             ; preds = %.preheader.i.i.epil.preheader
  %i.fw = lshr i32 %i.fh, %.06.i.i.epil.init
  %i.fx = and i32 %i.fw, 1
  %.not26.i.i.epil = icmp eq i32 %i.fx, %i.fe
  %i.fy = select i1 %.not26.i.i.epil, i32 0, i32 %i.fu
  %spec.select.i.i.epil = or i32 %i.fy, %.15.i.i.epil.init
  br label %..loopexit_crit_edge.i.i

..loopexit_crit_edge.i.i:                         ; preds = %..loopexit_crit_edge.i.i.loopexit.unr-lcssa, %bb.m, %.preheader.i.i.epil.preheader, %.lr.ph10.split.i.i
  %.4.ph.i.i = phi i32 [ %.0228.i.i, %.lr.ph10.split.i.i ], [ %.3.i.i.1, %..loopexit_crit_edge.i.i.loopexit.unr-lcssa ], [ %.15.i.i.epil.init, %.preheader.i.i.epil.preheader ], [ %spec.select.i.i.epil, %bb.m ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %.pre403
  br i1 %.not.i.i, label %"_ZZN4llvm11HvxSelector21getPerfectCompletionsEN12_GLOBAL__N_111ShuffleMaskEjENK3$_0clENS_8ArrayRefIhEEj.exit.i.loopexit", label %.lr.ph10.split.i.i, !llvm.loop !960

"_ZZN4llvm11HvxSelector21getPerfectCompletionsEN12_GLOBAL__N_111ShuffleMaskEjENK3$_0clENS_8ArrayRefIhEEj.exit.i.loopexit": ; preds = %bb.i, %..loopexit_crit_edge.i.i
  %.5.i.i.ph = phi i32 [ -1, %bb.i ], [ %.4.ph.i.i, %..loopexit_crit_edge.i.i ]
  %.pre405 = xor i32 %.5.i.i.ph, -1
  br label %"_ZZN4llvm11HvxSelector21getPerfectCompletionsEN12_GLOBAL__N_111ShuffleMaskEjENK3$_0clENS_8ArrayRefIhEEj.exit.i"

"_ZZN4llvm11HvxSelector21getPerfectCompletionsEN12_GLOBAL__N_111ShuffleMaskEjENK3$_0clENS_8ArrayRefIhEEj.exit.i": ; preds = %._crit_edge.i.thread, %"_ZZN4llvm11HvxSelector21getPerfectCompletionsEN12_GLOBAL__N_111ShuffleMaskEjENK3$_0clENS_8ArrayRefIhEEj.exit.i.loopexit", %._crit_edge.i
  %26 = phi ptr [ %i.fb, %"_ZZN4llvm11HvxSelector21getPerfectCompletionsEN12_GLOBAL__N_111ShuffleMaskEjENK3$_0clENS_8ArrayRefIhEEj.exit.i.loopexit" ], [ %i.fb, %._crit_edge.i ], [ %i.er, %._crit_edge.i.thread ] ; 2 uses
  %.pre-phi406 = phi i32 [ %.pre405, %"_ZZN4llvm11HvxSelector21getPerfectCompletionsEN12_GLOBAL__N_111ShuffleMaskEjENK3$_0clENS_8ArrayRefIhEEj.exit.i.loopexit" ], [ %25, %._crit_edge.i ], [ %25, %._crit_edge.i.thread ]
  %i.fz = load ptr, ptr %11, align 8, !tbaa !31, !alias.scope !1004
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %indvars.iv27.i
  store i32 %.pre-phi406, ptr %i.ga, align 4, !tbaa !34
  %i.gb = icmp eq ptr %26, %i.do
  br i1 %i.gb, label %_ZN4llvm11SmallVectorIhLj40EED2Ev.exit.i, label %bb.n

bb.n:                                             ; preds = %"_ZZN4llvm11HvxSelector21getPerfectCompletionsEN12_GLOBAL__N_111ShuffleMaskEjENK3$_0clENS_8ArrayRefIhEEj.exit.i"
  call void @free(ptr noundef %26) #23
  br label %_ZN4llvm11SmallVectorIhLj40EED2Ev.exit.i

_ZN4llvm11SmallVectorIhLj40EED2Ev.exit.i:         ; preds = %bb.n, %"_ZZN4llvm11HvxSelector21getPerfectCompletionsEN12_GLOBAL__N_111ShuffleMaskEjENK3$_0clENS_8ArrayRefIhEEj.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23, !noalias !1004
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, 1 ; 2 uses
  %.not.i151 = icmp eq i64 %indvars.iv.next28.i, %i.l
  br i1 %.not.i151, label %._crit_edge13.i, label %.lr.ph12.i.split, !llvm.loop !961

.lr.ph.i149:                                      ; preds = %.lr.ph.preheader.i, %.lr.ph.i149
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i149 ], [ 0, %.lr.ph.preheader.i ] ; 4 uses
  %niter698 = phi i64 [ %niter698.next.1, %.lr.ph.i149 ], [ 0, %.lr.ph.preheader.i ]
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0272.0.copyload, i64 %indvars.iv.i
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !34, !noalias !1004 ; 2 uses
  %i.ge = icmp slt i32 %i.gd, 0
  %i.gf = lshr i32 %i.gd, %i.es
  %i.gg = trunc i32 %i.gf to i8
  %i.gh = and i8 %i.gg, 1
  %.sink.i = select i1 %i.ge, i8 -1, i8 %i.gh
  %i.gi = load ptr, ptr %7, align 8, !tbaa !295, !noalias !1004
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 %indvars.iv.i
  store i8 %.sink.i, ptr %i.gj, align 1, !tbaa !232
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0272.0.copyload, i64 %indvars.iv.next.i
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !34, !noalias !1004 ; 2 uses
  %i.gm = icmp slt i32 %i.gl, 0
  %i.gn = lshr i32 %i.gl, %i.es
  %i.go = trunc i32 %i.gn to i8
  %i.gp = and i8 %i.go, 1
  %.sink.i.1 = select i1 %i.gm, i8 -1, i8 %i.gp
  %i.gq = load ptr, ptr %7, align 8, !tbaa !295, !noalias !1004
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 %indvars.iv.next.i
  store i8 %.sink.i.1, ptr %i.gr, align 1, !tbaa !232
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter698.next.1 = add i64 %niter698, 2         ; 2 uses
  %niter698.ncmp.1 = icmp eq i64 %niter698.next.1, %unroll_iter697
  br i1 %niter698.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i149, !llvm.loop !962

._crit_edge25.i:                                  ; preds = %_ZN4llvm7replaceIRNS_11SmallVectorIjLj8EEEjEEvOT_RKT0_S8_.exit.i, %_ZN4llvm4sortIRNS_11SmallVectorIjLj8EEEEEvOT_.exit.i
  %.pre3360.i = phi ptr [ %.pre33.pre.i, %_ZN4llvm4sortIRNS_11SmallVectorIjLj8EEEEEvOT_.exit.i ], [ %.pre3364.i, %_ZN4llvm7replaceIRNS_11SmallVectorIjLj8EEEjEEvOT_RKT0_S8_.exit.i ] ; 2 uses
  %i.gs = icmp eq ptr %.pre3360.i, %i.eb
  br i1 %i.gs, label %_ZN4llvm11HvxSelector21getPerfectCompletionsEN12_GLOBAL__N_111ShuffleMaskEj.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge25.i
  call void @free(ptr noundef %.pre3360.i) #23
  br label %_ZN4llvm11HvxSelector21getPerfectCompletionsEN12_GLOBAL__N_111ShuffleMaskEj.exit

bb.p:                                             ; preds = %_ZN4llvm7replaceIRNS_11SmallVectorIjLj8EEEjEEvOT_RKT0_S8_.exit.i, %.lr.ph24.i
  %.02323.i = phi i32 [ 0, %.lr.ph24.i ], [ %.lcssa.i, %_ZN4llvm7replaceIRNS_11SmallVectorIjLj8EEEjEEvOT_RKT0_S8_.exit.i ] ; 3 uses
  %i.gt = zext i32 %.02323.i to i64
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %.pre3364.i, i64 %i.gt
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !34 ; 4 uses
  %i.gw = add i32 %.02323.i, 1                    ; 2 uses
  %.not3114.i = icmp eq i32 %i.gw, %i.el
  br i1 %.not3114.i, label %.critedge.i, label %.lr.ph17.preheader.i

.lr.ph17.preheader.i:                             ; preds = %bb.p
  %i.gx = sub i32 %i.el, %.02323.i
  br label %.lr.ph17.i

.lr.ph17.i:                                       ; preds = %bb.q, %.lr.ph17.preheader.i
  %i.gy = phi i32 [ %i.he, %bb.q ], [ %i.gw, %.lr.ph17.preheader.i ] ; 3 uses
  %.015.i = phi i32 [ %i.hd, %bb.q ], [ 1, %.lr.ph17.preheader.i ] ; 2 uses
  %i.gz = zext i32 %i.gy to i64
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %.pre3364.i, i64 %i.gz
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !34
  %i.hc = icmp eq i32 %i.gv, %i.hb
  br i1 %i.hc, label %bb.q, label %.critedge.i

bb.q:                                             ; preds = %.lr.ph17.i
  %i.hd = add i32 %.015.i, 1
  %i.he = add i32 %i.gy, 1                        ; 2 uses
  %.not31.i = icmp eq i32 %i.he, %i.el
  br i1 %.not31.i, label %.critedge.i, label %.lr.ph17.i, !llvm.loop !963

.critedge.i:                                      ; preds = %bb.q, %.lr.ph17.i, %bb.p
  %.0.lcssa.i = phi i32 [ 1, %bb.p ], [ %.015.i, %.lr.ph17.i ], [ %i.gx, %bb.q ]
  %.lcssa.i = phi i32 [ %i.el, %bb.p ], [ %i.gy, %.lr.ph17.i ], [ %i.el, %bb.q ] ; 2 uses
  %i.hf = call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.gv)
  %i.hg = icmp ult i32 %i.hf, %.0.lcssa.i
  br i1 %i.hg, label %bb.r, label %_ZN4llvm7replaceIRNS_11SmallVectorIjLj8EEEjEEvOT_RKT0_S8_.exit.i

bb.r:                                             ; preds = %.critedge.i
  %i.hh = load i32, ptr %i.de, align 8, !tbaa !32, !alias.scope !1004 ; 2 uses
  %i.hi = zext i32 %i.hh to i64
  %.idx.i.i = shl nuw nsw i64 %i.hi, 2            ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.em, i64 %.idx.i.i
  %.not7.i.i.i = icmp eq i32 %i.hh, 0
  br i1 %.not7.i.i.i, label %_ZN4llvm7replaceIRNS_11SmallVectorIjLj8EEEjEEvOT_RKT0_S8_.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.r
  %i.hk = add nsw i64 %.idx.i.i, -4               ; 2 uses
  %i.hl = lshr exact i64 %i.hk, 2
  %i.hm = add nuw nsw i64 %i.hl, 1                ; 2 uses
  %min.iters.check560 = icmp ult i64 %i.hk, 28
  br i1 %min.iters.check560, label %.lr.ph.i.i.i.preheader687, label %vector.ph561

vector.ph561:                                     ; preds = %.lr.ph.i.i.i.preheader
  %n.vec562 = and i64 %i.hm, 9223372036854775800  ; 3 uses
  %i.hn = shl i64 %n.vec562, 2
  %i.ho = getelementptr i8, ptr %i.em, i64 %i.hn
  %broadcast.splatinsert563 = insertelement <4 x i32> poison, i32 %i.gv, i64 0
  %broadcast.splat564 = shufflevector <4 x i32> %broadcast.splatinsert563, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body565

vector.body565:                                   ; preds = %pred.store.continue589, %vector.ph561
  %index566 = phi i64 [ 0, %vector.ph561 ], [ %index.next590, %pred.store.continue589 ] ; 2 uses
  %i.hp = shl i64 %index566, 2                    ; 8 uses
  %next.gep = getelementptr i8, ptr %i.em, i64 %i.hp ; 3 uses
  %i.hq = getelementptr i8, ptr %i.em, i64 %i.hp
  %next.gep567.a = getelementptr i8, ptr %i.hq, i64 4
  %i.hr = getelementptr i8, ptr %i.em, i64 %i.hp
  %next.gep568.a = getelementptr i8, ptr %i.hr, i64 8
  %i.hs = getelementptr i8, ptr %i.em, i64 %i.hp
  %next.gep569.a = getelementptr i8, ptr %i.hs, i64 12
  %i.ht = getelementptr i8, ptr %i.em, i64 %i.hp
  %next.gep570.a = getelementptr i8, ptr %i.ht, i64 16
  %i.hu = getelementptr i8, ptr %i.em, i64 %i.hp
  %next.gep571.a = getelementptr i8, ptr %i.hu, i64 20
  %i.hv = getelementptr i8, ptr %i.em, i64 %i.hp
  %next.gep572.a = getelementptr i8, ptr %i.hv, i64 24
  %i.hw = getelementptr i8, ptr %i.em, i64 %i.hp
  %next.gep573 = getelementptr i8, ptr %i.hw, i64 28
  %i.hx = getelementptr i8, ptr %next.gep, i64 16
  %wide.load574.a = load <4 x i32>, ptr %next.gep, align 4, !tbaa !34
  %wide.load575 = load <4 x i32>, ptr %i.hx, align 4, !tbaa !34
  %i.hy = icmp eq <4 x i32> %wide.load574.a, %broadcast.splat564 ; 4 uses
  %i.hz = icmp eq <4 x i32> %wide.load575, %broadcast.splat564 ; 4 uses
  %i.ia = extractelement <4 x i1> %i.hy, i64 0
  br i1 %i.ia, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body565
  store i32 0, ptr %next.gep, align 4, !tbaa !34
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body565
  %i.ib = extractelement <4 x i1> %i.hy, i64 1
  br i1 %i.ib, label %pred.store.if576, label %pred.store.continue577

pred.store.if576:                                 ; preds = %pred.store.continue
  store i32 0, ptr %next.gep567.a, align 4, !tbaa !34
  br label %pred.store.continue577

pred.store.continue577:                           ; preds = %pred.store.if576, %pred.store.continue
  %i.ic = extractelement <4 x i1> %i.hy, i64 2
  br i1 %i.ic, label %pred.store.if578, label %pred.store.continue579

pred.store.if578:                                 ; preds = %pred.store.continue577
  store i32 0, ptr %next.gep568.a, align 4, !tbaa !34
  br label %pred.store.continue579

pred.store.continue579:                           ; preds = %pred.store.if578, %pred.store.continue577
  %i.id = extractelement <4 x i1> %i.hy, i64 3
  br i1 %i.id, label %pred.store.if580, label %pred.store.continue581

pred.store.if580:                                 ; preds = %pred.store.continue579
  store i32 0, ptr %next.gep569.a, align 4, !tbaa !34
  br label %pred.store.continue581

pred.store.continue581:                           ; preds = %pred.store.if580, %pred.store.continue579
  %i.ie = extractelement <4 x i1> %i.hz, i64 0
  br i1 %i.ie, label %pred.store.if582, label %pred.store.continue583

pred.store.if582:                                 ; preds = %pred.store.continue581
  store i32 0, ptr %next.gep570.a, align 4, !tbaa !34
  br label %pred.store.continue583

pred.store.continue583:                           ; preds = %pred.store.if582, %pred.store.continue581
  %i.if = extractelement <4 x i1> %i.hz, i64 1
  br i1 %i.if, label %pred.store.if584, label %pred.store.continue585

pred.store.if584:                                 ; preds = %pred.store.continue583
  store i32 0, ptr %next.gep571.a, align 4, !tbaa !34
  br label %pred.store.continue585

pred.store.continue585:                           ; preds = %pred.store.if584, %pred.store.continue583
  %i.ig = extractelement <4 x i1> %i.hz, i64 2
  br i1 %i.ig, label %pred.store.if586, label %pred.store.continue587

pred.store.if586:                                 ; preds = %pred.store.continue585
  store i32 0, ptr %next.gep572.a, align 4, !tbaa !34
  br label %pred.store.continue587

pred.store.continue587:                           ; preds = %pred.store.if586, %pred.store.continue585
  %i.ih = extractelement <4 x i1> %i.hz, i64 3
  br i1 %i.ih, label %pred.store.if588, label %pred.store.continue589

pred.store.if588:                                 ; preds = %pred.store.continue587
  store i32 0, ptr %next.gep573, align 4, !tbaa !34
  br label %pred.store.continue589

pred.store.continue589:                           ; preds = %pred.store.if588, %pred.store.continue587
  %index.next590 = add nuw i64 %index566, 8       ; 2 uses
  %i.ii = icmp eq i64 %index.next590, %n.vec562
  br i1 %i.ii, label %middle.block591, label %vector.body565, !llvm.loop !964

end_hunk_0
