inline.NumInlined: 770
inline.NumDeleted: 207
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN5ImGui18TableResetSettingsEP10ImGuiTable:bb.a
  store i8 1, ptr %i.a, align 2, !tbaa !306
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 571
  store i8 1, ptr %i.b, align 1, !tbaa !304
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 581
  store i8 0, ptr %i.c, align 1, !tbaa !305
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 577
  store i8 0, ptr %i.d, align 1, !tbaa !307
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 0, ptr %i.e, align 8, !tbaa !308
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui17TableLoadSettingsEP10ImGuiTable(ptr nofree noundef captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !218
  %i.d = and i32 %i.c, 16
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 577
  store i8 0, ptr %i.e, align 1, !tbaa !307
  br label %_ZN5ImGui21TableSettingsFindByIDEj.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !309  ; 2 uses
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %bb.d, label %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr %0, align 8, !tbaa !219
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 10120
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 10128
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !335  ; 4 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZN5ImGui21TableSettingsFindByIDEj.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %select.unfold.i
  %.0812.i = phi ptr [ %i.s, %select.unfold.i ], [ %i.m, %.lr.ph.i.preheader ] ; 6 uses
  %i.n = load i32, ptr %.0812.i, align 4, !tbaa !336
  %i.o = icmp eq i32 %i.n, %i.i
  br i1 %i.o, label %_ZN5ImGui21TableSettingsFindByIDEj.exit, label %select.unfold.i

select.unfold.i:                                  ; preds = %.lr.ph.i
  %i.p = getelementptr inbounds i8, ptr %.0812.i, i64 -4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !323
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds i8, ptr %.0812.i, i64 %i.r ; 2 uses
  %i.t = load i32, ptr %i.j, align 8, !tbaa !338
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds i8, ptr %i.l, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = icmp eq ptr %i.s, %i.w
  br i1 %i.x, label %_ZN5ImGui21TableSettingsFindByIDEj.exit.thread, label %.lr.ph.i

_ZN5ImGui21TableSettingsFindByIDEj.exit:          ; preds = %.lr.ph.i
  %i.y = getelementptr inbounds nuw i8, ptr %.0812.i, i64 12
  %i.z = load i16, ptr %i.y, align 4, !tbaa !339
  %i.aa = sext i16 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !222
  %.not19 = icmp eq i32 %i.ac, %i.aa
  br i1 %.not19, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5ImGui21TableSettingsFindByIDEj.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 578
  store i8 1, ptr %i.ad, align 2, !tbaa !306
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5ImGui21TableSettingsFindByIDEj.exit
  %i.ae = ptrtoint ptr %.0812.i to i64
  %i.af = ptrtoint ptr %i.l to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = trunc i64 %i.ag to i32
  store i32 %i.ah, ptr %i.f, align 4, !tbaa !309
  br label %bb.g

_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit: ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 10128
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !335
  %i.ak = sext i32 %i.g to i64
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak
  br label %bb.g

bb.g:                                             ; preds = %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit, %bb.f
  %.0 = phi ptr [ %.0812.i, %bb.f ], [ %i.al, %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !340
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !308
  %i.ap = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !341
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 228
  store float %i.aq, ptr %i.ar, align 4, !tbaa !342
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 10064
  %i.at = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.au = load i16, ptr %i.as, align 8, !tbaa !326
  store i16 %i.au, ptr %i.at, align 4, !tbaa !326
  br label %_ZN5ImGui21TableSettingsFindByIDEj.exit.thread

_ZN5ImGui21TableSettingsFindByIDEj.exit.thread:   ; preds = %select.unfold.i, %bb.d, %bb.g, %bb.b
  ret void
}

declare noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui24TableApplyQueuedRequestsEP10ImGuiTable(ptr nofree noundef captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !217
  %i.c = icmp eq i16 %i.b, 0
  br i1 %i.c, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 530 ; 3 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !315  ; 3 uses
  %i.f = sext i16 %i.e to i32
  %.not = icmp eq i16 %i.e, -1
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.h = load float, ptr %i.g, align 4, !tbaa !352 ; 2 uses
  %i.i = fcmp une float %i.h, f0x7F7FFFFF
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5ImGui19TableSetColumnWidthEif(i32 noundef %i.f, float noundef %i.h)
  %.pre = load i16, ptr %i.d, align 2, !tbaa !315
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.j = phi i16 [ %.pre, %bb.d ], [ %i.e, %bb.c ], [ -1, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 532
  store i16 %i.j, ptr %i.k, align 4, !tbaa !314
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 220
  store float f0x7F7FFFFF, ptr %i.l, align 4, !tbaa !352
  store i16 -1, ptr %i.d, align 2, !tbaa !315
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.n = load i16, ptr %i.m, align 8, !tbaa !318  ; 3 uses
  %.not55 = icmp eq i16 %i.n, -1
  br i1 %.not55, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = sext i16 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !291
  %i.r = sext i16 %i.n to i64
  %i.s = getelementptr inbounds [120 x i8], ptr %i.q, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  %i.u = load float, ptr %i.t, align 4, !tbaa !329
  tail call void @_ZN5ImGui19TableSetColumnWidthEif(i32 noundef %i.o, float noundef %i.u)
  store i16 -1, ptr %i.m, align 8, !tbaa !318
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.pr = load i16, ptr %i.a, align 8, !tbaa !217
  %i.v = icmp eq i16 %.pr, 0
  br i1 %i.v, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 534 ; 2 uses
  %i.x = load i16, ptr %i.w, align 2, !tbaa !353
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i16 %i.x, ptr %i.y, align 8, !tbaa !354
  store i16 -1, ptr %i.w, align 2, !tbaa !353
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 538 ; 2 uses
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !317 ; 2 uses
  %.not56 = icmp eq i16 %i.aa, -1
  br i1 %.not56, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 540 ; 2 uses
  %i.ac = load i16, ptr %i.ab, align 4, !tbaa !316 ; 5 uses
  %.not57 = icmp eq i16 %i.ac, -1
  br i1 %.not57, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !291 ; 7 uses
  %i.af = sext i16 %i.aa to i64
  %i.ag = getelementptr inbounds [120 x i8], ptr %i.ae, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 90 ; 2 uses
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !327 ; 3 uses
  %i.aj = icmp eq i16 %i.ac, %i.ai
  br i1 %i.aj, label %_ZN5ImGui26TableSetColumnDisplayOrderEP10ImGuiTableii.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = icmp slt i16 %i.ac, %i.ai
  %i.al = select i1 %i.ak, i32 -1, i32 1          ; 2 uses
  store i16 %i.ac, ptr %i.ah, align 2, !tbaa !327
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !297 ; 6 uses
  %i.ao = trunc nsw i32 %i.al to i16
  %i.ap = sext i32 %i.al to i64                   ; 2 uses
  %i.aq = sext i16 %i.ai to i64
  %1 = add nsw i64 %i.ap, %i.aq
  %sext.i = sext i16 %i.ac to i64
  br label %bb.l

.preheader.i:                                     ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !222 ; 3 uses
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %wide.trip.count.i = zext nneg i32 %i.as to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.au = icmp ult i32 %i.as, 4
  br i1 %i.au, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %bb.n

bb.l:                                             ; preds = %bb.l, %bb.k
  %indvars.iv.i = phi i64 [ %1, %bb.k ], [ %indvars.iv.next.i, %bb.l ] ; 3 uses
  %i.av = getelementptr inbounds [2 x i8], ptr %i.an, i64 %indvars.iv.i
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !324
  %i.ax = sext i16 %i.aw to i64
  %i.ay = getelementptr inbounds [120 x i8], ptr %i.ae, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 90 ; 2 uses
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !327
  %i.bb = sub i16 %i.ba, %i.ao
  store i16 %i.bb, ptr %i.az, align 2, !tbaa !327
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, %i.ap
  %i.bc = icmp eq i64 %indvars.iv.i, %sext.i
  br i1 %i.bc, label %.preheader.i, label %bb.l, !llvm.loop !355

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv33.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next34.i.3, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod76 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod76)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader
  %indvars.iv33.i.epil = phi i64 [ %indvars.iv33.i.epil.init, %.epil.preheader ], [ %indvars.iv.next34.i.epil, %bb.m ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.m ]
  %i.bd = trunc i64 %indvars.iv33.i.epil to i16
  %i.be = getelementptr inbounds nuw [120 x i8], ptr %i.ae, i64 %indvars.iv33.i.epil
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 90
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !327
  %i.bh = sext i16 %i.bg to i64
  %i.bi = getelementptr inbounds [2 x i8], ptr %i.an, i64 %i.bh
  store i16 %i.bd, ptr %i.bi, align 2, !tbaa !324
  %indvars.iv.next34.i.epil = add nuw nsw i64 %indvars.iv33.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %bb.m, !llvm.loop !356

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %bb.m, %.preheader.i
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 578
  store i8 1, ptr %i.bj, align 2, !tbaa !306
  br label %_ZN5ImGui26TableSetColumnDisplayOrderEP10ImGuiTableii.exit

bb.n:                                             ; preds = %bb.n, %.lr.ph.i.new
  %indvars.iv33.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next34.i.3, %bb.n ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.n ]
  %i.bk = trunc i64 %indvars.iv33.i to i16
  %i.bl = getelementptr inbounds nuw [120 x i8], ptr %i.ae, i64 %indvars.iv33.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 90
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !327
  %i.bo = sext i16 %i.bn to i64
  %i.bp = getelementptr inbounds [2 x i8], ptr %i.an, i64 %i.bo
  store i16 %i.bk, ptr %i.bp, align 2, !tbaa !324
  %indvars.iv.next34.i = or disjoint i64 %indvars.iv33.i, 1 ; 2 uses
  %i.bq = trunc i64 %indvars.iv.next34.i to i16
  %i.br = getelementptr inbounds nuw [120 x i8], ptr %i.ae, i64 %indvars.iv.next34.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 90
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !327
  %i.bu = sext i16 %i.bt to i64
  %i.bv = getelementptr inbounds [2 x i8], ptr %i.an, i64 %i.bu
  store i16 %i.bq, ptr %i.bv, align 2, !tbaa !324
  %indvars.iv.next34.i.1 = or disjoint i64 %indvars.iv33.i, 2 ; 2 uses
  %i.bw = trunc i64 %indvars.iv.next34.i.1 to i16
  %i.bx = getelementptr inbounds nuw [120 x i8], ptr %i.ae, i64 %indvars.iv.next34.i.1
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 90
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !327
  %i.ca = sext i16 %i.bz to i64
  %i.cb = getelementptr inbounds [2 x i8], ptr %i.an, i64 %i.ca
  store i16 %i.bw, ptr %i.cb, align 2, !tbaa !324
  %indvars.iv.next34.i.2 = or disjoint i64 %indvars.iv33.i, 3 ; 2 uses
  %i.cc = trunc i64 %indvars.iv.next34.i.2 to i16
  %i.cd = getelementptr inbounds nuw [120 x i8], ptr %i.ae, i64 %indvars.iv.next34.i.2
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 90
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !327
  %i.cg = sext i16 %i.cf to i64
  %i.ch = getelementptr inbounds [2 x i8], ptr %i.an, i64 %i.cg
  store i16 %i.cc, ptr %i.ch, align 2, !tbaa !324
  %indvars.iv.next34.i.3 = add nuw nsw i64 %indvars.iv33.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.n, !llvm.loop !357

_ZN5ImGui26TableSetColumnDisplayOrderEP10ImGuiTableii.exit: ; preds = %bb.j, %._crit_edge.i
  store i16 -1, ptr %i.ab, align 4, !tbaa !316
  br label %bb.o

bb.o:                                             ; preds = %_ZN5ImGui26TableSetColumnDisplayOrderEP10ImGuiTableii.exit, %bb.i, %bb.h
  %i.ci = load ptr, ptr @GImGui, align 8, !tbaa !8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 5428
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !358
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  store i16 -1, ptr %i.z, align 2, !tbaa !317
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.o, %bb.p, %bb.g
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 582 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 2, !tbaa !280, !range !166, !noundef !167
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %.preheader, label %bb.s

.preheader:                                       ; preds = %.thread
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !222 ; 3 uses
  %i.cr = icmp sgt i32 %i.cq, 0
  br i1 %i.cr, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !291 ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !297 ; 5 uses
  %wide.trip.count = zext nneg i32 %i.cq to i64   ; 2 uses
  %xtraiter78 = and i64 %wide.trip.count, 3       ; 3 uses
  %i.cw = icmp ult i32 %i.cq, 4
  br i1 %i.cw, label %.epil.preheader77, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter82 = and i64 %wide.trip.count, 2147483644
  br label %bb.r

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.r
  %lcmp.mod80.not = icmp eq i64 %xtraiter78, 0
  br i1 %lcmp.mod80.not, label %._crit_edge, label %.epil.preheader77

.epil.preheader77:                                ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod81 = icmp ne i64 %xtraiter78, 0
  tail call void @llvm.assume(i1 %lcmp.mod81)
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader77
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader77 ], [ %indvars.iv.next.epil, %bb.q ] ; 4 uses
  %epil.iter79 = phi i64 [ 0, %.epil.preheader77 ], [ %epil.iter79.next, %bb.q ]
  %i.cx = trunc i64 %indvars.iv.epil to i16       ; 2 uses
  %i.cy = getelementptr inbounds nuw [120 x i8], ptr %i.ct, i64 %indvars.iv.epil
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 90
  store i16 %i.cx, ptr %i.cz, align 2, !tbaa !327
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %indvars.iv.epil
  store i16 %i.cx, ptr %i.da, align 2, !tbaa !324
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter79.next = add i64 %epil.iter79, 1     ; 2 uses
  %epil.iter79.cmp.not = icmp eq i64 %epil.iter79.next, %xtraiter78
  br i1 %epil.iter79.cmp.not, label %._crit_edge, label %bb.q, !llvm.loop !359

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.q, %.preheader
  store i8 0, ptr %i.cm, align 2, !tbaa !280
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 578
  store i8 1, ptr %i.db, align 2, !tbaa !306
  br label %bb.s

bb.r:                                             ; preds = %bb.r, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.r ] ; 7 uses
  %niter83 = phi i64 [ 0, %.lr.ph.new ], [ %niter83.next.3, %bb.r ]
  %i.dc = trunc i64 %indvars.iv to i16            ; 2 uses
  %i.dd = getelementptr inbounds nuw [120 x i8], ptr %i.ct, i64 %indvars.iv
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 90
  store i16 %i.dc, ptr %i.de, align 2, !tbaa !327
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %indvars.iv
  store i16 %i.dc, ptr %i.df, align 2, !tbaa !324
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.dg = trunc i64 %indvars.iv.next to i16       ; 2 uses
  %i.dh = getelementptr inbounds nuw [120 x i8], ptr %i.ct, i64 %indvars.iv.next
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 90
  store i16 %i.dg, ptr %i.di, align 2, !tbaa !327
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %indvars.iv.next
  store i16 %i.dg, ptr %i.dj, align 2, !tbaa !324
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 3 uses
  %i.dk = trunc i64 %indvars.iv.next.1 to i16     ; 2 uses
  %i.dl = getelementptr inbounds nuw [120 x i8], ptr %i.ct, i64 %indvars.iv.next.1
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 90
  store i16 %i.dk, ptr %i.dm, align 2, !tbaa !327
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %indvars.iv.next.1
  store i16 %i.dk, ptr %i.dn, align 2, !tbaa !324
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 3 uses
  %i.do = trunc i64 %indvars.iv.next.2 to i16     ; 2 uses
  %i.dp = getelementptr inbounds nuw [120 x i8], ptr %i.ct, i64 %indvars.iv.next.2
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 90
  store i16 %i.do, ptr %i.dq, align 2, !tbaa !327
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %indvars.iv.next.2
  store i16 %i.do, ptr %i.dr, align 2, !tbaa !324
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter83.next.3 = add i64 %niter83, 4           ; 2 uses
  %niter83.ncmp.3 = icmp eq i64 %niter83.next.3, %unroll_iter82
  br i1 %niter83.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.r, !llvm.loop !360

bb.s:                                             ; preds = %._crit_edge, %.thread
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 583 ; 2 uses
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !361, !range !166, !noundef !167
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !291 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !290 ; 2 uses
  %.not5861 = icmp eq ptr %i.dw, %i.dy
  br i1 %.not5861, label %._crit_edge65, label %.lr.ph64

._crit_edge65:                                    ; preds = %.lr.ph64, %bb.t
  store i8 0, ptr %i.ds, align 1, !tbaa !361
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 578
  store i8 1, ptr %i.dz, align 2, !tbaa !306
  br label %bb.u

.lr.ph64:                                         ; preds = %bb.t, %.lr.ph64
  %.062 = phi ptr [ %i.eg, %.lr.ph64 ], [ %i.dw, %bb.t ] ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN5ImGui24TableApplyQueuedRequestsEP10ImGuiTable:bb.a
  store i8 %i.ee, ptr %i.ed, align 4, !tbaa !331
  %i.ef = getelementptr inbounds nuw i8, ptr %.062, i64 107
  store i8 %i.ee, ptr %i.ef, align 1, !tbaa !332
  %i.eg = getelementptr inbounds nuw i8, ptr %.062, i64 120 ; 2 uses
  %.not58 = icmp eq ptr %i.eg, %i.dy
  br i1 %.not58, label %._crit_edge65, label %.lr.ph64

bb.u:                                             ; preds = %._crit_edge65, %bb.s
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui19TableSetColumnWidthEif(i32 noundef %0, float noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8984
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !277  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !291  ; 6 uses
  %i.f = sext i32 %0 to i64
  %i.g = getelementptr inbounds [120 x i8], ptr %i.e, i64 %i.f ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  %i.i = load float, ptr %i.h, align 8, !tbaa !363 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.k = load float, ptr %i.j, align 4, !tbaa !364 ; 2 uses
  %i.l = fcmp oge float %i.i, %i.k
  %i.m = select i1 %i.l, float %i.i, float %i.k   ; 2 uses
  %i.n = fcmp olt float %1, %i.i
  %i.o = fcmp ogt float %1, %i.m
  %i.p = select i1 %i.o, float %i.m, float %1
  %i.q = select i1 %i.n, float %i.i, float %i.p   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.s = load float, ptr %i.r, align 4, !tbaa !365
  %i.t = fcmp oeq float %i.s, %i.q
  br i1 %i.t, label %.thread60, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !366 ; 3 uses
  %i.w = fcmp oeq float %i.v, %i.q
  br i1 %i.w, label %.thread60, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.y = load i16, ptr %i.x, align 4, !tbaa !367  ; 2 uses
  %.not = icmp eq i16 %i.y, -1
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = sext i16 %i.y to i64
  %i.aa = getelementptr inbounds [120 x i8], ptr %i.e, i64 %i.z ; 2 uses
  %i.ab = load i32, ptr %i.g, align 4, !tbaa !362 ; 3 uses
  %i.ac = and i32 %i.ab, 16
  %.not50 = icmp eq i32 %i.ac, 0
  br i1 %.not50, label %.thread62, label %bb.e

.thread:                                          ; preds = %bb.c
  %i.ad = load i32, ptr %i.g, align 4, !tbaa !362 ; 2 uses
  %i.ae = and i32 %i.ad, 16
  %.not5055 = icmp eq i32 %i.ae, 0
  br i1 %.not5055, label %bb.g, label %.thread56

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 546
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !368 ; 2 uses
  %i.ah = icmp eq i16 %i.ag, -1
  br i1 %i.ah, label %.thread56, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = sext i16 %i.ag to i64
  %i.aj = getelementptr inbounds [120 x i8], ptr %i.e, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 90
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !327
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 90
  %i.an = load i16, ptr %i.am, align 2, !tbaa !327
  %.not52 = icmp slt i16 %i.al, %i.an
  br i1 %.not52, label %.thread62, label %.thread56

.thread56:                                        ; preds = %.thread, %bb.f, %bb.e
  store float %i.q, ptr %i.u, align 4, !tbaa !366
  br label %.thread60.sink.split

bb.g:                                             ; preds = %.thread
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 94
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !369 ; 2 uses
  %.not53 = icmp eq i16 %i.ap, -1
  %i.aq = sext i16 %i.ap to i64
  %i.ar = getelementptr inbounds [120 x i8], ptr %i.e, i64 %i.aq
  br i1 %.not53, label %.thread60, label %.thread62

.thread62:                                        ; preds = %bb.g, %bb.f, %bb.d
  %.064 = phi ptr [ %i.ar, %bb.g ], [ %i.aa, %bb.d ], [ %i.aa, %bb.f ] ; 2 uses
  %i.as = phi i32 [ %i.ad, %bb.g ], [ %i.ab, %bb.d ], [ %i.ab, %bb.f ]
  %i.at = getelementptr inbounds nuw i8, ptr %.064, i64 16 ; 2 uses
  %i.au = load float, ptr %i.at, align 4, !tbaa !366 ; 2 uses
  %i.av = fsub float %i.q, %i.v
  %i.aw = fsub float %i.au, %i.av                 ; 2 uses
  %i.ax = fcmp oge float %i.aw, %i.i
  %i.ay = select i1 %i.ax, float %i.aw, float %i.i ; 2 uses
  %i.az = fadd float %i.v, %i.au
  %i.ba = fsub float %i.az, %i.ay
  store float %i.ba, ptr %i.u, align 4, !tbaa !366
  store float %i.ay, ptr %i.at, align 4, !tbaa !366
  %i.bb = load i32, ptr %.064, align 4, !tbaa !362
  %i.bc = or i32 %i.bb, %i.as
  %i.bd = and i32 %i.bc, 8
  %.not54 = icmp eq i32 %i.bd, 0
  br i1 %.not54, label %.thread60.sink.split, label %bb.h

bb.h:                                             ; preds = %.thread62
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !222 ; 2 uses
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %.lr.ph.i, label %.thread60.sink.split

.lr.ph.i:                                         ; preds = %bb.h
  %wide.trip.count.i = zext nneg i32 %i.bf to i64 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.l, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.l ] ; 2 uses
  %i.bh = phi <2 x float> [ zeroinitializer, %.lr.ph.i ], [ %i.bv, %bb.l ] ; 3 uses
  %i.bi = getelementptr inbounds nuw [120 x i8], ptr %i.e, i64 %indvars.iv.i ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 106
  %i.bk = load i8, ptr %i.bj, align 2, !tbaa !333, !range !166, !noundef !167
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bm = load i32, ptr %i.bi, align 4, !tbaa !362
  %i.bn = and i32 %i.bm, 8
  %.not25.i = icmp eq i32 %i.bn, 0
  br i1 %.not25.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 28
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !370
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.br = load float, ptr %i.bq, align 4, !tbaa !366
  %i.bs = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.bt = insertelement <2 x float> %i.bs, float %i.br, i64 1
  %i.bu = fadd <2 x float> %i.bh, %i.bt
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.bv = phi <2 x float> [ %i.bu, %bb.k ], [ %i.bh, %bb.j ], [ %i.bh, %bb.i ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader.i.preheader, label %bb.i, !llvm.loop !371

.preheader.i.preheader:                           ; preds = %bb.l
  %i.bw = extractelement <2 x float> %i.bv, i64 1
  %i.bx = extractelement <2 x float> %i.bv, i64 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.o
  %indvars.iv34.i = phi i64 [ %indvars.iv.next35.i, %bb.o ], [ 0, %.preheader.i.preheader ] ; 2 uses
  %i.by = getelementptr inbounds nuw [120 x i8], ptr %i.e, i64 %indvars.iv34.i ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 106
  %i.ca = load i8, ptr %i.bz, align 2, !tbaa !333, !range !166, !noundef !167
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.m, label %bb.o

bb.m:                                             ; preds = %.preheader.i
  %i.cc = load i32, ptr %i.by, align 4, !tbaa !362
  %i.cd = and i32 %i.cc, 8
  %.not.i = icmp eq i32 %i.cd, 0
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !366
  %i.cg = fdiv float %i.cf, %i.bw
  %i.ch = fmul float %i.bx, %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.by, i64 28
  store float %i.ch, ptr %i.ci, align 4, !tbaa !370
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %.preheader.i
  %indvars.iv.next35.i = add nuw nsw i64 %indvars.iv34.i, 1 ; 2 uses
  %exitcond38.not.i = icmp eq i64 %indvars.iv.next35.i, %wide.trip.count.i
  br i1 %exitcond38.not.i, label %.thread60.sink.split, label %.preheader.i, !llvm.loop !372

.thread60.sink.split:                             ; preds = %bb.o, %.thread62, %bb.h, %.thread56
  %i.cj = getelementptr inbounds nuw i8, ptr %i.c, i64 578
  store i8 1, ptr %i.cj, align 2, !tbaa !306
  br label %.thread60

.thread60:                                        ; preds = %.thread60.sink.split, %bb.g, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui26TableSetColumnDisplayOrderEP10ImGuiTableii(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !291  ; 7 uses
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [120 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 90 ; 2 uses
  %i.f = load i16, ptr %i.e, align 2, !tbaa !327  ; 2 uses
  %i.g = sext i16 %i.f to i32                     ; 2 uses
  %i.h = icmp eq i32 %2, %i.g
  br i1 %i.h, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp slt i32 %2, %i.g
  %i.j = select i1 %i.i, i32 -1, i32 1            ; 2 uses
  %i.k = trunc i32 %2 to i16
  store i16 %i.k, ptr %i.e, align 2, !tbaa !327
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !297  ; 6 uses
  %i.n = trunc nsw i32 %i.j to i16
  %i.o = sext i32 %i.j to i64                     ; 2 uses
  %i.p = sext i16 %i.f to i64
  %3 = add nsw i64 %i.o, %i.p
  %sext = sext i32 %2 to i64
  br label %bb.c

.preheader:                                       ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.r = load i32, ptr %i.q, align 4, !tbaa !222  ; 3 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.r to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.t = icmp ult i32 %i.r, 4
  br i1 %i.t, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.c
  %indvars.iv = phi i64 [ %3, %bb.b ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.u = getelementptr inbounds [2 x i8], ptr %i.m, i64 %indvars.iv
  %i.v = load i16, ptr %i.u, align 2, !tbaa !324
  %i.w = sext i16 %i.v to i64
  %i.x = getelementptr inbounds [120 x i8], ptr %i.b, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 90 ; 2 uses
  %i.z = load i16, ptr %i.y, align 2, !tbaa !327
  %i.aa = sub i16 %i.z, %i.n
  store i16 %i.aa, ptr %i.y, align 2, !tbaa !327
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.o
  %i.ab = icmp eq i64 %indvars.iv, %sext
  br i1 %i.ab, label %.preheader, label %bb.c, !llvm.loop !355

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv33.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next34.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod38 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod38)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv33.epil = phi i64 [ %indvars.iv33.epil.init, %.epil.preheader ], [ %indvars.iv.next34.epil, %bb.d ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.ac = trunc i64 %indvars.iv33.epil to i16
  %i.ad = getelementptr inbounds nuw [120 x i8], ptr %i.b, i64 %indvars.iv33.epil
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 90
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !327
  %i.ag = sext i16 %i.af to i64
  %i.ah = getelementptr inbounds [2 x i8], ptr %i.m, i64 %i.ag
  store i16 %i.ac, ptr %i.ah, align 2, !tbaa !324
  %indvars.iv.next34.epil = add nuw nsw i64 %indvars.iv33.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.d, !llvm.loop !373

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.d, %.preheader
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 578
  store i8 1, ptr %i.ai, align 2, !tbaa !306
  br label %bb.f

bb.e:                                             ; preds = %bb.e, %.lr.ph.new
  %indvars.iv33 = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next34.3, %bb.e ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.e ]
  %i.aj = trunc i64 %indvars.iv33 to i16
  %i.ak = getelementptr inbounds nuw [120 x i8], ptr %i.b, i64 %indvars.iv33
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 90
  %i.am = load i16, ptr %i.al, align 2, !tbaa !327
  %i.an = sext i16 %i.am to i64
  %i.ao = getelementptr inbounds [2 x i8], ptr %i.m, i64 %i.an
  store i16 %i.aj, ptr %i.ao, align 2, !tbaa !324
  %indvars.iv.next34 = or disjoint i64 %indvars.iv33, 1 ; 2 uses
  %i.ap = trunc i64 %indvars.iv.next34 to i16
  %i.aq = getelementptr inbounds nuw [120 x i8], ptr %i.b, i64 %indvars.iv.next34
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 90
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !327
  %i.at = sext i16 %i.as to i64
  %i.au = getelementptr inbounds [2 x i8], ptr %i.m, i64 %i.at
  store i16 %i.ap, ptr %i.au, align 2, !tbaa !324
  %indvars.iv.next34.1 = or disjoint i64 %indvars.iv33, 2 ; 2 uses
  %i.av = trunc i64 %indvars.iv.next34.1 to i16
  %i.aw = getelementptr inbounds nuw [120 x i8], ptr %i.b, i64 %indvars.iv.next34.1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 90
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !327
  %i.az = sext i16 %i.ay to i64
  %i.ba = getelementptr inbounds [2 x i8], ptr %i.m, i64 %i.az
  store i16 %i.av, ptr %i.ba, align 2, !tbaa !324
  %indvars.iv.next34.2 = or disjoint i64 %indvars.iv33, 3 ; 2 uses
  %i.bb = trunc i64 %indvars.iv.next34.2 to i16
  %i.bc = getelementptr inbounds nuw [120 x i8], ptr %i.b, i64 %indvars.iv.next34.2
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 90
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !327
  %i.bf = sext i16 %i.be to i64
  %i.bg = getelementptr inbounds [2 x i8], ptr %i.m, i64 %i.bf
  store i16 %i.bb, ptr %i.bg, align 2, !tbaa !324
  %indvars.iv.next34.3 = add nuw nsw i64 %indvars.iv33, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.e, !llvm.loop !357

bb.f:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui31TableQueueSetColumnDisplayOrderEP10ImGuiTableii(ptr nofree noundef captures(none) initializes((538, 542)) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !291  ; 3 uses
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [120 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 90
  %i.f = load i16, ptr %i.e, align 2, !tbaa !327  ; 4 uses
  %i.g = sext i16 %i.f to i32                     ; 7 uses
  %i.h = trunc i32 %1 to i16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 538
  store i16 %i.h, ptr %i.i, align 2, !tbaa !317
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 540 ; 2 uses
  store i16 -1, ptr %i.j, align 4, !tbaa !316
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.l = load i32, ptr %i.k, align 4, !tbaa !222
  %i.m = add nsw i32 %i.l, -1
  %i.n = icmp slt i32 %2, 0
  %i.o = tail call i32 @llvm.smin.i32(i32 %2, i32 %i.m)
  %i.p = select i1 %i.n, i32 0, i32 %i.o          ; 4 uses
  %i.q = icmp eq i32 %i.p, %i.g
  br i1 %i.q, label %_ZL30TableGetMaxDisplayOrderAllowedP10ImGuiTableii.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 556
  %i.s = load i16, ptr %i.r, align 4, !tbaa !374  ; 3 uses
  %i.t = sext i16 %i.s to i32                     ; 2 uses
  %i.u = icmp sgt i16 %i.s, 0
  br i1 %i.u, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.v = icmp slt i16 %i.f, %i.s
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = add nsw i32 %i.t, -1
  %i.x = tail call noundef i32 @llvm.smin.i32(i32 %i.p, i32 %i.w)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.y = tail call noundef i32 @llvm.smax.i32(i32 %i.p, i32 %i.t)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.034.i = phi i32 [ %i.p, %bb.b ], [ %i.x, %bb.d ], [ %i.y, %bb.e ]
  %.034.fr.i = freeze i32 %.034.i                 ; 7 uses
  %.not56.i = icmp sgt i32 %.034.fr.i, %i.g       ; 2 uses
  %.neg.i = select i1 %.not56.i, i32 -1, i32 1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br i1 %.not56.i, label %.critedge.lr.ph.i, label %.split.us.i

.split.us.i:                                      ; preds = %bb.f
  %i.aa = icmp slt i32 %.034.fr.i, %i.g
  br i1 %i.aa, label %.critedge.us.preheader.i, label %_ZL30TableGetMaxDisplayOrderAllowedP10ImGuiTableii.exit

.critedge.us.preheader.i:                         ; preds = %.split.us.i
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !297
  %i.ac = sext i16 %i.f to i64
  %i.ad = sext i32 %.034.fr.i to i64
  br label %.critedge.us.i

.critedge.us.i:                                   ; preds = %bb.g, %.critedge.us.preheader.i
  %indvars.iv.i = phi i64 [ %i.ac, %.critedge.us.preheader.i ], [ %indvars.iv.next.i, %bb.g ] ; 4 uses
  %i.ae = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %indvars.iv.i
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !324
  %i.ag = sext i16 %i.af to i64
  %i.ah = getelementptr inbounds [120 x i8], ptr %i.b, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !362
  %i.aj = and i32 %i.ai, 64
  %.not40.us.i = icmp eq i32 %i.aj, 0
  br i1 %.not40.us.i, label %bb.g, label %.split44.us.i

bb.g:                                             ; preds = %.critedge.us.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %.not57.not.i = icmp sgt i64 %indvars.iv.i, %i.ad
  br i1 %.not57.not.i, label %.critedge.us.i, label %_ZL30TableGetMaxDisplayOrderAllowedP10ImGuiTableii.exit, !llvm.loop !375

.critedge.lr.ph.i:                                ; preds = %bb.f
  %i.ak = load ptr, ptr %i.z, align 8, !tbaa !297
  %i.al = sext i16 %i.f to i64
  %i.am = sext i32 %.034.fr.i to i64
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.h, %.critedge.lr.ph.i
  %indvars.iv64.i = phi i64 [ %i.al, %.critedge.lr.ph.i ], [ %indvars.iv.next65.i, %bb.h ] ; 4 uses
  %i.an = getelementptr inbounds [2 x i8], ptr %i.ak, i64 %indvars.iv64.i
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !324
  %i.ap = sext i16 %i.ao to i64
  %i.aq = getelementptr inbounds [120 x i8], ptr %i.b, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !362
  %i.as = and i32 %i.ar, 64
  %.not40.i = icmp eq i32 %i.as, 0
  br i1 %.not40.i, label %bb.h, label %.split44.us.i

.split44.us.i:                                    ; preds = %.critedge.us.i, %.critedge.i
  %.us-phi.in.i = phi i64 [ %indvars.iv64.i, %.critedge.i ], [ %indvars.iv.i, %.critedge.us.i ]
  %.us-phi.i = trunc i64 %.us-phi.in.i to i32     ; 2 uses
  %i.at = icmp eq i32 %i.g, %.us-phi.i
  %i.au = add i32 %.neg.i, %.us-phi.i
  %i.av = select i1 %i.at, i32 %i.g, i32 %i.au
  br label %_ZL30TableGetMaxDisplayOrderAllowedP10ImGuiTableii.exit

bb.h:                                             ; preds = %.critedge.i
  %indvars.iv.next65.i = add nsw i64 %indvars.iv64.i, 1
  %exitcond.not = icmp eq i64 %indvars.iv64.i, %i.am
  br i1 %exitcond.not, label %_ZL30TableGetMaxDisplayOrderAllowedP10ImGuiTableii.exit, label %.critedge.i, !llvm.loop !375

_ZL30TableGetMaxDisplayOrderAllowedP10ImGuiTableii.exit: ; preds = %bb.g, %bb.h, %bb.a, %.split.us.i, %.split44.us.i
  %.035.i = phi i32 [ %i.g, %bb.a ], [ %i.av, %.split44.us.i ], [ %.034.fr.i, %bb.h ], [ %.034.fr.i, %.split.us.i ], [ %.034.fr.i, %bb.g ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 569
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !223, !range !166, !noundef !167
  %i.ay = trunc nuw i8 %i.ax to i1
  %i.az = icmp eq i32 %.035.i, %i.g
  %or.cond = and i1 %i.az, %i.ay
  br i1 %or.cond, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZL30TableGetMaxDisplayOrderAllowedP10ImGuiTableii.exit
  %i.ba = trunc i32 %.035.i to i16
  store i16 %i.ba, ptr %i.j, align 4, !tbaa !316
  br label %bb.j

bb.j:                                             ; preds = %_ZL30TableGetMaxDisplayOrderAllowedP10ImGuiTableii.exit, %bb.i
  ret void
end_hunk_1
