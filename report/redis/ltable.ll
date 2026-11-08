Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/ltable?download=true
inline.NumInlined: 30
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lua_TValue = type { %union.Value, i32 }
%union.Value = type { ptr }

@luaO_nilobject_ = external hidden constant %struct.lua_TValue, align 8
@.str = private unnamed_addr constant [19 x i8] c"table index is nil\00", align 1, !guid !11
@.str.1 = private unnamed_addr constant [19 x i8] c"table index is NaN\00", align 1, !guid !12
@.str.2 = private unnamed_addr constant [22 x i8] c"invalid key to 'next'\00", align 1, !guid !13
@dummynode_ = internal constant { { %union.Value, i32, [4 x i8] }, { { %union.Value, i32, [4 x i8], ptr } } } zeroinitializer, align 8, !guid !14
@.str.4 = private unnamed_addr constant [15 x i8] c"table overflow\00", align 1, !guid !15

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @luaH_next(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 !guid !39 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17
  switch i32 %i.b, label %bb.i [
    i32 0, label %findindex.exit
    i32 3, label %bb.b
    i32 2, label %bb.h
    i32 4, label %bb.f
    i32 1, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load double, ptr %2, align 8, !tbaa !18  ; 4 uses
  %i.d = fptosi double %i.c to i32                ; 4 uses
  %i.e = sitofp i32 %i.d to double
  %i.f = fcmp oeq double %i.c, %i.e
  %i.g = icmp sgt i32 %i.d, 0
  %or.cond.i = and i1 %i.g, %i.f
  br i1 %or.cond.i, label %bb.c, label %.thread27.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.i = load i32, ptr %i.h, align 8, !tbaa !25
  %.not.i = icmp slt i32 %i.i, %i.d
  br i1 %.not.i, label %.thread27.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.d, -1
  br label %findindex.exit

.thread27.i:                                      ; preds = %bb.c, %bb.b
  %i.k = fcmp oeq double %i.c, 0.000000e+00
  br i1 %i.k, label %bb.e, label %.critedge.i.i.i

bb.e:                                             ; preds = %.thread27.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !26
  br label %mainposition.exit.i.preheader

.critedge.i.i.i:                                  ; preds = %.thread27.i
  %i.n = bitcast double %i.c to i64               ; 2 uses
  %.sroa.0.4.extract.shift.i.i.i = lshr i64 %i.n, 32
  %i.o = add i64 %.sroa.0.4.extract.shift.i.i.i, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !26
  %.sroa.0.0.extract.trunc10.i.i.i = trunc i64 %i.o to i32
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load i8, ptr %i.r, align 8, !tbaa !27
  %i.t = zext nneg i8 %i.s to i32
  %notmask.i.i.i = shl nsw i32 -1, %i.t
  %i.u = xor i32 %notmask.i.i.i, -1
  %i.v = or i32 %i.u, 1
  %i.w = urem i32 %.sroa.0.0.extract.trunc10.i.i.i, %i.v
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [40 x i8], ptr %i.q, i64 %i.x
  br label %mainposition.exit.i.preheader

bb.f:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !26
  %i.ab = load ptr, ptr %2, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !27
  %i.ag = zext nneg i8 %i.af to i32
  %notmask17.i.i = shl nsw i32 -1, %i.ag
  %i.ah = xor i32 %notmask17.i.i, -1
  %i.ai = and i32 %i.ad, %i.ah
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [40 x i8], ptr %i.aa, i64 %i.aj
  br label %mainposition.exit.i.preheader

bb.g:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !26
  %i.an = load i32, ptr %2, align 8, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !27
  %i.aq = zext nneg i8 %i.ap to i32
  %notmask16.i.i = shl nsw i32 -1, %i.aq
  %i.ar = xor i32 %notmask16.i.i, -1
  %i.as = and i32 %i.an, %i.ar
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [40 x i8], ptr %i.am, i64 %i.at
  br label %mainposition.exit.i.preheader

bb.h:                                             ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !26
  %i.ax = load ptr, ptr %2, align 8, !tbaa !18
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = trunc i64 %i.ay to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !27
  %i.bc = zext nneg i8 %i.bb to i32
  %notmask.i.i = shl nsw i32 -1, %i.bc
  %i.bd = xor i32 %notmask.i.i, -1
  %i.be = or i32 %i.bd, 1
  %i.bf = urem i32 %i.az, %i.be
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [40 x i8], ptr %i.aw, i64 %i.bg
  br label %mainposition.exit.i.preheader

bb.i:                                             ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !26
  %i.bk = load ptr, ptr %2, align 8, !tbaa !18
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !27
  %i.bp = zext nneg i8 %i.bo to i32
  %notmask18.i.i = shl nsw i32 -1, %i.bp
  %i.bq = xor i32 %notmask18.i.i, -1
  %i.br = or i32 %i.bq, 1
  %i.bs = urem i32 %i.bm, %i.br
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [40 x i8], ptr %i.bj, i64 %i.bt
  br label %mainposition.exit.i.preheader

mainposition.exit.i.preheader:                    ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %.critedge.i.i.i, %bb.e
  %.0.i.ph = phi ptr [ %i.y, %.critedge.i.i.i ], [ %i.m, %bb.e ], [ %i.au, %bb.g ], [ %i.ak, %bb.f ], [ %i.bh, %bb.h ], [ %i.bu, %bb.i ]
  br label %mainposition.exit.i

mainposition.exit.i:                              ; preds = %mainposition.exit.i.preheader, %bb.n
  %.0.i = phi ptr [ %i.cq, %bb.n ], [ %.0.i.ph, %mainposition.exit.i.preheader ] ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 2 uses
  %i.bw = tail call i32 @luaO_rawequalObj(ptr noundef nonnull %i.bv, ptr noundef %2) #7
  %.not24.i = icmp eq i32 %i.bw, 0
  br i1 %.not24.i, label %bb.j, label %bb.m

bb.j:                                             ; preds = %mainposition.exit.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !18
  %i.bz = icmp eq i32 %i.by, 11
  br i1 %i.bz, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ca = load i32, ptr %i.a, align 8, !tbaa !17
  %i.cb = icmp sgt i32 %i.ca, 3
  br i1 %i.cb, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.cc = load ptr, ptr %i.bv, align 8, !tbaa !18
  %i.cd = load ptr, ptr %2, align 8, !tbaa !18
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %mainposition.exit.i
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !26
  %i.ch = ptrtoint ptr %.0.i to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = sdiv exact i64 %i.cj, 40
  %i.cl = trunc i64 %i.ck to i32
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !25
  %i.co = add nsw i32 %i.cn, %i.cl
  br label %findindex.exit

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !18 ; 2 uses
  %.not25.i = icmp eq ptr %i.cq, null
  br i1 %.not25.i, label %bb.o, label %mainposition.exit.i, !llvm.loop !36

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ptr, ...) @luaG_runerror(ptr noundef %0, ptr noundef nonnull @.str.2) #7
  br label %findindex.exit

findindex.exit:                                   ; preds = %bb.a, %bb.d, %bb.m, %bb.o
  %.1.i = phi i32 [ -1, %bb.a ], [ %i.j, %bb.d ], [ %i.co, %bb.m ], [ 0, %bb.o ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !25 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.cu = sext i32 %.1.i to i64                   ; 2 uses
  %i.cv = sext i32 %i.cs to i64                   ; 2 uses
  %3 = add i32 %.1.i, 1
  %4 = sub i32 %3, %i.cs                          ; 2 uses
  %indvars.iv.next85 = add nsw i64 %i.cu, 1       ; 3 uses
  %i.cw = icmp slt i64 %indvars.iv.next85, %i.cv
  br i1 %i.cw, label %.lr.ph89.preheader, label %._crit_edge

.lr.ph89.preheader:                               ; preds = %findindex.exit
  %i.cx = load ptr, ptr %i.ct, align 8, !tbaa !29
  br label %.lr.ph89

bb.p:                                             ; preds = %.lr.ph89
  %indvars.iv.next62 = add i32 %indvars.iv6186, 1 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv.next88, 1 ; 3 uses
  %i.cy = icmp slt i64 %indvars.iv.next, %i.cv
  br i1 %i.cy, label %.lr.ph89, label %._crit_edge, !llvm.loop !37

.lr.ph89:                                         ; preds = %.lr.ph89.preheader, %bb.p
  %indvars.iv.next88 = phi i64 [ %indvars.iv.next, %bb.p ], [ %indvars.iv.next85, %.lr.ph89.preheader ] ; 4 uses
  %indvars.iv87 = phi i64 [ %indvars.iv.next88, %bb.p ], [ %i.cu, %.lr.ph89.preheader ]
  %indvars.iv6186 = phi i32 [ %indvars.iv.next62, %bb.p ], [ %4, %.lr.ph89.preheader ]
  %i.cz = getelementptr inbounds [16 x i8], ptr %i.cx, i64 %indvars.iv.next88
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load i32, ptr %i.da, align 8, !tbaa !17
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %bb.p, label %bb.q, !llvm.loop !37

bb.q:                                             ; preds = %.lr.ph89
  %i.dd = trunc nsw i64 %indvars.iv87 to i32
  %i.de = add nsw i32 %i.dd, 2
  %i.df = sitofp i32 %i.de to double
  store double %i.df, ptr %2, align 8, !tbaa !18
  store i32 3, ptr %i.a, align 8, !tbaa !17
  %i.dg = load ptr, ptr %i.ct, align 8, !tbaa !29
  %i.dh = getelementptr inbounds [16 x i8], ptr %i.dg, i64 %indvars.iv.next88 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dj = load i64, ptr %i.dh, align 8, !tbaa !18
  store i64 %i.dj, ptr %i.di, align 8, !tbaa !18
  br label %.loopexit.sink.split

._crit_edge:                                      ; preds = %bb.p, %findindex.exit
  %indvars.iv61.lcssa = phi i32 [ %4, %findindex.exit ], [ %indvars.iv.next62, %bb.p ]
  %indvars.iv.next.lcssa = phi i64 [ %indvars.iv.next85, %findindex.exit ], [ %indvars.iv.next, %bb.p ]
  %i.dk = trunc nsw i64 %indvars.iv.next.lcssa to i32
  %i.dl = sub nsw i32 %i.dk, %i.cs
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dn = load i8, ptr %i.dm, align 8, !tbaa !27
  %i.do = zext nneg i8 %i.dn to i32
  %i.dp = shl nuw i32 1, %i.do                    ; 2 uses
  %i.dq = icmp slt i32 %i.dl, %i.dp
  br i1 %i.dq, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %._crit_edge
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !26
  %i.dt = zext i32 %indvars.iv61.lcssa to i64
  br label %bb.s

bb.r:                                             ; preds = %bb.s
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %i.du = trunc nuw i64 %indvars.iv.next65 to i32
  %i.dv = icmp sgt i32 %i.dp, %i.du
  br i1 %i.dv, label %bb.s, label %.loopexit, !llvm.loop !38

bb.s:                                             ; preds = %.lr.ph, %bb.r
  %indvars.iv64 = phi i64 [ %i.dt, %.lr.ph ], [ %indvars.iv.next65, %bb.r ] ; 3 uses
  %i.dw = getelementptr inbounds nuw [40 x i8], ptr %i.ds, i64 %indvars.iv64 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !31
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %bb.r, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !18
  store i64 %i.eb, ptr %2, align 8, !tbaa !18
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !17
  store i32 %i.ed, ptr %i.a, align 8, !tbaa !17
  %i.ee = load ptr, ptr %i.dr, align 8, !tbaa !26
  %i.ef = getelementptr inbounds nuw [40 x i8], ptr %i.ee, i64 %indvars.iv64 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.eh = load i64, ptr %i.ef, align 8, !tbaa !18
  store i64 %i.eh, ptr %i.eg, align 8, !tbaa !18
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.q, %bb.t
  %.sink = phi ptr [ %i.ef, %bb.t ], [ %i.dh, %bb.q ]
  %i.ei = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !17
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %i.ej, ptr %i.ek, align 8, !tbaa !17
  br label %.loopexit

.loopexit:                                        ; preds = %bb.r, %.loopexit.sink.split, %._crit_edge
  %.0 = phi i32 [ 0, %._crit_edge ], [ 1, %.loopexit.sink.split ], [ 0, %bb.r ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define hidden void @luaH_resizearray(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !guid !40 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.c = icmp eq ptr %i.b, @dummynode_
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i8, ptr %i.d, align 8, !tbaa !27
  %i.f = zext nneg i8 %i.e to i32
  %i.g = shl nuw i32 1, %i.f
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ]
  tail call fastcc void @resize(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %i.h)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @resize(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !guid !44 {
bb.a:
  %4 = alloca %struct.lua_TValue, align 8         ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !25   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !27    ; 2 uses
  %i.e = zext nneg i8 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !26   ; 3 uses
  %i.h = icmp sgt i32 %2, %i.b
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = icmp sgt i32 %2, -2
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !29
  %i.l = sext i32 %i.b to i64
  %i.m = shl nsw i64 %i.l, 4
  %i.n = sext i32 %2 to i64
  %i.o = shl nsw i64 %i.n, 4
  %i.p = tail call ptr @luaM_realloc_(ptr noundef %0, ptr noundef %i.k, i64 noundef %i.m, i64 noundef %i.o) #7
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.q = tail call ptr @luaM_toobig(ptr noundef %0) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = phi ptr [ %i.p, %bb.c ], [ %i.q, %bb.d ] ; 10 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.r, ptr %i.s, align 8, !tbaa !29
  %i.t = load i32, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.u = icmp slt i32 %i.t, %2
  br i1 %i.u, label %.lr.ph.preheader.i, label %setarrayvector.exit

.lr.ph.preheader.i:                               ; preds = %bb.e
  %i.v = sext i32 %i.t to i64                     ; 4 uses
  %wide.trip.count.i = sext i32 %2 to i64         ; 3 uses
  %i.w = sub nsw i64 %wide.trip.count.i, %i.v
  %xtraiter = and i64 %i.w, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %i.v, %.lr.ph.preheader.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.preheader.i ]
  %i.x = getelementptr inbounds [16 x i8], ptr %i.r, i64 %indvars.iv.i.prol
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i32 0, ptr %i.y, align 8, !tbaa !17
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !41

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %indvars.iv.i.unr = phi i64 [ %i.v, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.z = sub nsw i64 %i.v, %wide.trip.count.i
  %i.aa = icmp ugt i64 %i.z, -8
  br i1 %i.aa, label %setarrayvector.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.ab = getelementptr inbounds [16 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i32 0, ptr %i.ac, align 8, !tbaa !17
  %i.ad = getelementptr [16 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.ae = getelementptr i8, ptr %i.ad, i64 24
  store i32 0, ptr %i.ae, align 8, !tbaa !17
  %i.af = getelementptr [16 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.ag = getelementptr i8, ptr %i.af, i64 40
  store i32 0, ptr %i.ag, align 8, !tbaa !17
  %i.ah = getelementptr [16 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.ai = getelementptr i8, ptr %i.ah, i64 56
  store i32 0, ptr %i.ai, align 8, !tbaa !17
  %i.aj = getelementptr [16 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.ak = getelementptr i8, ptr %i.aj, i64 72
  store i32 0, ptr %i.ak, align 8, !tbaa !17
  %i.al = getelementptr [16 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.am = getelementptr i8, ptr %i.al, i64 88
  store i32 0, ptr %i.am, align 8, !tbaa !17
  %i.an = getelementptr [16 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.ao = getelementptr i8, ptr %i.an, i64 104
  store i32 0, ptr %i.ao, align 8, !tbaa !17
  %i.ap = getelementptr [16 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.aq = getelementptr i8, ptr %i.ap, i64 120
  store i32 0, ptr %i.aq, align 8, !tbaa !17
  %indvars.iv.next.i.7 = add nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, %wide.trip.count.i
  br i1 %exitcond.not.i.7, label %setarrayvector.exit, label %.lr.ph.i, !llvm.loop !0

setarrayvector.exit:                              ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.e
  store i32 %2, ptr %i.a, align 8, !tbaa !25
  br label %bb.f

bb.f:                                             ; preds = %setarrayvector.exit, %bb.a
  tail call fastcc void @setnodevector(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %3)
  %i.ar = icmp slt i32 %2, %i.b
  br i1 %i.ar, label %bb.g, label %bb.u

bb.g:                                             ; preds = %bb.f
  store i32 %2, ptr %i.a, align 8, !tbaa !25
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.au = sext i32 %2 to i64                      ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge79
  %indvars.iv = phi i64 [ %i.au, %bb.g ], [ %.pre, %._crit_edge79 ] ; 4 uses
  %i.av = load ptr, ptr %i.as, align 8, !tbaa !29 ; 2 uses
  %i.aw = getelementptr inbounds [16 x i8], ptr %i.av, i64 %indvars.iv ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !17
  %i.az = icmp eq i32 %i.ay, 0
  %.pre = add nsw i64 %indvars.iv, 1              ; 7 uses
  br i1 %i.az, label %._crit_edge79, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = icmp sgt i64 %indvars.iv, -1
  br i1 %i.ba, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bb = load i32, ptr %i.a, align 8, !tbaa !25
end_hunk_0
