Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/sfvscanf?download=true
inline.NumInlined: 11
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._sftab_ = type { [6 x x86_fp80], [6 x x86_fp80], [200 x i8], ptr, ptr, [256 x i8], [256 x i8], [256 x i8] }
%union.Argv_t = type { x86_fp80 }

@_Sftable = external local_unnamed_addr global %struct._sftab_, align 16

; Function Attrs: nounwind uwtable
define i32 @sfvscanf(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1284 x i8], align 16             ; 5 uses
  %2 = alloca %union.Argv_t, align 16             ; 40 uses
  %i.b = alloca [256 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  store ptr %1, ptr %2, align 16, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  br label %.outer873.a

.outer873.a:                                      ; preds = %.outer873.backedge, %bb.a
  %.1631.ph = phi i32 [ -1, %bb.a ], [ %.1631.ph.be, %.outer873.backedge ] ; 6 uses
  %.1577.ph = phi i32 [ 0, %bb.a ], [ %.1577.ph.be, %.outer873.backedge ]
  %.1558.ph = phi i32 [ 0, %bb.a ], [ %.1558.ph.be, %.outer873.backedge ]
  %.1545.ph = phi ptr [ %i.d, %bb.a ], [ %.1545.ph.be, %.outer873.backedge ]
  br label %.outer874

.outer874:                                        ; preds = %.outer873.a, %bb.au
  %.1577.ph875 = phi i32 [ %.1577.ph, %.outer873.a ], [ %spec.select761, %bb.au ] ; 14 uses
  %.1558.ph876 = phi i32 [ %.1558.ph, %.outer873.a ], [ %i.fb, %bb.au ] ; 10 uses
  %.1545.ph877 = phi ptr [ %.1545.ph, %.outer873.a ], [ %i.ai, %bb.au ]
  %i.m = trunc i32 %.1558.ph876 to i8
  %i.n = trunc i32 %.1558.ph876 to i16
  %i.o = sext i32 %.1558.ph876 to i64
  br label %.backedge878

.backedge878:                                     ; preds = %.backedge878.backedge, %.outer874
  %.1545 = phi ptr [ %.1545.ph877, %.outer874 ], [ %i.et, %.backedge878.backedge ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.1545, i64 1 ; 6 uses
  %i.q = load i8, ptr %.1545, align 1, !tbaa !8   ; 3 uses
  switch i8 %i.q, label %gv_isspace.exit.loopexit [
    i8 0, label %.critedge29
    i8 37, label %bb.f
    i8 9, label %bb.b
    i8 10, label %bb.b
    i8 11, label %bb.b
    i8 12, label %bb.b
    i8 13, label %bb.b
    i8 32, label %bb.b
  ]

bb.b:                                             ; preds = %.backedge878, %.backedge878, %.backedge878, %.backedge878, %.backedge878, %.backedge878
  %.not757 = icmp eq i8 %i.q, 10
  %spec.store.select = select i1 %.not757, i32 10, i32 -1 ; 2 uses
  %i.r = call i32 @getc(ptr noundef %0)           ; 4 uses
  %i.s = icmp slt i32 %i.r, 0                     ; 2 uses
  %not.1020 = xor i1 %i.s, true
  %3 = zext i1 %not.1020 to i32
  %.35601021 = add nsw i32 %.1558.ph876, %3       ; 2 uses
  %i.t = icmp eq i32 %i.r, %spec.store.select
  %or.cond7581022 = or i1 %i.s, %i.t
  br i1 %or.cond7581022, label %.outer873.backedge, label %.lr.ph1025

.outer873.backedge:                               ; preds = %gv_isspace.exit773, %bb.b, %bb.c, %.thread845, %bb.es, %gv_isspace.exit
  %.1631.ph.be = phi i32 [ %.24654, %.thread845 ], [ %i.u, %bb.c ], [ %i.r, %bb.b ], [ %i.aa, %gv_isspace.exit ], [ %.24654, %bb.es ], [ %i.v, %gv_isspace.exit773 ]
  %.1577.ph.be = phi i32 [ %.6582, %.thread845 ], [ %.1577.ph875, %bb.c ], [ %.1577.ph875, %bb.b ], [ %.1577.ph875, %gv_isspace.exit ], [ %.6582, %bb.es ], [ %.1577.ph875, %gv_isspace.exit773 ]
  %.1558.ph.be = phi i32 [ %.42, %.thread845 ], [ %.25591023, %bb.c ], [ %.35601021, %bb.b ], [ %.4561, %gv_isspace.exit ], [ %i.op, %bb.es ], [ %.3560, %gv_isspace.exit773 ]
  %.1545.ph.be = phi ptr [ %.15, %.thread845 ], [ %i.p, %bb.c ], [ %i.p, %bb.b ], [ %.2546, %gv_isspace.exit ], [ %.15, %bb.es ], [ %i.p, %gv_isspace.exit773 ]
  br label %.outer873.a, !llvm.loop !12

.lr.ph1025:                                       ; preds = %bb.b, %gv_isspace.exit773
  %.35601024 = phi i32 [ %.3560, %gv_isspace.exit773 ], [ %.35601021, %bb.b ] ; 2 uses
  %i.u = phi i32 [ %i.v, %gv_isspace.exit773 ], [ %i.r, %bb.b ] ; 3 uses
  %.25591023 = phi i32 [ %.35601024, %gv_isspace.exit773 ], [ %.1558.ph876, %bb.b ]
  switch i32 %i.u, label %bb.c [
    i32 9, label %gv_isspace.exit773
    i32 10, label %gv_isspace.exit773
    i32 11, label %gv_isspace.exit773
    i32 12, label %gv_isspace.exit773
    i32 13, label %gv_isspace.exit773
    i32 32, label %gv_isspace.exit773
  ]

gv_isspace.exit773:                               ; preds = %.lr.ph1025, %.lr.ph1025, %.lr.ph1025, %.lr.ph1025, %.lr.ph1025, %.lr.ph1025
  %i.v = call i32 @getc(ptr noundef %0)           ; 4 uses
  %i.w = icmp slt i32 %i.v, 0                     ; 2 uses
  %not. = xor i1 %i.w, true
  %4 = zext i1 %not. to i32
  %.3560 = add nsw i32 %.35601024, %4             ; 2 uses
  %i.x = icmp eq i32 %i.v, %spec.store.select
  %or.cond758 = or i1 %i.w, %i.x
  br i1 %or.cond758, label %.outer873.backedge, label %.lr.ph1025

bb.c:                                             ; preds = %.lr.ph1025
  %i.y = call i32 @ungetc(i32 noundef %i.u, ptr noundef %0) ; 0 uses
  br label %.outer873.backedge

gv_isspace.exit.loopexit:                         ; preds = %.backedge878
  %i.z = sext i8 %i.q to i32
  br label %gv_isspace.exit

gv_isspace.exit:                                  ; preds = %gv_isspace.exit.loopexit, %bb.g
  %i.aa = phi i32 [ 37, %bb.g ], [ %i.z, %gv_isspace.exit.loopexit ] ; 2 uses
  %.2546 = phi ptr [ %i.ag, %bb.g ], [ %i.p, %gv_isspace.exit.loopexit ]
  %i.ab = call i32 @getc(ptr noundef %0)          ; 5 uses
  %i.ac = icmp sgt i32 %i.ab, -1                  ; 2 uses
  %i.ad = zext i1 %i.ac to i32
  %.4561 = add nsw i32 %.1558.ph876, %i.ad
  %.not756 = icmp eq i32 %i.ab, %i.aa
  br i1 %.not756, label %.outer873.backedge, label %bb.d

bb.d:                                             ; preds = %gv_isspace.exit
  br i1 %i.ac, label %bb.e, label %.critedge29

bb.e:                                             ; preds = %bb.d
  %i.ae = call i32 @ungetc(i32 noundef %i.ab, ptr noundef %0) ; 0 uses
  br label %.critedge29

bb.f:                                             ; preds = %.backedge878
  %i.af = load i8, ptr %i.p, align 1, !tbaa !8
  switch i8 %i.af, label %.backedge.preheader [
    i8 37, label %bb.g
    i8 0, label %.critedge29
    i8 42, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %.1545, i64 2
  br label %gv_isspace.exit

bb.h:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %.1545, i64 2
  br label %.backedge.preheader

.backedge.preheader:                              ; preds = %bb.f, %bb.h
  %.1588.ph = phi i32 [ 0, %bb.f ], [ 4096, %bb.h ]
  %.4548.ph = phi ptr [ %i.p, %bb.f ], [ %i.ah, %bb.h ]
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.backedge.preheader
  %.0622 = phi i32 [ 10, %.backedge.preheader ], [ %.0622.be, %.backedge.backedge ] ; 18 uses
  %.0599 = phi i32 [ 0, %.backedge.preheader ], [ %.0599.be, %.backedge.backedge ] ; 18 uses
  %.0594 = phi i64 [ -1, %.backedge.preheader ], [ %.0594.be, %.backedge.backedge ] ; 10 uses
  %.1588 = phi i32 [ %.1588.ph, %.backedge.preheader ], [ %.1588.be, %.backedge.backedge ] ; 25 uses
  %.0584 = phi i32 [ 0, %.backedge.preheader ], [ %.0584.be, %.backedge.backedge ] ; 26 uses
  %.0552 = phi ptr [ null, %.backedge.preheader ], [ %.0552.be, %.backedge.backedge ] ; 13 uses
  %.0550 = phi i64 [ 0, %.backedge.preheader ], [ %.0550.be, %.backedge.backedge ] ; 14 uses
  %.4548 = phi ptr [ %.4548.ph, %.backedge.preheader ], [ %.4548.be, %.backedge.backedge ] ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.4548, i64 1 ; 31 uses
  %i.aj = load i8, ptr %.4548, align 1, !tbaa !8  ; 4 uses
  %i.ak = sext i8 %i.aj to i32                    ; 11 uses
  switch i8 %i.aj, label %bb.ai [
    i8 40, label %.outer
    i8 35, label %bb.r
    i8 46, label %bb.s
    i8 48, label %bb.x
    i8 49, label %bb.x
    i8 50, label %bb.x
    i8 51, label %bb.x
    i8 52, label %bb.x
    i8 53, label %bb.x
    i8 54, label %bb.x
    i8 55, label %bb.x
    i8 56, label %bb.x
    i8 57, label %bb.x
    i8 73, label %bb.y
    i8 108, label %bb.ac
    i8 104, label %bb.ad
    i8 76, label %bb.ae
    i8 106, label %bb.af
    i8 122, label %bb.ag
    i8 116, label %bb.ah
  ]

.outer:                                           ; preds = %.backedge, %.outer.backedge
  %.0573.ph = phi i32 [ %.0573.ph.be, %.outer.backedge ], [ 1, %.backedge ] ; 2 uses
  %.5549.ph = phi ptr [ %i.al, %.outer.backedge ], [ %i.ai, %.backedge ]
  br label %bb.i

bb.i:                                             ; preds = %.outer, %bb.i
  %.5549 = phi ptr [ %i.al, %bb.i ], [ %.5549.ph, %.outer ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.5549, i64 1 ; 7 uses
  %i.am = load i8, ptr %.5549, align 1, !tbaa !8
  switch i8 %i.am, label %bb.i [
    i8 0, label %.backedge.backedge
    i8 40, label %bb.j
    i8 41, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.an = add nsw i32 %.0573.ph, 1
  br label %.outer.backedge

bb.k:                                             ; preds = %bb.i
  %i.ao = add nsw i32 %.0573.ph, -1               ; 2 uses
  %.not723 = icmp eq i32 %i.ao, 0
  br i1 %.not723, label %bb.l, label %.outer.backedge

.outer.backedge:                                  ; preds = %bb.k, %bb.j
  %.0573.ph.be = phi i32 [ %i.ao, %bb.k ], [ %i.an, %bb.j ]
  br label %.outer

bb.l:                                             ; preds = %bb.k
  %i.ap = load i8, ptr %i.ai, align 1, !tbaa !8
  %.not724 = icmp eq i8 %i.ap, 42
  br i1 %.not724, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = ptrtoint ptr %.5549 to i64
  %i.ar = ptrtoint ptr %i.ai to i64
  %i.as = sub i64 %i.aq, %i.ar
  br label %.backedge.backedge

bb.n:                                             ; preds = %bb.l
  store ptr %i.al, ptr %i.c, align 8, !tbaa !28
  store i32 40, ptr %i.e, align 8, !tbaa !29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, i8 0, i64 40, i1 false)
  %i.at = load ptr, ptr %1, align 8, !tbaa !30
  %i.au = call i32 %i.at(ptr noundef nonnull %2, ptr noundef nonnull %1) #8
  %i.av = icmp slt i32 %i.au, 0
  br i1 %i.av, label %.critedge29, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = load ptr, ptr %2, align 16, !tbaa !8    ; 4 uses
  %.not725 = icmp eq ptr %i.aw, null
  br i1 %.not725, label %.backedge.backedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ax = load i64, ptr %i.f, align 8, !tbaa !31
  %i.ay = shl i64 %i.ax, 32
  %i.az = ashr exact i64 %i.ay, 32                ; 2 uses
  %i.ba = icmp slt i64 %i.az, 0
  br i1 %i.ba, label %bb.q, label %.backedge.backedge

bb.q:                                             ; preds = %bb.p
  %i.bb = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aw) #9
  br label %.backedge.backedge

bb.r:                                             ; preds = %.backedge
  %i.bc = or i32 %.1588, 1024
  br label %.backedge.backedge

bb.s:                                             ; preds = %.backedge
  %i.bd = add nsw i32 %.0584, 1                   ; 4 uses
  %i.be = load i8, ptr %i.ai, align 1, !tbaa !8   ; 2 uses
  %i.bf = sext i8 %i.be to i32                    ; 2 uses
  %i.bg = add nsw i32 %i.bf, -48
  %i.bh = icmp ult i32 %i.bg, 10
  br i1 %i.bh, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bi = getelementptr inbounds nuw i8, ptr %.4548, i64 2
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  %i.bj = icmp eq i8 %i.be, 42
  br i1 %i.bj, label %bb.v, label %.backedge.backedge

bb.v:                                             ; preds = %bb.u
  %i.bk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_Sftable, i64 400), align 16, !tbaa !33
  %i.bl = getelementptr inbounds nuw i8, ptr %.4548, i64 2
  %i.bm = call ptr %i.bk(ptr noundef nonnull %i.bl) #8 ; 2 uses
  store ptr %i.bm, ptr %i.c, align 8, !tbaa !28
  store i32 46, ptr %i.e, align 8, !tbaa !29
  %i.bn = sext i32 %i.bd to i64
  store i64 %i.bn, ptr %i.f, align 8, !tbaa !31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  %i.bo = load ptr, ptr %1, align 8, !tbaa !30
  %i.bp = call i32 %i.bo(ptr noundef nonnull %2, ptr noundef nonnull %1) #8
  %i.bq = icmp slt i32 %i.bp, 0
  br i1 %i.bq, label %.critedge29, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.br = load i32, ptr %2, align 16, !tbaa !8
  %spec.store.select1 = call i32 @llvm.smax.i32(i32 %i.br, i32 0)
  br label %.loopexit855

bb.x:                                             ; preds = %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %bb.t
  %.0593 = phi i32 [ %i.bf, %bb.t ], [ %i.ak, %.backedge ], [ %i.ak, %.backedge ], [ %i.ak, %.backedge ], [ %i.ak, %.backedge ], [ %i.ak, %.backedge ], [ %i.ak, %.backedge ], [ %i.ak, %.backedge ], [ %i.ak, %.backedge ], [ %i.ak, %.backedge ], [ %i.ak, %.backedge ]
  %.1585 = phi i32 [ %i.bd, %bb.t ], [ %.0584, %.backedge ], [ %.0584, %.backedge ], [ %.0584, %.backedge ], [ %.0584, %.backedge ], [ %.0584, %.backedge ], [ %.0584, %.backedge ], [ %.0584, %.backedge ], [ %.0584, %.backedge ], [ %.0584, %.backedge ], [ %.0584, %.backedge ] ; 2 uses
  %.6 = phi ptr [ %i.bi, %bb.t ], [ %i.ai, %.backedge ], [ %i.ai, %.backedge ], [ %i.ai, %.backedge ], [ %i.ai, %.backedge ], [ %i.ai, %.backedge ], [ %i.ai, %.backedge ], [ %i.ai, %.backedge ], [ %i.ai, %.backedge ], [ %i.ai, %.backedge ], [ %i.ai, %.backedge ] ; 3 uses
  %i.bs = add nsw i32 %.0593, -48                 ; 2 uses
  %i.bt = load i8, ptr %.6, align 1, !tbaa !8
  %i.bu = sext i8 %i.bt to i32
  %i.bv = add nsw i32 %i.bu, -48                  ; 2 uses
  %i.bw = icmp ult i32 %i.bv, 10
  br i1 %i.bw, label %.lr.ph999, label %.loopexit855

.lr.ph999:                                        ; preds = %bb.x, %.lr.ph999
  %i.bx = phi i32 [ %i.cd, %.lr.ph999 ], [ %i.bv, %bb.x ]
  %.7998 = phi ptr [ %i.ca, %.lr.ph999 ], [ %.6, %bb.x ]
  %.1574997 = phi i32 [ %i.bz, %.lr.ph999 ], [ %i.bs, %bb.x ]
  %i.by = mul nsw i32 %.1574997, 10
  %i.bz = add nsw i32 %i.bx, %i.by                ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.7998, i64 1 ; 3 uses
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !8
  %i.cc = sext i8 %i.cb to i32
  %i.cd = add nsw i32 %i.cc, -48                  ; 2 uses
  %i.ce = icmp ult i32 %i.cd, 10
  br i1 %i.ce, label %.lr.ph999, label %.loopexit855, !llvm.loop !13

.loopexit855:                                     ; preds = %.lr.ph999, %bb.x, %bb.w
  %.2586 = phi i32 [ %i.bd, %bb.w ], [ %.1585, %bb.x ], [ %.1585, %.lr.ph999 ] ; 3 uses
  %.2575 = phi i32 [ %spec.store.select1, %bb.w ], [ %i.bs, %bb.x ], [ %i.bz, %.lr.ph999 ] ; 2 uses
  %.8 = phi ptr [ %i.bm, %bb.w ], [ %.6, %bb.x ], [ %i.ca, %.lr.ph999 ]
  %or.cond = icmp ult i32 %.2586, 2
  %.not = icmp eq i32 %.2586, 2
  %.1623 = select i1 %.not, i32 %.2575, i32 %.0622
  %.1600 = select i1 %or.cond, i32 %.2575, i32 %.0599
  br label %.backedge.backedge
end_hunk_0
begin_hunk_1_@sfvscanf:bb.a
  ]

bb.dz:                                            ; preds = %bb.dy, %bb.dy, %bb.dy
  %.not740 = icmp ne ptr %.0554.le, null          ; 2 uses
  br i1 %.not740, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %i.my = icmp slt i64 %i.ev, 0
  %spec.store.select70 = select i1 %i.my, i64 2147483647, i64 %i.ev
  store ptr %.0554.le, ptr %2, align 16, !tbaa !8
  %i.mz = sext i1 %i.fq to i64
  %spec.select769 = add nsw i64 %spec.store.select70, %i.mz
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %.4598 = phi i64 [ 0, %bb.dz ], [ %spec.select769, %bb.ea ] ; 4 uses
  switch i32 %i.eu, label %bb.ei [
    i32 115, label %.preheader864.preheader
    i32 99, label %.preheader865.preheader
  ]

.preheader865.preheader:                          ; preds = %bb.eb
  %smin = call i32 @llvm.smin.i32(i32 %.2601, i32 1) ; 2 uses
  %i.na = add i32 %smin, -1
  %i.nb = sub i32 %.2601, %smin
  %wide.trip.count = zext i32 %i.nb to i64
  br label %.preheader865

.preheader864.preheader:                          ; preds = %bb.eb
  %smin1153 = call i32 @llvm.smin.i32(i32 %.2601, i32 1) ; 2 uses
  %i.nc = add i32 %smin1153, -1
  %i.nd = sub i32 %.2601, %smin1153
  %wide.trip.count1155 = zext i32 %i.nd to i64
  br label %.preheader864.a

.preheader864.a:                                  ; preds = %.preheader864.preheader, %bb.ee
  %indvars.iv1151 = phi i64 [ 0, %.preheader864.preheader ], [ %indvars.iv.next1152, %bb.ee ] ; 9 uses
  %.17647 = phi i32 [ %.2632, %.preheader864.preheader ], [ %i.ni, %bb.ee ] ; 9 uses
  %.15614 = phi i32 [ %.2601, %.preheader864.preheader ], [ %i.nh, %bb.ee ] ; 7 uses
  %.32 = phi i32 [ %.7564, %.preheader864.preheader ], [ %.33, %bb.ee ] ; 8 uses
  switch i32 %.17647, label %gv_isspace.exit779 [
    i32 9, label %.critedge72
    i32 10, label %.critedge72
    i32 11, label %.critedge72
    i32 12, label %.critedge72
    i32 13, label %.critedge72
    i32 32, label %.critedge72
  ]

gv_isspace.exit779:                               ; preds = %.preheader864.a
  %indvars.iv.next1152 = add nuw nsw i64 %indvars.iv1151, 1 ; 3 uses
  %.not746.not = icmp sgt i64 %.4598, %indvars.iv1151
  br i1 %.not746.not, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %gv_isspace.exit779
  %i.ne = trunc i32 %.17647 to i8
  %i.nf = load ptr, ptr %2, align 16, !tbaa !8    ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 1
  store ptr %i.ng, ptr %2, align 16, !tbaa !8
  store i8 %i.ne, ptr %i.nf, align 1, !tbaa !8
  br label %bb.ed

bb.ed:                                            ; preds = %gv_isspace.exit779, %bb.ec
  %exitcond1156.not = icmp eq i64 %indvars.iv1151, %wide.trip.count1155
  br i1 %exitcond1156.not, label %.critedge72, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.nh = add nsw i32 %.15614, -1                 ; 2 uses
  %i.ni = call i32 @getc(ptr noundef %0)          ; 3 uses
  %i.nj = icmp sgt i32 %i.ni, -1                  ; 2 uses
  %i.nk = zext i1 %i.nj to i32
  %.33 = add nsw i32 %.32, %i.nk                  ; 2 uses
  br i1 %i.nj, label %.preheader864.a, label %.critedge72, !llvm.loop !21

.preheader865:                                    ; preds = %.preheader865.preheader, %bb.eh
  %indvars.iv = phi i64 [ 0, %.preheader865.preheader ], [ %indvars.iv.next, %bb.eh ] ; 3 uses
  %.18648 = phi i32 [ %.2632, %.preheader865.preheader ], [ %i.np, %bb.eh ] ; 2 uses
  %.16615 = phi i32 [ %.2601, %.preheader865.preheader ], [ %i.no, %bb.eh ]
  %.34 = phi i32 [ %.7564, %.preheader865.preheader ], [ %.35, %bb.eh ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %.not745.not = icmp sgt i64 %.4598, %indvars.iv
  br i1 %.not745.not, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %.preheader865
  %i.nl = trunc i32 %.18648 to i8
  %i.nm = load ptr, ptr %2, align 16, !tbaa !8    ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 1
  store ptr %i.nn, ptr %2, align 16, !tbaa !8
  store i8 %i.nl, ptr %i.nm, align 1, !tbaa !8
  br label %bb.eg

bb.eg:                                            ; preds = %.preheader865, %bb.ef
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %.critedge72, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.no = add nsw i32 %.16615, -1                 ; 2 uses
  %i.np = call i32 @getc(ptr noundef %0)          ; 3 uses
  %i.nq = icmp sgt i32 %i.np, -1                  ; 2 uses
  %i.nr = zext i1 %i.nq to i32
  %.35 = add nsw i32 %.34, %i.nr                  ; 2 uses
  br i1 %i.nq, label %.preheader865, label %.critedge72, !llvm.loop !22

bb.ei:                                            ; preds = %bb.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.ns = call fastcc ptr @setclass(ptr noundef %i.et, ptr noundef %i.b)
  %smin1159 = call i32 @llvm.smin.i32(i32 %.2601, i32 1) ; 2 uses
  %i.nt = add i32 %smin1159, -1
  %i.nu = sub i32 %.2601, %smin1159
  %wide.trip.count1162 = zext i32 %i.nu to i64
  br label %bb.ej

bb.ej:                                            ; preds = %bb.eo, %bb.ei
  %indvars.iv1157 = phi i64 [ %indvars.iv.next1158, %bb.eo ], [ 0, %bb.ei ] ; 5 uses
  %.19649 = phi i32 [ %i.oe, %bb.eo ], [ %.2632, %bb.ei ] ; 6 uses
  %.17616 = phi i32 [ %i.od, %bb.eo ], [ %.2601, %bb.ei ] ; 2 uses
  %.36 = phi i32 [ %.37, %bb.eo ], [ %.7564, %bb.ei ] ; 3 uses
  %i.nv = zext nneg i32 %.19649 to i64
  %i.nw = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.nv
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !11, !range !49, !noundef !50
  %i.ny = trunc nuw i8 %i.nx to i1
  br i1 %i.ny, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %.not742 = icmp eq i64 %indvars.iv1157, 0
  %i.nz = and i32 %i.fh, 1024
  %.not743 = icmp eq i32 %i.nz, 0
  %or.cond770 = select i1 %.not742, i1 %.not743, i1 false
  br i1 %or.cond770, label %bb.er, label %.critedge76.thread

bb.el:                                            ; preds = %bb.ej
  %indvars.iv.next1158 = add nuw nsw i64 %indvars.iv1157, 1 ; 3 uses
  %.not744.not = icmp sgt i64 %.4598, %indvars.iv1157
  br i1 %.not744.not, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  %i.oa = trunc i32 %.19649 to i8
  %i.ob = load ptr, ptr %2, align 16, !tbaa !8    ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 1
  store ptr %i.oc, ptr %2, align 16, !tbaa !8
  store i8 %i.oa, ptr %i.ob, align 1, !tbaa !8
  br label %bb.en

bb.en:                                            ; preds = %bb.el, %bb.em
  %exitcond1163.not = icmp eq i64 %indvars.iv1157, %wide.trip.count1162
  br i1 %exitcond1163.not, label %.critedge76.thread, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.od = add nsw i32 %.17616, -1                 ; 2 uses
  %i.oe = call i32 @getc(ptr noundef %0)          ; 3 uses
  %i.of = icmp sgt i32 %i.oe, -1                  ; 2 uses
  %i.og = zext i1 %i.of to i32
  %.37 = add nsw i32 %.36, %i.og                  ; 2 uses
  br i1 %i.of, label %bb.ej, label %.critedge76.thread, !llvm.loop !23

.critedge76.thread:                               ; preds = %bb.en, %bb.eo, %bb.ek
  %.21651.ph = phi i32 [ %.19649, %bb.ek ], [ %.19649, %bb.en ], [ %i.oe, %bb.eo ]
  %.19618.ph = phi i32 [ %.17616, %bb.ek ], [ %i.nt, %bb.en ], [ %i.od, %bb.eo ]
  %.39.ph = phi i32 [ %.36, %bb.ek ], [ %.36, %bb.en ], [ %.37, %bb.eo ]
  %.4.ph.in = phi i64 [ %indvars.iv1157, %bb.ek ], [ %indvars.iv.next1158, %bb.eo ], [ %indvars.iv.next1158, %bb.en ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %.critedge72

.critedge72:                                      ; preds = %bb.eg, %bb.eh, %.preheader864.a, %.preheader864.a, %.preheader864.a, %.preheader864.a, %.preheader864.a, %.preheader864.a, %bb.ed, %bb.ee, %.critedge76.thread
  %.22652 = phi i32 [ %.21651.ph, %.critedge76.thread ], [ %i.ni, %bb.ee ], [ %.17647, %.preheader864.a ], [ %.17647, %.preheader864.a ], [ %.17647, %.preheader864.a ], [ %.17647, %.preheader864.a ], [ %.17647, %.preheader864.a ], [ %.17647, %.preheader864.a ], [ %.17647, %bb.ed ], [ %.18648, %bb.eg ], [ %i.np, %bb.eh ] ; 3 uses
  %.20619 = phi i32 [ %.19618.ph, %.critedge76.thread ], [ %i.nh, %bb.ee ], [ %.15614, %.preheader864.a ], [ %.15614, %.preheader864.a ], [ %.15614, %.preheader864.a ], [ %.15614, %.preheader864.a ], [ %.15614, %.preheader864.a ], [ %.15614, %.preheader864.a ], [ %i.nc, %bb.ed ], [ %i.na, %bb.eg ], [ %i.no, %bb.eh ] ; 3 uses
  %.40 = phi i32 [ %.39.ph, %.critedge76.thread ], [ %.33, %bb.ee ], [ %.32, %.preheader864.a ], [ %.32, %.preheader864.a ], [ %.32, %.preheader864.a ], [ %.32, %.preheader864.a ], [ %.32, %.preheader864.a ], [ %.32, %.preheader864.a ], [ %.32, %bb.ed ], [ %.34, %bb.eg ], [ %.35, %bb.eh ] ; 3 uses
  %.13 = phi ptr [ %i.ns, %.critedge76.thread ], [ %i.et, %.preheader864.a ], [ %i.et, %bb.ee ], [ %i.et, %bb.ed ], [ %i.et, %.preheader864.a ], [ %i.et, %.preheader864.a ], [ %i.et, %.preheader864.a ], [ %i.et, %.preheader864.a ], [ %i.et, %.preheader864.a ], [ %i.et, %bb.eh ], [ %i.et, %bb.eg ] ; 3 uses
  %.5.in = phi i64 [ %.4.ph.in, %.critedge76.thread ], [ %indvars.iv.next1152, %bb.ee ], [ %indvars.iv1151, %.preheader864.a ], [ %indvars.iv1151, %.preheader864.a ], [ %indvars.iv1151, %.preheader864.a ], [ %indvars.iv1151, %.preheader864.a ], [ %indvars.iv1151, %.preheader864.a ], [ %indvars.iv1151, %.preheader864.a ], [ %indvars.iv.next1152, %bb.ed ], [ %indvars.iv.next, %bb.eh ], [ %indvars.iv.next, %bb.eg ]
  %.5 = trunc i64 %.5.in to i32
  %i.oh = icmp sgt i32 %.5, 0
  %or.cond78 = or i1 %i.fs, %i.oh
  %or.cond771 = and i1 %.not740, %or.cond78
  br i1 %or.cond771, label %bb.ep, label %.thread845

bb.ep:                                            ; preds = %.critedge72
  %i.oi = add nsw i32 %.1577.ph875, 1             ; 2 uses
  %i.oj = icmp sgt i64 %.4598, -1
  %or.cond80 = select i1 %i.fq, i1 %i.oj, i1 false
  br i1 %or.cond80, label %bb.eq, label %.thread845

bb.eq:                                            ; preds = %bb.ep
  %i.ok = load ptr, ptr %2, align 16, !tbaa !8
  store i8 0, ptr %i.ok, align 1, !tbaa !8
  br label %.thread845

bb.er:                                            ; preds = %bb.ek
  %i.ol = call i32 @ungetc(i32 noundef %.19649, ptr noundef %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %.critedge29

.thread845:                                       ; preds = %bb.dx, %bb.dw, %bb.dv, %bb.du, %.critedge72, %bb.eq, %bb.ep, %bb.dy, %.critedge, %bb.bx, %bb.bw, %bb.dq, %bb.ds
  %.24654 = phi i32 [ %.2632, %bb.dy ], [ %.16646, %bb.ds ], [ %.16646, %bb.du ], [ %.22652, %.critedge72 ], [ %.16646, %bb.dv ], [ %.22652, %bb.eq ], [ %.16646, %bb.dw ], [ %.22652, %bb.ep ], [ %.16646, %bb.dx ], [ %.5635, %bb.bx ], [ %.16646, %bb.dq ], [ %.5635, %.critedge ], [ %.5635, %bb.bw ] ; 4 uses
  %.22621 = phi i32 [ %.2601, %bb.dy ], [ %.14613, %bb.ds ], [ %.14613, %bb.du ], [ %.20619, %.critedge72 ], [ %.14613, %bb.dv ], [ %.20619, %bb.eq ], [ %.14613, %bb.dw ], [ %.20619, %bb.ep ], [ %.14613, %bb.dx ], [ %.5604, %bb.bx ], [ %.14613, %bb.dq ], [ %.5604, %.critedge ], [ %.5604, %bb.bw ]
  %.6582 = phi i32 [ %.1577.ph875, %bb.dy ], [ %i.ms, %bb.ds ], [ %i.ms, %bb.du ], [ %.1577.ph875, %.critedge72 ], [ %i.ms, %bb.dv ], [ %i.oi, %bb.eq ], [ %i.ms, %bb.dw ], [ %i.oi, %bb.ep ], [ %i.ms, %bb.dx ], [ %i.hh, %bb.bx ], [ %.1577.ph875, %bb.dq ], [ %.1577.ph875, %.critedge ], [ %i.hh, %bb.bw ] ; 2 uses
  %.42 = phi i32 [ %.7564, %bb.dy ], [ %.31, %bb.ds ], [ %.31, %bb.du ], [ %.40, %.critedge72 ], [ %.31, %bb.dv ], [ %.40, %bb.eq ], [ %.31, %bb.dw ], [ %.40, %bb.ep ], [ %.31, %bb.dx ], [ %.12569, %bb.bx ], [ %.31, %bb.dq ], [ %.12569, %.critedge ], [ %.12569, %bb.bw ] ; 2 uses
  %.15 = phi ptr [ %i.et, %bb.dy ], [ %i.et, %bb.ds ], [ %i.et, %bb.du ], [ %.13, %.critedge72 ], [ %i.et, %bb.dv ], [ %.13, %bb.eq ], [ %i.et, %bb.dw ], [ %.13, %bb.ep ], [ %i.et, %bb.dx ], [ %i.et, %bb.bx ], [ %i.et, %bb.dq ], [ %i.et, %.critedge ], [ %i.et, %bb.bw ] ; 2 uses
  %i.om = icmp sgt i32 %.22621, 0
  %i.on = icmp sgt i32 %.24654, -1
  %or.cond82 = and i1 %i.on, %i.om
  br i1 %or.cond82, label %bb.es, label %.outer873.backedge

bb.es:                                            ; preds = %.thread845
  %i.oo = call i32 @ungetc(i32 noundef %.24654, ptr noundef %0) ; 0 uses
  %i.op = add nsw i32 %.42, -1
  br label %.outer873.backedge

.critedge29:                                      ; preds = %bb.cw, %gv_isspace.exit775.thread, %.lr.ph1012, %.backedge878, %bb.f, %bb.ar, %bb.aa, %bb.v, %bb.n, %bb.er, %bb.d, %bb.e, %bb.dd, %bb.cu, %bb.cm, %bb.ca
  %.25655 = phi i32 [ %i.ab, %bb.e ], [ %i.ab, %bb.d ], [ %.1631.ph, %.backedge878 ], [ %.7637.ph, %bb.dd ], [ %.19649, %bb.er ], [ 45, %bb.ca ], [ %.1631.ph, %bb.aa ], [ %.7637.ph, %bb.cm ], [ %.7637.ph, %bb.cu ], [ %i.hr, %.lr.ph1012 ], [ %.1631.ph, %bb.n ], [ %.1631.ph, %bb.v ], [ %.1631.ph, %bb.ar ], [ %.1631.ph, %bb.f ], [ 35, %bb.cw ], [ %.2632, %gv_isspace.exit775.thread ]
  %i.oq = icmp eq i32 %.1577.ph875, 0
  %i.or = icmp slt i32 %.25655, 0
  %or.cond84 = and i1 %i.oq, %i.or
  %spec.store.select89 = select i1 %or.cond84, i32 -1, i32 %.1577.ph875
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %spec.store.select89
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @ungetc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc nonnull ptr @setclass(ptr nofree noundef readonly captures(ret: address, provenance) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 256)) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.b = load i8, ptr %0, align 1, !tbaa !8       ; 2 uses
  %i.c = icmp ne i8 %i.b, 94                      ; 4 uses
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = load i8, ptr %i.a, align 1, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.037 = phi ptr [ %i.d, %bb.b ], [ %i.a, %bb.a ] ; 3 uses
  %.034.in = phi i8 [ %i.e, %bb.b ], [ %i.b, %bb.a ] ; 3 uses
  %i.f = xor i1 %i.c, true
  %i.g = zext i1 %i.f to i8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %1, i8 %i.g, i64 256, i1 false), !tbaa !11
  switch i8 %.034.in, label %._crit_edge [
    i8 93, label %bb.d
    i8 45, label %bb.d
  ]

._crit_edge:                                      ; preds = %bb.c
  %.pre53 = zext i1 %i.c to i8
  br label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.h = zext nneg i8 %.034.in to i64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %i.h
  %i.j = zext i1 %i.c to i8                       ; 2 uses
  store i8 %i.j, ptr %i.i, align 1, !tbaa !11
  %i.k = getelementptr inbounds nuw i8, ptr %.037, i64 1
  %i.l = load i8, ptr %.037, align 1, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %.pre-phi = phi i8 [ %.pre53, %._crit_edge ], [ %i.j, %bb.d ] ; 2 uses
  %.138 = phi ptr [ %.037, %._crit_edge ], [ %i.k, %bb.d ]
  %.135.in = phi i8 [ %.034.in, %._crit_edge ], [ %i.l, %bb.d ]
  br label %bb.f

bb.f:                                             ; preds = %.loopexit, %bb.e
  %.239 = phi ptr [ %.138, %bb.e ], [ %i.ae, %.loopexit ] ; 7 uses
  %.2.in = phi i8 [ %.135.in, %bb.e ], [ %i.ad, %.loopexit ] ; 2 uses
  switch i8 %.2.in, label %bb.j [
    i8 93, label %.loopexit45
    i8 0, label %bb.g
    i8 45, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds i8, ptr %.239, i64 -1
  br label %.loopexit45

bb.h:                                             ; preds = %bb.f
  %i.n = load i8, ptr %.239, align 1, !tbaa !8    ; 4 uses
  %i.o = icmp eq i8 %i.n, 93
  br i1 %i.o, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds i8, ptr %.239, i64 -2
  %i.q = load i8, ptr %i.p, align 1, !tbaa !8     ; 3 uses
  %i.r = icmp ugt i8 %i.q, %i.n
  br i1 %i.r, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.f, %bb.i, %bb.h
  %i.s = zext i8 %.2.in to i64
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.s
  store i8 %.pre-phi, ptr %i.t, align 1, !tbaa !11
  %.pre = load i8, ptr %.239, align 1, !tbaa !8
  br label %.loopexit

bb.k:                                             ; preds = %bb.i
  %i.u = zext i8 %i.q to i32
  %.148 = add nuw nsw i32 %i.u, 1
  %i.v = zext i8 %i.n to i32
  %i.w = icmp samesign ult i32 %.148, %i.v
  br i1 %i.w, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.k
  %i.x = zext i8 %i.q to i64
  %i.y = add nuw nsw i64 %i.x, 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.y, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  store i8 %.pre-phi, ptr %i.z, align 1, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aa = load i8, ptr %.239, align 1, !tbaa !8   ; 2 uses
  %i.ab = zext i8 %i.aa to i64
  %i.ac = icmp samesign ult i64 %indvars.iv.next, %i.ab
  br i1 %i.ac, label %.lr.ph, label %.loopexit, !llvm.loop !51

.loopexit:                                        ; preds = %.lr.ph, %bb.k, %bb.j
  %i.ad = phi i8 [ %.pre, %bb.j ], [ %i.n, %bb.k ], [ %i.aa, %.lr.ph ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.239, i64 1
  br label %bb.f, !llvm.loop !52

.loopexit45:                                      ; preds = %bb.f, %bb.g
  %.036 = phi ptr [ %i.m, %bb.g ], [ %.239, %bb.f ]
  ret ptr %.036
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!4, !4, i64 0}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"_Bool", !4, i64 0}
!11 = !{!10, !10, i64 0}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !9}
!17 = distinct !{!17, !9}
!18 = distinct !{!18, !9}
!19 = distinct !{!19, !9}
!20 = distinct !{!20, !9}
!21 = distinct !{!21, !9}
!22 = distinct !{!22, !9}
!23 = distinct !{!23, !9}
!24 = !{!"any pointer", !4, i64 0}
!25 = !{!"p1 omnipotent char", !24, i64 0}
!26 = !{!"long", !4, i64 0}
!27 = !{!"_sffmt_s", !24, i64 0, !25, i64 8, !5, i64 16, !26, i64 24, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !25, i64 48, !26, i64 56}
!28 = !{!27, !25, i64 8}
!29 = !{!27, !5, i64 16}
!30 = !{!27, !24, i64 0}
!31 = !{!27, !26, i64 24}
!32 = !{!"_sftab_", !4, i64 0, !4, i64 96, !4, i64 192, !25, i64 392, !24, i64 400, !4, i64 408, !4, i64 664, !4, i64 920}
!33 = !{!32, !24, i64 400}
!34 = !{!27, !5, i64 32}
!35 = !{!27, !5, i64 36}
!36 = !{!27, !5, i64 40}
end_hunk_1
