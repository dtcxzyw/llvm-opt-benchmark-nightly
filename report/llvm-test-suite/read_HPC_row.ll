Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/read_HPC_row?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [32 x i8] c"Reading matrix info from %s...\0A\00", align 1, !guid !8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !guid !9
@.str.2 = private unnamed_addr constant [29 x i8] c"Error: Cannot open file: %s\0A\00", align 1, !guid !10
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1, !guid !11
@.str.4 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1, !guid !12
@.str.8 = private unnamed_addr constant [7 x i8] c"%lf %d\00", align 1, !guid !13
@.str.10 = private unnamed_addr constant [12 x i8] c"%lf %lf %lf\00", align 1, !guid !14

; Function Attrs: mustprogress uwtable
define dso_local void @_Z12read_HPC_rowPcPP24HPC_Sparse_Matrix_STRUCTPPdS4_S4_(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #0 !guid !22 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca double, align 8                   ; 8 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca double, align 8                   ; 5 uses
  %i.g = alloca double, align 8                   ; 5 uses
  %i.h = alloca double, align 8                   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %0) ; 0 uses
  %i.j = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.1) ; 10 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef %0) ; 0 uses
  tail call void @exit(i32 noundef 1) #8
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.j, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.a) ; 0 uses
  %i.n = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.j, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.b) ; 0 uses
  %i.o = load i32, ptr %i.a, align 4, !tbaa !7    ; 11 uses
  %i.p = sext i32 %i.o to i64                     ; 2 uses
  %i.q = icmp slt i32 %i.o, 0                     ; 2 uses
  %i.r = shl nsw i64 %i.p, 2
  %i.s = select i1 %i.q, i64 -1, i64 %i.r
  %i.t = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.s) #9 ; 7 uses
  %i.u = shl nsw i64 %i.p, 3
  %i.v = select i1 %i.q, i64 -1, i64 %i.u         ; 6 uses
  %i.w = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.v) #9 ; 8 uses
  %i.x = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.v) #9 ; 8 uses
  %i.y = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.v) #9
  %i.z = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.v) #9
  store ptr %i.z, ptr %2, align 8, !tbaa !25
  %i.aa = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.v) #9
  store ptr %i.aa, ptr %3, align 8, !tbaa !25
  %i.ab = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.v) #9
  store ptr %i.ab, ptr %4, align 8, !tbaa !25
  %i.ac = load i32, ptr %i.a, align 4, !tbaa !7
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %bb.e
  %.0168 = phi i32 [ %.1, %bb.e ], [ 0, %bb.c ]   ; 3 uses
  %.0151167 = phi i32 [ %.1152, %bb.e ], [ 0, %bb.c ] ; 2 uses
  %.0157166 = phi i32 [ %i.ak, %bb.e ], [ 0, %bb.c ] ; 2 uses
  %i.ae = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.j, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.c) ; 0 uses
  %.not.not163 = icmp slt i32 %.0157166, %i.o
  br i1 %.not.not163, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.af = load i32, ptr %i.c, align 4, !tbaa !7   ; 2 uses
  %i.ag = add nsw i32 %i.af, %.0151167
  %i.ah = sext i32 %.0168 to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.ah
  store i32 %i.af, ptr %i.ai, align 4, !tbaa !7
  %i.aj = add nsw i32 %.0168, 1
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %.1152 = phi i32 [ %i.ag, %bb.d ], [ %.0151167, %.lr.ph ] ; 2 uses
  %.1 = phi i32 [ %i.aj, %bb.d ], [ %.0168, %.lr.ph ]
  %i.ak = add nuw nsw i32 %.0157166, 1            ; 2 uses
  %i.al = load i32, ptr %i.a, align 4, !tbaa !7
  %i.am = icmp slt i32 %i.ak, %i.al
  br i1 %i.am, label %.lr.ph, label %._crit_edge, !llvm.loop !15

._crit_edge:                                      ; preds = %bb.e, %bb.c
  %.0151.lcssa = phi i32 [ 0, %bb.c ], [ %.1152, %bb.e ] ; 3 uses
  %i.an = sext i32 %.0151.lcssa to i64            ; 2 uses
  %i.ao = icmp slt i32 %.0151.lcssa, 0            ; 2 uses
  %i.ap = shl nsw i64 %i.an, 3
  %i.aq = select i1 %i.ao, i64 -1, i64 %i.ap
  %i.ar = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.aq) #9 ; 3 uses
  %i.as = shl nsw i64 %i.an, 2
  %i.at = select i1 %i.ao, i64 -1, i64 %i.as
  %i.au = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.at) #9 ; 3 uses
  store ptr %i.ar, ptr %i.w, align 8, !tbaa !25
  store ptr %i.au, ptr %i.x, align 8, !tbaa !28
  %i.av = icmp sgt i32 %i.o, 1
  br i1 %i.av, label %.lr.ph171.preheader, label %.preheader165

.lr.ph171.preheader:                              ; preds = %._crit_edge
  %wide.trip.count = zext nneg i32 %i.o to i64
  %i.aw = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %xtraiter = and i64 %i.aw, 3                    ; 3 uses
  %i.ax = add nsw i32 %i.o, -2
  %i.ay = icmp ult i32 %i.ax, 3
  br i1 %i.ay, label %.lr.ph171.epil.preheader, label %.lr.ph171.preheader.new

.lr.ph171.preheader.new:                          ; preds = %.lr.ph171.preheader
  %unroll_iter = and i64 %i.aw, -4
  br label %.lr.ph171

.preheader165.loopexit.unr-lcssa:                 ; preds = %.lr.ph171
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader165, label %.lr.ph171.epil.preheader

.lr.ph171.epil.preheader:                         ; preds = %.preheader165.loopexit.unr-lcssa, %.lr.ph171.preheader
  %.epil.init = phi ptr [ %i.au, %.lr.ph171.preheader ], [ %i.cr, %.preheader165.loopexit.unr-lcssa ]
  %.epil.init197 = phi ptr [ %i.ar, %.lr.ph171.preheader ], [ %i.cp, %.preheader165.loopexit.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph171.preheader ], [ %indvars.iv.next.3, %.preheader165.loopexit.unr-lcssa ]
  %lcmp.mod198 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod198)
  br label %.lr.ph171.epil

.lr.ph171.epil:                                   ; preds = %.lr.ph171.epil, %.lr.ph171.epil.preheader
  %i.az = phi ptr [ %.epil.init, %.lr.ph171.epil.preheader ], [ %i.bh, %.lr.ph171.epil ]
  %i.ba = phi ptr [ %.epil.init197, %.lr.ph171.epil.preheader ], [ %i.bf, %.lr.ph171.epil ]
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph171.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph171.epil ] ; 4 uses
  %epil.iter = phi i64 [ 0, %.lr.ph171.epil.preheader ], [ %epil.iter.next, %.lr.ph171.epil ]
  %i.bb = getelementptr [4 x i8], ptr %i.t, i64 %indvars.iv.epil
  %i.bc = getelementptr i8, ptr %i.bb, i64 -4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !7
  %i.be = sext i32 %i.bd to i64                   ; 2 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.be ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.epil
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !25
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.be ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.epil
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !28
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader165, label %.lr.ph171.epil, !llvm.loop !16

.preheader165:                                    ; preds = %.preheader165.loopexit.unr-lcssa, %.lr.ph171.epil, %._crit_edge
  %i.bj = load i32, ptr %i.a, align 4, !tbaa !7
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %.lr.ph179, label %._crit_edge180.thread

._crit_edge180.thread:                            ; preds = %.preheader165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #7
  br label %._crit_edge185

.lr.ph171:                                        ; preds = %.lr.ph171, %.lr.ph171.preheader.new
  %i.bl = phi ptr [ %i.au, %.lr.ph171.preheader.new ], [ %i.cr, %.lr.ph171 ]
  %i.bm = phi ptr [ %i.ar, %.lr.ph171.preheader.new ], [ %i.cp, %.lr.ph171 ]
  %indvars.iv = phi i64 [ 1, %.lr.ph171.preheader.new ], [ %indvars.iv.next.3, %.lr.ph171 ] ; 7 uses
  %niter = phi i64 [ 0, %.lr.ph171.preheader.new ], [ %niter.next.3, %.lr.ph171 ]
  %i.bn = getelementptr [4 x i8], ptr %i.t, i64 %indvars.iv
  %i.bo = getelementptr i8, ptr %i.bn, i64 -4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !7
  %i.bq = sext i32 %i.bp to i64                   ; 2 uses
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.bq ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !25
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bq ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bv = getelementptr [4 x i8], ptr %i.t, i64 %indvars.iv.next
  %i.bw = getelementptr i8, ptr %i.bv, i64 -4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !7
  %i.by = sext i32 %i.bx to i64                   ; 2 uses
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.by ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !25
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.by ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.next
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !28
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.cd = getelementptr [4 x i8], ptr %i.t, i64 %indvars.iv.next.1
  %i.ce = getelementptr i8, ptr %i.cd, i64 -4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !7
  %i.cg = sext i32 %i.cf to i64                   ; 2 uses
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.cg ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next.1
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !25
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.cg ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.next.1
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !28
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 3 uses
  %i.cl = getelementptr [4 x i8], ptr %i.t, i64 %indvars.iv.next.2
  %i.cm = getelementptr i8, ptr %i.cl, i64 -4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !7
  %i.co = sext i32 %i.cn to i64                   ; 2 uses
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %i.co ; 3 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next.2
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !25
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.co ; 3 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.next.2
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !28
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader165.loopexit.unr-lcssa, label %.lr.ph171, !llvm.loop !17

.lr.ph179:                                        ; preds = %.preheader165, %.loopexit
  %.2178 = phi i32 [ %.3, %.loopexit ], [ 0, %.preheader165 ] ; 4 uses
  %.2159177 = phi i32 [ %i.do, %.loopexit ], [ 0, %.preheader165 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  %i.ct = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.j, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.e) ; 0 uses
  %.not.not162 = icmp slt i32 %.2159177, %i.o
  %i.cu = load i32, ptr %i.e, align 4, !tbaa !7
  %i.cv = icmp sgt i32 %i.cu, 0                   ; 2 uses
  br i1 %.not.not162, label %.preheader, label %.preheader164

.preheader164:                                    ; preds = %.lr.ph179
  br i1 %i.cv, label %.lr.ph173, label %.loopexit

.preheader:                                       ; preds = %.lr.ph179
  br i1 %i.cv, label %.lr.ph175, label %._crit_edge176

.lr.ph175:                                        ; preds = %.preheader
  %i.cw = sext i32 %.2178 to i64                  ; 2 uses
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.cw
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.cw
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph175, %bb.f
  %indvars.iv187 = phi i64 [ 0, %.lr.ph175 ], [ %indvars.iv.next188, %bb.f ] ; 3 uses
  %i.cz = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.j, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c) ; 0 uses
  %i.da = load double, ptr %i.d, align 8, !tbaa !31
  %i.db = load ptr, ptr %i.cx, align 8, !tbaa !25
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv187
  store double %i.da, ptr %i.dc, align 8, !tbaa !31
  %i.dd = load i32, ptr %i.c, align 4, !tbaa !7
  %i.de = load ptr, ptr %i.cy, align 8, !tbaa !28
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv187
  store i32 %i.dd, ptr %i.df, align 4, !tbaa !7
  %indvars.iv.next188 = add nuw nsw i64 %indvars.iv187, 1 ; 2 uses
  %i.dg = load i32, ptr %i.e, align 4, !tbaa !7
  %i.dh = sext i32 %i.dg to i64
  %i.di = icmp slt i64 %indvars.iv.next188, %i.dh
  br i1 %i.di, label %bb.f, label %._crit_edge176, !llvm.loop !18

._crit_edge176:                                   ; preds = %bb.f, %.preheader
  %i.dj = add nsw i32 %.2178, 1
  br label %.loopexit

.lr.ph173:                                        ; preds = %.preheader164, %.lr.ph173
  %.1156172 = phi i32 [ %i.dl, %.lr.ph173 ], [ 0, %.preheader164 ]
  %i.dk = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.j, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c) ; 0 uses
  %i.dl = add nuw nsw i32 %.1156172, 1            ; 2 uses
  %i.dm = load i32, ptr %i.e, align 4, !tbaa !7
  %i.dn = icmp slt i32 %i.dl, %i.dm
  br i1 %i.dn, label %.lr.ph173, label %.loopexit, !llvm.loop !19

.loopexit:                                        ; preds = %.lr.ph173, %.preheader164, %._crit_edge176
  %.3 = phi i32 [ %i.dj, %._crit_edge176 ], [ %.2178, %.preheader164 ], [ %.2178, %.lr.ph173 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  %i.do = add nuw nsw i32 %.2159177, 1            ; 2 uses
  %i.dp = load i32, ptr %i.a, align 4, !tbaa !7   ; 2 uses
  %i.dq = icmp slt i32 %i.do, %i.dp
  br i1 %i.dq, label %.lr.ph179, label %._crit_edge180, !llvm.loop !20

._crit_edge180:                                   ; preds = %.loopexit
  %i.dr = icmp sgt i32 %i.dp, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #7
  br i1 %i.dr, label %.lr.ph184, label %._crit_edge185

.lr.ph184:                                        ; preds = %._crit_edge180, %bb.i
  %.4182 = phi i32 [ %.5, %bb.i ], [ 0, %._crit_edge180 ] ; 3 uses
  %.3160181 = phi i32 [ %i.ef, %bb.i ], [ 0, %._crit_edge180 ] ; 2 uses
  %.not.not = icmp slt i32 %.3160181, %i.o
  br i1 %.not.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph184
  %i.ds = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.j, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h) ; 0 uses
  %i.dt = load double, ptr %i.f, align 8, !tbaa !31
  %i.du = load ptr, ptr %2, align 8, !tbaa !25
  %i.dv = sext i32 %.4182 to i64                  ; 3 uses
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.du, i64 %i.dv
  store double %i.dt, ptr %i.dw, align 8, !tbaa !31
  %i.dx = load double, ptr %i.g, align 8, !tbaa !31
  %i.dy = load ptr, ptr %3, align 8, !tbaa !25
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.dv
  store double %i.dx, ptr %i.dz, align 8, !tbaa !31
  %i.ea = load double, ptr %i.h, align 8, !tbaa !31
  %i.eb = load ptr, ptr %4, align 8, !tbaa !25
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.eb, i64 %i.dv
  store double %i.ea, ptr %i.ec, align 8, !tbaa !31
  %i.ed = add nsw i32 %.4182, 1
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph184
  %i.ee = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.j, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.5 = phi i32 [ %i.ed, %bb.g ], [ %.4182, %bb.h ]
  %i.ef = add nuw nsw i32 %.3160181, 1            ; 2 uses
  %i.eg = load i32, ptr %i.a, align 4, !tbaa !7
  %i.eh = icmp slt i32 %i.ef, %i.eg
  br i1 %i.eh, label %.lr.ph184, label %._crit_edge185, !llvm.loop !21

._crit_edge185:                                   ; preds = %bb.i, %._crit_edge180.thread, %._crit_edge180
  %i.ei = call i32 @fclose(ptr noundef nonnull %i.j) ; 0 uses
  %i.ej = add nsw i32 %i.o, -1
  %i.ek = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #9 ; 13 uses
  store ptr %i.ek, ptr %1, align 8, !tbaa !33
  store ptr null, ptr %i.ek, align 8, !tbaa !40
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store i32 0, ptr %i.el, align 8, !tbaa !41
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 12
  store i32 %i.ej, ptr %i.em, align 4, !tbaa !42
  %i.en = load i32, ptr %i.a, align 4, !tbaa !7
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store i32 %i.en, ptr %i.eo, align 8, !tbaa !43
  %i.ep = load i64, ptr %i.b, align 8, !tbaa !44
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  store i64 %i.ep, ptr %i.eq, align 8, !tbaa !45
  %i.er = getelementptr inbounds nuw i8, ptr %i.ek, i64 32
  store i32 %i.o, ptr %i.er, align 8, !tbaa !46
  %i.es = getelementptr inbounds nuw i8, ptr %i.ek, i64 36
  store i32 %i.o, ptr %i.es, align 4, !tbaa !47
  %i.et = getelementptr inbounds nuw i8, ptr %i.ek, i64 40
  store i32 %.0151.lcssa, ptr %i.et, align 8, !tbaa !48
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ek, i64 48
  store ptr %i.t, ptr %i.eu, align 8, !tbaa !49
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ek, i64 56
  store ptr %i.w, ptr %i.ev, align 8, !tbaa !50
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ek, i64 64
  store ptr %i.x, ptr %i.ew, align 8, !tbaa !51
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ek, i64 72
  store ptr %i.y, ptr %i.ex, align 8, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #2

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

declare i32 @__isoc23_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1
end_hunk_0
