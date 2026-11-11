Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/regexec?download=true
inline.NumInlined: 8
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lmat = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr }
%struct.smat = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64 }

; Function Attrs: nounwind uwtable
define range(i32 0, 17) i32 @cli_regexec(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.lmat, align 8               ; 34 uses
  %6 = alloca %struct.smat, align 8               ; 20 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 16 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !56
  %.not = icmp eq i32 %i.c, 62053
  br i1 %.not, label %bb.b, label %bb.eb

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !57
  %.not17 = icmp eq i32 %i.e, 53829
  br i1 %.not17, label %bb.c, label %bb.eb

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.g = load i32, ptr %i.f, align 8, !tbaa !58
  %i.h = and i32 %i.g, 4
  %.not18 = icmp eq i32 %i.h, 0
  br i1 %.not18, label %bb.d, label %bb.eb

bb.d:                                             ; preds = %bb.c
  %i.i = and i32 %4, 7                            ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !14   ; 2 uses
  %i.l = icmp ult i64 %i.k, 65
  %i.m = ptrtoaddr ptr %1 to i64                  ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 2 uses
  %.not157.i = icmp samesign ult i32 %i.i, 4      ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.bp

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.q = load i64, ptr %i.n, align 8, !tbaa !59
  %i.r = add nsw i64 %i.q, 1                      ; 11 uses
  %i.s = load i64, ptr %i.o, align 8, !tbaa !60   ; 11 uses
  %i.t = load i32, ptr %i.p, align 4, !tbaa !15
  %i.u = and i32 %i.t, 4
  %.not.i = icmp eq i32 %i.u, 0
  %spec.select.i = select i1 %.not.i, i64 %2, i64 0 ; 4 uses
  br i1 %.not157.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i64, ptr %3, align 8, !tbaa !17
  %i.w = getelementptr inbounds i8, ptr %1, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !18
  %.pre241.i = ptrtoaddr ptr %i.w to i64
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.z = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0137229.pre-phi.i = phi i64 [ %i.m, %bb.g ], [ %.pre241.i, %bb.f ]
  %.0137.i = phi ptr [ %1, %bb.g ], [ %i.w, %bb.f ] ; 7 uses
  %.pn.i = phi i64 [ %i.z, %bb.g ], [ %i.y, %bb.f ] ; 2 uses
  %.0.i = getelementptr inbounds i8, ptr %1, i64 %.pn.i ; 9 uses
  %i.aa = icmp ult ptr %.0.i, %.0137.i
  br i1 %i.aa, label %smatcher.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !61 ; 3 uses
  %.not158.i = icmp eq ptr %i.ac, null
  br i1 %.not158.i, label %bb.n, label %.preheader187.i

.preheader187.i:                                  ; preds = %bb.i
  %i.ad = icmp ult ptr %.0137.i, %.0.i
  br i1 %i.ad, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader187.i
  %i.ae = load i8, ptr %i.ac, align 1, !tbaa !19
  %i.af = ptrtoint ptr %.0.i to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %7 = sub i64 %i.m, %.0137229.pre-phi.i
  %8 = getelementptr i8, ptr %.0137.i, i64 %7
  %scevgep.i = getelementptr i8, ptr %8, i64 %.pn.i ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %.lr.ph.i
  %.0138207.i = phi ptr [ %.0137.i, %.lr.ph.i ], [ %i.ao, %bb.m ] ; 5 uses
  %i.ah = load i8, ptr %.0138207.i, align 1, !tbaa !19
  %i.ai = icmp eq i8 %i.ah, %i.ae
  br i1 %i.ai, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.aj = ptrtoint ptr %.0138207.i to i64
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = load i32, ptr %i.ag, align 8, !tbaa !62
  %i.am = sext i32 %i.al to i64                   ; 2 uses
  %.not159.i = icmp slt i64 %i.ak, %i.am
  br i1 %.not159.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %.0138207.i, ptr nonnull %i.ac, i64 %i.am)
  %i.an = icmp eq i32 %bcmp.i, 0
  br i1 %i.an, label %._crit_edge.i, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %.0138207.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.ao, %scevgep.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.j

._crit_edge.i:                                    ; preds = %bb.m, %bb.l, %.preheader187.i
  %.0138.lcssa.i = phi ptr [ %.0137.i, %.preheader187.i ], [ %scevgep.i, %bb.m ], [ %.0138207.i, %bb.l ]
  %i.ap = icmp eq ptr %.0138.lcssa.i, %.0.i
  br i1 %i.ap, label %smatcher.exit, label %bb.n

bb.n:                                             ; preds = %._crit_edge.i, %bb.i
  store ptr %i.b, ptr %6, align 8, !tbaa !23
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i32 %i.i, ptr %i.aq, align 8, !tbaa !24
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr null, ptr %i.ar, align 8, !tbaa !25
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 6 uses
  store ptr null, ptr %i.as, align 8, !tbaa !26
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store ptr %1, ptr %i.at, align 8, !tbaa !27
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  store ptr %.0137.i, ptr %i.au, align 8, !tbaa !28
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  store ptr %.0.i, ptr %i.av, align 8, !tbaa !29
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.ax = shl nuw i64 1, %i.r                     ; 2 uses
  %i.ay = shl nuw i64 1, %i.s
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 6 uses
  %i.ba = icmp eq i64 %spec.select.i, 0           ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 92 ; 3 uses
  %i.bc = icmp eq i64 %spec.select.i, 1           ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aw, i8 0, i64 32, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.bf, %bb.n
  %.1.i = phi ptr [ %.0137.i, %bb.n ], [ %i.fy, %bb.bf ] ; 4 uses
  %i.be = load ptr, ptr %i.at, align 8, !tbaa !27 ; 2 uses
  %i.bf = icmp eq ptr %.1.i, %i.be
  br i1 %i.bf, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = load ptr, ptr %i.au, align 8, !tbaa !28
  %i.bh = icmp eq ptr %.1.i, %i.bg
  br i1 %i.bh, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bi = load i32, ptr %i.aq, align 8, !tbaa !24
  %i.bj = and i32 %i.bi, 1
  %.not.i.i = icmp eq i32 %i.bj, 0
  br i1 %.not.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bk = getelementptr inbounds i8, ptr %.1.i, i64 -1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !19
  %i.bm = sext i8 %i.bl to i32
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.o
  %.0111.i.i = phi i32 [ %i.bm, %bb.r ], [ 128, %bb.q ], [ 128, %bb.o ]
  %i.bn = load ptr, ptr %6, align 8, !tbaa !23    ; 9 uses
  %i.bo = call fastcc i64 @sstep(ptr noundef %i.bn, i64 noundef range(i64 -9223372036854775807, -9223372036854775808) %i.r, i64 noundef %i.s, i64 noundef %i.ax, i32 noundef 132, i64 noundef %i.ax) ; 3 uses
  %i.bp = load ptr, ptr %i.av, align 8, !tbaa !29
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 36 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 68
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 72
  %i.bt = load i32, ptr %i.aq, align 8            ; 2 uses
  %i.bu = and i32 %i.bt, 1
  %.not122.i.i = icmp eq i32 %i.bu, 0
  %i.bv = and i32 %i.bt, 2
  %.not124.i.i = icmp eq i32 %i.bv, 0
  br label %bb.t

bb.t:                                             ; preds = %bb.am, %bb.s
  %.0114.i.i = phi i64 [ %i.bo, %bb.s ], [ %i.du, %bb.am ] ; 3 uses
  %.0113.i.i = phi ptr [ %.1.i, %bb.s ], [ %i.dv, %bb.am ] ; 5 uses
  %.1112.i.i = phi i32 [ %.0111.i.i, %bb.s ], [ %i.bz, %bb.am ] ; 7 uses
  %.0.i.i = phi ptr [ null, %bb.s ], [ %spec.select.i.i, %bb.am ]
  %i.bw = icmp eq ptr %.0113.i.i, %i.bp
  br i1 %i.bw, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bx = load i8, ptr %.0113.i.i, align 1, !tbaa !19
  %i.by = sext i8 %i.bx to i32
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bz = phi i32 [ %i.by, %bb.u ], [ 128, %bb.t ] ; 10 uses
  %i.ca = icmp eq i64 %.0114.i.i, %i.bo
  %spec.select.i.i = select i1 %i.ca, ptr %.0113.i.i, ptr %.0.i.i ; 5 uses
  switch i32 %.1112.i.i, label %bb.z [
    i32 10, label %bb.w
    i32 128, label %bb.x
  ]

bb.w:                                             ; preds = %bb.v
  %i.cb = load i32, ptr %i.bq, align 4, !tbaa !15
  %i.cc = and i32 %i.cb, 8
  %.not121.i.i = icmp eq i32 %i.cc, 0
  br i1 %.not121.i.i, label %bb.z, label %bb.y

bb.x:                                             ; preds = %bb.v
  br i1 %.not122.i.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cd = load i32, ptr %i.br, align 4, !tbaa !30
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w, %bb.v
  %i.ce = phi i32 [ 131, %bb.y ], [ 130, %bb.x ], [ 130, %bb.v ], [ 130, %bb.w ]
  %.0108.i.i = phi i32 [ 129, %bb.y ], [ 0, %bb.x ], [ 0, %bb.v ], [ 0, %bb.w ] ; 3 uses
  %.0106.i.i = phi i32 [ %i.cd, %bb.y ], [ 0, %bb.x ], [ 0, %bb.v ], [ 0, %bb.w ] ; 4 uses
  switch i32 %i.bz, label %bb.ad [
    i32 10, label %bb.aa
    i32 128, label %bb.ab
  ]

bb.aa:                                            ; preds = %bb.z
  %i.cf = load i32, ptr %i.bq, align 4, !tbaa !15
  %i.cg = and i32 %i.cf, 8
  %.not123.i.i = icmp eq i32 %i.cg, 0
  br i1 %.not123.i.i, label %bb.ad, label %bb.ac

bb.ab:                                            ; preds = %bb.z
  br i1 %.not124.i.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ch = load i32, ptr %i.bs, align 8, !tbaa !31
  %i.ci = add nsw i32 %i.ch, %.0106.i.i
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z
  %.1109.i.i = phi i32 [ %i.ce, %bb.ac ], [ %.0108.i.i, %bb.ab ], [ %.0108.i.i, %bb.z ], [ %.0108.i.i, %bb.aa ] ; 4 uses
  %.1107.i.i = phi i32 [ %i.ci, %bb.ac ], [ %.0106.i.i, %bb.ab ], [ %.0106.i.i, %bb.z ], [ %.0106.i.i, %bb.aa ] ; 2 uses
  %i.cj = icmp sgt i32 %.1107.i.i, 0
  br i1 %i.cj, label %.preheader.i.i, label %.loopexit.i.i

.preheader.i.i:                                   ; preds = %bb.ad, %.preheader.i.i
  %.1115.i.i = phi i64 [ %i.ck, %.preheader.i.i ], [ %.0114.i.i, %bb.ad ] ; 2 uses
  %.2.i.i = phi i32 [ %i.cl, %.preheader.i.i ], [ %.1107.i.i, %bb.ad ] ; 2 uses
  %i.ck = call fastcc i64 @sstep(ptr noundef %i.bn, i64 noundef range(i64 -9223372036854775807, -9223372036854775808) %i.r, i64 noundef %i.s, i64 noundef %.1115.i.i, i32 noundef %.1109.i.i, i64 noundef %.1115.i.i) ; 2 uses
  %i.cl = add nsw i32 %.2.i.i, -1
  %.old17.i.i = icmp samesign ugt i32 %.2.i.i, 1
  br i1 %.old17.i.i, label %.preheader.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.preheader.i.i, %bb.ad
  %.2116.i.i = phi i64 [ %.0114.i.i, %bb.ad ], [ %i.ck, %.preheader.i.i ] ; 4 uses
  %i.cm = icmp eq i32 %.1109.i.i, 129
  br i1 %i.cm, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %.loopexit.i.i
  %.not125.i.i = icmp eq i32 %.1112.i.i, 128
  br i1 %.not125.i.i, label %.thread.thread.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cn = tail call ptr @__ctype_b_loc() #15
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !33 ; 3 uses
  %i.cp = and i32 %.1112.i.i, 255
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.cq
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !35
  %i.ct = and i16 %i.cs, 8                        ; 2 uses
  %i.cu = icmp eq i16 %i.ct, 0
  %i.cv = icmp ne i32 %.1112.i.i, 95
  %or.cond.not128.i.i = select i1 %i.cu, i1 %i.cv, i1 false
  %i.cw = icmp ne i32 %i.bz, 128
  %or.cond3.i.i = select i1 %or.cond.not128.i.i, i1 %i.cw, i1 false
  br i1 %or.cond3.i.i, label %bb.ah, label %.thread135.i.i

bb.ag:                                            ; preds = %.loopexit.i.i
  %.old2.not.i.i = icmp eq i32 %i.bz, 128
  br i1 %.old2.not.i.i, label %bb.ai, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.ag
  %.pre147.i.i = tail call ptr @__ctype_b_loc() #15
  %.pre.i = load ptr, ptr %.pre147.i.i, align 8, !tbaa !33
  br label %bb.ah

bb.ah:                                            ; preds = %._crit_edge.i.i, %bb.af
end_hunk_0
begin_hunk_1_@cli_regexec:bb.a
  %.not164.i = icmp eq i32 %i.ez, 0
  br i1 %.not164.i, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %._crit_edge218.i
  %i.fa = load i32, ptr %i.aq, align 8, !tbaa !24
  %i.fb = and i32 %i.fa, 1024
  %.not165.i = icmp eq i32 %i.fb, 0
  br i1 %.not165.i, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.fc = load ptr, ptr %i.az, align 8, !tbaa !63
  %i.fd = call fastcc ptr @sdissect(ptr noundef %6, ptr noundef %i.fc, ptr noundef nonnull %.lcssa188.i, i64 noundef %i.r, i64 noundef %i.s)
  br label %bb.bc

bb.ax:                                            ; preds = %bb.av, %._crit_edge218.i
  %i.fe = load i64, ptr %i.bd, align 8, !tbaa !66 ; 3 uses
  %i.ff = icmp sgt i64 %i.fe, 0
  %i.fg = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.fh = icmp eq ptr %i.fg, null
  %or.cond.i = select i1 %i.ff, i1 %i.fh, i1 false
  br i1 %or.cond.i, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.fi = shl i64 %i.fe, 3
  %i.fj = add i64 %i.fi, 8
  %i.fk = call ptr @cli_max_malloc(i64 noundef %i.fj) #13 ; 2 uses
  store ptr %i.fk, ptr %i.as, align 8, !tbaa !26
  %.pre236.i = load i64, ptr %i.bd, align 8, !tbaa !66
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.fl = phi ptr [ %i.fk, %bb.ay ], [ %i.fg, %bb.ax ]
  %i.fm = phi i64 [ %.pre236.i, %bb.ay ], [ %i.fe, %bb.ax ]
  %i.fn = icmp sgt i64 %i.fm, 0
  %i.fo = icmp eq ptr %i.fl, null
  %or.cond173.i = select i1 %i.fn, i1 %i.fo, i1 false
  br i1 %or.cond173.i, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.fp = load ptr, ptr %i.ar, align 8, !tbaa !25
  br label %.sink.split.i

bb.bb:                                            ; preds = %bb.az
  %i.fq = load ptr, ptr %i.az, align 8, !tbaa !63
  %i.fr = call fastcc ptr @sbackref(ptr noundef %6, ptr noundef %i.fq, ptr noundef %.lcssa188.i, i64 noundef %i.r, i64 noundef %i.s, i64 noundef 0, i32 noundef 0)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.aw
  %.1139.i = phi ptr [ %i.fr, %bb.bb ], [ %i.fd, %bb.aw ]
  %.not166.i = icmp eq ptr %.1139.i, null
  br i1 %.not166.i, label %.preheader183.i, label %.loopexit.i

.preheader183.i:                                  ; preds = %bb.bc, %bb.be
  %.0142219.i = phi ptr [ %i.fu, %bb.be ], [ %.lcssa188.i, %bb.bc ] ; 3 uses
  %i.fs = load ptr, ptr %i.az, align 8, !tbaa !63 ; 5 uses
  %.not168.i = icmp ugt ptr %.0142219.i, %i.fs
  br i1 %.not168.i, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %.preheader183.i
  %i.ft = getelementptr inbounds i8, ptr %.0142219.i, i64 -1
  %i.fu = call fastcc ptr @sslow(ptr noundef %6, ptr noundef %i.fs, ptr noundef nonnull %i.ft, i64 noundef %i.r, i64 noundef %i.s) ; 4 uses
  %i.fv = icmp eq ptr %i.fu, null
  br i1 %i.fv, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fw = call fastcc ptr @sbackref(ptr noundef %6, ptr noundef %i.fs, ptr noundef %i.fu, i64 noundef %i.r, i64 noundef %i.s, i64 noundef 0, i32 noundef 0)
  %.not167.i = icmp eq ptr %i.fw, null
  br i1 %.not167.i, label %.preheader183.i, label %.loopexit.i

bb.bf:                                            ; preds = %bb.bd, %.preheader183.i
  %.1143.ph.i = phi ptr [ null, %bb.bd ], [ %.0142219.i, %.preheader183.i ]
  %i.fx = icmp eq ptr %i.fs, %.0.i
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fs, i64 1
  br i1 %i.fx, label %.loopexit.i, label %bb.o

.loopexit.i:                                      ; preds = %bb.bf, %bb.bc, %bb.be
  %.2144.i = phi ptr [ %i.fu, %bb.be ], [ %.1143.ph.i, %bb.bf ], [ %.lcssa188.i, %bb.bc ]
  br i1 %i.ba, label %.thread182.i, label %.thread178.i

.thread178.i:                                     ; preds = %.loopexit.i
  %.pre237.i = load ptr, ptr %i.az, align 8, !tbaa !63
  %.pre238.i = load ptr, ptr %i.at, align 8, !tbaa !27
  %i.fz = ptrtoint ptr %.pre237.i to i64
  %i.ga = ptrtoint ptr %.pre238.i to i64          ; 2 uses
  %i.gb = sub i64 %i.fz, %i.ga
  store i64 %i.gb, ptr %3, align 8, !tbaa !17
  %i.gc = ptrtoint ptr %.2144.i to i64
  %i.gd = sub i64 %i.gc, %i.ga
  %i.ge = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.gd, ptr %i.ge, align 8, !tbaa !18
  br i1 %i.bc, label %.thread182.i, label %.preheader.i

.preheader.i:                                     ; preds = %.thread178.i
  %i.gf = load ptr, ptr %6, align 8, !tbaa !23
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 96 ; 3 uses
  %i.gh = load ptr, ptr %i.ar, align 8            ; 3 uses
  %.pre240.i = load i64, ptr %i.gg, align 8, !tbaa !65 ; 2 uses
  %i.gi = add i64 %spec.select.i, -1              ; 3 uses
  %xtraiter244 = and i64 %i.gi, 1
  %i.gj = icmp eq i64 %spec.select.i, 2
  br i1 %i.gj, label %.epil.preheader243, label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.preheader.i
  %unroll_iter249 = and i64 %i.gi, -2
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bm, %.preheader.i.new
  %i.gk = phi i64 [ %.pre240.i, %.preheader.i.new ], [ %i.gq, %bb.bm ] ; 2 uses
  %indvars.iv.i = phi i64 [ 1, %.preheader.i.new ], [ %indvars.iv.next.i.1, %bb.bm ] ; 6 uses
  %niter250 = phi i64 [ 0, %.preheader.i.new ], [ %niter250.next.1, %bb.bm ]
  %.not170.i = icmp ult i64 %i.gk, %indvars.iv.i
  %i.gl = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.i ; 2 uses
  br i1 %.not170.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gm = getelementptr inbounds nuw [16 x i8], ptr %i.gh, i64 %indvars.iv.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gl, ptr noundef nonnull align 8 dereferenceable(16) %i.gm, i64 16, i1 false), !tbaa.struct !67
  %.pre239.i = load i64, ptr %i.gg, align 8, !tbaa !65
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gl, i8 -1, i64 16, i1 false)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.gn = phi i64 [ %.pre239.i, %bb.bh ], [ %i.gk, %bb.bi ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not170.i.1.not = icmp ugt i64 %i.gn, %indvars.iv.i
  %i.go = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.next.i ; 2 uses
  br i1 %.not170.i.1.not, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.gp = getelementptr inbounds nuw [16 x i8], ptr %i.gh, i64 %indvars.iv.next.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.go, ptr noundef nonnull align 8 dereferenceable(16) %i.gp, i64 16, i1 false), !tbaa.struct !67
  %.pre239.i.1 = load i64, ptr %i.gg, align 8, !tbaa !65
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.go, i8 -1, i64 16, i1 false)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.gq = phi i64 [ %.pre239.i.1, %bb.bk ], [ %i.gn, %bb.bl ] ; 2 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter250.next.1 = add i64 %niter250, 2         ; 2 uses
  %niter250.ncmp.1 = icmp eq i64 %niter250.next.1, %unroll_iter249
  br i1 %niter250.ncmp.1, label %.thread182.i.loopexit.unr-lcssa, label %bb.bg

.thread182.i.loopexit.unr-lcssa:                  ; preds = %bb.bm
  %lcmp.mod247.not = icmp eq i64 %xtraiter244, 0
  br i1 %lcmp.mod247.not, label %.thread182.i, label %.epil.preheader243

.epil.preheader243:                               ; preds = %.thread182.i.loopexit.unr-lcssa, %.preheader.i
  %.epil.init246 = phi i64 [ %.pre240.i, %.preheader.i ], [ %i.gq, %.thread182.i.loopexit.unr-lcssa ]
  %indvars.iv.i.epil.init = phi i64 [ 1, %.preheader.i ], [ %indvars.iv.next.i.1, %.thread182.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod248 = trunc i64 %i.gi to i1
  call void @llvm.assume(i1 %lcmp.mod248)
  %.not170.i.epil = icmp ult i64 %.epil.init246, %indvars.iv.i.epil.init
  %i.gr = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.i.epil.init ; 2 uses
  br i1 %.not170.i.epil, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %.epil.preheader243
  %i.gs = getelementptr inbounds nuw [16 x i8], ptr %i.gh, i64 %indvars.iv.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gr, ptr noundef nonnull align 8 dereferenceable(16) %i.gs, i64 16, i1 false), !tbaa.struct !67
  br label %.thread182.i

bb.bo:                                            ; preds = %.epil.preheader243
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gr, i8 -1, i64 16, i1 false)
  br label %.thread182.i

.thread182.i:                                     ; preds = %bb.ap, %.thread182.i.loopexit.unr-lcssa, %bb.bo, %bb.bn, %.thread178.i, %.loopexit.i, %.thread178.thread.i
  %i.gt = load ptr, ptr %i.ar, align 8, !tbaa !25
  call void @free(ptr noundef %i.gt) #13
  %i.gu = load ptr, ptr %i.as, align 8, !tbaa !26
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.thread182.i, %bb.ba, %bb.au, %bb.an
  %.sink.i = phi ptr [ %i.gu, %.thread182.i ], [ %i.fp, %bb.ba ], [ %i.ey, %bb.au ], [ %i.dx, %bb.an ]
  %.0145.ph.i = phi i32 [ 0, %.thread182.i ], [ 12, %bb.ba ], [ 12, %bb.au ], [ 1, %bb.an ]
  call void @free(ptr noundef %.sink.i) #13
  br label %smatcher.exit

smatcher.exit:                                    ; preds = %bb.h, %._crit_edge.i, %.sink.split.i
  %.0145.i = phi i32 [ 1, %._crit_edge.i ], [ 16, %bb.h ], [ %.0145.ph.i, %.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %bb.eb

bb.bp:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.gv = load i64, ptr %i.n, align 8, !tbaa !59
  %i.gw = add nsw i64 %i.gv, 1                    ; 11 uses
  %i.gx = load i64, ptr %i.o, align 8, !tbaa !60  ; 11 uses
  %i.gy = load i32, ptr %i.p, align 4, !tbaa !15
  %i.gz = and i32 %i.gy, 4
  %.not.i19 = icmp eq i32 %i.gz, 0
  %spec.select.i20 = select i1 %.not.i19, i64 %2, i64 0 ; 5 uses
  br i1 %.not157.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ha = load i64, ptr %3, align 8, !tbaa !17
  %i.hb = getelementptr inbounds i8, ptr %1, i64 %i.ha ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !18
  %.pre260.i = ptrtoaddr ptr %i.hb to i64
  br label %bb.bs

bb.br:                                            ; preds = %bb.bp
  %i.he = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #14
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.0158249.pre-phi.i = phi i64 [ %i.m, %bb.br ], [ %.pre260.i, %bb.bq ]
  %.0158.i = phi ptr [ %1, %bb.br ], [ %i.hb, %bb.bq ] ; 7 uses
  %.pn.i21 = phi i64 [ %i.he, %bb.br ], [ %i.hd, %bb.bq ] ; 2 uses
  %.0.i22 = getelementptr inbounds i8, ptr %1, i64 %.pn.i21 ; 9 uses
  %i.hf = icmp ult ptr %.0.i22, %.0158.i
  br i1 %i.hf, label %lmatcher.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hg = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !61 ; 3 uses
  %.not179.i = icmp eq ptr %i.hh, null
  br i1 %.not179.i, label %bb.by, label %.preheader208.i

.preheader208.i:                                  ; preds = %bb.bt
  %i.hi = icmp ult ptr %.0158.i, %.0.i22
  br i1 %i.hi, label %.lr.ph.i55, label %._crit_edge.i23

.lr.ph.i55:                                       ; preds = %.preheader208.i
  %i.hj = load i8, ptr %i.hh, align 1, !tbaa !19
  %i.hk = ptrtoint ptr %.0.i22 to i64
  %i.hl = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %9 = sub i64 %i.m, %.0158249.pre-phi.i
  %10 = getelementptr i8, ptr %.0158.i, i64 %9
  %scevgep.i56 = getelementptr i8, ptr %10, i64 %.pn.i21 ; 2 uses
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bx, %.lr.ph.i55
  %.0159227.i = phi ptr [ %.0158.i, %.lr.ph.i55 ], [ %i.ht, %bb.bx ] ; 5 uses
  %i.hm = load i8, ptr %.0159227.i, align 1, !tbaa !19
  %i.hn = icmp eq i8 %i.hm, %i.hj
  br i1 %i.hn, label %bb.bv, label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  %i.ho = ptrtoint ptr %.0159227.i to i64
  %i.hp = sub i64 %i.hk, %i.ho
  %i.hq = load i32, ptr %i.hl, align 8, !tbaa !62
  %i.hr = sext i32 %i.hq to i64                   ; 2 uses
  %.not180.i = icmp slt i64 %i.hp, %i.hr
  br i1 %.not180.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %bcmp.i58 = tail call i32 @bcmp(ptr nonnull %.0159227.i, ptr nonnull %i.hh, i64 %i.hr)
  %i.hs = icmp eq i32 %bcmp.i58, 0
  br i1 %i.hs, label %._crit_edge.i23, label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv, %bb.bu
  %i.ht = getelementptr inbounds nuw i8, ptr %.0159227.i, i64 1 ; 2 uses
  %exitcond.not.i57 = icmp eq ptr %i.ht, %scevgep.i56
  br i1 %exitcond.not.i57, label %._crit_edge.i23, label %bb.bu

._crit_edge.i23:                                  ; preds = %bb.bx, %bb.bw, %.preheader208.i
  %.0159.lcssa.i = phi ptr [ %.0158.i, %.preheader208.i ], [ %scevgep.i56, %bb.bx ], [ %.0159227.i, %bb.bw ]
  %i.hu = icmp eq ptr %.0159.lcssa.i, %.0.i22
  br i1 %i.hu, label %lmatcher.exit, label %bb.by

bb.by:                                            ; preds = %._crit_edge.i23, %bb.bt
  store ptr %i.b, ptr %5, align 8, !tbaa !38
  %i.hv = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  store i32 %i.i, ptr %i.hv, align 8, !tbaa !39
  %i.hw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr null, ptr %i.hw, align 8, !tbaa !40
  %i.hx = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 6 uses
  store ptr null, ptr %i.hx, align 8, !tbaa !41
  %i.hy = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  store ptr %1, ptr %i.hy, align 8, !tbaa !42
  %i.hz = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store ptr %.0158.i, ptr %i.hz, align 8, !tbaa !43
  %i.ia = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  store ptr %.0.i22, ptr %i.ia, align 8, !tbaa !44
  %i.ib = shl nsw i64 %i.k, 2
  %i.ic = tail call ptr @cli_max_malloc(i64 noundef %i.ib) #13 ; 6 uses
  %i.id = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 2 uses
  store ptr %i.ic, ptr %i.id, align 8, !tbaa !68
  %i.ie = icmp eq ptr %i.ic, null
  br i1 %i.ie, label %lmatcher.exit, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.if = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.ig = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  store ptr %i.ic, ptr %i.ig, align 8, !tbaa !45
  %i.ih = load i64, ptr %i.j, align 8, !tbaa !14  ; 4 uses
  %i.ii = getelementptr inbounds i8, ptr %i.ic, i64 %i.ih
  %i.ij = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 2 uses
  store ptr %i.ii, ptr %i.ij, align 8, !tbaa !69
  %i.ik = shl nsw i64 %i.ih, 1
  %i.il = getelementptr inbounds i8, ptr %i.ic, i64 %i.ik
  %i.im = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  store ptr %i.il, ptr %i.im, align 8, !tbaa !46
  store i64 4, ptr %i.if, align 8, !tbaa !70
  %i.in = mul nsw i64 %i.ih, 3
  %i.io = getelementptr inbounds i8, ptr %i.ic, i64 %i.in ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %5, i64 104
  store ptr %i.io, ptr %i.ip, align 8, !tbaa !47
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.io, i8 0, i64 %i.ih, i1 false)
  %i.iq = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 8 uses
  %i.ir = icmp eq i64 %spec.select.i20, 0         ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.b, i64 92 ; 3 uses
  %i.it = icmp eq i64 %spec.select.i20, 1
  %i.iu = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  br label %bb.ca

bb.ca:                                            ; preds = %bb.dr, %bb.bz
  %.1.i24 = phi ptr [ %.0158.i, %bb.bz ], [ %i.ok, %bb.dr ] ; 4 uses
  %i.iv = load ptr, ptr %i.ig, align 8, !tbaa !45 ; 14 uses
  %i.iw = load ptr, ptr %i.ij, align 8, !tbaa !69 ; 3 uses
  %i.ix = load ptr, ptr %i.im, align 8, !tbaa !46 ; 2 uses
  %i.iy = load ptr, ptr %i.hy, align 8, !tbaa !42
  %i.iz = icmp eq ptr %.1.i24, %i.iy
  br i1 %i.iz, label %bb.ce, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ja = load ptr, ptr %i.hz, align 8, !tbaa !43
  %i.jb = icmp eq ptr %.1.i24, %i.ja
  br i1 %i.jb, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.jc = load i32, ptr %i.hv, align 8, !tbaa !39
  %i.jd = and i32 %i.jc, 1
  %.not.i.i54 = icmp eq i32 %i.jd, 0
  br i1 %.not.i.i54, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.je = getelementptr inbounds i8, ptr %.1.i24, i64 -1
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !19
  %i.jg = sext i8 %i.jf to i32
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc, %bb.ca
  %.0120.i.i = phi i32 [ %i.jg, %bb.cd ], [ 128, %bb.cc ], [ 128, %bb.ca ]
  %i.jh = load ptr, ptr %5, align 8, !tbaa !38
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 40
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !14
  call void @llvm.memset.p0.i64(ptr align 1 %i.iv, i8 0, i64 %i.jj, i1 false)
  %i.jk = getelementptr inbounds i8, ptr %i.iv, i64 %i.gw
  store i8 1, ptr %i.jk, align 1, !tbaa !19
  %i.jl = load ptr, ptr %5, align 8, !tbaa !38
  %i.jm = call fastcc ptr @lstep(ptr noundef %i.jl, i64 noundef range(i64 -9223372036854775807, -9223372036854775808) %i.gw, i64 noundef %i.gx, ptr noundef %i.iv, i32 noundef 132, ptr noundef %i.iv) ; 0 uses
  %i.jn = load ptr, ptr %5, align 8, !tbaa !38
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 40
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.iw, ptr align 1 %i.iv, i64 %i.jp, i1 false)
  %i.jq = getelementptr inbounds i8, ptr %i.iv, i64 %i.gx ; 2 uses
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cy, %bb.ce
  %.0122.i.i = phi ptr [ %.1.i24, %bb.ce ], [ %i.ml, %bb.cy ] ; 5 uses
  %.1121.i.i = phi i32 [ %.0120.i.i, %bb.ce ], [ %i.jv, %bb.cy ] ; 7 uses
  %.0.i.i25 = phi ptr [ null, %bb.ce ], [ %spec.select.i.i26, %bb.cy ]
  %i.jr = load ptr, ptr %i.ia, align 8, !tbaa !44
  %i.js = icmp eq ptr %.0122.i.i, %i.jr
  br i1 %i.js, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.jt = load i8, ptr %.0122.i.i, align 1, !tbaa !19
  %i.ju = sext i8 %i.jt to i32
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.jv = phi i32 [ %i.ju, %bb.cg ], [ 128, %bb.cf ] ; 10 uses
  %i.jw = load ptr, ptr %5, align 8, !tbaa !38    ; 5 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 40
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !14
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %i.iv, ptr %i.iw, i64 %i.jy)
  %i.jz = icmp eq i32 %bcmp.i.i, 0
  %spec.select.i.i26 = select i1 %i.jz, ptr %.0122.i.i, ptr %.0.i.i25 ; 3 uses
  switch i32 %.1121.i.i, label %bb.cl [
    i32 10, label %bb.ci
    i32 128, label %bb.cj
  ]

bb.ci:                                            ; preds = %bb.ch
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jw, i64 36
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !15
  %i.kc = and i32 %i.kb, 8
  %.not130.i.i53 = icmp eq i32 %i.kc, 0
  br i1 %.not130.i.i53, label %bb.cl, label %bb.ck

bb.cj:                                            ; preds = %bb.ch
  %i.kd = load i32, ptr %i.hv, align 8, !tbaa !39
  %i.ke = and i32 %i.kd, 1
  %.not131.i.i27 = icmp eq i32 %i.ke, 0
  br i1 %.not131.i.i27, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jw, i64 68
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !30
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj, %bb.ci, %bb.ch
  %i.kh = phi i32 [ 131, %bb.ck ], [ 130, %bb.cj ], [ 130, %bb.ch ], [ 130, %bb.ci ]
  %.0117.i.i = phi i32 [ 129, %bb.ck ], [ 0, %bb.cj ], [ 0, %bb.ch ], [ 0, %bb.ci ] ; 3 uses
  %.0115.i.i = phi i32 [ %i.kg, %bb.ck ], [ 0, %bb.cj ], [ 0, %bb.ch ], [ 0, %bb.ci ] ; 4 uses
  switch i32 %i.jv, label %bb.cp [
    i32 10, label %bb.cm
    i32 128, label %bb.cn
  ]

bb.cm:                                            ; preds = %bb.cl
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jw, i64 36
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !15
  %i.kk = and i32 %i.kj, 8
  %.not132.i.i = icmp eq i32 %i.kk, 0
  br i1 %.not132.i.i, label %bb.cp, label %bb.co

bb.cn:                                            ; preds = %bb.cl
  %i.kl = load i32, ptr %i.hv, align 8, !tbaa !39
  %i.km = and i32 %i.kl, 2
  %.not133.i.i = icmp eq i32 %i.km, 0
  br i1 %.not133.i.i, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jw, i64 72
  %i.ko = load i32, ptr %i.kn, align 8, !tbaa !31
  %i.kp = add nsw i32 %i.ko, %.0115.i.i
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn, %bb.cm, %bb.cl
  %.1118.i.i = phi i32 [ %i.kh, %bb.co ], [ %.0117.i.i, %bb.cn ], [ %.0117.i.i, %bb.cl ], [ %.0117.i.i, %bb.cm ] ; 4 uses
  %.1116.i.i = phi i32 [ %i.kp, %bb.co ], [ %.0115.i.i, %bb.cn ], [ %.0115.i.i, %bb.cl ], [ %.0115.i.i, %bb.cm ] ; 2 uses
  %i.kq = icmp sgt i32 %.1116.i.i, 0
  br i1 %i.kq, label %.preheader.i.i50, label %.loopexit.i.i28

.preheader.i.i50:                                 ; preds = %bb.cp, %.preheader.i.i50
  %.2.i.i51 = phi i32 [ %i.kt, %.preheader.i.i50 ], [ %.1116.i.i, %bb.cp ] ; 2 uses
end_hunk_1
