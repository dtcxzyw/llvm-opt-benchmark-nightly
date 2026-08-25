Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/LzmaDec?download=true
inline.NumInlined: 18
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@LzmaDec_InitDicAndState:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 0, ptr %i.c, align 4, !tbaa !16
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.d, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 0, ptr %i.e, align 4, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 1, ptr %i.f, align 4, !tbaa !19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not8 = icmp eq i32 %2, 0
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 1, ptr %i.g, align 4, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @LzmaDec_Init(ptr nofree noundef writeonly captures(none) initializes((48, 56), (64, 72), (92, 104), (108, 112)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.a, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 1, ptr %i.b, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 0, ptr %i.c, align 4, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 0, ptr %i.d, align 4, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.e, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 0, ptr %i.f, align 4, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 1, ptr %i.g, align 4, !tbaa !19
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @LzmaDec_DecodeToDic(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = load i64, ptr %3, align 8, !tbaa !21
  store i64 0, ptr %3, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !15   ; 3 uses
  %i.e = add i32 %i.d, -1
  %or.cond.i = icmp ult i32 %i.e, 273
  br i1 %or.cond.i, label %bb.b, label %LzmaDec_WriteRem.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !20   ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load i64, ptr %i.j, align 8, !tbaa !23   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.m = load i32, ptr %i.l, align 4, !tbaa !24
  %i.n = sub i64 %1, %i.i
  %i.o = zext nneg i32 %i.d to i64
  %spec.select38.i = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.o) ; 3 uses
  %spec.select.i = trunc nuw nsw i64 %spec.select38.i to i32 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !18
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.c, label %._crit_edge42.i

._crit_edge42.i:                                  ; preds = %bb.b
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !17
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !25   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = load i32, ptr %i.u, align 8, !tbaa !17   ; 3 uses
  %i.w = sub i32 %i.t, %i.v
  %.not36.i = icmp ugt i32 %i.w, %spec.select.i
  br i1 %.not36.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.t, ptr %i.p, align 4, !tbaa !18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge42.i
  %i.x = phi i32 [ %.pre.i, %._crit_edge42.i ], [ %i.v, %bb.d ], [ %i.v, %bb.c ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.z = add i32 %i.x, %spec.select.i
  store i32 %i.z, ptr %i.y, align 8, !tbaa !17
  %i.aa = sub nsw i32 %i.d, %spec.select.i
  store i32 %i.aa, ptr %i.c, align 4, !tbaa !15
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
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !26
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.i
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !26
  %i.ak = add i64 %i.i, 1                         ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i
  %.lcssa347.unr = phi i64 [ poison, %.lr.ph.i ], [ %i.ak, %.prol.loopexit.unr-lcssa ]
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
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !26
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 %.03340.i
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !26
  %i.at = add i64 %.03340.i, 1                    ; 3 uses
  %i.au = add i32 %.141.i, -2                     ; 2 uses
  %i.av = sub i64 %i.at, %i.ab
  %i.aw = icmp ult i64 %i.at, %i.ab
  %i.ax = select i1 %i.aw, i64 %i.k, i64 0
  %i.ay = getelementptr i8, ptr %i.g, i64 %i.av
  %i.az = getelementptr i8, ptr %i.ay, i64 %i.ax
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !26
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.at
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !26
  %i.bc = add i64 %.03340.i, 2                    ; 2 uses
  %.not37.i.1 = icmp eq i32 %i.au, 0
  br i1 %.not37.i.1, label %._crit_edge.i, label %.lr.ph.i.new

._crit_edge.i:                                    ; preds = %.prol.loopexit, %.lr.ph.i.new, %bb.e
  %.033.lcssa.i = phi i64 [ %i.i, %bb.e ], [ %.lcssa347.unr, %.prol.loopexit ], [ %i.bc, %.lr.ph.i.new ]
  store i64 %.033.lcssa.i, ptr %i.h, align 8, !tbaa !20
  br label %LzmaDec_WriteRem.exit

LzmaDec_WriteRem.exit:                            ; preds = %bb.a, %._crit_edge.i
  store i32 0, ptr %5, align 4, !tbaa !24
  %i.bd = load i32, ptr %i.c, align 4, !tbaa !15  ; 2 uses
  %.not223 = icmp eq i32 %i.bd, 274
  br i1 %.not223, label %._crit_edge227, label %.lr.ph226

.lr.ph226:                                        ; preds = %LzmaDec_WriteRem.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 11 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 13 uses
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
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph226, %bb.an
  %i.by = phi i32 [ %i.bd, %.lr.ph226 ], [ %i.gw, %bb.an ]
  %.0127225 = phi i64 [ %i.b, %.lr.ph226 ], [ %.6, %bb.an ] ; 8 uses
  %.0139224 = phi ptr [ %2, %.lr.ph226 ], [ %.6145, %bb.an ] ; 9 uses
  %i.bz = load i32, ptr %i.be, align 8, !tbaa !8
  %.not151 = icmp eq i32 %i.bz, 0
  br i1 %.not151, label %bb.r, label %.preheader189

.preheader189:                                    ; preds = %bb.f
  %.not152209 = icmp eq i64 %.0127225, 0
  %.pre.a = load i32, ptr %i.bf, align 4, !tbaa !16 ; 11 uses
  br i1 %.not152209, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader189
  %6 = icmp ult i32 %.pre.a, 5
  br i1 %6, label %.lr.ph302, label %bb.p

.lr.ph302:                                        ; preds = %.lr.ph
  %i.ca = getelementptr inbounds nuw i8, ptr %.0139224, i64 1 ; 3 uses
  %i.cb = load i8, ptr %.0139224, align 1, !tbaa !26
  %7 = add nuw nsw i32 %.pre.a, 1                 ; 3 uses
  store i32 %7, ptr %i.bf, align 4, !tbaa !16
  %8 = zext nneg i32 %.pre.a to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bg, i64 %8
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !26
  %i.cd = load i64, ptr %3, align 8, !tbaa !21
  %i.ce = add i64 %i.cd, 1
  store i64 %i.ce, ptr %3, align 8, !tbaa !21
  %i.cf = add i64 %.0127225, -1                   ; 2 uses
  %.not152 = icmp eq i64 %i.cf, 0
  br i1 %.not152, label %.critedge, label %bb.g

bb.g:                                             ; preds = %.lr.ph302
  %exitcond.not = icmp eq i32 %.pre.a, 4
  br i1 %exitcond.not, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cg = getelementptr inbounds nuw i8, ptr %.0139224, i64 2 ; 3 uses
  %i.ch = load i8, ptr %i.ca, align 1, !tbaa !26
  %9 = add nuw nsw i32 %.pre.a, 2                 ; 3 uses
  store i32 %9, ptr %i.bf, align 4, !tbaa !16
  %10 = zext nneg i32 %7 to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bg, i64 %10
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !26
  %i.cj = load i64, ptr %3, align 8, !tbaa !21
  %i.ck = add i64 %i.cj, 1
  store i64 %i.ck, ptr %3, align 8, !tbaa !21
  %i.cl = add i64 %.0127225, -2                   ; 2 uses
  %.not152.1 = icmp eq i64 %i.cl, 0
  br i1 %.not152.1, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %11 = icmp ult i32 %.pre.a, 3
  br i1 %11, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.0139224, i64 3 ; 3 uses
  %i.cn = load i8, ptr %i.cg, align 1, !tbaa !26
  %12 = add nuw nsw i32 %.pre.a, 3                ; 3 uses
  store i32 %12, ptr %i.bf, align 4, !tbaa !16
  %13 = zext nneg i32 %9 to i64
  %i.co = getelementptr inbounds nuw i8, ptr %i.bg, i64 %13
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !26
  %i.cp = load i64, ptr %3, align 8, !tbaa !21
  %i.cq = add i64 %i.cp, 1
  store i64 %i.cq, ptr %3, align 8, !tbaa !21
  %i.cr = add i64 %.0127225, -3                   ; 2 uses
  %.not152.2 = icmp eq i64 %i.cr, 0
  br i1 %.not152.2, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %exitcond.not.2 = icmp eq i32 %.pre.a, 2
  br i1 %exitcond.not.2, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cs = getelementptr inbounds nuw i8, ptr %.0139224, i64 4 ; 3 uses
  %i.ct = load i8, ptr %i.cm, align 1, !tbaa !26
  %14 = or disjoint i32 %.pre.a, 4                ; 3 uses
  store i32 %14, ptr %i.bf, align 4, !tbaa !16
  %15 = zext nneg i32 %12 to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bg, i64 %15
  store i8 %i.ct, ptr %i.cu, align 1, !tbaa !26
  %i.cv = load i64, ptr %3, align 8, !tbaa !21
  %i.cw = add i64 %i.cv, 1
  store i64 %i.cw, ptr %3, align 8, !tbaa !21
  %i.cx = add i64 %.0127225, -4                   ; 2 uses
  %.not152.3 = icmp eq i64 %i.cx, 0
  br i1 %.not152.3, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %exitcond.not.3 = icmp eq i32 %.pre.a, 0
  br i1 %exitcond.not.3, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.cy = getelementptr inbounds nuw i8, ptr %.0139224, i64 5 ; 2 uses
  %i.cz = load i8, ptr %i.cs, align 1, !tbaa !26
  store i32 5, ptr %i.bf, align 4, !tbaa !16
  %16 = zext nneg i32 %14 to i64
  %i.da = getelementptr inbounds nuw i8, ptr %i.bg, i64 %16
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !26
  %i.db = load i64, ptr %3, align 8, !tbaa !21
  %i.dc = add i64 %i.db, 1
  store i64 %i.dc, ptr %3, align 8, !tbaa !21
  %i.dd = add i64 %.0127225, -5                   ; 2 uses
  %.not152.4 = icmp eq i64 %i.dd, 0
  br i1 %.not152.4, label %.critedge, label %bb.p

.critedge:                                        ; preds = %.lr.ph302, %bb.h, %bb.j, %bb.l, %bb.n, %.preheader189
  %17 = phi i32 [ %.pre.a, %.preheader189 ], [ %7, %.lr.ph302 ], [ %9, %bb.h ], [ %12, %bb.j ], [ %14, %bb.l ], [ 5, %bb.n ]
  %.1140.lcssa = phi ptr [ %.0139224, %.preheader189 ], [ %i.ca, %.lr.ph302 ], [ %i.cg, %bb.h ], [ %i.cm, %bb.j ], [ %i.cs, %bb.l ], [ %i.cy, %bb.n ]
  %i.de = icmp ult i32 %17, 5
  br i1 %i.de, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.critedge
  store i32 3, ptr %5, align 4, !tbaa !24
  br label %.thread182

bb.p:                                             ; preds = %.lr.ph, %bb.g, %bb.i, %bb.k, %bb.m, %bb.n, %.critedge
  %.1128.lcssa266 = phi i64 [ 0, %.critedge ], [ %.0127225, %.lr.ph ], [ %i.cf, %bb.g ], [ %i.cl, %bb.i ], [ %i.cr, %bb.k ], [ %i.cx, %bb.m ], [ %i.dd, %bb.n ]
  %.1140.lcssa265 = phi ptr [ %.1140.lcssa, %.critedge ], [ %.0139224, %.lr.ph ], [ %i.ca, %bb.g ], [ %i.cg, %bb.i ], [ %i.cm, %bb.k ], [ %i.cs, %bb.m ], [ %i.cy, %bb.n ]
  %i.df = load i8, ptr %i.bg, align 8, !tbaa !26
  %.not153 = icmp eq i8 %i.df, 0
  br i1 %.not153, label %bb.q, label %.thread182

bb.q:                                             ; preds = %bb.p
  %i.dg = load i8, ptr %i.bh, align 1, !tbaa !26
  %i.dh = zext i8 %i.dg to i32
  %i.di = shl nuw i32 %i.dh, 24
  %i.dj = load i8, ptr %i.bi, align 2, !tbaa !26
  %i.dk = zext i8 %i.dj to i32
  %i.dl = shl nuw nsw i32 %i.dk, 16
  %i.dm = or disjoint i32 %i.dl, %i.di
  %i.dn = load i8, ptr %i.bj, align 1, !tbaa !26
  %i.do = zext i8 %i.dn to i32
  %i.dp = shl nuw nsw i32 %i.do, 8
  %i.dq = or disjoint i32 %i.dm, %i.dp
  %i.dr = load i8, ptr %i.bk, align 4, !tbaa !26
  %i.ds = zext i8 %i.dr to i32
  %i.dt = or disjoint i32 %i.dq, %i.ds
  store i32 %i.dt, ptr %i.bl, align 4, !tbaa !27
  store i32 -1, ptr %i.bm, align 8, !tbaa !28
  store i32 0, ptr %i.be, align 8, !tbaa !8
  store i32 0, ptr %i.bf, align 4, !tbaa !16
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.f
  %.2141 = phi ptr [ %.1140.lcssa265, %bb.q ], [ %.0139224, %bb.f ] ; 13 uses
  %.2129 = phi i64 [ %.1128.lcssa266, %bb.q ], [ %.0127225, %bb.f ]
  %.2129.fr = freeze i64 %.2129                   ; 10 uses
  %.2141309 = ptrtoaddr ptr %.2141 to i64
  %i.du = load i64, ptr %i.bn, align 8, !tbaa !20
  %.not154 = icmp uge i64 %i.du, %1               ; 5 uses
  br i1 %.not154, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.dv = icmp eq i32 %i.by, 0
  br i1 %i.dv, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %i.dw = load i32, ptr %i.bl, align 4, !tbaa !27
  %i.dx = icmp eq i32 %i.dw, 0
  br i1 %i.dx, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 4, ptr %5, align 4, !tbaa !24
  br label %.thread182

bb.v:                                             ; preds = %bb.t
  br i1 %i.bo, label %.loopexit, label %bb.x

.thread:                                          ; preds = %bb.s
  br i1 %i.bo, label %.loopexit, label %bb.w

.loopexit:                                        ; preds = %bb.v, %.thread
  store i32 2, ptr %5, align 4, !tbaa !24
  br label %.thread182

bb.w:                                             ; preds = %.thread
  store i32 2, ptr %5, align 4, !tbaa !24
  br label %.thread182

bb.x:                                             ; preds = %bb.v, %bb.r
  %i.dy = load i32, ptr %i.bp, align 4, !tbaa !19
  %.not156 = icmp eq i32 %i.dy, 0
  br i1 %.not156, label %bb.y, label %iter.check

iter.check:                                       ; preds = %bb.x
  %i.dz = load i32, ptr %0, align 8, !tbaa !29
  %i.ea = load i32, ptr %i.bq, align 4, !tbaa !30
  %i.eb = add i32 %i.ea, %i.dz
  %i.ec = shl i32 768, %i.eb
  %i.ed = add nuw i32 %i.ec, 1846
  %i.ee = load ptr, ptr %i.br, align 8, !tbaa !31 ; 4 uses
  %wide.trip.count.i = zext i32 %i.ed to i64      ; 3 uses
  %n.vec314 = add nsw i64 %wide.trip.count.i, -6  ; 2 uses
  br label %vector.body315

vector.body315:                                   ; preds = %vector.body315, %iter.check
  %index316 = phi i64 [ 0, %iter.check ], [ %index.next317, %vector.body315 ] ; 2 uses
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %i.ee, i64 %index316 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  store <8 x i16> splat (i16 1024), ptr %i.ef, align 2, !tbaa !32
  store <8 x i16> splat (i16 1024), ptr %i.eg, align 2, !tbaa !32
  %index.next317 = add nuw i64 %index316, 16      ; 2 uses
  %i.eh = icmp eq i64 %index.next317, %n.vec314
  br i1 %i.eh, label %vec.epilog.vector.body, label %vector.body315, !llvm.loop !34

vec.epilog.vector.body:                           ; preds = %vector.body315
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %i.ee, i64 %n.vec314
  store <4 x i16> splat (i16 1024), ptr %i.ei, align 2, !tbaa !32
  %i.ej = getelementptr [2 x i8], ptr %i.ee, i64 %wide.trip.count.i
  %i.ek = getelementptr i8, ptr %i.ej, i64 -4
  store i16 1024, ptr %i.ek, align 2, !tbaa !32
  %i.el = getelementptr [2 x i8], ptr %i.ee, i64 %wide.trip.count.i
  %i.em = getelementptr i8, ptr %i.el, i64 -2
  store i16 1024, ptr %i.em, align 2, !tbaa !32
  store i32 1, ptr %i.bs, align 8, !tbaa !24
  store <4 x i32> <i32 0, i32 1, i32 1, i32 1>, ptr %i.bt, align 8, !tbaa !24
  store i32 0, ptr %i.bp, align 4, !tbaa !19
  br label %bb.y

bb.y:                                             ; preds = %vec.epilog.vector.body, %bb.x
  %i.en = load i32, ptr %i.bf, align 4, !tbaa !16 ; 4 uses
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %bb.z, label %.preheader

.preheader:                                       ; preds = %bb.y
  %i.ep = icmp ult i32 %i.en, 20                  ; 2 uses
  %i.eq = icmp ne i64 %.2129.fr, 0
  %i.er = and i1 %i.ep, %i.eq
  br i1 %i.er, label %.lr.ph218.preheader, label %._crit_edge

.lr.ph218.preheader:                              ; preds = %.preheader
  %i.es = zext nneg i32 %i.en to i64              ; 9 uses
  %i.et = add i64 %.2129.fr, -1
  %i.eu = sub nsw i64 19, %i.es
  %i.ev = tail call i64 @llvm.umin.i64(i64 %i.et, i64 %i.eu)
  %i.ew = add i64 %i.ev, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.ew, 8
  br i1 %min.iters.check, label %.lr.ph218.preheader325, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph218.preheader
  %i.ex = add i64 %i.bw, %i.es
  %i.ey = sub i64 %.2141309, %i.ex
  %diff.check = icmp ugt i64 %i.ey, -8
  br i1 %diff.check, label %.lr.ph218.preheader325, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ew, -8                      ; 5 uses
  %i.ez = add i64 %n.vec, %i.es                   ; 2 uses
  %i.fa = add nuw nsw i64 %i.es, 3
  %i.fb = getelementptr inbounds nuw i8, ptr %.2141, i64 4
  %wide.load = load <4 x i8>, ptr %.2141, align 1, !tbaa !26
  %wide.load310 = load <4 x i8>, ptr %i.fb, align 1, !tbaa !26
  %i.fc = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.es ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  store <4 x i8> %wide.load, ptr %i.fc, align 1, !tbaa !26
  store <4 x i8> %wide.load310, ptr %i.fd, align 1, !tbaa !26
  %i.fe = icmp eq i64 %n.vec, 8
  br i1 %i.fe, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.ff = add nuw nsw i64 %i.es, 11
  %i.fg = getelementptr inbounds nuw i8, ptr %.2141, i64 8
  %i.fh = getelementptr inbounds nuw i8, ptr %.2141, i64 12
  %wide.load.1 = load <4 x i8>, ptr %i.fg, align 1, !tbaa !26
  %wide.load310.1 = load <4 x i8>, ptr %i.fh, align 1, !tbaa !26
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.es ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  store <4 x i8> %wide.load.1, ptr %i.fi, align 1, !tbaa !26
  store <4 x i8> %wide.load310.1, ptr %i.fj, align 1, !tbaa !26
  br label %middle.block

middle.block:                                     ; preds = %vector.body.1, %vector.ph
  %.lcssa328 = phi i64 [ %i.fa, %vector.ph ], [ %i.ff, %vector.body.1 ]
  %i.fk = icmp samesign ult i64 %.lcssa328, 15
  %cmp.n = icmp eq i64 %i.ew, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.lr.ph218.preheader325

.lr.ph218.preheader325:                           ; preds = %vector.memcheck, %.lr.ph218.preheader, %middle.block
  %indvars.iv252.ph = phi i64 [ %i.es, %vector.memcheck ], [ %i.es, %.lr.ph218.preheader ], [ %i.ez, %middle.block ]
  %indvars.iv250.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph218.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph218

bb.z:                                             ; preds = %bb.y
  %i.fl = icmp ult i64 %.2129.fr, 20
  %or.cond = or i1 %i.fl, %.not154
  br i1 %or.cond, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %i.fm = tail call fastcc i32 @LzmaDec_TryDummy(ptr noundef nonnull %0, ptr noundef %.2141, i64 noundef %.2129.fr) ; 2 uses
  %i.fn = icmp eq i32 %i.fm, 0
  br i1 %i.fn, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bg, ptr align 1 %.2141, i64 %.2129.fr, i1 false)
  %i.fo = trunc i64 %.2129.fr to i32
  store i32 %i.fo, ptr %i.bf, align 4, !tbaa !16
  %i.fp = load i64, ptr %3, align 8, !tbaa !21
  %i.fq = add i64 %i.fp, %.2129.fr
  store i64 %i.fq, ptr %3, align 8, !tbaa !21
  store i32 3, ptr %5, align 4, !tbaa !24
  br label %.thread182

bb.ac:                                            ; preds = %bb.aa
  %i.fr = icmp ne i32 %i.fm, 2
  %or.cond7 = and i1 %.not154, %i.fr
  br i1 %or.cond7, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  store i32 2, ptr %5, align 4, !tbaa !24
  br label %.thread182

bb.ae:                                            ; preds = %bb.z
  %i.fs = getelementptr inbounds nuw i8, ptr %.2141, i64 %.2129.fr
  %i.ft = getelementptr inbounds i8, ptr %i.fs, i64 -20
  br label %bb.af

bb.af:                                            ; preds = %bb.ac, %bb.ae
  %.1 = phi ptr [ %i.ft, %bb.ae ], [ %.2141, %bb.ac ]
  store ptr %.2141, ptr %i.bu, align 8, !tbaa !37
  %i.fu = tail call fastcc i32 @LzmaDec_DecodeReal2(ptr noundef nonnull %0, i64 noundef %1, ptr noundef %.1)
  %.not159 = icmp eq i32 %i.fu, 0
  br i1 %.not159, label %bb.ag, label %.thread182

bb.ag:                                            ; preds = %bb.af
  %i.fv = load ptr, ptr %i.bu, align 8, !tbaa !37
  %i.fw = ptrtoint ptr %i.fv to i64
  %i.fx = ptrtoint ptr %.2141 to i64
  %i.fy = sub i64 %i.fw, %i.fx                    ; 2 uses
  %i.fz = load i64, ptr %3, align 8, !tbaa !21
  %i.ga = add i64 %i.fy, %i.fz
  store i64 %i.ga, ptr %3, align 8, !tbaa !21
  br label %bb.an

.lr.ph218:                                        ; preds = %.lr.ph218.preheader325, %.lr.ph218
  %indvars.iv252 = phi i64 [ %indvars.iv.next253, %.lr.ph218 ], [ %indvars.iv252.ph, %.lr.ph218.preheader325 ] ; 3 uses
  %indvars.iv250 = phi i64 [ %indvars.iv.next251, %.lr.ph218 ], [ %indvars.iv250.ph, %.lr.ph218.preheader325 ] ; 2 uses
  %indvars.iv.next251 = add nuw nsw i64 %indvars.iv250, 1 ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.2141, i64 %indvars.iv250
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !26
  %indvars.iv.next253 = add nuw nsw i64 %indvars.iv252, 1 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv252
  store i8 %i.gc, ptr %i.gd, align 1, !tbaa !26
  %i.ge = icmp samesign ult i64 %indvars.iv252, 19 ; 2 uses
  %i.gf = icmp ugt i64 %.2129.fr, %indvars.iv.next251
  %i.gg = select i1 %i.ge, i1 %i.gf, i1 false
  br i1 %i.gg, label %.lr.ph218, label %._crit_edge.loopexit, !llvm.loop !38
end_hunk_0
