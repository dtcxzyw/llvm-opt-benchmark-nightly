inline.NumInlined: 51
inline.NumDeleted: 25
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [53 x i8] c"could not find a feasible split point for index \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"nbtsplitloc.c\00", align 1
@__func__._bt_findsplitloc = private unnamed_addr constant [17 x i8] c"_bt_findsplitloc\00", align 1

; Function Attrs: nounwind uwtable
define dso_local zeroext i16 @_bt_findsplitloc(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, i64 noundef %3, ptr noundef %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i16, ptr %i.a, align 8
  %i.c = zext i16 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.c ; 2 uses
  %i.e = getelementptr i8, ptr %1, i64 12
  %.val = load i16, ptr %i.e, align 4             ; 2 uses
  %i.f = icmp ult i16 %.val, 25
  %i.g = zext i16 %.val to i32
  %i.h = add nuw nsw i32 %i.g, 262120
  %i.i = lshr i32 %i.h, 2
  %i.j = trunc i32 %i.i to i16
  %.0.i = select i1 %i.f, i16 0, i16 %i.j         ; 4 uses
  %i.k = getelementptr i8, ptr %1, i64 18
  %.val90 = load i16, ptr %i.k, align 2
  %i.l = and i16 %.val90, -256
  %i.m = zext i16 %i.l to i32                     ; 2 uses
  %i.n = add nsw i32 %i.m, -40                    ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 3 uses
  %i.p = load i32, ptr %i.o, align 4
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr i8, ptr %1, i64 24
  %i.s = load i32, ptr %i.r, align 8
  %i.t = lshr i32 %i.s, 17
  %narrow = add nuw nsw i32 %i.t, 7
  %i.u = and i32 %narrow, 65528
  %.neg464 = add nsw i32 %i.m, -44
  %i.v = sub nsw i32 %.neg464, %i.u
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.079 = phi i32 [ %i.n, %bb.a ], [ %i.v, %bb.b ] ; 3 uses
  %i.w = tail call i64 @PageGetExactFreeSpace(ptr noundef nonnull %1) #7
  %i.x = trunc i64 %i.w to i32                    ; 3 uses
  %i.y = sub i32 %.079, %i.x                      ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = sitofp i32 %i.ac to double
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.ae = phi double [ %i.ad, %bb.d ], [ 9.000000e+01, %bb.c ] ; 3 uses
  %i.af = add i64 %3, 4                           ; 10 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.ah = load i16, ptr %i.ag, align 4            ; 4 uses
  %i.ai = trunc i16 %i.ah to i8                   ; 3 uses
  %i.aj = load i32, ptr %i.o, align 4
  %i.ak = icmp eq i32 %i.aj, 0                    ; 4 uses
  %i.al = zext i16 %.0.i to i64                   ; 4 uses
  %i.am = tail call ptr @palloc_mul(i64 noundef 10, i64 noundef %i.al) #7 ; 42 uses
  %i.an = load i32, ptr %i.o, align 4
  %i.ao = icmp eq i32 %i.an, 0
  %i.ap = select i1 %i.ao, i16 1, i16 2           ; 2 uses
  %.not87484 = icmp ugt i16 %i.ap, %.0.i
  br i1 %.not87484, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.aq = getelementptr i8, ptr %1, i64 20
  %i.ar = trunc i16 %i.ah to i1                   ; 5 uses
  %i.as = add i64 %3, 12
  %.pn.in.i124 = select i1 %i.ar, i64 %i.as, i64 %i.af
  %.pn.i125 = trunc i64 %.pn.in.i124 to i32
  %i.at = trunc i64 %i.af to i32                  ; 5 uses
  %invariant.op491 = sub i32 %i.n, %.pn.i125
  %i.au = add i32 %i.y, %i.at
  %i.av = add i32 %i.at, 65524
  %i.aw = select i1 %i.ar, i32 0, i32 %i.av
  %invariant.op492 = sub i32 %i.aw, %i.au
  %.reass = sub i32 %i.x, %i.at
  %6 = zext nneg i16 %i.ap to i64
  %7 = zext i16 %2 to i64                         ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_bt_recsplitloc.exit
  %indvars.iv = phi i64 [ %6, %.lr.ph ], [ %indvars.iv.next, %_bt_recsplitloc.exit ] ; 7 uses
  %.078.neg489 = phi i32 [ 0, %.lr.ph ], [ %.078.neg, %_bt_recsplitloc.exit ] ; 4 uses
  %.078487 = phi i32 [ 0, %.lr.ph ], [ %i.eo, %_bt_recsplitloc.exit ] ; 4 uses
  %.sroa.103.0486 = phi i64 [ -1, %.lr.ph ], [ %.sroa.103.1, %_bt_recsplitloc.exit ] ; 6 uses
  %.sroa.117.0485 = phi i32 [ 0, %.lr.ph ], [ %.sroa.117.1, %_bt_recsplitloc.exit ] ; 7 uses
  %i.ax = getelementptr [4 x i8], ptr %i.aq, i64 %indvars.iv ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4            ; 6 uses
  %i.az = lshr i32 %i.ay, 17
  %narrow89 = add nuw nsw i32 %i.az, 7
  %i.ba = and i32 %narrow89, 65528                ; 7 uses
  %i.bb = or disjoint i32 %i.ba, 4                ; 5 uses
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = icmp samesign ult i64 %indvars.iv, %7
  br i1 %i.bd, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.be = icmp ugt i32 %i.ay, 7471103
  %or.cond.i = select i1 %i.ar, i1 %i.be, i1 false
  br i1 %or.cond.i, label %bb.h, label %BTreeTupleIsPosting.exit.thread.i

bb.h:                                             ; preds = %bb.g
  %i.bf = and i32 %i.ay, 32767
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 %i.bg ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 6
  %i.bj = load i16, ptr %i.bi, align 2            ; 2 uses
  %i.bk = and i16 %i.bj, 8192
  %i.bl = icmp eq i16 %i.bk, 0
  br i1 %i.bl, label %BTreeTupleIsPosting.exit.thread.i, label %BTreeTupleIsPosting.exit.i

BTreeTupleIsPosting.exit.i:                       ; preds = %bb.h
  %i.bm = getelementptr i8, ptr %i.bh, i64 4
  %.val.i.i = load i16, ptr %i.bm, align 2
  %i.bn = and i16 %.val.i.i, 8192
  %.not.i = icmp eq i16 %i.bn, 0
  br i1 %.not.i, label %BTreeTupleIsPosting.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %BTreeTupleIsPosting.exit.i
  %i.bo = and i16 %i.bj, 8191
  %i.bp = zext nneg i16 %i.bo to i32
  %i.bq = getelementptr i8, ptr %i.bh, i64 2
  %.val71.i = load i16, ptr %i.bq, align 2
  %i.br = zext i16 %.val71.i to i32
  %.neg67.i = sub nsw i32 %i.br, %i.bp
  br label %BTreeTupleIsPosting.exit.thread.i

BTreeTupleIsPosting.exit.thread.i:                ; preds = %bb.i, %BTreeTupleIsPosting.exit.i, %bb.h, %bb.g
  %i.bs = phi i8 [ 1, %bb.h ], [ %i.ai, %bb.g ], [ 1, %bb.i ], [ 1, %BTreeTupleIsPosting.exit.i ]
  %.1.neg.i = phi i32 [ 0, %bb.h ], [ 0, %bb.g ], [ %.neg67.i, %bb.i ], [ 0, %BTreeTupleIsPosting.exit.i ]
  %i.bt = trunc i8 %i.bs to i1                    ; 2 uses
  %i.bu = add nuw nsw i32 %i.ba, 12
  %i.bv = add nsw i32 %i.bu, %.1.neg.i
  %.pn.i = select i1 %i.bt, i32 %i.bv, i32 %i.bb
  %.neg474 = add i32 %.078.neg489, %i.n
  %.163.in.i = sub i32 %.neg474, %.pn.i           ; 2 uses
  %i.bw = add nuw nsw i32 %i.ba, 65528
  %i.bx = select i1 %i.bt, i32 0, i32 %i.bw
  %.060.in.i = add i32 %.reass, %.078487
  %.161.in.i = add i32 %.060.in.i, %i.bx          ; 2 uses
  %sext.mask.i = and i32 %.163.in.i, 32768
  %i.by = icmp eq i32 %sext.mask.i, 0
  %sext.mask68.i = and i32 %.161.in.i, 32768
  %i.bz = icmp eq i32 %sext.mask68.i, 0
  %or.cond4.i = select i1 %i.by, i1 %i.bz, i1 false
  br i1 %or.cond4.i, label %_bt_recsplitloc.exit.sink.split, label %_bt_recsplitloc.exit

bb.j:                                             ; preds = %bb.f
  %i.ca = icmp samesign ugt i64 %indvars.iv, %7
  br i1 %i.ca, label %bb.k, label %BTreeTupleIsPosting.exit.thread.i121

bb.k:                                             ; preds = %bb.j
  %i.cb = icmp ugt i32 %i.ay, 7471103
  %or.cond.i111 = select i1 %i.ar, i1 %i.cb, i1 false
  br i1 %or.cond.i111, label %bb.l, label %BTreeTupleIsPosting.exit.thread.i97

bb.l:                                             ; preds = %bb.k
  %i.cc = and i32 %i.ay, 32767
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 %i.cd ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 6
  %i.cg = load i16, ptr %i.cf, align 2            ; 2 uses
  %i.ch = and i16 %i.cg, 8192
  %i.ci = icmp eq i16 %i.ch, 0
  br i1 %i.ci, label %BTreeTupleIsPosting.exit.thread.i97, label %BTreeTupleIsPosting.exit.i113

BTreeTupleIsPosting.exit.i113:                    ; preds = %bb.l
  %i.cj = getelementptr i8, ptr %i.ce, i64 4
  %.val.i.i114 = load i16, ptr %i.cj, align 2
  %i.ck = and i16 %.val.i.i114, 8192
  %.not.i115 = icmp eq i16 %i.ck, 0
  br i1 %.not.i115, label %BTreeTupleIsPosting.exit.thread.i97, label %bb.m

bb.m:                                             ; preds = %BTreeTupleIsPosting.exit.i113
  %i.cl = and i16 %i.cg, 8191
  %i.cm = zext nneg i16 %i.cl to i32
  %i.cn = getelementptr i8, ptr %i.ce, i64 2
  %.val71.i116 = load i16, ptr %i.cn, align 2
  %i.co = zext i16 %.val71.i116 to i32
  %.neg67.i117 = sub nsw i32 %i.co, %i.cm
  br label %BTreeTupleIsPosting.exit.thread.i97

BTreeTupleIsPosting.exit.thread.i97:              ; preds = %bb.m, %BTreeTupleIsPosting.exit.i113, %bb.l, %bb.k
  %i.cp = phi i8 [ 1, %bb.l ], [ %i.ai, %bb.k ], [ 1, %bb.m ], [ 1, %BTreeTupleIsPosting.exit.i113 ]
  %.1.neg.i99 = phi i32 [ 0, %bb.l ], [ 0, %bb.k ], [ %.neg67.i117, %bb.m ], [ 0, %BTreeTupleIsPosting.exit.i113 ]
  %i.cq = trunc i8 %i.cp to i1                    ; 2 uses
  %i.cr = add nuw nsw i32 %i.ba, 12
  %i.cs = add nsw i32 %i.cr, %.1.neg.i99
  %.pn.i101 = select i1 %i.cq, i32 %i.cs, i32 %i.bb
  %i.ct = add i32 %i.n, %.078.neg489
  %i.cu = add i32 %.pn.i101, %i.at
  %.163.in.i102 = sub i32 %i.ct, %i.cu            ; 2 uses
  %i.cv = add nuw nsw i32 %i.ba, 65528
  %i.cw = select i1 %i.cq, i32 0, i32 %i.cv
  %.060.in.i103 = add i32 %.078487, %i.x
  %.161.in.i104 = add i32 %.060.in.i103, %i.cw    ; 2 uses
  %sext.mask.i105 = and i32 %.163.in.i102, 32768
  %i.cx = icmp eq i32 %sext.mask.i105, 0
  %sext.mask68.i106 = and i32 %.161.in.i104, 32768
  %i.cy = icmp eq i32 %sext.mask68.i106, 0
  %or.cond4.i107 = select i1 %i.cx, i1 %i.cy, i1 false
  br i1 %or.cond4.i107, label %_bt_recsplitloc.exit.sink.split, label %_bt_recsplitloc.exit

BTreeTupleIsPosting.exit.thread.i121:             ; preds = %bb.j
  %.163.in.i126.reass = add i32 %.078.neg489, %invariant.op491 ; 2 uses
  %i.cz = add i32 %.078487, %.079                 ; 2 uses
  %.161.in.i128.reass = add i32 %i.cz, %invariant.op492 ; 2 uses
  %sext.mask.i129 = and i32 %.163.in.i126.reass, 32768
  %i.da = icmp eq i32 %sext.mask.i129, 0
  %sext.mask68.i130 = and i32 %.161.in.i128.reass, 32768
  %i.db = icmp eq i32 %sext.mask68.i130, 0
  %or.cond4.i131 = select i1 %i.da, i1 %i.db, i1 false
  br i1 %or.cond4.i131, label %bb.n, label %_bt_recsplitloc.exit142

bb.n:                                             ; preds = %BTreeTupleIsPosting.exit.thread.i121
  %.161.i132 = trunc i32 %.161.in.i128.reass to i16
  %.163.i133 = trunc i32 %.163.in.i126.reass to i16
  %..059.i134 = tail call i64 @llvm.umin.i64(i64 %.sroa.103.0486, i64 %i.af)
  %i.dc = sext i32 %.sroa.117.0485 to i64
  %i.dd = getelementptr inbounds [10 x i8], ptr %i.am, i64 %i.dc ; 5 uses
  store i16 0, ptr %i.dd, align 2
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 2
  store i16 %.163.i133, ptr %i.de, align 2
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  store i16 %.161.i132, ptr %i.df, align 2
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 6
  %8 = trunc nuw i64 %indvars.iv to i16
  store i16 %8, ptr %i.dg, align 2
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i8 0, ptr %i.dh, align 2
  %i.di = add i32 %.sroa.117.0485, 1
  br label %_bt_recsplitloc.exit142

_bt_recsplitloc.exit142:                          ; preds = %BTreeTupleIsPosting.exit.thread.i121, %bb.n
  %.sroa.117.5 = phi i32 [ %i.di, %bb.n ], [ %.sroa.117.0485, %BTreeTupleIsPosting.exit.thread.i121 ] ; 2 uses
  %.sroa.103.5 = phi i64 [ %..059.i134, %bb.n ], [ %.sroa.103.0486, %BTreeTupleIsPosting.exit.thread.i121 ] ; 2 uses
  %i.dj = icmp ugt i32 %i.ay, 7471103
  %or.cond.i159 = select i1 %i.ar, i1 %i.dj, i1 false
  br i1 %or.cond.i159, label %bb.o, label %BTreeTupleIsPosting.exit.thread.i145

bb.o:                                             ; preds = %_bt_recsplitloc.exit142
  %.val.i160 = load i32, ptr %i.ax, align 4
  %i.dk = and i32 %.val.i160, 32767
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 %i.dl ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 6
  %i.do = load i16, ptr %i.dn, align 2            ; 2 uses
  %i.dp = and i16 %i.do, 8192
  %i.dq = icmp eq i16 %i.dp, 0
  br i1 %i.dq, label %BTreeTupleIsPosting.exit.thread.i145, label %BTreeTupleIsPosting.exit.i161

BTreeTupleIsPosting.exit.i161:                    ; preds = %bb.o
  %i.dr = getelementptr i8, ptr %i.dm, i64 4
  %.val.i.i162 = load i16, ptr %i.dr, align 2
  %i.ds = and i16 %.val.i.i162, 8192
  %.not.i163 = icmp eq i16 %i.ds, 0
  br i1 %.not.i163, label %BTreeTupleIsPosting.exit.thread.i145, label %bb.p

bb.p:                                             ; preds = %BTreeTupleIsPosting.exit.i161
  %i.dt = and i16 %i.do, 8191
  %i.du = zext nneg i16 %i.dt to i32
  %i.dv = getelementptr i8, ptr %i.dm, i64 2
  %.val71.i164 = load i16, ptr %i.dv, align 2
  %i.dw = zext i16 %.val71.i164 to i32
  %.neg67.i165 = sub nsw i32 %i.dw, %i.du
  br label %BTreeTupleIsPosting.exit.thread.i145

BTreeTupleIsPosting.exit.thread.i145:             ; preds = %bb.p, %BTreeTupleIsPosting.exit.i161, %bb.o, %_bt_recsplitloc.exit142
  %i.dx = phi i8 [ 1, %bb.o ], [ %i.ai, %_bt_recsplitloc.exit142 ], [ 1, %bb.p ], [ 1, %BTreeTupleIsPosting.exit.i161 ]
  %.1.neg.i147 = phi i32 [ 0, %bb.o ], [ 0, %_bt_recsplitloc.exit142 ], [ %.neg67.i165, %bb.p ], [ 0, %BTreeTupleIsPosting.exit.i161 ]
  %i.dy = trunc i8 %i.dx to i1                    ; 2 uses
  %i.dz = add nuw nsw i32 %i.ba, 12
  %i.ea = add nsw i32 %i.dz, %.1.neg.i147
  %.pn.i149 = select i1 %i.dy, i32 %i.ea, i32 %i.bb
  %i.eb = add i32 %i.n, %.078.neg489
  %i.ec = add i32 %.pn.i149, %i.at
  %.163.in.i150 = sub i32 %i.eb, %i.ec            ; 2 uses
  %.060.in.i151 = sub i32 %i.cz, %i.y
  %i.ed = add nuw nsw i32 %i.ba, 65528
  %i.ee = select i1 %i.dy, i32 0, i32 %i.ed
  %.161.in.i152 = add i32 %i.ee, %.060.in.i151    ; 2 uses
  %sext.mask.i153 = and i32 %.163.in.i150, 32768
  %i.ef = icmp eq i32 %sext.mask.i153, 0
  %sext.mask68.i154 = and i32 %.161.in.i152, 32768
  %i.eg = icmp eq i32 %sext.mask68.i154, 0
  %or.cond4.i155 = select i1 %i.ef, i1 %i.eg, i1 false
  br i1 %or.cond4.i155, label %_bt_recsplitloc.exit.sink.split, label %_bt_recsplitloc.exit

_bt_recsplitloc.exit.sink.split:                  ; preds = %BTreeTupleIsPosting.exit.thread.i145, %BTreeTupleIsPosting.exit.thread.i97, %BTreeTupleIsPosting.exit.thread.i
  %.161.in.i152.sink = phi i32 [ %.161.in.i104, %BTreeTupleIsPosting.exit.thread.i97 ], [ %.161.in.i, %BTreeTupleIsPosting.exit.thread.i ], [ %.161.in.i152, %BTreeTupleIsPosting.exit.thread.i145 ]
  %.163.in.i150.sink = phi i32 [ %.163.in.i102, %BTreeTupleIsPosting.exit.thread.i97 ], [ %.163.in.i, %BTreeTupleIsPosting.exit.thread.i ], [ %.163.in.i150, %BTreeTupleIsPosting.exit.thread.i145 ]
  %.sroa.103.5.sink = phi i64 [ %.sroa.103.0486, %BTreeTupleIsPosting.exit.thread.i97 ], [ %.sroa.103.0486, %BTreeTupleIsPosting.exit.thread.i ], [ %.sroa.103.5, %BTreeTupleIsPosting.exit.thread.i145 ]
  %.sroa.117.5.sink550 = phi i32 [ %.sroa.117.0485, %BTreeTupleIsPosting.exit.thread.i97 ], [ %.sroa.117.0485, %BTreeTupleIsPosting.exit.thread.i ], [ %.sroa.117.5, %BTreeTupleIsPosting.exit.thread.i145 ] ; 2 uses
  %.sink = phi i8 [ 1, %BTreeTupleIsPosting.exit.thread.i97 ], [ 0, %BTreeTupleIsPosting.exit.thread.i ], [ 1, %BTreeTupleIsPosting.exit.thread.i145 ]
  %.161.i156 = trunc i32 %.161.in.i152.sink to i16
  %.163.i157 = trunc i32 %.163.in.i150.sink to i16
  %..059.i158 = tail call i64 @llvm.umin.i64(i64 %.sroa.103.5.sink, i64 %i.bc)
  %i.eh = sext i32 %.sroa.117.5.sink550 to i64
  %i.ei = getelementptr inbounds [10 x i8], ptr %i.am, i64 %i.eh ; 5 uses
  store i16 0, ptr %i.ei, align 2
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 2
  store i16 %.163.i157, ptr %i.ej, align 2
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  store i16 %.161.i156, ptr %i.ek, align 2
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 6
  %9 = trunc nuw i64 %indvars.iv to i16
  store i16 %9, ptr %i.el, align 2
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store i8 %.sink, ptr %i.em, align 2
  %i.en = add i32 %.sroa.117.5.sink550, 1
  br label %_bt_recsplitloc.exit

_bt_recsplitloc.exit:                             ; preds = %_bt_recsplitloc.exit.sink.split, %BTreeTupleIsPosting.exit.thread.i145, %BTreeTupleIsPosting.exit.thread.i97, %BTreeTupleIsPosting.exit.thread.i
  %.sroa.117.1 = phi i32 [ %.sroa.117.0485, %BTreeTupleIsPosting.exit.thread.i97 ], [ %.sroa.117.0485, %BTreeTupleIsPosting.exit.thread.i ], [ %.sroa.117.5, %BTreeTupleIsPosting.exit.thread.i145 ], [ %i.en, %_bt_recsplitloc.exit.sink.split ] ; 2 uses
  %.sroa.103.1 = phi i64 [ %.sroa.103.0486, %BTreeTupleIsPosting.exit.thread.i97 ], [ %.sroa.103.0486, %BTreeTupleIsPosting.exit.thread.i ], [ %.sroa.103.5, %BTreeTupleIsPosting.exit.thread.i145 ], [ %..059.i158, %_bt_recsplitloc.exit.sink.split ] ; 2 uses
  %i.eo = add i32 %i.bb, %.078487                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.078.neg = sub i32 0, %i.eo
  %.not87.not = icmp samesign ult i64 %indvars.iv, %i.al
  br i1 %.not87.not, label %bb.f, label %._crit_edge, !llvm.loop !4

._crit_edge:                                      ; preds = %_bt_recsplitloc.exit, %bb.e
  %.sroa.117.0.lcssa = phi i32 [ 0, %bb.e ], [ %.sroa.117.1, %_bt_recsplitloc.exit ] ; 4 uses
  %.sroa.103.0.lcssa = phi i64 [ -1, %bb.e ], [ %.sroa.103.1, %_bt_recsplitloc.exit ] ; 3 uses
  %i.ep = icmp ugt i16 %2, %.0.i                  ; 2 uses
  br i1 %i.ep, label %BTreeTupleIsPosting.exit.thread.i169, label %_bt_recsplitloc.exit190

BTreeTupleIsPosting.exit.thread.i169:             ; preds = %._crit_edge
  %i.eq = trunc i16 %i.ah to i1                   ; 2 uses
  %i.er = add i64 %3, 12
  %.pn.in.i172 = select i1 %i.eq, i64 %i.er, i64 %i.af
  %.pn.i173 = trunc i64 %.pn.in.i172 to i32
  %i.es = trunc i64 %i.af to i32                  ; 2 uses
  %i.et = add i32 %i.y, %.pn.i173
  %.163.in.i174 = sub i32 %i.n, %i.et             ; 2 uses
  %.060.in.i175 = sub i32 %.079, %i.es
  %i.eu = add i32 %i.es, 65524
  %i.ev = select i1 %i.eq, i32 0, i32 %i.eu
  %.161.in.i176 = add i32 %i.ev, %.060.in.i175    ; 2 uses
  %sext.mask.i177 = and i32 %.163.in.i174, 32768
  %i.ew = icmp eq i32 %sext.mask.i177, 0
  %sext.mask68.i178 = and i32 %.161.in.i176, 32768
  %i.ex = icmp eq i32 %sext.mask68.i178, 0
  %or.cond4.i179 = select i1 %i.ew, i1 %i.ex, i1 false
  br i1 %or.cond4.i179, label %bb.q, label %_bt_recsplitloc.exit190

bb.q:                                             ; preds = %BTreeTupleIsPosting.exit.thread.i169
  %.161.i180 = trunc i32 %.161.in.i176 to i16
  %.163.i181 = trunc i32 %.163.in.i174 to i16
  %..059.i182 = tail call i64 @llvm.umin.i64(i64 %.sroa.103.0.lcssa, i64 %i.af)
  %i.ey = sext i32 %.sroa.117.0.lcssa to i64
  %i.ez = getelementptr inbounds [10 x i8], ptr %i.am, i64 %i.ey ; 5 uses
  store i16 0, ptr %i.ez, align 2
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 2
  store i16 %.163.i181, ptr %i.fa, align 2
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  store i16 %.161.i180, ptr %i.fb, align 2
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 6
  store i16 %2, ptr %i.fc, align 2
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store i8 0, ptr %i.fd, align 2
  %i.fe = add i32 %.sroa.117.0.lcssa, 1
  br label %_bt_recsplitloc.exit190

_bt_recsplitloc.exit190:                          ; preds = %bb.q, %BTreeTupleIsPosting.exit.thread.i169, %._crit_edge
  %.sroa.117.2 = phi i32 [ %.sroa.117.0.lcssa, %._crit_edge ], [ %i.fe, %bb.q ], [ %.sroa.117.0.lcssa, %BTreeTupleIsPosting.exit.thread.i169 ] ; 21 uses
  %.sroa.103.2 = phi i64 [ %.sroa.103.0.lcssa, %._crit_edge ], [ %..059.i182, %bb.q ], [ %.sroa.103.0.lcssa, %BTreeTupleIsPosting.exit.thread.i169 ] ; 2 uses
  %i.ff = icmp eq i32 %.sroa.117.2, 0
  br i1 %i.ff, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_bt_recsplitloc.exit190
  %i.fg = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fi = load ptr, ptr %i.fh, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  %i.fk = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str, ptr noundef nonnull %i.fj) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 262, ptr noundef nonnull @__func__._bt_findsplitloc) #7
  unreachable

bb.s:                                             ; preds = %_bt_recsplitloc.exit190
  %i.fl = trunc i16 %i.ah to i1                   ; 3 uses
  br i1 %i.fl, label %bb.t, label %.loopexit

bb.t:                                             ; preds = %bb.s
  br i1 %i.ak, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fm = fdiv double %i.ae, 1.000000e+02
  br label %.loopexit

bb.v:                                             ; preds = %bb.t
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.fo = load ptr, ptr %i.fn, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 10
  %i.fq = load i16, ptr %i.fp, align 2            ; 2 uses
  %i.fr = sext i16 %i.fq to i32                   ; 2 uses
  %i.fs = icmp ne i16 %i.fq, 1
  %i.ft = icmp ne i16 %2, 2
  %or.cond.not460 = and i1 %i.ft, %i.fs
  %.not.i191 = icmp eq i64 %i.af, %.sroa.103.2
  %or.cond447 = select i1 %or.cond.not460, i1 %.not.i191, i1 false
  br i1 %or.cond447, label %bb.w, label %.loopexit

bb.w:                                             ; preds = %bb.v
  %i.fu = add nsw i64 %i.al, -1
  %i.fv = mul i64 %i.fu, %i.af
  %i.fw = sext i32 %i.y to i64
  %.not46.i = icmp ne i64 %i.fv, %i.fw
  %i.fx = icmp ugt i64 %i.af, 28
  %or.cond50.i = or i1 %i.fx, %.not46.i
  br i1 %or.cond50.i, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %bb.w
  br i1 %i.ep, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fy = getelementptr i8, ptr %1, i64 20
  %i.fz = getelementptr [4 x i8], ptr %i.fy, i64 %i.al
  %.val51.i = load i32, ptr %i.fz, align 4
  %i.ga = and i32 %.val51.i, 32767
  %i.gb = zext nneg i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 %i.gb
  %i.gd = tail call i32 @_bt_keep_natts_fast(ptr noundef nonnull %0, ptr noundef %i.gc, ptr noundef %4) #7 ; 2 uses
  %i.ge = icmp slt i32 %i.gd, 2
  %.not48.i = icmp sgt i32 %i.gd, %i.fr
  %or.cond.i197 = or i1 %i.ge, %.not48.i
  br i1 %or.cond.i197, label %.loopexit, label %._bt_afternewitemoff.exit.thread411_crit_edge

._bt_afternewitemoff.exit.thread411_crit_edge:    ; preds = %bb.y
  %.pre = fdiv double %i.ae, 1.000000e+02
  br label %.loopexit

bb.z:                                             ; preds = %bb.x
  %i.gf = add nsw i16 %2, -1
  %i.gg = zext i16 %i.gf to i64
  %i.gh = getelementptr i8, ptr %1, i64 20
  %i.gi = getelementptr [4 x i8], ptr %i.gh, i64 %i.gg
  %.val.i193 = load i32, ptr %i.gi, align 4
  %i.gj = and i32 %.val.i193, 32767
  %i.gk = zext nneg i32 %i.gj to i64
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 %i.gk ; 5 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 6
  %i.gn = load i16, ptr %i.gm, align 2
  %i.go = and i16 %i.gn, 8192
  %i.gp = icmp eq i16 %i.go, 0
  br i1 %i.gp, label %BTreeTupleIsPosting.exit.thread.i196, label %BTreeTupleIsPosting.exit.i194

BTreeTupleIsPosting.exit.i194:                    ; preds = %bb.z
  %i.gq = getelementptr i8, ptr %i.gl, i64 4
  %.val.i.i195 = load i16, ptr %i.gq, align 2
  %i.gr = and i16 %.val.i.i195, 8192
  %.not58.i = icmp eq i16 %i.gr, 0
  br i1 %.not58.i, label %BTreeTupleIsPosting.exit.thread.i196, label %.loopexit

BTreeTupleIsPosting.exit.thread.i196:             ; preds = %BTreeTupleIsPosting.exit.i194, %bb.z
  %.val52.i = load i16, ptr %i.gl, align 2
  %i.gs = getelementptr i8, ptr %i.gl, i64 2
  %.val53.i = load i16, ptr %i.gs, align 2
  %i.gt = zext i16 %.val52.i to i32
  %i.gu = shl nuw i32 %i.gt, 16
  %i.gv = zext i16 %.val53.i to i32
  %i.gw = or disjoint i32 %i.gu, %i.gv            ; 2 uses
  %.val.i54.i = load i16, ptr %4, align 2
  %i.gx = getelementptr i8, ptr %4, i64 2
  %.val9.i.i = load i16, ptr %i.gx, align 2
  %i.gy = zext i16 %.val.i54.i to i32
  %i.gz = shl nuw i32 %i.gy, 16
  %i.ha = zext i16 %.val9.i.i to i32
  %i.hb = or disjoint i32 %i.gz, %i.ha            ; 2 uses
  %i.hc = icmp eq i32 %i.gw, %i.hb
  br i1 %i.hc, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %BTreeTupleIsPosting.exit.thread.i196
  %i.hd = add i32 %i.gw, 1
  %i.he = icmp eq i32 %i.hd, %i.hb
  br i1 %i.he, label %bb.ab, label %.loopexit

bb.ab:                                            ; preds = %bb.aa
  %i.hf = getelementptr i8, ptr %4, i64 4
  %.val12.i.i = load i16, ptr %i.hf, align 2
  %i.hg = icmp eq i16 %.val12.i.i, 1
  br i1 %i.hg, label %bb.ac, label %.loopexit

bb.ac:                                            ; preds = %bb.ab, %BTreeTupleIsPosting.exit.thread.i196
  %i.hh = tail call i32 @_bt_keep_natts_fast(ptr noundef nonnull %0, ptr noundef nonnull %i.gl, ptr noundef nonnull %4) #7 ; 2 uses
  %i.hi = icmp slt i32 %i.hh, 2
  %.not47.i = icmp sgt i32 %i.hh, %i.fr
  %or.cond49.i = or i1 %i.hi, %.not47.i
  br i1 %or.cond49.i, label %.loopexit, label %_bt_afternewitemoff.exit

_bt_afternewitemoff.exit:                         ; preds = %bb.ac
  %i.hj = uitofp i16 %2 to double
  %i.hk = add nuw nsw i16 %.0.i, 1
  %i.hl = uitofp nneg i16 %i.hk to double
  %i.hm = fdiv double %i.hj, %i.hl
  %i.hn = fdiv double %i.ae, 1.000000e+02         ; 2 uses
  %i.ho = fcmp ogt double %i.hm, %i.hn
  br i1 %i.ho, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %_bt_afternewitemoff.exit
  %.not88493 = icmp sgt i32 %.sroa.117.2, 0
  br i1 %.not88493, label %.lr.ph495.preheader, label %.loopexit

.lr.ph495.preheader:                              ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %.sroa.117.2 to i64
  br label %.lr.ph495

.lr.ph495:                                        ; preds = %.lr.ph495.preheader, %bb.ae
  %indvars.iv.a = phi i64 [ 0, %.lr.ph495.preheader ], [ %indvars.iv.next.a, %bb.ae ] ; 2 uses
  %i.hp = getelementptr inbounds nuw [10 x i8], ptr %i.am, i64 %indvars.iv.a ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.hr = load i8, ptr %i.hq, align 2, !range !6, !noundef !7
  %i.hs = trunc nuw i8 %i.hr to i1
  br i1 %i.hs, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph495
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hp, i64 6
  %i.hu = load i16, ptr %i.ht, align 2
  %i.hv = icmp eq i16 %2, %i.hu
  br i1 %i.hv, label %.thread417, label %bb.ae

.thread417:                                       ; preds = %bb.ad
  tail call void @pfree(ptr noundef nonnull %i.am) #7
  store i8 1, ptr %5, align 1
  br label %bb.bc

bb.ae:                                            ; preds = %bb.ad, %.lr.ph495
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv.a, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.a, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph495, !llvm.loop !8

.loopexit:                                        ; preds = %bb.ae, %_bt_afternewitemoff.exit, %._bt_afternewitemoff.exit.thread411_crit_edge, %.preheader, %bb.ab, %bb.y, %bb.ac, %bb.aa, %bb.w, %bb.v, %BTreeTupleIsPosting.exit.i194, %bb.s, %bb.u
  %.0.shrunk = phi i1 [ true, %bb.u ], [ true, %_bt_afternewitemoff.exit ], [ %i.ak, %bb.s ], [ false, %bb.ac ], [ false, %BTreeTupleIsPosting.exit.i194 ], [ false, %bb.v ], [ false, %bb.ab ], [ false, %bb.y ], [ false, %bb.w ], [ false, %bb.aa ], [ false, %.preheader ], [ true, %._bt_afternewitemoff.exit.thread411_crit_edge ], [ false, %bb.ae ]
  %.076 = phi double [ %i.fm, %bb.u ], [ %i.hn, %_bt_afternewitemoff.exit ], [ f0x3FE6666666666666, %bb.s ], [ 5.000000e-01, %bb.ac ], [ 5.000000e-01, %BTreeTupleIsPosting.exit.i194 ], [ 5.000000e-01, %bb.v ], [ 5.000000e-01, %bb.ab ], [ 5.000000e-01, %bb.y ], [ 5.000000e-01, %bb.w ], [ 5.000000e-01, %bb.aa ], [ 5.000000e-01, %.preheader ], [ %.pre, %._bt_afternewitemoff.exit.thread411_crit_edge ], [ 5.000000e-01, %bb.ae ] ; 3 uses
  %.sroa.3236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 6 ; 2 uses
  %.sroa.3236.0.copyload = load i16, ptr %.sroa.3236.0..sroa_idx, align 2 ; 2 uses
  %.sroa.4237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %.sroa.4237.0.copyload = load i8, ptr %.sroa.4237.0..sroa_idx, align 2
  %i.hw = add i32 %.sroa.117.2, -1
  %i.hx = sext i32 %i.hw to i64
  %i.hy = getelementptr inbounds [10 x i8], ptr %i.am, i64 %i.hx ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hy, i64 6
  %.sroa.3.0.copyload = load i16, ptr %.sroa.3.0..sroa_idx, align 2 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 2
  %i.hz = icmp sgt i32 %.sroa.117.2, 0            ; 2 uses
  br i1 %i.hz, label %.lr.ph.i, label %.._crit_edge_crit_edge.i

.._crit_edge_crit_edge.i:                         ; preds = %.loopexit
  %.pre.i198 = sext i32 %.sroa.117.2 to i64
  br label %_bt_deltasortsplits.exit

.lr.ph.i:                                         ; preds = %.loopexit
  %i.ia = fsub double 1.000000e+00, %.076         ; 2 uses
  %i.ib = zext nneg i32 %.sroa.117.2 to i64       ; 8 uses
  br i1 %.0.shrunk, label %.lr.ph.split.us.i.preheader, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i
  %xtraiter = and i64 %i.ib, 1
  %i.ic = icmp eq i32 %.sroa.117.2, 1
  br i1 %i.ic, label %.lr.ph.split.i.epil.preheader, label %.lr.ph.split.i.preheader.new

.lr.ph.split.i.preheader.new:                     ; preds = %.lr.ph.split.i.preheader
  %unroll_iter = and i64 %i.ib, 2147483646
  br label %.lr.ph.split.i

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i
  %min.iters.check = icmp ult i32 %.sroa.117.2, 9
  br i1 %min.iters.check, label %.lr.ph.split.us.i.preheader570, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.us.i.preheader
  %i.id = and i64 %i.ib, 7                        ; 2 uses
  %i.ie = icmp eq i64 %i.id, 0
  %i.if = select i1 %i.ie, i64 8, i64 %i.id
  %n.vec = sub nsw i64 %i.ib, %i.if               ; 2 uses
  %broadcast.splatinsert = insertelement <8 x double> poison, double %i.ia, i64 0
  %broadcast.splat = shufflevector <8 x double> %broadcast.splatinsert, <8 x double> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert554 = insertelement <8 x double> poison, double %.076, i64 0
  %broadcast.splat555 = shufflevector <8 x double> %broadcast.splatinsert554, <8 x double> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %i.ig = getelementptr inbounds nuw [10 x i8], ptr %i.am, i64 %index ; 3 uses
  %i.ih = getelementptr inbounds nuw [10 x i8], ptr %i.am, i64 %index ; 3 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 10
  %i.ij = getelementptr inbounds nuw [10 x i8], ptr %i.am, i64 %index ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 20
  %i.il = getelementptr inbounds nuw [10 x i8], ptr %i.am, i64 %index ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 30
  %i.in = getelementptr inbounds nuw [10 x i8], ptr %i.am, i64 %index ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 40
  %i.ip = getelementptr inbounds nuw [10 x i8], ptr %i.am, i64 %index ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 50
  %i.ir = getelementptr inbounds nuw [10 x i8], ptr %i.am, i64 %index ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 60
  %i.it = getelementptr inbounds nuw [10 x i8], ptr %i.am, i64 %index ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 70
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ig, i64 2
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ih, i64 12
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ij, i64 22
  %i.iy = getelementptr inbounds nuw i8, ptr %i.il, i64 32
  %i.iz = getelementptr inbounds nuw i8, ptr %i.in, i64 42
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ip, i64 52
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ir, i64 62
  %i.jc = getelementptr inbounds nuw i8, ptr %i.it, i64 72
  %i.jd = load i16, ptr %i.iv, align 2
  %i.je = load i16, ptr %i.iw, align 2
  %i.jf = load i16, ptr %i.ix, align 2
  %i.jg = load i16, ptr %i.iy, align 2
  %i.jh = load i16, ptr %i.iz, align 2
  %i.ji = load i16, ptr %i.ja, align 2
  %i.jj = load i16, ptr %i.jb, align 2
  %i.jk = load i16, ptr %i.jc, align 2
  %i.jl = insertelement <8 x i16> poison, i16 %i.jd, i64 0
  %i.jm = insertelement <8 x i16> %i.jl, i16 %i.je, i64 1
  %i.jn = insertelement <8 x i16> %i.jm, i16 %i.jf, i64 2
  %i.jo = insertelement <8 x i16> %i.jn, i16 %i.jg, i64 3
  %i.jp = insertelement <8 x i16> %i.jo, i16 %i.jh, i64 4
  %i.jq = insertelement <8 x i16> %i.jp, i16 %i.ji, i64 5
  %i.jr = insertelement <8 x i16> %i.jq, i16 %i.jj, i64 6
  %i.js = insertelement <8 x i16> %i.jr, i16 %i.jk, i64 7
  %i.jt = sitofp <8 x i16> %i.js to <8 x double>
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ig, i64 4
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ih, i64 14
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ij, i64 24
  %i.jx = getelementptr inbounds nuw i8, ptr %i.il, i64 34
  %i.jy = getelementptr inbounds nuw i8, ptr %i.in, i64 44
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ip, i64 54
  %i.ka = getelementptr inbounds nuw i8, ptr %i.ir, i64 64
  %i.kb = getelementptr inbounds nuw i8, ptr %i.it, i64 74
  %i.kc = load i16, ptr %i.ju, align 2
  %i.kd = load i16, ptr %i.jv, align 2
  %i.ke = load i16, ptr %i.jw, align 2
  %i.kf = load i16, ptr %i.jx, align 2
  %i.kg = load i16, ptr %i.jy, align 2
  %i.kh = load i16, ptr %i.jz, align 2
  %i.ki = load i16, ptr %i.ka, align 2
  %i.kj = load i16, ptr %i.kb, align 2
  %i.kk = insertelement <8 x i16> poison, i16 %i.kc, i64 0
  %i.kl = insertelement <8 x i16> %i.kk, i16 %i.kd, i64 1
  %i.km = insertelement <8 x i16> %i.kl, i16 %i.ke, i64 2
  %i.kn = insertelement <8 x i16> %i.km, i16 %i.kf, i64 3
  %i.ko = insertelement <8 x i16> %i.kn, i16 %i.kg, i64 4
  %i.kp = insertelement <8 x i16> %i.ko, i16 %i.kh, i64 5
  %i.kq = insertelement <8 x i16> %i.kp, i16 %i.ki, i64 6
  %i.kr = insertelement <8 x i16> %i.kq, i16 %i.kj, i64 7
  %i.ks = sitofp <8 x i16> %i.kr to <8 x double>
  %i.kt = fneg <8 x double> %i.ks
  %i.ku = fmul <8 x double> %broadcast.splat, %i.kt
  %i.kv = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %broadcast.splat555, <8 x double> %i.jt, <8 x double> %i.ku)
  %i.kw = fptosi <8 x double> %i.kv to <8 x i16>
  %i.kx = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.kw, i1 false) ; 8 uses
  %i.ky = extractelement <8 x i16> %i.kx, i64 0
  store i16 %i.ky, ptr %i.ig, align 2
  %i.kz = extractelement <8 x i16> %i.kx, i64 1
  store i16 %i.kz, ptr %i.ii, align 2
  %i.la = extractelement <8 x i16> %i.kx, i64 2
  store i16 %i.la, ptr %i.ik, align 2
  %i.lb = extractelement <8 x i16> %i.kx, i64 3
  store i16 %i.lb, ptr %i.im, align 2
  %i.lc = extractelement <8 x i16> %i.kx, i64 4
  store i16 %i.lc, ptr %i.io, align 2
  %i.ld = extractelement <8 x i16> %i.kx, i64 5
  store i16 %i.ld, ptr %i.iq, align 2
  %i.le = extractelement <8 x i16> %i.kx, i64 6
  store i16 %i.le, ptr %i.is, align 2
  %i.lf = extractelement <8 x i16> %i.kx, i64 7
  store i16 %i.lf, ptr %i.iu, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.lg = icmp eq i64 %index.next, %n.vec
  br i1 %i.lg, label %.lr.ph.split.us.i.preheader570, label %vector.body, !llvm.loop !9

.lr.ph.split.us.i.preheader570:                   ; preds = %vector.body, %.lr.ph.split.us.i.preheader
  %indvars.iv25.i.ph = phi i64 [ 0, %.lr.ph.split.us.i.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader570, %.lr.ph.split.us.i
  %indvars.iv25.i = phi i64 [ %indvars.iv.next26.i, %.lr.ph.split.us.i ], [ %indvars.iv25.i.ph, %.lr.ph.split.us.i.preheader570 ] ; 2 uses
  %i.lh = getelementptr inbounds nuw [10 x i8], ptr %i.am, i64 %indvars.iv25.i ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 2
  %i.lj = load <2 x i16>, ptr %i.li, align 2
  %i.lk = sitofp <2 x i16> %i.lj to <2 x double>  ; 2 uses
  %i.ll = extractelement <2 x double> %i.lk, i64 1
  %i.lm = fneg double %i.ll
  %i.ln = fmul double %i.ia, %i.lm
  %i.lo = extractelement <2 x double> %i.lk, i64 0
  %i.lp = tail call double @llvm.fmuladd.f64(double %.076, double %i.lo, double %i.ln)
  %i.lq = fptosi double %i.lp to i16
  %spec.select.us.i = tail call i16 @llvm.abs.i16(i16 %i.lq, i1 false)
  store i16 %spec.select.us.i, ptr %i.lh, align 2
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 1 ; 2 uses
  %exitcond508.not = icmp eq i64 %indvars.iv.next26.i, %i.ib
  br i1 %exitcond508.not, label %_bt_deltasortsplits.exit, label %.lr.ph.split.us.i, !llvm.loop !12

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i, %.lr.ph.split.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.split.i.preheader.new ], [ %indvars.iv.next.i.1, %.lr.ph.split.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.split.i.preheader.new ], [ %niter.next.1, %.lr.ph.split.i ]
  %i.lr = getelementptr inbounds nuw [10 x i8], ptr %i.am, i64 %indvars.iv.i ; 3 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 2
  %i.lt = load i16, ptr %i.ls, align 2
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lr, i64 4
  %i.lv = load i16, ptr %i.lu, align 2
  %i.lw = sub i16 %i.lt, %i.lv
  %spec.select.i = tail call i16 @llvm.abs.i16(i16 %i.lw, i1 false)
  store i16 %spec.select.i, ptr %i.lr, align 2
  %i.lx = getelementptr inbounds nuw [10 x i8], ptr %i.am, i64 %indvars.iv.i ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 10
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lx, i64 12
  %i.ma = load i16, ptr %i.lz, align 2
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lx, i64 14
  %i.mc = load i16, ptr %i.mb, align 2
  %i.md = sub i16 %i.ma, %i.mc
  %spec.select.i.1 = tail call i16 @llvm.abs.i16(i16 %i.md, i1 false)
  store i16 %spec.select.i.1, ptr %i.ly, align 2
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_bt_deltasortsplits.exit.loopexit571.unr-lcssa, label %.lr.ph.split.i, !llvm.loop !13

_bt_deltasortsplits.exit.loopexit571.unr-lcssa:   ; preds = %.lr.ph.split.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_bt_deltasortsplits.exit, label %.lr.ph.split.i.epil.preheader

.lr.ph.split.i.epil.preheader:                    ; preds = %_bt_deltasortsplits.exit.loopexit571.unr-lcssa, %.lr.ph.split.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.split.i.preheader ], [ %indvars.iv.next.i.1, %_bt_deltasortsplits.exit.loopexit571.unr-lcssa ]
  %lcmp.mod572 = trunc i32 %.sroa.117.2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod572)
  %i.me = getelementptr inbounds nuw [10 x i8], ptr %i.am, i64 %indvars.iv.i.epil.init ; 3 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 2
  %i.mg = load i16, ptr %i.mf, align 2
  %i.mh = getelementptr inbounds nuw i8, ptr %i.me, i64 4
  %i.mi = load i16, ptr %i.mh, align 2
  %i.mj = sub i16 %i.mg, %i.mi
  %spec.select.i.epil = tail call i16 @llvm.abs.i16(i16 %i.mj, i1 false)
  store i16 %spec.select.i.epil, ptr %i.me, align 2
  br label %_bt_deltasortsplits.exit

_bt_deltasortsplits.exit:                         ; preds = %.lr.ph.split.i.epil.preheader, %_bt_deltasortsplits.exit.loopexit571.unr-lcssa, %.lr.ph.split.us.i, %.._crit_edge_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i198, %.._crit_edge_crit_edge.i ], [ %i.ib, %.lr.ph.split.us.i ], [ %i.ib, %_bt_deltasortsplits.exit.loopexit571.unr-lcssa ], [ %i.ib, %.lr.ph.split.i.epil.preheader ]
  tail call void @pg_qsort(ptr noundef nonnull %i.am, i64 noundef %.pre-phi.i, i64 noundef 10, ptr noundef nonnull @_bt_splitcmp) #7
  %i.mk = sitofp i32 %i.y to double
  %..i = select i1 %i.fl, double 5.000000e-02, double f0x3FB3333333333333
  %i.ml = fmul nnan double %..i, %i.mk
  %.031.i = fptosi double %i.ml to i16            ; 4 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  %i.mn = load i16, ptr %i.mm, align 2            ; 2 uses
  %i.mo = sub i16 %i.mn, %.031.i
  %i.mp = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.mq = load i16, ptr %i.mp, align 2            ; 2 uses
  %i.mr = sub i16 %i.mq, %.031.i
  %i.ms = add i16 %i.mn, %.031.i
  %i.mt = add i16 %i.mq, %.031.i
  %.not46.i199 = icmp sgt i32 %.sroa.117.2, 1
  br i1 %.not46.i199, label %.lr.ph.preheader.i, label %_bt_defaultinterval.exit

.lr.ph.preheader.i:                               ; preds = %_bt_deltasortsplits.exit
  %wide.trip.count.i = zext nneg i32 %.sroa.117.2 to i64
  br label %.lr.ph.i200

.lr.ph.i200:                                      ; preds = %bb.ag, %.lr.ph.preheader.i
  %indvars.iv.i201 = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i202, %bb.ag ] ; 4 uses
  %i.mu = getelementptr inbounds nuw [10 x i8], ptr %i.am, i64 %indvars.iv.i201 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 2
  %i.mw = load i16, ptr %i.mv, align 2            ; 2 uses
  %i.mx = icmp slt i16 %i.mw, %i.mo
  br i1 %i.mx, label %.thread40.loopexit.split.loop.exit.i, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i200
  %i.my = getelementptr inbounds nuw i8, ptr %i.mu, i64 4
  %i.mz = load i16, ptr %i.my, align 2            ; 2 uses
  %i.na = icmp sge i16 %i.mz, %i.mr
  %i.nb = icmp sle i16 %i.mw, %i.ms
  %or.cond.not45.i = select i1 %i.na, i1 %i.nb, i1 false
  %i.nc = icmp sle i16 %i.mz, %i.mt
  %or.cond36.not.i = select i1 %or.cond.not45.i, i1 %i.nc, i1 false
  br i1 %or.cond36.not.i, label %bb.ag, label %.thread40.loopexit.split.loop.exit55.i

bb.ag:                                            ; preds = %bb.af
  %indvars.iv.next.i202 = add nuw nsw i64 %indvars.iv.i201, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i202, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_bt_defaultinterval.exit, label %.lr.ph.i200, !llvm.loop !14

.thread40.loopexit.split.loop.exit.i:             ; preds = %.lr.ph.i200
  %i.nd = trunc nuw nsw i64 %indvars.iv.i201 to i32
  br label %_bt_defaultinterval.exit

.thread40.loopexit.split.loop.exit55.i:           ; preds = %bb.af
  %i.ne = trunc nuw nsw i64 %indvars.iv.i201 to i32
  br label %_bt_defaultinterval.exit

_bt_defaultinterval.exit:                         ; preds = %bb.ag, %_bt_deltasortsplits.exit, %.thread40.loopexit.split.loop.exit.i, %.thread40.loopexit.split.loop.exit55.i
  %.3.i = phi i32 [ %.sroa.117.2, %_bt_deltasortsplits.exit ], [ %i.nd, %.thread40.loopexit.split.loop.exit.i ], [ %i.ne, %.thread40.loopexit.split.loop.exit55.i ], [ %.sroa.117.2, %bb.ag ] ; 4 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ng = load ptr, ptr %i.nf, align 8
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 10
  %i.ni = load i16, ptr %i.nh, align 2
  %i.nj = sext i16 %i.ni to i32                   ; 4 uses
  br i1 %i.fl, label %.lr.ph.i.i, label %_bt_strategy.exit.thread430

.lr.ph.i.i:                                       ; preds = %_bt_defaultinterval.exit
  %..i.i = tail call i32 @llvm.smin.i32(i32 %.3.i, i32 %.sroa.117.2)
  %i.nk = load i16, ptr %.sroa.3236.0..sroa_idx, align 2 ; 2 uses
  br label %.backedge.i.i

.backedge.i.i:                                    ; preds = %.backedge.i.i.backedge, %.lr.ph.i.i
  %.08.i = phi ptr [ null, %.lr.ph.i.i ], [ %.08.i.be, %.backedge.i.i.backedge ] ; 10 uses
  %.0.i203 = phi ptr [ null, %.lr.ph.i.i ], [ %.0.i203.be, %.backedge.i.i.backedge ] ; 7 uses
  %i.nl = phi ptr [ null, %.lr.ph.i.i ], [ %.be, %.backedge.i.i.backedge ] ; 5 uses
  %i.nm = phi ptr [ null, %.lr.ph.i.i ], [ %.be566, %.backedge.i.i.backedge ] ; 2 uses
  %i.nn = phi ptr [ null, %.lr.ph.i.i ], [ %.be567, %.backedge.i.i.backedge ] ; 2 uses
  %.04251.i.in.i = phi i32 [ %..i.i, %.lr.ph.i.i ], [ %.04251.i.i, %.backedge.i.i.backedge ]
  %.04251.i.i = add i32 %.04251.i.in.i, -1        ; 4 uses
  %i.no = zext nneg i32 %.04251.i.i to i64
  %i.np = getelementptr inbounds nuw [10 x i8], ptr %i.am, i64 %i.no ; 8 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 6
  %i.nr = load i16, ptr %i.nq, align 2            ; 2 uses
  %i.ns = icmp ult i16 %i.nr, %i.nk
  br i1 %i.ns, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.backedge.i.i
  %i.nt = icmp eq ptr %.08.i, null
  br i1 %i.nt, label %.thread48.sink.split.i.i, label %.thread48.i.i

bb.ai:                                            ; preds = %.backedge.i.i
  %i.nu = icmp ugt i16 %i.nr, %i.nk
  br i1 %i.nu, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.nv = icmp eq ptr %i.nl, null
  br i1 %i.nv, label %.sink.split.i.i, label %bb.ap

bb.ak:                                            ; preds = %bb.ai
  %i.nw = getelementptr inbounds nuw i8, ptr %i.np, i64 8
  %i.nx = load i8, ptr %i.nw, align 2, !range !6, !noundef !7
  %i.ny = trunc nuw i8 %i.nx to i1
  %i.nz = load i8, ptr %.sroa.4237.0..sroa_idx, align 2, !range !6, !noundef !7
  %i.oa = trunc nuw i8 %i.nz to i1                ; 2 uses
  br i1 %i.ny, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  br i1 %i.oa, label %bb.am, label %._crit_edge.i.i

bb.am:                                            ; preds = %bb.al
  %i.ob = icmp eq ptr %.08.i, null
  br i1 %i.ob, label %.thread48.sink.split.i.i, label %.thread48.i.i

bb.an:                                            ; preds = %bb.ak
  br i1 %i.oa, label %._crit_edge.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.oc = icmp eq ptr %i.nn, null
  br i1 %i.oc, label %.sink.split.i.i, label %bb.ap

._crit_edge.i.i:                                  ; preds = %bb.an, %bb.al
  %i.od = icmp eq ptr %.08.i, null                ; 2 uses
  %spec.select.i204 = select i1 %i.od, ptr %i.np, ptr %.08.i ; 2 uses
  %spec.select16.i = select i1 %i.od, ptr %.0.i203, ptr %i.nm
  %i.oe = icmp eq ptr %spec.select16.i, null
  br i1 %i.oe, label %.sink.split.i.i, label %.thread48.i.i

.sink.split.i.i:                                  ; preds = %._crit_edge.i.i, %bb.ao, %bb.aj
  %.210.i = phi ptr [ %.08.i, %bb.aj ], [ %spec.select.i204, %._crit_edge.i.i ], [ %.08.i, %bb.ao ]
  br label %bb.ap

bb.ap:                                            ; preds = %.sink.split.i.i, %bb.ao, %bb.aj
  %.311.i = phi ptr [ %.210.i, %.sink.split.i.i ], [ %.08.i, %bb.aj ], [ %.08.i, %bb.ao ] ; 2 uses
  %.1.i = phi ptr [ %i.np, %.sink.split.i.i ], [ %.0.i203, %bb.aj ], [ %.0.i203, %bb.ao ] ; 2 uses
  %i.of = phi ptr [ %i.np, %.sink.split.i.i ], [ %i.nl, %bb.aj ], [ %i.nl, %bb.ao ]
  %i.og = phi ptr [ %i.np, %.sink.split.i.i ], [ %i.nl, %bb.aj ], [ %i.nm, %bb.ao ]
  %i.oh = phi ptr [ %i.np, %.sink.split.i.i ], [ %i.nl, %bb.aj ], [ %i.nn, %bb.ao ]
  %.not.i.i = icmp eq ptr %.311.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %.thread48.i.i

.thread48.sink.split.i.i:                         ; preds = %bb.am, %bb.ah
  br label %.thread48.i.i

.thread48.i.i:                                    ; preds = %.thread48.sink.split.i.i, %bb.ap, %._crit_edge.i.i, %bb.am, %bb.ah
  %.412.i = phi ptr [ %i.np, %.thread48.sink.split.i.i ], [ %.08.i, %bb.ah ], [ %.311.i, %bb.ap ], [ %.08.i, %bb.am ], [ %spec.select.i204, %._crit_edge.i.i ] ; 3 uses
  %.2.i = phi ptr [ %.0.i203, %.thread48.sink.split.i.i ], [ %.0.i203, %bb.ah ], [ %.1.i, %bb.ap ], [ %.0.i203, %bb.am ], [ %.0.i203, %._crit_edge.i.i ] ; 3 uses
  %.not47.i.i = icmp eq ptr %.2.i, null
  %i.oi = icmp sgt i32 %.04251.i.i, 0
  %or.cond.i.i = and i1 %i.oi, %.not47.i.i
  br i1 %or.cond.i.i, label %.backedge.i.i.backedge, label %_bt_interval_edges.exit.i

.critedge.i.i:                                    ; preds = %bb.ap
  %.old.i.i = icmp sgt i32 %.04251.i.i, 0
  tail call void @llvm.assume(i1 %.old.i.i)
  br label %.backedge.i.i.backedge

.backedge.i.i.backedge:                           ; preds = %.critedge.i.i, %.thread48.i.i
  %.08.i.be = phi ptr [ %.412.i, %.thread48.i.i ], [ null, %.critedge.i.i ]
  %.0.i203.be = phi ptr [ null, %.thread48.i.i ], [ %.1.i, %.critedge.i.i ]
  %.be = phi ptr [ null, %.thread48.i.i ], [ %i.of, %.critedge.i.i ]
  %.be566 = phi ptr [ null, %.thread48.i.i ], [ %i.og, %.critedge.i.i ]
  %.be567 = phi ptr [ null, %.thread48.i.i ], [ %i.oh, %.critedge.i.i ]
  br label %.backedge.i.i, !llvm.loop !15

_bt_interval_edges.exit.i:                        ; preds = %.thread48.i.i
  %i.oj = getelementptr inbounds nuw i8, ptr %.412.i, i64 8
  %i.ok = load i8, ptr %i.oj, align 2, !range !6, !noundef !7
  %i.ol = trunc nuw i8 %i.ok to i1
  %i.om = getelementptr inbounds nuw i8, ptr %.412.i, i64 6
  %i.on = load i16, ptr %i.om, align 2            ; 2 uses
  %i.oo = icmp eq i16 %i.on, %2
  %or.cond448 = select i1 %i.ol, i1 %i.oo, i1 false
  br i1 %or.cond448, label %_bt_split_lastleft.exit.i, label %._crit_edge.i42.i

._crit_edge.i42.i:                                ; preds = %_bt_interval_edges.exit.i
  %i.op = add i16 %i.on, -1
  %i.oq = zext i16 %i.op to i64
  %i.or = getelementptr i8, ptr %1, i64 20
  %i.os = getelementptr [4 x i8], ptr %i.or, i64 %i.oq
  %.val.i.i205 = load i32, ptr %i.os, align 4
  %i.ot = and i32 %.val.i.i205, 32767
  %i.ou = zext nneg i32 %i.ot to i64
  %i.ov = getelementptr inbounds nuw i8, ptr %1, i64 %i.ou
end_hunk_0
