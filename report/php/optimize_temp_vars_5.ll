Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/optimize_temp_vars_5?download=true
inline.NumInlined: 14
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@zend_observer_fcall_op_array_extension = external local_unnamed_addr global i32, align 4

; Function Attrs: nounwind uwtable
define hidden void @zend_optimize_temporary_variables(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !38   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.d = load i32, ptr %i.c, align 4, !tbaa !39   ; 8 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !44     ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !47   ; 8 uses
  %i.g = zext i32 %i.b to i64                     ; 6 uses
  %i.h = add nuw nsw i64 %i.g, 63
  %sh.diff = lshr i64 %i.h, 3
  %i.i = and i64 %sh.diff, 1073741816             ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48
  %i.l = ptrtoint ptr %i.k to i64                 ; 3 uses
  %i.m = ptrtoint ptr %i.f to i64
  %i.n = sub i64 %i.l, %i.m
  %.not.i197 = icmp ugt i64 %i.i, %i.n
  br i1 %.not.i197, label %bb.c, label %bb.b, !prof !49

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i ; 2 uses
  store ptr %i.o, ptr %i.e, align 8, !tbaa !47
  br label %zend_arena_alloc.exit200

bb.c:                                             ; preds = %bb.a
  %i.p = add nuw nsw i64 %i.i, 24
  %i.q = ptrtoint ptr %i.e to i64
  %i.r = sub i64 %i.l, %i.q
  %..i199 = tail call i64 @llvm.umax.i64(i64 %i.p, i64 %i.r) ; 2 uses
  %i.s = tail call noalias ptr @_emalloc(i64 noundef %..i199) #5 ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.i ; 2 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !47
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %..i199 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.v, ptr %i.w, align 8, !tbaa !48
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.e, ptr %i.x, align 8, !tbaa !50
  store ptr %i.s, ptr %1, align 8, !tbaa !51
  %.pre = ptrtoint ptr %i.v to i64
  br label %zend_arena_alloc.exit200

zend_arena_alloc.exit200:                         ; preds = %bb.b, %bb.c
  %.pre-phi = phi i64 [ %i.l, %bb.b ], [ %.pre, %bb.c ] ; 3 uses
  %i.y = phi ptr [ %i.o, %bb.b ], [ %i.u, %bb.c ] ; 3 uses
  %i.z = phi ptr [ %i.e, %bb.b ], [ %i.s, %bb.c ] ; 4 uses
  %.0.i198 = phi ptr [ %i.f, %bb.b ], [ %i.t, %bb.c ] ; 15 uses
  %i.aa = shl nuw nsw i64 %i.g, 3                 ; 4 uses
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = sub i64 %.pre-phi, %i.ab
  %.not.i193 = icmp ugt i64 %i.aa, %i.ac
  br i1 %.not.i193, label %bb.e, label %bb.d, !prof !49

bb.d:                                             ; preds = %zend_arena_alloc.exit200
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa ; 2 uses
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !47
  br label %zend_arena_alloc.exit196

bb.e:                                             ; preds = %zend_arena_alloc.exit200
  %i.ae = add nuw nsw i64 %i.aa, 24
  %i.af = ptrtoint ptr %i.z to i64
  %i.ag = sub i64 %.pre-phi, %i.af
  %..i195 = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 %i.ag) ; 2 uses
  %i.ah = tail call noalias ptr @_emalloc(i64 noundef %..i195) #5 ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aa ; 2 uses
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !47
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 %..i195 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !48
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr %i.z, ptr %i.am, align 8, !tbaa !50
  store ptr %i.ah, ptr %1, align 8, !tbaa !51
  %.pre275 = ptrtoint ptr %i.ak to i64
  br label %zend_arena_alloc.exit196

zend_arena_alloc.exit196:                         ; preds = %bb.d, %bb.e
  %.pre-phi276 = phi i64 [ %.pre-phi, %bb.d ], [ %.pre275, %bb.e ] ; 2 uses
  %i.an = phi ptr [ %i.ad, %bb.d ], [ %i.aj, %bb.e ] ; 3 uses
  %i.ao = phi ptr [ %i.z, %bb.d ], [ %i.ah, %bb.e ] ; 3 uses
  %.0.i194 = phi ptr [ %i.y, %bb.d ], [ %i.ai, %bb.e ] ; 2 uses
  %i.ap = shl nuw nsw i64 %i.g, 2                 ; 2 uses
  %i.aq = add nuw nsw i64 %i.ap, 4
  %i.ar = and i64 %i.aq, 34359738360              ; 4 uses
  %i.as = ptrtoint ptr %i.an to i64
  %i.at = sub i64 %.pre-phi276, %i.as
  %.not.i = icmp ugt i64 %i.ar, %i.at
  br i1 %.not.i, label %bb.g, label %bb.f, !prof !49

bb.f:                                             ; preds = %zend_arena_alloc.exit196
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ar
  store ptr %i.au, ptr %i.ao, align 8, !tbaa !47
  br label %.lr.ph

bb.g:                                             ; preds = %zend_arena_alloc.exit196
  %i.av = add nuw nsw i64 %i.ar, 24
  %i.aw = ptrtoint ptr %i.ao to i64
  %i.ax = sub i64 %.pre-phi276, %i.aw
  %..i = tail call i64 @llvm.umax.i64(i64 %i.av, i64 %i.ax) ; 2 uses
  %i.ay = tail call noalias ptr @_emalloc(i64 noundef %..i) #5 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ar
  store ptr %i.ba, ptr %i.ay, align 8, !tbaa !47
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 %..i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !48
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store ptr %i.ao, ptr %i.bd, align 8, !tbaa !50
  store ptr %i.ay, ptr %1, align 8, !tbaa !51
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.f
  %.0.i = phi ptr [ %i.an, %bb.f ], [ %i.az, %bb.g ] ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %.0.i, i8 -1, i64 %i.ap, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !52 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !53
  %i.bi = add i32 %i.bh, -1
  %i.bj = zext i32 %i.bi to i64
  %.idx = shl nuw nsw i64 %i.bj, 5
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.idx
  %invariant.op = sub i32 -5, %i.d
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.j
  %.0170205 = phi ptr [ %i.bk, %.lr.ph ], [ %i.bt, %bb.j ] ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.0170205, i64 31
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !55
  %i.bn = and i8 %i.bm, 6
  %.not188 = icmp eq i8 %i.bn, 0
  br i1 %.not188, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bo = getelementptr inbounds nuw i8, ptr %.0170205, i64 16
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !56
  %i.bq = lshr i32 %i.bp, 4
  %.reass.reass = add i32 %i.bq, %invariant.op
  %i.br = zext i32 %.reass.reass to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.0.i194, i64 %i.br
  store ptr %.0170205, ptr %i.bs, align 8, !tbaa !57
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bt = getelementptr inbounds i8, ptr %.0170205, i64 -32 ; 2 uses
  %.not = icmp ult ptr %i.bt, %i.bf
  br i1 %.not, label %.lr.ph247, label %bb.h, !llvm.loop !12

.lr.ph247:                                        ; preds = %bb.j
  tail call void @llvm.memset.p0.i64(ptr align 8 %.0.i198, i8 0, i64 %i.i, i1 false)
  %i.bu = load ptr, ptr %i.be, align 8, !tbaa !52 ; 4 uses
  %i.bv = load i32, ptr %i.bg, align 8, !tbaa !53
  %i.bw = add i32 %i.bv, -1
  %i.bx = zext i32 %i.bw to i64
  %.idx254 = shl nuw nsw i64 %i.bx, 5
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.idx254
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.not255 = icmp eq i32 %i.b, 0                  ; 3 uses
  %invariant.op328 = sub i32 -5, %i.d
  %invariant.op329.a = sub i32 -5, %i.d
  %invariant.op330.a = sub i32 -5, %i.d
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph247, %.thread
  %.0164245 = phi i32 [ -1, %.lr.ph247 ], [ %.9, %.thread ] ; 8 uses
  %.1171240 = phi ptr [ %i.by, %.lr.ph247 ], [ %i.ka, %.thread ] ; 14 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.1171240, i64 29
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !59
  %i.cc = and i8 %i.cb, 6
  %.not177 = icmp eq i8 %i.cc, 0
  br i1 %.not177, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cd = getelementptr inbounds nuw i8, ptr %.1171240, i64 8 ; 3 uses
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !56
  %i.cf = lshr i32 %i.ce, 4
  %.reass307.reass = add i32 %i.cf, %invariant.op328 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.1171240, i64 28
  %i.ch = load i8, ptr %i.cg, align 4, !tbaa !60  ; 2 uses
  %i.ci = icmp eq i8 %i.ch, 56
  br i1 %i.ci, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.cj = getelementptr inbounds nuw i8, ptr %.1171240, i64 20
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !61
  %i.cl = add i32 %i.ck, 1
  %i.cm = zext i32 %i.cl to i64
  %i.cn = shl nuw nsw i64 %i.cm, 3
  %i.co = add nuw nsw i64 %i.cn, 8
  %i.cp = lshr i64 %i.co, 4                       ; 2 uses
  %i.cq = trunc nuw i64 %i.cp to i32              ; 6 uses
  %i.cr = icmp sgt i32 %.0164245, -1
  br i1 %i.cr, label %.lr.ph218.preheader, label %.critedge

.lr.ph218.preheader:                              ; preds = %bb.m
  %i.cs = zext nneg i32 %.0164245 to i64
  br label %.lr.ph218

.lr.ph218:                                        ; preds = %.lr.ph218.preheader, %bb.n
  %indvars.iv262 = phi i64 [ %i.cs, %.lr.ph218.preheader ], [ %indvars.iv.next263, %bb.n ] ; 5 uses
  %i.ct = lshr i64 %indvars.iv262, 6
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %.0.i198, i64 %i.ct
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !62
  %i.cw = and i64 %indvars.iv262, 63
  %i.cx = lshr i64 %i.cv, %i.cw
  %i.cy = trunc i64 %i.cx to i1
  br i1 %i.cy, label %.critedge.loopexit.split.loop.exit300, label %bb.n

bb.n:                                             ; preds = %.lr.ph218
  %indvars.iv.next263 = add nsw i64 %indvars.iv262, -1
  %i.cz = icmp sgt i64 %indvars.iv262, 0
  br i1 %i.cz, label %.lr.ph218, label %.critedge, !llvm.loop !13

.critedge.loopexit.split.loop.exit300:            ; preds = %.lr.ph218
  %i.da = trunc nuw nsw i64 %indvars.iv262 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.n, %.critedge.loopexit.split.loop.exit300, %bb.m
  %.0162.lcssa = phi i32 [ %.0164245, %bb.m ], [ %i.da, %.critedge.loopexit.split.loop.exit300 ], [ -1, %bb.n ] ; 5 uses
  %i.db = add nsw i32 %.0162.lcssa, %i.cq
  %i.dc = tail call i32 @llvm.smax.i32(i32 %.0164245, i32 %i.db) ; 3 uses
  %i.dd = add nsw i32 %.0162.lcssa, 1             ; 4 uses
  %i.de = sext i32 %.reass307.reass to i64
  %i.df = getelementptr inbounds [4 x i8], ptr %.0.i, i64 %i.de
  store i32 %i.dd, ptr %i.df, align 4, !tbaa !63
  %i.dg = and i32 %i.dd, 63
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = shl nuw i64 1, %i.dh
  %i.dj = lshr i32 %i.dd, 6
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.0.i198, i64 %i.dk ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !62
  %i.dn = or i64 %i.dm, %i.di
  store i64 %i.dn, ptr %i.dl, align 8, !tbaa !62
  %i.do = add nsw i32 %i.dd, %i.d
  %i.dp = shl i32 %i.do, 4
  %i.dq = add i32 %i.dp, 80
  store i32 %i.dq, ptr %i.cd, align 8, !tbaa !56
  %i.dr = icmp sgt i32 %i.cq, 1
  br i1 %i.dr, label %.lr.ph223.preheader, label %.loopexit

.lr.ph223.preheader:                              ; preds = %.critedge
  %i.ds = and i32 %i.cq, 1
  %lcmp.mod.not.not = icmp eq i32 %i.ds, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph223.prol, label %.lr.ph223.prol.loopexit

.lr.ph223.prol:                                   ; preds = %.lr.ph223.preheader
end_hunk_0
begin_hunk_1_@zend_optimize_temporary_variables:bb.a
  switch i8 %i.fg, label %.critedge190 [
    i8 -94, label %bb.t
    i8 70, label %bb.s
    i8 127, label %bb.s
    i8 124, label %bb.s
    i8 -97, label %bb.s
  ]

bb.s:                                             ; preds = %.lr.ph209, %.lr.ph209, %.lr.ph209, %.lr.ph209
  %i.fh = getelementptr inbounds i8, ptr %i.fe, i64 -32 ; 2 uses
  %.not179 = icmp ult ptr %i.fh, %i.bu
  br i1 %.not179, label %.critedge190, label %.lr.ph209, !llvm.loop !15

bb.t:                                             ; preds = %.lr.ph209
  %i.fi = add nsw i32 %.0164245, 1                ; 4 uses
  %i.fj = and i32 %i.fi, 63
  %i.fk = zext nneg i32 %i.fj to i64
  %i.fl = shl nuw i64 1, %i.fk
  %i.fm = lshr i32 %i.fi, 6
  %i.fn = zext nneg i32 %i.fm to i64
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %.0.i198, i64 %i.fn ; 2 uses
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !62
  %i.fq = or i64 %i.fp, %i.fl
  store i64 %i.fq, ptr %i.fo, align 8, !tbaa !62
  br label %bb.v

.critedge190:                                     ; preds = %bb.s, %.lr.ph209, %bb.r, %bb.p, %bb.q
  br i1 %.not255, label %._crit_edge213, label %.lr.ph212

.lr.ph212:                                        ; preds = %.critedge190, %bb.u
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.u ], [ 0, %.critedge190 ] ; 4 uses
  %i.fr = lshr i64 %indvars.iv, 6
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %.0.i198, i64 %i.fr
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !62
  %i.fu = and i64 %indvars.iv, 63
  %i.fv = lshr i64 %i.ft, %i.fu
  %i.fw = trunc i64 %i.fv to i1
  br i1 %i.fw, label %bb.u, label %._crit_edge213.loopexit.split.loop.exit

bb.u:                                             ; preds = %.lr.ph212
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.g
  br i1 %exitcond.not, label %._crit_edge213, label %.lr.ph212, !llvm.loop !16

._crit_edge213.loopexit.split.loop.exit:          ; preds = %.lr.ph212
  %i.fx = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge213

._crit_edge213:                                   ; preds = %bb.u, %._crit_edge213.loopexit.split.loop.exit, %.critedge190
  %.0166.lcssa = phi i32 [ 0, %.critedge190 ], [ %i.fx, %._crit_edge213.loopexit.split.loop.exit ], [ %i.b, %bb.u ] ; 4 uses
  %i.fy = and i32 %.0166.lcssa, 63
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = shl nuw i64 1, %i.fz
  %i.gb = lshr i32 %.0166.lcssa, 6
  %i.gc = zext nneg i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %.0.i198, i64 %i.gc ; 2 uses
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !62
  %i.gf = or i64 %i.ge, %i.ga
  store i64 %i.gf, ptr %i.gd, align 8, !tbaa !62
  %spec.select = tail call i32 @llvm.smax.i32(i32 %.0166.lcssa, i32 %.0164245)
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge213, %bb.t
  %.1167 = phi i32 [ %i.fi, %bb.t ], [ %.0166.lcssa, %._crit_edge213 ] ; 2 uses
  %.1165 = phi i32 [ %i.fi, %bb.t ], [ %spec.select, %._crit_edge213 ]
  store i32 %.1167, ptr %i.ey, align 4, !tbaa !63
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.o
  %i.gg = phi i32 [ %.1167, %bb.v ], [ %i.ez, %bb.o ]
  %.2 = phi i32 [ %.1165, %bb.v ], [ %.0164245, %bb.o ]
  %i.gh = add nsw i32 %i.gg, %i.d
  %i.gi = shl i32 %i.gh, 4
  %i.gj = add i32 %i.gi, 80
  store i32 %i.gj, ptr %i.cd, align 8, !tbaa !56
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph223.prol.loopexit, %.lr.ph223, %.critedge, %bb.w, %bb.k
  %.3 = phi i32 [ %.0164245, %bb.k ], [ %.2, %bb.w ], [ %i.dc, %.critedge ], [ %i.dc, %.lr.ph223 ], [ %i.dc, %.lr.ph223.prol.loopexit ] ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.1171240, i64 30
  %i.gl = load i8, ptr %i.gk, align 2, !tbaa !65
  %i.gm = and i8 %i.gl, 6
  %.not185 = icmp eq i8 %i.gm, 0
  br i1 %.not185, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %.loopexit
  %i.gn = getelementptr inbounds nuw i8, ptr %.1171240, i64 12 ; 2 uses
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !56
  %i.gp = lshr i32 %i.go, 4
  %.reass309.reass = add i32 %i.gp, %invariant.op329.a
  %i.gq = sext i32 %.reass309.reass to i64
  %i.gr = getelementptr inbounds [4 x i8], ptr %.0.i, i64 %i.gq ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !63 ; 2 uses
  %i.gt = icmp eq i32 %i.gs, -1
  br i1 %i.gt, label %.preheader203, label %bb.z

.preheader203:                                    ; preds = %bb.x
  br i1 %.not255, label %._crit_edge226, label %.lr.ph225

.lr.ph225:                                        ; preds = %.preheader203, %bb.y
  %indvars.iv265 = phi i64 [ %indvars.iv.next266, %bb.y ], [ 0, %.preheader203 ] ; 4 uses
  %i.gu = lshr i64 %indvars.iv265, 6
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %.0.i198, i64 %i.gu
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !62
  %i.gx = and i64 %indvars.iv265, 63
  %i.gy = lshr i64 %i.gw, %i.gx
  %i.gz = trunc i64 %i.gy to i1
  br i1 %i.gz, label %bb.y, label %._crit_edge226.loopexit.split.loop.exit

bb.y:                                             ; preds = %.lr.ph225
  %indvars.iv.next266 = add nuw nsw i64 %indvars.iv265, 1 ; 2 uses
  %exitcond269.not = icmp eq i64 %indvars.iv.next266, %i.g
  br i1 %exitcond269.not, label %._crit_edge226, label %.lr.ph225, !llvm.loop !17

._crit_edge226.loopexit.split.loop.exit:          ; preds = %.lr.ph225
  %i.ha = trunc nuw nsw i64 %indvars.iv265 to i32
  br label %._crit_edge226

._crit_edge226:                                   ; preds = %bb.y, %._crit_edge226.loopexit.split.loop.exit, %.preheader203
  %.2168.lcssa = phi i32 [ 0, %.preheader203 ], [ %i.ha, %._crit_edge226.loopexit.split.loop.exit ], [ %i.b, %bb.y ] ; 5 uses
  %i.hb = and i32 %.2168.lcssa, 63
  %i.hc = zext nneg i32 %i.hb to i64
  %i.hd = shl nuw i64 1, %i.hc
  %i.he = lshr i32 %.2168.lcssa, 6
  %i.hf = zext nneg i32 %i.he to i64
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %.0.i198, i64 %i.hf ; 2 uses
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !62
  %i.hi = or i64 %i.hh, %i.hd
  store i64 %i.hi, ptr %i.hg, align 8, !tbaa !62
  %spec.select191 = tail call i32 @llvm.smax.i32(i32 %.2168.lcssa, i32 %.3)
  store i32 %.2168.lcssa, ptr %i.gr, align 4, !tbaa !63
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge226, %bb.x
  %i.hj = phi i32 [ %.2168.lcssa, %._crit_edge226 ], [ %i.gs, %bb.x ]
  %.5 = phi i32 [ %spec.select191, %._crit_edge226 ], [ %.3, %bb.x ]
  %i.hk = add nsw i32 %i.hj, %i.d
  %i.hl = shl i32 %i.hk, 4
  %i.hm = add i32 %i.hl, 80
  store i32 %i.hm, ptr %i.gn, align 4, !tbaa !56
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.loopexit
  %.6 = phi i32 [ %.5, %bb.z ], [ %.3, %.loopexit ] ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.1171240, i64 31
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !55
  %i.hp = and i8 %i.ho, 6
  %.not186 = icmp eq i8 %i.hp, 0
  br i1 %.not186, label %.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hq = getelementptr inbounds nuw i8, ptr %.1171240, i64 16 ; 2 uses
  %i.hr = load i32, ptr %i.hq, align 8, !tbaa !56
  %i.hs = lshr i32 %i.hr, 4
  %.reass311.reass = add i32 %i.hs, %invariant.op330.a
  %i.ht = sext i32 %.reass311.reass to i64        ; 2 uses
  %i.hu = getelementptr inbounds [4 x i8], ptr %.0.i, i64 %i.ht ; 3 uses
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !63 ; 2 uses
  %i.hw = icmp eq i32 %i.hv, -1
  br i1 %i.hw, label %.preheader, label %bb.ad

.preheader:                                       ; preds = %bb.ab
  br i1 %.not255, label %._crit_edge232, label %.lr.ph231

.lr.ph231:                                        ; preds = %.preheader, %bb.ac
  %indvars.iv270 = phi i64 [ %indvars.iv.next271, %bb.ac ], [ 0, %.preheader ] ; 4 uses
  %i.hx = lshr i64 %indvars.iv270, 6
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %.0.i198, i64 %i.hx
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !62
  %i.ia = and i64 %indvars.iv270, 63
  %i.ib = lshr i64 %i.hz, %i.ia
  %i.ic = trunc i64 %i.ib to i1
  br i1 %i.ic, label %bb.ac, label %._crit_edge232.loopexit.split.loop.exit

bb.ac:                                            ; preds = %.lr.ph231
  %indvars.iv.next271 = add nuw nsw i64 %indvars.iv270, 1 ; 2 uses
  %exitcond274.not = icmp eq i64 %indvars.iv.next271, %i.g
  br i1 %exitcond274.not, label %._crit_edge232, label %.lr.ph231, !llvm.loop !18

._crit_edge232.loopexit.split.loop.exit:          ; preds = %.lr.ph231
  %i.id = trunc nuw nsw i64 %indvars.iv270 to i32
  br label %._crit_edge232

._crit_edge232:                                   ; preds = %bb.ac, %._crit_edge232.loopexit.split.loop.exit, %.preheader
  %.3169.lcssa = phi i32 [ 0, %.preheader ], [ %i.id, %._crit_edge232.loopexit.split.loop.exit ], [ %i.b, %bb.ac ] ; 5 uses
  %i.ie = and i32 %.3169.lcssa, 63
  %i.if = zext nneg i32 %i.ie to i64
  %i.ig = shl nuw i64 1, %i.if
  %i.ih = lshr i32 %.3169.lcssa, 6
  %i.ii = zext nneg i32 %i.ih to i64
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %.0.i198, i64 %i.ii ; 2 uses
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !62
  %i.il = or i64 %i.ik, %i.ig
  store i64 %i.il, ptr %i.ij, align 8, !tbaa !62
  %spec.select192 = tail call i32 @llvm.smax.i32(i32 %.3169.lcssa, i32 %.6)
  store i32 %.3169.lcssa, ptr %i.hu, align 4, !tbaa !63
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge232, %bb.ab
  %i.im = phi i32 [ %.3169.lcssa, %._crit_edge232 ], [ %i.hv, %bb.ab ]
  %.8 = phi i32 [ %spec.select192, %._crit_edge232 ], [ %.6, %bb.ab ] ; 5 uses
  %i.in = add nsw i32 %i.im, %i.d
  %i.io = shl i32 %i.in, 4
  %i.ip = add i32 %i.io, 80
  store i32 %i.ip, ptr %i.hq, align 8, !tbaa !56
  %i.iq = getelementptr inbounds [8 x i8], ptr %.0.i194, i64 %i.ht
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !57
  %i.is = icmp eq ptr %i.ir, %.1171240
  br i1 %i.is, label %bb.ae, label %.thread

bb.ae:                                            ; preds = %bb.ad
  %i.it = getelementptr inbounds nuw i8, ptr %.1171240, i64 28
  %i.iu = load i8, ptr %i.it, align 4, !tbaa !60  ; 2 uses
  %.not187 = icmp eq i8 %i.iu, -94
  br i1 %.not187, label %.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.iv = load i32, ptr %i.hu, align 4, !tbaa !63 ; 3 uses
  %i.iw = and i32 %i.iv, 63
  %i.ix = zext nneg i32 %i.iw to i64
  %i.iy = shl nuw i64 1, %i.ix
  %i.iz = xor i64 %i.iy, -1
  %i.ja = lshr i32 %i.iv, 6
  %i.jb = zext nneg i32 %i.ja to i64
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %.0.i198, i64 %i.jb ; 2 uses
  %i.jd = load i64, ptr %i.jc, align 8, !tbaa !62
  %i.je = and i64 %i.jd, %i.iz
  store i64 %i.je, ptr %i.jc, align 8, !tbaa !62
  %i.jf = icmp eq i8 %i.iu, 54
  br i1 %i.jf, label %bb.ag, label %.thread

bb.ag:                                            ; preds = %bb.af
  %i.jg = getelementptr inbounds nuw i8, ptr %.1171240, i64 20
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !61 ; 2 uses
  %i.ji = icmp ugt i32 %i.jh, 2
  br i1 %i.ji, label %.lr.ph238, label %.thread

.lr.ph238:                                        ; preds = %bb.ag
  %i.jj = zext i32 %i.jh to i64
  %i.jk = shl nuw nsw i64 %i.jj, 3
  %i.jl = add nuw nsw i64 %i.jk, 8
  %i.jm = lshr i64 %i.jl, 4
  %i.jn = trunc nuw i64 %i.jm to i32
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph238, %bb.ah
  %.0236 = phi i32 [ %i.jn, %.lr.ph238 ], [ %i.jo, %bb.ah ]
  %i.jo = add i32 %.0236, -1                      ; 3 uses
  %i.jp = add i32 %i.iv, %i.jo                    ; 2 uses
  %i.jq = and i32 %i.jp, 63
  %i.jr = zext nneg i32 %i.jq to i64
  %i.js = shl nuw i64 1, %i.jr
  %i.jt = xor i64 %i.js, -1
  %i.ju = lshr i32 %i.jp, 6
  %i.jv = zext nneg i32 %i.ju to i64
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %.0.i198, i64 %i.jv ; 2 uses
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !62
  %i.jy = and i64 %i.jx, %i.jt
  store i64 %i.jy, ptr %i.jw, align 8, !tbaa !62
  %i.jz = icmp ugt i32 %i.jo, 1
  br i1 %i.jz, label %bb.ah, label %.thread, !llvm.loop !19

.thread:                                          ; preds = %bb.ah, %bb.ag, %bb.ae, %bb.ad, %bb.af, %bb.aa
  %.9 = phi i32 [ %.6, %bb.aa ], [ %.8, %bb.af ], [ %.8, %bb.ad ], [ %.8, %bb.ae ], [ %.8, %bb.ag ], [ %.8, %bb.ah ] ; 2 uses
  %i.ka = getelementptr inbounds i8, ptr %.1171240, i64 -32 ; 2 uses
  %.not176 = icmp ult ptr %i.ka, %i.bu
  br i1 %.not176, label %._crit_edge248, label %bb.k, !llvm.loop !20

._crit_edge248:                                   ; preds = %.thread
  %i.kb = load ptr, ptr %1, align 8, !tbaa !51    ; 4 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !48
  %i.ke = icmp ule ptr %i.f, %i.kd
  %.not.i202250 = icmp ugt ptr %i.f, %i.kb
  %or.cond.i251 = and i1 %.not.i202250, %i.ke
  br i1 %or.cond.i251, label %zend_arena_release.exit, label %.critedge.i, !prof !66

.critedge.i:                                      ; preds = %._crit_edge248, %.critedge.i
  %.0.i201252 = phi ptr [ %i.kg, %.critedge.i ], [ %i.kb, %._crit_edge248 ] ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.0.i201252, i64 16
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !50 ; 5 uses
  tail call void @_efree(ptr noundef nonnull %.0.i201252) #6
  store ptr %i.kg, ptr %1, align 8, !tbaa !51
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !48
  %i.kj = icmp ule ptr %i.f, %i.ki
  %.not.i202 = icmp ugt ptr %i.f, %i.kg
  %or.cond.i = and i1 %.not.i202, %i.kj
  br i1 %or.cond.i, label %zend_arena_release.exit, label %.critedge.i, !prof !67, !llvm.loop !21

zend_arena_release.exit:                          ; preds = %.critedge.i, %._crit_edge248
  %.0.i201.lcssa = phi ptr [ %i.kb, %._crit_edge248 ], [ %i.kg, %.critedge.i ]
  store ptr %i.f, ptr %.0.i201.lcssa, align 8, !tbaa !47
  %i.kk = add nsw i32 %.9, 1
  %i.kl = load i32, ptr @zend_observer_fcall_op_array_extension, align 4, !tbaa !63
  %i.km = icmp ne i32 %i.kl, -1
  %i.kn = zext i1 %i.km to i32
  %i.ko = add nsw i32 %i.kk, %i.kn
  store i32 %i.ko, ptr %i.a, align 8, !tbaa !38
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: allocsize(0)
declare noalias ptr @_emalloc(i64 noundef) local_unnamed_addr #2

declare void @_efree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind allocsize(0) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = distinct !{!12, !58}
!13 = distinct !{!13, !58}
!14 = distinct !{!14, !58}
!15 = distinct !{!15, !58}
!16 = distinct !{!16, !58}
!17 = distinct !{!17, !58}
!18 = distinct !{!18, !58}
!19 = distinct !{!19, !58}
!20 = distinct !{!20, !58}
!21 = distinct !{!21, !58}
!22 = !{!"any pointer", !8, i64 0}
!23 = !{!"p1 _ZTS12_zend_string", !22, i64 0}
!24 = !{!"p1 _ZTS17_zend_class_entry", !22, i64 0}
!25 = !{!"p1 _ZTS14_zend_function", !22, i64 0}
!26 = !{!"p1 _ZTS14_zend_arg_info", !22, i64 0}
!27 = !{!"p1 _ZTS11_zend_array", !22, i64 0}
!28 = !{!"any p2 pointer", !22, i64 0}
!29 = !{!"p1 _ZTS19_zend_property_info", !22, i64 0}
!30 = !{!"p1 _ZTS8_zend_op", !22, i64 0}
!31 = !{!"p2 _ZTS12_zend_string", !28, i64 0}
!32 = !{!"p1 int", !22, i64 0}
!33 = !{!"p1 _ZTS16_zend_live_range", !22, i64 0}
!34 = !{!"p1 _ZTS23_zend_try_catch_element", !22, i64 0}
!35 = !{!"p1 _ZTS12_zval_struct", !22, i64 0}
!36 = !{!"p2 _ZTS14_zend_op_array", !28, i64 0}
!37 = !{!"_zend_op_array", !8, i64 0, !8, i64 1, !9, i64 4, !23, i64 8, !24, i64 16, !25, i64 24, !9, i64 32, !9, i64 36, !26, i64 40, !27, i64 48, !28, i64 56, !23, i64 64, !9, i64 72, !29, i64 80, !9, i64 88, !9, i64 92, !9, i64 96, !30, i64 104, !27, i64 112, !27, i64 120, !31, i64 128, !32, i64 136, !9, i64 144, !9, i64 148, !33, i64 152, !34, i64 160, !23, i64 168, !9, i64 176, !9, i64 180, !9, i64 184, !9, i64 188, !35, i64 192, !36, i64 200, !8, i64 208}
!38 = !{!37, !9, i64 72}
!39 = !{!37, !9, i64 92}
!40 = !{!"p1 _ZTS11_zend_arena", !22, i64 0}
!41 = !{!"p1 _ZTS12_zend_script", !22, i64 0}
!42 = !{!"long", !8, i64 0}
!43 = !{!"_zend_optimizer_ctx", !40, i64 0, !41, i64 8, !27, i64 16, !42, i64 24, !42, i64 32}
!44 = !{!43, !40, i64 0}
!45 = !{!"p1 omnipotent char", !22, i64 0}
!46 = !{!"_zend_arena", !45, i64 0, !45, i64 8, !40, i64 16}
!47 = !{!46, !45, i64 0}
!48 = !{!46, !45, i64 8}
!49 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!50 = !{!46, !40, i64 16}
!51 = !{!40, !40, i64 0}
!52 = !{!37, !30, i64 104}
!53 = !{!37, !9, i64 96}
!54 = !{!"_zend_op", !22, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !9, i64 20, !9, i64 24, !8, i64 28, !8, i64 29, !8, i64 30, !8, i64 31}
!55 = !{!54, !8, i64 31}
!56 = !{!8, !8, i64 0}
!57 = !{!30, !30, i64 0}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!54, !8, i64 29}
!60 = !{!54, !8, i64 28}
!61 = !{!54, !9, i64 20}
!62 = !{!42, !42, i64 0}
!63 = !{!9, !9, i64 0}
!64 = !{!37, !9, i64 4}
!65 = !{!54, !8, i64 30}
!66 = !{!"branch_weights", i32 1, i32 1999}
!67 = !{!"branch_weights", i32 1999, i32 3}
end_hunk_1
