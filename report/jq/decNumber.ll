Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jq/original/decNumber?download=true
inline.NumInlined: 166
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 15
begin_hunk_0_@decUnitCompare:bb.a
  br i1 %i.k, label %.loopexit, label %bb.e, !llvm.loop !2

bb.h:                                             ; preds = %bb.a
  %i.l = icmp slt i32 %4, 50
  br i1 %i.l, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.m = sext i32 %4 to i64
  %i.n = getelementptr inbounds i8, ptr @d2utable, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !24
  %i.p = zext i8 %i.o to i32
  %i.q = add nuw nsw i32 %3, %i.p                 ; 3 uses
  %i.r = icmp sgt i32 %1, %i.q
  br i1 %i.r, label %.loopexit, label %bb.j

.thread:                                          ; preds = %bb.h
  %i.s = add nuw nsw i32 %4, 2
  %i.t = udiv i32 %i.s, 3
  %i.u = add nuw nsw i32 %i.t, %3                 ; 3 uses
  %i.v = icmp sgt i32 %1, %i.u
  br i1 %i.v, label %.loopexit, label %.thread78

bb.j:                                             ; preds = %bb.i
  %i.w = add nsw i32 %1, 1
  %i.x = icmp slt i32 %i.w, %i.q
  br i1 %i.x, label %.loopexit, label %.thread79

.thread78:                                        ; preds = %.thread
  %i.y = add nsw i32 %1, 1
  %i.z = icmp slt i32 %i.y, %i.u
  br i1 %i.z, label %.loopexit, label %.thread79

.thread79:                                        ; preds = %.thread78, %bb.j
  %.pre-phi = phi i32 [ %i.q, %bb.j ], [ %i.u, %.thread78 ] ; 2 uses
  %i.aa = icmp samesign ugt i32 %.pre-phi, 23
  br i1 %i.aa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.thread79
  %i.ab = shl nuw i32 %.pre-phi, 1
  %i.ac = add nuw i32 %i.ab, 4
  %i.ad = zext i32 %i.ac to i64
  %i.ae = tail call noalias ptr @malloc(i64 noundef %i.ad) #20 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread79
  %.064 = phi ptr [ %i.a, %.thread79 ], [ %i.ae, %bb.k ] ; 4 uses
  %.063 = phi ptr [ null, %.thread79 ], [ %i.ae, %bb.k ] ; 2 uses
  %i.ag = sdiv i32 %4, 3
  %i.ah = srem i32 %4, 3
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr @DECPOWERS, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !23
  %i.al = sub nsw i32 0, %i.ak
  %i.am = call fastcc i32 @decUnitAddSub(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %i.ag, ptr noundef nonnull %.064, i32 noundef %i.al) ; 3 uses
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %bb.n, label %.preheader

.preheader:                                       ; preds = %bb.l
  %i.ao = shl nuw i32 %i.am, 1
  %.idx = zext i32 %i.ao to i64
  %i.ap = getelementptr i8, ptr %.064, i64 %.idx
  %i.aq = getelementptr i8, ptr %i.ap, i64 -2
  %i.ar = icmp samesign ugt i32 %i.am, 1
  br i1 %i.ar, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader, %bb.m
  %.05980 = phi ptr [ %i.au, %bb.m ], [ %.064, %.preheader ] ; 3 uses
  %i.as = load i16, ptr %.05980, align 2, !tbaa !21
  %i.at = icmp eq i16 %i.as, 0
  br i1 %i.at, label %bb.m, label %.critedge

bb.m:                                             ; preds = %.lr.ph
  %i.au = getelementptr inbounds nuw i8, ptr %.05980, i64 2 ; 3 uses
  %i.av = icmp ult ptr %i.au, %i.aq
  br i1 %i.av, label %.lr.ph, label %.critedge, !llvm.loop !151

.critedge:                                        ; preds = %.lr.ph, %bb.m, %.preheader
  %.059.lcssa = phi ptr [ %.064, %.preheader ], [ %i.au, %bb.m ], [ %.05980, %.lr.ph ]
  %i.aw = load i16, ptr %.059.lcssa, align 2, !tbaa !21
  %i.ax = icmp ne i16 %i.aw, 0
  %i.ay = zext i1 %i.ax to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %.critedge
  %.0 = phi i32 [ %i.ay, %.critedge ], [ -1, %bb.l ] ; 2 uses
  %.not = icmp eq ptr %.063, null
  br i1 %.not, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @free(ptr noundef nonnull %.063) #19
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.g, %bb.f, %.thread78, %.thread, %bb.n, %bb.o, %bb.k, %bb.j, %bb.i, %bb.c, %bb.b
  %.065 = phi i32 [ -2147483648, %bb.k ], [ 1, %bb.b ], [ -1, %bb.c ], [ %.0, %bb.n ], [ 1, %.thread ], [ -1, %.thread78 ], [ 1, %bb.i ], [ -1, %bb.j ], [ %.0, %bb.o ], [ 0, %bb.e ], [ -1, %bb.g ], [ 1, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %.065
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @decApplyRound(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #15 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !34
  switch i32 %i.c, label %bb.r [
    i32 7, label %bb.c
    i32 5, label %bb.e
    i32 4, label %bb.f
    i32 3, label %bb.g
    i32 2, label %bb.j
    i32 1, label %bb.k
    i32 0, label %bb.l
    i32 6, label %bb.o
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.e = load i16, ptr %i.d, align 2, !tbaa !21
  %i.f = urem i16 %i.e, 5                         ; 2 uses
  %i.g = icmp slt i32 %2, 0
  %i.h = icmp ne i16 %i.f, 1
  %or.cond = select i1 %i.g, i1 %i.h, i1 false
  br i1 %or.cond, label %select.unfold123, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = icmp sgt i32 %2, 0
  %i.j = icmp eq i16 %i.f, 0
  %or.cond4 = select i1 %i.i, i1 %i.j, i1 false
  br i1 %or.cond4, label %select.unfold, label %.critedge

bb.e:                                             ; preds = %bb.b
  %i.k = icmp slt i32 %2, 0
  br i1 %i.k, label %select.unfold123, label %.critedge

bb.f:                                             ; preds = %bb.b
  %i.l = icmp sgt i32 %2, 5
  br i1 %i.l, label %select.unfold, label %.critedge

bb.g:                                             ; preds = %bb.b
  %i.m = icmp sgt i32 %2, 5
  br i1 %i.m, label %select.unfold, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = icmp eq i32 %2, 5
  br i1 %i.n, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.p = load i16, ptr %i.o, align 2, !tbaa !21
  %i.q = and i16 %i.p, 1
  %.not96 = icmp eq i16 %i.q, 0
  br i1 %.not96, label %.critedge, label %select.unfold

bb.j:                                             ; preds = %bb.b
  %i.r = icmp sgt i32 %2, 4
  br i1 %i.r, label %select.unfold, label %.critedge

bb.k:                                             ; preds = %bb.b
  %i.s = icmp sgt i32 %2, 0
  br i1 %i.s, label %select.unfold, label %.critedge

bb.l:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i8, ptr %i.t, align 4, !tbaa !17
  %.not95 = icmp sgt i8 %i.u, -1
  br i1 %.not95, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = icmp slt i32 %2, 0
  br i1 %i.v, label %select.unfold123, label %.critedge

bb.n:                                             ; preds = %bb.l
  %i.w = icmp sgt i32 %2, 0
  br i1 %i.w, label %select.unfold, label %.critedge

bb.o:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i8, ptr %i.x, align 4, !tbaa !17
  %.not = icmp sgt i8 %i.y, -1
  br i1 %.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.z = icmp slt i32 %2, 0
  br i1 %i.z, label %select.unfold123, label %.critedge

bb.q:                                             ; preds = %bb.o
  %i.aa = icmp sgt i32 %2, 0
  br i1 %i.aa, label %select.unfold, label %.critedge

bb.r:                                             ; preds = %bb.b
  %i.ab = load i32, ptr %3, align 4, !tbaa !23
  %i.ac = or i32 %i.ab, 64
  store i32 %i.ac, ptr %3, align 4, !tbaa !23
  br label %.critedge

select.unfold:                                    ; preds = %bb.j, %bb.q, %bb.f, %bb.d, %bb.k, %bb.n, %bb.g, %bb.i
  %i.ad = load i32, ptr %0, align 4, !tbaa !19    ; 7 uses
  %.086.ptr145 = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.ae = icmp ult i32 %i.ad, 4
  br i1 %i.ae, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %select.unfold
  %4 = add i32 %i.ad, -4
  %5 = udiv i32 %4, 3
  %6 = shl nuw i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = add nuw nsw i64 %7, 12
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.u, %select.unfold
  %.086.idx.lcssa = phi i64 [ 10, %select.unfold ], [ %8, %bb.u ] ; 3 uses
  %.085.lcssa = phi i32 [ %i.ad, %select.unfold ], [ %i.be, %bb.u ] ; 2 uses
  %.086.ptr.lcssa = phi ptr [ %.086.ptr145, %select.unfold ], [ %.086.ptr, %bb.u ] ; 2 uses
  %i.af = load i16, ptr %.086.ptr.lcssa, align 2, !tbaa !21
  %i.ag = zext i16 %i.af to i32
  %i.ah = zext nneg i32 %.085.lcssa to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr @DECPOWERS, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !23
  %i.ak = add i32 %i.aj, -1
  %.not105 = icmp eq i32 %i.ak, %i.ag
  br i1 %.not105, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %._crit_edge
  %i.al = add nsw i32 %.085.lcssa, -1
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr @DECPOWERS, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !23
  %i.ap = trunc i32 %i.ao to i16
  store i16 %i.ap, ptr %.086.ptr.lcssa, align 2, !tbaa !21
  %.not106151 = icmp slt i64 %.086.idx.lcssa, 11
  br i1 %.not106151, label %._crit_edge155, label %.lr.ph154.preheader

.lr.ph154.preheader:                              ; preds = %bb.s
  %i.aq = add nsw i64 %.086.idx.lcssa, -2
  %i.ar = add nsw i64 %.086.idx.lcssa, -11
  %i.as = and i64 %i.ar, -2                       ; 2 uses
  %i.at = sub nsw i64 %i.aq, %i.as
  %scevgep = getelementptr i8, ptr %0, i64 %i.at
  %i.au = add nuw nsw i64 %i.as, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep, i8 0, i64 %i.au, i1 false), !tbaa !21
  br label %._crit_edge155

._crit_edge155:                                   ; preds = %.lr.ph154.preheader, %bb.s
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !18
  %i.ax = add nsw i32 %i.aw, 1                    ; 2 uses
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !18
  %i.ay = add nsw i32 %i.ax, %i.ad
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !30
  %i.bb = add nsw i32 %i.ba, 1
  %i.bc = icmp sgt i32 %i.ay, %i.bb
  br i1 %i.bc, label %bb.t, label %.critedge

bb.t:                                             ; preds = %._crit_edge155
  tail call fastcc void @decSetOverflow(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %3)
  br label %.critedge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.u
  %.086.ptr148 = phi ptr [ %.086.ptr, %bb.u ], [ %.086.ptr145, %.lr.ph.preheader ]
  %.085147 = phi i32 [ %i.be, %bb.u ], [ %i.ad, %.lr.ph.preheader ]
  %.086.idx146 = phi i64 [ %.086.add107, %bb.u ], [ 10, %.lr.ph.preheader ]
  %i.bd = load i16, ptr %.086.ptr148, align 2, !tbaa !21
  %.not104 = icmp eq i16 %i.bd, 999
  br i1 %.not104, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %.lr.ph
  %i.be = add i32 %.085147, -3                    ; 3 uses
  %.086.add107 = add nuw nsw i64 %.086.idx146, 2  ; 2 uses
  %.086.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.086.add107 ; 2 uses
  %i.bf = icmp ult i32 %i.be, 4
  br i1 %i.bf, label %._crit_edge, label %.lr.ph

select.unfold123:                                 ; preds = %bb.p, %bb.m, %bb.e, %bb.c
  %i.bg = load i32, ptr %0, align 4, !tbaa !19    ; 8 uses
  %.084.ptr156 = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.bh = icmp ult i32 %i.bg, 4
  br i1 %i.bh, label %._crit_edge161, label %.lr.ph160.preheader

.lr.ph160.preheader:                              ; preds = %select.unfold123
  %9 = add i32 %i.bg, -4
  %10 = udiv i32 %9, 3
  %11 = shl nuw i32 %10, 1
  %12 = zext i32 %11 to i64
  %13 = add nuw nsw i64 %12, 12
  br label %.lr.ph160

._crit_edge161:                                   ; preds = %bb.z, %select.unfold123
  %.084.idx.lcssa = phi i64 [ 10, %select.unfold123 ], [ %13, %bb.z ] ; 7 uses
  %.0.lcssa = phi i32 [ %i.bg, %select.unfold123 ], [ %i.df, %bb.z ] ; 3 uses
  %.084.ptr.lcssa = phi ptr [ %.084.ptr156, %select.unfold123 ], [ %.084.ptr, %bb.z ] ; 3 uses
  %i.bi = load i16, ptr %.084.ptr.lcssa, align 2, !tbaa !21 ; 2 uses
  %i.bj = zext i16 %i.bi to i32
  %i.bk = add nsw i32 %.0.lcssa, -1
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr @DECPOWERS, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !23
  %.not98 = icmp eq i32 %i.bn, %i.bj
  br i1 %.not98, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %._crit_edge161
  %i.bo = zext nneg i32 %.0.lcssa to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr @DECPOWERS, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !23
  %i.br = trunc i32 %i.bq to i16
  %i.bs = add i16 %i.br, -1
  store i16 %i.bs, ptr %.084.ptr.lcssa, align 2, !tbaa !21
  %.not99165 = icmp slt i64 %.084.idx.lcssa, 11
  br i1 %.not99165, label %._crit_edge169, label %iter.check

iter.check:                                       ; preds = %bb.v
  %i.bt = load i32, ptr getelementptr inbounds nuw (i8, ptr @DECPOWERS, i64 12), align 4, !tbaa !23
  %i.bu = trunc i32 %i.bt to i16
  %i.bv = add i16 %i.bu, -1                       ; 3 uses
  %i.bw = add nsw i64 %.084.idx.lcssa, -11        ; 3 uses
  %i.bx = lshr i64 %i.bw, 1
  %i.by = add nuw i64 %i.bx, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.bw, 14
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check192 = icmp ult i64 %i.bw, 30
  br i1 %min.iters.check192, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bz = and i64 %i.by, 8
  %n.vec = and i64 %i.by, -16                     ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.bv, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ca = shl i64 %n.vec, 1
  %i.cb = sub i64 %.084.idx.lcssa, %i.ca
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cc = shl i64 %index, 1
  %i.cd = sub i64 %.084.idx.lcssa, %i.cc
  %i.ce = getelementptr i8, ptr %0, i64 %i.cd     ; 2 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 -16
  %i.cg = getelementptr i8, ptr %i.ce, i64 -32
  store <8 x i16> %broadcast.splat, ptr %i.cf, align 2, !tbaa !21
  store <8 x i16> %broadcast.splat, ptr %i.cg, align 2, !tbaa !21
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !152

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.by, %n.vec
  br i1 %cmp.n, label %._crit_edge169, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.bz, 0
  br i1 %min.epilog.iters.check.not.not, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !155

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec193 = and i64 %i.by, -8                   ; 3 uses
  %broadcast.splatinsert194 = insertelement <8 x i16> poison, i16 %i.bv, i64 0
  %broadcast.splat195 = shufflevector <8 x i16> %broadcast.splatinsert194, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ci = shl i64 %n.vec193, 1
  %i.cj = sub i64 %.084.idx.lcssa, %i.ci
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index197 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next198, %vec.epilog.vector.body ] ; 2 uses
  %i.ck = shl i64 %index197, 1
  %i.cl = sub i64 %.084.idx.lcssa, %i.ck
  %i.cm = getelementptr i8, ptr %0, i64 %i.cl
  %i.cn = getelementptr i8, ptr %i.cm, i64 -16
  store <8 x i16> %broadcast.splat195, ptr %i.cn, align 2, !tbaa !21
  %index.next198 = add nuw i64 %index197, 8       ; 2 uses
  %i.co = icmp eq i64 %index.next198, %n.vec193
  br i1 %i.co, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !153

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n199 = icmp eq i64 %i.by, %n.vec193
  br i1 %cmp.n199, label %._crit_edge169, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.1.idx.in166.ph = phi i64 [ %.084.idx.lcssa, %iter.check ], [ %i.cb, %vec.epilog.iter.check ], [ %i.cj, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.1.idx.in166 = phi i64 [ %.1.idx, %vec.epilog.scalar.ph ], [ %.1.idx.in166.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.1.idx = add nsw i64 %.1.idx.in166, -2         ; 2 uses
  %.1.ptr = getelementptr inbounds i8, ptr %0, i64 %.1.idx
  store i16 %i.bv, ptr %.1.ptr, align 2, !tbaa !21
  %.not99 = icmp samesign ult i64 %.1.idx.in166, 13
  br i1 %.not99, label %._crit_edge169, label %vec.epilog.scalar.ph, !llvm.loop !154

._crit_edge169:                                   ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.v
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !18 ; 3 uses
  %i.cr = add nsw i32 %i.cq, -1
  store i32 %i.cr, ptr %i.cp, align 4, !tbaa !18
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !29
  %i.cu = load i32, ptr %1, align 4, !tbaa !27
  %i.cv = add i32 %i.ct, 1
  %i.cw = sub i32 %i.cv, %i.cu
  %i.cx = icmp eq i32 %i.cq, %i.cw
  br i1 %i.cx, label %bb.w, label %.critedge

bb.w:                                             ; preds = %._crit_edge169
  %i.cy = icmp eq i32 %.0.lcssa, 1
  %i.cz = icmp eq i32 %i.bg, 1
  %or.cond137 = and i1 %i.cy, %i.cz
  br i1 %or.cond137, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.da = add i16 %i.bi, -1
  %i.db = add nsw i32 %i.bg, -1
  store i32 %i.db, ptr %0, align 4, !tbaa !19
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %.sink = phi i16 [ %i.da, %bb.x ], [ 0, %bb.w ]
  store i16 %.sink, ptr %.084.ptr.lcssa, align 2, !tbaa !21
  store i32 %i.cq, ptr %i.cp, align 4, !tbaa !18
  %i.dc = load i32, ptr %3, align 4, !tbaa !23
  %i.dd = or i32 %i.dc, 14368
  store i32 %i.dd, ptr %3, align 4, !tbaa !23
  br label %.critedge

.lr.ph160:                                        ; preds = %.lr.ph160.preheader, %bb.z
  %.084.ptr159 = phi ptr [ %.084.ptr, %bb.z ], [ %.084.ptr156, %.lr.ph160.preheader ]
  %.0158 = phi i32 [ %i.df, %bb.z ], [ %i.bg, %.lr.ph160.preheader ]
  %.084.idx157 = phi i64 [ %.084.add100, %bb.z ], [ 10, %.lr.ph160.preheader ]
  %i.de = load i16, ptr %.084.ptr159, align 2, !tbaa !21
  %.not97 = icmp eq i16 %i.de, 0
  br i1 %.not97, label %bb.z, label %.loopexit

bb.z:                                             ; preds = %.lr.ph160
  %i.df = add i32 %.0158, -3                      ; 3 uses
  %.084.add100 = add nuw nsw i64 %.084.idx157, 2  ; 2 uses
  %.084.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.084.add100 ; 2 uses
  %i.dg = icmp ult i32 %i.df, 4
  br i1 %i.dg, label %._crit_edge161, label %.lr.ph160

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph160, %._crit_edge161, %._crit_edge
  %i.dh = phi i32 [ %i.ad, %._crit_edge ], [ %i.bg, %._crit_edge161 ], [ %i.bg, %.lr.ph160 ], [ %i.ad, %.lr.ph ] ; 3 uses
  %.191135 = phi i32 [ 1, %._crit_edge ], [ -1, %._crit_edge161 ], [ -1, %.lr.ph160 ], [ 1, %.lr.ph ]
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.dj = icmp slt i32 %i.dh, 50
  br i1 %i.dj, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.loopexit
  %i.dk = sext i32 %i.dh to i64
  %i.dl = getelementptr inbounds i8, ptr @d2utable, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !24
  %i.dn = zext i8 %i.dm to i32
  br label %bb.ac

bb.ab:                                            ; preds = %.loopexit
  %i.do = add nuw nsw i32 %i.dh, 2
  %i.dp = udiv i32 %i.do, 3
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.dq = phi i32 [ %i.dn, %bb.aa ], [ %i.dp, %bb.ab ]
  %i.dr = tail call fastcc i32 @decUnitAddSub(ptr noundef nonnull %i.di, i32 noundef %i.dq, ptr noundef nonnull @uarrone, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.di, i32 noundef %.191135) ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %bb.p, %bb.j, %bb.q, %bb.h, %bb.m, %bb.f, %bb.d, %bb.e, %bb.k, %bb.n, %bb.r, %._crit_edge169, %bb.y, %._crit_edge155, %bb.t, %bb.a, %bb.ac
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @decSetOverflow(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !17    ; 2 uses
  %i.c = and i8 %i.b, -128                        ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 8 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !21
  %i.f = icmp eq i16 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %0, align 4, !tbaa !19
  %i.h = icmp eq i32 %i.g, 1
  %i.i = and i8 %i.b, 112
  %i.j = icmp eq i8 %i.i, 0
  %or.cond = select i1 %i.h, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !30   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load i8, ptr %i.m, align 4, !tbaa !28
  %.not27 = icmp eq i8 %i.n, 0
  br i1 %.not27, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load i32, ptr %1, align 4, !tbaa !27
  %.neg33 = add i32 %i.l, 1
  %i.p = sub i32 %.neg33, %i.o
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ %i.p, %bb.d ], [ %i.l, %bb.c ]  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !18
  %i.s = icmp sgt i32 %i.r, %.0
  br i1 %i.s, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  store i32 %.0, ptr %i.q, align 4, !tbaa !18
  br label %.sink.split

bb.g:                                             ; preds = %bb.b, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i32 0, ptr %i.t, align 4, !tbaa !18
  store i32 1, ptr %0, align 4, !tbaa !19
  store i16 0, ptr %i.d, align 2, !tbaa !21
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !34
  switch i32 %i.v, label %.critedge [
    i32 5, label %.critedge31
    i32 7, label %.critedge31
    i32 0, label %.split
    i32 6, label %bb.h
  ]

.split:                                           ; preds = %bb.g
  %.not25 = icmp eq i8 %i.c, 0
  br i1 %.not25, label %.critedge, label %.critedge31

bb.h:                                             ; preds = %bb.g
  %.not.not = icmp eq i8 %i.c, 0
  br i1 %.not.not, label %.critedge31, label %.critedge

.critedge31:                                      ; preds = %.split, %bb.g, %bb.g, %bb.h
  %i.w = load i32, ptr %1, align 4, !tbaa !27     ; 8 uses
  store i32 %i.w, ptr %0, align 4, !tbaa !19
  %i.x = icmp sgt i32 %i.w, 3
  br i1 %i.x, label %iter.check, label %decSetMaxValue.exit

iter.check:                                       ; preds = %.critedge31
  %i.y = add nsw i32 %i.w, -4                     ; 3 uses
  %i.z = udiv i32 %i.y, 3
  %narrow = add nuw nsw i32 %i.z, 1
  %i.aa = zext nneg i32 %narrow to i64            ; 5 uses
  %min.iters.check = icmp ult i32 %i.y, 9
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check41 = icmp ult i32 %i.y, 45
  br i1 %min.iters.check41, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ab = and i64 %i.aa, 12
  %n.vec = and i64 %i.aa, 2147483632              ; 5 uses
  %i.ac = trunc nuw nsw i64 %n.vec to i32
  %i.ad = mul i32 %i.ac, -3
  %i.ae = add i32 %i.w, %i.ad                     ; 2 uses
  %i.af = shl nuw nsw i64 %n.vec, 1
  %i.ag = getelementptr i8, ptr %i.d, i64 %i.af   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.ah ; 2 uses
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> splat (i16 999), ptr %next.gep, align 2, !tbaa !21
  store <8 x i16> splat (i16 999), ptr %i.ai, align 2, !tbaa !21
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !156

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.aa
  br i1 %cmp.n, label %decSetMaxValue.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ab, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec43 = and i64 %i.aa, 2147483644            ; 4 uses
  %i.ak = trunc nuw nsw i64 %n.vec43 to i32
  %i.al = mul i32 %i.ak, -3
  %i.am = add i32 %i.w, %i.al                     ; 2 uses
  %i.an = shl nuw nsw i64 %n.vec43, 1
  %i.ao = getelementptr i8, ptr %i.d, i64 %i.an   ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index44 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next46, %vec.epilog.vector.body ] ; 2 uses
  %i.ap = shl i64 %index44, 1
  %next.gep45 = getelementptr i8, ptr %i.d, i64 %i.ap
  store <4 x i16> splat (i16 999), ptr %next.gep45, align 2, !tbaa !21
  %index.next46 = add nuw i64 %index44, 4         ; 2 uses
  %i.aq = icmp eq i64 %index.next46, %n.vec43
  br i1 %i.aq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !157

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n47 = icmp eq i64 %n.vec43, %i.aa
  br i1 %cmp.n47, label %decSetMaxValue.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.015.i.ph = phi i32 [ %i.w, %iter.check ], [ %i.ae, %vec.epilog.iter.check ], [ %i.am, %vec.epilog.middle.block ]
  %.01314.i.ph = phi ptr [ %i.d, %iter.check ], [ %i.ag, %vec.epilog.iter.check ], [ %i.ao, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.015.i = phi i32 [ %i.ar, %.lr.ph.i ], [ %.015.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01314.i = phi ptr [ %i.as, %.lr.ph.i ], [ %.01314.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  store i16 999, ptr %.01314.i, align 2, !tbaa !21
  %i.ar = add nsw i32 %.015.i, -3                 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.01314.i, i64 2 ; 2 uses
  %i.at = icmp samesign ugt i32 %.015.i, 6
  br i1 %i.at, label %.lr.ph.i, label %decSetMaxValue.exit, !llvm.loop !158

decSetMaxValue.exit:                              ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %.critedge31
  %.013.lcssa.i = phi ptr [ %i.d, %.critedge31 ], [ %i.ao, %vec.epilog.middle.block ], [ %i.ag, %middle.block ], [ %i.as, %.lr.ph.i ]
  %.0.lcssa.i = phi i32 [ %i.w, %.critedge31 ], [ %i.am, %vec.epilog.middle.block ], [ %i.ae, %middle.block ], [ %i.ar, %.lr.ph.i ]
  %i.au = sext i32 %.0.lcssa.i to i64
  %i.av = getelementptr inbounds [4 x i8], ptr @DECPOWERS, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !23
  %i.ax = trunc i32 %i.aw to i16
  %i.ay = add i16 %i.ax, -1
  store i16 %i.ay, ptr %.013.lcssa.i, align 2, !tbaa !21
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !30
  %reass.sub = sub i32 %i.ba, %i.w
  %i.bb = add i32 %reass.sub, 1
  store i32 %i.bb, ptr %i.t, align 4, !tbaa !18
  br label %bb.i

.critedge:                                        ; preds = %.split, %bb.g, %bb.h
  %i.bc = or disjoint i8 %i.c, 64
end_hunk_0
