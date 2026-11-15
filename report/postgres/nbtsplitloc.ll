Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/nbtsplitloc?download=true
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
  %.0.i = select i1 %i.f, i16 0, i16 %i.j         ; 5 uses
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
  %i.al = zext nneg i16 %.0.i to i64              ; 3 uses
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
  %indvars.iv = phi i64 [ %6, %.lr.ph ], [ %indvars.iv.next, %_bt_recsplitloc.exit ] ; 6 uses
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
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i16
  %.078.neg = sub i32 0, %i.eo
  %.not87 = icmp ult i16 %.0.i, %indvars
  br i1 %.not87, label %._crit_edge, label %bb.f, !llvm.loop !4

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
  %i.hr = load i8, ptr %i.hq, align 2, !range !16, !noundef !17
  %i.hs = trunc nuw i8 %i.hr to i1
  br i1 %i.hs, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph495
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hp, i64 6
  %i.hu = load i16, ptr %i.ht, align 2
  %i.hv = icmp eq i16 %2, %i.hu
end_hunk_0
