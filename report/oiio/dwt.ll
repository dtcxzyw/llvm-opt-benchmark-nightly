inline.NumInlined: 158
inline.NumDeleted: 40
begin_hunk_0_@opj_dwt_decode:bb.a
  %.2.i.i10.lcssa = phi i32 [ %.2.i.i10.1, %opj_dwt_max_resolution.exit.i12.unr-lcssa ], [ %.2.i.i10.epil, %.lr.ph.i.i6.epil.preheader ]
  %i.he = zext i32 %.2.i.i10.lcssa to i64
  %i.hf = shl nuw nsw i64 %i.he, 4
  %i.hg = tail call ptr @opj_aligned_32_malloc(i64 noundef %i.hf) #16 ; 129 uses
  %.not.i13 = icmp eq ptr %i.hg, null
  br i1 %.not.i13, label %bb.w, label %.preheader294.i

end_hunk_0
begin_hunk_1_@opj_dwt_decode:bb.a
  %i.pk = zext i32 %i.pj to i64
  %.in321.us.us.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.pk
  %i.pl = icmp slt i32 %i.le, %i.lg               ; 2 uses
  %i.pm = shl i32 %.0175296.i, 3                  ; 4 uses
  %i.pn = add i32 %i.pm, -4                       ; 6 uses
  %i.po = zext i32 %i.pn to i64
  %i.pp = or disjoint i32 %i.pn, 1                ; 2 uses
  %i.pq = or disjoint i32 %i.pn, 2                ; 2 uses
  %i.pr = or disjoint i32 %i.pn, 3                ; 2 uses
  %.in315.us370.1.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.po ; 3 uses
  %i.ps = add i32 %i.pm, -2
  %.in315.v.us369.2.i.i = zext i32 %i.ps to i64
  %.in315.us370.2.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.in315.v.us369.2.i.i
  %i.pt = getelementptr inbounds nuw i8, ptr %.in315.us370.1.i.i, i64 8
  %i.pu = add i32 %i.pm, -1
  %.in315.v.us369.3.i.i = zext i32 %i.pu to i64
  %.in315.us370.3.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.in315.v.us369.3.i.i
  %i.pv = getelementptr inbounds nuw i8, ptr %.in315.us370.1.i.i, i64 12
  %i.pw = icmp sgt i32 %.0175296.i, 1
  %or.cond.i213.i = or i1 %i.pw, %.not320.us.i.i
  %i.px = icmp slt i32 %i.lb, 1
end_hunk_1
begin_hunk_2_@opj_dwt_decode:bb.a
.preheader353.split.split.split.us.preheader.i.i: ; preds = %.preheader353.split.split.i.i
  %i.apo = zext i32 %i.anb to i64
  %i.app = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.apo ; 4 uses
  %i.apq = load <2 x i32>, ptr %i.app, align 4, !tbaa !3
  %5 = load <2 x i32>, ptr %.in315.us370.1.i.i, align 4, !tbaa !3
  %6 = shl <2 x i32> %5, splat (i32 1)
  %i.apr = ashr exact <2 x i32> %6, splat (i32 1)
  %i.aps = add <2 x i32> %i.apr, %i.apq
  store <2 x i32> %i.aps, ptr %i.app, align 4, !tbaa !3
  %i.apt = getelementptr inbounds nuw i8, ptr %i.app, i64 8 ; 2 uses
end_hunk_2
