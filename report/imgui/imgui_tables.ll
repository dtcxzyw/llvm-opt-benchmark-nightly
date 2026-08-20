inline.NumInlined: 770
inline.NumDeleted: 207
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN5ImGui17TableLoadSettingsEP10ImGuiTable:bb.a
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
  %i.ak = sext i16 %i.ai to i32
  %i.al = icmp slt i16 %i.ac, %i.ai
  %i.am = select i1 %i.al, i32 -1, i32 1          ; 3 uses
  store i16 %i.ac, ptr %i.ah, align 2, !tbaa !327
  %i.an = add nsw i32 %i.am, %i.ak
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !297 ; 6 uses
  %i.aq = trunc nsw i32 %i.am to i16
  %i.ar = sext i32 %i.an to i64
  %i.as = sext i32 %i.am to i64
  %sext.i = sext i16 %i.ac to i64
  br label %bb.l

.preheader.i:                                     ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.au = load i32, ptr %i.at, align 4, !tbaa !222 ; 3 uses
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %wide.trip.count.i = zext nneg i32 %i.au to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.aw = icmp ult i32 %i.au, 4
  br i1 %i.aw, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %bb.n

bb.l:                                             ; preds = %bb.l, %bb.k
  %indvars.iv.i = phi i64 [ %i.ar, %bb.k ], [ %indvars.iv.next.i, %bb.l ] ; 3 uses
  %i.ax = getelementptr inbounds [2 x i8], ptr %i.ap, i64 %indvars.iv.i
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !324
  %i.az = sext i16 %i.ay to i64
  %i.ba = getelementptr inbounds [120 x i8], ptr %i.ae, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 90 ; 2 uses
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !327
  %i.bd = sub i16 %i.bc, %i.aq
  store i16 %i.bd, ptr %i.bb, align 2, !tbaa !327
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, %i.as
  %i.be = icmp eq i64 %indvars.iv.i, %sext.i
  br i1 %i.be, label %.preheader.i, label %bb.l, !llvm.loop !355

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
  %i.bf = trunc i64 %indvars.iv33.i.epil to i16
  %i.bg = getelementptr inbounds nuw [120 x i8], ptr %i.ae, i64 %indvars.iv33.i.epil
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 90
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !327
  %i.bj = sext i16 %i.bi to i64
  %i.bk = getelementptr inbounds [2 x i8], ptr %i.ap, i64 %i.bj
  store i16 %i.bf, ptr %i.bk, align 2, !tbaa !324
  %indvars.iv.next34.i.epil = add nuw nsw i64 %indvars.iv33.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %bb.m, !llvm.loop !356

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %bb.m, %.preheader.i
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 578
  store i8 1, ptr %i.bl, align 2, !tbaa !306
  br label %_ZN5ImGui26TableSetColumnDisplayOrderEP10ImGuiTableii.exit

bb.n:                                             ; preds = %bb.n, %.lr.ph.i.new
  %indvars.iv33.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next34.i.3, %bb.n ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.n ]
  %i.bm = trunc i64 %indvars.iv33.i to i16
  %i.bn = getelementptr inbounds nuw [120 x i8], ptr %i.ae, i64 %indvars.iv33.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 90
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !327
  %i.bq = sext i16 %i.bp to i64
  %i.br = getelementptr inbounds [2 x i8], ptr %i.ap, i64 %i.bq
  store i16 %i.bm, ptr %i.br, align 2, !tbaa !324
  %indvars.iv.next34.i = or disjoint i64 %indvars.iv33.i, 1 ; 2 uses
  %i.bs = trunc i64 %indvars.iv.next34.i to i16
  %i.bt = getelementptr inbounds nuw [120 x i8], ptr %i.ae, i64 %indvars.iv.next34.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 90
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !327
  %i.bw = sext i16 %i.bv to i64
  %i.bx = getelementptr inbounds [2 x i8], ptr %i.ap, i64 %i.bw
  store i16 %i.bs, ptr %i.bx, align 2, !tbaa !324
  %indvars.iv.next34.i.1 = or disjoint i64 %indvars.iv33.i, 2 ; 2 uses
  %i.by = trunc i64 %indvars.iv.next34.i.1 to i16
  %i.bz = getelementptr inbounds nuw [120 x i8], ptr %i.ae, i64 %indvars.iv.next34.i.1
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 90
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !327
  %i.cc = sext i16 %i.cb to i64
  %i.cd = getelementptr inbounds [2 x i8], ptr %i.ap, i64 %i.cc
  store i16 %i.by, ptr %i.cd, align 2, !tbaa !324
  %indvars.iv.next34.i.2 = or disjoint i64 %indvars.iv33.i, 3 ; 2 uses
  %i.ce = trunc i64 %indvars.iv.next34.i.2 to i16
  %i.cf = getelementptr inbounds nuw [120 x i8], ptr %i.ae, i64 %indvars.iv.next34.i.2
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 90
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !327
  %i.ci = sext i16 %i.ch to i64
  %i.cj = getelementptr inbounds [2 x i8], ptr %i.ap, i64 %i.ci
  store i16 %i.ce, ptr %i.cj, align 2, !tbaa !324
  %indvars.iv.next34.i.3 = add nuw nsw i64 %indvars.iv33.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.n, !llvm.loop !357

_ZN5ImGui26TableSetColumnDisplayOrderEP10ImGuiTableii.exit: ; preds = %bb.j, %._crit_edge.i
  store i16 -1, ptr %i.ab, align 4, !tbaa !316
  br label %bb.o

bb.o:                                             ; preds = %_ZN5ImGui26TableSetColumnDisplayOrderEP10ImGuiTableii.exit, %bb.i, %bb.h
  %i.ck = load ptr, ptr @GImGui, align 8, !tbaa !8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 5428
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !358
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  store i16 -1, ptr %i.z, align 2, !tbaa !317
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.o, %bb.p, %bb.g
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 582 ; 2 uses
  %i.cp = load i8, ptr %i.co, align 2, !tbaa !280, !range !166, !noundef !167
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %.preheader, label %bb.s

.preheader:                                       ; preds = %.thread
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !222 ; 3 uses
  %i.ct = icmp sgt i32 %i.cs, 0
  br i1 %i.ct, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !291 ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !297 ; 5 uses
  %wide.trip.count = zext nneg i32 %i.cs to i64   ; 2 uses
  %xtraiter78 = and i64 %wide.trip.count, 3       ; 3 uses
  %i.cy = icmp ult i32 %i.cs, 4
  br i1 %i.cy, label %.epil.preheader77, label %.lr.ph.new

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
  %i.cz = trunc i64 %indvars.iv.epil to i16       ; 2 uses
  %i.da = getelementptr inbounds nuw [120 x i8], ptr %i.cv, i64 %indvars.iv.epil
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 90
  store i16 %i.cz, ptr %i.db, align 2, !tbaa !327
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.cx, i64 %indvars.iv.epil
  store i16 %i.cz, ptr %i.dc, align 2, !tbaa !324
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter79.next = add i64 %epil.iter79, 1     ; 2 uses
  %epil.iter79.cmp.not = icmp eq i64 %epil.iter79.next, %xtraiter78
  br i1 %epil.iter79.cmp.not, label %._crit_edge, label %bb.q, !llvm.loop !359

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.q, %.preheader
  store i8 0, ptr %i.co, align 2, !tbaa !280
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 578
  store i8 1, ptr %i.dd, align 2, !tbaa !306
  br label %bb.s

bb.r:                                             ; preds = %bb.r, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.r ] ; 7 uses
  %niter83 = phi i64 [ 0, %.lr.ph.new ], [ %niter83.next.3, %bb.r ]
  %i.de = trunc i64 %indvars.iv to i16            ; 2 uses
  %i.df = getelementptr inbounds nuw [120 x i8], ptr %i.cv, i64 %indvars.iv
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 90
  store i16 %i.de, ptr %i.dg, align 2, !tbaa !327
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.cx, i64 %indvars.iv
  store i16 %i.de, ptr %i.dh, align 2, !tbaa !324
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.di = trunc i64 %indvars.iv.next to i16       ; 2 uses
  %i.dj = getelementptr inbounds nuw [120 x i8], ptr %i.cv, i64 %indvars.iv.next
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 90
  store i16 %i.di, ptr %i.dk, align 2, !tbaa !327
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.cx, i64 %indvars.iv.next
  store i16 %i.di, ptr %i.dl, align 2, !tbaa !324
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 3 uses
  %i.dm = trunc i64 %indvars.iv.next.1 to i16     ; 2 uses
  %i.dn = getelementptr inbounds nuw [120 x i8], ptr %i.cv, i64 %indvars.iv.next.1
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 90
  store i16 %i.dm, ptr %i.do, align 2, !tbaa !327
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.cx, i64 %indvars.iv.next.1
  store i16 %i.dm, ptr %i.dp, align 2, !tbaa !324
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 3 uses
  %i.dq = trunc i64 %indvars.iv.next.2 to i16     ; 2 uses
  %i.dr = getelementptr inbounds nuw [120 x i8], ptr %i.cv, i64 %indvars.iv.next.2
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 90
  store i16 %i.dq, ptr %i.ds, align 2, !tbaa !327
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.cx, i64 %indvars.iv.next.2
  store i16 %i.dq, ptr %i.dt, align 2, !tbaa !324
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter83.next.3 = add i64 %niter83, 4           ; 2 uses
  %niter83.ncmp.3 = icmp eq i64 %niter83.next.3, %unroll_iter82
  br i1 %niter83.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.r, !llvm.loop !360

bb.s:                                             ; preds = %._crit_edge, %.thread
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 583 ; 2 uses
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !361, !range !166, !noundef !167
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !291 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !290 ; 2 uses
  %.not5861 = icmp eq ptr %i.dy, %i.ea
  br i1 %.not5861, label %._crit_edge65, label %.lr.ph64

._crit_edge65:                                    ; preds = %.lr.ph64, %bb.t
  store i8 0, ptr %i.du, align 1, !tbaa !361
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 578
  store i8 1, ptr %i.eb, align 2, !tbaa !306
  br label %bb.u

.lr.ph64:                                         ; preds = %bb.t, %.lr.ph64
  %.062 = phi ptr [ %i.ei, %.lr.ph64 ], [ %i.dy, %bb.t ] ; 4 uses
  %i.ec = load i32, ptr %.062, align 4, !tbaa !362
  %i.ed = and i32 %i.ec, 2
  %i.ee = icmp eq i32 %i.ed, 0
  %i.ef = getelementptr inbounds nuw i8, ptr %.062, i64 108
  %i.eg = zext i1 %i.ee to i8                     ; 2 uses
  store i8 %i.eg, ptr %i.ef, align 4, !tbaa !331
  %i.eh = getelementptr inbounds nuw i8, ptr %.062, i64 107
  store i8 %i.eg, ptr %i.eh, align 1, !tbaa !332
  %i.ei = getelementptr inbounds nuw i8, ptr %.062, i64 120 ; 2 uses
  %.not58 = icmp eq ptr %i.ei, %i.ea
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
  %i.f = load i16, ptr %i.e, align 2, !tbaa !327
  %i.g = sext i16 %i.f to i32                     ; 3 uses
  %i.h = icmp eq i32 %2, %i.g
  br i1 %i.h, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp slt i32 %2, %i.g
  %i.j = select i1 %i.i, i32 -1, i32 1            ; 3 uses
  %i.k = trunc i32 %2 to i16
  store i16 %i.k, ptr %i.e, align 2, !tbaa !327
  %i.l = add nsw i32 %i.j, %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !297  ; 6 uses
  %i.o = trunc nsw i32 %i.j to i16
  %i.p = sext i32 %i.l to i64
  %i.q = sext i32 %i.j to i64
  %sext = sext i32 %2 to i64
  br label %bb.c

.preheader:                                       ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.s = load i32, ptr %i.r, align 4, !tbaa !222  ; 3 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.s to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.u = icmp ult i32 %i.s, 4
  br i1 %i.u, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.c
  %indvars.iv = phi i64 [ %i.p, %bb.b ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.v = getelementptr inbounds [2 x i8], ptr %i.n, i64 %indvars.iv
  %i.w = load i16, ptr %i.v, align 2, !tbaa !324
  %i.x = sext i16 %i.w to i64
  %i.y = getelementptr inbounds [120 x i8], ptr %i.b, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 90 ; 2 uses
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !327
  %i.ab = sub i16 %i.aa, %i.o
  store i16 %i.ab, ptr %i.z, align 2, !tbaa !327
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.q
  %i.ac = icmp eq i64 %indvars.iv, %sext
  br i1 %i.ac, label %.preheader, label %bb.c, !llvm.loop !355

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
  %i.ad = trunc i64 %indvars.iv33.epil to i16
  %i.ae = getelementptr inbounds nuw [120 x i8], ptr %i.b, i64 %indvars.iv33.epil
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 90
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !327
  %i.ah = sext i16 %i.ag to i64
  %i.ai = getelementptr inbounds [2 x i8], ptr %i.n, i64 %i.ah
  store i16 %i.ad, ptr %i.ai, align 2, !tbaa !324
  %indvars.iv.next34.epil = add nuw nsw i64 %indvars.iv33.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.d, !llvm.loop !373

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.d, %.preheader
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 578
  store i8 1, ptr %i.aj, align 2, !tbaa !306
  br label %bb.f

bb.e:                                             ; preds = %bb.e, %.lr.ph.new
  %indvars.iv33 = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next34.3, %bb.e ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.e ]
  %i.ak = trunc i64 %indvars.iv33 to i16
  %i.al = getelementptr inbounds nuw [120 x i8], ptr %i.b, i64 %indvars.iv33
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 90
  %i.an = load i16, ptr %i.am, align 2, !tbaa !327
  %i.ao = sext i16 %i.an to i64
  %i.ap = getelementptr inbounds [2 x i8], ptr %i.n, i64 %i.ao
  store i16 %i.ak, ptr %i.ap, align 2, !tbaa !324
  %indvars.iv.next34 = or disjoint i64 %indvars.iv33, 1 ; 2 uses
  %i.aq = trunc i64 %indvars.iv.next34 to i16
  %i.ar = getelementptr inbounds nuw [120 x i8], ptr %i.b, i64 %indvars.iv.next34
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 90
  %i.at = load i16, ptr %i.as, align 2, !tbaa !327
  %i.au = sext i16 %i.at to i64
  %i.av = getelementptr inbounds [2 x i8], ptr %i.n, i64 %i.au
  store i16 %i.aq, ptr %i.av, align 2, !tbaa !324
  %indvars.iv.next34.1 = or disjoint i64 %indvars.iv33, 2 ; 2 uses
  %i.aw = trunc i64 %indvars.iv.next34.1 to i16
  %i.ax = getelementptr inbounds nuw [120 x i8], ptr %i.b, i64 %indvars.iv.next34.1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 90
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !327
  %i.ba = sext i16 %i.az to i64
  %i.bb = getelementptr inbounds [2 x i8], ptr %i.n, i64 %i.ba
  store i16 %i.aw, ptr %i.bb, align 2, !tbaa !324
  %indvars.iv.next34.2 = or disjoint i64 %indvars.iv33, 3 ; 2 uses
  %i.bc = trunc i64 %indvars.iv.next34.2 to i16
  %i.bd = getelementptr inbounds nuw [120 x i8], ptr %i.b, i64 %indvars.iv.next34.2
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 90
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !327
  %i.bg = sext i16 %i.bf to i64
  %i.bh = getelementptr inbounds [2 x i8], ptr %i.n, i64 %i.bg
  store i16 %i.bc, ptr %i.bh, align 2, !tbaa !324
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
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui17TableUpdateLayoutEP10ImGuiTable(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %1 = alloca %struct.ImRect, align 8             ; 6 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !192  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !222  ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !376
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5ImGui21TableReconcileColumnsEP10ImGuiTable(ptr noundef nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !294  ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.j)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 577 ; 4 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !307, !range !166, !noundef !167
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN5ImGui27TableLoadSettingsForColumnsEP10ImGuiTable(ptr noundef nonnull %0)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 571 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !304, !range !166, !noundef !167
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = load i8, ptr %i.k, align 1, !tbaa !307, !range !166, !noundef !167
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.i, label %bb.y

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !291  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !290  ; 2 uses
  %.not618733 = icmp eq ptr %i.t, %i.v
  br i1 %.not618733, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.j

._crit_edge:                                      ; preds = %_ZN5ImGui23TableInitColumnDefaultsEP10ImGuiTableP16ImGuiTableColumni.exit, %bb.i
  tail call void @_ZN5ImGui20TableFixDisplayOrderEP10ImGuiTable(ptr noundef nonnull %0)
  store i8 0, ptr %i.k, align 1, !tbaa !307
  br label %bb.y

bb.j:                                             ; preds = %.lr.ph, %_ZN5ImGui23TableInitColumnDefaultsEP10ImGuiTableP16ImGuiTableColumni.exit
  %.0602734 = phi ptr [ %i.t, %.lr.ph ], [ %i.cb, %_ZN5ImGui23TableInitColumnDefaultsEP10ImGuiTableP16ImGuiTableColumni.exit ] ; 14 uses
  %i.y = load i8, ptr %i.k, align 1, !tbaa !307, !range !166, !noundef !167
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %.0602734, i64 113
  %i.ab = load i8, ptr %i.aa, align 1             ; 2 uses
  br i1 %i.z, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ac = and i8 %i.ab, 4
  %.not666 = icmp eq i8 %i.ac, 0
  br i1 %.not666, label %.thread, label %bb.l

.thread:                                          ; preds = %bb.k
  %i.ad = load i32, ptr %.0602734, align 4, !tbaa !362
  br label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ae = load i32, ptr %i.w, align 8, !tbaa !308
  %i.af = xor i32 %i.ae, -1
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.ag = shl i8 %i.ab, 6
  %sext = ashr i8 %i.ag, 7
  %i.ah = zext i8 %sext to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.0601 = phi i32 [ %i.ah, %bb.m ], [ %i.af, %bb.l ] ; 3 uses
  %i.ai = load i32, ptr %.0602734, align 4, !tbaa !362 ; 2 uses
  %i.aj = and i32 %.0601, 1
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %.thread, %bb.n
  %i.ak = phi i32 [ %i.ad, %.thread ], [ %i.ai, %bb.n ] ; 4 uses
  %.0601712 = phi i32 [ -1, %.thread ], [ %.0601, %bb.n ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0602734, i64 32
  %i.am = load float, ptr %i.al, align 4, !tbaa !377 ; 3 uses
  %i.an = and i32 %i.ak, 16
  %i.ao = icmp ne i32 %i.an, 0
  %i.ap = fcmp ogt float %i.am, 0.000000e+00      ; 3 uses
  %or.cond.i = and i1 %i.ao, %i.ap
  %i.aq = select i1 %or.cond.i, float %i.am, float -1.000000e+00
  %i.ar = getelementptr inbounds nuw i8, ptr %.0602734, i64 16
  store float %i.aq, ptr %i.ar, align 4, !tbaa !366
  %i.as = and i32 %i.ak, 8
  %.not28.i = icmp ne i32 %i.as, 0
  %or.cond37.not.i = select i1 %i.ap, i1 %.not28.i, i1 false
  %i.at = select i1 %or.cond37.not.i, float %i.am, float -1.000000e+00
  %i.au = getelementptr inbounds nuw i8, ptr %.0602734, i64 28
  store float %i.at, ptr %i.au, align 4, !tbaa !370
  br i1 %i.ap, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %.0602734, i64 115 ; 2 uses
  %i.aw = load i16, ptr %i.av, align 1
  %i.ax = and i16 %i.aw, -16
  store i16 %i.ax, ptr %i.av, align 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.ay = phi i32 [ %i.ak, %bb.p ], [ %i.ak, %bb.o ], [ %i.ai, %bb.n ] ; 3 uses
  %.0601713 = phi i32 [ %.0601712, %bb.p ], [ %.0601712, %bb.o ], [ %.0601, %bb.n ] ; 3 uses
  %i.az = and i32 %.0601713, 2
  %.not29.i = icmp eq i32 %i.az, 0
  br i1 %.not29.i, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ba = load i32, ptr %i.x, align 4, !tbaa !218
  %i.bb = and i32 %i.ba, 2
  %.not30.i = icmp eq i32 %i.bb, 0
  br i1 %.not30.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bc = load ptr, ptr %i.s, align 8, !tbaa !291
  %i.bd = ptrtoint ptr %.0602734 to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = sdiv exact i64 %i.bf, 120
  %i.bh = trunc i64 %i.bg to i16
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bi = phi i16 [ %i.bh, %bb.s ], [ -1, %bb.r ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.0602734, i64 90
  store i16 %i.bi, ptr %i.bj, align 2, !tbaa !327
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q
  %i.bk = and i32 %.0601713, 4
  %.not31.i = icmp eq i32 %i.bk, 0
  br i1 %.not31.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bl = and i32 %i.ay, 2
  %i.bm = icmp eq i32 %i.bl, 0
  %i.bn = getelementptr inbounds nuw i8, ptr %.0602734, i64 108
  %i.bo = zext i1 %i.bm to i8                     ; 2 uses
  store i8 %i.bo, ptr %i.bn, align 4, !tbaa !331
  %i.bp = getelementptr inbounds nuw i8, ptr %.0602734, i64 107
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !332
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bq = and i32 %.0601713, 8
  %.not33.i = icmp eq i32 %i.bq, 0
  br i1 %.not33.i, label %_ZN5ImGui23TableInitColumnDefaultsEP10ImGuiTableP16ImGuiTableColumni.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.br = and i32 %i.ay, 4
  %.not34.i = icmp eq i32 %i.br, 0                ; 2 uses
  %i.bs = sext i1 %.not34.i to i16
  %i.bt = getelementptr inbounds nuw i8, ptr %.0602734, i64 98
  store i16 %i.bs, ptr %i.bt, align 2, !tbaa !378
  %i.bu = and i32 %i.ay, 32768
  %.not35.i = icmp eq i32 %i.bu, 0
  %i.bv = getelementptr inbounds nuw i8, ptr %.0602734, i64 115 ; 2 uses
  %i.bw = select i1 %.not35.i, i16 256, i16 512
  %i.bx = select i1 %.not34.i, i16 0, i16 %i.bw
  %i.by = load i16, ptr %i.bv, align 1
  %i.bz = and i16 %i.by, -769
  %i.ca = or disjoint i16 %i.bz, %i.bx
  store i16 %i.ca, ptr %i.bv, align 1
  br label %_ZN5ImGui23TableInitColumnDefaultsEP10ImGuiTableP16ImGuiTableColumni.exit

_ZN5ImGui23TableInitColumnDefaultsEP10ImGuiTableP16ImGuiTableColumni.exit: ; preds = %bb.w, %bb.x
  %i.cb = getelementptr inbounds nuw i8, ptr %.0602734, i64 120 ; 2 uses
  %.not618 = icmp eq ptr %i.cb, %i.v
  br i1 %.not618, label %._crit_edge, label %bb.j

bb.y:                                             ; preds = %._crit_edge, %bb.h
  tail call void @_ZN5ImGui24TableApplyQueuedRequestsEP10ImGuiTable(ptr noundef nonnull %0)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 4568
  %i.cd = load float, ptr %i.cc, align 8, !tbaa !379 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !342 ; 4 uses
  %i.cg = fcmp une float %i.cf, 0.000000e+00
  %i.ch = fcmp une float %i.cf, %i.cd
  %or.cond667 = select i1 %i.cg, i1 %i.ch, i1 false
  br i1 %or.cond667, label %bb.z, label %.loopexit732

bb.z:                                             ; preds = %bb.y
  %i.ci = fdiv float %i.cd, %i.cf                 ; 6 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 10404
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !292
  %i.cl = and i32 %i.ck, 4096
  %.not619 = icmp eq i32 %i.cl, 0
  br i1 %.not619, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cm = load i32, ptr %0, align 8, !tbaa !219
  %i.cn = fpext float %i.cf to double
  %i.co = fpext float %i.cd to double
  %i.cp = fpext float %i.ci to double
  tail call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.2, i32 noundef %i.cm, double noundef %i.cn, double noundef %i.co, double noundef %i.cp)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.cq = icmp sgt i32 %i.e, 0
  br i1 %i.cq, label %.lr.ph740, label %.loopexit732

.lr.ph740:                                        ; preds = %bb.ab
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !291 ; 5 uses
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.ct = icmp ult i32 %i.e, 4
  br i1 %i.ct, label %.epil.preheader, label %.lr.ph740.new

.lr.ph740.new:                                    ; preds = %.lr.ph740
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.lr.ph740.new
  %indvars.iv = phi i64 [ 0, %.lr.ph740.new ], [ %indvars.iv.next.3, %bb.ac ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph740.new ], [ %niter.next.3, %bb.ac ]
  %i.cu = getelementptr inbounds nuw [120 x i8], ptr %i.cs, i64 %indvars.iv
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !366
  %i.cx = fmul float %i.ci, %i.cw
  store float %i.cx, ptr %i.cv, align 4, !tbaa !366
  %i.cy = getelementptr inbounds nuw [120 x i8], ptr %i.cs, i64 %indvars.iv
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 136 ; 2 uses
  %i.da = load float, ptr %i.cz, align 4, !tbaa !366
  %i.db = fmul float %i.ci, %i.da
  store float %i.db, ptr %i.cz, align 4, !tbaa !366
  %i.dc = getelementptr inbounds nuw [120 x i8], ptr %i.cs, i64 %indvars.iv
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 256 ; 2 uses
  %i.de = load float, ptr %i.dd, align 4, !tbaa !366
  %i.df = fmul float %i.ci, %i.de
  store float %i.df, ptr %i.dd, align 4, !tbaa !366
  %i.dg = getelementptr inbounds nuw [120 x i8], ptr %i.cs, i64 %indvars.iv
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 376 ; 2 uses
  %i.di = load float, ptr %i.dh, align 4, !tbaa !366
  %i.dj = fmul float %i.ci, %i.di
  store float %i.dj, ptr %i.dh, align 4, !tbaa !366
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit732.loopexit.unr-lcssa, label %bb.ac, !llvm.loop !380

.loopexit732.loopexit.unr-lcssa:                  ; preds = %bb.ac
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit732, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit732.loopexit.unr-lcssa, %.lr.ph740
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph740 ], [ %indvars.iv.next.3, %.loopexit732.loopexit.unr-lcssa ]
  %lcmp.mod867 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod867)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.ad ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ad ]
  %i.dk = getelementptr inbounds nuw [120 x i8], ptr %i.cs, i64 %indvars.iv.epil
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 2 uses
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !366
  %i.dn = fmul float %i.ci, %i.dm
  store float %i.dn, ptr %i.dl, align 4, !tbaa !366
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit732, label %bb.ad, !llvm.loop !381

.loopexit732:                                     ; preds = %.loopexit732.loopexit.unr-lcssa, %bb.ad, %bb.ab, %bb.y
  store float %i.cd, ptr %i.ce, align 4, !tbaa !342
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 16 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !218
  %i.dq = and i32 %i.dp, 57344                    ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 580 ; 2 uses
  store i8 1, ptr %i.dr, align 4, !tbaa !382
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 579 ; 2 uses
  store i8 1, ptr %i.ds, align 1, !tbaa !383
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 514 ; 5 uses
  store i16 0, ptr %i.dt, align 2, !tbaa !384
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !302
  %i.dw = add nsw i32 %i.e, 31
  %i.dx = ashr i32 %i.dw, 5
  %i.dy = sext i32 %i.dx to i64
  %i.dz = shl nsw i64 %i.dy, 2                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.dv, i8 0, i64 %i.dz, i1 false)
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !301
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.eb, i8 0, i64 %i.dz, i1 false)
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 542 ; 3 uses
  store i16 -1, ptr %i.ec, align 2, !tbaa !385
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 3284
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !386 ; 2 uses
  %i.ef = fcmp ole float %i.ee, 1.000000e+00
  %i.eg = select i1 %i.ef, float 1.000000e+00, float %i.ee
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 6 uses
  store float %i.eg, ptr %i.eh, align 8, !tbaa !363
  %i.ei = icmp sgt i32 %i.e, 0                    ; 5 uses
  br i1 %i.ei, label %.lr.ph750, label %._crit_edge751

.lr.ph750:                                        ; preds = %.loopexit732
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 518
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 578
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 573 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 120
  %wide.trip.count787 = zext nneg i32 %i.e to i64
  br label %bb.ae

._crit_edge751.loopexit:                          ; preds = %bb.bp
  %i.ep = trunc nsw i32 %.1593 to i16
  %i.eq = sitofp i32 %.2596 to float
  %i.er = icmp ne i8 %.2588, 0
  br label %._crit_edge751

._crit_edge751:                                   ; preds = %._crit_edge751.loopexit, %.loopexit732
  %.0597.lcssa = phi i16 [ 0, %.loopexit732 ], [ %.2599, %._crit_edge751.loopexit ]
  %.0594.lcssa = phi float [ 0.000000e+00, %.loopexit732 ], [ %i.eq, %._crit_edge751.loopexit ]
  %.0592.lcssa = phi i16 [ -1, %.loopexit732 ], [ %i.ep, %._crit_edge751.loopexit ]
  %.0589.lcssa = phi i1 [ false, %.loopexit732 ], [ %.2591, %._crit_edge751.loopexit ]
  %.0586.lcssa = phi i1 [ false, %.loopexit732 ], [ %i.er, %._crit_edge751.loopexit ]
  %.0583.lcssa = phi float [ 0.000000e+00, %.loopexit732 ], [ %.2585, %._crit_edge751.loopexit ]
  %.0580.lcssa = phi float [ 0.000000e+00, %.loopexit732 ], [ %.2582, %._crit_edge751.loopexit ]
  %i.es = load i32, ptr %i.do, align 4, !tbaa !218 ; 2 uses
  %i.et = and i32 %i.es, 8
  %.not620 = icmp eq i32 %i.et, 0
  br i1 %.not620, label %bb.bs, label %bb.bq

bb.ae:                                            ; preds = %.lr.ph750, %bb.bp
  %indvars.iv785 = phi i64 [ 0, %.lr.ph750 ], [ %indvars.iv.next786, %bb.bp ] ; 3 uses
  %.0580747 = phi float [ 0.000000e+00, %.lr.ph750 ], [ %.2582, %bb.bp ] ; 4 uses
  %.0583746 = phi float [ 0.000000e+00, %.lr.ph750 ], [ %.2585, %bb.bp ] ; 3 uses
  %.0586745 = phi i8 [ 0, %.lr.ph750 ], [ %.2588, %bb.bp ] ; 2 uses
  %.0589744 = phi i1 [ false, %.lr.ph750 ], [ %.2591, %bb.bp ] ; 2 uses
  %.0592743 = phi i32 [ -1, %.lr.ph750 ], [ %.1593, %bb.bp ] ; 4 uses
  %.0594742 = phi i32 [ 0, %.lr.ph750 ], [ %.2596, %bb.bp ] ; 3 uses
  %.0597741 = phi i16 [ 0, %.lr.ph750 ], [ %.2599, %bb.bp ] ; 3 uses
  %i.eu = load ptr, ptr %i.ej, align 8, !tbaa !297
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %i.eu, i64 %indvars.iv785
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !324 ; 6 uses
  %i.ex = sext i16 %i.ew to i32                   ; 4 uses
  %i.ey = load ptr, ptr %i.ek, align 8, !tbaa !291
  %i.ez = sext i16 %i.ew to i64
  %i.fa = getelementptr inbounds [120 x i8], ptr %i.ey, i64 %i.ez ; 32 uses
  %i.fb = load i16, ptr %i.el, align 2, !tbaa !271
  %.not650 = icmp sgt i16 %i.fb, %i.ew
  br i1 %.not650, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call fastcc void @_ZL21TableSetupColumnFlagsP10ImGuiTableP16ImGuiTableColumni(ptr noundef nonnull %0, ptr noundef %i.fa, i32 noundef 0)
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 88
  store i16 -1, ptr %i.fc, align 4, !tbaa !387
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 56
  store i32 0, ptr %i.fd, align 4, !tbaa !388
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 52
  store i32 0, ptr %i.fe, align 4, !tbaa !389
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fa, i64 32
  store float -1.000000e+00, ptr %i.ff, align 4, !tbaa !377
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.fg = load i32, ptr %i.do, align 4, !tbaa !218
  %i.fh = and i32 %i.fg, 4
  %.not651 = icmp eq i32 %i.fh, 0
  br i1 %.not651, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fi = load i32, ptr %i.fa, align 4, !tbaa !362
  %i.fj = and i32 %i.fi, 128
  %.not652 = icmp eq i32 %i.fj, 0
  br i1 %.not652, label %._crit_edge806, label %bb.ai

._crit_edge806:                                   ; preds = %bb.ah
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.fa, i64 108
  %.pre = load i8, ptr %.phi.trans.insert, align 4, !tbaa !331, !range !166
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fa, i64 108
  store i8 1, ptr %i.fk, align 4, !tbaa !331
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge806, %bb.ai
  %i.fl = phi i8 [ %.pre, %._crit_edge806 ], [ 1, %bb.ai ] ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fa, i64 107 ; 2 uses
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !332, !range !166, !noundef !167
  %.not653 = icmp eq i8 %i.fn, %i.fl
  br i1 %.not653, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i8 %i.fl, ptr %i.fm, align 1, !tbaa !332
  store i8 1, ptr %i.em, align 2, !tbaa !306
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pre807 = load i32, ptr %i.fa, align 4, !tbaa !362 ; 3 uses
  %i.fo = trunc i32 %.pre807 to i8
  %i.fp = and i8 %i.fo, 1
  %i.fq = xor i8 %i.fp, 1
  %i.fr = and i8 %i.fl, %i.fq                     ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fa, i64 106
  store i8 %i.fr, ptr %i.fs, align 2, !tbaa !333
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fa, i64 113 ; 3 uses
  %i.fu = load i8, ptr %i.ft, align 1
  %i.fv = and i8 %i.fu, -3
  store i8 %i.fv, ptr %i.ft, align 1
  %i.fw = zext nneg i8 %i.fr to i32
  %i.fx = lshr i32 %.pre807, 1
  %.lobit = and i32 %i.fx, 1
  %.not655.not = icmp eq i32 %.lobit, %i.fw
  br i1 %.not655.not, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i8 0, ptr %i.dr, align 4, !tbaa !382
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.fy = sext i16 %i.ew to i64
  %.not656 = icmp eq i64 %indvars.iv785, %i.fy
  br i1 %.not656, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  store i8 0, ptr %i.ds, align 1, !tbaa !383
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fa, i64 98
  %i.ga = load i16, ptr %i.fz, align 2, !tbaa !378 ; 2 uses
  %.not657 = icmp eq i16 %i.ga, -1
  br i1 %.not657, label %.thread714, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gb = trunc nuw i8 %i.fr to i1
  br i1 %i.gb, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store i8 1, ptr %i.en, align 1, !tbaa !310
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.gc = icmp sgt i16 %i.ga, 0
end_hunk_0
begin_hunk_1_@_ZN5ImGui23TableInitColumnDefaultsEP10ImGuiTableP16ImGuiTableColumni:bb.a
  %.not29 = icmp eq i32 %i.p, 0
  br i1 %.not29, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !218
  %i.s = and i32 %i.r, 2
  %.not30 = icmp eq i32 %i.s, 0
  br i1 %.not30, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !291
  %i.v = ptrtoint ptr %1 to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = sdiv exact i64 %i.x, 120
  %i.z = trunc i64 %i.y to i16
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.aa = phi i16 [ %i.z, %bb.f ], [ -1, %bb.e ]
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 90
  store i16 %i.aa, ptr %i.ab, align 2, !tbaa !327
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %i.ac = and i32 %2, 4
  %.not31 = icmp eq i32 %i.ac, 0
  br i1 %.not31, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = and i32 %i.a, 2
  %i.ae = icmp eq i32 %i.ad, 0
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.ag = zext i1 %i.ae to i8                     ; 2 uses
  store i8 %i.ag, ptr %i.af, align 4, !tbaa !331
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 107
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !332
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ai = and i32 %2, 8
  %.not33 = icmp eq i32 %i.ai, 0
  br i1 %.not33, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = and i32 %i.a, 4
  %.not34 = icmp eq i32 %i.aj, 0                  ; 2 uses
  %i.ak = sext i1 %.not34 to i16
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 98
  store i16 %i.ak, ptr %i.al, align 2, !tbaa !378
  %i.am = and i32 %i.a, 32768
  %.not35 = icmp eq i32 %i.am, 0
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 115 ; 2 uses
  %i.ao = select i1 %.not35, i16 256, i16 512
  %i.ap = select i1 %.not34, i16 0, i16 %i.ao
  %i.aq = load i16, ptr %i.an, align 1
  %i.ar = and i16 %i.aq, -769
  %i.as = or disjoint i16 %i.ar, %i.ap
  store i16 %i.as, ptr %i.an, align 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui20TableFixDisplayOrderEP10ImGuiTable(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 10920
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !222  ; 2 uses
  %i.e = shl i32 %i.d, 4                          ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 10924 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !344
  %.not.i = icmp sgt i32 %i.e, %i.g
  br i1 %.not.i, label %bb.b, label %._ZN8ImVectorIcE7reserveEi.exit_crit_edge

._ZN8ImVectorIcE7reserveEi.exit_crit_edge:        ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 10928
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !476
  br label %_ZN8ImVectorIcE7reserveEi.exit

bb.b:                                             ; preds = %bb.a
  %i.h = sext i32 %i.e to i64
  %i.i = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.h) ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 10928 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !345  ; 2 uses
  %.not6.i = icmp eq ptr %i.k, null
  br i1 %.not6.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr %i.b, align 8, !tbaa !346
  %i.m = sext i32 %i.l to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr nonnull align 1 %i.k, i64 %i.m, i1 false)
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !345
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.n)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr %i.i, ptr %i.j, align 8, !tbaa !345
  store i32 %i.e, ptr %i.f, align 4, !tbaa !344
  %.pre49 = load i32, ptr %i.c, align 4, !tbaa !222
  br label %_ZN8ImVectorIcE7reserveEi.exit

_ZN8ImVectorIcE7reserveEi.exit:                   ; preds = %._ZN8ImVectorIcE7reserveEi.exit_crit_edge, %bb.d
  %i.o = phi i32 [ %i.d, %._ZN8ImVectorIcE7reserveEi.exit_crit_edge ], [ %.pre49, %bb.d ] ; 6 uses
  %i.p = phi ptr [ %.pre, %._ZN8ImVectorIcE7reserveEi.exit_crit_edge ], [ %i.i, %bb.d ] ; 11 uses
  %i.q = icmp sgt i32 %i.o, 0
  br i1 %i.q, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZN8ImVectorIcE7reserveEi.exit
  %wide.trip.count = zext nneg i32 %i.o to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.r = icmp ult i32 %i.o, 4
  br i1 %i.r, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod55 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod55)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.s = trunc i64 %indvars.iv.epil to i16
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %indvars.iv.epil ; 2 uses
  store i16 %i.s, ptr %i.t, align 8, !tbaa !477
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %0, ptr %i.u, align 8, !tbaa !479
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !480

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %_ZN8ImVectorIcE7reserveEi.exit
  %i.v = icmp ugt i32 %i.o, 1
  br i1 %i.v, label %bb.e, label %_Z7ImQsortPvmmPFiPKvS1_E.exit

bb.e:                                             ; preds = %._crit_edge
  %i.w = sext i32 %i.o to i64
  tail call void @qsort(ptr noundef %i.p, i64 noundef %i.w, i64 noundef 16, ptr noundef nonnull @_ZL28TableFixDisplayOrderComparerPKvS0_)
  %.pre50 = load i32, ptr %i.c, align 4, !tbaa !222
  br label %_Z7ImQsortPvmmPFiPKvS1_E.exit

_Z7ImQsortPvmmPFiPKvS1_E.exit:                    ; preds = %._crit_edge, %bb.e
  %i.x = phi i32 [ %i.o, %._crit_edge ], [ %.pre50, %bb.e ] ; 4 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph33, label %._crit_edge37

.lr.ph33:                                         ; preds = %_Z7ImQsortPvmmPFiPKvS1_E.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !291 ; 5 uses
  %wide.trip.count42 = zext nneg i32 %i.x to i64  ; 4 uses
  %xtraiter56 = and i64 %wide.trip.count42, 3     ; 3 uses
  %i.ab = icmp ult i32 %i.x, 4
  br i1 %i.ab, label %.epil.preheader, label %.lr.ph33.new

.lr.ph33.new:                                     ; preds = %.lr.ph33
  %unroll_iter60 = and i64 %wide.trip.count42, 2147483644
  br label %bb.g

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.ac = trunc i64 %indvars.iv to i16
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %indvars.iv ; 2 uses
  store i16 %i.ac, ptr %i.ad, align 8, !tbaa !477
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %0, ptr %i.ae, align 8, !tbaa !479
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.af = trunc i64 %indvars.iv.next to i16
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %indvars.iv.next ; 2 uses
  store i16 %i.af, ptr %i.ag, align 8, !tbaa !477
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %0, ptr %i.ah, align 8, !tbaa !479
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.ai = trunc i64 %indvars.iv.next.1 to i16
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %indvars.iv.next.1 ; 2 uses
  store i16 %i.ai, ptr %i.aj, align 8, !tbaa !477
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %0, ptr %i.ak, align 8, !tbaa !479
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.al = trunc i64 %indvars.iv.next.2 to i16
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %indvars.iv.next.2 ; 2 uses
  store i16 %i.al, ptr %i.am, align 8, !tbaa !477
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %0, ptr %i.an, align 8, !tbaa !479
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !481

.lr.ph36.unr-lcssa:                               ; preds = %bb.g
  %lcmp.mod58.not = icmp eq i64 %xtraiter56, 0
  br i1 %lcmp.mod58.not, label %.lr.ph36, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph36.unr-lcssa, %.lr.ph33
  %indvars.iv39.epil.init = phi i64 [ 0, %.lr.ph33 ], [ %indvars.iv.next40.3, %.lr.ph36.unr-lcssa ]
  %lcmp.mod59 = icmp ne i64 %xtraiter56, 0
  tail call void @llvm.assume(i1 %lcmp.mod59)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %indvars.iv39.epil = phi i64 [ %indvars.iv39.epil.init, %.epil.preheader ], [ %indvars.iv.next40.epil, %bb.f ] ; 3 uses
  %epil.iter57 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter57.next, %bb.f ]
  %i.ao = trunc i64 %indvars.iv39.epil to i16
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %indvars.iv39.epil
  %i.aq = load i16, ptr %i.ap, align 8, !tbaa !477
  %i.ar = sext i16 %i.aq to i64
  %i.as = getelementptr inbounds [120 x i8], ptr %i.aa, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 90
  store i16 %i.ao, ptr %i.at, align 2, !tbaa !327
  %indvars.iv.next40.epil = add nuw nsw i64 %indvars.iv39.epil, 1
  %epil.iter57.next = add i64 %epil.iter57, 1     ; 2 uses
  %epil.iter57.cmp.not = icmp eq i64 %epil.iter57.next, %xtraiter56
  br i1 %epil.iter57.cmp.not, label %.lr.ph36, label %bb.f, !llvm.loop !482

.lr.ph36:                                         ; preds = %bb.f, %.lr.ph36.unr-lcssa
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !291 ; 5 uses
  %i.ax = load ptr, ptr %i.au, align 8, !tbaa !297 ; 5 uses
  %xtraiter63 = and i64 %wide.trip.count42, 3     ; 3 uses
  %i.ay = icmp ult i32 %i.x, 4
  br i1 %i.ay, label %.epil.preheader62, label %.lr.ph36.new

.lr.ph36.new:                                     ; preds = %.lr.ph36
  %unroll_iter67 = and i64 %wide.trip.count42, 2147483644
  br label %bb.i

bb.g:                                             ; preds = %bb.g, %.lr.ph33.new
  %indvars.iv39 = phi i64 [ 0, %.lr.ph33.new ], [ %indvars.iv.next40.3, %bb.g ] ; 6 uses
  %niter61 = phi i64 [ 0, %.lr.ph33.new ], [ %niter61.next.3, %bb.g ]
  %i.az = trunc i64 %indvars.iv39 to i16
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %indvars.iv39
  %i.bb = load i16, ptr %i.ba, align 8, !tbaa !477
  %i.bc = sext i16 %i.bb to i64
  %i.bd = getelementptr inbounds [120 x i8], ptr %i.aa, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 90
  store i16 %i.az, ptr %i.be, align 2, !tbaa !327
  %indvars.iv.next40 = or disjoint i64 %indvars.iv39, 1 ; 2 uses
  %i.bf = trunc i64 %indvars.iv.next40 to i16
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %indvars.iv.next40
  %i.bh = load i16, ptr %i.bg, align 8, !tbaa !477
  %i.bi = sext i16 %i.bh to i64
  %i.bj = getelementptr inbounds [120 x i8], ptr %i.aa, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 90
  store i16 %i.bf, ptr %i.bk, align 2, !tbaa !327
  %indvars.iv.next40.1 = or disjoint i64 %indvars.iv39, 2 ; 2 uses
  %i.bl = trunc i64 %indvars.iv.next40.1 to i16
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %indvars.iv.next40.1
  %i.bn = load i16, ptr %i.bm, align 8, !tbaa !477
  %i.bo = sext i16 %i.bn to i64
  %i.bp = getelementptr inbounds [120 x i8], ptr %i.aa, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 90
  store i16 %i.bl, ptr %i.bq, align 2, !tbaa !327
  %indvars.iv.next40.2 = or disjoint i64 %indvars.iv39, 3 ; 2 uses
  %i.br = trunc i64 %indvars.iv.next40.2 to i16
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %indvars.iv.next40.2
  %i.bt = load i16, ptr %i.bs, align 8, !tbaa !477
  %i.bu = sext i16 %i.bt to i64
  %i.bv = getelementptr inbounds [120 x i8], ptr %i.aa, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 90
  store i16 %i.br, ptr %i.bw, align 2, !tbaa !327
  %indvars.iv.next40.3 = add nuw nsw i64 %indvars.iv39, 4 ; 2 uses
  %niter61.next.3 = add i64 %niter61, 4           ; 2 uses
  %niter61.ncmp.3 = icmp eq i64 %niter61.next.3, %unroll_iter60
  br i1 %niter61.ncmp.3, label %.lr.ph36.unr-lcssa, label %bb.g, !llvm.loop !483

._crit_edge37.loopexit.unr-lcssa:                 ; preds = %bb.i
  %lcmp.mod65.not = icmp eq i64 %xtraiter63, 0
  br i1 %lcmp.mod65.not, label %._crit_edge37, label %.epil.preheader62

.epil.preheader62:                                ; preds = %._crit_edge37.loopexit.unr-lcssa, %.lr.ph36
  %indvars.iv44.epil.init = phi i64 [ 0, %.lr.ph36 ], [ %indvars.iv.next45.3, %._crit_edge37.loopexit.unr-lcssa ]
  %lcmp.mod66 = icmp ne i64 %xtraiter63, 0
  tail call void @llvm.assume(i1 %lcmp.mod66)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader62
  %indvars.iv44.epil = phi i64 [ %indvars.iv44.epil.init, %.epil.preheader62 ], [ %indvars.iv.next45.epil, %bb.h ] ; 3 uses
  %epil.iter64 = phi i64 [ 0, %.epil.preheader62 ], [ %epil.iter64.next, %bb.h ]
  %i.bx = trunc i64 %indvars.iv44.epil to i16
  %i.by = getelementptr inbounds nuw [120 x i8], ptr %i.aw, i64 %indvars.iv44.epil
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 90
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !327
  %i.cb = sext i16 %i.ca to i64
  %i.cc = getelementptr inbounds [2 x i8], ptr %i.ax, i64 %i.cb
  store i16 %i.bx, ptr %i.cc, align 2, !tbaa !324
  %indvars.iv.next45.epil = add nuw nsw i64 %indvars.iv44.epil, 1
  %epil.iter64.next = add i64 %epil.iter64, 1     ; 2 uses
  %epil.iter64.cmp.not = icmp eq i64 %epil.iter64.next, %xtraiter63
  br i1 %epil.iter64.cmp.not, label %._crit_edge37, label %bb.h, !llvm.loop !484

._crit_edge37:                                    ; preds = %._crit_edge37.loopexit.unr-lcssa, %bb.h, %_Z7ImQsortPvmmPFiPKvS1_E.exit
  ret void

bb.i:                                             ; preds = %bb.i, %.lr.ph36.new
  %indvars.iv44 = phi i64 [ 0, %.lr.ph36.new ], [ %indvars.iv.next45.3, %bb.i ] ; 6 uses
  %niter68 = phi i64 [ 0, %.lr.ph36.new ], [ %niter68.next.3, %bb.i ]
  %i.cd = trunc i64 %indvars.iv44 to i16
  %i.ce = getelementptr inbounds nuw [120 x i8], ptr %i.aw, i64 %indvars.iv44
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 90
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !327
  %i.ch = sext i16 %i.cg to i64
  %i.ci = getelementptr inbounds [2 x i8], ptr %i.ax, i64 %i.ch
  store i16 %i.cd, ptr %i.ci, align 2, !tbaa !324
  %indvars.iv.next45 = or disjoint i64 %indvars.iv44, 1 ; 2 uses
  %i.cj = trunc i64 %indvars.iv.next45 to i16
  %i.ck = getelementptr inbounds nuw [120 x i8], ptr %i.aw, i64 %indvars.iv.next45
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 90
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !327
  %i.cn = sext i16 %i.cm to i64
  %i.co = getelementptr inbounds [2 x i8], ptr %i.ax, i64 %i.cn
  store i16 %i.cj, ptr %i.co, align 2, !tbaa !324
  %indvars.iv.next45.1 = or disjoint i64 %indvars.iv44, 2 ; 2 uses
  %i.cp = trunc i64 %indvars.iv.next45.1 to i16
  %i.cq = getelementptr inbounds nuw [120 x i8], ptr %i.aw, i64 %indvars.iv.next45.1
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 90
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !327
  %i.ct = sext i16 %i.cs to i64
  %i.cu = getelementptr inbounds [2 x i8], ptr %i.ax, i64 %i.ct
  store i16 %i.cp, ptr %i.cu, align 2, !tbaa !324
  %indvars.iv.next45.2 = or disjoint i64 %indvars.iv44, 3 ; 2 uses
  %i.cv = trunc i64 %indvars.iv.next45.2 to i16
  %i.cw = getelementptr inbounds nuw [120 x i8], ptr %i.aw, i64 %indvars.iv.next45.2
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 90
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !327
  %i.cz = sext i16 %i.cy to i64
  %i.da = getelementptr inbounds [2 x i8], ptr %i.ax, i64 %i.cz
  store i16 %i.cv, ptr %i.da, align 2, !tbaa !324
  %indvars.iv.next45.3 = add nuw nsw i64 %indvars.iv44, 4 ; 2 uses
  %niter68.next.3 = add i64 %niter68, 4           ; 2 uses
  %niter68.ncmp.3 = icmp eq i64 %niter68.next.3, %unroll_iter67
  br i1 %niter68.ncmp.3, label %._crit_edge37.loopexit.unr-lcssa, label %bb.i, !llvm.loop !485
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL21TableSetupColumnFlagsP10ImGuiTableP16ImGuiTableColumni(ptr nofree noundef captures(none) %0, ptr noundef nonnull %1, i32 noundef %2) unnamed_addr #10 {
bb.a:
  %i.a = and i32 %2, 24
  %i.b = icmp eq i32 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !218  ; 2 uses
  br i1 %i.b, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.e = trunc i32 %i.d to i16
  %trunc = and i16 %i.e, -8192
  switch i16 %trunc, label %bb.d [
    i16 16384, label %bb.c
    i16 8192, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.f = or disjoint i32 %2, 16
  br label %._crit_edge

bb.d:                                             ; preds = %bb.b
  %i.g = or disjoint i32 %2, 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.c, %bb.d
  %.171 = phi i32 [ %i.g, %bb.d ], [ %i.f, %bb.c ], [ %2, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = shl i32 %i.d, 5
  %i.j = and i32 %i.i, 32
  %i.k = xor i32 %i.j, 32
  %spec.select = or i32 %i.k, %.171               ; 2 uses
  %i.l = and i32 %.171, 3072
  %or.cond.not = icmp eq i32 %i.l, 3072
  %i.m = or i32 %spec.select, 512
  %.373 = select i1 %or.cond.not, i32 %i.m, i32 %spec.select ; 3 uses
  %i.n = and i32 %.373, 196608
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !291
  %i.r = ptrtoint ptr %1 to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = sdiv exact i64 %i.t, 120
  %i.v = and i64 %i.u, 4294967295
  %i.w = icmp eq i64 %i.v, 0
  %i.x = select i1 %i.w, i32 65536, i32 131072
  %i.y = or disjoint i32 %i.x, %.373
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %.474 = phi i32 [ %i.y, %bb.e ], [ %.373, %._crit_edge ] ; 3 uses
  %i.z = load i32, ptr %1, align 4, !tbaa !362
  %i.aa = and i32 %i.z, 251658240
  %i.ab = or i32 %i.aa, %.474
  store i32 %i.ab, ptr %1, align 4, !tbaa !362
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 117 ; 2 uses
  store i8 0, ptr %i.ac, align 1, !tbaa !486
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 115 ; 4 uses
  %i.ae = load i16, ptr %i.ad, align 1            ; 2 uses
  %i.af = and i16 %i.ae, 1023                     ; 2 uses
  store i16 %i.af, ptr %i.ad, align 1
  %i.ag = load i32, ptr %i.h, align 4, !tbaa !218 ; 2 uses
  %i.ah = and i32 %i.ag, 8
  %.not76 = icmp eq i32 %i.ah, 0
  br i1 %.not76, label %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = and i32 %.474, 17408                    ; 2 uses
  %or.cond80 = icmp eq i32 %i.ai, 16384           ; 4 uses
  %.061 = select i1 %or.cond80, i8 2, i8 0        ; 2 uses
  %.0 = zext i1 %or.cond80 to i32                 ; 2 uses
  %i.aj = and i32 %.474, 34816                    ; 2 uses
  %or.cond82 = icmp eq i32 %i.aj, 32768           ; 3 uses
  %i.ak = or disjoint i8 %.061, 4
  %i.al = select i1 %or.cond80, i32 9, i32 2
  %i.am = select i1 %or.cond80, i32 2, i32 1
  %.166 = select i1 %or.cond82, i32 %i.am, i32 %.0 ; 3 uses
  %.162 = select i1 %or.cond82, i8 %i.ak, i8 %.061 ; 2 uses
  %.1 = select i1 %or.cond82, i32 %i.al, i32 %.0  ; 2 uses
  %or.cond84 = icmp eq i32 %i.ai, 0
  br i1 %or.cond84, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.an = or i8 %.162, 2
  %i.ao = shl nuw nsw i32 %.166, 1
  %i.ap = shl nuw nsw i32 1, %i.ao
  %i.aq = or i32 %i.ap, %.1
  %i.ar = add nuw nsw i32 %.166, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.267 = phi i32 [ %i.ar, %bb.h ], [ %.166, %bb.g ] ; 3 uses
  %.263 = phi i8 [ %i.an, %bb.h ], [ %.162, %bb.g ] ; 2 uses
  %.2 = phi i32 [ %i.aq, %bb.h ], [ %.1, %bb.g ]  ; 2 uses
  %or.cond86 = icmp eq i32 %i.aj, 0
  br i1 %or.cond86, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.as = or i8 %.263, 4
  %i.at = shl nuw nsw i32 %.267, 1
  %i.au = shl nuw nsw i32 2, %i.at
  %i.av = or i32 %.2, %i.au
  %i.aw = add nuw nsw i32 %.267, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.368 = phi i32 [ %i.aw, %bb.j ], [ %.267, %bb.i ] ; 2 uses
  %.364 = phi i8 [ %i.as, %bb.j ], [ %.263, %bb.i ]
  %.3 = phi i32 [ %i.av, %bb.j ], [ %.2, %bb.i ]
  %i.ax = and i32 %i.ag, 134217728
  %i.ay = icmp ne i32 %i.ax, 0
  %i.az = icmp eq i32 %.368, 0
  %or.cond3 = select i1 %i.ay, i1 true, i1 %i.az  ; 2 uses
  %i.ba = zext i1 %or.cond3 to i32
  %.469 = add nuw nsw i32 %.368, %i.ba
  %i.bb = zext i1 %or.cond3 to i8
  %.4 = or i8 %.364, %i.bb                        ; 2 uses
  %i.bc = trunc nuw i32 %.3 to i8                 ; 2 uses
  store i8 %i.bc, ptr %i.ac, align 1, !tbaa !486
  %i.bd = zext nneg i8 %.4 to i16
  %i.be = shl nuw nsw i16 %i.bd, 12
  %i.bf = trunc nuw nsw i32 %.469 to i16
  %i.bg = shl nuw nsw i16 %i.bf, 10
  %i.bh = and i16 %i.bg, 3072
  %i.bi = or disjoint i16 %i.bh, %i.be
  %i.bj = or disjoint i16 %i.bi, %i.af            ; 2 uses
  store i16 %i.bj, ptr %i.ad, align 1
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 98
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !378
  %i.bm = icmp eq i16 %i.bl, -1
  br i1 %i.bm, label %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bn = zext nneg i8 %.4 to i32
  %i.bo = lshr i16 %i.ae, 8
  %i.bp = and i16 %i.bo, 3
  %i.bq = zext nneg i16 %i.bp to i32
  %i.br = shl nuw nsw i32 1, %i.bq
  %i.bs = and i32 %i.br, %i.bn
  %.not.i = icmp eq i32 %i.bs, 0
  br i1 %.not.i, label %bb.m, label %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit

bb.m:                                             ; preds = %bb.l
  %i.bt = and i8 %i.bc, 3
  %i.bu = zext nneg i8 %i.bt to i16
  %i.bv = shl nuw nsw i16 %i.bu, 8
  %i.bw = and i16 %i.bj, 31999
  %i.bx = or disjoint i16 %i.bw, %i.bv
  store i16 %i.bx, ptr %i.ad, align 1
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 573
  store i8 1, ptr %i.by, align 1, !tbaa !310
  br label %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit

_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit: ; preds = %bb.m, %bb.l, %bb.k, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef float @_ZN5ImGui23TableGetColumnWidthAutoEP10ImGuiTableP16ImGuiTableColumn(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load float, ptr %i.a, align 4, !tbaa !391 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.d = load float, ptr %i.c, align 4, !tbaa !392 ; 2 uses
  %i.e = fcmp oge float %i.b, %i.d
  %i.f = select i1 %i.e, float %i.b, float %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.h = load float, ptr %i.g, align 4, !tbaa !393 ; 2 uses
  %i.i = fsub float %i.f, %i.h                    ; 3 uses
  %i.j = load i32, ptr %1, align 4, !tbaa !362    ; 3 uses
  %i.k = and i32 %i.j, 8192
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.m = load float, ptr %i.l, align 4, !tbaa !394
  %i.n = fsub float %i.m, %i.h                    ; 2 uses
  %i.o = fcmp oge float %i.i, %i.n
  %i.p = select i1 %i.o, float %i.i, float %i.n
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi float [ %i.i, %bb.a ], [ %i.p, %bb.b ] ; 3 uses
  %i.q = and i32 %i.j, 16
  %.not16 = icmp eq i32 %i.q, 0
  br i1 %.not16, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = load float, ptr %i.r, align 4, !tbaa !377 ; 2 uses
  %i.t = fcmp ogt float %i.s, 0.000000e+00
end_hunk_1
begin_hunk_2_@_ZN5ImGui11TableEndRowEP10ImGuiTable:bb.a
  %i.fv = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  br label %bb.an

bb.an:                                            ; preds = %.lr.ph, %bb.ap
  %.0161201 = phi ptr [ %i.fm, %.lr.ph ], [ %i.hk, %bb.ap ] ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.0161201, i64 4
  %i.fx = load i16, ptr %i.fw, align 4, !tbaa !554
  %i.fy = load ptr, ptr %i.fp, align 8, !tbaa !291
  %i.fz = sext i16 %i.fx to i64
  %i.ga = getelementptr inbounds [120 x i8], ptr %i.fy, i64 %i.fz ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #4
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !423 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 12 ; 2 uses
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !422 ; 2 uses
  %i.gf = load float, ptr %i.fq, align 8, !tbaa !432 ; 2 uses
  %i.gg = fcmp oge float %i.gc, %i.gf
  %i.gh = select i1 %i.gg, float %i.gc, float %i.gf
  %i.gi = load float, ptr %i.fr, align 8, !tbaa !426 ; 2 uses
  %i.gj = fcmp olt float %i.ge, %i.gi
  %i.gk = select i1 %i.gj, float %i.ge, float %i.gi
  %i.gl = load float, ptr %i.bb, align 4, !tbaa !268
  %i.gm = load float, ptr %i.ay, align 8, !tbaa !267
  %i.gn = load <2 x float>, ptr %i.ft, align 8, !tbaa !168 ; 2 uses
  %i.go = insertelement <2 x float> poison, float %i.gh, i64 0
  %i.gp = insertelement <2 x float> %i.go, float %i.gl, i64 1 ; 2 uses
  %i.gq = fcmp ole <2 x float> %i.gn, %i.gp
  %i.gr = select <2 x i1> %i.gq, <2 x float> %i.gp, <2 x float> %i.gn ; 3 uses
  store <2 x float> %i.gr, ptr %2, align 8
  %i.gs = load <2 x float>, ptr %i.fu, align 8, !tbaa !168 ; 2 uses
  %i.gt = insertelement <2 x float> poison, float %i.gk, i64 0
  %i.gu = insertelement <2 x float> %i.gt, float %i.gm, i64 1 ; 2 uses
  %i.gv = fcmp ogt <2 x float> %i.gs, %i.gu
  %i.gw = select <2 x i1> %i.gv, <2 x float> %i.gu, <2 x float> %i.gs ; 3 uses
  store <2 x float> %i.gw, ptr %i.fs, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ga, i64 36
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !556 ; 2 uses
  %i.gz = extractelement <2 x float> %i.gr, i64 0 ; 2 uses
  %i.ha = fcmp ole float %i.gy, %i.gz
  %i.hb = select i1 %i.ha, float %i.gz, float %i.gy
  store float %i.hb, ptr %2, align 8, !tbaa !405
  %i.hc = load float, ptr %i.gd, align 4, !tbaa !422 ; 2 uses
  %i.hd = extractelement <2 x float> %i.gw, i64 0 ; 2 uses
  %i.he = fcmp ogt float %i.hc, %i.hd
  %i.hf = select i1 %i.he, float %i.hd, float %i.hc
  store float %i.hf, ptr %i.fs, align 8, !tbaa !404
  %i.hg = fcmp olt <2 x float> %i.gr, %i.gw
  %i.hh = extractelement <2 x i1> %i.hg, i64 1
  br i1 %i.hh, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.hi = load ptr, ptr %i.fv, align 8, !tbaa !456
  %i.hj = load i32, ptr %.0161201, align 4, !tbaa !557
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.hi, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %i.fs, i32 noundef %i.hj, float noundef 0.000000e+00, i32 noundef 0)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #4
  %i.hk = getelementptr inbounds nuw i8, ptr %.0161201, i64 8 ; 2 uses
  %.not181 = icmp ugt ptr %i.hk, %i.fo
  br i1 %.not181, label %.loopexit, label %bb.an, !llvm.loop !558

.loopexit:                                        ; preds = %bb.ap, %bb.am, %bb.al
  %.not182 = icmp eq i32 %.0162, 0
  br i1 %.not182, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %.loopexit
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !559
  %i.hn = fcmp ult float %i.bc, %i.hm
  br i1 %i.hn, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !560
  %i.hq = fcmp olt float %i.bc, %i.hp
  br i1 %i.hq, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.hr = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !456
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !437
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.hw = load float, ptr %i.hv, align 8, !tbaa !438
  call void @_ZN10ImDrawList8AddLineHEfffjf(ptr noundef nonnull align 8 dereferenceable(224) %i.hs, float noundef %i.hu, float noundef %i.hw, float noundef %i.bc, i32 noundef %.0162, float noundef 1.000000e+00)
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq, %.loopexit
  br i1 %i.bj, label %bb.au, label %.critedge

bb.au:                                            ; preds = %bb.at
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !559
  %i.hz = fcmp ult float %i.az, %i.hy
  br i1 %i.hz, label %.critedge, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !560
  %i.ic = fcmp olt float %i.az, %i.ib
  br i1 %i.ic, label %bb.aw, label %.critedge

bb.aw:                                            ; preds = %bb.av
  %i.id = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !456
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.ig = load float, ptr %i.if, align 4, !tbaa !437
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ii = load float, ptr %i.ih, align 8, !tbaa !438
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !275
  call void @_ZN10ImDrawList8AddLineHEfffjf(ptr noundef nonnull align 8 dereferenceable(224) %i.ie, float noundef %i.ig, float noundef %i.ii, float noundef %i.az, i32 noundef %i.ik, float noundef 1.000000e+00)
  br label %.critedge

.critedge:                                        ; preds = %bb.o, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.p
  br i1 %i.bn, label %.preheader, label %bb.bc

.preheader:                                       ; preds = %.critedge
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.im = load i32, ptr %i.il, align 4, !tbaa !222 ; 5 uses
  %i.in = icmp sgt i32 %i.im, 0                   ; 2 uses
  br i1 %i.in, label %.lr.ph203, label %._crit_edge

.lr.ph203:                                        ; preds = %.preheader
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.ip = load i8, ptr %i.io, align 8, !tbaa !226 ; 9 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !291 ; 9 uses
  %wide.trip.count = zext nneg i32 %i.im to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.is = icmp ult i32 %i.im, 8
  br i1 %i.is, label %.epil.preheader, label %.lr.ph203.new

.lr.ph203.new:                                    ; preds = %.lr.ph203
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %bb.ay

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.ay
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph203
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph203 ], [ %indvars.iv.next.7, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod226 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod226)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.ax ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ax ]
  %i.it = getelementptr inbounds nuw [120 x i8], ptr %i.ir, i64 %indvars.iv.epil
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 114
  store i8 %i.ip, ptr %i.iu, align 2, !tbaa !420
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.ax, !llvm.loop !561

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.ax, %.preheader
  %i.iv = load float, ptr %i.ay, align 8, !tbaa !267 ; 3 uses
  %i.iw = fadd float %i.iv, 1.000000e+00          ; 2 uses
  %i.ix = load float, ptr %i.cg, align 4, !tbaa !551 ; 2 uses
  %i.iy = fcmp oge float %i.iw, %i.ix
  %i.iz = select i1 %i.iy, float %i.iw, float %i.ix ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !414 ; 2 uses
  %i.jc = fsub float %i.iz, %i.jb
  %i.jd = getelementptr inbounds nuw i8, ptr %.0.i, i64 12
  store float %i.jc, ptr %i.jd, align 4, !tbaa !450
  br i1 %i.bj, label %bb.az, label %bb.bc

bb.ay:                                            ; preds = %bb.ay, %.lr.ph203.new
  %indvars.iv = phi i64 [ 0, %.lr.ph203.new ], [ %indvars.iv.next.7, %bb.ay ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph203.new ], [ %niter.next.7, %bb.ay ]
  %i.je = getelementptr inbounds nuw [120 x i8], ptr %i.ir, i64 %indvars.iv
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 114
  store i8 %i.ip, ptr %i.jf, align 2, !tbaa !420
  %i.jg = getelementptr inbounds nuw [120 x i8], ptr %i.ir, i64 %indvars.iv
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 234
  store i8 %i.ip, ptr %i.jh, align 2, !tbaa !420
  %i.ji = getelementptr inbounds nuw [120 x i8], ptr %i.ir, i64 %indvars.iv
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 354
  store i8 %i.ip, ptr %i.jj, align 2, !tbaa !420
  %i.jk = getelementptr inbounds nuw [120 x i8], ptr %i.ir, i64 %indvars.iv
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 474
  store i8 %i.ip, ptr %i.jl, align 2, !tbaa !420
  %i.jm = getelementptr inbounds nuw [120 x i8], ptr %i.ir, i64 %indvars.iv
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 594
  store i8 %i.ip, ptr %i.jn, align 2, !tbaa !420
  %i.jo = getelementptr inbounds nuw [120 x i8], ptr %i.ir, i64 %indvars.iv
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 714
  store i8 %i.ip, ptr %i.jp, align 2, !tbaa !420
  %i.jq = getelementptr inbounds nuw [120 x i8], ptr %i.ir, i64 %indvars.iv
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 834
  store i8 %i.ip, ptr %i.jr, align 2, !tbaa !420
  %i.js = getelementptr inbounds nuw [120 x i8], ptr %i.ir, i64 %indvars.iv
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 954
  store i8 %i.ip, ptr %i.jt, align 2, !tbaa !420
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %bb.ay, !llvm.loop !562

bb.az:                                            ; preds = %._crit_edge
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 584
  store i8 1, ptr %i.ju, align 8, !tbaa !269
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !266 ; 4 uses
  %i.jx = fcmp olt float %i.iz, %i.jw
  %i.jy = select i1 %i.jx, float %i.iz, float %i.jw ; 7 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 340
  store float %i.jy, ptr %i.jz, align 4, !tbaa !563
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 308
  store float %i.jy, ptr %i.ka, align 4, !tbaa !559
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 348
  store float %i.jw, ptr %i.kb, align 4, !tbaa !564
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 316
  store float %i.jw, ptr %i.kc, align 4, !tbaa !560
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 566
  %i.ke = load i16, ptr %i.kd, align 2, !tbaa !489
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 564
  store i16 %i.ke, ptr %i.kf, align 4, !tbaa !488
  %i.kg = load float, ptr %i.bb, align 4, !tbaa !268
  %i.kh = fsub float %i.iv, %i.kg
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.kj = load float, ptr %i.ki, align 4, !tbaa !454
  %i.kk = fadd float %i.iv, %i.kj
  %i.kl = fsub float %i.kk, %i.jb                 ; 3 uses
  store float %i.kl, ptr %i.ba, align 4, !tbaa !503
  store float %i.kl, ptr %i.ay, align 8, !tbaa !267
  %i.km = fsub float %i.kl, %i.kh
  store float %i.km, ptr %i.bb, align 4, !tbaa !268
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !291 ; 6 uses
  br i1 %i.in, label %.lr.ph206, label %._crit_edge207

.lr.ph206:                                        ; preds = %bb.az
  %wide.trip.count212 = zext nneg i32 %i.im to i64 ; 2 uses
  %xtraiter228 = and i64 %wide.trip.count212, 3   ; 3 uses
  %i.kp = icmp ult i32 %i.im, 4
  br i1 %i.kp, label %.epil.preheader227, label %.lr.ph206.new

.lr.ph206.new:                                    ; preds = %.lr.ph206
  %unroll_iter232 = and i64 %wide.trip.count212, 2147483644
  br label %bb.bb

._crit_edge207.loopexit.unr-lcssa:                ; preds = %bb.bb
  %lcmp.mod230.not = icmp eq i64 %xtraiter228, 0
  br i1 %lcmp.mod230.not, label %._crit_edge207, label %.epil.preheader227

.epil.preheader227:                               ; preds = %._crit_edge207.loopexit.unr-lcssa, %.lr.ph206
  %indvars.iv209.epil.init = phi i64 [ 0, %.lr.ph206 ], [ %indvars.iv.next210.3, %._crit_edge207.loopexit.unr-lcssa ]
  %lcmp.mod231 = icmp ne i64 %xtraiter228, 0
  call void @llvm.assume(i1 %lcmp.mod231)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ba, %.epil.preheader227
  %indvars.iv209.epil = phi i64 [ %indvars.iv209.epil.init, %.epil.preheader227 ], [ %indvars.iv.next210.epil, %bb.ba ] ; 2 uses
  %epil.iter229 = phi i64 [ 0, %.epil.preheader227 ], [ %epil.iter229.next, %bb.ba ]
  %i.kq = getelementptr inbounds nuw [120 x i8], ptr %i.ko, i64 %indvars.iv209.epil ; 3 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 104
  %i.ks = load i16, ptr %i.kr, align 4, !tbaa !491
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kq, i64 100
  store i16 %i.ks, ptr %i.kt, align 4, !tbaa !492
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kq, i64 40
  store float %i.jy, ptr %i.ku, align 4, !tbaa !565
  %indvars.iv.next210.epil = add nuw nsw i64 %indvars.iv209.epil, 1
  %epil.iter229.next = add i64 %epil.iter229, 1   ; 2 uses
  %epil.iter229.cmp.not = icmp eq i64 %epil.iter229.next, %xtraiter228
  br i1 %epil.iter229.cmp.not, label %._crit_edge207, label %bb.ba, !llvm.loop !566

._crit_edge207:                                   ; preds = %._crit_edge207.loopexit.unr-lcssa, %bb.ba, %bb.az
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ko, i64 36 ; 2 uses
  %i.kx = load <4 x float>, ptr %i.kw, align 4    ; 2 uses
  %.sroa.0.4.vec.insert.i.i199 = shufflevector <4 x float> %i.kx, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.kx, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.c, i64 616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ky, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.kw, i64 16, i1 false), !tbaa.struct !237
  %i.kz = getelementptr inbounds nuw i8, ptr %i.c, i64 712 ; 3 uses
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !456 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 96
  store <2 x float> %.sroa.0.4.vec.insert.i.i199, ptr %i.lb, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.la, i64 104
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.lc = load ptr, ptr %i.kz, align 8, !tbaa !456 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 160
  %i.le = getelementptr inbounds nuw i8, ptr %i.lc, i64 168
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !567
  %i.lg = load i32, ptr %i.ld, align 8, !tbaa !568
  %i.lh = sext i32 %i.lg to i64
  %i.li = getelementptr [16 x i8], ptr %i.lf, i64 %i.lh ; 2 uses
  %i.lj = getelementptr i8, ptr %i.li, i64 -16
  store <2 x float> %.sroa.0.4.vec.insert.i.i199, ptr %i.lj, align 4
  %.sroa.5.0..sroa_idx2.i = getelementptr i8, ptr %i.li, i64 -8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.5.0..sroa_idx2.i, align 4
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !209
  %i.lm = load ptr, ptr %i.kz, align 8, !tbaa !456
  %i.ln = load ptr, ptr %i.kv, align 8, !tbaa !291
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 100
  %i.lp = load i16, ptr %i.lo, align 4, !tbaa !492
  %i.lq = zext i16 %i.lp to i32
  call void @_ZN18ImDrawListSplitter17SetCurrentChannelEP10ImDrawListi(ptr noundef nonnull align 8 dereferenceable(24) %i.ll, ptr noundef %i.lm, i32 noundef %i.lq)
  br label %bb.bc

bb.bb:                                            ; preds = %bb.bb, %.lr.ph206.new
  %indvars.iv209 = phi i64 [ 0, %.lr.ph206.new ], [ %indvars.iv.next210.3, %bb.bb ] ; 5 uses
  %niter233 = phi i64 [ 0, %.lr.ph206.new ], [ %niter233.next.3, %bb.bb ]
  %i.lr = getelementptr inbounds nuw [120 x i8], ptr %i.ko, i64 %indvars.iv209 ; 3 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 104
  %i.lt = load i16, ptr %i.ls, align 4, !tbaa !491
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lr, i64 100
  store i16 %i.lt, ptr %i.lu, align 4, !tbaa !492
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lr, i64 40
  store float %i.jy, ptr %i.lv, align 4, !tbaa !565
  %i.lw = getelementptr inbounds nuw [120 x i8], ptr %i.ko, i64 %indvars.iv209 ; 3 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 224
  %i.ly = load i16, ptr %i.lx, align 4, !tbaa !491
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lw, i64 220
  store i16 %i.ly, ptr %i.lz, align 4, !tbaa !492
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lw, i64 160
  store float %i.jy, ptr %i.ma, align 4, !tbaa !565
  %i.mb = getelementptr inbounds nuw [120 x i8], ptr %i.ko, i64 %indvars.iv209 ; 3 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 344
  %i.md = load i16, ptr %i.mc, align 4, !tbaa !491
  %i.me = getelementptr inbounds nuw i8, ptr %i.mb, i64 340
  store i16 %i.md, ptr %i.me, align 4, !tbaa !492
  %i.mf = getelementptr inbounds nuw i8, ptr %i.mb, i64 280
  store float %i.jy, ptr %i.mf, align 4, !tbaa !565
  %i.mg = getelementptr inbounds nuw [120 x i8], ptr %i.ko, i64 %indvars.iv209 ; 3 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 464
  %i.mi = load i16, ptr %i.mh, align 4, !tbaa !491
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mg, i64 460
  store i16 %i.mi, ptr %i.mj, align 4, !tbaa !492
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mg, i64 400
  store float %i.jy, ptr %i.mk, align 4, !tbaa !565
  %indvars.iv.next210.3 = add nuw nsw i64 %indvars.iv209, 4 ; 2 uses
  %niter233.next.3 = add i64 %niter233, 4         ; 2 uses
  %niter233.ncmp.3 = icmp eq i64 %niter233.next.3, %unroll_iter232
  br i1 %niter233.ncmp.3, label %._crit_edge207.loopexit.unr-lcssa, label %bb.bb, !llvm.loop !569

bb.bc:                                            ; preds = %._crit_edge, %._crit_edge207, %.critedge
  %i.ml = load i32, ptr %i.bx, align 4
  %i.mm = and i32 %i.ml, 1
  %.not183 = icmp eq i32 %i.mm, 0
  br i1 %.not183, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.mo = load i32, ptr %i.mn, align 8, !tbaa !264
  %i.mp = add nsw i32 %i.mo, 1
  store i32 %i.mp, ptr %i.mn, align 8, !tbaa !264
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 570
  store i8 0, ptr %i.mq, align 2, !tbaa !523
  ret void
}

declare noundef zeroext i1 @_ZN5ImGui16IsAnyItemHoveredEv() local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui15IsMouseReleasedEi(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui20TableOpenContextMenuEi(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8984
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !277  ; 8 uses
  %i.d = icmp eq i32 %0, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 116
  %i.f = load i32, ptr %i.e, align 4, !tbaa !262
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %0, %bb.a ], [ %i.f, %bb.b ]    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !218
  %i.i = and i32 %i.h, 7
  %.not15 = icmp eq i32 %i.i, 0
  br i1 %.not15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  %i.k = load i32, ptr %i.j, align 4, !tbaa !222
  %i.l = icmp eq i32 %.0, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 575
  store i8 1, ptr %i.m, align 1, !tbaa !445
  %i.n = trunc i32 %.0 to i16
  %i.o = select i1 %i.l, i16 -1, i16 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 550
  store i16 %i.o, ptr %i.p, align 2, !tbaa !313
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.r = load i16, ptr %i.q, align 8, !tbaa !217
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 122
  store i16 %i.r, ptr %i.s, align 2, !tbaa !312
  %i.t = load i32, ptr %i.c, align 8, !tbaa !219
  %i.u = tail call noundef i32 @_Z9ImHashStrPKcmj(ptr noundef nonnull @.str.17, i64 noundef 0, i32 noundef %i.t)
  %i.v = tail call noundef zeroext i1 @_ZN5ImGui11OpenPopupExEji(i32 noundef %i.u, i32 noundef 0) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #12

declare void @_ZN10ImDrawList11PopClipRectEv(ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui16TableDrawBordersEP10ImGuiTable(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.ImRect, align 4             ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !220
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !221  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 616
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.h = load float, ptr %i.g, align 4, !tbaa !527
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 624
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 628
  %i.k = load float, ptr %i.j, align 4, !tbaa !553
  %i.l = fcmp olt float %i.h, %i.k
  br i1 %i.l, label %bb.b, label %_ZNK6ImRect8OverlapsERKS_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 2 uses
  %i.o = load float, ptr %i.n, align 4, !tbaa !553
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 620
  %i.q = load float, ptr %i.p, align 4, !tbaa !527
  %i.r = fcmp ogt float %i.o, %i.q
  br i1 %i.r, label %bb.c, label %_ZNK6ImRect8OverlapsERKS_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.s = load float, ptr %i.f, align 8, !tbaa !405
  %i.t = load float, ptr %i.i, align 4, !tbaa !404
  %i.u = fcmp olt float %i.s, %i.t
  br i1 %i.u, label %_ZNK6ImRect8OverlapsERKS_.exit, label %_ZNK6ImRect8OverlapsERKS_.exit.thread

_ZNK6ImRect8OverlapsERKS_.exit:                   ; preds = %bb.c
  %i.v = load float, ptr %i.m, align 8, !tbaa !404
  %i.w = load float, ptr %i.e, align 4, !tbaa !405
  %i.x = fcmp ogt float %i.v, %i.w
  br i1 %i.x, label %bb.d, label %_ZNK6ImRect8OverlapsERKS_.exit.thread

bb.d:                                             ; preds = %_ZNK6ImRect8OverlapsERKS_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 712
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !456  ; 10 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !209
  tail call void @_ZN18ImDrawListSplitter17SetCurrentChannelEP10ImDrawListi(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef %i.z, i32 noundef 0)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 328
  tail call void @_ZN10ImDrawList12PushClipRectERK6ImVec2S2_b(ptr noundef nonnull align 8 dereferenceable(224) %i.z, ptr noundef nonnull align 4 dereferenceable(8) %i.ac, ptr noundef nonnull align 4 dereferenceable(8) %i.ad, i1 noundef zeroext false)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.af = load i16, ptr %i.ae, align 8, !tbaa !217 ; 2 uses
  %i.ag = icmp eq i16 %i.af, 0
  br i1 %i.ag, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 424
  br label %_ZN5ImGui20TableGetInstanceDataEP10ImGuiTablei.exit

bb.f:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !229
  %i.ak = sext i16 %i.af to i64
  %i.al = getelementptr [24 x i8], ptr %i.aj, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.al, i64 -24
  br label %_ZN5ImGui20TableGetInstanceDataEP10ImGuiTablei.exit

_ZN5ImGui20TableGetInstanceDataEP10ImGuiTablei.exit: ; preds = %bb.e, %bb.f
  %.0.i = phi ptr [ %i.ah, %bb.e ], [ %i.am, %bb.f ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 260 ; 2 uses
  %i.ao = load float, ptr %i.an, align 4, !tbaa !570 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 554
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !419
  %i.ar = icmp sgt i16 %i.aq, 0                   ; 2 uses
  br i1 %i.ar, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN5ImGui20TableGetInstanceDataEP10ImGuiTablei.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.at = load float, ptr %i.as, align 4, !tbaa !454
  br label %bb.h

bb.h:                                             ; preds = %_ZN5ImGui20TableGetInstanceDataEP10ImGuiTablei.exit, %bb.g
  %i.au = phi float [ %i.at, %bb.g ], [ %i.ao, %_ZN5ImGui20TableGetInstanceDataEP10ImGuiTablei.exit ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.aw = load float, ptr %i.av, align 8, !tbaa !273
  %i.ax = fadd float %i.au, %i.aw                 ; 2 uses
  %i.ay = fcmp oge float %i.ao, %i.ax
  %i.az = select i1 %i.ay, float %i.ao, float %i.ax
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 6 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !218 ; 4 uses
  %i.bc = and i32 %i.bb, 256
  %.not = icmp eq i32 %i.bc, 0
  %i.bd = select i1 %.not, float 0.000000e+00, float 1.000000e+00
  %i.be = fadd float %i.az, %i.bd                 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !525 ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 574
  %i.bi = load i8, ptr %i.bh, align 2, !tbaa !443, !range !166, !noundef !167
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 276
  %.in = select i1 %i.ar, ptr %i.an, ptr %i.bk
  %i.bl = load float, ptr %.in, align 4, !tbaa !168
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !442
  %i.bo = fadd float %i.bl, %i.bn                 ; 2 uses
  %i.bp = fcmp olt float %i.bg, %i.bo
  %i.bq = select i1 %i.bp, float %i.bg, float %i.bo
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.br = phi float [ %i.bq, %bb.i ], [ %i.be, %bb.h ]
  %i.bs = and i32 %i.bb, 512
  %.not109 = icmp eq i32 %i.bs, 0
  br i1 %.not109, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.j
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !222 ; 2 uses
  %i.bv = icmp sgt i32 %i.bu, 0
  br i1 %i.bv, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 72
end_hunk_2
begin_hunk_3_@_ZN5ImGui15TableNextColumnEv:bb.a
  %.pre = load i8, ptr %i.d, align 2, !tbaa !523, !range !166
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bg = phi i8 [ %.pre, %bb.l ], [ %i.e, %bb.k ]
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.n, label %_ZN5ImGui12TableNextRowEif.exit

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN5ImGui11TableEndRowEP10ImGuiTable(ptr noundef nonnull %i.c)
  br label %_ZN5ImGui12TableNextRowEif.exit

_ZN5ImGui12TableNextRowEif.exit:                  ; preds = %bb.m, %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 148 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = shl i32 %i.bj, 16
  store i32 %i.bk, ptr %i.bi, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 3320
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !440
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 136 ; 2 uses
  store float %i.bm, ptr %i.bn, align 8, !tbaa !547
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 132
  store float 0.000000e+00, ptr %i.bo, align 4, !tbaa !612
  tail call void @_ZN5ImGui13TableBeginRowEP10ImGuiTable(ptr noundef nonnull %i.c)
  %i.bp = load float, ptr %i.bn, align 8, !tbaa !547
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 128 ; 2 uses
  %i.br = load float, ptr %i.bq, align 8, !tbaa !267
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.bp, float 2.000000e+00, float %i.br) ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 124
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !268 ; 2 uses
  %i.bv = fadd float %i.bu, 0.000000e+00
  %i.bw = fcmp oge float %i.bs, %i.bu
  %i.bx = select i1 %i.bw, float %i.bs, float %i.bv
  store float %i.bx, ptr %i.bq, align 8, !tbaa !267
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 392
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !220
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 209
  store i8 1, ptr %i.ca, align 1, !tbaa !165
  br label %bb.o

bb.o:                                             ; preds = %bb.d, %_ZN5ImGui12TableEndCellEP10ImGuiTable.exit, %_ZN5ImGui12TableNextRowEif.exit
  %.sink = phi i32 [ 0, %_ZN5ImGui12TableNextRowEif.exit ], [ %i.bc, %_ZN5ImGui12TableEndCellEP10ImGuiTable.exit ], [ 0, %bb.d ]
  tail call void @_ZN5ImGui14TableBeginCellEP10ImGuiTablei(ptr noundef nonnull %i.c, i32 noundef %.sink)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 116
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !262
  %i.ce = load ptr, ptr %i.cb, align 8, !tbaa !291
  %i.cf = sext i32 %i.cd to i64
  %i.cg = getelementptr inbounds [120 x i8], ptr %i.ce, i64 %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 111
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !401, !range !166, !noundef !167
  %i.cj = trunc nuw i8 %i.ci to i1
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %bb.o
  %.0 = phi i1 [ %i.cj, %bb.o ], [ false, %bb.a ]
  ret i1 %.0
}

declare void @_ZN5ImGui51ErrorCheckUsingSetCursorPosToExtendParentBoundariesEv() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui33TableUpdateColumnsWeightFromWidthEP10ImGuiTable(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.b = load i32, ptr %i.a, align 4, !tbaa !222  ; 4 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !291
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 3 uses
  br label %bb.b

.lr.ph32:                                         ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !291  ; 3 uses
  %i.h = extractelement <2 x float> %i.y, i64 0   ; 3 uses
  %i.i = extractelement <2 x float> %i.y, i64 1   ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.j = icmp eq i32 %i.b, 1
  br i1 %i.j, label %.epil.preheader, label %.lr.ph32.new

.lr.ph32.new:                                     ; preds = %.lr.ph32
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.h

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.k = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.y, %bb.e ] ; 3 uses
  %i.l = getelementptr inbounds nuw [120 x i8], ptr %i.e, i64 %indvars.iv ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 106
  %i.n = load i8, ptr %i.m, align 2, !tbaa !333, !range !166, !noundef !167
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.p = load i32, ptr %i.l, align 4, !tbaa !362
  %i.q = and i32 %i.p, 8
  %.not25 = icmp eq i32 %i.q, 0
  br i1 %.not25, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %i.s = load float, ptr %i.r, align 4, !tbaa !370
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.u = load float, ptr %i.t, align 4, !tbaa !366
  %i.v = insertelement <2 x float> poison, float %i.s, i64 0
  %i.w = insertelement <2 x float> %i.v, float %i.u, i64 1
  %i.x = fadd <2 x float> %i.k, %i.w
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %i.y = phi <2 x float> [ %i.x, %bb.d ], [ %i.k, %bb.c ], [ %i.k, %bb.b ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph32, label %bb.b, !llvm.loop !371

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph32
  %indvars.iv34.epil.init = phi i64 [ 0, %.lr.ph32 ], [ %indvars.iv.next35.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod42 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod42)
  %i.z = getelementptr inbounds nuw [120 x i8], ptr %i.g, i64 %indvars.iv34.epil.init ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 106
  %i.ab = load i8, ptr %i.aa, align 2, !tbaa !333, !range !166, !noundef !167
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %.epil.preheader
  %i.ad = load i32, ptr %i.z, align 4, !tbaa !362
  %i.ae = and i32 %i.ad, 8
  %.not.epil = icmp eq i32 %i.ae, 0
  br i1 %.not.epil, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ag = load float, ptr %i.af, align 4, !tbaa !366
  %i.ah = fdiv float %i.ag, %i.i
  %i.ai = fmul float %i.h, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 28
  store float %i.ai, ptr %i.aj, align 4, !tbaa !370
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.g, %bb.f, %.epil.preheader, %bb.a
  ret void

bb.h:                                             ; preds = %bb.n, %.lr.ph32.new
  %indvars.iv34 = phi i64 [ 0, %.lr.ph32.new ], [ %indvars.iv.next35.1, %bb.n ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph32.new ], [ %niter.next.1, %bb.n ]
  %i.ak = getelementptr inbounds nuw [120 x i8], ptr %i.g, i64 %indvars.iv34 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 106
  %i.am = load i8, ptr %i.al, align 2, !tbaa !333, !range !166, !noundef !167
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ao = load i32, ptr %i.ak, align 4, !tbaa !362
  %i.ap = and i32 %i.ao, 8
  %.not = icmp eq i32 %i.ap, 0
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !366
  %i.as = fdiv float %i.ar, %i.i
  %i.at = fmul float %i.h, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 28
  store float %i.at, ptr %i.au, align 4, !tbaa !370
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  %i.av = getelementptr inbounds nuw [120 x i8], ptr %i.g, i64 %indvars.iv34 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 226
  %i.ax = load i8, ptr %i.aw, align 2, !tbaa !333, !range !166, !noundef !167
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 120
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !362
  %i.bb = and i32 %i.ba, 8
  %.not.1 = icmp eq i32 %i.bb, 0
  br i1 %.not.1, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 136
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !366
  %i.be = fdiv float %i.bd, %i.i
  %i.bf = fmul float %i.h, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 148
  store float %i.bf, ptr %i.bg, align 4, !tbaa !370
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %indvars.iv.next35.1 = add nuw nsw i64 %indvars.iv34, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.h, !llvm.loop !372
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui26TableSetColumnWidthAutoAllEP10ImGuiTable(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !222  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %i.e = phi i32 [ %i.b, %.lr.ph ], [ %i.q, %bb.e ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !291
  %i.g = getelementptr inbounds nuw [120 x i8], ptr %i.f, i64 %indvars.iv ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 106
  %i.i = load i8, ptr %i.h, align 2, !tbaa !333, !range !166, !noundef !167
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %i.g, align 4, !tbaa !362
  %i.l = and i32 %i.k, 8
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 115 ; 2 uses
  %i.n = load i16, ptr %i.m, align 1
  %i.o = and i16 %i.n, -256
  %i.p = or disjoint i16 %i.o, 18
  store i16 %i.p, ptr %i.m, align 1
  %.pre = load i32, ptr %i.a, align 4, !tbaa !222
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.q = phi i32 [ %i.e, %bb.c ], [ %.pre, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.r = sext i32 %i.q to i64
  %i.s = icmp slt i64 %indvars.iv.next, %i.r
  br i1 %i.s, label %bb.b, label %._crit_edge, !llvm.loop !499
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui26TablePushBackgroundChannelEv() local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8984
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !277  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 616 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 368
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !237
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 336 ; 2 uses
  %i.i = load <4 x float>, ptr %i.h, align 4      ; 2 uses
  %.sroa.0.4.vec.insert.i.i = shufflevector <4 x float> %i.i, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.i, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !237
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 712 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !456  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.l, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !456  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 160
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 168
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !567
  %i.q = load i32, ptr %i.n, align 8, !tbaa !568
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr [16 x i8], ptr %i.p, i64 %i.r ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 -16
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.t, align 4
  %.sroa.5.0..sroa_idx2.i = getelementptr i8, ptr %i.s, i64 -8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.5.0..sroa_idx2.i, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 416
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !209
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !456
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 564
  %i.y = load i16, ptr %i.x, align 4, !tbaa !488
  %i.z = zext i16 %i.y to i32
  tail call void @_ZN18ImDrawListSplitter17SetCurrentChannelEP10ImDrawListi(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef %i.w, i32 noundef %i.z)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui25TablePopBackgroundChannelEv() local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8984
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !277  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 368 ; 2 uses
  %i.g = load <4 x float>, ptr %i.f, align 4      ; 2 uses
  %.sroa.0.4.vec.insert.i.i = shufflevector <4 x float> %i.g, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.g, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 616
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !237
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 712 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !456  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.k, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !456  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 160
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 168
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !567
  %i.p = load i32, ptr %i.m, align 8, !tbaa !568
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr [16 x i8], ptr %i.o, i64 %i.q ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 -16
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.s, align 4
  %.sroa.5.0..sroa_idx2.i = getelementptr i8, ptr %i.r, i64 -8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.5.0..sroa_idx2.i, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 416
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !209
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !456
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 116
  %i.y = load i32, ptr %i.x, align 4, !tbaa !262
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !291
  %i.aa = sext i32 %i.y to i64
  %i.ab = getelementptr inbounds [120 x i8], ptr %i.z, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 100
  %i.ad = load i16, ptr %i.ac, align 4, !tbaa !492
  %i.ae = zext i16 %i.ad to i32
  tail call void @_ZN18ImDrawListSplitter17SetCurrentChannelEP10ImDrawListi(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef %i.v, i32 noundef %i.ae)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui22TablePushColumnChannelEi(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8984
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !277  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !218
  %i.f = and i32 %i.e, 1048576
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !291
  %i.k = sext i32 %0 to i64
  %i.l = getelementptr inbounds [120 x i8], ptr %i.j, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 36 ; 2 uses
  %i.n = load <4 x float>, ptr %i.m, align 4      ; 2 uses
  %.sroa.0.4.vec.insert.i.i = shufflevector <4 x float> %i.n, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.n, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 616
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !237
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 712 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !456  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.r, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !456  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 160
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 168
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !567
  %i.w = load i32, ptr %i.t, align 8, !tbaa !568
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr [16 x i8], ptr %i.v, i64 %i.x ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 -16
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.z, align 4
  %.sroa.5.0..sroa_idx2.i = getelementptr i8, ptr %i.y, i64 -8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.5.0..sroa_idx2.i, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 416
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !209
  %i.ac = load ptr, ptr %i.p, align 8, !tbaa !456
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 100
  %i.ae = load i16, ptr %i.ad, align 4, !tbaa !492
  %i.af = zext i16 %i.ae to i32
  tail call void @_ZN18ImDrawListSplitter17SetCurrentChannelEP10ImDrawListi(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef %i.ac, i32 noundef %i.af)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui21TablePopColumnChannelEv() local_unnamed_addr #3 {
bb.a:
end_hunk_3
begin_hunk_4_@_ZN5ImGui27TableSetColumnSortDirectionEi18ImGuiSortDirectionb:bb.a
  %i.eq = sext i32 %i.ep to i64
  %i.er = icmp slt i64 %indvars.iv.next51, %i.eq
  br i1 %i.er, label %.lr.ph44.split.us, label %._crit_edge45, !llvm.loop !625

._crit_edge45:                                    ; preds = %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit, %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit.us, %bb.c
  %i.es = getelementptr inbounds nuw i8, ptr %i.c, i64 578
  store i8 1, ptr %i.es, align 2, !tbaa !306
  %i.et = getelementptr inbounds nuw i8, ptr %i.c, i64 573
  store i8 1, ptr %i.et, align 1, !tbaa !310
  ret void

.lr.ph44.split:                                   ; preds = %.lr.ph44, %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit
  %i.eu = phi i32 [ %i.fo, %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit ], [ %i.dr, %.lr.ph44 ] ; 3 uses
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit ], [ 0, %.lr.ph44 ] ; 2 uses
  %i.ev = load ptr, ptr %i.db, align 8, !tbaa !291
  %i.ew = getelementptr inbounds nuw [120 x i8], ptr %i.ev, i64 %indvars.iv47 ; 4 uses
  %i.ex = icmp eq ptr %i.ew, %i.de
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ew, i64 98 ; 2 uses
  br i1 %i.ex, label %bb.f, label %.thread

.thread:                                          ; preds = %.lr.ph44.split
  store i16 -1, ptr %.phi.trans.insert, align 2, !tbaa !378
  br label %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit

bb.f:                                             ; preds = %.lr.ph44.split
  %.pre = load i16, ptr %.phi.trans.insert, align 2, !tbaa !378
  %i.ey = icmp eq i16 %.pre, -1
  br i1 %i.ey, label %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 115 ; 2 uses
  %i.fa = load i16, ptr %i.ez, align 1            ; 3 uses
  %i.fb = lshr i16 %i.fa, 12
  %i.fc = zext nneg i16 %i.fb to i32
  %i.fd = lshr i16 %i.fa, 8
  %i.fe = and i16 %i.fd, 3
  %i.ff = zext nneg i16 %i.fe to i32
  %i.fg = shl nuw nsw i32 1, %i.ff
  %i.fh = and i32 %i.fg, %i.fc
  %.not.i = icmp eq i32 %i.fh, 0
  br i1 %.not.i, label %bb.h, label %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit

bb.h:                                             ; preds = %bb.g
  %i.fi = getelementptr i8, ptr %i.ew, i64 117
  %.val.i = load i8, ptr %i.fi, align 1, !tbaa !486
  %i.fj = and i8 %.val.i, 3
  %i.fk = zext nneg i8 %i.fj to i16
  %i.fl = shl nuw nsw i16 %i.fk, 8
  %i.fm = and i16 %i.fa, -769
  %i.fn = or disjoint i16 %i.fl, %i.fm
  store i16 %i.fn, ptr %i.ez, align 1
  store i8 1, ptr %i.dt, align 1, !tbaa !310
  %.pre53 = load i32, ptr %i.dq, align 4, !tbaa !222
  br label %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit

_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit: ; preds = %.thread, %bb.f, %bb.g, %bb.h
  %i.fo = phi i32 [ %i.eu, %bb.f ], [ %i.eu, %bb.g ], [ %.pre53, %bb.h ], [ %i.eu, %.thread ] ; 2 uses
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1 ; 2 uses
  %i.fp = sext i32 %i.fo to i64
  %i.fq = icmp slt i64 %indvars.iv.next48, %i.fp
  br i1 %i.fq, label %.lr.ph44.split, label %._crit_edge45, !llvm.loop !625
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui22TableSortSpecsSanitizeEP10ImGuiTable(ptr nofree noundef captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.b = load i32, ptr %i.a, align 4, !tbaa !222  ; 7 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.thread87

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !291
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 5 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d
  %i.f = add i64 %.173, 1
  %i.g = zext nneg i32 %.175 to i64
  %i.h = shl nuw i64 1, %i.g
  %i.i = icmp ne i64 %i.h, %i.f
  %i.j = icmp samesign ugt i32 %.175, 1
  br i1 %i.j, label %bb.e, label %bb.f

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.072101 = phi i64 [ 0, %.lr.ph ], [ %.173, %bb.d ]
  %.074100 = phi i32 [ 0, %.lr.ph ], [ %.175, %bb.d ]
  %i.k = getelementptr inbounds nuw [120 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 98 ; 2 uses
  %i.m = load i16, ptr %i.l, align 2, !tbaa !378  ; 2 uses
  %.not81 = icmp eq i16 %i.m, -1
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 106
  %i.o = load i8, ptr %i.n, align 2, !range !166
  %i.p = trunc nuw i8 %i.o to i1
  %or.cond84 = select i1 %.not81, i1 true, i1 %i.p
  br i1 %or.cond84, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i16 -1, ptr %i.l, align 2, !tbaa !378
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = phi i16 [ -1, %bb.c ], [ %i.m, %bb.b ]   ; 2 uses
  %i.r = icmp ne i16 %i.q, -1                     ; 2 uses
  %i.s = sext i16 %i.q to i64
  %i.t = and i64 %i.s, 4294967295
  %i.u = shl nuw i64 1, %i.t
  %i.v = zext i1 %i.r to i32
  %.175 = add nuw nsw i32 %.074100, %i.v          ; 8 uses
  %i.w = select i1 %i.r, i64 %i.u, i64 0
  %.173 = or i64 %i.w, %.072101                   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !626

bb.e:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !218
  %i.z = and i32 %i.y, 67108864
  %.not = icmp eq i32 %i.z, 0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %i.aa = phi i1 [ false, %._crit_edge ], [ %.not, %bb.e ] ; 2 uses
  %or.cond = select i1 %i.i, i1 true, i1 %i.aa
  %i.ab = icmp ne i32 %.175, 0
  %or.cond129 = and i1 %or.cond, %i.ab
  br i1 %or.cond129, label %.preheader95.lr.ph, label %.loopexit

.preheader95.lr.ph:                               ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !291 ; 15 uses
  %wide.trip.count147 = zext nneg i32 %i.b to i64
  br i1 %i.aa, label %.preheader95.us.us.preheader, label %.preheader95.us

.preheader95.us.us.preheader:                     ; preds = %.preheader95.lr.ph
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ae = icmp eq i32 %i.b, 1
  br i1 %i.ae, label %.preheader95.us.us.epil.preheader, label %.preheader95.us.us.preheader.new

.preheader95.us.us.preheader.new:                 ; preds = %.preheader95.us.us.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.preheader95.us.us

.preheader95.us.us:                               ; preds = %bb.m, %.preheader95.us.us.preheader.new
  %indvars.iv144 = phi i64 [ 0, %.preheader95.us.us.preheader.new ], [ %indvars.iv.next145.1, %bb.m ] ; 4 uses
  %.066105.us.us = phi i32 [ -1, %.preheader95.us.us.preheader.new ], [ %.1.us.us.1, %bb.m ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader95.us.us.preheader.new ], [ %niter.next.1, %bb.m ]
  %i.af = getelementptr inbounds nuw [120 x i8], ptr %i.ad, i64 %indvars.iv144
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 98
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !378 ; 2 uses
  %.not80.us.us = icmp eq i16 %i.ah, -1
  br i1 %.not80.us.us, label %.preheader95.us.us.1, label %bb.g

bb.g:                                             ; preds = %.preheader95.us.us
  %i.ai = icmp eq i32 %.066105.us.us, -1
  br i1 %i.ai, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = sext i32 %.066105.us.us to i64
  %i.ak = getelementptr inbounds [120 x i8], ptr %i.ad, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 98
  %i.am = load i16, ptr %i.al, align 2, !tbaa !378
  %i.an = icmp slt i16 %i.ah, %i.am
  br i1 %i.an, label %bb.i, label %.preheader95.us.us.1

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ao = trunc nuw nsw i64 %indvars.iv144 to i32
  br label %.preheader95.us.us.1

.preheader95.us.us.1:                             ; preds = %bb.i, %bb.h, %.preheader95.us.us
  %.1.us.us = phi i32 [ %i.ao, %bb.i ], [ %.066105.us.us, %bb.h ], [ %.066105.us.us, %.preheader95.us.us ] ; 4 uses
  %indvars.iv.next145 = or disjoint i64 %indvars.iv144, 1 ; 2 uses
  %i.ap = getelementptr inbounds nuw [120 x i8], ptr %i.ad, i64 %indvars.iv.next145
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 98
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !378 ; 2 uses
  %.not80.us.us.1 = icmp eq i16 %i.ar, -1
  br i1 %.not80.us.us.1, label %bb.m, label %bb.j

bb.j:                                             ; preds = %.preheader95.us.us.1
  %i.as = icmp eq i32 %.1.us.us, -1
  br i1 %i.as, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = sext i32 %.1.us.us to i64
  %i.au = getelementptr inbounds [120 x i8], ptr %i.ad, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 98
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !378
  %i.ax = icmp slt i16 %i.ar, %i.aw
  br i1 %i.ax, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ay = trunc nuw nsw i64 %indvars.iv.next145 to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %.preheader95.us.us.1
  %.1.us.us.1 = phi i32 [ %i.ay, %bb.l ], [ %.1.us.us, %bb.k ], [ %.1.us.us, %.preheader95.us.us.1 ] ; 3 uses
  %indvars.iv.next145.1 = add nuw nsw i64 %indvars.iv144, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.unr-lcssa, label %.preheader95.us.us, !llvm.loop !627

.preheader95.us:                                  ; preds = %.preheader95.lr.ph, %._crit_edge108.us
  %.067111.us = phi i32 [ %i.bt, %._crit_edge108.us ], [ 0, %.preheader95.lr.ph ] ; 2 uses
  %.068110.us = phi i64 [ %i.bo, %._crit_edge108.us ], [ 0, %.preheader95.lr.ph ] ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %.preheader95.us, %bb.s
  %indvars.iv133 = phi i64 [ 0, %.preheader95.us ], [ %indvars.iv.next134, %bb.s ] ; 4 uses
  %.066105.us = phi i32 [ -1, %.preheader95.us ], [ %.1.us, %bb.s ] ; 5 uses
  %i.az = shl nuw i64 1, %indvars.iv133
  %i.ba = and i64 %i.az, %.068110.us
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw [120 x i8], ptr %i.ad, i64 %indvars.iv133
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 98
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !378 ; 2 uses
  %.not80.us = icmp eq i16 %i.be, -1
  br i1 %.not80.us, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bf = icmp eq i32 %.066105.us, -1
  br i1 %i.bf, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bg = sext i32 %.066105.us to i64
  %i.bh = getelementptr inbounds [120 x i8], ptr %i.ad, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 98
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !378
  %i.bk = icmp slt i16 %i.be, %i.bj
  br i1 %i.bk, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bl = trunc nuw nsw i64 %indvars.iv133 to i32
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.o, %bb.n
  %.1.us = phi i32 [ %i.bl, %bb.r ], [ %.066105.us, %bb.q ], [ %.066105.us, %bb.o ], [ %.066105.us, %bb.n ] ; 3 uses
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1 ; 2 uses
  %exitcond137.not = icmp eq i64 %indvars.iv.next134, %wide.trip.count147
  br i1 %exitcond137.not, label %._crit_edge108.us, label %bb.n, !llvm.loop !627

._crit_edge108.us:                                ; preds = %bb.s
  %i.bm = zext nneg i32 %.1.us to i64
  %i.bn = shl nuw i64 1, %i.bm
  %i.bo = or i64 %i.bn, %.068110.us
  %i.bp = trunc i32 %.067111.us to i16
  %i.bq = sext i32 %.1.us to i64
  %i.br = getelementptr inbounds [120 x i8], ptr %i.ad, i64 %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 98
  store i16 %i.bp, ptr %i.bs, align 2, !tbaa !378
  %i.bt = add nuw nsw i32 %.067111.us, 1          ; 2 uses
  %exitcond138.not = icmp eq i32 %i.bt, %.175
  br i1 %exitcond138.not, label %.thread87, label %.preheader95.us, !llvm.loop !628

.preheader.unr-lcssa:                             ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.preheader95.us.us.epil.preheader

.preheader95.us.us.epil.preheader:                ; preds = %.preheader.unr-lcssa, %.preheader95.us.us.preheader
  %indvars.iv144.epil.init = phi i64 [ 0, %.preheader95.us.us.preheader ], [ %indvars.iv.next145.1, %.preheader.unr-lcssa ] ; 2 uses
  %.066105.us.us.epil.init = phi i32 [ -1, %.preheader95.us.us.preheader ], [ %.1.us.us.1, %.preheader.unr-lcssa ] ; 4 uses
  %lcmp.mod182 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod182)
  %i.bu = getelementptr inbounds nuw [120 x i8], ptr %i.ad, i64 %indvars.iv144.epil.init
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 98
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !378 ; 2 uses
  %.not80.us.us.epil = icmp eq i16 %i.bw, -1
  br i1 %.not80.us.us.epil, label %.preheader, label %bb.t

bb.t:                                             ; preds = %.preheader95.us.us.epil.preheader
  %i.bx = icmp eq i32 %.066105.us.us.epil.init, -1
  br i1 %i.bx, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.by = sext i32 %.066105.us.us.epil.init to i64
  %i.bz = getelementptr inbounds [120 x i8], ptr %i.ad, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 98
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !378
  %i.cc = icmp slt i16 %i.bw, %i.cb
  br i1 %i.cc, label %bb.v, label %.preheader

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cd = trunc nuw nsw i64 %indvars.iv144.epil.init to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader95.us.us.epil.preheader, %bb.u, %bb.v, %.preheader.unr-lcssa
  %.1.us.us.lcssa = phi i32 [ %.1.us.us.1, %.preheader.unr-lcssa ], [ %i.cd, %bb.v ], [ %.066105.us.us.epil.init, %bb.u ], [ %.066105.us.us.epil.init, %.preheader95.us.us.epil.preheader ] ; 2 uses
  %i.ce = sext i32 %.1.us.us.lcssa to i64
  %i.cf = getelementptr inbounds [120 x i8], ptr %i.ad, i64 %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 98
  store i16 0, ptr %i.cg, align 2, !tbaa !378
  %i.ch = zext i32 %.1.us.us.lcssa to i64         ; 5 uses
  %xtraiter183 = and i64 %wide.trip.count, 3      ; 3 uses
  %i.ci = icmp ult i32 %i.b, 4
  br i1 %i.ci, label %.lr.ph128.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader
  %unroll_iter186 = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph128

.lr.ph128:                                        ; preds = %bb.aa, %.preheader.new
  %indvars.iv149 = phi i64 [ 0, %.preheader.new ], [ %indvars.iv.next150.3, %bb.aa ] ; 6 uses
  %niter187 = phi i64 [ 0, %.preheader.new ], [ %niter187.next.3, %bb.aa ]
  %.not79 = icmp eq i64 %indvars.iv149, %i.ch
  br i1 %.not79, label %.lr.ph128.1, label %bb.w

bb.w:                                             ; preds = %.lr.ph128
  %i.cj = getelementptr inbounds nuw [120 x i8], ptr %i.ad, i64 %indvars.iv149
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 98
  store i16 -1, ptr %i.ck, align 2, !tbaa !378
  br label %.lr.ph128.1

.lr.ph128.1:                                      ; preds = %.lr.ph128, %bb.w
  %indvars.iv.next150 = or disjoint i64 %indvars.iv149, 1 ; 2 uses
  %.not79.1 = icmp eq i64 %indvars.iv.next150, %i.ch
  br i1 %.not79.1, label %.lr.ph128.2, label %bb.x

bb.x:                                             ; preds = %.lr.ph128.1
  %i.cl = getelementptr inbounds nuw [120 x i8], ptr %i.ad, i64 %indvars.iv.next150
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 98
  store i16 -1, ptr %i.cm, align 2, !tbaa !378
  br label %.lr.ph128.2

.lr.ph128.2:                                      ; preds = %bb.x, %.lr.ph128.1
  %indvars.iv.next150.1 = or disjoint i64 %indvars.iv149, 2 ; 2 uses
  %.not79.2 = icmp eq i64 %indvars.iv.next150.1, %i.ch
  br i1 %.not79.2, label %.lr.ph128.3, label %bb.y

bb.y:                                             ; preds = %.lr.ph128.2
  %i.cn = getelementptr inbounds nuw [120 x i8], ptr %i.ad, i64 %indvars.iv.next150.1
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 98
  store i16 -1, ptr %i.co, align 2, !tbaa !378
  br label %.lr.ph128.3

.lr.ph128.3:                                      ; preds = %bb.y, %.lr.ph128.2
  %indvars.iv.next150.2 = or disjoint i64 %indvars.iv149, 3 ; 2 uses
  %.not79.3 = icmp eq i64 %indvars.iv.next150.2, %i.ch
  br i1 %.not79.3, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph128.3
  %i.cp = getelementptr inbounds nuw [120 x i8], ptr %i.ad, i64 %indvars.iv.next150.2
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 98
  store i16 -1, ptr %i.cq, align 2, !tbaa !378
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph128.3
  %indvars.iv.next150.3 = add nuw nsw i64 %indvars.iv149, 4 ; 2 uses
  %niter187.next.3 = add i64 %niter187, 4         ; 2 uses
  %niter187.ncmp.3 = icmp eq i64 %niter187.next.3, %unroll_iter186
  br i1 %niter187.ncmp.3, label %.thread87.loopexit.unr-lcssa, label %.lr.ph128, !llvm.loop !629

.loopexit:                                        ; preds = %bb.f
  %i.cr = icmp eq i32 %.175, 0
  br i1 %i.cr, label %bb.ab, label %.thread87

bb.ab:                                            ; preds = %.loopexit
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !218
  %i.cu = and i32 %i.ct, 134217728
  %.not77.not = icmp eq i32 %i.cu, 0
  br i1 %.not77.not, label %.lr.ph126, label %.thread87

.lr.ph126:                                        ; preds = %bb.ab
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !291
  %wide.trip.count142 = zext nneg i32 %i.b to i64
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph126, %bb.af
  %indvars.iv139 = phi i64 [ 0, %.lr.ph126 ], [ %indvars.iv.next140, %bb.af ] ; 2 uses
  %i.cx = getelementptr inbounds nuw [120 x i8], ptr %i.cw, i64 %indvars.iv139 ; 5 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 106
  %i.cz = load i8, ptr %i.cy, align 2, !tbaa !333, !range !166, !noundef !167
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.db = load i32, ptr %i.cx, align 4, !tbaa !362
  %i.dc = and i32 %i.db, 512
  %.not78 = icmp eq i32 %i.dc, 0
  br i1 %.not78, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cx, i64 98
  store i16 0, ptr %i.dd, align 2, !tbaa !378
  %i.de = getelementptr i8, ptr %i.cx, i64 117
  %.val = load i8, ptr %i.de, align 1, !tbaa !486
  %i.df = and i8 %.val, 3
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cx, i64 115 ; 2 uses
  %i.dh = zext nneg i8 %i.df to i16
  %i.di = load i16, ptr %i.dg, align 1
  %i.dj = shl nuw nsw i16 %i.dh, 8
  %i.dk = and i16 %i.di, -769
  %i.dl = or disjoint i16 %i.dj, %i.dk
  store i16 %i.dl, ptr %i.dg, align 1
  br label %.thread87

bb.af:                                            ; preds = %bb.ad, %bb.ac
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1 ; 2 uses
  %exitcond143.not = icmp eq i64 %indvars.iv.next140, %wide.trip.count142
  br i1 %exitcond143.not, label %.thread87, label %bb.ac, !llvm.loop !630

.thread87.loopexit.unr-lcssa:                     ; preds = %bb.aa
  %lcmp.mod184.not = icmp eq i64 %xtraiter183, 0
  br i1 %lcmp.mod184.not, label %.thread87, label %.lr.ph128.epil.preheader

.lr.ph128.epil.preheader:                         ; preds = %.thread87.loopexit.unr-lcssa, %.preheader
  %indvars.iv149.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next150.3, %.thread87.loopexit.unr-lcssa ]
  %lcmp.mod185 = icmp ne i64 %xtraiter183, 0
  tail call void @llvm.assume(i1 %lcmp.mod185)
  br label %.lr.ph128.epil

.lr.ph128.epil:                                   ; preds = %bb.ah, %.lr.ph128.epil.preheader
  %indvars.iv149.epil = phi i64 [ %indvars.iv149.epil.init, %.lr.ph128.epil.preheader ], [ %indvars.iv.next150.epil, %bb.ah ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph128.epil.preheader ], [ %epil.iter.next, %bb.ah ]
  %.not79.epil = icmp eq i64 %indvars.iv149.epil, %i.ch
  br i1 %.not79.epil, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph128.epil
  %i.dm = getelementptr inbounds nuw [120 x i8], ptr %i.ad, i64 %indvars.iv149.epil
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 98
  store i16 -1, ptr %i.dn, align 2, !tbaa !378
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph128.epil
  %indvars.iv.next150.epil = add nuw nsw i64 %indvars.iv149.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter183
  br i1 %epil.iter.cmp.not, label %.thread87, label %.lr.ph128.epil, !llvm.loop !631

.thread87:                                        ; preds = %bb.af, %._crit_edge108.us, %.thread87.loopexit.unr-lcssa, %bb.ah, %bb.ab, %bb.a, %bb.ae, %.loopexit
  %.9 = phi i32 [ 0, %bb.ab ], [ %.175, %.loopexit ], [ 1, %bb.ae ], [ 1, %.thread87.loopexit.unr-lcssa ], [ 0, %bb.a ], [ %.175, %._crit_edge108.us ], [ 1, %bb.ah ], [ 0, %bb.af ]
  %i.do = trunc i32 %.9 to i16
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 512
  store i16 %i.do, ptr %i.dp, align 8, !tbaa !396
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef float @_ZN5ImGui23TableGetHeaderRowHeightEv() local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8984
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !277  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4568
  %i.e = load float, ptr %i.d, align 8, !tbaa !379 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 108 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !222  ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 569
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 518
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  br label %bb.b

._crit_edge:                                      ; preds = %bb.h, %bb.a
  %.014.lcssa = phi float [ %i.e, %bb.a ], [ %.1, %bb.h ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 3320
  %i.o = load float, ptr %i.n, align 8, !tbaa !440
  %i.p = tail call float @llvm.fmuladd.f32(float %i.o, float 2.000000e+00, float %.014.lcssa)
  ret float %i.p

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %i.q = phi i32 [ %i.g, %.lr.ph ], [ %i.as, %bb.h ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 5 uses
  %.01415 = phi float [ %i.e, %.lr.ph ], [ %.1, %bb.h ] ; 4 uses
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !302
  %i.s = trunc nuw nsw i64 %indvars.iv to i32
  %i.t = lshr i64 %indvars.iv, 5
  %i.u = and i64 %i.t, 134217727
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !323
  %i.x = and i32 %i.s, 31
  %i.y = shl nuw i32 1, %i.x
  %i.z = and i32 %i.w, %i.y
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !291
  %i.ab = getelementptr inbounds nuw [120 x i8], ptr %i.aa, i64 %indvars.iv ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !362
  %i.ad = and i32 %i.ac, 4096
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.af = load i8, ptr %i.k, align 1, !tbaa !223, !range !166, !noundef !167
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ah = load i16, ptr %i.l, align 2, !tbaa !271
  %i.ai = sext i16 %i.ah to i64
  %.not.i = icmp slt i64 %indvars.iv, %i.ai
  br i1 %.not.i, label %bb.f, label %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 88
  %i.ak = load i16, ptr %i.aj, align 4, !tbaa !387 ; 2 uses
  %i.al = icmp eq i16 %i.ak, -1
  br i1 %i.al, label %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = load ptr, ptr %i.m, align 8, !tbaa !345
  %i.an = sext i16 %i.ak to i64
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 %i.an
  br label %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit

_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit: ; preds = %bb.e, %bb.f, %bb.g
  %.1.i = phi ptr [ @.str.11, %bb.e ], [ %i.ao, %bb.g ], [ @.str.11, %bb.f ]
  %i.ap = tail call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %.1.i, ptr noundef null, i1 noundef zeroext false, float noundef -1.000000e+00)
  %.sroa.0.4.vec.extract = extractelement <2 x float> %i.ap, i64 1 ; 2 uses
  %i.aq = fcmp oge float %.01415, %.sroa.0.4.vec.extract
  %i.ar = select i1 %i.aq, float %.01415, float %.sroa.0.4.vec.extract
  %.pre = load i32, ptr %i.f, align 4, !tbaa !222
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit, %bb.c
  %i.as = phi i32 [ %.pre, %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit ], [ %i.q, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.1 = phi float [ %i.ar, %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit ], [ %.01415, %bb.c ], [ %.01415, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = icmp slt i64 %indvars.iv.next, %i.at
  br i1 %i.au, label %bb.b, label %._crit_edge, !llvm.loop !632
}

declare <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef, ptr noundef, i1 noundef zeroext, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef float @_ZN5ImGui33TableGetHeaderAngledMaxLabelWidthEv() local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8984
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !277  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 108 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !222  ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 569
end_hunk_4
begin_hunk_5_@_ZN5ImGui23TableAngledHeadersRowExEjffPK20ImGuiTableHeaderDatai:bb.a
  %i.mp = select i1 %i.ay, float %i.mo, float 0.000000e+00
  %i.mq = fsub float %i.jk, %i.fx
  %i.mr = fadd float %i.mp, %i.mq
  %i.ms = getelementptr inbounds nuw i8, ptr %i.hl, i64 44
  %i.mt = getelementptr inbounds nuw i8, ptr %i.hh, i64 4
  %i.mu = fneg float %i.is
  %i.mv = select i1 %i.ay, float %i.mu, float %i.is
  br label %bb.ab

._crit_edge.us:                                   ; preds = %.loopexit.us.thread
  br i1 %i.hf, label %.preheader.us, label %.split.us, !llvm.loop !660

.split.us:                                        ; preds = %._crit_edge.us, %_ZN5ImGui15TableSetBgColorEiji.exit
  %.us-phi = phi float [ f0xFF7FFFFF, %_ZN5ImGui15TableSetBgColorEiji.exit ], [ %.2.us247, %._crit_edge.us ]
  call void @_ZN5ImGui11PopClipRectEv()
  call void @_ZN5ImGui11PopClipRectEv()
  %i.mw = getelementptr inbounds nuw i8, ptr %i.c, i64 544
  %i.mx = load i16, ptr %i.mw, align 8, !tbaa !397
  %i.my = load ptr, ptr %i.ga, align 8, !tbaa !291
  %i.mz = sext i16 %i.mx to i64
  %i.na = getelementptr inbounds [120 x i8], ptr %i.my, i64 %i.mz
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 12
  %i.nc = load float, ptr %i.nb, align 4, !tbaa !422
  %i.nd = fsub float %.us-phi, %i.nc              ; 2 uses
  %i.ne = fcmp ole float %i.nd, 0.000000e+00
  %i.nf = select i1 %i.ne, float 0.000000e+00, float %i.nd
  %i.ng = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !192
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 12
  store float %i.nf, ptr %i.ni, align 4, !tbaa !274
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #4
  br label %bb.am

bb.am:                                            ; preds = %.split.us, %bb.b
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #12

declare void @_ZN5ImGui12PushClipRectERK6ImVec2S2_b(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN5ImGui11KeepAliveIDEj(i32 noundef) local_unnamed_addr #2

declare void @_ZN10ImDrawList13AddQuadFilledERK6ImVec2S2_S2_S2_j(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare noundef i32 @_Z16ImTextCountLinesPKcS0_(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #15

declare void @_ZN5ImGui22ShadeVertsTransformPosEP10ImDrawListiiRK6ImVec2ffS4_(ptr noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(8), float noundef, float noundef, ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, float noundef) local_unnamed_addr #2

declare void @_ZN5ImGui11PopClipRectEv() local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui11OpenPopupExEji(i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui12BeginPopupExEji(i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui9BeginMenuEPKcb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN5ImGui7EndMenuEv() local_unnamed_addr #2

declare void @_ZN5ImGui9SeparatorEv() local_unnamed_addr #2

declare void @_ZN5ImGui12PushItemFlagEib(i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui12IsItemActiveEv() local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef) local_unnamed_addr #2

declare void @_ZN5ImGui11PopItemFlagEv() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN5ImGui19TableSettingsCreateEji(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 10120 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 10128 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !335  ; 4 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN5ImGui21TableSettingsFindByIDEj.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %select.unfold.i
  %.0812.i = phi ptr [ %i.k, %select.unfold.i ], [ %i.e, %.lr.ph.i.preheader ] ; 12 uses
  %i.f = load i32, ptr %.0812.i, align 4, !tbaa !336
  %i.g = icmp eq i32 %i.f, %0
  br i1 %i.g, label %_ZN5ImGui21TableSettingsFindByIDEj.exit, label %select.unfold.i

select.unfold.i:                                  ; preds = %.lr.ph.i
  %i.h = getelementptr inbounds i8, ptr %.0812.i, i64 -4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !323
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds i8, ptr %.0812.i, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.b, align 8, !tbaa !338
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds i8, ptr %i.d, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = icmp eq ptr %i.k, %i.o
  br i1 %i.p, label %_ZN5ImGui21TableSettingsFindByIDEj.exit.thread, label %.lr.ph.i

_ZN5ImGui21TableSettingsFindByIDEj.exit:          ; preds = %.lr.ph.i
  %i.q = getelementptr inbounds nuw i8, ptr %.0812.i, i64 14 ; 2 uses
  %i.r = load i16, ptr %i.q, align 2, !tbaa !605  ; 6 uses
  %i.s = sext i16 %i.r to i32                     ; 2 uses
  %.not21 = icmp sgt i32 %1, %i.s
  br i1 %.not21, label %bb.b, label %.critedge

.critedge:                                        ; preds = %_ZN5ImGui21TableSettingsFindByIDEj.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.0812.i, i8 0, i64 20, i1 false)
  %i.t = icmp sgt i16 %i.r, 0
  br i1 %i.t, label %.lr.ph.preheader.i, label %_ZL17TableSettingsInitP18ImGuiTableSettingsjii.exit

.lr.ph.preheader.i:                               ; preds = %.critedge
  %i.u = getelementptr inbounds nuw i8, ptr %.0812.i, i64 20 ; 2 uses
  %i.v = icmp eq i16 %i.r, 1
  br i1 %i.v, label %.lr.ph.i22.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i32 %i.s, 32766
  br label %.lr.ph.i22

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i22
  %i.w = and i16 %i.r, 1
  %lcmp.mod.not = icmp eq i16 %i.w, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.lr.ph.i22.epil.preheader

.lr.ph.i22.epil.preheader:                        ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.preheader.i
  %.01517.i.epil.init = phi ptr [ %i.u, %.lr.ph.preheader.i ], [ %i.ax, %._crit_edge.loopexit.i.unr-lcssa ] ; 6 uses
  %lcmp.mod49 = trunc i16 %i.r to i1
  tail call void @llvm.assume(i1 %lcmp.mod49)
  store float 0.000000e+00, ptr %.01517.i.epil.init, align 4, !tbaa !468
  %i.x = getelementptr inbounds nuw i8, ptr %.01517.i.epil.init, i64 4
  store i32 0, ptr %i.x, align 4, !tbaa !466
  %i.y = getelementptr inbounds nuw i8, ptr %.01517.i.epil.init, i64 8
  store i16 -1, ptr %i.y, align 4, !tbaa !607
  %i.z = getelementptr inbounds nuw i8, ptr %.01517.i.epil.init, i64 12
  store i16 -1, ptr %i.z, align 4, !tbaa !469
  %i.aa = getelementptr inbounds nuw i8, ptr %.01517.i.epil.init, i64 10
  store i16 -1, ptr %i.aa, align 2, !tbaa !608
  %i.ab = getelementptr inbounds nuw i8, ptr %.01517.i.epil.init, i64 14 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 2
  %i.ad = and i8 %i.ac, -64
  %i.ae = or disjoint i8 %i.ad, 12
  store i8 %i.ae, ptr %i.ab, align 2
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i22.epil.preheader
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.0812.i, i64 18
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 2
  %i.af = or i8 %.pre.i, 1
  br label %_ZL17TableSettingsInitP18ImGuiTableSettingsjii.exit

.lr.ph.i22:                                       ; preds = %.lr.ph.i22, %.lr.ph.preheader.i.new
  %.01517.i = phi ptr [ %i.u, %.lr.ph.preheader.i.new ], [ %i.ax, %.lr.ph.i22 ] ; 13 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i22 ]
  store float 0.000000e+00, ptr %.01517.i, align 4, !tbaa !468
  %i.ag = getelementptr inbounds nuw i8, ptr %.01517.i, i64 4
  store i32 0, ptr %i.ag, align 4, !tbaa !466
  %i.ah = getelementptr inbounds nuw i8, ptr %.01517.i, i64 8
  store i16 -1, ptr %i.ah, align 4, !tbaa !607
  %i.ai = getelementptr inbounds nuw i8, ptr %.01517.i, i64 12
  store i16 -1, ptr %i.ai, align 4, !tbaa !469
  %i.aj = getelementptr inbounds nuw i8, ptr %.01517.i, i64 10
  store i16 -1, ptr %i.aj, align 2, !tbaa !608
  %i.ak = getelementptr inbounds nuw i8, ptr %.01517.i, i64 14 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 2
  %i.am = and i8 %i.al, -64
  %i.an = or disjoint i8 %i.am, 12
  store i8 %i.an, ptr %i.ak, align 2
  %i.ao = getelementptr inbounds nuw i8, ptr %.01517.i, i64 16
  store float 0.000000e+00, ptr %i.ao, align 4, !tbaa !468
  %i.ap = getelementptr inbounds nuw i8, ptr %.01517.i, i64 20
  store i32 0, ptr %i.ap, align 4, !tbaa !466
  %i.aq = getelementptr inbounds nuw i8, ptr %.01517.i, i64 24
  store i16 -1, ptr %i.aq, align 4, !tbaa !607
  %i.ar = getelementptr inbounds nuw i8, ptr %.01517.i, i64 28
  store i16 -1, ptr %i.ar, align 4, !tbaa !469
  %i.as = getelementptr inbounds nuw i8, ptr %.01517.i, i64 26
  store i16 -1, ptr %i.as, align 2, !tbaa !608
  %i.at = getelementptr inbounds nuw i8, ptr %.01517.i, i64 30 ; 2 uses
  %i.au = load i8, ptr %i.at, align 2
  %i.av = and i8 %i.au, -64
  %i.aw = or disjoint i8 %i.av, 12
  store i8 %i.aw, ptr %i.at, align 2
  %i.ax = getelementptr inbounds nuw i8, ptr %.01517.i, i64 32 ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i22, !llvm.loop !661

_ZL17TableSettingsInitP18ImGuiTableSettingsjii.exit: ; preds = %.critedge, %._crit_edge.loopexit.i
  %i.ay = phi i8 [ %i.af, %._crit_edge.loopexit.i ], [ 1, %.critedge ]
  store i32 %0, ptr %.0812.i, align 4, !tbaa !336
  %i.az = trunc i32 %1 to i16
  %i.ba = getelementptr inbounds nuw i8, ptr %.0812.i, i64 12
  store i16 %i.az, ptr %i.ba, align 4, !tbaa !339
  store i16 %i.r, ptr %i.q, align 2, !tbaa !605
  %i.bb = getelementptr inbounds nuw i8, ptr %.0812.i, i64 18
  store i8 %i.ay, ptr %i.bb, align 2
  br label %bb.g

bb.b:                                             ; preds = %_ZN5ImGui21TableSettingsFindByIDEj.exit
  store i32 0, ptr %.0812.i, align 4, !tbaa !336
  br label %_ZN5ImGui21TableSettingsFindByIDEj.exit.thread

_ZN5ImGui21TableSettingsFindByIDEj.exit.thread:   ; preds = %select.unfold.i, %bb.a, %bb.b
  %i.bc = shl i32 %1, 4
  %i.bd = load i32, ptr %i.b, align 8, !tbaa !338 ; 2 uses
  %i.be = add i32 %i.bc, 24                       ; 2 uses
  %i.bf = add nsw i32 %i.bd, %i.be                ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 10124 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !344 ; 4 uses
  %i.bi = icmp sgt i32 %i.bf, %i.bh
  br i1 %i.bi, label %bb.c, label %_ZN13ImChunkStreamI18ImGuiTableSettingsE11alloc_chunkEm.exit

bb.c:                                             ; preds = %_ZN5ImGui21TableSettingsFindByIDEj.exit.thread
  %.not.i.i.i = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i.i, label %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bj = sdiv i32 %i.bh, 2
  %i.bk = add nsw i32 %i.bj, %i.bh
  br label %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i.i

_ZNK8ImVectorIcE14_grow_capacityEi.exit.i.i:      ; preds = %bb.d, %bb.c
  %i.bl = phi i32 [ %i.bk, %bb.d ], [ 8, %bb.c ]
  %i.bm = tail call noundef i32 @llvm.smax.i32(i32 %i.bl, i32 %i.bf) ; 2 uses
  %i.bn = sext i32 %i.bm to i64
  %i.bo = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.bn) ; 3 uses
  %i.bp = load ptr, ptr %i.c, align 8, !tbaa !345 ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not6.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i.i
  %i.bq = load i32, ptr %i.b, align 8, !tbaa !346
  %i.br = sext i32 %i.bq to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bo, ptr nonnull align 1 %i.bp, i64 %i.br, i1 false)
  %i.bs = load ptr, ptr %i.c, align 8, !tbaa !345
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.bs)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i.i
  store ptr %i.bo, ptr %i.c, align 8, !tbaa !345
  store i32 %i.bm, ptr %i.bg, align 4, !tbaa !344
  br label %_ZN13ImChunkStreamI18ImGuiTableSettingsE11alloc_chunkEm.exit

_ZN13ImChunkStreamI18ImGuiTableSettingsE11alloc_chunkEm.exit: ; preds = %_ZN5ImGui21TableSettingsFindByIDEj.exit.thread, %bb.f
  %i.bt = phi ptr [ %i.bo, %bb.f ], [ %i.d, %_ZN5ImGui21TableSettingsFindByIDEj.exit.thread ]
  store i32 %i.bf, ptr %i.b, align 8, !tbaa !346
  %i.bu = sext i32 %i.bd to i64
  %i.bv = getelementptr inbounds i8, ptr %i.bt, i64 %i.bu ; 7 uses
  store i32 %i.be, ptr %i.bv, align 4, !tbaa !323
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bw, i8 0, i64 20, i1 false)
  %i.bx = icmp sgt i32 %1, 0
  br i1 %i.bx, label %.lr.ph.preheader.i25, label %_ZL17TableSettingsInitP18ImGuiTableSettingsjii.exit33

.lr.ph.preheader.i25:                             ; preds = %_ZN13ImChunkStreamI18ImGuiTableSettingsE11alloc_chunkEm.exit
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 24 ; 2 uses
  %xtraiter50 = and i32 %1, 1
  %i.bz = icmp eq i32 %1, 1
  br i1 %i.bz, label %.lr.ph.i26.epil.preheader, label %.lr.ph.preheader.i25.new

.lr.ph.preheader.i25.new:                         ; preds = %.lr.ph.preheader.i25
  %unroll_iter53 = and i32 %1, 2147483646
  br label %.lr.ph.i26

._crit_edge.loopexit.i30.unr-lcssa:               ; preds = %.lr.ph.i26
  %lcmp.mod51.not = icmp eq i32 %xtraiter50, 0
  br i1 %lcmp.mod51.not, label %._crit_edge.loopexit.i30, label %.lr.ph.i26.epil.preheader

.lr.ph.i26.epil.preheader:                        ; preds = %._crit_edge.loopexit.i30.unr-lcssa, %.lr.ph.preheader.i25
  %.01517.i28.epil.init = phi ptr [ %i.by, %.lr.ph.preheader.i25 ], [ %i.da, %._crit_edge.loopexit.i30.unr-lcssa ] ; 6 uses
  %lcmp.mod52 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod52)
  store float 0.000000e+00, ptr %.01517.i28.epil.init, align 4, !tbaa !468
  %i.ca = getelementptr inbounds nuw i8, ptr %.01517.i28.epil.init, i64 4
  store i32 0, ptr %i.ca, align 4, !tbaa !466
  %i.cb = getelementptr inbounds nuw i8, ptr %.01517.i28.epil.init, i64 8
  store i16 -1, ptr %i.cb, align 4, !tbaa !607
  %i.cc = getelementptr inbounds nuw i8, ptr %.01517.i28.epil.init, i64 12
  store i16 -1, ptr %i.cc, align 4, !tbaa !469
  %i.cd = getelementptr inbounds nuw i8, ptr %.01517.i28.epil.init, i64 10
  store i16 -1, ptr %i.cd, align 2, !tbaa !608
  %i.ce = getelementptr inbounds nuw i8, ptr %.01517.i28.epil.init, i64 14 ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 2
  %i.cg = and i8 %i.cf, -64
  %i.ch = or disjoint i8 %i.cg, 12
  store i8 %i.ch, ptr %i.ce, align 2
  br label %._crit_edge.loopexit.i30

._crit_edge.loopexit.i30:                         ; preds = %._crit_edge.loopexit.i30.unr-lcssa, %.lr.ph.i26.epil.preheader
  %.phi.trans.insert.i31 = getelementptr inbounds nuw i8, ptr %i.bv, i64 22
  %.pre.i32 = load i8, ptr %.phi.trans.insert.i31, align 2
  %i.ci = or i8 %.pre.i32, 1
  br label %_ZL17TableSettingsInitP18ImGuiTableSettingsjii.exit33

.lr.ph.i26:                                       ; preds = %.lr.ph.i26, %.lr.ph.preheader.i25.new
  %.01517.i28 = phi ptr [ %i.by, %.lr.ph.preheader.i25.new ], [ %i.da, %.lr.ph.i26 ] ; 13 uses
  %niter54 = phi i32 [ 0, %.lr.ph.preheader.i25.new ], [ %niter54.next.1, %.lr.ph.i26 ]
  store float 0.000000e+00, ptr %.01517.i28, align 4, !tbaa !468
  %i.cj = getelementptr inbounds nuw i8, ptr %.01517.i28, i64 4
  store i32 0, ptr %i.cj, align 4, !tbaa !466
  %i.ck = getelementptr inbounds nuw i8, ptr %.01517.i28, i64 8
  store i16 -1, ptr %i.ck, align 4, !tbaa !607
  %i.cl = getelementptr inbounds nuw i8, ptr %.01517.i28, i64 12
  store i16 -1, ptr %i.cl, align 4, !tbaa !469
  %i.cm = getelementptr inbounds nuw i8, ptr %.01517.i28, i64 10
  store i16 -1, ptr %i.cm, align 2, !tbaa !608
  %i.cn = getelementptr inbounds nuw i8, ptr %.01517.i28, i64 14 ; 2 uses
  %i.co = load i8, ptr %i.cn, align 2
  %i.cp = and i8 %i.co, -64
  %i.cq = or disjoint i8 %i.cp, 12
  store i8 %i.cq, ptr %i.cn, align 2
  %i.cr = getelementptr inbounds nuw i8, ptr %.01517.i28, i64 16
  store float 0.000000e+00, ptr %i.cr, align 4, !tbaa !468
  %i.cs = getelementptr inbounds nuw i8, ptr %.01517.i28, i64 20
  store i32 0, ptr %i.cs, align 4, !tbaa !466
  %i.ct = getelementptr inbounds nuw i8, ptr %.01517.i28, i64 24
  store i16 -1, ptr %i.ct, align 4, !tbaa !607
  %i.cu = getelementptr inbounds nuw i8, ptr %.01517.i28, i64 28
  store i16 -1, ptr %i.cu, align 4, !tbaa !469
  %i.cv = getelementptr inbounds nuw i8, ptr %.01517.i28, i64 26
  store i16 -1, ptr %i.cv, align 2, !tbaa !608
  %i.cw = getelementptr inbounds nuw i8, ptr %.01517.i28, i64 30 ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 2
  %i.cy = and i8 %i.cx, -64
  %i.cz = or disjoint i8 %i.cy, 12
  store i8 %i.cz, ptr %i.cw, align 2
  %i.da = getelementptr inbounds nuw i8, ptr %.01517.i28, i64 32 ; 2 uses
  %niter54.next.1 = add nuw nsw i32 %niter54, 2   ; 2 uses
  %niter54.ncmp.1 = icmp eq i32 %niter54.next.1, %unroll_iter53
  br i1 %niter54.ncmp.1, label %._crit_edge.loopexit.i30.unr-lcssa, label %.lr.ph.i26, !llvm.loop !661

_ZL17TableSettingsInitP18ImGuiTableSettingsjii.exit33: ; preds = %_ZN13ImChunkStreamI18ImGuiTableSettingsE11alloc_chunkEm.exit, %._crit_edge.loopexit.i30
  %i.db = phi i8 [ %i.ci, %._crit_edge.loopexit.i30 ], [ 1, %_ZN13ImChunkStreamI18ImGuiTableSettingsE11alloc_chunkEm.exit ]
  store i32 %0, ptr %i.bw, align 4, !tbaa !336
  %i.dc = trunc i32 %1 to i16                     ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store i16 %i.dc, ptr %i.dd, align 4, !tbaa !339
  %i.de = getelementptr inbounds nuw i8, ptr %i.bv, i64 18
  store i16 %i.dc, ptr %i.de, align 2, !tbaa !605
  %i.df = getelementptr inbounds nuw i8, ptr %i.bv, i64 22
  store i8 %i.db, ptr %i.df, align 2
  br label %bb.g

bb.g:                                             ; preds = %_ZL17TableSettingsInitP18ImGuiTableSettingsjii.exit, %_ZL17TableSettingsInitP18ImGuiTableSettingsjii.exit33
  %.1 = phi ptr [ %i.bw, %_ZL17TableSettingsInitP18ImGuiTableSettingsjii.exit33 ], [ %.0812.i, %_ZL17TableSettingsInitP18ImGuiTableSettingsjii.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZN5ImGui21TableSettingsFindByIDEj(i32 noundef %0) local_unnamed_addr #13 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 10120
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 10128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !335  ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %select.unfold
  %.0812 = phi ptr [ %i.k, %select.unfold ], [ %i.e, %.lr.ph.preheader ] ; 4 uses
  %i.f = load i32, ptr %.0812, align 4, !tbaa !336
  %i.g = icmp eq i32 %i.f, %0
  br i1 %i.g, label %._crit_edge, label %select.unfold

select.unfold:                                    ; preds = %.lr.ph
  %i.h = getelementptr inbounds i8, ptr %.0812, i64 -4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !323
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds i8, ptr %.0812, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.b, align 8, !tbaa !338
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds i8, ptr %i.d, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = icmp eq ptr %i.k, %i.o
  br i1 %i.p, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %select.unfold, %.lr.ph, %bb.a
  %.08.lcssa = phi ptr [ null, %bb.a ], [ %.0812, %.lr.ph ], [ null, %select.unfold ]
  ret ptr %.08.lcssa
}
end_hunk_5
begin_hunk_6_@_ZN5ImGui26TableLoadSettingsForColumnEP16ImGuiTableColumnP24ImGuiTableColumnSettingsi:bb.a
bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = and i32 %2, 2
  %.not23 = icmp eq i32 %i.n, 0
  %.29 = select i1 %.not23, i64 8, i64 10
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %.29
  %.sink = load i16, ptr %i.o, align 2, !tbaa !324
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 90
  store i16 %.sink, ptr %i.p, align 2, !tbaa !327
  %i.q = and i32 %2, 4
  %.not24 = icmp eq i32 %i.q, 0
  br i1 %.not24, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load i8, ptr %i.d, align 2
  %i.s = shl i8 %i.r, 4
  %i.t = ashr i8 %i.s, 6                          ; 2 uses
  %.not25 = icmp eq i8 %i.t, -1
  br i1 %.not25, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = icmp eq i8 %i.t, 1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.w = zext i1 %i.u to i8                       ; 2 uses
  store i8 %i.w, ptr %i.v, align 4, !tbaa !331
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 107
  store i8 %i.w, ptr %i.x, align 1, !tbaa !332
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.z = load i16, ptr %i.y, align 4, !tbaa !469
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 98
  store i16 %i.z, ptr %i.aa, align 2, !tbaa !378
  %i.ab = load i8, ptr %i.d, align 2
  %i.ac = and i8 %i.ab, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 115 ; 2 uses
  %i.ae = zext nneg i8 %i.ac to i16
  %i.af = load i16, ptr %i.ad, align 1
  %i.ag = shl nuw nsw i16 %i.ae, 8
  %i.ah = and i16 %i.af, -769
  %i.ai = or disjoint i16 %i.ag, %i.ah
  store i16 %i.ai, ptr %i.ad, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef range(i32 -1, 2) i32 @_ZL28TableFixDisplayOrderComparerPKvS0_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !479
  %i.c = load i16, ptr %0, align 8, !tbaa !477    ; 2 uses
  %i.d = load i16, ptr %1, align 8, !tbaa !477    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !291  ; 2 uses
  %i.g = sext i16 %i.c to i64
  %i.h = getelementptr inbounds [120 x i8], ptr %i.f, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 90
  %i.j = load i16, ptr %i.i, align 2, !tbaa !327  ; 2 uses
  %i.k = sext i16 %i.d to i64
  %i.l = getelementptr inbounds [120 x i8], ptr %i.f, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 90
  %i.n = load i16, ptr %i.m, align 2, !tbaa !327  ; 2 uses
  %i.o = icmp ugt i16 %i.j, %i.n
  %.not = icmp eq i16 %i.j, %i.n
  %i.p = icmp sgt i16 %i.c, %i.d
  %i.q = and i1 %i.p, %.not
  %i.r = or i1 %i.o, %i.q
  %i.s = select i1 %i.r, i32 1, i32 -1
  ret i32 %i.s
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui31TableSettingsAddSettingsHandlerEv() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.ImGuiSettingsHandler, align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  store ptr @.str.19, ptr %0, align 8, !tbaa !662
  %i.b = tail call noundef i32 @_Z9ImHashStrPKcmj(ptr noundef nonnull @.str.19, i64 noundef 0, i32 noundef 0)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.c, align 8, !tbaa !664
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZL29TableSettingsHandler_ClearAllP12ImGuiContextP20ImGuiSettingsHandler, ptr %i.d, align 8, !tbaa !665
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr @_ZL28TableSettingsHandler_CleanupP12ImGuiContextP20ImGuiSettingsHandlerP24ImGuiSettingsCleanupArgs, ptr %i.e, align 8, !tbaa !666
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @_ZL29TableSettingsHandler_ReadOpenP12ImGuiContextP20ImGuiSettingsHandlerPKc, ptr %i.f, align 8, !tbaa !667
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @_ZL29TableSettingsHandler_ReadLineP12ImGuiContextP20ImGuiSettingsHandlerPvPKc, ptr %i.g, align 8, !tbaa !668
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZL29TableSettingsHandler_ApplyAllP12ImGuiContextP20ImGuiSettingsHandler, ptr %i.h, align 8, !tbaa !669
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @_ZL29TableSettingsHandler_WriteAllP12ImGuiContextP20ImGuiSettingsHandlerP15ImGuiTextBuffer, ptr %i.i, align 8, !tbaa !670
  call void @_ZN5ImGui18AddSettingsHandlerEPK20ImGuiSettingsHandler(ptr noundef nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #4
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL29TableSettingsHandler_ClearAllP12ImGuiContextP20ImGuiSettingsHandler(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9032
  %i.b = load i32, ptr %i.a, align 8, !tbaa !671  ; 4 uses
  %.not11 = icmp eq i32 %i.b, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9040
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !672  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9024 ; 3 uses
  %i.f = zext i32 %i.b to i64                     ; 2 uses
  %xtraiter = and i64 %i.f, 1
  %i.g = icmp eq i32 %i.b, 1
  br i1 %i.g, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.f, 4294967294
  br label %bb.d

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod17 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod17)
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv.epil.init
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !326  ; 2 uses
  %i.k = icmp eq i32 %i.j, -1
  %i.l = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not910.epil = icmp eq ptr %i.l, null
  %.not9.epil = select i1 %i.k, i1 true, i1 %.not910.epil
  br i1 %.not9.epil, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.epil.preheader
  %i.m = sext i32 %i.j to i64
  %i.n = getelementptr inbounds [592 x i8], ptr %i.l, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 100
  store i32 -1, ptr %i.o, align 4, !tbaa !309
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.b, %.epil.preheader, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 10128 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !345  ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZN13ImChunkStreamI18ImGuiTableSettingsE5clearEv.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 10120
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 10124
  store i32 0, ptr %i.s, align 4, !tbaa !344
  store i32 0, ptr %i.r, align 8, !tbaa !346
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.q)
  store ptr null, ptr %i.p, align 8, !tbaa !345
  br label %_ZN13ImChunkStreamI18ImGuiTableSettingsE5clearEv.exit

_ZN13ImChunkStreamI18ImGuiTableSettingsE5clearEv.exit: ; preds = %._crit_edge, %bb.c
  ret void

bb.d:                                             ; preds = %bb.h, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.h ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.h ]
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !326  ; 2 uses
  %i.w = icmp eq i32 %i.v, -1
  %i.x = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not910 = icmp eq ptr %i.x, null
  %.not9 = select i1 %i.w, i1 true, i1 %.not910
  br i1 %.not9, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = sext i32 %i.v to i64
  %i.z = getelementptr inbounds [592 x i8], ptr %i.x, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 100
  store i32 -1, ptr %i.aa, align 4, !tbaa !309
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !326 ; 2 uses
  %i.ae = icmp eq i32 %i.ad, -1
  %i.af = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not910.1 = icmp eq ptr %i.af, null
  %.not9.1 = select i1 %i.ae, i1 true, i1 %.not910.1
  br i1 %.not9.1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = sext i32 %i.ad to i64
  %i.ah = getelementptr inbounds [592 x i8], ptr %i.af, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 100
  store i32 -1, ptr %i.ai, align 4, !tbaa !309
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.d, !llvm.loop !673
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL28TableSettingsHandler_CleanupP12ImGuiContextP20ImGuiSettingsHandlerP24ImGuiSettingsCleanupArgs(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9032
  %i.b = load i32, ptr %i.a, align 8, !tbaa !671  ; 4 uses
  %.not3040 = icmp eq i32 %i.b, 0
  br i1 %.not3040, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9040
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !672  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9024 ; 3 uses
  %i.f = zext i32 %i.b to i64                     ; 2 uses
  %xtraiter = and i64 %i.f, 1
  %i.g = icmp eq i32 %i.b, 1
  br i1 %i.g, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.f, 4294967294
  br label %bb.c

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod53 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod53)
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv.epil.init
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !326  ; 2 uses
  %i.k = icmp eq i32 %i.j, -1
  %i.l = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not3339.epil = icmp eq ptr %i.l, null
  %.not33.epil = select i1 %i.k, i1 true, i1 %.not3339.epil
  br i1 %.not33.epil, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.epil.preheader
  %i.m = sext i32 %i.j to i64
  %i.n = getelementptr inbounds [592 x i8], ptr %i.l, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 100
  store i32 -1, ptr %i.o, align 4, !tbaa !309
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.b, %.epil.preheader, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 10120
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 10128 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !335  ; 3 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %select.unfold._crit_edge, label %.lr.ph44

.lr.ph44:                                         ; preds = %._crit_edge
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 10064
  br label %bb.h

bb.c:                                             ; preds = %bb.g, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.g ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.g ]
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !326 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, -1
  %i.ac = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not3339 = icmp eq ptr %i.ac, null
  %.not33 = select i1 %i.ab, i1 true, i1 %.not3339
  br i1 %.not33, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = sext i32 %i.aa to i64
  %i.ae = getelementptr inbounds [592 x i8], ptr %i.ac, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 100
  store i32 -1, ptr %i.af, align 4, !tbaa !309
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !326 ; 2 uses
  %i.aj = icmp eq i32 %i.ai, -1
  %i.ak = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not3339.1 = icmp eq ptr %i.ak, null
  %.not33.1 = select i1 %i.aj, i1 true, i1 %.not3339.1
  br i1 %.not33.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = sext i32 %i.ai to i64
  %i.am = getelementptr inbounds [592 x i8], ptr %i.ak, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 100
  store i32 -1, ptr %i.an, align 4, !tbaa !309
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !674

select.unfold._crit_edge:                         ; preds = %select.unfold, %._crit_edge
  ret void

bb.h:                                             ; preds = %.lr.ph44, %select.unfold
  %i.ao = phi ptr [ %i.r, %.lr.ph44 ], [ %i.bl, %select.unfold ] ; 3 uses
  %.042 = phi ptr [ %i.s, %.lr.ph44 ], [ %i.bp, %select.unfold ] ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.042, i64 16 ; 2 uses
  %i.aq = load i16, ptr %i.ap, align 2            ; 5 uses
  %i.ar = and i16 %i.aq, 127                      ; 3 uses
  %.not.i35 = icmp ne i16 %i.ar, 0
  %i.as = and i16 %i.aq, 1920
  %.not1.i = icmp ne i16 %i.as, 0
  %or.cond.not.i = and i1 %.not.i35, %.not1.i
  %i.at = icmp ugt i16 %i.aq, 2047
  %spec.select.i = and i1 %i.at, %or.cond.not.i   ; 2 uses
  %i.au = load i32, ptr %i.t, align 4, !tbaa !675 ; 2 uses
  %.not32 = icmp eq i32 %i.au, 0
  br i1 %.not32, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i36 = icmp eq i16 %i.ar, 0
  br i1 %.not.i36, label %_ZNK15ImGuiPackedDate6UnpackEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = lshr i16 %i.aq, 7
  %i.aw = and i16 %i.av, 15                       ; 2 uses
  %.not3.i = icmp eq i16 %i.aw, 0
  br i1 %.not3.i, label %_ZNK15ImGuiPackedDate6UnpackEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = lshr i16 %i.aq, 11                      ; 2 uses
  %.not4.i = icmp eq i16 %i.ax, 0
  br i1 %.not4.i, label %_ZNK15ImGuiPackedDate6UnpackEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %narrow.i = add nuw nsw i16 %i.ar, 2000
  %i.ay = zext nneg i16 %narrow.i to i32
  %i.az = mul nuw nsw i32 %i.ay, 10000
  %narrow5.i = mul nuw nsw i16 %i.aw, 100
  %narrow6.i = add nuw nsw i16 %narrow5.i, %i.ax
  %i.ba = zext nneg i16 %narrow6.i to i32
  %i.bb = add nuw nsw i32 %i.az, %i.ba
  br label %_ZNK15ImGuiPackedDate6UnpackEv.exit

_ZNK15ImGuiPackedDate6UnpackEv.exit:              ; preds = %bb.i, %bb.j, %bb.k, %bb.l
  %i.bc = phi i32 [ %i.bb, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ]
  %i.bd = icmp slt i32 %i.bc, %i.au
  br i1 %i.bd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNK15ImGuiPackedDate6UnpackEv.exit
  store i32 0, ptr %.042, align 4, !tbaa !336
  br label %select.unfold

bb.n:                                             ; preds = %_ZNK15ImGuiPackedDate6UnpackEv.exit, %bb.h
  %i.be = load i8, ptr %i.u, align 4, !tbaa !677, !range !166, !noundef !167
  %i.bf = trunc nuw i8 %i.be to i1
  %.not = xor i1 %i.bf, true
  %or.cond = or i1 %spec.select.i, %.not
  br i1 %or.cond, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %.042, align 4, !tbaa !336
  br label %select.unfold

bb.p:                                             ; preds = %bb.n
  %i.bg = load i8, ptr %i.v, align 2, !tbaa !678, !range !166, !noundef !167
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bi = load i8, ptr %i.w, align 1, !tbaa !679, !range !166, !noundef !167
  %i.bj = trunc nuw i8 %i.bi to i1
  %.not2 = xor i1 %i.bj, true
  %or.cond4 = or i1 %spec.select.i, %.not2
  br i1 %or.cond4, label %select.unfold, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bk = load i16, ptr %i.x, align 8, !tbaa !326
  store i16 %i.bk, ptr %i.ap, align 4, !tbaa !326
  %.pre = load ptr, ptr %i.q, align 8, !tbaa !335
  br label %select.unfold

select.unfold:                                    ; preds = %bb.o, %bb.r, %bb.q, %bb.m
  %i.bl = phi ptr [ %i.ao, %bb.o ], [ %.pre, %bb.r ], [ %i.ao, %bb.q ], [ %i.ao, %bb.m ] ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %.042, i64 -4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !323
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds i8, ptr %.042, i64 %i.bo ; 2 uses
  %i.bq = load i32, ptr %i.p, align 8, !tbaa !338
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds i8, ptr %i.bl, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.bu = icmp eq ptr %i.bp, %i.bt
  br i1 %i.bu, label %select.unfold._crit_edge, label %bb.h
}

; Function Attrs: mustprogress uwtable
define internal noundef ptr @_ZL29TableSettingsHandler_ReadOpenP12ImGuiContextP20ImGuiSettingsHandlerPKc(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 0, ptr %i.a, align 4, !tbaa !323
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i32 0, ptr %i.b, align 4, !tbaa !323
  %i.c = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef %2, ptr noundef nonnull @.str.52, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #4
  %i.d = icmp slt i32 %i.c, 2
  %i.e = load i32, ptr %i.b, align 4              ; 2 uses
  %i.f = add i32 %i.e, -512
  %i.g = icmp ult i32 %i.f, -511
  %or.cond3 = select i1 %i.d, i1 true, i1 %i.g
  br i1 %or.cond3, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.a, align 4, !tbaa !323
  %i.i = call noundef ptr @_ZN5ImGui19TableSettingsCreateEji(i32 noundef %i.h, i32 noundef %i.e)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.i, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL29TableSettingsHandler_ReadLineP12ImGuiContextP20ImGuiSettingsHandlerPvPKc(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef captures(none) %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca float, align 4                    ; 7 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 19 uses
  %i.d = alloca i32, align 4                      ; 16 uses
  %i.e = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i32 0, ptr %i.b, align 4, !tbaa !323
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i32 0, ptr %i.c, align 4, !tbaa !323
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 0, ptr %i.d, align 4, !tbaa !323
  %i.f = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef %3, ptr noundef nonnull @.str.53, ptr noundef nonnull %i.a) #4
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load float, ptr %i.a, align 4, !tbaa !168
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %i.h, ptr %i.i, align 4, !tbaa !341
  br label %bb.w

bb.c:                                             ; preds = %bb.a
  %i.j = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef %3, ptr noundef nonnull @.str.54, ptr noundef nonnull %i.d) #4
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = load i32, ptr %i.d, align 4, !tbaa !323  ; 3 uses
  %i.m = sdiv i32 %i.l, 10000
  %i.n = trunc i32 %i.m to i16
  %i.o = add i16 %i.n, 48
  %i.p = and i16 %i.o, 127
  %i.q = sdiv i32 %i.l, 100
  %i.r = srem i32 %i.q, 100
  %i.s = trunc nsw i32 %i.r to i16
  %i.t = shl nsw i16 %i.s, 7
  %i.u = srem i32 %i.l, 100
  %i.v = trunc nsw i32 %i.u to i16
  %i.w = shl i16 %i.v, 11
  %.masked.i = and i16 %i.t, 1920
  %i.x = or disjoint i16 %i.p, %.masked.i
  %i.y = or disjoint i16 %i.x, %i.w
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i16 %i.y, ptr %i.z, align 4, !tbaa !326
  br label %bb.w

bb.e:                                             ; preds = %bb.c
  %i.aa = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef %3, ptr noundef nonnull @.str.55, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #4
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %bb.f, label %bb.w

bb.f:                                             ; preds = %bb.e
  %i.ac = load i32, ptr %i.b, align 4, !tbaa !323 ; 2 uses
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %bb.w, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.af = load i16, ptr %i.ae, align 4, !tbaa !339
  %i.ag = sext i16 %i.af to i32
  %.not = icmp slt i32 %i.ac, %i.ag
  br i1 %.not, label %bb.h, label %bb.w

bb.h:                                             ; preds = %bb.g
  %i.ah = load i32, ptr %i.c, align 4, !tbaa !323
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds i8, ptr %3, i64 %i.ai
end_hunk_6
begin_hunk_7_@_ZL29TableSettingsHandler_ReadLineP12ImGuiContextP20ImGuiSettingsHandlerPvPKc:bb.a
  %i.bx = or i32 %i.bw, 1
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !340
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.2 = phi ptr [ %i.bq, %bb.m ], [ %.1, %bb.l ]  ; 3 uses
  %i.by = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef %.2, ptr noundef nonnull @.str.59, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c) #4
  %i.bz = icmp eq i32 %i.by, 1
  br i1 %i.bz, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ca = load i32, ptr %i.c, align 4, !tbaa !323
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds i8, ptr %.2, i64 %i.cb
  %i.cd = call noundef ptr @_Z14ImStrSkipBlankPKc(ptr noundef %i.cc)
  %i.ce = load i32, ptr %i.d, align 4, !tbaa !323
  %i.cf = trunc i32 %i.ce to i8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ao, i64 14 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 2
  %i.ci = shl i8 %i.cf, 2
  %i.cj = and i8 %i.ci, 12
  %i.ck = and i8 %i.ch, -13
  %i.cl = or disjoint i8 %i.cj, %i.ck
  store i8 %i.cl, ptr %i.cg, align 2
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !340
  %i.co = or i32 %i.cn, 4
  store i32 %i.co, ptr %i.cm, align 4, !tbaa !340
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.3 = phi ptr [ %i.cd, %bb.o ], [ %.2, %bb.n ]  ; 3 uses
  %i.cp = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef %.3, ptr noundef nonnull @.str.60, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c) #4
  %i.cq = icmp eq i32 %i.cp, 1
  br i1 %i.cq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cr = load i32, ptr %i.c, align 4, !tbaa !323
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds i8, ptr %.3, i64 %i.cs
  %i.cu = call noundef ptr @_Z14ImStrSkipBlankPKc(ptr noundef %i.ct)
  %i.cv = load i32, ptr %i.d, align 4, !tbaa !323
  %i.cw = trunc i32 %i.cv to i16
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ao, i64 10
  store i16 %i.cw, ptr %i.cx, align 2, !tbaa !608
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !340
  %i.da = or i32 %i.cz, 2
  store i32 %i.da, ptr %i.cy, align 4, !tbaa !340
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.4 = phi ptr [ %i.cu, %bb.q ], [ %.3, %bb.p ]  ; 3 uses
  %i.db = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef %.4, ptr noundef nonnull @.str.61, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.c) #4
  %i.dc = icmp eq i32 %i.db, 2
  br i1 %i.dc, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dd = load i32, ptr %i.c, align 4, !tbaa !323
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds i8, ptr %.4, i64 %i.de
  %i.dg = call noundef ptr @_Z14ImStrSkipBlankPKc(ptr noundef %i.df)
  %i.dh = load i32, ptr %i.d, align 4, !tbaa !323
  %i.di = trunc i32 %i.dh to i16
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  store i16 %i.di, ptr %i.dj, align 4, !tbaa !469
  %i.dk = load i8, ptr %i.e, align 1, !tbaa !326
  %i.dl = icmp eq i8 %i.dk, 94
  %i.dm = select i1 %i.dl, i8 2, i8 1
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ao, i64 14 ; 2 uses
  %i.do = load i8, ptr %i.dn, align 2
  %i.dp = and i8 %i.do, -4
  %i.dq = or disjoint i8 %i.dp, %i.dm
  store i8 %i.dq, ptr %i.dn, align 2
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !340
  %i.dt = or i32 %i.ds, 8
  store i32 %i.dt, ptr %i.dr, align 4, !tbaa !340
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.5 = phi ptr [ %i.dg, %bb.s ], [ %.4, %bb.r ]  ; 2 uses
  %i.du = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef %.5, ptr noundef nonnull @.str.62, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c) #4
  %i.dv = icmp eq i32 %i.du, 1
  br i1 %i.dv, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dw = load i32, ptr %i.c, align 4, !tbaa !323
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds i8, ptr %.5, i64 %i.dx
  %i.dz = call noundef ptr @_Z14ImStrSkipBlankPKc(ptr noundef %i.dy) ; 0 uses
  %i.ea = load i32, ptr %i.d, align 4, !tbaa !323
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !466
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  br label %bb.w

bb.w:                                             ; preds = %bb.e, %bb.v, %bb.f, %bb.g, %bb.d, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL29TableSettingsHandler_ApplyAllP12ImGuiContextP20ImGuiSettingsHandler(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9032
  %i.b = load i32, ptr %i.a, align 8, !tbaa !671  ; 4 uses
  %.not11 = icmp eq i32 %i.b, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9040
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !672  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9024 ; 3 uses
  %i.f = zext i32 %i.b to i64                     ; 2 uses
  %xtraiter = and i64 %i.f, 1
  %i.g = icmp eq i32 %i.b, 1
  br i1 %i.g, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.f, 4294967294
  br label %bb.c

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod16 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod16)
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv.epil.init
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !326  ; 2 uses
  %i.k = icmp eq i32 %i.j, -1
  %i.l = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not910.epil = icmp eq ptr %i.l, null
  %.not9.epil = select i1 %i.k, i1 true, i1 %.not910.epil
  br i1 %.not9.epil, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.epil.preheader
  %i.m = sext i32 %i.j to i64
  %i.n = getelementptr inbounds [592 x i8], ptr %i.l, i64 %i.m ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 577
  store i8 1, ptr %i.o, align 1, !tbaa !307
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 100
  store i32 -1, ptr %i.p, align 4, !tbaa !309
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.b, %.epil.preheader, %bb.a
  ret void

bb.c:                                             ; preds = %bb.g, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.g ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.g ]
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !326  ; 2 uses
  %i.t = icmp eq i32 %i.s, -1
  %i.u = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not910 = icmp eq ptr %i.u, null
  %.not9 = select i1 %i.t, i1 true, i1 %.not910
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = sext i32 %i.s to i64
  %i.w = getelementptr inbounds [592 x i8], ptr %i.u, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 577
  store i8 1, ptr %i.x, align 1, !tbaa !307
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 100
  store i32 -1, ptr %i.y, align 4, !tbaa !309
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !326 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, -1
  %i.ad = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not910.1 = icmp eq ptr %i.ad, null
  %.not9.1 = select i1 %i.ac, i1 true, i1 %.not910.1
  br i1 %.not9.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = sext i32 %i.ab to i64
  %i.af = getelementptr inbounds [592 x i8], ptr %i.ad, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 577
  store i8 1, ptr %i.ag, align 1, !tbaa !307
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 100
  store i32 -1, ptr %i.ah, align 4, !tbaa !309
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !680
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL29TableSettingsHandler_WriteAllP12ImGuiContextP20ImGuiSettingsHandlerP15ImGuiTextBuffer(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10120
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 10128 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !335  ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %select.unfold._crit_edge, label %.lr.ph87

.lr.ph87:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 133
  br label %bb.b

select.unfold._crit_edge:                         ; preds = %select.unfold, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph87, %select.unfold
  %i.h = phi ptr [ %i.c, %.lr.ph87 ], [ %i.ck, %select.unfold ]
  %.06585 = phi ptr [ %i.d, %.lr.ph87 ], [ %i.co, %select.unfold ] ; 9 uses
  %i.i = load i32, ptr %.06585, align 4, !tbaa !336 ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.06585, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !340  ; 6 uses
  %i.m = trunc i32 %i.l to i1
  %i.n = and i32 %i.l, 4
  %.not72 = icmp eq i32 %i.n, 0
  %i.o = and i32 %i.l, 2
  %.not73 = icmp eq i32 %i.o, 0
  %i.p = and i32 %i.l, 8
  %.not70 = icmp eq i32 %i.p, 0
  %i.q = load i32, ptr %2, align 8, !tbaa !610
  %spec.select.i = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.q, i32 1)
  %i.r = add nsw i32 %spec.select.i, 30
  %i.s = getelementptr inbounds nuw i8, ptr %.06585, i64 12 ; 4 uses
  %i.t = load i16, ptr %i.s, align 4, !tbaa !339
  %i.u = sext i16 %i.t to i32                     ; 2 uses
  %i.v = mul nsw i32 %i.u, 50
  %i.w = add nsw i32 %i.r, %i.v                   ; 3 uses
  %i.x = load i32, ptr %i.e, align 4, !tbaa !344
  %.not.i.i = icmp sgt i32 %i.w, %i.x
  br i1 %.not.i.i, label %bb.d, label %_ZN15ImGuiTextBuffer7reserveEi.exit

bb.d:                                             ; preds = %bb.c
  %i.y = sext i32 %i.w to i64
  %i.z = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.y) ; 2 uses
  %i.aa = load ptr, ptr %i.f, align 8, !tbaa !345 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.aa, null
  br i1 %.not6.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = load i32, ptr %2, align 8, !tbaa !346
  %i.ac = sext i32 %i.ab to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr nonnull align 1 %i.aa, i64 %i.ac, i1 false)
  %i.ad = load ptr, ptr %i.f, align 8, !tbaa !345
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.ad)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr %i.z, ptr %i.f, align 8, !tbaa !345
  store i32 %i.w, ptr %i.e, align 4, !tbaa !344
  %.pre = load i32, ptr %.06585, align 4, !tbaa !336
  %.pre88 = load i16, ptr %i.s, align 4, !tbaa !339
  %.pre92 = sext i16 %.pre88 to i32
  br label %_ZN15ImGuiTextBuffer7reserveEi.exit

_ZN15ImGuiTextBuffer7reserveEi.exit:              ; preds = %bb.c, %bb.f
  %.pre-phi = phi i32 [ %i.u, %bb.c ], [ %.pre92, %bb.f ]
  %i.ae = phi i32 [ %i.i, %bb.c ], [ %.pre, %bb.f ]
  %i.af = load ptr, ptr %1, align 8, !tbaa !662
  tail call void (ptr, ptr, ...) @_ZN15ImGuiTextBuffer7appendfEPKcz(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.63, ptr noundef %i.af, i32 noundef %i.ae, i32 noundef %.pre-phi)
  %i.ag = getelementptr inbounds nuw i8, ptr %.06585, i64 8
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !341 ; 2 uses
  %i.ai = fcmp une float %i.ah, 0.000000e+00
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN15ImGuiTextBuffer7reserveEi.exit
  %i.aj = fpext float %i.ah to double
  tail call void (ptr, ptr, ...) @_ZN15ImGuiTextBuffer7appendfEPKcz(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.64, double noundef %i.aj)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN15ImGuiTextBuffer7reserveEi.exit
  %i.ak = load i16, ptr %i.s, align 4, !tbaa !339 ; 2 uses
  %i.al = icmp sgt i16 %i.ak, 0
  br i1 %i.al, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %.06585, i64 20
  %i.an = and i32 %i.l, 15
  %brmerge.not = icmp eq i32 %i.an, 8
  %i.ao = and i32 %i.l, 7
  %or.cond3.not.not = icmp eq i32 %i.ao, 0
  br label %bb.i

._crit_edge:                                      ; preds = %bb.y, %bb.h
  %i.ap = load i8, ptr %i.g, align 1, !tbaa !681, !range !166, !noundef !167
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.z, label %_ZNK15ImGuiPackedDate6UnpackEv.exit.thread

bb.i:                                             ; preds = %.lr.ph, %bb.y
  %i.ar = phi i16 [ %i.ak, %.lr.ph ], [ %i.bv, %bb.y ] ; 2 uses
  %.084 = phi i32 [ 0, %.lr.ph ], [ %i.bw, %bb.y ] ; 2 uses
  %.06483 = phi ptr [ %i.am, %.lr.ph ], [ %i.bx, %bb.y ] ; 10 uses
  br i1 %brmerge.not, label %.split, label %bb.j

.split:                                           ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %.06483, i64 12
  %i.at = load i16, ptr %i.as, align 4, !tbaa !469
  %.not82 = icmp eq i16 %i.at, -1
  br i1 %.not82, label %bb.y, label %bb.k

bb.j:                                             ; preds = %bb.i
  br i1 %or.cond3.not.not, label %bb.y, label %bb.k

bb.k:                                             ; preds = %.split, %bb.j
  tail call void (ptr, ptr, ...) @_ZN15ImGuiTextBuffer7appendfEPKcz(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.65, i32 noundef %.084)
  br i1 %i.m, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %.06483, i64 14 ; 2 uses
  %i.av = load i8, ptr %i.au, align 2             ; 2 uses
  %i.aw = and i8 %i.av, 16
  %.not74 = icmp eq i8 %i.aw, 0
  br i1 %.not74, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = load float, ptr %.06483, align 4, !tbaa !468
  %i.ay = fpext float %i.ax to double
  tail call void (ptr, ptr, ...) @_ZN15ImGuiTextBuffer7appendfEPKcz(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.66, double noundef %i.ay)
  %.pre89 = load i8, ptr %i.au, align 2
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.az = phi i8 [ %i.av, %bb.l ], [ %.pre89, %bb.m ]
  %i.ba = and i8 %i.az, 16
  %.not75 = icmp eq i8 %i.ba, 0
  br i1 %.not75, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.bb = load float, ptr %.06483, align 4, !tbaa !468
  %i.bc = fptosi float %i.bb to i32
  tail call void (ptr, ptr, ...) @_ZN15ImGuiTextBuffer7appendfEPKcz(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.67, i32 noundef %i.bc)
  br label %.critedge

.critedge:                                        ; preds = %bb.k, %bb.o, %bb.n
  br i1 %.not72, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.critedge
  %i.bd = getelementptr inbounds nuw i8, ptr %.06483, i64 14
  %i.be = load i8, ptr %i.bd, align 2
  %i.bf = shl i8 %i.be, 4
  %i.bg = ashr i8 %i.bf, 6
  %i.bh = sext i8 %i.bg to i32
  tail call void (ptr, ptr, ...) @_ZN15ImGuiTextBuffer7appendfEPKcz(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.68, i32 noundef %i.bh)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.critedge
  br i1 %.not73, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bi = getelementptr inbounds nuw i8, ptr %.06483, i64 10
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !608
  %i.bk = sext i16 %i.bj to i32
  tail call void (ptr, ptr, ...) @_ZN15ImGuiTextBuffer7appendfEPKcz(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.69, i32 noundef %i.bk)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  br i1 %.not70, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bl = getelementptr inbounds nuw i8, ptr %.06483, i64 12
  %i.bm = load i16, ptr %i.bl, align 4, !tbaa !469 ; 2 uses
  %.not76 = icmp eq i16 %i.bm, -1
  br i1 %.not76, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bn = sext i16 %i.bm to i32
  %i.bo = getelementptr inbounds nuw i8, ptr %.06483, i64 14
  %i.bp = load i8, ptr %i.bo, align 2
  %i.bq = and i8 %i.bp, 3
  %i.br = icmp eq i8 %i.bq, 1
  %i.bs = select i1 %i.br, i32 118, i32 94
  tail call void (ptr, ptr, ...) @_ZN15ImGuiTextBuffer7appendfEPKcz(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.70, i32 noundef %i.bn, i32 noundef %i.bs)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %i.bt = getelementptr inbounds nuw i8, ptr %.06483, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !466 ; 2 uses
  %.not77 = icmp eq i32 %i.bu, 0
  br i1 %.not77, label %bb.x, label %bb.w

end_hunk_7
begin_hunk_8_@_ZL29TableSettingsHandler_WriteAllP12ImGuiContextP20ImGuiSettingsHandlerP15ImGuiTextBuffer:bb.a
bb.aa:                                            ; preds = %bb.z
  %i.cd = lshr i16 %i.cb, 7
  %i.ce = and i16 %i.cd, 15                       ; 2 uses
  %.not3.i = icmp eq i16 %i.ce, 0
  br i1 %.not3.i, label %_ZNK15ImGuiPackedDate6UnpackEv.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cf = lshr i16 %i.cb, 11                      ; 2 uses
  %.not4.i = icmp eq i16 %i.cf, 0
  br i1 %.not4.i, label %_ZNK15ImGuiPackedDate6UnpackEv.exit.thread, label %_ZNK15ImGuiPackedDate6UnpackEv.exit

_ZNK15ImGuiPackedDate6UnpackEv.exit:              ; preds = %bb.ab
  %narrow.i = add nuw nsw i16 %i.cc, 2000
  %i.cg = zext nneg i16 %narrow.i to i32
  %i.ch = mul nuw nsw i32 %i.cg, 10000
  %narrow5.i = mul nuw nsw i16 %i.ce, 100
  %narrow6.i = add nuw nsw i16 %narrow5.i, %i.cf
  %i.ci = zext nneg i16 %narrow6.i to i32
  %i.cj = add nuw nsw i32 %i.ch, %i.ci
  tail call void (ptr, ptr, ...) @_ZN15ImGuiTextBuffer7appendfEPKcz(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.73, i32 noundef %i.cj)
  br label %_ZNK15ImGuiPackedDate6UnpackEv.exit.thread

_ZNK15ImGuiPackedDate6UnpackEv.exit.thread:       ; preds = %bb.z, %bb.aa, %bb.ab, %_ZNK15ImGuiPackedDate6UnpackEv.exit, %._crit_edge
  tail call void @_ZN15ImGuiTextBuffer6appendEPKcS1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.72, ptr noundef null)
  %.pre91 = load ptr, ptr %i.b, align 8, !tbaa !335
  br label %select.unfold

select.unfold:                                    ; preds = %bb.b, %_ZNK15ImGuiPackedDate6UnpackEv.exit.thread
  %i.ck = phi ptr [ %i.h, %bb.b ], [ %.pre91, %_ZNK15ImGuiPackedDate6UnpackEv.exit.thread ] ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %.06585, i64 -4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !323
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds i8, ptr %.06585, i64 %i.cn ; 2 uses
  %i.cp = load i32, ptr %i.a, align 8, !tbaa !338
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds i8, ptr %i.ck, i64 %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %i.ct = icmp eq ptr %i.co, %i.cs
  br i1 %i.ct, label %select.unfold._crit_edge, label %bb.b
}

declare void @_ZN5ImGui18AddSettingsHandlerEPK20ImGuiSettingsHandler(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui11TableRemoveEP10ImGuiTable(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 9024 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !173  ; 2 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 592                 ; 2 uses
  %i.h = trunc i64 %i.g to i32
  %i.i = load i32, ptr %0, align 8, !tbaa !219
  %sext.i = shl i64 %i.g, 32                      ; 2 uses
  %i.j = ashr exact i64 %sext.i, 32               ; 2 uses
  %i.k = getelementptr inbounds [592 x i8], ptr %i.c, i64 %i.j
  tail call void @_ZN10ImGuiTableD2Ev(ptr noundef nonnull align 8 dead_on_return(592) dereferenceable(592) %i.k) #4
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 9048 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !347
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.o = getelementptr inbounds [592 x i8], ptr %i.n, i64 %i.j
  store i32 %i.m, ptr %i.o, align 4, !tbaa !323
  store i32 %i.h, ptr %i.l, align 8, !tbaa !347
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 9032
  tail call void @_ZN12ImGuiStorage6SetIntEji(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i32 noundef %i.i, i32 noundef -1)
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 9052 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !351
  %i.s = add nsw i32 %i.r, -1
  store i32 %i.s, ptr %i.q, align 4, !tbaa !351
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 9064
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !283
  %i.v = ashr exact i64 %sext.i, 30
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 %i.v
  store float -1.000000e+00, ptr %i.w, align 4, !tbaa !168
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui30TableGcCompactTransientBuffersEP10ImGuiTable(ptr noundef initializes((496, 504), (573, 574), (590, 591)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 496
  store ptr null, ptr %i.b, align 8, !tbaa !521
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !512  ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN8ImVectorI25ImGuiTableColumnSortSpecsE5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 484
  store i32 0, ptr %i.f, align 4, !tbaa !511
  store i32 0, ptr %i.e, align 8, !tbaa !513
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.d)
  store ptr null, ptr %i.c, align 8, !tbaa !512
  br label %_ZN8ImVectorI25ImGuiTableColumnSortSpecsE5clearEv.exit

_ZN8ImVectorI25ImGuiTableColumnSortSpecsE5clearEv.exit: ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 573
  store i8 1, ptr %i.g, align 1, !tbaa !310
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !345  ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZN15ImGuiTextBuffer5clearEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN8ImVectorI25ImGuiTableColumnSortSpecsE5clearEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 404
  store i32 0, ptr %i.k, align 4, !tbaa !344
  store i32 0, ptr %i.j, align 8, !tbaa !346
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.i)
  store ptr null, ptr %i.h, align 8, !tbaa !345
  br label %_ZN15ImGuiTextBuffer5clearEv.exit

_ZN15ImGuiTextBuffer5clearEv.exit:                ; preds = %_ZN8ImVectorI25ImGuiTableColumnSortSpecsE5clearEv.exit, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 590
  store i8 1, ptr %i.l, align 2, !tbaa !289
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.n = load i32, ptr %i.m, align 4, !tbaa !222  ; 3 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN15ImGuiTextBuffer5clearEv.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !291  ; 9 uses
  %wide.trip.count = zext nneg i32 %i.n to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.r = icmp ult i32 %i.n, 8
  br i1 %i.r, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %bb.e

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.7, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod16 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod16)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.d ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.s = getelementptr inbounds nuw [120 x i8], ptr %i.q, i64 %indvars.iv.epil
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 88
  store i16 -1, ptr %i.t, align 4, !tbaa !387
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.d, !llvm.loop !683

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.d, %_ZN15ImGuiTextBuffer5clearEv.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 9024
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !173
  %i.w = ptrtoint ptr %0 to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = sdiv exact i64 %i.y, 592
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 9064
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !283
  %sext = shl i64 %i.z, 32
  %i.ac = ashr exact i64 %sext, 30
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 %i.ac
  store float -1.000000e+00, ptr %i.ad, align 4, !tbaa !168
  ret void

bb.e:                                             ; preds = %bb.e, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.7, %bb.e ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.7, %bb.e ]
  %i.ae = getelementptr inbounds nuw [120 x i8], ptr %i.q, i64 %indvars.iv
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  store i16 -1, ptr %i.af, align 4, !tbaa !387
  %i.ag = getelementptr inbounds nuw [120 x i8], ptr %i.q, i64 %indvars.iv
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 208
  store i16 -1, ptr %i.ah, align 4, !tbaa !387
  %i.ai = getelementptr inbounds nuw [120 x i8], ptr %i.q, i64 %indvars.iv
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 328
  store i16 -1, ptr %i.aj, align 4, !tbaa !387
  %i.ak = getelementptr inbounds nuw [120 x i8], ptr %i.q, i64 %indvars.iv
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 448
  store i16 -1, ptr %i.al, align 4, !tbaa !387
  %i.am = getelementptr inbounds nuw [120 x i8], ptr %i.q, i64 %indvars.iv
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 568
  store i16 -1, ptr %i.an, align 4, !tbaa !387
  %i.ao = getelementptr inbounds nuw [120 x i8], ptr %i.q, i64 %indvars.iv
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 688
  store i16 -1, ptr %i.ap, align 4, !tbaa !387
  %i.aq = getelementptr inbounds nuw [120 x i8], ptr %i.q, i64 %indvars.iv
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 808
  store i16 -1, ptr %i.ar, align 4, !tbaa !387
  %i.as = getelementptr inbounds nuw [120 x i8], ptr %i.q, i64 %indvars.iv
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 928
  store i16 -1, ptr %i.at, align 4, !tbaa !387
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %bb.e, !llvm.loop !684
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui30TableGcCompactTransientBuffersEP18ImGuiTableTempData(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !191  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN8ImVectorI20ImGuiTableHeaderDataE5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.d, align 4, !tbaa !639
  store i32 0, ptr %i.c, align 8, !tbaa !640
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.b)
  store ptr null, ptr %i.a, align 8, !tbaa !191
  br label %_ZN8ImVectorI20ImGuiTableHeaderDataE5clearEv.exit

_ZN8ImVectorI20ImGuiTableHeaderDataE5clearEv.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZN18ImDrawListSplitter15ClearFreeMemoryEv(ptr noundef nonnull align 8 dereferenceable(24) %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float -1.000000e+00, ptr %i.f, align 8, !tbaa !176
  ret void
}

declare void @_ZN18ImDrawListSplitter15ClearFreeMemoryEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui22TableGcCompactSettingsEv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %struct.ImChunkStream.35, align 8   ; 16 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 10120 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 10128 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !335  ; 4 uses
  %.not.i = icmp eq ptr %i.d, null
  %.pre = load i32, ptr %i.b, align 8, !tbaa !338 ; 3 uses
  br i1 %.not.i, label %select.unfold._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = sext i32 %.pre to i64
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  br label %bb.b

select.unfold._crit_edge:                         ; preds = %select.unfold
  %i.i = icmp eq i32 %.1, %.pre
  br i1 %i.i, label %bb.u, label %bb.d

select.unfold._crit_edge.thread:                  ; preds = %bb.a
  %i.j = icmp eq i32 %.pre, 0
  br i1 %i.j, label %bb.u, label %_ZN8ImVectorIcE7reserveEi.exit.thread

_ZN8ImVectorIcE7reserveEi.exit.thread:            ; preds = %select.unfold._crit_edge.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #4
  store i64 0, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %_ZN8ImVectorIcE7reserveEi.exit.select.unfold47._crit_edge_crit_edge

bb.b:                                             ; preds = %.lr.ph, %select.unfold
  %.03054 = phi ptr [ %i.e, %.lr.ph ], [ %i.v, %select.unfold ] ; 4 uses
  %.03153 = phi i32 [ 0, %.lr.ph ], [ %.1, %select.unfold ] ; 2 uses
  %i.l = load i32, ptr %.03054, align 4, !tbaa !336
  %.not37 = icmp eq i32 %i.l, 0
  br i1 %.not37, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.03054, i64 12
  %i.n = load i16, ptr %i.m, align 4, !tbaa !339
  %i.o = sext i16 %i.n to i32
  %i.p = shl nsw i32 %i.o, 4
  %i.q = add i32 %.03153, 20
  %i.r = add i32 %i.q, %i.p
  br label %select.unfold

select.unfold:                                    ; preds = %bb.b, %bb.c
  %.1 = phi i32 [ %i.r, %bb.c ], [ %.03153, %bb.b ] ; 6 uses
  %i.s = getelementptr inbounds i8, ptr %.03054, i64 -4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !323
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds i8, ptr %.03054, i64 %i.u ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.h
  br i1 %i.w, label %select.unfold._crit_edge, label %bb.b

bb.d:                                             ; preds = %select.unfold._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %.not.i38 = icmp sgt i32 %.1, 0
  br i1 %.not.i38, label %bb.e, label %_ZN8ImVectorIcE7reserveEi.exit

bb.e:                                             ; preds = %bb.d
  %i.y = zext nneg i32 %.1 to i64
  %i.z = invoke noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.y)
          to label %.noexc39 unwind label %bb.f   ; 2 uses

.noexc39:                                         ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre60.pre = load ptr, ptr %i.c, align 8, !tbaa !335
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !345
  store i32 %.1, ptr %i.x, align 4, !tbaa !344
  br label %_ZN8ImVectorIcE7reserveEi.exit

_ZN8ImVectorIcE7reserveEi.exit:                   ; preds = %.noexc39, %bb.d
  %.pre.i64 = phi ptr [ %i.z, %.noexc39 ], [ null, %bb.d ] ; 2 uses
  %i.ab = phi i32 [ %.1, %.noexc39 ], [ 0, %bb.d ] ; 2 uses
  %i.ac = phi ptr [ %.pre60.pre, %.noexc39 ], [ %i.d, %bb.d ] ; 3 uses
  %.not.i40 = icmp eq ptr %i.ac, null
  br i1 %.not.i40, label %_ZN8ImVectorIcE7reserveEi.exit.select.unfold47._crit_edge_crit_edge, label %.lr.ph56

_ZN8ImVectorIcE7reserveEi.exit.select.unfold47._crit_edge_crit_edge: ; preds = %_ZN8ImVectorIcE7reserveEi.exit.thread, %_ZN8ImVectorIcE7reserveEi.exit
  %i.ad = phi i32 [ 0, %_ZN8ImVectorIcE7reserveEi.exit.thread ], [ %i.ab, %_ZN8ImVectorIcE7reserveEi.exit ]
  %.pre.i6484 = phi ptr [ null, %_ZN8ImVectorIcE7reserveEi.exit.thread ], [ %.pre.i64, %_ZN8ImVectorIcE7reserveEi.exit ]
  %i.ae = phi ptr [ %i.k, %_ZN8ImVectorIcE7reserveEi.exit.thread ], [ %i.x, %_ZN8ImVectorIcE7reserveEi.exit ]
  %.pre67 = load i32, ptr %i.b, align 8, !tbaa !346
  br label %select.unfold47._crit_edge

.lr.ph56:                                         ; preds = %_ZN8ImVectorIcE7reserveEi.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.h

select.unfold47._crit_edge.loopexit:              ; preds = %select.unfold47
  %.pre68 = load i32, ptr %0, align 8, !tbaa !346
  br label %select.unfold47._crit_edge

select.unfold47._crit_edge:                       ; preds = %_ZN8ImVectorIcE7reserveEi.exit.select.unfold47._crit_edge_crit_edge, %select.unfold47._crit_edge.loopexit
  %i.ag = phi ptr [ %i.ae, %_ZN8ImVectorIcE7reserveEi.exit.select.unfold47._crit_edge_crit_edge ], [ %i.x, %select.unfold47._crit_edge.loopexit ]
  %i.ah = phi ptr [ %.pre.i6484, %_ZN8ImVectorIcE7reserveEi.exit.select.unfold47._crit_edge_crit_edge ], [ %.pre.i62, %select.unfold47._crit_edge.loopexit ]
  %i.ai = phi ptr [ null, %_ZN8ImVectorIcE7reserveEi.exit.select.unfold47._crit_edge_crit_edge ], [ %i.ca, %select.unfold47._crit_edge.loopexit ] ; 3 uses
  %i.aj = phi i32 [ %i.ad, %_ZN8ImVectorIcE7reserveEi.exit.select.unfold47._crit_edge_crit_edge ], [ %i.cb, %select.unfold47._crit_edge.loopexit ]
  %i.ak = phi i32 [ 0, %_ZN8ImVectorIcE7reserveEi.exit.select.unfold47._crit_edge_crit_edge ], [ %.pre68, %select.unfold47._crit_edge.loopexit ]
  %i.al = phi i32 [ %.pre67, %_ZN8ImVectorIcE7reserveEi.exit.select.unfold47._crit_edge_crit_edge ], [ %i.ch, %select.unfold47._crit_edge.loopexit ]
  store i32 %i.ak, ptr %i.b, align 8, !tbaa !346
  store i32 %i.al, ptr %0, align 8, !tbaa !346
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 10124 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !344
  store i32 %i.aj, ptr %i.am, align 4, !tbaa !344
  store i32 %i.an, ptr %i.ag, align 4, !tbaa !344
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ah, ptr %i.c, align 8, !tbaa !345
  store ptr %i.ai, ptr %i.ao, align 8, !tbaa !345
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 9032
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !671 ; 4 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph58, label %._crit_edge

.lr.ph58:                                         ; preds = %select.unfold47._crit_edge
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 9040
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !672 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 9024 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.aq to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.av = icmp eq i32 %i.aq, 1
  br i1 %i.av, label %.epil.preheader, label %.lr.ph58.new

.lr.ph58.new:                                     ; preds = %.lr.ph58
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.p

bb.f:                                             ; preds = %bb.e
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.g:                                             ; preds = %bb.l, %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.h:                                             ; preds = %.lr.ph56, %select.unfold47
  %i.ay = phi ptr [ %i.ac, %.lr.ph56 ], [ %i.ca, %select.unfold47 ]
  %.pre.i = phi ptr [ %.pre.i64, %.lr.ph56 ], [ %.pre.i62, %select.unfold47 ] ; 2 uses
  %i.az = phi i32 [ %i.ab, %.lr.ph56 ], [ %i.cb, %select.unfold47 ] ; 6 uses
  %i.ba = phi i32 [ 0, %.lr.ph56 ], [ %i.cc, %select.unfold47 ] ; 3 uses
  %.02755 = phi ptr [ %i.af, %.lr.ph56 ], [ %i.cg, %select.unfold47 ] ; 5 uses
  %i.bb = load i32, ptr %.02755, align 4, !tbaa !336
  %.not35 = icmp eq i32 %i.bb, 0
  br i1 %.not35, label %select.unfold47, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %.02755, i64 12 ; 2 uses
  %i.bd = load i16, ptr %i.bc, align 4, !tbaa !339 ; 2 uses
  %i.be = sext i16 %i.bd to i32
  %i.bf = shl nsw i32 %i.be, 4
  %i.bg = add nsw i32 %i.bf, 24                   ; 2 uses
  %i.bh = add nsw i32 %i.bg, %i.ba                ; 4 uses
  %i.bi = icmp sgt i32 %i.bh, %i.az
  br i1 %i.bi, label %bb.j, label %._ZN8ImVectorIcE6resizeEi.exit_crit_edge.i

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i = icmp eq i32 %i.az, 0
  br i1 %.not.i.i.i, label %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bj = sdiv i32 %i.az, 2
  %i.bk = add nsw i32 %i.bj, %i.az
  br label %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i.i

_ZNK8ImVectorIcE14_grow_capacityEi.exit.i.i:      ; preds = %bb.k, %bb.j
  %i.bl = phi i32 [ %i.bk, %bb.k ], [ 8, %bb.j ]
  %i.bm = tail call noundef i32 @llvm.smax.i32(i32 %i.bl, i32 %i.bh) ; 3 uses
  %i.bn = sext i32 %i.bm to i64
  %i.bo = invoke noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.bn)
          to label %.noexc42 unwind label %bb.g   ; 3 uses

.noexc42:                                         ; preds = %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i.i
  %i.bp = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !345 ; 3 uses
  %.not6.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not6.i.i.i, label %.noexc43, label %bb.l

bb.l:                                             ; preds = %.noexc42
  %i.bq = load i32, ptr %0, align 8, !tbaa !346
  %i.br = sext i32 %i.bq to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bo, ptr nonnull align 1 %i.bp, i64 %i.br, i1 false)
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.bp)
          to label %.noexc43 unwind label %bb.g

.noexc43:                                         ; preds = %bb.l, %.noexc42
  store ptr %i.bo, ptr %.phi.trans.insert.i, align 8, !tbaa !345
  store i32 %i.bm, ptr %i.x, align 4, !tbaa !344
  %.pre65 = load i16, ptr %i.bc, align 4, !tbaa !339
  br label %._ZN8ImVectorIcE6resizeEi.exit_crit_edge.i

._ZN8ImVectorIcE6resizeEi.exit_crit_edge.i:       ; preds = %bb.i, %.noexc43
  %i.bs = phi i16 [ %.pre65, %.noexc43 ], [ %i.bd, %bb.i ]
  %.pre.i63 = phi ptr [ %i.bo, %.noexc43 ], [ %.pre.i, %bb.i ] ; 2 uses
  %i.bt = phi i32 [ %i.bm, %.noexc43 ], [ %i.az, %bb.i ]
  store i32 %i.bh, ptr %0, align 8, !tbaa !346
  %i.bu = sext i32 %i.ba to i64
  %i.bv = getelementptr inbounds i8, ptr %.pre.i63, i64 %i.bu ; 2 uses
  store i32 %i.bg, ptr %i.bv, align 4, !tbaa !323
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.bx = sext i16 %i.bs to i64
  %i.by = shl nsw i64 %i.bx, 4
  %i.bz = add nsw i64 %i.by, 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bw, ptr noundef nonnull align 4 dereferenceable(1) %.02755, i64 %i.bz, i1 false)
  %.pre66 = load ptr, ptr %i.c, align 8, !tbaa !335
  br label %select.unfold47

select.unfold47:                                  ; preds = %bb.h, %._ZN8ImVectorIcE6resizeEi.exit_crit_edge.i
  %i.ca = phi ptr [ %i.ay, %bb.h ], [ %.pre66, %._ZN8ImVectorIcE6resizeEi.exit_crit_edge.i ] ; 3 uses
  %.pre.i62 = phi ptr [ %.pre.i, %bb.h ], [ %.pre.i63, %._ZN8ImVectorIcE6resizeEi.exit_crit_edge.i ] ; 2 uses
  %i.cb = phi i32 [ %i.az, %bb.h ], [ %i.bt, %._ZN8ImVectorIcE6resizeEi.exit_crit_edge.i ] ; 2 uses
  %i.cc = phi i32 [ %i.ba, %bb.h ], [ %i.bh, %._ZN8ImVectorIcE6resizeEi.exit_crit_edge.i ]
  %i.cd = getelementptr inbounds i8, ptr %.02755, i64 -4
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !323
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds i8, ptr %.02755, i64 %i.cf ; 2 uses
  %i.ch = load i32, ptr %i.b, align 8, !tbaa !338 ; 2 uses
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds i8, ptr %i.ca, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cl = icmp eq ptr %i.cg, %i.ck
  br i1 %i.cl, label %select.unfold47._crit_edge.loopexit, label %bb.h

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.t
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph58
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph58 ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod91 = trunc i32 %i.aq to i1
  tail call void @llvm.assume(i1 %lcmp.mod91)
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %indvars.iv.epil.init
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !326 ; 2 uses
  %i.cp = icmp eq i32 %i.co, -1
  %i.cq = load ptr, ptr %i.au, align 8            ; 2 uses
  %.not3452.epil = icmp eq ptr %i.cq, null
  %.not34.epil = select i1 %i.cp, i1 true, i1 %.not3452.epil
  br i1 %.not34.epil, label %._crit_edge, label %bb.m

bb.m:                                             ; preds = %.epil.preheader
  %i.cr = sext i32 %i.co to i64
  %i.cs = getelementptr inbounds [592 x i8], ptr %i.cq, i64 %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 100
  store i32 -1, ptr %i.ct, align 4, !tbaa !309
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.m, %.epil.preheader, %select.unfold47._crit_edge
  %.not.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i, label %_ZN13ImChunkStreamI18ImGuiTableSettingsED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %._crit_edge
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.ai)
          to label %_ZN13ImChunkStreamI18ImGuiTableSettingsED2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cu = landingpad { ptr, i32 }
          catch ptr null
  %i.cv = extractvalue { ptr, i32 } %i.cu, 0
  tail call void @__clang_call_terminate(ptr %i.cv) #25
  unreachable

_ZN13ImChunkStreamI18ImGuiTableSettingsED2Ev.exit: ; preds = %._crit_edge, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #4
  br label %bb.u

bb.p:                                             ; preds = %bb.t, %.lr.ph58.new
  %indvars.iv = phi i64 [ 0, %.lr.ph58.new ], [ %indvars.iv.next.1, %bb.t ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph58.new ], [ %niter.next.1, %bb.t ]
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %indvars.iv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !326 ; 2 uses
  %i.cz = icmp eq i32 %i.cy, -1
  %i.da = load ptr, ptr %i.au, align 8            ; 2 uses
  %.not3452 = icmp eq ptr %i.da, null
  %.not34 = select i1 %i.cz, i1 true, i1 %.not3452
  br i1 %.not34, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.db = sext i32 %i.cy to i64
  %i.dc = getelementptr inbounds [592 x i8], ptr %i.da, i64 %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 100
  store i32 -1, ptr %i.dd, align 4, !tbaa !309
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %indvars.iv
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !326 ; 2 uses
  %i.dh = icmp eq i32 %i.dg, -1
  %i.di = load ptr, ptr %i.au, align 8            ; 2 uses
  %.not3452.1 = icmp eq ptr %i.di, null
  %.not34.1 = select i1 %i.dh, i1 true, i1 %.not3452.1
  br i1 %.not34.1, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dj = sext i32 %i.dg to i64
  %i.dk = getelementptr inbounds [592 x i8], ptr %i.di, i64 %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 100
  store i32 -1, ptr %i.dl, align 4, !tbaa !309
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.p, !llvm.loop !685

bb.u:                                             ; preds = %select.unfold._crit_edge.thread, %select.unfold._crit_edge, %_ZN13ImChunkStreamI18ImGuiTableSettingsED2Ev.exit
  ret void

bb.v:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.g ], [ %i.aw, %bb.f ]
  call void @_ZN13ImChunkStreamI18ImGuiTableSettingsED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #4
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN13ImChunkStreamI18ImGuiTableSettingsED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !345  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN8ImVectorIcED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.b)
          to label %_ZN8ImVectorIcED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #25
  unreachable

_ZN8ImVectorIcED2Ev.exit:                         ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui14DebugNodeTableEP10ImGuiTable(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %1 = alloca %struct.ImVec2, align 8             ; 4 uses
  %2 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = alloca [512 x i8], align 16              ; 4 uses
  %3 = alloca %struct.ImVec2, align 8             ; 4 uses
  %4 = alloca %struct.ImRect, align 4             ; 7 uses
  %i.b = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load i32, ptr %i.c, align 8, !tbaa !215
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !216
  %i.g = add nsw i32 %i.f, -2
  %.not = icmp slt i32 %i.d, %i.g                 ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef nonnull align 4 dereferenceable(16) ptr @_ZN5ImGui17GetStyleColorVec4Ei(i32 noundef 1)
  tail call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(16) %i.h)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = phi ptr [ @.str.21, %bb.b ], [ @.str.11, %bb.a ]
  %i.j = load i32, ptr %0, align 8, !tbaa !219
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !222
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !221
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !686
  %i.q = tail call noundef zeroext i1 (ptr, ptr, ...) @_ZN5ImGui8TreeNodeEPKvPKcz(ptr noundef nonnull %0, ptr noundef nonnull @.str.20, i32 noundef %i.j, i32 noundef %i.l, ptr noundef %i.p, ptr noundef nonnull %i.i)
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5ImGui13PopStyleColorEi(i32 noundef 1)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = tail call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 0)
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = tail call noundef ptr @_ZN5ImGui21GetForegroundDrawListEv()
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 248
  tail call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jffi(ptr noundef nonnull align 8 dereferenceable(224) %i.s, ptr noundef nonnull align 4 dereferenceable(8) %i.t, ptr noundef nonnull align 4 dereferenceable(8) %i.u, i32 noundef -16711681, float noundef 0.000000e+00, float noundef 1.000000e+00, i32 noundef 0)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = tail call noundef zeroext i1 @_ZN5ImGui13IsItemVisibleEv()
  br i1 %i.v, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 522
  %i.x = load i16, ptr %i.w, align 2, !tbaa !320
  %.not125 = icmp eq i16 %i.x, -1
  br i1 %.not125, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = tail call noundef ptr @_ZN5ImGui21GetForegroundDrawListEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #4
  %i.z = tail call <2 x float> @_ZN5ImGui14GetItemRectMinEv()
  store <2 x float> %i.z, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #4
  %i.aa = tail call <2 x float> @_ZN5ImGui14GetItemRectMaxEv()
  store <2 x float> %i.aa, ptr %2, align 8
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jffi(ptr noundef nonnull align 8 dereferenceable(224) %i.y, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, i32 noundef -16711681, float noundef 0.000000e+00, float noundef 1.000000e+00, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  br i1 %i.q, label %bb.k, label %bb.ag

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.ac = load i16, ptr %i.ab, align 8, !tbaa !217 ; 2 uses
  %i.ad = icmp sgt i16 %i.ac, 0
  br i1 %i.ad, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %narrow = add nuw i16 %i.ac, 1
  %i.ae = zext i16 %narrow to i32
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.22, i32 noundef %i.ae)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !687, !range !166, !noundef !167
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ai = call noundef zeroext i1 @_ZN5ImGui16DebugBreakButtonEPKcS1_(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24)
  br i1 %i.ai, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aj = load i32, ptr %0, align 8, !tbaa !219
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 8992
  store i32 %i.aj, ptr %i.ak, align 8, !tbaa !172
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %i.al = call noundef zeroext i1 @_ZN5ImGui11SmallButtonEPKc(ptr noundef nonnull @.str.25)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.aq = load <2 x float>, ptr %i.am, align 8, !tbaa !168 ; 3 uses
  %i.ar = extractelement <2 x float> %i.aq, i64 0
  %i.as = fpext float %i.ar to double
  %i.at = extractelement <2 x float> %i.aq, i64 1
  %i.au = fpext float %i.at to double
  %i.av = load <2 x float>, ptr %i.ao, align 8, !tbaa !168
  %i.aw = fsub <2 x float> %i.av, %i.aq
  %i.ax = fpext <2 x float> %i.aw to <2 x double> ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !218
  %i.ba = lshr i32 %i.az, 13
  %i.bb = and i32 %i.ba, 7
  %switch.tableidx = add nsw i32 %i.bb, -1        ; 2 uses
  %i.bc = icmp ult i32 %switch.tableidx, 4
  br i1 %i.bc, label %switch.lookup, label %_ZL33DebugNodeTableGetSizingPolicyDesci.exit

switch.lookup:                                    ; preds = %bb.q
  %i.bd = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN5ImGui14DebugNodeTableEP10ImGuiTable, i64 %i.bd
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_ZL33DebugNodeTableGetSizingPolicyDesci.exit

_ZL33DebugNodeTableGetSizingPolicyDesci.exit:     ; preds = %bb.q, %switch.lookup
  %.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.78, %bb.q ]
  %i.be = extractelement <2 x double> %i.ax, i64 0
  %i.bf = extractelement <2 x double> %i.ax, i64 1
  call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.26, double noundef %i.as, double noundef %i.au, double noundef %i.be, double noundef %i.bf, ptr noundef nonnull %.0.i)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bh = load float, ptr %i.bg, align 8, !tbaa !406
  %i.bi = fpext float %i.bh to double
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !531
  %i.bl = fpext float %i.bk to double
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !224 ; 2 uses
  %i.bo = fpext float %i.bn to double
  %i.bp = fcmp oeq float %i.bn, 0.000000e+00
  %i.bq = select i1 %i.bp, ptr @.str.28, ptr @.str.11
  call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.27, double noundef %i.bi, double noundef %i.bl, double noundef %i.bo, ptr noundef nonnull %i.bq)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bs = load float, ptr %i.br, align 8, !tbaa !260
  %i.bt = fpext float %i.bs to double
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !258
  %i.bw = fpext float %i.bv to double
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.by = load float, ptr %i.bx, align 8, !tbaa !259
  %i.bz = fpext float %i.by to double
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !261
  %i.cc = fpext float %i.cb to double
  call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.29, double noundef %i.bt, double noundef %i.bw, double noundef %i.bz, double noundef %i.cc)
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 522
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !320
  %i.cf = sext i16 %i.ce to i32
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 524
  %i.ch = load i16, ptr %i.cg, align 4, !tbaa !319
  %i.ci = sext i16 %i.ch to i32
  call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.30, i32 noundef %i.cf, i32 noundef %i.ci)
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.ck = load i16, ptr %i.cj, align 4, !tbaa !314
  %i.cl = sext i16 %i.ck to i32
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.cn = load i16, ptr %i.cm, align 8, !tbaa !354
  %i.co = sext i16 %i.cn to i32
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 538
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !317
  %i.cr = sext i16 %i.cq to i32
  call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.31, i32 noundef %i.cl, i32 noundef %i.co, i32 noundef %i.cr)
  %i.cs = load i16, ptr %i.ab, align 8, !tbaa !217
  %.not126137 = icmp slt i16 %i.cs, 0
  br i1 %.not126137, label %.preheader136, label %_ZN5ImGui20TableGetInstanceDataEP10ImGuiTablei.exit.peel

_ZN5ImGui20TableGetInstanceDataEP10ImGuiTablei.exit.peel: ; preds = %_ZL33DebugNodeTableGetSizingPolicyDesci.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !410
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 428
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !413
  %i.cy = fpext float %i.cx to double
  call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.32, i32 noundef 0, i32 noundef %i.cv, double noundef %i.cy)
  %i.cz = load i16, ptr %i.ab, align 8, !tbaa !217
  %.not126.not.peel = icmp sgt i16 %i.cz, 0
  br i1 %.not126.not.peel, label %_ZN5ImGui20TableGetInstanceDataEP10ImGuiTablei.exit, label %.preheader136

.preheader136:                                    ; preds = %_ZN5ImGui20TableGetInstanceDataEP10ImGuiTablei.exit, %_ZN5ImGui20TableGetInstanceDataEP10ImGuiTablei.exit.peel, %_ZL33DebugNodeTableGetSizingPolicyDesci.exit
  %i.da = load i32, ptr %i.k, align 4, !tbaa !222 ; 4 uses
  %i.db = icmp sgt i32 %i.da, 0
  br i1 %i.db, label %.lr.ph141, label %._crit_edge

.lr.ph141:                                        ; preds = %.preheader136
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !291 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.da to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.de = icmp eq i32 %i.da, 1
  br i1 %i.de, label %.epil.preheader, label %.lr.ph141.new

.lr.ph141.new:                                    ; preds = %.lr.ph141
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.s

_ZN5ImGui20TableGetInstanceDataEP10ImGuiTablei.exit: ; preds = %_ZN5ImGui20TableGetInstanceDataEP10ImGuiTablei.exit.peel, %_ZN5ImGui20TableGetInstanceDataEP10ImGuiTablei.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN5ImGui20TableGetInstanceDataEP10ImGuiTablei.exit ], [ 1, %_ZN5ImGui20TableGetInstanceDataEP10ImGuiTablei.exit.peel ] ; 4 uses
  %i.df = load ptr, ptr %i.ct, align 8, !tbaa !229
  %i.dg = getelementptr [24 x i8], ptr %i.df, i64 %indvars.iv ; 2 uses
  %i.dh = getelementptr i8, ptr %i.dg, i64 -8
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !410
  %i.dj = getelementptr i8, ptr %i.dg, i64 -20
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !413
  %i.dl = fpext float %i.dk to double
  %i.dm = trunc nuw nsw i64 %indvars.iv to i32
  call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.32, i32 noundef %i.dm, i32 noundef %i.di, double noundef %i.dl)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.dn = load i16, ptr %i.ab, align 8, !tbaa !217
  %i.do = sext i16 %i.dn to i64
  %.not126.not = icmp slt i64 %indvars.iv, %i.do
  br i1 %.not126.not, label %_ZN5ImGui20TableGetInstanceDataEP10ImGuiTablei.exit, label %.preheader136, !llvm.loop !688

.lr.ph144.unr-lcssa:                              ; preds = %bb.w
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph144, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph144.unr-lcssa, %.lr.ph141
  %indvars.iv147.epil.init = phi i64 [ 0, %.lr.ph141 ], [ %indvars.iv.next148.1, %.lr.ph144.unr-lcssa ]
  %.0119139.epil.init = phi float [ 0.000000e+00, %.lr.ph141 ], [ %.1.1, %.lr.ph144.unr-lcssa ] ; 2 uses
  %lcmp.mod159 = trunc i32 %i.da to i1
  call void @llvm.assume(i1 %lcmp.mod159)
  %i.dp = getelementptr inbounds nuw [120 x i8], ptr %i.dd, i64 %indvars.iv147.epil.init ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !362
  %i.dr = and i32 %i.dq, 8
  %.not131.epil = icmp eq i32 %i.dr, 0
  br i1 %.not131.epil, label %.lr.ph144, label %bb.r

bb.r:                                             ; preds = %.epil.preheader
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 28
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !370
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
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !362
  %i.eg = and i32 %i.ef, 8
  %.not131 = icmp eq i32 %i.eg, 0
  br i1 %.not131, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 28
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !370
  %i.ej = fadd float %.0119139, %i.ei
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %.1 = phi float [ %i.ej, %bb.t ], [ %.0119139, %bb.s ] ; 2 uses
  %i.ek = getelementptr inbounds nuw [120 x i8], ptr %i.dd, i64 %indvars.iv147 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 120
  %i.em = load i32, ptr %i.el, align 4, !tbaa !362
  %i.en = and i32 %i.em, 8
  %.not131.1 = icmp eq i32 %i.en, 0
  br i1 %.not131.1, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 148
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !370
  %i.eq = fadd float %.1, %i.ep
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.1.1 = phi float [ %i.eq, %bb.v ], [ %.1, %bb.u ] ; 3 uses
  %indvars.iv.next148.1 = add nuw nsw i64 %indvars.iv147, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph144.unr-lcssa, label %bb.s, !llvm.loop !690

._crit_edge:                                      ; preds = %bb.ac, %.preheader136
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.es = load i32, ptr %i.er, align 4, !tbaa !309 ; 2 uses
  %i.et = icmp eq i32 %i.es, -1
  br i1 %i.et, label %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit.thread, label %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit

_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit: ; preds = %._crit_edge
  %i.eu = load ptr, ptr @GImGui, align 8, !tbaa !8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 10128
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !335 ; 2 uses
  %.not127 = icmp eq ptr %i.ew, null
  br i1 %.not127, label %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit.thread, label %bb.ad

bb.x:                                             ; preds = %.lr.ph144, %bb.ac
  %indvars.iv150 = phi i64 [ 0, %.lr.ph144 ], [ %indvars.iv.next151, %bb.ac ] ; 5 uses
  %i.ex = load ptr, ptr %i.dv, align 8, !tbaa !291
  %i.ey = getelementptr inbounds nuw [120 x i8], ptr %i.ex, i64 %indvars.iv150 ; 23 uses
  %i.ez = load i8, ptr %i.dw, align 1, !tbaa !223, !range !166, !noundef !167
  %i.fa = icmp eq i8 %i.ez, 0
  br i1 %i.fa, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fb = load i16, ptr %i.dx, align 2, !tbaa !271
  %i.fc = sext i16 %i.fb to i64
  %.not.i = icmp slt i64 %indvars.iv150, %i.fc
  br i1 %.not.i, label %bb.z, label %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 88
  %i.fe = load i16, ptr %i.fd, align 4, !tbaa !387 ; 2 uses
  %i.ff = icmp eq i16 %i.fe, -1
  br i1 %i.ff, label %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fg = load ptr, ptr %i.dy, align 8, !tbaa !345
  %i.fh = sext i16 %i.fe to i64
  %i.fi = getelementptr inbounds i8, ptr %i.fg, i64 %i.fh
  br label %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit

_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit: ; preds = %bb.y, %bb.z, %bb.aa
  %.1.i = phi ptr [ @.str.11, %bb.y ], [ %i.fi, %bb.aa ], [ @.str.11, %bb.z ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ey, i64 90
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !327
  %i.fl = sext i16 %i.fk to i32
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 2 uses
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !423 ; 3 uses
  %i.fo = load float, ptr %i.dz, align 8, !tbaa !432 ; 2 uses
  %i.fp = fsub float %i.fn, %i.fo
  %i.fq = fpext float %i.fp to double
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ey, i64 12 ; 2 uses
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !422 ; 3 uses
  %i.ft = fsub float %i.fs, %i.fo
  %i.fu = fpext float %i.ft to double
  %i.fv = load i16, ptr %i.ea, align 4, !tbaa !374
  %i.fw = sext i16 %i.fv to i64
  %i.fx = icmp slt i64 %indvars.iv150, %i.fw
  %i.fy = select i1 %i.fx, ptr @.str.34, ptr @.str.11
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ey, i64 106
  %i.ga = load i8, ptr %i.fz, align 2, !tbaa !333, !range !166, !noundef !167
  %i.gb = zext nneg i8 %i.ga to i32
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ey, i64 109
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !428, !range !166, !noundef !167
  %i.ge = zext nneg i8 %i.gd to i32
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ey, i64 110
  %i.gg = load i8, ptr %i.gf, align 2, !tbaa !429, !range !166, !noundef !167
  %i.gh = zext nneg i8 %i.gg to i32
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ey, i64 111
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !401, !range !166, !noundef !167
  %i.gk = zext nneg i8 %i.gj to i32
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ey, i64 112
  %i.gm = load i8, ptr %i.gl, align 4, !tbaa !430, !range !166, !noundef !167
  %i.gn = zext nneg i8 %i.gm to i32
  %i.go = getelementptr inbounds nuw i8, ptr %i.ey, i64 102
  %i.gp = load i16, ptr %i.go, align 2, !tbaa !490
  %i.gq = zext i16 %i.gp to i32
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ey, i64 104
  %i.gs = load i16, ptr %i.gr, align 4, !tbaa !491
  %i.gt = zext i16 %i.gs to i32
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !365
  %i.gw = fpext float %i.gv to double
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !366
  %i.gz = fpext float %i.gy to double
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ey, i64 20
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !329
  %i.hc = fpext float %i.hb to double
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ey, i64 28
  %i.he = load float, ptr %i.hd, align 4, !tbaa !370 ; 3 uses
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
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !556 ; 2 uses
  %i.hr = fpext float %i.hq to double
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ey, i64 44
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !433 ; 2 uses
  %i.hu = fpext float %i.ht to double
  %i.hv = fsub float %i.ht, %i.hq
  %i.hw = fpext float %i.hv to double
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ey, i64 72
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ey, i64 60
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !393
  %i.ia = load <4 x float>, ptr %i.hx, align 4, !tbaa !168
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
  %i.in = load i16, ptr %i.im, align 2, !tbaa !378
  %i.io = sext i16 %i.in to i32
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ey, i64 115
  %i.iq = load i16, ptr %i.ip, align 1
  %i.ir = lshr i16 %i.iq, 8
  %i.is = and i16 %i.ir, 3                        ; 2 uses
  %i.it = icmp eq i16 %i.is, 1
  %i.iu = icmp eq i16 %i.is, 2
  %i.iv = select i1 %i.iu, ptr @.str.36, ptr @.str.11
  %i.iw = select i1 %i.it, ptr @.str.35, ptr %i.iv
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ey, i64 56
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !388
  %i.iz = load i32, ptr %i.ey, align 4, !tbaa !362 ; 4 uses
  %i.ja = and i32 %i.iz, 8
  %.not128 = icmp eq i32 %i.ja, 0
  %i.jb = select i1 %.not128, ptr @.str.11, ptr @.str.37
  %i.jc = and i32 %i.iz, 16
  %.not129 = icmp eq i32 %i.jc, 0
  %i.jd = select i1 %.not129, ptr @.str.11, ptr @.str.38
  %i.je = and i32 %i.iz, 32
  %.not130 = icmp eq i32 %i.je, 0
  %i.jf = select i1 %.not130, ptr @.str.11, ptr @.str.39
  %i.jg = trunc nuw nsw i64 %indvars.iv150 to i32
  %i.jh = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.a, i64 noundef 512, ptr noundef nonnull @.str.33, i32 noundef %i.jg, i32 noundef %i.fl, ptr noundef %.1.i, double noundef %i.fq, double noundef %i.fu, ptr noundef nonnull %i.fy, i32 noundef %i.gb, i32 noundef %i.ge, i32 noundef %i.gh, i32 noundef %i.gk, i32 noundef %i.gn, i32 noundef %i.gq, i32 noundef %i.gt, double noundef %i.gw, double noundef %i.gz, double noundef %i.hc, double noundef %i.hf, double noundef %i.hk, double noundef %i.hl, double noundef %i.hm, double noundef %i.ho, double noundef %i.hr, double noundef %i.hu, double noundef %i.hw, double noundef %i.if, double noundef %i.ih, double noundef %i.ij, double noundef %i.il, i32 noundef %i.io, ptr noundef nonnull %i.iw, i32 noundef %i.iy, i32 noundef %i.iz, ptr noundef nonnull %i.jb, ptr noundef nonnull %i.jd, ptr noundef nonnull %i.jf) ; 0 uses
  call void @_ZN5ImGui6BulletEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #4
  store <2 x float> zeroinitializer, ptr %3, align 8, !tbaa !168
  %i.ji = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull %i.a, i1 noundef zeroext false, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #4
  %i.jj = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 0)
  br i1 %i.jj, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #4
  %i.jk = load float, ptr %i.fm, align 4, !tbaa !423
  %i.jl = load float, ptr %i.an, align 4, !tbaa !414
  %i.jm = load float, ptr %i.fr, align 4, !tbaa !422
  %i.jn = load float, ptr %i.ap, align 4, !tbaa !412
  store float %i.jk, ptr %4, align 4, !tbaa !232
  store float %i.jl, ptr %i.eb, align 4, !tbaa !233
  store float %i.jm, ptr %i.ec, align 4, !tbaa !232
  store float %i.jn, ptr %i.ed, align 4, !tbaa !233
  %i.jo = call noundef ptr @_ZN5ImGui21GetForegroundDrawListEv()
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jffi(ptr noundef nonnull align 8 dereferenceable(224) %i.jo, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %i.ec, i32 noundef -16711681, float noundef 0.000000e+00, float noundef 1.000000e+00, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %i.jp = load i32, ptr %i.k, align 4, !tbaa !222
  %i.jq = sext i32 %i.jp to i64
  %i.jr = icmp slt i64 %indvars.iv.next151, %i.jq
  br i1 %i.jr, label %bb.x, label %._crit_edge, !llvm.loop !691

bb.ad:                                            ; preds = %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit
  %i.js = sext i32 %i.es to i64
  %i.jt = getelementptr inbounds i8, ptr %i.ew, i64 %i.js
  call void @_ZN5ImGui22DebugNodeTableSettingsEP18ImGuiTableSettingsP10ImGuiTable(ptr noundef nonnull %i.jt, ptr noundef nonnull %0)
  br label %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit.thread

_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit.thread: ; preds = %._crit_edge, %bb.ad, %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit
  br i1 %i.al, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit.thread
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 581
  store i8 1, ptr %i.ju, align 1, !tbaa !305
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit.thread
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.ag

end_hunk_8
begin_hunk_9_@_ZN5ImGui10EndColumnsEv:bb.a
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.y = load float, ptr %i.x, align 8, !tbaa !715
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 304
  store float %i.y, ptr %i.z, align 8, !tbaa !528
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aa = and i32 %i.p, 1
  %.not76 = icmp eq i32 %i.aa, 0
  br i1 %.not76, label %bb.f, label %._crit_edge.thread

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 209
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !165, !range !166, !noundef !167
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %._crit_edge.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  %i.af = load float, ptr %i.ae, align 4, !tbaa !714 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 620
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !657 ; 2 uses
  %i.ai = fcmp oge float %i.af, %i.ah
  %i.aj = select i1 %i.ai, float %i.af, float %i.ah ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 628
  %i.al = load float, ptr %i.ak, align 4, !tbaa !727 ; 2 uses
  %i.am = fcmp olt float %i.v, %i.al
  %i.an = select i1 %i.am, float %i.v, float %i.al ; 2 uses
  %i.ao = load i32, ptr %i.i, align 8, !tbaa !698
  %i.ap = icmp sgt i32 %i.ao, 1
  br i1 %i.ap, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 4584
  %.sroa_idx83 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa_idx82 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.au = and i32 %i.p, 2
  %.not79 = icmp eq i32 %i.au, 0
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 712
  %i.aw = fadd float %i.aj, 1.000000e+00
  br label %bb.h

._crit_edge:                                      ; preds = %bb.o
  %.not77.not = icmp eq i32 %.2, -1
  br i1 %.not77.not, label %._crit_edge.thread, label %bb.p

bb.h:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 4 uses
  %.07386 = phi i32 [ -1, %.lr.ph ], [ %.2, %bb.o ] ; 3 uses
  %i.ax = load ptr, ptr %i.aq, align 8, !tbaa !701
  %i.ay = getelementptr inbounds nuw [28 x i8], ptr %i.ax, i64 %indvars.iv
  %i.az = load float, ptr %i.ar, align 8, !tbaa !535
  %i.ba = load ptr, ptr @GImGui, align 8, !tbaa !8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 5312
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !14
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 456
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !693 ; 4 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %_ZN5ImGui15GetColumnOffsetEi.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 104
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !701
  %i.bi = getelementptr inbounds nuw [28 x i8], ptr %i.bh, i64 %indvars.iv
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !702
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 20
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !700 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bn = load float, ptr %i.bm, align 8, !tbaa !699
  %i.bo = fsub float %i.bn, %i.bl
  %i.bp = call noundef float @llvm.fmuladd.f32(float %i.bo, float %i.bj, float %i.bl)
  br label %_ZN5ImGui15GetColumnOffsetEi.exit

_ZN5ImGui15GetColumnOffsetEi.exit:                ; preds = %bb.h, %bb.i
  %.0.i = phi float [ %i.bp, %bb.i ], [ 0.000000e+00, %bb.h ]
  %i.bq = fadd float %i.az, %.0.i                 ; 3 uses
  %i.br = load i32, ptr %i.h, align 8, !tbaa !711
  %i.bs = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.bt = add i32 %i.br, %i.bs                    ; 2 uses
  %i.bu = load float, ptr %i.as, align 8, !tbaa !494
  %i.bv = fmul float %i.bu, 4.000000e+00
  %i.bw = fptosi float %i.bv to i32
  %i.bx = sitofp i32 %i.bw to float               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #4
  %i.by = fsub float %i.bq, %i.bx
  %i.bz = fadd float %i.bq, %i.bx
  store float %i.by, ptr %0, align 4
  store float %i.aj, ptr %.sroa_idx83, align 4
  store float %i.bz, ptr %i.at, align 4
  store float %i.an, ptr %.sroa_idx82, align 4
  %i.ca = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %i.bt, ptr noundef null, i32 noundef 2)
  br i1 %i.ca, label %bb.j, label %bb.o

bb.j:                                             ; preds = %_ZN5ImGui15GetColumnOffsetEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i8 0, ptr %i.a, align 1, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i8 0, ptr %i.b, align 1, !tbaa !325
  br i1 %.not79, label %bb.k, label %.thread107

bb.k:                                             ; preds = %bb.j
  %i.cb = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %i.bt, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 0) ; 0 uses
  %i.cc = load i8, ptr %i.a, align 1, !tbaa !325, !range !166, !noundef !167
  %i.cd = trunc nuw i8 %i.cc to i1
  %i.ce = load i8, ptr %i.b, align 1, !range !166
  %i.cf = trunc nuw i8 %i.ce to i1
  %or.cond = select i1 %i.cd, i1 true, i1 %i.cf
  br i1 %or.cond, label %bb.l, label %.thread107

bb.l:                                             ; preds = %bb.k
  call void @_ZN5ImGui14SetMouseCursorEi(i32 noundef 4)
  %.pre = load i8, ptr %i.b, align 1, !tbaa !325, !range !166
  %i.cg = trunc nuw i8 %.pre to i1
  br i1 %i.cg, label %bb.m, label %.thread107

.thread107:                                       ; preds = %bb.j, %bb.l, %bb.k
  %i.ch = load i8, ptr %i.a, align 1, !range !166
  %i.ci = trunc nuw i8 %i.ch to i1
  %i.cj = select i1 %i.ci, i32 29, i32 28
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !728
  %i.cm = and i32 %i.cl, 2
  %.not80 = icmp eq i32 %i.cm, 0
  %spec.select = select i1 %.not80, i32 %i.bs, i32 %.07386
  br label %bb.n

bb.n:                                             ; preds = %.thread107, %bb.m
  %.1109 = phi i32 [ %spec.select, %bb.m ], [ %.07386, %.thread107 ]
  %i.cn = phi i32 [ 30, %bb.m ], [ %i.cj, %.thread107 ]
  %i.co = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.cn, float noundef 1.000000e+00)
  %i.cp = fptosi float %i.bq to i32
  %i.cq = sitofp i32 %i.cp to float
  %i.cr = load ptr, ptr %i.av, align 8, !tbaa !456
  call void @_ZN10ImDrawList8AddLineVEfffjf(ptr noundef nonnull align 8 dereferenceable(224) %i.cr, float noundef %i.cq, float noundef %i.aw, float noundef %i.an, i32 noundef %i.co, float noundef 1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %bb.o

bb.o:                                             ; preds = %_ZN5ImGui15GetColumnOffsetEi.exit, %bb.n
  %.2 = phi i32 [ %.1109, %bb.n ], [ %.07386, %_ZN5ImGui15GetColumnOffsetEi.exit ] ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cs = load i32, ptr %i.i, align 8, !tbaa !698 ; 4 uses
  %i.ct = sext i32 %i.cs to i64
  %i.cu = icmp slt i64 %indvars.iv.next, %i.ct
  br i1 %i.cu, label %bb.h, label %._crit_edge, !llvm.loop !729

bb.p:                                             ; preds = %._crit_edge
  %i.cv = getelementptr inbounds nuw i8, ptr %i.h, i64 9 ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !706, !range !166, !noundef !167
  %i.cx = trunc nuw i8 %i.cw to i1
  %.not7890 = icmp slt i32 %i.cs, 0
  %or.cond93 = or i1 %.not7890, %i.cx
  br i1 %or.cond93, label %.loopexit, label %.lr.ph92

.lr.ph92:                                         ; preds = %bb.p
  %i.cy = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !701 ; 5 uses
  %i.da = add nuw i32 %i.cs, 1
  %wide.trip.count = zext i32 %i.da to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.db = icmp ult i32 %i.cs, 3
  br i1 %i.db, label %.epil.preheader, label %.lr.ph92.new

.lr.ph92.new:                                     ; preds = %.lr.ph92
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph92.new
  %indvars.iv96 = phi i64 [ 0, %.lr.ph92.new ], [ %indvars.iv.next97.3, %bb.q ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph92.new ], [ %niter.next.3, %bb.q ]
  %i.dc = getelementptr inbounds nuw [28 x i8], ptr %i.cz, i64 %indvars.iv96 ; 2 uses
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !702
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  store float %i.dd, ptr %i.de, align 4, !tbaa !707
  %i.df = getelementptr inbounds nuw [28 x i8], ptr %i.cz, i64 %indvars.iv96 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 28
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !702
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  store float %i.dh, ptr %i.di, align 4, !tbaa !707
  %i.dj = getelementptr inbounds nuw [28 x i8], ptr %i.cz, i64 %indvars.iv96 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 56
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !702
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 60
  store float %i.dl, ptr %i.dm, align 4, !tbaa !707
  %i.dn = getelementptr inbounds nuw [28 x i8], ptr %i.cz, i64 %indvars.iv96 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 84
  %i.dp = load float, ptr %i.do, align 4, !tbaa !702
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 88
  store float %i.dp, ptr %i.dq, align 4, !tbaa !707
  %indvars.iv.next97.3 = add nuw nsw i64 %indvars.iv96, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.q, !llvm.loop !730

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.q
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph92
  %indvars.iv96.epil.init = phi i64 [ 0, %.lr.ph92 ], [ %indvars.iv.next97.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod110 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod110)
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.epil.preheader
  %indvars.iv96.epil = phi i64 [ %indvars.iv96.epil.init, %.epil.preheader ], [ %indvars.iv.next97.epil, %bb.r ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.r ]
  %i.dr = getelementptr inbounds nuw [28 x i8], ptr %i.cz, i64 %indvars.iv96.epil ; 2 uses
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !702
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  store float %i.ds, ptr %i.dt, align 4, !tbaa !707
  %indvars.iv.next97.epil = add nuw nsw i64 %indvars.iv96.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.r, !llvm.loop !731

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.r, %bb.p
  store i8 1, ptr %i.cv, align 1, !tbaa !706
  %i.du = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 5 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 5312
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !14 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 272
  %i.dy = load float, ptr %i.dx, align 8, !tbaa !415
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 5456
  %i.ea = load float, ptr %i.dz, align 8, !tbaa !536
  %i.eb = fsub float %i.dy, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.du, i64 4584
  %i.ed = load float, ptr %i.ec, align 8, !tbaa !494
  %i.ee = fmul float %i.ed, 4.000000e+00
  %i.ef = fptosi float %i.ee to i32
  %i.eg = sitofp i32 %i.ef to float
  %i.eh = fadd float %i.eb, %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dw, i64 40
  %i.ej = load float, ptr %i.ei, align 8, !tbaa !535
  %i.ek = fsub float %i.eh, %i.ej                 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.dw, i64 456
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !693 ; 9 uses
  %i.en = icmp eq ptr %i.em, null                 ; 2 uses
  br i1 %i.en, label %_ZN5ImGui15GetColumnOffsetEi.exit.i, label %bb.s

bb.s:                                             ; preds = %.loopexit
  %i.eo = add nsw i32 %.2, -1
  %i.ep = icmp slt i32 %.2, 1
  br i1 %i.ep, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 12
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !694
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.010.i.i = phi i32 [ %i.er, %bb.t ], [ %i.eo, %bb.s ]
  %i.es = getelementptr inbounds nuw i8, ptr %i.em, i64 104
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !701
  %i.eu = sext i32 %.010.i.i to i64
  %i.ev = getelementptr inbounds [28 x i8], ptr %i.et, i64 %i.eu
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !702
  %i.ex = getelementptr inbounds nuw i8, ptr %i.em, i64 20
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !700 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.fa = load float, ptr %i.ez, align 8, !tbaa !699
  %i.fb = fsub float %i.fa, %i.ey
  %i.fc = call noundef float @llvm.fmuladd.f32(float %i.fb, float %i.ew, float %i.ey)
  br label %_ZN5ImGui15GetColumnOffsetEi.exit.i

_ZN5ImGui15GetColumnOffsetEi.exit.i:              ; preds = %bb.u, %.loopexit
  %.0.i.i = phi float [ %i.fc, %bb.u ], [ 0.000000e+00, %.loopexit ]
  %i.fd = getelementptr inbounds nuw i8, ptr %i.du, i64 3336
  %i.fe = load float, ptr %i.fd, align 8, !tbaa !705 ; 2 uses
  %i.ff = fadd float %.0.i.i, %i.fe               ; 2 uses
  %i.fg = fcmp oge float %i.ek, %i.ff
  %i.fh = select i1 %i.fg, float %i.ek, float %i.ff ; 3 uses
  %i.fi = load i32, ptr %i.o, align 4, !tbaa !704
  %i.fj = and i32 %i.fi, 4
  %.not.i = icmp eq i32 %i.fj, 0
  br i1 %.not.i, label %_ZL22GetDraggedColumnOffsetP15ImGuiOldColumnsi.exit, label %bb.v

bb.v:                                             ; preds = %_ZN5ImGui15GetColumnOffsetEi.exit.i
  br i1 %i.en, label %_ZN5ImGui15GetColumnOffsetEi.exit14.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fk = add nuw nsw i32 %.2, 1
  %i.fl = icmp slt i32 %.2, -1
  br i1 %i.fl, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fm = getelementptr inbounds nuw i8, ptr %i.em, i64 12
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !694
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.010.i12.i = phi i32 [ %i.fn, %bb.x ], [ %i.fk, %bb.w ]
  %i.fo = getelementptr inbounds nuw i8, ptr %i.em, i64 104
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !701
  %i.fq = sext i32 %.010.i12.i to i64
  %i.fr = getelementptr inbounds [28 x i8], ptr %i.fp, i64 %i.fq
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !702
  %i.ft = getelementptr inbounds nuw i8, ptr %i.em, i64 20
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !700 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.fw = load float, ptr %i.fv, align 8, !tbaa !699
  %i.fx = fsub float %i.fw, %i.fu
  %i.fy = call noundef float @llvm.fmuladd.f32(float %i.fx, float %i.fs, float %i.fu)
  br label %_ZN5ImGui15GetColumnOffsetEi.exit14.i

_ZN5ImGui15GetColumnOffsetEi.exit14.i:            ; preds = %bb.y, %bb.v
  %.0.i13.i = phi float [ %i.fy, %bb.y ], [ 0.000000e+00, %bb.v ]
  %i.fz = fsub float %.0.i13.i, %i.fe             ; 2 uses
  %i.ga = fcmp olt float %i.fh, %i.fz
  %i.gb = select i1 %i.ga, float %i.fh, float %i.fz
  br label %_ZL22GetDraggedColumnOffsetP15ImGuiOldColumnsi.exit

_ZL22GetDraggedColumnOffsetP15ImGuiOldColumnsi.exit: ; preds = %_ZN5ImGui15GetColumnOffsetEi.exit.i, %_ZN5ImGui15GetColumnOffsetEi.exit14.i
  %.0.i81 = phi float [ %i.gb, %_ZN5ImGui15GetColumnOffsetEi.exit14.i ], [ %i.fh, %_ZN5ImGui15GetColumnOffsetEi.exit.i ]
  call void @_ZN5ImGui15SetColumnOffsetEif(i32 noundef %.2, float noundef %.0.i81)
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %._crit_edge, %_ZL22GetDraggedColumnOffsetP15ImGuiOldColumnsi.exit, %bb.g, %bb.f, %bb.e
  %.175 = phi i8 [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %._crit_edge ], [ 1, %_ZL22GetDraggedColumnOffsetP15ImGuiOldColumnsi.exit ], [ 0, %bb.g ]
  %i.gc = getelementptr inbounds nuw i8, ptr %i.e, i64 280
  %i.gd = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  store i8 %.175, ptr %i.gd, align 1, !tbaa !706
  %i.ge = getelementptr inbounds nuw i8, ptr %i.e, i64 600 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.e, i64 584
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gf, ptr noundef nonnull align 8 dereferenceable(16) %i.ge, i64 16, i1 false), !tbaa.struct !237
  %i.gg = getelementptr inbounds nuw i8, ptr %i.h, i64 76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ge, ptr noundef nonnull align 4 dereferenceable(16) %i.gg, i64 16, i1 false), !tbaa.struct !237
  store ptr null, ptr %i.g, align 8, !tbaa !693
  %i.gh = getelementptr inbounds nuw i8, ptr %i.e, i64 352
  store float 0.000000e+00, ptr %i.gh, align 8, !tbaa !615
  %i.gi = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.gj = load float, ptr %i.gi, align 8, !tbaa !535
  %i.gk = getelementptr inbounds nuw i8, ptr %i.e, i64 348
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !242
  %i.gm = fadd float %i.gj, %i.gl
  %i.gn = fptosi float %i.gm to i32
  %i.go = sitofp i32 %i.gn to float
  store float %i.go, ptr %i.gc, align 8, !tbaa !502
  call void @_ZN5ImGui39NavUpdateCurrentWindowIsScrollPushableXEv()
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui7ColumnsEiPKcb(i32 noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 206
  store i8 1, ptr %i.d, align 2, !tbaa !141
  %not. = xor i1 %2, true
  %i.e = zext i1 %not. to i32                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 456
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !693  ; 3 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !698
  %i.j = icmp eq i32 %i.i, %0
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !704
  %i.m = icmp eq i32 %i.l, %i.e
  br i1 %i.m, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  tail call void @_ZN5ImGui10EndColumnsEv()
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.d
  %.not12 = icmp eq i32 %0, 1
  br i1 %.not12, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.critedge
  tail call void @_ZN5ImGui12BeginColumnsEPKcii(ptr noundef %1, i32 noundef %0, i32 noundef %i.e)
  br label %bb.f

bb.f:                                             ; preds = %.critedge, %bb.e, %bb.c
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #18 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #4 ; 0 uses
  tail call void @_ZSt9terminatev() #25
  unreachable
end_hunk_9
