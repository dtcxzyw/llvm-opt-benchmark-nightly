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
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 14 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 113
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 114
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 115
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bo = icmp eq i32 %4, 0                       ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.bv = ptrtoint ptr %i.bg to i64
  %i.bw = add i64 %i.a, 112
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph226, %bb.aj
  %i.bx = phi i32 [ %i.bd, %.lr.ph226 ], [ %i.hb, %bb.aj ]
  %.0127225 = phi i64 [ %i.b, %.lr.ph226 ], [ %.6, %bb.aj ] ; 8 uses
  %.0139224 = phi ptr [ %2, %.lr.ph226 ], [ %.6145, %bb.aj ] ; 9 uses
  %i.by = load i32, ptr %i.be, align 8, !tbaa !17
  %.not151 = icmp eq i32 %i.by, 0
  br i1 %.not151, label %bb.n, label %.preheader189

.preheader189:                                    ; preds = %bb.f
  %.not152209 = icmp eq i64 %.0127225, 0
  %.pre254 = load i32, ptr %i.bf, align 4, !tbaa !19 ; 11 uses
  br i1 %.not152209, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader189
  %i.bz = icmp ult i32 %.pre254, 5
  br i1 %i.bz, label %bb.g, label %.critedge.thread

bb.g:                                             ; preds = %.lr.ph
  %i.ca = getelementptr inbounds nuw i8, ptr %.0139224, i64 1 ; 3 uses
  %i.cb = load i8, ptr %.0139224, align 1, !tbaa !29
  %i.cc = add nuw nsw i32 %.pre254, 1             ; 3 uses
  store i32 %i.cc, ptr %i.bf, align 4, !tbaa !19
  %i.cd = zext nneg i32 %.pre254 to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.cd
  store i8 %i.cb, ptr %i.ce, align 1, !tbaa !29
  %i.cf = load i64, ptr %3, align 8, !tbaa !24
  %i.cg = add i64 %i.cf, 1
  store i64 %i.cg, ptr %3, align 8, !tbaa !24
  %i.ch = add i64 %.0127225, -1                   ; 2 uses
  %.not152 = icmp eq i64 %i.ch, 0
  br i1 %.not152, label %.critedge, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.g
  %.not350 = icmp eq i32 %.pre254, 4
  br i1 %.not350, label %.critedge.thread, label %bb.h

bb.h:                                             ; preds = %.lr.ph.1
  %i.ci = getelementptr inbounds nuw i8, ptr %.0139224, i64 2 ; 3 uses
  %i.cj = load i8, ptr %i.ca, align 1, !tbaa !29
  %i.ck = add nuw nsw i32 %.pre254, 2             ; 3 uses
  store i32 %i.ck, ptr %i.bf, align 4, !tbaa !19
  %i.cl = zext nneg i32 %i.cc to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.cl
  store i8 %i.cj, ptr %i.cm, align 1, !tbaa !29
  %i.cn = load i64, ptr %3, align 8, !tbaa !24
  %i.co = add i64 %i.cn, 1
  store i64 %i.co, ptr %3, align 8, !tbaa !24
  %i.cp = add i64 %.0127225, -2                   ; 2 uses
  %.not152.1 = icmp eq i64 %i.cp, 0
  br i1 %.not152.1, label %.critedge, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %bb.h
  %i.cq = icmp ult i32 %.pre254, 3
  br i1 %i.cq, label %bb.i, label %.critedge.thread

bb.i:                                             ; preds = %.lr.ph.2
  %i.cr = getelementptr inbounds nuw i8, ptr %.0139224, i64 3 ; 3 uses
  %i.cs = load i8, ptr %i.ci, align 1, !tbaa !29
  %i.ct = add nuw nsw i32 %.pre254, 3             ; 3 uses
  store i32 %i.ct, ptr %i.bf, align 4, !tbaa !19
  %i.cu = zext nneg i32 %i.ck to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.cu
  store i8 %i.cs, ptr %i.cv, align 1, !tbaa !29
  %i.cw = load i64, ptr %3, align 8, !tbaa !24
  %i.cx = add i64 %i.cw, 1
  store i64 %i.cx, ptr %3, align 8, !tbaa !24
  %i.cy = add i64 %.0127225, -3                   ; 2 uses
  %.not152.2 = icmp eq i64 %i.cy, 0
  br i1 %.not152.2, label %.critedge, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %bb.i
  %.not351 = icmp eq i32 %.pre254, 2
  br i1 %.not351, label %.critedge.thread, label %bb.j

bb.j:                                             ; preds = %.lr.ph.3
  %i.cz = getelementptr inbounds nuw i8, ptr %.0139224, i64 4 ; 3 uses
  %i.da = load i8, ptr %i.cr, align 1, !tbaa !29
  %i.db = or disjoint i32 %.pre254, 4             ; 3 uses
  store i32 %i.db, ptr %i.bf, align 4, !tbaa !19
  %i.dc = zext nneg i32 %i.ct to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.dc
  store i8 %i.da, ptr %i.dd, align 1, !tbaa !29
  %i.de = load i64, ptr %3, align 8, !tbaa !24
  %i.df = add i64 %i.de, 1
  store i64 %i.df, ptr %3, align 8, !tbaa !24
  %i.dg = add i64 %.0127225, -4                   ; 2 uses
  %.not152.3 = icmp eq i64 %i.dg, 0
  br i1 %.not152.3, label %.critedge, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %bb.j
  %i.dh = icmp eq i32 %.pre254, 0
  br i1 %i.dh, label %bb.k, label %.critedge.thread

bb.k:                                             ; preds = %.lr.ph.4
  %i.di = getelementptr inbounds nuw i8, ptr %.0139224, i64 5 ; 2 uses
  %i.dj = load i8, ptr %i.cz, align 1, !tbaa !29
  store i32 5, ptr %i.bf, align 4, !tbaa !19
  %i.dk = zext nneg i32 %i.db to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.dk
  store i8 %i.dj, ptr %i.dl, align 1, !tbaa !29
  %i.dm = load i64, ptr %3, align 8, !tbaa !24
  %i.dn = add i64 %i.dm, 1
  store i64 %i.dn, ptr %3, align 8, !tbaa !24
  %i.do = add i64 %.0127225, -5                   ; 2 uses
  %.not152.4 = icmp eq i64 %i.do, 0
  br i1 %.not152.4, label %.critedge, label %.critedge.thread

.critedge:                                        ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %.preheader189
  %i.dp = phi i32 [ %.pre254, %.preheader189 ], [ %i.cc, %bb.g ], [ %i.ck, %bb.h ], [ %i.ct, %bb.i ], [ %i.db, %bb.j ], [ 5, %bb.k ]
  %.1140.lcssa = phi ptr [ %.0139224, %.preheader189 ], [ %i.ca, %bb.g ], [ %i.ci, %bb.h ], [ %i.cr, %bb.i ], [ %i.cz, %bb.j ], [ %i.di, %bb.k ]
  %i.dq = icmp ult i32 %i.dp, 5
  br i1 %i.dq, label %bb.l, label %.critedge.thread

bb.l:                                             ; preds = %.critedge
  store i32 3, ptr %5, align 4, !tbaa !27
  br label %.thread182

.critedge.thread:                                 ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.lr.ph.4, %bb.k, %.critedge
  %.1128.lcssa266 = phi i64 [ 0, %.critedge ], [ %.0127225, %.lr.ph ], [ %i.ch, %.lr.ph.1 ], [ %i.cp, %.lr.ph.2 ], [ %i.cy, %.lr.ph.3 ], [ %i.dg, %.lr.ph.4 ], [ %i.do, %bb.k ]
  %.1140.lcssa265 = phi ptr [ %.1140.lcssa, %.critedge ], [ %.0139224, %.lr.ph ], [ %i.ca, %.lr.ph.1 ], [ %i.ci, %.lr.ph.2 ], [ %i.cr, %.lr.ph.3 ], [ %i.cz, %.lr.ph.4 ], [ %i.di, %bb.k ]
  %i.dr = load i8, ptr %i.bg, align 8, !tbaa !29
  %.not153 = icmp eq i8 %i.dr, 0
  br i1 %.not153, label %bb.m, label %.thread182

bb.m:                                             ; preds = %.critedge.thread
  %i.ds = load i8, ptr %i.bh, align 1, !tbaa !29
  %i.dt = zext i8 %i.ds to i32
  %i.du = shl nuw i32 %i.dt, 24
  %i.dv = load i8, ptr %i.bi, align 2, !tbaa !29
  %i.dw = zext i8 %i.dv to i32
  %i.dx = shl nuw nsw i32 %i.dw, 16
  %i.dy = or disjoint i32 %i.dx, %i.du
  %i.dz = load i8, ptr %i.bj, align 1, !tbaa !29
  %i.ea = zext i8 %i.dz to i32
  %i.eb = shl nuw nsw i32 %i.ea, 8
  %i.ec = or disjoint i32 %i.dy, %i.eb
  %i.ed = load i8, ptr %i.bk, align 4, !tbaa !29
  %i.ee = zext i8 %i.ed to i32
  %i.ef = or disjoint i32 %i.ec, %i.ee
  store i32 %i.ef, ptr %i.bl, align 4, !tbaa !30
  store i32 -1, ptr %i.bm, align 8, !tbaa !31
  store i32 0, ptr %i.be, align 8, !tbaa !17
  store i32 0, ptr %i.bf, align 4, !tbaa !19
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.f
  %.2141 = phi ptr [ %.1140.lcssa265, %bb.m ], [ %.0139224, %bb.f ] ; 11 uses
  %.2129 = phi i64 [ %.1128.lcssa266, %bb.m ], [ %.0127225, %bb.f ]
  %.2129.fr = freeze i64 %.2129                   ; 10 uses
  %.2141309 = ptrtoaddr ptr %.2141 to i64
  %i.eg = load i64, ptr %i.bn, align 8, !tbaa !23
  %.not154 = icmp uge i64 %i.eg, %1               ; 5 uses
  br i1 %.not154, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.eh = icmp eq i32 %i.bx, 0
  br i1 %i.eh, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.ei = load i32, ptr %i.bl, align 4, !tbaa !30
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 4, ptr %5, align 4, !tbaa !27
  br label %.thread182

bb.r:                                             ; preds = %bb.p
  br i1 %i.bo, label %.loopexit, label %bb.t

.thread:                                          ; preds = %bb.o
  br i1 %i.bo, label %.loopexit, label %bb.s

.loopexit:                                        ; preds = %bb.r, %.thread
  store i32 2, ptr %5, align 4, !tbaa !27
  br label %.thread182

bb.s:                                             ; preds = %.thread
  store i32 2, ptr %5, align 4, !tbaa !27
  br label %.thread182

bb.t:                                             ; preds = %bb.r, %bb.n
  %i.ek = load i32, ptr %i.bp, align 4, !tbaa !22
  %.not156 = icmp eq i32 %i.ek, 0
  br i1 %.not156, label %bb.u, label %iter.check.a

iter.check.a:                                     ; preds = %bb.t
  %i.el = load i32, ptr %0, align 8, !tbaa !32
  %i.em = load i32, ptr %i.bq, align 4, !tbaa !33
  %i.en = add i32 %i.em, %i.el
  %i.eo = shl i32 768, %i.en
  %i.ep = add nuw i32 %i.eo, 1846
  %i.eq = load ptr, ptr %i.br, align 8, !tbaa !34 ; 4 uses
  %wide.trip.count.i = zext i32 %i.ep to i64      ; 3 uses
  %n.vec314 = add nsw i64 %wide.trip.count.i, -6  ; 2 uses
  br label %vector.body315

vector.body315:                                   ; preds = %iter.check.a, %vector.body315
  %index316 = phi i64 [ 0, %iter.check.a ], [ %index.next317, %vector.body315 ] ; 2 uses
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.eq, i64 %index316 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  store <8 x i16> splat (i16 1024), ptr %i.er, align 2, !tbaa !36
  store <8 x i16> splat (i16 1024), ptr %i.es, align 2, !tbaa !36
  %index.next317 = add nuw i64 %index316, 16      ; 2 uses
  %i.et = icmp eq i64 %index.next317, %n.vec314
  br i1 %i.et, label %vec.epilog.vector.body.a, label %vector.body315, !llvm.loop !47

vec.epilog.vector.body.a:                         ; preds = %vector.body315
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %i.eq, i64 %n.vec314
  store <4 x i16> splat (i16 1024), ptr %i.eu, align 2, !tbaa !36
  %i.ev = getelementptr [2 x i8], ptr %i.eq, i64 %wide.trip.count.i
  %i.ew = getelementptr i8, ptr %i.ev, i64 -4
  store i16 1024, ptr %i.ew, align 2, !tbaa !36
  %i.ex = getelementptr [2 x i8], ptr %i.eq, i64 %wide.trip.count.i
  %i.ey = getelementptr i8, ptr %i.ex, i64 -2
  store i16 1024, ptr %i.ey, align 2, !tbaa !36
  store i32 1, ptr %i.bs, align 8, !tbaa !27
  store <4 x i32> <i32 0, i32 1, i32 1, i32 1>, ptr %i.bt, align 8, !tbaa !27
  store i32 0, ptr %i.bp, align 4, !tbaa !22
  br label %bb.u

bb.u:                                             ; preds = %vec.epilog.vector.body.a, %bb.t
  %i.ez = load i32, ptr %i.bf, align 4, !tbaa !19 ; 5 uses
  %i.fa = icmp eq i32 %i.ez, 0
  br i1 %i.fa, label %bb.v, label %.preheader

.preheader:                                       ; preds = %bb.u
  %i.fb = icmp ult i32 %i.ez, 20                  ; 2 uses
  %i.fc = icmp ne i64 %.2129.fr, 0
  %i.fd = and i1 %i.fb, %i.fc
  br i1 %i.fd, label %.lr.ph218.preheader.a, label %._crit_edge

.lr.ph218.preheader.a:                            ; preds = %.preheader
  %i.fe = zext nneg i32 %i.ez to i64              ; 9 uses
  %i.ff = add i64 %.2129.fr, -1
  %i.fg = sub nsw i64 19, %i.fe
  %i.fh = tail call i64 @llvm.umin.i64(i64 %i.ff, i64 %i.fg)
  %i.fi = add i64 %i.fh, 1                        ; 7 uses
  %min.iters.check = icmp ult i64 %i.fi, 4
  br i1 %min.iters.check, label %.lr.ph218.preheader325, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph218.preheader.a
  %i.fj = add i64 %i.bw, %i.fe
  %i.fk = sub i64 %.2141309, %i.fj
  %diff.check = icmp ugt i64 %i.fk, -16
  br i1 %diff.check, label %.lr.ph218.preheader325, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check310 = icmp ult i64 %i.fi, 16
  br i1 %min.iters.check310, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec.a = and i64 %i.fi, 12
  %n.vec = and i64 %i.fi, -16                     ; 5 uses
  %i.fl = add i64 %n.vec, %i.fe                   ; 3 uses
  %wide.load = load <16 x i8>, ptr %.2141, align 1, !tbaa !29
  %i.fm = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.fe
  store <16 x i8> %wide.load, ptr %i.fm, align 1, !tbaa !29
  %6 = icmp ult i32 %i.ez, 4
  %i.fn = icmp eq i64 %i.fi, %n.vec
  br i1 %i.fn, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %vector.ph
  %min.epilog.iters.check = icmp eq i64 %n.vec.a, 0
  br i1 %min.epilog.iters.check, label %.lr.ph218.preheader325, label %vec.epilog.ph, !prof !50

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i64 [ %i.fl, %vec.epilog.iter.check ], [ %i.fe, %vector.main.loop.iter.check ]
  %n.vec311 = and i64 %i.fi, -4                   ; 5 uses
  %7 = add i64 %n.vec311, %i.fe                   ; 2 uses
  %8 = add nuw nsw i64 %bc.resume.val, 3
  %invariant.gep = getelementptr i8, ptr %i.bg, i64 %i.fe
  br label %vector.body.1

vector.body.1:                                    ; preds = %vector.body.1, %vec.epilog.ph
  %index315 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next318, %vector.body.1 ] ; 3 uses
  %9 = phi i64 [ %8, %vec.epilog.ph ], [ %10, %vector.body.1 ] ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.2141, i64 %index315
  %wide.load.1 = load <4 x i8>, ptr %i.fo, align 1, !tbaa !29
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index315
  store <4 x i8> %wide.load.1, ptr %gep, align 1, !tbaa !29
  %index.next318 = add nuw i64 %index315, 4       ; 2 uses
  %10 = add nuw nsw i64 %9, 4
  %11 = icmp eq i64 %index.next318, %n.vec311
  br i1 %11, label %middle.block, label %vector.body.1, !llvm.loop !48

middle.block:                                     ; preds = %vector.body.1
  %i.fp = icmp ult i64 %9, 19
  %cmp.n = icmp eq i64 %i.fi, %n.vec311
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.lr.ph218.preheader325

.lr.ph218.preheader325:                           ; preds = %.lr.ph218.preheader.a, %vector.memcheck, %vec.epilog.iter.check, %middle.block
  %indvars.iv249.ph = phi i64 [ %i.fe, %.lr.ph218.preheader.a ], [ %i.fe, %vector.memcheck ], [ %i.fl, %vec.epilog.iter.check ], [ %7, %middle.block ]
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph218.preheader.a ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec311, %middle.block ]
  br label %.lr.ph218

bb.v:                                             ; preds = %bb.u
  %i.fq = icmp ult i64 %.2129.fr, 20
  %or.cond = or i1 %i.fq, %.not154
  br i1 %or.cond, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.fr = tail call fastcc i32 @LzmaDec_TryDummy(ptr noundef nonnull %0, ptr noundef %.2141, i64 noundef %.2129.fr) ; 2 uses
  %i.fs = icmp eq i32 %i.fr, 0
  br i1 %i.fs, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bg, ptr align 1 %.2141, i64 %.2129.fr, i1 false)
  %i.ft = trunc i64 %.2129.fr to i32
  store i32 %i.ft, ptr %i.bf, align 4, !tbaa !19
  %i.fu = load i64, ptr %3, align 8, !tbaa !24
  %i.fv = add i64 %i.fu, %.2129.fr
  store i64 %i.fv, ptr %3, align 8, !tbaa !24
  store i32 3, ptr %5, align 4, !tbaa !27
  br label %.thread182

bb.y:                                             ; preds = %bb.w
  %i.fw = icmp ne i32 %i.fr, 2
  %or.cond7 = and i1 %.not154, %i.fw
  br i1 %or.cond7, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  store i32 2, ptr %5, align 4, !tbaa !27
  br label %.thread182

bb.aa:                                            ; preds = %bb.v
  %i.fx = getelementptr inbounds nuw i8, ptr %.2141, i64 %.2129.fr
  %i.fy = getelementptr inbounds i8, ptr %i.fx, i64 -20
  br label %bb.ab

bb.ab:                                            ; preds = %bb.y, %bb.aa
  %.1 = phi ptr [ %i.fy, %bb.aa ], [ %.2141, %bb.y ]
  store ptr %.2141, ptr %i.bu, align 8, !tbaa !39
  %i.fz = tail call fastcc i32 @LzmaDec_DecodeReal2(ptr noundef nonnull %0, i64 noundef %1, ptr noundef %.1)
  %.not159 = icmp eq i32 %i.fz, 0
  br i1 %.not159, label %bb.ac, label %.thread182

bb.ac:                                            ; preds = %bb.ab
  %i.ga = load ptr, ptr %i.bu, align 8, !tbaa !39
  %i.gb = ptrtoint ptr %i.ga to i64
  %i.gc = ptrtoint ptr %.2141 to i64
  %i.gd = sub i64 %i.gb, %i.gc                    ; 2 uses
  %i.ge = load i64, ptr %3, align 8, !tbaa !24
  %i.gf = add i64 %i.gd, %i.ge
  store i64 %i.gf, ptr %3, align 8, !tbaa !24
  br label %bb.aj

.lr.ph218:                                        ; preds = %.lr.ph218.preheader325, %.lr.ph218
  %indvars.iv249 = phi i64 [ %indvars.iv.next250, %.lr.ph218 ], [ %indvars.iv249.ph, %.lr.ph218.preheader325 ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph218 ], [ %indvars.iv.ph, %.lr.ph218.preheader325 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.2141, i64 %indvars.iv
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !29
  %indvars.iv.next250 = add nuw nsw i64 %indvars.iv249, 1 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv249
  store i8 %i.gh, ptr %i.gi, align 1, !tbaa !29
  %i.gj = icmp samesign ult i64 %indvars.iv249, 19 ; 2 uses
  %i.gk = icmp ugt i64 %.2129.fr, %indvars.iv.next
  %i.gl = select i1 %i.gj, i1 %i.gk, i1 false
  br i1 %i.gl, label %.lr.ph218, label %._crit_edge.loopexit, !llvm.loop !49

._crit_edge.loopexit:                             ; preds = %.lr.ph218, %middle.block, %vector.ph
  %indvars.iv.next.lcssa = phi i64 [ %n.vec311, %middle.block ], [ %n.vec, %vector.ph ], [ %indvars.iv.next, %.lr.ph218 ] ; 2 uses
  %indvars.iv.next250.lcssa = phi i64 [ %7, %middle.block ], [ %i.fl, %vector.ph ], [ %indvars.iv.next250, %.lr.ph218 ]
  %.lcssa292 = phi i1 [ %i.fp, %middle.block ], [ %6, %vector.ph ], [ %i.gj, %.lr.ph218 ]
  %i.gm = trunc nuw nsw i64 %indvars.iv.next250.lcssa to i32
  %i.gn = trunc nuw nsw i64 %indvars.iv.next.lcssa to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.0122.lcssa = phi i32 [ %i.ez, %.preheader ], [ %i.gm, %._crit_edge.loopexit ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %.preheader ], [ %i.gn, %._crit_edge.loopexit ]
  %.lcssa191 = phi i1 [ %i.fb, %.preheader ], [ %.lcssa292, %._crit_edge.loopexit ]
  %.lcssa = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.lcssa, %._crit_edge.loopexit ]
  store i32 %.0122.lcssa, ptr %i.bf, align 4, !tbaa !19
  %or.cond9 = or i1 %.not154, %.lcssa191
  br i1 %or.cond9, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %._crit_edge
  %i.go = zext i32 %.0122.lcssa to i64
  %i.gp = tail call fastcc i32 @LzmaDec_TryDummy(ptr noundef nonnull %0, ptr noundef nonnull %i.bg, i64 noundef %i.go) ; 2 uses
  %i.gq = icmp eq i32 %i.gp, 0
  br i1 %i.gq, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.gr = load i64, ptr %3, align 8, !tbaa !24
  %i.gs = add i64 %i.gr, %.lcssa
  store i64 %i.gs, ptr %3, align 8, !tbaa !24
  store i32 3, ptr %5, align 4, !tbaa !27
  br label %.thread182

bb.af:                                            ; preds = %bb.ad
  %i.gt = icmp ne i32 %i.gp, 2
  %or.cond11 = and i1 %.not154, %i.gt
  br i1 %or.cond11, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 2, ptr %5, align 4, !tbaa !27
  br label %.thread182

bb.ah:                                            ; preds = %bb.af, %._crit_edge
  store ptr %i.bg, ptr %i.bu, align 8, !tbaa !39
  %i.gu = tail call fastcc i32 @LzmaDec_DecodeReal2(ptr noundef nonnull %0, i64 noundef %1, ptr noundef nonnull %i.bg)
  %.not157 = icmp eq i32 %i.gu, 0
  br i1 %.not157, label %bb.ai, label %.thread182

bb.ai:                                            ; preds = %bb.ah
  %i.gv = load ptr, ptr %i.bu, align 8, !tbaa !39
  %i.gw = ptrtoint ptr %i.gv to i64
  %.neg.neg = sub i64 %i.gw, %i.bv
  %.neg158.neg228 = trunc i64 %.neg.neg to i32
  %.neg188 = sub i32 %.0.lcssa, %.0122.lcssa
  %i.gx = add i32 %.neg188, %.neg158.neg228
  %i.gy = zext i32 %i.gx to i64                   ; 2 uses
  %i.gz = load i64, ptr %3, align 8, !tbaa !24
  %i.ha = add i64 %i.gz, %i.gy
  store i64 %i.ha, ptr %3, align 8, !tbaa !24
  store i32 0, ptr %i.bf, align 4, !tbaa !19
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ac, %bb.ai
  %.pn = phi i64 [ %i.gy, %bb.ai ], [ %i.gd, %bb.ac ] ; 2 uses
  %.6 = sub i64 %.2129.fr, %.pn
  %.6145 = getelementptr inbounds nuw i8, ptr %.2141, i64 %.pn
  %i.hb = load i32, ptr %i.c, align 4, !tbaa !18  ; 2 uses
  %.not = icmp eq i32 %i.hb, 274
  br i1 %.not, label %._crit_edge227, label %bb.f

._crit_edge227:                                   ; preds = %bb.aj, %LzmaDec_WriteRem.exit
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !30
  %i.he = icmp eq i32 %i.hd, 0
  br i1 %i.he, label %bb.ak, label %.thread182

bb.ak:                                            ; preds = %._crit_edge227
  store i32 1, ptr %5, align 4, !tbaa !27
  %.pre = load i32, ptr %i.hc, align 4, !tbaa !30
  %i.hf = icmp ne i32 %.pre, 0
  %i.hg = zext i1 %i.hf to i32
  br label %.thread182

.thread182:                                       ; preds = %bb.ah, %bb.ab, %.critedge.thread, %._crit_edge227, %bb.ak, %bb.ag, %bb.ae, %bb.z, %bb.x, %bb.s, %.loopexit, %bb.q, %bb.l
  %.9 = phi i32 [ 1, %._crit_edge227 ], [ 0, %bb.l ], [ 0, %bb.ae ], [ 1, %bb.s ], [ 0, %.loopexit ], [ 0, %bb.q ], [ 0, %bb.x ], [ 1, %bb.ag ], [ 1, %bb.z ], [ %i.hg, %bb.ak ], [ 1, %.critedge.thread ], [ 1, %bb.ab ], [ 1, %bb.ah ]
  ret i32 %.9
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 4) i32 @LzmaDec_TryDummy(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !31   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !30   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 15 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !34   ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load i32, ptr %i.h, align 8, !tbaa !40   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load i32, ptr %i.j, align 8, !tbaa !20   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !41
  %notmask = shl nsw i32 -1, %i.m
  %i.n = xor i32 %notmask, -1
  %i.o = and i32 %i.k, %i.n                       ; 3 uses
  %i.p = shl i32 %i.i, 4
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.q
  %i.s = zext nneg i32 %i.o to i64                ; 2 uses
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2, !tbaa !36
  %i.v = zext i16 %i.u to i32
  %i.w = icmp ult i32 %i.b, 16777216
  br i1 %i.w, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not.not = icmp eq i64 %2, 0
  br i1 %.not.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = shl nuw i32 %i.b, 8
  %i.y = shl i32 %i.d, 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.aa = load i8, ptr %1, align 1, !tbaa !29
  %i.ab = zext i8 %i.aa to i32
  %i.ac = or disjoint i32 %i.y, %i.ab
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.0454 = phi ptr [ %i.z, %bb.c ], [ %1, %bb.a ] ; 6 uses
  %.0398 = phi i32 [ %i.x, %bb.c ], [ %i.b, %bb.a ] ; 2 uses
  %.0389 = phi i32 [ %i.ac, %bb.c ], [ %i.d, %bb.a ] ; 4 uses
  %i.ad = lshr i32 %.0398, 11
  %i.ae = mul i32 %i.ad, %i.v                     ; 5 uses
  %i.af = icmp ult i32 %.0389, %i.ae
  br i1 %i.af, label %bb.e, label %bb.z

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 3692 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !21
  %i.aj = or i32 %i.ai, %i.k
  %or.cond595 = icmp eq i32 %i.aj, 0
  br i1 %or.cond595, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !33
  %notmask550 = shl nsw i32 -1, %i.al
  %i.am = xor i32 %notmask550, -1
  %i.an = and i32 %i.k, %i.am
  %i.ao = load i32, ptr %0, align 8, !tbaa !32    ; 2 uses
  %i.ap = shl i32 %i.an, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !25
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.at = load i64, ptr %i.as, align 8, !tbaa !23 ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !26
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.ax = phi i64 [ %i.aw, %bb.g ], [ %i.at, %bb.f ]
  %i.ay = getelementptr i8, ptr %i.ar, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.ay, i64 -1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !29
  %i.bb = zext i8 %i.ba to i32
  %i.bc = sub i32 8, %i.ao
  %i.bd = lshr i32 %i.bb, %i.bc
  %i.be = add i32 %i.bd, %i.ap
  %i.bf = mul i32 %i.be, 768
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.bg
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h
  %.0381 = phi ptr [ %i.bh, %bb.h ], [ %i.ag, %bb.e ] ; 2 uses
  %i.bi = icmp ult i32 %i.i, 7
  br i1 %i.bi, label %.preheader, label %bb.p

.preheader:                                       ; preds = %bb.i, %bb.o
  %.1455 = phi ptr [ %.2456, %bb.o ], [ %.0454, %bb.i ] ; 4 uses
  %.1399 = phi i32 [ %.3401, %bb.o ], [ %i.ae, %bb.i ] ; 3 uses
  %.1390 = phi i32 [ %.3392, %bb.o ], [ %.0389, %bb.i ] ; 2 uses
  %.0376 = phi i32 [ %.1377, %bb.o ], [ 1, %bb.i ] ; 3 uses
  %i.bj = zext nneg i32 %.0376 to i64
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %.0381, i64 %i.bj
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !36
  %i.bm = zext i16 %i.bl to i32
  %i.bn = icmp ult i32 %.1399, 16777216
  br i1 %i.bn, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.preheader
  %.not552 = icmp ult ptr %.1455, %i.e
  br i1 %.not552, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.bo = shl nuw i32 %.1399, 8
end_hunk_0
begin_hunk_1_@LzmaDec_DecodeReal2:bb.a
  %.1.i = phi i32 [ %i.zy, %bb.eh ], [ %i.aah, %bb.ei ] ; 2 uses
  store i16 %.sink1176.i, ptr %i.zl, align 2, !tbaa !36
  %i.aaj = zext nneg i32 %.1.i to i64
  %i.aak = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.aaj ; 2 uses
  %i.aal = load i16, ptr %i.aak, align 2, !tbaa !36 ; 4 uses
  %i.aam = zext i16 %i.aal to i32                 ; 2 uses
  %i.aan = icmp ult i32 %.44871.i, 16777216
  br i1 %i.aan, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.aao = shl nuw i32 %.44871.i, 8
  %i.aap = shl i32 %.44.i, 8
  %i.aaq = getelementptr inbounds nuw i8, ptr %.31914.i, i64 1
  %i.aar = load i8, ptr %.31914.i, align 1, !tbaa !29
  %i.aas = zext i8 %i.aar to i32
  %i.aat = or disjoint i32 %i.aap, %i.aas
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej
  %.32915.i = phi ptr [ %i.aaq, %bb.ek ], [ %.31914.i, %bb.ej ] ; 3 uses
  %.45872.i = phi i32 [ %i.aao, %bb.ek ], [ %.44871.i, %bb.ej ] ; 2 uses
  %.45.i = phi i32 [ %i.aat, %bb.ek ], [ %.44.i, %bb.ej ] ; 3 uses
  %i.aau = lshr i32 %.45872.i, 11
  %i.aav = mul i32 %i.aau, %i.aam                 ; 4 uses
  %i.aaw = icmp ult i32 %.45.i, %i.aav
  %i.aax = shl nuw nsw i32 %.1.i, 1               ; 2 uses
  br i1 %i.aaw, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  %i.aay = sub nsw i32 2048, %i.aam
  %i.aaz = lshr i32 %i.aay, 5
  %i.aba = trunc i32 %i.aaz to i16
  %i.abb = add i16 %i.aal, %i.aba
  br label %bb.eo

bb.en:                                            ; preds = %bb.el
  %i.abc = sub i32 %.45872.i, %i.aav
  %i.abd = sub nuw i32 %.45.i, %i.aav
  %i.abe = lshr i16 %i.aal, 5
  %i.abf = sub i16 %i.aal, %i.abe
  %i.abg = or disjoint i32 %i.aax, 1
  %i.abh = or i32 %.10.i, 4
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em
  %.sink1177.i = phi i16 [ %i.abb, %bb.em ], [ %i.abf, %bb.en ]
  %.46873.i = phi i32 [ %i.aav, %bb.em ], [ %i.abc, %bb.en ] ; 3 uses
  %.46.i = phi i32 [ %.45.i, %bb.em ], [ %i.abd, %bb.en ] ; 2 uses
  %.11.i = phi i32 [ %.10.i, %bb.em ], [ %i.abh, %bb.en ] ; 2 uses
  %.2.i = phi i32 [ %i.aax, %bb.em ], [ %i.abg, %bb.en ]
  store i16 %.sink1177.i, ptr %i.aak, align 2, !tbaa !36
  %i.abi = zext nneg i32 %.2.i to i64
  %i.abj = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.abi ; 3 uses
  %i.abk = load i16, ptr %i.abj, align 2, !tbaa !36 ; 4 uses
  %i.abl = zext i16 %i.abk to i32                 ; 2 uses
  %i.abm = icmp ult i32 %.46873.i, 16777216
  br i1 %i.abm, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.abn = shl nuw i32 %.46873.i, 8
  %i.abo = shl i32 %.46.i, 8
  %i.abp = getelementptr inbounds nuw i8, ptr %.32915.i, i64 1
  %i.abq = load i8, ptr %.32915.i, align 1, !tbaa !29
  %i.abr = zext i8 %i.abq to i32
  %i.abs = or disjoint i32 %i.abo, %i.abr
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  %.33916.i = phi ptr [ %i.abp, %bb.ep ], [ %.32915.i, %bb.eo ] ; 3 uses
  %.47874.i = phi i32 [ %i.abn, %bb.ep ], [ %.46873.i, %bb.eo ] ; 2 uses
  %.47.i = phi i32 [ %i.abs, %bb.ep ], [ %.46.i, %bb.eo ] ; 3 uses
  %i.abt = lshr i32 %.47874.i, 11
  %i.abu = mul i32 %i.abt, %i.abl                 ; 4 uses
  %i.abv = icmp ult i32 %.47.i, %i.abu
  br i1 %i.abv, label %.thread.i, label %bb.er

.thread.i:                                        ; preds = %bb.eq
  %i.abw = sub nsw i32 2048, %i.abl
  %i.abx = lshr i32 %i.abw, 5
  %i.aby = trunc i32 %i.abx to i16
  %i.abz = add i16 %i.abk, %i.aby
  store i16 %i.abz, ptr %i.abj, align 2, !tbaa !36
  br label %.thread1047.i

bb.er:                                            ; preds = %bb.eq
  %i.aca = sub i32 %.47874.i, %i.abu              ; 2 uses
  %i.acb = sub nuw i32 %.47.i, %i.abu             ; 2 uses
  %i.acc = lshr i16 %i.abk, 5
  %i.acd = sub i16 %i.abk, %i.acc
  store i16 %i.acd, ptr %i.abj, align 2, !tbaa !36
  %i.ace = or i32 %.11.i, 8                       ; 2 uses
  %i.acf = icmp eq i32 %i.ace, -1
  br i1 %i.acf, label %bb.ex, label %.thread1047.i

.thread1047.i:                                    ; preds = %bb.cw, %bb.dc, %bb.di, %bb.do, %bb.du, %bb.er, %.thread.i, %bb.cp
  %.36919.i = phi ptr [ %.25908.i, %bb.cp ], [ %.33916.i, %.thread.i ], [ %.33916.i, %bb.er ], [ %.27910.i, %bb.cw ], [ %.27910.i.1, %bb.dc ], [ %.27910.i.2, %bb.di ], [ %.27910.i.3, %bb.do ], [ %.27910.i.4, %bb.du ]
  %.51878.i = phi i32 [ %.35862.i, %bb.cp ], [ %i.abu, %.thread.i ], [ %i.aca, %bb.er ], [ %.38865.i, %bb.cw ], [ %.38865.i.1, %bb.dc ], [ %.38865.i.2, %bb.di ], [ %.38865.i.3, %bb.do ], [ %.38865.i.4, %bb.du ]
  %.51.i = phi i32 [ %.35.i, %bb.cp ], [ %.47.i, %.thread.i ], [ %i.acb, %bb.er ], [ %.38.i, %bb.cw ], [ %.38.i.1, %bb.dc ], [ %.38.i.2, %bb.di ], [ %.38.i.3, %bb.do ], [ %.38.i.4, %bb.du ]
  %.15.i = phi i32 [ %i.su, %bb.cp ], [ %.11.i, %.thread.i ], [ %i.ace, %bb.er ], [ %.7.i, %bb.cw ], [ %.7.i.1, %bb.dc ], [ %.7.i.2, %bb.di ], [ %.7.i.3, %bb.do ], [ %.7.i.4, %bb.du ] ; 3 uses
  %i.acg = add i32 %.15.i, 1
  br i1 %i.t, label %bb.es, label %bb.et

bb.es:                                            ; preds = %.thread1047.i
  %.not1039.i = icmp ult i32 %.15.i, %.0932.i
  br i1 %.not1039.i, label %bb.eu, label %LzmaDec_WriteRem.exit

bb.et:                                            ; preds = %.thread1047.i
  %.not1038.i = icmp ult i32 %.15.i, %i.s
  br i1 %.not1038.i, label %bb.eu, label %LzmaDec_WriteRem.exit

bb.eu:                                            ; preds = %bb.et, %bb.es
  %i.ach = icmp ult i32 %.2967.i, 19
  %i.aci = select i1 %i.ach, i32 7, i32 10
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.bk
  %.6971.i = phi i32 [ %i.aci, %bb.eu ], [ %.2967.i, %bb.bk ] ; 3 uses
  %.4963.i = phi i32 [ %i.acg, %bb.eu ], [ %.2961.i, %bb.bk ] ; 4 uses
  %.4957.i = phi i32 [ %.2961.i, %bb.eu ], [ %.2955.i, %bb.bk ] ; 3 uses
  %.5951.i = phi i32 [ %.2955.i, %bb.eu ], [ %.3949.i, %bb.bk ] ; 3 uses
  %.6944.i = phi i32 [ %.3949.i, %bb.eu ], [ %.4942.i, %bb.bk ] ; 3 uses
  %.38921.i = phi ptr [ %.36919.i, %bb.eu ], [ %.19902.i, %bb.bk ] ; 3 uses
  %.53880.i = phi i32 [ %.51878.i, %bb.eu ], [ %.23850.i, %bb.bk ] ; 3 uses
  %.53.i = phi i32 [ %.51.i, %bb.eu ], [ %.23.i, %bb.bk ] ; 3 uses
  %i.acj = icmp eq i64 %.130, %.0934.i
  br i1 %i.acj, label %LzmaDec_WriteRem.exit, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.ack = add i32 %i.nd, 2                       ; 2 uses
  %i.acl = sub i64 %.130, %.0934.i
  %i.acm = zext i32 %i.ack to i64
  %i.acn = tail call i64 @llvm.umin.i64(i64 %i.acl, i64 %i.acm) ; 14 uses
  %i.aco = trunc nuw i64 %i.acn to i32            ; 7 uses
  %i.acp = zext i32 %.4963.i to i64               ; 3 uses
  %i.acq = sub i64 %.0934.i, %i.acp
  %i.acr = icmp ult i64 %.0934.i, %i.acp
  %i.acs = select i1 %i.acr, i64 %i.an, i64 0     ; 2 uses
  %i.act = add i64 %i.acs, %i.acq                 ; 5 uses
  %i.acu = sub nuw i32 %i.ack, %i.aco             ; 3 uses
  %i.acv = add i64 %i.act, %i.acn
  %.not1040.i = icmp ugt i64 %i.acv, %i.an
  br i1 %.not1040.i, label %.preheader.i.preheader, label %iter.check

.preheader.i.preheader:                           ; preds = %bb.ew
  %xtraiter174 = and i32 %i.aco, 1
  %lcmp.mod175.not = icmp eq i32 %xtraiter174, 0
  br i1 %lcmp.mod175.not, label %.preheader.i.prol.loopexit, label %.preheader.i.prol

.preheader.i.prol:                                ; preds = %.preheader.i.preheader
  %i.acw = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.act
  %i.acx = load i8, ptr %i.acw, align 1, !tbaa !29
  %i.acy = add i64 %.0934.i, 1                    ; 2 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %i.al, i64 %.0934.i
  store i8 %i.acx, ptr %i.acz, align 1, !tbaa !29
  %i.ada = add i64 %i.act, 1                      ; 2 uses
  %i.adb = icmp eq i64 %i.ada, %i.an
  %spec.store.select.i.prol = select i1 %i.adb, i64 0, i64 %i.ada
  %i.adc = add nsw i32 %i.aco, -1
  br label %.preheader.i.prol.loopexit

.preheader.i.prol.loopexit:                       ; preds = %.preheader.i.prol, %.preheader.i.preheader
  %.lcssa164.unr = phi i64 [ poison, %.preheader.i.preheader ], [ %i.acy, %.preheader.i.prol ]
  %.1935.i.unr = phi i64 [ %.0934.i, %.preheader.i.preheader ], [ %i.acy, %.preheader.i.prol ]
  %.0778.i.unr = phi i32 [ %i.aco, %.preheader.i.preheader ], [ %i.adc, %.preheader.i.prol ]
  %.0777.i.unr = phi i64 [ %i.act, %.preheader.i.preheader ], [ %spec.store.select.i.prol, %.preheader.i.prol ]
  %i.add = icmp eq i64 %i.acn, 1
  br i1 %i.add, label %.loopexit1142.i, label %.preheader.i

iter.check:                                       ; preds = %bb.ew
  %i.ade = getelementptr inbounds nuw i8, ptr %i.al, i64 %.0934.i ; 6 uses
  %i.adf = sub nsw i64 %i.act, %.0934.i           ; 11 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %i.ade, i64 %i.acn
  %min.iters.check = icmp samesign ult i64 %i.acn, 8
  %i.adh = sub i64 %i.acs, %i.acp
  %diff.check = icmp ugt i64 %i.adh, -32
  %or.cond161 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond161, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check152 = icmp samesign ult i64 %i.acn, 32
  br i1 %min.iters.check152, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.adi = and i64 %i.acn, 24
  %n.vec = and i64 %i.acn, 4294967264             ; 4 uses
  %i.adj = getelementptr i8, ptr %i.ade, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ade, i64 %index ; 3 uses
  %i.adk = getelementptr inbounds i8, ptr %next.gep, i64 %i.adf ; 2 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adk, i64 16
  %wide.load = load <16 x i8>, ptr %i.adk, align 1, !tbaa !29
  %wide.load153 = load <16 x i8>, ptr %i.adl, align 1, !tbaa !29
  %i.adm = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !29
  store <16 x i8> %wide.load153, ptr %i.adm, align 1, !tbaa !29
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.adn = icmp eq i64 %index.next, %n.vec
  br i1 %i.adn, label %middle.block, label %vector.body, !llvm.loop !51

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.acn, %n.vec
  br i1 %cmp.n, label %.loopexit1142.loopexit1156.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.adi, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !55

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec154 = and i64 %i.acn, 4294967288          ; 3 uses
  %i.ado = getelementptr i8, ptr %i.ade, i64 %n.vec154
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index155 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next158, %vec.epilog.vector.body ] ; 2 uses
  %next.gep156 = getelementptr i8, ptr %i.ade, i64 %index155 ; 2 uses
  %i.adp = getelementptr inbounds i8, ptr %next.gep156, i64 %i.adf
  %wide.load157 = load <8 x i8>, ptr %i.adp, align 1, !tbaa !29
  store <8 x i8> %wide.load157, ptr %next.gep156, align 1, !tbaa !29
  %index.next158 = add nuw i64 %index155, 8       ; 2 uses
  %i.adq = icmp eq i64 %index.next158, %n.vec154
  br i1 %i.adq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !52

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n159 = icmp eq i64 %i.acn, %n.vec154
  br i1 %cmp.n159, label %.loopexit1142.loopexit1156.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0.i.ph = phi ptr [ %i.ade, %iter.check ], [ %i.adj, %vec.epilog.iter.check ], [ %i.ado, %vec.epilog.middle.block ] ; 3 uses
  %i.adr = add i64 %.0934.i, %i.am
  %.0.i.ph173 = ptrtoaddr ptr %.0.i.ph to i64     ; 2 uses
  %i.ads = sub i64 %i.adr, %.0.i.ph173
  %i.adt = add i64 %i.ads, %i.acn
  %i.adu = add i64 %i.bd, %.0934.i
  %i.adv = sub i64 %i.adu, %.0.i.ph173
  %i.adw = add i64 %i.adv, %i.acn
  %xtraiter = and i64 %i.adt, 7                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.0.i.prol = phi ptr [ %i.adz, %vec.epilog.scalar.ph.prol ], [ %.0.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.adx = getelementptr inbounds i8, ptr %.0.i.prol, i64 %i.adf
  %i.ady = load i8, ptr %i.adx, align 1, !tbaa !29
  store i8 %i.ady, ptr %.0.i.prol, align 1, !tbaa !29
  %i.adz = getelementptr inbounds nuw i8, ptr %.0.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !53

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.0.i.unr = phi ptr [ %.0.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.adz, %vec.epilog.scalar.ph.prol ]
  %i.aea = icmp ult i64 %i.adw, 7
  br i1 %i.aea, label %.loopexit1142.loopexit1156.i, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.0.i = phi ptr [ %i.aey, %vec.epilog.scalar.ph ], [ %.0.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %i.aeb = getelementptr inbounds i8, ptr %.0.i, i64 %i.adf
  %i.aec = load i8, ptr %i.aeb, align 1, !tbaa !29
  store i8 %i.aec, ptr %.0.i, align 1, !tbaa !29
  %i.aed = getelementptr inbounds nuw i8, ptr %.0.i, i64 1 ; 2 uses
  %i.aee = getelementptr inbounds i8, ptr %i.aed, i64 %i.adf
  %i.aef = load i8, ptr %i.aee, align 1, !tbaa !29
  store i8 %i.aef, ptr %i.aed, align 1, !tbaa !29
  %i.aeg = getelementptr inbounds nuw i8, ptr %.0.i, i64 2 ; 2 uses
  %i.aeh = getelementptr inbounds i8, ptr %i.aeg, i64 %i.adf
  %i.aei = load i8, ptr %i.aeh, align 1, !tbaa !29
  store i8 %i.aei, ptr %i.aeg, align 1, !tbaa !29
  %i.aej = getelementptr inbounds nuw i8, ptr %.0.i, i64 3 ; 2 uses
  %i.aek = getelementptr inbounds i8, ptr %i.aej, i64 %i.adf
  %i.ael = load i8, ptr %i.aek, align 1, !tbaa !29
  store i8 %i.ael, ptr %i.aej, align 1, !tbaa !29
  %i.aem = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  %i.aen = getelementptr inbounds i8, ptr %i.aem, i64 %i.adf
  %i.aeo = load i8, ptr %i.aen, align 1, !tbaa !29
  store i8 %i.aeo, ptr %i.aem, align 1, !tbaa !29
  %i.aep = getelementptr inbounds nuw i8, ptr %.0.i, i64 5 ; 2 uses
  %i.aeq = getelementptr inbounds i8, ptr %i.aep, i64 %i.adf
  %i.aer = load i8, ptr %i.aeq, align 1, !tbaa !29
  store i8 %i.aer, ptr %i.aep, align 1, !tbaa !29
  %i.aes = getelementptr inbounds nuw i8, ptr %.0.i, i64 6 ; 2 uses
  %i.aet = getelementptr inbounds i8, ptr %i.aes, i64 %i.adf
  %i.aeu = load i8, ptr %i.aet, align 1, !tbaa !29
  store i8 %i.aeu, ptr %i.aes, align 1, !tbaa !29
  %i.aev = getelementptr inbounds nuw i8, ptr %.0.i, i64 7 ; 2 uses
  %i.aew = getelementptr inbounds i8, ptr %i.aev, i64 %i.adf
  %i.aex = load i8, ptr %i.aew, align 1, !tbaa !29
  store i8 %i.aex, ptr %i.aev, align 1, !tbaa !29
  %i.aey = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %.not1042.i.7 = icmp eq ptr %i.aey, %i.adg
  br i1 %.not1042.i.7, label %.loopexit1142.loopexit1156.i, label %vec.epilog.scalar.ph, !llvm.loop !54

.preheader.i:                                     ; preds = %.preheader.i.prol.loopexit, %.preheader.i
  %.1935.i = phi i64 [ %i.afg, %.preheader.i ], [ %.1935.i.unr, %.preheader.i.prol.loopexit ] ; 3 uses
  %.0778.i = phi i32 [ %i.afl, %.preheader.i ], [ %.0778.i.unr, %.preheader.i.prol.loopexit ]
  %.0777.i = phi i64 [ %spec.store.select.i.1, %.preheader.i ], [ %.0777.i.unr, %.preheader.i.prol.loopexit ] ; 2 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %i.al, i64 %.0777.i
  %i.afa = load i8, ptr %i.aez, align 1, !tbaa !29
  %i.afb = getelementptr inbounds nuw i8, ptr %i.al, i64 %.1935.i
  store i8 %i.afa, ptr %i.afb, align 1, !tbaa !29
  %i.afc = add i64 %.0777.i, 1                    ; 2 uses
  %i.afd = icmp eq i64 %i.afc, %i.an
  %spec.store.select.i = select i1 %i.afd, i64 0, i64 %i.afc ; 2 uses
  %i.afe = getelementptr inbounds nuw i8, ptr %i.al, i64 %spec.store.select.i
  %i.aff = load i8, ptr %i.afe, align 1, !tbaa !29
  %i.afg = add i64 %.1935.i, 2                    ; 2 uses
  %i.afh = getelementptr i8, ptr %i.al, i64 %.1935.i
  %i.afi = getelementptr i8, ptr %i.afh, i64 1
  store i8 %i.aff, ptr %i.afi, align 1, !tbaa !29
  %i.afj = add i64 %spec.store.select.i, 1        ; 2 uses
  %i.afk = icmp eq i64 %i.afj, %i.an
  %spec.store.select.i.1 = select i1 %i.afk, i64 0, i64 %i.afj
  %i.afl = add i32 %.0778.i, -2                   ; 2 uses
  %.not1041.i.1 = icmp eq i32 %i.afl, 0
  br i1 %.not1041.i.1, label %.loopexit1142.i, label %.preheader.i

bb.ex:                                            ; preds = %bb.er
  %i.afm = add i32 %i.nd, 274
  %i.afn = add i32 %.2967.i, -12
  br label %.loopexit1144.i

.loopexit1142.loopexit1156.i:                     ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.afo = add i64 %i.acn, %.0934.i
  br label %.loopexit1142.i

.loopexit1142.i:                                  ; preds = %.preheader.i.prol.loopexit, %.preheader.i, %.loopexit1142.loopexit1156.i, %bb.ah, %.loopexit.i
  %.7972.ph.i = phi i32 [ %.1966.i, %.loopexit.i ], [ %.6971.i, %.loopexit1142.loopexit1156.i ], [ %i.ie, %bb.ah ], [ %.6971.i, %.preheader.i ], [ %.6971.i, %.preheader.i.prol.loopexit ] ; 2 uses
  %.5964.ph.i = phi i32 [ %.0959.i, %.loopexit.i ], [ %.4963.i, %.loopexit1142.loopexit1156.i ], [ %.0959.i, %bb.ah ], [ %.4963.i, %.preheader.i ], [ %.4963.i, %.preheader.i.prol.loopexit ] ; 2 uses
  %.5958.ph.i = phi i32 [ %.0953.i, %.loopexit.i ], [ %.4957.i, %.loopexit1142.loopexit1156.i ], [ %.0953.i, %bb.ah ], [ %.4957.i, %.preheader.i ], [ %.4957.i, %.preheader.i.prol.loopexit ] ; 2 uses
  %.6952.ph.i = phi i32 [ %.0946.i, %.loopexit.i ], [ %.5951.i, %.loopexit1142.loopexit1156.i ], [ %.0946.i, %bb.ah ], [ %.5951.i, %.preheader.i ], [ %.5951.i, %.preheader.i.prol.loopexit ] ; 2 uses
  %.7945.ph.i = phi i32 [ %.0938.i, %.loopexit.i ], [ %.6944.i, %.loopexit1142.loopexit1156.i ], [ %.0938.i, %bb.ah ], [ %.6944.i, %.preheader.i ], [ %.6944.i, %.preheader.i.prol.loopexit ] ; 2 uses
  %.3937.ph.i = phi i64 [ %i.fh, %.loopexit.i ], [ %i.afo, %.loopexit1142.loopexit1156.i ], [ %i.ic, %bb.ah ], [ %.lcssa164.unr, %.preheader.i.prol.loopexit ], [ %i.afg, %.preheader.i ] ; 3 uses
  %.pn.i = phi i32 [ 1, %.loopexit.i ], [ %i.aco, %.loopexit1142.loopexit1156.i ], [ 1, %bb.ah ], [ %i.aco, %.preheader.i ], [ %i.aco, %.preheader.i.prol.loopexit ]
  %.7931.ph.i = phi i32 [ %.0924.i, %.loopexit.i ], [ %i.acu, %.loopexit1142.loopexit1156.i ], [ %.0924.i, %bb.ah ], [ %i.acu, %.preheader.i ], [ %i.acu, %.preheader.i.prol.loopexit ] ; 2 uses
  %.39922.ph.i = phi ptr [ %.6889.i, %.loopexit.i ], [ %.38921.i, %.loopexit1142.loopexit1156.i ], [ %.9892.i, %bb.ah ], [ %.38921.i, %.preheader.i ], [ %.38921.i, %.preheader.i.prol.loopexit ] ; 3 uses
  %.54881.ph.i = phi i32 [ %.8835.i, %.loopexit.i ], [ %.53880.i, %.loopexit1142.loopexit1156.i ], [ %i.ho, %bb.ah ], [ %.53880.i, %.preheader.i ], [ %.53880.i, %.preheader.i.prol.loopexit ] ; 2 uses
  %.54.ph.i = phi i32 [ %.8819.i, %.loopexit.i ], [ %.53.i, %.loopexit1142.loopexit1156.i ], [ %.11822.i, %bb.ah ], [ %.53.i, %.preheader.i ], [ %.53.i, %.preheader.i.prol.loopexit ] ; 2 uses
  %.1933.ph.i = add i32 %.pn.i, %.0932.i          ; 2 uses
  %i.afp = icmp ult i64 %.3937.ph.i, %.130
  %i.afq = icmp ult ptr %.39922.ph.i, %2
  %i.afr = select i1 %i.afp, i1 %i.afq, i1 false
  br i1 %i.afr, label %bb.e, label %.loopexit1144.i

.loopexit1144.i:                                  ; preds = %.loopexit1142.i, %bb.ex
  %.541104.i = phi i32 [ %i.acb, %bb.ex ], [ %.54.ph.i, %.loopexit1142.i ] ; 2 uses
  %.548811102.i = phi i32 [ %i.aca, %bb.ex ], [ %.54881.ph.i, %.loopexit1142.i ] ; 3 uses
  %.399221100.i = phi ptr [ %.33916.i, %bb.ex ], [ %.39922.ph.i, %.loopexit1142.i ] ; 3 uses
  %i.afs = phi i32 [ %i.afm, %bb.ex ], [ %.7931.ph.i, %.loopexit1142.i ] ; 4 uses
  %.19331096.i = phi i32 [ %.0932.i, %bb.ex ], [ %.1933.ph.i, %.loopexit1142.i ] ; 4 uses
  %i.aft = phi i64 [ %.0934.i, %bb.ex ], [ %.3937.ph.i, %.loopexit1142.i ] ; 9 uses
  %.79451092.i = phi i32 [ %.4942.i, %bb.ex ], [ %.7945.ph.i, %.loopexit1142.i ]
  %.69521090.i = phi i32 [ %.3949.i, %bb.ex ], [ %.6952.ph.i, %.loopexit1142.i ]
  %.59581088.i = phi i32 [ %.2955.i, %bb.ex ], [ %.5958.ph.i, %.loopexit1142.i ]
  %i.afu = phi i32 [ %.2961.i, %bb.ex ], [ %.5964.ph.i, %.loopexit1142.i ] ; 2 uses
  %.79721084.i = phi i32 [ %i.afn, %bb.ex ], [ %.7972.ph.i, %.loopexit1142.i ]
  %i.afv = icmp ult i32 %.548811102.i, 16777216
  br i1 %i.afv, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %.loopexit1144.i
  %i.afw = shl nuw i32 %.548811102.i, 8
  %i.afx = shl i32 %.541104.i, 8
  %i.afy = getelementptr inbounds nuw i8, ptr %.399221100.i, i64 1
  %i.afz = load i8, ptr %.399221100.i, align 1, !tbaa !29
  %i.aga = zext i8 %i.afz to i32
  %i.agb = or disjoint i32 %i.afx, %i.aga
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %.loopexit1144.i
  %.40923.i = phi ptr [ %i.afy, %bb.ey ], [ %.399221100.i, %.loopexit1144.i ]
  %.55882.i = phi i32 [ %i.afw, %bb.ey ], [ %.548811102.i, %.loopexit1144.i ]
  %.55.i = phi i32 [ %i.agb, %bb.ey ], [ %.541104.i, %.loopexit1144.i ]
  store ptr %.40923.i, ptr %i.n, align 8, !tbaa !39
  store i32 %.55882.i, ptr %i.o, align 8, !tbaa !31
  store i32 %.55.i, ptr %i.p, align 4, !tbaa !30
  store i32 %i.afs, ptr %i.r, align 4, !tbaa !18
  store i64 %i.aft, ptr %i.l, align 8, !tbaa !23
  store i32 %.19331096.i, ptr %i.m, align 8, !tbaa !20
  store i32 %i.afu, ptr %i.d, align 4, !tbaa !27
  store i32 %.59581088.i, ptr %i.e, align 8, !tbaa !27
  store i32 %.69521090.i, ptr %i.f, align 4, !tbaa !27
  store i32 %.79451092.i, ptr %i.g, align 8, !tbaa !27
  store i32 %.79721084.i, ptr %i.c, align 8, !tbaa !40
  %i.agc = load i32, ptr %i.q, align 4, !tbaa !28 ; 4 uses
  %.not36 = icmp ult i32 %.19331096.i, %i.agc
  br i1 %.not36, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  store i32 %i.agc, ptr %i.a, align 4, !tbaa !21
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ez
  %i.agd = add i32 %i.afs, -1
  %or.cond.i = icmp ult i32 %i.agd, 273
  br i1 %or.cond.i, label %bb.fc, label %bb.fe

bb.fc:                                            ; preds = %bb.fb
  %i.age = load ptr, ptr %i.j, align 8, !tbaa !25 ; 6 uses
  %i.agf = load i64, ptr %i.k, align 8, !tbaa !26 ; 3 uses
  %i.agg = sub i64 %1, %i.aft
  %i.agh = zext nneg i32 %i.afs to i64
  %spec.select38.i = tail call i64 @llvm.umin.i64(i64 %i.agg, i64 %i.agh) ; 3 uses
  %spec.select.i = trunc nuw nsw i64 %spec.select38.i to i32 ; 6 uses
  %i.agi = load i32, ptr %i.a, align 4, !tbaa !21
  %i.agj = icmp ne i32 %i.agi, 0
  %i.agk = sub i32 %i.agc, %.19331096.i
  %.not36.i = icmp ugt i32 %i.agk, %spec.select.i
  %or.cond = select i1 %i.agj, i1 true, i1 %.not36.i
  br i1 %or.cond, label %._crit_edge42.i, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  store i32 %i.agc, ptr %i.a, align 4, !tbaa !21
  br label %._crit_edge42.i

._crit_edge42.i:                                  ; preds = %bb.fc, %bb.fd
  %i.agl = add i32 %.19331096.i, %spec.select.i
  store i32 %i.agl, ptr %i.m, align 8, !tbaa !20
  %i.agm = sub nsw i32 %i.afs, %spec.select.i
  store i32 %i.agm, ptr %i.r, align 4, !tbaa !18
  %.not3739.i = icmp eq i64 %spec.select38.i, 0
  br i1 %.not3739.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge42.i
  %i.agn = zext i32 %i.afu to i64                 ; 6 uses
  %xtraiter177 = and i32 %spec.select.i, 1
  %lcmp.mod178.not = icmp eq i32 %xtraiter177, 0
  br i1 %lcmp.mod178.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i
  %i.ago = add nsw i32 %spec.select.i, -1
  %i.agp = sub i64 %i.aft, %i.agn
  %i.agq = icmp ult i64 %i.aft, %i.agn
  %i.agr = select i1 %i.agq, i64 %i.agf, i64 0
  %i.ags = getelementptr i8, ptr %i.age, i64 %i.agp
  %i.agt = getelementptr i8, ptr %i.ags, i64 %i.agr
  %i.agu = load i8, ptr %i.agt, align 1, !tbaa !29
  %i.agv = getelementptr inbounds nuw i8, ptr %i.age, i64 %i.aft
  store i8 %i.agu, ptr %i.agv, align 1, !tbaa !29
  %i.agw = add i64 %i.aft, 1                      ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i
  %.lcssa172.unr = phi i64 [ poison, %.lr.ph.i ], [ %i.agw, %.prol.loopexit.unr-lcssa ]
  %.141.i.unr = phi i32 [ %spec.select.i, %.lr.ph.i ], [ %i.ago, %.prol.loopexit.unr-lcssa ]
  %.03340.i.unr = phi i64 [ %i.aft, %.lr.ph.i ], [ %i.agw, %.prol.loopexit.unr-lcssa ]
  %i.agx = icmp eq i64 %spec.select38.i, 1
  br i1 %i.agx, label %._crit_edge.i, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %.141.i = phi i32 [ %i.ahg, %.lr.ph.i.new ], [ %.141.i.unr, %.prol.loopexit ]
  %.03340.i = phi i64 [ %i.aho, %.lr.ph.i.new ], [ %.03340.i.unr, %.prol.loopexit ] ; 5 uses
  %i.agy = sub i64 %.03340.i, %i.agn
  %i.agz = icmp ult i64 %.03340.i, %i.agn
  %i.aha = select i1 %i.agz, i64 %i.agf, i64 0
  %i.ahb = getelementptr i8, ptr %i.age, i64 %i.agy
  %i.ahc = getelementptr i8, ptr %i.ahb, i64 %i.aha
  %i.ahd = load i8, ptr %i.ahc, align 1, !tbaa !29
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.age, i64 %.03340.i
  store i8 %i.ahd, ptr %i.ahe, align 1, !tbaa !29
  %i.ahf = add i64 %.03340.i, 1                   ; 3 uses
  %i.ahg = add nsw i32 %.141.i, -2                ; 2 uses
  %i.ahh = sub i64 %i.ahf, %i.agn
  %i.ahi = icmp ult i64 %i.ahf, %i.agn
  %i.ahj = select i1 %i.ahi, i64 %i.agf, i64 0
  %i.ahk = getelementptr i8, ptr %i.age, i64 %i.ahh
  %i.ahl = getelementptr i8, ptr %i.ahk, i64 %i.ahj
  %i.ahm = load i8, ptr %i.ahl, align 1, !tbaa !29
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.age, i64 %i.ahf
  store i8 %i.ahm, ptr %i.ahn, align 1, !tbaa !29
  %i.aho = add i64 %.03340.i, 2                   ; 2 uses
  %.not37.i.1 = icmp eq i32 %i.ahg, 0
  br i1 %.not37.i.1, label %._crit_edge.i, label %.lr.ph.i.new

._crit_edge.i:                                    ; preds = %.prol.loopexit, %.lr.ph.i.new, %._crit_edge42.i
  %.033.lcssa.i = phi i64 [ %i.aft, %._crit_edge42.i ], [ %.lcssa172.unr, %.prol.loopexit ], [ %i.aho, %.lr.ph.i.new ] ; 2 uses
  store i64 %.033.lcssa.i, ptr %i.l, align 8, !tbaa !23
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fb, %._crit_edge.i
  %i.ahp = phi i64 [ %i.aft, %bb.fb ], [ %.033.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.ahq = icmp ult i64 %i.ahp, %1
  br i1 %i.ahq, label %bb.ff, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %bb.fe
  %.pre68 = load i32, ptr %i.r, align 4, !tbaa !18
  br label %.critedge

bb.ff:                                            ; preds = %bb.fe
  %i.ahr = load ptr, ptr %i.n, align 8, !tbaa !39
  %i.ahs = icmp ult ptr %i.ahr, %2
  %.pre69 = load i32, ptr %i.r, align 4, !tbaa !18 ; 2 uses
  %i.aht = icmp ult i32 %.pre69, 274
  %or.cond140 = select i1 %i.ahs, i1 %i.aht, i1 false
  br i1 %or.cond140, label %bb.b, label %.critedge

.critedge:                                        ; preds = %bb.ff, %..critedge_crit_edge
  %i.ahu = phi i32 [ %.pre68, %..critedge_crit_edge ], [ %.pre69, %bb.ff ]
  %i.ahv = icmp ugt i32 %i.ahu, 274
  br i1 %i.ahv, label %bb.fg, label %LzmaDec_WriteRem.exit

bb.fg:                                            ; preds = %.critedge
  store i32 274, ptr %i.r, align 4, !tbaa !18
  br label %LzmaDec_WriteRem.exit

LzmaDec_WriteRem.exit:                            ; preds = %bb.es, %bb.et, %bb.ev, %bb.aa, %.critedge, %bb.fg
  %.2 = phi i32 [ 0, %.critedge ], [ 0, %bb.fg ], [ 1, %bb.aa ], [ 1, %bb.ev ], [ 1, %bb.et ], [ 1, %bb.es ]
  ret i32 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @LzmaDec_DecodeToBuf(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr noundef %3, ptr nofree noundef captures(none) %4, i32 noundef %5, ptr nofree noundef writeonly captures(none) %6) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load i64, ptr %2, align 8, !tbaa !24
  %i.c = load i64, ptr %4, align 8, !tbaa !24
  store i64 0, ptr %2, align 8, !tbaa !24
  store i64 0, ptr %4, align 8, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.048 = phi ptr [ %3, %bb.a ], [ %i.aa, %bb.e ] ; 2 uses
  %.047 = phi ptr [ %1, %bb.a ], [ %i.y, %bb.e ]  ; 2 uses
  %.045 = phi i64 [ %i.b, %bb.a ], [ %i.x, %bb.e ] ; 3 uses
  %.044 = phi i64 [ %i.c, %bb.a ], [ %i.z, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i64 %.044, ptr %i.a, align 8, !tbaa !24
  %i.g = load i64, ptr %i.d, align 8, !tbaa !23   ; 2 uses
  %i.h = load i64, ptr %i.e, align 8, !tbaa !26   ; 3 uses
  %i.i = icmp eq i64 %i.g, %i.h
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.d, align 8, !tbaa !23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = phi i64 [ 0, %bb.c ], [ %i.g, %bb.b ]    ; 5 uses
  %i.k = sub i64 %i.h, %i.j
  %i.l = icmp ugt i64 %.045, %i.k                 ; 2 uses
  %i.m = add i64 %i.j, %.045
  %.043 = select i1 %i.l, i64 %i.h, i64 %i.m
  %.042 = select i1 %i.l, i32 0, i32 %5
  %i.n = call i32 @LzmaDec_DecodeToDic(ptr noundef nonnull %0, i64 noundef %.043, ptr noundef %.048, ptr noundef nonnull %i.a, i32 noundef %.042, ptr noundef %6)
  %i.o = load i64, ptr %i.a, align 8, !tbaa !24   ; 3 uses
  %i.p = load i64, ptr %4, align 8, !tbaa !24
  %i.q = add i64 %i.p, %i.o
  store i64 %i.q, ptr %4, align 8, !tbaa !24
  %i.r = load i64, ptr %i.d, align 8, !tbaa !23   ; 2 uses
  %i.s = sub i64 %i.r, %i.j                       ; 4 uses
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !25
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.047, ptr align 1 %i.u, i64 %i.s, i1 false)
  %i.v = load i64, ptr %2, align 8, !tbaa !24
  %i.w = add i64 %i.v, %i.s
  store i64 %i.w, ptr %2, align 8, !tbaa !24
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.x = sub i64 %.045, %i.s                      ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.047, i64 %i.s
  %i.z = sub i64 %.044, %i.o
  %i.aa = getelementptr inbounds nuw i8, ptr %.048, i64 %i.o
  %i.ab = icmp ne i64 %i.r, %i.j
  %i.ac = icmp ne i64 %i.x, 0
  %or.cond.not = select i1 %i.ab, i1 %i.ac, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br i1 %or.cond.not, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.thread
  %.152 = phi i32 [ 1, %.thread ], [ 0, %bb.e ]
  ret i32 %.152
}

; Function Attrs: nounwind uwtable
define void @LzmaDec_FreeProbs(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34
  tail call void %i.b(ptr noundef %1, ptr noundef %i.d) #7
  store ptr null, ptr %i.c, align 8, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define void @LzmaDec_Free(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34
  tail call void %i.b(ptr noundef %1, ptr noundef %i.d) #7, !inline_history !44
  store ptr null, ptr %i.c, align 8, !tbaa !34
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25
  tail call void %i.e(ptr noundef %1, ptr noundef %i.g) #7, !inline_history !0
  store ptr null, ptr %i.f, align 8, !tbaa !25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 0, 5) i32 @LzmaProps_Decode(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp ult i32 %2, 5
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.c = load i32, ptr %i.b, align 1
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %i.c, i32 4096)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %spec.store.select, ptr %i.d, align 4, !tbaa !57
  %i.e = load i8, ptr %1, align 1, !tbaa !29      ; 4 uses
  %i.f = icmp ugt i8 %i.e, -32
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = urem i8 %i.e, 9
  %i.h = zext nneg i8 %i.g to i32
  store i32 %i.h, ptr %0, align 4, !tbaa !58
  %i.i = udiv i8 %i.e, 9
  %i.j = udiv i8 %i.e, 45
  %.zext = zext nneg i8 %i.j to i32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.zext, ptr %i.k, align 4, !tbaa !59
  %i.l = urem i8 %i.i, 5
  %.zext19 = zext nneg i8 %i.l to i32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.zext19, ptr %i.m, align 4, !tbaa !60
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 4, %bb.a ], [ 4, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 5) i32 @LzmaDec_AllocateProbs(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp ult i32 %2, 5
  br i1 %i.a, label %LzmaProps_Decode.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.c = load i32, ptr %i.b, align 1
  %spec.store.select.i = tail call i32 @llvm.umax.i32(i32 %i.c, i32 4096)
  %i.d = load i8, ptr %1, align 1, !tbaa !29      ; 4 uses
  %i.e = icmp ugt i8 %i.d, -32
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
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
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
  store i32 %i.g, ptr %0, align 8, !tbaa !27
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.zext19.i, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !27
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.zext.i, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !27
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %spec.store.select.i, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !27
  br label %LzmaProps_Decode.exit.thread

LzmaProps_Decode.exit.thread:                     ; preds = %bb.e, %bb.b, %bb.a, %bb.f
  %.2 = phi i32 [ 0, %bb.f ], [ 4, %bb.b ], [ 4, %bb.a ], [ 2, %bb.e ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define range(i32 0, 5) i32 @LzmaDec_Allocate(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp ult i32 %2, 5
  br i1 %i.a, label %LzmaProps_Decode.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.c = load i32, ptr %i.b, align 1
  %spec.store.select.i = tail call i32 @llvm.umax.i32(i32 %i.c, i32 4096) ; 2 uses
  %i.d = load i8, ptr %1, align 1, !tbaa !29      ; 4 uses
  %i.e = icmp ugt i8 %i.d, -32
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
  tail call void %i.s(ptr noundef %8, ptr noundef null) #7, !inline_history !61
  %i.t = load ptr, ptr %8, align 8, !tbaa !46
  %i.u = shl nuw nsw i32 %i.q, 1
  %i.v = zext nneg i32 %i.u to i64
  %i.w = tail call ptr %i.t(ptr noundef nonnull %8, i64 noundef %i.v) #7, !inline_history !62 ; 2 uses
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
!48 = distinct !{!48, !37, !38}
!49 = distinct !{!49, !37}
!50 = !{!"branch_weights", i32 4, i32 12}
!51 = distinct !{!51, !37, !38}
!52 = distinct !{!52, !37, !38}
!53 = distinct !{!53, !56}
!54 = distinct !{!54, !37}
!55 = !{!"branch_weights", i32 8, i32 24}
!56 = !{!"llvm.loop.unroll.disable"}
!57 = !{!11, !8, i64 12}
!58 = !{!11, !8, i64 0}
!59 = !{!11, !8, i64 8}
!60 = !{!11, !8, i64 4}
!61 = distinct !{ptr @LzmaDec_AllocateProbs, null, ptr @LzmaDec_FreeProbs}
!62 = distinct !{ptr @LzmaDec_AllocateProbs, null}
end_hunk_1
