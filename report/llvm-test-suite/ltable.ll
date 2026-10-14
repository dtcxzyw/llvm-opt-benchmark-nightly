Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/ltable?download=true
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
@.str = private unnamed_addr constant [19 x i8] c"table index is nil\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"table index is NaN\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"invalid key to 'next'\00", align 1
@dummynode_ = internal constant { { %union.Value, i32, [4 x i8] }, { { %union.Value, i32, [4 x i8], ptr } } } zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"table overflow\00", align 1

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @luaH_next(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !12
  switch i32 %i.b, label %bb.i [
    i32 0, label %findindex.exit
    i32 3, label %bb.b
    i32 2, label %bb.h
    i32 4, label %bb.f
    i32 1, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load double, ptr %2, align 8, !tbaa !13  ; 4 uses
  %i.d = fptosi double %i.c to i32                ; 4 uses
  %i.e = sitofp i32 %i.d to double
  %i.f = fcmp oeq double %i.c, %i.e
  %i.g = icmp sgt i32 %i.d, 0
  %or.cond.i = and i1 %i.g, %i.f
  br i1 %or.cond.i, label %bb.c, label %.thread27.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.i = load i32, ptr %i.h, align 8, !tbaa !20
  %.not.i = icmp slt i32 %i.i, %i.d
  br i1 %.not.i, label %.thread27.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.d, -1
  br label %findindex.exit

.thread27.i:                                      ; preds = %bb.c, %bb.b
  %i.k = fcmp oeq double %i.c, 0.000000e+00
  br i1 %i.k, label %bb.e, label %.preheader.i.i.i

bb.e:                                             ; preds = %.thread27.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21
  br label %mainposition.exit.i.preheader

.preheader.i.i.i:                                 ; preds = %.thread27.i
  %i.n = bitcast double %i.c to i64               ; 2 uses
  %.0.extract.trunc.i.i.i = trunc i64 %i.n to i32
  %.sroa.0.4.extract.shift.i.i.i = lshr i64 %i.n, 32
  %.4.extract.trunc.i.i.i = trunc nuw i64 %.sroa.0.4.extract.shift.i.i.i to i32
  %3 = add i32 %.4.extract.trunc.i.i.i, %.0.extract.trunc.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.r = load i8, ptr %i.q, align 1, !tbaa !22
  %i.s = zext nneg i8 %i.r to i32
  %notmask.i.i.i = shl nsw i32 -1, %i.s
  %i.t = xor i32 %notmask.i.i.i, -1
  %i.u = or i32 %i.t, 1
  %i.v = urem i32 %3, %i.u
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.w
  br label %mainposition.exit.i.preheader

bb.f:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !21
  %i.aa = load ptr, ptr %2, align 8, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !13
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !22
  %i.af = zext nneg i8 %i.ae to i32
  %notmask17.i.i = shl nsw i32 -1, %i.af
  %i.ag = xor i32 %notmask17.i.i, -1
  %i.ah = and i32 %i.ac, %i.ag
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [40 x i8], ptr %i.z, i64 %i.ai
  br label %mainposition.exit.i.preheader

bb.g:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !21
  %i.am = load i32, ptr %2, align 8, !tbaa !13
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !22
  %i.ap = zext nneg i8 %i.ao to i32
  %notmask16.i.i = shl nsw i32 -1, %i.ap
  %i.aq = xor i32 %notmask16.i.i, -1
  %i.ar = and i32 %i.am, %i.aq
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [40 x i8], ptr %i.al, i64 %i.as
  br label %mainposition.exit.i.preheader

bb.h:                                             ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !21
  %i.aw = load ptr, ptr %2, align 8, !tbaa !13
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = trunc i64 %i.ax to i32
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !22
  %i.bb = zext nneg i8 %i.ba to i32
  %notmask.i.i = shl nsw i32 -1, %i.bb
  %i.bc = xor i32 %notmask.i.i, -1
  %i.bd = or i32 %i.bc, 1
  %i.be = urem i32 %i.ay, %i.bd
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [40 x i8], ptr %i.av, i64 %i.bf
  br label %mainposition.exit.i.preheader

bb.i:                                             ; preds = %bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !21
  %i.bj = load ptr, ptr %2, align 8, !tbaa !13
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !22
  %i.bo = zext nneg i8 %i.bn to i32
  %notmask18.i.i = shl nsw i32 -1, %i.bo
  %i.bp = xor i32 %notmask18.i.i, -1
  %i.bq = or i32 %i.bp, 1
  %i.br = urem i32 %i.bl, %i.bq
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [40 x i8], ptr %i.bi, i64 %i.bs
  br label %mainposition.exit.i.preheader

mainposition.exit.i.preheader:                    ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %.preheader.i.i.i, %bb.e
  %.0.i.ph = phi ptr [ %i.x, %.preheader.i.i.i ], [ %i.m, %bb.e ], [ %i.at, %bb.g ], [ %i.aj, %bb.f ], [ %i.bg, %bb.h ], [ %i.bt, %bb.i ]
  br label %mainposition.exit.i

mainposition.exit.i:                              ; preds = %mainposition.exit.i.preheader, %bb.n
  %.0.i = phi ptr [ %i.cp, %bb.n ], [ %.0.i.ph, %mainposition.exit.i.preheader ] ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 2 uses
  %i.bv = tail call i32 @luaO_rawequalObj(ptr noundef nonnull %i.bu, ptr noundef %2) #7
  %.not24.i = icmp eq i32 %i.bv, 0
  br i1 %.not24.i, label %bb.j, label %bb.m

bb.j:                                             ; preds = %mainposition.exit.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !13
  %i.by = icmp eq i32 %i.bx, 11
  br i1 %i.by, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.bz = load i32, ptr %i.a, align 8, !tbaa !12
  %i.ca = icmp sgt i32 %i.bz, 3
  br i1 %i.ca, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.cb = load ptr, ptr %i.bu, align 8, !tbaa !13
  %i.cc = load ptr, ptr %2, align 8, !tbaa !13
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %mainposition.exit.i
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !21
  %i.cg = ptrtoint ptr %.0.i to i64
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = sdiv exact i64 %i.ci, 40
  %i.ck = trunc i64 %i.cj to i32
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !20
  %i.cn = add nsw i32 %i.cm, %i.ck
  br label %findindex.exit

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !13 ; 2 uses
  %.not25.i = icmp eq ptr %i.cp, null
  br i1 %.not25.i, label %bb.o, label %mainposition.exit.i, !llvm.loop !31

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ptr, ...) @luaG_runerror(ptr noundef %0, ptr noundef nonnull @.str.2) #7
  br label %findindex.exit

findindex.exit:                                   ; preds = %bb.a, %bb.d, %bb.m, %bb.o
  %.1.i = phi i32 [ -1, %bb.a ], [ %i.j, %bb.d ], [ %i.cn, %bb.m ], [ 0, %bb.o ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !20 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ct = sext i32 %.1.i to i64                   ; 2 uses
  %i.cu = sext i32 %i.cr to i64                   ; 2 uses
  %i.cv = add i32 %.1.i, 1
  %i.cw = sub i32 %i.cv, %i.cr                    ; 2 uses
  %indvars.iv.next85 = add nsw i64 %i.ct, 1       ; 3 uses
  %i.cx = icmp slt i64 %indvars.iv.next85, %i.cu
  br i1 %i.cx, label %.lr.ph89.preheader, label %._crit_edge

.lr.ph89.preheader:                               ; preds = %findindex.exit
  %i.cy = load ptr, ptr %i.cs, align 8, !tbaa !24
  br label %.lr.ph89

bb.p:                                             ; preds = %.lr.ph89
  %indvars.iv.next62 = add i32 %indvars.iv6186, 1 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv.next88, 1 ; 3 uses
  %i.cz = icmp slt i64 %indvars.iv.next, %i.cu
  br i1 %i.cz, label %.lr.ph89, label %._crit_edge, !llvm.loop !32

.lr.ph89:                                         ; preds = %.lr.ph89.preheader, %bb.p
  %indvars.iv.next88 = phi i64 [ %indvars.iv.next, %bb.p ], [ %indvars.iv.next85, %.lr.ph89.preheader ] ; 4 uses
  %indvars.iv87 = phi i64 [ %indvars.iv.next88, %bb.p ], [ %i.ct, %.lr.ph89.preheader ]
  %indvars.iv6186 = phi i32 [ %indvars.iv.next62, %bb.p ], [ %i.cw, %.lr.ph89.preheader ]
  %i.da = getelementptr inbounds [16 x i8], ptr %i.cy, i64 %indvars.iv.next88
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !12
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %bb.p, label %bb.q, !llvm.loop !32

bb.q:                                             ; preds = %.lr.ph89
  %i.de = trunc nsw i64 %indvars.iv87 to i32
  %i.df = add nsw i32 %i.de, 2
  %i.dg = sitofp i32 %i.df to double
  store double %i.dg, ptr %2, align 8, !tbaa !13
  store i32 3, ptr %i.a, align 8, !tbaa !12
  %i.dh = load ptr, ptr %i.cs, align 8, !tbaa !24
  %i.di = getelementptr inbounds [16 x i8], ptr %i.dh, i64 %indvars.iv.next88 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dk = load i64, ptr %i.di, align 8, !tbaa !13
  store i64 %i.dk, ptr %i.dj, align 8, !tbaa !13
  br label %.loopexit.sink.split

._crit_edge:                                      ; preds = %bb.p, %findindex.exit
  %indvars.iv61.lcssa = phi i32 [ %i.cw, %findindex.exit ], [ %indvars.iv.next62, %bb.p ]
  %indvars.iv.next.lcssa = phi i64 [ %indvars.iv.next85, %findindex.exit ], [ %indvars.iv.next, %bb.p ]
  %i.dl = trunc nsw i64 %indvars.iv.next.lcssa to i32
  %i.dm = sub nsw i32 %i.dl, %i.cr
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !22
  %i.dp = zext nneg i8 %i.do to i32
  %i.dq = shl nuw i32 1, %i.dp                    ; 2 uses
  %i.dr = icmp slt i32 %i.dm, %i.dq
  br i1 %i.dr, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %._crit_edge
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !21
  %i.du = zext i32 %indvars.iv61.lcssa to i64
  br label %bb.s

bb.r:                                             ; preds = %bb.s
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %i.dv = trunc nuw i64 %indvars.iv.next65 to i32
  %i.dw = icmp sgt i32 %i.dq, %i.dv
  br i1 %i.dw, label %bb.s, label %.loopexit, !llvm.loop !33

bb.s:                                             ; preds = %.lr.ph, %bb.r
  %indvars.iv64 = phi i64 [ %i.du, %.lr.ph ], [ %indvars.iv.next65, %bb.r ] ; 3 uses
  %i.dx = getelementptr inbounds nuw [40 x i8], ptr %i.dt, i64 %indvars.iv64 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !26
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %bb.r, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !13
  store i64 %i.ec, ptr %2, align 8, !tbaa !13
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !12
  store i32 %i.ee, ptr %i.a, align 8, !tbaa !12
  %i.ef = load ptr, ptr %i.ds, align 8, !tbaa !21
  %i.eg = getelementptr inbounds nuw [40 x i8], ptr %i.ef, i64 %indvars.iv64 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ei = load i64, ptr %i.eg, align 8, !tbaa !13
  store i64 %i.ei, ptr %i.eh, align 8, !tbaa !13
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.q, %bb.t
  %.sink = phi ptr [ %i.eg, %bb.t ], [ %i.di, %bb.q ]
  %i.ej = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !12
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %i.ek, ptr %i.el, align 8, !tbaa !12
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
define hidden void @luaH_resizearray(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.c = icmp eq ptr %i.b, @dummynode_
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.e = load i8, ptr %i.d, align 1, !tbaa !22
  %i.f = zext nneg i8 %i.e to i32
  %i.g = shl nuw i32 1, %i.f
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ]
  tail call fastcc void @resize(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %i.h)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @resize(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.lua_TValue, align 8         ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 11 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !22    ; 2 uses
  %i.e = zext nneg i8 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21   ; 3 uses
  %i.h = icmp sgt i32 %2, %i.b
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = icmp sgt i32 %2, -2
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !24
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
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.r, ptr %i.s, align 8, !tbaa !24
  %i.t = load i32, ptr %i.a, align 8, !tbaa !20   ; 2 uses
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
  store i32 0, ptr %i.y, align 8, !tbaa !12
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !34

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %indvars.iv.i.unr = phi i64 [ %i.v, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.z = sub nsw i64 %i.v, %wide.trip.count.i
  %i.aa = icmp ugt i64 %i.z, -8
  br i1 %i.aa, label %setarrayvector.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.ab = getelementptr inbounds [16 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i32 0, ptr %i.ac, align 8, !tbaa !12
  %i.ad = getelementptr [16 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.ae = getelementptr i8, ptr %i.ad, i64 24
  store i32 0, ptr %i.ae, align 8, !tbaa !12
  %i.af = getelementptr [16 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.ag = getelementptr i8, ptr %i.af, i64 40
  store i32 0, ptr %i.ag, align 8, !tbaa !12
  %i.ah = getelementptr [16 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.ai = getelementptr i8, ptr %i.ah, i64 56
  store i32 0, ptr %i.ai, align 8, !tbaa !12
  %i.aj = getelementptr [16 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.ak = getelementptr i8, ptr %i.aj, i64 72
  store i32 0, ptr %i.ak, align 8, !tbaa !12
  %i.al = getelementptr [16 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.am = getelementptr i8, ptr %i.al, i64 88
  store i32 0, ptr %i.am, align 8, !tbaa !12
  %i.an = getelementptr [16 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.ao = getelementptr i8, ptr %i.an, i64 104
  store i32 0, ptr %i.ao, align 8, !tbaa !12
  %i.ap = getelementptr [16 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.aq = getelementptr i8, ptr %i.ap, i64 120
  store i32 0, ptr %i.aq, align 8, !tbaa !12
  %indvars.iv.next.i.7 = add nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, %wide.trip.count.i
  br i1 %exitcond.not.i.7, label %setarrayvector.exit, label %.lr.ph.i, !llvm.loop !0

setarrayvector.exit:                              ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.e
  store i32 %2, ptr %i.a, align 8, !tbaa !20
  br label %bb.f

bb.f:                                             ; preds = %setarrayvector.exit, %bb.a
  tail call fastcc void @setnodevector(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %3)
  %i.ar = icmp slt i32 %2, %i.b
  br i1 %i.ar, label %bb.g, label %bb.r

bb.g:                                             ; preds = %bb.f
  store i32 %2, ptr %i.a, align 8, !tbaa !20
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.au = sext i32 %2 to i64                      ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge74
  %indvars.iv = phi i64 [ %i.au, %bb.g ], [ %.pre, %._crit_edge74 ] ; 3 uses
  %i.av = load ptr, ptr %i.as, align 8, !tbaa !24
  %i.aw = getelementptr inbounds [16 x i8], ptr %i.av, i64 %indvars.iv ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !12
  %i.az = icmp eq i32 %i.ay, 0
  %.pre = add nsw i64 %indvars.iv, 1              ; 5 uses
  br i1 %i.az, label %._crit_edge74, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = load i32, ptr %i.a, align 8, !tbaa !20
  %i.bb = trunc nsw i64 %indvars.iv to i32
  %i.bc = icmp ugt i32 %i.ba, %i.bb
  br i1 %i.bc, label %luaH_getnum.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = trunc nsw i64 %.pre to i32
  %i.be = sitofp i32 %i.bd to double              ; 3 uses
  %i.bf = icmp eq i64 %.pre, 0
  br i1 %i.bf, label %bb.k, label %.preheader.i.i

bb.k:                                             ; preds = %bb.j
  %i.bg = load ptr, ptr %i.f, align 8, !tbaa !21
  br label %hashnum.exit.i.preheader

.preheader.i.i:                                   ; preds = %bb.j
  %i.bh = bitcast double %i.be to i64             ; 2 uses
  %.0.extract.trunc.i.i = trunc i64 %i.bh to i32
  %.sroa.0.4.extract.shift.i.i = lshr i64 %i.bh, 32
  %.4.extract.trunc.i.i = trunc nuw i64 %.sroa.0.4.extract.shift.i.i to i32
  %5 = add i32 %.4.extract.trunc.i.i, %.0.extract.trunc.i.i
  %6 = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.bi = load i8, ptr %i.c, align 1, !tbaa !22
  %i.bj = zext nneg i8 %i.bi to i32
  %notmask.i.i = shl nsw i32 -1, %i.bj
  %i.bk = xor i32 %notmask.i.i, -1
  %i.bl = or i32 %i.bk, 1
  %i.bm = urem i32 %5, %i.bl
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [40 x i8], ptr %6, i64 %i.bn
  br label %hashnum.exit.i.preheader

hashnum.exit.i.preheader:                         ; preds = %.preheader.i.i, %bb.k
  %.0.i60.ph = phi ptr [ %i.bo, %.preheader.i.i ], [ %i.bg, %bb.k ]
  br label %hashnum.exit.i

hashnum.exit.i:                                   ; preds = %hashnum.exit.i.preheader, %bb.m
  %.0.i60 = phi ptr [ %i.bw, %bb.m ], [ %.0.i60.ph, %hashnum.exit.i.preheader ] ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.i60, i64 24
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !13
  %i.br = icmp eq i32 %i.bq, 3
  br i1 %i.br, label %bb.l, label %bb.m

bb.l:                                             ; preds = %hashnum.exit.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i60, i64 16
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !13
  %i.bu = fcmp oeq double %i.bt, %i.be
  br i1 %i.bu, label %luaH_getnum.exit, label %bb.m

bb.m:                                             ; preds = %bb.l, %hashnum.exit.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i60, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !13 ; 2 uses
  %.not.i61 = icmp eq ptr %i.bw, null
  br i1 %.not.i61, label %luaH_getnum.exit.thread, label %hashnum.exit.i, !llvm.loop !1

luaH_getnum.exit:                                 ; preds = %bb.l, %bb.i
  %.1.i = phi ptr [ %i.aw, %bb.i ], [ %.0.i60, %bb.l ] ; 2 uses
  %.not.i = icmp eq ptr %.1.i, @luaO_nilobject_
  br i1 %.not.i, label %luaH_getnum.exit.luaH_getnum.exit.thread_crit_edge, label %luaH_setnum.exit

luaH_getnum.exit.luaH_getnum.exit.thread_crit_edge: ; preds = %luaH_getnum.exit
  %.pre75 = trunc nsw i64 %.pre to i32
  %.pre76 = sitofp i32 %.pre75 to double
  br label %luaH_getnum.exit.thread

luaH_getnum.exit.thread:                          ; preds = %bb.m, %luaH_getnum.exit.luaH_getnum.exit.thread_crit_edge
  %.pre-phi77 = phi double [ %.pre76, %luaH_getnum.exit.luaH_getnum.exit.thread_crit_edge ], [ %i.be, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  store double %.pre-phi77, ptr %4, align 8, !tbaa !13
  store i32 3, ptr %i.at, align 8, !tbaa !12
  %i.bx = call fastcc ptr @newkey(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %4), !inline_history !37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %luaH_setnum.exit

luaH_setnum.exit:                                 ; preds = %luaH_getnum.exit, %luaH_getnum.exit.thread
  %.0.i = phi ptr [ %i.bx, %luaH_getnum.exit.thread ], [ %.1.i, %luaH_getnum.exit ] ; 2 uses
  %i.by = load i64, ptr %i.aw, align 8, !tbaa !13
  store i64 %i.by, ptr %.0.i, align 8, !tbaa !13
  %i.bz = load i32, ptr %i.ax, align 8, !tbaa !12
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store i32 %i.bz, ptr %i.ca, align 8, !tbaa !12
  br label %._crit_edge74

._crit_edge74:                                    ; preds = %bb.h, %luaH_setnum.exit
  %lftr.wideiv = trunc i64 %.pre to i32
  %exitcond.not = icmp eq i32 %i.b, %lftr.wideiv
  br i1 %exitcond.not, label %bb.n, label %bb.h, !llvm.loop !35

bb.n:                                             ; preds = %._crit_edge74
  %i.cb = icmp sgt i32 %2, -2
  br i1 %i.cb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cc = load ptr, ptr %i.as, align 8, !tbaa !24
  %i.cd = sext i32 %i.b to i64
  %i.ce = shl nuw nsw i64 %i.cd, 4
  %i.cf = shl nsw i64 %i.au, 4
  %i.cg = call ptr @luaM_realloc_(ptr noundef %0, ptr noundef %i.cc, i64 noundef %i.ce, i64 noundef %i.cf) #7
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ch = call ptr @luaM_toobig(ptr noundef %0) #7
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ci = phi ptr [ %i.cg, %bb.o ], [ %i.ch, %bb.p ]
  store ptr %i.ci, ptr %i.as, align 8, !tbaa !24
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.f
  %i.cj = shl nuw i32 1, %i.e                     ; 2 uses
  %.not68 = icmp eq i8 %i.d, 31
  br i1 %.not68, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.r
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.cl = zext i32 %i.cj to i64
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph, %bb.x
  %indvars.iv71 = phi i64 [ %i.cl, %.lr.ph ], [ %indvars.iv.next72, %bb.x ] ; 2 uses
  %indvars.iv.next72 = add nsw i64 %indvars.iv71, -1 ; 2 uses
  %i.cm = and i64 %indvars.iv.next72, 4294967295
  %i.cn = getelementptr inbounds nuw [40 x i8], ptr %i.g, i64 %i.cm ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !26
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 3 uses
  %i.cs = call ptr @luaH_get(ptr noundef nonnull %1, ptr noundef nonnull %i.cr), !inline_history !28 ; 2 uses
  store i8 0, ptr %i.ck, align 2, !tbaa !29
  %.not.i58 = icmp eq ptr %i.cs, @luaO_nilobject_
  br i1 %.not.i58, label %bb.u, label %luaH_set.exit

bb.u:                                             ; preds = %bb.t
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !12
  switch i32 %i.cu, label %bb.w [
    i32 0, label %.sink.split
    i32 3, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u
  %i.cv = load double, ptr %i.cr, align 8, !tbaa !13
  %i.cw = fcmp ord double %i.cv, 0.000000e+00
  br i1 %i.cw, label %bb.w, label %.sink.split

.sink.split:                                      ; preds = %bb.v, %bb.u
  %.str.1.sink = phi ptr [ @.str, %bb.u ], [ @.str.1, %bb.v ]
  call void (ptr, ptr, ...) @luaG_runerror(ptr noundef %0, ptr noundef nonnull %.str.1.sink) #7
  br label %bb.w

bb.w:                                             ; preds = %.sink.split, %bb.v, %bb.u
  %i.cx = call fastcc ptr @newkey(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.cr), !inline_history !28
  br label %luaH_set.exit

luaH_set.exit:                                    ; preds = %bb.t, %bb.w
  %.0.i59 = phi ptr [ %i.cx, %bb.w ], [ %i.cs, %bb.t ] ; 2 uses
  %i.cy = load i64, ptr %i.cn, align 8, !tbaa !13
  store i64 %i.cy, ptr %.0.i59, align 8, !tbaa !13
  %i.cz = load i32, ptr %i.co, align 8, !tbaa !12
  %i.da = getelementptr inbounds nuw i8, ptr %.0.i59, i64 8
  store i32 %i.cz, ptr %i.da, align 8, !tbaa !12
  br label %bb.x

bb.x:                                             ; preds = %luaH_set.exit, %bb.s
  %i.db = trunc nuw i64 %indvars.iv71 to i32
  %i.dc = icmp sgt i32 %i.db, 1
  br i1 %i.dc, label %bb.s, label %._crit_edge, !llvm.loop !36

._crit_edge:                                      ; preds = %bb.x, %bb.r
  %.not = icmp eq ptr %i.g, @dummynode_
  br i1 %.not, label %bb.z, label %bb.y

bb.y:                                             ; preds = %._crit_edge
  %i.dd = sext i32 %i.cj to i64
  %i.de = mul nsw i64 %i.dd, 40
  %i.df = call ptr @luaM_realloc_(ptr noundef %0, ptr noundef %i.g, i64 noundef %i.de, i64 noundef 0) #7 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @luaH_new(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @luaM_realloc_(ptr noundef %0, ptr noundef null, i64 noundef 0, i64 noundef 64) #7 ; 9 uses
  tail call void @luaC_link(ptr noundef %0, ptr noundef %i.a, i8 noundef zeroext 5) #7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.b, align 8, !tbaa !39
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i8 -1, ptr %i.c, align 2, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store ptr null, ptr %i.d, align 8, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  store i32 0, ptr %i.e, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  store i8 0, ptr %i.f, align 1, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @dummynode_, ptr %i.g, align 8, !tbaa !21
  %i.h = icmp sgt i32 %1, -2
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = sext i32 %1 to i64
  %i.j = shl nsw i64 %i.i, 4
  %i.k = tail call ptr @luaM_realloc_(ptr noundef %0, ptr noundef null, i64 noundef 0, i64 noundef %i.j) #7
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = tail call ptr @luaM_toobig(ptr noundef %0) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = phi ptr [ %i.k, %bb.b ], [ %i.l, %bb.c ] ; 10 uses
  store ptr %i.m, ptr %i.d, align 8, !tbaa !24
  %i.n = load i32, ptr %i.e, align 8, !tbaa !20   ; 2 uses
  %i.o = icmp slt i32 %i.n, %1
  br i1 %i.o, label %.lr.ph.preheader.i, label %setarrayvector.exit

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.p = sext i32 %i.n to i64                     ; 4 uses
  %wide.trip.count.i = sext i32 %1 to i64         ; 3 uses
  %i.q = sub nsw i64 %wide.trip.count.i, %i.p
  %xtraiter = and i64 %i.q, 7                     ; 2 uses
end_hunk_0
begin_hunk_1_@luaM_realloc_
declare hidden ptr @luaM_realloc_(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare hidden void @luaC_link(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @setnodevector(ptr noundef %0, ptr nofree noundef captures(none) initializes((32, 40)) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr @dummynode_, ptr %i.b, align 8, !tbaa !21
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = add nsw i32 %2, -1
  %i.d = tail call i32 @luaO_log2(i32 noundef %i.c) #7 ; 2 uses
  %i.e = add nsw i32 %i.d, 1                      ; 5 uses
  %i.f = icmp sgt i32 %i.d, 25
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, ...) @luaG_runerror(ptr noundef %0, ptr noundef nonnull @.str.4) #7
  %.not = icmp eq i32 %i.e, 31
  br i1 %.not, label %.thread33, label %bb.e

.thread33:                                        ; preds = %bb.d
  %i.g = tail call ptr @luaM_toobig(ptr noundef %0) #7 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.g, ptr %i.h, align 8, !tbaa !21
  br label %._crit_edge

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = shl nuw i32 1, %i.e                      ; 3 uses
  %i.j = sext i32 %i.i to i64
  %i.k = mul nsw i64 %i.j, 40
  %i.l = tail call ptr @luaM_realloc_(ptr noundef %0, ptr noundef null, i64 noundef 0, i64 noundef %i.k) #7 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 7 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !21
  %.not34 = icmp eq i32 %i.e, 31
  br i1 %.not34, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %wide.trip.count = zext nneg i32 %i.i to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.n = icmp ult i32 %i.e, 2
  br i1 %i.n, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %indvars.iv ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr null, ptr %i.q, align 8, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i32 0, ptr %i.r, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i32 0, ptr %i.s, align 8, !tbaa !26
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !21
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %i.t, i64 %indvars.iv ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  store ptr null, ptr %i.v, align 8, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store i32 0, ptr %i.w, align 8, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  store i32 0, ptr %i.x, align 8, !tbaa !26
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !21
  %i.z = getelementptr inbounds nuw [40 x i8], ptr %i.y, i64 %indvars.iv ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 112
  store ptr null, ptr %i.aa, align 8, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 104
  store i32 0, ptr %i.ab, align 8, !tbaa !13
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  store i32 0, ptr %i.ac, align 8, !tbaa !26
  %i.ad = load ptr, ptr %i.m, align 8, !tbaa !21
  %i.ae = getelementptr inbounds nuw [40 x i8], ptr %i.ad, i64 %indvars.iv ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 152
  store ptr null, ptr %i.af, align 8, !tbaa !13
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 144
  store i32 0, ptr %i.ag, align 8, !tbaa !13
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 128
  store i32 0, ptr %i.ah, align 8, !tbaa !26
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !40

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod35 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod35)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.ai = load ptr, ptr %i.m, align 8, !tbaa !21
  %i.aj = getelementptr inbounds nuw [40 x i8], ptr %i.ai, i64 %indvars.iv.epil ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store ptr null, ptr %i.ak, align 8, !tbaa !13
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store i32 0, ptr %i.al, align 8, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i32 0, ptr %i.am, align 8, !tbaa !26
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit, label %.lr.ph.epil, !llvm.loop !41

._crit_edge.loopexit:                             ; preds = %.lr.ph.epil, %._crit_edge.loopexit.unr-lcssa
  %.pre.pre = load ptr, ptr %i.m, align 8, !tbaa !21
  %i.an = sext i32 %i.i to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %.thread33, %._crit_edge.loopexit, %bb.e
  %i.ao = phi i64 [ %i.an, %._crit_edge.loopexit ], [ -2147483648, %bb.e ], [ -2147483648, %.thread33 ]
  %.pre = phi ptr [ %.pre.pre, %._crit_edge.loopexit ], [ %i.l, %bb.e ], [ %i.g, %.thread33 ]
  %i.ap = trunc i32 %i.e to i8
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.b
  %i.aq = phi ptr [ @dummynode_, %bb.b ], [ %.pre, %._crit_edge ]
  %.024 = phi i8 [ 0, %bb.b ], [ %i.ap, %._crit_edge ]
  %.0 = phi i64 [ 0, %bb.b ], [ %i.ao, %._crit_edge ]
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 11
  store i8 %.024, ptr %i.ar, align 1, !tbaa !22
  %i.as = getelementptr inbounds [40 x i8], ptr %i.aq, i64 %.0
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.as, ptr %i.at, align 8, !tbaa !30
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaH_free(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %.not = icmp eq ptr %i.b, @dummynode_
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.d = load i8, ptr %i.c, align 1, !tbaa !22
  %i.e = zext nneg i8 %i.d to i32
  %i.f = shl nuw i32 1, %i.e
  %i.g = sext i32 %i.f to i64
  %i.h = mul nsw i64 %i.g, 40
  %i.i = tail call ptr @luaM_realloc_(ptr noundef %0, ptr noundef %i.b, i64 noundef %i.h, i64 noundef 0) #7 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.m = load i32, ptr %i.l, align 8, !tbaa !20
  %i.n = sext i32 %i.m to i64
  %i.o = shl nsw i64 %i.n, 4
  %i.p = tail call ptr @luaM_realloc_(ptr noundef %0, ptr noundef %i.k, i64 noundef %i.o, i64 noundef 0) #7 ; 0 uses
  %i.q = tail call ptr @luaM_realloc_(ptr noundef %0, ptr noundef nonnull %1, i64 noundef 64, i64 noundef 0) #7 ; 0 uses
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @luaH_getnum(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = add nsw i32 %1, -1                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load i32, ptr %i.b, align 8, !tbaa !20
  %i.d = icmp ult i32 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.g = sext i32 %i.a to i64
  %i.h = getelementptr inbounds [16 x i8], ptr %i.f, i64 %i.g
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.i = sitofp i32 %1 to double                  ; 2 uses
  %i.j = icmp eq i32 %1, 0
  br i1 %i.j, label %bb.d, label %.preheader.i

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21
  br label %hashnum.exit.preheader

.preheader.i:                                     ; preds = %bb.c
  %i.m = bitcast double %i.i to i64               ; 2 uses
  %.0.extract.trunc.i = trunc i64 %i.m to i32
  %.sroa.0.4.extract.shift.i = lshr i64 %i.m, 32
  %.4.extract.trunc.i = trunc nuw i64 %.sroa.0.4.extract.shift.i to i32
  %2 = add i32 %.4.extract.trunc.i, %.0.extract.trunc.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.q = load i8, ptr %i.p, align 1, !tbaa !22
  %i.r = zext nneg i8 %i.q to i32
  %notmask.i = shl nsw i32 -1, %i.r
  %i.s = xor i32 %notmask.i, -1
  %i.t = or i32 %i.s, 1
  %i.u = urem i32 %2, %i.t
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %i.v
  br label %hashnum.exit.preheader

hashnum.exit.preheader:                           ; preds = %bb.d, %.preheader.i
  %.0.ph = phi ptr [ %i.w, %.preheader.i ], [ %i.l, %bb.d ]
  br label %hashnum.exit

hashnum.exit:                                     ; preds = %hashnum.exit.preheader, %bb.f
  %.0 = phi ptr [ %i.ae, %bb.f ], [ %.0.ph, %hashnum.exit.preheader ] ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0, i64 24
  %i.y = load i32, ptr %i.x, align 8, !tbaa !13
  %i.z = icmp eq i32 %i.y, 3
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %hashnum.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !13
  %i.ac = fcmp oeq double %i.ab, %i.i
  br i1 %i.ac, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e, %hashnum.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !13 ; 2 uses
  %.not = icmp eq ptr %i.ae, null
  br i1 %.not, label %.loopexit, label %hashnum.exit, !llvm.loop !1

.loopexit:                                        ; preds = %bb.e, %bb.f, %bb.b
  %.1 = phi ptr [ %i.h, %bb.b ], [ @luaO_nilobject_, %bb.f ], [ %.0, %bb.e ]
  ret ptr %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @luaH_getstr(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.f = load i8, ptr %i.e, align 1, !tbaa !22
  %i.g = zext nneg i8 %i.f to i32
  %notmask = shl nsw i32 -1, %i.g
  %i.h = xor i32 %notmask, -1
  %i.i = and i32 %i.d, %i.h
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.j
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.0 = phi ptr [ %i.k, %bb.a ], [ %i.s, %bb.d ]  ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !13
  %i.n = icmp eq i32 %i.m, 4
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !13
  %i.q = icmp eq ptr %i.p, %1
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !13   ; 2 uses
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %bb.e, label %bb.b, !llvm.loop !2

bb.e:                                             ; preds = %bb.d, %bb.c
  %.010 = phi ptr [ %.0, %bb.c ], [ @luaO_nilobject_, %bb.d ]
  ret ptr %.010
}

; Function Attrs: nounwind uwtable
define hidden ptr @luaH_get(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !12
  switch i32 %i.b, label %bb.o [
    i32 0, label %luaH_getstr.exit
    i32 4, label %bb.b
    i32 3, label %bb.f
    i32 1, label %bb.m
    i32 2, label %bb.n
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.i = load i8, ptr %i.h, align 1, !tbaa !22
  %i.j = zext nneg i8 %i.i to i32
  %notmask.i = shl nsw i32 -1, %i.j
  %i.k = xor i32 %notmask.i, -1
  %i.l = and i32 %i.g, %i.k
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %i.e, i64 %i.m
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.0.i = phi ptr [ %i.n, %bb.b ], [ %i.v, %bb.e ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !13
  %i.q = icmp eq i32 %i.p, 4
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !13
  %i.t = icmp eq ptr %i.s, %i.c
  br i1 %i.t, label %luaH_getstr.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !13   ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %luaH_getstr.exit, label %bb.c, !llvm.loop !2

bb.f:                                             ; preds = %bb.a
  %i.w = load double, ptr %1, align 8, !tbaa !13  ; 4 uses
  %i.x = fptosi double %i.w to i32                ; 3 uses
  %i.y = sitofp i32 %i.x to double                ; 3 uses
  %i.z = fcmp oeq double %i.w, %i.y
  br i1 %i.z, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.aa = add nsw i32 %i.x, -1                    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !20
  %i.ad = icmp ult i32 %i.aa, %i.ac
  br i1 %i.ad, label %luaH_getnum.exit.thread31, label %bb.h

luaH_getnum.exit.thread31:                        ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !24
  %i.ag = sext i32 %i.aa to i64
  %i.ah = getelementptr inbounds [16 x i8], ptr %i.af, i64 %i.ag
  br label %luaH_getstr.exit

bb.h:                                             ; preds = %bb.g
  %i.ai = icmp eq i32 %i.x, 0
  br i1 %i.ai, label %bb.i, label %.preheader.i.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !21
  br label %hashnum.exit.i.preheader

.preheader.i.i:                                   ; preds = %bb.h
  %i.al = bitcast double %i.y to i64              ; 2 uses
  %.0.extract.trunc.i.i = trunc i64 %i.al to i32
  %.sroa.0.4.extract.shift.i.i = lshr i64 %i.al, 32
  %.4.extract.trunc.i.i = trunc nuw i64 %.sroa.0.4.extract.shift.i.i to i32
  %2 = add i32 %.4.extract.trunc.i.i, %.0.extract.trunc.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !21
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !22
  %i.aq = zext nneg i8 %i.ap to i32
  %notmask.i.i = shl nsw i32 -1, %i.aq
  %i.ar = xor i32 %notmask.i.i, -1
  %i.as = or i32 %i.ar, 1
  %i.at = urem i32 %2, %i.as
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [40 x i8], ptr %i.an, i64 %i.au
  br label %hashnum.exit.i.preheader

hashnum.exit.i.preheader:                         ; preds = %.preheader.i.i, %bb.i
  %.0.i21.ph = phi ptr [ %i.av, %.preheader.i.i ], [ %i.ak, %bb.i ]
  br label %hashnum.exit.i

hashnum.exit.i:                                   ; preds = %hashnum.exit.i.preheader, %bb.k
  %.0.i21 = phi ptr [ %i.bd, %bb.k ], [ %.0.i21.ph, %hashnum.exit.i.preheader ] ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i21, i64 24
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !13
  %i.ay = icmp eq i32 %i.ax, 3
  br i1 %i.ay, label %bb.j, label %bb.k

bb.j:                                             ; preds = %hashnum.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i21, i64 16
  %i.ba = load double, ptr %i.az, align 8, !tbaa !13
  %i.bb = fcmp oeq double %i.ba, %i.y
  br i1 %i.bb, label %luaH_getstr.exit, label %bb.k

bb.k:                                             ; preds = %bb.j, %hashnum.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i21, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !13 ; 2 uses
  %.not.i22 = icmp eq ptr %i.bd, null
  br i1 %.not.i22, label %luaH_getstr.exit, label %hashnum.exit.i, !llvm.loop !1

.thread:                                          ; preds = %bb.f
  %i.be = fcmp oeq double %i.w, 0.000000e+00
  br i1 %i.be, label %bb.l, label %.preheader.i.i26

bb.l:                                             ; preds = %.thread
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !21
  br label %mainposition.exit.preheader

.preheader.i.i26:                                 ; preds = %.thread
  %i.bh = bitcast double %i.w to i64              ; 2 uses
  %.0.extract.trunc.i.i26 = trunc i64 %i.bh to i32
  %.sroa.0.4.extract.shift.i.i27 = lshr i64 %i.bh, 32
  %.4.extract.trunc.i.i28 = trunc nuw i64 %.sroa.0.4.extract.shift.i.i27 to i32
  %3 = add i32 %.4.extract.trunc.i.i28, %.0.extract.trunc.i.i26
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !21
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !22
  %i.bm = zext nneg i8 %i.bl to i32
  %notmask.i.i29 = shl nsw i32 -1, %i.bm
  %i.bn = xor i32 %notmask.i.i29, -1
  %i.bo = or i32 %i.bn, 1
  %i.bp = urem i32 %3, %i.bo
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [40 x i8], ptr %i.bj, i64 %i.bq
  br label %mainposition.exit.preheader

bb.m:                                             ; preds = %bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !21
  %i.bu = load i32, ptr %1, align 8, !tbaa !13
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !22
  %i.bx = zext nneg i8 %i.bw to i32
  %notmask16.i = shl nsw i32 -1, %i.bx
  %i.by = xor i32 %notmask16.i, -1
  %i.bz = and i32 %i.bu, %i.by
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [40 x i8], ptr %i.bt, i64 %i.ca
  br label %mainposition.exit.preheader

bb.n:                                             ; preds = %bb.a
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !21
  %i.ce = load ptr, ptr %1, align 8, !tbaa !13
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = trunc i64 %i.cf to i32
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !22
  %i.cj = zext nneg i8 %i.ci to i32
  %notmask.i23 = shl nsw i32 -1, %i.cj
  %i.ck = xor i32 %notmask.i23, -1
  %i.cl = or i32 %i.ck, 1
  %i.cm = urem i32 %i.cg, %i.cl
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [40 x i8], ptr %i.cd, i64 %i.cn
  br label %mainposition.exit.preheader

bb.o:                                             ; preds = %bb.a
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !21
  %i.cr = load ptr, ptr %1, align 8, !tbaa !13
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = trunc i64 %i.cs to i32
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !22
  %i.cw = zext nneg i8 %i.cv to i32
  %notmask18.i = shl nsw i32 -1, %i.cw
  %i.cx = xor i32 %notmask18.i, -1
  %i.cy = or i32 %i.cx, 1
  %i.cz = urem i32 %i.ct, %i.cy
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [40 x i8], ptr %i.cq, i64 %i.da
  br label %mainposition.exit.preheader

mainposition.exit.preheader:                      ; preds = %bb.l, %.preheader.i.i26, %bb.m, %bb.n, %bb.o
  %.0.ph = phi ptr [ %i.bg, %bb.l ], [ %i.cb, %bb.m ], [ %i.br, %.preheader.i.i26 ], [ %i.co, %bb.n ], [ %i.db, %bb.o ]
  br label %mainposition.exit

mainposition.exit:                                ; preds = %mainposition.exit.preheader, %bb.p
  %.0 = phi ptr [ %i.df, %bb.p ], [ %.0.ph, %mainposition.exit.preheader ] ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.dd = tail call i32 @luaO_rawequalObj(ptr noundef nonnull %i.dc, ptr noundef %1) #7
  %.not = icmp eq i32 %i.dd, 0
  br i1 %.not, label %bb.p, label %luaH_getstr.exit

bb.p:                                             ; preds = %mainposition.exit
  %i.de = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !13 ; 2 uses
  %.not20 = icmp eq ptr %i.df, null
  br i1 %.not20, label %luaH_getstr.exit, label %mainposition.exit, !llvm.loop !42

luaH_getstr.exit:                                 ; preds = %bb.j, %bb.k, %bb.e, %bb.d, %mainposition.exit, %bb.p, %bb.a, %luaH_getnum.exit.thread31
  %.2 = phi ptr [ @luaO_nilobject_, %bb.a ], [ %i.ah, %luaH_getnum.exit.thread31 ], [ %.0.i, %bb.d ], [ @luaO_nilobject_, %bb.p ], [ %.0, %mainposition.exit ], [ @luaO_nilobject_, %bb.e ], [ @luaO_nilobject_, %bb.k ], [ %.0.i21, %bb.j ]
  ret ptr %.2
}

declare hidden i32 @luaO_rawequalObj(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden ptr @luaH_set(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @luaH_get(ptr noundef %1, ptr noundef %2) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i8 0, ptr %i.b, align 2, !tbaa !29
  %.not = icmp eq ptr %i.a, @luaO_nilobject_
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !12
  switch i32 %i.d, label %bb.d [
    i32 0, label %.sink.split
    i32 3, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = load double, ptr %2, align 8, !tbaa !13
  %i.f = fcmp ord double %i.e, 0.000000e+00
  br i1 %i.f, label %bb.d, label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.b
  %.str.1.sink = phi ptr [ @.str, %bb.b ], [ @.str.1, %bb.c ]
  tail call void (ptr, ptr, ...) @luaG_runerror(ptr noundef %0, ptr noundef nonnull %.str.1.sink) #7
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.b, %bb.c
  %i.g = tail call fastcc ptr @newkey(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi ptr [ %i.g, %bb.d ], [ %i.a, %bb.a ]
  ret ptr %.0
}

declare hidden void @luaG_runerror(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @newkey(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [27 x i32], align 16              ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 11 ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 10
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %bb.a
  %i.i = load i32, ptr %i.b, align 8, !tbaa !12
  switch i32 %i.i, label %bb.g [
    i32 3, label %bb.b
    i32 4, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.f
  ]

bb.b:                                             ; preds = %tailrecurse
  %i.j = load double, ptr %2, align 8, !tbaa !13  ; 2 uses
  %i.k = fcmp oeq double %i.j, 0.000000e+00
  br i1 %i.k, label %bb.c, label %.preheader.i.i

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  br label %mainposition.exit

.preheader.i.i:                                   ; preds = %bb.b
  %i.m = bitcast double %i.j to i64               ; 2 uses
  %.0.extract.trunc.i.i = trunc i64 %i.m to i32
  %.sroa.0.4.extract.shift.i.i = lshr i64 %i.m, 32
  %.4.extract.trunc.i.i = trunc nuw i64 %.sroa.0.4.extract.shift.i.i to i32
  %3 = add i32 %.4.extract.trunc.i.i, %.0.extract.trunc.i.i
  %4 = load ptr, ptr %i.c, align 8, !tbaa !21     ; 2 uses
  %i.n = load i8, ptr %i.d, align 1, !tbaa !22
  %i.o = zext nneg i8 %i.n to i32
  %notmask.i.i = shl nsw i32 -1, %i.o
  %i.p = xor i32 %notmask.i.i, -1
  %i.q = or i32 %i.p, 1
  %i.r = urem i32 %3, %i.q
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [40 x i8], ptr %4, i64 %i.s
  br label %mainposition.exit

bb.d:                                             ; preds = %tailrecurse
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %i.v = load ptr, ptr %2, align 8, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !13
  %i.y = load i8, ptr %i.d, align 1, !tbaa !22
  %i.z = zext nneg i8 %i.y to i32
  %notmask17.i = shl nsw i32 -1, %i.z
  %i.aa = xor i32 %notmask17.i, -1
  %i.ab = and i32 %i.x, %i.aa
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [40 x i8], ptr %i.u, i64 %i.ac
  br label %mainposition.exit

bb.e:                                             ; preds = %tailrecurse
  %i.ae = load ptr, ptr %i.c, align 8, !tbaa !21  ; 2 uses
  %i.af = load i32, ptr %2, align 8, !tbaa !13
  %i.ag = load i8, ptr %i.d, align 1, !tbaa !22
  %i.ah = zext nneg i8 %i.ag to i32
  %notmask16.i = shl nsw i32 -1, %i.ah
  %i.ai = xor i32 %notmask16.i, -1
  %i.aj = and i32 %i.af, %i.ai
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [40 x i8], ptr %i.ae, i64 %i.ak
  br label %mainposition.exit

bb.f:                                             ; preds = %tailrecurse
  %i.am = load ptr, ptr %i.c, align 8, !tbaa !21  ; 2 uses
  %i.an = load ptr, ptr %2, align 8, !tbaa !13
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = load i8, ptr %i.d, align 1, !tbaa !22
  %i.ar = zext nneg i8 %i.aq to i32
  %notmask.i = shl nsw i32 -1, %i.ar
  %i.as = xor i32 %notmask.i, -1
  %i.at = or i32 %i.as, 1
  %i.au = urem i32 %i.ap, %i.at
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [40 x i8], ptr %i.am, i64 %i.av
  br label %mainposition.exit

bb.g:                                             ; preds = %tailrecurse
  %i.ax = load ptr, ptr %i.c, align 8, !tbaa !21  ; 2 uses
  %i.ay = load ptr, ptr %2, align 8, !tbaa !13
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = trunc i64 %i.az to i32
  %i.bb = load i8, ptr %i.d, align 1, !tbaa !22
  %i.bc = zext nneg i8 %i.bb to i32
  %notmask18.i = shl nsw i32 -1, %i.bc
  %i.bd = xor i32 %notmask18.i, -1
  %i.be = or i32 %i.bd, 1
  %i.bf = urem i32 %i.ba, %i.be
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [40 x i8], ptr %i.ax, i64 %i.bg
  br label %mainposition.exit

mainposition.exit:                                ; preds = %bb.c, %.preheader.i.i, %bb.d, %bb.e, %bb.f, %bb.g
  %i.bi = phi ptr [ %i.ax, %bb.g ], [ %i.am, %bb.f ], [ %i.u, %bb.d ], [ %i.ae, %bb.e ], [ %i.l, %bb.c ], [ %4, %.preheader.i.i ] ; 7 uses
  %.0.i = phi ptr [ %i.bh, %bb.g ], [ %i.aw, %bb.f ], [ %i.ad, %bb.d ], [ %i.al, %bb.e ], [ %i.l, %bb.c ], [ %i.t, %.preheader.i.i ] ; 12 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !26
  %i.bl = icmp ne i32 %i.bk, 0
  %i.bm = icmp eq ptr %.0.i, @dummynode_
  %or.cond = or i1 %i.bm, %i.bl
  br i1 %or.cond, label %bb.h, label %luaH_set.exit

bb.h:                                             ; preds = %mainposition.exit
  %.promoted.i = load ptr, ptr %i.e, align 8, !tbaa !30
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.bn = phi ptr [ %i.bo, %bb.j ], [ %.promoted.i, %bb.h ] ; 4 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -40 ; 6 uses
  store ptr %i.bo, ptr %i.e, align 8, !tbaa !30
  %i.bp = icmp ugt ptr %i.bn, %i.bi
  br i1 %i.bp, label %bb.j, label %rehash.exit

bb.j:                                             ; preds = %bb.i
  %i.bq = getelementptr inbounds i8, ptr %i.bn, i64 -16
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !13
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %getfreepos.exit, label %bb.i, !llvm.loop !43

rehash.exit:                                      ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(108) %i.a, i8 0, i64 108, i1 false), !tbaa !10
  %i.bt = load i32, ptr %i.f, align 8, !tbaa !20  ; 3 uses
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i, %rehash.exit
  %indvars.iv45.i = phi i64 [ 0, %rehash.exit ], [ %indvars.iv.next46.i, %._crit_edge.i ] ; 2 uses
  %.02343.i = phi i32 [ 1, %rehash.exit ], [ %.124.lcssa.i, %._crit_edge.i ] ; 4 uses
  %.02542.i = phi i32 [ 0, %rehash.exit ], [ %i.ea, %._crit_edge.i ] ; 2 uses
  %.02841.i = phi i32 [ 1, %rehash.exit ], [ %i.eb, %._crit_edge.i ] ; 3 uses
  %i.bu = icmp sgt i32 %.02841.i, %i.bt
  br i1 %i.bu, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bv = icmp sgt i32 %.02343.i, %i.bt
  br i1 %i.bv, label %numusearray.exit, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.021.i = phi i32 [ %i.bt, %bb.l ], [ %.02841.i, %bb.k ] ; 3 uses
  %.not36.i = icmp sgt i32 %.02343.i, %.021.i
  br i1 %.not36.i, label %._crit_edge.i, label %.lr.ph.i73

.lr.ph.i73:                                       ; preds = %bb.m
  %i.bw = load ptr, ptr %i.g, align 8, !tbaa !24  ; 9 uses
  %i.bx = sext i32 %.02343.i to i64               ; 4 uses
  %i.by = sext i32 %.021.i to i64                 ; 2 uses
  %i.bz = add nsw i64 %i.by, 1
  %i.ca = sub nsw i64 %i.bz, %i.bx                ; 3 uses
  %min.iters.check = icmp ult i64 %i.ca, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i73
  %n.vec = and i64 %i.ca, -8                      ; 3 uses
  %i.cb = add nsw i64 %n.vec, %i.bx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dn, %vector.body ]
  %vec.phi144 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.do, %vector.body ]
  %i.cc = add i64 %index, %i.bx                   ; 8 uses
  %i.cd = getelementptr [16 x i8], ptr %i.bw, i64 %i.cc
  %i.ce = getelementptr [16 x i8], ptr %i.bw, i64 %i.cc
  %i.cf = getelementptr [16 x i8], ptr %i.bw, i64 %i.cc
  %i.cg = getelementptr [16 x i8], ptr %i.bw, i64 %i.cc
  %i.ch = getelementptr [16 x i8], ptr %i.bw, i64 %i.cc
  %i.ci = getelementptr [16 x i8], ptr %i.bw, i64 %i.cc
  %i.cj = getelementptr [16 x i8], ptr %i.bw, i64 %i.cc
  %i.ck = getelementptr [16 x i8], ptr %i.bw, i64 %i.cc
  %i.cl = getelementptr i8, ptr %i.cd, i64 -8
  %i.cm = getelementptr i8, ptr %i.ce, i64 8
  %i.cn = getelementptr i8, ptr %i.cf, i64 24
  %i.co = getelementptr i8, ptr %i.cg, i64 40
  %i.cp = getelementptr i8, ptr %i.ch, i64 56
  %i.cq = getelementptr i8, ptr %i.ci, i64 72
  %i.cr = getelementptr i8, ptr %i.cj, i64 88
  %i.cs = getelementptr i8, ptr %i.ck, i64 104
  %i.ct = load i32, ptr %i.cl, align 8, !tbaa !12
  %i.cu = load i32, ptr %i.cm, align 8, !tbaa !12
  %i.cv = load i32, ptr %i.cn, align 8, !tbaa !12
  %i.cw = load i32, ptr %i.co, align 8, !tbaa !12
  %i.cx = insertelement <4 x i32> poison, i32 %i.ct, i64 0
  %i.cy = insertelement <4 x i32> %i.cx, i32 %i.cu, i64 1
  %i.cz = insertelement <4 x i32> %i.cy, i32 %i.cv, i64 2
  %i.da = insertelement <4 x i32> %i.cz, i32 %i.cw, i64 3
  %i.db = load i32, ptr %i.cp, align 8, !tbaa !12
  %i.dc = load i32, ptr %i.cq, align 8, !tbaa !12
  %i.dd = load i32, ptr %i.cr, align 8, !tbaa !12
  %i.de = load i32, ptr %i.cs, align 8, !tbaa !12
  %i.df = insertelement <4 x i32> poison, i32 %i.db, i64 0
  %i.dg = insertelement <4 x i32> %i.df, i32 %i.dc, i64 1
  %i.dh = insertelement <4 x i32> %i.dg, i32 %i.dd, i64 2
  %i.di = insertelement <4 x i32> %i.dh, i32 %i.de, i64 3
  %i.dj = icmp ne <4 x i32> %i.da, zeroinitializer
  %i.dk = icmp ne <4 x i32> %i.di, zeroinitializer
  %i.dl = zext <4 x i1> %i.dj to <4 x i32>
  %i.dm = zext <4 x i1> %i.dk to <4 x i32>
  %i.dn = add <4 x i32> %vec.phi, %i.dl           ; 2 uses
  %i.do = add <4 x i32> %vec.phi144, %i.dm        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dp = icmp eq i64 %index.next, %n.vec
  br i1 %i.dp, label %middle.block, label %vector.body, !llvm.loop !44

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.do, %i.dn
  %i.dq = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ca, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i73, %middle.block
  %indvars.iv.i74.ph = phi i64 [ %i.bx, %.lr.ph.i73 ], [ %i.cb, %middle.block ]
  %.02238.i.ph = phi i32 [ 0, %.lr.ph.i73 ], [ %i.dq, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i74 = phi i64 [ %indvars.iv.next.i75, %scalar.ph ], [ %indvars.iv.i74.ph, %scalar.ph.preheader ] ; 3 uses
  %.02238.i = phi i32 [ %spec.select.i, %scalar.ph ], [ %.02238.i.ph, %scalar.ph.preheader ]
  %i.dr = getelementptr [16 x i8], ptr %i.bw, i64 %indvars.iv.i74
  %i.ds = getelementptr i8, ptr %i.dr, i64 -8
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !12
  %i.du = icmp ne i32 %i.dt, 0
  %i.dv = zext i1 %i.du to i32
  %spec.select.i = add nuw nsw i32 %.02238.i, %i.dv ; 2 uses
  %indvars.iv.next.i75 = add nsw i64 %indvars.iv.i74, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.i74, %i.by
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %scalar.ph, !llvm.loop !45

._crit_edge.loopexit.i:                           ; preds = %scalar.ph, %middle.block
  %spec.select.i.lcssa = phi i32 [ %i.dq, %middle.block ], [ %spec.select.i, %scalar.ph ]
  %i.dw = add i32 %.021.i, 1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.m
  %.124.lcssa.i = phi i32 [ %.02343.i, %bb.m ], [ %i.dw, %._crit_edge.loopexit.i ]
  %.022.lcssa.i = phi i32 [ 0, %bb.m ], [ %spec.select.i.lcssa, %._crit_edge.loopexit.i ] ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv45.i ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !10
  %i.dz = add nsw i32 %i.dy, %.022.lcssa.i
  store i32 %i.dz, ptr %i.dx, align 4, !tbaa !10
  %i.ea = add nuw nsw i32 %.022.lcssa.i, %.02542.i ; 2 uses
  %indvars.iv.next46.i = add nuw nsw i64 %indvars.iv45.i, 1 ; 2 uses
  %i.eb = shl nuw nsw i32 %.02841.i, 1
  %exitcond48.not.i = icmp eq i64 %indvars.iv.next46.i, 27
  br i1 %exitcond48.not.i, label %numusearray.exit, label %bb.k, !llvm.loop !46

numusearray.exit:                                 ; preds = %bb.l, %._crit_edge.i
  %.025.lcssa.i = phi i32 [ %.02542.i, %bb.l ], [ %i.ea, %._crit_edge.i ] ; 2 uses
  %i.ec = load i8, ptr %i.d, align 1, !tbaa !22
  %i.ed = zext nneg i8 %i.ec to i32
  %notmask.i69 = shl nsw i32 -1, %i.ed
  %i.ee = xor i32 %notmask.i69, -1
  %i.ef = zext nneg i32 %i.ee to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.r, %numusearray.exit
  %indvars.iv.i70 = phi i64 [ %i.ef, %numusearray.exit ], [ %indvars.iv.next.i72, %bb.r ] ; 3 uses
  %.01115.i = phi i32 [ 0, %numusearray.exit ], [ %.1.i71, %bb.r ] ; 2 uses
  %.01214.i = phi i32 [ 0, %numusearray.exit ], [ %.113.i, %bb.r ] ; 2 uses
  %i.eg = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.eh = getelementptr inbounds [40 x i8], ptr %i.eg, i64 %indvars.iv.i70 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !26
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.em = load i32, ptr %i.el, align 8, !tbaa !12
  %i.en = icmp eq i32 %i.em, 3
  br i1 %i.en, label %bb.p, label %countint.exit.i

bb.p:                                             ; preds = %bb.o
  %i.eo = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !13 ; 2 uses
  %i.eq = fptosi double %i.ep to i32              ; 2 uses
  %i.er = sitofp i32 %i.eq to double
  %i.es = fcmp une double %i.ep, %i.er
  br i1 %i.es, label %countint.exit.i, label %arrayindex.exit.i.i

arrayindex.exit.i.i:                              ; preds = %bb.p
  %i.et = add i32 %i.eq, -1                       ; 2 uses
  %or.cond.i.i = icmp ult i32 %i.et, 67108864
  br i1 %or.cond.i.i, label %bb.q, label %countint.exit.i

bb.q:                                             ; preds = %arrayindex.exit.i.i
  %i.eu = tail call i32 @luaO_log2(i32 noundef %i.et) #7
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr [4 x i8], ptr %i.a, i64 %i.ev
  %i.ex = getelementptr i8, ptr %i.ew, i64 4      ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !10
  %i.ez = add nsw i32 %i.ey, 1
  store i32 %i.ez, ptr %i.ex, align 4, !tbaa !10
  br label %countint.exit.i

countint.exit.i:                                  ; preds = %bb.q, %arrayindex.exit.i.i, %bb.p, %bb.o
  %.0.i.i = phi i32 [ 1, %bb.q ], [ 0, %arrayindex.exit.i.i ], [ 0, %bb.o ], [ 0, %bb.p ]
  %i.fa = add nsw i32 %.0.i.i, %.01115.i
  %i.fb = add nsw i32 %.01214.i, 1
  br label %bb.r

bb.r:                                             ; preds = %countint.exit.i, %bb.n
  %.113.i = phi i32 [ %.01214.i, %bb.n ], [ %i.fb, %countint.exit.i ] ; 2 uses
  %.1.i71 = phi i32 [ %.01115.i, %bb.n ], [ %i.fa, %countint.exit.i ] ; 2 uses
  %indvars.iv.next.i72 = add nsw i64 %indvars.iv.i70, -1
  %i.fc = icmp eq i64 %indvars.iv.i70, 0
  br i1 %i.fc, label %numusehash.exit, label %bb.n, !llvm.loop !47

numusehash.exit:                                  ; preds = %bb.r
  %i.fd = add nsw i32 %.1.i71, %.025.lcssa.i
  %i.fe = load i32, ptr %i.b, align 8, !tbaa !12
  %i.ff = icmp eq i32 %i.fe, 3
  br i1 %i.ff, label %bb.s, label %countint.exit

bb.s:                                             ; preds = %numusehash.exit
  %i.fg = load double, ptr %2, align 8, !tbaa !13 ; 2 uses
  %i.fh = fptosi double %i.fg to i32              ; 2 uses
  %i.fi = sitofp i32 %i.fh to double
  %i.fj = fcmp une double %i.fg, %i.fi
  br i1 %i.fj, label %countint.exit, label %arrayindex.exit.i

arrayindex.exit.i:                                ; preds = %bb.s
  %i.fk = add i32 %i.fh, -1                       ; 2 uses
  %or.cond.i = icmp ult i32 %i.fk, 67108864
  br i1 %or.cond.i, label %bb.t, label %countint.exit

bb.t:                                             ; preds = %arrayindex.exit.i
  %i.fl = tail call i32 @luaO_log2(i32 noundef %i.fk) #7
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr [4 x i8], ptr %i.a, i64 %i.fm
  %i.fo = getelementptr i8, ptr %i.fn, i64 4      ; 2 uses
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !10
  %i.fq = add nsw i32 %i.fp, 1
  store i32 %i.fq, ptr %i.fo, align 4, !tbaa !10
  br label %countint.exit

countint.exit:                                    ; preds = %numusehash.exit, %bb.s, %arrayindex.exit.i, %bb.t
  %.0.i68 = phi i32 [ 1, %bb.t ], [ 0, %arrayindex.exit.i ], [ 0, %numusehash.exit ], [ 0, %bb.s ]
  %i.fr = add nsw i32 %i.fd, %.0.i68              ; 3 uses
  %i.fs = icmp sgt i32 %i.fr, 0
  br i1 %i.fs, label %.lr.ph.i, label %computesizes.exit

.lr.ph.i:                                         ; preds = %countint.exit, %bb.u
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.u ], [ 0, %countint.exit ] ; 2 uses
  %i.ft = phi i32 [ %i.gc, %bb.u ], [ 0, %countint.exit ]
  %.033.i = phi i32 [ %.1.i, %bb.u ], [ 0, %countint.exit ]
  %.01732.i = phi i32 [ %.118.i, %bb.u ], [ 0, %countint.exit ]
  %.02031.i = phi i32 [ %.121.i, %bb.u ], [ 0, %countint.exit ] ; 2 uses
  %.02230.i = phi i32 [ %i.gb, %bb.u ], [ 1, %countint.exit ] ; 3 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !10 ; 2 uses
  %i.fw = icmp sgt i32 %i.fv, 0                   ; 2 uses
  %i.fx = add nuw nsw i32 %i.fv, %.02031.i        ; 3 uses
  %i.fy = icmp sgt i32 %i.fx, %i.ft
  %.121.i = select i1 %i.fw, i32 %i.fx, i32 %.02031.i ; 2 uses
  %i.fz = select i1 %i.fw, i1 %i.fy, i1 false     ; 2 uses
  %.118.i = select i1 %i.fz, i32 %i.fx, i32 %.01732.i ; 3 uses
  %.1.i = select i1 %i.fz, i32 %.02230.i, i32 %.033.i ; 3 uses
  %i.ga = icmp eq i32 %.121.i, %i.fr
  br i1 %i.ga, label %computesizes.exit, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.gb = shl nsw i32 %.02230.i, 1
  %i.gc = and i32 %.02230.i, 2147483647           ; 2 uses
  %i.gd = icmp samesign ult i32 %i.gc, %i.fr
  br i1 %i.gd, label %.lr.ph.i, label %computesizes.exit, !llvm.loop !48

computesizes.exit:                                ; preds = %.lr.ph.i, %bb.u, %countint.exit
  %.219.i = phi i32 [ 0, %countint.exit ], [ %.118.i, %bb.u ], [ %.118.i, %.lr.ph.i ]
  %.2.i = phi i32 [ 0, %countint.exit ], [ %.1.i, %bb.u ], [ %.1.i, %.lr.ph.i ]
  %i.ge = add i32 %.025.lcssa.i, 1
  %i.gf = add i32 %i.ge, %.113.i
  %i.gg = sub i32 %i.gf, %.219.i
  tail call fastcc void @resize(ptr noundef %0, ptr noundef %1, i32 noundef %.2.i, i32 noundef %i.gg), !inline_history !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.gh = tail call ptr @luaH_get(ptr noundef %1, ptr noundef %2), !inline_history !28 ; 2 uses
  store i8 0, ptr %i.h, align 2, !tbaa !29
  %.not.i = icmp eq ptr %i.gh, @luaO_nilobject_
  br i1 %.not.i, label %bb.v, label %luaH_set.exit.thread

bb.v:                                             ; preds = %computesizes.exit
  %i.gi = load i32, ptr %i.b, align 8, !tbaa !12
  switch i32 %i.gi, label %tailrecurse.backedge [
    i32 0, label %.sink.split
    i32 3, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v
  %i.gj = load double, ptr %2, align 8, !tbaa !13
  %i.gk = fcmp ord double %i.gj, 0.000000e+00
  br i1 %i.gk, label %tailrecurse.backedge, label %.sink.split

.sink.split:                                      ; preds = %bb.w, %bb.v
  %.str.1.sink = phi ptr [ @.str, %bb.v ], [ @.str.1, %bb.w ]
  tail call void (ptr, ptr, ...) @luaG_runerror(ptr noundef %0, ptr noundef nonnull %.str.1.sink) #7
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %.sink.split, %bb.w, %bb.v
  br label %tailrecurse

getfreepos.exit:                                  ; preds = %bb.j
  %i.gl = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.gm = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 5 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !12
  switch i32 %i.go, label %bb.ab [
    i32 3, label %bb.x
    i32 4, label %bb.y
    i32 1, label %bb.z
    i32 2, label %bb.aa
  ]

bb.x:                                             ; preds = %getfreepos.exit
  %i.gp = load double, ptr %i.gm, align 8, !tbaa !13 ; 2 uses
  %i.gq = fcmp oeq double %i.gp, 0.000000e+00
  br i1 %i.gq, label %mainposition.exit67, label %.preheader.i.i62

.preheader.i.i62:                                 ; preds = %bb.x
  %i.gr = bitcast double %i.gp to i64             ; 2 uses
  %.0.extract.trunc.i.i62 = trunc i64 %i.gr to i32
  %.sroa.0.4.extract.shift.i.i63 = lshr i64 %i.gr, 32
  %.4.extract.trunc.i.i64 = trunc nuw i64 %.sroa.0.4.extract.shift.i.i63 to i32
  %5 = add i32 %.4.extract.trunc.i.i64, %.0.extract.trunc.i.i62
  %i.gs = load i8, ptr %i.d, align 1, !tbaa !22
  %i.gt = zext nneg i8 %i.gs to i32
  %notmask.i.i65 = shl nsw i32 -1, %i.gt
  %i.gu = xor i32 %notmask.i.i65, -1
  %i.gv = or i32 %i.gu, 1
  %i.gw = urem i32 %5, %i.gv
  %i.gx = zext nneg i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw [40 x i8], ptr %i.bi, i64 %i.gx
  br label %mainposition.exit67

bb.y:                                             ; preds = %getfreepos.exit
  %i.gz = load ptr, ptr %i.gm, align 8, !tbaa !13
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 12
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !13
  %i.hc = load i8, ptr %i.d, align 1, !tbaa !22
  %i.hd = zext nneg i8 %i.hc to i32
  %notmask17.i61 = shl nsw i32 -1, %i.hd
  %i.he = xor i32 %notmask17.i61, -1
  %i.hf = and i32 %i.hb, %i.he
  %i.hg = zext nneg i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw [40 x i8], ptr %i.bi, i64 %i.hg
  br label %mainposition.exit67

bb.z:                                             ; preds = %getfreepos.exit
  %i.hi = load i32, ptr %i.gm, align 8, !tbaa !13
  %i.hj = load i8, ptr %i.d, align 1, !tbaa !22
  %i.hk = zext nneg i8 %i.hj to i32
  %notmask16.i60 = shl nsw i32 -1, %i.hk
  %i.hl = xor i32 %notmask16.i60, -1
  %i.hm = and i32 %i.hi, %i.hl
  %i.hn = zext nneg i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw [40 x i8], ptr %i.bi, i64 %i.hn
  br label %mainposition.exit67

bb.aa:                                            ; preds = %getfreepos.exit
  %i.hp = load ptr, ptr %i.gm, align 8, !tbaa !13
  %i.hq = ptrtoint ptr %i.hp to i64
  %i.hr = trunc i64 %i.hq to i32
  %i.hs = load i8, ptr %i.d, align 1, !tbaa !22
  %i.ht = zext nneg i8 %i.hs to i32
  %notmask.i58 = shl nsw i32 -1, %i.ht
  %i.hu = xor i32 %notmask.i58, -1
  %i.hv = or i32 %i.hu, 1
  %i.hw = urem i32 %i.hr, %i.hv
  %i.hx = zext nneg i32 %i.hw to i64
  %i.hy = getelementptr inbounds nuw [40 x i8], ptr %i.bi, i64 %i.hx
  br label %mainposition.exit67

bb.ab:                                            ; preds = %getfreepos.exit
  %i.hz = load ptr, ptr %i.gm, align 8, !tbaa !13
  %i.ia = ptrtoint ptr %i.hz to i64
  %i.ib = trunc i64 %i.ia to i32
  %i.ic = load i8, ptr %i.d, align 1, !tbaa !22
  %i.id = zext nneg i8 %i.ic to i32
  %notmask18.i66 = shl nsw i32 -1, %i.id
  %i.ie = xor i32 %notmask18.i66, -1
  %i.if = or i32 %i.ie, 1
  %i.ig = urem i32 %i.ib, %i.if
  %i.ih = zext nneg i32 %i.ig to i64
  %i.ii = getelementptr inbounds nuw [40 x i8], ptr %i.bi, i64 %i.ih
  br label %mainposition.exit67

mainposition.exit67:                              ; preds = %bb.x, %.preheader.i.i62, %bb.y, %bb.z, %bb.aa, %bb.ab
  %.0.i59 = phi ptr [ %i.ii, %bb.ab ], [ %i.hy, %bb.aa ], [ %i.hh, %bb.y ], [ %i.ho, %bb.z ], [ %i.gy, %.preheader.i.i62 ], [ %i.bi, %bb.x ] ; 2 uses
  %.not = icmp eq ptr %.0.i59, %.0.i
  br i1 %.not, label %bb.ad, label %.preheader

.preheader:                                       ; preds = %mainposition.exit67, %.preheader
  %.042 = phi ptr [ %i.ik, %.preheader ], [ %.0.i59, %mainposition.exit67 ] ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.042, i64 32
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !13 ; 2 uses
  %.not51 = icmp eq ptr %i.ik, %.0.i
  br i1 %.not51, label %bb.ac, label %.preheader, !llvm.loop !50

bb.ac:                                            ; preds = %.preheader
  %i.il = getelementptr inbounds nuw i8, ptr %.042, i64 32
  store ptr %i.bo, ptr %i.il, align 8, !tbaa !13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bo, ptr noundef nonnull align 8 dereferenceable(40) %.0.i, i64 40, i1 false), !tbaa.struct !53
  %i.im = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  store ptr null, ptr %i.im, align 8, !tbaa !13
  store i32 0, ptr %i.gl, align 8, !tbaa !26
  br label %luaH_set.exit

bb.ad:                                            ; preds = %mainposition.exit67
  %i.in = getelementptr inbounds nuw i8, ptr %.0.i, i64 32 ; 2 uses
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !13
  %i.ip = getelementptr inbounds i8, ptr %i.bn, i64 -8
  store ptr %i.io, ptr %i.ip, align 8, !tbaa !13
  store ptr %i.bo, ptr %i.in, align 8, !tbaa !13
  br label %luaH_set.exit

luaH_set.exit:                                    ; preds = %mainposition.exit, %bb.ad, %bb.ac
  %.2 = phi ptr [ %.0.i, %bb.ac ], [ %i.bo, %bb.ad ], [ %.0.i, %mainposition.exit ] ; 6 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.2, i64 16
  %i.ir = load i64, ptr %2, align 8, !tbaa !13
  store i64 %i.ir, ptr %i.iq, align 8, !tbaa !13
  %i.is = load i32, ptr %i.b, align 8, !tbaa !12  ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.2, i64 24
  store i32 %i.is, ptr %i.it, align 8, !tbaa !13
  %i.iu = icmp sgt i32 %i.is, 3
  br i1 %i.iu, label %bb.ae, label %luaH_set.exit.thread

bb.ae:                                            ; preds = %luaH_set.exit
  %i.iv = load ptr, ptr %2, align 8, !tbaa !13
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 9
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !13
  %i.iy = and i8 %i.ix, 3
  %.not53 = icmp eq i8 %i.iy, 0
  br i1 %.not53, label %luaH_set.exit.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !13
  %i.jb = and i8 %i.ja, 4
  %.not54 = icmp eq i8 %i.jb, 0
  br i1 %.not54, label %luaH_set.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @luaC_barrierback(ptr noundef %0, ptr noundef nonnull %1) #7
  br label %luaH_set.exit.thread

luaH_set.exit.thread:                             ; preds = %computesizes.exit, %luaH_set.exit, %bb.ae, %bb.af, %bb.ag
  %.145 = phi ptr [ %.2, %luaH_set.exit ], [ %.2, %bb.ag ], [ %.2, %bb.af ], [ %.2, %bb.ae ], [ %i.gh, %computesizes.exit ]
  ret ptr %.145
}

; Function Attrs: nounwind uwtable
define hidden ptr @luaH_setnum(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.lua_TValue, align 8         ; 5 uses
  %i.a = add nsw i32 %2, -1                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = load i32, ptr %i.b, align 8, !tbaa !20
  %i.d = icmp ult i32 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.g = sext i32 %i.a to i64
  %i.h = getelementptr inbounds [16 x i8], ptr %i.f, i64 %i.g
  br label %luaH_getnum.exit

bb.c:                                             ; preds = %bb.a
  %i.i = sitofp i32 %2 to double                  ; 3 uses
  %i.j = icmp eq i32 %2, 0
  br i1 %i.j, label %bb.d, label %.preheader.i.i

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21
  br label %hashnum.exit.i.preheader

.preheader.i.i:                                   ; preds = %bb.c
  %i.m = bitcast double %i.i to i64               ; 2 uses
  %.0.extract.trunc.i.i = trunc i64 %i.m to i32
  %.sroa.0.4.extract.shift.i.i = lshr i64 %i.m, 32
  %.4.extract.trunc.i.i = trunc nuw i64 %.sroa.0.4.extract.shift.i.i to i32
  %4 = add i32 %.4.extract.trunc.i.i, %.0.extract.trunc.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.q = load i8, ptr %i.p, align 1, !tbaa !22
  %i.r = zext nneg i8 %i.q to i32
  %notmask.i.i = shl nsw i32 -1, %i.r
  %i.s = xor i32 %notmask.i.i, -1
  %i.t = or i32 %i.s, 1
  %i.u = urem i32 %4, %i.t
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %i.v
  br label %hashnum.exit.i.preheader

hashnum.exit.i.preheader:                         ; preds = %.preheader.i.i, %bb.d
  %.0.i.ph = phi ptr [ %i.w, %.preheader.i.i ], [ %i.l, %bb.d ]
  br label %hashnum.exit.i

hashnum.exit.i:                                   ; preds = %hashnum.exit.i.preheader, %bb.f
  %.0.i = phi ptr [ %i.ae, %bb.f ], [ %.0.i.ph, %hashnum.exit.i.preheader ] ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.y = load i32, ptr %i.x, align 8, !tbaa !13
  %i.z = icmp eq i32 %i.y, 3
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %hashnum.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !13
  %i.ac = fcmp oeq double %i.ab, %i.i
  br i1 %i.ac, label %luaH_getnum.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %hashnum.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !13 ; 2 uses
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %luaH_getnum.exit.thread, label %hashnum.exit.i, !llvm.loop !1

luaH_getnum.exit:                                 ; preds = %bb.e, %bb.b
  %.1.i = phi ptr [ %i.h, %bb.b ], [ %.0.i, %bb.e ] ; 2 uses
  %.not = icmp eq ptr %.1.i, @luaO_nilobject_
  br i1 %.not, label %luaH_getnum.exit.luaH_getnum.exit.thread_crit_edge, label %bb.g

luaH_getnum.exit.luaH_getnum.exit.thread_crit_edge: ; preds = %luaH_getnum.exit
  %.pre = sitofp i32 %2 to double
  br label %luaH_getnum.exit.thread

luaH_getnum.exit.thread:                          ; preds = %bb.f, %luaH_getnum.exit.luaH_getnum.exit.thread_crit_edge
  %.pre-phi = phi double [ %.pre, %luaH_getnum.exit.luaH_getnum.exit.thread_crit_edge ], [ %i.i, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  store double %.pre-phi, ptr %3, align 8, !tbaa !13
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.af, align 8, !tbaa !12
  %i.ag = call fastcc ptr @newkey(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  br label %bb.g

bb.g:                                             ; preds = %luaH_getnum.exit, %luaH_getnum.exit.thread
  %.0 = phi ptr [ %i.ag, %luaH_getnum.exit.thread ], [ %.1.i, %luaH_getnum.exit ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden ptr @luaH_setstr(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.lua_TValue, align 8         ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.f = load i8, ptr %i.e, align 1, !tbaa !22
  %i.g = zext nneg i8 %i.f to i32
  %notmask.i = shl nsw i32 -1, %i.g
  %i.h = xor i32 %notmask.i, -1
  %i.i = and i32 %i.d, %i.h
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.j
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.0.i = phi ptr [ %i.k, %bb.a ], [ %i.s, %bb.d ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !13
  %i.n = icmp eq i32 %i.m, 4
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !13
  %i.q = icmp eq ptr %i.p, %2
  br i1 %i.q, label %luaH_getstr.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !13   ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %luaH_getstr.exit.thread, label %bb.b, !llvm.loop !2

luaH_getstr.exit:                                 ; preds = %bb.c
  %.not = icmp eq ptr %.0.i, @luaO_nilobject_
  br i1 %.not, label %luaH_getstr.exit.thread, label %bb.e

luaH_getstr.exit.thread:                          ; preds = %bb.d, %luaH_getstr.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  store ptr %2, ptr %3, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 4, ptr %i.t, align 8, !tbaa !12
  %i.u = call fastcc ptr @newkey(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  br label %bb.e

bb.e:                                             ; preds = %luaH_getstr.exit, %luaH_getstr.exit.thread
  %.0 = phi ptr [ %i.u, %luaH_getstr.exit.thread ], [ %.0.i, %luaH_getstr.exit ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @luaH_getn(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20   ; 10 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24   ; 2 uses
  %i.e = add i32 %i.b, -1
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !12
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %.not27 = icmp eq i32 %i.b, 1
  br i1 %.not27, label %unbound_search.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.026 = phi i32 [ %.0., %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  %.01725 = phi i32 [ %..017, %.lr.ph ], [ %i.b, %.preheader ] ; 2 uses
  %i.k = add i32 %.026, %.01725
  %i.l = lshr i32 %i.k, 1                         ; 3 uses
  %i.m = add nsw i32 %i.l, -1
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !12
  %i.r = icmp eq i32 %i.q, 0                      ; 2 uses
  %..017 = select i1 %i.r, i32 %i.l, i32 %.01725  ; 2 uses
  %.0. = select i1 %i.r, i32 %.026, i32 %i.l      ; 3 uses
  %i.s = sub i32 %..017, %.0.
  %i.t = icmp ugt i32 %i.s, 1
  br i1 %i.t, label %.lr.ph, label %unbound_search.exit, !llvm.loop !54

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !21   ; 7 uses
  %i.w = icmp eq ptr %i.v, @dummynode_
  br i1 %i.w, label %unbound_search.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = add i32 %i.b, 1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 11 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.j, %bb.d
  %.020.i = phi i32 [ %i.x, %bb.d ], [ %i.bb, %bb.j ] ; 7 uses
  %.0.i = phi i32 [ %i.b, %bb.d ], [ %.020.i, %bb.j ] ; 3 uses
  %i.aa = add nsw i32 %.020.i, -1                 ; 2 uses
  %i.ab = icmp ult i32 %i.aa, %i.b
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !24
  %i.ad = sext i32 %i.aa to i64
  %i.ae = getelementptr inbounds [16 x i8], ptr %i.ac, i64 %i.ad
  br label %luaH_getnum.exit.i

bb.g:                                             ; preds = %bb.e
  %i.af = sitofp i32 %.020.i to double            ; 2 uses
  %i.ag = icmp eq i32 %.020.i, 0
  br i1 %i.ag, label %hashnum.exit.i.i.preheader, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.g
  %i.ah = bitcast double %i.af to i64             ; 2 uses
  %.0.extract.trunc.i.i.i = trunc i64 %i.ah to i32
  %.sroa.0.4.extract.shift.i.i.i = lshr i64 %i.ah, 32
  %.4.extract.trunc.i.i.i = trunc nuw i64 %.sroa.0.4.extract.shift.i.i.i to i32
  %1 = add i32 %.4.extract.trunc.i.i.i, %.0.extract.trunc.i.i.i
  %i.ai = load i8, ptr %i.y, align 1, !tbaa !22
  %i.aj = zext nneg i8 %i.ai to i32
  %notmask.i.i.i = shl nsw i32 -1, %i.aj
  %i.ak = xor i32 %notmask.i.i.i, -1
  %i.al = or i32 %i.ak, 1
  %i.am = urem i32 %1, %i.al
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [40 x i8], ptr %i.v, i64 %i.an
  br label %hashnum.exit.i.i.preheader

hashnum.exit.i.i.preheader:                       ; preds = %bb.g, %.preheader.i.i.i
  %.0.i.i.ph = phi ptr [ %i.v, %bb.g ], [ %i.ao, %.preheader.i.i.i ]
  br label %hashnum.exit.i.i

hashnum.exit.i.i:                                 ; preds = %hashnum.exit.i.i.preheader, %bb.i
  %.0.i.i = phi ptr [ %i.aw, %bb.i ], [ %.0.i.i.ph, %hashnum.exit.i.i.preheader ] ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !13
  %i.ar = icmp eq i32 %i.aq, 3
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %hashnum.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.at = load double, ptr %i.as, align 8, !tbaa !13
  %i.au = fcmp oeq double %i.at, %i.af
  br i1 %i.au, label %luaH_getnum.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h, %hashnum.exit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !13 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %luaH_getnum.exit.i, label %hashnum.exit.i.i, !llvm.loop !1

luaH_getnum.exit.i:                               ; preds = %bb.i, %bb.h, %bb.f
  %.1.i.i = phi ptr [ %i.ae, %bb.f ], [ @luaO_nilobject_, %bb.i ], [ %.0.i.i, %bb.h ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !12
  %.not.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i, label %.preheader.i, label %bb.j

.preheader.i:                                     ; preds = %luaH_getnum.exit.i
  %i.az = sub i32 %.020.i, %.0.i
  %i.ba = icmp ugt i32 %i.az, 1
  br i1 %i.ba, label %.lr.ph.i, label %unbound_search.exit

bb.j:                                             ; preds = %luaH_getnum.exit.i
  %i.bb = shl i32 %.020.i, 1                      ; 2 uses
  %i.bc = icmp ugt i32 %i.bb, 2147483645
  br i1 %i.bc, label %.preheader46.i, label %bb.e, !llvm.loop !55

.preheader46.i:                                   ; preds = %bb.j, %luaH_getnum.exit35.i
  %.1.i = phi i32 [ %i.cc, %luaH_getnum.exit35.i ], [ 1, %bb.j ] ; 4 uses
  %i.bd = add nsw i32 %.1.i, -1                   ; 3 uses
  %i.be = icmp ult i32 %i.bd, %i.b
  br i1 %i.be, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.preheader46.i
  %i.bf = load ptr, ptr %i.z, align 8, !tbaa !24
  %i.bg = sext i32 %i.bd to i64
  %i.bh = getelementptr inbounds [16 x i8], ptr %i.bf, i64 %i.bg
  br label %luaH_getnum.exit35.i

bb.l:                                             ; preds = %.preheader46.i
  %i.bi = sitofp i32 %.1.i to double              ; 2 uses
  %i.bj = icmp eq i32 %.1.i, 0
  br i1 %i.bj, label %hashnum.exit.i30.i.preheader, label %.preheader.i.i26.i

.preheader.i.i26.i:                               ; preds = %bb.l
  %i.bk = bitcast double %i.bi to i64             ; 2 uses
  %.0.extract.trunc.i.i26.i = trunc i64 %i.bk to i32
  %.sroa.0.4.extract.shift.i.i27.i = lshr i64 %i.bk, 32
  %.4.extract.trunc.i.i28.i = trunc nuw i64 %.sroa.0.4.extract.shift.i.i27.i to i32
  %2 = add i32 %.4.extract.trunc.i.i28.i, %.0.extract.trunc.i.i26.i
  %i.bl = load i8, ptr %i.y, align 1, !tbaa !22
  %i.bm = zext nneg i8 %i.bl to i32
  %notmask.i.i29.i = shl nsw i32 -1, %i.bm
  %i.bn = xor i32 %notmask.i.i29.i, -1
  %i.bo = or i32 %i.bn, 1
  %i.bp = urem i32 %2, %i.bo
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [40 x i8], ptr %i.v, i64 %i.bq
  br label %hashnum.exit.i30.i.preheader

hashnum.exit.i30.i.preheader:                     ; preds = %bb.l, %.preheader.i.i26.i
  %.0.i32.i.ph = phi ptr [ %i.v, %bb.l ], [ %i.br, %.preheader.i.i26.i ]
  br label %hashnum.exit.i30.i

hashnum.exit.i30.i:                               ; preds = %hashnum.exit.i30.i.preheader, %bb.n
  %.0.i32.i = phi ptr [ %i.bz, %bb.n ], [ %.0.i32.i.ph, %hashnum.exit.i30.i.preheader ] ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i32.i, i64 24
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !13
  %i.bu = icmp eq i32 %i.bt, 3
  br i1 %i.bu, label %bb.m, label %bb.n

bb.m:                                             ; preds = %hashnum.exit.i30.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i32.i, i64 16
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !13
  %i.bx = fcmp oeq double %i.bw, %i.bi
  br i1 %i.bx, label %luaH_getnum.exit35.i, label %bb.n

bb.n:                                             ; preds = %bb.m, %hashnum.exit.i30.i
  %i.by = getelementptr inbounds nuw i8, ptr %.0.i32.i, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !13 ; 2 uses
  %.not.i33.i = icmp eq ptr %i.bz, null
  br i1 %.not.i33.i, label %luaH_getnum.exit35.i, label %hashnum.exit.i30.i, !llvm.loop !1

luaH_getnum.exit35.i:                             ; preds = %bb.n, %bb.m, %bb.k
  %.1.i34.i = phi ptr [ %i.bh, %bb.k ], [ @luaO_nilobject_, %bb.n ], [ %.0.i32.i, %bb.m ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.1.i34.i, i64 8
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !12
  %.not25.i = icmp eq i32 %i.cb, 0
  %i.cc = add i32 %.1.i, 1
  br i1 %.not25.i, label %unbound_search.exit, label %.preheader46.i, !llvm.loop !56

.lr.ph.i:                                         ; preds = %.preheader.i, %luaH_getnum.exit45.i
  %.253.i = phi i32 [ %.2..i, %luaH_getnum.exit45.i ], [ %.0.i, %.preheader.i ] ; 2 uses
  %.12152.i = phi i32 [ %..121.i, %luaH_getnum.exit45.i ], [ %.020.i, %.preheader.i ] ; 2 uses
  %i.cd = add i32 %.12152.i, %.253.i
  %i.ce = lshr i32 %i.cd, 1                       ; 5 uses
  %i.cf = add nsw i32 %i.ce, -1                   ; 2 uses
  %i.cg = icmp ult i32 %i.cf, %i.b
  br i1 %i.cg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph.i
  %i.ch = load ptr, ptr %i.z, align 8, !tbaa !24
  %i.ci = zext nneg i32 %i.cf to i64
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.ch, i64 %i.ci
  br label %luaH_getnum.exit45.i

bb.p:                                             ; preds = %.lr.ph.i
  %i.ck = uitofp nneg i32 %i.ce to double         ; 2 uses
  %i.cl = icmp eq i32 %i.ce, 0
  br i1 %i.cl, label %hashnum.exit.i40.i.preheader, label %.preheader.i.i36.i

.preheader.i.i36.i:                               ; preds = %bb.p
  %i.cm = bitcast double %i.ck to i64             ; 2 uses
  %.0.extract.trunc.i.i36.i = trunc i64 %i.cm to i32
  %.sroa.0.4.extract.shift.i.i37.i = lshr i64 %i.cm, 32
  %.4.extract.trunc.i.i38.i = trunc nuw nsw i64 %.sroa.0.4.extract.shift.i.i37.i to i32
  %3 = add i32 %.4.extract.trunc.i.i38.i, %.0.extract.trunc.i.i36.i
  %i.cn = load i8, ptr %i.y, align 1, !tbaa !22
  %i.co = zext nneg i8 %i.cn to i32
  %notmask.i.i39.i = shl nsw i32 -1, %i.co
  %i.cp = xor i32 %notmask.i.i39.i, -1
  %i.cq = or i32 %i.cp, 1
  %i.cr = urem i32 %3, %i.cq
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [40 x i8], ptr %i.v, i64 %i.cs
  br label %hashnum.exit.i40.i.preheader

hashnum.exit.i40.i.preheader:                     ; preds = %bb.p, %.preheader.i.i36.i
  %.0.i42.i.ph = phi ptr [ %i.v, %bb.p ], [ %i.ct, %.preheader.i.i36.i ]
  br label %hashnum.exit.i40.i

hashnum.exit.i40.i:                               ; preds = %hashnum.exit.i40.i.preheader, %bb.r
  %.0.i42.i = phi ptr [ %i.db, %bb.r ], [ %.0.i42.i.ph, %hashnum.exit.i40.i.preheader ] ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i42.i, i64 24
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !13
  %i.cw = icmp eq i32 %i.cv, 3
  br i1 %i.cw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %hashnum.exit.i40.i
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.i42.i, i64 16
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !13
  %i.cz = fcmp oeq double %i.cy, %i.ck
  br i1 %i.cz, label %luaH_getnum.exit45.i, label %bb.r

bb.r:                                             ; preds = %bb.q, %hashnum.exit.i40.i
  %i.da = getelementptr inbounds nuw i8, ptr %.0.i42.i, i64 32
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !13 ; 2 uses
  %.not.i43.i = icmp eq ptr %i.db, null
  br i1 %.not.i43.i, label %luaH_getnum.exit45.i, label %hashnum.exit.i40.i, !llvm.loop !1

luaH_getnum.exit45.i:                             ; preds = %bb.r, %bb.q, %bb.o
  %.1.i44.i = phi ptr [ %i.cj, %bb.o ], [ @luaO_nilobject_, %bb.r ], [ %.0.i42.i, %bb.q ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.1.i44.i, i64 8
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !12
  %i.de = icmp eq i32 %i.dd, 0                    ; 2 uses
  %..121.i = select i1 %i.de, i32 %i.ce, i32 %.12152.i ; 2 uses
  %.2..i = select i1 %i.de, i32 %.253.i, i32 %i.ce ; 3 uses
  %i.df = sub i32 %..121.i, %.2..i
  %i.dg = icmp ugt i32 %i.df, 1
  br i1 %i.dg, label %.lr.ph.i, label %unbound_search.exit, !llvm.loop !57

unbound_search.exit:                              ; preds = %.lr.ph, %luaH_getnum.exit35.i, %luaH_getnum.exit45.i, %.preheader, %.preheader.i, %bb.c
  %.019 = phi i32 [ %i.b, %bb.c ], [ %.2..i, %luaH_getnum.exit45.i ], [ %i.bd, %luaH_getnum.exit35.i ], [ %.0.i, %.preheader.i ], [ 0, %.preheader ], [ %.0., %.lr.ph ]
  ret i32 %.019
}

declare hidden ptr @luaM_toobig(ptr noundef) local_unnamed_addr #2

declare hidden i32 @luaO_log2(i32 noundef) local_unnamed_addr #2

declare hidden void @luaC_barrierback(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !23}
!1 = distinct !{!1, !23}
!2 = distinct !{!2, !23}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"lua_TValue", !8, i64 0, !9, i64 8}
!12 = !{!11, !9, i64 8}
!13 = !{!8, !8, i64 0}
!14 = !{!"any pointer", !8, i64 0}
!15 = !{!"p1 _ZTS8GCObject", !14, i64 0}
!16 = !{!"p1 _ZTS5Table", !14, i64 0}
!17 = !{!"p1 _ZTS10lua_TValue", !14, i64 0}
!18 = !{!"p1 _ZTS4Node", !14, i64 0}
!19 = !{!"Table", !15, i64 0, !8, i64 8, !8, i64 9, !8, i64 10, !8, i64 11, !16, i64 16, !17, i64 24, !18, i64 32, !18, i64 40, !15, i64 48, !9, i64 56}
!20 = !{!19, !9, i64 56}
!21 = !{!19, !18, i64 32}
!22 = !{!19, !8, i64 11}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!19, !17, i64 24}
!25 = !{!"Node", !11, i64 0, !8, i64 16}
!26 = !{!25, !9, i64 8}
!27 = !{!"llvm.loop.unroll.disable"}
!28 = !{ptr @luaH_set}
!29 = !{!19, !8, i64 10}
!30 = !{!19, !18, i64 40}
!31 = distinct !{!31, !23}
!32 = distinct !{!32, !23}
!33 = distinct !{!33, !23}
!34 = distinct !{!34, !27}
!35 = distinct !{!35, !23}
!36 = distinct !{!36, !23}
!37 = !{ptr @luaH_setnum}
!38 = distinct !{!38, !27}
!39 = !{!19, !16, i64 16}
!40 = distinct !{!40, !23}
!41 = distinct !{!41, !27}
!42 = distinct !{!42, !23}
!43 = distinct !{!43, !23}
!44 = distinct !{!44, !23, !51, !52}
!45 = distinct !{!45, !23, !52, !51}
!46 = distinct !{!46, !23}
!47 = distinct !{!47, !23}
!48 = distinct !{!48, !23}
!49 = distinct !{null}
!50 = distinct !{!50, !23}
!51 = !{!"llvm.loop.isvectorized", i32 1}
!52 = !{!"llvm.loop.unroll.runtime.disable"}
!53 = !{i64 0, i64 8, !13, i64 8, i64 4, !10, i64 16, i64 24, !13}
!54 = distinct !{!54, !23}
!55 = distinct !{!55, !23}
!56 = distinct !{!56, !23}
!57 = distinct !{!57, !23}
end_hunk_1
