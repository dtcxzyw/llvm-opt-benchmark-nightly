Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/LzmaDec?download=true
inline.NumInlined: 18
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.CLzmaDec = type { %struct._CLzmaProps, ptr, ptr, ptr, i32, i32, i64, i64, i32, i32, i32, [4 x i32], i32, i32, i32, i32, i32, [20 x i8] }
%struct._CLzmaProps = type { i32, i32, i32, i32 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @LzmaDec_InitDicAndState(ptr nofree noundef writeonly captures(none) initializes((92, 100), (108, 112)) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 1, ptr %i.a, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 0, ptr %i.b, align 4, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 0, ptr %i.c, align 4, !tbaa !19
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.d, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 0, ptr %i.e, align 4, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 1, ptr %i.f, align 4, !tbaa !22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not8 = icmp eq i32 %2, 0
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 1, ptr %i.g, align 4, !tbaa !22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @LzmaDec_Init(ptr nofree noundef writeonly captures(none) initializes((48, 56), (64, 72), (92, 104), (108, 112)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.a, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 1, ptr %i.b, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 0, ptr %i.c, align 4, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 0, ptr %i.d, align 4, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.e, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 0, ptr %i.f, align 4, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 1, ptr %i.g, align 4, !tbaa !22
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @LzmaDec_DecodeToDic(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = load i64, ptr %3, align 8, !tbaa !24
  store i64 0, ptr %3, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !18   ; 3 uses
  %i.e = add i32 %i.d, -1
  %or.cond.i = icmp ult i32 %i.e, 273
  br i1 %or.cond.i, label %bb.b, label %LzmaDec_WriteRem.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !23   ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load i64, ptr %i.j, align 8, !tbaa !26   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.m = load i32, ptr %i.l, align 4, !tbaa !27
  %i.n = sub i64 %1, %i.i
  %i.o = zext nneg i32 %i.d to i64
  %spec.select38.i = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.o) ; 3 uses
  %spec.select.i = trunc nuw nsw i64 %spec.select38.i to i32 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !21
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.c, label %._crit_edge42.i

._crit_edge42.i:                                  ; preds = %bb.b
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !20
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !28   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = load i32, ptr %i.u, align 8, !tbaa !20   ; 3 uses
  %i.w = sub i32 %i.t, %i.v
  %.not36.i = icmp ugt i32 %i.w, %spec.select.i
  br i1 %.not36.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.t, ptr %i.p, align 4, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge42.i
  %i.x = phi i32 [ %.pre.i, %._crit_edge42.i ], [ %i.v, %bb.d ], [ %i.v, %bb.c ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.z = add i32 %i.x, %spec.select.i
  store i32 %i.z, ptr %i.y, align 8, !tbaa !20
  %i.aa = sub nsw i32 %i.d, %spec.select.i
  store i32 %i.aa, ptr %i.c, align 4, !tbaa !18
  %.not3739.i = icmp eq i64 %spec.select38.i, 0
  br i1 %.not3739.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.ab = zext i32 %i.m to i64                    ; 6 uses
  %xtraiter = and i32 %spec.select.i, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i
  %i.ac = add nsw i32 %spec.select.i, -1
  %i.ad = sub i64 %i.i, %i.ab
  %i.ae = icmp ult i64 %i.i, %i.ab
  %i.af = select i1 %i.ae, i64 %i.k, i64 0
  %i.ag = getelementptr i8, ptr %i.g, i64 %i.ad
  %i.ah = getelementptr i8, ptr %i.ag, i64 %i.af
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !29
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.i
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !29
  %i.ak = add i64 %i.i, 1                         ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i
  %.lcssa349.unr = phi i64 [ poison, %.lr.ph.i ], [ %i.ak, %.prol.loopexit.unr-lcssa ]
  %.141.i.unr = phi i32 [ %spec.select.i, %.lr.ph.i ], [ %i.ac, %.prol.loopexit.unr-lcssa ]
  %.03340.i.unr = phi i64 [ %i.i, %.lr.ph.i ], [ %i.ak, %.prol.loopexit.unr-lcssa ]
  %i.al = icmp eq i64 %spec.select38.i, 1
  br i1 %i.al, label %._crit_edge.i, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %.141.i = phi i32 [ %i.au, %.lr.ph.i.new ], [ %.141.i.unr, %.prol.loopexit ]
  %.03340.i = phi i64 [ %i.bc, %.lr.ph.i.new ], [ %.03340.i.unr, %.prol.loopexit ] ; 5 uses
  %i.am = sub i64 %.03340.i, %i.ab
  %i.an = icmp ult i64 %.03340.i, %i.ab
  %i.ao = select i1 %i.an, i64 %i.k, i64 0
  %i.ap = getelementptr i8, ptr %i.g, i64 %i.am
  %i.aq = getelementptr i8, ptr %i.ap, i64 %i.ao
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !29
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 %.03340.i
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !29
  %i.at = add i64 %.03340.i, 1                    ; 3 uses
  %i.au = add nsw i32 %.141.i, -2                 ; 2 uses
  %i.av = sub i64 %i.at, %i.ab
  %i.aw = icmp ult i64 %i.at, %i.ab
  %i.ax = select i1 %i.aw, i64 %i.k, i64 0
  %i.ay = getelementptr i8, ptr %i.g, i64 %i.av
  %i.az = getelementptr i8, ptr %i.ay, i64 %i.ax
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !29
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.at
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !29
  %i.bc = add i64 %.03340.i, 2                    ; 2 uses
  %.not37.i.1 = icmp eq i32 %i.au, 0
  br i1 %.not37.i.1, label %._crit_edge.i, label %.lr.ph.i.new

._crit_edge.i:                                    ; preds = %.prol.loopexit, %.lr.ph.i.new, %bb.e
  %.033.lcssa.i = phi i64 [ %i.i, %bb.e ], [ %.lcssa349.unr, %.prol.loopexit ], [ %i.bc, %.lr.ph.i.new ]
  store i64 %.033.lcssa.i, ptr %i.h, align 8, !tbaa !23
  br label %LzmaDec_WriteRem.exit

LzmaDec_WriteRem.exit:                            ; preds = %bb.a, %._crit_edge.i
  store i32 0, ptr %5, align 4, !tbaa !27
  %i.bd = load i32, ptr %i.c, align 4, !tbaa !18  ; 2 uses
  %.not223 = icmp eq i32 %i.bd, 274
  br i1 %.not223, label %._crit_edge227, label %.lr.ph226

.lr.ph226:                                        ; preds = %LzmaDec_WriteRem.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 11 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 13 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 113
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 114
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 115
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bl = icmp eq i32 %4, 0                       ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.bs = ptrtoint ptr %i.bg to i64
  %i.bt = add i64 %i.a, 112
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph226, %bb.aj
  %i.bv = phi i32 [ %i.bd, %.lr.ph226 ], [ %i.gs, %bb.aj ]
  %.0127225 = phi i64 [ %i.b, %.lr.ph226 ], [ %.6, %bb.aj ] ; 8 uses
  %.0139224 = phi ptr [ %2, %.lr.ph226 ], [ %.6145, %bb.aj ] ; 9 uses
  %i.bw = load i32, ptr %i.be, align 8, !tbaa !17
  %.not151 = icmp eq i32 %i.bw, 0
  br i1 %.not151, label %bb.n, label %.preheader189

.preheader189:                                    ; preds = %bb.f
  %.not152209 = icmp eq i64 %.0127225, 0
  %.pre254 = load i32, ptr %i.bf, align 4, !tbaa !19 ; 11 uses
  br i1 %.not152209, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader189
  %i.bx = icmp ult i32 %.pre254, 5
  br i1 %i.bx, label %bb.g, label %.critedge.thread

bb.g:                                             ; preds = %.lr.ph
  %i.by = getelementptr inbounds nuw i8, ptr %.0139224, i64 1 ; 3 uses
  %i.bz = load i8, ptr %.0139224, align 1, !tbaa !29
  %i.ca = add nuw nsw i32 %.pre254, 1             ; 3 uses
  store i32 %i.ca, ptr %i.bf, align 4, !tbaa !19
  %i.cb = zext nneg i32 %.pre254 to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.cb
  store i8 %i.bz, ptr %i.cc, align 1, !tbaa !29
  %i.cd = load i64, ptr %3, align 8, !tbaa !24
  %i.ce = add i64 %i.cd, 1
  store i64 %i.ce, ptr %3, align 8, !tbaa !24
  %i.cf = add i64 %.0127225, -1                   ; 2 uses
  %.not152 = icmp eq i64 %i.cf, 0
  br i1 %.not152, label %.critedge, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.g
  %.not350 = icmp eq i32 %.pre254, 4
  br i1 %.not350, label %.critedge.thread, label %bb.h

bb.h:                                             ; preds = %.lr.ph.1
  %i.cg = getelementptr inbounds nuw i8, ptr %.0139224, i64 2 ; 3 uses
  %i.ch = load i8, ptr %i.by, align 1, !tbaa !29
  %i.ci = add nuw nsw i32 %.pre254, 2             ; 3 uses
  store i32 %i.ci, ptr %i.bf, align 4, !tbaa !19
  %i.cj = zext nneg i32 %i.ca to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.cj
  store i8 %i.ch, ptr %i.ck, align 1, !tbaa !29
  %i.cl = load i64, ptr %3, align 8, !tbaa !24
  %i.cm = add i64 %i.cl, 1
  store i64 %i.cm, ptr %3, align 8, !tbaa !24
  %i.cn = add i64 %.0127225, -2                   ; 2 uses
  %.not152.1 = icmp eq i64 %i.cn, 0
  br i1 %.not152.1, label %.critedge, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %bb.h
  %i.co = icmp ult i32 %.pre254, 3
  br i1 %i.co, label %bb.i, label %.critedge.thread

bb.i:                                             ; preds = %.lr.ph.2
  %i.cp = getelementptr inbounds nuw i8, ptr %.0139224, i64 3 ; 3 uses
  %i.cq = load i8, ptr %i.cg, align 1, !tbaa !29
  %i.cr = add nuw nsw i32 %.pre254, 3             ; 3 uses
  store i32 %i.cr, ptr %i.bf, align 4, !tbaa !19
  %i.cs = zext nneg i32 %i.ci to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.cs
  store i8 %i.cq, ptr %i.ct, align 1, !tbaa !29
  %i.cu = load i64, ptr %3, align 8, !tbaa !24
  %i.cv = add i64 %i.cu, 1
  store i64 %i.cv, ptr %3, align 8, !tbaa !24
  %i.cw = add i64 %.0127225, -3                   ; 2 uses
  %.not152.2 = icmp eq i64 %i.cw, 0
  br i1 %.not152.2, label %.critedge, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %bb.i
  %.not351 = icmp eq i32 %.pre254, 2
  br i1 %.not351, label %.critedge.thread, label %bb.j

bb.j:                                             ; preds = %.lr.ph.3
  %i.cx = getelementptr inbounds nuw i8, ptr %.0139224, i64 4 ; 3 uses
  %i.cy = load i8, ptr %i.cp, align 1, !tbaa !29
  %i.cz = or disjoint i32 %.pre254, 4             ; 3 uses
  store i32 %i.cz, ptr %i.bf, align 4, !tbaa !19
  %i.da = zext nneg i32 %i.cr to i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.da
  store i8 %i.cy, ptr %i.db, align 1, !tbaa !29
  %i.dc = load i64, ptr %3, align 8, !tbaa !24
  %i.dd = add i64 %i.dc, 1
  store i64 %i.dd, ptr %3, align 8, !tbaa !24
  %i.de = add i64 %.0127225, -4                   ; 2 uses
  %.not152.3 = icmp eq i64 %i.de, 0
  br i1 %.not152.3, label %.critedge, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %bb.j
  %i.df = icmp eq i32 %.pre254, 0
  br i1 %i.df, label %bb.k, label %.critedge.thread

bb.k:                                             ; preds = %.lr.ph.4
  %i.dg = getelementptr inbounds nuw i8, ptr %.0139224, i64 5 ; 2 uses
  %i.dh = load i8, ptr %i.cx, align 1, !tbaa !29
  store i32 5, ptr %i.bf, align 4, !tbaa !19
  %i.di = zext nneg i32 %i.cz to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.di
  store i8 %i.dh, ptr %i.dj, align 1, !tbaa !29
  %i.dk = load i64, ptr %3, align 8, !tbaa !24
  %i.dl = add i64 %i.dk, 1
  store i64 %i.dl, ptr %3, align 8, !tbaa !24
  %i.dm = add i64 %.0127225, -5                   ; 2 uses
  %.not152.4 = icmp eq i64 %i.dm, 0
  br i1 %.not152.4, label %.critedge, label %.critedge.thread

.critedge:                                        ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %.preheader189
  %i.dn = phi i32 [ %.pre254, %.preheader189 ], [ %i.ca, %bb.g ], [ %i.ci, %bb.h ], [ %i.cr, %bb.i ], [ %i.cz, %bb.j ], [ 5, %bb.k ]
  %.1140.lcssa = phi ptr [ %.0139224, %.preheader189 ], [ %i.by, %bb.g ], [ %i.cg, %bb.h ], [ %i.cp, %bb.i ], [ %i.cx, %bb.j ], [ %i.dg, %bb.k ]
  %i.do = icmp ult i32 %i.dn, 5
  br i1 %i.do, label %bb.l, label %.critedge.thread

bb.l:                                             ; preds = %.critedge
  store i32 3, ptr %5, align 4, !tbaa !27
  br label %.thread182

.critedge.thread:                                 ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.lr.ph.4, %bb.k, %.critedge
  %.1128.lcssa266 = phi i64 [ 0, %.critedge ], [ %.0127225, %.lr.ph ], [ %i.cf, %.lr.ph.1 ], [ %i.cn, %.lr.ph.2 ], [ %i.cw, %.lr.ph.3 ], [ %i.de, %.lr.ph.4 ], [ %i.dm, %bb.k ]
  %.1140.lcssa265 = phi ptr [ %.1140.lcssa, %.critedge ], [ %.0139224, %.lr.ph ], [ %i.by, %.lr.ph.1 ], [ %i.cg, %.lr.ph.2 ], [ %i.cp, %.lr.ph.3 ], [ %i.cx, %.lr.ph.4 ], [ %i.dg, %bb.k ]
  %i.dp = load i8, ptr %i.bg, align 8, !tbaa !29
  %.not153 = icmp eq i8 %i.dp, 0
  br i1 %.not153, label %bb.m, label %.thread182

bb.m:                                             ; preds = %.critedge.thread
  %9 = load i8, ptr %i.bh, align 1, !tbaa !29
  %10 = zext i8 %9 to i32
  %11 = shl nuw i32 %10, 24
  %12 = load i8, ptr %6, align 2, !tbaa !29
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 16
  %15 = or disjoint i32 %14, %11
  %16 = load i8, ptr %7, align 1, !tbaa !29
  %17 = zext i8 %16 to i32
  %18 = shl nuw nsw i32 %17, 8
  %19 = or disjoint i32 %15, %18
  %20 = load i8, ptr %8, align 4, !tbaa !29
  %21 = zext i8 %20 to i32
  %22 = or disjoint i32 %19, %21
  store i32 %22, ptr %i.bi, align 4, !tbaa !30
  store i32 -1, ptr %i.bj, align 8, !tbaa !31
  store i32 0, ptr %i.be, align 8, !tbaa !17
  store i32 0, ptr %i.bf, align 4, !tbaa !19
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.f
  %.2141 = phi ptr [ %.1140.lcssa265, %bb.m ], [ %.0139224, %bb.f ] ; 13 uses
  %.2129 = phi i64 [ %.1128.lcssa266, %bb.m ], [ %.0127225, %bb.f ]
  %.2129.fr = freeze i64 %.2129                   ; 10 uses
  %.2141309 = ptrtoaddr ptr %.2141 to i64
  %i.dq = load i64, ptr %i.bk, align 8, !tbaa !23
  %.not154 = icmp uge i64 %i.dq, %1               ; 5 uses
  br i1 %.not154, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.dr = icmp eq i32 %i.bv, 0
  br i1 %i.dr, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.ds = load i32, ptr %i.bi, align 4, !tbaa !30
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 4, ptr %5, align 4, !tbaa !27
  br label %.thread182

bb.r:                                             ; preds = %bb.p
  br i1 %i.bl, label %.loopexit, label %bb.t

.thread:                                          ; preds = %bb.o
  br i1 %i.bl, label %.loopexit, label %bb.s

.loopexit:                                        ; preds = %bb.r, %.thread
  store i32 2, ptr %5, align 4, !tbaa !27
  br label %.thread182

bb.s:                                             ; preds = %.thread
  store i32 2, ptr %5, align 4, !tbaa !27
  br label %.thread182

bb.t:                                             ; preds = %bb.r, %bb.n
  %i.du = load i32, ptr %i.bm, align 4, !tbaa !22
  %.not156 = icmp eq i32 %i.du, 0
  br i1 %.not156, label %bb.u, label %iter.check

iter.check:                                       ; preds = %bb.t
  %i.dv = load i32, ptr %0, align 8, !tbaa !32
  %i.dw = load i32, ptr %i.bn, align 4, !tbaa !33
  %i.dx = add i32 %i.dw, %i.dv
  %i.dy = shl i32 768, %i.dx
  %i.dz = add nuw i32 %i.dy, 1846
  %i.ea = load ptr, ptr %i.bo, align 8, !tbaa !34 ; 4 uses
  %wide.trip.count.i = zext i32 %i.dz to i64      ; 3 uses
  %n.vec314 = add nsw i64 %wide.trip.count.i, -6  ; 2 uses
  br label %vector.body315

vector.body315:                                   ; preds = %iter.check, %vector.body315
  %index316 = phi i64 [ 0, %iter.check ], [ %index.next317, %vector.body315 ] ; 2 uses
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %i.ea, i64 %index316 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store <8 x i16> splat (i16 1024), ptr %i.eb, align 2, !tbaa !36
  store <8 x i16> splat (i16 1024), ptr %i.ec, align 2, !tbaa !36
  %index.next317 = add nuw i64 %index316, 16      ; 2 uses
  %i.ed = icmp eq i64 %index.next317, %n.vec314
  br i1 %i.ed, label %vec.epilog.vector.body, label %vector.body315, !llvm.loop !47

vec.epilog.vector.body:                           ; preds = %vector.body315
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %i.ea, i64 %n.vec314
  store <4 x i16> splat (i16 1024), ptr %i.ee, align 2, !tbaa !36
  %i.ef = getelementptr [2 x i8], ptr %i.ea, i64 %wide.trip.count.i
  %i.eg = getelementptr i8, ptr %i.ef, i64 -4
  store i16 1024, ptr %i.eg, align 2, !tbaa !36
  %i.eh = getelementptr [2 x i8], ptr %i.ea, i64 %wide.trip.count.i
  %i.ei = getelementptr i8, ptr %i.eh, i64 -2
  store i16 1024, ptr %i.ei, align 2, !tbaa !36
  store i32 1, ptr %i.bp, align 8, !tbaa !27
  store <4 x i32> <i32 0, i32 1, i32 1, i32 1>, ptr %i.bq, align 8, !tbaa !27
  store i32 0, ptr %i.bm, align 4, !tbaa !22
  br label %bb.u

bb.u:                                             ; preds = %vec.epilog.vector.body, %bb.t
  %i.ej = load i32, ptr %i.bf, align 4, !tbaa !19 ; 4 uses
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %bb.v, label %.preheader

.preheader:                                       ; preds = %bb.u
  %i.el = icmp ult i32 %i.ej, 20                  ; 2 uses
  %i.em = icmp ne i64 %.2129.fr, 0
  %i.en = and i1 %i.el, %i.em
  br i1 %i.en, label %.lr.ph218.preheader, label %._crit_edge

.lr.ph218.preheader:                              ; preds = %.preheader
  %i.eo = zext nneg i32 %i.ej to i64              ; 9 uses
  %i.ep = add i64 %.2129.fr, -1
  %i.eq = sub nsw i64 19, %i.eo
  %i.er = tail call i64 @llvm.umin.i64(i64 %i.ep, i64 %i.eq)
  %i.es = add i64 %i.er, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.es, 8
  br i1 %min.iters.check, label %.lr.ph218.preheader325, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph218.preheader
  %i.et = add i64 %i.bt, %i.eo
  %i.eu = sub i64 %.2141309, %i.et
  %diff.check = icmp ugt i64 %i.eu, -8
  br i1 %diff.check, label %.lr.ph218.preheader325, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.es, -8                      ; 5 uses
  %i.ev = add i64 %n.vec, %i.eo                   ; 2 uses
  %i.ew = add nuw nsw i64 %i.eo, 3
  %i.ex = getelementptr inbounds nuw i8, ptr %.2141, i64 4
  %wide.load = load <4 x i8>, ptr %.2141, align 1, !tbaa !29
  %wide.load310 = load <4 x i8>, ptr %i.ex, align 1, !tbaa !29
  %i.ey = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.eo ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  store <4 x i8> %wide.load, ptr %i.ey, align 1, !tbaa !29
  store <4 x i8> %wide.load310, ptr %i.ez, align 1, !tbaa !29
  %i.fa = icmp eq i64 %n.vec, 8
  br i1 %i.fa, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.fb = add nuw nsw i64 %i.eo, 11
  %i.fc = getelementptr inbounds nuw i8, ptr %.2141, i64 8
  %i.fd = getelementptr inbounds nuw i8, ptr %.2141, i64 12
  %wide.load.1 = load <4 x i8>, ptr %i.fc, align 1, !tbaa !29
  %wide.load310.1 = load <4 x i8>, ptr %i.fd, align 1, !tbaa !29
  %i.fe = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.eo ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  store <4 x i8> %wide.load.1, ptr %i.fe, align 1, !tbaa !29
  store <4 x i8> %wide.load310.1, ptr %i.ff, align 1, !tbaa !29
  br label %middle.block

middle.block:                                     ; preds = %vector.body.1, %vector.ph
  %.lcssa330 = phi i64 [ %i.ew, %vector.ph ], [ %i.fb, %vector.body.1 ]
  %i.fg = icmp samesign ult i64 %.lcssa330, 15
  %cmp.n = icmp eq i64 %i.es, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.lr.ph218.preheader325

.lr.ph218.preheader325:                           ; preds = %vector.memcheck, %.lr.ph218.preheader, %middle.block
  %indvars.iv249.ph = phi i64 [ %i.eo, %vector.memcheck ], [ %i.eo, %.lr.ph218.preheader ], [ %i.ev, %middle.block ]
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph218.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph218

bb.v:                                             ; preds = %bb.u
  %i.fh = icmp ult i64 %.2129.fr, 20
  %or.cond = or i1 %i.fh, %.not154
  br i1 %or.cond, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.fi = tail call fastcc i32 @LzmaDec_TryDummy(ptr noundef nonnull %0, ptr noundef %.2141, i64 noundef %.2129.fr) ; 2 uses
  %i.fj = icmp eq i32 %i.fi, 0
  br i1 %i.fj, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bg, ptr align 1 %.2141, i64 %.2129.fr, i1 false)
  %i.fk = trunc i64 %.2129.fr to i32
  store i32 %i.fk, ptr %i.bf, align 4, !tbaa !19
  %i.fl = load i64, ptr %3, align 8, !tbaa !24
  %i.fm = add i64 %i.fl, %.2129.fr
  store i64 %i.fm, ptr %3, align 8, !tbaa !24
  store i32 3, ptr %5, align 4, !tbaa !27
  br label %.thread182

bb.y:                                             ; preds = %bb.w
  %i.fn = icmp ne i32 %i.fi, 2
  %or.cond7 = and i1 %.not154, %i.fn
  br i1 %or.cond7, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  store i32 2, ptr %5, align 4, !tbaa !27
  br label %.thread182

bb.aa:                                            ; preds = %bb.v
  %i.fo = getelementptr inbounds nuw i8, ptr %.2141, i64 %.2129.fr
  %i.fp = getelementptr inbounds i8, ptr %i.fo, i64 -20
  br label %bb.ab

bb.ab:                                            ; preds = %bb.y, %bb.aa
  %.1 = phi ptr [ %i.fp, %bb.aa ], [ %.2141, %bb.y ]
  store ptr %.2141, ptr %i.br, align 8, !tbaa !39
  %i.fq = tail call fastcc i32 @LzmaDec_DecodeReal2(ptr noundef nonnull %0, i64 noundef %1, ptr noundef %.1)
  %.not159 = icmp eq i32 %i.fq, 0
  br i1 %.not159, label %bb.ac, label %.thread182

bb.ac:                                            ; preds = %bb.ab
  %i.fr = load ptr, ptr %i.br, align 8, !tbaa !39
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = ptrtoint ptr %.2141 to i64
  %i.fu = sub i64 %i.fs, %i.ft                    ; 2 uses
  %i.fv = load i64, ptr %3, align 8, !tbaa !24
  %i.fw = add i64 %i.fu, %i.fv
  store i64 %i.fw, ptr %3, align 8, !tbaa !24
  br label %bb.aj

.lr.ph218:                                        ; preds = %.lr.ph218.preheader325, %.lr.ph218
  %indvars.iv249 = phi i64 [ %indvars.iv.next250, %.lr.ph218 ], [ %indvars.iv249.ph, %.lr.ph218.preheader325 ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph218 ], [ %indvars.iv.ph, %.lr.ph218.preheader325 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.2141, i64 %indvars.iv
end_hunk_0
begin_hunk_1_@LzmaDec_Allocate:bb.a
  br i1 %i.e, label %LzmaProps_Decode.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = urem i8 %i.d, 9
  %i.g = zext nneg i8 %i.f to i32                 ; 2 uses
  %i.h = udiv i8 %i.d, 9
  %i.i = udiv i8 %i.d, 45
  %.zext.i = zext nneg i8 %i.i to i32
  %i.j = urem i8 %i.h, 5
  %.zext19.i = zext nneg i8 %i.j to i32           ; 2 uses
  %i.k = add nuw nsw i32 %.zext19.i, %i.g
  %i.l = shl nuw nsw i32 768, %i.k
  %i.m = add nuw nsw i32 %i.l, 1846               ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !34   ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.r = load i32, ptr %i.q, align 8, !tbaa !45
  %.not.i = icmp eq i32 %i.m, %i.r
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !43
  tail call void %i.t(ptr noundef %3, ptr noundef %i.o) #7, !inline_history !1
  store ptr null, ptr %i.n, align 8, !tbaa !34
  %i.u = load ptr, ptr %3, align 8, !tbaa !46
  %i.v = shl nuw nsw i32 %i.m, 1
  %i.w = zext nneg i32 %i.v to i64
  %i.x = tail call ptr %i.u(ptr noundef nonnull %3, i64 noundef %i.w) #7, !inline_history !2 ; 2 uses
  store ptr %i.x, ptr %i.n, align 8, !tbaa !34
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %i.m, ptr %i.y, align 8, !tbaa !45
  %i.z = icmp eq ptr %i.x, null
  br i1 %i.z, label %LzmaProps_Decode.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.aa = zext i32 %spec.store.select.i to i64    ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !25 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !26
  %.not30 = icmp eq i64 %i.af, %i.aa
  br i1 %.not30, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !43
  tail call void %i.ah(ptr noundef %3, ptr noundef %i.ac) #7, !inline_history !0
  store ptr null, ptr %i.ab, align 8, !tbaa !25
  %i.ai = load ptr, ptr %3, align 8, !tbaa !46
  %i.aj = tail call ptr %i.ai(ptr noundef nonnull %3, i64 noundef %i.aa) #7 ; 2 uses
  store ptr %i.aj, ptr %i.ab, align 8, !tbaa !25
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !43
  %i.am = load ptr, ptr %i.n, align 8, !tbaa !34
  tail call void %i.al(ptr noundef nonnull %3, ptr noundef %i.am) #7, !inline_history !44
  store ptr null, ptr %i.n, align 8, !tbaa !34
  br label %LzmaProps_Decode.exit.thread

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.aa, ptr %i.an, align 8, !tbaa !26
  store i32 %i.g, ptr %0, align 8, !tbaa !27
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.zext19.i, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !27
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.zext.i, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !27
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %spec.store.select.i, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !27
  br label %LzmaProps_Decode.exit.thread

LzmaProps_Decode.exit.thread:                     ; preds = %bb.e, %bb.b, %bb.a, %bb.j, %bb.i
  %.2 = phi i32 [ 2, %bb.i ], [ 0, %bb.j ], [ 4, %bb.b ], [ 4, %bb.a ], [ 2, %bb.e ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define range(i32 0, 7) i32 @LzmaDecode(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef captures(none) %7, ptr noundef %8) local_unnamed_addr #4 {
bb.a:
  %9 = alloca %struct.CLzmaDec, align 8           ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #7
  %i.a = load i64, ptr %3, align 8, !tbaa !24     ; 2 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !24     ; 2 uses
  store i64 0, ptr %1, align 8, !tbaa !24
  store i64 0, ptr %3, align 8, !tbaa !24
  %i.c = icmp ult i64 %i.a, 5
  br i1 %i.c, label %LzmaDec_AllocateProbs.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.f = icmp ult i32 %5, 5
  br i1 %i.f, label %LzmaDec_AllocateProbs.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.h = load i32, ptr %i.g, align 1
  %spec.store.select.i.i = tail call i32 @llvm.umax.i32(i32 %i.h, i32 4096)
  %i.i = load i8, ptr %4, align 1, !tbaa !29      ; 4 uses
  %i.j = icmp ugt i8 %i.i, -32
  br i1 %i.j, label %LzmaDec_AllocateProbs.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = urem i8 %i.i, 9
  %i.l = zext nneg i8 %i.k to i32                 ; 2 uses
  %i.m = udiv i8 %i.i, 9
  %i.n = urem i8 %i.m, 5
  %.zext19.i.i = zext nneg i8 %i.n to i32         ; 2 uses
  %i.o = add nuw nsw i32 %.zext19.i.i, %i.l
  %i.p = shl nuw nsw i32 768, %i.o
  %i.q = add nuw nsw i32 %i.p, 1846               ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !43
  tail call void %i.s(ptr noundef %8, ptr noundef null) #7, !inline_history !59
  %i.t = load ptr, ptr %8, align 8, !tbaa !46
  %i.u = shl nuw nsw i32 %i.q, 1
  %i.v = zext nneg i32 %i.u to i64
  %i.w = tail call ptr %i.t(ptr noundef nonnull %8, i64 noundef %i.v) #7, !inline_history !60 ; 2 uses
  store ptr %i.w, ptr %i.e, align 8, !tbaa !34
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 104
  store i32 %i.q, ptr %i.x, align 8, !tbaa !45
  %i.y = icmp eq ptr %i.w, null
  br i1 %i.y, label %LzmaDec_AllocateProbs.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = udiv i8 %i.i, 45
  %.zext.i.i = zext nneg i8 %i.z to i32
  store i32 %i.l, ptr %9, align 8, !tbaa !27
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 %.zext19.i.i, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !27
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.zext.i.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !27
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 %spec.store.select.i.i, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !27
  store ptr %0, ptr %i.d, align 8, !tbaa !25
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 56
  store i64 %i.b, ptr %i.aa, align 8, !tbaa !26
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  store i64 0, ptr %i.ab, align 8, !tbaa !23
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 96
  store i32 1, ptr %i.ac, align 8, !tbaa !17
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 92
  store i32 0, ptr %i.ad, align 4, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 108
  store i32 0, ptr %i.ae, align 4, !tbaa !19
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 64
  store i32 0, ptr %i.af, align 8, !tbaa !20
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 68
  store i32 0, ptr %i.ag, align 4, !tbaa !21
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 100
  store i32 1, ptr %i.ah, align 4, !tbaa !22
  store i64 %i.a, ptr %3, align 8, !tbaa !24
  %i.ai = call i32 @LzmaDec_DecodeToDic(ptr noundef nonnull %9, i64 noundef %i.b, ptr noundef %2, ptr noundef nonnull %3, i32 noundef %6, ptr noundef %7)
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ak = load i32, ptr %7, align 4, !tbaa !27
  %i.al = icmp eq i32 %i.ak, 3
  %spec.select = select i1 %i.al, i32 6, i32 0
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i32 [ 1, %bb.e ], [ %spec.select, %bb.f ]
  %i.am = load i64, ptr %i.ab, align 8, !tbaa !23
  store i64 %i.am, ptr %1, align 8, !tbaa !24
  %i.an = load ptr, ptr %i.r, align 8, !tbaa !43
  %i.ao = load ptr, ptr %i.e, align 8, !tbaa !34
  call void %i.an(ptr noundef nonnull %8, ptr noundef %i.ao) #7, !inline_history !44
  br label %LzmaDec_AllocateProbs.exit.thread

LzmaDec_AllocateProbs.exit.thread:                ; preds = %bb.d, %bb.b, %bb.c, %bb.a, %bb.g
  %.024 = phi i32 [ %.0, %bb.g ], [ 6, %bb.a ], [ 2, %bb.d ], [ 4, %bb.b ], [ 4, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #7
  ret i32 %.024
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{null}
!1 = distinct !{null, ptr @LzmaDec_FreeProbs}
!2 = distinct !{null}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"_CLzmaProps", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 short", !12, i64 0}
!14 = !{!"p1 omnipotent char", !12, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"", !11, i64 0, !13, i64 16, !14, i64 24, !14, i64 32, !8, i64 40, !8, i64 44, !15, i64 48, !15, i64 56, !8, i64 64, !8, i64 68, !8, i64 72, !7, i64 76, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !7, i64 112}
!17 = !{!16, !8, i64 96}
!18 = !{!16, !8, i64 92}
!19 = !{!16, !8, i64 108}
!20 = !{!16, !8, i64 64}
!21 = !{!16, !8, i64 68}
!22 = !{!16, !8, i64 100}
!23 = !{!16, !15, i64 48}
!24 = !{!15, !15, i64 0}
!25 = !{!16, !14, i64 24}
!26 = !{!16, !15, i64 56}
!27 = !{!8, !8, i64 0}
!28 = !{!16, !8, i64 12}
!29 = !{!7, !7, i64 0}
!30 = !{!16, !8, i64 44}
!31 = !{!16, !8, i64 40}
!32 = !{!16, !8, i64 0}
!33 = !{!16, !8, i64 4}
!34 = !{!16, !13, i64 16}
!35 = !{!"short", !7, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!"llvm.loop.isvectorized", i32 1}
!38 = !{!"llvm.loop.unroll.runtime.disable"}
!39 = !{!16, !14, i64 32}
!40 = !{!16, !8, i64 72}
!41 = !{!16, !8, i64 8}
!42 = !{!"", !12, i64 0, !12, i64 8}
!43 = !{!42, !12, i64 8}
!44 = !{ptr @LzmaDec_FreeProbs}
!45 = !{!16, !8, i64 104}
!46 = !{!42, !12, i64 0}
!47 = distinct !{!47, !37, !38}
!48 = distinct !{!48, !37}
!49 = distinct !{!49, !37, !38}
!50 = distinct !{!50, !37, !38}
!51 = distinct !{!51, !54}
!52 = distinct !{!52, !37}
!53 = !{!"branch_weights", i32 8, i32 24}
!54 = !{!"llvm.loop.unroll.disable"}
!55 = !{!11, !8, i64 12}
!56 = !{!11, !8, i64 0}
!57 = !{!11, !8, i64 8}
!58 = !{!11, !8, i64 4}
!59 = distinct !{ptr @LzmaDec_AllocateProbs, null, ptr @LzmaDec_FreeProbs}
!60 = distinct !{ptr @LzmaDec_AllocateProbs, null}
end_hunk_1
