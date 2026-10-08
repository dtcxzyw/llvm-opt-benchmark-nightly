Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/DetourNavMeshBuilder?download=true
inline.NumInlined: 117
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@switch.table._Z19dtCreateNavMeshDataP21dtNavMeshCreateParamsPPhPi = private unnamed_addr constant [12 x i8] c"\00\00\00\00\01\00\01\00\00\01\01\00", align 4
@switch.table._Z19dtCreateNavMeshDataP21dtNavMeshCreateParamsPPhPi.2 = private unnamed_addr constant [12 x i8] c"\00\02\01\04\FF\03\FF\06\07\FF\FF\05", align 1
@switch.table._Z19dtCreateNavMeshDataP21dtNavMeshCreateParamsPPhPi.3 = private unnamed_addr constant [16 x i16] [i16 -32764, i16 -32766, i16 -32768, i16 -32762, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 0], align 2

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @_Z19dtCreateNavMeshDataP21dtNavMeshCreateParamsPPhPi(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !19   ; 16 uses
  %i.c = icmp sgt i32 %i.b, 6
  br i1 %i.c, label %bb.bb, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !50   ; 3 uses
  %i.f = icmp sgt i32 %i.e, 65534
  %.not = icmp eq i32 %i.e, 0
  %or.cond502 = or i1 %i.f, %.not
  br i1 %or.cond502, label %bb.bb, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !20
  %.not484 = icmp eq ptr %i.g, null
  br i1 %.not484, label %bb.bb, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !21   ; 2 uses
  %.not485 = icmp eq i32 %i.i, 0
  br i1 %.not485, label %bb.bb, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22
  %.not486 = icmp eq ptr %i.k, null
  br i1 %.not486, label %bb.bb, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 5 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !51   ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %bb.g, label %bb.x

bb.g:                                             ; preds = %bb.f
  %i.o = shl nuw i32 %i.m, 1
  %i.p = zext i32 %i.o to i64
  %i.q = tail call noundef ptr @_Z7dtAllocm11dtAllocHint(i64 noundef %i.p, i32 noundef 1) #11 ; 4 uses
  %.not487 = icmp eq ptr %i.q, null
  br i1 %.not487, label %bb.bb, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !23   ; 4 uses
  %.not488 = icmp eq ptr %i.s, null
  br i1 %.not488, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.u = load i32, ptr %i.t, align 8, !tbaa !52   ; 5 uses
  %.not489 = icmp eq i32 %i.u, 0
  br i1 %.not489, label %bb.j, label %.preheader537

.preheader537:                                    ; preds = %bb.i
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph.preheader, label %.loopexit536

.lr.ph.preheader:                                 ; preds = %.preheader537
  %wide.trip.count = zext nneg i32 %i.u to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.w = icmp eq i32 %i.u, 1
  br i1 %i.w, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.0466541 = phi float [ f0x7F7FFFFF, %.lr.ph.preheader.new ], [ %i.aj, %.lr.ph ] ; 2 uses
  %.0470540 = phi float [ f0xFF7FFFFF, %.lr.ph.preheader.new ], [ %i.al, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %.idx = mul nuw nsw i64 %indvars.iv, 12
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load float, ptr %i.y, align 4, !tbaa !24 ; 4 uses
  %i.aa = fcmp olt float %.0466541, %i.z
  %i.ab = select i1 %i.aa, float %.0466541, float %i.z ; 2 uses
  %i.ac = fcmp ogt float %.0470540, %i.z
  %i.ad = select i1 %i.ac, float %.0470540, float %i.z ; 2 uses
  %i.ae = mul nuw i64 %indvars.iv, 12
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !24 ; 4 uses
  %i.ai = fcmp olt float %i.ab, %i.ah
  %i.aj = select i1 %i.ai, float %i.ab, float %i.ah ; 3 uses
  %i.ak = fcmp ogt float %i.ad, %i.ah
  %i.al = select i1 %i.ak, float %i.ad, float %i.ah ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit536.loopexit823.unr-lcssa, label %.lr.ph

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.am = load i32, ptr %i.d, align 8, !tbaa !50  ; 2 uses
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.lr.ph546, label %.loopexit536

.lr.ph546:                                        ; preds = %bb.j
  %i.ao = load ptr, ptr %0, align 8, !tbaa !20
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.aq = load float, ptr %i.ap, align 8, !tbaa !24
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.as = load float, ptr %i.ar, align 4, !tbaa !53
  %wide.trip.count652 = zext nneg i32 %i.am to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph546, %bb.k
  %indvars.iv649 = phi i64 [ 0, %.lr.ph546 ], [ %indvars.iv.next650, %bb.k ] ; 2 uses
  %.1467545 = phi float [ f0x7F7FFFFF, %.lr.ph546 ], [ %i.az, %bb.k ] ; 2 uses
  %.1471543 = phi float [ f0xFF7FFFFF, %.lr.ph546 ], [ %i.bb, %bb.k ] ; 2 uses
  %.idx758 = mul nuw nsw i64 %indvars.iv649, 6
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.idx758
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  %i.av = load i16, ptr %i.au, align 2, !tbaa !26
  %i.aw = uitofp i16 %i.av to float
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.aw, float %i.as, float %i.aq) ; 4 uses
  %i.ay = fcmp olt float %.1467545, %i.ax
  %i.az = select i1 %i.ay, float %.1467545, float %i.ax ; 2 uses
  %i.ba = fcmp ogt float %.1471543, %i.ax
  %i.bb = select i1 %i.ba, float %.1471543, float %i.ax ; 2 uses
  %indvars.iv.next650 = add nuw nsw i64 %indvars.iv649, 1 ; 2 uses
  %exitcond653.not = icmp eq i64 %indvars.iv.next650, %wide.trip.count652
  br i1 %exitcond653.not, label %.loopexit536, label %bb.k

.loopexit536.loopexit823.unr-lcssa:               ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit536, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit536.loopexit823.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.loopexit536.loopexit823.unr-lcssa ]
  %.0466541.epil.init = phi float [ f0x7F7FFFFF, %.lr.ph.preheader ], [ %i.aj, %.loopexit536.loopexit823.unr-lcssa ] ; 2 uses
  %.0470540.epil.init = phi float [ f0xFF7FFFFF, %.lr.ph.preheader ], [ %i.al, %.loopexit536.loopexit823.unr-lcssa ] ; 2 uses
  %lcmp.mod828 = trunc i32 %i.u to i1
  tail call void @llvm.assume(i1 %lcmp.mod828)
  %.idx.epil = mul nuw nsw i64 %indvars.iv.epil.init, 12
  %i.bc = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx.epil
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.be = load float, ptr %i.bd, align 4, !tbaa !24 ; 4 uses
  %i.bf = fcmp olt float %.0466541.epil.init, %i.be
  %i.bg = select i1 %i.bf, float %.0466541.epil.init, float %i.be
  %i.bh = fcmp ogt float %.0470540.epil.init, %i.be
  %i.bi = select i1 %i.bh, float %.0470540.epil.init, float %i.be
  br label %.loopexit536

.loopexit536:                                     ; preds = %.lr.ph.epil.preheader, %.loopexit536.loopexit823.unr-lcssa, %bb.k, %.preheader537, %bb.j
  %.2472 = phi float [ %i.bb, %bb.k ], [ f0xFF7FFFFF, %bb.j ], [ f0xFF7FFFFF, %.preheader537 ], [ %i.al, %.loopexit536.loopexit823.unr-lcssa ], [ %i.bi, %.lr.ph.epil.preheader ]
  %.2468 = phi float [ %i.az, %bb.k ], [ f0x7F7FFFFF, %bb.j ], [ f0x7F7FFFFF, %.preheader537 ], [ %i.aj, %.loopexit536.loopexit823.unr-lcssa ], [ %i.bg, %.lr.ph.epil.preheader ]
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !54 ; 2 uses
  %i.bl = fsub float %.2468, %i.bk
  %i.bm = fadd float %.2472, %i.bk
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !24 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !24 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bs = load float, ptr %i.br, align 8, !tbaa !24 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bu = load float, ptr %i.bt, align 8, !tbaa !24 ; 2 uses
  %i.bv = load i32, ptr %i.l, align 8, !tbaa !51
  %i.bw = icmp sgt i32 %i.bv, 0
  br i1 %i.bw, label %.lr.ph552, label %._crit_edge

.lr.ph552:                                        ; preds = %.loopexit536
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.l

._crit_edge.loopexit:                             ; preds = %bb.w
  %i.by = shl nsw i32 %.2444, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.loopexit536
  %.0442.lcssa = phi i32 [ 0, %.loopexit536 ], [ %i.by, %._crit_edge.loopexit ]
  %.0439.lcssa = phi i32 [ 0, %.loopexit536 ], [ %.1440, %._crit_edge.loopexit ]
  %.pre = load i32, ptr %i.h, align 8, !tbaa !21
  %.pre731 = load i32, ptr %i.d, align 8, !tbaa !50
  br label %bb.x

bb.l:                                             ; preds = %.lr.ph552, %bb.w
  %indvars.iv654 = phi i64 [ 0, %.lr.ph552 ], [ %indvars.iv.next655, %bb.w ] ; 3 uses
  %.0439551 = phi i32 [ 0, %.lr.ph552 ], [ %.1440, %bb.w ]
  %.0442550 = phi i32 [ 0, %.lr.ph552 ], [ %.2444, %bb.w ]
  %i.bz = load ptr, ptr %i.bx, align 8, !tbaa !55 ; 2 uses
  %i.ca = shl nuw nsw i64 %indvars.iv654, 1       ; 2 uses
  %.idx759 = mul nuw nsw i64 %indvars.iv654, 24
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.idx759 ; 3 uses
  %3 = or disjoint i64 %i.ca, 1                   ; 2 uses
  %.idx760 = mul nuw nsw i64 %3, 12
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.idx760 ; 2 uses
  %.val508 = load float, ptr %i.cb, align 4, !tbaa !24 ; 2 uses
  %i.cd = getelementptr i8, ptr %i.cb, i64 8
  %.val509 = load float, ptr %i.cd, align 4, !tbaa !24 ; 2 uses
  %i.ce = fcmp oge float %.val508, %i.bs
  %i.cf = fcmp oge float %.val509, %i.bu
  %i.cg = select i1 %i.cf, i32 2, i32 0
  %i.ch = zext i1 %i.ce to i32
  %i.ci = fcmp olt float %.val508, %i.bo
  %i.cj = select i1 %i.ci, i32 4, i32 0
  %i.ck = fcmp olt float %.val509, %i.bq
  %i.cl = select i1 %i.ck, i32 8, i32 0
  %i.cm = or disjoint i32 %i.cj, %i.ch
  %i.cn = or disjoint i32 %i.cm, %i.cl
  %i.co = or disjoint i32 %i.cn, %i.cg
  switch i32 %i.co, label %bb.t [
    i32 1, label %_ZL20classifyOffMeshPointPKfS0_S0_.exit
    i32 3, label %bb.m
    i32 2, label %bb.n
    i32 6, label %bb.o
    i32 4, label %bb.p
    i32 12, label %bb.q
    i32 8, label %bb.r
    i32 9, label %bb.s
  ]

bb.m:                                             ; preds = %bb.l
  br label %_ZL20classifyOffMeshPointPKfS0_S0_.exit

bb.n:                                             ; preds = %bb.l
  br label %_ZL20classifyOffMeshPointPKfS0_S0_.exit

bb.o:                                             ; preds = %bb.l
  br label %_ZL20classifyOffMeshPointPKfS0_S0_.exit

bb.p:                                             ; preds = %bb.l
  br label %_ZL20classifyOffMeshPointPKfS0_S0_.exit

bb.q:                                             ; preds = %bb.l
  br label %_ZL20classifyOffMeshPointPKfS0_S0_.exit

bb.r:                                             ; preds = %bb.l
  br label %_ZL20classifyOffMeshPointPKfS0_S0_.exit

bb.s:                                             ; preds = %bb.l
  br label %_ZL20classifyOffMeshPointPKfS0_S0_.exit

bb.t:                                             ; preds = %bb.l
  br label %_ZL20classifyOffMeshPointPKfS0_S0_.exit

_ZL20classifyOffMeshPointPKfS0_S0_.exit:          ; preds = %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t
  %i.cp = phi i1 [ true, %bb.t ], [ false, %bb.s ], [ false, %bb.m ], [ false, %bb.n ], [ false, %bb.o ], [ false, %bb.p ], [ false, %bb.q ], [ false, %bb.r ], [ false, %bb.l ]
  %.0.i = phi i8 [ -1, %bb.t ], [ 7, %bb.s ], [ 1, %bb.m ], [ 2, %bb.n ], [ 3, %bb.o ], [ 4, %bb.p ], [ 5, %bb.q ], [ 6, %bb.r ], [ 0, %bb.l ] ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ca ; 2 uses
  store i8 %.0.i, ptr %i.cq, align 1, !tbaa !27
  %.val = load float, ptr %i.cc, align 4, !tbaa !24 ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cc, i64 8
  %.val503 = load float, ptr %i.cr, align 4, !tbaa !24 ; 2 uses
  %i.cs = fcmp oge float %.val, %i.bs
  %i.ct = fcmp oge float %.val503, %i.bu
  %i.cu = select i1 %i.ct, i32 2, i32 0
  %i.cv = zext i1 %i.cs to i32
  %i.cw = fcmp olt float %.val, %i.bo
  %i.cx = select i1 %i.cw, i32 4, i32 0
  %i.cy = fcmp olt float %.val503, %i.bq
  %i.cz = select i1 %i.cy, i32 8, i32 0
  %i.da = or disjoint i32 %i.cx, %i.cv
  %i.db = or disjoint i32 %i.da, %i.cz
  %i.dc = or disjoint i32 %i.db, %i.cu
  %switch.tableidx = add nsw i32 %i.dc, -1        ; 3 uses
  %i.dd = icmp ult i32 %switch.tableidx, 12
  br i1 %i.dd, label %switch.lookup, label %_ZL20classifyOffMeshPointPKfS0_S0_.exit515

switch.lookup:                                    ; preds = %_ZL20classifyOffMeshPointPKfS0_S0_.exit
  %i.de = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._Z19dtCreateNavMeshDataP21dtNavMeshCreateParamsPPhPi, i64 %i.de
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.df = zext nneg i32 %switch.tableidx to i64
  %switch.gep811 = getelementptr inbounds nuw i8, ptr @switch.table._Z19dtCreateNavMeshDataP21dtNavMeshCreateParamsPPhPi.2, i64 %i.df
  %switch.load812 = load i8, ptr %switch.gep811, align 1
  br label %_ZL20classifyOffMeshPointPKfS0_S0_.exit515

_ZL20classifyOffMeshPointPKfS0_S0_.exit515:       ; preds = %_ZL20classifyOffMeshPointPKfS0_S0_.exit, %switch.lookup
  %i.dg = phi i32 [ %switch.ext, %switch.lookup ], [ 1, %_ZL20classifyOffMeshPointPKfS0_S0_.exit ]
  %i.dh = phi i8 [ %switch.load812, %switch.lookup ], [ -1, %_ZL20classifyOffMeshPointPKfS0_S0_.exit ]
  %i.di = getelementptr inbounds nuw i8, ptr %i.q, i64 %3
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !27
  br i1 %i.cp, label %bb.u, label %bb.w

bb.u:                                             ; preds = %_ZL20classifyOffMeshPointPKfS0_S0_.exit515
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !24 ; 2 uses
  %i.dl = fcmp olt float %i.dk, %i.bl
  %i.dm = fcmp ogt float %i.dk, %i.bm
  %or.cond = select i1 %i.dl, i1 true, i1 %i.dm
  br i1 %or.cond, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i8 0, ptr %i.cq, align 1, !tbaa !27
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %_ZL20classifyOffMeshPointPKfS0_S0_.exit515
  %i.dn = phi i8 [ %.0.i, %bb.u ], [ 0, %bb.v ], [ %.0.i, %_ZL20classifyOffMeshPointPKfS0_S0_.exit515 ]
  %i.do = icmp eq i8 %i.dn, -1
  %i.dp = zext i1 %i.do to i32                    ; 2 uses
  %spec.select = add nsw i32 %.0442550, %i.dp
  %.2444 = add nsw i32 %spec.select, %i.dg        ; 2 uses
  %.1440 = add nuw nsw i32 %.0439551, %i.dp       ; 2 uses
  %indvars.iv.next655 = add nuw nsw i64 %indvars.iv654, 1 ; 2 uses
  %i.dq = load i32, ptr %i.l, align 8, !tbaa !51
  %i.dr = sext i32 %i.dq to i64
  %i.ds = icmp slt i64 %indvars.iv.next655, %i.dr
  br i1 %i.ds, label %bb.l, label %._crit_edge.loopexit

bb.x:                                             ; preds = %._crit_edge, %bb.f
  %i.dt = phi i32 [ %.pre731, %._crit_edge ], [ %i.e, %bb.f ]
  %i.du = phi i32 [ %.pre, %._crit_edge ], [ %i.i, %bb.f ] ; 7 uses
  %.3445 = phi i32 [ %.0442.lcssa, %._crit_edge ], [ 0, %bb.f ] ; 5 uses
  %.2441 = phi i32 [ %.0439.lcssa, %._crit_edge ], [ 0, %bb.f ] ; 4 uses
  %.0434 = phi ptr [ %i.q, %._crit_edge ], [ null, %bb.f ] ; 5 uses
  %i.dv = add nsw i32 %i.du, %.2441               ; 2 uses
  %i.dw = shl nsw i32 %.2441, 1
  %i.dx = add nsw i32 %i.dt, %i.dw                ; 2 uses
  %i.dy = icmp sgt i32 %i.du, 0
  br i1 %i.dy, label %.lr.ph570, label %._crit_edge571.thread

.lr.ph570:                                        ; preds = %bb.x
  %i.dz = load ptr, ptr %i.j, align 8, !tbaa !22
  %i.ea = shl i32 %i.b, 1
  %i.eb = icmp sgt i32 %i.b, 0
  br i1 %i.eb, label %.lr.ph559.us.preheader, label %._crit_edge571.thread768

.lr.ph559.us.preheader:                           ; preds = %.lr.ph570
  %i.ec = zext nneg i32 %i.b to i64               ; 2 uses
  %wide.trip.count665 = zext nneg i32 %i.du to i64
  br label %.lr.ph559.us

.lr.ph559.us:                                     ; preds = %.lr.ph559.us.preheader, %._crit_edge560.us
  %indvars.iv662 = phi i64 [ 0, %.lr.ph559.us.preheader ], [ %indvars.iv.next663, %._crit_edge560.us ] ; 2 uses
  %.0459567.us = phi i32 [ 0, %.lr.ph559.us.preheader ], [ %.1460.lcssa.us, %._crit_edge560.us ]
  %.0463566.us = phi i32 [ 0, %.lr.ph559.us.preheader ], [ %.1464.lcssa.us, %._crit_edge560.us ] ; 2 uses
  %i.ed = trunc nuw nsw i64 %indvars.iv662 to i32
  %i.ee = mul i32 %i.ea, %i.ed
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds [2 x i8], ptr %i.dz, i64 %i.ef ; 2 uses
  %i.eh = add i32 %i.b, %.0463566.us
  %invariant.gep = getelementptr inbounds nuw [2 x i8], ptr %i.eg, i64 %i.ec
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph559.us, %bb.z
  %indvars.iv657 = phi i64 [ 0, %.lr.ph559.us ], [ %indvars.iv.next658, %bb.z ] ; 3 uses
  %.1460556.us = phi i32 [ %.0459567.us, %.lr.ph559.us ], [ %.3462.us, %bb.z ] ; 2 uses
  %.1464555.us = phi i32 [ %.0463566.us, %.lr.ph559.us ], [ %i.el, %bb.z ] ; 2 uses
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %i.eg, i64 %indvars.iv657
  %i.ej = load i16, ptr %i.ei, align 2, !tbaa !26
  %i.ek = icmp eq i16 %i.ej, -1
  br i1 %i.ek, label %._crit_edge560.us, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.el = add nsw i32 %.1464555.us, 1
  %gep = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %indvars.iv657
  %i.em = load i16, ptr %gep, align 2, !tbaa !26  ; 2 uses
  %i.en = and i16 %i.em, 15
  %.not498.us = icmp ne i16 %i.en, 15
  %.not497528.us = icmp slt i16 %i.em, 0
  %narrow.us = and i1 %.not497528.us, %.not498.us
  %spec.select500.us = zext i1 %narrow.us to i32
  %.3462.us = add nsw i32 %.1460556.us, %spec.select500.us ; 2 uses
  %indvars.iv.next658 = add nuw nsw i64 %indvars.iv657, 1 ; 2 uses
  %exitcond661.not = icmp eq i64 %indvars.iv.next658, %i.ec
  br i1 %exitcond661.not, label %._crit_edge560.us, label %bb.y

._crit_edge560.us:                                ; preds = %bb.z, %bb.y
  %.1464.lcssa.us = phi i32 [ %.1464555.us, %bb.y ], [ %i.eh, %bb.z ] ; 2 uses
  %.1460.lcssa.us = phi i32 [ %.1460556.us, %bb.y ], [ %.3462.us, %bb.z ] ; 2 uses
  %indvars.iv.next663 = add nuw nsw i64 %indvars.iv662, 1 ; 2 uses
  %exitcond666.not = icmp eq i64 %indvars.iv.next663, %wide.trip.count665
  br i1 %exitcond666.not, label %._crit_edge571, label %.lr.ph559.us

._crit_edge571:                                   ; preds = %._crit_edge560.us
  %i.eo = shl nsw i32 %.1460.lcssa.us, 1
  %i.ep = add i32 %.1464.lcssa.us, %.3445
  %i.eq = add i32 %i.ep, %i.eo                    ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !28 ; 2 uses
  %.not490 = icmp eq ptr %i.es, null
  br i1 %.not490, label %.lr.ph598, label %.lr.ph586

._crit_edge571.thread768:                         ; preds = %.lr.ph570
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !28 ; 2 uses
  %.not490771 = icmp eq ptr %i.eu, null
  br i1 %.not490771, label %.lr.ph598, label %.lr.ph586

._crit_edge571.thread:                            ; preds = %bb.x
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !28
  %.not490767 = icmp eq ptr %i.ew, null
  br i1 %.not490767, label %.loopexit534, label %.thread773

.thread773:                                       ; preds = %._crit_edge571.thread
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !56
  br label %.loopexit534

.lr.ph598:                                        ; preds = %._crit_edge571, %._crit_edge571.thread768
  %i.ez = phi i32 [ %.3445, %._crit_edge571.thread768 ], [ %i.eq, %._crit_edge571 ]
  %i.fa = phi ptr [ %i.et, %._crit_edge571.thread768 ], [ %i.er, %._crit_edge571 ]
  %i.fb = load ptr, ptr %i.j, align 8, !tbaa !22
  %i.fc = shl i32 %i.b, 1
  %i.fd = icmp sgt i32 %i.b, 0
  %wide.trip.count689 = zext nneg i32 %i.du to i64
  %wide.trip.count684 = zext nneg i32 %i.b to i64
  br label %bb.ac

.lr.ph586:                                        ; preds = %._crit_edge571, %._crit_edge571.thread768
  %i.fe = phi i32 [ %.3445, %._crit_edge571.thread768 ], [ %i.eq, %._crit_edge571 ]
  %i.ff = phi ptr [ %i.et, %._crit_edge571.thread768 ], [ %i.er, %._crit_edge571 ]
  %i.fg = phi ptr [ %i.eu, %._crit_edge571.thread768 ], [ %i.es, %._crit_edge571 ]
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.fh = load i32, ptr %.in, align 8, !tbaa !56
  %i.fi = load ptr, ptr %i.j, align 8, !tbaa !22
  %i.fj = shl i32 %i.b, 1
  %i.fk = icmp sgt i32 %i.b, 0
  %wide.trip.count677 = zext nneg i32 %i.du to i64
  %wide.trip.count672 = zext nneg i32 %i.b to i64
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph586, %._crit_edge579
  %indvars.iv674 = phi i64 [ 0, %.lr.ph586 ], [ %indvars.iv.next675, %._crit_edge579 ] ; 3 uses
  %.0455583 = phi i32 [ 0, %.lr.ph586 ], [ %i.fw, %._crit_edge579 ]
  %i.fl = trunc nuw nsw i64 %indvars.iv674 to i32
  %i.fm = mul i32 %i.fj, %i.fl
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds [2 x i8], ptr %i.fi, i64 %i.fn
  %.idx761 = shl nuw nsw i64 %indvars.iv674, 4
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fg, i64 %.idx761
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !29
  br i1 %i.fk, label %.lr.ph578, label %._crit_edge579

.lr.ph578:                                        ; preds = %bb.aa, %bb.ab
  %indvars.iv667 = phi i64 [ %indvars.iv.next668, %bb.ab ], [ 0, %bb.aa ] ; 3 uses
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %i.fo, i64 %indvars.iv667
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !26
  %i.fu = icmp eq i16 %i.ft, -1
  br i1 %i.fu, label %._crit_edge579.loopexit.split.loop.exit, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph578
  %indvars.iv.next668 = add nuw nsw i64 %indvars.iv667, 1 ; 2 uses
  %exitcond673.not = icmp eq i64 %indvars.iv.next668, %wide.trip.count672
  br i1 %exitcond673.not, label %._crit_edge579, label %.lr.ph578

._crit_edge579.loopexit.split.loop.exit:          ; preds = %.lr.ph578
  %indvars671.le = trunc i64 %indvars.iv667 to i32
  br label %._crit_edge579

._crit_edge579:                                   ; preds = %bb.ab, %._crit_edge579.loopexit.split.loop.exit, %bb.aa
  %.0451.lcssa = phi i32 [ 0, %bb.aa ], [ %indvars671.le, %._crit_edge579.loopexit.split.loop.exit ], [ %i.b, %bb.ab ]
  %i.fv = add i32 %i.fr, %.0455583
  %i.fw = sub i32 %i.fv, %.0451.lcssa             ; 2 uses
  %indvars.iv.next675 = add nuw nsw i64 %indvars.iv674, 1 ; 2 uses
  %exitcond678.not = icmp eq i64 %indvars.iv.next675, %wide.trip.count677
  br i1 %exitcond678.not, label %.loopexit534, label %bb.aa

bb.ac:                                            ; preds = %.lr.ph598, %._crit_edge592
  %indvars.iv686 = phi i64 [ 0, %.lr.ph598 ], [ %indvars.iv.next687, %._crit_edge592 ] ; 2 uses
  %.0453596 = phi i32 [ 0, %.lr.ph598 ], [ %i.gf, %._crit_edge592 ]
  %i.fx = trunc nuw nsw i64 %indvars.iv686 to i32
  %i.fy = mul i32 %i.fc, %i.fx
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr inbounds [2 x i8], ptr %i.fb, i64 %i.fz
  br i1 %i.fd, label %.lr.ph591, label %._crit_edge592

.lr.ph591:                                        ; preds = %bb.ac, %bb.ad
  %indvars.iv679 = phi i64 [ %indvars.iv.next680, %bb.ad ], [ 0, %bb.ac ] ; 3 uses
  %i.gb = getelementptr inbounds nuw [2 x i8], ptr %i.ga, i64 %indvars.iv679
  %i.gc = load i16, ptr %i.gb, align 2, !tbaa !26
  %i.gd = icmp eq i16 %i.gc, -1
  br i1 %i.gd, label %._crit_edge592.loopexit.split.loop.exit, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph591
  %indvars.iv.next680 = add nuw nsw i64 %indvars.iv679, 1 ; 2 uses
  %exitcond685.not = icmp eq i64 %indvars.iv.next680, %wide.trip.count684
  br i1 %exitcond685.not, label %._crit_edge592, label %.lr.ph591

end_hunk_0
