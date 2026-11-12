Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_tables?download=true
inline.NumInlined: 770
inline.NumDeleted: 207
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN5ImGui27TableDrawDefaultContextMenuEP10ImGuiTablei:bb.a
  br i1 %.not56.i.i, label %.critedge.lr.ph.i.i, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %bb.br
  %i.mg = icmp slt i32 %.034.fr.i.i, %i.ls
  br i1 %i.mg, label %.critedge.us.preheader.i.i, label %_ZL30TableGetMaxDisplayOrderAllowedP10ImGuiTableii.exit.i

.critedge.us.preheader.i.i:                       ; preds = %.split.us.i.i
  %i.mh = load ptr, ptr %i.gp, align 8, !tbaa !275
  %i.mi = sext i16 %i.lr to i64
  %i.mj = sext i32 %.034.fr.i.i to i64
  br label %.critedge.us.i.i

.critedge.us.i.i:                                 ; preds = %bb.bs, %.critedge.us.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.mi, %.critedge.us.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.bs ] ; 4 uses
  %i.mk = getelementptr inbounds [2 x i8], ptr %i.mh, i64 %indvars.iv.i.i
  %i.ml = load i16, ptr %i.mk, align 2, !tbaa !300
  %i.mm = sext i16 %i.ml to i64
  %i.mn = getelementptr inbounds [120 x i8], ptr %i.lo, i64 %i.mm
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !328
  %i.mp = and i32 %i.mo, 64
  %.not40.us.i.i = icmp eq i32 %i.mp, 0
  br i1 %.not40.us.i.i, label %bb.bs, label %.split44.us.i.i

bb.bs:                                            ; preds = %.critedge.us.i.i
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  %.not57.not.i.i = icmp sgt i64 %indvars.iv.i.i, %i.mj
  br i1 %.not57.not.i.i, label %.critedge.us.i.i, label %_ZL30TableGetMaxDisplayOrderAllowedP10ImGuiTableii.exit.i, !llvm.loop !4

.critedge.lr.ph.i.i:                              ; preds = %bb.br
  %i.mq = load ptr, ptr %i.gp, align 8, !tbaa !275
  %i.mr = sext i16 %i.lr to i64
  %i.ms = sext i32 %.034.fr.i.i to i64
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.bt, %.critedge.lr.ph.i.i
  %indvars.iv64.i.i = phi i64 [ %i.mr, %.critedge.lr.ph.i.i ], [ %indvars.iv.next65.i.i, %bb.bt ] ; 4 uses
  %i.mt = getelementptr inbounds [2 x i8], ptr %i.mq, i64 %indvars.iv64.i.i
  %i.mu = load i16, ptr %i.mt, align 2, !tbaa !300
  %i.mv = sext i16 %i.mu to i64
  %i.mw = getelementptr inbounds [120 x i8], ptr %i.lo, i64 %i.mv
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !328
  %i.my = and i32 %i.mx, 64
  %.not40.i.i = icmp eq i32 %i.my, 0
  br i1 %.not40.i.i, label %bb.bt, label %.split44.us.i.i

.split44.us.i.i:                                  ; preds = %.critedge.us.i.i, %.critedge.i.i
  %.us-phi.in.i.i = phi i64 [ %indvars.iv64.i.i, %.critedge.i.i ], [ %indvars.iv.i.i, %.critedge.us.i.i ]
  %.us-phi.i.i = trunc i64 %.us-phi.in.i.i to i32 ; 2 uses
  %i.mz = icmp eq i32 %i.ls, %.us-phi.i.i
  %i.na = add i32 %.neg.i.i, %.us-phi.i.i
  %i.nb = select i1 %i.mz, i32 %i.ls, i32 %i.na
  br label %_ZL30TableGetMaxDisplayOrderAllowedP10ImGuiTableii.exit.i

bb.bt:                                            ; preds = %.critedge.i.i
  %indvars.iv.next65.i.i = add nsw i64 %indvars.iv64.i.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv64.i.i, %i.ms
  br i1 %exitcond.not.i, label %_ZL30TableGetMaxDisplayOrderAllowedP10ImGuiTableii.exit.i, label %.critedge.i.i, !llvm.loop !4

_ZL30TableGetMaxDisplayOrderAllowedP10ImGuiTableii.exit.i: ; preds = %bb.bs, %bb.bt, %.split44.us.i.i, %.split.us.i.i, %bb.bm
  %.035.i.i = phi i32 [ %i.ls, %bb.bm ], [ %i.nb, %.split44.us.i.i ], [ %.034.fr.i.i, %bb.bt ], [ %.034.fr.i.i, %.split.us.i.i ], [ %.034.fr.i.i, %bb.bs ] ; 2 uses
  %i.nc = load i8, ptr %i.gr, align 1, !tbaa !222, !range !175, !noundef !176
  %i.nd = trunc nuw i8 %i.nc to i1
  %i.ne = icmp eq i32 %.035.i.i, %i.ls
  %or.cond.i147 = and i1 %i.ne, %i.nd
  br i1 %or.cond.i147, label %_ZN5ImGui31TableQueueSetColumnDisplayOrderEP10ImGuiTableii.exit, label %bb.bu

bb.bu:                                            ; preds = %_ZL30TableGetMaxDisplayOrderAllowedP10ImGuiTableii.exit.i
  %i.nf = trunc i32 %.035.i.i to i16
  store i16 %i.nf, ptr %i.hd, align 4, !tbaa !294
  br label %_ZN5ImGui31TableQueueSetColumnDisplayOrderEP10ImGuiTableii.exit

_ZN5ImGui31TableQueueSetColumnDisplayOrderEP10ImGuiTableii.exit: ; preds = %bb.bu, %_ZL30TableGetMaxDisplayOrderAllowedP10ImGuiTableii.exit.i, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.at
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ng = load i32, ptr %i.gm, align 4, !tbaa !221
  %i.nh = sext i32 %i.ng to i64
  %i.ni = icmp slt i64 %indvars.iv.next, %i.nh
  br i1 %i.ni, label %bb.at, label %._crit_edge, !llvm.loop !574

bb.bv:                                            ; preds = %bb.ab, %._crit_edge, %bb.a
  ret void
}

declare void @_ZN5ImGui8EndPopupEv() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui19TableSortSpecsBuildEP10ImGuiTable(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 573 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !288, !range !175, !noundef !176
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5ImGui22TableSortSpecsSanitizeEP10ImGuiTable(ptr noundef nonnull %0)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.f = load i16, ptr %i.e, align 8, !tbaa !353  ; 2 uses
  %i.g = icmp slt i16 %i.f, 2
  %narrow = select i1 %i.g, i16 0, i16 %i.f
  %spec.select = sext i16 %narrow to i32          ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 484 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !430  ; 4 uses
  %i.j = icmp slt i32 %i.i, %spec.select
  br i1 %i.j, label %bb.c, label %_ZN8ImVectorI25ImGuiTableColumnSortSpecsE6resizeEi.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorI25ImGuiTableColumnSortSpecsE14_grow_capacityEi.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = sdiv i32 %i.i, 2
  %i.l = add nsw i32 %i.k, %i.i
  br label %_ZNK8ImVectorI25ImGuiTableColumnSortSpecsE14_grow_capacityEi.exit.i

_ZNK8ImVectorI25ImGuiTableColumnSortSpecsE14_grow_capacityEi.exit.i: ; preds = %bb.d, %bb.c
  %i.m = phi i32 [ %i.l, %bb.d ], [ 8, %bb.c ]
  %i.n = tail call noundef i32 @llvm.smax.i32(i32 %i.m, i32 %spec.select) ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = mul nsw i64 %i.o, 12
  %i.q = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.p) ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !431  ; 2 uses
  %.not6.i.i = icmp eq ptr %i.s, null
  br i1 %.not6.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK8ImVectorI25ImGuiTableColumnSortSpecsE14_grow_capacityEi.exit.i
  %i.t = load i32, ptr %i.d, align 8, !tbaa !432
  %i.u = sext i32 %i.t to i64
  %i.v = mul nsw i64 %i.u, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.q, ptr nonnull align 4 %i.s, i64 %i.v, i1 false)
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !431
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.w)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK8ImVectorI25ImGuiTableColumnSortSpecsE14_grow_capacityEi.exit.i
  store ptr %i.q, ptr %i.r, align 8, !tbaa !431
  store i32 %i.n, ptr %i.h, align 4, !tbaa !430
  br label %_ZN8ImVectorI25ImGuiTableColumnSortSpecsE6resizeEi.exit

_ZN8ImVectorI25ImGuiTableColumnSortSpecsE6resizeEi.exit: ; preds = %bb.b, %bb.f
  store i32 %spec.select, ptr %i.d, align 8, !tbaa !432
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 508
  store i8 1, ptr %i.x, align 4, !tbaa !583
  store i8 0, ptr %i.a, align 1, !tbaa !288
  br label %bb.g

bb.g:                                             ; preds = %_ZN8ImVectorI25ImGuiTableColumnSortSpecsE6resizeEi.exit, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.z = load i16, ptr %i.y, align 8, !tbaa !353  ; 2 uses
  switch i16 %i.z, label %bb.i [
    i16 0, label %.thread
    i16 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 464
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !584
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.ad = phi ptr [ %i.ac, %bb.i ], [ %i.aa, %bb.h ] ; 5 uses
  %i.ae = icmp ne ptr %i.ad, null
  %or.cond = select i1 %i.c, i1 %i.ae, i1 false
  br i1 %or.cond, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !221 ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %.preheader
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !271
  %wide.trip.count = zext nneg i32 %i.ag to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [120 x i8], ptr %i.aj, i64 %indvars.iv ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 98
  %i.am = load i16, ptr %i.al, align 2, !tbaa !339 ; 3 uses
  %i.an = icmp eq i16 %i.am, -1
  br i1 %i.an, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = sext i16 %i.am to i64
  %i.ap = getelementptr inbounds [12 x i8], ptr %i.ad, i64 %i.ao ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !346
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !585
  %i.as = trunc i64 %indvars.iv to i16
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  store i16 %i.as, ptr %i.at, align 4, !tbaa !586
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 6
  store i16 %i.am, ptr %i.au, align 2, !tbaa !587
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 115
  %1 = load i16, ptr %i.av, align 1
  %2 = lshr i16 %1, 8
  %3 = trunc nuw i16 %2 to i8
  %i.aw = and i8 %3, 3
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i8 %i.aw, ptr %i.ax, align 4, !tbaa !588
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %bb.k, !llvm.loop !582

.thread:                                          ; preds = %bb.m, %.preheader, %bb.g, %bb.j
  %i.ay = phi ptr [ %i.ad, %bb.j ], [ null, %bb.g ], [ %i.ad, %.preheader ], [ %i.ad, %bb.m ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 496
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !433
  %i.ba = sext i16 %i.z to i32
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 504
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !589
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui28TableApplyExternalUnclipRectEP10ImGuiTableR6ImRect(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = load float, ptr %1, align 4, !tbaa !359  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load float, ptr %i.b, align 4, !tbaa !358 ; 2 uses
  %i.d = fcmp ogt float %i.a, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load float, ptr %i.e, align 4
  %.fr14 = freeze float %i.f                      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.h = load float, ptr %i.g, align 4            ; 2 uses
  %i.i = fcmp ogt float %.fr14, %i.h
  %i.j = select i1 %i.d, i1 true, i1 %i.i
  br i1 %i.j, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.l = load i32, ptr %i.k, align 4, !tbaa !221  ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !271
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.q = fcmp olt float %.fr14, f0x7F7FFFFF
  br i1 %i.q, label %.lr.ph.split.preheader, label %.loopexit

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %i.l to i64
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %_ZNK6ImRect8OverlapsERKS_.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %_ZNK6ImRect8OverlapsERKS_.exit.thread ] ; 2 uses
  %i.r = getelementptr inbounds nuw [120 x i8], ptr %i.o, i64 %indvars.iv ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 111 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !357, !range !175, !noundef !176
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %_ZNK6ImRect8OverlapsERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.w = load float, ptr %i.v, align 4, !tbaa !375
  %i.x = load float, ptr %i.p, align 4, !tbaa !400
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %i.z = load float, ptr %i.y, align 4, !tbaa !374
  %i.aa = fcmp olt float %i.x, %i.h
  %i.ab = fcmp olt float %i.w, %i.c
  %or.cond11 = select i1 %i.aa, i1 %i.ab, i1 false
  %i.ac = fcmp ogt float %i.z, %i.a
  %or.cond12 = select i1 %or.cond11, i1 %i.ac, i1 false
  br i1 %or.cond12, label %bb.c, label %_ZNK6ImRect8OverlapsERKS_.exit.thread

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.s, align 1, !tbaa !357
  br label %_ZNK6ImRect8OverlapsERKS_.exit.thread

_ZNK6ImRect8OverlapsERKS_.exit.thread:            ; preds = %bb.b, %bb.c, %.lr.ph.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.split, !llvm.loop !5

.loopexit:                                        ; preds = %_ZNK6ImRect8OverlapsERKS_.exit.thread, %.lr.ph, %.preheader, %bb.a
  ret void
}

declare void @_ZN18ImDrawListSplitter17SetCurrentChannelEP10ImDrawListi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN10ImDrawList12PushClipRectERK6ImVec2S2_b(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZN5ImGui22TableGetColumnResizeIDEP10ImGuiTableii(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #13 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 424
  br label %_ZN5ImGui18TableGetInstanceIDEP10ImGuiTablei.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !226
  %i.e = sext i32 %2 to i64
  %i.f = getelementptr [24 x i8], ptr %i.d, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 -24
  br label %_ZN5ImGui18TableGetInstanceIDEP10ImGuiTablei.exit

_ZN5ImGui18TableGetInstanceIDEP10ImGuiTablei.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.b, %bb.b ], [ %i.g, %bb.c ]
  %i.h = load i32, ptr %.0.i.i, align 4, !tbaa !227
  %i.i = add i32 %1, 1
  %i.j = add i32 %i.i, %i.h
  ret i32 %i.j
}

declare noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16), i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui20IsMouseDoubleClickedEi(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui29TableSetColumnWidthAutoSingleEP10ImGuiTablei(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !271
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [120 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 106
  %i.f = load i8, ptr %i.e, align 2, !tbaa !309, !range !175, !noundef !176
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 115 ; 2 uses
  %i.i = load i16, ptr %i.h, align 1
  %i.j = and i16 %i.i, -241
  %i.k = or disjoint i16 %i.j, 16
  store i16 %i.k, ptr %i.h, align 1
  %i.l = trunc i32 %1 to i16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 528
  store i16 %i.l, ptr %i.m, align 8, !tbaa !296
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare void @_ZN5ImGui13ClearActiveIDEv() local_unnamed_addr #2

declare void @_ZN5ImGui14SetMouseCursorEi(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui8EndTableEv() local_unnamed_addr #3 {
bb.a:
  %0 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !19 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8984 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !263  ; 60 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.3) ; 0 uses
  br label %bb.ci

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 569
  %i.f = load i8, ptr %i.e, align 1, !tbaa !222, !range !175, !noundef !176
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5ImGui17TableUpdateLayoutEP10ImGuiTable(ptr noundef nonnull %i.c)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 6 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !217  ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 392
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !219  ; 24 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !220  ; 11 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !207  ; 10 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 570
  %i.q = load i8, ptr %i.p, align 2, !tbaa !434, !range !175, !noundef !176
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN5ImGui11TableEndRowEP10ImGuiTable(ptr noundef nonnull %i.c)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.s = and i32 %i.i, 32
  %.not265 = icmp eq i32 %i.s, 0
  br i1 %.not265, label %_ZN5ImGui20TableOpenContextMenuEi.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 522 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5ImGui22TableMergeDrawChannelsEP10ImGuiTable:bb.a
  %i.lj = icmp slt i64 %indvars.iv.next213, %i.li
  %i.lk = icmp ne i32 %.1, 0
  %i.ll = select i1 %i.lj, i1 %i.lk, i1 false
  br i1 %i.ll, label %bb.as, label %.loopexit, !llvm.loop !622

.loopexit:                                        ; preds = %bb.au, %.preheader183, %bb.ah
  %.3150 = phi ptr [ %.0147197, %bb.ah ], [ %.0147197, %.preheader183 ], [ %.2149, %bb.au ] ; 3 uses
  %.1146 = phi i32 [ %.0145198, %bb.ah ], [ %i.jg, %.preheader183 ], [ %i.jg, %bb.au ] ; 3 uses
  %i.lm = icmp eq i64 %indvars.iv215, 1
  %or.cond5 = select i1 %i.lm, i1 %i.l, i1 false
  br i1 %or.cond5, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.loopexit
  %i.ln = getelementptr inbounds nuw i8, ptr %.3150, i64 32
  %i.lo = load i16, ptr %i.hr, align 2, !tbaa !420
  %i.lp = load ptr, ptr %i.ii, align 8, !tbaa !191
  %i.lq = zext i16 %i.lo to i64
  %i.lr = getelementptr inbounds nuw [32 x i8], ptr %i.lp, i64 %i.lq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.3150, ptr noundef nonnull align 8 dereferenceable(32) %i.lr, i64 32, i1 false)
  br label %bb.aw

bb.aw:                                            ; preds = %.loopexit, %bb.av
  %.4 = phi ptr [ %i.ln, %bb.av ], [ %.3150, %.loopexit ] ; 2 uses
  %indvars.iv.next216 = add nuw nsw i64 %indvars.iv215, 1 ; 2 uses
  %exitcond218.not = icmp eq i64 %indvars.iv.next216, 4
  br i1 %exitcond218.not, label %.preheader, label %bb.ah, !llvm.loop !623

._crit_edge204:                                   ; preds = %bb.ay, %.preheader
  %.lcssa = phi i32 [ %i.im, %.preheader ], [ %i.ml, %bb.ay ]
  %i.ls = load ptr, ptr %i.ii, align 8, !tbaa !640
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 64
  %i.lu = load ptr, ptr %i.gy, align 8, !tbaa !636
  %i.lv = add nsw i32 %.lcssa, -2
  %i.lw = sext i32 %i.lv to i64
  %i.lx = shl nsw i64 %i.lw, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.lt, ptr align 8 %i.lu, i64 %i.lx, i1 false)
  br label %._crit_edge.thread

.lr.ph203:                                        ; preds = %.preheader, %bb.ay
  %i.ly = phi i32 [ %i.ml, %bb.ay ], [ %i.im, %.preheader ]
  %indvars.iv219 = phi i64 [ %indvars.iv.next220, %bb.ay ], [ 0, %.preheader ] ; 4 uses
  %.2201 = phi i32 [ %.3, %bb.ay ], [ %.1146, %.preheader ] ; 2 uses
  %.5200 = phi ptr [ %.6, %bb.ay ], [ %.4, %.preheader ] ; 3 uses
  %i.lz = trunc nuw nsw i64 %indvars.iv219 to i32
  %i.ma = lshr i64 %indvars.iv219, 5
  %i.mb = and i64 %i.ma, 134217727
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.mb
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !299
  %i.me = and i32 %i.lz, 31
  %i.mf = shl nuw i32 1, %i.me
  %i.mg = and i32 %i.md, %i.mf
  %.not162 = icmp eq i32 %i.mg, 0
  br i1 %.not162, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph203
  %i.mh = load ptr, ptr %i.ii, align 8, !tbaa !191
  %i.mi = getelementptr inbounds nuw [32 x i8], ptr %i.mh, i64 %indvars.iv219
  %i.mj = getelementptr inbounds nuw i8, ptr %.5200, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.5200, ptr noundef nonnull align 8 dereferenceable(32) %i.mi, i64 32, i1 false)
  %i.mk = add nsw i32 %.2201, -1
  %.pre234 = load i32, ptr %i.gd, align 4, !tbaa !212
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph203, %bb.ax
  %i.ml = phi i32 [ %.pre234, %bb.ax ], [ %i.ly, %.lr.ph203 ] ; 3 uses
  %.6 = phi ptr [ %i.mj, %bb.ax ], [ %.5200, %.lr.ph203 ]
  %.3 = phi i32 [ %i.mk, %bb.ax ], [ %.2201, %.lr.ph203 ] ; 2 uses
  %indvars.iv.next220 = add nuw nsw i64 %indvars.iv219, 1 ; 2 uses
  %i.mm = sext i32 %i.ml to i64
  %i.mn = icmp slt i64 %indvars.iv.next220, %i.mm
  %i.mo = icmp ne i32 %.3, 0
  %i.mp = select i1 %i.mn, i1 %i.mo, i1 false
  br i1 %i.mp, label %.lr.ph203, label %._crit_edge204, !llvm.loop !624

._crit_edge.thread:                               ; preds = %_ZN8ImVectorIcE7reserveEi.exit, %._crit_edge204, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  ret void
}

declare void @_ZN18ImDrawListSplitter5MergeEP10ImDrawList(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #2

declare void @_ZN5ImGui17SetScrollFromPosXEP11ImGuiWindowff(ptr noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @_ZN5ImGui5PopIDEv() local_unnamed_addr #2

declare void @_ZN5ImGui8EndChildEv() local_unnamed_addr #2

declare void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8), float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui17TableSaveSettingsEP10ImGuiTable(ptr nofree noundef captures(none) initializes((578, 579)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 578
  store i8 0, ptr %i.a, align 2, !tbaa !284
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !217
  %i.d = and i32 %i.c, 16
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @GImGui, align 8, !tbaa !19 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !287  ; 2 uses
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit.thread, label %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit

_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 10128
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !310  ; 2 uses
  %i.k = sext i32 %i.g to i64
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 %i.k ; 3 uses
  %.not67 = icmp eq ptr %i.j, null
  br i1 %.not67, label %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.n = load i32, ptr %i.m, align 4, !tbaa !221  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 14
  %i.p = load i16, ptr %i.o, align 2, !tbaa !461
  %i.q = sext i16 %i.p to i32
  %i.r = icmp sgt i32 %i.n, %i.q
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.l, align 4, !tbaa !312
  br label %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit.thread

_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit.thread: ; preds = %bb.b, %bb.d, %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit
  %i.s = load i32, ptr %0, align 8, !tbaa !218
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !221
  %i.v = tail call noundef ptr @_ZN5ImGui19TableSettingsCreateEji(i32 noundef %i.s, i32 noundef %i.u) ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 10128
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !310
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = trunc i64 %i.aa to i32
  store i32 %i.ab, ptr %i.f, align 4, !tbaa !287
  %.pre = load i32, ptr %i.t, align 4, !tbaa !221
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit.thread
  %i.ac = phi i32 [ %.pre, %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit.thread ], [ %i.n, %bb.c ]
  %.164 = phi ptr [ %i.v, %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit.thread ], [ %i.l, %bb.c ] ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.ae = trunc i32 %i.ac to i16
  %i.af = getelementptr inbounds nuw i8, ptr %.164, i64 12
  store i16 %i.ae, ptr %i.af, align 4, !tbaa !314
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 10064
  %i.ah = getelementptr inbounds nuw i8, ptr %.164, i64 16
  %i.ai = load i16, ptr %i.ag, align 8, !tbaa !302
  store i16 %i.ai, ptr %i.ah, align 4, !tbaa !302
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !642
  %i.al = getelementptr inbounds nuw i8, ptr %.164, i64 4 ; 11 uses
  store i32 0, ptr %i.al, align 4, !tbaa !315
  %i.am = load i32, ptr %i.ad, align 4, !tbaa !221
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %.164, i64 20
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.m
  %i.ap = load i32, ptr %i.b, align 4, !tbaa !217
  %i.aq = load i32, ptr %i.al, align 4, !tbaa !315
  %i.ar = and i32 %i.aq, %i.ap
  store i32 %i.ar, ptr %i.al, align 4, !tbaa !315
  br i1 %.1, label %bb.n, label %.critedge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.m
  %.079 = phi i32 [ %i.cr, %bb.m ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.06078 = phi i1 [ %.1, %bb.m ], [ false, %.lr.ph.preheader ]
  %.06177 = phi ptr [ %i.ct, %bb.m ], [ %i.ao, %.lr.ph.preheader ] ; 7 uses
  %.06276 = phi ptr [ %i.cs, %bb.m ], [ %i.ak, %.lr.ph.preheader ] ; 11 uses
  %i.as = load i32, ptr %.06276, align 4, !tbaa !328
  %i.at = and i32 %i.as, 8
  %.not68 = icmp eq i32 %i.at, 0
  %.in.v = select i1 %.not68, i64 16, i64 28
  %.in = getelementptr inbounds nuw i8, ptr %.06276, i64 %.in.v
  %i.au = load float, ptr %.in, align 4, !tbaa !177 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.06276, i64 52
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !347
  %i.ax = getelementptr inbounds nuw i8, ptr %.06177, i64 4
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !411
  store float %i.au, ptr %.06177, align 4, !tbaa !412
  %i.ay = trunc i32 %.079 to i16
  %i.az = getelementptr inbounds nuw i8, ptr %.06177, i64 8
  store i16 %i.ay, ptr %i.az, align 4, !tbaa !462
  %i.ba = getelementptr inbounds nuw i8, ptr %.06276, i64 90 ; 2 uses
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !305
  %i.bc = getelementptr inbounds nuw i8, ptr %.06177, i64 10
  store i16 %i.bb, ptr %i.bc, align 2, !tbaa !463
  %i.bd = getelementptr inbounds nuw i8, ptr %.06276, i64 98 ; 2 uses
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !339
  %i.bf = getelementptr inbounds nuw i8, ptr %.06177, i64 12
  store i16 %i.be, ptr %i.bf, align 4, !tbaa !413
  %i.bg = getelementptr inbounds nuw i8, ptr %.06276, i64 115
  %1 = load i16, ptr %i.bg, align 1
  %2 = lshr i16 %1, 8
  %3 = trunc nuw i16 %2 to i8
  %i.bh = and i8 %3, 3
  %i.bi = getelementptr inbounds nuw i8, ptr %.06177, i64 14 ; 4 uses
  %i.bj = load i8, ptr %i.bi, align 2
  %i.bk = and i8 %i.bj, -4
  %i.bl = or disjoint i8 %i.bh, %i.bk             ; 2 uses
  store i8 %i.bl, ptr %i.bi, align 2
  %i.bm = getelementptr inbounds nuw i8, ptr %.06276, i64 107 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !308, !range !175, !noundef !176
  %i.bo = shl nuw nsw i8 %i.bn, 2
  %i.bp = and i8 %i.bl, -13
  %i.bq = or disjoint i8 %i.bp, %i.bo             ; 2 uses
  store i8 %i.bq, ptr %i.bi, align 2
  %i.br = load i32, ptr %.06276, align 4, !tbaa !328
  %i.bs = trunc i32 %i.br to i8
  %i.bt = shl i8 %i.bs, 1
  %i.bu = and i8 %i.bt, 16
  %i.bv = and i8 %i.bq, -25
  %i.bw = or disjoint i8 %i.bu, %i.bv
  store i8 %i.bw, ptr %i.bi, align 2
  %i.bx = load i32, ptr %.06276, align 4, !tbaa !328 ; 2 uses
  %i.by = and i32 %i.bx, 8
  %i.bz = icmp eq i32 %i.by, 0
  %.1 = select i1 %i.bz, i1 true, i1 %.06078      ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.06276, i64 32
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !338
  %i.cc = fcmp une float %i.au, %i.cb
  br i1 %i.cc, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.cd = load i32, ptr %i.al, align 4, !tbaa !315
  %i.ce = or i32 %i.cd, 1
  store i32 %i.ce, ptr %i.al, align 4, !tbaa !315
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph
  %i.cf = load i16, ptr %i.ba, align 2, !tbaa !305
  %i.cg = sext i16 %i.cf to i32
  %.not70 = icmp eq i32 %.079, %i.cg
  br i1 %.not70, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ch = load i32, ptr %i.al, align 4, !tbaa !315
  %i.ci = or i32 %i.ch, 2
  store i32 %i.ci, ptr %i.al, align 4, !tbaa !315
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cj = load i16, ptr %i.bd, align 2, !tbaa !339
  %.not71 = icmp eq i16 %i.cj, -1
  br i1 %.not71, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ck = load i32, ptr %i.al, align 4, !tbaa !315
  %i.cl = or i32 %i.ck, 8
  store i32 %i.cl, ptr %i.al, align 4, !tbaa !315
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cm = load i8, ptr %i.bm, align 1, !tbaa !308, !range !175, !noundef !176
  %i.cn = zext nneg i8 %i.cm to i32
  %i.co = lshr i32 %i.bx, 1
  %.lobit = and i32 %i.co, 1
  %.not72.not = icmp eq i32 %.lobit, %i.cn
  br i1 %.not72.not, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cp = load i32, ptr %i.al, align 4, !tbaa !315
  %i.cq = or i32 %i.cp, 4
  store i32 %i.cq, ptr %i.al, align 4, !tbaa !315
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cr = add nuw nsw i32 %.079, 1                ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.06276, i64 120
  %i.ct = getelementptr inbounds nuw i8, ptr %.06177, i64 16
  %i.cu = load i32, ptr %i.ad, align 4, !tbaa !221
  %i.cv = icmp slt i32 %i.cr, %i.cu
  br i1 %i.cv, label %.lr.ph, label %._crit_edge, !llvm.loop !641

bb.n:                                             ; preds = %._crit_edge
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !317
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %._crit_edge, %bb.n
  %i.cy = phi float [ %i.cx, %bb.n ], [ 0.000000e+00, %._crit_edge ], [ 0.000000e+00, %bb.e ]
  %i.cz = getelementptr inbounds nuw i8, ptr %.164, i64 8
  store float %i.cy, ptr %i.cz, align 4, !tbaa !316
  tail call void @_ZN5ImGui20MarkIniSettingsDirtyEv()
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %.critedge
  ret void
}

declare void @_ZN5ImGui39NavUpdateCurrentWindowIsScrollPushableXEv() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui16TableSetupColumnEPKcifj(ptr noundef %0, i32 noundef %1, float noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %.sroa.0 = alloca [40 x i8], align 4            ; 5 uses
  %.sroa.7 = alloca <{ float, %struct.ImRect, i32, i32, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16 }>, align 8 ; 5 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8984
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !263  ; 14 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.6) ; 0 uses
  br label %bb.ac

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 518 ; 3 uses
  %i.f = load i16, ptr %i.e, align 2, !tbaa !257
  %i.g = sext i16 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 108 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !221
  %i.j = icmp sgt i32 %i.i, %i.g
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.7) ; 0 uses
  br label %bb.ac

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 569
  %i.m = load i8, ptr %i.l, align 1, !tbaa !222, !range !175, !noundef !176
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.8) ; 0 uses
  br label %bb.ac

bb.g:                                             ; preds = %bb.e
  %.not60 = icmp eq ptr %0, null
  br i1 %.not60, label %.thread72, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = load i8, ptr %0, align 1, !tbaa !302
  %.not61 = icmp eq i8 %i.p, 0
  br i1 %.not61, label %.thread72, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 400 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !464
  %spec.select.i = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.r, i32 1)
  %i.s = trunc i32 %spec.select.i to i16          ; 2 uses
  %i.t = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #26
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  tail call void @_ZN15ImGuiTextBuffer6appendEPKcS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull %0, ptr noundef nonnull %i.v)
  %.pr = load i8, ptr %0, align 1, !tbaa !302
  %.not62 = icmp eq i8 %.pr, 0
  br i1 %.not62, label %.thread72, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = tail call noundef i32 @_Z9ImHashStrPKcmj(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 0)
  br label %.thread72

.thread72:                                        ; preds = %bb.h, %bb.g, %bb.i, %bb.j
  %.071 = phi i16 [ %i.s, %bb.j ], [ %i.s, %bb.i ], [ -1, %bb.g ], [ -1, %bb.h ] ; 3 uses
  %i.x = phi i32 [ %i.w, %bb.j ], [ 0, %bb.i ], [ 0, %bb.g ], [ 0, %bb.h ] ; 3 uses
  %i.y = load i16, ptr %i.e, align 2, !tbaa !257  ; 4 uses
  %i.z = add i16 %i.y, 1
  store i16 %i.z, ptr %i.e, align 2, !tbaa !257
  %i.aa = sext i16 %i.y to i32                    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !271
  %i.ad = sext i16 %i.y to i64                    ; 3 uses
  %i.ae = getelementptr inbounds [120 x i8], ptr %i.ac, i64 %i.ad ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 572 ; 3 uses
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !289, !range !175, !noundef !176 ; 2 uses
  %i.ah = icmp ne i8 %i.ag, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 52
  %i.aj = load i32, ptr %i.ai, align 4
  %.not63 = icmp eq i32 %i.aj, %i.x
  %or.cond = select i1 %i.ah, i1 true, i1 %.not63
  br i1 %or.cond, label %_ZN8ImVectorI29ImGuiTableReconcileColumnDataE7reserveEi.exit, label %bb.k

bb.k:                                             ; preds = %.thread72
  store i8 1, ptr %i.af, align 4, !tbaa !289
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !207 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load i32, ptr %i.h, align 4, !tbaa !221
  %i.ao = sub nsw i32 %i.an, %i.aa                ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 36 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !209
  %.not.i = icmp sgt i32 %i.ao, %i.aq
  br i1 %.not.i, label %bb.l, label %_ZN8ImVectorI29ImGuiTableReconcileColumnDataE7reserveEi.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.ar = sext i32 %i.ao to i64
  %i.as = mul nsw i64 %i.ar, 144
  %i.at = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.as) ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 40 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !192 ; 2 uses
  %.not6.i = icmp eq ptr %i.av, null
  br i1 %.not6.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = load i32, ptr %i.am, align 8, !tbaa !210
  %i.ax = sext i32 %i.aw to i64
end_hunk_1
begin_hunk_2_@_ZN5ImGui11TableHeaderEPKc:bb.a
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !299
  %i.gk = and i32 %.0.i157, 31
  %i.gl = shl nuw i32 1, %i.gk
  %i.gm = and i32 %i.gj, %i.gl
  %.not30.i158 = icmp eq i32 %i.gm, 0
  br i1 %.not30.i158, label %_ZN5ImGui15TableSetBgColorEiji.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ft, i64 560 ; 2 uses
  %i.go = load i16, ptr %i.gn, align 8, !tbaa !448 ; 4 uses
  %i.gp = icmp slt i16 %i.go, 0
  %.phi.trans.insert.phi.trans.insert.i159 = getelementptr inbounds nuw i8, ptr %i.ft, i64 56
  %.pre.pre.i160 = load ptr, ptr %.phi.trans.insert.phi.trans.insert.i159, align 8, !tbaa !277 ; 2 uses
  br i1 %i.gp, label %._crit_edge.i162, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gq = zext nneg i16 %i.go to i64
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %.pre.pre.i160, i64 %i.gq
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 4
  %i.gt = load i16, ptr %i.gs, align 4, !tbaa !451
  %i.gu = sext i16 %i.gt to i32
  %.not31.i161 = icmp eq i32 %.0.i157, %i.gu
  br i1 %.not31.i161, label %bb.ac, label %._crit_edge.i162

._crit_edge.i162:                                 ; preds = %bb.ab, %bb.aa
  %i.gv = add i16 %i.go, 1                        ; 2 uses
  store i16 %i.gv, ptr %i.gn, align 8, !tbaa !448
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge.i162, %bb.ab
  %i.gw = phi i16 [ %i.gv, %._crit_edge.i162 ], [ %i.go, %bb.ab ]
  %i.gx = sext i16 %i.gw to i64
  %i.gy = getelementptr inbounds [8 x i8], ptr %.pre.pre.i160, i64 %i.gx ; 2 uses
  store i32 %spec.store.select.i156, ptr %i.gy, align 4, !tbaa !453
  %i.gz = trunc i32 %.0.i157 to i16
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 4
  store i16 %i.gz, ptr %i.ha, align 4, !tbaa !451
  br label %_ZN5ImGui15TableSetBgColorEiji.exit

_ZN5ImGui15TableSetBgColorEiji.exit:              ; preds = %bb.ac, %bb.z, %bb.w, %bb.v, %bb.s, %bb.p, %bb.m, %bb.l, %bb.t
  call void @_ZN5ImGui15RenderNavCursorERK6ImRectjif(ptr noundef nonnull align 4 dereferenceable(16) %3, i32 noundef %i.dc, i32 noundef 2, float noundef 0.000000e+00)
  %i.hb = load i8, ptr %i.c, align 1, !tbaa !301, !range !175, !noundef !176
  %i.hc = trunc nuw i8 %i.hb to i1
  br i1 %i.hc, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZN5ImGui15TableSetBgColorEiji.exit
  %i.hd = getelementptr inbounds nuw i8, ptr %i.d, i64 3304
  %i.he = load float, ptr %i.hd, align 8, !tbaa !661
  %i.hf = getelementptr inbounds nuw i8, ptr %i.f, i64 284 ; 2 uses
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !427
  %i.hh = fneg float %i.he
  %i.hi = call float @llvm.fmuladd.f32(float %i.hh, float 5.000000e-01, float %i.hg)
  store float %i.hi, ptr %i.hf, align 4, !tbaa !427
  br label %.thread183

bb.ae:                                            ; preds = %_ZN5ImGui15TableSetBgColorEiji.exit
  %i.hj = trunc i32 %i.n to i16
  %i.hk = getelementptr inbounds nuw i8, ptr %i.k, i64 534
  store i16 %i.hj, ptr %i.hk, align 2, !tbaa !324
  %i.hl = getelementptr inbounds nuw i8, ptr %i.d, i64 3304
  %i.hm = load float, ptr %i.hl, align 8, !tbaa !661
  %i.hn = getelementptr inbounds nuw i8, ptr %i.f, i64 284 ; 2 uses
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !427
  %i.hp = fneg float %i.hm
  %i.hq = call float @llvm.fmuladd.f32(float %i.hp, float 5.000000e-01, float %i.ho)
  store float %i.hq, ptr %i.hn, align 4, !tbaa !427
  %i.hr = load i32, ptr %i.ay, align 4, !tbaa !217
  %i.hs = and i32 %i.hr, 2
  %.not146 = icmp eq i32 %i.hs, 0
  br i1 %.not146, label %.thread183, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ht = call noundef zeroext i1 @_ZN5ImGui15IsMouseDraggingEif(i32 noundef 0, float noundef -1.000000e+00)
  br i1 %i.ht, label %bb.ag, label %.thread183

bb.ag:                                            ; preds = %bb.af
  %i.hu = getelementptr inbounds nuw i8, ptr %i.d, i64 8776
  %i.hv = load i8, ptr %i.hu, align 8, !tbaa !397, !range !175, !noundef !176
  %i.hw = trunc nuw i8 %i.hv to i1
  br i1 %i.hw, label %.thread183, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hx = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  %i.hy = load i16, ptr %i.hx, align 8, !tbaa !216
  %i.hz = getelementptr inbounds nuw i8, ptr %i.k, i64 122
  store i16 %i.hy, ptr %i.hz, align 2, !tbaa !290
  %i.ia = getelementptr inbounds nuw i8, ptr %i.d, i64 252 ; 2 uses
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !662 ; 5 uses
  %i.ic = fcmp olt float %i.ib, 0.000000e+00
  br i1 %i.ic, label %bb.ai, label %thread-pre-split

bb.ai:                                            ; preds = %bb.ah
  %i.id = getelementptr inbounds nuw i8, ptr %i.d, i64 272
  %i.ie = load float, ptr %i.id, align 8, !tbaa !367
  %i.if = fcmp olt float %i.ie, %i.ag
  br i1 %i.if, label %bb.aj, label %thread-pre-split

bb.aj:                                            ; preds = %bb.ai
  %i.ig = getelementptr inbounds nuw i8, ptr %i.r, i64 94
  %i.ih = load i16, ptr %i.ig, align 2, !tbaa !335 ; 2 uses
  %.not147 = icmp eq i16 %i.ih, -1
  br i1 %.not147, label %thread-pre-split, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ii = load ptr, ptr %i.o, align 8, !tbaa !271 ; 2 uses
  %.not148 = icmp eq ptr %i.ii, null
  br i1 %.not148, label %thread-pre-split, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ij = sext i16 %i.ih to i64
  %i.ik = getelementptr inbounds [120 x i8], ptr %i.ii, i64 %i.ij
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 90
  %i.im = load i16, ptr %i.il, align 2, !tbaa !305
  %i.in = sext i16 %i.im to i32
  call void @_ZN5ImGui31TableQueueSetColumnDisplayOrderEP10ImGuiTableii(ptr noundef nonnull %i.k, i32 noundef %i.n, i32 noundef %i.in)
  %.pr.pre = load float, ptr %i.ia, align 4, !tbaa !662
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.ak, %bb.al, %bb.ai, %bb.aj, %bb.ah
  %i.io = phi float [ %i.ib, %bb.ah ], [ %i.ib, %bb.aj ], [ %i.ib, %bb.ai ], [ %.pr.pre, %bb.al ], [ %i.ib, %bb.ak ]
  %i.ip = fcmp ogt float %i.io, 0.000000e+00
  br i1 %i.ip, label %bb.am, label %.thread183

bb.am:                                            ; preds = %thread-pre-split
  %i.iq = getelementptr inbounds nuw i8, ptr %i.d, i64 272
  %i.ir = load float, ptr %i.iq, align 8, !tbaa !367
  %i.is = fcmp ogt float %i.ir, %i.ak
  br i1 %i.is, label %bb.an, label %.thread183

bb.an:                                            ; preds = %bb.am
  %i.it = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  %i.iu = load i16, ptr %i.it, align 4, !tbaa !333 ; 2 uses
  %.not149 = icmp eq i16 %i.iu, -1
  br i1 %.not149, label %.thread183, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.iv = load ptr, ptr %i.o, align 8, !tbaa !271 ; 2 uses
  %.not150 = icmp eq ptr %i.iv, null
  br i1 %.not150, label %.thread183, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.iw = sext i16 %i.iu to i64
  %i.ix = getelementptr inbounds [120 x i8], ptr %i.iv, i64 %i.iw
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 90
  %i.iz = load i16, ptr %i.iy, align 2, !tbaa !305
  %i.ja = sext i16 %i.iz to i32
  call void @_ZN5ImGui31TableQueueSetColumnDisplayOrderEP10ImGuiTableii(ptr noundef nonnull %i.k, i32 noundef %i.n, i32 noundef %i.ja)
  br label %.thread183

.thread183:                                       ; preds = %bb.an, %bb.ad, %bb.ao, %bb.ap, %thread-pre-split, %bb.am, %bb.ag, %bb.af, %bb.ae
  %i.jb = fadd float %.0134173, %.0135171
  %i.jc = select i1 %.1175, float %i.jb, float 0.000000e+00
  %i.jd = fsub float %i.ak, %i.jc                 ; 2 uses
  %i.je = fcmp oge float %i.jd, %i.bc
  %i.jf = select i1 %i.je, float %i.jd, float %i.bc ; 3 uses
  %i.jg = load i32, ptr %i.ay, align 4, !tbaa !217
  %i.jh = and i32 %i.jg, 8
  %.not151 = icmp eq i32 %i.jh, 0
  br i1 %.not151, label %bb.ay, label %bb.aq

bb.aq:                                            ; preds = %.thread183
  %i.ji = load i32, ptr %i.r, align 4, !tbaa !328
  %i.jj = and i32 %i.ji, 512
  %.not152 = icmp eq i32 %i.jj, 0
  br i1 %.not152, label %bb.ar, label %bb.ay

bb.ar:                                            ; preds = %bb.aq
  %i.jk = getelementptr inbounds nuw i8, ptr %i.r, i64 98
  %i.jl = load i16, ptr %i.jk, align 2, !tbaa !339 ; 2 uses
  %.not153 = icmp eq i16 %i.jl, -1
  br i1 %.not153, label %bb.av, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.jm = fsub float %i.ak, %.0135171
  %i.jn = fsub float %i.jm, %.0134173             ; 2 uses
  %i.jo = fcmp oge float %i.ag, %i.jn
  %i.jp = select i1 %i.jo, float %i.ag, float %i.jn ; 3 uses
  %i.jq = icmp sgt i16 %i.jl, 0
  br i1 %i.jq, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.jr = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 0, float noundef f0x3F333333)
  call void @_ZN5ImGui14PushStyleColorEij(i32 noundef 0, i32 noundef %i.jr)
  %i.js = getelementptr inbounds nuw i8, ptr %i.d, i64 3308
  %i.jt = load float, ptr %i.js, align 4, !tbaa !660
  %i.ju = fadd float %i.jp, %i.jt
  %.sroa.0166.0.vec.insert = insertelement <2 x float> poison, float %i.ju, i64 0
  %.sroa.0166.4.vec.insert = insertelement <2 x float> %.sroa.0166.0.vec.insert, float %i.bg, i64 1
  call void @_ZN5ImGui10RenderTextE6ImVec2PKcS2_b(<2 x float> %.sroa.0166.4.vec.insert, ptr noundef nonnull %i.a, ptr noundef null, i1 noundef zeroext true)
  call void @_ZN5ImGui13PopStyleColorEi(i32 noundef 1)
  %i.jv = fadd float %.0134173, %i.jp
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.0 = phi float [ %i.jv, %bb.at ], [ %i.jp, %bb.as ]
  %i.jw = getelementptr inbounds nuw i8, ptr %i.f, i64 712
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !401
  %.sroa.0.0.vec.insert = insertelement <2 x float> poison, float %.0, i64 0
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0.vec.insert, float %i.bg, i64 1
  %i.jy = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 0, float noundef 1.000000e+00)
  %i.jz = getelementptr inbounds nuw i8, ptr %i.r, i64 115
  %6 = load i16, ptr %i.jz, align 1
  %7 = and i16 %6, 768
  %i.ka = icmp eq i16 %7, 256
  %i.kb = select i1 %i.ka, i32 2, i32 3
  call void @_ZN5ImGui11RenderArrowEP10ImDrawList6ImVec2j8ImGuiDirf(ptr noundef %i.jx, <2 x float> %.sroa.0.4.vec.insert, i32 noundef %i.jy, i32 noundef %i.kb, float noundef 6.500000e-01)
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.ar
  br i1 %i.ds, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.kc = getelementptr inbounds nuw i8, ptr %i.k, i64 538
  %i.kd = load i16, ptr %i.kc, align 2, !tbaa !295
  %i.ke = sext i16 %i.kd to i32
  %.not154 = icmp eq i32 %i.n, %i.ke
  br i1 %.not154, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.kf = call noundef zeroext i8 @_ZN5ImGui31TableGetColumnNextSortDirectionEP16ImGuiTableColumn(ptr noundef nonnull %i.r)
  %i.kg = getelementptr inbounds nuw i8, ptr %i.d, i64 301
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !663, !range !175, !noundef !176
  %i.ki = trunc nuw i8 %i.kh to i1
  call void @_ZN5ImGui27TableSetColumnSortDirectionEi18ImGuiSortDirectionb(i32 noundef %i.n, i8 noundef zeroext %i.kf, i1 noundef zeroext %i.ki)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.av, %bb.aw, %bb.ax, %bb.aq, %.thread183
  %i.kj = getelementptr inbounds nuw i8, ptr %i.f, i64 712
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !401
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #4
  %i.kl = load float, ptr %i.dl, align 4, !tbaa !449
  store float %i.jf, ptr %5, align 4, !tbaa !228
  %i.km = getelementptr inbounds nuw i8, ptr %5, i64 4
  store float %i.kl, ptr %i.km, align 4, !tbaa !229
  call void @_ZN5ImGui18RenderTextEllipsisEP10ImDrawListRK6ImVec2S4_fPKcS6_PS3_(ptr noundef %i.kk, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %5, float noundef %i.jf, ptr noundef nonnull %spec.store.select, ptr noundef %i.t, ptr noundef nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #4
  %i.kn = load float, ptr %1, align 8, !tbaa !228
  %i.ko = load float, ptr %2, align 8, !tbaa !228
  %i.kp = fsub float %i.jf, %i.ko
  %i.kq = fcmp ogt float %i.kn, %i.kp
  %i.kr = load i8, ptr %i.b, align 1, !range !175
  %i.ks = trunc nuw i8 %i.kr to i1
  %or.cond5 = select i1 %i.kq, i1 %i.ks, i1 false
  br i1 %or.cond5, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %i.kt = getelementptr inbounds nuw i8, ptr %i.d, i64 5428
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !326
  %i.kv = icmp eq i32 %i.ku, 0
  br i1 %i.kv, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.kw = ptrtoint ptr %i.t to i64
  %i.kx = ptrtoint ptr %spec.store.select to i64
  %i.ky = sub i64 %i.kw, %i.kx
  %i.kz = trunc i64 %i.ky to i32
  call void (ptr, ...) @_ZN5ImGui14SetItemTooltipEPKcz(ptr noundef nonnull @.str.15, i32 noundef %i.kz, ptr noundef nonnull %spec.store.select)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ay
  %i.la = call noundef zeroext i1 @_ZN5ImGui25IsPopupOpenRequestForItemEij(i32 noundef 0, i32 noundef %i.dc)
  br i1 %i.la, label %bb.bc, label %_ZN5ImGui20TableOpenContextMenuEi.exit

bb.bc:                                            ; preds = %bb.bb
  %i.lb = load ptr, ptr @GImGui, align 8, !tbaa !19
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 8984
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !263 ; 8 uses
  %i.le = icmp eq i32 %i.n, -1
  br i1 %i.le, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ld, i64 116
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !248
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.0.i164 = phi i32 [ %i.n, %bb.bc ], [ %i.lg, %bb.bd ] ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ld, i64 4
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !217
  %i.lj = and i32 %i.li, 7
  %.not15.i = icmp eq i32 %i.lj, 0
  br i1 %.not15.i, label %_ZN5ImGui20TableOpenContextMenuEi.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ld, i64 108
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !221
  %i.lm = icmp eq i32 %.0.i164, %i.ll
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ld, i64 575
  store i8 1, ptr %i.ln, align 1, !tbaa !396
  %i.lo = trunc i32 %.0.i164 to i16
  %i.lp = select i1 %i.lm, i16 -1, i16 %i.lo
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ld, i64 550
  store i16 %i.lp, ptr %i.lq, align 2, !tbaa !291
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ld, i64 120
  %i.ls = load i16, ptr %i.lr, align 8, !tbaa !216
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ld, i64 122
  store i16 %i.ls, ptr %i.lt, align 2, !tbaa !290
  %i.lu = load i32, ptr %i.ld, align 8, !tbaa !218
  %i.lv = call noundef i32 @_Z9ImHashStrPKcmj(ptr noundef nonnull @.str.17, i64 noundef 0, i32 noundef %i.lu)
  %i.lw = call noundef zeroext i1 @_ZN5ImGui11OpenPopupExEji(i32 noundef %i.lv, i32 noundef 0) ; 0 uses
  br label %_ZN5ImGui20TableOpenContextMenuEi.exit

_ZN5ImGui20TableOpenContextMenuEi.exit:           ; preds = %bb.bf, %bb.be, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  br label %bb.bg

bb.bg:                                            ; preds = %bb.i, %_ZN5ImGui20TableOpenContextMenuEi.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  br label %bb.bh

bb.bh:                                            ; preds = %bb.c, %bb.bg, %bb.a
  ret void
}

declare <2 x float> @_ZN5ImGui11GetMousePosEv() local_unnamed_addr #2

declare noundef ptr @_ZN5ImGui19FindRenderedTextEndEPKcS1_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef i32 @_Z14ImFormatStringPcmPKcz(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077), ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN5ImGui15RenderNavCursorERK6ImRectjif(ptr noundef nonnull align 4 dereferenceable(16), i32 noundef, i32 noundef, float noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui15IsMouseDraggingEif(i32 noundef, float noundef) local_unnamed_addr #2

declare void @_ZN5ImGui14PushStyleColorEij(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN5ImGui10RenderTextE6ImVec2PKcS2_b(<2 x float>, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN5ImGui13PopStyleColorEi(i32 noundef) local_unnamed_addr #2

declare void @_ZN5ImGui11RenderArrowEP10ImDrawList6ImVec2j8ImGuiDirf(ptr noundef, <2 x float>, i32 noundef, i32 noundef, float noundef) local_unnamed_addr #2

declare void @_ZN5ImGui18RenderTextEllipsisEP10ImDrawListRK6ImVec2S4_fPKcS6_PS3_(ptr noundef, ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN5ImGui14SetItemTooltipEPKcz(ptr noundef, ...) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui25IsPopupOpenRequestForItemEij(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui21TableAngledHeadersRowEv() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !19 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8984
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !263  ; 14 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !207  ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 20 ; 5 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !470  ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %_ZN8ImVectorI20ImGuiTableHeaderDataE6resizeEi.exit

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef 0) ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !193  ; 2 uses
  %.not6.i.i = icmp eq ptr %i.l, null
  br i1 %.not6.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %i.f, align 8, !tbaa !471
  %i.n = sext i32 %i.m to i64
  %i.o = shl nsw i64 %i.n, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.j, ptr nonnull align 4 %i.l, i64 %i.o, i1 false)
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !193
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.p)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr %i.j, ptr %i.k, align 8, !tbaa !193
  store i32 0, ptr %i.g, align 4, !tbaa !470
  br label %_ZN8ImVectorI20ImGuiTableHeaderDataE6resizeEi.exit

_ZN8ImVectorI20ImGuiTableHeaderDataE6resizeEi.exit: ; preds = %bb.a, %bb.d
  %i.q = phi i32 [ %i.h, %bb.a ], [ 0, %bb.d ]
  store i32 0, ptr %i.f, align 8, !tbaa !471
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 514
  %i.s = load i16, ptr %i.r, align 2, !tbaa !343  ; 2 uses
  %i.t = sext i16 %i.s to i32                     ; 2 uses
  %.not.i = icmp slt i32 %i.q, %i.t
  br i1 %.not.i, label %bb.e, label %_ZN8ImVectorI20ImGuiTableHeaderDataE7reserveEi.exit

bb.e:                                             ; preds = %_ZN8ImVectorI20ImGuiTableHeaderDataE6resizeEi.exit
  %i.u = sext i16 %i.s to i64
  %i.v = shl nsw i64 %i.u, 4
  %i.w = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.v) ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !193  ; 2 uses
  %.not6.i = icmp eq ptr %i.y, null
  br i1 %.not6.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = load i32, ptr %i.f, align 8, !tbaa !471
  %i.aa = sext i32 %i.z to i64
  %i.ab = shl nsw i64 %i.aa, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.w, ptr nonnull align 4 %i.y, i64 %i.ab, i1 false)
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !193
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.ac)
end_hunk_2
begin_hunk_3_@_ZN5ImGui14DebugNodeTableEP10ImGuiTable:bb.a
  br i1 %.not126.not, label %_ZN5ImGui20TableGetInstanceDataEP10ImGuiTablei.exit, label %.preheader136, !llvm.loop !704

.lr.ph144.unr-lcssa:                              ; preds = %bb.w
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph144, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph144.unr-lcssa, %.lr.ph141
  %indvars.iv147.epil.init = phi i64 [ 0, %.lr.ph141 ], [ %indvars.iv.next148.1, %.lr.ph144.unr-lcssa ]
  %.0119139.epil.init = phi float [ 0.000000e+00, %.lr.ph141 ], [ %.1.1, %.lr.ph144.unr-lcssa ] ; 2 uses
  %lcmp.mod159 = trunc i32 %i.da to i1
  call void @llvm.assume(i1 %lcmp.mod159)
  %i.dp = getelementptr inbounds nuw [120 x i8], ptr %i.dd, i64 %indvars.iv147.epil.init ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !328
  %i.dr = and i32 %i.dq, 8
  %.not131.epil = icmp eq i32 %i.dr, 0
  br i1 %.not131.epil, label %.lr.ph144, label %bb.r

bb.r:                                             ; preds = %.epil.preheader
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 28
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !336
  %i.du = fadd float %.0119139.epil.init, %i.dt
  br label %.lr.ph144

.lr.ph144:                                        ; preds = %.epil.preheader, %bb.r, %.lr.ph144.unr-lcssa
  %.1.lcssa = phi float [ %.1.1, %.lr.ph144.unr-lcssa ], [ %i.du, %bb.r ], [ %.0119139.epil.init, %.epil.preheader ]
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 569
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 518
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 556
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 12
  br label %bb.x

bb.s:                                             ; preds = %bb.w, %.lr.ph141.new
  %indvars.iv147 = phi i64 [ 0, %.lr.ph141.new ], [ %indvars.iv.next148.1, %bb.w ] ; 3 uses
  %.0119139 = phi float [ 0.000000e+00, %.lr.ph141.new ], [ %.1.1, %bb.w ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph141.new ], [ %niter.next.1, %bb.w ]
  %i.ee = getelementptr inbounds nuw [120 x i8], ptr %i.dd, i64 %indvars.iv147 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !328
  %i.eg = and i32 %i.ef, 8
  %.not131 = icmp eq i32 %i.eg, 0
  br i1 %.not131, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 28
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !336
  %i.ej = fadd float %.0119139, %i.ei
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %.1 = phi float [ %i.ej, %bb.t ], [ %.0119139, %bb.s ] ; 2 uses
  %i.ek = getelementptr inbounds nuw [120 x i8], ptr %i.dd, i64 %indvars.iv147 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 120
  %i.em = load i32, ptr %i.el, align 4, !tbaa !328
  %i.en = and i32 %i.em, 8
  %.not131.1 = icmp eq i32 %i.en, 0
  br i1 %.not131.1, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 148
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !336
  %i.eq = fadd float %.1, %i.ep
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.1.1 = phi float [ %i.eq, %bb.v ], [ %.1, %bb.u ] ; 3 uses
  %indvars.iv.next148.1 = add nuw nsw i64 %indvars.iv147, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph144.unr-lcssa, label %bb.s, !llvm.loop !705

._crit_edge:                                      ; preds = %bb.ac, %.preheader136
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.es = load i32, ptr %i.er, align 4, !tbaa !287 ; 2 uses
  %i.et = icmp eq i32 %i.es, -1
  br i1 %i.et, label %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit.thread, label %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit

_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit: ; preds = %._crit_edge
  %i.eu = load ptr, ptr @GImGui, align 8, !tbaa !19
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 10128
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !310 ; 2 uses
  %.not127 = icmp eq ptr %i.ew, null
  br i1 %.not127, label %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit.thread, label %bb.ad

bb.x:                                             ; preds = %.lr.ph144, %bb.ac
  %indvars.iv150 = phi i64 [ 0, %.lr.ph144 ], [ %indvars.iv.next151, %bb.ac ] ; 5 uses
  %i.ex = load ptr, ptr %i.dv, align 8, !tbaa !271
  %i.ey = getelementptr inbounds nuw [120 x i8], ptr %i.ex, i64 %indvars.iv150 ; 23 uses
  %i.ez = load i8, ptr %i.dw, align 1, !tbaa !222, !range !175, !noundef !176
  %i.fa = icmp eq i8 %i.ez, 0
  br i1 %i.fa, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fb = load i16, ptr %i.dx, align 2, !tbaa !257
  %i.fc = sext i16 %i.fb to i64
  %.not.i = icmp slt i64 %indvars.iv150, %i.fc
  br i1 %.not.i, label %bb.z, label %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 88
  %i.fe = load i16, ptr %i.fd, align 4, !tbaa !345 ; 2 uses
  %i.ff = icmp eq i16 %i.fe, -1
  br i1 %i.ff, label %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fg = load ptr, ptr %i.dy, align 8, !tbaa !319
  %i.fh = sext i16 %i.fe to i64
  %i.fi = getelementptr inbounds i8, ptr %i.fg, i64 %i.fh
  br label %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit

_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit: ; preds = %bb.y, %bb.z, %bb.aa
  %.1.i = phi ptr [ @.str.11, %bb.y ], [ %i.fi, %bb.aa ], [ @.str.11, %bb.z ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ey, i64 90
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !305
  %i.fl = sext i16 %i.fk to i32
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 2 uses
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !375 ; 3 uses
  %i.fo = load float, ptr %i.dz, align 8, !tbaa !383 ; 2 uses
  %i.fp = fsub float %i.fn, %i.fo
  %i.fq = fpext float %i.fp to double
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ey, i64 12 ; 2 uses
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !374 ; 3 uses
  %i.ft = fsub float %i.fs, %i.fo
  %i.fu = fpext float %i.ft to double
  %i.fv = load i16, ptr %i.ea, align 4, !tbaa !337
  %i.fw = sext i16 %i.fv to i64
  %i.fx = icmp slt i64 %indvars.iv150, %i.fw
  %i.fy = select i1 %i.fx, ptr @.str.34, ptr @.str.11
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ey, i64 106
  %i.ga = load i8, ptr %i.fz, align 2, !tbaa !309, !range !175, !noundef !176
  %i.gb = zext nneg i8 %i.ga to i32
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ey, i64 109
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !380, !range !175, !noundef !176
  %i.ge = zext nneg i8 %i.gd to i32
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ey, i64 110
  %i.gg = load i8, ptr %i.gf, align 2, !tbaa !381, !range !175, !noundef !176
  %i.gh = zext nneg i8 %i.gg to i32
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ey, i64 111
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !357, !range !175, !noundef !176
  %i.gk = zext nneg i8 %i.gj to i32
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ey, i64 112
  %i.gm = load i8, ptr %i.gl, align 4, !tbaa !382, !range !175, !noundef !176
  %i.gn = zext nneg i8 %i.gm to i32
  %i.go = getelementptr inbounds nuw i8, ptr %i.ey, i64 102
  %i.gp = load i16, ptr %i.go, align 2, !tbaa !421
  %i.gq = zext i16 %i.gp to i32
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ey, i64 104
  %i.gs = load i16, ptr %i.gr, align 4, !tbaa !422
  %i.gt = zext i16 %i.gs to i32
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !331
  %i.gw = fpext float %i.gv to double
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !332
  %i.gz = fpext float %i.gy to double
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ey, i64 20
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !306
  %i.hc = fpext float %i.hb to double
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ey, i64 28
  %i.he = load float, ptr %i.hd, align 4, !tbaa !336 ; 3 uses
  %i.hf = fpext float %i.he to double
  %i.hg = fcmp ogt float %i.he, 0.000000e+00
  %i.hh = fdiv float %i.he, %.1.lcssa
  %i.hi = fmul float %i.hh, 1.000000e+02
  %i.hj = fpext float %i.hi to double
  %i.hk = select i1 %i.hg, double %i.hj, double 0.000000e+00
  %i.hl = fpext float %i.fn to double
  %i.hm = fpext float %i.fs to double
  %i.hn = fsub float %i.fs, %i.fn
  %i.ho = fpext float %i.hn to double
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ey, i64 36
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !452 ; 2 uses
  %i.hr = fpext float %i.hq to double
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ey, i64 44
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !384 ; 2 uses
  %i.hu = fpext float %i.ht to double
  %i.hv = fsub float %i.ht, %i.hq
  %i.hw = fpext float %i.hv to double
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ey, i64 72
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ey, i64 60
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !351
  %i.ia = load <4 x float>, ptr %i.hx, align 4, !tbaa !177
  %i.ib = insertelement <4 x float> poison, float %i.hz, i64 0
  %i.ic = shufflevector <4 x float> %i.ib, <4 x float> poison, <4 x i32> zeroinitializer
  %i.id = fsub <4 x float> %i.ia, %i.ic           ; 4 uses
  %i.ie = extractelement <4 x float> %i.id, i64 0
  %i.if = fpext float %i.ie to double
  %i.ig = extractelement <4 x float> %i.id, i64 1
  %i.ih = fpext float %i.ig to double
  %i.ii = extractelement <4 x float> %i.id, i64 2
  %i.ij = fpext float %i.ii to double
  %i.ik = extractelement <4 x float> %i.id, i64 3
  %i.il = fpext float %i.ik to double
  %i.im = getelementptr inbounds nuw i8, ptr %i.ey, i64 98
  %i.in = load i16, ptr %i.im, align 2, !tbaa !339
  %i.io = sext i16 %i.in to i32
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ey, i64 115
  %5 = load i16, ptr %i.ip, align 1
  %6 = lshr i16 %5, 8
  %7 = and i16 %6, 3                              ; 2 uses
  %i.iq = icmp eq i16 %7, 1
  %i.ir = icmp eq i16 %7, 2
  %i.is = select i1 %i.ir, ptr @.str.36, ptr @.str.11
  %i.it = select i1 %i.iq, ptr @.str.35, ptr %i.is
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ey, i64 56
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !346
  %i.iw = load i32, ptr %i.ey, align 4, !tbaa !328 ; 4 uses
  %i.ix = and i32 %i.iw, 8
  %.not128 = icmp eq i32 %i.ix, 0
  %i.iy = select i1 %.not128, ptr @.str.11, ptr @.str.37
  %i.iz = and i32 %i.iw, 16
  %.not129 = icmp eq i32 %i.iz, 0
  %i.ja = select i1 %.not129, ptr @.str.11, ptr @.str.38
  %i.jb = and i32 %i.iw, 32
  %.not130 = icmp eq i32 %i.jb, 0
  %i.jc = select i1 %.not130, ptr @.str.11, ptr @.str.39
  %i.jd = trunc nuw nsw i64 %indvars.iv150 to i32
  %i.je = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.a, i64 noundef 512, ptr noundef nonnull @.str.33, i32 noundef %i.jd, i32 noundef %i.fl, ptr noundef %.1.i, double noundef %i.fq, double noundef %i.fu, ptr noundef nonnull %i.fy, i32 noundef %i.gb, i32 noundef %i.ge, i32 noundef %i.gh, i32 noundef %i.gk, i32 noundef %i.gn, i32 noundef %i.gq, i32 noundef %i.gt, double noundef %i.gw, double noundef %i.gz, double noundef %i.hc, double noundef %i.hf, double noundef %i.hk, double noundef %i.hl, double noundef %i.hm, double noundef %i.ho, double noundef %i.hr, double noundef %i.hu, double noundef %i.hw, double noundef %i.if, double noundef %i.ih, double noundef %i.ij, double noundef %i.il, i32 noundef %i.io, ptr noundef nonnull %i.it, i32 noundef %i.iv, i32 noundef %i.iw, ptr noundef nonnull %i.iy, ptr noundef nonnull %i.ja, ptr noundef nonnull %i.jc) ; 0 uses
  call void @_ZN5ImGui6BulletEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #4
  store <2 x float> zeroinitializer, ptr %3, align 8, !tbaa !177
  %i.jf = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull %i.a, i1 noundef zeroext false, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #4
  %i.jg = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 0)
  br i1 %i.jg, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #4
  %i.jh = load float, ptr %i.fm, align 4, !tbaa !375
  %i.ji = load float, ptr %i.an, align 4, !tbaa !366
  %i.jj = load float, ptr %i.fr, align 4, !tbaa !374
  %i.jk = load float, ptr %i.ap, align 4, !tbaa !364
  store float %i.jh, ptr %4, align 4, !tbaa !228
  store float %i.ji, ptr %i.eb, align 4, !tbaa !229
  store float %i.jj, ptr %i.ec, align 4, !tbaa !228
  store float %i.jk, ptr %i.ed, align 4, !tbaa !229
  %i.jl = call noundef ptr @_ZN5ImGui21GetForegroundDrawListEv()
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jffi(ptr noundef nonnull align 8 dereferenceable(224) %i.jl, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %i.ec, i32 noundef -16711681, float noundef 0.000000e+00, float noundef 1.000000e+00, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %i.jm = load i32, ptr %i.k, align 4, !tbaa !221
  %i.jn = sext i32 %i.jm to i64
  %i.jo = icmp slt i64 %indvars.iv.next151, %i.jn
  br i1 %i.jo, label %bb.x, label %._crit_edge, !llvm.loop !706

bb.ad:                                            ; preds = %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit
  %i.jp = sext i32 %i.es to i64
  %i.jq = getelementptr inbounds i8, ptr %i.ew, i64 %i.jp
  call void @_ZN5ImGui22DebugNodeTableSettingsEP18ImGuiTableSettingsP10ImGuiTable(ptr noundef nonnull %i.jq, ptr noundef nonnull %0)
  br label %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit.thread

_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit.thread: ; preds = %._crit_edge, %bb.ad, %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit
  br i1 %i.al, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit.thread
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 581
  store i8 1, ptr %i.jr, align 1, !tbaa !283
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit.thread
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.ag

bb.ag:                                            ; preds = %bb.j, %bb.af
  ret void
}

declare void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef, ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #2

declare noundef nonnull align 4 dereferenceable(16) ptr @_ZN5ImGui17GetStyleColorVec4Ei(i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKvPKcz(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui13IsItemVisibleEv() local_unnamed_addr #2

declare <2 x float> @_ZN5ImGui14GetItemRectMinEv() local_unnamed_addr #2

declare <2 x float> @_ZN5ImGui14GetItemRectMaxEv() local_unnamed_addr #2

declare void @_ZN5ImGui4TextEPKcz(ptr noundef, ...) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui16DebugBreakButtonEPKcS1_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN5ImGui8SameLineEff(float noundef, float noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui11SmallButtonEPKc(ptr noundef) local_unnamed_addr #2

declare void @_ZN5ImGui10BulletTextEPKcz(ptr noundef, ...) local_unnamed_addr #2

declare void @_ZN5ImGui6BulletEv() local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef, i1 noundef zeroext, i32 noundef, ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui22DebugNodeTableSettingsEP18ImGuiTableSettingsP10ImGuiTable(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !312    ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5ImGui6PushIDEPKv(ptr noundef nonnull %0)
  %.pre = load i32, ptr %0, align 4, !tbaa !312
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi i32 [ %.pre, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = zext i32 %i.c to i64
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.g = load i16, ptr %i.f, align 4, !tbaa !314
  %i.h = sext i16 %i.g to i32
  %i.i = tail call noundef zeroext i1 (ptr, ptr, ...) @_ZN5ImGui8TreeNodeEPKvPKcz(ptr noundef %i.e, ptr noundef nonnull @.str.40, i32 noundef %i.c, i32 noundef %i.h)
  %i.j = tail call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 0) ; 2 uses
  %i.k = icmp eq ptr %1, null
  %or.cond = and i1 %i.k, %i.j
  br i1 %or.cond, label %bb.d, label %_ZN5ImGui13TableFindByIDEj.exit

bb.d:                                             ; preds = %bb.c
  %i.l = load i32, ptr %0, align 4, !tbaa !312    ; 2 uses
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %_ZN5ImGui13TableFindByIDEj.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr @GImGui, align 8, !tbaa !19 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 9032
  %i.o = tail call noundef i32 @_ZNK12ImGuiStorage6GetIntEji(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i32 noundef %i.l, i32 noundef -1) ; 2 uses
  %.not.i.i = icmp eq i32 %i.o, -1
  br i1 %.not.i.i, label %_ZN5ImGui13TableFindByIDEj.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 9024
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !22
  %i.r = sext i32 %i.o to i64
  %i.s = getelementptr inbounds [592 x i8], ptr %i.q, i64 %i.r
  br label %_ZN5ImGui13TableFindByIDEj.exit

_ZN5ImGui13TableFindByIDEj.exit:                  ; preds = %bb.f, %bb.c
  %.037 = phi ptr [ %1, %bb.c ], [ %i.s, %bb.f ]  ; 3 uses
  %i.t = icmp ne ptr %.037, null
  %or.cond3 = and i1 %i.j, %i.t
  br i1 %or.cond3, label %bb.g, label %_ZN5ImGui13TableFindByIDEj.exit.thread

bb.g:                                             ; preds = %_ZN5ImGui13TableFindByIDEj.exit
  %i.u = tail call noundef ptr @_ZN5ImGui21GetForegroundDrawListEv()
  %i.v = getelementptr inbounds nuw i8, ptr %.037, i64 240
  %i.w = getelementptr inbounds nuw i8, ptr %.037, i64 248
  tail call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jffi(ptr noundef nonnull align 8 dereferenceable(224) %i.u, ptr noundef nonnull align 4 dereferenceable(8) %i.v, ptr noundef nonnull align 4 dereferenceable(8) %i.w, i32 noundef -16711681, float noundef 0.000000e+00, float noundef 1.000000e+00, i32 noundef 0)
  br label %_ZN5ImGui13TableFindByIDEj.exit.thread

_ZN5ImGui13TableFindByIDEj.exit.thread:           ; preds = %bb.e, %bb.d, %bb.g, %_ZN5ImGui13TableFindByIDEj.exit
  br i1 %i.i, label %bb.h, label %bb.k

bb.h:                                             ; preds = %_ZN5ImGui13TableFindByIDEj.exit.thread
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !315
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.41, i32 noundef %i.y)
  %i.z = load i16, ptr %i.f, align 4, !tbaa !314
  %i.aa = sext i16 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !461
  %i.ad = sext i16 %i.ac to i32
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.42, i32 noundef %i.aa, i32 noundef %i.ad)
  %i.ae = load i16, ptr %i.f, align 4, !tbaa !314
  %i.af = icmp sgt i16 %i.ae, 0
  br i1 %i.af, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 20
  br label %bb.i

._crit_edge:                                      ; preds = %.thread46, %bb.h
  tail call void @_ZN5ImGui7TreePopEv()
  br label %bb.k

bb.i:                                             ; preds = %.lr.ph, %.thread46
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.thread46 ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %indvars.iv ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.aj = load i16, ptr %i.ai, align 4, !tbaa !413 ; 2 uses
  %.not40 = icmp eq i16 %i.aj, -1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ah, i64 14
  %.pre55 = load i8, ptr %.phi.trans.insert, align 2
  %.fr52 = freeze i8 %.pre55                      ; 3 uses
  br i1 %.not40, label %.thread46, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = and i8 %.fr52, 3                        ; 2 uses
  %i.al = sext i16 %i.aj to i32
  %i.am = icmp eq i8 %i.ak, 1
  %i.an = icmp eq i8 %i.ak, 2
  %.str.45..str.46 = select i1 %i.an, ptr @.str.45, ptr @.str.46
  %spec.select = select i1 %i.am, ptr @.str.44, ptr %.str.45..str.46
  br label %.thread46

.thread46:                                        ; preds = %bb.i, %bb.j
  %i.ao = phi i32 [ %i.al, %bb.j ], [ -1, %bb.i ]
  %i.ap = phi ptr [ %spec.select, %bb.j ], [ @.str.46, %bb.i ]
end_hunk_3
