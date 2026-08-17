inline.NumInlined: 114
inline.NumDeleted: 42
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BTReadPageState = type { i32, i16, i16, ptr, ptr, i8, i8, i32, i16, i16, i8, i16, i16, i16 }

@LocalBufferBlockPointers = external local_unnamed_addr global ptr, align 8
@BufferBlocks = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [29 x i8] c"unsupported byval length: %d\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"../../../../src/include/access/tupmacs.h\00", align 1
@__func__.fetch_att = private unnamed_addr constant [10 x i8] c"fetch_att\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"unexpected strategy number %d\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"nbtreadpage.c\00", align 1
@__func__._bt_rowcompare_cmpresult = private unnamed_addr constant [25 x i8] c"_bt_rowcompare_cmpresult\00", align 1

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @_bt_readpage(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.BTReadPageState, align 8    ; 22 uses
  %i.a = zext i1 %3 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 28 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 51
  %i.g = load i8, ptr %i.f, align 1, !range !4, !noundef !5
  %i.h = trunc nuw i8 %i.g to i1                  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.j = load i32, ptr %i.i, align 8              ; 4 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.m = xor i32 %i.j, -1
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8
  br label %BufferGetPage.exit

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr @BufferBlocks, align 8
  %i.r = add nsw i32 %i.j, -1
  %i.s = sext i32 %i.r to i64
  %i.t = shl nsw i64 %i.s, 13
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.t
  br label %BufferGetPage.exit

BufferGetPage.exit:                               ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.p, %bb.b ], [ %i.u, %bb.c ] ; 14 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.w = load i16, ptr %i.v, align 8
  %i.x = zext i16 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.x ; 3 uses
  %i.z = tail call i32 @BufferGetBlockNumber(i32 noundef %i.j) #7 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 92 ; 4 uses
  store i32 %i.z, ptr %i.aa, align 4
  %i.ab = load i32, ptr %i.y, align 4             ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store i32 %i.ab, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 4 uses
  %i.ae = load i32, ptr %i.ad, align 4            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 100
  store i32 %i.ae, ptr %i.af, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  store i32 %1, ptr %i.ag, align 8
  store i32 %1, ptr %4, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 116 ; 13 uses
  store i32 0, ptr %i.ah, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 328 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i16, ptr %i.ak, align 4
  %i.am = sext i16 %i.al to i32                   ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ao = load i32, ptr %i.an, align 8
  %i.ap = icmp ne i32 %i.ao, 0                    ; 6 uses
  %i.aq = load i32, ptr %i.ad, align 4
  %i.ar = icmp eq i32 %i.aq, 0
  %i.as = select i1 %i.ar, i16 1, i16 2           ; 10 uses
  %i.at = getelementptr i8, ptr %.0.i.i, i64 12
  %.val = load i16, ptr %i.at, align 4            ; 2 uses
  %i.au = icmp ult i16 %.val, 25
  %i.av = zext i16 %.val to i32
  %i.aw = add nuw nsw i32 %i.av, 262120
  %i.ax = lshr i32 %i.aw, 2
  %i.ay = trunc i32 %i.ax to i16
  %.0.i = select i1 %i.au, i16 0, i16 %i.ay       ; 7 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i16 %i.as, ptr %i.az, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 %.0.i, ptr %i.ba, align 2
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store ptr null, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %.0.i.i, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 %i.a, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 25 ; 5 uses
  store i8 0, ptr %i.be, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 34 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 36 ; 6 uses
  store i64 0, ptr %i.bf, align 4
  store i8 1, ptr %i.bi, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 38
  store i16 0, ptr %i.bj, align 2
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i16 0, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 42
  store i16 0, ptr %i.bl, align 2
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.bn = load ptr, ptr %i.bm, align 8
  %.not = icmp eq ptr %i.bn, null
  br i1 %.not, label %bb.d, label %.sink.split

.sink.split:                                      ; preds = %BufferGetPage.exit
  %i.bo = icmp eq i32 %1, 1
  %. = select i1 %i.bo, i32 %i.ae, i32 %i.ab
  tail call void @_bt_parallel_release(ptr noundef nonnull %0, i32 noundef %., i32 noundef %i.z) #7
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %BufferGetPage.exit
  %i.bp = load i32, ptr %i.aa, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
  tail call void @PredicateLockPage(ptr noundef nonnull %i.c, i32 noundef %i.bp, ptr noundef %i.br) #7
  %i.bs = icmp eq i32 %1, 1
  br i1 %i.bs, label %bb.e, label %bb.an

bb.e:                                             ; preds = %bb.d
  br i1 %i.ap, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.bt = load i32, ptr %i.ad, align 4
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bv = getelementptr i8, ptr %.0.i.i, i64 24
  %.val246 = load i32, ptr %i.bv, align 8
  %i.bw = and i32 %.val246, 32767
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.bx ; 2 uses
  store ptr %i.by, ptr %i.bb, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.e, i64 22
  %i.ca = load i8, ptr %i.bz, align 2, !range !4, !noundef !5
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.h, label %bb.k, !prof !6

bb.h:                                             ; preds = %bb.g
  %i.cc = tail call fastcc zeroext i1 @_bt_scanbehind_checkkeys(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %i.by)
  br i1 %i.cc, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cd = getelementptr inbounds nuw i8, ptr %i.e, i64 121
  store i8 0, ptr %i.cd, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 21
  store i8 1, ptr %i.ce, align 1
  %i.cf = load ptr, ptr %i.bm, align 8
  %.not229 = icmp eq ptr %i.cf, null
  br i1 %.not229, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cg = load i32, ptr %i.aa, align 4
  tail call void @_bt_parallel_primscan_schedule(ptr noundef nonnull %0, i32 noundef %i.cg) #7
  br label %.critedge

bb.k:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 23
  store i8 0, ptr %i.ch, align 1
  %i.ci = getelementptr inbounds nuw i8, ptr %i.e, i64 22
  store i8 0, ptr %i.ci, align 2
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.e
  %i.cj = icmp uge i16 %i.as, %.0.i
  %or.cond232.not = select i1 %3, i1 true, i1 %i.cj
  br i1 %or.cond232.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val250 = load ptr, ptr %i.b, align 8
  %.val251 = load ptr, ptr %i.d, align 8
  call fastcc void @_bt_set_startikey(ptr %.val250, ptr %.val251, ptr noundef %4)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ck = tail call i16 @llvm.umax.i16(i16 %2, i16 %i.as) ; 2 uses
  %.not230318 = icmp ugt i16 %i.ck, %.0.i
  br i1 %.not230318, label %.thread, label %.lr.ph322

.lr.ph322:                                        ; preds = %bb.n
  %i.cl = getelementptr i8, ptr %.0.i.i, i64 20
  %i.cm = getelementptr inbounds nuw i8, ptr %i.e, i64 136 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 5 uses
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph322, %select.unfold
  %.0209320 = phi i16 [ %i.ck, %.lr.ph322 ], [ %.1210, %select.unfold ] ; 7 uses
  %.0212319 = phi i32 [ 0, %.lr.ph322 ], [ %.3215, %select.unfold ] ; 7 uses
  %i.co = zext i16 %.0209320 to i64
  %i.cp = getelementptr [4 x i8], ptr %i.cl, i64 %i.co
  %.val245.pre = load i32, ptr %i.cp, align 4     ; 2 uses
  %i.cq = and i32 %.val245.pre, 98304
  %i.cr = icmp eq i32 %i.cq, 98304
  %or.cond340 = select i1 %i.h, i1 %i.cr, i1 false
  br i1 %or.cond340, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cs = add i16 %.0209320, 1
  br label %select.unfold, !llvm.loop !7

bb.q:                                             ; preds = %bb.o
  %i.ct = and i32 %.val245.pre, 32767
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.cu ; 12 uses
  store i16 %.0209320, ptr %i.bg, align 8
  %i.cw = call fastcc zeroext i1 @_bt_checkkeys(ptr noundef %0, ptr noundef %4, i1 noundef zeroext %i.ap, ptr noundef %i.cv, i32 noundef %i.am)
  br i1 %i.ap, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.cx = load i16, ptr %i.bh, align 2            ; 2 uses
  %i.cy = add i16 %i.cx, -1
  %i.cz = icmp ult i16 %i.cy, 2048
  br i1 %i.cz, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i16 0, ptr %i.bh, align 2
  br label %select.unfold, !llvm.loop !7

bb.t:                                             ; preds = %bb.r, %bb.q
  br i1 %i.cw, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.t
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 6 ; 2 uses
  %i.db = load i16, ptr %i.da, align 2
  %i.dc = and i16 %i.db, 8192
  %i.dd = icmp eq i16 %i.dc, 0
  br i1 %i.dd, label %BTreeTupleIsPosting.exit.thread, label %BTreeTupleIsPosting.exit

BTreeTupleIsPosting.exit:                         ; preds = %bb.u
  %i.de = getelementptr i8, ptr %i.cv, i64 4      ; 3 uses
  %.val.i = load i16, ptr %i.de, align 2
  %i.df = and i16 %.val.i, 8192
  %.not300 = icmp eq i16 %i.df, 0
  br i1 %.not300, label %BTreeTupleIsPosting.exit.thread, label %bb.w

BTreeTupleIsPosting.exit.thread:                  ; preds = %bb.u, %BTreeTupleIsPosting.exit
  %i.dg = sext i32 %.0212319 to i64
  %i.dh = getelementptr inbounds [10 x i8], ptr %i.cm, i64 %i.dg ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.dh, ptr noundef nonnull readonly align 2 dereferenceable(6) %i.cv, i64 6, i1 false)
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 6
  store i16 %.0209320, ptr %i.di, align 2
  %i.dj = load ptr, ptr %i.cn, align 8
  %.not.i = icmp eq ptr %i.dj, null
  br i1 %.not.i, label %_bt_saveitem.exit, label %bb.v

bb.v:                                             ; preds = %BTreeTupleIsPosting.exit.thread
  %.val.i255 = load i16, ptr %i.da, align 2
  %i.dk = and i16 %.val.i255, 8191                ; 2 uses
  %i.dl = zext nneg i16 %i.dk to i64
  %i.dm = load i32, ptr %i.ah, align 4            ; 2 uses
  %i.dn = trunc i32 %i.dm to i16
  %i.do = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store i16 %i.dn, ptr %i.do, align 2
  %i.dp = load ptr, ptr %i.cn, align 8
  %i.dq = sext i32 %i.dm to i64
  %i.dr = getelementptr inbounds i8, ptr %i.dp, i64 %i.dq
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dr, ptr nonnull readonly align 2 %i.cv, i64 %i.dl, i1 false)
  %i.ds = load i32, ptr %i.ah, align 4
  %narrow.i = add nuw nsw i16 %i.dk, 7
  %i.dt = and i16 %narrow.i, 16376
  %i.du = zext nneg i16 %i.dt to i32
  %i.dv = add i32 %i.ds, %i.du
  store i32 %i.dv, ptr %i.ah, align 4
  br label %_bt_saveitem.exit

_bt_saveitem.exit:                                ; preds = %BTreeTupleIsPosting.exit.thread, %bb.v
  %i.dw = add i32 %.0212319, 1
  br label %.loopexit

bb.w:                                             ; preds = %BTreeTupleIsPosting.exit
  %.val.i.i = load i16, ptr %i.cv, align 2
  %i.dx = getelementptr i8, ptr %i.cv, i64 2      ; 3 uses
  %.val2.i.i = load i16, ptr %i.dx, align 2
  %i.dy = zext i16 %.val.i.i to i64
  %i.dz = shl nuw nsw i64 %i.dy, 16
  %i.ea = zext i16 %.val2.i.i to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.dz
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.ea
  %i.ed = sext i32 %.0212319 to i64
  %i.ee = getelementptr inbounds [10 x i8], ptr %i.cm, i64 %i.ed ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.ee, ptr noundef nonnull readonly align 2 dereferenceable(6) %i.ec, i64 6, i1 false)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 6
  store i16 %.0209320, ptr %i.ef, align 2
  %i.eg = load ptr, ptr %i.cn, align 8
  %.not.i256 = icmp eq ptr %i.eg, null
  br i1 %.not.i256, label %_bt_setuppostingitems.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.val.i257 = load i16, ptr %i.cv, align 2
  %.val22.i = load i16, ptr %i.dx, align 2
  %i.eh = zext i16 %.val.i257 to i64
  %i.ei = shl nuw nsw i64 %i.eh, 16
  %i.ej = zext i16 %.val22.i to i64
  %i.ek = or disjoint i64 %i.ei, %i.ej
  %i.el = add nuw nsw i64 %i.ek, 7
  %i.em = and i64 %i.el, 8589934584               ; 3 uses
  %i.en = load i32, ptr %i.ah, align 4            ; 2 uses
  %i.eo = trunc i32 %i.en to i16
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ee, i64 8 ; 2 uses
  store i16 %i.eo, ptr %i.ep, align 2
  %i.eq = load ptr, ptr %i.cn, align 8
  %i.er = sext i32 %i.en to i64
  %i.es = getelementptr inbounds i8, ptr %i.eq, i64 %i.er ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.es, ptr nonnull readonly align 2 %i.cv, i64 %i.em, i1 false)
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 6 ; 2 uses
  %i.eu = load i16, ptr %i.et, align 2
  %i.ev = and i16 %i.eu, -8192
  %i.ew = trunc i64 %i.em to i16
  %i.ex = or i16 %i.ev, %i.ew
  store i16 %i.ex, ptr %i.et, align 2
  %i.ey = load i32, ptr %i.ah, align 4
  %i.ez = trunc i64 %i.em to i32
  %i.fa = add i32 %i.ey, %i.ez
  store i32 %i.fa, ptr %i.ah, align 4
  %i.fb = load i16, ptr %i.ep, align 2
  br label %_bt_setuppostingitems.exit

_bt_setuppostingitems.exit:                       ; preds = %bb.w, %bb.x
  %.0.i258 = phi i16 [ %i.fb, %bb.x ], [ 0, %bb.w ]
  %.1213312 = add i32 %.0212319, 1                ; 2 uses
  %.val253313 = load i16, ptr %i.de, align 2
  %i.fc = and i16 %.val253313, 4094
  %.not326 = icmp eq i16 %i.fc, 0
  br i1 %.not326, label %.loopexit, label %.lr.ph316

.lr.ph316:                                        ; preds = %_bt_setuppostingitems.exit, %_bt_savepostingitem.exit
  %indvars.iv328 = phi i64 [ %indvars.iv.next329, %_bt_savepostingitem.exit ], [ 1, %_bt_setuppostingitems.exit ] ; 2 uses
  %.1213315 = phi i32 [ %.1213, %_bt_savepostingitem.exit ], [ %.1213312, %_bt_setuppostingitems.exit ] ; 2 uses
  %.val.i.i259 = load i16, ptr %i.cv, align 2
  %.val2.i.i260 = load i16, ptr %i.dx, align 2
  %i.fd = zext i16 %.val.i.i259 to i64
  %i.fe = shl nuw nsw i64 %i.fd, 16
  %i.ff = zext i16 %.val2.i.i260 to i64
  %i.fg = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.fe
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.ff
  %i.fi = getelementptr inbounds nuw [6 x i8], ptr %i.fh, i64 %indvars.iv328
  %i.fj = sext i32 %.1213315 to i64
  %i.fk = getelementptr inbounds [10 x i8], ptr %i.cm, i64 %i.fj ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.fk, ptr noundef nonnull readonly align 2 dereferenceable(6) %i.fi, i64 6, i1 false)
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 6
  store i16 %.0209320, ptr %i.fl, align 2
  %i.fm = load ptr, ptr %i.cn, align 8
  %.not.i261 = icmp eq ptr %i.fm, null
  br i1 %.not.i261, label %_bt_savepostingitem.exit, label %bb.y

bb.y:                                             ; preds = %.lr.ph316
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store i16 %.0.i258, ptr %i.fn, align 2
  br label %_bt_savepostingitem.exit

_bt_savepostingitem.exit:                         ; preds = %.lr.ph316, %bb.y
  %indvars.iv.next329 = add nuw nsw i64 %indvars.iv328, 1 ; 2 uses
  %.1213 = add i32 %.1213315, 1                   ; 2 uses
  %.val253 = load i16, ptr %i.de, align 2
  %i.fo = and i16 %.val253, 4095
  %i.fp = zext nneg i16 %i.fo to i64
  %i.fq = icmp samesign ult i64 %indvars.iv.next329, %i.fp
  br i1 %i.fq, label %.lr.ph316, label %.loopexit, !llvm.loop !9

.loopexit:                                        ; preds = %_bt_savepostingitem.exit, %_bt_setuppostingitems.exit, %_bt_saveitem.exit, %bb.t
  %.2214 = phi i32 [ %.0212319, %bb.t ], [ %i.dw, %_bt_saveitem.exit ], [ %.1213312, %_bt_setuppostingitems.exit ], [ %.1213, %_bt_savepostingitem.exit ] ; 2 uses
  %i.fr = load i8, ptr %i.bi, align 4, !range !4, !noundef !5
  %i.fs = trunc nuw i8 %i.fr to i1
  %i.ft = add i16 %.0209320, 1
  br i1 %i.fs, label %select.unfold, label %.thread.loopexit

select.unfold:                                    ; preds = %.loopexit, %bb.s, %bb.p
  %.3215 = phi i32 [ %.0212319, %bb.p ], [ %.0212319, %bb.s ], [ %.2214, %.loopexit ] ; 2 uses
  %.1210 = phi i16 [ %i.cs, %bb.p ], [ %i.cx, %bb.s ], [ %i.ft, %.loopexit ] ; 2 uses
  %.not230 = icmp ugt i16 %.1210, %.0.i
  br i1 %.not230, label %.thread.loopexit, label %bb.o

.thread.loopexit:                                 ; preds = %.loopexit, %select.unfold
  %.4.ph = phi i32 [ %.3215, %select.unfold ], [ %.2214, %.loopexit ]
  %i.fu = add i32 %.4.ph, -1
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.n
  %.4 = phi i32 [ -1, %bb.n ], [ %i.fu, %.thread.loopexit ] ; 4 uses
  %i.fv = load i8, ptr %i.bi, align 4, !range !4, !noundef !5
  %i.fw = trunc nuw i8 %i.fv to i1
  br i1 %i.fw, label %bb.z, label %.thread338

bb.z:                                             ; preds = %.thread
  %i.fx = getelementptr inbounds nuw i8, ptr %i.e, i64 22
  %i.fy = load i8, ptr %i.fx, align 2, !range !4, !noundef !5
  %i.fz = trunc nuw i8 %i.fy to i1
  br i1 %i.fz, label %.thread337, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ga = load i32, ptr %i.ad, align 4
  %i.gb = icmp eq i32 %i.ga, 0
  br i1 %i.gb, label %.thread337, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gc = getelementptr i8, ptr %.0.i.i, i64 24
  %.val244 = load i32, ptr %i.gc, align 8
  %i.gd = and i32 %.val244, 32767
  %i.ge = zext nneg i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.ge ; 3 uses
  %i.gg = load i8, ptr %i.be, align 1, !range !4, !noundef !5
  %i.gh = trunc nuw i8 %i.gg to i1
  br i1 %i.gh, label %bb.ac, label %bb.ak

bb.ac:                                            ; preds = %bb.ab
  %i.gi = load ptr, ptr %i.d, align 8             ; 5 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16 ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 8
  %i.gl = icmp sgt i32 %i.gk, 0
  br i1 %i.gl, label %.lr.ph.i, label %_bt_start_array_keys.exit

.lr.ph.i:                                         ; preds = %bb.ac
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %_bt_array_set_low_or_high.exit.us.i, %.lr.ph.i
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %_bt_array_set_low_or_high.exit.us.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.go = load ptr, ptr %i.gm, align 8
  %i.gp = getelementptr inbounds nuw [48 x i8], ptr %i.go, i64 %indvars.iv18.i ; 6 uses
  %i.gq = load ptr, ptr %i.gn, align 8
  %i.gr = load i32, ptr %i.gp, align 8
  %i.gs = sext i32 %i.gr to i64
  %i.gt = getelementptr inbounds [72 x i8], ptr %i.gq, i64 %i.gs ; 7 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  %i.gv = load i32, ptr %i.gu, align 4
  %.not.i.us.i = icmp eq i32 %i.gv, -1
  br i1 %.not.i.us.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.split.us.i
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  store i32 0, ptr %i.gw, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8
  %i.gz = load i64, ptr %i.gy, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gt, i64 64
  store i64 %i.gz, ptr %i.ha, align 8
  br label %_bt_array_set_low_or_high.exit.us.i

bb.ae:                                            ; preds = %.lr.ph.split.us.i
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gp, i64 22
  %i.hc = load i8, ptr %i.hb, align 2, !range !4, !noundef !5
  %i.hd = trunc nuw i8 %i.hc to i1
  br i1 %i.hd, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.he = getelementptr inbounds nuw i8, ptr %i.gt, i64 64
  %i.hf = load i64, ptr %i.he, align 8            ; 2 uses
  %.not21.i.us.i = icmp eq i64 %i.hf, 0
  br i1 %.not21.i.us.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hg = inttoptr i64 %i.hf to ptr
  call void @pfree(ptr noundef nonnull %i.hg) #7
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gt, i64 64
  store i64 0, ptr %i.hh, align 8
  %i.hi = load i32, ptr %i.gt, align 8            ; 2 uses
  %i.hj = and i32 %i.hi, -7864386                 ; 3 uses
  store i32 %i.hj, ptr %i.gt, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gp, i64 23
  %i.hl = load i8, ptr %i.hk, align 1, !range !4, !noundef !5
  %i.hm = trunc nuw i8 %i.hl to i1
  %i.hn = and i32 %i.hi, 33554432
  %.not.i262 = icmp ne i32 %i.hn, 0
  %or.cond25.not.i = select i1 %i.hm, i1 %.not.i262, i1 false
  br i1 %or.cond25.not.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ho = or disjoint i32 %i.hj, 524288
  store i32 %i.ho, ptr %i.gt, align 8
  br label %_bt_array_set_low_or_high.exit.us.i

bb.aj:                                            ; preds = %bb.ah
  %i.hp = or disjoint i32 %i.hj, 65
  store i32 %i.hp, ptr %i.gt, align 8
  br label %_bt_array_set_low_or_high.exit.us.i

_bt_array_set_low_or_high.exit.us.i:              ; preds = %bb.aj, %bb.ai, %bb.ad
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1 ; 2 uses
  %i.hq = load i32, ptr %i.gj, align 8
  %i.hr = sext i32 %i.hq to i64
  %i.hs = icmp slt i64 %indvars.iv.next19.i, %i.hr
  br i1 %i.hs, label %.lr.ph.split.us.i, label %_bt_start_array_keys.exit, !llvm.loop !10

_bt_start_array_keys.exit:                        ; preds = %_bt_array_set_low_or_high.exit.us.i, %bb.ac
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gi, i64 23
  store i8 0, ptr %i.ht, align 1
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gi, i64 22
  store i8 0, ptr %i.hu, align 2
  br label %bb.ak

bb.ak:                                            ; preds = %_bt_start_array_keys.exit, %bb.ab
  store i8 0, ptr %i.be, align 1
  store i32 0, ptr %i.bf, align 4
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gf, i64 6
  %i.hw = load i16, ptr %i.hv, align 2
  %i.hx = and i16 %i.hw, 8192
  %i.hy = icmp eq i16 %i.hx, 0
  br i1 %i.hy, label %BTreeTupleIsPivot.exit.thread, label %BTreeTupleIsPivot.exit

BTreeTupleIsPivot.exit:                           ; preds = %bb.ak
  %i.hz = getelementptr i8, ptr %i.gf, i64 4
  %.val.i263 = load i16, ptr %i.hz, align 2       ; 2 uses
  %i.ia = and i16 %.val.i263, 8192
  %.not.i264 = icmp eq i16 %i.ia, 0
  br i1 %.not.i264, label %bb.al, label %BTreeTupleIsPivot.exit.thread

bb.al:                                            ; preds = %BTreeTupleIsPivot.exit
  %i.ib = and i16 %.val.i263, 4095
  %i.ic = zext nneg i16 %i.ib to i32
  br label %bb.am

BTreeTupleIsPivot.exit.thread:                    ; preds = %bb.ak, %BTreeTupleIsPivot.exit
  %i.id = load ptr, ptr %i.ai, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %i.if = load i16, ptr %i.ie, align 4
  %i.ig = sext i16 %i.if to i32
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %BTreeTupleIsPivot.exit.thread
  %i.ih = phi i32 [ %i.ic, %bb.al ], [ %i.ig, %BTreeTupleIsPivot.exit.thread ]
  %i.ii = call fastcc zeroext i1 @_bt_checkkeys(ptr noundef %0, ptr noundef %4, i1 noundef zeroext %i.ap, ptr noundef nonnull %i.gf, i32 noundef %i.ih) ; 0 uses
  %.pre = load i8, ptr %i.bi, align 4, !range !4
  %i.ij = trunc nuw i8 %.pre to i1
  br i1 %i.ij, label %.thread337, label %.thread338

.thread338:                                       ; preds = %.thread, %bb.am
  %5 = getelementptr inbounds nuw i8, ptr %i.e, i64 121
  store i8 0, ptr %5, align 1
  br label %.thread337

bb.an:                                            ; preds = %bb.d
  br i1 %i.ap, label %bb.ao, label %bb.av

bb.ao:                                            ; preds = %bb.an
  %.not226 = icmp ugt i16 %i.as, %.0.i
  br i1 %.not226, label %bb.au, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ik = load i32, ptr %i.y, align 4
  %i.il = icmp eq i32 %i.ik, 0
  br i1 %i.il, label %bb.au, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.im = zext nneg i16 %i.as to i64
  %i.in = getelementptr i8, ptr %.0.i.i, i64 20
  %i.io = getelementptr [4 x i8], ptr %i.in, i64 %i.im
  %.val243 = load i32, ptr %i.io, align 4
  %i.ip = and i32 %.val243, 32767
  %i.iq = zext nneg i32 %i.ip to i64
  %i.ir = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.iq ; 2 uses
  store ptr %i.ir, ptr %i.bb, align 8
  %i.is = getelementptr inbounds nuw i8, ptr %i.e, i64 22
  %i.it = load i8, ptr %i.is, align 2, !range !4, !noundef !5
  %i.iu = trunc nuw i8 %i.it to i1
  br i1 %i.iu, label %bb.ar, label %bb.au, !prof !6

bb.ar:                                            ; preds = %bb.aq
  %i.iv = tail call fastcc zeroext i1 @_bt_scanbehind_checkkeys(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %i.ir)
  br i1 %i.iv, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.iw = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  store i8 0, ptr %i.iw, align 8
  %i.ix = getelementptr inbounds nuw i8, ptr %i.e, i64 21
  store i8 1, ptr %i.ix, align 1
  %i.iy = load ptr, ptr %i.bm, align 8
  %.not227 = icmp eq ptr %i.iy, null
  br i1 %.not227, label %.critedge, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.iz = load i32, ptr %i.aa, align 4
  tail call void @_bt_parallel_primscan_schedule(ptr noundef nonnull %0, i32 noundef %i.iz) #7
  br label %.critedge

bb.au:                                            ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.ao
  %i.ja = getelementptr inbounds nuw i8, ptr %i.e, i64 23
  store i8 0, ptr %i.ja, align 1
  %i.jb = getelementptr inbounds nuw i8, ptr %i.e, i64 22
  store i8 0, ptr %i.jb, align 2
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.an
  %i.jc = icmp uge i16 %i.as, %.0.i
  %or.cond236.not = select i1 %3, i1 true, i1 %i.jc
  br i1 %or.cond236.not, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %.val248 = load ptr, ptr %i.b, align 8
  %.val249 = load ptr, ptr %i.d, align 8
  call fastcc void @_bt_set_startikey(ptr %.val248, ptr %.val249, ptr noundef %4)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.jd = tail call i16 @llvm.umin.i16(i16 %2, i16 %.0.i) ; 2 uses
  %.not228303 = icmp ult i16 %i.jd, %i.as
  br i1 %.not228303, label %.thread293, label %.lr.ph307

.lr.ph307:                                        ; preds = %bb.ax
  %i.je = getelementptr i8, ptr %.0.i.i, i64 20
  %i.jf = getelementptr inbounds nuw i8, ptr %i.e, i64 22
  %i.jg = getelementptr inbounds nuw i8, ptr %i.e, i64 136 ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 5 uses
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph307, %select.unfold291
  %.2211305 = phi i16 [ %i.jd, %.lr.ph307 ], [ %.3, %select.unfold291 ] ; 9 uses
  %.5304 = phi i32 [ 1358, %.lr.ph307 ], [ %.8, %select.unfold291 ] ; 6 uses
  %i.ji = zext i16 %.2211305 to i64
  %i.jj = getelementptr [4 x i8], ptr %i.je, i64 %i.ji
  %.val242.pre = load i32, ptr %i.jj, align 4     ; 2 uses
  %i.jk = and i32 %.val242.pre, 98304
  %i.jl = icmp eq i32 %i.jk, 98304
  %or.cond342 = select i1 %i.h, i1 %i.jl, i1 false ; 2 uses
  %i.jm = icmp ugt i16 %.2211305, %i.as
  %or.cond348 = select i1 %or.cond342, i1 %i.jm, i1 false
  br i1 %or.cond348, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.jn = add i16 %.2211305, -1
  br label %select.unfold291, !llvm.loop !11

bb.ba:                                            ; preds = %bb.ay
  %.0216 = xor i1 %or.cond342, true
  %i.jo = and i32 %.val242.pre, 32767
  %i.jp = zext nneg i32 %i.jo to i64
  %i.jq = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.jp ; 13 uses
  store i16 %.2211305, ptr %i.bg, align 8
  br i1 %i.ap, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.jr = icmp eq i16 %.2211305, %i.as
  %i.js = load i8, ptr %i.be, align 1, !range !4
  %i.jt = trunc nuw i8 %i.js to i1
  %or.cond = select i1 %i.jr, i1 %i.jt, i1 false
  br i1 %or.cond, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  store i8 0, ptr %i.be, align 1
  store i32 0, ptr %i.bf, align 4
  call void @_bt_start_array_keys(ptr noundef %0, i32 noundef %1)
  br label %bb.be

bb.bd:                                            ; preds = %bb.ba
  %i.ju = call fastcc zeroext i1 @_bt_checkkeys(ptr noundef %0, ptr noundef %4, i1 noundef zeroext false, ptr noundef nonnull %i.jq, i32 noundef %i.am)
  br label %.critedge238

bb.be:                                            ; preds = %bb.bc, %bb.bb
  %i.jv = call fastcc zeroext i1 @_bt_checkkeys(ptr noundef %0, ptr noundef %4, i1 noundef zeroext true, ptr noundef nonnull %i.jq, i32 noundef %i.am)
  %i.jw = load i8, ptr %i.jf, align 2, !range !4, !noundef !5
  %i.jx = trunc nuw i8 %i.jw to i1
  br i1 %i.jx, label %.thread293, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.jy = load i16, ptr %i.bh, align 2            ; 2 uses
  %i.jz = add i16 %i.jy, -1
  %i.ka = icmp ult i16 %i.jz, 2048
  br i1 %i.ka, label %bb.bg, label %.critedge238

bb.bg:                                            ; preds = %bb.bf
  store i16 0, ptr %i.bh, align 2
  br label %select.unfold291, !llvm.loop !11

.critedge238:                                     ; preds = %bb.bd, %bb.bf
  %i.kb = phi i1 [ %i.ju, %bb.bd ], [ %i.jv, %bb.bf ]
  %or.cond5 = and i1 %i.kb, %.0216
  br i1 %or.cond5, label %bb.bh, label %_bt_saveitem.exit272

bb.bh:                                            ; preds = %.critedge238
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jq, i64 6 ; 2 uses
  %i.kd = load i16, ptr %i.kc, align 2
  %i.ke = and i16 %i.kd, 8192
  %i.kf = icmp eq i16 %i.ke, 0
  br i1 %i.kf, label %BTreeTupleIsPosting.exit268.thread, label %BTreeTupleIsPosting.exit268

BTreeTupleIsPosting.exit268:                      ; preds = %bb.bh
  %i.kg = getelementptr i8, ptr %i.jq, i64 4
  %.val.i266 = load i16, ptr %i.kg, align 2       ; 2 uses
  %i.kh = and i16 %.val.i266, 8192
  %.not298 = icmp eq i16 %i.kh, 0
  br i1 %.not298, label %BTreeTupleIsPosting.exit268.thread, label %bb.bj

BTreeTupleIsPosting.exit268.thread:               ; preds = %bb.bh, %BTreeTupleIsPosting.exit268
  %i.ki = add i32 %.5304, -1                      ; 3 uses
  %i.kj = sext i32 %i.ki to i64
  %i.kk = getelementptr inbounds [10 x i8], ptr %i.jg, i64 %i.kj ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.kk, ptr noundef nonnull readonly align 2 dereferenceable(6) %i.jq, i64 6, i1 false)
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 6
  store i16 %.2211305, ptr %i.kl, align 2
  %i.km = load ptr, ptr %i.jh, align 8
  %.not.i269 = icmp eq ptr %i.km, null
  br i1 %.not.i269, label %_bt_saveitem.exit272, label %bb.bi

bb.bi:                                            ; preds = %BTreeTupleIsPosting.exit268.thread
  %.val.i270 = load i16, ptr %i.kc, align 2
  %i.kn = and i16 %.val.i270, 8191                ; 2 uses
  %i.ko = zext nneg i16 %i.kn to i64
  %i.kp = load i32, ptr %i.ah, align 4            ; 2 uses
  %i.kq = trunc i32 %i.kp to i16
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  store i16 %i.kq, ptr %i.kr, align 2
  %i.ks = load ptr, ptr %i.jh, align 8
  %i.kt = sext i32 %i.kp to i64
  %i.ku = getelementptr inbounds i8, ptr %i.ks, i64 %i.kt
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ku, ptr nonnull readonly align 2 %i.jq, i64 %i.ko, i1 false)
  %i.kv = load i32, ptr %i.ah, align 4
  %narrow.i271 = add nuw nsw i16 %i.kn, 7
  %i.kw = and i16 %narrow.i271, 16376
  %i.kx = zext nneg i16 %i.kw to i32
  %i.ky = add i32 %i.kv, %i.kx
  store i32 %i.ky, ptr %i.ah, align 4
  br label %_bt_saveitem.exit272

bb.bj:                                            ; preds = %BTreeTupleIsPosting.exit268
  %i.kz = and i16 %.val.i266, 4095                ; 3 uses
  %i.la = add i32 %.5304, -1                      ; 3 uses
  %i.lb = zext nneg i16 %i.kz to i64
  %.val.i.i273 = load i16, ptr %i.jq, align 2
  %i.lc = getelementptr i8, ptr %i.jq, i64 2      ; 3 uses
  %.val2.i.i274 = load i16, ptr %i.lc, align 2
  %i.ld = zext i16 %.val.i.i273 to i64
  %i.le = shl nuw nsw i64 %i.ld, 16
  %i.lf = zext i16 %.val2.i.i274 to i64
  %i.lg = getelementptr inbounds nuw i8, ptr %i.jq, i64 %i.le
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 %i.lf
  %i.li = zext nneg i16 %i.kz to i64
  %i.lj = getelementptr [6 x i8], ptr %i.lh, i64 %i.li
  %i.lk = getelementptr i8, ptr %i.lj, i64 -6
  %i.ll = sext i32 %i.la to i64
  %i.lm = getelementptr inbounds [10 x i8], ptr %i.jg, i64 %i.ll ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.lm, ptr noundef nonnull readonly align 2 dereferenceable(6) %i.lk, i64 6, i1 false)
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 6
  store i16 %.2211305, ptr %i.ln, align 2
  %i.lo = load ptr, ptr %i.jh, align 8
  %.not.i275 = icmp eq ptr %i.lo, null
  br i1 %.not.i275, label %_bt_setuppostingitems.exit279, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %.val.i276 = load i16, ptr %i.jq, align 2
  %.val22.i277 = load i16, ptr %i.lc, align 2
  %i.lp = zext i16 %.val.i276 to i64
  %i.lq = shl nuw nsw i64 %i.lp, 16
  %i.lr = zext i16 %.val22.i277 to i64
  %i.ls = or disjoint i64 %i.lq, %i.lr
  %i.lt = add nuw nsw i64 %i.ls, 7
  %i.lu = and i64 %i.lt, 8589934584               ; 3 uses
  %i.lv = load i32, ptr %i.ah, align 4            ; 2 uses
  %i.lw = trunc i32 %i.lv to i16
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lm, i64 8 ; 2 uses
  store i16 %i.lw, ptr %i.lx, align 2
  %i.ly = load ptr, ptr %i.jh, align 8
  %i.lz = sext i32 %i.lv to i64
  %i.ma = getelementptr inbounds i8, ptr %i.ly, i64 %i.lz ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.ma, ptr nonnull readonly align 2 %i.jq, i64 %i.lu, i1 false)
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 6 ; 2 uses
  %i.mc = load i16, ptr %i.mb, align 2
  %i.md = and i16 %i.mc, -8192
  %i.me = trunc i64 %i.lu to i16
  %i.mf = or i16 %i.md, %i.me
  store i16 %i.mf, ptr %i.mb, align 2
  %i.mg = load i32, ptr %i.ah, align 4
  %i.mh = trunc i64 %i.lu to i32
  %i.mi = add i32 %i.mg, %i.mh
  store i32 %i.mi, ptr %i.ah, align 4
  %i.mj = load i16, ptr %i.lx, align 2
  br label %_bt_setuppostingitems.exit279

_bt_setuppostingitems.exit279:                    ; preds = %bb.bj, %bb.bk
  %.0.i278 = phi i16 [ %i.mj, %bb.bk ], [ 0, %bb.bj ]
  %i.mk = icmp samesign ugt i16 %i.kz, 1
  br i1 %i.mk, label %.lr.ph.preheader, label %_bt_saveitem.exit272

.lr.ph.preheader:                                 ; preds = %_bt_setuppostingitems.exit279
  %i.ml = add nuw nsw i64 %i.lb, 4294967294
  %i.mm = and i64 %i.ml, 4294967295
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_bt_savepostingitem.exit283
  %indvars.iv = phi i64 [ %i.mm, %.lr.ph.preheader ], [ %indvars.iv.next, %_bt_savepostingitem.exit283 ] ; 3 uses
  %.6301 = phi i32 [ %i.la, %.lr.ph.preheader ], [ %i.mn, %_bt_savepostingitem.exit283 ]
  %i.mn = add i32 %.6301, -1                      ; 3 uses
  %.val.i.i280 = load i16, ptr %i.jq, align 2
  %.val2.i.i281 = load i16, ptr %i.lc, align 2
  %i.mo = zext i16 %.val.i.i280 to i64
  %i.mp = shl nuw nsw i64 %i.mo, 16
  %i.mq = zext i16 %.val2.i.i281 to i64
  %i.mr = getelementptr inbounds nuw i8, ptr %i.jq, i64 %i.mp
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 %i.mq
  %i.mt = getelementptr inbounds nuw [6 x i8], ptr %i.ms, i64 %indvars.iv
  %i.mu = sext i32 %i.mn to i64
  %i.mv = getelementptr inbounds [10 x i8], ptr %i.jg, i64 %i.mu ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.mv, ptr noundef nonnull readonly align 2 dereferenceable(6) %i.mt, i64 6, i1 false)
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 6
  store i16 %.2211305, ptr %i.mw, align 2
  %i.mx = load ptr, ptr %i.jh, align 8
  %.not.i282 = icmp eq ptr %i.mx, null
  br i1 %.not.i282, label %_bt_savepostingitem.exit283, label %bb.bl

bb.bl:                                            ; preds = %.lr.ph
  %i.my = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  store i16 %.0.i278, ptr %i.my, align 2
  br label %_bt_savepostingitem.exit283

_bt_savepostingitem.exit283:                      ; preds = %.lr.ph, %bb.bl
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.mz = icmp sgt i64 %indvars.iv, 0
  br i1 %i.mz, label %.lr.ph, label %_bt_saveitem.exit272, !llvm.loop !12

_bt_saveitem.exit272:                             ; preds = %_bt_savepostingitem.exit283, %_bt_setuppostingitems.exit279, %bb.bi, %BTreeTupleIsPosting.exit268.thread, %.critedge238
  %.7 = phi i32 [ %.5304, %.critedge238 ], [ %i.ki, %bb.bi ], [ %i.ki, %BTreeTupleIsPosting.exit268.thread ], [ %i.la, %_bt_setuppostingitems.exit279 ], [ %i.mn, %_bt_savepostingitem.exit283 ] ; 2 uses
  %i.na = load i8, ptr %i.bi, align 4, !range !4, !noundef !5
  %i.nb = trunc nuw i8 %i.na to i1
  %i.nc = add i16 %.2211305, -1
  br i1 %i.nb, label %select.unfold291, label %.thread293

select.unfold291:                                 ; preds = %_bt_saveitem.exit272, %bb.bg, %bb.az
  %.8 = phi i32 [ %.5304, %bb.az ], [ %.5304, %bb.bg ], [ %.7, %_bt_saveitem.exit272 ] ; 2 uses
  %.3 = phi i16 [ %i.jn, %bb.az ], [ %i.jy, %bb.bg ], [ %i.nc, %_bt_saveitem.exit272 ] ; 2 uses
  %.not228 = icmp ult i16 %.3, %i.as
  br i1 %.not228, label %.thread293, label %bb.ay

.thread293:                                       ; preds = %select.unfold291, %bb.be, %_bt_saveitem.exit272, %bb.ax
  %.9 = phi i32 [ 1358, %bb.ax ], [ %.5304, %bb.be ], [ %.7, %_bt_saveitem.exit272 ], [ %.8, %select.unfold291 ] ; 2 uses
  %i.nd = load i8, ptr %i.bi, align 4, !range !4, !noundef !5
  %i.ne = trunc nuw i8 %i.nd to i1
  br i1 %i.ne, label %.thread337, label %bb.bm

bb.bm:                                            ; preds = %.thread293
  %i.nf = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  store i8 0, ptr %i.nf, align 8
  br label %.thread337

.thread337:                                       ; preds = %.thread293, %bb.bm, %bb.am, %.thread338, %bb.aa, %bb.z
  %.9.sink = phi i32 [ 0, %bb.am ], [ 0, %bb.z ], [ 0, %bb.aa ], [ 0, %.thread338 ], [ %.9, %bb.bm ], [ %.9, %.thread293 ] ; 2 uses
  %.sink345 = phi i32 [ %.4, %bb.am ], [ %.4, %bb.z ], [ %.4, %bb.aa ], [ %.4, %.thread338 ], [ 1357, %bb.bm ], [ 1357, %.thread293 ] ; 2 uses
  %.sink343 = phi i32 [ 0, %bb.am ], [ 0, %bb.z ], [ 0, %bb.aa ], [ 0, %.thread338 ], [ 1357, %bb.bm ], [ 1357, %.thread293 ]
  %i.ng = getelementptr inbounds nuw i8, ptr %i.e, i64 124
  store i32 %.9.sink, ptr %i.ng, align 4
  %i.nh = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  store i32 %.sink345, ptr %i.nh, align 8
  %i.ni = getelementptr inbounds nuw i8, ptr %i.e, i64 132
  store i32 %.sink343, ptr %i.ni, align 4
  %i.nj = icmp sle i32 %.9.sink, %.sink345
  br label %.critedge

.critedge:                                        ; preds = %bb.as, %bb.at, %bb.i, %bb.j, %.thread337
  %.2 = phi i1 [ %i.nj, %.thread337 ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.at ], [ false, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  ret i1 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @BufferGetBlockNumber(i32 noundef) local_unnamed_addr #2

declare void @_bt_parallel_release(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @PredicateLockPage(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @_bt_scanbehind_checkkeys(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 6 ; 2 uses
  %i.k = load i16, ptr %i.j, align 2
  %i.l = and i16 %i.k, 8192
  %i.m = icmp eq i16 %i.l, 0
  br i1 %i.m, label %BTreeTupleIsPivot.exit.thread, label %BTreeTupleIsPivot.exit

BTreeTupleIsPivot.exit:                           ; preds = %bb.a
  %i.n = getelementptr i8, ptr %2, i64 4
  %.val.i = load i16, ptr %i.n, align 2           ; 2 uses
  %i.o = and i16 %.val.i, 8192
  %.not.i = icmp eq i16 %i.o, 0
  br i1 %.not.i, label %bb.b, label %BTreeTupleIsPivot.exit.thread

bb.b:                                             ; preds = %BTreeTupleIsPivot.exit
  %i.p = and i16 %.val.i, 4095
  %i.q = zext nneg i16 %i.p to i32
  br label %bb.c

BTreeTupleIsPivot.exit.thread:                    ; preds = %bb.a, %BTreeTupleIsPivot.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 328
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i16, ptr %i.t, align 4
  %i.v = sext i16 %i.u to i32
  br label %bb.c

bb.c:                                             ; preds = %BTreeTupleIsPivot.exit.thread, %bb.b
  %i.w = phi i32 [ %i.q, %bb.b ], [ %i.v, %BTreeTupleIsPivot.exit.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.x = call fastcc zeroext i1 @_bt_tuple_before_array_skeys(ptr %i.i, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %i.g, i32 noundef %i.w, i1 noundef zeroext false, i32 noundef 0, ptr noundef nonnull %i.c)
  %i.y = load i8, ptr %i.c, align 1, !range !4
  %i.z = trunc nuw i8 %i.y to i1
  %or.cond = select i1 %i.x, i1 true, i1 %i.z
  br i1 %or.cond, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 23
  %i.ab = load i8, ptr %i.aa, align 1, !range !4, !noundef !5
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.ad = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = load ptr, ptr %i.h, align 8
  %i.ah = load i16, ptr %i.j, align 2
  %i.ai = and i16 %i.ah, 8192
  %i.aj = icmp eq i16 %i.ai, 0
  br i1 %i.aj, label %BTreeTupleIsPivot.exit.thread.i, label %BTreeTupleIsPivot.exit.i

BTreeTupleIsPivot.exit.i:                         ; preds = %bb.e
  %i.ak = getelementptr i8, ptr %2, i64 4
  %.val.i.i = load i16, ptr %i.ak, align 2        ; 2 uses
  %i.al = and i16 %.val.i.i, 8192
  %.not.i.i = icmp eq i16 %i.al, 0
  br i1 %.not.i.i, label %bb.f, label %BTreeTupleIsPivot.exit.thread.i

bb.f:                                             ; preds = %BTreeTupleIsPivot.exit.i
  %i.am = and i16 %.val.i.i, 4095
  %i.an = zext nneg i16 %i.am to i32
  br label %bb.g

BTreeTupleIsPivot.exit.thread.i:                  ; preds = %BTreeTupleIsPivot.exit.i, %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 328
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i16, ptr %i.aq, align 4
  %i.as = sext i16 %i.ar to i32
  br label %bb.g

bb.g:                                             ; preds = %BTreeTupleIsPivot.exit.thread.i, %bb.f
  %i.at = phi i32 [ %i.an, %bb.f ], [ %i.as, %BTreeTupleIsPivot.exit.thread.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.au = sub i32 0, %1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 0, ptr %i.b, align 4
  %i.av = call fastcc zeroext i1 @_bt_check_compare(ptr noundef nonnull %0, i32 noundef %i.au, ptr noundef nonnull %2, i32 noundef %i.at, ptr noundef %i.af, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef %i.a, ptr noundef %i.b), !inline_history !13 ; 0 uses
  %i.aw = load i8, ptr %i.a, align 1, !range !4, !noundef !5
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = load i32, ptr %i.b, align 4
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [72 x i8], ptr %i.az, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 6
  %i.be = load i16, ptr %i.bd, align 2
  %.not.i17 = icmp eq i16 %i.be, 3
  br i1 %.not.i17, label %bb.i, label %_bt_oppodir_checkkeys.exit

bb.i:                                             ; preds = %bb.h, %bb.g
  br label %_bt_oppodir_checkkeys.exit

_bt_oppodir_checkkeys.exit:                       ; preds = %bb.h, %bb.i
  %.0.i18 = phi i1 [ true, %bb.i ], [ false, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.c, %_bt_oppodir_checkkeys.exit
  %.0 = phi i1 [ true, %bb.d ], [ false, %bb.c ], [ %.0.i18, %_bt_oppodir_checkkeys.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  ret i1 %.0
}

declare void @_bt_parallel_primscan_schedule(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @_bt_set_startikey(ptr %.8.val, ptr nofree readonly captures(none) %.56.val, ptr nofree noundef nonnull captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 14 uses
  %i.b = alloca i8, align 1                       ; 11 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.8.val, i64 64
  %i.e = load ptr, ptr %i.d, align 8              ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.56.val, i64 4 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.as, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8              ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = load i16, ptr %i.k, align 4
  %i.m = zext i16 %i.l to i64
  %i.n = getelementptr i8, ptr %i.j, i64 20       ; 2 uses
  %i.o = getelementptr [4 x i8], ptr %i.n, i64 %i.m
  %.val173 = load i32, ptr %i.o, align 4
  %i.p = and i32 %.val173, 32767
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.q ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.t = load i16, ptr %i.s, align 2
  %i.u = zext i16 %i.t to i64
  %i.v = getelementptr [4 x i8], ptr %i.n, i64 %i.u
  %.val = load i32, ptr %i.v, align 4
  %i.w = and i32 %.val, 32767
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.x ; 4 uses
  %i.z = tail call i32 @_bt_keep_natts_fast(ptr noundef nonnull %.8.val, ptr noundef %i.r, ptr noundef %i.y) #7 ; 6 uses
  %i.aa = load i32, ptr %i.f, align 4
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph77, label %.loopexit.thread

.lr.ph77:                                         ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %.56.val, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.56.val, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %.56.val, i64 32
  br label %.outer

.outer:                                           ; preds = %select.unfold.thread, %.lr.ph77
  %indvars.iv.ph = phi i64 [ %indvars.iv.next124, %select.unfold.thread ], [ 0, %.lr.ph77 ]
  %.013475.ph = phi i32 [ %i.ez, %select.unfold.thread ], [ 0, %.lr.ph77 ]
  %.013874.ph = phi i1 [ true, %select.unfold.thread ], [ false, %.lr.ph77 ] ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.outer, %select.unfold
end_hunk_0
