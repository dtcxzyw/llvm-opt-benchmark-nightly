Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/sweep?download=true
inline.NumInlined: 129
inline.NumDeleted: 76
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sweep_candidates = type { ptr, ptr, ptr }
%struct.sweeper = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.unsigneds, %struct.references, %struct.unsigneds, %struct.unsigneds, %struct.unsigneds, [2 x %struct.unsigneds], %struct.anon.10 }
%struct.references = type { ptr, ptr, ptr }
%struct.unsigneds = type { ptr, ptr, ptr }
%struct.anon.10 = type { i64, i32, i32, i32 }

@.str.16 = private unnamed_addr constant [25 x i8] c"sweeping backbone reason\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"substituted binary clause\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"substituted large clause\00", align 1

; Function Attrs: nounwind uwtable
define zeroext i1 @kissat_sweep(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.sweep_candidates, align 8   ; 8 uses
  %i.a = alloca [256 x i64], align 16             ; 35 uses
  %2 = alloca %struct.sweeper, align 8            ; 86 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 4 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !63, !range !64, !noundef !65
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.iq, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.f = load volatile i8, ptr %i.e, align 8, !tbaa !139, !range !64, !noundef !65
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %kissat_terminated.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load volatile ptr, ptr %i.h, align 8, !tbaa !140 ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %kissat_terminated.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !141
  %i.l = tail call i32 %i.i(ptr noundef %i.k) #6, !inline_history !95
  %.not10.i = icmp eq i32 %i.l, 0
  br i1 %.not10.i, label %kissat_terminated.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store volatile i8 1, ptr %i.e, align 8, !tbaa !139
  br label %kissat_terminated.exit

kissat_terminated.exit:                           ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %i.m = load volatile i8, ptr %i.e, align 8, !tbaa !139, !range !64, !noundef !65
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.iq, label %bb.f

bb.f:                                             ; preds = %kissat_terminated.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1308 ; 3 uses
  %i.p = tail call zeroext i1 @kissat_delaying(ptr noundef nonnull %0, ptr noundef nonnull %i.o) #6
  br i1 %i.p, label %bb.iq, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4256 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !142
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %i.q, align 8, !tbaa !142
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4272 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !143
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4288 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  store ptr %0, ptr %2, align 8, !tbaa !70
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 8 uses
  store i32 0, ptr %i.x, align 8, !tbaa !144
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !145
  %i.aa = zext i32 %i.z to i64
  %i.ab = tail call ptr @kissat_calloc(ptr noundef nonnull %0, i64 noundef %i.aa, i64 noundef 4) #6
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !146
  %i.ad = load i32, ptr %i.y, align 8, !tbaa !145
  %i.ae = shl i32 %i.ad, 1
  %i.af = zext i32 %i.ae to i64
  %i.ag = tail call ptr @kissat_nalloc(ptr noundef nonnull %0, i64 noundef %i.af, i64 noundef 4) #6 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !71
  %i.ai = load i32, ptr %i.y, align 8, !tbaa !145 ; 2 uses
  %i.aj = shl i32 %i.ai, 1                        ; 3 uses
  %.not91.i = icmp eq i32 %i.aj, 0
  br i1 %.not91.i, label %init_sweeper.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.g
  %i.ak = zext i32 %i.aj to i64                   ; 3 uses
  %min.iters.check = icmp ult i32 %i.aj, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.ak, 4294967288              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store <4 x i32> %vec.ind, ptr %i.al, align 4, !tbaa !72
  store <4 x i32> %step.add, ptr %i.am, align 4, !tbaa !72
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !96

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ak
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i, %middle.block
  %.pre.i = load i32, ptr %i.y, align 8, !tbaa !145
  br label %init_sweeper.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.i
  %i.ap = trunc nuw i64 %indvars.iv.i to i32
  store i32 %i.ap, ptr %i.ao, align 4, !tbaa !72
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i45 = icmp eq i64 %indvars.iv.next.i, %i.ak
  br i1 %.not.i45, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !97

init_sweeper.exit:                                ; preds = %bb.g, %._crit_edge.loopexit.i
  %i.aq = phi i32 [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.ai, %bb.g ]
  %i.ar = zext i32 %i.aq to i64
  %i.as = tail call ptr @kissat_nalloc(ptr noundef nonnull %0, i64 noundef %i.ar, i64 noundef 4) #6 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 8 uses
  store ptr %i.as, ptr %i.at, align 8, !tbaa !147
  %i.au = load i32, ptr %i.y, align 8, !tbaa !145
  %i.av = zext i32 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.as, i8 -1, i64 %i.aw, i1 false)
  %i.ax = load i32, ptr %i.y, align 8, !tbaa !145
  %i.ay = zext i32 %i.ax to i64
  %i.az = tail call ptr @kissat_nalloc(ptr noundef nonnull %0, i64 noundef %i.ay, i64 noundef 4) #6 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 8 uses
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !148
  %i.bb = load i32, ptr %i.y, align 8, !tbaa !145
  %i.bc = zext i32 %i.bb to i64
  %i.bd = shl nuw nsw i64 %i.bc, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.az, i8 -1, i64 %i.bd, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 11 uses
  store i32 -1, ptr %i.be, align 4, !tbaa !149
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 14 uses
  store i32 -1, ptr %i.bf, align 8, !tbaa !150
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 11 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.bg, i8 0, i64 168, i1 false)
  %i.bh = tail call ptr @kitten_embedded(ptr noundef nonnull %0) #6 ; 2 uses
  %i.bi = getelementptr i8, ptr %0, i64 3768      ; 2 uses
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !76
  tail call void @kitten_track_antecedents(ptr noundef %i.bh) #6
  tail call void @kissat_enter_dense_mode(ptr noundef nonnull %0, ptr noundef null) #6
  tail call void @kissat_connect_irredundant_large_clauses(ptr noundef nonnull %0) #6
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 4264
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !151 ; 2 uses
  %i.bl = trunc i64 %i.bk to i32
  %spec.store.select1.i = tail call i32 @llvm.umin.i32(i32 %i.bl, i32 32)
  %i.bm = zext nneg i32 %spec.store.select1.i to i64 ; 2 uses
  %i.bn = shl nuw nsw i64 256, %i.bm
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.bn, i64 8192)
  %i.bo = trunc nuw nsw i64 %spec.store.select.i to i32
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  store i32 %i.bo, ptr %i.bp, align 8, !tbaa !152
  %i.bq = add i64 %i.bk, 2
  %spec.store.select4.i = tail call i64 @llvm.umin.i64(i64 %i.bq, i64 3)
  %i.br = trunc nuw nsw i64 %spec.store.select4.i to i32
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 236 ; 2 uses
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !153
  %i.bt = shl nuw nsw i64 1024, %i.bm
  %spec.store.select2.i = tail call i64 @llvm.umin.i64(i64 %i.bt, i64 32768)
  %i.bu = trunc nuw nsw i64 %spec.store.select2.i to i32
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 232 ; 5 uses
  store i32 %i.bu, ptr %i.bv, align 8, !tbaa !154
  %i.bw = getelementptr i8, ptr %0, i64 4112      ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !155 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 4208
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !156
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cb = load i8, ptr %i.ca, align 4, !tbaa !157, !range !64, !noundef !65
  %i.cc = trunc nuw i8 %i.cb to i1
  %.in.v.i = select i1 %i.cc, i64 1488, i64 1480
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v.i
  %i.cd = load i64, ptr %.in.i, align 8, !tbaa !77
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 224 ; 7 uses
  %i.cf = sub i64 %i.bz, %i.cd
  %spec.store.select3.i = tail call i64 @llvm.umax.i64(i64 %i.cf, i64 10000000)
  %i.cg = uitofp i64 %spec.store.select3.i to double
  %i.ch = fmul nnan double %i.cg, 1.000000e-01
  %i.ci = fptoui double %i.ch to i64
  %i.cj = add i64 %i.bx, %i.ci                    ; 2 uses
  store i64 %i.cj, ptr %i.ce, align 8, !tbaa !158
  %.val.val.i = load ptr, ptr %i.bi, align 8, !tbaa !76
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %i.cj, i64 %i.bx)
  tail call void @kitten_set_ticks_limit(ptr noundef %.val.val.i, i64 noundef %spec.select.i.i) #6
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !159
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 3784 ; 3 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !78 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 3792
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !79 ; 2 uses
  %.not31.i.i = icmp eq ptr %i.cn, %i.cp
  br i1 %.not31.i.i, label %reschedule_previously_remaining.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %init_sweeper.exit, %scheduled_variable.exit.thread.i.i
  %.033.i.i = phi ptr [ %i.eh, %scheduled_variable.exit.thread.i.i ], [ %i.cn, %init_sweeper.exit ] ; 2 uses
  %i.cq = load i32, ptr %.033.i.i, align 4, !tbaa !72 ; 9 uses
  %i.cr = zext i32 %i.cq to i64                   ; 4 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.cr ; 2 uses
  %i.ct = load i16, ptr %i.cs, align 4            ; 2 uses
  %i.cu = trunc i16 %i.ct to i1
  br i1 %i.cu, label %bb.h, label %scheduled_variable.exit.thread.i.i

.critedge.loopexit.i.i:                           ; preds = %scheduled_variable.exit.thread.i.i
  %.pre.i.i = load ptr, ptr %i.cm, align 8, !tbaa !78
  %.pre = load ptr, ptr %2, align 8, !tbaa !70
  br label %reschedule_previously_remaining.exit.i

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.cv = load ptr, ptr %i.at, align 8, !tbaa !147 ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.cr ; 3 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !72
  %.not.i.i.i = icmp ne i32 %i.cx, -1
  %i.cy = load i32, ptr %i.bf, align 8
  %i.cz = icmp eq i32 %i.cy, %i.cq
  %or.cond = select i1 %.not.i.i.i, i1 true, i1 %i.cz
  br i1 %or.cond, label %scheduled_variable.exit.thread.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.da = load ptr, ptr %2, align 8, !tbaa !70    ; 2 uses
  %i.db = shl i32 %i.cq, 1                        ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 880
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !80 ; 2 uses
  %i.de = zext i32 %i.db to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.de
  %i.dg = getelementptr i8, ptr %i.df, i64 4
  %.val21.i.i.i = load i32, ptr %i.dg, align 4, !tbaa !82 ; 2 uses
  %.not.i28.i.i = icmp eq i32 %.val21.i.i.i, 0
  br i1 %.not.i28.i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dh = load i32, ptr %i.bv, align 8, !tbaa !154 ; 2 uses
  %i.di = icmp ugt i32 %.val21.i.i.i, %i.dh
  br i1 %i.di, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dj = or disjoint i32 %i.db, 1
  %i.dk = zext i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.dk
  %i.dm = getelementptr i8, ptr %i.dl, i64 4
  %.val.i.i.i = load i32, ptr %i.dm, align 4, !tbaa !82
  %i.dn = add i32 %.val.i.i.i, -1
  %or.cond.not.i.i.i = icmp ult i32 %i.dn, %i.dh
  br i1 %or.cond.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.do = and i16 %i.ct, -513
  store i16 %i.do, ptr %i.cs, align 4
  br label %scheduled_variable.exit.thread.i.i

bb.m:                                             ; preds = %bb.k
  %i.dp = getelementptr inbounds nuw i8, ptr %i.da, i64 184
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !159
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.cr
  %i.ds = load i16, ptr %i.dr, align 4
  %i.dt = trunc i16 %i.ds to i1
  br i1 %i.dt, label %bb.n, label %scheduled_variable.exit.thread.i.i

bb.n:                                             ; preds = %bb.m
  %i.du = load ptr, ptr %i.ba, align 8, !tbaa !148 ; 3 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.cr ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !72 ; 3 uses
  %.not.i29.i.i = icmp eq i32 %i.dw, -1
  br i1 %.not.i29.i.i, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dx = zext i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.dx
  store i32 -1, ptr %i.dy, align 4, !tbaa !72
  store i32 %i.dw, ptr %i.bf, align 8, !tbaa !150
  %i.dz = load i32, ptr %i.be, align 4, !tbaa !149 ; 3 uses
  %i.ea = icmp eq i32 %i.dz, -1
  br i1 %i.ea, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 %i.cq, ptr %i.bf, align 8, !tbaa !150
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.eb = zext i32 %i.dz to i64
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.eb
  store i32 %i.cq, ptr %i.ec, align 4, !tbaa !72
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  store i32 %i.dz, ptr %i.cw, align 4, !tbaa !72
  store i32 -1, ptr %i.dv, align 4, !tbaa !72
  br label %schedule_inner.exit.sink.split.i.i

bb.s:                                             ; preds = %bb.n
  %i.ed = load i32, ptr %i.be, align 4, !tbaa !149 ; 4 uses
  %.not48.i.i.i = icmp eq i32 %i.ed, %i.cq
  br i1 %.not48.i.i.i, label %scheduled_variable.exit.thread.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ee = icmp eq i32 %i.ed, -1
  br i1 %i.ee, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 %i.cq, ptr %i.bf, align 8, !tbaa !150
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.ef = zext i32 %i.ed to i64
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.ef
  store i32 %i.cq, ptr %i.eg, align 4, !tbaa !72
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  store i32 %i.ed, ptr %i.cw, align 4, !tbaa !72
  br label %schedule_inner.exit.sink.split.i.i

schedule_inner.exit.sink.split.i.i:               ; preds = %bb.w, %bb.r
  store i32 %i.cq, ptr %i.be, align 4, !tbaa !149
  br label %scheduled_variable.exit.thread.i.i

scheduled_variable.exit.thread.i.i:               ; preds = %bb.m, %bb.s, %schedule_inner.exit.sink.split.i.i, %bb.l, %bb.h, %.lr.ph.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %.033.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.eh, %i.cp
  br i1 %.not.i.i, label %.critedge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !98

reschedule_previously_remaining.exit.i:           ; preds = %.critedge.loopexit.i.i, %init_sweeper.exit
  %i.ei = phi ptr [ %0, %init_sweeper.exit ], [ %.pre, %.critedge.loopexit.i.i ] ; 10 uses
  %i.ej = phi ptr [ %i.cn, %init_sweeper.exit ], [ %.pre.i.i, %.critedge.loopexit.i.i ] ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 3800
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !83
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = ptrtoint ptr %i.ej to i64
  %i.eo = sub i64 %i.em, %i.en
  %i.ep = ashr exact i64 %i.eo, 2
  tail call void @kissat_dealloc(ptr noundef nonnull %0, ptr noundef %i.ej, i64 noundef %i.ep, i64 noundef 4) #6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cm, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ei, i64 184 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !159
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ei, i64 3777
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !160, !range !64, !noundef !65
  %i.ew = trunc nuw i8 %i.ev to i1
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ei, i64 40
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !145 ; 2 uses
  %.not164.i.i = icmp eq i32 %i.ey, 0
  br i1 %.not164.i.i, label %._crit_edge.i.i, label %.lr.ph.i11.i

.lr.ph.i11.i:                                     ; preds = %reschedule_previously_remaining.exit.i
  %i.ez = zext i32 %i.ey to i64
  br label %bb.x

._crit_edge.loopexit.i.i:                         ; preds = %scheduled_variable.exit.thread.i12.i
  %.pre204.i.i = load ptr, ptr %i.er, align 8, !tbaa !163
  %.pre205.i.i = load ptr, ptr %1, align 8, !tbaa !164
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %reschedule_previously_remaining.exit.i
  %i.fa = phi ptr [ %.pre205.i.i, %._crit_edge.loopexit.i.i ], [ null, %reschedule_previously_remaining.exit.i ] ; 14 uses
  %i.fb = phi ptr [ %.pre204.i.i, %._crit_edge.loopexit.i.i ], [ null, %reschedule_previously_remaining.exit.i ] ; 5 uses
  %i.fc = ptrtoint ptr %i.fb to i64
  %i.fd = ptrtoint ptr %i.fa to i64
  %i.fe = sub i64 %i.fc, %i.fd                    ; 10 uses
  %i.ff = icmp ult i64 %i.fe, 9
  br i1 %i.ff, label %bb.ax, label %bb.ah

bb.x:                                             ; preds = %scheduled_variable.exit.thread.i12.i, %.lr.ph.i11.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i11.i ], [ %indvars.iv.next.i.i, %scheduled_variable.exit.thread.i12.i ] ; 6 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv.i.i
  %i.fh = load i16, ptr %i.fg, align 4            ; 2 uses
  %i.fi = trunc i16 %i.fh to i1
  br i1 %i.fi, label %bb.y, label %scheduled_variable.exit.thread.i12.i

bb.y:                                             ; preds = %bb.x
  %i.fj = and i16 %i.fh, 512
  %.not157.i.i = icmp eq i16 %i.fj, 0
  %or.cond.i.i = and i1 %.not157.i.i, %i.ew
  br i1 %or.cond.i.i, label %scheduled_variable.exit.thread.i12.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fk = load ptr, ptr %i.at, align 8, !tbaa !147
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %indvars.iv.i.i
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !72
  %.not.i.i15.i = icmp ne i32 %i.fm, -1
  %i.fn = load i32, ptr %i.bf, align 8
  %i.fo = zext i32 %i.fn to i64
  %i.fp = icmp eq i64 %indvars.iv.i.i, %i.fo
  %or.cond112 = select i1 %.not.i.i15.i, i1 true, i1 %i.fp
  br i1 %or.cond112, label %scheduled_variable.exit.thread.i12.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fq = load ptr, ptr %2, align 8, !tbaa !70
  %i.fr = trunc nuw i64 %indvars.iv.i.i to i32    ; 2 uses
  %i.fs = shl i32 %i.fr, 1                        ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 880
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !80 ; 2 uses
  %i.fv = zext i32 %i.fs to i64
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.fv
  %i.fx = getelementptr i8, ptr %i.fw, i64 4
  %.val21.i.i17.i = load i32, ptr %i.fx, align 4, !tbaa !82 ; 3 uses
  %.not.i159.i.i = icmp eq i32 %.val21.i.i17.i, 0
  br i1 %.not.i159.i.i, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fy = load i32, ptr %i.bv, align 8, !tbaa !154 ; 2 uses
  %i.fz = icmp ugt i32 %.val21.i.i17.i, %i.fy
  br i1 %i.fz, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ga = or disjoint i32 %i.fs, 1
  %i.gb = zext i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.gb
  %i.gd = getelementptr i8, ptr %i.gc, i64 4
  %.val.i.i18.i = load i32, ptr %i.gd, align 4, !tbaa !82 ; 2 uses
  %i.ge = add i32 %.val.i.i18.i, -1
  %or.cond.not.i.i19.i = icmp ult i32 %i.ge, %i.fy
  br i1 %or.cond.not.i.i19.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.gf = load ptr, ptr %i.es, align 8, !tbaa !159
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %indvars.iv.i.i ; 2 uses
  %i.gh = load i16, ptr %i.gg, align 4
  %i.gi = and i16 %i.gh, -513
  store i16 %i.gi, ptr %i.gg, align 4
  br label %scheduled_variable.exit.thread.i12.i

bb.ae:                                            ; preds = %bb.ac
  %i.gj = add i32 %.val.i.i18.i, %.val21.i.i17.i
  %i.gk = load ptr, ptr %i.er, align 8, !tbaa !163 ; 2 uses
  %i.gl = load ptr, ptr %i.eq, align 8, !tbaa !165
  %i.gm = icmp eq ptr %i.gk, %i.gl
  br i1 %i.gm, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @kissat_stack_enlarge(ptr noundef %i.ei, ptr noundef nonnull %1, i64 noundef 8) #6
  %.pre.i20.i = load ptr, ptr %i.er, align 8, !tbaa !163
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.gn = phi ptr [ %.pre.i20.i, %bb.af ], [ %i.gk, %bb.ae ] ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  store ptr %i.go, ptr %i.er, align 8, !tbaa !163
  store i32 %i.gj, ptr %i.gn, align 4, !tbaa !72
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 4
  store i32 %i.fr, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !72
  br label %scheduled_variable.exit.thread.i12.i

scheduled_variable.exit.thread.i12.i:             ; preds = %bb.ag, %bb.ad, %bb.z, %bb.y, %bb.x
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i13.i = icmp eq i64 %indvars.iv.next.i.i, %i.ez
  br i1 %.not.i13.i, label %._crit_edge.loopexit.i.i, label %bb.x, !llvm.loop !99

bb.ah:                                            ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %.not152167.i.i = icmp eq ptr %i.fb, %i.fa
  %.not152167.i.fr.i = freeze i1 %.not152167.i.i
  br i1 %.not152167.i.fr.i, label %.loopexit.i.us.3.i, label %.lr.ph174.i.preheader.i

.loopexit.i.us.3.i:                               ; preds = %bb.ah
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(34359738376) %i.a, i8 0, i64 34359738376, i1 false)
  br label %.split32.us.i

.split32.us.i:                                    ; preds = %.lr.ph187.i.3.i, %bb.aq, %.loopexit.i.2.i, %.loopexit.i.us.3.i
  %.us-phi.i = phi ptr [ null, %.loopexit.i.us.3.i ], [ %.3148.i.2.i, %.loopexit.i.2.i ], [ %.3148.i.2.i, %bb.aq ], [ %.1146.i.3.i, %.lr.ph187.i.3.i ] ; 4 uses
  %.us-phi34.i = phi ptr [ %i.fa, %.loopexit.i.us.3.i ], [ %.2140.i.2.i, %.loopexit.i.2.i ], [ %.2140.i.2.i, %bb.aq ], [ %i.pi, %.lr.ph187.i.3.i ]
  %i.gp = icmp eq ptr %.us-phi34.i, %.us-phi.i
  br i1 %i.gp, label %bb.at, label %bb.au

.lr.ph174.i.preheader.i:                          ; preds = %bb.ah
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.a, i8 0, i64 2048, i1 false)
  br label %.lr.ph174.i.i

.lr.ph174.i.i:                                    ; preds = %.lr.ph174.i.i, %.lr.ph174.i.preheader.i
  %.0118172.i.i = phi ptr [ %i.gy, %.lr.ph174.i.i ], [ %i.fa, %.lr.ph174.i.preheader.i ] ; 2 uses
  %.0119171.i.i = phi i32 [ %.1.i.i, %.lr.ph174.i.i ], [ 0, %.lr.ph174.i.preheader.i ] ; 2 uses
  %.0120170.i.i = phi i8 [ %.1121.i.i, %.lr.ph174.i.i ], [ 1, %.lr.ph174.i.preheader.i ] ; 2 uses
  %.1125169.i.i = phi i32 [ %.2.i14.i, %.lr.ph174.i.i ], [ -1, %.lr.ph174.i.preheader.i ]
  %.1127168.i.i = phi i32 [ %.2128.i.i, %.lr.ph174.i.i ], [ 0, %.lr.ph174.i.preheader.i ]
  %i.gq = load i32, ptr %.0118172.i.i, align 4, !tbaa !167 ; 3 uses
  %.2128.i.i = or i32 %i.gq, %.1127168.i.i        ; 8 uses
  %.2.i14.i = and i32 %i.gq, %.1125169.i.i        ; 6 uses
  %i.gr = and i32 %i.gq, 255                      ; 3 uses
  %i.gs = trunc nuw i8 %.0120170.i.i to i1
  %i.gt = icmp samesign ugt i32 %.0119171.i.i, %i.gr
  %or.cond158.i.i = select i1 %i.gs, i1 %i.gt, i1 false ; 2 uses
  %.1121.i.i = select i1 %or.cond158.i.i, i8 0, i8 %.0120170.i.i ; 2 uses
  %.1.i.i = select i1 %or.cond158.i.i, i32 %.0119171.i.i, i32 %i.gr
  %i.gu = zext nneg i32 %i.gr to i64
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.gu ; 2 uses
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !77
  %i.gx = add i64 %i.gw, 1
  store i64 %i.gx, ptr %i.gv, align 8, !tbaa !77
  %i.gy = getelementptr inbounds nuw i8, ptr %.0118172.i.i, i64 8 ; 2 uses
  %.not152.i.i = icmp eq ptr %i.gy, %i.fb
  br i1 %.not152.i.i, label %bb.ai, label %.lr.ph174.i.i, !llvm.loop !100

bb.ai:                                            ; preds = %.lr.ph174.i.i
  %i.gz = and i32 %.2.i14.i, 255                  ; 5 uses
  %i.ha = and i32 %.2128.i.i, 255                 ; 3 uses
  %i.hb = trunc nuw i8 %.1121.i.i to i1
  %i.hc = xor i32 %.2.i14.i, %.2128.i.i           ; 4 uses
  %i.hd = and i32 %i.hc, 255
  %i.he = icmp eq i32 %i.hd, 0
  %or.cond163.i.i = select i1 %i.he, i1 true, i1 %i.hb
  br i1 %or.cond163.i.i, label %.loopexit.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.not153178.i.i = icmp samesign ugt i32 %i.gz, %i.ha
  br i1 %.not153178.i.i, label %.lr.ph187.preheader.i.i, label %.lr.ph182.preheader.i.i

.lr.ph182.preheader.i.i:                          ; preds = %bb.aj
  %i.hf = zext nneg i32 %i.gz to i64              ; 4 uses
  %i.hg = and i32 %.2128.i.i, 255
  %i.hh = zext nneg i32 %i.hg to i64              ; 2 uses
  %i.hi = add nuw nsw i64 %i.hh, 1
  %i.hj = sub nsw i64 %i.hi, %i.hf                ; 2 uses
  %i.hk = sub nsw i64 %i.hh, %i.hf
  %xtraiter = and i64 %i.hj, 3                    ; 3 uses
  %i.hl = icmp ult i64 %i.hk, 3
  br i1 %i.hl, label %.lr.ph182.i.i.epil.preheader, label %.lr.ph182.preheader.i.i.new

.lr.ph182.preheader.i.i.new:                      ; preds = %.lr.ph182.preheader.i.i
  %unroll_iter = and i64 %i.hj, -4
  br label %.lr.ph182.i.i

.lr.ph182.i.i:                                    ; preds = %.lr.ph182.i.i, %.lr.ph182.preheader.i.i.new
  %.0116180.i.i = phi i64 [ %i.hf, %.lr.ph182.preheader.i.i.new ], [ %i.ib, %.lr.ph182.i.i ] ; 5 uses
  %.0117179.i.i = phi i64 [ 0, %.lr.ph182.preheader.i.i.new ], [ %i.ia, %.lr.ph182.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph182.preheader.i.i.new ], [ %niter.next.3, %.lr.ph182.i.i ]
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0116180.i.i ; 2 uses
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !77
  store i64 %.0117179.i.i, ptr %i.hm, align 8, !tbaa !77
  %i.ho = add i64 %i.hn, %.0117179.i.i            ; 2 uses
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0116180.i.i
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8 ; 2 uses
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !77
  store i64 %i.ho, ptr %i.hq, align 8, !tbaa !77
  %i.hs = add i64 %i.hr, %i.ho                    ; 2 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0116180.i.i
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16 ; 2 uses
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !77
  store i64 %i.hs, ptr %i.hu, align 8, !tbaa !77
  %i.hw = add i64 %i.hv, %i.hs                    ; 2 uses
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0116180.i.i
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 24 ; 2 uses
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !77
  store i64 %i.hw, ptr %i.hy, align 8, !tbaa !77
  %i.ia = add i64 %i.hz, %i.hw                    ; 2 uses
  %i.ib = add nuw nsw i64 %.0116180.i.i, 4        ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph187.preheader.i.i.loopexit.unr-lcssa, label %.lr.ph182.i.i, !llvm.loop !101

.lr.ph187.preheader.i.i.loopexit.unr-lcssa:       ; preds = %.lr.ph182.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph187.preheader.i.i, label %.lr.ph182.i.i.epil.preheader

.lr.ph182.i.i.epil.preheader:                     ; preds = %.lr.ph187.preheader.i.i.loopexit.unr-lcssa, %.lr.ph182.preheader.i.i
  %.0116180.i.i.epil.init = phi i64 [ %i.hf, %.lr.ph182.preheader.i.i ], [ %i.ib, %.lr.ph187.preheader.i.i.loopexit.unr-lcssa ]
  %.0117179.i.i.epil.init = phi i64 [ 0, %.lr.ph182.preheader.i.i ], [ %i.ia, %.lr.ph187.preheader.i.i.loopexit.unr-lcssa ]
  %lcmp.mod413 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod413)
  br label %.lr.ph182.i.i.epil

.lr.ph182.i.i.epil:                               ; preds = %.lr.ph182.i.i.epil, %.lr.ph182.i.i.epil.preheader
  %.0116180.i.i.epil = phi i64 [ %i.if, %.lr.ph182.i.i.epil ], [ %.0116180.i.i.epil.init, %.lr.ph182.i.i.epil.preheader ] ; 2 uses
  %.0117179.i.i.epil = phi i64 [ %i.ie, %.lr.ph182.i.i.epil ], [ %.0117179.i.i.epil.init, %.lr.ph182.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph182.i.i.epil ], [ 0, %.lr.ph182.i.i.epil.preheader ]
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0116180.i.i.epil ; 2 uses
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !77
  store i64 %.0117179.i.i.epil, ptr %i.ic, align 8, !tbaa !77
  %i.ie = add i64 %i.id, %.0117179.i.i.epil
  %i.if = add nuw nsw i64 %.0116180.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph187.preheader.i.i, label %.lr.ph182.i.i.epil, !llvm.loop !102

.lr.ph187.preheader.i.i:                          ; preds = %.lr.ph187.preheader.i.i.loopexit.unr-lcssa, %.lr.ph182.i.i.epil, %bb.aj
  %i.ig = call ptr @kissat_malloc(ptr noundef %i.ei, i64 noundef %i.fe) #6 ; 3 uses
  br label %.lr.ph187.i.i

.lr.ph187.i.i:                                    ; preds = %.lr.ph187.i.i, %.lr.ph187.preheader.i.i
  %.0115185.i.i = phi ptr [ %i.ip, %.lr.ph187.i.i ], [ %i.fa, %.lr.ph187.preheader.i.i ] ; 3 uses
  %i.ih = load i32, ptr %.0115185.i.i, align 4, !tbaa !167
  %i.ii = and i32 %i.ih, 255
  %i.ij = zext nneg i32 %i.ii to i64
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ij ; 2 uses
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !77 ; 2 uses
  %i.im = add i64 %i.il, 1
  store i64 %i.im, ptr %i.ik, align 8, !tbaa !77
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %i.il
  %i.io = load i64, ptr %.0115185.i.i, align 4
  store i64 %i.io, ptr %i.in, align 4
  %i.ip = getelementptr inbounds nuw i8, ptr %.0115185.i.i, i64 8 ; 2 uses
  %.not155.i.i = icmp eq ptr %i.ip, %i.fb
  br i1 %.not155.i.i, label %.loopexit.i.i, label %.lr.ph187.i.i, !llvm.loop !103

.loopexit.i.i:                                    ; preds = %.lr.ph187.i.i, %bb.ai
  %.3148.i.i = phi ptr [ null, %bb.ai ], [ %i.ig, %.lr.ph187.i.i ] ; 4 uses
  %.2140.i.i = phi ptr [ %i.fa, %bb.ai ], [ %i.ig, %.lr.ph187.i.i ] ; 6 uses
  %i.iq = and i32 %i.hc, 65280
  %i.ir = icmp eq i32 %i.iq, 0
  br i1 %i.ir, label %.loopexit.i.1.i, label %.lr.ph174.i.preheader.1.i

.lr.ph174.i.preheader.1.i:                        ; preds = %.loopexit.i.i
  %i.is = zext nneg i32 %i.gz to i64
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.is
  %reass.sub.i.1.i = add nuw nsw i32 %i.ha, 1
  %i.iu = sub nsw i32 %reass.sub.i.1.i, %i.gz
  %i.iv = zext i32 %i.iu to i64
  %i.iw = shl nuw nsw i64 %i.iv, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.it, i8 0, i64 %i.iw, i1 false)
  %i.ix = getelementptr inbounds nuw i8, ptr %.2140.i.i, i64 %i.fe ; 2 uses
  br label %.lr.ph174.i.1.i

.lr.ph174.i.1.i:                                  ; preds = %.lr.ph174.i.1.i, %.lr.ph174.i.preheader.1.i
  %.0118172.i.1.i = phi ptr [ %i.jh, %.lr.ph174.i.1.i ], [ %.2140.i.i, %.lr.ph174.i.preheader.1.i ] ; 2 uses
  %.0119171.i.1.i = phi i32 [ %.1.i.1.i, %.lr.ph174.i.1.i ], [ 0, %.lr.ph174.i.preheader.1.i ] ; 2 uses
  %.0120170.i.1.i = phi i8 [ %.1121.i.1.i, %.lr.ph174.i.1.i ], [ 1, %.lr.ph174.i.preheader.1.i ] ; 2 uses
  %i.iy = load i32, ptr %.0118172.i.1.i, align 4, !tbaa !167
  %i.iz = lshr i32 %i.iy, 8
  %i.ja = and i32 %i.iz, 255                      ; 3 uses
  %i.jb = trunc nuw i8 %.0120170.i.1.i to i1
  %i.jc = icmp samesign ugt i32 %.0119171.i.1.i, %i.ja
  %or.cond158.i.1.i = select i1 %i.jb, i1 %i.jc, i1 false ; 2 uses
  %.1121.i.1.i = select i1 %or.cond158.i.1.i, i8 0, i8 %.0120170.i.1.i ; 2 uses
  %.1.i.1.i = select i1 %or.cond158.i.1.i, i32 %.0119171.i.1.i, i32 %i.ja
  %i.jd = zext nneg i32 %i.ja to i64
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.jd ; 2 uses
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !77
  %i.jg = add i64 %i.jf, 1
  store i64 %i.jg, ptr %i.je, align 8, !tbaa !77
  %i.jh = getelementptr inbounds nuw i8, ptr %.0118172.i.1.i, i64 8 ; 2 uses
  %.not152.i.1.i = icmp eq ptr %i.jh, %i.ix
  br i1 %.not152.i.1.i, label %bb.ak, label %.lr.ph174.i.1.i, !llvm.loop !100

bb.ak:                                            ; preds = %.lr.ph174.i.1.i
  %i.ji = lshr i32 %.2.i14.i, 8
  %i.jj = and i32 %i.ji, 255                      ; 4 uses
  %i.jk = lshr i32 %.2128.i.i, 8                  ; 2 uses
  %i.jl = and i32 %i.jk, 255                      ; 3 uses
  %i.jm = trunc nuw i8 %.1121.i.1.i to i1
  br i1 %i.jm, label %.loopexit.i.1.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.not153178.i.1.i = icmp samesign ugt i32 %i.jj, %i.jl
  br i1 %.not153178.i.1.i, label %._crit_edge183.i.1.i, label %.lr.ph182.preheader.i.1.i

.lr.ph182.preheader.i.1.i:                        ; preds = %bb.al
  %i.jn = zext nneg i32 %i.jj to i64              ; 4 uses
  %i.jo = and i32 %i.jk, 255
  %i.jp = zext nneg i32 %i.jo to i64              ; 2 uses
  %i.jq = add nuw nsw i64 %i.jp, 1
  %i.jr = sub nsw i64 %i.jq, %i.jn                ; 2 uses
  %i.js = sub nsw i64 %i.jp, %i.jn
  %xtraiter414 = and i64 %i.jr, 3                 ; 3 uses
  %i.jt = icmp ult i64 %i.js, 3
  br i1 %i.jt, label %.lr.ph182.i.1.i.epil.preheader, label %.lr.ph182.preheader.i.1.i.new

.lr.ph182.preheader.i.1.i.new:                    ; preds = %.lr.ph182.preheader.i.1.i
  %unroll_iter418 = and i64 %i.jr, -4
  br label %.lr.ph182.i.1.i

.lr.ph182.i.1.i:                                  ; preds = %.lr.ph182.i.1.i, %.lr.ph182.preheader.i.1.i.new
  %.0116180.i.1.i = phi i64 [ %i.jn, %.lr.ph182.preheader.i.1.i.new ], [ %i.kj, %.lr.ph182.i.1.i ] ; 5 uses
  %.0117179.i.1.i = phi i64 [ 0, %.lr.ph182.preheader.i.1.i.new ], [ %i.ki, %.lr.ph182.i.1.i ] ; 2 uses
  %niter419 = phi i64 [ 0, %.lr.ph182.preheader.i.1.i.new ], [ %niter419.next.3, %.lr.ph182.i.1.i ]
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0116180.i.1.i ; 2 uses
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !77
  store i64 %.0117179.i.1.i, ptr %i.ju, align 8, !tbaa !77
  %i.jw = add i64 %i.jv, %.0117179.i.1.i          ; 2 uses
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0116180.i.1.i
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8 ; 2 uses
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !77
  store i64 %i.jw, ptr %i.jy, align 8, !tbaa !77
  %i.ka = add i64 %i.jz, %i.jw                    ; 2 uses
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0116180.i.1.i
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 16 ; 2 uses
end_hunk_0
