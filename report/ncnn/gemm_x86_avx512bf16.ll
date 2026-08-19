inline.NumInlined: 5
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 96
loop-unroll.NumUnrolled: 96
begin_hunk_0_@_ZN4ncnn27pack_A_tile_bf16_avx512bf16ERKNS_3MatERS0_iiii:bb.a
  %index741 = phi i64 [ %vec.epilog.resume.val730, %vec.epilog.ph738 ], [ %index.next748, %vec.epilog.vector.body740 ] ; 2 uses
  %i.atk = shl i64 %index741, 2                   ; 2 uses
  %next.gep742 = getelementptr i8, ptr %gep.i, i64 %i.atk
  %next.gep743 = getelementptr i8, ptr %.33230.i, i64 %i.atk
  %wide.vec744 = load <16 x i16>, ptr %next.gep742, align 2, !tbaa !57, !alias.scope !144
  store <16 x i16> %wide.vec744, ptr %next.gep743, align 2, !tbaa !57, !alias.scope !147, !noalias !144
  %index.next748 = add nuw i64 %index741, 8       ; 2 uses
  %i.atl = icmp eq i64 %index.next748, %n.vec739
  br i1 %i.atl, label %vec.epilog.middle.block749, label %vec.epilog.vector.body740, !llvm.loop !151

vec.epilog.middle.block749:                       ; preds = %vec.epilog.vector.body740
  br i1 %cmp.n750, label %.preheader.i, label %.lr.ph220.i.preheader

.lr.ph220.i.preheader:                            ; preds = %vector.memcheck700, %iter.check734, %vec.epilog.iter.check736, %vec.epilog.middle.block749
  %.0219.i.ph = phi i32 [ 0, %iter.check734 ], [ 0, %vector.memcheck700 ], [ %i.asv, %vec.epilog.iter.check736 ], [ %i.asy, %vec.epilog.middle.block749 ]
  %.0343218.i.ph = phi ptr [ %gep.i, %iter.check734 ], [ %gep.i, %vector.memcheck700 ], [ %i.atd, %vec.epilog.iter.check736 ], [ %i.ati, %vec.epilog.middle.block749 ]
  %.34217.i.ph = phi ptr [ %.33230.i, %iter.check734 ], [ %.33230.i, %vector.memcheck700 ], [ %i.ate, %vec.epilog.iter.check736 ], [ %i.atj, %vec.epilog.middle.block749 ]
  br label %.lr.ph220.i

.preheader.i:                                     ; preds = %.lr.ph220.i, %middle.block728, %vec.epilog.middle.block749, %bb.i
  %.34.lcssa.i = phi ptr [ %.33230.i, %bb.i ], [ %i.atj, %vec.epilog.middle.block749 ], [ %i.ate, %middle.block728 ], [ %i.auy, %.lr.ph220.i ] ; 7 uses
  %.0343.lcssa.i = phi ptr [ %gep.i, %bb.i ], [ %i.ati, %vec.epilog.middle.block749 ], [ %i.atd, %middle.block728 ], [ %i.auz, %.lr.ph220.i ] ; 6 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.i ], [ %i.arx, %vec.epilog.middle.block749 ], [ %i.arx, %middle.block728 ], [ %i.arx, %.lr.ph220.i ] ; 5 uses
  %i.atm = icmp slt i32 %.0.lcssa.i, %5
  br i1 %i.atm, label %iter.check683, label %._crit_edge.i

iter.check683:                                    ; preds = %.preheader.i
  %.0343.lcssa.i660 = ptrtoaddr ptr %.0343.lcssa.i to i64
  %.34.lcssa.i659 = ptrtoaddr ptr %.34.lcssa.i to i64
  %i.atn = xor i32 %.0.lcssa.i, -1
  %i.ato = add i32 %5, %i.atn                     ; 3 uses
  %i.atp = zext i32 %i.ato to i64
  %i.atq = add nuw nsw i64 %i.atp, 1              ; 5 uses
  %min.iters.check663 = icmp ult i32 %i.ato, 15
  %i.atr = sub i64 %.0343.lcssa.i660, %.34.lcssa.i659
  %diff.check661 = icmp ugt i64 %i.atr, -256
  %or.cond757 = select i1 %min.iters.check663, i1 true, i1 %diff.check661
  br i1 %or.cond757, label %.lr.ph227.i.preheader, label %vector.main.loop.iter.check664

vector.main.loop.iter.check664:                   ; preds = %iter.check683
  %min.iters.check665 = icmp ult i32 %i.ato, 127
  br i1 %min.iters.check665, label %vec.epilog.ph687, label %vector.ph666

vector.ph666:                                     ; preds = %vector.main.loop.iter.check664
  %i.ats = and i64 %i.atq, 112
  %n.vec667 = and i64 %i.atq, 8589934464          ; 5 uses
  %i.att = trunc i64 %n.vec667 to i32
  %i.atu = add i32 %.0.lcssa.i, %i.att
  %i.atv = shl nuw nsw i64 %n.vec667, 1           ; 2 uses
  %i.atw = getelementptr i8, ptr %.0343.lcssa.i, i64 %i.atv
  %i.atx = getelementptr i8, ptr %.34.lcssa.i, i64 %i.atv ; 2 uses
  br label %vector.body668

vector.body668:                                   ; preds = %vector.body668, %vector.ph666
  %index669 = phi i64 [ 0, %vector.ph666 ], [ %index.next676, %vector.body668 ] ; 2 uses
  %i.aty = shl i64 %index669, 1                   ; 2 uses
  %next.gep670 = getelementptr i8, ptr %.0343.lcssa.i, i64 %i.aty ; 4 uses
  %next.gep671 = getelementptr i8, ptr %.34.lcssa.i, i64 %i.aty ; 4 uses
  %i.atz = getelementptr i8, ptr %next.gep670, i64 64
  %i.aua = getelementptr i8, ptr %next.gep670, i64 128
  %i.aub = getelementptr i8, ptr %next.gep670, i64 192
  %wide.load672 = load <32 x i16>, ptr %next.gep670, align 2, !tbaa !57
  %wide.load673 = load <32 x i16>, ptr %i.atz, align 2, !tbaa !57
  %wide.load674 = load <32 x i16>, ptr %i.aua, align 2, !tbaa !57
  %wide.load675 = load <32 x i16>, ptr %i.aub, align 2, !tbaa !57
  %i.auc = getelementptr i8, ptr %next.gep671, i64 64
  %i.aud = getelementptr i8, ptr %next.gep671, i64 128
  %i.aue = getelementptr i8, ptr %next.gep671, i64 192
  store <32 x i16> %wide.load672, ptr %next.gep671, align 2, !tbaa !57
  store <32 x i16> %wide.load673, ptr %i.auc, align 2, !tbaa !57
  store <32 x i16> %wide.load674, ptr %i.aud, align 2, !tbaa !57
  store <32 x i16> %wide.load675, ptr %i.aue, align 2, !tbaa !57
  %index.next676 = add nuw i64 %index669, 128     ; 2 uses
  %i.auf = icmp eq i64 %index.next676, %n.vec667
  br i1 %i.auf, label %middle.block677, label %vector.body668, !llvm.loop !152

middle.block677:                                  ; preds = %vector.body668
  %cmp.n678 = icmp eq i64 %i.atq, %n.vec667
  br i1 %cmp.n678, label %._crit_edge.i, label %vec.epilog.iter.check685

vec.epilog.iter.check685:                         ; preds = %middle.block677
  %min.epilog.iters.check686 = icmp eq i64 %i.ats, 0
  br i1 %min.epilog.iters.check686, label %.lr.ph227.i.preheader, label %vec.epilog.ph687, !prof !153

vec.epilog.ph687:                                 ; preds = %vector.main.loop.iter.check664, %vec.epilog.iter.check685
  %vec.epilog.resume.val679 = phi i64 [ %n.vec667, %vec.epilog.iter.check685 ], [ 0, %vector.main.loop.iter.check664 ]
  %n.vec688 = and i64 %i.atq, 8589934576          ; 4 uses
  %i.aug = trunc i64 %n.vec688 to i32
  %i.auh = add i32 %.0.lcssa.i, %i.aug
  %i.aui = shl nuw nsw i64 %n.vec688, 1           ; 2 uses
  %i.auj = getelementptr i8, ptr %.0343.lcssa.i, i64 %i.aui
  %i.auk = getelementptr i8, ptr %.34.lcssa.i, i64 %i.aui ; 2 uses
  br label %vec.epilog.vector.body689

vec.epilog.vector.body689:                        ; preds = %vec.epilog.vector.body689, %vec.epilog.ph687
  %index690 = phi i64 [ %vec.epilog.resume.val679, %vec.epilog.ph687 ], [ %index.next694, %vec.epilog.vector.body689 ] ; 2 uses
  %i.aul = shl i64 %index690, 1                   ; 2 uses
  %next.gep691 = getelementptr i8, ptr %.0343.lcssa.i, i64 %i.aul
  %next.gep692 = getelementptr i8, ptr %.34.lcssa.i, i64 %i.aul
  %wide.load693 = load <16 x i16>, ptr %next.gep691, align 2, !tbaa !57
  store <16 x i16> %wide.load693, ptr %next.gep692, align 2, !tbaa !57
  %index.next694 = add nuw i64 %index690, 16      ; 2 uses
  %i.aum = icmp eq i64 %index.next694, %n.vec688
  br i1 %i.aum, label %vec.epilog.middle.block695, label %vec.epilog.vector.body689, !llvm.loop !154

vec.epilog.middle.block695:                       ; preds = %vec.epilog.vector.body689
  %cmp.n696 = icmp eq i64 %i.atq, %n.vec688
  br i1 %cmp.n696, label %._crit_edge.i, label %.lr.ph227.i.preheader

.lr.ph227.i.preheader:                            ; preds = %iter.check683, %vec.epilog.iter.check685, %vec.epilog.middle.block695
  %.1226.i.ph = phi i32 [ %.0.lcssa.i, %iter.check683 ], [ %i.atu, %vec.epilog.iter.check685 ], [ %i.auh, %vec.epilog.middle.block695 ] ; 4 uses
  %.1344225.i.ph = phi ptr [ %.0343.lcssa.i, %iter.check683 ], [ %i.atw, %vec.epilog.iter.check685 ], [ %i.auj, %vec.epilog.middle.block695 ] ; 2 uses
  %.35224.i.ph = phi ptr [ %.34.lcssa.i, %iter.check683 ], [ %i.atx, %vec.epilog.iter.check685 ], [ %i.auk, %vec.epilog.middle.block695 ] ; 2 uses
  %i.aun = sub i32 %5, %.1226.i.ph
  %xtraiter892 = and i32 %i.aun, 7                ; 2 uses
  %lcmp.mod893.not = icmp eq i32 %xtraiter892, 0
  br i1 %lcmp.mod893.not, label %.lr.ph227.i.prol.loopexit, label %.lr.ph227.i.prol

.lr.ph227.i.prol:                                 ; preds = %.lr.ph227.i.preheader, %.lr.ph227.i.prol
  %.1226.i.prol = phi i32 [ %i.aur, %.lr.ph227.i.prol ], [ %.1226.i.ph, %.lr.ph227.i.preheader ]
  %.1344225.i.prol = phi ptr [ %i.auq, %.lr.ph227.i.prol ], [ %.1344225.i.ph, %.lr.ph227.i.preheader ] ; 2 uses
  %.35224.i.prol = phi ptr [ %i.aup, %.lr.ph227.i.prol ], [ %.35224.i.ph, %.lr.ph227.i.preheader ] ; 2 uses
  %prol.iter894 = phi i32 [ %prol.iter894.next, %.lr.ph227.i.prol ], [ 0, %.lr.ph227.i.preheader ]
  %i.auo = load i16, ptr %.1344225.i.prol, align 2, !tbaa !57
  store i16 %i.auo, ptr %.35224.i.prol, align 2, !tbaa !57
  %i.aup = getelementptr inbounds nuw i8, ptr %.35224.i.prol, i64 2 ; 3 uses
  %i.auq = getelementptr inbounds nuw i8, ptr %.1344225.i.prol, i64 2 ; 2 uses
  %i.aur = add nuw nsw i32 %.1226.i.prol, 1       ; 2 uses
  %prol.iter894.next = add i32 %prol.iter894, 1   ; 2 uses
  %prol.iter894.cmp.not = icmp eq i32 %prol.iter894.next, %xtraiter892
  br i1 %prol.iter894.cmp.not, label %.lr.ph227.i.prol.loopexit, label %.lr.ph227.i.prol, !llvm.loop !155

.lr.ph227.i.prol.loopexit:                        ; preds = %.lr.ph227.i.prol, %.lr.ph227.i.preheader
  %.lcssa759.unr = phi ptr [ poison, %.lr.ph227.i.preheader ], [ %i.aup, %.lr.ph227.i.prol ]
  %.1226.i.unr = phi i32 [ %.1226.i.ph, %.lr.ph227.i.preheader ], [ %i.aur, %.lr.ph227.i.prol ]
  %.1344225.i.unr = phi ptr [ %.1344225.i.ph, %.lr.ph227.i.preheader ], [ %i.auq, %.lr.ph227.i.prol ]
  %.35224.i.unr = phi ptr [ %.35224.i.ph, %.lr.ph227.i.preheader ], [ %i.aup, %.lr.ph227.i.prol ]
  %i.aus = sub i32 %.1226.i.ph, %5
  %i.aut = icmp ugt i32 %i.aus, -8
  br i1 %i.aut, label %._crit_edge.i, label %.lr.ph227.i

.lr.ph220.i:                                      ; preds = %.lr.ph220.i.preheader, %.lr.ph220.i
  %.0219.i = phi i32 [ %i.ava, %.lr.ph220.i ], [ %.0219.i.ph, %.lr.ph220.i.preheader ]
  %.0343218.i = phi ptr [ %i.auz, %.lr.ph220.i ], [ %.0343218.i.ph, %.lr.ph220.i.preheader ] ; 3 uses
  %.34217.i = phi ptr [ %i.auy, %.lr.ph220.i ], [ %.34217.i.ph, %.lr.ph220.i.preheader ] ; 3 uses
  %i.auu = load i16, ptr %.0343218.i, align 2, !tbaa !57
  store i16 %i.auu, ptr %.34217.i, align 2, !tbaa !57
  %i.auv = getelementptr inbounds nuw i8, ptr %.0343218.i, i64 2
  %i.auw = load i16, ptr %i.auv, align 2, !tbaa !57
  %i.aux = getelementptr inbounds nuw i8, ptr %.34217.i, i64 2
  store i16 %i.auw, ptr %i.aux, align 2, !tbaa !57
  %i.auy = getelementptr inbounds nuw i8, ptr %.34217.i, i64 4 ; 2 uses
  %i.auz = getelementptr inbounds nuw i8, ptr %.0343218.i, i64 4 ; 2 uses
  %i.ava = add nuw nsw i32 %.0219.i, 2            ; 2 uses
  %i.avb = or disjoint i32 %i.ava, 1
  %i.avc = icmp slt i32 %i.avb, %5
  br i1 %i.avc, label %.lr.ph220.i, label %.preheader.i, !llvm.loop !156

.lr.ph227.i:                                      ; preds = %.lr.ph227.i.prol.loopexit, %.lr.ph227.i
  %.1226.i = phi i32 [ %i.awb, %.lr.ph227.i ], [ %.1226.i.unr, %.lr.ph227.i.prol.loopexit ]
  %.1344225.i = phi ptr [ %i.awa, %.lr.ph227.i ], [ %.1344225.i.unr, %.lr.ph227.i.prol.loopexit ] ; 9 uses
  %.35224.i = phi ptr [ %i.avz, %.lr.ph227.i ], [ %.35224.i.unr, %.lr.ph227.i.prol.loopexit ] ; 9 uses
  %i.avd = load i16, ptr %.1344225.i, align 2, !tbaa !57
  store i16 %i.avd, ptr %.35224.i, align 2, !tbaa !57
  %i.ave = getelementptr inbounds nuw i8, ptr %.35224.i, i64 2
  %i.avf = getelementptr inbounds nuw i8, ptr %.1344225.i, i64 2
  %i.avg = load i16, ptr %i.avf, align 2, !tbaa !57
  store i16 %i.avg, ptr %i.ave, align 2, !tbaa !57
  %i.avh = getelementptr inbounds nuw i8, ptr %.35224.i, i64 4
  %i.avi = getelementptr inbounds nuw i8, ptr %.1344225.i, i64 4
  %i.avj = load i16, ptr %i.avi, align 2, !tbaa !57
  store i16 %i.avj, ptr %i.avh, align 2, !tbaa !57
  %i.avk = getelementptr inbounds nuw i8, ptr %.35224.i, i64 6
  %i.avl = getelementptr inbounds nuw i8, ptr %.1344225.i, i64 6
  %i.avm = load i16, ptr %i.avl, align 2, !tbaa !57
  store i16 %i.avm, ptr %i.avk, align 2, !tbaa !57
  %i.avn = getelementptr inbounds nuw i8, ptr %.35224.i, i64 8
  %i.avo = getelementptr inbounds nuw i8, ptr %.1344225.i, i64 8
  %i.avp = load i16, ptr %i.avo, align 2, !tbaa !57
  store i16 %i.avp, ptr %i.avn, align 2, !tbaa !57
  %i.avq = getelementptr inbounds nuw i8, ptr %.35224.i, i64 10
  %i.avr = getelementptr inbounds nuw i8, ptr %.1344225.i, i64 10
  %i.avs = load i16, ptr %i.avr, align 2, !tbaa !57
  store i16 %i.avs, ptr %i.avq, align 2, !tbaa !57
  %i.avt = getelementptr inbounds nuw i8, ptr %.35224.i, i64 12
  %i.avu = getelementptr inbounds nuw i8, ptr %.1344225.i, i64 12
  %i.avv = load i16, ptr %i.avu, align 2, !tbaa !57
  store i16 %i.avv, ptr %i.avt, align 2, !tbaa !57
  %i.avw = getelementptr inbounds nuw i8, ptr %.35224.i, i64 14
  %i.avx = getelementptr inbounds nuw i8, ptr %.1344225.i, i64 14
  %i.avy = load i16, ptr %i.avx, align 2, !tbaa !57
  store i16 %i.avy, ptr %i.avw, align 2, !tbaa !57
  %i.avz = getelementptr inbounds nuw i8, ptr %.35224.i, i64 16 ; 2 uses
  %i.awa = getelementptr inbounds nuw i8, ptr %.1344225.i, i64 16
  %i.awb = add nuw nsw i32 %.1226.i, 8            ; 2 uses
  %exitcond323.not.i.7 = icmp eq i32 %i.awb, %5
  br i1 %exitcond323.not.i.7, label %._crit_edge.i, label %.lr.ph227.i, !llvm.loop !157

._crit_edge.i:                                    ; preds = %.lr.ph227.i.prol.loopexit, %.lr.ph227.i, %middle.block677, %vec.epilog.middle.block695, %.preheader.i
  %.35.lcssa.i = phi ptr [ %.34.lcssa.i, %.preheader.i ], [ %i.auk, %vec.epilog.middle.block695 ], [ %i.atx, %middle.block677 ], [ %.lcssa759.unr, %.lr.ph227.i.prol.loopexit ], [ %i.avz, %.lr.ph227.i ]
  %indvars.iv.next325.i = add nsw i64 %indvars.iv324.i, 1 ; 2 uses
  %exitcond327.not.i = icmp eq i64 %indvars.iv.next325.i, %wide.trip.count.i
  br i1 %exitcond327.not.i, label %_ZN4ncnnL16pack_A_tile_bf16ERKNS_3MatERS0_iiii.exit, label %bb.i, !llvm.loop !158

_ZN4ncnnL16pack_A_tile_bf16ERKNS_3MatERS0_iiii.exit: ; preds = %._crit_edge.i, %.preheader4.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32>, ptr, <16 x i32>, <16 x i1>, i32 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32>, ptr, <8 x i32>, <8 x i32>, i8 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4ncnn37transpose_pack_A_tile_bf16_avx512bf16ERKNS_3MatERS0_iiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !tbaa !9     ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 22 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !16
  %i.e = icmp eq i32 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.i = load i32, ptr %i.h, align 4
  %i.j = sext i32 %i.i to i64
  %i.k = select i1 %i.e, i64 %i.g, i64 %i.j       ; 77 uses
  %i.l = icmp sgt i32 %3, 15
  br i1 %i.l, label %.lr.ph176.i, label %.preheader136.i

.lr.ph176.i:                                      ; preds = %bb.a
  %i.m = sext i32 %4 to i64
  %i.n = mul i64 %i.k, %i.m                       ; 4 uses
  %i.o = icmp ne i32 %i.b, 16
  %i.p = icmp slt i32 %5, 16
  %.idx627.i = shl i64 %i.k, 5
  %.idx626.i = shl i64 %i.k, 4
  %i.q = icmp ne i32 %i.b, 4
  %i.r = icmp slt i32 %5, 4
  %.idx625.i = shl i64 %i.k, 3                    ; 2 uses
  %i.s = icmp eq i32 %i.b, 1
  %i.t = icmp sgt i32 %5, 1
  %.idx624.i = shl i64 %i.k, 2                    ; 3 uses
  %i.u = and i32 %5, -2                           ; 2 uses
  %i.v = zext nneg i32 %3 to i64                  ; 5 uses
  %i.w = sext i32 %2 to i64                       ; 4 uses
  %i.x = sext i32 %i.b to i64                     ; 4 uses
  %brmerge.i = or i1 %i.p, %i.o
  %brmerge316.i = or i1 %i.r, %i.q
  br i1 %brmerge.i, label %.lr.ph176.i.split.us, label %.lr.ph.i.preheader

.lr.ph176.i.split.us:                             ; preds = %.lr.ph176.i
  %i.y = icmp slt i32 %5, 8
  %i.z = icmp ne i32 %i.b, 8
  %brmerge313.i = or i1 %i.y, %i.z
  br i1 %brmerge313.i, label %.lr.ph176.i.split.us.split.us, label %.loopexit145.i.us

.lr.ph176.i.split.us.split.us:                    ; preds = %.lr.ph176.i.split.us
  br i1 %brmerge316.i, label %.lr.ph176.i.split.us.split.us.split.us, label %.loopexit145.i.us.us.preheader

.loopexit145.i.us.us.preheader:                   ; preds = %.lr.ph176.i.split.us.split.us
  %i.aa = add nsw i32 %5, -4                      ; 2 uses
  %i.ab = lshr i32 %i.aa, 2                       ; 2 uses
  %i.ac = add nuw nsw i32 %i.ab, 1                ; 2 uses
  %i.ad = icmp eq i32 %i.ab, 0
  %unroll_iter = and i32 %i.ac, 2147483646
  %i.ae = and i32 %i.aa, 4
  %lcmp.mod.not.not = icmp eq i32 %i.ae, 0
  %lcmp.mod240 = trunc i32 %i.ac to i1
  br label %.loopexit145.i.us.us

.lr.ph176.i.split.us.split.us.split.us:           ; preds = %.lr.ph176.i.split.us.split.us
  br i1 %i.s, label %.loopexit145.i.us.us.us.us.preheader, label %.loopexit145.i.us.us.us.preheader

.loopexit145.i.us.us.us.us.preheader:             ; preds = %.lr.ph176.i.split.us.split.us.split.us
  %i.af = add i32 %5, -2                          ; 2 uses
  %i.ag = lshr i32 %i.af, 1                       ; 2 uses
  %i.ah = add nuw i32 %i.ag, 1                    ; 2 uses
  %i.ai = icmp eq i32 %i.ag, 0
  %unroll_iter246 = and i32 %i.ah, -2
  %i.aj = and i32 %i.af, 2
  %lcmp.mod242.not.not = icmp eq i32 %i.aj, 0
  %lcmp.mod245 = trunc i32 %i.ah to i1
  br label %.loopexit145.i.us.us.us.us

.loopexit145.i.us.us.us.preheader:                ; preds = %.lr.ph176.i.split.us.split.us.split.us
  %umax = tail call i64 @llvm.umax.i64(i64 %i.v, i64 31)
  %i.ak = and i64 %umax, 2147483632
  br label %.preheader136.loopexit.i

.loopexit145.i.us.us.us.us:                       ; preds = %.loopexit145.i.us.us.us.us.preheader, %.loopexit138.i.us.us.us.us
  %indvars.iv.i.us.us.us.us = phi i64 [ %indvars.iv.next.i.us.us.us.us, %.loopexit138.i.us.us.us.us ], [ 0, %.loopexit145.i.us.us.us.us.preheader ] ; 2 uses
  %.0549175.i.us.us.us.us = phi ptr [ %.9.i.us.us.us.us, %.loopexit138.i.us.us.us.us ], [ %.val, %.loopexit145.i.us.us.us.us.preheader ] ; 3 uses
  %i.al = load ptr, ptr %0, align 8, !tbaa !9
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %i.n
  %i.an = add nsw i64 %indvars.iv.i.us.us.us.us, %i.w
  %i.ao = mul nuw nsw i64 %i.an, %i.x
  %i.ap = getelementptr inbounds [2 x i8], ptr %i.am, i64 %i.ao ; 3 uses
  br i1 %i.t, label %.lr.ph165.i.us.us.us.us.preheader, label %.preheader137.i.us.us.us.us

.lr.ph165.i.us.us.us.us.preheader:                ; preds = %.loopexit145.i.us.us.us.us
  br i1 %i.ai, label %.lr.ph165.i.us.us.us.us.epil.preheader, label %.lr.ph165.i.us.us.us.us

.lr.ph165.i.us.us.us.us:                          ; preds = %.lr.ph165.i.us.us.us.us.preheader, %.lr.ph165.i.us.us.us.us
  %.7164.i.us.us.us.us = phi ptr [ %i.be, %.lr.ph165.i.us.us.us.us ], [ %.0549175.i.us.us.us.us, %.lr.ph165.i.us.us.us.us.preheader ] ; 5 uses
  %.6577163.i.us.us.us.us = phi ptr [ %i.bf, %.lr.ph165.i.us.us.us.us ], [ %i.ap, %.lr.ph165.i.us.us.us.us.preheader ] ; 3 uses
  %niter247 = phi i32 [ %niter247.next.1, %.lr.ph165.i.us.us.us.us ], [ 0, %.lr.ph165.i.us.us.us.us.preheader ]
  %i.aq = load <16 x i16>, ptr %.6577163.i.us.us.us.us, align 1, !tbaa !17 ; 2 uses
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %.6577163.i.us.us.us.us, i64 %i.k
  %i.as = load <16 x i16>, ptr %i.ar, align 1, !tbaa !17 ; 2 uses
  %i.at = shufflevector <16 x i16> %i.aq, <16 x i16> %i.as, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.au = shufflevector <16 x i16> %i.aq, <16 x i16> %i.as, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i16> %i.at, ptr %.7164.i.us.us.us.us, align 1, !tbaa !17
  %i.av = getelementptr inbounds nuw i8, ptr %.7164.i.us.us.us.us, i64 32
  store <16 x i16> %i.au, ptr %i.av, align 1, !tbaa !17
  %i.aw = getelementptr inbounds nuw i8, ptr %.7164.i.us.us.us.us, i64 64
  %i.ax = getelementptr inbounds nuw i8, ptr %.6577163.i.us.us.us.us, i64 %.idx624.i ; 3 uses
  %i.ay = load <16 x i16>, ptr %i.ax, align 1, !tbaa !17 ; 2 uses
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %i.k
  %i.ba = load <16 x i16>, ptr %i.az, align 1, !tbaa !17 ; 2 uses
  %i.bb = shufflevector <16 x i16> %i.ay, <16 x i16> %i.ba, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bc = shufflevector <16 x i16> %i.ay, <16 x i16> %i.ba, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i16> %i.bb, ptr %i.aw, align 1, !tbaa !17
  %i.bd = getelementptr inbounds nuw i8, ptr %.7164.i.us.us.us.us, i64 96
  store <16 x i16> %i.bc, ptr %i.bd, align 1, !tbaa !17
  %i.be = getelementptr inbounds nuw i8, ptr %.7164.i.us.us.us.us, i64 128 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.idx624.i ; 3 uses
  %niter247.next.1 = add nuw nsw i32 %niter247, 2 ; 2 uses
  %niter247.ncmp.1.not = icmp eq i32 %niter247.next.1, %unroll_iter246
  br i1 %niter247.ncmp.1.not, label %.preheader137.i.us.us.us.us.loopexit.unr-lcssa, label %.lr.ph165.i.us.us.us.us, !llvm.loop !159

.preheader137.i.us.us.us.us.loopexit.unr-lcssa:   ; preds = %.lr.ph165.i.us.us.us.us
  br i1 %lcmp.mod242.not.not, label %.lr.ph165.i.us.us.us.us.epil.preheader, label %.preheader137.i.us.us.us.us

.lr.ph165.i.us.us.us.us.epil.preheader:           ; preds = %.preheader137.i.us.us.us.us.loopexit.unr-lcssa, %.lr.ph165.i.us.us.us.us.preheader
  %.7164.i.us.us.us.us.epil.init = phi ptr [ %.0549175.i.us.us.us.us, %.lr.ph165.i.us.us.us.us.preheader ], [ %i.be, %.preheader137.i.us.us.us.us.loopexit.unr-lcssa ] ; 3 uses
  %.6577163.i.us.us.us.us.epil.init = phi ptr [ %i.ap, %.lr.ph165.i.us.us.us.us.preheader ], [ %i.bf, %.preheader137.i.us.us.us.us.loopexit.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod245)
  %i.bg = load <16 x i16>, ptr %.6577163.i.us.us.us.us.epil.init, align 1, !tbaa !17 ; 2 uses
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %.6577163.i.us.us.us.us.epil.init, i64 %i.k
  %i.bi = load <16 x i16>, ptr %i.bh, align 1, !tbaa !17 ; 2 uses
  %i.bj = shufflevector <16 x i16> %i.bg, <16 x i16> %i.bi, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bk = shufflevector <16 x i16> %i.bg, <16 x i16> %i.bi, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i16> %i.bj, ptr %.7164.i.us.us.us.us.epil.init, align 1, !tbaa !17
  %i.bl = getelementptr inbounds nuw i8, ptr %.7164.i.us.us.us.us.epil.init, i64 32
  store <16 x i16> %i.bk, ptr %i.bl, align 1, !tbaa !17
  %i.bm = getelementptr inbounds nuw i8, ptr %.7164.i.us.us.us.us.epil.init, i64 64
  %i.bn = getelementptr inbounds nuw i8, ptr %.6577163.i.us.us.us.us.epil.init, i64 %.idx624.i
  br label %.preheader137.i.us.us.us.us

.preheader137.i.us.us.us.us:                      ; preds = %.lr.ph165.i.us.us.us.us.epil.preheader, %.preheader137.i.us.us.us.us.loopexit.unr-lcssa, %.loopexit145.i.us.us.us.us
  %.0584.lcssa.i.us.us.us.us = phi i32 [ 0, %.loopexit145.i.us.us.us.us ], [ %i.u, %.preheader137.i.us.us.us.us.loopexit.unr-lcssa ], [ %i.u, %.lr.ph165.i.us.us.us.us.epil.preheader ] ; 5 uses
  %.6577.lcssa.i.us.us.us.us = phi ptr [ %i.ap, %.loopexit145.i.us.us.us.us ], [ %i.bf, %.preheader137.i.us.us.us.us.loopexit.unr-lcssa ], [ %i.bn, %.lr.ph165.i.us.us.us.us.epil.preheader ] ; 2 uses
  %.7.lcssa.i.us.us.us.us = phi ptr [ %.0549175.i.us.us.us.us, %.loopexit145.i.us.us.us.us ], [ %i.be, %.preheader137.i.us.us.us.us.loopexit.unr-lcssa ], [ %i.bm, %.lr.ph165.i.us.us.us.us.epil.preheader ] ; 3 uses
  %i.bo = icmp slt i32 %.0584.lcssa.i.us.us.us.us, %5
  br i1 %i.bo, label %.lr.ph172.i.us.us.us.us.preheader, label %.loopexit138.i.us.us.us.us

.lr.ph172.i.us.us.us.us.preheader:                ; preds = %.preheader137.i.us.us.us.us
  %i.bp = sub i32 %5, %.0584.lcssa.i.us.us.us.us
  %xtraiter248 = and i32 %i.bp, 7                 ; 2 uses
  %lcmp.mod249.not = icmp eq i32 %xtraiter248, 0
  br i1 %lcmp.mod249.not, label %.lr.ph172.i.us.us.us.us.prol.loopexit, label %.lr.ph172.i.us.us.us.us.prol

.lr.ph172.i.us.us.us.us.prol:                     ; preds = %.lr.ph172.i.us.us.us.us.preheader, %.lr.ph172.i.us.us.us.us.prol
  %.8171.i.us.us.us.us.prol = phi ptr [ %i.br, %.lr.ph172.i.us.us.us.us.prol ], [ %.7.lcssa.i.us.us.us.us, %.lr.ph172.i.us.us.us.us.preheader ] ; 2 uses
  %.7578170.i.us.us.us.us.prol = phi ptr [ %i.bs, %.lr.ph172.i.us.us.us.us.prol ], [ %.6577.lcssa.i.us.us.us.us, %.lr.ph172.i.us.us.us.us.preheader ] ; 2 uses
  %.1585169.i.us.us.us.us.prol = phi i32 [ %i.bt, %.lr.ph172.i.us.us.us.us.prol ], [ %.0584.lcssa.i.us.us.us.us, %.lr.ph172.i.us.us.us.us.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph172.i.us.us.us.us.prol ], [ 0, %.lr.ph172.i.us.us.us.us.preheader ]
  %i.bq = load <4 x i64>, ptr %.7578170.i.us.us.us.us.prol, align 1, !tbaa !17
  store <4 x i64> %i.bq, ptr %.8171.i.us.us.us.us.prol, align 1, !tbaa !17
  %i.br = getelementptr inbounds nuw i8, ptr %.8171.i.us.us.us.us.prol, i64 32 ; 3 uses
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %.7578170.i.us.us.us.us.prol, i64 %i.k ; 2 uses
  %i.bt = add nuw nsw i32 %.1585169.i.us.us.us.us.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter248
  br i1 %prol.iter.cmp.not, label %.lr.ph172.i.us.us.us.us.prol.loopexit, label %.lr.ph172.i.us.us.us.us.prol, !llvm.loop !160

.lr.ph172.i.us.us.us.us.prol.loopexit:            ; preds = %.lr.ph172.i.us.us.us.us.prol, %.lr.ph172.i.us.us.us.us.preheader
  %.lcssa232.unr = phi ptr [ poison, %.lr.ph172.i.us.us.us.us.preheader ], [ %i.br, %.lr.ph172.i.us.us.us.us.prol ]
  %.8171.i.us.us.us.us.unr = phi ptr [ %.7.lcssa.i.us.us.us.us, %.lr.ph172.i.us.us.us.us.preheader ], [ %i.br, %.lr.ph172.i.us.us.us.us.prol ]
  %.7578170.i.us.us.us.us.unr = phi ptr [ %.6577.lcssa.i.us.us.us.us, %.lr.ph172.i.us.us.us.us.preheader ], [ %i.bs, %.lr.ph172.i.us.us.us.us.prol ]
  %.1585169.i.us.us.us.us.unr = phi i32 [ %.0584.lcssa.i.us.us.us.us, %.lr.ph172.i.us.us.us.us.preheader ], [ %i.bt, %.lr.ph172.i.us.us.us.us.prol ]
  %i.bu = sub i32 %.0584.lcssa.i.us.us.us.us, %5
  %i.bv = icmp ugt i32 %i.bu, -8
  br i1 %i.bv, label %.loopexit138.i.us.us.us.us, label %.lr.ph172.i.us.us.us.us

.lr.ph172.i.us.us.us.us:                          ; preds = %.lr.ph172.i.us.us.us.us.prol.loopexit, %.lr.ph172.i.us.us.us.us
  %.8171.i.us.us.us.us = phi ptr [ %i.cs, %.lr.ph172.i.us.us.us.us ], [ %.8171.i.us.us.us.us.unr, %.lr.ph172.i.us.us.us.us.prol.loopexit ] ; 9 uses
  %.7578170.i.us.us.us.us = phi ptr [ %i.ct, %.lr.ph172.i.us.us.us.us ], [ %.7578170.i.us.us.us.us.unr, %.lr.ph172.i.us.us.us.us.prol.loopexit ] ; 2 uses
  %.1585169.i.us.us.us.us = phi i32 [ %i.cu, %.lr.ph172.i.us.us.us.us ], [ %.1585169.i.us.us.us.us.unr, %.lr.ph172.i.us.us.us.us.prol.loopexit ]
  %i.bw = load <4 x i64>, ptr %.7578170.i.us.us.us.us, align 1, !tbaa !17
  store <4 x i64> %i.bw, ptr %.8171.i.us.us.us.us, align 1, !tbaa !17
  %i.bx = getelementptr inbounds nuw i8, ptr %.8171.i.us.us.us.us, i64 32
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %.7578170.i.us.us.us.us, i64 %i.k ; 2 uses
  %i.bz = load <4 x i64>, ptr %i.by, align 1, !tbaa !17
  store <4 x i64> %i.bz, ptr %i.bx, align 1, !tbaa !17
  %i.ca = getelementptr inbounds nuw i8, ptr %.8171.i.us.us.us.us, i64 64
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %i.k ; 2 uses
  %i.cc = load <4 x i64>, ptr %i.cb, align 1, !tbaa !17
end_hunk_0
begin_hunk_1_@_ZN4ncnn37transpose_pack_A_tile_bf16_avx512bf16ERKNS_3MatERS0_iiii:bb.a
  %i.agl = getelementptr inbounds nuw i8, ptr %.7570274.i, i64 2
  %i.agm = load i16, ptr %i.agl, align 2, !tbaa !57
  %i.agn = getelementptr inbounds nuw i8, ptr %.38275.i, i64 2
  store i16 %i.agm, ptr %i.agn, align 2, !tbaa !57
  %i.ago = getelementptr inbounds nuw i8, ptr %.38275.i, i64 4
  %i.agp = getelementptr inbounds nuw [2 x i8], ptr %.7570274.i, i64 %i.k ; 3 uses
  %i.agq = load i16, ptr %i.agp, align 2, !tbaa !57
  store i16 %i.agq, ptr %i.ago, align 2, !tbaa !57
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agp, i64 2
  %i.ags = load i16, ptr %i.agr, align 2, !tbaa !57
  %i.agt = getelementptr inbounds nuw i8, ptr %.38275.i, i64 6
  store i16 %i.ags, ptr %i.agt, align 2, !tbaa !57
  %i.agu = getelementptr inbounds nuw i8, ptr %.38275.i, i64 8
  %i.agv = getelementptr inbounds nuw [2 x i8], ptr %i.agp, i64 %i.k ; 3 uses
  %i.agw = load i16, ptr %i.agv, align 2, !tbaa !57
  store i16 %i.agw, ptr %i.agu, align 2, !tbaa !57
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agv, i64 2
  %i.agy = load i16, ptr %i.agx, align 2, !tbaa !57
  %i.agz = getelementptr inbounds nuw i8, ptr %.38275.i, i64 10
  store i16 %i.agy, ptr %i.agz, align 2, !tbaa !57
  %i.aha = getelementptr inbounds nuw i8, ptr %.38275.i, i64 12
  %i.ahb = getelementptr inbounds nuw [2 x i8], ptr %i.agv, i64 %i.k ; 3 uses
  %i.ahc = load i16, ptr %i.ahb, align 2, !tbaa !57
  store i16 %i.ahc, ptr %i.aha, align 2, !tbaa !57
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.ahb, i64 2
  %i.ahe = load i16, ptr %i.ahd, align 2, !tbaa !57
  %i.ahf = getelementptr inbounds nuw i8, ptr %.38275.i, i64 14
  store i16 %i.ahe, ptr %i.ahf, align 2, !tbaa !57
  %i.ahg = getelementptr inbounds nuw i8, ptr %.38275.i, i64 16 ; 2 uses
  %i.ahh = getelementptr inbounds nuw [2 x i8], ptr %i.ahb, i64 %i.k
  %i.ahi = add nuw nsw i32 %.1547276.i, 4         ; 2 uses
  %exitcond415.not.i.3 = icmp eq i32 %i.ahi, %5
  br i1 %exitcond415.not.i.3, label %.loopexit108.i, label %.lr.ph277.i, !llvm.loop !185

.loopexit108.i.loopexit204.unr-lcssa:             ; preds = %.lr.ph258.i
  br i1 %lcmp.mod283.not.not, label %.lr.ph258.i.epil.preheader, label %.loopexit108.i

.lr.ph258.i.epil.preheader:                       ; preds = %.loopexit108.i.loopexit204.unr-lcssa, %.lr.ph258.i.preheader
  %.33257.i.epil.init = phi ptr [ %.30280.i, %.lr.ph258.i.preheader ], [ %i.adm, %.loopexit108.i.loopexit204.unr-lcssa ] ; 3 uses
  %.2565255.i.epil.init = phi ptr [ %i.ach, %.lr.ph258.i.preheader ], [ %i.adn, %.loopexit108.i.loopexit204.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod285)
  %i.ahj = load <4 x i32>, ptr %.2565255.i.epil.init, align 1, !tbaa !17 ; 2 uses
  %i.ahk = getelementptr inbounds nuw i8, ptr %.2565255.i.epil.init, i64 16
  %i.ahl = load <4 x i32>, ptr %i.ahk, align 1, !tbaa !17 ; 2 uses
  %i.ahm = shufflevector <4 x i32> %i.ahj, <4 x i32> %i.ahl, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ahn = shufflevector <4 x i32> %i.ahj, <4 x i32> %i.ahl, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x i32> %i.ahm, ptr %.33257.i.epil.init, align 1, !tbaa !17
  %i.aho = getelementptr inbounds nuw i8, ptr %.33257.i.epil.init, i64 16
  store <4 x i32> %i.ahn, ptr %i.aho, align 1, !tbaa !17
  %i.ahp = getelementptr inbounds nuw i8, ptr %.33257.i.epil.init, i64 32
  br label %.loopexit108.i

.loopexit108.i.loopexit205.unr-lcssa:             ; preds = %.lr.ph252.i
  br i1 %lcmp.mod277.not.not, label %.lr.ph252.i.epil.preheader, label %.loopexit108.i

.lr.ph252.i.epil.preheader:                       ; preds = %.loopexit108.i.loopexit205.unr-lcssa, %.lr.ph252.i.preheader
  %.31251.i.epil.init = phi ptr [ %.30280.i, %.lr.ph252.i.preheader ], [ %i.acw, %.loopexit108.i.loopexit205.unr-lcssa ] ; 3 uses
  %.0563249.i.epil.init = phi ptr [ %i.ach, %.lr.ph252.i.preheader ], [ %i.acx, %.loopexit108.i.loopexit205.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod279)
  %i.ahq = load <8 x i32>, ptr %.0563249.i.epil.init, align 1, !tbaa !17 ; 2 uses
  %i.ahr = getelementptr inbounds nuw i8, ptr %.0563249.i.epil.init, i64 32
  %i.ahs = load <8 x i32>, ptr %i.ahr, align 1, !tbaa !17 ; 2 uses
  %i.aht = shufflevector <8 x i32> %i.ahq, <8 x i32> %i.ahs, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ahu = shufflevector <8 x i32> %i.ahq, <8 x i32> %i.ahs, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i32> %i.aht, ptr %.31251.i.epil.init, align 1, !tbaa !17
  %i.ahv = getelementptr inbounds nuw i8, ptr %.31251.i.epil.init, i64 32
  store <8 x i32> %i.ahu, ptr %i.ahv, align 1, !tbaa !17
  %i.ahw = getelementptr inbounds nuw i8, ptr %.31251.i.epil.init, i64 64
  br label %.loopexit108.i

.loopexit108.i:                                   ; preds = %.lr.ph252.i.epil.preheader, %.loopexit108.i.loopexit205.unr-lcssa, %.lr.ph258.i.epil.preheader, %.loopexit108.i.loopexit204.unr-lcssa, %.lr.ph264.i, %.lr.ph277.i.prol.loopexit, %.lr.ph277.i, %.preheader107.i, %.loopexit111.i
  %.39.i = phi ptr [ %.30280.i, %.loopexit111.i ], [ %.37.lcssa.i, %.preheader107.i ], [ %i.ahg, %.lr.ph277.i ], [ %i.aek, %.lr.ph264.i ], [ %i.ahp, %.lr.ph258.i.epil.preheader ], [ %.lcssa211.unr, %.lr.ph277.i.prol.loopexit ], [ %i.adm, %.loopexit108.i.loopexit204.unr-lcssa ], [ %i.acw, %.loopexit108.i.loopexit205.unr-lcssa ], [ %i.ahw, %.lr.ph252.i.epil.preheader ] ; 2 uses
  %indvars.iv.next417.i = add nuw nsw i64 %indvars.iv416.i, 2 ; 3 uses
  %i.ahx = icmp slt i64 %indvars.iv.next417.i, %invariant.op522.i
  br i1 %i.ahx, label %bb.b, label %.preheader106.loopexit.i, !llvm.loop !186

bb.c:                                             ; preds = %.loopexit.i, %.lr.ph309.i
  %indvars.iv420.i = phi i64 [ %i.abt, %.lr.ph309.i ], [ %indvars.iv.next421.i, %.loopexit.i ] ; 2 uses
  %.40308.i = phi ptr [ %.30.lcssa.i, %.lr.ph309.i ], [ %.48.i, %.loopexit.i ] ; 6 uses
  %i.ahy = load ptr, ptr %0, align 8, !tbaa !9
  %i.ahz = getelementptr inbounds nuw [2 x i8], ptr %i.ahy, i64 %i.abm
  %i.aia = add nsw i64 %indvars.iv420.i, %i.abu
  %i.aib = mul nsw i64 %i.aia, %i.abv
  %i.aic = getelementptr inbounds [2 x i8], ptr %i.ahz, i64 %i.aib ; 5 uses
  br i1 %i.abx, label %.loopexit105.i, label %.lr.ph287.i

.lr.ph287.i:                                      ; preds = %bb.c, %.lr.ph287.i
  %.0544286.i = phi i32 [ %i.aig, %.lr.ph287.i ], [ 0, %bb.c ]
  %.0545285.i = phi ptr [ %i.aif, %.lr.ph287.i ], [ %i.aic, %bb.c ] ; 2 uses
  %.41284.i = phi ptr [ %i.aie, %.lr.ph287.i ], [ %.40308.i, %bb.c ] ; 2 uses
  %i.aid = load <4 x i64>, ptr %.0545285.i, align 1, !tbaa !17
  store <4 x i64> %i.aid, ptr %.41284.i, align 1, !tbaa !17
  %i.aie = getelementptr inbounds nuw i8, ptr %.41284.i, i64 32 ; 2 uses
  %i.aif = getelementptr inbounds nuw i8, ptr %.0545285.i, i64 %.idx611.i
  %i.aig = add nuw nsw i32 %.0544286.i, 16        ; 2 uses
  %i.aih = or disjoint i32 %i.aig, 15
  %i.aii = icmp slt i32 %i.aih, %5
  br i1 %i.aii, label %.lr.ph287.i, label %.loopexit.i, !llvm.loop !187

.loopexit105.i:                                   ; preds = %bb.c
  br i1 %i.aby, label %.loopexit103.i, label %.lr.ph293.i

.lr.ph293.i:                                      ; preds = %.loopexit105.i, %.lr.ph293.i
  %.0543292.i = phi i32 [ %i.aim, %.lr.ph293.i ], [ 0, %.loopexit105.i ]
  %.2291.i = phi ptr [ %i.ail, %.lr.ph293.i ], [ %i.aic, %.loopexit105.i ] ; 2 uses
  %.43290.i = phi ptr [ %i.aik, %.lr.ph293.i ], [ %.40308.i, %.loopexit105.i ] ; 2 uses
  %i.aij = load <2 x i64>, ptr %.2291.i, align 1, !tbaa !17
  store <2 x i64> %i.aij, ptr %.43290.i, align 1, !tbaa !17
  %i.aik = getelementptr inbounds nuw i8, ptr %.43290.i, i64 16 ; 2 uses
  %i.ail = getelementptr inbounds nuw i8, ptr %.2291.i, i64 %.idx610.i
  %i.aim = add nuw nsw i32 %.0543292.i, 8         ; 2 uses
  %i.ain = or disjoint i32 %i.aim, 7
  %i.aio = icmp slt i32 %i.ain, %5
  br i1 %i.aio, label %.lr.ph293.i, label %.loopexit.i, !llvm.loop !188

.loopexit103.i:                                   ; preds = %.loopexit105.i
  br i1 %i.abz, label %.loopexit101.i, label %.lr.ph299.i

.lr.ph299.i:                                      ; preds = %.loopexit103.i, %.lr.ph299.i
  %.0542298.i = phi i32 [ %i.ais, %.lr.ph299.i ], [ 0, %.loopexit103.i ]
  %.4297.i = phi ptr [ %i.air, %.lr.ph299.i ], [ %i.aic, %.loopexit103.i ] ; 2 uses
  %.45296.i = phi ptr [ %i.aiq, %.lr.ph299.i ], [ %.40308.i, %.loopexit103.i ] ; 2 uses
  %i.aip = load i64, ptr %.4297.i, align 1, !tbaa !17
  store i64 %i.aip, ptr %.45296.i, align 1, !tbaa !17
  %i.aiq = getelementptr inbounds nuw i8, ptr %.45296.i, i64 8 ; 2 uses
  %i.air = getelementptr inbounds nuw i8, ptr %.4297.i, i64 %.idx.i
  %i.ais = add nuw nsw i32 %.0542298.i, 4         ; 2 uses
  %i.ait = or disjoint i32 %i.ais, 3
  %i.aiu = icmp slt i32 %i.ait, %5
  br i1 %i.aiu, label %.lr.ph299.i, label %.loopexit.i, !llvm.loop !189

.loopexit101.i:                                   ; preds = %.loopexit103.i
  br i1 %i.aca, label %.loopexit.i, label %.lr.ph305.i.preheader

.lr.ph305.i.preheader:                            ; preds = %.loopexit101.i
  br i1 %i.acc, label %.lr.ph305.i.epil.preheader, label %.lr.ph305.i

.lr.ph305.i:                                      ; preds = %.lr.ph305.i.preheader, %.lr.ph305.i
  %.6303.i = phi ptr [ %i.ajs, %.lr.ph305.i ], [ %i.aic, %.lr.ph305.i.preheader ] ; 2 uses
  %.47302.i = phi ptr [ %i.ajr, %.lr.ph305.i ], [ %.40308.i, %.lr.ph305.i.preheader ] ; 9 uses
  %niter303 = phi i32 [ %niter303.next.7, %.lr.ph305.i ], [ 0, %.lr.ph305.i.preheader ]
  %i.aiv = load i16, ptr %.6303.i, align 2, !tbaa !57
  store i16 %i.aiv, ptr %.47302.i, align 2, !tbaa !57
  %i.aiw = getelementptr inbounds nuw i8, ptr %.47302.i, i64 2
  %i.aix = getelementptr inbounds nuw [2 x i8], ptr %.6303.i, i64 %i.k ; 2 uses
  %i.aiy = load i16, ptr %i.aix, align 2, !tbaa !57
  store i16 %i.aiy, ptr %i.aiw, align 2, !tbaa !57
  %i.aiz = getelementptr inbounds nuw i8, ptr %.47302.i, i64 4
  %i.aja = getelementptr inbounds nuw [2 x i8], ptr %i.aix, i64 %i.k ; 2 uses
  %i.ajb = load i16, ptr %i.aja, align 2, !tbaa !57
  store i16 %i.ajb, ptr %i.aiz, align 2, !tbaa !57
  %i.ajc = getelementptr inbounds nuw i8, ptr %.47302.i, i64 6
  %i.ajd = getelementptr inbounds nuw [2 x i8], ptr %i.aja, i64 %i.k ; 2 uses
  %i.aje = load i16, ptr %i.ajd, align 2, !tbaa !57
  store i16 %i.aje, ptr %i.ajc, align 2, !tbaa !57
  %i.ajf = getelementptr inbounds nuw i8, ptr %.47302.i, i64 8
  %i.ajg = getelementptr inbounds nuw [2 x i8], ptr %i.ajd, i64 %i.k ; 2 uses
  %i.ajh = load i16, ptr %i.ajg, align 2, !tbaa !57
  store i16 %i.ajh, ptr %i.ajf, align 2, !tbaa !57
  %i.aji = getelementptr inbounds nuw i8, ptr %.47302.i, i64 10
  %i.ajj = getelementptr inbounds nuw [2 x i8], ptr %i.ajg, i64 %i.k ; 2 uses
  %i.ajk = load i16, ptr %i.ajj, align 2, !tbaa !57
  store i16 %i.ajk, ptr %i.aji, align 2, !tbaa !57
  %i.ajl = getelementptr inbounds nuw i8, ptr %.47302.i, i64 12
  %i.ajm = getelementptr inbounds nuw [2 x i8], ptr %i.ajj, i64 %i.k ; 2 uses
  %i.ajn = load i16, ptr %i.ajm, align 2, !tbaa !57
  store i16 %i.ajn, ptr %i.ajl, align 2, !tbaa !57
  %i.ajo = getelementptr inbounds nuw i8, ptr %.47302.i, i64 14
  %i.ajp = getelementptr inbounds nuw [2 x i8], ptr %i.ajm, i64 %i.k ; 2 uses
  %i.ajq = load i16, ptr %i.ajp, align 2, !tbaa !57
  store i16 %i.ajq, ptr %i.ajo, align 2, !tbaa !57
  %i.ajr = getelementptr inbounds nuw i8, ptr %.47302.i, i64 16 ; 3 uses
  %i.ajs = getelementptr inbounds nuw [2 x i8], ptr %i.ajp, i64 %i.k ; 2 uses
  %niter303.next.7 = add i32 %niter303, 8         ; 2 uses
  %niter303.ncmp.7 = icmp eq i32 %niter303.next.7, %unroll_iter302
  br i1 %niter303.ncmp.7, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph305.i, !llvm.loop !190

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph305.i
  br i1 %lcmp.mod299.not, label %.loopexit.i, label %.lr.ph305.i.epil.preheader

.lr.ph305.i.epil.preheader:                       ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph305.i.preheader
  %.6303.i.epil.init = phi ptr [ %i.aic, %.lr.ph305.i.preheader ], [ %i.ajs, %.loopexit.i.loopexit.unr-lcssa ]
  %.47302.i.epil.init = phi ptr [ %.40308.i, %.lr.ph305.i.preheader ], [ %i.ajr, %.loopexit.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod301)
  br label %.lr.ph305.i.epil

.lr.ph305.i.epil:                                 ; preds = %.lr.ph305.i.epil, %.lr.ph305.i.epil.preheader
  %.6303.i.epil = phi ptr [ %i.ajv, %.lr.ph305.i.epil ], [ %.6303.i.epil.init, %.lr.ph305.i.epil.preheader ] ; 2 uses
  %.47302.i.epil = phi ptr [ %i.aju, %.lr.ph305.i.epil ], [ %.47302.i.epil.init, %.lr.ph305.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph305.i.epil ], [ 0, %.lr.ph305.i.epil.preheader ]
  %i.ajt = load i16, ptr %.6303.i.epil, align 2, !tbaa !57
  store i16 %i.ajt, ptr %.47302.i.epil, align 2, !tbaa !57
  %i.aju = getelementptr inbounds nuw i8, ptr %.47302.i.epil, i64 2 ; 2 uses
  %i.ajv = getelementptr inbounds nuw [2 x i8], ptr %.6303.i.epil, i64 %i.k
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter298
  br i1 %epil.iter.cmp.not, label %.loopexit.i, label %.lr.ph305.i.epil, !llvm.loop !191

.loopexit.i:                                      ; preds = %.lr.ph287.i, %.lr.ph293.i, %.lr.ph299.i, %.loopexit.i.loopexit.unr-lcssa, %.lr.ph305.i.epil, %.loopexit101.i
  %.48.i = phi ptr [ %.40308.i, %.loopexit101.i ], [ %i.aju, %.lr.ph305.i.epil ], [ %i.aiq, %.lr.ph299.i ], [ %i.aik, %.lr.ph293.i ], [ %i.ajr, %.loopexit.i.loopexit.unr-lcssa ], [ %i.aie, %.lr.ph287.i ]
  %indvars.iv.next421.i = add nsw i64 %indvars.iv420.i, 1 ; 2 uses
  %exitcond423.not.i = icmp eq i64 %indvars.iv.next421.i, %wide.trip.count.i
  br i1 %exitcond423.not.i, label %_ZN4ncnnL26transpose_pack_A_tile_bf16ERKNS_3MatERS0_iiii.exit, label %bb.c, !llvm.loop !192

_ZN4ncnnL26transpose_pack_A_tile_bf16ERKNS_3MatERS0_iiii.exit: ; preds = %.loopexit.i, %.preheader106.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: read, target_mem: read) uwtable
define hidden void @_ZN4ncnn27pack_B_tile_bf16_avx512bf16ERKNS_3MatERS0_iiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !tbaa !9     ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !16
  %i.e = icmp eq i32 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.i = load i32, ptr %i.h, align 4
  %i.j = sext i32 %i.i to i64
  %i.k = select i1 %i.e, i64 %i.g, i64 %i.j       ; 58 uses
  %i.l = icmp sgt i32 %3, 15
  br i1 %i.l, label %.lr.ph92.i, label %.preheader19.i

.lr.ph92.i:                                       ; preds = %bb.a
  %i.m = mul nsw i32 %i.b, %4
  %i.n = sext i32 %i.m to i64
  %i.o = icmp sgt i32 %5, 1                       ; 4 uses
  %.idx418.i = shl i64 %i.k, 4                    ; 2 uses
  %.idx419.i = shl i64 %i.k, 3
  %.idx421.i = mul i64 %i.k, 24
  %i.p = trunc i64 %i.k to i32
  %i.q = insertelement <16 x i32> poison, i32 %i.p, i64 0
  %i.r = shufflevector <16 x i32> %i.q, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.s = mul <16 x i32> %i.r, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 10 uses
  %i.t = and i32 %5, -2                           ; 7 uses
  %i.u = zext nneg i32 %3 to i64                  ; 2 uses
  %i.v = sext i32 %2 to i64
  %i.w = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.b)
  %i.x = icmp eq i32 %i.w, 1
  %i.y = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.b, i1 true)
  br i1 %i.x, label %.split.i.us.preheader, label %.loopexit21.i.preheader

.split.i.us.preheader:                            ; preds = %.lr.ph92.i
  %i.z = add i32 %5, -2                           ; 4 uses
  %i.aa = lshr i32 %i.z, 1                        ; 2 uses
  %i.ab = add nuw i32 %i.aa, 1                    ; 6 uses
  %xtraiter = and i32 %i.ab, 3                    ; 3 uses
  %i.ac = icmp ult i32 %i.z, 6
  %unroll_iter = and i32 %i.ab, -4
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod812 = icmp ne i32 %xtraiter, 0
  %i.ad = icmp eq i32 %i.aa, 0
  %unroll_iter825 = and i32 %i.ab, -2
  %i.ae = and i32 %i.z, 2
  %lcmp.mod820.not.not = icmp eq i32 %i.ae, 0
  %lcmp.mod824 = trunc i32 %i.ab to i1
  %xtraiter830 = and i32 %i.ab, 3                 ; 3 uses
  %i.af = icmp ult i32 %i.z, 6
  %unroll_iter836 = and i32 %i.ab, -4
  %lcmp.mod832.not = icmp eq i32 %xtraiter830, 0
  %lcmp.mod835 = icmp ne i32 %xtraiter830, 0
  br label %.split.i.us

.loopexit21.i.preheader:                          ; preds = %.lr.ph92.i
  %umax = tail call i64 @llvm.umax.i64(i64 %i.u, i64 31)
  %i.ag = and i64 %umax, 2147483632
  br label %.preheader19.loopexit.i

.split.i.us:                                      ; preds = %.split.i.us.preheader, %.loopexit21.i.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %.loopexit21.i.us ], [ 0, %.split.i.us.preheader ] ; 2 uses
  %.035991.i.us = phi ptr [ %.12.i.us, %.loopexit21.i.us ], [ %.val, %.split.i.us.preheader ] ; 12 uses
  %i.ah = load ptr, ptr %0, align 8, !tbaa !9
  %i.ai = add nsw i64 %indvars.iv.i.us, %i.v
  %i.aj = mul i64 %i.ai, %i.k
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.aj
  %i.al = getelementptr inbounds [2 x i8], ptr %i.ak, i64 %i.n ; 15 uses
  switch i32 %i.y, label %.loopexit21.i.us [
    i32 4, label %.preheader28.i.us
    i32 3, label %bb.d
    i32 2, label %bb.c
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %.split.i.us
  br i1 %i.o, label %.lr.ph81.i.us.preheader, label %.preheader20.i.us

.lr.ph81.i.us.preheader:                          ; preds = %bb.b
  br i1 %i.ac, label %.lr.ph81.i.us.epil.preheader, label %.lr.ph81.i.us

.lr.ph81.i.us:                                    ; preds = %.lr.ph81.i.us.preheader, %.lr.ph81.i.us
  %.1080.i.us = phi ptr [ %i.aw, %.lr.ph81.i.us ], [ %.035991.i.us, %.lr.ph81.i.us.preheader ] ; 5 uses
  %.938279.i.us = phi ptr [ %i.ax, %.lr.ph81.i.us ], [ %i.al, %.lr.ph81.i.us.preheader ] ; 5 uses
  %niter = phi i32 [ %niter.next.3, %.lr.ph81.i.us ], [ 0, %.lr.ph81.i.us.preheader ]
  %i.am = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %.938279.i.us, <16 x i32> %i.s, <16 x i1> splat (i1 true), i32 2)
  store <16 x i32> %i.am, ptr %.1080.i.us, align 1, !tbaa !17
  %i.an = getelementptr inbounds nuw i8, ptr %.1080.i.us, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %.938279.i.us, i64 4
  %i.ap = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr nonnull %i.ao, <16 x i32> %i.s, <16 x i1> splat (i1 true), i32 2)
  store <16 x i32> %i.ap, ptr %i.an, align 1, !tbaa !17
  %i.aq = getelementptr inbounds nuw i8, ptr %.1080.i.us, i64 128
  %i.ar = getelementptr inbounds nuw i8, ptr %.938279.i.us, i64 8
  %i.as = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr nonnull %i.ar, <16 x i32> %i.s, <16 x i1> splat (i1 true), i32 2)
  store <16 x i32> %i.as, ptr %i.aq, align 1, !tbaa !17
  %i.at = getelementptr inbounds nuw i8, ptr %.1080.i.us, i64 192
  %i.au = getelementptr inbounds nuw i8, ptr %.938279.i.us, i64 12
  %i.av = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr nonnull %i.au, <16 x i32> %i.s, <16 x i1> splat (i1 true), i32 2)
  store <16 x i32> %i.av, ptr %i.at, align 1, !tbaa !17
  %i.aw = getelementptr inbounds nuw i8, ptr %.1080.i.us, i64 256 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.938279.i.us, i64 16 ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.preheader20.i.us.loopexit.unr-lcssa, label %.lr.ph81.i.us, !llvm.loop !193

.preheader20.i.us.loopexit.unr-lcssa:             ; preds = %.lr.ph81.i.us
  br i1 %lcmp.mod.not, label %.preheader20.i.us, label %.lr.ph81.i.us.epil.preheader

.lr.ph81.i.us.epil.preheader:                     ; preds = %.preheader20.i.us.loopexit.unr-lcssa, %.lr.ph81.i.us.preheader
  %.1080.i.us.epil.init = phi ptr [ %.035991.i.us, %.lr.ph81.i.us.preheader ], [ %i.aw, %.preheader20.i.us.loopexit.unr-lcssa ]
  %.938279.i.us.epil.init = phi ptr [ %i.al, %.lr.ph81.i.us.preheader ], [ %i.ax, %.preheader20.i.us.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod812)
  br label %.lr.ph81.i.us.epil

.lr.ph81.i.us.epil:                               ; preds = %.lr.ph81.i.us.epil, %.lr.ph81.i.us.epil.preheader
  %.1080.i.us.epil = phi ptr [ %i.az, %.lr.ph81.i.us.epil ], [ %.1080.i.us.epil.init, %.lr.ph81.i.us.epil.preheader ] ; 2 uses
  %.938279.i.us.epil = phi ptr [ %i.ba, %.lr.ph81.i.us.epil ], [ %.938279.i.us.epil.init, %.lr.ph81.i.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph81.i.us.epil ], [ 0, %.lr.ph81.i.us.epil.preheader ]
  %i.ay = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %.938279.i.us.epil, <16 x i32> %i.s, <16 x i1> splat (i1 true), i32 2)
  store <16 x i32> %i.ay, ptr %.1080.i.us.epil, align 1, !tbaa !17
  %i.az = getelementptr inbounds nuw i8, ptr %.1080.i.us.epil, i64 64 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.938279.i.us.epil, i64 4 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader20.i.us, label %.lr.ph81.i.us.epil, !llvm.loop !194

.preheader20.i.us:                                ; preds = %.preheader20.i.us.loopexit.unr-lcssa, %.lr.ph81.i.us.epil, %bb.b
  %.0414.lcssa.i.us = phi i32 [ 0, %bb.b ], [ %i.t, %.lr.ph81.i.us.epil ], [ %i.t, %.preheader20.i.us.loopexit.unr-lcssa ] ; 5 uses
  %.9382.lcssa.i.us = phi ptr [ %i.al, %bb.b ], [ %i.ax, %.preheader20.i.us.loopexit.unr-lcssa ], [ %i.ba, %.lr.ph81.i.us.epil ] ; 2 uses
  %.10.lcssa.i.us = phi ptr [ %.035991.i.us, %bb.b ], [ %i.aw, %.preheader20.i.us.loopexit.unr-lcssa ], [ %i.az, %.lr.ph81.i.us.epil ] ; 3 uses
  %i.bb = icmp slt i32 %.0414.lcssa.i.us, %5
  br i1 %i.bb, label %.lr.ph88.i.us.preheader, label %.loopexit21.i.us

.lr.ph88.i.us.preheader:                          ; preds = %.preheader20.i.us
  %i.bc = sub i32 %5, %.0414.lcssa.i.us
  %xtraiter813 = and i32 %i.bc, 3                 ; 2 uses
  %lcmp.mod814.not = icmp eq i32 %xtraiter813, 0
  br i1 %lcmp.mod814.not, label %.lr.ph88.i.us.prol.loopexit, label %.lr.ph88.i.us.prol

.lr.ph88.i.us.prol:                               ; preds = %.lr.ph88.i.us.preheader, %.lr.ph88.i.us.prol
  %.1187.i.us.prol = phi ptr [ %i.bf, %.lr.ph88.i.us.prol ], [ %.10.lcssa.i.us, %.lr.ph88.i.us.preheader ] ; 2 uses
  %.1038386.i.us.prol = phi ptr [ %i.bg, %.lr.ph88.i.us.prol ], [ %.9382.lcssa.i.us, %.lr.ph88.i.us.preheader ] ; 2 uses
  %.141585.i.us.prol = phi i32 [ %i.bh, %.lr.ph88.i.us.prol ], [ %.0414.lcssa.i.us, %.lr.ph88.i.us.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph88.i.us.prol ], [ 0, %.lr.ph88.i.us.preheader ]
  %i.bd = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %.1038386.i.us.prol, <16 x i32> %i.s, <16 x i1> splat (i1 true), i32 2)
  %i.be = trunc <16 x i32> %i.bd to <16 x i16>
  store <16 x i16> %i.be, ptr %.1187.i.us.prol, align 1, !tbaa !17
  %i.bf = getelementptr inbounds nuw i8, ptr %.1187.i.us.prol, i64 32 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.1038386.i.us.prol, i64 2 ; 2 uses
  %i.bh = add nuw nsw i32 %.141585.i.us.prol, 1   ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter813
  br i1 %prol.iter.cmp.not, label %.lr.ph88.i.us.prol.loopexit, label %.lr.ph88.i.us.prol, !llvm.loop !195

.lr.ph88.i.us.prol.loopexit:                      ; preds = %.lr.ph88.i.us.prol, %.lr.ph88.i.us.preheader
  %.lcssa796.unr = phi ptr [ poison, %.lr.ph88.i.us.preheader ], [ %i.bf, %.lr.ph88.i.us.prol ]
  %.1187.i.us.unr = phi ptr [ %.10.lcssa.i.us, %.lr.ph88.i.us.preheader ], [ %i.bf, %.lr.ph88.i.us.prol ]
  %.1038386.i.us.unr = phi ptr [ %.9382.lcssa.i.us, %.lr.ph88.i.us.preheader ], [ %i.bg, %.lr.ph88.i.us.prol ]
  %.141585.i.us.unr = phi i32 [ %.0414.lcssa.i.us, %.lr.ph88.i.us.preheader ], [ %i.bh, %.lr.ph88.i.us.prol ]
  %i.bi = sub i32 %.0414.lcssa.i.us, %5
  %i.bj = icmp ugt i32 %i.bi, -4
  br i1 %i.bj, label %.loopexit21.i.us, label %.lr.ph88.i.us

.lr.ph88.i.us:                                    ; preds = %.lr.ph88.i.us.prol.loopexit, %.lr.ph88.i.us
  %.1187.i.us = phi ptr [ %i.by, %.lr.ph88.i.us ], [ %.1187.i.us.unr, %.lr.ph88.i.us.prol.loopexit ] ; 5 uses
  %.1038386.i.us = phi ptr [ %i.bz, %.lr.ph88.i.us ], [ %.1038386.i.us.unr, %.lr.ph88.i.us.prol.loopexit ] ; 5 uses
  %.141585.i.us = phi i32 [ %i.ca, %.lr.ph88.i.us ], [ %.141585.i.us.unr, %.lr.ph88.i.us.prol.loopexit ]
  %i.bk = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %.1038386.i.us, <16 x i32> %i.s, <16 x i1> splat (i1 true), i32 2)
  %i.bl = trunc <16 x i32> %i.bk to <16 x i16>
  store <16 x i16> %i.bl, ptr %.1187.i.us, align 1, !tbaa !17
  %i.bm = getelementptr inbounds nuw i8, ptr %.1187.i.us, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %.1038386.i.us, i64 2
  %i.bo = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr nonnull %i.bn, <16 x i32> %i.s, <16 x i1> splat (i1 true), i32 2)
  %i.bp = trunc <16 x i32> %i.bo to <16 x i16>
  store <16 x i16> %i.bp, ptr %i.bm, align 1, !tbaa !17
  %i.bq = getelementptr inbounds nuw i8, ptr %.1187.i.us, i64 64
  %i.br = getelementptr inbounds nuw i8, ptr %.1038386.i.us, i64 4
  %i.bs = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr nonnull %i.br, <16 x i32> %i.s, <16 x i1> splat (i1 true), i32 2)
  %i.bt = trunc <16 x i32> %i.bs to <16 x i16>
  store <16 x i16> %i.bt, ptr %i.bq, align 1, !tbaa !17
  %i.bu = getelementptr inbounds nuw i8, ptr %.1187.i.us, i64 96
  %i.bv = getelementptr inbounds nuw i8, ptr %.1038386.i.us, i64 6
  %i.bw = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr nonnull %i.bv, <16 x i32> %i.s, <16 x i1> splat (i1 true), i32 2)
  %i.bx = trunc <16 x i32> %i.bw to <16 x i16>
  store <16 x i16> %i.bx, ptr %i.bu, align 1, !tbaa !17
  %i.by = getelementptr inbounds nuw i8, ptr %.1187.i.us, i64 128 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.1038386.i.us, i64 8
  %i.ca = add nuw nsw i32 %.141585.i.us, 4        ; 2 uses
  %exitcond303.not.i.us.3 = icmp eq i32 %i.ca, %5
  br i1 %exitcond303.not.i.us.3, label %.loopexit21.i.us, label %.lr.ph88.i.us, !llvm.loop !196
end_hunk_1
begin_hunk_2_@_ZN4ncnn27pack_B_tile_bf16_avx512bf16ERKNS_3MatERS0_iiii:bb.a
  %index741 = phi i64 [ %vec.epilog.resume.val730, %vec.epilog.ph738 ], [ %index.next748, %vec.epilog.vector.body740 ] ; 2 uses
  %i.atk = shl i64 %index741, 2                   ; 2 uses
  %next.gep742 = getelementptr i8, ptr %gep.i, i64 %i.atk
  %next.gep743 = getelementptr i8, ptr %.33230.i, i64 %i.atk
  %wide.vec744 = load <16 x i16>, ptr %next.gep742, align 2, !tbaa !57, !alias.scope !311
  store <16 x i16> %wide.vec744, ptr %next.gep743, align 2, !tbaa !57, !alias.scope !314, !noalias !311
  %index.next748 = add nuw i64 %index741, 8       ; 2 uses
  %i.atl = icmp eq i64 %index.next748, %n.vec739
  br i1 %i.atl, label %vec.epilog.middle.block749, label %vec.epilog.vector.body740, !llvm.loop !317

vec.epilog.middle.block749:                       ; preds = %vec.epilog.vector.body740
  br i1 %cmp.n750, label %.preheader.i, label %.lr.ph220.i.preheader

.lr.ph220.i.preheader:                            ; preds = %vector.memcheck700, %iter.check734, %vec.epilog.iter.check736, %vec.epilog.middle.block749
  %.0219.i.ph = phi i32 [ 0, %iter.check734 ], [ 0, %vector.memcheck700 ], [ %i.asv, %vec.epilog.iter.check736 ], [ %i.asy, %vec.epilog.middle.block749 ]
  %.0343218.i.ph = phi ptr [ %gep.i, %iter.check734 ], [ %gep.i, %vector.memcheck700 ], [ %i.atd, %vec.epilog.iter.check736 ], [ %i.ati, %vec.epilog.middle.block749 ]
  %.34217.i.ph = phi ptr [ %.33230.i, %iter.check734 ], [ %.33230.i, %vector.memcheck700 ], [ %i.ate, %vec.epilog.iter.check736 ], [ %i.atj, %vec.epilog.middle.block749 ]
  br label %.lr.ph220.i

.preheader.i:                                     ; preds = %.lr.ph220.i, %middle.block728, %vec.epilog.middle.block749, %bb.i
  %.34.lcssa.i = phi ptr [ %.33230.i, %bb.i ], [ %i.atj, %vec.epilog.middle.block749 ], [ %i.ate, %middle.block728 ], [ %i.auy, %.lr.ph220.i ] ; 7 uses
  %.0343.lcssa.i = phi ptr [ %gep.i, %bb.i ], [ %i.ati, %vec.epilog.middle.block749 ], [ %i.atd, %middle.block728 ], [ %i.auz, %.lr.ph220.i ] ; 6 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.i ], [ %i.arx, %vec.epilog.middle.block749 ], [ %i.arx, %middle.block728 ], [ %i.arx, %.lr.ph220.i ] ; 5 uses
  %i.atm = icmp slt i32 %.0.lcssa.i, %5
  br i1 %i.atm, label %iter.check683, label %._crit_edge.i

iter.check683:                                    ; preds = %.preheader.i
  %.0343.lcssa.i660 = ptrtoaddr ptr %.0343.lcssa.i to i64
  %.34.lcssa.i659 = ptrtoaddr ptr %.34.lcssa.i to i64
  %i.atn = xor i32 %.0.lcssa.i, -1
  %i.ato = add i32 %5, %i.atn                     ; 3 uses
  %i.atp = zext i32 %i.ato to i64
  %i.atq = add nuw nsw i64 %i.atp, 1              ; 5 uses
  %min.iters.check663 = icmp ult i32 %i.ato, 15
  %i.atr = sub i64 %.0343.lcssa.i660, %.34.lcssa.i659
  %diff.check661 = icmp ugt i64 %i.atr, -256
  %or.cond757 = select i1 %min.iters.check663, i1 true, i1 %diff.check661
  br i1 %or.cond757, label %.lr.ph227.i.preheader, label %vector.main.loop.iter.check664

vector.main.loop.iter.check664:                   ; preds = %iter.check683
  %min.iters.check665 = icmp ult i32 %i.ato, 127
  br i1 %min.iters.check665, label %vec.epilog.ph687, label %vector.ph666

vector.ph666:                                     ; preds = %vector.main.loop.iter.check664
  %i.ats = and i64 %i.atq, 112
  %n.vec667 = and i64 %i.atq, 8589934464          ; 5 uses
  %i.att = trunc i64 %n.vec667 to i32
  %i.atu = add i32 %.0.lcssa.i, %i.att
  %i.atv = shl nuw nsw i64 %n.vec667, 1           ; 2 uses
  %i.atw = getelementptr i8, ptr %.0343.lcssa.i, i64 %i.atv
  %i.atx = getelementptr i8, ptr %.34.lcssa.i, i64 %i.atv ; 2 uses
  br label %vector.body668

vector.body668:                                   ; preds = %vector.body668, %vector.ph666
  %index669 = phi i64 [ 0, %vector.ph666 ], [ %index.next676, %vector.body668 ] ; 2 uses
  %i.aty = shl i64 %index669, 1                   ; 2 uses
  %next.gep670 = getelementptr i8, ptr %.0343.lcssa.i, i64 %i.aty ; 4 uses
  %next.gep671 = getelementptr i8, ptr %.34.lcssa.i, i64 %i.aty ; 4 uses
  %i.atz = getelementptr i8, ptr %next.gep670, i64 64
  %i.aua = getelementptr i8, ptr %next.gep670, i64 128
  %i.aub = getelementptr i8, ptr %next.gep670, i64 192
  %wide.load672 = load <32 x i16>, ptr %next.gep670, align 2, !tbaa !57
  %wide.load673 = load <32 x i16>, ptr %i.atz, align 2, !tbaa !57
  %wide.load674 = load <32 x i16>, ptr %i.aua, align 2, !tbaa !57
  %wide.load675 = load <32 x i16>, ptr %i.aub, align 2, !tbaa !57
  %i.auc = getelementptr i8, ptr %next.gep671, i64 64
  %i.aud = getelementptr i8, ptr %next.gep671, i64 128
  %i.aue = getelementptr i8, ptr %next.gep671, i64 192
  store <32 x i16> %wide.load672, ptr %next.gep671, align 2, !tbaa !57
  store <32 x i16> %wide.load673, ptr %i.auc, align 2, !tbaa !57
  store <32 x i16> %wide.load674, ptr %i.aud, align 2, !tbaa !57
  store <32 x i16> %wide.load675, ptr %i.aue, align 2, !tbaa !57
  %index.next676 = add nuw i64 %index669, 128     ; 2 uses
  %i.auf = icmp eq i64 %index.next676, %n.vec667
  br i1 %i.auf, label %middle.block677, label %vector.body668, !llvm.loop !318

middle.block677:                                  ; preds = %vector.body668
  %cmp.n678 = icmp eq i64 %i.atq, %n.vec667
  br i1 %cmp.n678, label %._crit_edge.i, label %vec.epilog.iter.check685

vec.epilog.iter.check685:                         ; preds = %middle.block677
  %min.epilog.iters.check686 = icmp eq i64 %i.ats, 0
  br i1 %min.epilog.iters.check686, label %.lr.ph227.i.preheader, label %vec.epilog.ph687, !prof !153

vec.epilog.ph687:                                 ; preds = %vector.main.loop.iter.check664, %vec.epilog.iter.check685
  %vec.epilog.resume.val679 = phi i64 [ %n.vec667, %vec.epilog.iter.check685 ], [ 0, %vector.main.loop.iter.check664 ]
  %n.vec688 = and i64 %i.atq, 8589934576          ; 4 uses
  %i.aug = trunc i64 %n.vec688 to i32
  %i.auh = add i32 %.0.lcssa.i, %i.aug
  %i.aui = shl nuw nsw i64 %n.vec688, 1           ; 2 uses
  %i.auj = getelementptr i8, ptr %.0343.lcssa.i, i64 %i.aui
  %i.auk = getelementptr i8, ptr %.34.lcssa.i, i64 %i.aui ; 2 uses
  br label %vec.epilog.vector.body689

vec.epilog.vector.body689:                        ; preds = %vec.epilog.vector.body689, %vec.epilog.ph687
  %index690 = phi i64 [ %vec.epilog.resume.val679, %vec.epilog.ph687 ], [ %index.next694, %vec.epilog.vector.body689 ] ; 2 uses
  %i.aul = shl i64 %index690, 1                   ; 2 uses
  %next.gep691 = getelementptr i8, ptr %.0343.lcssa.i, i64 %i.aul
  %next.gep692 = getelementptr i8, ptr %.34.lcssa.i, i64 %i.aul
  %wide.load693 = load <16 x i16>, ptr %next.gep691, align 2, !tbaa !57
  store <16 x i16> %wide.load693, ptr %next.gep692, align 2, !tbaa !57
  %index.next694 = add nuw i64 %index690, 16      ; 2 uses
  %i.aum = icmp eq i64 %index.next694, %n.vec688
  br i1 %i.aum, label %vec.epilog.middle.block695, label %vec.epilog.vector.body689, !llvm.loop !319

vec.epilog.middle.block695:                       ; preds = %vec.epilog.vector.body689
  %cmp.n696 = icmp eq i64 %i.atq, %n.vec688
  br i1 %cmp.n696, label %._crit_edge.i, label %.lr.ph227.i.preheader

.lr.ph227.i.preheader:                            ; preds = %iter.check683, %vec.epilog.iter.check685, %vec.epilog.middle.block695
  %.1226.i.ph = phi i32 [ %.0.lcssa.i, %iter.check683 ], [ %i.atu, %vec.epilog.iter.check685 ], [ %i.auh, %vec.epilog.middle.block695 ] ; 4 uses
  %.1344225.i.ph = phi ptr [ %.0343.lcssa.i, %iter.check683 ], [ %i.atw, %vec.epilog.iter.check685 ], [ %i.auj, %vec.epilog.middle.block695 ] ; 2 uses
  %.35224.i.ph = phi ptr [ %.34.lcssa.i, %iter.check683 ], [ %i.atx, %vec.epilog.iter.check685 ], [ %i.auk, %vec.epilog.middle.block695 ] ; 2 uses
  %i.aun = sub i32 %5, %.1226.i.ph
  %xtraiter892 = and i32 %i.aun, 7                ; 2 uses
  %lcmp.mod893.not = icmp eq i32 %xtraiter892, 0
  br i1 %lcmp.mod893.not, label %.lr.ph227.i.prol.loopexit, label %.lr.ph227.i.prol

.lr.ph227.i.prol:                                 ; preds = %.lr.ph227.i.preheader, %.lr.ph227.i.prol
  %.1226.i.prol = phi i32 [ %i.aur, %.lr.ph227.i.prol ], [ %.1226.i.ph, %.lr.ph227.i.preheader ]
  %.1344225.i.prol = phi ptr [ %i.auq, %.lr.ph227.i.prol ], [ %.1344225.i.ph, %.lr.ph227.i.preheader ] ; 2 uses
  %.35224.i.prol = phi ptr [ %i.aup, %.lr.ph227.i.prol ], [ %.35224.i.ph, %.lr.ph227.i.preheader ] ; 2 uses
  %prol.iter894 = phi i32 [ %prol.iter894.next, %.lr.ph227.i.prol ], [ 0, %.lr.ph227.i.preheader ]
  %i.auo = load i16, ptr %.1344225.i.prol, align 2, !tbaa !57
  store i16 %i.auo, ptr %.35224.i.prol, align 2, !tbaa !57
  %i.aup = getelementptr inbounds nuw i8, ptr %.35224.i.prol, i64 2 ; 3 uses
  %i.auq = getelementptr inbounds nuw i8, ptr %.1344225.i.prol, i64 2 ; 2 uses
  %i.aur = add nuw nsw i32 %.1226.i.prol, 1       ; 2 uses
  %prol.iter894.next = add i32 %prol.iter894, 1   ; 2 uses
  %prol.iter894.cmp.not = icmp eq i32 %prol.iter894.next, %xtraiter892
  br i1 %prol.iter894.cmp.not, label %.lr.ph227.i.prol.loopexit, label %.lr.ph227.i.prol, !llvm.loop !320

.lr.ph227.i.prol.loopexit:                        ; preds = %.lr.ph227.i.prol, %.lr.ph227.i.preheader
  %.lcssa759.unr = phi ptr [ poison, %.lr.ph227.i.preheader ], [ %i.aup, %.lr.ph227.i.prol ]
  %.1226.i.unr = phi i32 [ %.1226.i.ph, %.lr.ph227.i.preheader ], [ %i.aur, %.lr.ph227.i.prol ]
  %.1344225.i.unr = phi ptr [ %.1344225.i.ph, %.lr.ph227.i.preheader ], [ %i.auq, %.lr.ph227.i.prol ]
  %.35224.i.unr = phi ptr [ %.35224.i.ph, %.lr.ph227.i.preheader ], [ %i.aup, %.lr.ph227.i.prol ]
  %i.aus = sub i32 %.1226.i.ph, %5
  %i.aut = icmp ugt i32 %i.aus, -8
  br i1 %i.aut, label %._crit_edge.i, label %.lr.ph227.i

.lr.ph220.i:                                      ; preds = %.lr.ph220.i.preheader, %.lr.ph220.i
  %.0219.i = phi i32 [ %i.ava, %.lr.ph220.i ], [ %.0219.i.ph, %.lr.ph220.i.preheader ]
  %.0343218.i = phi ptr [ %i.auz, %.lr.ph220.i ], [ %.0343218.i.ph, %.lr.ph220.i.preheader ] ; 3 uses
  %.34217.i = phi ptr [ %i.auy, %.lr.ph220.i ], [ %.34217.i.ph, %.lr.ph220.i.preheader ] ; 3 uses
  %i.auu = load i16, ptr %.0343218.i, align 2, !tbaa !57
  store i16 %i.auu, ptr %.34217.i, align 2, !tbaa !57
  %i.auv = getelementptr inbounds nuw i8, ptr %.0343218.i, i64 2
  %i.auw = load i16, ptr %i.auv, align 2, !tbaa !57
  %i.aux = getelementptr inbounds nuw i8, ptr %.34217.i, i64 2
  store i16 %i.auw, ptr %i.aux, align 2, !tbaa !57
  %i.auy = getelementptr inbounds nuw i8, ptr %.34217.i, i64 4 ; 2 uses
  %i.auz = getelementptr inbounds nuw i8, ptr %.0343218.i, i64 4 ; 2 uses
  %i.ava = add nuw nsw i32 %.0219.i, 2            ; 2 uses
  %i.avb = or disjoint i32 %i.ava, 1
  %i.avc = icmp slt i32 %i.avb, %5
  br i1 %i.avc, label %.lr.ph220.i, label %.preheader.i, !llvm.loop !321

.lr.ph227.i:                                      ; preds = %.lr.ph227.i.prol.loopexit, %.lr.ph227.i
  %.1226.i = phi i32 [ %i.awb, %.lr.ph227.i ], [ %.1226.i.unr, %.lr.ph227.i.prol.loopexit ]
  %.1344225.i = phi ptr [ %i.awa, %.lr.ph227.i ], [ %.1344225.i.unr, %.lr.ph227.i.prol.loopexit ] ; 9 uses
  %.35224.i = phi ptr [ %i.avz, %.lr.ph227.i ], [ %.35224.i.unr, %.lr.ph227.i.prol.loopexit ] ; 9 uses
  %i.avd = load i16, ptr %.1344225.i, align 2, !tbaa !57
  store i16 %i.avd, ptr %.35224.i, align 2, !tbaa !57
  %i.ave = getelementptr inbounds nuw i8, ptr %.35224.i, i64 2
  %i.avf = getelementptr inbounds nuw i8, ptr %.1344225.i, i64 2
  %i.avg = load i16, ptr %i.avf, align 2, !tbaa !57
  store i16 %i.avg, ptr %i.ave, align 2, !tbaa !57
  %i.avh = getelementptr inbounds nuw i8, ptr %.35224.i, i64 4
  %i.avi = getelementptr inbounds nuw i8, ptr %.1344225.i, i64 4
  %i.avj = load i16, ptr %i.avi, align 2, !tbaa !57
  store i16 %i.avj, ptr %i.avh, align 2, !tbaa !57
  %i.avk = getelementptr inbounds nuw i8, ptr %.35224.i, i64 6
  %i.avl = getelementptr inbounds nuw i8, ptr %.1344225.i, i64 6
  %i.avm = load i16, ptr %i.avl, align 2, !tbaa !57
  store i16 %i.avm, ptr %i.avk, align 2, !tbaa !57
  %i.avn = getelementptr inbounds nuw i8, ptr %.35224.i, i64 8
  %i.avo = getelementptr inbounds nuw i8, ptr %.1344225.i, i64 8
  %i.avp = load i16, ptr %i.avo, align 2, !tbaa !57
  store i16 %i.avp, ptr %i.avn, align 2, !tbaa !57
  %i.avq = getelementptr inbounds nuw i8, ptr %.35224.i, i64 10
  %i.avr = getelementptr inbounds nuw i8, ptr %.1344225.i, i64 10
  %i.avs = load i16, ptr %i.avr, align 2, !tbaa !57
  store i16 %i.avs, ptr %i.avq, align 2, !tbaa !57
  %i.avt = getelementptr inbounds nuw i8, ptr %.35224.i, i64 12
  %i.avu = getelementptr inbounds nuw i8, ptr %.1344225.i, i64 12
  %i.avv = load i16, ptr %i.avu, align 2, !tbaa !57
  store i16 %i.avv, ptr %i.avt, align 2, !tbaa !57
  %i.avw = getelementptr inbounds nuw i8, ptr %.35224.i, i64 14
  %i.avx = getelementptr inbounds nuw i8, ptr %.1344225.i, i64 14
  %i.avy = load i16, ptr %i.avx, align 2, !tbaa !57
  store i16 %i.avy, ptr %i.avw, align 2, !tbaa !57
  %i.avz = getelementptr inbounds nuw i8, ptr %.35224.i, i64 16 ; 2 uses
  %i.awa = getelementptr inbounds nuw i8, ptr %.1344225.i, i64 16
  %i.awb = add nuw nsw i32 %.1226.i, 8            ; 2 uses
  %exitcond323.not.i.7 = icmp eq i32 %i.awb, %5
  br i1 %exitcond323.not.i.7, label %._crit_edge.i, label %.lr.ph227.i, !llvm.loop !322

._crit_edge.i:                                    ; preds = %.lr.ph227.i.prol.loopexit, %.lr.ph227.i, %middle.block677, %vec.epilog.middle.block695, %.preheader.i
  %.35.lcssa.i = phi ptr [ %.34.lcssa.i, %.preheader.i ], [ %i.auk, %vec.epilog.middle.block695 ], [ %i.atx, %middle.block677 ], [ %.lcssa759.unr, %.lr.ph227.i.prol.loopexit ], [ %i.avz, %.lr.ph227.i ]
  %indvars.iv.next325.i = add nsw i64 %indvars.iv324.i, 1 ; 2 uses
  %exitcond327.not.i = icmp eq i64 %indvars.iv.next325.i, %wide.trip.count.i
  br i1 %exitcond327.not.i, label %_ZN4ncnnL16pack_B_tile_bf16ERKNS_3MatERS0_iiii.exit, label %bb.i, !llvm.loop !323

_ZN4ncnnL16pack_B_tile_bf16ERKNS_3MatERS0_iiii.exit: ; preds = %._crit_edge.i, %.preheader4.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4ncnn37transpose_pack_B_tile_bf16_avx512bf16ERKNS_3MatERS0_iiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !tbaa !9     ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 22 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !16
  %i.e = icmp eq i32 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.i = load i32, ptr %i.h, align 4
  %i.j = sext i32 %i.i to i64
  %i.k = select i1 %i.e, i64 %i.g, i64 %i.j       ; 77 uses
  %i.l = icmp sgt i32 %3, 15
  br i1 %i.l, label %.lr.ph176.i, label %.preheader136.i

.lr.ph176.i:                                      ; preds = %bb.a
  %i.m = sext i32 %4 to i64
  %i.n = mul i64 %i.k, %i.m                       ; 4 uses
  %i.o = icmp ne i32 %i.b, 16
  %i.p = icmp slt i32 %5, 16
  %.idx627.i = shl i64 %i.k, 5
  %.idx626.i = shl i64 %i.k, 4
  %i.q = icmp ne i32 %i.b, 4
  %i.r = icmp slt i32 %5, 4
  %.idx625.i = shl i64 %i.k, 3                    ; 2 uses
  %i.s = icmp eq i32 %i.b, 1
  %i.t = icmp sgt i32 %5, 1
  %.idx624.i = shl i64 %i.k, 2                    ; 3 uses
  %i.u = and i32 %5, -2                           ; 2 uses
  %i.v = zext nneg i32 %3 to i64                  ; 5 uses
  %i.w = sext i32 %2 to i64                       ; 4 uses
  %i.x = sext i32 %i.b to i64                     ; 4 uses
  %brmerge.i = or i1 %i.p, %i.o
  %brmerge316.i = or i1 %i.r, %i.q
  br i1 %brmerge.i, label %.lr.ph176.i.split.us, label %.lr.ph.i.preheader

.lr.ph176.i.split.us:                             ; preds = %.lr.ph176.i
  %i.y = icmp slt i32 %5, 8
  %i.z = icmp ne i32 %i.b, 8
  %brmerge313.i = or i1 %i.y, %i.z
  br i1 %brmerge313.i, label %.lr.ph176.i.split.us.split.us, label %.loopexit145.i.us

.lr.ph176.i.split.us.split.us:                    ; preds = %.lr.ph176.i.split.us
  br i1 %brmerge316.i, label %.lr.ph176.i.split.us.split.us.split.us, label %.loopexit145.i.us.us.preheader

.loopexit145.i.us.us.preheader:                   ; preds = %.lr.ph176.i.split.us.split.us
  %i.aa = add nsw i32 %5, -4                      ; 2 uses
  %i.ab = lshr i32 %i.aa, 2                       ; 2 uses
  %i.ac = add nuw nsw i32 %i.ab, 1                ; 2 uses
  %i.ad = icmp eq i32 %i.ab, 0
  %unroll_iter = and i32 %i.ac, 2147483646
  %i.ae = and i32 %i.aa, 4
  %lcmp.mod.not.not = icmp eq i32 %i.ae, 0
  %lcmp.mod240 = trunc i32 %i.ac to i1
  br label %.loopexit145.i.us.us

.lr.ph176.i.split.us.split.us.split.us:           ; preds = %.lr.ph176.i.split.us.split.us
  br i1 %i.s, label %.loopexit145.i.us.us.us.us.preheader, label %.loopexit145.i.us.us.us.preheader

.loopexit145.i.us.us.us.us.preheader:             ; preds = %.lr.ph176.i.split.us.split.us.split.us
  %i.af = add i32 %5, -2                          ; 2 uses
  %i.ag = lshr i32 %i.af, 1                       ; 2 uses
  %i.ah = add nuw i32 %i.ag, 1                    ; 2 uses
  %i.ai = icmp eq i32 %i.ag, 0
  %unroll_iter246 = and i32 %i.ah, -2
  %i.aj = and i32 %i.af, 2
  %lcmp.mod242.not.not = icmp eq i32 %i.aj, 0
  %lcmp.mod245 = trunc i32 %i.ah to i1
  br label %.loopexit145.i.us.us.us.us

.loopexit145.i.us.us.us.preheader:                ; preds = %.lr.ph176.i.split.us.split.us.split.us
  %umax = tail call i64 @llvm.umax.i64(i64 %i.v, i64 31)
  %i.ak = and i64 %umax, 2147483632
  br label %.preheader136.loopexit.i

.loopexit145.i.us.us.us.us:                       ; preds = %.loopexit145.i.us.us.us.us.preheader, %.loopexit138.i.us.us.us.us
  %indvars.iv.i.us.us.us.us = phi i64 [ %indvars.iv.next.i.us.us.us.us, %.loopexit138.i.us.us.us.us ], [ 0, %.loopexit145.i.us.us.us.us.preheader ] ; 2 uses
  %.0549175.i.us.us.us.us = phi ptr [ %.9.i.us.us.us.us, %.loopexit138.i.us.us.us.us ], [ %.val, %.loopexit145.i.us.us.us.us.preheader ] ; 3 uses
  %i.al = load ptr, ptr %0, align 8, !tbaa !9
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %i.n
  %i.an = add nsw i64 %indvars.iv.i.us.us.us.us, %i.w
  %i.ao = mul nuw nsw i64 %i.an, %i.x
  %i.ap = getelementptr inbounds [2 x i8], ptr %i.am, i64 %i.ao ; 3 uses
  br i1 %i.t, label %.lr.ph165.i.us.us.us.us.preheader, label %.preheader137.i.us.us.us.us

.lr.ph165.i.us.us.us.us.preheader:                ; preds = %.loopexit145.i.us.us.us.us
  br i1 %i.ai, label %.lr.ph165.i.us.us.us.us.epil.preheader, label %.lr.ph165.i.us.us.us.us

.lr.ph165.i.us.us.us.us:                          ; preds = %.lr.ph165.i.us.us.us.us.preheader, %.lr.ph165.i.us.us.us.us
  %.7164.i.us.us.us.us = phi ptr [ %i.be, %.lr.ph165.i.us.us.us.us ], [ %.0549175.i.us.us.us.us, %.lr.ph165.i.us.us.us.us.preheader ] ; 5 uses
  %.6577163.i.us.us.us.us = phi ptr [ %i.bf, %.lr.ph165.i.us.us.us.us ], [ %i.ap, %.lr.ph165.i.us.us.us.us.preheader ] ; 3 uses
  %niter247 = phi i32 [ %niter247.next.1, %.lr.ph165.i.us.us.us.us ], [ 0, %.lr.ph165.i.us.us.us.us.preheader ]
  %i.aq = load <16 x i16>, ptr %.6577163.i.us.us.us.us, align 1, !tbaa !17 ; 2 uses
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %.6577163.i.us.us.us.us, i64 %i.k
  %i.as = load <16 x i16>, ptr %i.ar, align 1, !tbaa !17 ; 2 uses
  %i.at = shufflevector <16 x i16> %i.aq, <16 x i16> %i.as, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.au = shufflevector <16 x i16> %i.aq, <16 x i16> %i.as, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i16> %i.at, ptr %.7164.i.us.us.us.us, align 1, !tbaa !17
  %i.av = getelementptr inbounds nuw i8, ptr %.7164.i.us.us.us.us, i64 32
  store <16 x i16> %i.au, ptr %i.av, align 1, !tbaa !17
  %i.aw = getelementptr inbounds nuw i8, ptr %.7164.i.us.us.us.us, i64 64
  %i.ax = getelementptr inbounds nuw i8, ptr %.6577163.i.us.us.us.us, i64 %.idx624.i ; 3 uses
  %i.ay = load <16 x i16>, ptr %i.ax, align 1, !tbaa !17 ; 2 uses
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %i.k
  %i.ba = load <16 x i16>, ptr %i.az, align 1, !tbaa !17 ; 2 uses
  %i.bb = shufflevector <16 x i16> %i.ay, <16 x i16> %i.ba, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bc = shufflevector <16 x i16> %i.ay, <16 x i16> %i.ba, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i16> %i.bb, ptr %i.aw, align 1, !tbaa !17
  %i.bd = getelementptr inbounds nuw i8, ptr %.7164.i.us.us.us.us, i64 96
  store <16 x i16> %i.bc, ptr %i.bd, align 1, !tbaa !17
  %i.be = getelementptr inbounds nuw i8, ptr %.7164.i.us.us.us.us, i64 128 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.idx624.i ; 3 uses
  %niter247.next.1 = add nuw nsw i32 %niter247, 2 ; 2 uses
  %niter247.ncmp.1.not = icmp eq i32 %niter247.next.1, %unroll_iter246
  br i1 %niter247.ncmp.1.not, label %.preheader137.i.us.us.us.us.loopexit.unr-lcssa, label %.lr.ph165.i.us.us.us.us, !llvm.loop !324

.preheader137.i.us.us.us.us.loopexit.unr-lcssa:   ; preds = %.lr.ph165.i.us.us.us.us
  br i1 %lcmp.mod242.not.not, label %.lr.ph165.i.us.us.us.us.epil.preheader, label %.preheader137.i.us.us.us.us

.lr.ph165.i.us.us.us.us.epil.preheader:           ; preds = %.preheader137.i.us.us.us.us.loopexit.unr-lcssa, %.lr.ph165.i.us.us.us.us.preheader
  %.7164.i.us.us.us.us.epil.init = phi ptr [ %.0549175.i.us.us.us.us, %.lr.ph165.i.us.us.us.us.preheader ], [ %i.be, %.preheader137.i.us.us.us.us.loopexit.unr-lcssa ] ; 3 uses
  %.6577163.i.us.us.us.us.epil.init = phi ptr [ %i.ap, %.lr.ph165.i.us.us.us.us.preheader ], [ %i.bf, %.preheader137.i.us.us.us.us.loopexit.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod245)
  %i.bg = load <16 x i16>, ptr %.6577163.i.us.us.us.us.epil.init, align 1, !tbaa !17 ; 2 uses
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %.6577163.i.us.us.us.us.epil.init, i64 %i.k
  %i.bi = load <16 x i16>, ptr %i.bh, align 1, !tbaa !17 ; 2 uses
  %i.bj = shufflevector <16 x i16> %i.bg, <16 x i16> %i.bi, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bk = shufflevector <16 x i16> %i.bg, <16 x i16> %i.bi, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i16> %i.bj, ptr %.7164.i.us.us.us.us.epil.init, align 1, !tbaa !17
  %i.bl = getelementptr inbounds nuw i8, ptr %.7164.i.us.us.us.us.epil.init, i64 32
  store <16 x i16> %i.bk, ptr %i.bl, align 1, !tbaa !17
  %i.bm = getelementptr inbounds nuw i8, ptr %.7164.i.us.us.us.us.epil.init, i64 64
  %i.bn = getelementptr inbounds nuw i8, ptr %.6577163.i.us.us.us.us.epil.init, i64 %.idx624.i
  br label %.preheader137.i.us.us.us.us

.preheader137.i.us.us.us.us:                      ; preds = %.lr.ph165.i.us.us.us.us.epil.preheader, %.preheader137.i.us.us.us.us.loopexit.unr-lcssa, %.loopexit145.i.us.us.us.us
  %.0584.lcssa.i.us.us.us.us = phi i32 [ 0, %.loopexit145.i.us.us.us.us ], [ %i.u, %.preheader137.i.us.us.us.us.loopexit.unr-lcssa ], [ %i.u, %.lr.ph165.i.us.us.us.us.epil.preheader ] ; 5 uses
  %.6577.lcssa.i.us.us.us.us = phi ptr [ %i.ap, %.loopexit145.i.us.us.us.us ], [ %i.bf, %.preheader137.i.us.us.us.us.loopexit.unr-lcssa ], [ %i.bn, %.lr.ph165.i.us.us.us.us.epil.preheader ] ; 2 uses
  %.7.lcssa.i.us.us.us.us = phi ptr [ %.0549175.i.us.us.us.us, %.loopexit145.i.us.us.us.us ], [ %i.be, %.preheader137.i.us.us.us.us.loopexit.unr-lcssa ], [ %i.bm, %.lr.ph165.i.us.us.us.us.epil.preheader ] ; 3 uses
  %i.bo = icmp slt i32 %.0584.lcssa.i.us.us.us.us, %5
  br i1 %i.bo, label %.lr.ph172.i.us.us.us.us.preheader, label %.loopexit138.i.us.us.us.us

.lr.ph172.i.us.us.us.us.preheader:                ; preds = %.preheader137.i.us.us.us.us
  %i.bp = sub i32 %5, %.0584.lcssa.i.us.us.us.us
  %xtraiter248 = and i32 %i.bp, 7                 ; 2 uses
  %lcmp.mod249.not = icmp eq i32 %xtraiter248, 0
  br i1 %lcmp.mod249.not, label %.lr.ph172.i.us.us.us.us.prol.loopexit, label %.lr.ph172.i.us.us.us.us.prol

.lr.ph172.i.us.us.us.us.prol:                     ; preds = %.lr.ph172.i.us.us.us.us.preheader, %.lr.ph172.i.us.us.us.us.prol
  %.8171.i.us.us.us.us.prol = phi ptr [ %i.br, %.lr.ph172.i.us.us.us.us.prol ], [ %.7.lcssa.i.us.us.us.us, %.lr.ph172.i.us.us.us.us.preheader ] ; 2 uses
  %.7578170.i.us.us.us.us.prol = phi ptr [ %i.bs, %.lr.ph172.i.us.us.us.us.prol ], [ %.6577.lcssa.i.us.us.us.us, %.lr.ph172.i.us.us.us.us.preheader ] ; 2 uses
  %.1585169.i.us.us.us.us.prol = phi i32 [ %i.bt, %.lr.ph172.i.us.us.us.us.prol ], [ %.0584.lcssa.i.us.us.us.us, %.lr.ph172.i.us.us.us.us.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph172.i.us.us.us.us.prol ], [ 0, %.lr.ph172.i.us.us.us.us.preheader ]
  %i.bq = load <4 x i64>, ptr %.7578170.i.us.us.us.us.prol, align 1, !tbaa !17
  store <4 x i64> %i.bq, ptr %.8171.i.us.us.us.us.prol, align 1, !tbaa !17
  %i.br = getelementptr inbounds nuw i8, ptr %.8171.i.us.us.us.us.prol, i64 32 ; 3 uses
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %.7578170.i.us.us.us.us.prol, i64 %i.k ; 2 uses
  %i.bt = add nuw nsw i32 %.1585169.i.us.us.us.us.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter248
  br i1 %prol.iter.cmp.not, label %.lr.ph172.i.us.us.us.us.prol.loopexit, label %.lr.ph172.i.us.us.us.us.prol, !llvm.loop !325

.lr.ph172.i.us.us.us.us.prol.loopexit:            ; preds = %.lr.ph172.i.us.us.us.us.prol, %.lr.ph172.i.us.us.us.us.preheader
  %.lcssa232.unr = phi ptr [ poison, %.lr.ph172.i.us.us.us.us.preheader ], [ %i.br, %.lr.ph172.i.us.us.us.us.prol ]
  %.8171.i.us.us.us.us.unr = phi ptr [ %.7.lcssa.i.us.us.us.us, %.lr.ph172.i.us.us.us.us.preheader ], [ %i.br, %.lr.ph172.i.us.us.us.us.prol ]
  %.7578170.i.us.us.us.us.unr = phi ptr [ %.6577.lcssa.i.us.us.us.us, %.lr.ph172.i.us.us.us.us.preheader ], [ %i.bs, %.lr.ph172.i.us.us.us.us.prol ]
  %.1585169.i.us.us.us.us.unr = phi i32 [ %.0584.lcssa.i.us.us.us.us, %.lr.ph172.i.us.us.us.us.preheader ], [ %i.bt, %.lr.ph172.i.us.us.us.us.prol ]
  %i.bu = sub i32 %.0584.lcssa.i.us.us.us.us, %5
  %i.bv = icmp ugt i32 %i.bu, -8
  br i1 %i.bv, label %.loopexit138.i.us.us.us.us, label %.lr.ph172.i.us.us.us.us

.lr.ph172.i.us.us.us.us:                          ; preds = %.lr.ph172.i.us.us.us.us.prol.loopexit, %.lr.ph172.i.us.us.us.us
  %.8171.i.us.us.us.us = phi ptr [ %i.cs, %.lr.ph172.i.us.us.us.us ], [ %.8171.i.us.us.us.us.unr, %.lr.ph172.i.us.us.us.us.prol.loopexit ] ; 9 uses
  %.7578170.i.us.us.us.us = phi ptr [ %i.ct, %.lr.ph172.i.us.us.us.us ], [ %.7578170.i.us.us.us.us.unr, %.lr.ph172.i.us.us.us.us.prol.loopexit ] ; 2 uses
  %.1585169.i.us.us.us.us = phi i32 [ %i.cu, %.lr.ph172.i.us.us.us.us ], [ %.1585169.i.us.us.us.us.unr, %.lr.ph172.i.us.us.us.us.prol.loopexit ]
  %i.bw = load <4 x i64>, ptr %.7578170.i.us.us.us.us, align 1, !tbaa !17
  store <4 x i64> %i.bw, ptr %.8171.i.us.us.us.us, align 1, !tbaa !17
  %i.bx = getelementptr inbounds nuw i8, ptr %.8171.i.us.us.us.us, i64 32
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %.7578170.i.us.us.us.us, i64 %i.k ; 2 uses
  %i.bz = load <4 x i64>, ptr %i.by, align 1, !tbaa !17
  store <4 x i64> %i.bz, ptr %i.bx, align 1, !tbaa !17
  %i.ca = getelementptr inbounds nuw i8, ptr %.8171.i.us.us.us.us, i64 64
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %i.k ; 2 uses
  %i.cc = load <4 x i64>, ptr %i.cb, align 1, !tbaa !17
  store <4 x i64> %i.cc, ptr %i.ca, align 1, !tbaa !17
  %i.cd = getelementptr inbounds nuw i8, ptr %.8171.i.us.us.us.us, i64 96
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %i.k ; 2 uses
  %i.cf = load <4 x i64>, ptr %i.ce, align 1, !tbaa !17
  store <4 x i64> %i.cf, ptr %i.cd, align 1, !tbaa !17
  %i.cg = getelementptr inbounds nuw i8, ptr %.8171.i.us.us.us.us, i64 128
end_hunk_2
begin_hunk_3_@_ZN4ncnn37transpose_pack_B_tile_bf16_avx512bf16ERKNS_3MatERS0_iiii:bb.a
  %i.agl = getelementptr inbounds nuw i8, ptr %.7570274.i, i64 2
  %i.agm = load i16, ptr %i.agl, align 2, !tbaa !57
  %i.agn = getelementptr inbounds nuw i8, ptr %.38275.i, i64 2
  store i16 %i.agm, ptr %i.agn, align 2, !tbaa !57
  %i.ago = getelementptr inbounds nuw i8, ptr %.38275.i, i64 4
  %i.agp = getelementptr inbounds nuw [2 x i8], ptr %.7570274.i, i64 %i.k ; 3 uses
  %i.agq = load i16, ptr %i.agp, align 2, !tbaa !57
  store i16 %i.agq, ptr %i.ago, align 2, !tbaa !57
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agp, i64 2
  %i.ags = load i16, ptr %i.agr, align 2, !tbaa !57
  %i.agt = getelementptr inbounds nuw i8, ptr %.38275.i, i64 6
  store i16 %i.ags, ptr %i.agt, align 2, !tbaa !57
  %i.agu = getelementptr inbounds nuw i8, ptr %.38275.i, i64 8
  %i.agv = getelementptr inbounds nuw [2 x i8], ptr %i.agp, i64 %i.k ; 3 uses
  %i.agw = load i16, ptr %i.agv, align 2, !tbaa !57
  store i16 %i.agw, ptr %i.agu, align 2, !tbaa !57
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agv, i64 2
  %i.agy = load i16, ptr %i.agx, align 2, !tbaa !57
  %i.agz = getelementptr inbounds nuw i8, ptr %.38275.i, i64 10
  store i16 %i.agy, ptr %i.agz, align 2, !tbaa !57
  %i.aha = getelementptr inbounds nuw i8, ptr %.38275.i, i64 12
  %i.ahb = getelementptr inbounds nuw [2 x i8], ptr %i.agv, i64 %i.k ; 3 uses
  %i.ahc = load i16, ptr %i.ahb, align 2, !tbaa !57
  store i16 %i.ahc, ptr %i.aha, align 2, !tbaa !57
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.ahb, i64 2
  %i.ahe = load i16, ptr %i.ahd, align 2, !tbaa !57
  %i.ahf = getelementptr inbounds nuw i8, ptr %.38275.i, i64 14
  store i16 %i.ahe, ptr %i.ahf, align 2, !tbaa !57
  %i.ahg = getelementptr inbounds nuw i8, ptr %.38275.i, i64 16 ; 2 uses
  %i.ahh = getelementptr inbounds nuw [2 x i8], ptr %i.ahb, i64 %i.k
  %i.ahi = add nuw nsw i32 %.1547276.i, 4         ; 2 uses
  %exitcond415.not.i.3 = icmp eq i32 %i.ahi, %5
  br i1 %exitcond415.not.i.3, label %.loopexit108.i, label %.lr.ph277.i, !llvm.loop !350

.loopexit108.i.loopexit204.unr-lcssa:             ; preds = %.lr.ph258.i
  br i1 %lcmp.mod283.not.not, label %.lr.ph258.i.epil.preheader, label %.loopexit108.i

.lr.ph258.i.epil.preheader:                       ; preds = %.loopexit108.i.loopexit204.unr-lcssa, %.lr.ph258.i.preheader
  %.33257.i.epil.init = phi ptr [ %.30280.i, %.lr.ph258.i.preheader ], [ %i.adm, %.loopexit108.i.loopexit204.unr-lcssa ] ; 3 uses
  %.2565255.i.epil.init = phi ptr [ %i.ach, %.lr.ph258.i.preheader ], [ %i.adn, %.loopexit108.i.loopexit204.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod285)
  %i.ahj = load <4 x i32>, ptr %.2565255.i.epil.init, align 1, !tbaa !17 ; 2 uses
  %i.ahk = getelementptr inbounds nuw i8, ptr %.2565255.i.epil.init, i64 16
  %i.ahl = load <4 x i32>, ptr %i.ahk, align 1, !tbaa !17 ; 2 uses
  %i.ahm = shufflevector <4 x i32> %i.ahj, <4 x i32> %i.ahl, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ahn = shufflevector <4 x i32> %i.ahj, <4 x i32> %i.ahl, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x i32> %i.ahm, ptr %.33257.i.epil.init, align 1, !tbaa !17
  %i.aho = getelementptr inbounds nuw i8, ptr %.33257.i.epil.init, i64 16
  store <4 x i32> %i.ahn, ptr %i.aho, align 1, !tbaa !17
  %i.ahp = getelementptr inbounds nuw i8, ptr %.33257.i.epil.init, i64 32
  br label %.loopexit108.i

.loopexit108.i.loopexit205.unr-lcssa:             ; preds = %.lr.ph252.i
  br i1 %lcmp.mod277.not.not, label %.lr.ph252.i.epil.preheader, label %.loopexit108.i

.lr.ph252.i.epil.preheader:                       ; preds = %.loopexit108.i.loopexit205.unr-lcssa, %.lr.ph252.i.preheader
  %.31251.i.epil.init = phi ptr [ %.30280.i, %.lr.ph252.i.preheader ], [ %i.acw, %.loopexit108.i.loopexit205.unr-lcssa ] ; 3 uses
  %.0563249.i.epil.init = phi ptr [ %i.ach, %.lr.ph252.i.preheader ], [ %i.acx, %.loopexit108.i.loopexit205.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod279)
  %i.ahq = load <8 x i32>, ptr %.0563249.i.epil.init, align 1, !tbaa !17 ; 2 uses
  %i.ahr = getelementptr inbounds nuw i8, ptr %.0563249.i.epil.init, i64 32
  %i.ahs = load <8 x i32>, ptr %i.ahr, align 1, !tbaa !17 ; 2 uses
  %i.aht = shufflevector <8 x i32> %i.ahq, <8 x i32> %i.ahs, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ahu = shufflevector <8 x i32> %i.ahq, <8 x i32> %i.ahs, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i32> %i.aht, ptr %.31251.i.epil.init, align 1, !tbaa !17
  %i.ahv = getelementptr inbounds nuw i8, ptr %.31251.i.epil.init, i64 32
  store <8 x i32> %i.ahu, ptr %i.ahv, align 1, !tbaa !17
  %i.ahw = getelementptr inbounds nuw i8, ptr %.31251.i.epil.init, i64 64
  br label %.loopexit108.i

.loopexit108.i:                                   ; preds = %.lr.ph252.i.epil.preheader, %.loopexit108.i.loopexit205.unr-lcssa, %.lr.ph258.i.epil.preheader, %.loopexit108.i.loopexit204.unr-lcssa, %.lr.ph264.i, %.lr.ph277.i.prol.loopexit, %.lr.ph277.i, %.preheader107.i, %.loopexit111.i
  %.39.i = phi ptr [ %.30280.i, %.loopexit111.i ], [ %.37.lcssa.i, %.preheader107.i ], [ %i.ahg, %.lr.ph277.i ], [ %i.aek, %.lr.ph264.i ], [ %i.ahp, %.lr.ph258.i.epil.preheader ], [ %.lcssa211.unr, %.lr.ph277.i.prol.loopexit ], [ %i.adm, %.loopexit108.i.loopexit204.unr-lcssa ], [ %i.acw, %.loopexit108.i.loopexit205.unr-lcssa ], [ %i.ahw, %.lr.ph252.i.epil.preheader ] ; 2 uses
  %indvars.iv.next417.i = add nuw nsw i64 %indvars.iv416.i, 2 ; 3 uses
  %i.ahx = icmp slt i64 %indvars.iv.next417.i, %invariant.op522.i
  br i1 %i.ahx, label %bb.b, label %.preheader106.loopexit.i, !llvm.loop !351

bb.c:                                             ; preds = %.loopexit.i, %.lr.ph309.i
  %indvars.iv420.i = phi i64 [ %i.abt, %.lr.ph309.i ], [ %indvars.iv.next421.i, %.loopexit.i ] ; 2 uses
  %.40308.i = phi ptr [ %.30.lcssa.i, %.lr.ph309.i ], [ %.48.i, %.loopexit.i ] ; 6 uses
  %i.ahy = load ptr, ptr %0, align 8, !tbaa !9
  %i.ahz = getelementptr inbounds nuw [2 x i8], ptr %i.ahy, i64 %i.abm
  %i.aia = add nsw i64 %indvars.iv420.i, %i.abu
  %i.aib = mul nsw i64 %i.aia, %i.abv
  %i.aic = getelementptr inbounds [2 x i8], ptr %i.ahz, i64 %i.aib ; 5 uses
  br i1 %i.abx, label %.loopexit105.i, label %.lr.ph287.i

.lr.ph287.i:                                      ; preds = %bb.c, %.lr.ph287.i
  %.0544286.i = phi i32 [ %i.aig, %.lr.ph287.i ], [ 0, %bb.c ]
  %.0545285.i = phi ptr [ %i.aif, %.lr.ph287.i ], [ %i.aic, %bb.c ] ; 2 uses
  %.41284.i = phi ptr [ %i.aie, %.lr.ph287.i ], [ %.40308.i, %bb.c ] ; 2 uses
  %i.aid = load <4 x i64>, ptr %.0545285.i, align 1, !tbaa !17
  store <4 x i64> %i.aid, ptr %.41284.i, align 1, !tbaa !17
  %i.aie = getelementptr inbounds nuw i8, ptr %.41284.i, i64 32 ; 2 uses
  %i.aif = getelementptr inbounds nuw i8, ptr %.0545285.i, i64 %.idx611.i
  %i.aig = add nuw nsw i32 %.0544286.i, 16        ; 2 uses
  %i.aih = or disjoint i32 %i.aig, 15
  %i.aii = icmp slt i32 %i.aih, %5
  br i1 %i.aii, label %.lr.ph287.i, label %.loopexit.i, !llvm.loop !352

.loopexit105.i:                                   ; preds = %bb.c
  br i1 %i.aby, label %.loopexit103.i, label %.lr.ph293.i

.lr.ph293.i:                                      ; preds = %.loopexit105.i, %.lr.ph293.i
  %.0543292.i = phi i32 [ %i.aim, %.lr.ph293.i ], [ 0, %.loopexit105.i ]
  %.2291.i = phi ptr [ %i.ail, %.lr.ph293.i ], [ %i.aic, %.loopexit105.i ] ; 2 uses
  %.43290.i = phi ptr [ %i.aik, %.lr.ph293.i ], [ %.40308.i, %.loopexit105.i ] ; 2 uses
  %i.aij = load <2 x i64>, ptr %.2291.i, align 1, !tbaa !17
  store <2 x i64> %i.aij, ptr %.43290.i, align 1, !tbaa !17
  %i.aik = getelementptr inbounds nuw i8, ptr %.43290.i, i64 16 ; 2 uses
  %i.ail = getelementptr inbounds nuw i8, ptr %.2291.i, i64 %.idx610.i
  %i.aim = add nuw nsw i32 %.0543292.i, 8         ; 2 uses
  %i.ain = or disjoint i32 %i.aim, 7
  %i.aio = icmp slt i32 %i.ain, %5
  br i1 %i.aio, label %.lr.ph293.i, label %.loopexit.i, !llvm.loop !353

.loopexit103.i:                                   ; preds = %.loopexit105.i
  br i1 %i.abz, label %.loopexit101.i, label %.lr.ph299.i

.lr.ph299.i:                                      ; preds = %.loopexit103.i, %.lr.ph299.i
  %.0542298.i = phi i32 [ %i.ais, %.lr.ph299.i ], [ 0, %.loopexit103.i ]
  %.4297.i = phi ptr [ %i.air, %.lr.ph299.i ], [ %i.aic, %.loopexit103.i ] ; 2 uses
  %.45296.i = phi ptr [ %i.aiq, %.lr.ph299.i ], [ %.40308.i, %.loopexit103.i ] ; 2 uses
  %i.aip = load i64, ptr %.4297.i, align 1, !tbaa !17
  store i64 %i.aip, ptr %.45296.i, align 1, !tbaa !17
  %i.aiq = getelementptr inbounds nuw i8, ptr %.45296.i, i64 8 ; 2 uses
  %i.air = getelementptr inbounds nuw i8, ptr %.4297.i, i64 %.idx.i
  %i.ais = add nuw nsw i32 %.0542298.i, 4         ; 2 uses
  %i.ait = or disjoint i32 %i.ais, 3
  %i.aiu = icmp slt i32 %i.ait, %5
  br i1 %i.aiu, label %.lr.ph299.i, label %.loopexit.i, !llvm.loop !354

.loopexit101.i:                                   ; preds = %.loopexit103.i
  br i1 %i.aca, label %.loopexit.i, label %.lr.ph305.i.preheader

.lr.ph305.i.preheader:                            ; preds = %.loopexit101.i
  br i1 %i.acc, label %.lr.ph305.i.epil.preheader, label %.lr.ph305.i

.lr.ph305.i:                                      ; preds = %.lr.ph305.i.preheader, %.lr.ph305.i
  %.6303.i = phi ptr [ %i.ajs, %.lr.ph305.i ], [ %i.aic, %.lr.ph305.i.preheader ] ; 2 uses
  %.47302.i = phi ptr [ %i.ajr, %.lr.ph305.i ], [ %.40308.i, %.lr.ph305.i.preheader ] ; 9 uses
  %niter303 = phi i32 [ %niter303.next.7, %.lr.ph305.i ], [ 0, %.lr.ph305.i.preheader ]
  %i.aiv = load i16, ptr %.6303.i, align 2, !tbaa !57
  store i16 %i.aiv, ptr %.47302.i, align 2, !tbaa !57
  %i.aiw = getelementptr inbounds nuw i8, ptr %.47302.i, i64 2
  %i.aix = getelementptr inbounds nuw [2 x i8], ptr %.6303.i, i64 %i.k ; 2 uses
  %i.aiy = load i16, ptr %i.aix, align 2, !tbaa !57
  store i16 %i.aiy, ptr %i.aiw, align 2, !tbaa !57
  %i.aiz = getelementptr inbounds nuw i8, ptr %.47302.i, i64 4
  %i.aja = getelementptr inbounds nuw [2 x i8], ptr %i.aix, i64 %i.k ; 2 uses
  %i.ajb = load i16, ptr %i.aja, align 2, !tbaa !57
  store i16 %i.ajb, ptr %i.aiz, align 2, !tbaa !57
  %i.ajc = getelementptr inbounds nuw i8, ptr %.47302.i, i64 6
  %i.ajd = getelementptr inbounds nuw [2 x i8], ptr %i.aja, i64 %i.k ; 2 uses
  %i.aje = load i16, ptr %i.ajd, align 2, !tbaa !57
  store i16 %i.aje, ptr %i.ajc, align 2, !tbaa !57
  %i.ajf = getelementptr inbounds nuw i8, ptr %.47302.i, i64 8
  %i.ajg = getelementptr inbounds nuw [2 x i8], ptr %i.ajd, i64 %i.k ; 2 uses
  %i.ajh = load i16, ptr %i.ajg, align 2, !tbaa !57
  store i16 %i.ajh, ptr %i.ajf, align 2, !tbaa !57
  %i.aji = getelementptr inbounds nuw i8, ptr %.47302.i, i64 10
  %i.ajj = getelementptr inbounds nuw [2 x i8], ptr %i.ajg, i64 %i.k ; 2 uses
  %i.ajk = load i16, ptr %i.ajj, align 2, !tbaa !57
  store i16 %i.ajk, ptr %i.aji, align 2, !tbaa !57
  %i.ajl = getelementptr inbounds nuw i8, ptr %.47302.i, i64 12
  %i.ajm = getelementptr inbounds nuw [2 x i8], ptr %i.ajj, i64 %i.k ; 2 uses
  %i.ajn = load i16, ptr %i.ajm, align 2, !tbaa !57
  store i16 %i.ajn, ptr %i.ajl, align 2, !tbaa !57
  %i.ajo = getelementptr inbounds nuw i8, ptr %.47302.i, i64 14
  %i.ajp = getelementptr inbounds nuw [2 x i8], ptr %i.ajm, i64 %i.k ; 2 uses
  %i.ajq = load i16, ptr %i.ajp, align 2, !tbaa !57
  store i16 %i.ajq, ptr %i.ajo, align 2, !tbaa !57
  %i.ajr = getelementptr inbounds nuw i8, ptr %.47302.i, i64 16 ; 3 uses
  %i.ajs = getelementptr inbounds nuw [2 x i8], ptr %i.ajp, i64 %i.k ; 2 uses
  %niter303.next.7 = add i32 %niter303, 8         ; 2 uses
  %niter303.ncmp.7 = icmp eq i32 %niter303.next.7, %unroll_iter302
  br i1 %niter303.ncmp.7, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph305.i, !llvm.loop !355

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph305.i
  br i1 %lcmp.mod299.not, label %.loopexit.i, label %.lr.ph305.i.epil.preheader

.lr.ph305.i.epil.preheader:                       ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph305.i.preheader
  %.6303.i.epil.init = phi ptr [ %i.aic, %.lr.ph305.i.preheader ], [ %i.ajs, %.loopexit.i.loopexit.unr-lcssa ]
  %.47302.i.epil.init = phi ptr [ %.40308.i, %.lr.ph305.i.preheader ], [ %i.ajr, %.loopexit.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod301)
  br label %.lr.ph305.i.epil

.lr.ph305.i.epil:                                 ; preds = %.lr.ph305.i.epil, %.lr.ph305.i.epil.preheader
  %.6303.i.epil = phi ptr [ %i.ajv, %.lr.ph305.i.epil ], [ %.6303.i.epil.init, %.lr.ph305.i.epil.preheader ] ; 2 uses
  %.47302.i.epil = phi ptr [ %i.aju, %.lr.ph305.i.epil ], [ %.47302.i.epil.init, %.lr.ph305.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph305.i.epil ], [ 0, %.lr.ph305.i.epil.preheader ]
  %i.ajt = load i16, ptr %.6303.i.epil, align 2, !tbaa !57
  store i16 %i.ajt, ptr %.47302.i.epil, align 2, !tbaa !57
  %i.aju = getelementptr inbounds nuw i8, ptr %.47302.i.epil, i64 2 ; 2 uses
  %i.ajv = getelementptr inbounds nuw [2 x i8], ptr %.6303.i.epil, i64 %i.k
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter298
  br i1 %epil.iter.cmp.not, label %.loopexit.i, label %.lr.ph305.i.epil, !llvm.loop !356

.loopexit.i:                                      ; preds = %.lr.ph287.i, %.lr.ph293.i, %.lr.ph299.i, %.loopexit.i.loopexit.unr-lcssa, %.lr.ph305.i.epil, %.loopexit101.i
  %.48.i = phi ptr [ %.40308.i, %.loopexit101.i ], [ %i.aju, %.lr.ph305.i.epil ], [ %i.aiq, %.lr.ph299.i ], [ %i.aik, %.lr.ph293.i ], [ %i.ajr, %.loopexit.i.loopexit.unr-lcssa ], [ %i.aie, %.lr.ph287.i ]
  %indvars.iv.next421.i = add nsw i64 %indvars.iv420.i, 1 ; 2 uses
  %exitcond423.not.i = icmp eq i64 %indvars.iv.next421.i, %wide.trip.count.i
  br i1 %exitcond423.not.i, label %_ZN4ncnnL26transpose_pack_B_tile_bf16ERKNS_3MatERS0_iiii.exit, label %bb.c, !llvm.loop !357

_ZN4ncnnL26transpose_pack_B_tile_bf16ERKNS_3MatERS0_iiii.exit: ; preds = %.loopexit.i, %.preheader106.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4ncnn40gemm_transB_packed_tile_bf16s_avx512bf16ERKNS_3MatES2_RS0_iiiiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !9     ; 3 uses
  %.val8 = load ptr, ptr %1, align 8, !tbaa !9    ; 10 uses
  %.val9 = load ptr, ptr %2, align 8, !tbaa !9    ; 2 uses
  %i.a = icmp sgt i32 %4, 15
  br i1 %i.a, label %.preheader425.lr.ph.i, label %.preheader415.i

.preheader425.lr.ph.i:                            ; preds = %bb.a
  %i.b = icmp sgt i32 %6, 15
  %.not1811.i = icmp eq i32 %7, 0                 ; 5 uses
  %i.c = icmp sgt i32 %8, 1                       ; 5 uses
  %i.d = shl i32 %8, 4
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %i.f = add i32 %8, -2                           ; 6 uses
  %i.g = and i32 %i.f, -2
  %i.h = add i32 %i.g, 2                          ; 5 uses
  %i.i = and i32 %6, -16
  %i.j = lshr i32 %i.f, 1                         ; 2 uses
  %i.k = zext nneg i32 %i.j to i64                ; 4 uses
  %i.l = shl nuw nsw i64 %i.k, 5
  %i.m = shl nuw nsw i64 %i.k, 4
  %i.n = shl nuw nsw i64 %i.k, 3
  %i.o = shl nuw nsw i64 %i.k, 2
  %i.p = lshr i32 %i.f, 1                         ; 3 uses
  %i.q = zext nneg i32 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 6
  %i.s = add nuw nsw i64 %i.r, 64                 ; 2 uses
  %scevgep626 = getelementptr i8, ptr %.val, i64 %i.s
  %i.t = shl nsw i64 %i.e, 1
  %i.u = add nuw i32 %i.p, 1                      ; 6 uses
  %i.v = icmp eq i32 %i.p, 0
  %unroll_iter = and i32 %i.u, -2
  %i.w = and i32 %i.f, 2
  %lcmp.mod.not.not = icmp eq i32 %i.w, 0
  %lcmp.mod2484 = trunc i32 %i.u to i1
  %i.x = icmp eq i32 %i.j, 0
  %unroll_iter2492 = and i32 %i.u, -2
  %i.y = and i32 %i.f, 2
  %lcmp.mod2488.not.not = icmp eq i32 %i.y, 0
  %lcmp.mod2491 = trunc i32 %i.u to i1
  %xtraiter2496 = and i32 %i.u, 3                 ; 3 uses
  %i.z = icmp ult i32 %i.f, 6
  %unroll_iter2500 = and i32 %i.u, -4
  %lcmp.mod2497.not = icmp eq i32 %xtraiter2496, 0
  %lcmp.mod2499 = icmp ne i32 %xtraiter2496, 0
  br label %.preheader425.i

.preheader425.i:                                  ; preds = %._crit_edge648.i, %.preheader425.lr.ph.i
  %indvars.iv = phi ptr [ %scevgep627, %._crit_edge648.i ], [ %scevgep626, %.preheader425.lr.ph.i ] ; 5 uses
  %.01380652.i = phi ptr [ %i.tu, %._crit_edge648.i ], [ %.val, %.preheader425.lr.ph.i ] ; 14 uses
  %.01381651.i = phi ptr [ %.5.lcssa.i, %._crit_edge648.i ], [ %.val9, %.preheader425.lr.ph.i ] ; 2 uses
  %.01386650.i = phi i32 [ %i.tv, %._crit_edge648.i ], [ 0, %.preheader425.lr.ph.i ]
  br i1 %i.b, label %.lr.ph503.i, label %.preheader424.i

.preheader415.loopexit.i:                         ; preds = %._crit_edge648.i
  %i.aa = and i32 %4, 2147483632
  br label %.preheader415.i

.preheader415.i:                                  ; preds = %.preheader415.loopexit.i, %bb.a
  %.01386.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.aa, %.preheader415.loopexit.i ] ; 3 uses
  %.01381.lcssa.i = phi ptr [ %.val9, %bb.a ], [ %.5.lcssa.i, %.preheader415.loopexit.i ] ; 2 uses
  %.01380.lcssa.i = phi ptr [ %.val, %bb.a ], [ %i.tu, %.preheader415.loopexit.i ] ; 3 uses
  %i.ab = or disjoint i32 %.01386.lcssa.i, 7
  %i.ac = icmp slt i32 %i.ab, %4
  br i1 %i.ac, label %.preheader414.lr.ph.i, label %.preheader404.i

.preheader414.lr.ph.i:                            ; preds = %.preheader415.i
  %i.ad = icmp sgt i32 %6, 15
  %.not1806.i = icmp eq i32 %7, 0                 ; 5 uses
  %i.ae = icmp sgt i32 %8, 1                      ; 5 uses
  %i.af = shl i32 %8, 3
  %i.ag = sext i32 %i.af to i64                   ; 2 uses
  %i.ah = add i32 %8, -2                          ; 6 uses
  %i.ai = and i32 %i.ah, -2
  %i.aj = add i32 %i.ai, 2                        ; 5 uses
  %i.ak = and i32 %6, -16
  %i.al = lshr i32 %i.ah, 1                       ; 2 uses
  %i.am = zext nneg i32 %i.al to i64              ; 4 uses
  %i.an = shl nuw nsw i64 %i.am, 5
  %i.ao = add nuw nsw i64 %i.an, 32               ; 2 uses
  %scevgep1787.i = getelementptr i8, ptr %.01380.lcssa.i, i64 %i.ao
  %i.ap = shl nsw i64 %i.ag, 1
  %i.aq = shl nuw nsw i64 %i.am, 4
  %i.ar = shl nuw nsw i64 %i.am, 3
  %i.as = shl nuw nsw i64 %i.am, 2
  %i.at = lshr i32 %i.ah, 1                       ; 3 uses
  %i.au = zext nneg i32 %i.at to i64
  %i.av = shl nuw nsw i64 %i.au, 6
  %i.aw = add nuw i32 %i.at, 1                    ; 6 uses
  %i.ax = icmp eq i32 %i.at, 0
  %unroll_iter2512 = and i32 %i.aw, -2
  %i.ay = and i32 %i.ah, 2
  %lcmp.mod2506.not.not = icmp eq i32 %i.ay, 0
  %lcmp.mod2511 = trunc i32 %i.aw to i1
  %i.az = icmp eq i32 %i.al, 0
  %unroll_iter2522 = and i32 %i.aw, -2
  %i.ba = and i32 %i.ah, 2
  %lcmp.mod2518.not.not = icmp eq i32 %i.ba, 0
  %lcmp.mod2521 = trunc i32 %i.aw to i1
  %xtraiter2526 = and i32 %i.aw, 3                ; 3 uses
  %i.bb = icmp ult i32 %i.ah, 6
  %unroll_iter2531 = and i32 %i.aw, -4
  %lcmp.mod2528.not = icmp eq i32 %xtraiter2526, 0
  %lcmp.mod2530 = icmp ne i32 %xtraiter2526, 0
  br label %.preheader414.i

.preheader424.i:                                  ; preds = %._crit_edge.i, %.preheader425.i
  %.01415.lcssa.i = phi i32 [ 0, %.preheader425.i ], [ %i.i, %._crit_edge.i ] ; 3 uses
  %.01400.lcssa.i = phi ptr [ %.val8, %.preheader425.i ], [ %.21402.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.11382.lcssa.i = phi ptr [ %.01381651.i, %.preheader425.i ], [ %i.fp, %._crit_edge.i ] ; 2 uses
  %i.bc = or disjoint i32 %.01415.lcssa.i, 7
  %i.bd = icmp slt i32 %i.bc, %6
  br i1 %i.bd, label %.lr.ph556.i, label %.preheader423.i

.lr.ph503.i:                                      ; preds = %.preheader425.i, %._crit_edge.i
  %.11382502.i = phi ptr [ %i.fp, %._crit_edge.i ], [ %.01381651.i, %.preheader425.i ] ; 33 uses
  %.01400501.i = phi ptr [ %.21402.lcssa.i, %._crit_edge.i ], [ %.val8, %.preheader425.i ] ; 3 uses
  %.01415500.i = phi i32 [ %i.fq, %._crit_edge.i ], [ 0, %.preheader425.i ]
  br i1 %.not1811.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph503.i
  %i.be = load <16 x float>, ptr %.11382502.i, align 64, !tbaa !17
  %i.bf = getelementptr inbounds nuw i8, ptr %.11382502.i, i64 64
  %i.bg = load <16 x float>, ptr %i.bf, align 64, !tbaa !17
  %i.bh = getelementptr inbounds nuw i8, ptr %.11382502.i, i64 128
  %i.bi = load <16 x float>, ptr %i.bh, align 64, !tbaa !17
  %i.bj = getelementptr inbounds nuw i8, ptr %.11382502.i, i64 192
  %i.bk = load <16 x float>, ptr %i.bj, align 64, !tbaa !17
  %i.bl = getelementptr inbounds nuw i8, ptr %.11382502.i, i64 256
  %i.bm = load <16 x float>, ptr %i.bl, align 64, !tbaa !17
  %i.bn = getelementptr inbounds nuw i8, ptr %.11382502.i, i64 320
  %i.bo = load <16 x float>, ptr %i.bn, align 64, !tbaa !17
  %i.bp = getelementptr inbounds nuw i8, ptr %.11382502.i, i64 384
  %i.bq = load <16 x float>, ptr %i.bp, align 64, !tbaa !17
  %i.br = getelementptr inbounds nuw i8, ptr %.11382502.i, i64 448
  %i.bs = load <16 x float>, ptr %i.br, align 64, !tbaa !17
  %i.bt = getelementptr inbounds nuw i8, ptr %.11382502.i, i64 512
  %i.bu = load <16 x float>, ptr %i.bt, align 64, !tbaa !17
  %i.bv = getelementptr inbounds nuw i8, ptr %.11382502.i, i64 576
  %i.bw = load <16 x float>, ptr %i.bv, align 64, !tbaa !17
  %i.bx = getelementptr inbounds nuw i8, ptr %.11382502.i, i64 640
  %i.by = load <16 x float>, ptr %i.bx, align 64, !tbaa !17
  %i.bz = getelementptr inbounds nuw i8, ptr %.11382502.i, i64 704
  %i.ca = load <16 x float>, ptr %i.bz, align 64, !tbaa !17
  %i.cb = getelementptr inbounds nuw i8, ptr %.11382502.i, i64 768
  %i.cc = load <16 x float>, ptr %i.cb, align 64, !tbaa !17
  %i.cd = getelementptr inbounds nuw i8, ptr %.11382502.i, i64 832
  %i.ce = load <16 x float>, ptr %i.cd, align 64, !tbaa !17
  %i.cf = getelementptr inbounds nuw i8, ptr %.11382502.i, i64 896
  %i.cg = load <16 x float>, ptr %i.cf, align 64, !tbaa !17
  %i.ch = getelementptr inbounds nuw i8, ptr %.11382502.i, i64 960
  %i.ci = load <16 x float>, ptr %i.ch, align 64, !tbaa !17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph503.i
  %.01499.i = phi nsz <16 x float> [ %i.ci, %bb.b ], [ zeroinitializer, %.lr.ph503.i ] ; 2 uses
  %.01496.i = phi nsz <16 x float> [ %i.cg, %bb.b ], [ zeroinitializer, %.lr.ph503.i ] ; 2 uses
  %.01493.i = phi nsz <16 x float> [ %i.ce, %bb.b ], [ zeroinitializer, %.lr.ph503.i ] ; 2 uses
  %.01490.i = phi nsz <16 x float> [ %i.cc, %bb.b ], [ zeroinitializer, %.lr.ph503.i ] ; 2 uses
  %.01481.i = phi nsz <16 x float> [ %i.ca, %bb.b ], [ zeroinitializer, %.lr.ph503.i ] ; 2 uses
  %.01478.i = phi nsz <16 x float> [ %i.by, %bb.b ], [ zeroinitializer, %.lr.ph503.i ] ; 2 uses
  %.01469.i = phi nsz <16 x float> [ %i.bw, %bb.b ], [ zeroinitializer, %.lr.ph503.i ] ; 2 uses
  %.01466.i = phi nsz <16 x float> [ %i.bu, %bb.b ], [ zeroinitializer, %.lr.ph503.i ] ; 2 uses
  %.01451.i = phi nsz <16 x float> [ %i.bs, %bb.b ], [ zeroinitializer, %.lr.ph503.i ] ; 2 uses
  %.01448.i = phi nsz <16 x float> [ %i.bq, %bb.b ], [ zeroinitializer, %.lr.ph503.i ] ; 2 uses
  %.01445.i = phi nsz <16 x float> [ %i.bo, %bb.b ], [ zeroinitializer, %.lr.ph503.i ] ; 2 uses
  %.01442.i = phi nsz <16 x float> [ %i.bm, %bb.b ], [ zeroinitializer, %.lr.ph503.i ] ; 2 uses
  %.01439.i = phi nsz <16 x float> [ %i.bk, %bb.b ], [ zeroinitializer, %.lr.ph503.i ] ; 2 uses
  %.01436.i = phi nsz <16 x float> [ %i.bi, %bb.b ], [ zeroinitializer, %.lr.ph503.i ] ; 2 uses
  %.01425.i = phi nsz <16 x float> [ %i.bg, %bb.b ], [ zeroinitializer, %.lr.ph503.i ] ; 2 uses
  %.01422.i = phi nsz <16 x float> [ %i.be, %bb.b ], [ zeroinitializer, %.lr.ph503.i ] ; 2 uses
  br i1 %i.c, label %.lr.ph.i, label %.preheader420.i

.preheader420.i.loopexit:                         ; preds = %.lr.ph.i
  %scevgep = getelementptr i8, ptr %.01400501.i, i64 %i.s
  br label %.preheader420.i

.preheader420.i:                                  ; preds = %.preheader420.i.loopexit, %bb.c
  %.01502.lcssa.i = phi i32 [ 0, %bb.c ], [ %i.h, %.preheader420.i.loopexit ] ; 2 uses
  %.11500.lcssa.i = phi <16 x float> [ %.01499.i, %bb.c ], [ %i.dr, %.preheader420.i.loopexit ] ; 2 uses
  %.11497.lcssa.i = phi <16 x float> [ %.01496.i, %bb.c ], [ %i.dm, %.preheader420.i.loopexit ] ; 2 uses
  %.11494.lcssa.i = phi <16 x float> [ %.01493.i, %bb.c ], [ %i.dq, %.preheader420.i.loopexit ] ; 2 uses
  %.11491.lcssa.i = phi <16 x float> [ %.01490.i, %bb.c ], [ %i.dl, %.preheader420.i.loopexit ] ; 2 uses
  %.11482.lcssa.i = phi <16 x float> [ %.01481.i, %bb.c ], [ %i.dk, %.preheader420.i.loopexit ] ; 2 uses
  %.11479.lcssa.i = phi <16 x float> [ %.01478.i, %bb.c ], [ %i.dj, %.preheader420.i.loopexit ] ; 2 uses
  %.11470.lcssa.i = phi <16 x float> [ %.01469.i, %bb.c ], [ %i.dd, %.preheader420.i.loopexit ] ; 2 uses
  %.11467.lcssa.i = phi <16 x float> [ %.01466.i, %bb.c ], [ %i.dc, %.preheader420.i.loopexit ] ; 2 uses
  %.11452.lcssa.i = phi <16 x float> [ %.01451.i, %bb.c ], [ %i.dp, %.preheader420.i.loopexit ] ; 2 uses
  %.11449.lcssa.i = phi <16 x float> [ %.01448.i, %bb.c ], [ %i.dh, %.preheader420.i.loopexit ] ; 2 uses
  %.11446.lcssa.i = phi <16 x float> [ %.01445.i, %bb.c ], [ %i.do, %.preheader420.i.loopexit ] ; 2 uses
  %.11443.lcssa.i = phi <16 x float> [ %.01442.i, %bb.c ], [ %i.dg, %.preheader420.i.loopexit ] ; 2 uses
end_hunk_3
