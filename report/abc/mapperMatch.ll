Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/mapperMatch?download=true
inline.NumInlined: 12
inline.NumDeleted: 7
begin_hunk_0_@Map_MatchCompare:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.l = load float, ptr %i.k, align 4, !tbaa !30 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.n = load float, ptr %i.m, align 4, !tbaa !30 ; 2 uses
  %i.o = fsub float %i.n, %i.b
  %i.p = fcmp olt float %i.l, %i.o
  br i1 %i.p, label %.thread78, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = fadd float %i.b, %i.n
  %i.r = fcmp ogt float %i.l, %i.q
  br i1 %i.r, label %.thread78, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !31
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = load i32, ptr %i.u, align 4              ; 2 uses
  %i.w = lshr i32 %i.v, 8
  %i.x = and i32 %i.w, 15                         ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !31
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = load i32, ptr %i.aa, align 4            ; 2 uses
  %i.ac = lshr i32 %i.ab, 8
  %i.ad = and i32 %i.ac, 15                       ; 2 uses
  %i.ae = icmp samesign ugt i32 %i.x, %i.ad
  br i1 %i.ae, label %.thread78, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = icmp samesign ult i32 %i.x, %i.ad
  br i1 %i.af, label %.thread78, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = lshr i32 %i.v, 2
  %i.ah = and i32 %i.ag, 7
  %i.ai = lshr i32 %i.ab, 2
  %i.aj = and i32 %i.ai, 7
  %spec.select = icmp samesign ugt i32 %i.ah, %i.aj
  br label %.thread78

bb.i:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.al = load float, ptr %i.ak, align 4, !tbaa !30 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.an = load float, ptr %i.am, align 4, !tbaa !30 ; 2 uses
  %i.ao = fsub float %i.an, %i.b
  %i.ap = fcmp olt float %i.al, %i.ao
  br i1 %i.ap, label %.thread78, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = fadd float %i.an, %i.b
  %i.ar = fcmp ogt float %i.al, %i.aq
  br i1 %i.ar, label %.thread78, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.at = load i32, ptr %i.as, align 8, !tbaa !32
  %.not71 = icmp eq i32 %i.at, 0
  br i1 %.not71, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !31 ; 2 uses
  %.not72 = icmp eq ptr %i.av, null
  br i1 %.not72, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !33
  %i.ay = tail call i32 @Mio_GateReadProfile(ptr noundef %i.ax) #10 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !31
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !33
  %i.bd = tail call i32 @Mio_GateReadProfile(ptr noundef %i.bc) #10 ; 2 uses
  %i.be = load ptr, ptr %i.au, align 8, !tbaa !31
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !33
  %i.bh = tail call i32 @Mio_GateReadProfile2(ptr noundef %i.bg) #10 ; 2 uses
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !31
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !33
  %i.bl = tail call i32 @Mio_GateReadProfile2(ptr noundef %i.bk) #10 ; 2 uses
  %i.bm = icmp slt i32 %i.bh, %i.ay
  %i.bn = icmp sgt i32 %i.bl, %i.bd
  %or.cond = select i1 %i.bm, i1 %i.bn, i1 false
  br i1 %or.cond, label %.thread78, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bo = icmp sge i32 %i.bl, %i.bd
  %i.bp = icmp sle i32 %i.bh, %i.ay
  %or.cond81 = select i1 %i.bo, i1 true, i1 %i.bp
  br i1 %or.cond81, label %..thread_crit_edge, label %.thread78

..thread_crit_edge:                               ; preds = %bb.n
  %.pre = load float, ptr %i.a, align 4, !tbaa !10
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.l, %bb.k
  %i.bq = phi float [ %.pre, %..thread_crit_edge ], [ %i.b, %bb.l ], [ %i.b, %bb.k ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bs = load float, ptr %i.br, align 8, !tbaa !26 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bu = load float, ptr %i.bt, align 8, !tbaa !26 ; 2 uses
  %i.bv = fsub float %i.bu, %i.bq
  %i.bw = fcmp olt float %i.bs, %i.bv
  br i1 %i.bw, label %.thread78, label %bb.o

bb.o:                                             ; preds = %.thread
  %i.bx = fadd float %i.bu, %i.bq
  %i.by = fcmp ogt float %i.bs, %i.bx
  br i1 %i.by, label %.thread78, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !31
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cc = load i32, ptr %i.cb, align 4            ; 2 uses
  %i.cd = lshr i32 %i.cc, 8
  %i.ce = and i32 %i.cd, 15                       ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !31
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.ci = load i32, ptr %i.ch, align 4            ; 2 uses
  %i.cj = lshr i32 %i.ci, 8
  %i.ck = and i32 %i.cj, 15                       ; 2 uses
  %i.cl = icmp samesign ugt i32 %i.ce, %i.ck
  br i1 %i.cl, label %.thread78, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cm = icmp samesign ult i32 %i.ce, %i.ck
  br i1 %i.cm, label %.thread78, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cn = lshr i32 %i.cc, 2
  %i.co = and i32 %i.cn, 7
  %i.cp = lshr i32 %i.ci, 2
  %i.cq = and i32 %i.cp, 7
  %spec.select82 = icmp samesign ugt i32 %i.co, %i.cq
  br label %.thread78

.thread78:                                        ; preds = %bb.r, %bb.h, %bb.n, %bb.m, %bb.q, %bb.p, %bb.o, %.thread, %bb.j, %bb.i, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.1.shrunk = phi i1 [ false, %bb.m ], [ false, %bb.i ], [ true, %bb.j ], [ false, %.thread ], [ true, %bb.o ], [ false, %bb.p ], [ true, %bb.q ], [ true, %bb.g ], [ %spec.select82, %bb.r ], [ true, %bb.n ], [ %spec.select, %bb.h ], [ false, %bb.b ], [ true, %bb.c ], [ false, %bb.d ], [ true, %bb.e ], [ false, %bb.f ]
  %.1 = zext i1 %.1.shrunk to i32
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare i32 @Mio_GateReadProfile(ptr noundef) local_unnamed_addr #4

declare i32 @Mio_GateReadProfile2(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define noundef i32 @Map_MatchNodeCut(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, float noundef %4) local_unnamed_addr #2 {
bb.a:
  %.sroa.0 = alloca { ptr, i32, i32 }, align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.b = sext i32 %3 to i64
  %i.c = getelementptr inbounds [40 x i8], ptr %i.a, i64 %i.b ; 10 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !36
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 8 uses
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !37 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  %i.d = load i64, ptr %.sroa.9.0..sroa_idx, align 8 ; 2 uses
  %.sroa.990.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 7 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 36 ; 5 uses
  %i.e = load <2 x float>, ptr %.sroa.990.0..sroa_idx, align 8, !tbaa !8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1828 ; 4 uses
  %.075119 = load ptr, ptr %i.c, align 8, !tbaa !37 ; 2 uses
  %.not120 = icmp eq ptr %.075119, null
  br i1 %.not120, label %._crit_edge129, label %.lr.ph128

.lr.ph128:                                        ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1832 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.m = load i32, ptr %i.f, align 4, !tbaa !39
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.f, align 4, !tbaa !39
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.o = add nuw nsw i32 %.0125145, 1             ; 2 uses
  %i.p = load i32, ptr %i.f, align 4, !tbaa !39
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.f, align 4, !tbaa !39
  %i.r = icmp eq i32 %i.o, 30
  br i1 %i.r, label %._crit_edge129, label %bb.c, !llvm.loop !40

bb.c:                                             ; preds = %.lr.ph128, %bb.b
  %.sroa.9.0127154 = phi i64 [ %i.d, %.lr.ph128 ], [ %.sroa.9.sroa.0.3, %bb.b ] ; 2 uses
  %.sroa.5.0123147 = phi ptr [ %.sroa.5.0.copyload, %.lr.ph128 ], [ %.sroa.5.1.lcssa, %bb.b ] ; 2 uses
  %.076124146 = phi float [ %4, %.lr.ph128 ], [ %.1.lcssa, %bb.b ] ; 2 uses
  %.0125145 = phi i32 [ 0, %.lr.ph128 ], [ %i.o, %bb.b ]
  %.075126144 = phi ptr [ %.075119, %.lr.ph128 ], [ %.075, %bb.b ] ; 4 uses
  %i.s = phi <2 x float> [ %i.e, %.lr.ph128 ], [ %i.ec, %bb.b ] ; 2 uses
  store ptr %.075126144, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !31
  %i.t = getelementptr inbounds nuw i8, ptr %.075126144, i64 4 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4
  %.not137 = icmp ult i32 %i.u, 268435456
  br i1 %.not137, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %.075126144, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %Map_MatchCompare.exit.thread
  %.sroa.9.sroa.0.1 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Map_MatchCompare.exit.thread ] ; 2 uses
  %.1117 = phi float [ %.076124146, %.lr.ph ], [ %.2, %Map_MatchCompare.exit.thread ] ; 17 uses
  %.sroa.5.1116 = phi ptr [ %.sroa.5.0123147, %.lr.ph ], [ %.sroa.5.2, %Map_MatchCompare.exit.thread ] ; 16 uses
  %.sroa.9.1115 = phi i64 [ %.sroa.9.0127154, %.lr.ph ], [ %.sroa.9.sroa.0.2, %Map_MatchCompare.exit.thread ] ; 12 uses
  %i.w = phi <2 x float> [ %i.s, %.lr.ph ], [ %i.dx, %Map_MatchCompare.exit.thread ] ; 15 uses
  %i.x = extractelement <2 x float> %i.w, i64 1   ; 5 uses
  %i.y = load i32, ptr %i.g, align 8, !tbaa !42
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.g, align 8, !tbaa !42
  %i.aa = load i32, ptr %i.h, align 8, !tbaa !43
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.9.sroa.0.1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !44
  %i.ad = zext i8 %i.ac to i32
  %i.ae = xor i32 %i.aa, %i.ad
  store i32 %i.ae, ptr %i.i, align 4, !tbaa !45
  %i.af = load i32, ptr %i.j, align 4, !tbaa !46
  switch i32 %i.af, label %bb.i [
    i32 0, label %bb.e
    i32 2, label %bb.g
    i32 3, label %bb.g
    i32 4, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  %i.ag = tail call float @Map_TimeCutComputeArrival(ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3, float noundef %.1117) #10 ; 0 uses
  %i.ah = load float, ptr %.sroa.990.0..sroa_idx, align 8, !tbaa !26
  %i.ai = load float, ptr %i.k, align 4, !tbaa !10
  %i.aj = fadd float %.1117, %i.ai
  %i.ak = fcmp ogt float %i.ah, %i.aj
  br i1 %i.ak, label %Map_MatchCompare.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = tail call float @Map_CutGetAreaFlow(ptr noundef nonnull %2, i32 noundef %3) #10
  store float %i.al, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !30
  %.pre = load float, ptr %i.k, align 4, !tbaa !10
  br label %bb.l

bb.g:                                             ; preds = %bb.d, %bb.d
  %i.am = tail call float @Map_CutGetAreaDerefed(ptr noundef nonnull %2, i32 noundef %3) #10
  br label %bb.j

bb.h:                                             ; preds = %bb.d
  %i.an = tail call float @Map_SwitchCutGetDerefed(ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3) #10
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  %i.ao = tail call float @Map_CutGetAreaFlow(ptr noundef nonnull %2, i32 noundef %3) #10
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %.sink = phi float [ %i.an, %bb.h ], [ %i.ao, %bb.i ], [ %i.am, %bb.g ] ; 2 uses
  store float %.sink, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !30
  %i.ap = load float, ptr %i.k, align 4, !tbaa !10
  %i.aq = fadd float %i.x, %i.ap
  %i.ar = fcmp ogt float %.sink, %i.aq
  br i1 %i.ar, label %Map_MatchCompare.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = tail call float @Map_TimeCutComputeArrival(ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3, float noundef %.1117) #10 ; 0 uses
  %i.at = load float, ptr %.sroa.990.0..sroa_idx, align 8, !tbaa !26
  %i.au = load float, ptr %i.k, align 4, !tbaa !10 ; 2 uses
  %i.av = fadd float %.1117, %i.au
  %i.aw = fcmp ogt float %i.at, %i.av
  br i1 %i.aw, label %Map_MatchCompare.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %i.ax = phi float [ %i.au, %bb.k ], [ %.pre, %bb.f ] ; 7 uses
  %i.ay = load i32, ptr %i.j, align 4, !tbaa !46
  %.not.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.az = load float, ptr %.sroa.990.0..sroa_idx, align 8, !tbaa !26 ; 2 uses
  %i.ba = fsub float %i.az, %i.ax
  %i.bb = extractelement <2 x float> %i.w, i64 0  ; 2 uses
  %i.bc = fcmp olt float %i.bb, %i.ba
  br i1 %i.bc, label %Map_MatchCompare.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = fadd float %i.ax, %i.az
  %i.be = fcmp ogt float %i.bb, %i.bd
  br i1 %i.be, label %Map_MatchCompare.exit.thread107, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = load float, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !30 ; 2 uses
  %i.bg = fsub float %i.bf, %i.ax
  %i.bh = fcmp olt float %i.x, %i.bg
  br i1 %i.bh, label %Map_MatchCompare.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bi = fadd float %i.ax, %i.bf
  %i.bj = fcmp ogt float %i.x, %i.bi
  br i1 %i.bj, label %Map_MatchCompare.exit.thread107, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.5.1116, i64 4
  %i.bl = load i32, ptr %i.bk, align 4            ; 2 uses
  %i.bm = lshr i32 %i.bl, 8
  %i.bn = and i32 %i.bm, 15                       ; 2 uses
  %i.bo = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !31
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bq = load i32, ptr %i.bp, align 4            ; 2 uses
  %i.br = lshr i32 %i.bq, 8
  %i.bs = and i32 %i.br, 15                       ; 2 uses
  %i.bt = icmp samesign ugt i32 %i.bn, %i.bs
  br i1 %i.bt, label %Map_MatchCompare.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bu = icmp samesign ult i32 %i.bn, %i.bs
  br i1 %i.bu, label %Map_MatchCompare.exit.thread107, label %Map_MatchCompare.exit

bb.s:                                             ; preds = %bb.l
  %i.bv = load float, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !30 ; 2 uses
  %i.bw = fsub float %i.bv, %i.ax
  %i.bx = fcmp olt float %i.x, %i.bw
  br i1 %i.bx, label %Map_MatchCompare.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.by = fadd float %i.ax, %i.bv
  %i.bz = fcmp ogt float %i.x, %i.by
  br i1 %i.bz, label %Map_MatchCompare.exit.thread107, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ca = load i32, ptr %i.l, align 8, !tbaa !32
  %.not71.i = icmp eq i32 %i.ca, 0
  %.not72.i = icmp eq ptr %.sroa.5.1116, null
  %or.cond = select i1 %.not71.i, i1 true, i1 %.not72.i
  br i1 %or.cond, label %.thread.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.5.1116, i64 64 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !33
  %i.cd = tail call i32 @Mio_GateReadProfile(ptr noundef %i.cc) #10 ; 2 uses
  %i.ce = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !31
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 64
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !33
  %i.ch = tail call i32 @Mio_GateReadProfile(ptr noundef %i.cg) #10 ; 2 uses
  %i.ci = load ptr, ptr %i.cb, align 8, !tbaa !33
  %i.cj = tail call i32 @Mio_GateReadProfile2(ptr noundef %i.ci) #10 ; 2 uses
  %i.ck = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !31
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 64
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !33
  %i.cn = tail call i32 @Mio_GateReadProfile2(ptr noundef %i.cm) #10 ; 2 uses
  %i.co = icmp slt i32 %i.cj, %i.cd
  %i.cp = icmp sgt i32 %i.cn, %i.ch
  %or.cond.i = select i1 %i.co, i1 %i.cp, i1 false
  br i1 %or.cond.i, label %Map_MatchCompare.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cq = icmp sge i32 %i.cn, %i.ch
  %i.cr = icmp sle i32 %i.cj, %i.cd
  %or.cond81.i = select i1 %i.cq, i1 true, i1 %i.cr
  br i1 %or.cond81.i, label %..thread_crit_edge.i, label %Map_MatchCompare.exit.thread107

..thread_crit_edge.i:                             ; preds = %bb.w
  %.pre.i = load float, ptr %i.k, align 4, !tbaa !10
  br label %.thread.i

.thread.i:                                        ; preds = %..thread_crit_edge.i, %bb.u
  %i.cs = phi float [ %.pre.i, %..thread_crit_edge.i ], [ %i.ax, %bb.u ] ; 2 uses
  %i.ct = load float, ptr %.sroa.990.0..sroa_idx, align 8, !tbaa !26 ; 2 uses
  %i.cu = fsub float %i.ct, %i.cs
  %i.cv = extractelement <2 x float> %i.w, i64 0  ; 2 uses
  %i.cw = fcmp olt float %i.cv, %i.cu
  br i1 %i.cw, label %Map_MatchCompare.exit.thread, label %bb.x

bb.x:                                             ; preds = %.thread.i
  %i.cx = fadd float %i.cs, %i.ct
  %i.cy = fcmp ogt float %i.cv, %i.cx
  br i1 %i.cy, label %Map_MatchCompare.exit.thread107, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.5.1116, i64 4
  %i.da = load i32, ptr %i.cz, align 4            ; 2 uses
  %i.db = lshr i32 %i.da, 8
  %i.dc = and i32 %i.db, 15                       ; 2 uses
  %i.dd = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !31
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.df = load i32, ptr %i.de, align 4            ; 2 uses
  %i.dg = lshr i32 %i.df, 8
  %i.dh = and i32 %i.dg, 15                       ; 2 uses
  %i.di = icmp samesign ugt i32 %i.dc, %i.dh
  br i1 %i.di, label %Map_MatchCompare.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dj = icmp samesign ult i32 %i.dc, %i.dh
  br i1 %i.dj, label %Map_MatchCompare.exit.thread107, label %.split

.split:                                           ; preds = %bb.z
  %i.dk = lshr i32 %i.da, 2
  %i.dl = and i32 %i.dk, 7
  %i.dm = lshr i32 %i.df, 2
  %i.dn = and i32 %i.dm, 7
  %spec.select82.i = icmp samesign ugt i32 %i.dl, %i.dn
  br i1 %spec.select82.i, label %Map_MatchCompare.exit.thread107, label %Map_MatchCompare.exit.thread

Map_MatchCompare.exit:                            ; preds = %bb.r
  %i.do = lshr i32 %i.bl, 2
  %i.dp = and i32 %i.do, 7
  %i.dq = lshr i32 %i.bq, 2
  %i.dr = and i32 %i.dq, 7
  %spec.select.i = icmp samesign ugt i32 %i.dp, %i.dr
  br i1 %spec.select.i, label %Map_MatchCompare.exit.thread107, label %Map_MatchCompare.exit.thread

Map_MatchCompare.exit.thread107:                  ; preds = %.split, %bb.r, %bb.z, %bb.n, %bb.x, %bb.p, %bb.t, %bb.w, %Map_MatchCompare.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !36
  %.sroa.5.0.copyload82 = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !37 ; 2 uses
  %i.ds = load i64, ptr %.sroa.9.0..sroa_idx, align 8 ; 2 uses
  %i.dt = load <2 x float>, ptr %.sroa.990.0..sroa_idx, align 8, !tbaa !8 ; 3 uses
  %i.du = load i32, ptr %i.j, align 4, !tbaa !46
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %bb.aa, label %Map_MatchCompare.exit.thread

bb.aa:                                            ; preds = %Map_MatchCompare.exit.thread107
  %i.dw = extractelement <2 x float> %i.dt, i64 0
  br label %Map_MatchCompare.exit.thread

Map_MatchCompare.exit.thread:                     ; preds = %.split, %bb.q, %bb.o, %bb.m, %bb.y, %.thread.i, %bb.s, %bb.v, %Map_MatchCompare.exit, %bb.aa, %Map_MatchCompare.exit.thread107, %bb.k, %bb.j, %bb.e
  %.sroa.9.sroa.0.2 = phi i64 [ %.sroa.9.1115, %bb.j ], [ %.sroa.9.1115, %bb.k ], [ %.sroa.9.1115, %Map_MatchCompare.exit ], [ %i.ds, %bb.aa ], [ %i.ds, %Map_MatchCompare.exit.thread107 ], [ %.sroa.9.1115, %bb.e ], [ %.sroa.9.1115, %bb.v ], [ %.sroa.9.1115, %bb.s ], [ %.sroa.9.1115, %.thread.i ], [ %.sroa.9.1115, %bb.y ], [ %.sroa.9.1115, %bb.m ], [ %.sroa.9.1115, %bb.o ], [ %.sroa.9.1115, %bb.q ], [ %.sroa.9.1115, %.split ] ; 2 uses
  %.sroa.5.2 = phi ptr [ %.sroa.5.1116, %bb.j ], [ %.sroa.5.1116, %bb.k ], [ %.sroa.5.1116, %Map_MatchCompare.exit ], [ %.sroa.5.0.copyload82, %bb.aa ], [ %.sroa.5.0.copyload82, %Map_MatchCompare.exit.thread107 ], [ %.sroa.5.1116, %bb.e ], [ %.sroa.5.1116, %bb.v ], [ %.sroa.5.1116, %bb.s ], [ %.sroa.5.1116, %.thread.i ], [ %.sroa.5.1116, %bb.y ], [ %.sroa.5.1116, %bb.m ], [ %.sroa.5.1116, %bb.o ], [ %.sroa.5.1116, %bb.q ], [ %.sroa.5.1116, %.split ] ; 2 uses
  %.2 = phi float [ %.1117, %bb.j ], [ %.1117, %bb.k ], [ %.1117, %Map_MatchCompare.exit ], [ %i.dw, %bb.aa ], [ %.1117, %Map_MatchCompare.exit.thread107 ], [ %.1117, %bb.e ], [ %.1117, %bb.v ], [ %.1117, %bb.s ], [ %.1117, %.thread.i ], [ %.1117, %bb.y ], [ %.1117, %bb.m ], [ %.1117, %bb.o ], [ %.1117, %bb.q ], [ %.1117, %.split ] ; 2 uses
  %i.dx = phi <2 x float> [ %i.w, %bb.j ], [ %i.w, %bb.k ], [ %i.w, %Map_MatchCompare.exit ], [ %i.dt, %bb.aa ], [ %i.dt, %Map_MatchCompare.exit.thread107 ], [ %i.w, %bb.e ], [ %i.w, %bb.v ], [ %i.w, %bb.s ], [ %i.w, %.thread.i ], [ %i.w, %bb.y ], [ %i.w, %bb.m ], [ %i.w, %bb.o ], [ %i.w, %bb.q ], [ %i.w, %.split ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %.sroa.9.sroa.0.1, 1 ; 2 uses
  %i.dy = load i32, ptr %i.t, align 4
  %i.dz = lshr i32 %i.dy, 28
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = icmp samesign ult i64 %indvars.iv.next, %i.ea
  br i1 %i.eb, label %bb.d, label %._crit_edge, !llvm.loop !47

._crit_edge:                                      ; preds = %Map_MatchCompare.exit.thread, %bb.c
  %.sroa.9.sroa.0.3 = phi i64 [ %.sroa.9.0127154, %bb.c ], [ %.sroa.9.sroa.0.2, %Map_MatchCompare.exit.thread ] ; 3 uses
  %.sroa.5.1.lcssa = phi ptr [ %.sroa.5.0123147, %bb.c ], [ %.sroa.5.2, %Map_MatchCompare.exit.thread ] ; 3 uses
  %.1.lcssa = phi float [ %.076124146, %bb.c ], [ %.2, %Map_MatchCompare.exit.thread ]
  %i.ec = phi <2 x float> [ %i.s, %bb.c ], [ %i.dx, %Map_MatchCompare.exit.thread ] ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.075126144, i64 248
  %.075 = load ptr, ptr %i.ed, align 8, !tbaa !37 ; 2 uses
  %.not = icmp eq ptr %.075, null
  br i1 %.not, label %._crit_edge129, label %bb.b, !llvm.loop !40

._crit_edge129:                                   ; preds = %._crit_edge, %bb.b, %bb.a
  %.sroa.9.sroa.0.4 = phi i64 [ %i.d, %bb.a ], [ %.sroa.9.sroa.0.3, %bb.b ], [ %.sroa.9.sroa.0.3, %._crit_edge ]
  %.sroa.5.0.lcssa = phi ptr [ %.sroa.5.0.copyload, %bb.a ], [ %.sroa.5.1.lcssa, %bb.b ], [ %.sroa.5.1.lcssa, %._crit_edge ] ; 2 uses
  %i.ee = phi <2 x float> [ %i.e, %bb.a ], [ %i.ec, %bb.b ], [ %i.ec, %._crit_edge ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i64 16, i1 false), !tbaa.struct !36
  store ptr %.sroa.5.0.lcssa, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !37
  store i64 %.sroa.9.sroa.0.4, ptr %.sroa.9.0..sroa_idx, align 8
  store <2 x float> %i.ee, ptr %.sroa.990.0..sroa_idx, align 8, !tbaa !8
  %.not80 = icmp eq ptr %.sroa.5.0.lcssa, null
  br i1 %.not80, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge129
  %i.ef = tail call float @Map_TimeCutComputeArrival(ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3, float noundef f0x7DCCCCCC) #10 ; 0 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !46
  switch i32 %i.eh, label %bb.ae [
    i32 2, label %bb.ac
    i32 3, label %bb.ac
    i32 4, label %bb.ad
  ]

bb.ac:                                            ; preds = %bb.ab, %bb.ab
  %i.ei = tail call float @Map_CutGetAreaDerefed(ptr noundef nonnull %2, i32 noundef %3) #10
  br label %.sink.split

bb.ad:                                            ; preds = %bb.ab
  %i.ej = tail call float @Map_SwitchCutGetDerefed(ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3) #10
  br label %.sink.split

bb.ae:                                            ; preds = %bb.ab
  %i.ek = tail call float @Map_CutGetAreaFlow(ptr noundef nonnull %2, i32 noundef %3) #10
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ad, %bb.ae, %bb.ac
  %.sink142 = phi float [ %i.ei, %bb.ac ], [ %i.ek, %bb.ae ], [ %i.ej, %bb.ad ]
  store float %.sink142, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !30
  br label %bb.af

bb.af:                                            ; preds = %.sink.split, %._crit_edge129
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare float @Map_TimeCutComputeArrival(ptr noundef, ptr noundef, i32 noundef, float noundef) local_unnamed_addr #4

declare float @Map_CutGetAreaFlow(ptr noundef, i32 noundef) local_unnamed_addr #4

declare float @Map_CutGetAreaDerefed(ptr noundef, i32 noundef) local_unnamed_addr #4

declare float @Map_SwitchCutGetDerefed(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define noundef i32 @Map_MatchNodePhase(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %3 = alloca %struct.Map_MatchStruct_t_, align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 4 uses
  %i.b = sext i32 %2 to i64                       ; 10 uses
  %i.c = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.b ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48   ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 5 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !46
  %i.g = icmp ne i32 %i.f, 0                      ; 2 uses
  %i.h = icmp eq ptr %i.d, null                   ; 2 uses
  %or.cond = select i1 %i.g, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.ag, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.i = tail call float @Map_TimeCutComputeArrival(ptr noundef nonnull %1, ptr noundef %i.d, i32 noundef %2, float noundef f0x7DCCCCCC) #10 ; 0 uses
  %.pr = load i32, ptr %i.e, align 4, !tbaa !46
  switch i32 %.pr, label %.thread [
    i32 2, label %bb.d
    i32 3, label %bb.d
    i32 4, label %bb.i
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.k = getelementptr inbounds [40 x i8], ptr %i.j, i64 %i.b ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.m = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.b
  %i.n = load i32, ptr %i.m, align 4, !tbaa !38
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not105 = icmp eq i32 %2, 0
  %i.p = zext i1 %.not105 to i64                  ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !48
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.p
  %i.u = load i32, ptr %i.t, align 4, !tbaa !38
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.x = load i32, ptr %i.w, align 8, !tbaa !32
  %i.y = tail call float @Map_CutDeref(ptr noundef %i.d, i32 noundef %2, i32 noundef %i.x) #10
  br label %.thread111.sink.split

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.z = tail call float @Map_CutGetAreaDerefed(ptr noundef %i.d, i32 noundef %2) #10
  br label %.thread111.sink.split

bb.i:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.ab = getelementptr inbounds [40 x i8], ptr %i.aa, i64 %i.b ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.b
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !38
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not = icmp eq i32 %2, 0
  %i.ag = zext i1 %.not to i64                    ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !48
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ag
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !38
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.i
  %i.an = tail call float @Map_SwitchCutDeref(ptr noundef nonnull %1, ptr noundef %i.d, i32 noundef %2) #10
  br label %.thread111.sink.split

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.ao = tail call float @Map_SwitchCutGetDerefed(ptr noundef nonnull %1, ptr noundef %i.d, i32 noundef %2) #10
  br label %.thread111.sink.split

.thread:                                          ; preds = %bb.b, %bb.c
  br i1 %i.h, label %bb.n, label %.thread111

.thread111.sink.split:                            ; preds = %bb.m, %bb.l, %bb.g, %bb.h
  %.sink121 = phi ptr [ %i.k, %bb.h ], [ %i.k, %bb.g ], [ %i.ab, %bb.l ], [ %i.ab, %bb.m ]
  %.sink = phi float [ %i.z, %bb.h ], [ %i.y, %bb.g ], [ %i.an, %bb.l ], [ %i.ao, %bb.m ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.sink121, i64 36
  store float %.sink, ptr %i.ap, align 4, !tbaa !30
  br label %.thread111

.thread111:                                       ; preds = %.thread111.sink.split, %.thread
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.ar = getelementptr inbounds [40 x i8], ptr %i.aq, i64 %i.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %i.ar, i64 40, i1 false), !tbaa.struct !36
  br label %bb.o

bb.n:                                             ; preds = %.thread
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 24, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 24
  store <4 x float> splat (float f0x7DCCCCCC), ptr %i.as, align 8, !tbaa !8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread111
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !50
  %.0100113 = load ptr, ptr %i.au, align 8, !tbaa !53 ; 2 uses
  %.not107114 = icmp eq ptr %.0100113, null
  br i1 %.not107114, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %i.av = getelementptr [12 x i8], ptr %1, i64 %i.b
  %i.aw = getelementptr i8, ptr %i.av, i64 128
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !55
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 32
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.y
  %.0100117 = phi ptr [ %.0100113, %.lr.ph ], [ %.0100, %bb.y ] ; 7 uses
  %.0116 = phi float [ %i.ax, %.lr.ph ], [ %.1, %bb.y ] ; 9 uses
  %.098115 = phi ptr [ %i.d, %.lr.ph ], [ %.199, %bb.y ] ; 6 uses
  %i.bc = load i32, ptr %i.ay, align 4, !tbaa !56
  %.not109 = icmp eq i32 %i.bc, 0
  br i1 %.not109, label %.thread112.thread, label %bb.q
end_hunk_0
