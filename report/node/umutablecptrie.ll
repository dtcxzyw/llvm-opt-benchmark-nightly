inline.NumInlined: 129
inline.NumDeleted: 58
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie8setRangeEiijR10UErrorCode:bb.a
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.h ], [ %i.u, %bb.g ] ; 3 uses
  %i.w = getelementptr inbounds i8, ptr %i.s, i64 %indvars.iv.i
  store i8 0, ptr %i.w, align 1
  %i.x = load i32, ptr %i.t, align 8
  %i.y = load ptr, ptr %0, align 8
  %i.z = getelementptr inbounds [4 x i8], ptr %i.y, i64 %indvars.iv.i
  store i32 %i.x, ptr %i.z, align 4
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.aa = icmp slt i64 %indvars.iv.next.i, %i.v
  br i1 %i.aa, label %bb.h, label %.critedge.thread.i, !llvm.loop !12

.critedge.thread.i:                               ; preds = %bb.h
  store i32 %i.i, ptr %i.f, align 8
  br label %bb.i

bb.i:                                             ; preds = %.critedge.thread.i, %bb.c
  %i.ab = add nuw nsw i32 %2, 1                   ; 4 uses
  %i.ac = and i32 %1, 15                          ; 4 uses
  %.not57 = icmp eq i32 %i.ac, 0
  br i1 %.not57, label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = lshr i32 %1, 4
  %i.ae = tail call fastcc noundef i32 @_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie12getDataBlockEi(ptr noundef nonnull align 8 dereferenceable(69696) %0, i32 noundef %i.ad) ; 2 uses
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = add nuw nsw i32 %1, 15
  %i.ah = and i32 %i.ag, 4194288                  ; 3 uses
  %.not58.not = icmp samesign ugt i32 %i.ah, %i.ab
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.ak = zext nneg i32 %i.ae to i64              ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ak ; 4 uses
  br i1 %.not58.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = shl nuw nsw i32 %i.ac, 2
  %.idx = zext nneg i32 %i.am to i64              ; 3 uses
  %i.an = and i32 %1, 15                          ; 2 uses
  %narrow = sub nuw nsw i32 16, %i.an
  %i.ao = zext nneg i32 %narrow to i64            ; 2 uses
  %min.iters.check = icmp samesign ugt i32 %i.an, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.body

vector.body:                                      ; preds = %bb.l
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %n.vec = and i64 %i.ao, 24                      ; 2 uses
  %i.ap = shl nuw nsw i64 %n.vec, 2
  %i.aq = add nuw nsw i64 %i.ap, %.idx
  %i.ar = getelementptr i8, ptr %i.al, i64 %.idx  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.ar, align 4
  store <4 x i32> %broadcast.splat, ptr %i.as, align 4
  %cmp.n = icmp eq i64 %n.vec, %i.ao
  br i1 %cmp.n, label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.l, %vector.body
  %.07.i.idx.ph = phi i64 [ %.idx, %bb.l ], [ %i.aq, %vector.body ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.07.i.idx = phi i64 [ %.07.i.add, %.lr.ph.i ], [ %.07.i.idx.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.07.i.ptr = getelementptr inbounds nuw i8, ptr %i.al, i64 %.07.i.idx
  %.07.i.add = add nuw nsw i64 %.07.i.idx, 4
  store i32 %3, ptr %.07.i.ptr, align 4
  %i.at = icmp samesign ult i64 %.07.i.idx, 60
  br i1 %i.at, label %.lr.ph.i, label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit, !llvm.loop !13

bb.m:                                             ; preds = %bb.k
  %i.au = and i32 %i.ab, 15                       ; 2 uses
  %i.av = zext nneg i32 %i.au to i64              ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.av
  %i.ax = icmp samesign ult i32 %i.ac, %i.au
  br i1 %i.ax, label %.lr.ph.preheader.i, label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71

.lr.ph.preheader.i:                               ; preds = %bb.m
  %i.ay = zext nneg i32 %i.ac to i64              ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ay ; 3 uses
  %i.ba = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.bb = shl nuw nsw i64 %i.ak, 2
  %i.bc = shl nuw nsw i64 %i.ay, 2
  %i.bd = add i64 %i.bb, %i.ba                    ; 2 uses
  %i.be = add i64 %i.bd, %i.bc
  %i.bf = add i64 %i.be, 4
  %i.bg = shl nuw nsw i64 %i.av, 2
  %i.bh = add i64 %i.bd, %i.bg
  %i.bi = tail call i64 @llvm.umax.i64(i64 %i.bf, i64 %i.bh)
  %i.bj = add nuw nsw i64 %i.ak, %i.ay
  %i.bk = shl nuw nsw i64 %i.bj, 2
  %i.bl = add i64 %i.bk, %i.ba
  %i.bm = xor i64 %i.bl, -1
  %i.bn = add i64 %i.bi, %i.bm                    ; 2 uses
  %i.bo = lshr i64 %i.bn, 2
  %i.bp = add nuw nsw i64 %i.bo, 1                ; 2 uses
  %min.iters.check93 = icmp ult i64 %i.bn, 28
  br i1 %min.iters.check93, label %.lr.ph.i61.preheader, label %vector.ph94

vector.ph94:                                      ; preds = %.lr.ph.preheader.i
  %n.vec96 = and i64 %i.bp, 9223372036854775800   ; 3 uses
  %i.bq = shl i64 %n.vec96, 2
  %i.br = getelementptr i8, ptr %i.az, i64 %i.bq
  %broadcast.splatinsert97 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat98 = shufflevector <4 x i32> %broadcast.splatinsert97, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body99

vector.body99:                                    ; preds = %vector.body99, %vector.ph94
  %index100 = phi i64 [ 0, %vector.ph94 ], [ %index.next101, %vector.body99 ] ; 2 uses
  %i.bs = shl i64 %index100, 2
  %next.gep = getelementptr i8, ptr %i.az, i64 %i.bs ; 2 uses
  %i.bt = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat98, ptr %next.gep, align 4
  store <4 x i32> %broadcast.splat98, ptr %i.bt, align 4
  %index.next101 = add nuw i64 %index100, 8       ; 2 uses
  %i.bu = icmp eq i64 %index.next101, %n.vec96
  br i1 %i.bu, label %middle.block102, label %vector.body99, !llvm.loop !16

middle.block102:                                  ; preds = %vector.body99
  %cmp.n103 = icmp eq i64 %i.bp, %n.vec96
  br i1 %cmp.n103, label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71, label %.lr.ph.i61.preheader

.lr.ph.i61.preheader:                             ; preds = %.lr.ph.preheader.i, %middle.block102
  %.07.i62.ph = phi ptr [ %i.az, %.lr.ph.preheader.i ], [ %i.br, %middle.block102 ]
  br label %.lr.ph.i61

.lr.ph.i61:                                       ; preds = %.lr.ph.i61.preheader, %.lr.ph.i61
  %.07.i62 = phi ptr [ %i.bv, %.lr.ph.i61 ], [ %.07.i62.ph, %.lr.ph.i61.preheader ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.07.i62, i64 4 ; 2 uses
  store i32 %3, ptr %.07.i62, align 4
  %i.bw = icmp ult ptr %i.bv, %i.aw
  br i1 %i.bw, label %.lr.ph.i61, label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71, !llvm.loop !17

_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit:    ; preds = %.lr.ph.i, %vector.body, %bb.i
  %.2 = phi i32 [ %1, %bb.i ], [ %i.ah, %vector.body ], [ %i.ah, %.lr.ph.i ] ; 3 uses
  %i.bx = and i32 %i.ab, 15                       ; 2 uses
  %i.by = and i32 %i.ab, 4194288                  ; 2 uses
  %i.bz = icmp samesign ult i32 %.2, %i.by
  br i1 %i.bz, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cc = zext nneg i32 %.2 to i64
  %i.cd = insertelement <4 x i32> poison, i32 %3, i64 0
  %i.ce = shufflevector <4 x i32> %i.cd, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit67
  %indvars.iv = phi i64 [ %i.cc, %.lr.ph ], [ %indvars.iv.next, %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit67 ] ; 2 uses
  %i.cf = lshr i64 %indvars.iv, 4                 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1
  %i.ci = icmp eq i8 %i.ch, 0
  br i1 %i.ci, label %bb.o, label %.lr.ph.i65

bb.o:                                             ; preds = %bb.n
  %i.cj = load ptr, ptr %0, align 8
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.cf
  store i32 %3, ptr %i.ck, align 4
  br label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit67

.lr.ph.i65:                                       ; preds = %bb.n
  %i.cl = load ptr, ptr %i.cb, align 8
  %i.cm = load ptr, ptr %0, align 8
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.cf
  %i.co = load i32, ptr %i.cn, align 4
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.cp ; 4 uses
  store <4 x i32> %i.ce, ptr %i.cq, align 4
  %.07.i66.ptr.4 = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store <4 x i32> %i.ce, ptr %.07.i66.ptr.4, align 4
  %.07.i66.ptr.8 = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  store <4 x i32> %i.ce, ptr %.07.i66.ptr.8, align 4
  %.07.i66.ptr.12 = getelementptr inbounds nuw i8, ptr %i.cq, i64 48
  store <4 x i32> %i.ce, ptr %.07.i66.ptr.12, align 4
  br label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit67

_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit67:  ; preds = %.lr.ph.i65, %bb.o
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16 ; 2 uses
  %i.cr = trunc nuw i64 %indvars.iv.next to i32   ; 2 uses
  %i.cs = icmp sgt i32 %i.by, %i.cr
  br i1 %i.cs, label %bb.n, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit67, %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit
  %.3.lcssa = phi i32 [ %.2, %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit ], [ %i.cr, %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit67 ]
  %.not59 = icmp eq i32 %i.bx, 0
  br i1 %.not59, label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  %i.ct = lshr i32 %.3.lcssa, 4
  %i.cu = tail call fastcc noundef i32 @_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie12getDataBlockEi(ptr noundef nonnull align 8 dereferenceable(69696) %0, i32 noundef %i.ct) ; 2 uses
  %i.cv = icmp sgt i32 %i.cu, -1
  br i1 %i.cv, label %.lr.ph.preheader.i68, label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71.sink.split

.lr.ph.preheader.i68:                             ; preds = %bb.p
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8            ; 2 uses
  %i.cy = zext nneg i32 %i.cu to i64              ; 3 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.cy ; 4 uses
  %i.da = zext nneg i32 %i.bx to i64              ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.da
  %i.dc = ptrtoint ptr %i.cx to i64               ; 2 uses
  %i.dd = shl nuw nsw i64 %i.cy, 2
  %i.de = shl nuw nsw i64 %i.da, 2
  %i.df = add nuw i64 %i.dd, %i.dc
  %i.dg = tail call i64 @llvm.umax.i64(i64 %i.de, i64 4)
  %i.dh = add nuw i64 %i.df, %i.dg
  %i.di = shl nuw nsw i64 %i.cy, 2
  %i.dj = add i64 %i.di, %i.dc
  %i.dk = xor i64 %i.dj, -1
  %i.dl = add i64 %i.dh, %i.dk                    ; 2 uses
  %i.dm = lshr i64 %i.dl, 2
  %i.dn = add nuw nsw i64 %i.dm, 1                ; 2 uses
  %min.iters.check106 = icmp ult i64 %i.dl, 28
  br i1 %min.iters.check106, label %.lr.ph.i69.preheader, label %vector.ph107

vector.ph107:                                     ; preds = %.lr.ph.preheader.i68
  %n.vec109 = and i64 %i.dn, 9223372036854775800  ; 3 uses
  %5 = shl i64 %n.vec109, 2
  %6 = getelementptr i8, ptr %i.cz, i64 %5
  %broadcast.splatinsert110 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat111 = shufflevector <4 x i32> %broadcast.splatinsert110, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body112

vector.body112:                                   ; preds = %vector.body112, %vector.ph107
  %index113 = phi i64 [ 0, %vector.ph107 ], [ %index.next115, %vector.body112 ] ; 2 uses
  %i.do = shl i64 %index113, 2
  %next.gep114 = getelementptr i8, ptr %i.cz, i64 %i.do ; 2 uses
  %i.dp = getelementptr i8, ptr %next.gep114, i64 16
  store <4 x i32> %broadcast.splat111, ptr %next.gep114, align 4
  store <4 x i32> %broadcast.splat111, ptr %i.dp, align 4
  %index.next115 = add nuw i64 %index113, 8       ; 2 uses
  %i.dq = icmp eq i64 %index.next115, %n.vec109
  br i1 %i.dq, label %middle.block116, label %vector.body112, !llvm.loop !19

middle.block116:                                  ; preds = %vector.body112
  %cmp.n117 = icmp eq i64 %i.dn, %n.vec109
  br i1 %cmp.n117, label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71, label %.lr.ph.i69.preheader

.lr.ph.i69.preheader:                             ; preds = %.lr.ph.preheader.i68, %middle.block116
  %.07.i70.ph = phi ptr [ %i.cz, %.lr.ph.preheader.i68 ], [ %6, %middle.block116 ]
  br label %.lr.ph.i69

.lr.ph.i69:                                       ; preds = %.lr.ph.i69.preheader, %.lr.ph.i69
  %.07.i70 = phi ptr [ %i.dr, %.lr.ph.i69 ], [ %.07.i70.ph, %.lr.ph.i69.preheader ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.07.i70, i64 4 ; 2 uses
  store i32 %3, ptr %.07.i70, align 4
  %i.ds = icmp ult ptr %i.dr, %i.db
  br i1 %i.ds, label %.lr.ph.i69, label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71, !llvm.loop !20

_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71.sink.split: ; preds = %bb.p, %bb.j, %bb.e, %bb.b
  %.sink = phi i32 [ 7, %bb.j ], [ 7, %bb.e ], [ 1, %bb.b ], [ 7, %bb.p ]
  store i32 %.sink, ptr %4, align 4
  br label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71

_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71:  ; preds = %.lr.ph.i61, %.lr.ph.i69, %middle.block102, %middle.block116, %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71.sink.split, %bb.m, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @umutablecptrie_buildImmutable_78(ptr nofree noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i16], align 16            ; 6 uses
  %4 = alloca %"class.icu_78::(anonymous namespace)::MixedBlocks", align 8 ; 16 uses
  %i.b = alloca [2176 x i16], align 16            ; 7 uses
  %i.c = alloca [128 x i32], align 16             ; 5 uses
  %5 = alloca %"class.icu_78::(anonymous namespace)::AllSameBlocks", align 4 ; 15 uses
  %6 = alloca %"class.icu_78::(anonymous namespace)::MixedBlocks", align 8 ; 23 uses
  %i.d = load i32, ptr %3, align 4
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie5buildE11UCPTrieType17UCPTrieValueWidthR10UErrorCode.exit

bb.b:                                             ; preds = %bb.a
  %or.cond.i = icmp ugt i32 %1, 1
  %i.f = icmp ugt i32 %2, 2
  %or.cond5.i = or i1 %or.cond.i, %i.f
  br i1 %or.cond5.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %3, align 4
  br label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie5buildE11UCPTrieType17UCPTrieValueWidthR10UErrorCode.exit

bb.d:                                             ; preds = %bb.b
  switch i32 %2, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie10maskValuesEj.exit.i [
    i32 2, label %bb.m
    i32 0, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = load <2 x i32>, ptr %i.g, align 8
  %i.i = and <2 x i32> %i.h, splat (i32 65535)
  store <2 x i32> %i.i, ptr %i.g, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, 65535
  store i32 %i.l, ptr %i.j, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load i32, ptr %i.m, align 8
  %i.o = ashr i32 %i.n, 4                         ; 4 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.i.i, label %.preheader.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %wide.trip.count.i.i = zext nneg i32 %i.o to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.r = icmp eq i32 %i.o, 1
  br i1 %i.r, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483646
  br label %bb.g

.preheader.i.i.loopexit.unr-lcssa:                ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.i.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.1, %.preheader.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod332 = trunc i32 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod332)
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv.i.i.epil.init
  %i.t = load i8, ptr %i.s, align 1
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.f, label %.preheader.i.i

bb.f:                                             ; preds = %.epil.preheader
  %i.v = load ptr, ptr %0, align 8
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.i.i.epil.init ; 2 uses
  %i.x = load i32, ptr %i.w, align 4
  %i.y = and i32 %i.x, 65535
  store i32 %i.y, ptr %i.w, align 4
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.loopexit.unr-lcssa, %bb.f, %.epil.preheader, %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph16.i.i, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie10maskValuesEj.exit.i

.lr.ph16.i.i:                                     ; preds = %.preheader.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.l

bb.g:                                             ; preds = %bb.k, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.1, %bb.k ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.k ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv.i.i
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = icmp eq i8 %i.ae, 0
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = load ptr, ptr %0, align 8
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.i.i ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = and i32 %i.ai, 65535
  store i32 %i.aj, ptr %i.ah, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv.next.i.i
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.an = load ptr, ptr %0, align 8
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next.i.i ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = and i32 %i.ap, 65535
  store i32 %i.aq, ptr %i.ao, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.i.i.loopexit.unr-lcssa, label %bb.g, !llvm.loop !21

bb.l:                                             ; preds = %bb.l, %.lr.ph16.i.i
  %indvars.iv18.i.i = phi i64 [ 0, %.lr.ph16.i.i ], [ %indvars.iv.next19.i.i, %bb.l ] ; 2 uses
  %i.ar = load ptr, ptr %i.ac, align 8
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv18.i.i ; 2 uses
  %i.at = load i32, ptr %i.as, align 4
  %i.au = and i32 %i.at, 65535
  store i32 %i.au, ptr %i.as, align 4
  %indvars.iv.next19.i.i = add nuw nsw i64 %indvars.iv18.i.i, 1 ; 2 uses
  %i.av = load i32, ptr %i.z, align 4
  %i.aw = sext i32 %i.av to i64
  %i.ax = icmp slt i64 %indvars.iv.next19.i.i, %i.aw
  br i1 %i.ax, label %bb.l, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie10maskValuesEj.exit.i, !llvm.loop !22

bb.m:                                             ; preds = %bb.d
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.az = load <2 x i32>, ptr %i.ay, align 8
  %i.ba = and <2 x i32> %i.az, splat (i32 255)
  store <2 x i32> %i.ba, ptr %i.ay, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = and i32 %i.bc, 255
  store i32 %i.bd, ptr %i.bb, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bf = load i32, ptr %i.be, align 8
  %i.bg = ashr i32 %i.bf, 4                       ; 4 uses
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %.lr.ph.i118.i, label %.preheader.i114.i

.lr.ph.i118.i:                                    ; preds = %bb.m
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %wide.trip.count.i119.i = zext nneg i32 %i.bg to i64 ; 2 uses
  %xtraiter334 = and i64 %wide.trip.count.i119.i, 1
  %i.bj = icmp eq i32 %i.bg, 1
  br i1 %i.bj, label %.epil.preheader333, label %.lr.ph.i118.i.new

.lr.ph.i118.i.new:                                ; preds = %.lr.ph.i118.i
  %unroll_iter337 = and i64 %wide.trip.count.i119.i, 2147483646
  br label %bb.o

.preheader.i114.i.loopexit.unr-lcssa:             ; preds = %bb.s
  %lcmp.mod335.not = icmp eq i64 %xtraiter334, 0
  br i1 %lcmp.mod335.not, label %.preheader.i114.i, label %.epil.preheader333

.epil.preheader333:                               ; preds = %.preheader.i114.i.loopexit.unr-lcssa, %.lr.ph.i118.i
  %indvars.iv.i120.i.epil.init = phi i64 [ 0, %.lr.ph.i118.i ], [ %indvars.iv.next.i121.i.1, %.preheader.i114.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod336 = trunc i32 %i.bg to i1
  tail call void @llvm.assume(i1 %lcmp.mod336)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 %indvars.iv.i120.i.epil.init
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = icmp eq i8 %i.bl, 0
  br i1 %i.bm, label %bb.n, label %.preheader.i114.i

bb.n:                                             ; preds = %.epil.preheader333
  %i.bn = load ptr, ptr %0, align 8
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv.i120.i.epil.init ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = and i32 %i.bp, 255
  store i32 %i.bq, ptr %i.bo, align 4
  br label %.preheader.i114.i

.preheader.i114.i:                                ; preds = %.preheader.i114.i.loopexit.unr-lcssa, %bb.n, %.epil.preheader333, %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %.lr.ph16.i115.i, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie10maskValuesEj.exit.i

.lr.ph16.i115.i:                                  ; preds = %.preheader.i114.i
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.t

bb.o:                                             ; preds = %bb.s, %.lr.ph.i118.i.new
  %indvars.iv.i120.i = phi i64 [ 0, %.lr.ph.i118.i.new ], [ %indvars.iv.next.i121.i.1, %bb.s ] ; 4 uses
  %niter338 = phi i64 [ 0, %.lr.ph.i118.i.new ], [ %niter338.next.1, %bb.s ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bi, i64 %indvars.iv.i120.i
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = icmp eq i8 %i.bw, 0
  br i1 %i.bx, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.by = load ptr, ptr %0, align 8
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.i120.i ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = and i32 %i.ca, 255
  store i32 %i.cb, ptr %i.bz, align 4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %indvars.iv.next.i121.i = or disjoint i64 %indvars.iv.i120.i, 1 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bi, i64 %indvars.iv.next.i121.i
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = icmp eq i8 %i.cd, 0
  br i1 %i.ce, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cf = load ptr, ptr %0, align 8
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.next.i121.i ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = and i32 %i.ch, 255
  store i32 %i.ci, ptr %i.cg, align 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %indvars.iv.next.i121.i.1 = add nuw nsw i64 %indvars.iv.i120.i, 2 ; 2 uses
  %niter338.next.1 = add i64 %niter338, 2         ; 2 uses
  %niter338.ncmp.1 = icmp eq i64 %niter338.next.1, %unroll_iter337
  br i1 %niter338.ncmp.1, label %.preheader.i114.i.loopexit.unr-lcssa, label %bb.o, !llvm.loop !21

bb.t:                                             ; preds = %bb.t, %.lr.ph16.i115.i
  %indvars.iv18.i116.i = phi i64 [ 0, %.lr.ph16.i115.i ], [ %indvars.iv.next19.i117.i, %bb.t ] ; 2 uses
  %i.cj = load ptr, ptr %i.bu, align 8
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv18.i116.i ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = and i32 %i.cl, 255
  store i32 %i.cm, ptr %i.ck, align 4
  %indvars.iv.next19.i117.i = add nuw nsw i64 %indvars.iv18.i116.i, 1 ; 2 uses
  %i.cn = load i32, ptr %i.br, align 4
  %i.co = sext i32 %i.cn to i64
  %i.cp = icmp slt i64 %indvars.iv.next19.i117.i, %i.co
  br i1 %i.cp, label %bb.t, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie10maskValuesEj.exit.i, !llvm.loop !22

_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie10maskValuesEj.exit.i: ; preds = %bb.l, %bb.t, %.preheader.i114.i, %.preheader.i.i, %bb.d
  %i.cq = icmp eq i32 %1, 0
  %i.cr = select i1 %i.cq, i32 65536, i32 4096    ; 7 uses
  %i.cs = lshr exact i32 %i.cr, 4                 ; 9 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 10 uses
  %i.cu = load i32, ptr %i.ct, align 8            ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.cu, 1114111
  br i1 %.not.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie10maskValuesEj.exit.i
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 52
  br label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie3getEi.exit.i.i

bb.v:                                             ; preds = %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie10maskValuesEj.exit.i
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 69695
  %i.cx = load i8, ptr %i.cw, align 1
  %i.cy = icmp eq i8 %i.cx, 0
  br i1 %i.cy, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cz = load ptr, ptr %0, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 278524
  br label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie3getEi.exit.i.i

bb.x:                                             ; preds = %bb.v
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = load ptr, ptr %0, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 278524
  %i.df = load i32, ptr %i.de, align 4
  %i.dg = add i32 %i.df, 15
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.dh
  br label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie3getEi.exit.i.i

_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie3getEi.exit.i.i: ; preds = %bb.x, %bb.w, %bb.u
  %.1.in.i.i.i = phi ptr [ %i.di, %bb.x ], [ %i.cv, %bb.u ], [ %i.da, %bb.w ]
  %.1.i.i.i = load i32, ptr %.1.in.i.i.i, align 4 ; 21 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 12 uses
  store i32 %.1.i.i.i, ptr %i.dj, align 4
  %i.dk = ashr i32 %i.cu, 4                       ; 2 uses
  %i.dl = icmp sgt i32 %i.dk, 0
  br i1 %i.dl, label %.lr.ph.i.i.i, label %.thread.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie3getEi.exit.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = load ptr, ptr %0, align 8
  %i.dq = zext nneg i32 %i.dk to i64
  br label %bb.y

bb.y:                                             ; preds = %.thread.i.i.i, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.dq, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %.thread.i.i.i ] ; 3 uses
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 %indvars.iv.next.i.i.i
  %i.ds = load i8, ptr %i.dr, align 1
  %i.dt = icmp eq i8 %i.ds, 0
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv.next.i.i.i
  %i.dv = load i32, ptr %i.du, align 4            ; 2 uses
  br i1 %i.dt, label %bb.ap, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dw = zext i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.dw ; 16 uses
  %i.dy = load i32, ptr %i.dx, align 4
  %.not.i49.i.i = icmp eq i32 %i.dy, %.1.i.i.i
  br i1 %.not.i49.i.i, label %bb.aa, label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i

bb.aa:                                            ; preds = %bb.z
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  %i.ea = load i32, ptr %i.dz, align 4
  %.not.1.i.i.i = icmp eq i32 %i.ea, %.1.i.i.i
  br i1 %.not.1.i.i.i, label %bb.ab, label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.ec = load i32, ptr %i.eb, align 4
  %.not.2.i.i.i = icmp eq i32 %i.ec, %.1.i.i.i
  br i1 %.not.2.i.i.i, label %bb.ac, label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dx, i64 12
  %i.ee = load i32, ptr %i.ed, align 4
  %.not.3.i.i.i = icmp eq i32 %i.ee, %.1.i.i.i
  br i1 %.not.3.i.i.i, label %bb.ad, label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.eg = load i32, ptr %i.ef, align 4
  %.not.4.i.i.i = icmp eq i32 %i.eg, %.1.i.i.i
  br i1 %.not.4.i.i.i, label %bb.ae, label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dx, i64 20
  %i.ei = load i32, ptr %i.eh, align 4
  %.not.5.i.i.i = icmp eq i32 %i.ei, %.1.i.i.i
  br i1 %.not.5.i.i.i, label %bb.af, label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i

bb.af:                                            ; preds = %bb.ae
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.ek = load i32, ptr %i.ej, align 4
  %.not.6.i.i.i = icmp eq i32 %i.ek, %.1.i.i.i
  br i1 %.not.6.i.i.i, label %bb.ag, label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i

bb.ag:                                            ; preds = %bb.af
  %i.el = getelementptr inbounds nuw i8, ptr %i.dx, i64 28
  %i.em = load i32, ptr %i.el, align 4
  %.not.7.i.i.i = icmp eq i32 %i.em, %.1.i.i.i
  br i1 %.not.7.i.i.i, label %bb.ah, label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.en = getelementptr inbounds nuw i8, ptr %i.dx, i64 32
  %i.eo = load i32, ptr %i.en, align 4
  %.not.8.i.i.i = icmp eq i32 %i.eo, %.1.i.i.i
  br i1 %.not.8.i.i.i, label %bb.ai, label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dx, i64 36
  %i.eq = load i32, ptr %i.ep, align 4
  %.not.9.i.i.i = icmp eq i32 %i.eq, %.1.i.i.i
  br i1 %.not.9.i.i.i, label %bb.aj, label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.er = getelementptr inbounds nuw i8, ptr %i.dx, i64 40
  %i.es = load i32, ptr %i.er, align 4
  %.not.10.i.i.i = icmp eq i32 %i.es, %.1.i.i.i
  br i1 %.not.10.i.i.i, label %bb.ak, label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.et = getelementptr inbounds nuw i8, ptr %i.dx, i64 44
  %i.eu = load i32, ptr %i.et, align 4
  %.not.11.i.i.i = icmp eq i32 %i.eu, %.1.i.i.i
  br i1 %.not.11.i.i.i, label %bb.al, label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i

bb.al:                                            ; preds = %bb.ak
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dx, i64 48
  %i.ew = load i32, ptr %i.ev, align 4
  %.not.12.i.i.i = icmp eq i32 %i.ew, %.1.i.i.i
  br i1 %.not.12.i.i.i, label %bb.am, label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i

bb.am:                                            ; preds = %bb.al
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dx, i64 52
  %i.ey = load i32, ptr %i.ex, align 4
  %.not.13.i.i.i = icmp eq i32 %i.ey, %.1.i.i.i
  br i1 %.not.13.i.i.i, label %bb.an, label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i

bb.an:                                            ; preds = %bb.am
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dx, i64 56
  %i.fa = load i32, ptr %i.ez, align 4
  %.not.14.i.i.i = icmp eq i32 %i.fa, %.1.i.i.i
  br i1 %.not.14.i.i.i, label %bb.ao, label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i

bb.ao:                                            ; preds = %bb.an
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dx, i64 60
  %i.fc = load i32, ptr %i.fb, align 4
  %.not.15.i.i.i = icmp eq i32 %i.fc, %.1.i.i.i
  br i1 %.not.15.i.i.i, label %.thread.i.i.i, label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i

bb.ap:                                            ; preds = %bb.y
  %i.fd = icmp eq i32 %i.dv, %.1.i.i.i
  br i1 %i.fd, label %.thread.i.i.i, label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i

.thread.i.i.i:                                    ; preds = %bb.ap, %bb.ao
  %i.fe = icmp samesign ugt i64 %indvars.iv.i.i.i, 1
  br i1 %i.fe, label %bb.y, label %.thread.i.i

_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i: ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z
  %.2.i.in.i.i = trunc i64 %indvars.iv.i.i.i to i32
  %.2.i.i.i = shl nuw nsw i32 %.2.i.in.i.i, 4
  %i.ff = add nuw nsw i32 %.2.i.i.i, 496
  %i.fg = and i32 %i.ff, 2147483136               ; 5 uses
  %i.fh = icmp eq i32 %i.fg, 1114112
  br i1 %i.fh, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fj = load i32, ptr %i.fi, align 8            ; 2 uses
  store i32 %i.fj, ptr %i.dj, align 4
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i
  %i.fk = phi i32 [ %i.fj, %bb.aq ], [ %.1.i.i.i, %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i ]
  %i.fl = icmp samesign ult i32 %i.fg, %i.cr
  br i1 %i.fl, label %.thread.i.i, label %.loopexit.i.i

.thread.i.i:                                      ; preds = %.thread.i.i.i, %bb.ar, %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie3getEi.exit.i.i
  %i.fm = phi i32 [ %i.fk, %bb.ar ], [ %.1.i.i.i, %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie3getEi.exit.i.i ], [ %.1.i.i.i, %.thread.i.i.i ] ; 4 uses
  %i.fn = phi i32 [ %i.fg, %bb.ar ], [ 0, %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie3getEi.exit.i.i ], [ 0, %.thread.i.i.i ] ; 3 uses
  %i.fo = lshr exact i32 %i.fn, 4                 ; 2 uses
  %i.fp = icmp samesign ult i32 %i.fo, %i.cs
  br i1 %i.fp, label %.lr.ph.i124.i, label %.loopexit.i.i

.lr.ph.i124.i:                                    ; preds = %.thread.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.fr = zext nneg i32 %i.fo to i64
  %wide.trip.count.i125.i = zext nneg i32 %i.cs to i64
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %.lr.ph.i124.i
  %indvars.iv.i126.i = phi i64 [ %i.fr, %.lr.ph.i124.i ], [ %indvars.iv.next.i127.i.3, %bb.as ] ; 6 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 %indvars.iv.i126.i
  store i8 0, ptr %i.fs, align 1
  %i.ft = load ptr, ptr %0, align 8
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %indvars.iv.i126.i
  store i32 %i.fm, ptr %i.fu, align 4
  %indvars.iv.next.i127.i = or disjoint i64 %indvars.iv.i126.i, 1 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fq, i64 %indvars.iv.next.i127.i
  store i8 0, ptr %i.fv, align 1
  %i.fw = load ptr, ptr %0, align 8
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %indvars.iv.next.i127.i
  store i32 %i.fm, ptr %i.fx, align 4
  %indvars.iv.next.i127.i.1 = or disjoint i64 %indvars.iv.i126.i, 2 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fq, i64 %indvars.iv.next.i127.i.1
  store i8 0, ptr %i.fy, align 1
  %i.fz = load ptr, ptr %0, align 8
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %indvars.iv.next.i127.i.1
  store i32 %i.fm, ptr %i.ga, align 4
  %indvars.iv.next.i127.i.2 = or disjoint i64 %indvars.iv.i126.i, 3 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fq, i64 %indvars.iv.next.i127.i.2
  store i8 0, ptr %i.gb, align 1
  %i.gc = load ptr, ptr %0, align 8
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv.next.i127.i.2
  store i32 %i.fm, ptr %i.gd, align 4
  %indvars.iv.next.i127.i.3 = add nuw nsw i64 %indvars.iv.i126.i, 4 ; 2 uses
  %exitcond.not.i128.i.3 = icmp eq i64 %indvars.iv.next.i127.i.3, %wide.trip.count.i125.i
  br i1 %exitcond.not.i128.i.3, label %.loopexit.i.i, label %bb.as, !llvm.loop !23

.loopexit.i.i:                                    ; preds = %bb.as, %.thread.i.i, %bb.ar
  %i.ge = phi i32 [ %i.fg, %bb.ar ], [ %i.cr, %.thread.i.i ], [ %i.cr, %bb.as ] ; 3 uses
  %i.gf = phi i32 [ %i.fg, %bb.ar ], [ %i.fn, %.thread.i.i ], [ %i.fn, %bb.as ]
  store i32 %i.ge, ptr %i.ct, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 8 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 16 uses
  %i.gi = zext nneg i32 %i.ge to i64
  br label %bb.bo

.lr.ph149.i.i.i:                                  ; preds = %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie3getEi.exit58.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  store i32 0, ptr %5, align 4
  %i.gj = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 6 uses
  store i32 -1, ptr %i.gj, align 4
  %i.gk = lshr exact i32 %i.ge, 4
  %i.gl = getelementptr inbounds nuw i8, ptr %5, i64 136 ; 5 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %5, i64 264 ; 18 uses
  br label %bb.at

bb.at:                                            ; preds = %.thread133.i.i.i, %.lr.ph149.i.i.i
  %.078147.i.i.i = phi i32 [ 148, %.lr.ph149.i.i.i ], [ %.583136.i.i.i, %.thread133.i.i.i ] ; 4 uses
  %.089145.i.i.i = phi i32 [ 0, %.lr.ph149.i.i.i ], [ %i.lm, %.thread133.i.i.i ] ; 9 uses
  %.090144.i.i.i = phi i32 [ 4, %.lr.ph149.i.i.i ], [ %spec.select98.i.i.i, %.thread133.i.i.i ]
  %.092143.i.i.i = phi i32 [ 64, %.lr.ph149.i.i.i ], [ %spec.select.i.i.i, %.thread133.i.i.i ]
  %i.go = icmp eq i32 %.089145.i.i.i, %i.cs       ; 2 uses
  %spec.select.i.i.i = select i1 %i.go, i32 16, i32 %.092143.i.i.i ; 5 uses
  %spec.select98.i.i.i = select i1 %i.go, i32 1, i32 %.090144.i.i.i ; 7 uses
  %i.gp = load ptr, ptr %0, align 8               ; 2 uses
  %i.gq = zext nneg i32 %.089145.i.i.i to i64     ; 4 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.gq ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 4            ; 5 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.gq ; 3 uses
  %i.gu = load i8, ptr %i.gt, align 1
  %i.gv = icmp eq i8 %i.gu, 1
  br i1 %i.gv, label %.lr.ph.i.preheader.i.i.i, label %bb.aw

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.at
  %i.gw = load ptr, ptr %i.gh, align 8
  %i.gx = zext i32 %i.gs to i64
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.gx ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 4            ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 4 ; 2 uses
  %i.hb = add nsw i32 %spec.select.i.i.i, -1
  %i.hc = zext nneg i32 %i.hb to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.hc, 2
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 %.idx.i.i.i.i ; 2 uses
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.au, %.lr.ph.i.preheader.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.hg, %bb.au ], [ %i.ha, %.lr.ph.i.preheader.i.i.i ] ; 3 uses
  %i.he = load i32, ptr %.08.i.i.i.i, align 4
  %i.hf = icmp eq i32 %i.he, %i.gz
  br i1 %i.hf, label %bb.au, label %_ZN6icu_7812_GLOBAL__N_115allValuesSameAsEPKjij.exit.i.i.i

bb.au:                                            ; preds = %.lr.ph.i.i.i.i
  %i.hg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 4 ; 3 uses
  %i.hh = icmp ult ptr %i.hg, %i.hd
  br i1 %i.hh, label %.lr.ph.i.i.i.i, label %_ZN6icu_7812_GLOBAL__N_115allValuesSameAsEPKjij.exit.i.i.i, !llvm.loop !24

_ZN6icu_7812_GLOBAL__N_115allValuesSameAsEPKjij.exit.i.i.i: ; preds = %bb.au, %.lr.ph.i.i.i.i
  %.0.lcssa.i.ph.i.i.i = phi ptr [ %i.hg, %bb.au ], [ %.08.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.hi = icmp eq ptr %.0.lcssa.i.ph.i.i.i, %i.hd
  br i1 %i.hi, label %.thread.i54.i.i, label %bb.av

.thread.i54.i.i:                                  ; preds = %_ZN6icu_7812_GLOBAL__N_115allValuesSameAsEPKjij.exit.i.i.i
  store i8 0, ptr %i.gt, align 1
  store i32 %i.gz, ptr %i.gr, align 4
  br label %.critedge.i.i.i

bb.av:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_115allValuesSameAsEPKjij.exit.i.i.i
  %i.hj = add nsw i32 %spec.select.i.i.i, %.078147.i.i.i
  br label %.thread133.i.i.i

bb.aw:                                            ; preds = %bb.at
  %i.hk = icmp samesign ugt i32 %spec.select98.i.i.i, 1
  br i1 %i.hk, label %bb.ax, label %.critedge.i.i.i

bb.ax:                                            ; preds = %bb.aw
  %i.hl = add nuw nsw i32 %spec.select98.i.i.i, %.089145.i.i.i
  %i.hm = zext nneg i32 %i.hl to i64              ; 2 uses
  %indvars.iv.next.i52.i.i230 = add nuw nsw i64 %i.gq, 1 ; 2 uses
  %.not96.not.i.i.i231 = icmp samesign ult i64 %indvars.iv.next.i52.i.i230, %i.hm
  br i1 %.not96.not.i.i.i231, label %.lr.ph, label %.critedge.i.i.i

bb.ay:                                            ; preds = %.lr.ph
  %indvars.iv.next.i52.i.i = add nuw nsw i64 %indvars.iv.next.i52.i.i232, 1 ; 2 uses
  %.not96.not.i.i.i = icmp samesign ult i64 %indvars.iv.next.i52.i.i, %i.hm
  br i1 %.not96.not.i.i.i, label %.lr.ph, label %.critedge.i.i.i, !llvm.loop !25

.lr.ph:                                           ; preds = %bb.ax, %bb.ay
  %indvars.iv.next.i52.i.i232 = phi i64 [ %indvars.iv.next.i52.i.i, %bb.ay ], [ %indvars.iv.next.i52.i.i230, %bb.ax ] ; 2 uses
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %indvars.iv.next.i52.i.i232
  %i.ho = load i32, ptr %i.hn, align 4
  %.not.i53.i.i = icmp eq i32 %i.ho, %i.gs
  br i1 %.not.i53.i.i, label %bb.ay, label %bb.bn, !llvm.loop !25

.critedge.i.i.i:                                  ; preds = %bb.ay, %bb.ax, %bb.aw, %.thread.i54.i.i
  %.084.i.i.i = phi i32 [ %i.gz, %.thread.i54.i.i ], [ %i.gs, %bb.aw ], [ %i.gs, %bb.ax ], [ %i.gs, %bb.ay ] ; 6 uses
  %i.hp = load i32, ptr %i.gj, align 4            ; 2 uses
  %i.hq = icmp sgt i32 %i.hp, -1
  br i1 %i.hq, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %.critedge.i.i.i
  %i.hr = zext nneg i32 %i.hp to i64              ; 2 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %i.hr
  %i.ht = load i32, ptr %i.hs, align 4
  %i.hu = icmp eq i32 %i.ht, %.084.i.i.i
  br i1 %i.hu, label %_ZN6icu_7812_GLOBAL__N_113AllSameBlocks9findOrAddEiij.exit.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.critedge.i.i.i
  %i.hv = load i32, ptr %5, align 4               ; 5 uses
  %i.hw = icmp sgt i32 %i.hv, 0
  br i1 %i.hw, label %.lr.ph.i103.i.i.i, label %_ZN6icu_7812_GLOBAL__N_113AllSameBlocks9findOrAddEiij.exit.thread.i.i.i

.lr.ph.i103.i.i.i:                                ; preds = %bb.ba
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.hv to i64
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bc, %.lr.ph.i103.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.i103.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.bc ] ; 4 uses
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %indvars.iv.i.i.i.i
  %i.hy = load i32, ptr %i.hx, align 4
  %i.hz = icmp eq i32 %i.hy, %.084.i.i.i
  br i1 %i.hz, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.bb, !llvm.loop !26

bb.bd:                                            ; preds = %bb.bb
  %i.ia = trunc nuw nsw i64 %indvars.iv.i.i.i.i to i32
  store i32 %i.ia, ptr %i.gj, align 4
  br label %_ZN6icu_7812_GLOBAL__N_113AllSameBlocks9findOrAddEiij.exit.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.bc
  %i.ib = icmp eq i32 %i.hv, 32
  br i1 %i.ib, label %.preheader.i.i.i, label %_ZN6icu_7812_GLOBAL__N_113AllSameBlocks9findOrAddEiij.exit.thread.i.i.i

_ZN6icu_7812_GLOBAL__N_113AllSameBlocks9findOrAddEiij.exit.thread.i.i.i: ; preds = %._crit_edge.i.i.i.i, %bb.ba
  store i32 %i.hv, ptr %i.gj, align 4
  %i.ic = sext i32 %i.hv to i64
  %i.id = getelementptr inbounds [4 x i8], ptr %i.gm, i64 %i.ic
  store i32 %.089145.i.i.i, ptr %i.id, align 4
  %i.ie = load i32, ptr %5, align 4
  %i.if = sext i32 %i.ie to i64
  %i.ig = getelementptr inbounds [4 x i8], ptr %i.gl, i64 %i.if
  store i32 %.084.i.i.i, ptr %i.ig, align 4
  %i.ih = load i32, ptr %5, align 4               ; 2 uses
  %i.ii = add nsw i32 %i.ih, 1
  store i32 %i.ii, ptr %5, align 4
  %i.ij = sext i32 %i.ih to i64
  br label %.thread127.sink.split.i.i.i

_ZN6icu_7812_GLOBAL__N_113AllSameBlocks9findOrAddEiij.exit.i.i.i: ; preds = %bb.bd, %bb.az
  %.sink172.i.i.i = phi i64 [ %indvars.iv.i.i.i.i, %bb.bd ], [ %i.hr, %bb.az ] ; 2 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %.sink172.i.i.i ; 2 uses
  %i.il = load i32, ptr %i.ik, align 4
  %i.im = add nsw i32 %i.il, %spec.select98.i.i.i
  store i32 %i.im, ptr %i.ik, align 4
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %.sink172.i.i.i
  %i.io = load i32, ptr %i.in, align 4            ; 3 uses
  %i.ip = icmp eq i32 %i.io, -2
  br i1 %i.ip, label %.preheader.i.i.i, label %bb.bl

.preheader.i.i.i:                                 ; preds = %_ZN6icu_7812_GLOBAL__N_113AllSameBlocks9findOrAddEiij.exit.i.i.i, %._crit_edge.i.i.i.i
  %i.iq = icmp eq i32 %.089145.i.i.i, 0
  br i1 %i.iq, label %._crit_edge.i.i.i, label %.lr.ph.i50.i.i

._crit_edge.i.i.i:                                ; preds = %bb.bk, %.preheader.i.i.i
  %i.ir = load i32, ptr %5, align 4               ; 3 uses
  %i.is = icmp sgt i32 %i.ir, 0
  br i1 %i.is, label %.lr.ph.i105.i.i.i, label %_ZN6icu_7812_GLOBAL__N_113AllSameBlocks3addEiij.exit.i.i.i

.lr.ph.i105.i.i.i:                                ; preds = %._crit_edge.i.i.i
  %wide.trip.count.i106.i.i.i = zext nneg i32 %i.ir to i64 ; 2 uses
  %xtraiter349 = and i64 %wide.trip.count.i106.i.i.i, 3 ; 3 uses
  %i.it = icmp ult i32 %i.ir, 4
  br i1 %i.it, label %.epil.preheader348, label %.lr.ph.i105.i.i.i.new

.lr.ph.i105.i.i.i.new:                            ; preds = %.lr.ph.i105.i.i.i
  %unroll_iter354 = and i64 %wide.trip.count.i106.i.i.i, 2147483644
  br label %bb.be

bb.be:                                            ; preds = %bb.be, %.lr.ph.i105.i.i.i.new
  %indvars.iv.i107.i.i.i = phi i64 [ 0, %.lr.ph.i105.i.i.i.new ], [ %indvars.iv.next.i108.i.i.i.3, %bb.be ] ; 6 uses
  %.01319.i.i.i.i = phi i32 [ 69632, %.lr.ph.i105.i.i.i.new ], [ %spec.select17.i.i.i.i.3, %bb.be ] ; 2 uses
  %.01418.i.i.i.i = phi i32 [ -1, %.lr.ph.i105.i.i.i.new ], [ %spec.select.i.i.i.i.3, %bb.be ]
  %niter355 = phi i64 [ 0, %.lr.ph.i105.i.i.i.new ], [ %niter355.next.3, %bb.be ]
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv.i107.i.i.i
  %i.iv = load i32, ptr %i.iu, align 4            ; 2 uses
  %i.iw = icmp slt i32 %i.iv, %.01319.i.i.i.i
  %i.ix = trunc nuw nsw i64 %indvars.iv.i107.i.i.i to i32
  %spec.select.i.i.i.i = select i1 %i.iw, i32 %i.ix, i32 %.01418.i.i.i.i
  %spec.select17.i.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.iv, i32 %.01319.i.i.i.i) ; 2 uses
  %indvars.iv.next.i108.i.i.i = or disjoint i64 %indvars.iv.i107.i.i.i, 1 ; 2 uses
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv.next.i108.i.i.i
  %i.iz = load i32, ptr %i.iy, align 4            ; 2 uses
  %i.ja = icmp slt i32 %i.iz, %spec.select17.i.i.i.i
  %i.jb = trunc nuw nsw i64 %indvars.iv.next.i108.i.i.i to i32
  %spec.select.i.i.i.i.1 = select i1 %i.ja, i32 %i.jb, i32 %spec.select.i.i.i.i
  %spec.select17.i.i.i.i.1 = tail call i32 @llvm.smin.i32(i32 %i.iz, i32 %spec.select17.i.i.i.i) ; 2 uses
  %indvars.iv.next.i108.i.i.i.1 = or disjoint i64 %indvars.iv.i107.i.i.i, 2 ; 2 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv.next.i108.i.i.i.1
  %i.jd = load i32, ptr %i.jc, align 4            ; 2 uses
  %i.je = icmp slt i32 %i.jd, %spec.select17.i.i.i.i.1
  %i.jf = trunc nuw nsw i64 %indvars.iv.next.i108.i.i.i.1 to i32
  %spec.select.i.i.i.i.2 = select i1 %i.je, i32 %i.jf, i32 %spec.select.i.i.i.i.1
  %spec.select17.i.i.i.i.2 = tail call i32 @llvm.smin.i32(i32 %i.jd, i32 %spec.select17.i.i.i.i.1) ; 2 uses
  %indvars.iv.next.i108.i.i.i.2 = or disjoint i64 %indvars.iv.i107.i.i.i, 3 ; 2 uses
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv.next.i108.i.i.i.2
  %i.jh = load i32, ptr %i.jg, align 4            ; 2 uses
  %i.ji = icmp slt i32 %i.jh, %spec.select17.i.i.i.i.2
  %i.jj = trunc nuw nsw i64 %indvars.iv.next.i108.i.i.i.2 to i32
  %spec.select.i.i.i.i.3 = select i1 %i.ji, i32 %i.jj, i32 %spec.select.i.i.i.i.2 ; 3 uses
  %spec.select17.i.i.i.i.3 = tail call i32 @llvm.smin.i32(i32 %i.jh, i32 %spec.select17.i.i.i.i.2) ; 2 uses
  %indvars.iv.next.i108.i.i.i.3 = add nuw nsw i64 %indvars.iv.i107.i.i.i, 4 ; 2 uses
  %niter355.next.3 = add i64 %niter355, 4         ; 2 uses
  %niter355.ncmp.3 = icmp eq i64 %niter355.next.3, %unroll_iter354
  br i1 %niter355.ncmp.3, label %_ZN6icu_7812_GLOBAL__N_113AllSameBlocks3addEiij.exit.i.i.i.loopexit.unr-lcssa, label %bb.be, !llvm.loop !27

_ZN6icu_7812_GLOBAL__N_113AllSameBlocks3addEiij.exit.i.i.i.loopexit.unr-lcssa: ; preds = %bb.be
  %lcmp.mod351.not = icmp eq i64 %xtraiter349, 0
  br i1 %lcmp.mod351.not, label %_ZN6icu_7812_GLOBAL__N_113AllSameBlocks3addEiij.exit.i.i.i, label %.epil.preheader348

.epil.preheader348:                               ; preds = %_ZN6icu_7812_GLOBAL__N_113AllSameBlocks3addEiij.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i105.i.i.i
  %indvars.iv.i107.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i105.i.i.i ], [ %indvars.iv.next.i108.i.i.i.3, %_ZN6icu_7812_GLOBAL__N_113AllSameBlocks3addEiij.exit.i.i.i.loopexit.unr-lcssa ]
  %.01319.i.i.i.i.epil.init = phi i32 [ 69632, %.lr.ph.i105.i.i.i ], [ %spec.select17.i.i.i.i.3, %_ZN6icu_7812_GLOBAL__N_113AllSameBlocks3addEiij.exit.i.i.i.loopexit.unr-lcssa ]
  %.01418.i.i.i.i.epil.init = phi i32 [ -1, %.lr.ph.i105.i.i.i ], [ %spec.select.i.i.i.i.3, %_ZN6icu_7812_GLOBAL__N_113AllSameBlocks3addEiij.exit.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod353 = icmp ne i64 %xtraiter349, 0
  tail call void @llvm.assume(i1 %lcmp.mod353)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bf, %.epil.preheader348
  %indvars.iv.i107.i.i.i.epil = phi i64 [ %indvars.iv.i107.i.i.i.epil.init, %.epil.preheader348 ], [ %indvars.iv.next.i108.i.i.i.epil, %bb.bf ] ; 3 uses
  %.01319.i.i.i.i.epil = phi i32 [ %.01319.i.i.i.i.epil.init, %.epil.preheader348 ], [ %spec.select17.i.i.i.i.epil, %bb.bf ] ; 2 uses
  %.01418.i.i.i.i.epil = phi i32 [ %.01418.i.i.i.i.epil.init, %.epil.preheader348 ], [ %spec.select.i.i.i.i.epil, %bb.bf ]
  %epil.iter350 = phi i64 [ 0, %.epil.preheader348 ], [ %epil.iter350.next, %bb.bf ]
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv.i107.i.i.i.epil
  %i.jl = load i32, ptr %i.jk, align 4            ; 2 uses
  %i.jm = icmp slt i32 %i.jl, %.01319.i.i.i.i.epil
  %i.jn = trunc nuw nsw i64 %indvars.iv.i107.i.i.i.epil to i32
  %spec.select.i.i.i.i.epil = select i1 %i.jm, i32 %i.jn, i32 %.01418.i.i.i.i.epil ; 2 uses
  %spec.select17.i.i.i.i.epil = tail call i32 @llvm.smin.i32(i32 %i.jl, i32 %.01319.i.i.i.i.epil)
  %indvars.iv.next.i108.i.i.i.epil = add nuw nsw i64 %indvars.iv.i107.i.i.i.epil, 1
  %epil.iter350.next = add i64 %epil.iter350, 1   ; 2 uses
  %epil.iter350.cmp.not = icmp eq i64 %epil.iter350.next, %xtraiter349
  br i1 %epil.iter350.cmp.not, label %_ZN6icu_7812_GLOBAL__N_113AllSameBlocks3addEiij.exit.i.i.i, label %bb.bf, !llvm.loop !28

_ZN6icu_7812_GLOBAL__N_113AllSameBlocks3addEiij.exit.i.i.i: ; preds = %_ZN6icu_7812_GLOBAL__N_113AllSameBlocks3addEiij.exit.i.i.i.loopexit.unr-lcssa, %bb.bf, %._crit_edge.i.i.i
  %.014.lcssa.i.i.i.i = phi i32 [ -1, %._crit_edge.i.i.i ], [ %spec.select.i.i.i.i.3, %_ZN6icu_7812_GLOBAL__N_113AllSameBlocks3addEiij.exit.i.i.i.loopexit.unr-lcssa ], [ %spec.select.i.i.i.i.epil, %bb.bf ] ; 2 uses
  store i32 %.014.lcssa.i.i.i.i, ptr %i.gj, align 4
  %i.jo = sext i32 %.014.lcssa.i.i.i.i to i64     ; 3 uses
  %i.jp = getelementptr inbounds [4 x i8], ptr %i.gm, i64 %i.jo
  store i32 %.089145.i.i.i, ptr %i.jp, align 4
  %i.jq = getelementptr inbounds [4 x i8], ptr %i.gl, i64 %i.jo
  store i32 %.084.i.i.i, ptr %i.jq, align 4
  br label %.thread127.sink.split.i.i.i

.lr.ph.i50.i.i:                                   ; preds = %.preheader.i.i.i, %bb.bk
  %.0141.i.i.i = phi i32 [ %i.lc, %bb.bk ], [ 0, %.preheader.i.i.i ] ; 5 uses
  %.071140.i.i.i = phi i32 [ %spec.select99.i.i.i, %bb.bk ], [ 4, %.preheader.i.i.i ]
  %i.jr = icmp eq i32 %.0141.i.i.i, %i.cs
  %spec.select99.i.i.i = select i1 %i.jr, i32 1, i32 %.071140.i.i.i ; 3 uses
  %i.js = zext nneg i32 %.0141.i.i.i to i64       ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.js
  %i.ju = load i8, ptr %i.jt, align 1
  %i.jv = icmp eq i8 %i.ju, 0
  br i1 %i.jv, label %bb.bg, label %bb.bk

bb.bg:                                            ; preds = %.lr.ph.i50.i.i
  %i.jw = load ptr, ptr %0, align 8               ; 2 uses
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %i.js
  %i.jy = load i32, ptr %i.jx, align 4
  %i.jz = icmp eq i32 %i.jy, %.084.i.i.i
  br i1 %i.jz, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  %i.ka = add nuw nsw i32 %spec.select99.i.i.i, %spec.select98.i.i.i
  %i.kb = load i32, ptr %5, align 4               ; 3 uses
  %i.kc = icmp sgt i32 %i.kb, 0
  br i1 %i.kc, label %.lr.ph.i112.i.i.i, label %.thread129.i.i.i

.lr.ph.i112.i.i.i:                                ; preds = %bb.bh
  %wide.trip.count.i113.i.i.i = zext nneg i32 %i.kb to i64 ; 2 uses
  %xtraiter342 = and i64 %wide.trip.count.i113.i.i.i, 3 ; 3 uses
  %i.kd = icmp ult i32 %i.kb, 4
  br i1 %i.kd, label %.epil.preheader341, label %.lr.ph.i112.i.i.i.new

.lr.ph.i112.i.i.i.new:                            ; preds = %.lr.ph.i112.i.i.i
  %unroll_iter346 = and i64 %wide.trip.count.i113.i.i.i, 2147483644
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bi, %.lr.ph.i112.i.i.i.new
  %indvars.iv.i114.i.i.i = phi i64 [ 0, %.lr.ph.i112.i.i.i.new ], [ %indvars.iv.next.i119.i.i.i.3, %bb.bi ] ; 6 uses
  %.01319.i115.i.i.i = phi i32 [ 69632, %.lr.ph.i112.i.i.i.new ], [ %spec.select17.i118.i.i.i.3, %bb.bi ] ; 2 uses
  %.01418.i116.i.i.i = phi i32 [ -1, %.lr.ph.i112.i.i.i.new ], [ %spec.select.i117.i.i.i.3, %bb.bi ]
  %niter347 = phi i64 [ 0, %.lr.ph.i112.i.i.i.new ], [ %niter347.next.3, %bb.bi ]
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv.i114.i.i.i
  %i.kf = load i32, ptr %i.ke, align 4            ; 2 uses
  %i.kg = icmp slt i32 %i.kf, %.01319.i115.i.i.i
  %i.kh = trunc nuw nsw i64 %indvars.iv.i114.i.i.i to i32
  %spec.select.i117.i.i.i = select i1 %i.kg, i32 %i.kh, i32 %.01418.i116.i.i.i
  %spec.select17.i118.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.kf, i32 %.01319.i115.i.i.i) ; 2 uses
  %indvars.iv.next.i119.i.i.i = or disjoint i64 %indvars.iv.i114.i.i.i, 1 ; 2 uses
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv.next.i119.i.i.i
  %i.kj = load i32, ptr %i.ki, align 4            ; 2 uses
  %i.kk = icmp slt i32 %i.kj, %spec.select17.i118.i.i.i
  %i.kl = trunc nuw nsw i64 %indvars.iv.next.i119.i.i.i to i32
  %spec.select.i117.i.i.i.1 = select i1 %i.kk, i32 %i.kl, i32 %spec.select.i117.i.i.i
  %spec.select17.i118.i.i.i.1 = tail call i32 @llvm.smin.i32(i32 %i.kj, i32 %spec.select17.i118.i.i.i) ; 2 uses
  %indvars.iv.next.i119.i.i.i.1 = or disjoint i64 %indvars.iv.i114.i.i.i, 2 ; 2 uses
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv.next.i119.i.i.i.1
  %i.kn = load i32, ptr %i.km, align 4            ; 2 uses
  %i.ko = icmp slt i32 %i.kn, %spec.select17.i118.i.i.i.1
  %i.kp = trunc nuw nsw i64 %indvars.iv.next.i119.i.i.i.1 to i32
  %spec.select.i117.i.i.i.2 = select i1 %i.ko, i32 %i.kp, i32 %spec.select.i117.i.i.i.1
  %spec.select17.i118.i.i.i.2 = tail call i32 @llvm.smin.i32(i32 %i.kn, i32 %spec.select17.i118.i.i.i.1) ; 2 uses
  %indvars.iv.next.i119.i.i.i.2 = or disjoint i64 %indvars.iv.i114.i.i.i, 3 ; 2 uses
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv.next.i119.i.i.i.2
  %i.kr = load i32, ptr %i.kq, align 4            ; 2 uses
  %i.ks = icmp slt i32 %i.kr, %spec.select17.i118.i.i.i.2
  %i.kt = trunc nuw nsw i64 %indvars.iv.next.i119.i.i.i.2 to i32
  %spec.select.i117.i.i.i.3 = select i1 %i.ks, i32 %i.kt, i32 %spec.select.i117.i.i.i.2 ; 3 uses
  %spec.select17.i118.i.i.i.3 = tail call i32 @llvm.smin.i32(i32 %i.kr, i32 %spec.select17.i118.i.i.i.2) ; 2 uses
  %indvars.iv.next.i119.i.i.i.3 = add nuw nsw i64 %indvars.iv.i114.i.i.i, 4 ; 2 uses
  %niter347.next.3 = add i64 %niter347, 4         ; 2 uses
  %niter347.ncmp.3 = icmp eq i64 %niter347.next.3, %unroll_iter346
  br i1 %niter347.ncmp.3, label %.thread129.i.i.i.loopexit.unr-lcssa, label %bb.bi, !llvm.loop !27

.thread129.i.i.i.loopexit.unr-lcssa:              ; preds = %bb.bi
  %lcmp.mod343.not = icmp eq i64 %xtraiter342, 0
  br i1 %lcmp.mod343.not, label %.thread129.i.i.i, label %.epil.preheader341

.epil.preheader341:                               ; preds = %.thread129.i.i.i.loopexit.unr-lcssa, %.lr.ph.i112.i.i.i
  %indvars.iv.i114.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i112.i.i.i ], [ %indvars.iv.next.i119.i.i.i.3, %.thread129.i.i.i.loopexit.unr-lcssa ]
  %.01319.i115.i.i.i.epil.init = phi i32 [ 69632, %.lr.ph.i112.i.i.i ], [ %spec.select17.i118.i.i.i.3, %.thread129.i.i.i.loopexit.unr-lcssa ]
  %.01418.i116.i.i.i.epil.init = phi i32 [ -1, %.lr.ph.i112.i.i.i ], [ %spec.select.i117.i.i.i.3, %.thread129.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod345 = icmp ne i64 %xtraiter342, 0
  tail call void @llvm.assume(i1 %lcmp.mod345)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bj, %.epil.preheader341
  %indvars.iv.i114.i.i.i.epil = phi i64 [ %indvars.iv.i114.i.i.i.epil.init, %.epil.preheader341 ], [ %indvars.iv.next.i119.i.i.i.epil, %bb.bj ] ; 3 uses
  %.01319.i115.i.i.i.epil = phi i32 [ %.01319.i115.i.i.i.epil.init, %.epil.preheader341 ], [ %spec.select17.i118.i.i.i.epil, %bb.bj ] ; 2 uses
  %.01418.i116.i.i.i.epil = phi i32 [ %.01418.i116.i.i.i.epil.init, %.epil.preheader341 ], [ %spec.select.i117.i.i.i.epil, %bb.bj ]
  %epil.iter = phi i64 [ 0, %.epil.preheader341 ], [ %epil.iter.next, %bb.bj ]
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv.i114.i.i.i.epil
  %i.kv = load i32, ptr %i.ku, align 4            ; 2 uses
  %i.kw = icmp slt i32 %i.kv, %.01319.i115.i.i.i.epil
  %i.kx = trunc nuw nsw i64 %indvars.iv.i114.i.i.i.epil to i32
  %spec.select.i117.i.i.i.epil = select i1 %i.kw, i32 %i.kx, i32 %.01418.i116.i.i.i.epil ; 2 uses
  %spec.select17.i118.i.i.i.epil = tail call i32 @llvm.smin.i32(i32 %i.kv, i32 %.01319.i115.i.i.i.epil)
  %indvars.iv.next.i119.i.i.i.epil = add nuw nsw i64 %indvars.iv.i114.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter342
  br i1 %epil.iter.cmp.not, label %.thread129.i.i.i, label %bb.bj, !llvm.loop !30

.thread129.i.i.i:                                 ; preds = %.thread129.i.i.i.loopexit.unr-lcssa, %bb.bj, %bb.bh
  %.014.lcssa.i111.i.i.i = phi i32 [ -1, %bb.bh ], [ %spec.select.i117.i.i.i.3, %.thread129.i.i.i.loopexit.unr-lcssa ], [ %spec.select.i117.i.i.i.epil, %bb.bj ] ; 2 uses
  store i32 %.014.lcssa.i111.i.i.i, ptr %i.gj, align 4
  %i.ky = sext i32 %.014.lcssa.i111.i.i.i to i64  ; 3 uses
  %i.kz = getelementptr inbounds [4 x i8], ptr %i.gm, i64 %i.ky
  store i32 %.0141.i.i.i, ptr %i.kz, align 4
  %i.la = getelementptr inbounds [4 x i8], ptr %i.gl, i64 %i.ky
  store i32 %.084.i.i.i, ptr %i.la, align 4
  %i.lb = getelementptr inbounds [4 x i8], ptr %i.gn, i64 %i.ky
  store i32 %i.ka, ptr %i.lb, align 4
  br label %bb.bm

bb.bk:                                            ; preds = %bb.bg, %.lr.ph.i50.i.i
  %i.lc = add nuw nsw i32 %spec.select99.i.i.i, %.0141.i.i.i ; 2 uses
  %i.ld = icmp eq i32 %i.lc, %.089145.i.i.i
  br i1 %i.ld, label %._crit_edge.i.i.i, label %.lr.ph.i50.i.i, !llvm.loop !31

bb.bl:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_113AllSameBlocks9findOrAddEiij.exit.i.i.i
  %i.le = icmp sgt i32 %i.io, -1
  br i1 %i.le, label %._crit_edge.i.i, label %.thread127.i.i.i

._crit_edge.i.i:                                  ; preds = %bb.bl
  %.pre.i.i = load ptr, ptr %0, align 8
  br label %bb.bm

bb.bm:                                            ; preds = %._crit_edge.i.i, %.thread129.i.i.i
  %i.lf = phi ptr [ %i.jw, %.thread129.i.i.i ], [ %.pre.i.i, %._crit_edge.i.i ]
  %.173131.i.i.i = phi i32 [ %.0141.i.i.i, %.thread129.i.i.i ], [ %i.io, %._crit_edge.i.i ]
  store i8 2, ptr %i.gt, align 1
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %i.gq
  store i32 %.173131.i.i.i, ptr %i.lg, align 4
  br label %.thread133.i.i.i

.thread127.sink.split.i.i.i:                      ; preds = %_ZN6icu_7812_GLOBAL__N_113AllSameBlocks3addEiij.exit.i.i.i, %_ZN6icu_7812_GLOBAL__N_113AllSameBlocks9findOrAddEiij.exit.thread.i.i.i
  %.sink173.i.i.i = phi i64 [ %i.ij, %_ZN6icu_7812_GLOBAL__N_113AllSameBlocks9findOrAddEiij.exit.thread.i.i.i ], [ %i.jo, %_ZN6icu_7812_GLOBAL__N_113AllSameBlocks3addEiij.exit.i.i.i ]
  %i.lh = getelementptr inbounds [4 x i8], ptr %i.gn, i64 %.sink173.i.i.i
  store i32 %spec.select98.i.i.i, ptr %i.lh, align 4
  br label %.thread127.i.i.i

.thread127.i.i.i:                                 ; preds = %.thread127.sink.split.i.i.i, %bb.bl
  %i.li = add nsw i32 %spec.select.i.i.i, %.078147.i.i.i
  br label %.thread133.i.i.i

bb.bn:                                            ; preds = %.lr.ph
  %i.lj = tail call fastcc noundef i32 @_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie12getDataBlockEi(ptr noundef nonnull align 8 dereferenceable(69696) %0, i32 noundef %.089145.i.i.i)
  %i.lk = icmp sgt i32 %i.lj, -1                  ; 2 uses
  %i.ll = select i1 %i.lk, i32 %spec.select.i.i.i, i32 0
  %spec.select102.i.i.i = add nsw i32 %i.ll, %.078147.i.i.i
  br i1 %i.lk, label %.thread133.i.i.i, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactTrieEiR10UErrorCode.exit.thread.i

.thread133.i.i.i:                                 ; preds = %bb.bn, %.thread127.i.i.i, %bb.bm, %bb.av
  %.583136.i.i.i = phi i32 [ %i.hj, %bb.av ], [ %spec.select102.i.i.i, %bb.bn ], [ %i.li, %.thread127.i.i.i ], [ %.078147.i.i.i, %bb.bm ] ; 10 uses
  %i.lm = add nuw nsw i32 %spec.select98.i.i.i, %.089145.i.i.i ; 2 uses
  %.not97.i.i.i = icmp samesign ult i32 %i.lm, %i.gk
  br i1 %.not97.i.i.i, label %bb.at, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie22compactWholeDataBlocksEiRNS0_13AllSameBlocksE.exit.i.i, !llvm.loop !32

_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie22compactWholeDataBlocksEiRNS0_13AllSameBlocksE.exit.i.i: ; preds = %.thread133.i.i.i
  %i.ln = icmp slt i32 %.583136.i.i.i, 0
  br i1 %i.ln, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactTrieEiR10UErrorCode.exit.thread.i, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie22compactWholeDataBlocksEiRNS0_13AllSameBlocksE.exit.thread105.i.i

bb.bo:                                            ; preds = %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie3getEi.exit58.i.i, %.loopexit.i.i
  %indvars.iv213.i.i = phi i64 [ 0, %.loopexit.i.i ], [ %indvars.iv.next214.i.i, %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie3getEi.exit58.i.i ] ; 5 uses
  %.not.i55.i.i = icmp samesign ult i64 %indvars.iv213.i.i, %i.gi
  br i1 %.not.i55.i.i, label %bb.bp, label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie3getEi.exit58.i.i

bb.bp:                                            ; preds = %bb.bo
  %i.lo = lshr i64 %indvars.iv213.i.i, 4          ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.lo
  %i.lq = load i8, ptr %i.lp, align 1
  %i.lr = icmp eq i8 %i.lq, 0
  br i1 %i.lr, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.ls = load ptr, ptr %0, align 8
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %i.lo
  br label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie3getEi.exit58.i.i

bb.br:                                            ; preds = %bb.bp
  %i.lu = trunc nuw nsw i64 %indvars.iv213.i.i to i32
  %i.lv = load ptr, ptr %i.gh, align 8
  %i.lw = load ptr, ptr %0, align 8
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %i.lo
  %i.ly = load i32, ptr %i.lx, align 4
  %i.lz = and i32 %i.lu, 15
  %i.ma = add i32 %i.ly, %i.lz
  %i.mb = zext i32 %i.ma to i64
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.lv, i64 %i.mb
  br label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie3getEi.exit58.i.i

_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie3getEi.exit58.i.i: ; preds = %bb.br, %bb.bq, %bb.bo
  %.1.in.i56.i.i = phi ptr [ %i.mc, %bb.br ], [ %i.lt, %bb.bq ], [ %i.dj, %bb.bo ]
  %.1.i57.i.i = load i32, ptr %.1.in.i56.i.i, align 4
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv213.i.i
  store i32 %.1.i57.i.i, ptr %i.md, align 4
  %indvars.iv.next214.i.i = add nuw nsw i64 %indvars.iv213.i.i, 1 ; 2 uses
  %exitcond216.not.i.i = icmp eq i64 %indvars.iv.next214.i.i, 128
  br i1 %exitcond216.not.i.i, label %.lr.ph149.i.i.i, label %bb.bo, !llvm.loop !33

_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie22compactWholeDataBlocksEiRNS0_13AllSameBlocksE.exit.thread105.i.i: ; preds = %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie22compactWholeDataBlocksEiRNS0_13AllSameBlocksE.exit.i.i
  %i.me = shl nsw i32 %.583136.i.i.i, 2
  %i.mf = zext nneg i32 %i.me to i64
  %i.mg = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.mf) #11 ; 23 uses
  %i.mh = ptrtoaddr ptr %i.mg to i64
  %i.mi = icmp eq ptr %i.mg, null
  br i1 %i.mi, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactTrieEiR10UErrorCode.exit.thread.i, label %bb.bs

bb.bs:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie22compactWholeDataBlocksEiRNS0_13AllSameBlocksE.exit.thread105.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(512) %i.mg, ptr noundef nonnull align 16 dereferenceable(512) %i.c, i64 512, i1 false)
  %i.mj = load i32, ptr %5, align 4               ; 4 uses
  %i.mk = icmp eq i32 %i.mj, 0
  br i1 %i.mk, label %_ZNK6icu_7812_GLOBAL__N_113AllSameBlocks12findMostUsedEv.exit.i.i, label %.preheader.i59.i.i

.preheader.i59.i.i:                               ; preds = %bb.bs
  %i.ml = icmp sgt i32 %i.mj, 0
  br i1 %i.ml, label %.lr.ph.i61.i.i, label %._crit_edge.i60.i.i

.lr.ph.i61.i.i:                                   ; preds = %.preheader.i59.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.mj to i64 ; 2 uses
  %xtraiter357 = and i64 %wide.trip.count.i.i.i, 3 ; 3 uses
  %i.mm = icmp ult i32 %i.mj, 4
  br i1 %i.mm, label %.epil.preheader356, label %.lr.ph.i61.i.i.new

.lr.ph.i61.i.i.new:                               ; preds = %.lr.ph.i61.i.i
  %unroll_iter362 = and i64 %wide.trip.count.i.i.i, 2147483644
  br label %bb.bu

._crit_edge.loopexit.i.i.i.unr-lcssa:             ; preds = %bb.bu
  %lcmp.mod359.not = icmp eq i64 %xtraiter357, 0
  br i1 %lcmp.mod359.not, label %._crit_edge.loopexit.i.i.i, label %.epil.preheader356

.epil.preheader356:                               ; preds = %._crit_edge.loopexit.i.i.i.unr-lcssa, %.lr.ph.i61.i.i
  %indvars.iv.i62.i.i.epil.init = phi i64 [ 0, %.lr.ph.i61.i.i ], [ %indvars.iv.next.i64.i.i.3, %._crit_edge.loopexit.i.i.i.unr-lcssa ]
  %.0815.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.i61.i.i ], [ %spec.select13.i.i.i.3, %._crit_edge.loopexit.i.i.i.unr-lcssa ]
  %.0914.i.i.i.epil.init = phi i32 [ -1, %.lr.ph.i61.i.i ], [ %spec.select.i63.i.i.3, %._crit_edge.loopexit.i.i.i.unr-lcssa ]
  %lcmp.mod361 = icmp ne i64 %xtraiter357, 0
  tail call void @llvm.assume(i1 %lcmp.mod361)
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bt, %.epil.preheader356
  %indvars.iv.i62.i.i.epil = phi i64 [ %indvars.iv.i62.i.i.epil.init, %.epil.preheader356 ], [ %indvars.iv.next.i64.i.i.epil, %bb.bt ] ; 3 uses
  %.0815.i.i.i.epil = phi i32 [ %.0815.i.i.i.epil.init, %.epil.preheader356 ], [ %spec.select13.i.i.i.epil, %bb.bt ] ; 2 uses
  %.0914.i.i.i.epil = phi i32 [ %.0914.i.i.i.epil.init, %.epil.preheader356 ], [ %spec.select.i63.i.i.epil, %bb.bt ]
  %epil.iter358 = phi i64 [ 0, %.epil.preheader356 ], [ %epil.iter358.next, %bb.bt ]
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv.i62.i.i.epil
  %i.mo = load i32, ptr %i.mn, align 4            ; 2 uses
  %i.mp = icmp sgt i32 %i.mo, %.0815.i.i.i.epil
  %i.mq = trunc nuw nsw i64 %indvars.iv.i62.i.i.epil to i32
  %spec.select.i63.i.i.epil = select i1 %i.mp, i32 %i.mq, i32 %.0914.i.i.i.epil ; 2 uses
  %spec.select13.i.i.i.epil = tail call i32 @llvm.smax.i32(i32 %i.mo, i32 %.0815.i.i.i.epil)
  %indvars.iv.next.i64.i.i.epil = add nuw nsw i64 %indvars.iv.i62.i.i.epil, 1
  %epil.iter358.next = add i64 %epil.iter358, 1   ; 2 uses
  %epil.iter358.cmp.not = icmp eq i64 %epil.iter358.next, %xtraiter357
  br i1 %epil.iter358.cmp.not, label %._crit_edge.loopexit.i.i.i, label %bb.bt, !llvm.loop !34

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.bt, %._crit_edge.loopexit.i.i.i.unr-lcssa
  %spec.select.i63.i.i.lcssa = phi i32 [ %spec.select.i63.i.i.3, %._crit_edge.loopexit.i.i.i.unr-lcssa ], [ %spec.select.i63.i.i.epil, %bb.bt ]
  %i.mr = sext i32 %spec.select.i63.i.i.lcssa to i64
  br label %._crit_edge.i60.i.i

._crit_edge.i60.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i, %.preheader.i59.i.i
  %.09.lcssa.i.i.i = phi i64 [ -1, %.preheader.i59.i.i ], [ %i.mr, %._crit_edge.loopexit.i.i.i ]
  %i.ms = getelementptr inbounds [4 x i8], ptr %i.gm, i64 %.09.lcssa.i.i.i
  %i.mt = load i32, ptr %i.ms, align 4
  br label %_ZNK6icu_7812_GLOBAL__N_113AllSameBlocks12findMostUsedEv.exit.i.i

bb.bu:                                            ; preds = %bb.bu, %.lr.ph.i61.i.i.new
  %indvars.iv.i62.i.i = phi i64 [ 0, %.lr.ph.i61.i.i.new ], [ %indvars.iv.next.i64.i.i.3, %bb.bu ] ; 6 uses
  %.0815.i.i.i = phi i32 [ 0, %.lr.ph.i61.i.i.new ], [ %spec.select13.i.i.i.3, %bb.bu ] ; 2 uses
  %.0914.i.i.i = phi i32 [ -1, %.lr.ph.i61.i.i.new ], [ %spec.select.i63.i.i.3, %bb.bu ]
  %niter363 = phi i64 [ 0, %.lr.ph.i61.i.i.new ], [ %niter363.next.3, %bb.bu ]
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv.i62.i.i
  %i.mv = load i32, ptr %i.mu, align 4            ; 2 uses
  %i.mw = icmp sgt i32 %i.mv, %.0815.i.i.i
  %i.mx = trunc nuw nsw i64 %indvars.iv.i62.i.i to i32
  %spec.select.i63.i.i = select i1 %i.mw, i32 %i.mx, i32 %.0914.i.i.i
  %spec.select13.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.mv, i32 %.0815.i.i.i) ; 2 uses
  %indvars.iv.next.i64.i.i = or disjoint i64 %indvars.iv.i62.i.i, 1 ; 2 uses
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv.next.i64.i.i
  %i.mz = load i32, ptr %i.my, align 4            ; 2 uses
  %i.na = icmp sgt i32 %i.mz, %spec.select13.i.i.i
  %i.nb = trunc nuw nsw i64 %indvars.iv.next.i64.i.i to i32
  %spec.select.i63.i.i.1 = select i1 %i.na, i32 %i.nb, i32 %spec.select.i63.i.i
  %spec.select13.i.i.i.1 = tail call i32 @llvm.smax.i32(i32 %i.mz, i32 %spec.select13.i.i.i) ; 2 uses
  %indvars.iv.next.i64.i.i.1 = or disjoint i64 %indvars.iv.i62.i.i, 2 ; 2 uses
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv.next.i64.i.i.1
  %i.nd = load i32, ptr %i.nc, align 4            ; 2 uses
  %i.ne = icmp sgt i32 %i.nd, %spec.select13.i.i.i.1
  %i.nf = trunc nuw nsw i64 %indvars.iv.next.i64.i.i.1 to i32
  %spec.select.i63.i.i.2 = select i1 %i.ne, i32 %i.nf, i32 %spec.select.i63.i.i.1
  %spec.select13.i.i.i.2 = tail call i32 @llvm.smax.i32(i32 %i.nd, i32 %spec.select13.i.i.i.1) ; 2 uses
  %indvars.iv.next.i64.i.i.2 = or disjoint i64 %indvars.iv.i62.i.i, 3 ; 2 uses
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv.next.i64.i.i.2
  %i.nh = load i32, ptr %i.ng, align 4            ; 2 uses
  %i.ni = icmp sgt i32 %i.nh, %spec.select13.i.i.i.2
  %i.nj = trunc nuw nsw i64 %indvars.iv.next.i64.i.i.2 to i32
  %spec.select.i63.i.i.3 = select i1 %i.ni, i32 %i.nj, i32 %spec.select.i63.i.i.2 ; 3 uses
  %spec.select13.i.i.i.3 = tail call i32 @llvm.smax.i32(i32 %i.nh, i32 %spec.select13.i.i.i.2) ; 2 uses
  %indvars.iv.next.i64.i.i.3 = add nuw nsw i64 %indvars.iv.i62.i.i, 4 ; 2 uses
  %niter363.next.3 = add i64 %niter363, 4         ; 2 uses
  %niter363.ncmp.3 = icmp eq i64 %niter363.next.3, %unroll_iter362
  br i1 %niter363.ncmp.3, label %._crit_edge.loopexit.i.i.i.unr-lcssa, label %bb.bu, !llvm.loop !35

_ZNK6icu_7812_GLOBAL__N_113AllSameBlocks12findMostUsedEv.exit.i.i: ; preds = %._crit_edge.i60.i.i, %bb.bs
  %.011.i.i.i = phi i32 [ %i.mt, %._crit_edge.i60.i.i ], [ -1, %bb.bs ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %i.nk = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store i64 0, ptr %i.nl, align 8
  %i.nm = load ptr, ptr %0, align 8
  store i32 0, ptr %i.nm, align 4
  %i.nn = load ptr, ptr %0, align 8
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 16
  store i32 64, ptr %i.no, align 4
  %i.np = icmp samesign ult i32 %.583136.i.i.i, 4159
  %i.nq = getelementptr inbounds nuw i8, ptr %6, i64 20
  br i1 %i.np, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %_ZNK6icu_7812_GLOBAL__N_113AllSameBlocks12findMostUsedEv.exit.i.i
  %i.nr = icmp samesign ult i32 %.583136.i.i.i, 32831
  br i1 %i.nr, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ns = icmp samesign ult i32 %.583136.i.i.i, 131135 ; 3 uses
  %. = select i1 %i.ns, i32 17, i32 21
  %.188 = select i1 %i.ns, i32 131071, i32 2097151
  %.189 = select i1 %i.ns, i32 200003, i32 1500007
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv, %_ZNK6icu_7812_GLOBAL__N_113AllSameBlocks12findMostUsedEv.exit.i.i
  %.sink187 = phi i32 [ 15, %bb.bv ], [ %., %bb.bw ], [ 12, %_ZNK6icu_7812_GLOBAL__N_113AllSameBlocks12findMostUsedEv.exit.i.i ] ; 2 uses
  %.sink = phi i32 [ 32767, %bb.bv ], [ %.188, %bb.bw ], [ 4095, %_ZNK6icu_7812_GLOBAL__N_113AllSameBlocks12findMostUsedEv.exit.i.i ] ; 2 uses
  %.promoted164.i.i = phi i32 [ 50021, %bb.bv ], [ %.189, %bb.bw ], [ 6007, %_ZNK6icu_7812_GLOBAL__N_113AllSameBlocks12findMostUsedEv.exit.i.i ] ; 6 uses
  store i32 %.sink187, ptr %i.nl, align 8
  store i32 %.sink, ptr %i.nq, align 4
  tail call void @uprv_free_78(ptr noundef null) #10
  %i.nt = shl nuw nsw i32 %.promoted164.i.i, 2
  %i.nu = zext nneg i32 %i.nt to i64              ; 2 uses
  %i.nv = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.nu) #11 ; 5 uses
  store ptr %i.nv, ptr %6, align 8
  %i.nw = icmp eq ptr %i.nv, null
  br i1 %i.nw, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactDataEiPjiiRNS0_11MixedBlocksER10UErrorCode.exit.thread.i.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  store i32 %.promoted164.i.i, ptr %i.nk, align 8
  %i.nx = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 4 uses
  store i32 %.promoted164.i.i, ptr %i.nx, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.nv, i8 0, i64 %i.nu, i1 false)
  %i.ny = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store i32 64, ptr %i.ny, align 8
  call fastcc void @_ZN6icu_7812_GLOBAL__N_111MixedBlocks6extendIjEEvPKT_iii(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef nonnull %i.mg, i32 noundef 0, i32 noundef 128)
  %i.nz = load i32, ptr %i.ct, align 8
  %i.oa = ashr i32 %i.nz, 4                       ; 2 uses
  %.not201.i.i.i = icmp sgt i32 %i.oa, 8
  br i1 %.not201.i.i.i, label %.lr.ph209.i.i.i, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactDataEiPjiiRNS0_11MixedBlocksER10UErrorCode.exit.i.i

.lr.ph209.i.i.i:                                  ; preds = %bb.by
  %i.ob = icmp samesign ult i32 %.583136.i.i.i, 4111 ; 3 uses
  %i.oc = icmp samesign ult i32 %.583136.i.i.i, 32783 ; 3 uses
  %i.od = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.oe = icmp samesign ult i32 %.583136.i.i.i, 131087 ; 3 uses
  %i.of = zext nneg i32 %i.cs to i64
  %.mux.i.i.i = select i1 %i.ob, i32 12, i32 15
  %.mux315.i.i.i = select i1 %i.ob, i32 4095, i32 32767
  %.mux316.i.i.i = select i1 %i.ob, i32 6007, i32 50021
  %..i.i.i = select i1 %i.oe, i32 17, i32 21
  %.313.i.i.i = select i1 %i.oe, i32 131071, i32 2097151
  %.314.i.i.i = select i1 %i.oe, i32 200003, i32 1500007
  %.sink312.i.i.i = select i1 %i.oc, i32 %.mux.i.i.i, i32 %..i.i.i ; 2 uses
  %.sink.i.i.i = select i1 %i.oc, i32 %.mux315.i.i.i, i32 %.313.i.i.i ; 2 uses
  %.0.i118.i.i.i = select i1 %i.oc, i32 %.mux316.i.i.i, i32 %.314.i.i.i ; 6 uses
  %.pre13.i121.i.i.i = shl nuw nsw i32 %.0.i118.i.i.i, 2
  %.pre14.i122.i.i.i = zext nneg i32 %.pre13.i121.i.i.i to i64 ; 2 uses
  br label %bb.bz

bb.bz:                                            ; preds = %bb.ct, %.lr.ph209.i.i.i
  %i.og = phi i32 [ 64, %.lr.ph209.i.i.i ], [ %i.on, %bb.ct ]
  %.0.i118.i165.i.i = phi i32 [ %.promoted164.i.i, %.lr.ph209.i.i.i ], [ %.0.i118.i166.i.i, %bb.ct ]
  %i.oh = phi ptr [ %i.nv, %.lr.ph209.i.i.i ], [ %i.oo, %bb.ct ] ; 3 uses
  %.0.i118.i162.i.i = phi i32 [ %.promoted164.i.i, %.lr.ph209.i.i.i ], [ %.0.i118.i160.i.i, %bb.ct ] ; 3 uses
  %.sink.i158.i.i = phi i32 [ %.sink, %.lr.ph209.i.i.i ], [ %.sink.i157.i.i, %bb.ct ]
  %.sink312.i155.i.i = phi i32 [ %.sink187, %.lr.ph209.i.i.i ], [ %.sink312.i154.i.i, %bb.ct ]
  %.199206.i.i.i = phi i32 [ 128, %.lr.ph209.i.i.i ], [ %.6.i.i.i, %bb.ct ] ; 19 uses
  %.0103205.i.i.i = phi i32 [ 64, %.lr.ph209.i.i.i ], [ %.1104.i.i.i, %bb.ct ]
  %.0108204.i.i.i = phi i32 [ 8, %.lr.ph209.i.i.i ], [ %i.xs, %bb.ct ] ; 5 uses
  %.0109203.i.i.i = phi i32 [ 0, %.lr.ph209.i.i.i ], [ %.1110.i.i.i, %bb.ct ]
  %.0111202.i.i.i = phi i32 [ 4, %.lr.ph209.i.i.i ], [ %.1112.i.i.i, %bb.ct ]
  %i.oi = icmp eq i32 %.0108204.i.i.i, %i.cs
  br i1 %i.oi, label %bb.ca, label %bb.cd

bb.ca:                                            ; preds = %bb.bz
  store i32 %.sink312.i.i.i, ptr %i.nl, align 8
  store i32 %.sink.i.i.i, ptr %i.od, align 4
  %i.oj = icmp sgt i32 %.0.i118.i.i.i, %.0.i118.i162.i.i
  br i1 %i.oj, label %bb.cb, label %._crit_edge.i120.i.i.i

bb.cb:                                            ; preds = %bb.ca
  tail call void @uprv_free_78(ptr noundef %i.oh) #10
  %i.ok = tail call noalias ptr @uprv_malloc_78(i64 noundef %.pre14.i122.i.i.i) #11 ; 3 uses
  store ptr %i.ok, ptr %6, align 8
  %i.ol = icmp eq ptr %i.ok, null
  br i1 %i.ol, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactDataEiPjiiRNS0_11MixedBlocksER10UErrorCode.exit.thread.i.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  store i32 %.0.i118.i.i.i, ptr %i.nk, align 8
  br label %._crit_edge.i120.i.i.i

._crit_edge.i120.i.i.i:                           ; preds = %bb.cc, %bb.ca
  %i.om = phi ptr [ %i.ok, %bb.cc ], [ %i.oh, %bb.ca ] ; 2 uses
  %.0.i118.i161.i.i = phi i32 [ %.0.i118.i.i.i, %bb.cc ], [ %.0.i118.i162.i.i, %bb.ca ]
  store i32 %.0.i118.i.i.i, ptr %i.nx, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.om, i8 0, i64 %.pre14.i122.i.i.i, i1 false)
  store i32 16, ptr %i.ny, align 8
  call fastcc void @_ZN6icu_7812_GLOBAL__N_111MixedBlocks6extendIjEEvPKT_iii(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef nonnull %i.mg, i32 noundef 0, i32 noundef %.199206.i.i.i)
  br label %bb.cd

bb.cd:                                            ; preds = %._crit_edge.i120.i.i.i, %bb.bz
  %i.on = phi i32 [ 16, %._crit_edge.i120.i.i.i ], [ %i.og, %bb.bz ] ; 6 uses
  %.0.i118.i166.i.i = phi i32 [ %.0.i118.i.i.i, %._crit_edge.i120.i.i.i ], [ %.0.i118.i165.i.i, %bb.bz ] ; 5 uses
  %i.oo = phi ptr [ %i.om, %._crit_edge.i120.i.i.i ], [ %i.oh, %bb.bz ] ; 8 uses
  %.0.i118.i160.i.i = phi i32 [ %.0.i118.i161.i.i, %._crit_edge.i120.i.i.i ], [ %.0.i118.i162.i.i, %bb.bz ] ; 2 uses
  %.sink.i157.i.i = phi i32 [ %.sink.i.i.i, %._crit_edge.i120.i.i.i ], [ %.sink.i158.i.i, %bb.bz ] ; 7 uses
  %.sink312.i154.i.i = phi i32 [ %.sink312.i.i.i, %._crit_edge.i120.i.i.i ], [ %.sink312.i155.i.i, %bb.bz ] ; 3 uses
  %.1112.i.i.i = phi i32 [ 1, %._crit_edge.i120.i.i.i ], [ %.0111202.i.i.i, %bb.bz ] ; 2 uses
  %.1110.i.i.i = phi i32 [ %.199206.i.i.i, %._crit_edge.i120.i.i.i ], [ %.0109203.i.i.i, %bb.bz ] ; 3 uses
  %.1104.i.i.i = phi i32 [ 16, %._crit_edge.i120.i.i.i ], [ %.0103205.i.i.i, %bb.bz ] ; 9 uses
  %i.op = zext nneg i32 %.0108204.i.i.i to i64    ; 4 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.op
  %i.or = load i8, ptr %i.oq, align 1
  switch i8 %i.or, label %bb.cs [
    i8 0, label %.lr.ph.i.i.i.preheader.i.i
    i8 1, label %bb.cl
  ]

.lr.ph.i.i.i.preheader.i.i:                       ; preds = %bb.cd
  %i.os = load ptr, ptr %0, align 8               ; 2 uses
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.os, i64 %i.op ; 3 uses
  %i.ou = load i32, ptr %i.ot, align 4            ; 16 uses
  %i.ov = add nsw i32 %i.on, -16
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.preheader.i.i
  %.061.i.i.i.i.i = phi i32 [ %i.ou, %.lr.ph.i.i.i.preheader.i.i ], [ %i.pl, %.lr.ph.i.i.i.i.i ]
  %niter381 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.i.i ], [ %niter381.next.7, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.ow = mul i32 %.061.i.i.i.i.i, 37
  %i.ox = add i32 %i.ow, %i.ou
  %i.oy = mul i32 %i.ox, 37
  %i.oz = add i32 %i.oy, %i.ou
  %i.pa = mul i32 %i.oz, 37
  %i.pb = add i32 %i.pa, %i.ou
  %i.pc = mul i32 %i.pb, 37
  %i.pd = add i32 %i.pc, %i.ou
  %i.pe = mul i32 %i.pd, 37
  %i.pf = add i32 %i.pe, %i.ou
  %i.pg = mul i32 %i.pf, 37
  %i.ph = add i32 %i.pg, %i.ou
  %i.pi = mul i32 %i.ph, 37
  %i.pj = add i32 %i.pi, %i.ou
  %i.pk = mul i32 %i.pj, 37
  %i.pl = add i32 %i.pk, %i.ou                    ; 2 uses
  %niter381.next.7 = add nuw i32 %niter381, 8
  %niter381.ncmp.7 = icmp eq i32 %niter381, %i.ov
  br i1 %niter381.ncmp.7, label %.lr.ph.i.i.i.i.i.epil, label %.lr.ph.i.i.i.i.i, !llvm.loop !36

.lr.ph.i.i.i.i.i.epil:                            ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.epil
  %.061.i.i.i.i.i.epil = phi i32 [ %i.pn, %.lr.ph.i.i.i.i.i.epil ], [ %i.pl, %.lr.ph.i.i.i.i.i ]
  %epil.iter376 = phi i32 [ %epil.iter376.next, %.lr.ph.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i ]
  %i.pm = mul i32 %.061.i.i.i.i.i.epil, 37
  %i.pn = add i32 %i.pm, %i.ou                    ; 3 uses
  %epil.iter376.next = add i32 %epil.iter376, 1   ; 2 uses
  %epil.iter376.cmp.not = icmp eq i32 %epil.iter376.next, 7
  br i1 %epil.iter376.cmp.not, label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeEj.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.epil, !llvm.loop !37

_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeEj.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.epil
  %i.po = shl i32 %i.pn, %.sink312.i154.i.i
  %i.pp = add nsw i32 %.0.i118.i166.i.i, -1
  %i.pq = urem i32 %i.pn, %i.pp
  %i.pr = add nuw nsw i32 %i.pq, 1                ; 4 uses
  %i.ps = zext nneg i32 %i.pr to i64
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %i.ps
  %i.pu = load i32, ptr %i.pt, align 4            ; 2 uses
  %i.pv = icmp eq i32 %i.pu, 0
  br i1 %i.pv, label %._crit_edge.i.i.i.i.i, label %.lr.ph.split.us.i.i.i.preheader.i.i

.lr.ph.split.us.i.i.i.preheader.i.i:              ; preds = %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeEj.exit.i.i.i.i
  %i.pw = xor i32 %.sink.i157.i.i, -1
  %i.px = shl nuw nsw i32 %i.on, 2
  %.idx.i.i.i.i.i.i = zext nneg i32 %i.px to i64
  br label %.lr.ph.split.us.i.i.i.i.i

.lr.ph.split.us.i.i.i.i.i:                        ; preds = %bb.cf, %.lr.ph.split.us.i.i.i.preheader.i.i
  %i.py = phi i32 [ %i.qo, %bb.cf ], [ %i.pu, %.lr.ph.split.us.i.i.i.preheader.i.i ] ; 2 uses
  %.02129.us.i.i.i.i.i = phi i32 [ %i.ql, %bb.cf ], [ %i.pr, %.lr.ph.split.us.i.i.i.preheader.i.i ] ; 2 uses
  %i.pz = and i32 %i.py, %i.pw
  %i.qa = icmp eq i32 %i.pz, %i.po
  br i1 %i.qa, label %.lr.ph.i.preheader.us.i.i.i.i.i, label %bb.cf

.lr.ph.i.preheader.us.i.i.i.i.i:                  ; preds = %.lr.ph.split.us.i.i.i.i.i
  %i.qb = and i32 %i.py, %.sink.i157.i.i
  %i.qc = zext nneg i32 %i.qb to i64
  %i.qd = getelementptr [4 x i8], ptr %i.mg, i64 %i.qc
  %i.qe = getelementptr i8, ptr %i.qd, i64 -4     ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 %.idx.i.i.i.i.i.i ; 2 uses
  br label %.lr.ph.i.us.i.i.i.i.i

.lr.ph.i.us.i.i.i.i.i:                            ; preds = %bb.ce, %.lr.ph.i.preheader.us.i.i.i.i.i
  %.08.i.us.i.i.i.i.i = phi ptr [ %i.qi, %bb.ce ], [ %i.qe, %.lr.ph.i.preheader.us.i.i.i.i.i ] ; 3 uses
  %i.qg = load i32, ptr %.08.i.us.i.i.i.i.i, align 4
  %i.qh = icmp eq i32 %i.qg, %i.ou
  br i1 %i.qh, label %bb.ce, label %_ZN6icu_7812_GLOBAL__N_115allValuesSameAsEPKjij.exit.loopexit.us.i.i.i.i.i

bb.ce:                                            ; preds = %.lr.ph.i.us.i.i.i.i.i
  %i.qi = getelementptr inbounds nuw i8, ptr %.08.i.us.i.i.i.i.i, i64 4 ; 3 uses
  %i.qj = icmp ult ptr %i.qi, %i.qf
  br i1 %i.qj, label %.lr.ph.i.us.i.i.i.i.i, label %_ZN6icu_7812_GLOBAL__N_115allValuesSameAsEPKjij.exit.loopexit.us.i.i.i.i.i, !llvm.loop !24

bb.cf:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_115allValuesSameAsEPKjij.exit.loopexit.us.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i
  %i.qk = add nuw nsw i32 %.02129.us.i.i.i.i.i, %i.pr
  %i.ql = urem i32 %i.qk, %.0.i118.i166.i.i       ; 3 uses
  %i.qm = zext nneg i32 %i.ql to i64
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %i.qm
  %i.qo = load i32, ptr %i.qn, align 4            ; 2 uses
  %i.qp = icmp eq i32 %i.qo, 0
  br i1 %i.qp, label %._crit_edge.i.i.i.i.i, label %.lr.ph.split.us.i.i.i.i.i, !llvm.loop !38

_ZN6icu_7812_GLOBAL__N_115allValuesSameAsEPKjij.exit.loopexit.us.i.i.i.i.i: ; preds = %bb.ce, %.lr.ph.i.us.i.i.i.i.i
  %.0.lcssa.i.ph.us.i.i.i.i.i = phi ptr [ %.08.i.us.i.i.i.i.i, %.lr.ph.i.us.i.i.i.i.i ], [ %i.qi, %bb.ce ]
  %i.qq = icmp eq ptr %.0.lcssa.i.ph.us.i.i.i.i.i, %i.qf
  br i1 %i.qq, label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryEPKjjj.exit.i.i.i.i, label %bb.cf

._crit_edge.i.i.i.i.i:                            ; preds = %bb.cf, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeEj.exit.i.i.i.i
  %.021.lcssa.i.i.i.i.i = phi i32 [ %i.pr, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeEj.exit.i.i.i.i ], [ %i.ql, %bb.cf ]
  %i.qr = xor i32 %.021.lcssa.i.i.i.i.i, -1
  br label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryEPKjjj.exit.i.i.i.i

_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryEPKjjj.exit.i.i.i.i: ; preds = %_ZN6icu_7812_GLOBAL__N_115allValuesSameAsEPKjij.exit.loopexit.us.i.i.i.i.i, %._crit_edge.i.i.i.i.i
  %.3.ph.i.i.i.i.i = phi i32 [ %i.qr, %._crit_edge.i.i.i.i.i ], [ %.02129.us.i.i.i.i.i, %_ZN6icu_7812_GLOBAL__N_115allValuesSameAsEPKjij.exit.loopexit.us.i.i.i.i.i ] ; 2 uses
  %i.qs = icmp sgt i32 %.3.ph.i.i.i.i.i, -1
  br i1 %i.qs, label %bb.cg, label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks16findAllSameBlockEPKjj.exit.i.i.i

bb.cg:                                            ; preds = %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryEPKjjj.exit.i.i.i.i
  %i.qt = zext nneg i32 %.3.ph.i.i.i.i.i to i64
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %i.qt
  %i.qv = load i32, ptr %i.qu, align 4
  %i.qw = and i32 %i.qv, %.sink.i157.i.i
  %i.qx = add nsw i32 %i.qw, -1
  br label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks16findAllSameBlockEPKjj.exit.i.i.i

_ZNK6icu_7812_GLOBAL__N_111MixedBlocks16findAllSameBlockEPKjj.exit.i.i.i: ; preds = %bb.cg, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryEPKjjj.exit.i.i.i.i
  %.0.i126.i.i.i = phi i32 [ %i.qx, %bb.cg ], [ -1, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryEPKjjj.exit.i.i.i.i ] ; 4 uses
  %i.qy = icmp eq i32 %.0108204.i.i.i, %.011.i.i.i
  %.not115.i.i.i = icmp uge i32 %.0108204.i.i.i, %i.cs
  %i.qz = icmp sgt i32 %.0.i126.i.i.i, -1         ; 2 uses
  %i.ra = and i1 %i.qy, %.not115.i.i.i
  %or.cond116188.i.i.i = and i1 %i.ra, %i.qz
  %i.rb = icmp slt i32 %.0.i126.i.i.i, %.1110.i.i.i
  %or.cond117189.i.i.i = select i1 %or.cond116188.i.i.i, i1 %i.rb, i1 false
  br i1 %or.cond117189.i.i.i, label %.lr.ph191.split.preheader.i.i.i, label %.critedge.i76.i.i

.lr.ph191.split.preheader.i.i.i:                  ; preds = %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks16findAllSameBlockEPKjj.exit.i.i.i
  %i.rc = sub nuw nsw i32 %.199206.i.i.i, %.1104.i.i.i ; 2 uses
  %i.rd = zext nneg i32 %.1104.i.i.i to i64
  br label %.lr.ph191.split.i.i.i

.lr.ph191.split.i.i.i:                            ; preds = %_ZN6icu_7812_GLOBAL__N_116findAllSameBlockEPKjiiji.exit.i.i.i, %.lr.ph191.split.preheader.i.i.i
  %.0105190.i.i.i = phi i32 [ %.02241.i.i.i.i, %_ZN6icu_7812_GLOBAL__N_116findAllSameBlockEPKjiiji.exit.i.i.i ], [ %.0.i126.i.i.i, %.lr.ph191.split.preheader.i.i.i ] ; 4 uses
  br label %bb.ch

bb.ch:                                            ; preds = %bb.ch, %.lr.ph191.split.i.i.i
  %indvars.iv.i.i77.i.i = phi i64 [ 0, %.lr.ph191.split.i.i.i ], [ %indvars.iv.next.i.i78.i.i, %bb.ch ] ; 2 uses
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %i.os, i64 %indvars.iv.i.i77.i.i
  %i.rf = load i32, ptr %i.re, align 4
  %i.rg = icmp eq i32 %i.rf, %.0105190.i.i.i      ; 2 uses
  %indvars.iv.next.i.i78.i.i = add nuw nsw i64 %indvars.iv.i.i77.i.i, 4 ; 2 uses
  %i.rh = icmp samesign uge i64 %indvars.iv.next.i.i78.i.i, %i.of
  %or.cond.not.i.i.i.i = select i1 %i.rg, i1 true, i1 %i.rh
  br i1 %or.cond.not.i.i.i.i, label %_ZN6icu_7812_GLOBAL__N_122isStartOfSomeFastBlockEjPKji.exit.i.i.i, label %bb.ch, !llvm.loop !39

_ZN6icu_7812_GLOBAL__N_122isStartOfSomeFastBlockEjPKji.exit.i.i.i: ; preds = %bb.ch
  br i1 %i.rg, label %bb.ci, label %.critedge.thread.i.i.i

bb.ci:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_122isStartOfSomeFastBlockEjPKji.exit.i.i.i
  %.not40.i.not.i.i.i = icmp ult i32 %.0105190.i.i.i, %i.rc
  br i1 %.not40.i.not.i.i.i, label %.lr.ph.i.i79.i.i, label %.critedge.thread279.i.i.i

.lr.ph.i.i79.i.i:                                 ; preds = %bb.ci, %.loopexit36.i.i.i.i
  %.02241.i.in.i.i.i = phi i32 [ %.2.i.i.i.i, %.loopexit36.i.i.i.i ], [ %.0105190.i.i.i, %bb.ci ] ; 2 uses
  %.02241.i.i.i.i = add nsw i32 %.02241.i.in.i.i.i, 1 ; 5 uses
  %i.ri = sext i32 %.02241.i.i.i.i to i64         ; 2 uses
  %i.rj = getelementptr inbounds [4 x i8], ptr %i.mg, i64 %i.ri
  %i.rk = load i32, ptr %i.rj, align 4
  %i.rl = icmp eq i32 %i.rk, %i.ou
  br i1 %i.rl, label %.preheader.i.i.i.i, label %.loopexit36.i.i.i.i

bb.cj:                                            ; preds = %.preheader.i.i.i.i
  %indvars.iv.next.i128.i.i.i = add nuw nsw i64 %indvars.iv.i127.i.i.i, 1 ; 2 uses
  %.not29.i.i.i.i = icmp eq i64 %indvars.iv.next.i128.i.i.i, %i.rd
  br i1 %.not29.i.i.i.i, label %_ZN6icu_7812_GLOBAL__N_116findAllSameBlockEPKjiiji.exit.i.i.i, label %.preheader.i.i.i.i, !llvm.loop !40

.preheader.i.i.i.i:                               ; preds = %.lr.ph.i.i79.i.i, %bb.cj
  %indvars.iv.i127.i.i.i = phi i64 [ %indvars.iv.next.i128.i.i.i, %bb.cj ], [ 1, %.lr.ph.i.i79.i.i ] ; 2 uses
  %i.rm = add nsw i64 %indvars.iv.i127.i.i.i, %i.ri ; 2 uses
  %i.rn = getelementptr inbounds [4 x i8], ptr %i.mg, i64 %i.rm
  %i.ro = load i32, ptr %i.rn, align 4
  %.not28.i.i.i.i = icmp eq i32 %i.ro, %i.ou
  br i1 %.not28.i.i.i.i, label %bb.cj, label %.loopexit36.loopexit.i.i.i.i

.loopexit36.loopexit.i.i.i.i:                     ; preds = %.preheader.i.i.i.i
  %i.rp = trunc nsw i64 %i.rm to i32
  br label %.loopexit36.i.i.i.i

.loopexit36.i.i.i.i:                              ; preds = %.loopexit36.loopexit.i.i.i.i, %.lr.ph.i.i79.i.i
  %.2.i.i.i.i = phi i32 [ %.02241.i.i.i.i, %.lr.ph.i.i79.i.i ], [ %i.rp, %.loopexit36.loopexit.i.i.i.i ] ; 2 uses
  %.not.not.i.i.i.i = icmp slt i32 %.2.i.i.i.i, %i.rc
  br i1 %.not.not.i.i.i.i, label %.lr.ph.i.i79.i.i, label %.critedge.thread279.i.i.i, !llvm.loop !41

_ZN6icu_7812_GLOBAL__N_116findAllSameBlockEPKjiiji.exit.i.i.i: ; preds = %bb.cj
  %i.rq = icmp sgt i32 %.02241.i.in.i.i.i, -2     ; 2 uses
  %i.rr = icmp slt i32 %.02241.i.i.i.i, %.1110.i.i.i
  %or.cond117.i.i.i = select i1 %i.rq, i1 %i.rr, i1 false
  br i1 %or.cond117.i.i.i, label %.lr.ph191.split.i.i.i, label %.critedge.i76.i.i, !llvm.loop !42

.critedge.i76.i.i:                                ; preds = %_ZN6icu_7812_GLOBAL__N_116findAllSameBlockEPKjiiji.exit.i.i.i, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks16findAllSameBlockEPKjj.exit.i.i.i
  %.0105.lcssa.i.i.i = phi i32 [ %.0.i126.i.i.i, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks16findAllSameBlockEPKjj.exit.i.i.i ], [ %.02241.i.i.i.i, %_ZN6icu_7812_GLOBAL__N_116findAllSameBlockEPKjiiji.exit.i.i.i ]
  %.lcssa177.i.i.i = phi i1 [ %i.qz, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks16findAllSameBlockEPKjj.exit.i.i.i ], [ %i.rq, %_ZN6icu_7812_GLOBAL__N_116findAllSameBlockEPKjiiji.exit.i.i.i ]
  br i1 %.lcssa177.i.i.i, label %.critedge.thread.i.i.i, label %.critedge.thread279.i.i.i

.critedge.thread.i.i.i:                           ; preds = %_ZN6icu_7812_GLOBAL__N_122isStartOfSomeFastBlockEjPKji.exit.i.i.i, %.critedge.i76.i.i
  %.0105180.i.i.i = phi i32 [ %.0105.lcssa.i.i.i, %.critedge.i76.i.i ], [ %.0105190.i.i.i, %_ZN6icu_7812_GLOBAL__N_122isStartOfSomeFastBlockEjPKji.exit.i.i.i ]
  store i32 %.0105180.i.i.i, ptr %i.ot, align 4
  br label %bb.ct

.critedge.thread279.i.i.i:                        ; preds = %bb.ci, %.loopexit36.i.i.i.i, %.critedge.i76.i.i
  %.neg10.i.i.i.i = add nuw i32 %.199206.i.i.i, 1
  %i.rs = sub i32 %.neg10.i.i.i.i, %.1104.i.i.i   ; 3 uses
  %i.rt = icmp samesign ult i32 %i.rs, %.199206.i.i.i
  br i1 %i.rt, label %.lr.ph.preheader.i129.i.i.i, label %_ZN6icu_7812_GLOBAL__N_117getAllSameOverlapEPKjiji.exit.i.i.i

.lr.ph.preheader.i129.i.i.i:                      ; preds = %.critedge.thread279.i.i.i
  %i.ru = zext nneg i32 %.199206.i.i.i to i64
  %i.rv = zext nneg i32 %i.rs to i64
  br label %.lr.ph.i130.i.i.i

.lr.ph.i130.i.i.i:                                ; preds = %bb.ck, %.lr.ph.preheader.i129.i.i.i
  %indvars.iv.i131.i.i.i = phi i64 [ %i.ru, %.lr.ph.preheader.i129.i.i.i ], [ %indvars.iv.next.i132.i.i.i, %bb.ck ] ; 3 uses
  %i.rw = getelementptr [4 x i8], ptr %i.mg, i64 %indvars.iv.i131.i.i.i
  %i.rx = getelementptr i8, ptr %i.rw, i64 -4
  %i.ry = load i32, ptr %i.rx, align 4
  %i.rz = icmp eq i32 %i.ry, %i.ou
  br i1 %i.rz, label %bb.ck, label %.critedge.loopexit.split.loop.exit16.i.i.i.i

bb.ck:                                            ; preds = %.lr.ph.i130.i.i.i
  %indvars.iv.next.i132.i.i.i = add nsw i64 %indvars.iv.i131.i.i.i, -1 ; 2 uses
  %i.sa = icmp sgt i64 %indvars.iv.next.i132.i.i.i, %i.rv
  br i1 %i.sa, label %.lr.ph.i130.i.i.i, label %_ZN6icu_7812_GLOBAL__N_117getAllSameOverlapEPKjiji.exit.i.i.i, !llvm.loop !43

.critedge.loopexit.split.loop.exit16.i.i.i.i:     ; preds = %.lr.ph.i130.i.i.i
  %i.sb = trunc nuw nsw i64 %indvars.iv.i131.i.i.i to i32
  br label %_ZN6icu_7812_GLOBAL__N_117getAllSameOverlapEPKjiji.exit.i.i.i

_ZN6icu_7812_GLOBAL__N_117getAllSameOverlapEPKjiji.exit.i.i.i: ; preds = %bb.ck, %.critedge.loopexit.split.loop.exit16.i.i.i.i, %.critedge.thread279.i.i.i
  %.0.lcssa.i.i.i.i = phi i32 [ %.199206.i.i.i, %.critedge.thread279.i.i.i ], [ %i.sb, %.critedge.loopexit.split.loop.exit16.i.i.i.i ], [ %i.rs, %bb.ck ] ; 3 uses
  %i.sc = sub nsw i32 %.199206.i.i.i, %.0.lcssa.i.i.i.i ; 3 uses
  store i32 %.0.lcssa.i.i.i.i, ptr %i.ot, align 4
  %i.sd = icmp slt i32 %i.sc, %.1104.i.i.i
  br i1 %i.sd, label %.lr.ph198.preheader.i.i.i, label %._crit_edge199.i.i.i

.lr.ph198.preheader.i.i.i:                        ; preds = %_ZN6icu_7812_GLOBAL__N_117getAllSameOverlapEPKjiji.exit.i.i.i
  %i.se = zext i32 %.199206.i.i.i to i64          ; 3 uses
  %i.sf = add i32 %.0.lcssa.i.i.i.i, %.1104.i.i.i
  %i.sg = xor i32 %.199206.i.i.i, -1
  %i.sh = add i32 %i.sf, %i.sg                    ; 2 uses
  %i.si = zext i32 %i.sh to i64
  %i.sj = add nuw nsw i64 %i.si, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.sh, 7
  br i1 %min.iters.check, label %.lr.ph198.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph198.preheader.i.i.i
  %n.vec = and i64 %i.sj, 8589934584              ; 4 uses
  %i.sk = add nuw nsw i64 %n.vec, %i.se           ; 2 uses
  %i.sl = trunc i64 %n.vec to i32
  %i.sm = add i32 %i.sc, %i.sl
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ou, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep456 = getelementptr [4 x i8], ptr %i.mg, i64 %i.se
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep457 = getelementptr [4 x i8], ptr %invariant.gep456, i64 %index ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %gep457, i64 16
  store <4 x i32> %broadcast.splat, ptr %gep457, align 4
  store <4 x i32> %broadcast.splat, ptr %i.sn, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.so = icmp eq i64 %index.next, %n.vec
  br i1 %i.so, label %middle.block, label %vector.body, !llvm.loop !44

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.sj, %n.vec
  br i1 %cmp.n, label %._crit_edge199.loopexit.i.i.i, label %.lr.ph198.i.i.i.preheader

.lr.ph198.i.i.i.preheader:                        ; preds = %.lr.ph198.preheader.i.i.i, %middle.block
  %indvars.iv255.i.i.i.ph = phi i64 [ %i.se, %.lr.ph198.preheader.i.i.i ], [ %i.sk, %middle.block ]
  %.1106196.i.i.i.ph = phi i32 [ %i.sc, %.lr.ph198.preheader.i.i.i ], [ %i.sm, %middle.block ]
  br label %.lr.ph198.i.i.i

.lr.ph198.i.i.i:                                  ; preds = %.lr.ph198.i.i.i.preheader, %.lr.ph198.i.i.i
  %indvars.iv255.i.i.i = phi i64 [ %indvars.iv.next256.i.i.i, %.lr.ph198.i.i.i ], [ %indvars.iv255.i.i.i.ph, %.lr.ph198.i.i.i.preheader ] ; 2 uses
  %.1106196.i.i.i = phi i32 [ %i.sq, %.lr.ph198.i.i.i ], [ %.1106196.i.i.i.ph, %.lr.ph198.i.i.i.preheader ]
  %indvars.iv.next256.i.i.i = add nuw nsw i64 %indvars.iv255.i.i.i, 1 ; 2 uses
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %indvars.iv255.i.i.i
  store i32 %i.ou, ptr %i.sp, align 4
  %i.sq = add nsw i32 %.1106196.i.i.i, 1          ; 2 uses
  %exitcond258.not.i.i.i = icmp eq i32 %i.sq, %.1104.i.i.i
  br i1 %exitcond258.not.i.i.i, label %._crit_edge199.loopexit.i.i.i, label %.lr.ph198.i.i.i, !llvm.loop !45

._crit_edge199.loopexit.i.i.i:                    ; preds = %.lr.ph198.i.i.i, %middle.block
  %indvars.iv.next256.i.i.i.lcssa = phi i64 [ %i.sk, %middle.block ], [ %indvars.iv.next256.i.i.i, %.lr.ph198.i.i.i ]
  %i.sr = trunc nuw i64 %indvars.iv.next256.i.i.i.lcssa to i32
  br label %._crit_edge199.i.i.i

._crit_edge199.i.i.i:                             ; preds = %._crit_edge199.loopexit.i.i.i, %_ZN6icu_7812_GLOBAL__N_117getAllSameOverlapEPKjiji.exit.i.i.i
  %.2100.lcssa.i.i.i = phi i32 [ %.199206.i.i.i, %_ZN6icu_7812_GLOBAL__N_117getAllSameOverlapEPKjiji.exit.i.i.i ], [ %i.sr, %._crit_edge199.loopexit.i.i.i ] ; 2 uses
  call fastcc void @_ZN6icu_7812_GLOBAL__N_111MixedBlocks6extendIjEEvPKT_iii(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef nonnull %i.mg, i32 noundef %.199206.i.i.i, i32 noundef %.2100.lcssa.i.i.i)
  br label %bb.ct

bb.cl:                                            ; preds = %bb.cd
  %i.ss = load ptr, ptr %i.gh, align 8            ; 2 uses
  %i.st = ptrtoaddr ptr %i.ss to i64
  %i.su = load ptr, ptr %0, align 8
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %i.su, i64 %i.op ; 3 uses
  %i.sw = load i32, ptr %i.sv, align 4
  %i.sx = zext i32 %i.sw to i64                   ; 2 uses
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %i.ss, i64 %i.sx ; 14 uses
  %i.sz = load i32, ptr %i.sy, align 4            ; 2 uses
  %i.ta = tail call i32 @llvm.smax.i32(i32 %i.on, i32 2)
  %smax.i.i.i.i = zext nneg i32 %i.ta to i64
  %i.tb = add nsw i64 %smax.i.i.i.i, -1           ; 2 uses
  %xtraiter365 = and i64 %i.tb, 3
  %i.tc = icmp eq i32 %i.on, 0
  br i1 %i.tc, label %.epil.preheader364, label %.new

.new:                                             ; preds = %bb.cl
  %unroll_iter370 = and i64 %i.tb, -4
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cm, %.new
  %indvars.iv.i.i.i.i.i = phi i64 [ 1, %.new ], [ %indvars.iv.next.i.i.i.i.i.3, %bb.cm ] ; 5 uses
  %.0.i.i.i.i.i = phi i32 [ %i.sz, %.new ], [ %i.tv, %bb.cm ]
  %niter371 = phi i64 [ 0, %.new ], [ %niter371.next.3, %bb.cm ]
  %i.td = mul i32 %.0.i.i.i.i.i, 37
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.sy, i64 %indvars.iv.i.i.i.i.i
  %i.tf = load i32, ptr %i.te, align 4
  %i.tg = add i32 %i.td, %i.tf
  %i.th = mul i32 %i.tg, 37
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %i.sy, i64 %indvars.iv.i.i.i.i.i
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 4
  %i.tk = load i32, ptr %i.tj, align 4
  %i.tl = add i32 %i.th, %i.tk
  %i.tm = mul i32 %i.tl, 37
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.sy, i64 %indvars.iv.i.i.i.i.i
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 8
  %i.tp = load i32, ptr %i.to, align 4
  %i.tq = add i32 %i.tm, %i.tp
  %i.tr = mul i32 %i.tq, 37
  %indvars.iv.next.i.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 4 ; 2 uses
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %i.sy, i64 %indvars.iv.i.i.i.i.i
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 12
  %i.tu = load i32, ptr %i.tt, align 4
  %i.tv = add i32 %i.tr, %i.tu                    ; 2 uses
  %niter371.next.3 = add nuw i64 %niter371, 4     ; 2 uses
  %niter371.ncmp.3 = icmp eq i64 %niter371.next.3, %unroll_iter370
  br i1 %niter371.ncmp.3, label %.epil.preheader364, label %bb.cm, !llvm.loop !46

.epil.preheader364:                               ; preds = %bb.cm, %bb.cl
  %indvars.iv.i.i.i.i.i.epil.init = phi i64 [ 1, %bb.cl ], [ %indvars.iv.next.i.i.i.i.i.3, %bb.cm ]
  %.0.i.i.i.i.i.epil.init = phi i32 [ %i.sz, %bb.cl ], [ %i.tv, %bb.cm ]
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cn, %.epil.preheader364
  %indvars.iv.i.i.i.i.i.epil = phi i64 [ %indvars.iv.next.i.i.i.i.i.epil, %bb.cn ], [ %indvars.iv.i.i.i.i.i.epil.init, %.epil.preheader364 ] ; 2 uses
  %.0.i.i.i.i.i.epil = phi i32 [ %i.tz, %bb.cn ], [ %.0.i.i.i.i.i.epil.init, %.epil.preheader364 ]
  %epil.iter366 = phi i64 [ %epil.iter366.next, %bb.cn ], [ 0, %.epil.preheader364 ]
  %i.tw = mul i32 %.0.i.i.i.i.i.epil, 37
  %indvars.iv.next.i.i.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.i.i.epil, 1
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %i.sy, i64 %indvars.iv.i.i.i.i.i.epil
  %i.ty = load i32, ptr %i.tx, align 4
  %i.tz = add i32 %i.tw, %i.ty                    ; 3 uses
  %epil.iter366.next = add i64 %epil.iter366, 1   ; 2 uses
  %epil.iter366.cmp.not = icmp eq i64 %epil.iter366.next, %xtraiter365
  br i1 %epil.iter366.cmp.not, label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeIjEEjPKT_i.exit.i.i.i.i, label %bb.cn, !llvm.loop !47

_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeIjEEjPKT_i.exit.i.i.i.i: ; preds = %bb.cn
  %i.ua = shl i32 %i.tz, %.sink312.i154.i.i
  %i.ub = add nsw i32 %.0.i118.i166.i.i, -1
  %i.uc = urem i32 %i.tz, %i.ub
  %i.ud = add nuw nsw i32 %i.uc, 1                ; 4 uses
  %i.ue = zext nneg i32 %i.ud to i64
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %i.ue
  %i.ug = load i32, ptr %i.uf, align 4            ; 2 uses
  %i.uh = icmp eq i32 %i.ug, 0
  br i1 %i.uh, label %._crit_edge.i.i136.i.i.i, label %.lr.ph.split.us.i.i139.i.preheader.i.i

.lr.ph.split.us.i.i139.i.preheader.i.i:           ; preds = %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeIjEEjPKT_i.exit.i.i.i.i
  %i.ui = xor i32 %.sink.i157.i.i, -1
  br label %.lr.ph.split.us.i.i139.i.i.i

.lr.ph.split.us.i.i139.i.i.i:                     ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us.i.i.i.i.i, %.lr.ph.split.us.i.i139.i.preheader.i.i
  %i.uj = phi i32 [ %i.ux, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us.i.i.i.i.i ], [ %i.ug, %.lr.ph.split.us.i.i139.i.preheader.i.i ] ; 2 uses
  %.02237.us.i.i.i.i.i = phi i32 [ %i.uu, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us.i.i.i.i.i ], [ %i.ud, %.lr.ph.split.us.i.i139.i.preheader.i.i ] ; 2 uses
  %i.uk = and i32 %i.uj, %i.ui
  %i.ul = icmp eq i32 %i.uk, %i.ua
  br i1 %i.ul, label %.lr.ph.i.preheader.us.i.i140.i.i.i, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us.i.i.i.i.i

.lr.ph.i.preheader.us.i.i140.i.i.i:               ; preds = %.lr.ph.split.us.i.i139.i.i.i
  %i.um = and i32 %i.uj, %.sink.i157.i.i
  %i.un = zext nneg i32 %i.um to i64
  %i.uo = getelementptr [4 x i8], ptr %i.mg, i64 %i.un
  %i.up = getelementptr i8, ptr %i.uo, i64 -4
  br label %.lr.ph.i.us.i.i141.i.i.i

.lr.ph.i.us.i.i141.i.i.i:                         ; preds = %bb.co, %.lr.ph.i.preheader.us.i.i140.i.i.i
  %.010.i.us.i.i.i.i.i = phi i32 [ %i.vb, %bb.co ], [ %i.on, %.lr.ph.i.preheader.us.i.i140.i.i.i ] ; 2 uses
  %.069.i.us.i.i.i.i.i = phi ptr [ %i.va, %bb.co ], [ %i.sy, %.lr.ph.i.preheader.us.i.i140.i.i.i ] ; 2 uses
  %.078.i.us.i.i.i.i.i = phi ptr [ %i.uz, %bb.co ], [ %i.up, %.lr.ph.i.preheader.us.i.i140.i.i.i ] ; 2 uses
  %i.uq = load i32, ptr %.078.i.us.i.i.i.i.i, align 4
  %i.ur = load i32, ptr %.069.i.us.i.i.i.i.i, align 4
  %i.us = icmp eq i32 %i.uq, %i.ur
  br i1 %i.us, label %bb.co, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us.i.i.i.i.i

_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us.i.i.i.i.i: ; preds = %.lr.ph.i.us.i.i141.i.i.i, %.lr.ph.split.us.i.i139.i.i.i
  %i.ut = add nuw nsw i32 %.02237.us.i.i.i.i.i, %i.ud
  %i.uu = urem i32 %i.ut, %.0.i118.i166.i.i       ; 3 uses
  %i.uv = zext nneg i32 %i.uu to i64
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %i.uv
  %i.ux = load i32, ptr %i.uw, align 4            ; 2 uses
  %i.uy = icmp eq i32 %i.ux, 0
  br i1 %i.uy, label %._crit_edge.i.i136.i.i.i, label %.lr.ph.split.us.i.i139.i.i.i, !llvm.loop !48

bb.co:                                            ; preds = %.lr.ph.i.us.i.i141.i.i.i
  %i.uz = getelementptr inbounds nuw i8, ptr %.078.i.us.i.i.i.i.i, i64 4
  %i.va = getelementptr inbounds nuw i8, ptr %.069.i.us.i.i.i.i.i, i64 4
  %i.vb = add nsw i32 %.010.i.us.i.i.i.i.i, -1
  %i.vc = icmp sgt i32 %.010.i.us.i.i.i.i.i, 1
  br i1 %i.vc, label %.lr.ph.i.us.i.i141.i.i.i, label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryIjjEEiPKT_PKT0_ij.exit.i.i.i.i, !llvm.loop !49

._crit_edge.i.i136.i.i.i:                         ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us.i.i.i.i.i, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeIjEEjPKT_i.exit.i.i.i.i
  %.022.lcssa.i.i.i.i.i = phi i32 [ %i.ud, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeIjEEjPKT_i.exit.i.i.i.i ], [ %i.uu, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us.i.i.i.i.i ]
  %i.vd = xor i32 %.022.lcssa.i.i.i.i.i, -1
  br label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryIjjEEiPKT_PKT0_ij.exit.i.i.i.i

_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryIjjEEiPKT_PKT0_ij.exit.i.i.i.i: ; preds = %bb.co, %._crit_edge.i.i136.i.i.i
  %.3.ph.i.i137.i.i.i = phi i32 [ %i.vd, %._crit_edge.i.i136.i.i.i ], [ %.02237.us.i.i.i.i.i, %bb.co ] ; 2 uses
  %i.ve = icmp sgt i32 %.3.ph.i.i137.i.i.i, -1
  br i1 %i.ve, label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockIjjEEiPKT_PKT0_i.exit.i.i.i, label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockIjjEEiPKT_PKT0_i.exit.thread.i.i.i

_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockIjjEEiPKT_PKT0_i.exit.i.i.i: ; preds = %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryIjjEEiPKT_PKT0_ij.exit.i.i.i.i
  %i.vf = zext nneg i32 %.3.ph.i.i137.i.i.i to i64
  %i.vg = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %i.vf
  %i.vh = load i32, ptr %i.vg, align 4
  %i.vi = and i32 %i.vh, %.sink.i157.i.i          ; 2 uses
  %i.vj = icmp sgt i32 %i.vi, 0
  br i1 %i.vj, label %bb.cp, label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockIjjEEiPKT_PKT0_i.exit.thread.i.i.i

bb.cp:                                            ; preds = %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockIjjEEiPKT_PKT0_i.exit.i.i.i
  %i.vk = add nsw i32 %i.vi, -1
  store i32 %i.vk, ptr %i.sv, align 4
  br label %bb.ct

_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockIjjEEiPKT_PKT0_i.exit.thread.i.i.i: ; preds = %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockIjjEEiPKT_PKT0_i.exit.i.i.i, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryIjjEEiPKT_PKT0_ij.exit.i.i.i.i
  %i.vl = zext nneg i32 %.1104.i.i.i to i64       ; 4 uses
  %i.vm = zext i32 %.199206.i.i.i to i64          ; 6 uses
  br label %bb.cq

_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i143.i.i.i
  %i.vn = icmp sgt i64 %indvars.iv.in.i.i.i.i, 2
  br i1 %i.vn, label %bb.cq, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIjjEEiPKT_iPKT0_ii.exit.i.i.i, !llvm.loop !50

bb.cq:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.loopexit.i.i.i.i, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockIjjEEiPKT_PKT0_i.exit.thread.i.i.i
  %indvars.iv.in.i.i.i.i = phi i64 [ %i.vl, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockIjjEEiPKT_PKT0_i.exit.thread.i.i.i ], [ %indvars.iv.i142.i.i.i, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.loopexit.i.i.i.i ] ; 2 uses
  %indvars.iv.i142.i.i.i = add nsw i64 %indvars.iv.in.i.i.i.i, -1 ; 3 uses
  %i.vo = sub nsw i64 %i.vm, %indvars.iv.i142.i.i.i
  %i.vp = getelementptr inbounds [4 x i8], ptr %i.mg, i64 %i.vo
  %i.vq = trunc nuw nsw i64 %indvars.iv.i142.i.i.i to i32 ; 2 uses
  br label %.lr.ph.i.i143.i.i.i

.lr.ph.i.i143.i.i.i:                              ; preds = %bb.cr, %bb.cq
  %.010.i.i.i.i.i = phi i32 [ %i.vw, %bb.cr ], [ %i.vq, %bb.cq ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.vv, %bb.cr ], [ %i.sy, %bb.cq ] ; 2 uses
  %.078.i.i.i.i.i = phi ptr [ %i.vu, %bb.cr ], [ %i.vp, %bb.cq ] ; 2 uses
  %i.vr = load i32, ptr %.078.i.i.i.i.i, align 4
  %i.vs = load i32, ptr %.069.i.i.i.i.i, align 4
  %i.vt = icmp eq i32 %i.vr, %i.vs
  br i1 %i.vt, label %bb.cr, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.loopexit.i.i.i.i

bb.cr:                                            ; preds = %.lr.ph.i.i143.i.i.i
  %i.vu = getelementptr inbounds nuw i8, ptr %.078.i.i.i.i.i, i64 4
  %i.vv = getelementptr inbounds nuw i8, ptr %.069.i.i.i.i.i, i64 4
  %i.vw = add nsw i32 %.010.i.i.i.i.i, -1
  %i.vx = icmp sgt i32 %.010.i.i.i.i.i, 1
  br i1 %i.vx, label %.lr.ph.i.i143.i.i.i, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIjjEEiPKT_iPKT0_ii.exit.i.i.i, !llvm.loop !49

_ZN6icu_7812_GLOBAL__N_110getOverlapIjjEEiPKT_iPKT0_ii.exit.i.i.i: ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.loopexit.i.i.i.i, %bb.cr
  %.013.i.i.i.i = phi i32 [ %i.vq, %bb.cr ], [ 0, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.loopexit.i.i.i.i ] ; 3 uses
  %i.vy = sub nsw i32 %.199206.i.i.i, %.013.i.i.i.i
  store i32 %i.vy, ptr %i.sv, align 4
  %i.vz = icmp slt i32 %.013.i.i.i.i, %.1104.i.i.i
  br i1 %i.vz, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i68.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN6icu_7812_GLOBAL__N_110getOverlapIjjEEiPKT_iPKT0_ii.exit.i.i.i
  %i.wa = sext i32 %.013.i.i.i.i to i64           ; 6 uses
  %i.wb = sub nsw i64 %i.vl, %i.wa                ; 3 uses
  %min.iters.check235 = icmp ult i64 %i.wb, 8
  br i1 %min.iters.check235, label %.lr.ph.i71.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i.i.i
  %i.wc = shl nuw nsw i64 %i.vm, 2
  %i.wd = add i64 %i.wc, %i.mh
  %i.we = add nsw i64 %i.wa, %i.sx
  %i.wf = shl nsw i64 %i.we, 2
  %i.wg = add i64 %i.wf, %i.st
  %i.wh = sub i64 %i.wg, %i.wd
  %diff.check = icmp ugt i64 %i.wh, -32
  br i1 %diff.check, label %.lr.ph.i71.i.i.preheader, label %vector.ph236

vector.ph236:                                     ; preds = %vector.memcheck
  %n.vec238 = and i64 %i.wb, -8                   ; 4 uses
  %i.wi = add nsw i64 %n.vec238, %i.wa
  %i.wj = add nsw i64 %n.vec238, %i.vm            ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.sy, i64 %i.wa
  %invariant.gep454 = getelementptr [4 x i8], ptr %i.mg, i64 %i.vm
  br label %vector.body239

vector.body239:                                   ; preds = %vector.body239, %vector.ph236
  %index240 = phi i64 [ 0, %vector.ph236 ], [ %index.next242, %vector.body239 ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index240 ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <4 x i32>, ptr %gep, align 4
  %wide.load241 = load <4 x i32>, ptr %i.wk, align 4
  %gep455 = getelementptr [4 x i8], ptr %invariant.gep454, i64 %index240 ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %gep455, i64 16
  store <4 x i32> %wide.load, ptr %gep455, align 4
  store <4 x i32> %wide.load241, ptr %i.wl, align 4
  %index.next242 = add nuw i64 %index240, 8       ; 2 uses
  %i.wm = icmp eq i64 %index.next242, %n.vec238
  br i1 %i.wm, label %middle.block243, label %vector.body239, !llvm.loop !51

middle.block243:                                  ; preds = %vector.body239
  %cmp.n244 = icmp eq i64 %i.wb, %n.vec238
  br i1 %cmp.n244, label %._crit_edge.loopexit.i75.i.i, label %.lr.ph.i71.i.i.preheader

.lr.ph.i71.i.i.preheader:                         ; preds = %vector.memcheck, %.lr.ph.preheader.i.i.i, %middle.block243
  %indvars.iv250.i.i.i.ph = phi i64 [ %i.wa, %vector.memcheck ], [ %i.wa, %.lr.ph.preheader.i.i.i ], [ %i.wi, %middle.block243 ] ; 4 uses
  %indvars.iv.i72.i.i.ph = phi i64 [ %i.vm, %vector.memcheck ], [ %i.vm, %.lr.ph.preheader.i.i.i ], [ %i.wj, %middle.block243 ] ; 2 uses
  %i.wn = sub nsw i64 0, %indvars.iv250.i.i.i.ph
  %xtraiter372 = and i64 %i.wn, 3                 ; 2 uses
  %lcmp.mod373.not = icmp eq i64 %xtraiter372, 0
  br i1 %lcmp.mod373.not, label %.lr.ph.i71.i.i.prol.loopexit, label %.lr.ph.i71.i.i.prol

.lr.ph.i71.i.i.prol:                              ; preds = %.lr.ph.i71.i.i.preheader, %.lr.ph.i71.i.i.prol
  %indvars.iv250.i.i.i.prol = phi i64 [ %indvars.iv.next251.i.i.i.prol, %.lr.ph.i71.i.i.prol ], [ %indvars.iv250.i.i.i.ph, %.lr.ph.i71.i.i.preheader ] ; 2 uses
  %indvars.iv.i72.i.i.prol = phi i64 [ %indvars.iv.next.i73.i.i.prol, %.lr.ph.i71.i.i.prol ], [ %indvars.iv.i72.i.i.ph, %.lr.ph.i71.i.i.preheader ] ; 2 uses
  %prol.iter374 = phi i64 [ %prol.iter374.next, %.lr.ph.i71.i.i.prol ], [ 0, %.lr.ph.i71.i.i.preheader ]
  %indvars.iv.next251.i.i.i.prol = add nsw i64 %indvars.iv250.i.i.i.prol, 1 ; 2 uses
  %i.wo = getelementptr inbounds [4 x i8], ptr %i.sy, i64 %indvars.iv250.i.i.i.prol
  %i.wp = load i32, ptr %i.wo, align 4
  %indvars.iv.next.i73.i.i.prol = add nuw nsw i64 %indvars.iv.i72.i.i.prol, 1 ; 3 uses
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %indvars.iv.i72.i.i.prol
  store i32 %i.wp, ptr %i.wq, align 4
  %prol.iter374.next = add i64 %prol.iter374, 1   ; 2 uses
  %prol.iter374.cmp.not = icmp eq i64 %prol.iter374.next, %xtraiter372
  br i1 %prol.iter374.cmp.not, label %.lr.ph.i71.i.i.prol.loopexit, label %.lr.ph.i71.i.i.prol, !llvm.loop !52

.lr.ph.i71.i.i.prol.loopexit:                     ; preds = %.lr.ph.i71.i.i.prol, %.lr.ph.i71.i.i.preheader
  %indvars.iv.next.i73.i.i.lcssa310.unr = phi i64 [ poison, %.lr.ph.i71.i.i.preheader ], [ %indvars.iv.next.i73.i.i.prol, %.lr.ph.i71.i.i.prol ]
  %indvars.iv250.i.i.i.unr = phi i64 [ %indvars.iv250.i.i.i.ph, %.lr.ph.i71.i.i.preheader ], [ %indvars.iv.next251.i.i.i.prol, %.lr.ph.i71.i.i.prol ]
  %indvars.iv.i72.i.i.unr = phi i64 [ %indvars.iv.i72.i.i.ph, %.lr.ph.i71.i.i.preheader ], [ %indvars.iv.next.i73.i.i.prol, %.lr.ph.i71.i.i.prol ]
  %i.wr = sub nsw i64 %indvars.iv250.i.i.i.ph, %i.vl
  %i.ws = icmp ugt i64 %i.wr, -4
  br i1 %i.ws, label %._crit_edge.loopexit.i75.i.i, label %.lr.ph.i71.i.i

.lr.ph.i71.i.i:                                   ; preds = %.lr.ph.i71.i.i.prol.loopexit, %.lr.ph.i71.i.i
  %indvars.iv250.i.i.i = phi i64 [ %indvars.iv.next251.i.i.i.3, %.lr.ph.i71.i.i ], [ %indvars.iv250.i.i.i.unr, %.lr.ph.i71.i.i.prol.loopexit ] ; 5 uses
  %indvars.iv.i72.i.i = phi i64 [ %indvars.iv.next.i73.i.i.3, %.lr.ph.i71.i.i ], [ %indvars.iv.i72.i.i.unr, %.lr.ph.i71.i.i.prol.loopexit ] ; 5 uses
  %i.wt = getelementptr inbounds [4 x i8], ptr %i.sy, i64 %indvars.iv250.i.i.i
  %i.wu = load i32, ptr %i.wt, align 4
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %indvars.iv.i72.i.i
  store i32 %i.wu, ptr %i.wv, align 4
  %i.ww = getelementptr [4 x i8], ptr %i.sy, i64 %indvars.iv250.i.i.i
  %i.wx = getelementptr i8, ptr %i.ww, i64 4
  %i.wy = load i32, ptr %i.wx, align 4
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %indvars.iv.i72.i.i
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 4
  store i32 %i.wy, ptr %i.xa, align 4
  %i.xb = getelementptr [4 x i8], ptr %i.sy, i64 %indvars.iv250.i.i.i
  %i.xc = getelementptr i8, ptr %i.xb, i64 8
  %i.xd = load i32, ptr %i.xc, align 4
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %indvars.iv.i72.i.i
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 8
  store i32 %i.xd, ptr %i.xf, align 4
  %indvars.iv.next251.i.i.i.3 = add nsw i64 %indvars.iv250.i.i.i, 4 ; 2 uses
  %i.xg = getelementptr [4 x i8], ptr %i.sy, i64 %indvars.iv250.i.i.i
  %i.xh = getelementptr i8, ptr %i.xg, i64 12
  %i.xi = load i32, ptr %i.xh, align 4
  %indvars.iv.next.i73.i.i.3 = add nuw nsw i64 %indvars.iv.i72.i.i, 4 ; 2 uses
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %indvars.iv.i72.i.i
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 12
  store i32 %i.xi, ptr %i.xk, align 4
  %exitcond.not.i74.i.i.3 = icmp eq i64 %indvars.iv.next251.i.i.i.3, %i.vl
  br i1 %exitcond.not.i74.i.i.3, label %._crit_edge.loopexit.i75.i.i, label %.lr.ph.i71.i.i, !llvm.loop !53

._crit_edge.loopexit.i75.i.i:                     ; preds = %.lr.ph.i71.i.i.prol.loopexit, %.lr.ph.i71.i.i, %middle.block243
  %indvars.iv.next.i73.i.i.lcssa = phi i64 [ %i.wj, %middle.block243 ], [ %indvars.iv.next.i73.i.i.lcssa310.unr, %.lr.ph.i71.i.i.prol.loopexit ], [ %indvars.iv.next.i73.i.i.3, %.lr.ph.i71.i.i ]
  %i.xl = trunc nuw i64 %indvars.iv.next.i73.i.i.lcssa to i32
  br label %._crit_edge.i68.i.i

._crit_edge.i68.i.i:                              ; preds = %._crit_edge.loopexit.i75.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapIjjEEiPKT_iPKT0_ii.exit.i.i.i
  %.4.lcssa.i.i.i = phi i32 [ %.199206.i.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapIjjEEiPKT_iPKT0_ii.exit.i.i.i ], [ %i.xl, %._crit_edge.loopexit.i75.i.i ] ; 2 uses
  call fastcc void @_ZN6icu_7812_GLOBAL__N_111MixedBlocks6extendIjEEvPKT_iii(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef nonnull %i.mg, i32 noundef %.199206.i.i.i, i32 noundef %.4.lcssa.i.i.i)
  br label %bb.ct

bb.cs:                                            ; preds = %bb.cd
  %i.xm = load ptr, ptr %0, align 8               ; 2 uses
  %i.xn = getelementptr inbounds nuw [4 x i8], ptr %i.xm, i64 %i.op ; 2 uses
  %i.xo = load i32, ptr %i.xn, align 4
  %i.xp = zext i32 %i.xo to i64
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %i.xm, i64 %i.xp
  %i.xr = load i32, ptr %i.xq, align 4
  store i32 %i.xr, ptr %i.xn, align 4
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %._crit_edge.i68.i.i, %bb.cp, %._crit_edge199.i.i.i, %.critedge.thread.i.i.i
  %.6.i.i.i = phi i32 [ %.199206.i.i.i, %bb.cs ], [ %.2100.lcssa.i.i.i, %._crit_edge199.i.i.i ], [ %.199206.i.i.i, %.critedge.thread.i.i.i ], [ %.199206.i.i.i, %bb.cp ], [ %.4.lcssa.i.i.i, %._crit_edge.i68.i.i ] ; 2 uses
  %i.xs = add i32 %.1112.i.i.i, %.0108204.i.i.i   ; 2 uses
  %.not.i69.i.i = icmp slt i32 %i.xs, %i.oa
  br i1 %.not.i69.i.i, label %bb.bz, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactDataEiPjiiRNS0_11MixedBlocksER10UErrorCode.exit.i.i, !llvm.loop !54

_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactDataEiPjiiRNS0_11MixedBlocksER10UErrorCode.exit.thread.i.i: ; preds = %bb.cb, %bb.bx
  store i32 7, ptr %3, align 4
  br label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactTrieEiR10UErrorCode.exit.i

_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactDataEiPjiiRNS0_11MixedBlocksER10UErrorCode.exit.i.i: ; preds = %bb.ct, %bb.by
  %.promoted164.i.i5 = phi i32 [ %.promoted164.i.i, %bb.by ], [ %.0.i118.i160.i.i, %bb.ct ]
  %.pre.i.i84.ph.i.i = phi ptr [ %i.nv, %bb.by ], [ %i.oo, %bb.ct ] ; 7 uses
  %.2.i66.ph.i.i = phi i32 [ 128, %bb.by ], [ %.6.i.i.i, %bb.ct ] ; 2 uses
  %.pr.i.i = load i32, ptr %3, align 4
  %i.xt = icmp slt i32 %.pr.i.i, 1
  br i1 %i.xt, label %bb.cu, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactTrieEiR10UErrorCode.exit.i

bb.cu:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactDataEiPjiiRNS0_11MixedBlocksER10UErrorCode.exit.i.i
  %i.xu = load ptr, ptr %i.gh, align 8
  tail call void @uprv_free_78(ptr noundef %i.xu) #10
  store ptr %i.mg, ptr %i.gh, align 8
  %i.xv = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.583136.i.i.i, ptr %i.xv, align 8
  %i.xw = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.2.i66.ph.i.i, ptr %i.xw, align 4
  %i.xx = icmp samesign ugt i32 %.2.i66.ph.i.i, 262159
  br i1 %i.xx, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  store i32 8, ptr %3, align 4
  br label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactTrieEiR10UErrorCode.exit.i

bb.cw:                                            ; preds = %bb.cu
  %i.xy = icmp sgt i32 %.011.i.i.i, -1
  br i1 %i.xy, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.xz = load ptr, ptr %0, align 8
  %i.ya = zext nneg i32 %.011.i.i.i to i64
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %i.xz, i64 %i.ya
  %i.yc = load i32, ptr %i.yb, align 4            ; 2 uses
  %i.yd = sext i32 %i.yc to i64
  %i.ye = getelementptr inbounds [4 x i8], ptr %i.mg, i64 %i.yd
  %i.yf = load i32, ptr %i.ye, align 4
  %i.yg = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.yf, ptr %i.yg, align 8
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %.sink.i.i = phi i32 [ %i.yc, %bb.cx ], [ 1048575, %bb.cw ]
  %i.yh = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  store i32 %.sink.i.i, ptr %i.yh, align 8
  %i.yi = lshr exact i32 %i.cr, 6                 ; 5 uses
  %i.yj = load i32, ptr %i.ct, align 8
  %i.yk = ashr i32 %i.yj, 6
  %.not.i80.i.i = icmp sgt i32 %i.yk, %i.yi
  br i1 %.not.i80.i.i, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.yl = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 32767, ptr %i.yl, align 4
  br label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie12compactIndexEiRNS0_11MixedBlocksER10UErrorCode.exit.i.i

bb.da:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.ym = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 7 uses
  %i.yn = add nsw i32 %i.cs, -4
  %i.yo = lshr exact i32 %i.yn, 2
  %i.yp = add nuw nsw i32 %i.yo, 1
  %wide.trip.count.i81.i.i = zext nneg i32 %i.yp to i64
  br label %bb.db

bb.db:                                            ; preds = %bb.df, %bb.da
  %indvars.iv417.i.i.i = phi i64 [ 0, %bb.da ], [ %indvars.iv.next418.i.i.i, %bb.df ] ; 3 uses
  %indvars.iv.i82.i.i = phi i64 [ 0, %bb.da ], [ %indvars.iv.next416.i.i.i, %bb.df ] ; 4 uses
  %.0237363.i.i.i = phi i32 [ -1, %bb.da ], [ %.1238.i.i.i, %bb.df ] ; 5 uses
  %indvars421.i.i.i = trunc i64 %indvars.iv417.i.i.i to i32 ; 2 uses
  %i.yq = load ptr, ptr %0, align 8
  %i.yr = getelementptr inbounds nuw [4 x i8], ptr %i.yq, i64 %indvars.iv.i82.i.i ; 2 uses
  %i.ys = load i32, ptr %i.yr, align 4            ; 5 uses
  %i.yt = trunc i32 %i.ys to i16
  %i.yu = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv417.i.i.i
  store i16 %i.yt, ptr %i.yu, align 2
  %i.yv = load i32, ptr %i.yh, align 8
  %i.yw = icmp eq i32 %i.ys, %i.yv
  br i1 %i.yw, label %bb.dc, label %bb.df

bb.dc:                                            ; preds = %bb.db
  %i.yx = icmp slt i32 %.0237363.i.i.i, 0
  br i1 %i.yx, label %bb.df, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.yy = load i32, ptr %i.ym, align 4
  %i.yz = icmp slt i32 %i.yy, 0
  %i.za = sub nsw i32 %indvars421.i.i.i, %.0237363.i.i.i
  %i.zb = icmp eq i32 %i.za, 31
  %or.cond293.i.i.i = select i1 %i.yz, i1 %i.zb, i1 false
  br i1 %or.cond293.i.i.i, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  store i32 %.0237363.i.i.i, ptr %i.ym, align 4
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd, %bb.dc, %bb.db
  %.1238.i.i.i = phi i32 [ %.0237363.i.i.i, %bb.dd ], [ %.0237363.i.i.i, %bb.de ], [ %indvars421.i.i.i, %bb.dc ], [ -1, %bb.db ]
  %i.zc = add i32 %i.ys, 16
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yr, i64 4
  store i32 %i.zc, ptr %i.zd, align 4
  %i.ze = add i32 %i.ys, 32
  %i.zf = load ptr, ptr %0, align 8
  %i.zg = getelementptr inbounds nuw [4 x i8], ptr %i.zf, i64 %indvars.iv.i82.i.i
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 8
  store i32 %i.ze, ptr %i.zh, align 4
  %i.zi = add i32 %i.ys, 48
  %i.zj = load ptr, ptr %0, align 8
  %i.zk = getelementptr inbounds nuw [4 x i8], ptr %i.zj, i64 %indvars.iv.i82.i.i
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 12
  store i32 %i.zi, ptr %i.zl, align 4
  %indvars.iv.next416.i.i.i = add nuw nsw i64 %indvars.iv.i82.i.i, 4
  %indvars.iv.next418.i.i.i = add nuw nsw i64 %indvars.iv417.i.i.i, 1 ; 2 uses
  %exitcond.not.i83.i.i = icmp eq i64 %indvars.iv.next418.i.i.i, %wide.trip.count.i81.i.i
  br i1 %exitcond.not.i83.i.i, label %._crit_edge.i.i85.i.i, label %bb.db, !llvm.loop !55

._crit_edge.i.i85.i.i:                            ; preds = %bb.df
  %i.zm = getelementptr inbounds nuw i8, ptr %6, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24028) %.pre.i.i84.ph.i.i, i8 0, i64 24028, i1 false)
  store <4 x i32> <i32 6007, i32 12, i32 4095, i32 32>, ptr %i.nx, align 4
  call fastcc void @_ZN6icu_7812_GLOBAL__N_111MixedBlocks6extendItEEvPKT_iii(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 0, i32 noundef %i.yi)
  %i.zn = and i32 %i.cs, 4096                     ; 4 uses
  %i.zo = load i32, ptr %i.ct, align 8
  %i.zp = ashr i32 %i.zo, 4                       ; 4 uses
  %i.zq = icmp slt i32 %i.zn, %i.zp               ; 2 uses
  br i1 %i.zq, label %.preheader351.lr.ph.i.i.i, label %._crit_edge.i86.i.i

.preheader351.lr.ph.i.i.i:                        ; preds = %._crit_edge.i.i85.i.i
  %i.zr = load i32, ptr %i.ym, align 4
  %i.zs = zext nneg i32 %i.zn to i64
  %sext.i.i = zext nneg i32 %i.zp to i64
  br label %.preheader351.i.i.i

.preheader351.i.i.i:                              ; preds = %bb.dn, %.preheader351.lr.ph.i.i.i
  %indvars.iv428.i.i.i = phi i64 [ %i.zs, %.preheader351.lr.ph.i.i.i ], [ %i.aco, %bb.dn ] ; 6 uses
  %.2239367.i.i.i = phi i32 [ %i.zr, %.preheader351.lr.ph.i.i.i ], [ %.3240.i.i.i, %bb.dn ] ; 5 uses
  %.0250366.i.i.i = phi i32 [ 0, %.preheader351.lr.ph.i.i.i ], [ %.3253.i.i.i, %bb.dn ] ; 5 uses
  %.0267365.i.i.i = phi i1 [ false, %.preheader351.lr.ph.i.i.i ], [ %.2269.i.i.i, %bb.dn ] ; 4 uses
  %i.zt = load ptr, ptr %0, align 8               ; 2 uses
  %i.zu = load i32, ptr %i.yh, align 8
  %i.zv = getelementptr inbounds nuw [4 x i8], ptr %i.zt, i64 %indvars.iv428.i.i.i ; 2 uses
  %i.zw = load <32 x i32>, ptr %i.zv, align 4     ; 33 uses
  %i.zx = extractelement <32 x i32> %i.zw, i64 0
  %i.zy = extractelement <32 x i32> %i.zw, i64 1
  %i.zz = or i32 %i.zy, %i.zx
  %i.aaa = extractelement <32 x i32> %i.zw, i64 2
  %i.aab = or i32 %i.zz, %i.aaa
  %i.aac = extractelement <32 x i32> %i.zw, i64 3
  %i.aad = or i32 %i.aab, %i.aac
  %i.aae = extractelement <32 x i32> %i.zw, i64 4
  %i.aaf = or i32 %i.aad, %i.aae
  %i.aag = extractelement <32 x i32> %i.zw, i64 5
  %i.aah = or i32 %i.aaf, %i.aag
  %i.aai = extractelement <32 x i32> %i.zw, i64 6
  %i.aaj = or i32 %i.aah, %i.aai
  %i.aak = extractelement <32 x i32> %i.zw, i64 7
  %i.aal = or i32 %i.aaj, %i.aak
  %i.aam = extractelement <32 x i32> %i.zw, i64 8
  %i.aan = or i32 %i.aal, %i.aam
  %i.aao = extractelement <32 x i32> %i.zw, i64 9
  %i.aap = or i32 %i.aan, %i.aao
  %i.aaq = extractelement <32 x i32> %i.zw, i64 10
  %i.aar = or i32 %i.aap, %i.aaq
  %i.aas = extractelement <32 x i32> %i.zw, i64 11
  %i.aat = or i32 %i.aar, %i.aas
  %i.aau = extractelement <32 x i32> %i.zw, i64 12
  %i.aav = or i32 %i.aat, %i.aau
  %i.aaw = extractelement <32 x i32> %i.zw, i64 13
  %i.aax = or i32 %i.aav, %i.aaw
  %i.aay = extractelement <32 x i32> %i.zw, i64 14
  %i.aaz = or i32 %i.aax, %i.aay
  %i.aba = extractelement <32 x i32> %i.zw, i64 15
  %i.abb = or i32 %i.aaz, %i.aba
  %i.abc = extractelement <32 x i32> %i.zw, i64 16
  %i.abd = or i32 %i.abb, %i.abc
  %i.abe = extractelement <32 x i32> %i.zw, i64 17
  %i.abf = or i32 %i.abd, %i.abe
  %i.abg = extractelement <32 x i32> %i.zw, i64 18
  %i.abh = or i32 %i.abf, %i.abg
  %i.abi = extractelement <32 x i32> %i.zw, i64 19
  %i.abj = or i32 %i.abh, %i.abi
  %i.abk = extractelement <32 x i32> %i.zw, i64 20
  %i.abl = or i32 %i.abj, %i.abk
  %i.abm = extractelement <32 x i32> %i.zw, i64 21
  %i.abn = or i32 %i.abl, %i.abm
  %i.abo = extractelement <32 x i32> %i.zw, i64 22
  %i.abp = or i32 %i.abn, %i.abo
  %i.abq = extractelement <32 x i32> %i.zw, i64 23
  %i.abr = or i32 %i.abp, %i.abq
  %i.abs = extractelement <32 x i32> %i.zw, i64 24
  %i.abt = or i32 %i.abr, %i.abs
  %i.abu = extractelement <32 x i32> %i.zw, i64 25
  %i.abv = or i32 %i.abt, %i.abu
  %i.abw = extractelement <32 x i32> %i.zw, i64 26
  %i.abx = or i32 %i.abv, %i.abw
  %i.aby = extractelement <32 x i32> %i.zw, i64 27
  %i.abz = or i32 %i.abx, %i.aby
  %i.aca = extractelement <32 x i32> %i.zw, i64 28
  %i.acb = or i32 %i.abz, %i.aca
  %i.acc = extractelement <32 x i32> %i.zw, i64 29
  %i.acd = or i32 %i.acb, %i.acc
  %i.ace = extractelement <32 x i32> %i.zw, i64 30
  %i.acf = or i32 %i.acd, %i.ace
  %i.acg = extractelement <32 x i32> %i.zw, i64 31
  %i.ach = or i32 %i.acf, %i.acg                  ; 2 uses
  %i.aci = insertelement <32 x i32> poison, i32 %i.zu, i64 0
  %i.acj = shufflevector <32 x i32> %i.aci, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.ack = icmp eq <32 x i32> %i.zw, %i.acj
  %i.acl = freeze <32 x i1> %i.ack
  %i.acm = bitcast <32 x i1> %i.acl to i32
  %i.acn = icmp eq i32 %i.acm, -1
  %i.aco = add nuw nsw i64 %indvars.iv428.i.i.i, 32 ; 2 uses
  br i1 %i.acn, label %bb.dg, label %bb.di

._crit_edge.i86.i.i:                              ; preds = %bb.dn, %._crit_edge.i.i85.i.i
  %.0267.lcssa.i.i.i = phi i1 [ false, %._crit_edge.i.i85.i.i ], [ %.2269.i.i.i, %bb.dn ] ; 3 uses
  %.0250.lcssa.i.i.i = phi i32 [ 0, %._crit_edge.i.i85.i.i ], [ %.3253.i.i.i, %bb.dn ]
  %i.acp = sub nsw i32 %i.zp, %i.zn
  %i.acq = ashr i32 %i.acp, 5                     ; 2 uses
  %i.acr = add nsw i32 %i.acq, 31
  %i.acs = ashr i32 %i.acr, 5
  %i.act = add nsw i32 %i.acs, %i.yi              ; 16 uses
  %i.acu = add nsw i32 %i.act, %i.acq
  %i.acv = add i32 %i.acu, %.0250.lcssa.i.i.i     ; 7 uses
  %i.acw = shl i32 %i.acv, 1
  %i.acx = add i32 %i.acw, 2
  %i.acy = sext i32 %i.acx to i64
  %i.acz = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.acy) #11 ; 3 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 57 uses
  store ptr %i.acz, ptr %i.ada, align 8
  %i.adb = icmp eq ptr %i.acz, null
  br i1 %i.adb, label %bb.do, label %bb.dp

bb.dg:                                            ; preds = %.preheader351.i.i.i
  %i.adc = getelementptr inbounds nuw i8, ptr %i.gg, i64 %indvars.iv428.i.i.i
  store i8 0, ptr %i.adc, align 1
  %i.add = icmp slt i32 %.2239367.i.i.i, 0
  br i1 %i.add, label %bb.dh, label %bb.dn

bb.dh:                                            ; preds = %bb.dg
  %i.ade = icmp ugt i32 %i.ach, 65535             ; 2 uses
  %.1268.i.i.i = select i1 %i.ade, i1 true, i1 %.0267365.i.i.i
  %.1251.v.i.i.i = select i1 %i.ade, i32 36, i32 32
  %.1251.i.i.i = add nsw i32 %.1251.v.i.i.i, %.0250366.i.i.i
  br label %bb.dn

bb.di:                                            ; preds = %.preheader351.i.i.i
  %i.adf = icmp ult i32 %i.ach, 65536
  br i1 %i.adf, label %bb.dj, label %bb.dm

bb.dj:                                            ; preds = %bb.di
  %i.adg = trunc nuw nsw i64 %indvars.iv428.i.i.i to i32
  %i.adh = call fastcc noundef i32 @_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockItjEEiPKT_PKT0_i(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef nonnull %i.a, ptr noundef nonnull %i.zt, i32 noundef %i.adg) ; 2 uses
  %i.adi = icmp sgt i32 %i.adh, -1
  %i.adj = getelementptr inbounds nuw i8, ptr %i.gg, i64 %indvars.iv428.i.i.i ; 2 uses
  br i1 %i.adi, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  store i8 1, ptr %i.adj, align 1
  store i32 %i.adh, ptr %i.zv, align 4
  br label %bb.dn

bb.dl:                                            ; preds = %bb.dj
  store i8 2, ptr %i.adj, align 1
  %i.adk = add nsw i32 %.0250366.i.i.i, 32
  br label %bb.dn

bb.dm:                                            ; preds = %bb.di
  %i.adl = getelementptr inbounds nuw i8, ptr %i.gg, i64 %indvars.iv428.i.i.i
  store i8 3, ptr %i.adl, align 1
  %i.adm = add nsw i32 %.0250366.i.i.i, 36
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl, %bb.dk, %bb.dh, %bb.dg
  %.2269.i.i.i = phi i1 [ %.1268.i.i.i, %bb.dh ], [ %.0267365.i.i.i, %bb.dg ], [ true, %bb.dm ], [ %.0267365.i.i.i, %bb.dl ], [ %.0267365.i.i.i, %bb.dk ] ; 2 uses
  %.3253.i.i.i = phi i32 [ %.1251.i.i.i, %bb.dh ], [ %.0250366.i.i.i, %bb.dg ], [ %i.adm, %bb.dm ], [ %i.adk, %bb.dl ], [ %.0250366.i.i.i, %bb.dk ] ; 2 uses
  %.3240.i.i.i = phi i32 [ 0, %bb.dh ], [ %.2239367.i.i.i, %bb.dg ], [ %.2239367.i.i.i, %bb.dm ], [ %.2239367.i.i.i, %bb.dl ], [ %.2239367.i.i.i, %bb.dk ]
  %i.adn = icmp samesign ult i64 %i.aco, %sext.i.i
  br i1 %i.adn, label %.preheader351.i.i.i, label %._crit_edge.i86.i.i, !llvm.loop !56

bb.do:                                            ; preds = %._crit_edge.i86.i.i
  store i32 7, ptr %3, align 4
  br label %bb.fk

bb.dp:                                            ; preds = %._crit_edge.i86.i.i
  %i.ado = lshr exact i32 %i.cr, 5
  %i.adp = zext nneg i32 %i.ado to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.acz, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %i.adp, i1 false)
  %i.adq = icmp slt i32 %i.acv, 4126
  br i1 %i.adq, label %bb.ds, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.adr = icmp samesign ult i32 %i.acv, 32798
  br i1 %i.adr, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.ads = icmp samesign ult i32 %i.acv, 131102   ; 3 uses
  %..i87.i.i = select i1 %i.ads, i32 17, i32 21
  %.503.i.i.i = select i1 %i.ads, i32 131071, i32 2097151
  %.504.i.i.i = select i1 %i.ads, i32 200003, i32 1500007
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq, %bb.dp
  %.sink502.i.i.i = phi i32 [ 15, %bb.dq ], [ %..i87.i.i, %bb.dr ], [ 12, %bb.dp ]
  %.sink.i88.i.i = phi i32 [ 32767, %bb.dq ], [ %.503.i.i.i, %bb.dr ], [ 4095, %bb.dp ]
  %.0.i294.i.i.i = phi i32 [ 50021, %bb.dq ], [ %.504.i.i.i, %bb.dr ], [ 6007, %bb.dp ] ; 5 uses
  store i32 %.sink502.i.i.i, ptr %i.nl, align 8
  store i32 %.sink.i88.i.i, ptr %i.zm, align 4
  %i.adt = icmp sgt i32 %.0.i294.i.i.i, %.promoted164.i.i5
  br i1 %i.adt, label %bb.dt, label %._crit_edge.i296.i.i.i

._crit_edge.i296.i.i.i:                           ; preds = %bb.ds
  %.pre13.i297.i.i.i = shl nuw nsw i32 %.0.i294.i.i.i, 2
  %.pre14.i298.i.i.i = zext nneg i32 %.pre13.i297.i.i.i to i64
  br label %bb.dv

bb.dt:                                            ; preds = %bb.ds
  tail call void @uprv_free_78(ptr noundef nonnull %.pre.i.i84.ph.i.i) #10
  %i.adu = shl nuw nsw i32 %.0.i294.i.i.i, 2
  %i.adv = zext nneg i32 %i.adu to i64            ; 2 uses
  %i.adw = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.adv) #11 ; 3 uses
  store ptr %i.adw, ptr %6, align 8
  %i.adx = icmp eq ptr %i.adw, null
  br i1 %i.adx, label %_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit301.i.i.i, label %bb.du

bb.du:                                            ; preds = %bb.dt
  store i32 %.0.i294.i.i.i, ptr %i.nk, align 8
  br label %bb.dv

_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit301.i.i.i: ; preds = %bb.dt
  store i32 7, ptr %3, align 4
  br label %bb.fk

bb.dv:                                            ; preds = %bb.du, %._crit_edge.i296.i.i.i
  %i.ady = phi ptr [ %.pre.i.i84.ph.i.i, %._crit_edge.i296.i.i.i ], [ %i.adw, %bb.du ] ; 2 uses
  %.pre-phi15.i299.i.i.i = phi i64 [ %.pre14.i298.i.i.i, %._crit_edge.i296.i.i.i ], [ %i.adv, %bb.du ]
  store i32 %.0.i294.i.i.i, ptr %i.nx, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ady, i8 0, i64 %.pre-phi15.i299.i.i.i, i1 false)
  store i32 32, ptr %i.ny, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  br i1 %.0267.lcssa.i.i.i, label %bb.dw, label %bb.ee

bb.dw:                                            ; preds = %bb.dv
  %i.adz = icmp slt i32 %i.acv, 4130
  br i1 %i.adz, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.aea = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 12, ptr %i.aea, align 8
  %i.aeb = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 4095, ptr %i.aeb, align 4
  br label %bb.ed

bb.dy:                                            ; preds = %bb.dw
  %i.aec = icmp samesign ult i32 %i.acv, 32802
  %i.aed = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 3 uses
  br i1 %i.aec, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.aee = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 15, ptr %i.aee, align 8
  store i32 32767, ptr %i.aed, align 4
  br label %bb.ed

bb.ea:                                            ; preds = %bb.dy
  %i.aef = icmp samesign ult i32 %i.acv, 131106
  %i.aeg = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br i1 %i.aef, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  store i32 17, ptr %i.aeg, align 8
  store i32 131071, ptr %i.aed, align 4
  br label %bb.ed

bb.ec:                                            ; preds = %bb.ea
  store i32 21, ptr %i.aeg, align 8
  store i32 2097151, ptr %i.aed, align 4
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb, %bb.dz, %bb.dx
  %.0.i302.i.i.i = phi i32 [ 6007, %bb.dx ], [ 50021, %bb.dz ], [ 200003, %bb.eb ], [ 1500007, %bb.ec ] ; 3 uses
  tail call void @uprv_free_78(ptr noundef null) #10
  %i.aeh = shl nuw nsw i32 %.0.i302.i.i.i, 2
  %i.aei = zext nneg i32 %i.aeh to i64            ; 2 uses
  %i.aej = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.aei) #11 ; 3 uses
  store ptr %i.aej, ptr %4, align 8
  %i.aek = icmp eq ptr %i.aej, null
  br i1 %i.aek, label %_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit309.i.i.i, label %_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit309.thread.i.i.i

_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit309.thread.i.i.i: ; preds = %bb.ed
  %i.ael = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.0.i302.i.i.i, ptr %i.ael, align 8
  %i.aem = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %.0.i302.i.i.i, ptr %i.aem, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.aej, i8 0, i64 %i.aei, i1 false)
  %i.aen = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 36, ptr %i.aen, align 8
  br label %bb.ee

_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit309.i.i.i: ; preds = %bb.ed
  store i32 7, ptr %3, align 4
  br label %bb.fj

bb.ee:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit309.thread.i.i.i, %bb.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %.pre472.i.i.i = load i32, ptr %i.ym, align 4   ; 3 uses
  br i1 %i.zq, label %.lr.ph384.i.i.i, label %._crit_edge385.i.i.i

.lr.ph384.i.i.i:                                  ; preds = %bb.ee
  %i.aeo = zext nneg i32 %i.zn to i64
  %i.aep = zext nneg i32 %i.zp to i64
  %.pre223.i.i = zext nneg i32 %i.act to i64
  br label %bb.ef

._crit_edge385.loopexit.i.i.i:                    ; preds = %bb.ey
  %i.aeq = trunc nuw nsw i64 %indvars.iv.next457.i.i.i to i32
  br label %._crit_edge385.i.i.i

._crit_edge385.i.i.i:                             ; preds = %._crit_edge385.loopexit.i.i.i, %bb.ee
  %i.aer = phi i32 [ %.pre472.i.i.i, %bb.ee ], [ %i.axk, %._crit_edge385.loopexit.i.i.i ]
  %.0270.lcssa.i.i.i = phi i32 [ 0, %bb.ee ], [ %i.aeq, %._crit_edge385.loopexit.i.i.i ] ; 3 uses
  %.0261.lcssa.i.i.i = phi i32 [ %i.act, %bb.ee ], [ %.6.i98.i.i, %._crit_edge385.loopexit.i.i.i ] ; 3 uses
  %i.aes = icmp slt i32 %i.aer, 0
  br i1 %i.aes, label %bb.ez, label %bb.fa

bb.ef:                                            ; preds = %bb.ey, %.lr.ph384.i.i.i
  %i.aet = phi i32 [ %.pre472.i.i.i, %.lr.ph384.i.i.i ], [ %i.axk, %bb.ey ]
  %indvars.iv456.i.i.i = phi i64 [ 0, %.lr.ph384.i.i.i ], [ %indvars.iv.next457.i.i.i, %bb.ey ] ; 2 uses
  %indvars.iv430.i.i.i = phi i64 [ %i.aeo, %.lr.ph384.i.i.i ], [ %indvars.iv.next431.i.i.i, %bb.ey ] ; 17 uses
  %.4241382.i.i.i = phi i32 [ %.pre472.i.i.i, %.lr.ph384.i.i.i ], [ %.5335.i.i.i, %bb.ey ] ; 5 uses
  %.0261378.i.i.i = phi i32 [ %i.act, %.lr.ph384.i.i.i ], [ %.6.i98.i.i, %bb.ey ] ; 20 uses
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.gg, i64 %indvars.iv430.i.i.i
  %i.aev = load i8, ptr %i.aeu, align 1           ; 2 uses
  %i.aew = icmp eq i8 %i.aev, 0
  %i.aex = icmp slt i32 %.4241382.i.i.i, 0
  %or.cond.i.i.i = select i1 %i.aew, i1 %i.aex, i1 false
  br i1 %or.cond.i.i.i, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.aey = load i32, ptr %i.yh, align 8
  %i.aez = icmp slt i32 %i.aey, 65536
  br i1 %i.aez, label %.thread337.i.i.i, label %.thread.i99.i.i

bb.eh:                                            ; preds = %bb.ef
  switch i8 %i.aev, label %.thread.i99.i.i [
    i8 0, label %bb.ew
    i8 1, label %bb.ei
    i8 2, label %.thread337.i.i.i
  ]

bb.ei:                                            ; preds = %bb.eh
  %i.afa = load ptr, ptr %0, align 8
  %i.afb = getelementptr inbounds nuw [4 x i8], ptr %i.afa, i64 %indvars.iv430.i.i.i
  %i.afc = load i32, ptr %i.afb, align 4
  br label %bb.ew

.thread337.i.i.i:                                 ; preds = %bb.eh, %bb.eg
  %.5340.i.i.i = phi i32 [ %.4241382.i.i.i, %bb.eh ], [ 0, %bb.eg ] ; 3 uses
  %i.afd = load ptr, ptr %i.ada, align 8          ; 4 uses
  %i.afe = load ptr, ptr %0, align 8              ; 2 uses
  %i.aff = trunc nuw nsw i64 %indvars.iv430.i.i.i to i32
  %i.afg = call fastcc noundef i32 @_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockItjEEiPKT_PKT0_i(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef %i.afd, ptr noundef %i.afe, i32 noundef %i.aff) ; 2 uses
  %i.afh = icmp sgt i32 %i.afg, -1
  br i1 %i.afh, label %bb.ew, label %bb.ej

bb.ej:                                            ; preds = %.thread337.i.i.i
  %i.afi = icmp eq i32 %.0261378.i.i.i, %i.act
  br i1 %i.afi, label %.lr.ph374.preheader.i.i.i, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.afj = getelementptr inbounds nuw [4 x i8], ptr %i.afe, i64 %indvars.iv430.i.i.i ; 2 uses
  %i.afk = sext i32 %.0261378.i.i.i to i64        ; 4 uses
  br label %bb.el

bb.el:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i.1, %bb.ek
  %indvars.iv.i.i92.i.i = phi i64 [ 31, %bb.ek ], [ %indvars.iv.next.i.i97.i.i.1, %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i.1 ] ; 6 uses
  %i.afl = sub nsw i64 %i.afk, %indvars.iv.i.i92.i.i
  %i.afm = getelementptr inbounds [2 x i8], ptr %i.afd, i64 %i.afl
  %i.afn = trunc nuw nsw i64 %indvars.iv.i.i92.i.i to i32 ; 2 uses
  br label %.lr.ph.i.i.i93.i.i

.lr.ph.i.i.i93.i.i:                               ; preds = %bb.em, %bb.el
  %.010.i.i.i94.i.i = phi i32 [ %i.afu, %bb.em ], [ %i.afn, %bb.el ] ; 2 uses
  %.069.i.i.i95.i.i = phi ptr [ %i.aft, %bb.em ], [ %i.afj, %bb.el ] ; 2 uses
  %.078.i.i.i96.i.i = phi ptr [ %i.afs, %bb.em ], [ %i.afm, %bb.el ] ; 2 uses
  %i.afo = load i16, ptr %.078.i.i.i96.i.i, align 2
  %i.afp = zext i16 %i.afo to i32
  %i.afq = load i32, ptr %.069.i.i.i95.i.i, align 4
  %i.afr = icmp eq i32 %i.afq, %i.afp
  br i1 %i.afr, label %bb.em, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i

bb.em:                                            ; preds = %.lr.ph.i.i.i93.i.i
  %i.afs = getelementptr inbounds nuw i8, ptr %.078.i.i.i96.i.i, i64 2
  %i.aft = getelementptr inbounds nuw i8, ptr %.069.i.i.i95.i.i, i64 4
  %i.afu = add nsw i32 %.010.i.i.i94.i.i, -1
  %i.afv = icmp sgt i32 %.010.i.i.i94.i.i, 1
  br i1 %i.afv, label %.lr.ph.i.i.i93.i.i, label %_ZN6icu_7812_GLOBAL__N_110getOverlapItjEEiPKT_iPKT0_ii.exit.i.i.i, !llvm.loop !57

_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i93.i.i
  %indvars.iv.next.i.i97.i.i = add nsw i64 %indvars.iv.i.i92.i.i, -1 ; 3 uses
  %i.afw = icmp samesign ugt i64 %indvars.iv.i.i92.i.i, 1
  br i1 %i.afw, label %bb.en, label %.lr.ph374.preheader.i.i.i

bb.en:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i
  %i.afx = sub nsw i64 %i.afk, %indvars.iv.next.i.i97.i.i
  %i.afy = getelementptr inbounds [2 x i8], ptr %i.afd, i64 %i.afx
  %i.afz = trunc nuw nsw i64 %indvars.iv.next.i.i97.i.i to i32 ; 2 uses
  br label %.lr.ph.i.i.i93.i.i.1

.lr.ph.i.i.i93.i.i.1:                             ; preds = %bb.eo, %bb.en
  %.010.i.i.i94.i.i.1 = phi i32 [ %i.agg, %bb.eo ], [ %i.afz, %bb.en ] ; 2 uses
  %.069.i.i.i95.i.i.1 = phi ptr [ %i.agf, %bb.eo ], [ %i.afj, %bb.en ] ; 2 uses
  %.078.i.i.i96.i.i.1 = phi ptr [ %i.age, %bb.eo ], [ %i.afy, %bb.en ] ; 2 uses
  %i.aga = load i16, ptr %.078.i.i.i96.i.i.1, align 2
  %i.agb = zext i16 %i.aga to i32
  %i.agc = load i32, ptr %.069.i.i.i95.i.i.1, align 4
  %i.agd = icmp eq i32 %i.agc, %i.agb
  br i1 %i.agd, label %bb.eo, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i.1

_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i.1: ; preds = %.lr.ph.i.i.i93.i.i.1
  %indvars.iv.next.i.i97.i.i.1 = add nsw i64 %indvars.iv.i.i92.i.i, -2
  br label %bb.el

bb.eo:                                            ; preds = %.lr.ph.i.i.i93.i.i.1
  %i.age = getelementptr inbounds nuw i8, ptr %.078.i.i.i96.i.i.1, i64 2
  %i.agf = getelementptr inbounds nuw i8, ptr %.069.i.i.i95.i.i.1, i64 4
  %i.agg = add nsw i32 %.010.i.i.i94.i.i.1, -1
  %i.agh = icmp sgt i32 %.010.i.i.i94.i.i.1, 1
  br i1 %i.agh, label %.lr.ph.i.i.i93.i.i.1, label %_ZN6icu_7812_GLOBAL__N_110getOverlapItjEEiPKT_iPKT0_ii.exit.i.i.i, !llvm.loop !57

_ZN6icu_7812_GLOBAL__N_110getOverlapItjEEiPKT_iPKT0_ii.exit.i.i.i: ; preds = %bb.em, %bb.eo
  %indvars.iv.i.i92.i.i.lcssa301 = phi i64 [ %indvars.iv.next.i.i97.i.i, %bb.eo ], [ %indvars.iv.i.i92.i.i, %bb.em ] ; 2 uses
  %.lcssa300 = phi i32 [ %i.afz, %bb.eo ], [ %i.afn, %bb.em ]
  %i.agi = sub nsw i32 %.0261378.i.i.i, %.lcssa300 ; 2 uses
  %i.agj = icmp slt i64 %indvars.iv.i.i92.i.i.lcssa301, 32
  br i1 %i.agj, label %.lr.ph374.preheader.i.i.i, label %._crit_edge375.i.i.i

.lr.ph374.preheader.i.i.i:                        ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapItjEEiPKT_iPKT0_ii.exit.i.i.i, %bb.ej
  %.pre-phi224.i.i = phi i64 [ %.pre223.i.i, %bb.ej ], [ %i.afk, %_ZN6icu_7812_GLOBAL__N_110getOverlapItjEEiPKT_iPKT0_ii.exit.i.i.i ], [ %i.afk, %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i ]
  %i.agk = phi i32 [ %i.act, %bb.ej ], [ %i.agi, %_ZN6icu_7812_GLOBAL__N_110getOverlapItjEEiPKT_iPKT0_ii.exit.i.i.i ], [ %.0261378.i.i.i, %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i ]
  %.0254492.i.i.i = phi i64 [ 0, %bb.ej ], [ %indvars.iv.i.i92.i.i.lcssa301, %_ZN6icu_7812_GLOBAL__N_110getOverlapItjEEiPKT_iPKT0_ii.exit.i.i.i ], [ 0, %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i ]
  br label %.lr.ph374.i.i.i

.lr.ph374.i.i.i:                                  ; preds = %.lr.ph374.i.i.i, %.lr.ph374.preheader.i.i.i
  %indvars.iv450.i.i.i = phi i64 [ %.pre-phi224.i.i, %.lr.ph374.preheader.i.i.i ], [ %indvars.iv.next451.i.i.i, %.lr.ph374.i.i.i ] ; 2 uses
  %indvars.iv448.i.i.i = phi i64 [ %.0254492.i.i.i, %.lr.ph374.preheader.i.i.i ], [ %indvars.iv.next449.i.i.i, %.lr.ph374.i.i.i ] ; 2 uses
  %i.agl = load ptr, ptr %0, align 8
  %indvars.iv.next449.i.i.i = add nsw i64 %indvars.iv448.i.i.i, 1 ; 2 uses
  %i.agm = getelementptr [4 x i8], ptr %i.agl, i64 %indvars.iv448.i.i.i
  %i.agn = getelementptr [4 x i8], ptr %i.agm, i64 %indvars.iv430.i.i.i
  %i.ago = load i32, ptr %i.agn, align 4
  %i.agp = trunc i32 %i.ago to i16
  %i.agq = load ptr, ptr %i.ada, align 8
  %indvars.iv.next451.i.i.i = add nsw i64 %indvars.iv450.i.i.i, 1 ; 2 uses
  %i.agr = getelementptr inbounds [2 x i8], ptr %i.agq, i64 %indvars.iv450.i.i.i
  store i16 %i.agp, ptr %i.agr, align 2
  %i.ags = and i64 %indvars.iv.next449.i.i.i, 4294967295
  %exitcond455.not.i.i.i = icmp eq i64 %i.ags, 32
  br i1 %exitcond455.not.i.i.i, label %._crit_edge375.loopexit.i.i.i, label %.lr.ph374.i.i.i, !llvm.loop !58

._crit_edge375.loopexit.i.i.i:                    ; preds = %.lr.ph374.i.i.i
  %i.agt = trunc nsw i64 %indvars.iv.next451.i.i.i to i32
  %.pre471.i.i.i = load ptr, ptr %i.ada, align 8
  br label %._crit_edge375.i.i.i

._crit_edge375.i.i.i:                             ; preds = %._crit_edge375.loopexit.i.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapItjEEiPKT_iPKT0_ii.exit.i.i.i
  %i.agu = phi i32 [ %i.agi, %_ZN6icu_7812_GLOBAL__N_110getOverlapItjEEiPKT_iPKT0_ii.exit.i.i.i ], [ %i.agk, %._crit_edge375.loopexit.i.i.i ] ; 2 uses
  %i.agv = phi ptr [ %i.afd, %_ZN6icu_7812_GLOBAL__N_110getOverlapItjEEiPKT_iPKT0_ii.exit.i.i.i ], [ %.pre471.i.i.i, %._crit_edge375.loopexit.i.i.i ]
  %.1262.lcssa.i.i.i = phi i32 [ %.0261378.i.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapItjEEiPKT_iPKT0_ii.exit.i.i.i ], [ %i.agt, %._crit_edge375.loopexit.i.i.i ] ; 4 uses
  call fastcc void @_ZN6icu_7812_GLOBAL__N_111MixedBlocks6extendItEEvPKT_iii(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef %i.agv, i32 noundef %i.act, i32 noundef %.0261378.i.i.i, i32 noundef %.1262.lcssa.i.i.i)
  br i1 %.0267.lcssa.i.i.i, label %bb.ep, label %bb.ew

bb.ep:                                            ; preds = %._crit_edge375.i.i.i
  %i.agw = load ptr, ptr %i.ada, align 8
  call fastcc void @_ZN6icu_7812_GLOBAL__N_111MixedBlocks6extendItEEvPKT_iii(ptr noundef nonnull align 8 dereferenceable(28) %4, ptr noundef %i.agw, i32 noundef %i.act, i32 noundef %.0261378.i.i.i, i32 noundef %.1262.lcssa.i.i.i)
  br label %bb.ew

.thread.i99.i.i:                                  ; preds = %bb.eh, %bb.eg
  %.5336.i.i.i = phi i32 [ %.4241382.i.i.i, %bb.eh ], [ 0, %bb.eg ]
  %i.agx = sext i32 %.0261378.i.i.i to i64        ; 22 uses
  %i.agy = load ptr, ptr %0, align 8
  %i.agz = getelementptr inbounds nuw [4 x i8], ptr %i.agy, i64 %indvars.iv430.i.i.i
  %i.aha = load i32, ptr %i.agz, align 4          ; 2 uses
  %i.ahb = lshr i32 %i.aha, 2
  %i.ahc = and i32 %i.ahb, 49152
  %i.ahd = trunc i32 %i.aha to i16
  %i.ahe = load ptr, ptr %i.ada, align 8
  %i.ahf = getelementptr [2 x i8], ptr %i.ahe, i64 %i.agx
  %i.ahg = getelementptr i8, ptr %i.ahf, i64 2
  store i16 %i.ahd, ptr %i.ahg, align 2
  %i.ahh = load ptr, ptr %0, align 8
  %i.ahi = getelementptr [4 x i8], ptr %i.ahh, i64 %indvars.iv430.i.i.i
  %i.ahj = getelementptr i8, ptr %i.ahi, i64 4
  %i.ahk = load i32, ptr %i.ahj, align 4          ; 2 uses
  %i.ahl = lshr i32 %i.ahk, 4
  %i.ahm = and i32 %i.ahl, 12288
  %i.ahn = or disjoint i32 %i.ahm, %i.ahc
  %i.aho = trunc i32 %i.ahk to i16
  %i.ahp = load ptr, ptr %i.ada, align 8
  %i.ahq = getelementptr [2 x i8], ptr %i.ahp, i64 %i.agx
  %i.ahr = getelementptr i8, ptr %i.ahq, i64 4
  store i16 %i.aho, ptr %i.ahr, align 2
  %i.ahs = load ptr, ptr %0, align 8
  %i.aht = getelementptr [4 x i8], ptr %i.ahs, i64 %indvars.iv430.i.i.i
  %i.ahu = getelementptr i8, ptr %i.aht, i64 8
  %i.ahv = load i32, ptr %i.ahu, align 4          ; 2 uses
  %i.ahw = lshr i32 %i.ahv, 6
  %i.ahx = and i32 %i.ahw, 3072
  %i.ahy = or disjoint i32 %i.ahn, %i.ahx
  %i.ahz = trunc i32 %i.ahv to i16
  %i.aia = load ptr, ptr %i.ada, align 8
  %i.aib = getelementptr [2 x i8], ptr %i.aia, i64 %i.agx
  %i.aic = getelementptr i8, ptr %i.aib, i64 6
  store i16 %i.ahz, ptr %i.aic, align 2
  %i.aid = load ptr, ptr %0, align 8
  %i.aie = getelementptr [4 x i8], ptr %i.aid, i64 %indvars.iv430.i.i.i
  %i.aif = getelementptr i8, ptr %i.aie, i64 12
  %i.aig = load i32, ptr %i.aif, align 4          ; 2 uses
  %i.aih = lshr i32 %i.aig, 8
  %i.aii = and i32 %i.aih, 768
  %i.aij = or disjoint i32 %i.ahy, %i.aii
  %i.aik = trunc i32 %i.aig to i16
  %i.ail = load ptr, ptr %i.ada, align 8
  %i.aim = getelementptr [2 x i8], ptr %i.ail, i64 %i.agx
  %i.ain = getelementptr i8, ptr %i.aim, i64 8
  store i16 %i.aik, ptr %i.ain, align 2
  %i.aio = load ptr, ptr %0, align 8
  %i.aip = getelementptr [4 x i8], ptr %i.aio, i64 %indvars.iv430.i.i.i
  %i.aiq = getelementptr i8, ptr %i.aip, i64 16
  %i.air = load i32, ptr %i.aiq, align 4          ; 2 uses
  %i.ais = lshr i32 %i.air, 10
  %i.ait = and i32 %i.ais, 192
  %i.aiu = or disjoint i32 %i.aij, %i.ait
  %i.aiv = trunc i32 %i.air to i16
  %i.aiw = load ptr, ptr %i.ada, align 8
  %i.aix = getelementptr [2 x i8], ptr %i.aiw, i64 %i.agx
  %i.aiy = getelementptr i8, ptr %i.aix, i64 10
  store i16 %i.aiv, ptr %i.aiy, align 2
  %i.aiz = load ptr, ptr %0, align 8
  %i.aja = getelementptr [4 x i8], ptr %i.aiz, i64 %indvars.iv430.i.i.i
  %i.ajb = getelementptr i8, ptr %i.aja, i64 20
  %i.ajc = load i32, ptr %i.ajb, align 4          ; 2 uses
  %i.ajd = lshr i32 %i.ajc, 12
  %i.aje = and i32 %i.ajd, 48
  %i.ajf = or disjoint i32 %i.aiu, %i.aje
  %i.ajg = trunc i32 %i.ajc to i16
  %i.ajh = load ptr, ptr %i.ada, align 8
  %i.aji = getelementptr [2 x i8], ptr %i.ajh, i64 %i.agx
  %i.ajj = getelementptr i8, ptr %i.aji, i64 12
  store i16 %i.ajg, ptr %i.ajj, align 2
  %i.ajk = load ptr, ptr %0, align 8
  %i.ajl = getelementptr [4 x i8], ptr %i.ajk, i64 %indvars.iv430.i.i.i
  %i.ajm = getelementptr i8, ptr %i.ajl, i64 24
  %i.ajn = load i32, ptr %i.ajm, align 4          ; 2 uses
  %i.ajo = lshr i32 %i.ajn, 14
  %i.ajp = and i32 %i.ajo, 12
  %i.ajq = or i32 %i.ajf, %i.ajp
  %i.ajr = trunc i32 %i.ajn to i16
  %i.ajs = load ptr, ptr %i.ada, align 8
  %i.ajt = getelementptr [2 x i8], ptr %i.ajs, i64 %i.agx
  %i.aju = getelementptr i8, ptr %i.ajt, i64 14
  store i16 %i.ajr, ptr %i.aju, align 2
  %i.ajv = load ptr, ptr %0, align 8
  %indvars.iv.next433.i.i.i = or disjoint i64 %indvars.iv430.i.i.i, 8 ; 8 uses
  %i.ajw = getelementptr inbounds nuw [4 x i8], ptr %i.ajv, i64 %indvars.iv430.i.i.i
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajw, i64 28
  %i.ajy = load i32, ptr %i.ajx, align 4          ; 2 uses
  %i.ajz = lshr i32 %i.ajy, 16
  %i.aka = and i32 %i.ajz, 3
  %i.akb = or i32 %i.ajq, %i.aka
  %i.akc = trunc i32 %i.ajy to i16
  %i.akd = load ptr, ptr %i.ada, align 8
  %indvars.iv.next435.i.i.i = add nsw i64 %i.agx, 9 ; 9 uses
  %i.ake = getelementptr [2 x i8], ptr %i.akd, i64 %i.agx
  %i.akf = getelementptr i8, ptr %i.ake, i64 16
  store i16 %i.akc, ptr %i.akf, align 2
  %i.akg = trunc nuw i32 %i.akb to i16
  %i.akh = load ptr, ptr %i.ada, align 8
  %i.aki = getelementptr inbounds [2 x i8], ptr %i.akh, i64 %i.agx
  store i16 %i.akg, ptr %i.aki, align 2
  %i.akj = load ptr, ptr %0, align 8
  %i.akk = getelementptr inbounds nuw [4 x i8], ptr %i.akj, i64 %indvars.iv.next433.i.i.i
  %i.akl = load i32, ptr %i.akk, align 4          ; 2 uses
  %i.akm = lshr i32 %i.akl, 2
  %i.akn = and i32 %i.akm, 49152
  %i.ako = trunc i32 %i.akl to i16
  %i.akp = load ptr, ptr %i.ada, align 8
  %i.akq = getelementptr [2 x i8], ptr %i.akp, i64 %indvars.iv.next435.i.i.i
  %i.akr = getelementptr i8, ptr %i.akq, i64 2
  store i16 %i.ako, ptr %i.akr, align 2
  %i.aks = load ptr, ptr %0, align 8
  %i.akt = getelementptr [4 x i8], ptr %i.aks, i64 %indvars.iv.next433.i.i.i
  %i.aku = getelementptr i8, ptr %i.akt, i64 4
  %i.akv = load i32, ptr %i.aku, align 4          ; 2 uses
  %i.akw = lshr i32 %i.akv, 4
  %i.akx = and i32 %i.akw, 12288
  %i.aky = or disjoint i32 %i.akx, %i.akn
  %i.akz = trunc i32 %i.akv to i16
  %i.ala = load ptr, ptr %i.ada, align 8
  %i.alb = getelementptr [2 x i8], ptr %i.ala, i64 %indvars.iv.next435.i.i.i
  %i.alc = getelementptr i8, ptr %i.alb, i64 4
  store i16 %i.akz, ptr %i.alc, align 2
  %i.ald = load ptr, ptr %0, align 8
  %i.ale = getelementptr [4 x i8], ptr %i.ald, i64 %indvars.iv.next433.i.i.i
  %i.alf = getelementptr i8, ptr %i.ale, i64 8
  %i.alg = load i32, ptr %i.alf, align 4          ; 2 uses
  %i.alh = lshr i32 %i.alg, 6
  %i.ali = and i32 %i.alh, 3072
  %i.alj = or disjoint i32 %i.aky, %i.ali
  %i.alk = trunc i32 %i.alg to i16
  %i.all = load ptr, ptr %i.ada, align 8
  %i.alm = getelementptr [2 x i8], ptr %i.all, i64 %indvars.iv.next435.i.i.i
  %i.aln = getelementptr i8, ptr %i.alm, i64 6
  store i16 %i.alk, ptr %i.aln, align 2
  %i.alo = load ptr, ptr %0, align 8
  %i.alp = getelementptr [4 x i8], ptr %i.alo, i64 %indvars.iv.next433.i.i.i
  %i.alq = getelementptr i8, ptr %i.alp, i64 12
  %i.alr = load i32, ptr %i.alq, align 4          ; 2 uses
  %i.als = lshr i32 %i.alr, 8
  %i.alt = and i32 %i.als, 768
  %i.alu = or disjoint i32 %i.alj, %i.alt
  %i.alv = trunc i32 %i.alr to i16
  %i.alw = load ptr, ptr %i.ada, align 8
  %i.alx = getelementptr [2 x i8], ptr %i.alw, i64 %indvars.iv.next435.i.i.i
  %i.aly = getelementptr i8, ptr %i.alx, i64 8
  store i16 %i.alv, ptr %i.aly, align 2
  %i.alz = load ptr, ptr %0, align 8
  %i.ama = getelementptr [4 x i8], ptr %i.alz, i64 %indvars.iv.next433.i.i.i
  %i.amb = getelementptr i8, ptr %i.ama, i64 16
  %i.amc = load i32, ptr %i.amb, align 4          ; 2 uses
  %i.amd = lshr i32 %i.amc, 10
  %i.ame = and i32 %i.amd, 192
  %i.amf = or disjoint i32 %i.alu, %i.ame
  %i.amg = trunc i32 %i.amc to i16
  %i.amh = load ptr, ptr %i.ada, align 8
  %i.ami = getelementptr [2 x i8], ptr %i.amh, i64 %indvars.iv.next435.i.i.i
  %i.amj = getelementptr i8, ptr %i.ami, i64 10
  store i16 %i.amg, ptr %i.amj, align 2
  %i.amk = load ptr, ptr %0, align 8
  %i.aml = getelementptr [4 x i8], ptr %i.amk, i64 %indvars.iv.next433.i.i.i
  %i.amm = getelementptr i8, ptr %i.aml, i64 20
  %i.amn = load i32, ptr %i.amm, align 4          ; 2 uses
  %i.amo = lshr i32 %i.amn, 12
  %i.amp = and i32 %i.amo, 48
  %i.amq = or disjoint i32 %i.amf, %i.amp
  %i.amr = trunc i32 %i.amn to i16
  %i.ams = load ptr, ptr %i.ada, align 8
  %i.amt = getelementptr [2 x i8], ptr %i.ams, i64 %indvars.iv.next435.i.i.i
  %i.amu = getelementptr i8, ptr %i.amt, i64 12
  store i16 %i.amr, ptr %i.amu, align 2
  %i.amv = load ptr, ptr %0, align 8
  %i.amw = getelementptr [4 x i8], ptr %i.amv, i64 %indvars.iv.next433.i.i.i
  %i.amx = getelementptr i8, ptr %i.amw, i64 24
  %i.amy = load i32, ptr %i.amx, align 4          ; 2 uses
  %i.amz = lshr i32 %i.amy, 14
  %i.ana = and i32 %i.amz, 12
  %i.anb = or i32 %i.amq, %i.ana
  %i.anc = trunc i32 %i.amy to i16
  %i.and = load ptr, ptr %i.ada, align 8
end_hunk_0
begin_hunk_1_@umutablecptrie_buildImmutable_78:bb.a
  %i.apf = or disjoint i32 %i.aou, %i.ape
  %i.apg = trunc i32 %i.apc to i16
  %i.aph = load ptr, ptr %i.ada, align 8
  %i.api = getelementptr [2 x i8], ptr %i.aph, i64 %indvars.iv.next435.1.i.i.i
  %i.apj = getelementptr i8, ptr %i.api, i64 8
  store i16 %i.apg, ptr %i.apj, align 2
  %i.apk = load ptr, ptr %0, align 8
  %i.apl = getelementptr [4 x i8], ptr %i.apk, i64 %indvars.iv.next433.1.i.i.i
  %i.apm = getelementptr i8, ptr %i.apl, i64 16
  %i.apn = load i32, ptr %i.apm, align 4          ; 2 uses
  %i.apo = lshr i32 %i.apn, 10
  %i.app = and i32 %i.apo, 192
  %i.apq = or disjoint i32 %i.apf, %i.app
  %i.apr = trunc i32 %i.apn to i16
  %i.aps = load ptr, ptr %i.ada, align 8
  %i.apt = getelementptr [2 x i8], ptr %i.aps, i64 %indvars.iv.next435.1.i.i.i
  %i.apu = getelementptr i8, ptr %i.apt, i64 10
  store i16 %i.apr, ptr %i.apu, align 2
  %i.apv = load ptr, ptr %0, align 8
  %i.apw = getelementptr [4 x i8], ptr %i.apv, i64 %indvars.iv.next433.1.i.i.i
  %i.apx = getelementptr i8, ptr %i.apw, i64 20
  %i.apy = load i32, ptr %i.apx, align 4          ; 2 uses
  %i.apz = lshr i32 %i.apy, 12
  %i.aqa = and i32 %i.apz, 48
  %i.aqb = or disjoint i32 %i.apq, %i.aqa
  %i.aqc = trunc i32 %i.apy to i16
  %i.aqd = load ptr, ptr %i.ada, align 8
  %i.aqe = getelementptr [2 x i8], ptr %i.aqd, i64 %indvars.iv.next435.1.i.i.i
  %i.aqf = getelementptr i8, ptr %i.aqe, i64 12
  store i16 %i.aqc, ptr %i.aqf, align 2
  %i.aqg = load ptr, ptr %0, align 8
  %i.aqh = getelementptr [4 x i8], ptr %i.aqg, i64 %indvars.iv.next433.1.i.i.i
  %i.aqi = getelementptr i8, ptr %i.aqh, i64 24
  %i.aqj = load i32, ptr %i.aqi, align 4          ; 2 uses
  %i.aqk = lshr i32 %i.aqj, 14
  %i.aql = and i32 %i.aqk, 12
  %i.aqm = or i32 %i.aqb, %i.aql
  %i.aqn = trunc i32 %i.aqj to i16
  %i.aqo = load ptr, ptr %i.ada, align 8
  %i.aqp = getelementptr [2 x i8], ptr %i.aqo, i64 %indvars.iv.next435.1.i.i.i
  %i.aqq = getelementptr i8, ptr %i.aqp, i64 14
  store i16 %i.aqn, ptr %i.aqq, align 2
  %i.aqr = load ptr, ptr %0, align 8
  %indvars.iv.next433.2.i.i.i = or disjoint i64 %indvars.iv430.i.i.i, 24 ; 8 uses
  %i.aqs = getelementptr inbounds nuw [4 x i8], ptr %i.aqr, i64 %indvars.iv.next433.1.i.i.i
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqs, i64 28
  %i.aqu = load i32, ptr %i.aqt, align 4          ; 2 uses
  %i.aqv = lshr i32 %i.aqu, 16
  %i.aqw = and i32 %i.aqv, 3
  %i.aqx = or i32 %i.aqm, %i.aqw
  %i.aqy = trunc i32 %i.aqu to i16
  %i.aqz = load ptr, ptr %i.ada, align 8
  %indvars.iv.next435.2.i.i.i = add nsw i64 %i.agx, 27 ; 9 uses
  %i.ara = getelementptr [2 x i8], ptr %i.aqz, i64 %indvars.iv.next435.1.i.i.i
  %i.arb = getelementptr i8, ptr %i.ara, i64 16
  store i16 %i.aqy, ptr %i.arb, align 2
  %i.arc = trunc nuw i32 %i.aqx to i16
  %i.ard = load ptr, ptr %i.ada, align 8
  %i.are = getelementptr inbounds [2 x i8], ptr %i.ard, i64 %indvars.iv.next435.1.i.i.i
  store i16 %i.arc, ptr %i.are, align 2
  %i.arf = load ptr, ptr %0, align 8
  %i.arg = getelementptr inbounds nuw [4 x i8], ptr %i.arf, i64 %indvars.iv.next433.2.i.i.i
  %i.arh = load i32, ptr %i.arg, align 4          ; 2 uses
  %i.ari = lshr i32 %i.arh, 2
  %i.arj = and i32 %i.ari, 49152
  %i.ark = trunc i32 %i.arh to i16
  %i.arl = load ptr, ptr %i.ada, align 8
  %i.arm = getelementptr [2 x i8], ptr %i.arl, i64 %indvars.iv.next435.2.i.i.i
  %i.arn = getelementptr i8, ptr %i.arm, i64 2
  store i16 %i.ark, ptr %i.arn, align 2
  %i.aro = load ptr, ptr %0, align 8
  %i.arp = getelementptr [4 x i8], ptr %i.aro, i64 %indvars.iv.next433.2.i.i.i
  %i.arq = getelementptr i8, ptr %i.arp, i64 4
  %i.arr = load i32, ptr %i.arq, align 4          ; 2 uses
  %i.ars = lshr i32 %i.arr, 4
  %i.art = and i32 %i.ars, 12288
  %i.aru = or disjoint i32 %i.art, %i.arj
  %i.arv = trunc i32 %i.arr to i16
  %i.arw = load ptr, ptr %i.ada, align 8
  %i.arx = getelementptr [2 x i8], ptr %i.arw, i64 %indvars.iv.next435.2.i.i.i
  %i.ary = getelementptr i8, ptr %i.arx, i64 4
  store i16 %i.arv, ptr %i.ary, align 2
  %i.arz = load ptr, ptr %0, align 8
  %i.asa = getelementptr [4 x i8], ptr %i.arz, i64 %indvars.iv.next433.2.i.i.i
  %i.asb = getelementptr i8, ptr %i.asa, i64 8
  %i.asc = load i32, ptr %i.asb, align 4          ; 2 uses
  %i.asd = lshr i32 %i.asc, 6
  %i.ase = and i32 %i.asd, 3072
  %i.asf = or disjoint i32 %i.aru, %i.ase
  %i.asg = trunc i32 %i.asc to i16
  %i.ash = load ptr, ptr %i.ada, align 8
  %i.asi = getelementptr [2 x i8], ptr %i.ash, i64 %indvars.iv.next435.2.i.i.i
  %i.asj = getelementptr i8, ptr %i.asi, i64 6
  store i16 %i.asg, ptr %i.asj, align 2
  %i.ask = load ptr, ptr %0, align 8
  %i.asl = getelementptr [4 x i8], ptr %i.ask, i64 %indvars.iv.next433.2.i.i.i
  %i.asm = getelementptr i8, ptr %i.asl, i64 12
  %i.asn = load i32, ptr %i.asm, align 4          ; 2 uses
  %i.aso = lshr i32 %i.asn, 8
  %i.asp = and i32 %i.aso, 768
  %i.asq = or disjoint i32 %i.asf, %i.asp
  %i.asr = trunc i32 %i.asn to i16
  %i.ass = load ptr, ptr %i.ada, align 8
  %i.ast = getelementptr [2 x i8], ptr %i.ass, i64 %indvars.iv.next435.2.i.i.i
  %i.asu = getelementptr i8, ptr %i.ast, i64 8
  store i16 %i.asr, ptr %i.asu, align 2
  %i.asv = load ptr, ptr %0, align 8
  %i.asw = getelementptr [4 x i8], ptr %i.asv, i64 %indvars.iv.next433.2.i.i.i
  %i.asx = getelementptr i8, ptr %i.asw, i64 16
  %i.asy = load i32, ptr %i.asx, align 4          ; 2 uses
  %i.asz = lshr i32 %i.asy, 10
  %i.ata = and i32 %i.asz, 192
  %i.atb = or disjoint i32 %i.asq, %i.ata
  %i.atc = trunc i32 %i.asy to i16
  %i.atd = load ptr, ptr %i.ada, align 8
  %i.ate = getelementptr [2 x i8], ptr %i.atd, i64 %indvars.iv.next435.2.i.i.i
  %i.atf = getelementptr i8, ptr %i.ate, i64 10
  store i16 %i.atc, ptr %i.atf, align 2
  %i.atg = load ptr, ptr %0, align 8
  %i.ath = getelementptr [4 x i8], ptr %i.atg, i64 %indvars.iv.next433.2.i.i.i
  %i.ati = getelementptr i8, ptr %i.ath, i64 20
  %i.atj = load i32, ptr %i.ati, align 4          ; 2 uses
  %i.atk = lshr i32 %i.atj, 12
  %i.atl = and i32 %i.atk, 48
  %i.atm = or disjoint i32 %i.atb, %i.atl
  %i.atn = trunc i32 %i.atj to i16
  %i.ato = load ptr, ptr %i.ada, align 8
  %i.atp = getelementptr [2 x i8], ptr %i.ato, i64 %indvars.iv.next435.2.i.i.i
  %i.atq = getelementptr i8, ptr %i.atp, i64 12
  store i16 %i.atn, ptr %i.atq, align 2
  %i.atr = load ptr, ptr %0, align 8
  %i.ats = getelementptr [4 x i8], ptr %i.atr, i64 %indvars.iv.next433.2.i.i.i
  %i.att = getelementptr i8, ptr %i.ats, i64 24
  %i.atu = load i32, ptr %i.att, align 4          ; 2 uses
  %i.atv = lshr i32 %i.atu, 14
  %i.atw = and i32 %i.atv, 12
  %i.atx = or i32 %i.atm, %i.atw
  %i.aty = trunc i32 %i.atu to i16
  %i.atz = load ptr, ptr %i.ada, align 8
  %i.aua = getelementptr [2 x i8], ptr %i.atz, i64 %indvars.iv.next435.2.i.i.i
  %i.aub = getelementptr i8, ptr %i.aua, i64 14
  store i16 %i.aty, ptr %i.aub, align 2
  %i.auc = load ptr, ptr %0, align 8
  %i.aud = getelementptr inbounds nuw [4 x i8], ptr %i.auc, i64 %indvars.iv.next433.2.i.i.i
  %i.aue = getelementptr inbounds nuw i8, ptr %i.aud, i64 28
  %i.auf = load i32, ptr %i.aue, align 4          ; 2 uses
  %i.aug = lshr i32 %i.auf, 16
  %i.auh = and i32 %i.aug, 3
  %i.aui = or i32 %i.atx, %i.auh
  %i.auj = trunc i32 %i.auf to i16
  %i.auk = load ptr, ptr %i.ada, align 8
  %i.aul = getelementptr [2 x i8], ptr %i.auk, i64 %indvars.iv.next435.2.i.i.i
  %i.aum = getelementptr i8, ptr %i.aul, i64 16
  store i16 %i.auj, ptr %i.aum, align 2
  %i.aun = trunc nuw i32 %i.aui to i16
  %i.auo = load ptr, ptr %i.ada, align 8
  %i.aup = getelementptr inbounds [2 x i8], ptr %i.auo, i64 %indvars.iv.next435.2.i.i.i
  store i16 %i.aun, ptr %i.aup, align 2
  %i.auq = load ptr, ptr %i.ada, align 8          ; 7 uses
  %i.aur = call fastcc noundef i32 @_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockIttEEiPKT_PKT0_i(ptr noundef nonnull align 8 dereferenceable(28) %4, ptr noundef %i.auq, ptr noundef %i.auq, i32 noundef %.0261378.i.i.i) ; 2 uses
  %i.aus = icmp sgt i32 %i.aur, -1
  br i1 %i.aus, label %bb.ev, label %bb.eq

bb.eq:                                            ; preds = %.thread.i99.i.i
  %i.aut = icmp eq i32 %.0261378.i.i.i, %i.act
  br i1 %i.aut, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.thread.i.i.i, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.auu = getelementptr inbounds [2 x i8], ptr %i.auq, i64 %i.agx ; 2 uses
  br label %.lr.ph.i.i100.i.i

_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i311.i.i.i
  %i.auv = icmp samesign ugt i64 %indvars.iv.in.i.i101.i.i, 2
  br i1 %i.auv, label %.lr.ph.i.i100.i.i.1, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.thread.i.i.i

.lr.ph.i.i100.i.i.1:                              ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i
  %indvars.iv.i310.i.i.i.1 = add nsw i64 %indvars.iv.in.i.i101.i.i, -2 ; 3 uses
  %i.auw = sub nsw i64 %i.agx, %indvars.iv.i310.i.i.i.1
  %i.aux = getelementptr inbounds [2 x i8], ptr %i.auq, i64 %i.auw
  %i.auy = trunc nuw nsw i64 %indvars.iv.i310.i.i.i.1 to i32 ; 2 uses
  br label %.lr.ph.i.i311.i.i.i.1

.lr.ph.i.i311.i.i.i.1:                            ; preds = %bb.es, %.lr.ph.i.i100.i.i.1
  %.010.i.i312.i.i.i.1 = phi i32 [ %i.ave, %bb.es ], [ %i.auy, %.lr.ph.i.i100.i.i.1 ] ; 2 uses
  %.069.i.i313.i.i.i.1 = phi ptr [ %i.avd, %bb.es ], [ %i.auu, %.lr.ph.i.i100.i.i.1 ] ; 2 uses
  %.078.i.i314.i.i.i.1 = phi ptr [ %i.avc, %bb.es ], [ %i.aux, %.lr.ph.i.i100.i.i.1 ] ; 2 uses
  %i.auz = load i16, ptr %.078.i.i314.i.i.i.1, align 2
  %i.ava = load i16, ptr %.069.i.i313.i.i.i.1, align 2
  %i.avb = icmp eq i16 %i.auz, %i.ava
  br i1 %i.avb, label %bb.es, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i.1

_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i.1: ; preds = %.lr.ph.i.i311.i.i.i.1
  %indvars.iv.next438.i.i.i.1 = add nsw i64 %indvars.iv437.i.i.i, -2
  br label %.lr.ph.i.i100.i.i

bb.es:                                            ; preds = %.lr.ph.i.i311.i.i.i.1
  %i.avc = getelementptr inbounds nuw i8, ptr %.078.i.i314.i.i.i.1, i64 2
  %i.avd = getelementptr inbounds nuw i8, ptr %.069.i.i313.i.i.i.1, i64 2
  %i.ave = add nsw i32 %.010.i.i312.i.i.i.1, -1
  %i.avf = icmp sgt i32 %.010.i.i312.i.i.i.1, 1
  br i1 %i.avf, label %.lr.ph.i.i311.i.i.i.1, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i.loopexit, !llvm.loop !59

.lr.ph.i.i100.i.i:                                ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i.1, %bb.er
  %indvars.iv437.i.i.i = phi i64 [ 35, %bb.er ], [ %indvars.iv.next438.i.i.i.1, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i.1 ] ; 3 uses
  %indvars.iv.in.i.i101.i.i = phi i64 [ 36, %bb.er ], [ %indvars.iv.i310.i.i.i.1, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i.1 ] ; 4 uses
  %indvars.iv.i310.i.i.i = add nsw i64 %indvars.iv.in.i.i101.i.i, -1 ; 3 uses
  %i.avg = sub nsw i64 %i.agx, %indvars.iv.i310.i.i.i
  %i.avh = getelementptr inbounds [2 x i8], ptr %i.auq, i64 %i.avg
  %i.avi = trunc nuw nsw i64 %indvars.iv.i310.i.i.i to i32 ; 2 uses
  br label %.lr.ph.i.i311.i.i.i

.lr.ph.i.i311.i.i.i:                              ; preds = %bb.et, %.lr.ph.i.i100.i.i
  %.010.i.i312.i.i.i = phi i32 [ %i.avo, %bb.et ], [ %i.avi, %.lr.ph.i.i100.i.i ] ; 2 uses
  %.069.i.i313.i.i.i = phi ptr [ %i.avn, %bb.et ], [ %i.auu, %.lr.ph.i.i100.i.i ] ; 2 uses
  %.078.i.i314.i.i.i = phi ptr [ %i.avm, %bb.et ], [ %i.avh, %.lr.ph.i.i100.i.i ] ; 2 uses
  %i.avj = load i16, ptr %.078.i.i314.i.i.i, align 2
  %i.avk = load i16, ptr %.069.i.i313.i.i.i, align 2
  %i.avl = icmp eq i16 %i.avj, %i.avk
  br i1 %i.avl, label %bb.et, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i

bb.et:                                            ; preds = %.lr.ph.i.i311.i.i.i
  %i.avm = getelementptr inbounds nuw i8, ptr %.078.i.i314.i.i.i, i64 2
  %i.avn = getelementptr inbounds nuw i8, ptr %.069.i.i313.i.i.i, i64 2
  %i.avo = add nsw i32 %.010.i.i312.i.i.i, -1
  %i.avp = icmp sgt i32 %.010.i.i312.i.i.i, 1
  br i1 %i.avp, label %.lr.ph.i.i311.i.i.i, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i, !llvm.loop !59

_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i.loopexit: ; preds = %bb.es
  %indvars.iv.next438.i.i.i.le = add nsw i64 %indvars.iv437.i.i.i, -1
  br label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i

_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i: ; preds = %bb.et, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i.loopexit
  %indvars.iv437.i.i.i.lcssa298 = phi i64 [ %indvars.iv.next438.i.i.i.le, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i.loopexit ], [ %indvars.iv437.i.i.i, %bb.et ] ; 4 uses
  %indvars.iv.in.i.i101.i.i.lcssa297 = phi i64 [ %indvars.iv.i310.i.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i.loopexit ], [ %indvars.iv.in.i.i101.i.i, %bb.et ] ; 2 uses
  %.lcssa296 = phi i32 [ %i.auy, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i.loopexit ], [ %i.avi, %bb.et ]
  %i.avq = sub nsw i32 %.0261378.i.i.i, %.lcssa296 ; 3 uses
  %i.avr = icmp sgt i64 %indvars.iv.in.i.i101.i.i.lcssa297, 1
  br i1 %i.avr, label %.preheader349.i.i.i, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.thread.i.i.i

.preheader349.i.i.i:                              ; preds = %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i
  %i.avs = icmp samesign ult i64 %indvars.iv.in.i.i101.i.i.lcssa297, 37
  br i1 %i.avs, label %.lr.ph.i102.i.i.preheader, label %.loopexit350.i.i.i

.lr.ph.i102.i.i.preheader:                        ; preds = %.preheader349.i.i.i
  %i.avt = sub i64 0, %indvars.iv437.i.i.i.lcssa298
  %xtraiter386 = and i64 %i.avt, 3                ; 2 uses
  %lcmp.mod387.not = icmp eq i64 %xtraiter386, 0
  br i1 %lcmp.mod387.not, label %.lr.ph.i102.i.i.prol.loopexit, label %.lr.ph.i102.i.i.prol

.lr.ph.i102.i.i.prol:                             ; preds = %.lr.ph.i102.i.i.preheader, %.lr.ph.i102.i.i.prol
  %indvars.iv442.i.i.i.prol = phi i64 [ %indvars.iv.next443.i.i.i.prol, %.lr.ph.i102.i.i.prol ], [ %i.agx, %.lr.ph.i102.i.i.preheader ] ; 2 uses
  %indvars.iv440.i.i.i.prol = phi i64 [ %indvars.iv.next441.i.i.i.prol, %.lr.ph.i102.i.i.prol ], [ %indvars.iv437.i.i.i.lcssa298, %.lr.ph.i102.i.i.preheader ] ; 2 uses
  %prol.iter388 = phi i64 [ %prol.iter388.next, %.lr.ph.i102.i.i.prol ], [ 0, %.lr.ph.i102.i.i.preheader ]
  %i.avu = load ptr, ptr %i.ada, align 8          ; 2 uses
  %indvars.iv.next441.i.i.i.prol = add nuw nsw i64 %indvars.iv440.i.i.i.prol, 1 ; 2 uses
  %i.avv = getelementptr [2 x i8], ptr %i.avu, i64 %indvars.iv440.i.i.i.prol
  %i.avw = getelementptr [2 x i8], ptr %i.avv, i64 %i.agx
  %i.avx = load i16, ptr %i.avw, align 2
  %indvars.iv.next443.i.i.i.prol = add nsw i64 %indvars.iv442.i.i.i.prol, 1 ; 3 uses
  %i.avy = getelementptr inbounds [2 x i8], ptr %i.avu, i64 %indvars.iv442.i.i.i.prol
  store i16 %i.avx, ptr %i.avy, align 2
  %prol.iter388.next = add i64 %prol.iter388, 1   ; 2 uses
  %prol.iter388.cmp.not = icmp eq i64 %prol.iter388.next, %xtraiter386
  br i1 %prol.iter388.cmp.not, label %.lr.ph.i102.i.i.prol.loopexit, label %.lr.ph.i102.i.i.prol, !llvm.loop !60

.lr.ph.i102.i.i.prol.loopexit:                    ; preds = %.lr.ph.i102.i.i.prol, %.lr.ph.i102.i.i.preheader
  %indvars.iv.next443.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i102.i.i.preheader ], [ %indvars.iv.next443.i.i.i.prol, %.lr.ph.i102.i.i.prol ]
  %indvars.iv442.i.i.i.unr = phi i64 [ %i.agx, %.lr.ph.i102.i.i.preheader ], [ %indvars.iv.next443.i.i.i.prol, %.lr.ph.i102.i.i.prol ]
  %indvars.iv440.i.i.i.unr = phi i64 [ %indvars.iv437.i.i.i.lcssa298, %.lr.ph.i102.i.i.preheader ], [ %indvars.iv.next441.i.i.i.prol, %.lr.ph.i102.i.i.prol ]
  %i.avz = add i64 %indvars.iv437.i.i.i.lcssa298, -33
  %i.awa = icmp ult i64 %i.avz, 3
  br i1 %i.awa, label %.loopexit350.loopexit.i.i.i, label %.lr.ph.i102.i.i

.lr.ph.i102.i.i:                                  ; preds = %.lr.ph.i102.i.i.prol.loopexit, %.lr.ph.i102.i.i
  %indvars.iv442.i.i.i = phi i64 [ %indvars.iv.next443.i.i.i.3, %.lr.ph.i102.i.i ], [ %indvars.iv442.i.i.i.unr, %.lr.ph.i102.i.i.prol.loopexit ] ; 5 uses
  %indvars.iv440.i.i.i = phi i64 [ %indvars.iv.next441.i.i.i.3, %.lr.ph.i102.i.i ], [ %indvars.iv440.i.i.i.unr, %.lr.ph.i102.i.i.prol.loopexit ] ; 5 uses
  %i.awb = load ptr, ptr %i.ada, align 8          ; 2 uses
  %i.awc = getelementptr [2 x i8], ptr %i.awb, i64 %indvars.iv440.i.i.i
  %i.awd = getelementptr [2 x i8], ptr %i.awc, i64 %i.agx
  %i.awe = load i16, ptr %i.awd, align 2
  %i.awf = getelementptr inbounds [2 x i8], ptr %i.awb, i64 %indvars.iv442.i.i.i
  store i16 %i.awe, ptr %i.awf, align 2
  %i.awg = load ptr, ptr %i.ada, align 8          ; 2 uses
  %i.awh = getelementptr [2 x i8], ptr %i.awg, i64 %indvars.iv440.i.i.i
  %i.awi = getelementptr i8, ptr %i.awh, i64 2
  %i.awj = getelementptr [2 x i8], ptr %i.awi, i64 %i.agx
  %i.awk = load i16, ptr %i.awj, align 2
  %i.awl = getelementptr [2 x i8], ptr %i.awg, i64 %indvars.iv442.i.i.i
  %i.awm = getelementptr i8, ptr %i.awl, i64 2
  store i16 %i.awk, ptr %i.awm, align 2
  %i.awn = load ptr, ptr %i.ada, align 8          ; 2 uses
  %i.awo = getelementptr [2 x i8], ptr %i.awn, i64 %indvars.iv440.i.i.i
  %i.awp = getelementptr i8, ptr %i.awo, i64 4
  %i.awq = getelementptr [2 x i8], ptr %i.awp, i64 %i.agx
  %i.awr = load i16, ptr %i.awq, align 2
  %i.aws = getelementptr [2 x i8], ptr %i.awn, i64 %indvars.iv442.i.i.i
  %i.awt = getelementptr i8, ptr %i.aws, i64 4
  store i16 %i.awr, ptr %i.awt, align 2
  %i.awu = load ptr, ptr %i.ada, align 8          ; 2 uses
  %indvars.iv.next441.i.i.i.3 = add nuw nsw i64 %indvars.iv440.i.i.i, 4 ; 2 uses
  %i.awv = getelementptr [2 x i8], ptr %i.awu, i64 %indvars.iv440.i.i.i
  %i.aww = getelementptr i8, ptr %i.awv, i64 6
  %i.awx = getelementptr [2 x i8], ptr %i.aww, i64 %i.agx
  %i.awy = load i16, ptr %i.awx, align 2
  %indvars.iv.next443.i.i.i.3 = add nsw i64 %indvars.iv442.i.i.i, 4 ; 2 uses
  %i.awz = getelementptr [2 x i8], ptr %i.awu, i64 %indvars.iv442.i.i.i
  %i.axa = getelementptr i8, ptr %i.awz, i64 6
  store i16 %i.awy, ptr %i.axa, align 2
  %exitcond447.not.i.i.i.3 = icmp eq i64 %indvars.iv.next441.i.i.i.3, 36
  br i1 %exitcond447.not.i.i.i.3, label %.loopexit350.loopexit.i.i.i, label %.lr.ph.i102.i.i, !llvm.loop !61

_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.thread.i.i.i: ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i, %bb.eq
  %i.axb = phi i32 [ %i.avq, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i ], [ %i.act, %bb.eq ], [ %.0261378.i.i.i, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i ]
  %i.axc = add nsw i32 %.0261378.i.i.i, 36
  br label %.loopexit350.i.i.i

.loopexit350.loopexit.i.i.i:                      ; preds = %.lr.ph.i102.i.i, %.lr.ph.i102.i.i.prol.loopexit
  %indvars.iv.next443.i.i.i.lcssa = phi i64 [ %indvars.iv.next443.i.i.i.lcssa.unr, %.lr.ph.i102.i.i.prol.loopexit ], [ %indvars.iv.next443.i.i.i.3, %.lr.ph.i102.i.i ]
  %i.axd = trunc nsw i64 %indvars.iv.next443.i.i.i.lcssa to i32
  %.pre.i.i.i = load ptr, ptr %i.ada, align 8
  br label %.loopexit350.i.i.i

.loopexit350.i.i.i:                               ; preds = %.loopexit350.loopexit.i.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.thread.i.i.i, %.preheader349.i.i.i
  %i.axe = phi ptr [ %i.auq, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.thread.i.i.i ], [ %i.auq, %.preheader349.i.i.i ], [ %.pre.i.i.i, %.loopexit350.loopexit.i.i.i ]
  %i.axf = phi i32 [ %i.axb, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.thread.i.i.i ], [ %i.avq, %.preheader349.i.i.i ], [ %i.avq, %.loopexit350.loopexit.i.i.i ] ; 2 uses
  %.4265.i.i.i = phi i32 [ %i.axc, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.thread.i.i.i ], [ %.0261378.i.i.i, %.preheader349.i.i.i ], [ %i.axd, %.loopexit350.loopexit.i.i.i ] ; 4 uses
  call fastcc void @_ZN6icu_7812_GLOBAL__N_111MixedBlocks6extendItEEvPKT_iii(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef %i.axe, i32 noundef %i.act, i32 noundef %.0261378.i.i.i, i32 noundef %.4265.i.i.i)
  br i1 %.0267.lcssa.i.i.i, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %.loopexit350.i.i.i
  %i.axg = load ptr, ptr %i.ada, align 8
  call fastcc void @_ZN6icu_7812_GLOBAL__N_111MixedBlocks6extendItEEvPKT_iii(ptr noundef nonnull align 8 dereferenceable(28) %4, ptr noundef %i.axg, i32 noundef %i.act, i32 noundef %.0261378.i.i.i, i32 noundef %.4265.i.i.i)
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %.loopexit350.i.i.i, %.thread.i99.i.i
  %.5266.i.i.i = phi i32 [ %.0261378.i.i.i, %.thread.i99.i.i ], [ %.4265.i.i.i, %bb.eu ], [ %.4265.i.i.i, %.loopexit350.i.i.i ]
  %.1258.in.i.i.i = phi i32 [ %i.aur, %.thread.i99.i.i ], [ %i.axf, %bb.eu ], [ %i.axf, %.loopexit350.i.i.i ]
  %.1258.i.i.i = or i32 %.1258.in.i.i.i, 32768
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.ep, %._crit_edge375.i.i.i, %.thread337.i.i.i, %bb.ei, %bb.eh
  %.5335.i.i.i = phi i32 [ %.5340.i.i.i, %._crit_edge375.i.i.i ], [ %.4241382.i.i.i, %bb.ei ], [ %.5336.i.i.i, %bb.ev ], [ %.5340.i.i.i, %.thread337.i.i.i ], [ %.5340.i.i.i, %bb.ep ], [ %.4241382.i.i.i, %bb.eh ] ; 2 uses
  %.6.i98.i.i = phi i32 [ %.1262.lcssa.i.i.i, %._crit_edge375.i.i.i ], [ %.0261378.i.i.i, %bb.ei ], [ %.5266.i.i.i, %bb.ev ], [ %.0261378.i.i.i, %.thread337.i.i.i ], [ %.1262.lcssa.i.i.i, %bb.ep ], [ %.0261378.i.i.i, %bb.eh ] ; 2 uses
  %.2259.i.i.i = phi i32 [ %i.agu, %._crit_edge375.i.i.i ], [ %i.afc, %bb.ei ], [ %.1258.i.i.i, %bb.ev ], [ %i.afg, %.thread337.i.i.i ], [ %i.agu, %bb.ep ], [ %i.aet, %bb.eh ] ; 3 uses
  %i.axh = load i32, ptr %i.ym, align 4           ; 2 uses
  %i.axi = icmp slt i32 %i.axh, 0
  %i.axj = icmp sgt i32 %.5335.i.i.i, -1
  %or.cond3.i.i.i = select i1 %i.axi, i1 %i.axj, i1 false
  br i1 %or.cond3.i.i.i, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  store i32 %.2259.i.i.i, ptr %i.ym, align 4
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  %i.axk = phi i32 [ %.2259.i.i.i, %bb.ex ], [ %i.axh, %bb.ew ] ; 2 uses
  %i.axl = trunc i32 %.2259.i.i.i to i16
  %indvars.iv.next457.i.i.i = add nuw nsw i64 %indvars.iv456.i.i.i, 1 ; 2 uses
  %i.axm = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv456.i.i.i
  store i16 %i.axl, ptr %i.axm, align 2
  %indvars.iv.next431.i.i.i = add nuw nsw i64 %indvars.iv430.i.i.i, 32 ; 2 uses
  %i.axn = icmp samesign ult i64 %indvars.iv.next431.i.i.i, %i.aep
  br i1 %i.axn, label %bb.ef, label %._crit_edge385.loopexit.i.i.i, !llvm.loop !62

bb.ez:                                            ; preds = %._crit_edge385.i.i.i
  store i32 32767, ptr %i.ym, align 4
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %._crit_edge385.i.i.i
  %i.axo = icmp sgt i32 %.0261.lcssa.i.i.i, 32798
  br i1 %i.axo, label %bb.fb, label %.preheader.i89.i.i

.preheader.i89.i.i:                               ; preds = %bb.fa
  %i.axp = icmp sgt i32 %.0270.lcssa.i.i.i, 0
  br i1 %i.axp, label %.lr.ph398.i.i.i, label %.loopexit.i.i.i

.lr.ph398.i.i.i:                                  ; preds = %.preheader.i89.i.i
  %i.axq = sext i32 %i.act to i64
  %i.axr = zext nneg i32 %i.yi to i64
  br label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  store i32 8, ptr %3, align 4
  br label %.loopexit.i.i.i

bb.fc:                                            ; preds = %bb.fi, %.lr.ph398.i.i.i
  %indvars.iv468.i.i.i = phi i64 [ %i.axr, %.lr.ph398.i.i.i ], [ %indvars.iv.next469.i.i.i, %bb.fi ] ; 2 uses
  %.0233396.i.i.i = phi i32 [ 0, %.lr.ph398.i.i.i ], [ %i.bak, %bb.fi ] ; 6 uses
  %.0235394.i.i.i = phi i32 [ 32, %.lr.ph398.i.i.i ], [ %.1236346.i.i.i, %bb.fi ] ; 2 uses
  %.7393.i.i.i = phi i32 [ %.0261.lcssa.i.i.i, %.lr.ph398.i.i.i ], [ %.9.i.i.i, %bb.fi ] ; 9 uses
  %i.axs = sub nsw i32 %.0270.lcssa.i.i.i, %.0233396.i.i.i ; 6 uses
  %.not290.i.i.i = icmp slt i32 %i.axs, %.0235394.i.i.i
  %i.axt = load ptr, ptr %i.ada, align 8          ; 5 uses
  br i1 %.not290.i.i.i, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.axu = call fastcc noundef i32 @_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockIttEEiPKT_PKT0_i(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef %i.axt, ptr noundef nonnull %i.b, i32 noundef %.0233396.i.i.i)
  br label %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.i.i.i

bb.fe:                                            ; preds = %bb.fc
  %i.axv = sub i32 %.7393.i.i.i, %i.axs           ; 2 uses
  %i.axw = sext i32 %.0233396.i.i.i to i64
  %i.axx = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.axw
  %.not18.i.i.i.i = icmp sgt i32 %i.act, %i.axv
  br i1 %.not18.i.i.i.i, label %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.thread.i.i.i, label %.lr.ph.i316.i.i.i

.lr.ph.i316.i.i.i:                                ; preds = %bb.fe
  %i.axy = add i32 %i.axv, 1
  br label %.lr.ph.i.preheader.us.i.i.i.i

.lr.ph.i.preheader.us.i.i.i.i:                    ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread14.loopexit.us.i.i.i.i, %.lr.ph.i316.i.i.i
  %indvars.iv.i318.i.i.i = phi i64 [ %i.axq, %.lr.ph.i316.i.i.i ], [ %indvars.iv.next.i319.i.i.i, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread14.loopexit.us.i.i.i.i ] ; 3 uses
  %i.axz = getelementptr inbounds [2 x i8], ptr %i.axt, i64 %indvars.iv.i318.i.i.i
  br label %.lr.ph.i.us.i.i.i.i

.lr.ph.i.us.i.i.i.i:                              ; preds = %bb.ff, %.lr.ph.i.preheader.us.i.i.i.i
  %.010.i.us.i.i.i.i = phi i32 [ %i.ayf, %bb.ff ], [ %i.axs, %.lr.ph.i.preheader.us.i.i.i.i ] ; 2 uses
  %.069.i.us.i.i.i.i = phi ptr [ %i.aye, %bb.ff ], [ %i.axx, %.lr.ph.i.preheader.us.i.i.i.i ] ; 2 uses
  %.078.i.us.i.i.i.i = phi ptr [ %i.ayd, %bb.ff ], [ %i.axz, %.lr.ph.i.preheader.us.i.i.i.i ] ; 2 uses
  %i.aya = load i16, ptr %.078.i.us.i.i.i.i, align 2
  %i.ayb = load i16, ptr %.069.i.us.i.i.i.i, align 2
  %i.ayc = icmp eq i16 %i.aya, %i.ayb
  br i1 %i.ayc, label %bb.ff, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread14.loopexit.us.i.i.i.i

bb.ff:                                            ; preds = %.lr.ph.i.us.i.i.i.i
  %i.ayd = getelementptr inbounds nuw i8, ptr %.078.i.us.i.i.i.i, i64 2
  %i.aye = getelementptr inbounds nuw i8, ptr %.069.i.us.i.i.i.i, i64 2
  %i.ayf = add nsw i32 %.010.i.us.i.i.i.i, -1
  %i.ayg = icmp sgt i32 %.010.i.us.i.i.i.i, 1
  br i1 %i.ayg, label %.lr.ph.i.us.i.i.i.i, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread.loopexit.i.i.i.i, !llvm.loop !59

_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread14.loopexit.us.i.i.i.i: ; preds = %.lr.ph.i.us.i.i.i.i
  %indvars.iv.next.i319.i.i.i = add nsw i64 %indvars.iv.i318.i.i.i, 1 ; 2 uses
  %lftr.wideiv.i.i.i.i = trunc i64 %indvars.iv.next.i319.i.i.i to i32
  %exitcond.not.i.i91.i.i = icmp eq i32 %i.axy, %lftr.wideiv.i.i.i.i
  br i1 %exitcond.not.i.i91.i.i, label %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.thread.i.i.i, label %.lr.ph.i.preheader.us.i.i.i.i, !llvm.loop !63

_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread.loopexit.i.i.i.i: ; preds = %bb.ff
  %i.ayh = trunc nsw i64 %indvars.iv.i318.i.i.i to i32
  br label %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.i.i.i

_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.i.i.i: ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread.loopexit.i.i.i.i, %bb.fd
  %.1236.i.i.i = phi i32 [ %.0235394.i.i.i, %bb.fd ], [ %i.axs, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread.loopexit.i.i.i.i ] ; 2 uses
  %.0230.i.i.i = phi i32 [ %i.axu, %bb.fd ], [ %i.ayh, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread.loopexit.i.i.i.i ] ; 2 uses
  %i.ayi = icmp sgt i32 %.0230.i.i.i, -1
  br i1 %i.ayi, label %bb.fi, label %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.thread.i.i.i

_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.thread.i.i.i: ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread14.loopexit.us.i.i.i.i, %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.i.i.i, %bb.fe
  %.1236345.i.i.i = phi i32 [ %.1236.i.i.i, %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.i.i.i ], [ %i.axs, %bb.fe ], [ %i.axs, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread14.loopexit.us.i.i.i.i ] ; 6 uses
  %i.ayj = icmp eq i32 %.7393.i.i.i, %i.act
  br i1 %i.ayj, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit329.i.i.i, label %bb.fg

bb.fg:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.thread.i.i.i
  %i.ayk = sext i32 %.0233396.i.i.i to i64        ; 2 uses
  %i.ayl = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.ayk
  %i.aym = icmp sgt i32 %.1236345.i.i.i, 1
  br i1 %i.aym, label %.lr.ph.preheader.i.i.i.i, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit329.thread.i.i.i

_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit329.thread.i.i.i: ; preds = %bb.fg
  %.014.i.i.i.i = add nsw i32 %.1236345.i.i.i, -1 ; 2 uses
  %i.ayn = sub nsw i32 %.7393.i.i.i, %.014.i.i.i.i
  br label %.lr.ph390.preheader.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.fg
  %i.ayo = zext nneg i32 %.1236345.i.i.i to i64
  %i.ayp = sext i32 %.7393.i.i.i to i64
  br label %.lr.ph.i321.i.i.i

_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i328.i.i.i: ; preds = %.lr.ph.i.i324.i.i.i
  %i.ayq = icmp sgt i64 %indvars.iv.in.i322.i.i.i, 2
  br i1 %i.ayq, label %.lr.ph.i321.i.i.i, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit329.i.i.i, !llvm.loop !64

.lr.ph.i321.i.i.i:                                ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i328.i.i.i, %.lr.ph.preheader.i.i.i.i
  %indvars.iv.in.i322.i.i.i = phi i64 [ %i.ayo, %.lr.ph.preheader.i.i.i.i ], [ %indvars.iv.i323.i.i.i, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i328.i.i.i ] ; 2 uses
  %indvars.iv.i323.i.i.i = add nsw i64 %indvars.iv.in.i322.i.i.i, -1 ; 3 uses
  %i.ayr = sub nsw i64 %i.ayp, %indvars.iv.i323.i.i.i
  %i.ays = getelementptr inbounds [2 x i8], ptr %i.axt, i64 %i.ayr
  %i.ayt = trunc nuw nsw i64 %indvars.iv.i323.i.i.i to i32 ; 2 uses
  br label %.lr.ph.i.i324.i.i.i

.lr.ph.i.i324.i.i.i:                              ; preds = %bb.fh, %.lr.ph.i321.i.i.i
  %.010.i.i325.i.i.i = phi i32 [ %i.ayz, %bb.fh ], [ %i.ayt, %.lr.ph.i321.i.i.i ] ; 2 uses
  %.069.i.i326.i.i.i = phi ptr [ %i.ayy, %bb.fh ], [ %i.ayl, %.lr.ph.i321.i.i.i ] ; 2 uses
  %.078.i.i327.i.i.i = phi ptr [ %i.ayx, %bb.fh ], [ %i.ays, %.lr.ph.i321.i.i.i ] ; 2 uses
  %i.ayu = load i16, ptr %.078.i.i327.i.i.i, align 2
  %i.ayv = load i16, ptr %.069.i.i326.i.i.i, align 2
  %i.ayw = icmp eq i16 %i.ayu, %i.ayv
  br i1 %i.ayw, label %bb.fh, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i328.i.i.i

bb.fh:                                            ; preds = %.lr.ph.i.i324.i.i.i
  %i.ayx = getelementptr inbounds nuw i8, ptr %.078.i.i327.i.i.i, i64 2
  %i.ayy = getelementptr inbounds nuw i8, ptr %.069.i.i326.i.i.i, i64 2
  %i.ayz = add nsw i32 %.010.i.i325.i.i.i, -1
  %i.aza = icmp sgt i32 %.010.i.i325.i.i.i, 1
  br i1 %i.aza, label %.lr.ph.i.i324.i.i.i, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit329.i.i.i, !llvm.loop !59

_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit329.i.i.i: ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i328.i.i.i, %bb.fh, %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.thread.i.i.i
  %.1231.i.i.i = phi i32 [ 0, %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.thread.i.i.i ], [ %i.ayt, %bb.fh ], [ 0, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i328.i.i.i ] ; 3 uses
  %i.azb = sub nsw i32 %.7393.i.i.i, %.1231.i.i.i ; 2 uses
  %i.azc = icmp slt i32 %.1231.i.i.i, %.1236345.i.i.i
  br i1 %i.azc, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit329.i..lr.ph390.preheader.i_crit_edge.i.i, label %._crit_edge391.i.i.i

_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit329.i..lr.ph390.preheader.i_crit_edge.i.i: ; preds = %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit329.i.i.i
  %.pre222.i.i = sext i32 %.0233396.i.i.i to i64
  br label %.lr.ph390.preheader.i.i.i

.lr.ph390.preheader.i.i.i:                        ; preds = %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit329.i..lr.ph390.preheader.i_crit_edge.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit329.thread.i.i.i
  %.pre-phi.i.i = phi i64 [ %.pre222.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit329.i..lr.ph390.preheader.i_crit_edge.i.i ], [ %i.ayk, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit329.thread.i.i.i ]
  %i.azd = phi i32 [ %i.azb, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit329.i..lr.ph390.preheader.i_crit_edge.i.i ], [ %i.ayn, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit329.thread.i.i.i ]
  %.1231494.i.i.i = phi i32 [ %.1231.i.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit329.i..lr.ph390.preheader.i_crit_edge.i.i ], [ %.014.i.i.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit329.thread.i.i.i ]
  %i.aze = sext i32 %.1231494.i.i.i to i64        ; 4 uses
  %i.azf = sext i32 %.7393.i.i.i to i64           ; 2 uses
  %wide.trip.count466.i.i.i = sext i32 %.1236345.i.i.i to i64 ; 3 uses
  %invariant.gep.i.i.i = getelementptr [2 x i8], ptr %i.b, i64 %.pre-phi.i.i ; 5 uses
  %i.azg = sub nsw i64 %wide.trip.count466.i.i.i, %i.aze
  %xtraiter392 = and i64 %i.azg, 3                ; 2 uses
  %lcmp.mod393.not = icmp eq i64 %xtraiter392, 0
  br i1 %lcmp.mod393.not, label %.lr.ph390.i.i.i.prol.loopexit, label %.lr.ph390.i.i.i.prol

.lr.ph390.i.i.i.prol:                             ; preds = %.lr.ph390.preheader.i.i.i, %.lr.ph390.i.i.i.prol
  %indvars.iv461.i.i.i.prol = phi i64 [ %indvars.iv.next462.i.i.i.prol, %.lr.ph390.i.i.i.prol ], [ %i.azf, %.lr.ph390.preheader.i.i.i ] ; 2 uses
  %indvars.iv459.i.i.i.prol = phi i64 [ %indvars.iv.next460.i.i.i.prol, %.lr.ph390.i.i.i.prol ], [ %i.aze, %.lr.ph390.preheader.i.i.i ] ; 2 uses
  %prol.iter394 = phi i64 [ %prol.iter394.next, %.lr.ph390.i.i.i.prol ], [ 0, %.lr.ph390.preheader.i.i.i ]
  %indvars.iv.next460.i.i.i.prol = add nsw i64 %indvars.iv459.i.i.i.prol, 1 ; 2 uses
  %gep.i.i.i.prol = getelementptr [2 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv459.i.i.i.prol
  %i.azh = load i16, ptr %gep.i.i.i.prol, align 2
  %i.azi = load ptr, ptr %i.ada, align 8
  %indvars.iv.next462.i.i.i.prol = add nsw i64 %indvars.iv461.i.i.i.prol, 1 ; 3 uses
  %i.azj = getelementptr inbounds [2 x i8], ptr %i.azi, i64 %indvars.iv461.i.i.i.prol
  store i16 %i.azh, ptr %i.azj, align 2
  %prol.iter394.next = add i64 %prol.iter394, 1   ; 2 uses
  %prol.iter394.cmp.not = icmp eq i64 %prol.iter394.next, %xtraiter392
  br i1 %prol.iter394.cmp.not, label %.lr.ph390.i.i.i.prol.loopexit, label %.lr.ph390.i.i.i.prol, !llvm.loop !65

.lr.ph390.i.i.i.prol.loopexit:                    ; preds = %.lr.ph390.i.i.i.prol, %.lr.ph390.preheader.i.i.i
  %indvars.iv.next462.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph390.preheader.i.i.i ], [ %indvars.iv.next462.i.i.i.prol, %.lr.ph390.i.i.i.prol ]
  %indvars.iv461.i.i.i.unr = phi i64 [ %i.azf, %.lr.ph390.preheader.i.i.i ], [ %indvars.iv.next462.i.i.i.prol, %.lr.ph390.i.i.i.prol ]
  %indvars.iv459.i.i.i.unr = phi i64 [ %i.aze, %.lr.ph390.preheader.i.i.i ], [ %indvars.iv.next460.i.i.i.prol, %.lr.ph390.i.i.i.prol ]
  %i.azk = sub nsw i64 %i.aze, %wide.trip.count466.i.i.i
  %i.azl = icmp ugt i64 %i.azk, -4
  br i1 %i.azl, label %._crit_edge391.loopexit.i.i.i, label %.lr.ph390.i.i.i

.lr.ph390.i.i.i:                                  ; preds = %.lr.ph390.i.i.i.prol.loopexit, %.lr.ph390.i.i.i
  %indvars.iv461.i.i.i = phi i64 [ %indvars.iv.next462.i.i.i.3, %.lr.ph390.i.i.i ], [ %indvars.iv461.i.i.i.unr, %.lr.ph390.i.i.i.prol.loopexit ] ; 5 uses
  %indvars.iv459.i.i.i = phi i64 [ %indvars.iv.next460.i.i.i.3, %.lr.ph390.i.i.i ], [ %indvars.iv459.i.i.i.unr, %.lr.ph390.i.i.i.prol.loopexit ] ; 5 uses
  %gep.i.i.i = getelementptr [2 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv459.i.i.i
  %i.azm = load i16, ptr %gep.i.i.i, align 2
  %i.azn = load ptr, ptr %i.ada, align 8
  %i.azo = getelementptr inbounds [2 x i8], ptr %i.azn, i64 %indvars.iv461.i.i.i
  store i16 %i.azm, ptr %i.azo, align 2
  %i.azp = getelementptr [2 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv459.i.i.i
  %gep.i.i.i.1 = getelementptr i8, ptr %i.azp, i64 2
  %i.azq = load i16, ptr %gep.i.i.i.1, align 2
  %i.azr = load ptr, ptr %i.ada, align 8
  %i.azs = getelementptr [2 x i8], ptr %i.azr, i64 %indvars.iv461.i.i.i
  %i.azt = getelementptr i8, ptr %i.azs, i64 2
  store i16 %i.azq, ptr %i.azt, align 2
  %i.azu = getelementptr [2 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv459.i.i.i
  %gep.i.i.i.2 = getelementptr i8, ptr %i.azu, i64 4
  %i.azv = load i16, ptr %gep.i.i.i.2, align 2
  %i.azw = load ptr, ptr %i.ada, align 8
  %i.azx = getelementptr [2 x i8], ptr %i.azw, i64 %indvars.iv461.i.i.i
  %i.azy = getelementptr i8, ptr %i.azx, i64 4
  store i16 %i.azv, ptr %i.azy, align 2
  %indvars.iv.next460.i.i.i.3 = add nsw i64 %indvars.iv459.i.i.i, 4 ; 2 uses
  %i.azz = getelementptr [2 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv459.i.i.i
  %gep.i.i.i.3 = getelementptr i8, ptr %i.azz, i64 6
  %i.baa = load i16, ptr %gep.i.i.i.3, align 2
  %i.bab = load ptr, ptr %i.ada, align 8
  %indvars.iv.next462.i.i.i.3 = add nsw i64 %indvars.iv461.i.i.i, 4 ; 2 uses
  %i.bac = getelementptr [2 x i8], ptr %i.bab, i64 %indvars.iv461.i.i.i
  %i.bad = getelementptr i8, ptr %i.bac, i64 6
  store i16 %i.baa, ptr %i.bad, align 2
  %exitcond467.not.i.i.i.3 = icmp eq i64 %indvars.iv.next460.i.i.i.3, %wide.trip.count466.i.i.i
  br i1 %exitcond467.not.i.i.i.3, label %._crit_edge391.loopexit.i.i.i, label %.lr.ph390.i.i.i, !llvm.loop !66

._crit_edge391.loopexit.i.i.i:                    ; preds = %.lr.ph390.i.i.i, %.lr.ph390.i.i.i.prol.loopexit
  %indvars.iv.next462.i.i.i.lcssa = phi i64 [ %indvars.iv.next462.i.i.i.lcssa.unr, %.lr.ph390.i.i.i.prol.loopexit ], [ %indvars.iv.next462.i.i.i.3, %.lr.ph390.i.i.i ]
  %i.bae = trunc nsw i64 %indvars.iv.next462.i.i.i.lcssa to i32
  %.pre473.i.i.i = load ptr, ptr %i.ada, align 8
  br label %._crit_edge391.i.i.i

._crit_edge391.i.i.i:                             ; preds = %._crit_edge391.loopexit.i.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit329.i.i.i
  %i.baf = phi i32 [ %i.azb, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit329.i.i.i ], [ %i.azd, %._crit_edge391.loopexit.i.i.i ]
  %i.bag = phi ptr [ %i.axt, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit329.i.i.i ], [ %.pre473.i.i.i, %._crit_edge391.loopexit.i.i.i ]
  %.8.lcssa.i.i.i = phi i32 [ %.7393.i.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit329.i.i.i ], [ %i.bae, %._crit_edge391.loopexit.i.i.i ] ; 2 uses
  call fastcc void @_ZN6icu_7812_GLOBAL__N_111MixedBlocks6extendItEEvPKT_iii(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef %i.bag, i32 noundef %i.act, i32 noundef %.7393.i.i.i, i32 noundef %.8.lcssa.i.i.i)
  %.pre474.i.i.i = load ptr, ptr %i.ada, align 8
  br label %bb.fi

bb.fi:                                            ; preds = %._crit_edge391.i.i.i, %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.i.i.i
  %i.bah = phi ptr [ %.pre474.i.i.i, %._crit_edge391.i.i.i ], [ %i.axt, %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.i.i.i ]
  %.1236346.i.i.i = phi i32 [ %.1236345.i.i.i, %._crit_edge391.i.i.i ], [ %.1236.i.i.i, %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.i.i.i ] ; 2 uses
  %.9.i.i.i = phi i32 [ %.8.lcssa.i.i.i, %._crit_edge391.i.i.i ], [ %.7393.i.i.i, %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.i.i.i ] ; 2 uses
  %.0229.i.i.i = phi i32 [ %i.baf, %._crit_edge391.i.i.i ], [ %.0230.i.i.i, %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.i.i.i ]
  %i.bai = trunc i32 %.0229.i.i.i to i16
  %indvars.iv.next469.i.i.i = add nuw nsw i64 %indvars.iv468.i.i.i, 1
  %i.baj = getelementptr inbounds nuw [2 x i8], ptr %i.bah, i64 %indvars.iv468.i.i.i
  store i16 %i.bai, ptr %i.baj, align 2
  %i.bak = add nsw i32 %.1236346.i.i.i, %.0233396.i.i.i ; 2 uses
  %i.bal = icmp slt i32 %i.bak, %.0270.lcssa.i.i.i
  br i1 %i.bal, label %bb.fc, label %.loopexit.i.i.i, !llvm.loop !67

.loopexit.i.i.i:                                  ; preds = %bb.fi, %bb.fb, %.preheader.i89.i.i
  %.0.i.i.i = phi i32 [ 0, %bb.fb ], [ %.0261.lcssa.i.i.i, %.preheader.i89.i.i ], [ %.9.i.i.i, %bb.fi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  %.val.pre.i.i.i = load ptr, ptr %4, align 8
  br label %bb.fj

bb.fj:                                            ; preds = %.loopexit.i.i.i, %_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit309.i.i.i
  %.val.i.i.i = phi ptr [ %.val.pre.i.i.i, %.loopexit.i.i.i ], [ null, %_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit309.i.i.i ]
  %.1.i90.i.i = phi i32 [ %.0.i.i.i, %.loopexit.i.i.i ], [ 0, %_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit309.i.i.i ]
  tail call void @uprv_free_78(ptr noundef %.val.i.i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit301.i.i.i, %bb.do
  %i.bam = phi ptr [ null, %_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit301.i.i.i ], [ %.pre.i.i84.ph.i.i, %bb.do ], [ %i.ady, %bb.fj ]
  %.3.i.i.i = phi i32 [ 0, %_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit301.i.i.i ], [ 0, %bb.do ], [ %.1.i90.i.i, %bb.fj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie12compactIndexEiRNS0_11MixedBlocksER10UErrorCode.exit.i.i

_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie12compactIndexEiRNS0_11MixedBlocksER10UErrorCode.exit.i.i: ; preds = %bb.fk, %bb.cz
  %i.ban = phi ptr [ %.pre.i.i84.ph.i.i, %bb.cz ], [ %i.bam, %bb.fk ]
  %.4.i.i.i = phi i32 [ %i.yi, %bb.cz ], [ %.3.i.i.i, %bb.fk ]
  store i32 %i.gf, ptr %i.ct, align 8
  br label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactTrieEiR10UErrorCode.exit.i

_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactTrieEiR10UErrorCode.exit.thread.i: ; preds = %bb.bn, %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie22compactWholeDataBlocksEiRNS0_13AllSameBlocksE.exit.thread105.i.i, %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie22compactWholeDataBlocksEiRNS0_13AllSameBlocksE.exit.i.i
  store i32 7, ptr %3, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  br label %bb.fl

_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactTrieEiR10UErrorCode.exit.i: ; preds = %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie12compactIndexEiRNS0_11MixedBlocksER10UErrorCode.exit.i.i, %bb.cv, %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactDataEiPjiiRNS0_11MixedBlocksER10UErrorCode.exit.i.i, %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactDataEiPjiiRNS0_11MixedBlocksER10UErrorCode.exit.thread.i.i
  %i.bao = phi ptr [ %i.ban, %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie12compactIndexEiRNS0_11MixedBlocksER10UErrorCode.exit.i.i ], [ %.pre.i.i84.ph.i.i, %bb.cv ], [ %.pre.i.i84.ph.i.i, %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactDataEiPjiiRNS0_11MixedBlocksER10UErrorCode.exit.i.i ], [ null, %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactDataEiPjiiRNS0_11MixedBlocksER10UErrorCode.exit.thread.i.i ]
  %.0.i.i = phi i32 [ %.4.i.i.i, %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie12compactIndexEiRNS0_11MixedBlocksER10UErrorCode.exit.i.i ], [ 0, %bb.cv ], [ 0, %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactDataEiPjiiRNS0_11MixedBlocksER10UErrorCode.exit.i.i ], [ 0, %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactDataEiPjiiRNS0_11MixedBlocksER10UErrorCode.exit.thread.i.i ] ; 9 uses
  tail call void @uprv_free_78(ptr noundef %i.bao) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  %.pre.i = load i32, ptr %3, align 4
  %i.bap = icmp slt i32 %.pre.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  br i1 %i.bap, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactTrieEiR10UErrorCode.exit.i, %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactTrieEiR10UErrorCode.exit.thread.i
  %i.baq = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 -1, ptr %i.baq, align 8
  %i.bar = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 -1, ptr %i.bar, align 4
  %i.bas = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.bas, align 4
  %i.bat = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bau = load i32, ptr %i.bat, align 4          ; 2 uses
  %i.bav = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.bau, ptr %i.bav, align 8
  store i32 %i.bau, ptr %i.dj, align 4
  store i32 0, ptr %i.ct, align 8
  %i.baw = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bax = load ptr, ptr %i.baw, align 8
  tail call void @uprv_free_78(ptr noundef %i.bax) #10
  store ptr null, ptr %i.baw, align 8
  br label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie5buildE11UCPTrieType17UCPTrieValueWidthR10UErrorCode.exit

bb.fm:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactTrieEiR10UErrorCode.exit.i
  %i.bay = icmp ne i32 %2, 1                      ; 2 uses
  %i.baz = and i32 %.0.i.i, 1
  %.not103.i = icmp eq i32 %i.baz, 0
  %or.cond113.i = or i1 %i.bay, %.not103.i
  br i1 %or.cond113.i, label %bb.fn, label %.thread132.i

.thread132.i:                                     ; preds = %bb.fm
  %i.bba = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bbb = load ptr, ptr %i.bba, align 8
  %i.bbc = add nsw i32 %.0.i.i, 1                 ; 2 uses
  %i.bbd = sext i32 %.0.i.i to i64
  %i.bbe = getelementptr inbounds [2 x i8], ptr %i.bbb, i64 %i.bbd
  store i16 -18, ptr %i.bbe, align 2
  %i.bbf = shl nsw i32 %i.bbc, 1
  br label %bb.fu

bb.fn:                                            ; preds = %bb.fm
  %i.bbg = shl nsw i32 %.0.i.i, 1                 ; 5 uses
  %i.bbh = icmp eq i32 %2, 0
  br i1 %i.bbh, label %bb.fo, label %bb.ft

bb.fo:                                            ; preds = %bb.fn
  %i.bbi = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 7 uses
  %i.bbj = load i32, ptr %i.bbi, align 4          ; 4 uses
  %i.bbk = xor i32 %i.bbj, %.0.i.i
  %i.bbl = and i32 %i.bbk, 1
  %.not108.i = icmp eq i32 %i.bbl, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %.pre239.i = load i32, ptr %.phi.trans.insert.i, align 4 ; 2 uses
  br i1 %.not108.i, label %._crit_edge238.i, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.bbm = load ptr, ptr %i.gh, align 8
  %i.bbn = add nsw i32 %i.bbj, 1
  store i32 %i.bbn, ptr %i.bbi, align 4
  %i.bbo = sext i32 %i.bbj to i64
  %i.bbp = getelementptr inbounds [4 x i8], ptr %i.bbm, i64 %i.bbo
  store i32 %.pre239.i, ptr %i.bbp, align 4
  %.pre237.i = load i32, ptr %i.bbi, align 4
  br label %._crit_edge238.i

._crit_edge238.i:                                 ; preds = %bb.fp, %bb.fo
  %i.bbq = phi i32 [ %.pre237.i, %bb.fp ], [ %i.bbj, %bb.fo ] ; 3 uses
  %i.bbr = load ptr, ptr %i.gh, align 8
  %i.bbs = sext i32 %i.bbq to i64
  %i.bbt = getelementptr [4 x i8], ptr %i.bbr, i64 %i.bbs ; 3 uses
  %i.bbu = getelementptr i8, ptr %i.bbt, i64 -4
  %i.bbv = load i32, ptr %i.bbu, align 4
  %.not109.i = icmp eq i32 %i.bbv, %.pre239.i
  %.pre240.i = load i32, ptr %i.dj, align 4       ; 2 uses
  br i1 %.not109.i, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %._crit_edge238.i
  %i.bbw = getelementptr i8, ptr %i.bbt, i64 -8
  %i.bbx = load i32, ptr %i.bbw, align 4
  %.not110.i = icmp eq i32 %i.bbx, %.pre240.i
  br i1 %.not110.i, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %._crit_edge238.i
  %i.bby = add nsw i32 %i.bbq, 1
  store i32 %i.bby, ptr %i.bbi, align 4
  store i32 %.pre240.i, ptr %i.bbt, align 4
  %i.bbz = load i32, ptr %.phi.trans.insert.i, align 4
  %i.bca = load ptr, ptr %i.gh, align 8
  %i.bcb = load i32, ptr %i.bbi, align 4          ; 2 uses
  %i.bcc = add nsw i32 %i.bcb, 1
  store i32 %i.bcc, ptr %i.bbi, align 4
  %i.bcd = sext i32 %i.bcb to i64
  %i.bce = getelementptr inbounds [4 x i8], ptr %i.bca, i64 %i.bcd
  store i32 %i.bbz, ptr %i.bce, align 4
  %.pre241.i = load i32, ptr %i.bbi, align 4
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq
  %i.bcf = phi i32 [ %.pre241.i, %bb.fr ], [ %i.bbq, %bb.fq ]
  %i.bcg = add i32 %i.bcf, %.0.i.i
  %i.bch = shl i32 %i.bcg, 1
  br label %bb.gh

bb.ft:                                            ; preds = %bb.fn
  br i1 %i.bay, label %bb.ga, label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %.thread132.i
  %.097131134.i = phi i32 [ %i.bbc, %.thread132.i ], [ %.0.i.i, %bb.ft ]
  %i.bci = phi i32 [ %i.bbf, %.thread132.i ], [ %i.bbg, %bb.ft ] ; 2 uses
  %i.bcj = load ptr, ptr %i.gh, align 8           ; 2 uses
  %i.bck = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 5 uses
  %i.bcl = load i32, ptr %i.bck, align 4          ; 4 uses
  %i.bcm = sext i32 %i.bcl to i64                 ; 2 uses
  %i.bcn = getelementptr [4 x i8], ptr %i.bcj, i64 %i.bcm ; 3 uses
  %i.bco = getelementptr i8, ptr %i.bcn, i64 -4
  %i.bcp = load i32, ptr %i.bco, align 4          ; 2 uses
  %i.bcq = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.bcr = load i32, ptr %i.bcq, align 4          ; 2 uses
  %.not105.i = icmp eq i32 %i.bcp, %i.bcr
  %.pre230.i = load i32, ptr %i.dj, align 4       ; 3 uses
  br i1 %.not105.i, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  %i.bcs = getelementptr i8, ptr %i.bcn, i64 -8
  %i.bct = load i32, ptr %i.bcs, align 4
  %.not106.i = icmp eq i32 %i.bct, %.pre230.i
  br i1 %.not106.i, label %bb.fz, label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fu
  %.not107.i = icmp eq i32 %i.bcp, %.pre230.i
  br i1 %.not107.i, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.bcu = add nsw i32 %i.bcl, 1
  store i32 %i.bcu, ptr %i.bck, align 4
  store i32 %.pre230.i, ptr %i.bcn, align 4
  %.pre231.i = load i32, ptr %i.bcq, align 4
  %.pre232.i = load ptr, ptr %i.gh, align 8
  %.pre233.i = load i32, ptr %i.bck, align 4      ; 2 uses
  %.pre242.i = sext i32 %.pre233.i to i64
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %.pre-phi.i = phi i64 [ %.pre242.i, %bb.fx ], [ %i.bcm, %bb.fw ]
  %i.bcv = phi i32 [ %.pre233.i, %bb.fx ], [ %i.bcl, %bb.fw ]
  %i.bcw = phi ptr [ %.pre232.i, %bb.fx ], [ %i.bcj, %bb.fw ]
  %i.bcx = phi i32 [ %.pre231.i, %bb.fx ], [ %i.bcr, %bb.fw ]
  %i.bcy = add nsw i32 %i.bcv, 1
  store i32 %i.bcy, ptr %i.bck, align 4
  %i.bcz = getelementptr inbounds [4 x i8], ptr %i.bcw, i64 %.pre-phi.i
  store i32 %i.bcx, ptr %i.bcz, align 4
  %.pre234.i = load i32, ptr %i.bck, align 4
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.fv
  %i.bda = phi i32 [ %.pre234.i, %bb.fy ], [ %i.bcl, %bb.fv ]
  %i.bdb = shl nsw i32 %i.bda, 2
  %i.bdc = add nsw i32 %i.bdb, %i.bci
  br label %bb.gh

bb.ga:                                            ; preds = %bb.ft
  %i.bdd = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 9 uses
  %i.bde = load i32, ptr %i.bdd, align 4          ; 5 uses
  %i.bdf = add nsw i32 %i.bde, %i.bbg
  %i.bdg = and i32 %i.bdf, 3                      ; 2 uses
  switch i32 %i.bdg, label %default.unreachable [
    i32 0, label %bb.gb
    i32 3, label %bb.gd
    i32 2, label %._crit_edge.i
    i32 1, label %..lr.ph.i_crit_edge
  ]

..lr.ph.i_crit_edge:                              ; preds = %bb.ga
  %.pre235.i.pre = load i32, ptr %i.dj, align 4
  br label %.lr.ph.i

bb.gb:                                            ; preds = %bb.ga
  %i.bdh = load ptr, ptr %i.gh, align 8
  %i.bdi = sext i32 %i.bde to i64
  %i.bdj = getelementptr [4 x i8], ptr %i.bdh, i64 %i.bdi ; 2 uses
  %i.bdk = getelementptr i8, ptr %i.bdj, i64 -4
  %i.bdl = load i32, ptr %i.bdk, align 4
  %i.bdm = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bdn = load i32, ptr %i.bdm, align 4
  %i.bdo = icmp eq i32 %i.bdl, %i.bdn
  %.pre235.i.pre87 = load i32, ptr %i.dj, align 4 ; 3 uses
  br i1 %i.bdo, label %bb.gc, label %.lr.ph.i

bb.gc:                                            ; preds = %bb.gb
  %i.bdp = getelementptr i8, ptr %i.bdj, i64 -8
  %i.bdq = load i32, ptr %i.bdp, align 4
  %i.bdr = icmp eq i32 %i.bdq, %.pre235.i.pre87
  br i1 %i.bdr, label %bb.gg, label %.lr.ph.i

bb.gd:                                            ; preds = %bb.ga
  %i.bds = load ptr, ptr %i.gh, align 8
  %i.bdt = sext i32 %i.bde to i64
  %i.bdu = getelementptr [4 x i8], ptr %i.bds, i64 %i.bdt ; 2 uses
  %i.bdv = getelementptr i8, ptr %i.bdu, i64 -4
  %i.bdw = load i32, ptr %i.bdv, align 4
  %i.bdx = load i32, ptr %i.dj, align 4           ; 2 uses
  %i.bdy = icmp eq i32 %i.bdw, %i.bdx
  br i1 %i.bdy, label %bb.ge, label %.lr.ph.i

bb.ge:                                            ; preds = %bb.gd
  %i.bdz = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bea = load i32, ptr %i.bdz, align 4
  %i.beb = add nsw i32 %i.bde, 1
  store i32 %i.beb, ptr %i.bdd, align 4
  store i32 %i.bea, ptr %i.bdu, align 4
  br label %bb.gg

default.unreachable:                              ; preds = %.loopexit136.i, %bb.ga
  unreachable

.lr.ph.i:                                         ; preds = %..lr.ph.i_crit_edge, %bb.gd, %bb.gc, %bb.gb
  %.pre235.i = phi i32 [ %.pre235.i.pre, %..lr.ph.i_crit_edge ], [ %i.bdx, %bb.gd ], [ %.pre235.i.pre87, %bb.gc ], [ %.pre235.i.pre87, %bb.gb ]
  br label %bb.gf

bb.gf:                                            ; preds = %bb.gf, %.lr.ph.i
  %.095173.i = phi i32 [ %i.bdg, %.lr.ph.i ], [ %i.bei, %bb.gf ]
  %i.bec = load ptr, ptr %i.gh, align 8
  %i.bed = load i32, ptr %i.bdd, align 4          ; 2 uses
  %i.bee = add nsw i32 %i.bed, 1
  store i32 %i.bee, ptr %i.bdd, align 4
  %i.bef = sext i32 %i.bed to i64
  %i.beg = getelementptr inbounds [4 x i8], ptr %i.bec, i64 %i.bef
  store i32 %.pre235.i, ptr %i.beg, align 4
  %i.beh = add nuw nsw i32 %.095173.i, 1
  %i.bei = and i32 %i.beh, 3                      ; 2 uses
  %.not104.i = icmp eq i32 %i.bei, 2
  br i1 %.not104.i, label %._crit_edge.loopexit.i, label %bb.gf, !llvm.loop !68

._crit_edge.loopexit.i:                           ; preds = %bb.gf
  %.pre236.i = load i32, ptr %i.bdd, align 4
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.ga
  %i.bej = phi i32 [ %.pre236.i, %._crit_edge.loopexit.i ], [ %i.bde, %bb.ga ] ; 2 uses
  %i.bek = load i32, ptr %i.dj, align 4
  %i.bel = load ptr, ptr %i.gh, align 8
  %i.bem = add nsw i32 %i.bej, 1
  store i32 %i.bem, ptr %i.bdd, align 4
  %i.ben = sext i32 %i.bej to i64
  %i.beo = getelementptr inbounds [4 x i8], ptr %i.bel, i64 %i.ben
  store i32 %i.bek, ptr %i.beo, align 4
  %i.bep = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.beq = load i32, ptr %i.bep, align 4
  %i.ber = load ptr, ptr %i.gh, align 8
  %i.bes = load i32, ptr %i.bdd, align 4          ; 2 uses
  %i.bet = add nsw i32 %i.bes, 1
  store i32 %i.bet, ptr %i.bdd, align 4
  %i.beu = sext i32 %i.bes to i64
  %i.bev = getelementptr inbounds [4 x i8], ptr %i.ber, i64 %i.beu
  store i32 %i.beq, ptr %i.bev, align 4
  br label %bb.gg

bb.gg:                                            ; preds = %._crit_edge.i, %bb.ge, %bb.gc
  %i.bew = load i32, ptr %i.bdd, align 4
  %i.bex = add nsw i32 %i.bew, %i.bbg
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.fz, %bb.fs
  %i.bey = phi i32 [ %i.bbg, %bb.fs ], [ %i.bci, %bb.fz ], [ %i.bbg, %bb.gg ] ; 2 uses
  %.097130.i = phi i32 [ %.0.i.i, %bb.fs ], [ %.097131134.i, %bb.fz ], [ %.0.i.i, %bb.gg ] ; 6 uses
  %.096.i = phi i32 [ %i.bch, %bb.fs ], [ %i.bdc, %bb.fz ], [ %i.bex, %bb.gg ]
  %i.bez = add i32 %.096.i, 48
  %i.bfa = sext i32 %i.bez to i64
  %i.bfb = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.bfa) #11 ; 15 uses
  %i.bfc = icmp eq ptr %i.bfb, null
  br i1 %i.bfc, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %bb.gh
  store i32 7, ptr %3, align 4
  %i.bfd = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 -1, ptr %i.bfd, align 8
  %i.bfe = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 -1, ptr %i.bfe, align 4
  %i.bff = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.bff, align 4
  %i.bfg = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bfh = load i32, ptr %i.bfg, align 4          ; 2 uses
  %i.bfi = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.bfh, ptr %i.bfi, align 8
  store i32 %i.bfh, ptr %i.dj, align 4
  store i32 0, ptr %i.ct, align 8
  %i.bfj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bfk = load ptr, ptr %i.bfj, align 8
  tail call void @uprv_free_78(ptr noundef %i.bfk) #10
  store ptr null, ptr %i.bfj, align 8
  br label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie5buildE11UCPTrieType17UCPTrieValueWidthR10UErrorCode.exit

bb.gj:                                            ; preds = %bb.gh
  %i.bfl = getelementptr inbounds nuw i8, ptr %i.bfb, i64 8 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bfl, i8 0, i64 32, i1 false)
  %i.bfm = getelementptr inbounds nuw i8, ptr %i.bfb, i64 16
  store i32 %.097130.i, ptr %i.bfm, align 8
  %i.bfn = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.bfo = load i32, ptr %i.bfn, align 4          ; 16 uses
  %i.bfp = getelementptr inbounds nuw i8, ptr %i.bfb, i64 20
  store i32 %i.bfo, ptr %i.bfp, align 4
  %i.bfq = load i32, ptr %i.ct, align 8           ; 3 uses
  %i.bfr = getelementptr inbounds nuw i8, ptr %i.bfb, i64 24
  store i32 %i.bfq, ptr %i.bfr, align 8
  %i.bfs = add nsw i32 %i.bfq, 4095
  %i.bft = lshr i32 %i.bfs, 12
  %i.bfu = trunc i32 %i.bft to i16
  %i.bfv = getelementptr inbounds nuw i8, ptr %i.bfb, i64 28
  store i16 %i.bfu, ptr %i.bfv, align 4
  %i.bfw = trunc nuw nsw i32 %1 to i8
  %i.bfx = getelementptr inbounds nuw i8, ptr %i.bfb, i64 30
  store i8 %i.bfw, ptr %i.bfx, align 2
  %i.bfy = trunc nuw nsw i32 %2 to i8
  %i.bfz = getelementptr inbounds nuw i8, ptr %i.bfb, i64 31
  store i8 %i.bfy, ptr %i.bfz, align 1
  %i.bga = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.bgb = load i32, ptr %i.bga, align 4
  %i.bgc = trunc i32 %i.bgb to i16
  %i.bgd = getelementptr inbounds nuw i8, ptr %i.bfb, i64 38
  store i16 %i.bgc, ptr %i.bgd, align 2
  %i.bge = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bgf = load i32, ptr %i.bge, align 8
  %i.bgg = getelementptr inbounds nuw i8, ptr %i.bfb, i64 40
  store i32 %i.bgf, ptr %i.bgg, align 8
  %i.bgh = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bgi = load i32, ptr %i.bgh, align 8
  %i.bgj = getelementptr inbounds nuw i8, ptr %i.bfb, i64 44
  store i32 %i.bgi, ptr %i.bgj, align 4
  %i.bgk = getelementptr i8, ptr %i.bfb, i64 48   ; 7 uses
  store ptr %i.bgk, ptr %i.bfb, align 8
  %.not111.i = icmp sgt i32 %i.bfq, %i.cr
  br i1 %.not111.i, label %bb.gl, label %.preheader.i

.preheader.i:                                     ; preds = %bb.gj
  %i.bgl = icmp sgt i32 %.097130.i, 0
  br i1 %i.bgl, label %.lr.ph177.i, label %.loopexit136.i

.lr.ph177.i:                                      ; preds = %.preheader.i
  %i.bgm = load ptr, ptr %0, align 8              ; 5 uses
  %xtraiter396 = and i32 %.097130.i, 3            ; 3 uses
  %i.bgn = icmp ult i32 %.097130.i, 4
  br i1 %i.bgn, label %.epil.preheader395, label %.lr.ph177.i.new

.lr.ph177.i.new:                                  ; preds = %.lr.ph177.i
  %unroll_iter401 = and i32 %.097130.i, 2147483644
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gk, %.lr.ph177.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph177.i.new ], [ %indvars.iv.next.i.3, %bb.gk ] ; 5 uses
  %.089174.i = phi ptr [ %i.bgk, %.lr.ph177.i.new ], [ %i.bhg, %bb.gk ] ; 5 uses
  %niter402 = phi i32 [ 0, %.lr.ph177.i.new ], [ %niter402.next.3, %bb.gk ]
  %i.bgo = getelementptr inbounds nuw [4 x i8], ptr %i.bgm, i64 %indvars.iv.i
  %i.bgp = load i32, ptr %i.bgo, align 4
  %i.bgq = trunc i32 %i.bgp to i16
  %i.bgr = getelementptr inbounds nuw i8, ptr %.089174.i, i64 2
  store i16 %i.bgq, ptr %.089174.i, align 2
  %i.bgs = getelementptr inbounds nuw [4 x i8], ptr %i.bgm, i64 %indvars.iv.i
  %i.bgt = getelementptr inbounds nuw i8, ptr %i.bgs, i64 16
  %i.bgu = load i32, ptr %i.bgt, align 4
  %i.bgv = trunc i32 %i.bgu to i16
  %i.bgw = getelementptr inbounds nuw i8, ptr %.089174.i, i64 4
  store i16 %i.bgv, ptr %i.bgr, align 2
  %i.bgx = getelementptr inbounds nuw [4 x i8], ptr %i.bgm, i64 %indvars.iv.i
  %i.bgy = getelementptr inbounds nuw i8, ptr %i.bgx, i64 32
  %i.bgz = load i32, ptr %i.bgy, align 4
  %i.bha = trunc i32 %i.bgz to i16
  %i.bhb = getelementptr inbounds nuw i8, ptr %.089174.i, i64 6
  store i16 %i.bha, ptr %i.bgw, align 2
  %i.bhc = getelementptr inbounds nuw [4 x i8], ptr %i.bgm, i64 %indvars.iv.i
  %i.bhd = getelementptr inbounds nuw i8, ptr %i.bhc, i64 48
  %i.bhe = load i32, ptr %i.bhd, align 4
  %i.bhf = trunc i32 %i.bhe to i16
  %i.bhg = getelementptr inbounds nuw i8, ptr %.089174.i, i64 8 ; 3 uses
  store i16 %i.bhf, ptr %i.bhb, align 2
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 16 ; 2 uses
  %niter402.next.3 = add nuw nsw i32 %niter402, 4 ; 2 uses
  %niter402.ncmp.3 = icmp eq i32 %niter402.next.3, %unroll_iter401
  br i1 %niter402.ncmp.3, label %.loopexit136.i.loopexit.unr-lcssa, label %bb.gk, !llvm.loop !69

bb.gl:                                            ; preds = %bb.gj
  %i.bhh = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bhi = load ptr, ptr %i.bhh, align 8
  %i.bhj = sext i32 %i.bey to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.bgk, ptr align 2 %i.bhi, i64 %i.bhj, i1 false)
  %i.bhk = sext i32 %.097130.i to i64
  %i.bhl = getelementptr inbounds [2 x i8], ptr %i.bgk, i64 %i.bhk
  br label %.loopexit136.i

.loopexit136.i.loopexit.unr-lcssa:                ; preds = %bb.gk
  %lcmp.mod398.not = icmp eq i32 %xtraiter396, 0
  br i1 %lcmp.mod398.not, label %.loopexit136.i, label %.epil.preheader395

.epil.preheader395:                               ; preds = %.loopexit136.i.loopexit.unr-lcssa, %.lr.ph177.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph177.i ], [ %indvars.iv.next.i.3, %.loopexit136.i.loopexit.unr-lcssa ]
  %.089174.i.epil.init = phi ptr [ %i.bgk, %.lr.ph177.i ], [ %i.bhg, %.loopexit136.i.loopexit.unr-lcssa ]
  %lcmp.mod400 = icmp ne i32 %xtraiter396, 0
  tail call void @llvm.assume(i1 %lcmp.mod400)
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gm, %.epil.preheader395
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader395 ], [ %indvars.iv.next.i.epil, %bb.gm ] ; 2 uses
  %.089174.i.epil = phi ptr [ %.089174.i.epil.init, %.epil.preheader395 ], [ %i.bhp, %bb.gm ] ; 2 uses
  %epil.iter397 = phi i32 [ 0, %.epil.preheader395 ], [ %epil.iter397.next, %bb.gm ]
  %i.bhm = getelementptr inbounds nuw [4 x i8], ptr %i.bgm, i64 %indvars.iv.i.epil
  %i.bhn = load i32, ptr %i.bhm, align 4
  %i.bho = trunc i32 %i.bhn to i16
  %i.bhp = getelementptr inbounds nuw i8, ptr %.089174.i.epil, i64 2 ; 2 uses
  store i16 %i.bho, ptr %.089174.i.epil, align 2
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 4
  %epil.iter397.next = add i32 %epil.iter397, 1   ; 2 uses
  %epil.iter397.cmp.not = icmp eq i32 %epil.iter397.next, %xtraiter396
  br i1 %epil.iter397.cmp.not, label %.loopexit136.i, label %bb.gm, !llvm.loop !70

.loopexit136.i:                                   ; preds = %.loopexit136.i.loopexit.unr-lcssa, %bb.gm, %bb.gl, %.preheader.i
  %.190.i = phi ptr [ %i.bhl, %bb.gl ], [ %i.bgk, %.preheader.i ], [ %i.bhg, %.loopexit136.i.loopexit.unr-lcssa ], [ %i.bhp, %bb.gm ] ; 7 uses
  %i.bhq = sext i32 %i.bey to i64                 ; 2 uses
  %i.bhr = getelementptr i8, ptr %i.bgk, i64 %i.bhq ; 8 uses
  %i.bhs = load ptr, ptr %i.gh, align 8           ; 13 uses
  switch i32 %2, label %default.unreachable [
    i32 0, label %bb.gn
    i32 1, label %bb.go
    i32 2, label %bb.gp
  ]

bb.gn:                                            ; preds = %.loopexit136.i
  store ptr %.190.i, ptr %i.bfl, align 8
  %i.bht = icmp sgt i32 %i.bfo, 0
  br i1 %i.bht, label %.lr.ph187.i.preheader, label %.loopexit.i

.lr.ph187.i.preheader:                            ; preds = %bb.gn
  %i.bhu = zext nneg i32 %i.bfo to i64            ; 2 uses
  %min.iters.check272 = icmp ult i32 %i.bfo, 20
  br i1 %min.iters.check272, label %.lr.ph187.i.preheader288, label %vector.memcheck265

vector.memcheck265:                               ; preds = %.lr.ph187.i.preheader
  %i.bhv = add nsw i32 %i.bfo, -1
  %i.bhw = zext i32 %i.bhv to i64                 ; 2 uses
  %i.bhx = shl nuw nsw i64 %i.bhw, 1
  %i.bhy = getelementptr i8, ptr %.190.i, i64 %i.bhx
  %scevgep266 = getelementptr i8, ptr %i.bhy, i64 2
  %i.bhz = shl nuw nsw i64 %i.bhw, 2
  %i.bia = getelementptr i8, ptr %i.bhs, i64 %i.bhz
  %scevgep267 = getelementptr i8, ptr %i.bia, i64 4
  %bound0268 = icmp ult ptr %.190.i, %scevgep267
  %bound1269 = icmp ult ptr %i.bhs, %scevgep266
  %found.conflict270 = and i1 %bound0268, %bound1269
  br i1 %found.conflict270, label %.lr.ph187.i.preheader288, label %vector.ph273

vector.ph273:                                     ; preds = %vector.memcheck265
  %n.vec275 = and i64 %i.bhu, 2147483640          ; 5 uses
  %i.bib = trunc nuw nsw i64 %n.vec275 to i32
  %i.bic = sub nsw i32 %i.bfo, %i.bib
  %i.bid = shl nuw nsw i64 %n.vec275, 2
  %i.bie = getelementptr i8, ptr %i.bhs, i64 %i.bid
  %i.bif = shl nuw nsw i64 %n.vec275, 1
  %i.big = getelementptr i8, ptr %.190.i, i64 %i.bif
  br label %vector.body276

vector.body276:                                   ; preds = %vector.body276, %vector.ph273
  %index277 = phi i64 [ 0, %vector.ph273 ], [ %index.next282, %vector.body276 ] ; 3 uses
  %i.bih = shl i64 %index277, 2
  %next.gep278 = getelementptr i8, ptr %i.bhs, i64 %i.bih ; 2 uses
  %i.bii = shl i64 %index277, 1
  %next.gep279 = getelementptr i8, ptr %.190.i, i64 %i.bii ; 2 uses
  %i.bij = getelementptr i8, ptr %next.gep278, i64 16
  %wide.load280 = load <4 x i32>, ptr %next.gep278, align 4, !alias.scope !71
  %wide.load281 = load <4 x i32>, ptr %i.bij, align 4, !alias.scope !71
  %i.bik = trunc <4 x i32> %wide.load280 to <4 x i16>
  %i.bil = trunc <4 x i32> %wide.load281 to <4 x i16>
  %i.bim = getelementptr i8, ptr %next.gep279, i64 8
  store <4 x i16> %i.bik, ptr %next.gep279, align 2, !alias.scope !74, !noalias !71
  store <4 x i16> %i.bil, ptr %i.bim, align 2, !alias.scope !74, !noalias !71
  %index.next282 = add nuw i64 %index277, 8       ; 2 uses
  %i.bin = icmp eq i64 %index.next282, %n.vec275
  br i1 %i.bin, label %middle.block283, label %vector.body276, !llvm.loop !76

middle.block283:                                  ; preds = %vector.body276
  %cmp.n284 = icmp eq i64 %n.vec275, %i.bhu
  br i1 %cmp.n284, label %.loopexit.i, label %.lr.ph187.i.preheader288

.lr.ph187.i.preheader288:                         ; preds = %vector.memcheck265, %.lr.ph187.i.preheader, %middle.block283
  %.085185.i.ph = phi i32 [ %i.bfo, %vector.memcheck265 ], [ %i.bfo, %.lr.ph187.i.preheader ], [ %i.bic, %middle.block283 ]
  %.086184.i.ph = phi ptr [ %i.bhs, %vector.memcheck265 ], [ %i.bhs, %.lr.ph187.i.preheader ], [ %i.bie, %middle.block283 ]
  %.2183.i.ph = phi ptr [ %.190.i, %vector.memcheck265 ], [ %.190.i, %.lr.ph187.i.preheader ], [ %i.big, %middle.block283 ]
  br label %.lr.ph187.i

.lr.ph187.i:                                      ; preds = %.lr.ph187.i.preheader288, %.lr.ph187.i
  %.085185.i = phi i32 [ %i.bis, %.lr.ph187.i ], [ %.085185.i.ph, %.lr.ph187.i.preheader288 ] ; 2 uses
  %.086184.i = phi ptr [ %i.bio, %.lr.ph187.i ], [ %.086184.i.ph, %.lr.ph187.i.preheader288 ] ; 2 uses
  %.2183.i = phi ptr [ %i.bir, %.lr.ph187.i ], [ %.2183.i.ph, %.lr.ph187.i.preheader288 ] ; 2 uses
  %i.bio = getelementptr inbounds nuw i8, ptr %.086184.i, i64 4
  %i.bip = load i32, ptr %.086184.i, align 4
  %i.biq = trunc i32 %i.bip to i16
  %i.bir = getelementptr inbounds nuw i8, ptr %.2183.i, i64 2
  store i16 %i.biq, ptr %.2183.i, align 2
  %i.bis = add nsw i32 %.085185.i, -1
  %i.bit = icmp samesign ugt i32 %.085185.i, 1
  br i1 %i.bit, label %.lr.ph187.i, label %.loopexit.i, !llvm.loop !77

bb.go:                                            ; preds = %.loopexit136.i
  store ptr %i.bhr, ptr %i.bfl, align 8
  %i.biu = sext i32 %i.bfo to i64
  %i.biv = shl nsw i64 %i.biu, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bhr, ptr align 4 %i.bhs, i64 %i.biv, i1 false)
  br label %.loopexit.i

bb.gp:                                            ; preds = %.loopexit136.i
  store ptr %i.bhr, ptr %i.bfl, align 8
  %i.biw = icmp sgt i32 %i.bfo, 0
  br i1 %i.biw, label %.lr.ph182.i.preheader, label %.loopexit.i

.lr.ph182.i.preheader:                            ; preds = %bb.gp
  %i.bix = zext nneg i32 %i.bfo to i64            ; 2 uses
  %min.iters.check250 = icmp ult i32 %i.bfo, 20
  br i1 %min.iters.check250, label %.lr.ph182.i.preheader289, label %vector.memcheck247

vector.memcheck247:                               ; preds = %.lr.ph182.i.preheader
  %i.biy = add nsw i32 %i.bfo, -1
  %i.biz = zext i32 %i.biy to i64                 ; 2 uses
  %i.bja = getelementptr i8, ptr %i.bfb, i64 %i.bhq
  %i.bjb = getelementptr i8, ptr %i.bja, i64 %i.biz
  %scevgep = getelementptr i8, ptr %i.bjb, i64 49
  %i.bjc = shl nuw nsw i64 %i.biz, 2
  %i.bjd = getelementptr i8, ptr %i.bhs, i64 %i.bjc
  %scevgep248 = getelementptr i8, ptr %i.bjd, i64 4
  %bound0 = icmp ult ptr %i.bhr, %scevgep248
  %bound1 = icmp ult ptr %i.bhs, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph182.i.preheader289, label %vector.ph251

vector.ph251:                                     ; preds = %vector.memcheck247
  %n.vec253 = and i64 %i.bix, 2147483640          ; 5 uses
  %i.bje = trunc nuw nsw i64 %n.vec253 to i32
  %i.bjf = sub nsw i32 %i.bfo, %i.bje
  %i.bjg = shl nuw nsw i64 %n.vec253, 2
  %i.bjh = getelementptr i8, ptr %i.bhs, i64 %i.bjg
  %i.bji = getelementptr i8, ptr %i.bhr, i64 %n.vec253
  br label %vector.body254

vector.body254:                                   ; preds = %vector.body254, %vector.ph251
  %index255 = phi i64 [ 0, %vector.ph251 ], [ %index.next259, %vector.body254 ] ; 3 uses
  %i.bjj = shl i64 %index255, 2
  %next.gep = getelementptr i8, ptr %i.bhs, i64 %i.bjj ; 2 uses
  %next.gep256 = getelementptr i8, ptr %i.bhr, i64 %index255 ; 2 uses
  %i.bjk = getelementptr i8, ptr %next.gep, i64 16
  %wide.load257 = load <4 x i32>, ptr %next.gep, align 4, !alias.scope !78
  %wide.load258 = load <4 x i32>, ptr %i.bjk, align 4, !alias.scope !78
  %i.bjl = trunc <4 x i32> %wide.load257 to <4 x i8>
  %i.bjm = trunc <4 x i32> %wide.load258 to <4 x i8>
  %i.bjn = getelementptr i8, ptr %next.gep256, i64 4
  store <4 x i8> %i.bjl, ptr %next.gep256, align 1, !alias.scope !81, !noalias !78
  store <4 x i8> %i.bjm, ptr %i.bjn, align 1, !alias.scope !81, !noalias !78
  %index.next259 = add nuw i64 %index255, 8       ; 2 uses
  %i.bjo = icmp eq i64 %index.next259, %n.vec253
  br i1 %i.bjo, label %middle.block260, label %vector.body254, !llvm.loop !83

middle.block260:                                  ; preds = %vector.body254
  %cmp.n261 = icmp eq i64 %n.vec253, %i.bix
  br i1 %cmp.n261, label %.loopexit.i, label %.lr.ph182.i.preheader289

.lr.ph182.i.preheader289:                         ; preds = %vector.memcheck247, %.lr.ph182.i.preheader, %middle.block260
  %.0180.i.ph = phi i32 [ %i.bfo, %vector.memcheck247 ], [ %i.bfo, %.lr.ph182.i.preheader ], [ %i.bjf, %middle.block260 ]
  %.1179.i.ph = phi ptr [ %i.bhs, %vector.memcheck247 ], [ %i.bhs, %.lr.ph182.i.preheader ], [ %i.bjh, %middle.block260 ]
  %.094178.i.ph = phi ptr [ %i.bhr, %vector.memcheck247 ], [ %i.bhr, %.lr.ph182.i.preheader ], [ %i.bji, %middle.block260 ]
  br label %.lr.ph182.i

.lr.ph182.i:                                      ; preds = %.lr.ph182.i.preheader289, %.lr.ph182.i
  %.0180.i = phi i32 [ %i.bjt, %.lr.ph182.i ], [ %.0180.i.ph, %.lr.ph182.i.preheader289 ] ; 2 uses
  %.1179.i = phi ptr [ %i.bjp, %.lr.ph182.i ], [ %.1179.i.ph, %.lr.ph182.i.preheader289 ] ; 2 uses
  %.094178.i = phi ptr [ %i.bjs, %.lr.ph182.i ], [ %.094178.i.ph, %.lr.ph182.i.preheader289 ] ; 2 uses
  %i.bjp = getelementptr inbounds nuw i8, ptr %.1179.i, i64 4
  %i.bjq = load i32, ptr %.1179.i, align 4
  %i.bjr = trunc i32 %i.bjq to i8
  %i.bjs = getelementptr inbounds nuw i8, ptr %.094178.i, i64 1
  store i8 %i.bjr, ptr %.094178.i, align 1
  %i.bjt = add nsw i32 %.0180.i, -1
  %i.bju = icmp samesign ugt i32 %.0180.i, 1
  br i1 %i.bju, label %.lr.ph182.i, label %.loopexit.i, !llvm.loop !84

.loopexit.i:                                      ; preds = %.lr.ph182.i, %.lr.ph187.i, %middle.block260, %middle.block283, %bb.gp, %bb.go, %bb.gn
  store i32 -1, ptr %i.bge, align 8
  store i32 -1, ptr %i.bga, align 4
  store i32 0, ptr %i.bfn, align 4
  %i.bjv = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bjw = load i32, ptr %i.bjv, align 4          ; 2 uses
  store i32 %i.bjw, ptr %i.bgh, align 8
  store i32 %i.bjw, ptr %i.dj, align 4
  store i32 0, ptr %i.ct, align 8
  %i.bjx = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bjy = load ptr, ptr %i.bjx, align 8
  tail call void @uprv_free_78(ptr noundef %i.bjy) #10
  store ptr null, ptr %i.bjx, align 8
  br label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie5buildE11UCPTrieType17UCPTrieValueWidthR10UErrorCode.exit

_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie5buildE11UCPTrieType17UCPTrieValueWidthR10UErrorCode.exit: ; preds = %.loopexit.i, %bb.gi, %bb.fl, %bb.c, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.bfb, %.loopexit.i ], [ null, %bb.c ], [ null, %bb.fl ], [ null, %bb.gi ]
  ret ptr %.0
}

; Function Attrs: allocsize(0)
declare noalias ptr @uprv_malloc_78(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #4

declare i32 @ucpmap_get_78(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @ucpmap_getRange_78(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @ucptrie_getRange_78(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie12getDataBlockEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(69696) %0, i32 noundef range(i32 -2147483648, 134217727) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = sext i32 %1 to i64                       ; 5 uses
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 %i.b ; 2 uses
  %i.d = load i8, ptr %i.c, align 1
  %i.e = icmp eq i8 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8
  %i.g = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.b
  %i.h = load i32, ptr %i.g, align 4
  br label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie14allocDataBlockEi.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.i = icmp slt i32 %1, 4096
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 5 uses
  %i.k = load i32, ptr %i.j, align 4              ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8              ; 6 uses
  br i1 %i.i, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = add nsw i32 %i.k, 64                     ; 2 uses
  %i.o = icmp sgt i32 %i.n, %i.m
  br i1 %i.o, label %bb.e, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie14allocDataBlockEi.exit

bb.e:                                             ; preds = %bb.d
  %i.p = icmp slt i32 %i.m, 131072
  br i1 %i.p, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = icmp samesign ult i32 %i.m, 1114112
  br i1 %i.q, label %bb.g, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie14allocDataBlockEi.exit.thread

bb.g:                                             ; preds = %bb.f, %bb.e
  %.014.i = phi i32 [ 131072, %bb.e ], [ 1114112, %bb.f ] ; 2 uses
  %i.r = shl nuw nsw i32 %.014.i, 2
  %i.s = zext nneg i32 %i.r to i64
  %i.t = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.s) #11 ; 3 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie14allocDataBlockEi.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = load i32, ptr %i.j, align 4
  %i.x = sext i32 %i.w to i64
  %i.y = shl nsw i64 %i.x, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.t, ptr align 4 %i.v, i64 %i.y, i1 false)
  tail call void @uprv_free_78(ptr noundef %i.v) #10
  store ptr %i.t, ptr %i.u, align 8
  store i32 %.014.i, ptr %i.l, align 8
  br label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie14allocDataBlockEi.exit

_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie14allocDataBlockEi.exit: ; preds = %bb.d, %bb.h
  store i32 %i.n, ptr %i.j, align 4
  %i.z = icmp slt i32 %i.k, 0
  br i1 %i.z, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie14allocDataBlockEi.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie14allocDataBlockEi.exit
  %i.aa = and i32 %1, -4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = or i32 %1, 3
  %i.ad = sext i32 %i.aa to i64
  %i.ae = sext i32 %i.ac to i64
  %i.af = zext nneg i32 %i.k to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %bb.j ], [ %i.af, %bb.i ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ %i.ad, %bb.i ] ; 5 uses
  %i.ag = load ptr, ptr %i.ab, align 8
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv51 ; 4 uses
  %i.ai = load ptr, ptr %0, align 8
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %indvars.iv
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = insertelement <4 x i32> poison, i32 %i.ak, i64 0
  %i.am = shufflevector <4 x i32> %i.al, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  store <4 x i32> %i.am, ptr %i.ah, align 4
  %.0.ptr.4.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store <4 x i32> %i.am, ptr %.0.ptr.4.i, align 4
  %.0.ptr.8.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store <4 x i32> %i.am, ptr %.0.ptr.8.i, align 4
  %.0.ptr.12.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  store <4 x i32> %i.am, ptr %.0.ptr.12.i, align 4
  %i.an = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv
  store i8 1, ptr %i.an, align 1
  %i.ao = load ptr, ptr %0, align 8
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %indvars.iv
  %i.aq = trunc nuw i64 %indvars.iv51 to i32
  store i32 %i.aq, ptr %i.ap, align 4
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 16
  %i.ar = icmp slt i64 %indvars.iv, %i.ae
  br i1 %i.ar, label %bb.j, label %bb.k, !llvm.loop !85

bb.k:                                             ; preds = %bb.j
  %i.as = load ptr, ptr %0, align 8
  %i.at = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.b
  %i.au = load i32, ptr %i.at, align 4
  br label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie14allocDataBlockEi.exit.thread

bb.l:                                             ; preds = %bb.c
  %i.av = add nsw i32 %i.k, 16                    ; 2 uses
  %i.aw = icmp sgt i32 %i.av, %i.m
  br i1 %i.aw, label %bb.m, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie14allocDataBlockEi.exit33

bb.m:                                             ; preds = %bb.l
  %i.ax = icmp slt i32 %i.m, 131072
  br i1 %i.ax, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = icmp samesign ult i32 %i.m, 1114112
  br i1 %i.ay, label %bb.o, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie14allocDataBlockEi.exit.thread

bb.o:                                             ; preds = %bb.n, %bb.m
  %.014.i31 = phi i32 [ 131072, %bb.m ], [ 1114112, %bb.n ] ; 2 uses
  %i.az = shl nuw nsw i32 %.014.i31, 2
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.ba) #11 ; 3 uses
  %.not.i32 = icmp eq ptr %i.bb, null
  br i1 %.not.i32, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie14allocDataBlockEi.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %i.be = load i32, ptr %i.j, align 4
  %i.bf = sext i32 %i.be to i64
  %i.bg = shl nsw i64 %i.bf, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bb, ptr align 4 %i.bd, i64 %i.bg, i1 false)
  tail call void @uprv_free_78(ptr noundef %i.bd) #10
  store ptr %i.bb, ptr %i.bc, align 8
  store i32 %.014.i31, ptr %i.l, align 8
  br label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie14allocDataBlockEi.exit33

_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie14allocDataBlockEi.exit33: ; preds = %bb.l, %bb.p
  store i32 %i.av, ptr %i.j, align 4
  %i.bh = icmp slt i32 %i.k, 0
  br i1 %i.bh, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie14allocDataBlockEi.exit.thread, label %bb.q

bb.q:                                             ; preds = %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie14allocDataBlockEi.exit33
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = zext nneg i32 %i.k to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bk ; 4 uses
  %i.bm = load ptr, ptr %0, align 8
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.b
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = insertelement <4 x i32> poison, i32 %i.bo, i64 0
  %i.bq = shufflevector <4 x i32> %i.bp, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  store <4 x i32> %i.bq, ptr %i.bl, align 4
  %.0.ptr.4.i37 = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store <4 x i32> %i.bq, ptr %.0.ptr.4.i37, align 4
  %.0.ptr.8.i41 = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  store <4 x i32> %i.bq, ptr %.0.ptr.8.i41, align 4
  %.0.ptr.12.i45 = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  store <4 x i32> %i.bq, ptr %.0.ptr.12.i45, align 4
  store i8 1, ptr %i.c, align 1
  %i.br = load ptr, ptr %0, align 8
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.b
  store i32 %i.k, ptr %i.bs, align 4
  br label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie14allocDataBlockEi.exit.thread

_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie14allocDataBlockEi.exit.thread: ; preds = %bb.n, %bb.o, %bb.f, %bb.g, %bb.q, %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie14allocDataBlockEi.exit33, %bb.k, %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie14allocDataBlockEi.exit, %bb.b
  %.2 = phi i32 [ %i.h, %bb.b ], [ %i.k, %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie14allocDataBlockEi.exit ], [ %i.au, %bb.k ], [ %i.k, %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie14allocDataBlockEi.exit33 ], [ %i.k, %bb.q ], [ -1, %bb.f ], [ -1, %bb.g ], [ -1, %bb.o ], [ -1, %bb.n ]
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN6icu_7812_GLOBAL__N_111MixedBlocks6extendIjEEvPKT_iii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef range(i32 0, -2147483648) %2, i32 noundef range(i32 128, -2147483648) %3) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = sub nsw i32 %2, %i.b
  %i.d = tail call i32 @llvm.smax.i32(i32 %i.c, i32 -1) ; 2 uses
  %i.e = sub nsw i32 %3, %i.b                     ; 2 uses
  %.not25.not = icmp slt i32 %i.d, %i.e
  br i1 %.not25.not, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.0 = add nsw i32 %i.d, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN6icu_7812_GLOBAL__N_111MixedBlocks8addEntryIjEEvPKT_iji.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN6icu_7812_GLOBAL__N_111MixedBlocks8addEntryIjEEvPKT_iji.exit
  %.126 = phi i32 [ %.0, %.lr.ph ], [ %i.j, %_ZN6icu_7812_GLOBAL__N_111MixedBlocks8addEntryIjEEvPKT_iji.exit ] ; 4 uses
  %.val = load i32, ptr %i.a, align 8
  %.fr46.i.i = freeze i32 %.val                   ; 4 uses
  %i.i = add nsw i32 %.fr46.i.i, %.126
  %i.j = add i32 %.126, 1                         ; 4 uses
  %i.k = sext i32 %.126 to i64
  %i.l = getelementptr inbounds [4 x i8], ptr %1, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4
  %i.n = sext i32 %i.j to i64
  %i.o = sext i32 %i.i to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.c ], [ %i.n, %bb.b ] ; 2 uses
  %.0.i = phi i32 [ %i.s, %bb.c ], [ %i.m, %bb.b ]
  %i.p = mul i32 %.0.i, 37
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.r = load i32, ptr %i.q, align 4
  %i.s = add i32 %i.p, %i.r                       ; 3 uses
  %i.t = icmp slt i64 %indvars.iv.next.i, %i.o
  br i1 %i.t, label %bb.c, label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeIjEEjPKT_i.exit, !llvm.loop !46

_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeIjEEjPKT_i.exit: ; preds = %bb.c
  %i.u = load i32, ptr %i.f, align 8
  %i.v = shl i32 %i.s, %i.u                       ; 3 uses
  %i.w = load i32, ptr %i.g, align 4              ; 4 uses
  %i.x = add nsw i32 %i.w, -1
  %i.y = urem i32 %i.s, %i.x
  %i.z = add nuw i32 %i.y, 1                      ; 8 uses
  %i.aa = load ptr, ptr %0, align 8               ; 5 uses
  %i.ab = sext i32 %i.z to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4            ; 3 uses
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeIjEEjPKT_i.exit
  %i.af = load i32, ptr %i.h, align 4             ; 2 uses
  %i.ag = xor i32 %i.af, -1                       ; 2 uses
  %i.ah = zext nneg i32 %.126 to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ah
  %i.aj = icmp sgt i32 %.fr46.i.i, 0
  br i1 %i.aj, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us.i.i
  %i.ak = phi i32 [ %i.ay, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us.i.i ], [ %i.ad, %.lr.ph.i.i ] ; 2 uses
  %.02237.us.i.i = phi i32 [ %i.av, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us.i.i ], [ %i.z, %.lr.ph.i.i ] ; 2 uses
  %i.al = and i32 %i.ak, %i.ag
  %i.am = icmp eq i32 %i.al, %i.v
  br i1 %i.am, label %.lr.ph.i.preheader.us.i.i, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us.i.i

.lr.ph.i.preheader.us.i.i:                        ; preds = %.lr.ph.split.us.i.i
  %i.an = and i32 %i.ak, %i.af
  %i.ao = add i32 %i.an, -1
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ap
  br label %.lr.ph.i.us.i.i

.lr.ph.i.us.i.i:                                  ; preds = %bb.d, %.lr.ph.i.preheader.us.i.i
  %.010.i.us.i.i = phi i32 [ %i.bc, %bb.d ], [ %.fr46.i.i, %.lr.ph.i.preheader.us.i.i ] ; 2 uses
  %.069.i.us.i.i = phi ptr [ %i.bb, %bb.d ], [ %i.ai, %.lr.ph.i.preheader.us.i.i ] ; 2 uses
  %.078.i.us.i.i = phi ptr [ %i.ba, %bb.d ], [ %i.aq, %.lr.ph.i.preheader.us.i.i ] ; 2 uses
  %i.ar = load i32, ptr %.078.i.us.i.i, align 4
  %i.as = load i32, ptr %.069.i.us.i.i, align 4
  %i.at = icmp eq i32 %i.ar, %i.as
  br i1 %i.at, label %bb.d, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us.i.i

_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us.i.i: ; preds = %.lr.ph.i.us.i.i, %.lr.ph.split.us.i.i
  %i.au = add nsw i32 %.02237.us.i.i, %i.z
  %i.av = srem i32 %i.au, %i.w                    ; 3 uses
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4            ; 2 uses
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %._crit_edge.i.i, label %.lr.ph.split.us.i.i, !llvm.loop !48

bb.d:                                             ; preds = %.lr.ph.i.us.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.078.i.us.i.i, i64 4
  %i.bb = getelementptr inbounds nuw i8, ptr %.069.i.us.i.i, i64 4
  %i.bc = add nsw i32 %.010.i.us.i.i, -1
  %i.bd = icmp sgt i32 %.010.i.us.i.i, 1
  br i1 %i.bd, label %.lr.ph.i.us.i.i, label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryIjjEEiPKT_PKT0_ij.exit.i, !llvm.loop !49

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %i.be = icmp eq i32 %.fr46.i.i, 0
  br i1 %i.be, label %.lr.ph.split.split.us.i.i, label %.lr.ph.split.split.i.i

.lr.ph.split.split.us.i.i:                        ; preds = %.lr.ph.split.i.i, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us40.i.i
  %i.bf = phi i32 [ %i.bm, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us40.i.i ], [ %i.ad, %.lr.ph.split.i.i ]
  %.02237.us39.i.i = phi i32 [ %i.bj, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us40.i.i ], [ %i.z, %.lr.ph.split.i.i ] ; 2 uses
  %i.bg = and i32 %i.bf, %i.ag
  %i.bh = icmp eq i32 %i.bg, %i.v
  br i1 %i.bh, label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryIjjEEiPKT_PKT0_ij.exit.i, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us40.i.i

_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us40.i.i: ; preds = %.lr.ph.split.split.us.i.i
  %i.bi = add nsw i32 %.02237.us39.i.i, %i.z
  %i.bj = srem i32 %i.bi, %i.w                    ; 3 uses
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4            ; 2 uses
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %._crit_edge.i.i, label %.lr.ph.split.split.us.i.i, !llvm.loop !48

._crit_edge.i.i:                                  ; preds = %.lr.ph.split.split.i.i, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us40.i.i, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us.i.i, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeIjEEjPKT_i.exit
  %.022.lcssa.i.i = phi i32 [ %i.z, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeIjEEjPKT_i.exit ], [ %i.av, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us.i.i ], [ %i.bj, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us40.i.i ], [ %i.bq, %.lr.ph.split.split.i.i ]
  %i.bo = xor i32 %.022.lcssa.i.i, -1
  br label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryIjjEEiPKT_PKT0_ij.exit.i

.lr.ph.split.split.i.i:                           ; preds = %.lr.ph.split.i.i, %.lr.ph.split.split.i.i
  %.02237.i.i = phi i32 [ %i.bq, %.lr.ph.split.split.i.i ], [ %i.z, %.lr.ph.split.i.i ]
  %i.bp = add nsw i32 %.02237.i.i, %i.z
  %i.bq = srem i32 %i.bp, %i.w                    ; 3 uses
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %._crit_edge.i.i, label %.lr.ph.split.split.i.i, !llvm.loop !48

_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryIjjEEiPKT_PKT0_ij.exit.i: ; preds = %.lr.ph.split.split.us.i.i, %bb.d, %._crit_edge.i.i
  %.3.ph.i.i = phi i32 [ %i.bo, %._crit_edge.i.i ], [ %.02237.us.i.i, %bb.d ], [ %.02237.us39.i.i, %.lr.ph.split.split.us.i.i ] ; 2 uses
  %i.bv = icmp slt i32 %.3.ph.i.i, 0
  br i1 %i.bv, label %bb.e, label %_ZN6icu_7812_GLOBAL__N_111MixedBlocks8addEntryIjEEvPKT_iji.exit

bb.e:                                             ; preds = %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryIjjEEiPKT_PKT0_ij.exit.i
  %i.bw = or i32 %i.v, %i.j
  %i.bx = xor i32 %.3.ph.i.i, -1
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.by
  store i32 %i.bw, ptr %i.bz, align 4
  br label %_ZN6icu_7812_GLOBAL__N_111MixedBlocks8addEntryIjEEvPKT_iji.exit

_ZN6icu_7812_GLOBAL__N_111MixedBlocks8addEntryIjEEvPKT_iji.exit: ; preds = %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryIjjEEiPKT_PKT0_ij.exit.i, %bb.e
  %.not = icmp sgt i32 %i.j, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !86
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN6icu_7812_GLOBAL__N_111MixedBlocks6extendItEEvPKT_iii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 -131012, 132097) %2, i32 noundef %3, i32 noundef %4) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = add i32 %3, 1
  %i.d = sub i32 %i.c, %i.b
  %.0 = tail call i32 @llvm.smax.i32(i32 %2, i32 %i.d) ; 2 uses
  %i.e = sub nsw i32 %4, %i.b                     ; 2 uses
  %.not1726 = icmp sgt i32 %.0, %i.e
  br i1 %.not1726, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN6icu_7812_GLOBAL__N_111MixedBlocks8addEntryItEEvPKT_iji.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN6icu_7812_GLOBAL__N_111MixedBlocks8addEntryItEEvPKT_iji.exit
  %.127 = phi i32 [ %.0, %.lr.ph ], [ %i.j, %_ZN6icu_7812_GLOBAL__N_111MixedBlocks8addEntryItEEvPKT_iji.exit ] ; 3 uses
  %.val = load i32, ptr %i.a, align 8
  %.fr46.i.i = freeze i32 %.val                   ; 4 uses
  %i.i = add nsw i32 %.fr46.i.i, %.127
  %i.j = add i32 %.127, 1                         ; 4 uses
  %i.k = sext i32 %.127 to i64
  %i.l = getelementptr inbounds [2 x i8], ptr %1, i64 %i.k ; 2 uses
  %i.m = load i16, ptr %i.l, align 2
  %i.n = zext i16 %i.m to i32
  %i.o = sext i32 %i.j to i64
  %i.p = sext i32 %i.i to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %.0.i = phi i32 [ %i.u, %bb.c ], [ %i.n, %bb.b ]
  %i.q = mul i32 %.0.i, 37
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.r = getelementptr inbounds [2 x i8], ptr %1, i64 %indvars.iv.i
  %i.s = load i16, ptr %i.r, align 2
  %i.t = zext i16 %i.s to i32
  %i.u = add i32 %i.q, %i.t                       ; 3 uses
  %i.v = icmp slt i64 %indvars.iv.next.i, %i.p
  br i1 %i.v, label %bb.c, label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeItEEjPKT_i.exit, !llvm.loop !87

_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeItEEjPKT_i.exit: ; preds = %bb.c
  %i.w = load i32, ptr %i.f, align 8
  %i.x = shl i32 %i.u, %i.w                       ; 3 uses
  %i.y = load i32, ptr %i.g, align 4              ; 4 uses
  %i.z = add nsw i32 %i.y, -1
  %i.aa = urem i32 %i.u, %i.z
  %i.ab = add nuw i32 %i.aa, 1                    ; 8 uses
  %i.ac = load ptr, ptr %0, align 8               ; 5 uses
  %i.ad = sext i32 %i.ab to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4            ; 3 uses
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeItEEjPKT_i.exit
  %i.ah = load i32, ptr %i.h, align 4             ; 2 uses
  %i.ai = xor i32 %i.ah, -1                       ; 2 uses
  %i.aj = icmp sgt i32 %.fr46.i.i, 0
  br i1 %i.aj, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread27.us.i.i
  %i.ak = phi i32 [ %i.ay, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread27.us.i.i ], [ %i.af, %.lr.ph.i.i ] ; 2 uses
  %.02237.us.i.i = phi i32 [ %i.av, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread27.us.i.i ], [ %i.ab, %.lr.ph.i.i ] ; 2 uses
  %i.al = and i32 %i.ak, %i.ai
  %i.am = icmp eq i32 %i.al, %i.x
  br i1 %i.am, label %.lr.ph.i.preheader.us.i.i, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread27.us.i.i

.lr.ph.i.preheader.us.i.i:                        ; preds = %.lr.ph.split.us.i.i
  %i.an = and i32 %i.ak, %i.ah
  %i.ao = add i32 %i.an, -1
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [2 x i8], ptr %1, i64 %i.ap
  br label %.lr.ph.i.us.i.i

.lr.ph.i.us.i.i:                                  ; preds = %bb.d, %.lr.ph.i.preheader.us.i.i
  %.010.i.us.i.i = phi i32 [ %i.bc, %bb.d ], [ %.fr46.i.i, %.lr.ph.i.preheader.us.i.i ] ; 2 uses
  %.069.i.us.i.i = phi ptr [ %i.bb, %bb.d ], [ %i.l, %.lr.ph.i.preheader.us.i.i ] ; 2 uses
  %.078.i.us.i.i = phi ptr [ %i.ba, %bb.d ], [ %i.aq, %.lr.ph.i.preheader.us.i.i ] ; 2 uses
  %i.ar = load i16, ptr %.078.i.us.i.i, align 2
  %i.as = load i16, ptr %.069.i.us.i.i, align 2
  %i.at = icmp eq i16 %i.ar, %i.as
  br i1 %i.at, label %bb.d, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread27.us.i.i

_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread27.us.i.i: ; preds = %.lr.ph.i.us.i.i, %.lr.ph.split.us.i.i
  %i.au = add nsw i32 %.02237.us.i.i, %i.ab
  %i.av = srem i32 %i.au, %i.y                    ; 3 uses
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4            ; 2 uses
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %._crit_edge.i.i, label %.lr.ph.split.us.i.i, !llvm.loop !88

bb.d:                                             ; preds = %.lr.ph.i.us.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.078.i.us.i.i, i64 2
  %i.bb = getelementptr inbounds nuw i8, ptr %.069.i.us.i.i, i64 2
  %i.bc = add nsw i32 %.010.i.us.i.i, -1
  %i.bd = icmp sgt i32 %.010.i.us.i.i, 1
  br i1 %i.bd, label %.lr.ph.i.us.i.i, label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryIttEEiPKT_PKT0_ij.exit.i, !llvm.loop !59

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %i.be = icmp eq i32 %.fr46.i.i, 0
  br i1 %i.be, label %.lr.ph.split.split.us.i.i, label %.lr.ph.split.split.i.i

.lr.ph.split.split.us.i.i:                        ; preds = %.lr.ph.split.i.i, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread27.us40.i.i
  %i.bf = phi i32 [ %i.bm, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread27.us40.i.i ], [ %i.af, %.lr.ph.split.i.i ]
  %.02237.us39.i.i = phi i32 [ %i.bj, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread27.us40.i.i ], [ %i.ab, %.lr.ph.split.i.i ] ; 2 uses
  %i.bg = and i32 %i.bf, %i.ai
  %i.bh = icmp eq i32 %i.bg, %i.x
  br i1 %i.bh, label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryIttEEiPKT_PKT0_ij.exit.i, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread27.us40.i.i

_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread27.us40.i.i: ; preds = %.lr.ph.split.split.us.i.i
  %i.bi = add nsw i32 %.02237.us39.i.i, %i.ab
  %i.bj = srem i32 %i.bi, %i.y                    ; 3 uses
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4            ; 2 uses
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %._crit_edge.i.i, label %.lr.ph.split.split.us.i.i, !llvm.loop !88

._crit_edge.i.i:                                  ; preds = %.lr.ph.split.split.i.i, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread27.us40.i.i, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread27.us.i.i, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeItEEjPKT_i.exit
  %.022.lcssa.i.i = phi i32 [ %i.ab, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeItEEjPKT_i.exit ], [ %i.av, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread27.us.i.i ], [ %i.bj, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread27.us40.i.i ], [ %i.bq, %.lr.ph.split.split.i.i ]
  %i.bo = xor i32 %.022.lcssa.i.i, -1
  br label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryIttEEiPKT_PKT0_ij.exit.i

.lr.ph.split.split.i.i:                           ; preds = %.lr.ph.split.i.i, %.lr.ph.split.split.i.i
  %.02237.i.i = phi i32 [ %i.bq, %.lr.ph.split.split.i.i ], [ %i.ab, %.lr.ph.split.i.i ]
  %i.bp = add nsw i32 %.02237.i.i, %i.ab
  %i.bq = srem i32 %i.bp, %i.y                    ; 3 uses
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %._crit_edge.i.i, label %.lr.ph.split.split.i.i, !llvm.loop !88

_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryIttEEiPKT_PKT0_ij.exit.i: ; preds = %.lr.ph.split.split.us.i.i, %bb.d, %._crit_edge.i.i
  %.3.ph.i.i = phi i32 [ %i.bo, %._crit_edge.i.i ], [ %.02237.us.i.i, %bb.d ], [ %.02237.us39.i.i, %.lr.ph.split.split.us.i.i ] ; 2 uses
  %i.bv = icmp slt i32 %.3.ph.i.i, 0
  br i1 %i.bv, label %bb.e, label %_ZN6icu_7812_GLOBAL__N_111MixedBlocks8addEntryItEEvPKT_iji.exit

bb.e:                                             ; preds = %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryIttEEiPKT_PKT0_ij.exit.i
  %i.bw = or i32 %i.x, %i.j
  %i.bx = xor i32 %.3.ph.i.i, -1
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.by
  store i32 %i.bw, ptr %i.bz, align 4
  br label %_ZN6icu_7812_GLOBAL__N_111MixedBlocks8addEntryItEEvPKT_iji.exit

_ZN6icu_7812_GLOBAL__N_111MixedBlocks8addEntryItEEvPKT_iji.exit: ; preds = %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryIttEEiPKT_PKT0_ij.exit.i, %bb.e
  %.not17 = icmp sgt i32 %i.j, %i.e
  br i1 %.not17, label %._crit_edge, label %bb.b, !llvm.loop !89
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef i32 @_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockItjEEiPKT_PKT0_i(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef range(i32 -2147483648, 134217727) %3) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load i32, ptr %i.a, align 8
  %.fr46.i = freeze i32 %.val                     ; 4 uses
  %i.b = add nsw i32 %.fr46.i, %3
  %i.c = add nsw i32 %3, 1
  %i.d = sext i32 %3 to i64
  %i.e = getelementptr inbounds [4 x i8], ptr %2, i64 %i.d ; 2 uses
  %i.f = load i32, ptr %i.e, align 4
  %i.g = sext i32 %i.c to i64
  %i.h = sext i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.b ], [ %i.g, %bb.a ] ; 2 uses
  %.0.i = phi i32 [ %i.l, %bb.b ], [ %i.f, %bb.a ]
  %i.i = mul i32 %.0.i, 37
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4
  %i.l = add i32 %i.i, %i.k                       ; 3 uses
  %i.m = icmp slt i64 %indvars.iv.next.i, %i.h
  br i1 %i.m, label %bb.b, label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeIjEEjPKT_i.exit, !llvm.loop !46

_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeIjEEjPKT_i.exit: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i32, ptr %i.n, align 8
  %i.p = shl i32 %i.l, %i.o                       ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.r = load i32, ptr %i.q, align 4              ; 4 uses
  %i.s = add nsw i32 %i.r, -1
  %i.t = urem i32 %i.l, %i.s
  %i.u = add nuw i32 %i.t, 1                      ; 8 uses
  %i.v = load ptr, ptr %0, align 8                ; 5 uses
  %i.w = sext i32 %i.u to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4              ; 3 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeIjEEjPKT_i.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ab = load i32, ptr %i.aa, align 4            ; 2 uses
  %i.ac = xor i32 %i.ab, -1                       ; 2 uses
  %i.ad = icmp sgt i32 %.fr46.i, 0
  br i1 %i.ad, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.thread27.us.i
  %i.ae = phi i32 [ %i.at, %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.thread27.us.i ], [ %i.y, %.lr.ph.i ] ; 2 uses
  %.02237.us.i = phi i32 [ %i.aq, %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.thread27.us.i ], [ %i.u, %.lr.ph.i ] ; 2 uses
  %i.af = and i32 %i.ae, %i.ac
  %i.ag = icmp eq i32 %i.af, %i.p
  br i1 %i.ag, label %.lr.ph.i.preheader.us.i, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.thread27.us.i

.lr.ph.i.preheader.us.i:                          ; preds = %.lr.ph.split.us.i
  %i.ah = and i32 %i.ae, %i.ab
  %i.ai = add i32 %i.ah, -1
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [2 x i8], ptr %1, i64 %i.aj
  br label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %bb.c, %.lr.ph.i.preheader.us.i
  %.010.i.us.i = phi i32 [ %i.ax, %bb.c ], [ %.fr46.i, %.lr.ph.i.preheader.us.i ] ; 2 uses
  %.069.i.us.i = phi ptr [ %i.aw, %bb.c ], [ %i.e, %.lr.ph.i.preheader.us.i ] ; 2 uses
  %.078.i.us.i = phi ptr [ %i.av, %bb.c ], [ %i.ak, %.lr.ph.i.preheader.us.i ] ; 2 uses
  %i.al = load i16, ptr %.078.i.us.i, align 2
  %i.am = zext i16 %i.al to i32
  %i.an = load i32, ptr %.069.i.us.i, align 4
  %i.ao = icmp eq i32 %i.an, %i.am
  br i1 %i.ao, label %bb.c, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.thread27.us.i

_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.thread27.us.i: ; preds = %.lr.ph.i.us.i, %.lr.ph.split.us.i
  %i.ap = add nsw i32 %.02237.us.i, %i.u
  %i.aq = srem i32 %i.ap, %i.r                    ; 3 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4            ; 2 uses
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %._crit_edge.i, label %.lr.ph.split.us.i, !llvm.loop !90

bb.c:                                             ; preds = %.lr.ph.i.us.i
  %i.av = getelementptr inbounds nuw i8, ptr %.078.i.us.i, i64 2
  %i.aw = getelementptr inbounds nuw i8, ptr %.069.i.us.i, i64 4
  %i.ax = add nsw i32 %.010.i.us.i, -1
  %i.ay = icmp sgt i32 %.010.i.us.i, 1
  br i1 %i.ay, label %.lr.ph.i.us.i, label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryItjEEiPKT_PKT0_ij.exit, !llvm.loop !57

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.az = icmp eq i32 %.fr46.i, 0
  br i1 %i.az, label %.lr.ph.split.split.us.i, label %.lr.ph.split.split.i

.lr.ph.split.split.us.i:                          ; preds = %.lr.ph.split.i, %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.thread27.us40.i
  %i.ba = phi i32 [ %i.bh, %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.thread27.us40.i ], [ %i.y, %.lr.ph.split.i ]
  %.02237.us39.i = phi i32 [ %i.be, %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.thread27.us40.i ], [ %i.u, %.lr.ph.split.i ] ; 2 uses
  %i.bb = and i32 %i.ba, %i.ac
  %i.bc = icmp eq i32 %i.bb, %i.p
  br i1 %i.bc, label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryItjEEiPKT_PKT0_ij.exit, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.thread27.us40.i

_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.thread27.us40.i: ; preds = %.lr.ph.split.split.us.i
  %i.bd = add nsw i32 %.02237.us39.i, %i.u
  %i.be = srem i32 %i.bd, %i.r                    ; 3 uses
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4            ; 2 uses
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %._crit_edge.i, label %.lr.ph.split.split.us.i, !llvm.loop !90

._crit_edge.i:                                    ; preds = %.lr.ph.split.split.i, %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.thread27.us40.i, %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.thread27.us.i, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeIjEEjPKT_i.exit
  %.022.lcssa.i = phi i32 [ %i.u, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeIjEEjPKT_i.exit ], [ %i.aq, %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.thread27.us.i ], [ %i.be, %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.thread27.us40.i ], [ %i.bl, %.lr.ph.split.split.i ]
  %i.bj = xor i32 %.022.lcssa.i, -1
  br label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryItjEEiPKT_PKT0_ij.exit

.lr.ph.split.split.i:                             ; preds = %.lr.ph.split.i, %.lr.ph.split.split.i
  %.02237.i = phi i32 [ %i.bl, %.lr.ph.split.split.i ], [ %i.u, %.lr.ph.split.i ]
  %i.bk = add nsw i32 %.02237.i, %i.u
  %i.bl = srem i32 %i.bk, %i.r                    ; 3 uses
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %._crit_edge.i, label %.lr.ph.split.split.i, !llvm.loop !90

_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryItjEEiPKT_PKT0_ij.exit: ; preds = %.lr.ph.split.split.us.i, %bb.c, %._crit_edge.i
  %.3.ph.i = phi i32 [ %i.bj, %._crit_edge.i ], [ %.02237.us.i, %bb.c ], [ %.02237.us39.i, %.lr.ph.split.split.us.i ] ; 2 uses
  %i.bq = icmp sgt i32 %.3.ph.i, -1
  br i1 %i.bq, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryItjEEiPKT_PKT0_ij.exit
  %i.br = zext nneg i32 %.3.ph.i to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = and i32 %i.bv, %i.bt
  %i.bx = add i32 %i.bw, -1
  br label %bb.e

bb.e:                                             ; preds = %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryItjEEiPKT_PKT0_ij.exit, %bb.d
  %.0 = phi i32 [ %i.bx, %bb.d ], [ -1, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryItjEEiPKT_PKT0_ij.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef i32 @_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockIttEEiPKT_PKT0_i(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load i32, ptr %i.a, align 8
  %.fr46.i = freeze i32 %.val                     ; 4 uses
  %i.b = add nsw i32 %.fr46.i, %3
  %i.c = add i32 %3, 1
  %i.d = sext i32 %3 to i64
  %i.e = getelementptr inbounds [2 x i8], ptr %2, i64 %i.d ; 2 uses
  %i.f = load i16, ptr %i.e, align 2
  %i.g = zext i16 %i.f to i32
  %i.h = sext i32 %i.c to i64
  %i.i = sext i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.b ], [ %i.h, %bb.a ] ; 2 uses
  %.0.i = phi i32 [ %i.n, %bb.b ], [ %i.g, %bb.a ]
  %i.j = mul i32 %.0.i, 37
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.k = getelementptr inbounds [2 x i8], ptr %2, i64 %indvars.iv.i
  %i.l = load i16, ptr %i.k, align 2
  %i.m = zext i16 %i.l to i32
  %i.n = add i32 %i.j, %i.m                       ; 3 uses
  %i.o = icmp slt i64 %indvars.iv.next.i, %i.i
  br i1 %i.o, label %bb.b, label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeItEEjPKT_i.exit, !llvm.loop !87

_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeItEEjPKT_i.exit: ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i32, ptr %i.p, align 8
  %i.r = shl i32 %i.n, %i.q                       ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.t = load i32, ptr %i.s, align 4              ; 4 uses
  %i.u = add nsw i32 %i.t, -1
  %i.v = urem i32 %i.n, %i.u
  %i.w = add nuw i32 %i.v, 1                      ; 8 uses
  %i.x = load ptr, ptr %0, align 8                ; 5 uses
  %i.y = sext i32 %i.w to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4             ; 3 uses
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeItEEjPKT_i.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ad = load i32, ptr %i.ac, align 4            ; 2 uses
  %i.ae = xor i32 %i.ad, -1                       ; 2 uses
  %i.af = icmp sgt i32 %.fr46.i, 0
  br i1 %i.af, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread27.us.i
  %i.ag = phi i32 [ %i.au, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread27.us.i ], [ %i.aa, %.lr.ph.i ] ; 2 uses
  %.02237.us.i = phi i32 [ %i.ar, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread27.us.i ], [ %i.w, %.lr.ph.i ] ; 2 uses
  %i.ah = and i32 %i.ag, %i.ae
  %i.ai = icmp eq i32 %i.ah, %i.r
  br i1 %i.ai, label %.lr.ph.i.preheader.us.i, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread27.us.i

.lr.ph.i.preheader.us.i:                          ; preds = %.lr.ph.split.us.i
  %i.aj = and i32 %i.ag, %i.ad
  %i.ak = add i32 %i.aj, -1
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [2 x i8], ptr %1, i64 %i.al
  br label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %bb.c, %.lr.ph.i.preheader.us.i
  %.010.i.us.i = phi i32 [ %i.ay, %bb.c ], [ %.fr46.i, %.lr.ph.i.preheader.us.i ] ; 2 uses
  %.069.i.us.i = phi ptr [ %i.ax, %bb.c ], [ %i.e, %.lr.ph.i.preheader.us.i ] ; 2 uses
  %.078.i.us.i = phi ptr [ %i.aw, %bb.c ], [ %i.am, %.lr.ph.i.preheader.us.i ] ; 2 uses
  %i.an = load i16, ptr %.078.i.us.i, align 2
  %i.ao = load i16, ptr %.069.i.us.i, align 2
  %i.ap = icmp eq i16 %i.an, %i.ao
  br i1 %i.ap, label %bb.c, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread27.us.i

_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread27.us.i: ; preds = %.lr.ph.i.us.i, %.lr.ph.split.us.i
  %i.aq = add nsw i32 %.02237.us.i, %i.w
  %i.ar = srem i32 %i.aq, %i.t                    ; 3 uses
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4            ; 2 uses
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %._crit_edge.i, label %.lr.ph.split.us.i, !llvm.loop !88

bb.c:                                             ; preds = %.lr.ph.i.us.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.078.i.us.i, i64 2
  %i.ax = getelementptr inbounds nuw i8, ptr %.069.i.us.i, i64 2
  %i.ay = add nsw i32 %.010.i.us.i, -1
  %i.az = icmp sgt i32 %.010.i.us.i, 1
  br i1 %i.az, label %.lr.ph.i.us.i, label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryIttEEiPKT_PKT0_ij.exit, !llvm.loop !59

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.ba = icmp eq i32 %.fr46.i, 0
  br i1 %i.ba, label %.lr.ph.split.split.us.i, label %.lr.ph.split.split.i

.lr.ph.split.split.us.i:                          ; preds = %.lr.ph.split.i, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread27.us40.i
  %i.bb = phi i32 [ %i.bi, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread27.us40.i ], [ %i.aa, %.lr.ph.split.i ]
  %.02237.us39.i = phi i32 [ %i.bf, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread27.us40.i ], [ %i.w, %.lr.ph.split.i ] ; 2 uses
  %i.bc = and i32 %i.bb, %i.ae
  %i.bd = icmp eq i32 %i.bc, %i.r
  br i1 %i.bd, label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryIttEEiPKT_PKT0_ij.exit, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread27.us40.i

_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread27.us40.i: ; preds = %.lr.ph.split.split.us.i
  %i.be = add nsw i32 %.02237.us39.i, %i.w
  %i.bf = srem i32 %i.be, %i.t                    ; 3 uses
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4            ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %._crit_edge.i, label %.lr.ph.split.split.us.i, !llvm.loop !88

._crit_edge.i:                                    ; preds = %.lr.ph.split.split.i, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread27.us40.i, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread27.us.i, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeItEEjPKT_i.exit
  %.022.lcssa.i = phi i32 [ %i.w, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeItEEjPKT_i.exit ], [ %i.ar, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread27.us.i ], [ %i.bf, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread27.us40.i ], [ %i.bm, %.lr.ph.split.split.i ]
  %i.bk = xor i32 %.022.lcssa.i, -1
  br label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryIttEEiPKT_PKT0_ij.exit

.lr.ph.split.split.i:                             ; preds = %.lr.ph.split.i, %.lr.ph.split.split.i
  %.02237.i = phi i32 [ %i.bm, %.lr.ph.split.split.i ], [ %i.w, %.lr.ph.split.i ]
  %i.bl = add nsw i32 %.02237.i, %i.w
  %i.bm = srem i32 %i.bl, %i.t                    ; 3 uses
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %._crit_edge.i, label %.lr.ph.split.split.i, !llvm.loop !88

_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryIttEEiPKT_PKT0_ij.exit: ; preds = %.lr.ph.split.split.us.i, %bb.c, %._crit_edge.i
  %.3.ph.i = phi i32 [ %i.bk, %._crit_edge.i ], [ %.02237.us.i, %bb.c ], [ %.02237.us39.i, %.lr.ph.split.split.us.i ] ; 2 uses
  %i.br = icmp sgt i32 %.3.ph.i, -1
  br i1 %i.br, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryIttEEiPKT_PKT0_ij.exit
  %i.bs = zext nneg i32 %.3.ph.i to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = and i32 %i.bw, %i.bu
  %i.by = add i32 %i.bx, -1
  br label %bb.e

bb.e:                                             ; preds = %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryIttEEiPKT_PKT0_ij.exit, %bb.d
  %.0 = phi i32 [ %i.by, %bb.d ], [ -1, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryIttEEiPKT_PKT0_ij.exit ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{null}
!9 = distinct !{null, null}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6, !14, !15}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = distinct !{!16, !6, !15, !14}
!17 = distinct !{!17, !6, !14, !15}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6, !15, !14}
!20 = distinct !{!20, !6, !14, !15}
!21 = distinct !{!21, !6}
!22 = distinct !{!22, !6}
!23 = distinct !{!23, !6}
!24 = distinct !{!24, !6}
!25 = distinct !{!25, !6}
!26 = distinct !{!26, !6}
!27 = distinct !{!27, !6}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.unroll.disable"}
!30 = distinct !{!30, !29}
!31 = distinct !{!31, !6}
!32 = distinct !{!32, !6}
!33 = distinct !{!33, !6}
!34 = distinct !{!34, !29}
!35 = distinct !{!35, !6}
!36 = distinct !{!36, !6}
!37 = distinct !{!37, !29}
!38 = distinct !{!38, !6}
!39 = distinct !{!39, !6}
!40 = distinct !{!40, !6}
!41 = distinct !{!41, !6}
!42 = distinct !{!42, !6}
!43 = distinct !{!43, !6}
!44 = distinct !{!44, !6, !15, !14}
!45 = distinct !{!45, !6, !14, !15}
!46 = distinct !{!46, !6}
!47 = distinct !{!47, !29}
!48 = distinct !{!48, !6}
!49 = distinct !{!49, !6}
!50 = distinct !{!50, !6}
!51 = distinct !{!51, !6, !15, !14}
!52 = distinct !{!52, !29}
!53 = distinct !{!53, !6, !15}
!54 = distinct !{!54, !6}
!55 = distinct !{!55, !6}
!56 = distinct !{!56, !6}
!57 = distinct !{!57, !6}
!58 = distinct !{!58, !6}
!59 = distinct !{!59, !6}
!60 = distinct !{!60, !29}
!61 = distinct !{!61, !6}
!62 = distinct !{!62, !6}
!63 = distinct !{!63, !6}
!64 = distinct !{!64, !6}
!65 = distinct !{!65, !29}
!66 = distinct !{!66, !6}
!67 = distinct !{!67, !6}
!68 = distinct !{!68, !6}
!69 = distinct !{!69, !6}
!70 = distinct !{!70, !29}
!71 = !{!72}
!72 = distinct !{!72, !73}
!73 = distinct !{!73, !"LVerDomain"}
!74 = !{!75}
!75 = distinct !{!75, !73}
!76 = distinct !{!76, !6, !15, !14}
!77 = distinct !{!77, !6, !15}
!78 = !{!79}
!79 = distinct !{!79, !80}
!80 = distinct !{!80, !"LVerDomain"}
!81 = !{!82}
!82 = distinct !{!82, !80}
!83 = distinct !{!83, !6, !15, !14}
!84 = distinct !{!84, !6, !15}
!85 = distinct !{!85, !6}
!86 = distinct !{!86, !6}
!87 = distinct !{!87, !6}
!88 = distinct !{!88, !6}
!89 = distinct !{!89, !6}
!90 = distinct !{!90, !6}
end_hunk_1
