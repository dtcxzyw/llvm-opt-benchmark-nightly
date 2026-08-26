Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/localtime?download=true
inline.NumInlined: 55
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@llvm.memmove.p0.p0.i64

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #13

; Function Attrs: nofree nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef ptr @timesub(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) unnamed_addr #14 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %2, align 8
  %i.c = zext i32 %i.b to i64
  %i.d = add nsw i64 %i.c, -1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %indvars.iv.next157 = phi i64 [ %i.d, %bb.b ], [ -1, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24680
  %indvars158 = trunc i64 %indvars.iv.next157 to i32 ; 2 uses
  %i.f = icmp sgt i32 %indvars158, -1
  br i1 %i.f, label %.lr.ph.preheader182, label %.loopexit.loopexit

.lr.ph.preheader182:                              ; preds = %bb.c
  %i.g = load i64, ptr %0, align 8                ; 4 uses
  br label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv.next159, -1 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 2 uses
  %i.h = icmp sgt i32 %indvars, -1
  br i1 %i.h, label %.lr.ph, label %.loopexit.loopexit, !llvm.loop !60

.lr.ph:                                           ; preds = %.lr.ph.preheader182, %bb.d
  %indvars160 = phi i32 [ %indvars, %bb.d ], [ %indvars158, %.lr.ph.preheader182 ]
  %indvars.iv.next159 = phi i64 [ %indvars.iv.next, %bb.d ], [ %indvars.iv.next157, %.lr.ph.preheader182 ] ; 2 uses
  %i.i = and i64 %indvars.iv.next159, 2147483647
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.i ; 3 uses
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %.not = icmp slt i64 %i.g, %i.k
  br i1 %.not, label %bb.d, label %bb.e, !llvm.loop !60

bb.e:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load i64, ptr %i.l, align 8              ; 3 uses
  %i.n = icmp eq i64 %i.g, %i.k
  br i1 %i.n, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.o = icmp eq i32 %indvars160, 0
  br i1 %i.o, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds i8, ptr %i.j, i64 -8
  %i.q = load i64, ptr %i.p, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.r = phi i64 [ %i.q, %bb.g ], [ 0, %bb.f ]
  %i.s = icmp slt i64 %i.r, %i.m
  %i.t = zext i1 %i.s to i32
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.d, %bb.c
  %.pre = load i64, ptr %0, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.e, %bb.h
  %i.u = phi i64 [ %i.g, %bb.e ], [ %i.g, %bb.h ], [ %.pre, %.loopexit.loopexit ] ; 2 uses
  %.079 = phi i64 [ %i.m, %bb.e ], [ %i.m, %bb.h ], [ 0, %.loopexit.loopexit ] ; 3 uses
  %.078 = phi i32 [ 0, %bb.e ], [ %i.t, %bb.h ], [ 0, %.loopexit.loopexit ]
  %i.v = sdiv i64 %i.u, 86400
  %i.w = srem i64 %i.u, 86400                     ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.v, %.loopexit
  %.016 = phi i32 [ 1970, %.loopexit ], [ %i.as, %bb.v ] ; 13 uses
  %.076 = phi i64 [ %i.v, %.loopexit ], [ %i.cd, %bb.v ] ; 7 uses
  %i.x = icmp slt i64 %.076, 0                    ; 2 uses
  br i1 %i.x, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = and i32 %.016, 3
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.aa = srem i32 %.016, 100
  %.not92 = icmp eq i32 %i.aa, 0
  br i1 %.not92, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ab = srem i32 %.016, 400
  %i.ac = icmp eq i32 %i.ab, 0
  %i.ad = zext i1 %i.ac to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.j
  %i.ae = phi i64 [ 0, %bb.j ], [ 1, %bb.k ], [ %i.ad, %bb.l ]
  %i.af = getelementptr inbounds nuw [4 x i8], ptr @year_lengths, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = sext i32 %i.ag to i64
  %.not93 = icmp slt i64 %.076, %i.ah
  br i1 %.not93, label %bb.w, label %.critedge

.critedge:                                        ; preds = %bb.i, %bb.m
  %i.ai = add i64 %.076, 785979015533
  %or.cond = icmp ult i64 %i.ai, 1571958030701
  br i1 %or.cond, label %bb.n, label %.thread

bb.n:                                             ; preds = %.critedge
  %i.aj = sdiv i64 %.076, 366
  %i.ak = trunc nsw i64 %i.aj to i32
  %.076.off = add nsw i64 %.076, 365
  %i.al = icmp ult i64 %.076.off, 731
  %i.am = select i1 %i.x, i32 -1, i32 1
  %spec.select = select i1 %i.al, i32 %i.am, i32 %i.ak ; 3 uses
  %i.an = icmp sgt i32 %.016, -1
  br i1 %i.an, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ao = sub nuw nsw i32 2147483647, %.016
  %i.ap = icmp sgt i32 %spec.select, %i.ao
  br i1 %i.ap, label %.thread, label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.aq = sub nsw i32 -2147483648, %.016
  %i.ar = icmp slt i32 %spec.select, %i.aq
  br i1 %i.ar, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.as = add i32 %spec.select, %.016             ; 4 uses
  %i.at = add i32 %i.as, -1                       ; 4 uses
  %i.au = icmp slt i32 %i.at, 0
  br i1 %i.au, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.av = sub nsw i32 0, %i.as                    ; 3 uses
  %i.aw = lshr i32 %i.av, 2
  %i.ax = udiv i32 %i.av, 100
  %i.ay = sub nsw i32 %i.aw, %i.ax
  %i.az = udiv i32 %i.av, 400
  %i.ba = add nsw i32 %i.ay, %i.az
  %i.bb = xor i32 %i.ba, -1
  br label %leaps_thru_end_of.exit

bb.s:                                             ; preds = %bb.q
  %i.bc = lshr i32 %i.at, 2
  %i.bd = udiv i32 %i.at, 100
  %i.be = sub nsw i32 %i.bc, %i.bd
  %i.bf = udiv i32 %i.at, 400
  %i.bg = add nsw i32 %i.be, %i.bf
  br label %leaps_thru_end_of.exit

leaps_thru_end_of.exit:                           ; preds = %bb.r, %bb.s
  %i.bh = phi i32 [ %i.bb, %bb.r ], [ %i.bg, %bb.s ]
  %i.bi = add i32 %.016, -1                       ; 4 uses
  %i.bj = icmp slt i32 %i.bi, 0
  br i1 %i.bj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %leaps_thru_end_of.exit
  %i.bk = sub nsw i32 0, %.016                    ; 3 uses
  %i.bl = lshr i32 %i.bk, 2
  %i.bm = udiv i32 %i.bk, 100
  %i.bn = sub nsw i32 %i.bl, %i.bm
  %i.bo = udiv i32 %i.bk, 400
  %i.bp = add nsw i32 %i.bn, %i.bo
  %i.bq = xor i32 %i.bp, -1
  br label %bb.v

bb.u:                                             ; preds = %leaps_thru_end_of.exit
  %i.br = lshr i32 %i.bi, 2
  %i.bs = udiv i32 %i.bi, 100
  %i.bt = sub nsw i32 %i.br, %i.bs
  %i.bu = udiv i32 %i.bi, 400
  %i.bv = add nsw i32 %i.bt, %i.bu
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bw = phi i32 [ %i.bq, %bb.t ], [ %i.bv, %bb.u ]
  %i.bx = sub nsw i32 %i.bh, %i.bw
  %i.by = sext i32 %i.as to i64
  %i.bz = sext i32 %.016 to i64
  %i.ca = sub nsw i64 %i.by, %i.bz
  %.neg = mul nsw i64 %i.ca, -365
  %i.cb = add nsw i64 %.neg, %.076
  %i.cc = sext i32 %i.bx to i64
  %i.cd = sub i64 %i.cb, %i.cc
  br label %bb.i

bb.w:                                             ; preds = %bb.m
  %i.ce = trunc nuw nsw i64 %.076 to i32          ; 2 uses
  %i.cf = sub i64 %1, %.079
  %i.cg = add i64 %i.cf, %i.w                     ; 3 uses
  %i.ch = icmp slt i64 %i.cg, 0
  br i1 %i.ch, label %.lr.ph.preheader, label %.preheader53

.lr.ph.preheader:                                 ; preds = %bb.w
  %i.ci = add i64 %i.w, %1
  %i.cj = tail call i64 @llvm.umax.i64(i64 %i.cg, i64 -86400)
  %i.ck = add i64 %.079, %i.cj
  %i.cl = add i64 %i.ck, 86399
  %i.cm = add i64 %i.w, %1
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = udiv i64 %i.cn, 86400                   ; 2 uses
  %i.cp = mul nuw i64 %i.co, 86400
  %i.cq = add i64 %i.ci, %i.cp
  %i.cr = add i64 %i.cq, 86400
  %i.cs = sub i64 %i.cr, %.079
  %i.ct = trunc i64 %i.co to i32
  %i.cu = xor i32 %i.ct, -1
  %i.cv = add i32 %i.cu, %i.ce
  br label %.preheader53

.preheader53:                                     ; preds = %.lr.ph.preheader, %bb.w
  %.082.lcssa = phi i64 [ %i.cg, %bb.w ], [ %i.cs, %.lr.ph.preheader ] ; 5 uses
  %.080.lcssa = phi i32 [ %i.ce, %bb.w ], [ %i.cv, %.lr.ph.preheader ] ; 2 uses
  %i.cw = icmp samesign ugt i64 %.082.lcssa, 86399
  br i1 %i.cw, label %.lr.ph72.preheader, label %.preheader51

.lr.ph72.preheader:                               ; preds = %.preheader53
  %i.cx = add i64 %.082.lcssa, -86400
  %i.cy = add i64 %.082.lcssa, 86399
  %smin = tail call i64 @llvm.smin.i64(i64 %.082.lcssa, i64 172799)
  %i.cz = sub i64 %i.cy, %smin
  %i.da = udiv i64 %i.cz, 86400                   ; 2 uses
  %.neg119 = mul i64 %i.da, -86400
  %i.db = add i64 %.neg119, %i.cx
  %i.dc = trunc i64 %i.da to i32
  %i.dd = add i32 %.080.lcssa, %i.dc
  %i.de = add i32 %i.dd, 1
  br label %.preheader51

.preheader51:                                     ; preds = %.lr.ph72.preheader, %.preheader53
  %.183.lcssa = phi i64 [ %.082.lcssa, %.preheader53 ], [ %i.db, %.lr.ph72.preheader ] ; 2 uses
  %.181.lcssa = phi i32 [ %.080.lcssa, %.preheader53 ], [ %i.de, %.lr.ph72.preheader ] ; 3 uses
  %i.df = icmp slt i32 %.181.lcssa, 0
  br i1 %i.df, label %.lr.ph77.preheader, label %.preheader.preheader

.lr.ph77.preheader:                               ; preds = %.preheader51
  %i.dg = icmp eq i32 %.016, -2147483648
  br i1 %i.dg, label %.thread, label %.lr.ph164

.lr.ph77:                                         ; preds = %bb.z
  %i.dh = icmp eq i32 %i.di, -2147483648
  br i1 %i.dh, label %.thread, label %.lr.ph164, !llvm.loop !61

.lr.ph164:                                        ; preds = %.lr.ph77.preheader, %.lr.ph77
  %.21875163 = phi i32 [ %i.di, %.lr.ph77 ], [ %.016, %.lr.ph77.preheader ]
  %.276162 = phi i32 [ %i.ds, %.lr.ph77 ], [ %.181.lcssa, %.lr.ph77.preheader ]
  %i.di = add nsw i32 %.21875163, -1              ; 6 uses
  %i.dj = and i32 %i.di, 3
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %bb.x, label %bb.z

bb.x:                                             ; preds = %.lr.ph164
  %i.dl = srem i32 %i.di, 100
  %.not100 = icmp eq i32 %i.dl, 0
  br i1 %.not100, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dm = srem i32 %i.di, 400
  %i.dn = icmp eq i32 %i.dm, 0
  %i.do = zext i1 %i.dn to i64
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %.lr.ph164
  %i.dp = phi i64 [ 0, %.lr.ph164 ], [ 1, %bb.x ], [ %i.do, %bb.y ]
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr @year_lengths, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4
  %i.ds = add i32 %i.dr, %.276162                 ; 3 uses
  %i.dt = icmp slt i32 %i.ds, 0
  br i1 %i.dt, label %.lr.ph77, label %.preheader.preheader, !llvm.loop !61

.preheader.preheader:                             ; preds = %bb.z, %.preheader51
  %.420.ph = phi i32 [ %.016, %.preheader51 ], [ %i.di, %bb.z ]
  %.3.ph = phi i32 [ %.181.lcssa, %.preheader51 ], [ %i.ds, %bb.z ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %increment_overflow.exit106
  %.420 = phi i32 [ %i.ek, %increment_overflow.exit106 ], [ %.420.ph, %.preheader.preheader ] ; 15 uses
  %.3 = phi i32 [ %i.ej, %increment_overflow.exit106 ], [ %.3.ph, %.preheader.preheader ] ; 9 uses
  %i.du = and i32 %.420, 3
  %i.dv = icmp eq i32 %i.du, 0                    ; 2 uses
  br i1 %i.dv, label %bb.aa, label %.thread28

bb.aa:                                            ; preds = %.preheader
  %i.dw = srem i32 %.420, 100
  %.not94 = icmp eq i32 %i.dw, 0
  br i1 %.not94, label %bb.ab, label %.thread122

bb.ab:                                            ; preds = %bb.aa
  %i.dx = srem i32 %.420, 400
  %i.dy = icmp eq i32 %i.dx, 0
  %i.dz = zext i1 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr @year_lengths, i64 %i.dz
  %i.eb = load i32, ptr %i.ea, align 4
  %.not95 = icmp slt i32 %.3, %i.eb
  br i1 %.not95, label %bb.ad, label %bb.ac

.thread122:                                       ; preds = %bb.aa
  %.not95123 = icmp slt i32 %.3, 366
  br i1 %.not95123, label %bb.ad, label %.thread30

.thread28:                                        ; preds = %.preheader
  %.not9529 = icmp slt i32 %.3, 365
  br i1 %.not9529, label %bb.ad, label %.thread30

bb.ac:                                            ; preds = %bb.ab
  %i.ec = srem i32 %.420, 400
  %i.ed = icmp eq i32 %i.ec, 0
  %i.ee = zext i1 %i.ed to i64
  br label %.thread30

.thread30:                                        ; preds = %.thread122, %.thread28, %bb.ac
  %i.ef = phi i64 [ 0, %.thread28 ], [ 1, %.thread122 ], [ %i.ee, %bb.ac ]
  %i.eg = icmp eq i32 %.420, 2147483647
  br i1 %i.eg, label %.thread, label %increment_overflow.exit106

increment_overflow.exit106:                       ; preds = %.thread30
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr @year_lengths, i64 %i.ef
  %i.ei = load i32, ptr %i.eh, align 4
  %i.ej = sub i32 %.3, %i.ei
  %i.ek = add nsw i32 %.420, 1
  br label %.preheader, !llvm.loop !62

bb.ad:                                            ; preds = %.thread122, %.thread28, %bb.ab
  store i32 %.420, ptr getelementptr inbounds nuw (i8, ptr @tm, i64 20), align 4
  %i.el = icmp slt i32 %.420, -2147481748
  br i1 %i.el, label %.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.em = add nsw i32 %.420, -1900
  store i32 %i.em, ptr getelementptr inbounds nuw (i8, ptr @tm, i64 20), align 4
  store i32 %.3, ptr getelementptr inbounds nuw (i8, ptr @tm, i64 28), align 4
  %i.en = add i32 %.420, -1970
  %i.eo = srem i32 %i.en, 7
  %i.ep = icmp slt i32 %.420, 1
  br i1 %i.ep, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.eq = sub nsw i32 0, %.420                    ; 3 uses
  %i.er = lshr i32 %i.eq, 2
  %i.es = udiv i32 %i.eq, 100
  %i.et = sub nsw i32 %i.er, %i.es
  %i.eu = udiv i32 %i.eq, 400
  %i.ev = add nsw i32 %i.et, %i.eu
  %i.ew = xor i32 %i.ev, -1
  br label %leaps_thru_end_of.exit109

bb.ag:                                            ; preds = %bb.ae
  %i.ex = add nsw i32 %.420, -1                   ; 3 uses
  %i.ey = lshr i32 %i.ex, 2
  %i.ez = udiv i32 %i.ex, 100
  %i.fa = sub nsw i32 %i.ey, %i.ez
  %i.fb = udiv i32 %i.ex, 400
  %i.fc = add nsw i32 %i.fa, %i.fb
  br label %leaps_thru_end_of.exit109

leaps_thru_end_of.exit109:                        ; preds = %bb.af, %bb.ag
  %i.fd = phi i32 [ %i.ew, %bb.af ], [ %i.fc, %bb.ag ]
  %i.fe = add i32 %.3, -473
  %i.ff = add i32 %i.fe, %i.eo
  %i.fg = add i32 %i.ff, %i.fd
  %i.fh = srem i32 %i.fg, 7                       ; 3 uses
  %i.fi = icmp slt i32 %i.fh, 0
  %i.fj = add nsw i32 %i.fh, 7
  %spec.select101 = select i1 %i.fi, i32 %i.fj, i32 %i.fh
  store i32 %spec.select101, ptr getelementptr inbounds nuw (i8, ptr @tm, i64 24), align 8
  %i.fk = udiv i64 %.183.lcssa, 3600
  %i.fl = trunc nuw i64 %i.fk to i32
  store i32 %i.fl, ptr getelementptr inbounds nuw (i8, ptr @tm, i64 8), align 8
  %i.fm = urem i64 %.183.lcssa, 3600
  %.lhs.trunc = trunc nuw nsw i64 %i.fm to i16    ; 2 uses
  %i.fn = udiv i16 %.lhs.trunc, 60
  %i.fo = zext nneg i16 %i.fn to i32
  store i32 %i.fo, ptr getelementptr inbounds nuw (i8, ptr @tm, i64 4), align 4
  %i.fp = urem i16 %.lhs.trunc, 60
  %i.fq = zext nneg i16 %i.fp to i32
  %i.fr = add nuw nsw i32 %.078, %i.fq
  store i32 %i.fr, ptr @tm, align 8
  br i1 %i.dv, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %leaps_thru_end_of.exit109
  %i.fs = srem i32 %.420, 100
  %.not96 = icmp eq i32 %i.fs, 0
  br i1 %.not96, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ft = srem i32 %.420, 400
  %i.fu = icmp eq i32 %i.ft, 0
  %i.fv = zext i1 %i.fu to i64
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %leaps_thru_end_of.exit109
  %i.fw = phi i64 [ 0, %leaps_thru_end_of.exit109 ], [ 1, %bb.ah ], [ %i.fv, %bb.ai ]
  %i.fx = getelementptr inbounds nuw [48 x i8], ptr @mon_lengths, i64 %i.fw ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 16           ; 2 uses
  %.not9880 = icmp slt i32 %.3, %i.fy
  br i1 %.not9880, label %._crit_edge, label %.lr.ph83

.lr.ph83:                                         ; preds = %bb.aj, %.lr.ph83
  %i.fz = phi i32 [ %i.ge, %.lr.ph83 ], [ %i.fy, %bb.aj ]
  %.482 = phi i32 [ %i.ga, %.lr.ph83 ], [ %.3, %bb.aj ]
  %storemerge9781 = phi i32 [ %i.gb, %.lr.ph83 ], [ 0, %bb.aj ]
  %i.ga = sub i32 %.482, %i.fz                    ; 3 uses
  %i.gb = add i32 %storemerge9781, 1              ; 3 uses
  %i.gc = sext i32 %i.gb to i64
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.fx, i64 %i.gc
  %i.ge = load i32, ptr %i.gd, align 4            ; 2 uses
end_hunk_0
