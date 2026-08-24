Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/equiv?download=true
inline.NumInlined: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cube_struct = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32 }

@cube = external local_unnamed_addr global %struct.cube_struct, align 8
@.str = private unnamed_addr constant [48 x i8] c"# Outputs %d and %d (%s and %s) are equivalent\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"# Outputs %d and NOT %d (%s and %s) are equivalent\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"# Outputs NOT %d and %d (%s and %s) are equivalent\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"# Outputs NOT %d and NOT %d (%s and %s) are equivalent\0A\00", align 1
@str = private unnamed_addr constant [28 x i8] c"# No outputs are equivalent\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @find_equiv_outputs(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 (ptr, ...) @makeup_labels(ptr noundef %0) #6 ; 0 uses
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !8
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 124), align 4, !tbaa !14
  %i.d = sext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.d ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !4
  %i.g = sext i32 %i.f to i64
  %i.h = shl nsw i64 %i.g, 3
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #7 ; 6 uses
  %i.j = load i32, ptr %i.e, align 4, !tbaa !4
  %i.k = sext i32 %i.j to i64
  %i.l = shl nsw i64 %i.k, 3
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #7 ; 6 uses
  %i.n = load i32, ptr %i.e, align 4, !tbaa !4
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

.preheader:                                       ; preds = %bb.b
  %i.q = icmp sgt i32 %i.ai, 1
  br i1 %i.q, label %.lr.ph129, label %._crit_edge.thread

.lr.ph129:                                        ; preds = %.preheader
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.s = phi i64 [ %i.d, %.lr.ph ], [ %i.ag, %bb.b ]
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !15
  %i.u = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.s
  %i.v = load i32, ptr %i.u, align 4, !tbaa !4
  %i.w = trunc nuw nsw i64 %indvars.iv to i32
  %i.x = add nsw i32 %i.v, %i.w
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !16
  %i.z = tail call ptr (ptr, i32, ...) @cof_output(ptr noundef %i.y, i32 noundef %i.x) #6 ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !23
  %i.ab = tail call ptr (ptr, ...) @cube1list(ptr noundef %i.z) #6
  %i.ac = tail call ptr (ptr, ...) @complement(ptr noundef %i.ab) #6
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !8 ; 2 uses
  %i.af = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 124), align 4, !tbaa !14 ; 2 uses
  %i.ag = sext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !4  ; 3 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp slt i64 %indvars.iv.next, %i.aj
  br i1 %i.ak, label %bb.b, label %.preheader

.loopexit121:                                     ; preds = %bb.q, %bb.c
  %.pre153157 = phi i32 [ %.pre153, %bb.c ], [ %i.fm, %bb.q ] ; 2 uses
  %i.al = phi i32 [ %i.aq, %bb.c ], [ %i.fj, %bb.q ] ; 2 uses
  %i.am = phi ptr [ %i.ar, %bb.c ], [ %i.fi, %bb.q ] ; 2 uses
  %.1.lcssa = phi i32 [ %.0128, %bb.c ], [ %.2, %bb.q ] ; 2 uses
  %i.an = add nsw i32 %.pre153157, -1
  %i.ao = sext i32 %i.an to i64
  %i.ap = icmp slt i64 %indvars.iv.next145, %i.ao
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1
  br i1 %i.ap, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %.lr.ph129, %.loopexit121
  %.pre153 = phi i32 [ %i.ai, %.lr.ph129 ], [ %.pre153157, %.loopexit121 ] ; 2 uses
  %i.aq = phi i32 [ %i.af, %.lr.ph129 ], [ %i.al, %.loopexit121 ] ; 2 uses
  %i.ar = phi ptr [ %i.ae, %.lr.ph129 ], [ %i.am, %.loopexit121 ]
  %indvars.iv144 = phi i64 [ 0, %.lr.ph129 ], [ %indvars.iv.next145, %.loopexit121 ] ; 4 uses
  %indvars.iv139 = phi i64 [ 1, %.lr.ph129 ], [ %indvars.iv.next140, %.loopexit121 ] ; 2 uses
  %.0128 = phi i32 [ 0, %.lr.ph129 ], [ %.1.lcssa, %.loopexit121 ] ; 2 uses
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1 ; 3 uses
  %i.as = sext i32 %.pre153 to i64
  %i.at = icmp slt i64 %indvars.iv.next145, %i.as
  br i1 %i.at, label %.lr.ph126, label %.loopexit121

.lr.ph126:                                        ; preds = %bb.c
  %i.au = sext i32 %i.aq to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv144
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !23 ; 8 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 12 ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv144
  %i.ba = trunc nuw nsw i64 %indvars.iv144 to i32 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph126, %bb.q
  %indvars.iv141 = phi i64 [ %indvars.iv139, %.lr.ph126 ], [ %indvars.iv.next142, %bb.q ] ; 4 uses
  %i.bb = phi i64 [ %i.au, %.lr.ph126 ], [ %i.fk, %bb.q ]
  %.1125 = phi i32 [ %.0128, %.lr.ph126 ], [ %.2, %bb.q ]
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !15
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.bb
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !4  ; 2 uses
  %i.bf = add nsw i32 %i.be, %i.ba
  %i.bg = trunc nuw nsw i64 %indvars.iv141 to i32 ; 2 uses
  %i.bh = add nsw i32 %i.be, %i.bg
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv141
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !23 ; 8 uses
  %i.bk = tail call ptr (ptr, ...) @cube1list(ptr noundef %i.aw) #6 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 24 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !24 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 12 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !26
  %i.bp = load i32, ptr %i.bj, align 8, !tbaa !27
  %i.bq = mul nsw i32 %i.bp, %i.bo                ; 2 uses
  %i.br = sext i32 %i.bq to i64
  %.idx.i = shl nsw i64 %i.br, 2
  %i.bs = getelementptr inbounds i8, ptr %i.bm, i64 %.idx.i
  %i.bt = icmp sgt i32 %i.bq, 0
  br i1 %i.bt, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %.039.i = phi ptr [ %i.bx, %bb.e ], [ %i.bm, %bb.d ] ; 2 uses
  %i.bu = tail call i32 (ptr, ptr, ...) @cube_is_covered(ptr noundef %i.bk, ptr noundef %.039.i) #6
  %.not37.i = icmp eq i32 %i.bu, 0
  br i1 %.not37.i, label %.loopexit119, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.bv = load i32, ptr %i.bj, align 8, !tbaa !27
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %.039.i, i64 %i.bw ; 2 uses
  %i.by = icmp ult ptr %i.bx, %i.bs
  br i1 %i.by, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.e, %bb.d
  %i.bz = load ptr, ptr %i.bk, align 8, !tbaa !28 ; 2 uses
  %.not.i = icmp eq ptr %i.bz, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i
  tail call void @free(ptr noundef nonnull %i.bz) #6
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  tail call void @free(ptr noundef nonnull %i.bk) #6
  %i.ca = tail call ptr (ptr, ...) @cube1list(ptr noundef nonnull %i.bj) #6 ; 4 uses
  %i.cb = load ptr, ptr %i.ax, align 8, !tbaa !24 ; 2 uses
  %i.cc = load i32, ptr %i.ay, align 4, !tbaa !26
  %i.cd = load i32, ptr %i.aw, align 8, !tbaa !27
  %i.ce = mul nsw i32 %i.cd, %i.cc                ; 2 uses
  %i.cf = sext i32 %i.ce to i64
  %.idx44.i = shl nsw i64 %i.cf, 2
  %i.cg = getelementptr inbounds i8, ptr %i.cb, i64 %.idx44.i
  %i.ch = icmp sgt i32 %i.ce, 0
  br i1 %i.ch, label %.lr.ph42.i, label %._crit_edge43.i

.lr.ph42.i:                                       ; preds = %bb.g, %bb.h
  %.140.i = phi ptr [ %i.cl, %bb.h ], [ %i.cb, %bb.g ] ; 2 uses
  %i.ci = tail call i32 (ptr, ptr, ...) @cube_is_covered(ptr noundef %i.ca, ptr noundef %.140.i) #6
  %.not36.i = icmp eq i32 %i.ci, 0
  br i1 %.not36.i, label %.loopexit119, label %bb.h

bb.h:                                             ; preds = %.lr.ph42.i
  %i.cj = load i32, ptr %i.aw, align 8, !tbaa !27
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %.140.i, i64 %i.ck ; 2 uses
  %i.cm = icmp ult ptr %i.cl, %i.cg
  br i1 %i.cm, label %.lr.ph42.i, label %._crit_edge43.i

._crit_edge43.i:                                  ; preds = %bb.h, %bb.g
  %i.cn = load ptr, ptr %i.ca, align 8, !tbaa !28 ; 2 uses
  %.not35.i = icmp eq ptr %i.cn, null
  br i1 %.not35.i, label %.sink.split.sink.split, label %.sink.split.sink.split.sink.split

.loopexit119:                                     ; preds = %.lr.ph.i, %.lr.ph42.i
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv141
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !23 ; 6 uses
  %i.cq = tail call ptr (ptr, ...) @cube1list(ptr noundef %i.aw) #6 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !24 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !26
  %i.cv = load i32, ptr %i.cp, align 8, !tbaa !27
  %i.cw = mul nsw i32 %i.cv, %i.cu                ; 2 uses
  %i.cx = sext i32 %i.cw to i64
  %.idx.i82 = shl nsw i64 %i.cx, 2
  %i.cy = getelementptr inbounds i8, ptr %i.cs, i64 %.idx.i82
  %i.cz = icmp sgt i32 %i.cw, 0
  br i1 %i.cz, label %.lr.ph.i92, label %._crit_edge.i83

.lr.ph.i92:                                       ; preds = %.loopexit119, %bb.i
  %.039.i93 = phi ptr [ %i.dd, %bb.i ], [ %i.cs, %.loopexit119 ] ; 2 uses
  %i.da = tail call i32 (ptr, ptr, ...) @cube_is_covered(ptr noundef %i.cq, ptr noundef %.039.i93) #6
  %.not37.i94 = icmp eq i32 %i.da, 0
  br i1 %.not37.i94, label %.loopexit117, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i92
  %i.db = load i32, ptr %i.cp, align 8, !tbaa !27
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds [4 x i8], ptr %.039.i93, i64 %i.dc ; 2 uses
  %i.de = icmp ult ptr %i.dd, %i.cy
  br i1 %i.de, label %.lr.ph.i92, label %._crit_edge.i83

._crit_edge.i83:                                  ; preds = %bb.i, %.loopexit119
  %i.df = load ptr, ptr %i.cq, align 8, !tbaa !28 ; 2 uses
  %.not.i84 = icmp eq ptr %i.df, null
  br i1 %.not.i84, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge.i83
  tail call void @free(ptr noundef nonnull %i.df) #6
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i83
  tail call void @free(ptr noundef nonnull %i.cq) #6
  %i.dg = tail call ptr (ptr, ...) @cube1list(ptr noundef nonnull %i.cp) #6 ; 4 uses
  %i.dh = load ptr, ptr %i.ax, align 8, !tbaa !24 ; 2 uses
  %i.di = load i32, ptr %i.ay, align 4, !tbaa !26
  %i.dj = load i32, ptr %i.aw, align 8, !tbaa !27
  %i.dk = mul nsw i32 %i.dj, %i.di                ; 2 uses
  %i.dl = sext i32 %i.dk to i64
  %.idx44.i85 = shl nsw i64 %i.dl, 2
  %i.dm = getelementptr inbounds i8, ptr %i.dh, i64 %.idx44.i85
  %i.dn = icmp sgt i32 %i.dk, 0
  br i1 %i.dn, label %.lr.ph42.i89, label %._crit_edge43.i86

.lr.ph42.i89:                                     ; preds = %bb.k, %bb.l
  %.140.i90 = phi ptr [ %i.dr, %bb.l ], [ %i.dh, %bb.k ] ; 2 uses
  %i.do = tail call i32 (ptr, ptr, ...) @cube_is_covered(ptr noundef %i.dg, ptr noundef %.140.i90) #6
  %.not36.i91 = icmp eq i32 %i.do, 0
  br i1 %.not36.i91, label %.loopexit117, label %bb.l

bb.l:                                             ; preds = %.lr.ph42.i89
  %i.dp = load i32, ptr %i.aw, align 8, !tbaa !27
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [4 x i8], ptr %.140.i90, i64 %i.dq ; 2 uses
  %i.ds = icmp ult ptr %i.dr, %i.dm
  br i1 %i.ds, label %.lr.ph42.i89, label %._crit_edge43.i86

._crit_edge43.i86:                                ; preds = %bb.l, %bb.k
  %i.dt = load ptr, ptr %i.dg, align 8, !tbaa !28 ; 2 uses
end_hunk_0
